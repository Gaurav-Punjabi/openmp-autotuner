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
/* Default data type is double, default size is 512. */
#include "gramschmidt.h"

/* Array initialization. */
static void init_array(int ni, int nj,
                       DATA_TYPE POLYBENCH_2D(A, NI, NJ, ni, nj),
                       DATA_TYPE POLYBENCH_2D(R, NJ, NJ, nj, nj),
                       DATA_TYPE POLYBENCH_2D(Q, NI, NJ, ni, nj))
{
  int i, j;

  for (i = 0; i < ni; i++)
    for (j = 0; j < nj; j++)
    {
      A[i][j] = ((DATA_TYPE)i * j) / ni;
      Q[i][j] = ((DATA_TYPE)i * (j + 1)) / nj;
    }
  for (i = 0; i < nj; i++)
    for (j = 0; j < nj; j++)
      R[i][j] = ((DATA_TYPE)i * (j + 2)) / nj;
}

/* DCE code. Must scan the entire live-out data.
   Can be used also to check the correctness of the output. */
static void print_array(int ni, int nj,
                        DATA_TYPE POLYBENCH_2D(A, NI, NJ, ni, nj),
                        DATA_TYPE POLYBENCH_2D(R, NJ, NJ, nj, nj),
                        DATA_TYPE POLYBENCH_2D(Q, NI, NJ, ni, nj))
{
  int i, j;

  for (i = 0; i < ni; i++)
    for (j = 0; j < nj; j++)
    {
      fprintf(stderr, DATA_PRINTF_MODIFIER, A[i][j]);
      if (i % 20 == 0)
        fprintf(stderr, "\n");
    }
  fprintf(stderr, "\n");
  for (i = 0; i < nj; i++)
    for (j = 0; j < nj; j++)
    {
      fprintf(stderr, DATA_PRINTF_MODIFIER, R[i][j]);
      if (i % 20 == 0)
        fprintf(stderr, "\n");
    }
  fprintf(stderr, "\n");
  for (i = 0; i < ni; i++)
    for (j = 0; j < nj; j++)
    {
      fprintf(stderr, DATA_PRINTF_MODIFIER, Q[i][j]);
      if (i % 20 == 0)
        fprintf(stderr, "\n");
    }
  fprintf(stderr, "\n");
}

__attribute__((used)) static void kernel_p1(int ni, int nj, DATA_TYPE POLYBENCH_2D(A, NI, NJ, ni, nj), DATA_TYPE POLYBENCH_1D(norm, NJ, nj))
{
#pragma omp parallel for
  for (int k = 0; k < nj; k++)
  {
    norm[k] = 0;
    for (int i = 0; i < _PB_NI; i++)
      norm[k] += A[i][k] * A[i][k];
  }
}

__attribute__((used)) static void kernel_p2(int ni, int nj, DATA_TYPE POLYBENCH_2D(A, NI, NJ, ni, nj), DATA_TYPE POLYBENCH_2D(Q, NI, NJ, ni, nj), DATA_TYPE POLYBENCH_2D(R, NJ, NJ, nj, nj), DATA_TYPE POLYBENCH_1D(norm, NJ, nj))
{
#pragma omp parallel for
  for (int k = 0; k < nj; k++)
  {
    R[k][k] = sqrt(norm[k]);
    for (int i = 0; i < _PB_NI; i++)
      Q[i][k] = A[i][k] / R[k][k];
  }
}

__attribute__((used)) static void kernel_p3(int ni, int nj, DATA_TYPE POLYBENCH_2D(A, NI, NJ, ni, nj), DATA_TYPE POLYBENCH_2D(Q, NI, NJ, ni, nj), DATA_TYPE POLYBENCH_2D(R, NJ, NJ, nj, nj))
{
#pragma omp parallel for
  for (int k = 0; k < nj; k++)
    for (int j = k + 1; j < _PB_NJ; j++)
    {
      R[k][j] = 0;
      for (int i = 0; i < _PB_NI; i++)
        R[k][j] += Q[i][k] * A[i][j];
      for (int i = 0; i < _PB_NI; i++)
        A[i][j] -= Q[i][k] * R[k][j];
    }
}

/* Main computational kernel. The whole function will be timed,
   including the call and return. */
__attribute__((used)) static void kernel_gramschmidt(int ni, int nj,
                                                     DATA_TYPE POLYBENCH_2D(A, NI, NJ, ni, nj),
                                                     DATA_TYPE POLYBENCH_2D(R, NJ, NJ, nj, nj),
                                                     DATA_TYPE POLYBENCH_2D(Q, NI, NJ, ni, nj))
{
#pragma scop
  DATA_TYPE POLYBENCH_1D(norm, NJ, nj);

  polybench_start_instruments;
  kernel_p1(ni, nj, A, norm);
  polybench_stop_instruments;
  polybench_print_instruments;

  polybench_start_instruments;
  kernel_p2(ni, nj, A, Q, R, norm);
  polybench_stop_instruments;
  polybench_print_instruments;

  polybench_start_instruments;
  kernel_p3(ni, nj, A, Q, R);
  polybench_stop_instruments;
  polybench_print_instruments;
#pragma endscop
}

int main(int argc, char **argv)
{
  /* Retrieve problem size. */
  int ni = NI;
  int nj = NJ;

  /* Variable declaration/allocation. */
  POLYBENCH_2D_ARRAY_DECL(A, DATA_TYPE, NI, NJ, ni, nj);
  POLYBENCH_2D_ARRAY_DECL(R, DATA_TYPE, NJ, NJ, nj, nj);
  POLYBENCH_2D_ARRAY_DECL(Q, DATA_TYPE, NI, NJ, ni, nj);

  /* Initialize array(s). */
  init_array(ni, nj,
             POLYBENCH_ARRAY(A),
             POLYBENCH_ARRAY(R),
             POLYBENCH_ARRAY(Q));

  /* Start timer. */
  // polybench_start_instruments;

  /* Run kernel. */
  kernel_gramschmidt(ni, nj,
                     POLYBENCH_ARRAY(A),
                     POLYBENCH_ARRAY(R),
                     POLYBENCH_ARRAY(Q));

  /* Stop and print timer. */
  // polybench_stop_instruments;
  // polybench_print_instruments;

  /* Prevent dead-code elimination. All live-out data must be printed
     by the function call in argument. */
  polybench_prevent_dce(print_array(ni, nj, POLYBENCH_ARRAY(A), POLYBENCH_ARRAY(R), POLYBENCH_ARRAY(Q)));

  /* Be clean. */
  POLYBENCH_FREE_ARRAY(A);
  POLYBENCH_FREE_ARRAY(R);
  POLYBENCH_FREE_ARRAY(Q);

  return 0;
}
