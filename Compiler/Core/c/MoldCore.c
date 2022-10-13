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

#include "MoldCore.h"
#include "MoldError.h"
#include "MoldForDriver.h"

Variant_t argc;
Variant_t argv;
Variant_t __TrashBin;

void __MOLD_VariantDestroy(Variant_t *x)
{
  // TODO: Free memory.
  x -> type = VARIANT_UNDEFINED;
}

Variant_t __MOLD_VariantCreateFrom_int32(int32_t x)
{
  Variant_t rv;
  rv.type = VARIANT_INTEGER;
  rv.valueAsInt64 = x;
  return rv;
}

Variant_t __MOLD_VariantCreateFrom_int64(int64_t x)
{
  Variant_t rv;
  rv.type = VARIANT_INTEGER;
  rv.valueAsInt64 = x;
  return rv;
}

Variant_t __MOLD_VariantCreateFrom_bool32(bool32_t x)
{
  Variant_t rv;
  rv.type = VARIANT_BOOLEAN;
  rv.valueAsInt64 = x;
  return rv;
}

Variant_t __MOLD_VariantCreateFrom_float32(float32_t x)
{
  Variant_t rv;
  rv.type           = VARIANT_FLOAT;
  rv.valueAsFloat32 = x;
  return rv;
}

Variant_t __MOLD_VariantCreateFrom_float64(float64_t x)
{
  Variant_t rv;
  rv.type           = VARIANT_DOUBLE;
  rv.valueAsFloat64 = x;
  return rv;
}

int32_t   __MOLD_neg_int32 (int32_t x )           { return - x; }
int32_t   __MOLD_add_int32 (int32_t x, int32_t y) { return x + y; };
int32_t   __MOLD_sub_int32 (int32_t x, int32_t y) { return x - y; };
int32_t   __MOLD_mul_int32 (int32_t x, int32_t y) { return x * y; };
int32_t   __MOLD_imul_int32(int32_t x, int32_t y) { return x * y; };
float64_t __MOLD_div_int32 (int32_t x, int32_t y) { return (float64_t) x / y; };
int32_t   __MOLD_idiv_int32(int32_t x, int32_t y) { return x / y; };

int64_t   __MOLD_neg_int64 (int64_t x ) { return - x; }
int64_t   __MOLD_add_int64 (int64_t x, int64_t y) { return x + y; };
int64_t   __MOLD_sub_int64 (int64_t x, int64_t y) { return x - y; };
int64_t   __MOLD_mul_int64 (int64_t x, int64_t y) { return x * y; };
int64_t   __MOLD_imul_int64(int64_t x, int64_t y) { return x * y; };
float64_t __MOLD_div_int64 (int64_t x, int64_t y) { return (float64_t) x / y; };
int64_t   __MOLD_idiv_int64(int64_t x, int64_t y) { return x / y; };

Variant_t __MOLD_neg_variant(Variant_t x)
{
  Variant_t rv = { x.type };

  switch (x.type) {
    case VARIANT_INTEGER: { rv.valueAsInt64   = -x.valueAsInt64; break; }
    case VARIANT_FLOAT:   { rv.valueAsFloat32 = -x.valueAsFloat32; break; }
    case VARIANT_DOUBLE:  { rv.valueAsFloat64 = -x.valueAsFloat64; break; }

    default:
    {
      __MOLD_PrintErrorAndDie_badType();
    }
  }

  return rv;
}

Variant_t __MOLD_add_variant(Variant_t x, Variant_t y)
{
  Variant_t rv = { x.type };

  if (x.type != y.type)
  {
    __MOLD_PrintErrorAndDie_badType();
  }

  switch (x.type)
  {
    case VARIANT_INTEGER: { rv.valueAsInt64   = x.valueAsInt64   + y.valueAsInt64; break; }
    case VARIANT_FLOAT:   { rv.valueAsFloat32 = x.valueAsFloat32 + y.valueAsFloat32; break; }
    case VARIANT_DOUBLE:  { rv.valueAsFloat64 = x.valueAsFloat64 + y.valueAsFloat64; break; }

    default:
    {
      __MOLD_PrintErrorAndDie_badType();
    }
  }

  return rv;
}

