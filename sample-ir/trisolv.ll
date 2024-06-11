; ModuleID = '../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/trisolv/trisolv.c'
source_filename = "../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/trisolv/trisolv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [97 x i8] c";../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/trisolv/trisolv.c;kernel_p1;63;1;;\00", align 1
@2 = private unnamed_addr constant [98 x i8] c";../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/trisolv/trisolv.c;kernel_p1;63;36;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, [8000 x double]*, double*, double*)* @kernel_p1 to i8*)], section "llvm.metadata"

; Function Attrs: nounwind uwtable
define internal void @kernel_p1(i32 %0, [8000 x double]* %1, double* %2, double* %3) #0 !dbg !32 {
  %5 = alloca i32, align 4
  %6 = alloca [8000 x double]*, align 8
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca %struct.ident_t, align 8
  %10 = bitcast %struct.ident_t* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %10, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @3 to i8*), i64 16, i1 false)
  call void @llvm.dbg.value(metadata i32 %0, metadata !37, metadata !DIExpression()), !dbg !43
  store i32 %0, i32* %5, align 4, !tbaa !44
  call void @llvm.dbg.value(metadata [8000 x double]* %1, metadata !38, metadata !DIExpression()), !dbg !43
  store [8000 x double]* %1, [8000 x double]** %6, align 8, !tbaa !48
  call void @llvm.dbg.value(metadata double* %2, metadata !39, metadata !DIExpression()), !dbg !43
  store double* %2, double** %7, align 8, !tbaa !48
  call void @llvm.dbg.value(metadata double* %3, metadata !40, metadata !DIExpression()), !dbg !43
  store double* %3, double** %8, align 8, !tbaa !48
  %11 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %9, i64 0, i32 4, !dbg !50
  store i8* getelementptr inbounds ([97 x i8], [97 x i8]* @1, i64 0, i64 0), i8** %11, align 8, !dbg !50, !tbaa !51
  call void @llvm.dbg.value(metadata i32* %5, metadata !37, metadata !DIExpression(DW_OP_deref)), !dbg !43
  call void @llvm.dbg.value(metadata [8000 x double]** %6, metadata !38, metadata !DIExpression(DW_OP_deref)), !dbg !43
  call void @llvm.dbg.value(metadata double** %7, metadata !39, metadata !DIExpression(DW_OP_deref)), !dbg !43
  call void @llvm.dbg.value(metadata double** %8, metadata !40, metadata !DIExpression(DW_OP_deref)), !dbg !43
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %9, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, double**, double**, [8000 x double]**)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %5, double** nonnull %7, double** nonnull %8, [8000 x double]** nonnull %6) #8, !dbg !50
  ret void, !dbg !53
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
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture readonly dereferenceable(4) %2, double** nocapture readonly dereferenceable(8) %3, double** nocapture readonly dereferenceable(8) %4, [8000 x double]** nocapture readonly dereferenceable(8) %5) #2 !dbg !54 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ident_t, align 8
  call void @llvm.dbg.value(metadata i32* %0, metadata !65, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.value(metadata i32* %1, metadata !66, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.value(metadata i32* %2, metadata !67, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.value(metadata double** %3, metadata !68, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.value(metadata double** %4, metadata !69, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.value(metadata [8000 x double]** %5, metadata !70, metadata !DIExpression()), !dbg !71
  %12 = load i32, i32* %2, align 4, !dbg !72, !tbaa !44
  %13 = bitcast %struct.ident_t* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %13)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %13, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @0 to i8*), i64 24, i1 false) #8, !noalias !73
  call void @llvm.dbg.value(metadata i32* %0, metadata !76, metadata !DIExpression()) #8, !dbg !92
  call void @llvm.dbg.value(metadata i32* undef, metadata !79, metadata !DIExpression()) #8, !dbg !92
  call void @llvm.dbg.value(metadata double** %3, metadata !81, metadata !DIExpression()) #8, !dbg !92
  call void @llvm.dbg.value(metadata double** %4, metadata !82, metadata !DIExpression()) #8, !dbg !92
  call void @llvm.dbg.value(metadata [8000 x double]** %5, metadata !83, metadata !DIExpression()) #8, !dbg !92
  call void @llvm.dbg.value(metadata i32 %12, metadata !85, metadata !DIExpression()) #8, !dbg !92
  %14 = add nsw i32 %12, -1, !dbg !94
  call void @llvm.dbg.value(metadata i32 %14, metadata !85, metadata !DIExpression()) #8, !dbg !92
  call void @llvm.dbg.value(metadata i32 0, metadata !86, metadata !DIExpression()) #8, !dbg !92
  %15 = icmp sgt i32 %12, 0, !dbg !94
  br i1 %15, label %16, label %92, !dbg !94

16:                                               ; preds = %6
  %17 = bitcast i32* %7 to i8*, !dbg !94
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %17) #8, !dbg !94, !noalias !73
  call void @llvm.dbg.value(metadata i32 0, metadata !87, metadata !DIExpression()) #8, !dbg !92
  store i32 0, i32* %7, align 4, !dbg !95, !tbaa !44, !noalias !73
  %18 = bitcast i32* %8 to i8*, !dbg !94
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18) #8, !dbg !94, !noalias !73
  call void @llvm.dbg.value(metadata i32 %14, metadata !88, metadata !DIExpression()) #8, !dbg !92
  store i32 %14, i32* %8, align 4, !dbg !95, !tbaa !44, !noalias !73
  %19 = bitcast i32* %9 to i8*, !dbg !94
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #8, !dbg !94, !noalias !73
  call void @llvm.dbg.value(metadata i32 1, metadata !89, metadata !DIExpression()) #8, !dbg !92
  store i32 1, i32* %9, align 4, !dbg !95, !tbaa !44, !noalias !73
  %20 = bitcast i32* %10 to i8*, !dbg !94
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %20) #8, !dbg !94, !noalias !73
  call void @llvm.dbg.value(metadata i32 0, metadata !90, metadata !DIExpression()) #8, !dbg !92
  store i32 0, i32* %10, align 4, !dbg !95, !tbaa !44, !noalias !73
  %21 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %11, i64 0, i32 4, !dbg !94
  store i8* getelementptr inbounds ([97 x i8], [97 x i8]* @1, i64 0, i64 0), i8** %21, align 8, !dbg !94, !tbaa !51, !noalias !73
  %22 = load i32, i32* %0, align 4, !dbg !94, !tbaa !44, !alias.scope !73
  call void @llvm.dbg.value(metadata i32* %7, metadata !87, metadata !DIExpression(DW_OP_deref)) #8, !dbg !92
  call void @llvm.dbg.value(metadata i32* %8, metadata !88, metadata !DIExpression(DW_OP_deref)) #8, !dbg !92
  call void @llvm.dbg.value(metadata i32* %9, metadata !89, metadata !DIExpression(DW_OP_deref)) #8, !dbg !92
  call void @llvm.dbg.value(metadata i32* %10, metadata !90, metadata !DIExpression(DW_OP_deref)) #8, !dbg !92
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull %11, i32 %22, i32 34, i32* nonnull %10, i32* nonnull %7, i32* nonnull %8, i32* nonnull %9, i32 1, i32 1) #8, !dbg !94, !noalias !73
  %23 = load i32, i32* %8, align 4, !dbg !95, !tbaa !44, !noalias !73
  call void @llvm.dbg.value(metadata i32 %23, metadata !88, metadata !DIExpression()) #8, !dbg !92
  %24 = icmp slt i32 %23, %12, !dbg !95
  %25 = select i1 %24, i32 %23, i32 %14, !dbg !95
  call void @llvm.dbg.value(metadata i32 %25, metadata !88, metadata !DIExpression()) #8, !dbg !92
  store i32 %25, i32* %8, align 4, !dbg !95, !tbaa !44, !noalias !73
  %26 = load i32, i32* %7, align 4, !dbg !95, !tbaa !44, !noalias !73
  call void @llvm.dbg.value(metadata i32 %26, metadata !87, metadata !DIExpression()) #8, !dbg !92
  call void @llvm.dbg.value(metadata i32 %26, metadata !84, metadata !DIExpression()) #8, !dbg !92
  call void @llvm.dbg.value(metadata i32 %25, metadata !88, metadata !DIExpression()) #8, !dbg !92
  %27 = icmp sgt i32 %26, %25, !dbg !94
  br i1 %27, label %91, label %28, !dbg !94

