; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/BindingsVariables.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"IOASCII\00", align 1
@.str1 = private unnamed_addr constant [9 x i8] c"BenchADM\00", align 1
@.str2 = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1
@.str3 = private unnamed_addr constant [9 x i8] c"Boundary\00", align 1
@.str4 = private unnamed_addr constant [5 x i8] c"PUGH\00", align 1
@.str5 = private unnamed_addr constant [7 x i8] c"IOUtil\00", align 1
@.str6 = private unnamed_addr constant [9 x i8] c"PUGHSlab\00", align 1
@.str7 = private unnamed_addr constant [11 x i8] c"CartGrid3D\00", align 1
@.str8 = private unnamed_addr constant [8 x i8] c"IOBasic\00", align 1
@.str9 = private unnamed_addr constant [11 x i8] c"PUGHReduce\00", align 1
@.str10 = private unnamed_addr constant [14 x i8] c"IDLinearWaves\00", align 1
@.str11 = private unnamed_addr constant [5 x i8] c"Time\00", align 1
@.str12 = private unnamed_addr constant [9 x i8] c"Einstein\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_BindingsVariablesInitialise() #0 {
entry:
  %call = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0)) #2, !dbg !9
  %tobool = icmp eq i32 %call, 0, !dbg !9
  br i1 %tobool, label %if.end, label %if.then, !dbg !9

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @CactusBindingsVariables_IOASCII_Initialise() #2, !dbg !10
  br label %if.end, !dbg !12

if.end:                                           ; preds = %entry, %if.then
  %call2 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0)) #2, !dbg !13
  %tobool3 = icmp eq i32 %call2, 0, !dbg !13
  br i1 %tobool3, label %if.end6, label %if.then4, !dbg !13

if.then4:                                         ; preds = %if.end
  %call5 = tail call i32 @CactusBindingsVariables_BenchADM_Initialise() #2, !dbg !14
  br label %if.end6, !dbg !16

if.end6:                                          ; preds = %if.end, %if.then4
  %call7 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0)) #2, !dbg !17
  %tobool8 = icmp eq i32 %call7, 0, !dbg !17
  br i1 %tobool8, label %if.end11, label %if.then9, !dbg !17

if.then9:                                         ; preds = %if.end6
  %call10 = tail call i32 @CactusBindingsVariables_Cactus_Initialise() #2, !dbg !18
  br label %if.end11, !dbg !20

if.end11:                                         ; preds = %if.end6, %if.then9
  %call12 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0)) #2, !dbg !21
  %tobool13 = icmp eq i32 %call12, 0, !dbg !21
  br i1 %tobool13, label %if.end16, label %if.then14, !dbg !21

if.then14:                                        ; preds = %if.end11
  %call15 = tail call i32 @CactusBindingsVariables_Boundary_Initialise() #2, !dbg !22
  br label %if.end16, !dbg !24

if.end16:                                         ; preds = %if.end11, %if.then14
  %call17 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0)) #2, !dbg !25
  %tobool18 = icmp eq i32 %call17, 0, !dbg !25
  br i1 %tobool18, label %if.end21, label %if.then19, !dbg !25

if.then19:                                        ; preds = %if.end16
  %call20 = tail call i32 @CactusBindingsVariables_PUGH_Initialise() #2, !dbg !26
  br label %if.end21, !dbg !28

if.end21:                                         ; preds = %if.end16, %if.then19
  %call22 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([7 x i8]* @.str5, i64 0, i64 0)) #2, !dbg !29
  %tobool23 = icmp eq i32 %call22, 0, !dbg !29
  br i1 %tobool23, label %if.end26, label %if.then24, !dbg !29

if.then24:                                        ; preds = %if.end21
  %call25 = tail call i32 @CactusBindingsVariables_IOUtil_Initialise() #2, !dbg !30
  br label %if.end26, !dbg !32

if.end26:                                         ; preds = %if.end21, %if.then24
  %call27 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([9 x i8]* @.str6, i64 0, i64 0)) #2, !dbg !33
  %tobool28 = icmp eq i32 %call27, 0, !dbg !33
  br i1 %tobool28, label %if.end31, label %if.then29, !dbg !33

if.then29:                                        ; preds = %if.end26
  %call30 = tail call i32 @CactusBindingsVariables_PUGHSlab_Initialise() #2, !dbg !34
  br label %if.end31, !dbg !36

if.end31:                                         ; preds = %if.end26, %if.then29
  %call32 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([11 x i8]* @.str7, i64 0, i64 0)) #2, !dbg !37
  %tobool33 = icmp eq i32 %call32, 0, !dbg !37
  br i1 %tobool33, label %if.end36, label %if.then34, !dbg !37

