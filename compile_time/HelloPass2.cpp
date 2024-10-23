#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/IRBuilder.h" // Include this header for IRBuilder
#include "llvm/IR/Function.h" // Include for llvm::Function
#include "llvm/IR/GlobalVariable.h" // Include for GlobalVariable
#include "llvm/IR/Constants.h" // Include for Constant and ConstantDataArray

bool endsWith(const llvm::StringRef &str, const llvm::StringRef &suffix) {
    return str.endswith(suffix);
}

struct HelloPass : llvm::PassInfoMixin<HelloPass> {
    llvm::PreservedAnalyses run(llvm::Function &F, llvm::FunctionAnalysisManager &) {
        llvm::errs() << "Function name: " << F.getName() << '\n';
        llvm::errs() << "Arg size: " << F.arg_size() << '\n';
        llvm::StringRef suffix("omp_outlined");
        
        if (endsWith(F.getName(), suffix)) {
            llvm::errs() << "Found outlined function\n";

            // Get the context and create an IR builder
            llvm::LLVMContext &context = F.getContext();
            llvm::IRBuilder<> builder(context);

            // Get a pointer to the printf function
            llvm::FunctionType *printfType = llvm::FunctionType::get(
                llvm::Type::getInt32Ty(context),
                llvm::PointerType::get(llvm::Type::getInt8Ty(context), 0),
                true
            );
            llvm::FunctionCallee printfFunc = 
                F.getParent()->getOrInsertFunction("printf", printfType);

            // Create a global string for "Hello, world!\n"
            llvm::Constant *helloWorldStr = llvm::ConstantDataArray::getString(
                context, "This message is from our custom pass :)\n", true);
            llvm::GlobalVariable *helloWorldVar = new llvm::GlobalVariable(
                *F.getParent(), helloWorldStr->getType(), true,
                llvm::GlobalValue::PrivateLinkage, helloWorldStr, ".str");
            
            // Create a pointer to the string
            llvm::Constant *zero = llvm::Constant::getNullValue(llvm::IntegerType::getInt32Ty(context));
            llvm::ArrayRef<llvm::Constant*> indices = {zero, zero}; // Assuming zero index for GEP
            llvm::Constant *helloWorldStrPtr = llvm::ConstantExpr::getGetElementPtr(
                helloWorldStr->getType(), helloWorldVar, indices);

            // Insert the printf call at the beginning of the function
            if (!F.empty()) {
                llvm::BasicBlock &entryBlock = F.getEntryBlock();
                builder.SetInsertPoint(&entryBlock, entryBlock.getFirstInsertionPt());
                builder.CreateCall(printfFunc, {helloWorldStrPtr});
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
                if (name == "hello") {
                    FPM.addPass(HelloPass{});
                    return true;
                }
                return false;
            });
    }};
}

