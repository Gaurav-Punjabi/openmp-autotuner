; ModuleID = '../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/gemver/gemver.c'
source_filename = "../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/gemver/gemver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [95 x i8] c";../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/gemver/gemver.c;kernel_p1;73;1;;\00", align 1
@2 = private unnamed_addr constant [96 x i8] c";../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/gemver/gemver.c;kernel_p1;73;37;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant [95 x i8] c";../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/gemver/gemver.c;kernel_p2;85;1;;\00", align 1
@5 = private unnamed_addr constant [96 x i8] c";../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/gemver/gemver.c;kernel_p2;85;25;;\00", align 1
@6 = private unnamed_addr constant [95 x i8] c";../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/gemver/gemver.c;kernel_p3;97;1;;\00", align 1
@7 = private unnamed_addr constant [96 x i8] c";../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/gemver/gemver.c;kernel_p3;97;25;;\00", align 1
@8 = private unnamed_addr constant [96 x i8] c";../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/gemver/gemver.c;kernel_p4;106;1;;\00", align 1
@9 = private unnamed_addr constant [97 x i8] c";../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/gemver/gemver.c;kernel_p4;106;25;;\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.8 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@llvm.used = appending global [5 x i8*] [i8* bitcast (void (i32, double, double, [8000 x double]*, double*, double*, double*, double*, double*, double*, double*, double*)* @kernel_gemver to i8*), i8* bitcast (void (i32, [8000 x double]*, double*, double*, double*, double*)* @kernel_p1 to i8*), i8* bitcast (void (i32, double, [8000 x double]*, double*, double*)* @kernel_p2 to i8*), i8* bitcast (void (i32, double*, double*)* @kernel_p3 to i8*), i8* bitcast (void (i32, double, [8000 x double]*, double*, double*)* @kernel_p4 to i8*)], section "llvm.metadata"

; Function Attrs: nounwind uwtable
define internal void @kernel_p1(i32 %0, [8000 x double]* %1, double* %2, double* %3, double* %4, double* %5) #0 !dbg !32 {
  %7 = alloca i32, align 4
  %8 = alloca [8000 x double]*, align 8
  %9 = alloca double*, align 8
  %10 = alloca double*, align 8
  %11 = alloca double*, align 8
  %12 = alloca double*, align 8
  %13 = alloca %struct.ident_t, align 8
  %14 = bitcast %struct.ident_t* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %14, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @3 to i8*), i64 16, i1 false)
  call void @llvm.dbg.value(metadata i32 %0, metadata !37, metadata !DIExpression()), !dbg !43
  store i32 %0, i32* %7, align 4, !tbaa !44
  call void @llvm.dbg.value(metadata [8000 x double]* %1, metadata !38, metadata !DIExpression()), !dbg !43
  store [8000 x double]* %1, [8000 x double]** %8, align 8, !tbaa !48
  call void @llvm.dbg.value(metadata double* %2, metadata !39, metadata !DIExpression()), !dbg !43
  store double* %2, double** %9, align 8, !tbaa !48
  call void @llvm.dbg.value(metadata double* %3, metadata !40, metadata !DIExpression()), !dbg !43
  store double* %3, double** %10, align 8, !tbaa !48
  call void @llvm.dbg.value(metadata double* %4, metadata !41, metadata !DIExpression()), !dbg !43
  store double* %4, double** %11, align 8, !tbaa !48
  call void @llvm.dbg.value(metadata double* %5, metadata !42, metadata !DIExpression()), !dbg !43
  store double* %5, double** %12, align 8, !tbaa !48
  %15 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %13, i64 0, i32 4, !dbg !50
  store i8* getelementptr inbounds ([95 x i8], [95 x i8]* @1, i64 0, i64 0), i8** %15, align 8, !dbg !50, !tbaa !51
  call void @llvm.dbg.value(metadata i32* %7, metadata !37, metadata !DIExpression(DW_OP_deref)), !dbg !43
  call void @llvm.dbg.value(metadata [8000 x double]** %8, metadata !38, metadata !DIExpression(DW_OP_deref)), !dbg !43
  call void @llvm.dbg.value(metadata double** %9, metadata !39, metadata !DIExpression(DW_OP_deref)), !dbg !43
  call void @llvm.dbg.value(metadata double** %10, metadata !40, metadata !DIExpression(DW_OP_deref)), !dbg !43
  call void @llvm.dbg.value(metadata double** %11, metadata !41, metadata !DIExpression(DW_OP_deref)), !dbg !43
  call void @llvm.dbg.value(metadata double** %12, metadata !42, metadata !DIExpression(DW_OP_deref)), !dbg !43
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %13, i32 6, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [8000 x double]**, double**, double**, double**, double**)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %7, [8000 x double]** nonnull %8, double** nonnull %9, double** nonnull %10, double** nonnull %11, double** nonnull %12) #8, !dbg !50
  ret void, !dbg !53
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_for_static_init_8(%struct.ident_t*, i32, i32, i32*, i64*, i64*, i64*, i64, i64) local_unnamed_addr

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32) local_unnamed_addr

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture readonly dereferenceable(4) %2, [8000 x double]** nocapture readonly dereferenceable(8) %3, double** nocapture readonly dereferenceable(8) %4, double** nocapture readonly dereferenceable(8) %5, double** nocapture readonly dereferenceable(8) %6, double** nocapture readonly dereferenceable(8) %7) #2 !dbg !54 {
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ident_t, align 8
  call void @llvm.dbg.value(metadata i32* %0, metadata !65, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.value(metadata i32* %1, metadata !66, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.value(metadata i32* %2, metadata !67, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.value(metadata [8000 x double]** %3, metadata !68, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.value(metadata double** %4, metadata !69, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.value(metadata double** %5, metadata !70, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.value(metadata double** %6, metadata !71, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.value(metadata double** %7, metadata !72, metadata !DIExpression()), !dbg !73
  %14 = load i32, i32* %2, align 4, !dbg !74, !tbaa !44
  %15 = bitcast %struct.ident_t* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %15)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %15, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @0 to i8*), i64 24, i1 false) #8, !noalias !75
  call void @llvm.dbg.value(metadata i32* %0, metadata !78, metadata !DIExpression()) #8, !dbg !98
  call void @llvm.dbg.value(metadata i32* undef, metadata !81, metadata !DIExpression()) #8, !dbg !98
  call void @llvm.dbg.value(metadata [8000 x double]** %3, metadata !83, metadata !DIExpression()) #8, !dbg !98
  call void @llvm.dbg.value(metadata double** %4, metadata !84, metadata !DIExpression()) #8, !dbg !98
  call void @llvm.dbg.value(metadata double** %5, metadata !85, metadata !DIExpression()) #8, !dbg !98
  call void @llvm.dbg.value(metadata double** %6, metadata !86, metadata !DIExpression()) #8, !dbg !98
  call void @llvm.dbg.value(metadata double** %7, metadata !87, metadata !DIExpression()) #8, !dbg !98
  call void @llvm.dbg.value(metadata i32 %14, metadata !90, metadata !DIExpression()) #8, !dbg !98
  call void @llvm.dbg.value(metadata i32 %14, metadata !90, metadata !DIExpression()) #8, !dbg !98
  %16 = sext i32 %14 to i64, !dbg !100
  %17 = mul nsw i64 %16, %16, !dbg !101
  %18 = add nsw i64 %17, -1, !dbg !101
  call void @llvm.dbg.value(metadata i64 %18, metadata !91, metadata !DIExpression()) #8, !dbg !98
  call void @llvm.dbg.value(metadata i32 0, metadata !92, metadata !DIExpression()) #8, !dbg !98
  call void @llvm.dbg.value(metadata i32 0, metadata !93, metadata !DIExpression()) #8, !dbg !98
  %19 = icmp sgt i32 %14, 0, !dbg !100
  br i1 %19, label %20, label %64, !dbg !102

20:                                               ; preds = %8
  %21 = bitcast i64* %9 to i8*, !dbg !100
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %21) #8, !dbg !100, !noalias !75
  call void @llvm.dbg.value(metadata i64 0, metadata !94, metadata !DIExpression()) #8, !dbg !98
  store i64 0, i64* %9, align 8, !dbg !103, !tbaa !104, !noalias !75
  %22 = bitcast i64* %10 to i8*, !dbg !100
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %22) #8, !dbg !100, !noalias !75
  call void @llvm.dbg.value(metadata i64 %18, metadata !95, metadata !DIExpression()) #8, !dbg !98
  store i64 %18, i64* %10, align 8, !dbg !103, !tbaa !104, !noalias !75
  %23 = bitcast i64* %11 to i8*, !dbg !100
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #8, !dbg !100, !noalias !75
  call void @llvm.dbg.value(metadata i64 1, metadata !96, metadata !DIExpression()) #8, !dbg !98
  store i64 1, i64* %11, align 8, !dbg !103, !tbaa !104, !noalias !75
  %24 = bitcast i32* %12 to i8*, !dbg !100
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #8, !dbg !100, !noalias !75
  call void @llvm.dbg.value(metadata i32 0, metadata !97, metadata !DIExpression()) #8, !dbg !98
  store i32 0, i32* %12, align 4, !dbg !103, !tbaa !44, !noalias !75
  %25 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %13, i64 0, i32 4, !dbg !100
  store i8* getelementptr inbounds ([95 x i8], [95 x i8]* @1, i64 0, i64 0), i8** %25, align 8, !dbg !100, !tbaa !51, !noalias !75
  %26 = load i32, i32* %0, align 4, !dbg !100, !tbaa !44, !alias.scope !75
  call void @llvm.dbg.value(metadata i64* %9, metadata !94, metadata !DIExpression(DW_OP_deref)) #8, !dbg !98
  call void @llvm.dbg.value(metadata i64* %10, metadata !95, metadata !DIExpression(DW_OP_deref)) #8, !dbg !98
  call void @llvm.dbg.value(metadata i64* %11, metadata !96, metadata !DIExpression(DW_OP_deref)) #8, !dbg !98
  call void @llvm.dbg.value(metadata i32* %12, metadata !97, metadata !DIExpression(DW_OP_deref)) #8, !dbg !98
  call void @__kmpc_for_static_init_8(%struct.ident_t* nonnull %13, i32 %26, i32 34, i32* nonnull %12, i64* nonnull %9, i64* nonnull %10, i64* nonnull %11, i64 1, i64 1) #8, !dbg !100, !noalias !75
  %27 = load i64, i64* %10, align 8, !dbg !103, !tbaa !104, !noalias !75
  call void @llvm.dbg.value(metadata i64 %27, metadata !95, metadata !DIExpression()) #8, !dbg !98
  %28 = icmp slt i64 %27, %17, !dbg !103
  %29 = select i1 %28, i64 %27, i64 %18, !dbg !103
  call void @llvm.dbg.value(metadata i64 %29, metadata !95, metadata !DIExpression()) #8, !dbg !98
  store i64 %29, i64* %10, align 8, !dbg !103, !tbaa !104, !noalias !75
  %30 = load i64, i64* %9, align 8, !dbg !103, !tbaa !104, !noalias !75
  call void @llvm.dbg.value(metadata i64 %30, metadata !94, metadata !DIExpression()) #8, !dbg !98
  call void @llvm.dbg.value(metadata i64 %30, metadata !88, metadata !DIExpression()) #8, !dbg !98
  call void @llvm.dbg.value(metadata i64 %29, metadata !95, metadata !DIExpression()) #8, !dbg !98
  %31 = icmp sgt i64 %30, %29, !dbg !100
  br i1 %31, label %63, label %32, !dbg !100

32:                                               ; preds = %20
  %33 = load [8000 x double]*, [8000 x double]** %3, align 8, !dbg !106, !tbaa !48, !noalias !75
  %34 = load double*, double** %4, align 8, !dbg !106, !tbaa !48, !noalias !75
  %35 = load double*, double** %5, align 8, !dbg !106, !tbaa !48, !noalias !75
  %36 = load double*, double** %6, align 8, !dbg !106, !tbaa !48, !noalias !75
  %37 = load double*, double** %7, align 8, !dbg !106, !tbaa !48, !noalias !75
  br label %38, !dbg !100

38:                                               ; preds = %38, %32
  %39 = phi i64 [ %30, %32 ], [ %61, %38 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !88, metadata !DIExpression()) #8, !dbg !98
  %40 = sdiv i64 %39, %16, !dbg !108
  call void @llvm.dbg.value(metadata i64 %40, metadata !92, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !98
  %41 = mul nsw i64 %40, %16, !dbg !108
  %42 = srem i64 %39, %16
  call void @llvm.dbg.value(metadata i64 %42, metadata !93, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !98
  %43 = shl i64 %40, 32, !dbg !109
  %44 = ashr exact i64 %43, 32, !dbg !109
  %45 = shl i64 %42, 32, !dbg !109
  %46 = ashr exact i64 %45, 32, !dbg !109
  %47 = getelementptr inbounds [8000 x double], [8000 x double]* %33, i64 %44, i64 %46, !dbg !109
  %48 = load double, double* %47, align 8, !dbg !109, !tbaa !110, !noalias !75
  %49 = getelementptr inbounds double, double* %34, i64 %44, !dbg !112
  %50 = load double, double* %49, align 8, !dbg !112, !tbaa !110, !noalias !75
  %51 = getelementptr inbounds double, double* %35, i64 %46, !dbg !113
  %52 = load double, double* %51, align 8, !dbg !113, !tbaa !110, !noalias !75
  %53 = fmul double %50, %52, !dbg !114
  %54 = fadd double %48, %53, !dbg !115
  %55 = getelementptr inbounds double, double* %36, i64 %44, !dbg !116
  %56 = load double, double* %55, align 8, !dbg !116, !tbaa !110, !noalias !75
  %57 = getelementptr inbounds double, double* %37, i64 %46, !dbg !117
  %58 = load double, double* %57, align 8, !dbg !117, !tbaa !110, !noalias !75
  %59 = fmul double %56, %58, !dbg !118
  %60 = fadd double %54, %59, !dbg !119
  store double %60, double* %47, align 8, !dbg !120, !tbaa !110, !noalias !75
  %61 = add nsw i64 %39, 1, !dbg !100
  call void @llvm.dbg.value(metadata i64 %61, metadata !88, metadata !DIExpression()) #8, !dbg !98
  call void @llvm.dbg.value(metadata i64 %29, metadata !95, metadata !DIExpression()) #8, !dbg !98
  %62 = icmp slt i64 %39, %29, !dbg !100
  br i1 %62, label %38, label %63, !dbg !100, !llvm.loop !121

63:                                               ; preds = %38, %20
  store i8* getelementptr inbounds ([96 x i8], [96 x i8]* @2, i64 0, i64 0), i8** %25, align 8, !dbg !122, !tbaa !51, !noalias !75
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull %13, i32 %26) #8, !dbg !122, !noalias !75
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #8, !dbg !122, !noalias !75
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #8, !dbg !122, !noalias !75
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22) #8, !dbg !122, !noalias !75
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #8, !dbg !122, !noalias !75
  br label %64, !dbg !122

64:                                               ; preds = %8, %63
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %15), !dbg !124
  ret void, !dbg !74
}

declare !callback !125 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr

; Function Attrs: nounwind uwtable
define internal void @kernel_p2(i32 %0, double %1, [8000 x double]* %2, double* %3, double* %4) #0 !dbg !127 {
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca [8000 x double]*, align 8
  %9 = alloca double*, align 8
  %10 = alloca double*, align 8
  %11 = alloca %struct.ident_t, align 8
  %12 = bitcast %struct.ident_t* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %12, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @3 to i8*), i64 16, i1 false)
  call void @llvm.dbg.value(metadata i32 %0, metadata !131, metadata !DIExpression()), !dbg !136
  store i32 %0, i32* %6, align 4, !tbaa !44
  call void @llvm.dbg.value(metadata double %1, metadata !132, metadata !DIExpression()), !dbg !136
  store double %1, double* %7, align 8, !tbaa !110
  call void @llvm.dbg.value(metadata [8000 x double]* %2, metadata !133, metadata !DIExpression()), !dbg !136
  store [8000 x double]* %2, [8000 x double]** %8, align 8, !tbaa !48
  call void @llvm.dbg.value(metadata double* %3, metadata !134, metadata !DIExpression()), !dbg !136
  store double* %3, double** %9, align 8, !tbaa !48
  call void @llvm.dbg.value(metadata double* %4, metadata !135, metadata !DIExpression()), !dbg !136
  store double* %4, double** %10, align 8, !tbaa !48
  %13 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %11, i64 0, i32 4, !dbg !137
  store i8* getelementptr inbounds ([95 x i8], [95 x i8]* @4, i64 0, i64 0), i8** %13, align 8, !dbg !137, !tbaa !51
  call void @llvm.dbg.value(metadata i32* %6, metadata !131, metadata !DIExpression(DW_OP_deref)), !dbg !136
  call void @llvm.dbg.value(metadata double* %7, metadata !132, metadata !DIExpression(DW_OP_deref)), !dbg !136
  call void @llvm.dbg.value(metadata [8000 x double]** %8, metadata !133, metadata !DIExpression(DW_OP_deref)), !dbg !136
  call void @llvm.dbg.value(metadata double** %9, metadata !134, metadata !DIExpression(DW_OP_deref)), !dbg !136
  call void @llvm.dbg.value(metadata double** %10, metadata !135, metadata !DIExpression(DW_OP_deref)), !dbg !136
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %11, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, double**, double*, [8000 x double]**, double**)* @.omp_outlined..2 to void (i32*, i32*, ...)*), i32* nonnull %6, double** nonnull %10, double* nonnull %7, [8000 x double]** nonnull %8, double** nonnull %9) #8, !dbg !137
  ret void, !dbg !138
}

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32) local_unnamed_addr

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined..2(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture readonly dereferenceable(4) %2, double** nocapture readonly dereferenceable(8) %3, double* nocapture readonly dereferenceable(8) %4, [8000 x double]** nocapture readonly dereferenceable(8) %5, double** nocapture readonly dereferenceable(8) %6) #2 !dbg !139 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ident_t, align 8
  call void @llvm.dbg.value(metadata i32* %0, metadata !144, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.value(metadata i32* %1, metadata !145, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.value(metadata i32* %2, metadata !146, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.value(metadata double** %3, metadata !147, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.value(metadata double* %4, metadata !148, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.value(metadata [8000 x double]** %5, metadata !149, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.value(metadata double** %6, metadata !150, metadata !DIExpression()), !dbg !151
  %13 = bitcast %struct.ident_t* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %13)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %13, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @0 to i8*), i64 24, i1 false) #8, !noalias !152
  call void @llvm.dbg.value(metadata i32* %0, metadata !155, metadata !DIExpression()) #8, !dbg !174
  call void @llvm.dbg.value(metadata i32* undef, metadata !158, metadata !DIExpression()) #8, !dbg !174
  call void @llvm.dbg.value(metadata i32* %2, metadata !159, metadata !DIExpression()) #8, !dbg !174
  call void @llvm.dbg.value(metadata double** %3, metadata !160, metadata !DIExpression()) #8, !dbg !174
  call void @llvm.dbg.value(metadata double* %4, metadata !161, metadata !DIExpression()) #8, !dbg !174
  call void @llvm.dbg.value(metadata [8000 x double]** %5, metadata !162, metadata !DIExpression()) #8, !dbg !174
  call void @llvm.dbg.value(metadata double** %6, metadata !163, metadata !DIExpression()) #8, !dbg !174
  %14 = load i32, i32* %2, align 4, !dbg !176, !tbaa !44, !noalias !152
  call void @llvm.dbg.value(metadata i32 %14, metadata !165, metadata !DIExpression()) #8, !dbg !174
  %15 = add nsw i32 %14, -1, !dbg !177
  call void @llvm.dbg.value(metadata i32 %15, metadata !165, metadata !DIExpression()) #8, !dbg !174
  call void @llvm.dbg.value(metadata i32 0, metadata !166, metadata !DIExpression()) #8, !dbg !174
  %16 = icmp sgt i32 %14, 0, !dbg !177
  br i1 %16, label %17, label %87, !dbg !177

17:                                               ; preds = %7
  %18 = bitcast i32* %8 to i8*, !dbg !177
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18) #8, !dbg !177, !noalias !152
  call void @llvm.dbg.value(metadata i32 0, metadata !167, metadata !DIExpression()) #8, !dbg !174
  store i32 0, i32* %8, align 4, !dbg !178, !tbaa !44, !noalias !152
  %19 = bitcast i32* %9 to i8*, !dbg !177
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #8, !dbg !177, !noalias !152
  call void @llvm.dbg.value(metadata i32 %15, metadata !168, metadata !DIExpression()) #8, !dbg !174
  store i32 %15, i32* %9, align 4, !dbg !178, !tbaa !44, !noalias !152
  %20 = bitcast i32* %10 to i8*, !dbg !177
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %20) #8, !dbg !177, !noalias !152
  call void @llvm.dbg.value(metadata i32 1, metadata !169, metadata !DIExpression()) #8, !dbg !174
  store i32 1, i32* %10, align 4, !dbg !178, !tbaa !44, !noalias !152
  %21 = bitcast i32* %11 to i8*, !dbg !177
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %21) #8, !dbg !177, !noalias !152
  call void @llvm.dbg.value(metadata i32 0, metadata !170, metadata !DIExpression()) #8, !dbg !174
  store i32 0, i32* %11, align 4, !dbg !178, !tbaa !44, !noalias !152
  %22 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %12, i64 0, i32 4, !dbg !177
  store i8* getelementptr inbounds ([95 x i8], [95 x i8]* @4, i64 0, i64 0), i8** %22, align 8, !dbg !177, !tbaa !51, !noalias !152
  %23 = load i32, i32* %0, align 4, !dbg !177, !tbaa !44, !alias.scope !152
  call void @llvm.dbg.value(metadata i32* %8, metadata !167, metadata !DIExpression(DW_OP_deref)) #8, !dbg !174
  call void @llvm.dbg.value(metadata i32* %9, metadata !168, metadata !DIExpression(DW_OP_deref)) #8, !dbg !174
  call void @llvm.dbg.value(metadata i32* %10, metadata !169, metadata !DIExpression(DW_OP_deref)) #8, !dbg !174
  call void @llvm.dbg.value(metadata i32* %11, metadata !170, metadata !DIExpression(DW_OP_deref)) #8, !dbg !174
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull %12, i32 %23, i32 34, i32* nonnull %11, i32* nonnull %8, i32* nonnull %9, i32* nonnull %10, i32 1, i32 1) #8, !dbg !177, !noalias !152
  %24 = load i32, i32* %9, align 4, !dbg !178, !tbaa !44, !noalias !152
  call void @llvm.dbg.value(metadata i32 %24, metadata !168, metadata !DIExpression()) #8, !dbg !174
  %25 = icmp slt i32 %24, %14, !dbg !178
  %26 = select i1 %25, i32 %24, i32 %15, !dbg !178
  call void @llvm.dbg.value(metadata i32 %26, metadata !168, metadata !DIExpression()) #8, !dbg !174
  store i32 %26, i32* %9, align 4, !dbg !178, !tbaa !44, !noalias !152
  %27 = load i32, i32* %8, align 4, !dbg !178, !tbaa !44, !noalias !152
  call void @llvm.dbg.value(metadata i32 %27, metadata !167, metadata !DIExpression()) #8, !dbg !174
  call void @llvm.dbg.value(metadata i32 %27, metadata !164, metadata !DIExpression()) #8, !dbg !174
  call void @llvm.dbg.value(metadata i32 %26, metadata !168, metadata !DIExpression()) #8, !dbg !174
  %28 = icmp sgt i32 %27, %26, !dbg !177
  br i1 %28, label %86, label %29, !dbg !177

29:                                               ; preds = %17
  %30 = load i32, i32* %2, align 4, !dbg !179, !noalias !152
  %31 = icmp sgt i32 %30, 0, !dbg !179
  %32 = load double*, double** %3, align 8, !dbg !181, !noalias !152
  %33 = load [8000 x double]*, [8000 x double]** %5, align 8, !dbg !181, !noalias !152
  %34 = load double*, double** %6, align 8, !dbg !181, !noalias !152
  br i1 %31, label %35, label %86, !dbg !177

35:                                               ; preds = %29
  %36 = sext i32 %27 to i64, !dbg !183
  %37 = sext i32 %26 to i64, !dbg !183
  %38 = zext i32 %30 to i64, !dbg !179
  %39 = and i64 %38, 1, !dbg !184
  %40 = icmp eq i32 %30, 1, !dbg !184
  %41 = sub nsw i64 %38, %39, !dbg !184
  %42 = icmp eq i64 %39, 0, !dbg !184
  br label %43, !dbg !183

43:                                               ; preds = %83, %35
  %44 = phi i64 [ %36, %35 ], [ %84, %83 ]
  call void @llvm.dbg.value(metadata i64 %44, metadata !164, metadata !DIExpression()) #8, !dbg !174
  call void @llvm.dbg.value(metadata i32 0, metadata !171, metadata !DIExpression()) #8, !dbg !184
  %45 = getelementptr inbounds double, double* %32, i64 %44, !dbg !181
  %46 = load double, double* %45, align 8, !dbg !185, !tbaa !110, !noalias !152
  br i1 %40, label %71, label %47, !dbg !186

47:                                               ; preds = %43, %47
  %48 = phi double [ %67, %47 ], [ %46, %43 ], !dbg !185
  %49 = phi i64 [ %68, %47 ], [ 0, %43 ]
  %50 = phi i64 [ %69, %47 ], [ %41, %43 ]
  call void @llvm.dbg.value(metadata i64 %49, metadata !171, metadata !DIExpression()) #8, !dbg !184
  %51 = load double, double* %4, align 8, !dbg !187, !tbaa !110, !noalias !152
  %52 = getelementptr inbounds [8000 x double], [8000 x double]* %33, i64 %49, i64 %44, !dbg !188
  %53 = load double, double* %52, align 8, !dbg !188, !tbaa !110, !noalias !152
  %54 = fmul double %51, %53, !dbg !189
  %55 = getelementptr inbounds double, double* %34, i64 %49, !dbg !190
  %56 = load double, double* %55, align 8, !dbg !190, !tbaa !110, !noalias !152
  %57 = fmul double %54, %56, !dbg !191
  %58 = fadd double %48, %57, !dbg !192
  store double %58, double* %45, align 8, !dbg !193, !tbaa !110, !noalias !152
  %59 = or i64 %49, 1, !dbg !194
  call void @llvm.dbg.value(metadata i64 %59, metadata !171, metadata !DIExpression()) #8, !dbg !184
  %60 = load double, double* %4, align 8, !dbg !187, !tbaa !110, !noalias !152
  %61 = getelementptr inbounds [8000 x double], [8000 x double]* %33, i64 %59, i64 %44, !dbg !188
  %62 = load double, double* %61, align 8, !dbg !188, !tbaa !110, !noalias !152
  %63 = fmul double %60, %62, !dbg !189
  %64 = getelementptr inbounds double, double* %34, i64 %59, !dbg !190
  %65 = load double, double* %64, align 8, !dbg !190, !tbaa !110, !noalias !152
  %66 = fmul double %63, %65, !dbg !191
  %67 = fadd double %58, %66, !dbg !192
  store double %67, double* %45, align 8, !dbg !193, !tbaa !110, !noalias !152
  %68 = add nuw nsw i64 %49, 2, !dbg !194
  call void @llvm.dbg.value(metadata i64 %68, metadata !171, metadata !DIExpression()) #8, !dbg !184
  %69 = add i64 %50, -2, !dbg !186
  %70 = icmp eq i64 %69, 0, !dbg !186
  br i1 %70, label %71, label %47, !dbg !186, !llvm.loop !195

71:                                               ; preds = %47, %43
  %72 = phi double [ %46, %43 ], [ %67, %47 ]
  %73 = phi i64 [ 0, %43 ], [ %68, %47 ]
  br i1 %42, label %83, label %74, !dbg !186

74:                                               ; preds = %71
  call void @llvm.dbg.value(metadata i64 %73, metadata !171, metadata !DIExpression()) #8, !dbg !184
  %75 = load double, double* %4, align 8, !dbg !187, !tbaa !110, !noalias !152
  %76 = getelementptr inbounds [8000 x double], [8000 x double]* %33, i64 %73, i64 %44, !dbg !188
  %77 = load double, double* %76, align 8, !dbg !188, !tbaa !110, !noalias !152
  %78 = fmul double %75, %77, !dbg !189
  %79 = getelementptr inbounds double, double* %34, i64 %73, !dbg !190
  %80 = load double, double* %79, align 8, !dbg !190, !tbaa !110, !noalias !152
  %81 = fmul double %78, %80, !dbg !191
  %82 = fadd double %72, %81, !dbg !192
  store double %82, double* %45, align 8, !dbg !193, !tbaa !110, !noalias !152
  call void @llvm.dbg.value(metadata i64 %73, metadata !171, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #8, !dbg !184
  br label %83, !dbg !177

83:                                               ; preds = %71, %74
  %84 = add nsw i64 %44, 1, !dbg !177
  call void @llvm.dbg.value(metadata i64 %84, metadata !164, metadata !DIExpression()) #8, !dbg !174
  call void @llvm.dbg.value(metadata i32 %26, metadata !168, metadata !DIExpression()) #8, !dbg !174
  %85 = icmp slt i64 %44, %37, !dbg !177
  br i1 %85, label %43, label %86, !dbg !177, !llvm.loop !197

86:                                               ; preds = %83, %29, %17
  store i8* getelementptr inbounds ([96 x i8], [96 x i8]* @5, i64 0, i64 0), i8** %22, align 8, !dbg !183, !tbaa !51, !noalias !152
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull %12, i32 %23) #8, !dbg !183, !noalias !152
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %21) #8, !dbg !183, !noalias !152
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %20) #8, !dbg !183, !noalias !152
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #8, !dbg !183, !noalias !152
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #8, !dbg !183, !noalias !152
  br label %87, !dbg !183

87:                                               ; preds = %7, %86
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %13), !dbg !199
  ret void, !dbg !200
}

