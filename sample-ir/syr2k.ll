; ModuleID = '../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/syr2k/syr2k.c'
source_filename = "../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/syr2k/syr2k.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [93 x i8] c";../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/syr2k/syr2k.c;kernel_p1;64;1;;\00", align 1
@2 = private unnamed_addr constant [94 x i8] c";../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/syr2k/syr2k.c;kernel_p1;64;25;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant [93 x i8] c";../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/syr2k/syr2k.c;kernel_p2;72;1;;\00", align 1
@5 = private unnamed_addr constant [94 x i8] c";../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/syr2k/syr2k.c;kernel_p2;72;37;;\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@llvm.used = appending global [3 x i8*] [i8* bitcast (void (i32, double, [2000 x double]*)* @kernel_p1 to i8*), i8* bitcast (void (i32, i32, double, [2000 x double]*, [2000 x double]*, [2000 x double]*)* @kernel_p2 to i8*), i8* bitcast (void (i32, i32, double, double, [2000 x double]*, [2000 x double]*, [2000 x double]*)* @kernel_syr2k to i8*)], section "llvm.metadata"

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
  store i8* getelementptr inbounds ([93 x i8], [93 x i8]* @1, i64 0, i64 0), i8** %9, align 8, !dbg !48, !tbaa !49
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
  store i8* getelementptr inbounds ([93 x i8], [93 x i8]* @1, i64 0, i64 0), i8** %21, align 8, !dbg !91, !tbaa !49, !noalias !69
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
  store i8* getelementptr inbounds ([94 x i8], [94 x i8]* @2, i64 0, i64 0), i8** %21, align 8, !dbg !95, !tbaa !49, !noalias !69
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
define internal void @kernel_p2(i32 %0, i32 %1, double %2, [2000 x double]* %3, [2000 x double]* %4, [2000 x double]* %5) #0 !dbg !119 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca [2000 x double]*, align 8
  %11 = alloca [2000 x double]*, align 8
  %12 = alloca [2000 x double]*, align 8
  %13 = alloca %struct.ident_t, align 8
  %14 = bitcast %struct.ident_t* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %14, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @3 to i8*), i64 16, i1 false)
  call void @llvm.dbg.value(metadata i32 %0, metadata !123, metadata !DIExpression()), !dbg !129
  store i32 %0, i32* %7, align 4, !tbaa !40
  call void @llvm.dbg.value(metadata i32 %1, metadata !124, metadata !DIExpression()), !dbg !129
  store i32 %1, i32* %8, align 4, !tbaa !40
  call void @llvm.dbg.value(metadata double %2, metadata !125, metadata !DIExpression()), !dbg !129
  store double %2, double* %9, align 8, !tbaa !44
  call void @llvm.dbg.value(metadata [2000 x double]* %3, metadata !126, metadata !DIExpression()), !dbg !129
  store [2000 x double]* %3, [2000 x double]** %10, align 8, !tbaa !46
  call void @llvm.dbg.value(metadata [2000 x double]* %4, metadata !127, metadata !DIExpression()), !dbg !129
  store [2000 x double]* %4, [2000 x double]** %11, align 8, !tbaa !46
  call void @llvm.dbg.value(metadata [2000 x double]* %5, metadata !128, metadata !DIExpression()), !dbg !129
  store [2000 x double]* %5, [2000 x double]** %12, align 8, !tbaa !46
  %15 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %13, i64 0, i32 4, !dbg !130
  store i8* getelementptr inbounds ([93 x i8], [93 x i8]* @4, i64 0, i64 0), i8** %15, align 8, !dbg !130, !tbaa !49
  call void @llvm.dbg.value(metadata i32* %7, metadata !123, metadata !DIExpression(DW_OP_deref)), !dbg !129
  call void @llvm.dbg.value(metadata i32* %8, metadata !124, metadata !DIExpression(DW_OP_deref)), !dbg !129
  call void @llvm.dbg.value(metadata double* %9, metadata !125, metadata !DIExpression(DW_OP_deref)), !dbg !129
  call void @llvm.dbg.value(metadata [2000 x double]** %10, metadata !126, metadata !DIExpression(DW_OP_deref)), !dbg !129
  call void @llvm.dbg.value(metadata [2000 x double]** %11, metadata !127, metadata !DIExpression(DW_OP_deref)), !dbg !129
  call void @llvm.dbg.value(metadata [2000 x double]** %12, metadata !128, metadata !DIExpression(DW_OP_deref)), !dbg !129
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %13, i32 6, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, [2000 x double]**, double*, [2000 x double]**, [2000 x double]**)* @.omp_outlined..2 to void (i32*, i32*, ...)*), i32* nonnull %7, i32* nonnull %8, [2000 x double]** nonnull %10, double* nonnull %9, [2000 x double]** nonnull %11, [2000 x double]** nonnull %12) #8, !dbg !130
  ret void, !dbg !131
}

