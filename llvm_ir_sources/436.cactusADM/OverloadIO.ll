; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/OverloadIO.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@CCTK_OutputGH = global i32 (%struct.cGH*)* null, align 8
@CCTK_OverloadOutputGH.overloaded = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [83 x i8] c"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/IOOverloadables.h\00", align 1
@.str1 = private unnamed_addr constant [7 x i8] c"Cactus\00", align 1
@.str2 = private unnamed_addr constant [59 x i8] c"Overload Macros: Attempted to overload function %s%s twice\00", align 1
@.str3 = private unnamed_addr constant [6 x i8] c"CCTK_\00", align 1
@.str4 = private unnamed_addr constant [9 x i8] c"OutputGH\00", align 1
@CCTK_OutputVarAsByMethod = global i32 (%struct.cGH*, i8*, i8*, i8*)* null, align 8
@CCTK_OverloadOutputVarAsByMethod.overloaded = internal unnamed_addr global i32 0, align 4
@.str5 = private unnamed_addr constant [20 x i8] c"OutputVarAsByMethod\00", align 1
@.str6 = private unnamed_addr constant [84 x i8] c"$Header: /cactus/Cactus/src/IO/OverloadIO.c,v 1.11 2001/11/05 14:58:49 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_IO_OverloadIO_c() #0 {
entry:
  ret i8* getelementptr inbounds ([84 x i8]* @.str6, i64 0, i64 0), !dbg !80
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_OverloadOutputGH(i32 (%struct.cGH*)* %func) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 (%struct.cGH*)* %func}, i64 0, metadata !59), !dbg !81
  %tobool = icmp eq i32 (%struct.cGH*)* %func, null, !dbg !82
  %0 = load i32* @CCTK_OverloadOutputGH.overloaded, align 4, !dbg !83, !tbaa !85
  br i1 %tobool, label %if.end3, label %if.then, !dbg !82

if.then:                                          ; preds = %entry
  %cmp = icmp slt i32 %0, 2, !dbg !83
  br i1 %cmp, label %if.then1, label %if.else, !dbg !83

if.then1:                                         ; preds = %if.then
  store i32 (%struct.cGH*)* %func, i32 (%struct.cGH*)** @CCTK_OutputGH, align 8, !dbg !88, !tbaa !90
  %inc = add nsw i32 %0, 1, !dbg !88
  store i32 %inc, i32* @CCTK_OverloadOutputGH.overloaded, align 4, !dbg !88, !tbaa !85
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !60), !dbg !88
  br label %if.end3, !dbg !88

if.else:                                          ; preds = %if.then
  %call = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 43, i8* getelementptr inbounds ([83 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str4, i64 0, i64 0)) #4, !dbg !91
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !60), !dbg !91
  br label %if.end3

if.end3:                                          ; preds = %entry, %if.then1, %if.else
  %return_code.0 = phi i32 [ %inc, %if.then1 ], [ 0, %if.else ], [ %0, %entry ]
  ret i32 %return_code.0, !dbg !82
}

; Function Attrs: optsize
declare i32 @CCTK_VWarn(i32, i32, i8*, i8*, i8*, ...) #2

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_OverloadOutputVarAsByMethod(i32 (%struct.cGH*, i8*, i8*, i8*)* %func) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32 (%struct.cGH*, i8*, i8*, i8*)* %func}, i64 0, metadata !69), !dbg !93
  %tobool = icmp eq i32 (%struct.cGH*, i8*, i8*, i8*)* %func, null, !dbg !93
  %0 = load i32* @CCTK_OverloadOutputVarAsByMethod.overloaded, align 4, !dbg !94, !tbaa !85
  br i1 %tobool, label %if.end3, label %if.then, !dbg !93

if.then:                                          ; preds = %entry
  %cmp = icmp slt i32 %0, 2, !dbg !94
  br i1 %cmp, label %if.then1, label %if.else, !dbg !94

if.then1:                                         ; preds = %if.then
  store i32 (%struct.cGH*, i8*, i8*, i8*)* %func, i32 (%struct.cGH*, i8*, i8*, i8*)** @CCTK_OutputVarAsByMethod, align 8, !dbg !96, !tbaa !90
  %inc = add nsw i32 %0, 1, !dbg !96
  store i32 %inc, i32* @CCTK_OverloadOutputVarAsByMethod.overloaded, align 4, !dbg !96, !tbaa !85
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !70), !dbg !96
  br label %if.end3, !dbg !96

if.else:                                          ; preds = %if.then
  %call = tail call i32 (i32, i32, i8*, i8*, i8*, ...)* @CCTK_VWarn(i32 1, i32 52, i8* getelementptr inbounds ([83 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8]* @.str5, i64 0, i64 0)) #4, !dbg !98
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !70), !dbg !98
  br label %if.end3

