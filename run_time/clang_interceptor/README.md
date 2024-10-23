# LLVM OpenMP Runtime Interception
This directory contains the dynamic library interceptor for LLVM - Clang OpenMP. We use `__kmpc_fork_call` as reference function to intercept all the paralllel sections. 

## Prequisites
* [LLVM (10.0.0 or higher)] (http://llvm.org)

## Steps to run
First we need to build the shared library for the interceptor:
```shell
clang++ -shared -fPIC -o fork_interceptor.so fork_interceptor.cpp -ldl
```

Use LD_PRELOAD to load the library when the program is executed:
```shell
LD_PRELOAD=<path to interceptor library> <program executable> <arguments....>
```

Example:
```shell
LD_PRELOAD=./fork_interceptor.so ./foobar
```

