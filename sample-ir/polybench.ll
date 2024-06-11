; ModuleID = '../test/poly_gpu/inputs_kernel_splits/utilities/polybench.c'
source_filename = "../test/poly_gpu/inputs_kernel_splits/utilities/polybench.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.timeval = type { i64, i64 }
%struct.timezone = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [90 x i8] c";../test/poly_gpu/inputs_kernel_splits/utilities/polybench.c;polybench_flush_cache;92;1;;\00", align 1
@2 = private unnamed_addr constant [91 x i8] c";../test/poly_gpu/inputs_kernel_splits/utilities/polybench.c;polybench_flush_cache;92;25;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"tmp <= 10.0\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"../test/poly_gpu/inputs_kernel_splits/utilities/polybench.c\00", align 1
@__PRETTY_FUNCTION__.polybench_flush_cache = private unnamed_addr constant [29 x i8] c"void polybench_flush_cache()\00", align 1
@polybench_t_start = common dso_local local_unnamed_addr global double 0.000000e+00, align 8, !dbg !0
@polybench_t_end = common dso_local local_unnamed_addr global double 0.000000e+00, align 8, !dbg !39
@.str.3 = private unnamed_addr constant [7 x i8] c"%0.6f\0A\00", align 1
@polybench_c_start = common dso_local local_unnamed_addr global i64 0, align 8, !dbg !41
@polybench_c_end = common dso_local local_unnamed_addr global i64 0, align 8, !dbg !44
@polybench_papi_counters_threadid = dso_local local_unnamed_addr global i32 0, align 4, !dbg !46
@polybench_program_total_flops = dso_local local_unnamed_addr global double 0.000000e+00, align 8, !dbg !48
@.str.4 = private unnamed_addr constant [35 x i8] c"Error return from gettimeofday: %d\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.5 = private unnamed_addr constant [51 x i8] c"[PolyBench] posix_memalign: cannot allocate memory\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @polybench_flush_cache() local_unnamed_addr #0 !dbg !54 {
  %1 = alloca i32, align 4
  %2 = alloca double*, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.ident_t, align 8
  %5 = bitcast %struct.ident_t* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %5, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @3 to i8*), i64 16, i1 false)
  %6 = bitcast i32* %1 to i8*, !dbg !62
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9, !dbg !62
  call void @llvm.dbg.value(metadata i32 4194560, metadata !58, metadata !DIExpression()), !dbg !63
  store i32 4194560, i32* %1, align 4, !dbg !64, !tbaa !65
  %7 = bitcast double** %2 to i8*, !dbg !69
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #9, !dbg !69
  call void @llvm.dbg.value(metadata i32 4194560, metadata !58, metadata !DIExpression()), !dbg !63
  %8 = tail call noalias dereferenceable_or_null(33556480) i8* @calloc(i64 4194560, i64 8) #9, !dbg !70
  call void @llvm.dbg.value(metadata i8* %8, metadata !59, metadata !DIExpression()), !dbg !63
  %9 = bitcast double** %2 to i8**, !dbg !71
  store i8* %8, i8** %9, align 8, !dbg !71, !tbaa !72
  %10 = bitcast double* %3 to i8*, !dbg !74
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #9, !dbg !74
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !61, metadata !DIExpression()), !dbg !63
  store double 0.000000e+00, double* %3, align 8, !dbg !75, !tbaa !76
  %11 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %4, i64 0, i32 4, !dbg !78
  store i8* getelementptr inbounds ([90 x i8], [90 x i8]* @1, i64 0, i64 0), i8** %11, align 8, !dbg !78, !tbaa !79
  call void @llvm.dbg.value(metadata i32* %1, metadata !58, metadata !DIExpression(DW_OP_deref)), !dbg !63
  call void @llvm.dbg.value(metadata double** %2, metadata !59, metadata !DIExpression(DW_OP_deref)), !dbg !63
  call void @llvm.dbg.value(metadata double* %3, metadata !61, metadata !DIExpression(DW_OP_deref)), !dbg !63
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %4, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, double*, double**)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %1, double* nonnull %3, double** nonnull %2) #9, !dbg !78
  %12 = load double, double* %3, align 8, !dbg !81, !tbaa !76
  call void @llvm.dbg.value(metadata double %12, metadata !61, metadata !DIExpression()), !dbg !63
  %13 = fcmp ugt double %12, 1.000000e+01, !dbg !81
  br i1 %13, label %14, label %15, !dbg !84

14:                                               ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.polybench_flush_cache, i64 0, i64 0)) #10, !dbg !81
  unreachable, !dbg !81

