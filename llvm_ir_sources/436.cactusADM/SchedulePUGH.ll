; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/SchedulePUGH.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.0 = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@pughpriv_ = external global %struct.anon.0
@.str = private unnamed_addr constant [15 x i8] c"Driver_Startup\00", align 1
@.str1 = private unnamed_addr constant [5 x i8] c"PUGH\00", align 1
@.str2 = private unnamed_addr constant [7 x i8] c"driver\00", align 1
@.str3 = private unnamed_addr constant [16 x i8] c"Startup routine\00", align 1
@.str4 = private unnamed_addr constant [13 x i8] c"CCTK_STARTUP\00", align 1
@.str5 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str6 = private unnamed_addr constant [12 x i8] c"PUGH_Report\00", align 1
@.str7 = private unnamed_addr constant [22 x i8] c"Report on PUGH set up\00", align 1
@.str8 = private unnamed_addr constant [14 x i8] c"CCTK_BASEGRID\00", align 1
@.str9 = private unnamed_addr constant [21 x i8] c"PUGH_PrintTimingInfo\00", align 1
@.str10 = private unnamed_addr constant [34 x i8] c"Print time spent in communication\00", align 1
@.str11 = private unnamed_addr constant [15 x i8] c"CCTK_TERMINATE\00", align 1
@.str12 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str13 = private unnamed_addr constant [7 x i8] c"report\00", align 1
@.str14 = private unnamed_addr constant [29 x i8] c"PUGH_PrintFinalStorageReport\00", align 1
@.str15 = private unnamed_addr constant [26 x i8] c"Print storage information\00", align 1
@.str16 = private unnamed_addr constant [24 x i8] c"PUGH_PrintStorageReport\00", align 1
@.str17 = private unnamed_addr constant [14 x i8] c"CCTK_POSTSTEP\00", align 1
@.str18 = private unnamed_addr constant [17 x i8] c"Driver_Terminate\00", align 1
@.str19 = private unnamed_addr constant [20 x i8] c"Termination routine\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @CCTKi_BindingsSchedule_PUGH() #0 {
entry:
  %0 = load i8** getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 10), align 8, !dbg !80, !tbaa !81
  tail call void @llvm.dbg.value(metadata !{i8* %0}, i64 0, metadata !36), !dbg !80
  %1 = load i32* getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 43), align 8, !dbg !80, !tbaa !84
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !69), !dbg !80
  %call = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @PUGH_Startup to i8*), i8* getelementptr inbounds ([15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str5, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #3, !dbg !85
  %call1 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @PUGH_Report to i8*), i8* getelementptr inbounds ([12 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str5, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #3, !dbg !86
  %tobool = icmp eq i32 %1, 0, !dbg !87
  br i1 %tobool, label %if.end, label %if.then, !dbg !87

if.then:                                          ; preds = %entry
  %call2 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @PUGH_PrintTimingInfo to i8*), i8* getelementptr inbounds ([21 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str5, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #3, !dbg !88
  br label %if.end, !dbg !90

if.end:                                           ; preds = %entry, %if.then
  %call3 = tail call i32 @CCTK_Equals(i8* %0, i8* getelementptr inbounds ([4 x i8]* @.str12, i64 0, i64 0)) #3, !dbg !91
  %tobool4 = icmp eq i32 %call3, 0, !dbg !91
  br i1 %tobool4, label %lor.lhs.false, label %if.then7, !dbg !91

lor.lhs.false:                                    ; preds = %if.end
  %call5 = tail call i32 @CCTK_Equals(i8* %0, i8* getelementptr inbounds ([7 x i8]* @.str13, i64 0, i64 0)) #3, !dbg !91
  %tobool6 = icmp eq i32 %call5, 0, !dbg !91
  br i1 %tobool6, label %if.end9, label %if.then7, !dbg !91

if.then7:                                         ; preds = %lor.lhs.false, %if.end
  %call8 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @PUGH_PrintFinalStorageReport to i8*), i8* getelementptr inbounds ([29 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str5, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #3, !dbg !92
  br label %if.end9, !dbg !94

if.end9:                                          ; preds = %lor.lhs.false, %if.then7
  %call10 = tail call i32 @CCTK_Equals(i8* %0, i8* getelementptr inbounds ([4 x i8]* @.str12, i64 0, i64 0)) #3, !dbg !95
  %tobool11 = icmp eq i32 %call10, 0, !dbg !95
  br i1 %tobool11, label %lor.lhs.false12, label %if.then15, !dbg !95

lor.lhs.false12:                                  ; preds = %if.end9
  %call13 = tail call i32 @CCTK_Equals(i8* %0, i8* getelementptr inbounds ([7 x i8]* @.str13, i64 0, i64 0)) #3, !dbg !95
  %tobool14 = icmp eq i32 %call13, 0, !dbg !95
  br i1 %tobool14, label %if.end17, label %if.then15, !dbg !95

if.then15:                                        ; preds = %lor.lhs.false12, %if.end9
  %call16 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @PUGH_PrintStorageReport to i8*), i8* getelementptr inbounds ([24 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str5, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #3, !dbg !96
  br label %if.end17, !dbg !98

if.end17:                                         ; preds = %lor.lhs.false12, %if.then15
  %call18 = tail call i32 (i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...)* @CCTKi_ScheduleFunction(i8* bitcast (i32 ()* @PUGH_Terminate to i8*), i8* getelementptr inbounds ([17 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8]* @.str11, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str5, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0) #3, !dbg !99
  tail call void @llvm.dbg.value(metadata !100, i64 0, metadata !77), !dbg !101
  tail call void @llvm.dbg.value(metadata !100, i64 0, metadata !77), !dbg !101
  tail call void @llvm.dbg.value(metadata !100, i64 0, metadata !77), !dbg !101
  tail call void @llvm.dbg.value(metadata !100, i64 0, metadata !77), !dbg !101
  tail call void @llvm.dbg.value(metadata !100, i64 0, metadata !77), !dbg !101
  tail call void @llvm.dbg.value(metadata !100, i64 0, metadata !77), !dbg !101
  tail call void @llvm.dbg.value(metadata !100, i64 0, metadata !77), !dbg !101
  tail call void @llvm.dbg.value(metadata !100, i64 0, metadata !77), !dbg !101
  tail call void @llvm.dbg.value(metadata !100, i64 0, metadata !77), !dbg !101
  tail call void @llvm.dbg.value(metadata !100, i64 0, metadata !77), !dbg !101
  tail call void @llvm.dbg.value(metadata !100, i64 0, metadata !77), !dbg !101
  tail call void @llvm.dbg.value(metadata !100, i64 0, metadata !77), !dbg !101
  tail call void @llvm.dbg.value(metadata !100, i64 0, metadata !77), !dbg !101
  tail call void @llvm.dbg.value(metadata !100, i64 0, metadata !77), !dbg !101
  tail call void @llvm.dbg.value(metadata !100, i64 0, metadata !77), !dbg !101
  tail call void @llvm.dbg.value(metadata !100, i64 0, metadata !77), !dbg !101
  tail call void @llvm.dbg.value(metadata !100, i64 0, metadata !77), !dbg !101
  tail call void @llvm.dbg.value(metadata !100, i64 0, metadata !77), !dbg !101
  tail call void @llvm.dbg.value(metadata !100, i64 0, metadata !77), !dbg !101
  tail call void @llvm.dbg.value(metadata !100, i64 0, metadata !77), !dbg !101
  tail call void @llvm.dbg.value(metadata !100, i64 0, metadata !77), !dbg !101
  tail call void @llvm.dbg.value(metadata !100, i64 0, metadata !77), !dbg !101
  tail call void @llvm.dbg.value(metadata !100, i64 0, metadata !77), !dbg !101
  tail call void @llvm.dbg.value(metadata !100, i64 0, metadata !77), !dbg !101
  tail call void @llvm.dbg.value(metadata !100, i64 0, metadata !77), !dbg !101
  tail call void @llvm.dbg.value(metadata !100, i64 0, metadata !77), !dbg !101
  tail call void @llvm.dbg.value(metadata !100, i64 0, metadata !77), !dbg !101
  tail call void @llvm.dbg.value(metadata !100, i64 0, metadata !77), !dbg !101
  tail call void @llvm.dbg.value(metadata !100, i64 0, metadata !77), !dbg !101
  tail call void @llvm.dbg.value(metadata !100, i64 0, metadata !77), !dbg !101
  tail call void @llvm.dbg.value(metadata !100, i64 0, metadata !77), !dbg !101
  tail call void @llvm.dbg.value(metadata !100, i64 0, metadata !77), !dbg !101
  tail call void @llvm.dbg.value(metadata !100, i64 0, metadata !77), !dbg !101
  tail call void @llvm.dbg.value(metadata !100, i64 0, metadata !77), !dbg !101
  tail call void @llvm.dbg.value(metadata !100, i64 0, metadata !77), !dbg !101
  tail call void @llvm.dbg.value(metadata !100, i64 0, metadata !77), !dbg !101
  tail call void @llvm.dbg.value(metadata !100, i64 0, metadata !77), !dbg !101
  tail call void @llvm.dbg.value(metadata !100, i64 0, metadata !77), !dbg !101
  tail call void @llvm.dbg.value(metadata !100, i64 0, metadata !77), !dbg !101
  tail call void @llvm.dbg.value(metadata !100, i64 0, metadata !77), !dbg !101
  tail call void @llvm.dbg.value(metadata !100, i64 0, metadata !77), !dbg !101
  tail call void @llvm.dbg.value(metadata !100, i64 0, metadata !77), !dbg !101
  tail call void @llvm.dbg.value(metadata !100, i64 0, metadata !77), !dbg !101
  tail call void @llvm.dbg.value(metadata !100, i64 0, metadata !77), !dbg !101
  tail call void @llvm.dbg.value(metadata !100, i64 0, metadata !77), !dbg !101
  tail call void @llvm.dbg.value(metadata !100, i64 0, metadata !77), !dbg !101
  tail call void @llvm.dbg.value(metadata !100, i64 0, metadata !77), !dbg !101
  tail call void @llvm.dbg.value(metadata !100, i64 0, metadata !77), !dbg !101
  tail call void @llvm.dbg.value(metadata !100, i64 0, metadata !77), !dbg !101
  tail call void @llvm.dbg.value(metadata !100, i64 0, metadata !77), !dbg !101
  tail call void @llvm.dbg.value(metadata !100, i64 0, metadata !77), !dbg !101
  tail call void @llvm.dbg.value(metadata !100, i64 0, metadata !77), !dbg !101
  tail call void @llvm.dbg.value(metadata !100, i64 0, metadata !77), !dbg !101
  tail call void @llvm.dbg.value(metadata !100, i64 0, metadata !77), !dbg !101
  tail call void @llvm.dbg.value(metadata !100, i64 0, metadata !77), !dbg !101
  tail call void @llvm.dbg.value(metadata !100, i64 0, metadata !77), !dbg !101
  tail call void @llvm.dbg.value(metadata !100, i64 0, metadata !77), !dbg !101
  tail call void @llvm.dbg.value(metadata !100, i64 0, metadata !77), !dbg !101
  tail call void @llvm.dbg.value(metadata !100, i64 0, metadata !77), !dbg !101
  tail call void @llvm.dbg.value(metadata !100, i64 0, metadata !77), !dbg !101
  tail call void @llvm.dbg.value(metadata !100, i64 0, metadata !77), !dbg !101
  tail call void @llvm.dbg.value(metadata !100, i64 0, metadata !77), !dbg !101
  ret void, !dbg !101
}

; Function Attrs: optsize
declare i32 @CCTKi_ScheduleFunction(i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, ...) #1

; Function Attrs: optsize
declare i32 @PUGH_Startup() #1

; Function Attrs: optsize
declare i32 @PUGH_Report() #1

; Function Attrs: optsize
declare i32 @PUGH_PrintTimingInfo() #1

; Function Attrs: optsize
declare i32 @CCTK_Equals(i8*, i8*) #1

; Function Attrs: optsize
declare i32 @PUGH_PrintFinalStorageReport() #1

; Function Attrs: optsize
declare i32 @PUGH_PrintStorageReport() #1

; Function Attrs: optsize
declare i32 @PUGH_Terminate() #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/SchedulePUGH.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/SchedulePUGH.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_BindingsSchedule_PUGH", metadata !"CCTKi_BindingsSchedule_PUGH", metadata !"", i32 36, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void ()* @CCTKi_BindingsSchedule_PUGH, null, null, metadata !8, i32 37} ; [ DW_TAG_subprogram ] [line 36] [def] [scope 37] [CCTKi_BindingsSchedule_PUGH]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/SchedulePUGH.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null}
!8 = metadata !{metadata !9, metadata !12, metadata !13, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !74, metadata !75, metadata !76, metadata !77}
!9 = metadata !{i32 786688, metadata !4, metadata !"ghost_size", metadata !5, i32 38, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghost_size] [line 38]
!10 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!11 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!12 = metadata !{i32 786688, metadata !4, metadata !"ghost_size_x", metadata !5, i32 38, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghost_size_x] [line 38]
!13 = metadata !{i32 786688, metadata !4, metadata !"ghost_size_y", metadata !5, i32 38, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghost_size_y] [line 38]
!14 = metadata !{i32 786688, metadata !4, metadata !"ghost_size_z", metadata !5, i32 38, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ghost_size_z] [line 38]
!15 = metadata !{i32 786688, metadata !4, metadata !"global_nsize", metadata !5, i32 38, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_nsize] [line 38]
!16 = metadata !{i32 786688, metadata !4, metadata !"global_nx", metadata !5, i32 38, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_nx] [line 38]
!17 = metadata !{i32 786688, metadata !4, metadata !"global_ny", metadata !5, i32 38, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_ny] [line 38]
!18 = metadata !{i32 786688, metadata !4, metadata !"global_nz", metadata !5, i32 38, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [global_nz] [line 38]
!19 = metadata !{i32 786688, metadata !4, metadata !"periodic", metadata !5, i32 38, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic] [line 38]
!20 = metadata !{i32 786688, metadata !4, metadata !"periodic_x", metadata !5, i32 38, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_x] [line 38]
!21 = metadata !{i32 786688, metadata !4, metadata !"periodic_y", metadata !5, i32 38, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_y] [line 38]
!22 = metadata !{i32 786688, metadata !4, metadata !"periodic_z", metadata !5, i32 38, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [periodic_z] [line 38]
!23 = metadata !{i32 786688, metadata !4, metadata !"info", metadata !5, i32 38, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [info] [line 38]
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!25 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!26 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!27 = metadata !{i32 786688, metadata !4, metadata !"initialize_memory", metadata !5, i32 38, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [initialize_memory] [line 38]
!28 = metadata !{i32 786688, metadata !4, metadata !"partition", metadata !5, i32 38, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition] [line 38]
!29 = metadata !{i32 786688, metadata !4, metadata !"partition_1d_x", metadata !5, i32 38, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_1d_x] [line 38]
!30 = metadata !{i32 786688, metadata !4, metadata !"partition_2d_x", metadata !5, i32 38, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_2d_x] [line 38]
!31 = metadata !{i32 786688, metadata !4, metadata !"partition_2d_y", metadata !5, i32 38, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_2d_y] [line 38]
!32 = metadata !{i32 786688, metadata !4, metadata !"partition_3d_x", metadata !5, i32 38, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_3d_x] [line 38]
!33 = metadata !{i32 786688, metadata !4, metadata !"partition_3d_y", metadata !5, i32 38, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_3d_y] [line 38]
!34 = metadata !{i32 786688, metadata !4, metadata !"partition_3d_z", metadata !5, i32 38, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [partition_3d_z] [line 38]
!35 = metadata !{i32 786688, metadata !4, metadata !"processor_topology", metadata !5, i32 38, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology] [line 38]
!36 = metadata !{i32 786688, metadata !4, metadata !"storage_verbose", metadata !5, i32 38, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [storage_verbose] [line 38]
!37 = metadata !{i32 786688, metadata !4, metadata !"cacheline_mult", metadata !5, i32 38, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cacheline_mult] [line 38]
!38 = metadata !{i32 786688, metadata !4, metadata !"enable_all_storage", metadata !5, i32 38, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [enable_all_storage] [line 38]
!39 = metadata !{i32 786688, metadata !4, metadata !"local_nsize", metadata !5, i32 38, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_nsize] [line 38]
!40 = metadata !{i32 786688, metadata !4, metadata !"local_nx", metadata !5, i32 38, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_nx] [line 38]
!41 = metadata !{i32 786688, metadata !4, metadata !"local_ny", metadata !5, i32 38, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_ny] [line 38]
!42 = metadata !{i32 786688, metadata !4, metadata !"local_nz", metadata !5, i32 38, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [local_nz] [line 38]
!43 = metadata !{i32 786688, metadata !4, metadata !"overloadabort", metadata !5, i32 38, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadabort] [line 38]
!44 = metadata !{i32 786688, metadata !4, metadata !"overloadarraygroupsizeb", metadata !5, i32 38, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadarraygroupsizeb] [line 38]
!45 = metadata !{i32 786688, metadata !4, metadata !"overloadbarrier", metadata !5, i32 38, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadbarrier] [line 38]
!46 = metadata !{i32 786688, metadata !4, metadata !"overloaddisablegroupcomm", metadata !5, i32 38, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloaddisablegroupcomm] [line 38]
!47 = metadata !{i32 786688, metadata !4, metadata !"overloaddisablegroupstorage", metadata !5, i32 38, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloaddisablegroupstorage] [line 38]
!48 = metadata !{i32 786688, metadata !4, metadata !"overloadenablegroupcomm", metadata !5, i32 38, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadenablegroupcomm] [line 38]
!49 = metadata !{i32 786688, metadata !4, metadata !"overloadenablegroupstorage", metadata !5, i32 38, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadenablegroupstorage] [line 38]
!50 = metadata !{i32 786688, metadata !4, metadata !"overloadevolve", metadata !5, i32 38, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadevolve] [line 38]
!51 = metadata !{i32 786688, metadata !4, metadata !"overloadexit", metadata !5, i32 38, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadexit] [line 38]
!52 = metadata !{i32 786688, metadata !4, metadata !"overloadgroupdynamicdata", metadata !5, i32 38, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadgroupdynamicdata] [line 38]
!53 = metadata !{i32 786688, metadata !4, metadata !"overloadmyproc", metadata !5, i32 38, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadmyproc] [line 38]
!54 = metadata !{i32 786688, metadata !4, metadata !"overloadnprocs", metadata !5, i32 38, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadnprocs] [line 38]
!55 = metadata !{i32 786688, metadata !4, metadata !"overloadparallelinit", metadata !5, i32 38, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadparallelinit] [line 38]
!56 = metadata !{i32 786688, metadata !4, metadata !"overloadquerygroupstorageb", metadata !5, i32 38, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadquerygroupstorageb] [line 38]
!57 = metadata !{i32 786688, metadata !4, metadata !"overloadsyncgroup", metadata !5, i32 38, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [overloadsyncgroup] [line 38]
!58 = metadata !{i32 786688, metadata !4, metadata !"padding_active", metadata !5, i32 38, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padding_active] [line 38]
!59 = metadata !{i32 786688, metadata !4, metadata !"padding_address_spacing", metadata !5, i32 38, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padding_address_spacing] [line 38]
!60 = metadata !{i32 786688, metadata !4, metadata !"padding_cacheline_bits", metadata !5, i32 38, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padding_cacheline_bits] [line 38]
!61 = metadata !{i32 786688, metadata !4, metadata !"padding_size", metadata !5, i32 38, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [padding_size] [line 38]
!62 = metadata !{i32 786688, metadata !4, metadata !"processor_topology_1d_x", metadata !5, i32 38, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_1d_x] [line 38]
!63 = metadata !{i32 786688, metadata !4, metadata !"processor_topology_2d_x", metadata !5, i32 38, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_2d_x] [line 38]
!64 = metadata !{i32 786688, metadata !4, metadata !"processor_topology_2d_y", metadata !5, i32 38, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_2d_y] [line 38]
!65 = metadata !{i32 786688, metadata !4, metadata !"processor_topology_3d_x", metadata !5, i32 38, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_3d_x] [line 38]
!66 = metadata !{i32 786688, metadata !4, metadata !"processor_topology_3d_y", metadata !5, i32 38, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_3d_y] [line 38]
!67 = metadata !{i32 786688, metadata !4, metadata !"processor_topology_3d_z", metadata !5, i32 38, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [processor_topology_3d_z] [line 38]
!68 = metadata !{i32 786688, metadata !4, metadata !"storage_report_every", metadata !5, i32 38, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [storage_report_every] [line 38]
!69 = metadata !{i32 786688, metadata !4, metadata !"timer_output", metadata !5, i32 38, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timer_output] [line 38]
!70 = metadata !{i32 786688, metadata !4, metadata !"terminate", metadata !5, i32 38, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [terminate] [line 38]
!71 = metadata !{i32 786688, metadata !4, metadata !"cctk_initial_time", metadata !5, i32 38, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_initial_time] [line 38]
!72 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !73} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from double]
!73 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!74 = metadata !{i32 786688, metadata !4, metadata !"cctk_final_time", metadata !5, i32 38, metadata !72, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_final_time] [line 38]
!75 = metadata !{i32 786688, metadata !4, metadata !"cctk_itlast", metadata !5, i32 38, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_itlast] [line 38]
!76 = metadata !{i32 786688, metadata !4, metadata !"terminate_next", metadata !5, i32 38, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [terminate_next] [line 38]
!77 = metadata !{i32 786688, metadata !4, metadata !"cctk_pdummy_pointer", metadata !5, i32 38, metadata !78, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_pdummy_pointer] [line 38]
!78 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !79} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!79 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!80 = metadata !{i32 38, i32 0, metadata !4, null}
!81 = metadata !{metadata !"any pointer", metadata !82}
!82 = metadata !{metadata !"omnipotent char", metadata !83}
!83 = metadata !{metadata !"Simple C/C++ TBAA"}
!84 = metadata !{metadata !"int", metadata !82}
!85 = metadata !{i32 39, i32 0, metadata !4, null}
!86 = metadata !{i32 56, i32 0, metadata !4, null}
!87 = metadata !{i32 73, i32 0, metadata !4, null}
!88 = metadata !{i32 77, i32 0, metadata !89, null}
!89 = metadata !{i32 786443, metadata !1, metadata !4, i32 75, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/SchedulePUGH.c]
!90 = metadata !{i32 94, i32 0, metadata !89, null}
!91 = metadata !{i32 96, i32 0, metadata !4, null}
!92 = metadata !{i32 100, i32 0, metadata !93, null}
!93 = metadata !{i32 786443, metadata !1, metadata !4, i32 98, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/SchedulePUGH.c]
!94 = metadata !{i32 117, i32 0, metadata !93, null}
!95 = metadata !{i32 119, i32 0, metadata !4, null}
!96 = metadata !{i32 123, i32 0, metadata !97, null}
!97 = metadata !{i32 786443, metadata !1, metadata !4, i32 121, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/SchedulePUGH.c]
!98 = metadata !{i32 140, i32 0, metadata !97, null}
!99 = metadata !{i32 142, i32 0, metadata !4, null}
!100 = metadata !{i8* undef}
!101 = metadata !{i32 160, i32 0, metadata !4, null}
