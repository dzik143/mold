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
#include "MoldForDriver.h"
#include "memory/MoldString.h"

void __MOLD_ForDriver_IndexesAndValuesInArray(Array_t *array,
                                              uint32_t *iteratorIndex,
                                              Variant_t *iteratorValue,
                                              LoopBodyCbProto cb)
{
  assert(array != NULL);
  assert(iteratorIndex != NULL);
  assert(iteratorValue != NULL);
  assert(cb != NULL);

  uint32_t itemsCnt = array -> itemsCnt;

  if (array -> innerType == 0)
  {
    // Array of variants.
    for (uint32_t idx = 0; idx < itemsCnt; idx++)
    {
      *iteratorIndex = idx;
      *iteratorValue = array -> items[idx];
      ASSERT_VARIANT_PTR_ANY(iteratorValue);
      cb();
    }
  }
  else
  {
    // Array of given type.
    // TODO: Simplify it.
    // TODO: Handle array of double.
    iteratorValue -> type  = array -> innerType;
    iteratorValue -> value = 0;
    iteratorValue -> flags = 0;

    switch (array -> itemSize)
    {
      case 0:
      {
        // Array of 8-bit values.
        int8_t *values = (int8_t *) array -> items;

        for (uint32_t idx = 0; idx < itemsCnt; idx++)
        {
           *iteratorIndex = idx;
           iteratorValue -> value = values[idx];
           ASSERT_VARIANT_PTR_INTEGER(iteratorValue);
           cb();
        }

        break;
      }

      case 1:
      {
        // Array of 16-bit values.
        int16_t *values = (int16_t *) array -> items;

        for (uint32_t idx = 0; idx < itemsCnt; idx++)
        {
           *iteratorIndex = idx;
           iteratorValue -> value = values[idx];
           ASSERT_VARIANT_PTR_INTEGER(iteratorValue);
           cb();
        }

        break;
      }

      case 2:
      {
        // Array of 32-bit values.
        int32_t *values = (int32_t *) array -> items;

        for (uint32_t idx = 0; idx < itemsCnt; idx++)
        {
           *iteratorIndex = idx;
           iteratorValue -> value = values[idx];
           ASSERT_VARIANT_PTR_INTEGER(iteratorValue);
           cb();
        }

        break;
      }

      case 3:
      {
        // Array of 64-bit values.
        int64_t *values = (int64_t *) array -> items;

        for (uint32_t idx = 0; idx < itemsCnt; idx++)
        {
           *iteratorIndex = idx;
           iteratorValue -> value = values[idx];
           ASSERT_VARIANT_PTR_INTEGER(iteratorValue);
           cb();
        }

        break;
      }
    }
  }

  memset(iteratorValue, 0, sizeof(Variant_t));
}

void __MOLD_ForDriver_IndexesAndValuesInString(Variant_t *box,
                                               uint32_t *iteratorIndex,
                                               Variant_t *iteratorValue,
                                               LoopBodyCbProto cb)
{
  assert(box != NULL);
  assert(iteratorIndex != NULL);
  assert(iteratorValue != NULL);
  assert(cb != NULL);

  iteratorValue -> type  = VARIANT_STRING;
  iteratorValue -> flags = 0;

  if (box -> value == 0)
  {
   // Empty string - do nothing.
  }
  else if (box -> value < MOLD_STRING_ONE_CHAR_THRESHOLD)
  {
    // One character string.
    // Just pass it to caller.
    *iteratorIndex = 0;
    iteratorValue -> value = box -> valueAsInt8;
    ASSERT_VARIANT_PTR_STRING(iteratorValue);
    cb();
  }
  else
  {
    // Multichar string.
    // Iterate char-by-char.
    // TODO: Simplify it.
    const char *text   = __MOLD_String_getText  (box -> value);
    uint32_t    length = __MOLD_String_getLength(box -> value);

    for (uint32_t idx = 0; idx < length; idx++)
    {
      *iteratorIndex = idx;
      iteratorValue -> value = text[idx];
      ASSERT_VARIANT_PTR_STRING(iteratorValue);
      cb();
    }
  }

  // Clear iterator variable after loop exit.
  memset(iteratorValue, 0, sizeof(Variant_t));
}

