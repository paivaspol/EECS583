; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ParameterRecoveryIOBasic.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @CCTKi_BindingsParameterRecovery_IOBasic() #0 {
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !30, metadata !35), !dbg !36
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !27, metadata !35), !dbg !37
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !27, metadata !35), !dbg !37
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !27, metadata !35), !dbg !37
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !27, metadata !35), !dbg !37
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !27, metadata !35), !dbg !37
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !27, metadata !35), !dbg !37
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !27, metadata !35), !dbg !37
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !27, metadata !35), !dbg !37
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !27, metadata !35), !dbg !37
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !27, metadata !35), !dbg !37
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !27, metadata !35), !dbg !37
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !27, metadata !35), !dbg !37
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !27, metadata !35), !dbg !37
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !27, metadata !35), !dbg !37
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !27, metadata !35), !dbg !37
  ret i32 0, !dbg !38
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!31, !32, !33}
!llvm.ident = !{!34}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ParameterRecoveryIOBasic.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "CCTKi_BindingsParameterRecovery_IOBasic", scope: !1, file: !1, line: 30, type: !5, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @CCTKi_BindingsParameterRecovery_IOBasic, variables: !8)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !{!9, !13, !14, !15, !16, !17, !18, !19, !21, !22, !23, !24, !25, !26, !27, !30}
!9 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outInfo_reductions", scope: !4, file: !1, line: 32, type: !10)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!13 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outInfo_vars", scope: !4, file: !1, line: 32, type: !10)
!14 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outScalar_reductions", scope: !4, file: !1, line: 32, type: !10)
!15 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outScalar_style", scope: !4, file: !1, line: 32, type: !10)
!16 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outScalar_vars", scope: !4, file: !1, line: 32, type: !10)
!17 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_format", scope: !4, file: !1, line: 32, type: !10)
!18 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outdirScalar", scope: !4, file: !1, line: 32, type: !10)
!19 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outInfo_every", scope: !4, file: !1, line: 32, type: !20)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!21 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outScalar_every", scope: !4, file: !1, line: 32, type: !20)
!22 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outdir", scope: !4, file: !1, line: 32, type: !10)
!23 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_every", scope: !4, file: !1, line: 32, type: !20)
!24 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newverbose", scope: !4, file: !1, line: 32, type: !10)
!25 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_filename_scheme", scope: !4, file: !1, line: 32, type: !20)
!26 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "out_fileinfo", scope: !4, file: !1, line: 32, type: !10)
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_pdummy_pointer", scope: !4, file: !1, line: 32, type: !28)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!30 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !4, file: !1, line: 33, type: !7)
!31 = !{i32 2, !"Dwarf Version", i32 2}
!32 = !{i32 2, !"Debug Info Version", i32 700000003}
!33 = !{i32 1, !"PIC Level", i32 2}
!34 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!35 = !DIExpression()
!36 = !DILocation(line: 33, column: 7, scope: !4)
!37 = !DILocation(line: 32, column: 3, scope: !4)
!38 = !DILocation(line: 37, column: 26, scope: !4)
