; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/vectorops.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind optsize uwtable
define void @DSet(double* nocapture %vec, i32 %n, double %value) #0 {
entry:
  %cmp3 = icmp sgt i32 %n, 0
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds double* %vec, i64 %indvars.iv
  store double %value, double* %arrayidx, align 8, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @FSet(float* nocapture %vec, i32 %n, float %value) #0 {
entry:
  %cmp3 = icmp sgt i32 %n, 0
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds float* %vec, i64 %indvars.iv
  store float %value, float* %arrayidx, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @DScale(double* nocapture %vec, i32 %n, double %scale) #0 {
entry:
  %cmp3 = icmp sgt i32 %n, 0
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds double* %vec, i64 %indvars.iv
  %0 = load double* %arrayidx, align 8, !tbaa !0
  %mul = fmul double %0, %scale
  store double %mul, double* %arrayidx, align 8, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @FScale(float* nocapture %vec, i32 %n, float %scale) #0 {
entry:
  %cmp3 = icmp sgt i32 %n, 0
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds float* %vec, i64 %indvars.iv
  %0 = load float* %arrayidx, align 4, !tbaa !3
  %mul = fmul float %0, %scale
  store float %mul, float* %arrayidx, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize readonly uwtable
define double @DSum(double* nocapture %vec, i32 %n) #1 {
entry:
  %cmp4 = icmp sgt i32 %n, 0
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %sum.05 = phi double [ %add, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds double* %vec, i64 %indvars.iv
  %0 = load double* %arrayidx, align 8, !tbaa !0
  %add = fadd double %sum.05, %0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %sum.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add, %for.body ]
  ret double %sum.0.lcssa
}

; Function Attrs: nounwind optsize readonly uwtable
define float @FSum(float* nocapture %vec, i32 %n) #1 {
entry:
  %cmp4 = icmp sgt i32 %n, 0
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %sum.05 = phi float [ %add, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds float* %vec, i64 %indvars.iv
  %0 = load float* %arrayidx, align 4, !tbaa !3
  %add = fadd float %sum.05, %0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %sum.0.lcssa = phi float [ 0.000000e+00, %entry ], [ %add, %for.body ]
  ret float %sum.0.lcssa
}

; Function Attrs: nounwind optsize uwtable
define void @DAdd(double* nocapture %vec1, double* nocapture %vec2, i32 %n) #0 {
entry:
  %cmp6 = icmp sgt i32 %n, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds double* %vec2, i64 %indvars.iv
  %0 = load double* %arrayidx, align 8, !tbaa !0
  %arrayidx2 = getelementptr inbounds double* %vec1, i64 %indvars.iv
  %1 = load double* %arrayidx2, align 8, !tbaa !0
  %add = fadd double %0, %1
  store double %add, double* %arrayidx2, align 8, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @FAdd(float* nocapture %vec1, float* nocapture %vec2, i32 %n) #0 {
entry:
  %cmp6 = icmp sgt i32 %n, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds float* %vec2, i64 %indvars.iv
  %0 = load float* %arrayidx, align 4, !tbaa !3
  %arrayidx2 = getelementptr inbounds float* %vec1, i64 %indvars.iv
  %1 = load float* %arrayidx2, align 4, !tbaa !3
  %add = fadd float %0, %1
  store float %add, float* %arrayidx2, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @DCopy(double* nocapture %vec1, double* nocapture %vec2, i32 %n) #0 {
entry:
  %cmp6 = icmp sgt i32 %n, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds double* %vec2, i64 %indvars.iv
  %0 = load double* %arrayidx, align 8, !tbaa !0
  %arrayidx2 = getelementptr inbounds double* %vec1, i64 %indvars.iv
  store double %0, double* %arrayidx2, align 8, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @FCopy(float* nocapture %vec1, float* nocapture %vec2, i32 %n) #0 {
entry:
  %cmp6 = icmp sgt i32 %n, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds float* %vec2, i64 %indvars.iv
  %0 = load float* %arrayidx, align 4, !tbaa !3
  %arrayidx2 = getelementptr inbounds float* %vec1, i64 %indvars.iv
  store float %0, float* %arrayidx2, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize readonly uwtable
