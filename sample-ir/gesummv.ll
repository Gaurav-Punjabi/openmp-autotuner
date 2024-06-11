; ModuleID = '../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/gesummv/gesummv.c'
source_filename = "../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/gesummv/gesummv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [97 x i8] c";../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/gesummv/gesummv.c;kernel_p1;68;1;;\00", align 1
@2 = private unnamed_addr constant [98 x i8] c";../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/gesummv/gesummv.c;kernel_p1;68;25;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@llvm.used = appending global [2 x i8*] [i8* bitcast (void (i32, double, double, [8000 x double]*, [8000 x double]*, double*, double*, double*)* @kernel_gesummv to i8*), i8* bitcast (void (i32, double, double, [8000 x double]*, [8000 x double]*, double*, double*, double*)* @kernel_p1 to i8*)], section "llvm.metadata"

; Function Attrs: nounwind uwtable
define internal void @kernel_p1(i32 %0, double %1, double %2, [8000 x double]* %3, [8000 x double]* %4, double* %5, double* %6, double* %7) #0 !dbg !32 {
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca [8000 x double]*, align 8
  %13 = alloca [8000 x double]*, align 8
  %14 = alloca double*, align 8
  %15 = alloca double*, align 8
  %16 = alloca double*, align 8
  %17 = alloca %struct.ident_t, align 8
  %18 = bitcast %struct.ident_t* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %18, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @3 to i8*), i64 16, i1 false)
  call void @llvm.dbg.value(metadata i32 %0, metadata !37, metadata !DIExpression()), !dbg !45
  store i32 %0, i32* %9, align 4, !tbaa !46
  call void @llvm.dbg.value(metadata double %1, metadata !38, metadata !DIExpression()), !dbg !45
  store double %1, double* %10, align 8, !tbaa !50
  call void @llvm.dbg.value(metadata double %2, metadata !39, metadata !DIExpression()), !dbg !45
  store double %2, double* %11, align 8, !tbaa !50
  call void @llvm.dbg.value(metadata [8000 x double]* %3, metadata !40, metadata !DIExpression()), !dbg !45
  store [8000 x double]* %3, [8000 x double]** %12, align 8, !tbaa !52
  call void @llvm.dbg.value(metadata [8000 x double]* %4, metadata !41, metadata !DIExpression()), !dbg !45
  store [8000 x double]* %4, [8000 x double]** %13, align 8, !tbaa !52
  call void @llvm.dbg.value(metadata double* %5, metadata !42, metadata !DIExpression()), !dbg !45
  store double* %5, double** %14, align 8, !tbaa !52
  call void @llvm.dbg.value(metadata double* %6, metadata !43, metadata !DIExpression()), !dbg !45
  store double* %6, double** %15, align 8, !tbaa !52
  call void @llvm.dbg.value(metadata double* %7, metadata !44, metadata !DIExpression()), !dbg !45
  store double* %7, double** %16, align 8, !tbaa !52
  %19 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %17, i64 0, i32 4, !dbg !54
  store i8* getelementptr inbounds ([97 x i8], [97 x i8]* @1, i64 0, i64 0), i8** %19, align 8, !dbg !54, !tbaa !55
  call void @llvm.dbg.value(metadata i32* %9, metadata !37, metadata !DIExpression(DW_OP_deref)), !dbg !45
  call void @llvm.dbg.value(metadata double* %10, metadata !38, metadata !DIExpression(DW_OP_deref)), !dbg !45
  call void @llvm.dbg.value(metadata double* %11, metadata !39, metadata !DIExpression(DW_OP_deref)), !dbg !45
  call void @llvm.dbg.value(metadata [8000 x double]** %12, metadata !40, metadata !DIExpression(DW_OP_deref)), !dbg !45
  call void @llvm.dbg.value(metadata [8000 x double]** %13, metadata !41, metadata !DIExpression(DW_OP_deref)), !dbg !45
  call void @llvm.dbg.value(metadata double** %14, metadata !42, metadata !DIExpression(DW_OP_deref)), !dbg !45
  call void @llvm.dbg.value(metadata double** %15, metadata !43, metadata !DIExpression(DW_OP_deref)), !dbg !45
  call void @llvm.dbg.value(metadata double** %16, metadata !44, metadata !DIExpression(DW_OP_deref)), !dbg !45
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %17, i32 8, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, double**, double**, [8000 x double]**, double**, [8000 x double]**, double*, double*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %9, double** nonnull %14, double** nonnull %16, [8000 x double]** nonnull %12, double** nonnull %15, [8000 x double]** nonnull %13, double* nonnull %10, double* nonnull %11) #8, !dbg !54
  ret void, !dbg !57
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
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture readonly dereferenceable(4) %2, double** nocapture readonly dereferenceable(8) %3, double** nocapture readonly dereferenceable(8) %4, [8000 x double]** nocapture readonly dereferenceable(8) %5, double** nocapture readonly dereferenceable(8) %6, [8000 x double]** nocapture readonly dereferenceable(8) %7, double* nocapture readonly dereferenceable(8) %8, double* nocapture readonly dereferenceable(8) %9) #2 !dbg !58 {
  %11 = bitcast double* %8 to i8*
  %12 = bitcast double* %9 to i8*
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ident_t, align 8
  call void @llvm.dbg.value(metadata i32* %0, metadata !70, metadata !DIExpression()), !dbg !80
  call void @llvm.dbg.value(metadata i32* %1, metadata !71, metadata !DIExpression()), !dbg !80
  call void @llvm.dbg.value(metadata i32* %2, metadata !72, metadata !DIExpression()), !dbg !80
  call void @llvm.dbg.value(metadata double** %3, metadata !73, metadata !DIExpression()), !dbg !80
  call void @llvm.dbg.value(metadata double** %4, metadata !74, metadata !DIExpression()), !dbg !80
  call void @llvm.dbg.value(metadata [8000 x double]** %5, metadata !75, metadata !DIExpression()), !dbg !80
  call void @llvm.dbg.value(metadata double** %6, metadata !76, metadata !DIExpression()), !dbg !80
  call void @llvm.dbg.value(metadata [8000 x double]** %7, metadata !77, metadata !DIExpression()), !dbg !80
  call void @llvm.dbg.value(metadata double* %8, metadata !78, metadata !DIExpression()), !dbg !80
  call void @llvm.dbg.value(metadata double* %9, metadata !79, metadata !DIExpression()), !dbg !80
  %18 = bitcast %struct.ident_t* %17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %18)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %18, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @0 to i8*), i64 24, i1 false) #8, !noalias !81
  call void @llvm.dbg.value(metadata i32* %0, metadata !84, metadata !DIExpression()) #8, !dbg !106
  call void @llvm.dbg.value(metadata i32* undef, metadata !87, metadata !DIExpression()) #8, !dbg !106
  call void @llvm.dbg.value(metadata i32* %2, metadata !88, metadata !DIExpression()) #8, !dbg !106
  call void @llvm.dbg.value(metadata double** %3, metadata !89, metadata !DIExpression()) #8, !dbg !106
  call void @llvm.dbg.value(metadata double** %4, metadata !90, metadata !DIExpression()) #8, !dbg !106
  call void @llvm.dbg.value(metadata [8000 x double]** %5, metadata !91, metadata !DIExpression()) #8, !dbg !106
  call void @llvm.dbg.value(metadata double** %6, metadata !92, metadata !DIExpression()) #8, !dbg !106
  call void @llvm.dbg.value(metadata [8000 x double]** %7, metadata !93, metadata !DIExpression()) #8, !dbg !106
  call void @llvm.dbg.value(metadata double* %8, metadata !94, metadata !DIExpression()) #8, !dbg !106
  call void @llvm.dbg.value(metadata double* %9, metadata !95, metadata !DIExpression()) #8, !dbg !106
  %19 = load i32, i32* %2, align 4, !dbg !108, !tbaa !46, !noalias !81
  call void @llvm.dbg.value(metadata i32 %19, metadata !97, metadata !DIExpression()) #8, !dbg !106
  %20 = add nsw i32 %19, -1, !dbg !109
  call void @llvm.dbg.value(metadata i32 %20, metadata !97, metadata !DIExpression()) #8, !dbg !106
  call void @llvm.dbg.value(metadata i32 0, metadata !98, metadata !DIExpression()) #8, !dbg !106
  %21 = icmp sgt i32 %19, 0, !dbg !109
  br i1 %21, label %22, label %154, !dbg !109

