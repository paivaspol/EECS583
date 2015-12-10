; ModuleID = '../../SPEC/benchspec/CPU2006/433.milc/src/cmplx.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.complex = type { double, double }

; Function Attrs: nounwind optsize readnone uwtable
define { double, double } @cmplx(double %x, double %y) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{double %x}, i64 0, metadata !16), !dbg !19
  tail call void @llvm.dbg.value(metadata !{double %y}, i64 0, metadata !17), !dbg !19
  tail call void @llvm.dbg.declare(metadata !20, metadata !18), !dbg !21
  %.fca.0.insert = insertvalue { double, double } undef, double %x, 0, !dbg !22
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %y, 1, !dbg !22
  ret { double, double } %.fca.1.insert, !dbg !22
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/cmplx.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/433.milc/src/cmplx.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cmplx", metadata !"cmplx", metadata !"", i32 8, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, { double, double } (double, double)* @cmplx, null, null, metadata !15, i32 8} ; [ DW_TAG_subprogram ] [line 8] [def] [cmplx]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/433.milc/src/cmplx.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !13, metadata !13}
!8 = metadata !{i32 786454, metadata !1, null, metadata !"complex", i32 76, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_typedef ] [complex] [line 76, size 0, align 0, offset 0] [from ]
!9 = metadata !{i32 786451, metadata !10, null, metadata !"", i32 73, i64 128, i64 64, i32 0, i32 0, null, metadata !11, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 73, size 128, align 64, offset 0] [from ]
!10 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/433.milc/src/complex.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!11 = metadata !{metadata !12, metadata !14}
!12 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"real", i32 74, i64 64, i64 64, i64 0, i32 0, metadata !13} ; [ DW_TAG_member ] [real] [line 74, size 64, align 64, offset 0] [from double]
!13 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!14 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"imag", i32 75, i64 64, i64 64, i64 64, i32 0, metadata !13} ; [ DW_TAG_member ] [imag] [line 75, size 64, align 64, offset 64] [from double]
!15 = metadata !{metadata !16, metadata !17, metadata !18}
!16 = metadata !{i32 786689, metadata !4, metadata !"x", metadata !5, i32 16777224, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 8]
!17 = metadata !{i32 786689, metadata !4, metadata !"y", metadata !5, i32 33554440, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 8]
!18 = metadata !{i32 786688, metadata !4, metadata !"c", metadata !5, i32 9, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [c] [line 9]
!19 = metadata !{i32 8, i32 0, metadata !4, null}
!20 = metadata !{%struct.complex* undef}
!21 = metadata !{i32 9, i32 0, metadata !4, null}
!22 = metadata !{i32 11, i32 0, metadata !4, null}