; Function Attrs: nounwind uwtable
define internal void @kernel_p3(i32 %0, double* %1, double* %2) #0 !dbg !201 {
  %4 = alloca i32, align 4
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  %7 = alloca %struct.ident_t, align 8
  %8 = bitcast %struct.ident_t* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %8, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @3 to i8*), i64 16, i1 false)
  call void @llvm.dbg.value(metadata i32 %0, metadata !205, metadata !DIExpression()), !dbg !208
  store i32 %0, i32* %4, align 4, !tbaa !44
  call void @llvm.dbg.value(metadata double* %1, metadata !206, metadata !DIExpression()), !dbg !208
  store double* %1, double** %5, align 8, !tbaa !48
  call void @llvm.dbg.value(metadata double* %2, metadata !207, metadata !DIExpression()), !dbg !208
  store double* %2, double** %6, align 8, !tbaa !48
  %9 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %7, i64 0, i32 4, !dbg !209
  store i8* getelementptr inbounds ([95 x i8], [95 x i8]* @6, i64 0, i64 0), i8** %9, align 8, !dbg !209, !tbaa !51
  call void @llvm.dbg.value(metadata i32* %4, metadata !205, metadata !DIExpression(DW_OP_deref)), !dbg !208
  call void @llvm.dbg.value(metadata double** %5, metadata !206, metadata !DIExpression(DW_OP_deref)), !dbg !208
  call void @llvm.dbg.value(metadata double** %6, metadata !207, metadata !DIExpression(DW_OP_deref)), !dbg !208
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %7, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, double**, double**)* @.omp_outlined..4 to void (i32*, i32*, ...)*), i32* nonnull %4, double** nonnull %5, double** nonnull %6) #8, !dbg !209
  ret void, !dbg !210
}

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined..4(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture readonly dereferenceable(4) %2, double** nocapture readonly dereferenceable(8) %3, double** nocapture readonly dereferenceable(8) %4) #2 !dbg !211 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ident_t, align 8
  call void @llvm.dbg.value(metadata i32* %0, metadata !215, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.value(metadata i32* %1, metadata !216, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.value(metadata i32* %2, metadata !217, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.value(metadata double** %3, metadata !218, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.value(metadata double** %4, metadata !219, metadata !DIExpression()), !dbg !220
  %11 = load i32, i32* %2, align 4, !dbg !221, !tbaa !44
  %12 = bitcast %struct.ident_t* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %12)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %12, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @0 to i8*), i64 24, i1 false) #8, !noalias !222
  call void @llvm.dbg.value(metadata i32* %0, metadata !225, metadata !DIExpression()) #8, !dbg !239
  call void @llvm.dbg.value(metadata i32* undef, metadata !228, metadata !DIExpression()) #8, !dbg !239
  call void @llvm.dbg.value(metadata double** %3, metadata !230, metadata !DIExpression()) #8, !dbg !239
  call void @llvm.dbg.value(metadata double** %4, metadata !231, metadata !DIExpression()) #8, !dbg !239
  call void @llvm.dbg.value(metadata i32 %11, metadata !233, metadata !DIExpression()) #8, !dbg !239
  %13 = add nsw i32 %11, -1, !dbg !241
  call void @llvm.dbg.value(metadata i32 %13, metadata !233, metadata !DIExpression()) #8, !dbg !239
  call void @llvm.dbg.value(metadata i32 0, metadata !234, metadata !DIExpression()) #8, !dbg !239
  %14 = icmp sgt i32 %11, 0, !dbg !241
  br i1 %14, label %15, label %134, !dbg !241

15:                                               ; preds = %5
  %16 = bitcast i32* %6 to i8*, !dbg !241
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %16) #8, !dbg !241, !noalias !222
  call void @llvm.dbg.value(metadata i32 0, metadata !235, metadata !DIExpression()) #8, !dbg !239
  store i32 0, i32* %6, align 4, !dbg !242, !tbaa !44, !noalias !222
  %17 = bitcast i32* %7 to i8*, !dbg !241
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %17) #8, !dbg !241, !noalias !222
  call void @llvm.dbg.value(metadata i32 %13, metadata !236, metadata !DIExpression()) #8, !dbg !239
  store i32 %13, i32* %7, align 4, !dbg !242, !tbaa !44, !noalias !222
  %18 = bitcast i32* %8 to i8*, !dbg !241
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18) #8, !dbg !241, !noalias !222
  call void @llvm.dbg.value(metadata i32 1, metadata !237, metadata !DIExpression()) #8, !dbg !239
  store i32 1, i32* %8, align 4, !dbg !242, !tbaa !44, !noalias !222
  %19 = bitcast i32* %9 to i8*, !dbg !241
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #8, !dbg !241, !noalias !222
  call void @llvm.dbg.value(metadata i32 0, metadata !238, metadata !DIExpression()) #8, !dbg !239
  store i32 0, i32* %9, align 4, !dbg !242, !tbaa !44, !noalias !222
  %20 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %10, i64 0, i32 4, !dbg !241
  store i8* getelementptr inbounds ([95 x i8], [95 x i8]* @6, i64 0, i64 0), i8** %20, align 8, !dbg !241, !tbaa !51, !noalias !222
  %21 = load i32, i32* %0, align 4, !dbg !241, !tbaa !44, !alias.scope !222
  call void @llvm.dbg.value(metadata i32* %6, metadata !235, metadata !DIExpression(DW_OP_deref)) #8, !dbg !239
  call void @llvm.dbg.value(metadata i32* %7, metadata !236, metadata !DIExpression(DW_OP_deref)) #8, !dbg !239
  call void @llvm.dbg.value(metadata i32* %8, metadata !237, metadata !DIExpression(DW_OP_deref)) #8, !dbg !239
  call void @llvm.dbg.value(metadata i32* %9, metadata !238, metadata !DIExpression(DW_OP_deref)) #8, !dbg !239
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull %10, i32 %21, i32 34, i32* nonnull %9, i32* nonnull %6, i32* nonnull %7, i32* nonnull %8, i32 1, i32 1) #8, !dbg !241, !noalias !222
  %22 = load i32, i32* %7, align 4, !dbg !242, !tbaa !44, !noalias !222
  call void @llvm.dbg.value(metadata i32 %22, metadata !236, metadata !DIExpression()) #8, !dbg !239
  %23 = icmp slt i32 %22, %11, !dbg !242
  %24 = select i1 %23, i32 %22, i32 %13, !dbg !242
  call void @llvm.dbg.value(metadata i32 %24, metadata !236, metadata !DIExpression()) #8, !dbg !239
  store i32 %24, i32* %7, align 4, !dbg !242, !tbaa !44, !noalias !222
  %25 = load i32, i32* %6, align 4, !dbg !242, !tbaa !44, !noalias !222
  call void @llvm.dbg.value(metadata i32 %25, metadata !235, metadata !DIExpression()) #8, !dbg !239
  call void @llvm.dbg.value(metadata i32 %25, metadata !232, metadata !DIExpression()) #8, !dbg !239
  call void @llvm.dbg.value(metadata i32 %24, metadata !236, metadata !DIExpression()) #8, !dbg !239
  %26 = icmp sgt i32 %25, %24, !dbg !241
  br i1 %26, label %133, label %27, !dbg !241

27:                                               ; preds = %15
  %28 = load double*, double** %3, align 8, !dbg !243, !tbaa !48, !noalias !222
  %29 = load double*, double** %4, align 8, !dbg !243, !tbaa !48, !noalias !222
  %30 = sext i32 %25 to i64, !dbg !241
  %31 = sext i32 %24 to i64, !dbg !241
  %32 = icmp sgt i64 %31, %30, !dbg !241
  %33 = select i1 %32, i64 %31, i64 %30, !dbg !241
  %34 = add nsw i64 %33, 1, !dbg !241
  %35 = sub nsw i64 %34, %30, !dbg !241
  %36 = icmp ult i64 %35, 4, !dbg !241
  br i1 %36, label %122, label %37, !dbg !241

37:                                               ; preds = %27
  %38 = getelementptr double, double* %28, i64 %30, !dbg !241
  %39 = icmp sgt i64 %31, %30, !dbg !241
  %40 = select i1 %39, i64 %31, i64 %30, !dbg !241
  %41 = add nsw i64 %40, 1, !dbg !241
  %42 = getelementptr double, double* %28, i64 %41, !dbg !241
  %43 = getelementptr double, double* %29, i64 %30, !dbg !241
  %44 = getelementptr double, double* %29, i64 %41, !dbg !241
  %45 = icmp ult double* %38, %44, !dbg !241
  %46 = icmp ult double* %43, %42, !dbg !241
  %47 = and i1 %45, %46, !dbg !241
  br i1 %47, label %122, label %48, !dbg !241

48:                                               ; preds = %37
  %49 = and i64 %35, -4, !dbg !241
  %50 = add nsw i64 %49, %30, !dbg !241
  %51 = add nsw i64 %49, -4, !dbg !241
  %52 = lshr exact i64 %51, 2, !dbg !241
  %53 = add nuw nsw i64 %52, 1, !dbg !241
  %54 = and i64 %53, 1, !dbg !241
  %55 = icmp eq i64 %51, 0, !dbg !241
  br i1 %55, label %99, label %56, !dbg !241

56:                                               ; preds = %48
  %57 = sub nuw nsw i64 %53, %54, !dbg !241
  br label %58, !dbg !241

58:                                               ; preds = %58, %56
  %59 = phi i64 [ 0, %56 ], [ %96, %58 ]
  %60 = phi i64 [ %57, %56 ], [ %97, %58 ]
  %61 = add i64 %59, %30
  %62 = getelementptr inbounds double, double* %28, i64 %61, !dbg !245
  %63 = bitcast double* %62 to <2 x double>*, !dbg !245
  %64 = load <2 x double>, <2 x double>* %63, align 8, !dbg !245, !tbaa !110, !alias.scope !246, !noalias !249
  %65 = getelementptr inbounds double, double* %62, i64 2, !dbg !245
  %66 = bitcast double* %65 to <2 x double>*, !dbg !245
  %67 = load <2 x double>, <2 x double>* %66, align 8, !dbg !245, !tbaa !110, !alias.scope !246, !noalias !249
  %68 = getelementptr inbounds double, double* %29, i64 %61, !dbg !251
  %69 = bitcast double* %68 to <2 x double>*, !dbg !251
  %70 = load <2 x double>, <2 x double>* %69, align 8, !dbg !251, !tbaa !110, !alias.scope !252, !noalias !222
  %71 = getelementptr inbounds double, double* %68, i64 2, !dbg !251
  %72 = bitcast double* %71 to <2 x double>*, !dbg !251
  %73 = load <2 x double>, <2 x double>* %72, align 8, !dbg !251, !tbaa !110, !alias.scope !252, !noalias !222
  %74 = fadd <2 x double> %64, %70, !dbg !253
  %75 = fadd <2 x double> %67, %73, !dbg !253
  %76 = bitcast double* %62 to <2 x double>*, !dbg !254
  store <2 x double> %74, <2 x double>* %76, align 8, !dbg !254, !tbaa !110, !alias.scope !246, !noalias !249
  %77 = bitcast double* %65 to <2 x double>*, !dbg !254
  store <2 x double> %75, <2 x double>* %77, align 8, !dbg !254, !tbaa !110, !alias.scope !246, !noalias !249
  %78 = or i64 %59, 4
  %79 = add i64 %78, %30
  %80 = getelementptr inbounds double, double* %28, i64 %79, !dbg !245
  %81 = bitcast double* %80 to <2 x double>*, !dbg !245
  %82 = load <2 x double>, <2 x double>* %81, align 8, !dbg !245, !tbaa !110, !alias.scope !246, !noalias !249
  %83 = getelementptr inbounds double, double* %80, i64 2, !dbg !245
  %84 = bitcast double* %83 to <2 x double>*, !dbg !245
  %85 = load <2 x double>, <2 x double>* %84, align 8, !dbg !245, !tbaa !110, !alias.scope !246, !noalias !249
  %86 = getelementptr inbounds double, double* %29, i64 %79, !dbg !251
  %87 = bitcast double* %86 to <2 x double>*, !dbg !251
  %88 = load <2 x double>, <2 x double>* %87, align 8, !dbg !251, !tbaa !110, !alias.scope !252, !noalias !222
  %89 = getelementptr inbounds double, double* %86, i64 2, !dbg !251
  %90 = bitcast double* %89 to <2 x double>*, !dbg !251
  %91 = load <2 x double>, <2 x double>* %90, align 8, !dbg !251, !tbaa !110, !alias.scope !252, !noalias !222
  %92 = fadd <2 x double> %82, %88, !dbg !253
  %93 = fadd <2 x double> %85, %91, !dbg !253
  %94 = bitcast double* %80 to <2 x double>*, !dbg !254
  store <2 x double> %92, <2 x double>* %94, align 8, !dbg !254, !tbaa !110, !alias.scope !246, !noalias !249
  %95 = bitcast double* %83 to <2 x double>*, !dbg !254
  store <2 x double> %93, <2 x double>* %95, align 8, !dbg !254, !tbaa !110, !alias.scope !246, !noalias !249
  %96 = add i64 %59, 8
  %97 = add i64 %60, -2
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %58, !llvm.loop !255

99:                                               ; preds = %58, %48
  %100 = phi i64 [ 0, %48 ], [ %96, %58 ]
  %101 = icmp eq i64 %54, 0
  br i1 %101, label %120, label %102

102:                                              ; preds = %99
  %103 = add i64 %100, %30
  %104 = getelementptr inbounds double, double* %28, i64 %103, !dbg !245
  %105 = bitcast double* %104 to <2 x double>*, !dbg !245
  %106 = load <2 x double>, <2 x double>* %105, align 8, !dbg !245, !tbaa !110, !alias.scope !246, !noalias !249
  %107 = getelementptr inbounds double, double* %104, i64 2, !dbg !245
  %108 = bitcast double* %107 to <2 x double>*, !dbg !245
  %109 = load <2 x double>, <2 x double>* %108, align 8, !dbg !245, !tbaa !110, !alias.scope !246, !noalias !249
  %110 = getelementptr inbounds double, double* %29, i64 %103, !dbg !251
  %111 = bitcast double* %110 to <2 x double>*, !dbg !251
  %112 = load <2 x double>, <2 x double>* %111, align 8, !dbg !251, !tbaa !110, !alias.scope !252, !noalias !222
  %113 = getelementptr inbounds double, double* %110, i64 2, !dbg !251
  %114 = bitcast double* %113 to <2 x double>*, !dbg !251
  %115 = load <2 x double>, <2 x double>* %114, align 8, !dbg !251, !tbaa !110, !alias.scope !252, !noalias !222
  %116 = fadd <2 x double> %106, %112, !dbg !253
  %117 = fadd <2 x double> %109, %115, !dbg !253
  %118 = bitcast double* %104 to <2 x double>*, !dbg !254
  store <2 x double> %116, <2 x double>* %118, align 8, !dbg !254, !tbaa !110, !alias.scope !246, !noalias !249
  %119 = bitcast double* %107 to <2 x double>*, !dbg !254
  store <2 x double> %117, <2 x double>* %119, align 8, !dbg !254, !tbaa !110, !alias.scope !246, !noalias !249
  br label %120, !dbg !241

120:                                              ; preds = %99, %102
  %121 = icmp eq i64 %35, %49, !dbg !241
  br i1 %121, label %133, label %122, !dbg !241

122:                                              ; preds = %120, %37, %27
  %123 = phi i64 [ %30, %37 ], [ %30, %27 ], [ %50, %120 ]
  br label %124, !dbg !256

124:                                              ; preds = %122, %124
  %125 = phi i64 [ %131, %124 ], [ %123, %122 ]
  call void @llvm.dbg.value(metadata i64 %125, metadata !232, metadata !DIExpression()) #8, !dbg !239
  call void @llvm.dbg.value(metadata i64 %125, metadata !234, metadata !DIExpression()) #8, !dbg !239
  %126 = getelementptr inbounds double, double* %28, i64 %125, !dbg !245
  %127 = load double, double* %126, align 8, !dbg !245, !tbaa !110, !noalias !222
  %128 = getelementptr inbounds double, double* %29, i64 %125, !dbg !251
  %129 = load double, double* %128, align 8, !dbg !251, !tbaa !110, !noalias !222
  %130 = fadd double %127, %129, !dbg !253
  store double %130, double* %126, align 8, !dbg !254, !tbaa !110, !noalias !222
  %131 = add nsw i64 %125, 1, !dbg !241
  call void @llvm.dbg.value(metadata i64 %131, metadata !232, metadata !DIExpression()) #8, !dbg !239
  call void @llvm.dbg.value(metadata i32 %24, metadata !236, metadata !DIExpression()) #8, !dbg !239
  %132 = icmp slt i64 %125, %31, !dbg !241
  br i1 %132, label %124, label %133, !dbg !241, !llvm.loop !259

133:                                              ; preds = %124, %120, %15
  store i8* getelementptr inbounds ([96 x i8], [96 x i8]* @7, i64 0, i64 0), i8** %20, align 8, !dbg !256, !tbaa !51, !noalias !222
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull %10, i32 %21) #8, !dbg !256, !noalias !222
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #8, !dbg !256, !noalias !222
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #8, !dbg !256, !noalias !222
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %17) #8, !dbg !256, !noalias !222
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %16) #8, !dbg !256, !noalias !222
  br label %134, !dbg !256

134:                                              ; preds = %5, %133
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %12), !dbg !260
  ret void, !dbg !221
}

