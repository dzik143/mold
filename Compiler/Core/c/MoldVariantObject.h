#ifndef _MoldVariantObject_H
#define _MoldVariantObject_H

#include "MoldCore.h"
#include "MoldVariantMap.h"

typedef struct Object
{
  void **vtable;
  uint64_t bucketsUsedCnt;
  uint64_t bucketsCnt;

  MapBucket_t *firstBucket;
  MapBucket_t *lastBucket;

  MapBucket_t buckets[1];
} Object_t;

Variant_t __MOLD_VariantObjectCreate(void **vtable);

#endif /* _MoldVariantMap_H */
