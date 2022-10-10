#include <stdio.h>
#include <string.h>

#include "MoldVariantArray.h"
#include "MoldMemory.h"
#include "MoldForDriver.h"

Variant_t __MOLD_VariantArrayCreate()
{
  Variant_t rv;

  rv.type             = VARIANT_ARRAY;
  rv.flags            = 0;
  rv.valueAsBufferPtr = __MOLD_MemoryAlloc(64);

  return rv;
}

Variant_t __MOLD_VariantArrayCreateFromInitList(Variant_t initArray)
{
  // TODO: Review it.
  // TODO: Clean up this mess.
  // TODO: Optimize it.
  Variant_t rv = __MOLD_VariantArrayCreate();
  Variant_t oneItem;
  uint32_t idx;

  void _copyOneItem()
  {
    __MOLD_VariantStoreAtIndex_variant(&rv, idx, oneItem);
  }

  __MOLD_ForDriver_IndexesAndValuesInArray(
    (Array_t *) initArray.valueAsBufferPtr -> bytesPtr,
    &idx,
    &oneItem,
    &_copyOneItem
  );

  return rv;
}

Variant_t __MOLD_VariantLoadFromIndex(Variant_t box, int32_t idx)
{
  Variant_t rv = { VARIANT_UNDEFINED };

  if (idx < 0)
  {
    __MOLD_PrintErrorAndDie_negativeIndex();
  }

  switch (box.type)
  {
    case VARIANT_ARRAY:
    {
      Buffer_t *buf = box.valueAsBufferPtr;
      Array_t  *array = (Array_t *) buf -> bytesPtr;

      if (idx < array -> itemsCnt)
      {
        if (array -> innerType == 0)
        {
          // Array of variants.
          memcpy(&rv, array -> items + idx, sizeof(Variant_t));
        }
        else
        {
          // Array of primitives.
          rv.type = array -> innerType;

          switch (array -> itemSize)
          {
            // TODO: Get it work with non-integer too.
            case 0: rv.valueAsInt64 = ((int8_t *)  array -> items)[idx]; break;
            case 1: rv.valueAsInt64 = ((int16_t *) array -> items)[idx]; break;
            case 2: rv.valueAsInt64 = ((int32_t *) array -> items)[idx]; break;
            case 3: rv.valueAsInt64 = ((int64_t *) array -> items)[idx]; break;
          }
        }
      }

      break;
    }

    case VARIANT_STRING:
    {
      if (box.flags & VARIANT_FLAG_ONE_CHARACTER)
      {
        // One character string - just return itself.
        rv = box;
      }
      else
      {
        // Multiple character string.
        Buffer_t *buf = box.valueAsBufferPtr;
        String_t *str = (String_t *) buf -> bytesPtr;

        if (idx < str -> length)
        {
          rv.type  = VARIANT_STRING;
          rv.flags = VARIANT_FLAG_ONE_CHARACTER;
          rv.value = str -> text[idx];
        }
      }

      break;
    }

    default:
    {
      __MOLD_PrintErrorAndDie_arrayOrStringExpected();
    }
  }

  return rv;
}

//
// Store one variant item in the array.
// x[i] = ...
//
// box   - array to modify (Variant_t) (IN)
// idx   - index, where to store item (uint32_t) (IN)
// value - value to store (Variant_t) (IN)
//

void __MOLD_VariantStoreAtIndex_variant(Variant_t *box, int32_t idx, Variant_t value)
{
  // TODO: Handle VARIANT_FLAG_DUPLICATE_ON_FIRST_WRITE.

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

  // Destroy old value if any.
  __MOLD_VariantDestroy(&array -> items[idx]);

  // Put new item into array slot
  array -> items[idx] = value;
}

void __MOLD_VariantStoreAtIndex_string(Variant_t *box, int32_t idx, Variant_t value)
{
  return __MOLD_VariantStoreAtIndex_variant(box, idx, value);
}

void __MOLD_VariantStoreAtIndex_int32(Variant_t *box, int32_t idx, int32_t value)
{
  Variant_t valueAsVariant;
  valueAsVariant.type = VARIANT_INTEGER;
  valueAsVariant.valueAsInt64 = value;
  __MOLD_VariantStoreAtIndex_variant(box, idx, valueAsVariant);
}

void __MOLD_VariantStoreAtIndex_int64(Variant_t *box, int32_t idx, int64_t value)
{
  Variant_t valueAsVariant;
  valueAsVariant.type = VARIANT_INTEGER;
  valueAsVariant.valueAsInt64 = value;
  __MOLD_VariantStoreAtIndex_variant(box, idx, valueAsVariant);
}

void __MOLD_VariantStoreAtIndex_float64(Variant_t *box, int32_t idx, float64_t value)
{
  Variant_t valueAsVariant;
  valueAsVariant.type = VARIANT_DOUBLE;
  valueAsVariant.valueAsFloat64 = value;
  __MOLD_VariantStoreAtIndex_variant(box, idx, valueAsVariant);
}

void __MOLD_VariantStoreAtIndex_bool32(Variant_t *box, int32_t idx, bool32_t value)
{
  Variant_t valueAsVariant;
  valueAsVariant.type  = VARIANT_BOOLEAN;
  valueAsVariant.value = value;
  __MOLD_VariantStoreAtIndex_variant(box, idx, valueAsVariant);
}

void __MOLD_ArrayInsertAfterLast(Variant_t box, Variant_t value)
{
  if (box.type != VARIANT_ARRAY)
  {
    __MOLD_PrintErrorAndDie_arrayOrStringExpected();
  }

  Buffer_t *buf   = box.valueAsBufferPtr;
  Array_t  *array = (Array_t *) buf -> bytesPtr;

  __MOLD_VariantStoreAtIndex_variant(&box, array -> itemsCnt, value);
}
