#include <iostream>
#include <omp.h>

int main() {
  int thread_count_before = omp_get_num_threads();
  std::cout << "\n The number of threads before any parallel section : " << thread_count_before;
	#pragma omp parallel 
  {
    std::cout << "\nThread count after interception : " << omp_get_num_threads();
    int tid = omp_get_thread_num();
		std::cout << "\nHello from thread " << tid << std::endl;
  }

	return 0;
}