15:                                               ; preds = %0
  %16 = load i8*, i8** %9, align 8, !dbg !85, !tbaa !72
  call void @llvm.dbg.value(metadata double* undef, metadata !59, metadata !DIExpression()), !dbg !63
  call void @free(i8* %16) #9, !dbg !86
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #9, !dbg !87
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #9, !dbg !87
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9, !dbg !87
  ret void, !dbg !87
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nofree nounwind
declare dso_local noalias i8* @calloc(i64, i64) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32) local_unnamed_addr

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32) local_unnamed_addr

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture readonly dereferenceable(4) %2, double* nocapture dereferenceable(8) %3, double** nocapture readonly dereferenceable(8) %4) #4 !dbg !88 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ident_t, align 8
  call void @llvm.dbg.value(metadata i32* %0, metadata !99, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.value(metadata i32* %1, metadata !100, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.value(metadata i32* %2, metadata !101, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.value(metadata double* %3, metadata !102, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.value(metadata double** %4, metadata !103, metadata !DIExpression()), !dbg !104
  %11 = load i32, i32* %2, align 4, !dbg !105, !tbaa !65
  %12 = bitcast %struct.ident_t* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %12)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %12, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @0 to i8*), i64 24, i1 false) #9, !noalias !106
  call void @llvm.dbg.value(metadata i32* %0, metadata !109, metadata !DIExpression()) #9, !dbg !123
  call void @llvm.dbg.value(metadata i32* undef, metadata !112, metadata !DIExpression()) #9, !dbg !123
  call void @llvm.dbg.value(metadata double* %3, metadata !114, metadata !DIExpression()) #9, !dbg !123
  call void @llvm.dbg.value(metadata double** %4, metadata !115, metadata !DIExpression()) #9, !dbg !123
  call void @llvm.dbg.value(metadata i32 %11, metadata !117, metadata !DIExpression()) #9, !dbg !123
  %13 = add nsw i32 %11, -1, !dbg !125
  call void @llvm.dbg.value(metadata i32 %13, metadata !117, metadata !DIExpression()) #9, !dbg !123
  call void @llvm.dbg.value(metadata i32 0, metadata !118, metadata !DIExpression()) #9, !dbg !123
  %14 = icmp sgt i32 %11, 0, !dbg !125
  br i1 %14, label %15, label %41, !dbg !125

15:                                               ; preds = %5
  %16 = bitcast i32* %6 to i8*, !dbg !125
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %16) #9, !dbg !125, !noalias !106
  call void @llvm.dbg.value(metadata i32 0, metadata !119, metadata !DIExpression()) #9, !dbg !123
  store i32 0, i32* %6, align 4, !dbg !126, !tbaa !65, !noalias !106
  %17 = bitcast i32* %7 to i8*, !dbg !125
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %17) #9, !dbg !125, !noalias !106
  call void @llvm.dbg.value(metadata i32 %13, metadata !120, metadata !DIExpression()) #9, !dbg !123
  store i32 %13, i32* %7, align 4, !dbg !126, !tbaa !65, !noalias !106
  %18 = bitcast i32* %8 to i8*, !dbg !125
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18) #9, !dbg !125, !noalias !106
  call void @llvm.dbg.value(metadata i32 1, metadata !121, metadata !DIExpression()) #9, !dbg !123
  store i32 1, i32* %8, align 4, !dbg !126, !tbaa !65, !noalias !106
  %19 = bitcast i32* %9 to i8*, !dbg !125
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #9, !dbg !125, !noalias !106
  call void @llvm.dbg.value(metadata i32 0, metadata !122, metadata !DIExpression()) #9, !dbg !123
  store i32 0, i32* %9, align 4, !dbg !126, !tbaa !65, !noalias !106
  %20 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %10, i64 0, i32 4, !dbg !125
  store i8* getelementptr inbounds ([90 x i8], [90 x i8]* @1, i64 0, i64 0), i8** %20, align 8, !dbg !125, !tbaa !79, !noalias !106
  %21 = load i32, i32* %0, align 4, !dbg !125, !tbaa !65, !alias.scope !106
  call void @llvm.dbg.value(metadata i32* %6, metadata !119, metadata !DIExpression(DW_OP_deref)) #9, !dbg !123
  call void @llvm.dbg.value(metadata i32* %7, metadata !120, metadata !DIExpression(DW_OP_deref)) #9, !dbg !123
  call void @llvm.dbg.value(metadata i32* %8, metadata !121, metadata !DIExpression(DW_OP_deref)) #9, !dbg !123
  call void @llvm.dbg.value(metadata i32* %9, metadata !122, metadata !DIExpression(DW_OP_deref)) #9, !dbg !123
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull %10, i32 %21, i32 34, i32* nonnull %9, i32* nonnull %6, i32* nonnull %7, i32* nonnull %8, i32 1, i32 1) #9, !dbg !125, !noalias !106
  %22 = load i32, i32* %7, align 4, !dbg !126, !tbaa !65, !noalias !106
  call void @llvm.dbg.value(metadata i32 %22, metadata !120, metadata !DIExpression()) #9, !dbg !123
  %23 = icmp slt i32 %22, %11, !dbg !126
  %24 = select i1 %23, i32 %22, i32 %13, !dbg !126
  call void @llvm.dbg.value(metadata i32 %24, metadata !120, metadata !DIExpression()) #9, !dbg !123
  store i32 %24, i32* %7, align 4, !dbg !126, !tbaa !65, !noalias !106
  %25 = load i32, i32* %6, align 4, !dbg !126, !tbaa !65, !noalias !106
  call void @llvm.dbg.value(metadata i32 %25, metadata !119, metadata !DIExpression()) #9, !dbg !123
  call void @llvm.dbg.value(metadata i32 %25, metadata !116, metadata !DIExpression()) #9, !dbg !123
  call void @llvm.dbg.value(metadata i32 %24, metadata !120, metadata !DIExpression()) #9, !dbg !123
  %26 = icmp sgt i32 %25, %24, !dbg !125
  br i1 %26, label %40, label %27, !dbg !125

27:                                               ; preds = %15
  %28 = load double*, double** %4, align 8, !dbg !123, !tbaa !72, !noalias !106
  %29 = sext i32 %25 to i64, !dbg !125
  %30 = sext i32 %24 to i64, !dbg !125
  %31 = load double, double* %3, align 8, !dbg !127, !tbaa !76, !noalias !106
  br label %32, !dbg !125

