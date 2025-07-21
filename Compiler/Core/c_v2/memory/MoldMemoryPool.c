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

#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <assert.h>

#include "MoldMemoryCore.h"
#include "MoldMemoryPool.h"

// -----------------------------------------------------------------------------
//                                 Constants
// -----------------------------------------------------------------------------

static uint32_t _g_defaultPoolSize = 1024 * 1024 * 64;
static uint32_t _g_defaultItemsCnt = 1024 * 1024;

#define MAX(x,y) ((x)>(y)?(x):(y))
#define MIN(x,y) ((x)<(y)?(x):(y))

// -----------------------------------------------------------------------------
//                          Internal implementation
// -----------------------------------------------------------------------------

/*
void static __MOLD_TooManyMemoryPoolItemsError() {
  fprintf(stderr, "[ MoldMemoryPool ] runtime error: too many items in the memory pool\n");
  exit(-1);
} */
/*
void static __MOLD_IndexOutOfBound() {
  fprintf(stderr, "[ MoldMemoryPool ] runtime error: index out of bound\n");
  exit(-1);
} */

static int _compareIndexes(void *ctx, const void *a, const void *b) {
  int *offsets = (int *) ctx;
  int idxA = *(int *) a;
  int idxB = *(int *) b;
  return offsets[idxA] - offsets[idxB];
}

static void __MOLD_MemoryPool_vacuum(MoldMemoryPool_t *mmp) {
  uint32_t newDataSizeUsed = 0;

  //printf("VACUUM BEGIN\n");
  //__MOLD_MemoryPool_dumpAll(mmp);

  // REVIEW IT
  int *sortedIndexes = malloc(mmp -> itemOffsetsUsed * sizeof(mmp -> itemOffsets[0]));
  for (int i = 0; i < mmp -> itemOffsetsUsed; i++) {
    sortedIndexes[i] = i;
  }

  // Sort indexes by offsets.
  qsort_s(sortedIndexes,
          mmp -> itemOffsetsUsed,
          sizeof(mmp -> itemOffsets[0]),
          _compareIndexes,
          mmp -> itemOffsets);

  // END OF REVIEW IT

  for (uint32_t iidx = 0; iidx < mmp -> itemOffsetsUsed; iidx++) {
    uint32_t idx = sortedIndexes[iidx];

    //printf("str[%d] = (%d,%d,%d)'", idx, mmp -> itemOffsets[idx], mmp -> itemSizes[idx], mmp -> itemRefCounters[idx]);
    //__MOLD_MemoryPool_print(mmp, idx, stdout);
    //printf("'\n");

    memcpy(mmp -> data + newDataSizeUsed,
           mmp -> data + mmp -> itemOffsets[idx],
           mmp -> itemSizes[idx]);

    mmp -> itemOffsets[idx] = newDataSizeUsed;

    newDataSizeUsed += mmp -> itemSizes[idx];
  }

  mmp -> dataSizeUsed      = newDataSizeUsed;
  mmp -> dataSizeFreed     = 0;
  mmp -> dataSizeAllocated = MAX(newDataSizeUsed * 2, mmp -> dataSizeAllocated);

  //printf("[ MoldMemoryPool ] Vacuum to %dK bytes, %d items, new threshold %d\n",
  //       mmp -> dataSizeAllocated / 1024,
  //       mmp -> itemOffsetsUsed,
  //       mmp -> dataSizeAllocated);

  //__MOLD_MemoryPool_dumpAll(mmp);

  free(sortedIndexes);
}

// -----------------------------------------------------------------------------
//                                Public API
// -----------------------------------------------------------------------------

