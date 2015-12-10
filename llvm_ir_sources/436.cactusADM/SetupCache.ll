; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/SetupCache.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon.0 = type { i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@cactuspriv_ = external global %struct.anon.0
@.str = private unnamed_addr constant [86 x i8] c"$Header: /cactus/Cactus/src/main/SetupCache.c,v 1.10 2001/11/05 14:58:54 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_main_SetupCache_c() #0 {
  ret i8* getelementptr inbounds ([86 x i8]* @.str, i64 0, i64 0), !dbg !46
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_SetupCache() #1 {
  %1 = load i64* bitcast (i32* getelementptr inbounds (%struct.anon.0* @cactuspriv_, i64 0, i32 8) to i64*), align 8, !dbg !47
  %2 = trunc i64 %1 to i32, !dbg !47
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !34, metadata !48), !dbg !47
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !36, metadata !48), !dbg !47
  %3 = icmp eq i32 %2, 0, !dbg !49
  br i1 %3, label %8, label %4, !dbg !51

; <label>:4                                       ; preds = %0
  %5 = load i32* getelementptr inbounds (%struct.anon.0* @cactuspriv_, i64 0, i32 10), align 8, !dbg !47, !tbaa !52
  %6 = ashr i64 %1, 32, !dbg !58
  tail call void @llvm.dbg.value(metadata i64 %6, i64 0, metadata !15, metadata !48), !dbg !60
  %7 = sext i32 %5 to i64, !dbg !61
  tail call void @llvm.dbg.value(metadata i64 %7, i64 0, metadata !17, metadata !48), !dbg !62
  br label %8, !dbg !63

; <label>:8                                       ; preds = %0, %4
  %cacheline_bytes.0 = phi i64 [ %7, %4 ], [ 128, %0 ]
  %cache_size.0 = phi i64 [ %6, %4 ], [ 8388608, %0 ]
  %9 = tail call i32 @Utili_CacheDataSet(i64 %cacheline_bytes.0, i64 %cache_size.0) #4, !dbg !64
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !37, metadata !48), !dbg !47
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !37, metadata !48), !dbg !47
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !37, metadata !48), !dbg !47
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !37, metadata !48), !dbg !47
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !37, metadata !48), !dbg !47
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !37, metadata !48), !dbg !47
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !37, metadata !48), !dbg !47
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !37, metadata !48), !dbg !47
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !37, metadata !48), !dbg !47
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !37, metadata !48), !dbg !47
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !37, metadata !48), !dbg !47
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !37, metadata !48), !dbg !47
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !37, metadata !48), !dbg !47
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !37, metadata !48), !dbg !47
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !37, metadata !48), !dbg !47
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !37, metadata !48), !dbg !47
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !37, metadata !48), !dbg !47
  ret i32 0, !dbg !65
}

; Function Attrs: optsize
declare i32 @Utili_CacheDataSet(i64, i64) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #3

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!42, !43, !44}
!llvm.ident = !{!45}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !40, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/SetupCache.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !10}
!4 = !DISubprogram(name: "CCTKi_version_main_SetupCache_c", scope: !1, file: !1, line: 22, type: !5, isLocal: false, isDefinition: true, scopeLine: 22, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_main_SetupCache_c, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!10 = !DISubprogram(name: "CCTKi_SetupCache", scope: !1, file: !1, line: 42, type: !11, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @CCTKi_SetupCache, variables: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13}
!13 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!14 = !{!15, !17, !18, !21, !22, !23, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37}
!15 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cache_size", scope: !10, file: !1, line: 44, type: !16)
!16 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!17 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cacheline_bytes", scope: !10, file: !1, line: 45, type: !16)
!18 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_final_time", scope: !10, file: !1, line: 46, type: !19)
!19 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!20 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!21 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_initial_time", scope: !10, file: !1, line: 46, type: !19)
!22 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "terminate", scope: !10, file: !1, line: 46, type: !7)
!23 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_itlast", scope: !10, file: !1, line: 46, type: !24)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!25 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "terminate_next", scope: !10, file: !1, line: 46, type: !24)
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_run_title", scope: !10, file: !1, line: 46, type: !7)
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_timer_output", scope: !10, file: !1, line: 46, type: !7)
!28 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "allow_mixeddim_gfs", scope: !10, file: !1, line: 46, type: !24)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_brief_output", scope: !10, file: !1, line: 46, type: !24)
!30 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_full_warnings", scope: !10, file: !1, line: 46, type: !24)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_show_banners", scope: !10, file: !1, line: 46, type: !24)
!32 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_show_schedule", scope: !10, file: !1, line: 46, type: !24)
!33 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_strong_param_check", scope: !10, file: !1, line: 46, type: !24)
!34 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "manual_cache_setup", scope: !10, file: !1, line: 46, type: !24)
!35 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "manual_cache_size", scope: !10, file: !1, line: 46, type: !24)
!36 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "manual_cacheline_bytes", scope: !10, file: !1, line: 46, type: !24)
!37 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_pdummy_pointer", scope: !10, file: !1, line: 46, type: !38)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!40 = !{!41}
!41 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 20, type: !7, isLocal: true, isDefinition: true)
!42 = !{i32 2, !"Dwarf Version", i32 2}
!43 = !{i32 2, !"Debug Info Version", i32 700000003}
!44 = !{i32 1, !"PIC Level", i32 2}
!45 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!46 = !DILocation(line: 22, column: 1, scope: !4)
!47 = !DILocation(line: 46, column: 3, scope: !10)
!48 = !DIExpression()
!49 = !DILocation(line: 49, column: 7, scope: !50)
!50 = distinct !DILexicalBlock(scope: !10, file: !1, line: 49, column: 7)
!51 = !DILocation(line: 49, column: 7, scope: !10)
!52 = !{!53, !57, i64 48}
!53 = !{!"", !54, i64 0, !54, i64 8, !57, i64 16, !57, i64 20, !57, i64 24, !57, i64 28, !57, i64 32, !57, i64 36, !57, i64 40, !57, i64 44, !57, i64 48}
!54 = !{!"any pointer", !55, i64 0}
!55 = !{!"omnipotent char", !56, i64 0}
!56 = !{!"Simple C/C++ TBAA"}
!57 = !{!"int", !55, i64 0}
!58 = !DILocation(line: 51, column: 23, scope: !59)
!59 = distinct !DILexicalBlock(scope: !50, file: !1, line: 50, column: 3)
!60 = !DILocation(line: 44, column: 17, scope: !10)
!61 = !DILocation(line: 52, column: 23, scope: !59)
!62 = !DILocation(line: 45, column: 17, scope: !10)
!63 = !DILocation(line: 53, column: 3, scope: !59)
!64 = !DILocation(line: 60, column: 3, scope: !10)
!65 = !DILocation(line: 62, column: 26, scope: !10)
