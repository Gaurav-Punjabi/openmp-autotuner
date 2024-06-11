; ModuleID = '../test/poly_gpu/inputs_kernel_splits/linear-algebra/solvers/durbin/durbin.c'
source_filename = "../test/poly_gpu/inputs_kernel_splits/linear-algebra/solvers/durbin/durbin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [95 x i8] c";../test/poly_gpu/inputs_kernel_splits/linear-algebra/solvers/durbin/durbin.c;kernel_p1;78;1;;\00", align 1
@2 = private unnamed_addr constant [96 x i8] c";../test/poly_gpu/inputs_kernel_splits/linear-algebra/solvers/durbin/durbin.c;kernel_p1;78;27;;\00", align 1
@3 = private unnamed_addr constant [95 x i8] c";../test/poly_gpu/inputs_kernel_splits/linear-algebra/solvers/durbin/durbin.c;kernel_p1;90;1;;\00", align 1
@4 = private unnamed_addr constant [96 x i8] c";../test/poly_gpu/inputs_kernel_splits/linear-algebra/solvers/durbin/durbin.c;kernel_p1;90;16;;\00", align 1
@5 = private unnamed_addr constant %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@6 = private unnamed_addr constant [95 x i8] c";../test/poly_gpu/inputs_kernel_splits/linear-algebra/solvers/durbin/durbin.c;kernel_p1;76;1;;\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, [8000 x double]*, [8000 x double]*, double*, double*, double*, double*)* @kernel_p1 to i8*)], section "llvm.metadata"

; Function Attrs: nounwind uwtable
define internal void @kernel_p1(i32 %0, [8000 x double]* %1, [8000 x double]* %2, double* %3, double* %4, double* %5, double* %6) #0 !dbg !32 {
  %8 = alloca i32, align 4
  %9 = alloca [8000 x double]*, align 8
  %10 = alloca [8000 x double]*, align 8
  %11 = alloca double*, align 8
  %12 = alloca double*, align 8
  %13 = alloca double*, align 8
  %14 = alloca double*, align 8
  %15 = alloca %struct.ident_t, align 8
  %16 = bitcast %struct.ident_t* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %16, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @5 to i8*), i64 16, i1 false)
  call void @llvm.dbg.value(metadata i32 %0, metadata !37, metadata !DIExpression()), !dbg !46
  store i32 %0, i32* %8, align 4, !tbaa !47
  call void @llvm.dbg.value(metadata [8000 x double]* %1, metadata !38, metadata !DIExpression()), !dbg !46
  store [8000 x double]* %1, [8000 x double]** %9, align 8, !tbaa !51
  call void @llvm.dbg.value(metadata [8000 x double]* %2, metadata !39, metadata !DIExpression()), !dbg !46
  store [8000 x double]* %2, [8000 x double]** %10, align 8, !tbaa !51
  call void @llvm.dbg.value(metadata double* %3, metadata !40, metadata !DIExpression()), !dbg !46
  store double* %3, double** %11, align 8, !tbaa !51
  call void @llvm.dbg.value(metadata double* %4, metadata !41, metadata !DIExpression()), !dbg !46
  store double* %4, double** %12, align 8, !tbaa !51
  call void @llvm.dbg.value(metadata double* %5, metadata !42, metadata !DIExpression()), !dbg !46
  store double* %5, double** %13, align 8, !tbaa !51
  call void @llvm.dbg.value(metadata double* %6, metadata !43, metadata !DIExpression()), !dbg !46
  store double* %6, double** %14, align 8, !tbaa !51
  call void @llvm.dbg.value(metadata double* %5, metadata !42, metadata !DIExpression()), !dbg !46
  %17 = bitcast double* %5 to i64*, !dbg !53
  %18 = load i64, i64* %17, align 8, !dbg !53, !tbaa !54
  %19 = bitcast [8000 x double]* %1 to i64*, !dbg !56
  call void @llvm.dbg.value(metadata [8000 x double]* undef, metadata !38, metadata !DIExpression()), !dbg !46
  store i64 %18, i64* %19, align 8, !dbg !57, !tbaa !54
  call void @llvm.dbg.value(metadata double* %4, metadata !41, metadata !DIExpression()), !dbg !46
  store double 1.000000e+00, double* %4, align 8, !dbg !58, !tbaa !54
  call void @llvm.dbg.value(metadata double* undef, metadata !42, metadata !DIExpression()), !dbg !46
  %20 = load i64, i64* %17, align 8, !dbg !59, !tbaa !54
  %21 = bitcast double* %3 to i64*, !dbg !60
  call void @llvm.dbg.value(metadata double* undef, metadata !40, metadata !DIExpression()), !dbg !46
  store i64 %20, i64* %21, align 8, !dbg !61, !tbaa !54
  %22 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %15, i64 0, i32 4, !dbg !62
  store i8* getelementptr inbounds ([95 x i8], [95 x i8]* @6, i64 0, i64 0), i8** %22, align 8, !dbg !62, !tbaa !63
  call void @llvm.dbg.value(metadata i32* %8, metadata !37, metadata !DIExpression(DW_OP_deref)), !dbg !46
  call void @llvm.dbg.value(metadata [8000 x double]** %9, metadata !38, metadata !DIExpression(DW_OP_deref)), !dbg !46
  call void @llvm.dbg.value(metadata [8000 x double]** %10, metadata !39, metadata !DIExpression(DW_OP_deref)), !dbg !46
  call void @llvm.dbg.value(metadata double** %11, metadata !40, metadata !DIExpression(DW_OP_deref)), !dbg !46
  call void @llvm.dbg.value(metadata double** %12, metadata !41, metadata !DIExpression(DW_OP_deref)), !dbg !46
  call void @llvm.dbg.value(metadata double** %13, metadata !42, metadata !DIExpression(DW_OP_deref)), !dbg !46
  call void @llvm.dbg.value(metadata double** %14, metadata !43, metadata !DIExpression(DW_OP_deref)), !dbg !46
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %15, i32 7, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, double**, double**, [8000 x double]**, double**, [8000 x double]**, double**)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %8, double** nonnull %12, double** nonnull %11, [8000 x double]** nonnull %10, double** nonnull %13, [8000 x double]** nonnull %9, double** nonnull %14) #8, !dbg !62
  ret void, !dbg !65
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32) local_unnamed_addr

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32) local_unnamed_addr

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32) local_unnamed_addr

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias nocapture readonly %0, i32* noalias nocapture readnone %1, i32* nocapture readonly dereferenceable(4) %2, double** nocapture readonly dereferenceable(8) %3, double** nocapture readonly dereferenceable(8) %4, [8000 x double]** nocapture readonly dereferenceable(8) %5, double** nocapture readonly dereferenceable(8) %6, [8000 x double]** nocapture readonly dereferenceable(8) %7, double** nocapture readonly dereferenceable(8) %8) #2 !dbg !66 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ident_t, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !77, metadata !DIExpression()), !dbg !86
  call void @llvm.dbg.value(metadata i32* %1, metadata !78, metadata !DIExpression()), !dbg !86
  call void @llvm.dbg.value(metadata i32* %2, metadata !79, metadata !DIExpression()), !dbg !86
  call void @llvm.dbg.value(metadata double** %3, metadata !80, metadata !DIExpression()), !dbg !86
  call void @llvm.dbg.value(metadata double** %4, metadata !81, metadata !DIExpression()), !dbg !86
  call void @llvm.dbg.value(metadata [8000 x double]** %5, metadata !82, metadata !DIExpression()), !dbg !86
  call void @llvm.dbg.value(metadata double** %6, metadata !83, metadata !DIExpression()), !dbg !86
  call void @llvm.dbg.value(metadata [8000 x double]** %7, metadata !84, metadata !DIExpression()), !dbg !86
  call void @llvm.dbg.value(metadata double** %8, metadata !85, metadata !DIExpression()), !dbg !86
  %19 = bitcast %struct.ident_t* %14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %19)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %19, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @0 to i8*), i64 24, i1 false) #8, !noalias !87
  call void @llvm.dbg.value(metadata i32* %0, metadata !90, metadata !DIExpression()) #8, !dbg !119
  call void @llvm.dbg.value(metadata i32* undef, metadata !93, metadata !DIExpression()) #8, !dbg !119
  call void @llvm.dbg.value(metadata i32* %2, metadata !94, metadata !DIExpression()) #8, !dbg !119
  call void @llvm.dbg.value(metadata double** %3, metadata !95, metadata !DIExpression()) #8, !dbg !119
  call void @llvm.dbg.value(metadata double** %4, metadata !96, metadata !DIExpression()) #8, !dbg !119
  call void @llvm.dbg.value(metadata [8000 x double]** %5, metadata !97, metadata !DIExpression()) #8, !dbg !119
  call void @llvm.dbg.value(metadata double** %6, metadata !98, metadata !DIExpression()) #8, !dbg !119
  call void @llvm.dbg.value(metadata [8000 x double]** %7, metadata !99, metadata !DIExpression()) #8, !dbg !119
  call void @llvm.dbg.value(metadata double** %8, metadata !100, metadata !DIExpression()) #8, !dbg !119
  %20 = load i32, i32* %2, align 4, !dbg !121, !tbaa !47, !noalias !87
  call void @llvm.dbg.value(metadata i32 %20, metadata !104, metadata !DIExpression()) #8, !dbg !122
  %21 = add nsw i32 %20, -2, !dbg !123
  call void @llvm.dbg.value(metadata i32 %21, metadata !104, metadata !DIExpression()) #8, !dbg !122
  call void @llvm.dbg.value(metadata i32 1, metadata !105, metadata !DIExpression()) #8, !dbg !122
  %22 = icmp sgt i32 %20, 1, !dbg !123
  br i1 %22, label %25, label %23, !dbg !124

