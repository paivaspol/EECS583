; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleCactus.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

; Function Attrs: nounwind optsize readnone ssp uwtable
define void @CCTKi_BindingsSchedule_Cactus() #0 {
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !31, metadata !38), !dbg !39
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !31, metadata !38), !dbg !39
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !31, metadata !38), !dbg !39
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !31, metadata !38), !dbg !39
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !31, metadata !38), !dbg !39
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !31, metadata !38), !dbg !39
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !31, metadata !38), !dbg !39
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !31, metadata !38), !dbg !39
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !31, metadata !38), !dbg !39
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !31, metadata !38), !dbg !39
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !31, metadata !38), !dbg !39
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !31, metadata !38), !dbg !39
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !31, metadata !38), !dbg !39
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !31, metadata !38), !dbg !39
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !31, metadata !38), !dbg !39
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !31, metadata !38), !dbg !39
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !31, metadata !38), !dbg !39
  ret void, !dbg !40
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!34, !35, !36}
!llvm.ident = !{!37}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleCactus.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "CCTKi_BindingsSchedule_Cactus", scope: !1, file: !1, line: 30, type: !5, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @CCTKi_BindingsSchedule_Cactus, variables: !7)
!5 = !DISubroutineType(types: !6)
!6 = !{null}
!7 = !{!8, !11, !12, !16, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31}
!8 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_final_time", scope: !4, file: !1, line: 32, type: !9)
!9 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!10 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!11 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_initial_time", scope: !4, file: !1, line: 32, type: !9)
!12 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "terminate", scope: !4, file: !1, line: 32, type: !13)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!15 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!16 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_itlast", scope: !4, file: !1, line: 32, type: !17)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!18 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!19 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "terminate_next", scope: !4, file: !1, line: 32, type: !17)
!20 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_run_title", scope: !4, file: !1, line: 32, type: !13)
!21 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_timer_output", scope: !4, file: !1, line: 32, type: !13)
!22 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "allow_mixeddim_gfs", scope: !4, file: !1, line: 32, type: !17)
!23 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_brief_output", scope: !4, file: !1, line: 32, type: !17)
!24 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_full_warnings", scope: !4, file: !1, line: 32, type: !17)
!25 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_show_banners", scope: !4, file: !1, line: 32, type: !17)
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_show_schedule", scope: !4, file: !1, line: 32, type: !17)
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_strong_param_check", scope: !4, file: !1, line: 32, type: !17)
!28 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "manual_cache_setup", scope: !4, file: !1, line: 32, type: !17)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "manual_cache_size", scope: !4, file: !1, line: 32, type: !17)
!30 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "manual_cacheline_bytes", scope: !4, file: !1, line: 32, type: !17)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_pdummy_pointer", scope: !4, file: !1, line: 32, type: !32)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!34 = !{i32 2, !"Dwarf Version", i32 2}
!35 = !{i32 2, !"Debug Info Version", i32 700000003}
!36 = !{i32 1, !"PIC Level", i32 2}
!37 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!38 = !DIExpression()
!39 = !DILocation(line: 32, column: 3, scope: !4)
!40 = !DILocation(line: 34, column: 22, scope: !4)
