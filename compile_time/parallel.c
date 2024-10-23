#include <omp.h>
#include <stdio.h>

int main() {
omp_set_num_threads(1);
printf("\nThe thread count before interception is : %d", omp_get_num_threads());
#pragma omp parallel
  { 
	  printf("\nThe thread count after interception is : %d", omp_get_num_threads());
	  printf("Hello, World from the thread\n"); 
  }
  return 0;
}
