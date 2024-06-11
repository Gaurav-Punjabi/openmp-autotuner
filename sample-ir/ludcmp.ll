; ModuleID = '../test/poly_gpu/inputs_kernel_splits/linear-algebra/solvers/ludcmp/ludcmp.c'
source_filename = "../test/poly_gpu/inputs_kernel_splits/linear-algebra/solvers/ludcmp/ludcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [95 x i8] c";../test/poly_gpu/inputs_kernel_splits/linear-algebra/solvers/ludcmp/ludcmp.c;kernel_p1;61;1;;\00", align 1
@2 = private unnamed_addr constant [96 x i8] c";../test/poly_gpu/inputs_kernel_splits/linear-algebra/solvers/ludcmp/ludcmp.c;kernel_p1;61;25;;\00", align 1
@3 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant [95 x i8] c";../test/poly_gpu/inputs_kernel_splits/linear-algebra/solvers/ludcmp/ludcmp.c;kernel_p2;85;1;;\00", align 1
@5 = private unnamed_addr constant [96 x i8] c";../test/poly_gpu/inputs_kernel_splits/linear-algebra/solvers/ludcmp/ludcmp.c;kernel_p2;85;25;;\00", align 1
@6 = private unnamed_addr constant [95 x i8] c";../test/poly_gpu/inputs_kernel_splits/linear-algebra/solvers/ludcmp/ludcmp.c;kernel_p3;98;1;;\00", align 1
@7 = private unnamed_addr constant [96 x i8] c";../test/poly_gpu/inputs_kernel_splits/linear-algebra/solvers/ludcmp/ludcmp.c;kernel_p3;98;25;;\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@llvm.used = appending global [4 x i8*] [i8* bitcast (void (i32, [2001 x double]*, double*, double*, double*)* @kernel_ludcmp to i8*), i8* bitcast (void (i32, [2001 x double]*, double*)* @kernel_p1 to i8*), i8* bitcast (void (i32, [2001 x double]*, double*, double*)* @kernel_p2 to i8*), i8* bitcast (void (i32, [2001 x double]*, double*, double*)* @kernel_p3 to i8*)], section "llvm.metadata"

; Function Attrs: nounwind uwtable
define internal void @kernel_p1(i32 %0, [2001 x double]* %1, double* nocapture %2) #0 !dbg !32 {
  %4 = alloca i32, align 4
  %5 = alloca [2001 x double]*, align 8
  %6 = alloca %struct.ident_t, align 8
  %7 = bitcast %struct.ident_t* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %7, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @3 to i8*), i64 16, i1 false)
  call void @llvm.dbg.value(metadata i32 %0, metadata !37, metadata !DIExpression()), !dbg !40
  store i32 %0, i32* %4, align 4, !tbaa !41
  call void @llvm.dbg.value(metadata [2001 x double]* %1, metadata !38, metadata !DIExpression()), !dbg !40
  store [2001 x double]* %1, [2001 x double]** %5, align 8, !tbaa !45
  call void @llvm.dbg.value(metadata double* %2, metadata !39, metadata !DIExpression()), !dbg !40
  %8 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %6, i64 0, i32 4, !dbg !47
  store i8* getelementptr inbounds ([95 x i8], [95 x i8]* @1, i64 0, i64 0), i8** %8, align 8, !dbg !47, !tbaa !48
  call void @llvm.dbg.value(metadata i32* %4, metadata !37, metadata !DIExpression(DW_OP_deref)), !dbg !40
  call void @llvm.dbg.value(metadata [2001 x double]** %5, metadata !38, metadata !DIExpression(DW_OP_deref)), !dbg !40
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %6, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [2001 x double]**)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %4, [2001 x double]** nonnull %5) #8, !dbg !47
  store double 1.000000e+00, double* %2, align 8, !dbg !50, !tbaa !51
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
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture readonly dereferenceable(4) %2, [2001 x double]** nocapture readonly dereferenceable(8) %3) #2 !dbg !54 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ident_t, align 8
  call void @llvm.dbg.value(metadata i32* %0, metadata !64, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.value(metadata i32* %1, metadata !65, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.value(metadata i32* %2, metadata !66, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.value(metadata [2001 x double]** %3, metadata !67, metadata !DIExpression()), !dbg !68
  %10 = bitcast %struct.ident_t* %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %10)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %10, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @0 to i8*), i64 24, i1 false) #8, !noalias !69
  call void @llvm.dbg.value(metadata i32* %0, metadata !72, metadata !DIExpression()) #8, !dbg !100
  call void @llvm.dbg.value(metadata i32* undef, metadata !75, metadata !DIExpression()) #8, !dbg !100
  call void @llvm.dbg.value(metadata i32* %2, metadata !76, metadata !DIExpression()) #8, !dbg !100
  call void @llvm.dbg.value(metadata [2001 x double]** %3, metadata !77, metadata !DIExpression()) #8, !dbg !100
  %11 = load i32, i32* %2, align 4, !dbg !102, !tbaa !41, !noalias !69
  call void @llvm.dbg.value(metadata i32 %11, metadata !79, metadata !DIExpression()) #8, !dbg !100
  %12 = add nsw i32 %11, -1, !dbg !103
  call void @llvm.dbg.value(metadata i32 %12, metadata !79, metadata !DIExpression()) #8, !dbg !100
  call void @llvm.dbg.value(metadata i32 0, metadata !80, metadata !DIExpression()) #8, !dbg !100
  %13 = icmp sgt i32 %11, 0, !dbg !103
  br i1 %13, label %14, label %177, !dbg !103

14:                                               ; preds = %4
  %15 = bitcast i32* %5 to i8*, !dbg !103
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #8, !dbg !103, !noalias !69
  call void @llvm.dbg.value(metadata i32 0, metadata !81, metadata !DIExpression()) #8, !dbg !100
  store i32 0, i32* %5, align 4, !dbg !104, !tbaa !41, !noalias !69
  %16 = bitcast i32* %6 to i8*, !dbg !103
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %16) #8, !dbg !103, !noalias !69
  call void @llvm.dbg.value(metadata i32 %12, metadata !82, metadata !DIExpression()) #8, !dbg !100
  store i32 %12, i32* %6, align 4, !dbg !104, !tbaa !41, !noalias !69
  %17 = bitcast i32* %7 to i8*, !dbg !103
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %17) #8, !dbg !103, !noalias !69
  call void @llvm.dbg.value(metadata i32 1, metadata !83, metadata !DIExpression()) #8, !dbg !100
  store i32 1, i32* %7, align 4, !dbg !104, !tbaa !41, !noalias !69
  %18 = bitcast i32* %8 to i8*, !dbg !103
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18) #8, !dbg !103, !noalias !69
  call void @llvm.dbg.value(metadata i32 0, metadata !84, metadata !DIExpression()) #8, !dbg !100
  store i32 0, i32* %8, align 4, !dbg !104, !tbaa !41, !noalias !69
  %19 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %9, i64 0, i32 4, !dbg !103
  store i8* getelementptr inbounds ([95 x i8], [95 x i8]* @1, i64 0, i64 0), i8** %19, align 8, !dbg !103, !tbaa !48, !noalias !69
  %20 = load i32, i32* %0, align 4, !dbg !103, !tbaa !41, !alias.scope !69
  call void @llvm.dbg.value(metadata i32* %5, metadata !81, metadata !DIExpression(DW_OP_deref)) #8, !dbg !100
  call void @llvm.dbg.value(metadata i32* %6, metadata !82, metadata !DIExpression(DW_OP_deref)) #8, !dbg !100
  call void @llvm.dbg.value(metadata i32* %7, metadata !83, metadata !DIExpression(DW_OP_deref)) #8, !dbg !100
  call void @llvm.dbg.value(metadata i32* %8, metadata !84, metadata !DIExpression(DW_OP_deref)) #8, !dbg !100
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull %9, i32 %20, i32 34, i32* nonnull %8, i32* nonnull %5, i32* nonnull %6, i32* nonnull %7, i32 1, i32 1) #8, !dbg !103, !noalias !69
  %21 = load i32, i32* %6, align 4, !dbg !104, !tbaa !41, !noalias !69
  call void @llvm.dbg.value(metadata i32 %21, metadata !82, metadata !DIExpression()) #8, !dbg !100
  %22 = icmp slt i32 %21, %11, !dbg !104
  %23 = select i1 %22, i32 %21, i32 %12, !dbg !104
  call void @llvm.dbg.value(metadata i32 %23, metadata !82, metadata !DIExpression()) #8, !dbg !100
  store i32 %23, i32* %6, align 4, !dbg !104, !tbaa !41, !noalias !69
  %24 = load i32, i32* %5, align 4, !dbg !104, !tbaa !41, !noalias !69
  call void @llvm.dbg.value(metadata i32 %24, metadata !81, metadata !DIExpression()) #8, !dbg !100
  call void @llvm.dbg.value(metadata i32 %24, metadata !78, metadata !DIExpression()) #8, !dbg !100
  call void @llvm.dbg.value(metadata i32 %23, metadata !82, metadata !DIExpression()) #8, !dbg !100
  %25 = icmp sgt i32 %24, %23, !dbg !103
  br i1 %25, label %176, label %26, !dbg !103

26:                                               ; preds = %14
  %27 = load i32, i32* %2, align 4, !dbg !105, !noalias !69
  %28 = load [2001 x double]*, [2001 x double]** %3, align 8, !dbg !106, !noalias !69
  %29 = add i32 %27, 1, !dbg !103
  %30 = sext i32 %24 to i64, !dbg !103
  %31 = sext i32 %27 to i64, !dbg !103
  %32 = sext i32 %23 to i64, !dbg !103
  %33 = sub i32 %27, %24, !dbg !103
  %34 = xor i32 %24, -1, !dbg !103
  %35 = add i32 %27, %34, !dbg !103
  %36 = add i32 %24, 1, !dbg !103
  br label %40, !dbg !103

37:                                               ; preds = %151, %115, %40
  call void @llvm.dbg.value(metadata i64 %51, metadata !78, metadata !DIExpression()) #8, !dbg !100
  call void @llvm.dbg.value(metadata i32 %23, metadata !82, metadata !DIExpression()) #8, !dbg !100
  %38 = icmp slt i64 %42, %32, !dbg !103
  %39 = add i32 %41, 1, !dbg !103
  br i1 %38, label %40, label %176, !dbg !103

40:                                               ; preds = %37, %26
  %41 = phi i32 [ %39, %37 ], [ 0, %26 ]
  %42 = phi i64 [ %51, %37 ], [ %30, %26 ]
  %43 = phi i32 [ %49, %37 ], [ %24, %26 ]
  %44 = add i32 %36, %41, !dbg !103
  %45 = zext i32 %44 to i64, !dbg !103
  %46 = add i32 %24, %41, !dbg !103
  %47 = zext i32 %46 to i64, !dbg !103
  %48 = sub i32 %33, %41, !dbg !103
  %49 = add i32 %43, 1, !dbg !103
  call void @llvm.dbg.value(metadata i64 %42, metadata !78, metadata !DIExpression()) #8, !dbg !100
  call void @llvm.dbg.value(metadata i64 %42, metadata !80, metadata !DIExpression()) #8, !dbg !100
  %50 = sext i32 %49 to i64, !dbg !107
  %51 = add nsw i64 %42, 1, !dbg !107
  call void @llvm.dbg.value(metadata i64 %51, metadata !85, metadata !DIExpression()) #8, !dbg !108
  %52 = icmp slt i64 %42, %31, !dbg !109
  br i1 %52, label %53, label %37, !dbg !110

53:                                               ; preds = %40
  %54 = icmp sgt i64 %42, 0, !dbg !111
  %55 = getelementptr inbounds [2001 x double], [2001 x double]* %28, i64 %42, i64 %42, !dbg !106
  br i1 %54, label %68, label %56, !dbg !110

56:                                               ; preds = %53
  %57 = and i32 %48, 1, !dbg !110
  %58 = icmp eq i32 %57, 0, !dbg !110
  br i1 %58, label %65, label %59, !dbg !110

59:                                               ; preds = %56
  call void @llvm.dbg.value(metadata i64 %50, metadata !85, metadata !DIExpression()) #8, !dbg !108
  %60 = getelementptr inbounds [2001 x double], [2001 x double]* %28, i64 %50, i64 %42, !dbg !113
  %61 = load double, double* %60, align 8, !dbg !113, !tbaa !51, !noalias !69
  call void @llvm.dbg.value(metadata i32 0, metadata !91, metadata !DIExpression()) #8, !dbg !114
  call void @llvm.dbg.value(metadata double %61, metadata !88, metadata !DIExpression()) #8, !dbg !106
  %62 = load double, double* %55, align 8, !dbg !115, !tbaa !51, !noalias !69
  %63 = fdiv double %61, %62, !dbg !116
  store double %63, double* %60, align 8, !dbg !117, !tbaa !51, !noalias !69
  %64 = add nsw i64 %50, 1, !dbg !118
  call void @llvm.dbg.value(metadata i64 %64, metadata !85, metadata !DIExpression()) #8, !dbg !108
  br label %65, !dbg !110

65:                                               ; preds = %59, %56
  %66 = phi i64 [ %64, %59 ], [ %50, %56 ]
  %67 = icmp eq i32 %35, %41, !dbg !110
  br i1 %67, label %115, label %122, !dbg !110

68:                                               ; preds = %53
  %69 = and i64 %47, 1, !dbg !114
  %70 = icmp eq i32 %46, 1, !dbg !114
  %71 = sub nsw i64 %47, %69, !dbg !114
  %72 = icmp eq i64 %69, 0, !dbg !114
  br label %73, !dbg !110

73:                                               ; preds = %108, %68
  %74 = phi i64 [ %50, %68 ], [ %112, %108 ]
  call void @llvm.dbg.value(metadata i64 %74, metadata !85, metadata !DIExpression()) #8, !dbg !108
  %75 = getelementptr inbounds [2001 x double], [2001 x double]* %28, i64 %74, i64 %42, !dbg !113
  %76 = load double, double* %75, align 8, !dbg !113, !tbaa !51, !noalias !69
  call void @llvm.dbg.value(metadata double %76, metadata !88, metadata !DIExpression()) #8, !dbg !106
  call void @llvm.dbg.value(metadata i32 0, metadata !91, metadata !DIExpression()) #8, !dbg !114
  br i1 %70, label %97, label %77, !dbg !119

