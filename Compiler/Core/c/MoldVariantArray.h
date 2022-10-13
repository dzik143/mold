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

#ifndef _MoldVariantArray_H
#define _MoldVariantArray_H

#include "MoldCore.h"

// TODO: Simplify it.
typedef struct Array
{
  uint32_t innerType;
  uint8_t itemSize;
  uint8_t reserved1;
  uint8_t reserved2;
  uint8_t reserved3;
  uint64_t itemsCnt;
  Variant_t items[];
} Array_t;

typedef struct Array_int8
{
  uint32_t innerType;
  uint8_t itemSize;
  uint8_t reserved1;
  uint8_t reserved2;
  uint8_t reserved3;
  uint64_t itemsCnt;
  int8_t items[];
} Array_int8_t;

typedef struct Array_int16
{
  uint32_t innerType;
  uint8_t itemSize;
  uint8_t reserved1;
  uint8_t reserved2;
  uint8_t reserved3;
  uint64_t itemsCnt;
  int16_t items[];
} Array_int16_t;

typedef struct Array_int32
{
  uint32_t innerType;
  uint8_t itemSize;
  uint8_t reserved1;
  uint8_t reserved2;
  uint8_t reserved3;
  uint64_t itemsCnt;
  int32_t items[];
} Array_int32_t;

typedef struct Array_int64
{
  uint32_t innerType;
  uint8_t itemSize;
  uint8_t reserved1;
  uint8_t reserved2;
  uint8_t reserved3;
  uint64_t itemsCnt;
  int64_t items[];
} Array_int64_t;

Variant_t __MOLD_VariantArrayCreate();
Variant_t __MOLD_VariantArrayCreateFromInitList(Variant_t initArray);
Variant_t __MOLD_VariantLoadFromIndex(Variant_t box, int32_t idx);

void __MOLD_VariantStoreAtIndex_variant(Variant_t *box, int32_t idx, Variant_t value);
void __MOLD_VariantStoreAtIndex_string(Variant_t *box, int32_t idx, Variant_t value);
void __MOLD_VariantStoreAtIndex_int32(Variant_t *box, int32_t idx, int32_t value);
void __MOLD_VariantStoreAtIndex_int64(Variant_t *box, int32_t idx, int64_t value);
void __MOLD_VariantStoreAtIndex_bool32(Variant_t *box, int32_t idx, bool32_t value);
void __MOLD_VariantStoreAtIndex_float64(Variant_t *box, int32_t idx, float64_t value);

void __MOLD_ArrayInsertAfterLast(Variant_t box, Variant_t value);

#endif /* _MoldVariantArray_H */
