; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/RegisterThornFunctions.c'
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
define i32 @CCTKBindings_RegisterThornFunctions() #0 {
entry:
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !10), !dbg !11
  %call = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0)) #3, !dbg !12
  %tobool = icmp eq i32 %call, 0, !dbg !12
  br i1 %tobool, label %if.end, label %if.then, !dbg !12

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @CCTKBindings_IOASCIIAliases() #3, !dbg !13
  tail call void @llvm.dbg.value(metadata !{i32 %call2}, i64 0, metadata !10), !dbg !13
  br label %if.end, !dbg !15

if.end:                                           ; preds = %entry, %if.then
  %retval1.0 = phi i32 [ %call2, %if.then ], [ 0, %entry ]
  %call3 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0)) #3, !dbg !16
  %tobool4 = icmp eq i32 %call3, 0, !dbg !16
  br i1 %tobool4, label %if.end7, label %if.then5, !dbg !16

if.then5:                                         ; preds = %if.end
  %call6 = tail call i32 @CCTKBindings_BenchADMAliases() #3, !dbg !17
  tail call void @llvm.dbg.value(metadata !{i32 %call6}, i64 0, metadata !10), !dbg !17
  br label %if.end7, !dbg !19

if.end7:                                          ; preds = %if.end, %if.then5
  %retval1.1 = phi i32 [ %call6, %if.then5 ], [ %retval1.0, %if.end ]
  %call8 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0)) #3, !dbg !20
  %tobool9 = icmp eq i32 %call8, 0, !dbg !20
  br i1 %tobool9, label %if.end12, label %if.then10, !dbg !20

if.then10:                                        ; preds = %if.end7
  %call11 = tail call i32 @CCTKBindings_CactusAliases() #3, !dbg !21
  tail call void @llvm.dbg.value(metadata !{i32 %call11}, i64 0, metadata !10), !dbg !21
  br label %if.end12, !dbg !23

if.end12:                                         ; preds = %if.end7, %if.then10
  %retval1.2 = phi i32 [ %call11, %if.then10 ], [ %retval1.1, %if.end7 ]
  %call13 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0)) #3, !dbg !24
  %tobool14 = icmp eq i32 %call13, 0, !dbg !24
  br i1 %tobool14, label %if.end17, label %if.then15, !dbg !24

if.then15:                                        ; preds = %if.end12
  %call16 = tail call i32 @CCTKBindings_BoundaryAliases() #3, !dbg !25
  tail call void @llvm.dbg.value(metadata !{i32 %call16}, i64 0, metadata !10), !dbg !25
  br label %if.end17, !dbg !27

if.end17:                                         ; preds = %if.end12, %if.then15
  %retval1.3 = phi i32 [ %call16, %if.then15 ], [ %retval1.2, %if.end12 ]
  %call18 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0)) #3, !dbg !28
  %tobool19 = icmp eq i32 %call18, 0, !dbg !28
  br i1 %tobool19, label %if.end22, label %if.then20, !dbg !28

if.then20:                                        ; preds = %if.end17
  %call21 = tail call i32 @CCTKBindings_PUGHAliases() #3, !dbg !29
  tail call void @llvm.dbg.value(metadata !{i32 %call21}, i64 0, metadata !10), !dbg !29
  br label %if.end22, !dbg !31

if.end22:                                         ; preds = %if.end17, %if.then20
  %retval1.4 = phi i32 [ %call21, %if.then20 ], [ %retval1.3, %if.end17 ]
  %call23 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([7 x i8]* @.str5, i64 0, i64 0)) #3, !dbg !32
  %tobool24 = icmp eq i32 %call23, 0, !dbg !32
  br i1 %tobool24, label %if.end27, label %if.then25, !dbg !32

if.then25:                                        ; preds = %if.end22
  %call26 = tail call i32 @CCTKBindings_IOUtilAliases() #3, !dbg !33
  tail call void @llvm.dbg.value(metadata !{i32 %call26}, i64 0, metadata !10), !dbg !33
  br label %if.end27, !dbg !35