declare dso_local void @__kmpc_for_static_init_8(%struct.ident_t*, i32, i32, i32*, i64*, i64*, i64*, i64, i64) local_unnamed_addr

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined..2(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture readonly dereferenceable(4) %2, i32* nocapture readonly dereferenceable(4) %3, [2000 x double]** nocapture readonly dereferenceable(8) %4, double* nocapture readonly dereferenceable(8) %5, [2000 x double]** nocapture readonly dereferenceable(8) %6, [2000 x double]** nocapture readonly dereferenceable(8) %7) #2 !dbg !132 {
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ident_t, align 8
  call void @llvm.dbg.value(metadata i32* %0, metadata !136, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.value(metadata i32* %1, metadata !137, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.value(metadata i32* %2, metadata !138, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.value(metadata i32* %3, metadata !139, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.value(metadata [2000 x double]** %4, metadata !140, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.value(metadata double* %5, metadata !141, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.value(metadata [2000 x double]** %6, metadata !142, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.value(metadata [2000 x double]** %7, metadata !143, metadata !DIExpression()), !dbg !144
  %14 = load i32, i32* %2, align 4, !dbg !145, !tbaa !40
  %15 = bitcast %struct.ident_t* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %15)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %15, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @0 to i8*), i64 24, i1 false) #8, !noalias !146
  call void @llvm.dbg.value(metadata i32* %0, metadata !149, metadata !DIExpression()) #8, !dbg !171
  call void @llvm.dbg.value(metadata i32* undef, metadata !152, metadata !DIExpression()) #8, !dbg !171
  call void @llvm.dbg.value(metadata i32* %3, metadata !154, metadata !DIExpression()) #8, !dbg !171
  call void @llvm.dbg.value(metadata [2000 x double]** %4, metadata !155, metadata !DIExpression()) #8, !dbg !171
  call void @llvm.dbg.value(metadata double* %5, metadata !156, metadata !DIExpression()) #8, !dbg !171
  call void @llvm.dbg.value(metadata [2000 x double]** %6, metadata !157, metadata !DIExpression()) #8, !dbg !171
  call void @llvm.dbg.value(metadata [2000 x double]** %7, metadata !158, metadata !DIExpression()) #8, !dbg !171
  call void @llvm.dbg.value(metadata i32 %14, metadata !161, metadata !DIExpression()) #8, !dbg !171
  call void @llvm.dbg.value(metadata i32 %14, metadata !161, metadata !DIExpression()) #8, !dbg !171
  %16 = sext i32 %14 to i64, !dbg !173
  %17 = mul nsw i64 %16, %16, !dbg !174
  %18 = add nsw i64 %17, -1, !dbg !174
  call void @llvm.dbg.value(metadata i64 %18, metadata !162, metadata !DIExpression()) #8, !dbg !171
  call void @llvm.dbg.value(metadata i32 0, metadata !163, metadata !DIExpression()) #8, !dbg !171
  call void @llvm.dbg.value(metadata i32 0, metadata !164, metadata !DIExpression()) #8, !dbg !171
  %19 = icmp sgt i32 %14, 0, !dbg !173
  br i1 %19, label %20, label %74, !dbg !175

20:                                               ; preds = %8
  %21 = bitcast i64* %9 to i8*, !dbg !173
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %21) #8, !dbg !173, !noalias !146
  call void @llvm.dbg.value(metadata i64 0, metadata !165, metadata !DIExpression()) #8, !dbg !171
  store i64 0, i64* %9, align 8, !dbg !176, !tbaa !177, !noalias !146
  %22 = bitcast i64* %10 to i8*, !dbg !173
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %22) #8, !dbg !173, !noalias !146
  call void @llvm.dbg.value(metadata i64 %18, metadata !166, metadata !DIExpression()) #8, !dbg !171
  store i64 %18, i64* %10, align 8, !dbg !176, !tbaa !177, !noalias !146
  %23 = bitcast i64* %11 to i8*, !dbg !173
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #8, !dbg !173, !noalias !146
  call void @llvm.dbg.value(metadata i64 1, metadata !167, metadata !DIExpression()) #8, !dbg !171
  store i64 1, i64* %11, align 8, !dbg !176, !tbaa !177, !noalias !146
  %24 = bitcast i32* %12 to i8*, !dbg !173
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24) #8, !dbg !173, !noalias !146
  call void @llvm.dbg.value(metadata i32 0, metadata !168, metadata !DIExpression()) #8, !dbg !171
  store i32 0, i32* %12, align 4, !dbg !176, !tbaa !40, !noalias !146
  %25 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %13, i64 0, i32 4, !dbg !173
  store i8* getelementptr inbounds ([93 x i8], [93 x i8]* @4, i64 0, i64 0), i8** %25, align 8, !dbg !173, !tbaa !49, !noalias !146
  %26 = load i32, i32* %0, align 4, !dbg !173, !tbaa !40, !alias.scope !146
  call void @llvm.dbg.value(metadata i64* %9, metadata !165, metadata !DIExpression(DW_OP_deref)) #8, !dbg !171
  call void @llvm.dbg.value(metadata i64* %10, metadata !166, metadata !DIExpression(DW_OP_deref)) #8, !dbg !171
  call void @llvm.dbg.value(metadata i64* %11, metadata !167, metadata !DIExpression(DW_OP_deref)) #8, !dbg !171
  call void @llvm.dbg.value(metadata i32* %12, metadata !168, metadata !DIExpression(DW_OP_deref)) #8, !dbg !171
  call void @__kmpc_for_static_init_8(%struct.ident_t* nonnull %13, i32 %26, i32 34, i32* nonnull %12, i64* nonnull %9, i64* nonnull %10, i64* nonnull %11, i64 1, i64 1) #8, !dbg !173, !noalias !146
  %27 = load i64, i64* %10, align 8, !dbg !176, !tbaa !177, !noalias !146
  call void @llvm.dbg.value(metadata i64 %27, metadata !166, metadata !DIExpression()) #8, !dbg !171
  %28 = icmp slt i64 %27, %17, !dbg !176
  %29 = select i1 %28, i64 %27, i64 %18, !dbg !176
  call void @llvm.dbg.value(metadata i64 %29, metadata !166, metadata !DIExpression()) #8, !dbg !171
  store i64 %29, i64* %10, align 8, !dbg !176, !tbaa !177, !noalias !146
  %30 = load i64, i64* %9, align 8, !dbg !176, !tbaa !177, !noalias !146
  call void @llvm.dbg.value(metadata i64 %30, metadata !165, metadata !DIExpression()) #8, !dbg !171
  call void @llvm.dbg.value(metadata i64 %30, metadata !159, metadata !DIExpression()) #8, !dbg !171
  call void @llvm.dbg.value(metadata i64 %29, metadata !166, metadata !DIExpression()) #8, !dbg !171
  %31 = icmp sgt i64 %30, %29, !dbg !173
  br i1 %31, label %73, label %32, !dbg !173

32:                                               ; preds = %20
  %33 = load i32, i32* %3, align 4, !dbg !179, !noalias !146
  %34 = icmp sgt i32 %33, 0, !dbg !179
  %35 = load [2000 x double]*, [2000 x double]** %6, align 8, !dbg !179, !noalias !146
  %36 = load [2000 x double]*, [2000 x double]** %7, align 8, !dbg !179, !noalias !146
  %37 = load [2000 x double]*, [2000 x double]** %4, align 8, !dbg !179, !noalias !146
  br i1 %34, label %38, label %73, !dbg !173

38:                                               ; preds = %32
  %39 = zext i32 %33 to i64, !dbg !179
  br label %40, !dbg !181

40:                                               ; preds = %70, %38
  %41 = phi i64 [ %71, %70 ], [ %30, %38 ]
  call void @llvm.dbg.value(metadata i64 %41, metadata !159, metadata !DIExpression()) #8, !dbg !171
  %42 = sdiv i64 %41, %16, !dbg !182
  call void @llvm.dbg.value(metadata i64 %42, metadata !163, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !171
  %43 = mul nsw i64 %42, %16, !dbg !182
  %44 = srem i64 %41, %16
  call void @llvm.dbg.value(metadata i64 %44, metadata !164, metadata !DIExpression(DW_OP_LLVM_convert, 64, DW_ATE_unsigned, DW_OP_LLVM_convert, 32, DW_ATE_unsigned, DW_OP_stack_value)) #8, !dbg !171
  call void @llvm.dbg.value(metadata i32 0, metadata !169, metadata !DIExpression()) #8, !dbg !183
  %45 = shl i64 %42, 32, !dbg !179
  %46 = ashr exact i64 %45, 32, !dbg !179
  %47 = shl i64 %44, 32, !dbg !179
  %48 = ashr exact i64 %47, 32, !dbg !179
  %49 = getelementptr inbounds [2000 x double], [2000 x double]* %37, i64 %46, i64 %48, !dbg !179
  %50 = load double, double* %49, align 8, !dbg !184, !tbaa !44, !noalias !146
  br label %51, !dbg !185

51:                                               ; preds = %51, %40
  %52 = phi double [ %50, %40 ], [ %67, %51 ], !dbg !184
  %53 = phi i64 [ 0, %40 ], [ %68, %51 ]
  call void @llvm.dbg.value(metadata i64 %53, metadata !169, metadata !DIExpression()) #8, !dbg !183
  %54 = load double, double* %5, align 8, !dbg !186, !tbaa !44, !noalias !146
  %55 = getelementptr inbounds [2000 x double], [2000 x double]* %35, i64 %46, i64 %53, !dbg !187
  %56 = load double, double* %55, align 8, !dbg !187, !tbaa !44, !noalias !146
  %57 = getelementptr inbounds [2000 x double], [2000 x double]* %36, i64 %48, i64 %53, !dbg !188
  %58 = load double, double* %57, align 8, !dbg !188, !tbaa !44, !noalias !146
  %59 = fmul double %56, %58, !dbg !189
  %60 = getelementptr inbounds [2000 x double], [2000 x double]* %36, i64 %46, i64 %53, !dbg !190
  %61 = load double, double* %60, align 8, !dbg !190, !tbaa !44, !noalias !146
  %62 = getelementptr inbounds [2000 x double], [2000 x double]* %35, i64 %48, i64 %53, !dbg !191
  %63 = load double, double* %62, align 8, !dbg !191, !tbaa !44, !noalias !146
  %64 = fmul double %61, %63, !dbg !192
  %65 = fadd double %59, %64, !dbg !193
  %66 = fmul double %54, %65, !dbg !194
  %67 = fadd double %52, %66, !dbg !184
  store double %67, double* %49, align 8, !dbg !184, !tbaa !44, !noalias !146
  %68 = add nuw nsw i64 %53, 1, !dbg !195
  call void @llvm.dbg.value(metadata i64 %68, metadata !169, metadata !DIExpression()) #8, !dbg !183
  %69 = icmp eq i64 %68, %39, !dbg !196
  br i1 %69, label %70, label %51, !dbg !185, !llvm.loop !197

70:                                               ; preds = %51
  %71 = add nsw i64 %41, 1, !dbg !173
  call void @llvm.dbg.value(metadata i64 %71, metadata !159, metadata !DIExpression()) #8, !dbg !171
  call void @llvm.dbg.value(metadata i64 %29, metadata !166, metadata !DIExpression()) #8, !dbg !171
  %72 = icmp slt i64 %41, %29, !dbg !173
  br i1 %72, label %40, label %73, !dbg !173, !llvm.loop !199

73:                                               ; preds = %70, %32, %20
  store i8* getelementptr inbounds ([94 x i8], [94 x i8]* @5, i64 0, i64 0), i8** %25, align 8, !dbg !181, !tbaa !49, !noalias !146
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull %13, i32 %26) #8, !dbg !181, !noalias !146
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24) #8, !dbg !181, !noalias !146
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #8, !dbg !181, !noalias !146
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22) #8, !dbg !181, !noalias !146
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #8, !dbg !181, !noalias !146
  br label %74, !dbg !181

74:                                               ; preds = %8, %73
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %15), !dbg !201
  ret void, !dbg !145
}

