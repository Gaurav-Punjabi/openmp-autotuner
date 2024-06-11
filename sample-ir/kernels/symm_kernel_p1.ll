; ModuleID = '../test/poly_gpu/outputs_kernel_largedataset_v2/ir/symm.ll'
source_filename = "../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/symm/symm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = external hidden unnamed_addr constant %struct.ident_t, align 8
@1 = external hidden unnamed_addr constant [91 x i8], align 1

; Function Attrs: nounwind uwtable
define hidden void @kernel_p1(i32 %0, i32 %1, double %2, double %3, [2000 x double]* %4, [2000 x double]* %5, [2000 x double]* %6) #0 !dbg !29 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca [2000 x double]*, align 8
  %13 = alloca [2000 x double]*, align 8
  %14 = alloca [2000 x double]*, align 8
  %15 = alloca %struct.ident_t, align 8
  %16 = bitcast %struct.ident_t* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %16, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @0 to i8*), i64 16, i1 false)
  call void @llvm.dbg.value(metadata i32 %0, metadata !36, metadata !DIExpression()), !dbg !47
  store i32 %0, i32* %8, align 4, !tbaa !48
  call void @llvm.dbg.value(metadata i32 %1, metadata !37, metadata !DIExpression()), !dbg !47
  store i32 %1, i32* %9, align 4, !tbaa !48
  call void @llvm.dbg.value(metadata double %2, metadata !38, metadata !DIExpression()), !dbg !47
  store double %2, double* %10, align 8, !tbaa !52
  call void @llvm.dbg.value(metadata double %3, metadata !39, metadata !DIExpression()), !dbg !47
  store double %3, double* %11, align 8, !tbaa !52
  call void @llvm.dbg.value(metadata [2000 x double]* %4, metadata !40, metadata !DIExpression()), !dbg !47
  store [2000 x double]* %4, [2000 x double]** %12, align 8, !tbaa !54
  call void @llvm.dbg.value(metadata [2000 x double]* %5, metadata !41, metadata !DIExpression()), !dbg !47
  store [2000 x double]* %5, [2000 x double]** %13, align 8, !tbaa !54
  call void @llvm.dbg.value(metadata [2000 x double]* %6, metadata !42, metadata !DIExpression()), !dbg !47
  store [2000 x double]* %6, [2000 x double]** %14, align 8, !tbaa !54
  %17 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %15, i64 0, i32 4, !dbg !56
  store i8* getelementptr inbounds ([91 x i8], [91 x i8]* @1, i64 0, i64 0), i8** %17, align 8, !dbg !56, !tbaa !57
  call void @llvm.dbg.value(metadata i32* %8, metadata !36, metadata !DIExpression(DW_OP_deref)), !dbg !47
  call void @llvm.dbg.value(metadata i32* %9, metadata !37, metadata !DIExpression(DW_OP_deref)), !dbg !47
  call void @llvm.dbg.value(metadata double* %10, metadata !38, metadata !DIExpression(DW_OP_deref)), !dbg !47
  call void @llvm.dbg.value(metadata double* %11, metadata !39, metadata !DIExpression(DW_OP_deref)), !dbg !47
  call void @llvm.dbg.value(metadata [2000 x double]** %12, metadata !40, metadata !DIExpression(DW_OP_deref)), !dbg !47
  call void @llvm.dbg.value(metadata [2000 x double]** %13, metadata !41, metadata !DIExpression(DW_OP_deref)), !dbg !47
  call void @llvm.dbg.value(metadata [2000 x double]** %14, metadata !42, metadata !DIExpression(DW_OP_deref)), !dbg !47
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %15, i32 7, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, [2000 x double]**, double*, [2000 x double]**, [2000 x double]**, double*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %8, i32* nonnull %9, [2000 x double]** nonnull %12, double* nonnull %10, [2000 x double]** nonnull %13, [2000 x double]** nonnull %14, double* nonnull %11) #4, !dbg !56
  ret void, !dbg !59
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: norecurse nounwind uwtable
declare hidden void @.omp_outlined.(i32* noalias nocapture readonly, i32* noalias nocapture readnone, i32* nocapture readonly dereferenceable(4), i32* nocapture readonly dereferenceable(4), [2000 x double]** nocapture readonly dereferenceable(8), double* nocapture readonly dereferenceable(8), [2000 x double]** nocapture readonly dereferenceable(8), [2000 x double]** nocapture readonly dereferenceable(8), double* nocapture readonly dereferenceable(8)) #2

declare !callback !60 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!25, !26, !27}
!llvm.ident = !{!28}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 (https://github.com/conda-forge/clangdev-feedstock 2a1fb6e8a1c6dc6e585535457c24f0295d90c8d2)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/symm/symm.c", directory: "/WAVE/users/unix/klor/ycho_lab/kimsong_lor/autotuning_tools/scripts")
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
!29 = distinct !DISubprogram(name: "kernel_p1", scope: !1, file: !1, line: 64, type: !30, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !35)
!30 = !DISubroutineType(types: !31)
!31 = !{null, !15, !15, !6, !6, !32, !32, !32}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 128000, elements: !34)
!34 = !{!8}
!35 = !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46}
!36 = !DILocalVariable(name: "ni", arg: 1, scope: !29, file: !1, line: 64, type: !15)
!37 = !DILocalVariable(name: "nj", arg: 2, scope: !29, file: !1, line: 64, type: !15)
!38 = !DILocalVariable(name: "alpha", arg: 3, scope: !29, file: !1, line: 65, type: !6)
!39 = !DILocalVariable(name: "beta", arg: 4, scope: !29, file: !1, line: 66, type: !6)
!40 = !DILocalVariable(name: "C", arg: 5, scope: !29, file: !1, line: 67, type: !32)
!41 = !DILocalVariable(name: "A", arg: 6, scope: !29, file: !1, line: 68, type: !32)
!42 = !DILocalVariable(name: "B", arg: 7, scope: !29, file: !1, line: 69, type: !32)
!43 = !DILocalVariable(name: "i", scope: !29, file: !1, line: 71, type: !15)
!44 = !DILocalVariable(name: "j", scope: !29, file: !1, line: 71, type: !15)
!45 = !DILocalVariable(name: "k", scope: !29, file: !1, line: 71, type: !15)
!46 = !DILocalVariable(name: "acc", scope: !29, file: !1, line: 72, type: !6)
!47 = !DILocation(line: 0, scope: !29)
!48 = !{!49, !49, i64 0}
!49 = !{!"int", !50, i64 0}
!50 = !{!"omnipotent char", !51, i64 0}
!51 = !{!"Simple C/C++ TBAA"}
!52 = !{!53, !53, i64 0}
!53 = !{!"double", !50, i64 0}
!54 = !{!55, !55, i64 0}
!55 = !{!"any pointer", !50, i64 0}
!56 = !DILocation(line: 74, column: 1, scope: !29)
!57 = !{!58, !55, i64 16}
!58 = !{!"ident_t", !49, i64 0, !49, i64 4, !49, i64 8, !49, i64 12, !55, i64 16}
!59 = !DILocation(line: 91, column: 1, scope: !29)
!60 = !{!61}
!61 = !{i64 2, i64 -1, i64 -1, i1 true}
