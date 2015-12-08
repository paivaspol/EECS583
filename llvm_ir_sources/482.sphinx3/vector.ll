; ModuleID = '../../SPEC/benchspec/CPU2006/482.sphinx3/src/vector.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.ptmr_t = type { i8*, double, double, double, double, double, double }
%struct.vector_gautbl_t = type { i32, i32, float**, float**, float*, double }

@.str = private unnamed_addr constant [8 x i8] c" %11.4e\00", align 1
@.str2 = private unnamed_addr constant [54 x i8] c"../../SPEC/benchspec/CPU2006/482.sphinx3/src/vector.c\00", align 1
@.str3 = private unnamed_addr constant [5 x i8] c"INFO\00", align 1
@.str4 = private unnamed_addr constant [32 x i8] c"Iter %4d: %.1fs CPU; sqerr= %e\0A\00", align 1
@.str5 = private unnamed_addr constant [43 x i8] c"Iter %4d: %.1fs CPU; sqerr= %e; delta= %e\0A\00", align 1
@.str6 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str7 = private unnamed_addr constant [28 x i8] c"Iter %d: mean[%d] unmapped\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define double @vector_sum_norm(float* nocapture %vec, i32 %len) #0 {
entry:
  %cmp30 = icmp sgt i32 %len, 0
  br i1 %cmp30, label %for.body, label %if.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %for.body ], [ 0, %entry ]
  %sum.031 = phi double [ %add, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds float* %vec, i64 %indvars.iv33
  %0 = load float* %arrayidx, align 4, !tbaa !0
  %conv = fpext float %0 to double
  %add = fadd double %sum.031, %conv
  %indvars.iv.next34 = add i64 %indvars.iv33, 1
  %lftr.wideiv35 = trunc i64 %indvars.iv.next34 to i32
  %exitcond36 = icmp eq i32 %lftr.wideiv35, %len
  br i1 %exitcond36, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %cmp1 = fcmp une double %add, 0.000000e+00
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %div = fdiv double 1.000000e+00, %add
  br i1 %cmp30, label %for.body6, label %if.end

for.body6:                                        ; preds = %if.then, %for.body6
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6 ], [ 0, %if.then ]
  %arrayidx8 = getelementptr inbounds float* %vec, i64 %indvars.iv
  %1 = load float* %arrayidx8, align 4, !tbaa !0
  %conv9 = fpext float %1 to double
  %mul = fmul double %div, %conv9
  %conv10 = fptrunc double %mul to float
  store float %conv10, float* %arrayidx8, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %len
  br i1 %exitcond, label %if.end, label %for.body6

if.end:                                           ; preds = %entry, %if.then, %for.body6, %for.end
  %sum.0.lcssa38 = phi double [ %add, %for.end ], [ %add, %for.body6 ], [ %add, %if.then ], [ 0.000000e+00, %entry ]
  ret double %sum.0.lcssa38
}

; Function Attrs: nounwind optsize uwtable
define void @vector_floor(float* nocapture %vec, i32 %len, double %flr) #0 {
entry:
  %cmp11 = icmp sgt i32 %len, 0
  br i1 %cmp11, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %conv3 = fptrunc double %flr to float
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr inbounds float* %vec, i64 %indvars.iv
  %0 = load float* %arrayidx, align 4, !tbaa !0
  %conv = fpext float %0 to double
  %cmp1 = fcmp olt double %conv, %flr
  br i1 %cmp1, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  store float %conv3, float* %arrayidx, align 4, !tbaa !0
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %len
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @vector_nz_floor(float* nocapture %vec, i32 %len, double %flr) #0 {
entry:
  %cmp18 = icmp sgt i32 %len, 0
  br i1 %cmp18, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %conv8 = fptrunc double %flr to float
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %arrayidx = getelementptr inbounds float* %vec, i64 %indvars.iv
  %0 = load float* %arrayidx, align 4, !tbaa !0
  %cmp1 = fcmp une float %0, 0.000000e+00
  %conv = fpext float %0 to double
  %cmp6 = fcmp olt double %conv, %flr
  %or.cond = and i1 %cmp1, %cmp6
  br i1 %or.cond, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  store float %conv8, float* %arrayidx, align 4, !tbaa !0
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %len
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @vector_print(%struct._IO_FILE* nocapture %fp, float* nocapture %v, i32 %dim) #0 {
entry:
  %cmp6 = icmp sgt i32 %dim, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds float* %v, i64 %indvars.iv
  %0 = load float* %arrayidx, align 4, !tbaa !0
  %conv = fpext float %0 to double
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str, i64 0, i64 0), double %conv) #5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %dim
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %fputc = tail call i32 @fputc(i32 10, %struct._IO_FILE* %fp)
  %call2 = tail call i32 @fflush(%struct._IO_FILE* %fp) #5
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind optsize readonly uwtable
define i32 @vector_is_zero(float* nocapture %vec, i32 %len) #2 {
entry:
  %cmp9 = icmp sgt i32 %len, 0
  br i1 %cmp9, label %land.rhs, label %for.end

for.cond:                                         ; preds = %land.rhs
  %0 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %0, %len
  br i1 %cmp, label %land.rhs, label %for.end

