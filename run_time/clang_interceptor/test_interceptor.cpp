#define _GNU_SOURCE

#include <dlfcn.h>
#include <iostream>
#include <cstdarg>
#include <fstream>
#include <sstream>
#include <omp.h>
#include <chrono>
#include <unistd.h>
#include <limits.h>
#include <cstdio>
#include "test_interceptor.h"

using namespace std;

// Define the function pointer type for GOMP_parallel_start
typedef void (*kmpc_fork_call_ptr)(void *, int, void *);

// Define the intercepted GOMP_parallel_start function
void __kmpc_fork_call(void *loc, int gtid, void *microtask) {
  cout << "\n Intercepted";

    // Load the original GOMP_parallel_start function
    kmpc_fork_call_ptr original_kmpc_fork_call = 
        (kmpc_fork_call_ptr)dlsym(RTLD_NEXT, "__kmpc_fork_call");

   
    // Call the original GOMP_parallel_start function
    original_kmpc_fork_call(loc, gtid, microtask);

}

