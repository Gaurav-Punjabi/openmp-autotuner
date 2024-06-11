; ModuleID = '../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/syrk/syrk.c'
source_filename = "../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/syrk/syrk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [91 x i8] c";../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/syrk/syrk.c;kernel_p1;60;1;;\00", align 1
@2 = private unnamed_addr constant [92 x i8] c";../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/syrk/syrk.c;kernel_p1;60;25;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant [91 x i8] c";../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/syrk/syrk.c;kernel_p2;68;1;;\00", align 1
@5 = private unnamed_addr constant [92 x i8] c";../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/syrk/syrk.c;kernel_p2;68;37;;\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@llvm.used = appending global [3 x i8*] [i8* bitcast (void (i32, double, [2000 x double]*)* @kernel_p1 to i8*), i8* bitcast (void (i32, i32, double, [2000 x double]*, [2000 x double]*)* @kernel_p2 to i8*), i8* bitcast (void (i32, i32, double, double, [2000 x double]*, [2000 x double]*)* @kernel_syrk to i8*)], section "llvm.metadata"

; Function Attrs: nounwind uwtable
define internal void @kernel_p1(i32 %0, double %1, [2000 x double]* %2) #0 !dbg !29 {
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca [2000 x double]*, align 8
  %7 = alloca %struct.ident_t, align 8
  %8 = bitcast %struct.ident_t* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %8, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @3 to i8*), i64 16, i1 false)
  call void @llvm.dbg.value(metadata i32 %0, metadata !36, metadata !DIExpression()), !dbg !39
  store i32 %0, i32* %4, align 4, !tbaa !40
  call void @llvm.dbg.value(metadata double %1, metadata !37, metadata !DIExpression()), !dbg !39
  store double %1, double* %5, align 8, !tbaa !44
  call void @llvm.dbg.value(metadata [2000 x double]* %2, metadata !38, metadata !DIExpression()), !dbg !39
  store [2000 x double]* %2, [2000 x double]** %6, align 8, !tbaa !46
  %9 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %7, i64 0, i32 4, !dbg !48
  store i8* getelementptr inbounds ([91 x i8], [91 x i8]* @1, i64 0, i64 0), i8** %9, align 8, !dbg !48, !tbaa !49
  call void @llvm.dbg.value(metadata i32* %4, metadata !36, metadata !DIExpression(DW_OP_deref)), !dbg !39
  call void @llvm.dbg.value(metadata double* %5, metadata !37, metadata !DIExpression(DW_OP_deref)), !dbg !39
  call void @llvm.dbg.value(metadata [2000 x double]** %6, metadata !38, metadata !DIExpression(DW_OP_deref)), !dbg !39
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %7, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [2000 x double]**, double*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %4, [2000 x double]** nonnull %6, double* nonnull %5) #8, !dbg !48
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
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture readonly dereferenceable(4) %2, [2000 x double]** nocapture readonly dereferenceable(8) %3, double* nocapture readonly dereferenceable(8) %4) #2 !dbg !52 {
  %6 = bitcast double* %4 to i8*
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ident_t, align 8
  call void @llvm.dbg.value(metadata i32* %0, metadata !63, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.value(metadata i32* %1, metadata !64, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.value(metadata i32* %2, metadata !65, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.value(metadata [2000 x double]** %3, metadata !66, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.value(metadata double* %4, metadata !67, metadata !DIExpression()), !dbg !68
  %12 = bitcast %struct.ident_t* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %12)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %12, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @0 to i8*), i64 24, i1 false) #8, !noalias !69
  call void @llvm.dbg.value(metadata i32* %0, metadata !72, metadata !DIExpression()) #8, !dbg !88
  call void @llvm.dbg.value(metadata i32* undef, metadata !75, metadata !DIExpression()) #8, !dbg !88
  call void @llvm.dbg.value(metadata i32* %2, metadata !76, metadata !DIExpression()) #8, !dbg !88
  call void @llvm.dbg.value(metadata [2000 x double]** %3, metadata !77, metadata !DIExpression()) #8, !dbg !88
  call void @llvm.dbg.value(metadata double* %4, metadata !78, metadata !DIExpression()) #8, !dbg !88
  %13 = load i32, i32* %2, align 4, !dbg !90, !tbaa !40, !noalias !69
  call void @llvm.dbg.value(metadata i32 %13, metadata !80, metadata !DIExpression()) #8, !dbg !88
  %14 = add nsw i32 %13, -1, !dbg !91
  call void @llvm.dbg.value(metadata i32 %14, metadata !80, metadata !DIExpression()) #8, !dbg !88
  call void @llvm.dbg.value(metadata i32 0, metadata !81, metadata !DIExpression()) #8, !dbg !88
  %15 = icmp sgt i32 %13, 0, !dbg !91
  br i1 %15, label %16, label %150, !dbg !91

16:                                               ; preds = %5
  %17 = bitcast i32* %7 to i8*, !dbg !91
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %17) #8, !dbg !91, !noalias !69
  call void @llvm.dbg.value(metadata i32 0, metadata !82, metadata !DIExpression()) #8, !dbg !88
  store i32 0, i32* %7, align 4, !dbg !92, !tbaa !40, !noalias !69
  %18 = bitcast i32* %8 to i8*, !dbg !91
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18) #8, !dbg !91, !noalias !69
  call void @llvm.dbg.value(metadata i32 %14, metadata !83, metadata !DIExpression()) #8, !dbg !88
  store i32 %14, i32* %8, align 4, !dbg !92, !tbaa !40, !noalias !69
  %19 = bitcast i32* %9 to i8*, !dbg !91
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #8, !dbg !91, !noalias !69
  call void @llvm.dbg.value(metadata i32 1, metadata !84, metadata !DIExpression()) #8, !dbg !88
  store i32 1, i32* %9, align 4, !dbg !92, !tbaa !40, !noalias !69
  %20 = bitcast i32* %10 to i8*, !dbg !91
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %20) #8, !dbg !91, !noalias !69
  call void @llvm.dbg.value(metadata i32 0, metadata !85, metadata !DIExpression()) #8, !dbg !88
  store i32 0, i32* %10, align 4, !dbg !92, !tbaa !40, !noalias !69
  %21 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %11, i64 0, i32 4, !dbg !91
  store i8* getelementptr inbounds ([91 x i8], [91 x i8]* @1, i64 0, i64 0), i8** %21, align 8, !dbg !91, !tbaa !49, !noalias !69
  %22 = load i32, i32* %0, align 4, !dbg !91, !tbaa !40, !alias.scope !69
  call void @llvm.dbg.value(metadata i32* %7, metadata !82, metadata !DIExpression(DW_OP_deref)) #8, !dbg !88
  call void @llvm.dbg.value(metadata i32* %8, metadata !83, metadata !DIExpression(DW_OP_deref)) #8, !dbg !88
  call void @llvm.dbg.value(metadata i32* %9, metadata !84, metadata !DIExpression(DW_OP_deref)) #8, !dbg !88
  call void @llvm.dbg.value(metadata i32* %10, metadata !85, metadata !DIExpression(DW_OP_deref)) #8, !dbg !88
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull %11, i32 %22, i32 34, i32* nonnull %10, i32* nonnull %7, i32* nonnull %8, i32* nonnull %9, i32 1, i32 1) #8, !dbg !91, !noalias !69
  %23 = load i32, i32* %8, align 4, !dbg !92, !tbaa !40, !noalias !69
  call void @llvm.dbg.value(metadata i32 %23, metadata !83, metadata !DIExpression()) #8, !dbg !88
  %24 = icmp slt i32 %23, %13, !dbg !92
  %25 = select i1 %24, i32 %23, i32 %14, !dbg !92
  call void @llvm.dbg.value(metadata i32 %25, metadata !83, metadata !DIExpression()) #8, !dbg !88
  store i32 %25, i32* %8, align 4, !dbg !92, !tbaa !40, !noalias !69
  %26 = load i32, i32* %7, align 4, !dbg !92, !tbaa !40, !noalias !69
  call void @llvm.dbg.value(metadata i32 %26, metadata !82, metadata !DIExpression()) #8, !dbg !88
  call void @llvm.dbg.value(metadata i32 %26, metadata !79, metadata !DIExpression()) #8, !dbg !88
  call void @llvm.dbg.value(metadata i32 %25, metadata !83, metadata !DIExpression()) #8, !dbg !88
  %27 = icmp sgt i32 %26, %25, !dbg !91
  br i1 %27, label %149, label %28, !dbg !91

28:                                               ; preds = %16
  %29 = load i32, i32* %2, align 4, !dbg !93, !noalias !69
  %30 = icmp sgt i32 %29, 0, !dbg !93
  %31 = load [2000 x double]*, [2000 x double]** %3, align 8, !dbg !93, !noalias !69
  br i1 %30, label %32, label %149, !dbg !91

32:                                               ; preds = %28
  %33 = sext i32 %26 to i64, !dbg !95
  %34 = sext i32 %25 to i64, !dbg !95
  %35 = zext i32 %29 to i64, !dbg !93
  %36 = getelementptr i8, i8* %6, i64 1, !dbg !95
  %37 = and i64 %35, 4294967292, !dbg !95
  %38 = add nsw i64 %37, -4, !dbg !95
  %39 = lshr exact i64 %38, 2, !dbg !95
  %40 = add nuw nsw i64 %39, 1, !dbg !95
  %41 = icmp ult i32 %29, 4, !dbg !96
  %42 = and i64 %35, 4294967292, !dbg !96
  %43 = and i64 %40, 1, !dbg !96
  %44 = icmp eq i64 %38, 0, !dbg !96
  %45 = sub nuw nsw i64 %40, %43, !dbg !96
  %46 = icmp eq i64 %43, 0, !dbg !93
  %47 = icmp eq i64 %42, %35, !dbg !96
  %48 = and i64 %35, 1, !dbg !96
  %49 = icmp eq i64 %48, 0, !dbg !96
  %50 = sub nsw i64 0, %35, !dbg !96
  br label %51, !dbg !95

51:                                               ; preds = %145, %32
  %52 = phi i64 [ %148, %145 ], [ 0, %32 ]
  %53 = phi i64 [ %146, %145 ], [ %33, %32 ]
  call void @llvm.dbg.value(metadata i64 %53, metadata !79, metadata !DIExpression()) #8, !dbg !88
  call void @llvm.dbg.value(metadata i32 0, metadata !86, metadata !DIExpression()) #8, !dbg !96
  %54 = add i64 %52, %33, !dbg !97
  br i1 %41, label %120, label %55, !dbg !97

55:                                               ; preds = %51
  %56 = getelementptr [2000 x double], [2000 x double]* %31, i64 %54, i64 %35, !dbg !97
  %57 = getelementptr [2000 x double], [2000 x double]* %31, i64 %54, i64 0, !dbg !97
  %58 = bitcast double* %57 to i8*
  %59 = icmp ugt i8* %36, %58, !dbg !97
  %60 = icmp ugt double* %56, %4, !dbg !97
  %61 = and i1 %59, %60, !dbg !97
  br i1 %61, label %120, label %62, !dbg !97