23:                                               ; preds = %9
  %24 = load i32, i32* %0, align 4, !dbg !125, !tbaa !47, !alias.scope !87
  br label %151, !dbg !124

25:                                               ; preds = %9
  %26 = bitcast i32* %10 to i8*, !dbg !124
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #8, !dbg !124, !noalias !87
  call void @llvm.dbg.value(metadata i32 0, metadata !106, metadata !DIExpression()) #8, !dbg !122
  store i32 0, i32* %10, align 4, !dbg !126, !tbaa !47, !noalias !87
  %27 = bitcast i32* %11 to i8*, !dbg !124
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %27) #8, !dbg !124, !noalias !87
  call void @llvm.dbg.value(metadata i32 %21, metadata !107, metadata !DIExpression()) #8, !dbg !122
  store i32 %21, i32* %11, align 4, !dbg !126, !tbaa !47, !noalias !87
  %28 = bitcast i32* %12 to i8*, !dbg !124
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %28) #8, !dbg !124, !noalias !87
  call void @llvm.dbg.value(metadata i32 1, metadata !108, metadata !DIExpression()) #8, !dbg !122
  store i32 1, i32* %12, align 4, !dbg !126, !tbaa !47, !noalias !87
  %29 = bitcast i32* %13 to i8*, !dbg !124
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %29) #8, !dbg !124, !noalias !87
  call void @llvm.dbg.value(metadata i32 0, metadata !109, metadata !DIExpression()) #8, !dbg !122
  store i32 0, i32* %13, align 4, !dbg !126, !tbaa !47, !noalias !87
  %30 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %14, i64 0, i32 4, !dbg !124
  store i8* getelementptr inbounds ([95 x i8], [95 x i8]* @1, i64 0, i64 0), i8** %30, align 8, !dbg !124, !tbaa !63, !noalias !87
  %31 = load i32, i32* %0, align 4, !dbg !124, !tbaa !47, !alias.scope !87
  call void @llvm.dbg.value(metadata i32* %10, metadata !106, metadata !DIExpression(DW_OP_deref)) #8, !dbg !122
  call void @llvm.dbg.value(metadata i32* %11, metadata !107, metadata !DIExpression(DW_OP_deref)) #8, !dbg !122
  call void @llvm.dbg.value(metadata i32* %12, metadata !108, metadata !DIExpression(DW_OP_deref)) #8, !dbg !122
  call void @llvm.dbg.value(metadata i32* %13, metadata !109, metadata !DIExpression(DW_OP_deref)) #8, !dbg !122
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull %14, i32 %31, i32 34, i32* nonnull %13, i32* nonnull %10, i32* nonnull %11, i32* nonnull %12, i32 1, i32 1) #8, !dbg !124, !noalias !87
  %32 = load i32, i32* %11, align 4, !dbg !126, !tbaa !47, !noalias !87
  call void @llvm.dbg.value(metadata i32 %32, metadata !107, metadata !DIExpression()) #8, !dbg !122
  %33 = icmp sgt i32 %32, %21, !dbg !126
  %34 = select i1 %33, i32 %21, i32 %32, !dbg !126
  call void @llvm.dbg.value(metadata i32 %34, metadata !107, metadata !DIExpression()) #8, !dbg !122
  store i32 %34, i32* %11, align 4, !dbg !126, !tbaa !47, !noalias !87
  %35 = load i32, i32* %10, align 4, !dbg !126, !tbaa !47, !noalias !87
  call void @llvm.dbg.value(metadata i32 %35, metadata !106, metadata !DIExpression()) #8, !dbg !122
  call void @llvm.dbg.value(metadata i32 %35, metadata !101, metadata !DIExpression()) #8, !dbg !122
  call void @llvm.dbg.value(metadata i32 %34, metadata !107, metadata !DIExpression()) #8, !dbg !122
  %36 = icmp sgt i32 %35, %34, !dbg !123
  br i1 %36, label %150, label %37, !dbg !124

37:                                               ; preds = %25
  %38 = load double*, double** %3, align 8, !dbg !127, !tbaa !51, !noalias !87
  %39 = load double*, double** %4, align 8, !dbg !127, !tbaa !51, !noalias !87
  %40 = load double*, double** %6, align 8, !dbg !127, !tbaa !51, !noalias !87
  %41 = load [8000 x double]*, [8000 x double]** %5, align 8, !dbg !127, !tbaa !51, !noalias !87
  %42 = load [8000 x double]*, [8000 x double]** %7, align 8, !dbg !129, !noalias !87
  %43 = sext i32 %35 to i64, !dbg !124
  %44 = sext i32 %34 to i64, !dbg !124
  br label %45, !dbg !124

45:                                               ; preds = %145, %37
  %46 = phi i64 [ %49, %145 ], [ %43, %37 ]
  %47 = phi i32 [ %48, %145 ], [ %35, %37 ]
  %48 = add i32 %47, 1, !dbg !124
  call void @llvm.dbg.value(metadata i64 %46, metadata !101, metadata !DIExpression()) #8, !dbg !122
  %49 = add nsw i64 %46, 1, !dbg !132
  call void @llvm.dbg.value(metadata i64 %49, metadata !105, metadata !DIExpression()) #8, !dbg !122
  %50 = getelementptr inbounds double, double* %38, i64 %46, !dbg !133
  %51 = load double, double* %50, align 8, !dbg !133, !tbaa !54, !noalias !87
  %52 = getelementptr inbounds double, double* %39, i64 %46, !dbg !134
  %53 = load double, double* %52, align 8, !dbg !134, !tbaa !54, !noalias !87
  %54 = fmul double %53, %53, !dbg !135
  %55 = fmul double %51, %54, !dbg !136
  %56 = fsub double %51, %55, !dbg !137
  %57 = getelementptr inbounds double, double* %38, i64 %49, !dbg !138
  store double %56, double* %57, align 8, !dbg !139, !tbaa !54, !noalias !87
  %58 = getelementptr inbounds double, double* %40, i64 %49, !dbg !140
  %59 = bitcast double* %58 to i64*, !dbg !140
  %60 = load i64, i64* %59, align 8, !dbg !140, !tbaa !54, !noalias !87
  %61 = getelementptr inbounds [8000 x double], [8000 x double]* %41, i64 0, i64 %49, !dbg !141
  %62 = bitcast double* %61 to i64*, !dbg !142
  store i64 %60, i64* %62, align 8, !dbg !142, !tbaa !54, !noalias !87
  call void @llvm.dbg.value(metadata i32 0, metadata !110, metadata !DIExpression()) #8, !dbg !122
  %63 = icmp slt i64 %46, 0, !dbg !143
  br i1 %63, label %106, label %64, !dbg !144

64:                                               ; preds = %45
  %65 = bitcast i64 %60 to double, !dbg !144
  %66 = zext i32 %48 to i64, !dbg !143
  call void @llvm.dbg.value(metadata i64 0, metadata !110, metadata !DIExpression()) #8, !dbg !122
  %67 = shl i64 %46, 32, !dbg !145
  %68 = ashr exact i64 %67, 32, !dbg !145
  %69 = getelementptr inbounds double, double* %40, i64 %68, !dbg !145
  %70 = load double, double* %69, align 8, !dbg !145, !tbaa !54, !noalias !87
  %71 = getelementptr inbounds [8000 x double], [8000 x double]* %42, i64 0, i64 %46, !dbg !146
  %72 = load double, double* %71, align 8, !dbg !146, !tbaa !54, !noalias !87
  %73 = fmul double %70, %72, !dbg !147
  %74 = fadd double %73, %65, !dbg !148
  %75 = getelementptr inbounds [8000 x double], [8000 x double]* %41, i64 1, i64 %49, !dbg !149
  store double %74, double* %75, align 8, !dbg !150, !tbaa !54, !noalias !87
  call void @llvm.dbg.value(metadata i64 1, metadata !110, metadata !DIExpression()) #8, !dbg !122
  %76 = icmp eq i32 %47, 0, !dbg !143
  br i1 %76, label %106, label %77, !dbg !144, !llvm.loop !151

