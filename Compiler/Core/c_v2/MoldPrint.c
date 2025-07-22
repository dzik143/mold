/**************************************************************************/
/* This file is part of Mold project.                                     */
/* Copyright (C) 2015, 2022 Sylwester Wysocki <sw143@wp.pl>               */
/*                                                                        */
/* This program is free software: you can redistribute it and/or modify   */
/* it under the terms of the GNU General Public License as published by   */
/* the Free Software Foundation, either version 3 of the License, or      */
/* (at your option) any later version.                                    */
/*                                                                        */
/* This program is distributed in the hope that it will be useful,        */
/* but WITHOUT ANY WARRANTY; without even the implied warranty of         */
/* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the          */
/* GNU General Public License for more details.                           */
/*                                                                        */
/* You should have received a copy of the GNU General Public License      */
/* along with this program. If not, see <http://www.gnu.org/licenses/>    */
/*                                                                        */
/**************************************************************************/

#include <inttypes.h>
#include <stdarg.h>
#include <string.h>

#include "MoldError.h"
#include "MoldCore.h"
#include "MoldVariantString.h"
#include "memory/MoldString.h"
#include "MoldForDriver.h"
#include "MoldPrint.h"

#define __MOLD_DEFAULT_PRINT_BUFFER_SIZE 32

// Forward declaration.
struct __MOLD_PrintContext;

typedef void (*__MOLD_WriteRawCallback)(struct __MOLD_PrintContext *ctx,
                                        const char *data,
                                        uint64_t dataSize);

typedef struct __MOLD_PrintContext {
  // Callback functions called by generic print code.
  __MOLD_WriteRawCallback writeRawCb;

  // Used durint print to file mode.
  FILE *f;

  // Used during print to string mode.
  uint64_t bufCapacity;
  uint64_t bufSize;
  char *buf;
} __MOLD_PrintContext_t;

static void __MOLD_WriteRawToFileCallback(__MOLD_PrintContext_t *ctx,
                                          const char *data,
                                          uint64_t dataSize) {

  assert(ctx != NULL);
  assert(ctx -> f != NULL);
  fwrite(data, dataSize, 1, ctx -> f);
}

static void __MOLD_WriteRawToBufferCallback(__MOLD_PrintContext_t *ctx,
                                            const char *data,
                                            uint64_t dataSize) {

  assert(ctx != NULL);
  assert(ctx -> buf != NULL);

  if (dataSize > 0) {
    if (ctx -> bufSize + dataSize >= ctx -> bufCapacity) {
      ctx -> bufCapacity *= 2;
      ctx -> buf = realloc(ctx -> buf, ctx -> bufCapacity);
    }

    memcpy(ctx -> buf + ctx -> bufSize, data, dataSize);
    ctx -> bufSize += dataSize;
    ctx -> buf[ctx -> bufSize] = 0;
  }
}

// Remove visited flags recursively set during __MOLD_VariantPrint before.
// We set visited flag to catch circular references and avoid infinite
// loop.
// Because nodes may be connceted in any way, we walkthrough the tree
// twice during print:
// - first pass  - print nodes and mark visited node (to print once),
// - second pass - clean up visited flags.
static void __MOLD_ClenUpAfterPrint(Variant_t *x) {
  x -> flags &= ~VARIANT_FLAG_NODE_VISITED;

  switch (x -> type) {
    case VARIANT_ARRAY: {
      // Decode array from the variant box.
      Buffer_t *buf = x -> valueAsBufferPtr;
      Array_t *array = (Array_t *) buf -> bytesPtr;

      if (array -> innerType == 0) {
        if ((array -> itemsCnt > 0) &&
            (array -> items[0].flags & VARIANT_FLAG_NODE_VISITED)) {
          // Array was visited during print.
          // Switch back to non-visited before next print call.
          for (uint32_t idx = 0; idx < array -> itemsCnt; idx++) {
            __MOLD_ClenUpAfterPrint(&array -> items[idx]);
          }
        }
      }

      break;
    }

    case VARIANT_MAP: {
      // Decode map from the variant box.
      Buffer_t *buf = x -> valueAsBufferPtr;
      Map_t    *map = (Map_t *) buf -> bytesPtr;

      uint32_t bucketsUsedCnt = map -> bucketsUsedCnt;
      MapBucket_t *bucket     = map -> firstBucket;

      if (bucket && bucket -> key.flags & VARIANT_FLAG_NODE_VISITED) {
        // Map was visited during print.
        // Switch back to non-visited before next print call.
        for (uint32_t idx = 0; idx < bucketsUsedCnt; idx++) {
          __MOLD_ClenUpAfterPrint(&bucket -> key);
          __MOLD_ClenUpAfterPrint(&bucket -> value);
          bucket = bucket -> nextBucket;
        }
      }
    }

    break;
  }
}

