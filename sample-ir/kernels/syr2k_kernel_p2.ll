; ModuleID = '../test/poly_gpu/outputs_kernel_largedataset_v2/ir/syr2k.ll'
source_filename = "../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/syr2k/syr2k.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = external hidden unnamed_addr constant %struct.ident_t, align 8
@1 = external hidden unnamed_addr constant [93 x i8], align 1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #0

declare !callback !29 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr

; Function Attrs: nounwind uwtable
define hidden void @kernel_p2(i32 %0, i32 %1, double %2, [2000 x double]* %3, [2000 x double]* %4, [2000 x double]* %5) #1 !dbg !31 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double, align 8
  %10 = alloca [2000 x double]*, align 8
  %11 = alloca [2000 x double]*, align 8
  %12 = alloca [2000 x double]*, align 8
  %13 = alloca %struct.ident_t, align 8
  %14 = bitcast %struct.ident_t* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %14, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @0 to i8*), i64 16, i1 false)
  call void @llvm.dbg.value(metadata i32 %0, metadata !38, metadata !DIExpression()), !dbg !44
  store i32 %0, i32* %7, align 4, !tbaa !45
  call void @llvm.dbg.value(metadata i32 %1, metadata !39, metadata !DIExpression()), !dbg !44
  store i32 %1, i32* %8, align 4, !tbaa !45
  call void @llvm.dbg.value(metadata double %2, metadata !40, metadata !DIExpression()), !dbg !44
  store double %2, double* %9, align 8, !tbaa !49
  call void @llvm.dbg.value(metadata [2000 x double]* %3, metadata !41, metadata !DIExpression()), !dbg !44
  store [2000 x double]* %3, [2000 x double]** %10, align 8, !tbaa !51
  call void @llvm.dbg.value(metadata [2000 x double]* %4, metadata !42, metadata !DIExpression()), !dbg !44
  store [2000 x double]* %4, [2000 x double]** %11, align 8, !tbaa !51
  call void @llvm.dbg.value(metadata [2000 x double]* %5, metadata !43, metadata !DIExpression()), !dbg !44
  store [2000 x double]* %5, [2000 x double]** %12, align 8, !tbaa !51
  %15 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %13, i64 0, i32 4, !dbg !53
  store i8* getelementptr inbounds ([93 x i8], [93 x i8]* @1, i64 0, i64 0), i8** %15, align 8, !dbg !53, !tbaa !54
  call void @llvm.dbg.value(metadata i32* %7, metadata !38, metadata !DIExpression(DW_OP_deref)), !dbg !44
  call void @llvm.dbg.value(metadata i32* %8, metadata !39, metadata !DIExpression(DW_OP_deref)), !dbg !44
  call void @llvm.dbg.value(metadata double* %9, metadata !40, metadata !DIExpression(DW_OP_deref)), !dbg !44
  call void @llvm.dbg.value(metadata [2000 x double]** %10, metadata !41, metadata !DIExpression(DW_OP_deref)), !dbg !44
  call void @llvm.dbg.value(metadata [2000 x double]** %11, metadata !42, metadata !DIExpression(DW_OP_deref)), !dbg !44
  call void @llvm.dbg.value(metadata [2000 x double]** %12, metadata !43, metadata !DIExpression(DW_OP_deref)), !dbg !44
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %13, i32 6, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, [2000 x double]**, double*, [2000 x double]**, [2000 x double]**)* @.omp_outlined..2 to void (i32*, i32*, ...)*), i32* nonnull %7, i32* nonnull %8, [2000 x double]** nonnull %10, double* nonnull %9, [2000 x double]** nonnull %11, [2000 x double]** nonnull %12) #4, !dbg !53
  ret void, !dbg !56
}

; Function Attrs: norecurse nounwind uwtable
declare hidden void @.omp_outlined..2(i32* noalias nocapture readonly, i32* noalias nocapture readnone, i32* nocapture readonly dereferenceable(4), i32* nocapture readonly dereferenceable(4), [2000 x double]** nocapture readonly dereferenceable(8), double* nocapture readonly dereferenceable(8), [2000 x double]** nocapture readonly dereferenceable(8), [2000 x double]** nocapture readonly dereferenceable(8)) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { argmemonly nounwind willreturn }
attributes #1 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

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
!29 = !{!30}
!30 = !{i64 2, i64 -1, i64 -1, i1 true}
!31 = distinct !DISubprogram(name: "kernel_p2", scope: !1, file: !1, line: 70, type: !32, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !37)
!32 = !DISubroutineType(types: !33)
!33 = !{null, !20, !20, !12, !34, !34, !34}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 128000, elements: !36)
!36 = !{!14}
!37 = !{!38, !39, !40, !41, !42, !43}
!38 = !DILocalVariable(name: "ni", arg: 1, scope: !31, file: !1, line: 70, type: !20)
!39 = !DILocalVariable(name: "nj", arg: 2, scope: !31, file: !1, line: 70, type: !20)
!40 = !DILocalVariable(name: "alpha", arg: 3, scope: !31, file: !1, line: 70, type: !12)
!41 = !DILocalVariable(name: "C", arg: 4, scope: !31, file: !1, line: 70, type: !34)
!42 = !DILocalVariable(name: "A", arg: 5, scope: !31, file: !1, line: 70, type: !34)
!43 = !DILocalVariable(name: "B", arg: 6, scope: !31, file: !1, line: 70, type: !34)
!44 = !DILocation(line: 0, scope: !31)
!45 = !{!46, !46, i64 0}
!46 = !{!"int", !47, i64 0}
!47 = !{!"omnipotent char", !48, i64 0}
!48 = !{!"Simple C/C++ TBAA"}
!49 = !{!50, !50, i64 0}
!50 = !{!"double", !47, i64 0}
!51 = !{!52, !52, i64 0}
!52 = !{!"any pointer", !47, i64 0}
!53 = !DILocation(line: 72, column: 1, scope: !31)
!54 = !{!55, !52, i64 16}
!55 = !{!"ident_t", !46, i64 0, !46, i64 4, !46, i64 8, !46, i64 12, !52, i64 16}
!56 = !DILocation(line: 77, column: 1, scope: !31)
