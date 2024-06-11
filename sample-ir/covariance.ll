; ModuleID = '../test/poly_gpu/inputs_kernel_splits/datamining/covariance/covariance.c'
source_filename = "../test/poly_gpu/inputs_kernel_splits/datamining/covariance/covariance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [91 x i8] c";../test/poly_gpu/inputs_kernel_splits/datamining/covariance/covariance.c;kernel_p1;57;1;;\00", align 1
@2 = private unnamed_addr constant [92 x i8] c";../test/poly_gpu/inputs_kernel_splits/datamining/covariance/covariance.c;kernel_p1;57;36;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant [91 x i8] c";../test/poly_gpu/inputs_kernel_splits/datamining/covariance/covariance.c;kernel_p2;70;1;;\00", align 1
@5 = private unnamed_addr constant [92 x i8] c";../test/poly_gpu/inputs_kernel_splits/datamining/covariance/covariance.c;kernel_p2;70;39;;\00", align 1
@6 = private unnamed_addr constant [91 x i8] c";../test/poly_gpu/inputs_kernel_splits/datamining/covariance/covariance.c;kernel_p3;79;1;;\00", align 1
@7 = private unnamed_addr constant [92 x i8] c";../test/poly_gpu/inputs_kernel_splits/datamining/covariance/covariance.c;kernel_p3;79;44;;\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@llvm.used = appending global [4 x i8*] [i8* bitcast (void (i32, i32, double, [2000 x double]*, [2000 x double]*, double*)* @kernel_covariance to i8*), i8* bitcast (void (i32, i32, double, [2000 x double]*, double*)* @kernel_p1 to i8*), i8* bitcast (void (i32, i32, [2000 x double]*, double*)* @kernel_p2 to i8*), i8* bitcast (void (i32, i32, double, [2000 x double]*, [2000 x double]*)* @kernel_p3 to i8*)], section "llvm.metadata"

; Function Attrs: nounwind uwtable
define internal void @kernel_p1(i32 %0, i32 %1, double %2, [2000 x double]* %3, double* %4) #0 !dbg !32 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca [2000 x double]*, align 8
  %10 = alloca double*, align 8
  %11 = alloca %struct.ident_t, align 8
  %12 = bitcast %struct.ident_t* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %12, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @3 to i8*), i64 16, i1 false)
  call void @llvm.dbg.value(metadata i32 %0, metadata !37, metadata !DIExpression()), !dbg !44
  store i32 %0, i32* %6, align 4, !tbaa !45
  call void @llvm.dbg.value(metadata i32 %1, metadata !38, metadata !DIExpression()), !dbg !44
  store i32 %1, i32* %7, align 4, !tbaa !45
  call void @llvm.dbg.value(metadata double %2, metadata !39, metadata !DIExpression()), !dbg !44
  store double %2, double* %8, align 8, !tbaa !49
  call void @llvm.dbg.value(metadata [2000 x double]* %3, metadata !40, metadata !DIExpression()), !dbg !44
  store [2000 x double]* %3, [2000 x double]** %9, align 8, !tbaa !51
  call void @llvm.dbg.value(metadata double* %4, metadata !41, metadata !DIExpression()), !dbg !44
  store double* %4, double** %10, align 8, !tbaa !51
  %13 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %11, i64 0, i32 4, !dbg !53
  store i8* getelementptr inbounds ([91 x i8], [91 x i8]* @1, i64 0, i64 0), i8** %13, align 8, !dbg !53, !tbaa !54
  call void @llvm.dbg.value(metadata i32* %6, metadata !37, metadata !DIExpression(DW_OP_deref)), !dbg !44
  call void @llvm.dbg.value(metadata i32* %7, metadata !38, metadata !DIExpression(DW_OP_deref)), !dbg !44
  call void @llvm.dbg.value(metadata double* %8, metadata !39, metadata !DIExpression(DW_OP_deref)), !dbg !44
  call void @llvm.dbg.value(metadata [2000 x double]** %9, metadata !40, metadata !DIExpression(DW_OP_deref)), !dbg !44
  call void @llvm.dbg.value(metadata double** %10, metadata !41, metadata !DIExpression(DW_OP_deref)), !dbg !44
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %11, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, double**, i32*, [2000 x double]**, double*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %6, double** nonnull %10, i32* nonnull %7, [2000 x double]** nonnull %9, double* nonnull %8) #8, !dbg !53
  ret void, !dbg !56
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
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture readonly dereferenceable(4) %2, double** nocapture readonly dereferenceable(8) %3, i32* nocapture readonly dereferenceable(4) %4, [2000 x double]** nocapture readonly dereferenceable(8) %5, double* nocapture readonly dereferenceable(8) %6) #2 !dbg !57 {
  %8 = bitcast double* %6 to i8*
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ident_t, align 8
  call void @llvm.dbg.value(metadata i32* %0, metadata !69, metadata !DIExpression()), !dbg !76
  call void @llvm.dbg.value(metadata i32* %1, metadata !70, metadata !DIExpression()), !dbg !76
  call void @llvm.dbg.value(metadata i32* %2, metadata !71, metadata !DIExpression()), !dbg !76
  call void @llvm.dbg.value(metadata double** %3, metadata !72, metadata !DIExpression()), !dbg !76
  call void @llvm.dbg.value(metadata i32* %4, metadata !73, metadata !DIExpression()), !dbg !76
  call void @llvm.dbg.value(metadata [2000 x double]** %5, metadata !74, metadata !DIExpression()), !dbg !76
  call void @llvm.dbg.value(metadata double* %6, metadata !75, metadata !DIExpression()), !dbg !76
  %14 = load i32, i32* %2, align 4, !dbg !77, !tbaa !45
  %15 = bitcast %struct.ident_t* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %15)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %15, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @0 to i8*), i64 24, i1 false) #8, !noalias !78
  call void @llvm.dbg.value(metadata i32* %0, metadata !81, metadata !DIExpression()) #8, !dbg !98
  call void @llvm.dbg.value(metadata i32* undef, metadata !84, metadata !DIExpression()) #8, !dbg !98
  call void @llvm.dbg.value(metadata double** %3, metadata !86, metadata !DIExpression()) #8, !dbg !98
  call void @llvm.dbg.value(metadata i32* %4, metadata !87, metadata !DIExpression()) #8, !dbg !98
  call void @llvm.dbg.value(metadata [2000 x double]** %5, metadata !88, metadata !DIExpression()) #8, !dbg !98
  call void @llvm.dbg.value(metadata double* %6, metadata !89, metadata !DIExpression()) #8, !dbg !98
  call void @llvm.dbg.value(metadata i32 %14, metadata !91, metadata !DIExpression()) #8, !dbg !98
  %16 = add nsw i32 %14, -1, !dbg !100
  call void @llvm.dbg.value(metadata i32 %16, metadata !91, metadata !DIExpression()) #8, !dbg !98
  call void @llvm.dbg.value(metadata i32 0, metadata !92, metadata !DIExpression()) #8, !dbg !98
  %17 = icmp sgt i32 %14, 0, !dbg !100
  br i1 %17, label %18, label %163, !dbg !100

18:                                               ; preds = %7
  %19 = bitcast i32* %9 to i8*, !dbg !100
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #8, !dbg !100, !noalias !78
  call void @llvm.dbg.value(metadata i32 0, metadata !93, metadata !DIExpression()) #8, !dbg !98
  store i32 0, i32* %9, align 4, !dbg !101, !tbaa !45, !noalias !78
  %20 = bitcast i32* %10 to i8*, !dbg !100
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %20) #8, !dbg !100, !noalias !78
  call void @llvm.dbg.value(metadata i32 %16, metadata !94, metadata !DIExpression()) #8, !dbg !98
  store i32 %16, i32* %10, align 4, !dbg !101, !tbaa !45, !noalias !78
  %21 = bitcast i32* %11 to i8*, !dbg !100
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %21) #8, !dbg !100, !noalias !78
  call void @llvm.dbg.value(metadata i32 1, metadata !95, metadata !DIExpression()) #8, !dbg !98
  store i32 1, i32* %11, align 4, !dbg !101, !tbaa !45, !noalias !78
  %22 = bitcast i32* %12 to i8*, !dbg !100
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22) #8, !dbg !100, !noalias !78
  call void @llvm.dbg.value(metadata i32 0, metadata !96, metadata !DIExpression()) #8, !dbg !98
  store i32 0, i32* %12, align 4, !dbg !101, !tbaa !45, !noalias !78
  %23 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %13, i64 0, i32 4, !dbg !100
  store i8* getelementptr inbounds ([91 x i8], [91 x i8]* @1, i64 0, i64 0), i8** %23, align 8, !dbg !100, !tbaa !54, !noalias !78
  %24 = load i32, i32* %0, align 4, !dbg !100, !tbaa !45, !alias.scope !78
  call void @llvm.dbg.value(metadata i32* %9, metadata !93, metadata !DIExpression(DW_OP_deref)) #8, !dbg !98
  call void @llvm.dbg.value(metadata i32* %10, metadata !94, metadata !DIExpression(DW_OP_deref)) #8, !dbg !98
  call void @llvm.dbg.value(metadata i32* %11, metadata !95, metadata !DIExpression(DW_OP_deref)) #8, !dbg !98
  call void @llvm.dbg.value(metadata i32* %12, metadata !96, metadata !DIExpression(DW_OP_deref)) #8, !dbg !98
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull %13, i32 %24, i32 34, i32* nonnull %12, i32* nonnull %9, i32* nonnull %10, i32* nonnull %11, i32 1, i32 1) #8, !dbg !100, !noalias !78
  %25 = load i32, i32* %10, align 4, !dbg !101, !tbaa !45, !noalias !78
  call void @llvm.dbg.value(metadata i32 %25, metadata !94, metadata !DIExpression()) #8, !dbg !98
  %26 = icmp slt i32 %25, %14, !dbg !101
  %27 = select i1 %26, i32 %25, i32 %16, !dbg !101
  call void @llvm.dbg.value(metadata i32 %27, metadata !94, metadata !DIExpression()) #8, !dbg !98
  store i32 %27, i32* %10, align 4, !dbg !101, !tbaa !45, !noalias !78
  %28 = load i32, i32* %9, align 4, !dbg !101, !tbaa !45, !noalias !78
  call void @llvm.dbg.value(metadata i32 %28, metadata !93, metadata !DIExpression()) #8, !dbg !98
  call void @llvm.dbg.value(metadata i32 %28, metadata !90, metadata !DIExpression()) #8, !dbg !98
  call void @llvm.dbg.value(metadata i32 %27, metadata !94, metadata !DIExpression()) #8, !dbg !98
  %29 = icmp sgt i32 %28, %27, !dbg !100
  br i1 %29, label %162, label %30, !dbg !100

30:                                               ; preds = %18
  %31 = load double*, double** %3, align 8, !dbg !102, !tbaa !51, !noalias !78
  %32 = load i32, i32* %4, align 4, !dbg !104, !noalias !78
  %33 = icmp sgt i32 %32, 0, !dbg !104
  %34 = load [2000 x double]*, [2000 x double]** %5, align 8, !dbg !104, !noalias !78
  %35 = sext i32 %28 to i64, !dbg !107
  %36 = sext i32 %27 to i64, !dbg !107
  br i1 %33, label %103, label %37, !dbg !100

37:                                               ; preds = %30
  %38 = icmp sgt i64 %36, %35, !dbg !107
  %39 = select i1 %38, i64 %36, i64 %35, !dbg !107
  %40 = add nsw i64 %39, 1, !dbg !107
  %41 = sub nsw i64 %40, %35, !dbg !107
  %42 = icmp ult i64 %41, 2, !dbg !107
  br i1 %42, label %43, label %45, !dbg !107

43:                                               ; preds = %101, %45, %37
  %44 = phi i64 [ %35, %45 ], [ %35, %37 ], [ %58, %101 ]
  br label %155, !dbg !107

45:                                               ; preds = %37
  %46 = getelementptr double, double* %31, i64 %35, !dbg !107
  %47 = bitcast double* %46 to i8*
  %48 = icmp sgt i64 %36, %35, !dbg !107
  %49 = select i1 %48, i64 %36, i64 %35, !dbg !107
  %50 = add nsw i64 %49, 1, !dbg !107
  %51 = getelementptr double, double* %31, i64 %50, !dbg !107
  %52 = getelementptr i8, i8* %8, i64 1, !dbg !107
  %53 = icmp ugt i8* %52, %47, !dbg !107
  %54 = icmp ugt double* %51, %6, !dbg !107
  %55 = and i1 %53, %54, !dbg !107
  br i1 %55, label %43, label %56, !dbg !107

56:                                               ; preds = %45
  %57 = and i64 %41, -2, !dbg !107
  %58 = add nsw i64 %57, %35, !dbg !107
  %59 = add nsw i64 %57, -2, !dbg !107
  %60 = lshr exact i64 %59, 1, !dbg !107
  %61 = add nuw i64 %60, 1, !dbg !107
  %62 = and i64 %61, 1, !dbg !107
  %63 = icmp eq i64 %59, 0, !dbg !107
  br i1 %63, label %89, label %64, !dbg !107

64:                                               ; preds = %56
  %65 = sub nuw i64 %61, %62, !dbg !107
  %66 = load double, double* %6, align 8, !dbg !102, !tbaa !49, !alias.scope !108, !noalias !78
  %67 = insertelement <2 x double> undef, double %66, i32 0
  %68 = fdiv <2 x double> <double 0.000000e+00, double undef>, %67
  %69 = shufflevector <2 x double> %68, <2 x double> undef, <2 x i32> zeroinitializer
  %70 = load double, double* %6, align 8, !dbg !102, !tbaa !49, !alias.scope !108, !noalias !78
  %71 = insertelement <2 x double> undef, double %70, i32 0
  %72 = fdiv <2 x double> <double 0.000000e+00, double undef>, %71
  %73 = shufflevector <2 x double> %72, <2 x double> undef, <2 x i32> zeroinitializer
  br label %74, !dbg !107

74:                                               ; preds = %74, %64
  %75 = phi i64 [ 0, %64 ], [ %86, %74 ]
  %76 = phi i64 [ %65, %64 ], [ %87, %74 ]
  %77 = add i64 %75, %35
  %78 = getelementptr inbounds double, double* %31, i64 %77, !dbg !111
  %79 = bitcast double* %78 to <2 x double>*, !dbg !112
  store <2 x double> zeroinitializer, <2 x double>* %79, align 8, !dbg !112, !tbaa !49, !alias.scope !113, !noalias !115
  %80 = bitcast double* %78 to <2 x double>*, !dbg !116
  store <2 x double> %69, <2 x double>* %80, align 8, !dbg !116, !tbaa !49, !alias.scope !113, !noalias !115
  %81 = or i64 %75, 2
  %82 = add i64 %81, %35
  %83 = getelementptr inbounds double, double* %31, i64 %82, !dbg !111
  %84 = bitcast double* %83 to <2 x double>*, !dbg !112
  store <2 x double> zeroinitializer, <2 x double>* %84, align 8, !dbg !112, !tbaa !49, !alias.scope !113, !noalias !115
  %85 = bitcast double* %83 to <2 x double>*, !dbg !116
  store <2 x double> %73, <2 x double>* %85, align 8, !dbg !116, !tbaa !49, !alias.scope !113, !noalias !115
  %86 = add i64 %75, 4
  %87 = add i64 %76, -2
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %74, !llvm.loop !117

