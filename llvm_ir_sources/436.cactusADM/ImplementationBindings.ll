; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ImplementationBindings.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_BindingsImplementationsInitialise() #0 {
  %1 = tail call i32 @CCTKi_BindingsThorn_BenchADM() #2, !dbg !12
  %2 = tail call i32 @CCTKi_BindingsThorn_Boundary() #2, !dbg !13
  %3 = tail call i32 @CCTKi_BindingsThorn_Cactus() #2, !dbg !14
  %4 = tail call i32 @CCTKi_BindingsThorn_CartGrid3D() #2, !dbg !15
  %5 = tail call i32 @CCTKi_BindingsThorn_Einstein() #2, !dbg !16
  %6 = tail call i32 @CCTKi_BindingsThorn_IDLinearWaves() #2, !dbg !17
  %7 = tail call i32 @CCTKi_BindingsThorn_IOASCII() #2, !dbg !18
  %8 = tail call i32 @CCTKi_BindingsThorn_IOBasic() #2, !dbg !19
  %9 = tail call i32 @CCTKi_BindingsThorn_IOUtil() #2, !dbg !20
  %10 = tail call i32 @CCTKi_BindingsThorn_PUGH() #2, !dbg !21
  %11 = tail call i32 @CCTKi_BindingsThorn_PUGHReduce() #2, !dbg !22
  %12 = tail call i32 @CCTKi_BindingsThorn_PUGHSlab() #2, !dbg !23
  %13 = tail call i32 @CCTKi_BindingsThorn_Time() #2, !dbg !24
  ret i32 0, !dbg !25
}

; Function Attrs: optsize
declare i32 @CCTKi_BindingsThorn_BenchADM() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsThorn_Boundary() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsThorn_Cactus() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsThorn_CartGrid3D() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsThorn_Einstein() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsThorn_IDLinearWaves() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsThorn_IOASCII() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsThorn_IOBasic() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsThorn_IOUtil() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsThorn_PUGH() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsThorn_PUGHReduce() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsThorn_PUGHSlab() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsThorn_Time() #1

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ImplementationBindings.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "CCTKi_BindingsImplementationsInitialise", scope: !1, file: !1, line: 30, type: !5, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @CCTKi_BindingsImplementationsInitialise, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !{i32 2, !"Dwarf Version", i32 2}
!9 = !{i32 2, !"Debug Info Version", i32 700000003}
!10 = !{i32 1, !"PIC Level", i32 2}
!11 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!12 = !DILocation(line: 33, column: 3, scope: !4)
!13 = !DILocation(line: 35, column: 3, scope: !4)
!14 = !DILocation(line: 37, column: 3, scope: !4)
!15 = !DILocation(line: 39, column: 3, scope: !4)
!16 = !DILocation(line: 41, column: 3, scope: !4)
!17 = !DILocation(line: 43, column: 3, scope: !4)
!18 = !DILocation(line: 45, column: 3, scope: !4)
!19 = !DILocation(line: 47, column: 3, scope: !4)
!20 = !DILocation(line: 49, column: 3, scope: !4)
!21 = !DILocation(line: 51, column: 3, scope: !4)
!22 = !DILocation(line: 53, column: 3, scope: !4)
!23 = !DILocation(line: 55, column: 3, scope: !4)
!24 = !DILocation(line: 57, column: 3, scope: !4)
!25 = !DILocation(line: 60, column: 2, scope: !4)
