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

#ifndef _MoldVariantString_H
#define _MoldVariantString_H

#include "MoldCore.h"

typedef struct String
{
  uint64_t length;
  char text[];
} String_t;

void __MOLD_VariantStringCreateFromCString(Variant_t *rv, const char *text);

void __MOLD_VariantStringRelease(Variant_t *x);

void __MOLD_VariantStringJoin(Variant_t *dst,
                              const Variant_t *x,
                              const Variant_t *y);

bool32_t __MOLD_cmp_eq_string(const Variant_t *x, const Variant_t *y);
bool32_t __MOLD_cmp_ne_string(const Variant_t *x, const Variant_t *y);

Variant_t __MOLD_Str(Variant_t *x);

Variant_t __MOLD_SubStr(const Variant_t *x,
                        const Variant_t *idx,
                        const Variant_t *len);

uint32_t __MOLD_Ord(const Variant_t *x);

Variant_t __MOLD_Asc(const Variant_t *x);

void __MOLD_StrAndAssign(Variant_t *rv, Variant_t *x);

void __MOLD_SubStrAndAssign(Variant_t *rv,
                            const Variant_t *x,
                            const Variant_t *idx,
                            const Variant_t *len);

void __MOLD_AscAndAssign(Variant_t *rv, const Variant_t *x);

#endif /* _MoldVariantString_H */
