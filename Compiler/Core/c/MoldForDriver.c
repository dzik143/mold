#include <string.h>

#include "MoldForDriver.h"

void __MOLD_ForDriver_IndexesAndValuesInArray(Array_t *array,
                                              uint32_t *iteratorIndex,
                                              Variant_t *iteratorValue,
                                              LoopBodyCbProto cb)
{
  if (array -> innerType == 0)
  {
    // Array of variants.
    for (uint32_t idx = 0; idx < array -> itemsCnt; idx++)
    {
      *iteratorIndex = idx;
      *iteratorValue = array -> items[idx];
      cb();
    }
  }
  else
  {
    // Array of given type.
    // TODO: Simplify it.
    // TODO: Handle array of double.
    iteratorValue -> type = array -> innerType;
    iteratorValue -> value = 0;

    switch (array -> itemSize)
    {
      case 0:
      {
        // Array of 8-bit values.
        int8_t *values = (int8_t *) array -> items;

        for (uint32_t idx = 0; idx < array -> itemsCnt; idx++)
        {
           *iteratorIndex = idx;
           iteratorValue -> value = values[idx];
           cb();
        }

        break;
      }

      case 1:
      {
        // Array of 16-bit values.
        int16_t *values = (int16_t *) array -> items;

        for (uint32_t idx = 0; idx < array -> itemsCnt; idx++)
        {
           *iteratorIndex = idx;
           iteratorValue -> value = values[idx];
           cb();
        }

        break;
      }

      case 2:
      {
        // Array of 32-bit values.
        int32_t *values = (int32_t *) array -> items;

        for (uint32_t idx = 0; idx < array -> itemsCnt; idx++)
        {
           *iteratorIndex = idx;
           iteratorValue -> value = values[idx];
           cb();
        }

        break;
      }

      case 3:
      {
        // Array of 64-bit values.
        int64_t *values = (int64_t *) array -> items;

        for (uint32_t idx = 0; idx < array -> itemsCnt; idx++)
        {
           *iteratorIndex = idx;
           iteratorValue -> value = values[idx];
           cb();
        }

        break;
      }
    }
  }
}

void __MOLD_ForDriver_IndexesAndValuesInString(Variant_t *box,
                                               uint32_t *iteratorIndex,
                                               Variant_t *iteratorValue,
                                               LoopBodyCbProto cb)
{
  iteratorValue -> type  = VARIANT_STRING;
  iteratorValue -> flags = VARIANT_FLAG_ONE_CHARACTER;

  if (box -> flags & VARIANT_FLAG_ONE_CHARACTER)
  {
    // One character string.
    // Just pass it to caller.
    *iteratorIndex = 0;
    iteratorValue -> value = box -> valueAsInt8;
    cb();
  }
  else
  {
    // Multichar string.
    // Iterate char-by-char.
    Buffer_t *buf = box -> valueAsBufferPtr;
    String_t *str = (String_t *) buf -> bytesPtr;

    for (uint32_t idx = 0; idx < str -> length; idx++)
    {
      *iteratorIndex = idx;
      iteratorValue -> value = str -> text[idx];
      cb();
    }
  }
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

  MapBucket_t *buckets = map -> buckets;

  MapBucket_t *bucket = map -> firstBucket;

  while (bucket != NULL)
  {
    memcpy(iteratorKey, &bucket -> key, sizeof(Variant_t));
    memcpy(iteratorValue, &bucket -> value, sizeof(Variant_t));

    bucket = bucket -> nextBucket;

    cb();
  }
}

//
//  Process each (key, value) pairs in generic box.
//
//  box                - any box container (IN / Variant_t *)
//  iteratorIndexOrKey - index/key iterator (OUT / Variant_t * / uint32*)
//  iteratorValue      - value iterator (OUT / Variant_t *)
//  cb                 - body loop callback (IN / function address)
//

void __MOLD_ForDriver_Generic(Variant_t *box, void *iteratorIndexOrKey,
                              Variant_t *iteratorValue, LoopBodyCbProto cb)
{
  // Redirect unused iterators to trash bin.
  if (iteratorIndexOrKey == NULL) iteratorIndexOrKey = &__TrashBin;
  if (iteratorValue      == NULL) iteratorValue      = &__TrashBin;

  // Dispatch variant type.
  switch (box -> type)
  {
    case VARIANT_ARRAY:
    {
      Buffer_t *buf  = box -> valueAsBufferPtr;
      Array_t *array = (Array_t *) buf -> bytesPtr;
      __MOLD_ForDriver_IndexesAndValuesInArray(array, iteratorIndexOrKey, iteratorValue, cb);
      break;
    }

    case VARIANT_STRING:
    {
      __MOLD_ForDriver_IndexesAndValuesInString(box, iteratorIndexOrKey, iteratorValue, cb);
      break;
    }

    case VARIANT_MAP:
    case VARIANT_OBJECT:
    {
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
