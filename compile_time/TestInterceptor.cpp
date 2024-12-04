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
#include <chrono>
#include <cstdarg>
#include <sstream>
#include <cmath>
#include <iomanip>

using namespace llvm;
using namespace std;

bool is_autotuned = false;
std::string escapeShellArgument(const std::string& arg) {
    std::ostringstream escaped;
    for (char c : arg) {
        // Escape special shell characters
        if (c == '"' || c == '\'' || c == '\\' || c == ';' || c == '&' || c == '|') {
            escaped << '\\';
        }
        escaped << c;
    }
    return escaped.str();
}

std::string escapeJsonString(const std::string& input) {
    std::ostringstream escaped;
    for (char c : input) {
        switch (c) {
            case '"':  // Escape double quotes
                escaped << "\\\"";
                break;
            case '\\':  // Escape backslashes
                escaped << "\\\\";
                break;
            case '$':  // Escape dollar signs
                escaped << "\\$";
                break;
            case '`':  // Escape backticks
                escaped << "\\`";
                break;
            case '\n':  // Escape newlines
                escaped << "\\n";
                break;
            case '\t':  // Escape tabs
                escaped << "\\t";
                break;
            default:
                escaped << c;
        }
    }
    return escaped.str();
}
bool endsWith(const llvm::StringRef &str, const llvm::StringRef &suffix) {
  if (str.size() < suffix.size()) {
    return false;
  }
  return str.find(suffix) != llvm::StringRef::npos;
}

string generateUniqueFilename() {
    // Get the current time since epoch in milliseconds
    auto now = chrono::system_clock::now();
    auto now_ms = chrono::duration_cast<chrono::milliseconds>(now.time_since_epoch()).count();

    // Construct a unique filename using just the timestamp
    string filename = "IR_" + to_string(now_ms) + ".ll";
    return filename;
}


string convert_ir_to_graph(const string& ir_file_content, const string& function_name) {

    string ir_graph;
    int buffer_size = 128;
    char buffer[buffer_size];

    auto inference_start_time = chrono::high_resolution_clock::now();

    std::ostringstream command;
    command << "python /WAVE/projects2/ycho_lab/gpunjabi/autotuning/model/gnn/gnn_nb_threads/convert_to_json.py "
            << "\"" << function_name << "\" "
            << "\"" << escapeShellArgument(ir_file_content) << "\"";

    // Open a pipe to the process
    FILE* fp = popen(command.str().c_str(), "r");
    if (!fp) {
        errs() << "Failed to open pipe for Python script." << '\n';
        return ir_graph;
    }


    while(fgets(buffer, buffer_size, fp) != nullptr) {
      ir_graph += buffer;
    }


    // Close the process
    pclose(fp);

    return ir_graph;
}

int get_thread_count(const string& ir_file_content) {

    auto inference_start_time = chrono::high_resolution_clock::now();

    // Path to the Python script
    std::ostringstream command;
    command << "python /WAVE/projects2/ycho_lab/gpunjabi/autotuning/model/gnn/gnn_nb_threads/model_inference.py ";

    // Open a pipe to the process
    FILE* fp = popen(command.str().c_str(), "w");
    if (!fp) {
        errs() << "Failed to open pipe for Python script." << '\n';
        return 1;
    }

    // Write JSON string to the Python script's stdin
    fwrite(ir_file_content.c_str(), 1, ir_file_content.size(), fp);

    // Buffer to store the output from the Python script
    char buffer[128];
    int num_threads = -1;

    // Read the output of the Python script
    while (fgets(buffer, sizeof(buffer), fp) != NULL) {
        errs() << "\nBUFFER: " << buffer;
        // Assuming the thread number is printed as the last output from the Python script
        sscanf(buffer, "%d", &num_threads);
    }

    // Close the process
    pclose(fp);

    auto inference_end_time = chrono::high_resolution_clock::now();
    chrono::duration<double, milli> elapsed = inference_end_time - inference_start_time;

    llvm::errs() << "\nTime taken by inference : " << elapsed.count() << "s";

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

      bool foundForkCall = false;  // Track if __kmpc_fork_call was found

        // Start the timer
        auto startTime = std::chrono::high_resolution_clock::now();
        llvm::errs() << "\n IR has been written to the path" << '\n';
        llvm::errs() << "Function name: " << F.getName() << '\n';                   
        llvm::errs() << "Arg size: " << F.arg_size() << '\n';
        llvm::StringRef suffix("omp_outlined");
    // if(!is_autotuned) {
    //     Module &M = *F.getParent();
    //     string irString;
    //     raw_string_ostream irStream(irString);
    //     M.print(irStream, NULL);
    //     string irGraph = convert_ir_to_graph(irString, F.getName());
    //     errs() << "\nIR GRAPH : " << irGraph << '\n';
    //     is_autotuned = true;
    // } 
        LLVMContext &context = F.getContext();
        IRBuilder<> builder(context);

        // Find the kmpc_fork_call
        for (BasicBlock &BB : F) {
            for (Instruction &I : BB) {
                if (auto *callInst = dyn_cast<CallInst>(&I)) {
                    Function *calledFunc = callInst->getCalledFunction();
                    if (calledFunc && calledFunc->getName() == "__kmpc_fork_call") {
                            string filePath = "/WAVE/users2/unix/gpunjabi/ycho_lab/gpunjabi/autotuning/model/gnn/gnn_nb_threads/parallel.ll";
                            if (callInst->getNumArgOperands() >= 3) {
                                Value *microtask = callInst->getArgOperand(2);
// Strip pointer casts to get the underlying function
                                if (Function *outlinedFunc = dyn_cast<Function>(microtask->stripPointerCasts())) {
                                    // Print the name of the outlined function
                                    errs() << "Intercepted: "
                                           << outlinedFunc->getName() << "\n";
                                    Module &M = *F.getParent();
                                    string irString;
                                    raw_string_ostream irStream(irString);
                                    M.print(irStream, NULL);
                                    string irGraph = convert_ir_to_graph(irString, F.getName());
                                    errs() << "Got the IR GRAPH" << '\n';

                                    // int thread_count = 1;
                                    int thread_count = get_thread_count(irGraph);
                                    errs() << "\nPredicted thread count is : " << thread_count << "\n";                
                                    // Create the call to OMP_set_num_threads
                            FunctionCallee ompSetNumThreadsFunc = F.getParent()->getOrInsertFunction(
                              "omp_set_num_threads", 
                              Type::getVoidTy(context), 
                              Type::getInt32Ty(context)  // Assuming it takes an int parameter
                            );

                            // Insert the call before kmpc_fork_call
                            builder.SetInsertPoint(callInst);
                            builder.CreateCall(ompSetNumThreadsFunc, {builder.getInt32(4)});

                                }
                            }
                                                       }
                }
            }
        }
        // Stop the timer
        auto endTime = std::chrono::high_resolution_clock::now();
        auto elapsedTime = std::chrono::duration<double>(endTime - startTime).count();
    
// Round to 6 decimal places
        elapsedTime = std::round(elapsedTime * 1e3) / 1e3;

        // Print total time taken if a kmpc_fork_call was found
        if (foundForkCall) {
            llvm::errs() << "Total time taken in the pass for function " << F.getName() 
                         << ": " << elapsedTime << " seconds\n";
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