define double @DDot(double* nocapture %vec1, double* nocapture %vec2, i32 %n) #1 {
entry:
  %cmp7 = icmp sgt i32 %n, 0
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %result.08 = phi double [ %add, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds double* %vec1, i64 %indvars.iv
  %0 = load double* %arrayidx, align 8, !tbaa !0
  %arrayidx2 = getelementptr inbounds double* %vec2, i64 %indvars.iv
  %1 = load double* %arrayidx2, align 8, !tbaa !0
  %mul = fmul double %0, %1
  %add = fadd double %result.08, %mul
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %result.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add, %for.body ]
  ret double %result.0.lcssa
}

; Function Attrs: nounwind optsize readonly uwtable
define float @FDot(float* nocapture %vec1, float* nocapture %vec2, i32 %n) #1 {
entry:
  %cmp7 = icmp sgt i32 %n, 0
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %result.08 = phi float [ %add, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds float* %vec1, i64 %indvars.iv
  %0 = load float* %arrayidx, align 4, !tbaa !3
  %arrayidx2 = getelementptr inbounds float* %vec2, i64 %indvars.iv
  %1 = load float* %arrayidx2, align 4, !tbaa !3
  %mul = fmul float %0, %1
  %add = fadd float %result.08, %mul
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %result.0.lcssa = phi float [ 0.000000e+00, %entry ], [ %add, %for.body ]
  ret float %result.0.lcssa
}

; Function Attrs: nounwind optsize readonly uwtable
define double @DMax(double* nocapture %vec, i32 %n) #1 {
entry:
  %0 = load double* %vec, align 8, !tbaa !0
  %cmp11 = icmp sgt i32 %n, 1
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %best.013 = phi double [ %best.1, %for.body ], [ %0, %entry ]
  %arrayidx1 = getelementptr inbounds double* %vec, i64 %indvars.iv
  %1 = load double* %arrayidx1, align 8, !tbaa !0
  %cmp2 = fcmp ogt double %1, %best.013
  %best.1 = select i1 %cmp2, double %1, double %best.013
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %best.0.lcssa = phi double [ %0, %entry ], [ %best.1, %for.body ]
  ret double %best.0.lcssa
}

; Function Attrs: nounwind optsize readonly uwtable
define float @FMax(float* nocapture %vec, i32 %n) #1 {
entry:
  %0 = load float* %vec, align 4, !tbaa !3
  %cmp11 = icmp sgt i32 %n, 1
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %best.013 = phi float [ %best.1, %for.body ], [ %0, %entry ]
  %arrayidx1 = getelementptr inbounds float* %vec, i64 %indvars.iv
  %1 = load float* %arrayidx1, align 4, !tbaa !3
  %cmp2 = fcmp ogt float %1, %best.013
  %best.1 = select i1 %cmp2, float %1, float %best.013
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %best.0.lcssa = phi float [ %0, %entry ], [ %best.1, %for.body ]
  ret float %best.0.lcssa
}

; Function Attrs: nounwind optsize readonly uwtable
define double @DMin(double* nocapture %vec, i32 %n) #1 {
entry:
  %0 = load double* %vec, align 8, !tbaa !0
  %cmp11 = icmp sgt i32 %n, 1
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %best.013 = phi double [ %best.1, %for.body ], [ %0, %entry ]
  %arrayidx1 = getelementptr inbounds double* %vec, i64 %indvars.iv
  %1 = load double* %arrayidx1, align 8, !tbaa !0
  %cmp2 = fcmp olt double %1, %best.013
  %best.1 = select i1 %cmp2, double %1, double %best.013
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %best.0.lcssa = phi double [ %0, %entry ], [ %best.1, %for.body ]
  ret double %best.0.lcssa
}

