; ModuleID = '../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/atax/atax.c'
source_filename = "../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/atax/atax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [91 x i8] c";../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/atax/atax.c;kernel_p1;55;1;;\00", align 1
@2 = private unnamed_addr constant [92 x i8] c";../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/atax/atax.c;kernel_p1;55;25;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant [91 x i8] c";../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/atax/atax.c;kernel_p2;65;1;;\00", align 1
@5 = private unnamed_addr constant [92 x i8] c";../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/atax/atax.c;kernel_p2;65;25;;\00", align 1
@6 = private unnamed_addr constant [91 x i8] c";../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/atax/atax.c;kernel_p3;79;1;;\00", align 1
@7 = private unnamed_addr constant [92 x i8] c";../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/atax/atax.c;kernel_p3;79;25;;\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@llvm.used = appending global [4 x i8*] [i8* bitcast (void (i32, i32, [8000 x double]*, double*, double*, double*)* @kernel_atax to i8*), i8* bitcast (void (i32, double*)* @kernel_p1 to i8*), i8* bitcast (void (i32, i32, [8000 x double]*, double*, double*)* @kernel_p2 to i8*), i8* bitcast (void (i32, i32, [8000 x double]*, double*, double*)* @kernel_p3 to i8*)], section "llvm.metadata"

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
define internal void @kernel_p2(i32 %0, i32 %1, [8000 x double]* %2, double* %3, double* %4) #0 !dbg !91 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [8000 x double]*, align 8
  %9 = alloca double*, align 8
  %10 = alloca double*, align 8
  %11 = alloca %struct.ident_t, align 8
  %12 = bitcast %struct.ident_t* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %12, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @3 to i8*), i64 16, i1 false)
  call void @llvm.dbg.value(metadata i32 %0, metadata !95, metadata !DIExpression()), !dbg !100
  store i32 %0, i32* %6, align 4, !tbaa !40
  call void @llvm.dbg.value(metadata i32 %1, metadata !96, metadata !DIExpression()), !dbg !100
  store i32 %1, i32* %7, align 4, !tbaa !40
  call void @llvm.dbg.value(metadata [8000 x double]* %2, metadata !97, metadata !DIExpression()), !dbg !100
  store [8000 x double]* %2, [8000 x double]** %8, align 8, !tbaa !44
  call void @llvm.dbg.value(metadata double* %3, metadata !98, metadata !DIExpression()), !dbg !100
  store double* %3, double** %9, align 8, !tbaa !44
  call void @llvm.dbg.value(metadata double* %4, metadata !99, metadata !DIExpression()), !dbg !100
  store double* %4, double** %10, align 8, !tbaa !44
  %13 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %11, i64 0, i32 4, !dbg !101
  store i8* getelementptr inbounds ([91 x i8], [91 x i8]* @4, i64 0, i64 0), i8** %13, align 8, !dbg !101, !tbaa !47
  call void @llvm.dbg.value(metadata i32* %6, metadata !95, metadata !DIExpression(DW_OP_deref)), !dbg !100
  call void @llvm.dbg.value(metadata i32* %7, metadata !96, metadata !DIExpression(DW_OP_deref)), !dbg !100
  call void @llvm.dbg.value(metadata [8000 x double]** %8, metadata !97, metadata !DIExpression(DW_OP_deref)), !dbg !100
  call void @llvm.dbg.value(metadata double** %9, metadata !98, metadata !DIExpression(DW_OP_deref)), !dbg !100
  call void @llvm.dbg.value(metadata double** %10, metadata !99, metadata !DIExpression(DW_OP_deref)), !dbg !100
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %11, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, double**, i32*, [8000 x double]**, double**)* @.omp_outlined..2 to void (i32*, i32*, ...)*), i32* nonnull %6, double** nonnull %10, i32* nonnull %7, [8000 x double]** nonnull %8, double** nonnull %9) #8, !dbg !101
  ret void, !dbg !102
}

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined..2(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture readonly dereferenceable(4) %2, double** nocapture readonly dereferenceable(8) %3, i32* nocapture readonly dereferenceable(4) %4, [8000 x double]** nocapture readonly dereferenceable(8) %5, double** nocapture readonly dereferenceable(8) %6) #2 !dbg !103 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ident_t, align 8
  call void @llvm.dbg.value(metadata i32* %0, metadata !108, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.value(metadata i32* %1, metadata !109, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.value(metadata i32* %2, metadata !110, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.value(metadata double** %3, metadata !111, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.value(metadata i32* %4, metadata !112, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.value(metadata [8000 x double]** %5, metadata !113, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.value(metadata double** %6, metadata !114, metadata !DIExpression()), !dbg !115
  %13 = load i32, i32* %2, align 4, !dbg !116, !tbaa !40
  %14 = bitcast %struct.ident_t* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %14, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @0 to i8*), i64 24, i1 false) #8, !noalias !117
  call void @llvm.dbg.value(metadata i32* %0, metadata !120, metadata !DIExpression()) #8, !dbg !139
  call void @llvm.dbg.value(metadata i32* undef, metadata !123, metadata !DIExpression()) #8, !dbg !139
  call void @llvm.dbg.value(metadata double** %3, metadata !125, metadata !DIExpression()) #8, !dbg !139
  call void @llvm.dbg.value(metadata i32* %4, metadata !126, metadata !DIExpression()) #8, !dbg !139
  call void @llvm.dbg.value(metadata [8000 x double]** %5, metadata !127, metadata !DIExpression()) #8, !dbg !139
  call void @llvm.dbg.value(metadata double** %6, metadata !128, metadata !DIExpression()) #8, !dbg !139
  call void @llvm.dbg.value(metadata i32 %13, metadata !130, metadata !DIExpression()) #8, !dbg !139
  %15 = add nsw i32 %13, -1, !dbg !141
  call void @llvm.dbg.value(metadata i32 %15, metadata !130, metadata !DIExpression()) #8, !dbg !139
  call void @llvm.dbg.value(metadata i32 0, metadata !131, metadata !DIExpression()) #8, !dbg !139
  %16 = icmp sgt i32 %13, 0, !dbg !141
  br i1 %16, label %17, label %89, !dbg !141

17:                                               ; preds = %7
  %18 = bitcast i32* %8 to i8*, !dbg !141
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18) #8, !dbg !141, !noalias !117
  call void @llvm.dbg.value(metadata i32 0, metadata !132, metadata !DIExpression()) #8, !dbg !139
  store i32 0, i32* %8, align 4, !dbg !142, !tbaa !40, !noalias !117
  %19 = bitcast i32* %9 to i8*, !dbg !141
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #8, !dbg !141, !noalias !117
  call void @llvm.dbg.value(metadata i32 %15, metadata !133, metadata !DIExpression()) #8, !dbg !139
  store i32 %15, i32* %9, align 4, !dbg !142, !tbaa !40, !noalias !117
  %20 = bitcast i32* %10 to i8*, !dbg !141
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %20) #8, !dbg !141, !noalias !117
  call void @llvm.dbg.value(metadata i32 1, metadata !134, metadata !DIExpression()) #8, !dbg !139
  store i32 1, i32* %10, align 4, !dbg !142, !tbaa !40, !noalias !117
  %21 = bitcast i32* %11 to i8*, !dbg !141
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %21) #8, !dbg !141, !noalias !117
  call void @llvm.dbg.value(metadata i32 0, metadata !135, metadata !DIExpression()) #8, !dbg !139
  store i32 0, i32* %11, align 4, !dbg !142, !tbaa !40, !noalias !117
  %22 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %12, i64 0, i32 4, !dbg !141
  store i8* getelementptr inbounds ([91 x i8], [91 x i8]* @4, i64 0, i64 0), i8** %22, align 8, !dbg !141, !tbaa !47, !noalias !117
  %23 = load i32, i32* %0, align 4, !dbg !141, !tbaa !40, !alias.scope !117
  call void @llvm.dbg.value(metadata i32* %8, metadata !132, metadata !DIExpression(DW_OP_deref)) #8, !dbg !139
  call void @llvm.dbg.value(metadata i32* %9, metadata !133, metadata !DIExpression(DW_OP_deref)) #8, !dbg !139
  call void @llvm.dbg.value(metadata i32* %10, metadata !134, metadata !DIExpression(DW_OP_deref)) #8, !dbg !139
  call void @llvm.dbg.value(metadata i32* %11, metadata !135, metadata !DIExpression(DW_OP_deref)) #8, !dbg !139
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull %12, i32 %23, i32 34, i32* nonnull %11, i32* nonnull %8, i32* nonnull %9, i32* nonnull %10, i32 1, i32 1) #8, !dbg !141, !noalias !117
  %24 = load i32, i32* %9, align 4, !dbg !142, !tbaa !40, !noalias !117
  call void @llvm.dbg.value(metadata i32 %24, metadata !133, metadata !DIExpression()) #8, !dbg !139
  %25 = icmp slt i32 %24, %13, !dbg !142
  %26 = select i1 %25, i32 %24, i32 %15, !dbg !142
  call void @llvm.dbg.value(metadata i32 %26, metadata !133, metadata !DIExpression()) #8, !dbg !139
  store i32 %26, i32* %9, align 4, !dbg !142, !tbaa !40, !noalias !117
  %27 = load i32, i32* %8, align 4, !dbg !142, !tbaa !40, !noalias !117
  call void @llvm.dbg.value(metadata i32 %27, metadata !132, metadata !DIExpression()) #8, !dbg !139
  call void @llvm.dbg.value(metadata i32 %27, metadata !129, metadata !DIExpression()) #8, !dbg !139
  call void @llvm.dbg.value(metadata i32 %26, metadata !133, metadata !DIExpression()) #8, !dbg !139
  %28 = icmp slt i32 %26, %27, !dbg !141
  br i1 %28, label %88, label %29, !dbg !141

29:                                               ; preds = %17
  %30 = load double*, double** %3, align 8, !dbg !143, !tbaa !44, !noalias !117
  %31 = load i32, i32* %4, align 4, !dbg !144, !noalias !117
  %32 = icmp sgt i32 %31, 0, !dbg !144
  %33 = load [8000 x double]*, [8000 x double]** %5, align 8, !dbg !144, !noalias !117
  %34 = load double*, double** %6, align 8, !dbg !144, !noalias !117
  %35 = sext i32 %27 to i64, !dbg !146
  br i1 %32, label %45, label %36, !dbg !141

