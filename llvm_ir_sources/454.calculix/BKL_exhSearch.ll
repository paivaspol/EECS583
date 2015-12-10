; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_exhSearch.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._BKL = type { %struct._BPG*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, [3 x i32], i32*, float }
%struct._BPG = type { i32, i32, %struct._Graph* }
%struct._Graph = type { i32, i32, i32, i32, i32, i32, %struct._IVL*, i32*, %struct._IVL* }
%struct._IVL = type { i32, i32, i32, i32, i32*, i32**, i32, %struct._Ichunk* }
%struct._Ichunk = type { i32, i32, i32*, %struct._Ichunk* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [63 x i8] c"\0A fatal error in BKL_exhaustiveSearch(%p,%d,%p,%p)\0A bad input\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define float @BKL_exhSearch(%struct._BKL* %bkl, i32 %mdom, i32* %domids, i32* %tcolors) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._BKL* %bkl}, i64 0, metadata !78), !dbg !91
  tail call void @llvm.dbg.value(metadata !{i32 %mdom}, i64 0, metadata !79), !dbg !92
  tail call void @llvm.dbg.value(metadata !{i32* %domids}, i64 0, metadata !80), !dbg !93
  tail call void @llvm.dbg.value(metadata !{i32* %tcolors}, i64 0, metadata !81), !dbg !94
  %cmp = icmp eq %struct._BKL* %bkl, null, !dbg !95
  %cmp1 = icmp slt i32 %mdom, 1, !dbg !95
  %or.cond = or i1 %cmp, %cmp1, !dbg !95
  %cmp3 = icmp eq i32* %domids, null, !dbg !95
  %or.cond106 = or i1 %or.cond, %cmp3, !dbg !95
  %cmp5 = icmp eq i32* %tcolors, null, !dbg !95
  %or.cond107 = or i1 %or.cond106, %cmp5, !dbg !95
  br i1 %or.cond107, label %if.then, label %if.end, !dbg !95

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !96, !tbaa !98
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), %struct._BKL* %bkl, i32 %mdom, i32* %domids, i32* %tcolors) #5, !dbg !96
  tail call void @exit(i32 -1) #6, !dbg !101
  unreachable, !dbg !101

if.end:                                           ; preds = %entry
  %colors6 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 10, !dbg !102
  %1 = load i32** %colors6, align 8, !dbg !102, !tbaa !98
  tail call void @llvm.dbg.value(metadata !{i32* %1}, i64 0, metadata !90), !dbg !102
  %nflips = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 7, !dbg !103
  store i32 0, i32* %nflips, align 4, !dbg !103, !tbaa !104
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !87), !dbg !105
  %cmp7119 = icmp sgt i32 %mdom, 0, !dbg !105
  br i1 %cmp7119, label %for.body, label %for.end.thread, !dbg !105

for.end.thread:                                   ; preds = %if.end
  %call12131 = tail call float @BKL_evalfcn(%struct._BKL* %bkl) #5, !dbg !107
  tail call void @llvm.dbg.value(metadata !{float %call12}, i64 0, metadata !82), !dbg !107
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !84), !dbg !108
  tail call void @llvm.dbg.value(metadata !110, i64 0, metadata !89), !dbg !108
  br label %for.end59, !dbg !108

for.body:                                         ; preds = %if.end, %for.body
  %indvars.iv127 = phi i64 [ %indvars.iv.next128, %for.body ], [ 0, %if.end ]
  %arrayidx = getelementptr inbounds i32* %domids, i64 %indvars.iv127, !dbg !111
  %2 = load i32* %arrayidx, align 4, !dbg !111, !tbaa !104
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !84), !dbg !111
  %idxprom8 = sext i32 %2 to i64, !dbg !113
  %arrayidx9 = getelementptr inbounds i32* %1, i64 %idxprom8, !dbg !113
  %3 = load i32* %arrayidx9, align 4, !dbg !113, !tbaa !104
  %arrayidx11 = getelementptr inbounds i32* %tcolors, i64 %indvars.iv127, !dbg !113
  store i32 %3, i32* %arrayidx11, align 4, !dbg !113, !tbaa !104
  %indvars.iv.next128 = add i64 %indvars.iv127, 1, !dbg !105
  %lftr.wideiv129 = trunc i64 %indvars.iv.next128 to i32, !dbg !105
  %exitcond130 = icmp eq i32 %lftr.wideiv129, %mdom, !dbg !105
  br i1 %exitcond130, label %for.end, label %for.body, !dbg !105

