; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/Time/Simple.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon.0 = type { double, double, double, i32 }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@timepriv_ = external global %struct.anon.0
@.str = private unnamed_addr constant [17 x i8] c"Time::courant_dt\00", align 1
@.str1 = private unnamed_addr constant [23 x i8] c"time::courant_min_time\00", align 1
@.str2 = private unnamed_addr constant [25 x i8] c"time::courant_wave_speed\00", align 1
@.str3 = private unnamed_addr constant [61 x i8] c"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Time/Simple.c\00", align 1
@.str4 = private unnamed_addr constant [5 x i8] c"Time\00", align 1
@.str5 = private unnamed_addr constant [52 x i8] c"Time Step not defined for greater than 4 dimensions\00", align 1
@.str6 = private unnamed_addr constant [87 x i8] c"$Header: /cactus/CactusBase/Time/src/Simple.c,v 1.11 2001/05/10 12:35:44 goodale Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_CactusBase_Time_Simple_c() #0 {
entry:
  ret i8* getelementptr inbounds ([87 x i8]* @.str6, i64 0, i64 0), !dbg !89
}

; Function Attrs: nounwind optsize uwtable
define void @Time_Simple(%struct.cGH* nocapture %cctkGH) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %cctkGH}, i64 0, metadata !53), !dbg !90
  %0 = load double* getelementptr inbounds (%struct.anon.0* @timepriv_, i64 0, i32 1), align 8, !dbg !91, !tbaa !92
  tail call void @llvm.dbg.value(metadata !{double %0}, i64 0, metadata !59), !dbg !91
  %cctk_dim1 = getelementptr inbounds %struct.cGH* %cctkGH, i64 0, i32 0, !dbg !95
  %1 = load i32* %cctk_dim1, align 4, !dbg !95, !tbaa !96
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !65), !dbg !95
  %cctk_delta_time10 = getelementptr inbounds %struct.cGH* %cctkGH, i64 0, i32 9, !dbg !95
  %cctk_delta_space12 = getelementptr inbounds %struct.cGH* %cctkGH, i64 0, i32 10, !dbg !95
  %2 = load double** %cctk_delta_space12, align 8, !dbg !95, !tbaa !97
  tail call void @llvm.dbg.value(metadata !{double* %2}, i64 0, metadata !76), !dbg !95
  %call = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([17 x i8]* @.str, i64 0, i64 0)) #4, !dbg !95
  %call19 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([23 x i8]* @.str1, i64 0, i64 0)) #4, !dbg !95
  %call24 = tail call i32 @CCTK_VarIndex(i8* getelementptr inbounds ([25 x i8]* @.str2, i64 0, i64 0)) #4, !dbg !95
  tail call void @llvm.dbg.value(metadata !98, i64 0, metadata !86), !dbg !99
  %cmp = icmp sgt i32 %1, 0, !dbg !100
  br i1 %cmp, label %if.end, label %if.end49, !dbg !100

if.end:                                           ; preds = %entry
  %3 = load double* %2, align 8, !dbg !101, !tbaa !92
  tail call void @llvm.dbg.value(metadata !{double %3}, i64 0, metadata !86), !dbg !101
  %cmp30 = icmp sgt i32 %1, 1, !dbg !103
  br i1 %cmp30, label %if.end35, label %if.end49, !dbg !103

if.end35:                                         ; preds = %if.end
  %arrayidx32 = getelementptr inbounds double* %2, i64 1, !dbg !104
  %4 = load double* %arrayidx32, align 8, !dbg !104, !tbaa !92
  %cmp33 = fcmp olt double %3, %4, !dbg !104
  %min_spacing.0. = select i1 %cmp33, double %3, double %4, !dbg !104
  tail call void @llvm.dbg.value(metadata !{double %min_spacing.0.}, i64 0, metadata !86), !dbg !104
  %cmp36 = icmp sgt i32 %1, 2, !dbg !106
  br i1 %cmp36, label %if.end45, label %if.end49, !dbg !106

