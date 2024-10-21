#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Analysis/LoopPass.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Transforms/Scalar.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"
#include "llvm/Transforms/Utils/LoopUtils.h"
#include "llvm/Transforms/Utils/ModuleUtils.h"

using namespace llvm;

struct HelloPass : public PassInfoMixin<HelloPass> {
  PreservedAnalyses run(Function &F, FunctionAnalysisManager &FAM) {
    // Name of the function where you want to print "Hello"
    std::string functionName = "add";

    // Check if the current function matches the specified function name
    llvm::errs() << "Function name : " << F.getName() << '\n';
    if (F.getName() == functionName) {
      llvm::errs() << "Function intercepted: " << F.getName() << '\n';

      /**
      // Get the entry block of the function
      BasicBlock &EntryBlock = F.getEntryBlock();
      // Get the LLVM context
      LLVMContext &Context = F.getContext();
      // Get or insert the printf function declaration
      Module *M = F.getParent();
      FunctionType *PrintfFuncType = FunctionType::get(
          Type::getInt32Ty(Context), {Type::getInt8PtrTy(Context)}, true);
      FunctionCallee PrintfFunc =
          M->getOrInsertFunction("printf", PrintfFuncType);
      // Insert "Hello" message at the beginning of the entry block
      IRBuilder<> Builder(&EntryBlock, EntryBlock.getFirstInsertionPt());
      Value *FormatStr = Builder.CreateGlobalStringPtr(
          "Hello before function execution: %s\n");
      Value *FunctionNameStr =
          Builder.CreateGlobalStringPtr(functionName.c_str());
      Builder.CreateCall(PrintfFunc, {FormatStr, FunctionNameStr}); **/
    }

    return PreservedAnalyses::all();
  }

  static bool isRequired() { return true; }
};

extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo
llvmGetPassPluginInfo() {
  return {LLVM_PLUGIN_API_VERSION, "First", "0.1", [](llvm::PassBuilder &PB) {
            PB.registerPipelineParsingCallback(
                [](llvm::StringRef name, llvm::FunctionPassManager &FPM,
                   llvm::ArrayRef<llvm::PassBuilder::PipelineElement>) -> bool {
                  if (name == "hello") {
                    FPM.addPass(HelloPass{});
                    return true;
                  }
                  return false;
                });
          }};
}