77:                                               ; preds = %64
  call void @llvm.dbg.value(metadata i64 1, metadata !110, metadata !DIExpression()) #8, !dbg !122
  %78 = shl i64 %46, 32, !dbg !145
  %79 = add i64 %78, -4294967296, !dbg !145
  %80 = ashr exact i64 %79, 32, !dbg !145
  %81 = getelementptr inbounds double, double* %40, i64 %80, !dbg !145
  %82 = load double, double* %81, align 8, !dbg !145, !tbaa !54, !noalias !87
  %83 = getelementptr inbounds [8000 x double], [8000 x double]* %42, i64 1, i64 %46, !dbg !146
  %84 = load double, double* %83, align 8, !dbg !146, !tbaa !54, !noalias !87
  %85 = fmul double %82, %84, !dbg !147
  %86 = fadd double %74, %85, !dbg !148
  %87 = getelementptr inbounds [8000 x double], [8000 x double]* %41, i64 2, i64 %49, !dbg !149
  store double %86, double* %87, align 8, !dbg !150, !tbaa !54, !noalias !87
  call void @llvm.dbg.value(metadata i64 2, metadata !110, metadata !DIExpression()) #8, !dbg !122
  %88 = icmp eq i32 %48, 2, !dbg !143
  br i1 %88, label %106, label %89, !dbg !144, !llvm.loop !151

89:                                               ; preds = %77, %89
  %90 = phi i64 [ %102, %89 ], [ 2, %77 ]
  %91 = getelementptr inbounds [8000 x double], [8000 x double]* %41, i64 %90, i64 %49, !dbg !129
  %92 = load double, double* %91, align 8, !dbg !153, !tbaa !54, !noalias !87
  call void @llvm.dbg.value(metadata i64 %90, metadata !110, metadata !DIExpression()) #8, !dbg !122
  %93 = sub i64 %46, %90, !dbg !154
  %94 = shl i64 %93, 32, !dbg !145
  %95 = ashr exact i64 %94, 32, !dbg !145
  %96 = getelementptr inbounds double, double* %40, i64 %95, !dbg !145
  %97 = load double, double* %96, align 8, !dbg !145, !tbaa !54, !noalias !87
  %98 = getelementptr inbounds [8000 x double], [8000 x double]* %42, i64 %90, i64 %46, !dbg !146
  %99 = load double, double* %98, align 8, !dbg !146, !tbaa !54, !noalias !87
  %100 = fmul double %97, %99, !dbg !147
  %101 = fadd double %92, %100, !dbg !148
  %102 = add nuw nsw i64 %90, 1, !dbg !155
  %103 = and i64 %102, 4294967295, !dbg !149
  %104 = getelementptr inbounds [8000 x double], [8000 x double]* %41, i64 %103, i64 %49, !dbg !149
  store double %101, double* %104, align 8, !dbg !150, !tbaa !54, !noalias !87
  call void @llvm.dbg.value(metadata i64 %102, metadata !110, metadata !DIExpression()) #8, !dbg !122
  %105 = icmp eq i64 %102, %66, !dbg !143
  br i1 %105, label %106, label %89, !dbg !144, !llvm.loop !151

106:                                              ; preds = %89, %77, %64, %45
  %107 = getelementptr inbounds [8000 x double], [8000 x double]* %41, i64 %49, i64 %49, !dbg !156
  %108 = load double, double* %107, align 8, !dbg !156, !tbaa !54, !noalias !87
  %109 = fneg double %108, !dbg !157
  %110 = load double, double* %57, align 8, !dbg !158, !tbaa !54, !noalias !87
  %111 = fmul double %110, %109, !dbg !159
  %112 = getelementptr inbounds double, double* %39, i64 %49, !dbg !160
  store double %111, double* %112, align 8, !dbg !161, !tbaa !54, !noalias !87
  call void @llvm.dbg.value(metadata i32 0, metadata !110, metadata !DIExpression()) #8, !dbg !122
  br i1 %63, label %113, label %115, !dbg !162

113:                                              ; preds = %106
  %114 = bitcast double %111 to i64, !dbg !162
  br label %145, !dbg !162

115:                                              ; preds = %106
  %116 = zext i32 %48 to i64, !dbg !164
  call void @llvm.dbg.value(metadata i64 0, metadata !110, metadata !DIExpression()) #8, !dbg !122
  %117 = getelementptr inbounds [8000 x double], [8000 x double]* %42, i64 0, i64 %46, !dbg !166
  %118 = load double, double* %117, align 8, !dbg !166, !tbaa !54, !noalias !87
  %119 = shl i64 %46, 32, !dbg !167
  %120 = ashr exact i64 %119, 32, !dbg !167
  %121 = getelementptr inbounds [8000 x double], [8000 x double]* %42, i64 %120, i64 %46, !dbg !167
  %122 = load double, double* %121, align 8, !dbg !167, !tbaa !54, !noalias !87
  %123 = fmul double %111, %122, !dbg !168
  %124 = fadd double %118, %123, !dbg !169
  %125 = getelementptr inbounds [8000 x double], [8000 x double]* %42, i64 0, i64 %49, !dbg !170
  store double %124, double* %125, align 8, !dbg !171, !tbaa !54, !noalias !87
  call void @llvm.dbg.value(metadata i64 1, metadata !110, metadata !DIExpression()) #8, !dbg !122
  %126 = icmp eq i32 %47, 0, !dbg !164
  br i1 %126, label %142, label %127, !dbg !162, !llvm.loop !172

127:                                              ; preds = %115, %127
  %128 = phi i64 [ %140, %127 ], [ 1, %115 ]
  %129 = load double, double* %112, align 8, !dbg !174, !tbaa !54, !noalias !87
  call void @llvm.dbg.value(metadata i64 %128, metadata !110, metadata !DIExpression()) #8, !dbg !122
  %130 = getelementptr inbounds [8000 x double], [8000 x double]* %42, i64 %128, i64 %46, !dbg !166
  %131 = load double, double* %130, align 8, !dbg !166, !tbaa !54, !noalias !87
  %132 = sub i64 %46, %128, !dbg !175
  %133 = shl i64 %132, 32, !dbg !167
  %134 = ashr exact i64 %133, 32, !dbg !167
  %135 = getelementptr inbounds [8000 x double], [8000 x double]* %42, i64 %134, i64 %46, !dbg !167
  %136 = load double, double* %135, align 8, !dbg !167, !tbaa !54, !noalias !87
  %137 = fmul double %129, %136, !dbg !168
  %138 = fadd double %131, %137, !dbg !169
  %139 = getelementptr inbounds [8000 x double], [8000 x double]* %42, i64 %128, i64 %49, !dbg !170
  store double %138, double* %139, align 8, !dbg !171, !tbaa !54, !noalias !87
  %140 = add nuw nsw i64 %128, 1, !dbg !176
  call void @llvm.dbg.value(metadata i64 %140, metadata !110, metadata !DIExpression()) #8, !dbg !122
  %141 = icmp eq i64 %140, %116, !dbg !164
  br i1 %141, label %142, label %127, !dbg !162, !llvm.loop !172

142:                                              ; preds = %127, %115
  %143 = bitcast double* %112 to i64*, !dbg !127
  %144 = load i64, i64* %143, align 8, !dbg !177, !tbaa !54, !noalias !87
  br label %145, !dbg !177

145:                                              ; preds = %142, %113
  %146 = phi i64 [ %144, %142 ], [ %114, %113 ], !dbg !177
  %147 = getelementptr inbounds [8000 x double], [8000 x double]* %42, i64 %49, i64 %49, !dbg !178
  %148 = bitcast double* %147 to i64*, !dbg !179
  store i64 %146, i64* %148, align 8, !dbg !179, !tbaa !54, !noalias !87
  call void @llvm.dbg.value(metadata i64 %49, metadata !101, metadata !DIExpression()) #8, !dbg !122
  call void @llvm.dbg.value(metadata i32 %34, metadata !107, metadata !DIExpression()) #8, !dbg !122
  %149 = icmp slt i64 %46, %44, !dbg !123
  br i1 %149, label %45, label %150, !dbg !124, !llvm.loop !180

150:                                              ; preds = %145, %25
  store i8* getelementptr inbounds ([96 x i8], [96 x i8]* @2, i64 0, i64 0), i8** %30, align 8, !dbg !181, !tbaa !63, !noalias !87
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull %14, i32 %31) #8, !dbg !181, !noalias !87
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %29) #8, !dbg !181, !noalias !87
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %28) #8, !dbg !181, !noalias !87
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %27) #8, !dbg !181, !noalias !87
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #8, !dbg !181, !noalias !87
  br label %151, !dbg !181

151:                                              ; preds = %150, %23
  %152 = phi i32 [ %24, %23 ], [ %31, %150 ], !dbg !125
  %153 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %14, i64 0, i32 4, !dbg !125
  store i8* getelementptr inbounds ([95 x i8], [95 x i8]* @1, i64 0, i64 0), i8** %153, align 8, !dbg !125, !tbaa !63, !noalias !87
  call void @__kmpc_barrier(%struct.ident_t* nonnull %14, i32 %152) #8, !dbg !125, !noalias !87
  %154 = load i32, i32* %2, align 4, !dbg !182, !tbaa !47, !noalias !87
  call void @llvm.dbg.value(metadata i32 %154, metadata !113, metadata !DIExpression()) #8, !dbg !183
  %155 = add nsw i32 %154, -1, !dbg !184
  call void @llvm.dbg.value(metadata i32 %155, metadata !113, metadata !DIExpression()) #8, !dbg !183
  call void @llvm.dbg.value(metadata i32 0, metadata !114, metadata !DIExpression()) #8, !dbg !183
  %156 = icmp sgt i32 %154, 0, !dbg !184
  br i1 %156, label %157, label %185, !dbg !185