land.rhs:                                         ; preds = %entry, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %entry ]
  %i.010 = phi i32 [ %inc, %for.cond ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds float* %vec, i64 %indvars.iv
  %1 = load float* %arrayidx, align 4, !tbaa !0
  %cmp1 = fcmp oeq float %1, 0.000000e+00
  %indvars.iv.next = add i64 %indvars.iv, 1
  %inc = add nsw i32 %i.010, 1
  br i1 %cmp1, label %for.cond, label %for.end

for.end:                                          ; preds = %for.cond, %land.rhs, %entry
  %i.0.lcssa = phi i32 [ 0, %entry ], [ %i.010, %land.rhs ], [ %inc, %for.cond ]
  %cmp3 = icmp eq i32 %i.0.lcssa, %len
  %conv4 = zext i1 %cmp3 to i32
  ret i32 %conv4
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @vector_maxcomp_int32(i32* nocapture %val, i32 %len) #2 {
entry:
  %cmp9 = icmp sgt i32 %len, 1
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %bi.011 = phi i32 [ %i.0.bi.0, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i32* %val, i64 %indvars.iv
  %0 = load i32* %arrayidx, align 4, !tbaa !3
  %idxprom1 = sext i32 %bi.011 to i64
  %arrayidx2 = getelementptr inbounds i32* %val, i64 %idxprom1
  %1 = load i32* %arrayidx2, align 4, !tbaa !3
  %cmp3 = icmp sgt i32 %0, %1
  %2 = trunc i64 %indvars.iv to i32
  %i.0.bi.0 = select i1 %cmp3, i32 %2, i32 %bi.011
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %len
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %bi.0.lcssa = phi i32 [ 0, %entry ], [ %i.0.bi.0, %for.body ]
  ret i32 %bi.0.lcssa
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @vector_mincomp_int32(i32* nocapture %val, i32 %len) #2 {
entry:
  %cmp9 = icmp sgt i32 %len, 1
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %bi.011 = phi i32 [ %i.0.bi.0, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds i32* %val, i64 %indvars.iv
  %0 = load i32* %arrayidx, align 4, !tbaa !3
  %idxprom1 = sext i32 %bi.011 to i64
  %arrayidx2 = getelementptr inbounds i32* %val, i64 %idxprom1
  %1 = load i32* %arrayidx2, align 4, !tbaa !3
  %cmp3 = icmp slt i32 %0, %1
  %2 = trunc i64 %indvars.iv to i32
  %i.0.bi.0 = select i1 %cmp3, i32 %2, i32 %bi.011
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %len
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %bi.0.lcssa = phi i32 [ 0, %entry ], [ %i.0.bi.0, %for.body ]
  ret i32 %bi.0.lcssa
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @vector_maxcomp_float32(float* nocapture %val, i32 %len) #2 {
entry:
  %cmp9 = icmp sgt i32 %len, 1
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %bi.011 = phi i32 [ %bi.1, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds float* %val, i64 %indvars.iv
  %0 = load float* %arrayidx, align 4, !tbaa !0
  %idxprom1 = sext i32 %bi.011 to i64
  %arrayidx2 = getelementptr inbounds float* %val, i64 %idxprom1
  %1 = load float* %arrayidx2, align 4, !tbaa !0
  %cmp3 = fcmp ogt float %0, %1
  %2 = trunc i64 %indvars.iv to i32
  %bi.1 = select i1 %cmp3, i32 %2, i32 %bi.011
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %len
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %bi.0.lcssa = phi i32 [ 0, %entry ], [ %bi.1, %for.body ]
  ret i32 %bi.0.lcssa
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @vector_mincomp_float32(float* nocapture %val, i32 %len) #2 {
entry:
  %cmp9 = icmp sgt i32 %len, 1
  br i1 %cmp9, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %bi.011 = phi i32 [ %bi.1, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds float* %val, i64 %indvars.iv
  %0 = load float* %arrayidx, align 4, !tbaa !0
  %idxprom1 = sext i32 %bi.011 to i64
  %arrayidx2 = getelementptr inbounds float* %val, i64 %idxprom1
  %1 = load float* %arrayidx2, align 4, !tbaa !0
  %cmp3 = fcmp olt float %0, %1
  %2 = trunc i64 %indvars.iv to i32
  %bi.1 = select i1 %cmp3, i32 %2, i32 %bi.011
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %len
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %bi.0.lcssa = phi i32 [ 0, %entry ], [ %bi.1, %for.body ]
  ret i32 %bi.0.lcssa
}

; Function Attrs: nounwind optsize uwtable
define void @vector_accum(float* nocapture %dst, float* nocapture %src, i32 %len) #0 {
entry:
  %cmp6 = icmp sgt i32 %len, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds float* %src, i64 %indvars.iv
  %0 = load float* %arrayidx, align 4, !tbaa !0
  %arrayidx2 = getelementptr inbounds float* %dst, i64 %indvars.iv
  %1 = load float* %arrayidx2, align 4, !tbaa !0
  %add = fadd float %0, %1
  store float %add, float* %arrayidx2, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %len
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize readonly uwtable
define i32 @vector_cmp(float* nocapture %v1, float* nocapture %v2, i32 %len) #2 {
entry:
  %cmp18 = icmp sgt i32 %len, 0
  br i1 %cmp18, label %for.body, label %return

for.cond:                                         ; preds = %if.end
  %0 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %0, %len
  br i1 %cmp, label %for.body, label %return

for.body:                                         ; preds = %entry, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds float* %v1, i64 %indvars.iv
  %1 = load float* %arrayidx, align 4, !tbaa !0
  %arrayidx2 = getelementptr inbounds float* %v2, i64 %indvars.iv
  %2 = load float* %arrayidx2, align 4, !tbaa !0
  %cmp3 = fcmp olt float %1, %2
  br i1 %cmp3, label %return, label %if.end

if.end:                                           ; preds = %for.body
  %cmp8 = fcmp ogt float %1, %2
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %cmp8, label %return, label %for.cond

return:                                           ; preds = %for.cond, %if.end, %for.body, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.end ], [ -1, %for.body ], [ 0, %for.cond ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @vector_mean(float* nocapture %mean, float** nocapture %data, i32 %n_vec, i32 %n_dim) #0 {
entry:
  %cmp51 = icmp sgt i32 %n_dim, 0
  br i1 %cmp51, label %for.body.lr.ph, label %for.cond1.preheader

for.body.lr.ph:                                   ; preds = %entry
  %mean65 = bitcast float* %mean to i8*
  %0 = add i32 %n_dim, -1
  %1 = zext i32 %0 to i64
  %2 = shl nuw nsw i64 %1, 2
  %3 = add i64 %2, 4
  call void @llvm.memset.p0i8.i64(i8* %mean65, i8 0, i64 %3, i32 4, i1 false)
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.body.lr.ph, %entry
  %cmp249 = icmp sgt i32 %n_vec, 0
  br i1 %cmp249, label %for.cond4.preheader, label %for.end18

for.cond4.preheader:                              ; preds = %for.cond1.preheader, %for.inc16
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %for.inc16 ], [ 0, %for.cond1.preheader ]
  br i1 %cmp51, label %for.body6.lr.ph, label %for.inc16

for.body6.lr.ph:                                  ; preds = %for.cond4.preheader
  %arrayidx9 = getelementptr inbounds float** %data, i64 %indvars.iv57
  %4 = load float** %arrayidx9, align 8, !tbaa !4
  br label %for.body6

for.body6:                                        ; preds = %for.body6, %for.body6.lr.ph
  %indvars.iv53 = phi i64 [ 0, %for.body6.lr.ph ], [ %indvars.iv.next54, %for.body6 ]
  %arrayidx10 = getelementptr inbounds float* %4, i64 %indvars.iv53
  %5 = load float* %arrayidx10, align 4, !tbaa !0
  %arrayidx12 = getelementptr inbounds float* %mean, i64 %indvars.iv53
  %6 = load float* %arrayidx12, align 4, !tbaa !0
  %add = fadd float %5, %6
  store float %add, float* %arrayidx12, align 4, !tbaa !0
  %indvars.iv.next54 = add i64 %indvars.iv53, 1
  %lftr.wideiv55 = trunc i64 %indvars.iv.next54 to i32
  %exitcond56 = icmp eq i32 %lftr.wideiv55, %n_dim
  br i1 %exitcond56, label %for.inc16, label %for.body6

for.inc16:                                        ; preds = %for.body6, %for.cond4.preheader
  %indvars.iv.next58 = add i64 %indvars.iv57, 1
  %lftr.wideiv59 = trunc i64 %indvars.iv.next58 to i32
  %exitcond60 = icmp eq i32 %lftr.wideiv59, %n_vec
  br i1 %exitcond60, label %for.end18, label %for.cond4.preheader

for.end18:                                        ; preds = %for.inc16, %for.cond1.preheader
  br i1 %cmp51, label %for.body22.lr.ph, label %for.end28

for.body22.lr.ph:                                 ; preds = %for.end18
  %conv = sitofp i32 %n_vec to double
  %div = fdiv double 1.000000e+00, %conv
  %conv23 = fptrunc double %div to float
  br label %for.body22

for.body22:                                       ; preds = %for.body22, %for.body22.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body22.lr.ph ], [ %indvars.iv.next, %for.body22 ]
  %arrayidx25 = getelementptr inbounds float* %mean, i64 %indvars.iv
  %7 = load float* %arrayidx25, align 4, !tbaa !0
  %mul = fmul float %conv23, %7
  store float %mul, float* %arrayidx25, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n_dim
  br i1 %exitcond, label %for.end28, label %for.body22

for.end28:                                        ; preds = %for.body22, %for.end18
  ret i32 0
}

; Function Attrs: nounwind optsize readonly uwtable
define double @vector_dist_eucl(float* nocapture %v1, float* nocapture %v2, i32 %len) #2 {
entry:
  %cmp16 = icmp sgt i32 %len, 0
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %d.017 = phi double [ %add, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds float* %v1, i64 %indvars.iv
  %0 = load float* %arrayidx, align 4, !tbaa !0
  %arrayidx2 = getelementptr inbounds float* %v2, i64 %indvars.iv
  %1 = load float* %arrayidx2, align 4, !tbaa !0
  %sub = fsub float %0, %1
  %mul = fmul float %sub, %sub
  %conv = fpext float %mul to double
  %add = fadd double %d.017, %conv
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %len
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %d.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add, %for.body ]
  ret double %d.0.lcssa
}

