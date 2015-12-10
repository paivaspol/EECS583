; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_permute.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._InpMtx = type { i32, i32, i32, i32, i32, double, %struct._IV, %struct._IV, %struct._DV, i32, i32, %struct._IV, %struct._IV, %struct._IV }
%struct._IV = type { i32, i32, i32, i32* }
%struct._DV = type { i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [54 x i8] c"\0A fatal error in InpMtx_permute(%p,%p,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [78 x i8] c"\0A fatal error in InpMtx_permute(%p,%p,%p)\0A coordType = %d, must be 1, 2 or 3\0A\00", align 1
@.str2 = private unnamed_addr constant [77 x i8] c"\0A fatal error in InpMtx_permute(%p,%p,%p)\0A nent = %d, ivec1 = %p, ivec2 = %p\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_permute(%struct._InpMtx* %inpmtx, i32* %rowOldToNew, i32* %colOldToNew) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !48), !dbg !60
  tail call void @llvm.dbg.value(metadata !{i32* %rowOldToNew}, i64 0, metadata !49), !dbg !61
  tail call void @llvm.dbg.value(metadata !{i32* %colOldToNew}, i64 0, metadata !50), !dbg !62
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !63
  br i1 %cmp, label %if.then, label %if.end, !dbg !63

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !64, !tbaa !66
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([54 x i8]* @.str, i64 0, i64 0), %struct._InpMtx* null, i32* %rowOldToNew, i32* %colOldToNew) #5, !dbg !64
  tail call void @exit(i32 -1) #6, !dbg !69
  unreachable, !dbg !69

if.end:                                           ; preds = %entry
  %coordType = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 0, !dbg !70
  %1 = load i32* %coordType, align 4, !dbg !70, !tbaa !71
  %.off = add i32 %1, -1, !dbg !70
  %2 = icmp ugt i32 %.off, 2, !dbg !70
  br i1 %2, label %if.then4, label %if.end7, !dbg !70

if.then4:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !72, !tbaa !66
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([78 x i8]* @.str1, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32* %rowOldToNew, i32* %colOldToNew, i32 %1) #5, !dbg !72
  tail call void @exit(i32 -1) #6, !dbg !74
  unreachable, !dbg !74

if.end7:                                          ; preds = %if.end
  %cmp8 = icmp eq i32* %rowOldToNew, null, !dbg !75
  %cmp9 = icmp eq i32* %colOldToNew, null, !dbg !75
  %or.cond209 = and i1 %cmp8, %cmp9, !dbg !75
  br i1 %or.cond209, label %return, label %if.end11, !dbg !75

if.end11:                                         ; preds = %if.end7
  %nent12 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 4, !dbg !76
  %4 = load i32* %nent12, align 4, !dbg !76, !tbaa !71
  tail call void @llvm.dbg.value(metadata !{i32 %4}, i64 0, metadata !53), !dbg !76
  %cmp13 = icmp eq i32 %4, 0, !dbg !76
  br i1 %cmp13, label %return, label %if.end15, !dbg !76

if.end15:                                         ; preds = %if.end11
  %call16 = tail call i32* @InpMtx_ivec1(%struct._InpMtx* %inpmtx) #5, !dbg !77
  tail call void @llvm.dbg.value(metadata !{i32* %call16}, i64 0, metadata !55), !dbg !77
  %call17 = tail call i32* @InpMtx_ivec2(%struct._InpMtx* %inpmtx) #5, !dbg !78
  tail call void @llvm.dbg.value(metadata !{i32* %call17}, i64 0, metadata !56), !dbg !78
  %cmp18 = icmp eq i32* %call16, null, !dbg !79
  %cmp20 = icmp eq i32* %call17, null, !dbg !79
  %or.cond210 = or i1 %cmp18, %cmp20, !dbg !79
  br i1 %or.cond210, label %if.then21, label %if.end23, !dbg !79

