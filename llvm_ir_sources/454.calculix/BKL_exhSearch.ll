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
  %cmp = icmp eq %struct._BKL* %bkl, null
  %cmp1 = icmp slt i32 %mdom, 1
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq i32* %domids, null
  %or.cond106 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq i32* %tcolors, null
  %or.cond107 = or i1 %or.cond106, %cmp5
  br i1 %or.cond107, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([63 x i8]* @.str, i64 0, i64 0), %struct._BKL* %bkl, i32 %mdom, i32* %domids, i32* %tcolors) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %colors6 = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 10
  %1 = load i32** %colors6, align 8, !tbaa !0
  %nflips = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 7
  store i32 0, i32* %nflips, align 4, !tbaa !3
  %cmp7119 = icmp sgt i32 %mdom, 0
  br i1 %cmp7119, label %for.body, label %for.end.thread

for.end.thread:                                   ; preds = %if.end
  %call12131 = tail call float @BKL_evalfcn(%struct._BKL* %bkl) #4
  br label %for.end59

for.body:                                         ; preds = %if.end, %for.body
  %indvars.iv127 = phi i64 [ %indvars.iv.next128, %for.body ], [ 0, %if.end ]
  %arrayidx = getelementptr inbounds i32* %domids, i64 %indvars.iv127
  %2 = load i32* %arrayidx, align 4, !tbaa !3
  %idxprom8 = sext i32 %2 to i64
  %arrayidx9 = getelementptr inbounds i32* %1, i64 %idxprom8
  %3 = load i32* %arrayidx9, align 4, !tbaa !3
  %arrayidx11 = getelementptr inbounds i32* %tcolors, i64 %indvars.iv127
  store i32 %3, i32* %arrayidx11, align 4, !tbaa !3
  %indvars.iv.next128 = add i64 %indvars.iv127, 1
  %lftr.wideiv129 = trunc i64 %indvars.iv.next128 to i32
  %exitcond130 = icmp eq i32 %lftr.wideiv129, %mdom
  br i1 %exitcond130, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %call12 = tail call float @BKL_evalfcn(%struct._BKL* %bkl) #4
  br i1 %cmp7119, label %for.body15, label %for.end59

for.cond19.preheader:                             ; preds = %for.body15
  %cmp20112 = icmp sgt i32 %mul, 1
  br i1 %cmp20112, label %for.body21.lr.ph, label %for.cond45.preheader

for.body21.lr.ph:                                 ; preds = %for.cond19.preheader
  %nimprove = getelementptr inbounds %struct._BKL* %bkl, i64 0, i32 8
  br label %for.body21

for.body15:                                       ; preds = %for.end, %for.body15
  %nflip.0117 = phi i32 [ %mul, %for.body15 ], [ 1, %for.end ]
  %idom.0116 = phi i32 [ %inc17, %for.body15 ], [ 0, %for.end ]
  %mul = shl nsw i32 %nflip.0117, 1
  %inc17 = add nsw i32 %idom.0116, 1
  %exitcond126 = icmp eq i32 %inc17, %mdom
  br i1 %exitcond126, label %for.cond19.preheader, label %for.body15

for.cond45.preheader:                             ; preds = %for.inc42, %for.cond19.preheader
  %bestcost.0.lcssa = phi float [ %call12, %for.cond19.preheader ], [ %bestcost.1, %for.inc42 ]
  br i1 %cmp7119, label %for.body47, label %for.end59

