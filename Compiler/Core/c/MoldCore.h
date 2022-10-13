#ifndef _MoldCore_H
#define _MoldCore_H

#include <stdint.h>
#include <stdlib.h>
#include "MoldMemory.h"

typedef int32_t bool32_t;
typedef float   float32_t;
typedef double  float64_t;

#define true  1
#define false 0

// #############################################################################
//                                  Constants
// #############################################################################

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

#define VARIANT_OBJECT_DEFAULT_BUCKETS_CNT 16
#define VARIANT_ARRAY_DEFAULT_ITEMS_CNT    16

#define VARIANT_ARRAY_DEFAULT_BUFFER_SIZE  (16 * VARIANT_ARRAY_DEFAULT_ITEMS_CNT + 16)
#define VARIANT_OBJECT_DEFAULT_BUFFER_SIZE (36 * VARIANT_OBJECT_DEFAULT_BUCKETS_CNT + 32)

#define VARIANT_STRING_DEFAULT_BUFFER_SIZE 16

#define MAX_STRING_LENGTH EQU (1024*1024)

struct Buffer;

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

typedef struct String
{
  uint64_t length;
  char text[];
} String_t;

extern Variant_t argc;
extern Variant_t argv;
extern Variant_t __TrashBin;

void __MOLD_Print_variant(Variant_t *);
void __MOLD_Print_string(Variant_t);
void __MOLD_Print_space();
void __MOLD_Print_EOL();
void __MOLD_Print_bool32(int32_t);
void __MOLD_Print_int32(int32_t);
void __MOLD_Print_int64(int64_t);
void __MOLD_Print_float64(float64_t);

void __MOLD_VariantPrint(Variant_t);

void __MOLD_VariantDestroy(Variant_t *);

Variant_t __MOLD_VariantCreateFrom_int32(int32_t);
Variant_t __MOLD_VariantCreateFrom_int64(int64_t);
Variant_t __MOLD_VariantCreateFrom_bool32(bool32_t);
Variant_t __MOLD_VariantCreateFrom_float32(float32_t);
Variant_t __MOLD_VariantCreateFrom_float64(float64_t);

int32_t   __MOLD_neg_int32 (int32_t);
int32_t   __MOLD_add_int32 (int32_t, int32_t);
int32_t   __MOLD_sub_int32 (int32_t, int32_t);
int32_t   __MOLD_mul_int32 (int32_t, int32_t);
int32_t   __MOLD_imul_int32(int32_t, int32_t);
int32_t   __MOLD_idiv_int32(int32_t, int32_t);
float64_t __MOLD_div_int32 (int32_t, int32_t);

int64_t   __MOLD_neg_int64 (int64_t);
int64_t   __MOLD_add_int64 (int64_t, int64_t);
int64_t   __MOLD_sub_int64 (int64_t, int64_t);
int64_t   __MOLD_mul_int64 (int64_t, int64_t);
int64_t   __MOLD_imul_int64(int64_t, int64_t);
int64_t   __MOLD_idiv_int64(int64_t, int64_t);
float64_t __MOLD_div_int64 (int64_t, int64_t);

float64_t __MOLD_neg_float64 (float64_t);
float64_t __MOLD_add_float64 (float64_t, float64_t);
float64_t __MOLD_sub_float64 (float64_t, float64_t);
float64_t __MOLD_mul_float64 (float64_t, float64_t);
float64_t __MOLD_imul_float64 (float64_t, float64_t);
int64_t   __MOLD_idiv_float64(float64_t, float64_t);
float64_t __MOLD_div_float64 (float64_t, float64_t);

Variant_t __MOLD_neg_variant (Variant_t);
Variant_t __MOLD_add_variant (Variant_t, Variant_t);
Variant_t __MOLD_sub_variant (Variant_t, Variant_t);
Variant_t __MOLD_mul_variant (Variant_t, Variant_t);
Variant_t __MOLD_imul_variant (Variant_t, Variant_t);
Variant_t __MOLD_div_variant (Variant_t, Variant_t);
Variant_t __MOLD_idiv_variant(Variant_t, Variant_t);

Variant_t __MOLD_VariantCreateFrom_int32 (int32_t);
Variant_t __MOLD_VariantCreateFrom_int64 (int64_t);
Variant_t __MOLD_VariantCreateFrom_bool32(bool32_t);
Variant_t __MOLD_VariantCreateFrom_float32(float32_t);
Variant_t __MOLD_VariantCreateFrom_float64(float64_t);