89:                                               ; preds = %74, %56
  %90 = phi i64 [ 0, %56 ], [ %86, %74 ]
  %91 = icmp eq i64 %62, 0
  br i1 %91, label %101, label %92

92:                                               ; preds = %89
  %93 = add i64 %90, %35
  %94 = getelementptr inbounds double, double* %31, i64 %93, !dbg !111
  %95 = bitcast double* %94 to <2 x double>*, !dbg !112
  store <2 x double> zeroinitializer, <2 x double>* %95, align 8, !dbg !112, !tbaa !49, !alias.scope !113, !noalias !115
  %96 = load double, double* %6, align 8, !dbg !120, !tbaa !49, !alias.scope !108, !noalias !78
  %97 = insertelement <2 x double> undef, double %96, i32 0
  %98 = fdiv <2 x double> <double 0.000000e+00, double undef>, %97
  %99 = shufflevector <2 x double> %98, <2 x double> undef, <2 x i32> zeroinitializer
  %100 = bitcast double* %94 to <2 x double>*, !dbg !116
  store <2 x double> %99, <2 x double>* %100, align 8, !dbg !116, !tbaa !49, !alias.scope !113, !noalias !115
  br label %101, !dbg !100

101:                                              ; preds = %89, %92
  %102 = icmp eq i64 %41, %57, !dbg !100
  br i1 %102, label %162, label %43, !dbg !100

103:                                              ; preds = %30
  %104 = zext i32 %32 to i64, !dbg !104
  %105 = add nsw i64 %104, -1, !dbg !107
  %106 = and i64 %104, 3, !dbg !121
  %107 = icmp ult i64 %105, 3, !dbg !121
  %108 = sub nsw i64 %104, %106, !dbg !121
  %109 = icmp eq i64 %106, 0, !dbg !121
  br label %110, !dbg !107

110:                                              ; preds = %149, %103
  %111 = phi i64 [ %35, %103 ], [ %153, %149 ]
  call void @llvm.dbg.value(metadata i64 %111, metadata !90, metadata !DIExpression()) #8, !dbg !98
  call void @llvm.dbg.value(metadata i64 %111, metadata !92, metadata !DIExpression()) #8, !dbg !98
  %112 = getelementptr inbounds double, double* %31, i64 %111, !dbg !111
  store double 0.000000e+00, double* %112, align 8, !dbg !112, !tbaa !49, !noalias !78
  call void @llvm.dbg.value(metadata i32 0, metadata !97, metadata !DIExpression()) #8, !dbg !98
  br i1 %107, label %135, label %113, !dbg !122

113:                                              ; preds = %110, %113
  %114 = phi double [ %131, %113 ], [ 0.000000e+00, %110 ], !dbg !123
  %115 = phi i64 [ %132, %113 ], [ 0, %110 ]
  %116 = phi i64 [ %133, %113 ], [ %108, %110 ]
  call void @llvm.dbg.value(metadata i64 %115, metadata !97, metadata !DIExpression()) #8, !dbg !98
  %117 = getelementptr inbounds [2000 x double], [2000 x double]* %34, i64 %115, i64 %111, !dbg !124
  %118 = load double, double* %117, align 8, !dbg !124, !tbaa !49, !noalias !78
  %119 = fadd double %114, %118, !dbg !123
  store double %119, double* %112, align 8, !dbg !123, !tbaa !49, !noalias !78
  %120 = or i64 %115, 1, !dbg !125
  call void @llvm.dbg.value(metadata i64 %120, metadata !97, metadata !DIExpression()) #8, !dbg !98
  %121 = getelementptr inbounds [2000 x double], [2000 x double]* %34, i64 %120, i64 %111, !dbg !124
  %122 = load double, double* %121, align 8, !dbg !124, !tbaa !49, !noalias !78
  %123 = fadd double %119, %122, !dbg !123
  store double %123, double* %112, align 8, !dbg !123, !tbaa !49, !noalias !78
  %124 = or i64 %115, 2, !dbg !125
  call void @llvm.dbg.value(metadata i64 %124, metadata !97, metadata !DIExpression()) #8, !dbg !98
  %125 = getelementptr inbounds [2000 x double], [2000 x double]* %34, i64 %124, i64 %111, !dbg !124
  %126 = load double, double* %125, align 8, !dbg !124, !tbaa !49, !noalias !78
  %127 = fadd double %123, %126, !dbg !123
  store double %127, double* %112, align 8, !dbg !123, !tbaa !49, !noalias !78
  %128 = or i64 %115, 3, !dbg !125
  call void @llvm.dbg.value(metadata i64 %128, metadata !97, metadata !DIExpression()) #8, !dbg !98
  %129 = getelementptr inbounds [2000 x double], [2000 x double]* %34, i64 %128, i64 %111, !dbg !124
  %130 = load double, double* %129, align 8, !dbg !124, !tbaa !49, !noalias !78
  %131 = fadd double %127, %130, !dbg !123
  store double %131, double* %112, align 8, !dbg !123, !tbaa !49, !noalias !78
  %132 = add nuw nsw i64 %115, 4, !dbg !125
  call void @llvm.dbg.value(metadata i64 %132, metadata !97, metadata !DIExpression()) #8, !dbg !98
  %133 = add i64 %116, -4, !dbg !122
  %134 = icmp eq i64 %133, 0, !dbg !122
  br i1 %134, label %135, label %113, !dbg !122, !llvm.loop !126

135:                                              ; preds = %113, %110
  %136 = phi double [ undef, %110 ], [ %131, %113 ]
  %137 = phi double [ 0.000000e+00, %110 ], [ %131, %113 ]
  %138 = phi i64 [ 0, %110 ], [ %132, %113 ]
  br i1 %109, label %149, label %139, !dbg !122

139:                                              ; preds = %135, %139
  %140 = phi double [ %145, %139 ], [ %137, %135 ], !dbg !123
  %141 = phi i64 [ %146, %139 ], [ %138, %135 ]
  %142 = phi i64 [ %147, %139 ], [ %106, %135 ]
  call void @llvm.dbg.value(metadata i64 %141, metadata !97, metadata !DIExpression()) #8, !dbg !98
  %143 = getelementptr inbounds [2000 x double], [2000 x double]* %34, i64 %141, i64 %111, !dbg !124
  %144 = load double, double* %143, align 8, !dbg !124, !tbaa !49, !noalias !78
  %145 = fadd double %140, %144, !dbg !123
  store double %145, double* %112, align 8, !dbg !123, !tbaa !49, !noalias !78
  %146 = add nuw nsw i64 %141, 1, !dbg !125
  call void @llvm.dbg.value(metadata i64 %146, metadata !97, metadata !DIExpression()) #8, !dbg !98
  %147 = add i64 %142, -1, !dbg !122
  %148 = icmp eq i64 %147, 0, !dbg !122
  br i1 %148, label %149, label %139, !dbg !122, !llvm.loop !128

149:                                              ; preds = %139, %135
  %150 = phi double [ %136, %135 ], [ %145, %139 ], !dbg !123
  %151 = load double, double* %6, align 8, !dbg !120, !tbaa !49, !noalias !78
  %152 = fdiv double %150, %151, !dbg !116
  store double %152, double* %112, align 8, !dbg !116, !tbaa !49, !noalias !78
  %153 = add nsw i64 %111, 1, !dbg !100
  call void @llvm.dbg.value(metadata i64 %153, metadata !90, metadata !DIExpression()) #8, !dbg !98
  call void @llvm.dbg.value(metadata i32 %27, metadata !94, metadata !DIExpression()) #8, !dbg !98
  %154 = icmp slt i64 %111, %36, !dbg !100
  br i1 %154, label %110, label %162, !dbg !100, !llvm.loop !130

155:                                              ; preds = %43, %155
  %156 = phi i64 [ %160, %155 ], [ %44, %43 ]
  call void @llvm.dbg.value(metadata i64 %156, metadata !90, metadata !DIExpression()) #8, !dbg !98
  call void @llvm.dbg.value(metadata i64 %156, metadata !92, metadata !DIExpression()) #8, !dbg !98
  %157 = getelementptr inbounds double, double* %31, i64 %156, !dbg !111
  store double 0.000000e+00, double* %157, align 8, !dbg !112, !tbaa !49, !noalias !78
  call void @llvm.dbg.value(metadata i32 0, metadata !97, metadata !DIExpression()) #8, !dbg !98
  %158 = load double, double* %6, align 8, !dbg !120, !tbaa !49, !noalias !78
  %159 = fdiv double 0.000000e+00, %158, !dbg !116
  store double %159, double* %157, align 8, !dbg !116, !tbaa !49, !noalias !78
  %160 = add nsw i64 %156, 1, !dbg !100
  call void @llvm.dbg.value(metadata i64 %160, metadata !90, metadata !DIExpression()) #8, !dbg !98
  call void @llvm.dbg.value(metadata i32 %27, metadata !94, metadata !DIExpression()) #8, !dbg !98
  %161 = icmp slt i64 %156, %36, !dbg !100
  br i1 %161, label %155, label %162, !dbg !100, !llvm.loop !131

162:                                              ; preds = %155, %149, %101, %18
  store i8* getelementptr inbounds ([92 x i8], [92 x i8]* @2, i64 0, i64 0), i8** %23, align 8, !dbg !107, !tbaa !54, !noalias !78
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull %13, i32 %24) #8, !dbg !107, !noalias !78
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22) #8, !dbg !107, !noalias !78
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %21) #8, !dbg !107, !noalias !78
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %20) #8, !dbg !107, !noalias !78
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #8, !dbg !107, !noalias !78
  br label %163, !dbg !107

163:                                              ; preds = %7, %162
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %15), !dbg !132
  ret void, !dbg !77
}

declare !callback !133 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr

; Function Attrs: nounwind uwtable
define internal void @kernel_p2(i32 %0, i32 %1, [2000 x double]* %2, double* %3) #0 !dbg !135 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2000 x double]*, align 8
  %8 = alloca double*, align 8
  %9 = alloca %struct.ident_t, align 8
  %10 = bitcast %struct.ident_t* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %10, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @3 to i8*), i64 16, i1 false)
  call void @llvm.dbg.value(metadata i32 %0, metadata !139, metadata !DIExpression()), !dbg !145
  store i32 %0, i32* %5, align 4, !tbaa !45
  call void @llvm.dbg.value(metadata i32 %1, metadata !140, metadata !DIExpression()), !dbg !145
  store i32 %1, i32* %6, align 4, !tbaa !45
  call void @llvm.dbg.value(metadata [2000 x double]* %2, metadata !141, metadata !DIExpression()), !dbg !145
  store [2000 x double]* %2, [2000 x double]** %7, align 8, !tbaa !51
  call void @llvm.dbg.value(metadata double* %3, metadata !142, metadata !DIExpression()), !dbg !145
  store double* %3, double** %8, align 8, !tbaa !51
  %11 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %9, i64 0, i32 4, !dbg !146
  store i8* getelementptr inbounds ([91 x i8], [91 x i8]* @4, i64 0, i64 0), i8** %11, align 8, !dbg !146, !tbaa !54
  call void @llvm.dbg.value(metadata i32* %5, metadata !139, metadata !DIExpression(DW_OP_deref)), !dbg !145
  call void @llvm.dbg.value(metadata i32* %6, metadata !140, metadata !DIExpression(DW_OP_deref)), !dbg !145
  call void @llvm.dbg.value(metadata [2000 x double]** %7, metadata !141, metadata !DIExpression(DW_OP_deref)), !dbg !145
  call void @llvm.dbg.value(metadata double** %8, metadata !142, metadata !DIExpression(DW_OP_deref)), !dbg !145
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %9, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, [2000 x double]**, double**)* @.omp_outlined..2 to void (i32*, i32*, ...)*), i32* nonnull %6, i32* nonnull %5, [2000 x double]** nonnull %7, double** nonnull %8) #8, !dbg !146
  ret void, !dbg !147
}

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined..2(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture readonly dereferenceable(4) %2, i32* nocapture readonly dereferenceable(4) %3, [2000 x double]** nocapture readonly dereferenceable(8) %4, double** nocapture readonly dereferenceable(8) %5) #2 !dbg !148 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ident_t, align 8
  call void @llvm.dbg.value(metadata i32* %0, metadata !152, metadata !DIExpression()), !dbg !158
  call void @llvm.dbg.value(metadata i32* %1, metadata !153, metadata !DIExpression()), !dbg !158
  call void @llvm.dbg.value(metadata i32* %2, metadata !154, metadata !DIExpression()), !dbg !158
  call void @llvm.dbg.value(metadata i32* %3, metadata !155, metadata !DIExpression()), !dbg !158
  call void @llvm.dbg.value(metadata [2000 x double]** %4, metadata !156, metadata !DIExpression()), !dbg !158
  call void @llvm.dbg.value(metadata double** %5, metadata !157, metadata !DIExpression()), !dbg !158
  %12 = load i32, i32* %2, align 4, !dbg !159, !tbaa !45
  %13 = bitcast %struct.ident_t* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %13)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %13, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @0 to i8*), i64 24, i1 false) #8, !noalias !160
  call void @llvm.dbg.value(metadata i32* %0, metadata !163, metadata !DIExpression()) #8, !dbg !179
  call void @llvm.dbg.value(metadata i32* undef, metadata !166, metadata !DIExpression()) #8, !dbg !179
  call void @llvm.dbg.value(metadata i32* %3, metadata !168, metadata !DIExpression()) #8, !dbg !179
  call void @llvm.dbg.value(metadata [2000 x double]** %4, metadata !169, metadata !DIExpression()) #8, !dbg !179
  call void @llvm.dbg.value(metadata double** %5, metadata !170, metadata !DIExpression()) #8, !dbg !179
  call void @llvm.dbg.value(metadata i32 %12, metadata !172, metadata !DIExpression()) #8, !dbg !179
  %14 = add nsw i32 %12, -1, !dbg !181
  call void @llvm.dbg.value(metadata i32 %14, metadata !172, metadata !DIExpression()) #8, !dbg !179
  call void @llvm.dbg.value(metadata i32 0, metadata !173, metadata !DIExpression()) #8, !dbg !179
  %15 = icmp sgt i32 %12, 0, !dbg !181
  br i1 %15, label %16, label %155, !dbg !181