Variant_t __MOLD_sub_variant(Variant_t x, Variant_t y)
{
  Variant_t rv = { x.type };

  if (x.type != y.type)
  {
    __MOLD_PrintErrorAndDie_badType();
  }

  switch (x.type)
  {
    case VARIANT_INTEGER: { rv.valueAsInt64   = x.valueAsInt64   - y.valueAsInt64; break; }
    case VARIANT_FLOAT:   { rv.valueAsFloat32 = x.valueAsFloat32 - y.valueAsFloat32; break; }
    case VARIANT_DOUBLE:  { rv.valueAsFloat64 = x.valueAsFloat64 - y.valueAsFloat64; break; }

    default:
    {
      __MOLD_PrintErrorAndDie_badType();
    }
  }

  return rv;
}

Variant_t __MOLD_mul_variant(Variant_t x, Variant_t y)
{
  Variant_t rv = { x.type };

  if (x.type != y.type)
  {
    __MOLD_PrintErrorAndDie_badType();
  }

  switch (x.type) {
    case VARIANT_INTEGER: { rv.valueAsInt64   = x.valueAsInt64   * y.valueAsInt64; break; }
    case VARIANT_FLOAT:   { rv.valueAsFloat32 = x.valueAsFloat32 * y.valueAsFloat32; break; }
    case VARIANT_DOUBLE:  { rv.valueAsFloat64 = x.valueAsFloat64 * y.valueAsFloat64; break; }

    default: {
      __MOLD_PrintErrorAndDie_badType();
    }
  }

  return rv;
}

Variant_t __MOLD_imul_variant(Variant_t x, Variant_t y)
{
  return __MOLD_mul_variant(x, y);
}

Variant_t __MOLD_div_variant(Variant_t x, Variant_t y)
{
  Variant_t rv = { VARIANT_DOUBLE };

  if (x.type != y.type)
  {
    __MOLD_PrintErrorAndDie_badType();
  }

  float64_t xValue = 0.0;
  float64_t yValue = 0.0;

  switch (x.type)
  {
    case VARIANT_INTEGER: { xValue = (float64_t) x.valueAsInt64; break; }
    case VARIANT_FLOAT:   { xValue = (float64_t) x.valueAsFloat32; break; }
    case VARIANT_DOUBLE:  { xValue = x.valueAsFloat64; break; }

    default:
    {
      __MOLD_PrintErrorAndDie_badType();
    }
  }

  switch (y.type)
  {
    case VARIANT_INTEGER: { yValue = (float64_t) y.valueAsInt64; break; }
    case VARIANT_FLOAT:   { yValue = (float64_t) y.valueAsFloat32; break; }
    case VARIANT_DOUBLE:  { yValue = y.valueAsFloat64; break; }

    default:
    {
      __MOLD_PrintErrorAndDie_badType();
    }
  }

  rv.valueAsFloat64 = xValue / yValue;

  return rv;
}

Variant_t __MOLD_idiv_variant(Variant_t x, Variant_t y)
{
  Variant_t rv = { VARIANT_INTEGER };

  if (x.type != y.type)
  {
    __MOLD_PrintErrorAndDie_badType();
  }

  switch (x.type)
  {
    case VARIANT_INTEGER: { rv.value = x.valueAsInt64 / y.valueAsInt64; break; }
    case VARIANT_FLOAT:   { rv.value = (int64_t) (x.valueAsFloat32 / y.valueAsFloat32); break; }
    case VARIANT_DOUBLE:  { rv.value = (int64_t) (x.valueAsFloat64 / y.valueAsFloat64); break; }

    default:
    {
      __MOLD_PrintErrorAndDie_badType();
    }
  }

  return rv;
}

