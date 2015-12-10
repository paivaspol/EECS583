; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ParameterRecoveryPUGHReduce.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @CCTKi_BindingsParameterRecovery_PUGHReduce() #0 {
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !12, metadata !17), !dbg !18
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !9, metadata !17), !dbg !19
  ret i32 0, !dbg !20
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ParameterRecoveryPUGHReduce.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "CCTKi_BindingsParameterRecovery_PUGHReduce", scope: !1, file: !1, line: 30, type: !5, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @CCTKi_BindingsParameterRecovery_PUGHReduce, variables: !8)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !{!9, !12}
!9 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_pdummy_pointer", scope: !4, file: !1, line: 32, type: !10)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!12 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !4, file: !1, line: 33, type: !7)
!13 = !{i32 2, !"Dwarf Version", i32 2}
!14 = !{i32 2, !"Debug Info Version", i32 700000003}
!15 = !{i32 1, !"PIC Level", i32 2}
!16 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!17 = !DIExpression()
!18 = !DILocation(line: 33, column: 7, scope: !4)
!19 = !DILocation(line: 32, column: 3, scope: !4)
!20 = !DILocation(line: 37, column: 26, scope: !4)