157:                                              ; preds = %151
  %158 = bitcast i32* %15 to i8*, !dbg !185
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %158) #8, !dbg !185, !noalias !87
  call void @llvm.dbg.value(metadata i32 0, metadata !115, metadata !DIExpression()) #8, !dbg !183
  store i32 0, i32* %15, align 4, !dbg !186, !tbaa !47, !noalias !87
  %159 = bitcast i32* %16 to i8*, !dbg !185
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %159) #8, !dbg !185, !noalias !87
  call void @llvm.dbg.value(metadata i32 %155, metadata !116, metadata !DIExpression()) #8, !dbg !183
  store i32 %155, i32* %16, align 4, !dbg !186, !tbaa !47, !noalias !87
  %160 = bitcast i32* %17 to i8*, !dbg !185
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %160) #8, !dbg !185, !noalias !87
  call void @llvm.dbg.value(metadata i32 1, metadata !117, metadata !DIExpression()) #8, !dbg !183
  store i32 1, i32* %17, align 4, !dbg !186, !tbaa !47, !noalias !87
  %161 = bitcast i32* %18 to i8*, !dbg !185
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %161) #8, !dbg !185, !noalias !87
  call void @llvm.dbg.value(metadata i32 0, metadata !118, metadata !DIExpression()) #8, !dbg !183
  store i32 0, i32* %18, align 4, !dbg !186, !tbaa !47, !noalias !87
  store i8* getelementptr inbounds ([95 x i8], [95 x i8]* @3, i64 0, i64 0), i8** %153, align 8, !dbg !185, !tbaa !63, !noalias !87
  call void @llvm.dbg.value(metadata i32* %15, metadata !115, metadata !DIExpression(DW_OP_deref)) #8, !dbg !183
  call void @llvm.dbg.value(metadata i32* %16, metadata !116, metadata !DIExpression(DW_OP_deref)) #8, !dbg !183
  call void @llvm.dbg.value(metadata i32* %17, metadata !117, metadata !DIExpression(DW_OP_deref)) #8, !dbg !183
  call void @llvm.dbg.value(metadata i32* %18, metadata !118, metadata !DIExpression(DW_OP_deref)) #8, !dbg !183
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull %14, i32 %152, i32 34, i32* nonnull %18, i32* nonnull %15, i32* nonnull %16, i32* nonnull %17, i32 1, i32 1) #8, !dbg !185, !noalias !87
  %162 = load i32, i32* %16, align 4, !dbg !186, !tbaa !47, !noalias !87
  call void @llvm.dbg.value(metadata i32 %162, metadata !116, metadata !DIExpression()) #8, !dbg !183
  %163 = icmp slt i32 %162, %154, !dbg !186
  %164 = select i1 %163, i32 %162, i32 %155, !dbg !186
  call void @llvm.dbg.value(metadata i32 %164, metadata !116, metadata !DIExpression()) #8, !dbg !183
  store i32 %164, i32* %16, align 4, !dbg !186, !tbaa !47, !noalias !87
  %165 = load i32, i32* %15, align 4, !dbg !186, !tbaa !47, !noalias !87
  call void @llvm.dbg.value(metadata i32 %165, metadata !115, metadata !DIExpression()) #8, !dbg !183
  call void @llvm.dbg.value(metadata i32 %165, metadata !111, metadata !DIExpression()) #8, !dbg !183
  call void @llvm.dbg.value(metadata i32 %164, metadata !116, metadata !DIExpression()) #8, !dbg !183
  %166 = icmp sgt i32 %165, %164, !dbg !184
  br i1 %166, label %184, label %167, !dbg !185

167:                                              ; preds = %157
  %168 = load [8000 x double]*, [8000 x double]** %7, align 8, !dbg !183, !tbaa !51, !noalias !87
  %169 = load i32, i32* %2, align 4, !dbg !183, !tbaa !47, !noalias !87
  %170 = add nsw i32 %169, -1, !dbg !183
  %171 = sext i32 %170 to i64, !dbg !183
  %172 = load double*, double** %8, align 8, !dbg !183, !tbaa !51, !noalias !87
  %173 = sext i32 %165 to i64, !dbg !185
  %174 = sext i32 %164 to i64, !dbg !185
  br label %175, !dbg !185

175:                                              ; preds = %175, %167
  %176 = phi i64 [ %182, %175 ], [ %173, %167 ]
  call void @llvm.dbg.value(metadata i64 %176, metadata !111, metadata !DIExpression()) #8, !dbg !183
  call void @llvm.dbg.value(metadata i64 %176, metadata !114, metadata !DIExpression()) #8, !dbg !183
  %177 = getelementptr inbounds [8000 x double], [8000 x double]* %168, i64 %176, i64 %171, !dbg !187
  %178 = bitcast double* %177 to i64*, !dbg !187
  %179 = load i64, i64* %178, align 8, !dbg !187, !tbaa !54, !noalias !87
  %180 = getelementptr inbounds double, double* %172, i64 %176, !dbg !188
  %181 = bitcast double* %180 to i64*, !dbg !189
  store i64 %179, i64* %181, align 8, !dbg !189, !tbaa !54, !noalias !87
  %182 = add nsw i64 %176, 1, !dbg !184
  call void @llvm.dbg.value(metadata i64 %182, metadata !111, metadata !DIExpression()) #8, !dbg !183
  call void @llvm.dbg.value(metadata i32 %164, metadata !116, metadata !DIExpression()) #8, !dbg !183
  %183 = icmp slt i64 %176, %174, !dbg !184
  br i1 %183, label %175, label %184, !dbg !185, !llvm.loop !190

184:                                              ; preds = %175, %157
  store i8* getelementptr inbounds ([96 x i8], [96 x i8]* @4, i64 0, i64 0), i8** %153, align 8, !dbg !191, !tbaa !63, !noalias !87
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull %14, i32 %152) #8, !dbg !191, !noalias !87
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %161) #8, !dbg !191, !noalias !87
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %160) #8, !dbg !191, !noalias !87
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %159) #8, !dbg !191, !noalias !87
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %158) #8, !dbg !191, !noalias !87
  br label %185, !dbg !191

185:                                              ; preds = %151, %184
  store i8* getelementptr inbounds ([95 x i8], [95 x i8]* @3, i64 0, i64 0), i8** %153, align 8, !dbg !192, !tbaa !63, !noalias !87
  call void @__kmpc_barrier(%struct.ident_t* nonnull %14, i32 %152) #8, !dbg !192, !noalias !87
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %19), !dbg !193
  ret void, !dbg !194
}

declare !callback !195 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %0, i8** nocapture readonly %1) local_unnamed_addr #0 !dbg !197 {
  %3 = alloca i32, align 4
  %4 = alloca [8000 x double]*, align 8
  %5 = alloca [8000 x double]*, align 8
  %6 = alloca double*, align 8
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca double*, align 8
  %10 = alloca %struct.ident_t, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !204, metadata !DIExpression()), !dbg !213
  call void @llvm.dbg.value(metadata i8** %1, metadata !205, metadata !DIExpression()), !dbg !213
  call void @llvm.dbg.value(metadata i32 8000, metadata !206, metadata !DIExpression()), !dbg !213
  %11 = tail call i8* @polybench_alloc_data(i64 64000000, i32 8) #8, !dbg !214
  call void @llvm.dbg.value(metadata i8* %11, metadata !207, metadata !DIExpression()), !dbg !213
  %12 = tail call i8* @polybench_alloc_data(i64 64000000, i32 8) #8, !dbg !215
  call void @llvm.dbg.value(metadata i8* %12, metadata !208, metadata !DIExpression()), !dbg !213
  %13 = tail call i8* @polybench_alloc_data(i64 8000, i32 8) #8, !dbg !216
  call void @llvm.dbg.value(metadata i8* %13, metadata !209, metadata !DIExpression()), !dbg !213
  %14 = tail call i8* @polybench_alloc_data(i64 8000, i32 8) #8, !dbg !217
  call void @llvm.dbg.value(metadata i8* %14, metadata !210, metadata !DIExpression()), !dbg !213
  %15 = tail call i8* @polybench_alloc_data(i64 8000, i32 8) #8, !dbg !218
  call void @llvm.dbg.value(metadata i8* %15, metadata !211, metadata !DIExpression()), !dbg !213
  %16 = tail call i8* @polybench_alloc_data(i64 8000, i32 8) #8, !dbg !219
  call void @llvm.dbg.value(metadata i8* %16, metadata !212, metadata !DIExpression()), !dbg !213
  %17 = bitcast i8* %11 to [8000 x double]*, !dbg !220
  %18 = bitcast i8* %12 to [8000 x double]*, !dbg !221
  %19 = bitcast i8* %13 to double*, !dbg !222
  %20 = bitcast i8* %14 to double*, !dbg !223
  %21 = bitcast i8* %15 to double*, !dbg !224
  call void @llvm.dbg.value(metadata i32 8000, metadata !225, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata [8000 x double]* %17, metadata !230, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata [8000 x double]* %18, metadata !231, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata double* %19, metadata !232, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata double* %20, metadata !233, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata double* %21, metadata !234, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata i32 0, metadata !235, metadata !DIExpression()), !dbg !237
  br label %24, !dbg !239

