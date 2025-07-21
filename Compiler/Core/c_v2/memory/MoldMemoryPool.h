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

#ifndef MoldMemoryPool_H
#define MoldMemoryPool_H

#ifdef __cplusplus
extern "C" {
#endif

#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

typedef struct {
  uint8_t  *data;
  uint32_t  dataSizeAllocated;
  uint32_t  dataSizeUsed;
  uint32_t  dataSizeFreed;

  uint32_t *itemOffsets;
  uint32_t  itemOffsetsUsed;
  uint32_t *itemSizes;
   int32_t *itemRefCounters;

  uint32_t  isWriting;
} MoldMemoryPool_t;

void  __MOLD_MemoryPool_init(MoldMemoryPool_t *mmp);
void  __MOLD_MemoryPool_free(MoldMemoryPool_t *mmp);

void __MOLD_MemoryPool_addRef (MoldMemoryPool_t *mmp, uint32_t idx);
void __MOLD_MemoryPool_release(MoldMemoryPool_t *mmp, uint32_t idx);

uint32_t __MOLD_MemoryPool_create(MoldMemoryPool_t *mmp);

void *__MOLD_MemoryPool_beginRead  (MoldMemoryPool_t *mmp, uint32_t idx);
void *__MOLD_MemoryPool_beginWrite (MoldMemoryPool_t *mmp, uint32_t idx);
void *__MOLD_MemoryPool_beginAppend(MoldMemoryPool_t *mmp, uint32_t idx);
void  __MOLD_MemoryPool_commit     (MoldMemoryPool_t *mmp, uint32_t idx, void *ptr);
void  __MOLD_MemoryPool_discard    (MoldMemoryPool_t *mmp, uint32_t idx);
void  __MOLD_MemoryPool_print      (MoldMemoryPool_t *mmp, uint32_t idx, FILE *f);
void  __MOLD_MemoryPool_join       (MoldMemoryPool_t *mmp, uint32_t idx1, uint32_t idx2);
void  __MOLD_MemoryPool_freeze     (MoldMemoryPool_t *mmp, uint32_t idx);

uint32_t __MOLD_MemoryPool_copyRegion(MoldMemoryPool_t *mmp,
                                       int32_t dstIdx,
                                      uint32_t srcIdx,
                                      uint32_t srcStart,
                                       int32_t dstLen);

uint32_t __MOLD_MemoryPool_cmp_eq(MoldMemoryPool_t *mmp, uint32_t idx1, uint32_t idx2);

uint32_t __MOLD_MemoryPool_getLength(MoldMemoryPool_t *mmp, uint32_t idx);

// Debug only.
void  __MOLD_MemoryPool_dumpAll(MoldMemoryPool_t *mmp);

#ifdef __cplusplus
}
#endif

#endif /* _MoldMemoryPool_H */
