; ModuleID = '../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/bicg/bicg.c'
source_filename = "../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/bicg/bicg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [91 x i8] c";../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/bicg/bicg.c;kernel_p1;66;1;;\00", align 1
@2 = private unnamed_addr constant [92 x i8] c";../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/bicg/bicg.c;kernel_p1;66;25;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant [91 x i8] c";../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/bicg/bicg.c;kernel_p2;78;1;;\00", align 1
@5 = private unnamed_addr constant [92 x i8] c";../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/bicg/bicg.c;kernel_p2;78;25;;\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@llvm.used = appending global [3 x i8*] [i8* bitcast (void (i32, i32, [8000 x double]*, double*, double*, double*, double*)* @kernel_bicg to i8*), i8* bitcast (void (i32, double*)* @kernel_p1 to i8*), i8* bitcast (void (i32, i32, [8000 x double]*, double*, double*, double*, double*)* @kernel_p2 to i8*)], section "llvm.metadata"

; Function Attrs: nounwind uwtable
define internal void @kernel_p1(i32 %0, double* %1) #0 !dbg !32 {
  %3 = alloca i32, align 4
  %4 = alloca double*, align 8
  %5 = alloca %struct.ident_t, align 8
  %6 = bitcast %struct.ident_t* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %6, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @3 to i8*), i64 16, i1 false)
  call void @llvm.dbg.value(metadata i32 %0, metadata !37, metadata !DIExpression()), !dbg !39
  store i32 %0, i32* %3, align 4, !tbaa !40
  call void @llvm.dbg.value(metadata double* %1, metadata !38, metadata !DIExpression()), !dbg !39
  store double* %1, double** %4, align 8, !tbaa !44
  %7 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %5, i64 0, i32 4, !dbg !46
  store i8* getelementptr inbounds ([91 x i8], [91 x i8]* @1, i64 0, i64 0), i8** %7, align 8, !dbg !46, !tbaa !47
  call void @llvm.dbg.value(metadata i32* %3, metadata !37, metadata !DIExpression(DW_OP_deref)), !dbg !39
  call void @llvm.dbg.value(metadata double** %4, metadata !38, metadata !DIExpression(DW_OP_deref)), !dbg !39
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %5, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, double**)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %3, double** nonnull %4) #8, !dbg !46
  ret void, !dbg !49
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32) local_unnamed_addr

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32) local_unnamed_addr

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture readonly dereferenceable(4) %2, double** nocapture readonly dereferenceable(8) %3) #2 !dbg !50 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ident_t, align 8
  call void @llvm.dbg.value(metadata i32* %0, metadata !60, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.value(metadata i32* %1, metadata !61, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.value(metadata i32* %2, metadata !62, metadata !DIExpression()), !dbg !64
  call void @llvm.dbg.value(metadata double** %3, metadata !63, metadata !DIExpression()), !dbg !64
  %10 = load i32, i32* %2, align 4, !dbg !65, !tbaa !40
  %11 = bitcast %struct.ident_t* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %11)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %11, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @0 to i8*), i64 24, i1 false) #8, !noalias !66
  call void @llvm.dbg.value(metadata i32* %0, metadata !69, metadata !DIExpression()) #8, !dbg !82
  call void @llvm.dbg.value(metadata i32* undef, metadata !72, metadata !DIExpression()) #8, !dbg !82
  call void @llvm.dbg.value(metadata double** %3, metadata !74, metadata !DIExpression()) #8, !dbg !82
  call void @llvm.dbg.value(metadata i32 %10, metadata !76, metadata !DIExpression()) #8, !dbg !82
  %12 = add nsw i32 %10, -1, !dbg !84
  call void @llvm.dbg.value(metadata i32 %12, metadata !76, metadata !DIExpression()) #8, !dbg !82
  call void @llvm.dbg.value(metadata i32 0, metadata !77, metadata !DIExpression()) #8, !dbg !82
  %13 = icmp sgt i32 %10, 0, !dbg !84
  br i1 %13, label %14, label %38, !dbg !84

14:                                               ; preds = %4
  %15 = bitcast i32* %5 to i8*, !dbg !84
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #8, !dbg !84, !noalias !66
  call void @llvm.dbg.value(metadata i32 0, metadata !78, metadata !DIExpression()) #8, !dbg !82
  store i32 0, i32* %5, align 4, !dbg !85, !tbaa !40, !noalias !66
  %16 = bitcast i32* %6 to i8*, !dbg !84
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %16) #8, !dbg !84, !noalias !66
  call void @llvm.dbg.value(metadata i32 %12, metadata !79, metadata !DIExpression()) #8, !dbg !82
  store i32 %12, i32* %6, align 4, !dbg !85, !tbaa !40, !noalias !66
  %17 = bitcast i32* %7 to i8*, !dbg !84
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %17) #8, !dbg !84, !noalias !66
  call void @llvm.dbg.value(metadata i32 1, metadata !80, metadata !DIExpression()) #8, !dbg !82
  store i32 1, i32* %7, align 4, !dbg !85, !tbaa !40, !noalias !66
  %18 = bitcast i32* %8 to i8*, !dbg !84
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18) #8, !dbg !84, !noalias !66
  call void @llvm.dbg.value(metadata i32 0, metadata !81, metadata !DIExpression()) #8, !dbg !82
  store i32 0, i32* %8, align 4, !dbg !85, !tbaa !40, !noalias !66
  %19 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %9, i64 0, i32 4, !dbg !84
  store i8* getelementptr inbounds ([91 x i8], [91 x i8]* @1, i64 0, i64 0), i8** %19, align 8, !dbg !84, !tbaa !47, !noalias !66
  %20 = load i32, i32* %0, align 4, !dbg !84, !tbaa !40, !alias.scope !66
  call void @llvm.dbg.value(metadata i32* %5, metadata !78, metadata !DIExpression(DW_OP_deref)) #8, !dbg !82
  call void @llvm.dbg.value(metadata i32* %6, metadata !79, metadata !DIExpression(DW_OP_deref)) #8, !dbg !82
  call void @llvm.dbg.value(metadata i32* %7, metadata !80, metadata !DIExpression(DW_OP_deref)) #8, !dbg !82
  call void @llvm.dbg.value(metadata i32* %8, metadata !81, metadata !DIExpression(DW_OP_deref)) #8, !dbg !82
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull %9, i32 %20, i32 34, i32* nonnull %8, i32* nonnull %5, i32* nonnull %6, i32* nonnull %7, i32 1, i32 1) #8, !dbg !84, !noalias !66
  %21 = load i32, i32* %6, align 4, !dbg !85, !tbaa !40, !noalias !66
  call void @llvm.dbg.value(metadata i32 %21, metadata !79, metadata !DIExpression()) #8, !dbg !82
  %22 = icmp slt i32 %21, %10, !dbg !85
  %23 = select i1 %22, i32 %21, i32 %12, !dbg !85
  call void @llvm.dbg.value(metadata i32 %23, metadata !79, metadata !DIExpression()) #8, !dbg !82
  store i32 %23, i32* %6, align 4, !dbg !85, !tbaa !40, !noalias !66
  %24 = load i32, i32* %5, align 4, !dbg !85, !tbaa !40, !noalias !66
  call void @llvm.dbg.value(metadata i32 %24, metadata !78, metadata !DIExpression()) #8, !dbg !82
  call void @llvm.dbg.value(metadata i32 %24, metadata !75, metadata !DIExpression()) #8, !dbg !82
  call void @llvm.dbg.value(metadata i32 %23, metadata !79, metadata !DIExpression()) #8, !dbg !82
  %25 = icmp slt i32 %23, %24, !dbg !84
  br i1 %25, label %37, label %26, !dbg !84

26:                                               ; preds = %14
  %27 = load double*, double** %3, align 8, !dbg !82, !tbaa !44, !noalias !66
  %28 = sext i32 %24 to i64, !dbg !84
  %29 = getelementptr double, double* %27, i64 %28, !dbg !84
  %30 = bitcast double* %29 to i8*
  %31 = icmp sgt i32 %23, %24, !dbg !84
  %32 = sub i32 %23, %24, !dbg !84
  %33 = select i1 %31, i32 %32, i32 0, !dbg !84
  %34 = zext i32 %33 to i64, !dbg !84
  %35 = shl nuw nsw i64 %34, 3, !dbg !84
  %36 = add nuw nsw i64 %35, 8, !dbg !84
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(1) %30, i8 0, i64 %36, i1 false) #8, !dbg !86, !noalias !66
  call void @llvm.dbg.value(metadata i32 undef, metadata !75, metadata !DIExpression()) #8, !dbg !82
  call void @llvm.dbg.value(metadata i32 undef, metadata !77, metadata !DIExpression()) #8, !dbg !82
  call void @llvm.dbg.value(metadata i32 undef, metadata !79, metadata !DIExpression()) #8, !dbg !82
  br label %37, !dbg !87

37:                                               ; preds = %26, %14
  store i8* getelementptr inbounds ([92 x i8], [92 x i8]* @2, i64 0, i64 0), i8** %19, align 8, !dbg !87, !tbaa !47, !noalias !66
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull %9, i32 %20) #8, !dbg !87, !noalias !66
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #8, !dbg !87, !noalias !66
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %17) #8, !dbg !87, !noalias !66
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %16) #8, !dbg !87, !noalias !66
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #8, !dbg !87, !noalias !66
  br label %38, !dbg !87

38:                                               ; preds = %4, %37
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %11), !dbg !88
  ret void, !dbg !65
}

declare !callback !89 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr

