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

#include "MoldMemoryPool.h"
#include "MoldString.h"

// Store all strings within one memory pool.
static MoldMemoryPool_t _g_memPool = { 0 };

void __MOLD_String_init() {
  __MOLD_MemoryPool_init(&_g_memPool);
}

uint32_t __MOLD_String_importLiterals(const char *literals) {
  // Possible improvement: Optimize it.
  uint32_t baseId = _g_memPool.itemOffsetsUsed;

  while (*literals != -1) {
    // TODO: Clean up this mess.
    uint32_t nextId = _g_memPool.itemOffsetsUsed++;

    uint32_t len = strlen(literals);

    __MOLD_String_setFromCString(nextId, literals, len);
    __MOLD_MemoryPool_freeze(&_g_memPool, nextId);

    literals += len + 1;
  }
  return baseId;
}

void __MOLD_String_setFromCString(MoldStringId_t id, const char *text, int32_t len) {
  // Calculate string length if caller doesn't pass the own one.
  if (len < 0) {
    len = strlen(text);
  }

  // Copy string content to new allocated buffer.
  // Hide inside helper call?
  if (len > 0) {
    char *ptr = __MOLD_MemoryPool_beginWrite(&_g_memPool, id);
    memcpy(ptr, text, len);
    ptr += len;
    __MOLD_MemoryPool_commit(&_g_memPool, id, ptr);
  }
}

MoldStringId_t __MOLD_String_createFromCString(const char *text, int32_t len) {
  // Create new memory buffer.
  MoldStringId_t newId = __MOLD_MemoryPool_create(&_g_memPool);

  // printf("Assigned new ID %d for [%s]\n", newId, text);
  //__MOLD_String_dumpAll();

  // Set new content.
  __MOLD_String_setFromCString(newId, text, len);

  // Return buffer id to the caller.
  return newId;
}

void __MOLD_String_join(MoldStringId_t id1, MoldStringId_t id2) {
  __MOLD_MemoryPool_join(&_g_memPool, id1, id2);
}

MoldStringId_t __MOLD_String_join3(MoldStringId_t x, MoldStringId_t y) {
  // TODO: Optimize it.
  // printf("[ MoldString] enter join3(%d, %d)\n", x, y);
  // __MOLD_String_dumpAll();

  MoldStringId_t dst = __MOLD_MemoryPool_create(&_g_memPool);
  __MOLD_String_join(dst, x);
  __MOLD_String_join(dst, y);

  // __MOLD_String_dumpAll();
  // printf("[ MoldString] leave join3(%d, %d)\n", x, y);
  return dst;
}

void __MOLD_String_print(FILE *f, MoldStringId_t id) {
  __MOLD_MemoryPool_print(&_g_memPool, id, f);
}

const char *__MOLD_String_getText(MoldStringId_t id) {
  // TODO: Match beginXxx with endXxx ?
  return __MOLD_MemoryPool_beginRead(&_g_memPool, id);
}

uint32_t __MOLD_String_getLength(MoldStringId_t id) {
  return __MOLD_MemoryPool_getLength(&_g_memPool, id);
}

void __MOLD_String_dumpAll() {
  __MOLD_MemoryPool_dumpAll(&_g_memPool);
}

uint32_t __MOLD_String_cmp_eq(MoldStringId_t x, MoldStringId_t y) {
  return __MOLD_MemoryPool_cmp_eq(&_g_memPool, x, y);
}

uint32_t __MOLD_String_substr(MoldStringId_t x, uint32_t idx, int32_t len) {
  return __MOLD_MemoryPool_copyRegion(&_g_memPool, -1, x, idx, len);
}

void __MOLD_String_addRef(MoldStringId_t x) {
  __MOLD_MemoryPool_addRef(&_g_memPool, x);
}

void __MOLD_String_release(MoldStringId_t x) {
  __MOLD_MemoryPool_release(&_g_memPool, x);
}
