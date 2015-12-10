; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleBenchADM.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.0 = type { i8*, i32 }
%struct.anon.1 = type { double, double, double, double, double, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32 }

@benchadmpriv_ = external global %struct.anon.0
@einsteinrest_ = external global %struct.anon.1
@.str = private unnamed_addr constant [17 x i8] c"Bench_ParamCheck\00", align 1
@.str1 = private unnamed_addr constant [9 x i8] c"BenchADM\00", align 1
@.str2 = private unnamed_addr constant [9 x i8] c"benchadm\00", align 1
@.str3 = private unnamed_addr constant [17 x i8] c"Check parameters\00", align 1
@.str4 = private unnamed_addr constant [16 x i8] c"CCTK_PARAMCHECK\00", align 1
@.str5 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str6 = private unnamed_addr constant [4 x i8] c"ADM\00", align 1
@.str7 = private unnamed_addr constant [26 x i8] c"BenchADM::ADM_metric_prev\00", align 1
@.str8 = private unnamed_addr constant [24 x i8] c"BenchADM::ADM_curv_stag\00", align 1
@.str9 = private unnamed_addr constant [21 x i8] c"BenchRegisterSlicing\00", align 1
@.str10 = private unnamed_addr constant [18 x i8] c"Register slicings\00", align 1
@.str11 = private unnamed_addr constant [13 x i8] c"CCTK_STARTUP\00", align 1
@.str12 = private unnamed_addr constant [14 x i8] c"Bench_PreLoop\00", align 1
@.str13 = private unnamed_addr constant [14 x i8] c"Setup for ADM\00", align 1
@.str14 = private unnamed_addr constant [13 x i8] c"CCTK_INITIAL\00", align 1
@.str15 = private unnamed_addr constant [8 x i8] c"Fortran\00", align 1
@.str16 = private unnamed_addr constant [16 x i8] c"InitialEinstein\00", align 1
@.str17 = private unnamed_addr constant [29 x i8] c"Bench_StaggeredLeapfrog1a_TS\00", align 1
@.str18 = private unnamed_addr constant [51 x i8] c"Time symmetric initial data for staggered leapfrog\00", align 1
@.str19 = private unnamed_addr constant [11 x i8] c"planewaves\00", align 1
@.str20 = private unnamed_addr constant [10 x i8] c"teukwaves\00", align 1
@.str21 = private unnamed_addr constant [12 x i8] c"InitialFlat\00", align 1
@.str22 = private unnamed_addr constant [9 x i8] c"LapseOne\00", align 1
@.str23 = private unnamed_addr constant [14 x i8] c"LapseGaussian\00", align 1
@.str24 = private unnamed_addr constant [26 x i8] c"Bench_StaggeredLeapfrog1a\00", align 1
@.str25 = private unnamed_addr constant [52 x i8] c"Time asymmetric initial data for staggered leapfrog\00", align 1
@.str26 = private unnamed_addr constant [22 x i8] c"BenchADM::ADM_sources\00", align 1
@.str27 = private unnamed_addr constant [25 x i8] c"Bench_StaggeredLeapfrog2\00", align 1
@.str28 = private unnamed_addr constant [32 x i8] c"Evolve using Staggered Leapfrog\00", align 1
@.str29 = private unnamed_addr constant [10 x i8] c"CCTK_EVOL\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @CCTKi_BindingsSchedule_BenchADM() #0 {
entry:
  %0 = load i32* getelementptr inbounds (%struct.anon.0* @benchadmpriv_, i64 0, i32 1), align 8, !dbg !24, !tbaa !25
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !14), !dbg !24
  %1 = load i8** getelementptr inbounds (%struct.anon.1* @einsteinrest_, i64 0, i32 6), align 8, !dbg !24, !tbaa !28
  tail call void @llvm.dbg.value(metadata !{i8* %1}, i64 0, metadata !17), !dbg !24
  %call = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @Bench_ParamCheck to i8*), i8* getelementptr inbounds ([17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str5, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #3, !dbg !29
  %call1 = tail call i32 @CCTK_Equals(i8* %1, i8* getelementptr inbounds ([4 x i8]* @.str6, i64 0, i64 0)) #3, !dbg !30
  %tobool = icmp eq i32 %call1, 0, !dbg !30
  br i1 %tobool, label %if.end13, label %if.then, !dbg !30

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @CCTKi_ScheduleGroupStorage(i8* getelementptr inbounds ([26 x i8]* @.str7, i64 0, i64 0)) #3, !dbg !31
  %call3 = tail call i32 @CCTKi_ScheduleGroupComm(i8* getelementptr inbounds ([26 x i8]* @.str7, i64 0, i64 0)) #3, !dbg !33
  %call4 = tail call i32 @CCTKi_ScheduleGroupStorage(i8* getelementptr inbounds ([24 x i8]* @.str8, i64 0, i64 0)) #3, !dbg !34
  %call5 = tail call i32 @CCTKi_ScheduleGroupComm(i8* getelementptr inbounds ([24 x i8]* @.str8, i64 0, i64 0)) #3, !dbg !35
  %call6 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @BenchRegisterSlicing to i8*), i8* getelementptr inbounds ([21 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str5, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #3, !dbg !36
  %call7 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @bench_preloop_ to i8*), i8* getelementptr inbounds ([14 x i8]* @.str12, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str15, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([16 x i8]* @.str16, i64 0, i64 0)) #3, !dbg !37
  %tobool8 = icmp eq i32 %0, 0, !dbg !38
  br i1 %tobool8, label %if.else, label %if.then9, !dbg !38

if.then9:                                         ; preds = %if.then
  %call10 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @bench_staggeredleapfrog1a_ts_ to i8*), i8* getelementptr inbounds ([29 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str15, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, i32 0, i8* getelementptr inbounds ([11 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str23, i64 0, i64 0)) #3, !dbg !39
  br label %if.end, !dbg !41

if.else:                                          ; preds = %if.then
  %call11 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @bench_staggeredleapfrog1a_ to i8*), i8* getelementptr inbounds ([26 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str25, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str15, i64 0, i64 0), i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 5, i32 0, i8* getelementptr inbounds ([22 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8]* @.str26, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str23, i64 0, i64 0)) #3, !dbg !42
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then9
  %call12 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @bench_staggeredleapfrog2_ to i8*), i8* getelementptr inbounds ([25 x i8]* @.str27, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8]* @.str28, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str29, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @.str15, i64 0, i64 0), i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([24 x i8]* @.str8, i64 0, i64 0)) #3, !dbg !44
  br label %if.end13, !dbg !45