; Function Attrs: nounwind optsize uwtable
define double @vector_maha_precomp(float* nocapture %var, i32 %len) #0 {
entry:
  %cmp21 = icmp sgt i32 %len, 0
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %det.022 = phi double [ %sub, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds float* %var, i64 %indvars.iv
  %0 = load float* %arrayidx, align 4, !tbaa !0
  %conv = fpext float %0 to double
  %call = tail call double @log(double %conv) #5
  %sub = fsub double %det.022, %call
  %1 = load float* %arrayidx, align 4, !tbaa !0
  %conv3 = fpext float %1 to double
  %mul = fmul double %conv3, 2.000000e+00
  %div = fdiv double 1.000000e+00, %mul
  %conv4 = fptrunc double %div to float
  store float %conv4, float* %arrayidx, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %len
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %det.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %sub, %for.body ]
  %conv8 = sitofp i32 %len to double
  %mul9 = fmul double %conv8, 0x3FFD67F1C864BEB4
  %sub10 = fsub double %det.0.lcssa, %mul9
  %mul11 = fmul double %sub10, 5.000000e-01
  ret double %mul11
}

; Function Attrs: nounwind optsize
declare double @log(double) #1

; Function Attrs: nounwind optsize readonly uwtable
define double @vector_dist_maha(float* nocapture %vec, float* nocapture %mean, float* nocapture %varinv, double %loginvdet, i32 %len) #2 {
entry:
  %cmp14 = icmp sgt i32 %len, 0
  br i1 %cmp14, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %dist.015 = phi double [ %sub7, %for.body ], [ %loginvdet, %entry ]
  %arrayidx = getelementptr inbounds float* %vec, i64 %indvars.iv
  %0 = load float* %arrayidx, align 4, !tbaa !0
  %arrayidx2 = getelementptr inbounds float* %mean, i64 %indvars.iv
  %1 = load float* %arrayidx2, align 4, !tbaa !0
  %sub = fsub float %0, %1
  %conv = fpext float %sub to double
  %mul = fmul double %conv, %conv
  %arrayidx4 = getelementptr inbounds float* %varinv, i64 %indvars.iv
  %2 = load float* %arrayidx4, align 4, !tbaa !0
  %conv5 = fpext float %2 to double
  %mul6 = fmul double %conv5, %mul
  %sub7 = fsub double %dist.015, %mul6
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %len
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %dist.0.lcssa = phi double [ %loginvdet, %entry ], [ %sub7, %for.body ]
  ret double %dist.0.lcssa
}

; Function Attrs: nounwind optsize uwtable
define i32 @vector_vqlabel(float* nocapture %vec, float** nocapture %mean, i32 %rows, i32 %cols, double* %sqerr) #0 {
entry:
  %0 = load float** %mean, align 8, !tbaa !4
  %cmp16.i = icmp sgt i32 %cols, 0
  br i1 %cmp16.i, label %for.body.i, label %for.cond.preheader

for.body.i:                                       ; preds = %entry, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ 0, %entry ]
  %d.017.i = phi double [ %add.i, %for.body.i ], [ 0.000000e+00, %entry ]
  %arrayidx.i = getelementptr inbounds float* %0, i64 %indvars.iv.i
  %1 = load float* %arrayidx.i, align 4, !tbaa !0
  %arrayidx2.i = getelementptr inbounds float* %vec, i64 %indvars.iv.i
  %2 = load float* %arrayidx2.i, align 4, !tbaa !0
  %sub.i = fsub float %1, %2
  %mul.i = fmul float %sub.i, %sub.i
  %conv.i = fpext float %mul.i to double
  %add.i = fadd double %d.017.i, %conv.i
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv37 = trunc i64 %indvars.iv.next.i to i32
  %exitcond38 = icmp eq i32 %lftr.wideiv37, %cols
  br i1 %exitcond38, label %for.cond.preheader, label %for.body.i

for.cond.preheader:                               ; preds = %for.body.i, %entry
  %bestd.0.ph = phi double [ 0.000000e+00, %entry ], [ %add.i, %for.body.i ]
  %cmp30 = icmp sgt i32 %rows, 1
  br i1 %cmp30, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.preheader, %vector_dist_eucl.exit29
  %indvars.iv = phi i64 [ %indvars.iv.next, %vector_dist_eucl.exit29 ], [ 1, %for.cond.preheader ]
  %bestd.033 = phi double [ %bestd.1, %vector_dist_eucl.exit29 ], [ %bestd.0.ph, %for.cond.preheader ]
  %besti.031 = phi i32 [ %besti.1, %vector_dist_eucl.exit29 ], [ 0, %for.cond.preheader ]
  %arrayidx1 = getelementptr inbounds float** %mean, i64 %indvars.iv
  %3 = load float** %arrayidx1, align 8, !tbaa !4
  br i1 %cmp16.i, label %for.body.i27, label %vector_dist_eucl.exit29

for.body.i27:                                     ; preds = %for.body, %for.body.i27
  %indvars.iv.i16 = phi i64 [ %indvars.iv.next.i24, %for.body.i27 ], [ 0, %for.body ]
  %d.017.i17 = phi double [ %add.i23, %for.body.i27 ], [ 0.000000e+00, %for.body ]
  %arrayidx.i18 = getelementptr inbounds float* %3, i64 %indvars.iv.i16
  %4 = load float* %arrayidx.i18, align 4, !tbaa !0
  %arrayidx2.i19 = getelementptr inbounds float* %vec, i64 %indvars.iv.i16
  %5 = load float* %arrayidx2.i19, align 4, !tbaa !0
  %sub.i20 = fsub float %4, %5
  %mul.i21 = fmul float %sub.i20, %sub.i20
  %conv.i22 = fpext float %mul.i21 to double
  %add.i23 = fadd double %d.017.i17, %conv.i22
  %indvars.iv.next.i24 = add i64 %indvars.iv.i16, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i24 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %cols
  br i1 %exitcond, label %vector_dist_eucl.exit29, label %for.body.i27

vector_dist_eucl.exit29:                          ; preds = %for.body.i27, %for.body
  %d.0.lcssa.i28 = phi double [ 0.000000e+00, %for.body ], [ %add.i23, %for.body.i27 ]
  %cmp3 = fcmp ogt double %bestd.033, %d.0.lcssa.i28
  %6 = trunc i64 %indvars.iv to i32
  %besti.1 = select i1 %cmp3, i32 %6, i32 %besti.031
  %bestd.1 = select i1 %cmp3, double %d.0.lcssa.i28, double %bestd.033
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv35 = trunc i64 %indvars.iv.next to i32
  %exitcond36 = icmp eq i32 %lftr.wideiv35, %rows
  br i1 %exitcond36, label %for.end, label %for.body