; Function Attrs: nounwind optsize readonly uwtable
define float @FMin(float* nocapture %vec, i32 %n) #1 {
entry:
  %0 = load float* %vec, align 4, !tbaa !3
  %cmp11 = icmp sgt i32 %n, 1
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %best.013 = phi float [ %best.1, %for.body ], [ %0, %entry ]
  %arrayidx1 = getelementptr inbounds float* %vec, i64 %indvars.iv
  %1 = load float* %arrayidx1, align 4, !tbaa !3
  %cmp2 = fcmp olt float %1, %best.013
  %best.1 = select i1 %cmp2, float %1, float %best.013
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %best.0.lcssa = phi float [ %0, %entry ], [ %best.1, %for.body ]
  ret float %best.0.lcssa
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @DArgMax(double* nocapture %vec, i32 %n) #1 {
entry:
  %cmp9 = icmp sgt i32 %n, 1
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %best.011 = phi i32 [ %best.1, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds double* %vec, i64 %indvars.iv
  %0 = load double* %arrayidx, align 8, !tbaa !0
  %idxprom1 = sext i32 %best.011 to i64
  %arrayidx2 = getelementptr inbounds double* %vec, i64 %idxprom1
  %1 = load double* %arrayidx2, align 8, !tbaa !0
  %cmp3 = fcmp ogt double %0, %1
  %2 = trunc i64 %indvars.iv to i32
  %best.1 = select i1 %cmp3, i32 %2, i32 %best.011
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %best.0.lcssa = phi i32 [ 0, %entry ], [ %best.1, %for.body ]
  ret i32 %best.0.lcssa
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @FArgMax(float* nocapture %vec, i32 %n) #1 {
entry:
  %cmp9 = icmp sgt i32 %n, 1
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %best.011 = phi i32 [ %best.1, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds float* %vec, i64 %indvars.iv
  %0 = load float* %arrayidx, align 4, !tbaa !3
  %idxprom1 = sext i32 %best.011 to i64
  %arrayidx2 = getelementptr inbounds float* %vec, i64 %idxprom1
  %1 = load float* %arrayidx2, align 4, !tbaa !3
  %cmp3 = fcmp ogt float %0, %1
  %2 = trunc i64 %indvars.iv to i32
  %best.1 = select i1 %cmp3, i32 %2, i32 %best.011
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %best.0.lcssa = phi i32 [ 0, %entry ], [ %best.1, %for.body ]
  ret i32 %best.0.lcssa
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @DArgMin(double* nocapture %vec, i32 %n) #1 {
entry:
  %cmp9 = icmp sgt i32 %n, 1
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %best.011 = phi i32 [ %best.1, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds double* %vec, i64 %indvars.iv
  %0 = load double* %arrayidx, align 8, !tbaa !0
  %idxprom1 = sext i32 %best.011 to i64
  %arrayidx2 = getelementptr inbounds double* %vec, i64 %idxprom1
  %1 = load double* %arrayidx2, align 8, !tbaa !0
  %cmp3 = fcmp olt double %0, %1
  %2 = trunc i64 %indvars.iv to i32
  %best.1 = select i1 %cmp3, i32 %2, i32 %best.011
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %best.0.lcssa = phi i32 [ 0, %entry ], [ %best.1, %for.body ]
  ret i32 %best.0.lcssa
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @FArgMin(float* nocapture %vec, i32 %n) #1 {
entry:
  %cmp9 = icmp sgt i32 %n, 1
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %best.011 = phi i32 [ %best.1, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds float* %vec, i64 %indvars.iv
  %0 = load float* %arrayidx, align 4, !tbaa !3
  %idxprom1 = sext i32 %best.011 to i64
  %arrayidx2 = getelementptr inbounds float* %vec, i64 %idxprom1
  %1 = load float* %arrayidx2, align 4, !tbaa !3
  %cmp3 = fcmp olt float %0, %1
  %2 = trunc i64 %indvars.iv to i32
  %best.1 = select i1 %cmp3, i32 %2, i32 %best.011
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %best.0.lcssa = phi i32 [ 0, %entry ], [ %best.1, %for.body ]
  ret i32 %best.0.lcssa
}

; Function Attrs: nounwind optsize uwtable
define void @DNorm(double* nocapture %vec, i32 %n) #0 {
entry:
  %cmp4.i = icmp sgt i32 %n, 0
  br i1 %cmp4.i, label %for.body.i, label %if.end

for.cond2.preheader:                              ; preds = %DSum.exit
  br i1 %cmp4.i, label %for.body4.lr.ph, label %if.end

for.body4.lr.ph:                                  ; preds = %for.cond2.preheader
  %conv = sitofp i32 %n to double
  %div5 = fdiv double 1.000000e+00, %conv
  br label %for.body4

for.body.i:                                       ; preds = %entry, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ 0, %entry ]
  %sum.05.i = phi double [ %add.i, %for.body.i ], [ 0.000000e+00, %entry ]
  %arrayidx.i = getelementptr inbounds double* %vec, i64 %indvars.iv.i
  %0 = load double* %arrayidx.i, align 8, !tbaa !0
  %add.i = fadd double %sum.05.i, %0
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv32 = trunc i64 %indvars.iv.next.i to i32
  %exitcond33 = icmp eq i32 %lftr.wideiv32, %n
  br i1 %exitcond33, label %DSum.exit, label %for.body.i

DSum.exit:                                        ; preds = %for.body.i
  %cmp = fcmp une double %add.i, 0.000000e+00
  br i1 %cmp, label %for.body, label %for.cond2.preheader

for.body:                                         ; preds = %DSum.exit, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %DSum.exit ]
  %arrayidx = getelementptr inbounds double* %vec, i64 %indvars.iv
  %1 = load double* %arrayidx, align 8, !tbaa !0
  %div = fdiv double %1, %add.i
  store double %div, double* %arrayidx, align 8, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %if.end, label %for.body

for.body4:                                        ; preds = %for.body4, %for.body4.lr.ph
  %indvars.iv28 = phi i64 [ 0, %for.body4.lr.ph ], [ %indvars.iv.next29, %for.body4 ]
  %arrayidx7 = getelementptr inbounds double* %vec, i64 %indvars.iv28
  store double %div5, double* %arrayidx7, align 8, !tbaa !0
  %indvars.iv.next29 = add i64 %indvars.iv28, 1
  %lftr.wideiv30 = trunc i64 %indvars.iv.next29 to i32
  %exitcond31 = icmp eq i32 %lftr.wideiv30, %n
  br i1 %exitcond31, label %if.end, label %for.body4

if.end:                                           ; preds = %entry, %for.cond2.preheader, %for.body4, %for.body
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @FNorm(float* nocapture %vec, i32 %n) #0 {
entry:
  %cmp4.i = icmp sgt i32 %n, 0
  br i1 %cmp4.i, label %for.body.i, label %if.end

for.cond4.preheader:                              ; preds = %FSum.exit
  br i1 %cmp4.i, label %for.body7.lr.ph, label %if.end

for.body7.lr.ph:                                  ; preds = %for.cond4.preheader
  %conv8 = sitofp i32 %n to float
  %conv11 = fdiv float 1.000000e+00, %conv8
  br label %for.body7

for.body.i:                                       ; preds = %entry, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ 0, %entry ]
  %sum.05.i = phi float [ %add.i, %for.body.i ], [ 0.000000e+00, %entry ]
  %arrayidx.i = getelementptr inbounds float* %vec, i64 %indvars.iv.i
  %0 = load float* %arrayidx.i, align 4, !tbaa !3
  %add.i = fadd float %sum.05.i, %0
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv38 = trunc i64 %indvars.iv.next.i to i32
  %exitcond39 = icmp eq i32 %lftr.wideiv38, %n
  br i1 %exitcond39, label %FSum.exit, label %for.body.i

