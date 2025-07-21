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

#include <stdio.h>
#include <string.h>
#include <inttypes.h>

#include "MoldPrint.h"
#include "MoldError.h"
#include "MoldVariantString.h"
#include "memory/MoldString.h"

// -----------------------------------------------------------------------------
// Create new string and init it from C string buffer.
//
// Pseudo code:
// rv = new string("text")
//
// Parameters:
//   rv   - pointer, where to store new allocated string (OUT),
//   text - pointer to the zero terminated C string (IN).
// -----------------------------------------------------------------------------

void __MOLD_VariantStringCreateFromCString(Variant_t *rv, const char *text)
{
  assert(text != NULL);

  __MOLD_VariantDestroy(rv);

  // TODO: Clean up this mess.
  if ((text[0] != 0) && (text[1] == 0)) {
    rv -> type  = VARIANT_STRING;
    rv -> flags = VARIANT_FLAG_ONE_CHARACTER;
    rv -> value = text[0];

  } else {
    rv -> type  = VARIANT_STRING;
    rv -> flags = 0;
    rv -> value = __MOLD_String_createFromCString(text, -1);
  }
}

// -----------------------------------------------------------------------------
// Release the string.
// This call tells, that the string is not needed anymore and may be freed.
//
// Pseudo code:
//   delete x
//
// Parameters:
//   x - string to be freed (IN).
// -----------------------------------------------------------------------------

void __MOLD_VariantStringRelease(const Variant_t *x)
{
  ASSERT_VARIANT_PTR_STRING(x);

  // String - possible complex or primitive.
  if (!(x -> flags & VARIANT_FLAG_ONE_CHARACTER))
  {
    // Multi-character string.
    // Release the buffer.
    // TODO: Clean up this mess.
    __MOLD_String_release(x -> value);
  }
}

void __MOLD_VariantStringAddRef(const Variant_t *x)
{
  ASSERT_VARIANT_PTR_STRING(x);

  if (!(x -> flags & VARIANT_FLAG_ONE_CHARACTER))
  {
    // Multi-character string.
    // Release the buffer.
    // TODO: Clean up this mess.
    __MOLD_String_addRef(x -> value);
  }
}

// -----------------------------------------------------------------------------
// Compare two strings (EQual).
//
// Pseudo code:
// ... = (x == y)
//
// Parameters:
//   x - the first string to compare (IN),
//   y - second string to compare (IN).
//
// Returns:
//   1 if string are equal,
//   0 otherwise.
// -----------------------------------------------------------------------------
/*
bool32_t __MOLD_cmp_eq_string(Variant_t *x, const Variant_t *y)
{
  ASSERT_VARIANT_PTR_STRING(x);
  ASSERT_VARIANT_PTR_STRING(y);

  // TODO: Simplify it.
  bool32_t rv = 0;

  if (x -> flags & VARIANT_FLAG_ONE_CHARACTER) {
    if (y -> flags & VARIANT_FLAG_ONE_CHARACTER) {
      rv = x -> value == y -> value;
    }

  } else if (y -> flags & VARIANT_FLAG_ONE_CHARACTER) {
    if (x -> flags & VARIANT_FLAG_ONE_CHARACTER) {
      rv = x -> value == y -> value;
    }

  } else {
    rv = __MOLD_String_cmp_eq(x -> value, y -> value);
  }


  printf("COMPARED (%d,%lld) with (%d,%lld) -> %d\n",
         x -> type, x -> value,
         y -> type, y -> value,
         rv);


  return rv;
}
*/