22:                                               ; preds = %37
  call void @llvm.dbg.value(metadata i64 %29, metadata !235, metadata !DIExpression()), !dbg !237
  %23 = icmp eq i64 %29, 8000, !dbg !241
  br i1 %23, label %54, label %24, !dbg !239

24:                                               ; preds = %22, %2
  %25 = phi i64 [ 0, %2 ], [ %29, %22 ]
  call void @llvm.dbg.value(metadata i64 %25, metadata !235, metadata !DIExpression()), !dbg !237
  %26 = trunc i64 %25 to i32, !dbg !243
  %27 = sitofp i32 %26 to double, !dbg !243
  %28 = getelementptr inbounds double, double* %19, i64 %25, !dbg !245
  store double %27, double* %28, align 8, !dbg !246, !tbaa !54
  %29 = add nuw nsw i64 %25, 1, !dbg !247
  %30 = trunc i64 %29 to i16, !dbg !248
  %31 = udiv i16 %30, 8000, !dbg !248
  %32 = uitofp i16 %31 to double, !dbg !249
  %33 = fmul double %32, 5.000000e-01, !dbg !250
  %34 = getelementptr inbounds double, double* %20, i64 %25, !dbg !251
  store double %33, double* %34, align 8, !dbg !252, !tbaa !54
  %35 = fmul double %32, 2.500000e-01, !dbg !253
  %36 = getelementptr inbounds double, double* %21, i64 %25, !dbg !254
  store double %35, double* %36, align 8, !dbg !255, !tbaa !54
  call void @llvm.dbg.value(metadata i32 0, metadata !236, metadata !DIExpression()), !dbg !237
  br label %37, !dbg !256

37:                                               ; preds = %37, %24
  %38 = phi i64 [ 0, %24 ], [ %52, %37 ]
  call void @llvm.dbg.value(metadata i64 %38, metadata !236, metadata !DIExpression()), !dbg !237
  %39 = trunc i64 %38 to i32, !dbg !258
  %40 = sitofp i32 %39 to double, !dbg !258
  %41 = fmul double %27, %40, !dbg !261
  %42 = fdiv double %41, 8.000000e+03, !dbg !262
  %43 = getelementptr inbounds [8000 x double], [8000 x double]* %17, i64 %25, i64 %38, !dbg !263
  store double %42, double* %43, align 8, !dbg !264, !tbaa !54
  %44 = getelementptr inbounds [8000 x double], [8000 x double]* %18, i64 %25, i64 %38, !dbg !265
  store double %42, double* %44, align 8, !dbg !266, !tbaa !54
  %45 = or i64 %38, 1, !dbg !267
  call void @llvm.dbg.value(metadata i64 %45, metadata !236, metadata !DIExpression()), !dbg !237
  %46 = trunc i64 %45 to i32, !dbg !258
  %47 = sitofp i32 %46 to double, !dbg !258
  %48 = fmul double %27, %47, !dbg !261
  %49 = fdiv double %48, 8.000000e+03, !dbg !262
  %50 = getelementptr inbounds [8000 x double], [8000 x double]* %17, i64 %25, i64 %45, !dbg !263
  store double %49, double* %50, align 8, !dbg !264, !tbaa !54
  %51 = getelementptr inbounds [8000 x double], [8000 x double]* %18, i64 %25, i64 %45, !dbg !265
  store double %49, double* %51, align 8, !dbg !266, !tbaa !54
  %52 = add nuw nsw i64 %38, 2, !dbg !267
  call void @llvm.dbg.value(metadata i64 %52, metadata !236, metadata !DIExpression()), !dbg !237
  %53 = icmp eq i64 %52, 8000, !dbg !268
  br i1 %53, label %22, label %37, !dbg !256, !llvm.loop !269

54:                                               ; preds = %22
  tail call void (...) @polybench_timer_start() #8, !dbg !271
  %55 = bitcast i8* %16 to double*, !dbg !272
  %56 = bitcast i32* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %56)
  %57 = bitcast [8000 x double]** %4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %57)
  %58 = bitcast [8000 x double]** %5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %58)
  %59 = bitcast double** %6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %59)
  %60 = bitcast double** %7 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %60)
  %61 = bitcast double** %8 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %61)
  %62 = bitcast double** %9 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %62)
  %63 = bitcast %struct.ident_t* %10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %63)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %63, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @5 to i8*), i64 16, i1 false) #8
  call void @llvm.dbg.value(metadata i32 8000, metadata !37, metadata !DIExpression()) #8, !dbg !273
  store i32 8000, i32* %3, align 4, !tbaa !47
  call void @llvm.dbg.value(metadata [8000 x double]* %17, metadata !38, metadata !DIExpression()) #8, !dbg !273
  %64 = bitcast [8000 x double]** %4 to i8**
  store i8* %11, i8** %64, align 8, !tbaa !51
  call void @llvm.dbg.value(metadata [8000 x double]* %18, metadata !39, metadata !DIExpression()) #8, !dbg !273
  %65 = bitcast [8000 x double]** %5 to i8**
  store i8* %12, i8** %65, align 8, !tbaa !51
  call void @llvm.dbg.value(metadata double* %19, metadata !40, metadata !DIExpression()) #8, !dbg !273
  %66 = bitcast double** %6 to i8**
  store i8* %13, i8** %66, align 8, !tbaa !51
  call void @llvm.dbg.value(metadata double* %20, metadata !41, metadata !DIExpression()) #8, !dbg !273
  %67 = bitcast double** %7 to i8**
  store i8* %14, i8** %67, align 8, !tbaa !51
  call void @llvm.dbg.value(metadata double* %21, metadata !42, metadata !DIExpression()) #8, !dbg !273
  %68 = bitcast double** %8 to i8**
  store i8* %15, i8** %68, align 8, !tbaa !51
  call void @llvm.dbg.value(metadata double* %55, metadata !43, metadata !DIExpression()) #8, !dbg !273
  %69 = bitcast double** %9 to i8**
  store i8* %16, i8** %69, align 8, !tbaa !51
  call void @llvm.dbg.value(metadata double* %21, metadata !42, metadata !DIExpression()) #8, !dbg !273
  %70 = bitcast i8* %15 to i64*, !dbg !275
  %71 = load i64, i64* %70, align 8, !dbg !275, !tbaa !54
  %72 = bitcast i8* %11 to i64*, !dbg !276
  call void @llvm.dbg.value(metadata [8000 x double]* undef, metadata !38, metadata !DIExpression()) #8, !dbg !273
  store i64 %71, i64* %72, align 8, !dbg !277, !tbaa !54
  call void @llvm.dbg.value(metadata double* %20, metadata !41, metadata !DIExpression()) #8, !dbg !273
  store double 1.000000e+00, double* %20, align 8, !dbg !278, !tbaa !54
  call void @llvm.dbg.value(metadata double* undef, metadata !42, metadata !DIExpression()) #8, !dbg !273
  %73 = load i64, i64* %70, align 8, !dbg !279, !tbaa !54
  %74 = bitcast i8* %13 to i64*, !dbg !280
  call void @llvm.dbg.value(metadata double* undef, metadata !40, metadata !DIExpression()) #8, !dbg !273
  store i64 %73, i64* %74, align 8, !dbg !281, !tbaa !54
  %75 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %10, i64 0, i32 4, !dbg !282
  store i8* getelementptr inbounds ([95 x i8], [95 x i8]* @6, i64 0, i64 0), i8** %75, align 8, !dbg !282, !tbaa !63
  call void @llvm.dbg.value(metadata i32* %3, metadata !37, metadata !DIExpression(DW_OP_deref)) #8, !dbg !273
  call void @llvm.dbg.value(metadata [8000 x double]** %4, metadata !38, metadata !DIExpression(DW_OP_deref)) #8, !dbg !273
  call void @llvm.dbg.value(metadata [8000 x double]** %5, metadata !39, metadata !DIExpression(DW_OP_deref)) #8, !dbg !273
  call void @llvm.dbg.value(metadata double** %6, metadata !40, metadata !DIExpression(DW_OP_deref)) #8, !dbg !273
  call void @llvm.dbg.value(metadata double** %7, metadata !41, metadata !DIExpression(DW_OP_deref)) #8, !dbg !273
  call void @llvm.dbg.value(metadata double** %8, metadata !42, metadata !DIExpression(DW_OP_deref)) #8, !dbg !273
  call void @llvm.dbg.value(metadata double** %9, metadata !43, metadata !DIExpression(DW_OP_deref)) #8, !dbg !273
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %10, i32 7, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, double**, double**, [8000 x double]**, double**, [8000 x double]**, double**)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %3, double** nonnull %7, double** nonnull %6, [8000 x double]** nonnull %5, double** nonnull %8, [8000 x double]** nonnull %4, double** nonnull %9) #8, !dbg !282
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %56), !dbg !283
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %57), !dbg !283
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %58), !dbg !283
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %59), !dbg !283
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %60), !dbg !283
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %61), !dbg !283
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %62), !dbg !283
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %63), !dbg !283
  call void (...) @polybench_timer_stop() #8, !dbg !284
  call void (...) @polybench_timer_print() #8, !dbg !285
  %76 = icmp sgt i32 %0, 42, !dbg !286
  br i1 %76, label %77, label %98, !dbg !286

