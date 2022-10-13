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
#include <string.h>

#include "MoldVariantObject.h"
#include "MoldMemory.h"

Variant_t __MOLD_VariantObjectCreate(void **vtable)
{
  Variant_t rv = __MOLD_VariantMapCreate();

  rv.type = VARIANT_OBJECT;

  Object_t *obj = (Object_t *) rv.valueAsBufferPtr -> bytesPtr;
  obj -> vtable = vtable;

  return rv;
}
