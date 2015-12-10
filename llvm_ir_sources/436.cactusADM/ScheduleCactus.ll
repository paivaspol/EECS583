; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleCactus.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind optsize readnone uwtable
define void @CCTKi_BindingsSchedule_Cactus() #0 {
entry:
  tail call void @llvm.dbg.value(metadata !35, i64 0, metadata !32), !dbg !36
  tail call void @llvm.dbg.value(metadata !35, i64 0, metadata !32), !dbg !36
  tail call void @llvm.dbg.value(metadata !35, i64 0, metadata !32), !dbg !36
  tail call void @llvm.dbg.value(metadata !35, i64 0, metadata !32), !dbg !36
  tail call void @llvm.dbg.value(metadata !35, i64 0, metadata !32), !dbg !36
  tail call void @llvm.dbg.value(metadata !35, i64 0, metadata !32), !dbg !36
  tail call void @llvm.dbg.value(metadata !35, i64 0, metadata !32), !dbg !36
  tail call void @llvm.dbg.value(metadata !35, i64 0, metadata !32), !dbg !36
  tail call void @llvm.dbg.value(metadata !35, i64 0, metadata !32), !dbg !36
  tail call void @llvm.dbg.value(metadata !35, i64 0, metadata !32), !dbg !36
  tail call void @llvm.dbg.value(metadata !35, i64 0, metadata !32), !dbg !36
  tail call void @llvm.dbg.value(metadata !35, i64 0, metadata !32), !dbg !36
  tail call void @llvm.dbg.value(metadata !35, i64 0, metadata !32), !dbg !36
  tail call void @llvm.dbg.value(metadata !35, i64 0, metadata !32), !dbg !36
  tail call void @llvm.dbg.value(metadata !35, i64 0, metadata !32), !dbg !36
  tail call void @llvm.dbg.value(metadata !35, i64 0, metadata !32), !dbg !36
  tail call void @llvm.dbg.value(metadata !35, i64 0, metadata !32), !dbg !36
  ret void, !dbg !36
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleCactus.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleCactus.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_BindingsSchedule_Cactus", metadata !"CCTKi_BindingsSchedule_Cactus", metadata !"", i32 30, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @CCTKi_BindingsSchedule_Cactus, null, null, metadata !8, i32 31} ; [ DW_TAG_subprogram ] [line 30] [def] [scope 31] [CCTKi_BindingsSchedule_Cactus]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleCactus.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null}
!8 = metadata !{metadata !9, metadata !12, metadata !13, metadata !17, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32}
!9 = metadata !{i32 786688, metadata !4, metadata !"cctk_final_time", metadata !5, i32 32, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_final_time] [line 32]
!10 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from double]
!11 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!12 = metadata !{i32 786688, metadata !4, metadata !"cctk_initial_time", metadata !5, i32 32, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_initial_time] [line 32]
!13 = metadata !{i32 786688, metadata !4, metadata !"terminate", metadata !5, i32 32, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [terminate] [line 32]
!14 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!15 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!16 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!17 = metadata !{i32 786688, metadata !4, metadata !"cctk_itlast", metadata !5, i32 32, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_itlast] [line 32]
!18 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!19 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!20 = metadata !{i32 786688, metadata !4, metadata !"terminate_next", metadata !5, i32 32, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [terminate_next] [line 32]
!21 = metadata !{i32 786688, metadata !4, metadata !"cctk_run_title", metadata !5, i32 32, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_run_title] [line 32]
!22 = metadata !{i32 786688, metadata !4, metadata !"cctk_timer_output", metadata !5, i32 32, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_timer_output] [line 32]
!23 = metadata !{i32 786688, metadata !4, metadata !"allow_mixeddim_gfs", metadata !5, i32 32, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allow_mixeddim_gfs] [line 32]
!24 = metadata !{i32 786688, metadata !4, metadata !"cctk_brief_output", metadata !5, i32 32, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_brief_output] [line 32]
!25 = metadata !{i32 786688, metadata !4, metadata !"cctk_full_warnings", metadata !5, i32 32, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_full_warnings] [line 32]
!26 = metadata !{i32 786688, metadata !4, metadata !"cctk_show_banners", metadata !5, i32 32, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_show_banners] [line 32]
!27 = metadata !{i32 786688, metadata !4, metadata !"cctk_show_schedule", metadata !5, i32 32, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_show_schedule] [line 32]
!28 = metadata !{i32 786688, metadata !4, metadata !"cctk_strong_param_check", metadata !5, i32 32, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_strong_param_check] [line 32]
!29 = metadata !{i32 786688, metadata !4, metadata !"manual_cache_setup", metadata !5, i32 32, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [manual_cache_setup] [line 32]
!30 = metadata !{i32 786688, metadata !4, metadata !"manual_cache_size", metadata !5, i32 32, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [manual_cache_size] [line 32]
!31 = metadata !{i32 786688, metadata !4, metadata !"manual_cacheline_bytes", metadata !5, i32 32, metadata !18, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [manual_cacheline_bytes] [line 32]
!32 = metadata !{i32 786688, metadata !4, metadata !"cctk_pdummy_pointer", metadata !5, i32 32, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_pdummy_pointer] [line 32]
!33 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !34} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!34 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!35 = metadata !{i8* undef}
!36 = metadata !{i32 34, i32 0, metadata !4, null}