for.end:                                          ; preds = %vector_dist_eucl.exit29, %for.cond.preheader
  %bestd.0.lcssa = phi double [ %bestd.0.ph, %for.cond.preheader ], [ %bestd.1, %vector_dist_eucl.exit29 ]
  %besti.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %besti.1, %vector_dist_eucl.exit29 ]
  %tobool = icmp eq double* %sqerr, null
  br i1 %tobool, label %if.end5, label %if.then4

if.then4:                                         ; preds = %for.end
  store double %bestd.0.lcssa, double* %sqerr, align 8, !tbaa !5
  br label %if.end5

if.end5:                                          ; preds = %for.end, %if.then4
  ret i32 %besti.0.lcssa
}

; Function Attrs: nounwind optsize uwtable
define double @vector_vqgen(float** nocapture %data, i32 %rows, i32 %cols, i32 %vqrows, double %epsilon, i32 %maxiter, float** nocapture %mean, i32* nocapture %map) #0 {
entry:
  %t = alloca double, align 8
  %tm = alloca %struct.ptmr_t, align 8
  %0 = bitcast %struct.ptmr_t* %tm to i8*
  call void @llvm.lifetime.start(i64 56, i8* %0) #3
  %add = add nsw i32 %rows, 31
  %shr = ashr i32 %add, 5
  %conv = sext i32 %shr to i64
  %call = call i8* @__ckd_calloc__(i64 %conv, i64 4, i8* getelementptr inbounds ([54 x i8]* @.str2, i64 0, i64 0), i32 326) #5
  %1 = bitcast i8* %call to i32*
  call void @ptmr_init(%struct.ptmr_t* %tm) #5
  call void @ptmr_start(%struct.ptmr_t* %tm) #5
  call void @spec_srand(i32 1) #5
  %cmp254 = icmp sgt i32 %vqrows, 0
  %conv17 = sext i32 %cols to i64
  %mul18 = shl nsw i64 %conv17, 2
  br i1 %cmp254, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %while.end
  %indvars.iv281 = phi i64 [ %indvars.iv.next282, %while.end ], [ 0, %entry ]
  %call2 = call double @spec_rand() #5
  %mul = fmul double %call2, 0x41DFFFFFFFC00000
  %conv3 = fptosi double %mul to i32
  %rem = srem i32 %conv3, %rows
  %shr4242 = ashr i32 %rem, 5
  %idxprom243 = sext i32 %shr4242 to i64
  %arrayidx244 = getelementptr inbounds i32* %1, i64 %idxprom243
  %2 = load i32* %arrayidx244, align 4, !tbaa !3
  %and245 = and i32 %rem, 31
  %shl246 = shl i32 1, %and245
  %and5247 = and i32 %shl246, %2
  %tobool248 = icmp eq i32 %and5247, 0
  br i1 %tobool248, label %while.end, label %while.body

while.body:                                       ; preds = %for.body, %while.body
  %r.0249 = phi i32 [ %.inc, %while.body ], [ %rem, %for.body ]
  %inc = add nsw i32 %r.0249, 1
  %cmp6 = icmp sge i32 %inc, %rows
  %.inc = select i1 %cmp6, i32 0, i32 %inc
  %shr4 = ashr i32 %.inc, 5
  %idxprom = sext i32 %shr4 to i64
  %arrayidx = getelementptr inbounds i32* %1, i64 %idxprom
  %3 = load i32* %arrayidx, align 4, !tbaa !3
  %and = and i32 %.inc, 31
  %shl = shl i32 1, %and
  %and5 = and i32 %shl, %3
  %tobool = icmp eq i32 %and5, 0
  br i1 %tobool, label %while.end, label %while.body

while.end:                                        ; preds = %while.body, %for.body
  %shl.lcssa = phi i32 [ %shl246, %for.body ], [ %shl, %while.body ]
  %.lcssa = phi i32 [ %2, %for.body ], [ %3, %while.body ]
  %arrayidx.lcssa = phi i32* [ %arrayidx244, %for.body ], [ %arrayidx, %while.body ]
  %r.0.lcssa = phi i32 [ %rem, %for.body ], [ %.inc, %while.body ]
  %or = or i32 %shl.lcssa, %.lcssa
  store i32 %or, i32* %arrayidx.lcssa, align 4, !tbaa !3
  %arrayidx14 = getelementptr inbounds float** %mean, i64 %indvars.iv281
  %4 = load float** %arrayidx14, align 8, !tbaa !4
  %5 = bitcast float* %4 to i8*
  %idxprom15 = sext i32 %r.0.lcssa to i64
  %arrayidx16 = getelementptr inbounds float** %data, i64 %idxprom15
  %6 = load float** %arrayidx16, align 8, !tbaa !4
  %7 = bitcast float* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* %7, i64 %mul18, i32 1, i1 false)
  %indvars.iv.next282 = add i64 %indvars.iv281, 1
  %lftr.wideiv283 = trunc i64 %indvars.iv.next282 to i32
  %exitcond284 = icmp eq i32 %lftr.wideiv283, %vqrows
  br i1 %exitcond284, label %for.end, label %for.body

for.end:                                          ; preds = %entry, %while.end
  call void @ckd_free(i8* %call) #5
  %conv20 = sext i32 %vqrows to i64
  %call21 = call i8* @__ckd_calloc__(i64 %conv20, i64 4, i8* getelementptr inbounds ([54 x i8]* @.str2, i64 0, i64 0), i32 367) #5
  %8 = bitcast i8* %call21 to i32*
  %call23 = call i8* @__ckd_calloc__(i64 %conv17, i64 4, i8* getelementptr inbounds ([54 x i8]* @.str2, i64 0, i64 0), i32 370) #5
  %9 = bitcast i8* %call23 to float*
  %call24 = call i32 @vector_mean(float* %9, float** %mean, i32 %vqrows, i32 %cols) #6
  %sub46 = add nsw i32 %maxiter, -1
  %cmp27229 = icmp sgt i32 %rows, 0
  %t_cpu = getelementptr inbounds %struct.ptmr_t* %tm, i64 0, i32 1
  %cmp110238 = icmp sgt i32 %cols, 0
  %10 = add i32 %cols, -1
  %11 = zext i32 %10 to i64
  %12 = shl nuw nsw i64 %11, 2
  %13 = add i64 %12, 4
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc142, %for.end
  %prev_sqerr.0 = phi double [ 0.000000e+00, %for.end ], [ %sqerr.0.lcssa, %for.inc142 ]
  %it.0 = phi i32 [ 0, %for.end ], [ %inc143, %for.inc142 ]
  br i1 %cmp27229, label %for.body29, label %for.end38

for.body29:                                       ; preds = %for.cond25, %for.body29
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body29 ], [ 0, %for.cond25 ]
  %sqerr.0230 = phi double [ %add35, %for.body29 ], [ 0.000000e+00, %for.cond25 ]
  %arrayidx31 = getelementptr inbounds float** %data, i64 %indvars.iv
  %14 = load float** %arrayidx31, align 8, !tbaa !4
  %call32 = call i32 @vector_vqlabel(float* %14, float** %mean, i32 %vqrows, i32 %cols, double* %t) #6
  %arrayidx34 = getelementptr inbounds i32* %map, i64 %indvars.iv
  store i32 %call32, i32* %arrayidx34, align 4, !tbaa !3
  %15 = load double* %t, align 8, !tbaa !5
  %add35 = fadd double %sqerr.0230, %15
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %rows
  br i1 %exitcond, label %for.end38, label %for.body29

