#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdarg.h>
#include <errhandlingapi.h>

#include "MoldCore.h"
#include "MoldForDriver.h"

Variant_t argc;
Variant_t argv;
Variant_t __TrashBin;

static const char *errorMsg_generic                  = "generic";
static const char *errorMsg_integerExpected          = "integer expected";
static const char *errorMsg_integerIndexExpected     = "integer index expected";
static const char *errorMsg_booleanExpected          = "boolean expected";
static const char *errorMsg_floatExpected            = "float expected";
static const char *errorMsg_stringKeyExpected        = "string key expected";
static const char *errorMsg_stringExpected           = "string expected";
static const char *errorMsg_mapOrObjectExpected      = "map or object expected";
static const char *errorMsg_arrayExpected            = "array expected";
static const char *errorMsg_arrayOrStringExpected    = "array or string expected";
static const char *errorMsg_arrayStringOrMapExpected = "array, string or map expected";
static const char *errorMsg_negativeIndex            = "negative array index";
static const char *errorMsg_indexOutOfRange          = "index out of range";
static const char *errorMsg_outOfMemory              = "out of memory";
static const char *errorMsg_badType                  = "bad type";
static const char *errorMsg_notImplemented           = "not implemented";
static const char *errorMsg_implicitConversion       = "implicit type conversion not supported anymore";
static const char *errorMsg_notComparable            = "not comparable";
static const char *errorMsg_divideByZero             = "divide by zero";
static const char *errorMsg_floatOverflow            = "floating point overflow";
static const char *errorMsg_floatUnderflow           = "floating point underflow";
static const char *errorMsg_notIterable              = "not iterable";
static const char *errorMsg_nullMethodCalled         = "null method called";

void __MOLD_PrintErrorAndDie(const char *msg) {
  fprintf(stderr, "runtime error: %s\n", msg);

  //char *ptr = NULL;
  //ptr[0] = 0;

  exit(-1);
}

void __MOLD_PrintErrorAndDie_stringKeyExpected()     { __MOLD_PrintErrorAndDie(errorMsg_stringKeyExpected); }
void __MOLD_PrintErrorAndDie_integerExpected()       { __MOLD_PrintErrorAndDie(errorMsg_integerExpected); }
void __MOLD_PrintErrorAndDie_floatExpected()         { __MOLD_PrintErrorAndDie(errorMsg_floatExpected); }
void __MOLD_PrintErrorAndDie_booleanExpected()       { __MOLD_PrintErrorAndDie(errorMsg_booleanExpected); }
void __MOLD_PrintErrorAndDie_arrayOrStringExpected() { __MOLD_PrintErrorAndDie(errorMsg_arrayOrStringExpected); }
void __MOLD_PrintErrorAndDie_mapOrObjectExpected()   { __MOLD_PrintErrorAndDie(errorMsg_mapOrObjectExpected); }
void __MOLD_PrintErrorAndDie_outOfMemory()           { __MOLD_PrintErrorAndDie(errorMsg_outOfMemory); }
void __MOLD_PrintErrorAndDie_negativeIndex()         { __MOLD_PrintErrorAndDie(errorMsg_negativeIndex); }
void __MOLD_PrintErrorAndDie_notIterable()           { __MOLD_PrintErrorAndDie(errorMsg_notIterable); }
void __MOLD_PrintErrorAndDie_nullMethodCalled()      { __MOLD_PrintErrorAndDie(errorMsg_nullMethodCalled); }
void __MOLD_PrintErrorAndDie_notImplemented()        { __MOLD_PrintErrorAndDie(errorMsg_notImplemented); }

