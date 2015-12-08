; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_math.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Gammln.cof = internal unnamed_addr constant [11 x double] [double 0x40E6EC39B523E5C6, double 0xC1030CE42A8DE3A0, double 0x41093547A7877F7A, double 0xC100F46BD1F08565, double 0x40E891BEDA52E5F4, double 0xC0C2C0CBD1715240, double 0x408B74AF4B6E0230, double 0xC03F8D31A9F566E2, double 0x3FD29CB3C2263426, double 0xBF2E680CC2D54303, double 0x3DE133D0CA52FB5A], align 16
@.str = private unnamed_addr constant [54 x i8] c"../../SPEC/benchspec/CPU2006/456.hmmer/src/sre_math.c\00", align 1
@.str1 = private unnamed_addr constant [33 x i8] c"IncompleteGamma(): a must be > 0\00", align 1
@.str2 = private unnamed_addr constant [34 x i8] c"IncompleteGamma(): x must be >= 0\00", align 1
@.str3 = private unnamed_addr constant [70 x i8] c"IncompleteGamma(): failed to converge using continued fraction approx\00", align 1
@.str4 = private unnamed_addr constant [58 x i8] c"IncompleteGamma(): failed to converge using series approx\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @Linefit(float* nocapture %x, float* nocapture %y, i32 %N, float* nocapture %ret_a, float* nocapture %ret_b, float* nocapture %ret_r) #0 {
entry:
  %cmp88 = icmp sgt i32 %N, 0
  br i1 %cmp88, label %for.body, label %for.end.thread

for.end.thread:                                   ; preds = %entry
  %conv98 = sitofp i32 %N to float
  %div99 = fdiv float 0.000000e+00, %conv98
  %div5100 = fdiv float 0.000000e+00, %conv98
  br label %for.end34

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %for.body ], [ 0, %entry ]
  %yavg.090 = phi float [ %add3, %for.body ], [ 0.000000e+00, %entry ]
  %xavg.089 = phi float [ %add, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds float* %x, i64 %indvars.iv94
  %0 = load float* %arrayidx, align 4, !tbaa !0
  %add = fadd float %xavg.089, %0
  %arrayidx2 = getelementptr inbounds float* %y, i64 %indvars.iv94
  %1 = load float* %arrayidx2, align 4, !tbaa !0
  %add3 = fadd float %yavg.090, %1
  %indvars.iv.next95 = add i64 %indvars.iv94, 1
  %lftr.wideiv96 = trunc i64 %indvars.iv.next95 to i32
  %exitcond97 = icmp eq i32 %lftr.wideiv96, %N
  br i1 %exitcond97, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  %conv = sitofp i32 %N to float
  %div = fdiv float %add, %conv
  %div5 = fdiv float %add3, %conv
  br i1 %cmp88, label %for.body9, label %for.end34

for.body9:                                        ; preds = %for.end, %for.body9
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body9 ], [ 0, %for.end ]
  %sxy.084 = phi float [ %add31, %for.body9 ], [ 0.000000e+00, %for.end ]
  %syy.083 = phi float [ %add23, %for.body9 ], [ 0.000000e+00, %for.end ]
  %sxx.082 = phi float [ %add15, %for.body9 ], [ 0.000000e+00, %for.end ]
  %arrayidx11 = getelementptr inbounds float* %x, i64 %indvars.iv
  %2 = load float* %arrayidx11, align 4, !tbaa !0
  %sub = fsub float %2, %div
  %mul = fmul float %sub, %sub
  %add15 = fadd float %sxx.082, %mul
  %arrayidx17 = getelementptr inbounds float* %y, i64 %indvars.iv
  %3 = load float* %arrayidx17, align 4, !tbaa !0
  %sub18 = fsub float %3, %div5
  %sub21 = fsub float %3, %div
  %mul22 = fmul float %sub18, %sub21
  %add23 = fadd float %syy.083, %mul22
  %mul30 = fmul float %sub, %sub18
  %add31 = fadd float %sxy.084, %mul30
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %N
  br i1 %exitcond, label %for.cond6.for.end34_crit_edge, label %for.body9

