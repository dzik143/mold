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

// -----------------------------------------------------------------------------
// Create new string and init it from C string buffer.
//
// Pseudo code:
// ... = new string("text")
//
// Parameters:
//   text - pointer to the zero terminated C string (IN).
//
// Returns:
//   New allocated string set to given text wrapped into Variant container.
// -----------------------------------------------------------------------------

Variant_t __MOLD_VariantStringCreateFromCString(const char *text)
{
  Variant_t rv = { VARIANT_UNDEFINED };

  if (text)
  {
    uint32_t textLen = strlen(text);
    Buffer_t *buf    = __MOLD_MemoryAlloc(textLen + 1);
    String_t *str    = (String_t *) buf -> bytesPtr;

    memcpy(str -> text, text, textLen);

    str -> length = textLen;

    rv.type             = VARIANT_STRING;
    rv.valueAsBufferPtr = buf;
  }

  ASSERT_VARIANT_PTR_STRING(&rv);

  return rv;
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

void __MOLD_VariantStringRelease(Variant_t *x)
{
  ASSERT_VARIANT_PTR_STRING(x);

  // String - possible complex or primitive.
  if (!(x -> flags & VARIANT_FLAG_ONE_CHARACTER))
  {
    // Multi-character string.
    // Release the buffer.
    __MOLD_MemoryRelease(x -> valueAsBufferPtr);
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

bool32_t __MOLD_cmp_eq_string(const Variant_t *x, const Variant_t *y)
{
  ASSERT_VARIANT_PTR_STRING(x);
  ASSERT_VARIANT_PTR_STRING(y);

  bool32_t rv = 0;

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
      Buffer_t *yBuf = (Buffer_t *) y -> value;
      String_t *yStr = (String_t *) yBuf -> bytesPtr;
      rv = (yStr -> length == 1) && (yStr -> text[0] == x -> value);
    }

  }
  else
  {
    // STRING eq ?
    Buffer_t *xBuf = (Buffer_t *) x -> value;
    String_t *xStr = (String_t *) xBuf -> bytesPtr;

    if (y -> flags & VARIANT_FLAG_ONE_CHARACTER)
    {
      // STRING eq CHAR
      rv = (xStr -> length == 1) && (xStr -> text[0] == y -> value);

    }
    else
    {
      // STRING eq STRING
      Buffer_t *yBuf = (Buffer_t *) y -> value;
      String_t *yStr = (String_t *) yBuf -> bytesPtr;

      rv = (xStr -> length == yStr -> length) &&
           (memcmp(xStr -> text, yStr -> text, xStr -> length) == 0);
    }
  }

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

bool32_t __MOLD_cmp_ne_string(const Variant_t *x, const Variant_t *y)
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

  ASSERT_VARIANT_PTR_STRING(dst);
  ASSERT_VARIANT_PTR_STRING(x);
  ASSERT_VARIANT_PTR_STRING(y);
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

Variant_t __MOLD_SubStr(const Variant_t *strVariant,
                        const Variant_t *idxVariant,
                        const Variant_t *lenVariant)
{
  ASSERT_VARIANT_PTR_STRING(strVariant);
  ASSERT_VARIANT_PTR_INTEGER(idxVariant);
  ASSERT_VARIANT_PTR_INTEGER(lenVariant);

  Variant_t rv = { VARIANT_STRING };

  String_t *str = (String_t *) strVariant -> valueAsBufferPtr -> bytesPtr;

  int32_t idx = idxVariant -> valueAsInt32;
  int32_t len = lenVariant -> valueAsInt32;

  if ((len < 0) || (idx + len >= str -> length))
  {
    len = str -> length - idx;
  }

  Buffer_t *newBuf = __MOLD_MemoryAlloc(sizeof(String_t) + len + 1);
  String_t *newStr = (String_t *) newBuf -> bytesPtr;

  newStr -> length = len;

  rv.valueAsBufferPtr = newBuf;

  memcpy(newStr -> text, str -> text + idx, len);

  ASSERT_VARIANT_PTR_STRING(&rv);

  return rv;
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


Variant_t __MOLD_Str(Variant_t *x)
{
  ASSERT_VARIANT_PTR_ANY(x);

  Variant_t rv = { VARIANT_STRING };

  if (x -> type == VARIANT_STRING)
  {
    // Input is already a string - nothing to do.
    // TODO: Review it.
    __MOLD_VariantAddRef(x);
    rv = *x;
  }
  else
  {
    // Input is not a string.
    // We need to create new one.
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
  }

  ASSERT_VARIANT_PTR_ANY(x);
  ASSERT_VARIANT_PTR_STRING(&rv);

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

Variant_t __MOLD_Ord(const Variant_t *x)
{
  ASSERT_VARIANT_PTR_ANY(x);

  Variant_t rv = { VARIANT_INTEGER };

  switch (x -> type)
  {
    case VARIANT_STRING:
    {
      if (x -> flags & VARIANT_FLAG_ONE_CHARACTER)
      {
        rv.value = x -> valueAsUInt8;
      }
      else
      {
        String_t *str = (String_t *) x -> valueAsBufferPtr -> bytesPtr;
        rv.value = str -> text[0];
      }

      break;
    }

    case VARIANT_UNDEFINED:
    {
      rv.value = 0;
      break;
    }

    case VARIANT_INTEGER:
    {
      rv.value = x -> valueAsUInt8;
      break;
    }

    default:
    {
      __MOLD_PrintErrorAndDie_stringExpected();
    }
  }

  ASSERT_VARIANT_PTR_INTEGER(&rv);

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

  Variant_t rv =
  {
    type: VARIANT_STRING,
    flags: VARIANT_FLAG_ONE_CHARACTER,
    value: x -> value
  };

  ASSERT_VARIANT_PTR_STRING(&rv);

  return rv;
}
