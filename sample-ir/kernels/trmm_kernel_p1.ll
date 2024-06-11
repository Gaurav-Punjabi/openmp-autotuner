; ModuleID = '../test/poly_gpu/outputs_kernel_largedataset_v2/ir/trmm.ll'
source_filename = "../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/trmm/trmm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = external hidden unnamed_addr constant %struct.ident_t, align 8
@1 = external hidden unnamed_addr constant [91 x i8], align 1
@2 = external hidden unnamed_addr constant [92 x i8], align 1

; Function Attrs: nounwind uwtable
define hidden void @kernel_p1(i32 %0, double %1, [2000 x double]* nocapture readonly %2, [2000 x double]* nocapture %3) #0 !dbg !29 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ident_t, align 8
  %10 = bitcast %struct.ident_t* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %10, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @0 to i8*), i64 16, i1 false)
  %11 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %9, i64 0, i32 4
  store i8* getelementptr inbounds ([91 x i8], [91 x i8]* @1, i64 0, i64 0), i8** %11, align 8, !tbaa !54
  %12 = call i32 @__kmpc_global_thread_num(%struct.ident_t* nonnull %9) #3
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
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %16) #3, !dbg !63
  call void @llvm.dbg.value(metadata i32 0, metadata !48, metadata !DIExpression()), !dbg !61
  store i32 0, i32* %5, align 4, !dbg !64, !tbaa !65
  %17 = bitcast i32* %6 to i8*, !dbg !63
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %17) #3, !dbg !63
  call void @llvm.dbg.value(metadata i32 %13, metadata !49, metadata !DIExpression()), !dbg !61
  store i32 %13, i32* %6, align 4, !dbg !64, !tbaa !65
  %18 = bitcast i32* %7 to i8*, !dbg !63
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %18) #3, !dbg !63
  call void @llvm.dbg.value(metadata i32 1, metadata !50, metadata !DIExpression()), !dbg !61
  store i32 1, i32* %7, align 4, !dbg !64, !tbaa !65
  %19 = bitcast i32* %8 to i8*, !dbg !63
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %19) #3, !dbg !63
  call void @llvm.dbg.value(metadata i32 0, metadata !51, metadata !DIExpression()), !dbg !61
  store i32 0, i32* %8, align 4, !dbg !64, !tbaa !65
  store i8* getelementptr inbounds ([91 x i8], [91 x i8]* @1, i64 0, i64 0), i8** %11, align 8, !dbg !63, !tbaa !54
  call void @llvm.dbg.value(metadata i32* %5, metadata !48, metadata !DIExpression(DW_OP_deref)), !dbg !61
  call void @llvm.dbg.value(metadata i32* %6, metadata !49, metadata !DIExpression(DW_OP_deref)), !dbg !61
  call void @llvm.dbg.value(metadata i32* %7, metadata !50, metadata !DIExpression(DW_OP_deref)), !dbg !61
  call void @llvm.dbg.value(metadata i32* %8, metadata !51, metadata !DIExpression(DW_OP_deref)), !dbg !61
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull %9, i32 %12, i32 34, i32* nonnull %8, i32* nonnull %5, i32* nonnull %6, i32* nonnull %7, i32 1, i32 1) #3, !dbg !63
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

30:                                               ; preds = %82, %25
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

68:                                               ; preds = %64, %42
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

79:                                               ; preds = %71, %68
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
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull %9, i32 %12) #3, !dbg !91
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %19) #3, !dbg !91
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %18) #3, !dbg !91
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %17) #3, !dbg !91
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %16) #3, !dbg !91
  br label %86, !dbg !91

86:                                               ; preds = %85, %4
  store i8* getelementptr inbounds ([91 x i8], [91 x i8]* @1, i64 0, i64 0), i8** %11, align 8, !dbg !92, !tbaa !54
  call void @__kmpc_barrier(%struct.ident_t* nonnull %9, i32 %12) #3, !dbg !92
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

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }

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
