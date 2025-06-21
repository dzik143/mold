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

#include <stdio.h>
#include <errhandlingapi.h>

#include "MoldError.h"
#include "MoldPrint.h"

#define MOLD_DEFINE_ERROR_FCT(id, msg) void __MOLD_PrintErrorAndDie_##id() { __MOLD_PrintErrorAndDie(msg); }

void __MOLD_Die(Variant_t msg)
{
  __MOLD_PrintToFile_variant(stderr, &msg);
  fprintf(stderr, "\n");
  exit(-1);
}

void __MOLD_PrintErrorAndDie(const char *msg)
{
  fprintf(stderr, "runtime error: %s\n", msg);
  //char *ptr = NULL;
  //ptr[0] = 0;
  exit(-1);
}

MOLD_DEFINE_ERROR_FCT(generic                  , "generic")
MOLD_DEFINE_ERROR_FCT(integerExpected          , "integer expected")
MOLD_DEFINE_ERROR_FCT(integerIndexExpected     , "integer index expected")
MOLD_DEFINE_ERROR_FCT(booleanExpected          , "boolean expected")
MOLD_DEFINE_ERROR_FCT(floatExpected            , "float expected")
MOLD_DEFINE_ERROR_FCT(stringKeyExpected        , "string key expected")
MOLD_DEFINE_ERROR_FCT(stringExpected           , "string expected")
MOLD_DEFINE_ERROR_FCT(mapOrObjectExpected      , "map or object expected")
MOLD_DEFINE_ERROR_FCT(objectExpected           , "object expected")
MOLD_DEFINE_ERROR_FCT(arrayExpected            , "array expected")
MOLD_DEFINE_ERROR_FCT(arrayOrStringExpected    , "array or string expected")
MOLD_DEFINE_ERROR_FCT(arrayStringOrMapExpected , "array, string or map expected")
MOLD_DEFINE_ERROR_FCT(negativeIndex            , "negative array index")
MOLD_DEFINE_ERROR_FCT(indexOutOfRange          , "index out of range")
MOLD_DEFINE_ERROR_FCT(outOfMemory              , "out of memory")
MOLD_DEFINE_ERROR_FCT(badType                  , "bad type")
MOLD_DEFINE_ERROR_FCT(notImplemented           , "not implemented")
MOLD_DEFINE_ERROR_FCT(implicitConversion       , "implicit type conversion not supported anymore")
MOLD_DEFINE_ERROR_FCT(notComparable            , "not comparable")
MOLD_DEFINE_ERROR_FCT(divideByZero             , "divide by zero")
MOLD_DEFINE_ERROR_FCT(floatOverflow            , "floating point overflow")
MOLD_DEFINE_ERROR_FCT(floatUnderflow           , "floating point underflow")
MOLD_DEFINE_ERROR_FCT(notIterable              , "not iterable")
MOLD_DEFINE_ERROR_FCT(nullMethodCalled         , "null method called")
MOLD_DEFINE_ERROR_FCT(vcallOnNonObject         , "virtual call on non-object")

LONG WINAPI __MOLD_SystemExceptionHandler(struct _EXCEPTION_POINTERS *ExceptionInfo)
{
  fflush(stdout);
  fflush(stderr);

  switch (ExceptionInfo -> ExceptionRecord -> ExceptionCode)
  {
    case 0xc00000be: __MOLD_PrintErrorAndDie_divideByZero();
    case 0xc0000091: __MOLD_PrintErrorAndDie_floatOverflow();
    case 0xc0000093: __MOLD_PrintErrorAndDie_floatUnderflow();
    case 0xc0000094: __MOLD_PrintErrorAndDie_divideByZero();

    default:
    {
      fprintf(stderr, "runtime error: generic %lx\n", ExceptionInfo -> ExceptionRecord -> ExceptionCode);
      abort();
    }
  }

  return EXCEPTION_CONTINUE_SEARCH;
}

void __MOLD_InitExceptions()
{
  AddVectoredExceptionHandler(1, __MOLD_SystemExceptionHandler);
  SetUnhandledExceptionFilter(__MOLD_SystemExceptionHandler);
}
