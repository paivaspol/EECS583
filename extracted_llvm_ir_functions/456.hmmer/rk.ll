; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/rk.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind optsize uwtable
define i64 @rkcomp(i8* %probe) #0 {
entry:
  %coded = alloca [17 x i8], align 16
  %call = call i64 @strlen(i8* %probe) #4
  %conv = trunc i64 %call to i32
  %sext = shl i64 %call, 32
  %conv1 = ashr exact i64 %sext, 32
  %cmp = icmp ugt i64 %conv1, 16
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %arraydecay = getelementptr inbounds [17 x i8]* %coded, i64 0, i64 0
  %call3 = call i32 @seqencode(i8* %arraydecay, i8* %probe) #5
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %return, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %cmp832 = icmp sgt i32 %conv, 0
  br i1 %cmp832, label %for.body, label %for.body15

for.cond11.preheader:                             ; preds = %for.body
  %cmp1329 = icmp ult i32 %conv, 16
  br i1 %cmp1329, label %for.body15, label %return

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %hashprobe.033 = phi i64 [ %or, %for.body ], [ 0, %for.cond.preheader ]
  %shl = shl i64 %hashprobe.033, 4
  %arrayidx = getelementptr inbounds [17 x i8]* %coded, i64 0, i64 %indvars.iv
  %0 = load i8* %arrayidx, align 1, !tbaa !0
  %conv10 = sext i8 %0 to i64
  %or = or i64 %conv10, %shl
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond37 = icmp eq i32 %lftr.wideiv, %conv
  br i1 %exitcond37, label %for.cond11.preheader, label %for.body

for.body15:                                       ; preds = %for.cond.preheader, %for.cond11.preheader, %for.body15
  %i.131 = phi i32 [ %inc19, %for.body15 ], [ %conv, %for.cond11.preheader ], [ 0, %for.cond.preheader ]
  %hashprobe.130 = phi i64 [ %or17, %for.body15 ], [ %or, %for.cond11.preheader ], [ 0, %for.cond.preheader ]
  %shl16 = shl i64 %hashprobe.130, 4
  %or17 = or i64 %shl16, 15
  %inc19 = add nsw i32 %i.131, 1
  %exitcond = icmp eq i32 %inc19, 16
  br i1 %exitcond, label %return, label %for.body15

return:                                           ; preds = %for.cond11.preheader, %for.body15, %if.end, %entry
  %retval.0 = phi i64 [ 0, %entry ], [ 0, %if.end ], [ %or, %for.cond11.preheader ], [ %or17, %for.body15 ]
  ret i64 %retval.0
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #1

; Function Attrs: optsize
declare i32 @seqencode(i8*, i8*) #2

; Function Attrs: nounwind optsize readonly uwtable
define i32 @rkseq(i64 %hashprobe, i8* nocapture %sequence) #3 {
entry:
  br label %for.body

while.cond.preheader:                             ; preds = %for.body, %if.end
  %target.0.lcssa = phi i64 [ %target.075, %for.body ], [ %or, %if.end ]
  %add.ptr768 = getelementptr inbounds i8* %sequence, i64 15
  %0 = load i8* %add.ptr768, align 1, !tbaa !0
  %cmp969 = icmp eq i8 %0, 0
  br i1 %cmp969, label %for.body25, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %add.ptr667 = getelementptr inbounds i8* %sequence, i64 16
  br label %while.body

for.body:                                         ; preds = %entry, %if.end
  %target.075 = phi i64 [ 0, %entry ], [ %or, %if.end ]
  %i.074 = phi i64 [ 0, %entry ], [ %inc, %if.end ]
  %add.ptr = getelementptr inbounds i8* %sequence, i64 %i.074
  %1 = load i8* %add.ptr, align 1, !tbaa !0
  %cmp1 = icmp eq i8 %1, 0
  br i1 %cmp1, label %while.cond.preheader, label %if.end

if.end:                                           ; preds = %for.body
  %shl = shl i64 %target.075, 4
  %conv4 = sext i8 %1 to i64
  %or = or i64 %conv4, %shl
  %inc = add nsw i64 %i.074, 1
  %cmp = icmp ult i64 %inc, 16
  br i1 %cmp, label %for.body, label %while.cond.preheader

while.body:                                       ; preds = %while.body.lr.ph, %if.end15
  %add.ptr672 = phi i8* [ %add.ptr667, %while.body.lr.ph ], [ %add.ptr6, %if.end15 ]
  %target.171 = phi i64 [ %target.0.lcssa, %while.body.lr.ph ], [ %or20, %if.end15 ]
  %pos.070 = phi i64 [ 0, %while.body.lr.ph ], [ %inc21, %if.end15 ]
  %and = and i64 %target.171, %hashprobe
  %cmp11 = icmp eq i64 %and, %target.171
  br i1 %cmp11, label %if.then13, label %if.end15

if.then13:                                        ; preds = %while.body
  %conv14 = trunc i64 %pos.070 to i32
  br label %return

if.end15:                                         ; preds = %while.body
  %shl16 = shl i64 %target.171, 4
  %2 = load i8* %add.ptr672, align 1, !tbaa !0
  %conv19 = sext i8 %2 to i64
  %or20 = or i64 %conv19, %shl16
  %inc21 = add nsw i64 %pos.070, 1
  %add.ptr5.sum = add i64 %pos.070, 17
  %add.ptr6 = getelementptr inbounds i8* %sequence, i64 %add.ptr5.sum
  %add.ptr6.sum = add i64 %pos.070, 16
  %add.ptr7 = getelementptr inbounds i8* %sequence, i64 %add.ptr6.sum
  %3 = load i8* %add.ptr7, align 1, !tbaa !0
  %cmp9 = icmp eq i8 %3, 0
  br i1 %cmp9, label %for.body25, label %while.body

for.body25:                                       ; preds = %while.cond.preheader, %if.end15, %if.end32
  %target.264 = phi i64 [ %shl33, %if.end32 ], [ %target.0.lcssa, %while.cond.preheader ], [ %or20, %if.end15 ]
  %pos.163 = phi i64 [ %inc34, %if.end32 ], [ 0, %while.cond.preheader ], [ %inc21, %if.end15 ]
  %i.162 = phi i64 [ %inc36, %if.end32 ], [ 0, %while.cond.preheader ], [ 0, %if.end15 ]
  %or26 = or i64 %target.264, 15
  %and27 = and i64 %or26, %hashprobe
  %cmp28 = icmp eq i64 %and27, %or26
  br i1 %cmp28, label %if.then30, label %if.end32

if.then30:                                        ; preds = %for.body25
  %conv31 = trunc i64 %pos.163 to i32
  br label %return

if.end32:                                         ; preds = %for.body25
  %shl33 = shl i64 %or26, 4
  %inc34 = add nsw i64 %pos.163, 1
  %inc36 = add nsw i64 %i.162, 1
  %cmp23 = icmp ult i64 %inc36, 16
  br i1 %cmp23, label %for.body25, label %return

return:                                           ; preds = %if.end32, %if.then30, %if.then13
  %retval.0 = phi i32 [ %conv14, %if.then13 ], [ %conv31, %if.then30 ], [ -1, %if.end32 ]
  ret i32 %retval.0
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly }
attributes #5 = { nounwind optsize }

!0 = metadata !{metadata !"omnipotent char", metadata !1}
!1 = metadata !{metadata !"Simple C/C++ TBAA"}
