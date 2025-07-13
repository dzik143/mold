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

#include "MoldError.h"
#include "MoldVariantArray.h"
#include "MoldMemory.h"
#include "MoldForDriver.h"

// #############################################################################
//                             Create functions
// #############################################################################

// -----------------------------------------------------------------------------
// Create new empty array.
//
// Pseudo code:
//   dst = []
//
// Parameters:
//   dst - pointer, where to store new array (OUT)
//
// -----------------------------------------------------------------------------

void __MOLD_VariantArrayCreate(Variant_t *dst)
{
  __MOLD_VariantDestroy(dst);

  // Possible improvment: Reuse existing buffer if possible?
  dst -> type  = VARIANT_ARRAY;
  dst -> flags = 0;
  dst -> valueAsBufferPtr = __MOLD_MemoryAlloc(64);
}

// -----------------------------------------------------------------------------
// Create array and init it with items from another one.
//
// WARNING: Only shallow copy is performed.
//
// Pseudo code:
//   dst    = []
//   dst[0] = initArray[0]
//   dst[1] = initArray[1]
//   ...
//   dst[n] = initArray[n]
//
// Parameters:
//   dst         - pointer, where to store new array (OUT),
//   initArray[] - array of items to be shallow copied into new array (IN).
// -----------------------------------------------------------------------------

void __MOLD_VariantArrayCreateFromInitList(Variant_t *dst, const Variant_t *initArray)
{
  ASSERT_VARIANT_PTR_ARRAY(initArray);

  __MOLD_VariantArrayCreate(dst);

  Variant_t oneItem;
  uint32_t idx;

  void _copyOneItem()
  {
    __MOLD_VariantStoreAtIndex_variant(dst, idx, &oneItem);
  }

  __MOLD_ForDriver_IndexesAndValuesInArray(
    (Array_t *) initArray -> valueAsBufferPtr -> bytesPtr,
    &idx,
    &oneItem,
    &_copyOneItem
  );

  ASSERT_VARIANT_PTR_ARRAY(dst);
}

// -----------------------------------------------------------------------------
// Release the array and it's item recursively.
// This call tells, that the array is not needed anymore and may be freed.
//
// Pseudo code:
//   delete x
//
// Parameters:
//   x[] - array to be freed (IN).
// -----------------------------------------------------------------------------

void __MOLD_VariantArrayRelease(Variant_t *x)
{
  ASSERT_VARIANT_PTR_ARRAY(x);

  if (x -> type != VARIANT_UNDEFINED)
  {
    // Release array items if needed.
    if (x -> valueAsBufferPtr -> refCnt == 1)
    {
      // We're going to free the whole array.
      // Release stored items first.
      Array_t *array = (Array_t *) (x -> valueAsBufferPtr -> bytesPtr);

      if (array -> innerType == 0)
      {
        // Array of variants.
        // Destroy stored items one-by-one.
        for (uint32_t idx = 0; idx < array -> itemsCnt; idx++)
        {
          __MOLD_VariantDestroy(array -> items + idx);
        }
      }
    }

    // Release the array buffer itself.
    __MOLD_MemoryRelease(x -> valueAsBufferPtr);

    x -> valueAsBufferPtr = NULL;
    x -> type             = VARIANT_UNDEFINED;
  }
}

// #############################################################################
//                               Load functions
// #############################################################################

// -----------------------------------------------------------------------------
// Load value stored at given index.
//
// Pseudo code:
//  rv = box[idx]
//
// Parameters:
//   rv  - buffer, where to store loaded item (OUT),
//   box - source array (IN),
//   idx - item array to be loaded (IN).
//
// Returns:
//   Value stored at given index.
// -----------------------------------------------------------------------------