77:                                               ; preds = %54
  %78 = load i8*, i8** %1, align 8, !dbg !286, !tbaa !51
  %79 = load i8, i8* %78, align 1, !dbg !286
  %80 = icmp eq i8 %79, 0, !dbg !286
  br i1 %80, label %81, label %98, !dbg !288

81:                                               ; preds = %77, %94
  %82 = phi i64 [ %95, %94 ], [ 0, %77 ]
  %83 = phi i32 [ %96, %94 ], [ 0, %77 ]
  call void @llvm.dbg.value(metadata i64 %82, metadata !289, metadata !DIExpression()) #8, !dbg !296
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !298, !tbaa !51
  %85 = getelementptr inbounds double, double* %55, i64 %82, !dbg !302
  %86 = load double, double* %85, align 8, !dbg !302, !tbaa !54
  %87 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %84, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), double %86) #9, !dbg !303
  %88 = trunc i32 %83 to i16, !dbg !304
  %89 = urem i16 %88, 20, !dbg !304
  %90 = icmp eq i16 %89, 0, !dbg !306
  br i1 %90, label %91, label %94, !dbg !307

91:                                               ; preds = %81
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !308, !tbaa !51
  %93 = call i32 @fputc(i32 10, %struct._IO_FILE* %92) #9, !dbg !309
  br label %94, !dbg !309

94:                                               ; preds = %91, %81
  %95 = add nuw nsw i64 %82, 1, !dbg !310
  %96 = add nuw nsw i32 %83, 1, !dbg !310
  call void @llvm.dbg.value(metadata i64 %95, metadata !289, metadata !DIExpression()) #8, !dbg !296
  %97 = icmp eq i64 %95, 8000, !dbg !311
  br i1 %97, label %98, label %81, !dbg !312, !llvm.loop !313

