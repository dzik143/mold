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

#include "MoldError.h"
#include "MoldCore.h"
#include "MoldVariantString.h"
#include "MoldForDriver.h"
#include "MoldPrint.h"

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

static void __MOLD_PrintToFile_variantInternal(FILE *f, Variant_t *x) {
  // Extra guard to avoid infinite loops on circular references.
  x -> flags |= VARIANT_FLAG_NODE_VISITED;

  switch (x -> type) {
    // ------------------------------------------------------------------------
    //                         Print primitives
    // ------------------------------------------------------------------------

    case VARIANT_UNDEFINED: { fprintf(f, "undefined"); break; }
    case VARIANT_NULL:      { fprintf(f, "null"); break; }
    case VARIANT_INTEGER:   { fprintf(f, "%"PRId64, x -> valueAsInt64); break; }
    case VARIANT_FLOAT:     { fprintf(f, "%f", x -> valueAsFloat32); break; }
    case VARIANT_DOUBLE:    { fprintf(f, "%lf", x -> valueAsFloat64); break; }

    case VARIANT_BOOLEAN: {
      fprintf(f, "%s", (x -> valueAsInt32) ? "true" : "false");
      break;
    }

    // ------------------------------------------------------------------------
    //                           Print string
    // ------------------------------------------------------------------------

    case VARIANT_STRING: {
      if (x -> flags & VARIANT_FLAG_ONE_CHARACTER) {
        // One character string.
        // Just put single char directly.
        putchar(x -> value);

      } else {
        // Multicharacter string.
        // Decode string buffer first.
        Buffer_t *buf = (Buffer_t *) x -> value;
        String_t *str = (String_t *) buf -> bytesPtr;
        fprintf(f, "%s", str -> text);
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
          fputs("<circular>", f);

        } else {
          // Array was not visited yet - print it now.
          const char *sep = "";
          fputc('[', f);

          for (uint32_t idx = 0; idx < array -> itemsCnt; idx++) {
            // Separate items by comma: x1, x2, x3, ...
            fputs(sep, f);
            sep = ", ";

            // Print next item value and wrap into 'value' if needed.
            if ((array -> items[idx].type) == VARIANT_STRING) fputc('\'', f);
            __MOLD_PrintToFile_variantInternal(f, &array -> items[idx]);
            if ((array -> items[idx].type) == VARIANT_STRING) fputc('\'', f);
          }

          fputc(']', f);
        }

      } else {
        // Typed array - use general for driver.
        // Possible improvement: Don't duplicate the code.
        Variant_t oneItem;
        uint32_t idx;

        const char *sep = "";
        fputc('[', f);

        void _printOneItem() {
          // Separate items by comma: x1, x2, x3, ...
          fputs(sep, f);
          sep = ", ";

          // Print next item value and wrap into 'value' if needed.
          if (oneItem.type == VARIANT_STRING) fputc('\'', f);
          __MOLD_PrintToFile_variantInternal(f, &oneItem);
          if (oneItem.type == VARIANT_STRING) fputc('\'', f);
        }

        // Print all items one-by-one.
        __MOLD_ForDriver_IndexesAndValuesInArray(array, &idx, &oneItem, _printOneItem);

        fputc(']', f);
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
        fputs("<circular>", f);

      } else {
        // Map was not visited yet - print it now.
        const char *sep = "";
        fputc('{', f);

        for (uint32_t idx = 0; idx < bucketsUsedCnt; idx++) {
          // Print key.
          fprintf(f, "%s'", sep);
          __MOLD_PrintToFile_variantInternal(f, &bucket -> key);
          fputs("': ", f);

          // Print value.
          if (bucket -> value.type == VARIANT_STRING) putc('\'', f);
          __MOLD_PrintToFile_variantInternal(f, &bucket -> value);
          if (bucket -> value.type == VARIANT_STRING) putc('\'', f);

          // Go to next bucket if any.
          sep    = ", ";
          bucket = bucket -> nextBucket;
        }

        putc('}', f);
      }

      break;
    }

    case VARIANT_OBJECT: {
      // TODO: Fix printing "classProto" under VM.
      // Possible improvement: Print methods/className for objects?
      fprintf(f, "<object>");
      break;
    }

    default: {
      __MOLD_PrintErrorAndDie_badType();
    }
  }
}

void __MOLD_PrintToFile_variant(FILE *f, Variant_t *x) {
  __MOLD_PrintToFile_variantInternal(f, x);
  __MOLD_ClenUpAfterPrint(x);
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

    if ((fmt[0] != '~') &&
        (fmt[1] !=  0 ) &&
        (fmt[1] != '~') &&
        (fmt[1] != '!')) {
      __MOLD_Print_space();
    }

    fmt++;
  }

  //Variant_t *x = va_arg(ptr, Variant_t *);
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

void __MOLD_Print_variant(Variant_t *x) {
  __MOLD_PrintToFile_variant(stdout, x);
}

void __MOLD_VariantPrint(Variant_t *x) { __MOLD_Print_variant(x); }
