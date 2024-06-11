; ModuleID = '../test/poly_gpu/outputs_kernel_largedataset_v2/ir/2mm.ll'
source_filename = "../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/2mm/2mm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = external hidden unnamed_addr constant [89 x i8], align 1
@1 = external hidden unnamed_addr constant %struct.ident_t, align 8

; Function Attrs: nounwind uwtable
define hidden void @kernel_p1(i32 %0, i32 %1, i32 %2, double %3, [2000 x double]* %4, [2000 x double]* %5, [2000 x double]* %6) #0 !dbg !29 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca double, align 8
  %12 = alloca [2000 x double]*, align 8
  %13 = alloca [2000 x double]*, align 8
  %14 = alloca [2000 x double]*, align 8
  %15 = alloca %struct.ident_t, align 8
  %16 = bitcast %struct.ident_t* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %16, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @1 to i8*), i64 16, i1 false)
  call void @llvm.dbg.value(metadata i32 %0, metadata !36, metadata !DIExpression()), !dbg !46
  store i32 %0, i32* %8, align 4, !tbaa !47
  call void @llvm.dbg.value(metadata i32 %1, metadata !37, metadata !DIExpression()), !dbg !46
  store i32 %1, i32* %9, align 4, !tbaa !47
  call void @llvm.dbg.value(metadata i32 %2, metadata !38, metadata !DIExpression()), !dbg !46
  store i32 %2, i32* %10, align 4, !tbaa !47
  call void @llvm.dbg.value(metadata double %3, metadata !39, metadata !DIExpression()), !dbg !46
  store double %3, double* %11, align 8, !tbaa !51
  call void @llvm.dbg.value(metadata [2000 x double]* %4, metadata !40, metadata !DIExpression()), !dbg !46
  store [2000 x double]* %4, [2000 x double]** %12, align 8, !tbaa !53
  call void @llvm.dbg.value(metadata [2000 x double]* %5, metadata !41, metadata !DIExpression()), !dbg !46
  store [2000 x double]* %5, [2000 x double]** %13, align 8, !tbaa !53
  call void @llvm.dbg.value(metadata [2000 x double]* %6, metadata !42, metadata !DIExpression()), !dbg !46
  store [2000 x double]* %6, [2000 x double]** %14, align 8, !tbaa !53
  %17 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %15, i64 0, i32 4, !dbg !55
  store i8* getelementptr inbounds ([89 x i8], [89 x i8]* @0, i64 0, i64 0), i8** %17, align 8, !dbg !55, !tbaa !56
  call void @llvm.dbg.value(metadata i32* %8, metadata !36, metadata !DIExpression(DW_OP_deref)), !dbg !46
  call void @llvm.dbg.value(metadata i32* %9, metadata !37, metadata !DIExpression(DW_OP_deref)), !dbg !46
  call void @llvm.dbg.value(metadata i32* %10, metadata !38, metadata !DIExpression(DW_OP_deref)), !dbg !46
  call void @llvm.dbg.value(metadata double* %11, metadata !39, metadata !DIExpression(DW_OP_deref)), !dbg !46
  call void @llvm.dbg.value(metadata [2000 x double]** %12, metadata !40, metadata !DIExpression(DW_OP_deref)), !dbg !46
  call void @llvm.dbg.value(metadata [2000 x double]** %13, metadata !41, metadata !DIExpression(DW_OP_deref)), !dbg !46
  call void @llvm.dbg.value(metadata [2000 x double]** %14, metadata !42, metadata !DIExpression(DW_OP_deref)), !dbg !46
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* nonnull %15, i32 7, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, [2000 x double]**, i32*, double*, [2000 x double]**, [2000 x double]**)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* nonnull %8, i32* nonnull %9, [2000 x double]** nonnull %12, i32* nonnull %10, double* nonnull %11, [2000 x double]** nonnull %13, [2000 x double]** nonnull %14) #4, !dbg !55
  ret void, !dbg !58
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: norecurse nounwind uwtable
declare hidden void @.omp_outlined.(i32* noalias nocapture readonly, i32* noalias nocapture readnone, i32* nocapture readonly dereferenceable(4), i32* nocapture readonly dereferenceable(4), [2000 x double]** nocapture readonly dereferenceable(8), i32* nocapture readonly dereferenceable(4), double* nocapture readonly dereferenceable(8), [2000 x double]** nocapture readonly dereferenceable(8), [2000 x double]** nocapture readonly dereferenceable(8)) #2

declare !callback !59 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) local_unnamed_addr

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
!1 = !DIFile(filename: "../test/poly_gpu/inputs_kernel_splits/linear-algebra/kernels/2mm/2mm.c", directory: "/WAVE/users/unix/klor/ycho_lab/kimsong_lor/autotuning_tools/scripts")
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
!29 = distinct !DISubprogram(name: "kernel_p1", scope: !1, file: !1, line: 66, type: !30, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !35)
!30 = !DISubroutineType(types: !31)
!31 = !{null, !20, !20, !20, !12, !32, !32, !32}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 128000, elements: !34)
!34 = !{!14}
!35 = !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45}
!36 = !DILocalVariable(name: "ni", arg: 1, scope: !29, file: !1, line: 66, type: !20)
!37 = !DILocalVariable(name: "nj", arg: 2, scope: !29, file: !1, line: 66, type: !20)
!38 = !DILocalVariable(name: "nk", arg: 3, scope: !29, file: !1, line: 66, type: !20)
!39 = !DILocalVariable(name: "alpha", arg: 4, scope: !29, file: !1, line: 66, type: !12)
!40 = !DILocalVariable(name: "tmp", arg: 5, scope: !29, file: !1, line: 66, type: !32)
!41 = !DILocalVariable(name: "A", arg: 6, scope: !29, file: !1, line: 66, type: !32)
!42 = !DILocalVariable(name: "B", arg: 7, scope: !29, file: !1, line: 66, type: !32)
!43 = !DILocalVariable(name: "i", scope: !29, file: !1, line: 68, type: !20)
!44 = !DILocalVariable(name: "j", scope: !29, file: !1, line: 68, type: !20)
!45 = !DILocalVariable(name: "k", scope: !29, file: !1, line: 68, type: !20)
!46 = !DILocation(line: 0, scope: !29)
!47 = !{!48, !48, i64 0}
!48 = !{!"int", !49, i64 0}
!49 = !{!"omnipotent char", !50, i64 0}
!50 = !{!"Simple C/C++ TBAA"}
!51 = !{!52, !52, i64 0}
!52 = !{!"double", !49, i64 0}
!53 = !{!54, !54, i64 0}
!54 = !{!"any pointer", !49, i64 0}
!55 = !DILocation(line: 69, column: 1, scope: !29)
!56 = !{!57, !54, i64 16}
!57 = !{!"ident_t", !48, i64 0, !48, i64 4, !48, i64 8, !48, i64 12, !54, i64 16}
!58 = !DILocation(line: 77, column: 1, scope: !29)
!59 = !{!60}
!60 = !{i64 2, i64 -1, i64 -1, i1 true}