32:                                               ; preds = %32, %27
  %33 = phi double [ %37, %32 ], [ %31, %27 ], !dbg !127
  %34 = phi i64 [ %38, %32 ], [ %29, %27 ]
  call void @llvm.dbg.value(metadata i64 %34, metadata !116, metadata !DIExpression()) #9, !dbg !123
  call void @llvm.dbg.value(metadata i64 %34, metadata !118, metadata !DIExpression()) #9, !dbg !123
  %35 = getelementptr inbounds double, double* %28, i64 %34, !dbg !128
  %36 = load double, double* %35, align 8, !dbg !128, !tbaa !76, !noalias !106
  %37 = fadd double %33, %36, !dbg !127
  store double %37, double* %3, align 8, !dbg !127, !tbaa !76, !noalias !106
  %38 = add nsw i64 %34, 1, !dbg !125
  call void @llvm.dbg.value(metadata i64 %38, metadata !116, metadata !DIExpression()) #9, !dbg !123
  call void @llvm.dbg.value(metadata i32 %24, metadata !120, metadata !DIExpression()) #9, !dbg !123
  %39 = icmp slt i64 %34, %30, !dbg !125
  br i1 %39, label %32, label %40, !dbg !125, !llvm.loop !129

40:                                               ; preds = %32, %15
  store i8* getelementptr inbounds ([91 x i8], [91 x i8]* @2, i64 0, i64 0), i8** %20, align 8, !dbg !130, !tbaa !79, !noalias !106
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull %10, i32 %21) #9, !dbg !130, !noalias !106
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #9, !dbg !130, !noalias !106
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #9, !dbg !130, !noalias !106
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %17) #9, !dbg !130, !noalias !106
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %16) #9, !dbg !130, !noalias !106
  br label %41, !dbg !130

41:                                               ; preds = %5, %40
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %12), !dbg !132
  ret void, !dbg !105
}

declare !callback !133 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #5

; Function Attrs: nounwind
declare !dbg !8 dso_local void @free(i8* nocapture) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @polybench_prepare_instruments() local_unnamed_addr #0 !dbg !135 {
  %1 = alloca i32, align 4
  %2 = alloca double*, align 8
  %3 = alloca double, align 8
  %4 = alloca %struct.ident_t, align 8
  %5 = bitcast %struct.ident_t* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %5, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @3 to i8*), i64 16, i1 false) #9
  %6 = bitcast i32* %1 to i8*, !dbg !136
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #9, !dbg !136
  call void @llvm.dbg.value(metadata i32 4194560, metadata !58, metadata !DIExpression()) #9, !dbg !138
  store i32 4194560, i32* %1, align 4, !dbg !139, !tbaa !65
  %7 = bitcast double** %2 to i8*, !dbg !140
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #9, !dbg !140
  call void @llvm.dbg.value(metadata i32 4194560, metadata !58, metadata !DIExpression()) #9, !dbg !138
  %8 = tail call noalias dereferenceable_or_null(33556480) i8* @calloc(i64 4194560, i64 8) #9, !dbg !141
  call void @llvm.dbg.value(metadata i8* %8, metadata !59, metadata !DIExpression()) #9, !dbg !138
  %9 = bitcast double** %2 to i8**, !dbg !142
  store i8* %8, i8** %9, align 8, !dbg !142, !tbaa !72
  %10 = bitcast double* %3 to i8*, !dbg !143
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #9, !dbg !143
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !61, metadata !DIExpression()) #9, !dbg !138
  store double 0.000000e+00, double* %3, align 8, !dbg !144, !tbaa !76
  %11 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %4, i64 0, i32 4, !dbg !145
  store i8* getelementptr inbounds ([90 x i8], [90 x i8]* @1, i64 0, i64 0), i8** %11, align 8, !dbg !145, !tbaa !79
  call void @llvm.dbg.value(metadata i32* %1, metadata !58, metadata !DIExpression(DW_OP_deref)) #9, !dbg !138
  call void @llvm.dbg.value(metadata double** %2, metadata !59, metadata !DIExpression(DW_OP_deref)) #9, !dbg !138
  call void @llvm.dbg.value(metadata double* %3, metadata !61, metadata !DIExpression(DW_OP_deref)) #9, !dbg !138
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %4, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, double*, double**)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %1, double* nonnull %3, double** nonnull %2) #9, !dbg !145
  %12 = load double, double* %3, align 8, !dbg !146, !tbaa !76
  call void @llvm.dbg.value(metadata double %12, metadata !61, metadata !DIExpression()) #9, !dbg !138
  %13 = fcmp ugt double %12, 1.000000e+01, !dbg !146
  br i1 %13, label %14, label %15, !dbg !147

14:                                               ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.polybench_flush_cache, i64 0, i64 0)) #10, !dbg !146
  unreachable, !dbg !146

15:                                               ; preds = %0
  %16 = load i8*, i8** %9, align 8, !dbg !148, !tbaa !72
  call void @llvm.dbg.value(metadata double* undef, metadata !59, metadata !DIExpression()) #9, !dbg !138
  call void @free(i8* %16) #9, !dbg !149
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #9, !dbg !150
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #9, !dbg !150
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #9, !dbg !150
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5), !dbg !150
  ret void, !dbg !151
}

