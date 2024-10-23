# Compile-Time Autotuning

## Table of Contents

- [Overview](#overview)
- [Prerequisites](#prerequisites)
- [Building the Interceptor](#building-the-interceptor)
- [Running the Optimization Pass](#running-the-optimization-pass)
- [Executing the Optimized IR File](#executing-the-optimized-ir-file)
- [Steps for WAVE HPC](#steps-for-wave-hpc)

## Overview

In our **Compile-Time Autotuning** approach, we write an **LLVM function pass** to intercept all methods within the OpenMP application. Specifically, we search for the `__kmpc_fork_call`, which is the entry point for any parallel section in OpenMP programs. 

After identifying this call, we use our **performance model** to infer and predict the optimal thread count. Once we have the predicted thread count, we insert a call to `omp_set_num_threads` to set the thread count dynamically, just before the `__kmpc_fork_call`.

## Prerequisites

To run the compile-time autotuning, you need the following tools installed:

- **Python** (version 3 or higher)
- **PyTorch**
- **Clang 10.0.0**
- **LLVM 10.0.0**
- **Python dependencies**: Programl

## Building the Interceptor

To build the interceptor, you first need to compile the shared library for our optimization pass.

Run the following command to generate the shared library:

```bash
clang++ -shared -fPIC -o OMPInterceptorPass.so OMPInterceptorPass.cpp `llvm-config --cxxflags --ldflags`
```

This will generate the OMPInterceptorPass.so file, which contains the interception logic for autotuning OpenMP applications.

## Running the Optimization Pass

Once the shared library is built, you will need an IR file for the program you wish to autotune. You can generate the IR file using the following command:

```
clang -c -S -emit-llvm -fopenmp <source c file>
```

For example, if your source file is `parallel.c`, you can generate the IR file with:

```
clang -c -S -emit-llvm -fopenmp parallel.c
```

Now that you have the IR file (`parallel.ll`), you can run the optimization pass using the following command:

```
opt -S -load-pass-plugin OMPInterceptorPass.so -passes=autotune -o optimized-foo.ll foo.ll
```

This will produce an optimized IR file (`optimized-foo.ll`) that includes the autotuning inferences, such as dynamically setting the thread count.

## Executing the Optimized IR File

To execute the optimized IR file, use the following command:

```
lli <path to required libraries> <path to your optimized IR file>
```

For example, if you're working with `parallel.bc` and need to load OpenMP libraries, you would run:

```
lli -load /usr/local/Cellar/llvm/18.1.5/lib/libomp.dylib parallel.bc
```

## Steps for WAVE HPC

### Setting Up the Environment

To run this autotuner program on the **WAVE HPC** system, follow these steps:

1. **Install LLVM 10:**
   Copy the LLVM 10 installation to your home directory:
   
   ```bash
   cp -r /WAVE/users2/unix/gpunjabi/local/llvm-10 ~/local/
   ```

   Add the following to your `PATH` and `LD_LIBRARY_PATH`:

   ```bash
   export PATH=~/local/llvm-10/bin:$PATH
   export LD_LIBRARY_PATH=~/local/llvm-10/lib:$LD_LIBRARY_PATH
   ```

2. **Load Required Modules:**
   You'll need to load several modules to set up the environment:

   ```bash
   module load Python
   module load PyTorch
   module load Anaconda3
   ```

3. **Activate the Clang Environment:**
   Navigate to the required directory and activate the virtual environment with all the dependencies:

   ```bash
   cd /WAVE/users2/unix/gpunjabi/ycho_lab/kimsong_lor
   conda activate clang10_venv
   ```

4. **Compile and Run the Interceptor:**
   Go to the `compile_time` folder in your repository:

   ```bash
   cd /path/to/your/repository/compile_time/
   ```

   Build the shared library for the interceptor:

   ```bash
   clang++ -shared -fPIC -o OMPInterceptorPass.so OMPInterceptorPass.cpp `llvm-config --cxxflags --ldflags`
   ```

5. **Run the Autotuner:**
   After building the shared library, you can run the autotuner by following the commands described in the **Running the Optimization Pass** section above.

Now you’re ready to autotune your OpenMP applications on the WAVE HPC system!


