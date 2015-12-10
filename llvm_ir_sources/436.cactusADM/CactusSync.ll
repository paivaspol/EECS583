; ModuleID = '../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusSync.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }

@CCTK_SyncGroup = external global i32 (%struct.cGH*, i8*)*
@.str = private unnamed_addr constant [86 x i8] c"$Header: /cactus/Cactus/src/comm/CactusSync.c,v 1.10 2001/12/09 23:34:54 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone uwtable
define i8* @CCTKi_version_comm_CactusSync_c() #0 {
entry:
  ret i8* getelementptr inbounds ([86 x i8]* @.str, i64 0, i64 0), !dbg !105
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_SyncGroupI(%struct.cGH* %GH, i32 %group) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !53), !dbg !106
  tail call void @llvm.dbg.value(metadata !{i32 %group}, i64 0, metadata !54), !dbg !106
  tail call void @llvm.dbg.value(metadata !107, i64 0, metadata !55), !dbg !108
  %call = tail call i8* @CCTK_GroupName(i32 %group) #5, !dbg !109
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !56), !dbg !109
  %tobool = icmp eq i8* %call, null, !dbg !110
  br i1 %tobool, label %if.end5, label %if.then, !dbg !110

if.then:                                          ; preds = %entry
  %0 = load i32 (%struct.cGH*, i8*)** @CCTK_SyncGroup, align 8, !dbg !111, !tbaa !113
  %call2 = tail call i32 %0(%struct.cGH* %GH, i8* %call) #5, !dbg !111
  tail call void @llvm.dbg.value(metadata !{i32 %call2}, i64 0, metadata !55), !dbg !111
  %tobool3 = icmp ne i32 %call2, 0, !dbg !116
  %.call2 = select i1 %tobool3, i32 -2, i32 0, !dbg !116
  tail call void @llvm.dbg.value(metadata !{i32 %.call2}, i64 0, metadata !55), !dbg !117
  tail call void @free(i8* %call) #5, !dbg !119
  br label %if.end5, !dbg !120

if.end5:                                          ; preds = %entry, %if.then
  %retval1.0 = phi i32 [ %.call2, %if.then ], [ -1, %entry ]
  ret i32 %retval1.0, !dbg !121
}

; Function Attrs: optsize
declare i8* @CCTK_GroupName(i32) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define void @cctk_syncgroupi_(i32* nocapture %ierror, %struct.cGH* %GH, i32* nocapture %group) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %ierror}, i64 0, metadata !64), !dbg !122
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !65), !dbg !122
  tail call void @llvm.dbg.value(metadata !{i32* %group}, i64 0, metadata !66), !dbg !122
  %0 = load i32* %group, align 4, !dbg !123, !tbaa !124
  %call = tail call i32 @CCTK_SyncGroupI(%struct.cGH* %GH, i32 %0) #6, !dbg !123
  store i32 0, i32* %ierror, align 4, !dbg !125, !tbaa !124
  ret void, !dbg !126
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_SyncGroupWithVar(%struct.cGH* %GH, i8* %varname) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !71), !dbg !127
  tail call void @llvm.dbg.value(metadata !{i8* %varname}, i64 0, metadata !72), !dbg !127
  %call = tail call i32 @CCTK_VarIndex(i8* %varname) #5, !dbg !128
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !73), !dbg !128
  %call1 = tail call i32 @CCTK_GroupIndexFromVarI(i32 %call) #5, !dbg !129
  tail call void @llvm.dbg.value(metadata !{i32 %call1}, i64 0, metadata !73), !dbg !129
  %call2 = tail call i32 @CCTK_SyncGroupI(%struct.cGH* %GH, i32 %call1) #6, !dbg !130
  ret i32 %call2, !dbg !130
}

; Function Attrs: optsize
declare i32 @CCTK_VarIndex(i8*) #2

; Function Attrs: optsize
declare i32 @CCTK_GroupIndexFromVarI(i32) #2

