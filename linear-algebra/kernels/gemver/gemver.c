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
#include "gemver.h"

/* Array initialization. */
static void init_array(int n,
                       DATA_TYPE *alpha,
                       DATA_TYPE *beta,
                       DATA_TYPE POLYBENCH_2D(A, N, N, n, n),
                       DATA_TYPE POLYBENCH_1D(u1, N, n),
                       DATA_TYPE POLYBENCH_1D(v1, N, n),
                       DATA_TYPE POLYBENCH_1D(u2, N, n),
                       DATA_TYPE POLYBENCH_1D(v2, N, n),
                       DATA_TYPE POLYBENCH_1D(w, N, n),
                       DATA_TYPE POLYBENCH_1D(x, N, n),
                       DATA_TYPE POLYBENCH_1D(y, N, n),
                       DATA_TYPE POLYBENCH_1D(z, N, n))
{
  int i, j;

  *alpha = 43532;
  *beta = 12313;

  for (i = 0; i < n; i++)
  {
    u1[i] = i;
    u2[i] = (i + 1) / n / 2.0;
    v1[i] = (i + 1) / n / 4.0;
    v2[i] = (i + 1) / n / 6.0;
    y[i] = (i + 1) / n / 8.0;
    z[i] = (i + 1) / n / 9.0;
    x[i] = 0.0;
    w[i] = 0.0;
    for (j = 0; j < n; j++)
      A[i][j] = ((DATA_TYPE)i * j) / n;
  }
}

/* DCE code. Must scan the entire live-out data.
   Can be used also to check the correctness of the output. */
static void print_array(int n,
                        DATA_TYPE POLYBENCH_1D(w, N, n))
{
  int i;

  for (i = 0; i < n; i++)
  {
    fprintf(stderr, DATA_PRINTF_MODIFIER, w[i]);
    if (i % 20 == 0)
      fprintf(stderr, "\n");
  }
}

__attribute__((used)) static void kernel_p1(int n, DATA_TYPE POLYBENCH_2D(A, N, N, n, n), DATA_TYPE POLYBENCH_1D(u1, N, n), DATA_TYPE POLYBENCH_1D(v1, N, n), DATA_TYPE POLYBENCH_1D(u2, N, n), DATA_TYPE POLYBENCH_1D(v2, N, n))
{
#pragma omp parallel for collapse(2)
  for (int i = 0; i < n; i++)
  {
    for (int j = 0; j < n; j++)
    {
      A[i][j] = A[i][j] + u1[i] * v1[j] + u2[i] * v2[j];
    }
  }
}

__attribute__((used)) static void kernel_p2(int n, DATA_TYPE beta, DATA_TYPE POLYBENCH_2D(A, N, N, n, n), DATA_TYPE POLYBENCH_1D(y, N, n), DATA_TYPE POLYBENCH_1D(x, N, n))
{
#pragma omp parallel for
  for (int i = 0; i < n; i++)
  {
    for (int j = 0; j < n; j++)
    {
      x[i] = x[i] + beta * A[j][i] * y[j];
    }
  }
}

__attribute__((used)) static void kernel_p3(int n, DATA_TYPE POLYBENCH_1D(x, N, n), DATA_TYPE POLYBENCH_1D(z, N, n))
{
#pragma omp parallel for
  for (int i = 0; i < n; i++)
  {
    x[i] = x[i] + z[i];
  }
}

__attribute__((used)) static void kernel_p4(int n, DATA_TYPE alpha, DATA_TYPE POLYBENCH_2D(A, N, N, n, n), DATA_TYPE POLYBENCH_1D(x, N, n), DATA_TYPE POLYBENCH_1D(w, N, n))
{
#pragma omp parallel for
  for (int i = 0; i < n; i++)
  {
    for (int j = 0; j < n; j++)
    {
      w[i] = w[i] + alpha * A[i][j] * x[j];
    }
  }
}

/* Main computational kernel. The whole function will be timed,
   including the call and return. */
