; ModuleID = '../test/poly_gpu/outputs_kernel_largedataset_v2/ir/doitgen.ll'
source_filename = "../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/doitgen/doitgen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = external hidden unnamed_addr constant [97 x i8], align 1
@1 = external hidden unnamed_addr constant %struct.ident_t, align 8

; Function Attrs: nounwind uwtable
define hidden void @kernel_p1(i32 %0, i32 %1, i32 %2, [256 x [256 x double]]* %3, [256 x double]* %4, [256 x [256 x double]]* %5) #0 !dbg !32 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [256 x [256 x double]]*, align 8
  %11 = alloca [256 x double]*, align 8
  %12 = alloca [256 x [256 x double]]*, align 8
  %13 = alloca %struct.ident_t, align 8
  %14 = bitcast %struct.ident_t* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %14, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @1 to i8*), i64 16, i1 false)
  call void @llvm.dbg.value(metadata i32 %0, metadata !39, metadata !DIExpression()), !dbg !45
  store i32 %0, i32* %7, align 4, !tbaa !46
  call void @llvm.dbg.value(metadata i32 %1, metadata !40, metadata !DIExpression()), !dbg !45
  store i32 %1, i32* %8, align 4, !tbaa !46
  call void @llvm.dbg.value(metadata i32 %2, metadata !41, metadata !DIExpression()), !dbg !45
  store i32 %2, i32* %9, align 4, !tbaa !46
  call void @llvm.dbg.value(metadata [256 x [256 x double]]* %3, metadata !42, metadata !DIExpression()), !dbg !45
  store [256 x [256 x double]]* %3, [256 x [256 x double]]** %10, align 8, !tbaa !50
  call void @llvm.dbg.value(metadata [256 x double]* %4, metadata !43, metadata !DIExpression()), !dbg !45
  store [256 x double]* %4, [256 x double]** %11, align 8, !tbaa !50
  call void @llvm.dbg.value(metadata [256 x [256 x double]]* %5, metadata !44, metadata !DIExpression()), !dbg !45
  store [256 x [256 x double]]* %5, [256 x [256 x double]]** %12, align 8, !tbaa !50
  %15 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %13, i64 0, i32 4, !dbg !52
  store i8* getelementptr inbounds ([97 x i8], [97 x i8]* @0, i64 0, i64 0), i8** %15, align 8, !dbg !52, !tbaa !53
  call void @llvm.dbg.value(metadata i32* %7, metadata !39, metadata !DIExpression(DW_OP_deref)), !dbg !45
  call void @llvm.dbg.value(metadata i32* %8, metadata !40, metadata !DIExpression(DW_OP_deref)), !dbg !45
  call void @llvm.dbg.value(metadata i32* %9, metadata !41, metadata !DIExpression(DW_OP_deref)), !dbg !45
  call void @llvm.dbg.value(metadata [256 x [256 x double]]** %10, metadata !42, metadata !DIExpression(DW_OP_deref)), !dbg !45
  call void @llvm.dbg.value(metadata [256 x double]** %11, metadata !43, metadata !DIExpression(DW_OP_deref)), !dbg !45
  call void @llvm.dbg.value(metadata [256 x [256 x double]]** %12, metadata !44, metadata !DIExpression(DW_OP_deref)), !dbg !45
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %13, i32 6, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i32*, [256 x [256 x double]]**, [256 x [256 x double]]**, [256 x double]**)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %7, i32* nonnull %8, i32* nonnull %9, [256 x [256 x double]]** nonnull %12, [256 x [256 x double]]** nonnull %10, [256 x double]** nonnull %11) #4, !dbg !52
  ret void, !dbg !55
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: norecurse nounwind uwtable
declare hidden void @.omp_outlined.(i32* noalias nocapture readonly, i32* noalias nocapture readnone, i32* nocapture readonly dereferenceable(4), i32* nocapture readonly dereferenceable(4), i32* nocapture readonly dereferenceable(4), [256 x [256 x double]]** nocapture readonly dereferenceable(8), [256 x [256 x double]]** nocapture readonly dereferenceable(8), [256 x double]** nocapture readonly dereferenceable(8)) #2