16:                                               ; preds = %6
  %17 = bitcast i32* %7 to i8*, !dbg !181
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %17) #8, !dbg !181, !noalias !160
  call void @llvm.dbg.value(metadata i32 0, metadata !174, metadata !DIExpression()) #8, !dbg !179
  store i32 0, i32* %7, align 4, !dbg !182, !tbaa !45, !noalias !160
  %18 = bitcast i32* %8 to i8*, !dbg !181
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18) #8, !dbg !181, !noalias !160
  call void @llvm.dbg.value(metadata i32 %14, metadata !175, metadata !DIExpression()) #8, !dbg !179
  store i32 %14, i32* %8, align 4, !dbg !182, !tbaa !45, !noalias !160
  %19 = bitcast i32* %9 to i8*, !dbg !181
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #8, !dbg !181, !noalias !160
  call void @llvm.dbg.value(metadata i32 1, metadata !176, metadata !DIExpression()) #8, !dbg !179
  store i32 1, i32* %9, align 4, !dbg !182, !tbaa !45, !noalias !160
  %20 = bitcast i32* %10 to i8*, !dbg !181
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %20) #8, !dbg !181, !noalias !160
  call void @llvm.dbg.value(metadata i32 0, metadata !177, metadata !DIExpression()) #8, !dbg !179
  store i32 0, i32* %10, align 4, !dbg !182, !tbaa !45, !noalias !160
  %21 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %11, i64 0, i32 4, !dbg !181
  store i8* getelementptr inbounds ([91 x i8], [91 x i8]* @4, i64 0, i64 0), i8** %21, align 8, !dbg !181, !tbaa !54, !noalias !160
  %22 = load i32, i32* %0, align 4, !dbg !181, !tbaa !45, !alias.scope !160
  call void @llvm.dbg.value(metadata i32* %7, metadata !174, metadata !DIExpression(DW_OP_deref)) #8, !dbg !179
  call void @llvm.dbg.value(metadata i32* %8, metadata !175, metadata !DIExpression(DW_OP_deref)) #8, !dbg !179
  call void @llvm.dbg.value(metadata i32* %9, metadata !176, metadata !DIExpression(DW_OP_deref)) #8, !dbg !179
  call void @llvm.dbg.value(metadata i32* %10, metadata !177, metadata !DIExpression(DW_OP_deref)) #8, !dbg !179
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull %11, i32 %22, i32 34, i32* nonnull %10, i32* nonnull %7, i32* nonnull %8, i32* nonnull %9, i32 1, i32 1) #8, !dbg !181, !noalias !160
  %23 = load i32, i32* %8, align 4, !dbg !182, !tbaa !45, !noalias !160
  call void @llvm.dbg.value(metadata i32 %23, metadata !175, metadata !DIExpression()) #8, !dbg !179
  %24 = icmp slt i32 %23, %12, !dbg !182
  %25 = select i1 %24, i32 %23, i32 %14, !dbg !182
  call void @llvm.dbg.value(metadata i32 %25, metadata !175, metadata !DIExpression()) #8, !dbg !179
  store i32 %25, i32* %8, align 4, !dbg !182, !tbaa !45, !noalias !160
  %26 = load i32, i32* %7, align 4, !dbg !182, !tbaa !45, !noalias !160
  call void @llvm.dbg.value(metadata i32 %26, metadata !174, metadata !DIExpression()) #8, !dbg !179
  call void @llvm.dbg.value(metadata i32 %26, metadata !171, metadata !DIExpression()) #8, !dbg !179
  call void @llvm.dbg.value(metadata i32 %25, metadata !175, metadata !DIExpression()) #8, !dbg !179
  %27 = icmp sgt i32 %26, %25, !dbg !181
  br i1 %27, label %154, label %28, !dbg !181

28:                                               ; preds = %16
  %29 = load i32, i32* %3, align 4, !dbg !183, !noalias !160
  %30 = icmp sgt i32 %29, 0, !dbg !183
  %31 = load double*, double** %5, align 8, !dbg !183, !noalias !160
  %32 = load [2000 x double]*, [2000 x double]** %4, align 8, !dbg !183, !noalias !160
  br i1 %30, label %33, label %154, !dbg !181

33:                                               ; preds = %28
  %34 = sext i32 %26 to i64, !dbg !186
  %35 = sext i32 %25 to i64, !dbg !186
  %36 = zext i32 %29 to i64, !dbg !183
  %37 = getelementptr double, double* %31, i64 %36, !dbg !186
  %38 = and i64 %36, 4294967292, !dbg !186
  %39 = add nsw i64 %38, -4, !dbg !186
  %40 = lshr exact i64 %39, 2, !dbg !186
  %41 = add nuw nsw i64 %40, 1, !dbg !186
  %42 = icmp ult i32 %29, 4, !dbg !187
  %43 = and i64 %36, 4294967292, !dbg !187
  %44 = and i64 %41, 1, !dbg !187
  %45 = icmp eq i64 %39, 0, !dbg !187
  %46 = sub nuw nsw i64 %41, %44, !dbg !187
  %47 = icmp eq i64 %44, 0, !dbg !183
  %48 = icmp eq i64 %43, %36, !dbg !187
  %49 = and i64 %36, 1, !dbg !187
  %50 = icmp eq i64 %49, 0, !dbg !187
  %51 = sub nsw i64 0, %36, !dbg !187
  br label %52, !dbg !186

52:                                               ; preds = %150, %33
  %53 = phi i64 [ %153, %150 ], [ 0, %33 ]
  %54 = phi i64 [ %151, %150 ], [ %34, %33 ]
  call void @llvm.dbg.value(metadata i64 %54, metadata !171, metadata !DIExpression()) #8, !dbg !179
  call void @llvm.dbg.value(metadata i32 0, metadata !178, metadata !DIExpression()) #8, !dbg !179
  %55 = add i64 %53, %34, !dbg !188
  br i1 %42, label %122, label %56, !dbg !188

56:                                               ; preds = %52
  %57 = getelementptr [2000 x double], [2000 x double]* %32, i64 %55, i64 %36, !dbg !188
  %58 = getelementptr [2000 x double], [2000 x double]* %32, i64 %55, i64 0, !dbg !188
  %59 = icmp ult double* %58, %37, !dbg !188
  %60 = icmp ult double* %31, %57, !dbg !188
  %61 = and i1 %59, %60, !dbg !188
  br i1 %61, label %122, label %62, !dbg !188

62:                                               ; preds = %56
  br i1 %45, label %102, label %63, !dbg !188

63:                                               ; preds = %62, %63
  %64 = phi i64 [ %99, %63 ], [ 0, %62 ], !dbg !189
  %65 = phi i64 [ %100, %63 ], [ %46, %62 ]
  %66 = getelementptr inbounds double, double* %31, i64 %64, !dbg !190
  %67 = bitcast double* %66 to <2 x double>*, !dbg !190
  %68 = load <2 x double>, <2 x double>* %67, align 8, !dbg !190, !tbaa !49, !alias.scope !191, !noalias !160
  %69 = getelementptr inbounds double, double* %66, i64 2, !dbg !190
  %70 = bitcast double* %69 to <2 x double>*, !dbg !190
  %71 = load <2 x double>, <2 x double>* %70, align 8, !dbg !190, !tbaa !49, !alias.scope !191, !noalias !160
  %72 = getelementptr inbounds [2000 x double], [2000 x double]* %32, i64 %54, i64 %64, !dbg !194
  %73 = bitcast double* %72 to <2 x double>*, !dbg !195
  %74 = load <2 x double>, <2 x double>* %73, align 8, !dbg !195, !tbaa !49, !alias.scope !196, !noalias !198
  %75 = getelementptr inbounds double, double* %72, i64 2, !dbg !195
  %76 = bitcast double* %75 to <2 x double>*, !dbg !195
  %77 = load <2 x double>, <2 x double>* %76, align 8, !dbg !195, !tbaa !49, !alias.scope !196, !noalias !198
  %78 = fsub <2 x double> %74, %68, !dbg !195
  %79 = fsub <2 x double> %77, %71, !dbg !195
  %80 = bitcast double* %72 to <2 x double>*, !dbg !195
  store <2 x double> %78, <2 x double>* %80, align 8, !dbg !195, !tbaa !49, !alias.scope !196, !noalias !198
  %81 = bitcast double* %75 to <2 x double>*, !dbg !195
  store <2 x double> %79, <2 x double>* %81, align 8, !dbg !195, !tbaa !49, !alias.scope !196, !noalias !198
  %82 = or i64 %64, 4, !dbg !189
  %83 = getelementptr inbounds double, double* %31, i64 %82, !dbg !190
  %84 = bitcast double* %83 to <2 x double>*, !dbg !190
  %85 = load <2 x double>, <2 x double>* %84, align 8, !dbg !190, !tbaa !49, !alias.scope !191, !noalias !160
  %86 = getelementptr inbounds double, double* %83, i64 2, !dbg !190
  %87 = bitcast double* %86 to <2 x double>*, !dbg !190
  %88 = load <2 x double>, <2 x double>* %87, align 8, !dbg !190, !tbaa !49, !alias.scope !191, !noalias !160
  %89 = getelementptr inbounds [2000 x double], [2000 x double]* %32, i64 %54, i64 %82, !dbg !194
  %90 = bitcast double* %89 to <2 x double>*, !dbg !195
  %91 = load <2 x double>, <2 x double>* %90, align 8, !dbg !195, !tbaa !49, !alias.scope !196, !noalias !198
  %92 = getelementptr inbounds double, double* %89, i64 2, !dbg !195
  %93 = bitcast double* %92 to <2 x double>*, !dbg !195
  %94 = load <2 x double>, <2 x double>* %93, align 8, !dbg !195, !tbaa !49, !alias.scope !196, !noalias !198
  %95 = fsub <2 x double> %91, %85, !dbg !195
  %96 = fsub <2 x double> %94, %88, !dbg !195
  %97 = bitcast double* %89 to <2 x double>*, !dbg !195
  store <2 x double> %95, <2 x double>* %97, align 8, !dbg !195, !tbaa !49, !alias.scope !196, !noalias !198
  %98 = bitcast double* %92 to <2 x double>*, !dbg !195
  store <2 x double> %96, <2 x double>* %98, align 8, !dbg !195, !tbaa !49, !alias.scope !196, !noalias !198
  %99 = add i64 %64, 8, !dbg !189
  %100 = add i64 %65, -2, !dbg !189
  %101 = icmp eq i64 %100, 0, !dbg !189
  br i1 %101, label %102, label %63, !dbg !189, !llvm.loop !199

102:                                              ; preds = %63, %62
  %103 = phi i64 [ 0, %62 ], [ %99, %63 ]
  br i1 %47, label %121, label %104, !dbg !189

104:                                              ; preds = %102
  %105 = getelementptr inbounds double, double* %31, i64 %103, !dbg !190
  %106 = bitcast double* %105 to <2 x double>*, !dbg !190
  %107 = load <2 x double>, <2 x double>* %106, align 8, !dbg !190, !tbaa !49, !alias.scope !191, !noalias !160
  %108 = getelementptr inbounds double, double* %105, i64 2, !dbg !190
  %109 = bitcast double* %108 to <2 x double>*, !dbg !190
  %110 = load <2 x double>, <2 x double>* %109, align 8, !dbg !190, !tbaa !49, !alias.scope !191, !noalias !160
  %111 = getelementptr inbounds [2000 x double], [2000 x double]* %32, i64 %54, i64 %103, !dbg !194
  %112 = bitcast double* %111 to <2 x double>*, !dbg !195
  %113 = load <2 x double>, <2 x double>* %112, align 8, !dbg !195, !tbaa !49, !alias.scope !196, !noalias !198
  %114 = getelementptr inbounds double, double* %111, i64 2, !dbg !195
  %115 = bitcast double* %114 to <2 x double>*, !dbg !195
  %116 = load <2 x double>, <2 x double>* %115, align 8, !dbg !195, !tbaa !49, !alias.scope !196, !noalias !198
  %117 = fsub <2 x double> %113, %107, !dbg !195
  %118 = fsub <2 x double> %116, %110, !dbg !195
  %119 = bitcast double* %111 to <2 x double>*, !dbg !195
  store <2 x double> %117, <2 x double>* %119, align 8, !dbg !195, !tbaa !49, !alias.scope !196, !noalias !198
  %120 = bitcast double* %114 to <2 x double>*, !dbg !195
  store <2 x double> %118, <2 x double>* %120, align 8, !dbg !195, !tbaa !49, !alias.scope !196, !noalias !198
  br label %121, !dbg !188

121:                                              ; preds = %102, %104
  br i1 %48, label %150, label %122, !dbg !188

122:                                              ; preds = %121, %56, %52
  %123 = phi i64 [ 0, %56 ], [ 0, %52 ], [ %43, %121 ]
  %124 = xor i64 %123, -1, !dbg !188
  br i1 %50, label %132, label %125, !dbg !188

125:                                              ; preds = %122
  call void @llvm.dbg.value(metadata i64 %123, metadata !178, metadata !DIExpression()) #8, !dbg !179
  %126 = getelementptr inbounds double, double* %31, i64 %123, !dbg !190
  %127 = load double, double* %126, align 8, !dbg !190, !tbaa !49, !noalias !160
  %128 = getelementptr inbounds [2000 x double], [2000 x double]* %32, i64 %54, i64 %123, !dbg !194
  %129 = load double, double* %128, align 8, !dbg !195, !tbaa !49, !noalias !160
  %130 = fsub double %129, %127, !dbg !195
  store double %130, double* %128, align 8, !dbg !195, !tbaa !49, !noalias !160
  %131 = or i64 %123, 1, !dbg !189
  call void @llvm.dbg.value(metadata i64 %131, metadata !178, metadata !DIExpression()) #8, !dbg !179
  br label %132, !dbg !188

132:                                              ; preds = %125, %122
  %133 = phi i64 [ %131, %125 ], [ %123, %122 ]
  %134 = icmp eq i64 %124, %51, !dbg !188
  br i1 %134, label %150, label %135, !dbg !188