if.then21:                                        ; preds = %if.end15
  %5 = load %struct._IO_FILE** @stderr, align 8, !dbg !80, !tbaa !66
  %call22 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([77 x i8]* @.str2, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32* %rowOldToNew, i32* %colOldToNew, i32 %4, i32* %call16, i32* %call17) #5, !dbg !80
  tail call void @exit(i32 -1) #6, !dbg !82
  unreachable, !dbg !82

if.end23:                                         ; preds = %if.end15
  %6 = load i32* %coordType, align 4, !dbg !83, !tbaa !71
  switch i32 %6, label %if.end119 [
    i32 1, label %for.cond.preheader
    i32 2, label %for.cond51.preheader
    i32 3, label %for.cond83.preheader
  ], !dbg !83

for.cond83.preheader:                             ; preds = %if.end23
  %cmp84223 = icmp sgt i32 %4, 0, !dbg !84
  br i1 %cmp84223, label %for.body85, label %if.end119, !dbg !84

for.cond51.preheader:                             ; preds = %if.end23
  %cmp52220 = icmp sgt i32 %4, 0, !dbg !86
  br i1 %cmp52220, label %for.body53, label %if.end119, !dbg !86

for.cond.preheader:                               ; preds = %if.end23
  %cmp27217 = icmp sgt i32 %4, 0, !dbg !89
  br i1 %cmp27217, label %for.body, label %if.end119, !dbg !89

for.body:                                         ; preds = %for.cond.preheader, %if.end43
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end43 ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds i32* %call16, i64 %indvars.iv, !dbg !92
  %7 = load i32* %arrayidx, align 4, !dbg !92, !tbaa !71
  tail call void @llvm.dbg.value(metadata !{i32 %7}, i64 0, metadata !54), !dbg !92
  %arrayidx29 = getelementptr inbounds i32* %call17, i64 %indvars.iv, !dbg !92
  %8 = load i32* %arrayidx29, align 4, !dbg !92, !tbaa !71
  tail call void @llvm.dbg.value(metadata !{i32 %8}, i64 0, metadata !51), !dbg !92
  %cmp30 = icmp slt i32 %7, 0, !dbg !94
  %or.cond211 = or i1 %cmp30, %cmp8, !dbg !94
  br i1 %or.cond211, label %if.end36, label %if.then33, !dbg !94

if.then33:                                        ; preds = %for.body
  %idxprom34 = sext i32 %7 to i64, !dbg !95
  %arrayidx35 = getelementptr inbounds i32* %rowOldToNew, i64 %idxprom34, !dbg !95
  %9 = load i32* %arrayidx35, align 4, !dbg !95, !tbaa !71
  tail call void @llvm.dbg.value(metadata !{i32 %9}, i64 0, metadata !54), !dbg !95
  br label %if.end36, !dbg !97

if.end36:                                         ; preds = %for.body, %if.then33
  %row.0 = phi i32 [ %9, %if.then33 ], [ %7, %for.body ]
  %cmp37 = icmp slt i32 %8, 0, !dbg !98
  %or.cond212 = or i1 %cmp37, %cmp9, !dbg !98
  br i1 %or.cond212, label %if.end43, label %if.then40, !dbg !98

if.then40:                                        ; preds = %if.end36
  %idxprom41 = sext i32 %8 to i64, !dbg !99
  %arrayidx42 = getelementptr inbounds i32* %colOldToNew, i64 %idxprom41, !dbg !99
  %10 = load i32* %arrayidx42, align 4, !dbg !99, !tbaa !71
  tail call void @llvm.dbg.value(metadata !{i32 %10}, i64 0, metadata !51), !dbg !99
  br label %if.end43, !dbg !101

if.end43:                                         ; preds = %if.end36, %if.then40
  %col.0 = phi i32 [ %10, %if.then40 ], [ %8, %if.end36 ]
  store i32 %row.0, i32* %arrayidx, align 4, !dbg !102, !tbaa !71
  store i32 %col.0, i32* %arrayidx29, align 4, !dbg !102, !tbaa !71
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !89
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !89
  %exitcond = icmp eq i32 %lftr.wideiv, %4, !dbg !89
  br i1 %exitcond, label %if.end119, label %for.body, !dbg !89

