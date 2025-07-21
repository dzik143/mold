/**************************************************************************/
/* This file is part of Mold project.                                     */
/* Copyright (C) 2015, 2025 Sylwester Wysocki <sw143@wp.pl>               */
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

#ifndef _MoldString_H
#define _MoldString_H

#include <stdint.h>
#include "MoldMemoryPool.h"

typedef uint32_t MoldStringId_t;

void     __MOLD_String_init();
uint32_t __MOLD_String_importLiterals(const char *literals);

void __MOLD_String_setFromCString(MoldStringId_t id, const char *text, int32_t len);

MoldStringId_t __MOLD_String_createFromCString(const char *text, int32_t len);

void __MOLD_String_addRef (MoldStringId_t x);
void __MOLD_String_release(MoldStringId_t x);

void __MOLD_String_join(MoldStringId_t dst, MoldStringId_t x);

MoldStringId_t __MOLD_String_join3(MoldStringId_t x, MoldStringId_t y);

void __MOLD_String_print(FILE *f, MoldStringId_t id);

const char *__MOLD_String_getText  (MoldStringId_t id);
uint32_t    __MOLD_String_getLength(MoldStringId_t id);

uint32_t __MOLD_String_cmp_eq(MoldStringId_t x, MoldStringId_t y);
uint32_t __MOLD_String_substr(MoldStringId_t x, uint32_t idx, int32_t len);

// Debug only.
void  __MOLD_String_dumpAll();

#endif /* _MoldString_H */
