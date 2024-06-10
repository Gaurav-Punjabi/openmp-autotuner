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
#include "llvm/Transforms/Utils/OpenMPUtils.h"

struct HelloPass : public PassInfoMixin<HelloPass> {
  PreservedAnalyses run(Function &F, FunctionAnalysisManager &FAM) {
    // Get the OpenMPIRBuilder instance for the function
    OpenMPIRBuilder *OMPBuilder =
        FAM.getCachedResult<OpenMPIRBuilderAnalysis>(F);

    if (!OMPBuilder) {
      errs() << "Error: OpenMPIRBuilder not available for function: "
             << F.getName() << "\n";
      return PreservedAnalyses::all();
    }

    // Find the parallel regions in the function
    auto ParallelRegions = OMPBuilder->getParallelRegions();

    for (auto &PR : ParallelRegions) {
      // Get the entry block of the parallel region
      BasicBlock *EntryBlock = PR.EntryBlock;
      // Insert "Hello" message at the beginning of the entry block
      IRBuilder<> Builder(EntryBlock->getFirstNonPHI());
      Builder.CreateCall(OMPBuilder->getOrCreateRuntimeFunction(
          ModuleUtils::getOrInsertFn(F.getParent(), "printf",
                                     Type::getInt32Ty(F.getContext()),
                                     Type::getInt8PtrTy(F.getContext())),
          {Builder.CreateGlobalStringPtr(
               "Hello from OpenMP parallel region in function: "),
           Builder.CreateGlobalStringPtr(F.getName().str() + "\n")}));
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
