; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/BindingsSchedule.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"BenchADM\00", align 1
@.str1 = private unnamed_addr constant [9 x i8] c"Boundary\00", align 1
@.str2 = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1
@.str3 = private unnamed_addr constant [11 x i8] c"CartGrid3D\00", align 1
@.str4 = private unnamed_addr constant [9 x i8] c"Einstein\00", align 1
@.str5 = private unnamed_addr constant [14 x i8] c"IDLinearWaves\00", align 1
@.str6 = private unnamed_addr constant [8 x i8] c"IOASCII\00", align 1
@.str7 = private unnamed_addr constant [8 x i8] c"IOBasic\00", align 1
@.str8 = private unnamed_addr constant [7 x i8] c"IOUtil\00", align 1
@.str9 = private unnamed_addr constant [5 x i8] c"PUGH\00", align 1
@.str10 = private unnamed_addr constant [11 x i8] c"PUGHReduce\00", align 1
@.str11 = private unnamed_addr constant [9 x i8] c"PUGHSlab\00", align 1
@.str12 = private unnamed_addr constant [5 x i8] c"Time\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_BindingsScheduleInitialise() #0 {
entry:
  %call = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([9 x i8]* @.str, i64 0, i64 0)) #2, !dbg !9
  %tobool = icmp eq i32 %call, 0, !dbg !9
  br i1 %tobool, label %if.end, label %if.then, !dbg !9

if.then:                                          ; preds = %entry
  tail call void @CCTKi_BindingsSchedule_BenchADM() #2, !dbg !10
  br label %if.end, !dbg !12

if.end:                                           ; preds = %entry, %if.then
  %call1 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0)) #2, !dbg !13
  %tobool2 = icmp eq i32 %call1, 0, !dbg !13
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !13

if.then3:                                         ; preds = %if.end
  tail call void @CCTKi_BindingsSchedule_Boundary() #2, !dbg !14
  br label %if.end4, !dbg !16

if.end4:                                          ; preds = %if.end, %if.then3
  %call5 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0)) #2, !dbg !17
  %tobool6 = icmp eq i32 %call5, 0, !dbg !17
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !17

if.then7:                                         ; preds = %if.end4
  tail call void @CCTKi_BindingsSchedule_Cactus() #2, !dbg !18
  br label %if.end8, !dbg !20

if.end8:                                          ; preds = %if.end4, %if.then7
  %call9 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0)) #2, !dbg !21
  %tobool10 = icmp eq i32 %call9, 0, !dbg !21
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !21

if.then11:                                        ; preds = %if.end8
  tail call void @CCTKi_BindingsSchedule_CartGrid3D() #2, !dbg !22
  br label %if.end12, !dbg !24

if.end12:                                         ; preds = %if.end8, %if.then11
  %call13 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([9 x i8]* @.str4, i64 0, i64 0)) #2, !dbg !25
  %tobool14 = icmp eq i32 %call13, 0, !dbg !25
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !25

if.then15:                                        ; preds = %if.end12
  tail call void @CCTKi_BindingsSchedule_Einstein() #2, !dbg !26
  br label %if.end16, !dbg !28

if.end16:                                         ; preds = %if.end12, %if.then15
  %call17 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([14 x i8]* @.str5, i64 0, i64 0)) #2, !dbg !29
  %tobool18 = icmp eq i32 %call17, 0, !dbg !29
  br i1 %tobool18, label %if.end20, label %if.then19, !dbg !29

if.then19:                                        ; preds = %if.end16
  tail call void @CCTKi_BindingsSchedule_IDLinearWaves() #2, !dbg !30
  br label %if.end20, !dbg !32

if.end20:                                         ; preds = %if.end16, %if.then19
  %call21 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([8 x i8]* @.str6, i64 0, i64 0)) #2, !dbg !33
  %tobool22 = icmp eq i32 %call21, 0, !dbg !33
  br i1 %tobool22, label %if.end24, label %if.then23, !dbg !33

if.then23:                                        ; preds = %if.end20
  tail call void @CCTKi_BindingsSchedule_IOASCII() #2, !dbg !34
  br label %if.end24, !dbg !36

if.end24:                                         ; preds = %if.end20, %if.then23
  %call25 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([8 x i8]* @.str7, i64 0, i64 0)) #2, !dbg !37
  %tobool26 = icmp eq i32 %call25, 0, !dbg !37
  br i1 %tobool26, label %if.end28, label %if.then27, !dbg !37

