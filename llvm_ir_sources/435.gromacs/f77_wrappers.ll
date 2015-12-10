; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/f77_wrappers.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind optsize uwtable
define float @cerfc_(float* nocapture %x) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{float* %x}, i64 0, metadata !12), !dbg !19
  %0 = load float* %x, align 4, !dbg !20, !tbaa !21
  %conv = fpext float %0 to double, !dbg !20
  %call = tail call double @erfc(double %conv) #3, !dbg !20
  %conv1 = fptrunc double %call to float, !dbg !20
  ret float %conv1, !dbg !20
}

; Function Attrs: nounwind optsize
declare double @erfc(double) #1

; Function Attrs: nounwind optsize uwtable
define float @cpow_(float* nocapture %x, float* nocapture %y) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{float* %x}, i64 0, metadata !17), !dbg !24
  tail call void @llvm.dbg.value(metadata !{float* %y}, i64 0, metadata !18), !dbg !24
  %0 = load float* %x, align 4, !dbg !25, !tbaa !21
  %conv = fpext float %0 to double, !dbg !25
  %1 = load float* %y, align 4, !dbg !25, !tbaa !21
  %conv1 = fpext float %1 to double, !dbg !25
  %call = tail call double @pow(double %conv, double %conv1) #3, !dbg !25
  %conv2 = fptrunc double %call to float, !dbg !25
  ret float %conv2, !dbg !25
}

; Function Attrs: nounwind optsize
declare double @pow(double, double) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/f77_wrappers.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/f77_wrappers.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !13}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cerfc_", metadata !"cerfc_", metadata !"", i32 46, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (float*)* @cerfc_, null, null, metadata !11, i32 47} ; [ DW_TAG_subprogram ] [line 46] [def] [scope 47] [cerfc_]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/f77_wrappers.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !10}
!8 = metadata !{i32 786454, metadata !1, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!9 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!10 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from real]
!11 = metadata !{metadata !12}
!12 = metadata !{i32 786689, metadata !4, metadata !"x", metadata !5, i32 16777262, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 46]
!13 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cpow_", metadata !"cpow_", metadata !"", i32 51, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (float*, float*)* @cpow_, null, null, metadata !16, i32 52} ; [ DW_TAG_subprogram ] [line 51] [def] [scope 52] [cpow_]
!14 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!15 = metadata !{metadata !8, metadata !10, metadata !10}
!16 = metadata !{metadata !17, metadata !18}
!17 = metadata !{i32 786689, metadata !13, metadata !"x", metadata !5, i32 16777267, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 51]
!18 = metadata !{i32 786689, metadata !13, metadata !"y", metadata !5, i32 33554483, metadata !10, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 51]
!19 = metadata !{i32 46, i32 0, metadata !4, null}
!20 = metadata !{i32 48, i32 0, metadata !4, null}
!21 = metadata !{metadata !"float", metadata !22}
!22 = metadata !{metadata !"omnipotent char", metadata !23}
!23 = metadata !{metadata !"Simple C/C++ TBAA"}
!24 = metadata !{i32 51, i32 0, metadata !13, null}
!25 = metadata !{i32 53, i32 0, metadata !13, null}
