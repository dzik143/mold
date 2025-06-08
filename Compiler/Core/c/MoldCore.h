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
Variant_t __MOLD_Bitnot(Variant_t x);

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
