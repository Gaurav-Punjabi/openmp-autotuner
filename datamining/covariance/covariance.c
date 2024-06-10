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
#include "covariance.h"

/* Array initialization. */
static void init_array(int m, int n,
                       DATA_TYPE *float_n,
                       DATA_TYPE POLYBENCH_2D(data, M, N, m, n))
{
  int i, j;

  *float_n = 1.2;

  for (i = 0; i < M; i++)
    for (j = 0; j < N; j++)
      data[i][j] = ((DATA_TYPE)i * j) / M;
}

/* DCE code. Must scan the entire live-out data.
   Can be used also to check the correctness of the output. */
static void print_array(int m,
                        DATA_TYPE POLYBENCH_2D(symmat, M, M, m, m))

{
  int i, j;

  for (i = 0; i < m; i++)
    for (j = 0; j < m; j++)
    {
      fprintf(stderr, DATA_PRINTF_MODIFIER, symmat[i][j]);
      if ((i * m + j) % 20 == 0)
        fprintf(stderr, "\n");
    }
  fprintf(stderr, "\n");
}

__attribute__((used)) static void kernel_p1(int m, int n, DATA_TYPE float_n, DATA_TYPE POLYBENCH_2D(data, M, N, m, n), DATA_TYPE POLYBENCH_1D(mean, M, m))
{
  int i, j;
#pragma omp parallel for private(i)
  for (j = 0; j < m; j++)
  {
    mean[j] = 0.0;
    for (i = 0; i < n; i++)
      mean[j] += data[i][j];
    mean[j] /= float_n;
  }
}

__attribute__((used)) static void kernel_p2(int m, int n, DATA_TYPE POLYBENCH_2D(data, M, N, m, n), DATA_TYPE POLYBENCH_1D(mean, M, m))
{
  int i, j;
#pragma omp parallel for private(i, j)
  for (i = 0; i < n; i++)
    for (j = 0; j < m; j++)
      data[i][j] -= mean[j];
}

__attribute__((used)) static void kernel_p3(int m, int n, DATA_TYPE float_n, DATA_TYPE POLYBENCH_2D(data, M, N, m, n), DATA_TYPE POLYBENCH_2D(symmat, M, M, m, m))
{
  int i, j, j1, j2;
#pragma omp parallel for private(j1, j2, i)
  for (j1 = 0; j1 < m; j1++)
    for (j2 = j1; j2 < m; j2++)
    {
      symmat[j1][j2] = 0.0;
      for (i = 0; i < n; i++)
        symmat[j1][j2] += data[i][j1] * data[i][j2];
      symmat[j2][j1] = symmat[j1][j2];
    }
}

/* Main computational kernel. The whole function will be timed,
   including the call and return. */
__attribute__((used)) static void kernel_covariance(int m, int n,
                                                    DATA_TYPE float_n,
                                                    DATA_TYPE POLYBENCH_2D(data, M, N, m, n),
                                                    DATA_TYPE POLYBENCH_2D(symmat, M, M, m, m),
                                                    DATA_TYPE POLYBENCH_1D(mean, M, m))
{
  // Calculate mean

#pragma scop
  polybench_start_instruments;
  kernel_p1(m, n, float_n, data, mean);
  polybench_stop_instruments;
  polybench_print_instruments;

  // Center the column vectors
  polybench_start_instruments;
  kernel_p2(m, n, data, mean);
  polybench_stop_instruments;
  polybench_print_instruments;

  // Calculate the covariance matrix
  polybench_start_instruments;
  kernel_p3(m, n, float_n, data, symmat);
  polybench_stop_instruments;
  polybench_print_instruments;
#pragma endscop
}

int main(int argc, char **argv)
{
  /* Retrieve problem size. */
  int n = N;
  int m = M;

  /* Variable declaration/allocation. */
  DATA_TYPE float_n;
  POLYBENCH_2D_ARRAY_DECL(data, DATA_TYPE, M, N, m, n);
  POLYBENCH_2D_ARRAY_DECL(symmat, DATA_TYPE, M, M, m, m);
  POLYBENCH_1D_ARRAY_DECL(mean, DATA_TYPE, M, m);

  /* Initialize array(s). */
  init_array(m, n, &float_n, POLYBENCH_ARRAY(data));

  /* Start timer. */
  // polybench_start_instruments;

  /* Run kernel. */
  kernel_covariance(m, n, float_n,
                    POLYBENCH_ARRAY(data),
                    POLYBENCH_ARRAY(symmat),
                    POLYBENCH_ARRAY(mean));

  /* Stop and print timer. */
  // polybench_stop_instruments;
  // polybench_print_instruments;

  /* Prevent dead-code elimination. All live-out data must be printed
     by the function call in argument. */
  polybench_prevent_dce(print_array(m, POLYBENCH_ARRAY(symmat)));

  /* Be clean. */
  POLYBENCH_FREE_ARRAY(data);
  POLYBENCH_FREE_ARRAY(symmat);
  POLYBENCH_FREE_ARRAY(mean);

  return 0;
}