; Function Attrs: nounwind optsize uwtable
define void @cctk_syncgroupwithvar_(i32* nocapture %ierror, %struct.cGH* %GH, i8* %cctk_str1, i32 %cctk_strlen1) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %ierror}, i64 0, metadata !79), !dbg !131
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !80), !dbg !131
  tail call void @llvm.dbg.value(metadata !{i8* %cctk_str1}, i64 0, metadata !81), !dbg !131
  tail call void @llvm.dbg.value(metadata !{i32 %cctk_strlen1}, i64 0, metadata !82), !dbg !131
  %call = tail call i8* @Util_NullTerminateString(i8* %cctk_str1, i32 %cctk_strlen1) #5, !dbg !132
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !83), !dbg !132
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !133) #7, !dbg !135
  tail call void @llvm.dbg.value(metadata !{i8* %call}, i64 0, metadata !136) #7, !dbg !135
  %call.i = tail call i32 @CCTK_VarIndex(i8* %call) #5, !dbg !137
  tail call void @llvm.dbg.value(metadata !{i32 %call.i}, i64 0, metadata !138) #7, !dbg !137
  %call1.i = tail call i32 @CCTK_GroupIndexFromVarI(i32 %call.i) #5, !dbg !139
  tail call void @llvm.dbg.value(metadata !{i32 %call1.i}, i64 0, metadata !138) #7, !dbg !139
  %call2.i = tail call i32 @CCTK_SyncGroupI(%struct.cGH* %GH, i32 %call1.i) #5, !dbg !140
  store i32 %call2.i, i32* %ierror, align 4, !dbg !134, !tbaa !124
  tail call void @free(i8* %call) #5, !dbg !141
  ret void, !dbg !142
}

; Function Attrs: optsize
declare i8* @Util_NullTerminateString(i8*, i32) #2

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_SyncGroupWithVarI(%struct.cGH* %GH, i32 %var) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !86), !dbg !143
  tail call void @llvm.dbg.value(metadata !{i32 %var}, i64 0, metadata !87), !dbg !143
  %call = tail call i32 @CCTK_GroupIndexFromVarI(i32 %var) #5, !dbg !144
  tail call void @llvm.dbg.value(metadata !{i32 %call}, i64 0, metadata !88), !dbg !144
  %call1 = tail call i32 @CCTK_SyncGroupI(%struct.cGH* %GH, i32 %call) #6, !dbg !145
  ret i32 %call1, !dbg !145
}

; Function Attrs: nounwind optsize uwtable
define void @cctk_syncgroupwithvari_(i32* nocapture %ierror, %struct.cGH* %GH, i32* nocapture %var) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{i32* %ierror}, i64 0, metadata !91), !dbg !146
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !92), !dbg !146
  tail call void @llvm.dbg.value(metadata !{i32* %var}, i64 0, metadata !93), !dbg !146
  %0 = load i32* %var, align 4, !dbg !147, !tbaa !124
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !148) #7, !dbg !149
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !150) #7, !dbg !149
  %call.i = tail call i32 @CCTK_GroupIndexFromVarI(i32 %0) #5, !dbg !151
  tail call void @llvm.dbg.value(metadata !{i32 %call.i}, i64 0, metadata !152) #7, !dbg !151
  %call1.i = tail call i32 @CCTK_SyncGroupI(%struct.cGH* %GH, i32 %call.i) #5, !dbg !153
  store i32 %call1.i, i32* %ierror, align 4, !dbg !147, !tbaa !124
  ret void, !dbg !154
}