bool32_t __MOLD_cmp_eq_string(Variant_t *x, const Variant_t *y)
{
  ASSERT_VARIANT_PTR_STRING(x);
  ASSERT_VARIANT_PTR_STRING(y);

  bool32_t rv = 0;

  /*
  if (x -> valueAsInt64 == y -> valueAsInt64) {
    // Both string uses the same buffer or stores the same
    // single character.
    // We still can't say anything if two strings use different
    // buffers. Two different buffers may store the same string created
    // at runtime.
    //
    rv = 1;
  }
  */

  if (x -> flags & VARIANT_FLAG_ONE_CHARACTER)
  {
    // CHAR eq ?
    if (y -> flags & VARIANT_FLAG_ONE_CHARACTER)
    {
      // CHAR eq CHAR
      rv = (x -> value == y -> value);
    }
    else
    {
      // CHAR eq STRING
      const char *yText = __MOLD_String_getText(y -> value);
      uint32_t yLength  = __MOLD_String_getLength(y -> value);
      rv = (yLength == 1) && (yText[0] == x -> value);
    }
  }
  else
  {
    // STRING eq ?
    if (y -> flags & VARIANT_FLAG_ONE_CHARACTER)
    {
      // STRING eq CHAR
      const char *xText = __MOLD_String_getText(x -> value);
      uint32_t xLength  = __MOLD_String_getLength(x -> value);
      rv = (xLength == 1) && (xText[0] == y -> value);
    }
    else
    {
      // STRING eq STRING
      rv = __MOLD_String_cmp_eq(x -> value, y -> value);
    }
  }

  // Handle false unequal case:
  // - strings points to the different buffers,
  // - but buffer contents are the same.
  // Normalize strings to use the same buffer and avoid false unequal
  // in the further calls (if any).
  if (rv && (x -> valueAsInt64 != y -> valueAsInt64)) {
    // Possible improvement: Choose more compact string if possible?
    // Make x to use the same buffer as y (shallow copy).
    // Possible improvement: Avoid type case.
    __MOLD_VariantAddRef((Variant_t *) y);
    // TODO: Review it - Why we attempt to release x twice when below
    // line uncommented?
    // __MOLD_VariantStringRelease(x);
    memcpy(x, y, sizeof(Variant_t));
  }

  // printf("// COMPARE(%llx,%llx) -> %d\n", x -> value, y -> value, rv);

  return rv;
}


// -----------------------------------------------------------------------------
// Inverted compare two strings (Not-Equal).
//
// Pseudo code:
// ... = (x != y)
//
// Parameters:
//   x - the first string to compare (IN),
//   y - second string to compare (IN).
//
// Returns:
//   1 if string are different (not equal),
//   0 otherwise.
// -----------------------------------------------------------------------------

bool32_t __MOLD_cmp_ne_string(Variant_t *x, const Variant_t *y)
{
  return !__MOLD_cmp_eq_string(x, y);
}

// -----------------------------------------------------------------------------
// Join (concatenate) two strings into another one.
//
// Pseudo code:
//   dst = x + y
//
// Parameters:
//   dst - existing variant, where to store joined strings (OUT),
//   x   - the first string to join (IN),
//   x   - second string to join (IN).
// -----------------------------------------------------------------------------

void __MOLD_VariantStringJoin(Variant_t *dst,
                              const Variant_t *x,
                              const Variant_t *y)
{
  ASSERT_VARIANT_PTR_STRING(x);
  ASSERT_VARIANT_PTR_STRING(y);

  if ((dst != x) && (dst != y)) {
    __MOLD_VariantDestroy(dst);
  }

  /*
  printf("-> STRING JOIN (%lld,%lld,%lld)\n",
         dst -> value,
         x   -> value,
         y   -> value);
  */

  //__MOLD_String_dumpAll();

  // TODO: Simplify it.
  // TODO: Clean up this mess.
  // TODO: Don't allocate buffers for single characters.
  MoldStringId_t xValue = x -> value;
  MoldStringId_t yValue = y -> value;

  if (x -> flags & VARIANT_FLAG_ONE_CHARACTER) {
    xValue = __MOLD_String_createFromCString(&x -> valueAsChar, 1);
  }

  if (y -> flags & VARIANT_FLAG_ONE_CHARACTER) {
    yValue = __MOLD_String_createFromCString(&y -> valueAsChar, 1);
  }

  dst -> type  = VARIANT_STRING;
  dst -> flags = 0;

  if (dst == x) {
    // printf("(dst = dst ~ y) : (%lld = %lld ~ %d)\n", dst -> value, dst -> value,yValue);
    __MOLD_String_join(dst -> value, yValue);

  } else {
    // printf("(dst = x ~ y)\n");
    dst -> value = __MOLD_String_join3(xValue, yValue);
  }

  if (x -> flags & VARIANT_FLAG_ONE_CHARACTER) {
    __MOLD_String_release(xValue);
  }

  if (y -> flags & VARIANT_FLAG_ONE_CHARACTER) {
    __MOLD_String_release(yValue);
  }

  ASSERT_VARIANT_PTR_STRING(dst);
  ASSERT_VARIANT_PTR_STRING(x);
  ASSERT_VARIANT_PTR_STRING(y);

  // printf("<- STRING JOIN (%lld,%lld,%lld)\n", dst -> value, x -> value, y -> value);

/*
  uint64_t xLen = 0;
  uint64_t yLen = 0;

  char *xText = NULL;
  char *yText = NULL;

  // ------------------------------
  // Fetch the first source string.
  //

  if (x -> flags & VARIANT_FLAG_ONE_CHARACTER)
  {
    xLen  = 1;
    xText = (char *) &x -> value;
  }
  else
  {
    String_t *xStr = (String_t *) x -> valueAsBufferPtr -> bytesPtr;

    xLen  = xStr -> length;
    xText = (char *) xStr -> text;
  }

  // ---------------------------
  // Fetch second source string.
  //

  if (y -> flags & VARIANT_FLAG_ONE_CHARACTER)
  {
    yLen  = 1;
    yText = (char *) &y -> value;
  }
  else
  {
    String_t *yStr = (String_t *) y -> valueAsBufferPtr -> bytesPtr;

    yLen  = yStr -> length;
    yText = (char *) yStr -> text;
  }

  // -------------------------------------------------------
  // Calculate destination length (without zero terminator).
  //

  uint64_t newSize = xLen + yLen;

  // -------------------------------------------
  // Allocate new buffer for destination string.
  // TODO: Use existing buffer if possible.
  //

  Buffer_t *dstBuf = __MOLD_MemoryAlloc(sizeof(String_t) + newSize);
  String_t *dstStr = (String_t *) dstBuf -> bytesPtr;

  // ------------------------------------------------
  // Join two source strings into destination buffer.
  //

  memcpy(dstStr -> text        , xText, xLen);
  memcpy(dstStr -> text + xLen , yText, yLen);

  dstStr -> length = newSize;

  // Free existing dst if any.
  __MOLD_VariantDestroy(dst);

  // Assign new buffer to result.
  // --------------------------------------
  dst -> type             = VARIANT_STRING;
  dst -> valueAsBufferPtr = dstBuf;
  dst -> flags            = 0;
}
*/
}

