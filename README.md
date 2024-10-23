# OpenMP Autotuning Project

## Table of Contents

- [Overview](#overview)
- [Getting Started](#getting-started)
- [Approaches](#approaches)
- [Why Two Approaches?](#why-two-approaches)
- [Performance Model Details](#performance-model-details)

## Overview

This project focuses on **autotuning OpenMP applications** to improve their performance by predicting the optimal number of threads for parallel sections. Our goal is to explore different strategies for performance modeling and autotuning, leveraging both **compiler-based** and **runtime-based** approaches.

By researching multiple methods, we aim to discover the most effective technique for optimizing OpenMP applications, providing insights that could benefit both developers and researchers in the field of parallel computing.

## Getting Started

To get started with autotuning, check out the following subdirectories for more details on each approach:

- **[Compiler-Based Autotuning](./compile_time/)**: Learn about our compile-time strategy for performance inference and autotuning.
- **[Runtime-Based Autotuning](./run_time/)**: Explore our runtime strategy using dynamic library interception for autotuning.

## Approaches

We are investigating two primary methods to achieve OpenMP autotuning:

1. **Compiler-Based Autotuning**:
   - In this approach, we perform performance inference and autotuning at **compile-time** by analyzing the Intermediate Representation (IR) of the OpenMP code.
   - We extract the IR using **LLVM** and then feed it into a machine learning model that predicts the optimal thread count for parallel sections based on the characteristics of the code.

2. **Runtime-Based Autotuning**:
   - This approach intercepts OpenMP runtime function calls dynamically and adjusts the thread count during **runtime**.
   - By using **Dynamic Library Interception**, we are able to optimize the OpenMP program without needing source code modifications. We support both **GNU** and **LLVM Clang** OpenMP toolchains for runtime tuning.

## Why Two Approaches?

The use of both compiler-based and runtime-based methods is part of our research goal: to identify which approach offers better performance optimization and flexibility. By comparing these methods, we can provide valuable insights into their strengths and limitations in real-world scenarios.

- **Compiler-based autotuning** offers the potential for more precise optimizations by analyzing the entire program's structure at compile time.
- **Runtime-based autotuning**, on the other hand, is more adaptable to changing execution environments, allowing optimizations to be made on-the-fly.

## Performance Model Details

We built a machine learning model to predict the optimal thread count for each parallel section of an OpenMP program. Here's an outline of the process:

- **Data Collection**: We collected data from standard benchmark suites like **Rodinia**, **Polybench**, and **NAS Parallel Benchmarks (NPB)**.
  
- **IR Extraction**: For each parallel section of the code, we extracted the **Intermediate Representation (IR)** using **LLVM**. This IR serves as the input for the performance model.

- **Graph Neural Network (GNN) Model**:
  - The IR is first transformed into a graph structure using the **ProgramL** Python library, which converts the IR into a graph where each node represents an operation and each edge represents data flow.
  - These graphs are then used to train and evaluate a **Graph Neural Network (GNN)**, which learns to predict the optimal number of threads for a given parallel section based on the graph structure.

This combination of compiler technology and machine learning helps us make intelligent decisions on thread count, tailored to the specific needs of each parallel region in an OpenMP application.

Follow the instructions in each subdirectory to set up and run the autotuning process for your OpenMP applications.