; Function Attrs: nounwind uwtable
define internal void @kernel_p2(i32 %0, i32 %1, [8000 x double]* %2, double* %3, double* %4, double* %5, double* %6) #0 !dbg !91 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [8000 x double]*, align 8
  %11 = alloca double*, align 8
  %12 = alloca double*, align 8
  %13 = alloca double*, align 8
  %14 = alloca double*, align 8
  %15 = alloca %struct.ident_t, align 8
  %16 = bitcast %struct.ident_t* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %16, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @3 to i8*), i64 16, i1 false)
  call void @llvm.dbg.value(metadata i32 %0, metadata !95, metadata !DIExpression()), !dbg !102
  store i32 %0, i32* %8, align 4, !tbaa !40
  call void @llvm.dbg.value(metadata i32 %1, metadata !96, metadata !DIExpression()), !dbg !102
  store i32 %1, i32* %9, align 4, !tbaa !40
  call void @llvm.dbg.value(metadata [8000 x double]* %2, metadata !97, metadata !DIExpression()), !dbg !102
  store [8000 x double]* %2, [8000 x double]** %10, align 8, !tbaa !44
  call void @llvm.dbg.value(metadata double* %3, metadata !98, metadata !DIExpression()), !dbg !102
  store double* %3, double** %11, align 8, !tbaa !44
  call void @llvm.dbg.value(metadata double* %4, metadata !99, metadata !DIExpression()), !dbg !102
  store double* %4, double** %12, align 8, !tbaa !44
  call void @llvm.dbg.value(metadata double* %5, metadata !100, metadata !DIExpression()), !dbg !102
  store double* %5, double** %13, align 8, !tbaa !44
  call void @llvm.dbg.value(metadata double* %6, metadata !101, metadata !DIExpression()), !dbg !102
  store double* %6, double** %14, align 8, !tbaa !44
  %17 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %15, i64 0, i32 4, !dbg !103
  store i8* getelementptr inbounds ([91 x i8], [91 x i8]* @4, i64 0, i64 0), i8** %17, align 8, !dbg !103, !tbaa !47
  call void @llvm.dbg.value(metadata i32* %8, metadata !95, metadata !DIExpression(DW_OP_deref)), !dbg !102
  call void @llvm.dbg.value(metadata i32* %9, metadata !96, metadata !DIExpression(DW_OP_deref)), !dbg !102
  call void @llvm.dbg.value(metadata [8000 x double]** %10, metadata !97, metadata !DIExpression(DW_OP_deref)), !dbg !102
  call void @llvm.dbg.value(metadata double** %11, metadata !98, metadata !DIExpression(DW_OP_deref)), !dbg !102
  call void @llvm.dbg.value(metadata double** %12, metadata !99, metadata !DIExpression(DW_OP_deref)), !dbg !102
  call void @llvm.dbg.value(metadata double** %13, metadata !100, metadata !DIExpression(DW_OP_deref)), !dbg !102
  call void @llvm.dbg.value(metadata double** %14, metadata !101, metadata !DIExpression(DW_OP_deref)), !dbg !102
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %15, i32 7, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, double**, i32*, double**, double**, [8000 x double]**, double**)* @.omp_outlined..2 to void (i32*, i32*, ...)*), i32* nonnull %8, double** nonnull %13, i32* nonnull %9, double** nonnull %14, double** nonnull %11, [8000 x double]** nonnull %10, double** nonnull %12) #8, !dbg !103
  ret void, !dbg !104
}

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined..2(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture readonly dereferenceable(4) %2, double** nocapture readonly dereferenceable(8) %3, i32* nocapture readonly dereferenceable(4) %4, double** nocapture readonly dereferenceable(8) %5, double** nocapture readonly dereferenceable(8) %6, [8000 x double]** nocapture readonly dereferenceable(8) %7, double** nocapture readonly dereferenceable(8) %8) #2 !dbg !105 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ident_t, align 8
  call void @llvm.dbg.value(metadata i32* %0, metadata !110, metadata !DIExpression()), !dbg !119
  call void @llvm.dbg.value(metadata i32* %1, metadata !111, metadata !DIExpression()), !dbg !119
  call void @llvm.dbg.value(metadata i32* %2, metadata !112, metadata !DIExpression()), !dbg !119
  call void @llvm.dbg.value(metadata double** %3, metadata !113, metadata !DIExpression()), !dbg !119
  call void @llvm.dbg.value(metadata i32* %4, metadata !114, metadata !DIExpression()), !dbg !119
  call void @llvm.dbg.value(metadata double** %5, metadata !115, metadata !DIExpression()), !dbg !119
  call void @llvm.dbg.value(metadata double** %6, metadata !116, metadata !DIExpression()), !dbg !119
  call void @llvm.dbg.value(metadata [8000 x double]** %7, metadata !117, metadata !DIExpression()), !dbg !119
  call void @llvm.dbg.value(metadata double** %8, metadata !118, metadata !DIExpression()), !dbg !119
  %15 = load i32, i32* %2, align 4, !dbg !120, !tbaa !40
  %16 = bitcast %struct.ident_t* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %16)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %16, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @0 to i8*), i64 24, i1 false) #8, !noalias !121
  call void @llvm.dbg.value(metadata i32* %0, metadata !124, metadata !DIExpression()) #8, !dbg !145
  call void @llvm.dbg.value(metadata i32* undef, metadata !127, metadata !DIExpression()) #8, !dbg !145
  call void @llvm.dbg.value(metadata double** %3, metadata !129, metadata !DIExpression()) #8, !dbg !145
  call void @llvm.dbg.value(metadata i32* %4, metadata !130, metadata !DIExpression()) #8, !dbg !145
  call void @llvm.dbg.value(metadata double** %5, metadata !131, metadata !DIExpression()) #8, !dbg !145
  call void @llvm.dbg.value(metadata double** %6, metadata !132, metadata !DIExpression()) #8, !dbg !145
  call void @llvm.dbg.value(metadata [8000 x double]** %7, metadata !133, metadata !DIExpression()) #8, !dbg !145
  call void @llvm.dbg.value(metadata double** %8, metadata !134, metadata !DIExpression()) #8, !dbg !145
  call void @llvm.dbg.value(metadata i32 %15, metadata !136, metadata !DIExpression()) #8, !dbg !145
  %17 = add nsw i32 %15, -1, !dbg !147
  call void @llvm.dbg.value(metadata i32 %17, metadata !136, metadata !DIExpression()) #8, !dbg !145
  call void @llvm.dbg.value(metadata i32 0, metadata !137, metadata !DIExpression()) #8, !dbg !145
  %18 = icmp sgt i32 %15, 0, !dbg !147
  br i1 %18, label %19, label %77, !dbg !147

19:                                               ; preds = %9
  %20 = bitcast i32* %10 to i8*, !dbg !147
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %20) #8, !dbg !147, !noalias !121
  call void @llvm.dbg.value(metadata i32 0, metadata !138, metadata !DIExpression()) #8, !dbg !145
  store i32 0, i32* %10, align 4, !dbg !148, !tbaa !40, !noalias !121
  %21 = bitcast i32* %11 to i8*, !dbg !147
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %21) #8, !dbg !147, !noalias !121
  call void @llvm.dbg.value(metadata i32 %17, metadata !139, metadata !DIExpression()) #8, !dbg !145
  store i32 %17, i32* %11, align 4, !dbg !148, !tbaa !40, !noalias !121
  %22 = bitcast i32* %12 to i8*, !dbg !147
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #8, !dbg !147, !noalias !121
  call void @llvm.dbg.value(metadata i32 1, metadata !140, metadata !DIExpression()) #8, !dbg !145
  store i32 1, i32* %12, align 4, !dbg !148, !tbaa !40, !noalias !121
  %23 = bitcast i32* %13 to i8*, !dbg !147
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %23) #8, !dbg !147, !noalias !121
  call void @llvm.dbg.value(metadata i32 0, metadata !141, metadata !DIExpression()) #8, !dbg !145
  store i32 0, i32* %13, align 4, !dbg !148, !tbaa !40, !noalias !121
  %24 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %14, i64 0, i32 4, !dbg !147
  store i8* getelementptr inbounds ([91 x i8], [91 x i8]* @4, i64 0, i64 0), i8** %24, align 8, !dbg !147, !tbaa !47, !noalias !121
  %25 = load i32, i32* %0, align 4, !dbg !147, !tbaa !40, !alias.scope !121
  call void @llvm.dbg.value(metadata i32* %10, metadata !138, metadata !DIExpression(DW_OP_deref)) #8, !dbg !145
  call void @llvm.dbg.value(metadata i32* %11, metadata !139, metadata !DIExpression(DW_OP_deref)) #8, !dbg !145
  call void @llvm.dbg.value(metadata i32* %12, metadata !140, metadata !DIExpression(DW_OP_deref)) #8, !dbg !145
  call void @llvm.dbg.value(metadata i32* %13, metadata !141, metadata !DIExpression(DW_OP_deref)) #8, !dbg !145
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull %14, i32 %25, i32 34, i32* nonnull %13, i32* nonnull %10, i32* nonnull %11, i32* nonnull %12, i32 1, i32 1) #8, !dbg !147, !noalias !121
  %26 = load i32, i32* %11, align 4, !dbg !148, !tbaa !40, !noalias !121
  call void @llvm.dbg.value(metadata i32 %26, metadata !139, metadata !DIExpression()) #8, !dbg !145
  %27 = icmp slt i32 %26, %15, !dbg !148
  %28 = select i1 %27, i32 %26, i32 %17, !dbg !148
  call void @llvm.dbg.value(metadata i32 %28, metadata !139, metadata !DIExpression()) #8, !dbg !145
  store i32 %28, i32* %11, align 4, !dbg !148, !tbaa !40, !noalias !121
  %29 = load i32, i32* %10, align 4, !dbg !148, !tbaa !40, !noalias !121
  call void @llvm.dbg.value(metadata i32 %29, metadata !138, metadata !DIExpression()) #8, !dbg !145
  call void @llvm.dbg.value(metadata i32 %29, metadata !135, metadata !DIExpression()) #8, !dbg !145
  call void @llvm.dbg.value(metadata i32 %28, metadata !139, metadata !DIExpression()) #8, !dbg !145
  %30 = icmp slt i32 %28, %29, !dbg !147
  br i1 %30, label %76, label %31, !dbg !147