22:                                               ; preds = %10
  %23 = bitcast i32* %13 to i8*, !dbg !109
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %23) #8, !dbg !109, !noalias !81
  call void @llvm.dbg.value(metadata i32 0, metadata !99, metadata !DIExpression()) #8, !dbg !106
  store i32 0, i32* %13, align 4, !dbg !110, !tbaa !46, !noalias !81
  %24 = bitcast i32* %14 to i8*, !dbg !109
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #8, !dbg !109, !noalias !81
  call void @llvm.dbg.value(metadata i32 %20, metadata !100, metadata !DIExpression()) #8, !dbg !106
  store i32 %20, i32* %14, align 4, !dbg !110, !tbaa !46, !noalias !81
  %25 = bitcast i32* %15 to i8*, !dbg !109
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #8, !dbg !109, !noalias !81
  call void @llvm.dbg.value(metadata i32 1, metadata !101, metadata !DIExpression()) #8, !dbg !106
  store i32 1, i32* %15, align 4, !dbg !110, !tbaa !46, !noalias !81
  %26 = bitcast i32* %16 to i8*, !dbg !109
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #8, !dbg !109, !noalias !81
  call void @llvm.dbg.value(metadata i32 0, metadata !102, metadata !DIExpression()) #8, !dbg !106
  store i32 0, i32* %16, align 4, !dbg !110, !tbaa !46, !noalias !81
  %27 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %17, i64 0, i32 4, !dbg !109
  store i8* getelementptr inbounds ([97 x i8], [97 x i8]* @1, i64 0, i64 0), i8** %27, align 8, !dbg !109, !tbaa !55, !noalias !81
  %28 = load i32, i32* %0, align 4, !dbg !109, !tbaa !46, !alias.scope !81
  call void @llvm.dbg.value(metadata i32* %13, metadata !99, metadata !DIExpression(DW_OP_deref)) #8, !dbg !106
  call void @llvm.dbg.value(metadata i32* %14, metadata !100, metadata !DIExpression(DW_OP_deref)) #8, !dbg !106
  call void @llvm.dbg.value(metadata i32* %15, metadata !101, metadata !DIExpression(DW_OP_deref)) #8, !dbg !106
  call void @llvm.dbg.value(metadata i32* %16, metadata !102, metadata !DIExpression(DW_OP_deref)) #8, !dbg !106
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull %17, i32 %28, i32 34, i32* nonnull %16, i32* nonnull %13, i32* nonnull %14, i32* nonnull %15, i32 1, i32 1) #8, !dbg !109, !noalias !81
  %29 = load i32, i32* %14, align 4, !dbg !110, !tbaa !46, !noalias !81
  call void @llvm.dbg.value(metadata i32 %29, metadata !100, metadata !DIExpression()) #8, !dbg !106
  %30 = icmp slt i32 %29, %19, !dbg !110
  %31 = select i1 %30, i32 %29, i32 %20, !dbg !110
  call void @llvm.dbg.value(metadata i32 %31, metadata !100, metadata !DIExpression()) #8, !dbg !106
  store i32 %31, i32* %14, align 4, !dbg !110, !tbaa !46, !noalias !81
  %32 = load i32, i32* %13, align 4, !dbg !110, !tbaa !46, !noalias !81
  call void @llvm.dbg.value(metadata i32 %32, metadata !99, metadata !DIExpression()) #8, !dbg !106
  call void @llvm.dbg.value(metadata i32 %32, metadata !96, metadata !DIExpression()) #8, !dbg !106
  call void @llvm.dbg.value(metadata i32 %31, metadata !100, metadata !DIExpression()) #8, !dbg !106
  %33 = icmp sgt i32 %32, %31, !dbg !109
  br i1 %33, label %153, label %34, !dbg !109

34:                                               ; preds = %22
  %35 = load double*, double** %3, align 8, !dbg !111, !tbaa !52, !noalias !81
  %36 = load double*, double** %4, align 8, !dbg !111, !tbaa !52, !noalias !81
  %37 = load i32, i32* %2, align 4, !dbg !112, !noalias !81
  %38 = icmp sgt i32 %37, 0, !dbg !112
  %39 = load [8000 x double]*, [8000 x double]** %5, align 8, !dbg !114, !noalias !81
  %40 = load double*, double** %6, align 8, !dbg !114, !noalias !81
  %41 = load [8000 x double]*, [8000 x double]** %7, align 8, !dbg !114, !noalias !81
  %42 = sext i32 %32 to i64, !dbg !116
  %43 = sext i32 %31 to i64, !dbg !116
  br i1 %38, label %109, label %44, !dbg !109

44:                                               ; preds = %34
  %45 = icmp sgt i64 %43, %42, !dbg !116
  %46 = select i1 %45, i64 %43, i64 %42, !dbg !116
  %47 = add nsw i64 %46, 1, !dbg !116
  %48 = sub nsw i64 %47, %42, !dbg !116
  %49 = icmp ult i64 %48, 2, !dbg !116
  br i1 %49, label %50, label %52, !dbg !116

50:                                               ; preds = %107, %52, %44
  %51 = phi i64 [ %42, %52 ], [ %42, %44 ], [ %85, %107 ]
  br label %141, !dbg !116

52:                                               ; preds = %44
  %53 = getelementptr double, double* %35, i64 %42, !dbg !116
  %54 = bitcast double* %53 to i8*
  %55 = icmp sgt i64 %43, %42, !dbg !116
  %56 = select i1 %55, i64 %43, i64 %42, !dbg !116
  %57 = add nsw i64 %56, 1, !dbg !116
  %58 = getelementptr double, double* %35, i64 %57, !dbg !116
  %59 = getelementptr double, double* %36, i64 %42, !dbg !116
  %60 = bitcast double* %59 to i8*
  %61 = getelementptr double, double* %36, i64 %57, !dbg !116
  %62 = getelementptr i8, i8* %11, i64 1, !dbg !116
  %63 = getelementptr i8, i8* %12, i64 1, !dbg !116
  %64 = icmp ult double* %53, %61, !dbg !116
  %65 = icmp ult double* %59, %58, !dbg !116
  %66 = and i1 %64, %65, !dbg !116
  %67 = icmp ugt i8* %62, %54, !dbg !116
  %68 = icmp ugt double* %58, %8, !dbg !116
  %69 = and i1 %67, %68, !dbg !116
  %70 = or i1 %66, %69, !dbg !116
  %71 = icmp ugt i8* %63, %54, !dbg !116
  %72 = icmp ugt double* %58, %9, !dbg !116
  %73 = and i1 %71, %72, !dbg !116
  %74 = or i1 %70, %73, !dbg !116
  %75 = icmp ugt i8* %62, %60, !dbg !116
  %76 = icmp ugt double* %61, %8, !dbg !116
  %77 = and i1 %75, %76, !dbg !116
  %78 = or i1 %74, %77, !dbg !116
  %79 = icmp ugt i8* %63, %60, !dbg !116
  %80 = icmp ugt double* %61, %9, !dbg !116
  %81 = and i1 %79, %80, !dbg !116
  %82 = or i1 %78, %81, !dbg !116
  br i1 %82, label %50, label %83, !dbg !116

83:                                               ; preds = %52
  %84 = and i64 %48, -2, !dbg !116
  %85 = add nsw i64 %84, %42, !dbg !116
  %86 = load double, double* %8, align 8, !dbg !111, !tbaa !50, !alias.scope !117, !noalias !81
  %87 = insertelement <2 x double> undef, double %86, i32 0, !dbg !111
  %88 = shufflevector <2 x double> %87, <2 x double> undef, <2 x i32> zeroinitializer, !dbg !111
  %89 = load double, double* %9, align 8, !dbg !111, !tbaa !50, !alias.scope !120, !noalias !81
  %90 = insertelement <2 x double> undef, double %89, i32 0
  %91 = fmul <2 x double> %90, <double 0.000000e+00, double undef>
  %92 = shufflevector <2 x double> %91, <2 x double> undef, <2 x i32> zeroinitializer
  br label %93, !dbg !116

