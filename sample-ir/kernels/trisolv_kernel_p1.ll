; ModuleID = '../test/poly_gpu/outputs_kernel_largedataset_v2/ir/trisolv.ll'
source_filename = "../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/trisolv/trisolv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = external hidden unnamed_addr constant [97 x i8], align 1
@1 = external hidden unnamed_addr constant %struct.ident_t, align 8

; Function Attrs: nounwind uwtable
define hidden void @kernel_p1(i32 %0, [8000 x double]* %1, double* %2, double* %3) #0 !dbg !32 {
  %5 = alloca i32, align 4
  %6 = alloca [8000 x double]*, align 8
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca %struct.ident_t, align 8
  %10 = bitcast %struct.ident_t* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %10, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @1 to i8*), i64 16, i1 false)
  call void @llvm.dbg.value(metadata i32 %0, metadata !37, metadata !DIExpression()), !dbg !43
  store i32 %0, i32* %5, align 4, !tbaa !44
  call void @llvm.dbg.value(metadata [8000 x double]* %1, metadata !38, metadata !DIExpression()), !dbg !43
  store [8000 x double]* %1, [8000 x double]** %6, align 8, !tbaa !48
  call void @llvm.dbg.value(metadata double* %2, metadata !39, metadata !DIExpression()), !dbg !43
  store double* %2, double** %7, align 8, !tbaa !48
  call void @llvm.dbg.value(metadata double* %3, metadata !40, metadata !DIExpression()), !dbg !43
  store double* %3, double** %8, align 8, !tbaa !48
  %11 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %9, i64 0, i32 4, !dbg !50
  store i8* getelementptr inbounds ([97 x i8], [97 x i8]* @0, i64 0, i64 0), i8** %11, align 8, !dbg !50, !tbaa !51
  call void @llvm.dbg.value(metadata i32* %5, metadata !37, metadata !DIExpression(DW_OP_deref)), !dbg !43
  call void @llvm.dbg.value(metadata [8000 x double]** %6, metadata !38, metadata !DIExpression(DW_OP_deref)), !dbg !43
  call void @llvm.dbg.value(metadata double** %7, metadata !39, metadata !DIExpression(DW_OP_deref)), !dbg !43
  call void @llvm.dbg.value(metadata double** %8, metadata !40, metadata !DIExpression(DW_OP_deref)), !dbg !43
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %9, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, double**, double**, [8000 x double]**)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %5, double** nonnull %7, double** nonnull %8, [8000 x double]** nonnull %6) #4, !dbg !50
  ret void, !dbg !53
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: norecurse nounwind uwtable
declare hidden void @.omp_outlined.(i32* noalias nocapture readonly, i32* noalias nocapture readnone, i32* nocapture readonly dereferenceable(4), double** nocapture readonly dereferenceable(8), double** nocapture readonly dereferenceable(8), [8000 x double]** nocapture readonly dereferenceable(8)) #2

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
!1 = !DIFile(filename: "../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/trisolv/trisolv.c", directory: "/WAVE/users/unix/klor/ycho_lab/kimsong_lor/autotuning_tools/scripts")
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
!32 = distinct !DISubprogram(name: "kernel_p1", scope: !1, file: !1, line: 56, type: !33, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !36)
!33 = !DISubroutineType(types: !34)
!34 = !{null, !15, !16, !35, !35}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!36 = !{!37, !38, !39, !40, !41, !42}
!37 = !DILocalVariable(name: "n", arg: 1, scope: !32, file: !1, line: 56, type: !15)
!38 = !DILocalVariable(name: "A", arg: 2, scope: !32, file: !1, line: 57, type: !16)
!39 = !DILocalVariable(name: "x", arg: 3, scope: !32, file: !1, line: 58, type: !35)
!40 = !DILocalVariable(name: "c", arg: 4, scope: !32, file: !1, line: 59, type: !35)
!41 = !DILocalVariable(name: "i", scope: !32, file: !1, line: 61, type: !15)
!42 = !DILocalVariable(name: "j", scope: !32, file: !1, line: 61, type: !15)
!43 = !DILocation(line: 0, scope: !32)
!44 = !{!45, !45, i64 0}
!45 = !{!"int", !46, i64 0}
!46 = !{!"omnipotent char", !47, i64 0}
!47 = !{!"Simple C/C++ TBAA"}
!48 = !{!49, !49, i64 0}
!49 = !{!"any pointer", !46, i64 0}
!50 = !DILocation(line: 63, column: 1, scope: !32)
!51 = !{!52, !49, i64 16}
!52 = !{!"ident_t", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !49, i64 16}
!53 = !DILocation(line: 72, column: 1, scope: !32)
!54 = !{!55}
!55 = !{i64 2, i64 -1, i64 -1, i1 true}