36:                                               ; preds = %29
  %37 = getelementptr double, double* %30, i64 %35, !dbg !146
  %38 = bitcast double* %37 to i8*
  %39 = icmp sgt i32 %26, %27, !dbg !146
  %40 = sub i32 %26, %27, !dbg !146
  %41 = select i1 %39, i32 %40, i32 0, !dbg !146
  %42 = zext i32 %41 to i64, !dbg !146
  %43 = shl nuw nsw i64 %42, 3, !dbg !146
  %44 = add nuw nsw i64 %43, 8, !dbg !146
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(1) %38, i8 0, i64 %44, i1 false) #8, !dbg !147, !noalias !117
  call void @llvm.dbg.value(metadata i32 undef, metadata !129, metadata !DIExpression()) #8, !dbg !139
  call void @llvm.dbg.value(metadata i32 undef, metadata !131, metadata !DIExpression()) #8, !dbg !139
  call void @llvm.dbg.value(metadata i32 undef, metadata !136, metadata !DIExpression()) #8, !dbg !148
  call void @llvm.dbg.value(metadata i32 undef, metadata !133, metadata !DIExpression()) #8, !dbg !139
  br label %88, !dbg !146

45:                                               ; preds = %29
  %46 = sext i32 %26 to i64, !dbg !146
  %47 = zext i32 %31 to i64, !dbg !144
  %48 = and i64 %47, 1, !dbg !148
  %49 = icmp eq i32 %31, 1, !dbg !148
  %50 = sub nsw i64 %47, %48, !dbg !148
  %51 = icmp eq i64 %48, 0, !dbg !148
  br label %52, !dbg !146

52:                                               ; preds = %85, %45
  %53 = phi i64 [ %35, %45 ], [ %86, %85 ]
  call void @llvm.dbg.value(metadata i64 %53, metadata !129, metadata !DIExpression()) #8, !dbg !139
  call void @llvm.dbg.value(metadata i64 %53, metadata !131, metadata !DIExpression()) #8, !dbg !139
  %54 = getelementptr inbounds double, double* %30, i64 %53, !dbg !149
  store double 0.000000e+00, double* %54, align 8, !dbg !147, !tbaa !150, !noalias !117
  call void @llvm.dbg.value(metadata i32 0, metadata !136, metadata !DIExpression()) #8, !dbg !148
  br i1 %49, label %75, label %55, !dbg !152

55:                                               ; preds = %52, %55
  %56 = phi double [ %71, %55 ], [ 0.000000e+00, %52 ], !dbg !153
  %57 = phi i64 [ %72, %55 ], [ 0, %52 ]
  %58 = phi i64 [ %73, %55 ], [ %50, %52 ]
  call void @llvm.dbg.value(metadata i64 %57, metadata !136, metadata !DIExpression()) #8, !dbg !148
  %59 = getelementptr inbounds [8000 x double], [8000 x double]* %33, i64 %53, i64 %57, !dbg !154
  %60 = load double, double* %59, align 8, !dbg !154, !tbaa !150, !noalias !117
  %61 = getelementptr inbounds double, double* %34, i64 %57, !dbg !155
  %62 = load double, double* %61, align 8, !dbg !155, !tbaa !150, !noalias !117
  %63 = fmul double %60, %62, !dbg !156
  %64 = fadd double %56, %63, !dbg !153
  store double %64, double* %54, align 8, !dbg !153, !tbaa !150, !noalias !117
  %65 = or i64 %57, 1, !dbg !157
  call void @llvm.dbg.value(metadata i64 %65, metadata !136, metadata !DIExpression()) #8, !dbg !148
  %66 = getelementptr inbounds [8000 x double], [8000 x double]* %33, i64 %53, i64 %65, !dbg !154
  %67 = load double, double* %66, align 8, !dbg !154, !tbaa !150, !noalias !117
  %68 = getelementptr inbounds double, double* %34, i64 %65, !dbg !155
  %69 = load double, double* %68, align 8, !dbg !155, !tbaa !150, !noalias !117
  %70 = fmul double %67, %69, !dbg !156
  %71 = fadd double %64, %70, !dbg !153
  store double %71, double* %54, align 8, !dbg !153, !tbaa !150, !noalias !117
  %72 = add nuw nsw i64 %57, 2, !dbg !157
  call void @llvm.dbg.value(metadata i64 %72, metadata !136, metadata !DIExpression()) #8, !dbg !148
  %73 = add i64 %58, -2, !dbg !152
  %74 = icmp eq i64 %73, 0, !dbg !152
  br i1 %74, label %75, label %55, !dbg !152, !llvm.loop !158

75:                                               ; preds = %55, %52
  %76 = phi double [ 0.000000e+00, %52 ], [ %71, %55 ]
  %77 = phi i64 [ 0, %52 ], [ %72, %55 ]
  br i1 %51, label %85, label %78, !dbg !152

78:                                               ; preds = %75
  call void @llvm.dbg.value(metadata i64 %77, metadata !136, metadata !DIExpression()) #8, !dbg !148
  %79 = getelementptr inbounds [8000 x double], [8000 x double]* %33, i64 %53, i64 %77, !dbg !154
  %80 = load double, double* %79, align 8, !dbg !154, !tbaa !150, !noalias !117
  %81 = getelementptr inbounds double, double* %34, i64 %77, !dbg !155
  %82 = load double, double* %81, align 8, !dbg !155, !tbaa !150, !noalias !117
  %83 = fmul double %80, %82, !dbg !156
  %84 = fadd double %76, %83, !dbg !153
  store double %84, double* %54, align 8, !dbg !153, !tbaa !150, !noalias !117
  call void @llvm.dbg.value(metadata i64 %77, metadata !136, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #8, !dbg !148
  br label %85, !dbg !141

85:                                               ; preds = %75, %78
  %86 = add nsw i64 %53, 1, !dbg !141
  call void @llvm.dbg.value(metadata i64 %86, metadata !129, metadata !DIExpression()) #8, !dbg !139
  call void @llvm.dbg.value(metadata i32 %26, metadata !133, metadata !DIExpression()) #8, !dbg !139
  %87 = icmp eq i64 %53, %46, !dbg !141
  br i1 %87, label %88, label %52, !dbg !141, !llvm.loop !160

88:                                               ; preds = %85, %36, %17
  store i8* getelementptr inbounds ([92 x i8], [92 x i8]* @5, i64 0, i64 0), i8** %22, align 8, !dbg !146, !tbaa !47, !noalias !117
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull %12, i32 %23) #8, !dbg !146, !noalias !117
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %21) #8, !dbg !146, !noalias !117
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %20) #8, !dbg !146, !noalias !117
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #8, !dbg !146, !noalias !117
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #8, !dbg !146, !noalias !117
  br label %89, !dbg !146

89:                                               ; preds = %7, %88
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %14), !dbg !162
  ret void, !dbg !116
}

