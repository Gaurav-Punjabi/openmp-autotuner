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
#include "atax.h"

/* Array initialization. */
static void init_array(int nx, int ny,
                       DATA_TYPE POLYBENCH_2D(A, NX, NY, nx, ny),
                       DATA_TYPE POLYBENCH_1D(x, NY, ny))
{
  int i, j;

  for (i = 0; i < ny; i++)
    x[i] = i * M_PI;
  for (i = 0; i < nx; i++)
    for (j = 0; j < ny; j++)
      A[i][j] = ((DATA_TYPE)i * (j + 1)) / nx;
}

/* DCE code. Must scan the entire live-out data.
   Can be used also to check the correctness of the output. */
static void print_array(int nx,
                        DATA_TYPE POLYBENCH_1D(y, NX, nx))

{
  int i;

  for (i = 0; i < nx; i++)
  {
    fprintf(stderr, DATA_PRINTF_MODIFIER, y[i]);
    if (i % 20 == 0)
      fprintf(stderr, "\n");
  }
  fprintf(stderr, "\n");
}

__attribute__((used)) static void kernel_p1(int ny, DATA_TYPE POLYBENCH_1D(y, NY, ny))
{
#pragma omp parallel for
  for (int i = 0; i < ny; i++)
    y[i] = 0;
}

__attribute__((used)) static void kernel_p2(int nx, int ny,
                      DATA_TYPE POLYBENCH_2D(A, NX, NY, nx, ny),
                      DATA_TYPE POLYBENCH_1D(x, NY, ny),
                      DATA_TYPE POLYBENCH_1D(tmp, NX, nx))
{
#pragma omp parallel for
  for (int i = 0; i < nx; i++)
  {
    tmp[i] = 0;
    for (int j = 0; j < ny; j++)
      tmp[i] += A[i][j] * x[j];
  }
}

__attribute__((used)) static void kernel_p3(int nx, int ny,
                      DATA_TYPE POLYBENCH_2D(A, NX, NY, nx, ny),
                      DATA_TYPE POLYBENCH_1D(tmp, NX, nx),
                      DATA_TYPE POLYBENCH_1D(y, NY, ny))
{
#pragma omp parallel for
  for (int i = 0; i < nx; i++)
  {
    for (int j = 0; j < ny; j++)
      y[j] += A[i][j] * tmp[i];
  }
}

/* Main computational kernel. The whole function will be timed,
   including the call and return. */
__attribute__((used)) static void kernel_atax(int nx, int ny,
                        DATA_TYPE POLYBENCH_2D(A, NX, NY, nx, ny),
                        DATA_TYPE POLYBENCH_1D(x, NY, ny),
                        DATA_TYPE POLYBENCH_1D(y, NY, ny),
                        DATA_TYPE POLYBENCH_1D(tmp, NX, nx))
{
#pragma scop
  polybench_start_instruments;
  kernel_p1(ny, y);
  polybench_stop_instruments;
  polybench_print_instruments;

  polybench_start_instruments;
  kernel_p2(nx, ny, A, x, tmp);
  polybench_stop_instruments;
  polybench_print_instruments;

  polybench_start_instruments;
  kernel_p3(nx, ny, A, tmp, y);
  polybench_stop_instruments;
  polybench_print_instruments;
#pragma endscop
}

int main(int argc, char **argv)
{
  /* Retrieve problem size. */
  int nx = NX;
  int ny = NY;

  /* Variable declaration/allocation. */
  POLYBENCH_2D_ARRAY_DECL(A, DATA_TYPE, NX, NY, nx, ny);
  POLYBENCH_1D_ARRAY_DECL(x, DATA_TYPE, NY, ny);
  POLYBENCH_1D_ARRAY_DECL(y, DATA_TYPE, NY, ny);
  POLYBENCH_1D_ARRAY_DECL(tmp, DATA_TYPE, NX, nx);

  /* Initialize array(s). */
  init_array(nx, ny, POLYBENCH_ARRAY(A), POLYBENCH_ARRAY(x));

  /* Start timer. */
  // polybench_start_instruments;

  /* Run kernel. */
  kernel_atax(nx, ny,
              POLYBENCH_ARRAY(A),
              POLYBENCH_ARRAY(x),
              POLYBENCH_ARRAY(y),
              POLYBENCH_ARRAY(tmp));

  /* Stop and print timer. */
  // polybench_stop_instruments;
  // polybench_print_instruments;

  /* Prevent dead-code elimination. All live-out data must be printed
     by the function call in argument. */
  polybench_prevent_dce(print_array(nx, POLYBENCH_ARRAY(y)));

  /* Be clean. */
  POLYBENCH_FREE_ARRAY(A);
  POLYBENCH_FREE_ARRAY(x);
  POLYBENCH_FREE_ARRAY(y);
  POLYBENCH_FREE_ARRAY(tmp);

  return 0;
}