62:                                               ; preds = %55
  br i1 %44, label %101, label %63, !dbg !97

63:                                               ; preds = %62
  %64 = load double, double* %4, align 8, !dbg !93, !tbaa !44, !alias.scope !98, !noalias !69
  %65 = insertelement <2 x double> undef, double %64, i32 0, !dbg !93
  %66 = shufflevector <2 x double> %65, <2 x double> undef, <2 x i32> zeroinitializer, !dbg !93
  %67 = insertelement <2 x double> undef, double %64, i32 0, !dbg !93
  %68 = shufflevector <2 x double> %67, <2 x double> undef, <2 x i32> zeroinitializer, !dbg !93
  %69 = load double, double* %4, align 8, !dbg !93, !tbaa !44, !alias.scope !98, !noalias !69
  %70 = insertelement <2 x double> undef, double %69, i32 0, !dbg !93
  %71 = shufflevector <2 x double> %70, <2 x double> undef, <2 x i32> zeroinitializer, !dbg !93
  %72 = insertelement <2 x double> undef, double %69, i32 0, !dbg !93
  %73 = shufflevector <2 x double> %72, <2 x double> undef, <2 x i32> zeroinitializer, !dbg !93
  br label %74, !dbg !97

74:                                               ; preds = %74, %63
  %75 = phi i64 [ 0, %63 ], [ %98, %74 ], !dbg !101
  %76 = phi i64 [ %45, %63 ], [ %99, %74 ]
  %77 = getelementptr inbounds [2000 x double], [2000 x double]* %31, i64 %53, i64 %75, !dbg !102
  %78 = bitcast double* %77 to <2 x double>*, !dbg !103
  %79 = load <2 x double>, <2 x double>* %78, align 8, !dbg !103, !tbaa !44, !alias.scope !104, !noalias !106
  %80 = getelementptr inbounds double, double* %77, i64 2, !dbg !103
  %81 = bitcast double* %80 to <2 x double>*, !dbg !103
  %82 = load <2 x double>, <2 x double>* %81, align 8, !dbg !103, !tbaa !44, !alias.scope !104, !noalias !106
  %83 = fmul <2 x double> %66, %79, !dbg !101
  %84 = fmul <2 x double> %68, %82, !dbg !101
  %85 = bitcast double* %77 to <2 x double>*, !dbg !103
  store <2 x double> %83, <2 x double>* %85, align 8, !dbg !103, !tbaa !44, !alias.scope !104, !noalias !106
  %86 = bitcast double* %80 to <2 x double>*, !dbg !103
  store <2 x double> %84, <2 x double>* %86, align 8, !dbg !103, !tbaa !44, !alias.scope !104, !noalias !106
  %87 = or i64 %75, 4, !dbg !101
  %88 = getelementptr inbounds [2000 x double], [2000 x double]* %31, i64 %53, i64 %87, !dbg !102
  %89 = bitcast double* %88 to <2 x double>*, !dbg !103
  %90 = load <2 x double>, <2 x double>* %89, align 8, !dbg !103, !tbaa !44, !alias.scope !104, !noalias !106
  %91 = getelementptr inbounds double, double* %88, i64 2, !dbg !103
  %92 = bitcast double* %91 to <2 x double>*, !dbg !103
  %93 = load <2 x double>, <2 x double>* %92, align 8, !dbg !103, !tbaa !44, !alias.scope !104, !noalias !106
  %94 = fmul <2 x double> %71, %90, !dbg !101
  %95 = fmul <2 x double> %73, %93, !dbg !101
  %96 = bitcast double* %88 to <2 x double>*, !dbg !103
  store <2 x double> %94, <2 x double>* %96, align 8, !dbg !103, !tbaa !44, !alias.scope !104, !noalias !106
  %97 = bitcast double* %91 to <2 x double>*, !dbg !103
  store <2 x double> %95, <2 x double>* %97, align 8, !dbg !103, !tbaa !44, !alias.scope !104, !noalias !106
  %98 = add i64 %75, 8, !dbg !101
  %99 = add i64 %76, -2, !dbg !101
  %100 = icmp eq i64 %99, 0, !dbg !101
  br i1 %100, label %101, label %74, !dbg !101, !llvm.loop !107

101:                                              ; preds = %74, %62
  %102 = phi i64 [ 0, %62 ], [ %98, %74 ]
  br i1 %46, label %119, label %103, !dbg !101

103:                                              ; preds = %101
  %104 = load double, double* %4, align 8, !dbg !110, !tbaa !44, !alias.scope !98, !noalias !69
  %105 = insertelement <2 x double> undef, double %104, i32 0, !dbg !110
  %106 = shufflevector <2 x double> %105, <2 x double> undef, <2 x i32> zeroinitializer, !dbg !110
  %107 = insertelement <2 x double> undef, double %104, i32 0, !dbg !102
  %108 = shufflevector <2 x double> %107, <2 x double> undef, <2 x i32> zeroinitializer, !dbg !102
  %109 = getelementptr inbounds [2000 x double], [2000 x double]* %31, i64 %53, i64 %102, !dbg !102
  %110 = bitcast double* %109 to <2 x double>*, !dbg !103
  %111 = load <2 x double>, <2 x double>* %110, align 8, !dbg !103, !tbaa !44, !alias.scope !104, !noalias !106
  %112 = getelementptr inbounds double, double* %109, i64 2, !dbg !103
  %113 = bitcast double* %112 to <2 x double>*, !dbg !103
  %114 = load <2 x double>, <2 x double>* %113, align 8, !dbg !103, !tbaa !44, !alias.scope !104, !noalias !106
  %115 = fmul <2 x double> %106, %111, !dbg !101
  %116 = fmul <2 x double> %108, %114, !dbg !101
  %117 = bitcast double* %109 to <2 x double>*, !dbg !103
  store <2 x double> %115, <2 x double>* %117, align 8, !dbg !103, !tbaa !44, !alias.scope !104, !noalias !106
  %118 = bitcast double* %112 to <2 x double>*, !dbg !103
  store <2 x double> %116, <2 x double>* %118, align 8, !dbg !103, !tbaa !44, !alias.scope !104, !noalias !106
  br label %119, !dbg !97

119:                                              ; preds = %101, %103
  br i1 %47, label %145, label %120, !dbg !97

120:                                              ; preds = %119, %55, %51
  %121 = phi i64 [ 0, %55 ], [ 0, %51 ], [ %42, %119 ]
  %122 = xor i64 %121, -1, !dbg !97
  br i1 %49, label %129, label %123, !dbg !97

123:                                              ; preds = %120
  call void @llvm.dbg.value(metadata i64 %121, metadata !86, metadata !DIExpression()) #8, !dbg !96
  %124 = load double, double* %4, align 8, !dbg !110, !tbaa !44, !noalias !69
  %125 = getelementptr inbounds [2000 x double], [2000 x double]* %31, i64 %53, i64 %121, !dbg !102
  %126 = load double, double* %125, align 8, !dbg !103, !tbaa !44, !noalias !69
  %127 = fmul double %124, %126, !dbg !103
  store double %127, double* %125, align 8, !dbg !103, !tbaa !44, !noalias !69
  %128 = or i64 %121, 1, !dbg !101
  call void @llvm.dbg.value(metadata i64 %128, metadata !86, metadata !DIExpression()) #8, !dbg !96
  br label %129, !dbg !97

129:                                              ; preds = %123, %120
  %130 = phi i64 [ %128, %123 ], [ %121, %120 ]
  %131 = icmp eq i64 %122, %50, !dbg !97
  br i1 %131, label %145, label %132, !dbg !97

132:                                              ; preds = %129, %132
  %133 = phi i64 [ %143, %132 ], [ %130, %129 ]
  call void @llvm.dbg.value(metadata i64 %133, metadata !86, metadata !DIExpression()) #8, !dbg !96
  %134 = load double, double* %4, align 8, !dbg !110, !tbaa !44, !noalias !69
  %135 = getelementptr inbounds [2000 x double], [2000 x double]* %31, i64 %53, i64 %133, !dbg !102
  %136 = load double, double* %135, align 8, !dbg !103, !tbaa !44, !noalias !69
  %137 = fmul double %134, %136, !dbg !103
  store double %137, double* %135, align 8, !dbg !103, !tbaa !44, !noalias !69
  %138 = add nuw nsw i64 %133, 1, !dbg !101
  call void @llvm.dbg.value(metadata i64 %138, metadata !86, metadata !DIExpression()) #8, !dbg !96
  %139 = load double, double* %4, align 8, !dbg !110, !tbaa !44, !noalias !69
  %140 = getelementptr inbounds [2000 x double], [2000 x double]* %31, i64 %53, i64 %138, !dbg !102
  %141 = load double, double* %140, align 8, !dbg !103, !tbaa !44, !noalias !69
  %142 = fmul double %139, %141, !dbg !103
  store double %142, double* %140, align 8, !dbg !103, !tbaa !44, !noalias !69
  %143 = add nuw nsw i64 %133, 2, !dbg !101
  call void @llvm.dbg.value(metadata i64 %143, metadata !86, metadata !DIExpression()) #8, !dbg !96
  %144 = icmp eq i64 %143, %35, !dbg !111
  br i1 %144, label %145, label %132, !dbg !97, !llvm.loop !112

145:                                              ; preds = %129, %132, %119
  %146 = add nsw i64 %53, 1, !dbg !91
  call void @llvm.dbg.value(metadata i64 %146, metadata !79, metadata !DIExpression()) #8, !dbg !88
  call void @llvm.dbg.value(metadata i32 %25, metadata !83, metadata !DIExpression()) #8, !dbg !88
  %147 = icmp slt i64 %53, %34, !dbg !91
  %148 = add i64 %52, 1, !dbg !91
  br i1 %147, label %51, label %149, !dbg !91, !llvm.loop !113

149:                                              ; preds = %145, %28, %16
  store i8* getelementptr inbounds ([92 x i8], [92 x i8]* @2, i64 0, i64 0), i8** %21, align 8, !dbg !95, !tbaa !49, !noalias !69
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull %11, i32 %22) #8, !dbg !95, !noalias !69
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %20) #8, !dbg !95, !noalias !69
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #8, !dbg !95, !noalias !69
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #8, !dbg !95, !noalias !69
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %17) #8, !dbg !95, !noalias !69
  br label %150, !dbg !95

150:                                              ; preds = %5, %149
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %12), !dbg !115
  ret void, !dbg !116
}

declare !callback !117 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr

; Function Attrs: nounwind uwtable
define internal void @kernel_p2(i32 %0, i32 %1, double %2, [2000 x double]* %3, [2000 x double]* %4) #0 !dbg !119 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca [2000 x double]*, align 8
  %10 = alloca [2000 x double]*, align 8
  %11 = alloca %struct.ident_t, align 8
  %12 = bitcast %struct.ident_t* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %12, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @3 to i8*), i64 16, i1 false)
  call void @llvm.dbg.value(metadata i32 %0, metadata !123, metadata !DIExpression()), !dbg !128
  store i32 %0, i32* %6, align 4, !tbaa !40
  call void @llvm.dbg.value(metadata i32 %1, metadata !124, metadata !DIExpression()), !dbg !128
  store i32 %1, i32* %7, align 4, !tbaa !40
  call void @llvm.dbg.value(metadata double %2, metadata !125, metadata !DIExpression()), !dbg !128
  store double %2, double* %8, align 8, !tbaa !44
  call void @llvm.dbg.value(metadata [2000 x double]* %3, metadata !126, metadata !DIExpression()), !dbg !128
  store [2000 x double]* %3, [2000 x double]** %9, align 8, !tbaa !46
  call void @llvm.dbg.value(metadata [2000 x double]* %4, metadata !127, metadata !DIExpression()), !dbg !128
  store [2000 x double]* %4, [2000 x double]** %10, align 8, !tbaa !46
  %13 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %11, i64 0, i32 4, !dbg !129
  store i8* getelementptr inbounds ([91 x i8], [91 x i8]* @4, i64 0, i64 0), i8** %13, align 8, !dbg !129, !tbaa !49
  call void @llvm.dbg.value(metadata i32* %6, metadata !123, metadata !DIExpression(DW_OP_deref)), !dbg !128
  call void @llvm.dbg.value(metadata i32* %7, metadata !124, metadata !DIExpression(DW_OP_deref)), !dbg !128
  call void @llvm.dbg.value(metadata double* %8, metadata !125, metadata !DIExpression(DW_OP_deref)), !dbg !128
  call void @llvm.dbg.value(metadata [2000 x double]** %9, metadata !126, metadata !DIExpression(DW_OP_deref)), !dbg !128
  call void @llvm.dbg.value(metadata [2000 x double]** %10, metadata !127, metadata !DIExpression(DW_OP_deref)), !dbg !128
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %11, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, [2000 x double]**, double*, [2000 x double]**)* @.omp_outlined..2 to void (i32*, i32*, ...)*), i32* nonnull %6, i32* nonnull %7, [2000 x double]** nonnull %9, double* nonnull %8, [2000 x double]** nonnull %10) #8, !dbg !129
  ret void, !dbg !130
}

declare dso_local void @__kmpc_for_static_init_8(%struct.ident_t*, i32, i32, i32*, i64*, i64*, i64*, i64, i64) local_unnamed_addr

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined..2(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture readonly dereferenceable(4) %2, i32* nocapture readonly dereferenceable(4) %3, [2000 x double]** nocapture readonly dereferenceable(8) %4, double* nocapture readonly dereferenceable(8) %5, [2000 x double]** nocapture readonly dereferenceable(8) %6) #2 !dbg !131 {
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ident_t, align 8
  call void @llvm.dbg.value(metadata i32* %0, metadata !135, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.value(metadata i32* %1, metadata !136, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.value(metadata i32* %2, metadata !137, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.value(metadata i32* %3, metadata !138, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.value(metadata [2000 x double]** %4, metadata !139, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.value(metadata double* %5, metadata !140, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.value(metadata [2000 x double]** %6, metadata !141, metadata !DIExpression()), !dbg !142
  %13 = load i32, i32* %2, align 4, !dbg !143, !tbaa !40
  %14 = bitcast %struct.ident_t* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %14, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @0 to i8*), i64 24, i1 false) #8, !noalias !144
  call void @llvm.dbg.value(metadata i32* %0, metadata !147, metadata !DIExpression()) #8, !dbg !168
  call void @llvm.dbg.value(metadata i32* undef, metadata !150, metadata !DIExpression()) #8, !dbg !168
  call void @llvm.dbg.value(metadata i32* %3, metadata !152, metadata !DIExpression()) #8, !dbg !168
  call void @llvm.dbg.value(metadata [2000 x double]** %4, metadata !153, metadata !DIExpression()) #8, !dbg !168
  call void @llvm.dbg.value(metadata double* %5, metadata !154, metadata !DIExpression()) #8, !dbg !168
  call void @llvm.dbg.value(metadata [2000 x double]** %6, metadata !155, metadata !DIExpression()) #8, !dbg !168
  call void @llvm.dbg.value(metadata i32 %13, metadata !158, metadata !DIExpression()) #8, !dbg !168
  call void @llvm.dbg.value(metadata i32 %13, metadata !158, metadata !DIExpression()) #8, !dbg !168
  %15 = sext i32 %13 to i64, !dbg !170
  %16 = mul nsw i64 %15, %15, !dbg !171
  %17 = add nsw i64 %16, -1, !dbg !171
  call void @llvm.dbg.value(metadata i64 %17, metadata !159, metadata !DIExpression()) #8, !dbg !168
  call void @llvm.dbg.value(metadata i32 0, metadata !160, metadata !DIExpression()) #8, !dbg !168
  call void @llvm.dbg.value(metadata i32 0, metadata !161, metadata !DIExpression()) #8, !dbg !168
  %18 = icmp sgt i32 %13, 0, !dbg !170
  br i1 %18, label %19, label %93, !dbg !172

19:                                               ; preds = %7
  %20 = bitcast i64* %8 to i8*, !dbg !170
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %20) #8, !dbg !170, !noalias !144
  call void @llvm.dbg.value(metadata i64 0, metadata !162, metadata !DIExpression()) #8, !dbg !168
  store i64 0, i64* %8, align 8, !dbg !173, !tbaa !174, !noalias !144
  %21 = bitcast i64* %9 to i8*, !dbg !170
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %21) #8, !dbg !170, !noalias !144
  call void @llvm.dbg.value(metadata i64 %17, metadata !163, metadata !DIExpression()) #8, !dbg !168
  store i64 %17, i64* %9, align 8, !dbg !173, !tbaa !174, !noalias !144
  %22 = bitcast i64* %10 to i8*, !dbg !170
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %22) #8, !dbg !170, !noalias !144
  call void @llvm.dbg.value(metadata i64 1, metadata !164, metadata !DIExpression()) #8, !dbg !168
  store i64 1, i64* %10, align 8, !dbg !173, !tbaa !174, !noalias !144
  %23 = bitcast i32* %11 to i8*, !dbg !170
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %23) #8, !dbg !170, !noalias !144
  call void @llvm.dbg.value(metadata i32 0, metadata !165, metadata !DIExpression()) #8, !dbg !168
  store i32 0, i32* %11, align 4, !dbg !173, !tbaa !40, !noalias !144
  %24 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %12, i64 0, i32 4, !dbg !170
  store i8* getelementptr inbounds ([91 x i8], [91 x i8]* @4, i64 0, i64 0), i8** %24, align 8, !dbg !170, !tbaa !49, !noalias !144
  %25 = load i32, i32* %0, align 4, !dbg !170, !tbaa !40, !alias.scope !144
  call void @llvm.dbg.value(metadata i64* %8, metadata !162, metadata !DIExpression(DW_OP_deref)) #8, !dbg !168
  call void @llvm.dbg.value(metadata i64* %9, metadata !163, metadata !DIExpression(DW_OP_deref)) #8, !dbg !168
  call void @llvm.dbg.value(metadata i64* %10, metadata !164, metadata !DIExpression(DW_OP_deref)) #8, !dbg !168
  call void @llvm.dbg.value(metadata i32* %11, metadata !165, metadata !DIExpression(DW_OP_deref)) #8, !dbg !168
  call void @__kmpc_for_static_init_8(%struct.ident_t* nonnull %12, i32 %25, i32 34, i32* nonnull %11, i64* nonnull %8, i64* nonnull %9, i64* nonnull %10, i64 1, i64 1) #8, !dbg !170, !noalias !144
  %26 = load i64, i64* %9, align 8, !dbg !173, !tbaa !174, !noalias !144
  call void @llvm.dbg.value(metadata i64 %26, metadata !163, metadata !DIExpression()) #8, !dbg !168
  %27 = icmp slt i64 %26, %16, !dbg !173
  %28 = select i1 %27, i64 %26, i64 %17, !dbg !173
  call void @llvm.dbg.value(metadata i64 %28, metadata !163, metadata !DIExpression()) #8, !dbg !168
  store i64 %28, i64* %9, align 8, !dbg !173, !tbaa !174, !noalias !144
  %29 = load i64, i64* %8, align 8, !dbg !173, !tbaa !174, !noalias !144
  call void @llvm.dbg.value(metadata i64 %29, metadata !162, metadata !DIExpression()) #8, !dbg !168
  call void @llvm.dbg.value(metadata i64 %29, metadata !156, metadata !DIExpression()) #8, !dbg !168
  call void @llvm.dbg.value(metadata i64 %28, metadata !163, metadata !DIExpression()) #8, !dbg !168
  %30 = icmp sgt i64 %29, %28, !dbg !170
  br i1 %30, label %92, label %31, !dbg !170

31:                                               ; preds = %19
  %32 = load i32, i32* %3, align 4, !dbg !176, !noalias !144
  %33 = icmp sgt i32 %32, 0, !dbg !176
  %34 = load [2000 x double]*, [2000 x double]** %6, align 8, !dbg !176, !noalias !144
  %35 = load [2000 x double]*, [2000 x double]** %4, align 8, !dbg !176, !noalias !144
  br i1 %33, label %36, label %92, !dbg !170

36:                                               ; preds = %31
  %37 = zext i32 %32 to i64, !dbg !176
  %38 = and i64 %37, 1, !dbg !178
  %39 = icmp eq i32 %32, 1, !dbg !178
  %40 = sub nsw i64 %37, %38, !dbg !178
  %41 = icmp eq i64 %38, 0, !dbg !178
  br label %42, !dbg !179