; Function Attrs: nounwind uwtable
define internal void @kernel_syr2k(i32 %0, i32 %1, double %2, double %3, [2000 x double]* %4, [2000 x double]* %5, [2000 x double]* %6) #0 !dbg !202 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca [2000 x double]*, align 8
  %12 = alloca [2000 x double]*, align 8
  %13 = alloca [2000 x double]*, align 8
  %14 = alloca %struct.ident_t, align 8
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca [2000 x double]*, align 8
  %18 = alloca %struct.ident_t, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !206, metadata !DIExpression()), !dbg !213
  call void @llvm.dbg.value(metadata i32 %1, metadata !207, metadata !DIExpression()), !dbg !213
  call void @llvm.dbg.value(metadata double %2, metadata !208, metadata !DIExpression()), !dbg !213
  call void @llvm.dbg.value(metadata double %3, metadata !209, metadata !DIExpression()), !dbg !213
  call void @llvm.dbg.value(metadata [2000 x double]* %4, metadata !210, metadata !DIExpression()), !dbg !213
  call void @llvm.dbg.value(metadata [2000 x double]* %5, metadata !211, metadata !DIExpression()), !dbg !213
  call void @llvm.dbg.value(metadata [2000 x double]* %6, metadata !212, metadata !DIExpression()), !dbg !213
  tail call void (...) @polybench_timer_start() #8, !dbg !214
  %19 = bitcast i32* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19)
  %20 = bitcast double* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %20)
  %21 = bitcast [2000 x double]** %17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %21)
  %22 = bitcast %struct.ident_t* %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %22)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %22, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @3 to i8*), i64 16, i1 false) #8
  call void @llvm.dbg.value(metadata i32 %0, metadata !36, metadata !DIExpression()) #8, !dbg !215
  store i32 %0, i32* %15, align 4, !tbaa !40
  call void @llvm.dbg.value(metadata double %3, metadata !37, metadata !DIExpression()) #8, !dbg !215
  store double %3, double* %16, align 8, !tbaa !44
  call void @llvm.dbg.value(metadata [2000 x double]* %4, metadata !38, metadata !DIExpression()) #8, !dbg !215
  store [2000 x double]* %4, [2000 x double]** %17, align 8, !tbaa !46
  %23 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %18, i64 0, i32 4, !dbg !217
  store i8* getelementptr inbounds ([93 x i8], [93 x i8]* @1, i64 0, i64 0), i8** %23, align 8, !dbg !217, !tbaa !49
  call void @llvm.dbg.value(metadata i32* %15, metadata !36, metadata !DIExpression(DW_OP_deref)) #8, !dbg !215
  call void @llvm.dbg.value(metadata double* %16, metadata !37, metadata !DIExpression(DW_OP_deref)) #8, !dbg !215
  call void @llvm.dbg.value(metadata [2000 x double]** %17, metadata !38, metadata !DIExpression(DW_OP_deref)) #8, !dbg !215
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %18, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [2000 x double]**, double*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %15, [2000 x double]** nonnull %17, double* nonnull %16) #8, !dbg !217
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19), !dbg !218
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %20), !dbg !218
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21), !dbg !218
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %22), !dbg !218
  call void (...) @polybench_timer_stop() #8, !dbg !219
  call void (...) @polybench_timer_print() #8, !dbg !220
  call void (...) @polybench_timer_start() #8, !dbg !221
  %24 = bitcast i32* %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %24)
  %25 = bitcast i32* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25)
  %26 = bitcast double* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26)
  %27 = bitcast [2000 x double]** %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %27)
  %28 = bitcast [2000 x double]** %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %28)
  %29 = bitcast [2000 x double]** %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %29)
  %30 = bitcast %struct.ident_t* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %30)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %30, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @3 to i8*), i64 16, i1 false) #8
  call void @llvm.dbg.value(metadata i32 %0, metadata !123, metadata !DIExpression()) #8, !dbg !222
  store i32 %0, i32* %8, align 4, !tbaa !40
  call void @llvm.dbg.value(metadata i32 %1, metadata !124, metadata !DIExpression()) #8, !dbg !222
  store i32 %1, i32* %9, align 4, !tbaa !40
  call void @llvm.dbg.value(metadata double %2, metadata !125, metadata !DIExpression()) #8, !dbg !222
  store double %2, double* %10, align 8, !tbaa !44
  call void @llvm.dbg.value(metadata [2000 x double]* %4, metadata !126, metadata !DIExpression()) #8, !dbg !222
  store [2000 x double]* %4, [2000 x double]** %11, align 8, !tbaa !46
  call void @llvm.dbg.value(metadata [2000 x double]* %5, metadata !127, metadata !DIExpression()) #8, !dbg !222
  store [2000 x double]* %5, [2000 x double]** %12, align 8, !tbaa !46
  call void @llvm.dbg.value(metadata [2000 x double]* %6, metadata !128, metadata !DIExpression()) #8, !dbg !222
  store [2000 x double]* %6, [2000 x double]** %13, align 8, !tbaa !46
  %31 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %14, i64 0, i32 4, !dbg !224
  store i8* getelementptr inbounds ([93 x i8], [93 x i8]* @4, i64 0, i64 0), i8** %31, align 8, !dbg !224, !tbaa !49
  call void @llvm.dbg.value(metadata i32* %8, metadata !123, metadata !DIExpression(DW_OP_deref)) #8, !dbg !222
  call void @llvm.dbg.value(metadata i32* %9, metadata !124, metadata !DIExpression(DW_OP_deref)) #8, !dbg !222
  call void @llvm.dbg.value(metadata double* %10, metadata !125, metadata !DIExpression(DW_OP_deref)) #8, !dbg !222
  call void @llvm.dbg.value(metadata [2000 x double]** %11, metadata !126, metadata !DIExpression(DW_OP_deref)) #8, !dbg !222
  call void @llvm.dbg.value(metadata [2000 x double]** %12, metadata !127, metadata !DIExpression(DW_OP_deref)) #8, !dbg !222
  call void @llvm.dbg.value(metadata [2000 x double]** %13, metadata !128, metadata !DIExpression(DW_OP_deref)) #8, !dbg !222
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %14, i32 6, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, [2000 x double]**, double*, [2000 x double]**, [2000 x double]**)* @.omp_outlined..2 to void (i32*, i32*, ...)*), i32* nonnull %8, i32* nonnull %9, [2000 x double]** nonnull %11, double* nonnull %10, [2000 x double]** nonnull %12, [2000 x double]** nonnull %13) #8, !dbg !224
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %24), !dbg !225
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25), !dbg !225
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26), !dbg !225
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %27), !dbg !225
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %28), !dbg !225
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %29), !dbg !225
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %30), !dbg !225
  call void (...) @polybench_timer_stop() #8, !dbg !226
  call void (...) @polybench_timer_print() #8, !dbg !227
  ret void, !dbg !228
}

declare !dbg !4 dso_local void @polybench_timer_start(...) local_unnamed_addr #3

declare !dbg !8 dso_local void @polybench_timer_stop(...) local_unnamed_addr #3

declare !dbg !9 dso_local void @polybench_timer_print(...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %0, i8** nocapture readonly %1) local_unnamed_addr #0 !dbg !229 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca double, align 8
  %6 = alloca [2000 x double]*, align 8
  %7 = alloca [2000 x double]*, align 8
  %8 = alloca [2000 x double]*, align 8
  %9 = alloca %struct.ident_t, align 8
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca [2000 x double]*, align 8
  %13 = alloca %struct.ident_t, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !236, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i8** %1, metadata !237, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 2000, metadata !238, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 2000, metadata !239, metadata !DIExpression()), !dbg !245
  %14 = tail call i8* @polybench_alloc_data(i64 4000000, i32 8) #8, !dbg !246
  call void @llvm.dbg.value(metadata i8* %14, metadata !242, metadata !DIExpression()), !dbg !245
  %15 = tail call i8* @polybench_alloc_data(i64 4000000, i32 8) #8, !dbg !247
  call void @llvm.dbg.value(metadata i8* %15, metadata !243, metadata !DIExpression()), !dbg !245
  %16 = tail call i8* @polybench_alloc_data(i64 4000000, i32 8) #8, !dbg !248
  call void @llvm.dbg.value(metadata i8* %16, metadata !244, metadata !DIExpression()), !dbg !245
  %17 = bitcast i8* %15 to [2000 x double]*, !dbg !249
  %18 = bitcast i8* %16 to [2000 x double]*, !dbg !250
  call void @llvm.dbg.value(metadata i32 2000, metadata !251, metadata !DIExpression()), !dbg !265
  call void @llvm.dbg.value(metadata i32 2000, metadata !257, metadata !DIExpression()), !dbg !265
  call void @llvm.dbg.value(metadata [2000 x double]* %44, metadata !260, metadata !DIExpression()), !dbg !265
  call void @llvm.dbg.value(metadata [2000 x double]* %17, metadata !261, metadata !DIExpression()), !dbg !265
  call void @llvm.dbg.value(metadata [2000 x double]* %18, metadata !262, metadata !DIExpression()), !dbg !265
  call void @llvm.dbg.value(metadata i32 0, metadata !263, metadata !DIExpression()), !dbg !265
  br label %19, !dbg !267