; Function Attrs: nounwind uwtable
define internal void @kernel_p3(i32 %0, i32 %1, [8000 x double]* %2, double* %3, double* %4) #0 !dbg !163 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [8000 x double]*, align 8
  %9 = alloca double*, align 8
  %10 = alloca double*, align 8
  %11 = alloca %struct.ident_t, align 8
  %12 = bitcast %struct.ident_t* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %12, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @3 to i8*), i64 16, i1 false)
  call void @llvm.dbg.value(metadata i32 %0, metadata !165, metadata !DIExpression()), !dbg !170
  store i32 %0, i32* %6, align 4, !tbaa !40
  call void @llvm.dbg.value(metadata i32 %1, metadata !166, metadata !DIExpression()), !dbg !170
  store i32 %1, i32* %7, align 4, !tbaa !40
  call void @llvm.dbg.value(metadata [8000 x double]* %2, metadata !167, metadata !DIExpression()), !dbg !170
  store [8000 x double]* %2, [8000 x double]** %8, align 8, !tbaa !44
  call void @llvm.dbg.value(metadata double* %3, metadata !168, metadata !DIExpression()), !dbg !170
  store double* %3, double** %9, align 8, !tbaa !44
  call void @llvm.dbg.value(metadata double* %4, metadata !169, metadata !DIExpression()), !dbg !170
  store double* %4, double** %10, align 8, !tbaa !44
  %13 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %11, i64 0, i32 4, !dbg !171
  store i8* getelementptr inbounds ([91 x i8], [91 x i8]* @6, i64 0, i64 0), i8** %13, align 8, !dbg !171, !tbaa !47
  call void @llvm.dbg.value(metadata i32* %6, metadata !165, metadata !DIExpression(DW_OP_deref)), !dbg !170
  call void @llvm.dbg.value(metadata i32* %7, metadata !166, metadata !DIExpression(DW_OP_deref)), !dbg !170
  call void @llvm.dbg.value(metadata [8000 x double]** %8, metadata !167, metadata !DIExpression(DW_OP_deref)), !dbg !170
  call void @llvm.dbg.value(metadata double** %9, metadata !168, metadata !DIExpression(DW_OP_deref)), !dbg !170
  call void @llvm.dbg.value(metadata double** %10, metadata !169, metadata !DIExpression(DW_OP_deref)), !dbg !170
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %11, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, double**, [8000 x double]**, double**)* @.omp_outlined..4 to void (i32*, i32*, ...)*), i32* nonnull %6, i32* nonnull %7, double** nonnull %10, [8000 x double]** nonnull %8, double** nonnull %9) #8, !dbg !171
  ret void, !dbg !172
}

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined..4(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture readonly dereferenceable(4) %2, i32* nocapture readonly dereferenceable(4) %3, double** nocapture readonly dereferenceable(8) %4, [8000 x double]** nocapture readonly dereferenceable(8) %5, double** nocapture readonly dereferenceable(8) %6) #2 !dbg !173 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ident_t, align 8
  call void @llvm.dbg.value(metadata i32* %0, metadata !177, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.value(metadata i32* %1, metadata !178, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.value(metadata i32* %2, metadata !179, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.value(metadata i32* %3, metadata !180, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.value(metadata double** %4, metadata !181, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.value(metadata [8000 x double]** %5, metadata !182, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.value(metadata double** %6, metadata !183, metadata !DIExpression()), !dbg !184
  %13 = load i32, i32* %2, align 4, !dbg !185, !tbaa !40
  %14 = bitcast %struct.ident_t* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %14, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @0 to i8*), i64 24, i1 false) #8, !noalias !186
  call void @llvm.dbg.value(metadata i32* %0, metadata !189, metadata !DIExpression()) #8, !dbg !208
  call void @llvm.dbg.value(metadata i32* undef, metadata !192, metadata !DIExpression()) #8, !dbg !208
  call void @llvm.dbg.value(metadata i32* %3, metadata !194, metadata !DIExpression()) #8, !dbg !208
  call void @llvm.dbg.value(metadata double** %4, metadata !195, metadata !DIExpression()) #8, !dbg !208
  call void @llvm.dbg.value(metadata [8000 x double]** %5, metadata !196, metadata !DIExpression()) #8, !dbg !208
  call void @llvm.dbg.value(metadata double** %6, metadata !197, metadata !DIExpression()) #8, !dbg !208
  call void @llvm.dbg.value(metadata i32 %13, metadata !199, metadata !DIExpression()) #8, !dbg !208
  %15 = add nsw i32 %13, -1, !dbg !210
  call void @llvm.dbg.value(metadata i32 %15, metadata !199, metadata !DIExpression()) #8, !dbg !208
  call void @llvm.dbg.value(metadata i32 0, metadata !200, metadata !DIExpression()) #8, !dbg !208
  %16 = icmp sgt i32 %13, 0, !dbg !210
  br i1 %16, label %17, label %133, !dbg !210

17:                                               ; preds = %7
  %18 = bitcast i32* %8 to i8*, !dbg !210
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18) #8, !dbg !210, !noalias !186
  call void @llvm.dbg.value(metadata i32 0, metadata !201, metadata !DIExpression()) #8, !dbg !208
  store i32 0, i32* %8, align 4, !dbg !211, !tbaa !40, !noalias !186
  %19 = bitcast i32* %9 to i8*, !dbg !210
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #8, !dbg !210, !noalias !186
  call void @llvm.dbg.value(metadata i32 %15, metadata !202, metadata !DIExpression()) #8, !dbg !208
  store i32 %15, i32* %9, align 4, !dbg !211, !tbaa !40, !noalias !186
  %20 = bitcast i32* %10 to i8*, !dbg !210
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %20) #8, !dbg !210, !noalias !186
  call void @llvm.dbg.value(metadata i32 1, metadata !203, metadata !DIExpression()) #8, !dbg !208
  store i32 1, i32* %10, align 4, !dbg !211, !tbaa !40, !noalias !186
  %21 = bitcast i32* %11 to i8*, !dbg !210
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %21) #8, !dbg !210, !noalias !186
  call void @llvm.dbg.value(metadata i32 0, metadata !204, metadata !DIExpression()) #8, !dbg !208
  store i32 0, i32* %11, align 4, !dbg !211, !tbaa !40, !noalias !186
  %22 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %12, i64 0, i32 4, !dbg !210
  store i8* getelementptr inbounds ([91 x i8], [91 x i8]* @6, i64 0, i64 0), i8** %22, align 8, !dbg !210, !tbaa !47, !noalias !186
  %23 = load i32, i32* %0, align 4, !dbg !210, !tbaa !40, !alias.scope !186
  call void @llvm.dbg.value(metadata i32* %8, metadata !201, metadata !DIExpression(DW_OP_deref)) #8, !dbg !208
  call void @llvm.dbg.value(metadata i32* %9, metadata !202, metadata !DIExpression(DW_OP_deref)) #8, !dbg !208
  call void @llvm.dbg.value(metadata i32* %10, metadata !203, metadata !DIExpression(DW_OP_deref)) #8, !dbg !208
  call void @llvm.dbg.value(metadata i32* %11, metadata !204, metadata !DIExpression(DW_OP_deref)) #8, !dbg !208
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull %12, i32 %23, i32 34, i32* nonnull %11, i32* nonnull %8, i32* nonnull %9, i32* nonnull %10, i32 1, i32 1) #8, !dbg !210, !noalias !186
  %24 = load i32, i32* %9, align 4, !dbg !211, !tbaa !40, !noalias !186
  call void @llvm.dbg.value(metadata i32 %24, metadata !202, metadata !DIExpression()) #8, !dbg !208
  %25 = icmp slt i32 %24, %13, !dbg !211
  %26 = select i1 %25, i32 %24, i32 %15, !dbg !211
  call void @llvm.dbg.value(metadata i32 %26, metadata !202, metadata !DIExpression()) #8, !dbg !208
  store i32 %26, i32* %9, align 4, !dbg !211, !tbaa !40, !noalias !186
  %27 = load i32, i32* %8, align 4, !dbg !211, !tbaa !40, !noalias !186
  call void @llvm.dbg.value(metadata i32 %27, metadata !201, metadata !DIExpression()) #8, !dbg !208
  call void @llvm.dbg.value(metadata i32 %27, metadata !198, metadata !DIExpression()) #8, !dbg !208
  call void @llvm.dbg.value(metadata i32 %26, metadata !202, metadata !DIExpression()) #8, !dbg !208
  %28 = icmp sgt i32 %27, %26, !dbg !210
  br i1 %28, label %132, label %29, !dbg !210

29:                                               ; preds = %17
  %30 = load i32, i32* %3, align 4, !dbg !212, !noalias !186
  %31 = icmp sgt i32 %30, 0, !dbg !212
  %32 = load [8000 x double]*, [8000 x double]** %5, align 8, !dbg !212, !noalias !186
  %33 = load double*, double** %6, align 8, !dbg !212, !noalias !186
  %34 = load double*, double** %4, align 8, !dbg !212, !noalias !186
  %35 = bitcast double* %34 to i8*
  br i1 %31, label %36, label %132, !dbg !210

36:                                               ; preds = %29
  %37 = sext i32 %27 to i64, !dbg !214
  %38 = sext i32 %26 to i64, !dbg !214
  %39 = zext i32 %30 to i64, !dbg !212
  %40 = getelementptr double, double* %34, i64 %39, !dbg !214
  %41 = icmp ult i32 %30, 4, !dbg !215
  %42 = and i64 %39, 4294967292, !dbg !215
  %43 = icmp eq i64 %42, %39, !dbg !215
  %44 = and i64 %39, 1, !dbg !215
  %45 = icmp eq i64 %44, 0, !dbg !215
  %46 = sub nsw i64 0, %39, !dbg !215
  br label %47, !dbg !214

47:                                               ; preds = %128, %36
  %48 = phi i64 [ %131, %128 ], [ 0, %36 ]
  %49 = phi i64 [ %129, %128 ], [ %37, %36 ]
  call void @llvm.dbg.value(metadata i64 %49, metadata !198, metadata !DIExpression()) #8, !dbg !208
  call void @llvm.dbg.value(metadata i32 0, metadata !205, metadata !DIExpression()) #8, !dbg !215
  %50 = add i64 %48, %37, !dbg !212
  %51 = getelementptr inbounds double, double* %33, i64 %49, !dbg !212
  br i1 %41, label %94, label %52, !dbg !216

52:                                               ; preds = %47
  %53 = getelementptr double, double* %33, i64 %50, !dbg !212
  %54 = bitcast double* %53 to i8*
  %55 = getelementptr i8, i8* %54, i64 1, !dbg !212
  %56 = getelementptr [8000 x double], [8000 x double]* %32, i64 %50, i64 %39, !dbg !212
  %57 = getelementptr [8000 x double], [8000 x double]* %32, i64 %50, i64 0, !dbg !212
  %58 = icmp ult double* %34, %56, !dbg !216
  %59 = icmp ult double* %57, %40, !dbg !216
  %60 = and i1 %58, %59, !dbg !216
  %61 = icmp ugt i8* %55, %35, !dbg !216
  %62 = icmp ult double* %51, %40, !dbg !216
  %63 = and i1 %61, %62, !dbg !216
  %64 = or i1 %60, %63, !dbg !216
  br i1 %64, label %94, label %65, !dbg !216

65:                                               ; preds = %52
  %66 = load double, double* %51, align 8, !dbg !212, !tbaa !150, !alias.scope !217, !noalias !186
  %67 = insertelement <2 x double> undef, double %66, i32 0, !dbg !212
  %68 = shufflevector <2 x double> %67, <2 x double> undef, <2 x i32> zeroinitializer, !dbg !212
  %69 = insertelement <2 x double> undef, double %66, i32 0, !dbg !212
  %70 = shufflevector <2 x double> %69, <2 x double> undef, <2 x i32> zeroinitializer, !dbg !212
  br label %71, !dbg !216

71:                                               ; preds = %71, %65
  %72 = phi i64 [ 0, %65 ], [ %91, %71 ], !dbg !220
  %73 = getelementptr inbounds [8000 x double], [8000 x double]* %32, i64 %49, i64 %72, !dbg !221
  %74 = bitcast double* %73 to <2 x double>*, !dbg !221
  %75 = load <2 x double>, <2 x double>* %74, align 8, !dbg !221, !tbaa !150, !alias.scope !222, !noalias !186
  %76 = getelementptr inbounds double, double* %73, i64 2, !dbg !221
  %77 = bitcast double* %76 to <2 x double>*, !dbg !221
  %78 = load <2 x double>, <2 x double>* %77, align 8, !dbg !221, !tbaa !150, !alias.scope !222, !noalias !186
  %79 = fmul <2 x double> %75, %68, !dbg !220
  %80 = fmul <2 x double> %78, %70, !dbg !220
  %81 = getelementptr inbounds double, double* %34, i64 %72, !dbg !224
  %82 = bitcast double* %81 to <2 x double>*, !dbg !225
  %83 = load <2 x double>, <2 x double>* %82, align 8, !dbg !225, !tbaa !150, !alias.scope !226, !noalias !228
  %84 = getelementptr inbounds double, double* %81, i64 2, !dbg !225
  %85 = bitcast double* %84 to <2 x double>*, !dbg !225
  %86 = load <2 x double>, <2 x double>* %85, align 8, !dbg !225, !tbaa !150, !alias.scope !226, !noalias !228
  %87 = fadd <2 x double> %79, %83, !dbg !225
  %88 = fadd <2 x double> %80, %86, !dbg !225
  %89 = bitcast double* %81 to <2 x double>*, !dbg !225
  store <2 x double> %87, <2 x double>* %89, align 8, !dbg !225, !tbaa !150, !alias.scope !226, !noalias !228
  %90 = bitcast double* %84 to <2 x double>*, !dbg !225
  store <2 x double> %88, <2 x double>* %90, align 8, !dbg !225, !tbaa !150, !alias.scope !226, !noalias !228
  %91 = add i64 %72, 4, !dbg !220
  %92 = icmp eq i64 %91, %42, !dbg !220
  br i1 %92, label %93, label %71, !dbg !220, !llvm.loop !229