77:                                               ; preds = %73, %77
  %78 = phi i64 [ %94, %77 ], [ 0, %73 ]
  %79 = phi double [ %93, %77 ], [ %76, %73 ]
  %80 = phi i64 [ %95, %77 ], [ %71, %73 ]
  call void @llvm.dbg.value(metadata i64 %78, metadata !91, metadata !DIExpression()) #8, !dbg !114
  call void @llvm.dbg.value(metadata double %79, metadata !88, metadata !DIExpression()) #8, !dbg !106
  %81 = getelementptr inbounds [2001 x double], [2001 x double]* %28, i64 %74, i64 %78, !dbg !120
  %82 = load double, double* %81, align 8, !dbg !120, !tbaa !51, !noalias !69
  %83 = getelementptr inbounds [2001 x double], [2001 x double]* %28, i64 %78, i64 %42, !dbg !121
  %84 = load double, double* %83, align 8, !dbg !121, !tbaa !51, !noalias !69
  %85 = fmul double %82, %84, !dbg !122
  %86 = fsub double %79, %85, !dbg !123
  call void @llvm.dbg.value(metadata double %86, metadata !88, metadata !DIExpression()) #8, !dbg !106
  %87 = or i64 %78, 1, !dbg !124
  call void @llvm.dbg.value(metadata i64 %87, metadata !91, metadata !DIExpression()) #8, !dbg !114
  %88 = getelementptr inbounds [2001 x double], [2001 x double]* %28, i64 %74, i64 %87, !dbg !120
  %89 = load double, double* %88, align 8, !dbg !120, !tbaa !51, !noalias !69
  %90 = getelementptr inbounds [2001 x double], [2001 x double]* %28, i64 %87, i64 %42, !dbg !121
  %91 = load double, double* %90, align 8, !dbg !121, !tbaa !51, !noalias !69
  %92 = fmul double %89, %91, !dbg !122
  %93 = fsub double %86, %92, !dbg !123
  call void @llvm.dbg.value(metadata double %93, metadata !88, metadata !DIExpression()) #8, !dbg !106
  %94 = add nuw nsw i64 %78, 2, !dbg !124
  call void @llvm.dbg.value(metadata i64 %94, metadata !91, metadata !DIExpression()) #8, !dbg !114
  %95 = add i64 %80, -2, !dbg !119
  %96 = icmp eq i64 %95, 0, !dbg !119
  br i1 %96, label %97, label %77, !dbg !119, !llvm.loop !125

97:                                               ; preds = %77, %73
  %98 = phi double [ undef, %73 ], [ %93, %77 ]
  %99 = phi i64 [ 0, %73 ], [ %94, %77 ]
  %100 = phi double [ %76, %73 ], [ %93, %77 ]
  br i1 %72, label %108, label %101, !dbg !119

101:                                              ; preds = %97
  call void @llvm.dbg.value(metadata i64 %99, metadata !91, metadata !DIExpression()) #8, !dbg !114
  call void @llvm.dbg.value(metadata double %100, metadata !88, metadata !DIExpression()) #8, !dbg !106
  call void @llvm.dbg.value(metadata double undef, metadata !88, metadata !DIExpression()) #8, !dbg !106
  call void @llvm.dbg.value(metadata i64 %99, metadata !91, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #8, !dbg !114
  %102 = getelementptr inbounds [2001 x double], [2001 x double]* %28, i64 %74, i64 %99, !dbg !120
  %103 = load double, double* %102, align 8, !dbg !120, !tbaa !51, !noalias !69
  %104 = getelementptr inbounds [2001 x double], [2001 x double]* %28, i64 %99, i64 %42, !dbg !121
  %105 = load double, double* %104, align 8, !dbg !121, !tbaa !51, !noalias !69
  %106 = fmul double %103, %105, !dbg !122
  %107 = fsub double %100, %106, !dbg !123
  call void @llvm.dbg.value(metadata double %107, metadata !88, metadata !DIExpression()) #8, !dbg !106
  br label %108, !dbg !115

108:                                              ; preds = %97, %101
  %109 = phi double [ %98, %97 ], [ %107, %101 ], !dbg !123
  call void @llvm.dbg.value(metadata double %109, metadata !88, metadata !DIExpression()) #8, !dbg !106
  %110 = load double, double* %55, align 8, !dbg !115, !tbaa !51, !noalias !69
  %111 = fdiv double %109, %110, !dbg !116
  store double %111, double* %75, align 8, !dbg !117, !tbaa !51, !noalias !69
  %112 = add nsw i64 %74, 1, !dbg !118
  call void @llvm.dbg.value(metadata i64 %112, metadata !85, metadata !DIExpression()) #8, !dbg !108
  %113 = trunc i64 %112 to i32, !dbg !109
  %114 = icmp eq i32 %29, %113, !dbg !109
  br i1 %114, label %115, label %73, !dbg !110, !llvm.loop !127

115:                                              ; preds = %65, %122, %108
  call void @llvm.dbg.value(metadata i64 %51, metadata !93, metadata !DIExpression()) #8, !dbg !129
  %116 = icmp slt i64 %42, 0, !dbg !130
  br i1 %116, label %37, label %117, !dbg !132, !llvm.loop !133

117:                                              ; preds = %115
  %118 = and i64 %45, 1, !dbg !136
  %119 = icmp eq i32 %44, 1, !dbg !136
  %120 = sub nsw i64 %45, %118, !dbg !136
  %121 = icmp eq i64 %118, 0, !dbg !136
  br label %136, !dbg !132

122:                                              ; preds = %65, %122
  %123 = phi i64 [ %133, %122 ], [ %66, %65 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !85, metadata !DIExpression()) #8, !dbg !108
  %124 = getelementptr inbounds [2001 x double], [2001 x double]* %28, i64 %123, i64 %42, !dbg !113
  %125 = load double, double* %124, align 8, !dbg !113, !tbaa !51, !noalias !69
  call void @llvm.dbg.value(metadata i32 0, metadata !91, metadata !DIExpression()) #8, !dbg !114
  call void @llvm.dbg.value(metadata double %125, metadata !88, metadata !DIExpression()) #8, !dbg !106
  %126 = load double, double* %55, align 8, !dbg !115, !tbaa !51, !noalias !69
  %127 = fdiv double %125, %126, !dbg !116
  store double %127, double* %124, align 8, !dbg !117, !tbaa !51, !noalias !69
  %128 = add nsw i64 %123, 1, !dbg !118
  call void @llvm.dbg.value(metadata i64 %128, metadata !85, metadata !DIExpression()) #8, !dbg !108
  %129 = getelementptr inbounds [2001 x double], [2001 x double]* %28, i64 %128, i64 %42, !dbg !113
  %130 = load double, double* %129, align 8, !dbg !113, !tbaa !51, !noalias !69
  call void @llvm.dbg.value(metadata double %130, metadata !88, metadata !DIExpression()) #8, !dbg !106
  %131 = load double, double* %55, align 8, !dbg !115, !tbaa !51, !noalias !69
  %132 = fdiv double %130, %131, !dbg !116
  store double %132, double* %129, align 8, !dbg !117, !tbaa !51, !noalias !69
  %133 = add nsw i64 %123, 2, !dbg !118
  call void @llvm.dbg.value(metadata i64 %133, metadata !85, metadata !DIExpression()) #8, !dbg !108
  %134 = trunc i64 %133 to i32, !dbg !109
  %135 = icmp eq i32 %29, %134, !dbg !109
  br i1 %135, label %115, label %122, !dbg !110, !llvm.loop !137

136:                                              ; preds = %151, %117
  %137 = phi i64 [ %50, %117 ], [ %153, %151 ]
  call void @llvm.dbg.value(metadata i64 %137, metadata !93, metadata !DIExpression()) #8, !dbg !129
  %138 = getelementptr inbounds [2001 x double], [2001 x double]* %28, i64 %51, i64 %137, !dbg !138
  %139 = load double, double* %138, align 8, !dbg !138, !tbaa !51, !noalias !69
  call void @llvm.dbg.value(metadata double %139, metadata !95, metadata !DIExpression()) #8, !dbg !139
  call void @llvm.dbg.value(metadata i32 0, metadata !98, metadata !DIExpression()) #8, !dbg !136
  br i1 %119, label %140, label %156, !dbg !140

140:                                              ; preds = %156, %136
  %141 = phi double [ undef, %136 ], [ %172, %156 ]
  %142 = phi i64 [ 0, %136 ], [ %173, %156 ]
  %143 = phi double [ %139, %136 ], [ %172, %156 ]
  br i1 %121, label %151, label %144, !dbg !140

144:                                              ; preds = %140
  call void @llvm.dbg.value(metadata i64 %142, metadata !98, metadata !DIExpression()) #8, !dbg !136
  call void @llvm.dbg.value(metadata double %143, metadata !95, metadata !DIExpression()) #8, !dbg !139
  call void @llvm.dbg.value(metadata double undef, metadata !95, metadata !DIExpression()) #8, !dbg !139
  call void @llvm.dbg.value(metadata i64 %142, metadata !98, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)) #8, !dbg !136
  %145 = getelementptr inbounds [2001 x double], [2001 x double]* %28, i64 %51, i64 %142, !dbg !141
  %146 = load double, double* %145, align 8, !dbg !141, !tbaa !51, !noalias !69
  %147 = getelementptr inbounds [2001 x double], [2001 x double]* %28, i64 %142, i64 %137, !dbg !142
  %148 = load double, double* %147, align 8, !dbg !142, !tbaa !51, !noalias !69
  %149 = fmul double %146, %148, !dbg !143
  %150 = fsub double %143, %149, !dbg !144
  call void @llvm.dbg.value(metadata double %150, metadata !95, metadata !DIExpression()) #8, !dbg !139
  br label %151, !dbg !145

151:                                              ; preds = %140, %144
  %152 = phi double [ %141, %140 ], [ %150, %144 ], !dbg !144
  call void @llvm.dbg.value(metadata double %152, metadata !95, metadata !DIExpression()) #8, !dbg !139
  store double %152, double* %138, align 8, !dbg !145, !tbaa !51, !noalias !69
  %153 = add nsw i64 %137, 1, !dbg !146
  call void @llvm.dbg.value(metadata i64 %153, metadata !93, metadata !DIExpression()) #8, !dbg !129
  %154 = trunc i64 %153 to i32, !dbg !147
  %155 = icmp eq i32 %29, %154, !dbg !147
  br i1 %155, label %37, label %136, !dbg !132, !llvm.loop !148

156:                                              ; preds = %136, %156
  %157 = phi i64 [ %173, %156 ], [ 0, %136 ]
  %158 = phi double [ %172, %156 ], [ %139, %136 ]
  %159 = phi i64 [ %174, %156 ], [ %120, %136 ]
  call void @llvm.dbg.value(metadata i64 %157, metadata !98, metadata !DIExpression()) #8, !dbg !136
  call void @llvm.dbg.value(metadata double %158, metadata !95, metadata !DIExpression()) #8, !dbg !139
  %160 = getelementptr inbounds [2001 x double], [2001 x double]* %28, i64 %51, i64 %157, !dbg !141
  %161 = load double, double* %160, align 8, !dbg !141, !tbaa !51, !noalias !69
  %162 = getelementptr inbounds [2001 x double], [2001 x double]* %28, i64 %157, i64 %137, !dbg !142
  %163 = load double, double* %162, align 8, !dbg !142, !tbaa !51, !noalias !69
  %164 = fmul double %161, %163, !dbg !143
  %165 = fsub double %158, %164, !dbg !144
  call void @llvm.dbg.value(metadata double %165, metadata !95, metadata !DIExpression()) #8, !dbg !139
  %166 = or i64 %157, 1, !dbg !150
  call void @llvm.dbg.value(metadata i64 %166, metadata !98, metadata !DIExpression()) #8, !dbg !136
  %167 = getelementptr inbounds [2001 x double], [2001 x double]* %28, i64 %51, i64 %166, !dbg !141
  %168 = load double, double* %167, align 8, !dbg !141, !tbaa !51, !noalias !69
  %169 = getelementptr inbounds [2001 x double], [2001 x double]* %28, i64 %166, i64 %137, !dbg !142
  %170 = load double, double* %169, align 8, !dbg !142, !tbaa !51, !noalias !69
  %171 = fmul double %168, %170, !dbg !143
  %172 = fsub double %165, %171, !dbg !144
  call void @llvm.dbg.value(metadata double %172, metadata !95, metadata !DIExpression()) #8, !dbg !139
  %173 = add nuw nsw i64 %157, 2, !dbg !150
  call void @llvm.dbg.value(metadata i64 %173, metadata !98, metadata !DIExpression()) #8, !dbg !136
  %174 = add i64 %159, -2, !dbg !140
  %175 = icmp eq i64 %174, 0, !dbg !140
  br i1 %175, label %140, label %156, !dbg !140, !llvm.loop !151

176:                                              ; preds = %37, %14
  store i8* getelementptr inbounds ([96 x i8], [96 x i8]* @2, i64 0, i64 0), i8** %19, align 8, !dbg !134, !tbaa !48, !noalias !69
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull %9, i32 %20) #8, !dbg !134, !noalias !69
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #8, !dbg !134, !noalias !69
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %17) #8, !dbg !134, !noalias !69
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %16) #8, !dbg !134, !noalias !69
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #8, !dbg !134, !noalias !69
  br label %177, !dbg !134

177:                                              ; preds = %4, %176
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %10), !dbg !153
  ret void, !dbg !154
}

declare !callback !155 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr

