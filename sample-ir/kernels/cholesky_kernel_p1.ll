; ModuleID = '../test/poly_gpu/outputs_kernel_largedataset_v2/ir/cholesky.ll'
source_filename = "../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/cholesky/cholesky.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = external hidden unnamed_addr constant [99 x i8], align 1
@1 = external hidden unnamed_addr constant %struct.ident_t, align 8

; Function Attrs: nounwind uwtable
define hidden void @kernel_p1(i32 %0, [2000 x double]* %1, double* %2) #0 !dbg !32 {
  %4 = alloca i32, align 4
  %5 = alloca [2000 x double]*, align 8
  %6 = alloca double*, align 8
  %7 = alloca %struct.ident_t, align 8
  %8 = bitcast %struct.ident_t* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %8, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @1 to i8*), i64 16, i1 false)
  call void @llvm.dbg.value(metadata i32 %0, metadata !37, metadata !DIExpression()), !dbg !41
  store i32 %0, i32* %4, align 4, !tbaa !42
  call void @llvm.dbg.value(metadata [2000 x double]* %1, metadata !38, metadata !DIExpression()), !dbg !41
  store [2000 x double]* %1, [2000 x double]** %5, align 8, !tbaa !46
  call void @llvm.dbg.value(metadata double* %2, metadata !39, metadata !DIExpression()), !dbg !41
  store double* %2, double** %6, align 8, !tbaa !46
  %9 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %7, i64 0, i32 4, !dbg !48
  store i8* getelementptr inbounds ([99 x i8], [99 x i8]* @0, i64 0, i64 0), i8** %9, align 8, !dbg !48, !tbaa !49
  call void @llvm.dbg.value(metadata i32* %4, metadata !37, metadata !DIExpression(DW_OP_deref)), !dbg !41
  call void @llvm.dbg.value(metadata [2000 x double]** %5, metadata !38, metadata !DIExpression(DW_OP_deref)), !dbg !41
  call void @llvm.dbg.value(metadata double** %6, metadata !39, metadata !DIExpression(DW_OP_deref)), !dbg !41
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %7, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [2000 x double]**, double**)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %4, [2000 x double]** nonnull %5, double** nonnull %6) #4, !dbg !48
  ret void, !dbg !51
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: norecurse nounwind uwtable
declare hidden void @.omp_outlined.(i32* noalias nocapture readonly, i32* noalias nocapture readnone, i32* nocapture readonly dereferenceable(4), [2000 x double]** nocapture readonly dereferenceable(8), double** nocapture readonly dereferenceable(8)) #2

declare !callback !52 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr

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
!1 = !DIFile(filename: "../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/cholesky/cholesky.c", directory: "/WAVE/users/unix/klor/ycho_lab/kimsong_lor/autotuning_tools/scripts")
!2 = !{}
!3 = !{!4, !8, !9, !10, !15, !21, !18, !24}
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
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 128000, elements: !23)
!23 = !{!14}
!24 = !DISubprogram(name: "free", scope: !25, file: !25, line: 563, type: !26, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!25 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!26 = !DISubroutineType(types: !27)
!27 = !{null, !18}
!28 = !{i32 7, !"Dwarf Version", i32 4}
!29 = !{i32 2, !"Debug Info Version", i32 3}
!30 = !{i32 1, !"wchar_size", i32 4}
!31 = !{!"clang version 10.0.1 (https://github.com/conda-forge/clangdev-feedstock 2a1fb6e8a1c6dc6e585535457c24f0295d90c8d2)"}
!32 = distinct !DISubprogram(name: "kernel_p1", scope: !1, file: !1, line: 54, type: !33, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !36)
!33 = !DISubroutineType(types: !34)
!34 = !{null, !20, !21, !35}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!36 = !{!37, !38, !39, !40}
!37 = !DILocalVariable(name: "n", arg: 1, scope: !32, file: !1, line: 54, type: !20)
!38 = !DILocalVariable(name: "A", arg: 2, scope: !32, file: !1, line: 54, type: !21)
!39 = !DILocalVariable(name: "p", arg: 3, scope: !32, file: !1, line: 54, type: !35)
!40 = !DILocalVariable(name: "x", scope: !32, file: !1, line: 56, type: !12)
!41 = !DILocation(line: 0, scope: !32)
!42 = !{!43, !43, i64 0}
!43 = !{!"int", !44, i64 0}
!44 = !{!"omnipotent char", !45, i64 0}
!45 = !{!"Simple C/C++ TBAA"}
!46 = !{!47, !47, i64 0}
!47 = !{!"any pointer", !44, i64 0}
!48 = !DILocation(line: 57, column: 1, scope: !32)
!49 = !{!50, !47, i64 16}
!50 = !{!"ident_t", !43, i64 0, !43, i64 4, !43, i64 8, !43, i64 12, !47, i64 16}
!51 = !DILocation(line: 65, column: 1, scope: !32)
!52 = !{!53}
!53 = !{i64 2, i64 -1, i64 -1, i1 true}
