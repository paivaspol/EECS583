; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/BindingsParameters.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

; Function Attrs: nounwind optsize ssp uwtable
define i32 @CCTKi_BindingsParametersInitialise() #0 {
  %1 = tail call i32 @CCTKi_BindingsCreateIOASCIIParameters() #2, !dbg !12
  %2 = tail call i32 @CCTKi_BindingsCreateBenchADMParameters() #2, !dbg !13
  %3 = tail call i32 @CCTKi_BindingsCreateCactusParameters() #2, !dbg !14
  %4 = tail call i32 @CCTKi_BindingsCreateBoundaryParameters() #2, !dbg !15
  %5 = tail call i32 @CCTKi_BindingsCreatePUGHParameters() #2, !dbg !16
  %6 = tail call i32 @CCTKi_BindingsCreateIOUtilParameters() #2, !dbg !17
  %7 = tail call i32 @CCTKi_BindingsCreatePUGHSlabParameters() #2, !dbg !18
  %8 = tail call i32 @CCTKi_BindingsCreateCartGrid3DParameters() #2, !dbg !19
  %9 = tail call i32 @CCTKi_BindingsCreateIOBasicParameters() #2, !dbg !20
  %10 = tail call i32 @CCTKi_BindingsCreatePUGHReduceParameters() #2, !dbg !21
  %11 = tail call i32 @CCTKi_BindingsCreateIDLinearWavesParameters() #2, !dbg !22
  %12 = tail call i32 @CCTKi_BindingsCreateTimeParameters() #2, !dbg !23
  %13 = tail call i32 @CCTKi_BindingsCreateEinsteinParameters() #2, !dbg !24
  %14 = tail call i32 @CCTKi_BindingsIOASCIIParameterExtensions() #2, !dbg !25
  %15 = tail call i32 @CCTKi_BindingsBenchADMParameterExtensions() #2, !dbg !26
  %16 = tail call i32 @CCTKi_BindingsCactusParameterExtensions() #2, !dbg !27
  %17 = tail call i32 @CCTKi_BindingsBoundaryParameterExtensions() #2, !dbg !28
  %18 = tail call i32 @CCTKi_BindingsPUGHParameterExtensions() #2, !dbg !29
  %19 = tail call i32 @CCTKi_BindingsIOUtilParameterExtensions() #2, !dbg !30
  %20 = tail call i32 @CCTKi_BindingsPUGHSlabParameterExtensions() #2, !dbg !31
  %21 = tail call i32 @CCTKi_BindingsCartGrid3DParameterExtensions() #2, !dbg !32
  %22 = tail call i32 @CCTKi_BindingsIOBasicParameterExtensions() #2, !dbg !33
  %23 = tail call i32 @CCTKi_BindingsPUGHReduceParameterExtensions() #2, !dbg !34
  %24 = tail call i32 @CCTKi_BindingsIDLinearWavesParameterExtensions() #2, !dbg !35
  %25 = tail call i32 @CCTKi_BindingsTimeParameterExtensions() #2, !dbg !36
  %26 = tail call i32 @CCTKi_BindingsEinsteinParameterExtensions() #2, !dbg !37
  ret i32 0, !dbg !38
}

; Function Attrs: optsize
declare i32 @CCTKi_BindingsCreateIOASCIIParameters() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsCreateBenchADMParameters() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsCreateCactusParameters() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsCreateBoundaryParameters() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsCreatePUGHParameters() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsCreateIOUtilParameters() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsCreatePUGHSlabParameters() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsCreateCartGrid3DParameters() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsCreateIOBasicParameters() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsCreatePUGHReduceParameters() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsCreateIDLinearWavesParameters() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsCreateTimeParameters() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsCreateEinsteinParameters() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsIOASCIIParameterExtensions() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsBenchADMParameterExtensions() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsCactusParameterExtensions() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsBoundaryParameterExtensions() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsPUGHParameterExtensions() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsIOUtilParameterExtensions() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsPUGHSlabParameterExtensions() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsCartGrid3DParameterExtensions() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsIOBasicParameterExtensions() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsPUGHReduceParameterExtensions() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsIDLinearWavesParameterExtensions() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsTimeParameterExtensions() #1

; Function Attrs: optsize
declare i32 @CCTKi_BindingsEinsteinParameterExtensions() #1

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/CactusBindings/BindingsParameters.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "CCTKi_BindingsParametersInitialise", scope: !1, file: !1, line: 64, type: !5, isLocal: false, isDefinition: true, scopeLine: 65, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @CCTKi_BindingsParametersInitialise, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!8 = !{i32 2, !"Dwarf Version", i32 2}
!9 = !{i32 2, !"Debug Info Version", i32 700000003}
!10 = !{i32 1, !"PIC Level", i32 2}
!11 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!12 = !DILocation(line: 67, column: 3, scope: !4)
!13 = !DILocation(line: 69, column: 3, scope: !4)
!14 = !DILocation(line: 71, column: 3, scope: !4)
!15 = !DILocation(line: 73, column: 3, scope: !4)
!16 = !DILocation(line: 75, column: 3, scope: !4)
!17 = !DILocation(line: 77, column: 3, scope: !4)
!18 = !DILocation(line: 79, column: 3, scope: !4)
!19 = !DILocation(line: 81, column: 3, scope: !4)
!20 = !DILocation(line: 83, column: 3, scope: !4)
!21 = !DILocation(line: 85, column: 3, scope: !4)
!22 = !DILocation(line: 87, column: 3, scope: !4)
!23 = !DILocation(line: 89, column: 3, scope: !4)
!24 = !DILocation(line: 91, column: 3, scope: !4)
!25 = !DILocation(line: 93, column: 3, scope: !4)
!26 = !DILocation(line: 95, column: 3, scope: !4)
!27 = !DILocation(line: 97, column: 3, scope: !4)
!28 = !DILocation(line: 99, column: 3, scope: !4)
!29 = !DILocation(line: 101, column: 3, scope: !4)
!30 = !DILocation(line: 103, column: 3, scope: !4)
!31 = !DILocation(line: 105, column: 3, scope: !4)
!32 = !DILocation(line: 107, column: 3, scope: !4)
!33 = !DILocation(line: 109, column: 3, scope: !4)
!34 = !DILocation(line: 111, column: 3, scope: !4)
!35 = !DILocation(line: 113, column: 3, scope: !4)
!36 = !DILocation(line: 115, column: 3, scope: !4)
!37 = !DILocation(line: 117, column: 3, scope: !4)
!38 = !DILocation(line: 119, column: 1, scope: !4)
