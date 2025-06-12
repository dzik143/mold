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

#ifndef _MoldError_H
#define _MoldError_H

#include "MoldCore.h"

void __MOLD_Die(Variant_t msg);
void __MOLD_PrintErrorAndDie(const char *msg);
void __MOLD_InitExceptions();

void __MOLD_PrintErrorAndDie_generic();
void __MOLD_PrintErrorAndDie_integerExpected();
void __MOLD_PrintErrorAndDie_integerIndexExpected();
void __MOLD_PrintErrorAndDie_booleanExpected();
void __MOLD_PrintErrorAndDie_floatExpected();
void __MOLD_PrintErrorAndDie_stringKeyExpected();
void __MOLD_PrintErrorAndDie_stringExpected();
void __MOLD_PrintErrorAndDie_mapOrObjectExpected();
void __MOLD_PrintErrorAndDie_arrayExpected();
void __MOLD_PrintErrorAndDie_arrayOrStringExpected();
void __MOLD_PrintErrorAndDie_arrayStringOrMapExpected();
void __MOLD_PrintErrorAndDie_negativeIndex();
void __MOLD_PrintErrorAndDie_indexOutOfRange();
void __MOLD_PrintErrorAndDie_outOfMemory();
void __MOLD_PrintErrorAndDie_badType();
void __MOLD_PrintErrorAndDie_notImplemented();
void __MOLD_PrintErrorAndDie_implicitConversion();
void __MOLD_PrintErrorAndDie_notComparable();
void __MOLD_PrintErrorAndDie_divideByZero();
void __MOLD_PrintErrorAndDie_floatOverflow();
void __MOLD_PrintErrorAndDie_floatUnderflow();
void __MOLD_PrintErrorAndDie_notIterable();
void __MOLD_PrintErrorAndDie_nullMethodCalled();

#endif /* _Mold_Error_H */
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

#ifndef _MoldCore_H
#define _MoldCore_H

#include <stdint.h>
#include <stdlib.h>

#include "MoldMemory.h"

// -----------------------------------------------------------------------------
//                              Type definitions
// -----------------------------------------------------------------------------

typedef int32_t bool32_t;
typedef float   float32_t;
typedef double  float64_t;

typedef struct Variant
{
  uint32_t type;
  uint32_t flags;
  union
  {
    uint64_t  value;
    uint8_t   valueAsUInt8;
    int8_t    valueAsInt8;
    int32_t   valueAsInt32;
    int64_t   valueAsInt64;
    float32_t valueAsFloat32;
    float64_t valueAsFloat64;
    struct Buffer *valueAsBufferPtr;
  };
} Variant_t;

// -----------------------------------------------------------------------------
//                                 Constants
// -----------------------------------------------------------------------------

#define true  1
#define false 0

// Special cases - undefined and null.
#define VARIANT_UNDEFINED 0
#define VARIANT_NULL      1

// Primitives.
#define VARIANT_INTEGER   2
#define VARIANT_FLOAT     3
#define VARIANT_DOUBLE    4
#define VARIANT_STRING    5
#define VARIANT_BOOLEAN   6

// Complex containers.
#define VARIANT_ARRAY     7
#define VARIANT_MAP       8
#define VARIANT_OBJECT    9
#define VARIANT_TYPE_MAX  9

#define VARIANT_FLAG_DUPLICATE_ON_FIRST_WRITE 1
#define VARIANT_FLAG_ONE_CHARACTER            2

// -----------------------------------------------------------------------------
//                             Global variables
// -----------------------------------------------------------------------------

extern Variant_t argc;
extern Variant_t argv;
extern Variant_t __TrashBin;

// -----------------------------------------------------------------------------
//                Convert: create variant from primitives
// -----------------------------------------------------------------------------

Variant_t __MOLD_VariantCreateFrom_int32(int32_t x);
Variant_t __MOLD_VariantCreateFrom_int64(int64_t x);
Variant_t __MOLD_VariantCreateFrom_bool32(bool32_t x);
Variant_t __MOLD_VariantCreateFrom_float32(float32_t x);
Variant_t __MOLD_VariantCreateFrom_float64(float64_t x);

// -----------------------------------------------------------------------------
//                     Arithmetic: in32 vs int32
// -----------------------------------------------------------------------------

int32_t   __MOLD_neg_int32 (int32_t x);
int32_t   __MOLD_add_int32 (int32_t x, int32_t y);
int32_t   __MOLD_sub_int32 (int32_t x, int32_t y);
int32_t   __MOLD_mul_int32 (int32_t x, int32_t y);
int32_t   __MOLD_imul_int32(int32_t x, int32_t y);
float64_t __MOLD_div_int32 (int32_t x, int32_t y);
int32_t   __MOLD_idiv_int32(int32_t x, int32_t y);