31:                                               ; preds = %19
  %32 = load double*, double** %3, align 8, !dbg !149, !tbaa !44, !noalias !121
  %33 = load i32, i32* %4, align 4, !dbg !150, !noalias !121
  %34 = icmp sgt i32 %33, 0, !dbg !150
  %35 = load double*, double** %6, align 8, !dbg !152, !noalias !121
  %36 = load [8000 x double]*, [8000 x double]** %7, align 8, !dbg !152, !noalias !121
  %37 = load double*, double** %5, align 8, !dbg !152, !noalias !121
  %38 = load double*, double** %8, align 8, !dbg !152, !noalias !121
  %39 = sext i32 %29 to i64, !dbg !154
  br i1 %34, label %49, label %40, !dbg !147

40:                                               ; preds = %31
  %41 = getelementptr double, double* %32, i64 %39, !dbg !154
  %42 = bitcast double* %41 to i8*
  %43 = icmp sgt i32 %28, %29, !dbg !154
  %44 = sub i32 %28, %29, !dbg !154
  %45 = select i1 %43, i32 %44, i32 0, !dbg !154
  %46 = zext i32 %45 to i64, !dbg !154
  %47 = shl nuw nsw i64 %46, 3, !dbg !154
  %48 = add nuw nsw i64 %47, 8, !dbg !154
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(1) %42, i8 0, i64 %48, i1 false) #8, !dbg !155, !noalias !121
  call void @llvm.dbg.value(metadata i32 undef, metadata !135, metadata !DIExpression()) #8, !dbg !145
  call void @llvm.dbg.value(metadata i32 undef, metadata !137, metadata !DIExpression()) #8, !dbg !145
  call void @llvm.dbg.value(metadata i32 undef, metadata !142, metadata !DIExpression()) #8, !dbg !156
  call void @llvm.dbg.value(metadata i32 undef, metadata !139, metadata !DIExpression()) #8, !dbg !145
  br label %76, !dbg !154

49:                                               ; preds = %31
  %50 = sext i32 %28 to i64, !dbg !154
  %51 = zext i32 %33 to i64, !dbg !150
  br label %52, !dbg !154

52:                                               ; preds = %73, %49
  %53 = phi i64 [ %39, %49 ], [ %74, %73 ]
  call void @llvm.dbg.value(metadata i64 %53, metadata !135, metadata !DIExpression()) #8, !dbg !145
  call void @llvm.dbg.value(metadata i64 %53, metadata !137, metadata !DIExpression()) #8, !dbg !145
  %54 = getelementptr inbounds double, double* %32, i64 %53, !dbg !157
  store double 0.000000e+00, double* %54, align 8, !dbg !155, !tbaa !158, !noalias !121
  call void @llvm.dbg.value(metadata i32 0, metadata !142, metadata !DIExpression()) #8, !dbg !156
  %55 = getelementptr inbounds double, double* %35, i64 %53, !dbg !152
  br label %56, !dbg !160

56:                                               ; preds = %56, %52
  %57 = phi i64 [ 0, %52 ], [ %71, %56 ]
  call void @llvm.dbg.value(metadata i64 %57, metadata !142, metadata !DIExpression()) #8, !dbg !156
  %58 = load double, double* %55, align 8, !dbg !161, !tbaa !158, !noalias !121
  %59 = getelementptr inbounds [8000 x double], [8000 x double]* %36, i64 %53, i64 %57, !dbg !162
  %60 = load double, double* %59, align 8, !dbg !162, !tbaa !158, !noalias !121
  %61 = fmul double %58, %60, !dbg !163
  %62 = getelementptr inbounds double, double* %37, i64 %57, !dbg !164
  %63 = load double, double* %62, align 8, !dbg !165, !tbaa !158, !noalias !121
  %64 = fadd double %61, %63, !dbg !165
  store double %64, double* %62, align 8, !dbg !165, !tbaa !158, !noalias !121
  %65 = load double, double* %59, align 8, !dbg !166, !tbaa !158, !noalias !121
  %66 = getelementptr inbounds double, double* %38, i64 %57, !dbg !167
  %67 = load double, double* %66, align 8, !dbg !167, !tbaa !158, !noalias !121
  %68 = fmul double %65, %67, !dbg !168
  %69 = load double, double* %54, align 8, !dbg !169, !tbaa !158, !noalias !121
  %70 = fadd double %69, %68, !dbg !169
  store double %70, double* %54, align 8, !dbg !169, !tbaa !158, !noalias !121
  %71 = add nuw nsw i64 %57, 1, !dbg !170
  call void @llvm.dbg.value(metadata i64 %71, metadata !142, metadata !DIExpression()) #8, !dbg !156
  %72 = icmp eq i64 %71, %51, !dbg !171
  br i1 %72, label %73, label %56, !dbg !160, !llvm.loop !172

73:                                               ; preds = %56
  %74 = add nsw i64 %53, 1, !dbg !147
  call void @llvm.dbg.value(metadata i64 %74, metadata !135, metadata !DIExpression()) #8, !dbg !145
  call void @llvm.dbg.value(metadata i32 %28, metadata !139, metadata !DIExpression()) #8, !dbg !145
  %75 = icmp eq i64 %53, %50, !dbg !147
  br i1 %75, label %76, label %52, !dbg !147, !llvm.loop !174

76:                                               ; preds = %73, %40, %19
  store i8* getelementptr inbounds ([92 x i8], [92 x i8]* @5, i64 0, i64 0), i8** %24, align 8, !dbg !154, !tbaa !47, !noalias !121
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull %14, i32 %25) #8, !dbg !154, !noalias !121
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %23) #8, !dbg !154, !noalias !121
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #8, !dbg !154, !noalias !121
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %21) #8, !dbg !154, !noalias !121
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %20) #8, !dbg !154, !noalias !121
  br label %77, !dbg !154

77:                                               ; preds = %9, %76
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %16), !dbg !176
  ret void, !dbg !120
}

; Function Attrs: nounwind uwtable
define internal void @kernel_bicg(i32 %0, i32 %1, [8000 x double]* %2, double* %3, double* %4, double* %5, double* %6) #0 !dbg !177 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [8000 x double]*, align 8
  %11 = alloca double*, align 8
  %12 = alloca double*, align 8
  %13 = alloca double*, align 8
  %14 = alloca double*, align 8
  %15 = alloca %struct.ident_t, align 8
  %16 = alloca i32, align 4
  %17 = alloca double*, align 8
  %18 = alloca %struct.ident_t, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !179, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata i32 %1, metadata !180, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata [8000 x double]* %2, metadata !181, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double* %3, metadata !182, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double* %4, metadata !183, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double* %5, metadata !184, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata double* %6, metadata !185, metadata !DIExpression()), !dbg !186
  tail call void (...) @polybench_timer_start() #8, !dbg !187
  %19 = bitcast i32* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19)
  %20 = bitcast double** %17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %20)
  %21 = bitcast %struct.ident_t* %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %21)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %21, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @3 to i8*), i64 16, i1 false) #8
  call void @llvm.dbg.value(metadata i32 %1, metadata !37, metadata !DIExpression()) #8, !dbg !188
  store i32 %1, i32* %16, align 4, !tbaa !40
  call void @llvm.dbg.value(metadata double* %3, metadata !38, metadata !DIExpression()) #8, !dbg !188
  store double* %3, double** %17, align 8, !tbaa !44
  %22 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %18, i64 0, i32 4, !dbg !190
  store i8* getelementptr inbounds ([91 x i8], [91 x i8]* @1, i64 0, i64 0), i8** %22, align 8, !dbg !190, !tbaa !47
  call void @llvm.dbg.value(metadata i32* %16, metadata !37, metadata !DIExpression(DW_OP_deref)) #8, !dbg !188
  call void @llvm.dbg.value(metadata double** %17, metadata !38, metadata !DIExpression(DW_OP_deref)) #8, !dbg !188
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %18, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, double**)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %16, double** nonnull %17) #8, !dbg !190
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19), !dbg !191
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %20), !dbg !191
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %21), !dbg !191
  call void (...) @polybench_timer_stop() #8, !dbg !192
  call void (...) @polybench_timer_print() #8, !dbg !193
  call void (...) @polybench_timer_start() #8, !dbg !194
  %23 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %23)
  %24 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24)
  %25 = bitcast [8000 x double]** %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %25)
  %26 = bitcast double** %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26)
  %27 = bitcast double** %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %27)
  %28 = bitcast double** %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %28)
  %29 = bitcast double** %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %29)
  %30 = bitcast %struct.ident_t* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %30)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %30, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @3 to i8*), i64 16, i1 false) #8
  call void @llvm.dbg.value(metadata i32 %0, metadata !95, metadata !DIExpression()) #8, !dbg !195
  store i32 %0, i32* %8, align 4, !tbaa !40
  call void @llvm.dbg.value(metadata i32 %1, metadata !96, metadata !DIExpression()) #8, !dbg !195
  store i32 %1, i32* %9, align 4, !tbaa !40
  call void @llvm.dbg.value(metadata [8000 x double]* %2, metadata !97, metadata !DIExpression()) #8, !dbg !195
  store [8000 x double]* %2, [8000 x double]** %10, align 8, !tbaa !44
  call void @llvm.dbg.value(metadata double* %6, metadata !98, metadata !DIExpression()) #8, !dbg !195
  store double* %6, double** %11, align 8, !tbaa !44
  call void @llvm.dbg.value(metadata double* %5, metadata !99, metadata !DIExpression()) #8, !dbg !195
  store double* %5, double** %12, align 8, !tbaa !44
  call void @llvm.dbg.value(metadata double* %4, metadata !100, metadata !DIExpression()) #8, !dbg !195
  store double* %4, double** %13, align 8, !tbaa !44
  call void @llvm.dbg.value(metadata double* %3, metadata !101, metadata !DIExpression()) #8, !dbg !195
  store double* %3, double** %14, align 8, !tbaa !44
  %31 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %15, i64 0, i32 4, !dbg !197
  store i8* getelementptr inbounds ([91 x i8], [91 x i8]* @4, i64 0, i64 0), i8** %31, align 8, !dbg !197, !tbaa !47
  call void @llvm.dbg.value(metadata i32* %8, metadata !95, metadata !DIExpression(DW_OP_deref)) #8, !dbg !195
  call void @llvm.dbg.value(metadata i32* %9, metadata !96, metadata !DIExpression(DW_OP_deref)) #8, !dbg !195
  call void @llvm.dbg.value(metadata [8000 x double]** %10, metadata !97, metadata !DIExpression(DW_OP_deref)) #8, !dbg !195
  call void @llvm.dbg.value(metadata double** %11, metadata !98, metadata !DIExpression(DW_OP_deref)) #8, !dbg !195
  call void @llvm.dbg.value(metadata double** %12, metadata !99, metadata !DIExpression(DW_OP_deref)) #8, !dbg !195
  call void @llvm.dbg.value(metadata double** %13, metadata !100, metadata !DIExpression(DW_OP_deref)) #8, !dbg !195
  call void @llvm.dbg.value(metadata double** %14, metadata !101, metadata !DIExpression(DW_OP_deref)) #8, !dbg !195
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %15, i32 7, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, double**, i32*, double**, double**, [8000 x double]**, double**)* @.omp_outlined..2 to void (i32*, i32*, ...)*), i32* nonnull %8, double** nonnull %13, i32* nonnull %9, double** nonnull %14, double** nonnull %11, [8000 x double]** nonnull %10, double** nonnull %12) #8, !dbg !197
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %23), !dbg !198
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24), !dbg !198
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %25), !dbg !198
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26), !dbg !198
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %27), !dbg !198
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %28), !dbg !198
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %29), !dbg !198
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %30), !dbg !198
  call void (...) @polybench_timer_stop() #8, !dbg !199
  call void (...) @polybench_timer_print() #8, !dbg !200
  ret void, !dbg !201
}