float64_t __MOLD_neg_float64 (float64_t x )             { return - x; }
float64_t __MOLD_add_float64 (float64_t x, float64_t y) { return x + y; };
float64_t __MOLD_sub_float64 (float64_t x, float64_t y) { return x - y; };
float64_t __MOLD_mul_float64 (float64_t x, float64_t y) { return x * y; };
float64_t __MOLD_imul_float64(float64_t x, float64_t y) { return x * y; };
float64_t __MOLD_div_float64 (float64_t x, float64_t y) { return x / y; };
int64_t   __MOLD_idiv_float64(float64_t x, float64_t y) { return (int64_t) (x / y); };

Variant_t __MOLD_Typeof(Variant_t x) {
  // TODO: Clean up this mess.
  static uint8_t bufferBytes_undefined[] = { 9,0,0,0,0,0,0,0  , 'u', 'n', 'd', 'e', 'f', 'i', 'n', 'e', 'd', 0 };
  static uint8_t bufferBytes_null[]      = { 4,0,0,0,0,0,0,0  , 'n', 'u', 'l', 'l', 0 };
  static uint8_t bufferBytes_integer[]   = { 7,0,0,0,0,0,0,0  , 'i', 'n', 't', 'e', 'g', 'e', 'r', 0 };
  static uint8_t bufferBytes_float[]     = { 5,0,0,0,0,0,0,0  , 'f', 'l', 'o', 'a', 't', 0 };
  static uint8_t bufferBytes_string[]    = { 6,0,0,0,0,0,0,0  , 's', 't', 'r', 'i', 'n', 'g', 0 };
  static uint8_t bufferBytes_boolean[]   = { 7,0,0,0,0,0,0,0  , 'b', 'o', 'o', 'l', 'e', 'a', 'n', 0 };
  static uint8_t bufferBytes_array[]     = { 5,0,0,0,0,0,0,0  , 'a', 'r', 'r', 'a', 'y', 0 };
  static uint8_t bufferBytes_map[]       = { 3,0,0,0,0,0,0,0  , 'm', 'a', 'p', 0 };
  static uint8_t bufferBytes_object[]    = { 6,0,0,0,0,0,0,0  , 'o', 'b', 'j', 'e', 'c', 't', 0 };

  static Buffer_t buffer_undefined = { 10 , -1, 0, &bufferBytes_undefined };
  static Buffer_t buffer_null      = { 5  , -1, 0, &bufferBytes_null };
  static Buffer_t buffer_integer   = { 8  , -1, 0, &bufferBytes_integer };
  static Buffer_t buffer_float     = { 6  , -1, 0, &bufferBytes_float };
  static Buffer_t buffer_string    = { 7  , -1, 0, &bufferBytes_string };
  static Buffer_t buffer_boolean   = { 8  , -1, 0, &bufferBytes_boolean };
  static Buffer_t buffer_array     = { 6  , -1, 0, &bufferBytes_array };
  static Buffer_t buffer_map       = { 4  , -1, 0, &bufferBytes_map };
  static Buffer_t buffer_object    = { 7  , -1, 0, &bufferBytes_object };

  Buffer_t *buf = NULL;

  switch (x.type)
  {
    case VARIANT_UNDEFINED: { buf = &buffer_undefined; break; }
    case VARIANT_NULL:      { buf = &buffer_null;      break; }

    case VARIANT_INTEGER:   { buf = &buffer_integer;   break; }
    case VARIANT_FLOAT:     { buf = &buffer_float;     break; }
    case VARIANT_DOUBLE:    { buf = &buffer_float;     break; }
    case VARIANT_STRING:    { buf = &buffer_string;    break; }
    case VARIANT_BOOLEAN:   { buf = &buffer_boolean;   break; }

    case VARIANT_ARRAY:     { buf = &buffer_array;     break; }
    case VARIANT_MAP:       { buf = &buffer_map;       break; }
    case VARIANT_OBJECT:    { buf = &buffer_object;    break; }

    default:
    {
    }
  }

  Variant_t rv;

  rv.type             = VARIANT_STRING;
  rv.valueAsBufferPtr = buf;

  return rv;
}

