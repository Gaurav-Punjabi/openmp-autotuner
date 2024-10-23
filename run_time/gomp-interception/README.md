# GNU OpenMP Runtime Interception
This directory contains the dynamic library interceptor for GNU OpenMP. We use `GOMP_parallel_start_fn` as reference function to intercept all the paralllel sections. 

## Prequisites
* [GNU Compiler] (https://gcc.gnu.org)

## Steps to run
First we need to build the shared library for the interceptor:
```shell
g++ -shared -fPIC -o omp_interceptor.so omp_interceptor.cpp -ldl
```

Use LD_PRELOAD to load the library when the program is executed:
```shell
LD_PRELOAD=<path to interceptor library> <program executable> <arguments....>
```

Example:
```shell
LD_PRELOAD=./omp_interceptor.so ./foobar
```

