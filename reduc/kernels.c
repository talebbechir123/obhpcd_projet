//
#if defined(__INTEL_COMPILER)
#include <mkl.h>
#else
#include <cblas.h>
#endif

//
#include "types.h"

//Baseline - naive implementation
f64 reduc_base(f64 *restrict a, u64 n)
{
  double d = 0.0;
  
  for (u64 i = 0; i < n; i++)
    d += a[i];

  return d;
}

f64 unroll_x8(f64 *restrict a, u64 n)
{
  double d = 0.0;
  
  //unroll 8 times and manage remainder
  u64 i = 0;
  for (; i < (n - (n & 7)); i += 8)
    {
      d += a[i] + a[i + 1] + a[i + 2] + a[i + 3] + a[i + 4] + a[i + 5] + a[i + 6] + a[i + 7];
    }

  for (; i < n; i++)
    d += a[i];

    



  return d;
}