135:                                              ; preds = %132, %135
  %136 = phi i64 [ %148, %135 ], [ %133, %132 ]
  call void @llvm.dbg.value(metadata i64 %136, metadata !178, metadata !DIExpression()) #8, !dbg !179
  %137 = getelementptr inbounds double, double* %31, i64 %136, !dbg !190
  %138 = load double, double* %137, align 8, !dbg !190, !tbaa !49, !noalias !160
  %139 = getelementptr inbounds [2000 x double], [2000 x double]* %32, i64 %54, i64 %136, !dbg !194
  %140 = load double, double* %139, align 8, !dbg !195, !tbaa !49, !noalias !160
  %141 = fsub double %140, %138, !dbg !195
  store double %141, double* %139, align 8, !dbg !195, !tbaa !49, !noalias !160
  %142 = add nuw nsw i64 %136, 1, !dbg !189
  call void @llvm.dbg.value(metadata i64 %142, metadata !178, metadata !DIExpression()) #8, !dbg !179
  %143 = getelementptr inbounds double, double* %31, i64 %142, !dbg !190
  %144 = load double, double* %143, align 8, !dbg !190, !tbaa !49, !noalias !160
  %145 = getelementptr inbounds [2000 x double], [2000 x double]* %32, i64 %54, i64 %142, !dbg !194
  %146 = load double, double* %145, align 8, !dbg !195, !tbaa !49, !noalias !160
  %147 = fsub double %146, %144, !dbg !195
  store double %147, double* %145, align 8, !dbg !195, !tbaa !49, !noalias !160
  %148 = add nuw nsw i64 %136, 2, !dbg !189
  call void @llvm.dbg.value(metadata i64 %148, metadata !178, metadata !DIExpression()) #8, !dbg !179
  %149 = icmp eq i64 %148, %36, !dbg !201
  br i1 %149, label %150, label %135, !dbg !188, !llvm.loop !202

150:                                              ; preds = %132, %135, %121
  %151 = add nsw i64 %54, 1, !dbg !181
  call void @llvm.dbg.value(metadata i64 %151, metadata !171, metadata !DIExpression()) #8, !dbg !179
  call void @llvm.dbg.value(metadata i32 %25, metadata !175, metadata !DIExpression()) #8, !dbg !179
  %152 = icmp slt i64 %54, %35, !dbg !181
  %153 = add i64 %53, 1, !dbg !181
  br i1 %152, label %52, label %154, !dbg !181, !llvm.loop !203

154:                                              ; preds = %150, %28, %16
  store i8* getelementptr inbounds ([92 x i8], [92 x i8]* @5, i64 0, i64 0), i8** %21, align 8, !dbg !186, !tbaa !54, !noalias !160
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull %11, i32 %22) #8, !dbg !186, !noalias !160
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %20) #8, !dbg !186, !noalias !160
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #8, !dbg !186, !noalias !160
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #8, !dbg !186, !noalias !160
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %17) #8, !dbg !186, !noalias !160
  br label %155, !dbg !186

155:                                              ; preds = %6, %154
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %13), !dbg !205
  ret void, !dbg !159
}

; Function Attrs: nounwind uwtable
define internal void @kernel_p3(i32 %0, i32 %1, double %2, [2000 x double]* %3, [2000 x double]* %4) #0 !dbg !206 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [2000 x double]*, align 8
  %9 = alloca [2000 x double]*, align 8
  %10 = alloca %struct.ident_t, align 8
  %11 = bitcast %struct.ident_t* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %11, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @3 to i8*), i64 16, i1 false)
  call void @llvm.dbg.value(metadata i32 %0, metadata !210, metadata !DIExpression()), !dbg !219
  store i32 %0, i32* %6, align 4, !tbaa !45
  call void @llvm.dbg.value(metadata i32 %1, metadata !211, metadata !DIExpression()), !dbg !219
  store i32 %1, i32* %7, align 4, !tbaa !45
  call void @llvm.dbg.value(metadata double %2, metadata !212, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.value(metadata [2000 x double]* %3, metadata !213, metadata !DIExpression()), !dbg !219
  store [2000 x double]* %3, [2000 x double]** %8, align 8, !tbaa !51
  call void @llvm.dbg.value(metadata [2000 x double]* %4, metadata !214, metadata !DIExpression()), !dbg !219
  store [2000 x double]* %4, [2000 x double]** %9, align 8, !tbaa !51
  %12 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %10, i64 0, i32 4, !dbg !220
  store i8* getelementptr inbounds ([91 x i8], [91 x i8]* @6, i64 0, i64 0), i8** %12, align 8, !dbg !220, !tbaa !54
  call void @llvm.dbg.value(metadata i32* %6, metadata !210, metadata !DIExpression(DW_OP_deref)), !dbg !219
  call void @llvm.dbg.value(metadata i32* %7, metadata !211, metadata !DIExpression(DW_OP_deref)), !dbg !219
  call void @llvm.dbg.value(metadata [2000 x double]** %8, metadata !213, metadata !DIExpression(DW_OP_deref)), !dbg !219
  call void @llvm.dbg.value(metadata [2000 x double]** %9, metadata !214, metadata !DIExpression(DW_OP_deref)), !dbg !219
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %10, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [2000 x double]**, i32*, [2000 x double]**)* @.omp_outlined..4 to void (i32*, i32*, ...)*), i32* nonnull %6, [2000 x double]** nonnull %9, i32* nonnull %7, [2000 x double]** nonnull %8) #8, !dbg !220
  ret void, !dbg !221
}

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined..4(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture readonly dereferenceable(4) %2, [2000 x double]** nocapture readonly dereferenceable(8) %3, i32* nocapture readonly dereferenceable(4) %4, [2000 x double]** nocapture readonly dereferenceable(8) %5) #2 !dbg !222 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ident_t, align 8
  call void @llvm.dbg.value(metadata i32* %0, metadata !226, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata i32* %1, metadata !227, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata i32* %2, metadata !228, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata [2000 x double]** %3, metadata !229, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata i32* %4, metadata !230, metadata !DIExpression()), !dbg !232
  call void @llvm.dbg.value(metadata [2000 x double]** %5, metadata !231, metadata !DIExpression()), !dbg !232
  %12 = bitcast %struct.ident_t* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %12)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %12, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @0 to i8*), i64 24, i1 false) #8, !noalias !233
  call void @llvm.dbg.value(metadata i32* %0, metadata !236, metadata !DIExpression()) #8, !dbg !253
  call void @llvm.dbg.value(metadata i32* undef, metadata !239, metadata !DIExpression()) #8, !dbg !253
  call void @llvm.dbg.value(metadata i32* %2, metadata !240, metadata !DIExpression()) #8, !dbg !253
  call void @llvm.dbg.value(metadata [2000 x double]** %3, metadata !241, metadata !DIExpression()) #8, !dbg !253
  call void @llvm.dbg.value(metadata i32* %4, metadata !242, metadata !DIExpression()) #8, !dbg !253
  call void @llvm.dbg.value(metadata [2000 x double]** %5, metadata !243, metadata !DIExpression()) #8, !dbg !253
  %13 = load i32, i32* %2, align 4, !dbg !255, !tbaa !45, !noalias !233
  call void @llvm.dbg.value(metadata i32 %13, metadata !245, metadata !DIExpression()) #8, !dbg !253
  %14 = add nsw i32 %13, -1, !dbg !256
  call void @llvm.dbg.value(metadata i32 %14, metadata !245, metadata !DIExpression()) #8, !dbg !253
  call void @llvm.dbg.value(metadata i32 0, metadata !246, metadata !DIExpression()) #8, !dbg !253
  %15 = icmp sgt i32 %13, 0, !dbg !256
  br i1 %15, label %16, label %115, !dbg !256

16:                                               ; preds = %6
  %17 = bitcast i32* %7 to i8*, !dbg !256
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %17) #8, !dbg !256, !noalias !233
  call void @llvm.dbg.value(metadata i32 0, metadata !247, metadata !DIExpression()) #8, !dbg !253
  store i32 0, i32* %7, align 4, !dbg !257, !tbaa !45, !noalias !233
  %18 = bitcast i32* %8 to i8*, !dbg !256
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18) #8, !dbg !256, !noalias !233
  call void @llvm.dbg.value(metadata i32 %14, metadata !248, metadata !DIExpression()) #8, !dbg !253
  store i32 %14, i32* %8, align 4, !dbg !257, !tbaa !45, !noalias !233
  %19 = bitcast i32* %9 to i8*, !dbg !256
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #8, !dbg !256, !noalias !233
  call void @llvm.dbg.value(metadata i32 1, metadata !249, metadata !DIExpression()) #8, !dbg !253
  store i32 1, i32* %9, align 4, !dbg !257, !tbaa !45, !noalias !233
  %20 = bitcast i32* %10 to i8*, !dbg !256
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %20) #8, !dbg !256, !noalias !233
  call void @llvm.dbg.value(metadata i32 0, metadata !250, metadata !DIExpression()) #8, !dbg !253
  store i32 0, i32* %10, align 4, !dbg !257, !tbaa !45, !noalias !233
  %21 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %11, i64 0, i32 4, !dbg !256
  store i8* getelementptr inbounds ([91 x i8], [91 x i8]* @6, i64 0, i64 0), i8** %21, align 8, !dbg !256, !tbaa !54, !noalias !233
  %22 = load i32, i32* %0, align 4, !dbg !256, !tbaa !45, !alias.scope !233
  call void @llvm.dbg.value(metadata i32* %7, metadata !247, metadata !DIExpression(DW_OP_deref)) #8, !dbg !253
  call void @llvm.dbg.value(metadata i32* %8, metadata !248, metadata !DIExpression(DW_OP_deref)) #8, !dbg !253
  call void @llvm.dbg.value(metadata i32* %9, metadata !249, metadata !DIExpression(DW_OP_deref)) #8, !dbg !253
  call void @llvm.dbg.value(metadata i32* %10, metadata !250, metadata !DIExpression(DW_OP_deref)) #8, !dbg !253
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull %11, i32 %22, i32 34, i32* nonnull %10, i32* nonnull %7, i32* nonnull %8, i32* nonnull %9, i32 1, i32 1) #8, !dbg !256, !noalias !233
  %23 = load i32, i32* %8, align 4, !dbg !257, !tbaa !45, !noalias !233
  call void @llvm.dbg.value(metadata i32 %23, metadata !248, metadata !DIExpression()) #8, !dbg !253
  %24 = icmp slt i32 %23, %13, !dbg !257
  %25 = select i1 %24, i32 %23, i32 %14, !dbg !257
  call void @llvm.dbg.value(metadata i32 %25, metadata !248, metadata !DIExpression()) #8, !dbg !253
  store i32 %25, i32* %8, align 4, !dbg !257, !tbaa !45, !noalias !233
  %26 = load i32, i32* %7, align 4, !dbg !257, !tbaa !45, !noalias !233
  call void @llvm.dbg.value(metadata i32 %26, metadata !247, metadata !DIExpression()) #8, !dbg !253
  call void @llvm.dbg.value(metadata i32 %26, metadata !244, metadata !DIExpression()) #8, !dbg !253
  call void @llvm.dbg.value(metadata i32 %25, metadata !248, metadata !DIExpression()) #8, !dbg !253
  %27 = icmp sgt i32 %26, %25, !dbg !256
  br i1 %27, label %114, label %28, !dbg !256

28:                                               ; preds = %16
  %29 = load i32, i32* %2, align 4, !dbg !258, !noalias !233
  %30 = load [2000 x double]*, [2000 x double]** %3, align 8, !dbg !261, !noalias !233
  %31 = load i32, i32* %4, align 4, !dbg !263, !noalias !233
  %32 = icmp sgt i32 %31, 0, !dbg !263
  %33 = sext i32 %26 to i64, !dbg !266
  %34 = sext i32 %29 to i64, !dbg !266
  %35 = sext i32 %25 to i64, !dbg !266
  br i1 %32, label %40, label %36, !dbg !256

36:                                               ; preds = %28
  %37 = sub i32 %29, %26, !dbg !266
  %38 = xor i32 %26, -1, !dbg !266
  %39 = add i32 %29, %38, !dbg !266
  br label %69, !dbg !266

40:                                               ; preds = %28, %43
  %41 = phi i64 [ %44, %43 ], [ %33, %28 ]
  call void @llvm.dbg.value(metadata i64 %41, metadata !244, metadata !DIExpression()) #8, !dbg !253
  call void @llvm.dbg.value(metadata i64 %41, metadata !251, metadata !DIExpression()) #8, !dbg !253
  %42 = icmp slt i64 %41, %34, !dbg !267
  br i1 %42, label %46, label %43, !dbg !268

43:                                               ; preds = %53, %40
  %44 = add nsw i64 %41, 1, !dbg !256
  call void @llvm.dbg.value(metadata i64 %44, metadata !244, metadata !DIExpression()) #8, !dbg !253
  call void @llvm.dbg.value(metadata i32 %25, metadata !248, metadata !DIExpression()) #8, !dbg !253
  %45 = icmp slt i64 %41, %35, !dbg !256
  br i1 %45, label %40, label %114, !dbg !256, !llvm.loop !269

46:                                               ; preds = %40
  %47 = load [2000 x double]*, [2000 x double]** %5, align 8, !dbg !263, !noalias !233
  %48 = load i32, i32* %4, align 4, !dbg !263, !noalias !233
  %49 = sext i32 %48 to i64, !dbg !268
  br label %50, !dbg !268

50:                                               ; preds = %53, %46
  %51 = phi i64 [ %41, %46 ], [ %55, %53 ]
  call void @llvm.dbg.value(metadata i64 %51, metadata !251, metadata !DIExpression()) #8, !dbg !253
  %52 = getelementptr inbounds [2000 x double], [2000 x double]* %30, i64 %41, i64 %51, !dbg !271
  store double 0.000000e+00, double* %52, align 8, !dbg !272, !tbaa !49, !noalias !233
  call void @llvm.dbg.value(metadata i32 0, metadata !252, metadata !DIExpression()) #8, !dbg !253
  br label %58, !dbg !273

53:                                               ; preds = %58
  %54 = getelementptr inbounds [2000 x double], [2000 x double]* %30, i64 %51, i64 %41, !dbg !274
  store double %66, double* %54, align 8, !dbg !275, !tbaa !49, !noalias !233
  %55 = add nsw i64 %51, 1, !dbg !276
  call void @llvm.dbg.value(metadata i64 %55, metadata !251, metadata !DIExpression()) #8, !dbg !253
  %56 = trunc i64 %55 to i32, !dbg !267
  %57 = icmp eq i32 %29, %56, !dbg !267
  br i1 %57, label %43, label %50, !dbg !268, !llvm.loop !277

