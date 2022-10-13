#ifndef _MoldVariantString_H
#define _MoldVariantString_H

#include "MoldCore.h"

typedef struct String
{
  uint64_t length;
  char text[];
} String_t;

bool32_t __MOLD_cmp_eq_string(Variant_t x, Variant_t y);
bool32_t __MOLD_cmp_ne_string(Variant_t x, Variant_t y);

void __MOLD_VariantStringJoin(Variant_t *, Variant_t *, Variant_t *);

Variant_t __MOLD_SubStr(Variant_t x, Variant_t idx, Variant_t len);

#endif /* _MoldVariantString_H */