void __MOLD_ForDriver_KeysAndValuesInMap(Variant_t *box,
                                         Variant_t *iteratorKey,
                                         Variant_t *iteratorValue,
                                         LoopBodyCbProto cb)
{
  if ((box -> type != VARIANT_MAP) &&
      (box -> type != VARIANT_OBJECT))
  {
    __MOLD_PrintErrorAndDie_mapOrObjectExpected();
  }

  Buffer_t *buf = box -> valueAsBufferPtr;
  Map_t    *map = (Map_t *) buf -> bytesPtr;

  uint32_t bucketsUsedCnt = map -> bucketsUsedCnt;

  MapBucket_t *bucket = map -> firstBucket;

  for (uint32_t idx = 0; idx < bucketsUsedCnt; idx++)
  {
    memcpy(iteratorKey  , &bucket -> key  , sizeof(Variant_t));
    memcpy(iteratorValue, &bucket -> value, sizeof(Variant_t));

    ASSERT_VARIANT_PTR_STRING(iteratorKey);
    ASSERT_VARIANT_PTR_ANY(iteratorValue);
    cb();

    bucket = bucket -> nextBucket;
  }

  // Clear iterator variables after loop exit.
  memset(iteratorKey   , 0, sizeof(Variant_t));
  memset(iteratorValue , 0, sizeof(Variant_t));
}

// ----------------------------------------------------------------------------
//  Process each (key, value) pairs in generic box.
//
//  box                - array, map or string container (IN)
//  iteratorIndexOrKey - index or key iterator (OUT)
//  iteratorValue      - value iterator (OUT)
//  cb                 - body loop callback (IN)
// ----------------------------------------------------------------------------

void __MOLD_ForDriver_Generic(Variant_t *box, void *iteratorIndexOrKey,
                              Variant_t *iteratorValue, LoopBodyCbProto cb)
{
  ASSERT_VARIANT_PTR_ANY(box);

  // Redirect unused iterators to trash bin.
  if (iteratorIndexOrKey == NULL) iteratorIndexOrKey = &__TrashBin;
  if (iteratorValue      == NULL) iteratorValue      = &__TrashBin;

  // Dispatch variant type.
  switch (box -> type)
  {
    case VARIANT_ARRAY:
    {
      ASSERT_VARIANT_PTR_ARRAY(box);
      Buffer_t *buf  = box -> valueAsBufferPtr;
      Array_t *array = (Array_t *) buf -> bytesPtr;
      __MOLD_ForDriver_IndexesAndValuesInArray(array, iteratorIndexOrKey, iteratorValue, cb);
      break;
    }

    case VARIANT_STRING:
    {
      ASSERT_VARIANT_PTR_STRING(box);
      __MOLD_ForDriver_IndexesAndValuesInString(box, iteratorIndexOrKey, iteratorValue, cb);
      break;
    }

    case VARIANT_MAP:
    case VARIANT_OBJECT:
    {
      ASSERT_VARIANT_PTR_MAP_OR_OBJECT(box);
      __MOLD_ForDriver_KeysAndValuesInMap(box, iteratorIndexOrKey, iteratorValue, cb);
      break;
    }

    default:
    {
      __MOLD_PrintErrorAndDie_notIterable();
    }
  }
}

void __MOLD_ForDriver_IndexesAndValuesInArrayOrString(Variant_t *box,
                                                      void *iteratorIndexOrKey,
                                                      Variant_t *iteratorValue,
                                                      LoopBodyCbProto cb)
{
  switch (box -> type)
  {
    case VARIANT_ARRAY:
    case VARIANT_STRING:
    {
      __MOLD_ForDriver_Generic(box, iteratorIndexOrKey, iteratorValue, cb);
      break;
    }

    default:
    {
      __MOLD_PrintErrorAndDie_arrayOrStringExpected();
    }
  }
}