void __MOLD_PrintToFile_variant(FILE *f, Variant_t *x)
{
  switch (x -> type)
  {
    case VARIANT_UNDEFINED: { fprintf(f, "undefined"); break; }
    case VARIANT_NULL:      { fprintf(f, "null"); break; }
    case VARIANT_INTEGER:   { fprintf(f, "%lld", x -> valueAsInt64); break; }
    case VARIANT_FLOAT:     { fprintf(f, "%f", x -> valueAsFloat32); break; }
    case VARIANT_DOUBLE:    { fprintf(f, "%lf", x -> valueAsFloat64); break; }

    case VARIANT_STRING:
    {
      if (x -> flags & VARIANT_FLAG_ONE_CHARACTER) {
        putchar(x -> value);

      } else {
        Buffer_t *buf = (Buffer_t *) x -> value;
        String_t *str = (String_t *) buf -> bytesPtr;
        fprintf(f, "%s", str -> text);
      }

      break;
    }

    case VARIANT_BOOLEAN:
    {
      // TODO: Review it.
      // TODO: Why higher 32-bit is non-zero for false?
      fprintf(f, "%s", (x -> valueAsInt32) ? "true" : "false");
      break;
    }

    case VARIANT_ARRAY:
    {
      Buffer_t *buf   = (Buffer_t *) x -> value;
      Array_t  *array = (Array_t *) buf -> bytesPtr;

      Variant_t oneItem;

      const char *sep = "";

      fprintf(f, "[");

      void _printOneItem()
      {
        fprintf(f, sep);

        if (oneItem.type == VARIANT_STRING)
        {
          putc('\'', f);
          __MOLD_PrintToFile_variant(f, &oneItem);
          putc('\'', f);
        }
        else
        {
          __MOLD_PrintToFile_variant(f, &oneItem);
        }

        sep = ", ";
      }

      __MOLD_ForDriver_Generic(x, NULL, &oneItem, &_printOneItem);

      fprintf(f, "]");

      break;
    }

    case VARIANT_MAP:
    {
      Buffer_t *buf = (Buffer_t *) x -> value;
      Map_t    *map = (Map_t *) buf -> bytesPtr;

      Variant_t oneKey;
      Variant_t oneValue;

      const char *sep = "";

      fprintf(f, "{");

      void _printOneKeyValuePair()
      {
        fprintf(f, "%s'", sep);
        __MOLD_PrintToFile_variant(f, &oneKey);
        fprintf(f, "': ");

        if (oneValue.type == VARIANT_STRING)
        {
          putc('\'', f);
          __MOLD_PrintToFile_variant(f, &oneValue);
          putc('\'', f);
        }
        else
        {
          __MOLD_PrintToFile_variant(f, &oneValue);
        }

        sep = ", ";
      }

      __MOLD_ForDriver_Generic(x, &oneKey, &oneValue, &_printOneKeyValuePair);

      putc('}', f);

      break;
    }

    case VARIANT_OBJECT:
    {
      fprintf(f, "[object]");
      break;
    }

    default:
    {
      __MOLD_PrintErrorAndDie(errorMsg_badType);
    }
  }
}

void __MOLD_Print_variant(Variant_t *x)
{
  __MOLD_PrintToFile_variant(stdout, x);
}

void __MOLD_VariantPrint(Variant_t x)
{
  // TODO: Clean up this mess.
  __MOLD_Print_variant(&x);
}

void __MOLD_Print_string(Variant_t x)
{
  __MOLD_Print_variant(&x);
}

void __MOLD_Print_space()
{
  printf(" ");
}

void __MOLD_Print_EOL()
{
  printf("\n");
}

void __MOLD_Print_bool32(int32_t x)
{
  printf(x ? "true" : "false");
}

void __MOLD_Print_int32(int32_t x)
{
  printf("%d", x);
}

void __MOLD_Print_int64(int64_t x)
{
  // TODO: Review it on linux.
  printf("%lld", x);
}

void __MOLD_Print_float64(float64_t x)
{
  printf("%lf", x);
}

void __MOLD_VariantDestroy(Variant_t *x)
{
  // TODO: Free memory.
  x -> type = VARIANT_UNDEFINED;
}

Variant_t __MOLD_VariantCreateFrom_int32(int32_t x)
{
  Variant_t rv = {VARIANT_INTEGER, 0, x};
  return rv;
}

Variant_t __MOLD_VariantCreateFrom_int64(int64_t x)
{
  Variant_t rv = {VARIANT_INTEGER, 0, x};
  return rv;
}

Variant_t __MOLD_VariantCreateFrom_bool32(bool32_t x)
{
  Variant_t rv = {VARIANT_BOOLEAN, 0, x};
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

    default: {
      __MOLD_PrintErrorAndDie(errorMsg_badType);
    }
  }

  return rv;
}

