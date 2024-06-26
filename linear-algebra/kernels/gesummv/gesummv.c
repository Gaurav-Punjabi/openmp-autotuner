/* POLYBENCH/GPU-OPENMP
 *
 * This file is a part of the Polybench/GPU-OpenMP suite
 *
 * Contact:
 * William Killian <killian@udel.edu>
 *
 * Copyright 2013, The University of Delaware
 */
#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <math.h>

/* Include polybench common header. */
#include <polybench.h>

/* Include benchmark-specific header. */
/* Default data type is double, default size is 4000. */
#include "gesummv.h"

/* Array initialization. */
static void init_array(int n,
                       DATA_TYPE *alpha,
                       DATA_TYPE *beta,
                       DATA_TYPE POLYBENCH_2D(A, N, N, n, n),
                       DATA_TYPE POLYBENCH_2D(B, N, N, n, n),
                       DATA_TYPE POLYBENCH_1D(x, N, n))
{
  int i, j;

  *alpha = 43532;
  *beta = 12313;
  for (i = 0; i < n; i++)
  {
    x[i] = ((DATA_TYPE)i) / n;
    for (j = 0; j < n; j++)
    {
      A[i][j] = ((DATA_TYPE)i * j) / n;
      B[i][j] = ((DATA_TYPE)i * j) / n;
    }
  }
}

/* DCE code. Must scan the entire live-out data.
   Can be used also to check the correctness of the output. */
static void print_array(int n,
                        DATA_TYPE POLYBENCH_1D(y, N, n))

{
  int i;

  for (i = 0; i < n; i++)
  {
    fprintf(stderr, DATA_PRINTF_MODIFIER, y[i]);
    if (i % 20 == 0)
      fprintf(stderr, "\n");
  }
}

__attribute__((used)) static void kernel_p1(int n, DATA_TYPE alpha, DATA_TYPE beta,
                      DATA_TYPE POLYBENCH_2D(A, N, N, n, n),
                      DATA_TYPE POLYBENCH_2D(B, N, N, n, n),
                      DATA_TYPE POLYBENCH_1D(tmp, N, n),
                      DATA_TYPE POLYBENCH_1D(x, N, n),
                      DATA_TYPE POLYBENCH_1D(y, N, n))
{
#pragma omp parallel for
  for (int i = 0; i < n; i++)
  {
    tmp[i] = 0;
    y[i] = 0;
    for (int j = 0; j < n; j++)
    {
      tmp[i] += A[i][j] * x[j];
      y[i] += B[i][j] * x[j];
    }
    y[i] = alpha * tmp[i] + beta * y[i];
  }
}

/* Main computational kernel. The whole function will be timed,
   including the call and return. */
__attribute__((used)) static void kernel_gesummv(int n,
                           DATA_TYPE alpha,
                           DATA_TYPE beta,
                           DATA_TYPE POLYBENCH_2D(A, N, N, n, n),
                           DATA_TYPE POLYBENCH_2D(B, N, N, n, n),
                           DATA_TYPE POLYBENCH_1D(tmp, N, n),
                           DATA_TYPE POLYBENCH_1D(x, N, n),
                           DATA_TYPE POLYBENCH_1D(y, N, n))
{
#pragma scop
  polybench_start_instruments;
  kernel_p1(n, alpha, beta, A, B, tmp, x, y);
  polybench_stop_instruments;
  polybench_print_instruments;
#pragma endscop
}

int main(int argc, char **argv)
{
  /* Retrieve problem size. */
  int n = N;

  /* Variable declaration/allocation. */
  DATA_TYPE alpha;
  DATA_TYPE beta;
  POLYBENCH_2D_ARRAY_DECL(A, DATA_TYPE, N, N, n, n);
  POLYBENCH_2D_ARRAY_DECL(B, DATA_TYPE, N, N, n, n);
  POLYBENCH_1D_ARRAY_DECL(tmp, DATA_TYPE, N, n);
  POLYBENCH_1D_ARRAY_DECL(x, DATA_TYPE, N, n);
  POLYBENCH_1D_ARRAY_DECL(y, DATA_TYPE, N, n);

  /* Initialize array(s). */
  init_array(n, &alpha, &beta,
             POLYBENCH_ARRAY(A),
             POLYBENCH_ARRAY(B),
             POLYBENCH_ARRAY(x));

  /* Start timer. */
  // polybench_start_instruments;

  /* Run kernel. */
  kernel_gesummv(n, alpha, beta,
                 POLYBENCH_ARRAY(A),
                 POLYBENCH_ARRAY(B),
                 POLYBENCH_ARRAY(tmp),
                 POLYBENCH_ARRAY(x),
                 POLYBENCH_ARRAY(y));

  /* Stop and print timer. */
  // polybench_stop_instruments;
  // polybench_print_instruments;

  /* Prevent dead-code elimination. All live-out data must be printed
     by the function call in argument. */
  polybench_prevent_dce(print_array(n, POLYBENCH_ARRAY(y)));

  /* Be clean. */
  POLYBENCH_FREE_ARRAY(A);
  POLYBENCH_FREE_ARRAY(B);
  POLYBENCH_FREE_ARRAY(tmp);
  POLYBENCH_FREE_ARRAY(x);
  POLYBENCH_FREE_ARRAY(y);

  return 0;
}
