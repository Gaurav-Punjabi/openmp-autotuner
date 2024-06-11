; ModuleID = '../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/mvt/mvt.c'
source_filename = "../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/mvt/mvt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [89 x i8] c";../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/mvt/mvt.c;kernel_p1;63;1;;\00", align 1
@2 = private unnamed_addr constant [90 x i8] c";../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/mvt/mvt.c;kernel_p1;63;25;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant [89 x i8] c";../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/mvt/mvt.c;kernel_p2;76;1;;\00", align 1
@5 = private unnamed_addr constant [90 x i8] c";../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/mvt/mvt.c;kernel_p2;76;25;;\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@llvm.used = appending global [2 x i8*] [i8* bitcast (void (i32, double*, double*, [8000 x double]*)* @kernel_p1 to i8*), i8* bitcast (void (i32, double*, double*, [8000 x double]*)* @kernel_p2 to i8*)], section "llvm.metadata"

; Function Attrs: nounwind uwtable
define internal void @kernel_p1(i32 %0, double* %1, double* %2, [8000 x double]* %3) #0 !dbg !32 {
  %5 = alloca i32, align 4
  %6 = alloca double*, align 8
  %7 = alloca double*, align 8
  %8 = alloca [8000 x double]*, align 8
  %9 = alloca %struct.ident_t, align 8
  %10 = bitcast %struct.ident_t* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %10, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @3 to i8*), i64 16, i1 false)
  call void @llvm.dbg.value(metadata i32 %0, metadata !37, metadata !DIExpression()), !dbg !41
  store i32 %0, i32* %5, align 4, !tbaa !42
  call void @llvm.dbg.value(metadata double* %1, metadata !38, metadata !DIExpression()), !dbg !41
  store double* %1, double** %6, align 8, !tbaa !46
  call void @llvm.dbg.value(metadata double* %2, metadata !39, metadata !DIExpression()), !dbg !41
  store double* %2, double** %7, align 8, !tbaa !46
  call void @llvm.dbg.value(metadata [8000 x double]* %3, metadata !40, metadata !DIExpression()), !dbg !41
  store [8000 x double]* %3, [8000 x double]** %8, align 8, !tbaa !46
  %11 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %9, i64 0, i32 4, !dbg !48
  store i8* getelementptr inbounds ([89 x i8], [89 x i8]* @1, i64 0, i64 0), i8** %11, align 8, !dbg !48, !tbaa !49
  call void @llvm.dbg.value(metadata i32* %5, metadata !37, metadata !DIExpression(DW_OP_deref)), !dbg !41
  call void @llvm.dbg.value(metadata double** %6, metadata !38, metadata !DIExpression(DW_OP_deref)), !dbg !41
  call void @llvm.dbg.value(metadata double** %7, metadata !39, metadata !DIExpression(DW_OP_deref)), !dbg !41
  call void @llvm.dbg.value(metadata [8000 x double]** %8, metadata !40, metadata !DIExpression(DW_OP_deref)), !dbg !41
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %9, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, double**, [8000 x double]**, double**)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %5, double** nonnull %6, [8000 x double]** nonnull %8, double** nonnull %7) #8, !dbg !48
  ret void, !dbg !51
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
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture readonly dereferenceable(4) %2, double** nocapture readonly dereferenceable(8) %3, [8000 x double]** nocapture readonly dereferenceable(8) %4, double** nocapture readonly dereferenceable(8) %5) #2 !dbg !52 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ident_t, align 8
  call void @llvm.dbg.value(metadata i32* %0, metadata !63, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.value(metadata i32* %1, metadata !64, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.value(metadata i32* %2, metadata !65, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.value(metadata double** %3, metadata !66, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.value(metadata [8000 x double]** %4, metadata !67, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.value(metadata double** %5, metadata !68, metadata !DIExpression()), !dbg !69
  %12 = bitcast %struct.ident_t* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %12)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %12, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @0 to i8*), i64 24, i1 false) #8, !noalias !70
  call void @llvm.dbg.value(metadata i32* %0, metadata !73, metadata !DIExpression()) #8, !dbg !91
  call void @llvm.dbg.value(metadata i32* undef, metadata !76, metadata !DIExpression()) #8, !dbg !91
  call void @llvm.dbg.value(metadata i32* %2, metadata !77, metadata !DIExpression()) #8, !dbg !91
  call void @llvm.dbg.value(metadata double** %3, metadata !78, metadata !DIExpression()) #8, !dbg !91
  call void @llvm.dbg.value(metadata [8000 x double]** %4, metadata !79, metadata !DIExpression()) #8, !dbg !91
  call void @llvm.dbg.value(metadata double** %5, metadata !80, metadata !DIExpression()) #8, !dbg !91
  %13 = load i32, i32* %2, align 4, !dbg !93, !tbaa !42, !noalias !70
  call void @llvm.dbg.value(metadata i32 %13, metadata !82, metadata !DIExpression()) #8, !dbg !91
  %14 = add nsw i32 %13, -1, !dbg !94
  call void @llvm.dbg.value(metadata i32 %14, metadata !82, metadata !DIExpression()) #8, !dbg !91
  call void @llvm.dbg.value(metadata i32 0, metadata !83, metadata !DIExpression()) #8, !dbg !91
  %15 = icmp sgt i32 %13, 0, !dbg !94
  br i1 %15, label %16, label %88, !dbg !94

16:                                               ; preds = %6
  %17 = bitcast i32* %7 to i8*, !dbg !94
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %17) #8, !dbg !94, !noalias !70
  call void @llvm.dbg.value(metadata i32 0, metadata !84, metadata !DIExpression()) #8, !dbg !91
  store i32 0, i32* %7, align 4, !dbg !95, !tbaa !42, !noalias !70
  %18 = bitcast i32* %8 to i8*, !dbg !94
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18) #8, !dbg !94, !noalias !70
  call void @llvm.dbg.value(metadata i32 %14, metadata !85, metadata !DIExpression()) #8, !dbg !91
  store i32 %14, i32* %8, align 4, !dbg !95, !tbaa !42, !noalias !70
  %19 = bitcast i32* %9 to i8*, !dbg !94
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #8, !dbg !94, !noalias !70
  call void @llvm.dbg.value(metadata i32 1, metadata !86, metadata !DIExpression()) #8, !dbg !91
  store i32 1, i32* %9, align 4, !dbg !95, !tbaa !42, !noalias !70
  %20 = bitcast i32* %10 to i8*, !dbg !94
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %20) #8, !dbg !94, !noalias !70
  call void @llvm.dbg.value(metadata i32 0, metadata !87, metadata !DIExpression()) #8, !dbg !91
  store i32 0, i32* %10, align 4, !dbg !95, !tbaa !42, !noalias !70
  %21 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %11, i64 0, i32 4, !dbg !94
  store i8* getelementptr inbounds ([89 x i8], [89 x i8]* @1, i64 0, i64 0), i8** %21, align 8, !dbg !94, !tbaa !49, !noalias !70
  %22 = load i32, i32* %0, align 4, !dbg !94, !tbaa !42, !alias.scope !70
  call void @llvm.dbg.value(metadata i32* %7, metadata !84, metadata !DIExpression(DW_OP_deref)) #8, !dbg !91
  call void @llvm.dbg.value(metadata i32* %8, metadata !85, metadata !DIExpression(DW_OP_deref)) #8, !dbg !91
  call void @llvm.dbg.value(metadata i32* %9, metadata !86, metadata !DIExpression(DW_OP_deref)) #8, !dbg !91
  call void @llvm.dbg.value(metadata i32* %10, metadata !87, metadata !DIExpression(DW_OP_deref)) #8, !dbg !91
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull %11, i32 %22, i32 34, i32* nonnull %10, i32* nonnull %7, i32* nonnull %8, i32* nonnull %9, i32 1, i32 1) #8, !dbg !94, !noalias !70
  %23 = load i32, i32* %8, align 4, !dbg !95, !tbaa !42, !noalias !70
  call void @llvm.dbg.value(metadata i32 %23, metadata !85, metadata !DIExpression()) #8, !dbg !91
  %24 = icmp slt i32 %23, %13, !dbg !95
  %25 = select i1 %24, i32 %23, i32 %14, !dbg !95
  call void @llvm.dbg.value(metadata i32 %25, metadata !85, metadata !DIExpression()) #8, !dbg !91
  store i32 %25, i32* %8, align 4, !dbg !95, !tbaa !42, !noalias !70
  %26 = load i32, i32* %7, align 4, !dbg !95, !tbaa !42, !noalias !70
  call void @llvm.dbg.value(metadata i32 %26, metadata !84, metadata !DIExpression()) #8, !dbg !91
  call void @llvm.dbg.value(metadata i32 %26, metadata !81, metadata !DIExpression()) #8, !dbg !91
  call void @llvm.dbg.value(metadata i32 %25, metadata !85, metadata !DIExpression()) #8, !dbg !91
  %27 = icmp slt i32 %25, %26, !dbg !94
  br i1 %27, label %87, label %28, !dbg !94