for.cond6.for.end34_crit_edge:                    ; preds = %for.body9
  %phitmp = fpext float %add23 to double
  br label %for.end34

for.end34:                                        ; preds = %for.end.thread, %for.cond6.for.end34_crit_edge, %for.end
  %div5102 = phi float [ %div5, %for.cond6.for.end34_crit_edge ], [ %div5, %for.end ], [ %div5100, %for.end.thread ]
  %div101 = phi float [ %div, %for.cond6.for.end34_crit_edge ], [ %div, %for.end ], [ %div99, %for.end.thread ]
  %sxy.0.lcssa = phi float [ %add31, %for.cond6.for.end34_crit_edge ], [ 0.000000e+00, %for.end ], [ 0.000000e+00, %for.end.thread ]
  %syy.0.lcssa = phi double [ %phitmp, %for.cond6.for.end34_crit_edge ], [ 0.000000e+00, %for.end ], [ 0.000000e+00, %for.end.thread ]
  %sxx.0.lcssa = phi float [ %add15, %for.cond6.for.end34_crit_edge ], [ 0.000000e+00, %for.end ], [ 0.000000e+00, %for.end.thread ]
  %div35 = fdiv float %sxy.0.lcssa, %sxx.0.lcssa
  store float %div35, float* %ret_b, align 4, !tbaa !0
  %mul36 = fmul float %div101, %div35
  %sub37 = fsub float %div5102, %mul36
  store float %sub37, float* %ret_a, align 4, !tbaa !0
  %conv38 = fpext float %sxy.0.lcssa to double
  %conv39 = fpext float %sxx.0.lcssa to double
  %call = tail call double @sqrt(double %conv39) #4
  %call41 = tail call double @sqrt(double %syy.0.lcssa) #4
  %mul42 = fmul double %call, %call41
  %div43 = fdiv double %conv38, %mul42
  %conv44 = fptrunc double %div43 to float
  store float %conv44, float* %ret_r, align 4, !tbaa !0
  ret i32 1
}

; Function Attrs: nounwind optsize
declare double @sqrt(double) #1

; Function Attrs: nounwind optsize uwtable
define void @WeightedLinefit(float* nocapture %x, float* nocapture %y, float* nocapture %var, i32 %N, float* nocapture %ret_m, float* nocapture %ret_b) #0 {
entry:
  %cmp79 = icmp sgt i32 %N, 0
  br i1 %cmp79, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %s.084 = phi double [ %add, %for.body ], [ 0.000000e+00, %entry ]
  %sx.083 = phi double [ %add7, %for.body ], [ 0.000000e+00, %entry ]
  %sxy.082 = phi double [ %add33, %for.body ], [ 0.000000e+00, %entry ]
  %sxx.081 = phi double [ %add23, %for.body ], [ 0.000000e+00, %entry ]
  %sy.080 = phi double [ %add14, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds float* %var, i64 %indvars.iv
  %0 = load float* %arrayidx, align 4, !tbaa !0
  %conv = fpext float %0 to double
  %div = fdiv double 1.000000e+00, %conv
  %add = fadd double %s.084, %div
  %arrayidx2 = getelementptr inbounds float* %x, i64 %indvars.iv
  %1 = load float* %arrayidx2, align 4, !tbaa !0
  %div5 = fdiv float %1, %0
  %conv6 = fpext float %div5 to double
  %add7 = fadd double %sx.083, %conv6
  %arrayidx9 = getelementptr inbounds float* %y, i64 %indvars.iv
  %2 = load float* %arrayidx9, align 4, !tbaa !0
  %div12 = fdiv float %2, %0
  %conv13 = fpext float %div12 to double
  %add14 = fadd double %sy.080, %conv13
  %mul = fmul float %1, %1
  %div21 = fdiv float %mul, %0
  %conv22 = fpext float %div21 to double
  %add23 = fadd double %sxx.081, %conv22
  %mul28 = fmul float %1, %2
  %div31 = fdiv float %mul28, %0
  %conv32 = fpext float %div31 to double
  %add33 = fadd double %sxy.082, %conv32
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %N
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  %s.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add, %for.body ]
  %sx.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add7, %for.body ]
  %sxy.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add33, %for.body ]
  %sxx.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add23, %for.body ]
  %sy.0.lcssa = phi double [ 0.000000e+00, %entry ], [ %add14, %for.body ]
  %mul34 = fmul double %sxx.0.lcssa, %s.0.lcssa
  %mul35 = fmul double %sx.0.lcssa, %sx.0.lcssa
  %sub = fsub double %mul34, %mul35
  %mul36 = fmul double %sy.0.lcssa, %sxx.0.lcssa
  %mul37 = fmul double %sxy.0.lcssa, %sx.0.lcssa
  %sub38 = fsub double %mul36, %mul37
  %div39 = fdiv double %sub38, %sub
  %mul40 = fmul double %sxy.0.lcssa, %s.0.lcssa
  %mul41 = fmul double %sy.0.lcssa, %sx.0.lcssa
  %sub42 = fsub double %mul40, %mul41
  %div43 = fdiv double %sub42, %sub
  %conv44 = fptrunc double %div43 to float
  store float %conv44, float* %ret_m, align 4, !tbaa !0
  %conv45 = fptrunc double %div39 to float
  store float %conv45, float* %ret_b, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define double @Gammln(double %x) #0 {
