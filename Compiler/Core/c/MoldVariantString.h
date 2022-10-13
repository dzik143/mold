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

bool32_t __MOLD_cmp_eq_string(Variant_t x, Variant_t y);
bool32_t __MOLD_cmp_ne_string(Variant_t x, Variant_t y);

void __MOLD_VariantStringJoin(Variant_t *, Variant_t *, Variant_t *);

Variant_t __MOLD_Str(Variant_t);
Variant_t __MOLD_SubStr(Variant_t x, Variant_t idx, Variant_t len);

#endif /* _MoldVariantString_H */