42:                                               ; preds = %89, %36
  %43 = phi i64 [ %90, %89 ], [ %29, %36 ]
  call void @llvm.dbg.value(metadata i64 %43, metadata !156, metadata !DIExpression()) #8, !dbg !168
  %44 = sdiv i64 %43, %15, !dbg !180
  call void @llvm.dbg.value(metadata i64 %44, metadata !160, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !168
  %45 = mul nsw i64 %44, %15, !dbg !180
  %46 = srem i64 %43, %15
  call void @llvm.dbg.value(metadata i64 %46, metadata !161, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !168
  call void @llvm.dbg.value(metadata i32 0, metadata !166, metadata !DIExpression()) #8, !dbg !178
  %47 = shl i64 %44, 32, !dbg !176
  %48 = ashr exact i64 %47, 32, !dbg !176
  %49 = shl i64 %46, 32, !dbg !176
  %50 = ashr exact i64 %49, 32, !dbg !176
  %51 = getelementptr inbounds [2000 x double], [2000 x double]* %35, i64 %48, i64 %50, !dbg !176
  %52 = load double, double* %51, align 8, !dbg !181, !tbaa !44, !noalias !144
  br i1 %39, label %77, label %53, !dbg !182

53:                                               ; preds = %42, %53
  %54 = phi double [ %73, %53 ], [ %52, %42 ], !dbg !181
  %55 = phi i64 [ %74, %53 ], [ 0, %42 ]
  %56 = phi i64 [ %75, %53 ], [ %40, %42 ]
  call void @llvm.dbg.value(metadata i64 %55, metadata !166, metadata !DIExpression()) #8, !dbg !178
  %57 = load double, double* %5, align 8, !dbg !183, !tbaa !44, !noalias !144
  %58 = getelementptr inbounds [2000 x double], [2000 x double]* %34, i64 %48, i64 %55, !dbg !184
  %59 = load double, double* %58, align 8, !dbg !184, !tbaa !44, !noalias !144
  %60 = fmul double %57, %59, !dbg !185
  %61 = getelementptr inbounds [2000 x double], [2000 x double]* %34, i64 %50, i64 %55, !dbg !186
  %62 = load double, double* %61, align 8, !dbg !186, !tbaa !44, !noalias !144
  %63 = fmul double %60, %62, !dbg !187
  %64 = fadd double %54, %63, !dbg !181
  store double %64, double* %51, align 8, !dbg !181, !tbaa !44, !noalias !144
  %65 = or i64 %55, 1, !dbg !188
  call void @llvm.dbg.value(metadata i64 %65, metadata !166, metadata !DIExpression()) #8, !dbg !178
  %66 = load double, double* %5, align 8, !dbg !183, !tbaa !44, !noalias !144
  %67 = getelementptr inbounds [2000 x double], [2000 x double]* %34, i64 %48, i64 %65, !dbg !184
  %68 = load double, double* %67, align 8, !dbg !184, !tbaa !44, !noalias !144
  %69 = fmul double %66, %68, !dbg !185
  %70 = getelementptr inbounds [2000 x double], [2000 x double]* %34, i64 %50, i64 %65, !dbg !186
  %71 = load double, double* %70, align 8, !dbg !186, !tbaa !44, !noalias !144
  %72 = fmul double %69, %71, !dbg !187
  %73 = fadd double %64, %72, !dbg !181
  store double %73, double* %51, align 8, !dbg !181, !tbaa !44, !noalias !144
  %74 = add nuw nsw i64 %55, 2, !dbg !188
  call void @llvm.dbg.value(metadata i64 %74, metadata !166, metadata !DIExpression()) #8, !dbg !178
  %75 = add i64 %56, -2, !dbg !182
  %76 = icmp eq i64 %75, 0, !dbg !182
  br i1 %76, label %77, label %53, !dbg !182, !llvm.loop !189

77:                                               ; preds = %53, %42
  %78 = phi double [ %52, %42 ], [ %73, %53 ]
  %79 = phi i64 [ 0, %42 ], [ %74, %53 ]
  br i1 %41, label %89, label %80, !dbg !182

80:                                               ; preds = %77
  call void @llvm.dbg.value(metadata i64 %79, metadata !166, metadata !DIExpression()) #8, !dbg !178
  %81 = load double, double* %5, align 8, !dbg !183, !tbaa !44, !noalias !144
  %82 = getelementptr inbounds [2000 x double], [2000 x double]* %34, i64 %48, i64 %79, !dbg !184
  %83 = load double, double* %82, align 8, !dbg !184, !tbaa !44, !noalias !144
  %84 = fmul double %81, %83, !dbg !185
  %85 = getelementptr inbounds [2000 x double], [2000 x double]* %34, i64 %50, i64 %79, !dbg !186
  %86 = load double, double* %85, align 8, !dbg !186, !tbaa !44, !noalias !144
  %87 = fmul double %84, %86, !dbg !187
  %88 = fadd double %78, %87, !dbg !181
  store double %88, double* %51, align 8, !dbg !181, !tbaa !44, !noalias !144
  call void @llvm.dbg.value(metadata i64 %79, metadata !166, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #8, !dbg !178
  br label %89, !dbg !170

89:                                               ; preds = %77, %80
  %90 = add nsw i64 %43, 1, !dbg !170
  call void @llvm.dbg.value(metadata i64 %90, metadata !156, metadata !DIExpression()) #8, !dbg !168
  call void @llvm.dbg.value(metadata i64 %28, metadata !163, metadata !DIExpression()) #8, !dbg !168
  %91 = icmp slt i64 %43, %28, !dbg !170
  br i1 %91, label %42, label %92, !dbg !170, !llvm.loop !191

92:                                               ; preds = %89, %31, %19
  store i8* getelementptr inbounds ([92 x i8], [92 x i8]* @5, i64 0, i64 0), i8** %24, align 8, !dbg !179, !tbaa !49, !noalias !144
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull %12, i32 %25) #8, !dbg !179, !noalias !144
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %23) #8, !dbg !179, !noalias !144
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22) #8, !dbg !179, !noalias !144
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #8, !dbg !179, !noalias !144
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %20) #8, !dbg !179, !noalias !144
  br label %93, !dbg !179

93:                                               ; preds = %7, %92
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %14), !dbg !193
  ret void, !dbg !143
}

; Function Attrs: nounwind uwtable
define internal void @kernel_syrk(i32 %0, i32 %1, double %2, double %3, [2000 x double]* %4, [2000 x double]* %5) #0 !dbg !194 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca [2000 x double]*, align 8
  %11 = alloca [2000 x double]*, align 8
  %12 = alloca %struct.ident_t, align 8
  %13 = alloca i32, align 4
  %14 = alloca double, align 8
  %15 = alloca [2000 x double]*, align 8
  %16 = alloca %struct.ident_t, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !198, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata i32 %1, metadata !199, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata double %2, metadata !200, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata double %3, metadata !201, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata [2000 x double]* %4, metadata !202, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.value(metadata [2000 x double]* %5, metadata !203, metadata !DIExpression()), !dbg !204
  tail call void (...) @polybench_timer_start() #8, !dbg !205
  %17 = bitcast i32* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %17)
  %18 = bitcast double* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18)
  %19 = bitcast [2000 x double]** %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19)
  %20 = bitcast %struct.ident_t* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %20)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %20, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @3 to i8*), i64 16, i1 false) #8
  call void @llvm.dbg.value(metadata i32 %0, metadata !36, metadata !DIExpression()) #8, !dbg !206
  store i32 %0, i32* %13, align 4, !tbaa !40
  call void @llvm.dbg.value(metadata double %3, metadata !37, metadata !DIExpression()) #8, !dbg !206
  store double %3, double* %14, align 8, !tbaa !44
  call void @llvm.dbg.value(metadata [2000 x double]* %4, metadata !38, metadata !DIExpression()) #8, !dbg !206
  store [2000 x double]* %4, [2000 x double]** %15, align 8, !tbaa !46
  %21 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %16, i64 0, i32 4, !dbg !208
  store i8* getelementptr inbounds ([91 x i8], [91 x i8]* @1, i64 0, i64 0), i8** %21, align 8, !dbg !208, !tbaa !49
  call void @llvm.dbg.value(metadata i32* %13, metadata !36, metadata !DIExpression(DW_OP_deref)) #8, !dbg !206
  call void @llvm.dbg.value(metadata double* %14, metadata !37, metadata !DIExpression(DW_OP_deref)) #8, !dbg !206
  call void @llvm.dbg.value(metadata [2000 x double]** %15, metadata !38, metadata !DIExpression(DW_OP_deref)) #8, !dbg !206
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %16, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [2000 x double]**, double*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %13, [2000 x double]** nonnull %15, double* nonnull %14) #8, !dbg !208
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %17), !dbg !209
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18), !dbg !209
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19), !dbg !209
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %20), !dbg !209
  call void (...) @polybench_timer_stop() #8, !dbg !210
  call void (...) @polybench_timer_print() #8, !dbg !211
  call void (...) @polybench_timer_start() #8, !dbg !212
  %22 = bitcast i32* %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %22)
  %23 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %23)
  %24 = bitcast double* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %24)
  %25 = bitcast [2000 x double]** %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %25)
  %26 = bitcast [2000 x double]** %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26)
  %27 = bitcast %struct.ident_t* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %27)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %27, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @3 to i8*), i64 16, i1 false) #8
  call void @llvm.dbg.value(metadata i32 %0, metadata !123, metadata !DIExpression()) #8, !dbg !213
  store i32 %0, i32* %7, align 4, !tbaa !40
  call void @llvm.dbg.value(metadata i32 %1, metadata !124, metadata !DIExpression()) #8, !dbg !213
  store i32 %1, i32* %8, align 4, !tbaa !40
  call void @llvm.dbg.value(metadata double %2, metadata !125, metadata !DIExpression()) #8, !dbg !213
  store double %2, double* %9, align 8, !tbaa !44
  call void @llvm.dbg.value(metadata [2000 x double]* %4, metadata !126, metadata !DIExpression()) #8, !dbg !213
  store [2000 x double]* %4, [2000 x double]** %10, align 8, !tbaa !46
  call void @llvm.dbg.value(metadata [2000 x double]* %5, metadata !127, metadata !DIExpression()) #8, !dbg !213
  store [2000 x double]* %5, [2000 x double]** %11, align 8, !tbaa !46
  %28 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %12, i64 0, i32 4, !dbg !215
  store i8* getelementptr inbounds ([91 x i8], [91 x i8]* @4, i64 0, i64 0), i8** %28, align 8, !dbg !215, !tbaa !49
  call void @llvm.dbg.value(metadata i32* %7, metadata !123, metadata !DIExpression(DW_OP_deref)) #8, !dbg !213
  call void @llvm.dbg.value(metadata i32* %8, metadata !124, metadata !DIExpression(DW_OP_deref)) #8, !dbg !213
  call void @llvm.dbg.value(metadata double* %9, metadata !125, metadata !DIExpression(DW_OP_deref)) #8, !dbg !213
  call void @llvm.dbg.value(metadata [2000 x double]** %10, metadata !126, metadata !DIExpression(DW_OP_deref)) #8, !dbg !213
  call void @llvm.dbg.value(metadata [2000 x double]** %11, metadata !127, metadata !DIExpression(DW_OP_deref)) #8, !dbg !213
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %12, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, [2000 x double]**, double*, [2000 x double]**)* @.omp_outlined..2 to void (i32*, i32*, ...)*), i32* nonnull %7, i32* nonnull %8, [2000 x double]** nonnull %10, double* nonnull %9, [2000 x double]** nonnull %11) #8, !dbg !215
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %22), !dbg !216
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %23), !dbg !216
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %24), !dbg !216
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %25), !dbg !216
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26), !dbg !216
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %27), !dbg !216
  call void (...) @polybench_timer_stop() #8, !dbg !217
  call void (...) @polybench_timer_print() #8, !dbg !218
  ret void, !dbg !219
}