bool32_t __MOLD_cmp_eq_int32(int32_t x, int32_t y) { return x == y; }
bool32_t __MOLD_cmp_ne_int32(int32_t x, int32_t y) { return x != y; }
bool32_t __MOLD_cmp_lt_int32(int32_t x, int32_t y) { return x < y; }
bool32_t __MOLD_cmp_gt_int32(int32_t x, int32_t y) { return x > y; }
bool32_t __MOLD_cmp_le_int32(int32_t x, int32_t y) { return x <= y; }
bool32_t __MOLD_cmp_ge_int32(int32_t x, int32_t y) { return x >= y; }

bool32_t __MOLD_cmp_eq_int64(int64_t x, int64_t y) { return x == y; }
bool32_t __MOLD_cmp_ne_int64(int64_t x, int64_t y) { return x != y; }
bool32_t __MOLD_cmp_lt_int64(int64_t x, int64_t y) { return x < y; }
bool32_t __MOLD_cmp_gt_int64(int64_t x, int64_t y) { return x > y; }
bool32_t __MOLD_cmp_le_int64(int64_t x, int64_t y) { return x <= y; }
bool32_t __MOLD_cmp_ge_int64(int64_t x, int64_t y) { return x >= y; }

bool32_t __MOLD_cmp_eq_float64(float64_t x, float64_t y) { return x == y; }
bool32_t __MOLD_cmp_ne_float64(float64_t x, float64_t y) { return x != y; }
bool32_t __MOLD_cmp_lt_float64(float64_t x, float64_t y) { return x < y; }
bool32_t __MOLD_cmp_gt_float64(float64_t x, float64_t y) { return x > y; }
bool32_t __MOLD_cmp_le_float64(float64_t x, float64_t y) { return x <= y; }
bool32_t __MOLD_cmp_ge_float64(float64_t x, float64_t y) { return x >= y; }

bool32_t __MOLD_cmp_eq_bool32(bool32_t x, bool32_t y) { return x == y; }
bool32_t __MOLD_cmp_ne_bool32(bool32_t x, bool32_t y) { return x != y; }

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


void __MOLD_Exit()
{
  exit(0);
}

Variant_t __MOLD_Len(Variant_t x)
{
  uint64_t len = 0;

  switch (x.type)
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
      if (x.flags & VARIANT_FLAG_ONE_CHARACTER) {
        len = 1;
      }
      else
      {
        Buffer_t *buf = (Buffer_t *) x.value;
        String_t *str = (String_t *) buf -> bytesPtr;
        len = str -> length;
      }

      break;
    }

    case VARIANT_ARRAY:
    {
      Buffer_t *buf   = (Buffer_t *) x.value;
      Array_t  *array = (Array_t *) buf -> bytesPtr;
      len = array -> itemsCnt;
      break;
    }

    case VARIANT_MAP:
    case VARIANT_OBJECT:
    {
      Buffer_t *buf = (Buffer_t *) x.value;
      Map_t *map = (Map_t *) buf -> bytesPtr;
      len = map -> bucketsUsedCnt;
    }
  }

  Variant_t rv;
  rv.type  = VARIANT_INTEGER;
  rv.value = len;

  return rv;
}

Variant_t __MOLD_Ord(Variant_t x)
{
  Variant_t rv = { VARIANT_INTEGER };

  switch (x.type)
  {
    case VARIANT_STRING:
    {
      if (x.flags & VARIANT_FLAG_ONE_CHARACTER)
      {
        rv.value = x.valueAsUInt8;
      }
      else
      {
        String_t *str = (String_t *) x.valueAsBufferPtr -> bytesPtr;
        rv.value = str -> text[0];
      }

      break;
    }

    case VARIANT_UNDEFINED:
    {
      rv.value = 0;
      break;
    }

    case VARIANT_INTEGER:
    {
      rv.value = x.valueAsUInt8;
      break;
    }

    default:
    {
      __MOLD_PrintErrorAndDie_stringExpected();
    }
  }

  return rv;
}