if.then34:                                        ; preds = %if.end31
  %call35 = tail call i32 @CactusBindingsVariables_CartGrid3D_Initialise() #2, !dbg !38
  br label %if.end36, !dbg !40

if.end36:                                         ; preds = %if.end31, %if.then34
  %call37 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([8 x i8]* @.str8, i64 0, i64 0)) #2, !dbg !41
  %tobool38 = icmp eq i32 %call37, 0, !dbg !41
  br i1 %tobool38, label %if.end41, label %if.then39, !dbg !41

if.then39:                                        ; preds = %if.end36
  %call40 = tail call i32 @CactusBindingsVariables_IOBasic_Initialise() #2, !dbg !42
  br label %if.end41, !dbg !44

if.end41:                                         ; preds = %if.end36, %if.then39
  %call42 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([11 x i8]* @.str9, i64 0, i64 0)) #2, !dbg !45
  %tobool43 = icmp eq i32 %call42, 0, !dbg !45
  br i1 %tobool43, label %if.end46, label %if.then44, !dbg !45

if.then44:                                        ; preds = %if.end41
  %call45 = tail call i32 @CactusBindingsVariables_PUGHReduce_Initialise() #2, !dbg !46
  br label %if.end46, !dbg !48

if.end46:                                         ; preds = %if.end41, %if.then44
  %call47 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([14 x i8]* @.str10, i64 0, i64 0)) #2, !dbg !49
  %tobool48 = icmp eq i32 %call47, 0, !dbg !49
  br i1 %tobool48, label %if.end51, label %if.then49, !dbg !49

if.then49:                                        ; preds = %if.end46
  %call50 = tail call i32 @CactusBindingsVariables_IDLinearWaves_Initialise() #2, !dbg !50
  br label %if.end51, !dbg !52

if.end51:                                         ; preds = %if.end46, %if.then49
  %call52 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([5 x i8]* @.str11, i64 0, i64 0)) #2, !dbg !53
  %tobool53 = icmp eq i32 %call52, 0, !dbg !53
  br i1 %tobool53, label %if.end56, label %if.then54, !dbg !53

if.then54:                                        ; preds = %if.end51
  %call55 = tail call i32 @CactusBindingsVariables_Time_Initialise() #2, !dbg !54
  br label %if.end56, !dbg !56

if.end56:                                         ; preds = %if.end51, %if.then54
  %call57 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0)) #2, !dbg !57
  %tobool58 = icmp eq i32 %call57, 0, !dbg !57
  br i1 %tobool58, label %if.end61, label %if.then59, !dbg !57

if.then59:                                        ; preds = %if.end56
  %call60 = tail call i32 @CactusBindingsVariables_Einstein_Initialise() #2, !dbg !58
  br label %if.end61, !dbg !60

if.end61:                                         ; preds = %if.end56, %if.then59
  ret i32 0, !dbg !61
}

; Function Attrs: optsize
declare i32 @CCTK_IsThornActive(i8*) #1

; Function Attrs: optsize
declare i32 @CactusBindingsVariables_IOASCII_Initialise() #1

; Function Attrs: optsize
declare i32 @CactusBindingsVariables_BenchADM_Initialise() #1

; Function Attrs: optsize
declare i32 @CactusBindingsVariables_Cactus_Initialise() #1

; Function Attrs: optsize
declare i32 @CactusBindingsVariables_Boundary_Initialise() #1

; Function Attrs: optsize
declare i32 @CactusBindingsVariables_PUGH_Initialise() #1

; Function Attrs: optsize
declare i32 @CactusBindingsVariables_IOUtil_Initialise() #1

; Function Attrs: optsize
declare i32 @CactusBindingsVariables_PUGHSlab_Initialise() #1

; Function Attrs: optsize
declare i32 @CactusBindingsVariables_CartGrid3D_Initialise() #1

; Function Attrs: optsize
declare i32 @CactusBindingsVariables_IOBasic_Initialise() #1

; Function Attrs: optsize
declare i32 @CactusBindingsVariables_PUGHReduce_Initialise() #1

; Function Attrs: optsize
declare i32 @CactusBindingsVariables_IDLinearWaves_Initialise() #1

; Function Attrs: optsize
declare i32 @CactusBindingsVariables_Time_Initialise() #1

