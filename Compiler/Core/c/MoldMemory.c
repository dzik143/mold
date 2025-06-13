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
#include <inttypes.h>
#include <string.h>
#include <assert.h>

#include "MoldError.h"
#include "MoldMemory.h"

static int _cntAlloc = 0;
static int _cntFree  = 0;

// ----------------------------------------------------------------------------
// Allocate new memory buffer.
//
// sizeInBytes - size of new buffer in bytes (IN).
//
// RETURNS: Pointer to new allocated Buffer_t struct.
// ----------------------------------------------------------------------------

Buffer_t *__MOLD_MemoryAlloc(uint32_t sizeInBytes)
{
  Buffer_t *rv;
  uint32_t alignedCapacity;
  void *bytesPtr;

  // Align size to 64 bytes.
  alignedCapacity = (sizeInBytes + 64) & ~63;

  // Allocate Buffer_t holder.
  rv = malloc(sizeof(Buffer_t));

  if (rv == NULL)
  {
    __MOLD_PrintErrorAndDie_outOfMemory();
  }

  // Allocate new memory block.
  bytesPtr = calloc(1, alignedCapacity);

  // Set up Buffer_t struct.
  rv -> capacity = alignedCapacity;
  rv -> refCnt   = 1;
  rv -> flags    = 0;
  rv -> bytesPtr = bytesPtr;

  _cntAlloc++;

  // printf("[ MEMORY ] allocated buffer, capacity %d, ptr %p\n", alignedCapacity, rv);

  return rv;
}

// ----------------------------------------------------------------------------
// Increase buffer reference pointer.
//
// sizeInBytes - size of new buffer in bytes (IN).
//
// RETURNS: Pointer to new allocated Buffer_t struct.
// ----------------------------------------------------------------------------

void __MOLD_MemoryAddRef(Buffer_t *buf)
{
  if (buf -> refCnt != -1)
  {
    buf -> refCnt++;

    // printf("[ MEMORY ] increased refCnt to %"PRId64", ptr %p\n", buf -> refCnt, buf);
  }
}

// ----------------------------------------------------------------------------
// Decrease buffer reference counter and free it if reaches 0.
//
// buf - pointer to the Buffer_t struct allocated by __MOLD_MemoryAlloc()
//       before (IN/OUT).
// ----------------------------------------------------------------------------

void __MOLD_MemoryRelease(Buffer_t *buf)
{
  assert(buf -> refCnt != 0);

  if (buf -> refCnt != -1)
  {
    buf -> refCnt--;
    // printf("[ MEMORY ] decreased refCnt to %"PRId64", ptr %p\n", buf -> refCnt, buf);

    if (buf -> refCnt == 0)
    {
      free(buf -> bytesPtr);

      *((uint64_t *) (&buf -> bytesPtr)) = 0xdeadbeef;

      free(buf);
      _cntFree++;

      // printf("[ MEMORY ] freed buffer, ptr %p\n", buf);
    }
  };
}

// ----------------------------------------------------------------------------
// Change (increase or decrease) buffer size to the desired value.
//
// buf - pointer to Buffer_t struct allocated by __MOLD_MemoryAlloc
//       before (IN).
//
// newCapacity - desired size in bytes (IN).
// ----------------------------------------------------------------------------

void __MOLD_MemoryRealloc(Buffer_t *buf, uint64_t newCapacity)
{
  if (buf -> refCnt != -1)
  {
    // Align new capacity to 64-bytes.
    newCapacity = (newCapacity + 64) & ~63;

    // Allocate new bytes buffer.
    uint32_t oldCapacity = buf -> capacity;

    void *newBytesPtr = realloc(buf -> bytesPtr, newCapacity);

    if (newBytesPtr == NULL)
    {
      __MOLD_PrintErrorAndDie_outOfMemory();
    }

    // Zero fill new allocated content.
    memset(newBytesPtr + oldCapacity, 0, newCapacity - oldCapacity);

    // Set up buffer struct.
    buf -> bytesPtr = newBytesPtr;
    buf -> capacity = newCapacity;

    // printf("[ MEMORY ] realloc buffer, newCapacity %"PRId64", ptr %p\n", newCapacity, buf);
  }
}

// ----------------------------------------------------------------------------
// Increase buffer capacity twice.
//
// buf - pointer to Buffer_t struct allocated by __MOLD_MemoryAlloc before (IN).
//
// RETURNS: Pointer to new Buffer_t struct.
// ----------------------------------------------------------------------------

void __MOLD_MemoryIncreaseBufferTwice(Buffer_t *buf)
{
  __MOLD_MemoryRealloc(buf, buf -> capacity * 2);
}

// ----------------------------------------------------------------------------
//
// ----------------------------------------------------------------------------

void __MOLD_MemoryDieIfMemoryLeak()
{
  if (_cntAlloc != _cntFree)
  {
    // fprintf(stderr, "error: memory leak detected (alloc=%d, free=%d)!\n", _cntAlloc, _cntFree);
  }
}
