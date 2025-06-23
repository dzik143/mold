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
#include "MoldVariantMap.h"
#include "MoldVariantObject.h"
#include "MoldMemory.h"
#include "MoldForDriver.h"

// #############################################################################
//                              Internal helpers
// #############################################################################

// ----------------------------------------------------------------------------
// Calculate string hash using DJB2 algorithm.
// http://www.cse.yorku.ca/~oz/hash.html
//
// Parameters:
//   x - string to hash (IN)
//
// RETURNS: hash value.
// ----------------------------------------------------------------------------

uint32_t __MOLD_hashDJB2(const Variant_t *x)
{
  ASSERT_VARIANT_PTR_STRING(x);

  uint32_t hash = 5381;
  uint32_t c;

  if (x -> flags & VARIANT_FLAG_ONE_CHARACTER)
  {
    // One character string.
    // One hard-coded cycle is needed.
    hash = ((hash << 5) + hash) + x -> valueAsUInt8;
  }
  else
  {
    // Multi character string.
    // Decode raw bytes buffer first.
    const char *str = ((String_t *) (x -> valueAsBufferPtr -> bytesPtr)) -> text;

    // Perform one cycle per each ascii character.
    while ((c = *str++))
    {
      // hash * 33 + c
      hash = ((hash << 5) + hash) + c;
    }
  }

  return hash;
}

// ----------------------------------------------------------------------------
// Internal helper to find bucket where given key should be stored.
// Used internally by load/store calls.
//
// If collision is detected function finds out the first available bucket
// using "open address" algorithm.
//
// Found bucket may be both occupied (set) or empty depending on map content.
//
// Parameters:
//   box{} - map to serach (IN)
//   key   - key string to find (IN)
//
// RETURNS: Pointer to bucket, where given key should be stored.
// ----------------------------------------------------------------------------

static MapBucket_t *__MOLD_FindMapBucketByKey(const Variant_t *box,
                                              const Variant_t *key)
{
  if ((box -> type != VARIANT_MAP) && (box -> type != VARIANT_OBJECT))
  {
    __MOLD_PrintErrorAndDie_mapOrObjectExpected();
  }

  if (key -> type != VARIANT_STRING)
  {
    __MOLD_PrintErrorAndDie_stringKeyExpected();
  }

  ASSERT_VARIANT_PTR_MAP_OR_OBJECT(box);
  ASSERT_VARIANT_PTR_STRING(key);

  // Decode map.
  Map_t *map = (Map_t *) box -> valueAsBufferPtr -> bytesPtr;

  assert(map != NULL);
  assert((uint64_t) map != 0xdeadbeef);

  // Calculate key hash.
  uint32_t keyHash = __MOLD_hashDJB2(key);

  // Find bucket.
  uint32_t bucketIdx = keyHash % map -> bucketsCnt;

  MapBucket_t *bucket = &(map -> buckets[bucketIdx]);

  // Skip current bucket as long as:
  // - bucket is occupied,
  // - and bucket has already different key as we're searching for.
  //
  // Stop condition for load:
  // - if bucket is free - we stop here, key not found,
  // - if bucket has the same key - matched, key is found.
  //
  // Stop condition for store:
  // - if bucket is free - we stop here, and put new key here from the scratch,
  // - if bucket has the same key - we had collision and go on to next one.
  //
  // Note: See hash key collision algorithm: "open address".

  while ((bucket -> key.type != VARIANT_UNDEFINED) &&
         (!__MOLD_cmp_eq_string(key, &bucket -> key)))
  {
    bucketIdx = (bucketIdx + 1) % map -> bucketsCnt;
    bucket    = &(map -> buckets[bucketIdx]);
  }

  ASSERT_VARIANT_PTR_MAP_OR_OBJECT(box);
  ASSERT_VARIANT_PTR_ANY(key);

  return bucket;
}

// ----------------------------------------------------------------------------
// Resize map twice if more than half of buckets are occupied.
// Do nothing otherwise.
//
// Parameters:
//   box{} - map resize (IN/OUT)
// ----------------------------------------------------------------------------

