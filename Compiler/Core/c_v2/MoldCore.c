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
#include <stdlib.h>
#include <string.h>
#include <stdarg.h>
#include <inttypes.h>
#include <time.h>
#include <windows.h>

#include "MoldCore.h"
#include "MoldError.h"
#include "MoldForDriver.h"
#include "MoldVariantString.h"
#include "memory/MoldString.h"
#include "MoldPrint.h"

// -----------------------------------------------------------------------------
//                             Global variables
// -----------------------------------------------------------------------------

Variant_t argc       = { VARIANT_UNDEFINED };
Variant_t argv       = { VARIANT_UNDEFINED };
Variant_t __TrashBin = { VARIANT_UNDEFINED };

// Custom stack to allocatable variant vars.
static Variant_t __MOLD_Stack[MOLD_DEFAULT_STACK_SIZE];
Variant_t *__MOLD_StackPtr = &__MOLD_Stack[MOLD_DEFAULT_STACK_SIZE - 1];

// -----------------------------------------------------------------------------
//                Convert: create variant from primitives
// -----------------------------------------------------------------------------

Variant_t __MOLD_VariantCreateFrom_int32(int32_t x)
{
  Variant_t rv = { type: VARIANT_INTEGER, valueAsInt64: x, flags: 0 };
  return rv;
}

Variant_t __MOLD_VariantCreateFrom_int64(int64_t x)
{
  Variant_t rv = { type: VARIANT_INTEGER, valueAsInt64: x, flags: 0 };
  return rv;
}

Variant_t __MOLD_VariantCreateFrom_bool32(bool32_t x)
{
  Variant_t rv = { type: VARIANT_BOOLEAN, valueAsInt64: x, flags: 0 };
  return rv;
}

Variant_t __MOLD_VariantCreateFrom_float32(float32_t x)
{
  Variant_t rv = { type: VARIANT_FLOAT, valueAsFloat32: x, flags: 0 };
  return rv;
}

Variant_t __MOLD_VariantCreateFrom_float64(float64_t x)
{
  Variant_t rv = { type: VARIANT_DOUBLE, valueAsFloat64: x, flags: 0 };
  return rv;
}

// -----------------------------------------------------------------------------
//                    Assign: apply new value
// -----------------------------------------------------------------------------

void __MOLD_VariantAssign_int32(Variant_t *rv, int32_t x)
{
  __MOLD_VariantDestroy(rv);
  rv -> type         = VARIANT_INTEGER;
  rv -> valueAsInt64 = x;
  rv -> flags        = 0;
}

void __MOLD_VariantAssign_int64(Variant_t *rv, int64_t x)
{
  __MOLD_VariantDestroy(rv);
  rv -> type         = VARIANT_INTEGER;
  rv -> valueAsInt64 = x;
  rv -> flags        = 0;
}

void __MOLD_VariantAssign_bool32(Variant_t *rv, bool32_t x)
{
  __MOLD_VariantDestroy(rv);
  rv -> type         = VARIANT_BOOLEAN;
  rv -> valueAsInt32 = x;
  rv -> flags        = 0;
}

void __MOLD_VariantAssign_float32(Variant_t *rv, float32_t x)
{
  __MOLD_VariantDestroy(rv);

  rv -> type           = VARIANT_FLOAT;
  rv -> valueAsFloat32 = x;
  rv -> flags          = 0;
}

void __MOLD_VariantAssign_float64(Variant_t *rv, float64_t x)
{
  __MOLD_VariantDestroy(rv);

  rv -> type           = VARIANT_DOUBLE;
  rv -> valueAsFloat64 = x;
  rv -> flags          = 0;
}

// -----------------------------------------------------------------------------
//                     Arithmetic: in32 vs int32
// -----------------------------------------------------------------------------

int32_t   __MOLD_neg_int32 (int32_t x )           { return - x; }
int32_t   __MOLD_add_int32 (int32_t x, int32_t y) { return x + y; };
int32_t   __MOLD_sub_int32 (int32_t x, int32_t y) { return x - y; };
int32_t   __MOLD_mul_int32 (int32_t x, int32_t y) { return x * y; };
int32_t   __MOLD_imul_int32(int32_t x, int32_t y) { return x * y; };
float64_t __MOLD_div_int32 (int32_t x, int32_t y) { return (float64_t) x / y; };
int32_t   __MOLD_idiv_int32(int32_t x, int32_t y) { return x / y; };

// -----------------------------------------------------------------------------
//                     Arithmetic: int64 vs int64
// -----------------------------------------------------------------------------