28:                                               ; preds = %16
  %29 = load double*, double** %3, align 8, !dbg !96, !tbaa !46, !noalias !70
  %30 = load i32, i32* %2, align 4, !dbg !97, !noalias !70
  %31 = icmp sgt i32 %30, 0, !dbg !97
  %32 = load [8000 x double]*, [8000 x double]** %4, align 8, !dbg !99, !noalias !70
  %33 = load double*, double** %5, align 8, !dbg !99, !noalias !70
  %34 = sext i32 %26 to i64, !dbg !101
  br i1 %31, label %44, label %35, !dbg !94

35:                                               ; preds = %28
  %36 = getelementptr double, double* %29, i64 %34, !dbg !101
  %37 = bitcast double* %36 to i8*
  %38 = icmp sgt i32 %25, %26, !dbg !101
  %39 = sub i32 %25, %26, !dbg !101
  %40 = select i1 %38, i32 %39, i32 0, !dbg !101
  %41 = zext i32 %40 to i64, !dbg !101
  %42 = shl nuw nsw i64 %41, 3, !dbg !101
  %43 = add nuw nsw i64 %42, 8, !dbg !101
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(1) %37, i8 0, i64 %43, i1 false) #8, !dbg !102, !noalias !70
  call void @llvm.dbg.value(metadata i32 undef, metadata !81, metadata !DIExpression()) #8, !dbg !91
  call void @llvm.dbg.value(metadata i32 undef, metadata !83, metadata !DIExpression()) #8, !dbg !91
  call void @llvm.dbg.value(metadata i32 undef, metadata !88, metadata !DIExpression()) #8, !dbg !103
  call void @llvm.dbg.value(metadata i32 undef, metadata !85, metadata !DIExpression()) #8, !dbg !91
  br label %87, !dbg !101

44:                                               ; preds = %28
  %45 = sext i32 %25 to i64, !dbg !101
  %46 = zext i32 %30 to i64, !dbg !97
  %47 = and i64 %46, 1, !dbg !103
  %48 = icmp eq i32 %30, 1, !dbg !103
  %49 = sub nsw i64 %46, %47, !dbg !103
  %50 = icmp eq i64 %47, 0, !dbg !103
  br label %51, !dbg !101

51:                                               ; preds = %84, %44
  %52 = phi i64 [ %34, %44 ], [ %85, %84 ]
  call void @llvm.dbg.value(metadata i64 %52, metadata !81, metadata !DIExpression()) #8, !dbg !91
  call void @llvm.dbg.value(metadata i64 %52, metadata !83, metadata !DIExpression()) #8, !dbg !91
  %53 = getelementptr inbounds double, double* %29, i64 %52, !dbg !104
  store double 0.000000e+00, double* %53, align 8, !dbg !102, !tbaa !105, !noalias !70
  call void @llvm.dbg.value(metadata i32 0, metadata !88, metadata !DIExpression()) #8, !dbg !103
  br i1 %48, label %74, label %54, !dbg !107

54:                                               ; preds = %51, %54
  %55 = phi double [ %70, %54 ], [ 0.000000e+00, %51 ], !dbg !108
  %56 = phi i64 [ %71, %54 ], [ 0, %51 ]
  %57 = phi i64 [ %72, %54 ], [ %49, %51 ]
  call void @llvm.dbg.value(metadata i64 %56, metadata !88, metadata !DIExpression()) #8, !dbg !103
  %58 = getelementptr inbounds [8000 x double], [8000 x double]* %32, i64 %52, i64 %56, !dbg !109
  %59 = load double, double* %58, align 8, !dbg !109, !tbaa !105, !noalias !70
  %60 = getelementptr inbounds double, double* %33, i64 %56, !dbg !110
  %61 = load double, double* %60, align 8, !dbg !110, !tbaa !105, !noalias !70
  %62 = fmul double %59, %61, !dbg !111
  %63 = fadd double %55, %62, !dbg !108
  store double %63, double* %53, align 8, !dbg !108, !tbaa !105, !noalias !70
  %64 = or i64 %56, 1, !dbg !112
  call void @llvm.dbg.value(metadata i64 %64, metadata !88, metadata !DIExpression()) #8, !dbg !103
  %65 = getelementptr inbounds [8000 x double], [8000 x double]* %32, i64 %52, i64 %64, !dbg !109
  %66 = load double, double* %65, align 8, !dbg !109, !tbaa !105, !noalias !70
  %67 = getelementptr inbounds double, double* %33, i64 %64, !dbg !110
  %68 = load double, double* %67, align 8, !dbg !110, !tbaa !105, !noalias !70
  %69 = fmul double %66, %68, !dbg !111
  %70 = fadd double %63, %69, !dbg !108
  store double %70, double* %53, align 8, !dbg !108, !tbaa !105, !noalias !70
  %71 = add nuw nsw i64 %56, 2, !dbg !112
  call void @llvm.dbg.value(metadata i64 %71, metadata !88, metadata !DIExpression()) #8, !dbg !103
  %72 = add i64 %57, -2, !dbg !107
  %73 = icmp eq i64 %72, 0, !dbg !107
  br i1 %73, label %74, label %54, !dbg !107, !llvm.loop !113

74:                                               ; preds = %54, %51
  %75 = phi double [ 0.000000e+00, %51 ], [ %70, %54 ]
  %76 = phi i64 [ 0, %51 ], [ %71, %54 ]
  br i1 %50, label %84, label %77, !dbg !107

77:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 %76, metadata !88, metadata !DIExpression()) #8, !dbg !103
  %78 = getelementptr inbounds [8000 x double], [8000 x double]* %32, i64 %52, i64 %76, !dbg !109
  %79 = load double, double* %78, align 8, !dbg !109, !tbaa !105, !noalias !70
  %80 = getelementptr inbounds double, double* %33, i64 %76, !dbg !110
  %81 = load double, double* %80, align 8, !dbg !110, !tbaa !105, !noalias !70
  %82 = fmul double %79, %81, !dbg !111
  %83 = fadd double %75, %82, !dbg !108
  store double %83, double* %53, align 8, !dbg !108, !tbaa !105, !noalias !70
  call void @llvm.dbg.value(metadata i64 %76, metadata !88, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #8, !dbg !103
  br label %84, !dbg !94

84:                                               ; preds = %74, %77
  %85 = add nsw i64 %52, 1, !dbg !94
  call void @llvm.dbg.value(metadata i64 %85, metadata !81, metadata !DIExpression()) #8, !dbg !91
  call void @llvm.dbg.value(metadata i32 %25, metadata !85, metadata !DIExpression()) #8, !dbg !91
  %86 = icmp eq i64 %52, %45, !dbg !94
  br i1 %86, label %87, label %51, !dbg !94, !llvm.loop !115

87:                                               ; preds = %84, %35, %16
  store i8* getelementptr inbounds ([90 x i8], [90 x i8]* @2, i64 0, i64 0), i8** %21, align 8, !dbg !101, !tbaa !49, !noalias !70
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull %11, i32 %22) #8, !dbg !101, !noalias !70
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %20) #8, !dbg !101, !noalias !70
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #8, !dbg !101, !noalias !70
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #8, !dbg !101, !noalias !70
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %17) #8, !dbg !101, !noalias !70
  br label %88, !dbg !101

88:                                               ; preds = %6, %87
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %12), !dbg !117
  ret void, !dbg !118
}

declare !callback !119 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr

; Function Attrs: nounwind uwtable
define internal void @kernel_p2(i32 %0, double* %1, double* %2, [8000 x double]* %3) #0 !dbg !121 {
  %5 = alloca i32, align 4
  %6 = alloca double*, align 8
  %7 = alloca double*, align 8
  %8 = alloca [8000 x double]*, align 8
  %9 = alloca %struct.ident_t, align 8
  %10 = bitcast %struct.ident_t* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %10, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @3 to i8*), i64 16, i1 false)
  call void @llvm.dbg.value(metadata i32 %0, metadata !123, metadata !DIExpression()), !dbg !127
  store i32 %0, i32* %5, align 4, !tbaa !42
  call void @llvm.dbg.value(metadata double* %1, metadata !124, metadata !DIExpression()), !dbg !127
  store double* %1, double** %6, align 8, !tbaa !46
  call void @llvm.dbg.value(metadata double* %2, metadata !125, metadata !DIExpression()), !dbg !127
  store double* %2, double** %7, align 8, !tbaa !46
  call void @llvm.dbg.value(metadata [8000 x double]* %3, metadata !126, metadata !DIExpression()), !dbg !127
  store [8000 x double]* %3, [8000 x double]** %8, align 8, !tbaa !46
  %11 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %9, i64 0, i32 4, !dbg !128
  store i8* getelementptr inbounds ([89 x i8], [89 x i8]* @4, i64 0, i64 0), i8** %11, align 8, !dbg !128, !tbaa !49
  call void @llvm.dbg.value(metadata i32* %5, metadata !123, metadata !DIExpression(DW_OP_deref)), !dbg !127
  call void @llvm.dbg.value(metadata double** %6, metadata !124, metadata !DIExpression(DW_OP_deref)), !dbg !127
  call void @llvm.dbg.value(metadata double** %7, metadata !125, metadata !DIExpression(DW_OP_deref)), !dbg !127
  call void @llvm.dbg.value(metadata [8000 x double]** %8, metadata !126, metadata !DIExpression(DW_OP_deref)), !dbg !127
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %9, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, double**, [8000 x double]**, double**)* @.omp_outlined..2 to void (i32*, i32*, ...)*), i32* nonnull %5, double** nonnull %6, [8000 x double]** nonnull %8, double** nonnull %7) #8, !dbg !128
  ret void, !dbg !129
}

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined..2(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture readonly dereferenceable(4) %2, double** nocapture readonly dereferenceable(8) %3, [8000 x double]** nocapture readonly dereferenceable(8) %4, double** nocapture readonly dereferenceable(8) %5) #2 !dbg !130 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ident_t, align 8
  call void @llvm.dbg.value(metadata i32* %0, metadata !132, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.value(metadata i32* %1, metadata !133, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.value(metadata i32* %2, metadata !134, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.value(metadata double** %3, metadata !135, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.value(metadata [8000 x double]** %4, metadata !136, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.value(metadata double** %5, metadata !137, metadata !DIExpression()), !dbg !138
  %12 = bitcast %struct.ident_t* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %12)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %12, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @0 to i8*), i64 24, i1 false) #8, !noalias !139
  call void @llvm.dbg.value(metadata i32* %0, metadata !142, metadata !DIExpression()) #8, !dbg !160
  call void @llvm.dbg.value(metadata i32* undef, metadata !145, metadata !DIExpression()) #8, !dbg !160
  call void @llvm.dbg.value(metadata i32* %2, metadata !146, metadata !DIExpression()) #8, !dbg !160
  call void @llvm.dbg.value(metadata double** %3, metadata !147, metadata !DIExpression()) #8, !dbg !160
  call void @llvm.dbg.value(metadata [8000 x double]** %4, metadata !148, metadata !DIExpression()) #8, !dbg !160
  call void @llvm.dbg.value(metadata double** %5, metadata !149, metadata !DIExpression()) #8, !dbg !160
  %13 = load i32, i32* %2, align 4, !dbg !162, !tbaa !42, !noalias !139
  call void @llvm.dbg.value(metadata i32 %13, metadata !151, metadata !DIExpression()) #8, !dbg !160
  %14 = add nsw i32 %13, -1, !dbg !163
  call void @llvm.dbg.value(metadata i32 %14, metadata !151, metadata !DIExpression()) #8, !dbg !160
  call void @llvm.dbg.value(metadata i32 0, metadata !152, metadata !DIExpression()) #8, !dbg !160
  %15 = icmp sgt i32 %13, 0, !dbg !163
  br i1 %15, label %16, label %88, !dbg !163

16:                                               ; preds = %6
  %17 = bitcast i32* %7 to i8*, !dbg !163
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %17) #8, !dbg !163, !noalias !139
  call void @llvm.dbg.value(metadata i32 0, metadata !153, metadata !DIExpression()) #8, !dbg !160
  store i32 0, i32* %7, align 4, !dbg !164, !tbaa !42, !noalias !139
  %18 = bitcast i32* %8 to i8*, !dbg !163
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18) #8, !dbg !163, !noalias !139
  call void @llvm.dbg.value(metadata i32 %14, metadata !154, metadata !DIExpression()) #8, !dbg !160
  store i32 %14, i32* %8, align 4, !dbg !164, !tbaa !42, !noalias !139
  %19 = bitcast i32* %9 to i8*, !dbg !163
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #8, !dbg !163, !noalias !139
  call void @llvm.dbg.value(metadata i32 1, metadata !155, metadata !DIExpression()) #8, !dbg !160
  store i32 1, i32* %9, align 4, !dbg !164, !tbaa !42, !noalias !139
  %20 = bitcast i32* %10 to i8*, !dbg !163
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %20) #8, !dbg !163, !noalias !139
  call void @llvm.dbg.value(metadata i32 0, metadata !156, metadata !DIExpression()) #8, !dbg !160
  store i32 0, i32* %10, align 4, !dbg !164, !tbaa !42, !noalias !139
  %21 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %11, i64 0, i32 4, !dbg !163
  store i8* getelementptr inbounds ([89 x i8], [89 x i8]* @4, i64 0, i64 0), i8** %21, align 8, !dbg !163, !tbaa !49, !noalias !139
  %22 = load i32, i32* %0, align 4, !dbg !163, !tbaa !42, !alias.scope !139
  call void @llvm.dbg.value(metadata i32* %7, metadata !153, metadata !DIExpression(DW_OP_deref)) #8, !dbg !160
  call void @llvm.dbg.value(metadata i32* %8, metadata !154, metadata !DIExpression(DW_OP_deref)) #8, !dbg !160
  call void @llvm.dbg.value(metadata i32* %9, metadata !155, metadata !DIExpression(DW_OP_deref)) #8, !dbg !160
  call void @llvm.dbg.value(metadata i32* %10, metadata !156, metadata !DIExpression(DW_OP_deref)) #8, !dbg !160
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull %11, i32 %22, i32 34, i32* nonnull %10, i32* nonnull %7, i32* nonnull %8, i32* nonnull %9, i32 1, i32 1) #8, !dbg !163, !noalias !139
  %23 = load i32, i32* %8, align 4, !dbg !164, !tbaa !42, !noalias !139
  call void @llvm.dbg.value(metadata i32 %23, metadata !154, metadata !DIExpression()) #8, !dbg !160
  %24 = icmp slt i32 %23, %13, !dbg !164
  %25 = select i1 %24, i32 %23, i32 %14, !dbg !164
  call void @llvm.dbg.value(metadata i32 %25, metadata !154, metadata !DIExpression()) #8, !dbg !160
  store i32 %25, i32* %8, align 4, !dbg !164, !tbaa !42, !noalias !139
  %26 = load i32, i32* %7, align 4, !dbg !164, !tbaa !42, !noalias !139
  call void @llvm.dbg.value(metadata i32 %26, metadata !153, metadata !DIExpression()) #8, !dbg !160
  call void @llvm.dbg.value(metadata i32 %26, metadata !150, metadata !DIExpression()) #8, !dbg !160
  call void @llvm.dbg.value(metadata i32 %25, metadata !154, metadata !DIExpression()) #8, !dbg !160
  %27 = icmp slt i32 %25, %26, !dbg !163
  br i1 %27, label %87, label %28, !dbg !163

28:                                               ; preds = %16
  %29 = load double*, double** %3, align 8, !dbg !165, !tbaa !46, !noalias !139
  %30 = load i32, i32* %2, align 4, !dbg !166, !noalias !139
  %31 = icmp sgt i32 %30, 0, !dbg !166
  %32 = load [8000 x double]*, [8000 x double]** %4, align 8, !dbg !168, !noalias !139
  %33 = load double*, double** %5, align 8, !dbg !168, !noalias !139
  %34 = sext i32 %26 to i64, !dbg !170
  br i1 %31, label %44, label %35, !dbg !163

35:                                               ; preds = %28
  %36 = getelementptr double, double* %29, i64 %34, !dbg !170
  %37 = bitcast double* %36 to i8*
  %38 = icmp sgt i32 %25, %26, !dbg !170
  %39 = sub i32 %25, %26, !dbg !170
  %40 = select i1 %38, i32 %39, i32 0, !dbg !170
  %41 = zext i32 %40 to i64, !dbg !170
  %42 = shl nuw nsw i64 %41, 3, !dbg !170
  %43 = add nuw nsw i64 %42, 8, !dbg !170
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(1) %37, i8 0, i64 %43, i1 false) #8, !dbg !171, !noalias !139
  call void @llvm.dbg.value(metadata i32 undef, metadata !150, metadata !DIExpression()) #8, !dbg !160
  call void @llvm.dbg.value(metadata i32 undef, metadata !152, metadata !DIExpression()) #8, !dbg !160
  call void @llvm.dbg.value(metadata i32 undef, metadata !157, metadata !DIExpression()) #8, !dbg !172
  call void @llvm.dbg.value(metadata i32 undef, metadata !154, metadata !DIExpression()) #8, !dbg !160
  br label %87, !dbg !170

44:                                               ; preds = %28
  %45 = sext i32 %25 to i64, !dbg !170
  %46 = zext i32 %30 to i64, !dbg !166
  %47 = and i64 %46, 1, !dbg !172
  %48 = icmp eq i32 %30, 1, !dbg !172
  %49 = sub nsw i64 %46, %47, !dbg !172
  %50 = icmp eq i64 %47, 0, !dbg !172
  br label %51, !dbg !170

51:                                               ; preds = %84, %44
  %52 = phi i64 [ %34, %44 ], [ %85, %84 ]
  call void @llvm.dbg.value(metadata i64 %52, metadata !150, metadata !DIExpression()) #8, !dbg !160
  call void @llvm.dbg.value(metadata i64 %52, metadata !152, metadata !DIExpression()) #8, !dbg !160
  %53 = getelementptr inbounds double, double* %29, i64 %52, !dbg !173
  store double 0.000000e+00, double* %53, align 8, !dbg !171, !tbaa !105, !noalias !139
  call void @llvm.dbg.value(metadata i32 0, metadata !157, metadata !DIExpression()) #8, !dbg !172
  br i1 %48, label %74, label %54, !dbg !174