declare !dbg !4 dso_local void @polybench_timer_start(...) local_unnamed_addr #3

declare !dbg !8 dso_local void @polybench_timer_stop(...) local_unnamed_addr #3

declare !dbg !9 dso_local void @polybench_timer_print(...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %0, i8** nocapture readonly %1) local_unnamed_addr #0 !dbg !220 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca [2000 x double]*, align 8
  %7 = alloca [2000 x double]*, align 8
  %8 = alloca %struct.ident_t, align 8
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca [2000 x double]*, align 8
  %12 = alloca %struct.ident_t, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !227, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.value(metadata i8** %1, metadata !228, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.value(metadata i32 2000, metadata !229, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.value(metadata i32 2000, metadata !230, metadata !DIExpression()), !dbg !235
  %13 = tail call i8* @polybench_alloc_data(i64 4000000, i32 8) #8, !dbg !236
  call void @llvm.dbg.value(metadata i8* %13, metadata !233, metadata !DIExpression()), !dbg !235
  %14 = tail call i8* @polybench_alloc_data(i64 4000000, i32 8) #8, !dbg !237
  call void @llvm.dbg.value(metadata i8* %14, metadata !234, metadata !DIExpression()), !dbg !235
  %15 = bitcast i8* %14 to [2000 x double]*, !dbg !238
  call void @llvm.dbg.value(metadata i32 2000, metadata !239, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.value(metadata i32 2000, metadata !245, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.value(metadata [2000 x double]* %39, metadata !248, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.value(metadata [2000 x double]* %15, metadata !249, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.value(metadata i32 0, metadata !250, metadata !DIExpression()), !dbg !252
  br label %16, !dbg !254

16:                                               ; preds = %35, %2
  %17 = phi i64 [ 0, %2 ], [ %36, %35 ]
  call void @llvm.dbg.value(metadata i64 %17, metadata !250, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.value(metadata i32 0, metadata !251, metadata !DIExpression()), !dbg !252
  %18 = trunc i64 %17 to i32, !dbg !256
  %19 = sitofp i32 %18 to double, !dbg !256
  br label %20, !dbg !260

20:                                               ; preds = %20, %16
  %21 = phi i64 [ 0, %16 ], [ %33, %20 ]
  call void @llvm.dbg.value(metadata i64 %21, metadata !251, metadata !DIExpression()), !dbg !252
  %22 = trunc i64 %21 to i32, !dbg !261
  %23 = sitofp i32 %22 to double, !dbg !261
  %24 = fmul double %19, %23, !dbg !262
  %25 = fdiv double %24, 2.000000e+03, !dbg !263
  %26 = getelementptr inbounds [2000 x double], [2000 x double]* %15, i64 %17, i64 %21, !dbg !264
  store double %25, double* %26, align 8, !dbg !265, !tbaa !44
  %27 = or i64 %21, 1, !dbg !266
  call void @llvm.dbg.value(metadata i64 %27, metadata !251, metadata !DIExpression()), !dbg !252
  %28 = trunc i64 %27 to i32, !dbg !261
  %29 = sitofp i32 %28 to double, !dbg !261
  %30 = fmul double %19, %29, !dbg !262
  %31 = fdiv double %30, 2.000000e+03, !dbg !263
  %32 = getelementptr inbounds [2000 x double], [2000 x double]* %15, i64 %17, i64 %27, !dbg !264
  store double %31, double* %32, align 8, !dbg !265, !tbaa !44
  %33 = add nuw nsw i64 %21, 2, !dbg !266
  call void @llvm.dbg.value(metadata i64 %33, metadata !251, metadata !DIExpression()), !dbg !252
  %34 = icmp eq i64 %33, 2000, !dbg !267
  br i1 %34, label %35, label %20, !dbg !260, !llvm.loop !268

35:                                               ; preds = %20
  %36 = add nuw nsw i64 %17, 1, !dbg !270
  call void @llvm.dbg.value(metadata i64 %36, metadata !250, metadata !DIExpression()), !dbg !252
  %37 = icmp eq i64 %36, 2000, !dbg !271
  br i1 %37, label %38, label %16, !dbg !254, !llvm.loop !272

38:                                               ; preds = %35
  %39 = bitcast i8* %13 to [2000 x double]*, !dbg !274
  br label %40, !dbg !275

40:                                               ; preds = %38, %59
  %41 = phi i64 [ %60, %59 ], [ 0, %38 ]
  call void @llvm.dbg.value(metadata i64 %41, metadata !250, metadata !DIExpression()), !dbg !252
  call void @llvm.dbg.value(metadata i32 0, metadata !251, metadata !DIExpression()), !dbg !252
  %42 = trunc i64 %41 to i32, !dbg !277
  %43 = sitofp i32 %42 to double, !dbg !277
  br label %44, !dbg !281

44:                                               ; preds = %44, %40
  %45 = phi i64 [ 0, %40 ], [ %57, %44 ]
  call void @llvm.dbg.value(metadata i64 %45, metadata !251, metadata !DIExpression()), !dbg !252
  %46 = trunc i64 %45 to i32, !dbg !282
  %47 = sitofp i32 %46 to double, !dbg !282
  %48 = fmul double %43, %47, !dbg !283
  %49 = fdiv double %48, 2.000000e+03, !dbg !284
  %50 = getelementptr inbounds [2000 x double], [2000 x double]* %39, i64 %41, i64 %45, !dbg !285
  store double %49, double* %50, align 8, !dbg !286, !tbaa !44
  %51 = or i64 %45, 1, !dbg !287
  call void @llvm.dbg.value(metadata i64 %51, metadata !251, metadata !DIExpression()), !dbg !252
  %52 = trunc i64 %51 to i32, !dbg !282
  %53 = sitofp i32 %52 to double, !dbg !282
  %54 = fmul double %43, %53, !dbg !283
  %55 = fdiv double %54, 2.000000e+03, !dbg !284
  %56 = getelementptr inbounds [2000 x double], [2000 x double]* %39, i64 %41, i64 %51, !dbg !285
  store double %55, double* %56, align 8, !dbg !286, !tbaa !44
  %57 = add nuw nsw i64 %45, 2, !dbg !287
  call void @llvm.dbg.value(metadata i64 %57, metadata !251, metadata !DIExpression()), !dbg !252
  %58 = icmp eq i64 %57, 2000, !dbg !288
  br i1 %58, label %59, label %44, !dbg !281, !llvm.loop !289

59:                                               ; preds = %44
  %60 = add nuw nsw i64 %41, 1, !dbg !291
  call void @llvm.dbg.value(metadata i64 %60, metadata !250, metadata !DIExpression()), !dbg !252
  %61 = icmp eq i64 %60, 2000, !dbg !292
  br i1 %61, label %62, label %40, !dbg !275, !llvm.loop !293

62:                                               ; preds = %59
  call void @llvm.dbg.value(metadata double 3.241200e+04, metadata !231, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.value(metadata double 2.123000e+03, metadata !232, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.value(metadata i32 2000, metadata !198, metadata !DIExpression()) #8, !dbg !295
  call void @llvm.dbg.value(metadata i32 2000, metadata !199, metadata !DIExpression()) #8, !dbg !295
  call void @llvm.dbg.value(metadata double 3.241200e+04, metadata !200, metadata !DIExpression()) #8, !dbg !295
  call void @llvm.dbg.value(metadata double 2.123000e+03, metadata !201, metadata !DIExpression()) #8, !dbg !295
  call void @llvm.dbg.value(metadata [2000 x double]* %39, metadata !202, metadata !DIExpression()) #8, !dbg !295
  call void @llvm.dbg.value(metadata [2000 x double]* %15, metadata !203, metadata !DIExpression()) #8, !dbg !295
  tail call void (...) @polybench_timer_start() #8, !dbg !297
  %63 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %63) #8
  %64 = bitcast double* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %64) #8
  %65 = bitcast [2000 x double]** %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %65) #8
  %66 = bitcast %struct.ident_t* %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %66) #8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %66, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @3 to i8*), i64 16, i1 false) #8
  call void @llvm.dbg.value(metadata i32 2000, metadata !36, metadata !DIExpression()) #8, !dbg !298
  store i32 2000, i32* %9, align 4, !tbaa !40
  call void @llvm.dbg.value(metadata double 2.123000e+03, metadata !37, metadata !DIExpression()) #8, !dbg !298
  store double 2.123000e+03, double* %10, align 8, !tbaa !44
  call void @llvm.dbg.value(metadata [2000 x double]* %39, metadata !38, metadata !DIExpression()) #8, !dbg !298
  %67 = bitcast [2000 x double]** %11 to i8**
  store i8* %13, i8** %67, align 8, !tbaa !46
  %68 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %12, i64 0, i32 4, !dbg !300
  store i8* getelementptr inbounds ([91 x i8], [91 x i8]* @1, i64 0, i64 0), i8** %68, align 8, !dbg !300, !tbaa !49
  call void @llvm.dbg.value(metadata i32* %9, metadata !36, metadata !DIExpression(DW_OP_deref)) #8, !dbg !298
  call void @llvm.dbg.value(metadata double* %10, metadata !37, metadata !DIExpression(DW_OP_deref)) #8, !dbg !298
  call void @llvm.dbg.value(metadata [2000 x double]** %11, metadata !38, metadata !DIExpression(DW_OP_deref)) #8, !dbg !298
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %12, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [2000 x double]**, double*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %9, [2000 x double]** nonnull %11, double* nonnull %10) #8, !dbg !300
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %63) #8, !dbg !301
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %64) #8, !dbg !301
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %65) #8, !dbg !301
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %66) #8, !dbg !301
  call void (...) @polybench_timer_stop() #8, !dbg !302
  call void (...) @polybench_timer_print() #8, !dbg !303
  call void (...) @polybench_timer_start() #8, !dbg !304
  %69 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %69) #8
  %70 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %70) #8
  %71 = bitcast double* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %71) #8
  %72 = bitcast [2000 x double]** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %72) #8
  %73 = bitcast [2000 x double]** %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %73) #8
  %74 = bitcast %struct.ident_t* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %74) #8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %74, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @3 to i8*), i64 16, i1 false) #8
  call void @llvm.dbg.value(metadata i32 2000, metadata !123, metadata !DIExpression()) #8, !dbg !305
  store i32 2000, i32* %3, align 4, !tbaa !40
  call void @llvm.dbg.value(metadata i32 2000, metadata !124, metadata !DIExpression()) #8, !dbg !305
  store i32 2000, i32* %4, align 4, !tbaa !40
  call void @llvm.dbg.value(metadata double 3.241200e+04, metadata !125, metadata !DIExpression()) #8, !dbg !305
  store double 3.241200e+04, double* %5, align 8, !tbaa !44
  call void @llvm.dbg.value(metadata [2000 x double]* %39, metadata !126, metadata !DIExpression()) #8, !dbg !305
  %75 = bitcast [2000 x double]** %6 to i8**
  store i8* %13, i8** %75, align 8, !tbaa !46
  call void @llvm.dbg.value(metadata [2000 x double]* %15, metadata !127, metadata !DIExpression()) #8, !dbg !305
  %76 = bitcast [2000 x double]** %7 to i8**
  store i8* %14, i8** %76, align 8, !tbaa !46
  %77 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %8, i64 0, i32 4, !dbg !307
  store i8* getelementptr inbounds ([91 x i8], [91 x i8]* @4, i64 0, i64 0), i8** %77, align 8, !dbg !307, !tbaa !49
  call void @llvm.dbg.value(metadata i32* %3, metadata !123, metadata !DIExpression(DW_OP_deref)) #8, !dbg !305
  call void @llvm.dbg.value(metadata i32* %4, metadata !124, metadata !DIExpression(DW_OP_deref)) #8, !dbg !305
  call void @llvm.dbg.value(metadata double* %5, metadata !125, metadata !DIExpression(DW_OP_deref)) #8, !dbg !305
  call void @llvm.dbg.value(metadata [2000 x double]** %6, metadata !126, metadata !DIExpression(DW_OP_deref)) #8, !dbg !305
  call void @llvm.dbg.value(metadata [2000 x double]** %7, metadata !127, metadata !DIExpression(DW_OP_deref)) #8, !dbg !305
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %8, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, [2000 x double]**, double*, [2000 x double]**)* @.omp_outlined..2 to void (i32*, i32*, ...)*), i32* nonnull %3, i32* nonnull %4, [2000 x double]** nonnull %6, double* nonnull %5, [2000 x double]** nonnull %7) #8, !dbg !307
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %69) #8, !dbg !308
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %70) #8, !dbg !308
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %71) #8, !dbg !308
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %72) #8, !dbg !308
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %73) #8, !dbg !308
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %74) #8, !dbg !308
  call void (...) @polybench_timer_stop() #8, !dbg !309
  call void (...) @polybench_timer_print() #8, !dbg !310
  %78 = icmp sgt i32 %0, 42, !dbg !311
  br i1 %78, label %79, label %108, !dbg !311