; Function Attrs: nounwind optsize uwtable
define i32 @CCTK_SyncGroupsI(%struct.cGH* %GH, i32 %n_groups, i32* nocapture %groups) #1 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.cGH* %GH}, i64 0, metadata !98), !dbg !155
  tail call void @llvm.dbg.value(metadata !{i32 %n_groups}, i64 0, metadata !99), !dbg !156
  tail call void @llvm.dbg.value(metadata !{i32* %groups}, i64 0, metadata !100), !dbg !157
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !102), !dbg !158
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !101), !dbg !159
  %cmp7 = icmp sgt i32 %n_groups, 0, !dbg !159
  br i1 %cmp7, label %for.body, label %for.end, !dbg !159

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %retval1.09 = phi i32 [ %inc.retval1.0, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i32* %groups, i64 %indvars.iv, !dbg !161
  %0 = load i32* %arrayidx, align 4, !dbg !161, !tbaa !124
  %call = tail call i32 @CCTK_SyncGroupI(%struct.cGH* %GH, i32 %0) #6, !dbg !161
  %cmp2 = icmp eq i32 %call, 0, !dbg !161
  %inc = zext i1 %cmp2 to i32, !dbg !161
  %inc.retval1.0 = add nsw i32 %inc, %retval1.09, !dbg !161
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !159
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !159
  %exitcond = icmp eq i32 %lftr.wideiv, %n_groups, !dbg !159
  br i1 %exitcond, label %for.end, label %for.body, !dbg !159

for.end:                                          ; preds = %for.body, %entry
  %retval1.0.lcssa = phi i32 [ 0, %entry ], [ %inc.retval1.0, %for.body ]
  ret i32 %retval1.0.lcssa, !dbg !163
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #4

attributes #0 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !103, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusSync.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusSync.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !11, metadata !58, metadata !67, metadata !74, metadata !84, metadata !89, metadata !94}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTKi_version_comm_CactusSync_c", metadata !"CCTKi_version_comm_CactusSync_c", metadata !"", i32 28, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i8* ()* @CCTKi_version_comm_CactusSync_c, null, null, metadata !2, i32 28} ; [ DW_TAG_subprogram ] [line 28] [def] [CCTKi_version_comm_CactusSync_c]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusSync.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!9 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!10 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!11 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_SyncGroupI", metadata !"CCTK_SyncGroupI", metadata !"", i32 72, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i32)* @CCTK_SyncGroupI, null, null, metadata !52, i32 73} ; [ DW_TAG_subprogram ] [line 72] [def] [scope 73] [CCTK_SyncGroupI]
!12 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !15, metadata !14}
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGH]
!16 = metadata !{i32 786454, metadata !1, null, metadata !"cGH", i32 75, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_typedef ] [cGH] [line 75, size 0, align 0, offset 0] [from ]
!17 = metadata !{i32 786451, metadata !18, null, metadata !"", i32 24, i64 1216, i64 64, i32 0, i32 0, null, metadata !19, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 24, size 1216, align 64, offset 0] [from ]
!18 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cGH.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!19 = metadata !{metadata !20, metadata !21, metadata !22, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !30, metadata !32, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !44, metadata !45}
!20 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_dim", i32 26, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_dim] [line 26, size 32, align 32, offset 0] [from int]
!21 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_iteration", i32 27, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_iteration] [line 27, size 32, align 32, offset 32] [from int]
!22 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_gsh", i32 30, i64 64, i64 64, i64 64, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_gsh] [line 30, size 64, align 64, offset 64] [from ]
!23 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!24 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_lsh", i32 31, i64 64, i64 64, i64 128, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_lsh] [line 31, size 64, align 64, offset 128] [from ]
!25 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_lbnd", i32 32, i64 64, i64 64, i64 192, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_lbnd] [line 32, size 64, align 64, offset 192] [from ]
!26 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_ubnd", i32 33, i64 64, i64 64, i64 256, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_ubnd] [line 33, size 64, align 64, offset 256] [from ]
!27 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_lssh", i32 36, i64 64, i64 64, i64 320, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_lssh] [line 36, size 64, align 64, offset 320] [from ]
!28 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_to", i32 39, i64 64, i64 64, i64 384, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_to] [line 39, size 64, align 64, offset 384] [from ]
!29 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_from", i32 40, i64 64, i64 64, i64 448, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_from] [line 40, size 64, align 64, offset 448] [from ]
!30 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_delta_time", i32 43, i64 64, i64 64, i64 512, i32 0, metadata !31} ; [ DW_TAG_member ] [cctk_delta_time] [line 43, size 64, align 64, offset 512] [from double]
!31 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!32 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_delta_space", i32 44, i64 64, i64 64, i64 576, i32 0, metadata !33} ; [ DW_TAG_member ] [cctk_delta_space] [line 44, size 64, align 64, offset 576] [from ]
!33 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !31} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!34 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_origin_space", i32 47, i64 64, i64 64, i64 640, i32 0, metadata !33} ; [ DW_TAG_member ] [cctk_origin_space] [line 47, size 64, align 64, offset 640] [from ]
!35 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_bbox", i32 51, i64 64, i64 64, i64 704, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_bbox] [line 51, size 64, align 64, offset 704] [from ]
!36 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_levfac", i32 54, i64 64, i64 64, i64 768, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_levfac] [line 54, size 64, align 64, offset 768] [from ]
!37 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_convlevel", i32 57, i64 32, i64 32, i64 832, i32 0, metadata !14} ; [ DW_TAG_member ] [cctk_convlevel] [line 57, size 32, align 32, offset 832] [from int]
!38 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_nghostzones", i32 60, i64 64, i64 64, i64 896, i32 0, metadata !23} ; [ DW_TAG_member ] [cctk_nghostzones] [line 60, size 64, align 64, offset 896] [from ]
!39 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"cctk_time", i32 63, i64 64, i64 64, i64 960, i32 0, metadata !31} ; [ DW_TAG_member ] [cctk_time] [line 63, size 64, align 64, offset 960] [from double]
!40 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"data", i32 67, i64 64, i64 64, i64 1024, i32 0, metadata !41} ; [ DW_TAG_member ] [data] [line 67, size 64, align 64, offset 1024] [from ]
!41 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !42} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!42 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !43} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!43 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!44 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"extensions", i32 70, i64 64, i64 64, i64 1088, i32 0, metadata !42} ; [ DW_TAG_member ] [extensions] [line 70, size 64, align 64, offset 1088] [from ]
!45 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"GroupData", i32 73, i64 64, i64 64, i64 1152, i32 0, metadata !46} ; [ DW_TAG_member ] [GroupData] [line 73, size 64, align 64, offset 1152] [from ]
!46 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !47} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from cGHGroupData]
!47 = metadata !{i32 786454, metadata !18, null, metadata !"cGHGroupData", i32 22, i64 0, i64 0, i64 0, i32 0, metadata !48} ; [ DW_TAG_typedef ] [cGHGroupData] [line 22, size 0, align 0, offset 0] [from ]
!48 = metadata !{i32 786451, metadata !18, null, metadata !"", i32 18, i64 16, i64 8, i32 0, i32 0, null, metadata !49, i32 0, null, null} ; [ DW_TAG_structure_type ] [line 18, size 16, align 8, offset 0] [from ]
!49 = metadata !{metadata !50, metadata !51}
!50 = metadata !{i32 786445, metadata !18, metadata !48, metadata !"storage", i32 20, i64 8, i64 8, i64 0, i32 0, metadata !10} ; [ DW_TAG_member ] [storage] [line 20, size 8, align 8, offset 0] [from char]
!51 = metadata !{i32 786445, metadata !18, metadata !48, metadata !"comm", i32 21, i64 8, i64 8, i64 8, i32 0, metadata !10} ; [ DW_TAG_member ] [comm] [line 21, size 8, align 8, offset 8] [from char]
!52 = metadata !{metadata !53, metadata !54, metadata !55, metadata !56}
!53 = metadata !{i32 786689, metadata !11, metadata !"GH", metadata !5, i32 16777288, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 72]
!54 = metadata !{i32 786689, metadata !11, metadata !"group", metadata !5, i32 33554504, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [group] [line 72]
!55 = metadata !{i32 786688, metadata !11, metadata !"retval", metadata !5, i32 74, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 74]
!56 = metadata !{i32 786688, metadata !11, metadata !"groupname", metadata !5, i32 75, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [groupname] [line 75]
!57 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!58 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cctk_syncgroupi_", metadata !"cctk_syncgroupi_", metadata !"", i32 93, metadata !59, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, %struct.cGH*, i32*)* @cctk_syncgroupi_, null, null, metadata !63, i32 95} ; [ DW_TAG_subprogram ] [line 93] [def] [scope 95] [cctk_syncgroupi_]
!59 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !60, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!60 = metadata !{null, metadata !23, metadata !15, metadata !61}
!61 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !62} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!62 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from int]
!63 = metadata !{metadata !64, metadata !65, metadata !66}
!64 = metadata !{i32 786689, metadata !58, metadata !"ierror", metadata !5, i32 16777310, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ierror] [line 94]
!65 = metadata !{i32 786689, metadata !58, metadata !"GH", metadata !5, i32 33554526, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 94]
!66 = metadata !{i32 786689, metadata !58, metadata !"group", metadata !5, i32 50331742, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [group] [line 94]
!67 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_SyncGroupWithVar", metadata !"CCTK_SyncGroupWithVar", metadata !"", i32 129, metadata !68, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i8*)* @CCTK_SyncGroupWithVar, null, null, metadata !70, i32 130} ; [ DW_TAG_subprogram ] [line 129] [def] [scope 130] [CCTK_SyncGroupWithVar]
!68 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !69, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!69 = metadata !{metadata !14, metadata !15, metadata !8}
!70 = metadata !{metadata !71, metadata !72, metadata !73}
!71 = metadata !{i32 786689, metadata !67, metadata !"GH", metadata !5, i32 16777345, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 129]
!72 = metadata !{i32 786689, metadata !67, metadata !"varname", metadata !5, i32 33554561, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [varname] [line 129]
!73 = metadata !{i32 786688, metadata !67, metadata !"idx", metadata !5, i32 131, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 131]
!74 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cctk_syncgroupwithvar_", metadata !"cctk_syncgroupwithvar_", metadata !"", i32 139, metadata !75, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, %struct.cGH*, i8*, i32)* @cctk_syncgroupwithvar_, null, null, metadata !78, i32 141} ; [ DW_TAG_subprogram ] [line 139] [def] [scope 141] [cctk_syncgroupwithvar_]
!75 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !76, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!76 = metadata !{null, metadata !23, metadata !15, metadata !57, metadata !77}
!77 = metadata !{i32 786468, null, null, metadata !"unsigned int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned int] [line 0, size 32, align 32, offset 0, enc DW_ATE_unsigned]
!78 = metadata !{metadata !79, metadata !80, metadata !81, metadata !82, metadata !83}
!79 = metadata !{i32 786689, metadata !74, metadata !"ierror", metadata !5, i32 16777356, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ierror] [line 140]
!80 = metadata !{i32 786689, metadata !74, metadata !"GH", metadata !5, i32 33554572, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 140]
!81 = metadata !{i32 786689, metadata !74, metadata !"cctk_str1", metadata !5, i32 50331788, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_str1] [line 140]
!82 = metadata !{i32 786689, metadata !74, metadata !"cctk_strlen1", metadata !5, i32 67109004, metadata !77, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [cctk_strlen1] [line 140]
!83 = metadata !{i32 786688, metadata !74, metadata !"varname", metadata !5, i32 142, metadata !57, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [varname] [line 142]
!84 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_SyncGroupWithVarI", metadata !"CCTK_SyncGroupWithVarI", metadata !"", i32 175, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i32)* @CCTK_SyncGroupWithVarI, null, null, metadata !85, i32 176} ; [ DW_TAG_subprogram ] [line 175] [def] [scope 176] [CCTK_SyncGroupWithVarI]
!85 = metadata !{metadata !86, metadata !87, metadata !88}
!86 = metadata !{i32 786689, metadata !84, metadata !"GH", metadata !5, i32 16777391, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 175]
!87 = metadata !{i32 786689, metadata !84, metadata !"var", metadata !5, i32 33554607, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [var] [line 175]
!88 = metadata !{i32 786688, metadata !84, metadata !"idx", metadata !5, i32 177, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 177]
!89 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"cctk_syncgroupwithvari_", metadata !"cctk_syncgroupwithvari_", metadata !"", i32 184, metadata !59, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (i32*, %struct.cGH*, i32*)* @cctk_syncgroupwithvari_, null, null, metadata !90, i32 186} ; [ DW_TAG_subprogram ] [line 184] [def] [scope 186] [cctk_syncgroupwithvari_]
!90 = metadata !{metadata !91, metadata !92, metadata !93}
!91 = metadata !{i32 786689, metadata !89, metadata !"ierror", metadata !5, i32 16777401, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ierror] [line 185]
!92 = metadata !{i32 786689, metadata !89, metadata !"GH", metadata !5, i32 33554617, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 185]
!93 = metadata !{i32 786689, metadata !89, metadata !"var", metadata !5, i32 50331833, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [var] [line 185]
!94 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"CCTK_SyncGroupsI", metadata !"CCTK_SyncGroupsI", metadata !"", i32 221, metadata !95, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.cGH*, i32, i32*)* @CCTK_SyncGroupsI, null, null, metadata !97, i32 224} ; [ DW_TAG_subprogram ] [line 221] [def] [scope 224] [CCTK_SyncGroupsI]
!95 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !96, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!96 = metadata !{metadata !14, metadata !15, metadata !14, metadata !61}
!97 = metadata !{metadata !98, metadata !99, metadata !100, metadata !101, metadata !102}
!98 = metadata !{i32 786689, metadata !94, metadata !"GH", metadata !5, i32 16777437, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [GH] [line 221]
!99 = metadata !{i32 786689, metadata !94, metadata !"n_groups", metadata !5, i32 33554654, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n_groups] [line 222]
!100 = metadata !{i32 786689, metadata !94, metadata !"groups", metadata !5, i32 50331871, metadata !61, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [groups] [line 223]
!101 = metadata !{i32 786688, metadata !94, metadata !"i", metadata !5, i32 225, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 225]
!102 = metadata !{i32 786688, metadata !94, metadata !"retval", metadata !5, i32 225, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [retval] [line 225]
!103 = metadata !{metadata !104}
!104 = metadata !{i32 786484, i32 0, null, metadata !"rcsid", metadata !"rcsid", metadata !"", metadata !5, i32 27, metadata !8, i32 1, i32 1, null, null}
!105 = metadata !{i32 28, i32 0, metadata !4, null}
!106 = metadata !{i32 72, i32 0, metadata !11, null}
!107 = metadata !{i32 -1}
!108 = metadata !{i32 78, i32 0, metadata !11, null}
!109 = metadata !{i32 79, i32 0, metadata !11, null}
!110 = metadata !{i32 80, i32 0, metadata !11, null}
!111 = metadata !{i32 82, i32 0, metadata !112, null}
!112 = metadata !{i32 786443, metadata !1, metadata !11, i32 81, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusSync.c]
!113 = metadata !{metadata !"any pointer", metadata !114}
!114 = metadata !{metadata !"omnipotent char", metadata !115}
!115 = metadata !{metadata !"Simple C/C++ TBAA"}
!116 = metadata !{i32 83, i32 0, metadata !112, null}
!117 = metadata !{i32 85, i32 0, metadata !118, null}
!118 = metadata !{i32 786443, metadata !1, metadata !112, i32 84, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusSync.c]
!119 = metadata !{i32 87, i32 0, metadata !112, null}
!120 = metadata !{i32 88, i32 0, metadata !112, null}
!121 = metadata !{i32 90, i32 0, metadata !11, null}
!122 = metadata !{i32 94, i32 0, metadata !58, null}
!123 = metadata !{i32 96, i32 0, metadata !58, null}
!124 = metadata !{metadata !"int", metadata !114}
!125 = metadata !{i32 97, i32 0, metadata !58, null}
!126 = metadata !{i32 98, i32 0, metadata !58, null}
!127 = metadata !{i32 129, i32 0, metadata !67, null}
!128 = metadata !{i32 134, i32 0, metadata !67, null}
!129 = metadata !{i32 135, i32 0, metadata !67, null}
!130 = metadata !{i32 136, i32 0, metadata !67, null}
!131 = metadata !{i32 140, i32 0, metadata !74, null}
!132 = metadata !{i32 142, i32 0, metadata !74, null}
!133 = metadata !{i32 786689, metadata !67, metadata !"GH", metadata !5, i32 16777345, metadata !15, i32 0, metadata !134} ; [ DW_TAG_arg_variable ] [GH] [line 129]
!134 = metadata !{i32 143, i32 0, metadata !74, null}
!135 = metadata !{i32 129, i32 0, metadata !67, metadata !134}
!136 = metadata !{i32 786689, metadata !67, metadata !"varname", metadata !5, i32 33554561, metadata !8, i32 0, metadata !134} ; [ DW_TAG_arg_variable ] [varname] [line 129]
!137 = metadata !{i32 134, i32 0, metadata !67, metadata !134}
!138 = metadata !{i32 786688, metadata !67, metadata !"idx", metadata !5, i32 131, metadata !14, i32 0, metadata !134} ; [ DW_TAG_auto_variable ] [idx] [line 131]
!139 = metadata !{i32 135, i32 0, metadata !67, metadata !134}
!140 = metadata !{i32 136, i32 0, metadata !67, metadata !134}
!141 = metadata !{i32 144, i32 0, metadata !74, null}
!142 = metadata !{i32 145, i32 0, metadata !74, null}
!143 = metadata !{i32 175, i32 0, metadata !84, null}
!144 = metadata !{i32 180, i32 0, metadata !84, null}
!145 = metadata !{i32 181, i32 0, metadata !84, null}
!146 = metadata !{i32 185, i32 0, metadata !89, null}
!147 = metadata !{i32 187, i32 0, metadata !89, null}
!148 = metadata !{i32 786689, metadata !84, metadata !"GH", metadata !5, i32 16777391, metadata !15, i32 0, metadata !147} ; [ DW_TAG_arg_variable ] [GH] [line 175]
!149 = metadata !{i32 175, i32 0, metadata !84, metadata !147}
!150 = metadata !{i32 786689, metadata !84, metadata !"var", metadata !5, i32 33554607, metadata !14, i32 0, metadata !147} ; [ DW_TAG_arg_variable ] [var] [line 175]
!151 = metadata !{i32 180, i32 0, metadata !84, metadata !147}
!152 = metadata !{i32 786688, metadata !84, metadata !"idx", metadata !5, i32 177, metadata !14, i32 0, metadata !147} ; [ DW_TAG_auto_variable ] [idx] [line 177]
!153 = metadata !{i32 181, i32 0, metadata !84, metadata !147}
!154 = metadata !{i32 188, i32 0, metadata !89, null}
!155 = metadata !{i32 221, i32 0, metadata !94, null}
!156 = metadata !{i32 222, i32 0, metadata !94, null}
!157 = metadata !{i32 223, i32 0, metadata !94, null}
!158 = metadata !{i32 228, i32 0, metadata !94, null}
!159 = metadata !{i32 229, i32 0, metadata !160, null}
!160 = metadata !{i32 786443, metadata !1, metadata !94, i32 229, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusSync.c]
!161 = metadata !{i32 231, i32 0, metadata !162, null}
!162 = metadata !{i32 786443, metadata !1, metadata !160, i32 230, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/436.cactusADM/src/Cactus/CactusSync.c]
!163 = metadata !{i32 237, i32 0, metadata !94, null}