// -----------------------------------------------------------------------------
// Pull out the piece from the string.
//
// Parameters:
//   str - source string with original full text (IN),
//   idx - index of the first character to be pulled (IN),
//   len - how many chars to be pulled or -1 for "up to end" beheavior (IN).
//
// Means:
// - Find character no. <idx>,
// - then copy <len> characters.
//
// Example:
//   substr("abcdefg", 2, 3) gives "cde".
//
// Returns:
//   New string contained substring from the source one.
//
// -----------------------------------------------------------------------------

void __MOLD_SubStrAndAssign(Variant_t *rv,
                            const Variant_t *strVariant,
                            const Variant_t *idxVariant,
                            const Variant_t *lenVariant)
{

  ASSERT_VARIANT_PTR_ANY(rv);
  ASSERT_VARIANT_PTR_STRING(strVariant);
  ASSERT_VARIANT_PTR_INTEGER(idxVariant);
  ASSERT_VARIANT_PTR_INTEGER(lenVariant);

  if (rv != strVariant)
  {
    __MOLD_VariantDestroy(rv);
    memset(rv, 0, sizeof(Variant_t));
  }

  /*
  printf("[");
  __MOLD_String_print(stdout, strVariant -> value);
  printf("]");

  printf("// -> substr(%lld,%lld,%lld)\n",
         strVariant -> value,
         idxVariant -> value,
         lenVariant -> value);
  */

  if (strVariant -> flags & VARIANT_FLAG_ONE_CHARACTER)
  {
    if ((idxVariant -> value == 0) && (lenVariant -> value != 0))
    {
      memcpy(rv, strVariant, sizeof(Variant_t));
    }
    else
    {
      // TODO: Constant for empty string.
      __MOLD_VariantStringCreateFromCString(rv, "");
    }
  }
  else
  {
    rv -> type  = VARIANT_STRING;
    rv -> value = __MOLD_String_substr(strVariant -> value, idxVariant -> value, lenVariant -> value);
    rv -> flags = 0;
  }

  /*
  printf("[");
  __MOLD_String_print(stdout, rv -> value);
  printf("]");

  printf("// <- substr(%lld)\n", rv -> value);
  */

/*
  if (rv != strVariant)
  {
    __MOLD_VariantDestroy(rv);
  }

  String_t *str = (String_t *) strVariant -> valueAsBufferPtr -> bytesPtr;

  int32_t idx = idxVariant -> valueAsInt32;
  int32_t len = lenVariant -> valueAsInt32;

  if ((len < 0) || (idx + len >= str -> length))
  {
    len = str -> length - idx;
  }

  // Possible improvement: Reuse existing buffer if possible?
  Buffer_t *newBuf = __MOLD_MemoryAlloc(sizeof(String_t) + len + 1);
  String_t *newStr = (String_t *) newBuf -> bytesPtr;

  newStr -> length = len;

  rv -> type             = VARIANT_STRING;
  rv -> valueAsBufferPtr = newBuf;
  rv -> flags            = 0;

  memcpy(newStr -> text, str -> text + idx, len);
*/
  ASSERT_VARIANT_PTR_STRING(rv);
}

// -----------------------------------------------------------------------------
// Convert any variant to the string.
//
// Parameters:
//   x - any variant variable to be converted into text (IN).
//
// Returns:
//   Text representation of input variable.
// -----------------------------------------------------------------------------

