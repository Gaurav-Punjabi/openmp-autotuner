# Runtime-Based Autotuning for OpenMP Applications

## Overview

This repository implements a **runtime-based strategy** for inferencing performance models and autotuning OpenMP applications. The goal is to optimize the execution of parallel programs by dynamically adjusting OpenMP configurations during runtime, based on observed performance.

## Approach

We utilize **Dynamic Library Interception** to monitor and intercept OpenMP API calls during runtime. This allows us to make adjustments on-the-fly, improving performance without requiring source code modifications. The autotuning logic is applied during the execution, ensuring that the OpenMP application is continuously optimized based on runtime conditions.

### Supported Compilers

For now, this runtime-based autotuning supports OpenMP applications compiled with the following toolchains:

- **[GNU OpenMP (libgomp)](/run_time/gomp-interception)**
- **[LLVM Clang OpenMP (libomp)](/run_time/omp-interception)**

### Why Use Runtime-Based Autotuning?

- **No Source Code Modifications**: Since our approach is runtime-based, there’s no need to modify your original code.
- **Adaptive Optimization**: The system reacts to actual runtime conditions, making adjustments that are more reflective of real-world scenarios.
- **Support for Multiple Compilers**: Currently, we support both GNU and LLVM Clang, two of the most popular OpenMP implementations.