19:                                               ; preds = %40, %2
  %20 = phi i64 [ 0, %2 ], [ %41, %40 ]
  call void @llvm.dbg.value(metadata i64 %20, metadata !263, metadata !DIExpression()), !dbg !265
  call void @llvm.dbg.value(metadata i32 0, metadata !264, metadata !DIExpression()), !dbg !265
  %21 = trunc i64 %20 to i32, !dbg !269
  %22 = sitofp i32 %21 to double, !dbg !269
  br label %23, !dbg !274

23:                                               ; preds = %23, %19
  %24 = phi i64 [ 0, %19 ], [ %38, %23 ]
  call void @llvm.dbg.value(metadata i64 %24, metadata !264, metadata !DIExpression()), !dbg !265
  %25 = trunc i64 %24 to i32, !dbg !275
  %26 = sitofp i32 %25 to double, !dbg !275
  %27 = fmul double %22, %26, !dbg !276
  %28 = fdiv double %27, 2.000000e+03, !dbg !277
  %29 = getelementptr inbounds [2000 x double], [2000 x double]* %17, i64 %20, i64 %24, !dbg !278
  store double %28, double* %29, align 8, !dbg !279, !tbaa !44
  %30 = getelementptr inbounds [2000 x double], [2000 x double]* %18, i64 %20, i64 %24, !dbg !280
  store double %28, double* %30, align 8, !dbg !281, !tbaa !44
  %31 = or i64 %24, 1, !dbg !282
  call void @llvm.dbg.value(metadata i64 %31, metadata !264, metadata !DIExpression()), !dbg !265
  %32 = trunc i64 %31 to i32, !dbg !275
  %33 = sitofp i32 %32 to double, !dbg !275
  %34 = fmul double %22, %33, !dbg !276
  %35 = fdiv double %34, 2.000000e+03, !dbg !277
  %36 = getelementptr inbounds [2000 x double], [2000 x double]* %17, i64 %20, i64 %31, !dbg !278
  store double %35, double* %36, align 8, !dbg !279, !tbaa !44
  %37 = getelementptr inbounds [2000 x double], [2000 x double]* %18, i64 %20, i64 %31, !dbg !280
  store double %35, double* %37, align 8, !dbg !281, !tbaa !44
  %38 = add nuw nsw i64 %24, 2, !dbg !282
  call void @llvm.dbg.value(metadata i64 %38, metadata !264, metadata !DIExpression()), !dbg !265
  %39 = icmp eq i64 %38, 2000, !dbg !283
  br i1 %39, label %40, label %23, !dbg !274, !llvm.loop !284

40:                                               ; preds = %23
  %41 = add nuw nsw i64 %20, 1, !dbg !286
  call void @llvm.dbg.value(metadata i64 %41, metadata !263, metadata !DIExpression()), !dbg !265
  %42 = icmp eq i64 %41, 2000, !dbg !287
  br i1 %42, label %43, label %19, !dbg !267, !llvm.loop !288

43:                                               ; preds = %40
  %44 = bitcast i8* %14 to [2000 x double]*, !dbg !290
  br label %45, !dbg !291

45:                                               ; preds = %43, %64
  %46 = phi i64 [ %65, %64 ], [ 0, %43 ]
  call void @llvm.dbg.value(metadata i64 %46, metadata !263, metadata !DIExpression()), !dbg !265
  call void @llvm.dbg.value(metadata i32 0, metadata !264, metadata !DIExpression()), !dbg !265
  %47 = trunc i64 %46 to i32, !dbg !293
  %48 = sitofp i32 %47 to double, !dbg !293
  br label %49, !dbg !297

49:                                               ; preds = %49, %45
  %50 = phi i64 [ 0, %45 ], [ %62, %49 ]
  call void @llvm.dbg.value(metadata i64 %50, metadata !264, metadata !DIExpression()), !dbg !265
  %51 = trunc i64 %50 to i32, !dbg !298
  %52 = sitofp i32 %51 to double, !dbg !298
  %53 = fmul double %48, %52, !dbg !299
  %54 = fdiv double %53, 2.000000e+03, !dbg !300
  %55 = getelementptr inbounds [2000 x double], [2000 x double]* %44, i64 %46, i64 %50, !dbg !301
  store double %54, double* %55, align 8, !dbg !302, !tbaa !44
  %56 = or i64 %50, 1, !dbg !303
  call void @llvm.dbg.value(metadata i64 %56, metadata !264, metadata !DIExpression()), !dbg !265
  %57 = trunc i64 %56 to i32, !dbg !298
  %58 = sitofp i32 %57 to double, !dbg !298
  %59 = fmul double %48, %58, !dbg !299
  %60 = fdiv double %59, 2.000000e+03, !dbg !300
  %61 = getelementptr inbounds [2000 x double], [2000 x double]* %44, i64 %46, i64 %56, !dbg !301
  store double %60, double* %61, align 8, !dbg !302, !tbaa !44
  %62 = add nuw nsw i64 %50, 2, !dbg !303
  call void @llvm.dbg.value(metadata i64 %62, metadata !264, metadata !DIExpression()), !dbg !265
  %63 = icmp eq i64 %62, 2000, !dbg !304
  br i1 %63, label %64, label %49, !dbg !297, !llvm.loop !305

64:                                               ; preds = %49
  %65 = add nuw nsw i64 %46, 1, !dbg !307
  call void @llvm.dbg.value(metadata i64 %65, metadata !263, metadata !DIExpression()), !dbg !265
  %66 = icmp eq i64 %65, 2000, !dbg !308
  br i1 %66, label %67, label %45, !dbg !291, !llvm.loop !309