98:                                               ; preds = %94, %77, %54
  call void @free(i8* %11) #8, !dbg !315
  call void @free(i8* %12) #8, !dbg !316
  call void @free(i8* %13) #8, !dbg !317
  call void @free(i8* %14) #8, !dbg !318
  call void @free(i8* %15) #8, !dbg !319
  call void @free(i8* %16) #8, !dbg !320
  ret i32 0, !dbg !321
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
!1 = !DIFile(filename: "../test/poly_gpu/inputs_kernel_splits/linear-algebra/solvers/durbin/durbin.c", directory: "/WAVE/users/unix/klor/ycho_lab/kimsong_lor/autotuning_tools/scripts")
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
!32 = distinct !DISubprogram(name: "kernel_p1", scope: !1, file: !1, line: 63, type: !33, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !36)
!33 = !DISubroutineType(types: !34)
!34 = !{null, !15, !16, !16, !35, !35, !35, !35}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!36 = !{!37, !38, !39, !40, !41, !42, !43, !44, !45}
!37 = !DILocalVariable(name: "n", arg: 1, scope: !32, file: !1, line: 63, type: !15)
!38 = !DILocalVariable(name: "y", arg: 2, scope: !32, file: !1, line: 64, type: !16)
!39 = !DILocalVariable(name: "sum", arg: 3, scope: !32, file: !1, line: 65, type: !16)
!40 = !DILocalVariable(name: "alpha", arg: 4, scope: !32, file: !1, line: 66, type: !35)
!41 = !DILocalVariable(name: "beta", arg: 5, scope: !32, file: !1, line: 67, type: !35)
!42 = !DILocalVariable(name: "r", arg: 6, scope: !32, file: !1, line: 68, type: !35)
!43 = !DILocalVariable(name: "out", arg: 7, scope: !32, file: !1, line: 69, type: !35)
!44 = !DILocalVariable(name: "i", scope: !32, file: !1, line: 71, type: !15)
!45 = !DILocalVariable(name: "k", scope: !32, file: !1, line: 71, type: !15)
!46 = !DILocation(line: 0, scope: !32)
!47 = !{!48, !48, i64 0}
!48 = !{!"int", !49, i64 0}
!49 = !{!"omnipotent char", !50, i64 0}
!50 = !{!"Simple C/C++ TBAA"}
!51 = !{!52, !52, i64 0}
!52 = !{!"any pointer", !49, i64 0}
!53 = !DILocation(line: 73, column: 13, scope: !32)
!54 = !{!55, !55, i64 0}
!55 = !{!"double", !49, i64 0}
!56 = !DILocation(line: 73, column: 3, scope: !32)
!57 = !DILocation(line: 73, column: 11, scope: !32)
!58 = !DILocation(line: 74, column: 11, scope: !32)
!59 = !DILocation(line: 75, column: 14, scope: !32)
!60 = !DILocation(line: 75, column: 3, scope: !32)
!61 = !DILocation(line: 75, column: 12, scope: !32)
!62 = !DILocation(line: 76, column: 1, scope: !32)
!63 = !{!64, !52, i64 16}
!64 = !{!"ident_t", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !52, i64 16}
!65 = !DILocation(line: 95, column: 1, scope: !32)
!66 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 77, type: !67, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !76)
!67 = !DISubroutineType(types: !68)
!68 = !{null, !69, !69, !73, !74, !74, !75, !74, !75, !74}
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!70 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !71)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!73 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !15, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !35, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !16, size: 64)
!76 = !{!77, !78, !79, !80, !81, !82, !83, !84, !85}
!77 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !66, type: !69, flags: DIFlagArtificial)
!78 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !66, type: !69, flags: DIFlagArtificial)
!79 = !DILocalVariable(name: "n", arg: 3, scope: !66, type: !73, flags: DIFlagArtificial)
!80 = !DILocalVariable(name: "beta", arg: 4, scope: !66, type: !74, flags: DIFlagArtificial)
!81 = !DILocalVariable(name: "alpha", arg: 5, scope: !66, type: !74, flags: DIFlagArtificial)
!82 = !DILocalVariable(name: "sum", arg: 6, scope: !66, type: !75, flags: DIFlagArtificial)
!83 = !DILocalVariable(name: "r", arg: 7, scope: !66, type: !74, flags: DIFlagArtificial)
!84 = !DILocalVariable(name: "y", arg: 8, scope: !66, type: !75, flags: DIFlagArtificial)
!85 = !DILocalVariable(name: "out", arg: 9, scope: !66, type: !74, flags: DIFlagArtificial)
!86 = !DILocation(line: 0, scope: !66)
!87 = !{!88}
!88 = distinct !{!88, !89, !".omp_outlined._debug__: argument 0"}
!89 = distinct !{!89, !".omp_outlined._debug__"}
!90 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !91, type: !69, flags: DIFlagArtificial)
!91 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 77, type: !67, scopeLine: 77, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !92)
!92 = !{!90, !93, !94, !95, !96, !97, !98, !99, !100, !101, !104, !104, !105, !106, !107, !108, !109, !110, !105, !111, !113, !113, !114, !115, !116, !117, !118, !114}
!93 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !91, type: !69, flags: DIFlagArtificial)
!94 = !DILocalVariable(name: "n", arg: 3, scope: !91, file: !1, line: 63, type: !73)
!95 = !DILocalVariable(name: "beta", arg: 4, scope: !91, file: !1, line: 67, type: !74)
!96 = !DILocalVariable(name: "alpha", arg: 5, scope: !91, file: !1, line: 66, type: !74)
!97 = !DILocalVariable(name: "sum", arg: 6, scope: !91, file: !1, line: 65, type: !75)
!98 = !DILocalVariable(name: "r", arg: 7, scope: !91, file: !1, line: 68, type: !74)
!99 = !DILocalVariable(name: "y", arg: 8, scope: !91, file: !1, line: 64, type: !75)
!100 = !DILocalVariable(name: "out", arg: 9, scope: !91, file: !1, line: 69, type: !74)
!101 = !DILocalVariable(name: ".omp.iv", scope: !102, type: !15, flags: DIFlagArtificial)
!102 = distinct !DILexicalBlock(scope: !103, file: !1, line: 78, column: 1)
!103 = distinct !DILexicalBlock(scope: !91, file: !1, line: 77, column: 3)
!104 = !DILocalVariable(name: ".capture_expr.", scope: !102, type: !15, flags: DIFlagArtificial)
!105 = !DILocalVariable(name: "k", scope: !102, type: !15, flags: DIFlagArtificial)
!106 = !DILocalVariable(name: ".omp.lb", scope: !102, type: !15, flags: DIFlagArtificial)
!107 = !DILocalVariable(name: ".omp.ub", scope: !102, type: !15, flags: DIFlagArtificial)
!108 = !DILocalVariable(name: ".omp.stride", scope: !102, type: !15, flags: DIFlagArtificial)
!109 = !DILocalVariable(name: ".omp.is_last", scope: !102, type: !15, flags: DIFlagArtificial)
!110 = !DILocalVariable(name: "i", scope: !102, type: !15, flags: DIFlagArtificial)
!111 = !DILocalVariable(name: ".omp.iv", scope: !112, type: !15, flags: DIFlagArtificial)
!112 = distinct !DILexicalBlock(scope: !103, file: !1, line: 90, column: 1)
!113 = !DILocalVariable(name: ".capture_expr.", scope: !112, type: !15, flags: DIFlagArtificial)
!114 = !DILocalVariable(name: "i", scope: !112, type: !15, flags: DIFlagArtificial)
!115 = !DILocalVariable(name: ".omp.lb", scope: !112, type: !15, flags: DIFlagArtificial)
!116 = !DILocalVariable(name: ".omp.ub", scope: !112, type: !15, flags: DIFlagArtificial)
!117 = !DILocalVariable(name: ".omp.stride", scope: !112, type: !15, flags: DIFlagArtificial)
!118 = !DILocalVariable(name: ".omp.is_last", scope: !112, type: !15, flags: DIFlagArtificial)
!119 = !DILocation(line: 0, scope: !91, inlinedAt: !120)
!120 = distinct !DILocation(line: 77, column: 3, scope: !66)
!121 = !DILocation(line: 79, column: 21, scope: !102, inlinedAt: !120)
!122 = !DILocation(line: 0, scope: !102, inlinedAt: !120)
!123 = !DILocation(line: 79, column: 5, scope: !102, inlinedAt: !120)
!124 = !DILocation(line: 78, column: 1, scope: !103, inlinedAt: !120)
!125 = !DILocation(line: 78, column: 27, scope: !102, inlinedAt: !120)
!126 = !DILocation(line: 79, column: 10, scope: !102, inlinedAt: !120)
!127 = !DILocation(line: 0, scope: !128, inlinedAt: !120)
!128 = distinct !DILexicalBlock(scope: !102, file: !1, line: 80, column: 5)
!129 = !DILocation(line: 0, scope: !130, inlinedAt: !120)
!130 = distinct !DILexicalBlock(scope: !131, file: !1, line: 83, column: 7)
!131 = distinct !DILexicalBlock(scope: !128, file: !1, line: 83, column: 7)
!132 = !DILocation(line: 79, column: 28, scope: !102, inlinedAt: !120)
!133 = !DILocation(line: 81, column: 17, scope: !128, inlinedAt: !120)
!134 = !DILocation(line: 81, column: 31, scope: !128, inlinedAt: !120)
!135 = !DILocation(line: 81, column: 44, scope: !128, inlinedAt: !120)
!136 = !DILocation(line: 81, column: 59, scope: !128, inlinedAt: !120)
!137 = !DILocation(line: 81, column: 29, scope: !128, inlinedAt: !120)
!138 = !DILocation(line: 81, column: 7, scope: !128, inlinedAt: !120)
!139 = !DILocation(line: 81, column: 15, scope: !128, inlinedAt: !120)
!140 = !DILocation(line: 82, column: 19, scope: !128, inlinedAt: !120)
!141 = !DILocation(line: 82, column: 7, scope: !128, inlinedAt: !120)
!142 = !DILocation(line: 82, column: 17, scope: !128, inlinedAt: !120)
!143 = !DILocation(line: 83, column: 21, scope: !130, inlinedAt: !120)
!144 = !DILocation(line: 83, column: 7, scope: !131, inlinedAt: !120)
!145 = !DILocation(line: 84, column: 37, scope: !130, inlinedAt: !120)
!146 = !DILocation(line: 84, column: 52, scope: !130, inlinedAt: !120)
!147 = !DILocation(line: 84, column: 50, scope: !130, inlinedAt: !120)
!148 = !DILocation(line: 84, column: 35, scope: !130, inlinedAt: !120)
!149 = !DILocation(line: 84, column: 9, scope: !130, inlinedAt: !120)
!150 = !DILocation(line: 84, column: 23, scope: !130, inlinedAt: !120)
!151 = distinct !{!151, !144, !152}
!152 = !DILocation(line: 84, column: 62, scope: !131, inlinedAt: !120)
!153 = !DILocation(line: 84, column: 25, scope: !130, inlinedAt: !120)
!154 = !DILocation(line: 84, column: 45, scope: !130, inlinedAt: !120)
!155 = !DILocation(line: 84, column: 15, scope: !130, inlinedAt: !120)
!156 = !DILocation(line: 85, column: 19, scope: !128, inlinedAt: !120)
!157 = !DILocation(line: 85, column: 18, scope: !128, inlinedAt: !120)
!158 = !DILocation(line: 85, column: 31, scope: !128, inlinedAt: !120)
!159 = !DILocation(line: 85, column: 29, scope: !128, inlinedAt: !120)
!160 = !DILocation(line: 85, column: 7, scope: !128, inlinedAt: !120)
!161 = !DILocation(line: 85, column: 16, scope: !128, inlinedAt: !120)
!162 = !DILocation(line: 86, column: 7, scope: !163, inlinedAt: !120)
!163 = distinct !DILexicalBlock(scope: !128, file: !1, line: 86, column: 7)
!164 = !DILocation(line: 86, column: 21, scope: !165, inlinedAt: !120)
!165 = distinct !DILexicalBlock(scope: !163, file: !1, line: 86, column: 7)
!166 = !DILocation(line: 87, column: 19, scope: !165, inlinedAt: !120)
!167 = !DILocation(line: 87, column: 44, scope: !165, inlinedAt: !120)
!168 = !DILocation(line: 87, column: 42, scope: !165, inlinedAt: !120)
!169 = !DILocation(line: 87, column: 31, scope: !165, inlinedAt: !120)
!170 = !DILocation(line: 87, column: 9, scope: !165, inlinedAt: !120)
!171 = !DILocation(line: 87, column: 17, scope: !165, inlinedAt: !120)
!172 = distinct !{!172, !162, !173}
!173 = !DILocation(line: 87, column: 62, scope: !163, inlinedAt: !120)
!174 = !DILocation(line: 87, column: 33, scope: !165, inlinedAt: !120)
!175 = !DILocation(line: 87, column: 52, scope: !165, inlinedAt: !120)
!176 = !DILocation(line: 86, column: 32, scope: !165, inlinedAt: !120)
!177 = !DILocation(line: 88, column: 17, scope: !128, inlinedAt: !120)
!178 = !DILocation(line: 88, column: 7, scope: !128, inlinedAt: !120)
!179 = !DILocation(line: 88, column: 15, scope: !128, inlinedAt: !120)
!180 = distinct !{!180, !181, !125}
!181 = !DILocation(line: 78, column: 1, scope: !102, inlinedAt: !120)
!182 = !DILocation(line: 91, column: 21, scope: !112, inlinedAt: !120)
!183 = !DILocation(line: 0, scope: !112, inlinedAt: !120)
!184 = !DILocation(line: 91, column: 5, scope: !112, inlinedAt: !120)
!185 = !DILocation(line: 90, column: 1, scope: !103, inlinedAt: !120)
!186 = !DILocation(line: 91, column: 10, scope: !112, inlinedAt: !120)
!187 = !DILocation(line: 92, column: 16, scope: !112, inlinedAt: !120)
!188 = !DILocation(line: 92, column: 7, scope: !112, inlinedAt: !120)
!189 = !DILocation(line: 92, column: 14, scope: !112, inlinedAt: !120)
!190 = distinct !{!190, !191, !192}
!191 = !DILocation(line: 90, column: 1, scope: !112, inlinedAt: !120)
!192 = !DILocation(line: 90, column: 16, scope: !112, inlinedAt: !120)
!193 = !DILocation(line: 93, column: 3, scope: !91, inlinedAt: !120)
!194 = !DILocation(line: 77, column: 3, scope: !66)
!195 = !{!196}
!196 = !{i64 2, i64 -1, i64 -1, i1 true}
!197 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 97, type: !198, scopeLine: 98, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !203)
!198 = !DISubroutineType(types: !199)
!199 = !{!15, !15, !200}
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!203 = !{!204, !205, !206, !207, !208, !209, !210, !211, !212}
!204 = !DILocalVariable(name: "argc", arg: 1, scope: !197, file: !1, line: 97, type: !15)
!205 = !DILocalVariable(name: "argv", arg: 2, scope: !197, file: !1, line: 97, type: !200)
!206 = !DILocalVariable(name: "n", scope: !197, file: !1, line: 100, type: !15)
!207 = !DILocalVariable(name: "y", scope: !197, file: !1, line: 103, type: !4)
!208 = !DILocalVariable(name: "sum", scope: !197, file: !1, line: 104, type: !4)
!209 = !DILocalVariable(name: "alpha", scope: !197, file: !1, line: 105, type: !16)
!210 = !DILocalVariable(name: "beta", scope: !197, file: !1, line: 106, type: !16)
!211 = !DILocalVariable(name: "r", scope: !197, file: !1, line: 107, type: !16)
!212 = !DILocalVariable(name: "out", scope: !197, file: !1, line: 108, type: !16)
!213 = !DILocation(line: 0, scope: !197)
!214 = !DILocation(line: 103, column: 3, scope: !197)
!215 = !DILocation(line: 104, column: 3, scope: !197)
!216 = !DILocation(line: 105, column: 3, scope: !197)
!217 = !DILocation(line: 106, column: 3, scope: !197)
!218 = !DILocation(line: 107, column: 3, scope: !197)
!219 = !DILocation(line: 108, column: 3, scope: !197)
!220 = !DILocation(line: 112, column: 14, scope: !197)
!221 = !DILocation(line: 113, column: 14, scope: !197)
!222 = !DILocation(line: 114, column: 14, scope: !197)
!223 = !DILocation(line: 115, column: 14, scope: !197)
!224 = !DILocation(line: 116, column: 14, scope: !197)
!225 = !DILocalVariable(name: "n", arg: 1, scope: !226, file: !1, line: 23, type: !15)
!226 = distinct !DISubprogram(name: "init_array", scope: !1, file: !1, line: 23, type: !227, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !229)
!227 = !DISubroutineType(types: !228)
!228 = !{null, !15, !16, !16, !35, !35, !35}
!229 = !{!225, !230, !231, !232, !233, !234, !235, !236}
!230 = !DILocalVariable(name: "y", arg: 2, scope: !226, file: !1, line: 24, type: !16)
!231 = !DILocalVariable(name: "sum", arg: 3, scope: !226, file: !1, line: 25, type: !16)
!232 = !DILocalVariable(name: "alpha", arg: 4, scope: !226, file: !1, line: 26, type: !35)
!233 = !DILocalVariable(name: "beta", arg: 5, scope: !226, file: !1, line: 27, type: !35)
!234 = !DILocalVariable(name: "r", arg: 6, scope: !226, file: !1, line: 28, type: !35)
!235 = !DILocalVariable(name: "i", scope: !226, file: !1, line: 30, type: !15)
!236 = !DILocalVariable(name: "j", scope: !226, file: !1, line: 30, type: !15)
!237 = !DILocation(line: 0, scope: !226, inlinedAt: !238)
!238 = distinct !DILocation(line: 111, column: 3, scope: !197)
!239 = !DILocation(line: 32, column: 3, scope: !240, inlinedAt: !238)
!240 = distinct !DILexicalBlock(scope: !226, file: !1, line: 32, column: 3)
!241 = !DILocation(line: 32, column: 17, scope: !242, inlinedAt: !238)
!242 = distinct !DILexicalBlock(scope: !240, file: !1, line: 32, column: 3)
!243 = !DILocation(line: 34, column: 16, scope: !244, inlinedAt: !238)
!244 = distinct !DILexicalBlock(scope: !242, file: !1, line: 33, column: 3)
!245 = !DILocation(line: 34, column: 5, scope: !244, inlinedAt: !238)
!246 = !DILocation(line: 34, column: 14, scope: !244, inlinedAt: !238)
!247 = !DILocation(line: 35, column: 18, scope: !244, inlinedAt: !238)
!248 = !DILocation(line: 35, column: 23, scope: !244, inlinedAt: !238)
!249 = !DILocation(line: 35, column: 15, scope: !244, inlinedAt: !238)
!250 = !DILocation(line: 35, column: 27, scope: !244, inlinedAt: !238)
!251 = !DILocation(line: 35, column: 5, scope: !244, inlinedAt: !238)
!252 = !DILocation(line: 35, column: 13, scope: !244, inlinedAt: !238)
!253 = !DILocation(line: 36, column: 24, scope: !244, inlinedAt: !238)
!254 = !DILocation(line: 36, column: 5, scope: !244, inlinedAt: !238)
!255 = !DILocation(line: 36, column: 10, scope: !244, inlinedAt: !238)
!256 = !DILocation(line: 37, column: 5, scope: !257, inlinedAt: !238)
!257 = distinct !DILexicalBlock(scope: !244, file: !1, line: 37, column: 5)
!258 = !DILocation(line: 39, column: 33, scope: !259, inlinedAt: !238)
!259 = distinct !DILexicalBlock(scope: !260, file: !1, line: 38, column: 5)
!260 = distinct !DILexicalBlock(scope: !257, file: !1, line: 37, column: 5)
!261 = !DILocation(line: 39, column: 31, scope: !259, inlinedAt: !238)
!262 = !DILocation(line: 39, column: 36, scope: !259, inlinedAt: !238)
!263 = !DILocation(line: 39, column: 7, scope: !259, inlinedAt: !238)
!264 = !DILocation(line: 39, column: 15, scope: !259, inlinedAt: !238)
!265 = !DILocation(line: 40, column: 7, scope: !259, inlinedAt: !238)
!266 = !DILocation(line: 40, column: 17, scope: !259, inlinedAt: !238)
!267 = !DILocation(line: 37, column: 25, scope: !260, inlinedAt: !238)
!268 = !DILocation(line: 37, column: 19, scope: !260, inlinedAt: !238)
!269 = distinct !{!269, !256, !270}
!270 = !DILocation(line: 41, column: 5, scope: !257, inlinedAt: !238)
!271 = !DILocation(line: 119, column: 3, scope: !197)
!272 = !DILocation(line: 128, column: 13, scope: !197)
!273 = !DILocation(line: 0, scope: !32, inlinedAt: !274)
!274 = distinct !DILocation(line: 122, column: 3, scope: !197)
!275 = !DILocation(line: 73, column: 13, scope: !32, inlinedAt: !274)
!276 = !DILocation(line: 73, column: 3, scope: !32, inlinedAt: !274)
!277 = !DILocation(line: 73, column: 11, scope: !32, inlinedAt: !274)
!278 = !DILocation(line: 74, column: 11, scope: !32, inlinedAt: !274)
!279 = !DILocation(line: 75, column: 14, scope: !32, inlinedAt: !274)
!280 = !DILocation(line: 75, column: 3, scope: !32, inlinedAt: !274)
!281 = !DILocation(line: 75, column: 12, scope: !32, inlinedAt: !274)
!282 = !DILocation(line: 76, column: 1, scope: !32, inlinedAt: !274)
!283 = !DILocation(line: 95, column: 1, scope: !32, inlinedAt: !274)
!284 = !DILocation(line: 131, column: 3, scope: !197)
!285 = !DILocation(line: 132, column: 3, scope: !197)
!286 = !DILocation(line: 136, column: 3, scope: !287)
!287 = distinct !DILexicalBlock(scope: !197, file: !1, line: 136, column: 3)
!288 = !DILocation(line: 136, column: 3, scope: !197)
!289 = !DILocalVariable(name: "i", scope: !290, file: !1, line: 51, type: !15)
!290 = distinct !DISubprogram(name: "print_array", scope: !1, file: !1, line: 47, type: !291, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !293)
!291 = !DISubroutineType(types: !292)
!292 = !{null, !15, !35}
!293 = !{!294, !295, !289}
!294 = !DILocalVariable(name: "n", arg: 1, scope: !290, file: !1, line: 47, type: !15)
!295 = !DILocalVariable(name: "out", arg: 2, scope: !290, file: !1, line: 48, type: !35)
!296 = !DILocation(line: 0, scope: !290, inlinedAt: !297)
!297 = distinct !DILocation(line: 136, column: 3, scope: !287)
!298 = !DILocation(line: 55, column: 13, scope: !299, inlinedAt: !297)
!299 = distinct !DILexicalBlock(scope: !300, file: !1, line: 54, column: 3)
!300 = distinct !DILexicalBlock(scope: !301, file: !1, line: 53, column: 3)
!301 = distinct !DILexicalBlock(scope: !290, file: !1, line: 53, column: 3)
!302 = !DILocation(line: 55, column: 43, scope: !299, inlinedAt: !297)
!303 = !DILocation(line: 55, column: 5, scope: !299, inlinedAt: !297)
!304 = !DILocation(line: 56, column: 11, scope: !305, inlinedAt: !297)
!305 = distinct !DILexicalBlock(scope: !299, file: !1, line: 56, column: 9)
!306 = !DILocation(line: 56, column: 16, scope: !305, inlinedAt: !297)
!307 = !DILocation(line: 56, column: 9, scope: !299, inlinedAt: !297)
!308 = !DILocation(line: 57, column: 15, scope: !305, inlinedAt: !297)
!309 = !DILocation(line: 57, column: 7, scope: !305, inlinedAt: !297)
!310 = !DILocation(line: 53, column: 23, scope: !300, inlinedAt: !297)
!311 = !DILocation(line: 53, column: 17, scope: !300, inlinedAt: !297)
!312 = !DILocation(line: 53, column: 3, scope: !301, inlinedAt: !297)
!313 = distinct !{!313, !312, !314}
!314 = !DILocation(line: 58, column: 3, scope: !301, inlinedAt: !297)
!315 = !DILocation(line: 139, column: 3, scope: !197)
!316 = !DILocation(line: 140, column: 3, scope: !197)
!317 = !DILocation(line: 141, column: 3, scope: !197)
!318 = !DILocation(line: 142, column: 3, scope: !197)
!319 = !DILocation(line: 143, column: 3, scope: !197)
!320 = !DILocation(line: 144, column: 3, scope: !197)
!321 = !DILocation(line: 146, column: 3, scope: !197)
