#include <iostream>
#include <omp.h>

int main() {
	    #pragma omp parallel num_threads(4)
	    {
		            int tid = omp_get_thread_num();
			            std::cout << "Hello from thread " << tid << std::endl;
				        }

	        return 0;
}