54:                                               ; preds = %51, %54
  %55 = phi double [ %70, %54 ], [ 0.000000e+00, %51 ], !dbg !175
  %56 = phi i64 [ %71, %54 ], [ 0, %51 ]
  %57 = phi i64 [ %72, %54 ], [ %49, %51 ]
  call void @llvm.dbg.value(metadata i64 %56, metadata !157, metadata !DIExpression()) #8, !dbg !172
  %58 = getelementptr inbounds [8000 x double], [8000 x double]* %32, i64 %56, i64 %52, !dbg !176
  %59 = load double, double* %58, align 8, !dbg !176, !tbaa !105, !noalias !139
  %60 = getelementptr inbounds double, double* %33, i64 %56, !dbg !177
  %61 = load double, double* %60, align 8, !dbg !177, !tbaa !105, !noalias !139
  %62 = fmul double %59, %61, !dbg !178
  %63 = fadd double %55, %62, !dbg !175
  store double %63, double* %53, align 8, !dbg !175, !tbaa !105, !noalias !139
  %64 = or i64 %56, 1, !dbg !179
  call void @llvm.dbg.value(metadata i64 %64, metadata !157, metadata !DIExpression()) #8, !dbg !172
  %65 = getelementptr inbounds [8000 x double], [8000 x double]* %32, i64 %64, i64 %52, !dbg !176
  %66 = load double, double* %65, align 8, !dbg !176, !tbaa !105, !noalias !139
  %67 = getelementptr inbounds double, double* %33, i64 %64, !dbg !177
  %68 = load double, double* %67, align 8, !dbg !177, !tbaa !105, !noalias !139
  %69 = fmul double %66, %68, !dbg !178
  %70 = fadd double %63, %69, !dbg !175
  store double %70, double* %53, align 8, !dbg !175, !tbaa !105, !noalias !139
  %71 = add nuw nsw i64 %56, 2, !dbg !179
  call void @llvm.dbg.value(metadata i64 %71, metadata !157, metadata !DIExpression()) #8, !dbg !172
  %72 = add i64 %57, -2, !dbg !174
  %73 = icmp eq i64 %72, 0, !dbg !174
  br i1 %73, label %74, label %54, !dbg !174, !llvm.loop !180

74:                                               ; preds = %54, %51
  %75 = phi double [ 0.000000e+00, %51 ], [ %70, %54 ]
  %76 = phi i64 [ 0, %51 ], [ %71, %54 ]
  br i1 %50, label %84, label %77, !dbg !174

77:                                               ; preds = %74
  call void @llvm.dbg.value(metadata i64 %76, metadata !157, metadata !DIExpression()) #8, !dbg !172
  %78 = getelementptr inbounds [8000 x double], [8000 x double]* %32, i64 %76, i64 %52, !dbg !176
  %79 = load double, double* %78, align 8, !dbg !176, !tbaa !105, !noalias !139
  %80 = getelementptr inbounds double, double* %33, i64 %76, !dbg !177
  %81 = load double, double* %80, align 8, !dbg !177, !tbaa !105, !noalias !139
  %82 = fmul double %79, %81, !dbg !178
  %83 = fadd double %75, %82, !dbg !175
  store double %83, double* %53, align 8, !dbg !175, !tbaa !105, !noalias !139
  call void @llvm.dbg.value(metadata i64 %76, metadata !157, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #8, !dbg !172
  br label %84, !dbg !163

84:                                               ; preds = %74, %77
  %85 = add nsw i64 %52, 1, !dbg !163
  call void @llvm.dbg.value(metadata i64 %85, metadata !150, metadata !DIExpression()) #8, !dbg !160
  call void @llvm.dbg.value(metadata i32 %25, metadata !154, metadata !DIExpression()) #8, !dbg !160
  %86 = icmp eq i64 %52, %45, !dbg !163
  br i1 %86, label %87, label %51, !dbg !163, !llvm.loop !182

87:                                               ; preds = %84, %35, %16
  store i8* getelementptr inbounds ([90 x i8], [90 x i8]* @5, i64 0, i64 0), i8** %21, align 8, !dbg !170, !tbaa !49, !noalias !139
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull %11, i32 %22) #8, !dbg !170, !noalias !139
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %20) #8, !dbg !170, !noalias !139
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #8, !dbg !170, !noalias !139
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #8, !dbg !170, !noalias !139
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %17) #8, !dbg !170, !noalias !139
  br label %88, !dbg !170

