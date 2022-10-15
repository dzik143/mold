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

#ifndef _MoldPrint_H
#define _MoldPrint_H

#include <stdio.h>
#include "MoldCore.h"

void __MOLD_PrintToFile_variant(FILE *f, Variant_t *x);

void __MOLD_VariantPrint(Variant_t x);
void __MOLD_Print_space();
void __MOLD_Print_EOL();

void __MOLD_Print_variant(Variant_t *x);
void __MOLD_Print_string(Variant_t x);
void __MOLD_Print_bool32(int32_t x);
void __MOLD_Print_int32(int32_t x);
void __MOLD_Print_int64(int64_t x);
void __MOLD_Print_float64(float64_t x);

#endif /* _MoldPrint_H */