79:                                               ; preds = %62
  %80 = load i8*, i8** %1, align 8, !dbg !311, !tbaa !46
  %81 = load i8, i8* %80, align 1, !dbg !311
  %82 = icmp eq i8 %81, 0, !dbg !311
  br i1 %82, label %83, label %108, !dbg !313

83:                                               ; preds = %79, %102
  %84 = phi i64 [ %103, %102 ], [ 0, %79 ]
  call void @llvm.dbg.value(metadata i64 %84, metadata !314, metadata !DIExpression()) #8, !dbg !322
  call void @llvm.dbg.value(metadata i32 0, metadata !321, metadata !DIExpression()) #8, !dbg !322
  %85 = mul nuw nsw i64 %84, 2000, !dbg !324
  br label %86, !dbg !331

86:                                               ; preds = %99, %83
  %87 = phi i64 [ 0, %83 ], [ %100, %99 ]
  call void @llvm.dbg.value(metadata i64 %87, metadata !321, metadata !DIExpression()) #8, !dbg !322
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !332, !tbaa !46
  %89 = getelementptr inbounds [2000 x double], [2000 x double]* %39, i64 %84, i64 %87, !dbg !333
  %90 = load double, double* %89, align 8, !dbg !333, !tbaa !44
  %91 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %88, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), double %90) #9, !dbg !334
  %92 = add nuw nsw i64 %87, %85, !dbg !335
  %93 = trunc i64 %92 to i32, !dbg !336
  %94 = urem i32 %93, 20, !dbg !336
  %95 = icmp eq i32 %94, 0, !dbg !337
  br i1 %95, label %96, label %99, !dbg !338

96:                                               ; preds = %86
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !339, !tbaa !46
  %98 = call i32 @fputc(i32 10, %struct._IO_FILE* %97) #9, !dbg !340
  br label %99, !dbg !340

99:                                               ; preds = %96, %86
  %100 = add nuw nsw i64 %87, 1, !dbg !341
  call void @llvm.dbg.value(metadata i64 %100, metadata !321, metadata !DIExpression()) #8, !dbg !322
  %101 = icmp eq i64 %100, 2000, !dbg !342
  br i1 %101, label %102, label %86, !dbg !331, !llvm.loop !343

102:                                              ; preds = %99
  %103 = add nuw nsw i64 %84, 1, !dbg !345
  call void @llvm.dbg.value(metadata i64 %103, metadata !314, metadata !DIExpression()) #8, !dbg !322
  %104 = icmp eq i64 %103, 2000, !dbg !346
  br i1 %104, label %105, label %83, !dbg !347, !llvm.loop !348

105:                                              ; preds = %102
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !350, !tbaa !46
  %107 = call i32 @fputc(i32 10, %struct._IO_FILE* %106) #9, !dbg !351
  br label %108, !dbg !311

108:                                              ; preds = %79, %105, %62
  call void @free(i8* nonnull %13) #8, !dbg !352
  call void @free(i8* %14) #8, !dbg !353
  ret i32 0, !dbg !354
}

declare !dbg !15 dso_local i8* @polybench_alloc_data(i64, i32) local_unnamed_addr #3