int64_t   __MOLD_neg_int64 (int64_t x ) { return - x; }
int64_t   __MOLD_add_int64 (int64_t x, int64_t y) { return x + y; };
int64_t   __MOLD_sub_int64 (int64_t x, int64_t y) { return x - y; };
int64_t   __MOLD_mul_int64 (int64_t x, int64_t y) { return x * y; };
int64_t   __MOLD_imul_int64(int64_t x, int64_t y) { return x * y; };
float64_t __MOLD_div_int64 (int64_t x, int64_t y) { return (float64_t) x / y; };
int64_t   __MOLD_idiv_int64(int64_t x, int64_t y) { return x / y; };

// -----------------------------------------------------------------------------
//                     Arithmetic: float64 vs float64
// -----------------------------------------------------------------------------

float64_t __MOLD_neg_float64 (float64_t x )             { return - x; }
float64_t __MOLD_add_float64 (float64_t x, float64_t y) { return x + y; };
float64_t __MOLD_sub_float64 (float64_t x, float64_t y) { return x - y; };
float64_t __MOLD_mul_float64 (float64_t x, float64_t y) { return x * y; };
float64_t __MOLD_imul_float64(float64_t x, float64_t y) { return x * y; };
float64_t __MOLD_div_float64 (float64_t x, float64_t y) { return x / y; };
int64_t   __MOLD_idiv_float64(float64_t x, float64_t y) { return (int64_t) (x / y); };

// -----------------------------------------------------------------------------
//                    Arithmetic: variant vs variant
// -----------------------------------------------------------------------------

void __MOLD_negAndAssign_variant(Variant_t *rv, const Variant_t *x)
{
  ASSERT_VARIANT_PTR_ANY(rv);
  ASSERT_VARIANT_PTR_ANY(x);

  __MOLD_VariantDestroy(rv);

  rv -> type  = x -> type;
  rv -> flags = 0;

  switch (x -> type)
  {
    case VARIANT_INTEGER: { rv -> valueAsInt64   = -x -> valueAsInt64; break; }
    case VARIANT_FLOAT:   { rv -> valueAsFloat32 = -x -> valueAsFloat32; break; }
    case VARIANT_DOUBLE:  { rv -> valueAsFloat64 = -x -> valueAsFloat64; break; }

    default:
    {
      __MOLD_PrintErrorAndDie_badType();
    }
  }
}

void __MOLD_addAndAssign_variant(Variant_t *rv, const Variant_t *x, const Variant_t *y)
{
  ASSERT_VARIANT_PTR_ANY(rv);
  ASSERT_VARIANT_PTR_ANY(x);
  ASSERT_VARIANT_PTR_ANY(y);

  if (x -> type != y -> type)
  {
    __MOLD_PrintErrorAndDie_badType();
  }

  __MOLD_VariantDestroy(rv);

  rv -> type  = x -> type;
  rv -> flags = 0;

  switch (x -> type)
  {
    case VARIANT_INTEGER: { rv -> valueAsInt64   = x -> valueAsInt64   + y -> valueAsInt64; break; }
    case VARIANT_FLOAT:   { rv -> valueAsFloat32 = x -> valueAsFloat32 + y -> valueAsFloat32; break; }
    case VARIANT_DOUBLE:  { rv -> valueAsFloat64 = x -> valueAsFloat64 + y -> valueAsFloat64; break; }

    default:
    {
      __MOLD_PrintErrorAndDie_badType();
    }
  }
}

void __MOLD_subAndAssign_variant(Variant_t *rv, const Variant_t *x, const Variant_t *y)
{
  ASSERT_VARIANT_PTR_ANY(rv);
  ASSERT_VARIANT_PTR_ANY(x);
  ASSERT_VARIANT_PTR_ANY(y);

  if (x -> type != y -> type)
  {
    __MOLD_PrintErrorAndDie_badType();
  }

  __MOLD_VariantDestroy(rv);

  rv -> type  = x -> type;
  rv -> flags = 0;

  switch (x -> type)
  {
    case VARIANT_INTEGER: { rv -> valueAsInt64   = x -> valueAsInt64   - y -> valueAsInt64; break; }
    case VARIANT_FLOAT:   { rv -> valueAsFloat32 = x -> valueAsFloat32 - y -> valueAsFloat32; break; }
    case VARIANT_DOUBLE:  { rv -> valueAsFloat64 = x -> valueAsFloat64 - y -> valueAsFloat64; break; }

    default:
    {
      __MOLD_PrintErrorAndDie_badType();
    }
  }
}