// -----------------------------------------------------------------------------
// Print variant variable to the C stream.
//
// f - output C stream e.g. stdout (IN),
// x - variable to be printed (IN),
// -----------------------------------------------------------------------------

static void __MOLD_PrintVariantInernal(__MOLD_PrintContext_t *ctx, Variant_t *x) {
  assert(ctx != NULL);
  assert(x != NULL);

  #define EMIT_LITERAL(x) ctx -> writeRawCb(ctx, (x), sizeof(x) - 1);

  // Extra guard to avoid infinite loops on circular references.
  x -> flags |= VARIANT_FLAG_NODE_VISITED;

  // Temp buffer to render primitives before emit.
  char tmpBuf[512];

  switch (x -> type) {
    // ------------------------------------------------------------------------
    //                         Print primitives
    // ------------------------------------------------------------------------

    case VARIANT_UNDEFINED: { EMIT_LITERAL("undefined"); break; }
    case VARIANT_NULL:      { EMIT_LITERAL("null");      break; }

    case VARIANT_INTEGER: {
      snprintf(tmpBuf, sizeof(tmpBuf) - 1, "%"PRId64, x -> valueAsInt64);
      ctx -> writeRawCb(ctx, tmpBuf, strlen(tmpBuf));
      break;
    }

    case VARIANT_FLOAT: {
      snprintf(tmpBuf, sizeof(tmpBuf) - 1, "%f", x -> valueAsFloat32);
      ctx -> writeRawCb(ctx, tmpBuf, strlen(tmpBuf));
      break;
    }

    case VARIANT_DOUBLE: {
      snprintf(tmpBuf, sizeof(tmpBuf) - 1, "%lf", x -> valueAsFloat64);
      ctx -> writeRawCb(ctx, tmpBuf, strlen(tmpBuf));
      break;
    }

    case VARIANT_BOOLEAN:   {
      if (x -> valueAsInt32) {
        EMIT_LITERAL("true");
      } else {
        EMIT_LITERAL("false");
      }
      break;
    }

    // ------------------------------------------------------------------------
    //                           Print string
    // ------------------------------------------------------------------------

    case VARIANT_STRING: {
      if (x -> value < MOLD_STRING_ONE_CHAR_THRESHOLD) {
        // One character string.
        // Just put single char directly.
        if (x -> valueAsChar) {
          ctx -> writeRawCb(ctx, &x -> valueAsChar, 1);
        }

      } else {
        // Multicharacter string.
        // Decode string buffer first.
        // TODO: Simplify it.
        ctx -> writeRawCb(ctx,
          __MOLD_String_getText(x -> value),
          __MOLD_String_getLength(x -> value)
        );
      }

      break;
    }

    // ------------------------------------------------------------------------
    //                          Print array[]
    // ------------------------------------------------------------------------

    case VARIANT_ARRAY: {
      // Decode array from the variant box.
      Buffer_t *buf = x -> valueAsBufferPtr;
      Array_t *array = (Array_t *) buf -> bytesPtr;

      if (array -> innerType == 0) {
        // Generic array of variants - potentially complex boxes inside.
        // Track visited nodes during printing.
        if ((array -> itemsCnt > 0) &&
            (array -> items[0].flags & VARIANT_FLAG_NODE_VISITED)) {
          // Circular reference - array already printed.
          EMIT_LITERAL("<circular>");

        } else {
          // Array was not visited yet - print it now.
          EMIT_LITERAL("[");

          for (uint32_t idx = 0; idx < array -> itemsCnt; idx++) {
            // Separate items by comma: x1, x2, x3, ...
            if (idx > 0) {
              EMIT_LITERAL(", ");
            }

            // Print next item value and wrap into 'value' if needed.
            if ((array -> items[idx].type) == VARIANT_STRING) EMIT_LITERAL("'");
            __MOLD_PrintVariantInernal(ctx, &array -> items[idx]);
            if ((array -> items[idx].type) == VARIANT_STRING) EMIT_LITERAL("'");
          }

          EMIT_LITERAL("]");
        }

      } else {
        // Typed array - use general for driver.
        // Possible improvement: Don't duplicate the code.
        Variant_t oneItem;
        uint32_t idx;

        EMIT_LITERAL("[");

        void _printOneItem() {
          // Separate items by comma: x1, x2, x3, ...
          if (idx > 0) {
            EMIT_LITERAL(", ");
          }

          // Print next item value and wrap into 'value' if needed.
          if (oneItem.type == VARIANT_STRING) EMIT_LITERAL("'");
          __MOLD_PrintVariantInernal(ctx, &oneItem);
          if (oneItem.type == VARIANT_STRING) EMIT_LITERAL("'");
        }

        // Print all items one-by-one.
        __MOLD_ForDriver_IndexesAndValuesInArray(array, &idx, &oneItem, _printOneItem);
        EMIT_LITERAL("]");
      }

      break;
    }

    // ------------------------------------------------------------------------
    //                        Print key, value map{}
    // ------------------------------------------------------------------------

    case VARIANT_MAP: {
      // Decode map from the variant box.
      Buffer_t *buf = x -> valueAsBufferPtr;
      Map_t    *map = (Map_t *) buf -> bytesPtr;

      uint32_t bucketsUsedCnt = map -> bucketsUsedCnt;
      MapBucket_t *bucket     = map -> firstBucket;

      if (bucket && bucket -> key.flags & VARIANT_FLAG_NODE_VISITED) {
        EMIT_LITERAL("<circular>");

      } else {
        // Map was not visited yet - print it now.
        EMIT_LITERAL("{");

        for (uint32_t idx = 0; idx < bucketsUsedCnt; idx++) {
          // Separate key:value pairs by commas:
          // { 'key1': val1, 'key2': val2, ... }
          if (idx > 0 ) {
            EMIT_LITERAL(", ");
          }

          // Print key.
          EMIT_LITERAL("'");
          __MOLD_PrintVariantInernal(ctx, &bucket -> key);
          EMIT_LITERAL("': ");

          // Print value.
          if (bucket -> value.type == VARIANT_STRING) EMIT_LITERAL("'");
          __MOLD_PrintVariantInernal(ctx, &bucket -> value);
          if (bucket -> value.type == VARIANT_STRING) EMIT_LITERAL("'");

          // Go to next bucket if any.
          bucket = bucket -> nextBucket;
        }

        EMIT_LITERAL("}");
      }

      break;
    }

    case VARIANT_OBJECT: {
      // TODO: Fix printing "classProto" under VM.
      // Possible improvement: Print methods/className for objects?
      EMIT_LITERAL("<object>");
      break;
    }

    default: {
      __MOLD_PrintErrorAndDie_badType();
    }
  }

  #undef EMIT_LITERAL
}