; Function Attrs: nounwind uwtable
define internal void @kernel_p4(i32 %0, double %1, [8000 x double]* %2, double* %3, double* %4) #0 !dbg !261 {
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca [8000 x double]*, align 8
  %9 = alloca double*, align 8
  %10 = alloca double*, align 8
  %11 = alloca %struct.ident_t, align 8
  %12 = bitcast %struct.ident_t* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %12, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @3 to i8*), i64 16, i1 false)
  call void @llvm.dbg.value(metadata i32 %0, metadata !263, metadata !DIExpression()), !dbg !268
  store i32 %0, i32* %6, align 4, !tbaa !44
  call void @llvm.dbg.value(metadata double %1, metadata !264, metadata !DIExpression()), !dbg !268
  store double %1, double* %7, align 8, !tbaa !110
  call void @llvm.dbg.value(metadata [8000 x double]* %2, metadata !265, metadata !DIExpression()), !dbg !268
  store [8000 x double]* %2, [8000 x double]** %8, align 8, !tbaa !48
  call void @llvm.dbg.value(metadata double* %3, metadata !266, metadata !DIExpression()), !dbg !268
  store double* %3, double** %9, align 8, !tbaa !48
  call void @llvm.dbg.value(metadata double* %4, metadata !267, metadata !DIExpression()), !dbg !268
  store double* %4, double** %10, align 8, !tbaa !48
  %13 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %11, i64 0, i32 4, !dbg !269
  store i8* getelementptr inbounds ([96 x i8], [96 x i8]* @8, i64 0, i64 0), i8** %13, align 8, !dbg !269, !tbaa !51
  call void @llvm.dbg.value(metadata i32* %6, metadata !263, metadata !DIExpression(DW_OP_deref)), !dbg !268
  call void @llvm.dbg.value(metadata double* %7, metadata !264, metadata !DIExpression(DW_OP_deref)), !dbg !268
  call void @llvm.dbg.value(metadata [8000 x double]** %8, metadata !265, metadata !DIExpression(DW_OP_deref)), !dbg !268
  call void @llvm.dbg.value(metadata double** %9, metadata !266, metadata !DIExpression(DW_OP_deref)), !dbg !268
  call void @llvm.dbg.value(metadata double** %10, metadata !267, metadata !DIExpression(DW_OP_deref)), !dbg !268
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %11, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, double**, double*, [8000 x double]**, double**)* @.omp_outlined..6 to void (i32*, i32*, ...)*), i32* nonnull %6, double** nonnull %10, double* nonnull %7, [8000 x double]** nonnull %8, double** nonnull %9) #8, !dbg !269
  ret void, !dbg !270
}

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined..6(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture readonly dereferenceable(4) %2, double** nocapture readonly dereferenceable(8) %3, double* nocapture readonly dereferenceable(8) %4, [8000 x double]** nocapture readonly dereferenceable(8) %5, double** nocapture readonly dereferenceable(8) %6) #2 !dbg !271 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ident_t, align 8
  call void @llvm.dbg.value(metadata i32* %0, metadata !273, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata i32* %1, metadata !274, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata i32* %2, metadata !275, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata double** %3, metadata !276, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata double* %4, metadata !277, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata [8000 x double]** %5, metadata !278, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.value(metadata double** %6, metadata !279, metadata !DIExpression()), !dbg !280
  %13 = bitcast %struct.ident_t* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %13)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %13, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @0 to i8*), i64 24, i1 false) #8, !noalias !281
  call void @llvm.dbg.value(metadata i32* %0, metadata !284, metadata !DIExpression()) #8, !dbg !303
  call void @llvm.dbg.value(metadata i32* undef, metadata !287, metadata !DIExpression()) #8, !dbg !303
  call void @llvm.dbg.value(metadata i32* %2, metadata !288, metadata !DIExpression()) #8, !dbg !303
  call void @llvm.dbg.value(metadata double** %3, metadata !289, metadata !DIExpression()) #8, !dbg !303
  call void @llvm.dbg.value(metadata double* %4, metadata !290, metadata !DIExpression()) #8, !dbg !303
  call void @llvm.dbg.value(metadata [8000 x double]** %5, metadata !291, metadata !DIExpression()) #8, !dbg !303
  call void @llvm.dbg.value(metadata double** %6, metadata !292, metadata !DIExpression()) #8, !dbg !303
  %14 = load i32, i32* %2, align 4, !dbg !305, !tbaa !44, !noalias !281
  call void @llvm.dbg.value(metadata i32 %14, metadata !294, metadata !DIExpression()) #8, !dbg !303
  %15 = add nsw i32 %14, -1, !dbg !306
  call void @llvm.dbg.value(metadata i32 %15, metadata !294, metadata !DIExpression()) #8, !dbg !303
  call void @llvm.dbg.value(metadata i32 0, metadata !295, metadata !DIExpression()) #8, !dbg !303
  %16 = icmp sgt i32 %14, 0, !dbg !306
  br i1 %16, label %17, label %87, !dbg !306

17:                                               ; preds = %7
  %18 = bitcast i32* %8 to i8*, !dbg !306
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18) #8, !dbg !306, !noalias !281
  call void @llvm.dbg.value(metadata i32 0, metadata !296, metadata !DIExpression()) #8, !dbg !303
  store i32 0, i32* %8, align 4, !dbg !307, !tbaa !44, !noalias !281
  %19 = bitcast i32* %9 to i8*, !dbg !306
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #8, !dbg !306, !noalias !281
  call void @llvm.dbg.value(metadata i32 %15, metadata !297, metadata !DIExpression()) #8, !dbg !303
  store i32 %15, i32* %9, align 4, !dbg !307, !tbaa !44, !noalias !281
  %20 = bitcast i32* %10 to i8*, !dbg !306
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %20) #8, !dbg !306, !noalias !281
  call void @llvm.dbg.value(metadata i32 1, metadata !298, metadata !DIExpression()) #8, !dbg !303
  store i32 1, i32* %10, align 4, !dbg !307, !tbaa !44, !noalias !281
  %21 = bitcast i32* %11 to i8*, !dbg !306
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %21) #8, !dbg !306, !noalias !281
  call void @llvm.dbg.value(metadata i32 0, metadata !299, metadata !DIExpression()) #8, !dbg !303
  store i32 0, i32* %11, align 4, !dbg !307, !tbaa !44, !noalias !281
  %22 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %12, i64 0, i32 4, !dbg !306
  store i8* getelementptr inbounds ([96 x i8], [96 x i8]* @8, i64 0, i64 0), i8** %22, align 8, !dbg !306, !tbaa !51, !noalias !281
  %23 = load i32, i32* %0, align 4, !dbg !306, !tbaa !44, !alias.scope !281
  call void @llvm.dbg.value(metadata i32* %8, metadata !296, metadata !DIExpression(DW_OP_deref)) #8, !dbg !303
  call void @llvm.dbg.value(metadata i32* %9, metadata !297, metadata !DIExpression(DW_OP_deref)) #8, !dbg !303
  call void @llvm.dbg.value(metadata i32* %10, metadata !298, metadata !DIExpression(DW_OP_deref)) #8, !dbg !303
  call void @llvm.dbg.value(metadata i32* %11, metadata !299, metadata !DIExpression(DW_OP_deref)) #8, !dbg !303
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull %12, i32 %23, i32 34, i32* nonnull %11, i32* nonnull %8, i32* nonnull %9, i32* nonnull %10, i32 1, i32 1) #8, !dbg !306, !noalias !281
  %24 = load i32, i32* %9, align 4, !dbg !307, !tbaa !44, !noalias !281
  call void @llvm.dbg.value(metadata i32 %24, metadata !297, metadata !DIExpression()) #8, !dbg !303
  %25 = icmp slt i32 %24, %14, !dbg !307
  %26 = select i1 %25, i32 %24, i32 %15, !dbg !307
  call void @llvm.dbg.value(metadata i32 %26, metadata !297, metadata !DIExpression()) #8, !dbg !303
  store i32 %26, i32* %9, align 4, !dbg !307, !tbaa !44, !noalias !281
  %27 = load i32, i32* %8, align 4, !dbg !307, !tbaa !44, !noalias !281
  call void @llvm.dbg.value(metadata i32 %27, metadata !296, metadata !DIExpression()) #8, !dbg !303
  call void @llvm.dbg.value(metadata i32 %27, metadata !293, metadata !DIExpression()) #8, !dbg !303
  call void @llvm.dbg.value(metadata i32 %26, metadata !297, metadata !DIExpression()) #8, !dbg !303
  %28 = icmp sgt i32 %27, %26, !dbg !306
  br i1 %28, label %86, label %29, !dbg !306

29:                                               ; preds = %17
  %30 = load i32, i32* %2, align 4, !dbg !308, !noalias !281
  %31 = icmp sgt i32 %30, 0, !dbg !308
  %32 = load double*, double** %3, align 8, !dbg !310, !noalias !281
  %33 = load [8000 x double]*, [8000 x double]** %5, align 8, !dbg !310, !noalias !281
  %34 = load double*, double** %6, align 8, !dbg !310, !noalias !281
  br i1 %31, label %35, label %86, !dbg !306

35:                                               ; preds = %29
  %36 = sext i32 %27 to i64, !dbg !312
  %37 = sext i32 %26 to i64, !dbg !312
  %38 = zext i32 %30 to i64, !dbg !308
  %39 = and i64 %38, 1, !dbg !313
  %40 = icmp eq i32 %30, 1, !dbg !313
  %41 = sub nsw i64 %38, %39, !dbg !313
  %42 = icmp eq i64 %39, 0, !dbg !313
  br label %43, !dbg !312

43:                                               ; preds = %83, %35
  %44 = phi i64 [ %36, %35 ], [ %84, %83 ]
  call void @llvm.dbg.value(metadata i64 %44, metadata !293, metadata !DIExpression()) #8, !dbg !303
  call void @llvm.dbg.value(metadata i32 0, metadata !300, metadata !DIExpression()) #8, !dbg !313
  %45 = getelementptr inbounds double, double* %32, i64 %44, !dbg !310
  %46 = load double, double* %45, align 8, !dbg !314, !tbaa !110, !noalias !281
  br i1 %40, label %71, label %47, !dbg !315

47:                                               ; preds = %43, %47
  %48 = phi double [ %67, %47 ], [ %46, %43 ], !dbg !314
  %49 = phi i64 [ %68, %47 ], [ 0, %43 ]
  %50 = phi i64 [ %69, %47 ], [ %41, %43 ]
  call void @llvm.dbg.value(metadata i64 %49, metadata !300, metadata !DIExpression()) #8, !dbg !313
  %51 = load double, double* %4, align 8, !dbg !316, !tbaa !110, !noalias !281
  %52 = getelementptr inbounds [8000 x double], [8000 x double]* %33, i64 %44, i64 %49, !dbg !317
  %53 = load double, double* %52, align 8, !dbg !317, !tbaa !110, !noalias !281
  %54 = fmul double %51, %53, !dbg !318
  %55 = getelementptr inbounds double, double* %34, i64 %49, !dbg !319
  %56 = load double, double* %55, align 8, !dbg !319, !tbaa !110, !noalias !281
  %57 = fmul double %54, %56, !dbg !320
  %58 = fadd double %48, %57, !dbg !321
  store double %58, double* %45, align 8, !dbg !322, !tbaa !110, !noalias !281
  %59 = or i64 %49, 1, !dbg !323
  call void @llvm.dbg.value(metadata i64 %59, metadata !300, metadata !DIExpression()) #8, !dbg !313
  %60 = load double, double* %4, align 8, !dbg !316, !tbaa !110, !noalias !281
  %61 = getelementptr inbounds [8000 x double], [8000 x double]* %33, i64 %44, i64 %59, !dbg !317
  %62 = load double, double* %61, align 8, !dbg !317, !tbaa !110, !noalias !281
  %63 = fmul double %60, %62, !dbg !318
  %64 = getelementptr inbounds double, double* %34, i64 %59, !dbg !319
  %65 = load double, double* %64, align 8, !dbg !319, !tbaa !110, !noalias !281
  %66 = fmul double %63, %65, !dbg !320
  %67 = fadd double %58, %66, !dbg !321
  store double %67, double* %45, align 8, !dbg !322, !tbaa !110, !noalias !281
  %68 = add nuw nsw i64 %49, 2, !dbg !323
  call void @llvm.dbg.value(metadata i64 %68, metadata !300, metadata !DIExpression()) #8, !dbg !313
  %69 = add i64 %50, -2, !dbg !315
  %70 = icmp eq i64 %69, 0, !dbg !315
  br i1 %70, label %71, label %47, !dbg !315, !llvm.loop !324

71:                                               ; preds = %47, %43
  %72 = phi double [ %46, %43 ], [ %67, %47 ]
  %73 = phi i64 [ 0, %43 ], [ %68, %47 ]
  br i1 %42, label %83, label %74, !dbg !315

74:                                               ; preds = %71
  call void @llvm.dbg.value(metadata i64 %73, metadata !300, metadata !DIExpression()) #8, !dbg !313
  %75 = load double, double* %4, align 8, !dbg !316, !tbaa !110, !noalias !281
  %76 = getelementptr inbounds [8000 x double], [8000 x double]* %33, i64 %44, i64 %73, !dbg !317
  %77 = load double, double* %76, align 8, !dbg !317, !tbaa !110, !noalias !281
  %78 = fmul double %75, %77, !dbg !318
  %79 = getelementptr inbounds double, double* %34, i64 %73, !dbg !319
  %80 = load double, double* %79, align 8, !dbg !319, !tbaa !110, !noalias !281
  %81 = fmul double %78, %80, !dbg !320
  %82 = fadd double %72, %81, !dbg !321
  store double %82, double* %45, align 8, !dbg !322, !tbaa !110, !noalias !281
  call void @llvm.dbg.value(metadata i64 %73, metadata !300, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #8, !dbg !313
  br label %83, !dbg !306

83:                                               ; preds = %71, %74
  %84 = add nsw i64 %44, 1, !dbg !306
  call void @llvm.dbg.value(metadata i64 %84, metadata !293, metadata !DIExpression()) #8, !dbg !303
  call void @llvm.dbg.value(metadata i32 %26, metadata !297, metadata !DIExpression()) #8, !dbg !303
  %85 = icmp slt i64 %44, %37, !dbg !306
  br i1 %85, label %43, label %86, !dbg !306, !llvm.loop !326

86:                                               ; preds = %83, %29, %17
  store i8* getelementptr inbounds ([97 x i8], [97 x i8]* @9, i64 0, i64 0), i8** %22, align 8, !dbg !312, !tbaa !51, !noalias !281
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull %12, i32 %23) #8, !dbg !312, !noalias !281
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %21) #8, !dbg !312, !noalias !281
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %20) #8, !dbg !312, !noalias !281
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #8, !dbg !312, !noalias !281
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #8, !dbg !312, !noalias !281
  br label %87, !dbg !312

87:                                               ; preds = %7, %86
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %13), !dbg !328
  ret void, !dbg !329
}