28:                                               ; preds = %16
  %29 = load double*, double** %4, align 8, !dbg !96, !tbaa !48, !noalias !73
  %30 = load double*, double** %3, align 8, !dbg !96, !tbaa !48, !noalias !73
  %31 = load [8000 x double]*, [8000 x double]** %5, align 8, !dbg !96, !noalias !73
  %32 = sext i32 %26 to i64, !dbg !94
  %33 = sext i32 %25 to i64, !dbg !94
  br label %34, !dbg !94

34:                                               ; preds = %83, %28
  %35 = phi i32 [ %90, %83 ], [ 0, %28 ]
  %36 = phi i64 [ %88, %83 ], [ %32, %28 ]
  call void @llvm.dbg.value(metadata i64 %36, metadata !84, metadata !DIExpression()) #8, !dbg !92
  call void @llvm.dbg.value(metadata i64 %36, metadata !86, metadata !DIExpression()) #8, !dbg !92
  %37 = add i32 %26, %35, !dbg !98
  %38 = zext i32 %37 to i64, !dbg !98
  %39 = getelementptr inbounds double, double* %29, i64 %36, !dbg !98
  %40 = bitcast double* %39 to i64*, !dbg !98
  %41 = load i64, i64* %40, align 8, !dbg !98, !tbaa !99, !noalias !73
  %42 = getelementptr inbounds double, double* %30, i64 %36, !dbg !101
  %43 = bitcast double* %42 to i64*, !dbg !102
  store i64 %41, i64* %43, align 8, !dbg !102, !tbaa !99, !noalias !73
  call void @llvm.dbg.value(metadata i32 0, metadata !91, metadata !DIExpression()) #8, !dbg !92
  %44 = icmp sgt i64 %36, 0, !dbg !103
  %45 = bitcast i64 %41 to double, !dbg !96
  br i1 %44, label %46, label %83, !dbg !106

46:                                               ; preds = %34
  %47 = and i64 %38, 1, !dbg !106
  %48 = icmp eq i32 %37, 1, !dbg !106
  br i1 %48, label %71, label %49, !dbg !106

49:                                               ; preds = %46
  %50 = sub nsw i64 %38, %47, !dbg !106
  br label %51, !dbg !106

