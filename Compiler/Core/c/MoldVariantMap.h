#ifndef _MoldVariantMap_H
#define _MoldVariantMap_H

#include "MoldCore.h"

#define VARIANT_MAP_DEFAULT_BUCKETS_CNT 16

typedef struct MapBucket
{
  Variant_t key;
  Variant_t value;
  struct MapBucket *nextBucket;
} MapBucket_t;

typedef struct Map
{
  uint64_t reserved;
  uint64_t bucketsUsedCnt;
  uint64_t bucketsCnt;

  MapBucket_t *firstBucket;
  MapBucket_t *lastBucket;
  MapBucket_t buckets[];
} Map_t;

Variant_t __MOLD_VariantMapCreate();
Variant_t __MOLD_VariantMapCreateFromInitList(Variant_t keys, Variant_t values);

Variant_t __MOLD_VariantLoadFromKey_variant(Variant_t box, Variant_t key);
Variant_t __MOLD_VariantLoadFromKey_string(Variant_t box, Variant_t key);

void __MOLD_VariantStoreAtKey_variant(Variant_t *box, Variant_t key, Variant_t value);
void __MOLD_VariantStoreAtKey_string(Variant_t *box, Variant_t key, Variant_t value);
void __MOLD_VariantStoreAtKey_int32(Variant_t *box, Variant_t key, int32_t value);
void __MOLD_VariantStoreAtKey_int64(Variant_t *box, Variant_t key, int64_t value);
void __MOLD_VariantStoreAtKey_float64(Variant_t *box, Variant_t key, float64_t value);
void __MOLD_VariantStoreAtKey_bool32(Variant_t *box, Variant_t key, bool32_t value);

uint32_t __MOLD_hashDJB2(Variant_t *x);

#endif /* _MoldVariantMap_H */