FSum.exit:                                        ; preds = %for.body.i
  %cmp = fcmp une float %add.i, 0.000000e+00
  br i1 %cmp, label %for.body, label %for.cond4.preheader

for.body:                                         ; preds = %FSum.exit, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %FSum.exit ]
  %arrayidx = getelementptr inbounds float* %vec, i64 %indvars.iv
  %1 = load float* %arrayidx, align 4, !tbaa !3
  %div = fdiv float %1, %add.i
  store float %div, float* %arrayidx, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %if.end, label %for.body

for.body7:                                        ; preds = %for.body7, %for.body7.lr.ph
  %indvars.iv34 = phi i64 [ 0, %for.body7.lr.ph ], [ %indvars.iv.next35, %for.body7 ]
  %arrayidx13 = getelementptr inbounds float* %vec, i64 %indvars.iv34
  store float %conv11, float* %arrayidx13, align 4, !tbaa !3
  %indvars.iv.next35 = add i64 %indvars.iv34, 1
  %lftr.wideiv36 = trunc i64 %indvars.iv.next35 to i32
  %exitcond37 = icmp eq i32 %lftr.wideiv36, %n
  br i1 %exitcond37, label %if.end, label %for.body7

if.end:                                           ; preds = %entry, %for.cond4.preheader, %for.body7, %for.body
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @DLog(double* nocapture %vec, i32 %n) #0 {
entry:
  %cmp14 = icmp sgt i32 %n, 0
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds double* %vec, i64 %indvars.iv
  %0 = load double* %arrayidx, align 8, !tbaa !0
  %cmp1 = fcmp ogt double %0, 0.000000e+00
  br i1 %cmp1, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %call = tail call double @log(double %0) #3
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %storemerge = phi double [ %call, %if.then ], [ 0xFFEFFFFFFFFFFFFF, %for.body ]
  store double %storemerge, double* %arrayidx, align 8, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: nounwind optsize
