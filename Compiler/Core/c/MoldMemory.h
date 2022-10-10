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
