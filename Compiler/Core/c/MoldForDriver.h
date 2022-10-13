/*******************************************************************************
*                                                                              *
* This file is part of Mold project.                                           *
* Copyright (C) 2015, 2022 Sylwester Wysocki <sw143@wp.pl>                     *
*                                                                              *
* This program is free software: you can redistribute it and/or modify         *
* it under the terms of the GNU General Public License as published by         *
* the Free Software Foundation, either version 3 of the License, or            *
* (at your option) any later version.                                          *
*                                                                              *
* This program is distributed in the hope that it will be useful,              *
* but WITHOUT ANY WARRANTY; without even the implied warranty of               *
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the                *
* GNU General Public License for more details.                                 *
*                                                                              *
* You should have received a copy of the GNU General Public License            *
* along with this program. If not, see <http://www.gnu.org/licenses/>          *
*                                                                              *
*******************************************************************************/

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
