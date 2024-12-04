#define _GNU_SOURCE

#include <dlfcn.h>
#include <iostream>
#include <string.h>
#include <stdlib.h>
#include <time.h>
#include <stdio.h>
#include <cstdarg>
#include <fstream>
#include <sstream>
#include <omp.h>
#include <chrono>
#include <unistd.h>
#include <limits.h>
#include <cstdio>
#include "fork_interceptor.h"

using namespace std;


#define BUFFER_SIZE 128

// Function to escape shell arguments
void escapeShellArgument(const char* arg, char* escaped) {
    size_t i = 0, j = 0;
    while (arg[i] != '\0') {
        char c = arg[i];
        // Escape special shell characters
        if (c == '"' || c == '\'' || c == '\\' || c == ';' || c == '&' || c == '|') {
            escaped[j++] = '\\';  // Escape the special character
        }
        escaped[j++] = c;  // Add the character to the result
        i++;
    }
    escaped[j] = '\0';  // Null-terminate the string
}

// Function to get the thread count by invoking the Python script
int get_thread_count(const char *ir_file_content) {
    clock_t inference_start_time = clock();  // Start the timer

    // Dynamically allocate memory for the escaped content
    size_t escaped_content_len = strlen(ir_file_content) * 2 + 1;  // Max space needed for escape
    char* escaped_content = (char*)malloc(escaped_content_len);
    if (!escaped_content) {
        fprintf(stderr, "Memory allocation failed for escaped_content.\n");
        return -1;
    }

    escapeShellArgument(ir_file_content, escaped_content);

    // Dynamically allocate memory for the command string
    size_t command_len = strlen(escaped_content) + 128 + 1;  // 128 for Python script path and other parts
    char* command = (char*)malloc(command_len);
    if (!command) {
        free(escaped_content);
        perror("Memory allocation failed for command.\n");
        return -1;
    }
    snprintf(command, command_len, "python /WAVE/projects2/ycho_lab/gpunjabi/autotuning/model/svm/svm_inference.py \"%s\"", escaped_content);

    // Open a pipe to the Python script
    FILE *fp = popen(command, "r");
    free(escaped_content);  // Free escaped_content after use
    free(command);          // Free command after use

    if (!fp) {
        perror("Failed to open pipe for Python script.\n");
        return -1; // Return an error value if the script fails
    }

    // Buffer to store the output from the Python script
    char buffer[BUFFER_SIZE];
    int num_threads = -1;

    // Read the output of the Python script
    while (fgets(buffer, sizeof(buffer), fp) != NULL) {
        printf("\nBUFFER: %s", buffer);
        // Assuming the thread number is printed as the last output from the Python script
        sscanf(buffer, "%d", &num_threads);
    }

    // Close the process
    int status = pclose(fp);
    if (status == -1) {
        fprintf(stderr, "Failed to close pipe.\n");
    }

    // Calculate elapsed time
    clock_t inference_end_time = clock();
    double elapsed_time = ((double)(inference_end_time - inference_start_time)) / CLOCKS_PER_SEC * 1000.0;  // Convert to milliseconds

    fprintf(stderr, "\nTime taken by inference: %.2f ms\n", elapsed_time);

    // Return the number of threads or default to 4 if parsing fails
    return num_threads != -1 ? num_threads : 4;
}


void initialize_openmp_runtime() {
    // Force OpenMP to initialize
    int dummy = omp_get_max_threads();
}

string get_executable_path() {
    char path[PATH_MAX];
    ssize_t len = readlink("/proc/self/exe", path, sizeof(path) - 1);
    if (len != -1) {
        path[len] = '\0';  // Null-terminate the path
        return string(path);
    } else {
        cerr << "Failed to retrieve executable path.\n";
        return "";
    }
}
string call_llvm_symbolizer(const string& executable, void* address) {
    // Prepare the command to call llvm-symbolizer with the executable and address
    char command[512];
    snprintf(command, sizeof(command), "llvm-symbolizer -e %s %p", executable.c_str(), address);

    // Open a pipe to read the output of the command
    FILE* pipe = popen(command, "r");
    if (!pipe) {
        cerr << "Failed to run llvm-symbolizer.\n";
        return "";
    }

    // Read and print only the first line of output from llvm-symbolizer
    char buffer[128];
    string result;
    if (fgets(buffer, sizeof(buffer), pipe) != nullptr) {
      result = buffer;
    }
    pclose(pipe);

    return result;
}
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
  initialize_openmp_runtime();
    auto total_interception_start_time = chrono::high_resolution_clock::now();
    cout << "\nBefore parallel execution" << endl;

  printf("Microtask address : %p\n", microtask);
    string executable_path = get_executable_path();
    cout << "Executable name : " << executable_path << "\n";

 // Read and print the IR file (assumes IR file is named after the executable)
string executable_name = executable_path + ".ll";
int thread_count = get_thread_count(const_cast<char*>(executable_name.c_str()));

//omp_set_num_threads(thread_count);
cout <<  "\nThe thread count has been set to : " << thread_count << "\n";

auto total_interception_end_time = chrono::high_resolution_clock::now();

chrono::duration<double, milli> elapsed = total_interception_end_time - total_interception_start_time;


cout << "\nTime taken by total interception " << elapsed.count() << "ms";


    // Load the original GOMP_parallel_start function
    kmpc_fork_call_ptr original_kmpc_fork_call = 
        (kmpc_fork_call_ptr)dlsym(RTLD_NEXT, "__kmpc_fork_call");

   
    // Call the original GOMP_parallel_start function
    original_kmpc_fork_call(loc, gtid, microtask);

}

