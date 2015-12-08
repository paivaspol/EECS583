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
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([54 x i8]* @.str, i64 0, i64 0), %struct._InpMtx* null, i32* %rowOldToNew, i32* %colOldToNew) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %coordType = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 0
  %1 = load i32* %coordType, align 4, !tbaa !3
  %.off = add i32 %1, -1
  %2 = icmp ugt i32 %.off, 2
  br i1 %2, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call6 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([78 x i8]* @.str1, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32* %rowOldToNew, i32* %colOldToNew, i32 %1) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end7:                                          ; preds = %if.end
  %cmp8 = icmp eq i32* %rowOldToNew, null
  %cmp9 = icmp eq i32* %colOldToNew, null
  %or.cond209 = and i1 %cmp8, %cmp9
  br i1 %or.cond209, label %return, label %if.end11

if.end11:                                         ; preds = %if.end7
  %nent12 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 4
  %4 = load i32* %nent12, align 4, !tbaa !3
  %cmp13 = icmp eq i32 %4, 0
  br i1 %cmp13, label %return, label %if.end15

if.end15:                                         ; preds = %if.end11
  %call16 = tail call i32* @InpMtx_ivec1(%struct._InpMtx* %inpmtx) #4
  %call17 = tail call i32* @InpMtx_ivec2(%struct._InpMtx* %inpmtx) #4
  %cmp18 = icmp eq i32* %call16, null
  %cmp20 = icmp eq i32* %call17, null
  %or.cond210 = or i1 %cmp18, %cmp20
  br i1 %or.cond210, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end15
  %5 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call22 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([77 x i8]* @.str2, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32* %rowOldToNew, i32* %colOldToNew, i32 %4, i32* %call16, i32* %call17) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end23:                                         ; preds = %if.end15
  %6 = load i32* %coordType, align 4, !tbaa !3
  switch i32 %6, label %if.end119 [
    i32 1, label %for.cond.preheader
    i32 2, label %for.cond51.preheader
    i32 3, label %for.cond83.preheader
  ]

for.cond83.preheader:                             ; preds = %if.end23
  %cmp84223 = icmp sgt i32 %4, 0
  br i1 %cmp84223, label %for.body85, label %if.end119

for.cond51.preheader:                             ; preds = %if.end23
  %cmp52220 = icmp sgt i32 %4, 0
  br i1 %cmp52220, label %for.body53, label %if.end119

for.cond.preheader:                               ; preds = %if.end23
  %cmp27217 = icmp sgt i32 %4, 0
  br i1 %cmp27217, label %for.body, label %if.end119

for.body:                                         ; preds = %for.cond.preheader, %if.end43
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end43 ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds i32* %call16, i64 %indvars.iv
  %7 = load i32* %arrayidx, align 4, !tbaa !3
  %arrayidx29 = getelementptr inbounds i32* %call17, i64 %indvars.iv
  %8 = load i32* %arrayidx29, align 4, !tbaa !3
  %cmp30 = icmp slt i32 %7, 0
  %or.cond211 = or i1 %cmp30, %cmp8
  br i1 %or.cond211, label %if.end36, label %if.then33

if.then33:                                        ; preds = %for.body
  %idxprom34 = sext i32 %7 to i64
  %arrayidx35 = getelementptr inbounds i32* %rowOldToNew, i64 %idxprom34
  %9 = load i32* %arrayidx35, align 4, !tbaa !3
  br label %if.end36

if.end36:                                         ; preds = %for.body, %if.then33
  %row.0 = phi i32 [ %9, %if.then33 ], [ %7, %for.body ]
  %cmp37 = icmp slt i32 %8, 0
  %or.cond212 = or i1 %cmp37, %cmp9
  br i1 %or.cond212, label %if.end43, label %if.then40

if.then40:                                        ; preds = %if.end36
  %idxprom41 = sext i32 %8 to i64
  %arrayidx42 = getelementptr inbounds i32* %colOldToNew, i64 %idxprom41
  %10 = load i32* %arrayidx42, align 4, !tbaa !3
  br label %if.end43

if.end43:                                         ; preds = %if.end36, %if.then40
  %col.0 = phi i32 [ %10, %if.then40 ], [ %8, %if.end36 ]
  store i32 %row.0, i32* %arrayidx, align 4, !tbaa !3
  store i32 %col.0, i32* %arrayidx29, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %4
  br i1 %exitcond, label %if.end119, label %for.body

for.body53:                                       ; preds = %for.cond51.preheader, %if.end71
  %indvars.iv225 = phi i64 [ %indvars.iv.next226, %if.end71 ], [ 0, %for.cond51.preheader ]
  %arrayidx55 = getelementptr inbounds i32* %call16, i64 %indvars.iv225
  %11 = load i32* %arrayidx55, align 4, !tbaa !3
  %arrayidx57 = getelementptr inbounds i32* %call17, i64 %indvars.iv225
  %12 = load i32* %arrayidx57, align 4, !tbaa !3
  %cmp58 = icmp slt i32 %12, 0
  %or.cond213 = or i1 %cmp58, %cmp8
  br i1 %or.cond213, label %if.end64, label %if.then61