void __MOLD_VariantLoadFromIndexAndAssign(Variant_t *rv,
                                          const Variant_t *box,
                                          int32_t idx)
{
  ASSERT_VARIANT_PTR_ANY(box);
  ASSERT_VARIANT_PTR_ANY(rv);

  __MOLD_VariantDestroy(rv);

  // TODO: Optimize it.
  // Set result to undefined before find.
  memset(rv, 0, sizeof(Variant_t));

  if (idx < 0)
  {
    __MOLD_PrintErrorAndDie_negativeIndex();
  }

  switch (box -> type)
  {
    case VARIANT_ARRAY:
    {
      ASSERT_VARIANT_PTR_ARRAY(box);

      Buffer_t *buf = box -> valueAsBufferPtr;
      Array_t  *array = (Array_t *) buf -> bytesPtr;

      if (idx < array -> itemsCnt)
      {
        if (array -> innerType == 0)
        {
          // Array of variants.
          memcpy(rv, array -> items + idx, sizeof(Variant_t));

          // Increse reference counter for the just loaded item.
          __MOLD_VariantAddRef(rv);
        }
        else
        {
          // Array of primitives.
          rv -> type = array -> innerType;

          switch (array -> itemSize)
          {
            // TODO: Get it work with non-integer too.
            case 0: rv -> valueAsInt64 = ((int8_t *)  array -> items)[idx]; break;
            case 1: rv -> valueAsInt64 = ((int16_t *) array -> items)[idx]; break;
            case 2: rv -> valueAsInt64 = ((int32_t *) array -> items)[idx]; break;
            case 3: rv -> valueAsInt64 = ((int64_t *) array -> items)[idx]; break;
          }
        }
      }

      break;
    }

    case VARIANT_STRING:
    {
      ASSERT_VARIANT_PTR_STRING(box);

      if (box -> flags & VARIANT_FLAG_ONE_CHARACTER)
      {
        // One character string - just return itself.
        memcpy(rv, box, sizeof(Variant_t));
      }
      else
      {
        // Multiple character string.
        Buffer_t *buf = box -> valueAsBufferPtr;
        String_t *str = (String_t *) buf -> bytesPtr;

        if (idx < str -> length)
        {
          rv -> type  = VARIANT_STRING;
          rv -> flags = VARIANT_FLAG_ONE_CHARACTER;
          rv -> value = str -> text[idx];
        }
      }

      break;
    }

    default:
    {
      __MOLD_PrintErrorAndDie_arrayOrStringExpected();
    }
  }

  ASSERT_VARIANT_PTR_ANY(rv);
}

void __MOLD_VariantLoadFromIndexAndAssign_variant(Variant_t *rv,
                                                  const Variant_t *box,
                                                  int32_t idx) {
  __MOLD_VariantLoadFromIndexAndAssign(rv, box, idx);
}

void __MOLD_VariantLoadFromIndexAndAssign_string(Variant_t *rv,
                                                 const Variant_t *box,
                                                 int32_t idx) {
  __MOLD_VariantLoadFromIndexAndAssign(rv, box, idx);
}

Variant_t __MOLD_VariantLoadFromIndex(const Variant_t *box,
                                              int32_t idx) {
  Variant_t rv = { 0 };
  __MOLD_VariantLoadFromIndexAndAssign(&rv, box, idx);
  return rv;
}

Variant_t __MOLD_VariantLoadFromIndex_variant(const Variant_t *box, int32_t idx) {
  return __MOLD_VariantLoadFromIndex(box, idx);
}

Variant_t __MOLD_VariantLoadFromIndex_string (const Variant_t *box, int32_t idx) {
  return __MOLD_VariantLoadFromIndex_variant(box, idx);
}

int32_t __MOLD_VariantLoadFromIndex_int32(const Variant_t *box, int32_t idx) {
  return __MOLD_VariantLoadFromIndex_variant(box, idx).valueAsInt32;
}

int64_t __MOLD_VariantLoadFromIndex_int64(const Variant_t *box, int32_t idx) {
  return __MOLD_VariantLoadFromIndex_variant(box, idx).valueAsInt64;
}

bool32_t __MOLD_VariantLoadFromIndex_bool32(const Variant_t *box, int32_t idx) {
  return __MOLD_VariantLoadFromIndex_variant(box, idx).valueAsInt32;
}

float64_t __MOLD_VariantLoadFromIndex_float64(const Variant_t *box, int32_t idx) {
  return __MOLD_VariantLoadFromIndex_variant(box, idx).valueAsFloat64;
}

// #############################################################################
//                             Store functions
// #############################################################################

// ----------------------------------------------------------------------------
// Store one variant item in the array.
//
// Pseudo code:
//   x[i] = value
//
// Parameters:
//   box   - array to modify (Variant_t) (IN),
//   idx   - index, where to store item (IN),
//   value - value to store (Variant_t) (IN).
// ----------------------------------------------------------------------------

void __MOLD_VariantStoreAtIndex_variant(Variant_t *box,
                                        int32_t idx,
                                        Variant_t *value)
{
  ASSERT_VARIANT_PTR_ARRAY(box);
  ASSERT_VARIANT_PTR_ANY(value);

  Buffer_t *buf   = box -> valueAsBufferPtr;
  Array_t  *array = (Array_t *) buf -> bytesPtr;

  if (idx < 0)
  {
    __MOLD_PrintErrorAndDie_negativeIndex();
  }

  if (idx >= array -> itemsCnt)
  {
    array -> itemsCnt = idx + 1;

    // Check is there space for new item
    int capacityNeeded = sizeof(Array_t) + array -> itemsCnt * sizeof(Variant_t);

    if (capacityNeeded > buf -> capacity)
    {
      // Array buffer is too small.
      // Increase buffer size.
      __MOLD_MemoryRealloc(buf, capacityNeeded);
      array = (Array_t *) buf -> bytesPtr;
    }
  }

  // Increase reference counter for the new stored item.
  __MOLD_VariantAddRef(value);

  // Destroy old value if any.
  __MOLD_VariantDestroy(&array -> items[idx]);

  // Put new item into array slot
  array -> items[idx] = *value;

  ASSERT_VARIANT_PTR_ARRAY(box);
  ASSERT_VARIANT_PTR_ANY(value);
}

