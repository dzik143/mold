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

#ifndef _MoldError_H
#define _MoldError_H

#include "MoldCore.h"

void __MOLD_Die(Variant_t msg);
void __MOLD_PrintErrorAndDie(const char *msg);
void __MOLD_InitExceptions();

void __MOLD_PrintErrorAndDie_generic();
void __MOLD_PrintErrorAndDie_integerExpected();
void __MOLD_PrintErrorAndDie_integerIndexExpected();
void __MOLD_PrintErrorAndDie_booleanExpected();
void __MOLD_PrintErrorAndDie_floatExpected();
void __MOLD_PrintErrorAndDie_stringKeyExpected();
void __MOLD_PrintErrorAndDie_stringExpected();
void __MOLD_PrintErrorAndDie_mapOrObjectExpected();
void __MOLD_PrintErrorAndDie_arrayExpected();
void __MOLD_PrintErrorAndDie_arrayOrStringExpected();
void __MOLD_PrintErrorAndDie_arrayStringOrMapExpected();
void __MOLD_PrintErrorAndDie_negativeIndex();
void __MOLD_PrintErrorAndDie_indexOutOfRange();
void __MOLD_PrintErrorAndDie_outOfMemory();
void __MOLD_PrintErrorAndDie_badType();
void __MOLD_PrintErrorAndDie_notImplemented();
void __MOLD_PrintErrorAndDie_implicitConversion();
void __MOLD_PrintErrorAndDie_notComparable();
void __MOLD_PrintErrorAndDie_divideByZero();
void __MOLD_PrintErrorAndDie_floatOverflow();
void __MOLD_PrintErrorAndDie_floatUnderflow();
void __MOLD_PrintErrorAndDie_notIterable();
void __MOLD_PrintErrorAndDie_nullMethodCalled();

#endif /* _Mold_Error_H */