51:                                               ; preds = %51, %49
  %52 = phi i64 [ 0, %49 ], [ %68, %51 ]
  %53 = phi double [ %45, %49 ], [ %67, %51 ]
  %54 = phi i64 [ %50, %49 ], [ %69, %51 ]
  call void @llvm.dbg.value(metadata i64 %52, metadata !91, metadata !DIExpression()) #8, !dbg !92
  %55 = getelementptr inbounds [8000 x double], [8000 x double]* %31, i64 %36, i64 %52, !dbg !107
  %56 = load double, double* %55, align 8, !dbg !107, !tbaa !99, !noalias !73
  %57 = getelementptr inbounds double, double* %30, i64 %52, !dbg !108
  %58 = load double, double* %57, align 8, !dbg !108, !tbaa !99, !noalias !73
  %59 = fmul double %56, %58, !dbg !109
  %60 = fsub double %53, %59, !dbg !110
  store double %60, double* %42, align 8, !dbg !111, !tbaa !99, !noalias !73
  %61 = or i64 %52, 1, !dbg !112
  call void @llvm.dbg.value(metadata i64 %61, metadata !91, metadata !DIExpression()) #8, !dbg !92
  %62 = getelementptr inbounds [8000 x double], [8000 x double]* %31, i64 %36, i64 %61, !dbg !107
  %63 = load double, double* %62, align 8, !dbg !107, !tbaa !99, !noalias !73
  %64 = getelementptr inbounds double, double* %30, i64 %61, !dbg !108
  %65 = load double, double* %64, align 8, !dbg !108, !tbaa !99, !noalias !73
  %66 = fmul double %63, %65, !dbg !109
  %67 = fsub double %60, %66, !dbg !110
  store double %67, double* %42, align 8, !dbg !111, !tbaa !99, !noalias !73
  %68 = add nuw nsw i64 %52, 2, !dbg !112
  call void @llvm.dbg.value(metadata i64 %68, metadata !91, metadata !DIExpression()) #8, !dbg !92
  %69 = add i64 %54, -2, !dbg !106
  %70 = icmp eq i64 %69, 0, !dbg !106
  br i1 %70, label %71, label %51, !dbg !106, !llvm.loop !113

71:                                               ; preds = %51, %46
  %72 = phi double [ undef, %46 ], [ %67, %51 ]
  %73 = phi i64 [ 0, %46 ], [ %68, %51 ]
  %74 = phi double [ %45, %46 ], [ %67, %51 ]
  %75 = icmp eq i64 %47, 0, !dbg !106
  br i1 %75, label %83, label %76, !dbg !106

76:                                               ; preds = %71
  call void @llvm.dbg.value(metadata i64 %73, metadata !91, metadata !DIExpression()) #8, !dbg !92
  %77 = getelementptr inbounds [8000 x double], [8000 x double]* %31, i64 %36, i64 %73, !dbg !107
  %78 = load double, double* %77, align 8, !dbg !107, !tbaa !99, !noalias !73
  %79 = getelementptr inbounds double, double* %30, i64 %73, !dbg !108
  %80 = load double, double* %79, align 8, !dbg !108, !tbaa !99, !noalias !73
  %81 = fmul double %78, %80, !dbg !109
  %82 = fsub double %74, %81, !dbg !110
  store double %82, double* %42, align 8, !dbg !111, !tbaa !99, !noalias !73
  call void @llvm.dbg.value(metadata i64 %73, metadata !91, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #8, !dbg !92
  br label %83, !dbg !115

83:                                               ; preds = %76, %71, %34
  %84 = phi double [ %45, %34 ], [ %72, %71 ], [ %82, %76 ], !dbg !96
  %85 = getelementptr inbounds [8000 x double], [8000 x double]* %31, i64 %36, i64 %36, !dbg !115
  %86 = load double, double* %85, align 8, !dbg !115, !tbaa !99, !noalias !73
  %87 = fdiv double %84, %86, !dbg !116
  store double %87, double* %42, align 8, !dbg !117, !tbaa !99, !noalias !73
  %88 = add nsw i64 %36, 1, !dbg !94
  call void @llvm.dbg.value(metadata i64 %88, metadata !84, metadata !DIExpression()) #8, !dbg !92
  call void @llvm.dbg.value(metadata i32 %25, metadata !88, metadata !DIExpression()) #8, !dbg !92
  %89 = icmp slt i64 %36, %33, !dbg !94
  %90 = add i32 %35, 1, !dbg !94
  br i1 %89, label %34, label %91, !dbg !94, !llvm.loop !118

91:                                               ; preds = %83, %16
  store i8* getelementptr inbounds ([98 x i8], [98 x i8]* @2, i64 0, i64 0), i8** %21, align 8, !dbg !119, !tbaa !51, !noalias !73
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull %11, i32 %22) #8, !dbg !119, !noalias !73
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %20) #8, !dbg !119, !noalias !73
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #8, !dbg !119, !noalias !73
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #8, !dbg !119, !noalias !73
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %17) #8, !dbg !119, !noalias !73
  br label %92, !dbg !119

92:                                               ; preds = %6, %91
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %13), !dbg !121
  ret void, !dbg !72
}

