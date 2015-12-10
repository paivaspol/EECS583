; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/EINSTEIN_restricted.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { double, double, double, double, double, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }

@einsteinrest_ = common global %struct.anon zeroinitializer, align 8

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !2, metadata !3, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/EINSTEIN_restricted.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/EINSTEIN_restricted.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786484, i32 0, null, metadata !"einsteinrest_", metadata !"einsteinrest_", metadata !"", metadata !5, i32 36, metadata !6, i32 0, i32 1, %struct.anon* @einsteinrest_, null} ; [ DW_TAG_variable ] [einsteinrest_] [line 36] [def]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/EINSTEIN_restricted.c]
!6 = metadata !{i32 786451, metadata !1, null, metadata !"", i32 13, i64 1152, i64 64, i32 0, i32 0, null, metadata !7, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 13, size 1152, align 64, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32}
!8 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"gaussian_amplitude", i32 15, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_member ] [gaussian_amplitude] [line 15, size 64, align 64, offset 0] [from double]
!9 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!10 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"gaussian_sigma2", i32 16, i64 64, i64 64, i64 64, i32 0, metadata !9} ; [ DW_TAG_member ] [gaussian_sigma2] [line 16, size 64, align 64, offset 64] [from double]
!11 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"psiminustwo_cut", i32 17, i64 64, i64 64, i64 128, i32 0, metadata !9} ; [ DW_TAG_member ] [psiminustwo_cut] [line 17, size 64, align 64, offset 128] [from double]
!12 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"rot_shift_att_sigma", i32 18, i64 64, i64 64, i64 192, i32 0, metadata !9} ; [ DW_TAG_member ] [rot_shift_att_sigma] [line 18, size 64, align 64, offset 192] [from double]
!13 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"rotation_omega", i32 19, i64 64, i64 64, i64 256, i32 0, metadata !9} ; [ DW_TAG_member ] [rotation_omega] [line 19, size 64, align 64, offset 256] [from double]
!14 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"advection", i32 20, i64 64, i64 64, i64 320, i32 0, metadata !15} ; [ DW_TAG_member ] [advection] [line 20, size 64, align 64, offset 320] [from ]
!15 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!16 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!17 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"evolution_system", i32 21, i64 64, i64 64, i64 384, i32 0, metadata !15} ; [ DW_TAG_member ] [evolution_system] [line 21, size 64, align 64, offset 384] [from ]
!18 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"initial_data", i32 22, i64 64, i64 64, i64 448, i32 0, metadata !15} ; [ DW_TAG_member ] [initial_data] [line 22, size 64, align 64, offset 448] [from ]
!19 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"initial_lapse", i32 23, i64 64, i64 64, i64 512, i32 0, metadata !15} ; [ DW_TAG_member ] [initial_lapse] [line 23, size 64, align 64, offset 512] [from ]
!20 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"initial_shift", i32 24, i64 64, i64 64, i64 576, i32 0, metadata !15} ; [ DW_TAG_member ] [initial_shift] [line 24, size 64, align 64, offset 576] [from ]
!21 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"mixed_slicing", i32 25, i64 64, i64 64, i64 640, i32 0, metadata !15} ; [ DW_TAG_member ] [mixed_slicing] [line 25, size 64, align 64, offset 640] [from ]
!22 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"shift", i32 26, i64 64, i64 64, i64 704, i32 0, metadata !15} ; [ DW_TAG_member ] [shift] [line 26, size 64, align 64, offset 704] [from ]
!23 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"slicing", i32 27, i64 64, i64 64, i64 768, i32 0, metadata !15} ; [ DW_TAG_member ] [slicing] [line 27, size 64, align 64, offset 768] [from ]
!24 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"slicing_verbose", i32 28, i64 64, i64 64, i64 832, i32 0, metadata !15} ; [ DW_TAG_member ] [slicing_verbose] [line 28, size 64, align 64, offset 832] [from ]
!25 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"einstein_register_slicing", i32 29, i64 32, i64 32, i64 896, i32 0, metadata !26} ; [ DW_TAG_member ] [einstein_register_slicing] [line 29, size 32, align 32, offset 896] [from int]
!26 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!27 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"rot_shift_att", i32 30, i64 32, i64 32, i64 928, i32 0, metadata !26} ; [ DW_TAG_member ] [rot_shift_att] [line 30, size 32, align 32, offset 928] [from int]
!28 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"rot_shift_att_pow", i32 31, i64 32, i64 32, i64 960, i32 0, metadata !26} ; [ DW_TAG_member ] [rot_shift_att_pow] [line 31, size 32, align 32, offset 960] [from int]
!29 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"rotation_psipower", i32 32, i64 32, i64 32, i64 992, i32 0, metadata !26} ; [ DW_TAG_member ] [rotation_psipower] [line 32, size 32, align 32, offset 992] [from int]
!30 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"use_conformal", i32 33, i64 32, i64 32, i64 1024, i32 0, metadata !26} ; [ DW_TAG_member ] [use_conformal] [line 33, size 32, align 32, offset 1024] [from int]
!31 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"use_conformal_derivs", i32 34, i64 32, i64 32, i64 1056, i32 0, metadata !26} ; [ DW_TAG_member ] [use_conformal_derivs] [line 34, size 32, align 32, offset 1056] [from int]
!32 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"use_mask", i32 35, i64 32, i64 32, i64 1088, i32 0, metadata !26} ; [ DW_TAG_member ] [use_mask] [line 35, size 32, align 32, offset 1088] [from int]
