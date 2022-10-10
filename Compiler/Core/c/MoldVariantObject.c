#include <stdio.h>
#include <string.h>

#include "MoldVariantObject.h"
#include "MoldMemory.h"

Variant_t __MOLD_VariantObjectCreate(void **vtable)
{
  Variant_t rv = __MOLD_VariantMapCreate();

  rv.type = VARIANT_OBJECT;

  Object_t *obj = (Object_t *) rv.valueAsBufferPtr -> bytesPtr;
  obj -> vtable = vtable;

  return rv;
}