declare double @log(double) #2

; Function Attrs: nounwind optsize uwtable
define void @FLog(float* nocapture %vec, i32 %n) #0 {
entry:
  %cmp17 = icmp sgt i32 %n, 0
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds float* %vec, i64 %indvars.iv
  %0 = load float* %arrayidx, align 4, !tbaa !3
  %cmp1 = fcmp ogt float %0, 0.000000e+00
  br i1 %cmp1, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %conv = fpext float %0 to double
  %call = tail call double @log(double %conv) #3
  %conv6 = fptrunc double %call to float
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %storemerge = phi float [ %conv6, %if.then ], [ 0xC7EFFFFFE0000000, %for.body ]
  store float %storemerge, float* %arrayidx, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @DExp(double* nocapture %vec, i32 %n) #0 {
entry:
  %cmp7 = icmp sgt i32 %n, 0
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds double* %vec, i64 %indvars.iv
  %0 = load double* %arrayidx, align 8, !tbaa !0
  %call = tail call double @exp(double %0) #3
  store double %call, double* %arrayidx, align 8, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize
declare double @exp(double) #2

; Function Attrs: nounwind optsize uwtable
define void @FExp(float* nocapture %vec, i32 %n) #0 {
entry:
  %cmp8 = icmp sgt i32 %n, 0
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds float* %vec, i64 %indvars.iv
  %0 = load float* %arrayidx, align 4, !tbaa !3
  %conv = fpext float %0 to double
  %call = tail call double @exp(double %conv) #3
  %conv1 = fptrunc double %call to float
  store float %conv1, float* %arrayidx, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define double @DLogSum(double* nocapture %vec, i32 %n) #0 {
entry:
  %0 = load double* %vec, align 8, !tbaa !0
  %cmp11.i = icmp sgt i32 %n, 1
  br i1 %cmp11.i, label %for.body.i, label %DMax.exit

for.body.i:                                       ; preds = %entry, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ 1, %entry ]
  %best.013.i = phi double [ %best.1.i, %for.body.i ], [ %0, %entry ]
  %arrayidx1.i = getelementptr inbounds double* %vec, i64 %indvars.iv.i
  %1 = load double* %arrayidx1.i, align 8, !tbaa !0
  %cmp2.i = fcmp ogt double %1, %best.013.i
  %best.1.i = select i1 %cmp2.i, double %1, double %best.013.i
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv21 = trunc i64 %indvars.iv.next.i to i32
  %exitcond22 = icmp eq i32 %lftr.wideiv21, %n
  br i1 %exitcond22, label %DMax.exit, label %for.body.i