void __MOLD_mulAndAssign_variant(Variant_t *rv, const Variant_t *x, const Variant_t *y)
{
  ASSERT_VARIANT_PTR_ANY(rv);
  ASSERT_VARIANT_PTR_ANY(x);
  ASSERT_VARIANT_PTR_ANY(y);

  if (x -> type != y -> type)
  {
    __MOLD_PrintErrorAndDie_badType();
  }

  __MOLD_VariantDestroy(rv);

  rv -> type  = x -> type;
  rv -> flags = 0;

  switch (x -> type)
  {
    case VARIANT_INTEGER: { rv -> valueAsInt64   = x -> valueAsInt64   * y -> valueAsInt64; break; }
    case VARIANT_FLOAT:   { rv -> valueAsFloat32 = x -> valueAsFloat32 * y -> valueAsFloat32; break; }
    case VARIANT_DOUBLE:  { rv -> valueAsFloat64 = x -> valueAsFloat64 * y -> valueAsFloat64; break; }

    default:
    {
      __MOLD_PrintErrorAndDie_badType();
    }
  }
}

void __MOLD_imulAndAssign_variant(Variant_t *rv, const Variant_t *x, const Variant_t *y)
{
  __MOLD_mulAndAssign_variant(rv, x, y);
}

void __MOLD_divAndAssign_variant(Variant_t *rv, const Variant_t *x, const Variant_t *y)
{
  ASSERT_VARIANT_PTR_ANY(rv);
  ASSERT_VARIANT_PTR_ANY(x);
  ASSERT_VARIANT_PTR_ANY(y);

  if (x -> type != y -> type)
  {
    __MOLD_PrintErrorAndDie_badType();
  }

  __MOLD_VariantDestroy(rv);

  rv -> type  = VARIANT_DOUBLE;
  rv -> flags = 0;

  float64_t xValue = 0.0;
  float64_t yValue = 0.0;

  switch (x -> type)
  {
    case VARIANT_INTEGER: { xValue = (float64_t) x -> valueAsInt64; break; }
    case VARIANT_FLOAT:   { xValue = (float64_t) x -> valueAsFloat32; break; }
    case VARIANT_DOUBLE:  { xValue = x -> valueAsFloat64; break; }

    default:
    {
      __MOLD_PrintErrorAndDie_badType();
    }
  }

  switch (y -> type)
  {
    case VARIANT_INTEGER: { yValue = (float64_t) y -> valueAsInt64; break; }
    case VARIANT_FLOAT:   { yValue = (float64_t) y -> valueAsFloat32; break; }
    case VARIANT_DOUBLE:  { yValue = y -> valueAsFloat64; break; }

    default:
    {
      __MOLD_PrintErrorAndDie_badType();
    }
  }

  rv -> valueAsFloat64 = xValue / yValue;
}

void __MOLD_idivAndAssign_variant(Variant_t *rv, const Variant_t *x, const Variant_t *y)
{
  ASSERT_VARIANT_PTR_ANY(rv);
  ASSERT_VARIANT_PTR_ANY(x);
  ASSERT_VARIANT_PTR_ANY(y);

  if (x -> type != y -> type)
  {
    __MOLD_PrintErrorAndDie_badType();
  }

  __MOLD_VariantDestroy(rv);

  rv -> type  = VARIANT_INTEGER;
  rv -> flags = 0;

  switch (x -> type)
  {
    case VARIANT_INTEGER: { rv -> value = x -> valueAsInt64 / y -> valueAsInt64; break; }
    case VARIANT_FLOAT:   { rv -> value = (int64_t) (x -> valueAsFloat32 / y -> valueAsFloat32); break; }
    case VARIANT_DOUBLE:  { rv -> value = (int64_t) (x -> valueAsFloat64 / y -> valueAsFloat64); break; }

    default:
    {
      __MOLD_PrintErrorAndDie_badType();
    }
  }
}

Variant_t __MOLD_neg_variant(const Variant_t *x) {
  Variant_t rv = { 0 };
  __MOLD_negAndAssign_variant(&rv, x);
  return rv;
}

Variant_t __MOLD_add_variant(const Variant_t *x, const Variant_t *y) {
  Variant_t rv = { 0 };
  __MOLD_addAndAssign_variant(&rv, x, y);
  return rv;
}

Variant_t __MOLD_sub_variant(const Variant_t *x, const Variant_t *y) {
  Variant_t rv = { 0 };
  __MOLD_subAndAssign_variant(&rv, x, y);
  return rv;
}

Variant_t __MOLD_mul_variant(const Variant_t *x, const Variant_t *y) {
  Variant_t rv = { 0 };
  __MOLD_mulAndAssign_variant(&rv, x, y);
  return rv;
}

Variant_t __MOLD_imul_variant(const Variant_t *x, const Variant_t *y) {
  Variant_t rv = { 0 };
  __MOLD_imulAndAssign_variant(&rv, x, y);
  return rv;
}

