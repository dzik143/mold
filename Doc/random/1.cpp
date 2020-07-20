#include <cstdio>
#include <cmath>
#include <cstdint>

// https://math.stackexchange.com/questions/2115756/linear-congruential-generator-for-nkth-can-also-be-computed-with-nth-term
// https://en.wikipedia.org/wiki/Linear_congruential_generator

const uint64_t m31 = 0x100000000; // 2^31
const uint64_t m32 = 0x100000000; // 2^32

const uint64_t a = 69069;
const uint64_t c = 1;
const uint64_t m = m31;

const uint64_t apowk[] = {
  1,
  a,
  a*a,
  a*a*a,
  a*a*a*a
};

const uint64_t MASK = 0xffffffff;

uint64_t xrand(uint64_t x, uint64_t k) {
  uint64_t ak = apowk[k];
  uint64_t ck = (ak - 1) / (a - 1) * c;

  return (ak * x + ck) % m;
}

int main()
{
  uint64_t x0, x1, x2, x3, x4;
  uint64_t y0, y1, y2, y3, y4;

  x0 = 0;
  y0 = 0;

  printf("%4s: %16s %16s\n", "iter", "Xn", "Yn+k");

  for (int i = 0; i < 4*10; i += 4) {
    x1 = xrand(x0 , 1);
    x2 = xrand(x1 , 1);
    x3 = xrand(x2 , 1);
    x4 = xrand(x3 , 1);

    y1 = xrand(y0 , 1);
    y2 = xrand(y0 , 2);
    y3 = xrand(y0 , 3);
    y4 = xrand(y0 , 4);

    printf("%4d: %16d %16d\n", i + 1, x1 & MASK, y1 & MASK);
    printf("%4d: %16d %16d\n", i + 2, x2 & MASK, y2 & MASK);
    printf("%4d: %16d %16d\n", i + 3, x3 & MASK, y3 & MASK);
    printf("%4d: %16d %16d\n", i + 4, x4 & MASK, y4 & MASK);
    printf("\n");

    x0 = x4;
    y0 = y4;

//    printf("%d %d %d %d\n"   , x0&0xffffffff, x1&0xffffffff, x2&0xffffffff, x3&0xffffffff);
  //  printf("%d %d %d %d\n\n" , y0&0xffffffff, y1&0xffffffff, y2&0xffffffff, y3&0xffffffff);
  }
}
