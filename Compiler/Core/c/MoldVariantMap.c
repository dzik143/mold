#include <stdio.h>
#include <string.h>

#include "MoldVariantArray.h"
#include "MoldVariantMap.h"
#include "MoldVariantObject.h"
#include "MoldMemory.h"
#include "MoldForDriver.h"

uint32_t __MOLD_hashDJB2(const char *str)
{
  // http://www.cse.yorku.ca/~oz/hash.html
  uint32_t hash = 5381;
  uint32_t c;

  while (c = *str++)
  {
    // hash * 33 + c
    hash = ((hash << 5) + hash) + c;
  }

  return hash;
}

Variant_t __MOLD_VariantMapCreateWithCustomSize(uint32_t bucketsCnt)
{
  Variant_t rv;

  Buffer_t *buf = __MOLD_MemoryAlloc(sizeof(Map_t) + bucketsCnt * sizeof(MapBucket_t));

  Map_t *map = (Map_t *) buf -> bytesPtr;

  map -> bucketsCnt = bucketsCnt;

  rv.type             = VARIANT_MAP;
  rv.flags            = 0;
  rv.valueAsBufferPtr = buf;

  return rv;
}

Variant_t __MOLD_VariantMapCreate()
{
  return __MOLD_VariantMapCreateWithCustomSize(VARIANT_MAP_DEFAULT_BUCKETS_CNT);
}

Variant_t __MOLD_VariantMapCreateFromInitList(Variant_t keys, Variant_t values)
{
  // TODO: Review it.
  // TODO: Clean up this mess.
  // TODO: Optimize it.
  Variant_t rv = __MOLD_VariantMapCreate();

  Variant_t oneKey;
  Variant_t oneValue;
  uint32_t idx;

  void _copyOneKeyValuePair()
  {
    oneValue = __MOLD_VariantLoadFromIndex(values, idx);
    __MOLD_VariantStoreAtKey_variant(&rv, oneKey, oneValue);
  }

  __MOLD_ForDriver_IndexesAndValuesInArray(
    (Array_t *) keys.valueAsBufferPtr -> bytesPtr,
    &idx,
    &oneKey,
    &_copyOneKeyValuePair
  );

  return rv;
}


Variant_t __MOLD_VariantLoadFromKey_variant(Variant_t box, Variant_t key)
{
  if ((box.type != VARIANT_MAP) && (box.type != VARIANT_OBJECT))
  {
    __MOLD_PrintErrorAndDie_mapOrObjectExpected();
  }

  if (key.type != VARIANT_STRING)
  {
    __MOLD_PrintErrorAndDie_stringKeyExpected();
  }

  Variant_t rv = {0};

  // Check for optimized one-character key.
  static String_t  TempOneCharBytes  = { 1, 0, 0 };
  static Buffer_t  TempOneCharHolder = { 10, -1, 0, &TempOneCharBytes };
  static Variant_t TempOneCharString = { VARIANT_STRING, 0, (uint64_t) &TempOneCharHolder };

  if (key.flags & VARIANT_FLAG_ONE_CHARACTER)
  {
    TempOneCharBytes.text[0] = key.valueAsUInt8;
    key = TempOneCharString;
  }

  // Decode map and string objects.
  Map_t    *map    = (Map_t *)    box.valueAsBufferPtr -> bytesPtr;
  String_t *string = (String_t *) key.valueAsBufferPtr -> bytesPtr;

  // Calculate key hash.
  uint32_t keyHash = __MOLD_hashDJB2(string -> text);

  // Find bucket.
  uint32_t bucketIdx = keyHash % map -> bucketsCnt;

  MapBucket_t *bucket = &(map -> buckets[bucketIdx]);

  if (bucket -> key.type != VARIANT_UNDEFINED)
  {
    // Bucket is occupied.
    // Compare key to detect collision.
    String_t *bucketKeyString = (String_t *) bucket -> key.valueAsBufferPtr -> bytesPtr;

    while ((bucket -> key.type != VARIANT_UNDEFINED) &&
           (strcmp(string -> text, bucketKeyString -> text) != 0))
    {
      // Collision - it's not a key, which we search for.
      // Open address - go to next bucket and try again.
      bucketIdx = (bucketIdx + 1) % map -> bucketsCnt;
      bucket = &(map -> buckets[bucketIdx]);

      // TODO: Clean up this mess.
      if (bucket -> key.type != VARIANT_UNDEFINED)
      {
        bucketKeyString = (String_t *) bucket -> key.valueAsBufferPtr -> bytesPtr;
      }
    }

    // Set result value.
    if (bucket -> key.type != VARIANT_UNDEFINED)
    {
      memcpy(&rv, &bucket -> value, sizeof(Variant_t));
    }
  }

  return rv;
}

Variant_t __MOLD_VariantLoadFromKey_string(Variant_t box, Variant_t key)
{
  return __MOLD_VariantLoadFromKey_variant(box, key);
}