if.end45:                                         ; preds = %if.end35
  %arrayidx38 = getelementptr inbounds double* %2, i64 2, !dbg !107
  %5 = load double* %arrayidx38, align 8, !dbg !107, !tbaa !92
  %cmp39 = fcmp olt double %min_spacing.0., %5, !dbg !107
  %min_spacing.1. = select i1 %cmp39, double %min_spacing.0., double %5, !dbg !107
  tail call void @llvm.dbg.value(metadata !{double %min_spacing.1.}, i64 0, metadata !86), !dbg !107
  %cmp46 = icmp sgt i32 %1, 3, !dbg !109
  br i1 %cmp46, label %if.then47, label %if.end49, !dbg !109

if.then47:                                        ; preds = %if.end45
  %call48 = tail call i32 @CCTK_Warn(i32 0, i32 52, i8* getelementptr inbounds ([61 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8]* @.str5, i64 0, i64 0)) #4, !dbg !110
  br label %if.end49, !dbg !112

if.end49:                                         ; preds = %if.end, %entry, %if.end35, %if.then47, %if.end45
  %min_spacing.285 = phi double [ %min_spacing.1., %if.then47 ], [ %min_spacing.1., %if.end45 ], [ %min_spacing.0., %if.end35 ], [ 0.000000e+00, %entry ], [ %3, %if.end ]
  %mul = fmul double %0, %min_spacing.285, !dbg !113
  store double %mul, double* %cctk_delta_time10, align 8, !dbg !113, !tbaa !92
  tail call void @llvm.dbg.value(metadata !114, i64 0, metadata !62), !dbg !115
  tail call void @llvm.dbg.value(metadata !114, i64 0, metadata !62), !dbg !115
  tail call void @llvm.dbg.value(metadata !114, i64 0, metadata !62), !dbg !115
  tail call void @llvm.dbg.value(metadata !114, i64 0, metadata !62), !dbg !115
  tail call void @llvm.dbg.value(metadata !114, i64 0, metadata !62), !dbg !115
  tail call void @llvm.dbg.value(metadata !114, i64 0, metadata !62), !dbg !115
  tail call void @llvm.dbg.value(metadata !114, i64 0, metadata !62), !dbg !115
  tail call void @llvm.dbg.value(metadata !114, i64 0, metadata !82), !dbg !115
  tail call void @llvm.dbg.value(metadata !114, i64 0, metadata !82), !dbg !115
  tail call void @llvm.dbg.value(metadata !114, i64 0, metadata !82), !dbg !115
  tail call void @llvm.dbg.value(metadata !114, i64 0, metadata !82), !dbg !115
  tail call void @llvm.dbg.value(metadata !114, i64 0, metadata !82), !dbg !115
  tail call void @llvm.dbg.value(metadata !114, i64 0, metadata !82), !dbg !115
  tail call void @llvm.dbg.value(metadata !114, i64 0, metadata !82), !dbg !115
  tail call void @llvm.dbg.value(metadata !114, i64 0, metadata !82), !dbg !115
  tail call void @llvm.dbg.value(metadata !114, i64 0, metadata !82), !dbg !115
  tail call void @llvm.dbg.value(metadata !114, i64 0, metadata !82), !dbg !115
  tail call void @llvm.dbg.value(metadata !114, i64 0, metadata !82), !dbg !115
  tail call void @llvm.dbg.value(metadata !114, i64 0, metadata !82), !dbg !115
  tail call void @llvm.dbg.value(metadata !114, i64 0, metadata !82), !dbg !115
  tail call void @llvm.dbg.value(metadata !114, i64 0, metadata !82), !dbg !115
  tail call void @llvm.dbg.value(metadata !114, i64 0, metadata !82), !dbg !115
  tail call void @llvm.dbg.value(metadata !114, i64 0, metadata !82), !dbg !115
  tail call void @llvm.dbg.value(metadata !114, i64 0, metadata !82), !dbg !115
  tail call void @llvm.dbg.value(metadata !114, i64 0, metadata !82), !dbg !115
  tail call void @llvm.dbg.value(metadata !114, i64 0, metadata !82), !dbg !115
  tail call void @llvm.dbg.value(metadata !114, i64 0, metadata !82), !dbg !115
  tail call void @llvm.dbg.value(metadata !114, i64 0, metadata !82), !dbg !115
  ret void, !dbg !115
}