for.body53:                                       ; preds = %for.cond51.preheader, %if.end71
  %indvars.iv225 = phi i64 [ %indvars.iv.next226, %if.end71 ], [ 0, %for.cond51.preheader ]
  %arrayidx55 = getelementptr inbounds i32* %call16, i64 %indvars.iv225, !dbg !103
  %11 = load i32* %arrayidx55, align 4, !dbg !103, !tbaa !71
  tail call void @llvm.dbg.value(metadata !{i32 %11}, i64 0, metadata !51), !dbg !103
  %arrayidx57 = getelementptr inbounds i32* %call17, i64 %indvars.iv225, !dbg !103
  %12 = load i32* %arrayidx57, align 4, !dbg !103, !tbaa !71
  tail call void @llvm.dbg.value(metadata !{i32 %12}, i64 0, metadata !54), !dbg !103
  %cmp58 = icmp slt i32 %12, 0, !dbg !105
  %or.cond213 = or i1 %cmp58, %cmp8, !dbg !105
  br i1 %or.cond213, label %if.end64, label %if.then61, !dbg !105

if.then61:                                        ; preds = %for.body53
  %idxprom62 = sext i32 %12 to i64, !dbg !106
  %arrayidx63 = getelementptr inbounds i32* %rowOldToNew, i64 %idxprom62, !dbg !106
  %13 = load i32* %arrayidx63, align 4, !dbg !106, !tbaa !71
  tail call void @llvm.dbg.value(metadata !{i32 %13}, i64 0, metadata !54), !dbg !106
  br label %if.end64, !dbg !108

if.end64:                                         ; preds = %for.body53, %if.then61
  %row.1 = phi i32 [ %13, %if.then61 ], [ %12, %for.body53 ]
  %cmp65 = icmp slt i32 %11, 0, !dbg !109
  %or.cond214 = or i1 %cmp65, %cmp9, !dbg !109
  br i1 %or.cond214, label %if.end71, label %if.then68, !dbg !109

if.then68:                                        ; preds = %if.end64
  %idxprom69 = sext i32 %11 to i64, !dbg !110
  %arrayidx70 = getelementptr inbounds i32* %colOldToNew, i64 %idxprom69, !dbg !110
  %14 = load i32* %arrayidx70, align 4, !dbg !110, !tbaa !71
  tail call void @llvm.dbg.value(metadata !{i32 %14}, i64 0, metadata !51), !dbg !110
  br label %if.end71, !dbg !112

if.end71:                                         ; preds = %if.end64, %if.then68
  %col.1 = phi i32 [ %14, %if.then68 ], [ %11, %if.end64 ]
  store i32 %col.1, i32* %arrayidx55, align 4, !dbg !113, !tbaa !71
  store i32 %row.1, i32* %arrayidx57, align 4, !dbg !113, !tbaa !71
  %indvars.iv.next226 = add i64 %indvars.iv225, 1, !dbg !86
  %lftr.wideiv227 = trunc i64 %indvars.iv.next226 to i32, !dbg !86
  %exitcond228 = icmp eq i32 %lftr.wideiv227, %4, !dbg !86
  br i1 %exitcond228, label %if.end119, label %for.body53, !dbg !86