67:                                               ; preds = %64
  call void @llvm.dbg.value(metadata double 3.241200e+04, metadata !240, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata double 2.123000e+03, metadata !241, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 2000, metadata !206, metadata !DIExpression()) #8, !dbg !311
  call void @llvm.dbg.value(metadata i32 2000, metadata !207, metadata !DIExpression()) #8, !dbg !311
  call void @llvm.dbg.value(metadata double 3.241200e+04, metadata !208, metadata !DIExpression()) #8, !dbg !311
  call void @llvm.dbg.value(metadata double 2.123000e+03, metadata !209, metadata !DIExpression()) #8, !dbg !311
  call void @llvm.dbg.value(metadata [2000 x double]* %44, metadata !210, metadata !DIExpression()) #8, !dbg !311
  call void @llvm.dbg.value(metadata [2000 x double]* %17, metadata !211, metadata !DIExpression()) #8, !dbg !311
  call void @llvm.dbg.value(metadata [2000 x double]* %18, metadata !212, metadata !DIExpression()) #8, !dbg !311
  tail call void (...) @polybench_timer_start() #8, !dbg !313
  %68 = bitcast i32* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %68) #8
  %69 = bitcast double* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %69) #8
  %70 = bitcast [2000 x double]** %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %70) #8
  %71 = bitcast %struct.ident_t* %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %71) #8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %71, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @3 to i8*), i64 16, i1 false) #8
  call void @llvm.dbg.value(metadata i32 2000, metadata !36, metadata !DIExpression()) #8, !dbg !314
  store i32 2000, i32* %10, align 4, !tbaa !40
  call void @llvm.dbg.value(metadata double 2.123000e+03, metadata !37, metadata !DIExpression()) #8, !dbg !314
  store double 2.123000e+03, double* %11, align 8, !tbaa !44
  call void @llvm.dbg.value(metadata [2000 x double]* %44, metadata !38, metadata !DIExpression()) #8, !dbg !314
  %72 = bitcast [2000 x double]** %12 to i8**
  store i8* %14, i8** %72, align 8, !tbaa !46
  %73 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %13, i64 0, i32 4, !dbg !316
  store i8* getelementptr inbounds ([93 x i8], [93 x i8]* @1, i64 0, i64 0), i8** %73, align 8, !dbg !316, !tbaa !49
  call void @llvm.dbg.value(metadata i32* %10, metadata !36, metadata !DIExpression(DW_OP_deref)) #8, !dbg !314
  call void @llvm.dbg.value(metadata double* %11, metadata !37, metadata !DIExpression(DW_OP_deref)) #8, !dbg !314
  call void @llvm.dbg.value(metadata [2000 x double]** %12, metadata !38, metadata !DIExpression(DW_OP_deref)) #8, !dbg !314
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %13, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [2000 x double]**, double*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %10, [2000 x double]** nonnull %12, double* nonnull %11) #8, !dbg !316
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %68) #8, !dbg !317
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %69) #8, !dbg !317
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %70) #8, !dbg !317
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %71) #8, !dbg !317
  call void (...) @polybench_timer_stop() #8, !dbg !318
  call void (...) @polybench_timer_print() #8, !dbg !319
  call void (...) @polybench_timer_start() #8, !dbg !320
  %74 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %74) #8
  %75 = bitcast i32* %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %75) #8
  %76 = bitcast double* %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %76) #8
  %77 = bitcast [2000 x double]** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %77) #8
  %78 = bitcast [2000 x double]** %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %78) #8
  %79 = bitcast [2000 x double]** %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %79) #8
  %80 = bitcast %struct.ident_t* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %80) #8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %80, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @3 to i8*), i64 16, i1 false) #8
  call void @llvm.dbg.value(metadata i32 2000, metadata !123, metadata !DIExpression()) #8, !dbg !321
  store i32 2000, i32* %3, align 4, !tbaa !40
  call void @llvm.dbg.value(metadata i32 2000, metadata !124, metadata !DIExpression()) #8, !dbg !321
  store i32 2000, i32* %4, align 4, !tbaa !40
  call void @llvm.dbg.value(metadata double 3.241200e+04, metadata !125, metadata !DIExpression()) #8, !dbg !321
  store double 3.241200e+04, double* %5, align 8, !tbaa !44
  call void @llvm.dbg.value(metadata [2000 x double]* %44, metadata !126, metadata !DIExpression()) #8, !dbg !321
  %81 = bitcast [2000 x double]** %6 to i8**
  store i8* %14, i8** %81, align 8, !tbaa !46
  call void @llvm.dbg.value(metadata [2000 x double]* %17, metadata !127, metadata !DIExpression()) #8, !dbg !321
  %82 = bitcast [2000 x double]** %7 to i8**
  store i8* %15, i8** %82, align 8, !tbaa !46
  call void @llvm.dbg.value(metadata [2000 x double]* %18, metadata !128, metadata !DIExpression()) #8, !dbg !321
  %83 = bitcast [2000 x double]** %8 to i8**
  store i8* %16, i8** %83, align 8, !tbaa !46
  %84 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %9, i64 0, i32 4, !dbg !323
  store i8* getelementptr inbounds ([93 x i8], [93 x i8]* @4, i64 0, i64 0), i8** %84, align 8, !dbg !323, !tbaa !49
  call void @llvm.dbg.value(metadata i32* %3, metadata !123, metadata !DIExpression(DW_OP_deref)) #8, !dbg !321
  call void @llvm.dbg.value(metadata i32* %4, metadata !124, metadata !DIExpression(DW_OP_deref)) #8, !dbg !321
  call void @llvm.dbg.value(metadata double* %5, metadata !125, metadata !DIExpression(DW_OP_deref)) #8, !dbg !321
  call void @llvm.dbg.value(metadata [2000 x double]** %6, metadata !126, metadata !DIExpression(DW_OP_deref)) #8, !dbg !321
  call void @llvm.dbg.value(metadata [2000 x double]** %7, metadata !127, metadata !DIExpression(DW_OP_deref)) #8, !dbg !321
  call void @llvm.dbg.value(metadata [2000 x double]** %8, metadata !128, metadata !DIExpression(DW_OP_deref)) #8, !dbg !321
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %9, i32 6, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, [2000 x double]**, double*, [2000 x double]**, [2000 x double]**)* @.omp_outlined..2 to void (i32*, i32*, ...)*), i32* nonnull %3, i32* nonnull %4, [2000 x double]** nonnull %6, double* nonnull %5, [2000 x double]** nonnull %7, [2000 x double]** nonnull %8) #8, !dbg !323
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %74) #8, !dbg !324
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %75) #8, !dbg !324
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %76) #8, !dbg !324
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %77) #8, !dbg !324
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %78) #8, !dbg !324
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %79) #8, !dbg !324
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %80) #8, !dbg !324
  call void (...) @polybench_timer_stop() #8, !dbg !325
  call void (...) @polybench_timer_print() #8, !dbg !326
  %85 = icmp sgt i32 %0, 42, !dbg !327
  br i1 %85, label %86, label %115, !dbg !327

86:                                               ; preds = %67
  %87 = load i8*, i8** %1, align 8, !dbg !327, !tbaa !46
  %88 = load i8, i8* %87, align 1, !dbg !327
  %89 = icmp eq i8 %88, 0, !dbg !327
  br i1 %89, label %90, label %115, !dbg !329

90:                                               ; preds = %86, %109
  %91 = phi i64 [ %110, %109 ], [ 0, %86 ]
  call void @llvm.dbg.value(metadata i64 %91, metadata !330, metadata !DIExpression()) #8, !dbg !338
  call void @llvm.dbg.value(metadata i32 0, metadata !337, metadata !DIExpression()) #8, !dbg !338
  %92 = mul nuw nsw i64 %91, 2000, !dbg !340
  br label %93, !dbg !347

93:                                               ; preds = %106, %90
  %94 = phi i64 [ 0, %90 ], [ %107, %106 ]
  call void @llvm.dbg.value(metadata i64 %94, metadata !337, metadata !DIExpression()) #8, !dbg !338
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !348, !tbaa !46
  %96 = getelementptr inbounds [2000 x double], [2000 x double]* %44, i64 %91, i64 %94, !dbg !349
  %97 = load double, double* %96, align 8, !dbg !349, !tbaa !44
  %98 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %95, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), double %97) #9, !dbg !350
  %99 = add nuw nsw i64 %94, %92, !dbg !351
  %100 = trunc i64 %99 to i32, !dbg !352
  %101 = urem i32 %100, 20, !dbg !352
  %102 = icmp eq i32 %101, 0, !dbg !353
  br i1 %102, label %103, label %106, !dbg !354

103:                                              ; preds = %93
  %104 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !355, !tbaa !46
  %105 = call i32 @fputc(i32 10, %struct._IO_FILE* %104) #9, !dbg !356
  br label %106, !dbg !356

106:                                              ; preds = %103, %93
  %107 = add nuw nsw i64 %94, 1, !dbg !357
  call void @llvm.dbg.value(metadata i64 %107, metadata !337, metadata !DIExpression()) #8, !dbg !338
  %108 = icmp eq i64 %107, 2000, !dbg !358
  br i1 %108, label %109, label %93, !dbg !347, !llvm.loop !359

109:                                              ; preds = %106
  %110 = add nuw nsw i64 %91, 1, !dbg !361
  call void @llvm.dbg.value(metadata i64 %110, metadata !330, metadata !DIExpression()) #8, !dbg !338
  %111 = icmp eq i64 %110, 2000, !dbg !362
  br i1 %111, label %112, label %90, !dbg !363, !llvm.loop !364

112:                                              ; preds = %109
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !366, !tbaa !46
  %114 = call i32 @fputc(i32 10, %struct._IO_FILE* %113) #9, !dbg !367
  br label %115, !dbg !327

