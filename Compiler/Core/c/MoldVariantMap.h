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

#ifndef _MoldVariantMap_H
#define _MoldVariantMap_H

#include "MoldCore.h"

// -----------------------------------------------------------------------------
//                                  Defines
// -----------------------------------------------------------------------------

#define VARIANT_MAP_DEFAULT_BUCKETS_CNT 16

// -----------------------------------------------------------------------------
//                              Type definitions
// -----------------------------------------------------------------------------

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

// -----------------------------------------------------------------------------
//                                Functions
// -----------------------------------------------------------------------------

uint32_t __MOLD_hashDJB2(const Variant_t *x);

Variant_t __MOLD_VariantMapCreate();
Variant_t __MOLD_VariantMapCreateWithCustomSize(uint32_t bucketsCnt);

Variant_t __MOLD_VariantMapCreateFromInitList(const Variant_t *keys,
                                              const Variant_t *values);

void __MOLD_VariantMapRelease(Variant_t *x);

Variant_t __MOLD_VariantLoadFromKey_variant(Variant_t *box, Variant_t *key);
Variant_t __MOLD_VariantLoadFromKey_string(Variant_t *box, Variant_t *key);

void __MOLD_VariantStoreAtKey_variant(Variant_t *box, const Variant_t *key, const Variant_t *value);
void __MOLD_VariantStoreAtKey_string(Variant_t *box, const Variant_t *key, const Variant_t *value);
void __MOLD_VariantStoreAtKey_int32(Variant_t *box, const Variant_t *key, int32_t value);
void __MOLD_VariantStoreAtKey_int64(Variant_t *box, const Variant_t *key, int64_t value);
void __MOLD_VariantStoreAtKey_float64(Variant_t *box, const Variant_t *key, float64_t value);
void __MOLD_VariantStoreAtKey_bool32(Variant_t *box, const Variant_t *key, bool32_t value);

#endif /* _MoldVariantMap_H */