; Function Attrs: nounwind uwtable
define internal void @kernel_p2(i32 %0, [2001 x double]* %1, double* %2, double* %3) #0 !dbg !157 {
  %5 = alloca i32, align 4
  %6 = alloca [2001 x double]*, align 8
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca %struct.ident_t, align 8
  %10 = bitcast %struct.ident_t* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %10, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @3 to i8*), i64 16, i1 false)
  call void @llvm.dbg.value(metadata i32 %0, metadata !161, metadata !DIExpression()), !dbg !165
  store i32 %0, i32* %5, align 4, !tbaa !41
  call void @llvm.dbg.value(metadata [2001 x double]* %1, metadata !162, metadata !DIExpression()), !dbg !165
  store [2001 x double]* %1, [2001 x double]** %6, align 8, !tbaa !45
  call void @llvm.dbg.value(metadata double* %2, metadata !163, metadata !DIExpression()), !dbg !165
  store double* %2, double** %7, align 8, !tbaa !45
  call void @llvm.dbg.value(metadata double* %3, metadata !164, metadata !DIExpression()), !dbg !165
  store double* %3, double** %8, align 8, !tbaa !45
  call void @llvm.dbg.value(metadata double* %2, metadata !163, metadata !DIExpression()), !dbg !165
  %11 = bitcast double* %2 to i64*, !dbg !166
  %12 = load i64, i64* %11, align 8, !dbg !166, !tbaa !51
  %13 = bitcast double* %3 to i64*, !dbg !167
  store i64 %12, i64* %13, align 8, !dbg !167, !tbaa !51
  %14 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %9, i64 0, i32 4, !dbg !168
  store i8* getelementptr inbounds ([95 x i8], [95 x i8]* @4, i64 0, i64 0), i8** %14, align 8, !dbg !168, !tbaa !48
  call void @llvm.dbg.value(metadata i32* %5, metadata !161, metadata !DIExpression(DW_OP_deref)), !dbg !165
  call void @llvm.dbg.value(metadata [2001 x double]** %6, metadata !162, metadata !DIExpression(DW_OP_deref)), !dbg !165
  call void @llvm.dbg.value(metadata double** %7, metadata !163, metadata !DIExpression(DW_OP_deref)), !dbg !165
  call void @llvm.dbg.value(metadata double** %8, metadata !164, metadata !DIExpression(DW_OP_deref)), !dbg !165
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %9, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, double**, [2001 x double]**, double**)* @.omp_outlined..2 to void (i32*, i32*, ...)*), i32* nonnull %5, double** nonnull %7, [2001 x double]** nonnull %6, double** nonnull %8) #8, !dbg !168
  ret void, !dbg !169
}

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined..2(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture readonly dereferenceable(4) %2, double** nocapture readonly dereferenceable(8) %3, [2001 x double]** nocapture readonly dereferenceable(8) %4, double** nocapture readonly dereferenceable(8) %5) #2 !dbg !170 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ident_t, align 8
  call void @llvm.dbg.value(metadata i32* %0, metadata !175, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata i32* %1, metadata !176, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata i32* %2, metadata !177, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata double** %3, metadata !178, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata [2001 x double]** %4, metadata !179, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.value(metadata double** %5, metadata !180, metadata !DIExpression()), !dbg !181
  %12 = load i32, i32* %2, align 4, !dbg !182, !tbaa !41
  %13 = bitcast %struct.ident_t* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %13)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %13, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @0 to i8*), i64 24, i1 false) #8, !noalias !183
  call void @llvm.dbg.value(metadata i32* %0, metadata !186, metadata !DIExpression()) #8, !dbg !205
  call void @llvm.dbg.value(metadata i32* undef, metadata !189, metadata !DIExpression()) #8, !dbg !205
  call void @llvm.dbg.value(metadata double** %3, metadata !191, metadata !DIExpression()) #8, !dbg !205
  call void @llvm.dbg.value(metadata [2001 x double]** %4, metadata !192, metadata !DIExpression()) #8, !dbg !205
  call void @llvm.dbg.value(metadata double** %5, metadata !193, metadata !DIExpression()) #8, !dbg !205
  call void @llvm.dbg.value(metadata i32 %12, metadata !195, metadata !DIExpression()) #8, !dbg !205
  %14 = add nsw i32 %12, -1, !dbg !207
  call void @llvm.dbg.value(metadata i32 %14, metadata !195, metadata !DIExpression()) #8, !dbg !205
  call void @llvm.dbg.value(metadata i32 1, metadata !196, metadata !DIExpression()) #8, !dbg !205
  %15 = icmp sgt i32 %12, 0, !dbg !207
  br i1 %15, label %16, label %108, !dbg !207

16:                                               ; preds = %6
  %17 = bitcast i32* %7 to i8*, !dbg !207
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %17) #8, !dbg !207, !noalias !183
  call void @llvm.dbg.value(metadata i32 0, metadata !197, metadata !DIExpression()) #8, !dbg !205
  store i32 0, i32* %7, align 4, !dbg !208, !tbaa !41, !noalias !183
  %18 = bitcast i32* %8 to i8*, !dbg !207
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18) #8, !dbg !207, !noalias !183
  call void @llvm.dbg.value(metadata i32 %14, metadata !198, metadata !DIExpression()) #8, !dbg !205
  store i32 %14, i32* %8, align 4, !dbg !208, !tbaa !41, !noalias !183
  %19 = bitcast i32* %9 to i8*, !dbg !207
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #8, !dbg !207, !noalias !183
  call void @llvm.dbg.value(metadata i32 1, metadata !199, metadata !DIExpression()) #8, !dbg !205
  store i32 1, i32* %9, align 4, !dbg !208, !tbaa !41, !noalias !183
  %20 = bitcast i32* %10 to i8*, !dbg !207
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %20) #8, !dbg !207, !noalias !183
  call void @llvm.dbg.value(metadata i32 0, metadata !200, metadata !DIExpression()) #8, !dbg !205
  store i32 0, i32* %10, align 4, !dbg !208, !tbaa !41, !noalias !183
  %21 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %11, i64 0, i32 4, !dbg !207
  store i8* getelementptr inbounds ([95 x i8], [95 x i8]* @4, i64 0, i64 0), i8** %21, align 8, !dbg !207, !tbaa !48, !noalias !183
  %22 = load i32, i32* %0, align 4, !dbg !207, !tbaa !41, !alias.scope !183
  call void @llvm.dbg.value(metadata i32* %7, metadata !197, metadata !DIExpression(DW_OP_deref)) #8, !dbg !205
  call void @llvm.dbg.value(metadata i32* %8, metadata !198, metadata !DIExpression(DW_OP_deref)) #8, !dbg !205
  call void @llvm.dbg.value(metadata i32* %9, metadata !199, metadata !DIExpression(DW_OP_deref)) #8, !dbg !205
  call void @llvm.dbg.value(metadata i32* %10, metadata !200, metadata !DIExpression(DW_OP_deref)) #8, !dbg !205
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull %11, i32 %22, i32 34, i32* nonnull %10, i32* nonnull %7, i32* nonnull %8, i32* nonnull %9, i32 1, i32 1) #8, !dbg !207, !noalias !183
  %23 = load i32, i32* %8, align 4, !dbg !208, !tbaa !41, !noalias !183
  call void @llvm.dbg.value(metadata i32 %23, metadata !198, metadata !DIExpression()) #8, !dbg !205
  %24 = icmp slt i32 %23, %12, !dbg !208
  %25 = select i1 %24, i32 %23, i32 %14, !dbg !208
  call void @llvm.dbg.value(metadata i32 %25, metadata !198, metadata !DIExpression()) #8, !dbg !205
  store i32 %25, i32* %8, align 4, !dbg !208, !tbaa !41, !noalias !183
  %26 = load i32, i32* %7, align 4, !dbg !208, !tbaa !41, !noalias !183
  call void @llvm.dbg.value(metadata i32 %26, metadata !197, metadata !DIExpression()) #8, !dbg !205
  call void @llvm.dbg.value(metadata i32 %26, metadata !194, metadata !DIExpression()) #8, !dbg !205
  call void @llvm.dbg.value(metadata i32 %25, metadata !198, metadata !DIExpression()) #8, !dbg !205
  %27 = icmp sgt i32 %26, %25, !dbg !207
  br i1 %27, label %107, label %28, !dbg !207

28:                                               ; preds = %16
  %29 = load double*, double** %3, align 8, !dbg !209, !tbaa !45, !noalias !183
  %30 = load [2001 x double]*, [2001 x double]** %4, align 8, !dbg !210, !noalias !183
  %31 = load double*, double** %5, align 8, !dbg !210, !noalias !183
  %32 = sext i32 %26 to i64, !dbg !207
  %33 = sext i32 %25 to i64, !dbg !207
  %34 = add i32 %26, 1, !dbg !207
  br label %35, !dbg !207

35:                                               ; preds = %68, %28
  %36 = phi i32 [ %72, %68 ], [ 0, %28 ]
  %37 = phi i64 [ %40, %68 ], [ %32, %28 ]
  %38 = add i32 %34, %36, !dbg !207
  %39 = zext i32 %38 to i64, !dbg !207
  call void @llvm.dbg.value(metadata i64 %37, metadata !194, metadata !DIExpression()) #8, !dbg !205
  %40 = add nsw i64 %37, 1, !dbg !212
  call void @llvm.dbg.value(metadata i64 %40, metadata !196, metadata !DIExpression()) #8, !dbg !205
  %41 = getelementptr inbounds double, double* %29, i64 %40, !dbg !213
  %42 = load double, double* %41, align 8, !dbg !213, !tbaa !51, !noalias !183
  call void @llvm.dbg.value(metadata double %42, metadata !201, metadata !DIExpression()) #8, !dbg !209
  call void @llvm.dbg.value(metadata i32 0, metadata !203, metadata !DIExpression()) #8, !dbg !214
  %43 = icmp slt i64 %37, 0, !dbg !215
  br i1 %43, label %68, label %44, !dbg !216

44:                                               ; preds = %35
  %45 = add nsw i64 %39, -1, !dbg !207
  %46 = and i64 %39, 3, !dbg !216
  %47 = icmp ult i64 %45, 3, !dbg !216
  br i1 %47, label %50, label %48, !dbg !216

48:                                               ; preds = %44
  %49 = sub nsw i64 %39, %46, !dbg !216
  br label %73, !dbg !216

50:                                               ; preds = %73, %44
  %51 = phi double [ undef, %44 ], [ %103, %73 ]
  %52 = phi i64 [ 0, %44 ], [ %104, %73 ]
  %53 = phi double [ %42, %44 ], [ %103, %73 ]
  %54 = icmp eq i64 %46, 0, !dbg !216
  br i1 %54, label %68, label %55, !dbg !216

55:                                               ; preds = %50, %55
  %56 = phi i64 [ %65, %55 ], [ %52, %50 ]
  %57 = phi double [ %64, %55 ], [ %53, %50 ]
  %58 = phi i64 [ %66, %55 ], [ %46, %50 ]
  call void @llvm.dbg.value(metadata i64 %56, metadata !203, metadata !DIExpression()) #8, !dbg !214
  call void @llvm.dbg.value(metadata double %57, metadata !201, metadata !DIExpression()) #8, !dbg !209
  %59 = getelementptr inbounds [2001 x double], [2001 x double]* %30, i64 %40, i64 %56, !dbg !217
  %60 = load double, double* %59, align 8, !dbg !217, !tbaa !51, !noalias !183
  %61 = getelementptr inbounds double, double* %31, i64 %56, !dbg !218
  %62 = load double, double* %61, align 8, !dbg !218, !tbaa !51, !noalias !183
  %63 = fmul double %60, %62, !dbg !219
  %64 = fsub double %57, %63, !dbg !220
  call void @llvm.dbg.value(metadata double %64, metadata !201, metadata !DIExpression()) #8, !dbg !209
  %65 = add nuw nsw i64 %56, 1, !dbg !221
  call void @llvm.dbg.value(metadata i64 %65, metadata !203, metadata !DIExpression()) #8, !dbg !214
  %66 = add i64 %58, -1, !dbg !216
  %67 = icmp eq i64 %66, 0, !dbg !216
  br i1 %67, label %68, label %55, !dbg !216, !llvm.loop !222

68:                                               ; preds = %50, %55, %35
  %69 = phi double [ %42, %35 ], [ %51, %50 ], [ %64, %55 ], !dbg !209
  call void @llvm.dbg.value(metadata double %69, metadata !201, metadata !DIExpression()) #8, !dbg !209
  %70 = getelementptr inbounds double, double* %31, i64 %40, !dbg !224
  store double %69, double* %70, align 8, !dbg !225, !tbaa !51, !noalias !183
  call void @llvm.dbg.value(metadata i64 %40, metadata !194, metadata !DIExpression()) #8, !dbg !205
  call void @llvm.dbg.value(metadata i32 %25, metadata !198, metadata !DIExpression()) #8, !dbg !205
  %71 = icmp slt i64 %37, %33, !dbg !207
  %72 = add i32 %36, 1, !dbg !207
  br i1 %71, label %35, label %107, !dbg !207, !llvm.loop !226

