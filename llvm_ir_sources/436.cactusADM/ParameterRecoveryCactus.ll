; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ParameterRecoveryCactus.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @CCTKi_BindingsParameterRecovery_Cactus() #0 {
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !34, metadata !39), !dbg !40
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !31, metadata !39), !dbg !41
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !31, metadata !39), !dbg !41
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !31, metadata !39), !dbg !41
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !31, metadata !39), !dbg !41
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !31, metadata !39), !dbg !41
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !31, metadata !39), !dbg !41
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !31, metadata !39), !dbg !41
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !31, metadata !39), !dbg !41
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !31, metadata !39), !dbg !41
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !31, metadata !39), !dbg !41
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !31, metadata !39), !dbg !41
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !31, metadata !39), !dbg !41
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !31, metadata !39), !dbg !41
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !31, metadata !39), !dbg !41
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !31, metadata !39), !dbg !41
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !31, metadata !39), !dbg !41
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !31, metadata !39), !dbg !41
  ret i32 0, !dbg !42
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!35, !36, !37}
!llvm.ident = !{!38}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ParameterRecoveryCactus.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "CCTKi_BindingsParameterRecovery_Cactus", scope: !1, file: !1, line: 30, type: !5, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @CCTKi_BindingsParameterRecovery_Cactus, variables: !8)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !{!9, !12, !13, !17, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !34}
!9 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_final_time", scope: !4, file: !1, line: 32, type: !10)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!11 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!12 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_initial_time", scope: !4, file: !1, line: 32, type: !10)
!13 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "terminate", scope: !4, file: !1, line: 32, type: !14)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!16 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!17 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_itlast", scope: !4, file: !1, line: 32, type: !18)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!19 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "terminate_next", scope: !4, file: !1, line: 32, type: !18)
!20 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_run_title", scope: !4, file: !1, line: 32, type: !14)
!21 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_timer_output", scope: !4, file: !1, line: 32, type: !14)
!22 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "allow_mixeddim_gfs", scope: !4, file: !1, line: 32, type: !18)
!23 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_brief_output", scope: !4, file: !1, line: 32, type: !18)
!24 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_full_warnings", scope: !4, file: !1, line: 32, type: !18)
!25 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_show_banners", scope: !4, file: !1, line: 32, type: !18)
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_show_schedule", scope: !4, file: !1, line: 32, type: !18)
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_strong_param_check", scope: !4, file: !1, line: 32, type: !18)
!28 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "manual_cache_setup", scope: !4, file: !1, line: 32, type: !18)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "manual_cache_size", scope: !4, file: !1, line: 32, type: !18)
!30 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "manual_cacheline_bytes", scope: !4, file: !1, line: 32, type: !18)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_pdummy_pointer", scope: !4, file: !1, line: 32, type: !32)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!34 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !4, file: !1, line: 33, type: !7)
!35 = !{i32 2, !"Dwarf Version", i32 2}
!36 = !{i32 2, !"Debug Info Version", i32 700000003}
!37 = !{i32 1, !"PIC Level", i32 2}
!38 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!39 = !DIExpression()
!40 = !DILocation(line: 33, column: 7, scope: !4)
!41 = !DILocation(line: 32, column: 3, scope: !4)
!42 = !DILocation(line: 36, column: 26, scope: !4)