if.then27:                                        ; preds = %if.end24
  tail call void @CCTKi_BindingsSchedule_IOBasic() #2, !dbg !38
  br label %if.end28, !dbg !40

if.end28:                                         ; preds = %if.end24, %if.then27
  %call29 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([7 x i8]* @.str8, i64 0, i64 0)) #2, !dbg !41
  %tobool30 = icmp eq i32 %call29, 0, !dbg !41
  br i1 %tobool30, label %if.end32, label %if.then31, !dbg !41

if.then31:                                        ; preds = %if.end28
  tail call void @CCTKi_BindingsSchedule_IOUtil() #2, !dbg !42
  br label %if.end32, !dbg !44

if.end32:                                         ; preds = %if.end28, %if.then31
  %call33 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([5 x i8]* @.str9, i64 0, i64 0)) #2, !dbg !45
  %tobool34 = icmp eq i32 %call33, 0, !dbg !45
  br i1 %tobool34, label %if.end36, label %if.then35, !dbg !45

if.then35:                                        ; preds = %if.end32
  tail call void @CCTKi_BindingsSchedule_PUGH() #2, !dbg !46
  br label %if.end36, !dbg !48

if.end36:                                         ; preds = %if.end32, %if.then35
  %call37 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([11 x i8]* @.str10, i64 0, i64 0)) #2, !dbg !49
  %tobool38 = icmp eq i32 %call37, 0, !dbg !49
  br i1 %tobool38, label %if.end40, label %if.then39, !dbg !49

if.then39:                                        ; preds = %if.end36
  tail call void @CCTKi_BindingsSchedule_PUGHReduce() #2, !dbg !50
  br label %if.end40, !dbg !52

if.end40:                                         ; preds = %if.end36, %if.then39
  %call41 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([9 x i8]* @.str11, i64 0, i64 0)) #2, !dbg !53
  %tobool42 = icmp eq i32 %call41, 0, !dbg !53
  br i1 %tobool42, label %if.end44, label %if.then43, !dbg !53

if.then43:                                        ; preds = %if.end40
  tail call void @CCTKi_BindingsSchedule_PUGHSlab() #2, !dbg !54
  br label %if.end44, !dbg !56

if.end44:                                         ; preds = %if.end40, %if.then43
  %call45 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([5 x i8]* @.str12, i64 0, i64 0)) #2, !dbg !57
  %tobool46 = icmp eq i32 %call45, 0, !dbg !57
  br i1 %tobool46, label %if.end48, label %if.then47, !dbg !57

if.then47:                                        ; preds = %if.end44
  tail call void @CCTKi_BindingsSchedule_Time() #2, !dbg !58
  br label %if.end48, !dbg !60

if.end48:                                         ; preds = %if.end44, %if.then47
  ret i32 0, !dbg !61
}

; Function Attrs: optsize
declare i32 @CCTK_IsThornActive(i8*) #1

; Function Attrs: optsize
declare void @CCTKi_BindingsSchedule_BenchADM() #1

; Function Attrs: optsize
declare void @CCTKi_BindingsSchedule_Boundary() #1

; Function Attrs: optsize
declare void @CCTKi_BindingsSchedule_Cactus() #1

; Function Attrs: optsize
declare void @CCTKi_BindingsSchedule_CartGrid3D() #1

; Function Attrs: optsize
declare void @CCTKi_BindingsSchedule_Einstein() #1

; Function Attrs: optsize
declare void @CCTKi_BindingsSchedule_IDLinearWaves() #1

; Function Attrs: optsize
declare void @CCTKi_BindingsSchedule_IOASCII() #1

; Function Attrs: optsize
declare void @CCTKi_BindingsSchedule_IOBasic() #1

; Function Attrs: optsize
declare void @CCTKi_BindingsSchedule_IOUtil() #1

; Function Attrs: optsize
declare void @CCTKi_BindingsSchedule_PUGH() #1

; Function Attrs: optsize
declare void @CCTKi_BindingsSchedule_PUGHReduce() #1

; Function Attrs: optsize
declare void @CCTKi_BindingsSchedule_PUGHSlab() #1