for.body21:                                       ; preds = %for.inc42, %for.body21.lr.ph
  %bestcost.0114 = phi float [ %call12, %for.body21.lr.ph ], [ %bestcost.1, %for.inc42 ]
  %iflip.0113 = phi i32 [ 1, %for.body21.lr.ph ], [ %inc43, %for.inc42 ]
  %call22 = tail call i32 @BKL_greyCodeDomain(%struct._BKL* %bkl, i32 %iflip.0113) #4
  %idxprom23 = sext i32 %call22 to i64
  %arrayidx24 = getelementptr inbounds i32* %domids, i64 %idxprom23
  %4 = load i32* %arrayidx24, align 4, !tbaa !3
  tail call void @BKL_flipDomain(%struct._BKL* %bkl, i32 %4) #4
  %call25 = tail call float @BKL_evalfcn(%struct._BKL* %bkl) #4
  %cmp26 = fcmp olt float %call25, %bestcost.0114
  br i1 %cmp26, label %if.then27, label %for.inc42

if.then27:                                        ; preds = %for.body21
  %5 = load i32* %nimprove, align 4, !tbaa !3
  %inc28 = add nsw i32 %5, 1
  store i32 %inc28, i32* %nimprove, align 4, !tbaa !3
  br i1 %cmp7119, label %for.body31, label %for.inc42

for.body31:                                       ; preds = %if.then27, %for.body31
  %indvars.iv121 = phi i64 [ %indvars.iv.next122, %for.body31 ], [ 0, %if.then27 ]
  %arrayidx33 = getelementptr inbounds i32* %domids, i64 %indvars.iv121
  %6 = load i32* %arrayidx33, align 4, !tbaa !3
  %idxprom34 = sext i32 %6 to i64
  %arrayidx35 = getelementptr inbounds i32* %1, i64 %idxprom34
  %7 = load i32* %arrayidx35, align 4, !tbaa !3
  %arrayidx37 = getelementptr inbounds i32* %tcolors, i64 %indvars.iv121
  store i32 %7, i32* %arrayidx37, align 4, !tbaa !3
  %indvars.iv.next122 = add i64 %indvars.iv121, 1
  %lftr.wideiv123 = trunc i64 %indvars.iv.next122 to i32
  %exitcond124 = icmp eq i32 %lftr.wideiv123, %mdom
  br i1 %exitcond124, label %for.inc42, label %for.body31

for.inc42:                                        ; preds = %if.then27, %for.body31, %for.body21
  %bestcost.1 = phi float [ %bestcost.0114, %for.body21 ], [ %call25, %for.body31 ], [ %call25, %if.then27 ]
  %inc43 = add nsw i32 %iflip.0113, 1
  %exitcond125 = icmp eq i32 %inc43, %mul
  br i1 %exitcond125, label %for.cond45.preheader, label %for.body21

for.body47:                                       ; preds = %for.cond45.preheader, %for.inc57
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc57 ], [ 0, %for.cond45.preheader ]
  %arrayidx49 = getelementptr inbounds i32* %domids, i64 %indvars.iv
  %8 = load i32* %arrayidx49, align 4, !tbaa !3
  %idxprom50 = sext i32 %8 to i64
  %arrayidx51 = getelementptr inbounds i32* %1, i64 %idxprom50
  %9 = load i32* %arrayidx51, align 4, !tbaa !3
  %arrayidx53 = getelementptr inbounds i32* %tcolors, i64 %indvars.iv
  %10 = load i32* %arrayidx53, align 4, !tbaa !3
  %cmp54 = icmp eq i32 %9, %10
  br i1 %cmp54, label %for.inc57, label %if.then55

if.then55:                                        ; preds = %for.body47
  tail call void @BKL_flipDomain(%struct._BKL* %bkl, i32 %8) #4
  br label %for.inc57

for.inc57:                                        ; preds = %for.body47, %if.then55
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %mdom
  br i1 %exitcond, label %for.end59, label %for.body47

for.end59:                                        ; preds = %for.end, %for.end.thread, %for.inc57, %for.cond45.preheader
  %bestcost.0.lcssa134 = phi float [ %bestcost.0.lcssa, %for.inc57 ], [ %bestcost.0.lcssa, %for.cond45.preheader ], [ %call12131, %for.end.thread ], [ %call12, %for.end ]
  ret float %bestcost.0.lcssa134
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

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