for.end:                                          ; preds = %for.body
  %call12 = tail call float @BKL_evalfcn(%struct._BKL* %bkl) #5, !dbg !107
  tail call void @llvm.dbg.value(metadata !{float %call12}, i64 0, metadata !82), !dbg !107
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !84), !dbg !108
  tail call void @llvm.dbg.value(metadata !110, i64 0, metadata !89), !dbg !108
  br i1 %cmp7119, label %for.body15, label %for.end59, !dbg !108

for.cond19.preheader:                             ; preds = %for.body15
  %cmp20112 = icmp sgt i32 %mul, 1, !dbg !114
  br i1 %cmp20112, label %for.body21.lr.ph, label %for.cond45.preheader, !dbg !114

for.body21.lr.ph:                                 ; preds = %for.cond19.preheader
  %nimprove = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 8, !dbg !116
  br label %for.body21, !dbg !114

for.body15:                                       ; preds = %for.end, %for.body15
  %nflip.0117 = phi i32 [ %mul, %for.body15 ], [ 1, %for.end ]
  %idom.0116 = phi i32 [ %inc17, %for.body15 ], [ 0, %for.end ]
  %mul = shl nsw i32 %nflip.0117, 1, !dbg !119
  tail call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !89), !dbg !119
  %inc17 = add nsw i32 %idom.0116, 1, !dbg !108
  tail call void @llvm.dbg.value(metadata !{i32 %inc17}, i64 0, metadata !84), !dbg !108
  %exitcond126 = icmp eq i32 %inc17, %mdom, !dbg !108
  br i1 %exitcond126, label %for.cond19.preheader, label %for.body15, !dbg !108

for.cond45.preheader:                             ; preds = %for.inc42, %for.cond19.preheader
  %bestcost.0.lcssa = phi float [ %call12, %for.cond19.preheader ], [ %bestcost.1, %for.inc42 ]
  br i1 %cmp7119, label %for.body47, label %for.end59, !dbg !121

for.body21:                                       ; preds = %for.inc42, %for.body21.lr.ph
  %bestcost.0114 = phi float [ %call12, %for.body21.lr.ph ], [ %bestcost.1, %for.inc42 ]
  %iflip.0113 = phi i32 [ 1, %for.body21.lr.ph ], [ %inc43, %for.inc42 ]
  %call22 = tail call i32 @BKL_greyCodeDomain(%struct._BKL* %bkl, i32 %iflip.0113) #5, !dbg !123
  tail call void @llvm.dbg.value(metadata !{i32 %call22}, i64 0, metadata !87), !dbg !123
  %idxprom23 = sext i32 %call22 to i64, !dbg !124
  %arrayidx24 = getelementptr inbounds i32* %domids, i64 %idxprom23, !dbg !124
  %4 = load i32* %arrayidx24, align 4, !dbg !124, !tbaa !104
  tail call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !84), !dbg !124
  tail call void @BKL_flipDomain(%struct._BKL* %bkl, i32 %4) #5, !dbg !125
  %call25 = tail call float @BKL_evalfcn(%struct._BKL* %bkl) #5, !dbg !126
  tail call void @llvm.dbg.value(metadata !{float %call25}, i64 0, metadata !83), !dbg !126
  %cmp26 = fcmp olt float %call25, %bestcost.0114, !dbg !127
  br i1 %cmp26, label %if.then27, label %for.inc42, !dbg !127

if.then27:                                        ; preds = %for.body21
  %5 = load i32* %nimprove, align 4, !dbg !116, !tbaa !104
  %inc28 = add nsw i32 %5, 1, !dbg !116
  store i32 %inc28, i32* %nimprove, align 4, !dbg !116, !tbaa !104
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !88), !dbg !128
  br i1 %cmp7119, label %for.body31, label %for.inc42, !dbg !128

