; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_newsort.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind optsize readonly uwtable
define i32 @IVisascending(i32 %n, i32* nocapture %ivec) #0 {
entry:
  %cmp = icmp slt i32 %n, 1
  br i1 %cmp, label %return, label %if.else

if.else:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %n, 1
  br i1 %cmp1, label %return, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.else
  %.pre = load i32* %ivec, align 4, !tbaa !0
  br label %for.body

for.cond:                                         ; preds = %for.body
  %0 = trunc i64 %indvars.iv.next to i32
  %cmp4 = icmp slt i32 %0, %n
  br i1 %cmp4, label %for.body, label %return

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %1 = phi i32 [ %.pre, %for.body.lr.ph ], [ %2, %for.cond ]
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next, %for.cond ]
  %arrayidx6 = getelementptr inbounds i32* %ivec, i64 %indvars.iv
  %2 = load i32* %arrayidx6, align 4, !tbaa !0
  %cmp7 = icmp sgt i32 %1, %2
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp7, label %return, label %for.cond

return:                                           ; preds = %for.body, %for.cond, %if.else, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.else ], [ 0, %for.body ], [ 1, %for.cond ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @IVisdescending(i32 %n, i32* nocapture %ivec) #0 {
entry:
  %cmp = icmp slt i32 %n, 1
  br i1 %cmp, label %return, label %if.else

if.else:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %n, 1
  br i1 %cmp1, label %return, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.else
  %.pre = load i32* %ivec, align 4, !tbaa !0
  br label %for.body

for.cond:                                         ; preds = %for.body
  %0 = trunc i64 %indvars.iv.next to i32
  %cmp4 = icmp slt i32 %0, %n
  br i1 %cmp4, label %for.body, label %return

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %1 = phi i32 [ %.pre, %for.body.lr.ph ], [ %2, %for.cond ]
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next, %for.cond ]
  %arrayidx6 = getelementptr inbounds i32* %ivec, i64 %indvars.iv
  %2 = load i32* %arrayidx6, align 4, !tbaa !0
  %cmp7 = icmp slt i32 %1, %2
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp7, label %return, label %for.cond

return:                                           ; preds = %for.body, %for.cond, %if.else, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.else ], [ 0, %for.body ], [ 1, %for.cond ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @DVisascending(i32 %n, double* nocapture %dvec) #0 {
entry:
  %cmp = icmp slt i32 %n, 1
  br i1 %cmp, label %return, label %if.else

if.else:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %n, 1
  br i1 %cmp1, label %return, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.else
  %.pre = load double* %dvec, align 8, !tbaa !3
  br label %for.body

for.cond:                                         ; preds = %for.body
  %0 = trunc i64 %indvars.iv.next to i32
  %cmp4 = icmp slt i32 %0, %n
  br i1 %cmp4, label %for.body, label %return

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %1 = phi double [ %.pre, %for.body.lr.ph ], [ %2, %for.cond ]
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next, %for.cond ]
  %arrayidx6 = getelementptr inbounds double* %dvec, i64 %indvars.iv
  %2 = load double* %arrayidx6, align 8, !tbaa !3
  %cmp7 = fcmp ogt double %1, %2
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp7, label %return, label %for.cond

return:                                           ; preds = %for.body, %for.cond, %if.else, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.else ], [ 0, %for.body ], [ 1, %for.cond ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @DVisdescending(i32 %n, double* nocapture %dvec) #0 {
entry:
  %cmp = icmp slt i32 %n, 1
  br i1 %cmp, label %return, label %if.else

if.else:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %n, 1
  br i1 %cmp1, label %return, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.else
  %.pre = load double* %dvec, align 8, !tbaa !3
  br label %for.body

for.cond:                                         ; preds = %for.body
  %0 = trunc i64 %indvars.iv.next to i32
  %cmp4 = icmp slt i32 %0, %n
  br i1 %cmp4, label %for.body, label %return

for.body:                                         ; preds = %for.body.lr.ph, %for.cond
  %1 = phi double [ %.pre, %for.body.lr.ph ], [ %2, %for.cond ]
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next, %for.cond ]
  %arrayidx6 = getelementptr inbounds double* %dvec, i64 %indvars.iv
  %2 = load double* %arrayidx6, align 8, !tbaa !3
  %cmp7 = fcmp olt double %1, %2
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp7, label %return, label %for.cond

return:                                           ; preds = %for.body, %for.cond, %if.else, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.else ], [ 0, %for.body ], [ 1, %for.cond ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define void @IVisortUp(i32 %n, i32* nocapture %ivec) #1 {
entry:
  %cmp35 = icmp sgt i32 %n, 1
  br i1 %cmp35, label %land.rhs.lr.ph, label %for.end18

land.rhs.lr.ph:                                   ; preds = %for.inc17, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc17 ], [ 1, %entry ]
  %arrayidx4.phi.trans.insert = getelementptr inbounds i32* %ivec, i64 %indvars.iv
  %.pre = load i32* %arrayidx4.phi.trans.insert, align 4, !tbaa !0
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %for.body6
  %indvars.iv37 = phi i64 [ %indvars.iv, %land.rhs.lr.ph ], [ %indvars.iv.next38, %for.body6 ]
  %indvars.iv.next38 = add i64 %indvars.iv37, -1
  %arrayidx = getelementptr inbounds i32* %ivec, i64 %indvars.iv.next38
  %0 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp5 = icmp sgt i32 %0, %.pre
  br i1 %cmp5, label %for.body6, label %for.inc17

for.body6:                                        ; preds = %land.rhs
  %arrayidx4 = getelementptr inbounds i32* %ivec, i64 %indvars.iv37
  store i32 %.pre, i32* %arrayidx, align 4, !tbaa !0
  store i32 %0, i32* %arrayidx4, align 4, !tbaa !0
  %1 = trunc i64 %indvars.iv.next38 to i32
  %cmp2 = icmp sgt i32 %1, 0
  br i1 %cmp2, label %land.rhs, label %for.inc17

for.inc17:                                        ; preds = %for.body6, %land.rhs
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end18, label %land.rhs.lr.ph

for.end18:                                        ; preds = %for.inc17, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @IVisortDown(i32 %n, i32* nocapture %ivec) #1 {
entry:
  %cmp35 = icmp sgt i32 %n, 1
  br i1 %cmp35, label %land.rhs.lr.ph, label %for.end18

land.rhs.lr.ph:                                   ; preds = %for.inc17, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc17 ], [ 1, %entry ]
  %arrayidx4.phi.trans.insert = getelementptr inbounds i32* %ivec, i64 %indvars.iv
  %.pre = load i32* %arrayidx4.phi.trans.insert, align 4, !tbaa !0
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %for.body6
  %indvars.iv37 = phi i64 [ %indvars.iv, %land.rhs.lr.ph ], [ %indvars.iv.next38, %for.body6 ]
  %indvars.iv.next38 = add i64 %indvars.iv37, -1
  %arrayidx = getelementptr inbounds i32* %ivec, i64 %indvars.iv.next38
  %0 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp5 = icmp slt i32 %0, %.pre
  br i1 %cmp5, label %for.body6, label %for.inc17

for.body6:                                        ; preds = %land.rhs
  %arrayidx4 = getelementptr inbounds i32* %ivec, i64 %indvars.iv37
  store i32 %.pre, i32* %arrayidx, align 4, !tbaa !0
  store i32 %0, i32* %arrayidx4, align 4, !tbaa !0
  %1 = trunc i64 %indvars.iv.next38 to i32
  %cmp2 = icmp sgt i32 %1, 0
  br i1 %cmp2, label %land.rhs, label %for.inc17

for.inc17:                                        ; preds = %for.body6, %land.rhs
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end18, label %land.rhs.lr.ph

for.end18:                                        ; preds = %for.inc17, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @IV2isortUp(i32 %n, i32* nocapture %ivec1, i32* nocapture %ivec2) #1 {
entry:
  %cmp53 = icmp sgt i32 %n, 1
  br i1 %cmp53, label %land.rhs.lr.ph, label %for.end28

land.rhs.lr.ph:                                   ; preds = %for.inc27, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc27 ], [ 1, %entry ]
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %for.body6
  %indvars.iv55 = phi i64 [ %indvars.iv, %land.rhs.lr.ph ], [ %indvars.iv.next56, %for.body6 ]
  %indvars.iv.next56 = add i64 %indvars.iv55, -1
  %arrayidx = getelementptr inbounds i32* %ivec1, i64 %indvars.iv.next56
  %0 = load i32* %arrayidx, align 4, !tbaa !0
  %arrayidx4 = getelementptr inbounds i32* %ivec1, i64 %indvars.iv55
  %1 = load i32* %arrayidx4, align 4, !tbaa !0
  %cmp5 = icmp sgt i32 %0, %1
  br i1 %cmp5, label %for.body6, label %for.inc27

for.body6:                                        ; preds = %land.rhs
  store i32 %1, i32* %arrayidx, align 4, !tbaa !0
  store i32 %0, i32* %arrayidx4, align 4, !tbaa !0
  %arrayidx19 = getelementptr inbounds i32* %ivec2, i64 %indvars.iv.next56
  %2 = load i32* %arrayidx19, align 4, !tbaa !0
  %arrayidx21 = getelementptr inbounds i32* %ivec2, i64 %indvars.iv55
  %3 = load i32* %arrayidx21, align 4, !tbaa !0
  store i32 %3, i32* %arrayidx19, align 4, !tbaa !0
  store i32 %2, i32* %arrayidx21, align 4, !tbaa !0
  %4 = trunc i64 %indvars.iv.next56 to i32
  %cmp2 = icmp sgt i32 %4, 0
  br i1 %cmp2, label %land.rhs, label %for.inc27

for.inc27:                                        ; preds = %for.body6, %land.rhs
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end28, label %land.rhs.lr.ph

for.end28:                                        ; preds = %for.inc27, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @IV2isortDown(i32 %n, i32* nocapture %ivec1, i32* nocapture %ivec2) #1 {
entry:
  %cmp53 = icmp sgt i32 %n, 1
  br i1 %cmp53, label %land.rhs.lr.ph, label %for.end28

land.rhs.lr.ph:                                   ; preds = %for.inc27, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc27 ], [ 1, %entry ]
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %for.body6
  %indvars.iv55 = phi i64 [ %indvars.iv, %land.rhs.lr.ph ], [ %indvars.iv.next56, %for.body6 ]
  %indvars.iv.next56 = add i64 %indvars.iv55, -1
  %arrayidx = getelementptr inbounds i32* %ivec1, i64 %indvars.iv.next56
  %0 = load i32* %arrayidx, align 4, !tbaa !0
  %arrayidx4 = getelementptr inbounds i32* %ivec1, i64 %indvars.iv55
  %1 = load i32* %arrayidx4, align 4, !tbaa !0
  %cmp5 = icmp slt i32 %0, %1
  br i1 %cmp5, label %for.body6, label %for.inc27

for.body6:                                        ; preds = %land.rhs
  store i32 %1, i32* %arrayidx, align 4, !tbaa !0
  store i32 %0, i32* %arrayidx4, align 4, !tbaa !0
  %arrayidx19 = getelementptr inbounds i32* %ivec2, i64 %indvars.iv.next56
  %2 = load i32* %arrayidx19, align 4, !tbaa !0
  %arrayidx21 = getelementptr inbounds i32* %ivec2, i64 %indvars.iv55
  %3 = load i32* %arrayidx21, align 4, !tbaa !0
  store i32 %3, i32* %arrayidx19, align 4, !tbaa !0
  store i32 %2, i32* %arrayidx21, align 4, !tbaa !0
  %4 = trunc i64 %indvars.iv.next56 to i32
  %cmp2 = icmp sgt i32 %4, 0
  br i1 %cmp2, label %land.rhs, label %for.inc27

for.inc27:                                        ; preds = %for.body6, %land.rhs
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end28, label %land.rhs.lr.ph

for.end28:                                        ; preds = %for.inc27, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @IVDVisortUp(i32 %n, i32* nocapture %ivec, double* nocapture %dvec) #1 {
entry:
  %cmp52 = icmp sgt i32 %n, 1
  br i1 %cmp52, label %land.rhs.lr.ph, label %for.end28

land.rhs.lr.ph:                                   ; preds = %for.inc27, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc27 ], [ 1, %entry ]
  %arrayidx4.phi.trans.insert = getelementptr inbounds i32* %ivec, i64 %indvars.iv
  %.pre = load i32* %arrayidx4.phi.trans.insert, align 4, !tbaa !0
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %for.body6
  %indvars.iv54 = phi i64 [ %indvars.iv, %land.rhs.lr.ph ], [ %indvars.iv.next55, %for.body6 ]
  %indvars.iv.next55 = add i64 %indvars.iv54, -1
  %arrayidx = getelementptr inbounds i32* %ivec, i64 %indvars.iv.next55
  %0 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp5 = icmp sgt i32 %0, %.pre
  br i1 %cmp5, label %for.body6, label %for.inc27

for.body6:                                        ; preds = %land.rhs
  %arrayidx4 = getelementptr inbounds i32* %ivec, i64 %indvars.iv54
  store i32 %.pre, i32* %arrayidx, align 4, !tbaa !0
  store i32 %0, i32* %arrayidx4, align 4, !tbaa !0
  %arrayidx19 = getelementptr inbounds double* %dvec, i64 %indvars.iv.next55
  %1 = load double* %arrayidx19, align 8, !tbaa !3
  %arrayidx21 = getelementptr inbounds double* %dvec, i64 %indvars.iv54
  %2 = load double* %arrayidx21, align 8, !tbaa !3
  store double %2, double* %arrayidx19, align 8, !tbaa !3
  store double %1, double* %arrayidx21, align 8, !tbaa !3
  %3 = trunc i64 %indvars.iv.next55 to i32
  %cmp2 = icmp sgt i32 %3, 0
  br i1 %cmp2, label %land.rhs, label %for.inc27

for.inc27:                                        ; preds = %for.body6, %land.rhs
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end28, label %land.rhs.lr.ph

for.end28:                                        ; preds = %for.inc27, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @IVDVisortDown(i32 %n, i32* nocapture %ivec, double* nocapture %dvec) #1 {
entry:
  %cmp52 = icmp sgt i32 %n, 1
  br i1 %cmp52, label %land.rhs.lr.ph, label %for.end28

land.rhs.lr.ph:                                   ; preds = %for.inc27, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc27 ], [ 1, %entry ]
  %arrayidx4.phi.trans.insert = getelementptr inbounds i32* %ivec, i64 %indvars.iv
  %.pre = load i32* %arrayidx4.phi.trans.insert, align 4, !tbaa !0
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %for.body6
  %indvars.iv54 = phi i64 [ %indvars.iv, %land.rhs.lr.ph ], [ %indvars.iv.next55, %for.body6 ]
  %indvars.iv.next55 = add i64 %indvars.iv54, -1
  %arrayidx = getelementptr inbounds i32* %ivec, i64 %indvars.iv.next55
  %0 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp5 = icmp slt i32 %0, %.pre
  br i1 %cmp5, label %for.body6, label %for.inc27

for.body6:                                        ; preds = %land.rhs
  %arrayidx4 = getelementptr inbounds i32* %ivec, i64 %indvars.iv54
  store i32 %.pre, i32* %arrayidx, align 4, !tbaa !0
  store i32 %0, i32* %arrayidx4, align 4, !tbaa !0
  %arrayidx19 = getelementptr inbounds double* %dvec, i64 %indvars.iv.next55
  %1 = load double* %arrayidx19, align 8, !tbaa !3
  %arrayidx21 = getelementptr inbounds double* %dvec, i64 %indvars.iv54
  %2 = load double* %arrayidx21, align 8, !tbaa !3
  store double %2, double* %arrayidx19, align 8, !tbaa !3
  store double %1, double* %arrayidx21, align 8, !tbaa !3
  %3 = trunc i64 %indvars.iv.next55 to i32
  %cmp2 = icmp sgt i32 %3, 0
  br i1 %cmp2, label %land.rhs, label %for.inc27

for.inc27:                                        ; preds = %for.body6, %land.rhs
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end28, label %land.rhs.lr.ph

for.end28:                                        ; preds = %for.inc27, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @IV2DVisortUp(i32 %n, i32* nocapture %ivec1, i32* nocapture %ivec2, double* nocapture %dvec) #1 {
entry:
  %cmp70 = icmp sgt i32 %n, 1
  br i1 %cmp70, label %land.rhs.lr.ph, label %for.end38

land.rhs.lr.ph:                                   ; preds = %for.inc37, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc37 ], [ 1, %entry ]
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %for.body6
  %indvars.iv72 = phi i64 [ %indvars.iv, %land.rhs.lr.ph ], [ %indvars.iv.next73, %for.body6 ]
  %indvars.iv.next73 = add i64 %indvars.iv72, -1
  %arrayidx = getelementptr inbounds i32* %ivec1, i64 %indvars.iv.next73
  %0 = load i32* %arrayidx, align 4, !tbaa !0
  %arrayidx4 = getelementptr inbounds i32* %ivec1, i64 %indvars.iv72
  %1 = load i32* %arrayidx4, align 4, !tbaa !0
  %cmp5 = icmp sgt i32 %0, %1
  br i1 %cmp5, label %for.body6, label %for.inc37

for.body6:                                        ; preds = %land.rhs
  store i32 %1, i32* %arrayidx, align 4, !tbaa !0
  store i32 %0, i32* %arrayidx4, align 4, !tbaa !0
  %arrayidx19 = getelementptr inbounds i32* %ivec2, i64 %indvars.iv.next73
  %2 = load i32* %arrayidx19, align 4, !tbaa !0
  %arrayidx21 = getelementptr inbounds i32* %ivec2, i64 %indvars.iv72
  %3 = load i32* %arrayidx21, align 4, !tbaa !0
  store i32 %3, i32* %arrayidx19, align 4, !tbaa !0
  store i32 %2, i32* %arrayidx21, align 4, !tbaa !0
  %arrayidx29 = getelementptr inbounds double* %dvec, i64 %indvars.iv.next73
  %4 = load double* %arrayidx29, align 8, !tbaa !3
  %arrayidx31 = getelementptr inbounds double* %dvec, i64 %indvars.iv72
  %5 = load double* %arrayidx31, align 8, !tbaa !3
  store double %5, double* %arrayidx29, align 8, !tbaa !3
  store double %4, double* %arrayidx31, align 8, !tbaa !3
  %6 = trunc i64 %indvars.iv.next73 to i32
  %cmp2 = icmp sgt i32 %6, 0
  br i1 %cmp2, label %land.rhs, label %for.inc37

for.inc37:                                        ; preds = %for.body6, %land.rhs
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end38, label %land.rhs.lr.ph

for.end38:                                        ; preds = %for.inc37, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @IV2DVisortDown(i32 %n, i32* nocapture %ivec1, i32* nocapture %ivec2, double* nocapture %dvec) #1 {
entry:
  %cmp70 = icmp sgt i32 %n, 1
  br i1 %cmp70, label %land.rhs.lr.ph, label %for.end38

land.rhs.lr.ph:                                   ; preds = %for.inc37, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc37 ], [ 1, %entry ]
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %for.body6
  %indvars.iv72 = phi i64 [ %indvars.iv, %land.rhs.lr.ph ], [ %indvars.iv.next73, %for.body6 ]
  %indvars.iv.next73 = add i64 %indvars.iv72, -1
  %arrayidx = getelementptr inbounds i32* %ivec1, i64 %indvars.iv.next73
  %0 = load i32* %arrayidx, align 4, !tbaa !0
  %arrayidx4 = getelementptr inbounds i32* %ivec1, i64 %indvars.iv72
  %1 = load i32* %arrayidx4, align 4, !tbaa !0
  %cmp5 = icmp slt i32 %0, %1
  br i1 %cmp5, label %for.body6, label %for.inc37

for.body6:                                        ; preds = %land.rhs
  store i32 %1, i32* %arrayidx, align 4, !tbaa !0
  store i32 %0, i32* %arrayidx4, align 4, !tbaa !0
  %arrayidx19 = getelementptr inbounds i32* %ivec2, i64 %indvars.iv.next73
  %2 = load i32* %arrayidx19, align 4, !tbaa !0
  %arrayidx21 = getelementptr inbounds i32* %ivec2, i64 %indvars.iv72
  %3 = load i32* %arrayidx21, align 4, !tbaa !0
  store i32 %3, i32* %arrayidx19, align 4, !tbaa !0
  store i32 %2, i32* %arrayidx21, align 4, !tbaa !0
  %arrayidx29 = getelementptr inbounds double* %dvec, i64 %indvars.iv.next73
  %4 = load double* %arrayidx29, align 8, !tbaa !3
  %arrayidx31 = getelementptr inbounds double* %dvec, i64 %indvars.iv72
  %5 = load double* %arrayidx31, align 8, !tbaa !3
  store double %5, double* %arrayidx29, align 8, !tbaa !3
  store double %4, double* %arrayidx31, align 8, !tbaa !3
  %6 = trunc i64 %indvars.iv.next73 to i32
  %cmp2 = icmp sgt i32 %6, 0
  br i1 %cmp2, label %land.rhs, label %for.inc37

for.inc37:                                        ; preds = %for.body6, %land.rhs
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end38, label %land.rhs.lr.ph

for.end38:                                        ; preds = %for.inc37, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @IVZVisortUp(i32 %n, i32* nocapture %ivec, double* nocapture %zvec) #1 {
entry:
  %cmp83 = icmp sgt i32 %n, 1
  br i1 %cmp83, label %land.rhs.lr.ph, label %for.end48

land.rhs.lr.ph:                                   ; preds = %for.inc47, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc47 ], [ 1, %entry ]
  %arrayidx4.phi.trans.insert = getelementptr inbounds i32* %ivec, i64 %indvars.iv
  %.pre = load i32* %arrayidx4.phi.trans.insert, align 4, !tbaa !0
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %for.body6
  %indvars.iv85 = phi i64 [ %indvars.iv, %land.rhs.lr.ph ], [ %indvars.iv.next86, %for.body6 ]
  %indvars.iv.next86 = add i64 %indvars.iv85, -1
  %arrayidx = getelementptr inbounds i32* %ivec, i64 %indvars.iv.next86
  %0 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp5 = icmp sgt i32 %0, %.pre
  br i1 %cmp5, label %for.body6, label %for.inc47

for.body6:                                        ; preds = %land.rhs
  %arrayidx4 = getelementptr inbounds i32* %ivec, i64 %indvars.iv85
  store i32 %.pre, i32* %arrayidx, align 4, !tbaa !0
  store i32 %0, i32* %arrayidx4, align 4, !tbaa !0
  %1 = trunc i64 %indvars.iv.next86 to i32
  %mul = shl nsw i32 %1, 1
  %idxprom18 = sext i32 %mul to i64
  %arrayidx19 = getelementptr inbounds double* %zvec, i64 %idxprom18
  %2 = load double* %arrayidx19, align 8, !tbaa !3
  %3 = trunc i64 %indvars.iv85 to i32
  %mul20 = shl nsw i32 %3, 1
  %idxprom21 = sext i32 %mul20 to i64
  %arrayidx22 = getelementptr inbounds double* %zvec, i64 %idxprom21
  %4 = load double* %arrayidx22, align 8, !tbaa !3
  store double %4, double* %arrayidx19, align 8, !tbaa !3
  store double %2, double* %arrayidx22, align 8, !tbaa !3
  %add79 = or i32 %mul, 1
  %idxprom32 = sext i32 %add79 to i64
  %arrayidx33 = getelementptr inbounds double* %zvec, i64 %idxprom32
  %5 = load double* %arrayidx33, align 8, !tbaa !3
  %add3580 = or i32 %mul20, 1
  %idxprom36 = sext i32 %add3580 to i64
  %arrayidx37 = getelementptr inbounds double* %zvec, i64 %idxprom36
  %6 = load double* %arrayidx37, align 8, !tbaa !3
  store double %6, double* %arrayidx33, align 8, !tbaa !3
  store double %5, double* %arrayidx37, align 8, !tbaa !3
  %cmp2 = icmp sgt i32 %1, 0
  br i1 %cmp2, label %land.rhs, label %for.inc47

for.inc47:                                        ; preds = %for.body6, %land.rhs
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end48, label %land.rhs.lr.ph

for.end48:                                        ; preds = %for.inc47, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @IVZVisortDown(i32 %n, i32* nocapture %ivec, double* nocapture %zvec) #1 {
entry:
  %cmp83 = icmp sgt i32 %n, 1
  br i1 %cmp83, label %land.rhs.lr.ph, label %for.end48

land.rhs.lr.ph:                                   ; preds = %for.inc47, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc47 ], [ 1, %entry ]
  %arrayidx4.phi.trans.insert = getelementptr inbounds i32* %ivec, i64 %indvars.iv
  %.pre = load i32* %arrayidx4.phi.trans.insert, align 4, !tbaa !0
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %for.body6
  %indvars.iv85 = phi i64 [ %indvars.iv, %land.rhs.lr.ph ], [ %indvars.iv.next86, %for.body6 ]
  %indvars.iv.next86 = add i64 %indvars.iv85, -1
  %arrayidx = getelementptr inbounds i32* %ivec, i64 %indvars.iv.next86
  %0 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp5 = icmp slt i32 %0, %.pre
  br i1 %cmp5, label %for.body6, label %for.inc47

for.body6:                                        ; preds = %land.rhs
  %arrayidx4 = getelementptr inbounds i32* %ivec, i64 %indvars.iv85
  store i32 %.pre, i32* %arrayidx, align 4, !tbaa !0
  store i32 %0, i32* %arrayidx4, align 4, !tbaa !0
  %1 = trunc i64 %indvars.iv.next86 to i32
  %mul = shl nsw i32 %1, 1
  %idxprom18 = sext i32 %mul to i64
  %arrayidx19 = getelementptr inbounds double* %zvec, i64 %idxprom18
  %2 = load double* %arrayidx19, align 8, !tbaa !3
  %3 = trunc i64 %indvars.iv85 to i32
  %mul20 = shl nsw i32 %3, 1
  %idxprom21 = sext i32 %mul20 to i64
  %arrayidx22 = getelementptr inbounds double* %zvec, i64 %idxprom21
  %4 = load double* %arrayidx22, align 8, !tbaa !3
  store double %4, double* %arrayidx19, align 8, !tbaa !3
  store double %2, double* %arrayidx22, align 8, !tbaa !3
  %add79 = or i32 %mul, 1
  %idxprom32 = sext i32 %add79 to i64
  %arrayidx33 = getelementptr inbounds double* %zvec, i64 %idxprom32
  %5 = load double* %arrayidx33, align 8, !tbaa !3
  %add3580 = or i32 %mul20, 1
  %idxprom36 = sext i32 %add3580 to i64
  %arrayidx37 = getelementptr inbounds double* %zvec, i64 %idxprom36
  %6 = load double* %arrayidx37, align 8, !tbaa !3
  store double %6, double* %arrayidx33, align 8, !tbaa !3
  store double %5, double* %arrayidx37, align 8, !tbaa !3
  %cmp2 = icmp sgt i32 %1, 0
  br i1 %cmp2, label %land.rhs, label %for.inc47

for.inc47:                                        ; preds = %for.body6, %land.rhs
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end48, label %land.rhs.lr.ph

for.end48:                                        ; preds = %for.inc47, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @IV2ZVisortUp(i32 %n, i32* nocapture %ivec1, i32* nocapture %ivec2, double* nocapture %zvec) #1 {
entry:
  %cmp101 = icmp sgt i32 %n, 1
  br i1 %cmp101, label %land.rhs.lr.ph, label %for.end58

land.rhs.lr.ph:                                   ; preds = %for.inc57, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc57 ], [ 1, %entry ]
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %for.body6
  %indvars.iv103 = phi i64 [ %indvars.iv, %land.rhs.lr.ph ], [ %indvars.iv.next104, %for.body6 ]
  %indvars.iv.next104 = add i64 %indvars.iv103, -1
  %arrayidx = getelementptr inbounds i32* %ivec1, i64 %indvars.iv.next104
  %0 = load i32* %arrayidx, align 4, !tbaa !0
  %arrayidx4 = getelementptr inbounds i32* %ivec1, i64 %indvars.iv103
  %1 = load i32* %arrayidx4, align 4, !tbaa !0
  %cmp5 = icmp sgt i32 %0, %1
  br i1 %cmp5, label %for.body6, label %for.inc57

for.body6:                                        ; preds = %land.rhs
  store i32 %1, i32* %arrayidx, align 4, !tbaa !0
  store i32 %0, i32* %arrayidx4, align 4, !tbaa !0
  %arrayidx19 = getelementptr inbounds i32* %ivec2, i64 %indvars.iv.next104
  %2 = load i32* %arrayidx19, align 4, !tbaa !0
  %arrayidx21 = getelementptr inbounds i32* %ivec2, i64 %indvars.iv103
  %3 = load i32* %arrayidx21, align 4, !tbaa !0
  store i32 %3, i32* %arrayidx19, align 4, !tbaa !0
  store i32 %2, i32* %arrayidx21, align 4, !tbaa !0
  %4 = trunc i64 %indvars.iv.next104 to i32
  %mul = shl nsw i32 %4, 1
  %idxprom28 = sext i32 %mul to i64
  %arrayidx29 = getelementptr inbounds double* %zvec, i64 %idxprom28
  %5 = load double* %arrayidx29, align 8, !tbaa !3
  %6 = trunc i64 %indvars.iv103 to i32
  %mul30 = shl nsw i32 %6, 1
  %idxprom31 = sext i32 %mul30 to i64
  %arrayidx32 = getelementptr inbounds double* %zvec, i64 %idxprom31
  %7 = load double* %arrayidx32, align 8, !tbaa !3
  store double %7, double* %arrayidx29, align 8, !tbaa !3
  store double %5, double* %arrayidx32, align 8, !tbaa !3
  %add97 = or i32 %mul, 1
  %idxprom42 = sext i32 %add97 to i64
  %arrayidx43 = getelementptr inbounds double* %zvec, i64 %idxprom42
  %8 = load double* %arrayidx43, align 8, !tbaa !3
  %add4598 = or i32 %mul30, 1
  %idxprom46 = sext i32 %add4598 to i64
  %arrayidx47 = getelementptr inbounds double* %zvec, i64 %idxprom46
  %9 = load double* %arrayidx47, align 8, !tbaa !3
  store double %9, double* %arrayidx43, align 8, !tbaa !3
  store double %8, double* %arrayidx47, align 8, !tbaa !3
  %cmp2 = icmp sgt i32 %4, 0
  br i1 %cmp2, label %land.rhs, label %for.inc57

for.inc57:                                        ; preds = %for.body6, %land.rhs
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end58, label %land.rhs.lr.ph

for.end58:                                        ; preds = %for.inc57, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @IV2ZVisortDown(i32 %n, i32* nocapture %ivec1, i32* nocapture %ivec2, double* nocapture %zvec) #1 {
entry:
  %cmp101 = icmp sgt i32 %n, 1
  br i1 %cmp101, label %land.rhs.lr.ph, label %for.end58

land.rhs.lr.ph:                                   ; preds = %for.inc57, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc57 ], [ 1, %entry ]
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %for.body6
  %indvars.iv103 = phi i64 [ %indvars.iv, %land.rhs.lr.ph ], [ %indvars.iv.next104, %for.body6 ]
  %indvars.iv.next104 = add i64 %indvars.iv103, -1
  %arrayidx = getelementptr inbounds i32* %ivec1, i64 %indvars.iv.next104
  %0 = load i32* %arrayidx, align 4, !tbaa !0
  %arrayidx4 = getelementptr inbounds i32* %ivec1, i64 %indvars.iv103
  %1 = load i32* %arrayidx4, align 4, !tbaa !0
  %cmp5 = icmp slt i32 %0, %1
  br i1 %cmp5, label %for.body6, label %for.inc57

for.body6:                                        ; preds = %land.rhs
  store i32 %1, i32* %arrayidx, align 4, !tbaa !0
  store i32 %0, i32* %arrayidx4, align 4, !tbaa !0
  %arrayidx19 = getelementptr inbounds i32* %ivec2, i64 %indvars.iv.next104
  %2 = load i32* %arrayidx19, align 4, !tbaa !0
  %arrayidx21 = getelementptr inbounds i32* %ivec2, i64 %indvars.iv103
  %3 = load i32* %arrayidx21, align 4, !tbaa !0
  store i32 %3, i32* %arrayidx19, align 4, !tbaa !0
  store i32 %2, i32* %arrayidx21, align 4, !tbaa !0
  %4 = trunc i64 %indvars.iv.next104 to i32
  %mul = shl nsw i32 %4, 1
  %idxprom28 = sext i32 %mul to i64
  %arrayidx29 = getelementptr inbounds double* %zvec, i64 %idxprom28
  %5 = load double* %arrayidx29, align 8, !tbaa !3
  %6 = trunc i64 %indvars.iv103 to i32
  %mul30 = shl nsw i32 %6, 1
  %idxprom31 = sext i32 %mul30 to i64
  %arrayidx32 = getelementptr inbounds double* %zvec, i64 %idxprom31
  %7 = load double* %arrayidx32, align 8, !tbaa !3
  store double %7, double* %arrayidx29, align 8, !tbaa !3
  store double %5, double* %arrayidx32, align 8, !tbaa !3
  %add97 = or i32 %mul, 1
  %idxprom42 = sext i32 %add97 to i64
  %arrayidx43 = getelementptr inbounds double* %zvec, i64 %idxprom42
  %8 = load double* %arrayidx43, align 8, !tbaa !3
  %add4598 = or i32 %mul30, 1
  %idxprom46 = sext i32 %add4598 to i64
  %arrayidx47 = getelementptr inbounds double* %zvec, i64 %idxprom46
  %9 = load double* %arrayidx47, align 8, !tbaa !3
  store double %9, double* %arrayidx43, align 8, !tbaa !3
  store double %8, double* %arrayidx47, align 8, !tbaa !3
  %cmp2 = icmp sgt i32 %4, 0
  br i1 %cmp2, label %land.rhs, label %for.inc57

for.inc57:                                        ; preds = %for.body6, %land.rhs
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end58, label %land.rhs.lr.ph

for.end58:                                        ; preds = %for.inc57, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @DVisortUp(i32 %n, double* nocapture %dvec) #1 {
entry:
  %cmp35 = icmp sgt i32 %n, 1
  br i1 %cmp35, label %land.rhs.lr.ph, label %for.end18

land.rhs.lr.ph:                                   ; preds = %for.inc17, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc17 ], [ 1, %entry ]
  %arrayidx4.phi.trans.insert = getelementptr inbounds double* %dvec, i64 %indvars.iv
  %.pre = load double* %arrayidx4.phi.trans.insert, align 8, !tbaa !3
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %for.body6
  %indvars.iv37 = phi i64 [ %indvars.iv, %land.rhs.lr.ph ], [ %indvars.iv.next38, %for.body6 ]
  %indvars.iv.next38 = add i64 %indvars.iv37, -1
  %arrayidx = getelementptr inbounds double* %dvec, i64 %indvars.iv.next38
  %0 = load double* %arrayidx, align 8, !tbaa !3
  %cmp5 = fcmp ogt double %0, %.pre
  br i1 %cmp5, label %for.body6, label %for.inc17

for.body6:                                        ; preds = %land.rhs
  %arrayidx4 = getelementptr inbounds double* %dvec, i64 %indvars.iv37
  store double %.pre, double* %arrayidx, align 8, !tbaa !3
  store double %0, double* %arrayidx4, align 8, !tbaa !3
  %1 = trunc i64 %indvars.iv.next38 to i32
  %cmp2 = icmp sgt i32 %1, 0
  br i1 %cmp2, label %land.rhs, label %for.inc17

for.inc17:                                        ; preds = %for.body6, %land.rhs
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end18, label %land.rhs.lr.ph

for.end18:                                        ; preds = %for.inc17, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @DVisortDown(i32 %n, double* nocapture %dvec) #1 {
entry:
  %cmp35 = icmp sgt i32 %n, 1
  br i1 %cmp35, label %land.rhs.lr.ph, label %for.end18

land.rhs.lr.ph:                                   ; preds = %for.inc17, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc17 ], [ 1, %entry ]
  %arrayidx4.phi.trans.insert = getelementptr inbounds double* %dvec, i64 %indvars.iv
  %.pre = load double* %arrayidx4.phi.trans.insert, align 8, !tbaa !3
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %for.body6
  %indvars.iv37 = phi i64 [ %indvars.iv, %land.rhs.lr.ph ], [ %indvars.iv.next38, %for.body6 ]
  %indvars.iv.next38 = add i64 %indvars.iv37, -1
  %arrayidx = getelementptr inbounds double* %dvec, i64 %indvars.iv.next38
  %0 = load double* %arrayidx, align 8, !tbaa !3
  %cmp5 = fcmp olt double %0, %.pre
  br i1 %cmp5, label %for.body6, label %for.inc17

for.body6:                                        ; preds = %land.rhs
  %arrayidx4 = getelementptr inbounds double* %dvec, i64 %indvars.iv37
  store double %.pre, double* %arrayidx, align 8, !tbaa !3
  store double %0, double* %arrayidx4, align 8, !tbaa !3
  %1 = trunc i64 %indvars.iv.next38 to i32
  %cmp2 = icmp sgt i32 %1, 0
  br i1 %cmp2, label %land.rhs, label %for.inc17

for.inc17:                                        ; preds = %for.body6, %land.rhs
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end18, label %land.rhs.lr.ph

for.end18:                                        ; preds = %for.inc17, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @DV2isortUp(i32 %n, double* nocapture %dvec1, double* nocapture %dvec2) #1 {
entry:
  %cmp53 = icmp sgt i32 %n, 1
  br i1 %cmp53, label %land.rhs.lr.ph, label %for.end28

land.rhs.lr.ph:                                   ; preds = %for.inc27, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc27 ], [ 1, %entry ]
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %for.body6
  %indvars.iv55 = phi i64 [ %indvars.iv, %land.rhs.lr.ph ], [ %indvars.iv.next56, %for.body6 ]
  %indvars.iv.next56 = add i64 %indvars.iv55, -1
  %arrayidx = getelementptr inbounds double* %dvec1, i64 %indvars.iv.next56
  %0 = load double* %arrayidx, align 8, !tbaa !3
  %arrayidx4 = getelementptr inbounds double* %dvec1, i64 %indvars.iv55
  %1 = load double* %arrayidx4, align 8, !tbaa !3
  %cmp5 = fcmp ogt double %0, %1
  br i1 %cmp5, label %for.body6, label %for.inc27

for.body6:                                        ; preds = %land.rhs
  store double %1, double* %arrayidx, align 8, !tbaa !3
  store double %0, double* %arrayidx4, align 8, !tbaa !3
  %arrayidx19 = getelementptr inbounds double* %dvec2, i64 %indvars.iv.next56
  %2 = load double* %arrayidx19, align 8, !tbaa !3
  %arrayidx21 = getelementptr inbounds double* %dvec2, i64 %indvars.iv55
  %3 = load double* %arrayidx21, align 8, !tbaa !3
  store double %3, double* %arrayidx19, align 8, !tbaa !3
  store double %2, double* %arrayidx21, align 8, !tbaa !3
  %4 = trunc i64 %indvars.iv.next56 to i32
  %cmp2 = icmp sgt i32 %4, 0
  br i1 %cmp2, label %land.rhs, label %for.inc27

for.inc27:                                        ; preds = %for.body6, %land.rhs
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end28, label %land.rhs.lr.ph

for.end28:                                        ; preds = %for.inc27, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @DV2isortDown(i32 %n, double* nocapture %dvec1, double* nocapture %dvec2) #1 {
entry:
  %cmp53 = icmp sgt i32 %n, 1
  br i1 %cmp53, label %land.rhs.lr.ph, label %for.end28

land.rhs.lr.ph:                                   ; preds = %for.inc27, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc27 ], [ 1, %entry ]
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %for.body6
  %indvars.iv55 = phi i64 [ %indvars.iv, %land.rhs.lr.ph ], [ %indvars.iv.next56, %for.body6 ]
  %indvars.iv.next56 = add i64 %indvars.iv55, -1
  %arrayidx = getelementptr inbounds double* %dvec1, i64 %indvars.iv.next56
  %0 = load double* %arrayidx, align 8, !tbaa !3
  %arrayidx4 = getelementptr inbounds double* %dvec1, i64 %indvars.iv55
  %1 = load double* %arrayidx4, align 8, !tbaa !3
  %cmp5 = fcmp olt double %0, %1
  br i1 %cmp5, label %for.body6, label %for.inc27

for.body6:                                        ; preds = %land.rhs
  store double %1, double* %arrayidx, align 8, !tbaa !3
  store double %0, double* %arrayidx4, align 8, !tbaa !3
  %arrayidx19 = getelementptr inbounds double* %dvec2, i64 %indvars.iv.next56
  %2 = load double* %arrayidx19, align 8, !tbaa !3
  %arrayidx21 = getelementptr inbounds double* %dvec2, i64 %indvars.iv55
  %3 = load double* %arrayidx21, align 8, !tbaa !3
  store double %3, double* %arrayidx19, align 8, !tbaa !3
  store double %2, double* %arrayidx21, align 8, !tbaa !3
  %4 = trunc i64 %indvars.iv.next56 to i32
  %cmp2 = icmp sgt i32 %4, 0
  br i1 %cmp2, label %land.rhs, label %for.inc27

for.inc27:                                        ; preds = %for.body6, %land.rhs
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end28, label %land.rhs.lr.ph

for.end28:                                        ; preds = %for.inc27, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @DVIVisortUp(i32 %n, double* nocapture %dvec, i32* nocapture %ivec) #1 {
entry:
  %cmp52 = icmp sgt i32 %n, 1
  br i1 %cmp52, label %land.rhs.lr.ph, label %for.end28

land.rhs.lr.ph:                                   ; preds = %for.inc27, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc27 ], [ 1, %entry ]
  %arrayidx4.phi.trans.insert = getelementptr inbounds double* %dvec, i64 %indvars.iv
  %.pre = load double* %arrayidx4.phi.trans.insert, align 8, !tbaa !3
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %for.body6
  %indvars.iv54 = phi i64 [ %indvars.iv, %land.rhs.lr.ph ], [ %indvars.iv.next55, %for.body6 ]
  %indvars.iv.next55 = add i64 %indvars.iv54, -1
  %arrayidx = getelementptr inbounds double* %dvec, i64 %indvars.iv.next55
  %0 = load double* %arrayidx, align 8, !tbaa !3
  %cmp5 = fcmp ogt double %0, %.pre
  br i1 %cmp5, label %for.body6, label %for.inc27

for.body6:                                        ; preds = %land.rhs
  %arrayidx4 = getelementptr inbounds double* %dvec, i64 %indvars.iv54
  %arrayidx9 = getelementptr inbounds i32* %ivec, i64 %indvars.iv.next55
  %1 = load i32* %arrayidx9, align 4, !tbaa !0
  %arrayidx11 = getelementptr inbounds i32* %ivec, i64 %indvars.iv54
  %2 = load i32* %arrayidx11, align 4, !tbaa !0
  store i32 %2, i32* %arrayidx9, align 4, !tbaa !0
  store i32 %1, i32* %arrayidx11, align 4, !tbaa !0
  store double %.pre, double* %arrayidx, align 8, !tbaa !3
  store double %0, double* %arrayidx4, align 8, !tbaa !3
  %3 = trunc i64 %indvars.iv.next55 to i32
  %cmp2 = icmp sgt i32 %3, 0
  br i1 %cmp2, label %land.rhs, label %for.inc27

for.inc27:                                        ; preds = %for.body6, %land.rhs
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end28, label %land.rhs.lr.ph

for.end28:                                        ; preds = %for.inc27, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @DVIVisortDown(i32 %n, double* nocapture %dvec, i32* nocapture %ivec) #1 {
entry:
  %cmp52 = icmp sgt i32 %n, 1
  br i1 %cmp52, label %land.rhs.lr.ph, label %for.end28

land.rhs.lr.ph:                                   ; preds = %for.inc27, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc27 ], [ 1, %entry ]
  %arrayidx4.phi.trans.insert = getelementptr inbounds double* %dvec, i64 %indvars.iv
  %.pre = load double* %arrayidx4.phi.trans.insert, align 8, !tbaa !3
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %for.body6
  %indvars.iv54 = phi i64 [ %indvars.iv, %land.rhs.lr.ph ], [ %indvars.iv.next55, %for.body6 ]
  %indvars.iv.next55 = add i64 %indvars.iv54, -1
  %arrayidx = getelementptr inbounds double* %dvec, i64 %indvars.iv.next55
  %0 = load double* %arrayidx, align 8, !tbaa !3
  %cmp5 = fcmp olt double %0, %.pre
  br i1 %cmp5, label %for.body6, label %for.inc27

for.body6:                                        ; preds = %land.rhs
  %arrayidx4 = getelementptr inbounds double* %dvec, i64 %indvars.iv54
  %arrayidx9 = getelementptr inbounds i32* %ivec, i64 %indvars.iv.next55
  %1 = load i32* %arrayidx9, align 4, !tbaa !0
  %arrayidx11 = getelementptr inbounds i32* %ivec, i64 %indvars.iv54
  %2 = load i32* %arrayidx11, align 4, !tbaa !0
  store i32 %2, i32* %arrayidx9, align 4, !tbaa !0
  store i32 %1, i32* %arrayidx11, align 4, !tbaa !0
  store double %.pre, double* %arrayidx, align 8, !tbaa !3
  store double %0, double* %arrayidx4, align 8, !tbaa !3
  %3 = trunc i64 %indvars.iv.next55 to i32
  %cmp2 = icmp sgt i32 %3, 0
  br i1 %cmp2, label %land.rhs, label %for.inc27

for.inc27:                                        ; preds = %for.body6, %land.rhs
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end28, label %land.rhs.lr.ph

for.end28:                                        ; preds = %for.inc27, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @IVqsortUp(i32 %n, i32* %ivec) #1 {
entry:
  %cmp230 = icmp slt i32 %n, 11
  br i1 %cmp230, label %if.then, label %if.else

if.then:                                          ; preds = %for.end97, %entry
  %ivec.tr.lcssa = phi i32* [ %ivec, %entry ], [ %add.ptr102, %for.end97 ]
  %n.tr.lcssa = phi i32 [ %n, %entry ], [ %sub70, %for.end97 ]
  tail call void @IVisortUp(i32 %n.tr.lcssa, i32* %ivec.tr.lcssa) #2
  ret void

if.else:                                          ; preds = %entry, %for.end97
  %ivec.tr232 = phi i32* [ %add.ptr102, %for.end97 ], [ %ivec, %entry ]
  %n.tr231 = phi i32 [ %sub70, %for.end97 ], [ %n, %entry ]
  %call = tail call fastcc i32 @Icentervalue(i32 %n.tr231, i32* %ivec.tr232) #2
  %sub = add nsw i32 %n.tr231, -1
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.end41, %if.else
  %b.0.ph = phi i32 [ 0, %if.else ], [ %inc50, %if.end41 ]
  %c.0.ph = phi i32 [ %sub, %if.else ], [ %dec51, %if.end41 ]
  %d.0.ph = phi i32 [ %sub, %if.else ], [ %d.1207, %if.end41 ]
  %a.0.ph = phi i32 [ 0, %if.else ], [ %a.0.lcssa, %if.end41 ]
  %cmp1211 = icmp sgt i32 %b.0.ph, %c.0.ph
  br i1 %cmp1211, label %while.cond16.preheader, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %while.cond.outer
  %0 = sext i32 %b.0.ph to i64
  br label %land.rhs

land.rhs:                                         ; preds = %if.end, %land.rhs.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end ], [ %0, %land.rhs.lr.ph ]
  %a.0213 = phi i32 [ %a.1, %if.end ], [ %a.0.ph, %land.rhs.lr.ph ]
  %b.0212 = phi i32 [ %inc15, %if.end ], [ %b.0.ph, %land.rhs.lr.ph ]
  %arrayidx = getelementptr inbounds i32* %ivec.tr232, i64 %indvars.iv
  %1 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp2 = icmp sgt i32 %1, %call
  br i1 %cmp2, label %while.cond16.preheader, label %while.body

while.cond16.preheader:                           ; preds = %if.end, %land.rhs, %while.cond.outer
  %a.0.lcssa = phi i32 [ %a.0.ph, %while.cond.outer ], [ %a.0213, %land.rhs ], [ %a.1, %if.end ]
  %b.0.lcssa = phi i32 [ %b.0.ph, %while.cond.outer ], [ %b.0212, %land.rhs ], [ %inc15, %if.end ]
  %cmp17205 = icmp slt i32 %c.0.ph, %b.0.lcssa
  br i1 %cmp17205, label %for.end, label %land.rhs18.lr.ph

land.rhs18.lr.ph:                                 ; preds = %while.cond16.preheader
  %2 = sext i32 %c.0.ph to i64
  br label %land.rhs18

while.body:                                       ; preds = %land.rhs
  %cmp5 = icmp eq i32 %1, %call
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %while.body
  %idxprom7 = sext i32 %a.0213 to i64
  %arrayidx8 = getelementptr inbounds i32* %ivec.tr232, i64 %idxprom7
  %3 = load i32* %arrayidx8, align 4, !tbaa !0
  store i32 %call, i32* %arrayidx8, align 4, !tbaa !0
  store i32 %3, i32* %arrayidx, align 4, !tbaa !0
  %inc = add nsw i32 %a.0213, 1
  br label %if.end

if.end:                                           ; preds = %if.then6, %while.body
  %a.1 = phi i32 [ %inc, %if.then6 ], [ %a.0213, %while.body ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc15 = add nsw i32 %b.0212, 1
  %4 = trunc i64 %indvars.iv to i32
  %cmp1 = icmp slt i32 %4, %c.0.ph
  br i1 %cmp1, label %land.rhs, label %while.cond16.preheader

land.rhs18:                                       ; preds = %if.end36, %land.rhs18.lr.ph
  %indvars.iv239 = phi i64 [ %indvars.iv.next240, %if.end36 ], [ %2, %land.rhs18.lr.ph ]
  %d.1207 = phi i32 [ %d.2, %if.end36 ], [ %d.0.ph, %land.rhs18.lr.ph ]
  %c.1206 = phi i32 [ %dec37, %if.end36 ], [ %c.0.ph, %land.rhs18.lr.ph ]
  %arrayidx20 = getelementptr inbounds i32* %ivec.tr232, i64 %indvars.iv239
  %5 = load i32* %arrayidx20, align 4, !tbaa !0
  %cmp21 = icmp slt i32 %5, %call
  br i1 %cmp21, label %if.end41, label %while.body23

while.body23:                                     ; preds = %land.rhs18
  %cmp26 = icmp eq i32 %5, %call
  br i1 %cmp26, label %if.then27, label %if.end36

if.then27:                                        ; preds = %while.body23
  %idxprom30 = sext i32 %d.1207 to i64
  %arrayidx31 = getelementptr inbounds i32* %ivec.tr232, i64 %idxprom30
  %6 = load i32* %arrayidx31, align 4, !tbaa !0
  store i32 %6, i32* %arrayidx20, align 4, !tbaa !0
  store i32 %call, i32* %arrayidx31, align 4, !tbaa !0
  %dec = add nsw i32 %d.1207, -1
  br label %if.end36

if.end36:                                         ; preds = %if.then27, %while.body23
  %d.2 = phi i32 [ %dec, %if.then27 ], [ %d.1207, %while.body23 ]
  %indvars.iv.next240 = add i64 %indvars.iv239, -1
  %dec37 = add nsw i32 %c.1206, -1
  %7 = trunc i64 %indvars.iv239 to i32
  %cmp17 = icmp sgt i32 %7, %b.0.lcssa
  br i1 %cmp17, label %land.rhs18, label %for.end

if.end41:                                         ; preds = %land.rhs18
  %idxprom42 = sext i32 %b.0.lcssa to i64
  %arrayidx43 = getelementptr inbounds i32* %ivec.tr232, i64 %idxprom42
  %8 = load i32* %arrayidx43, align 4, !tbaa !0
  %idxprom44 = sext i32 %c.1206 to i64
  %arrayidx45 = getelementptr inbounds i32* %ivec.tr232, i64 %idxprom44
  %9 = load i32* %arrayidx45, align 4, !tbaa !0
  store i32 %9, i32* %arrayidx43, align 4, !tbaa !0
  store i32 %8, i32* %arrayidx45, align 4, !tbaa !0
  %inc50 = add nsw i32 %b.0.lcssa, 1
  %dec51 = add nsw i32 %c.1206, -1
  br label %while.cond.outer

for.end:                                          ; preds = %while.cond16.preheader, %if.end36
  %d.1.lcssa = phi i32 [ %d.2, %if.end36 ], [ %d.0.ph, %while.cond16.preheader ]
  %c.1.lcssa = phi i32 [ %dec37, %if.end36 ], [ %c.0.ph, %while.cond16.preheader ]
  %sub52 = sub nsw i32 %b.0.lcssa, %a.0.lcssa
  %cmp53 = icmp sgt i32 %a.0.lcssa, %sub52
  %sub52.a.0 = select i1 %cmp53, i32 %sub52, i32 %a.0.lcssa
  %cmp57216 = icmp eq i32 %sub52.a.0, 0
  br i1 %cmp57216, label %for.end69, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.end
  %10 = add i32 %b.0.lcssa, 1
  %11 = add i32 %a.0.lcssa, -1
  %12 = sub i32 %11, %b.0.lcssa
  %13 = xor i32 %a.0.lcssa, -1
  %14 = icmp sgt i32 %12, %13
  %smax = select i1 %14, i32 %12, i32 %13
  %15 = add i32 %10, %smax
  %16 = sext i32 %15 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv250 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next251, %for.body ]
  %indvars.iv247 = phi i64 [ %16, %for.body.lr.ph ], [ %indvars.iv.next248, %for.body ]
  %s.0219 = phi i32 [ %sub52.a.0, %for.body.lr.ph ], [ %dec68, %for.body ]
  %arrayidx59 = getelementptr inbounds i32* %ivec.tr232, i64 %indvars.iv250
  %17 = load i32* %arrayidx59, align 4, !tbaa !0
  %arrayidx61 = getelementptr inbounds i32* %ivec.tr232, i64 %indvars.iv247
  %18 = load i32* %arrayidx61, align 4, !tbaa !0
  store i32 %18, i32* %arrayidx59, align 4, !tbaa !0
  store i32 %17, i32* %arrayidx61, align 4, !tbaa !0
  %indvars.iv.next251 = add i64 %indvars.iv250, 1
  %dec68 = add nsw i32 %s.0219, -1
  %cmp57 = icmp eq i32 %dec68, 0
  %indvars.iv.next248 = add i64 %indvars.iv247, 1
  br i1 %cmp57, label %for.end69, label %for.body

for.end69:                                        ; preds = %for.body, %for.end
  %sub70 = sub nsw i32 %d.1.lcssa, %c.1.lcssa
  %sub72 = sub nsw i32 %sub, %d.1.lcssa
  %cmp73 = icmp sgt i32 %sub70, %sub72
  %sub72.sub70 = select i1 %cmp73, i32 %sub72, i32 %sub70
  %cmp83220 = icmp eq i32 %sub72.sub70, 0
  br i1 %cmp83220, label %for.end97, label %for.body84.lr.ph

for.body84.lr.ph:                                 ; preds = %for.end69
  %19 = add i32 %n.tr231, 1
  %20 = sub i32 %d.1.lcssa, %n.tr231
  %21 = add i32 %c.1.lcssa, -1
  %22 = sub i32 %21, %d.1.lcssa
  %23 = icmp sgt i32 %20, %22
  %smax255 = select i1 %23, i32 %20, i32 %22
  %24 = add i32 %19, %smax255
  %25 = sext i32 %24 to i64
  %26 = sext i32 %b.0.lcssa to i64
  br label %for.body84

for.body84:                                       ; preds = %for.body84.lr.ph, %for.body84
  %indvars.iv259 = phi i64 [ %26, %for.body84.lr.ph ], [ %indvars.iv.next260, %for.body84 ]
  %indvars.iv256 = phi i64 [ %25, %for.body84.lr.ph ], [ %indvars.iv.next257, %for.body84 ]
  %s.1223 = phi i32 [ %sub72.sub70, %for.body84.lr.ph ], [ %dec96, %for.body84 ]
  %arrayidx86 = getelementptr inbounds i32* %ivec.tr232, i64 %indvars.iv259
  %27 = load i32* %arrayidx86, align 4, !tbaa !0
  %arrayidx88 = getelementptr inbounds i32* %ivec.tr232, i64 %indvars.iv256
  %28 = load i32* %arrayidx88, align 4, !tbaa !0
  store i32 %28, i32* %arrayidx86, align 4, !tbaa !0
  store i32 %27, i32* %arrayidx88, align 4, !tbaa !0
  %indvars.iv.next260 = add i64 %indvars.iv259, 1
  %dec96 = add nsw i32 %s.1223, -1
  %cmp83 = icmp eq i32 %dec96, 0
  %indvars.iv.next257 = add i64 %indvars.iv256, 1
  br i1 %cmp83, label %for.end97, label %for.body84

for.end97:                                        ; preds = %for.body84, %for.end69
  tail call void @IVqsortUp(i32 %sub52, i32* %ivec.tr232) #2
  %idx.ext = sext i32 %n.tr231 to i64
  %idx.ext101 = sext i32 %sub70 to i64
  %add.ptr.sum = sub i64 %idx.ext, %idx.ext101
  %add.ptr102 = getelementptr inbounds i32* %ivec.tr232, i64 %add.ptr.sum
  %cmp = icmp slt i32 %sub70, 11
  br i1 %cmp, label %if.then, label %if.else
}

; Function Attrs: nounwind optsize readonly uwtable
define internal fastcc i32 @Icentervalue(i32 %n, i32* nocapture %a) #0 {
entry:
  %div = sdiv i32 %n, 2
  %cmp = icmp sgt i32 %n, 7
  br i1 %cmp, label %if.then, label %if.end14

if.then:                                          ; preds = %entry
  %sub = add nsw i32 %n, -1
  %cmp1 = icmp sgt i32 %n, 39
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %div3 = sdiv i32 %n, 8
  %add5 = shl nsw i32 %div3, 1
  %call = tail call fastcc i32 @Imedian3(i32 0, i32 %div3, i32 %add5, i32* %a) #2
  %sub6 = sub nsw i32 %div, %div3
  %add7 = add nsw i32 %div3, %div
  %call8 = tail call fastcc i32 @Imedian3(i32 %sub6, i32 %div, i32 %add7, i32* %a) #2
  %sub9 = sub nsw i32 %sub, %div3
  %sub10 = sub nsw i32 %sub9, %div3
  %call12 = tail call fastcc i32 @Imedian3(i32 %sub10, i32 %sub9, i32 %sub, i32* %a) #2
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %j.0 = phi i32 [ %call8, %if.then2 ], [ %div, %if.then ]
  %k.0 = phi i32 [ %call12, %if.then2 ], [ %sub, %if.then ]
  %i.0 = phi i32 [ %call, %if.then2 ], [ 0, %if.then ]
  %call13 = tail call fastcc i32 @Imedian3(i32 %i.0, i32 %j.0, i32 %k.0, i32* %a) #2
  br label %if.end14

if.end14:                                         ; preds = %if.end, %entry
  %j.1 = phi i32 [ %call13, %if.end ], [ %div, %entry ]
  %idxprom = sext i32 %j.1 to i64
  %arrayidx = getelementptr inbounds i32* %a, i64 %idxprom
  %0 = load i32* %arrayidx, align 4, !tbaa !0
  ret i32 %0
}

; Function Attrs: nounwind optsize uwtable
define void @IVqsortDown(i32 %n, i32* %ivec) #1 {
entry:
  %cmp230 = icmp slt i32 %n, 11
  br i1 %cmp230, label %if.then, label %if.else

if.then:                                          ; preds = %for.end97, %entry
  %ivec.tr.lcssa = phi i32* [ %ivec, %entry ], [ %add.ptr102, %for.end97 ]
  %n.tr.lcssa = phi i32 [ %n, %entry ], [ %sub70, %for.end97 ]
  tail call void @IVisortDown(i32 %n.tr.lcssa, i32* %ivec.tr.lcssa) #2
  ret void

if.else:                                          ; preds = %entry, %for.end97
  %ivec.tr232 = phi i32* [ %add.ptr102, %for.end97 ], [ %ivec, %entry ]
  %n.tr231 = phi i32 [ %sub70, %for.end97 ], [ %n, %entry ]
  %call = tail call fastcc i32 @Icentervalue(i32 %n.tr231, i32* %ivec.tr232) #2
  %sub = add nsw i32 %n.tr231, -1
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.end41, %if.else
  %b.0.ph = phi i32 [ 0, %if.else ], [ %inc50, %if.end41 ]
  %c.0.ph = phi i32 [ %sub, %if.else ], [ %dec51, %if.end41 ]
  %d.0.ph = phi i32 [ %sub, %if.else ], [ %d.1207, %if.end41 ]
  %a.0.ph = phi i32 [ 0, %if.else ], [ %a.0.lcssa, %if.end41 ]
  %cmp1211 = icmp sgt i32 %b.0.ph, %c.0.ph
  br i1 %cmp1211, label %while.cond16.preheader, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %while.cond.outer
  %0 = sext i32 %b.0.ph to i64
  br label %land.rhs

land.rhs:                                         ; preds = %if.end, %land.rhs.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end ], [ %0, %land.rhs.lr.ph ]
  %a.0213 = phi i32 [ %a.1, %if.end ], [ %a.0.ph, %land.rhs.lr.ph ]
  %b.0212 = phi i32 [ %inc15, %if.end ], [ %b.0.ph, %land.rhs.lr.ph ]
  %arrayidx = getelementptr inbounds i32* %ivec.tr232, i64 %indvars.iv
  %1 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp2 = icmp slt i32 %1, %call
  br i1 %cmp2, label %while.cond16.preheader, label %while.body

while.cond16.preheader:                           ; preds = %if.end, %land.rhs, %while.cond.outer
  %a.0.lcssa = phi i32 [ %a.0.ph, %while.cond.outer ], [ %a.0213, %land.rhs ], [ %a.1, %if.end ]
  %b.0.lcssa = phi i32 [ %b.0.ph, %while.cond.outer ], [ %b.0212, %land.rhs ], [ %inc15, %if.end ]
  %cmp17205 = icmp slt i32 %c.0.ph, %b.0.lcssa
  br i1 %cmp17205, label %for.end, label %land.rhs18.lr.ph

land.rhs18.lr.ph:                                 ; preds = %while.cond16.preheader
  %2 = sext i32 %c.0.ph to i64
  br label %land.rhs18

while.body:                                       ; preds = %land.rhs
  %cmp5 = icmp eq i32 %1, %call
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %while.body
  %idxprom7 = sext i32 %a.0213 to i64
  %arrayidx8 = getelementptr inbounds i32* %ivec.tr232, i64 %idxprom7
  %3 = load i32* %arrayidx8, align 4, !tbaa !0
  store i32 %call, i32* %arrayidx8, align 4, !tbaa !0
  store i32 %3, i32* %arrayidx, align 4, !tbaa !0
  %inc = add nsw i32 %a.0213, 1
  br label %if.end

if.end:                                           ; preds = %if.then6, %while.body
  %a.1 = phi i32 [ %inc, %if.then6 ], [ %a.0213, %while.body ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc15 = add nsw i32 %b.0212, 1
  %4 = trunc i64 %indvars.iv to i32
  %cmp1 = icmp slt i32 %4, %c.0.ph
  br i1 %cmp1, label %land.rhs, label %while.cond16.preheader

land.rhs18:                                       ; preds = %if.end36, %land.rhs18.lr.ph
  %indvars.iv239 = phi i64 [ %indvars.iv.next240, %if.end36 ], [ %2, %land.rhs18.lr.ph ]
  %d.1207 = phi i32 [ %d.2, %if.end36 ], [ %d.0.ph, %land.rhs18.lr.ph ]
  %c.1206 = phi i32 [ %dec37, %if.end36 ], [ %c.0.ph, %land.rhs18.lr.ph ]
  %arrayidx20 = getelementptr inbounds i32* %ivec.tr232, i64 %indvars.iv239
  %5 = load i32* %arrayidx20, align 4, !tbaa !0
  %cmp21 = icmp sgt i32 %5, %call
  br i1 %cmp21, label %if.end41, label %while.body23

while.body23:                                     ; preds = %land.rhs18
  %cmp26 = icmp eq i32 %5, %call
  br i1 %cmp26, label %if.then27, label %if.end36

if.then27:                                        ; preds = %while.body23
  %idxprom30 = sext i32 %d.1207 to i64
  %arrayidx31 = getelementptr inbounds i32* %ivec.tr232, i64 %idxprom30
  %6 = load i32* %arrayidx31, align 4, !tbaa !0
  store i32 %6, i32* %arrayidx20, align 4, !tbaa !0
  store i32 %call, i32* %arrayidx31, align 4, !tbaa !0
  %dec = add nsw i32 %d.1207, -1
  br label %if.end36

if.end36:                                         ; preds = %if.then27, %while.body23
  %d.2 = phi i32 [ %dec, %if.then27 ], [ %d.1207, %while.body23 ]
  %indvars.iv.next240 = add i64 %indvars.iv239, -1
  %dec37 = add nsw i32 %c.1206, -1
  %7 = trunc i64 %indvars.iv239 to i32
  %cmp17 = icmp sgt i32 %7, %b.0.lcssa
  br i1 %cmp17, label %land.rhs18, label %for.end

if.end41:                                         ; preds = %land.rhs18
  %idxprom42 = sext i32 %b.0.lcssa to i64
  %arrayidx43 = getelementptr inbounds i32* %ivec.tr232, i64 %idxprom42
  %8 = load i32* %arrayidx43, align 4, !tbaa !0
  %idxprom44 = sext i32 %c.1206 to i64
  %arrayidx45 = getelementptr inbounds i32* %ivec.tr232, i64 %idxprom44
  %9 = load i32* %arrayidx45, align 4, !tbaa !0
  store i32 %9, i32* %arrayidx43, align 4, !tbaa !0
  store i32 %8, i32* %arrayidx45, align 4, !tbaa !0
  %inc50 = add nsw i32 %b.0.lcssa, 1
  %dec51 = add nsw i32 %c.1206, -1
  br label %while.cond.outer

for.end:                                          ; preds = %while.cond16.preheader, %if.end36
  %d.1.lcssa = phi i32 [ %d.2, %if.end36 ], [ %d.0.ph, %while.cond16.preheader ]
  %c.1.lcssa = phi i32 [ %dec37, %if.end36 ], [ %c.0.ph, %while.cond16.preheader ]
  %sub52 = sub nsw i32 %b.0.lcssa, %a.0.lcssa
  %cmp53 = icmp sgt i32 %a.0.lcssa, %sub52
  %sub52.a.0 = select i1 %cmp53, i32 %sub52, i32 %a.0.lcssa
  %cmp57216 = icmp eq i32 %sub52.a.0, 0
  br i1 %cmp57216, label %for.end69, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.end
  %10 = add i32 %b.0.lcssa, 1
  %11 = add i32 %a.0.lcssa, -1
  %12 = sub i32 %11, %b.0.lcssa
  %13 = xor i32 %a.0.lcssa, -1
  %14 = icmp sgt i32 %12, %13
  %smax = select i1 %14, i32 %12, i32 %13
  %15 = add i32 %10, %smax
  %16 = sext i32 %15 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv250 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next251, %for.body ]
  %indvars.iv247 = phi i64 [ %16, %for.body.lr.ph ], [ %indvars.iv.next248, %for.body ]
  %s.0219 = phi i32 [ %sub52.a.0, %for.body.lr.ph ], [ %dec68, %for.body ]
  %arrayidx59 = getelementptr inbounds i32* %ivec.tr232, i64 %indvars.iv250
  %17 = load i32* %arrayidx59, align 4, !tbaa !0
  %arrayidx61 = getelementptr inbounds i32* %ivec.tr232, i64 %indvars.iv247
  %18 = load i32* %arrayidx61, align 4, !tbaa !0
  store i32 %18, i32* %arrayidx59, align 4, !tbaa !0
  store i32 %17, i32* %arrayidx61, align 4, !tbaa !0
  %indvars.iv.next251 = add i64 %indvars.iv250, 1
  %dec68 = add nsw i32 %s.0219, -1
  %cmp57 = icmp eq i32 %dec68, 0
  %indvars.iv.next248 = add i64 %indvars.iv247, 1
  br i1 %cmp57, label %for.end69, label %for.body

for.end69:                                        ; preds = %for.body, %for.end
  %sub70 = sub nsw i32 %d.1.lcssa, %c.1.lcssa
  %sub72 = sub nsw i32 %sub, %d.1.lcssa
  %cmp73 = icmp sgt i32 %sub70, %sub72
  %sub72.sub70 = select i1 %cmp73, i32 %sub72, i32 %sub70
  %cmp83220 = icmp eq i32 %sub72.sub70, 0
  br i1 %cmp83220, label %for.end97, label %for.body84.lr.ph

for.body84.lr.ph:                                 ; preds = %for.end69
  %19 = add i32 %n.tr231, 1
  %20 = sub i32 %d.1.lcssa, %n.tr231
  %21 = add i32 %c.1.lcssa, -1
  %22 = sub i32 %21, %d.1.lcssa
  %23 = icmp sgt i32 %20, %22
  %smax255 = select i1 %23, i32 %20, i32 %22
  %24 = add i32 %19, %smax255
  %25 = sext i32 %24 to i64
  %26 = sext i32 %b.0.lcssa to i64
  br label %for.body84

for.body84:                                       ; preds = %for.body84.lr.ph, %for.body84
  %indvars.iv259 = phi i64 [ %26, %for.body84.lr.ph ], [ %indvars.iv.next260, %for.body84 ]
  %indvars.iv256 = phi i64 [ %25, %for.body84.lr.ph ], [ %indvars.iv.next257, %for.body84 ]
  %s.1223 = phi i32 [ %sub72.sub70, %for.body84.lr.ph ], [ %dec96, %for.body84 ]
  %arrayidx86 = getelementptr inbounds i32* %ivec.tr232, i64 %indvars.iv259
  %27 = load i32* %arrayidx86, align 4, !tbaa !0
  %arrayidx88 = getelementptr inbounds i32* %ivec.tr232, i64 %indvars.iv256
  %28 = load i32* %arrayidx88, align 4, !tbaa !0
  store i32 %28, i32* %arrayidx86, align 4, !tbaa !0
  store i32 %27, i32* %arrayidx88, align 4, !tbaa !0
  %indvars.iv.next260 = add i64 %indvars.iv259, 1
  %dec96 = add nsw i32 %s.1223, -1
  %cmp83 = icmp eq i32 %dec96, 0
  %indvars.iv.next257 = add i64 %indvars.iv256, 1
  br i1 %cmp83, label %for.end97, label %for.body84

for.end97:                                        ; preds = %for.body84, %for.end69
  tail call void @IVqsortDown(i32 %sub52, i32* %ivec.tr232) #2
  %idx.ext = sext i32 %n.tr231 to i64
  %idx.ext101 = sext i32 %sub70 to i64
  %add.ptr.sum = sub i64 %idx.ext, %idx.ext101
  %add.ptr102 = getelementptr inbounds i32* %ivec.tr232, i64 %add.ptr.sum
  %cmp = icmp slt i32 %sub70, 11
  br i1 %cmp, label %if.then, label %if.else
}

; Function Attrs: nounwind optsize uwtable
define void @IV2qsortUp(i32 %n, i32* %ivec1, i32* %ivec2) #1 {
entry:
  %cmp326 = icmp slt i32 %n, 11
  br i1 %cmp326, label %if.then, label %if.else

if.then:                                          ; preds = %for.end137, %entry
  %ivec2.tr.lcssa = phi i32* [ %ivec2, %entry ], [ %add.ptr148, %for.end137 ]
  %ivec1.tr.lcssa = phi i32* [ %ivec1, %entry ], [ %add.ptr142, %for.end137 ]
  %n.tr.lcssa = phi i32 [ %n, %entry ], [ %sub102, %for.end137 ]
  tail call void @IV2isortUp(i32 %n.tr.lcssa, i32* %ivec1.tr.lcssa, i32* %ivec2.tr.lcssa) #2
  ret void

if.else:                                          ; preds = %entry, %for.end137
  %ivec2.tr329 = phi i32* [ %add.ptr148, %for.end137 ], [ %ivec2, %entry ]
  %ivec1.tr328 = phi i32* [ %add.ptr142, %for.end137 ], [ %ivec1, %entry ]
  %n.tr327 = phi i32 [ %sub102, %for.end137 ], [ %n, %entry ]
  %call = tail call fastcc i32 @Icentervalue(i32 %n.tr327, i32* %ivec1.tr328) #2
  %sub = add nsw i32 %n.tr327, -1
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.end57, %if.else
  %b.0.ph = phi i32 [ 0, %if.else ], [ %inc74, %if.end57 ]
  %c.0.ph = phi i32 [ %sub, %if.else ], [ %dec75, %if.end57 ]
  %d.0.ph = phi i32 [ %sub, %if.else ], [ %d.1303, %if.end57 ]
  %a.0.ph = phi i32 [ 0, %if.else ], [ %a.0.lcssa, %if.end57 ]
  %cmp1307 = icmp sgt i32 %b.0.ph, %c.0.ph
  br i1 %cmp1307, label %while.cond24.preheader, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %while.cond.outer
  %0 = sext i32 %b.0.ph to i64
  br label %land.rhs

land.rhs:                                         ; preds = %if.end, %land.rhs.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end ], [ %0, %land.rhs.lr.ph ]
  %a.0309 = phi i32 [ %a.1, %if.end ], [ %a.0.ph, %land.rhs.lr.ph ]
  %b.0308 = phi i32 [ %inc23, %if.end ], [ %b.0.ph, %land.rhs.lr.ph ]
  %arrayidx = getelementptr inbounds i32* %ivec1.tr328, i64 %indvars.iv
  %1 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp2 = icmp sgt i32 %1, %call
  br i1 %cmp2, label %while.cond24.preheader, label %while.body

while.cond24.preheader:                           ; preds = %if.end, %land.rhs, %while.cond.outer
  %a.0.lcssa = phi i32 [ %a.0.ph, %while.cond.outer ], [ %a.0309, %land.rhs ], [ %a.1, %if.end ]
  %b.0.lcssa = phi i32 [ %b.0.ph, %while.cond.outer ], [ %b.0308, %land.rhs ], [ %inc23, %if.end ]
  %cmp25301 = icmp slt i32 %c.0.ph, %b.0.lcssa
  br i1 %cmp25301, label %for.end, label %land.rhs26.lr.ph

land.rhs26.lr.ph:                                 ; preds = %while.cond24.preheader
  %2 = sext i32 %c.0.ph to i64
  br label %land.rhs26

while.body:                                       ; preds = %land.rhs
  %cmp5 = icmp eq i32 %1, %call
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %while.body
  %idxprom7 = sext i32 %a.0309 to i64
  %arrayidx8 = getelementptr inbounds i32* %ivec1.tr328, i64 %idxprom7
  %3 = load i32* %arrayidx8, align 4, !tbaa !0
  store i32 %call, i32* %arrayidx8, align 4, !tbaa !0
  store i32 %3, i32* %arrayidx, align 4, !tbaa !0
  %arrayidx16 = getelementptr inbounds i32* %ivec2.tr329, i64 %idxprom7
  %4 = load i32* %arrayidx16, align 4, !tbaa !0
  %arrayidx18 = getelementptr inbounds i32* %ivec2.tr329, i64 %indvars.iv
  %5 = load i32* %arrayidx18, align 4, !tbaa !0
  store i32 %5, i32* %arrayidx16, align 4, !tbaa !0
  store i32 %4, i32* %arrayidx18, align 4, !tbaa !0
  %inc = add nsw i32 %a.0309, 1
  br label %if.end

if.end:                                           ; preds = %if.then6, %while.body
  %a.1 = phi i32 [ %inc, %if.then6 ], [ %a.0309, %while.body ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc23 = add nsw i32 %b.0308, 1
  %6 = trunc i64 %indvars.iv to i32
  %cmp1 = icmp slt i32 %6, %c.0.ph
  br i1 %cmp1, label %land.rhs, label %while.cond24.preheader

land.rhs26:                                       ; preds = %if.end52, %land.rhs26.lr.ph
  %indvars.iv337 = phi i64 [ %indvars.iv.next338, %if.end52 ], [ %2, %land.rhs26.lr.ph ]
  %d.1303 = phi i32 [ %d.2, %if.end52 ], [ %d.0.ph, %land.rhs26.lr.ph ]
  %c.1302 = phi i32 [ %dec53, %if.end52 ], [ %c.0.ph, %land.rhs26.lr.ph ]
  %arrayidx28 = getelementptr inbounds i32* %ivec1.tr328, i64 %indvars.iv337
  %7 = load i32* %arrayidx28, align 4, !tbaa !0
  %cmp29 = icmp slt i32 %7, %call
  br i1 %cmp29, label %if.end57, label %while.body31

while.body31:                                     ; preds = %land.rhs26
  %cmp34 = icmp eq i32 %7, %call
  br i1 %cmp34, label %if.then35, label %if.end52

if.then35:                                        ; preds = %while.body31
  %idxprom38 = sext i32 %d.1303 to i64
  %arrayidx39 = getelementptr inbounds i32* %ivec1.tr328, i64 %idxprom38
  %8 = load i32* %arrayidx39, align 4, !tbaa !0
  store i32 %8, i32* %arrayidx28, align 4, !tbaa !0
  store i32 %call, i32* %arrayidx39, align 4, !tbaa !0
  %arrayidx45 = getelementptr inbounds i32* %ivec2.tr329, i64 %indvars.iv337
  %9 = load i32* %arrayidx45, align 4, !tbaa !0
  %arrayidx47 = getelementptr inbounds i32* %ivec2.tr329, i64 %idxprom38
  %10 = load i32* %arrayidx47, align 4, !tbaa !0
  store i32 %10, i32* %arrayidx45, align 4, !tbaa !0
  store i32 %9, i32* %arrayidx47, align 4, !tbaa !0
  %dec = add nsw i32 %d.1303, -1
  br label %if.end52

if.end52:                                         ; preds = %if.then35, %while.body31
  %d.2 = phi i32 [ %dec, %if.then35 ], [ %d.1303, %while.body31 ]
  %indvars.iv.next338 = add i64 %indvars.iv337, -1
  %dec53 = add nsw i32 %c.1302, -1
  %11 = trunc i64 %indvars.iv337 to i32
  %cmp25 = icmp sgt i32 %11, %b.0.lcssa
  br i1 %cmp25, label %land.rhs26, label %for.end

if.end57:                                         ; preds = %land.rhs26
  %idxprom58 = sext i32 %b.0.lcssa to i64
  %arrayidx59 = getelementptr inbounds i32* %ivec1.tr328, i64 %idxprom58
  %12 = load i32* %arrayidx59, align 4, !tbaa !0
  %idxprom60 = sext i32 %c.1302 to i64
  %arrayidx61 = getelementptr inbounds i32* %ivec1.tr328, i64 %idxprom60
  %13 = load i32* %arrayidx61, align 4, !tbaa !0
  store i32 %13, i32* %arrayidx59, align 4, !tbaa !0
  store i32 %12, i32* %arrayidx61, align 4, !tbaa !0
  %arrayidx67 = getelementptr inbounds i32* %ivec2.tr329, i64 %idxprom58
  %14 = load i32* %arrayidx67, align 4, !tbaa !0
  %arrayidx69 = getelementptr inbounds i32* %ivec2.tr329, i64 %idxprom60
  %15 = load i32* %arrayidx69, align 4, !tbaa !0
  store i32 %15, i32* %arrayidx67, align 4, !tbaa !0
  store i32 %14, i32* %arrayidx69, align 4, !tbaa !0
  %inc74 = add nsw i32 %b.0.lcssa, 1
  %dec75 = add nsw i32 %c.1302, -1
  br label %while.cond.outer

for.end:                                          ; preds = %while.cond24.preheader, %if.end52
  %d.1.lcssa = phi i32 [ %d.2, %if.end52 ], [ %d.0.ph, %while.cond24.preheader ]
  %c.1.lcssa = phi i32 [ %dec53, %if.end52 ], [ %c.0.ph, %while.cond24.preheader ]
  %sub76 = sub nsw i32 %b.0.lcssa, %a.0.lcssa
  %cmp77 = icmp sgt i32 %a.0.lcssa, %sub76
  %sub76.a.0 = select i1 %cmp77, i32 %sub76, i32 %a.0.lcssa
  %cmp81312 = icmp eq i32 %sub76.a.0, 0
  br i1 %cmp81312, label %for.end101, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.end
  %16 = add i32 %b.0.lcssa, 1
  %17 = add i32 %a.0.lcssa, -1
  %18 = sub i32 %17, %b.0.lcssa
  %19 = xor i32 %a.0.lcssa, -1
  %20 = icmp sgt i32 %18, %19
  %smax = select i1 %20, i32 %18, i32 %19
  %21 = add i32 %16, %smax
  %22 = sext i32 %21 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv348 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next349, %for.body ]
  %indvars.iv345 = phi i64 [ %22, %for.body.lr.ph ], [ %indvars.iv.next346, %for.body ]
  %s.0315 = phi i32 [ %sub76.a.0, %for.body.lr.ph ], [ %dec100, %for.body ]
  %arrayidx83 = getelementptr inbounds i32* %ivec1.tr328, i64 %indvars.iv348
  %23 = load i32* %arrayidx83, align 4, !tbaa !0
  %arrayidx85 = getelementptr inbounds i32* %ivec1.tr328, i64 %indvars.iv345
  %24 = load i32* %arrayidx85, align 4, !tbaa !0
  store i32 %24, i32* %arrayidx83, align 4, !tbaa !0
  store i32 %23, i32* %arrayidx85, align 4, !tbaa !0
  %arrayidx91 = getelementptr inbounds i32* %ivec2.tr329, i64 %indvars.iv348
  %25 = load i32* %arrayidx91, align 4, !tbaa !0
  %arrayidx93 = getelementptr inbounds i32* %ivec2.tr329, i64 %indvars.iv345
  %26 = load i32* %arrayidx93, align 4, !tbaa !0
  store i32 %26, i32* %arrayidx91, align 4, !tbaa !0
  store i32 %25, i32* %arrayidx93, align 4, !tbaa !0
  %indvars.iv.next349 = add i64 %indvars.iv348, 1
  %dec100 = add nsw i32 %s.0315, -1
  %cmp81 = icmp eq i32 %dec100, 0
  %indvars.iv.next346 = add i64 %indvars.iv345, 1
  br i1 %cmp81, label %for.end101, label %for.body

for.end101:                                       ; preds = %for.body, %for.end
  %sub102 = sub nsw i32 %d.1.lcssa, %c.1.lcssa
  %sub104 = sub nsw i32 %sub, %d.1.lcssa
  %cmp105 = icmp sgt i32 %sub102, %sub104
  %sub104.sub102 = select i1 %cmp105, i32 %sub104, i32 %sub102
  %cmp115316 = icmp eq i32 %sub104.sub102, 0
  br i1 %cmp115316, label %for.end137, label %for.body116.lr.ph

for.body116.lr.ph:                                ; preds = %for.end101
  %27 = add i32 %n.tr327, 1
  %28 = sub i32 %d.1.lcssa, %n.tr327
  %29 = add i32 %c.1.lcssa, -1
  %30 = sub i32 %29, %d.1.lcssa
  %31 = icmp sgt i32 %28, %30
  %smax356 = select i1 %31, i32 %28, i32 %30
  %32 = add i32 %27, %smax356
  %33 = sext i32 %32 to i64
  %34 = sext i32 %b.0.lcssa to i64
  br label %for.body116

for.body116:                                      ; preds = %for.body116.lr.ph, %for.body116
  %indvars.iv360 = phi i64 [ %34, %for.body116.lr.ph ], [ %indvars.iv.next361, %for.body116 ]
  %indvars.iv357 = phi i64 [ %33, %for.body116.lr.ph ], [ %indvars.iv.next358, %for.body116 ]
  %s.1319 = phi i32 [ %sub104.sub102, %for.body116.lr.ph ], [ %dec136, %for.body116 ]
  %arrayidx118 = getelementptr inbounds i32* %ivec1.tr328, i64 %indvars.iv360
  %35 = load i32* %arrayidx118, align 4, !tbaa !0
  %arrayidx120 = getelementptr inbounds i32* %ivec1.tr328, i64 %indvars.iv357
  %36 = load i32* %arrayidx120, align 4, !tbaa !0
  store i32 %36, i32* %arrayidx118, align 4, !tbaa !0
  store i32 %35, i32* %arrayidx120, align 4, !tbaa !0
  %arrayidx126 = getelementptr inbounds i32* %ivec2.tr329, i64 %indvars.iv360
  %37 = load i32* %arrayidx126, align 4, !tbaa !0
  %arrayidx128 = getelementptr inbounds i32* %ivec2.tr329, i64 %indvars.iv357
  %38 = load i32* %arrayidx128, align 4, !tbaa !0
  store i32 %38, i32* %arrayidx126, align 4, !tbaa !0
  store i32 %37, i32* %arrayidx128, align 4, !tbaa !0
  %indvars.iv.next361 = add i64 %indvars.iv360, 1
  %dec136 = add nsw i32 %s.1319, -1
  %cmp115 = icmp eq i32 %dec136, 0
  %indvars.iv.next358 = add i64 %indvars.iv357, 1
  br i1 %cmp115, label %for.end137, label %for.body116

for.end137:                                       ; preds = %for.body116, %for.end101
  tail call void @IV2qsortUp(i32 %sub76, i32* %ivec1.tr328, i32* %ivec2.tr329) #2
  %idx.ext = sext i32 %n.tr327 to i64
  %idx.ext141 = sext i32 %sub102 to i64
  %add.ptr.sum = sub i64 %idx.ext, %idx.ext141
  %add.ptr142 = getelementptr inbounds i32* %ivec1.tr328, i64 %add.ptr.sum
  %add.ptr148 = getelementptr inbounds i32* %ivec2.tr329, i64 %add.ptr.sum
  %cmp = icmp slt i32 %sub102, 11
  br i1 %cmp, label %if.then, label %if.else
}

; Function Attrs: nounwind optsize uwtable
define void @IV2qsortDown(i32 %n, i32* %ivec1, i32* %ivec2) #1 {
entry:
  %cmp326 = icmp slt i32 %n, 11
  br i1 %cmp326, label %if.then, label %if.else

if.then:                                          ; preds = %for.end137, %entry
  %ivec2.tr.lcssa = phi i32* [ %ivec2, %entry ], [ %add.ptr148, %for.end137 ]
  %ivec1.tr.lcssa = phi i32* [ %ivec1, %entry ], [ %add.ptr142, %for.end137 ]
  %n.tr.lcssa = phi i32 [ %n, %entry ], [ %sub102, %for.end137 ]
  tail call void @IV2isortDown(i32 %n.tr.lcssa, i32* %ivec1.tr.lcssa, i32* %ivec2.tr.lcssa) #2
  ret void

if.else:                                          ; preds = %entry, %for.end137
  %ivec2.tr329 = phi i32* [ %add.ptr148, %for.end137 ], [ %ivec2, %entry ]
  %ivec1.tr328 = phi i32* [ %add.ptr142, %for.end137 ], [ %ivec1, %entry ]
  %n.tr327 = phi i32 [ %sub102, %for.end137 ], [ %n, %entry ]
  %call = tail call fastcc i32 @Icentervalue(i32 %n.tr327, i32* %ivec1.tr328) #2
  %sub = add nsw i32 %n.tr327, -1
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.end57, %if.else
  %b.0.ph = phi i32 [ 0, %if.else ], [ %inc74, %if.end57 ]
  %c.0.ph = phi i32 [ %sub, %if.else ], [ %dec75, %if.end57 ]
  %d.0.ph = phi i32 [ %sub, %if.else ], [ %d.1303, %if.end57 ]
  %a.0.ph = phi i32 [ 0, %if.else ], [ %a.0.lcssa, %if.end57 ]
  %cmp1307 = icmp sgt i32 %b.0.ph, %c.0.ph
  br i1 %cmp1307, label %while.cond24.preheader, label %land.rhs.lr.ph

land.rhs.lr.ph:                                   ; preds = %while.cond.outer
  %0 = sext i32 %b.0.ph to i64
  br label %land.rhs

land.rhs:                                         ; preds = %if.end, %land.rhs.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end ], [ %0, %land.rhs.lr.ph ]
  %a.0309 = phi i32 [ %a.1, %if.end ], [ %a.0.ph, %land.rhs.lr.ph ]
  %b.0308 = phi i32 [ %inc23, %if.end ], [ %b.0.ph, %land.rhs.lr.ph ]
  %arrayidx = getelementptr inbounds i32* %ivec1.tr328, i64 %indvars.iv
  %1 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp2 = icmp slt i32 %1, %call
  br i1 %cmp2, label %while.cond24.preheader, label %while.body

while.cond24.preheader:                           ; preds = %if.end, %land.rhs, %while.cond.outer
  %a.0.lcssa = phi i32 [ %a.0.ph, %while.cond.outer ], [ %a.0309, %land.rhs ], [ %a.1, %if.end ]
  %b.0.lcssa = phi i32 [ %b.0.ph, %while.cond.outer ], [ %b.0308, %land.rhs ], [ %inc23, %if.end ]
  %cmp25301 = icmp slt i32 %c.0.ph, %b.0.lcssa
  br i1 %cmp25301, label %for.end, label %land.rhs26.lr.ph

land.rhs26.lr.ph:                                 ; preds = %while.cond24.preheader
  %2 = sext i32 %c.0.ph to i64
  br label %land.rhs26

while.body:                                       ; preds = %land.rhs
  %cmp5 = icmp eq i32 %1, %call
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %while.body
  %idxprom7 = sext i32 %a.0309 to i64
  %arrayidx8 = getelementptr inbounds i32* %ivec1.tr328, i64 %idxprom7
  %3 = load i32* %arrayidx8, align 4, !tbaa !0
  store i32 %call, i32* %arrayidx8, align 4, !tbaa !0
  store i32 %3, i32* %arrayidx, align 4, !tbaa !0
  %arrayidx16 = getelementptr inbounds i32* %ivec2.tr329, i64 %idxprom7
  %4 = load i32* %arrayidx16, align 4, !tbaa !0
  %arrayidx18 = getelementptr inbounds i32* %ivec2.tr329, i64 %indvars.iv
  %5 = load i32* %arrayidx18, align 4, !tbaa !0
  store i32 %5, i32* %arrayidx16, align 4, !tbaa !0
  store i32 %4, i32* %arrayidx18, align 4, !tbaa !0
  %inc = add nsw i32 %a.0309, 1
  br label %if.end

if.end:                                           ; preds = %if.then6, %while.body
  %a.1 = phi i32 [ %inc, %if.then6 ], [ %a.0309, %while.body ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc23 = add nsw i32 %b.0308, 1
  %6 = trunc i64 %indvars.iv to i32
  %cmp1 = icmp slt i32 %6, %c.0.ph
  br i1 %cmp1, label %land.rhs, label %while.cond24.preheader

land.rhs26:                                       ; preds = %if.end52, %land.rhs26.lr.ph
  %indvars.iv337 = phi i64 [ %indvars.iv.next338, %if.end52 ], [ %2, %land.rhs26.lr.ph ]
  %d.1303 = phi i32 [ %d.2, %if.end52 ], [ %d.0.ph, %land.rhs26.lr.ph ]
  %c.1302 = phi i32 [ %dec53, %if.end52 ], [ %c.0.ph, %land.rhs26.lr.ph ]
  %arrayidx28 = getelementptr inbounds i32* %ivec1.tr328, i64 %indvars.iv337
  %7 = load i32* %arrayidx28, align 4, !tbaa !0
  %cmp29 = icmp sgt i32 %7, %call
  br i1 %cmp29, label %if.end57, label %while.body31

while.body31:                                     ; preds = %land.rhs26
  %cmp34 = icmp eq i32 %7, %call
  br i1 %cmp34, label %if.then35, label %if.end52

if.then35:                                        ; preds = %while.body31
  %idxprom38 = sext i32 %d.1303 to i64
  %arrayidx39 = getelementptr inbounds i32* %ivec1.tr328, i64 %idxprom38
  %8 = load i32* %arrayidx39, align 4, !tbaa !0
  store i32 %8, i32* %arrayidx28, align 4, !tbaa !0
  store i32 %call, i32* %arrayidx39, align 4, !tbaa !0
  %arrayidx45 = getelementptr inbounds i32* %ivec2.tr329, i64 %indvars.iv337
  %9 = load i32* %arrayidx45, align 4, !tbaa !0
  %arrayidx47 = getelementptr inbounds i32* %ivec2.tr329, i64 %idxprom38
  %10 = load i32* %arrayidx47, align 4, !tbaa !0
  store i32 %10, i32* %arrayidx45, align 4, !tbaa !0
  store i32 %9, i32* %arrayidx47, align 4, !tbaa !0
  %dec = add nsw i32 %d.1303, -1
  br label %if.end52

if.end52:                                         ; preds = %if.then35, %while.body31
  %d.2 = phi i32 [ %dec, %if.then35 ], [ %d.1303, %while.body31 ]
  %indvars.iv.next338 = add i64 %indvars.iv337, -1
  %dec53 = add nsw i32 %c.1302, -1
  %11 = trunc i64 %indvars.iv337 to i32
  %cmp25 = icmp sgt i32 %11, %b.0.lcssa
  br i1 %cmp25, label %land.rhs26, label %for.end

if.end57:                                         ; preds = %land.rhs26
  %idxprom58 = sext i32 %b.0.lcssa to i64
  %arrayidx59 = getelementptr inbounds i32* %ivec1.tr328, i64 %idxprom58
  %12 = load i32* %arrayidx59, align 4, !tbaa !0
  %idxprom60 = sext i32 %c.1302 to i64
  %arrayidx61 = getelementptr inbounds i32* %ivec1.tr328, i64 %idxprom60
  %13 = load i32* %arrayidx61, align 4, !tbaa !0
  store i32 %13, i32* %arrayidx59, align 4, !tbaa !0
  store i32 %12, i32* %arrayidx61, align 4, !tbaa !0
  %arrayidx67 = getelementptr inbounds i32* %ivec2.tr329, i64 %idxprom58
  %14 = load i32* %arrayidx67, align 4, !tbaa !0
  %arrayidx69 = getelementptr inbounds i32* %ivec2.tr329, i64 %idxprom60
  %15 = load i32* %arrayidx69, align 4, !tbaa !0
  store i32 %15, i32* %arrayidx67, align 4, !tbaa !0
  store i32 %14, i32* %arrayidx69, align 4, !tbaa !0
  %inc74 = add nsw i32 %b.0.lcssa, 1
  %dec75 = add nsw i32 %c.1302, -1
  br label %while.cond.outer

for.end:                                          ; preds = %while.cond24.preheader, %if.end52
  %d.1.lcssa = phi i32 [ %d.2, %if.end52 ], [ %d.0.ph, %while.cond24.preheader ]
  %c.1.lcssa = phi i32 [ %dec53, %if.end52 ], [ %c.0.ph, %while.cond24.preheader ]
  %sub76 = sub nsw i32 %b.0.lcssa, %a.0.lcssa
  %cmp77 = icmp sgt i32 %a.0.lcssa, %sub76
  %sub76.a.0 = select i1 %cmp77, i32 %sub76, i32 %a.0.lcssa
  %cmp81312 = icmp eq i32 %sub76.a.0, 0
  br i1 %cmp81312, label %for.end101, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.end
  %16 = add i32 %b.0.lcssa, 1
  %17 = add i32 %a.0.lcssa, -1
  %18 = sub i32 %17, %b.0.lcssa
  %19 = xor i32 %a.0.lcssa, -1
  %20 = icmp sgt i32 %18, %19
  %smax = select i1 %20, i32 %18, i32 %19
  %21 = add i32 %16, %smax
  %22 = sext i32 %21 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv348 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next349, %for.body ]
  %indvars.iv345 = phi i64 [ %22, %for.body.lr.ph ], [ %indvars.iv.next346, %for.body ]
  %s.0315 = phi i32 [ %sub76.a.0, %for.body.lr.ph ], [ %dec100, %for.body ]
  %arrayidx83 = getelementptr inbounds i32* %ivec1.tr328, i64 %indvars.iv348
  %23 = load i32* %arrayidx83, align 4, !tbaa !0
  %arrayidx85 = getelementptr inbounds i32* %ivec1.tr328, i64 %indvars.iv345
  %24 = load i32* %arrayidx85, align 4, !tbaa !0
  store i32 %24, i32* %arrayidx83, align 4, !tbaa !0
  store i32 %23, i32* %arrayidx85, align 4, !tbaa !0
  %arrayidx91 = getelementptr inbounds i32* %ivec2.tr329, i64 %indvars.iv348
  %25 = load i32* %arrayidx91, align 4, !tbaa !0
  %arrayidx93 = getelementptr inbounds i32* %ivec2.tr329, i64 %indvars.iv345
  %26 = load i32* %arrayidx93, align 4, !tbaa !0
  store i32 %26, i32* %arrayidx91, align 4, !tbaa !0
  store i32 %25, i32* %arrayidx93, align 4, !tbaa !0
  %indvars.iv.next349 = add i64 %indvars.iv348, 1
  %dec100 = add nsw i32 %s.0315, -1
  %cmp81 = icmp eq i32 %dec100, 0
  %indvars.iv.next346 = add i64 %indvars.iv345, 1
  br i1 %cmp81, label %for.end101, label %for.body

for.end101:                                       ; preds = %for.body, %for.end
  %sub102 = sub nsw i32 %d.1.lcssa, %c.1.lcssa
  %sub104 = sub nsw i32 %sub, %d.1.lcssa
  %cmp105 = icmp sgt i32 %sub102, %sub104
  %sub104.sub102 = select i1 %cmp105, i32 %sub104, i32 %sub102
  %cmp115316 = icmp eq i32 %sub104.sub102, 0
  br i1 %cmp115316, label %for.end137, label %for.body116.lr.ph

for.body116.lr.ph:                                ; preds = %for.end101
  %27 = add i32 %n.tr327, 1
  %28 = sub i32 %d.1.lcssa, %n.tr327
  %29 = add i32 %c.1.lcssa, -1
  %30 = sub i32 %29, %d.1.lcssa
  %31 = icmp sgt i32 %28, %30
  %smax356 = select i1 %31, i32 %28, i32 %30
  %32 = add i32 %27, %smax356
  %33 = sext i32 %32 to i64
  %34 = sext i32 %b.0.lcssa to i64
  br label %for.body116

for.body116:                                      ; preds = %for.body116.lr.ph, %for.body116
  %indvars.iv360 = phi i64 [ %34, %for.body116.lr.ph ], [ %indvars.iv.next361, %for.body116 ]
  %indvars.iv357 = phi i64 [ %33, %for.body116.lr.ph ], [ %indvars.iv.next358, %for.body116 ]
  %s.1319 = phi i32 [ %sub104.sub102, %for.body116.lr.ph ], [ %dec136, %for.body116 ]
  %arrayidx118 = getelementptr inbounds i32* %ivec1.tr328, i64 %indvars.iv360
  %35 = load i32* %arrayidx118, align 4, !tbaa !0
  %arrayidx120 = getelementptr inbounds i32* %ivec1.tr328, i64 %indvars.iv357
  %36 = load i32* %arrayidx120, align 4, !tbaa !0
  store i32 %36, i32* %arrayidx118, align 4, !tbaa !0
  store i32 %35, i32* %arrayidx120, align 4, !tbaa !0
  %arrayidx126 = getelementptr inbounds i32* %ivec2.tr329, i64 %indvars.iv360
  %37 = load i32* %arrayidx126, align 4, !tbaa !0
  %arrayidx128 = getelementptr inbounds i32* %ivec2.tr329, i64 %indvars.iv357
  %38 = load i32* %arrayidx128, align 4, !tbaa !0
  store i32 %38, i32* %arrayidx126, align 4, !tbaa !0
  store i32 %37, i32* %arrayidx128, align 4, !tbaa !0
  %indvars.iv.next361 = add i64 %indvars.iv360, 1
  %dec136 = add nsw i32 %s.1319, -1
  %cmp115 = icmp eq i32 %dec136, 0
  %indvars.iv.next358 = add i64 %indvars.iv357, 1
  br i1 %cmp115, label %for.end137, label %for.body116

for.end137:                                       ; preds = %for.body116, %for.end101
  tail call void @IV2qsortDown(i32 %sub76, i32* %ivec1.tr328, i32* %ivec2.tr329) #2
  %idx.ext = sext i32 %n.tr327 to i64
  %idx.ext141 = sext i32 %sub102 to i64
  %add.ptr.sum = sub i64 %idx.ext, %idx.ext141
  %add.ptr142 = getelementptr inbounds i32* %ivec1.tr328, i64 %add.ptr.sum
  %add.ptr148 = getelementptr inbounds i32* %ivec2.tr329, i64 %add.ptr.sum
  %cmp = icmp slt i32 %sub102, 11
  br i1 %cmp, label %if.then, label %if.else
}

; Function Attrs: nounwind optsize uwtable
define void @IVDVqsortUp(i32 %n, i32* %ivec, double* %dvec) #1 {
entry:
  %cmp321 = icmp slt i32 %n, 11
  br i1 %cmp321, label %if.then, label %if.else

if.then:                                          ; preds = %for.end137, %entry
  %dvec.tr.lcssa = phi double* [ %dvec, %entry ], [ %add.ptr148, %for.end137 ]
  %ivec.tr.lcssa = phi i32* [ %ivec, %entry ], [ %add.ptr142, %for.end137 ]
  %n.tr.lcssa = phi i32 [ %n, %entry ], [ %sub102, %for.end137 ]
  tail call void @IVDVisortUp(i32 %n.tr.lcssa, i32* %ivec.tr.lcssa, double* %dvec.tr.lcssa) #2
  ret void

if.else:                                          ; preds = %entry, %for.end137
  %dvec.tr324 = phi double* [ %add.ptr148, %for.end137 ], [ %dvec, %entry ]
  %ivec.tr323 = phi i32* [ %add.ptr142, %for.end137 ], [ %ivec, %entry ]
  %n.tr322 = phi i32 [ %sub102, %for.end137 ], [ %n, %entry ]
  %call = tail call fastcc i32 @Icentervalue(i32 %n.tr322, i32* %ivec.tr323) #2
  %sub = add nsw i32 %n.tr322, -1
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.end, %if.else
  %a.0.ph = phi i32 [ 0, %if.else ], [ %a.1, %if.end ]
  %b.0.ph = phi i32 [ 0, %if.else ], [ %inc23, %if.end ]
  %c.0.ph = phi i32 [ %sub, %if.else ], [ %c.0, %if.end ]
  %d.0.ph = phi i32 [ %sub, %if.else ], [ %d.0, %if.end ]
  %0 = sext i32 %b.0.ph to i64
  br label %while.cond

while.cond:                                       ; preds = %while.cond.outer, %if.end57
  %indvars.iv337 = phi i64 [ %0, %while.cond.outer ], [ %indvars.iv.next338, %if.end57 ]
  %b.0 = phi i32 [ %b.0.ph, %while.cond.outer ], [ %inc74, %if.end57 ]
  %c.0 = phi i32 [ %c.0.ph, %while.cond.outer ], [ %dec75, %if.end57 ]
  %d.0 = phi i32 [ %d.0.ph, %while.cond.outer ], [ %d.1302, %if.end57 ]
  %1 = trunc i64 %indvars.iv337 to i32
  %cmp1 = icmp sgt i32 %1, %c.0
  br i1 %cmp1, label %for.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %arrayidx = getelementptr inbounds i32* %ivec.tr323, i64 %indvars.iv337
  %2 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp2 = icmp sgt i32 %2, %call
  br i1 %cmp2, label %land.rhs26.lr.ph, label %while.body

land.rhs26.lr.ph:                                 ; preds = %land.rhs
  %3 = sext i32 %c.0 to i64
  br label %land.rhs26

while.body:                                       ; preds = %land.rhs
  %cmp5 = icmp eq i32 %2, %call
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %while.body
  %idxprom7 = sext i32 %a.0.ph to i64
  %arrayidx8 = getelementptr inbounds i32* %ivec.tr323, i64 %idxprom7
  %4 = load i32* %arrayidx8, align 4, !tbaa !0
  store i32 %call, i32* %arrayidx8, align 4, !tbaa !0
  store i32 %4, i32* %arrayidx, align 4, !tbaa !0
  %arrayidx16 = getelementptr inbounds double* %dvec.tr324, i64 %idxprom7
  %5 = load double* %arrayidx16, align 8, !tbaa !3
  %arrayidx18 = getelementptr inbounds double* %dvec.tr324, i64 %indvars.iv337
  %6 = load double* %arrayidx18, align 8, !tbaa !3
  store double %6, double* %arrayidx16, align 8, !tbaa !3
  store double %5, double* %arrayidx18, align 8, !tbaa !3
  %inc = add nsw i32 %a.0.ph, 1
  br label %if.end

if.end:                                           ; preds = %if.then6, %while.body
  %a.1 = phi i32 [ %inc, %if.then6 ], [ %a.0.ph, %while.body ]
  %inc23 = add nsw i32 %b.0, 1
  br label %while.cond.outer

land.rhs26:                                       ; preds = %if.end52, %land.rhs26.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end52 ], [ %3, %land.rhs26.lr.ph ]
  %d.1302 = phi i32 [ %d.2, %if.end52 ], [ %d.0, %land.rhs26.lr.ph ]
  %c.1301 = phi i32 [ %dec53, %if.end52 ], [ %c.0, %land.rhs26.lr.ph ]
  %arrayidx28 = getelementptr inbounds i32* %ivec.tr323, i64 %indvars.iv
  %7 = load i32* %arrayidx28, align 4, !tbaa !0
  %cmp29 = icmp slt i32 %7, %call
  br i1 %cmp29, label %if.end57, label %while.body31

while.body31:                                     ; preds = %land.rhs26
  %cmp34 = icmp eq i32 %7, %call
  br i1 %cmp34, label %if.then35, label %if.end52

if.then35:                                        ; preds = %while.body31
  %idxprom38 = sext i32 %d.1302 to i64
  %arrayidx39 = getelementptr inbounds i32* %ivec.tr323, i64 %idxprom38
  %8 = load i32* %arrayidx39, align 4, !tbaa !0
  store i32 %8, i32* %arrayidx28, align 4, !tbaa !0
  store i32 %call, i32* %arrayidx39, align 4, !tbaa !0
  %arrayidx45 = getelementptr inbounds double* %dvec.tr324, i64 %indvars.iv
  %9 = load double* %arrayidx45, align 8, !tbaa !3
  %arrayidx47 = getelementptr inbounds double* %dvec.tr324, i64 %idxprom38
  %10 = load double* %arrayidx47, align 8, !tbaa !3
  store double %10, double* %arrayidx45, align 8, !tbaa !3
  store double %9, double* %arrayidx47, align 8, !tbaa !3
  %dec = add nsw i32 %d.1302, -1
  br label %if.end52

if.end52:                                         ; preds = %if.then35, %while.body31
  %d.2 = phi i32 [ %dec, %if.then35 ], [ %d.1302, %while.body31 ]
  %indvars.iv.next = add i64 %indvars.iv, -1
  %dec53 = add nsw i32 %c.1301, -1
  %11 = trunc i64 %indvars.iv to i32
  %cmp25 = icmp sgt i32 %11, %1
  br i1 %cmp25, label %land.rhs26, label %for.end

if.end57:                                         ; preds = %land.rhs26
  %arrayidx59 = getelementptr inbounds i32* %ivec.tr323, i64 %indvars.iv337
  %12 = load i32* %arrayidx59, align 4, !tbaa !0
  %idxprom60 = sext i32 %c.1301 to i64
  %arrayidx61 = getelementptr inbounds i32* %ivec.tr323, i64 %idxprom60
  %13 = load i32* %arrayidx61, align 4, !tbaa !0
  store i32 %13, i32* %arrayidx59, align 4, !tbaa !0
  store i32 %12, i32* %arrayidx61, align 4, !tbaa !0
  %arrayidx67 = getelementptr inbounds double* %dvec.tr324, i64 %indvars.iv337
  %14 = load double* %arrayidx67, align 8, !tbaa !3
  %arrayidx69 = getelementptr inbounds double* %dvec.tr324, i64 %idxprom60
  %15 = load double* %arrayidx69, align 8, !tbaa !3
  store double %15, double* %arrayidx67, align 8, !tbaa !3
  store double %14, double* %arrayidx69, align 8, !tbaa !3
  %indvars.iv.next338 = add i64 %indvars.iv337, 1
  %inc74 = add nsw i32 %b.0, 1
  %dec75 = add nsw i32 %c.1301, -1
  br label %while.cond

for.end:                                          ; preds = %while.cond, %if.end52
  %d.1.lcssa = phi i32 [ %d.2, %if.end52 ], [ %d.0, %while.cond ]
  %c.1.lcssa = phi i32 [ %dec53, %if.end52 ], [ %c.0, %while.cond ]
  %sub76 = sub nsw i32 %b.0, %a.0.ph
  %cmp77 = icmp sgt i32 %a.0.ph, %sub76
  %sub76.a.0 = select i1 %cmp77, i32 %sub76, i32 %a.0.ph
  %cmp81311 = icmp eq i32 %sub76.a.0, 0
  br i1 %cmp81311, label %for.end101, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.end
  %16 = add i32 %b.0, 1
  %17 = add i32 %a.0.ph, -1
  %18 = sub i32 %17, %b.0
  %19 = xor i32 %a.0.ph, -1
  %20 = icmp sgt i32 %18, %19
  %smax = select i1 %20, i32 %18, i32 %19
  %21 = add i32 %16, %smax
  %22 = sext i32 %21 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv344 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next345, %for.body ]
  %indvars.iv341 = phi i64 [ %22, %for.body.lr.ph ], [ %indvars.iv.next342, %for.body ]
  %s.0314 = phi i32 [ %sub76.a.0, %for.body.lr.ph ], [ %dec100, %for.body ]
  %arrayidx83 = getelementptr inbounds i32* %ivec.tr323, i64 %indvars.iv344
  %23 = load i32* %arrayidx83, align 4, !tbaa !0
  %arrayidx85 = getelementptr inbounds i32* %ivec.tr323, i64 %indvars.iv341
  %24 = load i32* %arrayidx85, align 4, !tbaa !0
  store i32 %24, i32* %arrayidx83, align 4, !tbaa !0
  store i32 %23, i32* %arrayidx85, align 4, !tbaa !0
  %arrayidx91 = getelementptr inbounds double* %dvec.tr324, i64 %indvars.iv344
  %25 = load double* %arrayidx91, align 8, !tbaa !3
  %arrayidx93 = getelementptr inbounds double* %dvec.tr324, i64 %indvars.iv341
  %26 = load double* %arrayidx93, align 8, !tbaa !3
  store double %26, double* %arrayidx91, align 8, !tbaa !3
  store double %25, double* %arrayidx93, align 8, !tbaa !3
  %indvars.iv.next345 = add i64 %indvars.iv344, 1
  %dec100 = add nsw i32 %s.0314, -1
  %cmp81 = icmp eq i32 %dec100, 0
  %indvars.iv.next342 = add i64 %indvars.iv341, 1
  br i1 %cmp81, label %for.end101, label %for.body

for.end101:                                       ; preds = %for.body, %for.end
  %sub102 = sub nsw i32 %d.1.lcssa, %c.1.lcssa
  %sub104 = sub nsw i32 %sub, %d.1.lcssa
  %cmp105 = icmp sgt i32 %sub102, %sub104
  %sub104.sub102 = select i1 %cmp105, i32 %sub104, i32 %sub102
  %cmp115315 = icmp eq i32 %sub104.sub102, 0
  br i1 %cmp115315, label %for.end137, label %for.body116.lr.ph

for.body116.lr.ph:                                ; preds = %for.end101
  %27 = add i32 %n.tr322, 1
  %28 = sub i32 %d.1.lcssa, %n.tr322
  %29 = add i32 %c.1.lcssa, -1
  %30 = sub i32 %29, %d.1.lcssa
  %31 = icmp sgt i32 %28, %30
  %smax352 = select i1 %31, i32 %28, i32 %30
  %32 = add i32 %27, %smax352
  %33 = sext i32 %32 to i64
  %34 = sext i32 %b.0 to i64
  br label %for.body116

for.body116:                                      ; preds = %for.body116.lr.ph, %for.body116
  %indvars.iv356 = phi i64 [ %34, %for.body116.lr.ph ], [ %indvars.iv.next357, %for.body116 ]
  %indvars.iv353 = phi i64 [ %33, %for.body116.lr.ph ], [ %indvars.iv.next354, %for.body116 ]
  %s.1318 = phi i32 [ %sub104.sub102, %for.body116.lr.ph ], [ %dec136, %for.body116 ]
  %arrayidx118 = getelementptr inbounds i32* %ivec.tr323, i64 %indvars.iv356
  %35 = load i32* %arrayidx118, align 4, !tbaa !0
  %arrayidx120 = getelementptr inbounds i32* %ivec.tr323, i64 %indvars.iv353
  %36 = load i32* %arrayidx120, align 4, !tbaa !0
  store i32 %36, i32* %arrayidx118, align 4, !tbaa !0
  store i32 %35, i32* %arrayidx120, align 4, !tbaa !0
  %arrayidx126 = getelementptr inbounds double* %dvec.tr324, i64 %indvars.iv356
  %37 = load double* %arrayidx126, align 8, !tbaa !3
  %arrayidx128 = getelementptr inbounds double* %dvec.tr324, i64 %indvars.iv353
  %38 = load double* %arrayidx128, align 8, !tbaa !3
  store double %38, double* %arrayidx126, align 8, !tbaa !3
  store double %37, double* %arrayidx128, align 8, !tbaa !3
  %indvars.iv.next357 = add i64 %indvars.iv356, 1
  %dec136 = add nsw i32 %s.1318, -1
  %cmp115 = icmp eq i32 %dec136, 0
  %indvars.iv.next354 = add i64 %indvars.iv353, 1
  br i1 %cmp115, label %for.end137, label %for.body116

for.end137:                                       ; preds = %for.body116, %for.end101
  tail call void @IVDVqsortUp(i32 %sub76, i32* %ivec.tr323, double* %dvec.tr324) #2
  %idx.ext = sext i32 %n.tr322 to i64
  %idx.ext141 = sext i32 %sub102 to i64
  %add.ptr.sum = sub i64 %idx.ext, %idx.ext141
  %add.ptr142 = getelementptr inbounds i32* %ivec.tr323, i64 %add.ptr.sum
  %add.ptr148 = getelementptr inbounds double* %dvec.tr324, i64 %add.ptr.sum
  %cmp = icmp slt i32 %sub102, 11
  br i1 %cmp, label %if.then, label %if.else
}

; Function Attrs: nounwind optsize uwtable
define void @IVDVqsortDown(i32 %n, i32* %ivec, double* %dvec) #1 {
entry:
  %cmp321 = icmp slt i32 %n, 11
  br i1 %cmp321, label %if.then, label %if.else

if.then:                                          ; preds = %for.end137, %entry
  %dvec.tr.lcssa = phi double* [ %dvec, %entry ], [ %add.ptr148, %for.end137 ]
  %ivec.tr.lcssa = phi i32* [ %ivec, %entry ], [ %add.ptr142, %for.end137 ]
  %n.tr.lcssa = phi i32 [ %n, %entry ], [ %sub102, %for.end137 ]
  tail call void @IVDVisortDown(i32 %n.tr.lcssa, i32* %ivec.tr.lcssa, double* %dvec.tr.lcssa) #2
  ret void

if.else:                                          ; preds = %entry, %for.end137
  %dvec.tr324 = phi double* [ %add.ptr148, %for.end137 ], [ %dvec, %entry ]
  %ivec.tr323 = phi i32* [ %add.ptr142, %for.end137 ], [ %ivec, %entry ]
  %n.tr322 = phi i32 [ %sub102, %for.end137 ], [ %n, %entry ]
  %call = tail call fastcc i32 @Icentervalue(i32 %n.tr322, i32* %ivec.tr323) #2
  %sub = add nsw i32 %n.tr322, -1
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.end, %if.else
  %a.0.ph = phi i32 [ 0, %if.else ], [ %a.1, %if.end ]
  %b.0.ph = phi i32 [ 0, %if.else ], [ %inc23, %if.end ]
  %c.0.ph = phi i32 [ %sub, %if.else ], [ %c.0, %if.end ]
  %d.0.ph = phi i32 [ %sub, %if.else ], [ %d.0, %if.end ]
  %0 = sext i32 %b.0.ph to i64
  br label %while.cond

while.cond:                                       ; preds = %while.cond.outer, %if.end57
  %indvars.iv337 = phi i64 [ %0, %while.cond.outer ], [ %indvars.iv.next338, %if.end57 ]
  %b.0 = phi i32 [ %b.0.ph, %while.cond.outer ], [ %inc74, %if.end57 ]
  %c.0 = phi i32 [ %c.0.ph, %while.cond.outer ], [ %dec75, %if.end57 ]
  %d.0 = phi i32 [ %d.0.ph, %while.cond.outer ], [ %d.1302, %if.end57 ]
  %1 = trunc i64 %indvars.iv337 to i32
  %cmp1 = icmp sgt i32 %1, %c.0
  br i1 %cmp1, label %for.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %arrayidx = getelementptr inbounds i32* %ivec.tr323, i64 %indvars.iv337
  %2 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp2 = icmp slt i32 %2, %call
  br i1 %cmp2, label %land.rhs26.lr.ph, label %while.body

land.rhs26.lr.ph:                                 ; preds = %land.rhs
  %3 = sext i32 %c.0 to i64
  br label %land.rhs26

while.body:                                       ; preds = %land.rhs
  %cmp5 = icmp eq i32 %2, %call
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %while.body
  %idxprom7 = sext i32 %a.0.ph to i64
  %arrayidx8 = getelementptr inbounds i32* %ivec.tr323, i64 %idxprom7
  %4 = load i32* %arrayidx8, align 4, !tbaa !0
  store i32 %call, i32* %arrayidx8, align 4, !tbaa !0
  store i32 %4, i32* %arrayidx, align 4, !tbaa !0
  %arrayidx16 = getelementptr inbounds double* %dvec.tr324, i64 %idxprom7
  %5 = load double* %arrayidx16, align 8, !tbaa !3
  %arrayidx18 = getelementptr inbounds double* %dvec.tr324, i64 %indvars.iv337
  %6 = load double* %arrayidx18, align 8, !tbaa !3
  store double %6, double* %arrayidx16, align 8, !tbaa !3
  store double %5, double* %arrayidx18, align 8, !tbaa !3
  %inc = add nsw i32 %a.0.ph, 1
  br label %if.end

if.end:                                           ; preds = %if.then6, %while.body
  %a.1 = phi i32 [ %inc, %if.then6 ], [ %a.0.ph, %while.body ]
  %inc23 = add nsw i32 %b.0, 1
  br label %while.cond.outer

land.rhs26:                                       ; preds = %if.end52, %land.rhs26.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end52 ], [ %3, %land.rhs26.lr.ph ]
  %d.1302 = phi i32 [ %d.2, %if.end52 ], [ %d.0, %land.rhs26.lr.ph ]
  %c.1301 = phi i32 [ %dec53, %if.end52 ], [ %c.0, %land.rhs26.lr.ph ]
  %arrayidx28 = getelementptr inbounds i32* %ivec.tr323, i64 %indvars.iv
  %7 = load i32* %arrayidx28, align 4, !tbaa !0
  %cmp29 = icmp sgt i32 %7, %call
  br i1 %cmp29, label %if.end57, label %while.body31

while.body31:                                     ; preds = %land.rhs26
  %cmp34 = icmp eq i32 %7, %call
  br i1 %cmp34, label %if.then35, label %if.end52

if.then35:                                        ; preds = %while.body31
  %idxprom38 = sext i32 %d.1302 to i64
  %arrayidx39 = getelementptr inbounds i32* %ivec.tr323, i64 %idxprom38
  %8 = load i32* %arrayidx39, align 4, !tbaa !0
  store i32 %8, i32* %arrayidx28, align 4, !tbaa !0
  store i32 %call, i32* %arrayidx39, align 4, !tbaa !0
  %arrayidx45 = getelementptr inbounds double* %dvec.tr324, i64 %indvars.iv
  %9 = load double* %arrayidx45, align 8, !tbaa !3
  %arrayidx47 = getelementptr inbounds double* %dvec.tr324, i64 %idxprom38
  %10 = load double* %arrayidx47, align 8, !tbaa !3
  store double %10, double* %arrayidx45, align 8, !tbaa !3
  store double %9, double* %arrayidx47, align 8, !tbaa !3
  %dec = add nsw i32 %d.1302, -1
  br label %if.end52

if.end52:                                         ; preds = %if.then35, %while.body31
  %d.2 = phi i32 [ %dec, %if.then35 ], [ %d.1302, %while.body31 ]
  %indvars.iv.next = add i64 %indvars.iv, -1
  %dec53 = add nsw i32 %c.1301, -1
  %11 = trunc i64 %indvars.iv to i32
  %cmp25 = icmp sgt i32 %11, %1
  br i1 %cmp25, label %land.rhs26, label %for.end

if.end57:                                         ; preds = %land.rhs26
  %arrayidx59 = getelementptr inbounds i32* %ivec.tr323, i64 %indvars.iv337
  %12 = load i32* %arrayidx59, align 4, !tbaa !0
  %idxprom60 = sext i32 %c.1301 to i64
  %arrayidx61 = getelementptr inbounds i32* %ivec.tr323, i64 %idxprom60
  %13 = load i32* %arrayidx61, align 4, !tbaa !0
  store i32 %13, i32* %arrayidx59, align 4, !tbaa !0
  store i32 %12, i32* %arrayidx61, align 4, !tbaa !0
  %arrayidx67 = getelementptr inbounds double* %dvec.tr324, i64 %indvars.iv337
  %14 = load double* %arrayidx67, align 8, !tbaa !3
  %arrayidx69 = getelementptr inbounds double* %dvec.tr324, i64 %idxprom60
  %15 = load double* %arrayidx69, align 8, !tbaa !3
  store double %15, double* %arrayidx67, align 8, !tbaa !3
  store double %14, double* %arrayidx69, align 8, !tbaa !3
  %indvars.iv.next338 = add i64 %indvars.iv337, 1
  %inc74 = add nsw i32 %b.0, 1
  %dec75 = add nsw i32 %c.1301, -1
  br label %while.cond

for.end:                                          ; preds = %while.cond, %if.end52
  %d.1.lcssa = phi i32 [ %d.2, %if.end52 ], [ %d.0, %while.cond ]
  %c.1.lcssa = phi i32 [ %dec53, %if.end52 ], [ %c.0, %while.cond ]
  %sub76 = sub nsw i32 %b.0, %a.0.ph
  %cmp77 = icmp sgt i32 %a.0.ph, %sub76
  %sub76.a.0 = select i1 %cmp77, i32 %sub76, i32 %a.0.ph
  %cmp81311 = icmp eq i32 %sub76.a.0, 0
  br i1 %cmp81311, label %for.end101, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.end
  %16 = add i32 %b.0, 1
  %17 = add i32 %a.0.ph, -1
  %18 = sub i32 %17, %b.0
  %19 = xor i32 %a.0.ph, -1
  %20 = icmp sgt i32 %18, %19
  %smax = select i1 %20, i32 %18, i32 %19
  %21 = add i32 %16, %smax
  %22 = sext i32 %21 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv344 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next345, %for.body ]
  %indvars.iv341 = phi i64 [ %22, %for.body.lr.ph ], [ %indvars.iv.next342, %for.body ]
  %s.0314 = phi i32 [ %sub76.a.0, %for.body.lr.ph ], [ %dec100, %for.body ]
  %arrayidx83 = getelementptr inbounds i32* %ivec.tr323, i64 %indvars.iv344
  %23 = load i32* %arrayidx83, align 4, !tbaa !0
  %arrayidx85 = getelementptr inbounds i32* %ivec.tr323, i64 %indvars.iv341
  %24 = load i32* %arrayidx85, align 4, !tbaa !0
  store i32 %24, i32* %arrayidx83, align 4, !tbaa !0
  store i32 %23, i32* %arrayidx85, align 4, !tbaa !0
  %arrayidx91 = getelementptr inbounds double* %dvec.tr324, i64 %indvars.iv344
  %25 = load double* %arrayidx91, align 8, !tbaa !3
  %arrayidx93 = getelementptr inbounds double* %dvec.tr324, i64 %indvars.iv341
  %26 = load double* %arrayidx93, align 8, !tbaa !3
  store double %26, double* %arrayidx91, align 8, !tbaa !3
  store double %25, double* %arrayidx93, align 8, !tbaa !3
  %indvars.iv.next345 = add i64 %indvars.iv344, 1
  %dec100 = add nsw i32 %s.0314, -1
  %cmp81 = icmp eq i32 %dec100, 0
  %indvars.iv.next342 = add i64 %indvars.iv341, 1
  br i1 %cmp81, label %for.end101, label %for.body

for.end101:                                       ; preds = %for.body, %for.end
  %sub102 = sub nsw i32 %d.1.lcssa, %c.1.lcssa
  %sub104 = sub nsw i32 %sub, %d.1.lcssa
  %cmp105 = icmp sgt i32 %sub102, %sub104
  %sub104.sub102 = select i1 %cmp105, i32 %sub104, i32 %sub102
  %cmp115315 = icmp eq i32 %sub104.sub102, 0
  br i1 %cmp115315, label %for.end137, label %for.body116.lr.ph

for.body116.lr.ph:                                ; preds = %for.end101
  %27 = add i32 %n.tr322, 1
  %28 = sub i32 %d.1.lcssa, %n.tr322
  %29 = add i32 %c.1.lcssa, -1
  %30 = sub i32 %29, %d.1.lcssa
  %31 = icmp sgt i32 %28, %30
  %smax352 = select i1 %31, i32 %28, i32 %30
  %32 = add i32 %27, %smax352
  %33 = sext i32 %32 to i64
  %34 = sext i32 %b.0 to i64
  br label %for.body116

for.body116:                                      ; preds = %for.body116.lr.ph, %for.body116
  %indvars.iv356 = phi i64 [ %34, %for.body116.lr.ph ], [ %indvars.iv.next357, %for.body116 ]
  %indvars.iv353 = phi i64 [ %33, %for.body116.lr.ph ], [ %indvars.iv.next354, %for.body116 ]
  %s.1318 = phi i32 [ %sub104.sub102, %for.body116.lr.ph ], [ %dec136, %for.body116 ]
  %arrayidx118 = getelementptr inbounds i32* %ivec.tr323, i64 %indvars.iv356
  %35 = load i32* %arrayidx118, align 4, !tbaa !0
  %arrayidx120 = getelementptr inbounds i32* %ivec.tr323, i64 %indvars.iv353
  %36 = load i32* %arrayidx120, align 4, !tbaa !0
  store i32 %36, i32* %arrayidx118, align 4, !tbaa !0
  store i32 %35, i32* %arrayidx120, align 4, !tbaa !0
  %arrayidx126 = getelementptr inbounds double* %dvec.tr324, i64 %indvars.iv356
  %37 = load double* %arrayidx126, align 8, !tbaa !3
  %arrayidx128 = getelementptr inbounds double* %dvec.tr324, i64 %indvars.iv353
  %38 = load double* %arrayidx128, align 8, !tbaa !3
  store double %38, double* %arrayidx126, align 8, !tbaa !3
  store double %37, double* %arrayidx128, align 8, !tbaa !3
  %indvars.iv.next357 = add i64 %indvars.iv356, 1
  %dec136 = add nsw i32 %s.1318, -1
  %cmp115 = icmp eq i32 %dec136, 0
  %indvars.iv.next354 = add i64 %indvars.iv353, 1
  br i1 %cmp115, label %for.end137, label %for.body116

for.end137:                                       ; preds = %for.body116, %for.end101
  tail call void @IVDVqsortDown(i32 %sub76, i32* %ivec.tr323, double* %dvec.tr324) #2
  %idx.ext = sext i32 %n.tr322 to i64
  %idx.ext141 = sext i32 %sub102 to i64
  %add.ptr.sum = sub i64 %idx.ext, %idx.ext141
  %add.ptr142 = getelementptr inbounds i32* %ivec.tr323, i64 %add.ptr.sum
  %add.ptr148 = getelementptr inbounds double* %dvec.tr324, i64 %add.ptr.sum
  %cmp = icmp slt i32 %sub102, 11
  br i1 %cmp, label %if.then, label %if.else
}

; Function Attrs: nounwind optsize uwtable
define void @IV2DVqsortUp(i32 %n, i32* %ivec1, i32* %ivec2, double* %dvec) #1 {
entry:
  %cmp417 = icmp slt i32 %n, 11
  br i1 %cmp417, label %if.then, label %if.else

if.then:                                          ; preds = %for.end177, %entry
  %dvec.tr.lcssa = phi double* [ %dvec, %entry ], [ %add.ptr194, %for.end177 ]
  %ivec2.tr.lcssa = phi i32* [ %ivec2, %entry ], [ %add.ptr188, %for.end177 ]
  %ivec1.tr.lcssa = phi i32* [ %ivec1, %entry ], [ %add.ptr182, %for.end177 ]
  %n.tr.lcssa = phi i32 [ %n, %entry ], [ %sub134, %for.end177 ]
  tail call void @IV2DVisortUp(i32 %n.tr.lcssa, i32* %ivec1.tr.lcssa, i32* %ivec2.tr.lcssa, double* %dvec.tr.lcssa) #2
  ret void

if.else:                                          ; preds = %entry, %for.end177
  %dvec.tr421 = phi double* [ %add.ptr194, %for.end177 ], [ %dvec, %entry ]
  %ivec2.tr420 = phi i32* [ %add.ptr188, %for.end177 ], [ %ivec2, %entry ]
  %ivec1.tr419 = phi i32* [ %add.ptr182, %for.end177 ], [ %ivec1, %entry ]
  %n.tr418 = phi i32 [ %sub134, %for.end177 ], [ %n, %entry ]
  %call = tail call fastcc i32 @Icentervalue(i32 %n.tr418, i32* %ivec1.tr419) #2
  %sub = add nsw i32 %n.tr418, -1
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.end, %if.else
  %a.0.ph = phi i32 [ 0, %if.else ], [ %a.1, %if.end ]
  %b.0.ph = phi i32 [ 0, %if.else ], [ %inc31, %if.end ]
  %c.0.ph = phi i32 [ %sub, %if.else ], [ %c.0, %if.end ]
  %d.0.ph = phi i32 [ %sub, %if.else ], [ %d.0, %if.end ]
  %0 = sext i32 %b.0.ph to i64
  br label %while.cond

while.cond:                                       ; preds = %while.cond.outer, %if.end73
  %indvars.iv435 = phi i64 [ %0, %while.cond.outer ], [ %indvars.iv.next436, %if.end73 ]
  %b.0 = phi i32 [ %b.0.ph, %while.cond.outer ], [ %inc98, %if.end73 ]
  %c.0 = phi i32 [ %c.0.ph, %while.cond.outer ], [ %dec99, %if.end73 ]
  %d.0 = phi i32 [ %d.0.ph, %while.cond.outer ], [ %d.1398, %if.end73 ]
  %1 = trunc i64 %indvars.iv435 to i32
  %cmp1 = icmp sgt i32 %1, %c.0
  br i1 %cmp1, label %for.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %arrayidx = getelementptr inbounds i32* %ivec1.tr419, i64 %indvars.iv435
  %2 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp2 = icmp sgt i32 %2, %call
  br i1 %cmp2, label %land.rhs34.lr.ph, label %while.body

land.rhs34.lr.ph:                                 ; preds = %land.rhs
  %3 = sext i32 %c.0 to i64
  br label %land.rhs34

while.body:                                       ; preds = %land.rhs
  %cmp5 = icmp eq i32 %2, %call
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %while.body
  %idxprom7 = sext i32 %a.0.ph to i64
  %arrayidx8 = getelementptr inbounds i32* %ivec1.tr419, i64 %idxprom7
  %4 = load i32* %arrayidx8, align 4, !tbaa !0
  store i32 %call, i32* %arrayidx8, align 4, !tbaa !0
  store i32 %4, i32* %arrayidx, align 4, !tbaa !0
  %arrayidx16 = getelementptr inbounds i32* %ivec2.tr420, i64 %idxprom7
  %5 = load i32* %arrayidx16, align 4, !tbaa !0
  %arrayidx18 = getelementptr inbounds i32* %ivec2.tr420, i64 %indvars.iv435
  %6 = load i32* %arrayidx18, align 4, !tbaa !0
  store i32 %6, i32* %arrayidx16, align 4, !tbaa !0
  store i32 %5, i32* %arrayidx18, align 4, !tbaa !0
  %arrayidx24 = getelementptr inbounds double* %dvec.tr421, i64 %idxprom7
  %7 = load double* %arrayidx24, align 8, !tbaa !3
  %arrayidx26 = getelementptr inbounds double* %dvec.tr421, i64 %indvars.iv435
  %8 = load double* %arrayidx26, align 8, !tbaa !3
  store double %8, double* %arrayidx24, align 8, !tbaa !3
  store double %7, double* %arrayidx26, align 8, !tbaa !3
  %inc = add nsw i32 %a.0.ph, 1
  br label %if.end

if.end:                                           ; preds = %if.then6, %while.body
  %a.1 = phi i32 [ %inc, %if.then6 ], [ %a.0.ph, %while.body ]
  %inc31 = add nsw i32 %b.0, 1
  br label %while.cond.outer

land.rhs34:                                       ; preds = %if.end68, %land.rhs34.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end68 ], [ %3, %land.rhs34.lr.ph ]
  %d.1398 = phi i32 [ %d.2, %if.end68 ], [ %d.0, %land.rhs34.lr.ph ]
  %c.1397 = phi i32 [ %dec69, %if.end68 ], [ %c.0, %land.rhs34.lr.ph ]
  %arrayidx36 = getelementptr inbounds i32* %ivec1.tr419, i64 %indvars.iv
  %9 = load i32* %arrayidx36, align 4, !tbaa !0
  %cmp37 = icmp slt i32 %9, %call
  br i1 %cmp37, label %if.end73, label %while.body39

while.body39:                                     ; preds = %land.rhs34
  %cmp42 = icmp eq i32 %9, %call
  br i1 %cmp42, label %if.then43, label %if.end68

if.then43:                                        ; preds = %while.body39
  %idxprom46 = sext i32 %d.1398 to i64
  %arrayidx47 = getelementptr inbounds i32* %ivec1.tr419, i64 %idxprom46
  %10 = load i32* %arrayidx47, align 4, !tbaa !0
  store i32 %10, i32* %arrayidx36, align 4, !tbaa !0
  store i32 %call, i32* %arrayidx47, align 4, !tbaa !0
  %arrayidx53 = getelementptr inbounds i32* %ivec2.tr420, i64 %indvars.iv
  %11 = load i32* %arrayidx53, align 4, !tbaa !0
  %arrayidx55 = getelementptr inbounds i32* %ivec2.tr420, i64 %idxprom46
  %12 = load i32* %arrayidx55, align 4, !tbaa !0
  store i32 %12, i32* %arrayidx53, align 4, !tbaa !0
  store i32 %11, i32* %arrayidx55, align 4, !tbaa !0
  %arrayidx61 = getelementptr inbounds double* %dvec.tr421, i64 %indvars.iv
  %13 = load double* %arrayidx61, align 8, !tbaa !3
  %arrayidx63 = getelementptr inbounds double* %dvec.tr421, i64 %idxprom46
  %14 = load double* %arrayidx63, align 8, !tbaa !3
  store double %14, double* %arrayidx61, align 8, !tbaa !3
  store double %13, double* %arrayidx63, align 8, !tbaa !3
  %dec = add nsw i32 %d.1398, -1
  br label %if.end68

if.end68:                                         ; preds = %if.then43, %while.body39
  %d.2 = phi i32 [ %dec, %if.then43 ], [ %d.1398, %while.body39 ]
  %indvars.iv.next = add i64 %indvars.iv, -1
  %dec69 = add nsw i32 %c.1397, -1
  %15 = trunc i64 %indvars.iv to i32
  %cmp33 = icmp sgt i32 %15, %1
  br i1 %cmp33, label %land.rhs34, label %for.end

if.end73:                                         ; preds = %land.rhs34
  %arrayidx75 = getelementptr inbounds i32* %ivec1.tr419, i64 %indvars.iv435
  %16 = load i32* %arrayidx75, align 4, !tbaa !0
  %idxprom76 = sext i32 %c.1397 to i64
  %arrayidx77 = getelementptr inbounds i32* %ivec1.tr419, i64 %idxprom76
  %17 = load i32* %arrayidx77, align 4, !tbaa !0
  store i32 %17, i32* %arrayidx75, align 4, !tbaa !0
  store i32 %16, i32* %arrayidx77, align 4, !tbaa !0
  %arrayidx83 = getelementptr inbounds i32* %ivec2.tr420, i64 %indvars.iv435
  %18 = load i32* %arrayidx83, align 4, !tbaa !0
  %arrayidx85 = getelementptr inbounds i32* %ivec2.tr420, i64 %idxprom76
  %19 = load i32* %arrayidx85, align 4, !tbaa !0
  store i32 %19, i32* %arrayidx83, align 4, !tbaa !0
  store i32 %18, i32* %arrayidx85, align 4, !tbaa !0
  %arrayidx91 = getelementptr inbounds double* %dvec.tr421, i64 %indvars.iv435
  %20 = load double* %arrayidx91, align 8, !tbaa !3
  %arrayidx93 = getelementptr inbounds double* %dvec.tr421, i64 %idxprom76
  %21 = load double* %arrayidx93, align 8, !tbaa !3
  store double %21, double* %arrayidx91, align 8, !tbaa !3
  store double %20, double* %arrayidx93, align 8, !tbaa !3
  %indvars.iv.next436 = add i64 %indvars.iv435, 1
  %inc98 = add nsw i32 %b.0, 1
  %dec99 = add nsw i32 %c.1397, -1
  br label %while.cond

for.end:                                          ; preds = %while.cond, %if.end68
  %d.1.lcssa = phi i32 [ %d.2, %if.end68 ], [ %d.0, %while.cond ]
  %c.1.lcssa = phi i32 [ %dec69, %if.end68 ], [ %c.0, %while.cond ]
  %sub100 = sub nsw i32 %b.0, %a.0.ph
  %cmp101 = icmp sgt i32 %a.0.ph, %sub100
  %sub100.a.0 = select i1 %cmp101, i32 %sub100, i32 %a.0.ph
  %cmp105407 = icmp eq i32 %sub100.a.0, 0
  br i1 %cmp105407, label %for.end133, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.end
  %22 = add i32 %b.0, 1
  %23 = add i32 %a.0.ph, -1
  %24 = sub i32 %23, %b.0
  %25 = xor i32 %a.0.ph, -1
  %26 = icmp sgt i32 %24, %25
  %smax = select i1 %26, i32 %24, i32 %25
  %27 = add i32 %22, %smax
  %28 = sext i32 %27 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv442 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next443, %for.body ]
  %indvars.iv439 = phi i64 [ %28, %for.body.lr.ph ], [ %indvars.iv.next440, %for.body ]
  %s.0410 = phi i32 [ %sub100.a.0, %for.body.lr.ph ], [ %dec132, %for.body ]
  %arrayidx107 = getelementptr inbounds i32* %ivec1.tr419, i64 %indvars.iv442
  %29 = load i32* %arrayidx107, align 4, !tbaa !0
  %arrayidx109 = getelementptr inbounds i32* %ivec1.tr419, i64 %indvars.iv439
  %30 = load i32* %arrayidx109, align 4, !tbaa !0
  store i32 %30, i32* %arrayidx107, align 4, !tbaa !0
  store i32 %29, i32* %arrayidx109, align 4, !tbaa !0
  %arrayidx115 = getelementptr inbounds i32* %ivec2.tr420, i64 %indvars.iv442
  %31 = load i32* %arrayidx115, align 4, !tbaa !0
  %arrayidx117 = getelementptr inbounds i32* %ivec2.tr420, i64 %indvars.iv439
  %32 = load i32* %arrayidx117, align 4, !tbaa !0
  store i32 %32, i32* %arrayidx115, align 4, !tbaa !0
  store i32 %31, i32* %arrayidx117, align 4, !tbaa !0
  %arrayidx123 = getelementptr inbounds double* %dvec.tr421, i64 %indvars.iv442
  %33 = load double* %arrayidx123, align 8, !tbaa !3
  %arrayidx125 = getelementptr inbounds double* %dvec.tr421, i64 %indvars.iv439
  %34 = load double* %arrayidx125, align 8, !tbaa !3
  store double %34, double* %arrayidx123, align 8, !tbaa !3
  store double %33, double* %arrayidx125, align 8, !tbaa !3
  %indvars.iv.next443 = add i64 %indvars.iv442, 1
  %dec132 = add nsw i32 %s.0410, -1
  %cmp105 = icmp eq i32 %dec132, 0
  %indvars.iv.next440 = add i64 %indvars.iv439, 1
  br i1 %cmp105, label %for.end133, label %for.body

for.end133:                                       ; preds = %for.body, %for.end
  %sub134 = sub nsw i32 %d.1.lcssa, %c.1.lcssa
  %sub136 = sub nsw i32 %sub, %d.1.lcssa
  %cmp137 = icmp sgt i32 %sub134, %sub136
  %sub136.sub134 = select i1 %cmp137, i32 %sub136, i32 %sub134
  %cmp147411 = icmp eq i32 %sub136.sub134, 0
  br i1 %cmp147411, label %for.end177, label %for.body148.lr.ph

for.body148.lr.ph:                                ; preds = %for.end133
  %35 = add i32 %n.tr418, 1
  %36 = sub i32 %d.1.lcssa, %n.tr418
  %37 = add i32 %c.1.lcssa, -1
  %38 = sub i32 %37, %d.1.lcssa
  %39 = icmp sgt i32 %36, %38
  %smax453 = select i1 %39, i32 %36, i32 %38
  %40 = add i32 %35, %smax453
  %41 = sext i32 %40 to i64
  %42 = sext i32 %b.0 to i64
  br label %for.body148

for.body148:                                      ; preds = %for.body148.lr.ph, %for.body148
  %indvars.iv457 = phi i64 [ %42, %for.body148.lr.ph ], [ %indvars.iv.next458, %for.body148 ]
  %indvars.iv454 = phi i64 [ %41, %for.body148.lr.ph ], [ %indvars.iv.next455, %for.body148 ]
  %s.1414 = phi i32 [ %sub136.sub134, %for.body148.lr.ph ], [ %dec176, %for.body148 ]
  %arrayidx150 = getelementptr inbounds i32* %ivec1.tr419, i64 %indvars.iv457
  %43 = load i32* %arrayidx150, align 4, !tbaa !0
  %arrayidx152 = getelementptr inbounds i32* %ivec1.tr419, i64 %indvars.iv454
  %44 = load i32* %arrayidx152, align 4, !tbaa !0
  store i32 %44, i32* %arrayidx150, align 4, !tbaa !0
  store i32 %43, i32* %arrayidx152, align 4, !tbaa !0
  %arrayidx158 = getelementptr inbounds i32* %ivec2.tr420, i64 %indvars.iv457
  %45 = load i32* %arrayidx158, align 4, !tbaa !0
  %arrayidx160 = getelementptr inbounds i32* %ivec2.tr420, i64 %indvars.iv454
  %46 = load i32* %arrayidx160, align 4, !tbaa !0
  store i32 %46, i32* %arrayidx158, align 4, !tbaa !0
  store i32 %45, i32* %arrayidx160, align 4, !tbaa !0
  %arrayidx166 = getelementptr inbounds double* %dvec.tr421, i64 %indvars.iv457
  %47 = load double* %arrayidx166, align 8, !tbaa !3
  %arrayidx168 = getelementptr inbounds double* %dvec.tr421, i64 %indvars.iv454
  %48 = load double* %arrayidx168, align 8, !tbaa !3
  store double %48, double* %arrayidx166, align 8, !tbaa !3
  store double %47, double* %arrayidx168, align 8, !tbaa !3
  %indvars.iv.next458 = add i64 %indvars.iv457, 1
  %dec176 = add nsw i32 %s.1414, -1
  %cmp147 = icmp eq i32 %dec176, 0
  %indvars.iv.next455 = add i64 %indvars.iv454, 1
  br i1 %cmp147, label %for.end177, label %for.body148

for.end177:                                       ; preds = %for.body148, %for.end133
  tail call void @IV2DVqsortUp(i32 %sub100, i32* %ivec1.tr419, i32* %ivec2.tr420, double* %dvec.tr421) #2
  %idx.ext = sext i32 %n.tr418 to i64
  %idx.ext181 = sext i32 %sub134 to i64
  %add.ptr.sum = sub i64 %idx.ext, %idx.ext181
  %add.ptr182 = getelementptr inbounds i32* %ivec1.tr419, i64 %add.ptr.sum
  %add.ptr188 = getelementptr inbounds i32* %ivec2.tr420, i64 %add.ptr.sum
  %add.ptr194 = getelementptr inbounds double* %dvec.tr421, i64 %add.ptr.sum
  %cmp = icmp slt i32 %sub134, 11
  br i1 %cmp, label %if.then, label %if.else
}

; Function Attrs: nounwind optsize uwtable
define void @IV2DVqsortDown(i32 %n, i32* %ivec1, i32* %ivec2, double* %dvec) #1 {
entry:
  %cmp417 = icmp slt i32 %n, 11
  br i1 %cmp417, label %if.then, label %if.else

if.then:                                          ; preds = %for.end177, %entry
  %dvec.tr.lcssa = phi double* [ %dvec, %entry ], [ %add.ptr194, %for.end177 ]
  %ivec2.tr.lcssa = phi i32* [ %ivec2, %entry ], [ %add.ptr188, %for.end177 ]
  %ivec1.tr.lcssa = phi i32* [ %ivec1, %entry ], [ %add.ptr182, %for.end177 ]
  %n.tr.lcssa = phi i32 [ %n, %entry ], [ %sub134, %for.end177 ]
  tail call void @IV2DVisortDown(i32 %n.tr.lcssa, i32* %ivec1.tr.lcssa, i32* %ivec2.tr.lcssa, double* %dvec.tr.lcssa) #2
  ret void

if.else:                                          ; preds = %entry, %for.end177
  %dvec.tr421 = phi double* [ %add.ptr194, %for.end177 ], [ %dvec, %entry ]
  %ivec2.tr420 = phi i32* [ %add.ptr188, %for.end177 ], [ %ivec2, %entry ]
  %ivec1.tr419 = phi i32* [ %add.ptr182, %for.end177 ], [ %ivec1, %entry ]
  %n.tr418 = phi i32 [ %sub134, %for.end177 ], [ %n, %entry ]
  %call = tail call fastcc i32 @Icentervalue(i32 %n.tr418, i32* %ivec1.tr419) #2
  %sub = add nsw i32 %n.tr418, -1
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.end, %if.else
  %a.0.ph = phi i32 [ 0, %if.else ], [ %a.1, %if.end ]
  %b.0.ph = phi i32 [ 0, %if.else ], [ %inc31, %if.end ]
  %c.0.ph = phi i32 [ %sub, %if.else ], [ %c.0, %if.end ]
  %d.0.ph = phi i32 [ %sub, %if.else ], [ %d.0, %if.end ]
  %0 = sext i32 %b.0.ph to i64
  br label %while.cond

while.cond:                                       ; preds = %while.cond.outer, %if.end73
  %indvars.iv435 = phi i64 [ %0, %while.cond.outer ], [ %indvars.iv.next436, %if.end73 ]
  %b.0 = phi i32 [ %b.0.ph, %while.cond.outer ], [ %inc98, %if.end73 ]
  %c.0 = phi i32 [ %c.0.ph, %while.cond.outer ], [ %dec99, %if.end73 ]
  %d.0 = phi i32 [ %d.0.ph, %while.cond.outer ], [ %d.1398, %if.end73 ]
  %1 = trunc i64 %indvars.iv435 to i32
  %cmp1 = icmp sgt i32 %1, %c.0
  br i1 %cmp1, label %for.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %arrayidx = getelementptr inbounds i32* %ivec1.tr419, i64 %indvars.iv435
  %2 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp2 = icmp slt i32 %2, %call
  br i1 %cmp2, label %land.rhs34.lr.ph, label %while.body

land.rhs34.lr.ph:                                 ; preds = %land.rhs
  %3 = sext i32 %c.0 to i64
  br label %land.rhs34

while.body:                                       ; preds = %land.rhs
  %cmp5 = icmp eq i32 %2, %call
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %while.body
  %idxprom7 = sext i32 %a.0.ph to i64
  %arrayidx8 = getelementptr inbounds i32* %ivec1.tr419, i64 %idxprom7
  %4 = load i32* %arrayidx8, align 4, !tbaa !0
  store i32 %call, i32* %arrayidx8, align 4, !tbaa !0
  store i32 %4, i32* %arrayidx, align 4, !tbaa !0
  %arrayidx16 = getelementptr inbounds i32* %ivec2.tr420, i64 %idxprom7
  %5 = load i32* %arrayidx16, align 4, !tbaa !0
  %arrayidx18 = getelementptr inbounds i32* %ivec2.tr420, i64 %indvars.iv435
  %6 = load i32* %arrayidx18, align 4, !tbaa !0
  store i32 %6, i32* %arrayidx16, align 4, !tbaa !0
  store i32 %5, i32* %arrayidx18, align 4, !tbaa !0
  %arrayidx24 = getelementptr inbounds double* %dvec.tr421, i64 %idxprom7
  %7 = load double* %arrayidx24, align 8, !tbaa !3
  %arrayidx26 = getelementptr inbounds double* %dvec.tr421, i64 %indvars.iv435
  %8 = load double* %arrayidx26, align 8, !tbaa !3
  store double %8, double* %arrayidx24, align 8, !tbaa !3
  store double %7, double* %arrayidx26, align 8, !tbaa !3
  %inc = add nsw i32 %a.0.ph, 1
  br label %if.end

if.end:                                           ; preds = %if.then6, %while.body
  %a.1 = phi i32 [ %inc, %if.then6 ], [ %a.0.ph, %while.body ]
  %inc31 = add nsw i32 %b.0, 1
  br label %while.cond.outer

land.rhs34:                                       ; preds = %if.end68, %land.rhs34.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end68 ], [ %3, %land.rhs34.lr.ph ]
  %d.1398 = phi i32 [ %d.2, %if.end68 ], [ %d.0, %land.rhs34.lr.ph ]
  %c.1397 = phi i32 [ %dec69, %if.end68 ], [ %c.0, %land.rhs34.lr.ph ]
  %arrayidx36 = getelementptr inbounds i32* %ivec1.tr419, i64 %indvars.iv
  %9 = load i32* %arrayidx36, align 4, !tbaa !0
  %cmp37 = icmp sgt i32 %9, %call
  br i1 %cmp37, label %if.end73, label %while.body39

while.body39:                                     ; preds = %land.rhs34
  %cmp42 = icmp eq i32 %9, %call
  br i1 %cmp42, label %if.then43, label %if.end68

if.then43:                                        ; preds = %while.body39
  %idxprom46 = sext i32 %d.1398 to i64
  %arrayidx47 = getelementptr inbounds i32* %ivec1.tr419, i64 %idxprom46
  %10 = load i32* %arrayidx47, align 4, !tbaa !0
  store i32 %10, i32* %arrayidx36, align 4, !tbaa !0
  store i32 %call, i32* %arrayidx47, align 4, !tbaa !0
  %arrayidx53 = getelementptr inbounds i32* %ivec2.tr420, i64 %indvars.iv
  %11 = load i32* %arrayidx53, align 4, !tbaa !0
  %arrayidx55 = getelementptr inbounds i32* %ivec2.tr420, i64 %idxprom46
  %12 = load i32* %arrayidx55, align 4, !tbaa !0
  store i32 %12, i32* %arrayidx53, align 4, !tbaa !0
  store i32 %11, i32* %arrayidx55, align 4, !tbaa !0
  %arrayidx61 = getelementptr inbounds double* %dvec.tr421, i64 %indvars.iv
  %13 = load double* %arrayidx61, align 8, !tbaa !3
  %arrayidx63 = getelementptr inbounds double* %dvec.tr421, i64 %idxprom46
  %14 = load double* %arrayidx63, align 8, !tbaa !3
  store double %14, double* %arrayidx61, align 8, !tbaa !3
  store double %13, double* %arrayidx63, align 8, !tbaa !3
  %dec = add nsw i32 %d.1398, -1
  br label %if.end68

if.end68:                                         ; preds = %if.then43, %while.body39
  %d.2 = phi i32 [ %dec, %if.then43 ], [ %d.1398, %while.body39 ]
  %indvars.iv.next = add i64 %indvars.iv, -1
  %dec69 = add nsw i32 %c.1397, -1
  %15 = trunc i64 %indvars.iv to i32
  %cmp33 = icmp sgt i32 %15, %1
  br i1 %cmp33, label %land.rhs34, label %for.end

if.end73:                                         ; preds = %land.rhs34
  %arrayidx75 = getelementptr inbounds i32* %ivec1.tr419, i64 %indvars.iv435
  %16 = load i32* %arrayidx75, align 4, !tbaa !0
  %idxprom76 = sext i32 %c.1397 to i64
  %arrayidx77 = getelementptr inbounds i32* %ivec1.tr419, i64 %idxprom76
  %17 = load i32* %arrayidx77, align 4, !tbaa !0
  store i32 %17, i32* %arrayidx75, align 4, !tbaa !0
  store i32 %16, i32* %arrayidx77, align 4, !tbaa !0
  %arrayidx83 = getelementptr inbounds i32* %ivec2.tr420, i64 %indvars.iv435
  %18 = load i32* %arrayidx83, align 4, !tbaa !0
  %arrayidx85 = getelementptr inbounds i32* %ivec2.tr420, i64 %idxprom76
  %19 = load i32* %arrayidx85, align 4, !tbaa !0
  store i32 %19, i32* %arrayidx83, align 4, !tbaa !0
  store i32 %18, i32* %arrayidx85, align 4, !tbaa !0
  %arrayidx91 = getelementptr inbounds double* %dvec.tr421, i64 %indvars.iv435
  %20 = load double* %arrayidx91, align 8, !tbaa !3
  %arrayidx93 = getelementptr inbounds double* %dvec.tr421, i64 %idxprom76
  %21 = load double* %arrayidx93, align 8, !tbaa !3
  store double %21, double* %arrayidx91, align 8, !tbaa !3
  store double %20, double* %arrayidx93, align 8, !tbaa !3
  %indvars.iv.next436 = add i64 %indvars.iv435, 1
  %inc98 = add nsw i32 %b.0, 1
  %dec99 = add nsw i32 %c.1397, -1
  br label %while.cond

for.end:                                          ; preds = %while.cond, %if.end68
  %d.1.lcssa = phi i32 [ %d.2, %if.end68 ], [ %d.0, %while.cond ]
  %c.1.lcssa = phi i32 [ %dec69, %if.end68 ], [ %c.0, %while.cond ]
  %sub100 = sub nsw i32 %b.0, %a.0.ph
  %cmp101 = icmp sgt i32 %a.0.ph, %sub100
  %sub100.a.0 = select i1 %cmp101, i32 %sub100, i32 %a.0.ph
  %cmp105407 = icmp eq i32 %sub100.a.0, 0
  br i1 %cmp105407, label %for.end133, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.end
  %22 = add i32 %b.0, 1
  %23 = add i32 %a.0.ph, -1
  %24 = sub i32 %23, %b.0
  %25 = xor i32 %a.0.ph, -1
  %26 = icmp sgt i32 %24, %25
  %smax = select i1 %26, i32 %24, i32 %25
  %27 = add i32 %22, %smax
  %28 = sext i32 %27 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv442 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next443, %for.body ]
  %indvars.iv439 = phi i64 [ %28, %for.body.lr.ph ], [ %indvars.iv.next440, %for.body ]
  %s.0410 = phi i32 [ %sub100.a.0, %for.body.lr.ph ], [ %dec132, %for.body ]
  %arrayidx107 = getelementptr inbounds i32* %ivec1.tr419, i64 %indvars.iv442
  %29 = load i32* %arrayidx107, align 4, !tbaa !0
  %arrayidx109 = getelementptr inbounds i32* %ivec1.tr419, i64 %indvars.iv439
  %30 = load i32* %arrayidx109, align 4, !tbaa !0
  store i32 %30, i32* %arrayidx107, align 4, !tbaa !0
  store i32 %29, i32* %arrayidx109, align 4, !tbaa !0
  %arrayidx115 = getelementptr inbounds i32* %ivec2.tr420, i64 %indvars.iv442
  %31 = load i32* %arrayidx115, align 4, !tbaa !0
  %arrayidx117 = getelementptr inbounds i32* %ivec2.tr420, i64 %indvars.iv439
  %32 = load i32* %arrayidx117, align 4, !tbaa !0
  store i32 %32, i32* %arrayidx115, align 4, !tbaa !0
  store i32 %31, i32* %arrayidx117, align 4, !tbaa !0
  %arrayidx123 = getelementptr inbounds double* %dvec.tr421, i64 %indvars.iv442
  %33 = load double* %arrayidx123, align 8, !tbaa !3
  %arrayidx125 = getelementptr inbounds double* %dvec.tr421, i64 %indvars.iv439
  %34 = load double* %arrayidx125, align 8, !tbaa !3
  store double %34, double* %arrayidx123, align 8, !tbaa !3
  store double %33, double* %arrayidx125, align 8, !tbaa !3
  %indvars.iv.next443 = add i64 %indvars.iv442, 1
  %dec132 = add nsw i32 %s.0410, -1
  %cmp105 = icmp eq i32 %dec132, 0
  %indvars.iv.next440 = add i64 %indvars.iv439, 1
  br i1 %cmp105, label %for.end133, label %for.body

for.end133:                                       ; preds = %for.body, %for.end
  %sub134 = sub nsw i32 %d.1.lcssa, %c.1.lcssa
  %sub136 = sub nsw i32 %sub, %d.1.lcssa
  %cmp137 = icmp sgt i32 %sub134, %sub136
  %sub136.sub134 = select i1 %cmp137, i32 %sub136, i32 %sub134
  %cmp147411 = icmp eq i32 %sub136.sub134, 0
  br i1 %cmp147411, label %for.end177, label %for.body148.lr.ph

for.body148.lr.ph:                                ; preds = %for.end133
  %35 = add i32 %n.tr418, 1
  %36 = sub i32 %d.1.lcssa, %n.tr418
  %37 = add i32 %c.1.lcssa, -1
  %38 = sub i32 %37, %d.1.lcssa
  %39 = icmp sgt i32 %36, %38
  %smax453 = select i1 %39, i32 %36, i32 %38
  %40 = add i32 %35, %smax453
  %41 = sext i32 %40 to i64
  %42 = sext i32 %b.0 to i64
  br label %for.body148

for.body148:                                      ; preds = %for.body148.lr.ph, %for.body148
  %indvars.iv457 = phi i64 [ %42, %for.body148.lr.ph ], [ %indvars.iv.next458, %for.body148 ]
  %indvars.iv454 = phi i64 [ %41, %for.body148.lr.ph ], [ %indvars.iv.next455, %for.body148 ]
  %s.1414 = phi i32 [ %sub136.sub134, %for.body148.lr.ph ], [ %dec176, %for.body148 ]
  %arrayidx150 = getelementptr inbounds i32* %ivec1.tr419, i64 %indvars.iv457
  %43 = load i32* %arrayidx150, align 4, !tbaa !0
  %arrayidx152 = getelementptr inbounds i32* %ivec1.tr419, i64 %indvars.iv454
  %44 = load i32* %arrayidx152, align 4, !tbaa !0
  store i32 %44, i32* %arrayidx150, align 4, !tbaa !0
  store i32 %43, i32* %arrayidx152, align 4, !tbaa !0
  %arrayidx158 = getelementptr inbounds i32* %ivec2.tr420, i64 %indvars.iv457
  %45 = load i32* %arrayidx158, align 4, !tbaa !0
  %arrayidx160 = getelementptr inbounds i32* %ivec2.tr420, i64 %indvars.iv454
  %46 = load i32* %arrayidx160, align 4, !tbaa !0
  store i32 %46, i32* %arrayidx158, align 4, !tbaa !0
  store i32 %45, i32* %arrayidx160, align 4, !tbaa !0
  %arrayidx166 = getelementptr inbounds double* %dvec.tr421, i64 %indvars.iv457
  %47 = load double* %arrayidx166, align 8, !tbaa !3
  %arrayidx168 = getelementptr inbounds double* %dvec.tr421, i64 %indvars.iv454
  %48 = load double* %arrayidx168, align 8, !tbaa !3
  store double %48, double* %arrayidx166, align 8, !tbaa !3
  store double %47, double* %arrayidx168, align 8, !tbaa !3
  %indvars.iv.next458 = add i64 %indvars.iv457, 1
  %dec176 = add nsw i32 %s.1414, -1
  %cmp147 = icmp eq i32 %dec176, 0
  %indvars.iv.next455 = add i64 %indvars.iv454, 1
  br i1 %cmp147, label %for.end177, label %for.body148

for.end177:                                       ; preds = %for.body148, %for.end133
  tail call void @IV2DVqsortDown(i32 %sub100, i32* %ivec1.tr419, i32* %ivec2.tr420, double* %dvec.tr421) #2
  %idx.ext = sext i32 %n.tr418 to i64
  %idx.ext181 = sext i32 %sub134 to i64
  %add.ptr.sum = sub i64 %idx.ext, %idx.ext181
  %add.ptr182 = getelementptr inbounds i32* %ivec1.tr419, i64 %add.ptr.sum
  %add.ptr188 = getelementptr inbounds i32* %ivec2.tr420, i64 %add.ptr.sum
  %add.ptr194 = getelementptr inbounds double* %dvec.tr421, i64 %add.ptr.sum
  %cmp = icmp slt i32 %sub134, 11
  br i1 %cmp, label %if.then, label %if.else
}

; Function Attrs: nounwind optsize uwtable
define void @IVZVqsortUp(i32 %n, i32* %ivec, double* %zvec) #1 {
entry:
  %cmp473 = icmp slt i32 %n, 11
  br i1 %cmp473, label %if.then, label %if.else

if.then:                                          ; preds = %for.end235, %entry
  %zvec.tr.lcssa = phi double* [ %zvec, %entry ], [ %add.ptr245, %for.end235 ]
  %ivec.tr.lcssa = phi i32* [ %ivec, %entry ], [ %add.ptr240, %for.end235 ]
  %n.tr.lcssa = phi i32 [ %n, %entry ], [ %sub180, %for.end235 ]
  tail call void @IVZVisortUp(i32 %n.tr.lcssa, i32* %ivec.tr.lcssa, double* %zvec.tr.lcssa) #2
  ret void

if.else:                                          ; preds = %entry, %for.end235
  %zvec.tr476 = phi double* [ %add.ptr245, %for.end235 ], [ %zvec, %entry ]
  %ivec.tr475 = phi i32* [ %add.ptr240, %for.end235 ], [ %ivec, %entry ]
  %n.tr474 = phi i32 [ %sub180, %for.end235 ], [ %n, %entry ]
  %call = tail call fastcc i32 @Icentervalue(i32 %n.tr474, i32* %ivec.tr475) #2
  %sub = add nsw i32 %n.tr474, -1
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.end, %if.else
  %a.0.ph = phi i32 [ 0, %if.else ], [ %a.1, %if.end ]
  %b.0.ph = phi i32 [ 0, %if.else ], [ %inc41, %if.end ]
  %c.0.ph = phi i32 [ %sub, %if.else ], [ %c.0, %if.end ]
  %d.0.ph = phi i32 [ %sub, %if.else ], [ %d.0, %if.end ]
  %0 = sext i32 %b.0.ph to i64
  br label %while.cond

while.cond:                                       ; preds = %while.cond.outer, %if.end95
  %indvars.iv489 = phi i64 [ %0, %while.cond.outer ], [ %indvars.iv.next490, %if.end95 ]
  %b.0 = phi i32 [ %b.0.ph, %while.cond.outer ], [ %inc132, %if.end95 ]
  %c.0 = phi i32 [ %c.0.ph, %while.cond.outer ], [ %dec133, %if.end95 ]
  %d.0 = phi i32 [ %d.0.ph, %while.cond.outer ], [ %d.1454, %if.end95 ]
  %1 = trunc i64 %indvars.iv489 to i32
  %cmp1 = icmp sgt i32 %1, %c.0
  br i1 %cmp1, label %for.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %arrayidx = getelementptr inbounds i32* %ivec.tr475, i64 %indvars.iv489
  %2 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp2 = icmp sgt i32 %2, %call
  br i1 %cmp2, label %land.rhs44.lr.ph, label %while.body

land.rhs44.lr.ph:                                 ; preds = %land.rhs
  %3 = sext i32 %c.0 to i64
  br label %land.rhs44

while.body:                                       ; preds = %land.rhs
  %cmp5 = icmp eq i32 %2, %call
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %while.body
  %idxprom7 = sext i32 %a.0.ph to i64
  %arrayidx8 = getelementptr inbounds i32* %ivec.tr475, i64 %idxprom7
  %4 = load i32* %arrayidx8, align 4, !tbaa !0
  store i32 %call, i32* %arrayidx8, align 4, !tbaa !0
  store i32 %4, i32* %arrayidx, align 4, !tbaa !0
  %mul = shl nsw i32 %a.0.ph, 1
  %idxprom15 = sext i32 %mul to i64
  %arrayidx16 = getelementptr inbounds double* %zvec.tr476, i64 %idxprom15
  %5 = load double* %arrayidx16, align 8, !tbaa !3
  %mul17 = shl nsw i32 %b.0, 1
  %idxprom18 = sext i32 %mul17 to i64
  %arrayidx19 = getelementptr inbounds double* %zvec.tr476, i64 %idxprom18
  %6 = load double* %arrayidx19, align 8, !tbaa !3
  store double %6, double* %arrayidx16, align 8, !tbaa !3
  store double %5, double* %arrayidx19, align 8, !tbaa !3
  %add447 = or i32 %mul, 1
  %idxprom27 = sext i32 %add447 to i64
  %arrayidx28 = getelementptr inbounds double* %zvec.tr476, i64 %idxprom27
  %7 = load double* %arrayidx28, align 8, !tbaa !3
  %add30448 = or i32 %mul17, 1
  %idxprom31 = sext i32 %add30448 to i64
  %arrayidx32 = getelementptr inbounds double* %zvec.tr476, i64 %idxprom31
  %8 = load double* %arrayidx32, align 8, !tbaa !3
  store double %8, double* %arrayidx28, align 8, !tbaa !3
  store double %7, double* %arrayidx32, align 8, !tbaa !3
  %inc = add nsw i32 %a.0.ph, 1
  br label %if.end

if.end:                                           ; preds = %if.then6, %while.body
  %a.1 = phi i32 [ %inc, %if.then6 ], [ %a.0.ph, %while.body ]
  %inc41 = add nsw i32 %b.0, 1
  br label %while.cond.outer

land.rhs44:                                       ; preds = %if.end90, %land.rhs44.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end90 ], [ %3, %land.rhs44.lr.ph ]
  %d.1454 = phi i32 [ %d.2, %if.end90 ], [ %d.0, %land.rhs44.lr.ph ]
  %c.1453 = phi i32 [ %dec91, %if.end90 ], [ %c.0, %land.rhs44.lr.ph ]
  %arrayidx46 = getelementptr inbounds i32* %ivec.tr475, i64 %indvars.iv
  %9 = load i32* %arrayidx46, align 4, !tbaa !0
  %cmp47 = icmp slt i32 %9, %call
  br i1 %cmp47, label %if.end95, label %while.body49

while.body49:                                     ; preds = %land.rhs44
  %cmp52 = icmp eq i32 %9, %call
  br i1 %cmp52, label %if.then53, label %while.body49.if.end90_crit_edge

while.body49.if.end90_crit_edge:                  ; preds = %while.body49
  %.pre = trunc i64 %indvars.iv to i32
  br label %if.end90

if.then53:                                        ; preds = %while.body49
  %idxprom56 = sext i32 %d.1454 to i64
  %arrayidx57 = getelementptr inbounds i32* %ivec.tr475, i64 %idxprom56
  %10 = load i32* %arrayidx57, align 4, !tbaa !0
  store i32 %10, i32* %arrayidx46, align 4, !tbaa !0
  store i32 %call, i32* %arrayidx57, align 4, !tbaa !0
  %11 = trunc i64 %indvars.iv to i32
  %mul62 = shl nsw i32 %11, 1
  %idxprom63 = sext i32 %mul62 to i64
  %arrayidx64 = getelementptr inbounds double* %zvec.tr476, i64 %idxprom63
  %12 = load double* %arrayidx64, align 8, !tbaa !3
  %mul65 = shl nsw i32 %d.1454, 1
  %idxprom66 = sext i32 %mul65 to i64
  %arrayidx67 = getelementptr inbounds double* %zvec.tr476, i64 %idxprom66
  %13 = load double* %arrayidx67, align 8, !tbaa !3
  store double %13, double* %arrayidx64, align 8, !tbaa !3
  store double %12, double* %arrayidx67, align 8, !tbaa !3
  %add75445 = or i32 %mul62, 1
  %idxprom76 = sext i32 %add75445 to i64
  %arrayidx77 = getelementptr inbounds double* %zvec.tr476, i64 %idxprom76
  %14 = load double* %arrayidx77, align 8, !tbaa !3
  %add79446 = or i32 %mul65, 1
  %idxprom80 = sext i32 %add79446 to i64
  %arrayidx81 = getelementptr inbounds double* %zvec.tr476, i64 %idxprom80
  %15 = load double* %arrayidx81, align 8, !tbaa !3
  store double %15, double* %arrayidx77, align 8, !tbaa !3
  store double %14, double* %arrayidx81, align 8, !tbaa !3
  %dec = add nsw i32 %d.1454, -1
  br label %if.end90

if.end90:                                         ; preds = %while.body49.if.end90_crit_edge, %if.then53
  %.pre-phi = phi i32 [ %.pre, %while.body49.if.end90_crit_edge ], [ %11, %if.then53 ]
  %d.2 = phi i32 [ %d.1454, %while.body49.if.end90_crit_edge ], [ %dec, %if.then53 ]
  %indvars.iv.next = add i64 %indvars.iv, -1
  %dec91 = add nsw i32 %c.1453, -1
  %cmp43 = icmp sgt i32 %.pre-phi, %1
  br i1 %cmp43, label %land.rhs44, label %for.end

if.end95:                                         ; preds = %land.rhs44
  %arrayidx97 = getelementptr inbounds i32* %ivec.tr475, i64 %indvars.iv489
  %16 = load i32* %arrayidx97, align 4, !tbaa !0
  %idxprom98 = sext i32 %c.1453 to i64
  %arrayidx99 = getelementptr inbounds i32* %ivec.tr475, i64 %idxprom98
  %17 = load i32* %arrayidx99, align 4, !tbaa !0
  store i32 %17, i32* %arrayidx97, align 4, !tbaa !0
  store i32 %16, i32* %arrayidx99, align 4, !tbaa !0
  %mul104 = shl nsw i32 %1, 1
  %idxprom105 = sext i32 %mul104 to i64
  %arrayidx106 = getelementptr inbounds double* %zvec.tr476, i64 %idxprom105
  %18 = load double* %arrayidx106, align 8, !tbaa !3
  %mul107 = shl nsw i32 %c.1453, 1
  %idxprom108 = sext i32 %mul107 to i64
  %arrayidx109 = getelementptr inbounds double* %zvec.tr476, i64 %idxprom108
  %19 = load double* %arrayidx109, align 8, !tbaa !3
  store double %19, double* %arrayidx106, align 8, !tbaa !3
  store double %18, double* %arrayidx109, align 8, !tbaa !3
  %add117439 = or i32 %mul104, 1
  %idxprom118 = sext i32 %add117439 to i64
  %arrayidx119 = getelementptr inbounds double* %zvec.tr476, i64 %idxprom118
  %20 = load double* %arrayidx119, align 8, !tbaa !3
  %add121440 = or i32 %mul107, 1
  %idxprom122 = sext i32 %add121440 to i64
  %arrayidx123 = getelementptr inbounds double* %zvec.tr476, i64 %idxprom122
  %21 = load double* %arrayidx123, align 8, !tbaa !3
  store double %21, double* %arrayidx119, align 8, !tbaa !3
  store double %20, double* %arrayidx123, align 8, !tbaa !3
  %indvars.iv.next490 = add i64 %indvars.iv489, 1
  %inc132 = add nsw i32 %b.0, 1
  %dec133 = add nsw i32 %c.1453, -1
  br label %while.cond

for.end:                                          ; preds = %while.cond, %if.end90
  %d.1.lcssa = phi i32 [ %d.2, %if.end90 ], [ %d.0, %while.cond ]
  %c.1.lcssa = phi i32 [ %dec91, %if.end90 ], [ %c.0, %while.cond ]
  %sub134 = sub nsw i32 %b.0, %a.0.ph
  %cmp135 = icmp sgt i32 %a.0.ph, %sub134
  %sub134.a.0 = select i1 %cmp135, i32 %sub134, i32 %a.0.ph
  %cmp139463 = icmp eq i32 %sub134.a.0, 0
  br i1 %cmp139463, label %for.end179, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.end
  %22 = add i32 %b.0, 1
  %23 = add i32 %a.0.ph, -1
  %24 = sub i32 %23, %b.0
  %25 = xor i32 %a.0.ph, -1
  %26 = icmp sgt i32 %24, %25
  %smax = select i1 %26, i32 %24, i32 %25
  %27 = add i32 %22, %smax
  %28 = sext i32 %27 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv496 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next497, %for.body ]
  %indvars.iv493 = phi i64 [ %28, %for.body.lr.ph ], [ %indvars.iv.next494, %for.body ]
  %s.0466 = phi i32 [ %sub134.a.0, %for.body.lr.ph ], [ %dec178, %for.body ]
  %arrayidx141 = getelementptr inbounds i32* %ivec.tr475, i64 %indvars.iv496
  %29 = load i32* %arrayidx141, align 4, !tbaa !0
  %arrayidx143 = getelementptr inbounds i32* %ivec.tr475, i64 %indvars.iv493
  %30 = load i32* %arrayidx143, align 4, !tbaa !0
  store i32 %30, i32* %arrayidx141, align 4, !tbaa !0
  store i32 %29, i32* %arrayidx143, align 4, !tbaa !0
  %31 = trunc i64 %indvars.iv496 to i32
  %mul148 = shl nsw i32 %31, 1
  %idxprom149 = sext i32 %mul148 to i64
  %arrayidx150 = getelementptr inbounds double* %zvec.tr476, i64 %idxprom149
  %32 = load double* %arrayidx150, align 8, !tbaa !3
  %33 = trunc i64 %indvars.iv493 to i32
  %mul151 = shl nsw i32 %33, 1
  %idxprom152 = sext i32 %mul151 to i64
  %arrayidx153 = getelementptr inbounds double* %zvec.tr476, i64 %idxprom152
  %34 = load double* %arrayidx153, align 8, !tbaa !3
  store double %34, double* %arrayidx150, align 8, !tbaa !3
  store double %32, double* %arrayidx153, align 8, !tbaa !3
  %add161443 = or i32 %mul148, 1
  %idxprom162 = sext i32 %add161443 to i64
  %arrayidx163 = getelementptr inbounds double* %zvec.tr476, i64 %idxprom162
  %35 = load double* %arrayidx163, align 8, !tbaa !3
  %add165444 = or i32 %mul151, 1
  %idxprom166 = sext i32 %add165444 to i64
  %arrayidx167 = getelementptr inbounds double* %zvec.tr476, i64 %idxprom166
  %36 = load double* %arrayidx167, align 8, !tbaa !3
  store double %36, double* %arrayidx163, align 8, !tbaa !3
  store double %35, double* %arrayidx167, align 8, !tbaa !3
  %indvars.iv.next497 = add i64 %indvars.iv496, 1
  %dec178 = add nsw i32 %s.0466, -1
  %cmp139 = icmp eq i32 %dec178, 0
  %indvars.iv.next494 = add i64 %indvars.iv493, 1
  br i1 %cmp139, label %for.end179, label %for.body

for.end179:                                       ; preds = %for.body, %for.end
  %sub180 = sub nsw i32 %d.1.lcssa, %c.1.lcssa
  %sub182 = sub nsw i32 %sub, %d.1.lcssa
  %cmp183 = icmp sgt i32 %sub180, %sub182
  %sub182.sub180 = select i1 %cmp183, i32 %sub182, i32 %sub180
  %cmp193467 = icmp eq i32 %sub182.sub180, 0
  br i1 %cmp193467, label %for.end235, label %for.body194.lr.ph

for.body194.lr.ph:                                ; preds = %for.end179
  %37 = add i32 %n.tr474, 1
  %38 = sub i32 %d.1.lcssa, %n.tr474
  %39 = add i32 %c.1.lcssa, -1
  %40 = sub i32 %39, %d.1.lcssa
  %41 = icmp sgt i32 %38, %40
  %smax501 = select i1 %41, i32 %38, i32 %40
  %42 = add i32 %37, %smax501
  %43 = sext i32 %42 to i64
  %44 = sext i32 %b.0 to i64
  br label %for.body194

for.body194:                                      ; preds = %for.body194.lr.ph, %for.body194
  %indvars.iv505 = phi i64 [ %44, %for.body194.lr.ph ], [ %indvars.iv.next506, %for.body194 ]
  %indvars.iv502 = phi i64 [ %43, %for.body194.lr.ph ], [ %indvars.iv.next503, %for.body194 ]
  %s.1470 = phi i32 [ %sub182.sub180, %for.body194.lr.ph ], [ %dec234, %for.body194 ]
  %arrayidx196 = getelementptr inbounds i32* %ivec.tr475, i64 %indvars.iv505
  %45 = load i32* %arrayidx196, align 4, !tbaa !0
  %arrayidx198 = getelementptr inbounds i32* %ivec.tr475, i64 %indvars.iv502
  %46 = load i32* %arrayidx198, align 4, !tbaa !0
  store i32 %46, i32* %arrayidx196, align 4, !tbaa !0
  store i32 %45, i32* %arrayidx198, align 4, !tbaa !0
  %47 = trunc i64 %indvars.iv505 to i32
  %mul203 = shl nsw i32 %47, 1
  %idxprom204 = sext i32 %mul203 to i64
  %arrayidx205 = getelementptr inbounds double* %zvec.tr476, i64 %idxprom204
  %48 = load double* %arrayidx205, align 8, !tbaa !3
  %49 = trunc i64 %indvars.iv502 to i32
  %mul206 = shl nsw i32 %49, 1
  %idxprom207 = sext i32 %mul206 to i64
  %arrayidx208 = getelementptr inbounds double* %zvec.tr476, i64 %idxprom207
  %50 = load double* %arrayidx208, align 8, !tbaa !3
  store double %50, double* %arrayidx205, align 8, !tbaa !3
  store double %48, double* %arrayidx208, align 8, !tbaa !3
  %add216441 = or i32 %mul203, 1
  %idxprom217 = sext i32 %add216441 to i64
  %arrayidx218 = getelementptr inbounds double* %zvec.tr476, i64 %idxprom217
  %51 = load double* %arrayidx218, align 8, !tbaa !3
  %add220442 = or i32 %mul206, 1
  %idxprom221 = sext i32 %add220442 to i64
  %arrayidx222 = getelementptr inbounds double* %zvec.tr476, i64 %idxprom221
  %52 = load double* %arrayidx222, align 8, !tbaa !3
  store double %52, double* %arrayidx218, align 8, !tbaa !3
  store double %51, double* %arrayidx222, align 8, !tbaa !3
  %indvars.iv.next506 = add i64 %indvars.iv505, 1
  %dec234 = add nsw i32 %s.1470, -1
  %cmp193 = icmp eq i32 %dec234, 0
  %indvars.iv.next503 = add i64 %indvars.iv502, 1
  br i1 %cmp193, label %for.end235, label %for.body194

for.end235:                                       ; preds = %for.body194, %for.end179
  tail call void @IVZVqsortUp(i32 %sub134, i32* %ivec.tr475, double* %zvec.tr476) #2
  %idx.ext = sext i32 %n.tr474 to i64
  %idx.ext239 = sext i32 %sub180 to i64
  %add.ptr.sum = sub i64 %idx.ext, %idx.ext239
  %add.ptr240 = getelementptr inbounds i32* %ivec.tr475, i64 %add.ptr.sum
  %sub242 = sub nsw i32 %n.tr474, %sub180
  %mul243 = shl nsw i32 %sub242, 1
  %idx.ext244 = sext i32 %mul243 to i64
  %add.ptr245 = getelementptr inbounds double* %zvec.tr476, i64 %idx.ext244
  %cmp = icmp slt i32 %sub180, 11
  br i1 %cmp, label %if.then, label %if.else
}

; Function Attrs: nounwind optsize uwtable
define void @IVZVqsortDown(i32 %n, i32* %ivec, double* %zvec) #1 {
entry:
  %cmp473 = icmp slt i32 %n, 11
  br i1 %cmp473, label %if.then, label %if.else

if.then:                                          ; preds = %for.end235, %entry
  %zvec.tr.lcssa = phi double* [ %zvec, %entry ], [ %add.ptr245, %for.end235 ]
  %ivec.tr.lcssa = phi i32* [ %ivec, %entry ], [ %add.ptr240, %for.end235 ]
  %n.tr.lcssa = phi i32 [ %n, %entry ], [ %sub180, %for.end235 ]
  tail call void @IVZVisortDown(i32 %n.tr.lcssa, i32* %ivec.tr.lcssa, double* %zvec.tr.lcssa) #2
  ret void

if.else:                                          ; preds = %entry, %for.end235
  %zvec.tr476 = phi double* [ %add.ptr245, %for.end235 ], [ %zvec, %entry ]
  %ivec.tr475 = phi i32* [ %add.ptr240, %for.end235 ], [ %ivec, %entry ]
  %n.tr474 = phi i32 [ %sub180, %for.end235 ], [ %n, %entry ]
  %call = tail call fastcc i32 @Icentervalue(i32 %n.tr474, i32* %ivec.tr475) #2
  %sub = add nsw i32 %n.tr474, -1
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.end, %if.else
  %a.0.ph = phi i32 [ 0, %if.else ], [ %a.1, %if.end ]
  %b.0.ph = phi i32 [ 0, %if.else ], [ %inc41, %if.end ]
  %c.0.ph = phi i32 [ %sub, %if.else ], [ %c.0, %if.end ]
  %d.0.ph = phi i32 [ %sub, %if.else ], [ %d.0, %if.end ]
  %0 = sext i32 %b.0.ph to i64
  br label %while.cond

while.cond:                                       ; preds = %while.cond.outer, %if.end95
  %indvars.iv489 = phi i64 [ %0, %while.cond.outer ], [ %indvars.iv.next490, %if.end95 ]
  %b.0 = phi i32 [ %b.0.ph, %while.cond.outer ], [ %inc132, %if.end95 ]
  %c.0 = phi i32 [ %c.0.ph, %while.cond.outer ], [ %dec133, %if.end95 ]
  %d.0 = phi i32 [ %d.0.ph, %while.cond.outer ], [ %d.1454, %if.end95 ]
  %1 = trunc i64 %indvars.iv489 to i32
  %cmp1 = icmp sgt i32 %1, %c.0
  br i1 %cmp1, label %for.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %arrayidx = getelementptr inbounds i32* %ivec.tr475, i64 %indvars.iv489
  %2 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp2 = icmp slt i32 %2, %call
  br i1 %cmp2, label %land.rhs44.lr.ph, label %while.body

land.rhs44.lr.ph:                                 ; preds = %land.rhs
  %3 = sext i32 %c.0 to i64
  br label %land.rhs44

while.body:                                       ; preds = %land.rhs
  %cmp5 = icmp eq i32 %2, %call
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %while.body
  %idxprom7 = sext i32 %a.0.ph to i64
  %arrayidx8 = getelementptr inbounds i32* %ivec.tr475, i64 %idxprom7
  %4 = load i32* %arrayidx8, align 4, !tbaa !0
  store i32 %call, i32* %arrayidx8, align 4, !tbaa !0
  store i32 %4, i32* %arrayidx, align 4, !tbaa !0
  %mul = shl nsw i32 %a.0.ph, 1
  %idxprom15 = sext i32 %mul to i64
  %arrayidx16 = getelementptr inbounds double* %zvec.tr476, i64 %idxprom15
  %5 = load double* %arrayidx16, align 8, !tbaa !3
  %mul17 = shl nsw i32 %b.0, 1
  %idxprom18 = sext i32 %mul17 to i64
  %arrayidx19 = getelementptr inbounds double* %zvec.tr476, i64 %idxprom18
  %6 = load double* %arrayidx19, align 8, !tbaa !3
  store double %6, double* %arrayidx16, align 8, !tbaa !3
  store double %5, double* %arrayidx19, align 8, !tbaa !3
  %add447 = or i32 %mul, 1
  %idxprom27 = sext i32 %add447 to i64
  %arrayidx28 = getelementptr inbounds double* %zvec.tr476, i64 %idxprom27
  %7 = load double* %arrayidx28, align 8, !tbaa !3
  %add30448 = or i32 %mul17, 1
  %idxprom31 = sext i32 %add30448 to i64
  %arrayidx32 = getelementptr inbounds double* %zvec.tr476, i64 %idxprom31
  %8 = load double* %arrayidx32, align 8, !tbaa !3
  store double %8, double* %arrayidx28, align 8, !tbaa !3
  store double %7, double* %arrayidx32, align 8, !tbaa !3
  %inc = add nsw i32 %a.0.ph, 1
  br label %if.end

if.end:                                           ; preds = %if.then6, %while.body
  %a.1 = phi i32 [ %inc, %if.then6 ], [ %a.0.ph, %while.body ]
  %inc41 = add nsw i32 %b.0, 1
  br label %while.cond.outer

land.rhs44:                                       ; preds = %if.end90, %land.rhs44.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end90 ], [ %3, %land.rhs44.lr.ph ]
  %d.1454 = phi i32 [ %d.2, %if.end90 ], [ %d.0, %land.rhs44.lr.ph ]
  %c.1453 = phi i32 [ %dec91, %if.end90 ], [ %c.0, %land.rhs44.lr.ph ]
  %arrayidx46 = getelementptr inbounds i32* %ivec.tr475, i64 %indvars.iv
  %9 = load i32* %arrayidx46, align 4, !tbaa !0
  %cmp47 = icmp sgt i32 %9, %call
  br i1 %cmp47, label %if.end95, label %while.body49

while.body49:                                     ; preds = %land.rhs44
  %cmp52 = icmp eq i32 %9, %call
  br i1 %cmp52, label %if.then53, label %while.body49.if.end90_crit_edge

while.body49.if.end90_crit_edge:                  ; preds = %while.body49
  %.pre = trunc i64 %indvars.iv to i32
  br label %if.end90

if.then53:                                        ; preds = %while.body49
  %idxprom56 = sext i32 %d.1454 to i64
  %arrayidx57 = getelementptr inbounds i32* %ivec.tr475, i64 %idxprom56
  %10 = load i32* %arrayidx57, align 4, !tbaa !0
  store i32 %10, i32* %arrayidx46, align 4, !tbaa !0
  store i32 %call, i32* %arrayidx57, align 4, !tbaa !0
  %11 = trunc i64 %indvars.iv to i32
  %mul62 = shl nsw i32 %11, 1
  %idxprom63 = sext i32 %mul62 to i64
  %arrayidx64 = getelementptr inbounds double* %zvec.tr476, i64 %idxprom63
  %12 = load double* %arrayidx64, align 8, !tbaa !3
  %mul65 = shl nsw i32 %d.1454, 1
  %idxprom66 = sext i32 %mul65 to i64
  %arrayidx67 = getelementptr inbounds double* %zvec.tr476, i64 %idxprom66
  %13 = load double* %arrayidx67, align 8, !tbaa !3
  store double %13, double* %arrayidx64, align 8, !tbaa !3
  store double %12, double* %arrayidx67, align 8, !tbaa !3
  %add75445 = or i32 %mul62, 1
  %idxprom76 = sext i32 %add75445 to i64
  %arrayidx77 = getelementptr inbounds double* %zvec.tr476, i64 %idxprom76
  %14 = load double* %arrayidx77, align 8, !tbaa !3
  %add79446 = or i32 %mul65, 1
  %idxprom80 = sext i32 %add79446 to i64
  %arrayidx81 = getelementptr inbounds double* %zvec.tr476, i64 %idxprom80
  %15 = load double* %arrayidx81, align 8, !tbaa !3
  store double %15, double* %arrayidx77, align 8, !tbaa !3
  store double %14, double* %arrayidx81, align 8, !tbaa !3
  %dec = add nsw i32 %d.1454, -1
  br label %if.end90

if.end90:                                         ; preds = %while.body49.if.end90_crit_edge, %if.then53
  %.pre-phi = phi i32 [ %.pre, %while.body49.if.end90_crit_edge ], [ %11, %if.then53 ]
  %d.2 = phi i32 [ %d.1454, %while.body49.if.end90_crit_edge ], [ %dec, %if.then53 ]
  %indvars.iv.next = add i64 %indvars.iv, -1
  %dec91 = add nsw i32 %c.1453, -1
  %cmp43 = icmp sgt i32 %.pre-phi, %1
  br i1 %cmp43, label %land.rhs44, label %for.end

if.end95:                                         ; preds = %land.rhs44
  %arrayidx97 = getelementptr inbounds i32* %ivec.tr475, i64 %indvars.iv489
  %16 = load i32* %arrayidx97, align 4, !tbaa !0
  %idxprom98 = sext i32 %c.1453 to i64
  %arrayidx99 = getelementptr inbounds i32* %ivec.tr475, i64 %idxprom98
  %17 = load i32* %arrayidx99, align 4, !tbaa !0
  store i32 %17, i32* %arrayidx97, align 4, !tbaa !0
  store i32 %16, i32* %arrayidx99, align 4, !tbaa !0
  %mul104 = shl nsw i32 %1, 1
  %idxprom105 = sext i32 %mul104 to i64
  %arrayidx106 = getelementptr inbounds double* %zvec.tr476, i64 %idxprom105
  %18 = load double* %arrayidx106, align 8, !tbaa !3
  %mul107 = shl nsw i32 %c.1453, 1
  %idxprom108 = sext i32 %mul107 to i64
  %arrayidx109 = getelementptr inbounds double* %zvec.tr476, i64 %idxprom108
  %19 = load double* %arrayidx109, align 8, !tbaa !3
  store double %19, double* %arrayidx106, align 8, !tbaa !3
  store double %18, double* %arrayidx109, align 8, !tbaa !3
  %add117439 = or i32 %mul104, 1
  %idxprom118 = sext i32 %add117439 to i64
  %arrayidx119 = getelementptr inbounds double* %zvec.tr476, i64 %idxprom118
  %20 = load double* %arrayidx119, align 8, !tbaa !3
  %add121440 = or i32 %mul107, 1
  %idxprom122 = sext i32 %add121440 to i64
  %arrayidx123 = getelementptr inbounds double* %zvec.tr476, i64 %idxprom122
  %21 = load double* %arrayidx123, align 8, !tbaa !3
  store double %21, double* %arrayidx119, align 8, !tbaa !3
  store double %20, double* %arrayidx123, align 8, !tbaa !3
  %indvars.iv.next490 = add i64 %indvars.iv489, 1
  %inc132 = add nsw i32 %b.0, 1
  %dec133 = add nsw i32 %c.1453, -1
  br label %while.cond

for.end:                                          ; preds = %while.cond, %if.end90
  %d.1.lcssa = phi i32 [ %d.2, %if.end90 ], [ %d.0, %while.cond ]
  %c.1.lcssa = phi i32 [ %dec91, %if.end90 ], [ %c.0, %while.cond ]
  %sub134 = sub nsw i32 %b.0, %a.0.ph
  %cmp135 = icmp sgt i32 %a.0.ph, %sub134
  %sub134.a.0 = select i1 %cmp135, i32 %sub134, i32 %a.0.ph
  %cmp139463 = icmp eq i32 %sub134.a.0, 0
  br i1 %cmp139463, label %for.end179, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.end
  %22 = add i32 %b.0, 1
  %23 = add i32 %a.0.ph, -1
  %24 = sub i32 %23, %b.0
  %25 = xor i32 %a.0.ph, -1
  %26 = icmp sgt i32 %24, %25
  %smax = select i1 %26, i32 %24, i32 %25
  %27 = add i32 %22, %smax
  %28 = sext i32 %27 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv496 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next497, %for.body ]
  %indvars.iv493 = phi i64 [ %28, %for.body.lr.ph ], [ %indvars.iv.next494, %for.body ]
  %s.0466 = phi i32 [ %sub134.a.0, %for.body.lr.ph ], [ %dec178, %for.body ]
  %arrayidx141 = getelementptr inbounds i32* %ivec.tr475, i64 %indvars.iv496
  %29 = load i32* %arrayidx141, align 4, !tbaa !0
  %arrayidx143 = getelementptr inbounds i32* %ivec.tr475, i64 %indvars.iv493
  %30 = load i32* %arrayidx143, align 4, !tbaa !0
  store i32 %30, i32* %arrayidx141, align 4, !tbaa !0
  store i32 %29, i32* %arrayidx143, align 4, !tbaa !0
  %31 = trunc i64 %indvars.iv496 to i32
  %mul148 = shl nsw i32 %31, 1
  %idxprom149 = sext i32 %mul148 to i64
  %arrayidx150 = getelementptr inbounds double* %zvec.tr476, i64 %idxprom149
  %32 = load double* %arrayidx150, align 8, !tbaa !3
  %33 = trunc i64 %indvars.iv493 to i32
  %mul151 = shl nsw i32 %33, 1
  %idxprom152 = sext i32 %mul151 to i64
  %arrayidx153 = getelementptr inbounds double* %zvec.tr476, i64 %idxprom152
  %34 = load double* %arrayidx153, align 8, !tbaa !3
  store double %34, double* %arrayidx150, align 8, !tbaa !3
  store double %32, double* %arrayidx153, align 8, !tbaa !3
  %add161443 = or i32 %mul148, 1
  %idxprom162 = sext i32 %add161443 to i64
  %arrayidx163 = getelementptr inbounds double* %zvec.tr476, i64 %idxprom162
  %35 = load double* %arrayidx163, align 8, !tbaa !3
  %add165444 = or i32 %mul151, 1
  %idxprom166 = sext i32 %add165444 to i64
  %arrayidx167 = getelementptr inbounds double* %zvec.tr476, i64 %idxprom166
  %36 = load double* %arrayidx167, align 8, !tbaa !3
  store double %36, double* %arrayidx163, align 8, !tbaa !3
  store double %35, double* %arrayidx167, align 8, !tbaa !3
  %indvars.iv.next497 = add i64 %indvars.iv496, 1
  %dec178 = add nsw i32 %s.0466, -1
  %cmp139 = icmp eq i32 %dec178, 0
  %indvars.iv.next494 = add i64 %indvars.iv493, 1
  br i1 %cmp139, label %for.end179, label %for.body

for.end179:                                       ; preds = %for.body, %for.end
  %sub180 = sub nsw i32 %d.1.lcssa, %c.1.lcssa
  %sub182 = sub nsw i32 %sub, %d.1.lcssa
  %cmp183 = icmp sgt i32 %sub180, %sub182
  %sub182.sub180 = select i1 %cmp183, i32 %sub182, i32 %sub180
  %cmp193467 = icmp eq i32 %sub182.sub180, 0
  br i1 %cmp193467, label %for.end235, label %for.body194.lr.ph

for.body194.lr.ph:                                ; preds = %for.end179
  %37 = add i32 %n.tr474, 1
  %38 = sub i32 %d.1.lcssa, %n.tr474
  %39 = add i32 %c.1.lcssa, -1
  %40 = sub i32 %39, %d.1.lcssa
  %41 = icmp sgt i32 %38, %40
  %smax501 = select i1 %41, i32 %38, i32 %40
  %42 = add i32 %37, %smax501
  %43 = sext i32 %42 to i64
  %44 = sext i32 %b.0 to i64
  br label %for.body194

for.body194:                                      ; preds = %for.body194.lr.ph, %for.body194
  %indvars.iv505 = phi i64 [ %44, %for.body194.lr.ph ], [ %indvars.iv.next506, %for.body194 ]
  %indvars.iv502 = phi i64 [ %43, %for.body194.lr.ph ], [ %indvars.iv.next503, %for.body194 ]
  %s.1470 = phi i32 [ %sub182.sub180, %for.body194.lr.ph ], [ %dec234, %for.body194 ]
  %arrayidx196 = getelementptr inbounds i32* %ivec.tr475, i64 %indvars.iv505
  %45 = load i32* %arrayidx196, align 4, !tbaa !0
  %arrayidx198 = getelementptr inbounds i32* %ivec.tr475, i64 %indvars.iv502
  %46 = load i32* %arrayidx198, align 4, !tbaa !0
  store i32 %46, i32* %arrayidx196, align 4, !tbaa !0
  store i32 %45, i32* %arrayidx198, align 4, !tbaa !0
  %47 = trunc i64 %indvars.iv505 to i32
  %mul203 = shl nsw i32 %47, 1
  %idxprom204 = sext i32 %mul203 to i64
  %arrayidx205 = getelementptr inbounds double* %zvec.tr476, i64 %idxprom204
  %48 = load double* %arrayidx205, align 8, !tbaa !3
  %49 = trunc i64 %indvars.iv502 to i32
  %mul206 = shl nsw i32 %49, 1
  %idxprom207 = sext i32 %mul206 to i64
  %arrayidx208 = getelementptr inbounds double* %zvec.tr476, i64 %idxprom207
  %50 = load double* %arrayidx208, align 8, !tbaa !3
  store double %50, double* %arrayidx205, align 8, !tbaa !3
  store double %48, double* %arrayidx208, align 8, !tbaa !3
  %add216441 = or i32 %mul203, 1
  %idxprom217 = sext i32 %add216441 to i64
  %arrayidx218 = getelementptr inbounds double* %zvec.tr476, i64 %idxprom217
  %51 = load double* %arrayidx218, align 8, !tbaa !3
  %add220442 = or i32 %mul206, 1
  %idxprom221 = sext i32 %add220442 to i64
  %arrayidx222 = getelementptr inbounds double* %zvec.tr476, i64 %idxprom221
  %52 = load double* %arrayidx222, align 8, !tbaa !3
  store double %52, double* %arrayidx218, align 8, !tbaa !3
  store double %51, double* %arrayidx222, align 8, !tbaa !3
  %indvars.iv.next506 = add i64 %indvars.iv505, 1
  %dec234 = add nsw i32 %s.1470, -1
  %cmp193 = icmp eq i32 %dec234, 0
  %indvars.iv.next503 = add i64 %indvars.iv502, 1
  br i1 %cmp193, label %for.end235, label %for.body194

for.end235:                                       ; preds = %for.body194, %for.end179
  tail call void @IVZVqsortDown(i32 %sub134, i32* %ivec.tr475, double* %zvec.tr476) #2
  %idx.ext = sext i32 %n.tr474 to i64
  %idx.ext239 = sext i32 %sub180 to i64
  %add.ptr.sum = sub i64 %idx.ext, %idx.ext239
  %add.ptr240 = getelementptr inbounds i32* %ivec.tr475, i64 %add.ptr.sum
  %sub242 = sub nsw i32 %n.tr474, %sub180
  %mul243 = shl nsw i32 %sub242, 1
  %idx.ext244 = sext i32 %mul243 to i64
  %add.ptr245 = getelementptr inbounds double* %zvec.tr476, i64 %idx.ext244
  %cmp = icmp slt i32 %sub180, 11
  br i1 %cmp, label %if.then, label %if.else
}

; Function Attrs: nounwind optsize uwtable
define void @IV2ZVqsortUp(i32 %n, i32* %ivec1, i32* %ivec2, double* %zvec) #1 {
entry:
  %cmp569 = icmp slt i32 %n, 11
  br i1 %cmp569, label %if.then, label %if.else

if.then:                                          ; preds = %for.end275, %entry
  %zvec.tr.lcssa = phi double* [ %zvec, %entry ], [ %add.ptr291, %for.end275 ]
  %ivec2.tr.lcssa = phi i32* [ %ivec2, %entry ], [ %add.ptr286, %for.end275 ]
  %ivec1.tr.lcssa = phi i32* [ %ivec1, %entry ], [ %add.ptr280, %for.end275 ]
  %n.tr.lcssa = phi i32 [ %n, %entry ], [ %sub212, %for.end275 ]
  tail call void @IV2ZVisortUp(i32 %n.tr.lcssa, i32* %ivec1.tr.lcssa, i32* %ivec2.tr.lcssa, double* %zvec.tr.lcssa) #2
  ret void

if.else:                                          ; preds = %entry, %for.end275
  %zvec.tr573 = phi double* [ %add.ptr291, %for.end275 ], [ %zvec, %entry ]
  %ivec2.tr572 = phi i32* [ %add.ptr286, %for.end275 ], [ %ivec2, %entry ]
  %ivec1.tr571 = phi i32* [ %add.ptr280, %for.end275 ], [ %ivec1, %entry ]
  %n.tr570 = phi i32 [ %sub212, %for.end275 ], [ %n, %entry ]
  %call = tail call fastcc i32 @Icentervalue(i32 %n.tr570, i32* %ivec1.tr571) #2
  %sub = add nsw i32 %n.tr570, -1
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.end, %if.else
  %a.0.ph = phi i32 [ 0, %if.else ], [ %a.1, %if.end ]
  %b.0.ph = phi i32 [ 0, %if.else ], [ %inc49, %if.end ]
  %c.0.ph = phi i32 [ %sub, %if.else ], [ %c.0, %if.end ]
  %d.0.ph = phi i32 [ %sub, %if.else ], [ %d.0, %if.end ]
  %0 = sext i32 %b.0.ph to i64
  br label %while.cond

while.cond:                                       ; preds = %while.cond.outer, %if.end111
  %indvars.iv587 = phi i64 [ %0, %while.cond.outer ], [ %indvars.iv.next588, %if.end111 ]
  %b.0 = phi i32 [ %b.0.ph, %while.cond.outer ], [ %inc156, %if.end111 ]
  %c.0 = phi i32 [ %c.0.ph, %while.cond.outer ], [ %dec157, %if.end111 ]
  %d.0 = phi i32 [ %d.0.ph, %while.cond.outer ], [ %d.1550, %if.end111 ]
  %1 = trunc i64 %indvars.iv587 to i32
  %cmp1 = icmp sgt i32 %1, %c.0
  br i1 %cmp1, label %for.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %arrayidx = getelementptr inbounds i32* %ivec1.tr571, i64 %indvars.iv587
  %2 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp2 = icmp sgt i32 %2, %call
  br i1 %cmp2, label %land.rhs52.lr.ph, label %while.body

land.rhs52.lr.ph:                                 ; preds = %land.rhs
  %3 = sext i32 %c.0 to i64
  br label %land.rhs52

while.body:                                       ; preds = %land.rhs
  %cmp5 = icmp eq i32 %2, %call
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %while.body
  %idxprom7 = sext i32 %a.0.ph to i64
  %arrayidx8 = getelementptr inbounds i32* %ivec1.tr571, i64 %idxprom7
  %4 = load i32* %arrayidx8, align 4, !tbaa !0
  store i32 %call, i32* %arrayidx8, align 4, !tbaa !0
  store i32 %4, i32* %arrayidx, align 4, !tbaa !0
  %arrayidx16 = getelementptr inbounds i32* %ivec2.tr572, i64 %idxprom7
  %5 = load i32* %arrayidx16, align 4, !tbaa !0
  %arrayidx18 = getelementptr inbounds i32* %ivec2.tr572, i64 %indvars.iv587
  %6 = load i32* %arrayidx18, align 4, !tbaa !0
  store i32 %6, i32* %arrayidx16, align 4, !tbaa !0
  store i32 %5, i32* %arrayidx18, align 4, !tbaa !0
  %mul = shl nsw i32 %a.0.ph, 1
  %idxprom23 = sext i32 %mul to i64
  %arrayidx24 = getelementptr inbounds double* %zvec.tr573, i64 %idxprom23
  %7 = load double* %arrayidx24, align 8, !tbaa !3
  %mul25 = shl nsw i32 %b.0, 1
  %idxprom26 = sext i32 %mul25 to i64
  %arrayidx27 = getelementptr inbounds double* %zvec.tr573, i64 %idxprom26
  %8 = load double* %arrayidx27, align 8, !tbaa !3
  store double %8, double* %arrayidx24, align 8, !tbaa !3
  store double %7, double* %arrayidx27, align 8, !tbaa !3
  %add543 = or i32 %mul, 1
  %idxprom35 = sext i32 %add543 to i64
  %arrayidx36 = getelementptr inbounds double* %zvec.tr573, i64 %idxprom35
  %9 = load double* %arrayidx36, align 8, !tbaa !3
  %add38544 = or i32 %mul25, 1
  %idxprom39 = sext i32 %add38544 to i64
  %arrayidx40 = getelementptr inbounds double* %zvec.tr573, i64 %idxprom39
  %10 = load double* %arrayidx40, align 8, !tbaa !3
  store double %10, double* %arrayidx36, align 8, !tbaa !3
  store double %9, double* %arrayidx40, align 8, !tbaa !3
  %inc = add nsw i32 %a.0.ph, 1
  br label %if.end

if.end:                                           ; preds = %if.then6, %while.body
  %a.1 = phi i32 [ %inc, %if.then6 ], [ %a.0.ph, %while.body ]
  %inc49 = add nsw i32 %b.0, 1
  br label %while.cond.outer

land.rhs52:                                       ; preds = %if.end106, %land.rhs52.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end106 ], [ %3, %land.rhs52.lr.ph ]
  %d.1550 = phi i32 [ %d.2, %if.end106 ], [ %d.0, %land.rhs52.lr.ph ]
  %c.1549 = phi i32 [ %dec107, %if.end106 ], [ %c.0, %land.rhs52.lr.ph ]
  %arrayidx54 = getelementptr inbounds i32* %ivec1.tr571, i64 %indvars.iv
  %11 = load i32* %arrayidx54, align 4, !tbaa !0
  %cmp55 = icmp slt i32 %11, %call
  br i1 %cmp55, label %if.end111, label %while.body57

while.body57:                                     ; preds = %land.rhs52
  %cmp60 = icmp eq i32 %11, %call
  br i1 %cmp60, label %if.then61, label %while.body57.if.end106_crit_edge

while.body57.if.end106_crit_edge:                 ; preds = %while.body57
  %.pre = trunc i64 %indvars.iv to i32
  br label %if.end106

if.then61:                                        ; preds = %while.body57
  %idxprom64 = sext i32 %d.1550 to i64
  %arrayidx65 = getelementptr inbounds i32* %ivec1.tr571, i64 %idxprom64
  %12 = load i32* %arrayidx65, align 4, !tbaa !0
  store i32 %12, i32* %arrayidx54, align 4, !tbaa !0
  store i32 %call, i32* %arrayidx65, align 4, !tbaa !0
  %arrayidx71 = getelementptr inbounds i32* %ivec2.tr572, i64 %indvars.iv
  %13 = load i32* %arrayidx71, align 4, !tbaa !0
  %arrayidx73 = getelementptr inbounds i32* %ivec2.tr572, i64 %idxprom64
  %14 = load i32* %arrayidx73, align 4, !tbaa !0
  store i32 %14, i32* %arrayidx71, align 4, !tbaa !0
  store i32 %13, i32* %arrayidx73, align 4, !tbaa !0
  %15 = trunc i64 %indvars.iv to i32
  %mul78 = shl nsw i32 %15, 1
  %idxprom79 = sext i32 %mul78 to i64
  %arrayidx80 = getelementptr inbounds double* %zvec.tr573, i64 %idxprom79
  %16 = load double* %arrayidx80, align 8, !tbaa !3
  %mul81 = shl nsw i32 %d.1550, 1
  %idxprom82 = sext i32 %mul81 to i64
  %arrayidx83 = getelementptr inbounds double* %zvec.tr573, i64 %idxprom82
  %17 = load double* %arrayidx83, align 8, !tbaa !3
  store double %17, double* %arrayidx80, align 8, !tbaa !3
  store double %16, double* %arrayidx83, align 8, !tbaa !3
  %add91541 = or i32 %mul78, 1
  %idxprom92 = sext i32 %add91541 to i64
  %arrayidx93 = getelementptr inbounds double* %zvec.tr573, i64 %idxprom92
  %18 = load double* %arrayidx93, align 8, !tbaa !3
  %add95542 = or i32 %mul81, 1
  %idxprom96 = sext i32 %add95542 to i64
  %arrayidx97 = getelementptr inbounds double* %zvec.tr573, i64 %idxprom96
  %19 = load double* %arrayidx97, align 8, !tbaa !3
  store double %19, double* %arrayidx93, align 8, !tbaa !3
  store double %18, double* %arrayidx97, align 8, !tbaa !3
  %dec = add nsw i32 %d.1550, -1
  br label %if.end106

if.end106:                                        ; preds = %while.body57.if.end106_crit_edge, %if.then61
  %.pre-phi = phi i32 [ %.pre, %while.body57.if.end106_crit_edge ], [ %15, %if.then61 ]
  %d.2 = phi i32 [ %d.1550, %while.body57.if.end106_crit_edge ], [ %dec, %if.then61 ]
  %indvars.iv.next = add i64 %indvars.iv, -1
  %dec107 = add nsw i32 %c.1549, -1
  %cmp51 = icmp sgt i32 %.pre-phi, %1
  br i1 %cmp51, label %land.rhs52, label %for.end

if.end111:                                        ; preds = %land.rhs52
  %arrayidx113 = getelementptr inbounds i32* %ivec1.tr571, i64 %indvars.iv587
  %20 = load i32* %arrayidx113, align 4, !tbaa !0
  %idxprom114 = sext i32 %c.1549 to i64
  %arrayidx115 = getelementptr inbounds i32* %ivec1.tr571, i64 %idxprom114
  %21 = load i32* %arrayidx115, align 4, !tbaa !0
  store i32 %21, i32* %arrayidx113, align 4, !tbaa !0
  store i32 %20, i32* %arrayidx115, align 4, !tbaa !0
  %arrayidx121 = getelementptr inbounds i32* %ivec2.tr572, i64 %indvars.iv587
  %22 = load i32* %arrayidx121, align 4, !tbaa !0
  %arrayidx123 = getelementptr inbounds i32* %ivec2.tr572, i64 %idxprom114
  %23 = load i32* %arrayidx123, align 4, !tbaa !0
  store i32 %23, i32* %arrayidx121, align 4, !tbaa !0
  store i32 %22, i32* %arrayidx123, align 4, !tbaa !0
  %mul128 = shl nsw i32 %1, 1
  %idxprom129 = sext i32 %mul128 to i64
  %arrayidx130 = getelementptr inbounds double* %zvec.tr573, i64 %idxprom129
  %24 = load double* %arrayidx130, align 8, !tbaa !3
  %mul131 = shl nsw i32 %c.1549, 1
  %idxprom132 = sext i32 %mul131 to i64
  %arrayidx133 = getelementptr inbounds double* %zvec.tr573, i64 %idxprom132
  %25 = load double* %arrayidx133, align 8, !tbaa !3
  store double %25, double* %arrayidx130, align 8, !tbaa !3
  store double %24, double* %arrayidx133, align 8, !tbaa !3
  %add141535 = or i32 %mul128, 1
  %idxprom142 = sext i32 %add141535 to i64
  %arrayidx143 = getelementptr inbounds double* %zvec.tr573, i64 %idxprom142
  %26 = load double* %arrayidx143, align 8, !tbaa !3
  %add145536 = or i32 %mul131, 1
  %idxprom146 = sext i32 %add145536 to i64
  %arrayidx147 = getelementptr inbounds double* %zvec.tr573, i64 %idxprom146
  %27 = load double* %arrayidx147, align 8, !tbaa !3
  store double %27, double* %arrayidx143, align 8, !tbaa !3
  store double %26, double* %arrayidx147, align 8, !tbaa !3
  %indvars.iv.next588 = add i64 %indvars.iv587, 1
  %inc156 = add nsw i32 %b.0, 1
  %dec157 = add nsw i32 %c.1549, -1
  br label %while.cond

for.end:                                          ; preds = %while.cond, %if.end106
  %d.1.lcssa = phi i32 [ %d.2, %if.end106 ], [ %d.0, %while.cond ]
  %c.1.lcssa = phi i32 [ %dec107, %if.end106 ], [ %c.0, %while.cond ]
  %sub158 = sub nsw i32 %b.0, %a.0.ph
  %cmp159 = icmp sgt i32 %a.0.ph, %sub158
  %sub158.a.0 = select i1 %cmp159, i32 %sub158, i32 %a.0.ph
  %cmp163559 = icmp eq i32 %sub158.a.0, 0
  br i1 %cmp163559, label %for.end211, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.end
  %28 = add i32 %b.0, 1
  %29 = add i32 %a.0.ph, -1
  %30 = sub i32 %29, %b.0
  %31 = xor i32 %a.0.ph, -1
  %32 = icmp sgt i32 %30, %31
  %smax = select i1 %32, i32 %30, i32 %31
  %33 = add i32 %28, %smax
  %34 = sext i32 %33 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv594 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next595, %for.body ]
  %indvars.iv591 = phi i64 [ %34, %for.body.lr.ph ], [ %indvars.iv.next592, %for.body ]
  %s.0562 = phi i32 [ %sub158.a.0, %for.body.lr.ph ], [ %dec210, %for.body ]
  %arrayidx165 = getelementptr inbounds i32* %ivec1.tr571, i64 %indvars.iv594
  %35 = load i32* %arrayidx165, align 4, !tbaa !0
  %arrayidx167 = getelementptr inbounds i32* %ivec1.tr571, i64 %indvars.iv591
  %36 = load i32* %arrayidx167, align 4, !tbaa !0
  store i32 %36, i32* %arrayidx165, align 4, !tbaa !0
  store i32 %35, i32* %arrayidx167, align 4, !tbaa !0
  %arrayidx173 = getelementptr inbounds i32* %ivec2.tr572, i64 %indvars.iv594
  %37 = load i32* %arrayidx173, align 4, !tbaa !0
  %arrayidx175 = getelementptr inbounds i32* %ivec2.tr572, i64 %indvars.iv591
  %38 = load i32* %arrayidx175, align 4, !tbaa !0
  store i32 %38, i32* %arrayidx173, align 4, !tbaa !0
  store i32 %37, i32* %arrayidx175, align 4, !tbaa !0
  %39 = trunc i64 %indvars.iv594 to i32
  %mul180 = shl nsw i32 %39, 1
  %idxprom181 = sext i32 %mul180 to i64
  %arrayidx182 = getelementptr inbounds double* %zvec.tr573, i64 %idxprom181
  %40 = load double* %arrayidx182, align 8, !tbaa !3
  %41 = trunc i64 %indvars.iv591 to i32
  %mul183 = shl nsw i32 %41, 1
  %idxprom184 = sext i32 %mul183 to i64
  %arrayidx185 = getelementptr inbounds double* %zvec.tr573, i64 %idxprom184
  %42 = load double* %arrayidx185, align 8, !tbaa !3
  store double %42, double* %arrayidx182, align 8, !tbaa !3
  store double %40, double* %arrayidx185, align 8, !tbaa !3
  %add193539 = or i32 %mul180, 1
  %idxprom194 = sext i32 %add193539 to i64
  %arrayidx195 = getelementptr inbounds double* %zvec.tr573, i64 %idxprom194
  %43 = load double* %arrayidx195, align 8, !tbaa !3
  %add197540 = or i32 %mul183, 1
  %idxprom198 = sext i32 %add197540 to i64
  %arrayidx199 = getelementptr inbounds double* %zvec.tr573, i64 %idxprom198
  %44 = load double* %arrayidx199, align 8, !tbaa !3
  store double %44, double* %arrayidx195, align 8, !tbaa !3
  store double %43, double* %arrayidx199, align 8, !tbaa !3
  %indvars.iv.next595 = add i64 %indvars.iv594, 1
  %dec210 = add nsw i32 %s.0562, -1
  %cmp163 = icmp eq i32 %dec210, 0
  %indvars.iv.next592 = add i64 %indvars.iv591, 1
  br i1 %cmp163, label %for.end211, label %for.body

for.end211:                                       ; preds = %for.body, %for.end
  %sub212 = sub nsw i32 %d.1.lcssa, %c.1.lcssa
  %sub214 = sub nsw i32 %sub, %d.1.lcssa
  %cmp215 = icmp sgt i32 %sub212, %sub214
  %sub214.sub212 = select i1 %cmp215, i32 %sub214, i32 %sub212
  %cmp225563 = icmp eq i32 %sub214.sub212, 0
  br i1 %cmp225563, label %for.end275, label %for.body226.lr.ph

for.body226.lr.ph:                                ; preds = %for.end211
  %45 = add i32 %n.tr570, 1
  %46 = sub i32 %d.1.lcssa, %n.tr570
  %47 = add i32 %c.1.lcssa, -1
  %48 = sub i32 %47, %d.1.lcssa
  %49 = icmp sgt i32 %46, %48
  %smax602 = select i1 %49, i32 %46, i32 %48
  %50 = add i32 %45, %smax602
  %51 = sext i32 %50 to i64
  %52 = sext i32 %b.0 to i64
  br label %for.body226

for.body226:                                      ; preds = %for.body226.lr.ph, %for.body226
  %indvars.iv606 = phi i64 [ %52, %for.body226.lr.ph ], [ %indvars.iv.next607, %for.body226 ]
  %indvars.iv603 = phi i64 [ %51, %for.body226.lr.ph ], [ %indvars.iv.next604, %for.body226 ]
  %s.1566 = phi i32 [ %sub214.sub212, %for.body226.lr.ph ], [ %dec274, %for.body226 ]
  %arrayidx228 = getelementptr inbounds i32* %ivec1.tr571, i64 %indvars.iv606
  %53 = load i32* %arrayidx228, align 4, !tbaa !0
  %arrayidx230 = getelementptr inbounds i32* %ivec1.tr571, i64 %indvars.iv603
  %54 = load i32* %arrayidx230, align 4, !tbaa !0
  store i32 %54, i32* %arrayidx228, align 4, !tbaa !0
  store i32 %53, i32* %arrayidx230, align 4, !tbaa !0
  %arrayidx236 = getelementptr inbounds i32* %ivec2.tr572, i64 %indvars.iv606
  %55 = load i32* %arrayidx236, align 4, !tbaa !0
  %arrayidx238 = getelementptr inbounds i32* %ivec2.tr572, i64 %indvars.iv603
  %56 = load i32* %arrayidx238, align 4, !tbaa !0
  store i32 %56, i32* %arrayidx236, align 4, !tbaa !0
  store i32 %55, i32* %arrayidx238, align 4, !tbaa !0
  %57 = trunc i64 %indvars.iv606 to i32
  %mul243 = shl nsw i32 %57, 1
  %idxprom244 = sext i32 %mul243 to i64
  %arrayidx245 = getelementptr inbounds double* %zvec.tr573, i64 %idxprom244
  %58 = load double* %arrayidx245, align 8, !tbaa !3
  %59 = trunc i64 %indvars.iv603 to i32
  %mul246 = shl nsw i32 %59, 1
  %idxprom247 = sext i32 %mul246 to i64
  %arrayidx248 = getelementptr inbounds double* %zvec.tr573, i64 %idxprom247
  %60 = load double* %arrayidx248, align 8, !tbaa !3
  store double %60, double* %arrayidx245, align 8, !tbaa !3
  store double %58, double* %arrayidx248, align 8, !tbaa !3
  %add256537 = or i32 %mul243, 1
  %idxprom257 = sext i32 %add256537 to i64
  %arrayidx258 = getelementptr inbounds double* %zvec.tr573, i64 %idxprom257
  %61 = load double* %arrayidx258, align 8, !tbaa !3
  %add260538 = or i32 %mul246, 1
  %idxprom261 = sext i32 %add260538 to i64
  %arrayidx262 = getelementptr inbounds double* %zvec.tr573, i64 %idxprom261
  %62 = load double* %arrayidx262, align 8, !tbaa !3
  store double %62, double* %arrayidx258, align 8, !tbaa !3
  store double %61, double* %arrayidx262, align 8, !tbaa !3
  %indvars.iv.next607 = add i64 %indvars.iv606, 1
  %dec274 = add nsw i32 %s.1566, -1
  %cmp225 = icmp eq i32 %dec274, 0
  %indvars.iv.next604 = add i64 %indvars.iv603, 1
  br i1 %cmp225, label %for.end275, label %for.body226

for.end275:                                       ; preds = %for.body226, %for.end211
  tail call void @IV2ZVqsortUp(i32 %sub158, i32* %ivec1.tr571, i32* %ivec2.tr572, double* %zvec.tr573) #2
  %idx.ext = sext i32 %n.tr570 to i64
  %idx.ext279 = sext i32 %sub212 to i64
  %add.ptr.sum = sub i64 %idx.ext, %idx.ext279
  %add.ptr280 = getelementptr inbounds i32* %ivec1.tr571, i64 %add.ptr.sum
  %add.ptr286 = getelementptr inbounds i32* %ivec2.tr572, i64 %add.ptr.sum
  %sub288 = sub nsw i32 %n.tr570, %sub212
  %mul289 = shl nsw i32 %sub288, 1
  %idx.ext290 = sext i32 %mul289 to i64
  %add.ptr291 = getelementptr inbounds double* %zvec.tr573, i64 %idx.ext290
  %cmp = icmp slt i32 %sub212, 11
  br i1 %cmp, label %if.then, label %if.else
}

; Function Attrs: nounwind optsize uwtable
define void @IV2ZVqsortDown(i32 %n, i32* %ivec1, i32* %ivec2, double* %zvec) #1 {
entry:
  %cmp569 = icmp slt i32 %n, 1
  br i1 %cmp569, label %if.then, label %if.else

if.then:                                          ; preds = %for.end275, %entry
  %zvec.tr.lcssa = phi double* [ %zvec, %entry ], [ %add.ptr291, %for.end275 ]
  %ivec2.tr.lcssa = phi i32* [ %ivec2, %entry ], [ %add.ptr286, %for.end275 ]
  %ivec1.tr.lcssa = phi i32* [ %ivec1, %entry ], [ %add.ptr280, %for.end275 ]
  %n.tr.lcssa = phi i32 [ %n, %entry ], [ %sub212, %for.end275 ]
  tail call void @IV2ZVisortDown(i32 %n.tr.lcssa, i32* %ivec1.tr.lcssa, i32* %ivec2.tr.lcssa, double* %zvec.tr.lcssa) #2
  ret void

if.else:                                          ; preds = %entry, %for.end275
  %zvec.tr573 = phi double* [ %add.ptr291, %for.end275 ], [ %zvec, %entry ]
  %ivec2.tr572 = phi i32* [ %add.ptr286, %for.end275 ], [ %ivec2, %entry ]
  %ivec1.tr571 = phi i32* [ %add.ptr280, %for.end275 ], [ %ivec1, %entry ]
  %n.tr570 = phi i32 [ %sub212, %for.end275 ], [ %n, %entry ]
  %call = tail call fastcc i32 @Icentervalue(i32 %n.tr570, i32* %ivec1.tr571) #2
  %sub = add nsw i32 %n.tr570, -1
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.end, %if.else
  %a.0.ph = phi i32 [ 0, %if.else ], [ %a.1, %if.end ]
  %b.0.ph = phi i32 [ 0, %if.else ], [ %inc49, %if.end ]
  %c.0.ph = phi i32 [ %sub, %if.else ], [ %c.0, %if.end ]
  %d.0.ph = phi i32 [ %sub, %if.else ], [ %d.0, %if.end ]
  %0 = sext i32 %b.0.ph to i64
  br label %while.cond

while.cond:                                       ; preds = %while.cond.outer, %if.end111
  %indvars.iv587 = phi i64 [ %0, %while.cond.outer ], [ %indvars.iv.next588, %if.end111 ]
  %b.0 = phi i32 [ %b.0.ph, %while.cond.outer ], [ %inc156, %if.end111 ]
  %c.0 = phi i32 [ %c.0.ph, %while.cond.outer ], [ %dec157, %if.end111 ]
  %d.0 = phi i32 [ %d.0.ph, %while.cond.outer ], [ %d.1550, %if.end111 ]
  %1 = trunc i64 %indvars.iv587 to i32
  %cmp1 = icmp sgt i32 %1, %c.0
  br i1 %cmp1, label %for.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %arrayidx = getelementptr inbounds i32* %ivec1.tr571, i64 %indvars.iv587
  %2 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp2 = icmp slt i32 %2, %call
  br i1 %cmp2, label %land.rhs52.lr.ph, label %while.body

land.rhs52.lr.ph:                                 ; preds = %land.rhs
  %3 = sext i32 %c.0 to i64
  br label %land.rhs52

while.body:                                       ; preds = %land.rhs
  %cmp5 = icmp eq i32 %2, %call
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %while.body
  %idxprom7 = sext i32 %a.0.ph to i64
  %arrayidx8 = getelementptr inbounds i32* %ivec1.tr571, i64 %idxprom7
  %4 = load i32* %arrayidx8, align 4, !tbaa !0
  store i32 %call, i32* %arrayidx8, align 4, !tbaa !0
  store i32 %4, i32* %arrayidx, align 4, !tbaa !0
  %arrayidx16 = getelementptr inbounds i32* %ivec2.tr572, i64 %idxprom7
  %5 = load i32* %arrayidx16, align 4, !tbaa !0
  %arrayidx18 = getelementptr inbounds i32* %ivec2.tr572, i64 %indvars.iv587
  %6 = load i32* %arrayidx18, align 4, !tbaa !0
  store i32 %6, i32* %arrayidx16, align 4, !tbaa !0
  store i32 %5, i32* %arrayidx18, align 4, !tbaa !0
  %mul = shl nsw i32 %a.0.ph, 1
  %idxprom23 = sext i32 %mul to i64
  %arrayidx24 = getelementptr inbounds double* %zvec.tr573, i64 %idxprom23
  %7 = load double* %arrayidx24, align 8, !tbaa !3
  %mul25 = shl nsw i32 %b.0, 1
  %idxprom26 = sext i32 %mul25 to i64
  %arrayidx27 = getelementptr inbounds double* %zvec.tr573, i64 %idxprom26
  %8 = load double* %arrayidx27, align 8, !tbaa !3
  store double %8, double* %arrayidx24, align 8, !tbaa !3
  store double %7, double* %arrayidx27, align 8, !tbaa !3
  %add543 = or i32 %mul, 1
  %idxprom35 = sext i32 %add543 to i64
  %arrayidx36 = getelementptr inbounds double* %zvec.tr573, i64 %idxprom35
  %9 = load double* %arrayidx36, align 8, !tbaa !3
  %add38544 = or i32 %mul25, 1
  %idxprom39 = sext i32 %add38544 to i64
  %arrayidx40 = getelementptr inbounds double* %zvec.tr573, i64 %idxprom39
  %10 = load double* %arrayidx40, align 8, !tbaa !3
  store double %10, double* %arrayidx36, align 8, !tbaa !3
  store double %9, double* %arrayidx40, align 8, !tbaa !3
  %inc = add nsw i32 %a.0.ph, 1
  br label %if.end

if.end:                                           ; preds = %if.then6, %while.body
  %a.1 = phi i32 [ %inc, %if.then6 ], [ %a.0.ph, %while.body ]
  %inc49 = add nsw i32 %b.0, 1
  br label %while.cond.outer

land.rhs52:                                       ; preds = %if.end106, %land.rhs52.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end106 ], [ %3, %land.rhs52.lr.ph ]
  %d.1550 = phi i32 [ %d.2, %if.end106 ], [ %d.0, %land.rhs52.lr.ph ]
  %c.1549 = phi i32 [ %dec107, %if.end106 ], [ %c.0, %land.rhs52.lr.ph ]
  %arrayidx54 = getelementptr inbounds i32* %ivec1.tr571, i64 %indvars.iv
  %11 = load i32* %arrayidx54, align 4, !tbaa !0
  %cmp55 = icmp sgt i32 %11, %call
  br i1 %cmp55, label %if.end111, label %while.body57

while.body57:                                     ; preds = %land.rhs52
  %cmp60 = icmp eq i32 %11, %call
  br i1 %cmp60, label %if.then61, label %while.body57.if.end106_crit_edge

while.body57.if.end106_crit_edge:                 ; preds = %while.body57
  %.pre = trunc i64 %indvars.iv to i32
  br label %if.end106

if.then61:                                        ; preds = %while.body57
  %idxprom64 = sext i32 %d.1550 to i64
  %arrayidx65 = getelementptr inbounds i32* %ivec1.tr571, i64 %idxprom64
  %12 = load i32* %arrayidx65, align 4, !tbaa !0
  store i32 %12, i32* %arrayidx54, align 4, !tbaa !0
  store i32 %call, i32* %arrayidx65, align 4, !tbaa !0
  %arrayidx71 = getelementptr inbounds i32* %ivec2.tr572, i64 %indvars.iv
  %13 = load i32* %arrayidx71, align 4, !tbaa !0
  %arrayidx73 = getelementptr inbounds i32* %ivec2.tr572, i64 %idxprom64
  %14 = load i32* %arrayidx73, align 4, !tbaa !0
  store i32 %14, i32* %arrayidx71, align 4, !tbaa !0
  store i32 %13, i32* %arrayidx73, align 4, !tbaa !0
  %15 = trunc i64 %indvars.iv to i32
  %mul78 = shl nsw i32 %15, 1
  %idxprom79 = sext i32 %mul78 to i64
  %arrayidx80 = getelementptr inbounds double* %zvec.tr573, i64 %idxprom79
  %16 = load double* %arrayidx80, align 8, !tbaa !3
  %mul81 = shl nsw i32 %d.1550, 1
  %idxprom82 = sext i32 %mul81 to i64
  %arrayidx83 = getelementptr inbounds double* %zvec.tr573, i64 %idxprom82
  %17 = load double* %arrayidx83, align 8, !tbaa !3
  store double %17, double* %arrayidx80, align 8, !tbaa !3
  store double %16, double* %arrayidx83, align 8, !tbaa !3
  %add91541 = or i32 %mul78, 1
  %idxprom92 = sext i32 %add91541 to i64
  %arrayidx93 = getelementptr inbounds double* %zvec.tr573, i64 %idxprom92
  %18 = load double* %arrayidx93, align 8, !tbaa !3
  %add95542 = or i32 %mul81, 1
  %idxprom96 = sext i32 %add95542 to i64
  %arrayidx97 = getelementptr inbounds double* %zvec.tr573, i64 %idxprom96
  %19 = load double* %arrayidx97, align 8, !tbaa !3
  store double %19, double* %arrayidx93, align 8, !tbaa !3
  store double %18, double* %arrayidx97, align 8, !tbaa !3
  %dec = add nsw i32 %d.1550, -1
  br label %if.end106

if.end106:                                        ; preds = %while.body57.if.end106_crit_edge, %if.then61
  %.pre-phi = phi i32 [ %.pre, %while.body57.if.end106_crit_edge ], [ %15, %if.then61 ]
  %d.2 = phi i32 [ %d.1550, %while.body57.if.end106_crit_edge ], [ %dec, %if.then61 ]
  %indvars.iv.next = add i64 %indvars.iv, -1
  %dec107 = add nsw i32 %c.1549, -1
  %cmp51 = icmp sgt i32 %.pre-phi, %1
  br i1 %cmp51, label %land.rhs52, label %for.end

if.end111:                                        ; preds = %land.rhs52
  %arrayidx113 = getelementptr inbounds i32* %ivec1.tr571, i64 %indvars.iv587
  %20 = load i32* %arrayidx113, align 4, !tbaa !0
  %idxprom114 = sext i32 %c.1549 to i64
  %arrayidx115 = getelementptr inbounds i32* %ivec1.tr571, i64 %idxprom114
  %21 = load i32* %arrayidx115, align 4, !tbaa !0
  store i32 %21, i32* %arrayidx113, align 4, !tbaa !0
  store i32 %20, i32* %arrayidx115, align 4, !tbaa !0
  %arrayidx121 = getelementptr inbounds i32* %ivec2.tr572, i64 %indvars.iv587
  %22 = load i32* %arrayidx121, align 4, !tbaa !0
  %arrayidx123 = getelementptr inbounds i32* %ivec2.tr572, i64 %idxprom114
  %23 = load i32* %arrayidx123, align 4, !tbaa !0
  store i32 %23, i32* %arrayidx121, align 4, !tbaa !0
  store i32 %22, i32* %arrayidx123, align 4, !tbaa !0
  %mul128 = shl nsw i32 %1, 1
  %idxprom129 = sext i32 %mul128 to i64
  %arrayidx130 = getelementptr inbounds double* %zvec.tr573, i64 %idxprom129
  %24 = load double* %arrayidx130, align 8, !tbaa !3
  %mul131 = shl nsw i32 %c.1549, 1
  %idxprom132 = sext i32 %mul131 to i64
  %arrayidx133 = getelementptr inbounds double* %zvec.tr573, i64 %idxprom132
  %25 = load double* %arrayidx133, align 8, !tbaa !3
  store double %25, double* %arrayidx130, align 8, !tbaa !3
  store double %24, double* %arrayidx133, align 8, !tbaa !3
  %add141535 = or i32 %mul128, 1
  %idxprom142 = sext i32 %add141535 to i64
  %arrayidx143 = getelementptr inbounds double* %zvec.tr573, i64 %idxprom142
  %26 = load double* %arrayidx143, align 8, !tbaa !3
  %add145536 = or i32 %mul131, 1
  %idxprom146 = sext i32 %add145536 to i64
  %arrayidx147 = getelementptr inbounds double* %zvec.tr573, i64 %idxprom146
  %27 = load double* %arrayidx147, align 8, !tbaa !3
  store double %27, double* %arrayidx143, align 8, !tbaa !3
  store double %26, double* %arrayidx147, align 8, !tbaa !3
  %indvars.iv.next588 = add i64 %indvars.iv587, 1
  %inc156 = add nsw i32 %b.0, 1
  %dec157 = add nsw i32 %c.1549, -1
  br label %while.cond

for.end:                                          ; preds = %while.cond, %if.end106
  %d.1.lcssa = phi i32 [ %d.2, %if.end106 ], [ %d.0, %while.cond ]
  %c.1.lcssa = phi i32 [ %dec107, %if.end106 ], [ %c.0, %while.cond ]
  %sub158 = sub nsw i32 %b.0, %a.0.ph
  %cmp159 = icmp sgt i32 %a.0.ph, %sub158
  %sub158.a.0 = select i1 %cmp159, i32 %sub158, i32 %a.0.ph
  %cmp163559 = icmp eq i32 %sub158.a.0, 0
  br i1 %cmp163559, label %for.end211, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.end
  %28 = add i32 %b.0, 1
  %29 = add i32 %a.0.ph, -1
  %30 = sub i32 %29, %b.0
  %31 = xor i32 %a.0.ph, -1
  %32 = icmp sgt i32 %30, %31
  %smax = select i1 %32, i32 %30, i32 %31
  %33 = add i32 %28, %smax
  %34 = sext i32 %33 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv594 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next595, %for.body ]
  %indvars.iv591 = phi i64 [ %34, %for.body.lr.ph ], [ %indvars.iv.next592, %for.body ]
  %s.0562 = phi i32 [ %sub158.a.0, %for.body.lr.ph ], [ %dec210, %for.body ]
  %arrayidx165 = getelementptr inbounds i32* %ivec1.tr571, i64 %indvars.iv594
  %35 = load i32* %arrayidx165, align 4, !tbaa !0
  %arrayidx167 = getelementptr inbounds i32* %ivec1.tr571, i64 %indvars.iv591
  %36 = load i32* %arrayidx167, align 4, !tbaa !0
  store i32 %36, i32* %arrayidx165, align 4, !tbaa !0
  store i32 %35, i32* %arrayidx167, align 4, !tbaa !0
  %arrayidx173 = getelementptr inbounds i32* %ivec2.tr572, i64 %indvars.iv594
  %37 = load i32* %arrayidx173, align 4, !tbaa !0
  %arrayidx175 = getelementptr inbounds i32* %ivec2.tr572, i64 %indvars.iv591
  %38 = load i32* %arrayidx175, align 4, !tbaa !0
  store i32 %38, i32* %arrayidx173, align 4, !tbaa !0
  store i32 %37, i32* %arrayidx175, align 4, !tbaa !0
  %39 = trunc i64 %indvars.iv594 to i32
  %mul180 = shl nsw i32 %39, 1
  %idxprom181 = sext i32 %mul180 to i64
  %arrayidx182 = getelementptr inbounds double* %zvec.tr573, i64 %idxprom181
  %40 = load double* %arrayidx182, align 8, !tbaa !3
  %41 = trunc i64 %indvars.iv591 to i32
  %mul183 = shl nsw i32 %41, 1
  %idxprom184 = sext i32 %mul183 to i64
  %arrayidx185 = getelementptr inbounds double* %zvec.tr573, i64 %idxprom184
  %42 = load double* %arrayidx185, align 8, !tbaa !3
  store double %42, double* %arrayidx182, align 8, !tbaa !3
  store double %40, double* %arrayidx185, align 8, !tbaa !3
  %add193539 = or i32 %mul180, 1
  %idxprom194 = sext i32 %add193539 to i64
  %arrayidx195 = getelementptr inbounds double* %zvec.tr573, i64 %idxprom194
  %43 = load double* %arrayidx195, align 8, !tbaa !3
  %add197540 = or i32 %mul183, 1
  %idxprom198 = sext i32 %add197540 to i64
  %arrayidx199 = getelementptr inbounds double* %zvec.tr573, i64 %idxprom198
  %44 = load double* %arrayidx199, align 8, !tbaa !3
  store double %44, double* %arrayidx195, align 8, !tbaa !3
  store double %43, double* %arrayidx199, align 8, !tbaa !3
  %indvars.iv.next595 = add i64 %indvars.iv594, 1
  %dec210 = add nsw i32 %s.0562, -1
  %cmp163 = icmp eq i32 %dec210, 0
  %indvars.iv.next592 = add i64 %indvars.iv591, 1
  br i1 %cmp163, label %for.end211, label %for.body

for.end211:                                       ; preds = %for.body, %for.end
  %sub212 = sub nsw i32 %d.1.lcssa, %c.1.lcssa
  %sub214 = sub nsw i32 %sub, %d.1.lcssa
  %cmp215 = icmp sgt i32 %sub212, %sub214
  %sub214.sub212 = select i1 %cmp215, i32 %sub214, i32 %sub212
  %cmp225563 = icmp eq i32 %sub214.sub212, 0
  br i1 %cmp225563, label %for.end275, label %for.body226.lr.ph

for.body226.lr.ph:                                ; preds = %for.end211
  %45 = add i32 %n.tr570, 1
  %46 = sub i32 %d.1.lcssa, %n.tr570
  %47 = add i32 %c.1.lcssa, -1
  %48 = sub i32 %47, %d.1.lcssa
  %49 = icmp sgt i32 %46, %48
  %smax602 = select i1 %49, i32 %46, i32 %48
  %50 = add i32 %45, %smax602
  %51 = sext i32 %50 to i64
  %52 = sext i32 %b.0 to i64
  br label %for.body226

for.body226:                                      ; preds = %for.body226.lr.ph, %for.body226
  %indvars.iv606 = phi i64 [ %52, %for.body226.lr.ph ], [ %indvars.iv.next607, %for.body226 ]
  %indvars.iv603 = phi i64 [ %51, %for.body226.lr.ph ], [ %indvars.iv.next604, %for.body226 ]
  %s.1566 = phi i32 [ %sub214.sub212, %for.body226.lr.ph ], [ %dec274, %for.body226 ]
  %arrayidx228 = getelementptr inbounds i32* %ivec1.tr571, i64 %indvars.iv606
  %53 = load i32* %arrayidx228, align 4, !tbaa !0
  %arrayidx230 = getelementptr inbounds i32* %ivec1.tr571, i64 %indvars.iv603
  %54 = load i32* %arrayidx230, align 4, !tbaa !0
  store i32 %54, i32* %arrayidx228, align 4, !tbaa !0
  store i32 %53, i32* %arrayidx230, align 4, !tbaa !0
  %arrayidx236 = getelementptr inbounds i32* %ivec2.tr572, i64 %indvars.iv606
  %55 = load i32* %arrayidx236, align 4, !tbaa !0
  %arrayidx238 = getelementptr inbounds i32* %ivec2.tr572, i64 %indvars.iv603
  %56 = load i32* %arrayidx238, align 4, !tbaa !0
  store i32 %56, i32* %arrayidx236, align 4, !tbaa !0
  store i32 %55, i32* %arrayidx238, align 4, !tbaa !0
  %57 = trunc i64 %indvars.iv606 to i32
  %mul243 = shl nsw i32 %57, 1
  %idxprom244 = sext i32 %mul243 to i64
  %arrayidx245 = getelementptr inbounds double* %zvec.tr573, i64 %idxprom244
  %58 = load double* %arrayidx245, align 8, !tbaa !3
  %59 = trunc i64 %indvars.iv603 to i32
  %mul246 = shl nsw i32 %59, 1
  %idxprom247 = sext i32 %mul246 to i64
  %arrayidx248 = getelementptr inbounds double* %zvec.tr573, i64 %idxprom247
  %60 = load double* %arrayidx248, align 8, !tbaa !3
  store double %60, double* %arrayidx245, align 8, !tbaa !3
  store double %58, double* %arrayidx248, align 8, !tbaa !3
  %add256537 = or i32 %mul243, 1
  %idxprom257 = sext i32 %add256537 to i64
  %arrayidx258 = getelementptr inbounds double* %zvec.tr573, i64 %idxprom257
  %61 = load double* %arrayidx258, align 8, !tbaa !3
  %add260538 = or i32 %mul246, 1
  %idxprom261 = sext i32 %add260538 to i64
  %arrayidx262 = getelementptr inbounds double* %zvec.tr573, i64 %idxprom261
  %62 = load double* %arrayidx262, align 8, !tbaa !3
  store double %62, double* %arrayidx258, align 8, !tbaa !3
  store double %61, double* %arrayidx262, align 8, !tbaa !3
  %indvars.iv.next607 = add i64 %indvars.iv606, 1
  %dec274 = add nsw i32 %s.1566, -1
  %cmp225 = icmp eq i32 %dec274, 0
  %indvars.iv.next604 = add i64 %indvars.iv603, 1
  br i1 %cmp225, label %for.end275, label %for.body226

for.end275:                                       ; preds = %for.body226, %for.end211
  tail call void @IV2ZVqsortDown(i32 %sub158, i32* %ivec1.tr571, i32* %ivec2.tr572, double* %zvec.tr573) #2
  %idx.ext = sext i32 %n.tr570 to i64
  %idx.ext279 = sext i32 %sub212 to i64
  %add.ptr.sum = sub i64 %idx.ext, %idx.ext279
  %add.ptr280 = getelementptr inbounds i32* %ivec1.tr571, i64 %add.ptr.sum
  %add.ptr286 = getelementptr inbounds i32* %ivec2.tr572, i64 %add.ptr.sum
  %sub288 = sub nsw i32 %n.tr570, %sub212
  %mul289 = shl nsw i32 %sub288, 1
  %idx.ext290 = sext i32 %mul289 to i64
  %add.ptr291 = getelementptr inbounds double* %zvec.tr573, i64 %idx.ext290
  %cmp = icmp slt i32 %sub212, 1
  br i1 %cmp, label %if.then, label %if.else
}

; Function Attrs: nounwind optsize uwtable
define void @DVqsortUp(i32 %n, double* %dvec) #1 {
entry:
  %cmp226 = icmp slt i32 %n, 11
  br i1 %cmp226, label %if.then, label %if.else

if.then:                                          ; preds = %for.end97, %entry
  %dvec.tr.lcssa = phi double* [ %dvec, %entry ], [ %add.ptr102, %for.end97 ]
  %n.tr.lcssa = phi i32 [ %n, %entry ], [ %sub70, %for.end97 ]
  tail call void @DVisortUp(i32 %n.tr.lcssa, double* %dvec.tr.lcssa) #2
  ret void

if.else:                                          ; preds = %entry, %for.end97
  %dvec.tr228 = phi double* [ %add.ptr102, %for.end97 ], [ %dvec, %entry ]
  %n.tr227 = phi i32 [ %sub70, %for.end97 ], [ %n, %entry ]
  %call = tail call fastcc double @Dcentervalue(i32 %n.tr227, double* %dvec.tr228) #2
  %sub = add nsw i32 %n.tr227, -1
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.end, %if.else
  %a.0.ph = phi i32 [ 0, %if.else ], [ %a.1, %if.end ]
  %b.0.ph = phi i32 [ 0, %if.else ], [ %inc15, %if.end ]
  %c.0.ph = phi i32 [ %sub, %if.else ], [ %c.0, %if.end ]
  %d.0.ph = phi i32 [ %sub, %if.else ], [ %d.0, %if.end ]
  %0 = sext i32 %b.0.ph to i64
  br label %while.cond

while.cond:                                       ; preds = %while.cond.outer, %if.end41
  %indvars.iv240 = phi i64 [ %0, %while.cond.outer ], [ %indvars.iv.next241, %if.end41 ]
  %b.0 = phi i32 [ %b.0.ph, %while.cond.outer ], [ %inc50, %if.end41 ]
  %c.0 = phi i32 [ %c.0.ph, %while.cond.outer ], [ %dec51, %if.end41 ]
  %d.0 = phi i32 [ %d.0.ph, %while.cond.outer ], [ %d.1207, %if.end41 ]
  %1 = trunc i64 %indvars.iv240 to i32
  %cmp1 = icmp sgt i32 %1, %c.0
  br i1 %cmp1, label %for.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %arrayidx = getelementptr inbounds double* %dvec.tr228, i64 %indvars.iv240
  %2 = load double* %arrayidx, align 8, !tbaa !3
  %cmp2 = fcmp ugt double %2, %call
  br i1 %cmp2, label %land.rhs18.lr.ph, label %while.body

land.rhs18.lr.ph:                                 ; preds = %land.rhs
  %3 = sext i32 %c.0 to i64
  br label %land.rhs18

while.body:                                       ; preds = %land.rhs
  %cmp5 = fcmp oeq double %2, %call
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %while.body
  %idxprom7 = sext i32 %a.0.ph to i64
  %arrayidx8 = getelementptr inbounds double* %dvec.tr228, i64 %idxprom7
  %4 = load double* %arrayidx8, align 8, !tbaa !3
  store double %2, double* %arrayidx8, align 8, !tbaa !3
  store double %4, double* %arrayidx, align 8, !tbaa !3
  %inc = add nsw i32 %a.0.ph, 1
  br label %if.end

if.end:                                           ; preds = %if.then6, %while.body
  %a.1 = phi i32 [ %inc, %if.then6 ], [ %a.0.ph, %while.body ]
  %inc15 = add nsw i32 %b.0, 1
  br label %while.cond.outer

land.rhs18:                                       ; preds = %if.end36, %land.rhs18.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end36 ], [ %3, %land.rhs18.lr.ph ]
  %d.1207 = phi i32 [ %d.2, %if.end36 ], [ %d.0, %land.rhs18.lr.ph ]
  %c.1206 = phi i32 [ %dec37, %if.end36 ], [ %c.0, %land.rhs18.lr.ph ]
  %arrayidx20 = getelementptr inbounds double* %dvec.tr228, i64 %indvars.iv
  %5 = load double* %arrayidx20, align 8, !tbaa !3
  %cmp21 = fcmp ult double %5, %call
  br i1 %cmp21, label %if.end41, label %while.body23

while.body23:                                     ; preds = %land.rhs18
  %cmp26 = fcmp oeq double %5, %call
  br i1 %cmp26, label %if.then27, label %if.end36

if.then27:                                        ; preds = %while.body23
  %idxprom30 = sext i32 %d.1207 to i64
  %arrayidx31 = getelementptr inbounds double* %dvec.tr228, i64 %idxprom30
  %6 = load double* %arrayidx31, align 8, !tbaa !3
  store double %6, double* %arrayidx20, align 8, !tbaa !3
  store double %5, double* %arrayidx31, align 8, !tbaa !3
  %dec = add nsw i32 %d.1207, -1
  br label %if.end36

if.end36:                                         ; preds = %if.then27, %while.body23
  %d.2 = phi i32 [ %dec, %if.then27 ], [ %d.1207, %while.body23 ]
  %indvars.iv.next = add i64 %indvars.iv, -1
  %dec37 = add nsw i32 %c.1206, -1
  %7 = trunc i64 %indvars.iv to i32
  %cmp17 = icmp sgt i32 %7, %1
  br i1 %cmp17, label %land.rhs18, label %for.end

if.end41:                                         ; preds = %land.rhs18
  %arrayidx43 = getelementptr inbounds double* %dvec.tr228, i64 %indvars.iv240
  %8 = load double* %arrayidx43, align 8, !tbaa !3
  %idxprom44 = sext i32 %c.1206 to i64
  %arrayidx45 = getelementptr inbounds double* %dvec.tr228, i64 %idxprom44
  %9 = load double* %arrayidx45, align 8, !tbaa !3
  store double %9, double* %arrayidx43, align 8, !tbaa !3
  store double %8, double* %arrayidx45, align 8, !tbaa !3
  %indvars.iv.next241 = add i64 %indvars.iv240, 1
  %inc50 = add nsw i32 %b.0, 1
  %dec51 = add nsw i32 %c.1206, -1
  br label %while.cond

for.end:                                          ; preds = %while.cond, %if.end36
  %d.1.lcssa = phi i32 [ %d.2, %if.end36 ], [ %d.0, %while.cond ]
  %c.1.lcssa = phi i32 [ %dec37, %if.end36 ], [ %c.0, %while.cond ]
  %sub52 = sub nsw i32 %b.0, %a.0.ph
  %cmp53 = icmp sgt i32 %a.0.ph, %sub52
  %sub52.a.0 = select i1 %cmp53, i32 %sub52, i32 %a.0.ph
  %cmp57216 = icmp eq i32 %sub52.a.0, 0
  br i1 %cmp57216, label %for.end69, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.end
  %10 = add i32 %b.0, 1
  %11 = add i32 %a.0.ph, -1
  %12 = sub i32 %11, %b.0
  %13 = xor i32 %a.0.ph, -1
  %14 = icmp sgt i32 %12, %13
  %smax = select i1 %14, i32 %12, i32 %13
  %15 = add i32 %10, %smax
  %16 = sext i32 %15 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv247 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next248, %for.body ]
  %indvars.iv244 = phi i64 [ %16, %for.body.lr.ph ], [ %indvars.iv.next245, %for.body ]
  %s.0219 = phi i32 [ %sub52.a.0, %for.body.lr.ph ], [ %dec68, %for.body ]
  %arrayidx59 = getelementptr inbounds double* %dvec.tr228, i64 %indvars.iv247
  %17 = load double* %arrayidx59, align 8, !tbaa !3
  %arrayidx61 = getelementptr inbounds double* %dvec.tr228, i64 %indvars.iv244
  %18 = load double* %arrayidx61, align 8, !tbaa !3
  store double %18, double* %arrayidx59, align 8, !tbaa !3
  store double %17, double* %arrayidx61, align 8, !tbaa !3
  %indvars.iv.next248 = add i64 %indvars.iv247, 1
  %dec68 = add nsw i32 %s.0219, -1
  %cmp57 = icmp eq i32 %dec68, 0
  %indvars.iv.next245 = add i64 %indvars.iv244, 1
  br i1 %cmp57, label %for.end69, label %for.body

for.end69:                                        ; preds = %for.body, %for.end
  %sub70 = sub nsw i32 %d.1.lcssa, %c.1.lcssa
  %sub72 = sub nsw i32 %sub, %d.1.lcssa
  %cmp73 = icmp sgt i32 %sub70, %sub72
  %sub72.sub70 = select i1 %cmp73, i32 %sub72, i32 %sub70
  %cmp83220 = icmp eq i32 %sub72.sub70, 0
  br i1 %cmp83220, label %for.end97, label %for.body84.lr.ph

for.body84.lr.ph:                                 ; preds = %for.end69
  %19 = add i32 %n.tr227, 1
  %20 = sub i32 %d.1.lcssa, %n.tr227
  %21 = add i32 %c.1.lcssa, -1
  %22 = sub i32 %21, %d.1.lcssa
  %23 = icmp sgt i32 %20, %22
  %smax252 = select i1 %23, i32 %20, i32 %22
  %24 = add i32 %19, %smax252
  %25 = sext i32 %24 to i64
  %26 = sext i32 %b.0 to i64
  br label %for.body84

for.body84:                                       ; preds = %for.body84.lr.ph, %for.body84
  %indvars.iv256 = phi i64 [ %26, %for.body84.lr.ph ], [ %indvars.iv.next257, %for.body84 ]
  %indvars.iv253 = phi i64 [ %25, %for.body84.lr.ph ], [ %indvars.iv.next254, %for.body84 ]
  %s.1223 = phi i32 [ %sub72.sub70, %for.body84.lr.ph ], [ %dec96, %for.body84 ]
  %arrayidx86 = getelementptr inbounds double* %dvec.tr228, i64 %indvars.iv256
  %27 = load double* %arrayidx86, align 8, !tbaa !3
  %arrayidx88 = getelementptr inbounds double* %dvec.tr228, i64 %indvars.iv253
  %28 = load double* %arrayidx88, align 8, !tbaa !3
  store double %28, double* %arrayidx86, align 8, !tbaa !3
  store double %27, double* %arrayidx88, align 8, !tbaa !3
  %indvars.iv.next257 = add i64 %indvars.iv256, 1
  %dec96 = add nsw i32 %s.1223, -1
  %cmp83 = icmp eq i32 %dec96, 0
  %indvars.iv.next254 = add i64 %indvars.iv253, 1
  br i1 %cmp83, label %for.end97, label %for.body84

for.end97:                                        ; preds = %for.body84, %for.end69
  tail call void @DVqsortUp(i32 %sub52, double* %dvec.tr228) #2
  %idx.ext = sext i32 %n.tr227 to i64
  %idx.ext101 = sext i32 %sub70 to i64
  %add.ptr.sum = sub i64 %idx.ext, %idx.ext101
  %add.ptr102 = getelementptr inbounds double* %dvec.tr228, i64 %add.ptr.sum
  %cmp = icmp slt i32 %sub70, 11
  br i1 %cmp, label %if.then, label %if.else
}

; Function Attrs: nounwind optsize readonly uwtable
define internal fastcc double @Dcentervalue(i32 %n, double* nocapture %a) #0 {
entry:
  %div = sdiv i32 %n, 2
  %cmp = icmp sgt i32 %n, 7
  br i1 %cmp, label %if.then, label %if.end14

if.then:                                          ; preds = %entry
  %sub = add nsw i32 %n, -1
  %cmp1 = icmp sgt i32 %n, 39
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %div3 = sdiv i32 %n, 8
  %add5 = shl nsw i32 %div3, 1
  %call = tail call fastcc i32 @Dmedian3(i32 0, i32 %div3, i32 %add5, double* %a) #2
  %sub6 = sub nsw i32 %div, %div3
  %add7 = add nsw i32 %div3, %div
  %call8 = tail call fastcc i32 @Dmedian3(i32 %sub6, i32 %div, i32 %add7, double* %a) #2
  %sub9 = sub nsw i32 %sub, %div3
  %sub10 = sub nsw i32 %sub9, %div3
  %call12 = tail call fastcc i32 @Dmedian3(i32 %sub10, i32 %sub9, i32 %sub, double* %a) #2
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %j.0 = phi i32 [ %call8, %if.then2 ], [ %div, %if.then ]
  %k.0 = phi i32 [ %call12, %if.then2 ], [ %sub, %if.then ]
  %i.0 = phi i32 [ %call, %if.then2 ], [ 0, %if.then ]
  %call13 = tail call fastcc i32 @Dmedian3(i32 %i.0, i32 %j.0, i32 %k.0, double* %a) #2
  br label %if.end14

if.end14:                                         ; preds = %if.end, %entry
  %j.1 = phi i32 [ %call13, %if.end ], [ %div, %entry ]
  %idxprom = sext i32 %j.1 to i64
  %arrayidx = getelementptr inbounds double* %a, i64 %idxprom
  %0 = load double* %arrayidx, align 8, !tbaa !3
  ret double %0
}

; Function Attrs: nounwind optsize uwtable
define void @DVqsortDown(i32 %n, double* %dvec) #1 {
entry:
  %cmp226 = icmp slt i32 %n, 11
  br i1 %cmp226, label %if.then, label %if.else

if.then:                                          ; preds = %for.end97, %entry
  %dvec.tr.lcssa = phi double* [ %dvec, %entry ], [ %add.ptr102, %for.end97 ]
  %n.tr.lcssa = phi i32 [ %n, %entry ], [ %sub70, %for.end97 ]
  tail call void @DVisortDown(i32 %n.tr.lcssa, double* %dvec.tr.lcssa) #2
  ret void

if.else:                                          ; preds = %entry, %for.end97
  %dvec.tr228 = phi double* [ %add.ptr102, %for.end97 ], [ %dvec, %entry ]
  %n.tr227 = phi i32 [ %sub70, %for.end97 ], [ %n, %entry ]
  %call = tail call fastcc double @Dcentervalue(i32 %n.tr227, double* %dvec.tr228) #2
  %sub = add nsw i32 %n.tr227, -1
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.end, %if.else
  %a.0.ph = phi i32 [ 0, %if.else ], [ %a.1, %if.end ]
  %b.0.ph = phi i32 [ 0, %if.else ], [ %inc15, %if.end ]
  %c.0.ph = phi i32 [ %sub, %if.else ], [ %c.0, %if.end ]
  %d.0.ph = phi i32 [ %sub, %if.else ], [ %d.0, %if.end ]
  %0 = sext i32 %b.0.ph to i64
  br label %while.cond

while.cond:                                       ; preds = %while.cond.outer, %if.end41
  %indvars.iv240 = phi i64 [ %0, %while.cond.outer ], [ %indvars.iv.next241, %if.end41 ]
  %b.0 = phi i32 [ %b.0.ph, %while.cond.outer ], [ %inc50, %if.end41 ]
  %c.0 = phi i32 [ %c.0.ph, %while.cond.outer ], [ %dec51, %if.end41 ]
  %d.0 = phi i32 [ %d.0.ph, %while.cond.outer ], [ %d.1207, %if.end41 ]
  %1 = trunc i64 %indvars.iv240 to i32
  %cmp1 = icmp sgt i32 %1, %c.0
  br i1 %cmp1, label %for.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %arrayidx = getelementptr inbounds double* %dvec.tr228, i64 %indvars.iv240
  %2 = load double* %arrayidx, align 8, !tbaa !3
  %cmp2 = fcmp ult double %2, %call
  br i1 %cmp2, label %land.rhs18.lr.ph, label %while.body

land.rhs18.lr.ph:                                 ; preds = %land.rhs
  %3 = sext i32 %c.0 to i64
  br label %land.rhs18

while.body:                                       ; preds = %land.rhs
  %cmp5 = fcmp oeq double %2, %call
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %while.body
  %idxprom7 = sext i32 %a.0.ph to i64
  %arrayidx8 = getelementptr inbounds double* %dvec.tr228, i64 %idxprom7
  %4 = load double* %arrayidx8, align 8, !tbaa !3
  store double %2, double* %arrayidx8, align 8, !tbaa !3
  store double %4, double* %arrayidx, align 8, !tbaa !3
  %inc = add nsw i32 %a.0.ph, 1
  br label %if.end

if.end:                                           ; preds = %if.then6, %while.body
  %a.1 = phi i32 [ %inc, %if.then6 ], [ %a.0.ph, %while.body ]
  %inc15 = add nsw i32 %b.0, 1
  br label %while.cond.outer

land.rhs18:                                       ; preds = %if.end36, %land.rhs18.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end36 ], [ %3, %land.rhs18.lr.ph ]
  %d.1207 = phi i32 [ %d.2, %if.end36 ], [ %d.0, %land.rhs18.lr.ph ]
  %c.1206 = phi i32 [ %dec37, %if.end36 ], [ %c.0, %land.rhs18.lr.ph ]
  %arrayidx20 = getelementptr inbounds double* %dvec.tr228, i64 %indvars.iv
  %5 = load double* %arrayidx20, align 8, !tbaa !3
  %cmp21 = fcmp ugt double %5, %call
  br i1 %cmp21, label %if.end41, label %while.body23

while.body23:                                     ; preds = %land.rhs18
  %cmp26 = fcmp oeq double %5, %call
  br i1 %cmp26, label %if.then27, label %if.end36

if.then27:                                        ; preds = %while.body23
  %idxprom30 = sext i32 %d.1207 to i64
  %arrayidx31 = getelementptr inbounds double* %dvec.tr228, i64 %idxprom30
  %6 = load double* %arrayidx31, align 8, !tbaa !3
  store double %6, double* %arrayidx20, align 8, !tbaa !3
  store double %5, double* %arrayidx31, align 8, !tbaa !3
  %dec = add nsw i32 %d.1207, -1
  br label %if.end36

if.end36:                                         ; preds = %if.then27, %while.body23
  %d.2 = phi i32 [ %dec, %if.then27 ], [ %d.1207, %while.body23 ]
  %indvars.iv.next = add i64 %indvars.iv, -1
  %dec37 = add nsw i32 %c.1206, -1
  %7 = trunc i64 %indvars.iv to i32
  %cmp17 = icmp sgt i32 %7, %1
  br i1 %cmp17, label %land.rhs18, label %for.end

if.end41:                                         ; preds = %land.rhs18
  %arrayidx43 = getelementptr inbounds double* %dvec.tr228, i64 %indvars.iv240
  %8 = load double* %arrayidx43, align 8, !tbaa !3
  %idxprom44 = sext i32 %c.1206 to i64
  %arrayidx45 = getelementptr inbounds double* %dvec.tr228, i64 %idxprom44
  %9 = load double* %arrayidx45, align 8, !tbaa !3
  store double %9, double* %arrayidx43, align 8, !tbaa !3
  store double %8, double* %arrayidx45, align 8, !tbaa !3
  %indvars.iv.next241 = add i64 %indvars.iv240, 1
  %inc50 = add nsw i32 %b.0, 1
  %dec51 = add nsw i32 %c.1206, -1
  br label %while.cond

for.end:                                          ; preds = %while.cond, %if.end36
  %d.1.lcssa = phi i32 [ %d.2, %if.end36 ], [ %d.0, %while.cond ]
  %c.1.lcssa = phi i32 [ %dec37, %if.end36 ], [ %c.0, %while.cond ]
  %sub52 = sub nsw i32 %b.0, %a.0.ph
  %cmp53 = icmp sgt i32 %a.0.ph, %sub52
  %sub52.a.0 = select i1 %cmp53, i32 %sub52, i32 %a.0.ph
  %cmp57216 = icmp eq i32 %sub52.a.0, 0
  br i1 %cmp57216, label %for.end69, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.end
  %10 = add i32 %b.0, 1
  %11 = add i32 %a.0.ph, -1
  %12 = sub i32 %11, %b.0
  %13 = xor i32 %a.0.ph, -1
  %14 = icmp sgt i32 %12, %13
  %smax = select i1 %14, i32 %12, i32 %13
  %15 = add i32 %10, %smax
  %16 = sext i32 %15 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv247 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next248, %for.body ]
  %indvars.iv244 = phi i64 [ %16, %for.body.lr.ph ], [ %indvars.iv.next245, %for.body ]
  %s.0219 = phi i32 [ %sub52.a.0, %for.body.lr.ph ], [ %dec68, %for.body ]
  %arrayidx59 = getelementptr inbounds double* %dvec.tr228, i64 %indvars.iv247
  %17 = load double* %arrayidx59, align 8, !tbaa !3
  %arrayidx61 = getelementptr inbounds double* %dvec.tr228, i64 %indvars.iv244
  %18 = load double* %arrayidx61, align 8, !tbaa !3
  store double %18, double* %arrayidx59, align 8, !tbaa !3
  store double %17, double* %arrayidx61, align 8, !tbaa !3
  %indvars.iv.next248 = add i64 %indvars.iv247, 1
  %dec68 = add nsw i32 %s.0219, -1
  %cmp57 = icmp eq i32 %dec68, 0
  %indvars.iv.next245 = add i64 %indvars.iv244, 1
  br i1 %cmp57, label %for.end69, label %for.body

for.end69:                                        ; preds = %for.body, %for.end
  %sub70 = sub nsw i32 %d.1.lcssa, %c.1.lcssa
  %sub72 = sub nsw i32 %sub, %d.1.lcssa
  %cmp73 = icmp sgt i32 %sub70, %sub72
  %sub72.sub70 = select i1 %cmp73, i32 %sub72, i32 %sub70
  %cmp83220 = icmp eq i32 %sub72.sub70, 0
  br i1 %cmp83220, label %for.end97, label %for.body84.lr.ph

for.body84.lr.ph:                                 ; preds = %for.end69
  %19 = add i32 %n.tr227, 1
  %20 = sub i32 %d.1.lcssa, %n.tr227
  %21 = add i32 %c.1.lcssa, -1
  %22 = sub i32 %21, %d.1.lcssa
  %23 = icmp sgt i32 %20, %22
  %smax252 = select i1 %23, i32 %20, i32 %22
  %24 = add i32 %19, %smax252
  %25 = sext i32 %24 to i64
  %26 = sext i32 %b.0 to i64
  br label %for.body84

for.body84:                                       ; preds = %for.body84.lr.ph, %for.body84
  %indvars.iv256 = phi i64 [ %26, %for.body84.lr.ph ], [ %indvars.iv.next257, %for.body84 ]
  %indvars.iv253 = phi i64 [ %25, %for.body84.lr.ph ], [ %indvars.iv.next254, %for.body84 ]
  %s.1223 = phi i32 [ %sub72.sub70, %for.body84.lr.ph ], [ %dec96, %for.body84 ]
  %arrayidx86 = getelementptr inbounds double* %dvec.tr228, i64 %indvars.iv256
  %27 = load double* %arrayidx86, align 8, !tbaa !3
  %arrayidx88 = getelementptr inbounds double* %dvec.tr228, i64 %indvars.iv253
  %28 = load double* %arrayidx88, align 8, !tbaa !3
  store double %28, double* %arrayidx86, align 8, !tbaa !3
  store double %27, double* %arrayidx88, align 8, !tbaa !3
  %indvars.iv.next257 = add i64 %indvars.iv256, 1
  %dec96 = add nsw i32 %s.1223, -1
  %cmp83 = icmp eq i32 %dec96, 0
  %indvars.iv.next254 = add i64 %indvars.iv253, 1
  br i1 %cmp83, label %for.end97, label %for.body84

for.end97:                                        ; preds = %for.body84, %for.end69
  tail call void @DVqsortDown(i32 %sub52, double* %dvec.tr228) #2
  %idx.ext = sext i32 %n.tr227 to i64
  %idx.ext101 = sext i32 %sub70 to i64
  %add.ptr.sum = sub i64 %idx.ext, %idx.ext101
  %add.ptr102 = getelementptr inbounds double* %dvec.tr228, i64 %add.ptr.sum
  %cmp = icmp slt i32 %sub70, 11
  br i1 %cmp, label %if.then, label %if.else
}

; Function Attrs: nounwind optsize uwtable
define void @DV2qsortUp(i32 %n, double* %dvec1, double* %dvec2) #1 {
entry:
  %cmp322 = icmp slt i32 %n, 11
  br i1 %cmp322, label %if.then, label %if.else

if.then:                                          ; preds = %for.end137, %entry
  %dvec2.tr.lcssa = phi double* [ %dvec2, %entry ], [ %add.ptr148, %for.end137 ]
  %dvec1.tr.lcssa = phi double* [ %dvec1, %entry ], [ %add.ptr142, %for.end137 ]
  %n.tr.lcssa = phi i32 [ %n, %entry ], [ %sub102, %for.end137 ]
  tail call void @DV2isortUp(i32 %n.tr.lcssa, double* %dvec1.tr.lcssa, double* %dvec2.tr.lcssa) #2
  ret void

if.else:                                          ; preds = %entry, %for.end137
  %dvec2.tr325 = phi double* [ %add.ptr148, %for.end137 ], [ %dvec2, %entry ]
  %dvec1.tr324 = phi double* [ %add.ptr142, %for.end137 ], [ %dvec1, %entry ]
  %n.tr323 = phi i32 [ %sub102, %for.end137 ], [ %n, %entry ]
  %call = tail call fastcc double @Dcentervalue(i32 %n.tr323, double* %dvec1.tr324) #2
  %sub = add nsw i32 %n.tr323, -1
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.end, %if.else
  %a.0.ph = phi i32 [ 0, %if.else ], [ %a.1, %if.end ]
  %b.0.ph = phi i32 [ 0, %if.else ], [ %inc23, %if.end ]
  %c.0.ph = phi i32 [ %sub, %if.else ], [ %c.0, %if.end ]
  %d.0.ph = phi i32 [ %sub, %if.else ], [ %d.0, %if.end ]
  %0 = sext i32 %b.0.ph to i64
  br label %while.cond

while.cond:                                       ; preds = %while.cond.outer, %if.end57
  %indvars.iv338 = phi i64 [ %0, %while.cond.outer ], [ %indvars.iv.next339, %if.end57 ]
  %b.0 = phi i32 [ %b.0.ph, %while.cond.outer ], [ %inc74, %if.end57 ]
  %c.0 = phi i32 [ %c.0.ph, %while.cond.outer ], [ %dec75, %if.end57 ]
  %d.0 = phi i32 [ %d.0.ph, %while.cond.outer ], [ %d.1303, %if.end57 ]
  %1 = trunc i64 %indvars.iv338 to i32
  %cmp1 = icmp sgt i32 %1, %c.0
  br i1 %cmp1, label %for.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %arrayidx = getelementptr inbounds double* %dvec1.tr324, i64 %indvars.iv338
  %2 = load double* %arrayidx, align 8, !tbaa !3
  %cmp2 = fcmp ugt double %2, %call
  br i1 %cmp2, label %land.rhs26.lr.ph, label %while.body

land.rhs26.lr.ph:                                 ; preds = %land.rhs
  %3 = sext i32 %c.0 to i64
  br label %land.rhs26

while.body:                                       ; preds = %land.rhs
  %cmp5 = fcmp oeq double %2, %call
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %while.body
  %idxprom7 = sext i32 %a.0.ph to i64
  %arrayidx8 = getelementptr inbounds double* %dvec1.tr324, i64 %idxprom7
  %4 = load double* %arrayidx8, align 8, !tbaa !3
  store double %2, double* %arrayidx8, align 8, !tbaa !3
  store double %4, double* %arrayidx, align 8, !tbaa !3
  %arrayidx16 = getelementptr inbounds double* %dvec2.tr325, i64 %idxprom7
  %5 = load double* %arrayidx16, align 8, !tbaa !3
  %arrayidx18 = getelementptr inbounds double* %dvec2.tr325, i64 %indvars.iv338
  %6 = load double* %arrayidx18, align 8, !tbaa !3
  store double %6, double* %arrayidx16, align 8, !tbaa !3
  store double %5, double* %arrayidx18, align 8, !tbaa !3
  %inc = add nsw i32 %a.0.ph, 1
  br label %if.end

if.end:                                           ; preds = %if.then6, %while.body
  %a.1 = phi i32 [ %inc, %if.then6 ], [ %a.0.ph, %while.body ]
  %inc23 = add nsw i32 %b.0, 1
  br label %while.cond.outer

land.rhs26:                                       ; preds = %if.end52, %land.rhs26.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end52 ], [ %3, %land.rhs26.lr.ph ]
  %d.1303 = phi i32 [ %d.2, %if.end52 ], [ %d.0, %land.rhs26.lr.ph ]
  %c.1302 = phi i32 [ %dec53, %if.end52 ], [ %c.0, %land.rhs26.lr.ph ]
  %arrayidx28 = getelementptr inbounds double* %dvec1.tr324, i64 %indvars.iv
  %7 = load double* %arrayidx28, align 8, !tbaa !3
  %cmp29 = fcmp ult double %7, %call
  br i1 %cmp29, label %if.end57, label %while.body31

while.body31:                                     ; preds = %land.rhs26
  %cmp34 = fcmp oeq double %7, %call
  br i1 %cmp34, label %if.then35, label %if.end52

if.then35:                                        ; preds = %while.body31
  %idxprom38 = sext i32 %d.1303 to i64
  %arrayidx39 = getelementptr inbounds double* %dvec1.tr324, i64 %idxprom38
  %8 = load double* %arrayidx39, align 8, !tbaa !3
  store double %8, double* %arrayidx28, align 8, !tbaa !3
  store double %7, double* %arrayidx39, align 8, !tbaa !3
  %arrayidx45 = getelementptr inbounds double* %dvec2.tr325, i64 %indvars.iv
  %9 = load double* %arrayidx45, align 8, !tbaa !3
  %arrayidx47 = getelementptr inbounds double* %dvec2.tr325, i64 %idxprom38
  %10 = load double* %arrayidx47, align 8, !tbaa !3
  store double %10, double* %arrayidx45, align 8, !tbaa !3
  store double %9, double* %arrayidx47, align 8, !tbaa !3
  %dec = add nsw i32 %d.1303, -1
  br label %if.end52

if.end52:                                         ; preds = %if.then35, %while.body31
  %d.2 = phi i32 [ %dec, %if.then35 ], [ %d.1303, %while.body31 ]
  %indvars.iv.next = add i64 %indvars.iv, -1
  %dec53 = add nsw i32 %c.1302, -1
  %11 = trunc i64 %indvars.iv to i32
  %cmp25 = icmp sgt i32 %11, %1
  br i1 %cmp25, label %land.rhs26, label %for.end

if.end57:                                         ; preds = %land.rhs26
  %arrayidx59 = getelementptr inbounds double* %dvec1.tr324, i64 %indvars.iv338
  %12 = load double* %arrayidx59, align 8, !tbaa !3
  %idxprom60 = sext i32 %c.1302 to i64
  %arrayidx61 = getelementptr inbounds double* %dvec1.tr324, i64 %idxprom60
  %13 = load double* %arrayidx61, align 8, !tbaa !3
  store double %13, double* %arrayidx59, align 8, !tbaa !3
  store double %12, double* %arrayidx61, align 8, !tbaa !3
  %arrayidx67 = getelementptr inbounds double* %dvec2.tr325, i64 %indvars.iv338
  %14 = load double* %arrayidx67, align 8, !tbaa !3
  %arrayidx69 = getelementptr inbounds double* %dvec2.tr325, i64 %idxprom60
  %15 = load double* %arrayidx69, align 8, !tbaa !3
  store double %15, double* %arrayidx67, align 8, !tbaa !3
  store double %14, double* %arrayidx69, align 8, !tbaa !3
  %indvars.iv.next339 = add i64 %indvars.iv338, 1
  %inc74 = add nsw i32 %b.0, 1
  %dec75 = add nsw i32 %c.1302, -1
  br label %while.cond

for.end:                                          ; preds = %while.cond, %if.end52
  %d.1.lcssa = phi i32 [ %d.2, %if.end52 ], [ %d.0, %while.cond ]
  %c.1.lcssa = phi i32 [ %dec53, %if.end52 ], [ %c.0, %while.cond ]
  %sub76 = sub nsw i32 %b.0, %a.0.ph
  %cmp77 = icmp sgt i32 %a.0.ph, %sub76
  %sub76.a.0 = select i1 %cmp77, i32 %sub76, i32 %a.0.ph
  %cmp81312 = icmp eq i32 %sub76.a.0, 0
  br i1 %cmp81312, label %for.end101, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.end
  %16 = add i32 %b.0, 1
  %17 = add i32 %a.0.ph, -1
  %18 = sub i32 %17, %b.0
  %19 = xor i32 %a.0.ph, -1
  %20 = icmp sgt i32 %18, %19
  %smax = select i1 %20, i32 %18, i32 %19
  %21 = add i32 %16, %smax
  %22 = sext i32 %21 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv345 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next346, %for.body ]
  %indvars.iv342 = phi i64 [ %22, %for.body.lr.ph ], [ %indvars.iv.next343, %for.body ]
  %s.0315 = phi i32 [ %sub76.a.0, %for.body.lr.ph ], [ %dec100, %for.body ]
  %arrayidx83 = getelementptr inbounds double* %dvec1.tr324, i64 %indvars.iv345
  %23 = load double* %arrayidx83, align 8, !tbaa !3
  %arrayidx85 = getelementptr inbounds double* %dvec1.tr324, i64 %indvars.iv342
  %24 = load double* %arrayidx85, align 8, !tbaa !3
  store double %24, double* %arrayidx83, align 8, !tbaa !3
  store double %23, double* %arrayidx85, align 8, !tbaa !3
  %arrayidx91 = getelementptr inbounds double* %dvec2.tr325, i64 %indvars.iv345
  %25 = load double* %arrayidx91, align 8, !tbaa !3
  %arrayidx93 = getelementptr inbounds double* %dvec2.tr325, i64 %indvars.iv342
  %26 = load double* %arrayidx93, align 8, !tbaa !3
  store double %26, double* %arrayidx91, align 8, !tbaa !3
  store double %25, double* %arrayidx93, align 8, !tbaa !3
  %indvars.iv.next346 = add i64 %indvars.iv345, 1
  %dec100 = add nsw i32 %s.0315, -1
  %cmp81 = icmp eq i32 %dec100, 0
  %indvars.iv.next343 = add i64 %indvars.iv342, 1
  br i1 %cmp81, label %for.end101, label %for.body

for.end101:                                       ; preds = %for.body, %for.end
  %sub102 = sub nsw i32 %d.1.lcssa, %c.1.lcssa
  %sub104 = sub nsw i32 %sub, %d.1.lcssa
  %cmp105 = icmp sgt i32 %sub102, %sub104
  %sub104.sub102 = select i1 %cmp105, i32 %sub104, i32 %sub102
  %cmp115316 = icmp eq i32 %sub104.sub102, 0
  br i1 %cmp115316, label %for.end137, label %for.body116.lr.ph

for.body116.lr.ph:                                ; preds = %for.end101
  %27 = add i32 %n.tr323, 1
  %28 = sub i32 %d.1.lcssa, %n.tr323
  %29 = add i32 %c.1.lcssa, -1
  %30 = sub i32 %29, %d.1.lcssa
  %31 = icmp sgt i32 %28, %30
  %smax353 = select i1 %31, i32 %28, i32 %30
  %32 = add i32 %27, %smax353
  %33 = sext i32 %32 to i64
  %34 = sext i32 %b.0 to i64
  br label %for.body116

for.body116:                                      ; preds = %for.body116.lr.ph, %for.body116
  %indvars.iv357 = phi i64 [ %34, %for.body116.lr.ph ], [ %indvars.iv.next358, %for.body116 ]
  %indvars.iv354 = phi i64 [ %33, %for.body116.lr.ph ], [ %indvars.iv.next355, %for.body116 ]
  %s.1319 = phi i32 [ %sub104.sub102, %for.body116.lr.ph ], [ %dec136, %for.body116 ]
  %arrayidx118 = getelementptr inbounds double* %dvec1.tr324, i64 %indvars.iv357
  %35 = load double* %arrayidx118, align 8, !tbaa !3
  %arrayidx120 = getelementptr inbounds double* %dvec1.tr324, i64 %indvars.iv354
  %36 = load double* %arrayidx120, align 8, !tbaa !3
  store double %36, double* %arrayidx118, align 8, !tbaa !3
  store double %35, double* %arrayidx120, align 8, !tbaa !3
  %arrayidx126 = getelementptr inbounds double* %dvec2.tr325, i64 %indvars.iv357
  %37 = load double* %arrayidx126, align 8, !tbaa !3
  %arrayidx128 = getelementptr inbounds double* %dvec2.tr325, i64 %indvars.iv354
  %38 = load double* %arrayidx128, align 8, !tbaa !3
  store double %38, double* %arrayidx126, align 8, !tbaa !3
  store double %37, double* %arrayidx128, align 8, !tbaa !3
  %indvars.iv.next358 = add i64 %indvars.iv357, 1
  %dec136 = add nsw i32 %s.1319, -1
  %cmp115 = icmp eq i32 %dec136, 0
  %indvars.iv.next355 = add i64 %indvars.iv354, 1
  br i1 %cmp115, label %for.end137, label %for.body116

for.end137:                                       ; preds = %for.body116, %for.end101
  tail call void @DV2qsortUp(i32 %sub76, double* %dvec1.tr324, double* %dvec2.tr325) #2
  %idx.ext = sext i32 %n.tr323 to i64
  %idx.ext141 = sext i32 %sub102 to i64
  %add.ptr.sum = sub i64 %idx.ext, %idx.ext141
  %add.ptr142 = getelementptr inbounds double* %dvec1.tr324, i64 %add.ptr.sum
  %add.ptr148 = getelementptr inbounds double* %dvec2.tr325, i64 %add.ptr.sum
  %cmp = icmp slt i32 %sub102, 11
  br i1 %cmp, label %if.then, label %if.else
}

; Function Attrs: nounwind optsize uwtable
define void @DV2qsortDown(i32 %n, double* %dvec1, double* %dvec2) #1 {
entry:
  %cmp322 = icmp slt i32 %n, 11
  br i1 %cmp322, label %if.then, label %if.else

if.then:                                          ; preds = %for.end137, %entry
  %dvec2.tr.lcssa = phi double* [ %dvec2, %entry ], [ %add.ptr148, %for.end137 ]
  %dvec1.tr.lcssa = phi double* [ %dvec1, %entry ], [ %add.ptr142, %for.end137 ]
  %n.tr.lcssa = phi i32 [ %n, %entry ], [ %sub102, %for.end137 ]
  tail call void @DV2isortDown(i32 %n.tr.lcssa, double* %dvec1.tr.lcssa, double* %dvec2.tr.lcssa) #2
  ret void

if.else:                                          ; preds = %entry, %for.end137
  %dvec2.tr325 = phi double* [ %add.ptr148, %for.end137 ], [ %dvec2, %entry ]
  %dvec1.tr324 = phi double* [ %add.ptr142, %for.end137 ], [ %dvec1, %entry ]
  %n.tr323 = phi i32 [ %sub102, %for.end137 ], [ %n, %entry ]
  %call = tail call fastcc double @Dcentervalue(i32 %n.tr323, double* %dvec1.tr324) #2
  %sub = add nsw i32 %n.tr323, -1
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.end, %if.else
  %a.0.ph = phi i32 [ 0, %if.else ], [ %a.1, %if.end ]
  %b.0.ph = phi i32 [ 0, %if.else ], [ %inc23, %if.end ]
  %c.0.ph = phi i32 [ %sub, %if.else ], [ %c.0, %if.end ]
  %d.0.ph = phi i32 [ %sub, %if.else ], [ %d.0, %if.end ]
  %0 = sext i32 %b.0.ph to i64
  br label %while.cond

while.cond:                                       ; preds = %while.cond.outer, %if.end57
  %indvars.iv338 = phi i64 [ %0, %while.cond.outer ], [ %indvars.iv.next339, %if.end57 ]
  %b.0 = phi i32 [ %b.0.ph, %while.cond.outer ], [ %inc74, %if.end57 ]
  %c.0 = phi i32 [ %c.0.ph, %while.cond.outer ], [ %dec75, %if.end57 ]
  %d.0 = phi i32 [ %d.0.ph, %while.cond.outer ], [ %d.1303, %if.end57 ]
  %1 = trunc i64 %indvars.iv338 to i32
  %cmp1 = icmp sgt i32 %1, %c.0
  br i1 %cmp1, label %for.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %arrayidx = getelementptr inbounds double* %dvec1.tr324, i64 %indvars.iv338
  %2 = load double* %arrayidx, align 8, !tbaa !3
  %cmp2 = fcmp ult double %2, %call
  br i1 %cmp2, label %land.rhs26.lr.ph, label %while.body

land.rhs26.lr.ph:                                 ; preds = %land.rhs
  %3 = sext i32 %c.0 to i64
  br label %land.rhs26

while.body:                                       ; preds = %land.rhs
  %cmp5 = fcmp oeq double %2, %call
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %while.body
  %idxprom7 = sext i32 %a.0.ph to i64
  %arrayidx8 = getelementptr inbounds double* %dvec1.tr324, i64 %idxprom7
  %4 = load double* %arrayidx8, align 8, !tbaa !3
  store double %2, double* %arrayidx8, align 8, !tbaa !3
  store double %4, double* %arrayidx, align 8, !tbaa !3
  %arrayidx16 = getelementptr inbounds double* %dvec2.tr325, i64 %idxprom7
  %5 = load double* %arrayidx16, align 8, !tbaa !3
  %arrayidx18 = getelementptr inbounds double* %dvec2.tr325, i64 %indvars.iv338
  %6 = load double* %arrayidx18, align 8, !tbaa !3
  store double %6, double* %arrayidx16, align 8, !tbaa !3
  store double %5, double* %arrayidx18, align 8, !tbaa !3
  %inc = add nsw i32 %a.0.ph, 1
  br label %if.end

if.end:                                           ; preds = %if.then6, %while.body
  %a.1 = phi i32 [ %inc, %if.then6 ], [ %a.0.ph, %while.body ]
  %inc23 = add nsw i32 %b.0, 1
  br label %while.cond.outer

land.rhs26:                                       ; preds = %if.end52, %land.rhs26.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end52 ], [ %3, %land.rhs26.lr.ph ]
  %d.1303 = phi i32 [ %d.2, %if.end52 ], [ %d.0, %land.rhs26.lr.ph ]
  %c.1302 = phi i32 [ %dec53, %if.end52 ], [ %c.0, %land.rhs26.lr.ph ]
  %arrayidx28 = getelementptr inbounds double* %dvec1.tr324, i64 %indvars.iv
  %7 = load double* %arrayidx28, align 8, !tbaa !3
  %cmp29 = fcmp ugt double %7, %call
  br i1 %cmp29, label %if.end57, label %while.body31

while.body31:                                     ; preds = %land.rhs26
  %cmp34 = fcmp oeq double %7, %call
  br i1 %cmp34, label %if.then35, label %if.end52

if.then35:                                        ; preds = %while.body31
  %idxprom38 = sext i32 %d.1303 to i64
  %arrayidx39 = getelementptr inbounds double* %dvec1.tr324, i64 %idxprom38
  %8 = load double* %arrayidx39, align 8, !tbaa !3
  store double %8, double* %arrayidx28, align 8, !tbaa !3
  store double %7, double* %arrayidx39, align 8, !tbaa !3
  %arrayidx45 = getelementptr inbounds double* %dvec2.tr325, i64 %indvars.iv
  %9 = load double* %arrayidx45, align 8, !tbaa !3
  %arrayidx47 = getelementptr inbounds double* %dvec2.tr325, i64 %idxprom38
  %10 = load double* %arrayidx47, align 8, !tbaa !3
  store double %10, double* %arrayidx45, align 8, !tbaa !3
  store double %9, double* %arrayidx47, align 8, !tbaa !3
  %dec = add nsw i32 %d.1303, -1
  br label %if.end52

if.end52:                                         ; preds = %if.then35, %while.body31
  %d.2 = phi i32 [ %dec, %if.then35 ], [ %d.1303, %while.body31 ]
  %indvars.iv.next = add i64 %indvars.iv, -1
  %dec53 = add nsw i32 %c.1302, -1
  %11 = trunc i64 %indvars.iv to i32
  %cmp25 = icmp sgt i32 %11, %1
  br i1 %cmp25, label %land.rhs26, label %for.end

if.end57:                                         ; preds = %land.rhs26
  %arrayidx59 = getelementptr inbounds double* %dvec1.tr324, i64 %indvars.iv338
  %12 = load double* %arrayidx59, align 8, !tbaa !3
  %idxprom60 = sext i32 %c.1302 to i64
  %arrayidx61 = getelementptr inbounds double* %dvec1.tr324, i64 %idxprom60
  %13 = load double* %arrayidx61, align 8, !tbaa !3
  store double %13, double* %arrayidx59, align 8, !tbaa !3
  store double %12, double* %arrayidx61, align 8, !tbaa !3
  %arrayidx67 = getelementptr inbounds double* %dvec2.tr325, i64 %indvars.iv338
  %14 = load double* %arrayidx67, align 8, !tbaa !3
  %arrayidx69 = getelementptr inbounds double* %dvec2.tr325, i64 %idxprom60
  %15 = load double* %arrayidx69, align 8, !tbaa !3
  store double %15, double* %arrayidx67, align 8, !tbaa !3
  store double %14, double* %arrayidx69, align 8, !tbaa !3
  %indvars.iv.next339 = add i64 %indvars.iv338, 1
  %inc74 = add nsw i32 %b.0, 1
  %dec75 = add nsw i32 %c.1302, -1
  br label %while.cond

for.end:                                          ; preds = %while.cond, %if.end52
  %d.1.lcssa = phi i32 [ %d.2, %if.end52 ], [ %d.0, %while.cond ]
  %c.1.lcssa = phi i32 [ %dec53, %if.end52 ], [ %c.0, %while.cond ]
  %sub76 = sub nsw i32 %b.0, %a.0.ph
  %cmp77 = icmp sgt i32 %a.0.ph, %sub76
  %sub76.a.0 = select i1 %cmp77, i32 %sub76, i32 %a.0.ph
  %cmp81312 = icmp eq i32 %sub76.a.0, 0
  br i1 %cmp81312, label %for.end101, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.end
  %16 = add i32 %b.0, 1
  %17 = add i32 %a.0.ph, -1
  %18 = sub i32 %17, %b.0
  %19 = xor i32 %a.0.ph, -1
  %20 = icmp sgt i32 %18, %19
  %smax = select i1 %20, i32 %18, i32 %19
  %21 = add i32 %16, %smax
  %22 = sext i32 %21 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv345 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next346, %for.body ]
  %indvars.iv342 = phi i64 [ %22, %for.body.lr.ph ], [ %indvars.iv.next343, %for.body ]
  %s.0315 = phi i32 [ %sub76.a.0, %for.body.lr.ph ], [ %dec100, %for.body ]
  %arrayidx83 = getelementptr inbounds double* %dvec1.tr324, i64 %indvars.iv345
  %23 = load double* %arrayidx83, align 8, !tbaa !3
  %arrayidx85 = getelementptr inbounds double* %dvec1.tr324, i64 %indvars.iv342
  %24 = load double* %arrayidx85, align 8, !tbaa !3
  store double %24, double* %arrayidx83, align 8, !tbaa !3
  store double %23, double* %arrayidx85, align 8, !tbaa !3
  %arrayidx91 = getelementptr inbounds double* %dvec2.tr325, i64 %indvars.iv345
  %25 = load double* %arrayidx91, align 8, !tbaa !3
  %arrayidx93 = getelementptr inbounds double* %dvec2.tr325, i64 %indvars.iv342
  %26 = load double* %arrayidx93, align 8, !tbaa !3
  store double %26, double* %arrayidx91, align 8, !tbaa !3
  store double %25, double* %arrayidx93, align 8, !tbaa !3
  %indvars.iv.next346 = add i64 %indvars.iv345, 1
  %dec100 = add nsw i32 %s.0315, -1
  %cmp81 = icmp eq i32 %dec100, 0
  %indvars.iv.next343 = add i64 %indvars.iv342, 1
  br i1 %cmp81, label %for.end101, label %for.body

for.end101:                                       ; preds = %for.body, %for.end
  %sub102 = sub nsw i32 %d.1.lcssa, %c.1.lcssa
  %sub104 = sub nsw i32 %sub, %d.1.lcssa
  %cmp105 = icmp sgt i32 %sub102, %sub104
  %sub104.sub102 = select i1 %cmp105, i32 %sub104, i32 %sub102
  %cmp115316 = icmp eq i32 %sub104.sub102, 0
  br i1 %cmp115316, label %for.end137, label %for.body116.lr.ph

for.body116.lr.ph:                                ; preds = %for.end101
  %27 = add i32 %n.tr323, 1
  %28 = sub i32 %d.1.lcssa, %n.tr323
  %29 = add i32 %c.1.lcssa, -1
  %30 = sub i32 %29, %d.1.lcssa
  %31 = icmp sgt i32 %28, %30
  %smax353 = select i1 %31, i32 %28, i32 %30
  %32 = add i32 %27, %smax353
  %33 = sext i32 %32 to i64
  %34 = sext i32 %b.0 to i64
  br label %for.body116

for.body116:                                      ; preds = %for.body116.lr.ph, %for.body116
  %indvars.iv357 = phi i64 [ %34, %for.body116.lr.ph ], [ %indvars.iv.next358, %for.body116 ]
  %indvars.iv354 = phi i64 [ %33, %for.body116.lr.ph ], [ %indvars.iv.next355, %for.body116 ]
  %s.1319 = phi i32 [ %sub104.sub102, %for.body116.lr.ph ], [ %dec136, %for.body116 ]
  %arrayidx118 = getelementptr inbounds double* %dvec1.tr324, i64 %indvars.iv357
  %35 = load double* %arrayidx118, align 8, !tbaa !3
  %arrayidx120 = getelementptr inbounds double* %dvec1.tr324, i64 %indvars.iv354
  %36 = load double* %arrayidx120, align 8, !tbaa !3
  store double %36, double* %arrayidx118, align 8, !tbaa !3
  store double %35, double* %arrayidx120, align 8, !tbaa !3
  %arrayidx126 = getelementptr inbounds double* %dvec2.tr325, i64 %indvars.iv357
  %37 = load double* %arrayidx126, align 8, !tbaa !3
  %arrayidx128 = getelementptr inbounds double* %dvec2.tr325, i64 %indvars.iv354
  %38 = load double* %arrayidx128, align 8, !tbaa !3
  store double %38, double* %arrayidx126, align 8, !tbaa !3
  store double %37, double* %arrayidx128, align 8, !tbaa !3
  %indvars.iv.next358 = add i64 %indvars.iv357, 1
  %dec136 = add nsw i32 %s.1319, -1
  %cmp115 = icmp eq i32 %dec136, 0
  %indvars.iv.next355 = add i64 %indvars.iv354, 1
  br i1 %cmp115, label %for.end137, label %for.body116

for.end137:                                       ; preds = %for.body116, %for.end101
  tail call void @DV2qsortDown(i32 %sub76, double* %dvec1.tr324, double* %dvec2.tr325) #2
  %idx.ext = sext i32 %n.tr323 to i64
  %idx.ext141 = sext i32 %sub102 to i64
  %add.ptr.sum = sub i64 %idx.ext, %idx.ext141
  %add.ptr142 = getelementptr inbounds double* %dvec1.tr324, i64 %add.ptr.sum
  %add.ptr148 = getelementptr inbounds double* %dvec2.tr325, i64 %add.ptr.sum
  %cmp = icmp slt i32 %sub102, 11
  br i1 %cmp, label %if.then, label %if.else
}

; Function Attrs: nounwind optsize uwtable
define void @DVIVqsortUp(i32 %n, double* %dvec, i32* %ivec) #1 {
entry:
  %cmp321 = icmp slt i32 %n, 11
  br i1 %cmp321, label %if.then, label %if.else

if.then:                                          ; preds = %for.end137, %entry
  %ivec.tr.lcssa = phi i32* [ %ivec, %entry ], [ %add.ptr148, %for.end137 ]
  %dvec.tr.lcssa = phi double* [ %dvec, %entry ], [ %add.ptr142, %for.end137 ]
  %n.tr.lcssa = phi i32 [ %n, %entry ], [ %sub102, %for.end137 ]
  tail call void @DVIVisortUp(i32 %n.tr.lcssa, double* %dvec.tr.lcssa, i32* %ivec.tr.lcssa) #2
  ret void

if.else:                                          ; preds = %entry, %for.end137
  %ivec.tr324 = phi i32* [ %add.ptr148, %for.end137 ], [ %ivec, %entry ]
  %dvec.tr323 = phi double* [ %add.ptr142, %for.end137 ], [ %dvec, %entry ]
  %n.tr322 = phi i32 [ %sub102, %for.end137 ], [ %n, %entry ]
  %call = tail call fastcc double @Dcentervalue(i32 %n.tr322, double* %dvec.tr323) #2
  %sub = add nsw i32 %n.tr322, -1
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.end, %if.else
  %a.0.ph = phi i32 [ 0, %if.else ], [ %a.1, %if.end ]
  %b.0.ph = phi i32 [ 0, %if.else ], [ %inc23, %if.end ]
  %c.0.ph = phi i32 [ %sub, %if.else ], [ %c.0, %if.end ]
  %d.0.ph = phi i32 [ %sub, %if.else ], [ %d.0, %if.end ]
  %0 = sext i32 %b.0.ph to i64
  br label %while.cond

while.cond:                                       ; preds = %while.cond.outer, %if.end57
  %indvars.iv337 = phi i64 [ %0, %while.cond.outer ], [ %indvars.iv.next338, %if.end57 ]
  %b.0 = phi i32 [ %b.0.ph, %while.cond.outer ], [ %inc74, %if.end57 ]
  %c.0 = phi i32 [ %c.0.ph, %while.cond.outer ], [ %dec75, %if.end57 ]
  %d.0 = phi i32 [ %d.0.ph, %while.cond.outer ], [ %d.1302, %if.end57 ]
  %1 = trunc i64 %indvars.iv337 to i32
  %cmp1 = icmp sgt i32 %1, %c.0
  br i1 %cmp1, label %for.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %arrayidx = getelementptr inbounds double* %dvec.tr323, i64 %indvars.iv337
  %2 = load double* %arrayidx, align 8, !tbaa !3
  %cmp2 = fcmp ugt double %2, %call
  br i1 %cmp2, label %land.rhs26.lr.ph, label %while.body

land.rhs26.lr.ph:                                 ; preds = %land.rhs
  %3 = sext i32 %c.0 to i64
  br label %land.rhs26

while.body:                                       ; preds = %land.rhs
  %cmp5 = fcmp oeq double %2, %call
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %while.body
  %idxprom7 = sext i32 %a.0.ph to i64
  %arrayidx8 = getelementptr inbounds i32* %ivec.tr324, i64 %idxprom7
  %4 = load i32* %arrayidx8, align 4, !tbaa !0
  %arrayidx10 = getelementptr inbounds i32* %ivec.tr324, i64 %indvars.iv337
  %5 = load i32* %arrayidx10, align 4, !tbaa !0
  store i32 %5, i32* %arrayidx8, align 4, !tbaa !0
  store i32 %4, i32* %arrayidx10, align 4, !tbaa !0
  %arrayidx16 = getelementptr inbounds double* %dvec.tr323, i64 %idxprom7
  %6 = load double* %arrayidx16, align 8, !tbaa !3
  store double %2, double* %arrayidx16, align 8, !tbaa !3
  store double %6, double* %arrayidx, align 8, !tbaa !3
  %inc = add nsw i32 %a.0.ph, 1
  br label %if.end

if.end:                                           ; preds = %if.then6, %while.body
  %a.1 = phi i32 [ %inc, %if.then6 ], [ %a.0.ph, %while.body ]
  %inc23 = add nsw i32 %b.0, 1
  br label %while.cond.outer

land.rhs26:                                       ; preds = %if.end52, %land.rhs26.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end52 ], [ %3, %land.rhs26.lr.ph ]
  %d.1302 = phi i32 [ %d.2, %if.end52 ], [ %d.0, %land.rhs26.lr.ph ]
  %c.1301 = phi i32 [ %dec53, %if.end52 ], [ %c.0, %land.rhs26.lr.ph ]
  %arrayidx28 = getelementptr inbounds double* %dvec.tr323, i64 %indvars.iv
  %7 = load double* %arrayidx28, align 8, !tbaa !3
  %cmp29 = fcmp ult double %7, %call
  br i1 %cmp29, label %if.end57, label %while.body31

while.body31:                                     ; preds = %land.rhs26
  %cmp34 = fcmp oeq double %7, %call
  br i1 %cmp34, label %if.then35, label %if.end52

if.then35:                                        ; preds = %while.body31
  %arrayidx37 = getelementptr inbounds i32* %ivec.tr324, i64 %indvars.iv
  %8 = load i32* %arrayidx37, align 4, !tbaa !0
  %idxprom38 = sext i32 %d.1302 to i64
  %arrayidx39 = getelementptr inbounds i32* %ivec.tr324, i64 %idxprom38
  %9 = load i32* %arrayidx39, align 4, !tbaa !0
  store i32 %9, i32* %arrayidx37, align 4, !tbaa !0
  store i32 %8, i32* %arrayidx39, align 4, !tbaa !0
  %arrayidx47 = getelementptr inbounds double* %dvec.tr323, i64 %idxprom38
  %10 = load double* %arrayidx47, align 8, !tbaa !3
  store double %10, double* %arrayidx28, align 8, !tbaa !3
  store double %7, double* %arrayidx47, align 8, !tbaa !3
  %dec = add nsw i32 %d.1302, -1
  br label %if.end52

if.end52:                                         ; preds = %if.then35, %while.body31
  %d.2 = phi i32 [ %dec, %if.then35 ], [ %d.1302, %while.body31 ]
  %indvars.iv.next = add i64 %indvars.iv, -1
  %dec53 = add nsw i32 %c.1301, -1
  %11 = trunc i64 %indvars.iv to i32
  %cmp25 = icmp sgt i32 %11, %1
  br i1 %cmp25, label %land.rhs26, label %for.end

if.end57:                                         ; preds = %land.rhs26
  %arrayidx59 = getelementptr inbounds i32* %ivec.tr324, i64 %indvars.iv337
  %12 = load i32* %arrayidx59, align 4, !tbaa !0
  %idxprom60 = sext i32 %c.1301 to i64
  %arrayidx61 = getelementptr inbounds i32* %ivec.tr324, i64 %idxprom60
  %13 = load i32* %arrayidx61, align 4, !tbaa !0
  store i32 %13, i32* %arrayidx59, align 4, !tbaa !0
  store i32 %12, i32* %arrayidx61, align 4, !tbaa !0
  %arrayidx67 = getelementptr inbounds double* %dvec.tr323, i64 %indvars.iv337
  %14 = load double* %arrayidx67, align 8, !tbaa !3
  %arrayidx69 = getelementptr inbounds double* %dvec.tr323, i64 %idxprom60
  %15 = load double* %arrayidx69, align 8, !tbaa !3
  store double %15, double* %arrayidx67, align 8, !tbaa !3
  store double %14, double* %arrayidx69, align 8, !tbaa !3
  %indvars.iv.next338 = add i64 %indvars.iv337, 1
  %inc74 = add nsw i32 %b.0, 1
  %dec75 = add nsw i32 %c.1301, -1
  br label %while.cond

for.end:                                          ; preds = %while.cond, %if.end52
  %d.1.lcssa = phi i32 [ %d.2, %if.end52 ], [ %d.0, %while.cond ]
  %c.1.lcssa = phi i32 [ %dec53, %if.end52 ], [ %c.0, %while.cond ]
  %sub76 = sub nsw i32 %b.0, %a.0.ph
  %cmp77 = icmp sgt i32 %a.0.ph, %sub76
  %sub76.a.0 = select i1 %cmp77, i32 %sub76, i32 %a.0.ph
  %cmp81311 = icmp eq i32 %sub76.a.0, 0
  br i1 %cmp81311, label %for.end101, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.end
  %16 = add i32 %b.0, 1
  %17 = add i32 %a.0.ph, -1
  %18 = sub i32 %17, %b.0
  %19 = xor i32 %a.0.ph, -1
  %20 = icmp sgt i32 %18, %19
  %smax = select i1 %20, i32 %18, i32 %19
  %21 = add i32 %16, %smax
  %22 = sext i32 %21 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv344 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next345, %for.body ]
  %indvars.iv341 = phi i64 [ %22, %for.body.lr.ph ], [ %indvars.iv.next342, %for.body ]
  %s.0314 = phi i32 [ %sub76.a.0, %for.body.lr.ph ], [ %dec100, %for.body ]
  %arrayidx83 = getelementptr inbounds i32* %ivec.tr324, i64 %indvars.iv344
  %23 = load i32* %arrayidx83, align 4, !tbaa !0
  %arrayidx85 = getelementptr inbounds i32* %ivec.tr324, i64 %indvars.iv341
  %24 = load i32* %arrayidx85, align 4, !tbaa !0
  store i32 %24, i32* %arrayidx83, align 4, !tbaa !0
  store i32 %23, i32* %arrayidx85, align 4, !tbaa !0
  %arrayidx91 = getelementptr inbounds double* %dvec.tr323, i64 %indvars.iv344
  %25 = load double* %arrayidx91, align 8, !tbaa !3
  %arrayidx93 = getelementptr inbounds double* %dvec.tr323, i64 %indvars.iv341
  %26 = load double* %arrayidx93, align 8, !tbaa !3
  store double %26, double* %arrayidx91, align 8, !tbaa !3
  store double %25, double* %arrayidx93, align 8, !tbaa !3
  %indvars.iv.next345 = add i64 %indvars.iv344, 1
  %dec100 = add nsw i32 %s.0314, -1
  %cmp81 = icmp eq i32 %dec100, 0
  %indvars.iv.next342 = add i64 %indvars.iv341, 1
  br i1 %cmp81, label %for.end101, label %for.body

for.end101:                                       ; preds = %for.body, %for.end
  %sub102 = sub nsw i32 %d.1.lcssa, %c.1.lcssa
  %sub104 = sub nsw i32 %sub, %d.1.lcssa
  %cmp105 = icmp sgt i32 %sub102, %sub104
  %sub104.sub102 = select i1 %cmp105, i32 %sub104, i32 %sub102
  %cmp115315 = icmp eq i32 %sub104.sub102, 0
  br i1 %cmp115315, label %for.end137, label %for.body116.lr.ph

for.body116.lr.ph:                                ; preds = %for.end101
  %27 = add i32 %n.tr322, 1
  %28 = sub i32 %d.1.lcssa, %n.tr322
  %29 = add i32 %c.1.lcssa, -1
  %30 = sub i32 %29, %d.1.lcssa
  %31 = icmp sgt i32 %28, %30
  %smax352 = select i1 %31, i32 %28, i32 %30
  %32 = add i32 %27, %smax352
  %33 = sext i32 %32 to i64
  %34 = sext i32 %b.0 to i64
  br label %for.body116

for.body116:                                      ; preds = %for.body116.lr.ph, %for.body116
  %indvars.iv356 = phi i64 [ %34, %for.body116.lr.ph ], [ %indvars.iv.next357, %for.body116 ]
  %indvars.iv353 = phi i64 [ %33, %for.body116.lr.ph ], [ %indvars.iv.next354, %for.body116 ]
  %s.1318 = phi i32 [ %sub104.sub102, %for.body116.lr.ph ], [ %dec136, %for.body116 ]
  %arrayidx118 = getelementptr inbounds i32* %ivec.tr324, i64 %indvars.iv356
  %35 = load i32* %arrayidx118, align 4, !tbaa !0
  %arrayidx120 = getelementptr inbounds i32* %ivec.tr324, i64 %indvars.iv353
  %36 = load i32* %arrayidx120, align 4, !tbaa !0
  store i32 %36, i32* %arrayidx118, align 4, !tbaa !0
  store i32 %35, i32* %arrayidx120, align 4, !tbaa !0
  %arrayidx126 = getelementptr inbounds double* %dvec.tr323, i64 %indvars.iv356
  %37 = load double* %arrayidx126, align 8, !tbaa !3
  %arrayidx128 = getelementptr inbounds double* %dvec.tr323, i64 %indvars.iv353
  %38 = load double* %arrayidx128, align 8, !tbaa !3
  store double %38, double* %arrayidx126, align 8, !tbaa !3
  store double %37, double* %arrayidx128, align 8, !tbaa !3
  %indvars.iv.next357 = add i64 %indvars.iv356, 1
  %dec136 = add nsw i32 %s.1318, -1
  %cmp115 = icmp eq i32 %dec136, 0
  %indvars.iv.next354 = add i64 %indvars.iv353, 1
  br i1 %cmp115, label %for.end137, label %for.body116

for.end137:                                       ; preds = %for.body116, %for.end101
  tail call void @DVIVqsortUp(i32 %sub76, double* %dvec.tr323, i32* %ivec.tr324) #2
  %idx.ext = sext i32 %n.tr322 to i64
  %idx.ext141 = sext i32 %sub102 to i64
  %add.ptr.sum = sub i64 %idx.ext, %idx.ext141
  %add.ptr142 = getelementptr inbounds double* %dvec.tr323, i64 %add.ptr.sum
  %add.ptr148 = getelementptr inbounds i32* %ivec.tr324, i64 %add.ptr.sum
  %cmp = icmp slt i32 %sub102, 11
  br i1 %cmp, label %if.then, label %if.else
}

; Function Attrs: nounwind optsize uwtable
define void @DVIVqsortDown(i32 %n, double* %dvec, i32* %ivec) #1 {
entry:
  %cmp321 = icmp slt i32 %n, 11
  br i1 %cmp321, label %if.then, label %if.else

if.then:                                          ; preds = %for.end137, %entry
  %ivec.tr.lcssa = phi i32* [ %ivec, %entry ], [ %add.ptr148, %for.end137 ]
  %dvec.tr.lcssa = phi double* [ %dvec, %entry ], [ %add.ptr142, %for.end137 ]
  %n.tr.lcssa = phi i32 [ %n, %entry ], [ %sub102, %for.end137 ]
  tail call void @DVIVisortDown(i32 %n.tr.lcssa, double* %dvec.tr.lcssa, i32* %ivec.tr.lcssa) #2
  ret void

if.else:                                          ; preds = %entry, %for.end137
  %ivec.tr324 = phi i32* [ %add.ptr148, %for.end137 ], [ %ivec, %entry ]
  %dvec.tr323 = phi double* [ %add.ptr142, %for.end137 ], [ %dvec, %entry ]
  %n.tr322 = phi i32 [ %sub102, %for.end137 ], [ %n, %entry ]
  %call = tail call fastcc double @Dcentervalue(i32 %n.tr322, double* %dvec.tr323) #2
  %sub = add nsw i32 %n.tr322, -1
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.end, %if.else
  %a.0.ph = phi i32 [ 0, %if.else ], [ %a.1, %if.end ]
  %b.0.ph = phi i32 [ 0, %if.else ], [ %inc23, %if.end ]
  %c.0.ph = phi i32 [ %sub, %if.else ], [ %c.0, %if.end ]
  %d.0.ph = phi i32 [ %sub, %if.else ], [ %d.0, %if.end ]
  %0 = sext i32 %b.0.ph to i64
  br label %while.cond

while.cond:                                       ; preds = %while.cond.outer, %if.end57
  %indvars.iv337 = phi i64 [ %0, %while.cond.outer ], [ %indvars.iv.next338, %if.end57 ]
  %b.0 = phi i32 [ %b.0.ph, %while.cond.outer ], [ %inc74, %if.end57 ]
  %c.0 = phi i32 [ %c.0.ph, %while.cond.outer ], [ %dec75, %if.end57 ]
  %d.0 = phi i32 [ %d.0.ph, %while.cond.outer ], [ %d.1302, %if.end57 ]
  %1 = trunc i64 %indvars.iv337 to i32
  %cmp1 = icmp sgt i32 %1, %c.0
  br i1 %cmp1, label %for.end, label %land.rhs

land.rhs:                                         ; preds = %while.cond
  %arrayidx = getelementptr inbounds double* %dvec.tr323, i64 %indvars.iv337
  %2 = load double* %arrayidx, align 8, !tbaa !3
  %cmp2 = fcmp ult double %2, %call
  br i1 %cmp2, label %land.rhs26.lr.ph, label %while.body

land.rhs26.lr.ph:                                 ; preds = %land.rhs
  %3 = sext i32 %c.0 to i64
  br label %land.rhs26

while.body:                                       ; preds = %land.rhs
  %cmp5 = fcmp oeq double %2, %call
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %while.body
  %idxprom7 = sext i32 %a.0.ph to i64
  %arrayidx8 = getelementptr inbounds i32* %ivec.tr324, i64 %idxprom7
  %4 = load i32* %arrayidx8, align 4, !tbaa !0
  %arrayidx10 = getelementptr inbounds i32* %ivec.tr324, i64 %indvars.iv337
  %5 = load i32* %arrayidx10, align 4, !tbaa !0
  store i32 %5, i32* %arrayidx8, align 4, !tbaa !0
  store i32 %4, i32* %arrayidx10, align 4, !tbaa !0
  %arrayidx16 = getelementptr inbounds double* %dvec.tr323, i64 %idxprom7
  %6 = load double* %arrayidx16, align 8, !tbaa !3
  store double %2, double* %arrayidx16, align 8, !tbaa !3
  store double %6, double* %arrayidx, align 8, !tbaa !3
  %inc = add nsw i32 %a.0.ph, 1
  br label %if.end

if.end:                                           ; preds = %if.then6, %while.body
  %a.1 = phi i32 [ %inc, %if.then6 ], [ %a.0.ph, %while.body ]
  %inc23 = add nsw i32 %b.0, 1
  br label %while.cond.outer

land.rhs26:                                       ; preds = %if.end52, %land.rhs26.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end52 ], [ %3, %land.rhs26.lr.ph ]
  %d.1302 = phi i32 [ %d.2, %if.end52 ], [ %d.0, %land.rhs26.lr.ph ]
  %c.1301 = phi i32 [ %dec53, %if.end52 ], [ %c.0, %land.rhs26.lr.ph ]
  %arrayidx28 = getelementptr inbounds double* %dvec.tr323, i64 %indvars.iv
  %7 = load double* %arrayidx28, align 8, !tbaa !3
  %cmp29 = fcmp ugt double %7, %call
  br i1 %cmp29, label %if.end57, label %while.body31

while.body31:                                     ; preds = %land.rhs26
  %cmp34 = fcmp oeq double %7, %call
  br i1 %cmp34, label %if.then35, label %if.end52

if.then35:                                        ; preds = %while.body31
  %arrayidx37 = getelementptr inbounds i32* %ivec.tr324, i64 %indvars.iv
  %8 = load i32* %arrayidx37, align 4, !tbaa !0
  %idxprom38 = sext i32 %d.1302 to i64
  %arrayidx39 = getelementptr inbounds i32* %ivec.tr324, i64 %idxprom38
  %9 = load i32* %arrayidx39, align 4, !tbaa !0
  store i32 %9, i32* %arrayidx37, align 4, !tbaa !0
  store i32 %8, i32* %arrayidx39, align 4, !tbaa !0
  %arrayidx47 = getelementptr inbounds double* %dvec.tr323, i64 %idxprom38
  %10 = load double* %arrayidx47, align 8, !tbaa !3
  store double %10, double* %arrayidx28, align 8, !tbaa !3
  store double %7, double* %arrayidx47, align 8, !tbaa !3
  %dec = add nsw i32 %d.1302, -1
  br label %if.end52

if.end52:                                         ; preds = %if.then35, %while.body31
  %d.2 = phi i32 [ %dec, %if.then35 ], [ %d.1302, %while.body31 ]
  %indvars.iv.next = add i64 %indvars.iv, -1
  %dec53 = add nsw i32 %c.1301, -1
  %11 = trunc i64 %indvars.iv to i32
  %cmp25 = icmp sgt i32 %11, %1
  br i1 %cmp25, label %land.rhs26, label %for.end

if.end57:                                         ; preds = %land.rhs26
  %arrayidx59 = getelementptr inbounds i32* %ivec.tr324, i64 %indvars.iv337
  %12 = load i32* %arrayidx59, align 4, !tbaa !0
  %idxprom60 = sext i32 %c.1301 to i64
  %arrayidx61 = getelementptr inbounds i32* %ivec.tr324, i64 %idxprom60
  %13 = load i32* %arrayidx61, align 4, !tbaa !0
  store i32 %13, i32* %arrayidx59, align 4, !tbaa !0
  store i32 %12, i32* %arrayidx61, align 4, !tbaa !0
  %arrayidx67 = getelementptr inbounds double* %dvec.tr323, i64 %indvars.iv337
  %14 = load double* %arrayidx67, align 8, !tbaa !3
  %arrayidx69 = getelementptr inbounds double* %dvec.tr323, i64 %idxprom60
  %15 = load double* %arrayidx69, align 8, !tbaa !3
  store double %15, double* %arrayidx67, align 8, !tbaa !3
  store double %14, double* %arrayidx69, align 8, !tbaa !3
  %indvars.iv.next338 = add i64 %indvars.iv337, 1
  %inc74 = add nsw i32 %b.0, 1
  %dec75 = add nsw i32 %c.1301, -1
  br label %while.cond

for.end:                                          ; preds = %while.cond, %if.end52
  %d.1.lcssa = phi i32 [ %d.2, %if.end52 ], [ %d.0, %while.cond ]
  %c.1.lcssa = phi i32 [ %dec53, %if.end52 ], [ %c.0, %while.cond ]
  %sub76 = sub nsw i32 %b.0, %a.0.ph
  %cmp77 = icmp sgt i32 %a.0.ph, %sub76
  %sub76.a.0 = select i1 %cmp77, i32 %sub76, i32 %a.0.ph
  %cmp81311 = icmp eq i32 %sub76.a.0, 0
  br i1 %cmp81311, label %for.end101, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %for.end
  %16 = add i32 %b.0, 1
  %17 = add i32 %a.0.ph, -1
  %18 = sub i32 %17, %b.0
  %19 = xor i32 %a.0.ph, -1
  %20 = icmp sgt i32 %18, %19
  %smax = select i1 %20, i32 %18, i32 %19
  %21 = add i32 %16, %smax
  %22 = sext i32 %21 to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv344 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next345, %for.body ]
  %indvars.iv341 = phi i64 [ %22, %for.body.lr.ph ], [ %indvars.iv.next342, %for.body ]
  %s.0314 = phi i32 [ %sub76.a.0, %for.body.lr.ph ], [ %dec100, %for.body ]
  %arrayidx83 = getelementptr inbounds i32* %ivec.tr324, i64 %indvars.iv344
  %23 = load i32* %arrayidx83, align 4, !tbaa !0
  %arrayidx85 = getelementptr inbounds i32* %ivec.tr324, i64 %indvars.iv341
  %24 = load i32* %arrayidx85, align 4, !tbaa !0
  store i32 %24, i32* %arrayidx83, align 4, !tbaa !0
  store i32 %23, i32* %arrayidx85, align 4, !tbaa !0
  %arrayidx91 = getelementptr inbounds double* %dvec.tr323, i64 %indvars.iv344
  %25 = load double* %arrayidx91, align 8, !tbaa !3
  %arrayidx93 = getelementptr inbounds double* %dvec.tr323, i64 %indvars.iv341
  %26 = load double* %arrayidx93, align 8, !tbaa !3
  store double %26, double* %arrayidx91, align 8, !tbaa !3
  store double %25, double* %arrayidx93, align 8, !tbaa !3
  %indvars.iv.next345 = add i64 %indvars.iv344, 1
  %dec100 = add nsw i32 %s.0314, -1
  %cmp81 = icmp eq i32 %dec100, 0
  %indvars.iv.next342 = add i64 %indvars.iv341, 1
  br i1 %cmp81, label %for.end101, label %for.body

for.end101:                                       ; preds = %for.body, %for.end
  %sub102 = sub nsw i32 %d.1.lcssa, %c.1.lcssa
  %sub104 = sub nsw i32 %sub, %d.1.lcssa
  %cmp105 = icmp sgt i32 %sub102, %sub104
  %sub104.sub102 = select i1 %cmp105, i32 %sub104, i32 %sub102
  %cmp115315 = icmp eq i32 %sub104.sub102, 0
  br i1 %cmp115315, label %for.end137, label %for.body116.lr.ph

for.body116.lr.ph:                                ; preds = %for.end101
  %27 = add i32 %n.tr322, 1
  %28 = sub i32 %d.1.lcssa, %n.tr322
  %29 = add i32 %c.1.lcssa, -1
  %30 = sub i32 %29, %d.1.lcssa
  %31 = icmp sgt i32 %28, %30
  %smax352 = select i1 %31, i32 %28, i32 %30
  %32 = add i32 %27, %smax352
  %33 = sext i32 %32 to i64
  %34 = sext i32 %b.0 to i64
  br label %for.body116

for.body116:                                      ; preds = %for.body116.lr.ph, %for.body116
  %indvars.iv356 = phi i64 [ %34, %for.body116.lr.ph ], [ %indvars.iv.next357, %for.body116 ]
  %indvars.iv353 = phi i64 [ %33, %for.body116.lr.ph ], [ %indvars.iv.next354, %for.body116 ]
  %s.1318 = phi i32 [ %sub104.sub102, %for.body116.lr.ph ], [ %dec136, %for.body116 ]
  %arrayidx118 = getelementptr inbounds i32* %ivec.tr324, i64 %indvars.iv356
  %35 = load i32* %arrayidx118, align 4, !tbaa !0
  %arrayidx120 = getelementptr inbounds i32* %ivec.tr324, i64 %indvars.iv353
  %36 = load i32* %arrayidx120, align 4, !tbaa !0
  store i32 %36, i32* %arrayidx118, align 4, !tbaa !0
  store i32 %35, i32* %arrayidx120, align 4, !tbaa !0
  %arrayidx126 = getelementptr inbounds double* %dvec.tr323, i64 %indvars.iv356
  %37 = load double* %arrayidx126, align 8, !tbaa !3
  %arrayidx128 = getelementptr inbounds double* %dvec.tr323, i64 %indvars.iv353
  %38 = load double* %arrayidx128, align 8, !tbaa !3
  store double %38, double* %arrayidx126, align 8, !tbaa !3
  store double %37, double* %arrayidx128, align 8, !tbaa !3
  %indvars.iv.next357 = add i64 %indvars.iv356, 1
  %dec136 = add nsw i32 %s.1318, -1
  %cmp115 = icmp eq i32 %dec136, 0
  %indvars.iv.next354 = add i64 %indvars.iv353, 1
  br i1 %cmp115, label %for.end137, label %for.body116

for.end137:                                       ; preds = %for.body116, %for.end101
  tail call void @DVIVqsortDown(i32 %sub76, double* %dvec.tr323, i32* %ivec.tr324) #2
  %idx.ext = sext i32 %n.tr322 to i64
  %idx.ext141 = sext i32 %sub102 to i64
  %add.ptr.sum = sub i64 %idx.ext, %idx.ext141
  %add.ptr142 = getelementptr inbounds double* %dvec.tr323, i64 %add.ptr.sum
  %add.ptr148 = getelementptr inbounds i32* %ivec.tr324, i64 %add.ptr.sum
  %cmp = icmp slt i32 %sub102, 11
  br i1 %cmp, label %if.then, label %if.else
}

; Function Attrs: nounwind optsize readonly uwtable
define internal fastcc i32 @Dmedian3(i32 %i, i32 %j, i32 %k, double* nocapture %a) #0 {
entry:
  %idxprom = sext i32 %i to i64
  %arrayidx = getelementptr inbounds double* %a, i64 %idxprom
  %0 = load double* %arrayidx, align 8, !tbaa !3
  %idxprom1 = sext i32 %j to i64
  %arrayidx2 = getelementptr inbounds double* %a, i64 %idxprom1
  %1 = load double* %arrayidx2, align 8, !tbaa !3
  %cmp = fcmp olt double %0, %1
  %idxprom5 = sext i32 %k to i64
  %arrayidx6 = getelementptr inbounds double* %a, i64 %idxprom5
  %2 = load double* %arrayidx6, align 8, !tbaa !3
  br i1 %cmp, label %if.then, label %if.else16

if.then:                                          ; preds = %entry
  %cmp7 = fcmp olt double %1, %2
  br i1 %cmp7, label %return, label %if.else

if.else:                                          ; preds = %if.then
  %cmp13 = fcmp olt double %0, %2
  %k.i = select i1 %cmp13, i32 %k, i32 %i
  br label %return

if.else16:                                        ; preds = %entry
  %cmp21 = fcmp olt double %0, %2
  br i1 %cmp21, label %return, label %if.else23

if.else23:                                        ; preds = %if.else16
  %cmp28 = fcmp olt double %1, %2
  %k.j = select i1 %cmp28, i32 %k, i32 %j
  br label %return

return:                                           ; preds = %if.else23, %if.else16, %if.else, %if.then
  %retval.0 = phi i32 [ %j, %if.then ], [ %k.i, %if.else ], [ %i, %if.else16 ], [ %k.j, %if.else23 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readonly uwtable
define internal fastcc i32 @Imedian3(i32 %i, i32 %j, i32 %k, i32* nocapture %a) #0 {
entry:
  %idxprom = sext i32 %i to i64
  %arrayidx = getelementptr inbounds i32* %a, i64 %idxprom
  %0 = load i32* %arrayidx, align 4, !tbaa !0
  %idxprom1 = sext i32 %j to i64
  %arrayidx2 = getelementptr inbounds i32* %a, i64 %idxprom1
  %1 = load i32* %arrayidx2, align 4, !tbaa !0
  %cmp = icmp slt i32 %0, %1
  %idxprom5 = sext i32 %k to i64
  %arrayidx6 = getelementptr inbounds i32* %a, i64 %idxprom5
  %2 = load i32* %arrayidx6, align 4, !tbaa !0
  br i1 %cmp, label %if.then, label %if.else16

if.then:                                          ; preds = %entry
  %cmp7 = icmp slt i32 %1, %2
  br i1 %cmp7, label %return, label %if.else

if.else:                                          ; preds = %if.then
  %cmp13 = icmp slt i32 %0, %2
  %k.i = select i1 %cmp13, i32 %k, i32 %i
  br label %return

if.else16:                                        ; preds = %entry
  %cmp21 = icmp slt i32 %0, %2
  br i1 %cmp21, label %return, label %if.else23

if.else23:                                        ; preds = %if.else16
  %cmp28 = icmp slt i32 %1, %2
  %k.j = select i1 %cmp28, i32 %k, i32 %j
  br label %return

return:                                           ; preds = %if.else23, %if.else16, %if.else, %if.then
  %retval.0 = phi i32 [ %j, %if.then ], [ %k.i, %if.else ], [ %i, %if.else16 ], [ %k.j, %if.else23 ]
  ret i32 %retval.0
}

attributes #0 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"double", metadata !1}
