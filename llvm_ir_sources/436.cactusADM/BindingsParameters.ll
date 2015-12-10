; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/BindingsParameters.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_BindingsParametersInitialise() #0 {
entry:
  %call = tail call i32 @CCTKi_BindingsCreateIOASCIIParameters() #2, !dbg !9
  %call1 = tail call i32 @CCTKi_BindingsCreateBenchADMParameters() #2, !dbg !10
  %call2 = tail call i32 @CCTKi_BindingsCreateCactusParameters() #2, !dbg !11
  %call3 = tail call i32 @CCTKi_BindingsCreateBoundaryParameters() #2, !dbg !12
  %call4 = tail call i32 @CCTKi_BindingsCreatePUGHParameters() #2, !dbg !13
  %call5 = tail call i32 @CCTKi_BindingsCreateIOUtilParameters() #2, !dbg !14
  %call6 = tail call i32 @CCTKi_BindingsCreatePUGHSlabParameters() #2, !dbg !15
  %call7 = tail call i32 @CCTKi_BindingsCreateCartGrid3DParameters() #2, !dbg !16
  %call8 = tail call i32 @CCTKi_BindingsCreateIOBasicParameters() #2, !dbg !17
  %call9 = tail call i32 @CCTKi_BindingsCreatePUGHReduceParameters() #2, !dbg !18
  %call10 = tail call i32 @CCTKi_BindingsCreateIDLinearWavesParameters() #2, !dbg !19
  %call11 = tail call i32 @CCTKi_BindingsCreateTimeParameters() #2, !dbg !20
  %call12 = tail call i32 @CCTKi_BindingsCreateEinsteinParameters() #2, !dbg !21
  %call13 = tail call i32 @CCTKi_BindingsIOASCIIParameterExtensions() #2, !dbg !22
  %call14 = tail call i32 @CCTKi_BindingsBenchADMParameterExtensions() #2, !dbg !23
  %call15 = tail call i32 @CCTKi_BindingsCactusParameterExtensions() #2, !dbg !24
  %call16 = tail call i32 @CCTKi_BindingsBoundaryParameterExtensions() #2, !dbg !25
  %call17 = tail call i32 @CCTKi_BindingsPUGHParameterExtensions() #2, !dbg !26
  %call18 = tail call i32 @CCTKi_BindingsIOUtilParameterExtensions() #2, !dbg !27
  %call19 = tail call i32 @CCTKi_BindingsPUGHSlabParameterExtensions() #2, !dbg !28
  %call20 = tail call i32 @CCTKi_BindingsCartGrid3DParameterExtensions() #2, !dbg !29
  %call21 = tail call i32 @CCTKi_BindingsIOBasicParameterExtensions() #2, !dbg !30
  %call22 = tail call i32 @CCTKi_BindingsPUGHReduceParameterExtensions() #2, !dbg !31
  %call23 = tail call i32 @CCTKi_BindingsIDLinearWavesParameterExtensions() #2, !dbg !32
  %call24 = tail call i32 @CCTKi_BindingsTimeParameterExtensions() #2, !dbg !33
  %call25 = tail call i32 @CCTKi_BindingsEinsteinParameterExtensions() #2, !dbg !34
  ret i32 0, !dbg !35
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

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/BindingsParameters.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/BindingsParameters.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_BindingsParametersInitialise", metadata !"CCTKi_BindingsParametersInitialise", metadata !"", i32 64, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @CCTKi_BindingsParametersInitialise, null, null, metadata !2, i32 65} ; [ DW_TAG_subprogram ] [line 64] [def] [scope 65] [CCTKi_BindingsParametersInitialise]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/BindingsParameters.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 67, i32 0, metadata !4, null}
!10 = metadata !{i32 69, i32 0, metadata !4, null}
!11 = metadata !{i32 71, i32 0, metadata !4, null}
!12 = metadata !{i32 73, i32 0, metadata !4, null}
!13 = metadata !{i32 75, i32 0, metadata !4, null}
!14 = metadata !{i32 77, i32 0, metadata !4, null}
!15 = metadata !{i32 79, i32 0, metadata !4, null}
!16 = metadata !{i32 81, i32 0, metadata !4, null}
!17 = metadata !{i32 83, i32 0, metadata !4, null}
!18 = metadata !{i32 85, i32 0, metadata !4, null}
!19 = metadata !{i32 87, i32 0, metadata !4, null}
!20 = metadata !{i32 89, i32 0, metadata !4, null}
!21 = metadata !{i32 91, i32 0, metadata !4, null}
!22 = metadata !{i32 93, i32 0, metadata !4, null}
!23 = metadata !{i32 95, i32 0, metadata !4, null}
!24 = metadata !{i32 97, i32 0, metadata !4, null}
!25 = metadata !{i32 99, i32 0, metadata !4, null}
!26 = metadata !{i32 101, i32 0, metadata !4, null}
!27 = metadata !{i32 103, i32 0, metadata !4, null}
!28 = metadata !{i32 105, i32 0, metadata !4, null}
!29 = metadata !{i32 107, i32 0, metadata !4, null}
!30 = metadata !{i32 109, i32 0, metadata !4, null}
!31 = metadata !{i32 111, i32 0, metadata !4, null}
!32 = metadata !{i32 113, i32 0, metadata !4, null}
!33 = metadata !{i32 115, i32 0, metadata !4, null}
!34 = metadata !{i32 117, i32 0, metadata !4, null}
!35 = metadata !{i32 119, i32 0, metadata !4, null}
