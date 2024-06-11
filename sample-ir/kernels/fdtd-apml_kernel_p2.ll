; ModuleID = '../test/poly_gpu/outputs_kernel_largedataset_v2/ir/fdtd-apml.ll'
source_filename = "../test/poly_gpu/inputs_kernel_splits/stencils/fdtd-apml/fdtd-apml.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@0 = external hidden unnamed_addr constant %struct.ident_t, align 8
@1 = external hidden unnamed_addr constant [88 x i8], align 1
@2 = external hidden unnamed_addr constant [89 x i8], align 1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #0

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #0

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #0

declare dso_local i32 @__kmpc_global_thread_num(%struct.ident_t*) local_unnamed_addr

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32) local_unnamed_addr

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32) local_unnamed_addr

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32) local_unnamed_addr

; Function Attrs: nounwind uwtable
define hidden void @kernel_p2(i32 %0, i32 %1, i32 %2, double %3, double %4, [513 x double]* nocapture readnone %5, [513 x double]* nocapture readnone %6, [513 x double]* nocapture readnone %7, [513 x double]* nocapture readonly %8, [513 x [513 x double]]* nocapture %9, [513 x [513 x double]]* nocapture readnone %10, [513 x [513 x double]]* nocapture readnone %11, [513 x [513 x double]]* nocapture %12, double* nocapture readonly %13, double* nocapture readonly %14, double* nocapture readonly %15, double* nocapture readonly %16, double* nocapture readnone %17, double* nocapture readnone %18) #1 !dbg !35 {
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.ident_t, align 8
  %25 = bitcast %struct.ident_t* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %25, i8* nonnull align 8 dereferenceable(24) bitcast (%struct.ident_t* @0 to i8*), i64 16, i1 false)
  %26 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %24, i64 0, i32 4
  store i8* getelementptr inbounds ([88 x i8], [88 x i8]* @1, i64 0, i64 0), i8** %26, align 8, !tbaa !79
  %27 = call i32 @__kmpc_global_thread_num(%struct.ident_t* nonnull %24) #3
  call void @llvm.dbg.value(metadata i32 %0, metadata !40, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.value(metadata i32 %1, metadata !41, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.value(metadata i32 %2, metadata !42, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.value(metadata double %3, metadata !43, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.value(metadata double %4, metadata !44, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.value(metadata [513 x double]* %5, metadata !45, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.value(metadata [513 x double]* %6, metadata !46, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.value(metadata [513 x double]* %7, metadata !47, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.value(metadata [513 x double]* %8, metadata !48, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.value(metadata [513 x [513 x double]]* %9, metadata !49, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.value(metadata [513 x [513 x double]]* %10, metadata !50, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.value(metadata [513 x [513 x double]]* %11, metadata !51, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.value(metadata [513 x [513 x double]]* %12, metadata !52, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.value(metadata double* %13, metadata !53, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.value(metadata double* %14, metadata !54, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.value(metadata double* %15, metadata !55, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.value(metadata double* %16, metadata !56, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.value(metadata double* %17, metadata !57, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.value(metadata double* %18, metadata !58, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.value(metadata i32 %2, metadata !64, metadata !DIExpression()), !dbg !86
  %28 = add nsw i32 %2, -1, !dbg !87
  call void @llvm.dbg.value(metadata i32 %28, metadata !64, metadata !DIExpression()), !dbg !86
  call void @llvm.dbg.value(metadata i32 0, metadata !65, metadata !DIExpression()), !dbg !86
  %29 = icmp sgt i32 %2, 0, !dbg !87
  br i1 %29, label %30, label %90, !dbg !88

30:                                               ; preds = %19
  %31 = bitcast i32* %20 to i8*, !dbg !88
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %31) #3, !dbg !88
  call void @llvm.dbg.value(metadata i32 0, metadata !66, metadata !DIExpression()), !dbg !86
  store i32 0, i32* %20, align 4, !dbg !89, !tbaa !90
  %32 = bitcast i32* %21 to i8*, !dbg !88
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %32) #3, !dbg !88
  call void @llvm.dbg.value(metadata i32 %28, metadata !67, metadata !DIExpression()), !dbg !86
  store i32 %28, i32* %21, align 4, !dbg !89, !tbaa !90
  %33 = bitcast i32* %22 to i8*, !dbg !88
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %33) #3, !dbg !88
  call void @llvm.dbg.value(metadata i32 1, metadata !68, metadata !DIExpression()), !dbg !86
  store i32 1, i32* %22, align 4, !dbg !89, !tbaa !90
  %34 = bitcast i32* %23 to i8*, !dbg !88
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %34) #3, !dbg !88
  call void @llvm.dbg.value(metadata i32 0, metadata !69, metadata !DIExpression()), !dbg !86
  store i32 0, i32* %23, align 4, !dbg !89, !tbaa !90
  store i8* getelementptr inbounds ([88 x i8], [88 x i8]* @1, i64 0, i64 0), i8** %26, align 8, !dbg !88, !tbaa !79
  call void @llvm.dbg.value(metadata i32* %20, metadata !66, metadata !DIExpression(DW_OP_deref)), !dbg !86
  call void @llvm.dbg.value(metadata i32* %21, metadata !67, metadata !DIExpression(DW_OP_deref)), !dbg !86
  call void @llvm.dbg.value(metadata i32* %22, metadata !68, metadata !DIExpression(DW_OP_deref)), !dbg !86
  call void @llvm.dbg.value(metadata i32* %23, metadata !69, metadata !DIExpression(DW_OP_deref)), !dbg !86
  call void @__kmpc_for_static_init_4(%struct.ident_t* nonnull %24, i32 %27, i32 34, i32* nonnull %23, i32* nonnull %20, i32* nonnull %21, i32* nonnull %22, i32 1, i32 1) #3, !dbg !88
  %35 = load i32, i32* %21, align 4, !dbg !89, !tbaa !90
  call void @llvm.dbg.value(metadata i32 %35, metadata !67, metadata !DIExpression()), !dbg !86
  %36 = icmp slt i32 %35, %2, !dbg !89
  %37 = select i1 %36, i32 %35, i32 %28, !dbg !89
  call void @llvm.dbg.value(metadata i32 %37, metadata !67, metadata !DIExpression()), !dbg !86
  store i32 %37, i32* %21, align 4, !dbg !89, !tbaa !90
  %38 = load i32, i32* %20, align 4, !dbg !89, !tbaa !90
  call void @llvm.dbg.value(metadata i32 %38, metadata !66, metadata !DIExpression()), !dbg !86
  call void @llvm.dbg.value(metadata i32 %38, metadata !62, metadata !DIExpression()), !dbg !86
  call void @llvm.dbg.value(metadata i32 %37, metadata !67, metadata !DIExpression()), !dbg !86
  %39 = icmp sgt i32 %38, %37, !dbg !87
  br i1 %39, label %89, label %40, !dbg !88

40:                                               ; preds = %30
  %41 = icmp sgt i32 %0, 0, !dbg !91
  %42 = icmp sgt i32 %1, 0, !dbg !92
  br i1 %41, label %43, label %89, !dbg !88

43:                                               ; preds = %40
  %44 = sext i32 %38 to i64, !dbg !94
  %45 = sext i32 %37 to i64, !dbg !94
  %46 = zext i32 %0 to i64, !dbg !91
  %47 = zext i32 %1 to i64, !dbg !92
  br label %48, !dbg !94

48:                                               ; preds = %50, %43
  %49 = phi i64 [ %44, %43 ], [ %51, %50 ]
  call void @llvm.dbg.value(metadata i64 %49, metadata !62, metadata !DIExpression()), !dbg !86
  call void @llvm.dbg.value(metadata i32 0, metadata !72, metadata !DIExpression()), !dbg !95
  br i1 %42, label %53, label %50, !dbg !96

50:                                               ; preds = %59, %48
  %51 = add nsw i64 %49, 1, !dbg !87
  call void @llvm.dbg.value(metadata i64 %51, metadata !62, metadata !DIExpression()), !dbg !86
  call void @llvm.dbg.value(metadata i32 %37, metadata !67, metadata !DIExpression()), !dbg !86
  %52 = icmp slt i64 %49, %45, !dbg !87
  br i1 %52, label %48, label %89, !dbg !88, !llvm.loop !97

53:                                               ; preds = %59, %48
  %54 = phi i64 [ %60, %59 ], [ 0, %48 ]
  call void @llvm.dbg.value(metadata i64 %54, metadata !72, metadata !DIExpression()), !dbg !95
  call void @llvm.dbg.value(metadata i32 0, metadata !75, metadata !DIExpression()), !dbg !99
  %55 = getelementptr inbounds double, double* %14, i64 %54, !dbg !100
  %56 = getelementptr inbounds [513 x double], [513 x double]* %8, i64 %54, i64 %49, !dbg !100
  %57 = getelementptr inbounds double, double* %13, i64 %54, !dbg !100
  %58 = bitcast double* %56 to i64*, !dbg !100
  br label %62, !dbg !102

59:                                               ; preds = %62
  %60 = add nuw nsw i64 %54, 1, !dbg !103
  call void @llvm.dbg.value(metadata i64 %60, metadata !72, metadata !DIExpression()), !dbg !95
  %61 = icmp eq i64 %60, %46, !dbg !104
  br i1 %61, label %50, label %53, !dbg !96, !llvm.loop !105

62:                                               ; preds = %62, %53
  %63 = phi i64 [ %87, %62 ], [ 0, %53 ]
  call void @llvm.dbg.value(metadata i64 %63, metadata !75, metadata !DIExpression()), !dbg !99
  %64 = getelementptr inbounds double, double* %15, i64 %63, !dbg !107
  %65 = load double, double* %64, align 8, !dbg !107, !tbaa !108
  %66 = getelementptr inbounds double, double* %16, i64 %63, !dbg !110
  %67 = load double, double* %66, align 8, !dbg !110, !tbaa !108
  %68 = fdiv double %65, %67, !dbg !111
  %69 = getelementptr inbounds [513 x [513 x double]], [513 x [513 x double]]* %12, i64 %54, i64 %49, i64 %63, !dbg !112
  %70 = load double, double* %69, align 8, !dbg !112, !tbaa !108
  %71 = fmul double %68, %70, !dbg !113
  %72 = load double, double* %55, align 8, !dbg !114, !tbaa !108
  %73 = fmul double %72, %3, !dbg !115
  %74 = fdiv double %73, %67, !dbg !116
  %75 = load double, double* %56, align 8, !dbg !117, !tbaa !108
  %76 = fmul double %75, %74, !dbg !118
  %77 = fadd double %71, %76, !dbg !119
  %78 = load double, double* %57, align 8, !dbg !120, !tbaa !108
  %79 = fmul double %78, %3, !dbg !121
  %80 = fdiv double %79, %67, !dbg !122
  %81 = getelementptr inbounds [513 x [513 x double]], [513 x [513 x double]]* %9, i64 %54, i64 %49, i64 %63, !dbg !123
  %82 = load double, double* %81, align 8, !dbg !123, !tbaa !108
  %83 = fmul double %82, %80, !dbg !124
  %84 = fsub double %77, %83, !dbg !125
  store double %84, double* %69, align 8, !dbg !126, !tbaa !108
  %85 = load i64, i64* %58, align 8, !dbg !127, !tbaa !108
  %86 = bitcast double* %81 to i64*, !dbg !128
  store i64 %85, i64* %86, align 8, !dbg !128, !tbaa !108
  %87 = add nuw nsw i64 %63, 1, !dbg !129
  call void @llvm.dbg.value(metadata i64 %87, metadata !75, metadata !DIExpression()), !dbg !99
  %88 = icmp eq i64 %87, %47, !dbg !130
  br i1 %88, label %59, label %62, !dbg !102, !llvm.loop !131

89:                                               ; preds = %50, %40, %30
  store i8* getelementptr inbounds ([89 x i8], [89 x i8]* @2, i64 0, i64 0), i8** %26, align 8, !dbg !94, !tbaa !79
  call void @__kmpc_for_static_fini(%struct.ident_t* nonnull %24, i32 %27) #3, !dbg !94
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %34) #3, !dbg !94
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %33) #3, !dbg !94
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %32) #3, !dbg !94
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %31) #3, !dbg !94
  br label %90, !dbg !94

90:                                               ; preds = %89, %19
  store i8* getelementptr inbounds ([88 x i8], [88 x i8]* @1, i64 0, i64 0), i8** %26, align 8, !dbg !98, !tbaa !79
  call void @__kmpc_barrier(%struct.ident_t* nonnull %24, i32 %27) #3, !dbg !98
  ret void, !dbg !133
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #2

attributes #0 = { argmemonly nounwind willreturn }
attributes #1 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!31, !32, !33}
!llvm.ident = !{!34}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 (https://github.com/conda-forge/clangdev-feedstock 2a1fb6e8a1c6dc6e585535457c24f0295d90c8d2)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../test/poly_gpu/inputs_kernel_splits/stencils/fdtd-apml/fdtd-apml.c", directory: "/WAVE/users/unix/klor/ycho_lab/kimsong_lor/autotuning_tools/scripts")
!2 = !{}
!3 = !{!4, !8, !9, !10, !15, !21, !24, !18, !27, !12}
!4 = !DISubprogram(name: "polybench_timer_start", scope: !5, file: !5, line: 184, type: !6, spFlags: DISPFlagOptimized, retainedNodes: !2)
!5 = !DIFile(filename: "../test/poly_gpu/inputs_kernel_splits/utilities/polybench.h", directory: "/WAVE/users/unix/klor/ycho_lab/kimsong_lor/autotuning_tools/scripts")
!6 = !DISubroutineType(types: !7)
!7 = !{null, null}
!8 = !DISubprogram(name: "polybench_timer_stop", scope: !5, file: !5, line: 185, type: !6, spFlags: DISPFlagOptimized, retainedNodes: !2)
!9 = !DISubprogram(name: "polybench_timer_print", scope: !5, file: !5, line: 186, type: !6, spFlags: DISPFlagOptimized, retainedNodes: !2)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 16842816, elements: !13)
!12 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!13 = !{!14, !14}
!14 = !DISubrange(count: 513)
!15 = !DISubprogram(name: "polybench_alloc_data", scope: !5, file: !5, line: 199, type: !16, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!16 = !DISubroutineType(types: !17)
!17 = !{!18, !19, !20}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!19 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 8640364608, elements: !23)
!23 = !{!14, !14, !14}
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 32832, elements: !26)
!26 = !{!14}
!27 = !DISubprogram(name: "free", scope: !28, file: !28, line: 563, type: !29, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!28 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!29 = !DISubroutineType(types: !30)
!30 = !{null, !18}
!31 = !{i32 7, !"Dwarf Version", i32 4}
!32 = !{i32 2, !"Debug Info Version", i32 3}
!33 = !{i32 1, !"wchar_size", i32 4}
!34 = !{!"clang version 10.0.1 (https://github.com/conda-forge/clangdev-feedstock 2a1fb6e8a1c6dc6e585535457c24f0295d90c8d2)"}
!35 = distinct !DISubprogram(name: "kernel_p2", scope: !1, file: !1, line: 136, type: !36, scopeLine: 155, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !39)
!36 = !DISubroutineType(types: !37)
!37 = !{null, !20, !20, !20, !12, !12, !24, !24, !24, !24, !10, !10, !10, !10, !38, !38, !38, !38, !38, !38}
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!39 = !{!40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !64, !64, !65, !66, !67, !68, !69, !70, !71, !65, !72, !75}
!40 = !DILocalVariable(name: "cz", arg: 1, scope: !35, file: !1, line: 136, type: !20)
!41 = !DILocalVariable(name: "cxm", arg: 2, scope: !35, file: !1, line: 137, type: !20)
!42 = !DILocalVariable(name: "cym", arg: 3, scope: !35, file: !1, line: 138, type: !20)
!43 = !DILocalVariable(name: "mui", arg: 4, scope: !35, file: !1, line: 139, type: !12)
!44 = !DILocalVariable(name: "ch", arg: 5, scope: !35, file: !1, line: 140, type: !12)
!45 = !DILocalVariable(name: "Ax", arg: 6, scope: !35, file: !1, line: 141, type: !24)
!46 = !DILocalVariable(name: "Ry", arg: 7, scope: !35, file: !1, line: 142, type: !24)
!47 = !DILocalVariable(name: "clf", arg: 8, scope: !35, file: !1, line: 143, type: !24)
!48 = !DILocalVariable(name: "tmp", arg: 9, scope: !35, file: !1, line: 144, type: !24)
!49 = !DILocalVariable(name: "Bza", arg: 10, scope: !35, file: !1, line: 145, type: !10)
!50 = !DILocalVariable(name: "Ex", arg: 11, scope: !35, file: !1, line: 146, type: !10)
!51 = !DILocalVariable(name: "Ey", arg: 12, scope: !35, file: !1, line: 147, type: !10)
!52 = !DILocalVariable(name: "Hz", arg: 13, scope: !35, file: !1, line: 148, type: !10)
!53 = !DILocalVariable(name: "czm", arg: 14, scope: !35, file: !1, line: 149, type: !38)
!54 = !DILocalVariable(name: "czp", arg: 15, scope: !35, file: !1, line: 150, type: !38)
!55 = !DILocalVariable(name: "cxmh", arg: 16, scope: !35, file: !1, line: 151, type: !38)
!56 = !DILocalVariable(name: "cxph", arg: 17, scope: !35, file: !1, line: 152, type: !38)
!57 = !DILocalVariable(name: "cymh", arg: 18, scope: !35, file: !1, line: 153, type: !38)
!58 = !DILocalVariable(name: "cyph", arg: 19, scope: !35, file: !1, line: 154, type: !38)
!59 = !DILocalVariable(name: "iz", scope: !35, file: !1, line: 156, type: !20)
!60 = !DILocalVariable(name: "iy", scope: !35, file: !1, line: 156, type: !20)
!61 = !DILocalVariable(name: "ix", scope: !35, file: !1, line: 156, type: !20)
!62 = !DILocalVariable(name: ".omp.iv", scope: !63, type: !20, flags: DIFlagArtificial)
!63 = distinct !DILexicalBlock(scope: !35, file: !1, line: 157, column: 1)
!64 = !DILocalVariable(name: ".capture_expr.", scope: !63, type: !20, flags: DIFlagArtificial)
!65 = !DILocalVariable(name: "iy", scope: !63, type: !20, flags: DIFlagArtificial)
!66 = !DILocalVariable(name: ".omp.lb", scope: !63, type: !20, flags: DIFlagArtificial)
!67 = !DILocalVariable(name: ".omp.ub", scope: !63, type: !20, flags: DIFlagArtificial)
!68 = !DILocalVariable(name: ".omp.stride", scope: !63, type: !20, flags: DIFlagArtificial)
!69 = !DILocalVariable(name: ".omp.is_last", scope: !63, type: !20, flags: DIFlagArtificial)
!70 = !DILocalVariable(name: "iz", scope: !63, type: !20, flags: DIFlagArtificial)
!71 = !DILocalVariable(name: "ix", scope: !63, type: !20, flags: DIFlagArtificial)
!72 = !DILocalVariable(name: "iz", scope: !73, file: !1, line: 160, type: !20)
!73 = distinct !DILexicalBlock(scope: !74, file: !1, line: 160, column: 3)
!74 = distinct !DILexicalBlock(scope: !63, file: !1, line: 159, column: 2)
!75 = !DILocalVariable(name: "ix", scope: !76, file: !1, line: 162, type: !20)
!76 = distinct !DILexicalBlock(scope: !77, file: !1, line: 162, column: 4)
!77 = distinct !DILexicalBlock(scope: !78, file: !1, line: 161, column: 3)
!78 = distinct !DILexicalBlock(scope: !73, file: !1, line: 160, column: 3)
!79 = !{!80, !84, i64 16}
!80 = !{!"ident_t", !81, i64 0, !81, i64 4, !81, i64 8, !81, i64 12, !84, i64 16}
!81 = !{!"int", !82, i64 0}
!82 = !{!"omnipotent char", !83, i64 0}
!83 = !{!"Simple C/C++ TBAA"}
!84 = !{!"any pointer", !82, i64 0}
!85 = !DILocation(line: 0, scope: !35)
!86 = !DILocation(line: 0, scope: !63)
!87 = !DILocation(line: 158, column: 2, scope: !63)
!88 = !DILocation(line: 157, column: 1, scope: !35)
!89 = !DILocation(line: 158, column: 7, scope: !63)
!90 = !{!81, !81, i64 0}
!91 = !DILocation(line: 0, scope: !78)
!92 = !DILocation(line: 0, scope: !93)
!93 = distinct !DILexicalBlock(scope: !76, file: !1, line: 162, column: 4)
!94 = !DILocation(line: 157, column: 1, scope: !63)
!95 = !DILocation(line: 0, scope: !73)
!96 = !DILocation(line: 160, column: 3, scope: !73)
!97 = distinct !{!97, !94, !98}
!98 = !DILocation(line: 157, column: 32, scope: !63)
!99 = !DILocation(line: 0, scope: !76)
!100 = !DILocation(line: 0, scope: !101)
!101 = distinct !DILexicalBlock(scope: !93, file: !1, line: 163, column: 4)
!102 = !DILocation(line: 162, column: 4, scope: !76)
!103 = !DILocation(line: 160, column: 35, scope: !78)
!104 = !DILocation(line: 160, column: 23, scope: !78)
!105 = distinct !{!105, !96, !106}
!106 = !DILocation(line: 169, column: 3, scope: !73)
!107 = !DILocation(line: 165, column: 23, scope: !101)
!108 = !{!109, !109, i64 0}
!109 = !{!"double", !82, i64 0}
!110 = !DILocation(line: 165, column: 34, scope: !101)
!111 = !DILocation(line: 165, column: 32, scope: !101)
!112 = !DILocation(line: 165, column: 46, scope: !101)
!113 = !DILocation(line: 165, column: 44, scope: !101)
!114 = !DILocation(line: 165, column: 70, scope: !101)
!115 = !DILocation(line: 165, column: 68, scope: !101)
!116 = !DILocation(line: 165, column: 78, scope: !101)
!117 = !DILocation(line: 165, column: 92, scope: !101)
!118 = !DILocation(line: 165, column: 90, scope: !101)
!119 = !DILocation(line: 165, column: 61, scope: !101)
!120 = !DILocation(line: 165, column: 113, scope: !101)
!121 = !DILocation(line: 165, column: 111, scope: !101)
!122 = !DILocation(line: 165, column: 121, scope: !101)
!123 = !DILocation(line: 165, column: 135, scope: !101)
!124 = !DILocation(line: 165, column: 133, scope: !101)
!125 = !DILocation(line: 165, column: 104, scope: !101)
!126 = !DILocation(line: 165, column: 20, scope: !101)
!127 = !DILocation(line: 167, column: 23, scope: !101)
!128 = !DILocation(line: 167, column: 21, scope: !101)
!129 = !DILocation(line: 162, column: 37, scope: !93)
!130 = !DILocation(line: 162, column: 24, scope: !93)
!131 = distinct !{!131, !102, !132}
!132 = !DILocation(line: 168, column: 4, scope: !76)
!133 = !DILocation(line: 171, column: 1, scope: !35)