Variant_t __MOLD_Asc(Variant_t x)
{
  Variant_t rv;
  rv.type  = VARIANT_STRING;
  rv.flags = VARIANT_FLAG_ONE_CHARACTER;
  rv.value = x.value;
  return rv;
}

Variant_t __MOLD_Bitand(Variant_t x, Variant_t y)
{
  Variant_t rv;
  rv.type  = VARIANT_INTEGER;
  rv.value = x.value & y.value;
  return rv;
}

Variant_t __MOLD_Bitor(Variant_t x, Variant_t y)
{
  Variant_t rv;
  rv.type  = VARIANT_INTEGER;
  rv.value = x.value | y.value;
  return rv;
}

Variant_t __MOLD_Bitxor(Variant_t x, Variant_t y)
{
  Variant_t rv;
  rv.type  = VARIANT_INTEGER;
  rv.value = x.value ^ y.value;
  return rv;
}

Variant_t __MOLD_ParseInteger(Variant_t x)
{
  Variant_t rv;
  rv.type  = VARIANT_INTEGER;

  if (x.flags & VARIANT_FLAG_ONE_CHARACTER)
  {
    rv.value = strtol((const char *) &x.value, NULL, 0);
  }
  else
  {
    String_t *str = (String_t *) x.valueAsBufferPtr -> bytesPtr;
    rv.value = strtoll(str -> text, NULL, 0);
  }

  return rv;
}

Variant_t __MOLD_ParseFloat(Variant_t x)
{
  Variant_t rv;
  rv.type  = VARIANT_DOUBLE;

  if (x.flags & VARIANT_FLAG_ONE_CHARACTER)
  {
    rv.valueAsFloat64 = atof((const char *) &x.value);
  }
  else
  {
    String_t *str = (String_t *) x.valueAsBufferPtr -> bytesPtr;
    rv.valueAsFloat64 = atof(str -> text);
  }

  return rv;
}

Variant_t __MOLD_FileLoad(Variant_t path)
{
  Variant_t rv = { VARIANT_STRING };

  const char *pathRaw = NULL;

  if (path.flags & VARIANT_FLAG_ONE_CHARACTER)
  {
    pathRaw = (const char *) path.value;
  }
  else
  {
    pathRaw = ((String_t *) path.valueAsBufferPtr -> bytesPtr) -> text;
  }

  FILE *f = fopen(pathRaw, "rb");

  if (f)
  {
    fseek(f, 0, SEEK_END );
    int fSize = ftell(f);
    fseek(f, 0, SEEK_SET);

    Buffer_t *newBuf = __MOLD_MemoryAlloc(sizeof(String_t) + fSize + 1);
    String_t *newStr = (String_t *) newBuf -> bytesPtr;

    newStr -> length = fSize;
    rv.valueAsBufferPtr = newBuf;

    fread(&newStr -> text, fSize, 1, f);
    fclose(f);
  }
  else
  {
    fprintf(stderr, "error: could not open file '%s'", pathRaw);
  }

  return rv;
}

void __MOLD_InitArgv(int _argc, char **_argv)
{
  Variant_t oneArg = { VARIANT_STRING };

  argc.type  = VARIANT_INTEGER;
  argc.value = _argc;

  argv = __MOLD_VariantArrayCreate();

  for (int i = 0; _argv[i]; i++)
  {
    int oneArgLen = strlen(_argv[i]);

    Buffer_t *buf = __MOLD_MemoryAlloc(oneArgLen + 1);
    String_t *str = (String_t *) buf -> bytesPtr;

    memcpy(str -> text, _argv[i], oneArgLen);
    str -> length = oneArgLen;
    oneArg.valueAsBufferPtr = buf;

    __MOLD_VariantStoreAtIndex_variant(&argv, i, oneArg);
  }
}

Variant_t __MOLD_GetTypeId(Variant_t x)
{
  Variant_t rv;
  rv.type  = VARIANT_INTEGER;
  rv.value = x.type;
  return rv;
}