; Function Attrs: optsize
declare i32 @CCTK_VarIndex(i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_Warn(i32, i32, i8*, i8*, i8*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #3

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !87, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Time/Simple.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Time/Simple.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_CactusBase_Time_Simple_c", metadata !"CCTKi_version_CactusBase_Time_Simple_c", metadata !"", i32 21, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_CactusBase_Time_Simple_c, null, null, metadata !2, i32 21} ; [ DW_TAG_subprogram ] [line 21] [def] [CCTKi_version_CactusBase_Time_Simple_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Time/Simple.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Time_Simple", metadata !"Time_Simple", metadata !"", i32 25, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.cGH*)* @Time_Simple, null, null, metadata !52, i32 26} ; [ DW_TAG_subprogram ] [line 25] [def] [scope 26] [Time_Simple]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{null, metadata !14}
!14 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGH]
!15 = metadata !{i32 786454, metadata !1, null, metadata !"cGH", i32 75, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ] [cGH] [line 75, size 0, align 0, offset 0] [from ]
!16 = metadata !{i32 786451, metadata !17, null, metadata !"", i32 24, i64 1216, i64 64, i32 0, i32 0, null, metadata !18, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 24, size 1216, align 64, offset 0] [from ]
!17 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Time/../include/cGH.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!18 = metadata !{metadata !19, metadata !21, metadata !22, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !32, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !44, metadata !45}
!19 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_dim", i32 26, i64 32, i64 32, i64 0, i32 0, metadata !20} ; [ DW_TAG_member ] [cctk_dim] [line 26, size 32, align 32, offset 0] [from int]
!20 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!21 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_iteration", i32 27, i64 32, i64 32, i64 32, i32 0, metadata !20} ; [ DW_TAG_member ] [cctk_iteration] [line 27, size 32, align 32, offset 32] [from int]
!22 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_gsh", i32 30, i64 64, i64 64, i64 64, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_gsh] [line 30, size 64, align 64, offset 64] [from ]
!23 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!24 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_lsh", i32 31, i64 64, i64 64, i64 128, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_lsh] [line 31, size 64, align 64, offset 128] [from ]
!25 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_lbnd", i32 32, i64 64, i64 64, i64 192, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_lbnd] [line 32, size 64, align 64, offset 192] [from ]
!26 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_ubnd", i32 33, i64 64, i64 64, i64 256, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_ubnd] [line 33, size 64, align 64, offset 256] [from ]
!27 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_lssh", i32 36, i64 64, i64 64, i64 320, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_lssh] [line 36, size 64, align 64, offset 320] [from ]
!28 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_to", i32 39, i64 64, i64 64, i64 384, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_to] [line 39, size 64, align 64, offset 384] [from ]
!29 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_from", i32 40, i64 64, i64 64, i64 448, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_from] [line 40, size 64, align 64, offset 448] [from ]
!30 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_delta_time", i32 43, i64 64, i64 64, i64 512, i32 0, metadata !31} ; [ DW_TAG_member ] [cctk_delta_time] [line 43, size 64, align 64, offset 512] [from double]
!31 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!32 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_delta_space", i32 44, i64 64, i64 64, i64 576, i32 0, metadata !33} ; [ DW_TAG_member ] [cctk_delta_space] [line 44, size 64, align 64, offset 576] [from ]
!33 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!34 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_origin_space", i32 47, i64 64, i64 64, i64 640, i32 0, metadata !33} ; [ DW_TAG_member ] [cctk_origin_space] [line 47, size 64, align 64, offset 640] [from ]
!35 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_bbox", i32 51, i64 64, i64 64, i64 704, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_bbox] [line 51, size 64, align 64, offset 704] [from ]
!36 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_levfac", i32 54, i64 64, i64 64, i64 768, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_levfac] [line 54, size 64, align 64, offset 768] [from ]
!37 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_convlevel", i32 57, i64 32, i64 32, i64 832, i32 0, metadata !20} ; [ DW_TAG_member ] [cctk_convlevel] [line 57, size 32, align 32, offset 832] [from int]
!38 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_nghostzones", i32 60, i64 64, i64 64, i64 896, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_nghostzones] [line 60, size 64, align 64, offset 896] [from ]
!39 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"cctk_time", i32 63, i64 64, i64 64, i64 960, i32 0, metadata !31} ; [ DW_TAG_member ] [cctk_time] [line 63, size 64, align 64, offset 960] [from double]
!40 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"data", i32 67, i64 64, i64 64, i64 1024, i32 0, metadata !41} ; [ DW_TAG_member ] [data] [line 67, size 64, align 64, offset 1024] [from ]
!41 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !42} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!42 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !43} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!43 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!44 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"extensions", i32 70, i64 64, i64 64, i64 1088, i32 0, metadata !42} ; [ DW_TAG_member ] [extensions] [line 70, size 64, align 64, offset 1088] [from ]
!45 = metadata !{i32 786445, metadata !17, metadata !16, metadata !"GroupData", i32 73, i64 64, i64 64, i64 1152, i32 0, metadata !46} ; [ DW_TAG_member ] [GroupData] [line 73, size 64, align 64, offset 1152] [from ]
!46 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !47} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGHGroupData]
!47 = metadata !{i32 786454, metadata !17, null, metadata !"cGHGroupData", i32 22, i64 0, i64 0, i64 0, i32 0, metadata !48} ; [ DW_TAG_typedef ] [cGHGroupData] [line 22, size 0, align 0, offset 0] [from ]
!48 = metadata !{i32 786451, metadata !17, null, metadata !"", i32 18, i64 16, i64 8, i32 0, i32 0, null, metadata !49, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 18, size 16, align 8, offset 0] [from ]
!49 = metadata !{metadata !50, metadata !51}
!50 = metadata !{i32 786445, metadata !17, metadata !48, metadata !"storage", i32 20, i64 8, i64 8, i64 0, i32 0, metadata !10} ; [ DW_TAG_member ] [storage] [line 20, size 8, align 8, offset 0] [from char]
!51 = metadata !{i32 786445, metadata !17, metadata !48, metadata !"comm", i32 21, i64 8, i64 8, i64 8, i32 0, metadata !10} ; [ DW_TAG_member ] [comm] [line 21, size 8, align 8, offset 8] [from char]
!52 = metadata !{metadata !53, metadata !54, metadata !55, metadata !57, metadata !59, metadata !60, metadata !61, metadata !62, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86}
!53 = metadata !{i32 786689, metadata !11, metadata !"cctkGH", metadata !5, i32 16777241, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctkGH] [line 25]
!54 = metadata !{i32 786688, metadata !11, metadata !"timestep_method", metadata !5, i32 27, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timestep_method] [line 27]
!55 = metadata !{i32 786688, metadata !11, metadata !"timestep_outonly", metadata !5, i32 27, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timestep_outonly] [line 27]
!56 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!57 = metadata !{i32 786688, metadata !11, metadata !"courant_fac", metadata !5, i32 27, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [courant_fac] [line 27]
!58 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from double]
!59 = metadata !{i32 786688, metadata !11, metadata !"dtfac", metadata !5, i32 27, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dtfac] [line 27]
!60 = metadata !{i32 786688, metadata !11, metadata !"timestep", metadata !5, i32 27, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [timestep] [line 27]
!61 = metadata !{i32 786688, metadata !11, metadata !"outtimestep_every", metadata !5, i32 27, metadata !56, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [outtimestep_every] [line 27]
!62 = metadata !{i32 786688, metadata !11, metadata !"cctk_pdummy_pointer", metadata !5, i32 27, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_pdummy_pointer] [line 27]
!63 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !64} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!64 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from ]
!65 = metadata !{i32 786688, metadata !11, metadata !"cctk_dim", metadata !5, i32 28, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_dim] [line 28]
!66 = metadata !{i32 786688, metadata !11, metadata !"cctk_gsh", metadata !5, i32 28, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_gsh] [line 28]
!67 = metadata !{i32 786688, metadata !11, metadata !"cctk_lsh", metadata !5, i32 28, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_lsh] [line 28]
!68 = metadata !{i32 786688, metadata !11, metadata !"cctk_lbnd", metadata !5, i32 28, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_lbnd] [line 28]
!69 = metadata !{i32 786688, metadata !11, metadata !"cctk_ubnd", metadata !5, i32 28, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_ubnd] [line 28]
!70 = metadata !{i32 786688, metadata !11, metadata !"cctk_lssh", metadata !5, i32 28, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_lssh] [line 28]
!71 = metadata !{i32 786688, metadata !11, metadata !"cctk_from", metadata !5, i32 28, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_from] [line 28]
!72 = metadata !{i32 786688, metadata !11, metadata !"cctk_to", metadata !5, i32 28, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_to] [line 28]
!73 = metadata !{i32 786688, metadata !11, metadata !"cctk_bbox", metadata !5, i32 28, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_bbox] [line 28]
!74 = metadata !{i32 786688, metadata !11, metadata !"cctk_delta_time", metadata !5, i32 28, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_delta_time] [line 28]
!75 = metadata !{i32 786688, metadata !11, metadata !"cctk_time", metadata !5, i32 28, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_time] [line 28]
!76 = metadata !{i32 786688, metadata !11, metadata !"cctk_delta_space", metadata !5, i32 28, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_delta_space] [line 28]
!77 = metadata !{i32 786688, metadata !11, metadata !"cctk_origin_space", metadata !5, i32 28, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_origin_space] [line 28]
!78 = metadata !{i32 786688, metadata !11, metadata !"cctk_levfac", metadata !5, i32 28, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_levfac] [line 28]
!79 = metadata !{i32 786688, metadata !11, metadata !"cctk_convlevel", metadata !5, i32 28, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_convlevel] [line 28]
!80 = metadata !{i32 786688, metadata !11, metadata !"cctk_nghostzones", metadata !5, i32 28, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_nghostzones] [line 28]
!81 = metadata !{i32 786688, metadata !11, metadata !"cctk_iteration", metadata !5, i32 28, metadata !20, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_iteration] [line 28]
!82 = metadata !{i32 786688, metadata !11, metadata !"cctk_dummy_pointer", metadata !5, i32 28, metadata !63, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cctk_dummy_pointer] [line 28]
!83 = metadata !{i32 786688, metadata !11, metadata !"courant_dt", metadata !5, i32 28, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [courant_dt] [line 28]
!84 = metadata !{i32 786688, metadata !11, metadata !"courant_min_time", metadata !5, i32 28, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [courant_min_time] [line 28]
!85 = metadata !{i32 786688, metadata !11, metadata !"courant_wave_speed", metadata !5, i32 28, metadata !33, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [courant_wave_speed] [line 28]
!86 = metadata !{i32 786688, metadata !11, metadata !"min_spacing", metadata !5, i32 30, metadata !31, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [min_spacing] [line 30]
!87 = metadata !{metadata !88}
!88 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 19, metadata !8, i32 1, i32 1, null, null}
!89 = metadata !{i32 21, i32 0, metadata !4, null}
!90 = metadata !{i32 25, i32 0, metadata !11, null}
!91 = metadata !{i32 27, i32 0, metadata !11, null}
!92 = metadata !{metadata !"double", metadata !93}
!93 = metadata !{metadata !"omnipotent char", metadata !94}
!94 = metadata !{metadata !"Simple C/C++ TBAA"}
!95 = metadata !{i32 28, i32 0, metadata !11, null}
!96 = metadata !{metadata !"int", metadata !93}
!97 = metadata !{metadata !"any pointer", metadata !93}
!98 = metadata !{double 0.000000e+00}
!99 = metadata !{i32 30, i32 0, metadata !11, null}
!100 = metadata !{i32 33, i32 0, metadata !11, null}
!101 = metadata !{i32 35, i32 0, metadata !102, null}
!102 = metadata !{i32 786443, metadata !1, metadata !11, i32 34, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Time/Simple.c]
!103 = metadata !{i32 38, i32 0, metadata !11, null}
!104 = metadata !{i32 40, i32 0, metadata !105, null}
!105 = metadata !{i32 786443, metadata !1, metadata !11, i32 39, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Time/Simple.c]
!106 = metadata !{i32 44, i32 0, metadata !11, null}
!107 = metadata !{i32 46, i32 0, metadata !108, null}
!108 = metadata !{i32 786443, metadata !1, metadata !11, i32 45, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Time/Simple.c]
!109 = metadata !{i32 50, i32 0, metadata !11, null}
!110 = metadata !{i32 52, i32 0, metadata !111, null}
!111 = metadata !{i32 786443, metadata !1, metadata !11, i32 51, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Time/Simple.c]
!112 = metadata !{i32 53, i32 0, metadata !111, null}
!113 = metadata !{i32 56, i32 0, metadata !11, null}
!114 = metadata !{i8* undef}
!115 = metadata !{i32 61, i32 0, metadata !11, null}
