; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultInitialise.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.tFleshConfig = type { i8*, %struct.cGH**, i32 }

@CCTK_SetupGH = external global %struct.cGH* (%struct.tFleshConfig*, i32)*
@.str = private unnamed_addr constant [18 x i8] c"cctk_initial_time\00", align 1
@.str1 = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1
@.str2 = private unnamed_addr constant [16 x i8] c"CCTK_PARAMCHECK\00", align 1
@.str3 = private unnamed_addr constant [14 x i8] c"CCTK_BASEGRID\00", align 1
@.str4 = private unnamed_addr constant [13 x i8] c"CCTK_INITIAL\00", align 1
@.str5 = private unnamed_addr constant [17 x i8] c"CCTK_POSTINITIAL\00", align 1
@.str6 = private unnamed_addr constant [14 x i8] c"CCTK_POSTSTEP\00", align 1
@.str7 = private unnamed_addr constant [23 x i8] c"CCTK_RECOVER_VARIABLES\00", align 1
@.str8 = private unnamed_addr constant [15 x i8] c"CCTK_CPINITIAL\00", align 1
@.str9 = private unnamed_addr constant [71 x i8] c"$Id: CactusDefaultInitialise.c,v 1.51 2001/12/17 22:31:27 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_main_CactusDefaultInitialise_c() #0 {
entry:
  ret i8* getelementptr inbounds ([71 x i8]* @.str9, i64 0, i64 0), !dbg !78
}

; Function Attrs: nounwind optsize uwtable
define i32 @CactusDefaultInitialise(%struct.tFleshConfig* %config) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.tFleshConfig* %config}, i64 0, metadata !64), !dbg !79
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !66), !dbg !80
  %0 = load %struct.cGH* (%struct.tFleshConfig*, i32)** @CCTK_SetupGH, align 8, !dbg !81, !tbaa !82
  %call7 = tail call %struct.cGH* %0(%struct.tFleshConfig* %config, i32 0) #4, !dbg !81
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %call7}, i64 0, metadata !65), !dbg !81
  %tobool8 = icmp eq %struct.cGH* %call7, null, !dbg !81
  br i1 %tobool8, label %while.end, label %while.body, !dbg !81

while.body:                                       ; preds = %entry, %while.body
  %call10 = phi %struct.cGH* [ %call, %while.body ], [ %call7, %entry ]
  %convergence_level.09 = phi i32 [ %inc, %while.body ], [ 0, %entry ]
  %call1 = tail call i32 @CCTKi_AddGH(%struct.tFleshConfig* %config, i32 %convergence_level.09, %struct.cGH* %call10) #4, !dbg !85
  %call2 = tail call i32 @CactusInitialiseGH(%struct.cGH* %call10) #5, !dbg !87
  %inc = add nsw i32 %convergence_level.09, 1, !dbg !88
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !66), !dbg !88
  %1 = load %struct.cGH* (%struct.tFleshConfig*, i32)** @CCTK_SetupGH, align 8, !dbg !81, !tbaa !82
  %call = tail call %struct.cGH* %1(%struct.tFleshConfig* %config, i32 %inc) #4, !dbg !81
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %call10}, i64 0, metadata !65), !dbg !81
  %tobool = icmp eq %struct.cGH* %call, null, !dbg !81
  br i1 %tobool, label %while.end, label %while.body, !dbg !81

while.end:                                        ; preds = %while.body, %entry
  ret i32 0, !dbg !89
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #2

; Function Attrs: optsize
declare i32 @CCTKi_AddGH(%struct.tFleshConfig*, i32, %struct.cGH*) #3