73:                                               ; preds = %73, %48
  %74 = phi i64 [ 0, %48 ], [ %104, %73 ]
  %75 = phi double [ %42, %48 ], [ %103, %73 ]
  %76 = phi i64 [ %49, %48 ], [ %105, %73 ]
  call void @llvm.dbg.value(metadata i64 %74, metadata !203, metadata !DIExpression()) #8, !dbg !214
  call void @llvm.dbg.value(metadata double %75, metadata !201, metadata !DIExpression()) #8, !dbg !209
  %77 = getelementptr inbounds [2001 x double], [2001 x double]* %30, i64 %40, i64 %74, !dbg !217
  %78 = load double, double* %77, align 8, !dbg !217, !tbaa !51, !noalias !183
  %79 = getelementptr inbounds double, double* %31, i64 %74, !dbg !218
  %80 = load double, double* %79, align 8, !dbg !218, !tbaa !51, !noalias !183
  %81 = fmul double %78, %80, !dbg !219
  %82 = fsub double %75, %81, !dbg !220
  call void @llvm.dbg.value(metadata double %82, metadata !201, metadata !DIExpression()) #8, !dbg !209
  %83 = or i64 %74, 1, !dbg !221
  call void @llvm.dbg.value(metadata i64 %83, metadata !203, metadata !DIExpression()) #8, !dbg !214
  %84 = getelementptr inbounds [2001 x double], [2001 x double]* %30, i64 %40, i64 %83, !dbg !217
  %85 = load double, double* %84, align 8, !dbg !217, !tbaa !51, !noalias !183
  %86 = getelementptr inbounds double, double* %31, i64 %83, !dbg !218
  %87 = load double, double* %86, align 8, !dbg !218, !tbaa !51, !noalias !183
  %88 = fmul double %85, %87, !dbg !219
  %89 = fsub double %82, %88, !dbg !220
  call void @llvm.dbg.value(metadata double %89, metadata !201, metadata !DIExpression()) #8, !dbg !209
  %90 = or i64 %74, 2, !dbg !221
  call void @llvm.dbg.value(metadata i64 %90, metadata !203, metadata !DIExpression()) #8, !dbg !214
  %91 = getelementptr inbounds [2001 x double], [2001 x double]* %30, i64 %40, i64 %90, !dbg !217
  %92 = load double, double* %91, align 8, !dbg !217, !tbaa !51, !noalias !183
  %93 = getelementptr inbounds double, double* %31, i64 %90, !dbg !218
  %94 = load double, double* %93, align 8, !dbg !218, !tbaa !51, !noalias !183
  %95 = fmul double %92, %94, !dbg !219
  %96 = fsub double %89, %95, !dbg !220
  call void @llvm.dbg.value(metadata double %96, metadata !201, metadata !DIExpression()) #8, !dbg !209
  %97 = or i64 %74, 3, !dbg !221
  call void @llvm.dbg.value(metadata i64 %97, metadata !203, metadata !DIExpression()) #8, !dbg !214
  %98 = getelementptr inbounds [2001 x double], [2001 x double]* %30, i64 %40, i64 %97, !dbg !217
  %99 = load double, double* %98, align 8, !dbg !217, !tbaa !51, !noalias !183
  %100 = getelementptr inbounds double, double* %31, i64 %97, !dbg !218
  %101 = load double, double* %100, align 8, !dbg !218, !tbaa !51, !noalias !183
  %102 = fmul double %99, %101, !dbg !219
  %103 = fsub double %96, %102, !dbg !220
  call void @llvm.dbg.value(metadata double %103, metadata !201, metadata !DIExpression()) #8, !dbg !209
  %104 = add nuw nsw i64 %74, 4, !dbg !221
  call void @llvm.dbg.value(metadata i64 %104, metadata !203, metadata !DIExpression()) #8, !dbg !214
  %105 = add i64 %76, -4, !dbg !216
  %106 = icmp eq i64 %105, 0, !dbg !216
  br i1 %106, label %50, label %73, !dbg !216, !llvm.loop !229

107:                                              ; preds = %68, %16
  store i8* getelementptr inbounds ([96 x i8], [96 x i8]* @5, i64 0, i64 0), i8** %21, align 8, !dbg !227, !tbaa !48, !noalias !183
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull %11, i32 %22) #8, !dbg !227, !noalias !183
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %20) #8, !dbg !227, !noalias !183
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #8, !dbg !227, !noalias !183
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #8, !dbg !227, !noalias !183
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %17) #8, !dbg !227, !noalias !183
  br label %108, !dbg !227

108:                                              ; preds = %6, %107
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %13), !dbg !231
  ret void, !dbg !182
}

; Function Attrs: nounwind uwtable
define internal void @kernel_p3(i32 %0, [2001 x double]* %1, double* %2, double* %3) #0 !dbg !232 {
  %5 = alloca i32, align 4
  %6 = alloca [2001 x double]*, align 8
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca %struct.ident_t, align 8
  %10 = bitcast %struct.ident_t* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %10, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @3 to i8*), i64 16, i1 false)
  call void @llvm.dbg.value(metadata i32 %0, metadata !234, metadata !DIExpression()), !dbg !238
  store i32 %0, i32* %5, align 4, !tbaa !41
  call void @llvm.dbg.value(metadata [2001 x double]* %1, metadata !235, metadata !DIExpression()), !dbg !238
  store [2001 x double]* %1, [2001 x double]** %6, align 8, !tbaa !45
  call void @llvm.dbg.value(metadata double* %2, metadata !236, metadata !DIExpression()), !dbg !238
  store double* %2, double** %7, align 8, !tbaa !45
  call void @llvm.dbg.value(metadata double* %3, metadata !237, metadata !DIExpression()), !dbg !238
  store double* %3, double** %8, align 8, !tbaa !45
  call void @llvm.dbg.value(metadata i32 %0, metadata !234, metadata !DIExpression()), !dbg !238
  %11 = sext i32 %0 to i64, !dbg !239
  %12 = getelementptr inbounds double, double* %3, i64 %11, !dbg !239
  %13 = load double, double* %12, align 8, !dbg !239, !tbaa !51
  call void @llvm.dbg.value(metadata [2001 x double]* %1, metadata !235, metadata !DIExpression()), !dbg !238
  %14 = getelementptr inbounds [2001 x double], [2001 x double]* %1, i64 %11, i64 %11, !dbg !240
  %15 = load double, double* %14, align 8, !dbg !240, !tbaa !51
  %16 = fdiv double %13, %15, !dbg !241
  call void @llvm.dbg.value(metadata double* %2, metadata !236, metadata !DIExpression()), !dbg !238
  %17 = getelementptr inbounds double, double* %2, i64 %11, !dbg !242
  store double %16, double* %17, align 8, !dbg !243, !tbaa !51
  %18 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %9, i64 0, i32 4, !dbg !244
  store i8* getelementptr inbounds ([95 x i8], [95 x i8]* @6, i64 0, i64 0), i8** %18, align 8, !dbg !244, !tbaa !48
  call void @llvm.dbg.value(metadata i32* %5, metadata !234, metadata !DIExpression(DW_OP_deref)), !dbg !238
  call void @llvm.dbg.value(metadata [2001 x double]** %6, metadata !235, metadata !DIExpression(DW_OP_deref)), !dbg !238
  call void @llvm.dbg.value(metadata double** %7, metadata !236, metadata !DIExpression(DW_OP_deref)), !dbg !238
  call void @llvm.dbg.value(metadata double** %8, metadata !237, metadata !DIExpression(DW_OP_deref)), !dbg !238
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %9, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, double**, [2001 x double]**, double**)* @.omp_outlined..4 to void (i32*, i32*, ...)*), i32* nonnull %5, double** nonnull %8, [2001 x double]** nonnull %6, double** nonnull %7) #8, !dbg !244
  ret void, !dbg !245
}

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined..4(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture readonly dereferenceable(4) %2, double** nocapture readonly dereferenceable(8) %3, [2001 x double]** nocapture readonly dereferenceable(8) %4, double** nocapture readonly dereferenceable(8) %5) #2 !dbg !246 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ident_t, align 8
  call void @llvm.dbg.value(metadata i32* %0, metadata !248, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata i32* %1, metadata !249, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata i32* %2, metadata !250, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata double** %3, metadata !251, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata [2001 x double]** %4, metadata !252, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.value(metadata double** %5, metadata !253, metadata !DIExpression()), !dbg !254
  %12 = bitcast %struct.ident_t* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %12)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %12, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @0 to i8*), i64 24, i1 false) #8, !noalias !255
  call void @llvm.dbg.value(metadata i32* %0, metadata !258, metadata !DIExpression()) #8, !dbg !277
  call void @llvm.dbg.value(metadata i32* undef, metadata !261, metadata !DIExpression()) #8, !dbg !277
  call void @llvm.dbg.value(metadata i32* %2, metadata !262, metadata !DIExpression()) #8, !dbg !277
  call void @llvm.dbg.value(metadata double** %3, metadata !263, metadata !DIExpression()) #8, !dbg !277
  call void @llvm.dbg.value(metadata [2001 x double]** %4, metadata !264, metadata !DIExpression()) #8, !dbg !277
  call void @llvm.dbg.value(metadata double** %5, metadata !265, metadata !DIExpression()) #8, !dbg !277
  %13 = load i32, i32* %2, align 4, !dbg !279, !tbaa !41, !noalias !255
  %14 = add nsw i32 %13, -1, !dbg !280
  call void @llvm.dbg.value(metadata i32 %14, metadata !267, metadata !DIExpression()) #8, !dbg !277
  call void @llvm.dbg.value(metadata i32 %14, metadata !267, metadata !DIExpression()) #8, !dbg !277
  call void @llvm.dbg.value(metadata i32 0, metadata !268, metadata !DIExpression()) #8, !dbg !277
  %15 = icmp sgt i32 %13, 0, !dbg !281
  br i1 %15, label %16, label %70, !dbg !281

16:                                               ; preds = %6
  %17 = bitcast i32* %7 to i8*, !dbg !281
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %17) #8, !dbg !281, !noalias !255
  call void @llvm.dbg.value(metadata i32 0, metadata !269, metadata !DIExpression()) #8, !dbg !277
  store i32 0, i32* %7, align 4, !dbg !282, !tbaa !41, !noalias !255
  %18 = bitcast i32* %8 to i8*, !dbg !281
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18) #8, !dbg !281, !noalias !255
  call void @llvm.dbg.value(metadata i32 %14, metadata !270, metadata !DIExpression()) #8, !dbg !277
  store i32 %14, i32* %8, align 4, !dbg !282, !tbaa !41, !noalias !255
  %19 = bitcast i32* %9 to i8*, !dbg !281
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #8, !dbg !281, !noalias !255
  call void @llvm.dbg.value(metadata i32 1, metadata !271, metadata !DIExpression()) #8, !dbg !277
  store i32 1, i32* %9, align 4, !dbg !282, !tbaa !41, !noalias !255
  %20 = bitcast i32* %10 to i8*, !dbg !281
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %20) #8, !dbg !281, !noalias !255
  call void @llvm.dbg.value(metadata i32 0, metadata !272, metadata !DIExpression()) #8, !dbg !277
  store i32 0, i32* %10, align 4, !dbg !282, !tbaa !41, !noalias !255
  %21 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %11, i64 0, i32 4, !dbg !281
  store i8* getelementptr inbounds ([95 x i8], [95 x i8]* @6, i64 0, i64 0), i8** %21, align 8, !dbg !281, !tbaa !48, !noalias !255
  %22 = load i32, i32* %0, align 4, !dbg !281, !tbaa !41, !alias.scope !255
  call void @llvm.dbg.value(metadata i32* %7, metadata !269, metadata !DIExpression(DW_OP_deref)) #8, !dbg !277
  call void @llvm.dbg.value(metadata i32* %8, metadata !270, metadata !DIExpression(DW_OP_deref)) #8, !dbg !277
  call void @llvm.dbg.value(metadata i32* %9, metadata !271, metadata !DIExpression(DW_OP_deref)) #8, !dbg !277
  call void @llvm.dbg.value(metadata i32* %10, metadata !272, metadata !DIExpression(DW_OP_deref)) #8, !dbg !277
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull %11, i32 %22, i32 34, i32* nonnull %10, i32* nonnull %7, i32* nonnull %8, i32* nonnull %9, i32 1, i32 1) #8, !dbg !281, !noalias !255
  %23 = load i32, i32* %8, align 4, !dbg !282, !tbaa !41, !noalias !255
  call void @llvm.dbg.value(metadata i32 %23, metadata !270, metadata !DIExpression()) #8, !dbg !277
  %24 = icmp slt i32 %23, %13, !dbg !282
  %25 = select i1 %24, i32 %23, i32 %14, !dbg !282
  call void @llvm.dbg.value(metadata i32 %25, metadata !270, metadata !DIExpression()) #8, !dbg !277
  store i32 %25, i32* %8, align 4, !dbg !282, !tbaa !41, !noalias !255
  %26 = load i32, i32* %7, align 4, !dbg !282, !tbaa !41, !noalias !255
  call void @llvm.dbg.value(metadata i32 %26, metadata !269, metadata !DIExpression()) #8, !dbg !277
  call void @llvm.dbg.value(metadata i32 %26, metadata !266, metadata !DIExpression()) #8, !dbg !277
  call void @llvm.dbg.value(metadata i32 %25, metadata !270, metadata !DIExpression()) #8, !dbg !277
  %27 = icmp sgt i32 %26, %25, !dbg !281
  br i1 %27, label %69, label %28, !dbg !281

28:                                               ; preds = %16
  %29 = load double*, double** %3, align 8, !dbg !283, !tbaa !45, !noalias !255
  %30 = load i32, i32* %2, align 4, !dbg !283, !tbaa !41, !noalias !255
  %31 = load [2001 x double]*, [2001 x double]** %4, align 8, !dbg !283, !noalias !255
  %32 = load double*, double** %5, align 8, !dbg !284, !noalias !255
  %33 = sub i32 %30, %26, !dbg !281
  %34 = sext i32 %30 to i64, !dbg !281
  %35 = sext i32 %26 to i64, !dbg !281
  %36 = sext i32 %25 to i64, !dbg !281
  br label %37, !dbg !281

37:                                               ; preds = %49, %28
  %38 = phi i64 [ %55, %49 ], [ %35, %28 ]
  %39 = phi i32 [ %57, %49 ], [ %33, %28 ]
  call void @llvm.dbg.value(metadata i64 %38, metadata !266, metadata !DIExpression()) #8, !dbg !277
  call void @llvm.dbg.value(metadata i64 %38, metadata !268, metadata !DIExpression()) #8, !dbg !277
  %40 = trunc i64 %38 to i32, !dbg !286
  %41 = xor i32 %40, -1, !dbg !286
  %42 = add i32 %30, %41, !dbg !286
  %43 = sext i32 %42 to i64, !dbg !287
  %44 = getelementptr inbounds double, double* %29, i64 %43, !dbg !287
  %45 = load double, double* %44, align 8, !dbg !287, !tbaa !51, !noalias !255
  call void @llvm.dbg.value(metadata double %45, metadata !273, metadata !DIExpression()) #8, !dbg !283
  call void @llvm.dbg.value(metadata double %45, metadata !273, metadata !DIExpression()) #8, !dbg !283
  %46 = icmp slt i64 %38, 0, !dbg !288
  br i1 %46, label %49, label %47, !dbg !289

47:                                               ; preds = %37
  %48 = sext i32 %39 to i64, !dbg !286
  br label %58, !dbg !289