// -----------------------------------------------------------------------------
//                     Arithmetic: int64 vs int64
// -----------------------------------------------------------------------------

int64_t   __MOLD_neg_int64 (int64_t x);
int64_t   __MOLD_add_int64 (int64_t x, int64_t y);
int64_t   __MOLD_sub_int64 (int64_t x, int64_t y);
int64_t   __MOLD_mul_int64 (int64_t x, int64_t y);
int64_t   __MOLD_imul_int64(int64_t x, int64_t y);
float64_t __MOLD_div_int64 (int64_t x, int64_t y);
int64_t   __MOLD_idiv_int64(int64_t x, int64_t y);

// -----------------------------------------------------------------------------
//                     Arithmetic: float64 vs float64
// -----------------------------------------------------------------------------

float64_t __MOLD_neg_float64 (float64_t x);
float64_t __MOLD_add_float64 (float64_t x, float64_t y);
float64_t __MOLD_sub_float64 (float64_t x, float64_t y);
float64_t __MOLD_mul_float64 (float64_t x, float64_t y);
float64_t __MOLD_imul_float64(float64_t x, float64_t y);
float64_t __MOLD_div_float64 (float64_t x, float64_t y);
int64_t   __MOLD_idiv_float64(float64_t x, float64_t y);

// -----------------------------------------------------------------------------
//                    Arithmetic: variant vs variant
// -----------------------------------------------------------------------------

Variant_t __MOLD_neg_variant (Variant_t x);
Variant_t __MOLD_add_variant (Variant_t x, Variant_t y);
Variant_t __MOLD_sub_variant (Variant_t x, Variant_t y);
Variant_t __MOLD_mul_variant (Variant_t x, Variant_t y);
Variant_t __MOLD_imul_variant(Variant_t x, Variant_t y);
Variant_t __MOLD_div_variant (Variant_t x, Variant_t y);
Variant_t __MOLD_idiv_variant(Variant_t x, Variant_t y);

// -----------------------------------------------------------------------------
//                         Compare: int32 vs int32
// -----------------------------------------------------------------------------

bool32_t __MOLD_cmp_eq_int32(int32_t x, int32_t y);
bool32_t __MOLD_cmp_ne_int32(int32_t x, int32_t y);
bool32_t __MOLD_cmp_lt_int32(int32_t x, int32_t y);
bool32_t __MOLD_cmp_gt_int32(int32_t x, int32_t y);
bool32_t __MOLD_cmp_le_int32(int32_t x, int32_t y);
bool32_t __MOLD_cmp_ge_int32(int32_t x, int32_t y);

// -----------------------------------------------------------------------------
//                         Compare: int64 vs int64
// -----------------------------------------------------------------------------

bool32_t __MOLD_cmp_eq_int64(int64_t x, int64_t y);
bool32_t __MOLD_cmp_ne_int64(int64_t x, int64_t y);
bool32_t __MOLD_cmp_lt_int64(int64_t x, int64_t y);
bool32_t __MOLD_cmp_gt_int64(int64_t x, int64_t y);
bool32_t __MOLD_cmp_le_int64(int64_t x, int64_t y);
bool32_t __MOLD_cmp_ge_int64(int64_t x, int64_t y);

// -----------------------------------------------------------------------------
//                       Compare: float64 vs float64
// -----------------------------------------------------------------------------

bool32_t __MOLD_cmp_eq_float64(float64_t x, float64_t y);
bool32_t __MOLD_cmp_ne_float64(float64_t x, float64_t y);
bool32_t __MOLD_cmp_lt_float64(float64_t x, float64_t y);
bool32_t __MOLD_cmp_gt_float64(float64_t x, float64_t y);
bool32_t __MOLD_cmp_le_float64(float64_t x, float64_t y);
bool32_t __MOLD_cmp_ge_float64(float64_t x, float64_t y);

// -----------------------------------------------------------------------------
//                        Compare: bool32 vs bool32
// -----------------------------------------------------------------------------

bool32_t __MOLD_cmp_eq_bool32(bool32_t x, bool32_t y);
bool32_t __MOLD_cmp_ne_bool32(bool32_t x, bool32_t y);

// -----------------------------------------------------------------------------
//                       Compare: variant vs variant
// -----------------------------------------------------------------------------

bool32_t __MOLD_cmp_eq_variant(Variant_t x, Variant_t y);
bool32_t __MOLD_cmp_ne_variant(Variant_t x, Variant_t y);
bool32_t __MOLD_cmp_lt_variant(Variant_t x, Variant_t y);
bool32_t __MOLD_cmp_gt_variant(Variant_t x, Variant_t y);
bool32_t __MOLD_cmp_le_variant(Variant_t x, Variant_t y);
bool32_t __MOLD_cmp_ge_variant(Variant_t x, Variant_t y);