void __MOLD_PrintToFile_variant(FILE *f, Variant_t *x) {
  __MOLD_PrintContext_t ctx = { 0 };

  ctx.f = f;
  ctx.writeRawCb = __MOLD_WriteRawToFileCallback;

  __MOLD_PrintVariantInernal(&ctx, x);
  __MOLD_ClenUpAfterPrint(x);
}

void __MOLD_PrintToString_variant(Variant_t *rv, Variant_t *x) {
  ASSERT_VARIANT_PTR_ANY(rv);

  __MOLD_PrintContext_t ctx = { 0 };

  ctx.buf         = calloc(__MOLD_DEFAULT_PRINT_BUFFER_SIZE, 1);
  ctx.bufCapacity = __MOLD_DEFAULT_PRINT_BUFFER_SIZE;
  ctx.writeRawCb  = __MOLD_WriteRawToBufferCallback;

  __MOLD_PrintVariantInernal(&ctx, x);
  __MOLD_ClenUpAfterPrint(x);

  // Possible improvement: Avoid buffer copy?
  __MOLD_VariantStringCreateFromCString(rv, ctx.buf);

  free(ctx.buf);
}

void __MOLD_PrintFormat(const char *fmt, ...) {
  va_list ptr;
  va_start(ptr, fmt);

  while (*fmt) {
    switch (*fmt) {
      // Possible improvement: Better tokens set?
      case 's':
      case 'v': __MOLD_Print_variant(va_arg(ptr, Variant_t *)); break;
      case 'i': __MOLD_Print_int32  (va_arg(ptr, uint32_t));    break;
      case 'I': __MOLD_Print_int64  (va_arg(ptr, uint64_t));    break;
      case 'f': __MOLD_Print_float64(va_arg(ptr, float64_t));   break;
      case 'b': __MOLD_Print_bool32 (va_arg(ptr, bool32_t));    break;
      case '!': __MOLD_Print_EOL();                             break;
      case '~': break;

      default: {
        fprintf(stderr, "runtime error: unhandled print fmt token '%c'", *fmt);
        abort();
      }
    }

    // Possible improvement: Simplify it?
    if ((fmt[0] != '~') &&
        (fmt[0] != '!') &&
        (fmt[1] !=  0 ) &&
        (fmt[1] != '~') &&
        (fmt[1] != '!')) {
      __MOLD_Print_space();
    }

    fmt++;
  }
}

