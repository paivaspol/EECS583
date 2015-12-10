; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleTime.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i8*, i32 }

@timerest_ = external global %struct.anon
@.str = private unnamed_addr constant [16 x i8] c"time::speedvars\00", align 1
@.str1 = private unnamed_addr constant [19 x i8] c"Time::couranttemps\00", align 1
@.str2 = private unnamed_addr constant [16 x i8] c"Time_Initialise\00", align 1
@.str3 = private unnamed_addr constant [5 x i8] c"Time\00", align 1
@.str4 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str5 = private unnamed_addr constant [26 x i8] c"Initialise Time variables\00", align 1
@.str6 = private unnamed_addr constant [14 x i8] c"CCTK_BASEGRID\00", align 1
@.str7 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str8 = private unnamed_addr constant [12 x i8] c"Time_Simple\00", align 1
@.str9 = private unnamed_addr constant [11 x i8] c"Time_Given\00", align 1
@.str10 = private unnamed_addr constant [15 x i8] c"courant_static\00", align 1
@.str11 = private unnamed_addr constant [40 x i8] c"Set timestep based on Courant condition\00", align 1
@.str12 = private unnamed_addr constant [19 x i8] c"SpatialCoordinates\00", align 1
@.str13 = private unnamed_addr constant [14 x i8] c"courant_speed\00", align 1
@.str14 = private unnamed_addr constant [13 x i8] c"courant_time\00", align 1
@.str15 = private unnamed_addr constant [13 x i8] c"Time_Courant\00", align 1
@.str16 = private unnamed_addr constant [30 x i8] c"Reset timestep each iteration\00", align 1
@.str17 = private unnamed_addr constant [13 x i8] c"CCTK_PRESTEP\00", align 1
@.str18 = private unnamed_addr constant [19 x i8] c"Set fixed timestep\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @CCTKi_BindingsSchedule_Time() #0 {
entry:
  %0 = load i8** getelementptr inbounds (%struct.anon* @timerest_, i64 0, i32 0), align 8, !dbg !25, !tbaa !26
  tail call void @llvm.dbg.value(metadata !{i8* %0}, i64 0, metadata !9), !dbg !25
  %call = tail call i32 @CCTKi_ScheduleGroupStorage(i8* getelementptr inbounds ([16 x i8]* @.str, i64 0, i64 0)) #3, !dbg !29
  %call1 = tail call i32 @CCTKi_ScheduleGroupStorage(i8* getelementptr inbounds ([19 x i8]* @.str1, i64 0, i64 0)) #3, !dbg !30
  %call2 = tail call i32 @CCTKi_ScheduleGroupComm(i8* getelementptr inbounds ([16 x i8]* @.str, i64 0, i64 0)) #3, !dbg !31
  %call3 = tail call i32 @CCTKi_ScheduleGroupComm(i8* getelementptr inbounds ([19 x i8]* @.str1, i64 0, i64 0)) #3, !dbg !32
  %call4 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @Time_Initialise to i8*), i8* getelementptr inbounds ([16 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str7, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([12 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str9, i64 0, i64 0)) #3, !dbg !33
  %call5 = tail call i32 @CCTK_Equals(i8* %0, i8* getelementptr inbounds ([15 x i8]* @.str10, i64 0, i64 0)) #3, !dbg !34
  %tobool = icmp eq i32 %call5, 0, !dbg !34
  br i1 %tobool, label %if.else, label %if.then, !dbg !34

if.then:                                          ; preds = %entry
  %call6 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @Time_Simple to i8*), i8* getelementptr inbounds ([12 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str7, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([19 x i8]* @.str12, i64 0, i64 0)) #3, !dbg !35
  br label %if.end16, !dbg !37

if.else:                                          ; preds = %entry
  %call7 = tail call i32 @CCTK_Equals(i8* %0, i8* getelementptr inbounds ([14 x i8]* @.str13, i64 0, i64 0)) #3, !dbg !38
  %tobool8 = icmp eq i32 %call7, 0, !dbg !38
  br i1 %tobool8, label %lor.lhs.false, label %if.then11, !dbg !38

lor.lhs.false:                                    ; preds = %if.else
  %call9 = tail call i32 @CCTK_Equals(i8* %0, i8* getelementptr inbounds ([13 x i8]* @.str14, i64 0, i64 0)) #3, !dbg !39
  %tobool10 = icmp eq i32 %call9, 0, !dbg !39
  br i1 %tobool10, label %if.else14, label %if.then11, !dbg !39

if.then11:                                        ; preds = %lor.lhs.false, %if.else
  %call12 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @Time_Simple to i8*), i8* getelementptr inbounds ([12 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str7, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i8* getelementptr inbounds ([19 x i8]* @.str12, i64 0, i64 0)) #3, !dbg !40
  %call13 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @Time_Courant to i8*), i8* getelementptr inbounds ([13 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str7, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #3, !dbg !42
  br label %if.end16, !dbg !43

if.else14:                                        ; preds = %lor.lhs.false
  %call15 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @Time_Given to i8*), i8* getelementptr inbounds ([11 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str7, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #3, !dbg !44
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %if.else14, %if.then
  tail call void @llvm.dbg.value(metadata !46, i64 0, metadata !22), !dbg !47
  tail call void @llvm.dbg.value(metadata !46, i64 0, metadata !22), !dbg !47
  tail call void @llvm.dbg.value(metadata !46, i64 0, metadata !22), !dbg !47
  tail call void @llvm.dbg.value(metadata !46, i64 0, metadata !22), !dbg !47
  tail call void @llvm.dbg.value(metadata !46, i64 0, metadata !22), !dbg !47
  tail call void @llvm.dbg.value(metadata !46, i64 0, metadata !22), !dbg !47
  tail call void @llvm.dbg.value(metadata !46, i64 0, metadata !22), !dbg !47
  ret void, !dbg !47
}

; Function Attrs: optsize
declare i32 @CCTKi_ScheduleGroupStorage(i8*) #1

; Function Attrs: optsize
declare i32 @CCTKi_ScheduleGroupComm(i8*) #1

; Function Attrs: optsize
declare i32 @CCTKi_ScheduleFunction(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...) #1

; Function Attrs: optsize
declare i32 @Time_Initialise() #1

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #1

; Function Attrs: optsize
declare i32 @Time_Simple() #1

; Function Attrs: optsize
declare i32 @Time_Courant() #1

; Function Attrs: optsize
declare i32 @Time_Given() #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleTime.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleTime.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_BindingsSchedule_Time", metadata !"CCTKi_BindingsSchedule_Time", metadata !"", i32 35, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @CCTKi_BindingsSchedule_Time, null, null, metadata !8, i32 36} ; [ DW_TAG_subprogram ] [line 35] [def] [scope 36] [CCTKi_BindingsSchedule_Time]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleTime.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null}
!8 = metadata !{metadata !9, metadata !13, metadata !16, metadata !19, metadata !20, metadata !21, metadata !22}
!9 = metadata !{i32 786688, metadata !4, metadata !"timestep_method", metadata !5, i32 37, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timestep_method] [line 37]
!10 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !11} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!11 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !12} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!12 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!13 = metadata !{i32 786688, metadata !4, metadata !"timestep_outonly", metadata !5, i32 37, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timestep_outonly] [line 37]
!14 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !15} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!15 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!16 = metadata !{i32 786688, metadata !4, metadata !"courant_fac", metadata !5, i32 37, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [courant_fac] [line 37]
!17 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from double]
!18 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!19 = metadata !{i32 786688, metadata !4, metadata !"dtfac", metadata !5, i32 37, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dtfac] [line 37]
!20 = metadata !{i32 786688, metadata !4, metadata !"timestep", metadata !5, i32 37, metadata !17, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timestep] [line 37]
!21 = metadata !{i32 786688, metadata !4, metadata !"outtimestep_every", metadata !5, i32 37, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outtimestep_every] [line 37]
!22 = metadata !{i32 786688, metadata !4, metadata !"cctk_pdummy_pointer", metadata !5, i32 37, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_pdummy_pointer] [line 37]
!23 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!24 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!25 = metadata !{i32 37, i32 0, metadata !4, null}
!26 = metadata !{metadata !"any pointer", metadata !27}
!27 = metadata !{metadata !"omnipotent char", metadata !28}
!28 = metadata !{metadata !"Simple C/C++ TBAA"}
!29 = metadata !{i32 38, i32 0, metadata !4, null}
!30 = metadata !{i32 39, i32 0, metadata !4, null}
!31 = metadata !{i32 40, i32 0, metadata !4, null}
!32 = metadata !{i32 41, i32 0, metadata !4, null}
!33 = metadata !{i32 43, i32 0, metadata !4, null}
!34 = metadata !{i32 62, i32 0, metadata !4, null}
!35 = metadata !{i32 66, i32 0, metadata !36, null}
!36 = metadata !{i32 786443, metadata !1, metadata !4, i32 64, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleTime.c]
!37 = metadata !{i32 84, i32 0, metadata !36, null}
!38 = metadata !{i32 86, i32 0, metadata !4, null}
!39 = metadata !{i32 88, i32 0, metadata !4, null}
!40 = metadata !{i32 92, i32 0, metadata !41, null}
!41 = metadata !{i32 786443, metadata !1, metadata !4, i32 90, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleTime.c]
!42 = metadata !{i32 110, i32 0, metadata !41, null}
!43 = metadata !{i32 127, i32 0, metadata !41, null}
!44 = metadata !{i32 133, i32 0, metadata !45, null}
!45 = metadata !{i32 786443, metadata !1, metadata !4, i32 131, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/ScheduleTime.c]
!46 = metadata !{i8* undef}
!47 = metadata !{i32 153, i32 0, metadata !4, null}
