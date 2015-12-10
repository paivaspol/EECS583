; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ImplementationBindings.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_BindingsImplementationsInitialise() #0 {
entry:
  %call = tail call i32 @CCTKi_BindingsThorn_BenchADM() #2, !dbg !9
  %call1 = tail call i32 @CCTKi_BindingsThorn_Boundary() #2, !dbg !10
  %call2 = tail call i32 @CCTKi_BindingsThorn_Cactus() #2, !dbg !11
  %call3 = tail call i32 @CCTKi_BindingsThorn_CartGrid3D() #2, !dbg !12
  %call4 = tail call i32 @CCTKi_BindingsThorn_Einstein() #2, !dbg !13
  %call5 = tail call i32 @CCTKi_BindingsThorn_IDLinearWaves() #2, !dbg !14
  %call6 = tail call i32 @CCTKi_BindingsThorn_IOASCII() #2, !dbg !15
  %call7 = tail call i32 @CCTKi_BindingsThorn_IOBasic() #2, !dbg !16
  %call8 = tail call i32 @CCTKi_BindingsThorn_IOUtil() #2, !dbg !17
  %call9 = tail call i32 @CCTKi_BindingsThorn_PUGH() #2, !dbg !18
  %call10 = tail call i32 @CCTKi_BindingsThorn_PUGHReduce() #2, !dbg !19
  %call11 = tail call i32 @CCTKi_BindingsThorn_PUGHSlab() #2, !dbg !20
  %call12 = tail call i32 @CCTKi_BindingsThorn_Time() #2, !dbg !21
  ret i32 0, !dbg !22
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

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ImplementationBindings.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ImplementationBindings.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_BindingsImplementationsInitialise", metadata !"CCTKi_BindingsImplementationsInitialise", metadata !"", i32 30, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @CCTKi_BindingsImplementationsInitialise, null, null, metadata !2, i32 31} ; [ DW_TAG_subprogram ] [line 30] [def] [scope 31] [CCTKi_BindingsImplementationsInitialise]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ImplementationBindings.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 33, i32 0, metadata !4, null}
!10 = metadata !{i32 35, i32 0, metadata !4, null}
!11 = metadata !{i32 37, i32 0, metadata !4, null}
!12 = metadata !{i32 39, i32 0, metadata !4, null}
!13 = metadata !{i32 41, i32 0, metadata !4, null}
!14 = metadata !{i32 43, i32 0, metadata !4, null}
!15 = metadata !{i32 45, i32 0, metadata !4, null}
!16 = metadata !{i32 47, i32 0, metadata !4, null}
!17 = metadata !{i32 49, i32 0, metadata !4, null}
!18 = metadata !{i32 51, i32 0, metadata !4, null}
!19 = metadata !{i32 53, i32 0, metadata !4, null}
!20 = metadata !{i32 55, i32 0, metadata !4, null}
!21 = metadata !{i32 57, i32 0, metadata !4, null}
!22 = metadata !{i32 60, i32 0, metadata !4, null}
