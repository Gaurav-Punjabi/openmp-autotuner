#define _GNU_SOURCE

#include <dlfcn.h>
#include <iostream>
#include <cstdarg>
#include <fstream>
#include <sstream>

#include "fork_interceptor.h"

using namespace std;

// Function to read the IR file and print it to the console
void read_and_print_ir(const string& ir_filename) {
    ifstream ir_file(ir_filename);
    if (!ir_file.is_open()) {
        cerr << "Error: Could not open IR file: " << ir_filename << endl;
        return;
    }

    // Read the entire file into a string
    stringstream buffer;
    buffer << ir_file.rdbuf();

    // Print the IR content
    cout << "LLVM IR of the program:\n" << buffer.str() << endl;
    
    ir_file.close();
}

// Define the function pointer type for GOMP_parallel_start
typedef void (*kmpc_fork_call_ptr)(void *, int, void *);

// Define the intercepted GOMP_parallel_start function
void __kmpc_fork_call(void *loc, int gtid, void *microtask) {
    cout << "Before parallel execution" << endl;
    
    // Load the original GOMP_parallel_start function
    kmpc_fork_call_ptr original_kmpc_fork_call = 
        (kmpc_fork_call_ptr)dlsym(RTLD_NEXT, "__kmpc_fork_call");

    // Read and print the IR file (assumes IR file is named after the executable)
    string executable_name = "/WAVE/users2/unix/gpunjabi/ycho_lab/gpunjabi/openmp/playground/runtime-interception/omp-interception/temp.ll";
    read_and_print_ir(executable_name);

    // Call the original GOMP_parallel_start function
    original_kmpc_fork_call(loc, gtid, microtask);

}

