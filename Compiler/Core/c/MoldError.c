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

#include <stdio.h>
#include <errhandlingapi.h>

#include "MoldError.h"
#include "MoldPrint.h"

static const char *errorMsg_generic                  = "generic";
static const char *errorMsg_integerExpected          = "integer expected";
static const char *errorMsg_integerIndexExpected     = "integer index expected";
static const char *errorMsg_booleanExpected          = "boolean expected";
static const char *errorMsg_floatExpected            = "float expected";
static const char *errorMsg_stringKeyExpected        = "string key expected";
static const char *errorMsg_stringExpected           = "string expected";
static const char *errorMsg_mapOrObjectExpected      = "map or object expected";
static const char *errorMsg_arrayExpected            = "array expected";
static const char *errorMsg_arrayOrStringExpected    = "array or string expected";
static const char *errorMsg_arrayStringOrMapExpected = "array, string or map expected";
static const char *errorMsg_negativeIndex            = "negative array index";
static const char *errorMsg_indexOutOfRange          = "index out of range";
static const char *errorMsg_outOfMemory              = "out of memory";
static const char *errorMsg_badType                  = "bad type";
static const char *errorMsg_notImplemented           = "not implemented";
static const char *errorMsg_implicitConversion       = "implicit type conversion not supported anymore";
static const char *errorMsg_notComparable            = "not comparable";
static const char *errorMsg_divideByZero             = "divide by zero";
static const char *errorMsg_floatOverflow            = "floating point overflow";
static const char *errorMsg_floatUnderflow           = "floating point underflow";
static const char *errorMsg_notIterable              = "not iterable";
static const char *errorMsg_nullMethodCalled         = "null method called";

void __MOLD_PrintErrorAndDie(const char *msg)
{
  fprintf(stderr, "runtime error: %s\n", msg);

  //char *ptr = NULL;
  //ptr[0] = 0;

  exit(-1);
}

void __MOLD_PrintErrorAndDie_badType()               { __MOLD_PrintErrorAndDie(errorMsg_badType); }
void __MOLD_PrintErrorAndDie_stringExpected()        { __MOLD_PrintErrorAndDie(errorMsg_stringExpected); }
void __MOLD_PrintErrorAndDie_stringKeyExpected()     { __MOLD_PrintErrorAndDie(errorMsg_stringKeyExpected); }
void __MOLD_PrintErrorAndDie_integerExpected()       { __MOLD_PrintErrorAndDie(errorMsg_integerExpected); }
void __MOLD_PrintErrorAndDie_floatExpected()         { __MOLD_PrintErrorAndDie(errorMsg_floatExpected); }
void __MOLD_PrintErrorAndDie_booleanExpected()       { __MOLD_PrintErrorAndDie(errorMsg_booleanExpected); }
void __MOLD_PrintErrorAndDie_arrayOrStringExpected() { __MOLD_PrintErrorAndDie(errorMsg_arrayOrStringExpected); }
void __MOLD_PrintErrorAndDie_mapOrObjectExpected()   { __MOLD_PrintErrorAndDie(errorMsg_mapOrObjectExpected); }
void __MOLD_PrintErrorAndDie_outOfMemory()           { __MOLD_PrintErrorAndDie(errorMsg_outOfMemory); }
void __MOLD_PrintErrorAndDie_negativeIndex()         { __MOLD_PrintErrorAndDie(errorMsg_negativeIndex); }
void __MOLD_PrintErrorAndDie_notIterable()           { __MOLD_PrintErrorAndDie(errorMsg_notIterable); }
void __MOLD_PrintErrorAndDie_nullMethodCalled()      { __MOLD_PrintErrorAndDie(errorMsg_nullMethodCalled); }
void __MOLD_PrintErrorAndDie_notImplemented()        { __MOLD_PrintErrorAndDie(errorMsg_notImplemented); }
void __MOLD_PrintErrorAndDie_notComparable()         { __MOLD_PrintErrorAndDie(errorMsg_notComparable); }
void __MOLD_PrintErrorAndDie_implicitConversion()    { __MOLD_PrintErrorAndDie(errorMsg_implicitConversion); }
void __MOLD_PrintErrorAndDie_divideByZero()          { __MOLD_PrintErrorAndDie(errorMsg_divideByZero); }
void __MOLD_PrintErrorAndDie_floatOverflow()         { __MOLD_PrintErrorAndDie(errorMsg_floatOverflow); }
void __MOLD_PrintErrorAndDie_floatUnderflow()        { __MOLD_PrintErrorAndDie(errorMsg_floatUnderflow); }

void __MOLD_Die(Variant_t msg)
{
  __MOLD_PrintToFile_variant(stderr, &msg);
  fprintf(stderr, "\n");
  exit(-1);
}

LONG WINAPI RedirectedSetUnhandledExceptionFilter(EXCEPTION_POINTERS *ExceptionInfo)
{

  // When the CRT calls SetUnhandledExceptionFilter with NULL parameter
  // our handler will not get removed.
  return 0;
}


LONG WINAPI __MOLD_SystemExceptionHandler(struct _EXCEPTION_POINTERS *ExceptionInfo)
{
  switch (ExceptionInfo -> ExceptionRecord -> ExceptionCode)
  {
    case 0xc00000be: __MOLD_PrintErrorAndDie_divideByZero();
    case 0xc0000091: __MOLD_PrintErrorAndDie_floatOverflow();
    case 0xc0000093: __MOLD_PrintErrorAndDie_floatUnderflow();
    case 0xc0000094: __MOLD_PrintErrorAndDie_divideByZero();

    default:
    {
    }
  }

  return EXCEPTION_CONTINUE_SEARCH;
}

void __MOLD_InitExceptions()
{
  AddVectoredExceptionHandler(1, __MOLD_SystemExceptionHandler);
  SetUnhandledExceptionFilter(__MOLD_SystemExceptionHandler);
}
