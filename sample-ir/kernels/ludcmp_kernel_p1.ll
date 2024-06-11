; ModuleID = '../test/poly_gpu/outputs_kernel_largedataset_v2/ir/ludcmp.ll'
source_filename = "../test/poly_gpu/inputs_kernel_splits/linear-algebra/solvers/ludcmp/ludcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = external hidden unnamed_addr constant [95 x i8], align 1
@1 = external hidden unnamed_addr constant %struct.ident_t, align 8

; Function Attrs: nounwind uwtable
define hidden void @kernel_p1(i32 %0, [2001 x double]* %1, double* nocapture %2) #0 !dbg !32 {
  %4 = alloca i32, align 4
  %5 = alloca [2001 x double]*, align 8
  %6 = alloca %struct.ident_t, align 8
  %7 = bitcast %struct.ident_t* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %7, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @1 to i8*), i64 16, i1 false)
  call void @llvm.dbg.value(metadata i32 %0, metadata !37, metadata !DIExpression()), !dbg !40
  store i32 %0, i32* %4, align 4, !tbaa !41
  call void @llvm.dbg.value(metadata [2001 x double]* %1, metadata !38, metadata !DIExpression()), !dbg !40
  store [2001 x double]* %1, [2001 x double]** %5, align 8, !tbaa !45
  call void @llvm.dbg.value(metadata double* %2, metadata !39, metadata !DIExpression()), !dbg !40
  %8 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %6, i64 0, i32 4, !dbg !47
  store i8* getelementptr inbounds ([95 x i8], [95 x i8]* @0, i64 0, i64 0), i8** %8, align 8, !dbg !47, !tbaa !48
  call void @llvm.dbg.value(metadata i32* %4, metadata !37, metadata !DIExpression(DW_OP_deref)), !dbg !40
  call void @llvm.dbg.value(metadata [2001 x double]** %5, metadata !38, metadata !DIExpression(DW_OP_deref)), !dbg !40
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %6, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [2001 x double]**)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %4, [2001 x double]** nonnull %5) #4, !dbg !47
  store double 1.000000e+00, double* %2, align 8, !dbg !50, !tbaa !51
  ret void, !dbg !53
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: norecurse nounwind uwtable
declare hidden void @.omp_outlined.(i32* noalias nocapture readonly, i32* noalias nocapture readnone, i32* nocapture readonly dereferenceable(4), [2001 x double]** nocapture readonly dereferenceable(8)) #2

declare !callback !54 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr

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
!54 = !{!55}
!55 = !{i64 2, i64 -1, i64 -1, i1 true}
