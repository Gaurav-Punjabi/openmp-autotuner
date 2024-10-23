#define _GNU_SOURCE

#include <dlfcn.h>
#include <iostream>
#include <cstdarg>
#include <fstream>
#include <sstream>
#include <omp.h>
#include <chrono>

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

int get_thread_count(const string& ir_file_name) {

    auto inference_start_time = chrono::high_resolution_clock::now();

    // Path to the Python script
    const char* pythonScriptPath = "/WAVE/projects2/ycho_lab/gpunjabi/autotuning/model/gnn/gnn_nb_threads/model_inference.py";

    // Command to execute the Python script with the file path as an argument
    char command[512];
    snprintf(command, sizeof(command), "python %s %s", pythonScriptPath, ir_file_name.c_str());

    // Open the process for reading the output
    FILE* fp = popen(command, "r");
    if (fp == NULL) {
        fprintf(stderr, "Failed to run Python script\n");
        return 1;
    }

    // Buffer to store the output from the Python script
    char buffer[128];
    int num_threads = -1;

    // Read the output of the Python script
    while (fgets(buffer, sizeof(buffer), fp) != NULL) {
        // Assuming the thread number is printed as the last output from the Python script
        sscanf(buffer, "%d", &num_threads);
    }

    // Close the process
    pclose(fp);

    auto inference_end_time = chrono::high_resolution_clock::now();
    chrono::duration<double, milli> elapsed = inference_end_time - inference_start_time;

    cout << "\nTime taken by inference : " << elapsed.count() << "ms";

    return num_threads != -1 ? num_threads : 1;
}
// Define the function pointer type for GOMP_parallel_start
typedef void (*kmpc_fork_call_ptr)(void *, int, void *);

// Define the intercepted GOMP_parallel_start function
void __kmpc_fork_call(void *loc, int gtid, void *microtask) {
    auto total_interception_start_time = chrono::high_resolution_clock::now();
    cout << "\nBefore parallel execution" << endl;
    
    // Load the original GOMP_parallel_start function
    kmpc_fork_call_ptr original_kmpc_fork_call = 
        (kmpc_fork_call_ptr)dlsym(RTLD_NEXT, "__kmpc_fork_call");

    // Read and print the IR file (assumes IR file is named after the executable)
    string executable_name = "/WAVE/users2/unix/gpunjabi/ycho_lab/gpunjabi/autotuning/model/gnn/gnn_nb_threads/parallel.ll";
    int thread_count = get_thread_count(executable_name);

    omp_set_num_threads(thread_count);
    cout <<  "\nThe thread count has been set to : " << thread_count << "\n";

    auto total_interception_end_time = chrono::high_resolution_clock::now();

    chrono::duration<double, milli> elapsed = total_interception_end_time - total_interception_start_time;
    

    cout << "\nTime taken by total interception " << elapsed.count() << "ms";
    // Call the original GOMP_parallel_start function
    original_kmpc_fork_call(loc, gtid, microtask);

}