88:                                               ; preds = %6, %87
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %12), !dbg !184
  ret void, !dbg !185
}

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %0, i8** nocapture readonly %1) local_unnamed_addr #0 !dbg !186 {
  %3 = alloca i32, align 4
  %4 = alloca double*, align 8
  %5 = alloca double*, align 8
  %6 = alloca [8000 x double]*, align 8
  %7 = alloca %struct.ident_t, align 8
  %8 = alloca i32, align 4
  %9 = alloca double*, align 8
  %10 = alloca double*, align 8
  %11 = alloca [8000 x double]*, align 8
  %12 = alloca %struct.ident_t, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !193, metadata !DIExpression()), !dbg !201
  call void @llvm.dbg.value(metadata i8** %1, metadata !194, metadata !DIExpression()), !dbg !201
  call void @llvm.dbg.value(metadata i32 8000, metadata !195, metadata !DIExpression()), !dbg !201
  %13 = tail call i8* @polybench_alloc_data(i64 64000000, i32 8) #8, !dbg !202
  call void @llvm.dbg.value(metadata i8* %13, metadata !196, metadata !DIExpression()), !dbg !201
  %14 = tail call i8* @polybench_alloc_data(i64 8000, i32 8) #8, !dbg !203
  call void @llvm.dbg.value(metadata i8* %14, metadata !197, metadata !DIExpression()), !dbg !201
  %15 = tail call i8* @polybench_alloc_data(i64 8000, i32 8) #8, !dbg !204
  call void @llvm.dbg.value(metadata i8* %15, metadata !198, metadata !DIExpression()), !dbg !201
  %16 = tail call i8* @polybench_alloc_data(i64 8000, i32 8) #8, !dbg !205
  call void @llvm.dbg.value(metadata i8* %16, metadata !199, metadata !DIExpression()), !dbg !201
  %17 = tail call i8* @polybench_alloc_data(i64 8000, i32 8) #8, !dbg !206
  call void @llvm.dbg.value(metadata i8* %17, metadata !200, metadata !DIExpression()), !dbg !201
  %18 = bitcast i8* %14 to double*, !dbg !207
  %19 = bitcast i8* %15 to double*, !dbg !208
  %20 = bitcast i8* %16 to double*, !dbg !209
  %21 = bitcast i8* %17 to double*, !dbg !210
  %22 = bitcast i8* %13 to [8000 x double]*, !dbg !211
  call void @llvm.dbg.value(metadata i32 8000, metadata !212, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata double* %18, metadata !217, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata double* %19, metadata !218, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata double* %20, metadata !219, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata double* %21, metadata !220, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata [8000 x double]* %22, metadata !221, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.value(metadata i32 0, metadata !222, metadata !DIExpression()), !dbg !224
  br label %23, !dbg !226

23:                                               ; preds = %53, %2
  %24 = phi i64 [ 0, %2 ], [ %54, %53 ]
  call void @llvm.dbg.value(metadata i64 %24, metadata !222, metadata !DIExpression()), !dbg !224
  %25 = trunc i64 %24 to i32, !dbg !228
  %26 = sitofp i32 %25 to double, !dbg !228
  %27 = fdiv double %26, 8.000000e+03, !dbg !231
  %28 = getelementptr inbounds double, double* %18, i64 %24, !dbg !232
  store double %27, double* %28, align 8, !dbg !233, !tbaa !105
  %29 = fadd double %26, 1.000000e+00, !dbg !234
  %30 = fdiv double %29, 8.000000e+03, !dbg !235
  %31 = getelementptr inbounds double, double* %19, i64 %24, !dbg !236
  store double %30, double* %31, align 8, !dbg !237, !tbaa !105
  %32 = fadd double %26, 3.000000e+00, !dbg !238
  %33 = fdiv double %32, 8.000000e+03, !dbg !239
  %34 = getelementptr inbounds double, double* %20, i64 %24, !dbg !240
  store double %33, double* %34, align 8, !dbg !241, !tbaa !105
  %35 = fadd double %26, 4.000000e+00, !dbg !242
  %36 = fdiv double %35, 8.000000e+03, !dbg !243
  %37 = getelementptr inbounds double, double* %21, i64 %24, !dbg !244
  store double %36, double* %37, align 8, !dbg !245, !tbaa !105
  call void @llvm.dbg.value(metadata i32 0, metadata !223, metadata !DIExpression()), !dbg !224
  br label %38, !dbg !246

38:                                               ; preds = %38, %23
  %39 = phi i64 [ 0, %23 ], [ %51, %38 ]
  call void @llvm.dbg.value(metadata i64 %39, metadata !223, metadata !DIExpression()), !dbg !224
  %40 = trunc i64 %39 to i32, !dbg !248
  %41 = sitofp i32 %40 to double, !dbg !248
  %42 = fmul double %26, %41, !dbg !250
  %43 = fdiv double %42, 8.000000e+03, !dbg !251
  %44 = getelementptr inbounds [8000 x double], [8000 x double]* %22, i64 %24, i64 %39, !dbg !252
  store double %43, double* %44, align 8, !dbg !253, !tbaa !105
  %45 = or i64 %39, 1, !dbg !254
  call void @llvm.dbg.value(metadata i64 %45, metadata !223, metadata !DIExpression()), !dbg !224
  %46 = trunc i64 %45 to i32, !dbg !248
  %47 = sitofp i32 %46 to double, !dbg !248
  %48 = fmul double %26, %47, !dbg !250
  %49 = fdiv double %48, 8.000000e+03, !dbg !251
  %50 = getelementptr inbounds [8000 x double], [8000 x double]* %22, i64 %24, i64 %45, !dbg !252
  store double %49, double* %50, align 8, !dbg !253, !tbaa !105
  %51 = add nuw nsw i64 %39, 2, !dbg !254
  call void @llvm.dbg.value(metadata i64 %51, metadata !223, metadata !DIExpression()), !dbg !224
  %52 = icmp eq i64 %51, 8000, !dbg !255
  br i1 %52, label %53, label %38, !dbg !246, !llvm.loop !256

53:                                               ; preds = %38
  %54 = add nuw nsw i64 %24, 1, !dbg !258
  call void @llvm.dbg.value(metadata i64 %54, metadata !222, metadata !DIExpression()), !dbg !224
  %55 = icmp eq i64 %54, 8000, !dbg !259
  br i1 %55, label %56, label %23, !dbg !226, !llvm.loop !260

56:                                               ; preds = %53
  call void @llvm.dbg.value(metadata i32 8000, metadata !262, metadata !DIExpression()) #8, !dbg !270
  call void @llvm.dbg.value(metadata double* %18, metadata !265, metadata !DIExpression()) #8, !dbg !270
  call void @llvm.dbg.value(metadata double* %19, metadata !266, metadata !DIExpression()) #8, !dbg !270
  call void @llvm.dbg.value(metadata double* %20, metadata !267, metadata !DIExpression()) #8, !dbg !270
  call void @llvm.dbg.value(metadata double* %21, metadata !268, metadata !DIExpression()) #8, !dbg !270
  call void @llvm.dbg.value(metadata [8000 x double]* %22, metadata !269, metadata !DIExpression()) #8, !dbg !270
  tail call void (...) @polybench_timer_start() #8, !dbg !272
  %57 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %57) #8
  %58 = bitcast double** %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %58) #8
  %59 = bitcast double** %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %59) #8
  %60 = bitcast [8000 x double]** %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %60) #8
  %61 = bitcast %struct.ident_t* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %61) #8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %61, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @3 to i8*), i64 16, i1 false) #8
  call void @llvm.dbg.value(metadata i32 8000, metadata !37, metadata !DIExpression()) #8, !dbg !273
  store i32 8000, i32* %8, align 4, !tbaa !42
  call void @llvm.dbg.value(metadata double* %18, metadata !38, metadata !DIExpression()) #8, !dbg !273
  %62 = bitcast double** %9 to i8**
  store i8* %14, i8** %62, align 8, !tbaa !46
  call void @llvm.dbg.value(metadata double* %20, metadata !39, metadata !DIExpression()) #8, !dbg !273
  %63 = bitcast double** %10 to i8**
  store i8* %16, i8** %63, align 8, !tbaa !46
  call void @llvm.dbg.value(metadata [8000 x double]* %22, metadata !40, metadata !DIExpression()) #8, !dbg !273
  %64 = bitcast [8000 x double]** %11 to i8**
  store i8* %13, i8** %64, align 8, !tbaa !46
  %65 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %12, i64 0, i32 4, !dbg !275
  store i8* getelementptr inbounds ([89 x i8], [89 x i8]* @1, i64 0, i64 0), i8** %65, align 8, !dbg !275, !tbaa !49
  call void @llvm.dbg.value(metadata i32* %8, metadata !37, metadata !DIExpression(DW_OP_deref)) #8, !dbg !273
  call void @llvm.dbg.value(metadata double** %9, metadata !38, metadata !DIExpression(DW_OP_deref)) #8, !dbg !273
  call void @llvm.dbg.value(metadata double** %10, metadata !39, metadata !DIExpression(DW_OP_deref)) #8, !dbg !273
  call void @llvm.dbg.value(metadata [8000 x double]** %11, metadata !40, metadata !DIExpression(DW_OP_deref)) #8, !dbg !273
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %12, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, double**, [8000 x double]**, double**)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %8, double** nonnull %9, [8000 x double]** nonnull %11, double** nonnull %10) #8, !dbg !275
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %57) #8, !dbg !276
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %58) #8, !dbg !276
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %59) #8, !dbg !276
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %60) #8, !dbg !276
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %61) #8, !dbg !276
  call void (...) @polybench_timer_stop() #8, !dbg !277
  call void (...) @polybench_timer_print() #8, !dbg !278
  call void (...) @polybench_timer_start() #8, !dbg !279
  %66 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %66) #8
  %67 = bitcast double** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %67) #8
  %68 = bitcast double** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %68) #8
  %69 = bitcast [8000 x double]** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %69) #8
  %70 = bitcast %struct.ident_t* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %70) #8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %70, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @3 to i8*), i64 16, i1 false) #8
  call void @llvm.dbg.value(metadata i32 8000, metadata !123, metadata !DIExpression()) #8, !dbg !280
  store i32 8000, i32* %3, align 4, !tbaa !42
  call void @llvm.dbg.value(metadata double* %19, metadata !124, metadata !DIExpression()) #8, !dbg !280
  %71 = bitcast double** %4 to i8**
  store i8* %15, i8** %71, align 8, !tbaa !46
  call void @llvm.dbg.value(metadata double* %21, metadata !125, metadata !DIExpression()) #8, !dbg !280
  %72 = bitcast double** %5 to i8**
  store i8* %17, i8** %72, align 8, !tbaa !46
  call void @llvm.dbg.value(metadata [8000 x double]* %22, metadata !126, metadata !DIExpression()) #8, !dbg !280
  %73 = bitcast [8000 x double]** %6 to i8**
  store i8* %13, i8** %73, align 8, !tbaa !46
  %74 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %7, i64 0, i32 4, !dbg !282
  store i8* getelementptr inbounds ([89 x i8], [89 x i8]* @4, i64 0, i64 0), i8** %74, align 8, !dbg !282, !tbaa !49
  call void @llvm.dbg.value(metadata i32* %3, metadata !123, metadata !DIExpression(DW_OP_deref)) #8, !dbg !280
  call void @llvm.dbg.value(metadata double** %4, metadata !124, metadata !DIExpression(DW_OP_deref)) #8, !dbg !280
  call void @llvm.dbg.value(metadata double** %5, metadata !125, metadata !DIExpression(DW_OP_deref)) #8, !dbg !280
  call void @llvm.dbg.value(metadata [8000 x double]** %6, metadata !126, metadata !DIExpression(DW_OP_deref)) #8, !dbg !280
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %7, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, double**, [8000 x double]**, double**)* @.omp_outlined..2 to void (i32*, i32*, ...)*), i32* nonnull %3, double** nonnull %4, [8000 x double]** nonnull %6, double** nonnull %5) #8, !dbg !282
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %66) #8, !dbg !283
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %67) #8, !dbg !283
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %68) #8, !dbg !283
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %69) #8, !dbg !283
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %70) #8, !dbg !283
  call void (...) @polybench_timer_stop() #8, !dbg !284
  call void (...) @polybench_timer_print() #8, !dbg !285
  %75 = icmp sgt i32 %0, 42, !dbg !286
  br i1 %75, label %76, label %101, !dbg !286

76:                                               ; preds = %56
  %77 = load i8*, i8** %1, align 8, !dbg !286, !tbaa !46
  %78 = load i8, i8* %77, align 1, !dbg !286
  %79 = icmp eq i8 %78, 0, !dbg !286
  br i1 %79, label %80, label %101, !dbg !288

80:                                               ; preds = %76, %97
  %81 = phi i64 [ %98, %97 ], [ 0, %76 ]
  %82 = phi i32 [ %99, %97 ], [ 0, %76 ]
  call void @llvm.dbg.value(metadata i64 %81, metadata !289, metadata !DIExpression()) #8, !dbg !297
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !299, !tbaa !46
  %84 = getelementptr inbounds double, double* %18, i64 %81, !dbg !303
  %85 = load double, double* %84, align 8, !dbg !303, !tbaa !105
  %86 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), double %85) #9, !dbg !304
  %87 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !305, !tbaa !46
  %88 = getelementptr inbounds double, double* %19, i64 %81, !dbg !306
  %89 = load double, double* %88, align 8, !dbg !306, !tbaa !105
  %90 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %87, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), double %89) #9, !dbg !307
  %91 = trunc i32 %82 to i16, !dbg !308
  %92 = urem i16 %91, 20, !dbg !308
  %93 = icmp eq i16 %92, 0, !dbg !310
  br i1 %93, label %94, label %97, !dbg !311

94:                                               ; preds = %80
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !312, !tbaa !46
  %96 = call i32 @fputc(i32 10, %struct._IO_FILE* %95) #9, !dbg !313
  br label %97, !dbg !313