void __MOLD_MemoryPool_init(MoldMemoryPool_t *mmp) {
  mmp -> data              = (uint8_t *) __MOLD_Memory_reserveRawBuffer(_g_defaultPoolSize);
  mmp -> dataSizeAllocated = 4 * 1024;
  mmp -> dataSizeUsed      = 1;
  mmp -> dataSizeFreed     = 0;
  mmp -> isWriting         = 0;

  mmp -> itemOffsets     = (uint32_t *) calloc(_g_defaultItemsCnt * sizeof(uint32_t), 1);
  mmp -> itemOffsetsUsed = 0;
  mmp -> itemSizes       = (uint32_t *) calloc(_g_defaultItemsCnt * sizeof(uint32_t), 1);
  mmp -> itemRefCounters =  (int32_t *) calloc(_g_defaultItemsCnt * sizeof(uint32_t), 1);
}

void __MOLD_MemoryPool_addRef(MoldMemoryPool_t *mmp, uint32_t idx) {
  assert(idx < mmp -> itemOffsetsUsed);
  if (mmp -> itemRefCounters[idx] != -1) {
    mmp -> itemRefCounters[idx]++;
    // printf("[MoldMemoryPool] Increased refCount to %d at slot %d\n", mmp -> itemRefCounters[idx], idx);
  }
}

void __MOLD_MemoryPool_release(MoldMemoryPool_t *mmp, uint32_t idx) {
  assert(idx < mmp -> itemOffsetsUsed);
  if (mmp -> itemRefCounters[idx] != -1) {
    mmp -> itemRefCounters[idx]--;

    // printf("[MoldMemoryPool] Decreased refCount to %d at slot %d\n", mmp -> itemRefCounters[idx], idx);

    if (mmp -> itemRefCounters[idx] == 0) {
      __MOLD_MemoryPool_discard(mmp, idx);
    }
  }
}

void __MOLD_MemoryPool_free(MoldMemoryPool_t *mmp) {
  __MOLD_Memory_releaseRawBuffer(mmp -> data);

  free(mmp -> itemOffsets);
  free(mmp -> itemSizes);
  free(mmp -> itemRefCounters);
  memset(mmp, 0, sizeof(MoldMemoryPool_t));
}

void *__MOLD_MemoryPool_beginRead(MoldMemoryPool_t *mmp, uint32_t idx) {
  assert(idx < mmp -> itemOffsetsUsed);
  return mmp -> data + mmp -> itemOffsets[idx];
}

void *__MOLD_MemoryPool_beginWrite(MoldMemoryPool_t *mmp, uint32_t idx) {
  // printf("BEGIN WRITE %d\n", idx);

  assert(idx < mmp -> itemOffsetsUsed);
  assert(mmp -> itemRefCounters[idx] >= 0);
  assert(mmp -> isWriting == 0);

  mmp -> isWriting = 1;

  if (mmp -> itemOffsets[idx] + mmp -> itemSizes[idx] != mmp -> dataSizeUsed) {
    // Disasbled due to: x = x ~ y
    // memset(mmp -> data + mmp -> itemOffsets[idx], 'x', mmp -> itemSizes[idx]);
    mmp -> dataSizeFreed += mmp -> itemSizes[idx];
    mmp -> itemOffsets[idx] = mmp -> dataSizeUsed;

  } else {
    mmp -> dataSizeUsed = mmp -> itemOffsets[idx];
  }

  // printf("BEGIN WRITE slot %d at offset %d\n", idx, mmp -> itemOffsets[idx]);

  return mmp -> data + mmp -> itemOffsets[idx];
}

uint32_t __MOLD_MemoryPool_create(MoldMemoryPool_t *mmp) {
  // TODO: Optimize it.
  uint32_t newId = 0;

  while (mmp -> itemRefCounters[newId] != 0) {
    assert(newId < _g_defaultItemsCnt);
    newId++;
  }

  mmp -> itemOffsetsUsed = MAX(mmp -> itemOffsetsUsed, newId + 1);

  // printf("// [ MoldMemoryPool ] Create %d\n", newId);

  mmp -> itemRefCounters[newId] = 1;
  mmp -> itemSizes[newId]       = 0;
  mmp -> itemOffsets[newId]     = mmp -> dataSizeUsed;

  return newId;
}