void __MOLD_StrAndAssign(Variant_t *rv, Variant_t *x)
{
  ASSERT_VARIANT_PTR_ANY(x);
  ASSERT_VARIANT_PTR_ANY(rv);

  /*
  printf("StrAndAssign: (%d,%lld) <- (%d,%lld)\n",
         rv -> type, rv -> value,
         x  -> type, x  -> value);
  */

  if (x -> type == VARIANT_STRING)
  {
    // Input is already a string - just do a shallow copy.
    if (rv != x)
    {
      // printf("StrAndAssign: Just move\n");
      __MOLD_VariantMove(rv, x);
    } else {
  //    printf("StrAndAssign: Nothing to do\n");
    }
  }
  else
  {
    // printf("StrAndAssign: Generic print\n");

    // Input is not a string.
    // We need to create new one.
    __MOLD_PrintToString_variant(rv, x);

    /*
    OLD IMPLEMENTATION
    const char *fmt = NULL;

    switch (x -> type)
    {
      case VARIANT_UNDEFINED: { fmt = "undefined"; break; }
      case VARIANT_NULL:      { fmt = "null"; break; }
      case VARIANT_INTEGER:   { fmt = "%"PRId64; break; }
      case VARIANT_FLOAT:     { fmt = "%f"; break; }
      case VARIANT_DOUBLE:    { fmt = "%lf"; break; }
      case VARIANT_BOOLEAN:   { fmt = x -> value ? "true" : "false"; break; }
      case VARIANT_ARRAY:     { fmt = "[array]"; break; }
      case VARIANT_MAP:       { fmt = "[map]"; break; }
      case VARIANT_OBJECT:    { fmt = "[object]"; break; }

      default:
      {
        __MOLD_PrintErrorAndDie_badType();
      }
    }

    Buffer_t *buf = __MOLD_MemoryAlloc(32 + sizeof(String_t));
    String_t *str = (String_t *) buf -> bytesPtr;
    str -> length = snprintf(str -> text, 31, fmt, x -> value);
    rv.valueAsBufferPtr = buf;
    */
  }

  ASSERT_VARIANT_PTR_ANY(x);
  ASSERT_VARIANT_PTR_STRING(rv);

  //printf("StrAndAssign: DONE\n");
}

Variant_t __MOLD_Str(Variant_t *x) {
  Variant_t rv = { 0 };
  __MOLD_StrAndAssign(&rv, x);
  return rv;
}

// -----------------------------------------------------------------------------
// Get ascii number of given character.
//
// Parameters:
//  x - one character string to be converted e.g. 'a' (IN)
//
// Returns:
//   Ascii value of given character.
// -----------------------------------------------------------------------------

uint32_t __MOLD_Ord(const Variant_t *x)
{
  ASSERT_VARIANT_PTR_ANY(x);

  uint32_t rv = 0;

  switch (x -> type)
  {
    case VARIANT_STRING:
    {
      if (x -> flags & VARIANT_FLAG_ONE_CHARACTER) {
        rv = x -> value;
      } else {
        rv = __MOLD_String_getText(x -> value)[0];
      }
      break;
    }

    case VARIANT_UNDEFINED:
    {
      rv = 0;
      break;
    }

    case VARIANT_INTEGER:
    {
      rv = x -> valueAsUInt8;
      break;
    }

    default:
    {
      __MOLD_PrintErrorAndDie_stringExpected();
    }
  }

  return rv;
}

// -----------------------------------------------------------------------------
// Get character of given ascii number.
//
// Parameters:
//  x - ascii number e.g. 65 (IN)
//
// Returns:
//   Character with given ascii number.
// -----------------------------------------------------------------------------

Variant_t __MOLD_Asc(const Variant_t *x)
{
  ASSERT_VARIANT_PTR_INTEGER(x);

  // TODO: Use one character type?
  Variant_t rv =
  {
    type: VARIANT_STRING,
    flags: VARIANT_FLAG_ONE_CHARACTER,
    value: x -> value
  };

  ASSERT_VARIANT_PTR_STRING(&rv);

  return rv;
}

Variant_t __MOLD_SubStr(const Variant_t *x,
                        const Variant_t *idx,
                        const Variant_t *len) {
  // TODO: Clean up this mess.
  Variant_t rv = { 0 };
  __MOLD_SubStrAndAssign(&rv, x, idx, len);
  return rv;
}

void __MOLD_AscAndAssign(Variant_t *rv, const Variant_t *x) {
  // TODO: Clean up this mess.
  ASSERT_VARIANT_PTR_ANY(rv);
  __MOLD_VariantDestroy(rv);
  *rv = __MOLD_Asc(x);
}
