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

#ifndef _MoldMemory_H
#define _MoldMemory_H

#include <stdlib.h>
#include <stdint.h>

typedef struct Buffer
{
  uint64_t capacity;
   int64_t refCnt;
  uint64_t flags;
  void* bytesPtr;
} Buffer_t;


Buffer_t *__MOLD_MemoryAlloc(uint32_t sizeInBytes);

void __MOLD_MemoryAddRef(Buffer_t *buf);
void __MOLD_MemoryRelease(Buffer_t *buf);
void __MOLD_MemoryRealloc(Buffer_t *buf, uint64_t newCapacity);
void __MOLD_MemoryIncreaseBufferTwice(Buffer_t *buf);

#endif /* _MoldMemory_H */