// -----------------------------------------------------------------------------
//                       Cast variant into primitives
// -----------------------------------------------------------------------------

int32_t   __MOLD_VariantCastTo_int32  (Variant_t *x);
int64_t   __MOLD_VariantCastTo_int64  (Variant_t *x);
float32_t __MOLD_VariantCastTo_float32(Variant_t *x);
float64_t __MOLD_VariantCastTo_float64(Variant_t *x);
bool32_t  __MOLD_VariantCastTo_bool32 (Variant_t *x);

// -----------------------------------------------------------------------------
//                       Bitwise: variant vs variant
// -----------------------------------------------------------------------------

Variant_t __MOLD_Bitand(Variant_t x, Variant_t y);
Variant_t __MOLD_Bitor (Variant_t x, Variant_t y);
Variant_t __MOLD_Bitxor(Variant_t x, Variant_t y);

// -----------------------------------------------------------------------------
//                                    Utils
// -----------------------------------------------------------------------------

void __MOLD_Exit();

Variant_t __MOLD_Len(Variant_t x);
Variant_t __MOLD_SysCall(uint32_t id, ...);
Variant_t __MOLD_Typeof(Variant_t x);
Variant_t __MOLD_ParseInteger(Variant_t x);
Variant_t __MOLD_ParseFloat(Variant_t x);
Variant_t __MOLD_FileLoad(Variant_t path);

void __MOLD_VariantAddRef(Variant_t *x);
void __MOLD_VariantDestroy(Variant_t *x);

void __MOLD_InitArgv(int _argc, char **_argv);

Variant_t __MOLD_GetTypeId(Variant_t x);
void __MOLD_VariantMove(Variant_t *dst, Variant_t *src);

#endif /* _MoldCore_H */
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

#ifndef _MoldPrint_H
#define _MoldPrint_H

#include <stdio.h>
#include "MoldCore.h"

void __MOLD_PrintToFile_variant(FILE *f, Variant_t *x);

void __MOLD_VariantPrint(Variant_t x);
void __MOLD_Print_space();
void __MOLD_Print_EOL();

void __MOLD_Print_variant(Variant_t *x);
void __MOLD_Print_string(Variant_t x);
void __MOLD_Print_bool32(int32_t x);
void __MOLD_Print_int32(int32_t x);
void __MOLD_Print_int64(int64_t x);
void __MOLD_Print_float64(float64_t x);

#endif /* _MoldPrint_H */
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

#ifndef _MoldVariantString_H
#define _MoldVariantString_H

#include "MoldCore.h"

typedef struct String
{
  uint64_t length;
  char text[];
} String_t;

Variant_t __MOLD_VariantStringCreateFromCString(const char *text);

void __MOLD_VariantStringRelease(Variant_t *x);

void __MOLD_VariantStringJoin(Variant_t *, Variant_t *, Variant_t *);

bool32_t __MOLD_cmp_eq_string(Variant_t x, Variant_t y);
bool32_t __MOLD_cmp_ne_string(Variant_t x, Variant_t y);

Variant_t __MOLD_Str(Variant_t);
Variant_t __MOLD_SubStr(Variant_t x, Variant_t idx, Variant_t len);

Variant_t __MOLD_Ord(Variant_t x);
Variant_t __MOLD_Asc(Variant_t x);

#endif /* _MoldVariantString_H */
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

#ifndef _MoldVariantArray_H
#define _MoldVariantArray_H

#include "MoldCore.h"

// -----------------------------------------------------------------------------
//                    Type definition: array of variants
// -----------------------------------------------------------------------------

typedef struct Array
{
  uint32_t innerType;
  uint8_t itemSize;
  uint8_t reserved1;
  uint8_t reserved2;
  uint8_t reserved3;
  uint64_t itemsCnt;
  Variant_t items[];
} Array_t;

// -----------------------------------------------------------------------------
//                      Type definition: array of int8
// -----------------------------------------------------------------------------

typedef struct Array_int8
{
  uint32_t innerType;
  uint8_t itemSize;
  uint8_t reserved1;
  uint8_t reserved2;
  uint8_t reserved3;
  uint64_t itemsCnt;
  int8_t items[];
} Array_int8_t;

// -----------------------------------------------------------------------------
//                     Type definition: array of int16
// -----------------------------------------------------------------------------

typedef struct Array_int16
{
  uint32_t innerType;
  uint8_t itemSize;
  uint8_t reserved1;
  uint8_t reserved2;
  uint8_t reserved3;
  uint64_t itemsCnt;
  int16_t items[];
} Array_int16_t;