declare !dbg !4 dso_local void @polybench_timer_start(...) local_unnamed_addr #3

declare !dbg !8 dso_local void @polybench_timer_stop(...) local_unnamed_addr #3

declare !dbg !9 dso_local void @polybench_timer_print(...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %0, i8** nocapture readonly %1) local_unnamed_addr #0 !dbg !202 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [8000 x double]*, align 8
  %6 = alloca double*, align 8
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca double*, align 8
  %10 = alloca %struct.ident_t, align 8
  %11 = alloca i32, align 4
  %12 = alloca double*, align 8
  %13 = alloca %struct.ident_t, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !209, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.value(metadata i8** %1, metadata !210, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.value(metadata i32 8000, metadata !211, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.value(metadata i32 8000, metadata !212, metadata !DIExpression()), !dbg !218
  %14 = tail call i8* @polybench_alloc_data(i64 64000000, i32 8) #8, !dbg !219
  call void @llvm.dbg.value(metadata i8* %14, metadata !213, metadata !DIExpression()), !dbg !218
  %15 = tail call i8* @polybench_alloc_data(i64 8000, i32 8) #8, !dbg !220
  call void @llvm.dbg.value(metadata i8* %15, metadata !214, metadata !DIExpression()), !dbg !218
  %16 = tail call i8* @polybench_alloc_data(i64 8000, i32 8) #8, !dbg !221
  call void @llvm.dbg.value(metadata i8* %16, metadata !215, metadata !DIExpression()), !dbg !218
  %17 = tail call i8* @polybench_alloc_data(i64 8000, i32 8) #8, !dbg !222
  call void @llvm.dbg.value(metadata i8* %17, metadata !216, metadata !DIExpression()), !dbg !218
  %18 = tail call i8* @polybench_alloc_data(i64 8000, i32 8) #8, !dbg !223
  call void @llvm.dbg.value(metadata i8* %18, metadata !217, metadata !DIExpression()), !dbg !218
  %19 = bitcast i8* %14 to [8000 x double]*, !dbg !224
  %20 = bitcast i8* %17 to double*, !dbg !225
  call void @llvm.dbg.value(metadata i32 8000, metadata !226, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata i32 8000, metadata !231, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata [8000 x double]* %19, metadata !232, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata double* %50, metadata !233, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata double* %20, metadata !234, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata i32 0, metadata !235, metadata !DIExpression()), !dbg !237
  br label %21, !dbg !239

21:                                               ; preds = %21, %2
  %22 = phi i64 [ 0, %2 ], [ %47, %21 ]
  call void @llvm.dbg.value(metadata i64 %22, metadata !235, metadata !DIExpression()), !dbg !237
  %23 = trunc i64 %22 to i32, !dbg !241
  %24 = sitofp i32 %23 to double, !dbg !241
  %25 = fmul double %24, 0x400921FB54442D18, !dbg !243
  %26 = getelementptr inbounds double, double* %20, i64 %22, !dbg !244
  store double %25, double* %26, align 8, !dbg !245, !tbaa !158
  %27 = add nuw nsw i64 %22, 1, !dbg !246
  call void @llvm.dbg.value(metadata i64 %27, metadata !235, metadata !DIExpression()), !dbg !237
  %28 = trunc i64 %27 to i32, !dbg !241
  %29 = sitofp i32 %28 to double, !dbg !241
  %30 = fmul double %29, 0x400921FB54442D18, !dbg !243
  %31 = getelementptr inbounds double, double* %20, i64 %27, !dbg !244
  store double %30, double* %31, align 8, !dbg !245, !tbaa !158
  %32 = add nuw nsw i64 %22, 2, !dbg !246
  call void @llvm.dbg.value(metadata i64 %32, metadata !235, metadata !DIExpression()), !dbg !237
  %33 = trunc i64 %32 to i32, !dbg !241
  %34 = sitofp i32 %33 to double, !dbg !241
  %35 = fmul double %34, 0x400921FB54442D18, !dbg !243
  %36 = getelementptr inbounds double, double* %20, i64 %32, !dbg !244
  store double %35, double* %36, align 8, !dbg !245, !tbaa !158
  %37 = add nuw nsw i64 %22, 3, !dbg !246
  call void @llvm.dbg.value(metadata i64 %37, metadata !235, metadata !DIExpression()), !dbg !237
  %38 = trunc i64 %37 to i32, !dbg !241
  %39 = sitofp i32 %38 to double, !dbg !241
  %40 = fmul double %39, 0x400921FB54442D18, !dbg !243
  %41 = getelementptr inbounds double, double* %20, i64 %37, !dbg !244
  store double %40, double* %41, align 8, !dbg !245, !tbaa !158
  %42 = add nuw nsw i64 %22, 4, !dbg !246
  call void @llvm.dbg.value(metadata i64 %42, metadata !235, metadata !DIExpression()), !dbg !237
  %43 = trunc i64 %42 to i32, !dbg !241
  %44 = sitofp i32 %43 to double, !dbg !241
  %45 = fmul double %44, 0x400921FB54442D18, !dbg !243
  %46 = getelementptr inbounds double, double* %20, i64 %42, !dbg !244
  store double %45, double* %46, align 8, !dbg !245, !tbaa !158
  %47 = add nuw nsw i64 %22, 5, !dbg !246
  call void @llvm.dbg.value(metadata i64 %47, metadata !235, metadata !DIExpression()), !dbg !237
  %48 = icmp eq i64 %47, 8000, !dbg !247
  br i1 %48, label %49, label %21, !dbg !239, !llvm.loop !248

49:                                               ; preds = %21
  %50 = bitcast i8* %18 to double*, !dbg !250
  br label %51, !dbg !251

51:                                               ; preds = %49, %72
  %52 = phi i64 [ %73, %72 ], [ 0, %49 ]
  call void @llvm.dbg.value(metadata i64 %52, metadata !235, metadata !DIExpression()), !dbg !237
  %53 = trunc i64 %52 to i32, !dbg !253
  %54 = sitofp i32 %53 to double, !dbg !253
  %55 = fmul double %54, 0x400921FB54442D18, !dbg !256
  %56 = getelementptr inbounds double, double* %50, i64 %52, !dbg !257
  store double %55, double* %56, align 8, !dbg !258, !tbaa !158
  call void @llvm.dbg.value(metadata i32 0, metadata !236, metadata !DIExpression()), !dbg !237
  br label %57, !dbg !259

57:                                               ; preds = %57, %51
  %58 = phi i64 [ 0, %51 ], [ %65, %57 ]
  call void @llvm.dbg.value(metadata i64 %58, metadata !236, metadata !DIExpression()), !dbg !237
  %59 = or i64 %58, 1, !dbg !261
  %60 = trunc i64 %59 to i32, !dbg !263
  %61 = sitofp i32 %60 to double, !dbg !263
  %62 = fmul double %54, %61, !dbg !264
  %63 = fdiv double %62, 8.000000e+03, !dbg !265
  %64 = getelementptr inbounds [8000 x double], [8000 x double]* %19, i64 %52, i64 %58, !dbg !266
  store double %63, double* %64, align 8, !dbg !267, !tbaa !158
  call void @llvm.dbg.value(metadata i64 %59, metadata !236, metadata !DIExpression()), !dbg !237
  %65 = add nuw nsw i64 %58, 2, !dbg !261
  %66 = trunc i64 %65 to i32, !dbg !263
  %67 = sitofp i32 %66 to double, !dbg !263
  %68 = fmul double %54, %67, !dbg !264
  %69 = fdiv double %68, 8.000000e+03, !dbg !265
  %70 = getelementptr inbounds [8000 x double], [8000 x double]* %19, i64 %52, i64 %59, !dbg !266
  store double %69, double* %70, align 8, !dbg !267, !tbaa !158
  call void @llvm.dbg.value(metadata i64 %65, metadata !236, metadata !DIExpression()), !dbg !237
  %71 = icmp eq i64 %65, 8000, !dbg !268
  br i1 %71, label %72, label %57, !dbg !259, !llvm.loop !269

72:                                               ; preds = %57
  %73 = add nuw nsw i64 %52, 1, !dbg !271
  call void @llvm.dbg.value(metadata i64 %73, metadata !235, metadata !DIExpression()), !dbg !237
  %74 = icmp eq i64 %73, 8000, !dbg !272
  br i1 %74, label %75, label %51, !dbg !251, !llvm.loop !273

75:                                               ; preds = %72
  %76 = bitcast i8* %15 to double*, !dbg !275
  %77 = bitcast i8* %16 to double*, !dbg !276
  call void @llvm.dbg.value(metadata i32 8000, metadata !179, metadata !DIExpression()) #8, !dbg !277
  call void @llvm.dbg.value(metadata i32 8000, metadata !180, metadata !DIExpression()) #8, !dbg !277
  call void @llvm.dbg.value(metadata [8000 x double]* %19, metadata !181, metadata !DIExpression()) #8, !dbg !277
  call void @llvm.dbg.value(metadata double* %76, metadata !182, metadata !DIExpression()) #8, !dbg !277
  call void @llvm.dbg.value(metadata double* %77, metadata !183, metadata !DIExpression()) #8, !dbg !277
  call void @llvm.dbg.value(metadata double* %20, metadata !184, metadata !DIExpression()) #8, !dbg !277
  call void @llvm.dbg.value(metadata double* %50, metadata !185, metadata !DIExpression()) #8, !dbg !277
  tail call void (...) @polybench_timer_start() #8, !dbg !279
  %78 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %78) #8
  %79 = bitcast double** %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %79) #8
  %80 = bitcast %struct.ident_t* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %80) #8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %80, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @3 to i8*), i64 16, i1 false) #8
  call void @llvm.dbg.value(metadata i32 8000, metadata !37, metadata !DIExpression()) #8, !dbg !280
  store i32 8000, i32* %11, align 4, !tbaa !40
  call void @llvm.dbg.value(metadata double* %76, metadata !38, metadata !DIExpression()) #8, !dbg !280
  %81 = bitcast double** %12 to i8**
  store i8* %15, i8** %81, align 8, !tbaa !44
  %82 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %13, i64 0, i32 4, !dbg !282
  store i8* getelementptr inbounds ([91 x i8], [91 x i8]* @1, i64 0, i64 0), i8** %82, align 8, !dbg !282, !tbaa !47
  call void @llvm.dbg.value(metadata i32* %11, metadata !37, metadata !DIExpression(DW_OP_deref)) #8, !dbg !280
  call void @llvm.dbg.value(metadata double** %12, metadata !38, metadata !DIExpression(DW_OP_deref)) #8, !dbg !280
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %13, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, double**)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %11, double** nonnull %12) #8, !dbg !282
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %78) #8, !dbg !283
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %79) #8, !dbg !283
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %80) #8, !dbg !283
  call void (...) @polybench_timer_stop() #8, !dbg !284
  call void (...) @polybench_timer_print() #8, !dbg !285
  call void (...) @polybench_timer_start() #8, !dbg !286
  %83 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %83) #8
  %84 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %84) #8
  %85 = bitcast [8000 x double]** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %85) #8
  %86 = bitcast double** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %86) #8
  %87 = bitcast double** %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %87) #8
  %88 = bitcast double** %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %88) #8
  %89 = bitcast double** %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %89) #8
  %90 = bitcast %struct.ident_t* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %90) #8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %90, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @3 to i8*), i64 16, i1 false) #8
  call void @llvm.dbg.value(metadata i32 8000, metadata !95, metadata !DIExpression()) #8, !dbg !287
  store i32 8000, i32* %3, align 4, !tbaa !40
  call void @llvm.dbg.value(metadata i32 8000, metadata !96, metadata !DIExpression()) #8, !dbg !287
  store i32 8000, i32* %4, align 4, !tbaa !40
  call void @llvm.dbg.value(metadata [8000 x double]* %19, metadata !97, metadata !DIExpression()) #8, !dbg !287
  %91 = bitcast [8000 x double]** %5 to i8**
  store i8* %14, i8** %91, align 8, !tbaa !44
  call void @llvm.dbg.value(metadata double* %50, metadata !98, metadata !DIExpression()) #8, !dbg !287
  %92 = bitcast double** %6 to i8**
  store i8* %18, i8** %92, align 8, !tbaa !44
  call void @llvm.dbg.value(metadata double* %20, metadata !99, metadata !DIExpression()) #8, !dbg !287
  %93 = bitcast double** %7 to i8**
  store i8* %17, i8** %93, align 8, !tbaa !44
  call void @llvm.dbg.value(metadata double* %77, metadata !100, metadata !DIExpression()) #8, !dbg !287
  %94 = bitcast double** %8 to i8**
  store i8* %16, i8** %94, align 8, !tbaa !44
  call void @llvm.dbg.value(metadata double* %76, metadata !101, metadata !DIExpression()) #8, !dbg !287
  %95 = bitcast double** %9 to i8**
  store i8* %15, i8** %95, align 8, !tbaa !44
  %96 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %10, i64 0, i32 4, !dbg !289
  store i8* getelementptr inbounds ([91 x i8], [91 x i8]* @4, i64 0, i64 0), i8** %96, align 8, !dbg !289, !tbaa !47
  call void @llvm.dbg.value(metadata i32* %3, metadata !95, metadata !DIExpression(DW_OP_deref)) #8, !dbg !287
  call void @llvm.dbg.value(metadata i32* %4, metadata !96, metadata !DIExpression(DW_OP_deref)) #8, !dbg !287
  call void @llvm.dbg.value(metadata [8000 x double]** %5, metadata !97, metadata !DIExpression(DW_OP_deref)) #8, !dbg !287
  call void @llvm.dbg.value(metadata double** %6, metadata !98, metadata !DIExpression(DW_OP_deref)) #8, !dbg !287
  call void @llvm.dbg.value(metadata double** %7, metadata !99, metadata !DIExpression(DW_OP_deref)) #8, !dbg !287
  call void @llvm.dbg.value(metadata double** %8, metadata !100, metadata !DIExpression(DW_OP_deref)) #8, !dbg !287
  call void @llvm.dbg.value(metadata double** %9, metadata !101, metadata !DIExpression(DW_OP_deref)) #8, !dbg !287
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %10, i32 7, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, double**, i32*, double**, double**, [8000 x double]**, double**)* @.omp_outlined..2 to void (i32*, i32*, ...)*), i32* nonnull %3, double** nonnull %8, i32* nonnull %4, double** nonnull %9, double** nonnull %6, [8000 x double]** nonnull %5, double** nonnull %7) #8, !dbg !289
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %83) #8, !dbg !290
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %84) #8, !dbg !290
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %85) #8, !dbg !290
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %86) #8, !dbg !290
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %87) #8, !dbg !290
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %88) #8, !dbg !290
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %89) #8, !dbg !290
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %90) #8, !dbg !290
  call void (...) @polybench_timer_stop() #8, !dbg !291
  call void (...) @polybench_timer_print() #8, !dbg !292
  %97 = icmp sgt i32 %0, 42, !dbg !293
  br i1 %97, label %98, label %141, !dbg !293

