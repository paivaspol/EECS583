; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/CreatePUGHReduceParameters.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @CCTKi_BindingsCreatePUGHReduceParameters() #0 {
  ret i32 0, !dbg !13
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @CCTKi_BindingsPUGHReduceParameterExtensions() #0 {
  ret i32 0, !dbg !14
}

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/CreatePUGHReduceParameters.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !8}
!4 = !DISubprogram(name: "CCTKi_BindingsCreatePUGHReduceParameters", scope: !1, file: !1, line: 13, type: !5, isLocal: false, isDefinition: true, scopeLine: 14, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @CCTKi_BindingsCreatePUGHReduceParameters, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !DISubprogram(name: "CCTKi_BindingsPUGHReduceParameterExtensions", scope: !1, file: !1, line: 20, type: !5, isLocal: false, isDefinition: true, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @CCTKi_BindingsPUGHReduceParameterExtensions, variables: !2)
!9 = !{i32 2, !"Dwarf Version", i32 2}
!10 = !{i32 2, !"Debug Info Version", i32 700000003}
!11 = !{i32 1, !"PIC Level", i32 2}
!12 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!13 = !DILocation(line: 15, column: 3, scope: !4)
!14 = !DILocation(line: 22, column: 3, scope: !8)