Variant_t __MOLD_div_variant (const Variant_t *x, const Variant_t *y) {
  Variant_t rv = { 0 };
  __MOLD_divAndAssign_variant(&rv, x, y);
  return rv;
}

Variant_t __MOLD_idiv_variant(const Variant_t *x, const Variant_t *y) {
  Variant_t rv = { 0 };
  __MOLD_idivAndAssign_variant(&rv, x, y);
  return rv;
}

// -----------------------------------------------------------------------------
//                         Compare: int32 vs int32
// -----------------------------------------------------------------------------

bool32_t __MOLD_cmp_eq_int32(int32_t x, int32_t y) { return x == y; }
bool32_t __MOLD_cmp_ne_int32(int32_t x, int32_t y) { return x != y; }
bool32_t __MOLD_cmp_lt_int32(int32_t x, int32_t y) { return x < y; }
bool32_t __MOLD_cmp_gt_int32(int32_t x, int32_t y) { return x > y; }
bool32_t __MOLD_cmp_le_int32(int32_t x, int32_t y) { return x <= y; }
bool32_t __MOLD_cmp_ge_int32(int32_t x, int32_t y) { return x >= y; }

// -----------------------------------------------------------------------------
//                         Compare: int64 vs int64
// -----------------------------------------------------------------------------

bool32_t __MOLD_cmp_eq_int64(int64_t x, int64_t y) { return x == y; }
bool32_t __MOLD_cmp_ne_int64(int64_t x, int64_t y) { return x != y; }
bool32_t __MOLD_cmp_lt_int64(int64_t x, int64_t y) { return x < y; }
bool32_t __MOLD_cmp_gt_int64(int64_t x, int64_t y) { return x > y; }
bool32_t __MOLD_cmp_le_int64(int64_t x, int64_t y) { return x <= y; }
bool32_t __MOLD_cmp_ge_int64(int64_t x, int64_t y) { return x >= y; }

// -----------------------------------------------------------------------------
//                       Compare: float64 vs float64
// -----------------------------------------------------------------------------

bool32_t __MOLD_cmp_eq_float64(float64_t x, float64_t y) { return x == y; }
bool32_t __MOLD_cmp_ne_float64(float64_t x, float64_t y) { return x != y; }
bool32_t __MOLD_cmp_lt_float64(float64_t x, float64_t y) { return x < y; }
bool32_t __MOLD_cmp_gt_float64(float64_t x, float64_t y) { return x > y; }
bool32_t __MOLD_cmp_le_float64(float64_t x, float64_t y) { return x <= y; }
bool32_t __MOLD_cmp_ge_float64(float64_t x, float64_t y) { return x >= y; }

// -----------------------------------------------------------------------------
//                        Compare: bool32 vs bool32
// -----------------------------------------------------------------------------

bool32_t __MOLD_cmp_eq_bool32(bool32_t x, bool32_t y) { return x == y; }
bool32_t __MOLD_cmp_ne_bool32(bool32_t x, bool32_t y) { return x != y; }

// -----------------------------------------------------------------------------
//                       Compare: variant vs variant
// -----------------------------------------------------------------------------

bool32_t __MOLD_cmp_eq_variant(const Variant_t *x, const Variant_t *y)
{
  bool32_t rv = 0;

  if (x -> type != y -> type)
  {
    __MOLD_PrintErrorAndDie_notComparable();
  }

  if (x -> type == VARIANT_STRING)
  {
    // Possible improvement: Avoid type case?
    rv = __MOLD_cmp_eq_string((Variant_t *) x, y);
  }
  else
  {
    rv = (x -> value == y -> value);
  }

  return rv;
}

bool32_t __MOLD_cmp_ne_variant(const Variant_t *x, const Variant_t *y)
{
  return !__MOLD_cmp_eq_variant(x, y);
}

bool32_t __MOLD_cmp_lt_variant(const Variant_t *x, const Variant_t *y)
{
  bool32_t rv = 0;

  if (x -> type != y -> type)
  {
    __MOLD_PrintErrorAndDie_implicitConversion();
  }

  switch (x -> type)
  {
    case VARIANT_INTEGER: { rv = x -> valueAsInt64   < y -> valueAsInt64;   break; }
    case VARIANT_FLOAT:   { rv = x -> valueAsFloat32 < y -> valueAsFloat32; break; }
    case VARIANT_DOUBLE:  { rv = x -> valueAsFloat64 < y -> valueAsFloat64; break; }

    default:
    {
      __MOLD_PrintErrorAndDie_notComparable();
    }
  }

  return rv;
}

bool32_t __MOLD_cmp_gt_variant(const Variant_t *x, const Variant_t *y)
{
  return !__MOLD_cmp_le_variant(x, y);
}

