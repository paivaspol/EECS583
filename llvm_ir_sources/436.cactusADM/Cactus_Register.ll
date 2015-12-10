; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Cactus_Register.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @CCTKBindings_CactusAliases() #0 {
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !9, metadata !15), !dbg !16
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !10, metadata !15), !dbg !17
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !9, metadata !15), !dbg !16
  ret i32 0, !dbg !18
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/Cactus_Register.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "CCTKBindings_CactusAliases", scope: !1, file: !1, line: 15, type: !5, isLocal: false, isDefinition: true, scopeLine: 16, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @CCTKBindings_CactusAliases, variables: !8)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !{!9, !10}
!9 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !4, file: !1, line: 17, type: !7)
!10 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ierr", scope: !4, file: !1, line: 18, type: !7)
!11 = !{i32 2, !"Dwarf Version", i32 2}
!12 = !{i32 2, !"Debug Info Version", i32 700000003}
!13 = !{i32 1, !"PIC Level", i32 2}
!14 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!15 = !DIExpression()
!16 = !DILocation(line: 17, column: 7, scope: !4)
!17 = !DILocation(line: 18, column: 7, scope: !4)
!18 = !DILocation(line: 22, column: 3, scope: !4)