49:                                               ; preds = %58, %37
  %50 = phi double [ %45, %37 ], [ %66, %58 ], !dbg !283
  call void @llvm.dbg.value(metadata double %50, metadata !273, metadata !DIExpression()) #8, !dbg !283
  %51 = getelementptr inbounds [2001 x double], [2001 x double]* %31, i64 %43, i64 %43, !dbg !290
  %52 = load double, double* %51, align 8, !dbg !290, !tbaa !51, !noalias !255
  %53 = fdiv double %50, %52, !dbg !291
  %54 = getelementptr inbounds double, double* %32, i64 %43, !dbg !292
  store double %53, double* %54, align 8, !dbg !293, !tbaa !51, !noalias !255
  %55 = add nsw i64 %38, 1, !dbg !281
  call void @llvm.dbg.value(metadata i64 %55, metadata !266, metadata !DIExpression()) #8, !dbg !277
  call void @llvm.dbg.value(metadata i32 %25, metadata !270, metadata !DIExpression()) #8, !dbg !277
  %56 = icmp slt i64 %38, %36, !dbg !281
  %57 = add i32 %39, -1, !dbg !281
  br i1 %56, label %37, label %69, !dbg !281, !llvm.loop !294

58:                                               ; preds = %58, %47
  %59 = phi i64 [ %48, %47 ], [ %67, %58 ]
  %60 = phi double [ %45, %47 ], [ %66, %58 ]
  call void @llvm.dbg.value(metadata i64 %59, metadata !275, metadata !DIExpression()) #8, !dbg !297
  call void @llvm.dbg.value(metadata double %60, metadata !273, metadata !DIExpression()) #8, !dbg !283
  %61 = getelementptr inbounds [2001 x double], [2001 x double]* %31, i64 %43, i64 %59, !dbg !298
  %62 = load double, double* %61, align 8, !dbg !298, !tbaa !51, !noalias !255
  %63 = getelementptr inbounds double, double* %32, i64 %59, !dbg !299
  %64 = load double, double* %63, align 8, !dbg !299, !tbaa !51, !noalias !255
  %65 = fmul double %62, %64, !dbg !300
  %66 = fsub double %60, %65, !dbg !301
  call void @llvm.dbg.value(metadata double %66, metadata !273, metadata !DIExpression()) #8, !dbg !283
  %67 = add nsw i64 %59, 1, !dbg !302
  call void @llvm.dbg.value(metadata i64 %67, metadata !275, metadata !DIExpression()) #8, !dbg !297
  %68 = icmp slt i64 %59, %34, !dbg !288
  br i1 %68, label %58, label %49, !dbg !289, !llvm.loop !303

69:                                               ; preds = %49, %16
  store i8* getelementptr inbounds ([96 x i8], [96 x i8]* @7, i64 0, i64 0), i8** %21, align 8, !dbg !295, !tbaa !48, !noalias !255
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull %11, i32 %22) #8, !dbg !295, !noalias !255
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %20) #8, !dbg !295, !noalias !255
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #8, !dbg !295, !noalias !255
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #8, !dbg !295, !noalias !255
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %17) #8, !dbg !295, !noalias !255
  br label %70, !dbg !295

70:                                               ; preds = %6, %69
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %12), !dbg !305
  ret void, !dbg !306
}

; Function Attrs: nounwind uwtable
define internal void @kernel_ludcmp(i32 %0, [2001 x double]* %1, double* %2, double* %3, double* %4) #0 !dbg !307 {
  %6 = alloca i32, align 4
  %7 = alloca [2001 x double]*, align 8
  %8 = alloca double*, align 8
  %9 = alloca double*, align 8
  %10 = alloca %struct.ident_t, align 8
  %11 = alloca i32, align 4
  %12 = alloca [2001 x double]*, align 8
  %13 = alloca double*, align 8
  %14 = alloca double*, align 8
  %15 = alloca %struct.ident_t, align 8
  %16 = alloca i32, align 4
  %17 = alloca [2001 x double]*, align 8
  %18 = alloca %struct.ident_t, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !311, metadata !DIExpression()), !dbg !316
  call void @llvm.dbg.value(metadata [2001 x double]* %1, metadata !312, metadata !DIExpression()), !dbg !316
  call void @llvm.dbg.value(metadata double* %2, metadata !313, metadata !DIExpression()), !dbg !316
  call void @llvm.dbg.value(metadata double* %3, metadata !314, metadata !DIExpression()), !dbg !316
  call void @llvm.dbg.value(metadata double* %4, metadata !315, metadata !DIExpression()), !dbg !316
  tail call void (...) @polybench_timer_start() #8, !dbg !317
  %19 = bitcast i32* %16 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19)
  %20 = bitcast [2001 x double]** %17 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %20)
  %21 = bitcast %struct.ident_t* %18 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %21)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %21, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @3 to i8*), i64 16, i1 false) #8
  call void @llvm.dbg.value(metadata i32 %0, metadata !37, metadata !DIExpression()) #8, !dbg !318
  store i32 %0, i32* %16, align 4, !tbaa !41
  call void @llvm.dbg.value(metadata [2001 x double]* %1, metadata !38, metadata !DIExpression()) #8, !dbg !318
  store [2001 x double]* %1, [2001 x double]** %17, align 8, !tbaa !45
  call void @llvm.dbg.value(metadata double* %2, metadata !39, metadata !DIExpression()) #8, !dbg !318
  %22 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %18, i64 0, i32 4, !dbg !320
  store i8* getelementptr inbounds ([95 x i8], [95 x i8]* @1, i64 0, i64 0), i8** %22, align 8, !dbg !320, !tbaa !48
  call void @llvm.dbg.value(metadata i32* %16, metadata !37, metadata !DIExpression(DW_OP_deref)) #8, !dbg !318
  call void @llvm.dbg.value(metadata [2001 x double]** %17, metadata !38, metadata !DIExpression(DW_OP_deref)) #8, !dbg !318
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %18, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [2001 x double]**)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %16, [2001 x double]** nonnull %17) #8, !dbg !320
  store double 1.000000e+00, double* %2, align 8, !dbg !321, !tbaa !51
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19), !dbg !322
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %20), !dbg !322
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %21), !dbg !322
  call void (...) @polybench_timer_stop() #8, !dbg !323
  call void (...) @polybench_timer_print() #8, !dbg !324
  call void (...) @polybench_timer_start() #8, !dbg !325
  %23 = bitcast i32* %11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %23)
  %24 = bitcast [2001 x double]** %12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %24)
  %25 = bitcast double** %13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %25)
  %26 = bitcast double** %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26)
  %27 = bitcast %struct.ident_t* %15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %27)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %27, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @3 to i8*), i64 16, i1 false) #8
  call void @llvm.dbg.value(metadata i32 %0, metadata !161, metadata !DIExpression()) #8, !dbg !326
  store i32 %0, i32* %11, align 4, !tbaa !41
  call void @llvm.dbg.value(metadata [2001 x double]* %1, metadata !162, metadata !DIExpression()) #8, !dbg !326
  store [2001 x double]* %1, [2001 x double]** %12, align 8, !tbaa !45
  call void @llvm.dbg.value(metadata double* %2, metadata !163, metadata !DIExpression()) #8, !dbg !326
  store double* %2, double** %13, align 8, !tbaa !45
  call void @llvm.dbg.value(metadata double* %4, metadata !164, metadata !DIExpression()) #8, !dbg !326
  store double* %4, double** %14, align 8, !tbaa !45
  call void @llvm.dbg.value(metadata double* %2, metadata !163, metadata !DIExpression()) #8, !dbg !326
  %28 = bitcast double* %2 to i64*, !dbg !328
  %29 = load i64, i64* %28, align 8, !dbg !328, !tbaa !51
  %30 = bitcast double* %4 to i64*, !dbg !329
  store i64 %29, i64* %30, align 8, !dbg !329, !tbaa !51
  %31 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %15, i64 0, i32 4, !dbg !330
  store i8* getelementptr inbounds ([95 x i8], [95 x i8]* @4, i64 0, i64 0), i8** %31, align 8, !dbg !330, !tbaa !48
  call void @llvm.dbg.value(metadata i32* %11, metadata !161, metadata !DIExpression(DW_OP_deref)) #8, !dbg !326
  call void @llvm.dbg.value(metadata [2001 x double]** %12, metadata !162, metadata !DIExpression(DW_OP_deref)) #8, !dbg !326
  call void @llvm.dbg.value(metadata double** %13, metadata !163, metadata !DIExpression(DW_OP_deref)) #8, !dbg !326
  call void @llvm.dbg.value(metadata double** %14, metadata !164, metadata !DIExpression(DW_OP_deref)) #8, !dbg !326
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %15, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, double**, [2001 x double]**, double**)* @.omp_outlined..2 to void (i32*, i32*, ...)*), i32* nonnull %11, double** nonnull %13, [2001 x double]** nonnull %12, double** nonnull %14) #8, !dbg !330
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %23), !dbg !331
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %24), !dbg !331
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %25), !dbg !331
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26), !dbg !331
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %27), !dbg !331
  call void (...) @polybench_timer_stop() #8, !dbg !332
  call void (...) @polybench_timer_print() #8, !dbg !333
  call void (...) @polybench_timer_start() #8, !dbg !334
  %32 = bitcast i32* %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %32)
  %33 = bitcast [2001 x double]** %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %33)
  %34 = bitcast double** %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %34)
  %35 = bitcast double** %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %35)
  %36 = bitcast %struct.ident_t* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %36)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %36, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @3 to i8*), i64 16, i1 false) #8
  call void @llvm.dbg.value(metadata i32 %0, metadata !234, metadata !DIExpression()) #8, !dbg !335
  store i32 %0, i32* %6, align 4, !tbaa !41
  call void @llvm.dbg.value(metadata [2001 x double]* %1, metadata !235, metadata !DIExpression()) #8, !dbg !335
  store [2001 x double]* %1, [2001 x double]** %7, align 8, !tbaa !45
  call void @llvm.dbg.value(metadata double* %3, metadata !236, metadata !DIExpression()) #8, !dbg !335
  store double* %3, double** %8, align 8, !tbaa !45
  call void @llvm.dbg.value(metadata double* %4, metadata !237, metadata !DIExpression()) #8, !dbg !335
  store double* %4, double** %9, align 8, !tbaa !45
  call void @llvm.dbg.value(metadata i32 %0, metadata !234, metadata !DIExpression()) #8, !dbg !335
  %37 = sext i32 %0 to i64, !dbg !337
  %38 = getelementptr inbounds double, double* %4, i64 %37, !dbg !337
  %39 = load double, double* %38, align 8, !dbg !337, !tbaa !51
  call void @llvm.dbg.value(metadata [2001 x double]* %1, metadata !235, metadata !DIExpression()) #8, !dbg !335
  %40 = getelementptr inbounds [2001 x double], [2001 x double]* %1, i64 %37, i64 %37, !dbg !338
  %41 = load double, double* %40, align 8, !dbg !338, !tbaa !51
  %42 = fdiv double %39, %41, !dbg !339
  call void @llvm.dbg.value(metadata double* %3, metadata !236, metadata !DIExpression()) #8, !dbg !335
  %43 = getelementptr inbounds double, double* %3, i64 %37, !dbg !340
  store double %42, double* %43, align 8, !dbg !341, !tbaa !51
  %44 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %10, i64 0, i32 4, !dbg !342
  store i8* getelementptr inbounds ([95 x i8], [95 x i8]* @6, i64 0, i64 0), i8** %44, align 8, !dbg !342, !tbaa !48
  call void @llvm.dbg.value(metadata i32* %6, metadata !234, metadata !DIExpression(DW_OP_deref)) #8, !dbg !335
  call void @llvm.dbg.value(metadata [2001 x double]** %7, metadata !235, metadata !DIExpression(DW_OP_deref)) #8, !dbg !335
  call void @llvm.dbg.value(metadata double** %8, metadata !236, metadata !DIExpression(DW_OP_deref)) #8, !dbg !335
  call void @llvm.dbg.value(metadata double** %9, metadata !237, metadata !DIExpression(DW_OP_deref)) #8, !dbg !335
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %10, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, double**, [2001 x double]**, double**)* @.omp_outlined..4 to void (i32*, i32*, ...)*), i32* nonnull %6, double** nonnull %9, [2001 x double]** nonnull %7, double** nonnull %8) #8, !dbg !342
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %32), !dbg !343
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %33), !dbg !343
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %34), !dbg !343
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %35), !dbg !343
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %36), !dbg !343
  call void (...) @polybench_timer_stop() #8, !dbg !344
  call void (...) @polybench_timer_print() #8, !dbg !345
  ret void, !dbg !346
}

declare !dbg !4 dso_local void @polybench_timer_start(...) local_unnamed_addr #3

declare !dbg !8 dso_local void @polybench_timer_stop(...) local_unnamed_addr #3

declare !dbg !9 dso_local void @polybench_timer_print(...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %0, i8** nocapture readonly %1) local_unnamed_addr #0 !dbg !347 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !354, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.value(metadata i8** %1, metadata !355, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.value(metadata i32 2000, metadata !356, metadata !DIExpression()), !dbg !361
  %3 = tail call i8* @polybench_alloc_data(i64 4004001, i32 8) #8, !dbg !362
  call void @llvm.dbg.value(metadata i8* %3, metadata !357, metadata !DIExpression()), !dbg !361
  %4 = tail call i8* @polybench_alloc_data(i64 2001, i32 8) #8, !dbg !363
  call void @llvm.dbg.value(metadata i8* %4, metadata !358, metadata !DIExpression()), !dbg !361
  %5 = tail call i8* @polybench_alloc_data(i64 2001, i32 8) #8, !dbg !364
  call void @llvm.dbg.value(metadata i8* %5, metadata !359, metadata !DIExpression()), !dbg !361
  %6 = tail call i8* @polybench_alloc_data(i64 2001, i32 8) #8, !dbg !365
  call void @llvm.dbg.value(metadata i8* %6, metadata !360, metadata !DIExpression()), !dbg !361
  %7 = bitcast i8* %3 to [2001 x double]*, !dbg !366
  %8 = bitcast i8* %4 to double*, !dbg !367
  %9 = bitcast i8* %5 to double*, !dbg !368
  %10 = bitcast i8* %6 to double*, !dbg !369
  call void @llvm.dbg.value(metadata i32 2000, metadata !370, metadata !DIExpression()), !dbg !379
  call void @llvm.dbg.value(metadata [2001 x double]* %7, metadata !373, metadata !DIExpression()), !dbg !379
  call void @llvm.dbg.value(metadata double* %8, metadata !374, metadata !DIExpression()), !dbg !379
  call void @llvm.dbg.value(metadata double* %9, metadata !375, metadata !DIExpression()), !dbg !379
  call void @llvm.dbg.value(metadata double* %10, metadata !376, metadata !DIExpression()), !dbg !379
  call void @llvm.dbg.value(metadata i32 0, metadata !377, metadata !DIExpression()), !dbg !379
  br label %13, !dbg !381

11:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i64 %15, metadata !377, metadata !DIExpression()), !dbg !379
  %12 = icmp eq i64 %15, 2001, !dbg !383
  br i1 %12, label %36, label %13, !dbg !381

13:                                               ; preds = %11, %2
  %14 = phi i64 [ 0, %2 ], [ %15, %11 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !377, metadata !DIExpression()), !dbg !379
  %15 = add nuw nsw i64 %14, 1, !dbg !385
  %16 = trunc i64 %15 to i32, !dbg !387
  %17 = sitofp i32 %16 to double, !dbg !387
  %18 = getelementptr inbounds double, double* %9, i64 %14, !dbg !388
  store double %17, double* %18, align 8, !dbg !389, !tbaa !51
  %19 = trunc i64 %15 to i16, !dbg !390
  %20 = udiv i16 %19, 2000, !dbg !390
  %21 = uitofp i16 %20 to double, !dbg !391
  %22 = fmul double %21, 5.000000e-01, !dbg !392
  %23 = fadd double %22, 1.000000e+00, !dbg !393
  %24 = getelementptr inbounds double, double* %10, i64 %14, !dbg !394
  store double %23, double* %24, align 8, !dbg !395, !tbaa !51
  %25 = fadd double %22, 4.200000e+01, !dbg !396
  %26 = getelementptr inbounds double, double* %8, i64 %14, !dbg !397
  store double %25, double* %26, align 8, !dbg !398, !tbaa !51
  call void @llvm.dbg.value(metadata i32 0, metadata !378, metadata !DIExpression()), !dbg !379
  br label %27, !dbg !399

27:                                               ; preds = %60, %13
  %28 = phi i64 [ 0, %13 ], [ %61, %60 ]
  call void @llvm.dbg.value(metadata i64 %28, metadata !378, metadata !DIExpression()), !dbg !379
  %29 = or i64 %28, 1, !dbg !401
  %30 = trunc i64 %29 to i32, !dbg !404
  %31 = sitofp i32 %30 to double, !dbg !404
  %32 = fmul double %17, %31, !dbg !405
  %33 = fdiv double %32, 2.000000e+03, !dbg !406
  %34 = getelementptr inbounds [2001 x double], [2001 x double]* %7, i64 %14, i64 %28, !dbg !407
  store double %33, double* %34, align 8, !dbg !408, !tbaa !51
  call void @llvm.dbg.value(metadata i64 %29, metadata !378, metadata !DIExpression()), !dbg !379
  %35 = icmp eq i64 %29, 2001, !dbg !409
  br i1 %35, label %11, label %60, !dbg !399, !llvm.loop !410

36:                                               ; preds = %11
  tail call void @kernel_ludcmp(i32 2000, [2001 x double]* nonnull %7, double* %8, double* %9, double* %10), !dbg !412
  %37 = icmp sgt i32 %0, 42, !dbg !413
  br i1 %37, label %38, label %59, !dbg !413

38:                                               ; preds = %36
  %39 = load i8*, i8** %1, align 8, !dbg !413, !tbaa !45
  %40 = load i8, i8* %39, align 1, !dbg !413
  %41 = icmp eq i8 %40, 0, !dbg !413
  br i1 %41, label %42, label %59, !dbg !415

42:                                               ; preds = %38, %55
  %43 = phi i64 [ %56, %55 ], [ 0, %38 ]
  %44 = phi i32 [ %57, %55 ], [ 0, %38 ]
  call void @llvm.dbg.value(metadata i64 %43, metadata !416, metadata !DIExpression()) #8, !dbg !423
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !425, !tbaa !45
  %46 = getelementptr inbounds double, double* %9, i64 %43, !dbg !429
  %47 = load double, double* %46, align 8, !dbg !429, !tbaa !51
  %48 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), double %47) #9, !dbg !430
  %49 = trunc i32 %44 to i16, !dbg !431
  %50 = urem i16 %49, 20, !dbg !431
  %51 = icmp eq i16 %50, 0, !dbg !433
  br i1 %51, label %52, label %55, !dbg !434

52:                                               ; preds = %42
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !435, !tbaa !45
  %54 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %53) #9, !dbg !436
  br label %55, !dbg !436

55:                                               ; preds = %52, %42
  %56 = add nuw nsw i64 %43, 1, !dbg !437
  %57 = add nuw nsw i32 %44, 1, !dbg !437
  call void @llvm.dbg.value(metadata i64 %56, metadata !416, metadata !DIExpression()) #8, !dbg !423
  %58 = icmp eq i64 %56, 2001, !dbg !438
  br i1 %58, label %59, label %42, !dbg !439, !llvm.loop !440

59:                                               ; preds = %55, %38, %36
  tail call void @free(i8* %3) #8, !dbg !442
  tail call void @free(i8* %4) #8, !dbg !443
  tail call void @free(i8* %5) #8, !dbg !444
  tail call void @free(i8* %6) #8, !dbg !445
  ret i32 0, !dbg !446