if.end27:                                         ; preds = %if.end22, %if.then25
  %retval1.5 = phi i32 [ %call26, %if.then25 ], [ %retval1.4, %if.end22 ]
  %call28 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([9 x i8]* @.str6, i64 0, i64 0)) #3, !dbg !36
  %tobool29 = icmp eq i32 %call28, 0, !dbg !36
  br i1 %tobool29, label %if.end32, label %if.then30, !dbg !36

if.then30:                                        ; preds = %if.end27
  %call31 = tail call i32 @CCTKBindings_PUGHSlabAliases() #3, !dbg !37
  tail call void @llvm.dbg.value(metadata !{i32 %call31}, i64 0, metadata !10), !dbg !37
  br label %if.end32, !dbg !39

if.end32:                                         ; preds = %if.end27, %if.then30
  %retval1.6 = phi i32 [ %call31, %if.then30 ], [ %retval1.5, %if.end27 ]
  %call33 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([11 x i8]* @.str7, i64 0, i64 0)) #3, !dbg !40
  %tobool34 = icmp eq i32 %call33, 0, !dbg !40
  br i1 %tobool34, label %if.end37, label %if.then35, !dbg !40

if.then35:                                        ; preds = %if.end32
  %call36 = tail call i32 @CCTKBindings_CartGrid3DAliases() #3, !dbg !41
  tail call void @llvm.dbg.value(metadata !{i32 %call36}, i64 0, metadata !10), !dbg !41
  br label %if.end37, !dbg !43

if.end37:                                         ; preds = %if.end32, %if.then35
  %retval1.7 = phi i32 [ %call36, %if.then35 ], [ %retval1.6, %if.end32 ]
  %call38 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([8 x i8]* @.str8, i64 0, i64 0)) #3, !dbg !44
  %tobool39 = icmp eq i32 %call38, 0, !dbg !44
  br i1 %tobool39, label %if.end42, label %if.then40, !dbg !44

if.then40:                                        ; preds = %if.end37
  %call41 = tail call i32 @CCTKBindings_IOBasicAliases() #3, !dbg !45
  tail call void @llvm.dbg.value(metadata !{i32 %call41}, i64 0, metadata !10), !dbg !45
  br label %if.end42, !dbg !47

if.end42:                                         ; preds = %if.end37, %if.then40
  %retval1.8 = phi i32 [ %call41, %if.then40 ], [ %retval1.7, %if.end37 ]
  %call43 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([11 x i8]* @.str9, i64 0, i64 0)) #3, !dbg !48
  %tobool44 = icmp eq i32 %call43, 0, !dbg !48
  br i1 %tobool44, label %if.end47, label %if.then45, !dbg !48

if.then45:                                        ; preds = %if.end42
  %call46 = tail call i32 @CCTKBindings_PUGHReduceAliases() #3, !dbg !49
  tail call void @llvm.dbg.value(metadata !{i32 %call46}, i64 0, metadata !10), !dbg !49
  br label %if.end47, !dbg !51

if.end47:                                         ; preds = %if.end42, %if.then45
  %retval1.9 = phi i32 [ %call46, %if.then45 ], [ %retval1.8, %if.end42 ]
  %call48 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([14 x i8]* @.str10, i64 0, i64 0)) #3, !dbg !52
  %tobool49 = icmp eq i32 %call48, 0, !dbg !52
  br i1 %tobool49, label %if.end52, label %if.then50, !dbg !52

if.then50:                                        ; preds = %if.end47
  %call51 = tail call i32 @CCTKBindings_IDLinearWavesAliases() #3, !dbg !53
  tail call void @llvm.dbg.value(metadata !{i32 %call51}, i64 0, metadata !10), !dbg !53
  br label %if.end52, !dbg !55

if.end52:                                         ; preds = %if.end47, %if.then50
  %retval1.10 = phi i32 [ %call51, %if.then50 ], [ %retval1.9, %if.end47 ]
  %call53 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([5 x i8]* @.str11, i64 0, i64 0)) #3, !dbg !56
  %tobool54 = icmp eq i32 %call53, 0, !dbg !56
  br i1 %tobool54, label %if.end57, label %if.then55, !dbg !56