; Function Attrs: optsize
declare void @CCTKi_BindingsSchedule_Time() #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/BindingsSchedule.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/BindingsSchedule.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_BindingsScheduleInitialise", metadata !"CCTKi_BindingsScheduleInitialise", metadata !"", i32 36, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @CCTKi_BindingsScheduleInitialise, null, null, metadata !2, i32 37} ; [ DW_TAG_subprogram ] [line 36] [def] [scope 37] [CCTKi_BindingsScheduleInitialise]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/BindingsSchedule.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 38, i32 0, metadata !4, null}
!10 = metadata !{i32 40, i32 0, metadata !11, null}
!11 = metadata !{i32 786443, metadata !1, metadata !4, i32 39, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/BindingsSchedule.c]
!12 = metadata !{i32 41, i32 0, metadata !11, null}
!13 = metadata !{i32 42, i32 0, metadata !4, null}
!14 = metadata !{i32 44, i32 0, metadata !15, null}
!15 = metadata !{i32 786443, metadata !1, metadata !4, i32 43, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/BindingsSchedule.c]
!16 = metadata !{i32 45, i32 0, metadata !15, null}
!17 = metadata !{i32 46, i32 0, metadata !4, null}
!18 = metadata !{i32 48, i32 0, metadata !19, null}
!19 = metadata !{i32 786443, metadata !1, metadata !4, i32 47, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/BindingsSchedule.c]
!20 = metadata !{i32 49, i32 0, metadata !19, null}
!21 = metadata !{i32 50, i32 0, metadata !4, null}
!22 = metadata !{i32 52, i32 0, metadata !23, null}
!23 = metadata !{i32 786443, metadata !1, metadata !4, i32 51, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/BindingsSchedule.c]
!24 = metadata !{i32 53, i32 0, metadata !23, null}
!25 = metadata !{i32 54, i32 0, metadata !4, null}
!26 = metadata !{i32 56, i32 0, metadata !27, null}
!27 = metadata !{i32 786443, metadata !1, metadata !4, i32 55, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/BindingsSchedule.c]
!28 = metadata !{i32 57, i32 0, metadata !27, null}
!29 = metadata !{i32 58, i32 0, metadata !4, null} ; [ DW_TAG_imported_module ]
!30 = metadata !{i32 60, i32 0, metadata !31, null}
!31 = metadata !{i32 786443, metadata !1, metadata !4, i32 59, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/BindingsSchedule.c]
!32 = metadata !{i32 61, i32 0, metadata !31, null}
!33 = metadata !{i32 62, i32 0, metadata !4, null}
!34 = metadata !{i32 64, i32 0, metadata !35, null}
!35 = metadata !{i32 786443, metadata !1, metadata !4, i32 63, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/BindingsSchedule.c]
!36 = metadata !{i32 65, i32 0, metadata !35, null}
!37 = metadata !{i32 66, i32 0, metadata !4, null}
!38 = metadata !{i32 68, i32 0, metadata !39, null}
!39 = metadata !{i32 786443, metadata !1, metadata !4, i32 67, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/BindingsSchedule.c]
!40 = metadata !{i32 69, i32 0, metadata !39, null}
!41 = metadata !{i32 70, i32 0, metadata !4, null}
!42 = metadata !{i32 72, i32 0, metadata !43, null}
!43 = metadata !{i32 786443, metadata !1, metadata !4, i32 71, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/BindingsSchedule.c]
!44 = metadata !{i32 73, i32 0, metadata !43, null}
!45 = metadata !{i32 74, i32 0, metadata !4, null}
!46 = metadata !{i32 76, i32 0, metadata !47, null}
!47 = metadata !{i32 786443, metadata !1, metadata !4, i32 75, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/BindingsSchedule.c]
!48 = metadata !{i32 77, i32 0, metadata !47, null}
!49 = metadata !{i32 78, i32 0, metadata !4, null}
!50 = metadata !{i32 80, i32 0, metadata !51, null}
!51 = metadata !{i32 786443, metadata !1, metadata !4, i32 79, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/BindingsSchedule.c]
!52 = metadata !{i32 81, i32 0, metadata !51, null}
!53 = metadata !{i32 82, i32 0, metadata !4, null}
!54 = metadata !{i32 84, i32 0, metadata !55, null}
!55 = metadata !{i32 786443, metadata !1, metadata !4, i32 83, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/BindingsSchedule.c]
!56 = metadata !{i32 85, i32 0, metadata !55, null}
!57 = metadata !{i32 86, i32 0, metadata !4, null}
!58 = metadata !{i32 88, i32 0, metadata !59, null}
!59 = metadata !{i32 786443, metadata !1, metadata !4, i32 87, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/BindingsSchedule.c]
!60 = metadata !{i32 89, i32 0, metadata !59, null}
!61 = metadata !{i32 90, i32 0, metadata !4, null}