static void __MOLD_ResizeMapIfNeeded(Variant_t *box)
{
  ASSERT_VARIANT_PTR_MAP_OR_OBJECT(box);

  // Decode map.
  Map_t *map = (Map_t *) box -> valueAsBufferPtr -> bytesPtr;

  // Resize map if needed.
  if (map -> bucketsUsedCnt > map -> bucketsCnt / 2)
  {
    Variant_t newMap = __MOLD_VariantMapCreateWithCustomSize(map -> bucketsCnt * 2);

    MapBucket_t *bucket = map -> firstBucket;

    while (bucket != NULL)
    {
      __MOLD_VariantStoreAtKey_variant(&newMap, &bucket -> key, &bucket -> value);
      // Key and values are already referenced after previous insert.
      // Avoid increasing referencing twice and then memory leak.
      __MOLD_VariantDestroy(&bucket -> key);
      __MOLD_VariantDestroy(&bucket -> value);

      // Go to next bucket.
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

  ASSERT_VARIANT_PTR_MAP_OR_OBJECT(box);
}

// #############################################################################
//                              Create functions
// #############################################################################

// ----------------------------------------------------------------------------
// Create new empty map with desired capacity.
//
// Pseudocode:
//   ... = new map(size)
//
// Parameters:
//   bucketsCnt - initial number of buckets (IN).
//
// Returns:
//    New allocated map wrapped into Variant container.
// ----------------------------------------------------------------------------

Variant_t __MOLD_VariantMapCreateWithCustomSize(uint32_t bucketsCnt)
{
  Variant_t rv;

  Buffer_t *buf = __MOLD_MemoryAlloc(sizeof(Map_t) + bucketsCnt * sizeof(MapBucket_t));

  Map_t *map = (Map_t *) buf -> bytesPtr;

  map -> bucketsCnt = bucketsCnt;

  rv.type             = VARIANT_MAP;
  rv.flags            = 0;
  rv.valueAsBufferPtr = buf;

  ASSERT_VARIANT_PTR_MAP(&rv);

  return rv;
}

// ----------------------------------------------------------------------------
// Create new, empty map.
//
// Pseudo code:
//   ... = {}
//
// Returns:
//   New allocated map wrapped into Variant container.
// ----------------------------------------------------------------------------

Variant_t __MOLD_VariantMapCreate()
{
  return __MOLD_VariantMapCreateWithCustomSize(VARIANT_MAP_DEFAULT_BUCKETS_CNT);
}

// ----------------------------------------------------------------------------
// Create new map and init it using keys[] and values[] arrays.
//
// Pseudo code:
//   tmp = new map()
//   tmp{key[0]} = value{0}
//   tmp{key[1]} = value{1}
//   tmp{key[2]} = value{2}
//   ...
//   ... = tmp
//
// Parameters:
//   keys[]   - array of keys to insert (IN)
//   values[] - array of values to insert (IN)
//
// Returns:
//   New allocated map wrapped into Variant container.
// ----------------------------------------------------------------------------

Variant_t __MOLD_VariantMapCreateFromInitList(const Variant_t *keys,
                                              const Variant_t *values)
{
  ASSERT_VARIANT_PTR_ARRAY(keys);
  ASSERT_VARIANT_PTR_ARRAY(values);

  Variant_t rv = __MOLD_VariantMapCreate();

  Variant_t oneKey;
  Variant_t oneValue;
  uint32_t  idx;

  void _copyOneKeyValuePair()
  {
    oneValue = __MOLD_VariantLoadFromIndex(values, idx);
    __MOLD_VariantStoreAtKey_variant(&rv, &oneKey, &oneValue);
  }

  __MOLD_ForDriver_IndexesAndValuesInArray(
    (Array_t *) keys -> valueAsBufferPtr -> bytesPtr,
    &idx,
    &oneKey,
    &_copyOneKeyValuePair
  );

  ASSERT_VARIANT_PTR_ARRAY(keys);
  ASSERT_VARIANT_PTR_ARRAY(values);
  ASSERT_VARIANT_PTR_MAP(&rv);

  return rv;
}

// -----------------------------------------------------------------------------
// Release the maps and it's item recursively.
// This call tells, that the map is not needed anymore and may be freed.
//
// Pseudo code:
//   delete x
//
// Parameters:
//   x{} - map to be freed (IN).
// -----------------------------------------------------------------------------

void __MOLD_VariantMapRelease(Variant_t *x)
{
  ASSERT_VARIANT_PTR_MAP_OR_OBJECT(x);

  // Release array items if needed.
  if (x -> valueAsBufferPtr -> refCnt == 1)
  {
    // We're going to free the whole map.
    // Release stored keys and items first.
    Map_t *map = (Map_t *) (x -> valueAsBufferPtr -> bytesPtr);

    MapBucket_t *bucket = map -> firstBucket;

    while (bucket != NULL)
    {
      __MOLD_VariantDestroy(&bucket -> key);
      __MOLD_VariantDestroy(&bucket -> value);
      bucket = bucket -> nextBucket;
    }
  }

  // Release the map buffer itself.
  __MOLD_MemoryRelease(x -> valueAsBufferPtr);

  x -> type = VARIANT_UNDEFINED;
}

// #############################################################################
//                           Load from key functions
// #############################################################################

// ----------------------------------------------------------------------------
// Load value stored at given key.
//
// Pseudo code:
//   value = box{key}
//
// Parameters:
//   box{} - map where we searching for key (IN)
//   key   - key to find (IN)
//
// Returns:
//   Value stored at key.
// ----------------------------------------------------------------------------

Variant_t __MOLD_VariantLoadFromKey_variant(Variant_t *box,
                                            Variant_t *key)
{
  ASSERT_VARIANT_PTR_MAP_OR_OBJECT(box);
  ASSERT_VARIANT_PTR_STRING(key);

  Variant_t rv = { VARIANT_UNDEFINED };

  // Find bucket.
  MapBucket_t *bucket = __MOLD_FindMapBucketByKey(box, key);

  // Load bucket value if key is found.
  if (bucket -> key.type != VARIANT_UNDEFINED)
  {
    memcpy(&rv, &bucket -> value, sizeof(Variant_t));

    // Increase reference counter for just loaded item.
    __MOLD_VariantAddRef(&rv);
  }

  ASSERT_VARIANT_PTR_MAP_OR_OBJECT(box);
  ASSERT_VARIANT_PTR_STRING(key);
  ASSERT_VARIANT_PTR_ANY(&rv);

  return rv;
}

// ----------------------------------------------------------------------------
// Load value stored at given key.
//
// Pseudo code:
//   ... = box{key}
//
// Parameters:
//   box{} - map where we searching for key (IN)
//   key   - key to find (IN)
//
// Returns:
//   - value stored at key if found,
//   - undefined variant otherwise.
// ----------------------------------------------------------------------------

Variant_t __MOLD_VariantLoadFromKey_string(Variant_t *box, Variant_t *key)
{
  return __MOLD_VariantLoadFromKey_variant(box, key);
}

// #############################################################################
//                           Store at key functions
// #############################################################################

// ----------------------------------------------------------------------------
// Store any value at given key.
//
// Pseudo code:
//   box{key} = value
//
// Parameters:
//   box{} - map, which we're going to modify (IN)
//   key   - string key, where we want to store value (IN)
//   value - value to store (IN)
// ----------------------------------------------------------------------------

void __MOLD_VariantStoreAtKey_variant(Variant_t *box,
                                      const Variant_t *key,
                                      const Variant_t *value)
{
  ASSERT_VARIANT_PTR_MAP_OR_OBJECT(box);
  ASSERT_VARIANT_PTR_STRING(key);
  ASSERT_VARIANT_PTR_ANY(value);

  // Increase reference counter for the new stored value.
  __MOLD_VariantAddRef(value);

  // Find bucket.
  MapBucket_t *bucket = __MOLD_FindMapBucketByKey(box, key);

  // Conditional: Set new key if bucket is filled for the first time.
  if (bucket -> key.type == VARIANT_UNDEFINED)
  {
    // Set new key.
    bucket -> key = *key;

    // Increase reference counter for the key.
    __MOLD_VariantAddRef(key);

    // Decode map.
    Map_t *map = (Map_t *) box -> valueAsBufferPtr -> bytesPtr;

    // Count number of items stored in the map.
    map -> bucketsUsedCnt++;

    // Updated pointers to first/last buckets for forEach loops.
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
  else
  {
    // Destroy previous value.
    __MOLD_VariantDestroy(&bucket -> value);
  }

  // Always: set new value at bucket.
  memcpy(&(bucket -> value), value, sizeof(Variant_t));

  // Resize map if needed.
  __MOLD_ResizeMapIfNeeded(box);

  ASSERT_VARIANT_PTR_MAP_OR_OBJECT(box);
  ASSERT_VARIANT_PTR_STRING(key);
  ASSERT_VARIANT_PTR_ANY(value);
}

// ----------------------------------------------------------------------------
// Store string value at given key.
//
// Pseudo code:
//   box{key} = 'text'
//
// Parameters:
//   box{} - map, which we're going to modify (IN)
//   key   - string key, where we want to store value (IN)
//   value - string value to store (IN)
// ----------------------------------------------------------------------------

void __MOLD_VariantStoreAtKey_string(Variant_t *box,
                                     const Variant_t *key,
                                     const Variant_t *value)
{
  __MOLD_VariantStoreAtKey_variant(box, key, value);
}

// ----------------------------------------------------------------------------
// Store int32 value at given key.
//
// Pseudo code:
//   box{key} = <32-bit integer>
//
// Parameters:
//   box{} - map, which we're going to modify (IN)
//   key   - string key, where we want to store value (IN)
//   value - int32 value to store (IN)
// ----------------------------------------------------------------------------

void __MOLD_VariantStoreAtKey_int32(Variant_t *box,
                                    const Variant_t *key,
                                    int32_t value)
{
  Variant_t valueAsVariant = { type: VARIANT_INTEGER, valueAsInt64: value, flags: 0 };
  __MOLD_VariantStoreAtKey_variant(box, key, &valueAsVariant);
}

// ----------------------------------------------------------------------------
// Store int64 value at given key.
//
// Pseudo code:
//   box{key} = <64-bit integer>
//
// Parameters:
//   box{} - map, which we're going to modify (IN)
//   key   - string key, where we want to store value (IN)
//   value - int64 value to store (IN)
// ----------------------------------------------------------------------------

void __MOLD_VariantStoreAtKey_int64(Variant_t *box,
                                    const Variant_t *key,
                                    int64_t value)
{
  Variant_t valueAsVariant = { type: VARIANT_INTEGER, valueAsInt64: value, flags: 0 };
  __MOLD_VariantStoreAtKey_variant(box, key, &valueAsVariant);
}

// ----------------------------------------------------------------------------
// Store float64 value at given key.
//
// Pseudo code:
//   box{key} = 3.14
//
// Parameters:
//   box{} - map, which we're going to modify (IN)
//   key   - string key, where we want to store value (IN)
//   value - int64 value to store (IN)
// ----------------------------------------------------------------------------

void __MOLD_VariantStoreAtKey_float64(Variant_t *box,
                                      const Variant_t *key,
                                      float64_t value)
{
  Variant_t valueAsVariant = { type: VARIANT_DOUBLE, valueAsFloat64: value, flags: 0 };
  __MOLD_VariantStoreAtKey_variant(box, key, &valueAsVariant);
}

// ----------------------------------------------------------------------------
// Store bool32 value at given key.
//
// Pseudo code:
//   box{key} = true
//
// Parameters:
//   box{} - map, which we're going to modify (IN)
//   key   - string key, where we want to store value (IN)
//   value - bool32 value to store (IN)
// ----------------------------------------------------------------------------

void __MOLD_VariantStoreAtKey_bool32(Variant_t *box,
                                     const Variant_t *key,
                                     bool32_t value)
{
  Variant_t valueAsVariant = { type: VARIANT_BOOLEAN, valueAsInt64: value, flags: 0 };
  __MOLD_VariantStoreAtKey_variant(box, key, &valueAsVariant);
}