entry:
  %cmp = fcmp ugt double %x, 0.000000e+00
  br i1 %cmp, label %if.end, label %return

if.end:                                           ; preds = %entry
  %sub = fadd double %x, -1.000000e+00
  %add = fadd double %sub, 1.100000e+01
  br label %for.body

for.body:                                         ; preds = %if.end, %for.body
  %indvars.iv = phi i64 [ 10, %if.end ], [ %indvars.iv.next, %for.body ]
  %value.023 = phi double [ 1.000000e+00, %if.end ], [ %add3, %for.body ]
  %tmp.022 = phi double [ %add, %if.end ], [ %sub4, %for.body ]
  %arrayidx = getelementptr inbounds [11 x double]* @Gammln.cof, i64 0, i64 %indvars.iv
  %0 = load double* %arrayidx, align 8, !tbaa !3
  %div = fdiv double %0, %tmp.022
  %add3 = fadd double %value.023, %div
  %sub4 = fadd double %tmp.022, -1.000000e+00
  %indvars.iv.next = add i64 %indvars.iv, -1
  %1 = trunc i64 %indvars.iv to i32
  %cmp2 = icmp sgt i32 %1, 0
  br i1 %cmp2, label %for.body, label %for.end

for.end:                                          ; preds = %for.body
  %call = tail call double @log(double %add3) #4
  %add5 = fadd double %add, 5.000000e-01
  %add6 = fadd double %sub, 5.000000e-01
  %call7 = tail call double @log(double %add5) #4
  %mul = fmul double %add6, %call7
  %add8 = fadd double %mul, 0x3FED67F1C8489D6C
  %sub9 = fsub double %add8, %add5
  %add10 = fadd double %call, %sub9
  br label %return

return:                                           ; preds = %entry, %for.end
  %retval.0 = phi double [ %add10, %for.end ], [ 9.999990e+05, %entry ]
  ret double %retval.0
}

; Function Attrs: nounwind optsize
declare double @log(double) #1

; Function Attrs: nounwind optsize uwtable
define float** @FMX2Alloc(i32 %rows, i32 %cols) #0 {
entry:
  %conv = sext i32 %rows to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([54 x i8]* @.str, i64 0, i64 0), i32 172, i64 %mul) #4
  %0 = bitcast i8* %call to float**
  %mul2 = shl nsw i64 %conv, 2
  %conv3 = sext i32 %cols to i64
  %mul4 = mul i64 %mul2, %conv3
  %call5 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([54 x i8]* @.str, i64 0, i64 0), i32 173, i64 %mul4) #4
  %1 = bitcast i8* %call5 to float*
  store float* %1, float** %0, align 8, !tbaa !4
  %cmp18 = icmp sgt i32 %rows, 1
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body.for.body_crit_edge
  %2 = phi float* [ %.pre, %for.body.for.body_crit_edge ], [ %1, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body.for.body_crit_edge ], [ 1, %entry ]
  %3 = trunc i64 %indvars.iv to i32
  %mul8 = mul nsw i32 %3, %cols
  %idx.ext = sext i32 %mul8 to i64
  %add.ptr = getelementptr inbounds float* %2, i64 %idx.ext
  %arrayidx9 = getelementptr inbounds float** %0, i64 %indvars.iv
  store float* %add.ptr, float** %arrayidx9, align 8, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %rows
  br i1 %exitcond, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  %.pre = load float** %0, align 8, !tbaa !4
  br label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret float** %0
}

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #2