declare !callback !56 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr

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
!1 = !DIFile(filename: "../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/doitgen/doitgen.c", directory: "/WAVE/users/unix/klor/ycho_lab/kimsong_lor/autotuning_tools/scripts")
!2 = !{}
!3 = !{!4, !8, !9, !10, !15, !21, !18, !24, !12}
!4 = !DISubprogram(name: "polybench_timer_start", scope: !5, file: !5, line: 184, type: !6, spFlags: DISPFlagOptimized, retainedNodes: !2)
!5 = !DIFile(filename: "../test/poly_gpu/inputs_kernel_splits/utilities/polybench.h", directory: "/WAVE/users/unix/klor/ycho_lab/kimsong_lor/autotuning_tools/scripts")
!6 = !DISubroutineType(types: !7)
!7 = !{null, null}
!8 = !DISubprogram(name: "polybench_timer_stop", scope: !5, file: !5, line: 185, type: !6, spFlags: DISPFlagOptimized, retainedNodes: !2)
!9 = !DISubprogram(name: "polybench_timer_print", scope: !5, file: !5, line: 186, type: !6, spFlags: DISPFlagOptimized, retainedNodes: !2)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 1073741824, elements: !13)
!12 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!13 = !{!14, !14, !14}
!14 = !DISubrange(count: 256)
!15 = !DISubprogram(name: "polybench_alloc_data", scope: !5, file: !5, line: 199, type: !16, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!16 = !DISubroutineType(types: !17)
!17 = !{!18, !19, !20}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!19 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 4194304, elements: !23)
!23 = !{!14, !14}
!24 = !DISubprogram(name: "free", scope: !25, file: !25, line: 563, type: !26, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!25 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!26 = !DISubroutineType(types: !27)
!27 = !{null, !18}
!28 = !{i32 7, !"Dwarf Version", i32 4}
!29 = !{i32 2, !"Debug Info Version", i32 3}
!30 = !{i32 1, !"wchar_size", i32 4}
!31 = !{!"clang version 10.0.1 (https://github.com/conda-forge/clangdev-feedstock 2a1fb6e8a1c6dc6e585535457c24f0295d90c8d2)"}
!32 = distinct !DISubprogram(name: "kernel_p1", scope: !1, file: !1, line: 56, type: !33, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !38)
!33 = !DISubroutineType(types: !34)
!34 = !{null, !20, !20, !20, !21, !35, !21}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 16384, elements: !37)
!37 = !{!14}
!38 = !{!39, !40, !41, !42, !43, !44}
!39 = !DILocalVariable(name: "nr", arg: 1, scope: !32, file: !1, line: 56, type: !20)
!40 = !DILocalVariable(name: "nq", arg: 2, scope: !32, file: !1, line: 56, type: !20)
!41 = !DILocalVariable(name: "np", arg: 3, scope: !32, file: !1, line: 56, type: !20)
!42 = !DILocalVariable(name: "A", arg: 4, scope: !32, file: !1, line: 56, type: !21)
!43 = !DILocalVariable(name: "C4", arg: 5, scope: !32, file: !1, line: 56, type: !35)
!44 = !DILocalVariable(name: "sum", arg: 6, scope: !32, file: !1, line: 56, type: !21)
!45 = !DILocation(line: 0, scope: !32)
!46 = !{!47, !47, i64 0}
!47 = !{!"int", !48, i64 0}
!48 = !{!"omnipotent char", !49, i64 0}
!49 = !{!"Simple C/C++ TBAA"}
!50 = !{!51, !51, i64 0}
!51 = !{!"any pointer", !48, i64 0}
!52 = !DILocation(line: 58, column: 1, scope: !32)
!53 = !{!54, !51, i64 16}
!54 = !{!"ident_t", !47, i64 0, !47, i64 4, !47, i64 8, !47, i64 12, !51, i64 16}
!55 = !DILocation(line: 77, column: 1, scope: !32)
!56 = !{!57}
!57 = !{i64 2, i64 -1, i64 -1, i1 true}
