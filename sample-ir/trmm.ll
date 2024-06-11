; ModuleID = '../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/trmm/trmm.c'
source_filename = "../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/trmm/trmm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr constant %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [91 x i8] c";../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/trmm/trmm.c;kernel_p1;68;1;;\00", align 1
@2 = private unnamed_addr constant [92 x i8] c";../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/trmm/trmm.c;kernel_p1;68;30;;\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"%0.2lf \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, double, [2000 x double]*, [2000 x double]*)* @kernel_p1 to i8*)], section "llvm.metadata"

; Function Attrs: nounwind uwtable
define internal void @kernel_p1(i32 %0, double %1, [2000 x double]* nocapture readonly %2, [2000 x double]* nocapture %3) #0 !dbg !29 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ident_t, align 8
  %10 = bitcast %struct.ident_t* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %10, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @0 to i8*), i64 16, i1 false)
  %11 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %9, i64 0, i32 4
  store i8* getelementptr inbounds ([91 x i8], [91 x i8]* @1, i64 0, i64 0), i8** %11, align 8, !tbaa !54
  %12 = call i32 @__kmpc_global_thread_num(%struct.ident_t* nonnull %9) #7
  call void @llvm.dbg.value(metadata i32 %0, metadata !36, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.value(metadata double %1, metadata !37, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.value(metadata [2000 x double]* %2, metadata !38, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.value(metadata [2000 x double]* %3, metadata !39, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.value(metadata i32 %0, metadata !46, metadata !DIExpression()), !dbg !61
  %13 = add nsw i32 %0, -2, !dbg !62
  call void @llvm.dbg.value(metadata i32 %13, metadata !46, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.value(metadata i32 1, metadata !47, metadata !DIExpression()), !dbg !61
  %14 = icmp sgt i32 %0, 1, !dbg !62
  br i1 %14, label %15, label %86, !dbg !63

15:                                               ; preds = %4
  %16 = bitcast i32* %5 to i8*, !dbg !63
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %16) #7, !dbg !63
  call void @llvm.dbg.value(metadata i32 0, metadata !48, metadata !DIExpression()), !dbg !61
  store i32 0, i32* %5, align 4, !dbg !64, !tbaa !65
  %17 = bitcast i32* %6 to i8*, !dbg !63
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %17) #7, !dbg !63
  call void @llvm.dbg.value(metadata i32 %13, metadata !49, metadata !DIExpression()), !dbg !61
  store i32 %13, i32* %6, align 4, !dbg !64, !tbaa !65
  %18 = bitcast i32* %7 to i8*, !dbg !63
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18) #7, !dbg !63
  call void @llvm.dbg.value(metadata i32 1, metadata !50, metadata !DIExpression()), !dbg !61
  store i32 1, i32* %7, align 4, !dbg !64, !tbaa !65
  %19 = bitcast i32* %8 to i8*, !dbg !63
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #7, !dbg !63
  call void @llvm.dbg.value(metadata i32 0, metadata !51, metadata !DIExpression()), !dbg !61
  store i32 0, i32* %8, align 4, !dbg !64, !tbaa !65
  store i8* getelementptr inbounds ([91 x i8], [91 x i8]* @1, i64 0, i64 0), i8** %11, align 8, !dbg !63, !tbaa !54
  call void @llvm.dbg.value(metadata i32* %5, metadata !48, metadata !DIExpression(DW_OP_deref)), !dbg !61
  call void @llvm.dbg.value(metadata i32* %6, metadata !49, metadata !DIExpression(DW_OP_deref)), !dbg !61
  call void @llvm.dbg.value(metadata i32* %7, metadata !50, metadata !DIExpression(DW_OP_deref)), !dbg !61
  call void @llvm.dbg.value(metadata i32* %8, metadata !51, metadata !DIExpression(DW_OP_deref)), !dbg !61
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull %9, i32 %12, i32 34, i32* nonnull %8, i32* nonnull %5, i32* nonnull %6, i32* nonnull %7, i32 1, i32 1) #7, !dbg !63
  %20 = load i32, i32* %6, align 4, !dbg !64, !tbaa !65
  call void @llvm.dbg.value(metadata i32 %20, metadata !49, metadata !DIExpression()), !dbg !61
  %21 = icmp sgt i32 %20, %13, !dbg !64
  %22 = select i1 %21, i32 %13, i32 %20, !dbg !64
  call void @llvm.dbg.value(metadata i32 %22, metadata !49, metadata !DIExpression()), !dbg !61
  store i32 %22, i32* %6, align 4, !dbg !64, !tbaa !65
  %23 = load i32, i32* %5, align 4, !dbg !64, !tbaa !65
  call void @llvm.dbg.value(metadata i32 %23, metadata !48, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.value(metadata i32 %23, metadata !43, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.value(metadata i32 %22, metadata !49, metadata !DIExpression()), !dbg !61
  %24 = icmp sgt i32 %23, %22, !dbg !62
  br i1 %24, label %85, label %25, !dbg !63

25:                                               ; preds = %15
  %26 = sext i32 %23 to i64, !dbg !66
  %27 = sext i32 %22 to i64, !dbg !66
  %28 = zext i32 %0 to i64, !dbg !68
  %29 = add i32 %23, 1, !dbg !66
  br label %30, !dbg !66

30:                                               ; preds = %25, %82
  %31 = phi i32 [ 0, %25 ], [ %84, %82 ]
  %32 = phi i64 [ %26, %25 ], [ %35, %82 ]
  %33 = add i32 %29, %31, !dbg !70
  %34 = zext i32 %33 to i64, !dbg !70
  call void @llvm.dbg.value(metadata i64 %32, metadata !43, metadata !DIExpression()), !dbg !61
  %35 = add nsw i64 %32, 1, !dbg !71
  call void @llvm.dbg.value(metadata i64 %35, metadata !47, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.value(metadata i32 0, metadata !52, metadata !DIExpression()), !dbg !61
  %36 = icmp slt i64 %32, 0, !dbg !72
  br i1 %36, label %82, label %37, !dbg !66

37:                                               ; preds = %30
  %38 = and i64 %34, 1, !dbg !75
  %39 = icmp eq i32 %33, 1, !dbg !75
  %40 = sub nsw i64 %34, %38, !dbg !75
  %41 = icmp eq i64 %38, 0, !dbg !75
  br label %64, !dbg !66

42:                                               ; preds = %64, %42
  %43 = phi double [ %60, %42 ], [ %67, %64 ], !dbg !76
  %44 = phi i64 [ %61, %42 ], [ 0, %64 ]
  %45 = phi i64 [ %62, %42 ], [ %40, %64 ]
  call void @llvm.dbg.value(metadata i64 %44, metadata !53, metadata !DIExpression()), !dbg !61
  %46 = getelementptr inbounds [2000 x double], [2000 x double]* %2, i64 %35, i64 %44, !dbg !77
  %47 = load double, double* %46, align 8, !dbg !77, !tbaa !78
  %48 = fmul double %47, %1, !dbg !80
  %49 = getelementptr inbounds [2000 x double], [2000 x double]* %3, i64 %65, i64 %44, !dbg !81
  %50 = load double, double* %49, align 8, !dbg !81, !tbaa !78
  %51 = fmul double %48, %50, !dbg !82
  %52 = fadd double %43, %51, !dbg !76
  store double %52, double* %66, align 8, !dbg !76, !tbaa !78
  %53 = or i64 %44, 1, !dbg !83
  call void @llvm.dbg.value(metadata i64 %53, metadata !53, metadata !DIExpression()), !dbg !61
  %54 = getelementptr inbounds [2000 x double], [2000 x double]* %2, i64 %35, i64 %53, !dbg !77
  %55 = load double, double* %54, align 8, !dbg !77, !tbaa !78
  %56 = fmul double %55, %1, !dbg !80
  %57 = getelementptr inbounds [2000 x double], [2000 x double]* %3, i64 %65, i64 %53, !dbg !81
  %58 = load double, double* %57, align 8, !dbg !81, !tbaa !78
  %59 = fmul double %56, %58, !dbg !82
  %60 = fadd double %52, %59, !dbg !76
  store double %60, double* %66, align 8, !dbg !76, !tbaa !78
  %61 = add nuw nsw i64 %44, 2, !dbg !83
  call void @llvm.dbg.value(metadata i64 %61, metadata !53, metadata !DIExpression()), !dbg !61
  %62 = add i64 %45, -2, !dbg !84
  %63 = icmp eq i64 %62, 0, !dbg !84
  br i1 %63, label %68, label %42, !dbg !84, !llvm.loop !85

64:                                               ; preds = %79, %37
  %65 = phi i64 [ 0, %37 ], [ %80, %79 ]
  call void @llvm.dbg.value(metadata i64 %65, metadata !52, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.value(metadata i32 0, metadata !53, metadata !DIExpression()), !dbg !61
  %66 = getelementptr inbounds [2000 x double], [2000 x double]* %3, i64 %35, i64 %65, !dbg !72
  %67 = load double, double* %66, align 8, !dbg !76, !tbaa !78
  br i1 %39, label %68, label %42, !dbg !84

68:                                               ; preds = %42, %64
  %69 = phi double [ %67, %64 ], [ %60, %42 ]
  %70 = phi i64 [ 0, %64 ], [ %61, %42 ]
  br i1 %41, label %79, label %71, !dbg !84

71:                                               ; preds = %68
  call void @llvm.dbg.value(metadata i64 %70, metadata !53, metadata !DIExpression()), !dbg !61
  %72 = getelementptr inbounds [2000 x double], [2000 x double]* %2, i64 %35, i64 %70, !dbg !77
  %73 = load double, double* %72, align 8, !dbg !77, !tbaa !78
  %74 = fmul double %73, %1, !dbg !80
  %75 = getelementptr inbounds [2000 x double], [2000 x double]* %3, i64 %65, i64 %70, !dbg !81
  %76 = load double, double* %75, align 8, !dbg !81, !tbaa !78
  %77 = fmul double %74, %76, !dbg !82
  %78 = fadd double %69, %77, !dbg !76
  store double %78, double* %66, align 8, !dbg !76, !tbaa !78
  call void @llvm.dbg.value(metadata i64 %70, metadata !53, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !61
  br label %79, !dbg !87

79:                                               ; preds = %68, %71
  %80 = add nuw nsw i64 %65, 1, !dbg !87
  call void @llvm.dbg.value(metadata i64 %80, metadata !52, metadata !DIExpression()), !dbg !61
  %81 = icmp eq i64 %80, %28, !dbg !88
  br i1 %81, label %82, label %64, !dbg !66, !llvm.loop !89

82:                                               ; preds = %79, %30
  call void @llvm.dbg.value(metadata i64 %35, metadata !43, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.value(metadata i32 %22, metadata !49, metadata !DIExpression()), !dbg !61
  %83 = icmp slt i64 %32, %27, !dbg !62
  %84 = add i32 %31, 1, !dbg !63
  br i1 %83, label %30, label %85, !dbg !63

85:                                               ; preds = %82, %15
  store i8* getelementptr inbounds ([92 x i8], [92 x i8]* @2, i64 0, i64 0), i8** %11, align 8, !dbg !91, !tbaa !54
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull %9, i32 %12) #7, !dbg !91
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #7, !dbg !91
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #7, !dbg !91
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %17) #7, !dbg !91
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %16) #7, !dbg !91
  br label %86, !dbg !91

86:                                               ; preds = %85, %4
  store i8* getelementptr inbounds ([91 x i8], [91 x i8]* @1, i64 0, i64 0), i8** %11, align 8, !dbg !92, !tbaa !54
  call void @__kmpc_barrier(%struct.ident_t* nonnull %9, i32 %12) #7, !dbg !92
  ret void, !dbg !93
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @__kmpc_global_thread_num(%struct.ident_t*) local_unnamed_addr

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32) local_unnamed_addr

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32) local_unnamed_addr

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32) local_unnamed_addr

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %0, i8** nocapture readonly %1) local_unnamed_addr #0 !dbg !94 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !101, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.value(metadata i8** %1, metadata !102, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.value(metadata i32 2000, metadata !103, metadata !DIExpression()), !dbg !107
  %3 = tail call i8* @polybench_alloc_data(i64 4000000, i32 8) #7, !dbg !108
  call void @llvm.dbg.value(metadata i8* %3, metadata !105, metadata !DIExpression()), !dbg !107
  %4 = tail call i8* @polybench_alloc_data(i64 4000000, i32 8) #7, !dbg !109
  call void @llvm.dbg.value(metadata i8* %4, metadata !106, metadata !DIExpression()), !dbg !107
  %5 = bitcast i8* %3 to [2000 x double]*, !dbg !110
  %6 = bitcast i8* %4 to [2000 x double]*, !dbg !111
  call void @llvm.dbg.value(metadata i32 2000, metadata !112, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.value(metadata [2000 x double]* %5, metadata !119, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.value(metadata [2000 x double]* %6, metadata !120, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.value(metadata i32 0, metadata !121, metadata !DIExpression()), !dbg !123
  br label %7, !dbg !125

7:                                                ; preds = %28, %2
  %8 = phi i64 [ 0, %2 ], [ %29, %28 ]
  call void @llvm.dbg.value(metadata i64 %8, metadata !121, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.value(metadata i32 0, metadata !122, metadata !DIExpression()), !dbg !123
  %9 = trunc i64 %8 to i32, !dbg !127
  %10 = sitofp i32 %9 to double, !dbg !127
  br label %11, !dbg !132

11:                                               ; preds = %11, %7
  %12 = phi i64 [ 0, %7 ], [ %26, %11 ]
  call void @llvm.dbg.value(metadata i64 %12, metadata !122, metadata !DIExpression()), !dbg !123
  %13 = trunc i64 %12 to i32, !dbg !133
  %14 = sitofp i32 %13 to double, !dbg !133
  %15 = fmul double %10, %14, !dbg !134
  %16 = fdiv double %15, 2.000000e+03, !dbg !135
  %17 = getelementptr inbounds [2000 x double], [2000 x double]* %5, i64 %8, i64 %12, !dbg !136
  store double %16, double* %17, align 8, !dbg !137, !tbaa !78
  %18 = getelementptr inbounds [2000 x double], [2000 x double]* %6, i64 %8, i64 %12, !dbg !138
  store double %16, double* %18, align 8, !dbg !139, !tbaa !78
  %19 = or i64 %12, 1, !dbg !140
  call void @llvm.dbg.value(metadata i64 %19, metadata !122, metadata !DIExpression()), !dbg !123
  %20 = trunc i64 %19 to i32, !dbg !133
  %21 = sitofp i32 %20 to double, !dbg !133
  %22 = fmul double %10, %21, !dbg !134
  %23 = fdiv double %22, 2.000000e+03, !dbg !135
  %24 = getelementptr inbounds [2000 x double], [2000 x double]* %5, i64 %8, i64 %19, !dbg !136
  store double %23, double* %24, align 8, !dbg !137, !tbaa !78
  %25 = getelementptr inbounds [2000 x double], [2000 x double]* %6, i64 %8, i64 %19, !dbg !138
  store double %23, double* %25, align 8, !dbg !139, !tbaa !78
  %26 = add nuw nsw i64 %12, 2, !dbg !140
  call void @llvm.dbg.value(metadata i64 %26, metadata !122, metadata !DIExpression()), !dbg !123
  %27 = icmp eq i64 %26, 2000, !dbg !141
  br i1 %27, label %28, label %11, !dbg !132, !llvm.loop !142

28:                                               ; preds = %11
  %29 = add nuw nsw i64 %8, 1, !dbg !144
  call void @llvm.dbg.value(metadata i64 %29, metadata !121, metadata !DIExpression()), !dbg !123
  %30 = icmp eq i64 %29, 2000, !dbg !145
  br i1 %30, label %31, label %7, !dbg !125, !llvm.loop !146

31:                                               ; preds = %28
  tail call void (...) @polybench_timer_start() #7, !dbg !148
  call void @llvm.dbg.value(metadata double 3.241200e+04, metadata !104, metadata !DIExpression()), !dbg !107
  tail call void @kernel_p1(i32 2000, double 3.241200e+04, [2000 x double]* nonnull %5, [2000 x double]* nonnull %6), !dbg !149
  tail call void (...) @polybench_timer_stop() #7, !dbg !150
  tail call void (...) @polybench_timer_print() #7, !dbg !151
  %32 = icmp sgt i32 %0, 42, !dbg !152
  br i1 %32, label %33, label %62, !dbg !152

33:                                               ; preds = %31
  %34 = load i8*, i8** %1, align 8, !dbg !152, !tbaa !154
  %35 = load i8, i8* %34, align 1, !dbg !152
  %36 = icmp eq i8 %35, 0, !dbg !152
  br i1 %36, label %37, label %62, !dbg !155

37:                                               ; preds = %33, %56
  %38 = phi i64 [ %57, %56 ], [ 0, %33 ]
  call void @llvm.dbg.value(metadata i64 %38, metadata !156, metadata !DIExpression()) #7, !dbg !164
  call void @llvm.dbg.value(metadata i32 0, metadata !163, metadata !DIExpression()) #7, !dbg !164
  %39 = mul nuw nsw i64 %38, 2000, !dbg !166
  br label %40, !dbg !173

40:                                               ; preds = %53, %37
  %41 = phi i64 [ 0, %37 ], [ %54, %53 ]
  call void @llvm.dbg.value(metadata i64 %41, metadata !163, metadata !DIExpression()) #7, !dbg !164
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !174, !tbaa !154
  %43 = getelementptr inbounds [2000 x double], [2000 x double]* %6, i64 %38, i64 %41, !dbg !175
  %44 = load double, double* %43, align 8, !dbg !175, !tbaa !78
  %45 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), double %44) #8, !dbg !176
  %46 = add nuw nsw i64 %41, %39, !dbg !177
  %47 = trunc i64 %46 to i32, !dbg !178
  %48 = urem i32 %47, 20, !dbg !178
  %49 = icmp eq i32 %48, 0, !dbg !179
  br i1 %49, label %50, label %53, !dbg !180

50:                                               ; preds = %40
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !181, !tbaa !154
  %52 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %51) #8, !dbg !182
  br label %53, !dbg !182

53:                                               ; preds = %50, %40
  %54 = add nuw nsw i64 %41, 1, !dbg !183
  call void @llvm.dbg.value(metadata i64 %54, metadata !163, metadata !DIExpression()) #7, !dbg !164
  %55 = icmp eq i64 %54, 2000, !dbg !184
  br i1 %55, label %56, label %40, !dbg !173, !llvm.loop !185

56:                                               ; preds = %53
  %57 = add nuw nsw i64 %38, 1, !dbg !187
  call void @llvm.dbg.value(metadata i64 %57, metadata !156, metadata !DIExpression()) #7, !dbg !164
  %58 = icmp eq i64 %57, 2000, !dbg !188
  br i1 %58, label %59, label %37, !dbg !189, !llvm.loop !190

59:                                               ; preds = %56
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !192, !tbaa !154
  %61 = tail call i32 @fputc(i32 10, %struct._IO_FILE* %60) #8, !dbg !193
  br label %62, !dbg !152

62:                                               ; preds = %33, %59, %31
  tail call void @free(i8* %3) #7, !dbg !194
  tail call void @free(i8* nonnull %4) #7, !dbg !195
  ret i32 0, !dbg !196
}