; Function Attrs: nounwind uwtable
define internal void @kernel_gemver(i32 %0, double %1, double %2, [8000 x double]* %3, double* %4, double* %5, double* %6, double* %7, double* %8, double* %9, double* %10, double* %11) #0 !dbg !330 {
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca [8000 x double]*, align 8
  %16 = alloca double*, align 8
  %17 = alloca double*, align 8
  %18 = alloca %struct.ident_t, align 8
  %19 = alloca i32, align 4
  %20 = alloca double*, align 8
  %21 = alloca double*, align 8
  %22 = alloca %struct.ident_t, align 8
  %23 = alloca i32, align 4
  %24 = alloca double, align 8
  %25 = alloca [8000 x double]*, align 8
  %26 = alloca double*, align 8
  %27 = alloca double*, align 8
  %28 = alloca %struct.ident_t, align 8
  %29 = alloca i32, align 4
  %30 = alloca [8000 x double]*, align 8
  %31 = alloca double*, align 8
  %32 = alloca double*, align 8
  %33 = alloca double*, align 8
  %34 = alloca double*, align 8
  %35 = alloca %struct.ident_t, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !334, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.value(metadata double %1, metadata !335, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.value(metadata double %2, metadata !336, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.value(metadata [8000 x double]* %3, metadata !337, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.value(metadata double* %4, metadata !338, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.value(metadata double* %5, metadata !339, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.value(metadata double* %6, metadata !340, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.value(metadata double* %7, metadata !341, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.value(metadata double* %8, metadata !342, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.value(metadata double* %9, metadata !343, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.value(metadata double* %10, metadata !344, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.value(metadata double* %11, metadata !345, metadata !DIExpression()), !dbg !346
  tail call void (...) @polybench_timer_start() #8, !dbg !347
  %36 = bitcast i32* %29 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %36)
  %37 = bitcast [8000 x double]** %30 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %37)
  %38 = bitcast double** %31 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %38)
  %39 = bitcast double** %32 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %39)
  %40 = bitcast double** %33 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %40)
  %41 = bitcast double** %34 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %41)
  %42 = bitcast %struct.ident_t* %35 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %42)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %42, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @3 to i8*), i64 16, i1 false) #8
  call void @llvm.dbg.value(metadata i32 %0, metadata !37, metadata !DIExpression()) #8, !dbg !348
  store i32 %0, i32* %29, align 4, !tbaa !44
  call void @llvm.dbg.value(metadata [8000 x double]* %3, metadata !38, metadata !DIExpression()) #8, !dbg !348
  store [8000 x double]* %3, [8000 x double]** %30, align 8, !tbaa !48
  call void @llvm.dbg.value(metadata double* %4, metadata !39, metadata !DIExpression()) #8, !dbg !348
  store double* %4, double** %31, align 8, !tbaa !48
  call void @llvm.dbg.value(metadata double* %5, metadata !40, metadata !DIExpression()) #8, !dbg !348
  store double* %5, double** %32, align 8, !tbaa !48
  call void @llvm.dbg.value(metadata double* %6, metadata !41, metadata !DIExpression()) #8, !dbg !348
  store double* %6, double** %33, align 8, !tbaa !48
  call void @llvm.dbg.value(metadata double* %7, metadata !42, metadata !DIExpression()) #8, !dbg !348
  store double* %7, double** %34, align 8, !tbaa !48
  %43 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %35, i64 0, i32 4, !dbg !350
  store i8* getelementptr inbounds ([95 x i8], [95 x i8]* @1, i64 0, i64 0), i8** %43, align 8, !dbg !350, !tbaa !51
  call void @llvm.dbg.value(metadata i32* %29, metadata !37, metadata !DIExpression(DW_OP_deref)) #8, !dbg !348
  call void @llvm.dbg.value(metadata [8000 x double]** %30, metadata !38, metadata !DIExpression(DW_OP_deref)) #8, !dbg !348
  call void @llvm.dbg.value(metadata double** %31, metadata !39, metadata !DIExpression(DW_OP_deref)) #8, !dbg !348
  call void @llvm.dbg.value(metadata double** %32, metadata !40, metadata !DIExpression(DW_OP_deref)) #8, !dbg !348
  call void @llvm.dbg.value(metadata double** %33, metadata !41, metadata !DIExpression(DW_OP_deref)) #8, !dbg !348
  call void @llvm.dbg.value(metadata double** %34, metadata !42, metadata !DIExpression(DW_OP_deref)) #8, !dbg !348
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %35, i32 6, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [8000 x double]**, double**, double**, double**, double**)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %29, [8000 x double]** nonnull %30, double** nonnull %31, double** nonnull %32, double** nonnull %33, double** nonnull %34) #8, !dbg !350
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %36), !dbg !351
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %37), !dbg !351
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %38), !dbg !351
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %39), !dbg !351
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %40), !dbg !351
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %41), !dbg !351
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %42), !dbg !351
  call void (...) @polybench_timer_stop() #8, !dbg !352
  call void (...) @polybench_timer_print() #8, !dbg !353
  call void (...) @polybench_timer_start() #8, !dbg !354
  %44 = bitcast i32* %23 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %44)
  %45 = bitcast double* %24 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %45)
  %46 = bitcast [8000 x double]** %25 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %46)
  %47 = bitcast double** %26 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %47)
  %48 = bitcast double** %27 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %48)
  %49 = bitcast %struct.ident_t* %28 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %49)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %49, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @3 to i8*), i64 16, i1 false) #8
  call void @llvm.dbg.value(metadata i32 %0, metadata !131, metadata !DIExpression()) #8, !dbg !355
  store i32 %0, i32* %23, align 4, !tbaa !44
  call void @llvm.dbg.value(metadata double %2, metadata !132, metadata !DIExpression()) #8, !dbg !355
  store double %2, double* %24, align 8, !tbaa !110
  call void @llvm.dbg.value(metadata [8000 x double]* %3, metadata !133, metadata !DIExpression()) #8, !dbg !355
  store [8000 x double]* %3, [8000 x double]** %25, align 8, !tbaa !48
  call void @llvm.dbg.value(metadata double* %10, metadata !134, metadata !DIExpression()) #8, !dbg !355
  store double* %10, double** %26, align 8, !tbaa !48
  call void @llvm.dbg.value(metadata double* %9, metadata !135, metadata !DIExpression()) #8, !dbg !355
  store double* %9, double** %27, align 8, !tbaa !48
  %50 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %28, i64 0, i32 4, !dbg !357
  store i8* getelementptr inbounds ([95 x i8], [95 x i8]* @4, i64 0, i64 0), i8** %50, align 8, !dbg !357, !tbaa !51
  call void @llvm.dbg.value(metadata i32* %23, metadata !131, metadata !DIExpression(DW_OP_deref)) #8, !dbg !355
  call void @llvm.dbg.value(metadata double* %24, metadata !132, metadata !DIExpression(DW_OP_deref)) #8, !dbg !355
  call void @llvm.dbg.value(metadata [8000 x double]** %25, metadata !133, metadata !DIExpression(DW_OP_deref)) #8, !dbg !355
  call void @llvm.dbg.value(metadata double** %26, metadata !134, metadata !DIExpression(DW_OP_deref)) #8, !dbg !355
  call void @llvm.dbg.value(metadata double** %27, metadata !135, metadata !DIExpression(DW_OP_deref)) #8, !dbg !355
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %28, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, double**, double*, [8000 x double]**, double**)* @.omp_outlined..2 to void (i32*, i32*, ...)*), i32* nonnull %23, double** nonnull %27, double* nonnull %24, [8000 x double]** nonnull %25, double** nonnull %26) #8, !dbg !357
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %44), !dbg !358
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %45), !dbg !358
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %46), !dbg !358
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %47), !dbg !358
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %48), !dbg !358
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %49), !dbg !358
  call void (...) @polybench_timer_stop() #8, !dbg !359
  call void (...) @polybench_timer_print() #8, !dbg !360
  call void (...) @polybench_timer_start() #8, !dbg !361
  %51 = bitcast i32* %19 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %51)
  %52 = bitcast double** %20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %52)
  %53 = bitcast double** %21 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %53)
  %54 = bitcast %struct.ident_t* %22 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %54)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %54, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @3 to i8*), i64 16, i1 false) #8
  call void @llvm.dbg.value(metadata i32 %0, metadata !205, metadata !DIExpression()) #8, !dbg !362
  store i32 %0, i32* %19, align 4, !tbaa !44
  call void @llvm.dbg.value(metadata double* %9, metadata !206, metadata !DIExpression()) #8, !dbg !362
  store double* %9, double** %20, align 8, !tbaa !48
  call void @llvm.dbg.value(metadata double* %11, metadata !207, metadata !DIExpression()) #8, !dbg !362
  store double* %11, double** %21, align 8, !tbaa !48
  %55 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %22, i64 0, i32 4, !dbg !364
  store i8* getelementptr inbounds ([95 x i8], [95 x i8]* @6, i64 0, i64 0), i8** %55, align 8, !dbg !364, !tbaa !51
  call void @llvm.dbg.value(metadata i32* %19, metadata !205, metadata !DIExpression(DW_OP_deref)) #8, !dbg !362
  call void @llvm.dbg.value(metadata double** %20, metadata !206, metadata !DIExpression(DW_OP_deref)) #8, !dbg !362
  call void @llvm.dbg.value(metadata double** %21, metadata !207, metadata !DIExpression(DW_OP_deref)) #8, !dbg !362
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %22, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, double**, double**)* @.omp_outlined..4 to void (i32*, i32*, ...)*), i32* nonnull %19, double** nonnull %20, double** nonnull %21) #8, !dbg !364
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %51), !dbg !365
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %52), !dbg !365
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %53), !dbg !365
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %54), !dbg !365
  call void (...) @polybench_timer_stop() #8, !dbg !366
  call void (...) @polybench_timer_print() #8, !dbg !367
  call void (...) @polybench_timer_start() #8, !dbg !368
  %56 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %56)
  %57 = bitcast double* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %57)
  %58 = bitcast [8000 x double]** %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %58)
  %59 = bitcast double** %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %59)
  %60 = bitcast double** %17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %60)
  %61 = bitcast %struct.ident_t* %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %61)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %61, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @3 to i8*), i64 16, i1 false) #8
  call void @llvm.dbg.value(metadata i32 %0, metadata !263, metadata !DIExpression()) #8, !dbg !369
  store i32 %0, i32* %13, align 4, !tbaa !44
  call void @llvm.dbg.value(metadata double %1, metadata !264, metadata !DIExpression()) #8, !dbg !369
  store double %1, double* %14, align 8, !tbaa !110
  call void @llvm.dbg.value(metadata [8000 x double]* %3, metadata !265, metadata !DIExpression()) #8, !dbg !369
  store [8000 x double]* %3, [8000 x double]** %15, align 8, !tbaa !48
  call void @llvm.dbg.value(metadata double* %9, metadata !266, metadata !DIExpression()) #8, !dbg !369
  store double* %9, double** %16, align 8, !tbaa !48
  call void @llvm.dbg.value(metadata double* %8, metadata !267, metadata !DIExpression()) #8, !dbg !369
  store double* %8, double** %17, align 8, !tbaa !48
  %62 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %18, i64 0, i32 4, !dbg !371
  store i8* getelementptr inbounds ([96 x i8], [96 x i8]* @8, i64 0, i64 0), i8** %62, align 8, !dbg !371, !tbaa !51
  call void @llvm.dbg.value(metadata i32* %13, metadata !263, metadata !DIExpression(DW_OP_deref)) #8, !dbg !369
  call void @llvm.dbg.value(metadata double* %14, metadata !264, metadata !DIExpression(DW_OP_deref)) #8, !dbg !369
  call void @llvm.dbg.value(metadata [8000 x double]** %15, metadata !265, metadata !DIExpression(DW_OP_deref)) #8, !dbg !369
  call void @llvm.dbg.value(metadata double** %16, metadata !266, metadata !DIExpression(DW_OP_deref)) #8, !dbg !369
  call void @llvm.dbg.value(metadata double** %17, metadata !267, metadata !DIExpression(DW_OP_deref)) #8, !dbg !369
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %18, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, double**, double*, [8000 x double]**, double**)* @.omp_outlined..6 to void (i32*, i32*, ...)*), i32* nonnull %13, double** nonnull %17, double* nonnull %14, [8000 x double]** nonnull %15, double** nonnull %16) #8, !dbg !371
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %56), !dbg !372
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %57), !dbg !372
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %58), !dbg !372
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %59), !dbg !372
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %60), !dbg !372
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %61), !dbg !372
  call void (...) @polybench_timer_stop() #8, !dbg !373
  call void (...) @polybench_timer_print() #8, !dbg !374
  ret void, !dbg !375
}

declare !dbg !4 dso_local void @polybench_timer_start(...) local_unnamed_addr #3

declare !dbg !8 dso_local void @polybench_timer_stop(...) local_unnamed_addr #3

declare !dbg !9 dso_local void @polybench_timer_print(...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %0, i8** nocapture readonly %1) local_unnamed_addr #0 !dbg !376 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !383, metadata !DIExpression()), !dbg !397
  call void @llvm.dbg.value(metadata i8** %1, metadata !384, metadata !DIExpression()), !dbg !397
  call void @llvm.dbg.value(metadata i32 8000, metadata !385, metadata !DIExpression()), !dbg !397
  %3 = tail call i8* @polybench_alloc_data(i64 64000000, i32 8) #8, !dbg !398
  call void @llvm.dbg.value(metadata i8* %3, metadata !388, metadata !DIExpression()), !dbg !397
  %4 = tail call i8* @polybench_alloc_data(i64 8000, i32 8) #8, !dbg !399
  call void @llvm.dbg.value(metadata i8* %4, metadata !389, metadata !DIExpression()), !dbg !397
  %5 = tail call i8* @polybench_alloc_data(i64 8000, i32 8) #8, !dbg !400
  call void @llvm.dbg.value(metadata i8* %5, metadata !390, metadata !DIExpression()), !dbg !397
  %6 = tail call i8* @polybench_alloc_data(i64 8000, i32 8) #8, !dbg !401
  call void @llvm.dbg.value(metadata i8* %6, metadata !391, metadata !DIExpression()), !dbg !397
  %7 = tail call i8* @polybench_alloc_data(i64 8000, i32 8) #8, !dbg !402
  call void @llvm.dbg.value(metadata i8* %7, metadata !392, metadata !DIExpression()), !dbg !397
  %8 = tail call i8* @polybench_alloc_data(i64 8000, i32 8) #8, !dbg !403
  call void @llvm.dbg.value(metadata i8* %8, metadata !393, metadata !DIExpression()), !dbg !397
  %9 = tail call i8* @polybench_alloc_data(i64 8000, i32 8) #8, !dbg !404
  call void @llvm.dbg.value(metadata i8* %9, metadata !394, metadata !DIExpression()), !dbg !397
  %10 = tail call i8* @polybench_alloc_data(i64 8000, i32 8) #8, !dbg !405
  call void @llvm.dbg.value(metadata i8* %10, metadata !395, metadata !DIExpression()), !dbg !397
  %11 = tail call i8* @polybench_alloc_data(i64 8000, i32 8) #8, !dbg !406
  call void @llvm.dbg.value(metadata i8* %11, metadata !396, metadata !DIExpression()), !dbg !397
  %12 = bitcast i8* %3 to [8000 x double]*, !dbg !407
  %13 = bitcast i8* %4 to double*, !dbg !408
  %14 = bitcast i8* %5 to double*, !dbg !409
  %15 = bitcast i8* %6 to double*, !dbg !410
  %16 = bitcast i8* %7 to double*, !dbg !411
  %17 = bitcast i8* %8 to double*, !dbg !412
  %18 = bitcast i8* %9 to double*, !dbg !413
  %19 = bitcast i8* %10 to double*, !dbg !414
  %20 = bitcast i8* %11 to double*, !dbg !415
  call void @llvm.dbg.value(metadata i32 8000, metadata !416, metadata !DIExpression()), !dbg !434
  call void @llvm.dbg.value(metadata [8000 x double]* %12, metadata !423, metadata !DIExpression()), !dbg !434
  call void @llvm.dbg.value(metadata double* %13, metadata !424, metadata !DIExpression()), !dbg !434
  call void @llvm.dbg.value(metadata double* %14, metadata !425, metadata !DIExpression()), !dbg !434
  call void @llvm.dbg.value(metadata double* %15, metadata !426, metadata !DIExpression()), !dbg !434
  call void @llvm.dbg.value(metadata double* %16, metadata !427, metadata !DIExpression()), !dbg !434
  call void @llvm.dbg.value(metadata double* %17, metadata !428, metadata !DIExpression()), !dbg !434
  call void @llvm.dbg.value(metadata double* %18, metadata !429, metadata !DIExpression()), !dbg !434
  call void @llvm.dbg.value(metadata double* %19, metadata !430, metadata !DIExpression()), !dbg !434
  call void @llvm.dbg.value(metadata double* %20, metadata !431, metadata !DIExpression()), !dbg !434
  call void @llvm.dbg.value(metadata i32 0, metadata !432, metadata !DIExpression()), !dbg !434
  br label %23, !dbg !436

21:                                               ; preds = %44
  call void @llvm.dbg.value(metadata i64 %28, metadata !432, metadata !DIExpression()), !dbg !434
  %22 = icmp eq i64 %28, 8000, !dbg !438
  br i1 %22, label %59, label %23, !dbg !436

23:                                               ; preds = %21, %2
  %24 = phi i64 [ 0, %2 ], [ %28, %21 ]
  call void @llvm.dbg.value(metadata i64 %24, metadata !432, metadata !DIExpression()), !dbg !434
  %25 = trunc i64 %24 to i32, !dbg !440
  %26 = sitofp i32 %25 to double, !dbg !440
  %27 = getelementptr inbounds double, double* %13, i64 %24, !dbg !442
  store double %26, double* %27, align 8, !dbg !443, !tbaa !110
  %28 = add nuw nsw i64 %24, 1, !dbg !444
  %29 = trunc i64 %28 to i16, !dbg !445
  %30 = udiv i16 %29, 8000, !dbg !445
  %31 = uitofp i16 %30 to double, !dbg !446
  %32 = fmul double %31, 5.000000e-01, !dbg !447
  %33 = getelementptr inbounds double, double* %15, i64 %24, !dbg !448
  store double %32, double* %33, align 8, !dbg !449, !tbaa !110
  %34 = fmul double %31, 2.500000e-01, !dbg !450
  %35 = getelementptr inbounds double, double* %14, i64 %24, !dbg !451
  store double %34, double* %35, align 8, !dbg !452, !tbaa !110
  %36 = fdiv double %31, 6.000000e+00, !dbg !453
  %37 = getelementptr inbounds double, double* %16, i64 %24, !dbg !454
  store double %36, double* %37, align 8, !dbg !455, !tbaa !110
  %38 = fmul double %31, 1.250000e-01, !dbg !456
  %39 = getelementptr inbounds double, double* %19, i64 %24, !dbg !457
  store double %38, double* %39, align 8, !dbg !458, !tbaa !110
  %40 = fdiv double %31, 9.000000e+00, !dbg !459
  %41 = getelementptr inbounds double, double* %20, i64 %24, !dbg !460
  store double %40, double* %41, align 8, !dbg !461, !tbaa !110
  %42 = getelementptr inbounds double, double* %18, i64 %24, !dbg !462
  store double 0.000000e+00, double* %42, align 8, !dbg !463, !tbaa !110
  %43 = getelementptr inbounds double, double* %17, i64 %24, !dbg !464
  store double 0.000000e+00, double* %43, align 8, !dbg !465, !tbaa !110
  call void @llvm.dbg.value(metadata i32 0, metadata !433, metadata !DIExpression()), !dbg !434
  br label %44, !dbg !466