void *__MOLD_MemoryPool_beginAppend(MoldMemoryPool_t *mmp, uint32_t idx) {
  uint8_t *oldPtr = mmp -> data + mmp -> itemOffsets[idx];
  uint8_t *newPtr = __MOLD_MemoryPool_beginWrite(mmp, idx);

  memcpy(newPtr, oldPtr, mmp -> itemSizes[idx]);
  newPtr += mmp -> itemSizes[idx];

  return newPtr;
}

void __MOLD_MemoryPool_commit(MoldMemoryPool_t *mmp, uint32_t idx, void *ptr) {
  assert(mmp -> isWriting == 1);

  uint32_t newDataSizeUsed = (uint8_t *) ptr - mmp -> data;

  mmp -> isWriting = 0;

  mmp -> dataSizeUsed   = newDataSizeUsed;
  mmp -> itemSizes[idx] = newDataSizeUsed - mmp -> itemOffsets[idx];

  // printf("[ MoldMemoryPool ] Commit %d, newDataSizeUsed=%d\n", idx, newDataSizeUsed);

  if (newDataSizeUsed >= mmp -> dataSizeAllocated) {
    __MOLD_MemoryPool_vacuum(mmp);
  }
}

void __MOLD_MemoryPool_print(MoldMemoryPool_t *mmp, uint32_t idx, FILE *f) {
  assert(idx < mmp -> itemOffsetsUsed);

  fwrite(mmp -> data + mmp -> itemOffsets[idx],
         mmp -> itemSizes[idx], 1, f);
}

void __MOLD_MemoryPool_discard(MoldMemoryPool_t *mmp, uint32_t idx) {
  // TODO: Simplify it (don't duplicate size field?).
  // printf("[ MoldMemoryPool ] discard %d\n", idx);

  memset(mmp -> data + mmp -> itemOffsets[idx], 'X', mmp -> itemSizes[idx]);

  mmp -> itemOffsets[idx] = 0;
  mmp -> itemSizes[idx]   = 0;
}

void __MOLD_MemoryPool_join(MoldMemoryPool_t *mmp, uint32_t idxDst, uint32_t idxSrc) {
  // printf("-> MemoryPool_join(%d,%d)\n", idxDst, idxSrc);

  assert(idxDst < mmp -> itemOffsetsUsed);
  assert(idxSrc < mmp -> itemOffsetsUsed);

  uint32_t len = mmp -> itemSizes[idxSrc];

  void *dstPtr = __MOLD_MemoryPool_beginAppend(mmp, idxDst);
  void *srcPtr = __MOLD_MemoryPool_beginRead(mmp, idxSrc);

  memcpy(dstPtr, srcPtr, len);
  dstPtr += len;

  __MOLD_MemoryPool_commit(mmp, idxDst, dstPtr);

  // printf("<- MemoryPool_join(%d,%d)\n", idxDst, idxSrc);
}

void __MOLD_MemoryPool_freeze(MoldMemoryPool_t *mmp, uint32_t idx) {
  assert(idx < mmp -> itemOffsetsUsed);
  mmp -> itemRefCounters[idx] = -1;
}

uint32_t __MOLD_MemoryPool_getLength(MoldMemoryPool_t *mmp, uint32_t idx) {
  assert(idx < mmp -> itemOffsetsUsed);
  return mmp -> itemSizes[idx];
}

uint32_t __MOLD_MemoryPool_cmp_eq(MoldMemoryPool_t *mmp, uint32_t idx1, uint32_t idx2) {
  assert(idx1 < mmp -> itemOffsetsUsed);
  assert(idx2 < mmp -> itemOffsetsUsed);

  if (idx1 == idx2) {
    return 1;
  }

  uint32_t itemSize1 = mmp -> itemSizes[idx1];
  uint32_t itemSize2 = mmp -> itemSizes[idx2];

  if (itemSize1 != itemSize2) {
    return 0;
  }

  void *itemData1 = mmp -> data + mmp -> itemOffsets[idx1];
  void *itemData2 = mmp -> data + mmp -> itemOffsets[idx2];

  if (memcmp(itemData1, itemData2, itemSize1) == 0) {
    return 1;
  }

  return 0;
}