declare !callback !122 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %0, i8** nocapture readonly %1) local_unnamed_addr #0 !dbg !124 {
  %3 = alloca i32, align 4
  %4 = alloca [8000 x double]*, align 8
  %5 = alloca double*, align 8
  %6 = alloca double*, align 8
  %7 = alloca %struct.ident_t, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !131, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.value(metadata i8** %1, metadata !132, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.value(metadata i32 8000, metadata !133, metadata !DIExpression()), !dbg !137
  %8 = tail call i8* @polybench_alloc_data(i64 64000000, i32 8) #8, !dbg !138
  call void @llvm.dbg.value(metadata i8* %8, metadata !134, metadata !DIExpression()), !dbg !137
  %9 = tail call i8* @polybench_alloc_data(i64 8000, i32 8) #8, !dbg !139
  call void @llvm.dbg.value(metadata i8* %9, metadata !135, metadata !DIExpression()), !dbg !137
  %10 = tail call i8* @polybench_alloc_data(i64 8000, i32 8) #8, !dbg !140
  call void @llvm.dbg.value(metadata i8* %10, metadata !136, metadata !DIExpression()), !dbg !137
  %11 = bitcast i8* %8 to [8000 x double]*, !dbg !141
  %12 = bitcast i8* %9 to double*, !dbg !142
  %13 = bitcast i8* %10 to double*, !dbg !143
  call void @llvm.dbg.value(metadata i32 8000, metadata !144, metadata !DIExpression()), !dbg !152
  call void @llvm.dbg.value(metadata [8000 x double]* %11, metadata !147, metadata !DIExpression()), !dbg !152
  call void @llvm.dbg.value(metadata double* %12, metadata !148, metadata !DIExpression()), !dbg !152
  call void @llvm.dbg.value(metadata double* %13, metadata !149, metadata !DIExpression()), !dbg !152
  call void @llvm.dbg.value(metadata i32 0, metadata !150, metadata !DIExpression()), !dbg !152
  br label %14, !dbg !154

14:                                               ; preds = %36, %2
  %15 = phi i64 [ 0, %2 ], [ %37, %36 ]
  call void @llvm.dbg.value(metadata i64 %15, metadata !150, metadata !DIExpression()), !dbg !152
  %16 = trunc i64 %15 to i32, !dbg !156
  %17 = sitofp i32 %16 to double, !dbg !156
  %18 = fdiv double %17, 8.000000e+03, !dbg !159
  %19 = getelementptr inbounds double, double* %12, i64 %15, !dbg !160
  store double %18, double* %19, align 8, !dbg !161, !tbaa !99
  %20 = getelementptr inbounds double, double* %13, i64 %15, !dbg !162
  store double %18, double* %20, align 8, !dbg !163, !tbaa !99
  call void @llvm.dbg.value(metadata i32 0, metadata !151, metadata !DIExpression()), !dbg !152
  br label %21, !dbg !164

21:                                               ; preds = %21, %14
  %22 = phi i64 [ 0, %14 ], [ %34, %21 ]
  call void @llvm.dbg.value(metadata i64 %22, metadata !151, metadata !DIExpression()), !dbg !152
  %23 = trunc i64 %22 to i32, !dbg !166
  %24 = sitofp i32 %23 to double, !dbg !166
  %25 = fmul double %17, %24, !dbg !168
  %26 = fdiv double %25, 8.000000e+03, !dbg !169
  %27 = getelementptr inbounds [8000 x double], [8000 x double]* %11, i64 %15, i64 %22, !dbg !170
  store double %26, double* %27, align 8, !dbg !171, !tbaa !99
  %28 = or i64 %22, 1, !dbg !172
  call void @llvm.dbg.value(metadata i64 %28, metadata !151, metadata !DIExpression()), !dbg !152
  %29 = trunc i64 %28 to i32, !dbg !166
  %30 = sitofp i32 %29 to double, !dbg !166
  %31 = fmul double %17, %30, !dbg !168
  %32 = fdiv double %31, 8.000000e+03, !dbg !169
  %33 = getelementptr inbounds [8000 x double], [8000 x double]* %11, i64 %15, i64 %28, !dbg !170
  store double %32, double* %33, align 8, !dbg !171, !tbaa !99
  %34 = add nuw nsw i64 %22, 2, !dbg !172
  call void @llvm.dbg.value(metadata i64 %34, metadata !151, metadata !DIExpression()), !dbg !152
  %35 = icmp eq i64 %34, 8000, !dbg !173
  br i1 %35, label %36, label %21, !dbg !164, !llvm.loop !174

36:                                               ; preds = %21
  %37 = add nuw nsw i64 %15, 1, !dbg !176
  call void @llvm.dbg.value(metadata i64 %37, metadata !150, metadata !DIExpression()), !dbg !152
  %38 = icmp eq i64 %37, 8000, !dbg !177
  br i1 %38, label %39, label %14, !dbg !154, !llvm.loop !178

39:                                               ; preds = %36
  tail call void (...) @polybench_timer_start() #8, !dbg !180
  %40 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %40)
  %41 = bitcast [8000 x double]** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %41)
  %42 = bitcast double** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %42)
  %43 = bitcast double** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %43)
  %44 = bitcast %struct.ident_t* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %44)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %44, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @3 to i8*), i64 16, i1 false) #8
  call void @llvm.dbg.value(metadata i32 8000, metadata !37, metadata !DIExpression()) #8, !dbg !181
  store i32 8000, i32* %3, align 4, !tbaa !44
  call void @llvm.dbg.value(metadata [8000 x double]* %11, metadata !38, metadata !DIExpression()) #8, !dbg !181
  %45 = bitcast [8000 x double]** %4 to i8**
  store i8* %8, i8** %45, align 8, !tbaa !48
  call void @llvm.dbg.value(metadata double* %12, metadata !39, metadata !DIExpression()) #8, !dbg !181
  %46 = bitcast double** %5 to i8**
  store i8* %9, i8** %46, align 8, !tbaa !48
  call void @llvm.dbg.value(metadata double* %13, metadata !40, metadata !DIExpression()) #8, !dbg !181
  %47 = bitcast double** %6 to i8**
  store i8* %10, i8** %47, align 8, !tbaa !48
  %48 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %7, i64 0, i32 4, !dbg !183
  store i8* getelementptr inbounds ([97 x i8], [97 x i8]* @1, i64 0, i64 0), i8** %48, align 8, !dbg !183, !tbaa !51
  call void @llvm.dbg.value(metadata i32* %3, metadata !37, metadata !DIExpression(DW_OP_deref)) #8, !dbg !181
  call void @llvm.dbg.value(metadata [8000 x double]** %4, metadata !38, metadata !DIExpression(DW_OP_deref)) #8, !dbg !181
  call void @llvm.dbg.value(metadata double** %5, metadata !39, metadata !DIExpression(DW_OP_deref)) #8, !dbg !181
  call void @llvm.dbg.value(metadata double** %6, metadata !40, metadata !DIExpression(DW_OP_deref)) #8, !dbg !181
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %7, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, double**, double**, [8000 x double]**)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %3, double** nonnull %5, double** nonnull %6, [8000 x double]** nonnull %4) #8, !dbg !183
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %40), !dbg !184
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %41), !dbg !184
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %42), !dbg !184
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %43), !dbg !184
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %44), !dbg !184
  call void (...) @polybench_timer_stop() #8, !dbg !185
  call void (...) @polybench_timer_print() #8, !dbg !186
  %49 = icmp sgt i32 %0, 42, !dbg !187
  br i1 %49, label %50, label %71, !dbg !187