for.body31:                                       ; preds = %if.then27, %for.body31
  %indvars.iv121 = phi i64 [ %indvars.iv.next122, %for.body31 ], [ 0, %if.then27 ]
  %arrayidx33 = getelementptr inbounds i32* %domids, i64 %indvars.iv121, !dbg !130
  %6 = load i32* %arrayidx33, align 4, !dbg !130, !tbaa !104
  %idxprom34 = sext i32 %6 to i64, !dbg !130
  %arrayidx35 = getelementptr inbounds i32* %1, i64 %idxprom34, !dbg !130
  %7 = load i32* %arrayidx35, align 4, !dbg !130, !tbaa !104
  %arrayidx37 = getelementptr inbounds i32* %tcolors, i64 %indvars.iv121, !dbg !130
  store i32 %7, i32* %arrayidx37, align 4, !dbg !130, !tbaa !104
  %indvars.iv.next122 = add i64 %indvars.iv121, 1, !dbg !128
  %lftr.wideiv123 = trunc i64 %indvars.iv.next122 to i32, !dbg !128
  %exitcond124 = icmp eq i32 %lftr.wideiv123, %mdom, !dbg !128
  br i1 %exitcond124, label %for.inc42, label %for.body31, !dbg !128

for.inc42:                                        ; preds = %if.then27, %for.body31, %for.body21
  %bestcost.1 = phi float [ %bestcost.0114, %for.body21 ], [ %call25, %for.body31 ], [ %call25, %if.then27 ]
  %inc43 = add nsw i32 %iflip.0113, 1, !dbg !114
  tail call void @llvm.dbg.value(metadata !{i32 %inc43}, i64 0, metadata !86), !dbg !114
  %exitcond125 = icmp eq i32 %inc43, %mul, !dbg !114
  br i1 %exitcond125, label %for.cond45.preheader, label %for.body21, !dbg !114

for.body47:                                       ; preds = %for.cond45.preheader, %for.inc57
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc57 ], [ 0, %for.cond45.preheader ]
  %arrayidx49 = getelementptr inbounds i32* %domids, i64 %indvars.iv, !dbg !132
  %8 = load i32* %arrayidx49, align 4, !dbg !132, !tbaa !104
  tail call void @llvm.dbg.value(metadata !{i32 %8}, i64 0, metadata !84), !dbg !132
  %idxprom50 = sext i32 %8 to i64, !dbg !134
  %arrayidx51 = getelementptr inbounds i32* %1, i64 %idxprom50, !dbg !134
  %9 = load i32* %arrayidx51, align 4, !dbg !134, !tbaa !104
  %arrayidx53 = getelementptr inbounds i32* %tcolors, i64 %indvars.iv, !dbg !134
  %10 = load i32* %arrayidx53, align 4, !dbg !134, !tbaa !104
  %cmp54 = icmp eq i32 %9, %10, !dbg !134
  br i1 %cmp54, label %for.inc57, label %if.then55, !dbg !134

if.then55:                                        ; preds = %for.body47
  tail call void @BKL_flipDomain(%struct._BKL* %bkl, i32 %8) #5, !dbg !135
  br label %for.inc57, !dbg !137

for.inc57:                                        ; preds = %for.body47, %if.then55
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !121
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !121
  %exitcond = icmp eq i32 %lftr.wideiv, %mdom, !dbg !121
  br i1 %exitcond, label %for.end59, label %for.body47, !dbg !121

for.end59:                                        ; preds = %for.end, %for.end.thread, %for.inc57, %for.cond45.preheader
  %bestcost.0.lcssa134 = phi float [ %bestcost.0.lcssa, %for.inc57 ], [ %bestcost.0.lcssa, %for.cond45.preheader ], [ %call12131, %for.end.thread ], [ %call12, %for.end ]
  ret float %bestcost.0.lcssa134, !dbg !138
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare float @BKL_evalfcn(%struct._BKL*) #3

; Function Attrs: optsize
declare i32 @BKL_greyCodeDomain(%struct._BKL*, i32) #3