93:                                               ; preds = %93, %83
  %94 = phi i64 [ 0, %83 ], [ %105, %93 ]
  %95 = add i64 %94, %42
  %96 = getelementptr inbounds double, double* %35, i64 %95, !dbg !122
  %97 = bitcast double* %96 to <2 x double>*, !dbg !123
  store <2 x double> zeroinitializer, <2 x double>* %97, align 8, !dbg !123, !tbaa !50, !alias.scope !124, !noalias !126
  %98 = getelementptr inbounds double, double* %36, i64 %95, !dbg !128
  %99 = bitcast double* %98 to <2 x double>*, !dbg !129
  store <2 x double> zeroinitializer, <2 x double>* %99, align 8, !dbg !129, !tbaa !50, !alias.scope !130, !noalias !131
  %100 = bitcast double* %96 to <2 x double>*, !dbg !132
  %101 = load <2 x double>, <2 x double>* %100, align 8, !dbg !132, !tbaa !50, !alias.scope !124, !noalias !126
  %102 = fmul <2 x double> %88, %101
  %103 = fadd <2 x double> %102, %92, !dbg !133
  %104 = bitcast double* %98 to <2 x double>*, !dbg !134
  store <2 x double> %103, <2 x double>* %104, align 8, !dbg !134, !tbaa !50, !alias.scope !130, !noalias !131
  %105 = add i64 %94, 2
  %106 = icmp eq i64 %105, %84
  br i1 %106, label %107, label %93, !llvm.loop !135

107:                                              ; preds = %93
  %108 = icmp eq i64 %48, %84, !dbg !109
  br i1 %108, label %153, label %50, !dbg !109

109:                                              ; preds = %34
  %110 = zext i32 %37 to i64, !dbg !112
  br label %111, !dbg !116

111:                                              ; preds = %132, %109
  %112 = phi i64 [ %42, %109 ], [ %139, %132 ]
  call void @llvm.dbg.value(metadata i64 %112, metadata !96, metadata !DIExpression()) #8, !dbg !106
  call void @llvm.dbg.value(metadata i64 %112, metadata !98, metadata !DIExpression()) #8, !dbg !106
  %113 = getelementptr inbounds double, double* %35, i64 %112, !dbg !122
  store double 0.000000e+00, double* %113, align 8, !dbg !123, !tbaa !50, !noalias !81
  %114 = getelementptr inbounds double, double* %36, i64 %112, !dbg !128
  store double 0.000000e+00, double* %114, align 8, !dbg !129, !tbaa !50, !noalias !81
  call void @llvm.dbg.value(metadata i32 0, metadata !103, metadata !DIExpression()) #8, !dbg !138
  br label %115, !dbg !139

115:                                              ; preds = %115, %111
  %116 = phi i64 [ 0, %111 ], [ %130, %115 ]
  call void @llvm.dbg.value(metadata i64 %116, metadata !103, metadata !DIExpression()) #8, !dbg !138
  %117 = getelementptr inbounds [8000 x double], [8000 x double]* %39, i64 %112, i64 %116, !dbg !140
  %118 = load double, double* %117, align 8, !dbg !140, !tbaa !50, !noalias !81
  %119 = getelementptr inbounds double, double* %40, i64 %116, !dbg !141
  %120 = load double, double* %119, align 8, !dbg !141, !tbaa !50, !noalias !81
  %121 = fmul double %118, %120, !dbg !142
  %122 = load double, double* %113, align 8, !dbg !143, !tbaa !50, !noalias !81
  %123 = fadd double %122, %121, !dbg !143
  store double %123, double* %113, align 8, !dbg !143, !tbaa !50, !noalias !81
  %124 = getelementptr inbounds [8000 x double], [8000 x double]* %41, i64 %112, i64 %116, !dbg !144
  %125 = load double, double* %124, align 8, !dbg !144, !tbaa !50, !noalias !81
  %126 = load double, double* %119, align 8, !dbg !145, !tbaa !50, !noalias !81
  %127 = fmul double %125, %126, !dbg !146
  %128 = load double, double* %114, align 8, !dbg !147, !tbaa !50, !noalias !81
  %129 = fadd double %128, %127, !dbg !147
  store double %129, double* %114, align 8, !dbg !147, !tbaa !50, !noalias !81
  %130 = add nuw nsw i64 %116, 1, !dbg !148
  call void @llvm.dbg.value(metadata i64 %130, metadata !103, metadata !DIExpression()) #8, !dbg !138
  %131 = icmp eq i64 %130, %110, !dbg !149
  br i1 %131, label %132, label %115, !dbg !139, !llvm.loop !150

132:                                              ; preds = %115
  %133 = load double, double* %8, align 8, !dbg !152, !tbaa !50, !noalias !81
  %134 = load double, double* %113, align 8, !dbg !132, !tbaa !50, !noalias !81
  %135 = fmul double %133, %134, !dbg !153
  %136 = load double, double* %9, align 8, !dbg !154, !tbaa !50, !noalias !81
  %137 = fmul double %129, %136, !dbg !155
  %138 = fadd double %135, %137, !dbg !133
  store double %138, double* %114, align 8, !dbg !134, !tbaa !50, !noalias !81
  %139 = add nsw i64 %112, 1, !dbg !109
  call void @llvm.dbg.value(metadata i64 %139, metadata !96, metadata !DIExpression()) #8, !dbg !106
  call void @llvm.dbg.value(metadata i32 %31, metadata !100, metadata !DIExpression()) #8, !dbg !106
  %140 = icmp slt i64 %112, %43, !dbg !109
  br i1 %140, label %111, label %153, !dbg !109, !llvm.loop !156

141:                                              ; preds = %50, %141
  %142 = phi i64 [ %151, %141 ], [ %51, %50 ]
  call void @llvm.dbg.value(metadata i64 %142, metadata !96, metadata !DIExpression()) #8, !dbg !106
  call void @llvm.dbg.value(metadata i64 %142, metadata !98, metadata !DIExpression()) #8, !dbg !106
  %143 = getelementptr inbounds double, double* %35, i64 %142, !dbg !122
  store double 0.000000e+00, double* %143, align 8, !dbg !123, !tbaa !50, !noalias !81
  %144 = getelementptr inbounds double, double* %36, i64 %142, !dbg !128
  store double 0.000000e+00, double* %144, align 8, !dbg !129, !tbaa !50, !noalias !81
  call void @llvm.dbg.value(metadata i32 0, metadata !103, metadata !DIExpression()) #8, !dbg !138
  %145 = load double, double* %8, align 8, !dbg !152, !tbaa !50, !noalias !81
  %146 = load double, double* %143, align 8, !dbg !132, !tbaa !50, !noalias !81
  %147 = fmul double %145, %146, !dbg !153
  %148 = load double, double* %9, align 8, !dbg !154, !tbaa !50, !noalias !81
  %149 = fmul double %148, 0.000000e+00, !dbg !155
  %150 = fadd double %147, %149, !dbg !133
  store double %150, double* %144, align 8, !dbg !134, !tbaa !50, !noalias !81
  %151 = add nsw i64 %142, 1, !dbg !109
  call void @llvm.dbg.value(metadata i64 %151, metadata !96, metadata !DIExpression()) #8, !dbg !106
  call void @llvm.dbg.value(metadata i32 %31, metadata !100, metadata !DIExpression()) #8, !dbg !106
  %152 = icmp slt i64 %142, %43, !dbg !109
  br i1 %152, label %141, label %153, !dbg !109, !llvm.loop !157

153:                                              ; preds = %141, %132, %107, %22
  store i8* getelementptr inbounds ([98 x i8], [98 x i8]* @2, i64 0, i64 0), i8** %27, align 8, !dbg !116, !tbaa !55, !noalias !81
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull %17, i32 %28) #8, !dbg !116, !noalias !81
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #8, !dbg !116, !noalias !81
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #8, !dbg !116, !noalias !81
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #8, !dbg !116, !noalias !81
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %23) #8, !dbg !116, !noalias !81
  br label %154, !dbg !116