; Function Attrs: nounwind optsize uwtable
define void @FMX2Free(float** nocapture %mx) #0 {
entry:
  %0 = load float** %mx, align 8, !tbaa !4
  %1 = bitcast float* %0 to i8*
  tail call void @free(i8* %1) #4
  %2 = bitcast float** %mx to i8*
  tail call void @free(i8* %2) #4
  ret void
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define double** @DMX2Alloc(i32 %rows, i32 %cols) #0 {
entry:
  %conv = sext i32 %rows to i64
  %mul = shl nsw i64 %conv, 3
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([54 x i8]* @.str, i64 0, i64 0), i32 190, i64 %mul) #4
  %0 = bitcast i8* %call to double**
  %conv3 = sext i32 %cols to i64
  %mul4 = mul i64 %mul, %conv3
  %call5 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([54 x i8]* @.str, i64 0, i64 0), i32 191, i64 %mul4) #4
  %1 = bitcast i8* %call5 to double*
  store double* %1, double** %0, align 8, !tbaa !4
  %cmp18 = icmp sgt i32 %rows, 1
  br i1 %cmp18, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body.for.body_crit_edge
  %2 = phi double* [ %.pre, %for.body.for.body_crit_edge ], [ %1, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body.for.body_crit_edge ], [ 1, %entry ]
  %3 = trunc i64 %indvars.iv to i32
  %mul8 = mul nsw i32 %3, %cols
  %idx.ext = sext i32 %mul8 to i64
  %add.ptr = getelementptr inbounds double* %2, i64 %idx.ext
  %arrayidx9 = getelementptr inbounds double** %0, i64 %indvars.iv
  store double* %add.ptr, double** %arrayidx9, align 8, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %rows
  br i1 %exitcond, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  %.pre = load double** %0, align 8, !tbaa !4
  br label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret double** %0
}

; Function Attrs: nounwind optsize uwtable
define void @DMX2Free(double** nocapture %mx) #0 {
entry:
  %0 = load double** %mx, align 8, !tbaa !4
  %1 = bitcast double* %0 to i8*
  tail call void @free(i8* %1) #4
  %2 = bitcast double** %mx to i8*
  tail call void @free(i8* %2) #4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @FMX2Multiply(float** nocapture %A, float** nocapture %B, float** nocapture %C, i32 %m, i32 %p, i32 %n) #0 {
entry:
  %cmp43 = icmp sgt i32 %m, 0
  br i1 %cmp43, label %for.cond1.preheader.lr.ph, label %for.end26

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %cmp241 = icmp sgt i32 %n, 0
  %cmp739 = icmp sgt i32 %p, 0
  %idxprom9 = sext i32 %p to i64
  %arrayidx15 = getelementptr inbounds float** %B, i64 %idxprom9
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc24, %for.cond1.preheader.lr.ph
  %indvars.iv46 = phi i64 [ 0, %for.cond1.preheader.lr.ph ], [ %indvars.iv.next47, %for.inc24 ]
  br i1 %cmp241, label %for.body3.lr.ph, label %for.inc24

for.body3.lr.ph:                                  ; preds = %for.cond1.preheader
  %arrayidx = getelementptr inbounds float** %C, i64 %indvars.iv46
  %0 = load float** %arrayidx, align 8, !tbaa !4
  %arrayidx11 = getelementptr inbounds float** %A, i64 %indvars.iv46
  br label %for.body3