93:                                               ; preds = %71
  br i1 %43, label %128, label %94, !dbg !216

94:                                               ; preds = %93, %52, %47
  %95 = phi i64 [ 0, %52 ], [ 0, %47 ], [ %42, %93 ]
  %96 = xor i64 %95, -1, !dbg !216
  br i1 %45, label %106, label %97, !dbg !216

97:                                               ; preds = %94
  call void @llvm.dbg.value(metadata i64 %95, metadata !205, metadata !DIExpression()) #8, !dbg !215
  %98 = getelementptr inbounds [8000 x double], [8000 x double]* %32, i64 %49, i64 %95, !dbg !221
  %99 = load double, double* %98, align 8, !dbg !221, !tbaa !150, !noalias !186
  %100 = load double, double* %51, align 8, !dbg !232, !tbaa !150, !noalias !186
  %101 = fmul double %99, %100, !dbg !233
  %102 = getelementptr inbounds double, double* %34, i64 %95, !dbg !224
  %103 = load double, double* %102, align 8, !dbg !225, !tbaa !150, !noalias !186
  %104 = fadd double %101, %103, !dbg !225
  store double %104, double* %102, align 8, !dbg !225, !tbaa !150, !noalias !186
  %105 = or i64 %95, 1, !dbg !220
  call void @llvm.dbg.value(metadata i64 %105, metadata !205, metadata !DIExpression()) #8, !dbg !215
  br label %106, !dbg !216

106:                                              ; preds = %97, %94
  %107 = phi i64 [ %105, %97 ], [ %95, %94 ]
  %108 = icmp eq i64 %96, %46, !dbg !216
  br i1 %108, label %128, label %109, !dbg !216

109:                                              ; preds = %106, %109
  %110 = phi i64 [ %126, %109 ], [ %107, %106 ]
  call void @llvm.dbg.value(metadata i64 %110, metadata !205, metadata !DIExpression()) #8, !dbg !215
  %111 = getelementptr inbounds [8000 x double], [8000 x double]* %32, i64 %49, i64 %110, !dbg !221
  %112 = load double, double* %111, align 8, !dbg !221, !tbaa !150, !noalias !186
  %113 = load double, double* %51, align 8, !dbg !232, !tbaa !150, !noalias !186
  %114 = fmul double %112, %113, !dbg !233
  %115 = getelementptr inbounds double, double* %34, i64 %110, !dbg !224
  %116 = load double, double* %115, align 8, !dbg !225, !tbaa !150, !noalias !186
  %117 = fadd double %114, %116, !dbg !225
  store double %117, double* %115, align 8, !dbg !225, !tbaa !150, !noalias !186
  %118 = add nuw nsw i64 %110, 1, !dbg !220
  call void @llvm.dbg.value(metadata i64 %118, metadata !205, metadata !DIExpression()) #8, !dbg !215
  %119 = getelementptr inbounds [8000 x double], [8000 x double]* %32, i64 %49, i64 %118, !dbg !221
  %120 = load double, double* %119, align 8, !dbg !221, !tbaa !150, !noalias !186
  %121 = load double, double* %51, align 8, !dbg !232, !tbaa !150, !noalias !186
  %122 = fmul double %120, %121, !dbg !233
  %123 = getelementptr inbounds double, double* %34, i64 %118, !dbg !224
  %124 = load double, double* %123, align 8, !dbg !225, !tbaa !150, !noalias !186
  %125 = fadd double %122, %124, !dbg !225
  store double %125, double* %123, align 8, !dbg !225, !tbaa !150, !noalias !186
  %126 = add nuw nsw i64 %110, 2, !dbg !220
  call void @llvm.dbg.value(metadata i64 %126, metadata !205, metadata !DIExpression()) #8, !dbg !215
  %127 = icmp eq i64 %126, %39, !dbg !234
  br i1 %127, label %128, label %109, !dbg !216, !llvm.loop !235

128:                                              ; preds = %106, %109, %93
  %129 = add nsw i64 %49, 1, !dbg !210
  call void @llvm.dbg.value(metadata i64 %129, metadata !198, metadata !DIExpression()) #8, !dbg !208
  call void @llvm.dbg.value(metadata i32 %26, metadata !202, metadata !DIExpression()) #8, !dbg !208
  %130 = icmp slt i64 %49, %38, !dbg !210
  %131 = add i64 %48, 1, !dbg !210
  br i1 %130, label %47, label %132, !dbg !210, !llvm.loop !236

132:                                              ; preds = %128, %29, %17
  store i8* getelementptr inbounds ([92 x i8], [92 x i8]* @7, i64 0, i64 0), i8** %22, align 8, !dbg !214, !tbaa !47, !noalias !186
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull %12, i32 %23) #8, !dbg !214, !noalias !186
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %21) #8, !dbg !214, !noalias !186
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %20) #8, !dbg !214, !noalias !186
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #8, !dbg !214, !noalias !186
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #8, !dbg !214, !noalias !186
  br label %133, !dbg !214

133:                                              ; preds = %7, %132
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %14), !dbg !238
  ret void, !dbg !185
}

; Function Attrs: nounwind uwtable
define internal void @kernel_atax(i32 %0, i32 %1, [8000 x double]* %2, double* %3, double* %4, double* %5) #0 !dbg !239 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [8000 x double]*, align 8
  %10 = alloca double*, align 8
  %11 = alloca double*, align 8
  %12 = alloca %struct.ident_t, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [8000 x double]*, align 8
  %16 = alloca double*, align 8
  %17 = alloca double*, align 8
  %18 = alloca %struct.ident_t, align 8
  %19 = alloca i32, align 4
  %20 = alloca double*, align 8
  %21 = alloca %struct.ident_t, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !243, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.value(metadata i32 %1, metadata !244, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.value(metadata [8000 x double]* %2, metadata !245, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.value(metadata double* %3, metadata !246, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.value(metadata double* %4, metadata !247, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.value(metadata double* %5, metadata !248, metadata !DIExpression()), !dbg !249
  tail call void (...) @polybench_timer_start() #8, !dbg !250
  %22 = bitcast i32* %19 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22)
  %23 = bitcast double** %20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23)
  %24 = bitcast %struct.ident_t* %21 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %24)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %24, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @3 to i8*), i64 16, i1 false) #8
  call void @llvm.dbg.value(metadata i32 %1, metadata !37, metadata !DIExpression()) #8, !dbg !251
  store i32 %1, i32* %19, align 4, !tbaa !40
  call void @llvm.dbg.value(metadata double* %4, metadata !38, metadata !DIExpression()) #8, !dbg !251
  store double* %4, double** %20, align 8, !tbaa !44
  %25 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %21, i64 0, i32 4, !dbg !253
  store i8* getelementptr inbounds ([91 x i8], [91 x i8]* @1, i64 0, i64 0), i8** %25, align 8, !dbg !253, !tbaa !47
  call void @llvm.dbg.value(metadata i32* %19, metadata !37, metadata !DIExpression(DW_OP_deref)) #8, !dbg !251
  call void @llvm.dbg.value(metadata double** %20, metadata !38, metadata !DIExpression(DW_OP_deref)) #8, !dbg !251
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %21, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, double**)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %19, double** nonnull %20) #8, !dbg !253
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22), !dbg !254
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23), !dbg !254
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %24), !dbg !254
  call void (...) @polybench_timer_stop() #8, !dbg !255
  call void (...) @polybench_timer_print() #8, !dbg !256
  call void (...) @polybench_timer_start() #8, !dbg !257
  %26 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26)
  %27 = bitcast i32* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %27)
  %28 = bitcast [8000 x double]** %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %28)
  %29 = bitcast double** %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %29)
  %30 = bitcast double** %17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %30)
  %31 = bitcast %struct.ident_t* %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %31)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %31, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @3 to i8*), i64 16, i1 false) #8
  call void @llvm.dbg.value(metadata i32 %0, metadata !95, metadata !DIExpression()) #8, !dbg !258
  store i32 %0, i32* %13, align 4, !tbaa !40
  call void @llvm.dbg.value(metadata i32 %1, metadata !96, metadata !DIExpression()) #8, !dbg !258
  store i32 %1, i32* %14, align 4, !tbaa !40
  call void @llvm.dbg.value(metadata [8000 x double]* %2, metadata !97, metadata !DIExpression()) #8, !dbg !258
  store [8000 x double]* %2, [8000 x double]** %15, align 8, !tbaa !44
  call void @llvm.dbg.value(metadata double* %3, metadata !98, metadata !DIExpression()) #8, !dbg !258
  store double* %3, double** %16, align 8, !tbaa !44
  call void @llvm.dbg.value(metadata double* %5, metadata !99, metadata !DIExpression()) #8, !dbg !258
  store double* %5, double** %17, align 8, !tbaa !44
  %32 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %18, i64 0, i32 4, !dbg !260
  store i8* getelementptr inbounds ([91 x i8], [91 x i8]* @4, i64 0, i64 0), i8** %32, align 8, !dbg !260, !tbaa !47
  call void @llvm.dbg.value(metadata i32* %13, metadata !95, metadata !DIExpression(DW_OP_deref)) #8, !dbg !258
  call void @llvm.dbg.value(metadata i32* %14, metadata !96, metadata !DIExpression(DW_OP_deref)) #8, !dbg !258
  call void @llvm.dbg.value(metadata [8000 x double]** %15, metadata !97, metadata !DIExpression(DW_OP_deref)) #8, !dbg !258
  call void @llvm.dbg.value(metadata double** %16, metadata !98, metadata !DIExpression(DW_OP_deref)) #8, !dbg !258
  call void @llvm.dbg.value(metadata double** %17, metadata !99, metadata !DIExpression(DW_OP_deref)) #8, !dbg !258
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %18, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, double**, i32*, [8000 x double]**, double**)* @.omp_outlined..2 to void (i32*, i32*, ...)*), i32* nonnull %13, double** nonnull %17, i32* nonnull %14, [8000 x double]** nonnull %15, double** nonnull %16) #8, !dbg !260
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26), !dbg !261
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %27), !dbg !261
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %28), !dbg !261
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %29), !dbg !261
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %30), !dbg !261
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %31), !dbg !261
  call void (...) @polybench_timer_stop() #8, !dbg !262
  call void (...) @polybench_timer_print() #8, !dbg !263
  call void (...) @polybench_timer_start() #8, !dbg !264
  %33 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33)
  %34 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %34)
  %35 = bitcast [8000 x double]** %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %35)
  %36 = bitcast double** %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %36)
  %37 = bitcast double** %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %37)
  %38 = bitcast %struct.ident_t* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %38)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %38, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @3 to i8*), i64 16, i1 false) #8
  call void @llvm.dbg.value(metadata i32 %0, metadata !165, metadata !DIExpression()) #8, !dbg !265
  store i32 %0, i32* %7, align 4, !tbaa !40
  call void @llvm.dbg.value(metadata i32 %1, metadata !166, metadata !DIExpression()) #8, !dbg !265
  store i32 %1, i32* %8, align 4, !tbaa !40
  call void @llvm.dbg.value(metadata [8000 x double]* %2, metadata !167, metadata !DIExpression()) #8, !dbg !265
  store [8000 x double]* %2, [8000 x double]** %9, align 8, !tbaa !44
  call void @llvm.dbg.value(metadata double* %5, metadata !168, metadata !DIExpression()) #8, !dbg !265
  store double* %5, double** %10, align 8, !tbaa !44
  call void @llvm.dbg.value(metadata double* %4, metadata !169, metadata !DIExpression()) #8, !dbg !265
  store double* %4, double** %11, align 8, !tbaa !44
  %39 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %12, i64 0, i32 4, !dbg !267
  store i8* getelementptr inbounds ([91 x i8], [91 x i8]* @6, i64 0, i64 0), i8** %39, align 8, !dbg !267, !tbaa !47
  call void @llvm.dbg.value(metadata i32* %7, metadata !165, metadata !DIExpression(DW_OP_deref)) #8, !dbg !265
  call void @llvm.dbg.value(metadata i32* %8, metadata !166, metadata !DIExpression(DW_OP_deref)) #8, !dbg !265
  call void @llvm.dbg.value(metadata [8000 x double]** %9, metadata !167, metadata !DIExpression(DW_OP_deref)) #8, !dbg !265
  call void @llvm.dbg.value(metadata double** %10, metadata !168, metadata !DIExpression(DW_OP_deref)) #8, !dbg !265
  call void @llvm.dbg.value(metadata double** %11, metadata !169, metadata !DIExpression(DW_OP_deref)) #8, !dbg !265
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %12, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, double**, [8000 x double]**, double**)* @.omp_outlined..4 to void (i32*, i32*, ...)*), i32* nonnull %7, i32* nonnull %8, double** nonnull %11, [8000 x double]** nonnull %9, double** nonnull %10) #8, !dbg !267
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33), !dbg !268
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %34), !dbg !268
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %35), !dbg !268
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %36), !dbg !268
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %37), !dbg !268
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %38), !dbg !268
  call void (...) @polybench_timer_stop() #8, !dbg !269
  call void (...) @polybench_timer_print() #8, !dbg !270
  ret void, !dbg !271
}