44:                                               ; preds = %44, %23
  %45 = phi i64 [ 0, %23 ], [ %57, %44 ]
  call void @llvm.dbg.value(metadata i64 %45, metadata !433, metadata !DIExpression()), !dbg !434
  %46 = trunc i64 %45 to i32, !dbg !468
  %47 = sitofp i32 %46 to double, !dbg !468
  %48 = fmul double %26, %47, !dbg !470
  %49 = fdiv double %48, 8.000000e+03, !dbg !471
  %50 = getelementptr inbounds [8000 x double], [8000 x double]* %12, i64 %24, i64 %45, !dbg !472
  store double %49, double* %50, align 8, !dbg !473, !tbaa !110
  %51 = or i64 %45, 1, !dbg !474
  call void @llvm.dbg.value(metadata i64 %51, metadata !433, metadata !DIExpression()), !dbg !434
  %52 = trunc i64 %51 to i32, !dbg !468
  %53 = sitofp i32 %52 to double, !dbg !468
  %54 = fmul double %26, %53, !dbg !470
  %55 = fdiv double %54, 8.000000e+03, !dbg !471
  %56 = getelementptr inbounds [8000 x double], [8000 x double]* %12, i64 %24, i64 %51, !dbg !472
  store double %55, double* %56, align 8, !dbg !473, !tbaa !110
  %57 = add nuw nsw i64 %45, 2, !dbg !474
  call void @llvm.dbg.value(metadata i64 %57, metadata !433, metadata !DIExpression()), !dbg !434
  %58 = icmp eq i64 %57, 8000, !dbg !475
  br i1 %58, label %21, label %44, !dbg !466, !llvm.loop !476

59:                                               ; preds = %21
  call void @llvm.dbg.value(metadata double 4.353200e+04, metadata !386, metadata !DIExpression()), !dbg !397
  call void @llvm.dbg.value(metadata double 1.231300e+04, metadata !387, metadata !DIExpression()), !dbg !397
  tail call void @kernel_gemver(i32 8000, double 4.353200e+04, double 1.231300e+04, [8000 x double]* nonnull %12, double* %13, double* %14, double* %15, double* %16, double* %17, double* %18, double* %19, double* %20), !dbg !478
  %60 = icmp sgt i32 %0, 42, !dbg !479
  br i1 %60, label %61, label %82, !dbg !479

61:                                               ; preds = %59
  %62 = load i8*, i8** %1, align 8, !dbg !479, !tbaa !48
  %63 = load i8, i8* %62, align 1, !dbg !479
  %64 = icmp eq i8 %63, 0, !dbg !479
  br i1 %64, label %65, label %82, !dbg !481

65:                                               ; preds = %61, %78
  %66 = phi i64 [ %79, %78 ], [ 0, %61 ]
  %67 = phi i32 [ %80, %78 ], [ 0, %61 ]
  call void @llvm.dbg.value(metadata i64 %66, metadata !482, metadata !DIExpression()) #8, !dbg !489
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !491, !tbaa !48
  %69 = getelementptr inbounds double, double* %17, i64 %66, !dbg !495
  %70 = load double, double* %69, align 8, !dbg !495, !tbaa !110
  %71 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), double %70) #9, !dbg !496
  %72 = trunc i32 %67 to i16, !dbg !497
  %73 = urem i16 %72, 20, !dbg !497
  %74 = icmp eq i16 %73, 0, !dbg !499
  br i1 %74, label %75, label %78, !dbg !500

75:                                               ; preds = %65
  %76 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !501, !tbaa !48
  %77 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %76) #9, !dbg !502
  br label %78, !dbg !502

78:                                               ; preds = %75, %65
  %79 = add nuw nsw i64 %66, 1, !dbg !503
  %80 = add nuw nsw i32 %67, 1, !dbg !503
  call void @llvm.dbg.value(metadata i64 %79, metadata !482, metadata !DIExpression()) #8, !dbg !489
  %81 = icmp eq i64 %79, 8000, !dbg !504
  br i1 %81, label %82, label %65, !dbg !505, !llvm.loop !506

82:                                               ; preds = %78, %61, %59
  tail call void @free(i8* %3) #8, !dbg !508
  tail call void @free(i8* %4) #8, !dbg !509
  tail call void @free(i8* %5) #8, !dbg !510
  tail call void @free(i8* %6) #8, !dbg !511
  tail call void @free(i8* %7) #8, !dbg !512
  tail call void @free(i8* %8) #8, !dbg !513
  tail call void @free(i8* %9) #8, !dbg !514
  tail call void @free(i8* %10) #8, !dbg !515
  tail call void @free(i8* %11) #8, !dbg !516
  ret i32 0, !dbg !517
}