; Function Attrs: optsize
declare void @BKL_flipDomain(%struct._BKL*, i32) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_exhSearch.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_exhSearch.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"BKL_exhSearch", metadata !"BKL_exhSearch", metadata !"", i32 25, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (%struct._BKL*, i32, i32*, i32*)* @BKL_exhSearch, null, null, metadata !77, i32 30} ; [ DW_TAG_subprogram ] [line 25] [def] [scope 30] [BKL_exhSearch]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_exhSearch.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9, metadata !21, metadata !46, metadata !46}
!8 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from BKL]
!10 = metadata !{i32 786454, metadata !1, null, metadata !"BKL", i32 45, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [BKL] [line 45, size 0, align 0, offset 0] [from _BKL]
!11 = metadata !{i32 786451, metadata !12, null, metadata !"_BKL", i32 46, i64 704, i64 64, i32 0, i32 0, null, metadata !13, i32 0, null, null} ; [ DW_TAG_structure_type ] [_BKL] [line 46, size 704, align 64, offset 0] [from ]
!12 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/../BKL.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!13 = metadata !{metadata !14, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !75, metadata !76}
!14 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"bpg", i32 47, i64 64, i64 64, i64 0, i32 0, metadata !15} ; [ DW_TAG_member ] [bpg] [line 47, size 64, align 64, offset 0] [from ]
!15 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from BPG]
!16 = metadata !{i32 786454, metadata !12, null, metadata !"BPG", i32 21, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_typedef ] [BPG] [line 21, size 0, align 0, offset 0] [from _BPG]
!17 = metadata !{i32 786451, metadata !18, null, metadata !"_BPG", i32 22, i64 128, i64 64, i32 0, i32 0, null, metadata !19, i32 0, null, null} ; [ DW_TAG_structure_type ] [_BPG] [line 22, size 128, align 64, offset 0] [from ]
!18 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/../../BPG/BPG.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!19 = metadata !{metadata !20, metadata !22, metadata !23}
!20 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"nX", i32 23, i64 32, i64 32, i64 0, i32 0, metadata !21} ; [ DW_TAG_member ] [nX] [line 23, size 32, align 32, offset 0] [from int]
!21 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!22 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"nY", i32 24, i64 32, i64 32, i64 32, i32 0, metadata !21} ; [ DW_TAG_member ] [nY] [line 24, size 32, align 32, offset 32] [from int]
!23 = metadata !{i32 786445, metadata !18, metadata !17, metadata !"graph", i32 25, i64 64, i64 64, i64 64, i32 0, metadata !24} ; [ DW_TAG_member ] [graph] [line 25, size 64, align 64, offset 64] [from ]
!24 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Graph]
!25 = metadata !{i32 786454, metadata !18, null, metadata !"Graph", i32 49, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_typedef ] [Graph] [line 49, size 0, align 0, offset 0] [from _Graph]
!26 = metadata !{i32 786451, metadata !27, null, metadata !"_Graph", i32 50, i64 384, i64 64, i32 0, i32 0, null, metadata !28, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Graph] [line 50, size 384, align 64, offset 0] [from ]
!27 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/../../Graph/Graph.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!28 = metadata !{metadata !29, metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !59, metadata !60}
!29 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"type", i32 51, i64 32, i64 32, i64 0, i32 0, metadata !21} ; [ DW_TAG_member ] [type] [line 51, size 32, align 32, offset 0] [from int]
!30 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"nvtx", i32 52, i64 32, i64 32, i64 32, i32 0, metadata !21} ; [ DW_TAG_member ] [nvtx] [line 52, size 32, align 32, offset 32] [from int]
!31 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"nvbnd", i32 53, i64 32, i64 32, i64 64, i32 0, metadata !21} ; [ DW_TAG_member ] [nvbnd] [line 53, size 32, align 32, offset 64] [from int]
!32 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"nedges", i32 54, i64 32, i64 32, i64 96, i32 0, metadata !21} ; [ DW_TAG_member ] [nedges] [line 54, size 32, align 32, offset 96] [from int]
!33 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"totvwght", i32 55, i64 32, i64 32, i64 128, i32 0, metadata !21} ; [ DW_TAG_member ] [totvwght] [line 55, size 32, align 32, offset 128] [from int]
!34 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"totewght", i32 56, i64 32, i64 32, i64 160, i32 0, metadata !21} ; [ DW_TAG_member ] [totewght] [line 56, size 32, align 32, offset 160] [from int]
!35 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"adjIVL", i32 57, i64 64, i64 64, i64 192, i32 0, metadata !36} ; [ DW_TAG_member ] [adjIVL] [line 57, size 64, align 64, offset 192] [from ]
!36 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !37} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from IVL]
!37 = metadata !{i32 786454, metadata !27, null, metadata !"IVL", i32 55, i64 0, i64 0, i64 0, i32 0, metadata !38} ; [ DW_TAG_typedef ] [IVL] [line 55, size 0, align 0, offset 0] [from _IVL]
!38 = metadata !{i32 786451, metadata !39, null, metadata !"_IVL", i32 79, i64 384, i64 64, i32 0, i32 0, null, metadata !40, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IVL] [line 79, size 384, align 64, offset 0] [from ]
!39 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/../../IVL/IVL.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!40 = metadata !{metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !47, metadata !49, metadata !50}
!41 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"type", i32 80, i64 32, i64 32, i64 0, i32 0, metadata !21} ; [ DW_TAG_member ] [type] [line 80, size 32, align 32, offset 0] [from int]
!42 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"maxnlist", i32 81, i64 32, i64 32, i64 32, i32 0, metadata !21} ; [ DW_TAG_member ] [maxnlist] [line 81, size 32, align 32, offset 32] [from int]
!43 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"nlist", i32 82, i64 32, i64 32, i64 64, i32 0, metadata !21} ; [ DW_TAG_member ] [nlist] [line 82, size 32, align 32, offset 64] [from int]
!44 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"tsize", i32 83, i64 32, i64 32, i64 96, i32 0, metadata !21} ; [ DW_TAG_member ] [tsize] [line 83, size 32, align 32, offset 96] [from int]
!45 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"sizes", i32 84, i64 64, i64 64, i64 128, i32 0, metadata !46} ; [ DW_TAG_member ] [sizes] [line 84, size 64, align 64, offset 128] [from ]
!46 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !21} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!47 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"p_vec", i32 85, i64 64, i64 64, i64 192, i32 0, metadata !48} ; [ DW_TAG_member ] [p_vec] [line 85, size 64, align 64, offset 192] [from ]
!48 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !46} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!49 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"incr", i32 86, i64 32, i64 32, i64 256, i32 0, metadata !21} ; [ DW_TAG_member ] [incr] [line 86, size 32, align 32, offset 256] [from int]
!50 = metadata !{i32 786445, metadata !39, metadata !38, metadata !"chunk", i32 87, i64 64, i64 64, i64 320, i32 0, metadata !51} ; [ DW_TAG_member ] [chunk] [line 87, size 64, align 64, offset 320] [from ]
!51 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !52} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from Ichunk]
!52 = metadata !{i32 786454, metadata !39, null, metadata !"Ichunk", i32 56, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_typedef ] [Ichunk] [line 56, size 0, align 0, offset 0] [from _Ichunk]
!53 = metadata !{i32 786451, metadata !39, null, metadata !"_Ichunk", i32 102, i64 192, i64 64, i32 0, i32 0, null, metadata !54, i32 0, null, null} ; [ DW_TAG_structure_type ] [_Ichunk] [line 102, size 192, align 64, offset 0] [from ]
!54 = metadata !{metadata !55, metadata !56, metadata !57, metadata !58}
!55 = metadata !{i32 786445, metadata !39, metadata !53, metadata !"size", i32 103, i64 32, i64 32, i64 0, i32 0, metadata !21} ; [ DW_TAG_member ] [size] [line 103, size 32, align 32, offset 0] [from int]
!56 = metadata !{i32 786445, metadata !39, metadata !53, metadata !"inuse", i32 104, i64 32, i64 32, i64 32, i32 0, metadata !21} ; [ DW_TAG_member ] [inuse] [line 104, size 32, align 32, offset 32] [from int]
!57 = metadata !{i32 786445, metadata !39, metadata !53, metadata !"base", i32 105, i64 64, i64 64, i64 64, i32 0, metadata !46} ; [ DW_TAG_member ] [base] [line 105, size 64, align 64, offset 64] [from ]
!58 = metadata !{i32 786445, metadata !39, metadata !53, metadata !"next", i32 106, i64 64, i64 64, i64 128, i32 0, metadata !51} ; [ DW_TAG_member ] [next] [line 106, size 64, align 64, offset 128] [from ]
!59 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"vwghts", i32 58, i64 64, i64 64, i64 256, i32 0, metadata !46} ; [ DW_TAG_member ] [vwghts] [line 58, size 64, align 64, offset 256] [from ]
!60 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"ewghtIVL", i32 59, i64 64, i64 64, i64 320, i32 0, metadata !36} ; [ DW_TAG_member ] [ewghtIVL] [line 59, size 64, align 64, offset 320] [from ]
!61 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"ndom", i32 48, i64 32, i64 32, i64 64, i32 0, metadata !21} ; [ DW_TAG_member ] [ndom] [line 48, size 32, align 32, offset 64] [from int]
!62 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nseg", i32 49, i64 32, i64 32, i64 96, i32 0, metadata !21} ; [ DW_TAG_member ] [nseg] [line 49, size 32, align 32, offset 96] [from int]
!63 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nreg", i32 50, i64 32, i64 32, i64 128, i32 0, metadata !21} ; [ DW_TAG_member ] [nreg] [line 50, size 32, align 32, offset 128] [from int]
!64 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"totweight", i32 51, i64 32, i64 32, i64 160, i32 0, metadata !21} ; [ DW_TAG_member ] [totweight] [line 51, size 32, align 32, offset 160] [from int]
!65 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"npass", i32 52, i64 32, i64 32, i64 192, i32 0, metadata !21} ; [ DW_TAG_member ] [npass] [line 52, size 32, align 32, offset 192] [from int]
!66 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"npatch", i32 53, i64 32, i64 32, i64 224, i32 0, metadata !21} ; [ DW_TAG_member ] [npatch] [line 53, size 32, align 32, offset 224] [from int]
!67 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nflips", i32 54, i64 32, i64 32, i64 256, i32 0, metadata !21} ; [ DW_TAG_member ] [nflips] [line 54, size 32, align 32, offset 256] [from int]
!68 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nimprove", i32 55, i64 32, i64 32, i64 288, i32 0, metadata !21} ; [ DW_TAG_member ] [nimprove] [line 55, size 32, align 32, offset 288] [from int]
!69 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"ngaineval", i32 56, i64 32, i64 32, i64 320, i32 0, metadata !21} ; [ DW_TAG_member ] [ngaineval] [line 56, size 32, align 32, offset 320] [from int]
!70 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"colors", i32 57, i64 64, i64 64, i64 384, i32 0, metadata !46} ; [ DW_TAG_member ] [colors] [line 57, size 64, align 64, offset 384] [from ]
!71 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"cweights", i32 58, i64 96, i64 32, i64 448, i32 0, metadata !72} ; [ DW_TAG_member ] [cweights] [line 58, size 96, align 32, offset 448] [from ]
!72 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !21, metadata !73, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from int]
!73 = metadata !{metadata !74}
!74 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ] [0, 2]
!75 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"regwghts", i32 59, i64 64, i64 64, i64 576, i32 0, metadata !46} ; [ DW_TAG_member ] [regwghts] [line 59, size 64, align 64, offset 576] [from ]
!76 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"alpha", i32 60, i64 32, i64 32, i64 640, i32 0, metadata !8} ; [ DW_TAG_member ] [alpha] [line 60, size 32, align 32, offset 640] [from float]
!77 = metadata !{metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !90}
!78 = metadata !{i32 786689, metadata !4, metadata !"bkl", metadata !5, i32 16777242, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [bkl] [line 26]
!79 = metadata !{i32 786689, metadata !4, metadata !"mdom", metadata !5, i32 33554459, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mdom] [line 27]
!80 = metadata !{i32 786689, metadata !4, metadata !"domids", metadata !5, i32 50331676, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [domids] [line 28]
!81 = metadata !{i32 786689, metadata !4, metadata !"tcolors", metadata !5, i32 67108893, metadata !46, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [tcolors] [line 29]
!82 = metadata !{i32 786688, metadata !4, metadata !"bestcost", metadata !5, i32 31, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [bestcost] [line 31]
!83 = metadata !{i32 786688, metadata !4, metadata !"newcost", metadata !5, i32 31, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newcost] [line 31]
!84 = metadata !{i32 786688, metadata !4, metadata !"idom", metadata !5, i32 32, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idom] [line 32]
!85 = metadata !{i32 786688, metadata !4, metadata !"ierr", metadata !5, i32 32, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ierr] [line 32]
!86 = metadata !{i32 786688, metadata !4, metadata !"iflip", metadata !5, i32 32, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iflip] [line 32]
!87 = metadata !{i32 786688, metadata !4, metadata !"iloc", metadata !5, i32 32, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iloc] [line 32]
!88 = metadata !{i32 786688, metadata !4, metadata !"jloc", metadata !5, i32 32, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jloc] [line 32]
!89 = metadata !{i32 786688, metadata !4, metadata !"nflip", metadata !5, i32 32, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nflip] [line 32]
!90 = metadata !{i32 786688, metadata !4, metadata !"colors", metadata !5, i32 33, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colors] [line 33]
!91 = metadata !{i32 26, i32 0, metadata !4, null}
!92 = metadata !{i32 27, i32 0, metadata !4, null}
!93 = metadata !{i32 28, i32 0, metadata !4, null}
!94 = metadata !{i32 29, i32 0, metadata !4, null}
!95 = metadata !{i32 39, i32 0, metadata !4, null}
!96 = metadata !{i32 40, i32 0, metadata !97, null}
!97 = metadata !{i32 786443, metadata !1, metadata !4, i32 39, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_exhSearch.c]
!98 = metadata !{metadata !"any pointer", metadata !99}
!99 = metadata !{metadata !"omnipotent char", metadata !100}
!100 = metadata !{metadata !"Simple C/C++ TBAA"}
!101 = metadata !{i32 42, i32 0, metadata !97, null}
!102 = metadata !{i32 44, i32 0, metadata !4, null}
!103 = metadata !{i32 45, i32 0, metadata !4, null}
!104 = metadata !{metadata !"int", metadata !99}
!105 = metadata !{i32 57, i32 0, metadata !106, null}
!106 = metadata !{i32 786443, metadata !1, metadata !4, i32 57, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_exhSearch.c]
!107 = metadata !{i32 66, i32 0, metadata !4, null}
!108 = metadata !{i32 87, i32 0, metadata !109, null}
!109 = metadata !{i32 786443, metadata !1, metadata !4, i32 87, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_exhSearch.c]
!110 = metadata !{i32 1}
!111 = metadata !{i32 58, i32 0, metadata !112, null} ; [ DW_TAG_imported_module ]
!112 = metadata !{i32 786443, metadata !1, metadata !106, i32 57, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_exhSearch.c]
!113 = metadata !{i32 59, i32 0, metadata !112, null}
!114 = metadata !{i32 95, i32 0, metadata !115, null}
!115 = metadata !{i32 786443, metadata !1, metadata !4, i32 95, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_exhSearch.c]
!116 = metadata !{i32 127, i32 0, metadata !117, null}
!117 = metadata !{i32 786443, metadata !1, metadata !118, i32 122, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_exhSearch.c]
!118 = metadata !{i32 786443, metadata !1, metadata !115, i32 95, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_exhSearch.c]
!119 = metadata !{i32 88, i32 0, metadata !120, null}
!120 = metadata !{i32 786443, metadata !1, metadata !109, i32 87, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_exhSearch.c]
!121 = metadata !{i32 139, i32 0, metadata !122, null}
!122 = metadata !{i32 786443, metadata !1, metadata !4, i32 139, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_exhSearch.c]
!123 = metadata !{i32 96, i32 0, metadata !118, null}
!124 = metadata !{i32 97, i32 0, metadata !118, null}
!125 = metadata !{i32 107, i32 0, metadata !118, null}
!126 = metadata !{i32 115, i32 0, metadata !118, null}
!127 = metadata !{i32 122, i32 0, metadata !118, null}
!128 = metadata !{i32 128, i32 0, metadata !129, null}
!129 = metadata !{i32 786443, metadata !1, metadata !117, i32 128, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_exhSearch.c]
!130 = metadata !{i32 129, i32 0, metadata !131, null}
!131 = metadata !{i32 786443, metadata !1, metadata !129, i32 128, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_exhSearch.c]
!132 = metadata !{i32 140, i32 0, metadata !133, null}
!133 = metadata !{i32 786443, metadata !1, metadata !122, i32 139, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_exhSearch.c]
!134 = metadata !{i32 141, i32 0, metadata !133, null}
!135 = metadata !{i32 142, i32 0, metadata !136, null}
!136 = metadata !{i32 786443, metadata !1, metadata !133, i32 141, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/BKL/src/BKL_exhSearch.c]
!137 = metadata !{i32 143, i32 0, metadata !136, null}
!138 = metadata !{i32 146, i32 0, metadata !4, null}