declare !dbg !4 dso_local void @polybench_timer_start(...) local_unnamed_addr #3

declare !dbg !8 dso_local void @polybench_timer_stop(...) local_unnamed_addr #3

declare !dbg !9 dso_local void @polybench_timer_print(...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %0, i8** nocapture readonly %1) local_unnamed_addr #0 !dbg !272 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !279, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.value(metadata i8** %1, metadata !280, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.value(metadata i32 8000, metadata !281, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.value(metadata i32 8000, metadata !282, metadata !DIExpression()), !dbg !287
  %3 = tail call i8* @polybench_alloc_data(i64 64000000, i32 8) #8, !dbg !288
  call void @llvm.dbg.value(metadata i8* %3, metadata !283, metadata !DIExpression()), !dbg !287
  %4 = tail call i8* @polybench_alloc_data(i64 8000, i32 8) #8, !dbg !289
  call void @llvm.dbg.value(metadata i8* %4, metadata !284, metadata !DIExpression()), !dbg !287
  %5 = tail call i8* @polybench_alloc_data(i64 8000, i32 8) #8, !dbg !290
  call void @llvm.dbg.value(metadata i8* %5, metadata !285, metadata !DIExpression()), !dbg !287
  %6 = tail call i8* @polybench_alloc_data(i64 8000, i32 8) #8, !dbg !291
  call void @llvm.dbg.value(metadata i8* %6, metadata !286, metadata !DIExpression()), !dbg !287
  %7 = bitcast i8* %4 to double*, !dbg !292
  call void @llvm.dbg.value(metadata i32 8000, metadata !293, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata i32 8000, metadata !298, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata [8000 x double]* %37, metadata !299, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata double* %7, metadata !300, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata i32 0, metadata !301, metadata !DIExpression()), !dbg !303
  br label %8, !dbg !305

8:                                                ; preds = %8, %2
  %9 = phi i64 [ 0, %2 ], [ %34, %8 ]
  call void @llvm.dbg.value(metadata i64 %9, metadata !301, metadata !DIExpression()), !dbg !303
  %10 = trunc i64 %9 to i32, !dbg !307
  %11 = sitofp i32 %10 to double, !dbg !307
  %12 = fmul double %11, 0x400921FB54442D18, !dbg !309
  %13 = getelementptr inbounds double, double* %7, i64 %9, !dbg !310
  store double %12, double* %13, align 8, !dbg !311, !tbaa !150
  %14 = add nuw nsw i64 %9, 1, !dbg !312
  call void @llvm.dbg.value(metadata i64 %14, metadata !301, metadata !DIExpression()), !dbg !303
  %15 = trunc i64 %14 to i32, !dbg !307
  %16 = sitofp i32 %15 to double, !dbg !307
  %17 = fmul double %16, 0x400921FB54442D18, !dbg !309
  %18 = getelementptr inbounds double, double* %7, i64 %14, !dbg !310
  store double %17, double* %18, align 8, !dbg !311, !tbaa !150
  %19 = add nuw nsw i64 %9, 2, !dbg !312
  call void @llvm.dbg.value(metadata i64 %19, metadata !301, metadata !DIExpression()), !dbg !303
  %20 = trunc i64 %19 to i32, !dbg !307
  %21 = sitofp i32 %20 to double, !dbg !307
  %22 = fmul double %21, 0x400921FB54442D18, !dbg !309
  %23 = getelementptr inbounds double, double* %7, i64 %19, !dbg !310
  store double %22, double* %23, align 8, !dbg !311, !tbaa !150
  %24 = add nuw nsw i64 %9, 3, !dbg !312
  call void @llvm.dbg.value(metadata i64 %24, metadata !301, metadata !DIExpression()), !dbg !303
  %25 = trunc i64 %24 to i32, !dbg !307
  %26 = sitofp i32 %25 to double, !dbg !307
  %27 = fmul double %26, 0x400921FB54442D18, !dbg !309
  %28 = getelementptr inbounds double, double* %7, i64 %24, !dbg !310
  store double %27, double* %28, align 8, !dbg !311, !tbaa !150
  %29 = add nuw nsw i64 %9, 4, !dbg !312
  call void @llvm.dbg.value(metadata i64 %29, metadata !301, metadata !DIExpression()), !dbg !303
  %30 = trunc i64 %29 to i32, !dbg !307
  %31 = sitofp i32 %30 to double, !dbg !307
  %32 = fmul double %31, 0x400921FB54442D18, !dbg !309
  %33 = getelementptr inbounds double, double* %7, i64 %29, !dbg !310
  store double %32, double* %33, align 8, !dbg !311, !tbaa !150
  %34 = add nuw nsw i64 %9, 5, !dbg !312
  call void @llvm.dbg.value(metadata i64 %34, metadata !301, metadata !DIExpression()), !dbg !303
  %35 = icmp eq i64 %34, 8000, !dbg !313
  br i1 %35, label %36, label %8, !dbg !305, !llvm.loop !314

36:                                               ; preds = %8
  %37 = bitcast i8* %3 to [8000 x double]*, !dbg !316
  br label %38, !dbg !317

38:                                               ; preds = %36, %57
  %39 = phi i64 [ %58, %57 ], [ 0, %36 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !301, metadata !DIExpression()), !dbg !303
  call void @llvm.dbg.value(metadata i32 0, metadata !302, metadata !DIExpression()), !dbg !303
  %40 = trunc i64 %39 to i32, !dbg !319
  %41 = sitofp i32 %40 to double, !dbg !319
  br label %42, !dbg !323

42:                                               ; preds = %42, %38
  %43 = phi i64 [ 0, %38 ], [ %50, %42 ]
  call void @llvm.dbg.value(metadata i64 %43, metadata !302, metadata !DIExpression()), !dbg !303
  %44 = or i64 %43, 1, !dbg !324
  %45 = trunc i64 %44 to i32, !dbg !325
  %46 = sitofp i32 %45 to double, !dbg !325
  %47 = fmul double %41, %46, !dbg !326
  %48 = fdiv double %47, 8.000000e+03, !dbg !327
  %49 = getelementptr inbounds [8000 x double], [8000 x double]* %37, i64 %39, i64 %43, !dbg !328
  store double %48, double* %49, align 8, !dbg !329, !tbaa !150
  call void @llvm.dbg.value(metadata i64 %44, metadata !302, metadata !DIExpression()), !dbg !303
  %50 = add nuw nsw i64 %43, 2, !dbg !324
  %51 = trunc i64 %50 to i32, !dbg !325
  %52 = sitofp i32 %51 to double, !dbg !325
  %53 = fmul double %41, %52, !dbg !326
  %54 = fdiv double %53, 8.000000e+03, !dbg !327
  %55 = getelementptr inbounds [8000 x double], [8000 x double]* %37, i64 %39, i64 %44, !dbg !328
  store double %54, double* %55, align 8, !dbg !329, !tbaa !150
  call void @llvm.dbg.value(metadata i64 %50, metadata !302, metadata !DIExpression()), !dbg !303
  %56 = icmp eq i64 %50, 8000, !dbg !330
  br i1 %56, label %57, label %42, !dbg !323, !llvm.loop !331

