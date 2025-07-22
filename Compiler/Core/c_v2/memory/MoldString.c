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

static void __MOLD_String_setFromCString(MoldStringId_t id, const char *text, int32_t len) {
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

MoldStringId_t __MOLD_String_createFromCString(const char *text, int32_t len) {
  // Create new memory buffer.
  MoldStringId_t newId = __MOLD_MemoryPool_create(&_g_memPool);

  // printf("Assigned new ID %d for [%s]\n", newId, text);
  //__MOLD_String_dumpAll();

  // Set new content.
  __MOLD_String_setFromCString(newId, text, len);

  // Return buffer id to the caller.
  return ENCODE_STRING_ID(newId);
}

void __MOLD_String_join(MoldStringId_t encodedId1, MoldStringId_t encodedId2) {
  ASSERT_ENCODED_STRING_ID(encodedId1);
  ASSERT_ENCODED_STRING_ID(encodedId2);
  MoldStringId_t id1 = DECODE_STRING_ID(encodedId1);
  MoldStringId_t id2 = DECODE_STRING_ID(encodedId2);

  __MOLD_MemoryPool_join(&_g_memPool, id1, id2);
}

MoldStringId_t __MOLD_String_join3(MoldStringId_t encodedX, MoldStringId_t encodedY) {
  // TODO: Optimize it.
  // printf("[ MoldString] enter join3(%d, %d)\n", x, y);
  // __MOLD_String_dumpAll();

  ASSERT_ENCODED_STRING_ID(encodedX);
  ASSERT_ENCODED_STRING_ID(encodedY);

  MoldStringId_t dst = __MOLD_MemoryPool_create(&_g_memPool);
  MoldStringId_t encodedDst = ENCODE_STRING_ID(dst);

  __MOLD_String_join(encodedDst, encodedX);
  __MOLD_String_join(encodedDst, encodedY);

  // __MOLD_String_dumpAll();
  // printf("[ MoldString] leave join3(%d, %d)\n", x, y);
  return encodedDst;
}

void __MOLD_String_print(FILE *f, MoldStringId_t encodedId) {
  if (encodedId > 256)
  {
    MoldStringId_t id = DECODE_STRING_ID(encodedId);
    __MOLD_MemoryPool_print(&_g_memPool, id, f);
  }
  else if (encodedId > 0)
  {
    fputc(encodedId, f);
  }
}

const char *__MOLD_String_getText(MoldStringId_t encodedId) {
  // TODO: Review it.
  static char oneCharBuffer[2] = { 0 };
  const char *rv = NULL;

  if (encodedId >= 256) {
    // TODO: Match beginXxx with endXxx ?
    MoldStringId_t id = DECODE_STRING_ID(encodedId);
    rv = __MOLD_MemoryPool_beginRead(&_g_memPool, id);

  } else {
    oneCharBuffer[0] = encodedId;
    rv = oneCharBuffer;
  }

  return rv;
}

uint32_t __MOLD_String_getLength(MoldStringId_t encodedId) {
  uint32_t rv = 0;

  if (encodedId >= 256) {
    MoldStringId_t id = DECODE_STRING_ID(encodedId);
    rv = __MOLD_MemoryPool_getLength(&_g_memPool, id);

  } else if (encodedId > 0) {
    rv = encodedId;
  }

  return rv;
}

void __MOLD_String_dumpAll() {
  __MOLD_MemoryPool_dumpAll(&_g_memPool);
}

uint32_t __MOLD_String_cmp_eq(MoldStringId_t encodedX, MoldStringId_t encodedY) {
  // TODO: Simplify it.
  uint32_t rv = 0;

  MoldStringId_t x = DECODE_STRING_ID(encodedX);
  MoldStringId_t y = DECODE_STRING_ID(encodedY);

  if (encodedX == encodedY)
  {
    // Two strings pointed to the same ID or implicit char.
    rv = 1;
  }
  else if (encodedX < 256)
  {
    // CHAR/EMPTY vs ...
    if (encodedY < 256) {
      // CHAR/EMPTY vs CHAR/EMPTY
      rv = encodedX == encodedY;
    }
    else
    {
      // CHAR/EMPTY vs STRING
      uint32_t length  = __MOLD_MemoryPool_getLength(&_g_memPool, y);
      const char *text = __MOLD_MemoryPool_beginRead(&_g_memPool, y);

      if (encodedX > 0)
      {
        // CHAR vs string
        rv = (length == 1) && (text[0] == encodedX);
      }
      else
      {
        // EMPTY vs STRING
        rv = (length == 0);
      }
    }
  }
  else if (encodedY < 256)
  {
    // STRING vs CHAR/EMPTY
    uint32_t length  = __MOLD_MemoryPool_getLength(&_g_memPool, x);
    const char *text = __MOLD_MemoryPool_beginRead(&_g_memPool, x);

    if (encodedY > 0)
    {
      // CHAR vs string
      rv = (length == 1) && (text[0] == encodedY);
    }
    else
    {
      // EMPTY vs STRING
      rv = (length == 0);
    }
  }
  else
  {
    // STRING vs STRING
    rv = __MOLD_MemoryPool_cmp_eq(&_g_memPool, x, y);
  }

  return rv;
}

uint32_t __MOLD_String_substr(MoldStringId_t encodedX, uint32_t idx, int32_t len) {
  ASSERT_ENCODED_STRING_ID(encodedX);
  MoldStringId_t x = DECODE_STRING_ID(encodedX);
  MoldStringId_t newId =  __MOLD_MemoryPool_copyRegion(&_g_memPool, -1, x, idx, len);
  return ENCODE_STRING_ID(newId);
}

void __MOLD_String_addRef(MoldStringId_t encodedX) {
  if (encodedX >= 256) {
    MoldStringId_t x = DECODE_STRING_ID(encodedX);
    __MOLD_MemoryPool_addRef(&_g_memPool, x);
  }
}

void __MOLD_String_release(MoldStringId_t encodedX) {
  if (encodedX >= 256) {
    MoldStringId_t x = DECODE_STRING_ID(encodedX);
    __MOLD_MemoryPool_release(&_g_memPool, x);
  }
}
