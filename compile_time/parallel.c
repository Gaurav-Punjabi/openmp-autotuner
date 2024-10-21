#include <omp.h>
#include <stdio.h>

int main() {
#pragma omp parallel
  { printf("Hello, World from the thread\n"); }
#pragma omp parallel
  { printf("Hello, World from the thread\n"); }
  return 0;
}