98:                                               ; preds = %75
  %99 = load i8*, i8** %1, align 8, !dbg !293, !tbaa !44
  %100 = load i8, i8* %99, align 1, !dbg !293
  %101 = icmp eq i8 %100, 0, !dbg !293
  br i1 %101, label %104, label %141, !dbg !295

102:                                              ; preds = %117
  call void @llvm.dbg.value(metadata i32 0, metadata !296, metadata !DIExpression()) #8, !dbg !305
  %103 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !305, !tbaa !44
  br label %121, !dbg !307

104:                                              ; preds = %98, %117
  %105 = phi i64 [ %118, %117 ], [ 0, %98 ]
  %106 = phi i32 [ %119, %117 ], [ 0, %98 ]
  call void @llvm.dbg.value(metadata i64 %105, metadata !296, metadata !DIExpression()) #8, !dbg !305
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !309, !tbaa !44
  %108 = getelementptr inbounds double, double* %76, i64 %105, !dbg !313
  %109 = load double, double* %108, align 8, !dbg !313, !tbaa !158
  %110 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %107, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), double %109) #9, !dbg !314
  %111 = trunc i32 %106 to i16, !dbg !315
  %112 = urem i16 %111, 20, !dbg !315
  %113 = icmp eq i16 %112, 0, !dbg !317
  br i1 %113, label %114, label %117, !dbg !318

114:                                              ; preds = %104
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !319, !tbaa !44
  %116 = call i32 @fputc(i32 10, %struct._IO_FILE* %115) #9, !dbg !320
  br label %117, !dbg !320