Variant_t __MOLD_add_variant(Variant_t x, Variant_t y)
{
  Variant_t rv = { x.type };

  if (x.type != y.type) {
    __MOLD_PrintErrorAndDie(errorMsg_badType);
  }

  switch (x.type) {
    case VARIANT_INTEGER: { rv.valueAsInt64   = x.valueAsInt64   + y.valueAsInt64; break; }
    case VARIANT_FLOAT:   { rv.valueAsFloat32 = x.valueAsFloat32 + y.valueAsFloat32; break; }
    case VARIANT_DOUBLE:  { rv.valueAsFloat64 = x.valueAsFloat64 + y.valueAsFloat64; break; }

    default: {
      __MOLD_PrintErrorAndDie(errorMsg_badType);
    }
  }

  return rv;
}

Variant_t __MOLD_sub_variant(Variant_t x, Variant_t y)
{
  Variant_t rv = { x.type };

  if (x.type != y.type) {
    __MOLD_PrintErrorAndDie(errorMsg_badType);
  }

  switch (x.type) {
    case VARIANT_INTEGER: { rv.valueAsInt64   = x.valueAsInt64   - y.valueAsInt64; break; }
    case VARIANT_FLOAT:   { rv.valueAsFloat32 = x.valueAsFloat32 - y.valueAsFloat32; break; }
    case VARIANT_DOUBLE:  { rv.valueAsFloat64 = x.valueAsFloat64 - y.valueAsFloat64; break; }

    default: {
      __MOLD_PrintErrorAndDie(errorMsg_badType);
    }
  }

  return rv;
}

Variant_t __MOLD_mul_variant(Variant_t x, Variant_t y)
{
  Variant_t rv = { x.type };

  if (x.type != y.type) {
    __MOLD_PrintErrorAndDie(errorMsg_badType);
  }

  switch (x.type) {
    case VARIANT_INTEGER: { rv.valueAsInt64   = x.valueAsInt64   * y.valueAsInt64; break; }
    case VARIANT_FLOAT:   { rv.valueAsFloat32 = x.valueAsFloat32 * y.valueAsFloat32; break; }
    case VARIANT_DOUBLE:  { rv.valueAsFloat64 = x.valueAsFloat64 * y.valueAsFloat64; break; }

    default: {
      __MOLD_PrintErrorAndDie(errorMsg_badType);
    }
  }

  return rv;
}

Variant_t __MOLD_imul_variant(Variant_t x, Variant_t y) {
  return __MOLD_mul_variant(x, y);
}

Variant_t __MOLD_div_variant(Variant_t x, Variant_t y) {
  Variant_t rv = { VARIANT_DOUBLE };

  if (x.type != y.type) {
    __MOLD_PrintErrorAndDie(errorMsg_badType);
  }

  float64_t xValue;
  float64_t yValue;

  switch (x.type) {
    case VARIANT_INTEGER: { xValue = (float64_t) x.valueAsInt64; break; }
    case VARIANT_FLOAT:   { xValue = (float64_t) x.valueAsFloat32; break; }
    case VARIANT_DOUBLE:  { xValue = x.valueAsFloat64; break; }

    default: {
      __MOLD_PrintErrorAndDie(errorMsg_badType);
    }
  }

  switch (y.type) {
    case VARIANT_INTEGER: { yValue = (float64_t) y.valueAsInt64; break; }
    case VARIANT_FLOAT:   { yValue = (float64_t) y.valueAsFloat32; break; }
    case VARIANT_DOUBLE:  { yValue = y.valueAsFloat64; break; }

    default: {
      __MOLD_PrintErrorAndDie(errorMsg_badType);
    }
  }

  rv.valueAsFloat64 = xValue / yValue;

  return rv;
}