if.then55:                                        ; preds = %if.end52
  %call56 = tail call i32 @CCTKBindings_TimeAliases() #3, !dbg !57
  tail call void @llvm.dbg.value(metadata !{i32 %call56}, i64 0, metadata !10), !dbg !57
  br label %if.end57, !dbg !59

if.end57:                                         ; preds = %if.end52, %if.then55
  %retval1.11 = phi i32 [ %call56, %if.then55 ], [ %retval1.10, %if.end52 ]
  %call58 = tail call i32 @CCTK_IsThornActive(i8* getelementptr inbounds ([9 x i8]* @.str12, i64 0, i64 0)) #3, !dbg !60
  %tobool59 = icmp eq i32 %call58, 0, !dbg !60
  br i1 %tobool59, label %if.end62, label %if.then60, !dbg !60

if.then60:                                        ; preds = %if.end57
  %call61 = tail call i32 @CCTKBindings_EinsteinAliases() #3, !dbg !61
  tail call void @llvm.dbg.value(metadata !{i32 %call61}, i64 0, metadata !10), !dbg !61
  br label %if.end62, !dbg !63

if.end62:                                         ; preds = %if.end57, %if.then60
  %retval1.12 = phi i32 [ %call61, %if.then60 ], [ %retval1.11, %if.end57 ]
  ret i32 %retval1.12, !dbg !64
}

; Function Attrs: optsize
declare i32 @CCTK_IsThornActive(i8*) #1

; Function Attrs: optsize
declare i32 @CCTKBindings_IOASCIIAliases() #1

; Function Attrs: optsize
declare i32 @CCTKBindings_BenchADMAliases() #1

; Function Attrs: optsize
declare i32 @CCTKBindings_CactusAliases() #1

; Function Attrs: optsize
declare i32 @CCTKBindings_BoundaryAliases() #1

; Function Attrs: optsize
declare i32 @CCTKBindings_PUGHAliases() #1

; Function Attrs: optsize
declare i32 @CCTKBindings_IOUtilAliases() #1

; Function Attrs: optsize
declare i32 @CCTKBindings_PUGHSlabAliases() #1

; Function Attrs: optsize
declare i32 @CCTKBindings_CartGrid3DAliases() #1

; Function Attrs: optsize
declare i32 @CCTKBindings_IOBasicAliases() #1

; Function Attrs: optsize
declare i32 @CCTKBindings_PUGHReduceAliases() #1

; Function Attrs: optsize
declare i32 @CCTKBindings_IDLinearWavesAliases() #1

; Function Attrs: optsize
declare i32 @CCTKBindings_TimeAliases() #1

