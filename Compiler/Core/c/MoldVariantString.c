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

#include <string.h>
#include "MoldVariantString.h"

bool32_t __MOLD_cmp_eq_string(Variant_t x, Variant_t y)
{
  bool32_t rv = 0;

  if (x.flags & VARIANT_FLAG_ONE_CHARACTER)
  {
    // CHAR eq ?
    if (y.flags & VARIANT_FLAG_ONE_CHARACTER)
    {
      // CHAR eq CHAR
      rv = (x.value == y.value);

    }
    else
    {
      // CHAR eq STRING
      Buffer_t *yBuf = (Buffer_t *) y.value;
      String_t *yStr = (String_t *) yBuf -> bytesPtr;
      rv = (yStr -> length == 1) && (yStr -> text[0] == x.value);
    }

  }
  else
  {
    // STRING eq ?
    Buffer_t *xBuf = (Buffer_t *) x.value;
    String_t *xStr = (String_t *) xBuf -> bytesPtr;

    if (y.flags & VARIANT_FLAG_ONE_CHARACTER)
    {
      // STRING eq CHAR
      rv = (xStr -> length == 1) && (xStr -> text[0] == y.value);

    }
    else
    {
      // STRING eq STRING
      Buffer_t *yBuf = (Buffer_t *) y.value;
      String_t *yStr = (String_t *) yBuf -> bytesPtr;

      rv = (xStr -> length == yStr -> length) &&
           (memcmp(xStr -> text, yStr -> text, xStr -> length) == 0);
    }
  }

  return rv;
}

bool32_t __MOLD_cmp_ne_string(Variant_t x, Variant_t y)
{
  return !__MOLD_cmp_eq_string(x, y);
}

void __MOLD_VariantStringJoin(Variant_t *dst, Variant_t *x, Variant_t *y)
{
  // TODO: Free existing variant if any.
  uint64_t xLen = 0;
  uint64_t yLen = 0;

  char *xText = NULL;
  char *yText = NULL;

  //
  // Fetch first source string.
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

  //
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

  //
  // Calculate destination length (without zero terminator).
  //

  uint64_t newSize = xLen + yLen;

  //
  // Allocate new buffer for destination string.
  // TODO: Use existing buffer if exists.
  //

  Buffer_t *dstBuf = __MOLD_MemoryAlloc(sizeof(String_t) + newSize);
  String_t *dstStr = (String_t *) dstBuf -> bytesPtr;

  //
  // Join two source strings into destination buffer.
  //

  memcpy(dstStr -> text        , xText, xLen);
  memcpy(dstStr -> text + xLen , yText, yLen);

  dstStr -> length = newSize;

  // Assign new buffer to result.
  dst -> type             = VARIANT_STRING;
  dst -> valueAsBufferPtr = dstBuf;
}

Variant_t __MOLD_SubStr(Variant_t strVariant, Variant_t idxVariant, Variant_t lenVariant)
{
  Variant_t rv;

  String_t *str = (String_t *) strVariant.valueAsBufferPtr -> bytesPtr;

  int32_t idx = idxVariant.valueAsInt32;
  int32_t len = lenVariant.valueAsInt32;

  if ((len < 0) || (idx + len >= str -> length))
  {
    len = str -> length - idx;
  }

  Buffer_t *newBuf = __MOLD_MemoryAlloc(sizeof(String_t) + len + 1);
  String_t *newStr = (String_t *) newBuf -> bytesPtr;

  newStr -> length = len;

  rv.type             = VARIANT_STRING;
  rv.valueAsBufferPtr = newBuf;

  memcpy(newStr -> text, str -> text + idx, len);

  return rv;
}

Variant_t __MOLD_Str(Variant_t x)
{
  Variant_t rv = { VARIANT_STRING };

  if (x.type == VARIANT_STRING)
  {
    // Input is already a string - nothing to do.
    rv = x;
  }
  else
  {
    // Input is not a string.
    // We need to create new one.
    const char *fmt = NULL;

    switch (x.type)
    {
      case VARIANT_UNDEFINED: { fmt = "undefined"; break; }
      case VARIANT_NULL:      { fmt = "null"; break; }
      case VARIANT_INTEGER:   { fmt = "%"PRId64; break; }
      case VARIANT_FLOAT:     { fmt = "%f"; break; }
      case VARIANT_DOUBLE:    { fmt = "%lf"; break; }
      case VARIANT_BOOLEAN:   { fmt = x.value ? "true" : "false"; break; }
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
    str -> length = snprintf(str -> text, 31, fmt, x.value);
    rv.valueAsBufferPtr = buf;
  }

  return rv;
}