; Function Attrs: optsize
declare i32 @CactusBindingsVariables_Einstein_Initialise() #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/BindingsVariables.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/BindingsVariables.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_BindingsVariablesInitialise", metadata !"CCTKi_BindingsVariablesInitialise", metadata !"", i32 21, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @CCTKi_BindingsVariablesInitialise, null, null, metadata !2, i32 22} ; [ DW_TAG_subprogram ] [line 21] [def] [scope 22] [CCTKi_BindingsVariablesInitialise]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/BindingsVariables.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 23, i32 0, metadata !4, null}
!10 = metadata !{i32 25, i32 0, metadata !11, null}
!11 = metadata !{i32 786443, metadata !1, metadata !4, i32 24, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/BindingsVariables.c]
!12 = metadata !{i32 26, i32 0, metadata !11, null}
!13 = metadata !{i32 27, i32 0, metadata !4, null}
!14 = metadata !{i32 29, i32 0, metadata !15, null}
!15 = metadata !{i32 786443, metadata !1, metadata !4, i32 28, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/BindingsVariables.c]
!16 = metadata !{i32 30, i32 0, metadata !15, null}
!17 = metadata !{i32 31, i32 0, metadata !4, null}
!18 = metadata !{i32 33, i32 0, metadata !19, null}
!19 = metadata !{i32 786443, metadata !1, metadata !4, i32 32, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/BindingsVariables.c]
!20 = metadata !{i32 34, i32 0, metadata !19, null}
!21 = metadata !{i32 35, i32 0, metadata !4, null}
!22 = metadata !{i32 37, i32 0, metadata !23, null}
!23 = metadata !{i32 786443, metadata !1, metadata !4, i32 36, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/BindingsVariables.c]
!24 = metadata !{i32 38, i32 0, metadata !23, null}
!25 = metadata !{i32 39, i32 0, metadata !4, null}
!26 = metadata !{i32 41, i32 0, metadata !27, null}
!27 = metadata !{i32 786443, metadata !1, metadata !4, i32 40, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/BindingsVariables.c]
!28 = metadata !{i32 42, i32 0, metadata !27, null}
!29 = metadata !{i32 43, i32 0, metadata !4, null}
!30 = metadata !{i32 45, i32 0, metadata !31, null}
!31 = metadata !{i32 786443, metadata !1, metadata !4, i32 44, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/BindingsVariables.c]
!32 = metadata !{i32 46, i32 0, metadata !31, null}
!33 = metadata !{i32 47, i32 0, metadata !4, null}
!34 = metadata !{i32 49, i32 0, metadata !35, null}
!35 = metadata !{i32 786443, metadata !1, metadata !4, i32 48, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/BindingsVariables.c]
!36 = metadata !{i32 50, i32 0, metadata !35, null}
!37 = metadata !{i32 51, i32 0, metadata !4, null}
!38 = metadata !{i32 53, i32 0, metadata !39, null}
!39 = metadata !{i32 786443, metadata !1, metadata !4, i32 52, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/BindingsVariables.c]
!40 = metadata !{i32 54, i32 0, metadata !39, null}
!41 = metadata !{i32 55, i32 0, metadata !4, null}
!42 = metadata !{i32 57, i32 0, metadata !43, null}
!43 = metadata !{i32 786443, metadata !1, metadata !4, i32 56, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/BindingsVariables.c]
!44 = metadata !{i32 58, i32 0, metadata !43, null} ; [ DW_TAG_imported_module ]
!45 = metadata !{i32 59, i32 0, metadata !4, null}
!46 = metadata !{i32 61, i32 0, metadata !47, null}
!47 = metadata !{i32 786443, metadata !1, metadata !4, i32 60, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/BindingsVariables.c]
!48 = metadata !{i32 62, i32 0, metadata !47, null}
!49 = metadata !{i32 63, i32 0, metadata !4, null}
!50 = metadata !{i32 65, i32 0, metadata !51, null}
!51 = metadata !{i32 786443, metadata !1, metadata !4, i32 64, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/BindingsVariables.c]
!52 = metadata !{i32 66, i32 0, metadata !51, null}
!53 = metadata !{i32 67, i32 0, metadata !4, null}
!54 = metadata !{i32 69, i32 0, metadata !55, null}
!55 = metadata !{i32 786443, metadata !1, metadata !4, i32 68, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/BindingsVariables.c]
!56 = metadata !{i32 70, i32 0, metadata !55, null}
!57 = metadata !{i32 71, i32 0, metadata !4, null}
!58 = metadata !{i32 73, i32 0, metadata !59, null}
!59 = metadata !{i32 786443, metadata !1, metadata !4, i32 72, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/BindingsVariables.c]
!60 = metadata !{i32 74, i32 0, metadata !59, null}
!61 = metadata !{i32 75, i32 0, metadata !4, null}