; Function Attrs: nounwind uwtable
define dso_local void @polybench_timer_start() local_unnamed_addr #0 !dbg !152 {
  %1 = alloca %struct.timeval, align 8
  call void @llvm.dbg.declare(metadata %struct.timeval* %1, metadata !153, metadata !DIExpression()), !dbg !159
  %2 = alloca i32, align 4
  %3 = alloca double*, align 8
  %4 = alloca double, align 8
  %5 = alloca %struct.ident_t, align 8
  %6 = bitcast %struct.ident_t* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #9
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %6, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @3 to i8*), i64 16, i1 false) #9
  %7 = bitcast i32* %2 to i8*, !dbg !161
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %7) #9, !dbg !161
  call void @llvm.dbg.value(metadata i32 4194560, metadata !58, metadata !DIExpression()) #9, !dbg !164
  store i32 4194560, i32* %2, align 4, !dbg !165, !tbaa !65
  %8 = bitcast double** %3 to i8*, !dbg !166
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #9, !dbg !166
  call void @llvm.dbg.value(metadata i32 4194560, metadata !58, metadata !DIExpression()) #9, !dbg !164
  %9 = tail call noalias dereferenceable_or_null(33556480) i8* @calloc(i64 4194560, i64 8) #9, !dbg !167
  call void @llvm.dbg.value(metadata i8* %9, metadata !59, metadata !DIExpression()) #9, !dbg !164
  %10 = bitcast double** %3 to i8**, !dbg !168
  store i8* %9, i8** %10, align 8, !dbg !168, !tbaa !72
  %11 = bitcast double* %4 to i8*, !dbg !169
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %11) #9, !dbg !169
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !61, metadata !DIExpression()) #9, !dbg !164
  store double 0.000000e+00, double* %4, align 8, !dbg !170, !tbaa !76
  %12 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %5, i64 0, i32 4, !dbg !171
  store i8* getelementptr inbounds ([90 x i8], [90 x i8]* @1, i64 0, i64 0), i8** %12, align 8, !dbg !171, !tbaa !79
  call void @llvm.dbg.value(metadata i32* %2, metadata !58, metadata !DIExpression(DW_OP_deref)) #9, !dbg !164
  call void @llvm.dbg.value(metadata double** %3, metadata !59, metadata !DIExpression(DW_OP_deref)) #9, !dbg !164
  call void @llvm.dbg.value(metadata double* %4, metadata !61, metadata !DIExpression(DW_OP_deref)) #9, !dbg !164
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %5, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, double*, double**)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %2, double* nonnull %4, double** nonnull %3) #9, !dbg !171
  %13 = load double, double* %4, align 8, !dbg !172, !tbaa !76
  call void @llvm.dbg.value(metadata double %13, metadata !61, metadata !DIExpression()) #9, !dbg !164
  %14 = fcmp ugt double %13, 1.000000e+01, !dbg !172
  br i1 %14, label %15, label %16, !dbg !173

15:                                               ; preds = %0
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__PRETTY_FUNCTION__.polybench_flush_cache, i64 0, i64 0)) #10, !dbg !172
  unreachable, !dbg !172

16:                                               ; preds = %0
  %17 = load i8*, i8** %10, align 8, !dbg !174, !tbaa !72
  call void @llvm.dbg.value(metadata double* undef, metadata !59, metadata !DIExpression()) #9, !dbg !164
  call void @free(i8* %17) #9, !dbg !175
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %11) #9, !dbg !176
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #9, !dbg !176
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %7) #9, !dbg !176
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #9, !dbg !176
  %18 = bitcast %struct.timeval* %1 to i8*, !dbg !177
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %18) #9, !dbg !177
  %19 = call i32 @gettimeofday(%struct.timeval* nonnull %1, %struct.timezone* null) #9, !dbg !178
  call void @llvm.dbg.value(metadata i32 %19, metadata !158, metadata !DIExpression()) #9, !dbg !179
  %20 = icmp eq i32 %19, 0, !dbg !180
  br i1 %20, label %23, label %21, !dbg !182

21:                                               ; preds = %16
  %22 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %19) #9, !dbg !183
  br label %23, !dbg !183

23:                                               ; preds = %16, %21
  %24 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i64 0, i32 0, !dbg !184
  %25 = load i64, i64* %24, align 8, !dbg !184, !tbaa !185
  %26 = sitofp i64 %25 to double, !dbg !188
  %27 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i64 0, i32 1, !dbg !189
  %28 = load i64, i64* %27, align 8, !dbg !189, !tbaa !190
  %29 = sitofp i64 %28 to double, !dbg !191
  %30 = fmul double %29, 0x3EB0C6F7A0B5ED8D, !dbg !192
  %31 = fadd double %30, %26, !dbg !193
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %18) #9, !dbg !194
  store double %31, double* @polybench_t_start, align 8, !dbg !195, !tbaa !76
  ret void, !dbg !196
}

; Function Attrs: nounwind uwtable
define dso_local void @polybench_timer_stop() local_unnamed_addr #0 !dbg !197 {
  %1 = alloca %struct.timeval, align 8
  call void @llvm.dbg.declare(metadata %struct.timeval* %1, metadata !153, metadata !DIExpression()), !dbg !198
  %2 = bitcast %struct.timeval* %1 to i8*, !dbg !200
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #9, !dbg !200
  %3 = call i32 @gettimeofday(%struct.timeval* nonnull %1, %struct.timezone* null) #9, !dbg !201
  call void @llvm.dbg.value(metadata i32 %3, metadata !158, metadata !DIExpression()) #9, !dbg !202
  %4 = icmp eq i32 %3, 0, !dbg !203
  br i1 %4, label %7, label %5, !dbg !204

5:                                                ; preds = %0
  %6 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %3) #9, !dbg !205
  br label %7, !dbg !205

7:                                                ; preds = %0, %5
  %8 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i64 0, i32 0, !dbg !206
  %9 = load i64, i64* %8, align 8, !dbg !206, !tbaa !185
  %10 = sitofp i64 %9 to double, !dbg !207
  %11 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i64 0, i32 1, !dbg !208
  %12 = load i64, i64* %11, align 8, !dbg !208, !tbaa !190
  %13 = sitofp i64 %12 to double, !dbg !209
  %14 = fmul double %13, 0x3EB0C6F7A0B5ED8D, !dbg !210
  %15 = fadd double %14, %10, !dbg !211
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #9, !dbg !212
  store double %15, double* @polybench_t_end, align 8, !dbg !213, !tbaa !76
  ret void, !dbg !214
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @polybench_timer_print() local_unnamed_addr #7 !dbg !215 {
  %1 = load double, double* @polybench_t_end, align 8, !dbg !216, !tbaa !76
  %2 = load double, double* @polybench_t_start, align 8, !dbg !217, !tbaa !76
  %3 = fsub double %1, %2, !dbg !218
  %4 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), double %3), !dbg !219
  ret void, !dbg !220
}