154:                                              ; preds = %10, %153
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %18), !dbg !158
  ret void, !dbg !159
}

declare !callback !160 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr

; Function Attrs: nounwind uwtable
define internal void @kernel_gesummv(i32 %0, double %1, double %2, [8000 x double]* %3, [8000 x double]* %4, double* %5, double* %6, double* %7) #0 !dbg !162 {
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca [8000 x double]*, align 8
  %13 = alloca [8000 x double]*, align 8
  %14 = alloca double*, align 8
  %15 = alloca double*, align 8
  %16 = alloca double*, align 8
  %17 = alloca %struct.ident_t, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !164, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.value(metadata double %1, metadata !165, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.value(metadata double %2, metadata !166, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.value(metadata [8000 x double]* %3, metadata !167, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.value(metadata [8000 x double]* %4, metadata !168, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.value(metadata double* %5, metadata !169, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.value(metadata double* %6, metadata !170, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.value(metadata double* %7, metadata !171, metadata !DIExpression()), !dbg !172
  tail call void (...) @polybench_timer_start() #8, !dbg !173
  %18 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18)
  %19 = bitcast double* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19)
  %20 = bitcast double* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %20)
  %21 = bitcast [8000 x double]** %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %21)
  %22 = bitcast [8000 x double]** %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %22)
  %23 = bitcast double** %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23)
  %24 = bitcast double** %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %24)
  %25 = bitcast double** %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %25)
  %26 = bitcast %struct.ident_t* %17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %26)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %26, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @3 to i8*), i64 16, i1 false) #8
  call void @llvm.dbg.value(metadata i32 %0, metadata !37, metadata !DIExpression()) #8, !dbg !174
  store i32 %0, i32* %9, align 4, !tbaa !46
  call void @llvm.dbg.value(metadata double %1, metadata !38, metadata !DIExpression()) #8, !dbg !174
  store double %1, double* %10, align 8, !tbaa !50
  call void @llvm.dbg.value(metadata double %2, metadata !39, metadata !DIExpression()) #8, !dbg !174
  store double %2, double* %11, align 8, !tbaa !50
  call void @llvm.dbg.value(metadata [8000 x double]* %3, metadata !40, metadata !DIExpression()) #8, !dbg !174
  store [8000 x double]* %3, [8000 x double]** %12, align 8, !tbaa !52
  call void @llvm.dbg.value(metadata [8000 x double]* %4, metadata !41, metadata !DIExpression()) #8, !dbg !174
  store [8000 x double]* %4, [8000 x double]** %13, align 8, !tbaa !52
  call void @llvm.dbg.value(metadata double* %5, metadata !42, metadata !DIExpression()) #8, !dbg !174
  store double* %5, double** %14, align 8, !tbaa !52
  call void @llvm.dbg.value(metadata double* %6, metadata !43, metadata !DIExpression()) #8, !dbg !174
  store double* %6, double** %15, align 8, !tbaa !52
  call void @llvm.dbg.value(metadata double* %7, metadata !44, metadata !DIExpression()) #8, !dbg !174
  store double* %7, double** %16, align 8, !tbaa !52
  %27 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %17, i64 0, i32 4, !dbg !176
  store i8* getelementptr inbounds ([97 x i8], [97 x i8]* @1, i64 0, i64 0), i8** %27, align 8, !dbg !176, !tbaa !55
  call void @llvm.dbg.value(metadata i32* %9, metadata !37, metadata !DIExpression(DW_OP_deref)) #8, !dbg !174
  call void @llvm.dbg.value(metadata double* %10, metadata !38, metadata !DIExpression(DW_OP_deref)) #8, !dbg !174
  call void @llvm.dbg.value(metadata double* %11, metadata !39, metadata !DIExpression(DW_OP_deref)) #8, !dbg !174
  call void @llvm.dbg.value(metadata [8000 x double]** %12, metadata !40, metadata !DIExpression(DW_OP_deref)) #8, !dbg !174
  call void @llvm.dbg.value(metadata [8000 x double]** %13, metadata !41, metadata !DIExpression(DW_OP_deref)) #8, !dbg !174
  call void @llvm.dbg.value(metadata double** %14, metadata !42, metadata !DIExpression(DW_OP_deref)) #8, !dbg !174
  call void @llvm.dbg.value(metadata double** %15, metadata !43, metadata !DIExpression(DW_OP_deref)) #8, !dbg !174
  call void @llvm.dbg.value(metadata double** %16, metadata !44, metadata !DIExpression(DW_OP_deref)) #8, !dbg !174
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %17, i32 8, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, double**, double**, [8000 x double]**, double**, [8000 x double]**, double*, double*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %9, double** nonnull %14, double** nonnull %16, [8000 x double]** nonnull %12, double** nonnull %15, [8000 x double]** nonnull %13, double* nonnull %10, double* nonnull %11) #8, !dbg !176
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18), !dbg !177
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19), !dbg !177
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %20), !dbg !177
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21), !dbg !177
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22), !dbg !177
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23), !dbg !177
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %24), !dbg !177
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %25), !dbg !177
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %26), !dbg !177
  call void (...) @polybench_timer_stop() #8, !dbg !178
  call void (...) @polybench_timer_print() #8, !dbg !179
  ret void, !dbg !180
}

declare !dbg !4 dso_local void @polybench_timer_start(...) local_unnamed_addr #3

declare !dbg !8 dso_local void @polybench_timer_stop(...) local_unnamed_addr #3