58:                                               ; preds = %58, %50
  %59 = phi double [ %66, %58 ], [ 0.000000e+00, %50 ], !dbg !279
  %60 = phi i64 [ %67, %58 ], [ 0, %50 ]
  call void @llvm.dbg.value(metadata i64 %60, metadata !252, metadata !DIExpression()) #8, !dbg !253
  %61 = getelementptr inbounds [2000 x double], [2000 x double]* %47, i64 %60, i64 %41, !dbg !280
  %62 = load double, double* %61, align 8, !dbg !280, !tbaa !49, !noalias !233
  %63 = getelementptr inbounds [2000 x double], [2000 x double]* %47, i64 %60, i64 %51, !dbg !281
  %64 = load double, double* %63, align 8, !dbg !281, !tbaa !49, !noalias !233
  %65 = fmul double %62, %64, !dbg !282
  %66 = fadd double %59, %65, !dbg !279
  store double %66, double* %52, align 8, !dbg !279, !tbaa !49, !noalias !233
  %67 = add nuw nsw i64 %60, 1, !dbg !283
  call void @llvm.dbg.value(metadata i64 %67, metadata !252, metadata !DIExpression()) #8, !dbg !253
  %68 = icmp slt i64 %67, %49, !dbg !284
  br i1 %68, label %58, label %53, !dbg !273, !llvm.loop !285

69:                                               ; preds = %36, %110
  %70 = phi i32 [ 0, %36 ], [ %113, %110 ]
  %71 = phi i64 [ %33, %36 ], [ %111, %110 ]
  call void @llvm.dbg.value(metadata i64 %71, metadata !244, metadata !DIExpression()) #8, !dbg !253
  call void @llvm.dbg.value(metadata i64 %71, metadata !251, metadata !DIExpression()) #8, !dbg !253
  %72 = sub i32 %39, %70, !dbg !267
  %73 = icmp slt i64 %71, %34, !dbg !267
  br i1 %73, label %74, label %110, !dbg !268

74:                                               ; preds = %69
  %75 = sub i32 %37, %70, !dbg !267
  %76 = and i32 %75, 3, !dbg !268
  %77 = icmp eq i32 %76, 0, !dbg !268
  br i1 %77, label %87, label %78, !dbg !268

78:                                               ; preds = %74, %78
  %79 = phi i64 [ %84, %78 ], [ %71, %74 ]
  %80 = phi i32 [ %85, %78 ], [ %76, %74 ]
  call void @llvm.dbg.value(metadata i64 %79, metadata !251, metadata !DIExpression()) #8, !dbg !253
  %81 = getelementptr inbounds [2000 x double], [2000 x double]* %30, i64 %71, i64 %79, !dbg !271
  store double 0.000000e+00, double* %81, align 8, !dbg !272, !tbaa !49, !noalias !233
  call void @llvm.dbg.value(metadata i32 0, metadata !252, metadata !DIExpression()) #8, !dbg !253
  %82 = getelementptr inbounds [2000 x double], [2000 x double]* %30, i64 %79, i64 %71, !dbg !274
  %83 = bitcast double* %82 to i64*, !dbg !275
  store i64 0, i64* %83, align 8, !dbg !275, !tbaa !49, !noalias !233
  %84 = add nsw i64 %79, 1, !dbg !276
  call void @llvm.dbg.value(metadata i64 %84, metadata !251, metadata !DIExpression()) #8, !dbg !253
  %85 = add i32 %80, -1, !dbg !268
  %86 = icmp eq i32 %85, 0, !dbg !268
  br i1 %86, label %87, label %78, !dbg !268, !llvm.loop !287

87:                                               ; preds = %78, %74
  %88 = phi i64 [ %71, %74 ], [ %84, %78 ]
  %89 = icmp ult i32 %72, 3, !dbg !268
  br i1 %89, label %110, label %90, !dbg !268

90:                                               ; preds = %87, %90
  %91 = phi i64 [ %107, %90 ], [ %88, %87 ]
  call void @llvm.dbg.value(metadata i64 %91, metadata !251, metadata !DIExpression()) #8, !dbg !253
  %92 = getelementptr inbounds [2000 x double], [2000 x double]* %30, i64 %71, i64 %91, !dbg !271
  store double 0.000000e+00, double* %92, align 8, !dbg !272, !tbaa !49, !noalias !233
  call void @llvm.dbg.value(metadata i32 0, metadata !252, metadata !DIExpression()) #8, !dbg !253
  %93 = getelementptr inbounds [2000 x double], [2000 x double]* %30, i64 %91, i64 %71, !dbg !274
  %94 = bitcast double* %93 to i64*, !dbg !275
  store i64 0, i64* %94, align 8, !dbg !275, !tbaa !49, !noalias !233
  %95 = add nsw i64 %91, 1, !dbg !276
  call void @llvm.dbg.value(metadata i64 %95, metadata !251, metadata !DIExpression()) #8, !dbg !253
  %96 = getelementptr inbounds [2000 x double], [2000 x double]* %30, i64 %71, i64 %95, !dbg !271
  store double 0.000000e+00, double* %96, align 8, !dbg !272, !tbaa !49, !noalias !233
  %97 = getelementptr inbounds [2000 x double], [2000 x double]* %30, i64 %95, i64 %71, !dbg !274
  %98 = bitcast double* %97 to i64*, !dbg !275
  store i64 0, i64* %98, align 8, !dbg !275, !tbaa !49, !noalias !233
  %99 = add nsw i64 %91, 2, !dbg !276
  call void @llvm.dbg.value(metadata i64 %99, metadata !251, metadata !DIExpression()) #8, !dbg !253
  %100 = getelementptr inbounds [2000 x double], [2000 x double]* %30, i64 %71, i64 %99, !dbg !271
  store double 0.000000e+00, double* %100, align 8, !dbg !272, !tbaa !49, !noalias !233
  %101 = getelementptr inbounds [2000 x double], [2000 x double]* %30, i64 %99, i64 %71, !dbg !274
  %102 = bitcast double* %101 to i64*, !dbg !275
  store i64 0, i64* %102, align 8, !dbg !275, !tbaa !49, !noalias !233
  %103 = add nsw i64 %91, 3, !dbg !276
  call void @llvm.dbg.value(metadata i64 %103, metadata !251, metadata !DIExpression()) #8, !dbg !253
  %104 = getelementptr inbounds [2000 x double], [2000 x double]* %30, i64 %71, i64 %103, !dbg !271
  store double 0.000000e+00, double* %104, align 8, !dbg !272, !tbaa !49, !noalias !233
  %105 = getelementptr inbounds [2000 x double], [2000 x double]* %30, i64 %103, i64 %71, !dbg !274
  %106 = bitcast double* %105 to i64*, !dbg !275
  store i64 0, i64* %106, align 8, !dbg !275, !tbaa !49, !noalias !233
  %107 = add nsw i64 %91, 4, !dbg !276
  call void @llvm.dbg.value(metadata i64 %107, metadata !251, metadata !DIExpression()) #8, !dbg !253
  %108 = trunc i64 %107 to i32, !dbg !267
  %109 = icmp eq i32 %29, %108, !dbg !267
  br i1 %109, label %110, label %90, !dbg !268, !llvm.loop !288

110:                                              ; preds = %87, %90, %69
  %111 = add nsw i64 %71, 1, !dbg !256
  call void @llvm.dbg.value(metadata i64 %111, metadata !244, metadata !DIExpression()) #8, !dbg !253
  call void @llvm.dbg.value(metadata i32 %25, metadata !248, metadata !DIExpression()) #8, !dbg !253
  %112 = icmp slt i64 %71, %35, !dbg !256
  %113 = add i32 %70, 1, !dbg !256
  br i1 %112, label %69, label %114, !dbg !256, !llvm.loop !289

114:                                              ; preds = %110, %43, %16
  store i8* getelementptr inbounds ([92 x i8], [92 x i8]* @7, i64 0, i64 0), i8** %21, align 8, !dbg !266, !tbaa !54, !noalias !233
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull %11, i32 %22) #8, !dbg !266, !noalias !233
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %20) #8, !dbg !266, !noalias !233
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #8, !dbg !266, !noalias !233
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #8, !dbg !266, !noalias !233
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %17) #8, !dbg !266, !noalias !233
  br label %115, !dbg !266

115:                                              ; preds = %6, %114
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %12), !dbg !290
  ret void, !dbg !291
}

; Function Attrs: nounwind uwtable
define internal void @kernel_covariance(i32 %0, i32 %1, double %2, [2000 x double]* %3, [2000 x double]* %4, double* %5) #0 !dbg !292 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2000 x double]*, align 8
  %10 = alloca [2000 x double]*, align 8
  %11 = alloca %struct.ident_t, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [2000 x double]*, align 8
  %15 = alloca double*, align 8
  %16 = alloca %struct.ident_t, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca double, align 8
  %20 = alloca [2000 x double]*, align 8
  %21 = alloca double*, align 8
  %22 = alloca %struct.ident_t, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !296, metadata !DIExpression()), !dbg !302
  call void @llvm.dbg.value(metadata i32 %1, metadata !297, metadata !DIExpression()), !dbg !302
  call void @llvm.dbg.value(metadata double %2, metadata !298, metadata !DIExpression()), !dbg !302
  call void @llvm.dbg.value(metadata [2000 x double]* %3, metadata !299, metadata !DIExpression()), !dbg !302
  call void @llvm.dbg.value(metadata [2000 x double]* %4, metadata !300, metadata !DIExpression()), !dbg !302
  call void @llvm.dbg.value(metadata double* %5, metadata !301, metadata !DIExpression()), !dbg !302
  tail call void (...) @polybench_timer_start() #8, !dbg !303
  %23 = bitcast i32* %17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %23)
  %24 = bitcast i32* %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24)
  %25 = bitcast double* %19 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %25)
  %26 = bitcast [2000 x double]** %20 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26)
  %27 = bitcast double** %21 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %27)
  %28 = bitcast %struct.ident_t* %22 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %28)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %28, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @3 to i8*), i64 16, i1 false) #8
  call void @llvm.dbg.value(metadata i32 %0, metadata !37, metadata !DIExpression()) #8, !dbg !304
  store i32 %0, i32* %17, align 4, !tbaa !45
  call void @llvm.dbg.value(metadata i32 %1, metadata !38, metadata !DIExpression()) #8, !dbg !304
  store i32 %1, i32* %18, align 4, !tbaa !45
  call void @llvm.dbg.value(metadata double %2, metadata !39, metadata !DIExpression()) #8, !dbg !304
  store double %2, double* %19, align 8, !tbaa !49
  call void @llvm.dbg.value(metadata [2000 x double]* %3, metadata !40, metadata !DIExpression()) #8, !dbg !304
  store [2000 x double]* %3, [2000 x double]** %20, align 8, !tbaa !51
  call void @llvm.dbg.value(metadata double* %5, metadata !41, metadata !DIExpression()) #8, !dbg !304
  store double* %5, double** %21, align 8, !tbaa !51
  %29 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %22, i64 0, i32 4, !dbg !306
  store i8* getelementptr inbounds ([91 x i8], [91 x i8]* @1, i64 0, i64 0), i8** %29, align 8, !dbg !306, !tbaa !54
  call void @llvm.dbg.value(metadata i32* %17, metadata !37, metadata !DIExpression(DW_OP_deref)) #8, !dbg !304
  call void @llvm.dbg.value(metadata i32* %18, metadata !38, metadata !DIExpression(DW_OP_deref)) #8, !dbg !304
  call void @llvm.dbg.value(metadata double* %19, metadata !39, metadata !DIExpression(DW_OP_deref)) #8, !dbg !304
  call void @llvm.dbg.value(metadata [2000 x double]** %20, metadata !40, metadata !DIExpression(DW_OP_deref)) #8, !dbg !304
  call void @llvm.dbg.value(metadata double** %21, metadata !41, metadata !DIExpression(DW_OP_deref)) #8, !dbg !304
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %22, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, double**, i32*, [2000 x double]**, double*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %17, double** nonnull %21, i32* nonnull %18, [2000 x double]** nonnull %20, double* nonnull %19) #8, !dbg !306
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %23), !dbg !307
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24), !dbg !307
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %25), !dbg !307
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26), !dbg !307
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %27), !dbg !307
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %28), !dbg !307
  call void (...) @polybench_timer_stop() #8, !dbg !308
  call void (...) @polybench_timer_print() #8, !dbg !309
  call void (...) @polybench_timer_start() #8, !dbg !310
  %30 = bitcast i32* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %30)
  %31 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %31)
  %32 = bitcast [2000 x double]** %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %32)
  %33 = bitcast double** %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %33)
  %34 = bitcast %struct.ident_t* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %34)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %34, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @3 to i8*), i64 16, i1 false) #8
  call void @llvm.dbg.value(metadata i32 %0, metadata !139, metadata !DIExpression()) #8, !dbg !311
  store i32 %0, i32* %12, align 4, !tbaa !45
  call void @llvm.dbg.value(metadata i32 %1, metadata !140, metadata !DIExpression()) #8, !dbg !311
  store i32 %1, i32* %13, align 4, !tbaa !45
  call void @llvm.dbg.value(metadata [2000 x double]* %3, metadata !141, metadata !DIExpression()) #8, !dbg !311
  store [2000 x double]* %3, [2000 x double]** %14, align 8, !tbaa !51
  call void @llvm.dbg.value(metadata double* %5, metadata !142, metadata !DIExpression()) #8, !dbg !311
  store double* %5, double** %15, align 8, !tbaa !51
  %35 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %16, i64 0, i32 4, !dbg !313
  store i8* getelementptr inbounds ([91 x i8], [91 x i8]* @4, i64 0, i64 0), i8** %35, align 8, !dbg !313, !tbaa !54
  call void @llvm.dbg.value(metadata i32* %12, metadata !139, metadata !DIExpression(DW_OP_deref)) #8, !dbg !311
  call void @llvm.dbg.value(metadata i32* %13, metadata !140, metadata !DIExpression(DW_OP_deref)) #8, !dbg !311
  call void @llvm.dbg.value(metadata [2000 x double]** %14, metadata !141, metadata !DIExpression(DW_OP_deref)) #8, !dbg !311
  call void @llvm.dbg.value(metadata double** %15, metadata !142, metadata !DIExpression(DW_OP_deref)) #8, !dbg !311
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %16, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, [2000 x double]**, double**)* @.omp_outlined..2 to void (i32*, i32*, ...)*), i32* nonnull %13, i32* nonnull %12, [2000 x double]** nonnull %14, double** nonnull %15) #8, !dbg !313
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %30), !dbg !314
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %31), !dbg !314
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %32), !dbg !314
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %33), !dbg !314
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %34), !dbg !314
  call void (...) @polybench_timer_stop() #8, !dbg !315
  call void (...) @polybench_timer_print() #8, !dbg !316
  call void (...) @polybench_timer_start() #8, !dbg !317
  %36 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %36)
  %37 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %37)
  %38 = bitcast [2000 x double]** %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %38)
  %39 = bitcast [2000 x double]** %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %39)
  %40 = bitcast %struct.ident_t* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %40)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %40, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @3 to i8*), i64 16, i1 false) #8
  call void @llvm.dbg.value(metadata i32 %0, metadata !210, metadata !DIExpression()) #8, !dbg !318
  store i32 %0, i32* %7, align 4, !tbaa !45
  call void @llvm.dbg.value(metadata i32 %1, metadata !211, metadata !DIExpression()) #8, !dbg !318
  store i32 %1, i32* %8, align 4, !tbaa !45
  call void @llvm.dbg.value(metadata double %2, metadata !212, metadata !DIExpression()) #8, !dbg !318
  call void @llvm.dbg.value(metadata [2000 x double]* %3, metadata !213, metadata !DIExpression()) #8, !dbg !318
  store [2000 x double]* %3, [2000 x double]** %9, align 8, !tbaa !51
  call void @llvm.dbg.value(metadata [2000 x double]* %4, metadata !214, metadata !DIExpression()) #8, !dbg !318
  store [2000 x double]* %4, [2000 x double]** %10, align 8, !tbaa !51
  %41 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %11, i64 0, i32 4, !dbg !320
  store i8* getelementptr inbounds ([91 x i8], [91 x i8]* @6, i64 0, i64 0), i8** %41, align 8, !dbg !320, !tbaa !54
  call void @llvm.dbg.value(metadata i32* %7, metadata !210, metadata !DIExpression(DW_OP_deref)) #8, !dbg !318
  call void @llvm.dbg.value(metadata i32* %8, metadata !211, metadata !DIExpression(DW_OP_deref)) #8, !dbg !318
  call void @llvm.dbg.value(metadata [2000 x double]** %9, metadata !213, metadata !DIExpression(DW_OP_deref)) #8, !dbg !318
  call void @llvm.dbg.value(metadata [2000 x double]** %10, metadata !214, metadata !DIExpression(DW_OP_deref)) #8, !dbg !318
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %11, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [2000 x double]**, i32*, [2000 x double]**)* @.omp_outlined..4 to void (i32*, i32*, ...)*), i32* nonnull %7, [2000 x double]** nonnull %10, i32* nonnull %8, [2000 x double]** nonnull %9) #8, !dbg !320
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %36), !dbg !321
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %37), !dbg !321
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %38), !dbg !321
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %39), !dbg !321
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %40), !dbg !321
  call void (...) @polybench_timer_stop() #8, !dbg !322
  call void (...) @polybench_timer_print() #8, !dbg !323
  ret void, !dbg !324
}