if.end3:                                          ; preds = %entry, %if.then1, %if.else
  %return_code.0 = phi i32 [ %inc, %if.then1 ], [ 0, %if.else ], [ %0, %entry ]
  ret i32 %return_code.0, !dbg !93
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTKi_SetupIOFunctions() #1 {
entry:
  %call = tail call i32 @CCTK_OverloadOutputGH(i32 (%struct.cGH*)* @CactusDefaultOutputGH) #5, !dbg !100
  %call1 = tail call i32 @CCTK_OverloadOutputVarAsByMethod(i32 (%struct.cGH*, i8*, i8*, i8*)* @CactusDefaultOutputVarAsByMethod) #5, !dbg !102
  ret i32 0, !dbg !103
}

; Function Attrs: optsize
declare i32 @CactusDefaultOutputGH(%struct.cGH*) #2

; Function Attrs: optsize
declare i32 @CactusDefaultOutputVarAsByMethod(%struct.cGH*, i8*, i8*, i8*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #3

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !74, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/OverloadIO.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/OverloadIO.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11, metadata !62, metadata !71}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_IO_OverloadIO_c", metadata !"CCTKi_version_IO_OverloadIO_c", metadata !"", i32 27, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_IO_OverloadIO_c, null, null, metadata !2, i32 27} ; [ DW_TAG_subprogram ] [line 27] [def] [CCTKi_version_IO_OverloadIO_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/OverloadIO.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !12, metadata !13, metadata !"CCTK_OverloadOutputGH", metadata !"CCTK_OverloadOutputGH", metadata !"", i32 43, metadata !14, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32 (%struct.cGH*)*)* @CCTK_OverloadOutputGH, null, null, metadata !58, i32 43} ; [ DW_TAG_subprogram ] [line 43] [def] [CCTK_OverloadOutputGH]
!12 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/IOOverloadables.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!13 = metadata !{i32 786473, metadata !12}        ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/IOOverloadables.h]
!14 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !15, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!15 = metadata !{metadata !16, metadata !17}
!16 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!17 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !18} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!18 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !19, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!19 = metadata !{metadata !16, metadata !20}
!20 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !21} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!21 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !22} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from cGH]
!22 = metadata !{i32 786454, metadata !12, null, metadata !"cGH", i32 75, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ] [cGH] [line 75, size 0, align 0, offset 0] [from ]
!23 = metadata !{i32 786451, metadata !24, null, metadata !"", i32 24, i64 1216, i64 64, i32 0, i32 0, null, metadata !25, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 24, size 1216, align 64, offset 0] [from ]
!24 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cGH.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!25 = metadata !{metadata !26, metadata !27, metadata !28, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !38, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !50, metadata !51}
!26 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"cctk_dim", i32 26, i64 32, i64 32, i64 0, i32 0, metadata !16} ; [ DW_TAG_member ] [cctk_dim] [line 26, size 32, align 32, offset 0] [from int]
!27 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"cctk_iteration", i32 27, i64 32, i64 32, i64 32, i32 0, metadata !16} ; [ DW_TAG_member ] [cctk_iteration] [line 27, size 32, align 32, offset 32] [from int]
!28 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"cctk_gsh", i32 30, i64 64, i64 64, i64 64, i32 0, metadata !29} ; [ DW_TAG_member ] [cctk_gsh] [line 30, size 64, align 64, offset 64] [from ]
!29 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!30 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"cctk_lsh", i32 31, i64 64, i64 64, i64 128, i32 0, metadata !29} ; [ DW_TAG_member ] [cctk_lsh] [line 31, size 64, align 64, offset 128] [from ]
!31 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"cctk_lbnd", i32 32, i64 64, i64 64, i64 192, i32 0, metadata !29} ; [ DW_TAG_member ] [cctk_lbnd] [line 32, size 64, align 64, offset 192] [from ]
!32 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"cctk_ubnd", i32 33, i64 64, i64 64, i64 256, i32 0, metadata !29} ; [ DW_TAG_member ] [cctk_ubnd] [line 33, size 64, align 64, offset 256] [from ]
!33 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"cctk_lssh", i32 36, i64 64, i64 64, i64 320, i32 0, metadata !29} ; [ DW_TAG_member ] [cctk_lssh] [line 36, size 64, align 64, offset 320] [from ]
!34 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"cctk_to", i32 39, i64 64, i64 64, i64 384, i32 0, metadata !29} ; [ DW_TAG_member ] [cctk_to] [line 39, size 64, align 64, offset 384] [from ]
!35 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"cctk_from", i32 40, i64 64, i64 64, i64 448, i32 0, metadata !29} ; [ DW_TAG_member ] [cctk_from] [line 40, size 64, align 64, offset 448] [from ]
!36 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"cctk_delta_time", i32 43, i64 64, i64 64, i64 512, i32 0, metadata !37} ; [ DW_TAG_member ] [cctk_delta_time] [line 43, size 64, align 64, offset 512] [from double]
!37 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!38 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"cctk_delta_space", i32 44, i64 64, i64 64, i64 576, i32 0, metadata !39} ; [ DW_TAG_member ] [cctk_delta_space] [line 44, size 64, align 64, offset 576] [from ]
!39 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !37} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!40 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"cctk_origin_space", i32 47, i64 64, i64 64, i64 640, i32 0, metadata !39} ; [ DW_TAG_member ] [cctk_origin_space] [line 47, size 64, align 64, offset 640] [from ]
!41 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"cctk_bbox", i32 51, i64 64, i64 64, i64 704, i32 0, metadata !29} ; [ DW_TAG_member ] [cctk_bbox] [line 51, size 64, align 64, offset 704] [from ]
!42 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"cctk_levfac", i32 54, i64 64, i64 64, i64 768, i32 0, metadata !29} ; [ DW_TAG_member ] [cctk_levfac] [line 54, size 64, align 64, offset 768] [from ]
!43 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"cctk_convlevel", i32 57, i64 32, i64 32, i64 832, i32 0, metadata !16} ; [ DW_TAG_member ] [cctk_convlevel] [line 57, size 32, align 32, offset 832] [from int]
!44 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"cctk_nghostzones", i32 60, i64 64, i64 64, i64 896, i32 0, metadata !29} ; [ DW_TAG_member ] [cctk_nghostzones] [line 60, size 64, align 64, offset 896] [from ]
!45 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"cctk_time", i32 63, i64 64, i64 64, i64 960, i32 0, metadata !37} ; [ DW_TAG_member ] [cctk_time] [line 63, size 64, align 64, offset 960] [from double]
!46 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"data", i32 67, i64 64, i64 64, i64 1024, i32 0, metadata !47} ; [ DW_TAG_member ] [data] [line 67, size 64, align 64, offset 1024] [from ]
!47 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !48} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!48 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !49} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!49 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!50 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"extensions", i32 70, i64 64, i64 64, i64 1088, i32 0, metadata !48} ; [ DW_TAG_member ] [extensions] [line 70, size 64, align 64, offset 1088] [from ]
!51 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"GroupData", i32 73, i64 64, i64 64, i64 1152, i32 0, metadata !52} ; [ DW_TAG_member ] [GroupData] [line 73, size 64, align 64, offset 1152] [from ]
!52 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !53} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGHGroupData]
!53 = metadata !{i32 786454, metadata !24, null, metadata !"cGHGroupData", i32 22, i64 0, i64 0, i64 0, i32 0, metadata !54} ; [ DW_TAG_typedef ] [cGHGroupData] [line 22, size 0, align 0, offset 0] [from ]
!54 = metadata !{i32 786451, metadata !24, null, metadata !"", i32 18, i64 16, i64 8, i32 0, i32 0, null, metadata !55, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 18, size 16, align 8, offset 0] [from ]
!55 = metadata !{metadata !56, metadata !57}
!56 = metadata !{i32 786445, metadata !24, metadata !54, metadata !"storage", i32 20, i64 8, i64 8, i64 0, i32 0, metadata !10} ; [ DW_TAG_member ] [storage] [line 20, size 8, align 8, offset 0] [from char]
!57 = metadata !{i32 786445, metadata !24, metadata !54, metadata !"comm", i32 21, i64 8, i64 8, i64 8, i32 0, metadata !10} ; [ DW_TAG_member ] [comm] [line 21, size 8, align 8, offset 8] [from char]
!58 = metadata !{metadata !59, metadata !60}
!59 = metadata !{i32 786689, metadata !11, metadata !"func", metadata !13, i32 16777259, metadata !17, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [func] [line 43]
!60 = metadata !{i32 786688, metadata !61, metadata !"return_code", metadata !13, i32 43, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [return_code] [line 43]
!61 = metadata !{i32 786443, metadata !12, metadata !11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/IOOverloadables.h]
!62 = metadata !{i32 786478, metadata !12, metadata !13, metadata !"CCTK_OverloadOutputVarAsByMethod", metadata !"CCTK_OverloadOutputVarAsByMethod", metadata !"", i32 52, metadata !63, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (i32 (%struct.cGH*, i8*, i8*, i8*)*)* @CCTK_OverloadOutputVarAsByMethod, null, null, metadata !68, i32 52} ; [ DW_TAG_subprogram ] [line 52] [def] [CCTK_OverloadOutputVarAsByMethod]
!63 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !64, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!64 = metadata !{metadata !16, metadata !65}
!65 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !66} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!66 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !67, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!67 = metadata !{metadata !16, metadata !20, metadata !8, metadata !8, metadata !8}
!68 = metadata !{metadata !69, metadata !70}
!69 = metadata !{i32 786689, metadata !62, metadata !"func", metadata !13, i32 16777268, metadata !65, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [func] [line 52]
!70 = metadata !{i32 786688, metadata !62, metadata !"return_code", metadata !13, i32 52, metadata !16, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [return_code] [line 52]
!71 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_SetupIOFunctions", metadata !"CCTKi_SetupIOFunctions", metadata !"", i32 65, metadata !72, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 ()* @CCTKi_SetupIOFunctions, null, null, metadata !2, i32 66} ; [ DW_TAG_subprogram ] [line 65] [def] [scope 66] [CCTKi_SetupIOFunctions]
!72 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !73, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!73 = metadata !{metadata !16}
!74 = metadata !{metadata !75, metadata !76, metadata !77, metadata !78, metadata !79}
!75 = metadata !{i32 786484, i32 0, null, metadata !"CCTK_OutputGH", metadata !"CCTK_OutputGH", metadata !"", metadata !13, i32 43, metadata !17, i32 0, i32 1, i32 (%struct.cGH*)** @CCTK_OutputGH, null} ; [ DW_TAG_variable ] [CCTK_OutputGH] [line 43] [def]
!76 = metadata !{i32 786484, i32 0, metadata !11, metadata !"overloaded", metadata !"overloaded", metadata !"", metadata !13, i32 43, metadata !16, i32 1, i32 1, i32* @CCTK_OverloadOutputGH.overloaded, null} ; [ DW_TAG_variable ] [overloaded] [line 43] [local] [def]
!77 = metadata !{i32 786484, i32 0, null, metadata !"CCTK_OutputVarAsByMethod", metadata !"CCTK_OutputVarAsByMethod", metadata !"", metadata !13, i32 52, metadata !65, i32 0, i32 1, i32 (%struct.cGH*, i8*, i8*, i8*)** @CCTK_OutputVarAsByMethod, null} ; [ DW_TAG_variable ] [CCTK_OutputVarAsByMethod] [line 52] [def]
!78 = metadata !{i32 786484, i32 0, metadata !62, metadata !"overloaded", metadata !"overloaded", metadata !"", metadata !13, i32 52, metadata !16, i32 1, i32 1, i32* @CCTK_OverloadOutputVarAsByMethod.overloaded, null} ; [ DW_TAG_variable ] [overloaded] [line 52] [local] [def]
!79 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 25, metadata !8, i32 1, i32 1, null, null}
!80 = metadata !{i32 27, i32 0, metadata !4, null}
!81 = metadata !{i32 43, i32 0, metadata !11, null}
!82 = metadata !{i32 43, i32 0, metadata !61, null}
!83 = metadata !{i32 43, i32 0, metadata !84, null}
!84 = metadata !{i32 786443, metadata !12, metadata !61, i32 43, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/IOOverloadables.h]
!85 = metadata !{metadata !"int", metadata !86}
!86 = metadata !{metadata !"omnipotent char", metadata !87}
!87 = metadata !{metadata !"Simple C/C++ TBAA"}
!88 = metadata !{i32 43, i32 0, metadata !89, null}
!89 = metadata !{i32 786443, metadata !12, metadata !84, i32 43, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/IOOverloadables.h]
!90 = metadata !{metadata !"any pointer", metadata !86}
!91 = metadata !{i32 43, i32 0, metadata !92, null}
!92 = metadata !{i32 786443, metadata !12, metadata !84, i32 43, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/IOOverloadables.h]
!93 = metadata !{i32 52, i32 0, metadata !62, null}
!94 = metadata !{i32 52, i32 0, metadata !95, null}
!95 = metadata !{i32 786443, metadata !12, metadata !62, i32 52, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/IOOverloadables.h]
!96 = metadata !{i32 52, i32 0, metadata !97, null}
!97 = metadata !{i32 786443, metadata !12, metadata !95, i32 52, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/IOOverloadables.h]
!98 = metadata !{i32 52, i32 0, metadata !99, null}
!99 = metadata !{i32 786443, metadata !12, metadata !95, i32 52, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/IOOverloadables.h]
!100 = metadata !{i32 43, i32 0, metadata !101, null}
!101 = metadata !{i32 786443, metadata !12, metadata !71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/IOOverloadables.h]
!102 = metadata !{i32 52, i32 0, metadata !101, null}
!103 = metadata !{i32 82, i32 0, metadata !104, null}
!104 = metadata !{i32 786443, metadata !1, metadata !71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/OverloadIO.c]