for.body3:                                        ; preds = %for.inc21, %for.body3.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body3.lr.ph ], [ %indvars.iv.next, %for.inc21 ]
  %arrayidx5 = getelementptr inbounds float* %0, i64 %indvars.iv
  store float 0.000000e+00, float* %arrayidx5, align 4, !tbaa !0
  br i1 %cmp739, label %for.body8.lr.ph, label %for.inc21

for.body8.lr.ph:                                  ; preds = %for.body3
  %1 = load float** %arrayidx11, align 8, !tbaa !4
  %arrayidx12 = getelementptr inbounds float* %1, i64 %idxprom9
  %2 = load float** %arrayidx15, align 8, !tbaa !4
  %arrayidx16 = getelementptr inbounds float* %2, i64 %indvars.iv
  br label %for.body8

for.body8:                                        ; preds = %for.body8, %for.body8.lr.ph
  %3 = phi float [ 0.000000e+00, %for.body8.lr.ph ], [ %add, %for.body8 ]
  %k.040 = phi i32 [ 0, %for.body8.lr.ph ], [ %inc, %for.body8 ]
  %4 = load float* %arrayidx12, align 4, !tbaa !0
  %5 = load float* %arrayidx16, align 4, !tbaa !0
  %mul = fmul float %4, %5
  %add = fadd float %mul, %3
  store float %add, float* %arrayidx5, align 4, !tbaa !0
  %inc = add nsw i32 %k.040, 1
  %exitcond = icmp eq i32 %inc, %p
  br i1 %exitcond, label %for.inc21, label %for.body8

for.inc21:                                        ; preds = %for.body8, %for.body3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond45 = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond45, label %for.inc24, label %for.body3

for.inc24:                                        ; preds = %for.inc21, %for.cond1.preheader
  %indvars.iv.next47 = add i64 %indvars.iv46, 1
  %lftr.wideiv48 = trunc i64 %indvars.iv.next47 to i32
  %exitcond49 = icmp eq i32 %lftr.wideiv48, %m
  br i1 %exitcond49, label %for.end26, label %for.cond1.preheader

for.end26:                                        ; preds = %for.inc24, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define double @IncompleteGamma(double %a, double %x) #0 {
entry:
  %cmp = fcmp ugt double %a, 0.000000e+00
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([33 x i8]* @.str1, i64 0, i64 0)) #4
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %cmp1 = fcmp olt double %x, 0.000000e+00
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([34 x i8]* @.str2, i64 0, i64 0)) #4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end
  %add = fadd double %a, 1.000000e+00
  %cmp4 = fcmp olt double %add, %x
  br i1 %cmp4, label %for.body, label %if.else

for.cond:                                         ; preds = %if.end25
  %cmp6 = icmp slt i32 %inc, 100
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %if.end3, %for.cond
  %de1.0116 = phi double [ %de1.1, %for.cond ], [ %x, %if.end3 ]
  %de0.0115 = phi double [ %de0.1, %for.cond ], [ 1.000000e+00, %if.end3 ]
  %nu0.0114 = phi double [ %nu0.1, %for.cond ], [ 0.000000e+00, %if.end3 ]
  %oldp.0113 = phi double [ %nu1.1, %for.cond ], [ 1.000000e+00, %if.end3 ]
  %iter.0112 = phi i32 [ %inc, %for.cond ], [ 1, %if.end3 ]
  %conv = sitofp i32 %iter.0112 to double
  %sub = fsub double %conv, %a
  %mul = fmul double %sub, %nu0.0114
  %add7 = fadd double %oldp.0113, %mul
  %mul10 = fmul double %sub, %de0.0115
  %add11 = fadd double %de1.0116, %mul10
  %mul12 = fmul double %add7, %x
  %mul14 = fmul double %conv, %oldp.0113
  %add15 = fadd double %mul14, %mul12
  %mul16 = fmul double %add11, %x
  %mul18 = fmul double %conv, %de1.0116
  %add19 = fadd double %mul18, %mul16
  %cmp20 = fcmp une double %add19, 0.000000e+00
  br i1 %cmp20, label %if.then22, label %if.end25