for.end38:                                        ; preds = %for.body29, %for.cond25
  %sqerr.0.lcssa = phi double [ 0.000000e+00, %for.cond25 ], [ %add35, %for.body29 ]
  call void @ptmr_stop(%struct.ptmr_t* %tm) #5
  %cmp39 = icmp eq i32 %it.0, 0
  br i1 %cmp39, label %if.then41, label %if.else

if.then41:                                        ; preds = %for.end38
  call void @_E__pr_info_header(i8* getelementptr inbounds ([54 x i8]* @.str2, i64 0, i64 0), i64 383, i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0)) #5
  %16 = load double* %t_cpu, align 8, !tbaa !5
  call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([32 x i8]* @.str4, i64 0, i64 0), i32 0, double %16, double %sqerr.0.lcssa) #5
  br label %if.end43

if.else:                                          ; preds = %for.end38
  call void @_E__pr_info_header(i8* getelementptr inbounds ([54 x i8]* @.str2, i64 0, i64 0), i64 385, i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0)) #5
  %17 = load double* %t_cpu, align 8, !tbaa !5
  %sub = fsub double %prev_sqerr.0, %sqerr.0.lcssa
  %div = fdiv double %sub, %prev_sqerr.0
  call void (i8*, ...)* @_E__pr_info(i8* getelementptr inbounds ([43 x i8]* @.str5, i64 0, i64 0), i32 %it.0, double %17, double %sqerr.0.lcssa, double %div) #5
  br label %if.end43

if.end43:                                         ; preds = %if.else, %if.then41
  %cmp44 = fcmp une double %sqerr.0.lcssa, 0.000000e+00
  %cmp47 = icmp slt i32 %it.0, %sub46
  %or.cond = and i1 %cmp44, %cmp47
  br i1 %or.cond, label %lor.lhs.false49, label %for.end144

lor.lhs.false49:                                  ; preds = %if.end43
  %cmp50 = icmp sgt i32 %it.0, 0
  br i1 %cmp50, label %land.lhs.true, label %if.end57

land.lhs.true:                                    ; preds = %lor.lhs.false49
  %sub52 = fsub double %prev_sqerr.0, %sqerr.0.lcssa
  %div53 = fdiv double %sub52, %prev_sqerr.0
  %cmp54 = fcmp olt double %div53, %epsilon
  br i1 %cmp54, label %for.end144, label %if.end57

if.end57:                                         ; preds = %land.lhs.true, %lor.lhs.false49
  call void @ptmr_start(%struct.ptmr_t* %tm) #5
  br i1 %cmp254, label %for.cond62.preheader, label %for.cond78.loopexit

for.cond62.preheader:                             ; preds = %if.end57, %for.end72
  %indvars.iv260 = phi i64 [ %indvars.iv.next261, %for.end72 ], [ 0, %if.end57 ]
  br i1 %cmp110238, label %for.body65.lr.ph, label %for.end72

for.body65.lr.ph:                                 ; preds = %for.cond62.preheader
  %arrayidx68 = getelementptr inbounds float** %mean, i64 %indvars.iv260
  %18 = load float** %arrayidx68, align 8, !tbaa !4
  %19 = bitcast float* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* %19, i8 0, i64 %13, i32 4, i1 false)
  br label %for.end72

for.end72:                                        ; preds = %for.body65.lr.ph, %for.cond62.preheader
  %arrayidx74 = getelementptr inbounds i32* %8, i64 %indvars.iv260
  store i32 0, i32* %arrayidx74, align 4, !tbaa !3
  %indvars.iv.next261 = add i64 %indvars.iv260, 1
  %lftr.wideiv262 = trunc i64 %indvars.iv.next261 to i32
  %exitcond263 = icmp eq i32 %lftr.wideiv262, %vqrows
  br i1 %exitcond263, label %for.cond78.loopexit, label %for.cond62.preheader

for.cond78.loopexit:                              ; preds = %for.end72, %if.end57
  br i1 %cmp27229, label %for.body81, label %for.cond96.loopexit

for.body81:                                       ; preds = %for.cond78.loopexit, %vector_accum.exit
  %indvars.iv266 = phi i64 [ %indvars.iv.next267, %vector_accum.exit ], [ 0, %for.cond78.loopexit ]
  %arrayidx83 = getelementptr inbounds i32* %map, i64 %indvars.iv266
  %20 = load i32* %arrayidx83, align 4, !tbaa !3
  %idxprom84 = sext i32 %20 to i64
  %arrayidx85 = getelementptr inbounds float** %mean, i64 %idxprom84
  %21 = load float** %arrayidx85, align 8, !tbaa !4
  %arrayidx87 = getelementptr inbounds float** %data, i64 %indvars.iv266
  %22 = load float** %arrayidx87, align 8, !tbaa !4
  br i1 %cmp110238, label %for.body.i, label %vector_accum.exit

for.body.i:                                       ; preds = %for.body81, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ 0, %for.body81 ]
  %arrayidx.i = getelementptr inbounds float* %22, i64 %indvars.iv.i
  %23 = load float* %arrayidx.i, align 4, !tbaa !0
  %arrayidx2.i = getelementptr inbounds float* %21, i64 %indvars.iv.i
  %24 = load float* %arrayidx2.i, align 4, !tbaa !0
  %add.i = fadd float %23, %24
  store float %add.i, float* %arrayidx2.i, align 4, !tbaa !0
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv264 = trunc i64 %indvars.iv.next.i to i32
  %exitcond265 = icmp eq i32 %lftr.wideiv264, %cols
  br i1 %exitcond265, label %vector_accum.exit, label %for.body.i

vector_accum.exit:                                ; preds = %for.body.i, %for.body81
  %arrayidx91 = getelementptr inbounds i32* %8, i64 %idxprom84
  %25 = load i32* %arrayidx91, align 4, !tbaa !3
  %inc92 = add nsw i32 %25, 1
  store i32 %inc92, i32* %arrayidx91, align 4, !tbaa !3
  %indvars.iv.next267 = add i64 %indvars.iv266, 1
  %lftr.wideiv268 = trunc i64 %indvars.iv.next267 to i32
  %exitcond269 = icmp eq i32 %lftr.wideiv268, %rows
  br i1 %exitcond269, label %for.cond96.loopexit, label %for.body81

for.cond96.loopexit:                              ; preds = %vector_accum.exit, %for.cond78.loopexit
  br i1 %cmp254, label %for.body99, label %for.inc142

for.body99:                                       ; preds = %for.cond96.loopexit, %for.inc139
  %indvars.iv274 = phi i64 [ %indvars.iv.next275, %for.inc139 ], [ 0, %for.cond96.loopexit ]
  %arrayidx101 = getelementptr inbounds i32* %8, i64 %indvars.iv274
  %26 = load i32* %arrayidx101, align 4, !tbaa !3
  %cmp102 = icmp sgt i32 %26, 1
  br i1 %cmp102, label %if.then104, label %if.else127

if.then104:                                       ; preds = %for.body99
  %conv107 = sitofp i32 %26 to double
  %div108 = fdiv double 1.000000e+00, %conv107
  store double %div108, double* %t, align 8, !tbaa !5
  br i1 %cmp110238, label %for.body112.lr.ph, label %for.inc139

for.body112.lr.ph:                                ; preds = %if.then104
  %arrayidx115 = getelementptr inbounds float** %mean, i64 %indvars.iv274
  %27 = load float** %arrayidx115, align 8, !tbaa !4
  br label %for.body112

