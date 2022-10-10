#include <stdio.h>
#include <string.h>
#include "MoldMemory.h"

// -----------------------------------------------------------------------------
// Allocate new memory buffer.
//
// sizeInBytes - size of new buffer in bytes (IN).
//
// RETURNS: Pointer to new allocated Buffer_t struct.
// -----------------------------------------------------------------------------

Buffer_t *__MOLD_MemoryAlloc(uint32_t sizeInBytes)
{
  Buffer_t *rv;
  uint32_t alignedCapacity;
  void *bytesPtr;

  // Align size to 64 bytes.
  alignedCapacity = (sizeInBytes + 64) & ~63;

  // Allocate Buffer_t holder.
  rv = malloc(sizeof(Buffer_t));

  // Allocate new memory block.
  bytesPtr = calloc(1, alignedCapacity);

  // Set up Buffer_t struct.
  rv -> capacity = alignedCapacity;
  rv -> refCnt   = 1;
  rv -> flags    = 0;
  rv -> bytesPtr = bytesPtr;

  return rv;
}

void __MOLD_MemoryAddRef(Buffer_t *buf)
{
  if (buf -> refCnt != -1)
  {
    buf -> refCnt++;
  }
}

void __MOLD_MemoryRelease(Buffer_t *buf)
{
  // printf("[ MEMORY ] Releasing buf PTR %p\n", buf);

  if (buf -> refCnt != -1)
  {
    buf -> refCnt--;

    if (buf -> refCnt == 0)
    {
      free(buf -> bytesPtr);
      free(buf);
    }
  }
}

void __MOLD_MemoryRealloc(Buffer_t *buf, uint64_t newCapacity)
{
  if (buf -> refCnt != -1)
  {
    // printf("[ MEMORY ] Realloc [buf %p][newCapacity %d]\n", buf, newCapacity);

    // Align new capacity to 64-bytes.
    newCapacity = (newCapacity + 64) & ~63;

    // Allocate new bytes buffer.
    uint32_t oldCapacity = buf -> capacity;

    void *newBytesPtr = realloc(buf -> bytesPtr, newCapacity);

    // Zero fill new allocated content.
    memset(newBytesPtr + oldCapacity, 0, newCapacity - oldCapacity);

    // Set up buffer struct.
    buf -> bytesPtr = newBytesPtr;
    buf -> capacity = newCapacity;
  }
}

void __MOLD_MemoryIncreaseBufferTwice(Buffer_t *buf)
{
  __MOLD_MemoryRealloc(buf, buf -> capacity * 2);
}