bool32_t __MOLD_cmp_le_variant(const Variant_t *x, const Variant_t *y)
{
  bool32_t rv = 0;

  if (x -> type != y -> type)
  {
    __MOLD_PrintErrorAndDie_implicitConversion();
  }

  switch (x -> type)
  {
    case VARIANT_INTEGER: { rv = x -> valueAsInt64   <= y -> valueAsInt64;   break; }
    case VARIANT_FLOAT:   { rv = x -> valueAsFloat32 <= y -> valueAsFloat32; break; }
    case VARIANT_DOUBLE:  { rv = x -> valueAsFloat64 <= y -> valueAsFloat64; break; }

    default:
    {
      __MOLD_PrintErrorAndDie_notComparable();
    }
  }

  return rv;
}

bool32_t __MOLD_cmp_ge_variant(const Variant_t *x, const Variant_t *y)
{
  return !__MOLD_cmp_lt_variant(x, y);
}

// -----------------------------------------------------------------------------
//                       Cast variant into primitives
// -----------------------------------------------------------------------------

int32_t __MOLD_VariantCastTo_int32(Variant_t *x)
{
  if (x -> type != VARIANT_INTEGER)
  {
    __MOLD_PrintErrorAndDie_integerExpected();
  }

  return x -> valueAsInt32;
}

int64_t __MOLD_VariantCastTo_int64(Variant_t *x)
{
  if (x -> type != VARIANT_INTEGER)
  {
    __MOLD_PrintErrorAndDie_integerExpected();
  }

  return x -> valueAsInt64;
}

float32_t __MOLD_VariantCastTo_float32(Variant_t *x)
{
  if (x -> type != VARIANT_FLOAT)
  {
    __MOLD_PrintErrorAndDie_floatExpected();
  }

  return x -> valueAsFloat32;
}

float64_t __MOLD_VariantCastTo_float64(Variant_t *x)
{
  if (x -> type != VARIANT_DOUBLE)
  {
    __MOLD_PrintErrorAndDie_floatExpected();
  }

  return x -> valueAsFloat64;
}

bool32_t __MOLD_VariantCastTo_bool32(Variant_t *x)
{
  if (x -> type != VARIANT_BOOLEAN)
  {
    __MOLD_PrintErrorAndDie_booleanExpected();
  }

  return x -> valueAsInt32;
}

// -----------------------------------------------------------------------------
//                       Bitwise: variant vs variant
// -----------------------------------------------------------------------------

Variant_t __MOLD_Bitand(const Variant_t *x, const Variant_t *y)
{
  Variant_t rv = { type: VARIANT_INTEGER, value: x -> value & y -> value, flags: 0 };
  return rv;
}

Variant_t __MOLD_Bitor(const Variant_t *x, const Variant_t *y)
{
  Variant_t rv = { type: VARIANT_INTEGER, value: x -> value | y -> value, flags: 0 };
  return rv;
}

Variant_t __MOLD_Bitxor(const Variant_t *x, const Variant_t *y)
{
  Variant_t rv = { type: VARIANT_INTEGER, value: x -> value ^ y -> value, flags: 0 };
  return rv;
}

Variant_t __MOLD_Bitnot(const Variant_t *x)
{
  Variant_t rv = { type: VARIANT_INTEGER, value: ~x -> value, flags: 0 };
  return rv;
}

void __MOLD_BitandAndAssign(Variant_t *rv, const Variant_t *x, const Variant_t *y) {
  // TODO: Clean up this mess.
  __MOLD_VariantDestroy(rv);
  *rv = __MOLD_Bitand(x, y);
}

void __MOLD_BitorAndAssign(Variant_t *rv, const Variant_t *x, const Variant_t *y) {
  // TODO: Clean up this mess.
  __MOLD_VariantDestroy(rv);
  *rv = __MOLD_Bitor(x, y);
}

void __MOLD_BitxorAndAssign(Variant_t *rv, const Variant_t *x, const Variant_t *y) {
  // TODO: Clean up this mess.
  __MOLD_VariantDestroy(rv);
  *rv = __MOLD_Bitxor(x, y);
}

void __MOLD_BitnotAndAssign(Variant_t *rv, const Variant_t *x) {
  // TODO: Clean up this mess.
  __MOLD_VariantDestroy(rv);
  *rv = __MOLD_Bitnot(x);
}

// -----------------------------------------------------------------------------
//                                    Utils
// -----------------------------------------------------------------------------

void __MOLD_Exit()
{
  exit(0);
}