bool32_t __MOLD_cmp_eq_variant(Variant_t x, Variant_t y)
{
  bool32_t rv = 0;

  if (x.type != y.type)
  {
    __MOLD_PrintErrorAndDie_notComparable();
  }

  if (x.type == VARIANT_STRING)
  {
    rv = __MOLD_cmp_eq_string(x, y);
  }
  else
  {
    rv = (x.value == y.value);
  }

  return rv;
}

bool32_t __MOLD_cmp_ne_variant(Variant_t x, Variant_t y)
{
  return !__MOLD_cmp_eq_variant(x, y);
}

bool32_t __MOLD_cmp_lt_variant(Variant_t x, Variant_t y)
{
  bool32_t rv = 0;

  if (x.type != y.type)
  {
    __MOLD_PrintErrorAndDie_implicitConversion();
  }

  switch (x.type)
  {
    case VARIANT_INTEGER: { rv = x.valueAsInt64   < y.valueAsInt64;   break; }
    case VARIANT_FLOAT:   { rv = x.valueAsFloat32 < y.valueAsFloat32; break; }
    case VARIANT_DOUBLE:  { rv = x.valueAsFloat64 < y.valueAsFloat64; break; }

    default:
    {
      __MOLD_PrintErrorAndDie_notComparable();
    }
  }

  return rv;
}

bool32_t __MOLD_cmp_gt_variant(Variant_t x, Variant_t y)
{
  return !__MOLD_cmp_le_variant(x, y);
}

bool32_t __MOLD_cmp_le_variant(Variant_t x, Variant_t y)
{
  bool32_t rv = 0;

  if (x.type != y.type)
  {
    __MOLD_PrintErrorAndDie_implicitConversion();
  }

  switch (x.type)
  {
    case VARIANT_INTEGER: { rv = x.valueAsInt64   <= y.valueAsInt64;   break; }
    case VARIANT_FLOAT:   { rv = x.valueAsFloat32 <= y.valueAsFloat32; break; }
    case VARIANT_DOUBLE:  { rv = x.valueAsFloat64 <= y.valueAsFloat64; break; }

    default:
    {
      __MOLD_PrintErrorAndDie_notComparable();
    }
  }

  return rv;
}

bool32_t __MOLD_cmp_ge_variant(Variant_t x, Variant_t y)
{
  return !__MOLD_cmp_lt_variant(x, y);
}

Variant_t __MOLD_SysCall(uint32_t id, ...)
{
  // TODO: Clean up this mess.
  // TODO: Ugly work-around to implement VM syscall with id set at runtime.
  Variant_t rv = { 0 };

  va_list ptr;
  va_start(ptr, id);

  switch (id)
  {
    case 29: rv = __MOLD_FileLoad(va_arg(ptr, Variant_t)); break;

    case 31: rv = __MOLD_Ord(va_arg(ptr, Variant_t)); break;
    case 32: rv = __MOLD_Asc(va_arg(ptr, Variant_t)); break;

    case 40:      __MOLD_Exit(); break;
    case 41:      __MOLD_Die(va_arg(ptr, Variant_t)); break;
    case 42: rv = __MOLD_Str(va_arg(ptr, Variant_t)); break;
    case 43: rv = __MOLD_Len(va_arg(ptr, Variant_t)); break;
    case 44: rv = __MOLD_Typeof(va_arg(ptr, Variant_t)); break;

    case 50:
    {
      Variant_t x = va_arg(ptr, Variant_t);
      Variant_t y = va_arg(ptr, Variant_t);
      __MOLD_ArrayInsertAfterLast(x, y);
      break;
    }

    case 57: rv = __MOLD_GetTypeId(va_arg(ptr, Variant_t)); break;

    default:
    {
      fprintf(stderr, "runtime error: unknown syscall id: %d\n", id);
      exit(-1);
    }
  }

  va_end(ptr);

  return rv;
}