declare !dbg !9 dso_local i8* @polybench_alloc_data(i64, i32) local_unnamed_addr #2

declare !dbg !16 dso_local void @polybench_timer_start(...) local_unnamed_addr #2

declare !dbg !19 dso_local void @polybench_timer_stop(...) local_unnamed_addr #2

declare !dbg !20 dso_local void @polybench_timer_print(...) local_unnamed_addr #2

; Function Attrs: nounwind
declare !dbg !21 dso_local void @free(i8* nocapture) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare dso_local i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

; Function Attrs: nofree nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) local_unnamed_addr #6

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nofree nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!25, !26, !27}
!llvm.ident = !{!28}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 (https://github.com/conda-forge/clangdev-feedstock 2a1fb6e8a1c6dc6e585535457c24f0295d90c8d2)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/trmm/trmm.c", directory: "/WAVE/users/unix/klor/ycho_lab/kimsong_lor/autotuning_tools/scripts")
!2 = !{}
!3 = !{!4, !9, !16, !19, !20, !13, !21, !6}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 256000000, elements: !7)
!6 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!7 = !{!8, !8}
!8 = !DISubrange(count: 2000)
!9 = !DISubprogram(name: "polybench_alloc_data", scope: !10, file: !10, line: 199, type: !11, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!10 = !DIFile(filename: "../test/poly_gpu/inputs_kernel_splits/utilities/polybench.h", directory: "/WAVE/users/unix/klor/ycho_lab/kimsong_lor/autotuning_tools/scripts")
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !14, !15}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!14 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DISubprogram(name: "polybench_timer_start", scope: !10, file: !10, line: 184, type: !17, spFlags: DISPFlagOptimized, retainedNodes: !2)
!17 = !DISubroutineType(types: !18)
!18 = !{null, null}
!19 = !DISubprogram(name: "polybench_timer_stop", scope: !10, file: !10, line: 185, type: !17, spFlags: DISPFlagOptimized, retainedNodes: !2)
!20 = !DISubprogram(name: "polybench_timer_print", scope: !10, file: !10, line: 186, type: !17, spFlags: DISPFlagOptimized, retainedNodes: !2)
!21 = !DISubprogram(name: "free", scope: !22, file: !22, line: 563, type: !23, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!22 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!23 = !DISubroutineType(types: !24)
!24 = !{null, !13}
!25 = !{i32 7, !"Dwarf Version", i32 4}
!26 = !{i32 2, !"Debug Info Version", i32 3}
!27 = !{i32 1, !"wchar_size", i32 4}
!28 = !{!"clang version 10.0.1 (https://github.com/conda-forge/clangdev-feedstock 2a1fb6e8a1c6dc6e585535457c24f0295d90c8d2)"}
!29 = distinct !DISubprogram(name: "kernel_p1", scope: !1, file: !1, line: 58, type: !30, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !35)
!30 = !DISubroutineType(types: !31)
!31 = !{null, !15, !6, !32, !32}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 128000, elements: !34)
!34 = !{!8}
!35 = !{!36, !37, !38, !39, !40, !41, !42, !43, !46, !46, !47, !48, !49, !50, !51, !52, !53, !47}
!36 = !DILocalVariable(name: "ni", arg: 1, scope: !29, file: !1, line: 58, type: !15)
!37 = !DILocalVariable(name: "alpha", arg: 2, scope: !29, file: !1, line: 59, type: !6)
!38 = !DILocalVariable(name: "A", arg: 3, scope: !29, file: !1, line: 60, type: !32)
!39 = !DILocalVariable(name: "B", arg: 4, scope: !29, file: !1, line: 61, type: !32)
!40 = !DILocalVariable(name: "i", scope: !29, file: !1, line: 63, type: !15)
!41 = !DILocalVariable(name: "j", scope: !29, file: !1, line: 63, type: !15)
!42 = !DILocalVariable(name: "k", scope: !29, file: !1, line: 63, type: !15)
!43 = !DILocalVariable(name: ".omp.iv", scope: !44, type: !15, flags: DIFlagArtificial)
!44 = distinct !DILexicalBlock(scope: !45, file: !1, line: 68, column: 1)
!45 = distinct !DILexicalBlock(scope: !29, file: !1, line: 66, column: 3)
!46 = !DILocalVariable(name: ".capture_expr.", scope: !44, type: !15, flags: DIFlagArtificial)
!47 = !DILocalVariable(name: "i", scope: !44, type: !15, flags: DIFlagArtificial)
!48 = !DILocalVariable(name: ".omp.lb", scope: !44, type: !15, flags: DIFlagArtificial)
!49 = !DILocalVariable(name: ".omp.ub", scope: !44, type: !15, flags: DIFlagArtificial)
!50 = !DILocalVariable(name: ".omp.stride", scope: !44, type: !15, flags: DIFlagArtificial)
!51 = !DILocalVariable(name: ".omp.is_last", scope: !44, type: !15, flags: DIFlagArtificial)
!52 = !DILocalVariable(name: "j", scope: !44, type: !15, flags: DIFlagArtificial)
!53 = !DILocalVariable(name: "k", scope: !44, type: !15, flags: DIFlagArtificial)
!54 = !{!55, !59, i64 16}
!55 = !{!"ident_t", !56, i64 0, !56, i64 4, !56, i64 8, !56, i64 12, !59, i64 16}
!56 = !{!"int", !57, i64 0}
!57 = !{!"omnipotent char", !58, i64 0}
!58 = !{!"Simple C/C++ TBAA"}
!59 = !{!"any pointer", !57, i64 0}
!60 = !DILocation(line: 0, scope: !29)
!61 = !DILocation(line: 0, scope: !44)
!62 = !DILocation(line: 69, column: 5, scope: !44)
!63 = !DILocation(line: 68, column: 1, scope: !45)
!64 = !DILocation(line: 69, column: 10, scope: !44)
!65 = !{!56, !56, i64 0}
!66 = !DILocation(line: 70, column: 7, scope: !67)
!67 = distinct !DILexicalBlock(scope: !44, file: !1, line: 70, column: 7)
!68 = !DILocation(line: 0, scope: !69)
!69 = distinct !DILexicalBlock(scope: !67, file: !1, line: 70, column: 7)
!70 = !DILocation(line: 0, scope: !45)
!71 = !DILocation(line: 69, column: 29, scope: !44)
!72 = !DILocation(line: 0, scope: !73)
!73 = distinct !DILexicalBlock(scope: !74, file: !1, line: 71, column: 9)
!74 = distinct !DILexicalBlock(scope: !69, file: !1, line: 71, column: 9)
!75 = !DILocation(line: 0, scope: !74)
!76 = !DILocation(line: 72, column: 19, scope: !73)
!77 = !DILocation(line: 72, column: 30, scope: !73)
!78 = !{!79, !79, i64 0}
!79 = !{!"double", !57, i64 0}
!80 = !DILocation(line: 72, column: 28, scope: !73)
!81 = !DILocation(line: 72, column: 40, scope: !73)
!82 = !DILocation(line: 72, column: 38, scope: !73)
!83 = !DILocation(line: 71, column: 29, scope: !73)
!84 = !DILocation(line: 71, column: 9, scope: !74)
!85 = distinct !{!85, !84, !86}
!86 = !DILocation(line: 72, column: 46, scope: !74)
!87 = !DILocation(line: 70, column: 32, scope: !69)
!88 = !DILocation(line: 70, column: 21, scope: !69)
!89 = distinct !{!89, !66, !90}
!90 = !DILocation(line: 72, column: 46, scope: !67)
!91 = !DILocation(line: 68, column: 1, scope: !44)
!92 = !DILocation(line: 68, column: 30, scope: !44)
!93 = !DILocation(line: 75, column: 1, scope: !29)
!94 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 77, type: !95, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !100)
!95 = !DISubroutineType(types: !96)
!96 = !{!15, !15, !97}
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!100 = !{!101, !102, !103, !104, !105, !106}
!101 = !DILocalVariable(name: "argc", arg: 1, scope: !94, file: !1, line: 77, type: !15)
!102 = !DILocalVariable(name: "argv", arg: 2, scope: !94, file: !1, line: 77, type: !97)
!103 = !DILocalVariable(name: "ni", scope: !94, file: !1, line: 80, type: !15)
!104 = !DILocalVariable(name: "alpha", scope: !94, file: !1, line: 83, type: !6)
!105 = !DILocalVariable(name: "A", scope: !94, file: !1, line: 84, type: !4)
!106 = !DILocalVariable(name: "B", scope: !94, file: !1, line: 85, type: !4)
!107 = !DILocation(line: 0, scope: !94)
!108 = !DILocation(line: 84, column: 3, scope: !94)
!109 = !DILocation(line: 85, column: 3, scope: !94)
!110 = !DILocation(line: 88, column: 26, scope: !94)
!111 = !DILocation(line: 88, column: 46, scope: !94)
!112 = !DILocalVariable(name: "ni", arg: 1, scope: !113, file: !1, line: 23, type: !15)
!113 = distinct !DISubprogram(name: "init_array", scope: !1, file: !1, line: 23, type: !114, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !117)
!114 = !DISubroutineType(types: !115)
!115 = !{null, !15, !116, !32, !32}
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!117 = !{!112, !118, !119, !120, !121, !122}
!118 = !DILocalVariable(name: "alpha", arg: 2, scope: !113, file: !1, line: 24, type: !116)
!119 = !DILocalVariable(name: "A", arg: 3, scope: !113, file: !1, line: 25, type: !32)
!120 = !DILocalVariable(name: "B", arg: 4, scope: !113, file: !1, line: 26, type: !32)
!121 = !DILocalVariable(name: "i", scope: !113, file: !1, line: 28, type: !15)
!122 = !DILocalVariable(name: "j", scope: !113, file: !1, line: 28, type: !15)
!123 = !DILocation(line: 0, scope: !113, inlinedAt: !124)
!124 = distinct !DILocation(line: 88, column: 3, scope: !94)
!125 = !DILocation(line: 31, column: 3, scope: !126, inlinedAt: !124)
!126 = distinct !DILexicalBlock(scope: !113, file: !1, line: 31, column: 3)
!127 = !DILocation(line: 0, scope: !128, inlinedAt: !124)
!128 = distinct !DILexicalBlock(scope: !129, file: !1, line: 33, column: 5)
!129 = distinct !DILexicalBlock(scope: !130, file: !1, line: 32, column: 5)
!130 = distinct !DILexicalBlock(scope: !131, file: !1, line: 32, column: 5)
!131 = distinct !DILexicalBlock(scope: !126, file: !1, line: 31, column: 3)
!132 = !DILocation(line: 32, column: 5, scope: !130, inlinedAt: !124)
!133 = !DILocation(line: 34, column: 33, scope: !128, inlinedAt: !124)
!134 = !DILocation(line: 34, column: 31, scope: !128, inlinedAt: !124)
!135 = !DILocation(line: 34, column: 36, scope: !128, inlinedAt: !124)
!136 = !DILocation(line: 34, column: 7, scope: !128, inlinedAt: !124)
!137 = !DILocation(line: 34, column: 15, scope: !128, inlinedAt: !124)
!138 = !DILocation(line: 35, column: 7, scope: !128, inlinedAt: !124)
!139 = !DILocation(line: 35, column: 15, scope: !128, inlinedAt: !124)
!140 = !DILocation(line: 32, column: 26, scope: !129, inlinedAt: !124)
!141 = !DILocation(line: 32, column: 19, scope: !129, inlinedAt: !124)
!142 = distinct !{!142, !132, !143}
!143 = !DILocation(line: 36, column: 5, scope: !130, inlinedAt: !124)
!144 = !DILocation(line: 31, column: 24, scope: !131, inlinedAt: !124)
!145 = !DILocation(line: 31, column: 17, scope: !131, inlinedAt: !124)
!146 = distinct !{!146, !125, !147}
!147 = !DILocation(line: 36, column: 5, scope: !126, inlinedAt: !124)
!148 = !DILocation(line: 91, column: 3, scope: !94)
!149 = !DILocation(line: 94, column: 3, scope: !94)
!150 = !DILocation(line: 97, column: 3, scope: !94)
!151 = !DILocation(line: 98, column: 3, scope: !94)
!152 = !DILocation(line: 102, column: 3, scope: !153)
!153 = distinct !DILexicalBlock(scope: !94, file: !1, line: 102, column: 3)
!154 = !{!59, !59, i64 0}
!155 = !DILocation(line: 102, column: 3, scope: !94)
!156 = !DILocalVariable(name: "i", scope: !157, file: !1, line: 44, type: !15)
!157 = distinct !DISubprogram(name: "print_array", scope: !1, file: !1, line: 41, type: !158, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !160)
!158 = !DISubroutineType(types: !159)
!159 = !{null, !15, !32}
!160 = !{!161, !162, !156, !163}
!161 = !DILocalVariable(name: "ni", arg: 1, scope: !157, file: !1, line: 41, type: !15)
!162 = !DILocalVariable(name: "B", arg: 2, scope: !157, file: !1, line: 42, type: !32)
!163 = !DILocalVariable(name: "j", scope: !157, file: !1, line: 44, type: !15)
!164 = !DILocation(line: 0, scope: !157, inlinedAt: !165)
!165 = distinct !DILocation(line: 102, column: 3, scope: !153)
!166 = !DILocation(line: 0, scope: !167, inlinedAt: !165)
!167 = distinct !DILexicalBlock(scope: !168, file: !1, line: 50, column: 11)
!168 = distinct !DILexicalBlock(scope: !169, file: !1, line: 48, column: 5)
!169 = distinct !DILexicalBlock(scope: !170, file: !1, line: 47, column: 5)
!170 = distinct !DILexicalBlock(scope: !171, file: !1, line: 47, column: 5)
!171 = distinct !DILexicalBlock(scope: !172, file: !1, line: 46, column: 3)
!172 = distinct !DILexicalBlock(scope: !157, file: !1, line: 46, column: 3)
!173 = !DILocation(line: 47, column: 5, scope: !170, inlinedAt: !165)
!174 = !DILocation(line: 49, column: 15, scope: !168, inlinedAt: !165)
!175 = !DILocation(line: 49, column: 45, scope: !168, inlinedAt: !165)
!176 = !DILocation(line: 49, column: 7, scope: !168, inlinedAt: !165)
!177 = !DILocation(line: 50, column: 19, scope: !167, inlinedAt: !165)
!178 = !DILocation(line: 50, column: 24, scope: !167, inlinedAt: !165)
!179 = !DILocation(line: 50, column: 29, scope: !167, inlinedAt: !165)
!180 = !DILocation(line: 50, column: 11, scope: !168, inlinedAt: !165)
!181 = !DILocation(line: 51, column: 17, scope: !167, inlinedAt: !165)
!182 = !DILocation(line: 51, column: 9, scope: !167, inlinedAt: !165)
!183 = !DILocation(line: 47, column: 26, scope: !169, inlinedAt: !165)
!184 = !DILocation(line: 47, column: 19, scope: !169, inlinedAt: !165)
!185 = distinct !{!185, !173, !186}
!186 = !DILocation(line: 52, column: 5, scope: !170, inlinedAt: !165)
!187 = !DILocation(line: 46, column: 24, scope: !171, inlinedAt: !165)
!188 = !DILocation(line: 46, column: 17, scope: !171, inlinedAt: !165)
!189 = !DILocation(line: 46, column: 3, scope: !172, inlinedAt: !165)
!190 = distinct !{!190, !189, !191}
!191 = !DILocation(line: 52, column: 5, scope: !172, inlinedAt: !165)
!192 = !DILocation(line: 53, column: 11, scope: !157, inlinedAt: !165)
!193 = !DILocation(line: 53, column: 3, scope: !157, inlinedAt: !165)
!194 = !DILocation(line: 105, column: 3, scope: !94)
!195 = !DILocation(line: 106, column: 3, scope: !94)
!196 = !DILocation(line: 108, column: 3, scope: !94)