declare !dbg !4 dso_local void @polybench_timer_start(...) local_unnamed_addr #3

declare !dbg !8 dso_local void @polybench_timer_stop(...) local_unnamed_addr #3

declare !dbg !9 dso_local void @polybench_timer_print(...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %0, i8** nocapture readonly %1) local_unnamed_addr #0 !dbg !325 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !332, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i8** %1, metadata !333, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i32 2000, metadata !334, metadata !DIExpression()), !dbg !340
  call void @llvm.dbg.value(metadata i32 2000, metadata !335, metadata !DIExpression()), !dbg !340
  %3 = tail call i8* @polybench_alloc_data(i64 4000000, i32 8) #8, !dbg !341
  call void @llvm.dbg.value(metadata i8* %3, metadata !337, metadata !DIExpression()), !dbg !340
  %4 = tail call i8* @polybench_alloc_data(i64 4000000, i32 8) #8, !dbg !342
  call void @llvm.dbg.value(metadata i8* %4, metadata !338, metadata !DIExpression()), !dbg !340
  %5 = tail call i8* @polybench_alloc_data(i64 2000, i32 8) #8, !dbg !343
  call void @llvm.dbg.value(metadata i8* %5, metadata !339, metadata !DIExpression()), !dbg !340
  %6 = bitcast i8* %3 to [2000 x double]*, !dbg !344
  call void @llvm.dbg.value(metadata i32 undef, metadata !345, metadata !DIExpression()), !dbg !355
  call void @llvm.dbg.value(metadata i32 undef, metadata !350, metadata !DIExpression()), !dbg !355
  call void @llvm.dbg.value(metadata [2000 x double]* %6, metadata !352, metadata !DIExpression()), !dbg !355
  call void @llvm.dbg.value(metadata i32 0, metadata !353, metadata !DIExpression()), !dbg !355
  br label %7, !dbg !357

7:                                                ; preds = %26, %2
  %8 = phi i64 [ 0, %2 ], [ %27, %26 ]
  call void @llvm.dbg.value(metadata i64 %8, metadata !353, metadata !DIExpression()), !dbg !355
  call void @llvm.dbg.value(metadata i32 0, metadata !354, metadata !DIExpression()), !dbg !355
  %9 = trunc i64 %8 to i32, !dbg !359
  %10 = sitofp i32 %9 to double, !dbg !359
  br label %11, !dbg !363

11:                                               ; preds = %11, %7
  %12 = phi i64 [ 0, %7 ], [ %24, %11 ]
  call void @llvm.dbg.value(metadata i64 %12, metadata !354, metadata !DIExpression()), !dbg !355
  %13 = trunc i64 %12 to i32, !dbg !364
  %14 = sitofp i32 %13 to double, !dbg !364
  %15 = fmul double %10, %14, !dbg !365
  %16 = fdiv double %15, 2.000000e+03, !dbg !366
  %17 = getelementptr inbounds [2000 x double], [2000 x double]* %6, i64 %8, i64 %12, !dbg !367
  store double %16, double* %17, align 8, !dbg !368, !tbaa !49
  %18 = or i64 %12, 1, !dbg !369
  call void @llvm.dbg.value(metadata i64 %18, metadata !354, metadata !DIExpression()), !dbg !355
  %19 = trunc i64 %18 to i32, !dbg !364
  %20 = sitofp i32 %19 to double, !dbg !364
  %21 = fmul double %10, %20, !dbg !365
  %22 = fdiv double %21, 2.000000e+03, !dbg !366
  %23 = getelementptr inbounds [2000 x double], [2000 x double]* %6, i64 %8, i64 %18, !dbg !367
  store double %22, double* %23, align 8, !dbg !368, !tbaa !49
  %24 = add nuw nsw i64 %12, 2, !dbg !369
  call void @llvm.dbg.value(metadata i64 %24, metadata !354, metadata !DIExpression()), !dbg !355
  %25 = icmp eq i64 %24, 2000, !dbg !370
  br i1 %25, label %26, label %11, !dbg !363, !llvm.loop !371

26:                                               ; preds = %11
  %27 = add nuw nsw i64 %8, 1, !dbg !373
  call void @llvm.dbg.value(metadata i64 %27, metadata !353, metadata !DIExpression()), !dbg !355
  %28 = icmp eq i64 %27, 2000, !dbg !374
  br i1 %28, label %29, label %7, !dbg !357, !llvm.loop !375

29:                                               ; preds = %26
  call void @llvm.dbg.value(metadata double 1.200000e+00, metadata !336, metadata !DIExpression()), !dbg !340
  %30 = bitcast i8* %4 to [2000 x double]*, !dbg !377
  %31 = bitcast i8* %5 to double*, !dbg !378
  tail call void @kernel_covariance(i32 2000, i32 2000, double 1.200000e+00, [2000 x double]* nonnull %6, [2000 x double]* %30, double* %31), !dbg !379
  %32 = icmp sgt i32 %0, 42, !dbg !380
  br i1 %32, label %33, label %62, !dbg !380

33:                                               ; preds = %29
  %34 = load i8*, i8** %1, align 8, !dbg !380, !tbaa !51
  %35 = load i8, i8* %34, align 1, !dbg !380
  %36 = icmp eq i8 %35, 0, !dbg !380
  br i1 %36, label %37, label %62, !dbg !382

37:                                               ; preds = %33, %56
  %38 = phi i64 [ %57, %56 ], [ 0, %33 ]
  call void @llvm.dbg.value(metadata i64 %38, metadata !383, metadata !DIExpression()) #8, !dbg !391
  call void @llvm.dbg.value(metadata i32 0, metadata !390, metadata !DIExpression()) #8, !dbg !391
  %39 = mul nuw nsw i64 %38, 2000, !dbg !393
  br label %40, !dbg !400

40:                                               ; preds = %53, %37
  %41 = phi i64 [ 0, %37 ], [ %54, %53 ]
  call void @llvm.dbg.value(metadata i64 %41, metadata !390, metadata !DIExpression()) #8, !dbg !391
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !401, !tbaa !51
  %43 = getelementptr inbounds [2000 x double], [2000 x double]* %30, i64 %38, i64 %41, !dbg !402
  %44 = load double, double* %43, align 8, !dbg !402, !tbaa !49
  %45 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), double %44) #9, !dbg !403
  %46 = add nuw nsw i64 %41, %39, !dbg !404
  %47 = trunc i64 %46 to i32, !dbg !405
  %48 = urem i32 %47, 20, !dbg !405
  %49 = icmp eq i32 %48, 0, !dbg !406
  br i1 %49, label %50, label %53, !dbg !407

50:                                               ; preds = %40
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !408, !tbaa !51
  %52 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %51) #9, !dbg !409
  br label %53, !dbg !409

53:                                               ; preds = %50, %40
  %54 = add nuw nsw i64 %41, 1, !dbg !410
  call void @llvm.dbg.value(metadata i64 %54, metadata !390, metadata !DIExpression()) #8, !dbg !391
  %55 = icmp eq i64 %54, 2000, !dbg !411
  br i1 %55, label %56, label %40, !dbg !400, !llvm.loop !412

56:                                               ; preds = %53
  %57 = add nuw nsw i64 %38, 1, !dbg !414
  call void @llvm.dbg.value(metadata i64 %57, metadata !383, metadata !DIExpression()) #8, !dbg !391
  %58 = icmp eq i64 %57, 2000, !dbg !415
  br i1 %58, label %59, label %37, !dbg !416, !llvm.loop !417

59:                                               ; preds = %56
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !419, !tbaa !51
  %61 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %60) #9, !dbg !420
  br label %62, !dbg !380