50:                                               ; preds = %39
  %51 = load i8*, i8** %1, align 8, !dbg !187, !tbaa !48
  %52 = load i8, i8* %51, align 1, !dbg !187
  %53 = icmp eq i8 %52, 0, !dbg !187
  br i1 %53, label %54, label %71, !dbg !189

54:                                               ; preds = %50, %67
  %55 = phi i64 [ %68, %67 ], [ 0, %50 ]
  %56 = phi i32 [ %69, %67 ], [ 0, %50 ]
  call void @llvm.dbg.value(metadata i64 %55, metadata !190, metadata !DIExpression()) #8, !dbg !197
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !199, !tbaa !48
  %58 = getelementptr inbounds double, double* %12, i64 %55, !dbg !203
  %59 = load double, double* %58, align 8, !dbg !203, !tbaa !99
  %60 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), double %59) #9, !dbg !204
  %61 = trunc i32 %56 to i16, !dbg !205
  %62 = urem i16 %61, 20, !dbg !205
  %63 = icmp eq i16 %62, 0, !dbg !207
  br i1 %63, label %64, label %67, !dbg !208

64:                                               ; preds = %54
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !209, !tbaa !48
  %66 = call i32 @fputc(i32 10, %struct._IO_FILE* %65) #9, !dbg !210
  br label %67, !dbg !210

67:                                               ; preds = %64, %54
  %68 = add nuw nsw i64 %55, 1, !dbg !211
  %69 = add nuw nsw i32 %56, 1, !dbg !211
  call void @llvm.dbg.value(metadata i64 %68, metadata !190, metadata !DIExpression()) #8, !dbg !197
  %70 = icmp eq i64 %68, 8000, !dbg !212
  br i1 %70, label %71, label %54, !dbg !213, !llvm.loop !214

71:                                               ; preds = %67, %50, %39
  call void @free(i8* %8) #8, !dbg !216
  call void @free(i8* %9) #8, !dbg !217
  call void @free(i8* %10) #8, !dbg !218
  ret i32 0, !dbg !219
}

declare !dbg !9 dso_local i8* @polybench_alloc_data(i64, i32) local_unnamed_addr #3

declare !dbg !19 dso_local void @polybench_timer_start(...) local_unnamed_addr #3

declare !dbg !22 dso_local void @polybench_timer_stop(...) local_unnamed_addr #3