uint64_t __MOLD_Len(const Variant_t *x)
{
  uint64_t len = 0;

  switch (x -> type)
  {
    case VARIANT_UNDEFINED:
    case VARIANT_NULL:
    {
      len = 0;
      break;
    }

    case VARIANT_INTEGER:
    case VARIANT_FLOAT:
    case VARIANT_DOUBLE:
    case VARIANT_BOOLEAN:
    {
      len = 1;
      break;
    }

    case VARIANT_STRING:
    {
      if (x -> value == 0)
      {
        len = 0;
      }
      else if (x -> value < MOLD_STRING_ONE_CHAR_THRESHOLD)
      {
        len = 1;
      }
      else
      {
        len = __MOLD_String_getLength(x -> value);
      }

      break;
    }

    case VARIANT_ARRAY:
    {
      Buffer_t *buf   = (Buffer_t *) x -> value;
      Array_t  *array = (Array_t *) buf -> bytesPtr;
      len = array -> itemsCnt;

      break;
    }

    case VARIANT_MAP:
    case VARIANT_OBJECT:
    {
      Buffer_t *buf = (Buffer_t *) x -> value;
      Map_t *map = (Map_t *) buf -> bytesPtr;
      len = map -> bucketsUsedCnt;

      break;
    }

    default:
    {
      __MOLD_PrintErrorAndDie_badType();
    }
  }

  return len;
}

void __MOLD_SysCall(uint32_t id, Variant_t *rv, ...)
{
  // TODO: Clean up this mess.
  // TODO: Ugly work-around to implement VM syscall with id set at runtime.
  __MOLD_VariantDestroy(rv);
  memset(rv, 0, sizeof(Variant_t));

  va_list ptr;
  va_start(ptr, rv);

  Variant_t *x = va_arg(ptr, Variant_t *);
  Variant_t *y = va_arg(ptr, Variant_t *);
  Variant_t *z = va_arg(ptr, Variant_t *);

  switch (id)
  {
    case 29: __MOLD_FileLoadAndAssign(rv, x); break;

    case 31: __MOLD_VariantAssign_int32(rv, __MOLD_Ord(x)); break;
    case 32: __MOLD_AscAndAssign(rv, x); break;
    case 33: __MOLD_ParseIntegerAndAssign(rv, x); break;
    case 34: __MOLD_VariantAssign_float64(rv, __MOLD_ParseFloat(x)); break;
    case 35: __MOLD_BitandAndAssign(rv, x, y); break;
    case 36: __MOLD_BitorAndAssign(rv, x, y); break;
    case 37: __MOLD_BitxorAndAssign(rv, x, y); break;
    case 38: __MOLD_BitnotAndAssign(rv, x); break;

    case 40: __MOLD_Exit(); break;
    case 41: __MOLD_Die(x); break;
    case 42: __MOLD_StrAndAssign(rv, x); break;
    case 43: __MOLD_VariantAssign_int64(rv, __MOLD_Len(x)); break;
    case 44: __MOLD_TypeofAndAssign(rv, x); break;
    case 45: __MOLD_VariantPrint(x); break;
    case 46: __MOLD_PrintToFile_variant(stderr, x); break;

    case 50: __MOLD_ArrayInsertAfterLast(x, y); break;

    case 55: __MOLD_SubStrAndAssign(rv,x,y,z); break;
    case 57: __MOLD_GetTypeIdAndAssign(rv,x); break;

    case 99: __MOLD_VariantAssign_int64(rv, clock() * 1000 / CLOCKS_PER_SEC); break;

    default:
    {
      fprintf(stderr, "runtime error: unknown syscall id: %d\n", id);
      exit(-1);
    }
  }

  va_end(ptr);
}

Variant_t __MOLD_Typeof(const Variant_t *x)
{
  ASSERT_VARIANT_PTR_ANY(x);

  static MoldStringId_t typeBaseId = -1;

  if ((int) typeBaseId < 0) {
    typeBaseId = __MOLD_String_importLiterals(
      "undefined\0"
      "null\0"
      "integer\0"
      "float\0"  // float32
      "float\0"  // double
      "string\0"
      "boolean\0"
      "array\0"
      "map\0"
      "object\0"
      "\xff"
    );
  }

  Variant_t rv =
  {
    type: VARIANT_STRING,
    value: ENCODE_STRING_ID(typeBaseId + x -> type),
    flags: 0
  };

  return rv;
}

void __MOLD_TypeofAndAssign(Variant_t *rv, const Variant_t *x) {
  // TODO: Clean up this mess.
  __MOLD_VariantDestroy(rv);
  *rv = __MOLD_Typeof(x);
}