__attribute__((used)) static void kernel_gemver(int n,
                          DATA_TYPE alpha,
                          DATA_TYPE beta,
                          DATA_TYPE POLYBENCH_2D(A, N, N, n, n),
                          DATA_TYPE POLYBENCH_1D(u1, N, n),
                          DATA_TYPE POLYBENCH_1D(v1, N, n),
                          DATA_TYPE POLYBENCH_1D(u2, N, n),
                          DATA_TYPE POLYBENCH_1D(v2, N, n),
                          DATA_TYPE POLYBENCH_1D(w, N, n),
                          DATA_TYPE POLYBENCH_1D(x, N, n),
                          DATA_TYPE POLYBENCH_1D(y, N, n),
                          DATA_TYPE POLYBENCH_1D(z, N, n))
{
#pragma scop
  polybench_start_instruments;
  kernel_p1(n, A, u1, v1, u2, v2);
  polybench_stop_instruments;
  polybench_print_instruments;

  polybench_start_instruments;
  kernel_p2(n, beta, A, y, x);
  polybench_stop_instruments;
  polybench_print_instruments;

  polybench_start_instruments;
  kernel_p3(n, x, z);
  polybench_stop_instruments;
  polybench_print_instruments;

  polybench_start_instruments;
  kernel_p4(n, alpha, A, x, w);
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
  POLYBENCH_1D_ARRAY_DECL(u1, DATA_TYPE, N, n);
  POLYBENCH_1D_ARRAY_DECL(v1, DATA_TYPE, N, n);
  POLYBENCH_1D_ARRAY_DECL(u2, DATA_TYPE, N, n);
  POLYBENCH_1D_ARRAY_DECL(v2, DATA_TYPE, N, n);
  POLYBENCH_1D_ARRAY_DECL(w, DATA_TYPE, N, n);
  POLYBENCH_1D_ARRAY_DECL(x, DATA_TYPE, N, n);
  POLYBENCH_1D_ARRAY_DECL(y, DATA_TYPE, N, n);
  POLYBENCH_1D_ARRAY_DECL(z, DATA_TYPE, N, n);

  /* Initialize array(s). */
  init_array(n, &alpha, &beta,
             POLYBENCH_ARRAY(A),
             POLYBENCH_ARRAY(u1),
             POLYBENCH_ARRAY(v1),
             POLYBENCH_ARRAY(u2),
             POLYBENCH_ARRAY(v2),
             POLYBENCH_ARRAY(w),
             POLYBENCH_ARRAY(x),
             POLYBENCH_ARRAY(y),
             POLYBENCH_ARRAY(z));

  /* Start timer. */
  // polybench_start_instruments;

  /* Run kernel. */
  kernel_gemver(n, alpha, beta,
                POLYBENCH_ARRAY(A),
                POLYBENCH_ARRAY(u1),
                POLYBENCH_ARRAY(v1),
                POLYBENCH_ARRAY(u2),
                POLYBENCH_ARRAY(v2),
                POLYBENCH_ARRAY(w),
                POLYBENCH_ARRAY(x),
                POLYBENCH_ARRAY(y),
                POLYBENCH_ARRAY(z));

  /* Stop and print timer. */
  // polybench_stop_instruments;
  // polybench_print_instruments;

  /* Prevent dead-code elimination. All live-out data must be printed
     by the function call in argument. */
  polybench_prevent_dce(print_array(n, POLYBENCH_ARRAY(w)));

  /* Be clean. */
  POLYBENCH_FREE_ARRAY(A);
  POLYBENCH_FREE_ARRAY(u1);
  POLYBENCH_FREE_ARRAY(v1);
  POLYBENCH_FREE_ARRAY(u2);
  POLYBENCH_FREE_ARRAY(v2);
  POLYBENCH_FREE_ARRAY(w);
  POLYBENCH_FREE_ARRAY(x);
  POLYBENCH_FREE_ARRAY(y);
  POLYBENCH_FREE_ARRAY(z);

  return 0;
}
