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

  rv -> type  = VARIANT_STRING;
  rv -> flags = 0;
  rv -> value = __MOLD_String_createFromCString(text, -1);
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

bool32_t __MOLD_cmp_eq_string(Variant_t *x, const Variant_t *y)
{
  ASSERT_VARIANT_PTR_STRING(x);
  ASSERT_VARIANT_PTR_STRING(y);

  return __MOLD_String_cmp_eq(x -> value, y -> value);

  /*
  TODO: Review it.

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
*/
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
  ASSERT_VARIANT_PTR_ANY(dst);
  ASSERT_VARIANT_PTR_STRING(x);
  ASSERT_VARIANT_PTR_STRING(y);

  MoldStringId_t existingDstId = (dst -> type == VARIANT_STRING)
                               ? (dst -> value)
                               : -1;

  MoldStringId_t newId = __MOLD_String_joinStub(existingDstId,
                                                x -> value,
                                                y -> value);

  if ((dst != x) && (dst != y)) {
    __MOLD_VariantDestroy(dst);
  }

  dst -> type  = VARIANT_STRING;
  dst -> value = newId;
  dst -> flags = 0;

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

void __MOLD_SubStrAndAssign(Variant_t *rv,
                            const Variant_t *strVariant,
                            const Variant_t *idxVariant,
                            const Variant_t *lenVariant)
{

  ASSERT_VARIANT_PTR_ANY(rv);
  ASSERT_VARIANT_PTR_STRING(strVariant);
  ASSERT_VARIANT_PTR_INTEGER(idxVariant);
  ASSERT_VARIANT_PTR_INTEGER(lenVariant);

  rv -> type  = VARIANT_STRING;
  rv -> flags = 0;

  rv -> value = __MOLD_String_substr(strVariant -> value,
                                     idxVariant -> value,
                                     lenVariant -> value);

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

  if (x -> type == VARIANT_STRING)
  {
    // Input is already a string - just do a shallow copy.
    __MOLD_VariantMove(rv, x);
  }
  else
  {
    // Input is not a string.
    // We need to create new one.
    __MOLD_PrintToString_variant(rv, x);
  }

  ASSERT_VARIANT_PTR_ANY(x);
  ASSERT_VARIANT_PTR_STRING(rv);
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
      if (x -> value < MOLD_STRING_ONE_CHAR_THRESHOLD)
      {
        rv = x -> value;
      }
      else
      {
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

void __MOLD_AscAndAssign(Variant_t *rv, const Variant_t *x)
{
  ASSERT_VARIANT_PTR_ANY(rv);
  ASSERT_VARIANT_PTR_INTEGER(x);

  __MOLD_VariantDestroy(rv);

  rv -> type  = VARIANT_STRING;
  rv -> flags = 0;
  rv -> value = x -> value;

  ASSERT_VARIANT_PTR_STRING(rv);
}

Variant_t __MOLD_SubStr(const Variant_t *x,
                        const Variant_t *idx,
                        const Variant_t *len) {
  // TODO: Clean up this mess.
  Variant_t rv = { 0 };
  __MOLD_SubStrAndAssign(&rv, x, idx, len);
  return rv;
}

Variant_t  __MOLD_Asc(const Variant_t *x) {
  // TODO: Clean up this mess.
  Variant_t rv = { 0 };
  __MOLD_AscAndAssign(&rv, x);
  return rv;
}
