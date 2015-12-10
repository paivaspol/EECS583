; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/SetupCache.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.0 = type { i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@cactuspriv_ = external global %struct.anon.0
@.str = private unnamed_addr constant [86 x i8] c"$Header: /cactus/Cactus/src/main/SetupCache.c,v 1.10 2001/11/05 14:58:54 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_main_SetupCache_c() #0 {
entry:
  ret i8* getelementptr inbounds ([86 x i8]* @.str, i64 0, i64 0), !dbg !43
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_SetupCache() #1 {
entry:
  %0 = load i64* bitcast (i32* getelementptr inbounds (%struct.anon.0* @cactuspriv_, i64 0, i32 8) to i64*), align 8, !dbg !44
  %1 = trunc i64 %0 to i32, !dbg !44
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !35), !dbg !44
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !37), !dbg !44
  %tobool = icmp eq i32 %1, 0, !dbg !45
  br i1 %tobool, label %if.end, label %if.then, !dbg !45

if.then:                                          ; preds = %entry
  %2 = load i32* getelementptr inbounds (%struct.anon.0* @cactuspriv_, i64 0, i32 10), align 8, !dbg !44, !tbaa !46
  %conv = ashr i64 %0, 32, !dbg !49
  tail call void @llvm.dbg.value(metadata !{i64 %conv}, i64 0, metadata !16), !dbg !49
  %conv1 = sext i32 %2 to i64, !dbg !51
  tail call void @llvm.dbg.value(metadata !{i64 %conv1}, i64 0, metadata !18), !dbg !51
  br label %if.end, !dbg !52

if.end:                                           ; preds = %entry, %if.then
  %cacheline_bytes.0 = phi i64 [ %conv1, %if.then ], [ 128, %entry ]
  %cache_size.0 = phi i64 [ %conv, %if.then ], [ 8388608, %entry ]
  %call = tail call i32 @Utili_CacheDataSet(i64 %cacheline_bytes.0, i64 %cache_size.0) #4, !dbg !53
  tail call void @llvm.dbg.value(metadata !54, i64 0, metadata !38), !dbg !55
  tail call void @llvm.dbg.value(metadata !54, i64 0, metadata !38), !dbg !55
  tail call void @llvm.dbg.value(metadata !54, i64 0, metadata !38), !dbg !55
  tail call void @llvm.dbg.value(metadata !54, i64 0, metadata !38), !dbg !55
  tail call void @llvm.dbg.value(metadata !54, i64 0, metadata !38), !dbg !55
  tail call void @llvm.dbg.value(metadata !54, i64 0, metadata !38), !dbg !55
  tail call void @llvm.dbg.value(metadata !54, i64 0, metadata !38), !dbg !55
  tail call void @llvm.dbg.value(metadata !54, i64 0, metadata !38), !dbg !55
  tail call void @llvm.dbg.value(metadata !54, i64 0, metadata !38), !dbg !55
  tail call void @llvm.dbg.value(metadata !54, i64 0, metadata !38), !dbg !55
  tail call void @llvm.dbg.value(metadata !54, i64 0, metadata !38), !dbg !55
  tail call void @llvm.dbg.value(metadata !54, i64 0, metadata !38), !dbg !55
  tail call void @llvm.dbg.value(metadata !54, i64 0, metadata !38), !dbg !55
  tail call void @llvm.dbg.value(metadata !54, i64 0, metadata !38), !dbg !55
  tail call void @llvm.dbg.value(metadata !54, i64 0, metadata !38), !dbg !55
  tail call void @llvm.dbg.value(metadata !54, i64 0, metadata !38), !dbg !55
  tail call void @llvm.dbg.value(metadata !54, i64 0, metadata !38), !dbg !55
  ret i32 0, !dbg !55
}

