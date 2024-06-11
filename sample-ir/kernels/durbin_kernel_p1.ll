; ModuleID = '../test/poly_gpu/outputs_kernel_largedataset_v2/ir/durbin.ll'
source_filename = "../test/poly_gpu/inputs_kernel_splits/linear-algebra/solvers/durbin/durbin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = external hidden unnamed_addr constant %struct.ident_t, align 8
@1 = external hidden unnamed_addr constant [95 x i8], align 1

; Function Attrs: nounwind uwtable
define hidden void @kernel_p1(i32 %0, [8000 x double]* %1, [8000 x double]* %2, double* %3, double* %4, double* %5, double* %6) #0 !dbg !32 {
  %8 = alloca i32, align 4
  %9 = alloca [8000 x double]*, align 8
  %10 = alloca [8000 x double]*, align 8
  %11 = alloca double*, align 8
  %12 = alloca double*, align 8
  %13 = alloca double*, align 8
  %14 = alloca double*, align 8
  %15 = alloca %struct.ident_t, align 8
  %16 = bitcast %struct.ident_t* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %16, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @0 to i8*), i64 16, i1 false)
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
  store i8* getelementptr inbounds ([95 x i8], [95 x i8]* @1, i64 0, i64 0), i8** %22, align 8, !dbg !62, !tbaa !63
  call void @llvm.dbg.value(metadata i32* %8, metadata !37, metadata !DIExpression(DW_OP_deref)), !dbg !46
  call void @llvm.dbg.value(metadata [8000 x double]** %9, metadata !38, metadata !DIExpression(DW_OP_deref)), !dbg !46
  call void @llvm.dbg.value(metadata [8000 x double]** %10, metadata !39, metadata !DIExpression(DW_OP_deref)), !dbg !46
  call void @llvm.dbg.value(metadata double** %11, metadata !40, metadata !DIExpression(DW_OP_deref)), !dbg !46
  call void @llvm.dbg.value(metadata double** %12, metadata !41, metadata !DIExpression(DW_OP_deref)), !dbg !46
  call void @llvm.dbg.value(metadata double** %13, metadata !42, metadata !DIExpression(DW_OP_deref)), !dbg !46
  call void @llvm.dbg.value(metadata double** %14, metadata !43, metadata !DIExpression(DW_OP_deref)), !dbg !46
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %15, i32 7, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, double**, double**, [8000 x double]**, double**, [8000 x double]**, double**)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %8, double** nonnull %12, double** nonnull %11, [8000 x double]** nonnull %10, double** nonnull %13, [8000 x double]** nonnull %9, double** nonnull %14) #4, !dbg !62
  ret void, !dbg !65
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: norecurse nounwind uwtable
declare hidden void @.omp_outlined.(i32* noalias nocapture readonly, i32* noalias nocapture readnone, i32* nocapture readonly dereferenceable(4), double** nocapture readonly dereferenceable(8), double** nocapture readonly dereferenceable(8), [8000 x double]** nocapture readonly dereferenceable(8), double** nocapture readonly dereferenceable(8), [8000 x double]** nocapture readonly dereferenceable(8), double** nocapture readonly dereferenceable(8)) #2

declare !callback !66 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

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
!66 = !{!67}
!67 = !{i64 2, i64 -1, i64 -1, i1 true}