; Function Attrs: nounwind optsize uwtable
define i32 @CactusInitialiseGH(%struct.cGH* %GH) #1 {
entry:
  %param_type = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !71), !dbg !90
  call void @llvm.dbg.declare(metadata !{i32* %param_type}, metadata !72), !dbg !91
  %call = call i8* @CCTK_ParameterGet(i8* getelementptr inbounds ([18 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i32* %param_type) #4, !dbg !92
  %0 = bitcast i8* %call to double*, !dbg !92
  call void @llvm.dbg.value(metadata !{double* %0}, i64 0, metadata !73), !dbg !92
  %1 = load double* %0, align 8, !dbg !93, !tbaa !94
  %cctk_time = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 16, !dbg !93
  store double %1, double* %cctk_time, align 8, !dbg !93, !tbaa !94
  %cctk_iteration = getelementptr inbounds %struct.cGH* %GH, i64 0, i32 1, !dbg !95
  store i32 0, i32* %cctk_iteration, align 4, !dbg !95, !tbaa !96
  %2 = bitcast %struct.cGH* %GH to i8*, !dbg !97
  %call1 = call i32 @CCTKi_ScheduleGHInit(i8* %2) #4, !dbg !97
  %call2 = call i32 @CCTKi_InitGHExtensions(%struct.cGH* %GH) #4, !dbg !98
  %call3 = call i32 @CCTK_Traverse(%struct.cGH* %GH, i8* getelementptr inbounds ([16 x i8]* @.str2, i64 0, i64 0)) #4, !dbg !99
  call void @CCTKi_FinaliseParamWarn() #4, !dbg !100
  %call4 = call i32 @CCTK_Traverse(%struct.cGH* %GH, i8* getelementptr inbounds ([14 x i8]* @.str3, i64 0, i64 0)) #4, !dbg !101
  %call5 = call i32 @CCTK_Traverse(%struct.cGH* %GH, i8* getelementptr inbounds ([13 x i8]* @.str4, i64 0, i64 0)) #4, !dbg !102
  %call6 = call i32 @CCTK_Traverse(%struct.cGH* %GH, i8* getelementptr inbounds ([17 x i8]* @.str5, i64 0, i64 0)) #4, !dbg !103
  %call7 = call i32 @CCTK_Traverse(%struct.cGH* %GH, i8* getelementptr inbounds ([14 x i8]* @.str6, i64 0, i64 0)) #4, !dbg !104
  %call8 = call i32 @CCTK_Traverse(%struct.cGH* %GH, i8* getelementptr inbounds ([23 x i8]* @.str7, i64 0, i64 0)) #4, !dbg !105
  %call9 = call i32 @CCTK_Traverse(%struct.cGH* %GH, i8* getelementptr inbounds ([15 x i8]* @.str8, i64 0, i64 0)) #4, !dbg !106
  ret i32 1, !dbg !107
}

; Function Attrs: optsize
declare i8* @CCTK_ParameterGet(i8*, i8*, i32*) #3

; Function Attrs: optsize
declare i32 @CCTKi_ScheduleGHInit(i8*) #3

; Function Attrs: optsize
declare i32 @CCTKi_InitGHExtensions(%struct.cGH*) #3

; Function Attrs: optsize
declare i32 @CCTK_Traverse(%struct.cGH*, i8*) #3

; Function Attrs: optsize
declare void @CCTKi_FinaliseParamWarn() #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !76, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultInitialise.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultInitialise.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11, metadata !67}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_main_CactusDefaultInitialise_c", metadata !"CCTKi_version_main_CactusDefaultInitialise_c", metadata !"", i32 32, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_main_CactusDefaultInitialise_c, null, null, metadata !2, i32 32} ; [ DW_TAG_subprogram ] [line 32] [def] [CCTKi_version_main_CactusDefaultInitialise_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultInitialise.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CactusDefaultInitialise", metadata !"CactusDefaultInitialise", metadata !"", i32 51, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.tFleshConfig*)* @CactusDefaultInitialise, null, null, metadata !63, i32 52} ; [ DW_TAG_subprogram ] [line 51] [def] [scope 52] [CactusDefaultInitialise]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !15}
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from tFleshConfig]
!16 = metadata !{i32 786454, metadata !1, null, metadata !"tFleshConfig", i32 28, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_typedef ] [tFleshConfig] [line 28, size 0, align 0, offset 0] [from ]
!17 = metadata !{i32 786451, metadata !18, null, metadata !"", i32 19, i64 192, i64 64, i32 0, i32 0, null, metadata !19, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 19, size 192, align 64, offset 0] [from ]
!18 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cctk_Flesh.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!19 = metadata !{metadata !20, metadata !22, metadata !61}
!20 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"parameter_file_name", i32 21, i64 64, i64 64, i64 0, i32 0, metadata !21} ; [ DW_TAG_member ] [parameter_file_name] [line 21, size 64, align 64, offset 0] [from ]
!21 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!22 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"GH", i32 24, i64 64, i64 64, i64 64, i32 0, metadata !23} ; [ DW_TAG_member ] [GH] [line 24, size 64, align 64, offset 64] [from ]
!23 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !24} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGH]
!25 = metadata !{i32 786454, metadata !18, null, metadata !"cGH", i32 75, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_typedef ] [cGH] [line 75, size 0, align 0, offset 0] [from ]
!26 = metadata !{i32 786451, metadata !27, null, metadata !"", i32 24, i64 1216, i64 64, i32 0, i32 0, null, metadata !28, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 24, size 1216, align 64, offset 0] [from ]
!27 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cGH.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!28 = metadata !{metadata !29, metadata !30, metadata !31, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !41, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49, metadata !53, metadata !54}
!29 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_dim", i32 26, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_dim] [line 26, size 32, align 32, offset 0] [from int]
!30 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_iteration", i32 27, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_iteration] [line 27, size 32, align 32, offset 32] [from int]
!31 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_gsh", i32 30, i64 64, i64 64, i64 64, i32 0, metadata !32} ; [ DW_TAG_member ] [cctk_gsh] [line 30, size 64, align 64, offset 64] [from ]
!32 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!33 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_lsh", i32 31, i64 64, i64 64, i64 128, i32 0, metadata !32} ; [ DW_TAG_member ] [cctk_lsh] [line 31, size 64, align 64, offset 128] [from ]
!34 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_lbnd", i32 32, i64 64, i64 64, i64 192, i32 0, metadata !32} ; [ DW_TAG_member ] [cctk_lbnd] [line 32, size 64, align 64, offset 192] [from ]
!35 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_ubnd", i32 33, i64 64, i64 64, i64 256, i32 0, metadata !32} ; [ DW_TAG_member ] [cctk_ubnd] [line 33, size 64, align 64, offset 256] [from ]
!36 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_lssh", i32 36, i64 64, i64 64, i64 320, i32 0, metadata !32} ; [ DW_TAG_member ] [cctk_lssh] [line 36, size 64, align 64, offset 320] [from ]
!37 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_to", i32 39, i64 64, i64 64, i64 384, i32 0, metadata !32} ; [ DW_TAG_member ] [cctk_to] [line 39, size 64, align 64, offset 384] [from ]
!38 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_from", i32 40, i64 64, i64 64, i64 448, i32 0, metadata !32} ; [ DW_TAG_member ] [cctk_from] [line 40, size 64, align 64, offset 448] [from ]
!39 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_delta_time", i32 43, i64 64, i64 64, i64 512, i32 0, metadata !40} ; [ DW_TAG_member ] [cctk_delta_time] [line 43, size 64, align 64, offset 512] [from double]
!40 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!41 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_delta_space", i32 44, i64 64, i64 64, i64 576, i32 0, metadata !42} ; [ DW_TAG_member ] [cctk_delta_space] [line 44, size 64, align 64, offset 576] [from ]
!42 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !40} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!43 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_origin_space", i32 47, i64 64, i64 64, i64 640, i32 0, metadata !42} ; [ DW_TAG_member ] [cctk_origin_space] [line 47, size 64, align 64, offset 640] [from ]
!44 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_bbox", i32 51, i64 64, i64 64, i64 704, i32 0, metadata !32} ; [ DW_TAG_member ] [cctk_bbox] [line 51, size 64, align 64, offset 704] [from ]
!45 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_levfac", i32 54, i64 64, i64 64, i64 768, i32 0, metadata !32} ; [ DW_TAG_member ] [cctk_levfac] [line 54, size 64, align 64, offset 768] [from ]
!46 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_convlevel", i32 57, i64 32, i64 32, i64 832, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_convlevel] [line 57, size 32, align 32, offset 832] [from int]
!47 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_nghostzones", i32 60, i64 64, i64 64, i64 896, i32 0, metadata !32} ; [ DW_TAG_member ] [cctk_nghostzones] [line 60, size 64, align 64, offset 896] [from ]
!48 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"cctk_time", i32 63, i64 64, i64 64, i64 960, i32 0, metadata !40} ; [ DW_TAG_member ] [cctk_time] [line 63, size 64, align 64, offset 960] [from double]
!49 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"data", i32 67, i64 64, i64 64, i64 1024, i32 0, metadata !50} ; [ DW_TAG_member ] [data] [line 67, size 64, align 64, offset 1024] [from ]
!50 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !51} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!51 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !52} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!52 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!53 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"extensions", i32 70, i64 64, i64 64, i64 1088, i32 0, metadata !51} ; [ DW_TAG_member ] [extensions] [line 70, size 64, align 64, offset 1088] [from ]
!54 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"GroupData", i32 73, i64 64, i64 64, i64 1152, i32 0, metadata !55} ; [ DW_TAG_member ] [GroupData] [line 73, size 64, align 64, offset 1152] [from ]
!55 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !56} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGHGroupData]
!56 = metadata !{i32 786454, metadata !27, null, metadata !"cGHGroupData", i32 22, i64 0, i64 0, i64 0, i32 0, metadata !57} ; [ DW_TAG_typedef ] [cGHGroupData] [line 22, size 0, align 0, offset 0] [from ]
!57 = metadata !{i32 786451, metadata !27, null, metadata !"", i32 18, i64 16, i64 8, i32 0, i32 0, null, metadata !58, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 18, size 16, align 8, offset 0] [from ]
!58 = metadata !{metadata !59, metadata !60}
!59 = metadata !{i32 786445, metadata !27, metadata !57, metadata !"storage", i32 20, i64 8, i64 8, i64 0, i32 0, metadata !10} ; [ DW_TAG_member ] [storage] [line 20, size 8, align 8, offset 0] [from char]
!60 = metadata !{i32 786445, metadata !27, metadata !57, metadata !"comm", i32 21, i64 8, i64 8, i64 8, i32 0, metadata !10} ; [ DW_TAG_member ] [comm] [line 21, size 8, align 8, offset 8] [from char]
!61 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"nGHs", i32 25, i64 32, i64 32, i64 128, i32 0, metadata !62} ; [ DW_TAG_member ] [nGHs] [line 25, size 32, align 32, offset 128] [from unsigned int]
!62 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!63 = metadata !{metadata !64, metadata !65, metadata !66}
!64 = metadata !{i32 786689, metadata !11, metadata !"config", metadata !5, i32 16777267, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [config] [line 51]
!65 = metadata !{i32 786688, metadata !11, metadata !"GH", metadata !5, i32 53, metadata !24, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [GH] [line 53]
!66 = metadata !{i32 786688, metadata !11, metadata !"convergence_level", metadata !5, i32 54, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [convergence_level] [line 54]
!67 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CactusInitialiseGH", metadata !"CactusInitialiseGH", metadata !"", i32 96, metadata !68, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*)* @CactusInitialiseGH, null, null, metadata !70, i32 97} ; [ DW_TAG_subprogram ] [line 96] [def] [scope 97] [CactusInitialiseGH]
!68 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !69, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!69 = metadata !{metadata !14, metadata !24}
!70 = metadata !{metadata !71, metadata !72, metadata !73}
!71 = metadata !{i32 786689, metadata !67, metadata !"GH", metadata !5, i32 16777312, metadata !24, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 96]
!72 = metadata !{i32 786688, metadata !67, metadata !"param_type", metadata !5, i32 98, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [param_type] [line 98]
!73 = metadata !{i32 786688, metadata !67, metadata !"cctk_initial_time", metadata !5, i32 99, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_initial_time] [line 99]
!74 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !75} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!75 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !40} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from double]
!76 = metadata !{metadata !77}
!77 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 30, metadata !8, i32 1, i32 1, null, null}
!78 = metadata !{i32 32, i32 0, metadata !4, null}
!79 = metadata !{i32 51, i32 0, metadata !11, null}
!80 = metadata !{i32 64, i32 0, metadata !11, null}
!81 = metadata !{i32 65, i32 0, metadata !11, null}
!82 = metadata !{metadata !"any pointer", metadata !83}
!83 = metadata !{metadata !"omnipotent char", metadata !84}
!84 = metadata !{metadata !"Simple C/C++ TBAA"}
!85 = metadata !{i32 67, i32 0, metadata !86, null}
!86 = metadata !{i32 786443, metadata !1, metadata !11, i32 66, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusDefaultInitialise.c]
!87 = metadata !{i32 69, i32 0, metadata !86, null}
!88 = metadata !{i32 71, i32 0, metadata !86, null}
!89 = metadata !{i32 78, i32 0, metadata !11, null}
!90 = metadata !{i32 96, i32 0, metadata !67, null}
!91 = metadata !{i32 98, i32 0, metadata !67, null}
!92 = metadata !{i32 101, i32 0, metadata !67, null}
!93 = metadata !{i32 105, i32 0, metadata !67, null}
!94 = metadata !{metadata !"double", metadata !83}
!95 = metadata !{i32 108, i32 0, metadata !67, null}
!96 = metadata !{metadata !"int", metadata !83}
!97 = metadata !{i32 119, i32 0, metadata !67, null}
!98 = metadata !{i32 122, i32 0, metadata !67, null}
!99 = metadata !{i32 125, i32 0, metadata !67, null}
!100 = metadata !{i32 126, i32 0, metadata !67, null}
!101 = metadata !{i32 128, i32 0, metadata !67, null}
!102 = metadata !{i32 131, i32 0, metadata !67, null}
!103 = metadata !{i32 134, i32 0, metadata !67, null}
!104 = metadata !{i32 136, i32 0, metadata !67, null}
!105 = metadata !{i32 139, i32 0, metadata !67, null}
!106 = metadata !{i32 140, i32 0, metadata !67, null}
!107 = metadata !{i32 142, i32 0, metadata !67, null}