void __MOLD_BuildString(Variant_t *rv, const char *fmt, ...) {
  ASSERT_VARIANT_PTR_ANY(rv);

  // TODO: Optimize it.
  // TODO: Reuse code from __MOLD_PrintFormat.
  va_list ptr;
  va_start(ptr, fmt);

  Variant_t nextItem = { 0 };

  __MOLD_VariantStringCreateFromCString(rv, "");

  while (*fmt) {
    switch (*fmt) {
      // Possible improvement: Better tokens set?
      case 's':
      case 'v': __MOLD_StrAndAssign         (&nextItem, va_arg(ptr, Variant_t *)); break;
      case 'i': __MOLD_VariantAssign_int32  (&nextItem, va_arg(ptr, uint32_t)); break;
      case 'I': __MOLD_VariantAssign_int64  (&nextItem, va_arg(ptr, uint64_t)); break;
      case 'f': __MOLD_VariantAssign_float64(&nextItem, va_arg(ptr, float64_t)); break;
      case 'b': __MOLD_VariantAssign_bool32 (&nextItem, va_arg(ptr, bool32_t)); break;

      default: {
        fprintf(stderr, "runtime error: unhandled print fmt token '%c' (string mode)", *fmt);
        abort();
      }
    }

  //  printf("%p nextItem=[", fmt);
    //__MOLD_VariantPrint(&nextItem);
//    printf("]\n");

    __MOLD_StrAndAssign(&nextItem, &nextItem);
    __MOLD_VariantStringJoin(rv, rv, &nextItem);

    fmt++;
  }

  __MOLD_VariantDestroy(&nextItem);

  va_end(ptr);
}

// -----------------------------------------------------------------------------
//         Helper wrappers to print single variable to the stdout
// -----------------------------------------------------------------------------

void __MOLD_Print_space() { printf(" "); }
void __MOLD_Print_EOL()   { printf("\n"); }

void __MOLD_Print_string(Variant_t *x) { __MOLD_Print_variant(x); }
void __MOLD_Print_int32(int32_t x)     { printf("%d", x); }
void __MOLD_Print_int64(int64_t x)     { printf("%"PRId64, x); }
void __MOLD_Print_float64(float64_t x) { printf("%lf", x); }
void __MOLD_Print_bool32(int32_t x)    { printf(x ? "true" : "false"); }

void __MOLD_Print_char(char x) {
  fputc(x, stdout);
}

void __MOLD_Print_raw(const char *buf, uint32_t bufSize) {
  fwrite(buf, bufSize, 1, stdout);
}

void __MOLD_Print_variant(Variant_t *x) {
  __MOLD_PrintToFile_variant(stdout, x);
}

void __MOLD_VariantPrint(Variant_t *x) {
  __MOLD_Print_variant(x);
}