; Function Attrs: nofree nounwind
declare dso_local i32 @printf(i8* nocapture readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i8* @polybench_alloc_data(i64 %0, i32 %1) local_unnamed_addr #0 !dbg !221 {
  %3 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i64 %0, metadata !225, metadata !DIExpression()), !dbg !231
  call void @llvm.dbg.value(metadata i32 %1, metadata !226, metadata !DIExpression()), !dbg !231
  call void @llvm.dbg.value(metadata i64 %0, metadata !227, metadata !DIExpression()), !dbg !231
  %4 = sext i32 %1 to i64, !dbg !232
  %5 = mul i64 %4, %0, !dbg !233
  call void @llvm.dbg.value(metadata i64 %5, metadata !227, metadata !DIExpression()), !dbg !231
  call void @llvm.dbg.value(metadata i64 %5, metadata !234, metadata !DIExpression()) #9, !dbg !241
  %6 = bitcast i8** %3 to i8*, !dbg !243
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #9, !dbg !243
  call void @llvm.dbg.value(metadata i8* null, metadata !239, metadata !DIExpression()) #9, !dbg !241
  store i8* null, i8** %3, align 8, !dbg !244, !tbaa !72
  call void @llvm.dbg.value(metadata i8** %3, metadata !239, metadata !DIExpression(DW_OP_deref)) #9, !dbg !241
  %7 = call i32 @posix_memalign(i8** nonnull %3, i64 32, i64 %5) #9, !dbg !245
  call void @llvm.dbg.value(metadata i32 %7, metadata !240, metadata !DIExpression()) #9, !dbg !241
  %8 = load i8*, i8** %3, align 8, !dbg !246, !tbaa !72
  call void @llvm.dbg.value(metadata i8* %8, metadata !239, metadata !DIExpression()) #9, !dbg !241
  %9 = icmp eq i8* %8, null, !dbg !246
  %10 = icmp ne i32 %7, 0, !dbg !248
  %11 = or i1 %10, %9, !dbg !249
  br i1 %11, label %12, label %15, !dbg !249

12:                                               ; preds = %2
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !250, !tbaa !72
  %14 = call i64 @fwrite(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i64 50, i64 1, %struct._IO_FILE* %13) #11, !dbg !252
  call void @exit(i32 1) #10, !dbg !253
  unreachable, !dbg !253

15:                                               ; preds = %2
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #9, !dbg !254
  call void @llvm.dbg.value(metadata i8* %8, metadata !230, metadata !DIExpression()), !dbg !231
  ret i8* %8, !dbg !255
}

; Function Attrs: nofree nounwind
declare !dbg !13 dso_local i32 @gettimeofday(%struct.timeval* nocapture, %struct.timezone* nocapture) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare !dbg !33 dso_local i32 @posix_memalign(i8**, i64, i64) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare dso_local void @exit(i32) local_unnamed_addr #5

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