if.then61:                                        ; preds = %for.body53
  %idxprom62 = sext i32 %12 to i64
  %arrayidx63 = getelementptr inbounds i32* %rowOldToNew, i64 %idxprom62
  %13 = load i32* %arrayidx63, align 4, !tbaa !3
  br label %if.end64

if.end64:                                         ; preds = %for.body53, %if.then61
  %row.1 = phi i32 [ %13, %if.then61 ], [ %12, %for.body53 ]
  %cmp65 = icmp slt i32 %11, 0
  %or.cond214 = or i1 %cmp65, %cmp9
  br i1 %or.cond214, label %if.end71, label %if.then68

if.then68:                                        ; preds = %if.end64
  %idxprom69 = sext i32 %11 to i64
  %arrayidx70 = getelementptr inbounds i32* %colOldToNew, i64 %idxprom69
  %14 = load i32* %arrayidx70, align 4, !tbaa !3
  br label %if.end71

if.end71:                                         ; preds = %if.end64, %if.then68
  %col.1 = phi i32 [ %14, %if.then68 ], [ %11, %if.end64 ]
  store i32 %col.1, i32* %arrayidx55, align 4, !tbaa !3
  store i32 %row.1, i32* %arrayidx57, align 4, !tbaa !3
  %indvars.iv.next226 = add i64 %indvars.iv225, 1
  %lftr.wideiv227 = trunc i64 %indvars.iv.next226 to i32
  %exitcond228 = icmp eq i32 %lftr.wideiv227, %4
  br i1 %exitcond228, label %if.end119, label %for.body53

for.body85:                                       ; preds = %for.cond83.preheader, %if.end107
  %indvars.iv229 = phi i64 [ %indvars.iv.next230, %if.end107 ], [ 0, %for.cond83.preheader ]
  %arrayidx87 = getelementptr inbounds i32* %call16, i64 %indvars.iv229
  %15 = load i32* %arrayidx87, align 4, !tbaa !3
  %arrayidx89 = getelementptr inbounds i32* %call17, i64 %indvars.iv229
  %16 = load i32* %arrayidx89, align 4, !tbaa !3
  %cmp90 = icmp sgt i32 %16, -1
  %sub = select i1 %cmp90, i32 0, i32 %16
  %row.2 = sub nsw i32 %15, %sub
  %add = select i1 %cmp90, i32 %16, i32 0
  %col.2 = add nsw i32 %add, %15
  %cmp94 = icmp slt i32 %row.2, 0
  %or.cond215 = or i1 %cmp94, %cmp8
  br i1 %or.cond215, label %if.end100, label %if.then97

if.then97:                                        ; preds = %for.body85
  %idxprom98 = sext i32 %row.2 to i64
  %arrayidx99 = getelementptr inbounds i32* %rowOldToNew, i64 %idxprom98
  %17 = load i32* %arrayidx99, align 4, !tbaa !3
  br label %if.end100

if.end100:                                        ; preds = %for.body85, %if.then97
  %row.3 = phi i32 [ %17, %if.then97 ], [ %row.2, %for.body85 ]
  %cmp101 = icmp slt i32 %col.2, 0
  %or.cond216 = or i1 %cmp101, %cmp9
  br i1 %or.cond216, label %if.end107, label %if.then104

if.then104:                                       ; preds = %if.end100
  %idxprom105 = sext i32 %col.2 to i64
  %arrayidx106 = getelementptr inbounds i32* %colOldToNew, i64 %idxprom105
  %18 = load i32* %arrayidx106, align 4, !tbaa !3
  br label %if.end107

if.end107:                                        ; preds = %if.end100, %if.then104
  %col.3 = phi i32 [ %18, %if.then104 ], [ %col.2, %if.end100 ]
  %cmp108 = icmp sle i32 %col.3, %row.3
  %cond = select i1 %cmp108, i32 %col.3, i32 %row.3
  store i32 %cond, i32* %arrayidx87, align 4, !tbaa !3
  %sub111 = sub nsw i32 %col.3, %row.3
  store i32 %sub111, i32* %arrayidx89, align 4, !tbaa !3
  %indvars.iv.next230 = add i64 %indvars.iv229, 1
  %lftr.wideiv231 = trunc i64 %indvars.iv.next230 to i32
  %exitcond232 = icmp eq i32 %lftr.wideiv231, %4
  br i1 %exitcond232, label %if.end119, label %for.body85

if.end119:                                        ; preds = %for.cond83.preheader, %if.end107, %for.cond51.preheader, %if.end71, %for.cond.preheader, %if.end43, %if.end23
  %storageMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1
  store i32 1, i32* %storageMode, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %if.end7, %if.end11, %if.end119
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare i32* @InpMtx_ivec1(%struct._InpMtx*) #3

; Function Attrs: optsize
declare i32* @InpMtx_ivec2(%struct._InpMtx*) #3

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
