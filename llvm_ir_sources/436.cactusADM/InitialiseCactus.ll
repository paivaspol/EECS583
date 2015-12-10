; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/InitialiseCactus.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tFleshConfig = type { i8*, %struct.cGH**, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@startuptime = internal unnamed_addr global i64 0, align 8
@.str = private unnamed_addr constant [73 x i8] c"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/InitialiseCactus.c\00", align 1
@.str1 = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1
@.str2 = private unnamed_addr constant [29 x i8] c"Failed to recover parameters\00", align 1
@.str3 = private unnamed_addr constant [19 x i8] c"cctk_show_schedule\00", align 1
@.str5 = private unnamed_addr constant [92 x i8] c"$Header: /cactus/Cactus/src/main/InitialiseCactus.c,v 1.28 2001/11/05 14:58:53 tradke Exp $\00", align 1
@str6 = private unnamed_addr constant [81 x i8] c"--------------------------------------------------------------------------------\00"

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_main_InitialiseCactus_c() #0 {
entry:
  ret i8* getelementptr inbounds ([92 x i8]* @.str5, i64 0, i64 0), !dbg !88
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_InitialiseCactus(i32* %argc, i8*** %argv, %struct.tFleshConfig* %ConfigData) #1 {
entry:
  %i.i = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{i32* %argc}, i64 0, metadata !66), !dbg !89
  call void @llvm.dbg.value(metadata !{i8*** %argv}, i64 0, metadata !67), !dbg !89
  call void @llvm.dbg.value(metadata !{%struct.tFleshConfig* %ConfigData}, i64 0, metadata !68), !dbg !89
  %call = call i64 @time(i64* null) #6, !dbg !90
  store i64 %call, i64* @startuptime, align 8, !dbg !90, !tbaa !91
  %call1 = call i32 @CCTKi_InitialiseSubsystemDefaults() #6, !dbg !94
  %call2 = call i32 @CCTKi_ProcessEnvironment(i32* %argc, i8*** %argv, %struct.tFleshConfig* %ConfigData) #6, !dbg !95
  %call3 = call i32 @CCTKi_ProcessCommandLine(i32* %argc, i8*** %argv, %struct.tFleshConfig* %ConfigData) #6, !dbg !96
  call void @CCTKi_CactusBanner() #6, !dbg !97
  %call4 = call i32 @CCTKi_InitialiseDataStructures(%struct.tFleshConfig* %ConfigData) #6, !dbg !98
  %call5 = call i32 @CCTKi_ProcessParameterDatabase(%struct.tFleshConfig* %ConfigData) #6, !dbg !99
  %call6 = call i32 @CCTKi_BindingsVariablesInitialise() #6, !dbg !100
  %call7 = call i32 @CCTKBindings_RegisterThornFunctions() #6, !dbg !101
  %0 = bitcast i32* %i.i to i8*, !dbg !102
  call void @llvm.lifetime.start(i64 4, i8* %0) #5, !dbg !102
  call void @llvm.dbg.value(metadata !104, i64 0, metadata !105) #5, !dbg !102
  call void @llvm.dbg.declare(metadata !{i32* %i.i}, metadata !77) #5, !dbg !106
  call void @llvm.dbg.value(metadata !104, i64 0, metadata !105) #5, !dbg !107
  call void @CCTKi_SetParameterSetMask(i32 1) #6, !dbg !108
  %call.i = call i32 @CCTKi_BindingsParameterRecoveryInitialise() #6, !dbg !109
  %cmp.i = icmp slt i32 %call.i, 0, !dbg !109
  br i1 %cmp.i, label %if.then.i, label %if.end.i, !dbg !109

if.then.i:                                        ; preds = %entry
  %call1.i = call i32 @CCTK_Warn(i32 0, i32 178, i8* getelementptr inbounds ([73 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8]* @.str2, i64 0, i64 0)) #6, !dbg !110
  br label %if.end.i, !dbg !112