60:                                               ; preds = %27
  call void @llvm.dbg.value(metadata i64 %29, metadata !378, metadata !DIExpression()), !dbg !379
  %61 = add nuw nsw i64 %28, 2, !dbg !401
  %62 = trunc i64 %61 to i32, !dbg !404
  %63 = sitofp i32 %62 to double, !dbg !404
  %64 = fmul double %17, %63, !dbg !405
  %65 = fdiv double %64, 2.000000e+03, !dbg !406
  %66 = getelementptr inbounds [2001 x double], [2001 x double]* %7, i64 %14, i64 %29, !dbg !407
  store double %65, double* %66, align 8, !dbg !408, !tbaa !51
  call void @llvm.dbg.value(metadata i64 %61, metadata !378, metadata !DIExpression()), !dbg !379
  br label %27
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
!1 = !DIFile(filename: "../test/poly_gpu/inputs_kernel_splits/linear-algebra/solvers/ludcmp/ludcmp.c", directory: "/WAVE/users/unix/klor/ycho_lab/kimsong_lor/autotuning_tools/scripts")
!2 = !{}
!3 = !{!4, !8, !9, !10, !15, !21, !18, !24, !12}
!4 = !DISubprogram(name: "polybench_timer_start", scope: !5, file: !5, line: 184, type: !6, spFlags: DISPFlagOptimized, retainedNodes: !2)
!5 = !DIFile(filename: "../test/poly_gpu/inputs_kernel_splits/utilities/polybench.h", directory: "/WAVE/users/unix/klor/ycho_lab/kimsong_lor/autotuning_tools/scripts")
!6 = !DISubroutineType(types: !7)
!7 = !{null, null}
!8 = !DISubprogram(name: "polybench_timer_stop", scope: !5, file: !5, line: 185, type: !6, spFlags: DISPFlagOptimized, retainedNodes: !2)
!9 = !DISubprogram(name: "polybench_timer_print", scope: !5, file: !5, line: 186, type: !6, spFlags: DISPFlagOptimized, retainedNodes: !2)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 256256064, elements: !13)
!12 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!13 = !{!14, !14}
!14 = !DISubrange(count: 2001)
!15 = !DISubprogram(name: "polybench_alloc_data", scope: !5, file: !5, line: 199, type: !16, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!16 = !DISubroutineType(types: !17)
!17 = !{!18, !19, !20}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!19 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 128064, elements: !23)
!23 = !{!14}
!24 = !DISubprogram(name: "free", scope: !25, file: !25, line: 563, type: !26, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!25 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!26 = !DISubroutineType(types: !27)
!27 = !{null, !18}
!28 = !{i32 7, !"Dwarf Version", i32 4}
!29 = !{i32 2, !"Debug Info Version", i32 3}
!30 = !{i32 1, !"wchar_size", i32 4}
!31 = !{!"clang version 10.0.1 (https://github.com/conda-forge/clangdev-feedstock 2a1fb6e8a1c6dc6e585535457c24f0295d90c8d2)"}
!32 = distinct !DISubprogram(name: "kernel_p1", scope: !1, file: !1, line: 59, type: !33, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !36)
!33 = !DISubroutineType(types: !34)
!34 = !{null, !20, !21, !35}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!36 = !{!37, !38, !39}
!37 = !DILocalVariable(name: "n", arg: 1, scope: !32, file: !1, line: 59, type: !20)
!38 = !DILocalVariable(name: "A", arg: 2, scope: !32, file: !1, line: 59, type: !21)
!39 = !DILocalVariable(name: "b", arg: 3, scope: !32, file: !1, line: 59, type: !35)
!40 = !DILocation(line: 0, scope: !32)
!41 = !{!42, !42, i64 0}
!42 = !{!"int", !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C/C++ TBAA"}
!45 = !{!46, !46, i64 0}
!46 = !{!"any pointer", !43, i64 0}
!47 = !DILocation(line: 61, column: 1, scope: !32)
!48 = !{!49, !46, i64 16}
!49 = !{!"ident_t", !42, i64 0, !42, i64 4, !42, i64 8, !42, i64 12, !46, i64 16}
!50 = !DILocation(line: 79, column: 8, scope: !32)
!51 = !{!52, !52, i64 0}
!52 = !{!"double", !43, i64 0}
!53 = !DILocation(line: 80, column: 1, scope: !32)
!54 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 62, type: !55, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !63)
!55 = !DISubroutineType(types: !56)
!56 = !{null, !57, !57, !61, !62}
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!61 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !20, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !21, size: 64)
!63 = !{!64, !65, !66, !67}
!64 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !54, type: !57, flags: DIFlagArtificial)
!65 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !54, type: !57, flags: DIFlagArtificial)
!66 = !DILocalVariable(name: "n", arg: 3, scope: !54, type: !61, flags: DIFlagArtificial)
!67 = !DILocalVariable(name: "A", arg: 4, scope: !54, type: !62, flags: DIFlagArtificial)
!68 = !DILocation(line: 0, scope: !54)
!69 = !{!70}
!70 = distinct !{!70, !71, !".omp_outlined._debug__: argument 0"}
!71 = distinct !{!71, !".omp_outlined._debug__"}
!72 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !73, type: !57, flags: DIFlagArtificial)
!73 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 62, type: !55, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !74)
!74 = !{!72, !75, !76, !77, !78, !79, !79, !80, !81, !82, !83, !84, !80, !85, !88, !91, !93, !95, !98}
!75 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !73, type: !57, flags: DIFlagArtificial)
!76 = !DILocalVariable(name: "n", arg: 3, scope: !73, file: !1, line: 59, type: !61)
!77 = !DILocalVariable(name: "A", arg: 4, scope: !73, file: !1, line: 59, type: !62)
!78 = !DILocalVariable(name: ".omp.iv", scope: !73, type: !20, flags: DIFlagArtificial)
!79 = !DILocalVariable(name: ".capture_expr.", scope: !73, type: !20, flags: DIFlagArtificial)
!80 = !DILocalVariable(name: "i", scope: !73, type: !20, flags: DIFlagArtificial)
!81 = !DILocalVariable(name: ".omp.lb", scope: !73, type: !20, flags: DIFlagArtificial)
!82 = !DILocalVariable(name: ".omp.ub", scope: !73, type: !20, flags: DIFlagArtificial)
!83 = !DILocalVariable(name: ".omp.stride", scope: !73, type: !20, flags: DIFlagArtificial)
!84 = !DILocalVariable(name: ".omp.is_last", scope: !73, type: !20, flags: DIFlagArtificial)
!85 = !DILocalVariable(name: "j", scope: !86, file: !1, line: 64, type: !20)
!86 = distinct !DILexicalBlock(scope: !87, file: !1, line: 64, column: 5)
!87 = distinct !DILexicalBlock(scope: !73, file: !1, line: 63, column: 3)
!88 = !DILocalVariable(name: "w", scope: !89, file: !1, line: 66, type: !12)
!89 = distinct !DILexicalBlock(scope: !90, file: !1, line: 65, column: 5)
!90 = distinct !DILexicalBlock(scope: !86, file: !1, line: 64, column: 5)
!91 = !DILocalVariable(name: "k", scope: !92, file: !1, line: 67, type: !20)
!92 = distinct !DILexicalBlock(scope: !89, file: !1, line: 67, column: 7)
!93 = !DILocalVariable(name: "j", scope: !94, file: !1, line: 71, type: !20)
!94 = distinct !DILexicalBlock(scope: !87, file: !1, line: 71, column: 5)
!95 = !DILocalVariable(name: "w", scope: !96, file: !1, line: 73, type: !12)
!96 = distinct !DILexicalBlock(scope: !97, file: !1, line: 72, column: 5)
!97 = distinct !DILexicalBlock(scope: !94, file: !1, line: 71, column: 5)
!98 = !DILocalVariable(name: "k", scope: !99, file: !1, line: 74, type: !20)
!99 = distinct !DILexicalBlock(scope: !96, file: !1, line: 74, column: 7)
!100 = !DILocation(line: 0, scope: !73, inlinedAt: !101)
!101 = distinct !DILocation(line: 62, column: 3, scope: !54)
!102 = !DILocation(line: 62, column: 23, scope: !73, inlinedAt: !101)
!103 = !DILocation(line: 62, column: 3, scope: !73, inlinedAt: !101)
!104 = !DILocation(line: 62, column: 8, scope: !73, inlinedAt: !101)
!105 = !DILocation(line: 0, scope: !90, inlinedAt: !101)
!106 = !DILocation(line: 0, scope: !89, inlinedAt: !101)
!107 = !DILocation(line: 64, column: 20, scope: !86, inlinedAt: !101)
!108 = !DILocation(line: 0, scope: !86, inlinedAt: !101)
!109 = !DILocation(line: 64, column: 27, scope: !90, inlinedAt: !101)
!110 = !DILocation(line: 64, column: 5, scope: !86, inlinedAt: !101)
!111 = !DILocation(line: 0, scope: !112, inlinedAt: !101)
!112 = distinct !DILexicalBlock(scope: !92, file: !1, line: 67, column: 7)
!113 = !DILocation(line: 66, column: 21, scope: !89, inlinedAt: !101)
!114 = !DILocation(line: 0, scope: !92, inlinedAt: !101)
!115 = !DILocation(line: 69, column: 21, scope: !89, inlinedAt: !101)
!116 = !DILocation(line: 69, column: 19, scope: !89, inlinedAt: !101)
!117 = !DILocation(line: 69, column: 15, scope: !89, inlinedAt: !101)
!118 = !DILocation(line: 64, column: 38, scope: !90, inlinedAt: !101)
!119 = !DILocation(line: 67, column: 7, scope: !92, inlinedAt: !101)
!120 = !DILocation(line: 68, column: 14, scope: !112, inlinedAt: !101)
!121 = !DILocation(line: 68, column: 24, scope: !112, inlinedAt: !101)
!122 = !DILocation(line: 68, column: 22, scope: !112, inlinedAt: !101)
!123 = !DILocation(line: 68, column: 11, scope: !112, inlinedAt: !101)
!124 = !DILocation(line: 67, column: 31, scope: !112, inlinedAt: !101)
!125 = distinct !{!125, !119, !126}
!126 = !DILocation(line: 68, column: 30, scope: !92, inlinedAt: !101)
!127 = distinct !{!127, !110, !128}
!128 = !DILocation(line: 70, column: 5, scope: !86, inlinedAt: !101)
!129 = !DILocation(line: 0, scope: !94, inlinedAt: !101)
!130 = !DILocation(line: 0, scope: !131, inlinedAt: !101)
!131 = distinct !DILexicalBlock(scope: !99, file: !1, line: 74, column: 7)
!132 = !DILocation(line: 71, column: 5, scope: !94, inlinedAt: !101)
!133 = distinct !{!133, !134, !135}
!134 = !DILocation(line: 61, column: 1, scope: !73, inlinedAt: !101)
!135 = !DILocation(line: 61, column: 25, scope: !73, inlinedAt: !101)
!136 = !DILocation(line: 0, scope: !99, inlinedAt: !101)
!137 = distinct !{!137, !110, !128}
!138 = !DILocation(line: 73, column: 21, scope: !96, inlinedAt: !101)
!139 = !DILocation(line: 0, scope: !96, inlinedAt: !101)
!140 = !DILocation(line: 74, column: 7, scope: !99, inlinedAt: !101)
!141 = !DILocation(line: 75, column: 14, scope: !131, inlinedAt: !101)
!142 = !DILocation(line: 75, column: 28, scope: !131, inlinedAt: !101)
!143 = !DILocation(line: 75, column: 26, scope: !131, inlinedAt: !101)
!144 = !DILocation(line: 75, column: 11, scope: !131, inlinedAt: !101)
!145 = !DILocation(line: 76, column: 19, scope: !96, inlinedAt: !101)
!146 = !DILocation(line: 71, column: 38, scope: !97, inlinedAt: !101)
!147 = !DILocation(line: 71, column: 27, scope: !97, inlinedAt: !101)
!148 = distinct !{!148, !132, !149}
!149 = !DILocation(line: 77, column: 5, scope: !94, inlinedAt: !101)
!150 = !DILocation(line: 74, column: 32, scope: !131, inlinedAt: !101)
!151 = distinct !{!151, !140, !152}
!152 = !DILocation(line: 75, column: 34, scope: !99, inlinedAt: !101)
!153 = !DILocation(line: 78, column: 3, scope: !73, inlinedAt: !101)
!154 = !DILocation(line: 62, column: 3, scope: !54)
!155 = !{!156}
!156 = !{i64 2, i64 -1, i64 -1, i1 true}
!157 = distinct !DISubprogram(name: "kernel_p2", scope: !1, file: !1, line: 82, type: !158, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !160)
!158 = !DISubroutineType(types: !159)
!159 = !{null, !20, !21, !35, !35}
!160 = !{!161, !162, !163, !164}
!161 = !DILocalVariable(name: "n", arg: 1, scope: !157, file: !1, line: 82, type: !20)
!162 = !DILocalVariable(name: "A", arg: 2, scope: !157, file: !1, line: 82, type: !21)
!163 = !DILocalVariable(name: "b", arg: 3, scope: !157, file: !1, line: 82, type: !35)
!164 = !DILocalVariable(name: "y", arg: 4, scope: !157, file: !1, line: 82, type: !35)
!165 = !DILocation(line: 0, scope: !157)
!166 = !DILocation(line: 84, column: 10, scope: !157)
!167 = !DILocation(line: 84, column: 8, scope: !157)
!168 = !DILocation(line: 85, column: 1, scope: !157)
!169 = !DILocation(line: 93, column: 1, scope: !157)
!170 = distinct !DISubprogram(name: ".omp_outlined..2", scope: !1, file: !1, line: 86, type: !171, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !174)
!171 = !DISubroutineType(types: !172)
!172 = !{null, !57, !57, !61, !173, !62, !173}
!173 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !35, size: 64)
!174 = !{!175, !176, !177, !178, !179, !180}
!175 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !170, type: !57, flags: DIFlagArtificial)
!176 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !170, type: !57, flags: DIFlagArtificial)
!177 = !DILocalVariable(name: "n", arg: 3, scope: !170, type: !61, flags: DIFlagArtificial)
!178 = !DILocalVariable(name: "b", arg: 4, scope: !170, type: !173, flags: DIFlagArtificial)
!179 = !DILocalVariable(name: "A", arg: 5, scope: !170, type: !62, flags: DIFlagArtificial)
!180 = !DILocalVariable(name: "y", arg: 6, scope: !170, type: !173, flags: DIFlagArtificial)
!181 = !DILocation(line: 0, scope: !170)
!182 = !DILocation(line: 86, column: 3, scope: !170)
!183 = !{!184}
!184 = distinct !{!184, !185, !".omp_outlined._debug__.1: argument 0"}
!185 = distinct !{!185, !".omp_outlined._debug__.1"}
!186 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !187, type: !57, flags: DIFlagArtificial)
!187 = distinct !DISubprogram(name: ".omp_outlined._debug__.1", scope: !1, file: !1, line: 86, type: !171, scopeLine: 86, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !188)
!188 = !{!186, !189, !190, !191, !192, !193, !194, !195, !195, !196, !197, !198, !199, !200, !196, !201, !203}
!189 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !187, type: !57, flags: DIFlagArtificial)
!190 = !DILocalVariable(name: "n", arg: 3, scope: !187, file: !1, line: 82, type: !61)
!191 = !DILocalVariable(name: "b", arg: 4, scope: !187, file: !1, line: 82, type: !173)
!192 = !DILocalVariable(name: "A", arg: 5, scope: !187, file: !1, line: 82, type: !62)
!193 = !DILocalVariable(name: "y", arg: 6, scope: !187, file: !1, line: 82, type: !173)
!194 = !DILocalVariable(name: ".omp.iv", scope: !187, type: !20, flags: DIFlagArtificial)
!195 = !DILocalVariable(name: ".capture_expr.", scope: !187, type: !20, flags: DIFlagArtificial)
!196 = !DILocalVariable(name: "i", scope: !187, type: !20, flags: DIFlagArtificial)
!197 = !DILocalVariable(name: ".omp.lb", scope: !187, type: !20, flags: DIFlagArtificial)
!198 = !DILocalVariable(name: ".omp.ub", scope: !187, type: !20, flags: DIFlagArtificial)
!199 = !DILocalVariable(name: ".omp.stride", scope: !187, type: !20, flags: DIFlagArtificial)
!200 = !DILocalVariable(name: ".omp.is_last", scope: !187, type: !20, flags: DIFlagArtificial)
!201 = !DILocalVariable(name: "w", scope: !202, file: !1, line: 88, type: !12)
!202 = distinct !DILexicalBlock(scope: !187, file: !1, line: 87, column: 3)
!203 = !DILocalVariable(name: "j", scope: !204, file: !1, line: 89, type: !20)
!204 = distinct !DILexicalBlock(scope: !202, file: !1, line: 89, column: 5)
!205 = !DILocation(line: 0, scope: !187, inlinedAt: !206)
!206 = distinct !DILocation(line: 86, column: 3, scope: !170)
!207 = !DILocation(line: 86, column: 3, scope: !187, inlinedAt: !206)
!208 = !DILocation(line: 86, column: 8, scope: !187, inlinedAt: !206)
!209 = !DILocation(line: 0, scope: !202, inlinedAt: !206)
!210 = !DILocation(line: 0, scope: !211, inlinedAt: !206)
!211 = distinct !DILexicalBlock(scope: !204, file: !1, line: 89, column: 5)
!212 = !DILocation(line: 86, column: 31, scope: !187, inlinedAt: !206)
!213 = !DILocation(line: 88, column: 19, scope: !202, inlinedAt: !206)
!214 = !DILocation(line: 0, scope: !204, inlinedAt: !206)
!215 = !DILocation(line: 89, column: 23, scope: !211, inlinedAt: !206)
!216 = !DILocation(line: 89, column: 5, scope: !204, inlinedAt: !206)
!217 = !DILocation(line: 90, column: 12, scope: !211, inlinedAt: !206)
!218 = !DILocation(line: 90, column: 22, scope: !211, inlinedAt: !206)
!219 = !DILocation(line: 90, column: 20, scope: !211, inlinedAt: !206)
!220 = !DILocation(line: 90, column: 9, scope: !211, inlinedAt: !206)
!221 = !DILocation(line: 89, column: 29, scope: !211, inlinedAt: !206)
!222 = distinct !{!222, !223}
!223 = !{!"llvm.loop.unroll.disable"}
!224 = !DILocation(line: 91, column: 5, scope: !202, inlinedAt: !206)
!225 = !DILocation(line: 91, column: 10, scope: !202, inlinedAt: !206)
!226 = distinct !{!226, !227, !228}
!227 = !DILocation(line: 85, column: 1, scope: !187, inlinedAt: !206)
!228 = !DILocation(line: 85, column: 25, scope: !187, inlinedAt: !206)
!229 = distinct !{!229, !216, !230}
!230 = !DILocation(line: 90, column: 25, scope: !204, inlinedAt: !206)
!231 = !DILocation(line: 92, column: 3, scope: !187, inlinedAt: !206)
!232 = distinct !DISubprogram(name: "kernel_p3", scope: !1, file: !1, line: 95, type: !158, scopeLine: 96, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !233)
!233 = !{!234, !235, !236, !237}
!234 = !DILocalVariable(name: "n", arg: 1, scope: !232, file: !1, line: 95, type: !20)
!235 = !DILocalVariable(name: "A", arg: 2, scope: !232, file: !1, line: 95, type: !21)
!236 = !DILocalVariable(name: "x", arg: 3, scope: !232, file: !1, line: 95, type: !35)
!237 = !DILocalVariable(name: "y", arg: 4, scope: !232, file: !1, line: 95, type: !35)
!238 = !DILocation(line: 0, scope: !232)
!239 = !DILocation(line: 97, column: 14, scope: !232)
!240 = !DILocation(line: 97, column: 25, scope: !232)
!241 = !DILocation(line: 97, column: 23, scope: !232)
!242 = !DILocation(line: 97, column: 3, scope: !232)
!243 = !DILocation(line: 97, column: 12, scope: !232)
!244 = !DILocation(line: 98, column: 1, scope: !232)
!245 = !DILocation(line: 106, column: 1, scope: !232)
!246 = distinct !DISubprogram(name: ".omp_outlined..4", scope: !1, file: !1, line: 99, type: !171, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !247)
!247 = !{!248, !249, !250, !251, !252, !253}
!248 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !246, type: !57, flags: DIFlagArtificial)
!249 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !246, type: !57, flags: DIFlagArtificial)
!250 = !DILocalVariable(name: "n", arg: 3, scope: !246, type: !61, flags: DIFlagArtificial)
!251 = !DILocalVariable(name: "y", arg: 4, scope: !246, type: !173, flags: DIFlagArtificial)
!252 = !DILocalVariable(name: "A", arg: 5, scope: !246, type: !62, flags: DIFlagArtificial)
!253 = !DILocalVariable(name: "x", arg: 6, scope: !246, type: !173, flags: DIFlagArtificial)
!254 = !DILocation(line: 0, scope: !246)
!255 = !{!256}
!256 = distinct !{!256, !257, !".omp_outlined._debug__.3: argument 0"}
!257 = distinct !{!257, !".omp_outlined._debug__.3"}
!258 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !259, type: !57, flags: DIFlagArtificial)
!259 = distinct !DISubprogram(name: ".omp_outlined._debug__.3", scope: !1, file: !1, line: 99, type: !171, scopeLine: 99, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !260)
!260 = !{!258, !261, !262, !263, !264, !265, !266, !267, !267, !268, !269, !270, !271, !272, !268, !273, !275}
!261 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !259, type: !57, flags: DIFlagArtificial)
!262 = !DILocalVariable(name: "n", arg: 3, scope: !259, file: !1, line: 95, type: !61)
!263 = !DILocalVariable(name: "y", arg: 4, scope: !259, file: !1, line: 95, type: !173)
!264 = !DILocalVariable(name: "A", arg: 5, scope: !259, file: !1, line: 95, type: !62)
!265 = !DILocalVariable(name: "x", arg: 6, scope: !259, file: !1, line: 95, type: !173)
!266 = !DILocalVariable(name: ".omp.iv", scope: !259, type: !20, flags: DIFlagArtificial)
!267 = !DILocalVariable(name: ".capture_expr.", scope: !259, type: !20, flags: DIFlagArtificial)
!268 = !DILocalVariable(name: "i", scope: !259, type: !20, flags: DIFlagArtificial)
!269 = !DILocalVariable(name: ".omp.lb", scope: !259, type: !20, flags: DIFlagArtificial)
!270 = !DILocalVariable(name: ".omp.ub", scope: !259, type: !20, flags: DIFlagArtificial)
!271 = !DILocalVariable(name: ".omp.stride", scope: !259, type: !20, flags: DIFlagArtificial)
!272 = !DILocalVariable(name: ".omp.is_last", scope: !259, type: !20, flags: DIFlagArtificial)
!273 = !DILocalVariable(name: "w", scope: !274, file: !1, line: 101, type: !12)
!274 = distinct !DILexicalBlock(scope: !259, file: !1, line: 100, column: 3)
!275 = !DILocalVariable(name: "j", scope: !276, file: !1, line: 102, type: !20)
!276 = distinct !DILexicalBlock(scope: !274, file: !1, line: 102, column: 5)
!277 = !DILocation(line: 0, scope: !259, inlinedAt: !278)
!278 = distinct !DILocation(line: 99, column: 3, scope: !246)
!279 = !DILocation(line: 99, column: 24, scope: !259, inlinedAt: !278)
!280 = !DILocation(line: 99, column: 30, scope: !259, inlinedAt: !278)
!281 = !DILocation(line: 99, column: 3, scope: !259, inlinedAt: !278)
!282 = !DILocation(line: 99, column: 8, scope: !259, inlinedAt: !278)
!283 = !DILocation(line: 0, scope: !274, inlinedAt: !278)
!284 = !DILocation(line: 0, scope: !285, inlinedAt: !278)
!285 = distinct !DILexicalBlock(scope: !276, file: !1, line: 102, column: 5)
!286 = !DILocation(line: 101, column: 31, scope: !274, inlinedAt: !278)
!287 = !DILocation(line: 101, column: 19, scope: !274, inlinedAt: !278)
!288 = !DILocation(line: 102, column: 31, scope: !285, inlinedAt: !278)
!289 = !DILocation(line: 102, column: 5, scope: !276, inlinedAt: !278)
!290 = !DILocation(line: 104, column: 28, scope: !274, inlinedAt: !278)
!291 = !DILocation(line: 104, column: 26, scope: !274, inlinedAt: !278)
!292 = !DILocation(line: 104, column: 5, scope: !274, inlinedAt: !278)
!293 = !DILocation(line: 104, column: 22, scope: !274, inlinedAt: !278)
!294 = distinct !{!294, !295, !296}
!295 = !DILocation(line: 98, column: 1, scope: !259, inlinedAt: !278)
!296 = !DILocation(line: 98, column: 25, scope: !259, inlinedAt: !278)
!297 = !DILocation(line: 0, scope: !276, inlinedAt: !278)
!298 = !DILocation(line: 103, column: 12, scope: !285, inlinedAt: !278)
!299 = !DILocation(line: 103, column: 34, scope: !285, inlinedAt: !278)
!300 = !DILocation(line: 103, column: 32, scope: !285, inlinedAt: !278)
!301 = !DILocation(line: 103, column: 9, scope: !285, inlinedAt: !278)
!302 = !DILocation(line: 102, column: 42, scope: !285, inlinedAt: !278)
!303 = distinct !{!303, !289, !304}
!304 = !DILocation(line: 103, column: 37, scope: !276, inlinedAt: !278)
!305 = !DILocation(line: 105, column: 3, scope: !259, inlinedAt: !278)
!306 = !DILocation(line: 99, column: 3, scope: !246)
!307 = distinct !DISubprogram(name: "kernel_ludcmp", scope: !1, file: !1, line: 110, type: !308, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !310)
!308 = !DISubroutineType(types: !309)
!309 = !{null, !20, !21, !35, !35, !35}
!310 = !{!311, !312, !313, !314, !315}
!311 = !DILocalVariable(name: "n", arg: 1, scope: !307, file: !1, line: 110, type: !20)
!312 = !DILocalVariable(name: "A", arg: 2, scope: !307, file: !1, line: 111, type: !21)
!313 = !DILocalVariable(name: "b", arg: 3, scope: !307, file: !1, line: 112, type: !35)
!314 = !DILocalVariable(name: "x", arg: 4, scope: !307, file: !1, line: 113, type: !35)
!315 = !DILocalVariable(name: "y", arg: 5, scope: !307, file: !1, line: 114, type: !35)
!316 = !DILocation(line: 0, scope: !307)
!317 = !DILocation(line: 117, column: 3, scope: !307)
!318 = !DILocation(line: 0, scope: !32, inlinedAt: !319)
!319 = distinct !DILocation(line: 118, column: 3, scope: !307)
!320 = !DILocation(line: 61, column: 1, scope: !32, inlinedAt: !319)
!321 = !DILocation(line: 79, column: 8, scope: !32, inlinedAt: !319)
!322 = !DILocation(line: 80, column: 1, scope: !32, inlinedAt: !319)
!323 = !DILocation(line: 119, column: 3, scope: !307)
!324 = !DILocation(line: 120, column: 3, scope: !307)
!325 = !DILocation(line: 122, column: 3, scope: !307)
!326 = !DILocation(line: 0, scope: !157, inlinedAt: !327)
!327 = distinct !DILocation(line: 123, column: 3, scope: !307)
!328 = !DILocation(line: 84, column: 10, scope: !157, inlinedAt: !327)
!329 = !DILocation(line: 84, column: 8, scope: !157, inlinedAt: !327)
!330 = !DILocation(line: 85, column: 1, scope: !157, inlinedAt: !327)
!331 = !DILocation(line: 93, column: 1, scope: !157, inlinedAt: !327)
!332 = !DILocation(line: 124, column: 3, scope: !307)
!333 = !DILocation(line: 125, column: 3, scope: !307)
!334 = !DILocation(line: 127, column: 3, scope: !307)
!335 = !DILocation(line: 0, scope: !232, inlinedAt: !336)
!336 = distinct !DILocation(line: 128, column: 3, scope: !307)
!337 = !DILocation(line: 97, column: 14, scope: !232, inlinedAt: !336)
!338 = !DILocation(line: 97, column: 25, scope: !232, inlinedAt: !336)
!339 = !DILocation(line: 97, column: 23, scope: !232, inlinedAt: !336)
!340 = !DILocation(line: 97, column: 3, scope: !232, inlinedAt: !336)
!341 = !DILocation(line: 97, column: 12, scope: !232, inlinedAt: !336)
!342 = !DILocation(line: 98, column: 1, scope: !232, inlinedAt: !336)
!343 = !DILocation(line: 106, column: 1, scope: !232, inlinedAt: !336)
!344 = !DILocation(line: 129, column: 3, scope: !307)
!345 = !DILocation(line: 130, column: 3, scope: !307)
!346 = !DILocation(line: 132, column: 1, scope: !307)
!347 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 134, type: !348, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !353)
!348 = !DISubroutineType(types: !349)
!349 = !{!20, !20, !350}
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!353 = !{!354, !355, !356, !357, !358, !359, !360}
!354 = !DILocalVariable(name: "argc", arg: 1, scope: !347, file: !1, line: 134, type: !20)
!355 = !DILocalVariable(name: "argv", arg: 2, scope: !347, file: !1, line: 134, type: !350)
!356 = !DILocalVariable(name: "n", scope: !347, file: !1, line: 137, type: !20)
!357 = !DILocalVariable(name: "A", scope: !347, file: !1, line: 140, type: !10)
!358 = !DILocalVariable(name: "b", scope: !347, file: !1, line: 141, type: !21)
!359 = !DILocalVariable(name: "x", scope: !347, file: !1, line: 142, type: !21)
!360 = !DILocalVariable(name: "y", scope: !347, file: !1, line: 143, type: !21)
!361 = !DILocation(line: 0, scope: !347)
!362 = !DILocation(line: 140, column: 3, scope: !347)
!363 = !DILocation(line: 141, column: 3, scope: !347)
!364 = !DILocation(line: 142, column: 3, scope: !347)
!365 = !DILocation(line: 143, column: 3, scope: !347)
!366 = !DILocation(line: 147, column: 14, scope: !347)
!367 = !DILocation(line: 148, column: 14, scope: !347)
!368 = !DILocation(line: 149, column: 14, scope: !347)
!369 = !DILocation(line: 150, column: 14, scope: !347)
!370 = !DILocalVariable(name: "n", arg: 1, scope: !371, file: !1, line: 23, type: !20)
!371 = distinct !DISubprogram(name: "init_array", scope: !1, file: !1, line: 23, type: !308, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !372)
!372 = !{!370, !373, !374, !375, !376, !377, !378}
!373 = !DILocalVariable(name: "A", arg: 2, scope: !371, file: !1, line: 24, type: !21)
!374 = !DILocalVariable(name: "b", arg: 3, scope: !371, file: !1, line: 25, type: !35)
!375 = !DILocalVariable(name: "x", arg: 4, scope: !371, file: !1, line: 26, type: !35)
!376 = !DILocalVariable(name: "y", arg: 5, scope: !371, file: !1, line: 27, type: !35)
!377 = !DILocalVariable(name: "i", scope: !371, file: !1, line: 29, type: !20)
!378 = !DILocalVariable(name: "j", scope: !371, file: !1, line: 29, type: !20)
!379 = !DILocation(line: 0, scope: !371, inlinedAt: !380)
!380 = distinct !DILocation(line: 146, column: 3, scope: !347)
!381 = !DILocation(line: 31, column: 3, scope: !382, inlinedAt: !380)
!382 = distinct !DILexicalBlock(scope: !371, file: !1, line: 31, column: 3)
!383 = !DILocation(line: 31, column: 17, scope: !384, inlinedAt: !380)
!384 = distinct !DILexicalBlock(scope: !382, file: !1, line: 31, column: 3)
!385 = !DILocation(line: 33, column: 14, scope: !386, inlinedAt: !380)
!386 = distinct !DILexicalBlock(scope: !384, file: !1, line: 32, column: 3)
!387 = !DILocation(line: 33, column: 12, scope: !386, inlinedAt: !380)
!388 = !DILocation(line: 33, column: 5, scope: !386, inlinedAt: !380)
!389 = !DILocation(line: 33, column: 10, scope: !386, inlinedAt: !380)
!390 = !DILocation(line: 34, column: 20, scope: !386, inlinedAt: !380)
!391 = !DILocation(line: 34, column: 12, scope: !386, inlinedAt: !380)
!392 = !DILocation(line: 34, column: 24, scope: !386, inlinedAt: !380)
!393 = !DILocation(line: 34, column: 30, scope: !386, inlinedAt: !380)
!394 = !DILocation(line: 34, column: 5, scope: !386, inlinedAt: !380)
!395 = !DILocation(line: 34, column: 10, scope: !386, inlinedAt: !380)
!396 = !DILocation(line: 35, column: 30, scope: !386, inlinedAt: !380)
!397 = !DILocation(line: 35, column: 5, scope: !386, inlinedAt: !380)
!398 = !DILocation(line: 35, column: 10, scope: !386, inlinedAt: !380)
!399 = !DILocation(line: 36, column: 5, scope: !400, inlinedAt: !380)
!400 = distinct !DILexicalBlock(scope: !386, file: !1, line: 36, column: 5)
!401 = !DILocation(line: 38, column: 42, scope: !402, inlinedAt: !380)
!402 = distinct !DILexicalBlock(scope: !403, file: !1, line: 37, column: 5)
!403 = distinct !DILexicalBlock(scope: !400, file: !1, line: 36, column: 5)
!404 = !DILocation(line: 38, column: 39, scope: !402, inlinedAt: !380)
!405 = !DILocation(line: 38, column: 37, scope: !402, inlinedAt: !380)
!406 = !DILocation(line: 38, column: 48, scope: !402, inlinedAt: !380)
!407 = !DILocation(line: 38, column: 7, scope: !402, inlinedAt: !380)
!408 = !DILocation(line: 38, column: 15, scope: !402, inlinedAt: !380)
!409 = !DILocation(line: 36, column: 19, scope: !403, inlinedAt: !380)
!410 = distinct !{!410, !399, !411}
!411 = !DILocation(line: 39, column: 5, scope: !400, inlinedAt: !380)
!412 = !DILocation(line: 156, column: 3, scope: !347)
!413 = !DILocation(line: 168, column: 3, scope: !414)
!414 = distinct !DILexicalBlock(scope: !347, file: !1, line: 168, column: 3)
!415 = !DILocation(line: 168, column: 3, scope: !347)
!416 = !DILocalVariable(name: "i", scope: !417, file: !1, line: 49, type: !20)
!417 = distinct !DISubprogram(name: "print_array", scope: !1, file: !1, line: 45, type: !418, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !420)
!418 = !DISubroutineType(types: !419)
!419 = !{null, !20, !35}
!420 = !{!421, !422, !416}
!421 = !DILocalVariable(name: "n", arg: 1, scope: !417, file: !1, line: 45, type: !20)
!422 = !DILocalVariable(name: "x", arg: 2, scope: !417, file: !1, line: 46, type: !35)
!423 = !DILocation(line: 0, scope: !417, inlinedAt: !424)
!424 = distinct !DILocation(line: 168, column: 3, scope: !414)
!425 = !DILocation(line: 53, column: 13, scope: !426, inlinedAt: !424)
!426 = distinct !DILexicalBlock(scope: !427, file: !1, line: 52, column: 3)
!427 = distinct !DILexicalBlock(scope: !428, file: !1, line: 51, column: 3)
!428 = distinct !DILexicalBlock(scope: !417, file: !1, line: 51, column: 3)
!429 = !DILocation(line: 53, column: 43, scope: !426, inlinedAt: !424)
!430 = !DILocation(line: 53, column: 5, scope: !426, inlinedAt: !424)
!431 = !DILocation(line: 54, column: 11, scope: !432, inlinedAt: !424)
!432 = distinct !DILexicalBlock(scope: !426, file: !1, line: 54, column: 9)
!433 = !DILocation(line: 54, column: 16, scope: !432, inlinedAt: !424)
!434 = !DILocation(line: 54, column: 9, scope: !426, inlinedAt: !424)
!435 = !DILocation(line: 55, column: 15, scope: !432, inlinedAt: !424)
!436 = !DILocation(line: 55, column: 7, scope: !432, inlinedAt: !424)
!437 = !DILocation(line: 51, column: 24, scope: !427, inlinedAt: !424)
!438 = !DILocation(line: 51, column: 17, scope: !427, inlinedAt: !424)
!439 = !DILocation(line: 51, column: 3, scope: !428, inlinedAt: !424)
!440 = distinct !{!440, !439, !441}
!441 = !DILocation(line: 56, column: 3, scope: !428, inlinedAt: !424)
!442 = !DILocation(line: 171, column: 3, scope: !347)
!443 = !DILocation(line: 172, column: 3, scope: !347)
!444 = !DILocation(line: 173, column: 3, scope: !347)
!445 = !DILocation(line: 174, column: 3, scope: !347)
!446 = !DILocation(line: 176, column: 3, scope: !347)