declare !dbg !15 dso_local i8* @polybench_alloc_data(i64, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !24 dso_local void @free(i8* nocapture) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare dso_local i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #6

; Function Attrs: nofree nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #7

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone speculatable willreturn }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!28, !29, !30}
!llvm.ident = !{!31}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 (https://github.com/conda-forge/clangdev-feedstock 2a1fb6e8a1c6dc6e585535457c24f0295d90c8d2)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/gemver/gemver.c", directory: "/WAVE/users/unix/klor/ycho_lab/kimsong_lor/autotuning_tools/scripts")
!2 = !{}
!3 = !{!4, !8, !9, !10, !15, !21, !18, !24, !12}
!4 = !DISubprogram(name: "polybench_timer_start", scope: !5, file: !5, line: 184, type: !6, spFlags: DISPFlagOptimized, retainedNodes: !2)
!5 = !DIFile(filename: "../test/poly_gpu/inputs_kernel_splits/utilities/polybench.h", directory: "/WAVE/users/unix/klor/ycho_lab/kimsong_lor/autotuning_tools/scripts")
!6 = !DISubroutineType(types: !7)
!7 = !{null, null}
!8 = !DISubprogram(name: "polybench_timer_stop", scope: !5, file: !5, line: 185, type: !6, spFlags: DISPFlagOptimized, retainedNodes: !2)
!9 = !DISubprogram(name: "polybench_timer_print", scope: !5, file: !5, line: 186, type: !6, spFlags: DISPFlagOptimized, retainedNodes: !2)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 4096000000, elements: !13)
!12 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!13 = !{!14, !14}
!14 = !DISubrange(count: 8000)
!15 = !DISubprogram(name: "polybench_alloc_data", scope: !5, file: !5, line: 199, type: !16, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!16 = !DISubroutineType(types: !17)
!17 = !{!18, !19, !20}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!19 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 512000, elements: !23)
!23 = !{!14}
!24 = !DISubprogram(name: "free", scope: !25, file: !25, line: 563, type: !26, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!25 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!26 = !DISubroutineType(types: !27)
!27 = !{null, !18}
!28 = !{i32 7, !"Dwarf Version", i32 4}
!29 = !{i32 2, !"Debug Info Version", i32 3}
!30 = !{i32 1, !"wchar_size", i32 4}
!31 = !{!"clang version 10.0.1 (https://github.com/conda-forge/clangdev-feedstock 2a1fb6e8a1c6dc6e585535457c24f0295d90c8d2)"}
!32 = distinct !DISubprogram(name: "kernel_p1", scope: !1, file: !1, line: 71, type: !33, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !36)
!33 = !DISubroutineType(types: !34)
!34 = !{null, !20, !21, !35, !35, !35, !35}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!36 = !{!37, !38, !39, !40, !41, !42}
!37 = !DILocalVariable(name: "n", arg: 1, scope: !32, file: !1, line: 71, type: !20)
!38 = !DILocalVariable(name: "A", arg: 2, scope: !32, file: !1, line: 71, type: !21)
!39 = !DILocalVariable(name: "u1", arg: 3, scope: !32, file: !1, line: 71, type: !35)
!40 = !DILocalVariable(name: "v1", arg: 4, scope: !32, file: !1, line: 71, type: !35)
!41 = !DILocalVariable(name: "u2", arg: 5, scope: !32, file: !1, line: 71, type: !35)
!42 = !DILocalVariable(name: "v2", arg: 6, scope: !32, file: !1, line: 71, type: !35)
!43 = !DILocation(line: 0, scope: !32)
!44 = !{!45, !45, i64 0}
!45 = !{!"int", !46, i64 0}
!46 = !{!"omnipotent char", !47, i64 0}
!47 = !{!"Simple C/C++ TBAA"}
!48 = !{!49, !49, i64 0}
!49 = !{!"any pointer", !46, i64 0}
!50 = !DILocation(line: 73, column: 1, scope: !32)
!51 = !{!52, !49, i64 16}
!52 = !{!"ident_t", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !49, i64 16}
!53 = !DILocation(line: 81, column: 1, scope: !32)
!54 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 74, type: !55, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !64)
!55 = !DISubroutineType(types: !56)
!56 = !{null, !57, !57, !61, !62, !63, !63, !63, !63}
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!61 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !20, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !21, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !35, size: 64)
!64 = !{!65, !66, !67, !68, !69, !70, !71, !72}
!65 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !54, type: !57, flags: DIFlagArtificial)
!66 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !54, type: !57, flags: DIFlagArtificial)
!67 = !DILocalVariable(name: "n", arg: 3, scope: !54, type: !61, flags: DIFlagArtificial)
!68 = !DILocalVariable(name: "A", arg: 4, scope: !54, type: !62, flags: DIFlagArtificial)
!69 = !DILocalVariable(name: "u1", arg: 5, scope: !54, type: !63, flags: DIFlagArtificial)
!70 = !DILocalVariable(name: "v1", arg: 6, scope: !54, type: !63, flags: DIFlagArtificial)
!71 = !DILocalVariable(name: "u2", arg: 7, scope: !54, type: !63, flags: DIFlagArtificial)
!72 = !DILocalVariable(name: "v2", arg: 8, scope: !54, type: !63, flags: DIFlagArtificial)
!73 = !DILocation(line: 0, scope: !54)
!74 = !DILocation(line: 74, column: 3, scope: !54)
!75 = !{!76}
!76 = distinct !{!76, !77, !".omp_outlined._debug__: argument 0"}
!77 = distinct !{!77, !".omp_outlined._debug__"}
!78 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !79, type: !57, flags: DIFlagArtificial)
!79 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 74, type: !55, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !80)
!80 = !{!78, !81, !82, !83, !84, !85, !86, !87, !88, !90, !90, !91, !92, !93, !94, !95, !96, !97, !92, !93}
!81 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !79, type: !57, flags: DIFlagArtificial)
!82 = !DILocalVariable(name: "n", arg: 3, scope: !79, file: !1, line: 71, type: !61)
!83 = !DILocalVariable(name: "A", arg: 4, scope: !79, file: !1, line: 71, type: !62)
!84 = !DILocalVariable(name: "u1", arg: 5, scope: !79, file: !1, line: 71, type: !63)
!85 = !DILocalVariable(name: "v1", arg: 6, scope: !79, file: !1, line: 71, type: !63)
!86 = !DILocalVariable(name: "u2", arg: 7, scope: !79, file: !1, line: 71, type: !63)
!87 = !DILocalVariable(name: "v2", arg: 8, scope: !79, file: !1, line: 71, type: !63)
!88 = !DILocalVariable(name: ".omp.iv", scope: !79, type: !89, flags: DIFlagArtificial)
!89 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!90 = !DILocalVariable(name: ".capture_expr.", scope: !79, type: !20, flags: DIFlagArtificial)
!91 = !DILocalVariable(name: ".capture_expr.", scope: !79, type: !89, flags: DIFlagArtificial)
!92 = !DILocalVariable(name: "i", scope: !79, type: !20, flags: DIFlagArtificial)
!93 = !DILocalVariable(name: "j", scope: !79, type: !20, flags: DIFlagArtificial)
!94 = !DILocalVariable(name: ".omp.lb", scope: !79, type: !89, flags: DIFlagArtificial)
!95 = !DILocalVariable(name: ".omp.ub", scope: !79, type: !89, flags: DIFlagArtificial)
!96 = !DILocalVariable(name: ".omp.stride", scope: !79, type: !89, flags: DIFlagArtificial)
!97 = !DILocalVariable(name: ".omp.is_last", scope: !79, type: !20, flags: DIFlagArtificial)
!98 = !DILocation(line: 0, scope: !79, inlinedAt: !99)
!99 = distinct !DILocation(line: 74, column: 3, scope: !54)
!100 = !DILocation(line: 74, column: 3, scope: !79, inlinedAt: !99)
!101 = !DILocation(line: 76, column: 5, scope: !79, inlinedAt: !99)
!102 = !DILocation(line: 74, column: 16, scope: !79, inlinedAt: !99)
!103 = !DILocation(line: 74, column: 8, scope: !79, inlinedAt: !99)
!104 = !{!105, !105, i64 0}
!105 = !{!"long", !46, i64 0}
!106 = !DILocation(line: 0, scope: !107, inlinedAt: !99)
!107 = distinct !DILexicalBlock(scope: !79, file: !1, line: 77, column: 5)
!108 = !DILocation(line: 74, column: 26, scope: !79, inlinedAt: !99)
!109 = !DILocation(line: 78, column: 17, scope: !107, inlinedAt: !99)
!110 = !{!111, !111, i64 0}
!111 = !{!"double", !46, i64 0}
!112 = !DILocation(line: 78, column: 27, scope: !107, inlinedAt: !99)
!113 = !DILocation(line: 78, column: 35, scope: !107, inlinedAt: !99)
!114 = !DILocation(line: 78, column: 33, scope: !107, inlinedAt: !99)
!115 = !DILocation(line: 78, column: 25, scope: !107, inlinedAt: !99)
!116 = !DILocation(line: 78, column: 43, scope: !107, inlinedAt: !99)
!117 = !DILocation(line: 78, column: 51, scope: !107, inlinedAt: !99)
!118 = !DILocation(line: 78, column: 49, scope: !107, inlinedAt: !99)
!119 = !DILocation(line: 78, column: 41, scope: !107, inlinedAt: !99)
!120 = !DILocation(line: 78, column: 15, scope: !107, inlinedAt: !99)
!121 = distinct !{!121, !122, !123}
!122 = !DILocation(line: 73, column: 1, scope: !79, inlinedAt: !99)
!123 = !DILocation(line: 73, column: 37, scope: !79, inlinedAt: !99)
!124 = !DILocation(line: 80, column: 3, scope: !79, inlinedAt: !99)
!125 = !{!126}
!126 = !{i64 2, i64 -1, i64 -1, i1 true}
!127 = distinct !DISubprogram(name: "kernel_p2", scope: !1, file: !1, line: 83, type: !128, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !130)
!128 = !DISubroutineType(types: !129)
!129 = !{null, !20, !12, !21, !35, !35}
!130 = !{!131, !132, !133, !134, !135}
!131 = !DILocalVariable(name: "n", arg: 1, scope: !127, file: !1, line: 83, type: !20)
!132 = !DILocalVariable(name: "beta", arg: 2, scope: !127, file: !1, line: 83, type: !12)
!133 = !DILocalVariable(name: "A", arg: 3, scope: !127, file: !1, line: 83, type: !21)
!134 = !DILocalVariable(name: "y", arg: 4, scope: !127, file: !1, line: 83, type: !35)
!135 = !DILocalVariable(name: "x", arg: 5, scope: !127, file: !1, line: 83, type: !35)
!136 = !DILocation(line: 0, scope: !127)
!137 = !DILocation(line: 85, column: 1, scope: !127)
!138 = !DILocation(line: 93, column: 1, scope: !127)
!139 = distinct !DISubprogram(name: ".omp_outlined..2", scope: !1, file: !1, line: 86, type: !140, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !143)
!140 = !DISubroutineType(types: !141)
!141 = !{null, !57, !57, !61, !63, !142, !62, !63}
!142 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!143 = !{!144, !145, !146, !147, !148, !149, !150}
!144 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !139, type: !57, flags: DIFlagArtificial)
!145 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !139, type: !57, flags: DIFlagArtificial)
!146 = !DILocalVariable(name: "n", arg: 3, scope: !139, type: !61, flags: DIFlagArtificial)
!147 = !DILocalVariable(name: "x", arg: 4, scope: !139, type: !63, flags: DIFlagArtificial)
!148 = !DILocalVariable(name: "beta", arg: 5, scope: !139, type: !142, flags: DIFlagArtificial)
!149 = !DILocalVariable(name: "A", arg: 6, scope: !139, type: !62, flags: DIFlagArtificial)
!150 = !DILocalVariable(name: "y", arg: 7, scope: !139, type: !63, flags: DIFlagArtificial)
!151 = !DILocation(line: 0, scope: !139)
!152 = !{!153}
!153 = distinct !{!153, !154, !".omp_outlined._debug__.1: argument 0"}
!154 = distinct !{!154, !".omp_outlined._debug__.1"}
!155 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !156, type: !57, flags: DIFlagArtificial)
!156 = distinct !DISubprogram(name: ".omp_outlined._debug__.1", scope: !1, file: !1, line: 86, type: !140, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !157)
!157 = !{!155, !158, !159, !160, !161, !162, !163, !164, !165, !165, !166, !167, !168, !169, !170, !166, !171}
!158 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !156, type: !57, flags: DIFlagArtificial)
!159 = !DILocalVariable(name: "n", arg: 3, scope: !156, file: !1, line: 83, type: !61)
!160 = !DILocalVariable(name: "x", arg: 4, scope: !156, file: !1, line: 83, type: !63)
!161 = !DILocalVariable(name: "beta", arg: 5, scope: !156, file: !1, line: 83, type: !142)
!162 = !DILocalVariable(name: "A", arg: 6, scope: !156, file: !1, line: 83, type: !62)
!163 = !DILocalVariable(name: "y", arg: 7, scope: !156, file: !1, line: 83, type: !63)
!164 = !DILocalVariable(name: ".omp.iv", scope: !156, type: !20, flags: DIFlagArtificial)
!165 = !DILocalVariable(name: ".capture_expr.", scope: !156, type: !20, flags: DIFlagArtificial)
!166 = !DILocalVariable(name: "i", scope: !156, type: !20, flags: DIFlagArtificial)
!167 = !DILocalVariable(name: ".omp.lb", scope: !156, type: !20, flags: DIFlagArtificial)
!168 = !DILocalVariable(name: ".omp.ub", scope: !156, type: !20, flags: DIFlagArtificial)
!169 = !DILocalVariable(name: ".omp.stride", scope: !156, type: !20, flags: DIFlagArtificial)
!170 = !DILocalVariable(name: ".omp.is_last", scope: !156, type: !20, flags: DIFlagArtificial)
!171 = !DILocalVariable(name: "j", scope: !172, file: !1, line: 88, type: !20)
!172 = distinct !DILexicalBlock(scope: !173, file: !1, line: 88, column: 5)
!173 = distinct !DILexicalBlock(scope: !156, file: !1, line: 87, column: 3)
!174 = !DILocation(line: 0, scope: !156, inlinedAt: !175)
!175 = distinct !DILocation(line: 86, column: 3, scope: !139)
!176 = !DILocation(line: 86, column: 23, scope: !156, inlinedAt: !175)
!177 = !DILocation(line: 86, column: 3, scope: !156, inlinedAt: !175)
!178 = !DILocation(line: 86, column: 8, scope: !156, inlinedAt: !175)
!179 = !DILocation(line: 0, scope: !180, inlinedAt: !175)
!180 = distinct !DILexicalBlock(scope: !172, file: !1, line: 88, column: 5)
!181 = !DILocation(line: 0, scope: !182, inlinedAt: !175)
!182 = distinct !DILexicalBlock(scope: !180, file: !1, line: 89, column: 5)
!183 = !DILocation(line: 85, column: 1, scope: !156, inlinedAt: !175)
!184 = !DILocation(line: 0, scope: !172, inlinedAt: !175)
!185 = !DILocation(line: 90, column: 14, scope: !182, inlinedAt: !175)
!186 = !DILocation(line: 88, column: 5, scope: !172, inlinedAt: !175)
!187 = !DILocation(line: 90, column: 21, scope: !182, inlinedAt: !175)
!188 = !DILocation(line: 90, column: 28, scope: !182, inlinedAt: !175)
!189 = !DILocation(line: 90, column: 26, scope: !182, inlinedAt: !175)
!190 = !DILocation(line: 90, column: 38, scope: !182, inlinedAt: !175)
!191 = !DILocation(line: 90, column: 36, scope: !182, inlinedAt: !175)
!192 = !DILocation(line: 90, column: 19, scope: !182, inlinedAt: !175)
!193 = !DILocation(line: 90, column: 12, scope: !182, inlinedAt: !175)
!194 = !DILocation(line: 88, column: 29, scope: !180, inlinedAt: !175)
!195 = distinct !{!195, !186, !196}
!196 = !DILocation(line: 91, column: 5, scope: !172, inlinedAt: !175)
!197 = distinct !{!197, !183, !198}
!198 = !DILocation(line: 85, column: 25, scope: !156, inlinedAt: !175)
!199 = !DILocation(line: 92, column: 3, scope: !156, inlinedAt: !175)
!200 = !DILocation(line: 86, column: 3, scope: !139)
!201 = distinct !DISubprogram(name: "kernel_p3", scope: !1, file: !1, line: 95, type: !202, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !204)
!202 = !DISubroutineType(types: !203)
!203 = !{null, !20, !35, !35}
!204 = !{!205, !206, !207}
!205 = !DILocalVariable(name: "n", arg: 1, scope: !201, file: !1, line: 95, type: !20)
!206 = !DILocalVariable(name: "x", arg: 2, scope: !201, file: !1, line: 95, type: !35)
!207 = !DILocalVariable(name: "z", arg: 3, scope: !201, file: !1, line: 95, type: !35)
!208 = !DILocation(line: 0, scope: !201)
!209 = !DILocation(line: 97, column: 1, scope: !201)
!210 = !DILocation(line: 102, column: 1, scope: !201)
!211 = distinct !DISubprogram(name: ".omp_outlined..4", scope: !1, file: !1, line: 98, type: !212, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !214)
!212 = !DISubroutineType(types: !213)
!213 = !{null, !57, !57, !61, !63, !63}
!214 = !{!215, !216, !217, !218, !219}
!215 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !211, type: !57, flags: DIFlagArtificial)
!216 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !211, type: !57, flags: DIFlagArtificial)
!217 = !DILocalVariable(name: "n", arg: 3, scope: !211, type: !61, flags: DIFlagArtificial)
!218 = !DILocalVariable(name: "x", arg: 4, scope: !211, type: !63, flags: DIFlagArtificial)
!219 = !DILocalVariable(name: "z", arg: 5, scope: !211, type: !63, flags: DIFlagArtificial)
!220 = !DILocation(line: 0, scope: !211)
!221 = !DILocation(line: 98, column: 3, scope: !211)
!222 = !{!223}
!223 = distinct !{!223, !224, !".omp_outlined._debug__.3: argument 0"}
!224 = distinct !{!224, !".omp_outlined._debug__.3"}
!225 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !226, type: !57, flags: DIFlagArtificial)
!226 = distinct !DISubprogram(name: ".omp_outlined._debug__.3", scope: !1, file: !1, line: 98, type: !212, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !227)
!227 = !{!225, !228, !229, !230, !231, !232, !233, !233, !234, !235, !236, !237, !238, !234}
!228 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !226, type: !57, flags: DIFlagArtificial)
!229 = !DILocalVariable(name: "n", arg: 3, scope: !226, file: !1, line: 95, type: !61)
!230 = !DILocalVariable(name: "x", arg: 4, scope: !226, file: !1, line: 95, type: !63)
!231 = !DILocalVariable(name: "z", arg: 5, scope: !226, file: !1, line: 95, type: !63)
!232 = !DILocalVariable(name: ".omp.iv", scope: !226, type: !20, flags: DIFlagArtificial)
!233 = !DILocalVariable(name: ".capture_expr.", scope: !226, type: !20, flags: DIFlagArtificial)
!234 = !DILocalVariable(name: "i", scope: !226, type: !20, flags: DIFlagArtificial)
!235 = !DILocalVariable(name: ".omp.lb", scope: !226, type: !20, flags: DIFlagArtificial)
!236 = !DILocalVariable(name: ".omp.ub", scope: !226, type: !20, flags: DIFlagArtificial)
!237 = !DILocalVariable(name: ".omp.stride", scope: !226, type: !20, flags: DIFlagArtificial)
!238 = !DILocalVariable(name: ".omp.is_last", scope: !226, type: !20, flags: DIFlagArtificial)
!239 = !DILocation(line: 0, scope: !226, inlinedAt: !240)
!240 = distinct !DILocation(line: 98, column: 3, scope: !211)
!241 = !DILocation(line: 98, column: 3, scope: !226, inlinedAt: !240)
!242 = !DILocation(line: 98, column: 8, scope: !226, inlinedAt: !240)
!243 = !DILocation(line: 0, scope: !244, inlinedAt: !240)
!244 = distinct !DILexicalBlock(scope: !226, file: !1, line: 99, column: 3)
!245 = !DILocation(line: 100, column: 12, scope: !244, inlinedAt: !240)
!246 = !{!247}
!247 = distinct !{!247, !248}
!248 = distinct !{!248, !"LVerDomain"}
!249 = !{!223, !250}
!250 = distinct !{!250, !248}
!251 = !DILocation(line: 100, column: 19, scope: !244, inlinedAt: !240)
!252 = !{!250}
!253 = !DILocation(line: 100, column: 17, scope: !244, inlinedAt: !240)
!254 = !DILocation(line: 100, column: 10, scope: !244, inlinedAt: !240)
!255 = distinct !{!255, !256, !257, !258}
!256 = !DILocation(line: 97, column: 1, scope: !226, inlinedAt: !240)
!257 = !DILocation(line: 97, column: 25, scope: !226, inlinedAt: !240)
!258 = !{!"llvm.loop.isvectorized", i32 1}
!259 = distinct !{!259, !256, !257, !258}
!260 = !DILocation(line: 101, column: 3, scope: !226, inlinedAt: !240)
!261 = distinct !DISubprogram(name: "kernel_p4", scope: !1, file: !1, line: 104, type: !128, scopeLine: 105, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !262)
!262 = !{!263, !264, !265, !266, !267}
!263 = !DILocalVariable(name: "n", arg: 1, scope: !261, file: !1, line: 104, type: !20)
!264 = !DILocalVariable(name: "alpha", arg: 2, scope: !261, file: !1, line: 104, type: !12)
!265 = !DILocalVariable(name: "A", arg: 3, scope: !261, file: !1, line: 104, type: !21)
!266 = !DILocalVariable(name: "x", arg: 4, scope: !261, file: !1, line: 104, type: !35)
!267 = !DILocalVariable(name: "w", arg: 5, scope: !261, file: !1, line: 104, type: !35)
!268 = !DILocation(line: 0, scope: !261)
!269 = !DILocation(line: 106, column: 1, scope: !261)
!270 = !DILocation(line: 114, column: 1, scope: !261)
!271 = distinct !DISubprogram(name: ".omp_outlined..6", scope: !1, file: !1, line: 107, type: !140, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !272)
!272 = !{!273, !274, !275, !276, !277, !278, !279}
!273 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !271, type: !57, flags: DIFlagArtificial)
!274 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !271, type: !57, flags: DIFlagArtificial)
!275 = !DILocalVariable(name: "n", arg: 3, scope: !271, type: !61, flags: DIFlagArtificial)
!276 = !DILocalVariable(name: "w", arg: 4, scope: !271, type: !63, flags: DIFlagArtificial)
!277 = !DILocalVariable(name: "alpha", arg: 5, scope: !271, type: !142, flags: DIFlagArtificial)
!278 = !DILocalVariable(name: "A", arg: 6, scope: !271, type: !62, flags: DIFlagArtificial)
!279 = !DILocalVariable(name: "x", arg: 7, scope: !271, type: !63, flags: DIFlagArtificial)
!280 = !DILocation(line: 0, scope: !271)
!281 = !{!282}
!282 = distinct !{!282, !283, !".omp_outlined._debug__.5: argument 0"}
!283 = distinct !{!283, !".omp_outlined._debug__.5"}
!284 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !285, type: !57, flags: DIFlagArtificial)
!285 = distinct !DISubprogram(name: ".omp_outlined._debug__.5", scope: !1, file: !1, line: 107, type: !140, scopeLine: 107, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !286)
!286 = !{!284, !287, !288, !289, !290, !291, !292, !293, !294, !294, !295, !296, !297, !298, !299, !295, !300}
!287 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !285, type: !57, flags: DIFlagArtificial)
!288 = !DILocalVariable(name: "n", arg: 3, scope: !285, file: !1, line: 104, type: !61)
!289 = !DILocalVariable(name: "w", arg: 4, scope: !285, file: !1, line: 104, type: !63)
!290 = !DILocalVariable(name: "alpha", arg: 5, scope: !285, file: !1, line: 104, type: !142)
!291 = !DILocalVariable(name: "A", arg: 6, scope: !285, file: !1, line: 104, type: !62)
!292 = !DILocalVariable(name: "x", arg: 7, scope: !285, file: !1, line: 104, type: !63)
!293 = !DILocalVariable(name: ".omp.iv", scope: !285, type: !20, flags: DIFlagArtificial)
!294 = !DILocalVariable(name: ".capture_expr.", scope: !285, type: !20, flags: DIFlagArtificial)
!295 = !DILocalVariable(name: "i", scope: !285, type: !20, flags: DIFlagArtificial)
!296 = !DILocalVariable(name: ".omp.lb", scope: !285, type: !20, flags: DIFlagArtificial)
!297 = !DILocalVariable(name: ".omp.ub", scope: !285, type: !20, flags: DIFlagArtificial)
!298 = !DILocalVariable(name: ".omp.stride", scope: !285, type: !20, flags: DIFlagArtificial)
!299 = !DILocalVariable(name: ".omp.is_last", scope: !285, type: !20, flags: DIFlagArtificial)
!300 = !DILocalVariable(name: "j", scope: !301, file: !1, line: 109, type: !20)
!301 = distinct !DILexicalBlock(scope: !302, file: !1, line: 109, column: 5)
!302 = distinct !DILexicalBlock(scope: !285, file: !1, line: 108, column: 3)
!303 = !DILocation(line: 0, scope: !285, inlinedAt: !304)
!304 = distinct !DILocation(line: 107, column: 3, scope: !271)
!305 = !DILocation(line: 107, column: 23, scope: !285, inlinedAt: !304)
!306 = !DILocation(line: 107, column: 3, scope: !285, inlinedAt: !304)
!307 = !DILocation(line: 107, column: 8, scope: !285, inlinedAt: !304)
!308 = !DILocation(line: 0, scope: !309, inlinedAt: !304)
!309 = distinct !DILexicalBlock(scope: !301, file: !1, line: 109, column: 5)
!310 = !DILocation(line: 0, scope: !311, inlinedAt: !304)
!311 = distinct !DILexicalBlock(scope: !309, file: !1, line: 110, column: 5)
!312 = !DILocation(line: 106, column: 1, scope: !285, inlinedAt: !304)
!313 = !DILocation(line: 0, scope: !301, inlinedAt: !304)
!314 = !DILocation(line: 111, column: 14, scope: !311, inlinedAt: !304)
!315 = !DILocation(line: 109, column: 5, scope: !301, inlinedAt: !304)
!316 = !DILocation(line: 111, column: 21, scope: !311, inlinedAt: !304)
!317 = !DILocation(line: 111, column: 29, scope: !311, inlinedAt: !304)
!318 = !DILocation(line: 111, column: 27, scope: !311, inlinedAt: !304)
!319 = !DILocation(line: 111, column: 39, scope: !311, inlinedAt: !304)
!320 = !DILocation(line: 111, column: 37, scope: !311, inlinedAt: !304)
!321 = !DILocation(line: 111, column: 19, scope: !311, inlinedAt: !304)
!322 = !DILocation(line: 111, column: 12, scope: !311, inlinedAt: !304)
!323 = !DILocation(line: 109, column: 29, scope: !309, inlinedAt: !304)
!324 = distinct !{!324, !315, !325}
!325 = !DILocation(line: 112, column: 5, scope: !301, inlinedAt: !304)
!326 = distinct !{!326, !312, !327}
!327 = !DILocation(line: 106, column: 25, scope: !285, inlinedAt: !304)
!328 = !DILocation(line: 113, column: 3, scope: !285, inlinedAt: !304)
!329 = !DILocation(line: 107, column: 3, scope: !271)
!330 = distinct !DISubprogram(name: "kernel_gemver", scope: !1, file: !1, line: 118, type: !331, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !333)
!331 = !DISubroutineType(types: !332)
!332 = !{null, !20, !12, !12, !21, !35, !35, !35, !35, !35, !35, !35, !35}
!333 = !{!334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345}
!334 = !DILocalVariable(name: "n", arg: 1, scope: !330, file: !1, line: 118, type: !20)
!335 = !DILocalVariable(name: "alpha", arg: 2, scope: !330, file: !1, line: 119, type: !12)
!336 = !DILocalVariable(name: "beta", arg: 3, scope: !330, file: !1, line: 120, type: !12)
!337 = !DILocalVariable(name: "A", arg: 4, scope: !330, file: !1, line: 121, type: !21)
!338 = !DILocalVariable(name: "u1", arg: 5, scope: !330, file: !1, line: 122, type: !35)
!339 = !DILocalVariable(name: "v1", arg: 6, scope: !330, file: !1, line: 123, type: !35)
!340 = !DILocalVariable(name: "u2", arg: 7, scope: !330, file: !1, line: 124, type: !35)
!341 = !DILocalVariable(name: "v2", arg: 8, scope: !330, file: !1, line: 125, type: !35)
!342 = !DILocalVariable(name: "w", arg: 9, scope: !330, file: !1, line: 126, type: !35)
!343 = !DILocalVariable(name: "x", arg: 10, scope: !330, file: !1, line: 127, type: !35)
!344 = !DILocalVariable(name: "y", arg: 11, scope: !330, file: !1, line: 128, type: !35)
!345 = !DILocalVariable(name: "z", arg: 12, scope: !330, file: !1, line: 129, type: !35)
!346 = !DILocation(line: 0, scope: !330)
!347 = !DILocation(line: 132, column: 3, scope: !330)
!348 = !DILocation(line: 0, scope: !32, inlinedAt: !349)
!349 = distinct !DILocation(line: 133, column: 3, scope: !330)
!350 = !DILocation(line: 73, column: 1, scope: !32, inlinedAt: !349)
!351 = !DILocation(line: 81, column: 1, scope: !32, inlinedAt: !349)
!352 = !DILocation(line: 134, column: 3, scope: !330)
!353 = !DILocation(line: 135, column: 3, scope: !330)
!354 = !DILocation(line: 137, column: 3, scope: !330)
!355 = !DILocation(line: 0, scope: !127, inlinedAt: !356)
!356 = distinct !DILocation(line: 138, column: 3, scope: !330)
!357 = !DILocation(line: 85, column: 1, scope: !127, inlinedAt: !356)
!358 = !DILocation(line: 93, column: 1, scope: !127, inlinedAt: !356)
!359 = !DILocation(line: 139, column: 3, scope: !330)
!360 = !DILocation(line: 140, column: 3, scope: !330)
!361 = !DILocation(line: 142, column: 3, scope: !330)
!362 = !DILocation(line: 0, scope: !201, inlinedAt: !363)
!363 = distinct !DILocation(line: 143, column: 3, scope: !330)
!364 = !DILocation(line: 97, column: 1, scope: !201, inlinedAt: !363)
!365 = !DILocation(line: 102, column: 1, scope: !201, inlinedAt: !363)
!366 = !DILocation(line: 144, column: 3, scope: !330)
!367 = !DILocation(line: 145, column: 3, scope: !330)
!368 = !DILocation(line: 147, column: 3, scope: !330)
!369 = !DILocation(line: 0, scope: !261, inlinedAt: !370)
!370 = distinct !DILocation(line: 148, column: 3, scope: !330)
!371 = !DILocation(line: 106, column: 1, scope: !261, inlinedAt: !370)
!372 = !DILocation(line: 114, column: 1, scope: !261, inlinedAt: !370)
!373 = !DILocation(line: 149, column: 3, scope: !330)
!374 = !DILocation(line: 150, column: 3, scope: !330)
!375 = !DILocation(line: 152, column: 1, scope: !330)
!376 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 154, type: !377, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !382)
!377 = !DISubroutineType(types: !378)
!378 = !{!20, !20, !379}
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!382 = !{!383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396}
!383 = !DILocalVariable(name: "argc", arg: 1, scope: !376, file: !1, line: 154, type: !20)
!384 = !DILocalVariable(name: "argv", arg: 2, scope: !376, file: !1, line: 154, type: !379)
!385 = !DILocalVariable(name: "n", scope: !376, file: !1, line: 157, type: !20)
!386 = !DILocalVariable(name: "alpha", scope: !376, file: !1, line: 160, type: !12)
!387 = !DILocalVariable(name: "beta", scope: !376, file: !1, line: 161, type: !12)
!388 = !DILocalVariable(name: "A", scope: !376, file: !1, line: 162, type: !10)
!389 = !DILocalVariable(name: "u1", scope: !376, file: !1, line: 163, type: !21)
!390 = !DILocalVariable(name: "v1", scope: !376, file: !1, line: 164, type: !21)
!391 = !DILocalVariable(name: "u2", scope: !376, file: !1, line: 165, type: !21)
!392 = !DILocalVariable(name: "v2", scope: !376, file: !1, line: 166, type: !21)
!393 = !DILocalVariable(name: "w", scope: !376, file: !1, line: 167, type: !21)
!394 = !DILocalVariable(name: "x", scope: !376, file: !1, line: 168, type: !21)
!395 = !DILocalVariable(name: "y", scope: !376, file: !1, line: 169, type: !21)
!396 = !DILocalVariable(name: "z", scope: !376, file: !1, line: 170, type: !21)
!397 = !DILocation(line: 0, scope: !376)
!398 = !DILocation(line: 162, column: 3, scope: !376)
!399 = !DILocation(line: 163, column: 3, scope: !376)
!400 = !DILocation(line: 164, column: 3, scope: !376)
!401 = !DILocation(line: 165, column: 3, scope: !376)
!402 = !DILocation(line: 166, column: 3, scope: !376)
!403 = !DILocation(line: 167, column: 3, scope: !376)
!404 = !DILocation(line: 168, column: 3, scope: !376)
!405 = !DILocation(line: 169, column: 3, scope: !376)
!406 = !DILocation(line: 170, column: 3, scope: !376)
!407 = !DILocation(line: 174, column: 14, scope: !376)
!408 = !DILocation(line: 175, column: 14, scope: !376)
!409 = !DILocation(line: 176, column: 14, scope: !376)
!410 = !DILocation(line: 177, column: 14, scope: !376)
!411 = !DILocation(line: 178, column: 14, scope: !376)
!412 = !DILocation(line: 179, column: 14, scope: !376)
!413 = !DILocation(line: 180, column: 14, scope: !376)
!414 = !DILocation(line: 181, column: 14, scope: !376)
!415 = !DILocation(line: 182, column: 14, scope: !376)
!416 = !DILocalVariable(name: "n", arg: 1, scope: !417, file: !1, line: 23, type: !20)
!417 = distinct !DISubprogram(name: "init_array", scope: !1, file: !1, line: 23, type: !418, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !420)
!418 = !DISubroutineType(types: !419)
!419 = !{null, !20, !35, !35, !21, !35, !35, !35, !35, !35, !35, !35, !35}
!420 = !{!416, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433}
!421 = !DILocalVariable(name: "alpha", arg: 2, scope: !417, file: !1, line: 24, type: !35)
!422 = !DILocalVariable(name: "beta", arg: 3, scope: !417, file: !1, line: 25, type: !35)
!423 = !DILocalVariable(name: "A", arg: 4, scope: !417, file: !1, line: 26, type: !21)
!424 = !DILocalVariable(name: "u1", arg: 5, scope: !417, file: !1, line: 27, type: !35)
!425 = !DILocalVariable(name: "v1", arg: 6, scope: !417, file: !1, line: 28, type: !35)
!426 = !DILocalVariable(name: "u2", arg: 7, scope: !417, file: !1, line: 29, type: !35)
!427 = !DILocalVariable(name: "v2", arg: 8, scope: !417, file: !1, line: 30, type: !35)
!428 = !DILocalVariable(name: "w", arg: 9, scope: !417, file: !1, line: 31, type: !35)
!429 = !DILocalVariable(name: "x", arg: 10, scope: !417, file: !1, line: 32, type: !35)
!430 = !DILocalVariable(name: "y", arg: 11, scope: !417, file: !1, line: 33, type: !35)
!431 = !DILocalVariable(name: "z", arg: 12, scope: !417, file: !1, line: 34, type: !35)
!432 = !DILocalVariable(name: "i", scope: !417, file: !1, line: 36, type: !20)
!433 = !DILocalVariable(name: "j", scope: !417, file: !1, line: 36, type: !20)
!434 = !DILocation(line: 0, scope: !417, inlinedAt: !435)
!435 = distinct !DILocation(line: 173, column: 3, scope: !376)
!436 = !DILocation(line: 41, column: 3, scope: !437, inlinedAt: !435)
!437 = distinct !DILexicalBlock(scope: !417, file: !1, line: 41, column: 3)
!438 = !DILocation(line: 41, column: 17, scope: !439, inlinedAt: !435)
!439 = distinct !DILexicalBlock(scope: !437, file: !1, line: 41, column: 3)
!440 = !DILocation(line: 43, column: 13, scope: !441, inlinedAt: !435)
!441 = distinct !DILexicalBlock(scope: !439, file: !1, line: 42, column: 3)
!442 = !DILocation(line: 43, column: 5, scope: !441, inlinedAt: !435)
!443 = !DILocation(line: 43, column: 11, scope: !441, inlinedAt: !435)
!444 = !DILocation(line: 44, column: 16, scope: !441, inlinedAt: !435)
!445 = !DILocation(line: 44, column: 21, scope: !441, inlinedAt: !435)
!446 = !DILocation(line: 44, column: 13, scope: !441, inlinedAt: !435)
!447 = !DILocation(line: 44, column: 25, scope: !441, inlinedAt: !435)
!448 = !DILocation(line: 44, column: 5, scope: !441, inlinedAt: !435)
!449 = !DILocation(line: 44, column: 11, scope: !441, inlinedAt: !435)
!450 = !DILocation(line: 45, column: 25, scope: !441, inlinedAt: !435)
!451 = !DILocation(line: 45, column: 5, scope: !441, inlinedAt: !435)
!452 = !DILocation(line: 45, column: 11, scope: !441, inlinedAt: !435)
!453 = !DILocation(line: 46, column: 25, scope: !441, inlinedAt: !435)
!454 = !DILocation(line: 46, column: 5, scope: !441, inlinedAt: !435)
!455 = !DILocation(line: 46, column: 11, scope: !441, inlinedAt: !435)
!456 = !DILocation(line: 47, column: 24, scope: !441, inlinedAt: !435)
!457 = !DILocation(line: 47, column: 5, scope: !441, inlinedAt: !435)
!458 = !DILocation(line: 47, column: 10, scope: !441, inlinedAt: !435)
!459 = !DILocation(line: 48, column: 24, scope: !441, inlinedAt: !435)
!460 = !DILocation(line: 48, column: 5, scope: !441, inlinedAt: !435)
!461 = !DILocation(line: 48, column: 10, scope: !441, inlinedAt: !435)
!462 = !DILocation(line: 49, column: 5, scope: !441, inlinedAt: !435)
!463 = !DILocation(line: 49, column: 10, scope: !441, inlinedAt: !435)
!464 = !DILocation(line: 50, column: 5, scope: !441, inlinedAt: !435)
!465 = !DILocation(line: 50, column: 10, scope: !441, inlinedAt: !435)
!466 = !DILocation(line: 51, column: 5, scope: !467, inlinedAt: !435)
!467 = distinct !DILexicalBlock(scope: !441, file: !1, line: 51, column: 5)
!468 = !DILocation(line: 52, column: 33, scope: !469, inlinedAt: !435)
!469 = distinct !DILexicalBlock(scope: !467, file: !1, line: 51, column: 5)
!470 = !DILocation(line: 52, column: 31, scope: !469, inlinedAt: !435)
!471 = !DILocation(line: 52, column: 36, scope: !469, inlinedAt: !435)
!472 = !DILocation(line: 52, column: 7, scope: !469, inlinedAt: !435)
!473 = !DILocation(line: 52, column: 15, scope: !469, inlinedAt: !435)
!474 = !DILocation(line: 51, column: 25, scope: !469, inlinedAt: !435)
!475 = !DILocation(line: 51, column: 19, scope: !469, inlinedAt: !435)
!476 = distinct !{!476, !466, !477}
!477 = !DILocation(line: 52, column: 38, scope: !467, inlinedAt: !435)
!478 = !DILocation(line: 188, column: 3, scope: !376)
!479 = !DILocation(line: 205, column: 3, scope: !480)
!480 = distinct !DILexicalBlock(scope: !376, file: !1, line: 205, column: 3)
!481 = !DILocation(line: 205, column: 3, scope: !376)
!482 = !DILocalVariable(name: "i", scope: !483, file: !1, line: 61, type: !20)
!483 = distinct !DISubprogram(name: "print_array", scope: !1, file: !1, line: 58, type: !484, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !486)
!484 = !DISubroutineType(types: !485)
!485 = !{null, !20, !35}
!486 = !{!487, !488, !482}
!487 = !DILocalVariable(name: "n", arg: 1, scope: !483, file: !1, line: 58, type: !20)
!488 = !DILocalVariable(name: "w", arg: 2, scope: !483, file: !1, line: 59, type: !35)
!489 = !DILocation(line: 0, scope: !483, inlinedAt: !490)
!490 = distinct !DILocation(line: 205, column: 3, scope: !480)
!491 = !DILocation(line: 65, column: 13, scope: !492, inlinedAt: !490)
!492 = distinct !DILexicalBlock(scope: !493, file: !1, line: 64, column: 3)
!493 = distinct !DILexicalBlock(scope: !494, file: !1, line: 63, column: 3)
!494 = distinct !DILexicalBlock(scope: !483, file: !1, line: 63, column: 3)
!495 = !DILocation(line: 65, column: 43, scope: !492, inlinedAt: !490)
!496 = !DILocation(line: 65, column: 5, scope: !492, inlinedAt: !490)
!497 = !DILocation(line: 66, column: 11, scope: !498, inlinedAt: !490)
!498 = distinct !DILexicalBlock(scope: !492, file: !1, line: 66, column: 9)
!499 = !DILocation(line: 66, column: 16, scope: !498, inlinedAt: !490)
!500 = !DILocation(line: 66, column: 9, scope: !492, inlinedAt: !490)
!501 = !DILocation(line: 67, column: 15, scope: !498, inlinedAt: !490)
!502 = !DILocation(line: 67, column: 7, scope: !498, inlinedAt: !490)
!503 = !DILocation(line: 63, column: 23, scope: !493, inlinedAt: !490)
!504 = !DILocation(line: 63, column: 17, scope: !493, inlinedAt: !490)
!505 = !DILocation(line: 63, column: 3, scope: !494, inlinedAt: !490)
!506 = distinct !{!506, !505, !507}
!507 = !DILocation(line: 68, column: 3, scope: !494, inlinedAt: !490)
!508 = !DILocation(line: 208, column: 3, scope: !376)
!509 = !DILocation(line: 209, column: 3, scope: !376)
!510 = !DILocation(line: 210, column: 3, scope: !376)
!511 = !DILocation(line: 211, column: 3, scope: !376)
!512 = !DILocation(line: 212, column: 3, scope: !376)
!513 = !DILocation(line: 213, column: 3, scope: !376)
!514 = !DILocation(line: 214, column: 3, scope: !376)
!515 = !DILocation(line: 215, column: 3, scope: !376)
!516 = !DILocation(line: 216, column: 3, scope: !376)
!517 = !DILocation(line: 218, column: 3, scope: !376)