; Function Attrs: nofree nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #8

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nofree nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { cold nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!50, !51, !52}
!llvm.ident = !{!53}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "polybench_t_start", scope: !2, file: !3, line: 51, type: !7, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 (https://github.com/conda-forge/clangdev-feedstock 2a1fb6e8a1c6dc6e585535457c24f0295d90c8d2)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !38, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "../test/poly_gpu/inputs_kernel_splits/utilities/polybench.c", directory: "/WAVE/users/unix/klor/ycho_lab/kimsong_lor/autotuning_tools/scripts")
!4 = !{}
!5 = !{!6, !8, !13, !12, !33}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!8 = !DISubprogram(name: "free", scope: !9, file: !9, line: 563, type: !10, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!9 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DISubprogram(name: "gettimeofday", scope: !14, file: !14, line: 68, type: !15, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!14 = !DIFile(filename: "/usr/include/sys/time.h", directory: "")
!15 = !DISubroutineType(types: !16)
!16 = !{!17, !18, !28}
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !20, line: 8, size: 128, elements: !21)
!20 = !DIFile(filename: "/usr/include/bits/types/struct_timeval.h", directory: "")
!21 = !{!22, !26}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !19, file: !20, line: 10, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !24, line: 158, baseType: !25)
!24 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!25 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !19, file: !20, line: 11, baseType: !27, size: 64, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !24, line: 160, baseType: !25)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timezone", file: !14, line: 52, size: 64, elements: !30)
!30 = !{!31, !32}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "tz_minuteswest", scope: !29, file: !14, line: 54, baseType: !17, size: 32)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "tz_dsttime", scope: !29, file: !14, line: 55, baseType: !17, size: 32, offset: 32)
!33 = !DISubprogram(name: "posix_memalign", scope: !9, file: !9, line: 577, type: !34, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!34 = !DISubroutineType(types: !35)
!35 = !{!17, !36, !37, !37}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!37 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!38 = !{!0, !39, !41, !44, !46, !48}
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "polybench_t_end", scope: !2, file: !3, line: 51, type: !7, isLocal: false, isDefinition: true)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(name: "polybench_c_start", scope: !2, file: !3, line: 53, type: !43, isLocal: false, isDefinition: true)
!43 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "polybench_c_end", scope: !2, file: !3, line: 53, type: !43, isLocal: false, isDefinition: true)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "polybench_papi_counters_threadid", scope: !2, file: !3, line: 33, type: !17, isLocal: false, isDefinition: true)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "polybench_program_total_flops", scope: !2, file: !3, line: 34, type: !7, isLocal: false, isDefinition: true)
!50 = !{i32 7, !"Dwarf Version", i32 4}
!51 = !{i32 2, !"Debug Info Version", i32 3}
!52 = !{i32 1, !"wchar_size", i32 4}
!53 = !{!"clang version 10.0.1 (https://github.com/conda-forge/clangdev-feedstock 2a1fb6e8a1c6dc6e585535457c24f0295d90c8d2)"}
!54 = distinct !DISubprogram(name: "polybench_flush_cache", scope: !3, file: !3, line: 85, type: !55, scopeLine: 86, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !57)
!55 = !DISubroutineType(types: !56)
!56 = !{null}
!57 = !{!58, !59, !60, !61}
!58 = !DILocalVariable(name: "cs", scope: !54, file: !3, line: 87, type: !17)
!59 = !DILocalVariable(name: "flush", scope: !54, file: !3, line: 88, type: !6)
!60 = !DILocalVariable(name: "i", scope: !54, file: !3, line: 89, type: !17)
!61 = !DILocalVariable(name: "tmp", scope: !54, file: !3, line: 90, type: !7)
!62 = !DILocation(line: 87, column: 3, scope: !54)
!63 = !DILocation(line: 0, scope: !54)
!64 = !DILocation(line: 87, column: 7, scope: !54)
!65 = !{!66, !66, i64 0}
!66 = !{!"int", !67, i64 0}
!67 = !{!"omnipotent char", !68, i64 0}
!68 = !{!"Simple C/C++ TBAA"}
!69 = !DILocation(line: 88, column: 3, scope: !54)
!70 = !DILocation(line: 88, column: 29, scope: !54)
!71 = !DILocation(line: 88, column: 11, scope: !54)
!72 = !{!73, !73, i64 0}
!73 = !{!"any pointer", !67, i64 0}
!74 = !DILocation(line: 90, column: 3, scope: !54)
!75 = !DILocation(line: 90, column: 10, scope: !54)
!76 = !{!77, !77, i64 0}
!77 = !{!"double", !67, i64 0}
!78 = !DILocation(line: 92, column: 1, scope: !54)
!79 = !{!80, !73, i64 16}
!80 = !{!"ident_t", !66, i64 0, !66, i64 4, !66, i64 8, !66, i64 12, !73, i64 16}
!81 = !DILocation(line: 96, column: 3, scope: !82)
!82 = distinct !DILexicalBlock(scope: !83, file: !3, line: 96, column: 3)
!83 = distinct !DILexicalBlock(scope: !54, file: !3, line: 96, column: 3)
!84 = !DILocation(line: 96, column: 3, scope: !83)
!85 = !DILocation(line: 97, column: 9, scope: !54)
!86 = !DILocation(line: 97, column: 3, scope: !54)
!87 = !DILocation(line: 98, column: 1, scope: !54)
!88 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 94, type: !89, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !98)
!89 = !DISubroutineType(types: !90)
!90 = !{null, !91, !91, !95, !96, !97}
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!92 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!95 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !17, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !7, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !6, size: 64)
!98 = !{!99, !100, !101, !102, !103}
!99 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !88, type: !91, flags: DIFlagArtificial)
!100 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !88, type: !91, flags: DIFlagArtificial)
!101 = !DILocalVariable(name: "cs", arg: 3, scope: !88, type: !95, flags: DIFlagArtificial)
!102 = !DILocalVariable(name: "tmp", arg: 4, scope: !88, type: !96, flags: DIFlagArtificial)
!103 = !DILocalVariable(name: "flush", arg: 5, scope: !88, type: !97, flags: DIFlagArtificial)
!104 = !DILocation(line: 0, scope: !88)
!105 = !DILocation(line: 94, column: 3, scope: !88)
!106 = !{!107}
!107 = distinct !{!107, !108, !".omp_outlined._debug__: argument 0"}
!108 = distinct !{!108, !".omp_outlined._debug__"}
!109 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !110, type: !91, flags: DIFlagArtificial)
!110 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 94, type: !89, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !111)
!111 = !{!109, !112, !113, !114, !115, !116, !117, !117, !118, !119, !120, !121, !122, !118}
!112 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !110, type: !91, flags: DIFlagArtificial)
!113 = !DILocalVariable(name: "cs", arg: 3, scope: !110, file: !3, line: 87, type: !95)
!114 = !DILocalVariable(name: "tmp", arg: 4, scope: !110, file: !3, line: 90, type: !96)
!115 = !DILocalVariable(name: "flush", arg: 5, scope: !110, file: !3, line: 88, type: !97)
!116 = !DILocalVariable(name: ".omp.iv", scope: !110, type: !17, flags: DIFlagArtificial)
!117 = !DILocalVariable(name: ".capture_expr.", scope: !110, type: !17, flags: DIFlagArtificial)
!118 = !DILocalVariable(name: "i", scope: !110, type: !17, flags: DIFlagArtificial)
!119 = !DILocalVariable(name: ".omp.lb", scope: !110, type: !17, flags: DIFlagArtificial)
!120 = !DILocalVariable(name: ".omp.ub", scope: !110, type: !17, flags: DIFlagArtificial)
!121 = !DILocalVariable(name: ".omp.stride", scope: !110, type: !17, flags: DIFlagArtificial)
!122 = !DILocalVariable(name: ".omp.is_last", scope: !110, type: !17, flags: DIFlagArtificial)
!123 = !DILocation(line: 0, scope: !110, inlinedAt: !124)
!124 = distinct !DILocation(line: 94, column: 3, scope: !88)
!125 = !DILocation(line: 94, column: 3, scope: !110, inlinedAt: !124)
!126 = !DILocation(line: 94, column: 8, scope: !110, inlinedAt: !124)
!127 = !DILocation(line: 95, column: 9, scope: !110, inlinedAt: !124)
!128 = !DILocation(line: 95, column: 12, scope: !110, inlinedAt: !124)
!129 = distinct !{!129, !130, !131}
!130 = !DILocation(line: 92, column: 1, scope: !110, inlinedAt: !124)
!131 = !DILocation(line: 92, column: 25, scope: !110, inlinedAt: !124)
!132 = !DILocation(line: 95, column: 19, scope: !110, inlinedAt: !124)
!133 = !{!134}
!134 = !{i64 2, i64 -1, i64 -1, i1 true}
!135 = distinct !DISubprogram(name: "polybench_prepare_instruments", scope: !3, file: !3, line: 321, type: !55, scopeLine: 322, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!136 = !DILocation(line: 87, column: 3, scope: !54, inlinedAt: !137)
!137 = distinct !DILocation(line: 324, column: 3, scope: !135)
!138 = !DILocation(line: 0, scope: !54, inlinedAt: !137)
!139 = !DILocation(line: 87, column: 7, scope: !54, inlinedAt: !137)
!140 = !DILocation(line: 88, column: 3, scope: !54, inlinedAt: !137)
!141 = !DILocation(line: 88, column: 29, scope: !54, inlinedAt: !137)
!142 = !DILocation(line: 88, column: 11, scope: !54, inlinedAt: !137)
!143 = !DILocation(line: 90, column: 3, scope: !54, inlinedAt: !137)
!144 = !DILocation(line: 90, column: 10, scope: !54, inlinedAt: !137)
!145 = !DILocation(line: 92, column: 1, scope: !54, inlinedAt: !137)
!146 = !DILocation(line: 96, column: 3, scope: !82, inlinedAt: !137)
!147 = !DILocation(line: 96, column: 3, scope: !83, inlinedAt: !137)
!148 = !DILocation(line: 97, column: 9, scope: !54, inlinedAt: !137)
!149 = !DILocation(line: 97, column: 3, scope: !54, inlinedAt: !137)
!150 = !DILocation(line: 98, column: 1, scope: !54, inlinedAt: !137)
!151 = !DILocation(line: 329, column: 1, scope: !135)
!152 = distinct !DISubprogram(name: "polybench_timer_start", scope: !3, file: !3, line: 332, type: !55, scopeLine: 333, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!153 = !DILocalVariable(name: "Tp", scope: !154, file: !3, line: 59, type: !19)
!154 = distinct !DISubprogram(name: "rtclock", scope: !3, file: !3, line: 56, type: !155, scopeLine: 57, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !157)
!155 = !DISubroutineType(types: !156)
!156 = !{!7}
!157 = !{!153, !158}
!158 = !DILocalVariable(name: "stat", scope: !154, file: !3, line: 60, type: !17)
!159 = !DILocation(line: 59, column: 20, scope: !154, inlinedAt: !160)
!160 = distinct !DILocation(line: 336, column: 23, scope: !152)
!161 = !DILocation(line: 87, column: 3, scope: !54, inlinedAt: !162)
!162 = distinct !DILocation(line: 324, column: 3, scope: !135, inlinedAt: !163)
!163 = distinct !DILocation(line: 334, column: 3, scope: !152)
!164 = !DILocation(line: 0, scope: !54, inlinedAt: !162)
!165 = !DILocation(line: 87, column: 7, scope: !54, inlinedAt: !162)
!166 = !DILocation(line: 88, column: 3, scope: !54, inlinedAt: !162)
!167 = !DILocation(line: 88, column: 29, scope: !54, inlinedAt: !162)
!168 = !DILocation(line: 88, column: 11, scope: !54, inlinedAt: !162)
!169 = !DILocation(line: 90, column: 3, scope: !54, inlinedAt: !162)
!170 = !DILocation(line: 90, column: 10, scope: !54, inlinedAt: !162)
!171 = !DILocation(line: 92, column: 1, scope: !54, inlinedAt: !162)
!172 = !DILocation(line: 96, column: 3, scope: !82, inlinedAt: !162)
!173 = !DILocation(line: 96, column: 3, scope: !83, inlinedAt: !162)
!174 = !DILocation(line: 97, column: 9, scope: !54, inlinedAt: !162)
!175 = !DILocation(line: 97, column: 3, scope: !54, inlinedAt: !162)
!176 = !DILocation(line: 98, column: 1, scope: !54, inlinedAt: !162)
!177 = !DILocation(line: 59, column: 5, scope: !154, inlinedAt: !160)
!178 = !DILocation(line: 61, column: 12, scope: !154, inlinedAt: !160)
!179 = !DILocation(line: 0, scope: !154, inlinedAt: !160)
!180 = !DILocation(line: 62, column: 14, scope: !181, inlinedAt: !160)
!181 = distinct !DILexicalBlock(scope: !154, file: !3, line: 62, column: 9)
!182 = !DILocation(line: 62, column: 9, scope: !154, inlinedAt: !160)
!183 = !DILocation(line: 63, column: 7, scope: !181, inlinedAt: !160)
!184 = !DILocation(line: 64, column: 16, scope: !154, inlinedAt: !160)
!185 = !{!186, !187, i64 0}
!186 = !{!"timeval", !187, i64 0, !187, i64 8}
!187 = !{!"long", !67, i64 0}
!188 = !DILocation(line: 64, column: 13, scope: !154, inlinedAt: !160)
!189 = !DILocation(line: 64, column: 28, scope: !154, inlinedAt: !160)
!190 = !{!186, !187, i64 8}
!191 = !DILocation(line: 64, column: 25, scope: !154, inlinedAt: !160)
!192 = !DILocation(line: 64, column: 36, scope: !154, inlinedAt: !160)
!193 = !DILocation(line: 64, column: 23, scope: !154, inlinedAt: !160)
!194 = !DILocation(line: 68, column: 1, scope: !154, inlinedAt: !160)
!195 = !DILocation(line: 336, column: 21, scope: !152)
!196 = !DILocation(line: 340, column: 1, scope: !152)
!197 = distinct !DISubprogram(name: "polybench_timer_stop", scope: !3, file: !3, line: 343, type: !55, scopeLine: 344, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!198 = !DILocation(line: 59, column: 20, scope: !154, inlinedAt: !199)
!199 = distinct !DILocation(line: 346, column: 21, scope: !197)
!200 = !DILocation(line: 59, column: 5, scope: !154, inlinedAt: !199)
!201 = !DILocation(line: 61, column: 12, scope: !154, inlinedAt: !199)
!202 = !DILocation(line: 0, scope: !154, inlinedAt: !199)
!203 = !DILocation(line: 62, column: 14, scope: !181, inlinedAt: !199)
!204 = !DILocation(line: 62, column: 9, scope: !154, inlinedAt: !199)
!205 = !DILocation(line: 63, column: 7, scope: !181, inlinedAt: !199)
!206 = !DILocation(line: 64, column: 16, scope: !154, inlinedAt: !199)
!207 = !DILocation(line: 64, column: 13, scope: !154, inlinedAt: !199)
!208 = !DILocation(line: 64, column: 28, scope: !154, inlinedAt: !199)
!209 = !DILocation(line: 64, column: 25, scope: !154, inlinedAt: !199)
!210 = !DILocation(line: 64, column: 36, scope: !154, inlinedAt: !199)
!211 = !DILocation(line: 64, column: 23, scope: !154, inlinedAt: !199)
!212 = !DILocation(line: 68, column: 1, scope: !154, inlinedAt: !199)
!213 = !DILocation(line: 346, column: 19, scope: !197)
!214 = !DILocation(line: 353, column: 1, scope: !197)
!215 = distinct !DISubprogram(name: "polybench_timer_print", scope: !3, file: !3, line: 356, type: !55, scopeLine: 357, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!216 = !DILocation(line: 370, column: 26, scope: !215)
!217 = !DILocation(line: 370, column: 44, scope: !215)
!218 = !DILocation(line: 370, column: 42, scope: !215)
!219 = !DILocation(line: 370, column: 7, scope: !215)
!220 = !DILocation(line: 375, column: 1, scope: !215)
!221 = distinct !DISubprogram(name: "polybench_alloc_data", scope: !3, file: !3, line: 394, type: !222, scopeLine: 395, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !224)
!222 = !DISubroutineType(types: !223)
!223 = !{!12, !43, !17}
!224 = !{!225, !226, !227, !230}
!225 = !DILocalVariable(name: "n", arg: 1, scope: !221, file: !3, line: 394, type: !43)
!226 = !DILocalVariable(name: "elt_size", arg: 2, scope: !221, file: !3, line: 394, type: !17)
!227 = !DILocalVariable(name: "val", scope: !221, file: !3, line: 397, type: !228)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !229, line: 46, baseType: !37)
!229 = !DIFile(filename: "projects/ycho_lab/kimsong_lor/clang10_venv/lib/clang/10.0.1/include/stddef.h", directory: "/WAVE")
!230 = !DILocalVariable(name: "ret", scope: !221, file: !3, line: 399, type: !12)
!231 = !DILocation(line: 0, scope: !221)
!232 = !DILocation(line: 398, column: 10, scope: !221)
!233 = !DILocation(line: 398, column: 7, scope: !221)
!234 = !DILocalVariable(name: "num", arg: 1, scope: !235, file: !3, line: 381, type: !228)
!235 = distinct !DISubprogram(name: "xmalloc", scope: !3, file: !3, line: 381, type: !236, scopeLine: 382, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !238)
!236 = !DISubroutineType(types: !237)
!237 = !{!12, !228}
!238 = !{!234, !239, !240}
!239 = !DILocalVariable(name: "new", scope: !235, file: !3, line: 383, type: !12)
!240 = !DILocalVariable(name: "ret", scope: !235, file: !3, line: 384, type: !17)
!241 = !DILocation(line: 0, scope: !235, inlinedAt: !242)
!242 = distinct !DILocation(line: 399, column: 15, scope: !221)
!243 = !DILocation(line: 383, column: 3, scope: !235, inlinedAt: !242)
!244 = !DILocation(line: 383, column: 9, scope: !235, inlinedAt: !242)
!245 = !DILocation(line: 384, column: 13, scope: !235, inlinedAt: !242)
!246 = !DILocation(line: 385, column: 9, scope: !247, inlinedAt: !242)
!247 = distinct !DILexicalBlock(scope: !235, file: !3, line: 385, column: 7)
!248 = !DILocation(line: 385, column: 16, scope: !247, inlinedAt: !242)
!249 = !DILocation(line: 385, column: 13, scope: !247, inlinedAt: !242)
!250 = !DILocation(line: 387, column: 16, scope: !251, inlinedAt: !242)
!251 = distinct !DILexicalBlock(scope: !247, file: !3, line: 386, column: 5)
!252 = !DILocation(line: 387, column: 7, scope: !251, inlinedAt: !242)
!253 = !DILocation(line: 388, column: 7, scope: !251, inlinedAt: !242)
!254 = !DILocation(line: 391, column: 1, scope: !235, inlinedAt: !242)
!255 = !DILocation(line: 401, column: 3, scope: !221)