for.body112:                                      ; preds = %for.body112, %for.body112.lr.ph
  %indvars.iv270 = phi i64 [ 0, %for.body112.lr.ph ], [ %indvars.iv.next271, %for.body112 ]
  %arrayidx116 = getelementptr inbounds float* %27, i64 %indvars.iv270
  %28 = load float* %arrayidx116, align 4, !tbaa !0
  %conv117 = fpext float %28 to double
  %mul118 = fmul double %conv117, %div108
  %conv119 = fptrunc double %mul118 to float
  store float %conv119, float* %arrayidx116, align 4, !tbaa !0
  %indvars.iv.next271 = add i64 %indvars.iv270, 1
  %lftr.wideiv272 = trunc i64 %indvars.iv.next271 to i32
  %exitcond273 = icmp eq i32 %lftr.wideiv272, %cols
  br i1 %exitcond273, label %for.inc139, label %for.body112

if.else127:                                       ; preds = %for.body99
  %cmp130 = icmp eq i32 %26, 0
  br i1 %cmp130, label %if.then132, label %for.inc139

if.then132:                                       ; preds = %if.else127
  call void @_E__pr_header(i8* getelementptr inbounds ([54 x i8]* @.str2, i64 0, i64 0), i64 413, i8* getelementptr inbounds ([6 x i8]* @.str6, i64 0, i64 0)) #5
  %29 = trunc i64 %indvars.iv274 to i32
  call void (i8*, ...)* @_E__pr_warn(i8* getelementptr inbounds ([28 x i8]* @.str7, i64 0, i64 0), i32 %it.0, i32 %29) #5
  %arrayidx134 = getelementptr inbounds float** %mean, i64 %indvars.iv274
  %30 = load float** %arrayidx134, align 8, !tbaa !4
  %31 = bitcast float* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %31, i8* %call23, i64 %mul18, i32 4, i1 false)
  br label %for.inc139

for.inc139:                                       ; preds = %if.then104, %for.body112, %if.then132, %if.else127
  %indvars.iv.next275 = add i64 %indvars.iv274, 1
  %lftr.wideiv276 = trunc i64 %indvars.iv.next275 to i32
  %exitcond277 = icmp eq i32 %lftr.wideiv276, %vqrows
  br i1 %exitcond277, label %for.inc142, label %for.body99

for.inc142:                                       ; preds = %for.inc139, %for.cond96.loopexit
  %inc143 = add nsw i32 %it.0, 1
  br label %for.cond25

for.end144:                                       ; preds = %if.end43, %land.lhs.true
  call void @ckd_free(i8* %call21) #5
  call void @ckd_free(i8* %call23) #5
  call void @llvm.lifetime.end(i64 56, i8* %0) #3
  ret double %sqerr.0.lcssa
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: optsize
declare i8* @__ckd_calloc__(i64, i64, i8*, i32) #4

; Function Attrs: optsize
declare void @ptmr_init(%struct.ptmr_t*) #4

; Function Attrs: optsize
declare void @ptmr_start(%struct.ptmr_t*) #4

; Function Attrs: optsize
declare void @spec_srand(i32) #4

; Function Attrs: optsize
declare double @spec_rand() #4

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #3

; Function Attrs: optsize
declare void @ckd_free(i8*) #4

; Function Attrs: optsize
declare void @ptmr_stop(%struct.ptmr_t*) #4

; Function Attrs: optsize
declare void @_E__pr_info_header(i8*, i64, i8*) #4

; Function Attrs: optsize
declare void @_E__pr_info(i8*, ...) #4

; Function Attrs: optsize
declare void @_E__pr_header(i8*, i64, i8*) #4

; Function Attrs: optsize
declare void @_E__pr_warn(i8*, ...) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define double @vector_pdf_entropy(float* nocapture %p, i32 %len) #0 {
entry:
  %cmp18 = icmp sgt i32 %len, 0
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %sum.019 = phi double [ %sum.1, %for.inc ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds float* %p, i64 %indvars.iv
  %0 = load float* %arrayidx, align 4, !tbaa !0
  %conv = fpext float %0 to double
  %cmp1 = fcmp ogt float %0, 0.000000e+00
  br i1 %cmp1, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %call = tail call double @log(double %conv) #5
  %mul = fmul double %conv, %call
  %sub = fsub double %sum.019, %mul
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %sum.1 = phi double [ %sub, %if.then ], [ %sum.019, %for.body ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %len
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  %sum.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %sum.1, %for.inc ]
  %div = fdiv double %sum.0.lcssa, 0x3FE62E42FEFA39EF
  ret double %div
}

; Function Attrs: nounwind optsize uwtable
define double @vector_pdf_cross_entropy(float* nocapture %p1, float* nocapture %p2, i32 %len) #0 {
entry:
  %cmp17 = icmp sgt i32 %len, 0
  br i1 %cmp17, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %sum.018 = phi double [ %sum.1, %for.inc ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds float* %p2, i64 %indvars.iv
  %0 = load float* %arrayidx, align 4, !tbaa !0
  %cmp1 = fcmp ogt float %0, 0.000000e+00
  br i1 %cmp1, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %conv = fpext float %0 to double
  %arrayidx4 = getelementptr inbounds float* %p1, i64 %indvars.iv
  %1 = load float* %arrayidx4, align 4, !tbaa !0
  %conv5 = fpext float %1 to double
  %call = tail call double @log(double %conv) #5
  %mul = fmul double %conv5, %call
  %sub = fsub double %sum.018, %mul
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %sum.1 = phi double [ %sub, %if.then ], [ %sum.018, %for.body ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %len
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  %sum.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %sum.1, %for.inc ]
  %div = fdiv double %sum.0.lcssa, 0x3FE62E42FEFA39EF
  ret double %div
}

; Function Attrs: nounwind optsize uwtable
define void @vector_gautbl_alloc(%struct.vector_gautbl_t* nocapture %gautbl, i32 %n_gau, i32 %veclen) #0 {
entry:
  %n_gau1 = getelementptr inbounds %struct.vector_gautbl_t* %gautbl, i64 0, i32 0
  store i32 %n_gau, i32* %n_gau1, align 4, !tbaa !3
  %veclen2 = getelementptr inbounds %struct.vector_gautbl_t* %gautbl, i64 0, i32 1
  store i32 %veclen, i32* %veclen2, align 4, !tbaa !3
  %call = tail call i8** @__ckd_calloc_2d__(i32 %n_gau, i32 %veclen, i32 4, i8* getelementptr inbounds ([54 x i8]* @.str2, i64 0, i64 0), i32 462) #5
  %0 = bitcast i8** %call to float**
  %mean = getelementptr inbounds %struct.vector_gautbl_t* %gautbl, i64 0, i32 2
  store float** %0, float*** %mean, align 8, !tbaa !4
  %call3 = tail call i8** @__ckd_calloc_2d__(i32 %n_gau, i32 %veclen, i32 4, i8* getelementptr inbounds ([54 x i8]* @.str2, i64 0, i64 0), i32 463) #5
  %1 = bitcast i8** %call3 to float**
  %var = getelementptr inbounds %struct.vector_gautbl_t* %gautbl, i64 0, i32 3
  store float** %1, float*** %var, align 8, !tbaa !4
  %conv = sext i32 %n_gau to i64
  %call4 = tail call i8* @__ckd_calloc__(i64 %conv, i64 4, i8* getelementptr inbounds ([54 x i8]* @.str2, i64 0, i64 0), i32 464) #5
  %2 = bitcast i8* %call4 to float*
  %lrd = getelementptr inbounds %struct.vector_gautbl_t* %gautbl, i64 0, i32 4
  store float* %2, float** %lrd, align 8, !tbaa !4
  %call5 = tail call double @logs3_to_log(i32 -939524096) #5
  %distfloor = getelementptr inbounds %struct.vector_gautbl_t* %gautbl, i64 0, i32 5
  store double %call5, double* %distfloor, align 8, !tbaa !5
  ret void
}