62:                                               ; preds = %33, %59, %29
  tail call void @free(i8* %3) #8, !dbg !421
  tail call void @free(i8* %4) #8, !dbg !422
  tail call void @free(i8* %5) #8, !dbg !423
  ret i32 0, !dbg !424
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
!1 = !DIFile(filename: "../test/poly_gpu/inputs_kernel_splits/datamining/covariance/covariance.c", directory: "/WAVE/users/unix/klor/ycho_lab/kimsong_lor/autotuning_tools/scripts")
!2 = !{}
!3 = !{!4, !8, !9, !10, !15, !21, !18, !24, !12}
!4 = !DISubprogram(name: "polybench_timer_start", scope: !5, file: !5, line: 184, type: !6, spFlags: DISPFlagOptimized, retainedNodes: !2)
!5 = !DIFile(filename: "../test/poly_gpu/inputs_kernel_splits/utilities/polybench.h", directory: "/WAVE/users/unix/klor/ycho_lab/kimsong_lor/autotuning_tools/scripts")
!6 = !DISubroutineType(types: !7)
!7 = !{null, null}
!8 = !DISubprogram(name: "polybench_timer_stop", scope: !5, file: !5, line: 185, type: !6, spFlags: DISPFlagOptimized, retainedNodes: !2)
!9 = !DISubprogram(name: "polybench_timer_print", scope: !5, file: !5, line: 186, type: !6, spFlags: DISPFlagOptimized, retainedNodes: !2)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 256000000, elements: !13)
!12 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!13 = !{!14, !14}
!14 = !DISubrange(count: 2000)
!15 = !DISubprogram(name: "polybench_alloc_data", scope: !5, file: !5, line: 199, type: !16, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!16 = !DISubroutineType(types: !17)
!17 = !{!18, !19, !20}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!19 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 128000, elements: !23)
!23 = !{!14}
!24 = !DISubprogram(name: "free", scope: !25, file: !25, line: 563, type: !26, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!25 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!26 = !DISubroutineType(types: !27)
!27 = !{null, !18}
!28 = !{i32 7, !"Dwarf Version", i32 4}
!29 = !{i32 2, !"Debug Info Version", i32 3}
!30 = !{i32 1, !"wchar_size", i32 4}
!31 = !{!"clang version 10.0.1 (https://github.com/conda-forge/clangdev-feedstock 2a1fb6e8a1c6dc6e585535457c24f0295d90c8d2)"}
!32 = distinct !DISubprogram(name: "kernel_p1", scope: !1, file: !1, line: 54, type: !33, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !36)
!33 = !DISubroutineType(types: !34)
!34 = !{null, !20, !20, !12, !21, !35}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!36 = !{!37, !38, !39, !40, !41, !42, !43}
!37 = !DILocalVariable(name: "m", arg: 1, scope: !32, file: !1, line: 54, type: !20)
!38 = !DILocalVariable(name: "n", arg: 2, scope: !32, file: !1, line: 54, type: !20)
!39 = !DILocalVariable(name: "float_n", arg: 3, scope: !32, file: !1, line: 54, type: !12)
!40 = !DILocalVariable(name: "data", arg: 4, scope: !32, file: !1, line: 54, type: !21)
!41 = !DILocalVariable(name: "mean", arg: 5, scope: !32, file: !1, line: 54, type: !35)
!42 = !DILocalVariable(name: "i", scope: !32, file: !1, line: 56, type: !20)
!43 = !DILocalVariable(name: "j", scope: !32, file: !1, line: 56, type: !20)
!44 = !DILocation(line: 0, scope: !32)
!45 = !{!46, !46, i64 0}
!46 = !{!"int", !47, i64 0}
!47 = !{!"omnipotent char", !48, i64 0}
!48 = !{!"Simple C/C++ TBAA"}
!49 = !{!50, !50, i64 0}
!50 = !{!"double", !47, i64 0}
!51 = !{!52, !52, i64 0}
!52 = !{!"any pointer", !47, i64 0}
!53 = !DILocation(line: 57, column: 1, scope: !32)
!54 = !{!55, !52, i64 16}
!55 = !{!"ident_t", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !52, i64 16}
!56 = !DILocation(line: 65, column: 1, scope: !32)
!57 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 58, type: !58, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!58 = !DISubroutineType(types: !59)
!59 = !{null, !60, !60, !64, !65, !64, !66, !67}
!60 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!64 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !20, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !35, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !21, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!68 = !{!69, !70, !71, !72, !73, !74, !75}
!69 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !57, type: !60, flags: DIFlagArtificial)
!70 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !57, type: !60, flags: DIFlagArtificial)
!71 = !DILocalVariable(name: "m", arg: 3, scope: !57, type: !64, flags: DIFlagArtificial)
!72 = !DILocalVariable(name: "mean", arg: 4, scope: !57, type: !65, flags: DIFlagArtificial)
!73 = !DILocalVariable(name: "n", arg: 5, scope: !57, type: !64, flags: DIFlagArtificial)
!74 = !DILocalVariable(name: "data", arg: 6, scope: !57, type: !66, flags: DIFlagArtificial)
!75 = !DILocalVariable(name: "float_n", arg: 7, scope: !57, type: !67, flags: DIFlagArtificial)
!76 = !DILocation(line: 0, scope: !57)
!77 = !DILocation(line: 58, column: 3, scope: !57)
!78 = !{!79}
!79 = distinct !{!79, !80, !".omp_outlined._debug__: argument 0"}
!80 = distinct !{!80, !".omp_outlined._debug__"}
!81 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !82, type: !60, flags: DIFlagArtificial)
!82 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 58, type: !58, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !83)
!83 = !{!81, !84, !85, !86, !87, !88, !89, !90, !91, !91, !92, !93, !94, !95, !96, !97, !92}
!84 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !82, type: !60, flags: DIFlagArtificial)
!85 = !DILocalVariable(name: "m", arg: 3, scope: !82, file: !1, line: 54, type: !64)
!86 = !DILocalVariable(name: "mean", arg: 4, scope: !82, file: !1, line: 54, type: !65)
!87 = !DILocalVariable(name: "n", arg: 5, scope: !82, file: !1, line: 54, type: !64)
!88 = !DILocalVariable(name: "data", arg: 6, scope: !82, file: !1, line: 54, type: !66)
!89 = !DILocalVariable(name: "float_n", arg: 7, scope: !82, file: !1, line: 54, type: !67)
!90 = !DILocalVariable(name: ".omp.iv", scope: !82, type: !20, flags: DIFlagArtificial)
!91 = !DILocalVariable(name: ".capture_expr.", scope: !82, type: !20, flags: DIFlagArtificial)
!92 = !DILocalVariable(name: "j", scope: !82, type: !20, flags: DIFlagArtificial)
!93 = !DILocalVariable(name: ".omp.lb", scope: !82, type: !20, flags: DIFlagArtificial)
!94 = !DILocalVariable(name: ".omp.ub", scope: !82, type: !20, flags: DIFlagArtificial)
!95 = !DILocalVariable(name: ".omp.stride", scope: !82, type: !20, flags: DIFlagArtificial)
!96 = !DILocalVariable(name: ".omp.is_last", scope: !82, type: !20, flags: DIFlagArtificial)
!97 = !DILocalVariable(name: "i", scope: !82, type: !20, flags: DIFlagArtificial)
!98 = !DILocation(line: 0, scope: !82, inlinedAt: !99)
!99 = distinct !DILocation(line: 58, column: 3, scope: !57)
!100 = !DILocation(line: 58, column: 3, scope: !82, inlinedAt: !99)
!101 = !DILocation(line: 58, column: 8, scope: !82, inlinedAt: !99)
!102 = !DILocation(line: 0, scope: !103, inlinedAt: !99)
!103 = distinct !DILexicalBlock(scope: !82, file: !1, line: 59, column: 3)
!104 = !DILocation(line: 0, scope: !105, inlinedAt: !99)
!105 = distinct !DILexicalBlock(scope: !106, file: !1, line: 61, column: 5)
!106 = distinct !DILexicalBlock(scope: !103, file: !1, line: 61, column: 5)
!107 = !DILocation(line: 57, column: 1, scope: !82, inlinedAt: !99)
!108 = !{!109}
!109 = distinct !{!109, !110}
!110 = distinct !{!110, !"LVerDomain"}
!111 = !DILocation(line: 60, column: 5, scope: !103, inlinedAt: !99)
!112 = !DILocation(line: 60, column: 13, scope: !103, inlinedAt: !99)
!113 = !{!114}
!114 = distinct !{!114, !110}
!115 = !{!79, !109}
!116 = !DILocation(line: 63, column: 13, scope: !103, inlinedAt: !99)
!117 = distinct !{!117, !107, !118, !119}
!118 = !DILocation(line: 57, column: 36, scope: !82, inlinedAt: !99)
!119 = !{!"llvm.loop.isvectorized", i32 1}
!120 = !DILocation(line: 63, column: 16, scope: !103, inlinedAt: !99)
!121 = !DILocation(line: 0, scope: !106, inlinedAt: !99)
!122 = !DILocation(line: 61, column: 5, scope: !106, inlinedAt: !99)
!123 = !DILocation(line: 62, column: 15, scope: !105, inlinedAt: !99)
!124 = !DILocation(line: 62, column: 18, scope: !105, inlinedAt: !99)
!125 = !DILocation(line: 61, column: 25, scope: !105, inlinedAt: !99)
!126 = distinct !{!126, !122, !127}
!127 = !DILocation(line: 62, column: 27, scope: !106, inlinedAt: !99)
!128 = distinct !{!128, !129}
!129 = !{!"llvm.loop.unroll.disable"}
!130 = distinct !{!130, !107, !118}
!131 = distinct !{!131, !107, !118, !119}
!132 = !DILocation(line: 64, column: 3, scope: !82, inlinedAt: !99)
!133 = !{!134}
!134 = !{i64 2, i64 -1, i64 -1, i1 true}
!135 = distinct !DISubprogram(name: "kernel_p2", scope: !1, file: !1, line: 67, type: !136, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !138)
!136 = !DISubroutineType(types: !137)
!137 = !{null, !20, !20, !21, !35}
!138 = !{!139, !140, !141, !142, !143, !144}
!139 = !DILocalVariable(name: "m", arg: 1, scope: !135, file: !1, line: 67, type: !20)
!140 = !DILocalVariable(name: "n", arg: 2, scope: !135, file: !1, line: 67, type: !20)
!141 = !DILocalVariable(name: "data", arg: 3, scope: !135, file: !1, line: 67, type: !21)
!142 = !DILocalVariable(name: "mean", arg: 4, scope: !135, file: !1, line: 67, type: !35)
!143 = !DILocalVariable(name: "i", scope: !135, file: !1, line: 69, type: !20)
!144 = !DILocalVariable(name: "j", scope: !135, file: !1, line: 69, type: !20)
!145 = !DILocation(line: 0, scope: !135)
!146 = !DILocation(line: 70, column: 1, scope: !135)
!147 = !DILocation(line: 74, column: 1, scope: !135)
!148 = distinct !DISubprogram(name: ".omp_outlined..2", scope: !1, file: !1, line: 71, type: !149, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !151)
!149 = !DISubroutineType(types: !150)
!150 = !{null, !60, !60, !64, !64, !66, !65}
!151 = !{!152, !153, !154, !155, !156, !157}
!152 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !148, type: !60, flags: DIFlagArtificial)
!153 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !148, type: !60, flags: DIFlagArtificial)
!154 = !DILocalVariable(name: "n", arg: 3, scope: !148, type: !64, flags: DIFlagArtificial)
!155 = !DILocalVariable(name: "m", arg: 4, scope: !148, type: !64, flags: DIFlagArtificial)
!156 = !DILocalVariable(name: "data", arg: 5, scope: !148, type: !66, flags: DIFlagArtificial)
!157 = !DILocalVariable(name: "mean", arg: 6, scope: !148, type: !65, flags: DIFlagArtificial)
!158 = !DILocation(line: 0, scope: !148)
!159 = !DILocation(line: 71, column: 3, scope: !148)
!160 = !{!161}
!161 = distinct !{!161, !162, !".omp_outlined._debug__.1: argument 0"}
!162 = distinct !{!162, !".omp_outlined._debug__.1"}
!163 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !164, type: !60, flags: DIFlagArtificial)
!164 = distinct !DISubprogram(name: ".omp_outlined._debug__.1", scope: !1, file: !1, line: 71, type: !149, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !165)
!165 = !{!163, !166, !167, !168, !169, !170, !171, !172, !172, !173, !174, !175, !176, !177, !173, !178, !173}
!166 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !164, type: !60, flags: DIFlagArtificial)
!167 = !DILocalVariable(name: "n", arg: 3, scope: !164, file: !1, line: 67, type: !64)
!168 = !DILocalVariable(name: "m", arg: 4, scope: !164, file: !1, line: 67, type: !64)
!169 = !DILocalVariable(name: "data", arg: 5, scope: !164, file: !1, line: 67, type: !66)
!170 = !DILocalVariable(name: "mean", arg: 6, scope: !164, file: !1, line: 67, type: !65)
!171 = !DILocalVariable(name: ".omp.iv", scope: !164, type: !20, flags: DIFlagArtificial)
!172 = !DILocalVariable(name: ".capture_expr.", scope: !164, type: !20, flags: DIFlagArtificial)
!173 = !DILocalVariable(name: "i", scope: !164, type: !20, flags: DIFlagArtificial)
!174 = !DILocalVariable(name: ".omp.lb", scope: !164, type: !20, flags: DIFlagArtificial)
!175 = !DILocalVariable(name: ".omp.ub", scope: !164, type: !20, flags: DIFlagArtificial)
!176 = !DILocalVariable(name: ".omp.stride", scope: !164, type: !20, flags: DIFlagArtificial)
!177 = !DILocalVariable(name: ".omp.is_last", scope: !164, type: !20, flags: DIFlagArtificial)
!178 = !DILocalVariable(name: "j", scope: !164, type: !20, flags: DIFlagArtificial)
!179 = !DILocation(line: 0, scope: !164, inlinedAt: !180)
!180 = distinct !DILocation(line: 71, column: 3, scope: !148)
!181 = !DILocation(line: 71, column: 3, scope: !164, inlinedAt: !180)
!182 = !DILocation(line: 71, column: 8, scope: !164, inlinedAt: !180)
!183 = !DILocation(line: 0, scope: !184, inlinedAt: !180)
!184 = distinct !DILexicalBlock(scope: !185, file: !1, line: 72, column: 5)
!185 = distinct !DILexicalBlock(scope: !164, file: !1, line: 72, column: 5)
!186 = !DILocation(line: 70, column: 1, scope: !164, inlinedAt: !180)
!187 = !DILocation(line: 0, scope: !185, inlinedAt: !180)
!188 = !DILocation(line: 72, column: 5, scope: !185, inlinedAt: !180)
!189 = !DILocation(line: 72, column: 25, scope: !184, inlinedAt: !180)
!190 = !DILocation(line: 73, column: 21, scope: !184, inlinedAt: !180)
!191 = !{!192}
!192 = distinct !{!192, !193}
!193 = distinct !{!193, !"LVerDomain"}
!194 = !DILocation(line: 73, column: 7, scope: !184, inlinedAt: !180)
!195 = !DILocation(line: 73, column: 18, scope: !184, inlinedAt: !180)
!196 = !{!197}
!197 = distinct !{!197, !193}
!198 = !{!161, !192}
!199 = distinct !{!199, !188, !200, !119}
!200 = !DILocation(line: 73, column: 27, scope: !185, inlinedAt: !180)
!201 = !DILocation(line: 72, column: 19, scope: !184, inlinedAt: !180)
!202 = distinct !{!202, !188, !200, !119}
!203 = distinct !{!203, !186, !204}
!204 = !DILocation(line: 70, column: 39, scope: !164, inlinedAt: !180)
!205 = !DILocation(line: 73, column: 27, scope: !164, inlinedAt: !180)
!206 = distinct !DISubprogram(name: "kernel_p3", scope: !1, file: !1, line: 76, type: !207, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !209)
!207 = !DISubroutineType(types: !208)
!208 = !{null, !20, !20, !12, !21, !21}
!209 = !{!210, !211, !212, !213, !214, !215, !216, !217, !218}
!210 = !DILocalVariable(name: "m", arg: 1, scope: !206, file: !1, line: 76, type: !20)
!211 = !DILocalVariable(name: "n", arg: 2, scope: !206, file: !1, line: 76, type: !20)
!212 = !DILocalVariable(name: "float_n", arg: 3, scope: !206, file: !1, line: 76, type: !12)
!213 = !DILocalVariable(name: "data", arg: 4, scope: !206, file: !1, line: 76, type: !21)
!214 = !DILocalVariable(name: "symmat", arg: 5, scope: !206, file: !1, line: 76, type: !21)
!215 = !DILocalVariable(name: "i", scope: !206, file: !1, line: 78, type: !20)
!216 = !DILocalVariable(name: "j", scope: !206, file: !1, line: 78, type: !20)
!217 = !DILocalVariable(name: "j1", scope: !206, file: !1, line: 78, type: !20)
!218 = !DILocalVariable(name: "j2", scope: !206, file: !1, line: 78, type: !20)
!219 = !DILocation(line: 0, scope: !206)
!220 = !DILocation(line: 79, column: 1, scope: !206)
!221 = !DILocation(line: 88, column: 1, scope: !206)
!222 = distinct !DISubprogram(name: ".omp_outlined..4", scope: !1, file: !1, line: 80, type: !223, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !225)
!223 = !DISubroutineType(types: !224)
!224 = !{null, !60, !60, !64, !66, !64, !66}
!225 = !{!226, !227, !228, !229, !230, !231}
!226 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !222, type: !60, flags: DIFlagArtificial)
!227 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !222, type: !60, flags: DIFlagArtificial)
!228 = !DILocalVariable(name: "m", arg: 3, scope: !222, type: !64, flags: DIFlagArtificial)
!229 = !DILocalVariable(name: "symmat", arg: 4, scope: !222, type: !66, flags: DIFlagArtificial)
!230 = !DILocalVariable(name: "n", arg: 5, scope: !222, type: !64, flags: DIFlagArtificial)
!231 = !DILocalVariable(name: "data", arg: 6, scope: !222, type: !66, flags: DIFlagArtificial)
!232 = !DILocation(line: 0, scope: !222)
!233 = !{!234}
!234 = distinct !{!234, !235, !".omp_outlined._debug__.3: argument 0"}
!235 = distinct !{!235, !".omp_outlined._debug__.3"}
!236 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !237, type: !60, flags: DIFlagArtificial)
!237 = distinct !DISubprogram(name: ".omp_outlined._debug__.3", scope: !1, file: !1, line: 80, type: !223, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !238)
!238 = !{!236, !239, !240, !241, !242, !243, !244, !245, !245, !246, !247, !248, !249, !250, !246, !251, !252, !246}
!239 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !237, type: !60, flags: DIFlagArtificial)
!240 = !DILocalVariable(name: "m", arg: 3, scope: !237, file: !1, line: 76, type: !64)
!241 = !DILocalVariable(name: "symmat", arg: 4, scope: !237, file: !1, line: 76, type: !66)
!242 = !DILocalVariable(name: "n", arg: 5, scope: !237, file: !1, line: 76, type: !64)
!243 = !DILocalVariable(name: "data", arg: 6, scope: !237, file: !1, line: 76, type: !66)
!244 = !DILocalVariable(name: ".omp.iv", scope: !237, type: !20, flags: DIFlagArtificial)
!245 = !DILocalVariable(name: ".capture_expr.", scope: !237, type: !20, flags: DIFlagArtificial)
!246 = !DILocalVariable(name: "j1", scope: !237, type: !20, flags: DIFlagArtificial)
!247 = !DILocalVariable(name: ".omp.lb", scope: !237, type: !20, flags: DIFlagArtificial)
!248 = !DILocalVariable(name: ".omp.ub", scope: !237, type: !20, flags: DIFlagArtificial)
!249 = !DILocalVariable(name: ".omp.stride", scope: !237, type: !20, flags: DIFlagArtificial)
!250 = !DILocalVariable(name: ".omp.is_last", scope: !237, type: !20, flags: DIFlagArtificial)
!251 = !DILocalVariable(name: "j2", scope: !237, type: !20, flags: DIFlagArtificial)
!252 = !DILocalVariable(name: "i", scope: !237, type: !20, flags: DIFlagArtificial)
!253 = !DILocation(line: 0, scope: !237, inlinedAt: !254)
!254 = distinct !DILocation(line: 80, column: 3, scope: !222)
!255 = !DILocation(line: 80, column: 21, scope: !237, inlinedAt: !254)
!256 = !DILocation(line: 80, column: 3, scope: !237, inlinedAt: !254)
!257 = !DILocation(line: 80, column: 8, scope: !237, inlinedAt: !254)
!258 = !DILocation(line: 0, scope: !259, inlinedAt: !254)
!259 = distinct !DILexicalBlock(scope: !260, file: !1, line: 81, column: 5)
!260 = distinct !DILexicalBlock(scope: !237, file: !1, line: 81, column: 5)
!261 = !DILocation(line: 0, scope: !262, inlinedAt: !254)
!262 = distinct !DILexicalBlock(scope: !259, file: !1, line: 82, column: 5)
!263 = !DILocation(line: 0, scope: !264, inlinedAt: !254)
!264 = distinct !DILexicalBlock(scope: !265, file: !1, line: 84, column: 7)
!265 = distinct !DILexicalBlock(scope: !262, file: !1, line: 84, column: 7)
!266 = !DILocation(line: 79, column: 1, scope: !237, inlinedAt: !254)
!267 = !DILocation(line: 81, column: 22, scope: !259, inlinedAt: !254)
!268 = !DILocation(line: 81, column: 5, scope: !260, inlinedAt: !254)
!269 = distinct !{!269, !266, !270}
!270 = !DILocation(line: 79, column: 44, scope: !237, inlinedAt: !254)
!271 = !DILocation(line: 83, column: 7, scope: !262, inlinedAt: !254)
!272 = !DILocation(line: 83, column: 22, scope: !262, inlinedAt: !254)
!273 = !DILocation(line: 84, column: 7, scope: !265, inlinedAt: !254)
!274 = !DILocation(line: 86, column: 7, scope: !262, inlinedAt: !254)
!275 = !DILocation(line: 86, column: 22, scope: !262, inlinedAt: !254)
!276 = !DILocation(line: 81, column: 29, scope: !259, inlinedAt: !254)
!277 = distinct !{!277, !268, !278}
!278 = !DILocation(line: 87, column: 5, scope: !260, inlinedAt: !254)
!279 = !DILocation(line: 85, column: 24, scope: !264, inlinedAt: !254)
!280 = !DILocation(line: 85, column: 27, scope: !264, inlinedAt: !254)
!281 = !DILocation(line: 85, column: 41, scope: !264, inlinedAt: !254)
!282 = !DILocation(line: 85, column: 39, scope: !264, inlinedAt: !254)
!283 = !DILocation(line: 84, column: 27, scope: !264, inlinedAt: !254)
!284 = !DILocation(line: 84, column: 21, scope: !264, inlinedAt: !254)
!285 = distinct !{!285, !273, !286}
!286 = !DILocation(line: 85, column: 51, scope: !265, inlinedAt: !254)
!287 = distinct !{!287, !129}
!288 = distinct !{!288, !268, !278}
!289 = distinct !{!289, !266, !270}
!290 = !DILocation(line: 87, column: 5, scope: !237, inlinedAt: !254)
!291 = !DILocation(line: 80, column: 3, scope: !222)
!292 = distinct !DISubprogram(name: "kernel_covariance", scope: !1, file: !1, line: 92, type: !293, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !295)
!293 = !DISubroutineType(types: !294)
!294 = !{null, !20, !20, !12, !21, !21, !35}
!295 = !{!296, !297, !298, !299, !300, !301}
!296 = !DILocalVariable(name: "m", arg: 1, scope: !292, file: !1, line: 92, type: !20)
!297 = !DILocalVariable(name: "n", arg: 2, scope: !292, file: !1, line: 92, type: !20)
!298 = !DILocalVariable(name: "float_n", arg: 3, scope: !292, file: !1, line: 93, type: !12)
!299 = !DILocalVariable(name: "data", arg: 4, scope: !292, file: !1, line: 94, type: !21)
!300 = !DILocalVariable(name: "symmat", arg: 5, scope: !292, file: !1, line: 95, type: !21)
!301 = !DILocalVariable(name: "mean", arg: 6, scope: !292, file: !1, line: 96, type: !35)
!302 = !DILocation(line: 0, scope: !292)
!303 = !DILocation(line: 101, column: 3, scope: !292)
!304 = !DILocation(line: 0, scope: !32, inlinedAt: !305)
!305 = distinct !DILocation(line: 102, column: 3, scope: !292)
!306 = !DILocation(line: 57, column: 1, scope: !32, inlinedAt: !305)
!307 = !DILocation(line: 65, column: 1, scope: !32, inlinedAt: !305)
!308 = !DILocation(line: 103, column: 3, scope: !292)
!309 = !DILocation(line: 104, column: 3, scope: !292)
!310 = !DILocation(line: 107, column: 3, scope: !292)
!311 = !DILocation(line: 0, scope: !135, inlinedAt: !312)
!312 = distinct !DILocation(line: 108, column: 3, scope: !292)
!313 = !DILocation(line: 70, column: 1, scope: !135, inlinedAt: !312)
!314 = !DILocation(line: 74, column: 1, scope: !135, inlinedAt: !312)
!315 = !DILocation(line: 109, column: 3, scope: !292)
!316 = !DILocation(line: 110, column: 3, scope: !292)
!317 = !DILocation(line: 113, column: 3, scope: !292)
!318 = !DILocation(line: 0, scope: !206, inlinedAt: !319)
!319 = distinct !DILocation(line: 114, column: 3, scope: !292)
!320 = !DILocation(line: 79, column: 1, scope: !206, inlinedAt: !319)
!321 = !DILocation(line: 88, column: 1, scope: !206, inlinedAt: !319)
!322 = !DILocation(line: 115, column: 3, scope: !292)
!323 = !DILocation(line: 116, column: 3, scope: !292)
!324 = !DILocation(line: 118, column: 1, scope: !292)
!325 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 120, type: !326, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !331)
!326 = !DISubroutineType(types: !327)
!327 = !{!20, !20, !328}
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!331 = !{!332, !333, !334, !335, !336, !337, !338, !339}
!332 = !DILocalVariable(name: "argc", arg: 1, scope: !325, file: !1, line: 120, type: !20)
!333 = !DILocalVariable(name: "argv", arg: 2, scope: !325, file: !1, line: 120, type: !328)
!334 = !DILocalVariable(name: "n", scope: !325, file: !1, line: 123, type: !20)
!335 = !DILocalVariable(name: "m", scope: !325, file: !1, line: 124, type: !20)
!336 = !DILocalVariable(name: "float_n", scope: !325, file: !1, line: 127, type: !12)
!337 = !DILocalVariable(name: "data", scope: !325, file: !1, line: 128, type: !10)
!338 = !DILocalVariable(name: "symmat", scope: !325, file: !1, line: 129, type: !10)
!339 = !DILocalVariable(name: "mean", scope: !325, file: !1, line: 130, type: !21)
!340 = !DILocation(line: 0, scope: !325)
!341 = !DILocation(line: 128, column: 3, scope: !325)
!342 = !DILocation(line: 129, column: 3, scope: !325)
!343 = !DILocation(line: 130, column: 3, scope: !325)
!344 = !DILocation(line: 133, column: 30, scope: !325)
!345 = !DILocalVariable(name: "m", arg: 1, scope: !346, file: !1, line: 23, type: !20)
!346 = distinct !DISubprogram(name: "init_array", scope: !1, file: !1, line: 23, type: !347, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !349)
!347 = !DISubroutineType(types: !348)
!348 = !{null, !20, !20, !35, !21}
!349 = !{!345, !350, !351, !352, !353, !354}
!350 = !DILocalVariable(name: "n", arg: 2, scope: !346, file: !1, line: 23, type: !20)
!351 = !DILocalVariable(name: "float_n", arg: 3, scope: !346, file: !1, line: 24, type: !35)
!352 = !DILocalVariable(name: "data", arg: 4, scope: !346, file: !1, line: 25, type: !21)
!353 = !DILocalVariable(name: "i", scope: !346, file: !1, line: 27, type: !20)
!354 = !DILocalVariable(name: "j", scope: !346, file: !1, line: 27, type: !20)
!355 = !DILocation(line: 0, scope: !346, inlinedAt: !356)
!356 = distinct !DILocation(line: 133, column: 3, scope: !325)
!357 = !DILocation(line: 31, column: 3, scope: !358, inlinedAt: !356)
!358 = distinct !DILexicalBlock(scope: !346, file: !1, line: 31, column: 3)
!359 = !DILocation(line: 0, scope: !360, inlinedAt: !356)
!360 = distinct !DILexicalBlock(scope: !361, file: !1, line: 32, column: 5)
!361 = distinct !DILexicalBlock(scope: !362, file: !1, line: 32, column: 5)
!362 = distinct !DILexicalBlock(scope: !358, file: !1, line: 31, column: 3)
!363 = !DILocation(line: 32, column: 5, scope: !361, inlinedAt: !356)
!364 = !DILocation(line: 33, column: 36, scope: !360, inlinedAt: !356)
!365 = !DILocation(line: 33, column: 34, scope: !360, inlinedAt: !356)
!366 = !DILocation(line: 33, column: 39, scope: !360, inlinedAt: !356)
!367 = !DILocation(line: 33, column: 7, scope: !360, inlinedAt: !356)
!368 = !DILocation(line: 33, column: 18, scope: !360, inlinedAt: !356)
!369 = !DILocation(line: 32, column: 25, scope: !360, inlinedAt: !356)
!370 = !DILocation(line: 32, column: 19, scope: !360, inlinedAt: !356)
!371 = distinct !{!371, !363, !372}
!372 = !DILocation(line: 33, column: 41, scope: !361, inlinedAt: !356)
!373 = !DILocation(line: 31, column: 23, scope: !362, inlinedAt: !356)
!374 = !DILocation(line: 31, column: 17, scope: !362, inlinedAt: !356)
!375 = distinct !{!375, !357, !376}
!376 = !DILocation(line: 33, column: 41, scope: !358, inlinedAt: !356)
!377 = !DILocation(line: 141, column: 21, scope: !325)
!378 = !DILocation(line: 142, column: 21, scope: !325)
!379 = !DILocation(line: 139, column: 3, scope: !325)
!380 = !DILocation(line: 150, column: 3, scope: !381)
!381 = distinct !DILexicalBlock(scope: !325, file: !1, line: 150, column: 3)
!382 = !DILocation(line: 150, column: 3, scope: !325)
!383 = !DILocalVariable(name: "i", scope: !384, file: !1, line: 42, type: !20)
!384 = distinct !DISubprogram(name: "print_array", scope: !1, file: !1, line: 38, type: !385, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !387)
!385 = !DISubroutineType(types: !386)
!386 = !{null, !20, !21}
!387 = !{!388, !389, !383, !390}
!388 = !DILocalVariable(name: "m", arg: 1, scope: !384, file: !1, line: 38, type: !20)
!389 = !DILocalVariable(name: "symmat", arg: 2, scope: !384, file: !1, line: 39, type: !21)
!390 = !DILocalVariable(name: "j", scope: !384, file: !1, line: 42, type: !20)
!391 = !DILocation(line: 0, scope: !384, inlinedAt: !392)
!392 = distinct !DILocation(line: 150, column: 3, scope: !381)
!393 = !DILocation(line: 0, scope: !394, inlinedAt: !392)
!394 = distinct !DILexicalBlock(scope: !395, file: !1, line: 48, column: 11)
!395 = distinct !DILexicalBlock(scope: !396, file: !1, line: 46, column: 5)
!396 = distinct !DILexicalBlock(scope: !397, file: !1, line: 45, column: 5)
!397 = distinct !DILexicalBlock(scope: !398, file: !1, line: 45, column: 5)
!398 = distinct !DILexicalBlock(scope: !399, file: !1, line: 44, column: 3)
!399 = distinct !DILexicalBlock(scope: !384, file: !1, line: 44, column: 3)
!400 = !DILocation(line: 45, column: 5, scope: !397, inlinedAt: !392)
!401 = !DILocation(line: 47, column: 15, scope: !395, inlinedAt: !392)
!402 = !DILocation(line: 47, column: 45, scope: !395, inlinedAt: !392)
!403 = !DILocation(line: 47, column: 7, scope: !395, inlinedAt: !392)
!404 = !DILocation(line: 48, column: 18, scope: !394, inlinedAt: !392)
!405 = !DILocation(line: 48, column: 23, scope: !394, inlinedAt: !392)
!406 = !DILocation(line: 48, column: 28, scope: !394, inlinedAt: !392)
!407 = !DILocation(line: 48, column: 11, scope: !395, inlinedAt: !392)
!408 = !DILocation(line: 49, column: 17, scope: !394, inlinedAt: !392)
!409 = !DILocation(line: 49, column: 9, scope: !394, inlinedAt: !392)
!410 = !DILocation(line: 45, column: 25, scope: !396, inlinedAt: !392)
!411 = !DILocation(line: 45, column: 19, scope: !396, inlinedAt: !392)
!412 = distinct !{!412, !400, !413}
!413 = !DILocation(line: 50, column: 5, scope: !397, inlinedAt: !392)
!414 = !DILocation(line: 44, column: 23, scope: !398, inlinedAt: !392)
!415 = !DILocation(line: 44, column: 17, scope: !398, inlinedAt: !392)
!416 = !DILocation(line: 44, column: 3, scope: !399, inlinedAt: !392)
!417 = distinct !{!417, !416, !418}
!418 = !DILocation(line: 50, column: 5, scope: !399, inlinedAt: !392)
!419 = !DILocation(line: 51, column: 11, scope: !384, inlinedAt: !392)
!420 = !DILocation(line: 51, column: 3, scope: !384, inlinedAt: !392)
!421 = !DILocation(line: 153, column: 3, scope: !325)
!422 = !DILocation(line: 154, column: 3, scope: !325)
!423 = !DILocation(line: 155, column: 3, scope: !325)
!424 = !DILocation(line: 157, column: 3, scope: !325)
