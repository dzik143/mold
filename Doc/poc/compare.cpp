#include <cstdio>
#include <cstdint>

bool cmplt_core(uint64_t *x, uint64_t *y)
{
  bool rv = false;

  if (*x < *y) {
    rv = true;
  }

  return rv;
}

bool cmplt_dd(double x, double y)
{
  printf("%lf < %lf : %d\n", x, y, cmplt_core((uint64_t*) &x, (uint64_t *)&y));
}

int main()
{
  cmplt_dd(32, 16);
}