117:                                              ; preds = %114, %104
  %118 = add nuw nsw i64 %105, 1, !dbg !321
  %119 = add nuw nsw i32 %106, 1, !dbg !321
  call void @llvm.dbg.value(metadata i64 %118, metadata !296, metadata !DIExpression()) #8, !dbg !305
  %120 = icmp eq i64 %118, 8000, !dbg !322
  br i1 %120, label %102, label %104, !dbg !323, !llvm.loop !324

121:                                              ; preds = %134, %102
  %122 = phi i64 [ 0, %102 ], [ %135, %134 ]
  %123 = phi %struct._IO_FILE* [ %103, %102 ], [ %137, %134 ]
  %124 = phi i32 [ 0, %102 ], [ %136, %134 ]
  call void @llvm.dbg.value(metadata i64 %122, metadata !296, metadata !DIExpression()) #8, !dbg !305
  %125 = getelementptr inbounds double, double* %77, i64 %122, !dbg !326
  %126 = load double, double* %125, align 8, !dbg !326, !tbaa !158
  %127 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %123, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), double %126) #9, !dbg !329
  %128 = trunc i32 %124 to i16, !dbg !330
  %129 = urem i16 %128, 20, !dbg !330
  %130 = icmp eq i16 %129, 0, !dbg !332
  br i1 %130, label %131, label %134, !dbg !333

131:                                              ; preds = %121
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !334, !tbaa !44
  %133 = call i32 @fputc(i32 10, %struct._IO_FILE* %132) #9, !dbg !335
  br label %134, !dbg !335

134:                                              ; preds = %131, %121
  %135 = add nuw nsw i64 %122, 1, !dbg !336
  %136 = add nuw nsw i32 %124, 1, !dbg !336
  call void @llvm.dbg.value(metadata i64 %135, metadata !296, metadata !DIExpression()) #8, !dbg !305
  %137 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !305, !tbaa !44
  %138 = icmp eq i64 %135, 8000, !dbg !337
  br i1 %138, label %139, label %121, !dbg !307, !llvm.loop !338

139:                                              ; preds = %134
  %140 = call i32 @fputc(i32 10, %struct._IO_FILE* %137) #9, !dbg !340
  br label %141, !dbg !293