; Function Attrs: optsize
declare i8** @__ckd_calloc_2d__(i32, i32, i32, i8*, i32) #4

; Function Attrs: optsize
declare double @logs3_to_log(i32) #4

; Function Attrs: nounwind optsize uwtable
define void @vector_gautbl_free(%struct.vector_gautbl_t* nocapture %gautbl) #0 {
entry:
  %mean = getelementptr inbounds %struct.vector_gautbl_t* %gautbl, i64 0, i32 2
  %0 = load float*** %mean, align 8, !tbaa !4
  %1 = bitcast float** %0 to i8**
  tail call void @ckd_free_2d(i8** %1) #5
  %var = getelementptr inbounds %struct.vector_gautbl_t* %gautbl, i64 0, i32 3
  %2 = load float*** %var, align 8, !tbaa !4
  %3 = bitcast float** %2 to i8**
  tail call void @ckd_free_2d(i8** %3) #5
  %lrd = getelementptr inbounds %struct.vector_gautbl_t* %gautbl, i64 0, i32 4
  %4 = load float** %lrd, align 8, !tbaa !4
  %5 = bitcast float* %4 to i8*
  tail call void @ckd_free(i8* %5) #5
  ret void
}

; Function Attrs: optsize
declare void @ckd_free_2d(i8**) #4

; Function Attrs: nounwind optsize uwtable
define void @vector_gautbl_var_floor(%struct.vector_gautbl_t* nocapture %gautbl, double %floor) #0 {
entry:
  %n_gau = getelementptr inbounds %struct.vector_gautbl_t* %gautbl, i64 0, i32 0
  %0 = load i32* %n_gau, align 4, !tbaa !3
  %cmp5 = icmp sgt i32 %0, 0
  br i1 %cmp5, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %var = getelementptr inbounds %struct.vector_gautbl_t* %gautbl, i64 0, i32 3
  %1 = load float*** %var, align 8, !tbaa !4
  %veclen = getelementptr inbounds %struct.vector_gautbl_t* %gautbl, i64 0, i32 1
  %2 = load i32* %veclen, align 4, !tbaa !3
  %cmp11.i = icmp sgt i32 %2, 0
  %conv3.i = fptrunc double %floor to float
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %vector_floor.exit
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %vector_floor.exit ]
  %arrayidx = getelementptr inbounds float** %1, i64 %indvars.iv
  %3 = load float** %arrayidx, align 8, !tbaa !4
  br i1 %cmp11.i, label %for.body.i, label %vector_floor.exit

for.body.i:                                       ; preds = %for.body, %for.inc.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.inc.i ], [ 0, %for.body ]
  %arrayidx.i = getelementptr inbounds float* %3, i64 %indvars.iv.i
  %4 = load float* %arrayidx.i, align 4, !tbaa !0
  %conv.i = fpext float %4 to double
  %cmp1.i = fcmp olt double %conv.i, %floor
  br i1 %cmp1.i, label %if.then.i, label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  store float %conv3.i, float* %arrayidx.i, align 4, !tbaa !0
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %2
  br i1 %exitcond, label %vector_floor.exit, label %for.body.i

vector_floor.exit:                                ; preds = %for.inc.i, %for.body
  %indvars.iv.next = add i64 %indvars.iv, 1
  %5 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %5, %0
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %vector_floor.exit, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @vector_gautbl_maha_precomp(%struct.vector_gautbl_t* nocapture %gautbl) #0 {
entry:
  %n_gau = getelementptr inbounds %struct.vector_gautbl_t* %gautbl, i64 0, i32 0
  %0 = load i32* %n_gau, align 4, !tbaa !3
  %cmp9 = icmp sgt i32 %0, 0
  br i1 %cmp9, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %var = getelementptr inbounds %struct.vector_gautbl_t* %gautbl, i64 0, i32 3
  %veclen = getelementptr inbounds %struct.vector_gautbl_t* %gautbl, i64 0, i32 1
  %lrd = getelementptr inbounds %struct.vector_gautbl_t* %gautbl, i64 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %1 = load float*** %var, align 8, !tbaa !4
  %arrayidx = getelementptr inbounds float** %1, i64 %indvars.iv
  %2 = load float** %arrayidx, align 8, !tbaa !4
  %3 = load i32* %veclen, align 4, !tbaa !3
  %call = tail call double @vector_maha_precomp(float* %2, i32 %3) #6
  %conv = fptrunc double %call to float
  %4 = load float** %lrd, align 8, !tbaa !4
  %arrayidx2 = getelementptr inbounds float* %4, i64 %indvars.iv
  store float %conv, float* %arrayidx2, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %5 = load i32* %n_gau, align 4, !tbaa !3
  %6 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %6, %5
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @vector_gautbl_eval_logs3(%struct.vector_gautbl_t* nocapture %gautbl, i32 %offset, i32 %count, float* nocapture %x, i32* nocapture %score) #0 {
entry:
  %call = tail call double @log_to_logs3_factor() #5
  %add = add nsw i32 %count, %offset
  %veclen1 = getelementptr inbounds %struct.vector_gautbl_t* %gautbl, i64 0, i32 1
  %0 = load i32* %veclen1, align 4, !tbaa !3
  %sub = add nsw i32 %add, -1
  %cmp181 = icmp sgt i32 %sub, %offset
  br i1 %cmp181, label %for.body.lr.ph, label %for.end66

for.body.lr.ph:                                   ; preds = %entry
  %mean = getelementptr inbounds %struct.vector_gautbl_t* %gautbl, i64 0, i32 2
  %1 = load float*** %mean, align 8, !tbaa !4
  %var = getelementptr inbounds %struct.vector_gautbl_t* %gautbl, i64 0, i32 3
  %2 = load float*** %var, align 8, !tbaa !4
  %lrd = getelementptr inbounds %struct.vector_gautbl_t* %gautbl, i64 0, i32 4
  %3 = load float** %lrd, align 8, !tbaa !4
  %cmp20175 = icmp sgt i32 %0, 0
  %distfloor = getelementptr inbounds %struct.vector_gautbl_t* %gautbl, i64 0, i32 5
  %4 = load double* %distfloor, align 8, !tbaa !5
  %5 = sext i32 %offset to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.end
  %indvars.iv188 = phi i64 [ %5, %for.body.lr.ph ], [ %indvars.iv.next189, %for.end ]
  %r.0182 = phi i32 [ %offset, %for.body.lr.ph ], [ %add65, %for.end ]
  %arrayidx = getelementptr inbounds float** %1, i64 %indvars.iv188
  %6 = load float** %arrayidx, align 8, !tbaa !4
  %7 = add nsw i64 %indvars.iv188, 1
  %arrayidx5 = getelementptr inbounds float** %1, i64 %7
  %8 = load float** %arrayidx5, align 8, !tbaa !4
  %arrayidx7 = getelementptr inbounds float** %2, i64 %indvars.iv188
  %9 = load float** %arrayidx7, align 8, !tbaa !4
  %arrayidx11 = getelementptr inbounds float** %2, i64 %7
  %10 = load float** %arrayidx11, align 8, !tbaa !4
  %arrayidx13 = getelementptr inbounds float* %3, i64 %indvars.iv188
  %11 = load float* %arrayidx13, align 4, !tbaa !0
  %conv = fpext float %11 to double
  %arrayidx17 = getelementptr inbounds float* %3, i64 %7
  %12 = load float* %arrayidx17, align 4, !tbaa !0
  %conv18 = fpext float %12 to double
  br i1 %cmp20175, label %for.body22, label %for.end