57:                                               ; preds = %42
  %58 = add nuw nsw i64 %39, 1, !dbg !333
  call void @llvm.dbg.value(metadata i64 %58, metadata !301, metadata !DIExpression()), !dbg !303
  %59 = icmp eq i64 %58, 8000, !dbg !334
  br i1 %59, label %60, label %38, !dbg !317, !llvm.loop !335

60:                                               ; preds = %57
  %61 = bitcast i8* %5 to double*, !dbg !337
  %62 = bitcast i8* %6 to double*, !dbg !338
  tail call void @kernel_atax(i32 8000, i32 8000, [8000 x double]* nonnull %37, double* %7, double* %61, double* %62), !dbg !339
  %63 = icmp sgt i32 %0, 42, !dbg !340
  br i1 %63, label %64, label %90, !dbg !340

64:                                               ; preds = %60
  %65 = load i8*, i8** %1, align 8, !dbg !340, !tbaa !44
  %66 = load i8, i8* %65, align 1, !dbg !340
  %67 = icmp eq i8 %66, 0, !dbg !340
  br i1 %67, label %68, label %90, !dbg !342

68:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i32 8000, metadata !343, metadata !DIExpression()) #8, !dbg !348
  call void @llvm.dbg.value(metadata double* %61, metadata !346, metadata !DIExpression()) #8, !dbg !348
  call void @llvm.dbg.value(metadata i32 0, metadata !347, metadata !DIExpression()) #8, !dbg !348
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !348, !tbaa !44
  br label %70, !dbg !350

70:                                               ; preds = %83, %68
  %71 = phi i64 [ 0, %68 ], [ %84, %83 ]
  %72 = phi %struct._IO_FILE* [ %69, %68 ], [ %86, %83 ]
  %73 = phi i32 [ 0, %68 ], [ %85, %83 ]
  call void @llvm.dbg.value(metadata i64 %71, metadata !347, metadata !DIExpression()) #8, !dbg !348
  %74 = getelementptr inbounds double, double* %61, i64 %71, !dbg !352
  %75 = load double, double* %74, align 8, !dbg !352, !tbaa !150
  %76 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), double %75) #9, !dbg !355
  %77 = trunc i32 %73 to i16, !dbg !356
  %78 = urem i16 %77, 20, !dbg !356
  %79 = icmp eq i16 %78, 0, !dbg !358
  br i1 %79, label %80, label %83, !dbg !359

80:                                               ; preds = %70
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !360, !tbaa !44
  %82 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %81) #9, !dbg !361
  br label %83, !dbg !361

83:                                               ; preds = %80, %70
  %84 = add nuw nsw i64 %71, 1, !dbg !362
  %85 = add nuw nsw i32 %73, 1, !dbg !362
  call void @llvm.dbg.value(metadata i64 %84, metadata !347, metadata !DIExpression()) #8, !dbg !348
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !348, !tbaa !44
  %87 = icmp eq i64 %84, 8000, !dbg !363
  br i1 %87, label %88, label %70, !dbg !350, !llvm.loop !364

88:                                               ; preds = %83
  %89 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %86) #9, !dbg !366
  br label %90, !dbg !340

