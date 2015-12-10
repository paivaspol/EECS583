; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/macros.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZERO = global float 0.000000e+00, align 4
@THIRD = global float 0x3FD5555560000000, align 4
@HALF = global float 5.000000e-01, align 4
@ONE = global float 1.000000e+00, align 4
@TWO = global float 2.000000e+00, align 4
@THREE = global float 3.000000e+00, align 4
@SIX = global float 6.000000e+00, align 4
@TEN = global float 1.000000e+01, align 4
@TWELVE = global float 1.200000e+01, align 4

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !2, metadata !3, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/macros.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/435.gromacs/src/macros.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14, metadata !15}
!4 = metadata !{i32 786484, i32 0, null, metadata !"ZERO", metadata !"ZERO", metadata !"", metadata !5, i32 35, metadata !6, i32 0, i32 1, float* @ZERO, null} ; [ DW_TAG_variable ] [ZERO] [line 35] [def]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/435.gromacs/src/macros.c]
!6 = metadata !{i32 786454, metadata !1, null, metadata !"real", i32 87, i64 0, i64 0, i64 0, i32 0, metadata !7} ; [ DW_TAG_typedef ] [real] [line 87, size 0, align 0, offset 0] [from float]
!7 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!8 = metadata !{i32 786484, i32 0, null, metadata !"THIRD", metadata !"THIRD", metadata !"", metadata !5, i32 36, metadata !6, i32 0, i32 1, float* @THIRD, null} ; [ DW_TAG_variable ] [THIRD] [line 36] [def]
!9 = metadata !{i32 786484, i32 0, null, metadata !"HALF", metadata !"HALF", metadata !"", metadata !5, i32 37, metadata !6, i32 0, i32 1, float* @HALF, null} ; [ DW_TAG_variable ] [HALF] [line 37] [def]
!10 = metadata !{i32 786484, i32 0, null, metadata !"ONE", metadata !"ONE", metadata !"", metadata !5, i32 38, metadata !6, i32 0, i32 1, float* @ONE, null} ; [ DW_TAG_variable ] [ONE] [line 38] [def]
!11 = metadata !{i32 786484, i32 0, null, metadata !"TWO", metadata !"TWO", metadata !"", metadata !5, i32 39, metadata !6, i32 0, i32 1, float* @TWO, null} ; [ DW_TAG_variable ] [TWO] [line 39] [def]
!12 = metadata !{i32 786484, i32 0, null, metadata !"THREE", metadata !"THREE", metadata !"", metadata !5, i32 40, metadata !6, i32 0, i32 1, float* @THREE, null} ; [ DW_TAG_variable ] [THREE] [line 40] [def]
!13 = metadata !{i32 786484, i32 0, null, metadata !"SIX", metadata !"SIX", metadata !"", metadata !5, i32 41, metadata !6, i32 0, i32 1, float* @SIX, null} ; [ DW_TAG_variable ] [SIX] [line 41] [def]
!14 = metadata !{i32 786484, i32 0, null, metadata !"TEN", metadata !"TEN", metadata !"", metadata !5, i32 42, metadata !6, i32 0, i32 1, float* @TEN, null} ; [ DW_TAG_variable ] [TEN] [line 42] [def]
!15 = metadata !{i32 786484, i32 0, null, metadata !"TWELVE", metadata !"TWELVE", metadata !"", metadata !5, i32 43, metadata !6, i32 0, i32 1, float* @TWELVE, null} ; [ DW_TAG_variable ] [TWELVE] [line 43] [def]