DMax.exit:                                        ; preds = %for.body.i, %entry
  %best.0.lcssa.i = phi double [ %0, %entry ], [ %best.1.i, %for.body.i ]
  %cmp18 = icmp sgt i32 %n, 0
  br i1 %cmp18, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %DMax.exit
  %sub = fadd double %best.0.lcssa.i, -5.000000e+01
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %2 = phi double [ %0, %for.body.lr.ph ], [ %.pre, %for.inc.for.body_crit_edge ]
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph ], [ %phitmp, %for.inc.for.body_crit_edge ]
  %sum.020 = phi double [ 0.000000e+00, %for.body.lr.ph ], [ %sum.1, %for.inc.for.body_crit_edge ]
  %cmp1 = fcmp ogt double %2, %sub
  br i1 %cmp1, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %sub4 = fsub double %2, %best.0.lcssa.i
  %call5 = tail call double @exp(double %sub4) #3
  %add = fadd double %sum.020, %call5
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %sum.1 = phi double [ %add, %if.then ], [ %sum.020, %for.body ]
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  %arrayidx.phi.trans.insert = getelementptr inbounds double* %vec, i64 %indvars.iv
  %.pre = load double* %arrayidx.phi.trans.insert, align 8, !tbaa !0
  %phitmp = add i64 %indvars.iv, 1
  br label %for.body

for.end:                                          ; preds = %for.inc, %DMax.exit
  %sum.0.lcssa = phi double [ 0.000000e+00, %DMax.exit ], [ %sum.1, %for.inc ]
  %call6 = tail call double @log(double %sum.0.lcssa) #3
  %add7 = fadd double %best.0.lcssa.i, %call6
  ret double %add7
}

; Function Attrs: nounwind optsize uwtable
define float @FLogSum(float* nocapture %vec, i32 %n) #0 {
entry:
  %0 = load float* %vec, align 4, !tbaa !3
  %cmp11.i = icmp sgt i32 %n, 1
  br i1 %cmp11.i, label %for.body.i, label %FMax.exit

for.body.i:                                       ; preds = %entry, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ 1, %entry ]
  %best.013.i = phi float [ %best.1.i, %for.body.i ], [ %0, %entry ]
  %arrayidx1.i = getelementptr inbounds float* %vec, i64 %indvars.iv.i
  %1 = load float* %arrayidx1.i, align 4, !tbaa !3
  %cmp2.i = fcmp ogt float %1, %best.013.i
  %best.1.i = select i1 %cmp2.i, float %1, float %best.013.i
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv29 = trunc i64 %indvars.iv.next.i to i32
  %exitcond30 = icmp eq i32 %lftr.wideiv29, %n
  br i1 %exitcond30, label %FMax.exit, label %for.body.i

FMax.exit:                                        ; preds = %for.body.i, %entry
  %best.0.lcssa.i = phi float [ %0, %entry ], [ %best.1.i, %for.body.i ]
  %cmp26 = icmp sgt i32 %n, 0
  %conv1 = fpext float %best.0.lcssa.i to double
  br i1 %cmp26, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %FMax.exit
  %sub = fadd double %conv1, -5.000000e+01
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %2 = phi float [ %0, %for.body.lr.ph ], [ %.pre, %for.inc.for.body_crit_edge ]
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph ], [ %phitmp, %for.inc.for.body_crit_edge ]
  %sum.028 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %sum.1, %for.inc.for.body_crit_edge ]
  %conv = fpext float %2 to double
  %cmp2 = fcmp ogt double %conv, %sub
  br i1 %cmp2, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %sub6 = fsub float %2, %best.0.lcssa.i
  %conv7 = fpext float %sub6 to double
  %call8 = tail call double @exp(double %conv7) #3
  %conv9 = fpext float %sum.028 to double
  %add = fadd double %conv9, %call8
  %conv10 = fptrunc double %add to float
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %sum.1 = phi float [ %conv10, %if.then ], [ %sum.028, %for.body ]
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  %arrayidx.phi.trans.insert = getelementptr inbounds float* %vec, i64 %indvars.iv
  %.pre = load float* %arrayidx.phi.trans.insert, align 4, !tbaa !3
  %phitmp = add i64 %indvars.iv, 1
  br label %for.body

for.end:                                          ; preds = %FMax.exit, %for.inc
  %sum.0.lcssa = phi float [ %sum.1, %for.inc ], [ 0.000000e+00, %FMax.exit ]
  %conv11 = fpext float %sum.0.lcssa to double
  %call12 = tail call double @log(double %conv11) #3
  %add14 = fadd double %conv1, %call12
  %conv15 = fptrunc double %add14 to float
  ret float %conv15
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }

!0 = metadata !{metadata !"double", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"float", metadata !1}