// -----------------------------------------------------------------------------
//                     Type definition: array of int32
// -----------------------------------------------------------------------------

typedef struct Array_int32
{
  uint32_t innerType;
  uint8_t itemSize;
  uint8_t reserved1;
  uint8_t reserved2;
  uint8_t reserved3;
  uint64_t itemsCnt;
  int32_t items[];
} Array_int32_t;

// -----------------------------------------------------------------------------
//                      Type definition: array of int64
// -----------------------------------------------------------------------------

typedef struct Array_int64
{
  uint32_t innerType;
  uint8_t itemSize;
  uint8_t reserved1;
  uint8_t reserved2;
  uint8_t reserved3;
  uint64_t itemsCnt;
  int64_t items[];
} Array_int64_t;

// -----------------------------------------------------------------------------
//                                  Functions
// -----------------------------------------------------------------------------

Variant_t __MOLD_VariantArrayCreate();
Variant_t __MOLD_VariantArrayCreateFromInitList(Variant_t initArray);

void __MOLD_VariantArrayRelease(Variant_t *x);

Variant_t __MOLD_VariantLoadFromIndex(Variant_t box, int32_t idx);

void __MOLD_VariantStoreAtIndex_variant(Variant_t *box, int32_t idx, Variant_t value);
void __MOLD_VariantStoreAtIndex_string (Variant_t *box, int32_t idx, Variant_t value);
void __MOLD_VariantStoreAtIndex_int32  (Variant_t *box, int32_t idx, int32_t value);
void __MOLD_VariantStoreAtIndex_int64  (Variant_t *box, int32_t idx, int64_t value);
void __MOLD_VariantStoreAtIndex_bool32 (Variant_t *box, int32_t idx, bool32_t value);
void __MOLD_VariantStoreAtIndex_float64(Variant_t *box, int32_t idx, float64_t value);

void __MOLD_ArrayInsertAfterLast(Variant_t box, Variant_t value);

#endif /* _MoldVariantArray_H */
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

uint32_t __MOLD_hashDJB2(Variant_t *x);

Variant_t __MOLD_VariantMapCreate();
Variant_t __MOLD_VariantMapCreateWithCustomSize(uint32_t bucketsCnt);
Variant_t __MOLD_VariantMapCreateFromInitList(Variant_t keys, Variant_t values);

void __MOLD_VariantMapRelease(Variant_t *x);

Variant_t __MOLD_VariantLoadFromKey_variant(Variant_t box, Variant_t key);
Variant_t __MOLD_VariantLoadFromKey_string(Variant_t box, Variant_t key);

void __MOLD_VariantStoreAtKey_variant(Variant_t *box, Variant_t key, Variant_t value);
void __MOLD_VariantStoreAtKey_string(Variant_t *box, Variant_t key, Variant_t value);
void __MOLD_VariantStoreAtKey_int32(Variant_t *box, Variant_t key, int32_t value);
void __MOLD_VariantStoreAtKey_int64(Variant_t *box, Variant_t key, int64_t value);
void __MOLD_VariantStoreAtKey_float64(Variant_t *box, Variant_t key, float64_t value);
void __MOLD_VariantStoreAtKey_bool32(Variant_t *box, Variant_t key, bool32_t value);

#endif /* _MoldVariantMap_H */
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

#ifndef _MOLD_ForDriver_
#define _MOLD_ForDriver_

#include "MoldCore.h"
#include "MoldVariantString.h"
#include "MoldVariantArray.h"
#include "MoldVariantMap.h"

typedef void (*LoopBodyCbProto)();

void __MOLD_ForDriver_IndexesAndValuesInArray(Array_t *array,
                                              uint32_t *iteratorIndex,
                                              Variant_t *iteratorValue,
                                              LoopBodyCbProto cb);

void __MOLD_ForDriver_IndexesAndValuesInString(Variant_t *box,
                                               uint32_t *iteratorIndex,
                                               Variant_t *iteratorValue,
                                               LoopBodyCbProto cb);

void __MOLD_ForDriver_IndexesAndValuesInArrayOrString(Variant_t *box,
                                                      void *iteratorIndexOrKey,
                                                      Variant_t *iteratorValue,
                                                      LoopBodyCbProto cb);

void __MOLD_ForDriver_KeysAndValuesInMap(Variant_t *box,
                                         Variant_t *iteratorKey,
                                         Variant_t *iteratorValue,
                                         LoopBodyCbProto cb);

void __MOLD_ForDriver_Generic(Variant_t *box, void *iteratorIndexOrKey,
                              Variant_t *iteratorValue, LoopBodyCbProto cb);

#endif /* _MOLD_ForDriver */