if.end13:                                         ; preds = %entry, %if.end
  tail call void @llvm.dbg.value(metadata !46, i64 0, metadata !21), !dbg !47
  tail call void @llvm.dbg.value(metadata !46, i64 0, metadata !21), !dbg !47
  tail call void @llvm.dbg.value(metadata !46, i64 0, metadata !21), !dbg !47
  tail call void @llvm.dbg.value(metadata !46, i64 0, metadata !21), !dbg !47
  tail call void @llvm.dbg.value(metadata !46, i64 0, metadata !21), !dbg !47
  tail call void @llvm.dbg.value(metadata !46, i64 0, metadata !21), !dbg !47
  tail call void @llvm.dbg.value(metadata !46, i64 0, metadata !21), !dbg !47
  tail call void @llvm.dbg.value(metadata !46, i64 0, metadata !21), !dbg !47
  ret void, !dbg !47
}

; Function Attrs: optsize
declare i32 @CCTKi_ScheduleFunction(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...) #1

; Function Attrs: optsize
declare i32 @Bench_ParamCheck() #1

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #1

; Function Attrs: optsize
declare i32 @CCTKi_ScheduleGroupStorage(i8*) #1

; Function Attrs: optsize
declare i32 @CCTKi_ScheduleGroupComm(i8*) #1

