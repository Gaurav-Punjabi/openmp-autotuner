//===-- HelloWorld.cpp - Example Transformations --------------------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/IRBuilder.h" // Include this header for IRBuilder
#include "llvm/IR/Verifier.h"
#include "llvm/Support/Error.h"
#include "llvm/Support/FileSystem.h"
#include "llvm/IR/Function.h" // Include for llvm::Function
#include "llvm/IR/GlobalVariable.h" // Include for GlobalVariable
#include "llvm/IR/Constants.h" // Include for Constant and ConstantDataArray
#include <cstdarg>
#include <sstream>

using namespace llvm;
using namespace std;

bool is_autotuned = false;
int thread_count = 1;

bool endsWith(const llvm::StringRef &str, const llvm::StringRef &suffix) {
  if (str.size() < suffix.size()) {
    return false;
  }
  return str.find(suffix) != llvm::StringRef::npos;
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

    llvm::errs() << "\nTime taken by inference : " << elapsed.count() << "ms";

    return num_threads != -1 ? num_threads : 1;
}

void writeModuleToFile(Module &M, const std::string &filePath) {
    // Create an output file stream
    std::error_code EC;
    std::unique_ptr<raw_fd_ostream> fileStream = 
        std::make_unique<raw_fd_ostream>(filePath, EC, sys::fs::F_None);

    if (EC) {
        errs() << "Error opening file: " << EC.message() << "\n";
        return;
    }

    // Write the IR to the file
    M.print(*fileStream, nullptr); // Print the module IR
}

struct OMPInterceptorPass : llvm::PassInfoMixin<OMPInterceptorPass> {
    llvm::PreservedAnalyses run(llvm::Function &F, llvm::FunctionAnalysisManager &) {

   
   llvm::errs() << "\n IR has been written to the path" << '\n';
   llvm::errs() << "Function name: " << F.getName() << '\n';                   
   llvm::errs() << "Arg size: " << F.arg_size() << '\n';
   llvm::StringRef suffix("omp_outlined");
      if(!is_autotuned) {
        Module &M = *F.getParent();
        string ir_file_path = "/WAVE/users2/unix/gpunjabi/ycho_lab/gpunjabi/autotuning/model/gnn/gnn_nb_threads/parallel.ll";
        writeModuleToFile(M, ir_file_path);
        thread_count = get_thread_count(ir_file_path);
        is_autotuned = true;
      }
      llvm::errs() << "The predicted thread count is " << thread_count << "\n";
LLVMContext &context = F.getContext();
        IRBuilder<> builder(context);

        // Find the kmpc_fork_call
        for (BasicBlock &BB : F) {
            for (Instruction &I : BB) {
                if (auto *callInst = dyn_cast<CallInst>(&I)) {
                    Function *calledFunc = callInst->getCalledFunction();
                    if (calledFunc && calledFunc->getName() == "__kmpc_fork_call") {
                        // Create the call to OMP_set_num_threads
                        FunctionCallee ompSetNumThreadsFunc = F.getParent()->getOrInsertFunction(
                            "omp_set_num_threads", 
                            Type::getVoidTy(context), 
                            Type::getInt32Ty(context)  // Assuming it takes an int parameter
                        );

                        // Insert the call before kmpc_fork_call
                        builder.SetInsertPoint(callInst);
                        builder.CreateCall(ompSetNumThreadsFunc, {builder.getInt32(thread_count)});

                        // Now callInst points to kmpc_fork_call, continue as necessary
                    }
                }
            }
        }
    return llvm::PreservedAnalyses::all();
  }

  static bool isRequired() { return true; }
};

extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo
llvmGetPassPluginInfo() {
    return {LLVM_PLUGIN_API_VERSION, "First", "0.1", [](llvm::PassBuilder &PB) {
        PB.registerPipelineParsingCallback(
            [](llvm::StringRef name, llvm::FunctionPassManager &FPM,
               llvm::ArrayRef<llvm::PassBuilder::PipelineElement>) -> bool {
                if (name == "autotune") {
                    FPM.addPass(OMPInterceptorPass{});
                    return true;
                }
                return false;
            });
    }};
}