uint32_t __MOLD_MemoryPool_copyRegion(MoldMemoryPool_t *mmp,
                                      int32_t dstIdx,
                                     uint32_t srcIdx,
                                     uint32_t srcStart,
                                      int32_t dstLen) {

  // printf("// -> COPY to %d from %d (idx=%d, len=%d)\n", dstIdx, srcIdx, srcStart, dstLen);
  //__MOLD_MemoryPool_dumpAll(mmp);

  if (dstIdx < 0) {
    dstIdx = __MOLD_MemoryPool_create(mmp);
  }

  assert(dstIdx < mmp -> itemOffsetsUsed);
  assert(srcIdx < mmp -> itemOffsetsUsed);

  uint8_t *dstPtr = __MOLD_MemoryPool_beginWrite(mmp, dstIdx);
  uint8_t *srcPtr = __MOLD_MemoryPool_beginRead (mmp, srcIdx);

  uint32_t srcLen = mmp -> itemSizes[srcIdx];

  // printf("// peek %.8s... (%d-%d)\n", srcPtr, srcStart, srcLen);

  if ((srcLen > 0) && (srcStart < srcLen)) {
    if (dstLen < 0) {
      dstLen = srcLen - srcStart;
    } else {
      dstLen = MIN(dstLen, srcLen - srcStart);
    }

    srcPtr += srcStart;

    // printf("// memcpy %d bytes...\n", dstLen);

    memcpy(dstPtr, srcPtr, dstLen);

    dstPtr += dstLen;
  }

  __MOLD_MemoryPool_commit(mmp, dstIdx, dstPtr);

  // printf("// <- COPY to %d from %d (idx=%d, len=%d)\n", dstIdx, srcIdx, srcStart, dstLen);
  //__MOLD_MemoryPool_dumpAll(mmp);

  return dstIdx;
}

// -----------------------------------------------------------------------------
//                          Debug helpers
// -----------------------------------------------------------------------------

void __MOLD_MemoryPool_dumpAll(MoldMemoryPool_t *mmp) {
  printf("\n-------------------------------------\n");
  printf("dataSizeAllocated: %d\n", mmp -> dataSizeAllocated);
  printf("dataSizeUsed:      %d\n", mmp -> dataSizeUsed);
  printf("dataSizeFreed:     %d\n", mmp -> dataSizeFreed);
  printf("itemOffsetsUsed:   %d\n", mmp -> itemOffsetsUsed);

  printf("\n");

  printf("            ");
  for (uint32_t idx = 0; idx < mmp -> itemOffsetsUsed; idx++) {
    printf(" %02x", idx);
  }
  printf("\n");

  printf("itemOffsets:");
  for (uint32_t idx = 0; idx < mmp -> itemOffsetsUsed; idx++) {
    printf(" %02x", mmp -> itemOffsets[idx]);
  }
  printf(" \n");

  printf("itemSizes:  ");
  for (uint32_t idx = 0; idx < mmp -> itemOffsetsUsed; idx++) {
    printf(" %02x", mmp -> itemSizes[idx]);
  }
  printf(" \n");

  printf("itemRefCnts:");
  for (uint32_t idx = 0; idx < mmp -> itemOffsetsUsed; idx++) {
    printf(" %2d", mmp -> itemRefCounters[idx]);
  }
  printf(" \n");


  printf("data: [ ");

  for (uint32_t idx = 0; idx < mmp -> dataSizeUsed; idx++) {
    uint8_t x = mmp -> data[idx];
    if (x >= 32 && x <= 128) {
      printf("%c", x);
    } else {
      printf("<%02x>", x);
    }
  }
  printf(" ]\n");
  printf("-----------------------------------------------------\n");
}
