; ModuleID = '../../SPEC/benchspec/CPU2006/458.sjeng/src/draw.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fifty = external global i32
@move_number = external global i32
@ply = external global i32
@hash = external global i32
@hash_history = external global [600 x i32]

; Function Attrs: nounwind optsize readonly uwtable
define i32 @is_draw() #0 {
entry:
  %0 = load i32* @fifty, align 4, !tbaa !0
  %cmp = icmp sgt i32 %0, 3
  br i1 %cmp, label %if.then, label %return

if.then:                                          ; preds = %entry
  %1 = load i32* @move_number, align 4, !tbaa !0
  %2 = load i32* @ply, align 4, !tbaa !0
  %add = add i32 %2, %1
  %sub = xor i32 %0, -1
  %sub1 = add i32 %add, %sub
  %cmp2 = icmp slt i32 %1, %sub1
  %sub1. = select i1 %cmp2, i32 %sub1, i32 %1
  %sub8 = add i32 %add, -3
  %cmp958 = icmp slt i32 %sub8, 0
  %cmp1059 = icmp slt i32 %sub8, %sub1.
  %or.cond60 = or i1 %cmp958, %cmp1059
  br i1 %or.cond60, label %if.end15, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.then
  %3 = load i32* @hash, align 4, !tbaa !0
  %4 = sext i32 %sub8 to i64
  br label %for.body

for.cond:                                         ; preds = %for.body
  %cmp9 = icmp slt i32 %sub14, 0
  %cmp10 = icmp slt i32 %sub14, %sub1.
  %or.cond = or i1 %cmp9, %cmp10
  %indvars.iv.next64 = add i64 %indvars.iv63, -2
  br i1 %or.cond, label %if.end15, label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %indvars.iv63 = phi i64 [ %4, %for.body.lr.ph ], [ %indvars.iv.next64, %for.cond ]
  %i.061 = phi i32 [ %sub8, %for.body.lr.ph ], [ %sub14, %for.cond ]
  %arrayidx = getelementptr inbounds [600 x i32]* @hash_history, i64 0, i64 %indvars.iv63
  %5 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp11 = icmp eq i32 %3, %5
  %sub14 = add nsw i32 %i.061, -2
  br i1 %cmp11, label %return, label %for.cond

if.end15:                                         ; preds = %for.cond, %if.then
  %cmp16 = icmp sgt i32 %0, 5
  br i1 %cmp16, label %if.then17, label %return

if.then17:                                        ; preds = %if.end15
  %sub18 = add i32 %1, -1
  %rem = srem i32 %2, 2
  %sub19 = sub i32 %sub18, %rem
  %sub21 = add i32 %1, %sub
  %sub22 = add i32 %sub21, %2
  %cmp2452 = icmp slt i32 %sub19, 0
  %cmp2653 = icmp slt i32 %sub19, %sub22
  %or.cond5054 = or i1 %cmp2452, %cmp2653
  br i1 %or.cond5054, label %return, label %for.body28.lr.ph

for.body28.lr.ph:                                 ; preds = %if.then17
  %6 = load i32* @hash, align 4, !tbaa !0
  %7 = sext i32 %sub19 to i64
  br label %for.body28

for.cond23:                                       ; preds = %for.body28
  %cmp24 = icmp slt i32 %sub38, 0
  %cmp26 = icmp slt i32 %sub38, %sub22
  %or.cond50 = or i1 %cmp24, %cmp26
  %indvars.iv.next = add i64 %indvars.iv, -2
  br i1 %or.cond50, label %return, label %for.body28

for.body28:                                       ; preds = %for.body28.lr.ph, %for.cond23
  %indvars.iv = phi i64 [ %7, %for.body28.lr.ph ], [ %indvars.iv.next, %for.cond23 ]
  %repeats.056 = phi i32 [ 0, %for.body28.lr.ph ], [ %inc.repeats.0, %for.cond23 ]
  %i.155 = phi i32 [ %sub19, %for.body28.lr.ph ], [ %sub38, %for.cond23 ]
  %arrayidx30 = getelementptr inbounds [600 x i32]* @hash_history, i64 0, i64 %indvars.iv
  %8 = load i32* %arrayidx30, align 4, !tbaa !0
  %cmp31 = icmp eq i32 %6, %8
  %inc = zext i1 %cmp31 to i32
  %inc.repeats.0 = add nsw i32 %inc, %repeats.056
  %cmp34 = icmp sgt i32 %inc.repeats.0, 1
  %sub38 = add nsw i32 %i.155, -2
  br i1 %cmp34, label %return, label %for.cond23

return:                                           ; preds = %for.body, %if.then17, %for.body28, %for.cond23, %entry, %if.end15
  %retval.0 = phi i32 [ 0, %if.end15 ], [ 0, %entry ], [ 0, %if.then17 ], [ 1, %for.body28 ], [ 0, %for.cond23 ], [ 1, %for.body ]
  ret i32 %retval.0
}

attributes #0 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
