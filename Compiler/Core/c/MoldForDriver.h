#ifndef _MOLD_ForDriver_
#define _MOLD_ForDriver_

#include <MoldCore.h>
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