if.then22:                                        ; preds = %for.body
  %div = fdiv double %add7, %add19
  %div23 = fdiv double %add11, %add19
  %div24 = fdiv double %add15, %add19
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %for.body
  %nu0.1 = phi double [ %div, %if.then22 ], [ %add7, %for.body ]
  %nu1.1 = phi double [ %div24, %if.then22 ], [ %add15, %for.body ]
  %de0.1 = phi double [ %div23, %if.then22 ], [ %add11, %for.body ]
  %de1.1 = phi double [ 1.000000e+00, %if.then22 ], [ %add19, %for.body ]
  %sub26 = fsub double %nu1.1, %oldp.0113
  %div27 = fdiv double %sub26, %nu1.1
  %call = tail call double @fabs(double %div27) #5
  %cmp28 = fcmp olt double %call, 1.000000e-07
  %inc = add nsw i32 %iter.0112, 1
  br i1 %cmp28, label %if.then30, label %for.cond

if.then30:                                        ; preds = %if.end25
  %call31 = tail call double @log(double %x) #4
  %mul32 = fmul double %call31, %a
  %sub33 = fsub double %mul32, %x
  %call34 = tail call double @Gammln(double %a) #6
  %sub35 = fsub double %sub33, %call34
  %call36 = tail call double @exp(double %sub35) #4
  %mul37 = fmul double %nu1.1, %call36
  br label %return

for.end:                                          ; preds = %for.cond
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([70 x i8]* @.str3, i64 0, i64 0)) #4
  br label %return

if.else:                                          ; preds = %if.end3
  %div39 = fdiv double 1.000000e+00, %a
  br label %for.body43

for.cond40:                                       ; preds = %for.body43
  %cmp41 = icmp slt i32 %inc64, 10000
  br i1 %cmp41, label %for.body43, label %for.end65

for.body43:                                       ; preds = %if.else, %for.cond40
  %val.0119 = phi double [ %div39, %if.else ], [ %mul47, %for.cond40 ]
  %p.0118 = phi double [ %div39, %if.else ], [ %add48, %for.cond40 ]
  %iter.1117 = phi i32 [ 1, %if.else ], [ %inc64, %for.cond40 ]
  %conv44 = sitofp i32 %iter.1117 to double
  %add45 = fadd double %conv44, %a
  %div46 = fdiv double %x, %add45
  %mul47 = fmul double %val.0119, %div46
  %add48 = fadd double %p.0118, %mul47
  %div49 = fdiv double %mul47, %add48
  %call50 = tail call double @fabs(double %div49) #5
  %cmp51 = fcmp olt double %call50, 1.000000e-07
  %inc64 = add nsw i32 %iter.1117, 1
  br i1 %cmp51, label %if.then53, label %for.cond40

if.then53:                                        ; preds = %for.body43
  %call54 = tail call double @log(double %x) #4
  %mul55 = fmul double %call54, %a
  %sub56 = fsub double %mul55, %x
  %call57 = tail call double @Gammln(double %a) #6
  %sub58 = fsub double %sub56, %call57
  %call59 = tail call double @exp(double %sub58) #4
  %mul60 = fmul double %add48, %call59
  %sub61 = fsub double 1.000000e+00, %mul60
  br label %return

for.end65:                                        ; preds = %for.cond40
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([58 x i8]* @.str4, i64 0, i64 0)) #4
  br label %return

return:                                           ; preds = %for.end, %for.end65, %if.then53, %if.then30
  %retval.0 = phi double [ %mul37, %if.then30 ], [ %sub61, %if.then53 ], [ 0.000000e+00, %for.end65 ], [ 0.000000e+00, %for.end ]
  ret double %retval.0
}

; Function Attrs: optsize
declare void @Die(i8*, ...) #2

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #3

; Function Attrs: nounwind optsize
declare double @exp(double) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { nounwind optsize readnone }
attributes #6 = { optsize }

!0 = metadata !{metadata !"float", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"double", metadata !1}
!4 = metadata !{metadata !"any pointer", metadata !1}