Variant_t __MOLD_ParseInteger(const Variant_t *x)
{
  Variant_t rv = {
    type: VARIANT_INTEGER,
    flags: 0
  };

  if (x -> value < MOLD_STRING_ONE_CHAR_THRESHOLD)
  {
    rv.valueAsInt64 = strtol((const char *) &x -> value, NULL, 0);
  }
  else
  {
    // TODO: Avoid mem copy to put zero terminator.
    // TODO: Clean up this mess.
    char buf[32];

    const char *text   = __MOLD_String_getText(x -> value);
    uint32_t    length = __MOLD_String_getLength(x -> value);

    if (length > sizeof(buf) - 1) {
      length = sizeof(buf) - 1;
    }
    buf[length] = 0;

    memcpy(buf, text, length);
    rv.valueAsInt64 = strtoll(buf, NULL, 0);
  }

  return rv;
}

void __MOLD_ParseIntegerAndAssign(Variant_t *rv, const Variant_t *x) {
  // TODO: Clean up this mess.
  __MOLD_VariantDestroy(rv);
  *rv = __MOLD_ParseInteger(x);
}

float64_t __MOLD_ParseFloat(const Variant_t *x)
{
  float64_t rv;

  if (x -> value < MOLD_STRING_ONE_CHAR_THRESHOLD)
  {
    rv = atof((const char *) &x -> value);
  }
  else
  {
    // TODO: Avoid mem copy to put zero terminator.
    // TODO: Clean up this mess.
    char buf[128];

    const char *text   = __MOLD_String_getText(x -> value);
    uint32_t    length = __MOLD_String_getLength(x -> value);

    if (length > sizeof(buf) - 1) {
      length = sizeof(buf) - 1;
    }
    buf[length] = 0;

    memcpy(buf, text, length);
    rv = atof(buf);
  }

  return rv;
}

Variant_t __MOLD_FileLoad(const Variant_t *path)
{
  Variant_t rv = { VARIANT_STRING };

  char pathRaw[MAX_PATH];

  if (path -> value < MOLD_STRING_ONE_CHAR_THRESHOLD)
  {
    pathRaw[0] = path -> valueAsInt8;
    pathRaw[1] = 0;
  }
  else
  {
    // TODO: Avoid copy to get zero terminator?
    uint32_t     len  = __MOLD_String_getLength(path -> value);
    const char * text = __MOLD_String_getText  (path -> value);

    if (len > sizeof(pathRaw) - 1) {
      len = sizeof(pathRaw) - 1;
    }

    memcpy(pathRaw, text, len);
    pathRaw[len] = 0;
  }

  FILE *f = fopen(pathRaw, "rb");

  if (f)
  {
    fseek(f, 0, SEEK_END );
    int fSize = ftell(f);
    fseek(f, 0, SEEK_SET);

    // TODO: Clean up this mess.
    char *buf = malloc(fSize);
    fread(buf, fSize, 1, f);
    fclose(f);

    rv.value = __MOLD_String_createFromCString(buf, fSize);
    free(buf);
  }
  else
  {
    fprintf(stderr, "error: could not open file '%s'", pathRaw);
    exit(1);
  }

  return rv;
}

void __MOLD_FileLoadAndAssign(Variant_t *rv, const Variant_t *path) {
  // TODO: Clean up this mess.
  __MOLD_VariantDestroy(rv);
  *rv = __MOLD_FileLoad(path);
}

void __MOLD_InitArgv(int _argc, char **_argv)
{
  Variant_t oneArg = { 0 };

  // TEMP!!!
  // setvbuf(stdout, NULL, _IONBF, 0);
  // setvbuf(stderr, NULL, _IONBF, 0);

  // Init argc global.
  argc.type  = VARIANT_INTEGER;
  argc.value = _argc;

  // Init argv[] global.
  __MOLD_VariantArrayCreate(&argv);

  for (int i = 0; _argv[i]; i++)
  {
    __MOLD_VariantStringCreateFromCString(&oneArg, _argv[i]);
    __MOLD_VariantStoreAtIndex_variant(&argv, i, &oneArg);
  }

  // TODO: Review it.
  __MOLD_VariantDestroy(&oneArg);
}

Variant_t __MOLD_GetTypeId(const Variant_t *x)
{
  Variant_t rv = { type: VARIANT_INTEGER, value: x -> type, flags: 0 };
  return rv;
}

void __MOLD_GetTypeIdAndAssign(Variant_t *rv, const Variant_t *x) {
  ASSERT_VARIANT_PTR_ANY(x);

  __MOLD_VariantDestroy(rv);

  rv -> type  = VARIANT_INTEGER;
  rv -> flags = 0;
  rv -> value = x -> type;
}