for.body85:                                       ; preds = %for.cond83.preheader, %if.end107
  %indvars.iv229 = phi i64 [ %indvars.iv.next230, %if.end107 ], [ 0, %for.cond83.preheader ]
  %arrayidx87 = getelementptr inbounds i32* %call16, i64 %indvars.iv229, !dbg !114
  %15 = load i32* %arrayidx87, align 4, !dbg !114, !tbaa !71
  tail call void @llvm.dbg.value(metadata !{i32 %15}, i64 0, metadata !57), !dbg !114
  %arrayidx89 = getelementptr inbounds i32* %call17, i64 %indvars.iv229, !dbg !114
  %16 = load i32* %arrayidx89, align 4, !dbg !114, !tbaa !71
  tail call void @llvm.dbg.value(metadata !{i32 %16}, i64 0, metadata !59), !dbg !114
  %cmp90 = icmp sgt i32 %16, -1, !dbg !116
  tail call void @llvm.dbg.value(metadata !{i32 %15}, i64 0, metadata !54), !dbg !117
  tail call void @llvm.dbg.value(metadata !{i32 %15}, i64 0, metadata !51), !dbg !119
  %sub = select i1 %cmp90, i32 0, i32 %16, !dbg !116
  %row.2 = sub nsw i32 %15, %sub, !dbg !116
  %add = select i1 %cmp90, i32 %16, i32 0, !dbg !116
  %col.2 = add nsw i32 %add, %15, !dbg !116
  %cmp94 = icmp slt i32 %row.2, 0, !dbg !121
  %or.cond215 = or i1 %cmp94, %cmp8, !dbg !121
  br i1 %or.cond215, label %if.end100, label %if.then97, !dbg !121

if.then97:                                        ; preds = %for.body85
  %idxprom98 = sext i32 %row.2 to i64, !dbg !122
  %arrayidx99 = getelementptr inbounds i32* %rowOldToNew, i64 %idxprom98, !dbg !122
  %17 = load i32* %arrayidx99, align 4, !dbg !122, !tbaa !71
  tail call void @llvm.dbg.value(metadata !{i32 %17}, i64 0, metadata !54), !dbg !122
  br label %if.end100, !dbg !124

if.end100:                                        ; preds = %for.body85, %if.then97
  %row.3 = phi i32 [ %17, %if.then97 ], [ %row.2, %for.body85 ]
  %cmp101 = icmp slt i32 %col.2, 0, !dbg !125
  %or.cond216 = or i1 %cmp101, %cmp9, !dbg !125
  br i1 %or.cond216, label %if.end107, label %if.then104, !dbg !125

if.then104:                                       ; preds = %if.end100
  %idxprom105 = sext i32 %col.2 to i64, !dbg !126
  %arrayidx106 = getelementptr inbounds i32* %colOldToNew, i64 %idxprom105, !dbg !126
  %18 = load i32* %arrayidx106, align 4, !dbg !126, !tbaa !71
  tail call void @llvm.dbg.value(metadata !{i32 %18}, i64 0, metadata !51), !dbg !126
  br label %if.end107, !dbg !128

if.end107:                                        ; preds = %if.end100, %if.then104
  %col.3 = phi i32 [ %18, %if.then104 ], [ %col.2, %if.end100 ]
  %cmp108 = icmp sle i32 %col.3, %row.3, !dbg !129
  %cond = select i1 %cmp108, i32 %col.3, i32 %row.3, !dbg !129
  store i32 %cond, i32* %arrayidx87, align 4, !dbg !129, !tbaa !71
  %sub111 = sub nsw i32 %col.3, %row.3, !dbg !130
  store i32 %sub111, i32* %arrayidx89, align 4, !dbg !130, !tbaa !71
  %indvars.iv.next230 = add i64 %indvars.iv229, 1, !dbg !84
  %lftr.wideiv231 = trunc i64 %indvars.iv.next230 to i32, !dbg !84
  %exitcond232 = icmp eq i32 %lftr.wideiv231, %4, !dbg !84
  br i1 %exitcond232, label %if.end119, label %for.body85, !dbg !84

if.end119:                                        ; preds = %for.cond83.preheader, %if.end107, %for.cond51.preheader, %if.end71, %for.cond.preheader, %if.end43, %if.end23
  %storageMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1, !dbg !131
  store i32 1, i32* %storageMode, align 4, !dbg !131, !tbaa !71
  br label %return, !dbg !132

return:                                           ; preds = %if.end7, %if.end11, %if.end119
  ret void, !dbg !132
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare i32* @InpMtx_ivec1(%struct._InpMtx*) #3