declare !dbg !9 dso_local void @polybench_timer_print(...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %0, i8** nocapture readonly %1) local_unnamed_addr #0 !dbg !181 {
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca [8000 x double]*, align 8
  %7 = alloca [8000 x double]*, align 8
  %8 = alloca double*, align 8
  %9 = alloca double*, align 8
  %10 = alloca double*, align 8
  %11 = alloca %struct.ident_t, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !188, metadata !DIExpression()), !dbg !198
  call void @llvm.dbg.value(metadata i8** %1, metadata !189, metadata !DIExpression()), !dbg !198
  call void @llvm.dbg.value(metadata i32 8000, metadata !190, metadata !DIExpression()), !dbg !198
  %12 = tail call i8* @polybench_alloc_data(i64 64000000, i32 8) #8, !dbg !199
  call void @llvm.dbg.value(metadata i8* %12, metadata !193, metadata !DIExpression()), !dbg !198
  %13 = tail call i8* @polybench_alloc_data(i64 64000000, i32 8) #8, !dbg !200
  call void @llvm.dbg.value(metadata i8* %13, metadata !194, metadata !DIExpression()), !dbg !198
  %14 = tail call i8* @polybench_alloc_data(i64 8000, i32 8) #8, !dbg !201
  call void @llvm.dbg.value(metadata i8* %14, metadata !195, metadata !DIExpression()), !dbg !198
  %15 = tail call i8* @polybench_alloc_data(i64 8000, i32 8) #8, !dbg !202
  call void @llvm.dbg.value(metadata i8* %15, metadata !196, metadata !DIExpression()), !dbg !198
  %16 = tail call i8* @polybench_alloc_data(i64 8000, i32 8) #8, !dbg !203
  call void @llvm.dbg.value(metadata i8* %16, metadata !197, metadata !DIExpression()), !dbg !198
  %17 = bitcast i8* %12 to [8000 x double]*, !dbg !204
  %18 = bitcast i8* %13 to [8000 x double]*, !dbg !205
  %19 = bitcast i8* %15 to double*, !dbg !206
  call void @llvm.dbg.value(metadata i32 8000, metadata !207, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.value(metadata [8000 x double]* %17, metadata !214, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.value(metadata [8000 x double]* %18, metadata !215, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.value(metadata double* %19, metadata !216, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.value(metadata i32 0, metadata !217, metadata !DIExpression()), !dbg !219
  br label %20, !dbg !221

20:                                               ; preds = %43, %2
  %21 = phi i64 [ 0, %2 ], [ %44, %43 ]
  call void @llvm.dbg.value(metadata i64 %21, metadata !217, metadata !DIExpression()), !dbg !219
  %22 = trunc i64 %21 to i32, !dbg !223
  %23 = sitofp i32 %22 to double, !dbg !223
  %24 = fdiv double %23, 8.000000e+03, !dbg !226
  %25 = getelementptr inbounds double, double* %19, i64 %21, !dbg !227
  store double %24, double* %25, align 8, !dbg !228, !tbaa !50
  call void @llvm.dbg.value(metadata i32 0, metadata !218, metadata !DIExpression()), !dbg !219
  br label %26, !dbg !229

26:                                               ; preds = %26, %20
  %27 = phi i64 [ 0, %20 ], [ %41, %26 ]
  call void @llvm.dbg.value(metadata i64 %27, metadata !218, metadata !DIExpression()), !dbg !219
  %28 = trunc i64 %27 to i32, !dbg !231
  %29 = sitofp i32 %28 to double, !dbg !231
  %30 = fmul double %23, %29, !dbg !234
  %31 = fdiv double %30, 8.000000e+03, !dbg !235
  %32 = getelementptr inbounds [8000 x double], [8000 x double]* %17, i64 %21, i64 %27, !dbg !236
  store double %31, double* %32, align 8, !dbg !237, !tbaa !50
  %33 = getelementptr inbounds [8000 x double], [8000 x double]* %18, i64 %21, i64 %27, !dbg !238
  store double %31, double* %33, align 8, !dbg !239, !tbaa !50
  %34 = or i64 %27, 1, !dbg !240
  call void @llvm.dbg.value(metadata i64 %34, metadata !218, metadata !DIExpression()), !dbg !219
  %35 = trunc i64 %34 to i32, !dbg !231
  %36 = sitofp i32 %35 to double, !dbg !231
  %37 = fmul double %23, %36, !dbg !234
  %38 = fdiv double %37, 8.000000e+03, !dbg !235
  %39 = getelementptr inbounds [8000 x double], [8000 x double]* %17, i64 %21, i64 %34, !dbg !236
  store double %38, double* %39, align 8, !dbg !237, !tbaa !50
  %40 = getelementptr inbounds [8000 x double], [8000 x double]* %18, i64 %21, i64 %34, !dbg !238
  store double %38, double* %40, align 8, !dbg !239, !tbaa !50
  %41 = add nuw nsw i64 %27, 2, !dbg !240
  call void @llvm.dbg.value(metadata i64 %41, metadata !218, metadata !DIExpression()), !dbg !219
  %42 = icmp eq i64 %41, 8000, !dbg !241
  br i1 %42, label %43, label %26, !dbg !229, !llvm.loop !242

43:                                               ; preds = %26
  %44 = add nuw nsw i64 %21, 1, !dbg !244
  call void @llvm.dbg.value(metadata i64 %44, metadata !217, metadata !DIExpression()), !dbg !219
  %45 = icmp eq i64 %44, 8000, !dbg !245
  br i1 %45, label %46, label %20, !dbg !221, !llvm.loop !246

46:                                               ; preds = %43
  call void @llvm.dbg.value(metadata double 4.353200e+04, metadata !191, metadata !DIExpression()), !dbg !198
  call void @llvm.dbg.value(metadata double 1.231300e+04, metadata !192, metadata !DIExpression()), !dbg !198
  %47 = bitcast i8* %16 to double*, !dbg !248
  call void @llvm.dbg.value(metadata i32 8000, metadata !164, metadata !DIExpression()) #8, !dbg !249
  call void @llvm.dbg.value(metadata double 4.353200e+04, metadata !165, metadata !DIExpression()) #8, !dbg !249
  call void @llvm.dbg.value(metadata double 1.231300e+04, metadata !166, metadata !DIExpression()) #8, !dbg !249
  call void @llvm.dbg.value(metadata [8000 x double]* %17, metadata !167, metadata !DIExpression()) #8, !dbg !249
  call void @llvm.dbg.value(metadata [8000 x double]* %18, metadata !168, metadata !DIExpression()) #8, !dbg !249
  call void @llvm.dbg.value(metadata i8* %14, metadata !169, metadata !DIExpression()) #8, !dbg !249
  call void @llvm.dbg.value(metadata double* %19, metadata !170, metadata !DIExpression()) #8, !dbg !249
  call void @llvm.dbg.value(metadata double* %47, metadata !171, metadata !DIExpression()) #8, !dbg !249
  tail call void (...) @polybench_timer_start() #8, !dbg !251
  %48 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %48) #8
  %49 = bitcast double* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %49) #8
  %50 = bitcast double* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %50) #8
  %51 = bitcast [8000 x double]** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %51) #8
  %52 = bitcast [8000 x double]** %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %52) #8
  %53 = bitcast double** %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %53) #8
  %54 = bitcast double** %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %54) #8
  %55 = bitcast double** %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %55) #8
  %56 = bitcast %struct.ident_t* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %56) #8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %56, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @3 to i8*), i64 16, i1 false) #8
  call void @llvm.dbg.value(metadata i32 8000, metadata !37, metadata !DIExpression()) #8, !dbg !252
  store i32 8000, i32* %3, align 4, !tbaa !46
  call void @llvm.dbg.value(metadata double 4.353200e+04, metadata !38, metadata !DIExpression()) #8, !dbg !252
  store double 4.353200e+04, double* %4, align 8, !tbaa !50
  call void @llvm.dbg.value(metadata double 1.231300e+04, metadata !39, metadata !DIExpression()) #8, !dbg !252
  store double 1.231300e+04, double* %5, align 8, !tbaa !50
  call void @llvm.dbg.value(metadata [8000 x double]* %17, metadata !40, metadata !DIExpression()) #8, !dbg !252
  %57 = bitcast [8000 x double]** %6 to i8**
  store i8* %12, i8** %57, align 8, !tbaa !52
  call void @llvm.dbg.value(metadata [8000 x double]* %18, metadata !41, metadata !DIExpression()) #8, !dbg !252
  %58 = bitcast [8000 x double]** %7 to i8**
  store i8* %13, i8** %58, align 8, !tbaa !52
  call void @llvm.dbg.value(metadata i8* %14, metadata !42, metadata !DIExpression()) #8, !dbg !252
  %59 = bitcast double** %8 to i8**
  store i8* %14, i8** %59, align 8, !tbaa !52
  call void @llvm.dbg.value(metadata double* %19, metadata !43, metadata !DIExpression()) #8, !dbg !252
  %60 = bitcast double** %9 to i8**
  store i8* %15, i8** %60, align 8, !tbaa !52
  call void @llvm.dbg.value(metadata double* %47, metadata !44, metadata !DIExpression()) #8, !dbg !252
  %61 = bitcast double** %10 to i8**
  store i8* %16, i8** %61, align 8, !tbaa !52
  %62 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %11, i64 0, i32 4, !dbg !254
  store i8* getelementptr inbounds ([97 x i8], [97 x i8]* @1, i64 0, i64 0), i8** %62, align 8, !dbg !254, !tbaa !55
  call void @llvm.dbg.value(metadata i32* %3, metadata !37, metadata !DIExpression(DW_OP_deref)) #8, !dbg !252
  call void @llvm.dbg.value(metadata double* %4, metadata !38, metadata !DIExpression(DW_OP_deref)) #8, !dbg !252
  call void @llvm.dbg.value(metadata double* %5, metadata !39, metadata !DIExpression(DW_OP_deref)) #8, !dbg !252
  call void @llvm.dbg.value(metadata [8000 x double]** %6, metadata !40, metadata !DIExpression(DW_OP_deref)) #8, !dbg !252
  call void @llvm.dbg.value(metadata [8000 x double]** %7, metadata !41, metadata !DIExpression(DW_OP_deref)) #8, !dbg !252
  call void @llvm.dbg.value(metadata double** %8, metadata !42, metadata !DIExpression(DW_OP_deref)) #8, !dbg !252
  call void @llvm.dbg.value(metadata double** %9, metadata !43, metadata !DIExpression(DW_OP_deref)) #8, !dbg !252
  call void @llvm.dbg.value(metadata double** %10, metadata !44, metadata !DIExpression(DW_OP_deref)) #8, !dbg !252
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %11, i32 8, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, double**, double**, [8000 x double]**, double**, [8000 x double]**, double*, double*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %3, double** nonnull %8, double** nonnull %10, [8000 x double]** nonnull %6, double** nonnull %9, [8000 x double]** nonnull %7, double* nonnull %4, double* nonnull %5) #8, !dbg !254
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %48) #8, !dbg !255
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %49) #8, !dbg !255
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %50) #8, !dbg !255
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %51) #8, !dbg !255
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %52) #8, !dbg !255
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %53) #8, !dbg !255
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %54) #8, !dbg !255
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %55) #8, !dbg !255
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %56) #8, !dbg !255
  call void (...) @polybench_timer_stop() #8, !dbg !256
  call void (...) @polybench_timer_print() #8, !dbg !257
  %63 = icmp sgt i32 %0, 42, !dbg !258
  br i1 %63, label %64, label %85, !dbg !258

