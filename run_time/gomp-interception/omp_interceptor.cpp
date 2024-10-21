#define _GNU_SOURCE
#include <dlfcn.h>
#include <iostream>
#include "omp_interceptor.h"

using namespace std;

// Define the function pointer type for GOMP_parallel_start
typedef void (*GOMP_parallel_start_fn)(void (*fn) (void *), void *data, unsigned num_threads, unsigned int flags);

// Define the intercepted GOMP_parallel_start function
void GOMP_parallel(void (*fn) (void *), void *data, unsigned num_threads, unsigned int flags) {
    cout << "Before parallel execution" << endl;
    
    // Load the original GOMP_parallel_start function
    GOMP_parallel_start_fn original_GOMP_parallel_start = 
        (GOMP_parallel_start_fn)dlsym(RTLD_NEXT, "GOMP_parallel");

    // Call the original GOMP_parallel_start function
    original_GOMP_parallel_start(fn, data, num_threads, flags);
}

//// Dummy main function to satisfy the linker
//int main() {
//    return 0;
//}
//