97:                                               ; preds = %94, %80
  %98 = add nuw nsw i64 %81, 1, !dbg !314
  %99 = add nuw nsw i32 %82, 1, !dbg !314
  call void @llvm.dbg.value(metadata i64 %98, metadata !289, metadata !DIExpression()) #8, !dbg !297
  %100 = icmp eq i64 %98, 8000, !dbg !315
  br i1 %100, label %101, label %80, !dbg !316, !llvm.loop !317

101:                                              ; preds = %97, %76, %56
  call void @free(i8* %13) #8, !dbg !319
  call void @free(i8* %14) #8, !dbg !320
  call void @free(i8* %15) #8, !dbg !321
  call void @free(i8* %16) #8, !dbg !322
  call void @free(i8* %17) #8, !dbg !323
  ret i32 0, !dbg !324
}

declare !dbg !9 dso_local i8* @polybench_alloc_data(i64, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !19 dso_local void @free(i8* nocapture) local_unnamed_addr #4

declare !dbg !23 dso_local void @polybench_timer_start(...) local_unnamed_addr #3

declare !dbg !26 dso_local void @polybench_timer_stop(...) local_unnamed_addr #3

declare !dbg !27 dso_local void @polybench_timer_print(...) local_unnamed_addr #3

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
!1 = !DIFile(filename: "../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/mvt/mvt.c", directory: "/WAVE/users/unix/klor/ycho_lab/kimsong_lor/autotuning_tools/scripts")
!2 = !{}
!3 = !{!4, !9, !16, !13, !19, !6, !23, !26, !27}
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
!19 = !DISubprogram(name: "free", scope: !20, file: !20, line: 563, type: !21, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!20 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!21 = !DISubroutineType(types: !22)
!22 = !{null, !13}
!23 = !DISubprogram(name: "polybench_timer_start", scope: !10, file: !10, line: 184, type: !24, spFlags: DISPFlagOptimized, retainedNodes: !2)
!24 = !DISubroutineType(types: !25)
!25 = !{null, null}
!26 = !DISubprogram(name: "polybench_timer_stop", scope: !10, file: !10, line: 185, type: !24, spFlags: DISPFlagOptimized, retainedNodes: !2)
!27 = !DISubprogram(name: "polybench_timer_print", scope: !10, file: !10, line: 186, type: !24, spFlags: DISPFlagOptimized, retainedNodes: !2)
!28 = !{i32 7, !"Dwarf Version", i32 4}
!29 = !{i32 2, !"Debug Info Version", i32 3}
!30 = !{i32 1, !"wchar_size", i32 4}
!31 = !{!"clang version 10.0.1 (https://github.com/conda-forge/clangdev-feedstock 2a1fb6e8a1c6dc6e585535457c24f0295d90c8d2)"}
!32 = distinct !DISubprogram(name: "kernel_p1", scope: !1, file: !1, line: 61, type: !33, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !36)
!33 = !DISubroutineType(types: !34)
!34 = !{null, !15, !35, !35, !16}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!36 = !{!37, !38, !39, !40}
!37 = !DILocalVariable(name: "n", arg: 1, scope: !32, file: !1, line: 61, type: !15)
!38 = !DILocalVariable(name: "x1", arg: 2, scope: !32, file: !1, line: 61, type: !35)
!39 = !DILocalVariable(name: "y_1", arg: 3, scope: !32, file: !1, line: 61, type: !35)
!40 = !DILocalVariable(name: "A", arg: 4, scope: !32, file: !1, line: 61, type: !16)
!41 = !DILocation(line: 0, scope: !32)
!42 = !{!43, !43, i64 0}
!43 = !{!"int", !44, i64 0}
!44 = !{!"omnipotent char", !45, i64 0}
!45 = !{!"Simple C/C++ TBAA"}
!46 = !{!47, !47, i64 0}
!47 = !{!"any pointer", !44, i64 0}
!48 = !DILocation(line: 63, column: 1, scope: !32)
!49 = !{!50, !47, i64 16}
!50 = !{!"ident_t", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !47, i64 16}
!51 = !DILocation(line: 72, column: 1, scope: !32)
!52 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 64, type: !53, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !62)
!53 = !DISubroutineType(types: !54)
!54 = !{null, !55, !55, !59, !60, !61, !60}
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!59 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !15, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !35, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !16, size: 64)
!62 = !{!63, !64, !65, !66, !67, !68}
!63 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !52, type: !55, flags: DIFlagArtificial)
!64 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !52, type: !55, flags: DIFlagArtificial)
!65 = !DILocalVariable(name: "n", arg: 3, scope: !52, type: !59, flags: DIFlagArtificial)
!66 = !DILocalVariable(name: "x1", arg: 4, scope: !52, type: !60, flags: DIFlagArtificial)
!67 = !DILocalVariable(name: "A", arg: 5, scope: !52, type: !61, flags: DIFlagArtificial)
!68 = !DILocalVariable(name: "y_1", arg: 6, scope: !52, type: !60, flags: DIFlagArtificial)
!69 = !DILocation(line: 0, scope: !52)
!70 = !{!71}
!71 = distinct !{!71, !72, !".omp_outlined._debug__: argument 0"}
!72 = distinct !{!72, !".omp_outlined._debug__"}
!73 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !74, type: !55, flags: DIFlagArtificial)
!74 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 64, type: !53, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !75)
!75 = !{!73, !76, !77, !78, !79, !80, !81, !82, !82, !83, !84, !85, !86, !87, !83, !88}
!76 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !74, type: !55, flags: DIFlagArtificial)
!77 = !DILocalVariable(name: "n", arg: 3, scope: !74, file: !1, line: 61, type: !59)
!78 = !DILocalVariable(name: "x1", arg: 4, scope: !74, file: !1, line: 61, type: !60)
!79 = !DILocalVariable(name: "A", arg: 5, scope: !74, file: !1, line: 61, type: !61)
!80 = !DILocalVariable(name: "y_1", arg: 6, scope: !74, file: !1, line: 61, type: !60)
!81 = !DILocalVariable(name: ".omp.iv", scope: !74, type: !15, flags: DIFlagArtificial)
!82 = !DILocalVariable(name: ".capture_expr.", scope: !74, type: !15, flags: DIFlagArtificial)
!83 = !DILocalVariable(name: "i", scope: !74, type: !15, flags: DIFlagArtificial)
!84 = !DILocalVariable(name: ".omp.lb", scope: !74, type: !15, flags: DIFlagArtificial)
!85 = !DILocalVariable(name: ".omp.ub", scope: !74, type: !15, flags: DIFlagArtificial)
!86 = !DILocalVariable(name: ".omp.stride", scope: !74, type: !15, flags: DIFlagArtificial)
!87 = !DILocalVariable(name: ".omp.is_last", scope: !74, type: !15, flags: DIFlagArtificial)
!88 = !DILocalVariable(name: "j", scope: !89, file: !1, line: 67, type: !15)
!89 = distinct !DILexicalBlock(scope: !90, file: !1, line: 67, column: 5)
!90 = distinct !DILexicalBlock(scope: !74, file: !1, line: 65, column: 3)
!91 = !DILocation(line: 0, scope: !74, inlinedAt: !92)
!92 = distinct !DILocation(line: 64, column: 3, scope: !52)
!93 = !DILocation(line: 64, column: 23, scope: !74, inlinedAt: !92)
!94 = !DILocation(line: 64, column: 3, scope: !74, inlinedAt: !92)
!95 = !DILocation(line: 64, column: 8, scope: !74, inlinedAt: !92)
!96 = !DILocation(line: 0, scope: !90, inlinedAt: !92)
!97 = !DILocation(line: 0, scope: !98, inlinedAt: !92)
!98 = distinct !DILexicalBlock(scope: !89, file: !1, line: 67, column: 5)
!99 = !DILocation(line: 0, scope: !100, inlinedAt: !92)
!100 = distinct !DILexicalBlock(scope: !98, file: !1, line: 68, column: 5)
!101 = !DILocation(line: 63, column: 1, scope: !74, inlinedAt: !92)
!102 = !DILocation(line: 66, column: 11, scope: !90, inlinedAt: !92)
!103 = !DILocation(line: 0, scope: !89, inlinedAt: !92)
!104 = !DILocation(line: 66, column: 5, scope: !90, inlinedAt: !92)
!105 = !{!106, !106, i64 0}
!106 = !{!"double", !44, i64 0}
!107 = !DILocation(line: 67, column: 5, scope: !89, inlinedAt: !92)
!108 = !DILocation(line: 69, column: 13, scope: !100, inlinedAt: !92)
!109 = !DILocation(line: 69, column: 16, scope: !100, inlinedAt: !92)
!110 = !DILocation(line: 69, column: 26, scope: !100, inlinedAt: !92)
!111 = !DILocation(line: 69, column: 24, scope: !100, inlinedAt: !92)
!112 = !DILocation(line: 67, column: 29, scope: !98, inlinedAt: !92)
!113 = distinct !{!113, !107, !114}
!114 = !DILocation(line: 70, column: 5, scope: !89, inlinedAt: !92)
!115 = distinct !{!115, !101, !116}
!116 = !DILocation(line: 63, column: 25, scope: !74, inlinedAt: !92)
!117 = !DILocation(line: 71, column: 3, scope: !74, inlinedAt: !92)
!118 = !DILocation(line: 64, column: 3, scope: !52)
!119 = !{!120}
!120 = !{i64 2, i64 -1, i64 -1, i1 true}
!121 = distinct !DISubprogram(name: "kernel_p2", scope: !1, file: !1, line: 74, type: !33, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !122)
!122 = !{!123, !124, !125, !126}
!123 = !DILocalVariable(name: "n", arg: 1, scope: !121, file: !1, line: 74, type: !15)
!124 = !DILocalVariable(name: "x2", arg: 2, scope: !121, file: !1, line: 74, type: !35)
!125 = !DILocalVariable(name: "y_2", arg: 3, scope: !121, file: !1, line: 74, type: !35)
!126 = !DILocalVariable(name: "A", arg: 4, scope: !121, file: !1, line: 74, type: !16)
!127 = !DILocation(line: 0, scope: !121)
!128 = !DILocation(line: 76, column: 1, scope: !121)
!129 = !DILocation(line: 85, column: 1, scope: !121)
!130 = distinct !DISubprogram(name: ".omp_outlined..2", scope: !1, file: !1, line: 77, type: !53, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !131)
!131 = !{!132, !133, !134, !135, !136, !137}
!132 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !130, type: !55, flags: DIFlagArtificial)
!133 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !130, type: !55, flags: DIFlagArtificial)
!134 = !DILocalVariable(name: "n", arg: 3, scope: !130, type: !59, flags: DIFlagArtificial)
!135 = !DILocalVariable(name: "x2", arg: 4, scope: !130, type: !60, flags: DIFlagArtificial)
!136 = !DILocalVariable(name: "A", arg: 5, scope: !130, type: !61, flags: DIFlagArtificial)
!137 = !DILocalVariable(name: "y_2", arg: 6, scope: !130, type: !60, flags: DIFlagArtificial)
!138 = !DILocation(line: 0, scope: !130)
!139 = !{!140}
!140 = distinct !{!140, !141, !".omp_outlined._debug__.1: argument 0"}
!141 = distinct !{!141, !".omp_outlined._debug__.1"}
!142 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !143, type: !55, flags: DIFlagArtificial)
!143 = distinct !DISubprogram(name: ".omp_outlined._debug__.1", scope: !1, file: !1, line: 77, type: !53, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!144 = !{!142, !145, !146, !147, !148, !149, !150, !151, !151, !152, !153, !154, !155, !156, !152, !157}
!145 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !143, type: !55, flags: DIFlagArtificial)
!146 = !DILocalVariable(name: "n", arg: 3, scope: !143, file: !1, line: 74, type: !59)
!147 = !DILocalVariable(name: "x2", arg: 4, scope: !143, file: !1, line: 74, type: !60)
!148 = !DILocalVariable(name: "A", arg: 5, scope: !143, file: !1, line: 74, type: !61)
!149 = !DILocalVariable(name: "y_2", arg: 6, scope: !143, file: !1, line: 74, type: !60)
!150 = !DILocalVariable(name: ".omp.iv", scope: !143, type: !15, flags: DIFlagArtificial)
!151 = !DILocalVariable(name: ".capture_expr.", scope: !143, type: !15, flags: DIFlagArtificial)
!152 = !DILocalVariable(name: "i", scope: !143, type: !15, flags: DIFlagArtificial)
!153 = !DILocalVariable(name: ".omp.lb", scope: !143, type: !15, flags: DIFlagArtificial)
!154 = !DILocalVariable(name: ".omp.ub", scope: !143, type: !15, flags: DIFlagArtificial)
!155 = !DILocalVariable(name: ".omp.stride", scope: !143, type: !15, flags: DIFlagArtificial)
!156 = !DILocalVariable(name: ".omp.is_last", scope: !143, type: !15, flags: DIFlagArtificial)
!157 = !DILocalVariable(name: "j", scope: !158, file: !1, line: 80, type: !15)
!158 = distinct !DILexicalBlock(scope: !159, file: !1, line: 80, column: 5)
!159 = distinct !DILexicalBlock(scope: !143, file: !1, line: 78, column: 3)
!160 = !DILocation(line: 0, scope: !143, inlinedAt: !161)
!161 = distinct !DILocation(line: 77, column: 3, scope: !130)
!162 = !DILocation(line: 77, column: 23, scope: !143, inlinedAt: !161)
!163 = !DILocation(line: 77, column: 3, scope: !143, inlinedAt: !161)
!164 = !DILocation(line: 77, column: 8, scope: !143, inlinedAt: !161)
!165 = !DILocation(line: 0, scope: !159, inlinedAt: !161)
!166 = !DILocation(line: 0, scope: !167, inlinedAt: !161)
!167 = distinct !DILexicalBlock(scope: !158, file: !1, line: 80, column: 5)
!168 = !DILocation(line: 0, scope: !169, inlinedAt: !161)
!169 = distinct !DILexicalBlock(scope: !167, file: !1, line: 81, column: 5)
!170 = !DILocation(line: 76, column: 1, scope: !143, inlinedAt: !161)
!171 = !DILocation(line: 79, column: 11, scope: !159, inlinedAt: !161)
!172 = !DILocation(line: 0, scope: !158, inlinedAt: !161)
!173 = !DILocation(line: 79, column: 5, scope: !159, inlinedAt: !161)
!174 = !DILocation(line: 80, column: 5, scope: !158, inlinedAt: !161)
!175 = !DILocation(line: 82, column: 13, scope: !169, inlinedAt: !161)
!176 = !DILocation(line: 82, column: 16, scope: !169, inlinedAt: !161)
!177 = !DILocation(line: 82, column: 26, scope: !169, inlinedAt: !161)
!178 = !DILocation(line: 82, column: 24, scope: !169, inlinedAt: !161)
!179 = !DILocation(line: 80, column: 29, scope: !167, inlinedAt: !161)
!180 = distinct !{!180, !174, !181}
!181 = !DILocation(line: 83, column: 5, scope: !158, inlinedAt: !161)
!182 = distinct !{!182, !170, !183}
!183 = !DILocation(line: 76, column: 25, scope: !143, inlinedAt: !161)
!184 = !DILocation(line: 84, column: 3, scope: !143, inlinedAt: !161)
!185 = !DILocation(line: 77, column: 3, scope: !130)
!186 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 109, type: !187, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !192)
!187 = !DISubroutineType(types: !188)
!188 = !{!15, !15, !189}
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!192 = !{!193, !194, !195, !196, !197, !198, !199, !200}
!193 = !DILocalVariable(name: "argc", arg: 1, scope: !186, file: !1, line: 109, type: !15)
!194 = !DILocalVariable(name: "argv", arg: 2, scope: !186, file: !1, line: 109, type: !189)
!195 = !DILocalVariable(name: "n", scope: !186, file: !1, line: 112, type: !15)
!196 = !DILocalVariable(name: "A", scope: !186, file: !1, line: 115, type: !4)
!197 = !DILocalVariable(name: "x1", scope: !186, file: !1, line: 116, type: !16)
!198 = !DILocalVariable(name: "x2", scope: !186, file: !1, line: 117, type: !16)
!199 = !DILocalVariable(name: "y_1", scope: !186, file: !1, line: 118, type: !16)
!200 = !DILocalVariable(name: "y_2", scope: !186, file: !1, line: 119, type: !16)
!201 = !DILocation(line: 0, scope: !186)
!202 = !DILocation(line: 115, column: 3, scope: !186)
!203 = !DILocation(line: 116, column: 3, scope: !186)
!204 = !DILocation(line: 117, column: 3, scope: !186)
!205 = !DILocation(line: 118, column: 3, scope: !186)
!206 = !DILocation(line: 119, column: 3, scope: !186)
!207 = !DILocation(line: 123, column: 14, scope: !186)
!208 = !DILocation(line: 124, column: 14, scope: !186)
!209 = !DILocation(line: 125, column: 14, scope: !186)
!210 = !DILocation(line: 126, column: 14, scope: !186)
!211 = !DILocation(line: 127, column: 14, scope: !186)
!212 = !DILocalVariable(name: "n", arg: 1, scope: !213, file: !1, line: 23, type: !15)
!213 = distinct !DISubprogram(name: "init_array", scope: !1, file: !1, line: 23, type: !214, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !216)
!214 = !DISubroutineType(types: !215)
!215 = !{null, !15, !35, !35, !35, !35, !16}
!216 = !{!212, !217, !218, !219, !220, !221, !222, !223}
!217 = !DILocalVariable(name: "x1", arg: 2, scope: !213, file: !1, line: 24, type: !35)
!218 = !DILocalVariable(name: "x2", arg: 3, scope: !213, file: !1, line: 25, type: !35)
!219 = !DILocalVariable(name: "y_1", arg: 4, scope: !213, file: !1, line: 26, type: !35)
!220 = !DILocalVariable(name: "y_2", arg: 5, scope: !213, file: !1, line: 27, type: !35)
!221 = !DILocalVariable(name: "A", arg: 6, scope: !213, file: !1, line: 28, type: !16)
!222 = !DILocalVariable(name: "i", scope: !213, file: !1, line: 30, type: !15)
!223 = !DILocalVariable(name: "j", scope: !213, file: !1, line: 30, type: !15)
!224 = !DILocation(line: 0, scope: !213, inlinedAt: !225)
!225 = distinct !DILocation(line: 122, column: 3, scope: !186)
!226 = !DILocation(line: 32, column: 3, scope: !227, inlinedAt: !225)
!227 = distinct !DILexicalBlock(scope: !213, file: !1, line: 32, column: 3)
!228 = !DILocation(line: 34, column: 14, scope: !229, inlinedAt: !225)
!229 = distinct !DILexicalBlock(scope: !230, file: !1, line: 33, column: 3)
!230 = distinct !DILexicalBlock(scope: !227, file: !1, line: 32, column: 3)
!231 = !DILocation(line: 34, column: 28, scope: !229, inlinedAt: !225)
!232 = !DILocation(line: 34, column: 5, scope: !229, inlinedAt: !225)
!233 = !DILocation(line: 34, column: 11, scope: !229, inlinedAt: !225)
!234 = !DILocation(line: 35, column: 27, scope: !229, inlinedAt: !225)
!235 = !DILocation(line: 35, column: 32, scope: !229, inlinedAt: !225)
!236 = !DILocation(line: 35, column: 5, scope: !229, inlinedAt: !225)
!237 = !DILocation(line: 35, column: 11, scope: !229, inlinedAt: !225)
!238 = !DILocation(line: 36, column: 28, scope: !229, inlinedAt: !225)
!239 = !DILocation(line: 36, column: 33, scope: !229, inlinedAt: !225)
!240 = !DILocation(line: 36, column: 5, scope: !229, inlinedAt: !225)
!241 = !DILocation(line: 36, column: 12, scope: !229, inlinedAt: !225)
!242 = !DILocation(line: 37, column: 28, scope: !229, inlinedAt: !225)
!243 = !DILocation(line: 37, column: 33, scope: !229, inlinedAt: !225)
!244 = !DILocation(line: 37, column: 5, scope: !229, inlinedAt: !225)
!245 = !DILocation(line: 37, column: 12, scope: !229, inlinedAt: !225)
!246 = !DILocation(line: 38, column: 5, scope: !247, inlinedAt: !225)
!247 = distinct !DILexicalBlock(scope: !229, file: !1, line: 38, column: 5)
!248 = !DILocation(line: 39, column: 33, scope: !249, inlinedAt: !225)
!249 = distinct !DILexicalBlock(scope: !247, file: !1, line: 38, column: 5)
!250 = !DILocation(line: 39, column: 31, scope: !249, inlinedAt: !225)
!251 = !DILocation(line: 39, column: 36, scope: !249, inlinedAt: !225)
!252 = !DILocation(line: 39, column: 7, scope: !249, inlinedAt: !225)
!253 = !DILocation(line: 39, column: 15, scope: !249, inlinedAt: !225)
!254 = !DILocation(line: 38, column: 25, scope: !249, inlinedAt: !225)
!255 = !DILocation(line: 38, column: 19, scope: !249, inlinedAt: !225)
!256 = distinct !{!256, !246, !257}
!257 = !DILocation(line: 39, column: 38, scope: !247, inlinedAt: !225)
!258 = !DILocation(line: 32, column: 23, scope: !230, inlinedAt: !225)
!259 = !DILocation(line: 32, column: 17, scope: !230, inlinedAt: !225)
!260 = distinct !{!260, !226, !261}
!261 = !DILocation(line: 40, column: 3, scope: !227, inlinedAt: !225)
!262 = !DILocalVariable(name: "n", arg: 1, scope: !263, file: !1, line: 89, type: !15)
!263 = distinct !DISubprogram(name: "kernel_mvt", scope: !1, file: !1, line: 89, type: !214, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !264)
!264 = !{!262, !265, !266, !267, !268, !269}
!265 = !DILocalVariable(name: "x1", arg: 2, scope: !263, file: !1, line: 90, type: !35)
!266 = !DILocalVariable(name: "x2", arg: 3, scope: !263, file: !1, line: 91, type: !35)
!267 = !DILocalVariable(name: "y_1", arg: 4, scope: !263, file: !1, line: 92, type: !35)
!268 = !DILocalVariable(name: "y_2", arg: 5, scope: !263, file: !1, line: 93, type: !35)
!269 = !DILocalVariable(name: "A", arg: 6, scope: !263, file: !1, line: 94, type: !16)
!270 = !DILocation(line: 0, scope: !263, inlinedAt: !271)
!271 = distinct !DILocation(line: 133, column: 3, scope: !186)
!272 = !DILocation(line: 97, column: 3, scope: !263, inlinedAt: !271)
!273 = !DILocation(line: 0, scope: !32, inlinedAt: !274)
!274 = distinct !DILocation(line: 98, column: 3, scope: !263, inlinedAt: !271)
!275 = !DILocation(line: 63, column: 1, scope: !32, inlinedAt: !274)
!276 = !DILocation(line: 72, column: 1, scope: !32, inlinedAt: !274)
!277 = !DILocation(line: 99, column: 3, scope: !263, inlinedAt: !271)
!278 = !DILocation(line: 100, column: 3, scope: !263, inlinedAt: !271)
!279 = !DILocation(line: 102, column: 3, scope: !263, inlinedAt: !271)
!280 = !DILocation(line: 0, scope: !121, inlinedAt: !281)
!281 = distinct !DILocation(line: 103, column: 3, scope: !263, inlinedAt: !271)
!282 = !DILocation(line: 76, column: 1, scope: !121, inlinedAt: !281)
!283 = !DILocation(line: 85, column: 1, scope: !121, inlinedAt: !281)
!284 = !DILocation(line: 104, column: 3, scope: !263, inlinedAt: !271)
!285 = !DILocation(line: 105, column: 3, scope: !263, inlinedAt: !271)
!286 = !DILocation(line: 146, column: 3, scope: !287)
!287 = distinct !DILexicalBlock(scope: !186, file: !1, line: 146, column: 3)
!288 = !DILocation(line: 146, column: 3, scope: !186)
!289 = !DILocalVariable(name: "i", scope: !290, file: !1, line: 50, type: !15)
!290 = distinct !DISubprogram(name: "print_array", scope: !1, file: !1, line: 45, type: !291, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !293)
!291 = !DISubroutineType(types: !292)
!292 = !{null, !15, !35, !35}
!293 = !{!294, !295, !296, !289}
!294 = !DILocalVariable(name: "n", arg: 1, scope: !290, file: !1, line: 45, type: !15)
!295 = !DILocalVariable(name: "x1", arg: 2, scope: !290, file: !1, line: 46, type: !35)
!296 = !DILocalVariable(name: "x2", arg: 3, scope: !290, file: !1, line: 47, type: !35)
!297 = !DILocation(line: 0, scope: !290, inlinedAt: !298)
!298 = distinct !DILocation(line: 146, column: 3, scope: !287)
!299 = !DILocation(line: 54, column: 13, scope: !300, inlinedAt: !298)
!300 = distinct !DILexicalBlock(scope: !301, file: !1, line: 53, column: 3)
!301 = distinct !DILexicalBlock(scope: !302, file: !1, line: 52, column: 3)
!302 = distinct !DILexicalBlock(scope: !290, file: !1, line: 52, column: 3)
!303 = !DILocation(line: 54, column: 43, scope: !300, inlinedAt: !298)
!304 = !DILocation(line: 54, column: 5, scope: !300, inlinedAt: !298)
!305 = !DILocation(line: 55, column: 13, scope: !300, inlinedAt: !298)
!306 = !DILocation(line: 55, column: 43, scope: !300, inlinedAt: !298)
!307 = !DILocation(line: 55, column: 5, scope: !300, inlinedAt: !298)
!308 = !DILocation(line: 56, column: 11, scope: !309, inlinedAt: !298)
!309 = distinct !DILexicalBlock(scope: !300, file: !1, line: 56, column: 9)
!310 = !DILocation(line: 56, column: 16, scope: !309, inlinedAt: !298)
!311 = !DILocation(line: 56, column: 9, scope: !300, inlinedAt: !298)
!312 = !DILocation(line: 57, column: 15, scope: !309, inlinedAt: !298)
!313 = !DILocation(line: 57, column: 7, scope: !309, inlinedAt: !298)
!314 = !DILocation(line: 52, column: 23, scope: !301, inlinedAt: !298)
!315 = !DILocation(line: 52, column: 17, scope: !301, inlinedAt: !298)
!316 = !DILocation(line: 52, column: 3, scope: !302, inlinedAt: !298)
!317 = distinct !{!317, !316, !318}
!318 = !DILocation(line: 58, column: 3, scope: !302, inlinedAt: !298)
!319 = !DILocation(line: 149, column: 3, scope: !186)
!320 = !DILocation(line: 150, column: 3, scope: !186)
!321 = !DILocation(line: 151, column: 3, scope: !186)
!322 = !DILocation(line: 152, column: 3, scope: !186)
!323 = !DILocation(line: 153, column: 3, scope: !186)
!324 = !DILocation(line: 155, column: 3, scope: !186)
