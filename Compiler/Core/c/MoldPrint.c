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

#include <inttypes.h>

#include "MoldError.h"
#include "MoldCore.h"
#include "MoldVariantString.h"
#include "MoldForDriver.h"
#include "MoldPrint.h"

// -----------------------------------------------------------------------------
// Print variant variable to the C stream.
//
// f - output C stream e.g. stdout (IN),
// x - variable to be printed (IN).
// -----------------------------------------------------------------------------

void __MOLD_PrintToFile_variant(FILE *f, Variant_t *x)
{
  switch (x -> type)
  {
    // ------------------------------------------------------------------------
    //                         Print primitives
    // ------------------------------------------------------------------------

    case VARIANT_UNDEFINED: { fprintf(f, "undefined"); break; }
    case VARIANT_NULL:      { fprintf(f, "null"); break; }
    case VARIANT_INTEGER:   { fprintf(f, "%"PRId64, x -> valueAsInt64); break; }
    case VARIANT_FLOAT:     { fprintf(f, "%f", x -> valueAsFloat32); break; }
    case VARIANT_DOUBLE:    { fprintf(f, "%lf", x -> valueAsFloat64); break; }

    case VARIANT_BOOLEAN:
    {
      fprintf(f, "%s", (x -> valueAsInt32) ? "true" : "false");
      break;
    }

    // ------------------------------------------------------------------------
    //                           Print string
    // ------------------------------------------------------------------------

    case VARIANT_STRING:
    {
      if (x -> flags & VARIANT_FLAG_ONE_CHARACTER) {
        // One character string.
        // Just put single char directly.
        putchar(x -> value);

      } else {
        // Multicharacter string.
        // Decode string buffer first.
        Buffer_t *buf = (Buffer_t *) x -> value;
        String_t *str = (String_t *) buf -> bytesPtr;
        fprintf(f, "%s", str -> text);
      }

      break;
    }

    // ------------------------------------------------------------------------
    //                          Print array[]
    // ------------------------------------------------------------------------

    case VARIANT_ARRAY:
    {
      Variant_t oneItem;

      const char *sep = "";

      fprintf(f, "[");

      void _printOneItem()
      {
        fprintf(f, sep);

        if (oneItem.type == VARIANT_STRING)
        {
          putc('\'', f);
          __MOLD_PrintToFile_variant(f, &oneItem);
          putc('\'', f);
        }
        else
        {
          __MOLD_PrintToFile_variant(f, &oneItem);
        }

        sep = ", ";
      }

      __MOLD_ForDriver_Generic(x, NULL, &oneItem, &_printOneItem);

      fprintf(f, "]");

      break;
    }

    // ------------------------------------------------------------------------
    //                        Print key, value map{}
    // ------------------------------------------------------------------------

    case VARIANT_MAP:
    {
      Variant_t oneKey;
      Variant_t oneValue;

      const char *sep = "";

      fprintf(f, "{");

      void _printOneKeyValuePair()
      {
        fprintf(f, "%s'", sep);
        __MOLD_PrintToFile_variant(f, &oneKey);
        fprintf(f, "': ");

        if (oneValue.type == VARIANT_STRING)
        {
          putc('\'', f);
          __MOLD_PrintToFile_variant(f, &oneValue);
          putc('\'', f);
        }
        else
        {
          __MOLD_PrintToFile_variant(f, &oneValue);
        }

        sep = ", ";
      }

      __MOLD_ForDriver_Generic(x, &oneKey, &oneValue, &_printOneKeyValuePair);

      putc('}', f);

      break;
    }

    // ------------------------------------------------------------------------
    //                        TODO: Print object
    // ------------------------------------------------------------------------

    case VARIANT_OBJECT:
    {
      fprintf(f, "[object]");
      break;
    }

    default:
    {
      __MOLD_PrintErrorAndDie_badType();
    }
  }
}

// -----------------------------------------------------------------------------
//         Helper wrappers to print single variable to the stdout
// -----------------------------------------------------------------------------

void __MOLD_Print_space() { printf(" "); }
void __MOLD_Print_EOL()   { printf("\n"); }

void __MOLD_Print_string(Variant_t x)  { __MOLD_Print_variant(&x); }
void __MOLD_Print_int32(int32_t x)     { printf("%d", x); }
void __MOLD_Print_int64(int64_t x)     { printf("%"PRId64, x); }
void __MOLD_Print_float64(float64_t x) { printf("%lf", x); }
void __MOLD_Print_bool32(int32_t x)    { printf(x ? "true" : "false"); }

void __MOLD_Print_variant(Variant_t *x)
{
  __MOLD_PrintToFile_variant(stdout, x);
}

void __MOLD_VariantPrint(Variant_t x) { __MOLD_Print_variant(&x); }
