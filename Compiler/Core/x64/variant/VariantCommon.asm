;###############################################################################
;                                  Aliases
;###############################################################################

; TODO: Clean up this mess.
__MOLD_Variant_add  EQU __MOLD_VariantAdd
__MOLD_Variant_sub  EQU __MOLD_VariantSub
__MOLD_Variant_mul  EQU __MOLD_VariantMul
__MOLD_Variant_div  EQU __MOLD_VariantDiv
__MOLD_Variant_idiv EQU __MOLD_VariantDivAsInteger

__MOLD_Variant_cmp_eq EQU __MOLD_VariantCompareEQ
__MOLD_Variant_cmp_ne EQU __MOLD_VariantCompareNE
__MOLD_Variant_cmp_gt EQU __MOLD_VariantCompareGT
__MOLD_Variant_cmp_ge EQU __MOLD_VariantCompareGE
__MOLD_Variant_cmp_lt EQU __MOLD_VariantCompareLT
__MOLD_Variant_cmp_le EQU __MOLD_VariantCompareLE

;###############################################################################
;                                  Constants
;###############################################################################

; Special cases - undefined and null.
VARIANT_UNDEFINED EQU 0
VARIANT_NULL      EQU 1

; Primitives.
VARIANT_INTEGER   EQU 2
VARIANT_FLOAT     EQU 3
VARIANT_DOUBLE    EQU 4
VARIANT_STRING    EQU 5
VARIANT_BOOLEAN   EQU 6

; Complex containers.
VARIANT_ARRAY     EQU 7
VARIANT_MAP       EQU 8
VARIANT_OBJECT    EQU 9
VARIANT_TYPE_MAX  EQU 9

VARIANT_FLAG_DUPLICATE_ON_FIRST_WRITE EQU 1
VARIANT_FLAG_ONE_CHARACTER            EQU 2

VARIANT_MAP_DEFAULT_BUCKETS_CNT    EQU 16
VARIANT_OBJECT_DEFAULT_BUCKETS_CNT EQU 16
VARIANT_ARRAY_DEFAULT_ITEMS_CNT    EQU 16

VARIANT_ARRAY_DEFAULT_BUFFER_SIZE  EQU 16 * VARIANT_ARRAY_DEFAULT_ITEMS_CNT + 16
VARIANT_MAP_DEFAULT_BUFFER_SIZE    EQU 36 * VARIANT_MAP_DEFAULT_BUCKETS_CNT + 32
VARIANT_OBJECT_DEFAULT_BUFFER_SIZE EQU 36 * VARIANT_OBJECT_DEFAULT_BUCKETS_CNT + 32

VARIANT_STRING_DEFAULT_BUFFER_SIZE EQU 16

MAX_STRING_LENGTH EQU 1024*1024

struct Variant_t
  type  dd ?
  flags dd ?
  value dq ?
ends

struct StringHead_t
  length dq ?
ends

struct String_t
  length dq ?
  text   db ?
ends

struct Array_t
  innerType dd ?
  itemSize  db ?
  reserved1 db ?
  reserved2 db ?
  reserved3 db ?
  itemsCnt  dq ?
  items     Variant_t ?
ends

struct MapBucket_t
  key Variant_t ?
  val Variant_t ?
ends

struct Map_t
  reserved       dq ?
  bucketsUsedCnt dq ?
  bucketsCnt     dq ?
  buckets        MapBucket_t ?
ends

struct Object_t
  vtable         dq ?
  bucketsUsedCnt dq ?
  bucketsCnt     dq ?
  buckets        MapBucket_t ?
ends