Variant_t __MOLD_idiv_variant(Variant_t x, Variant_t y) {
  Variant_t rv = { VARIANT_INTEGER };

  if (x.type != y.type) {
    __MOLD_PrintErrorAndDie(errorMsg_badType);
  }

  int64_t xValue;
  int64_t yValue;

  switch (x.type) {
    case VARIANT_INTEGER: { rv.value = x.valueAsInt64 / y.valueAsInt64; break; }
    case VARIANT_FLOAT:   { rv.value = (int64_t) (x.valueAsFloat32 / y.valueAsFloat32); break; }
    case VARIANT_DOUBLE:  { rv.value = (int64_t) (x.valueAsFloat64 / y.valueAsFloat64); break; }

    default: {
      __MOLD_PrintErrorAndDie(errorMsg_badType);
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

  const Buffer_t *buf = NULL;

  switch (x.type) {
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

    default: {
    }
  }

  Variant_t rv = { VARIANT_STRING, 0, (uint64_t) buf };

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

bool32_t __MOLD_cmp_eq_string(Variant_t x, Variant_t y) {
  bool32_t rv = 0;

  if (x.flags & VARIANT_FLAG_ONE_CHARACTER) {
    // CHAR eq ?
    if (y.flags & VARIANT_FLAG_ONE_CHARACTER) {
      // CHAR eq CHAR
      rv = (x.value == y.value);

    } else {
      // CHAR eq STRING
      Buffer_t *yBuf = (Buffer_t *) y.value;
      String_t *yStr = (String_t *) yBuf -> bytesPtr;
      rv = (yStr -> length == 1) && (yStr -> text[0] == x.value);
    }

  } else {
    // STRING eq ?
    Buffer_t *xBuf = (Buffer_t *) x.value;
    String_t *xStr = (String_t *) xBuf -> bytesPtr;

    if (y.flags & VARIANT_FLAG_ONE_CHARACTER) {
      // STRING eq CHAR
      rv = (xStr -> length == 1) && (xStr -> text[0] == y.value);

    } else {
      // STRING eq STRING
      Buffer_t *yBuf = (Buffer_t *) y.value;
      String_t *yStr = (String_t *) yBuf -> bytesPtr;

      rv = (xStr -> length == yStr -> length) &&
           (memcmp(xStr -> text, yStr -> text, xStr -> length) == 0);
    }
  }

  return rv;
}

bool32_t __MOLD_cmp_ne_string(Variant_t x, Variant_t y)
{
  return !__MOLD_cmp_eq_string(x, y);
}

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

Variant_t __MOLD_Str(Variant_t x)
{
  Variant_t rv = { VARIANT_STRING };

  if (x.type == VARIANT_STRING)
  {
    // Input is already a string - nothing to do.
    rv = x;
  }
  else
  {
    // Input is not a string.
    // We need to create new one.
    const char *fmt = NULL;

    switch (x.type)
    {
      case VARIANT_UNDEFINED: { fmt = "undefined"; break; }
      case VARIANT_NULL:      { fmt = "null"; break; }
      case VARIANT_INTEGER:   { fmt = "%lld"; break; }
      case VARIANT_FLOAT:     { fmt = "%f"; break; }
      case VARIANT_DOUBLE:    { fmt = "%lf"; break; }
      case VARIANT_BOOLEAN:   { fmt = x.value ? "true" : "false"; break; }
      case VARIANT_ARRAY:     { fmt = "[array]"; break; }
      case VARIANT_MAP:       { fmt = "[map]"; break; }
      case VARIANT_OBJECT:    { fmt = "[object]"; break; }

      default:
      {
        __MOLD_PrintErrorAndDie(errorMsg_badType);
      }
    }

    Buffer_t *buf = __MOLD_MemoryAlloc(32 + sizeof(String_t));
    String_t *str = (String_t *) buf -> bytesPtr;
    str -> length = snprintf(str -> text, 31, fmt, x.value);
    rv.valueAsBufferPtr = buf;
  }

  return rv;
}

void __MOLD_Exit()
{
  exit(0);
}

void __MOLD_Die(Variant_t msg)
{
  __MOLD_PrintToFile_variant(stderr, &msg);
  fprintf(stderr, "\n");
  exit(-1);
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
      __MOLD_PrintErrorAndDie(errorMsg_stringExpected);
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

void __MOLD_VariantStringJoin(Variant_t *dst, Variant_t *x, Variant_t *y)
{
  // TODO: Free existing variant if any.
  uint64_t xLen = 0;
  uint64_t yLen = 0;

  char *xText = NULL;
  char *yText = NULL;

  //
  // Fetch first source string.
  //

  if (x -> flags & VARIANT_FLAG_ONE_CHARACTER)
  {
    xLen  = 1;
    xText = (char *) &x -> value;
  }
  else
  {
    String_t *xStr = (String_t *) x -> valueAsBufferPtr -> bytesPtr;

    xLen  = xStr -> length;
    xText = (char *) xStr -> text;
  }

  //
  // Fetch second source string.
  //

  if (y -> flags & VARIANT_FLAG_ONE_CHARACTER)
  {
    yLen  = 1;
    yText = (char *) &y -> value;
  }
  else
  {
    String_t *yStr = (String_t *) y -> valueAsBufferPtr -> bytesPtr;

    yLen  = yStr -> length;
    yText = (char *) yStr -> text;
  }

  //
  // Calculate destination length (without zero terminator).
  //

  uint64_t newSize = xLen + yLen;

  //
  // Allocate new buffer for destination string.
  // TODO: Use existing buffer if exists.
  //

  Buffer_t *dstBuf = __MOLD_MemoryAlloc(sizeof(String_t) + newSize);
  String_t *dstStr = (String_t *) dstBuf -> bytesPtr;

  //
  // Join two source strings into destination buffer.
  //

  memcpy(dstStr -> text        , xText, xLen);
  memcpy(dstStr -> text + xLen , yText, yLen);

  dstStr -> length = newSize;

  // Assign new buffer to result.
  dst -> type             = VARIANT_STRING;
  dst -> valueAsBufferPtr = dstBuf;
}

Variant_t __MOLD_SubStr(Variant_t strVariant, Variant_t idxVariant, Variant_t lenVariant)
{
  Variant_t rv;

  String_t *str = (String_t *) strVariant.valueAsBufferPtr -> bytesPtr;

  int32_t idx = idxVariant.valueAsInt32;
  int32_t len = lenVariant.valueAsInt32;

  if ((len < 0) || (idx + len >= str -> length))
  {
    len = str -> length - idx;
  }

  Buffer_t *newBuf = __MOLD_MemoryAlloc(sizeof(String_t) + len + 1);
  String_t *newStr = (String_t *) newBuf -> bytesPtr;

  newStr -> length = len;

  rv.type             = VARIANT_STRING;
  rv.valueAsBufferPtr = newBuf;

  memcpy(newStr -> text, str -> text + idx, len);

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

LONG WINAPI RedirectedSetUnhandledExceptionFilter(EXCEPTION_POINTERS *ExceptionInfo)
{

  // When the CRT calls SetUnhandledExceptionFilter with NULL parameter
  // our handler will not get removed.
  return 0;
}

LONG WINAPI __MOLD_SystemExceptionHandler(struct _EXCEPTION_POINTERS *ExceptionInfo)
{
  switch (ExceptionInfo -> ExceptionRecord -> ExceptionCode)
  {
    case 0xc00000be: __MOLD_PrintErrorAndDie(errorMsg_divideByZero);
    case 0xc0000091: __MOLD_PrintErrorAndDie(errorMsg_floatOverflow);
    case 0xc0000093: __MOLD_PrintErrorAndDie(errorMsg_floatUnderflow);
    case 0xc0000094: __MOLD_PrintErrorAndDie(errorMsg_divideByZero);

    default:
    {
    }
  }

  return EXCEPTION_CONTINUE_SEARCH;
}

void __MOLD_InitExceptions()
{
  AddVectoredExceptionHandler(1, __MOLD_SystemExceptionHandler);
  SetUnhandledExceptionFilter(__MOLD_SystemExceptionHandler);
}

bool32_t __MOLD_cmp_eq_variant(Variant_t x, Variant_t y)
{
  bool32_t rv = 0;

  if (x.type != y.type)
  {
    __MOLD_PrintErrorAndDie(errorMsg_notComparable);
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
    __MOLD_PrintErrorAndDie(errorMsg_implicitConversion);
  }

  switch (x.type)
  {
    case VARIANT_INTEGER: { rv = x.valueAsInt64   < y.valueAsInt64;   break; }
    case VARIANT_FLOAT:   { rv = x.valueAsFloat32 < y.valueAsFloat32; break; }
    case VARIANT_DOUBLE:  { rv = x.valueAsFloat64 < y.valueAsFloat64; break; }

    default:
    {
      __MOLD_PrintErrorAndDie(errorMsg_notComparable);
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
    __MOLD_PrintErrorAndDie(errorMsg_implicitConversion);
  }

  switch (x.type)
  {
    case VARIANT_INTEGER: { rv = x.valueAsInt64   <= y.valueAsInt64;   break; }
    case VARIANT_FLOAT:   { rv = x.valueAsFloat32 <= y.valueAsFloat32; break; }
    case VARIANT_DOUBLE:  { rv = x.valueAsFloat64 <= y.valueAsFloat64; break; }

    default:
    {
      __MOLD_PrintErrorAndDie(errorMsg_notComparable);
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