90:                                               ; preds = %64, %88, %60
  tail call void @free(i8* %3) #8, !dbg !367
  tail call void @free(i8* %4) #8, !dbg !368
  tail call void @free(i8* %5) #8, !dbg !369
  tail call void @free(i8* %6) #8, !dbg !370
  ret i32 0, !dbg !371
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
!1 = !DIFile(filename: "../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/atax/atax.c", directory: "/WAVE/users/unix/klor/ycho_lab/kimsong_lor/autotuning_tools/scripts")
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
!32 = distinct !DISubprogram(name: "kernel_p1", scope: !1, file: !1, line: 53, type: !33, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !36)
!33 = !DISubroutineType(types: !34)
!34 = !{null, !20, !35}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!36 = !{!37, !38}
!37 = !DILocalVariable(name: "ny", arg: 1, scope: !32, file: !1, line: 53, type: !20)
!38 = !DILocalVariable(name: "y", arg: 2, scope: !32, file: !1, line: 53, type: !35)
!39 = !DILocation(line: 0, scope: !32)
!40 = !{!41, !41, i64 0}
!41 = !{!"int", !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C/C++ TBAA"}
!44 = !{!45, !45, i64 0}
!45 = !{!"any pointer", !42, i64 0}
!46 = !DILocation(line: 55, column: 1, scope: !32)
!47 = !{!48, !45, i64 16}
!48 = !{!"ident_t", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !45, i64 16}
!49 = !DILocation(line: 58, column: 1, scope: !32)
!50 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 56, type: !51, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !59)
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
!63 = !DILocalVariable(name: "y", arg: 4, scope: !50, type: !58, flags: DIFlagArtificial)
!64 = !DILocation(line: 0, scope: !50)
!65 = !DILocation(line: 56, column: 3, scope: !50)
!66 = !{!67}
!67 = distinct !{!67, !68, !".omp_outlined._debug__: argument 0"}
!68 = distinct !{!68, !".omp_outlined._debug__"}
!69 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !70, type: !53, flags: DIFlagArtificial)
!70 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 56, type: !51, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !71)
!71 = !{!69, !72, !73, !74, !75, !76, !76, !77, !78, !79, !80, !81, !77}
!72 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !70, type: !53, flags: DIFlagArtificial)
!73 = !DILocalVariable(name: "ny", arg: 3, scope: !70, file: !1, line: 53, type: !57)
!74 = !DILocalVariable(name: "y", arg: 4, scope: !70, file: !1, line: 53, type: !58)
!75 = !DILocalVariable(name: ".omp.iv", scope: !70, type: !20, flags: DIFlagArtificial)
!76 = !DILocalVariable(name: ".capture_expr.", scope: !70, type: !20, flags: DIFlagArtificial)
!77 = !DILocalVariable(name: "i", scope: !70, type: !20, flags: DIFlagArtificial)
!78 = !DILocalVariable(name: ".omp.lb", scope: !70, type: !20, flags: DIFlagArtificial)
!79 = !DILocalVariable(name: ".omp.ub", scope: !70, type: !20, flags: DIFlagArtificial)
!80 = !DILocalVariable(name: ".omp.stride", scope: !70, type: !20, flags: DIFlagArtificial)
!81 = !DILocalVariable(name: ".omp.is_last", scope: !70, type: !20, flags: DIFlagArtificial)
!82 = !DILocation(line: 0, scope: !70, inlinedAt: !83)
!83 = distinct !DILocation(line: 56, column: 3, scope: !50)
!84 = !DILocation(line: 56, column: 3, scope: !70, inlinedAt: !83)
!85 = !DILocation(line: 56, column: 8, scope: !70, inlinedAt: !83)
!86 = !DILocation(line: 57, column: 10, scope: !70, inlinedAt: !83)
!87 = !DILocation(line: 55, column: 1, scope: !70, inlinedAt: !83)
!88 = !DILocation(line: 57, column: 12, scope: !70, inlinedAt: !83)
!89 = !{!90}
!90 = !{i64 2, i64 -1, i64 -1, i1 true}
!91 = distinct !DISubprogram(name: "kernel_p2", scope: !1, file: !1, line: 60, type: !92, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !94)
!92 = !DISubroutineType(types: !93)
!93 = !{null, !20, !20, !21, !35, !35}
!94 = !{!95, !96, !97, !98, !99}
!95 = !DILocalVariable(name: "nx", arg: 1, scope: !91, file: !1, line: 60, type: !20)
!96 = !DILocalVariable(name: "ny", arg: 2, scope: !91, file: !1, line: 60, type: !20)
!97 = !DILocalVariable(name: "A", arg: 3, scope: !91, file: !1, line: 61, type: !21)
!98 = !DILocalVariable(name: "x", arg: 4, scope: !91, file: !1, line: 62, type: !35)
!99 = !DILocalVariable(name: "tmp", arg: 5, scope: !91, file: !1, line: 63, type: !35)
!100 = !DILocation(line: 0, scope: !91)
!101 = !DILocation(line: 65, column: 1, scope: !91)
!102 = !DILocation(line: 72, column: 1, scope: !91)
!103 = distinct !DISubprogram(name: ".omp_outlined..2", scope: !1, file: !1, line: 66, type: !104, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !107)
!104 = !DISubroutineType(types: !105)
!105 = !{null, !53, !53, !57, !58, !57, !106, !58}
!106 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !21, size: 64)
!107 = !{!108, !109, !110, !111, !112, !113, !114}
!108 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !103, type: !53, flags: DIFlagArtificial)
!109 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !103, type: !53, flags: DIFlagArtificial)
!110 = !DILocalVariable(name: "nx", arg: 3, scope: !103, type: !57, flags: DIFlagArtificial)
!111 = !DILocalVariable(name: "tmp", arg: 4, scope: !103, type: !58, flags: DIFlagArtificial)
!112 = !DILocalVariable(name: "ny", arg: 5, scope: !103, type: !57, flags: DIFlagArtificial)
!113 = !DILocalVariable(name: "A", arg: 6, scope: !103, type: !106, flags: DIFlagArtificial)
!114 = !DILocalVariable(name: "x", arg: 7, scope: !103, type: !58, flags: DIFlagArtificial)
!115 = !DILocation(line: 0, scope: !103)
!116 = !DILocation(line: 66, column: 3, scope: !103)
!117 = !{!118}
!118 = distinct !{!118, !119, !".omp_outlined._debug__.1: argument 0"}
!119 = distinct !{!119, !".omp_outlined._debug__.1"}
!120 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !121, type: !53, flags: DIFlagArtificial)
!121 = distinct !DISubprogram(name: ".omp_outlined._debug__.1", scope: !1, file: !1, line: 66, type: !104, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !122)
!122 = !{!120, !123, !124, !125, !126, !127, !128, !129, !130, !130, !131, !132, !133, !134, !135, !131, !136}
!123 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !121, type: !53, flags: DIFlagArtificial)
!124 = !DILocalVariable(name: "nx", arg: 3, scope: !121, file: !1, line: 60, type: !57)
!125 = !DILocalVariable(name: "tmp", arg: 4, scope: !121, file: !1, line: 63, type: !58)
!126 = !DILocalVariable(name: "ny", arg: 5, scope: !121, file: !1, line: 60, type: !57)
!127 = !DILocalVariable(name: "A", arg: 6, scope: !121, file: !1, line: 61, type: !106)
!128 = !DILocalVariable(name: "x", arg: 7, scope: !121, file: !1, line: 62, type: !58)
!129 = !DILocalVariable(name: ".omp.iv", scope: !121, type: !20, flags: DIFlagArtificial)
!130 = !DILocalVariable(name: ".capture_expr.", scope: !121, type: !20, flags: DIFlagArtificial)
!131 = !DILocalVariable(name: "i", scope: !121, type: !20, flags: DIFlagArtificial)
!132 = !DILocalVariable(name: ".omp.lb", scope: !121, type: !20, flags: DIFlagArtificial)
!133 = !DILocalVariable(name: ".omp.ub", scope: !121, type: !20, flags: DIFlagArtificial)
!134 = !DILocalVariable(name: ".omp.stride", scope: !121, type: !20, flags: DIFlagArtificial)
!135 = !DILocalVariable(name: ".omp.is_last", scope: !121, type: !20, flags: DIFlagArtificial)
!136 = !DILocalVariable(name: "j", scope: !137, file: !1, line: 69, type: !20)
!137 = distinct !DILexicalBlock(scope: !138, file: !1, line: 69, column: 5)
!138 = distinct !DILexicalBlock(scope: !121, file: !1, line: 67, column: 3)
!139 = !DILocation(line: 0, scope: !121, inlinedAt: !140)
!140 = distinct !DILocation(line: 66, column: 3, scope: !103)
!141 = !DILocation(line: 66, column: 3, scope: !121, inlinedAt: !140)
!142 = !DILocation(line: 66, column: 8, scope: !121, inlinedAt: !140)
!143 = !DILocation(line: 0, scope: !138, inlinedAt: !140)
!144 = !DILocation(line: 0, scope: !145, inlinedAt: !140)
!145 = distinct !DILexicalBlock(scope: !137, file: !1, line: 69, column: 5)
!146 = !DILocation(line: 65, column: 1, scope: !121, inlinedAt: !140)
!147 = !DILocation(line: 68, column: 12, scope: !138, inlinedAt: !140)
!148 = !DILocation(line: 0, scope: !137, inlinedAt: !140)
!149 = !DILocation(line: 68, column: 5, scope: !138, inlinedAt: !140)
!150 = !{!151, !151, i64 0}
!151 = !{!"double", !42, i64 0}
!152 = !DILocation(line: 69, column: 5, scope: !137, inlinedAt: !140)
!153 = !DILocation(line: 70, column: 14, scope: !145, inlinedAt: !140)
!154 = !DILocation(line: 70, column: 17, scope: !145, inlinedAt: !140)
!155 = !DILocation(line: 70, column: 27, scope: !145, inlinedAt: !140)
!156 = !DILocation(line: 70, column: 25, scope: !145, inlinedAt: !140)
!157 = !DILocation(line: 69, column: 30, scope: !145, inlinedAt: !140)
!158 = distinct !{!158, !152, !159}
!159 = !DILocation(line: 70, column: 30, scope: !137, inlinedAt: !140)
!160 = distinct !{!160, !146, !161}
!161 = !DILocation(line: 65, column: 25, scope: !121, inlinedAt: !140)
!162 = !DILocation(line: 71, column: 3, scope: !121, inlinedAt: !140)
!163 = distinct !DISubprogram(name: "kernel_p3", scope: !1, file: !1, line: 74, type: !92, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !164)
!164 = !{!165, !166, !167, !168, !169}
!165 = !DILocalVariable(name: "nx", arg: 1, scope: !163, file: !1, line: 74, type: !20)
!166 = !DILocalVariable(name: "ny", arg: 2, scope: !163, file: !1, line: 74, type: !20)
!167 = !DILocalVariable(name: "A", arg: 3, scope: !163, file: !1, line: 75, type: !21)
!168 = !DILocalVariable(name: "tmp", arg: 4, scope: !163, file: !1, line: 76, type: !35)
!169 = !DILocalVariable(name: "y", arg: 5, scope: !163, file: !1, line: 77, type: !35)
!170 = !DILocation(line: 0, scope: !163)
!171 = !DILocation(line: 79, column: 1, scope: !163)
!172 = !DILocation(line: 85, column: 1, scope: !163)
!173 = distinct !DISubprogram(name: ".omp_outlined..4", scope: !1, file: !1, line: 80, type: !174, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !176)
!174 = !DISubroutineType(types: !175)
!175 = !{null, !53, !53, !57, !57, !58, !106, !58}
!176 = !{!177, !178, !179, !180, !181, !182, !183}
!177 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !173, type: !53, flags: DIFlagArtificial)
!178 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !173, type: !53, flags: DIFlagArtificial)
!179 = !DILocalVariable(name: "nx", arg: 3, scope: !173, type: !57, flags: DIFlagArtificial)
!180 = !DILocalVariable(name: "ny", arg: 4, scope: !173, type: !57, flags: DIFlagArtificial)
!181 = !DILocalVariable(name: "y", arg: 5, scope: !173, type: !58, flags: DIFlagArtificial)
!182 = !DILocalVariable(name: "A", arg: 6, scope: !173, type: !106, flags: DIFlagArtificial)
!183 = !DILocalVariable(name: "tmp", arg: 7, scope: !173, type: !58, flags: DIFlagArtificial)
!184 = !DILocation(line: 0, scope: !173)
!185 = !DILocation(line: 80, column: 3, scope: !173)
!186 = !{!187}
!187 = distinct !{!187, !188, !".omp_outlined._debug__.3: argument 0"}
!188 = distinct !{!188, !".omp_outlined._debug__.3"}
!189 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !190, type: !53, flags: DIFlagArtificial)
!190 = distinct !DISubprogram(name: ".omp_outlined._debug__.3", scope: !1, file: !1, line: 80, type: !174, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !191)
!191 = !{!189, !192, !193, !194, !195, !196, !197, !198, !199, !199, !200, !201, !202, !203, !204, !200, !205}
!192 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !190, type: !53, flags: DIFlagArtificial)
!193 = !DILocalVariable(name: "nx", arg: 3, scope: !190, file: !1, line: 74, type: !57)
!194 = !DILocalVariable(name: "ny", arg: 4, scope: !190, file: !1, line: 74, type: !57)
!195 = !DILocalVariable(name: "y", arg: 5, scope: !190, file: !1, line: 77, type: !58)
!196 = !DILocalVariable(name: "A", arg: 6, scope: !190, file: !1, line: 75, type: !106)
!197 = !DILocalVariable(name: "tmp", arg: 7, scope: !190, file: !1, line: 76, type: !58)
!198 = !DILocalVariable(name: ".omp.iv", scope: !190, type: !20, flags: DIFlagArtificial)
!199 = !DILocalVariable(name: ".capture_expr.", scope: !190, type: !20, flags: DIFlagArtificial)
!200 = !DILocalVariable(name: "i", scope: !190, type: !20, flags: DIFlagArtificial)
!201 = !DILocalVariable(name: ".omp.lb", scope: !190, type: !20, flags: DIFlagArtificial)
!202 = !DILocalVariable(name: ".omp.ub", scope: !190, type: !20, flags: DIFlagArtificial)
!203 = !DILocalVariable(name: ".omp.stride", scope: !190, type: !20, flags: DIFlagArtificial)
!204 = !DILocalVariable(name: ".omp.is_last", scope: !190, type: !20, flags: DIFlagArtificial)
!205 = !DILocalVariable(name: "j", scope: !206, file: !1, line: 82, type: !20)
!206 = distinct !DILexicalBlock(scope: !207, file: !1, line: 82, column: 5)
!207 = distinct !DILexicalBlock(scope: !190, file: !1, line: 81, column: 3)
!208 = !DILocation(line: 0, scope: !190, inlinedAt: !209)
!209 = distinct !DILocation(line: 80, column: 3, scope: !173)
!210 = !DILocation(line: 80, column: 3, scope: !190, inlinedAt: !209)
!211 = !DILocation(line: 80, column: 8, scope: !190, inlinedAt: !209)
!212 = !DILocation(line: 0, scope: !213, inlinedAt: !209)
!213 = distinct !DILexicalBlock(scope: !206, file: !1, line: 82, column: 5)
!214 = !DILocation(line: 79, column: 1, scope: !190, inlinedAt: !209)
!215 = !DILocation(line: 0, scope: !206, inlinedAt: !209)
!216 = !DILocation(line: 82, column: 5, scope: !206, inlinedAt: !209)
!217 = !{!218}
!218 = distinct !{!218, !219}
!219 = distinct !{!219, !"LVerDomain"}
!220 = !DILocation(line: 82, column: 30, scope: !213, inlinedAt: !209)
!221 = !DILocation(line: 83, column: 15, scope: !213, inlinedAt: !209)
!222 = !{!223}
!223 = distinct !{!223, !219}
!224 = !DILocation(line: 83, column: 7, scope: !213, inlinedAt: !209)
!225 = !DILocation(line: 83, column: 12, scope: !213, inlinedAt: !209)
!226 = !{!227}
!227 = distinct !{!227, !219}
!228 = !{!187, !223, !218}
!229 = distinct !{!229, !216, !230, !231}
!230 = !DILocation(line: 83, column: 30, scope: !206, inlinedAt: !209)
!231 = !{!"llvm.loop.isvectorized", i32 1}
!232 = !DILocation(line: 83, column: 25, scope: !213, inlinedAt: !209)
!233 = !DILocation(line: 83, column: 23, scope: !213, inlinedAt: !209)
!234 = !DILocation(line: 82, column: 23, scope: !213, inlinedAt: !209)
!235 = distinct !{!235, !216, !230, !231}
!236 = distinct !{!236, !214, !237}
!237 = !DILocation(line: 79, column: 25, scope: !190, inlinedAt: !209)
!238 = !DILocation(line: 84, column: 3, scope: !190, inlinedAt: !209)
!239 = distinct !DISubprogram(name: "kernel_atax", scope: !1, file: !1, line: 89, type: !240, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !242)
!240 = !DISubroutineType(types: !241)
!241 = !{null, !20, !20, !21, !35, !35, !35}
!242 = !{!243, !244, !245, !246, !247, !248}
!243 = !DILocalVariable(name: "nx", arg: 1, scope: !239, file: !1, line: 89, type: !20)
!244 = !DILocalVariable(name: "ny", arg: 2, scope: !239, file: !1, line: 89, type: !20)
!245 = !DILocalVariable(name: "A", arg: 3, scope: !239, file: !1, line: 90, type: !21)
!246 = !DILocalVariable(name: "x", arg: 4, scope: !239, file: !1, line: 91, type: !35)
!247 = !DILocalVariable(name: "y", arg: 5, scope: !239, file: !1, line: 92, type: !35)
!248 = !DILocalVariable(name: "tmp", arg: 6, scope: !239, file: !1, line: 93, type: !35)
!249 = !DILocation(line: 0, scope: !239)
!250 = !DILocation(line: 96, column: 3, scope: !239)
!251 = !DILocation(line: 0, scope: !32, inlinedAt: !252)
!252 = distinct !DILocation(line: 97, column: 3, scope: !239)
!253 = !DILocation(line: 55, column: 1, scope: !32, inlinedAt: !252)
!254 = !DILocation(line: 58, column: 1, scope: !32, inlinedAt: !252)
!255 = !DILocation(line: 98, column: 3, scope: !239)
!256 = !DILocation(line: 99, column: 3, scope: !239)
!257 = !DILocation(line: 101, column: 3, scope: !239)
!258 = !DILocation(line: 0, scope: !91, inlinedAt: !259)
!259 = distinct !DILocation(line: 102, column: 3, scope: !239)
!260 = !DILocation(line: 65, column: 1, scope: !91, inlinedAt: !259)
!261 = !DILocation(line: 72, column: 1, scope: !91, inlinedAt: !259)
!262 = !DILocation(line: 103, column: 3, scope: !239)
!263 = !DILocation(line: 104, column: 3, scope: !239)
!264 = !DILocation(line: 106, column: 3, scope: !239)
!265 = !DILocation(line: 0, scope: !163, inlinedAt: !266)
!266 = distinct !DILocation(line: 107, column: 3, scope: !239)
!267 = !DILocation(line: 79, column: 1, scope: !163, inlinedAt: !266)
!268 = !DILocation(line: 85, column: 1, scope: !163, inlinedAt: !266)
!269 = !DILocation(line: 108, column: 3, scope: !239)
!270 = !DILocation(line: 109, column: 3, scope: !239)
!271 = !DILocation(line: 111, column: 1, scope: !239)
!272 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 113, type: !273, scopeLine: 114, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !278)
!273 = !DISubroutineType(types: !274)
!274 = !{!20, !20, !275}
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!278 = !{!279, !280, !281, !282, !283, !284, !285, !286}
!279 = !DILocalVariable(name: "argc", arg: 1, scope: !272, file: !1, line: 113, type: !20)
!280 = !DILocalVariable(name: "argv", arg: 2, scope: !272, file: !1, line: 113, type: !275)
!281 = !DILocalVariable(name: "nx", scope: !272, file: !1, line: 116, type: !20)
!282 = !DILocalVariable(name: "ny", scope: !272, file: !1, line: 117, type: !20)
!283 = !DILocalVariable(name: "A", scope: !272, file: !1, line: 120, type: !10)
!284 = !DILocalVariable(name: "x", scope: !272, file: !1, line: 121, type: !21)
!285 = !DILocalVariable(name: "y", scope: !272, file: !1, line: 122, type: !21)
!286 = !DILocalVariable(name: "tmp", scope: !272, file: !1, line: 123, type: !21)
!287 = !DILocation(line: 0, scope: !272)
!288 = !DILocation(line: 120, column: 3, scope: !272)
!289 = !DILocation(line: 121, column: 3, scope: !272)
!290 = !DILocation(line: 122, column: 3, scope: !272)
!291 = !DILocation(line: 123, column: 3, scope: !272)
!292 = !DILocation(line: 126, column: 42, scope: !272)
!293 = !DILocalVariable(name: "nx", arg: 1, scope: !294, file: !1, line: 23, type: !20)
!294 = distinct !DISubprogram(name: "init_array", scope: !1, file: !1, line: 23, type: !295, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !297)
!295 = !DISubroutineType(types: !296)
!296 = !{null, !20, !20, !21, !35}
!297 = !{!293, !298, !299, !300, !301, !302}
!298 = !DILocalVariable(name: "ny", arg: 2, scope: !294, file: !1, line: 23, type: !20)
!299 = !DILocalVariable(name: "A", arg: 3, scope: !294, file: !1, line: 24, type: !21)
!300 = !DILocalVariable(name: "x", arg: 4, scope: !294, file: !1, line: 25, type: !35)
!301 = !DILocalVariable(name: "i", scope: !294, file: !1, line: 27, type: !20)
!302 = !DILocalVariable(name: "j", scope: !294, file: !1, line: 27, type: !20)
!303 = !DILocation(line: 0, scope: !294, inlinedAt: !304)
!304 = distinct !DILocation(line: 126, column: 3, scope: !272)
!305 = !DILocation(line: 29, column: 3, scope: !306, inlinedAt: !304)
!306 = distinct !DILexicalBlock(scope: !294, file: !1, line: 29, column: 3)
!307 = !DILocation(line: 30, column: 12, scope: !308, inlinedAt: !304)
!308 = distinct !DILexicalBlock(scope: !306, file: !1, line: 29, column: 3)
!309 = !DILocation(line: 30, column: 14, scope: !308, inlinedAt: !304)
!310 = !DILocation(line: 30, column: 5, scope: !308, inlinedAt: !304)
!311 = !DILocation(line: 30, column: 10, scope: !308, inlinedAt: !304)
!312 = !DILocation(line: 29, column: 24, scope: !308, inlinedAt: !304)
!313 = !DILocation(line: 29, column: 17, scope: !308, inlinedAt: !304)
!314 = distinct !{!314, !305, !315}
!315 = !DILocation(line: 30, column: 16, scope: !306, inlinedAt: !304)
!316 = !DILocation(line: 126, column: 22, scope: !272)
!317 = !DILocation(line: 31, column: 3, scope: !318, inlinedAt: !304)
!318 = distinct !DILexicalBlock(scope: !294, file: !1, line: 31, column: 3)
!319 = !DILocation(line: 0, scope: !320, inlinedAt: !304)
!320 = distinct !DILexicalBlock(scope: !321, file: !1, line: 32, column: 5)
!321 = distinct !DILexicalBlock(scope: !322, file: !1, line: 32, column: 5)
!322 = distinct !DILexicalBlock(scope: !318, file: !1, line: 31, column: 3)
!323 = !DILocation(line: 32, column: 5, scope: !321, inlinedAt: !304)
!324 = !DILocation(line: 33, column: 36, scope: !320, inlinedAt: !304)
!325 = !DILocation(line: 33, column: 33, scope: !320, inlinedAt: !304)
!326 = !DILocation(line: 33, column: 31, scope: !320, inlinedAt: !304)
!327 = !DILocation(line: 33, column: 42, scope: !320, inlinedAt: !304)
!328 = !DILocation(line: 33, column: 7, scope: !320, inlinedAt: !304)
!329 = !DILocation(line: 33, column: 15, scope: !320, inlinedAt: !304)
!330 = !DILocation(line: 32, column: 19, scope: !320, inlinedAt: !304)
!331 = distinct !{!331, !323, !332}
!332 = !DILocation(line: 33, column: 44, scope: !321, inlinedAt: !304)
!333 = !DILocation(line: 31, column: 24, scope: !322, inlinedAt: !304)
!334 = !DILocation(line: 31, column: 17, scope: !322, inlinedAt: !304)
!335 = distinct !{!335, !317, !336}
!336 = !DILocation(line: 33, column: 44, scope: !318, inlinedAt: !304)
!337 = !DILocation(line: 135, column: 15, scope: !272)
!338 = !DILocation(line: 136, column: 15, scope: !272)
!339 = !DILocation(line: 132, column: 3, scope: !272)
!340 = !DILocation(line: 144, column: 3, scope: !341)
!341 = distinct !DILexicalBlock(scope: !272, file: !1, line: 144, column: 3)
!342 = !DILocation(line: 144, column: 3, scope: !272)
!343 = !DILocalVariable(name: "nx", arg: 1, scope: !344, file: !1, line: 38, type: !20)
!344 = distinct !DISubprogram(name: "print_array", scope: !1, file: !1, line: 38, type: !33, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !345)
!345 = !{!343, !346, !347}
!346 = !DILocalVariable(name: "y", arg: 2, scope: !344, file: !1, line: 39, type: !35)
!347 = !DILocalVariable(name: "i", scope: !344, file: !1, line: 42, type: !20)
!348 = !DILocation(line: 0, scope: !344, inlinedAt: !349)
!349 = distinct !DILocation(line: 144, column: 3, scope: !341)
!350 = !DILocation(line: 44, column: 3, scope: !351, inlinedAt: !349)
!351 = distinct !DILexicalBlock(scope: !344, file: !1, line: 44, column: 3)
!352 = !DILocation(line: 46, column: 43, scope: !353, inlinedAt: !349)
!353 = distinct !DILexicalBlock(scope: !354, file: !1, line: 45, column: 3)
!354 = distinct !DILexicalBlock(scope: !351, file: !1, line: 44, column: 3)
!355 = !DILocation(line: 46, column: 5, scope: !353, inlinedAt: !349)
!356 = !DILocation(line: 47, column: 11, scope: !357, inlinedAt: !349)
!357 = distinct !DILexicalBlock(scope: !353, file: !1, line: 47, column: 9)
!358 = !DILocation(line: 47, column: 16, scope: !357, inlinedAt: !349)
!359 = !DILocation(line: 47, column: 9, scope: !353, inlinedAt: !349)
!360 = !DILocation(line: 48, column: 15, scope: !357, inlinedAt: !349)
!361 = !DILocation(line: 48, column: 7, scope: !357, inlinedAt: !349)
!362 = !DILocation(line: 44, column: 24, scope: !354, inlinedAt: !349)
!363 = !DILocation(line: 44, column: 17, scope: !354, inlinedAt: !349)
!364 = distinct !{!364, !350, !365}
!365 = !DILocation(line: 49, column: 3, scope: !351, inlinedAt: !349)
!366 = !DILocation(line: 50, column: 3, scope: !344, inlinedAt: !349)
!367 = !DILocation(line: 147, column: 3, scope: !272)
!368 = !DILocation(line: 148, column: 3, scope: !272)
!369 = !DILocation(line: 149, column: 3, scope: !272)
!370 = !DILocation(line: 150, column: 3, scope: !272)
!371 = !DILocation(line: 152, column: 3, scope: !272)