// ----------------------------------------------------------------------------
// Store one string item in the array.
//
// Pseudo code:
//   x[i] = "text"
//
// Parameters:
//   box   - array to modify (Variant_t) (IN),
//   idx   - index, where to store item (IN),
//   value - value to store (Variant_t) (IN).
// ----------------------------------------------------------------------------

void __MOLD_VariantStoreAtIndex_string(Variant_t *box, int32_t idx, Variant_t *value)
{
  return __MOLD_VariantStoreAtIndex_variant(box, idx, value);
}

// ----------------------------------------------------------------------------
// Store one int32 value in the array.
//
// Pseudo code:
//   x[i] = <32-bit integer>
//
// Parameters:
//   box   - array to modify (Variant_t) (IN),
//   idx   - index, where to store item (IN),
//   value - value to store (Variant_t) (IN).
// ----------------------------------------------------------------------------

void __MOLD_VariantStoreAtIndex_int32(Variant_t *box, int32_t idx, int32_t value)
{
  Variant_t valueAsVariant =
  {
    type: VARIANT_INTEGER,
    valueAsInt64: value,
    flags: 0
  };

  __MOLD_VariantStoreAtIndex_variant(box, idx, &valueAsVariant);
}

// ----------------------------------------------------------------------------
// Store one int64 value in the array.
//
// Pseudo code:
//   x[i] = <64-bit integer>
//
// Parameters:
//   box   - array to modify (Variant_t) (IN),
//   idx   - index, where to store item (IN),
//   value - value to store (Variant_t) (IN).
// ----------------------------------------------------------------------------

void __MOLD_VariantStoreAtIndex_int64(Variant_t *box, int32_t idx, int64_t value)
{
  Variant_t valueAsVariant =
  {
    type: VARIANT_INTEGER,
    valueAsInt64: value,
    flags: 0
  };

  __MOLD_VariantStoreAtIndex_variant(box, idx, &valueAsVariant);
}

// ----------------------------------------------------------------------------
// Store one float64 (double precision) item in the array.
//
// Pseudo code:
//   x[i] = 3.14
//
// Parameters:
//   box   - array to modify (Variant_t) (IN),
//   idx   - index, where to store item (IN),
//   value - value to store (Variant_t) (IN).
// ----------------------------------------------------------------------------

void __MOLD_VariantStoreAtIndex_float64(Variant_t *box, int32_t idx, float64_t value)
{
  Variant_t valueAsVariant =
  {
    type: VARIANT_DOUBLE,
    valueAsFloat64: value,
    flags: 0
  };

  __MOLD_VariantStoreAtIndex_variant(box, idx, &valueAsVariant);
}

// ----------------------------------------------------------------------------
// Store one bool32 item in the array.
//
// Pseudo code:
//   x[i] = true
//
// Parameters:
//   box   - array to modify (Variant_t) (IN),
//   idx   - index, where to store item (IN),
//   value - value to store (Variant_t) (IN).
// ----------------------------------------------------------------------------

void __MOLD_VariantStoreAtIndex_bool32(Variant_t *box, int32_t idx, bool32_t value)
{
  Variant_t valueAsVariant =
  {
    type: VARIANT_BOOLEAN,
    valueAsInt64: value,
    flags: 0
  };

  __MOLD_VariantStoreAtIndex_variant(box, idx, &valueAsVariant);
}

// ----------------------------------------------------------------------------
// Append variant item to the end of the array.
// After that, array size is increased by one.
//
// 1, 2, 3, 4, 5, x
//                ^
//                New item goes here
//
// Pseudo code:
//   box[box.length - 1] = value
//
// Parameters:
//   box   - array to modify (IN),
//   idx   - index, where to store item (IN),
//   value - value to store (IN).
// ----------------------------------------------------------------------------

void __MOLD_ArrayInsertAfterLast(Variant_t *box, Variant_t *value)
{
  ASSERT_VARIANT_PTR_ARRAY(box);
  ASSERT_VARIANT_PTR_ANY(value);

  if (box -> type != VARIANT_ARRAY)
  {
    __MOLD_PrintErrorAndDie_arrayExpected();
  }

  Buffer_t *buf   = box -> valueAsBufferPtr;
  Array_t  *array = (Array_t *) buf -> bytesPtr;

  __MOLD_VariantStoreAtIndex_variant(box, array -> itemsCnt, value);
}