141:                                              ; preds = %98, %139, %75
  call void @free(i8* %14) #8, !dbg !341
  call void @free(i8* %15) #8, !dbg !342
  call void @free(i8* %16) #8, !dbg !343
  call void @free(i8* %17) #8, !dbg !344
  call void @free(i8* %18) #8, !dbg !345
  ret i32 0, !dbg !346
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

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

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
!1 = !DIFile(filename: "../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/bicg/bicg.c", directory: "/WAVE/users/unix/klor/ycho_lab/kimsong_lor/autotuning_tools/scripts")
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
!32 = distinct !DISubprogram(name: "kernel_p1", scope: !1, file: !1, line: 64, type: !33, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !36)
!33 = !DISubroutineType(types: !34)
!34 = !{null, !20, !35}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!36 = !{!37, !38}
!37 = !DILocalVariable(name: "ny", arg: 1, scope: !32, file: !1, line: 64, type: !20)
!38 = !DILocalVariable(name: "s", arg: 2, scope: !32, file: !1, line: 64, type: !35)
!39 = !DILocation(line: 0, scope: !32)
!40 = !{!41, !41, i64 0}
!41 = !{!"int", !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C/C++ TBAA"}
!44 = !{!45, !45, i64 0}
!45 = !{!"any pointer", !42, i64 0}
!46 = !DILocation(line: 66, column: 1, scope: !32)
!47 = !{!48, !45, i64 16}
!48 = !{!"ident_t", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !45, i64 16}
!49 = !DILocation(line: 69, column: 1, scope: !32)
!50 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 67, type: !51, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !59)
!51 = !DISubroutineType(types: !52)
!52 = !{null, !53, !53, !57, !58}
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!57 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !20, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !35, size: 64)
!59 = !{!60, !61, !62, !63}
!60 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !50, type: !53, flags: DIFlagArtificial)
!61 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !50, type: !53, flags: DIFlagArtificial)
!62 = !DILocalVariable(name: "ny", arg: 3, scope: !50, type: !57, flags: DIFlagArtificial)
!63 = !DILocalVariable(name: "s", arg: 4, scope: !50, type: !58, flags: DIFlagArtificial)
!64 = !DILocation(line: 0, scope: !50)
!65 = !DILocation(line: 67, column: 3, scope: !50)
!66 = !{!67}
!67 = distinct !{!67, !68, !".omp_outlined._debug__: argument 0"}
!68 = distinct !{!68, !".omp_outlined._debug__"}
!69 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !70, type: !53, flags: DIFlagArtificial)
!70 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 67, type: !51, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !71)
!71 = !{!69, !72, !73, !74, !75, !76, !76, !77, !78, !79, !80, !81, !77}
!72 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !70, type: !53, flags: DIFlagArtificial)
!73 = !DILocalVariable(name: "ny", arg: 3, scope: !70, file: !1, line: 64, type: !57)
!74 = !DILocalVariable(name: "s", arg: 4, scope: !70, file: !1, line: 64, type: !58)
!75 = !DILocalVariable(name: ".omp.iv", scope: !70, type: !20, flags: DIFlagArtificial)
!76 = !DILocalVariable(name: ".capture_expr.", scope: !70, type: !20, flags: DIFlagArtificial)
!77 = !DILocalVariable(name: "i", scope: !70, type: !20, flags: DIFlagArtificial)
!78 = !DILocalVariable(name: ".omp.lb", scope: !70, type: !20, flags: DIFlagArtificial)
!79 = !DILocalVariable(name: ".omp.ub", scope: !70, type: !20, flags: DIFlagArtificial)
!80 = !DILocalVariable(name: ".omp.stride", scope: !70, type: !20, flags: DIFlagArtificial)
!81 = !DILocalVariable(name: ".omp.is_last", scope: !70, type: !20, flags: DIFlagArtificial)
!82 = !DILocation(line: 0, scope: !70, inlinedAt: !83)
!83 = distinct !DILocation(line: 67, column: 3, scope: !50)
!84 = !DILocation(line: 67, column: 3, scope: !70, inlinedAt: !83)
!85 = !DILocation(line: 67, column: 8, scope: !70, inlinedAt: !83)
!86 = !DILocation(line: 68, column: 10, scope: !70, inlinedAt: !83)
!87 = !DILocation(line: 66, column: 1, scope: !70, inlinedAt: !83)
!88 = !DILocation(line: 68, column: 12, scope: !70, inlinedAt: !83)
!89 = !{!90}
!90 = !{i64 2, i64 -1, i64 -1, i1 true}
!91 = distinct !DISubprogram(name: "kernel_p2", scope: !1, file: !1, line: 71, type: !92, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !94)
!92 = !DISubroutineType(types: !93)
!93 = !{null, !20, !20, !21, !35, !35, !35, !35}
!94 = !{!95, !96, !97, !98, !99, !100, !101}
!95 = !DILocalVariable(name: "nx", arg: 1, scope: !91, file: !1, line: 71, type: !20)
!96 = !DILocalVariable(name: "ny", arg: 2, scope: !91, file: !1, line: 71, type: !20)
!97 = !DILocalVariable(name: "A", arg: 3, scope: !91, file: !1, line: 72, type: !21)
!98 = !DILocalVariable(name: "r", arg: 4, scope: !91, file: !1, line: 73, type: !35)
!99 = !DILocalVariable(name: "p", arg: 5, scope: !91, file: !1, line: 74, type: !35)
!100 = !DILocalVariable(name: "q", arg: 6, scope: !91, file: !1, line: 75, type: !35)
!101 = !DILocalVariable(name: "s", arg: 7, scope: !91, file: !1, line: 76, type: !35)
!102 = !DILocation(line: 0, scope: !91)
!103 = !DILocation(line: 78, column: 1, scope: !91)
!104 = !DILocation(line: 88, column: 1, scope: !91)
!105 = distinct !DISubprogram(name: ".omp_outlined..2", scope: !1, file: !1, line: 79, type: !106, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !109)
!106 = !DISubroutineType(types: !107)
!107 = !{null, !53, !53, !57, !58, !57, !58, !58, !108, !58}
!108 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !21, size: 64)
!109 = !{!110, !111, !112, !113, !114, !115, !116, !117, !118}
!110 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !105, type: !53, flags: DIFlagArtificial)
!111 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !105, type: !53, flags: DIFlagArtificial)
!112 = !DILocalVariable(name: "nx", arg: 3, scope: !105, type: !57, flags: DIFlagArtificial)
!113 = !DILocalVariable(name: "q", arg: 4, scope: !105, type: !58, flags: DIFlagArtificial)
!114 = !DILocalVariable(name: "ny", arg: 5, scope: !105, type: !57, flags: DIFlagArtificial)
!115 = !DILocalVariable(name: "s", arg: 6, scope: !105, type: !58, flags: DIFlagArtificial)
!116 = !DILocalVariable(name: "r", arg: 7, scope: !105, type: !58, flags: DIFlagArtificial)
!117 = !DILocalVariable(name: "A", arg: 8, scope: !105, type: !108, flags: DIFlagArtificial)
!118 = !DILocalVariable(name: "p", arg: 9, scope: !105, type: !58, flags: DIFlagArtificial)
!119 = !DILocation(line: 0, scope: !105)
!120 = !DILocation(line: 79, column: 3, scope: !105)
!121 = !{!122}
!122 = distinct !{!122, !123, !".omp_outlined._debug__.1: argument 0"}
!123 = distinct !{!123, !".omp_outlined._debug__.1"}
!124 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !125, type: !53, flags: DIFlagArtificial)
!125 = distinct !DISubprogram(name: ".omp_outlined._debug__.1", scope: !1, file: !1, line: 79, type: !106, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !126)
!126 = !{!124, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !136, !137, !138, !139, !140, !141, !137, !142}
!127 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !125, type: !53, flags: DIFlagArtificial)
!128 = !DILocalVariable(name: "nx", arg: 3, scope: !125, file: !1, line: 71, type: !57)
!129 = !DILocalVariable(name: "q", arg: 4, scope: !125, file: !1, line: 75, type: !58)
!130 = !DILocalVariable(name: "ny", arg: 5, scope: !125, file: !1, line: 71, type: !57)
!131 = !DILocalVariable(name: "s", arg: 6, scope: !125, file: !1, line: 76, type: !58)
!132 = !DILocalVariable(name: "r", arg: 7, scope: !125, file: !1, line: 73, type: !58)
!133 = !DILocalVariable(name: "A", arg: 8, scope: !125, file: !1, line: 72, type: !108)
!134 = !DILocalVariable(name: "p", arg: 9, scope: !125, file: !1, line: 74, type: !58)
!135 = !DILocalVariable(name: ".omp.iv", scope: !125, type: !20, flags: DIFlagArtificial)
!136 = !DILocalVariable(name: ".capture_expr.", scope: !125, type: !20, flags: DIFlagArtificial)
!137 = !DILocalVariable(name: "i", scope: !125, type: !20, flags: DIFlagArtificial)
!138 = !DILocalVariable(name: ".omp.lb", scope: !125, type: !20, flags: DIFlagArtificial)
!139 = !DILocalVariable(name: ".omp.ub", scope: !125, type: !20, flags: DIFlagArtificial)
!140 = !DILocalVariable(name: ".omp.stride", scope: !125, type: !20, flags: DIFlagArtificial)
!141 = !DILocalVariable(name: ".omp.is_last", scope: !125, type: !20, flags: DIFlagArtificial)
!142 = !DILocalVariable(name: "j", scope: !143, file: !1, line: 82, type: !20)
!143 = distinct !DILexicalBlock(scope: !144, file: !1, line: 82, column: 5)
!144 = distinct !DILexicalBlock(scope: !125, file: !1, line: 80, column: 3)
!145 = !DILocation(line: 0, scope: !125, inlinedAt: !146)
!146 = distinct !DILocation(line: 79, column: 3, scope: !105)
!147 = !DILocation(line: 79, column: 3, scope: !125, inlinedAt: !146)
!148 = !DILocation(line: 79, column: 8, scope: !125, inlinedAt: !146)
!149 = !DILocation(line: 0, scope: !144, inlinedAt: !146)
!150 = !DILocation(line: 0, scope: !151, inlinedAt: !146)
!151 = distinct !DILexicalBlock(scope: !143, file: !1, line: 82, column: 5)
!152 = !DILocation(line: 0, scope: !153, inlinedAt: !146)
!153 = distinct !DILexicalBlock(scope: !151, file: !1, line: 83, column: 5)
!154 = !DILocation(line: 78, column: 1, scope: !125, inlinedAt: !146)
!155 = !DILocation(line: 81, column: 10, scope: !144, inlinedAt: !146)
!156 = !DILocation(line: 0, scope: !143, inlinedAt: !146)
!157 = !DILocation(line: 81, column: 5, scope: !144, inlinedAt: !146)
!158 = !{!159, !159, i64 0}
!159 = !{!"double", !42, i64 0}
!160 = !DILocation(line: 82, column: 5, scope: !143, inlinedAt: !146)
!161 = !DILocation(line: 84, column: 15, scope: !153, inlinedAt: !146)
!162 = !DILocation(line: 84, column: 22, scope: !153, inlinedAt: !146)
!163 = !DILocation(line: 84, column: 20, scope: !153, inlinedAt: !146)
!164 = !DILocation(line: 84, column: 7, scope: !153, inlinedAt: !146)
!165 = !DILocation(line: 84, column: 12, scope: !153, inlinedAt: !146)
!166 = !DILocation(line: 85, column: 15, scope: !153, inlinedAt: !146)
!167 = !DILocation(line: 85, column: 25, scope: !153, inlinedAt: !146)
!168 = !DILocation(line: 85, column: 23, scope: !153, inlinedAt: !146)
!169 = !DILocation(line: 85, column: 12, scope: !153, inlinedAt: !146)
!170 = !DILocation(line: 82, column: 30, scope: !151, inlinedAt: !146)
!171 = !DILocation(line: 82, column: 23, scope: !151, inlinedAt: !146)
!172 = distinct !{!172, !160, !173}
!173 = !DILocation(line: 86, column: 5, scope: !143, inlinedAt: !146)
!174 = distinct !{!174, !154, !175}
!175 = !DILocation(line: 78, column: 25, scope: !125, inlinedAt: !146)
!176 = !DILocation(line: 87, column: 3, scope: !125, inlinedAt: !146)
!177 = distinct !DISubprogram(name: "kernel_bicg", scope: !1, file: !1, line: 92, type: !92, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !178)
!178 = !{!179, !180, !181, !182, !183, !184, !185}
!179 = !DILocalVariable(name: "nx", arg: 1, scope: !177, file: !1, line: 92, type: !20)
!180 = !DILocalVariable(name: "ny", arg: 2, scope: !177, file: !1, line: 92, type: !20)
!181 = !DILocalVariable(name: "A", arg: 3, scope: !177, file: !1, line: 93, type: !21)
!182 = !DILocalVariable(name: "s", arg: 4, scope: !177, file: !1, line: 94, type: !35)
!183 = !DILocalVariable(name: "q", arg: 5, scope: !177, file: !1, line: 95, type: !35)
!184 = !DILocalVariable(name: "p", arg: 6, scope: !177, file: !1, line: 96, type: !35)
!185 = !DILocalVariable(name: "r", arg: 7, scope: !177, file: !1, line: 97, type: !35)
!186 = !DILocation(line: 0, scope: !177)
!187 = !DILocation(line: 100, column: 3, scope: !177)
!188 = !DILocation(line: 0, scope: !32, inlinedAt: !189)
!189 = distinct !DILocation(line: 101, column: 3, scope: !177)
!190 = !DILocation(line: 66, column: 1, scope: !32, inlinedAt: !189)
!191 = !DILocation(line: 69, column: 1, scope: !32, inlinedAt: !189)
!192 = !DILocation(line: 102, column: 3, scope: !177)
!193 = !DILocation(line: 103, column: 3, scope: !177)
!194 = !DILocation(line: 105, column: 3, scope: !177)
!195 = !DILocation(line: 0, scope: !91, inlinedAt: !196)
!196 = distinct !DILocation(line: 106, column: 3, scope: !177)
!197 = !DILocation(line: 78, column: 1, scope: !91, inlinedAt: !196)
!198 = !DILocation(line: 88, column: 1, scope: !91, inlinedAt: !196)
!199 = !DILocation(line: 107, column: 3, scope: !177)
!200 = !DILocation(line: 108, column: 3, scope: !177)
!201 = !DILocation(line: 110, column: 1, scope: !177)
!202 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 112, type: !203, scopeLine: 113, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !208)
!203 = !DISubroutineType(types: !204)
!204 = !{!20, !20, !205}
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!208 = !{!209, !210, !211, !212, !213, !214, !215, !216, !217}
!209 = !DILocalVariable(name: "argc", arg: 1, scope: !202, file: !1, line: 112, type: !20)
!210 = !DILocalVariable(name: "argv", arg: 2, scope: !202, file: !1, line: 112, type: !205)
!211 = !DILocalVariable(name: "nx", scope: !202, file: !1, line: 115, type: !20)
!212 = !DILocalVariable(name: "ny", scope: !202, file: !1, line: 116, type: !20)
!213 = !DILocalVariable(name: "A", scope: !202, file: !1, line: 119, type: !10)
!214 = !DILocalVariable(name: "s", scope: !202, file: !1, line: 120, type: !21)
!215 = !DILocalVariable(name: "q", scope: !202, file: !1, line: 121, type: !21)
!216 = !DILocalVariable(name: "p", scope: !202, file: !1, line: 122, type: !21)
!217 = !DILocalVariable(name: "r", scope: !202, file: !1, line: 123, type: !21)
!218 = !DILocation(line: 0, scope: !202)
!219 = !DILocation(line: 119, column: 3, scope: !202)
!220 = !DILocation(line: 120, column: 3, scope: !202)
!221 = !DILocation(line: 121, column: 3, scope: !202)
!222 = !DILocation(line: 122, column: 3, scope: !202)
!223 = !DILocation(line: 123, column: 3, scope: !202)
!224 = !DILocation(line: 127, column: 14, scope: !202)
!225 = !DILocation(line: 129, column: 14, scope: !202)
!226 = !DILocalVariable(name: "nx", arg: 1, scope: !227, file: !1, line: 23, type: !20)
!227 = distinct !DISubprogram(name: "init_array", scope: !1, file: !1, line: 23, type: !228, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !230)
!228 = !DISubroutineType(types: !229)
!229 = !{null, !20, !20, !21, !35, !35}
!230 = !{!226, !231, !232, !233, !234, !235, !236}
!231 = !DILocalVariable(name: "ny", arg: 2, scope: !227, file: !1, line: 23, type: !20)
!232 = !DILocalVariable(name: "A", arg: 3, scope: !227, file: !1, line: 24, type: !21)
!233 = !DILocalVariable(name: "r", arg: 4, scope: !227, file: !1, line: 25, type: !35)
!234 = !DILocalVariable(name: "p", arg: 5, scope: !227, file: !1, line: 26, type: !35)
!235 = !DILocalVariable(name: "i", scope: !227, file: !1, line: 28, type: !20)
!236 = !DILocalVariable(name: "j", scope: !227, file: !1, line: 28, type: !20)
!237 = !DILocation(line: 0, scope: !227, inlinedAt: !238)
!238 = distinct !DILocation(line: 126, column: 3, scope: !202)
!239 = !DILocation(line: 30, column: 3, scope: !240, inlinedAt: !238)
!240 = distinct !DILexicalBlock(scope: !227, file: !1, line: 30, column: 3)
!241 = !DILocation(line: 31, column: 12, scope: !242, inlinedAt: !238)
!242 = distinct !DILexicalBlock(scope: !240, file: !1, line: 30, column: 3)
!243 = !DILocation(line: 31, column: 14, scope: !242, inlinedAt: !238)
!244 = !DILocation(line: 31, column: 5, scope: !242, inlinedAt: !238)
!245 = !DILocation(line: 31, column: 10, scope: !242, inlinedAt: !238)
!246 = !DILocation(line: 30, column: 24, scope: !242, inlinedAt: !238)
!247 = !DILocation(line: 30, column: 17, scope: !242, inlinedAt: !238)
!248 = distinct !{!248, !239, !249}
!249 = !DILocation(line: 31, column: 16, scope: !240, inlinedAt: !238)
!250 = !DILocation(line: 128, column: 14, scope: !202)
!251 = !DILocation(line: 32, column: 3, scope: !252, inlinedAt: !238)
!252 = distinct !DILexicalBlock(scope: !227, file: !1, line: 32, column: 3)
!253 = !DILocation(line: 34, column: 12, scope: !254, inlinedAt: !238)
!254 = distinct !DILexicalBlock(scope: !255, file: !1, line: 33, column: 3)
!255 = distinct !DILexicalBlock(scope: !252, file: !1, line: 32, column: 3)
!256 = !DILocation(line: 34, column: 14, scope: !254, inlinedAt: !238)
!257 = !DILocation(line: 34, column: 5, scope: !254, inlinedAt: !238)
!258 = !DILocation(line: 34, column: 10, scope: !254, inlinedAt: !238)
!259 = !DILocation(line: 35, column: 5, scope: !260, inlinedAt: !238)
!260 = distinct !DILexicalBlock(scope: !254, file: !1, line: 35, column: 5)
!261 = !DILocation(line: 36, column: 36, scope: !262, inlinedAt: !238)
!262 = distinct !DILexicalBlock(scope: !260, file: !1, line: 35, column: 5)
!263 = !DILocation(line: 36, column: 33, scope: !262, inlinedAt: !238)
!264 = !DILocation(line: 36, column: 31, scope: !262, inlinedAt: !238)
!265 = !DILocation(line: 36, column: 42, scope: !262, inlinedAt: !238)
!266 = !DILocation(line: 36, column: 7, scope: !262, inlinedAt: !238)
!267 = !DILocation(line: 36, column: 15, scope: !262, inlinedAt: !238)
!268 = !DILocation(line: 35, column: 19, scope: !262, inlinedAt: !238)
!269 = distinct !{!269, !259, !270}
!270 = !DILocation(line: 36, column: 44, scope: !260, inlinedAt: !238)
!271 = !DILocation(line: 32, column: 24, scope: !255, inlinedAt: !238)
!272 = !DILocation(line: 32, column: 17, scope: !255, inlinedAt: !238)
!273 = distinct !{!273, !251, !274}
!274 = !DILocation(line: 37, column: 3, scope: !252, inlinedAt: !238)
!275 = !DILocation(line: 137, column: 15, scope: !202)
!276 = !DILocation(line: 138, column: 15, scope: !202)
!277 = !DILocation(line: 0, scope: !177, inlinedAt: !278)
!278 = distinct !DILocation(line: 135, column: 3, scope: !202)
!279 = !DILocation(line: 100, column: 3, scope: !177, inlinedAt: !278)
!280 = !DILocation(line: 0, scope: !32, inlinedAt: !281)
!281 = distinct !DILocation(line: 101, column: 3, scope: !177, inlinedAt: !278)
!282 = !DILocation(line: 66, column: 1, scope: !32, inlinedAt: !281)
!283 = !DILocation(line: 69, column: 1, scope: !32, inlinedAt: !281)
!284 = !DILocation(line: 102, column: 3, scope: !177, inlinedAt: !278)
!285 = !DILocation(line: 103, column: 3, scope: !177, inlinedAt: !278)
!286 = !DILocation(line: 105, column: 3, scope: !177, inlinedAt: !278)
!287 = !DILocation(line: 0, scope: !91, inlinedAt: !288)
!288 = distinct !DILocation(line: 106, column: 3, scope: !177, inlinedAt: !278)
!289 = !DILocation(line: 78, column: 1, scope: !91, inlinedAt: !288)
!290 = !DILocation(line: 88, column: 1, scope: !91, inlinedAt: !288)
!291 = !DILocation(line: 107, column: 3, scope: !177, inlinedAt: !278)
!292 = !DILocation(line: 108, column: 3, scope: !177, inlinedAt: !278)
!293 = !DILocation(line: 148, column: 3, scope: !294)
!294 = distinct !DILexicalBlock(scope: !202, file: !1, line: 148, column: 3)
!295 = !DILocation(line: 148, column: 3, scope: !202)
!296 = !DILocalVariable(name: "i", scope: !297, file: !1, line: 47, type: !20)
!297 = distinct !DISubprogram(name: "print_array", scope: !1, file: !1, line: 42, type: !298, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !300)
!298 = !DISubroutineType(types: !299)
!299 = !{null, !20, !20, !35, !35}
!300 = !{!301, !302, !303, !304, !296}
!301 = !DILocalVariable(name: "nx", arg: 1, scope: !297, file: !1, line: 42, type: !20)
!302 = !DILocalVariable(name: "ny", arg: 2, scope: !297, file: !1, line: 42, type: !20)
!303 = !DILocalVariable(name: "s", arg: 3, scope: !297, file: !1, line: 43, type: !35)
!304 = !DILocalVariable(name: "q", arg: 4, scope: !297, file: !1, line: 44, type: !35)
!305 = !DILocation(line: 0, scope: !297, inlinedAt: !306)
!306 = distinct !DILocation(line: 148, column: 3, scope: !294)
!307 = !DILocation(line: 55, column: 3, scope: !308, inlinedAt: !306)
!308 = distinct !DILexicalBlock(scope: !297, file: !1, line: 55, column: 3)
!309 = !DILocation(line: 51, column: 13, scope: !310, inlinedAt: !306)
!310 = distinct !DILexicalBlock(scope: !311, file: !1, line: 50, column: 3)
!311 = distinct !DILexicalBlock(scope: !312, file: !1, line: 49, column: 3)
!312 = distinct !DILexicalBlock(scope: !297, file: !1, line: 49, column: 3)
!313 = !DILocation(line: 51, column: 43, scope: !310, inlinedAt: !306)
!314 = !DILocation(line: 51, column: 5, scope: !310, inlinedAt: !306)
!315 = !DILocation(line: 52, column: 11, scope: !316, inlinedAt: !306)
!316 = distinct !DILexicalBlock(scope: !310, file: !1, line: 52, column: 9)
!317 = !DILocation(line: 52, column: 16, scope: !316, inlinedAt: !306)
!318 = !DILocation(line: 52, column: 9, scope: !310, inlinedAt: !306)
!319 = !DILocation(line: 53, column: 15, scope: !316, inlinedAt: !306)
!320 = !DILocation(line: 53, column: 7, scope: !316, inlinedAt: !306)
!321 = !DILocation(line: 49, column: 24, scope: !311, inlinedAt: !306)
!322 = !DILocation(line: 49, column: 17, scope: !311, inlinedAt: !306)
!323 = !DILocation(line: 49, column: 3, scope: !312, inlinedAt: !306)
!324 = distinct !{!324, !323, !325}
!325 = !DILocation(line: 54, column: 3, scope: !312, inlinedAt: !306)
!326 = !DILocation(line: 57, column: 43, scope: !327, inlinedAt: !306)
!327 = distinct !DILexicalBlock(scope: !328, file: !1, line: 56, column: 3)
!328 = distinct !DILexicalBlock(scope: !308, file: !1, line: 55, column: 3)
!329 = !DILocation(line: 57, column: 5, scope: !327, inlinedAt: !306)
!330 = !DILocation(line: 58, column: 11, scope: !331, inlinedAt: !306)
!331 = distinct !DILexicalBlock(scope: !327, file: !1, line: 58, column: 9)
!332 = !DILocation(line: 58, column: 16, scope: !331, inlinedAt: !306)
!333 = !DILocation(line: 58, column: 9, scope: !327, inlinedAt: !306)
!334 = !DILocation(line: 59, column: 15, scope: !331, inlinedAt: !306)
!335 = !DILocation(line: 59, column: 7, scope: !331, inlinedAt: !306)
!336 = !DILocation(line: 55, column: 24, scope: !328, inlinedAt: !306)
!337 = !DILocation(line: 55, column: 17, scope: !328, inlinedAt: !306)
!338 = distinct !{!338, !307, !339}
!339 = !DILocation(line: 60, column: 3, scope: !308, inlinedAt: !306)
!340 = !DILocation(line: 61, column: 3, scope: !297, inlinedAt: !306)
!341 = !DILocation(line: 151, column: 3, scope: !202)
!342 = !DILocation(line: 152, column: 3, scope: !202)
!343 = !DILocation(line: 153, column: 3, scope: !202)
!344 = !DILocation(line: 154, column: 3, scope: !202)
!345 = !DILocation(line: 155, column: 3, scope: !202)
!346 = !DILocation(line: 157, column: 3, scope: !202)