void __MOLD_VariantStoreAtKey_variant(Variant_t *box, Variant_t key, Variant_t value)
{
  if ((box -> type != VARIANT_MAP) && (box -> type != VARIANT_OBJECT))
  {
    __MOLD_PrintErrorAndDie_mapOrObjectExpected();
  }

  if (key.type != VARIANT_STRING)
  {
    __MOLD_PrintErrorAndDie_stringKeyExpected();
  }

  // Decode map and string objects.
  Map_t    *map    = (Map_t *)    box -> valueAsBufferPtr -> bytesPtr;
  String_t *string = (String_t *) key.valueAsBufferPtr -> bytesPtr;

  // Calculate key hash.
  uint32_t keyHash = __MOLD_hashDJB2(string -> text);

  // Find bucket.
  uint32_t bucketIdx = keyHash % map -> bucketsCnt;

  MapBucket_t *bucket = &(map -> buckets[bucketIdx]);

  // Skip current bucket as long as:
  // - bucket is occupied,
  // - and bucket has already the same key as we're searching for.
  //
  // Otherwise:
  // - if bucket is free - we stop here, and put new key here from the scratch,
  // - if bucket has different key - we had collision and go on to next one.
  //
  // Note: See hash key collision algorithm: "open address".

  while ((bucket -> key.type != VARIANT_UNDEFINED) &&
         (!__MOLD_cmp_eq_string(key, bucket -> key)))
  {
    bucketIdx = (bucketIdx + 1) % map -> bucketsCnt;
    bucket = &(map -> buckets[bucketIdx]);
  }

  // Conditional: Set new key if bucket is filled for the first time.
  if (bucket -> key.type == VARIANT_UNDEFINED)
  {
    // Always copy original caller delivered key to keep one-char strings
    // wihout touch.
    bucket -> key = key;
    map -> bucketsUsedCnt++;

    // Updated pointers to first/last buckets for fast forEach loop.
    if (map -> firstBucket == NULL)
    {
      map -> firstBucket = bucket;
    }

    if (map -> lastBucket != NULL)
    {
      map -> lastBucket -> nextBucket = bucket;
    }

    map -> lastBucket = bucket;
  }

  // Always: set new value at bucket.
  memcpy(&bucket -> value, &value, sizeof(Variant_t));

  // Resize map if needed.
  if (map -> bucketsUsedCnt > map -> bucketsCnt / 2)
  {
    Variant_t newMap = __MOLD_VariantMapCreateWithCustomSize(map -> bucketsCnt * 2);

    MapBucket_t *bucket = map -> firstBucket;

    while (bucket != NULL)
    {
      __MOLD_VariantStoreAtKey_variant(&newMap, bucket -> key, bucket -> value);
      bucket = bucket -> nextBucket;
    }

    if (box -> type == VARIANT_OBJECT)
    {
      // TODO: Clean up this mess.
      // Clone vtable if object.
      ((Object_t *) (newMap.valueAsBufferPtr -> bytesPtr)) -> vtable =
      ((Object_t *) (map)) -> vtable;
    }

    // TODO: Simplify it.
    // TODO: Clean up this mess.
    // Swap buffer bytes.
    void *tmpBytesPtr = box -> valueAsBufferPtr -> bytesPtr;
    box -> valueAsBufferPtr -> bytesPtr = newMap.valueAsBufferPtr -> bytesPtr;
    newMap.valueAsBufferPtr -> bytesPtr = tmpBytesPtr;

    // Release old buffer.
    __MOLD_MemoryRelease(newMap.valueAsBufferPtr);
  }
}

void __MOLD_VariantStoreAtKey_string(Variant_t *box, Variant_t key, Variant_t value)
{
  __MOLD_VariantStoreAtKey_variant(box, key, value);
}

void __MOLD_VariantStoreAtKey_int32(Variant_t *box, Variant_t key, int32_t value)
{
  Variant_t valueAsVariant;
  valueAsVariant.type         = VARIANT_INTEGER;
  valueAsVariant.valueAsInt64 = value;
  __MOLD_VariantStoreAtKey_variant(box, key, valueAsVariant);
}

void __MOLD_VariantStoreAtKey_int64(Variant_t *box, Variant_t key, int64_t value)
{
  Variant_t valueAsVariant;
  valueAsVariant.type         = VARIANT_INTEGER;
  valueAsVariant.valueAsInt64 = value;
  __MOLD_VariantStoreAtKey_variant(box, key, valueAsVariant);
}

void __MOLD_VariantStoreAtKey_float64(Variant_t *box, Variant_t key, float64_t value)
{
  Variant_t valueAsVariant;
  valueAsVariant.type           = VARIANT_DOUBLE;
  valueAsVariant.valueAsFloat64 = value;
  __MOLD_VariantStoreAtKey_variant(box, key, valueAsVariant);
}

void __MOLD_VariantStoreAtKey_bool32(Variant_t *box, Variant_t key, bool32_t value)
{
  Variant_t valueAsVariant;
  valueAsVariant.type         = VARIANT_BOOLEAN;
  valueAsVariant.valueAsInt32 = value;
  __MOLD_VariantStoreAtKey_variant(box, key, valueAsVariant);
}