; Function Attrs: optsize
declare i32 @BenchRegisterSlicing() #1

; Function Attrs: optsize
declare i32 @bench_preloop_() #1

; Function Attrs: optsize
declare i32 @bench_staggeredleapfrog1a_ts_() #1

; Function Attrs: optsize
declare i32 @bench_staggeredleapfrog1a_() #1

; Function Attrs: optsize
declare i32 @bench_staggeredleapfrog2_() #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleBenchADM.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleBenchADM.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_BindingsSchedule_BenchADM", metadata !"CCTKi_BindingsSchedule_BenchADM", metadata !"", i32 36, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @CCTKi_BindingsSchedule_BenchADM, null, null, metadata !8, i32 37} ; [ DW_TAG_subprogram ] [line 36] [def] [scope 37] [CCTKi_BindingsSchedule_BenchADM]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleBenchADM.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null}
!8 = metadata !{metadata !9, metadata !13, metadata !14, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21}
!9 = metadata !{i32 786688, metadata !4, metadata !"method", metadata !5, i32 38, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [method] [line 38]
!10 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!11 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!12 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!13 = metadata !{i32 786688, metadata !4, metadata !"bound", metadata !5, i32 38, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bound] [line 38]
!14 = metadata !{i32 786688, metadata !4, metadata !"time_symmetric", metadata !5, i32 38, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [time_symmetric] [line 38]
!15 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!16 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!17 = metadata !{i32 786688, metadata !4, metadata !"evolution_system", metadata !5, i32 38, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [evolution_system] [line 38]
!18 = metadata !{i32 786688, metadata !4, metadata !"slicing", metadata !5, i32 38, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [slicing] [line 38]
!19 = metadata !{i32 786688, metadata !4, metadata !"timestep_method", metadata !5, i32 38, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timestep_method] [line 38]
!20 = metadata !{i32 786688, metadata !4, metadata !"timestep_outonly", metadata !5, i32 38, metadata !15, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timestep_outonly] [line 38]
!21 = metadata !{i32 786688, metadata !4, metadata !"cctk_pdummy_pointer", metadata !5, i32 38, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_pdummy_pointer] [line 38]
!22 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!23 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!24 = metadata !{i32 38, i32 0, metadata !4, null}
!25 = metadata !{metadata !"int", metadata !26}
!26 = metadata !{metadata !"omnipotent char", metadata !27}
!27 = metadata !{metadata !"Simple C/C++ TBAA"}
!28 = metadata !{metadata !"any pointer", metadata !26}
!29 = metadata !{i32 39, i32 0, metadata !4, null}
!30 = metadata !{i32 56, i32 0, metadata !4, null}
!31 = metadata !{i32 60, i32 0, metadata !32, null}
!32 = metadata !{i32 786443, metadata !1, metadata !4, i32 58, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleBenchADM.c]
!33 = metadata !{i32 61, i32 0, metadata !32, null}
!34 = metadata !{i32 63, i32 0, metadata !32, null}
!35 = metadata !{i32 64, i32 0, metadata !32, null}
!36 = metadata !{i32 66, i32 0, metadata !32, null}
!37 = metadata !{i32 83, i32 0, metadata !32, null}
!38 = metadata !{i32 101, i32 0, metadata !32, null}
!39 = metadata !{i32 105, i32 0, metadata !40, null}
!40 = metadata !{i32 786443, metadata !1, metadata !32, i32 103, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleBenchADM.c]
!41 = metadata !{i32 127, i32 0, metadata !40, null}
!42 = metadata !{i32 133, i32 0, metadata !43, null}
!43 = metadata !{i32 786443, metadata !1, metadata !32, i32 131, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleBenchADM.c]
!44 = metadata !{i32 159, i32 0, metadata !32, null}
!45 = metadata !{i32 177, i32 0, metadata !32, null}
!46 = metadata !{i8* undef}
!47 = metadata !{i32 180, i32 0, metadata !4, null}