64:                                               ; preds = %46
  %65 = load i8*, i8** %1, align 8, !dbg !258, !tbaa !52
  %66 = load i8, i8* %65, align 1, !dbg !258
  %67 = icmp eq i8 %66, 0, !dbg !258
  br i1 %67, label %68, label %85, !dbg !260

68:                                               ; preds = %64, %81
  %69 = phi i64 [ %82, %81 ], [ 0, %64 ]
  %70 = phi i32 [ %83, %81 ], [ 0, %64 ]
  call void @llvm.dbg.value(metadata i64 %69, metadata !261, metadata !DIExpression()) #8, !dbg !268
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !270, !tbaa !52
  %72 = getelementptr inbounds double, double* %47, i64 %69, !dbg !274
  %73 = load double, double* %72, align 8, !dbg !274, !tbaa !50
  %74 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), double %73) #9, !dbg !275
  %75 = trunc i32 %70 to i16, !dbg !276
  %76 = urem i16 %75, 20, !dbg !276
  %77 = icmp eq i16 %76, 0, !dbg !278
  br i1 %77, label %78, label %81, !dbg !279

78:                                               ; preds = %68
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !280, !tbaa !52
  %80 = call i32 @fputc(i32 10, %struct._IO_FILE* %79) #9, !dbg !281
  br label %81, !dbg !281

81:                                               ; preds = %78, %68
  %82 = add nuw nsw i64 %69, 1, !dbg !282
  %83 = add nuw nsw i32 %70, 1, !dbg !282
  call void @llvm.dbg.value(metadata i64 %82, metadata !261, metadata !DIExpression()) #8, !dbg !268
  %84 = icmp eq i64 %82, 8000, !dbg !283
  br i1 %84, label %85, label %68, !dbg !284, !llvm.loop !285