bool32_t __MOLD_cmp_eq_int32(int32_t x, int32_t y);
bool32_t __MOLD_cmp_ne_int32(int32_t x, int32_t y);
bool32_t __MOLD_cmp_lt_int32(int32_t x, int32_t y);
bool32_t __MOLD_cmp_gt_int32(int32_t x, int32_t y);
bool32_t __MOLD_cmp_le_int32(int32_t x, int32_t y);
bool32_t __MOLD_cmp_ge_int32(int32_t x, int32_t y);

bool32_t __MOLD_cmp_eq_int64(int64_t x, int64_t y);
bool32_t __MOLD_cmp_ne_int64(int64_t x, int64_t y);
bool32_t __MOLD_cmp_lt_int64(int64_t x, int64_t y);
bool32_t __MOLD_cmp_gt_int64(int64_t x, int64_t y);
bool32_t __MOLD_cmp_le_int64(int64_t x, int64_t y);
bool32_t __MOLD_cmp_ge_int64(int64_t x, int64_t y);

bool32_t __MOLD_cmp_eq_float64(float64_t x, float64_t y);
bool32_t __MOLD_cmp_ne_float64(float64_t x, float64_t y);
bool32_t __MOLD_cmp_lt_float64(float64_t x, float64_t y);
bool32_t __MOLD_cmp_gt_float64(float64_t x, float64_t y);
bool32_t __MOLD_cmp_le_float64(float64_t x, float64_t y);
bool32_t __MOLD_cmp_ge_float64(float64_t x, float64_t y);

bool32_t __MOLD_cmp_eq_variant(Variant_t x, Variant_t y);
bool32_t __MOLD_cmp_ne_variant(Variant_t x, Variant_t y);
bool32_t __MOLD_cmp_lt_variant(Variant_t x, Variant_t y);
bool32_t __MOLD_cmp_gt_variant(Variant_t x, Variant_t y);
bool32_t __MOLD_cmp_le_variant(Variant_t x, Variant_t y);
bool32_t __MOLD_cmp_ge_variant(Variant_t x, Variant_t y);

bool32_t __MOLD_cmp_eq_string(Variant_t x, Variant_t y);
bool32_t __MOLD_cmp_ne_string(Variant_t x, Variant_t y);

bool32_t __MOLD_cmp_eq_bool32(bool32_t x, bool32_t y);
bool32_t __MOLD_cmp_ne_bool32(bool32_t x, bool32_t y);

Variant_t __MOLD_Typeof(Variant_t);

int32_t   __MOLD_VariantCastTo_int32(Variant_t *);
int64_t   __MOLD_VariantCastTo_int64(Variant_t *);
float32_t __MOLD_VariantCastTo_float32(Variant_t *);
float64_t __MOLD_VariantCastTo_float64(Variant_t *);
bool32_t  __MOLD_VariantCastTo_bool32(Variant_t *);

Variant_t __MOLD_Str(Variant_t);

void __MOLD_Exit();
void __MOLD_Die(Variant_t msg);

Variant_t __MOLD_GetTypeId(Variant_t x);
Variant_t __MOLD_Len(Variant_t x);
Variant_t __MOLD_Ord(Variant_t x);
Variant_t __MOLD_Asc(Variant_t x);

Variant_t __MOLD_Bitand(Variant_t x, Variant_t y);
Variant_t __MOLD_Bitor (Variant_t x, Variant_t y);
Variant_t __MOLD_Bitxor(Variant_t x, Variant_t y);

Variant_t __MOLD_SubStr(Variant_t x, Variant_t idx, Variant_t len);

Variant_t __MOLD_ParseInteger(Variant_t x);
Variant_t __MOLD_ParseFloat(Variant_t x);

Variant_t __MOLD_FileLoad(Variant_t path);

void __MOLD_VariantStringJoin(Variant_t *, Variant_t *, Variant_t *);

void __MOLD_PrintErrorAndDie_outOfMemory();
void __MOLD_PrintErrorAndDie_negativeIndex();
void __MOLD_PrintErrorAndDie_notIterable();
void __MOLD_PrintErrorAndDie_arrayOrStringExpected();
void __MOLD_PrintErrorAndDie_stringKeyExpected();
void __MOLD_PrintErrorAndDie_mapOrObjectExpected();
void __MOLD_PrintErrorAndDie_nullMethodCalled();
void __MOLD_PrintErrorAndDie_notImplemented();

void __MOLD_InitArgv(int, char **);
void __MOLD_InitExceptions();

Variant_t __MOLD_SysCall(uint32_t id, ...);

#endif /* _MoldCore_H */