for.body22:                                       ; preds = %for.body, %for.body22
  %indvars.iv184 = phi i64 [ %indvars.iv.next185, %for.body22 ], [ 0, %for.body ]
  %dval2.0177 = phi double [ %sub45, %for.body22 ], [ %conv18, %for.body ]
  %dval1.0176 = phi double [ %sub33, %for.body22 ], [ %conv, %for.body ]
  %arrayidx24 = getelementptr inbounds float* %x, i64 %indvars.iv184
  %13 = load float* %arrayidx24, align 4, !tbaa !0
  %arrayidx26 = getelementptr inbounds float* %6, i64 %indvars.iv184
  %14 = load float* %arrayidx26, align 4, !tbaa !0
  %sub27 = fsub float %13, %14
  %conv28 = fpext float %sub27 to double
  %mul = fmul double %conv28, %conv28
  %arrayidx30 = getelementptr inbounds float* %9, i64 %indvars.iv184
  %15 = load float* %arrayidx30, align 4, !tbaa !0
  %conv31 = fpext float %15 to double
  %mul32 = fmul double %conv31, %mul
  %sub33 = fsub double %dval1.0176, %mul32
  %arrayidx37 = getelementptr inbounds float* %8, i64 %indvars.iv184
  %16 = load float* %arrayidx37, align 4, !tbaa !0
  %sub38 = fsub float %13, %16
  %conv39 = fpext float %sub38 to double
  %mul40 = fmul double %conv39, %conv39
  %arrayidx42 = getelementptr inbounds float* %10, i64 %indvars.iv184
  %17 = load float* %arrayidx42, align 4, !tbaa !0
  %conv43 = fpext float %17 to double
  %mul44 = fmul double %conv43, %mul40
  %sub45 = fsub double %dval2.0177, %mul44
  %indvars.iv.next185 = add i64 %indvars.iv184, 1
  %lftr.wideiv186 = trunc i64 %indvars.iv.next185 to i32
  %exitcond187 = icmp eq i32 %lftr.wideiv186, %0
  br i1 %exitcond187, label %for.end, label %for.body22

for.end:                                          ; preds = %for.body22, %for.body
  %dval2.0.lcssa = phi double [ %conv18, %for.body ], [ %sub45, %for.body22 ]
  %dval1.0.lcssa = phi double [ %conv, %for.body ], [ %sub33, %for.body22 ]
  %cmp46 = fcmp olt double %dval1.0.lcssa, %4
  %dval1.1 = select i1 %cmp46, double %4, double %dval1.0.lcssa
  %cmp50 = fcmp olt double %dval2.0.lcssa, %4
  %dval2.1 = select i1 %cmp50, double %4, double %dval2.0.lcssa
  %mul55 = fmul double %call, %dval1.1
  %conv56 = fptosi double %mul55 to i32
  %arrayidx58 = getelementptr inbounds i32* %score, i64 %indvars.iv188
  store i32 %conv56, i32* %arrayidx58, align 4, !tbaa !3
  %mul59 = fmul double %call, %dval2.1
  %conv60 = fptosi double %mul59 to i32
  %arrayidx63 = getelementptr inbounds i32* %score, i64 %7
  store i32 %conv60, i32* %arrayidx63, align 4, !tbaa !3
  %indvars.iv.next189 = add i64 %indvars.iv188, 2
  %add65 = add nsw i32 %r.0182, 2
  %18 = trunc i64 %indvars.iv.next189 to i32
  %cmp = icmp slt i32 %18, %sub
  br i1 %cmp, label %for.body, label %for.end66

for.end66:                                        ; preds = %for.end, %entry
  %r.0.lcssa = phi i32 [ %offset, %entry ], [ %add65, %for.end ]
  %cmp67 = icmp slt i32 %r.0.lcssa, %add
  br i1 %cmp67, label %if.then69, label %if.end109

if.then69:                                        ; preds = %for.end66
  %idxprom70 = sext i32 %r.0.lcssa to i64
  %mean71 = getelementptr inbounds %struct.vector_gautbl_t* %gautbl, i64 0, i32 2
  %19 = load float*** %mean71, align 8, !tbaa !4
  %arrayidx72 = getelementptr inbounds float** %19, i64 %idxprom70
  %20 = load float** %arrayidx72, align 8, !tbaa !4
  %var74 = getelementptr inbounds %struct.vector_gautbl_t* %gautbl, i64 0, i32 3
  %21 = load float*** %var74, align 8, !tbaa !4
  %arrayidx75 = getelementptr inbounds float** %21, i64 %idxprom70
  %22 = load float** %arrayidx75, align 8, !tbaa !4
  %lrd77 = getelementptr inbounds %struct.vector_gautbl_t* %gautbl, i64 0, i32 4
  %23 = load float** %lrd77, align 8, !tbaa !4
  %arrayidx78 = getelementptr inbounds float* %23, i64 %idxprom70
  %24 = load float* %arrayidx78, align 4, !tbaa !0
  %conv79 = fpext float %24 to double
  %cmp81172 = icmp sgt i32 %0, 0
  br i1 %cmp81172, label %for.body83, label %for.end98

for.body83:                                       ; preds = %if.then69, %for.body83
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body83 ], [ 0, %if.then69 ]
  %dval1.2173 = phi double [ %sub95, %for.body83 ], [ %conv79, %if.then69 ]
  %arrayidx85 = getelementptr inbounds float* %x, i64 %indvars.iv
  %25 = load float* %arrayidx85, align 4, !tbaa !0
  %arrayidx87 = getelementptr inbounds float* %20, i64 %indvars.iv
  %26 = load float* %arrayidx87, align 4, !tbaa !0
  %sub88 = fsub float %25, %26
  %conv89 = fpext float %sub88 to double
  %mul90 = fmul double %conv89, %conv89
  %arrayidx92 = getelementptr inbounds float* %22, i64 %indvars.iv
  %27 = load float* %arrayidx92, align 4, !tbaa !0
  %conv93 = fpext float %27 to double
  %mul94 = fmul double %conv93, %mul90
  %sub95 = fsub double %dval1.2173, %mul94
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %0
  br i1 %exitcond, label %for.end98, label %for.body83

for.end98:                                        ; preds = %for.body83, %if.then69
  %dval1.2.lcssa = phi double [ %conv79, %if.then69 ], [ %sub95, %for.body83 ]
  %distfloor99 = getelementptr inbounds %struct.vector_gautbl_t* %gautbl, i64 0, i32 5
  %28 = load double* %distfloor99, align 8, !tbaa !5
  %cmp100 = fcmp olt double %dval1.2.lcssa, %28
  %dval1.3 = select i1 %cmp100, double %28, double %dval1.2.lcssa
  %mul105 = fmul double %call, %dval1.3
  %conv106 = fptosi double %mul105 to i32
  %arrayidx108 = getelementptr inbounds i32* %score, i64 %idxprom70
  store i32 %conv106, i32* %arrayidx108, align 4, !tbaa !3
  br label %if.end109

if.end109:                                        ; preds = %for.end98, %for.end66
  ret void
}

; Function Attrs: optsize
declare double @log_to_logs3_factor() #4

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!0 = metadata !{metadata !"float", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"any pointer", metadata !1}
!5 = metadata !{metadata !"double", metadata !1}
