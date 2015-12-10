; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/CACTUS_private.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@cactuspriv_ = common global %struct.anon zeroinitializer, align 8

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !2, metadata !3, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/CACTUS_private.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/CACTUS_private.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786484, i32 0, null, metadata !"cactuspriv_", metadata !"cactuspriv_", metadata !"", metadata !5, i32 26, metadata !6, i32 0, i32 1, %struct.anon* @cactuspriv_, null} ; [ DW_TAG_variable ] [cactuspriv_] [line 26] [def]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/CACTUS_private.c]
!6 = metadata !{i32 786451, metadata !1, null, metadata !"", i32 13, i64 448, i64 64, i32 0, i32 0, null, metadata !7, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 13, size 448, align 64, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !11, metadata !12, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21}
!8 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"cctk_run_title", i32 15, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_member ] [cctk_run_title] [line 15, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"cctk_timer_output", i32 16, i64 64, i64 64, i64 64, i32 0, metadata !9} ; [ DW_TAG_member ] [cctk_timer_output] [line 16, size 64, align 64, offset 64] [from ]
!12 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"allow_mixeddim_gfs", i32 17, i64 32, i64 32, i64 128, i32 0, metadata !13} ; [ DW_TAG_member ] [allow_mixeddim_gfs] [line 17, size 32, align 32, offset 128] [from int]
!13 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!14 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"cctk_brief_output", i32 18, i64 32, i64 32, i64 160, i32 0, metadata !13} ; [ DW_TAG_member ] [cctk_brief_output] [line 18, size 32, align 32, offset 160] [from int]
!15 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"cctk_full_warnings", i32 19, i64 32, i64 32, i64 192, i32 0, metadata !13} ; [ DW_TAG_member ] [cctk_full_warnings] [line 19, size 32, align 32, offset 192] [from int]
!16 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"cctk_show_banners", i32 20, i64 32, i64 32, i64 224, i32 0, metadata !13} ; [ DW_TAG_member ] [cctk_show_banners] [line 20, size 32, align 32, offset 224] [from int]
!17 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"cctk_show_schedule", i32 21, i64 32, i64 32, i64 256, i32 0, metadata !13} ; [ DW_TAG_member ] [cctk_show_schedule] [line 21, size 32, align 32, offset 256] [from int]
!18 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"cctk_strong_param_check", i32 22, i64 32, i64 32, i64 288, i32 0, metadata !13} ; [ DW_TAG_member ] [cctk_strong_param_check] [line 22, size 32, align 32, offset 288] [from int]
!19 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"manual_cache_setup", i32 23, i64 32, i64 32, i64 320, i32 0, metadata !13} ; [ DW_TAG_member ] [manual_cache_setup] [line 23, size 32, align 32, offset 320] [from int]
!20 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"manual_cache_size", i32 24, i64 32, i64 32, i64 352, i32 0, metadata !13} ; [ DW_TAG_member ] [manual_cache_size] [line 24, size 32, align 32, offset 352] [from int]
!21 = metadata !{i32 786445, metadata !1, metadata !6, metadata !"manual_cacheline_bytes", i32 25, i64 32, i64 32, i64 384, i32 0, metadata !13} ; [ DW_TAG_member ] [manual_cacheline_bytes] [line 25, size 32, align 32, offset 384] [from int]