; Function Attrs: optsize
declare i32 @CCTKBindings_EinsteinAliases() #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/RegisterThornFunctions.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/RegisterThornFunctions.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKBindings_RegisterThornFunctions", metadata !"CCTKBindings_RegisterThornFunctions", metadata !"", i32 33, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @CCTKBindings_RegisterThornFunctions, null, null, metadata !9, i32 34} ; [ DW_TAG_subprogram ] [line 33] [def] [scope 34] [CCTKBindings_RegisterThornFunctions]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/RegisterThornFunctions.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{metadata !10}
!10 = metadata !{i32 786688, metadata !4, metadata !"retval", metadata !5, i32 35, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 35]
!11 = metadata !{i32 35, i32 0, metadata !4, null}
!12 = metadata !{i32 36, i32 0, metadata !4, null}
!13 = metadata !{i32 38, i32 0, metadata !14, null}
!14 = metadata !{i32 786443, metadata !1, metadata !4, i32 37, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/RegisterThornFunctions.c]
!15 = metadata !{i32 39, i32 0, metadata !14, null}
!16 = metadata !{i32 40, i32 0, metadata !4, null}
!17 = metadata !{i32 42, i32 0, metadata !18, null}
!18 = metadata !{i32 786443, metadata !1, metadata !4, i32 41, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/RegisterThornFunctions.c]
!19 = metadata !{i32 43, i32 0, metadata !18, null}
!20 = metadata !{i32 44, i32 0, metadata !4, null}
!21 = metadata !{i32 46, i32 0, metadata !22, null}
!22 = metadata !{i32 786443, metadata !1, metadata !4, i32 45, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/RegisterThornFunctions.c]
!23 = metadata !{i32 47, i32 0, metadata !22, null}
!24 = metadata !{i32 48, i32 0, metadata !4, null}
!25 = metadata !{i32 50, i32 0, metadata !26, null}
!26 = metadata !{i32 786443, metadata !1, metadata !4, i32 49, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/RegisterThornFunctions.c]
!27 = metadata !{i32 51, i32 0, metadata !26, null}
!28 = metadata !{i32 52, i32 0, metadata !4, null}
!29 = metadata !{i32 54, i32 0, metadata !30, null}
!30 = metadata !{i32 786443, metadata !1, metadata !4, i32 53, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/RegisterThornFunctions.c]
!31 = metadata !{i32 55, i32 0, metadata !30, null}
!32 = metadata !{i32 56, i32 0, metadata !4, null}
!33 = metadata !{i32 58, i32 0, metadata !34, null} ; [ DW_TAG_imported_module ]
!34 = metadata !{i32 786443, metadata !1, metadata !4, i32 57, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/RegisterThornFunctions.c]
!35 = metadata !{i32 59, i32 0, metadata !34, null}
!36 = metadata !{i32 60, i32 0, metadata !4, null}
!37 = metadata !{i32 62, i32 0, metadata !38, null}
!38 = metadata !{i32 786443, metadata !1, metadata !4, i32 61, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/RegisterThornFunctions.c]
!39 = metadata !{i32 63, i32 0, metadata !38, null}
!40 = metadata !{i32 64, i32 0, metadata !4, null}
!41 = metadata !{i32 66, i32 0, metadata !42, null}
!42 = metadata !{i32 786443, metadata !1, metadata !4, i32 65, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/RegisterThornFunctions.c]
!43 = metadata !{i32 67, i32 0, metadata !42, null}
!44 = metadata !{i32 68, i32 0, metadata !4, null}
!45 = metadata !{i32 70, i32 0, metadata !46, null}
!46 = metadata !{i32 786443, metadata !1, metadata !4, i32 69, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/RegisterThornFunctions.c]
!47 = metadata !{i32 71, i32 0, metadata !46, null}
!48 = metadata !{i32 72, i32 0, metadata !4, null}
!49 = metadata !{i32 74, i32 0, metadata !50, null}
!50 = metadata !{i32 786443, metadata !1, metadata !4, i32 73, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/RegisterThornFunctions.c]
!51 = metadata !{i32 75, i32 0, metadata !50, null}
!52 = metadata !{i32 76, i32 0, metadata !4, null}
!53 = metadata !{i32 78, i32 0, metadata !54, null}
!54 = metadata !{i32 786443, metadata !1, metadata !4, i32 77, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/RegisterThornFunctions.c]
!55 = metadata !{i32 79, i32 0, metadata !54, null}
!56 = metadata !{i32 80, i32 0, metadata !4, null}
!57 = metadata !{i32 82, i32 0, metadata !58, null}
!58 = metadata !{i32 786443, metadata !1, metadata !4, i32 81, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/RegisterThornFunctions.c]
!59 = metadata !{i32 83, i32 0, metadata !58, null}
!60 = metadata !{i32 84, i32 0, metadata !4, null}
!61 = metadata !{i32 86, i32 0, metadata !62, null}
!62 = metadata !{i32 786443, metadata !1, metadata !4, i32 85, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/CactusBindings/RegisterThornFunctions.c]
!63 = metadata !{i32 87, i32 0, metadata !62, null}
!64 = metadata !{i32 88, i32 0, metadata !4, null}