declare !dbg !23 dso_local void @polybench_timer_print(...) local_unnamed_addr #3

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
!1 = !DIFile(filename: "../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/trisolv/trisolv.c", directory: "/WAVE/users/unix/klor/ycho_lab/kimsong_lor/autotuning_tools/scripts")
!2 = !{}
!3 = !{!4, !9, !16, !19, !22, !23, !13, !24, !6}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 4096000000, elements: !7)
!6 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!7 = !{!8, !8}
!8 = !DISubrange(count: 8000)
!9 = !DISubprogram(name: "polybench_alloc_data", scope: !10, file: !10, line: 199, type: !11, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!10 = !DIFile(filename: "../test/poly_gpu/inputs_kernel_splits/utilities/polybench.h", directory: "/WAVE/users/unix/klor/ycho_lab/kimsong_lor/autotuning_tools/scripts")
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !14, !15}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!14 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 512000, elements: !18)
!18 = !{!8}
!19 = !DISubprogram(name: "polybench_timer_start", scope: !10, file: !10, line: 184, type: !20, spFlags: DISPFlagOptimized, retainedNodes: !2)
!20 = !DISubroutineType(types: !21)
!21 = !{null, null}
!22 = !DISubprogram(name: "polybench_timer_stop", scope: !10, file: !10, line: 185, type: !20, spFlags: DISPFlagOptimized, retainedNodes: !2)
!23 = !DISubprogram(name: "polybench_timer_print", scope: !10, file: !10, line: 186, type: !20, spFlags: DISPFlagOptimized, retainedNodes: !2)
!24 = !DISubprogram(name: "free", scope: !25, file: !25, line: 563, type: !26, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!25 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!26 = !DISubroutineType(types: !27)
!27 = !{null, !13}
!28 = !{i32 7, !"Dwarf Version", i32 4}
!29 = !{i32 2, !"Debug Info Version", i32 3}
!30 = !{i32 1, !"wchar_size", i32 4}
!31 = !{!"clang version 10.0.1 (https://github.com/conda-forge/clangdev-feedstock 2a1fb6e8a1c6dc6e585535457c24f0295d90c8d2)"}
!32 = distinct !DISubprogram(name: "kernel_p1", scope: !1, file: !1, line: 56, type: !33, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !36)
!33 = !DISubroutineType(types: !34)
!34 = !{null, !15, !16, !35, !35}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!36 = !{!37, !38, !39, !40, !41, !42}
!37 = !DILocalVariable(name: "n", arg: 1, scope: !32, file: !1, line: 56, type: !15)
!38 = !DILocalVariable(name: "A", arg: 2, scope: !32, file: !1, line: 57, type: !16)
!39 = !DILocalVariable(name: "x", arg: 3, scope: !32, file: !1, line: 58, type: !35)
!40 = !DILocalVariable(name: "c", arg: 4, scope: !32, file: !1, line: 59, type: !35)
!41 = !DILocalVariable(name: "i", scope: !32, file: !1, line: 61, type: !15)
!42 = !DILocalVariable(name: "j", scope: !32, file: !1, line: 61, type: !15)
!43 = !DILocation(line: 0, scope: !32)
!44 = !{!45, !45, i64 0}
!45 = !{!"int", !46, i64 0}
!46 = !{!"omnipotent char", !47, i64 0}
!47 = !{!"Simple C/C++ TBAA"}
!48 = !{!49, !49, i64 0}
!49 = !{!"any pointer", !46, i64 0}
!50 = !DILocation(line: 63, column: 1, scope: !32)
!51 = !{!52, !49, i64 16}
!52 = !{!"ident_t", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !49, i64 16}
!53 = !DILocation(line: 72, column: 1, scope: !32)
!54 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 64, type: !55, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !64)
!55 = !DISubroutineType(types: !56)
!56 = !{null, !57, !57, !61, !62, !62, !63}
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!61 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !15, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !35, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !16, size: 64)
!64 = !{!65, !66, !67, !68, !69, !70}
!65 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !54, type: !57, flags: DIFlagArtificial)
!66 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !54, type: !57, flags: DIFlagArtificial)
!67 = !DILocalVariable(name: "n", arg: 3, scope: !54, type: !61, flags: DIFlagArtificial)
!68 = !DILocalVariable(name: "x", arg: 4, scope: !54, type: !62, flags: DIFlagArtificial)
!69 = !DILocalVariable(name: "c", arg: 5, scope: !54, type: !62, flags: DIFlagArtificial)
!70 = !DILocalVariable(name: "A", arg: 6, scope: !54, type: !63, flags: DIFlagArtificial)
!71 = !DILocation(line: 0, scope: !54)
!72 = !DILocation(line: 64, column: 3, scope: !54)
!73 = !{!74}
!74 = distinct !{!74, !75, !".omp_outlined._debug__: argument 0"}
!75 = distinct !{!75, !".omp_outlined._debug__"}
!76 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !77, type: !57, flags: DIFlagArtificial)
!77 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 64, type: !55, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !78)
!78 = !{!76, !79, !80, !81, !82, !83, !84, !85, !85, !86, !87, !88, !89, !90, !91, !86}
!79 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !77, type: !57, flags: DIFlagArtificial)
!80 = !DILocalVariable(name: "n", arg: 3, scope: !77, file: !1, line: 56, type: !61)
!81 = !DILocalVariable(name: "x", arg: 4, scope: !77, file: !1, line: 58, type: !62)
!82 = !DILocalVariable(name: "c", arg: 5, scope: !77, file: !1, line: 59, type: !62)
!83 = !DILocalVariable(name: "A", arg: 6, scope: !77, file: !1, line: 57, type: !63)
!84 = !DILocalVariable(name: ".omp.iv", scope: !77, type: !15, flags: DIFlagArtificial)
!85 = !DILocalVariable(name: ".capture_expr.", scope: !77, type: !15, flags: DIFlagArtificial)
!86 = !DILocalVariable(name: "i", scope: !77, type: !15, flags: DIFlagArtificial)
!87 = !DILocalVariable(name: ".omp.lb", scope: !77, type: !15, flags: DIFlagArtificial)
!88 = !DILocalVariable(name: ".omp.ub", scope: !77, type: !15, flags: DIFlagArtificial)
!89 = !DILocalVariable(name: ".omp.stride", scope: !77, type: !15, flags: DIFlagArtificial)
!90 = !DILocalVariable(name: ".omp.is_last", scope: !77, type: !15, flags: DIFlagArtificial)
!91 = !DILocalVariable(name: "j", scope: !77, type: !15, flags: DIFlagArtificial)
!92 = !DILocation(line: 0, scope: !77, inlinedAt: !93)
!93 = distinct !DILocation(line: 64, column: 3, scope: !54)
!94 = !DILocation(line: 64, column: 3, scope: !77, inlinedAt: !93)
!95 = !DILocation(line: 64, column: 8, scope: !77, inlinedAt: !93)
!96 = !DILocation(line: 0, scope: !97, inlinedAt: !93)
!97 = distinct !DILexicalBlock(scope: !77, file: !1, line: 65, column: 3)
!98 = !DILocation(line: 66, column: 12, scope: !97, inlinedAt: !93)
!99 = !{!100, !100, i64 0}
!100 = !{!"double", !46, i64 0}
!101 = !DILocation(line: 66, column: 5, scope: !97, inlinedAt: !93)
!102 = !DILocation(line: 66, column: 10, scope: !97, inlinedAt: !93)
!103 = !DILocation(line: 67, column: 19, scope: !104, inlinedAt: !93)
!104 = distinct !DILexicalBlock(scope: !105, file: !1, line: 67, column: 5)
!105 = distinct !DILexicalBlock(scope: !97, file: !1, line: 67, column: 5)
!106 = !DILocation(line: 67, column: 5, scope: !105, inlinedAt: !93)
!107 = !DILocation(line: 68, column: 21, scope: !104, inlinedAt: !93)
!108 = !DILocation(line: 68, column: 31, scope: !104, inlinedAt: !93)
!109 = !DILocation(line: 68, column: 29, scope: !104, inlinedAt: !93)
!110 = !DILocation(line: 68, column: 19, scope: !104, inlinedAt: !93)
!111 = !DILocation(line: 68, column: 12, scope: !104, inlinedAt: !93)
!112 = !DILocation(line: 67, column: 30, scope: !104, inlinedAt: !93)
!113 = distinct !{!113, !106, !114}
!114 = !DILocation(line: 68, column: 34, scope: !105, inlinedAt: !93)
!115 = !DILocation(line: 69, column: 19, scope: !97, inlinedAt: !93)
!116 = !DILocation(line: 69, column: 17, scope: !97, inlinedAt: !93)
!117 = !DILocation(line: 69, column: 10, scope: !97, inlinedAt: !93)
!118 = distinct !{!118, !119, !120}
!119 = !DILocation(line: 63, column: 1, scope: !77, inlinedAt: !93)
!120 = !DILocation(line: 63, column: 36, scope: !77, inlinedAt: !93)
!121 = !DILocation(line: 70, column: 3, scope: !77, inlinedAt: !93)
!122 = !{!123}
!123 = !{i64 2, i64 -1, i64 -1, i1 true}
!124 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 74, type: !125, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !130)
!125 = !DISubroutineType(types: !126)
!126 = !{!15, !15, !127}
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!130 = !{!131, !132, !133, !134, !135, !136}
!131 = !DILocalVariable(name: "argc", arg: 1, scope: !124, file: !1, line: 74, type: !15)
!132 = !DILocalVariable(name: "argv", arg: 2, scope: !124, file: !1, line: 74, type: !127)
!133 = !DILocalVariable(name: "n", scope: !124, file: !1, line: 77, type: !15)
!134 = !DILocalVariable(name: "A", scope: !124, file: !1, line: 80, type: !4)
!135 = !DILocalVariable(name: "x", scope: !124, file: !1, line: 81, type: !16)
!136 = !DILocalVariable(name: "c", scope: !124, file: !1, line: 82, type: !16)
!137 = !DILocation(line: 0, scope: !124)
!138 = !DILocation(line: 80, column: 3, scope: !124)
!139 = !DILocation(line: 81, column: 3, scope: !124)
!140 = !DILocation(line: 82, column: 3, scope: !124)
!141 = !DILocation(line: 85, column: 17, scope: !124)
!142 = !DILocation(line: 85, column: 37, scope: !124)
!143 = !DILocation(line: 85, column: 57, scope: !124)
!144 = !DILocalVariable(name: "n", arg: 1, scope: !145, file: !1, line: 23, type: !15)
!145 = distinct !DISubprogram(name: "init_array", scope: !1, file: !1, line: 23, type: !33, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !146)
!146 = !{!144, !147, !148, !149, !150, !151}
!147 = !DILocalVariable(name: "A", arg: 2, scope: !145, file: !1, line: 24, type: !16)
!148 = !DILocalVariable(name: "x", arg: 3, scope: !145, file: !1, line: 25, type: !35)
!149 = !DILocalVariable(name: "c", arg: 4, scope: !145, file: !1, line: 26, type: !35)
!150 = !DILocalVariable(name: "i", scope: !145, file: !1, line: 28, type: !15)
!151 = !DILocalVariable(name: "j", scope: !145, file: !1, line: 28, type: !15)
!152 = !DILocation(line: 0, scope: !145, inlinedAt: !153)
!153 = distinct !DILocation(line: 85, column: 3, scope: !124)
!154 = !DILocation(line: 30, column: 3, scope: !155, inlinedAt: !153)
!155 = distinct !DILexicalBlock(scope: !145, file: !1, line: 30, column: 3)
!156 = !DILocation(line: 32, column: 20, scope: !157, inlinedAt: !153)
!157 = distinct !DILexicalBlock(scope: !158, file: !1, line: 31, column: 3)
!158 = distinct !DILexicalBlock(scope: !155, file: !1, line: 30, column: 3)
!159 = !DILocation(line: 32, column: 34, scope: !157, inlinedAt: !153)
!160 = !DILocation(line: 32, column: 12, scope: !157, inlinedAt: !153)
!161 = !DILocation(line: 32, column: 17, scope: !157, inlinedAt: !153)
!162 = !DILocation(line: 32, column: 5, scope: !157, inlinedAt: !153)
!163 = !DILocation(line: 32, column: 10, scope: !157, inlinedAt: !153)
!164 = !DILocation(line: 33, column: 5, scope: !165, inlinedAt: !153)
!165 = distinct !DILexicalBlock(scope: !157, file: !1, line: 33, column: 5)
!166 = !DILocation(line: 34, column: 33, scope: !167, inlinedAt: !153)
!167 = distinct !DILexicalBlock(scope: !165, file: !1, line: 33, column: 5)
!168 = !DILocation(line: 34, column: 31, scope: !167, inlinedAt: !153)
!169 = !DILocation(line: 34, column: 36, scope: !167, inlinedAt: !153)
!170 = !DILocation(line: 34, column: 7, scope: !167, inlinedAt: !153)
!171 = !DILocation(line: 34, column: 15, scope: !167, inlinedAt: !153)
!172 = !DILocation(line: 33, column: 25, scope: !167, inlinedAt: !153)
!173 = !DILocation(line: 33, column: 19, scope: !167, inlinedAt: !153)
!174 = distinct !{!174, !164, !175}
!175 = !DILocation(line: 34, column: 38, scope: !165, inlinedAt: !153)
!176 = !DILocation(line: 30, column: 23, scope: !158, inlinedAt: !153)
!177 = !DILocation(line: 30, column: 17, scope: !158, inlinedAt: !153)
!178 = distinct !{!178, !154, !179}
!179 = !DILocation(line: 35, column: 3, scope: !155, inlinedAt: !153)
!180 = !DILocation(line: 88, column: 3, scope: !124)
!181 = !DILocation(line: 0, scope: !32, inlinedAt: !182)
!182 = distinct !DILocation(line: 91, column: 3, scope: !124)
!183 = !DILocation(line: 63, column: 1, scope: !32, inlinedAt: !182)
!184 = !DILocation(line: 72, column: 1, scope: !32, inlinedAt: !182)
!185 = !DILocation(line: 94, column: 3, scope: !124)
!186 = !DILocation(line: 95, column: 3, scope: !124)
!187 = !DILocation(line: 99, column: 3, scope: !188)
!188 = distinct !DILexicalBlock(scope: !124, file: !1, line: 99, column: 3)
!189 = !DILocation(line: 99, column: 3, scope: !124)
!190 = !DILocalVariable(name: "i", scope: !191, file: !1, line: 44, type: !15)
!191 = distinct !DISubprogram(name: "print_array", scope: !1, file: !1, line: 40, type: !192, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !194)
!192 = !DISubroutineType(types: !193)
!193 = !{null, !15, !35}
!194 = !{!195, !196, !190}
!195 = !DILocalVariable(name: "n", arg: 1, scope: !191, file: !1, line: 40, type: !15)
!196 = !DILocalVariable(name: "x", arg: 2, scope: !191, file: !1, line: 41, type: !35)
!197 = !DILocation(line: 0, scope: !191, inlinedAt: !198)
!198 = distinct !DILocation(line: 99, column: 3, scope: !188)
!199 = !DILocation(line: 48, column: 13, scope: !200, inlinedAt: !198)
!200 = distinct !DILexicalBlock(scope: !201, file: !1, line: 47, column: 3)
!201 = distinct !DILexicalBlock(scope: !202, file: !1, line: 46, column: 3)
!202 = distinct !DILexicalBlock(scope: !191, file: !1, line: 46, column: 3)
!203 = !DILocation(line: 48, column: 43, scope: !200, inlinedAt: !198)
!204 = !DILocation(line: 48, column: 5, scope: !200, inlinedAt: !198)
!205 = !DILocation(line: 49, column: 11, scope: !206, inlinedAt: !198)
!206 = distinct !DILexicalBlock(scope: !200, file: !1, line: 49, column: 9)
!207 = !DILocation(line: 49, column: 16, scope: !206, inlinedAt: !198)
!208 = !DILocation(line: 49, column: 9, scope: !200, inlinedAt: !198)
!209 = !DILocation(line: 50, column: 15, scope: !206, inlinedAt: !198)
!210 = !DILocation(line: 50, column: 7, scope: !206, inlinedAt: !198)
!211 = !DILocation(line: 46, column: 23, scope: !201, inlinedAt: !198)
!212 = !DILocation(line: 46, column: 17, scope: !201, inlinedAt: !198)
!213 = !DILocation(line: 46, column: 3, scope: !202, inlinedAt: !198)
!214 = distinct !{!214, !213, !215}
!215 = !DILocation(line: 51, column: 3, scope: !202, inlinedAt: !198)
!216 = !DILocation(line: 102, column: 3, scope: !124)
!217 = !DILocation(line: 103, column: 3, scope: !124)
!218 = !DILocation(line: 104, column: 3, scope: !124)
!219 = !DILocation(line: 106, column: 3, scope: !124)
