#!/bin/bash

# Check if at least one argument (executable name) is provided
if [ "$#" -lt 1 ]; then
    echo "Usage: ./wrapper_script.sh <executable_name> [<args_for_executable>]"
    exit 1
fi

# Extract the executable name and arguments
executable_name=$1
shift  # Shift to get all other arguments passed to the executable
executable_args="$@"

# Assume the source file is named the same as the executable, with .cpp extension
source_file="${executable_name}.cpp"
ir_file="temp.ll"
interceptor_path="./interceptors/fork_interceptor.so"

# Check if the source file exists
if [ ! -f "$source_file" ]; then
    echo "Error: Source file '$source_file' does not exist."
    exit 1
fi

# Generate LLVM IR from the source file using clang
echo "Generating LLVM IR for $source_file..."
clang -O1 -fopenmp -emit-llvm -S -o "$ir_file" "$source_file"
if [ $? -ne 0 ]; then
    echo "Error: Failed to generate LLVM IR."
    exit 1
fi
echo "LLVM IR generated: $ir_file"

# Check if the interceptor exists
if [ ! -f "$interceptor_path" ]; then
    echo "Error: Interceptor '$interceptor_path' does not exist."
    exit 1
fi

# Run the executable with LD_PRELOAD set to the interceptor
echo "Running $executable_name with LD_PRELOAD..."
LD_PRELOAD="$interceptor_path" ./"$executable_name" $executable_args
if [ $? -ne 0 ]; then
    echo "Error: Execution failed."
    exit 1
fi