85:                                               ; preds = %81, %64, %46
  call void @free(i8* %12) #8, !dbg !287
  call void @free(i8* %13) #8, !dbg !288
  call void @free(i8* %14) #8, !dbg !289
  call void @free(i8* %15) #8, !dbg !290
  call void @free(i8* %16) #8, !dbg !291
  ret i32 0, !dbg !292
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
!1 = !DIFile(filename: "../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/gesummv/gesummv.c", directory: "/WAVE/users/unix/klor/ycho_lab/kimsong_lor/autotuning_tools/scripts")
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
!32 = distinct !DISubprogram(name: "kernel_p1", scope: !1, file: !1, line: 61, type: !33, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !36)
!33 = !DISubroutineType(types: !34)
!34 = !{null, !20, !12, !12, !21, !21, !35, !35, !35}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!36 = !{!37, !38, !39, !40, !41, !42, !43, !44}
!37 = !DILocalVariable(name: "n", arg: 1, scope: !32, file: !1, line: 61, type: !20)
!38 = !DILocalVariable(name: "alpha", arg: 2, scope: !32, file: !1, line: 61, type: !12)
!39 = !DILocalVariable(name: "beta", arg: 3, scope: !32, file: !1, line: 61, type: !12)
!40 = !DILocalVariable(name: "A", arg: 4, scope: !32, file: !1, line: 62, type: !21)
!41 = !DILocalVariable(name: "B", arg: 5, scope: !32, file: !1, line: 63, type: !21)
!42 = !DILocalVariable(name: "tmp", arg: 6, scope: !32, file: !1, line: 64, type: !35)
!43 = !DILocalVariable(name: "x", arg: 7, scope: !32, file: !1, line: 65, type: !35)
!44 = !DILocalVariable(name: "y", arg: 8, scope: !32, file: !1, line: 66, type: !35)
!45 = !DILocation(line: 0, scope: !32)
!46 = !{!47, !47, i64 0}
!47 = !{!"int", !48, i64 0}
!48 = !{!"omnipotent char", !49, i64 0}
!49 = !{!"Simple C/C++ TBAA"}
!50 = !{!51, !51, i64 0}
!51 = !{!"double", !48, i64 0}
!52 = !{!53, !53, i64 0}
!53 = !{!"any pointer", !48, i64 0}
!54 = !DILocation(line: 68, column: 1, scope: !32)
!55 = !{!56, !53, i64 16}
!56 = !{!"ident_t", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !53, i64 16}
!57 = !DILocation(line: 80, column: 1, scope: !32)
!58 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 69, type: !59, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !69)
!59 = !DISubroutineType(types: !60)
!60 = !{null, !61, !61, !65, !66, !66, !67, !66, !67, !68, !68}
!61 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!65 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !20, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !35, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !21, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!69 = !{!70, !71, !72, !73, !74, !75, !76, !77, !78, !79}
!70 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !58, type: !61, flags: DIFlagArtificial)
!71 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !58, type: !61, flags: DIFlagArtificial)
!72 = !DILocalVariable(name: "n", arg: 3, scope: !58, type: !65, flags: DIFlagArtificial)
!73 = !DILocalVariable(name: "tmp", arg: 4, scope: !58, type: !66, flags: DIFlagArtificial)
!74 = !DILocalVariable(name: "y", arg: 5, scope: !58, type: !66, flags: DIFlagArtificial)
!75 = !DILocalVariable(name: "A", arg: 6, scope: !58, type: !67, flags: DIFlagArtificial)
!76 = !DILocalVariable(name: "x", arg: 7, scope: !58, type: !66, flags: DIFlagArtificial)
!77 = !DILocalVariable(name: "B", arg: 8, scope: !58, type: !67, flags: DIFlagArtificial)
!78 = !DILocalVariable(name: "alpha", arg: 9, scope: !58, type: !68, flags: DIFlagArtificial)
!79 = !DILocalVariable(name: "beta", arg: 10, scope: !58, type: !68, flags: DIFlagArtificial)
!80 = !DILocation(line: 0, scope: !58)
!81 = !{!82}
!82 = distinct !{!82, !83, !".omp_outlined._debug__: argument 0"}
!83 = distinct !{!83, !".omp_outlined._debug__"}
!84 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !85, type: !61, flags: DIFlagArtificial)
!85 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 69, type: !59, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !86)
!86 = !{!84, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !97, !98, !99, !100, !101, !102, !98, !103}
!87 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !85, type: !61, flags: DIFlagArtificial)
!88 = !DILocalVariable(name: "n", arg: 3, scope: !85, file: !1, line: 61, type: !65)
!89 = !DILocalVariable(name: "tmp", arg: 4, scope: !85, file: !1, line: 64, type: !66)
!90 = !DILocalVariable(name: "y", arg: 5, scope: !85, file: !1, line: 66, type: !66)
!91 = !DILocalVariable(name: "A", arg: 6, scope: !85, file: !1, line: 62, type: !67)
!92 = !DILocalVariable(name: "x", arg: 7, scope: !85, file: !1, line: 65, type: !66)
!93 = !DILocalVariable(name: "B", arg: 8, scope: !85, file: !1, line: 63, type: !67)
!94 = !DILocalVariable(name: "alpha", arg: 9, scope: !85, file: !1, line: 61, type: !68)
!95 = !DILocalVariable(name: "beta", arg: 10, scope: !85, file: !1, line: 61, type: !68)
!96 = !DILocalVariable(name: ".omp.iv", scope: !85, type: !20, flags: DIFlagArtificial)
!97 = !DILocalVariable(name: ".capture_expr.", scope: !85, type: !20, flags: DIFlagArtificial)
!98 = !DILocalVariable(name: "i", scope: !85, type: !20, flags: DIFlagArtificial)
!99 = !DILocalVariable(name: ".omp.lb", scope: !85, type: !20, flags: DIFlagArtificial)
!100 = !DILocalVariable(name: ".omp.ub", scope: !85, type: !20, flags: DIFlagArtificial)
!101 = !DILocalVariable(name: ".omp.stride", scope: !85, type: !20, flags: DIFlagArtificial)
!102 = !DILocalVariable(name: ".omp.is_last", scope: !85, type: !20, flags: DIFlagArtificial)
!103 = !DILocalVariable(name: "j", scope: !104, file: !1, line: 73, type: !20)
!104 = distinct !DILexicalBlock(scope: !105, file: !1, line: 73, column: 5)
!105 = distinct !DILexicalBlock(scope: !85, file: !1, line: 70, column: 3)
!106 = !DILocation(line: 0, scope: !85, inlinedAt: !107)
!107 = distinct !DILocation(line: 69, column: 3, scope: !58)
!108 = !DILocation(line: 69, column: 23, scope: !85, inlinedAt: !107)
!109 = !DILocation(line: 69, column: 3, scope: !85, inlinedAt: !107)
!110 = !DILocation(line: 69, column: 8, scope: !85, inlinedAt: !107)
!111 = !DILocation(line: 0, scope: !105, inlinedAt: !107)
!112 = !DILocation(line: 0, scope: !113, inlinedAt: !107)
!113 = distinct !DILexicalBlock(scope: !104, file: !1, line: 73, column: 5)
!114 = !DILocation(line: 0, scope: !115, inlinedAt: !107)
!115 = distinct !DILexicalBlock(scope: !113, file: !1, line: 74, column: 5)
!116 = !DILocation(line: 68, column: 1, scope: !85, inlinedAt: !107)
!117 = !{!118}
!118 = distinct !{!118, !119}
!119 = distinct !{!119, !"LVerDomain"}
!120 = !{!121}
!121 = distinct !{!121, !119}
!122 = !DILocation(line: 71, column: 5, scope: !105, inlinedAt: !107)
!123 = !DILocation(line: 71, column: 12, scope: !105, inlinedAt: !107)
!124 = !{!125}
!125 = distinct !{!125, !119}
!126 = !{!82, !127, !118, !121}
!127 = distinct !{!127, !119}
!128 = !DILocation(line: 72, column: 5, scope: !105, inlinedAt: !107)
!129 = !DILocation(line: 72, column: 10, scope: !105, inlinedAt: !107)
!130 = !{!127}
!131 = !{!82, !118, !121}
!132 = !DILocation(line: 78, column: 20, scope: !105, inlinedAt: !107)
!133 = !DILocation(line: 78, column: 27, scope: !105, inlinedAt: !107)
!134 = !DILocation(line: 78, column: 10, scope: !105, inlinedAt: !107)
!135 = distinct !{!135, !116, !136, !137}
!136 = !DILocation(line: 68, column: 25, scope: !85, inlinedAt: !107)
!137 = !{!"llvm.loop.isvectorized", i32 1}
!138 = !DILocation(line: 0, scope: !104, inlinedAt: !107)
!139 = !DILocation(line: 73, column: 5, scope: !104, inlinedAt: !107)
!140 = !DILocation(line: 75, column: 17, scope: !115, inlinedAt: !107)
!141 = !DILocation(line: 75, column: 27, scope: !115, inlinedAt: !107)
!142 = !DILocation(line: 75, column: 25, scope: !115, inlinedAt: !107)
!143 = !DILocation(line: 75, column: 14, scope: !115, inlinedAt: !107)
!144 = !DILocation(line: 76, column: 15, scope: !115, inlinedAt: !107)
!145 = !DILocation(line: 76, column: 25, scope: !115, inlinedAt: !107)
!146 = !DILocation(line: 76, column: 23, scope: !115, inlinedAt: !107)
!147 = !DILocation(line: 76, column: 12, scope: !115, inlinedAt: !107)
!148 = !DILocation(line: 73, column: 29, scope: !113, inlinedAt: !107)
!149 = !DILocation(line: 73, column: 23, scope: !113, inlinedAt: !107)
!150 = distinct !{!150, !139, !151}
!151 = !DILocation(line: 77, column: 5, scope: !104, inlinedAt: !107)
!152 = !DILocation(line: 78, column: 12, scope: !105, inlinedAt: !107)
!153 = !DILocation(line: 78, column: 18, scope: !105, inlinedAt: !107)
!154 = !DILocation(line: 78, column: 29, scope: !105, inlinedAt: !107)
!155 = !DILocation(line: 78, column: 34, scope: !105, inlinedAt: !107)
!156 = distinct !{!156, !116, !136}
!157 = distinct !{!157, !116, !136, !137}
!158 = !DILocation(line: 79, column: 3, scope: !85, inlinedAt: !107)
!159 = !DILocation(line: 69, column: 3, scope: !58)
!160 = !{!161}
!161 = !{i64 2, i64 -1, i64 -1, i1 true}
!162 = distinct !DISubprogram(name: "kernel_gesummv", scope: !1, file: !1, line: 84, type: !33, scopeLine: 92, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !163)
!163 = !{!164, !165, !166, !167, !168, !169, !170, !171}
!164 = !DILocalVariable(name: "n", arg: 1, scope: !162, file: !1, line: 84, type: !20)
!165 = !DILocalVariable(name: "alpha", arg: 2, scope: !162, file: !1, line: 85, type: !12)
!166 = !DILocalVariable(name: "beta", arg: 3, scope: !162, file: !1, line: 86, type: !12)
!167 = !DILocalVariable(name: "A", arg: 4, scope: !162, file: !1, line: 87, type: !21)
!168 = !DILocalVariable(name: "B", arg: 5, scope: !162, file: !1, line: 88, type: !21)
!169 = !DILocalVariable(name: "tmp", arg: 6, scope: !162, file: !1, line: 89, type: !35)
!170 = !DILocalVariable(name: "x", arg: 7, scope: !162, file: !1, line: 90, type: !35)
!171 = !DILocalVariable(name: "y", arg: 8, scope: !162, file: !1, line: 91, type: !35)
!172 = !DILocation(line: 0, scope: !162)
!173 = !DILocation(line: 94, column: 3, scope: !162)
!174 = !DILocation(line: 0, scope: !32, inlinedAt: !175)
!175 = distinct !DILocation(line: 95, column: 3, scope: !162)
!176 = !DILocation(line: 68, column: 1, scope: !32, inlinedAt: !175)
!177 = !DILocation(line: 80, column: 1, scope: !32, inlinedAt: !175)
!178 = !DILocation(line: 96, column: 3, scope: !162)
!179 = !DILocation(line: 97, column: 3, scope: !162)
!180 = !DILocation(line: 99, column: 1, scope: !162)
!181 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 101, type: !182, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !187)
!182 = !DISubroutineType(types: !183)
!183 = !{!20, !20, !184}
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!187 = !{!188, !189, !190, !191, !192, !193, !194, !195, !196, !197}
!188 = !DILocalVariable(name: "argc", arg: 1, scope: !181, file: !1, line: 101, type: !20)
!189 = !DILocalVariable(name: "argv", arg: 2, scope: !181, file: !1, line: 101, type: !184)
!190 = !DILocalVariable(name: "n", scope: !181, file: !1, line: 104, type: !20)
!191 = !DILocalVariable(name: "alpha", scope: !181, file: !1, line: 107, type: !12)
!192 = !DILocalVariable(name: "beta", scope: !181, file: !1, line: 108, type: !12)
!193 = !DILocalVariable(name: "A", scope: !181, file: !1, line: 109, type: !10)
!194 = !DILocalVariable(name: "B", scope: !181, file: !1, line: 110, type: !10)
!195 = !DILocalVariable(name: "tmp", scope: !181, file: !1, line: 111, type: !21)
!196 = !DILocalVariable(name: "x", scope: !181, file: !1, line: 112, type: !21)
!197 = !DILocalVariable(name: "y", scope: !181, file: !1, line: 113, type: !21)
!198 = !DILocation(line: 0, scope: !181)
!199 = !DILocation(line: 109, column: 3, scope: !181)
!200 = !DILocation(line: 110, column: 3, scope: !181)
!201 = !DILocation(line: 111, column: 3, scope: !181)
!202 = !DILocation(line: 112, column: 3, scope: !181)
!203 = !DILocation(line: 113, column: 3, scope: !181)
!204 = !DILocation(line: 117, column: 14, scope: !181)
!205 = !DILocation(line: 118, column: 14, scope: !181)
!206 = !DILocation(line: 119, column: 14, scope: !181)
!207 = !DILocalVariable(name: "n", arg: 1, scope: !208, file: !1, line: 23, type: !20)
!208 = distinct !DISubprogram(name: "init_array", scope: !1, file: !1, line: 23, type: !209, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !211)
!209 = !DISubroutineType(types: !210)
!210 = !{null, !20, !35, !35, !21, !21, !35}
!211 = !{!207, !212, !213, !214, !215, !216, !217, !218}
!212 = !DILocalVariable(name: "alpha", arg: 2, scope: !208, file: !1, line: 24, type: !35)
!213 = !DILocalVariable(name: "beta", arg: 3, scope: !208, file: !1, line: 25, type: !35)
!214 = !DILocalVariable(name: "A", arg: 4, scope: !208, file: !1, line: 26, type: !21)
!215 = !DILocalVariable(name: "B", arg: 5, scope: !208, file: !1, line: 27, type: !21)
!216 = !DILocalVariable(name: "x", arg: 6, scope: !208, file: !1, line: 28, type: !35)
!217 = !DILocalVariable(name: "i", scope: !208, file: !1, line: 30, type: !20)
!218 = !DILocalVariable(name: "j", scope: !208, file: !1, line: 30, type: !20)
!219 = !DILocation(line: 0, scope: !208, inlinedAt: !220)
!220 = distinct !DILocation(line: 116, column: 3, scope: !181)
!221 = !DILocation(line: 34, column: 3, scope: !222, inlinedAt: !220)
!222 = distinct !DILexicalBlock(scope: !208, file: !1, line: 34, column: 3)
!223 = !DILocation(line: 36, column: 13, scope: !224, inlinedAt: !220)
!224 = distinct !DILexicalBlock(scope: !225, file: !1, line: 35, column: 3)
!225 = distinct !DILexicalBlock(scope: !222, file: !1, line: 34, column: 3)
!226 = !DILocation(line: 36, column: 27, scope: !224, inlinedAt: !220)
!227 = !DILocation(line: 36, column: 5, scope: !224, inlinedAt: !220)
!228 = !DILocation(line: 36, column: 10, scope: !224, inlinedAt: !220)
!229 = !DILocation(line: 37, column: 5, scope: !230, inlinedAt: !220)
!230 = distinct !DILexicalBlock(scope: !224, file: !1, line: 37, column: 5)
!231 = !DILocation(line: 39, column: 33, scope: !232, inlinedAt: !220)
!232 = distinct !DILexicalBlock(scope: !233, file: !1, line: 38, column: 5)
!233 = distinct !DILexicalBlock(scope: !230, file: !1, line: 37, column: 5)
!234 = !DILocation(line: 39, column: 31, scope: !232, inlinedAt: !220)
!235 = !DILocation(line: 39, column: 36, scope: !232, inlinedAt: !220)
!236 = !DILocation(line: 39, column: 7, scope: !232, inlinedAt: !220)
!237 = !DILocation(line: 39, column: 15, scope: !232, inlinedAt: !220)
!238 = !DILocation(line: 40, column: 7, scope: !232, inlinedAt: !220)
!239 = !DILocation(line: 40, column: 15, scope: !232, inlinedAt: !220)
!240 = !DILocation(line: 37, column: 25, scope: !233, inlinedAt: !220)
!241 = !DILocation(line: 37, column: 19, scope: !233, inlinedAt: !220)
!242 = distinct !{!242, !229, !243}
!243 = !DILocation(line: 41, column: 5, scope: !230, inlinedAt: !220)
!244 = !DILocation(line: 34, column: 23, scope: !225, inlinedAt: !220)
!245 = !DILocation(line: 34, column: 17, scope: !225, inlinedAt: !220)
!246 = distinct !{!246, !221, !247}
!247 = !DILocation(line: 42, column: 3, scope: !222, inlinedAt: !220)
!248 = !DILocation(line: 130, column: 18, scope: !181)
!249 = !DILocation(line: 0, scope: !162, inlinedAt: !250)
!250 = distinct !DILocation(line: 125, column: 3, scope: !181)
!251 = !DILocation(line: 94, column: 3, scope: !162, inlinedAt: !250)
!252 = !DILocation(line: 0, scope: !32, inlinedAt: !253)
!253 = distinct !DILocation(line: 95, column: 3, scope: !162, inlinedAt: !250)
!254 = !DILocation(line: 68, column: 1, scope: !32, inlinedAt: !253)
!255 = !DILocation(line: 80, column: 1, scope: !32, inlinedAt: !253)
!256 = !DILocation(line: 96, column: 3, scope: !162, inlinedAt: !250)
!257 = !DILocation(line: 97, column: 3, scope: !162, inlinedAt: !250)
!258 = !DILocation(line: 138, column: 3, scope: !259)
!259 = distinct !DILexicalBlock(scope: !181, file: !1, line: 138, column: 3)
!260 = !DILocation(line: 138, column: 3, scope: !181)
!261 = !DILocalVariable(name: "i", scope: !262, file: !1, line: 51, type: !20)
!262 = distinct !DISubprogram(name: "print_array", scope: !1, file: !1, line: 47, type: !263, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !265)
!263 = !DISubroutineType(types: !264)
!264 = !{null, !20, !35}
!265 = !{!266, !267, !261}
!266 = !DILocalVariable(name: "n", arg: 1, scope: !262, file: !1, line: 47, type: !20)
!267 = !DILocalVariable(name: "y", arg: 2, scope: !262, file: !1, line: 48, type: !35)
!268 = !DILocation(line: 0, scope: !262, inlinedAt: !269)
!269 = distinct !DILocation(line: 138, column: 3, scope: !259)
!270 = !DILocation(line: 55, column: 13, scope: !271, inlinedAt: !269)
!271 = distinct !DILexicalBlock(scope: !272, file: !1, line: 54, column: 3)
!272 = distinct !DILexicalBlock(scope: !273, file: !1, line: 53, column: 3)
!273 = distinct !DILexicalBlock(scope: !262, file: !1, line: 53, column: 3)
!274 = !DILocation(line: 55, column: 43, scope: !271, inlinedAt: !269)
!275 = !DILocation(line: 55, column: 5, scope: !271, inlinedAt: !269)
!276 = !DILocation(line: 56, column: 11, scope: !277, inlinedAt: !269)
!277 = distinct !DILexicalBlock(scope: !271, file: !1, line: 56, column: 9)
!278 = !DILocation(line: 56, column: 16, scope: !277, inlinedAt: !269)
!279 = !DILocation(line: 56, column: 9, scope: !271, inlinedAt: !269)
!280 = !DILocation(line: 57, column: 15, scope: !277, inlinedAt: !269)
!281 = !DILocation(line: 57, column: 7, scope: !277, inlinedAt: !269)
!282 = !DILocation(line: 53, column: 23, scope: !272, inlinedAt: !269)
!283 = !DILocation(line: 53, column: 17, scope: !272, inlinedAt: !269)
!284 = !DILocation(line: 53, column: 3, scope: !273, inlinedAt: !269)
!285 = distinct !{!285, !284, !286}
!286 = !DILocation(line: 58, column: 3, scope: !273, inlinedAt: !269)
!287 = !DILocation(line: 141, column: 3, scope: !181)
!288 = !DILocation(line: 142, column: 3, scope: !181)
!289 = !DILocation(line: 143, column: 3, scope: !181)
!290 = !DILocation(line: 144, column: 3, scope: !181)
!291 = !DILocation(line: 145, column: 3, scope: !181)
!292 = !DILocation(line: 147, column: 3, scope: !181)