if.end.i:                                         ; preds = %if.then.i, %entry
  call void @CCTKi_SetParameterSetMask(i32 2) #6, !dbg !113
  %call2.i = call i32 @CCTKi_BindingsScheduleInitialise() #6, !dbg !114
  %call3.i = call i32 @CCTKi_DoScheduleSortAllGroups() #6, !dbg !115
  call void @llvm.dbg.value(metadata !{i32 %call3.i}, i64 0, metadata !116) #5, !dbg !115
  %call4.i = call i8* @CCTK_ParameterGet(i8* getelementptr inbounds ([19 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i32* %i.i) #6, !dbg !117
  %1 = bitcast i8* %call4.i to i32*, !dbg !117
  call void @llvm.dbg.value(metadata !{i32* %1}, i64 0, metadata !118) #5, !dbg !117
  %2 = load i32* %1, align 4, !dbg !119, !tbaa !120
  %tobool.i = icmp eq i32 %2, 0, !dbg !119
  br i1 %tobool.i, label %CCTKi_InitialiseScheduler.exit, label %if.then5.i, !dbg !119

if.then5.i:                                       ; preds = %if.end.i
  %puts.i = call i32 @puts(i8* getelementptr inbounds ([81 x i8]* @str6, i64 0, i64 0)) #5, !dbg !121
  %call7.i = call i32 @CCTK_SchedulePrint(i8* null) #6, !dbg !123
  %puts1.i = call i32 @puts(i8* getelementptr inbounds ([81 x i8]* @str6, i64 0, i64 0)) #5, !dbg !124
  br label %CCTKi_InitialiseScheduler.exit, !dbg !125

CCTKi_InitialiseScheduler.exit:                   ; preds = %if.end.i, %if.then5.i
  call void @llvm.lifetime.end(i64 4, i8* %0) #5
  %call9 = call i32 @CCTKi_CallStartupFunctions(%struct.tFleshConfig* %ConfigData) #6, !dbg !126
  %call10 = call i32 @CCTKi_PrintBanners() #6, !dbg !127
  ret i32 0, !dbg !128
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #2

; Function Attrs: nounwind optsize
declare i64 @time(i64*) #3

; Function Attrs: optsize
declare i32 @CCTKi_InitialiseSubsystemDefaults() #4

; Function Attrs: optsize
declare i32 @CCTKi_ProcessEnvironment(i32*, i8***, %struct.tFleshConfig*) #4

; Function Attrs: optsize
declare i32 @CCTKi_ProcessCommandLine(i32*, i8***, %struct.tFleshConfig*) #4

; Function Attrs: optsize
declare void @CCTKi_CactusBanner() #4

; Function Attrs: optsize
declare i32 @CCTKi_InitialiseDataStructures(%struct.tFleshConfig*) #4

; Function Attrs: optsize
declare i32 @CCTKi_ProcessParameterDatabase(%struct.tFleshConfig*) #4

; Function Attrs: optsize
declare i32 @CCTKi_BindingsVariablesInitialise() #4

; Function Attrs: optsize
declare i32 @CCTKBindings_RegisterThornFunctions() #4

; Function Attrs: optsize
declare i32 @CCTKi_CallStartupFunctions(%struct.tFleshConfig*) #4

; Function Attrs: optsize
declare i32 @CCTKi_PrintBanners() #4

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_RunTime() #1 {
entry:
  %call = tail call i64 @time(i64* null) #6, !dbg !129
  %0 = load i64* @startuptime, align 8, !dbg !129, !tbaa !91
  %sub = sub nsw i64 %call, %0, !dbg !129
  %conv = trunc i64 %sub to i32, !dbg !129
  ret i32 %conv, !dbg !129
}

; Function Attrs: optsize
declare void @CCTKi_SetParameterSetMask(i32) #4

; Function Attrs: optsize
declare i32 @CCTKi_BindingsParameterRecoveryInitialise() #4

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #4

; Function Attrs: optsize
declare i32 @CCTKi_BindingsScheduleInitialise() #4

; Function Attrs: optsize
declare i32 @CCTKi_DoScheduleSortAllGroups() #4

; Function Attrs: optsize
declare i8* @CCTK_ParameterGet(i8*, i8*, i32*) #4

; Function Attrs: optsize
declare i32 @CCTK_SchedulePrint(i8*) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !82, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/InitialiseCactus.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/InitialiseCactus.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11, metadata !69, metadata !72}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_main_InitialiseCactus_c", metadata !"CCTKi_version_main_InitialiseCactus_c", metadata !"", i32 31, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_main_InitialiseCactus_c, null, null, metadata !2, i32 31} ; [ DW_TAG_subprogram ] [line 31] [def] [CCTKi_version_main_InitialiseCactus_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/InitialiseCactus.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_InitialiseCactus", metadata !"CCTKi_InitialiseCactus", metadata !"", i32 107, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32*, i8***, %struct.tFleshConfig*)* @CCTKi_InitialiseCactus, null, null, metadata !65, i32 108} ; [ DW_TAG_subprogram ] [line 107] [def] [scope 108] [CCTKi_InitialiseCactus]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !15, metadata !16, metadata !19}
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!16 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !17} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!17 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!18 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!19 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from tFleshConfig]
!20 = metadata !{i32 786454, metadata !1, null, metadata !"tFleshConfig", i32 28, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_typedef ] [tFleshConfig] [line 28, size 0, align 0, offset 0] [from ]
!21 = metadata !{i32 786451, metadata !22, null, metadata !"", i32 19, i64 192, i64 64, i32 0, i32 0, null, metadata !23, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 19, size 192, align 64, offset 0] [from ]
!22 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cctk_Flesh.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!23 = metadata !{metadata !24, metadata !25, metadata !63}
!24 = metadata !{i32 786445, metadata !22, metadata !21, metadata !"parameter_file_name", i32 21, i64 64, i64 64, i64 0, i32 0, metadata !18} ; [ DW_TAG_member ] [parameter_file_name] [line 21, size 64, align 64, offset 0] [from ]
!25 = metadata !{i32 786445, metadata !22, metadata !21, metadata !"GH", i32 24, i64 64, i64 64, i64 64, i32 0, metadata !26} ; [ DW_TAG_member ] [GH] [line 24, size 64, align 64, offset 64] [from ]
!26 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !27} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!27 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !28} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGH]
!28 = metadata !{i32 786454, metadata !22, null, metadata !"cGH", i32 75, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ] [cGH] [line 75, size 0, align 0, offset 0] [from ]
!29 = metadata !{i32 786451, metadata !30, null, metadata !"", i32 24, i64 1216, i64 64, i32 0, i32 0, null, metadata !31, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 24, size 1216, align 64, offset 0] [from ]
!30 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cGH.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!31 = metadata !{metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !43, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !55, metadata !56}
!32 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"cctk_dim", i32 26, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_dim] [line 26, size 32, align 32, offset 0] [from int]
!33 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"cctk_iteration", i32 27, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_iteration] [line 27, size 32, align 32, offset 32] [from int]
!34 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"cctk_gsh", i32 30, i64 64, i64 64, i64 64, i32 0, metadata !15} ; [ DW_TAG_member ] [cctk_gsh] [line 30, size 64, align 64, offset 64] [from ]
!35 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"cctk_lsh", i32 31, i64 64, i64 64, i64 128, i32 0, metadata !15} ; [ DW_TAG_member ] [cctk_lsh] [line 31, size 64, align 64, offset 128] [from ]
!36 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"cctk_lbnd", i32 32, i64 64, i64 64, i64 192, i32 0, metadata !15} ; [ DW_TAG_member ] [cctk_lbnd] [line 32, size 64, align 64, offset 192] [from ]
!37 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"cctk_ubnd", i32 33, i64 64, i64 64, i64 256, i32 0, metadata !15} ; [ DW_TAG_member ] [cctk_ubnd] [line 33, size 64, align 64, offset 256] [from ]
!38 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"cctk_lssh", i32 36, i64 64, i64 64, i64 320, i32 0, metadata !15} ; [ DW_TAG_member ] [cctk_lssh] [line 36, size 64, align 64, offset 320] [from ]
!39 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"cctk_to", i32 39, i64 64, i64 64, i64 384, i32 0, metadata !15} ; [ DW_TAG_member ] [cctk_to] [line 39, size 64, align 64, offset 384] [from ]
!40 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"cctk_from", i32 40, i64 64, i64 64, i64 448, i32 0, metadata !15} ; [ DW_TAG_member ] [cctk_from] [line 40, size 64, align 64, offset 448] [from ]
!41 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"cctk_delta_time", i32 43, i64 64, i64 64, i64 512, i32 0, metadata !42} ; [ DW_TAG_member ] [cctk_delta_time] [line 43, size 64, align 64, offset 512] [from double]
!42 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!43 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"cctk_delta_space", i32 44, i64 64, i64 64, i64 576, i32 0, metadata !44} ; [ DW_TAG_member ] [cctk_delta_space] [line 44, size 64, align 64, offset 576] [from ]
!44 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !42} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!45 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"cctk_origin_space", i32 47, i64 64, i64 64, i64 640, i32 0, metadata !44} ; [ DW_TAG_member ] [cctk_origin_space] [line 47, size 64, align 64, offset 640] [from ]
!46 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"cctk_bbox", i32 51, i64 64, i64 64, i64 704, i32 0, metadata !15} ; [ DW_TAG_member ] [cctk_bbox] [line 51, size 64, align 64, offset 704] [from ]
!47 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"cctk_levfac", i32 54, i64 64, i64 64, i64 768, i32 0, metadata !15} ; [ DW_TAG_member ] [cctk_levfac] [line 54, size 64, align 64, offset 768] [from ]
!48 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"cctk_convlevel", i32 57, i64 32, i64 32, i64 832, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_convlevel] [line 57, size 32, align 32, offset 832] [from int]
!49 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"cctk_nghostzones", i32 60, i64 64, i64 64, i64 896, i32 0, metadata !15} ; [ DW_TAG_member ] [cctk_nghostzones] [line 60, size 64, align 64, offset 896] [from ]
!50 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"cctk_time", i32 63, i64 64, i64 64, i64 960, i32 0, metadata !42} ; [ DW_TAG_member ] [cctk_time] [line 63, size 64, align 64, offset 960] [from double]
!51 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"data", i32 67, i64 64, i64 64, i64 1024, i32 0, metadata !52} ; [ DW_TAG_member ] [data] [line 67, size 64, align 64, offset 1024] [from ]
!52 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !53} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!53 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !54} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!54 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!55 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"extensions", i32 70, i64 64, i64 64, i64 1088, i32 0, metadata !53} ; [ DW_TAG_member ] [extensions] [line 70, size 64, align 64, offset 1088] [from ]
!56 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"GroupData", i32 73, i64 64, i64 64, i64 1152, i32 0, metadata !57} ; [ DW_TAG_member ] [GroupData] [line 73, size 64, align 64, offset 1152] [from ]
!57 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !58} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGHGroupData]
!58 = metadata !{i32 786454, metadata !30, null, metadata !"cGHGroupData", i32 22, i64 0, i64 0, i64 0, i32 0, metadata !59} ; [ DW_TAG_typedef ] [cGHGroupData] [line 22, size 0, align 0, offset 0] [from ]
!59 = metadata !{i32 786451, metadata !30, null, metadata !"", i32 18, i64 16, i64 8, i32 0, i32 0, null, metadata !60, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 18, size 16, align 8, offset 0] [from ]
!60 = metadata !{metadata !61, metadata !62}
!61 = metadata !{i32 786445, metadata !30, metadata !59, metadata !"storage", i32 20, i64 8, i64 8, i64 0, i32 0, metadata !10} ; [ DW_TAG_member ] [storage] [line 20, size 8, align 8, offset 0] [from char]
!62 = metadata !{i32 786445, metadata !30, metadata !59, metadata !"comm", i32 21, i64 8, i64 8, i64 8, i32 0, metadata !10} ; [ DW_TAG_member ] [comm] [line 21, size 8, align 8, offset 8] [from char]
!63 = metadata !{i32 786445, metadata !22, metadata !21, metadata !"nGHs", i32 25, i64 32, i64 32, i64 128, i32 0, metadata !64} ; [ DW_TAG_member ] [nGHs] [line 25, size 32, align 32, offset 128] [from unsigned int]
!64 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!65 = metadata !{metadata !66, metadata !67, metadata !68}
!66 = metadata !{i32 786689, metadata !11, metadata !"argc", metadata !5, i32 16777323, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argc] [line 107]
!67 = metadata !{i32 786689, metadata !11, metadata !"argv", metadata !5, i32 33554539, metadata !16, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [argv] [line 107]
!68 = metadata !{i32 786689, metadata !11, metadata !"ConfigData", metadata !5, i32 50331755, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ConfigData] [line 107]
!69 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_RunTime", metadata !"CCTK_RunTime", metadata !"", i32 214, metadata !70, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @CCTK_RunTime, null, null, metadata !2, i32 215} ; [ DW_TAG_subprogram ] [line 214] [def] [scope 215] [CCTK_RunTime]
!70 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !71, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!71 = metadata !{metadata !14}
!72 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_InitialiseScheduler", metadata !"CCTKi_InitialiseScheduler", metadata !"", i32 164, metadata !73, i1 true, i1 true, i32 0, i32 0, null, i32 256, i1 true, null, null, null, metadata !75, i32 165} ; [ DW_TAG_subprogram ] [line 164] [local] [def] [scope 165] [CCTKi_InitialiseScheduler]
!73 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !74, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!74 = metadata !{metadata !14, metadata !19}
!75 = metadata !{metadata !76, metadata !77, metadata !78, metadata !79}
!76 = metadata !{i32 786689, metadata !72, metadata !"ConfigData", metadata !5, i32 16777380, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ConfigData] [line 164]
!77 = metadata !{i32 786688, metadata !72, metadata !"i", metadata !5, i32 166, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 166]
!78 = metadata !{i32 786688, metadata !72, metadata !"retcode", metadata !5, i32 166, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retcode] [line 166]
!79 = metadata !{i32 786688, metadata !72, metadata !"cctk_show_schedule", metadata !5, i32 167, metadata !80, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_show_schedule] [line 167]
!80 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !81} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!81 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!82 = metadata !{metadata !83, metadata !87}
!83 = metadata !{i32 786484, i32 0, null, metadata !"startuptime", metadata !"startuptime", metadata !"", metadata !5, i32 62, metadata !84, i32 1, i32 1, i64* @startuptime, null} ; [ DW_TAG_variable ] [startuptime] [line 62] [local] [def]
!84 = metadata !{i32 786454, metadata !1, null, metadata !"time_t", i32 75, i64 0, i64 0, i64 0, i32 0, metadata !85} ; [ DW_TAG_typedef ] [time_t] [line 75, size 0, align 0, offset 0] [from __time_t]
!85 = metadata !{i32 786454, metadata !1, null, metadata !"__time_t", i32 139, i64 0, i64 0, i64 0, i32 0, metadata !86} ; [ DW_TAG_typedef ] [__time_t] [line 139, size 0, align 0, offset 0] [from long int]
!86 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!87 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 29, metadata !8, i32 1, i32 1, null, null}
!88 = metadata !{i32 31, i32 0, metadata !4, null}
!89 = metadata !{i32 107, i32 0, metadata !11, null}
!90 = metadata !{i32 109, i32 0, metadata !11, null}
!91 = metadata !{metadata !"long", metadata !92}
!92 = metadata !{metadata !"omnipotent char", metadata !93}
!93 = metadata !{metadata !"Simple C/C++ TBAA"}
!94 = metadata !{i32 111, i32 0, metadata !11, null}
!95 = metadata !{i32 113, i32 0, metadata !11, null}
!96 = metadata !{i32 115, i32 0, metadata !11, null}
!97 = metadata !{i32 117, i32 0, metadata !11, null}
!98 = metadata !{i32 119, i32 0, metadata !11, null}
!99 = metadata !{i32 121, i32 0, metadata !11, null}
!100 = metadata !{i32 123, i32 0, metadata !11, null}
!101 = metadata !{i32 125, i32 0, metadata !11, null}
!102 = metadata !{i32 164, i32 0, metadata !72, metadata !103}
!103 = metadata !{i32 127, i32 0, metadata !11, null}
!104 = metadata !{%struct.tFleshConfig* null}
!105 = metadata !{i32 786689, metadata !72, metadata !"ConfigData", metadata !5, i32 16777380, metadata !19, i32 0, metadata !103} ; [ DW_TAG_arg_variable ] [ConfigData] [line 164]
!106 = metadata !{i32 166, i32 0, metadata !72, metadata !103}
!107 = metadata !{i32 172, i32 0, metadata !72, metadata !103}
!108 = metadata !{i32 174, i32 0, metadata !72, metadata !103}
!109 = metadata !{i32 176, i32 0, metadata !72, metadata !103}
!110 = metadata !{i32 178, i32 0, metadata !111, metadata !103}
!111 = metadata !{i32 786443, metadata !1, metadata !72, i32 177, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/InitialiseCactus.c]
!112 = metadata !{i32 179, i32 0, metadata !111, metadata !103}
!113 = metadata !{i32 181, i32 0, metadata !72, metadata !103}
!114 = metadata !{i32 183, i32 0, metadata !72, metadata !103}
!115 = metadata !{i32 185, i32 0, metadata !72, metadata !103}
!116 = metadata !{i32 786688, metadata !72, metadata !"retcode", metadata !5, i32 166, metadata !14, i32 0, metadata !103} ; [ DW_TAG_auto_variable ] [retcode] [line 166]
!117 = metadata !{i32 188, i32 0, metadata !72, metadata !103}
!118 = metadata !{i32 786688, metadata !72, metadata !"cctk_show_schedule", metadata !5, i32 167, metadata !80, i32 0, metadata !103} ; [ DW_TAG_auto_variable ] [cctk_show_schedule] [line 167]
!119 = metadata !{i32 190, i32 0, metadata !72, metadata !103}
!120 = metadata !{metadata !"int", metadata !92}
!121 = metadata !{i32 192, i32 0, metadata !122, metadata !103}
!122 = metadata !{i32 786443, metadata !1, metadata !72, i32 191, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/InitialiseCactus.c]
!123 = metadata !{i32 193, i32 0, metadata !122, metadata !103}
!124 = metadata !{i32 194, i32 0, metadata !122, metadata !103}
!125 = metadata !{i32 195, i32 0, metadata !122, metadata !103}
!126 = metadata !{i32 129, i32 0, metadata !11, null}
!127 = metadata !{i32 131, i32 0, metadata !11, null}
!128 = metadata !{i32 133, i32 0, metadata !11, null}
!129 = metadata !{i32 216, i32 0, metadata !69, null}