; Function Attrs: nounwind
declare !dbg !21 dso_local void @free(i8* nocapture) local_unnamed_addr #4

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
!llvm.module.flags = !{!25, !26, !27}
!llvm.ident = !{!28}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 (https://github.com/conda-forge/clangdev-feedstock 2a1fb6e8a1c6dc6e585535457c24f0295d90c8d2)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/syrk/syrk.c", directory: "/WAVE/users/unix/klor/ycho_lab/kimsong_lor/autotuning_tools/scripts")
!2 = !{}
!3 = !{!4, !8, !9, !10, !15, !18, !21, !12}
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
!21 = !DISubprogram(name: "free", scope: !22, file: !22, line: 563, type: !23, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!22 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!23 = !DISubroutineType(types: !24)
!24 = !{null, !18}
!25 = !{i32 7, !"Dwarf Version", i32 4}
!26 = !{i32 2, !"Debug Info Version", i32 3}
!27 = !{i32 1, !"wchar_size", i32 4}
!28 = !{!"clang version 10.0.1 (https://github.com/conda-forge/clangdev-feedstock 2a1fb6e8a1c6dc6e585535457c24f0295d90c8d2)"}
!29 = distinct !DISubprogram(name: "kernel_p1", scope: !1, file: !1, line: 58, type: !30, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !35)
!30 = !DISubroutineType(types: !31)
!31 = !{null, !20, !12, !32}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 128000, elements: !34)
!34 = !{!14}
!35 = !{!36, !37, !38}
!36 = !DILocalVariable(name: "ni", arg: 1, scope: !29, file: !1, line: 58, type: !20)
!37 = !DILocalVariable(name: "beta", arg: 2, scope: !29, file: !1, line: 58, type: !12)
!38 = !DILocalVariable(name: "C", arg: 3, scope: !29, file: !1, line: 58, type: !32)
!39 = !DILocation(line: 0, scope: !29)
!40 = !{!41, !41, i64 0}
!41 = !{!"int", !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C/C++ TBAA"}
!44 = !{!45, !45, i64 0}
!45 = !{!"double", !42, i64 0}
!46 = !{!47, !47, i64 0}
!47 = !{!"any pointer", !42, i64 0}
!48 = !DILocation(line: 60, column: 1, scope: !29)
!49 = !{!50, !47, i64 16}
!50 = !{!"ident_t", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !47, i64 16}
!51 = !DILocation(line: 64, column: 1, scope: !29)
!52 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 61, type: !53, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !62)
!53 = !DISubroutineType(types: !54)
!54 = !{null, !55, !55, !59, !60, !61}
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!59 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !20, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !32, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!62 = !{!63, !64, !65, !66, !67}
!63 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !52, type: !55, flags: DIFlagArtificial)
!64 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !52, type: !55, flags: DIFlagArtificial)
!65 = !DILocalVariable(name: "ni", arg: 3, scope: !52, type: !59, flags: DIFlagArtificial)
!66 = !DILocalVariable(name: "C", arg: 4, scope: !52, type: !60, flags: DIFlagArtificial)
!67 = !DILocalVariable(name: "beta", arg: 5, scope: !52, type: !61, flags: DIFlagArtificial)
!68 = !DILocation(line: 0, scope: !52)
!69 = !{!70}
!70 = distinct !{!70, !71, !".omp_outlined._debug__: argument 0"}
!71 = distinct !{!71, !".omp_outlined._debug__"}
!72 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !73, type: !55, flags: DIFlagArtificial)
!73 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 61, type: !53, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !74)
!74 = !{!72, !75, !76, !77, !78, !79, !80, !80, !81, !82, !83, !84, !85, !81, !86}
!75 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !73, type: !55, flags: DIFlagArtificial)
!76 = !DILocalVariable(name: "ni", arg: 3, scope: !73, file: !1, line: 58, type: !59)
!77 = !DILocalVariable(name: "C", arg: 4, scope: !73, file: !1, line: 58, type: !60)
!78 = !DILocalVariable(name: "beta", arg: 5, scope: !73, file: !1, line: 58, type: !61)
!79 = !DILocalVariable(name: ".omp.iv", scope: !73, type: !20, flags: DIFlagArtificial)
!80 = !DILocalVariable(name: ".capture_expr.", scope: !73, type: !20, flags: DIFlagArtificial)
!81 = !DILocalVariable(name: "i", scope: !73, type: !20, flags: DIFlagArtificial)
!82 = !DILocalVariable(name: ".omp.lb", scope: !73, type: !20, flags: DIFlagArtificial)
!83 = !DILocalVariable(name: ".omp.ub", scope: !73, type: !20, flags: DIFlagArtificial)
!84 = !DILocalVariable(name: ".omp.stride", scope: !73, type: !20, flags: DIFlagArtificial)
!85 = !DILocalVariable(name: ".omp.is_last", scope: !73, type: !20, flags: DIFlagArtificial)
!86 = !DILocalVariable(name: "j", scope: !87, file: !1, line: 62, type: !20)
!87 = distinct !DILexicalBlock(scope: !73, file: !1, line: 62, column: 5)
!88 = !DILocation(line: 0, scope: !73, inlinedAt: !89)
!89 = distinct !DILocation(line: 61, column: 3, scope: !52)
!90 = !DILocation(line: 61, column: 23, scope: !73, inlinedAt: !89)
!91 = !DILocation(line: 61, column: 3, scope: !73, inlinedAt: !89)
!92 = !DILocation(line: 61, column: 8, scope: !73, inlinedAt: !89)
!93 = !DILocation(line: 0, scope: !94, inlinedAt: !89)
!94 = distinct !DILexicalBlock(scope: !87, file: !1, line: 62, column: 5)
!95 = !DILocation(line: 60, column: 1, scope: !73, inlinedAt: !89)
!96 = !DILocation(line: 0, scope: !87, inlinedAt: !89)
!97 = !DILocation(line: 62, column: 5, scope: !87, inlinedAt: !89)
!98 = !{!99}
!99 = distinct !{!99, !100}
!100 = distinct !{!100, !"LVerDomain"}
!101 = !DILocation(line: 62, column: 34, scope: !94, inlinedAt: !89)
!102 = !DILocation(line: 63, column: 7, scope: !94, inlinedAt: !89)
!103 = !DILocation(line: 63, column: 15, scope: !94, inlinedAt: !89)
!104 = !{!105}
!105 = distinct !{!105, !100}
!106 = !{!70, !99}
!107 = distinct !{!107, !97, !108, !109}
!108 = !DILocation(line: 63, column: 18, scope: !87, inlinedAt: !89)
!109 = !{!"llvm.loop.isvectorized", i32 1}
!110 = !DILocation(line: 63, column: 18, scope: !94, inlinedAt: !89)
!111 = !DILocation(line: 62, column: 23, scope: !94, inlinedAt: !89)
!112 = distinct !{!112, !97, !108, !109}
!113 = distinct !{!113, !95, !114}
!114 = !DILocation(line: 60, column: 25, scope: !73, inlinedAt: !89)
!115 = !DILocation(line: 63, column: 18, scope: !73, inlinedAt: !89)
!116 = !DILocation(line: 61, column: 3, scope: !52)
!117 = !{!118}
!118 = !{i64 2, i64 -1, i64 -1, i1 true}
!119 = distinct !DISubprogram(name: "kernel_p2", scope: !1, file: !1, line: 66, type: !120, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !122)
!120 = !DISubroutineType(types: !121)
!121 = !{null, !20, !20, !12, !32, !32}
!122 = !{!123, !124, !125, !126, !127}
!123 = !DILocalVariable(name: "ni", arg: 1, scope: !119, file: !1, line: 66, type: !20)
!124 = !DILocalVariable(name: "nj", arg: 2, scope: !119, file: !1, line: 66, type: !20)
!125 = !DILocalVariable(name: "alpha", arg: 3, scope: !119, file: !1, line: 66, type: !12)
!126 = !DILocalVariable(name: "C", arg: 4, scope: !119, file: !1, line: 66, type: !32)
!127 = !DILocalVariable(name: "A", arg: 5, scope: !119, file: !1, line: 66, type: !32)
!128 = !DILocation(line: 0, scope: !119)
!129 = !DILocation(line: 68, column: 1, scope: !119)
!130 = !DILocation(line: 73, column: 1, scope: !119)
!131 = distinct !DISubprogram(name: ".omp_outlined..2", scope: !1, file: !1, line: 69, type: !132, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !134)
!132 = !DISubroutineType(types: !133)
!133 = !{null, !55, !55, !59, !59, !60, !61, !60}
!134 = !{!135, !136, !137, !138, !139, !140, !141}
!135 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !131, type: !55, flags: DIFlagArtificial)
!136 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !131, type: !55, flags: DIFlagArtificial)
!137 = !DILocalVariable(name: "ni", arg: 3, scope: !131, type: !59, flags: DIFlagArtificial)
!138 = !DILocalVariable(name: "nj", arg: 4, scope: !131, type: !59, flags: DIFlagArtificial)
!139 = !DILocalVariable(name: "C", arg: 5, scope: !131, type: !60, flags: DIFlagArtificial)
!140 = !DILocalVariable(name: "alpha", arg: 6, scope: !131, type: !61, flags: DIFlagArtificial)
!141 = !DILocalVariable(name: "A", arg: 7, scope: !131, type: !60, flags: DIFlagArtificial)
!142 = !DILocation(line: 0, scope: !131)
!143 = !DILocation(line: 69, column: 3, scope: !131)
!144 = !{!145}
!145 = distinct !{!145, !146, !".omp_outlined._debug__.1: argument 0"}
!146 = distinct !{!146, !".omp_outlined._debug__.1"}
!147 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !148, type: !55, flags: DIFlagArtificial)
!148 = distinct !DISubprogram(name: ".omp_outlined._debug__.1", scope: !1, file: !1, line: 69, type: !132, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !149)
!149 = !{!147, !150, !151, !152, !153, !154, !155, !156, !158, !158, !159, !160, !161, !162, !163, !164, !165, !160, !161, !166}
!150 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !148, type: !55, flags: DIFlagArtificial)
!151 = !DILocalVariable(name: "ni", arg: 3, scope: !148, file: !1, line: 66, type: !59)
!152 = !DILocalVariable(name: "nj", arg: 4, scope: !148, file: !1, line: 66, type: !59)
!153 = !DILocalVariable(name: "C", arg: 5, scope: !148, file: !1, line: 66, type: !60)
!154 = !DILocalVariable(name: "alpha", arg: 6, scope: !148, file: !1, line: 66, type: !61)
!155 = !DILocalVariable(name: "A", arg: 7, scope: !148, file: !1, line: 66, type: !60)
!156 = !DILocalVariable(name: ".omp.iv", scope: !148, type: !157, flags: DIFlagArtificial)
!157 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!158 = !DILocalVariable(name: ".capture_expr.", scope: !148, type: !20, flags: DIFlagArtificial)
!159 = !DILocalVariable(name: ".capture_expr.", scope: !148, type: !157, flags: DIFlagArtificial)
!160 = !DILocalVariable(name: "i", scope: !148, type: !20, flags: DIFlagArtificial)
!161 = !DILocalVariable(name: "j", scope: !148, type: !20, flags: DIFlagArtificial)
!162 = !DILocalVariable(name: ".omp.lb", scope: !148, type: !157, flags: DIFlagArtificial)
!163 = !DILocalVariable(name: ".omp.ub", scope: !148, type: !157, flags: DIFlagArtificial)
!164 = !DILocalVariable(name: ".omp.stride", scope: !148, type: !157, flags: DIFlagArtificial)
!165 = !DILocalVariable(name: ".omp.is_last", scope: !148, type: !20, flags: DIFlagArtificial)
!166 = !DILocalVariable(name: "k", scope: !167, file: !1, line: 71, type: !20)
!167 = distinct !DILexicalBlock(scope: !148, file: !1, line: 71, column: 7)
!168 = !DILocation(line: 0, scope: !148, inlinedAt: !169)
!169 = distinct !DILocation(line: 69, column: 3, scope: !131)
!170 = !DILocation(line: 69, column: 3, scope: !148, inlinedAt: !169)
!171 = !DILocation(line: 70, column: 5, scope: !148, inlinedAt: !169)
!172 = !DILocation(line: 69, column: 16, scope: !148, inlinedAt: !169)
!173 = !DILocation(line: 69, column: 8, scope: !148, inlinedAt: !169)
!174 = !{!175, !175, i64 0}
!175 = !{!"long", !42, i64 0}
!176 = !DILocation(line: 0, scope: !177, inlinedAt: !169)
!177 = distinct !DILexicalBlock(scope: !167, file: !1, line: 71, column: 7)
!178 = !DILocation(line: 0, scope: !167, inlinedAt: !169)
!179 = !DILocation(line: 68, column: 1, scope: !148, inlinedAt: !169)
!180 = !DILocation(line: 69, column: 31, scope: !148, inlinedAt: !169)
!181 = !DILocation(line: 72, column: 17, scope: !177, inlinedAt: !169)
!182 = !DILocation(line: 71, column: 7, scope: !167, inlinedAt: !169)
!183 = !DILocation(line: 72, column: 20, scope: !177, inlinedAt: !169)
!184 = !DILocation(line: 72, column: 28, scope: !177, inlinedAt: !169)
!185 = !DILocation(line: 72, column: 26, scope: !177, inlinedAt: !169)
!186 = !DILocation(line: 72, column: 38, scope: !177, inlinedAt: !169)
!187 = !DILocation(line: 72, column: 36, scope: !177, inlinedAt: !169)
!188 = !DILocation(line: 71, column: 36, scope: !177, inlinedAt: !169)
!189 = distinct !{!189, !182, !190}
!190 = !DILocation(line: 72, column: 44, scope: !167, inlinedAt: !169)
!191 = distinct !{!191, !179, !192}
!192 = !DILocation(line: 68, column: 37, scope: !148, inlinedAt: !169)
!193 = !DILocation(line: 72, column: 44, scope: !148, inlinedAt: !169)
!194 = distinct !DISubprogram(name: "kernel_syrk", scope: !1, file: !1, line: 77, type: !195, scopeLine: 82, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !197)
!195 = !DISubroutineType(types: !196)
!196 = !{null, !20, !20, !12, !12, !32, !32}
!197 = !{!198, !199, !200, !201, !202, !203}
!198 = !DILocalVariable(name: "ni", arg: 1, scope: !194, file: !1, line: 77, type: !20)
!199 = !DILocalVariable(name: "nj", arg: 2, scope: !194, file: !1, line: 77, type: !20)
!200 = !DILocalVariable(name: "alpha", arg: 3, scope: !194, file: !1, line: 78, type: !12)
!201 = !DILocalVariable(name: "beta", arg: 4, scope: !194, file: !1, line: 79, type: !12)
!202 = !DILocalVariable(name: "C", arg: 5, scope: !194, file: !1, line: 80, type: !32)
!203 = !DILocalVariable(name: "A", arg: 6, scope: !194, file: !1, line: 81, type: !32)
!204 = !DILocation(line: 0, scope: !194)
!205 = !DILocation(line: 84, column: 3, scope: !194)
!206 = !DILocation(line: 0, scope: !29, inlinedAt: !207)
!207 = distinct !DILocation(line: 85, column: 3, scope: !194)
!208 = !DILocation(line: 60, column: 1, scope: !29, inlinedAt: !207)
!209 = !DILocation(line: 64, column: 1, scope: !29, inlinedAt: !207)
!210 = !DILocation(line: 86, column: 3, scope: !194)
!211 = !DILocation(line: 87, column: 3, scope: !194)
!212 = !DILocation(line: 89, column: 3, scope: !194)
!213 = !DILocation(line: 0, scope: !119, inlinedAt: !214)
!214 = distinct !DILocation(line: 90, column: 3, scope: !194)
!215 = !DILocation(line: 68, column: 1, scope: !119, inlinedAt: !214)
!216 = !DILocation(line: 73, column: 1, scope: !119, inlinedAt: !214)
!217 = !DILocation(line: 91, column: 3, scope: !194)
!218 = !DILocation(line: 92, column: 3, scope: !194)
!219 = !DILocation(line: 94, column: 1, scope: !194)
!220 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 96, type: !221, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !226)
!221 = !DISubroutineType(types: !222)
!222 = !{!20, !20, !223}
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!226 = !{!227, !228, !229, !230, !231, !232, !233, !234}
!227 = !DILocalVariable(name: "argc", arg: 1, scope: !220, file: !1, line: 96, type: !20)
!228 = !DILocalVariable(name: "argv", arg: 2, scope: !220, file: !1, line: 96, type: !223)
!229 = !DILocalVariable(name: "ni", scope: !220, file: !1, line: 99, type: !20)
!230 = !DILocalVariable(name: "nj", scope: !220, file: !1, line: 100, type: !20)
!231 = !DILocalVariable(name: "alpha", scope: !220, file: !1, line: 103, type: !12)
!232 = !DILocalVariable(name: "beta", scope: !220, file: !1, line: 104, type: !12)
!233 = !DILocalVariable(name: "C", scope: !220, file: !1, line: 105, type: !10)
!234 = !DILocalVariable(name: "A", scope: !220, file: !1, line: 106, type: !10)
!235 = !DILocation(line: 0, scope: !220)
!236 = !DILocation(line: 105, column: 3, scope: !220)
!237 = !DILocation(line: 106, column: 3, scope: !220)
!238 = !DILocation(line: 109, column: 57, scope: !220)
!239 = !DILocalVariable(name: "ni", arg: 1, scope: !240, file: !1, line: 23, type: !20)
!240 = distinct !DISubprogram(name: "init_array", scope: !1, file: !1, line: 23, type: !241, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !244)
!241 = !DISubroutineType(types: !242)
!242 = !{null, !20, !20, !243, !243, !32, !32}
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!244 = !{!239, !245, !246, !247, !248, !249, !250, !251}
!245 = !DILocalVariable(name: "nj", arg: 2, scope: !240, file: !1, line: 23, type: !20)
!246 = !DILocalVariable(name: "alpha", arg: 3, scope: !240, file: !1, line: 24, type: !243)
!247 = !DILocalVariable(name: "beta", arg: 4, scope: !240, file: !1, line: 25, type: !243)
!248 = !DILocalVariable(name: "C", arg: 5, scope: !240, file: !1, line: 26, type: !32)
!249 = !DILocalVariable(name: "A", arg: 6, scope: !240, file: !1, line: 27, type: !32)
!250 = !DILocalVariable(name: "i", scope: !240, file: !1, line: 29, type: !20)
!251 = !DILocalVariable(name: "j", scope: !240, file: !1, line: 29, type: !20)
!252 = !DILocation(line: 0, scope: !240, inlinedAt: !253)
!253 = distinct !DILocation(line: 109, column: 3, scope: !220)
!254 = !DILocation(line: 33, column: 3, scope: !255, inlinedAt: !253)
!255 = distinct !DILexicalBlock(scope: !240, file: !1, line: 33, column: 3)
!256 = !DILocation(line: 0, scope: !257, inlinedAt: !253)
!257 = distinct !DILexicalBlock(scope: !258, file: !1, line: 34, column: 5)
!258 = distinct !DILexicalBlock(scope: !259, file: !1, line: 34, column: 5)
!259 = distinct !DILexicalBlock(scope: !255, file: !1, line: 33, column: 3)
!260 = !DILocation(line: 34, column: 5, scope: !258, inlinedAt: !253)
!261 = !DILocation(line: 35, column: 33, scope: !257, inlinedAt: !253)
!262 = !DILocation(line: 35, column: 31, scope: !257, inlinedAt: !253)
!263 = !DILocation(line: 35, column: 36, scope: !257, inlinedAt: !253)
!264 = !DILocation(line: 35, column: 7, scope: !257, inlinedAt: !253)
!265 = !DILocation(line: 35, column: 15, scope: !257, inlinedAt: !253)
!266 = !DILocation(line: 34, column: 26, scope: !257, inlinedAt: !253)
!267 = !DILocation(line: 34, column: 19, scope: !257, inlinedAt: !253)
!268 = distinct !{!268, !260, !269}
!269 = !DILocation(line: 35, column: 38, scope: !258, inlinedAt: !253)
!270 = !DILocation(line: 33, column: 24, scope: !259, inlinedAt: !253)
!271 = !DILocation(line: 33, column: 17, scope: !259, inlinedAt: !253)
!272 = distinct !{!272, !254, !273}
!273 = !DILocation(line: 35, column: 38, scope: !255, inlinedAt: !253)
!274 = !DILocation(line: 109, column: 37, scope: !220)
!275 = !DILocation(line: 36, column: 3, scope: !276, inlinedAt: !253)
!276 = distinct !DILexicalBlock(scope: !240, file: !1, line: 36, column: 3)
!277 = !DILocation(line: 0, scope: !278, inlinedAt: !253)
!278 = distinct !DILexicalBlock(scope: !279, file: !1, line: 37, column: 5)
!279 = distinct !DILexicalBlock(scope: !280, file: !1, line: 37, column: 5)
!280 = distinct !DILexicalBlock(scope: !276, file: !1, line: 36, column: 3)
!281 = !DILocation(line: 37, column: 5, scope: !279, inlinedAt: !253)
!282 = !DILocation(line: 38, column: 33, scope: !278, inlinedAt: !253)
!283 = !DILocation(line: 38, column: 31, scope: !278, inlinedAt: !253)
!284 = !DILocation(line: 38, column: 36, scope: !278, inlinedAt: !253)
!285 = !DILocation(line: 38, column: 7, scope: !278, inlinedAt: !253)
!286 = !DILocation(line: 38, column: 15, scope: !278, inlinedAt: !253)
!287 = !DILocation(line: 37, column: 26, scope: !278, inlinedAt: !253)
!288 = !DILocation(line: 37, column: 19, scope: !278, inlinedAt: !253)
!289 = distinct !{!289, !281, !290}
!290 = !DILocation(line: 38, column: 38, scope: !279, inlinedAt: !253)
!291 = !DILocation(line: 36, column: 24, scope: !280, inlinedAt: !253)
!292 = !DILocation(line: 36, column: 17, scope: !280, inlinedAt: !253)
!293 = distinct !{!293, !275, !294}
!294 = !DILocation(line: 38, column: 38, scope: !276, inlinedAt: !253)
!295 = !DILocation(line: 0, scope: !194, inlinedAt: !296)
!296 = distinct !DILocation(line: 115, column: 3, scope: !220)
!297 = !DILocation(line: 84, column: 3, scope: !194, inlinedAt: !296)
!298 = !DILocation(line: 0, scope: !29, inlinedAt: !299)
!299 = distinct !DILocation(line: 85, column: 3, scope: !194, inlinedAt: !296)
!300 = !DILocation(line: 60, column: 1, scope: !29, inlinedAt: !299)
!301 = !DILocation(line: 64, column: 1, scope: !29, inlinedAt: !299)
!302 = !DILocation(line: 86, column: 3, scope: !194, inlinedAt: !296)
!303 = !DILocation(line: 87, column: 3, scope: !194, inlinedAt: !296)
!304 = !DILocation(line: 89, column: 3, scope: !194, inlinedAt: !296)
!305 = !DILocation(line: 0, scope: !119, inlinedAt: !306)
!306 = distinct !DILocation(line: 90, column: 3, scope: !194, inlinedAt: !296)
!307 = !DILocation(line: 68, column: 1, scope: !119, inlinedAt: !306)
!308 = !DILocation(line: 73, column: 1, scope: !119, inlinedAt: !306)
!309 = !DILocation(line: 91, column: 3, scope: !194, inlinedAt: !296)
!310 = !DILocation(line: 92, column: 3, scope: !194, inlinedAt: !296)
!311 = !DILocation(line: 123, column: 3, scope: !312)
!312 = distinct !DILexicalBlock(scope: !220, file: !1, line: 123, column: 3)
!313 = !DILocation(line: 123, column: 3, scope: !220)
!314 = !DILocalVariable(name: "i", scope: !315, file: !1, line: 46, type: !20)
!315 = distinct !DISubprogram(name: "print_array", scope: !1, file: !1, line: 43, type: !316, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !318)
!316 = !DISubroutineType(types: !317)
!317 = !{null, !20, !32}
!318 = !{!319, !320, !314, !321}
!319 = !DILocalVariable(name: "ni", arg: 1, scope: !315, file: !1, line: 43, type: !20)
!320 = !DILocalVariable(name: "C", arg: 2, scope: !315, file: !1, line: 44, type: !32)
!321 = !DILocalVariable(name: "j", scope: !315, file: !1, line: 46, type: !20)
!322 = !DILocation(line: 0, scope: !315, inlinedAt: !323)
!323 = distinct !DILocation(line: 123, column: 3, scope: !312)
!324 = !DILocation(line: 0, scope: !325, inlinedAt: !323)
!325 = distinct !DILexicalBlock(scope: !326, file: !1, line: 52, column: 11)
!326 = distinct !DILexicalBlock(scope: !327, file: !1, line: 50, column: 5)
!327 = distinct !DILexicalBlock(scope: !328, file: !1, line: 49, column: 5)
!328 = distinct !DILexicalBlock(scope: !329, file: !1, line: 49, column: 5)
!329 = distinct !DILexicalBlock(scope: !330, file: !1, line: 48, column: 3)
!330 = distinct !DILexicalBlock(scope: !315, file: !1, line: 48, column: 3)
!331 = !DILocation(line: 49, column: 5, scope: !328, inlinedAt: !323)
!332 = !DILocation(line: 51, column: 15, scope: !326, inlinedAt: !323)
!333 = !DILocation(line: 51, column: 45, scope: !326, inlinedAt: !323)
!334 = !DILocation(line: 51, column: 7, scope: !326, inlinedAt: !323)
!335 = !DILocation(line: 52, column: 19, scope: !325, inlinedAt: !323)
!336 = !DILocation(line: 52, column: 24, scope: !325, inlinedAt: !323)
!337 = !DILocation(line: 52, column: 29, scope: !325, inlinedAt: !323)
!338 = !DILocation(line: 52, column: 11, scope: !326, inlinedAt: !323)
!339 = !DILocation(line: 53, column: 17, scope: !325, inlinedAt: !323)
!340 = !DILocation(line: 53, column: 9, scope: !325, inlinedAt: !323)
!341 = !DILocation(line: 49, column: 26, scope: !327, inlinedAt: !323)
!342 = !DILocation(line: 49, column: 19, scope: !327, inlinedAt: !323)
!343 = distinct !{!343, !331, !344}
!344 = !DILocation(line: 54, column: 5, scope: !328, inlinedAt: !323)
!345 = !DILocation(line: 48, column: 24, scope: !329, inlinedAt: !323)
!346 = !DILocation(line: 48, column: 17, scope: !329, inlinedAt: !323)
!347 = !DILocation(line: 48, column: 3, scope: !330, inlinedAt: !323)
!348 = distinct !{!348, !347, !349}
!349 = !DILocation(line: 54, column: 5, scope: !330, inlinedAt: !323)
!350 = !DILocation(line: 55, column: 11, scope: !315, inlinedAt: !323)
!351 = !DILocation(line: 55, column: 3, scope: !315, inlinedAt: !323)
!352 = !DILocation(line: 126, column: 3, scope: !220)
!353 = !DILocation(line: 127, column: 3, scope: !220)
!354 = !DILocation(line: 129, column: 3, scope: !220)