// -----------------------------------------------------------------------------
// Free all resources alocated by variant variable if any ->
// Do nothing for primitives, but it's still correct.
// This call tells, that the variable is not needed anymore and may be freed.
//
// Pseudo code:
//   delete x
//
// Parameters:
//   x - variable to be destroyed (IN/OUT).
// -----------------------------------------------------------------------------

void __MOLD_VariantDestroy(Variant_t *x)
{
  ASSERT_VARIANT_PTR_ANY(x);

  switch (x -> type)
  {
    case VARIANT_UNDEFINED:
    case VARIANT_NULL:
    case VARIANT_INTEGER:
    case VARIANT_FLOAT:
    case VARIANT_DOUBLE:
    case VARIANT_BOOLEAN:
    {
      // Primitive.
      // Do nothing.
      break;
    }

    case VARIANT_STRING:
    {
      __MOLD_String_release(x -> value);
      break;
    }

    case VARIANT_ARRAY:
    {
      __MOLD_VariantArrayRelease(x);
      break;
    }

    case VARIANT_MAP:
    case VARIANT_OBJECT:
    {
      __MOLD_VariantMapRelease(x);
      break;
    }
  }

  x -> type         = VARIANT_UNDEFINED;
  x -> flags        = 0xdeadbeef;
  x -> valueAsInt64 = 0xdeadbeef;
}

// -----------------------------------------------------------------------------
// Helper function to free array of variants.
//
// Pseudo code:
//   for i in 0 to n
//     delete x[i]
//   endfor
//
// Parameters:
//   x - array of variables to be destroyed (IN/OUT).
//   n - number of items in x[] array (IN).
// -----------------------------------------------------------------------------

void __MOLD_VariantDestroyMany(Variant_t *x, uint32_t n) {
  for (uint32_t idx = 0; idx < n; idx++) {
    __MOLD_VariantDestroy(&x[idx]);
  }
}

// -----------------------------------------------------------------------------
// Increase reference counter for dynamically alocatted variables.
// Do nothing for primitives, but it still correct.
//
// Pseudo code:
//   x -> refCnt++
//
// Parameters:
//   x - variable to referenced (IN/OUT).
// -----------------------------------------------------------------------------

void __MOLD_VariantAddRef(const Variant_t *x)
{
  switch (x -> type)
  {
    case VARIANT_UNDEFINED:
    case VARIANT_NULL:
    case VARIANT_INTEGER:
    case VARIANT_FLOAT:
    case VARIANT_DOUBLE:
    case VARIANT_BOOLEAN:
    {
      // Primitive.
      // Do nothing.
      break;
    }

    case VARIANT_STRING:
    {
      __MOLD_String_addRef(x -> value);
      break;
    }

    case VARIANT_ARRAY:
    case VARIANT_MAP:
    case VARIANT_OBJECT:
    {
        __MOLD_MemoryAddRef(x -> valueAsBufferPtr);
      break;
    }
  }
}

// -----------------------------------------------------------------------------
// Move variant object from the source to the destination slots.
// Source variant is destroyed if was not undefined.
//
// Pseudo code:
//   x = y
//
// Parameters:
//   dst - pointer to the destination variant slot (IN/OUT)
//   src - pointer to the source variant slot (IN/OUT)
// -----------------------------------------------------------------------------

void __MOLD_VariantMove(Variant_t *dst, Variant_t *src)
{
  if (src != dst) {
    __MOLD_VariantAddRef(src);
    __MOLD_VariantDestroy(dst);
    memcpy(dst, src, sizeof(Variant_t));
  }
}

// -----------------------------------------------------------------------------
// Allocate n x Variant_t items on internal MOLD stack available via
// global __MOLD_StackPtr pointer.
//
// Parameters:
//   n - number of Variant_t slots to allocate (IN).
// -----------------------------------------------------------------------------

void __MOLD_StackAlloc(uint32_t n) {
  __MOLD_StackPtr -= n;
  assert(__MOLD_StackPtr > __MOLD_Stack);
  assert(__MOLD_StackPtr < &__MOLD_Stack[MOLD_DEFAULT_STACK_SIZE]);
  memset(__MOLD_StackPtr, 0, n * sizeof(Variant_t));
};

// -----------------------------------------------------------------------------
// Release stack frame allocated by __MOLD_StackAllocate() before.
//
// Parameters:
//   n - frame size as number of Variant_t items (IN)
// -----------------------------------------------------------------------------

void __MOLD_StackFree(uint32_t n) {
  while (n > 0) {
    __MOLD_VariantDestroy(__MOLD_StackPtr);
    __MOLD_StackPtr ++;
    assert(__MOLD_StackPtr > __MOLD_Stack);
    assert(__MOLD_StackPtr < &__MOLD_Stack[MOLD_DEFAULT_STACK_SIZE]);
    n--;
  }
}
