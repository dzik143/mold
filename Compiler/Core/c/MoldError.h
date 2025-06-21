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

#include <assert.h>
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
void __MOLD_PrintErrorAndDie_objectExpected();
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
void __MOLD_PrintErrorAndDie_vcallOnNonObject();

#define ASSERT_VARIANT_ENABLED

#ifdef ASSERT_VARIANT_ENABLED

# define ASSERT_VARIANT_PTR_ANY(x) \
  assert((x) != NULL); \
  assert((x) -> type >= 0); \
  assert((x) -> type <= VARIANT_TYPE_MAX); \
  assert((x) -> flags != 0xdeadbeef); \
  assert((x) -> flags >> 3 == 0); \
  assert((x) -> valueAsInt64 != 0xdeadbeef); \
  assert((x) -> valueAsInt64 != 0xfeeefeeefeeefeee);

# define ASSERT_VARIANT_PTR_INTEGER(x) \
  ASSERT_VARIANT_PTR_ANY(x) \
  assert((x) -> type == VARIANT_INTEGER);

# define ASSERT_VARIANT_PTR_COMPLEX(x) \
  ASSERT_VARIANT_PTR_ANY(x) \
  assert(((x) -> type == VARIANT_STRING) || ((x) -> type >= VARIANT_ARRAY)); \
  assert((x) -> valueAsBufferPtr != NULL); \
  assert((x) -> valueAsBufferPtr -> refCnt != 0); \
  assert((x) -> valueAsBufferPtr -> bytesPtr != NULL); \
  assert((int64_t)((x) -> valueAsBufferPtr -> bytesPtr) != 0xdeadbeef); \
  assert((int64_t)((x) -> valueAsBufferPtr -> bytesPtr) != 0xfeeefeeefeeefeee);

# define ASSERT_VARIANT_PTR_ARRAY(x) \
  ASSERT_VARIANT_PTR_COMPLEX(x) \
  assert((x) -> type == VARIANT_ARRAY); \

# define ASSERT_VARIANT_PTR_MAP_OR_OBJECT(x) \
  ASSERT_VARIANT_PTR_COMPLEX(x) \
  assert(((x) -> type == VARIANT_MAP) || ((x) -> type == VARIANT_OBJECT)); \
  assert(((Map_t*)(x) -> valueAsBufferPtr -> bytesPtr) -> bucketsCnt >= 2);

# define ASSERT_VARIANT_PTR_MAP(x) \
  ASSERT_VARIANT_PTR_MAP_OR_OBJECT(x) \
  assert((x) -> type == VARIANT_MAP);

# define ASSERT_VARIANT_PTR_OBJECT(x) \
  ASSERT_VARIANT_PTR_MAP_OR_OBJECT(x) \
  assert((x) -> type == VARIANT_OBJECT);

# define ASSERT_VARIANT_PTR_STRING(x) \
  ASSERT_VARIANT_PTR_ANY(x) \
  assert((x) -> type == VARIANT_STRING); \
  if (((x) -> flags & VARIANT_FLAG_ONE_CHARACTER) == 0) { \
    assert((x) -> valueAsBufferPtr != NULL); \
    assert((x) -> valueAsBufferPtr -> refCnt != 0); \
    assert((x) -> valueAsBufferPtr -> bytesPtr != NULL); \
    assert((uint64_t)((x) -> valueAsBufferPtr -> bytesPtr) != 0xdeadbeef); \
    assert((uint64_t)((x) -> valueAsBufferPtr -> bytesPtr) != 0xfeeefeeefeeefeee); \
  }

# define ASSERT_VARIANT_PTR_ARRAY_OR_STRING(x) \
  ASSERT_VARIANT_PTR_ANY(x) \
  assert(((x) -> type == VARIANT_ARRAY) || ((x) -> type == VARIANT_STRING)); \
  if ((x) -> type == VARIANT_ARRAY)  { ASSERT_VARIANT_PTR_ARRAY(x); } \
  if ((x) -> type == VARIANT_STRING) { ASSERT_VARIANT_PTR_STRING(x); }

#else

# define ASSERT_VARIANT_PTR_ANY(x)
# define ASSERT_VARIANT_PTR_INTEGER(x)
# define ASSERT_VARIANT_PTR_COMPLEX(x)
# define ASSERT_VARIANT_PTR_ARRAY(x)
# define ASSERT_VARIANT_PTR_MAP_OR_OBJECT(x)
# define ASSERT_VARIANT_PTR_MAP(x)
# define ASSERT_VARIANT_PTR_OBJECT(x)
# define ASSERT_VARIANT_PTR_STRING(x)
# define ASSERT_VARIANT_PTR_ARRAY_OR_STRING(x)

#endif /* VARIANT_ASSERT_ENABLED */

#endif /* _Mold_Error_H */