115:                                              ; preds = %86, %112, %67
  call void @free(i8* nonnull %14) #8, !dbg !368
  call void @free(i8* %15) #8, !dbg !369
  call void @free(i8* %16) #8, !dbg !370
  ret i32 0, !dbg !371
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
!1 = !DIFile(filename: "../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/syr2k/syr2k.c", directory: "/WAVE/users/unix/klor/ycho_lab/kimsong_lor/autotuning_tools/scripts")
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
!29 = distinct !DISubprogram(name: "kernel_p1", scope: !1, file: !1, line: 62, type: !30, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !35)
!30 = !DISubroutineType(types: !31)
!31 = !{null, !20, !12, !32}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 128000, elements: !34)
!34 = !{!14}
!35 = !{!36, !37, !38}
!36 = !DILocalVariable(name: "ni", arg: 1, scope: !29, file: !1, line: 62, type: !20)
!37 = !DILocalVariable(name: "beta", arg: 2, scope: !29, file: !1, line: 62, type: !12)
!38 = !DILocalVariable(name: "C", arg: 3, scope: !29, file: !1, line: 62, type: !32)
!39 = !DILocation(line: 0, scope: !29)
!40 = !{!41, !41, i64 0}
!41 = !{!"int", !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C/C++ TBAA"}
!44 = !{!45, !45, i64 0}
!45 = !{!"double", !42, i64 0}
!46 = !{!47, !47, i64 0}
!47 = !{!"any pointer", !42, i64 0}
!48 = !DILocation(line: 64, column: 1, scope: !29)
!49 = !{!50, !47, i64 16}
!50 = !{!"ident_t", !41, i64 0, !41, i64 4, !41, i64 8, !41, i64 12, !47, i64 16}
!51 = !DILocation(line: 68, column: 1, scope: !29)
!52 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 65, type: !53, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !62)
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
!73 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 65, type: !53, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !74)
!74 = !{!72, !75, !76, !77, !78, !79, !80, !80, !81, !82, !83, !84, !85, !81, !86}
!75 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !73, type: !55, flags: DIFlagArtificial)
!76 = !DILocalVariable(name: "ni", arg: 3, scope: !73, file: !1, line: 62, type: !59)
!77 = !DILocalVariable(name: "C", arg: 4, scope: !73, file: !1, line: 62, type: !60)
!78 = !DILocalVariable(name: "beta", arg: 5, scope: !73, file: !1, line: 62, type: !61)
!79 = !DILocalVariable(name: ".omp.iv", scope: !73, type: !20, flags: DIFlagArtificial)
!80 = !DILocalVariable(name: ".capture_expr.", scope: !73, type: !20, flags: DIFlagArtificial)
!81 = !DILocalVariable(name: "i", scope: !73, type: !20, flags: DIFlagArtificial)
!82 = !DILocalVariable(name: ".omp.lb", scope: !73, type: !20, flags: DIFlagArtificial)
!83 = !DILocalVariable(name: ".omp.ub", scope: !73, type: !20, flags: DIFlagArtificial)
!84 = !DILocalVariable(name: ".omp.stride", scope: !73, type: !20, flags: DIFlagArtificial)
!85 = !DILocalVariable(name: ".omp.is_last", scope: !73, type: !20, flags: DIFlagArtificial)
!86 = !DILocalVariable(name: "j", scope: !87, file: !1, line: 66, type: !20)
!87 = distinct !DILexicalBlock(scope: !73, file: !1, line: 66, column: 5)
!88 = !DILocation(line: 0, scope: !73, inlinedAt: !89)
!89 = distinct !DILocation(line: 65, column: 3, scope: !52)
!90 = !DILocation(line: 65, column: 23, scope: !73, inlinedAt: !89)
!91 = !DILocation(line: 65, column: 3, scope: !73, inlinedAt: !89)
!92 = !DILocation(line: 65, column: 8, scope: !73, inlinedAt: !89)
!93 = !DILocation(line: 0, scope: !94, inlinedAt: !89)
!94 = distinct !DILexicalBlock(scope: !87, file: !1, line: 66, column: 5)
!95 = !DILocation(line: 64, column: 1, scope: !73, inlinedAt: !89)
!96 = !DILocation(line: 0, scope: !87, inlinedAt: !89)
!97 = !DILocation(line: 66, column: 5, scope: !87, inlinedAt: !89)
!98 = !{!99}
!99 = distinct !{!99, !100}
!100 = distinct !{!100, !"LVerDomain"}
!101 = !DILocation(line: 66, column: 34, scope: !94, inlinedAt: !89)
!102 = !DILocation(line: 67, column: 7, scope: !94, inlinedAt: !89)
!103 = !DILocation(line: 67, column: 15, scope: !94, inlinedAt: !89)
!104 = !{!105}
!105 = distinct !{!105, !100}
!106 = !{!70, !99}
!107 = distinct !{!107, !97, !108, !109}
!108 = !DILocation(line: 67, column: 18, scope: !87, inlinedAt: !89)
!109 = !{!"llvm.loop.isvectorized", i32 1}
!110 = !DILocation(line: 67, column: 18, scope: !94, inlinedAt: !89)
!111 = !DILocation(line: 66, column: 23, scope: !94, inlinedAt: !89)
!112 = distinct !{!112, !97, !108, !109}
!113 = distinct !{!113, !95, !114}
!114 = !DILocation(line: 64, column: 25, scope: !73, inlinedAt: !89)
!115 = !DILocation(line: 67, column: 18, scope: !73, inlinedAt: !89)
!116 = !DILocation(line: 65, column: 3, scope: !52)
!117 = !{!118}
!118 = !{i64 2, i64 -1, i64 -1, i1 true}
!119 = distinct !DISubprogram(name: "kernel_p2", scope: !1, file: !1, line: 70, type: !120, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !122)
!120 = !DISubroutineType(types: !121)
!121 = !{null, !20, !20, !12, !32, !32, !32}
!122 = !{!123, !124, !125, !126, !127, !128}
!123 = !DILocalVariable(name: "ni", arg: 1, scope: !119, file: !1, line: 70, type: !20)
!124 = !DILocalVariable(name: "nj", arg: 2, scope: !119, file: !1, line: 70, type: !20)
!125 = !DILocalVariable(name: "alpha", arg: 3, scope: !119, file: !1, line: 70, type: !12)
!126 = !DILocalVariable(name: "C", arg: 4, scope: !119, file: !1, line: 70, type: !32)
!127 = !DILocalVariable(name: "A", arg: 5, scope: !119, file: !1, line: 70, type: !32)
!128 = !DILocalVariable(name: "B", arg: 6, scope: !119, file: !1, line: 70, type: !32)
!129 = !DILocation(line: 0, scope: !119)
!130 = !DILocation(line: 72, column: 1, scope: !119)
!131 = !DILocation(line: 77, column: 1, scope: !119)
!132 = distinct !DISubprogram(name: ".omp_outlined..2", scope: !1, file: !1, line: 73, type: !133, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !135)
!133 = !DISubroutineType(types: !134)
!134 = !{null, !55, !55, !59, !59, !60, !61, !60, !60}
!135 = !{!136, !137, !138, !139, !140, !141, !142, !143}
!136 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !132, type: !55, flags: DIFlagArtificial)
!137 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !132, type: !55, flags: DIFlagArtificial)
!138 = !DILocalVariable(name: "ni", arg: 3, scope: !132, type: !59, flags: DIFlagArtificial)
!139 = !DILocalVariable(name: "nj", arg: 4, scope: !132, type: !59, flags: DIFlagArtificial)
!140 = !DILocalVariable(name: "C", arg: 5, scope: !132, type: !60, flags: DIFlagArtificial)
!141 = !DILocalVariable(name: "alpha", arg: 6, scope: !132, type: !61, flags: DIFlagArtificial)
!142 = !DILocalVariable(name: "A", arg: 7, scope: !132, type: !60, flags: DIFlagArtificial)
!143 = !DILocalVariable(name: "B", arg: 8, scope: !132, type: !60, flags: DIFlagArtificial)
!144 = !DILocation(line: 0, scope: !132)
!145 = !DILocation(line: 73, column: 3, scope: !132)
!146 = !{!147}
!147 = distinct !{!147, !148, !".omp_outlined._debug__.1: argument 0"}
!148 = distinct !{!148, !".omp_outlined._debug__.1"}
!149 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !150, type: !55, flags: DIFlagArtificial)
!150 = distinct !DISubprogram(name: ".omp_outlined._debug__.1", scope: !1, file: !1, line: 73, type: !133, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !151)
!151 = !{!149, !152, !153, !154, !155, !156, !157, !158, !159, !161, !161, !162, !163, !164, !165, !166, !167, !168, !163, !164, !169}
!152 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !150, type: !55, flags: DIFlagArtificial)
!153 = !DILocalVariable(name: "ni", arg: 3, scope: !150, file: !1, line: 70, type: !59)
!154 = !DILocalVariable(name: "nj", arg: 4, scope: !150, file: !1, line: 70, type: !59)
!155 = !DILocalVariable(name: "C", arg: 5, scope: !150, file: !1, line: 70, type: !60)
!156 = !DILocalVariable(name: "alpha", arg: 6, scope: !150, file: !1, line: 70, type: !61)
!157 = !DILocalVariable(name: "A", arg: 7, scope: !150, file: !1, line: 70, type: !60)
!158 = !DILocalVariable(name: "B", arg: 8, scope: !150, file: !1, line: 70, type: !60)
!159 = !DILocalVariable(name: ".omp.iv", scope: !150, type: !160, flags: DIFlagArtificial)
!160 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!161 = !DILocalVariable(name: ".capture_expr.", scope: !150, type: !20, flags: DIFlagArtificial)
!162 = !DILocalVariable(name: ".capture_expr.", scope: !150, type: !160, flags: DIFlagArtificial)
!163 = !DILocalVariable(name: "i", scope: !150, type: !20, flags: DIFlagArtificial)
!164 = !DILocalVariable(name: "j", scope: !150, type: !20, flags: DIFlagArtificial)
!165 = !DILocalVariable(name: ".omp.lb", scope: !150, type: !160, flags: DIFlagArtificial)
!166 = !DILocalVariable(name: ".omp.ub", scope: !150, type: !160, flags: DIFlagArtificial)
!167 = !DILocalVariable(name: ".omp.stride", scope: !150, type: !160, flags: DIFlagArtificial)
!168 = !DILocalVariable(name: ".omp.is_last", scope: !150, type: !20, flags: DIFlagArtificial)
!169 = !DILocalVariable(name: "k", scope: !170, file: !1, line: 75, type: !20)
!170 = distinct !DILexicalBlock(scope: !150, file: !1, line: 75, column: 7)
!171 = !DILocation(line: 0, scope: !150, inlinedAt: !172)
!172 = distinct !DILocation(line: 73, column: 3, scope: !132)
!173 = !DILocation(line: 73, column: 3, scope: !150, inlinedAt: !172)
!174 = !DILocation(line: 74, column: 5, scope: !150, inlinedAt: !172)
!175 = !DILocation(line: 73, column: 16, scope: !150, inlinedAt: !172)
!176 = !DILocation(line: 73, column: 8, scope: !150, inlinedAt: !172)
!177 = !{!178, !178, i64 0}
!178 = !{!"long", !42, i64 0}
!179 = !DILocation(line: 0, scope: !180, inlinedAt: !172)
!180 = distinct !DILexicalBlock(scope: !170, file: !1, line: 75, column: 7)
!181 = !DILocation(line: 72, column: 1, scope: !150, inlinedAt: !172)
!182 = !DILocation(line: 73, column: 31, scope: !150, inlinedAt: !172)
!183 = !DILocation(line: 0, scope: !170, inlinedAt: !172)
!184 = !DILocation(line: 76, column: 17, scope: !180, inlinedAt: !172)
!185 = !DILocation(line: 75, column: 7, scope: !170, inlinedAt: !172)
!186 = !DILocation(line: 76, column: 20, scope: !180, inlinedAt: !172)
!187 = !DILocation(line: 76, column: 29, scope: !180, inlinedAt: !172)
!188 = !DILocation(line: 76, column: 39, scope: !180, inlinedAt: !172)
!189 = !DILocation(line: 76, column: 37, scope: !180, inlinedAt: !172)
!190 = !DILocation(line: 76, column: 49, scope: !180, inlinedAt: !172)
!191 = !DILocation(line: 76, column: 59, scope: !180, inlinedAt: !172)
!192 = !DILocation(line: 76, column: 57, scope: !180, inlinedAt: !172)
!193 = !DILocation(line: 76, column: 47, scope: !180, inlinedAt: !172)
!194 = !DILocation(line: 76, column: 26, scope: !180, inlinedAt: !172)
!195 = !DILocation(line: 75, column: 36, scope: !180, inlinedAt: !172)
!196 = !DILocation(line: 75, column: 25, scope: !180, inlinedAt: !172)
!197 = distinct !{!197, !185, !198}
!198 = !DILocation(line: 76, column: 66, scope: !170, inlinedAt: !172)
!199 = distinct !{!199, !181, !200}
!200 = !DILocation(line: 72, column: 37, scope: !150, inlinedAt: !172)
!201 = !DILocation(line: 76, column: 66, scope: !150, inlinedAt: !172)
!202 = distinct !DISubprogram(name: "kernel_syr2k", scope: !1, file: !1, line: 81, type: !203, scopeLine: 87, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !205)
!203 = !DISubroutineType(types: !204)
!204 = !{null, !20, !20, !12, !12, !32, !32, !32}
!205 = !{!206, !207, !208, !209, !210, !211, !212}
!206 = !DILocalVariable(name: "ni", arg: 1, scope: !202, file: !1, line: 81, type: !20)
!207 = !DILocalVariable(name: "nj", arg: 2, scope: !202, file: !1, line: 81, type: !20)
!208 = !DILocalVariable(name: "alpha", arg: 3, scope: !202, file: !1, line: 82, type: !12)
!209 = !DILocalVariable(name: "beta", arg: 4, scope: !202, file: !1, line: 83, type: !12)
!210 = !DILocalVariable(name: "C", arg: 5, scope: !202, file: !1, line: 84, type: !32)
!211 = !DILocalVariable(name: "A", arg: 6, scope: !202, file: !1, line: 85, type: !32)
!212 = !DILocalVariable(name: "B", arg: 7, scope: !202, file: !1, line: 86, type: !32)
!213 = !DILocation(line: 0, scope: !202)
!214 = !DILocation(line: 89, column: 3, scope: !202)
!215 = !DILocation(line: 0, scope: !29, inlinedAt: !216)
!216 = distinct !DILocation(line: 90, column: 3, scope: !202)
!217 = !DILocation(line: 64, column: 1, scope: !29, inlinedAt: !216)
!218 = !DILocation(line: 68, column: 1, scope: !29, inlinedAt: !216)
!219 = !DILocation(line: 91, column: 3, scope: !202)
!220 = !DILocation(line: 92, column: 3, scope: !202)
!221 = !DILocation(line: 94, column: 3, scope: !202)
!222 = !DILocation(line: 0, scope: !119, inlinedAt: !223)
!223 = distinct !DILocation(line: 95, column: 3, scope: !202)
!224 = !DILocation(line: 72, column: 1, scope: !119, inlinedAt: !223)
!225 = !DILocation(line: 77, column: 1, scope: !119, inlinedAt: !223)
!226 = !DILocation(line: 96, column: 3, scope: !202)
!227 = !DILocation(line: 97, column: 3, scope: !202)
!228 = !DILocation(line: 99, column: 1, scope: !202)
!229 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 101, type: !230, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !235)
!230 = !DISubroutineType(types: !231)
!231 = !{!20, !20, !232}
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!235 = !{!236, !237, !238, !239, !240, !241, !242, !243, !244}
!236 = !DILocalVariable(name: "argc", arg: 1, scope: !229, file: !1, line: 101, type: !20)
!237 = !DILocalVariable(name: "argv", arg: 2, scope: !229, file: !1, line: 101, type: !232)
!238 = !DILocalVariable(name: "ni", scope: !229, file: !1, line: 104, type: !20)
!239 = !DILocalVariable(name: "nj", scope: !229, file: !1, line: 105, type: !20)
!240 = !DILocalVariable(name: "alpha", scope: !229, file: !1, line: 108, type: !12)
!241 = !DILocalVariable(name: "beta", scope: !229, file: !1, line: 109, type: !12)
!242 = !DILocalVariable(name: "C", scope: !229, file: !1, line: 110, type: !10)
!243 = !DILocalVariable(name: "A", scope: !229, file: !1, line: 111, type: !10)
!244 = !DILocalVariable(name: "B", scope: !229, file: !1, line: 112, type: !10)
!245 = !DILocation(line: 0, scope: !229)
!246 = !DILocation(line: 110, column: 3, scope: !229)
!247 = !DILocation(line: 111, column: 3, scope: !229)
!248 = !DILocation(line: 112, column: 3, scope: !229)
!249 = !DILocation(line: 117, column: 14, scope: !229)
!250 = !DILocation(line: 118, column: 14, scope: !229)
!251 = !DILocalVariable(name: "ni", arg: 1, scope: !252, file: !1, line: 23, type: !20)
!252 = distinct !DISubprogram(name: "init_array", scope: !1, file: !1, line: 23, type: !253, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !256)
!253 = !DISubroutineType(types: !254)
!254 = !{null, !20, !20, !255, !255, !32, !32, !32}
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!256 = !{!251, !257, !258, !259, !260, !261, !262, !263, !264}
!257 = !DILocalVariable(name: "nj", arg: 2, scope: !252, file: !1, line: 23, type: !20)
!258 = !DILocalVariable(name: "alpha", arg: 3, scope: !252, file: !1, line: 24, type: !255)
!259 = !DILocalVariable(name: "beta", arg: 4, scope: !252, file: !1, line: 25, type: !255)
!260 = !DILocalVariable(name: "C", arg: 5, scope: !252, file: !1, line: 26, type: !32)
!261 = !DILocalVariable(name: "A", arg: 6, scope: !252, file: !1, line: 27, type: !32)
!262 = !DILocalVariable(name: "B", arg: 7, scope: !252, file: !1, line: 28, type: !32)
!263 = !DILocalVariable(name: "i", scope: !252, file: !1, line: 30, type: !20)
!264 = !DILocalVariable(name: "j", scope: !252, file: !1, line: 30, type: !20)
!265 = !DILocation(line: 0, scope: !252, inlinedAt: !266)
!266 = distinct !DILocation(line: 115, column: 3, scope: !229)
!267 = !DILocation(line: 34, column: 3, scope: !268, inlinedAt: !266)
!268 = distinct !DILexicalBlock(scope: !252, file: !1, line: 34, column: 3)
!269 = !DILocation(line: 0, scope: !270, inlinedAt: !266)
!270 = distinct !DILexicalBlock(scope: !271, file: !1, line: 36, column: 5)
!271 = distinct !DILexicalBlock(scope: !272, file: !1, line: 35, column: 5)
!272 = distinct !DILexicalBlock(scope: !273, file: !1, line: 35, column: 5)
!273 = distinct !DILexicalBlock(scope: !268, file: !1, line: 34, column: 3)
!274 = !DILocation(line: 35, column: 5, scope: !272, inlinedAt: !266)
!275 = !DILocation(line: 37, column: 33, scope: !270, inlinedAt: !266)
!276 = !DILocation(line: 37, column: 31, scope: !270, inlinedAt: !266)
!277 = !DILocation(line: 37, column: 36, scope: !270, inlinedAt: !266)
!278 = !DILocation(line: 37, column: 7, scope: !270, inlinedAt: !266)
!279 = !DILocation(line: 37, column: 15, scope: !270, inlinedAt: !266)
!280 = !DILocation(line: 38, column: 7, scope: !270, inlinedAt: !266)
!281 = !DILocation(line: 38, column: 15, scope: !270, inlinedAt: !266)
!282 = !DILocation(line: 35, column: 26, scope: !271, inlinedAt: !266)
!283 = !DILocation(line: 35, column: 19, scope: !271, inlinedAt: !266)
!284 = distinct !{!284, !274, !285}
!285 = !DILocation(line: 39, column: 5, scope: !272, inlinedAt: !266)
!286 = !DILocation(line: 34, column: 24, scope: !273, inlinedAt: !266)
!287 = !DILocation(line: 34, column: 17, scope: !273, inlinedAt: !266)
!288 = distinct !{!288, !267, !289}
!289 = !DILocation(line: 39, column: 5, scope: !268, inlinedAt: !266)
!290 = !DILocation(line: 116, column: 14, scope: !229)
!291 = !DILocation(line: 40, column: 3, scope: !292, inlinedAt: !266)
!292 = distinct !DILexicalBlock(scope: !252, file: !1, line: 40, column: 3)
!293 = !DILocation(line: 0, scope: !294, inlinedAt: !266)
!294 = distinct !DILexicalBlock(scope: !295, file: !1, line: 41, column: 5)
!295 = distinct !DILexicalBlock(scope: !296, file: !1, line: 41, column: 5)
!296 = distinct !DILexicalBlock(scope: !292, file: !1, line: 40, column: 3)
!297 = !DILocation(line: 41, column: 5, scope: !295, inlinedAt: !266)
!298 = !DILocation(line: 42, column: 33, scope: !294, inlinedAt: !266)
!299 = !DILocation(line: 42, column: 31, scope: !294, inlinedAt: !266)
!300 = !DILocation(line: 42, column: 36, scope: !294, inlinedAt: !266)
!301 = !DILocation(line: 42, column: 7, scope: !294, inlinedAt: !266)
!302 = !DILocation(line: 42, column: 15, scope: !294, inlinedAt: !266)
!303 = !DILocation(line: 41, column: 26, scope: !294, inlinedAt: !266)
!304 = !DILocation(line: 41, column: 19, scope: !294, inlinedAt: !266)
!305 = distinct !{!305, !297, !306}
!306 = !DILocation(line: 42, column: 38, scope: !295, inlinedAt: !266)
!307 = !DILocation(line: 40, column: 24, scope: !296, inlinedAt: !266)
!308 = !DILocation(line: 40, column: 17, scope: !296, inlinedAt: !266)
!309 = distinct !{!309, !291, !310}
!310 = !DILocation(line: 42, column: 38, scope: !292, inlinedAt: !266)
!311 = !DILocation(line: 0, scope: !202, inlinedAt: !312)
!312 = distinct !DILocation(line: 124, column: 3, scope: !229)
!313 = !DILocation(line: 89, column: 3, scope: !202, inlinedAt: !312)
!314 = !DILocation(line: 0, scope: !29, inlinedAt: !315)
!315 = distinct !DILocation(line: 90, column: 3, scope: !202, inlinedAt: !312)
!316 = !DILocation(line: 64, column: 1, scope: !29, inlinedAt: !315)
!317 = !DILocation(line: 68, column: 1, scope: !29, inlinedAt: !315)
!318 = !DILocation(line: 91, column: 3, scope: !202, inlinedAt: !312)
!319 = !DILocation(line: 92, column: 3, scope: !202, inlinedAt: !312)
!320 = !DILocation(line: 94, column: 3, scope: !202, inlinedAt: !312)
!321 = !DILocation(line: 0, scope: !119, inlinedAt: !322)
!322 = distinct !DILocation(line: 95, column: 3, scope: !202, inlinedAt: !312)
!323 = !DILocation(line: 72, column: 1, scope: !119, inlinedAt: !322)
!324 = !DILocation(line: 77, column: 1, scope: !119, inlinedAt: !322)
!325 = !DILocation(line: 96, column: 3, scope: !202, inlinedAt: !312)
!326 = !DILocation(line: 97, column: 3, scope: !202, inlinedAt: !312)
!327 = !DILocation(line: 136, column: 3, scope: !328)
!328 = distinct !DILexicalBlock(scope: !229, file: !1, line: 136, column: 3)
!329 = !DILocation(line: 136, column: 3, scope: !229)
!330 = !DILocalVariable(name: "i", scope: !331, file: !1, line: 50, type: !20)
!331 = distinct !DISubprogram(name: "print_array", scope: !1, file: !1, line: 47, type: !332, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !334)
!332 = !DISubroutineType(types: !333)
!333 = !{null, !20, !32}
!334 = !{!335, !336, !330, !337}
!335 = !DILocalVariable(name: "ni", arg: 1, scope: !331, file: !1, line: 47, type: !20)
!336 = !DILocalVariable(name: "C", arg: 2, scope: !331, file: !1, line: 48, type: !32)
!337 = !DILocalVariable(name: "j", scope: !331, file: !1, line: 50, type: !20)
!338 = !DILocation(line: 0, scope: !331, inlinedAt: !339)
!339 = distinct !DILocation(line: 136, column: 3, scope: !328)
!340 = !DILocation(line: 0, scope: !341, inlinedAt: !339)
!341 = distinct !DILexicalBlock(scope: !342, file: !1, line: 56, column: 11)
!342 = distinct !DILexicalBlock(scope: !343, file: !1, line: 54, column: 5)
!343 = distinct !DILexicalBlock(scope: !344, file: !1, line: 53, column: 5)
!344 = distinct !DILexicalBlock(scope: !345, file: !1, line: 53, column: 5)
!345 = distinct !DILexicalBlock(scope: !346, file: !1, line: 52, column: 3)
!346 = distinct !DILexicalBlock(scope: !331, file: !1, line: 52, column: 3)
!347 = !DILocation(line: 53, column: 5, scope: !344, inlinedAt: !339)
!348 = !DILocation(line: 55, column: 15, scope: !342, inlinedAt: !339)
!349 = !DILocation(line: 55, column: 45, scope: !342, inlinedAt: !339)
!350 = !DILocation(line: 55, column: 7, scope: !342, inlinedAt: !339)
!351 = !DILocation(line: 56, column: 19, scope: !341, inlinedAt: !339)
!352 = !DILocation(line: 56, column: 24, scope: !341, inlinedAt: !339)
!353 = !DILocation(line: 56, column: 29, scope: !341, inlinedAt: !339)
!354 = !DILocation(line: 56, column: 11, scope: !342, inlinedAt: !339)
!355 = !DILocation(line: 57, column: 17, scope: !341, inlinedAt: !339)
!356 = !DILocation(line: 57, column: 9, scope: !341, inlinedAt: !339)
!357 = !DILocation(line: 53, column: 26, scope: !343, inlinedAt: !339)
!358 = !DILocation(line: 53, column: 19, scope: !343, inlinedAt: !339)
!359 = distinct !{!359, !347, !360}
!360 = !DILocation(line: 58, column: 5, scope: !344, inlinedAt: !339)
!361 = !DILocation(line: 52, column: 24, scope: !345, inlinedAt: !339)
!362 = !DILocation(line: 52, column: 17, scope: !345, inlinedAt: !339)
!363 = !DILocation(line: 52, column: 3, scope: !346, inlinedAt: !339)
!364 = distinct !{!364, !363, !365}
!365 = !DILocation(line: 58, column: 5, scope: !346, inlinedAt: !339)
!366 = !DILocation(line: 59, column: 11, scope: !331, inlinedAt: !339)
!367 = !DILocation(line: 59, column: 3, scope: !331, inlinedAt: !339)
!368 = !DILocation(line: 139, column: 3, scope: !229)
!369 = !DILocation(line: 140, column: 3, scope: !229)
!370 = !DILocation(line: 141, column: 3, scope: !229)
!371 = !DILocation(line: 143, column: 3, scope: !229)