; Function Attrs: optsize
declare i32* @InpMtx_ivec2(%struct._InpMtx*) #3

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

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_permute.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_permute.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_permute", metadata !"InpMtx_permute", metadata !"", i32 14, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._InpMtx*, i32*, i32*)* @InpMtx_permute, null, null, metadata !47, i32 18} ; [ DW_TAG_subprogram ] [line 14] [def] [scope 18] [InpMtx_permute]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_permute.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null, metadata !8, metadata !30, metadata !30}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from InpMtx]
!9 = metadata !{i32 786454, metadata !1, null, metadata !"InpMtx", i32 51, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ] [InpMtx] [line 51, size 0, align 0, offset 0] [from _InpMtx]
!10 = metadata !{i32 786451, metadata !11, null, metadata !"_InpMtx", i32 52, i64 1472, i64 64, i32 0, i32 0, null, metadata !12, i32 0, null, null} ; [ DW_TAG_structure_type ] [_InpMtx] [line 52, size 1472, align 64, offset 0] [from ]
!11 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/../InpMtx.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!12 = metadata !{metadata !13, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !21, metadata !31, metadata !32, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46}
!13 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"coordType", i32 53, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [coordType] [line 53, size 32, align 32, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"storageMode", i32 54, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [storageMode] [line 54, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"inputMode", i32 55, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [inputMode] [line 55, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"maxnent", i32 56, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [maxnent] [line 56, size 32, align 32, offset 96] [from int]
!18 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nent", i32 57, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [nent] [line 57, size 32, align 32, offset 128] [from int]
!19 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"resizeMultiple", i32 58, i64 64, i64 64, i64 192, i32 0, metadata !20} ; [ DW_TAG_member ] [resizeMultiple] [line 58, size 64, align 64, offset 192] [from double]
!20 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!21 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"ivec1IV", i32 59, i64 192, i64 64, i64 256, i32 0, metadata !22} ; [ DW_TAG_member ] [ivec1IV] [line 59, size 192, align 64, offset 256] [from IV]
!22 = metadata !{i32 786454, metadata !11, null, metadata !"IV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ] [IV] [line 20, size 0, align 0, offset 0] [from _IV]
!23 = metadata !{i32 786451, metadata !24, null, metadata !"_IV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !25, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IV] [line 21, size 192, align 64, offset 0] [from ]
!24 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/../../IV/IV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!25 = metadata !{metadata !26, metadata !27, metadata !28, metadata !29}
!26 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!27 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!28 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!29 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !30} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!30 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!31 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"ivec2IV", i32 60, i64 192, i64 64, i64 448, i32 0, metadata !22} ; [ DW_TAG_member ] [ivec2IV] [line 60, size 192, align 64, offset 448] [from IV]
!32 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"dvecDV", i32 61, i64 192, i64 64, i64 640, i32 0, metadata !33} ; [ DW_TAG_member ] [dvecDV] [line 61, size 192, align 64, offset 640] [from DV]
!33 = metadata !{i32 786454, metadata !11, null, metadata !"DV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !34} ; [ DW_TAG_typedef ] [DV] [line 20, size 0, align 0, offset 0] [from _DV]
!34 = metadata !{i32 786451, metadata !35, null, metadata !"_DV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !36, i32 0, null, null} ; [ DW_TAG_structure_type ] [_DV] [line 21, size 192, align 64, offset 0] [from ]
!35 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/../../DV/DV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!36 = metadata !{metadata !37, metadata !38, metadata !39, metadata !40}
!37 = metadata !{i32 786445, metadata !35, metadata !34, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!38 = metadata !{i32 786445, metadata !35, metadata !34, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !14} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!39 = metadata !{i32 786445, metadata !35, metadata !34, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!40 = metadata !{i32 786445, metadata !35, metadata !34, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !41} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!41 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!42 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"maxnvector", i32 62, i64 32, i64 32, i64 832, i32 0, metadata !14} ; [ DW_TAG_member ] [maxnvector] [line 62, size 32, align 32, offset 832] [from int]
!43 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"nvector", i32 63, i64 32, i64 32, i64 864, i32 0, metadata !14} ; [ DW_TAG_member ] [nvector] [line 63, size 32, align 32, offset 864] [from int]
!44 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"vecidsIV", i32 64, i64 192, i64 64, i64 896, i32 0, metadata !22} ; [ DW_TAG_member ] [vecidsIV] [line 64, size 192, align 64, offset 896] [from IV]
!45 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"sizesIV", i32 65, i64 192, i64 64, i64 1088, i32 0, metadata !22} ; [ DW_TAG_member ] [sizesIV] [line 65, size 192, align 64, offset 1088] [from IV]
!46 = metadata !{i32 786445, metadata !11, metadata !10, metadata !"offsetsIV", i32 66, i64 192, i64 64, i64 1280, i32 0, metadata !22} ; [ DW_TAG_member ] [offsetsIV] [line 66, size 192, align 64, offset 1280] [from IV]
!47 = metadata !{metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !59}
!48 = metadata !{i32 786689, metadata !4, metadata !"inpmtx", metadata !5, i32 16777231, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 15]
!49 = metadata !{i32 786689, metadata !4, metadata !"rowOldToNew", metadata !5, i32 33554448, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [rowOldToNew] [line 16]
!50 = metadata !{i32 786689, metadata !4, metadata !"colOldToNew", metadata !5, i32 50331665, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [colOldToNew] [line 17]
!51 = metadata !{i32 786688, metadata !4, metadata !"col", metadata !5, i32 19, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [col] [line 19]
!52 = metadata !{i32 786688, metadata !4, metadata !"ii", metadata !5, i32 19, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 19]
!53 = metadata !{i32 786688, metadata !4, metadata !"nent", metadata !5, i32 19, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 19]
!54 = metadata !{i32 786688, metadata !4, metadata !"row", metadata !5, i32 19, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [row] [line 19]
!55 = metadata !{i32 786688, metadata !4, metadata !"ivec1", metadata !5, i32 20, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ivec1] [line 20]
!56 = metadata !{i32 786688, metadata !4, metadata !"ivec2", metadata !5, i32 20, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ivec2] [line 20]
!57 = metadata !{i32 786688, metadata !58, metadata !"chv", metadata !5, i32 84, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [chv] [line 84]
!58 = metadata !{i32 786443, metadata !1, metadata !4, i32 83, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_permute.c]
!59 = metadata !{i32 786688, metadata !58, metadata !"off", metadata !5, i32 84, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [off] [line 84]
!60 = metadata !{i32 15, i32 0, metadata !4, null}
!61 = metadata !{i32 16, i32 0, metadata !4, null}
!62 = metadata !{i32 17, i32 0, metadata !4, null}
!63 = metadata !{i32 26, i32 0, metadata !4, null}
!64 = metadata !{i32 27, i32 0, metadata !65, null}
!65 = metadata !{i32 786443, metadata !1, metadata !4, i32 26, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_permute.c]
!66 = metadata !{metadata !"any pointer", metadata !67}
!67 = metadata !{metadata !"omnipotent char", metadata !68}
!68 = metadata !{metadata !"Simple C/C++ TBAA"}
!69 = metadata !{i32 29, i32 0, metadata !65, null}
!70 = metadata !{i32 31, i32 0, metadata !4, null}
!71 = metadata !{metadata !"int", metadata !67}
!72 = metadata !{i32 32, i32 0, metadata !73, null}
!73 = metadata !{i32 786443, metadata !1, metadata !4, i32 31, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_permute.c]
!74 = metadata !{i32 35, i32 0, metadata !73, null}
!75 = metadata !{i32 42, i32 0, metadata !4, null}
!76 = metadata !{i32 45, i32 0, metadata !4, null}
!77 = metadata !{i32 48, i32 0, metadata !4, null}
!78 = metadata !{i32 49, i32 0, metadata !4, null}
!79 = metadata !{i32 50, i32 0, metadata !4, null}
!80 = metadata !{i32 51, i32 0, metadata !81, null}
!81 = metadata !{i32 786443, metadata !1, metadata !4, i32 50, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_permute.c]
!82 = metadata !{i32 54, i32 0, metadata !81, null}
!83 = metadata !{i32 61, i32 0, metadata !4, null}
!84 = metadata !{i32 86, i32 0, metadata !85, null}
!85 = metadata !{i32 786443, metadata !1, metadata !58, i32 86, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_permute.c]
!86 = metadata !{i32 73, i32 0, metadata !87, null}
!87 = metadata !{i32 786443, metadata !1, metadata !88, i32 73, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_permute.c]
!88 = metadata !{i32 786443, metadata !1, metadata !4, i32 72, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_permute.c]
!89 = metadata !{i32 62, i32 0, metadata !90, null}
!90 = metadata !{i32 786443, metadata !1, metadata !91, i32 62, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_permute.c]
!91 = metadata !{i32 786443, metadata !1, metadata !4, i32 61, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_permute.c]
!92 = metadata !{i32 63, i32 0, metadata !93, null}
!93 = metadata !{i32 786443, metadata !1, metadata !90, i32 62, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_permute.c]
!94 = metadata !{i32 64, i32 0, metadata !93, null}
!95 = metadata !{i32 65, i32 0, metadata !96, null}
!96 = metadata !{i32 786443, metadata !1, metadata !93, i32 64, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_permute.c]
!97 = metadata !{i32 66, i32 0, metadata !96, null}
!98 = metadata !{i32 67, i32 0, metadata !93, null}
!99 = metadata !{i32 68, i32 0, metadata !100, null}
!100 = metadata !{i32 786443, metadata !1, metadata !93, i32 67, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_permute.c]
!101 = metadata !{i32 69, i32 0, metadata !100, null}
!102 = metadata !{i32 70, i32 0, metadata !93, null}
!103 = metadata !{i32 74, i32 0, metadata !104, null}
!104 = metadata !{i32 786443, metadata !1, metadata !87, i32 73, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_permute.c]
!105 = metadata !{i32 75, i32 0, metadata !104, null}
!106 = metadata !{i32 76, i32 0, metadata !107, null}
!107 = metadata !{i32 786443, metadata !1, metadata !104, i32 75, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_permute.c]
!108 = metadata !{i32 77, i32 0, metadata !107, null}
!109 = metadata !{i32 78, i32 0, metadata !104, null}
!110 = metadata !{i32 79, i32 0, metadata !111, null}
!111 = metadata !{i32 786443, metadata !1, metadata !104, i32 78, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_permute.c]
!112 = metadata !{i32 80, i32 0, metadata !111, null}
!113 = metadata !{i32 81, i32 0, metadata !104, null}
!114 = metadata !{i32 87, i32 0, metadata !115, null}
!115 = metadata !{i32 786443, metadata !1, metadata !85, i32 86, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_permute.c]
!116 = metadata !{i32 88, i32 0, metadata !115, null}
!117 = metadata !{i32 89, i32 0, metadata !118, null}
!118 = metadata !{i32 786443, metadata !1, metadata !115, i32 88, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_permute.c]
!119 = metadata !{i32 91, i32 0, metadata !120, null}
!120 = metadata !{i32 786443, metadata !1, metadata !115, i32 90, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_permute.c]
!121 = metadata !{i32 93, i32 0, metadata !115, null}
!122 = metadata !{i32 94, i32 0, metadata !123, null}
!123 = metadata !{i32 786443, metadata !1, metadata !115, i32 93, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_permute.c]
!124 = metadata !{i32 95, i32 0, metadata !123, null}
!125 = metadata !{i32 96, i32 0, metadata !115, null}
!126 = metadata !{i32 97, i32 0, metadata !127, null}
!127 = metadata !{i32 786443, metadata !1, metadata !115, i32 96, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_permute.c]
!128 = metadata !{i32 98, i32 0, metadata !127, null}
!129 = metadata !{i32 99, i32 0, metadata !115, null}
!130 = metadata !{i32 100, i32 0, metadata !115, null}
!131 = metadata !{i32 108, i32 0, metadata !4, null}
!132 = metadata !{i32 110, i32 0, metadata !4, null}