; Function Attrs: optsize
declare i32 @Utili_CacheDataSet(i64, i64) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #3

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !41, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/SetupCache.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/SetupCache.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_main_SetupCache_c", metadata !"CCTKi_version_main_SetupCache_c", metadata !"", i32 22, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_main_SetupCache_c, null, null, metadata !2, i32 22} ; [ DW_TAG_subprogram ] [line 22] [def] [CCTKi_version_main_SetupCache_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/SetupCache.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_SetupCache", metadata !"CCTKi_SetupCache", metadata !"", i32 42, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @CCTKi_SetupCache, null, null, metadata !15, i32 43} ; [ DW_TAG_subprogram ] [line 42] [def] [scope 43] [CCTKi_SetupCache]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14}
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{metadata !16, metadata !18, metadata !19, metadata !22, metadata !23, metadata !24, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38}
!16 = metadata !{i32 786688, metadata !11, metadata !"cache_size", metadata !5, i32 44, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cache_size] [line 44]
!17 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!18 = metadata !{i32 786688, metadata !11, metadata !"cacheline_bytes", metadata !5, i32 45, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cacheline_bytes] [line 45]
!19 = metadata !{i32 786688, metadata !11, metadata !"cctk_final_time", metadata !5, i32 46, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_final_time] [line 46]
!20 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from double]
!21 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!22 = metadata !{i32 786688, metadata !11, metadata !"cctk_initial_time", metadata !5, i32 46, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_initial_time] [line 46]
!23 = metadata !{i32 786688, metadata !11, metadata !"terminate", metadata !5, i32 46, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [terminate] [line 46]
!24 = metadata !{i32 786688, metadata !11, metadata !"cctk_itlast", metadata !5, i32 46, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_itlast] [line 46]
!25 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!26 = metadata !{i32 786688, metadata !11, metadata !"terminate_next", metadata !5, i32 46, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [terminate_next] [line 46]
!27 = metadata !{i32 786688, metadata !11, metadata !"cctk_run_title", metadata !5, i32 46, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_run_title] [line 46]
!28 = metadata !{i32 786688, metadata !11, metadata !"cctk_timer_output", metadata !5, i32 46, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_timer_output] [line 46]
!29 = metadata !{i32 786688, metadata !11, metadata !"allow_mixeddim_gfs", metadata !5, i32 46, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [allow_mixeddim_gfs] [line 46]
!30 = metadata !{i32 786688, metadata !11, metadata !"cctk_brief_output", metadata !5, i32 46, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_brief_output] [line 46]
!31 = metadata !{i32 786688, metadata !11, metadata !"cctk_full_warnings", metadata !5, i32 46, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_full_warnings] [line 46]
!32 = metadata !{i32 786688, metadata !11, metadata !"cctk_show_banners", metadata !5, i32 46, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_show_banners] [line 46]
!33 = metadata !{i32 786688, metadata !11, metadata !"cctk_show_schedule", metadata !5, i32 46, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_show_schedule] [line 46]
!34 = metadata !{i32 786688, metadata !11, metadata !"cctk_strong_param_check", metadata !5, i32 46, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_strong_param_check] [line 46]
!35 = metadata !{i32 786688, metadata !11, metadata !"manual_cache_setup", metadata !5, i32 46, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [manual_cache_setup] [line 46]
!36 = metadata !{i32 786688, metadata !11, metadata !"manual_cache_size", metadata !5, i32 46, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [manual_cache_size] [line 46]
!37 = metadata !{i32 786688, metadata !11, metadata !"manual_cacheline_bytes", metadata !5, i32 46, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [manual_cacheline_bytes] [line 46]
!38 = metadata !{i32 786688, metadata !11, metadata !"cctk_pdummy_pointer", metadata !5, i32 46, metadata !39, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_pdummy_pointer] [line 46]
!39 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !40} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!40 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!41 = metadata !{metadata !42}
!42 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 20, metadata !8, i32 1, i32 1, null, null}
!43 = metadata !{i32 22, i32 0, metadata !4, null}
!44 = metadata !{i32 46, i32 0, metadata !11, null}
!45 = metadata !{i32 49, i32 0, metadata !11, null}
!46 = metadata !{metadata !"int", metadata !47}
!47 = metadata !{metadata !"omnipotent char", metadata !48}
!48 = metadata !{metadata !"Simple C/C++ TBAA"}
!49 = metadata !{i32 51, i32 0, metadata !50, null}
!50 = metadata !{i32 786443, metadata !1, metadata !11, i32 50, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/SetupCache.c]
!51 = metadata !{i32 52, i32 0, metadata !50, null}
!52 = metadata !{i32 53, i32 0, metadata !50, null}
!53 = metadata !{i32 60, i32 0, metadata !11, null}
!54 = metadata !{i8* undef}
!55 = metadata !{i32 62, i32 0, metadata !11, null}
