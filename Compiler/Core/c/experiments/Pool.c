#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdint.h>
#include <assert.h>

#define DEFAULT_POOL_BUFFER_SIZE (1024 * 1024)
#define DEFAULT_POOL_ITEMS_CNT   1024

#define ASSERT_POOL_PTR(x) \
  assert((x) != NULL); \
  assert((x) -> data    != (void *) 0xdeadbeef); \
  assert((x) -> indexes != (void *) 0xdeadbeef); \

typedef struct {
  uint8_t * data;
  uint32_t  dataSize;
  uint32_t  dataCapacity;

  uint32_t *offsets;
  uint32_t  offsetsSize;
  uint32_t  offsetsCapacity;
} Pool_t;

void __MOLD_PoolCreate(Pool_t *pool)
{
  pool -> data         = malloc(DEFAULT_POOL_BUFFER_SIZE);
  pool -> dataSize     = 0;
  pool -> dataCapacity = DEFAULT_POOL_BUFFER_SIZE;

  pool -> offsets         = malloc(DEFAULT_POOL_ITEMS_CNT * sizeof(pool -> offsets[0]));
  pool -> offsetsSize     = 0;
  pool -> offsetsCapacity = DEFAULT_POOL_ITEMS_CNT;

  memset(pool -> offsets, 0xff, DEFAULT_POOL_ITEMS_CNT * sizeof(pool -> offsets[0]));
}

void __MOLD_PoolDestroy(Pool_t *pool)
{
  ASSERT_POOL_PTR(pool);

  free(pool -> data);
  free(pool -> offsets);

  pool -> data    = (void *) 0xdeadbeef;
  pool -> offsets = (void *) 0xdeadbeef;
}

uint32_t __MOLD_PoolAllocItem(Pool_t *pool, uint32_t dataSize)
{
  ASSERT_POOL_PTR(pool);

  uint32_t newIndex  = pool -> offsetsSize;
  uint32_t newOffset = pool -> dataSize;

  pool -> offsets[newIndex] = newOffset;
  pool -> offsetsSize++;
  pool -> dataSize += dataSize;

  return newIndex;
}

void __MOLD_PoolReleaseItem(Pool_t *pool, uint32_t idx)
{
  ASSERT_POOL_PTR(pool);
  pool -> offsets[idx] = -1;
}

void __MOLD_PoolSetItem(Pool_t *pool, uint32_t idx, void *data, uint32_t dataSize)
{
  ASSERT_POOL_PTR(pool);
}

int main()
{
  Pool_t pool;

  __MOLD_PoolCreate(&pool);

  uint32_t item1 = __MOLD_PoolAllocItem(&pool, 16);
  uint32_t item2 = __MOLD_PoolAllocItem(&pool, 16);

  printf("%d %d\n", item1, item2);

  __MOLD_PoolDestroy(&pool);

  return 0;
}
