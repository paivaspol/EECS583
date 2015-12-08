; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/mathsupport.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.plan7_s = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32*, i32, i32*, i32*, i32*, float, float, float, float, float, float, i32, float**, float**, float**, float, [4 x [2 x float]], float*, float*, [20 x float], float, i32**, i32**, i32**, [4 x [2 x i32]], i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32, i32, float, float, i32 }

@ILogsum.firsttime = internal unnamed_addr global i1 false
@ilogsum_lookup = internal unnamed_addr global [20000 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [46 x i8] c"Invalid argument alpha < 0.0 to SampleGamma()\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @Prob2Score(float %p, float %null) #0 {
entry:
  %cmp = fcmp oeq float %p, 0.000000e+00
  br i1 %cmp, label %return, label %if.else

if.else:                                          ; preds = %entry
  %div = fdiv float %p, %null
  %cmp2 = fcmp ogt float %div, 0.000000e+00
  br i1 %cmp2, label %cond.true, label %cond.end

cond.true:                                        ; preds = %if.else
  %conv5 = fpext float %div to double
  %call = tail call double @log(double %conv5) #5
  %mul = fmul double %call, 0x3FF7154764EE6C2F
  %phitmp = fmul double %mul, 1.000000e+03
  %phitmp12 = fadd double %phitmp, 5.000000e-01
  br label %cond.end

cond.end:                                         ; preds = %if.else, %cond.true
  %cond = phi double [ %phitmp12, %cond.true ], [ 0xC1631252F0000000, %if.else ]
  %call7 = tail call double @floor(double %cond) #6
  %conv8 = fptosi double %call7 to i32
  br label %return

return:                                           ; preds = %entry, %cond.end
  %retval.0 = phi i32 [ %conv8, %cond.end ], [ -987654321, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize readnone
declare double @floor(double) #1

; Function Attrs: nounwind optsize
declare double @log(double) #2

; Function Attrs: nounwind optsize uwtable
define float @Score2Prob(i32 %sc, float %null) #0 {
entry:
  %cmp = icmp eq i32 %sc, -987654321
  br i1 %cmp, label %return, label %if.else

if.else:                                          ; preds = %entry
  %conv = fpext float %null to double
  %conv1 = sitofp i32 %sc to float
  %conv2 = fpext float %conv1 to double
  %div = fdiv double %conv2, 1.000000e+03
  %mul = fmul double %div, 0x3FE62E42FEAD449C
  %call = tail call double @exp(double %mul) #5
  %mul3 = fmul double %conv, %call
  %conv4 = fptrunc double %mul3 to float
  br label %return

return:                                           ; preds = %entry, %if.else
  %retval.0 = phi float [ %conv4, %if.else ], [ 0.000000e+00, %entry ]
  ret float %retval.0
}

; Function Attrs: nounwind optsize
declare double @exp(double) #2

; Function Attrs: nounwind optsize readnone uwtable
define float @Scorify(i32 %sc) #3 {
entry:
  %conv = sitofp i32 %sc to float
  %conv2 = fdiv float %conv, 1.000000e+03
  ret float %conv2
}

; Function Attrs: nounwind optsize uwtable
define double @PValue(%struct.plan7_s* %hmm, float %sc) #0 {
entry:
  %conv = fpext float %sc to double
  %cmp = fcmp ult double %conv, 0x408FFFFFFFAB5002
  br i1 %cmp, label %if.else, label %if.end13

if.else:                                          ; preds = %entry
  %cmp6 = fcmp ugt double %conv, 0xC08FFFFFFFAB5002
  br i1 %cmp6, label %if.else9, label %if.end13

if.else9:                                         ; preds = %if.else
  %mul11 = fmul double %conv, 0x3FE62E42FEAD449C
  %call12 = tail call double @exp(double %mul11) #5
  %add = fadd double %call12, 1.000000e+00
  %div = fdiv double 1.000000e+00, %add
  br label %if.end13

if.end13:                                         ; preds = %if.else, %entry, %if.else9
  %pval.0 = phi double [ %div, %if.else9 ], [ 0.000000e+00, %entry ], [ 1.000000e+00, %if.else ]
  %cmp14 = icmp eq %struct.plan7_s* %hmm, null
  br i1 %cmp14, label %if.end22, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end13
  %flags = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 47
  %0 = load i32* %flags, align 4, !tbaa !0
  %and = and i32 %0, 128
  %tobool = icmp eq i32 %and, 0
  br i1 %tobool, label %if.end22, label %if.then16

if.then16:                                        ; preds = %land.lhs.true
  %mu = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 45
  %1 = load float* %mu, align 4, !tbaa !3
  %lambda = getelementptr inbounds %struct.plan7_s* %hmm, i64 0, i32 46
  %2 = load float* %lambda, align 4, !tbaa !3
  %call17 = tail call double @ExtremeValueP(float %sc, float %1, float %2) #5
  %cmp18 = fcmp olt double %call17, %pval.0
  br i1 %cmp18, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.then16
  br label %if.end22

if.end22:                                         ; preds = %land.lhs.true, %if.end13, %if.then16, %if.then20
  %pval.1 = phi double [ %call17, %if.then20 ], [ %pval.0, %if.then16 ], [ %pval.0, %land.lhs.true ], [ %pval.0, %if.end13 ]
  ret double %pval.1
}

; Function Attrs: optsize
declare double @ExtremeValueP(float, float, float) #4

; Function Attrs: nounwind optsize uwtable
define float @LogSum(float %p1, float %p2) #0 {
entry:
  %cmp = fcmp ogt float %p1, %p2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %sub = fsub float %p1, %p2
  %cmp1 = fcmp ogt float %sub, 5.000000e+01
  %conv3 = fpext float %p1 to double
  br i1 %cmp1, label %return, label %cond.false

cond.false:                                       ; preds = %if.then
  %sub5 = fsub float %p2, %p1
  %conv6 = fpext float %sub5 to double
  %call = tail call double @exp(double %conv6) #5
  %add = fadd double %call, 1.000000e+00
  %call7 = tail call double @log(double %add) #5
  %add8 = fadd double %conv3, %call7
  br label %return

if.else:                                          ; preds = %entry
  %sub10 = fsub float %p2, %p1
  %cmp12 = fcmp ogt float %sub10, 5.000000e+01
  %conv15 = fpext float %p2 to double
  br i1 %cmp12, label %return, label %cond.false16

cond.false16:                                     ; preds = %if.else
  %sub18 = fsub float %p1, %p2
  %conv19 = fpext float %sub18 to double
  %call20 = tail call double @exp(double %conv19) #5
  %add21 = fadd double %call20, 1.000000e+00
  %call22 = tail call double @log(double %add21) #5
  %add23 = fadd double %conv15, %call22
  br label %return

return:                                           ; preds = %cond.false16, %if.else, %cond.false, %if.then
  %retval.0.in = phi double [ %add8, %cond.false ], [ %conv3, %if.then ], [ %add23, %cond.false16 ], [ %conv15, %if.else ]
  %retval.0 = fptrunc double %retval.0.in to float
  ret float %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @ILogsum(i32 %p1, i32 %p2) #0 {
entry:
  %.b = load i1* @ILogsum.firsttime, align 1
  br i1 %.b, label %if.end, label %for.body.i

for.body.i:                                       ; preds = %entry, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ 0, %entry ]
  %0 = sub nsw i64 0, %indvars.iv.i
  %1 = trunc i64 %0 to i32
  %conv.i = sitofp i32 %1 to float
  %conv1.i = fpext float %conv.i to double
  %mul.i = fmul double %conv1.i, 0x3FE62E42FEAD449C
  %div.i = fdiv double %mul.i, 1.000000e+03
  %call.i = tail call double @exp(double %div.i) #5
  %add.i = fadd double %call.i, 1.000000e+00
  %call2.i = tail call double @log(double %add.i) #5
  %mul3.i = fmul double %call2.i, 0x40968AC7B890D5A6
  %conv4.i = fptosi double %mul3.i to i32
  %arrayidx.i = getelementptr inbounds [20000 x i32]* @ilogsum_lookup, i64 0, i64 %indvars.iv.i
  store i32 %conv4.i, i32* %arrayidx.i, align 4, !tbaa !0
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 20000
  br i1 %exitcond, label %init_ilogsum.exit, label %for.body.i

init_ilogsum.exit:                                ; preds = %for.body.i
  store i1 true, i1* @ILogsum.firsttime, align 1
  br label %if.end

if.end:                                           ; preds = %entry, %init_ilogsum.exit
  %sub = sub nsw i32 %p1, %p2
  %cmp = icmp sgt i32 %sub, 19999
  br i1 %cmp, label %return, label %if.else

if.else:                                          ; preds = %if.end
  %cmp2 = icmp slt i32 %sub, -19999
  br i1 %cmp2, label %return, label %if.else4

if.else4:                                         ; preds = %if.else
  %cmp5 = icmp sgt i32 %sub, 0
  br i1 %cmp5, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.else4
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [20000 x i32]* @ilogsum_lookup, i64 0, i64 %idxprom
  %2 = load i32* %arrayidx, align 4, !tbaa !0
  %add = add nsw i32 %2, %p1
  br label %return

if.else7:                                         ; preds = %if.else4
  %sub8 = sub nsw i32 0, %sub
  %idxprom9 = sext i32 %sub8 to i64
  %arrayidx10 = getelementptr inbounds [20000 x i32]* @ilogsum_lookup, i64 0, i64 %idxprom9
  %3 = load i32* %arrayidx10, align 4, !tbaa !0
  %add11 = add nsw i32 %3, %p2
  br label %return

return:                                           ; preds = %if.else, %if.end, %if.else7, %if.then6
  %retval.0 = phi i32 [ %add, %if.then6 ], [ %add11, %if.else7 ], [ %p1, %if.end ], [ %p2, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define void @LogNorm(float* nocapture %vec, i32 %n) #0 {
entry:
  %cmp80 = icmp sgt i32 %n, 0
  br i1 %cmp80, label %for.body, label %for.end49

for.cond4.preheader:                              ; preds = %for.body
  br i1 %cmp80, label %for.body6.lr.ph, label %for.end49

for.body6.lr.ph:                                  ; preds = %for.cond4.preheader
  %conv9 = fpext float %max.1 to double
  %sub = fadd double %conv9, -5.000000e+01
  br label %for.body6

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %for.body ], [ 0, %entry ]
  %max.082 = phi float [ %max.1, %for.body ], [ 0xC6293E5940000000, %entry ]
  %arrayidx = getelementptr inbounds float* %vec, i64 %indvars.iv88
  %0 = load float* %arrayidx, align 4, !tbaa !3
  %cmp1 = fcmp ogt float %0, %max.082
  %max.1 = select i1 %cmp1, float %0, float %max.082
  %indvars.iv.next89 = add i64 %indvars.iv88, 1
  %lftr.wideiv90 = trunc i64 %indvars.iv.next89 to i32
  %exitcond91 = icmp eq i32 %lftr.wideiv90, %n
  br i1 %exitcond91, label %for.cond4.preheader, label %for.body

for.cond23.preheader:                             ; preds = %for.inc20
  br i1 %cmp80, label %for.body26.lr.ph, label %for.end49

for.body26.lr.ph:                                 ; preds = %for.cond23.preheader
  %conv30 = fpext float %max.1 to double
  %sub31 = fadd double %conv30, -5.000000e+01
  %conv40 = fpext float %denom.1 to double
  br label %for.body26

for.body6:                                        ; preds = %for.inc20, %for.body6.lr.ph
  %indvars.iv84 = phi i64 [ 0, %for.body6.lr.ph ], [ %indvars.iv.next85, %for.inc20 ]
  %denom.079 = phi float [ 0.000000e+00, %for.body6.lr.ph ], [ %denom.1, %for.inc20 ]
  %arrayidx8 = getelementptr inbounds float* %vec, i64 %indvars.iv84
  %1 = load float* %arrayidx8, align 4, !tbaa !3
  %conv = fpext float %1 to double
  %cmp10 = fcmp ogt double %conv, %sub
  br i1 %cmp10, label %if.then12, label %for.inc20

if.then12:                                        ; preds = %for.body6
  %sub15 = fsub float %1, %max.1
  %conv16 = fpext float %sub15 to double
  %call = tail call double @exp(double %conv16) #5
  %conv17 = fpext float %denom.079 to double
  %add = fadd double %conv17, %call
  %conv18 = fptrunc double %add to float
  br label %for.inc20

for.inc20:                                        ; preds = %for.body6, %if.then12
  %denom.1 = phi float [ %conv18, %if.then12 ], [ %denom.079, %for.body6 ]
  %indvars.iv.next85 = add i64 %indvars.iv84, 1
  %lftr.wideiv86 = trunc i64 %indvars.iv.next85 to i32
  %exitcond87 = icmp eq i32 %lftr.wideiv86, %n
  br i1 %exitcond87, label %for.cond23.preheader, label %for.body6

for.body26:                                       ; preds = %for.inc47, %for.body26.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body26.lr.ph ], [ %indvars.iv.next, %for.inc47 ]
  %arrayidx28 = getelementptr inbounds float* %vec, i64 %indvars.iv
  %2 = load float* %arrayidx28, align 4, !tbaa !3
  %conv29 = fpext float %2 to double
  %cmp32 = fcmp ogt double %conv29, %sub31
  br i1 %cmp32, label %if.then34, label %for.inc47

if.then34:                                        ; preds = %for.body26
  %sub37 = fsub float %2, %max.1
  %conv38 = fpext float %sub37 to double
  %call39 = tail call double @exp(double %conv38) #5
  %div = fdiv double %call39, %conv40
  %conv41 = fptrunc double %div to float
  br label %for.inc47

for.inc47:                                        ; preds = %for.body26, %if.then34
  %storemerge = phi float [ %conv41, %if.then34 ], [ 0.000000e+00, %for.body26 ]
  store float %storemerge, float* %arrayidx28, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end49, label %for.body26

for.end49:                                        ; preds = %entry, %for.cond4.preheader, %for.inc47, %for.cond23.preheader
  ret void
}

; Function Attrs: nounwind optsize uwtable
define float @Logp_cvec(float* nocapture %cvec, i32 %n, float* nocapture %alpha) #0 {
entry:
  %cmp72 = icmp sgt i32 %n, 0
  br i1 %cmp72, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %sum3.076 = phi float [ %add9, %for.body ], [ 0.000000e+00, %entry ]
  %sum2.075 = phi float [ %add6, %for.body ], [ 0.000000e+00, %entry ]
  %sum1.074 = phi float [ %add3, %for.body ], [ 0.000000e+00, %entry ]
  %lnp.073 = phi double [ %phitmp, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds float* %cvec, i64 %indvars.iv
  %0 = load float* %arrayidx, align 4, !tbaa !3
  %arrayidx2 = getelementptr inbounds float* %alpha, i64 %indvars.iv
  %1 = load float* %arrayidx2, align 4, !tbaa !3
  %add = fadd float %0, %1
  %add3 = fadd float %sum1.074, %add
  %add6 = fadd float %sum2.075, %1
  %add9 = fadd float %sum3.076, %0
  %conv = fpext float %add to double
  %call = tail call double @Gammln(double %conv) #5
  %add16 = fadd double %lnp.073, %call
  %conv17 = fptrunc double %add16 to float
  %2 = load float* %arrayidx, align 4, !tbaa !3
  %conv20 = fpext float %2 to double
  %add21 = fadd double %conv20, 1.000000e+00
  %call22 = tail call double @Gammln(double %add21) #5
  %conv23 = fpext float %conv17 to double
  %sub = fsub double %conv23, %call22
  %conv24 = fptrunc double %sub to float
  %3 = load float* %arrayidx2, align 4, !tbaa !3
  %conv27 = fpext float %3 to double
  %call28 = tail call double @Gammln(double %conv27) #5
  %conv29 = fpext float %conv24 to double
  %sub30 = fsub double %conv29, %call28
  %conv31 = fptrunc double %sub30 to float
  %indvars.iv.next = add i64 %indvars.iv, 1
  %phitmp = fpext float %conv31 to double
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.body
  %phitmp81 = fpext float %add3 to double
  %phitmp82 = fpext float %add6 to double
  %phitmp83 = fpext float %add9 to double
  %phitmp84 = fadd double %phitmp83, 1.000000e+00
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %entry
  %sum3.0.lcssa = phi double [ %phitmp84, %for.cond.for.end_crit_edge ], [ 1.000000e+00, %entry ]
  %sum2.0.lcssa = phi double [ %phitmp82, %for.cond.for.end_crit_edge ], [ 0.000000e+00, %entry ]
  %sum1.0.lcssa = phi double [ %phitmp81, %for.cond.for.end_crit_edge ], [ 0.000000e+00, %entry ]
  %lnp.0.lcssa = phi double [ %phitmp, %for.cond.for.end_crit_edge ], [ 0.000000e+00, %entry ]
  %call33 = tail call double @Gammln(double %sum1.0.lcssa) #5
  %sub35 = fsub double %lnp.0.lcssa, %call33
  %conv36 = fptrunc double %sub35 to float
  %call38 = tail call double @Gammln(double %sum2.0.lcssa) #5
  %conv39 = fpext float %conv36 to double
  %add40 = fadd double %call38, %conv39
  %conv41 = fptrunc double %add40 to float
  %call44 = tail call double @Gammln(double %sum3.0.lcssa) #5
  %conv45 = fpext float %conv41 to double
  %add46 = fadd double %call44, %conv45
  %conv47 = fptrunc double %add46 to float
  ret float %conv47
}

; Function Attrs: optsize
declare double @Gammln(double) #4

; Function Attrs: nounwind optsize uwtable
define void @SampleDirichlet(float* nocapture %alpha, i32 %n, float* %p) #0 {
entry:
  %cmp8 = icmp sgt i32 %n, 0
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds float* %alpha, i64 %indvars.iv
  %0 = load float* %arrayidx, align 4, !tbaa !3
  %call = tail call float @SampleGamma(float %0) #7
  %arrayidx2 = getelementptr inbounds float* %p, i64 %indvars.iv
  store float %call, float* %arrayidx2, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  tail call void @FNorm(float* %p, i32 %n) #5
  ret void
}

; Function Attrs: nounwind optsize uwtable
define float @SampleGamma(float %alpha) #0 {
entry:
  %conv = fpext float %alpha to double
  %cmp = fcmp ult float %alpha, 1.000000e+00
  br i1 %cmp, label %if.else, label %while.body.preheader

while.body.preheader:                             ; preds = %entry
  %mul = fmul double %conv, 2.000000e+00
  %sub = fadd double %mul, -1.000000e+00
  br label %while.body

while.body:                                       ; preds = %while.body.preheader, %while.body
  %call = tail call double @sqrt(double %sub) #5
  %conv3 = fptrunc double %call to float
  %call4 = tail call double @sre_random() #5
  %conv5 = fptrunc double %call4 to float
  %sub6 = fsub float 1.000000e+00, %conv5
  %div = fdiv float %conv5, %sub6
  %conv8 = fpext float %div to double
  %div9 = fdiv float 1.000000e+00, %conv3
  %conv10 = fpext float %div9 to double
  %call11 = tail call double @pow(double %conv8, double %conv10) #5
  %mul12 = fmul double %conv, %call11
  %conv13 = fptrunc double %mul12 to float
  %add = fsub float %alpha, %conv13
  %conv15 = fpext float %add to double
  %call16 = tail call double @exp(double %conv15) #5
  %mul17 = fmul double %call16, 2.500000e-01
  %div19 = fdiv float %alpha, %conv3
  %conv20 = fpext float %div19 to double
  %add21 = fadd double %conv20, 1.000000e+00
  %call22 = tail call double @pow(double %conv8, double %add21) #5
  %mul23 = fmul double %mul17, %call22
  %div25 = fdiv double 1.000000e+00, %conv8
  %add26 = fadd double %div25, 1.000000e+00
  %pow2 = fmul double %add26, %add26
  %mul28 = fmul double %mul23, %pow2
  %conv29 = fptrunc double %mul28 to float
  %call30 = tail call double @sre_random() #5
  %conv31 = fpext float %conv29 to double
  %cmp32 = fcmp ugt double %call30, %conv31
  br i1 %cmp32, label %while.body, label %return

if.else:                                          ; preds = %entry
  %cmp36 = fcmp ogt float %alpha, 0.000000e+00
  br i1 %cmp36, label %while.body39.preheader, label %if.end89

while.body39.preheader:                           ; preds = %if.else
  %div45 = fdiv double %conv, 0x4005BF0A8B145769
  %add46 = fadd double %div45, 1.000000e+00
  %sub67 = fadd double %conv, -1.000000e+00
  %div76 = fdiv double 1.000000e+00, %conv
  br label %while.body39

while.body39:                                     ; preds = %if.then52, %if.else73, %while.body39.preheader
  %call40 = tail call double @sre_random() #5
  %conv41 = fptrunc double %call40 to float
  %conv42 = fpext float %conv41 to double
  %mul47 = fmul double %conv42, %add46
  %conv48 = fptrunc double %mul47 to float
  %cmp50 = fcmp ogt float %conv48, 1.000000e+00
  br i1 %cmp50, label %if.then52, label %if.else73

if.then52:                                        ; preds = %while.body39
  %sub53 = fsub float 1.000000e+00, %conv48
  %conv54 = fpext float %sub53 to double
  %add58 = fadd double %div45, %conv54
  %div60 = fdiv double %add58, %conv
  %call61 = tail call double @log(double %div60) #5
  %0 = fptrunc double %call61 to float
  %conv63 = fsub float -0.000000e+00, %0
  %call64 = tail call double @sre_random() #5
  %conv65 = fpext float %conv63 to double
  %call68 = tail call double @pow(double %conv65, double %sub67) #5
  %cmp69 = fcmp ugt double %call64, %call68
  br i1 %cmp69, label %while.body39, label %return

if.else73:                                        ; preds = %while.body39
  %conv49 = fpext float %conv48 to double
  %call77 = tail call double @pow(double %conv49, double %div76) #5
  %conv78 = fptrunc double %call77 to float
  %call79 = tail call double @sre_random() #5
  %sub80 = fsub float -0.000000e+00, %conv78
  %conv81 = fpext float %sub80 to double
  %call82 = tail call double @exp(double %conv81) #5
  %cmp83 = fcmp ugt double %call79, %call82
  br i1 %cmp83, label %while.body39, label %return

if.end89:                                         ; preds = %if.else
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([46 x i8]* @.str, i64 0, i64 0)) #5
  br label %return

return:                                           ; preds = %while.body, %if.else73, %if.then52, %if.end89
  %retval.0 = phi float [ 0.000000e+00, %if.end89 ], [ %conv78, %if.else73 ], [ %conv63, %if.then52 ], [ %conv13, %while.body ]
  ret float %retval.0
}

; Function Attrs: optsize
declare void @FNorm(float*, i32) #4

; Function Attrs: nounwind optsize
declare double @sqrt(double) #2

; Function Attrs: optsize
declare double @sre_random() #4

; Function Attrs: nounwind optsize
declare double @pow(double, double) #2

; Function Attrs: optsize
declare void @Die(i8*, ...) #4

; Function Attrs: nounwind optsize uwtable
define void @SampleCountvector(float* %p, i32 %n, i32 %c, float* %cvec) #0 {
entry:
  tail call void @FSet(float* %cvec, i32 %n, float 0.000000e+00) #5
  %cmp5 = icmp sgt i32 %c, 0
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %i.06 = phi i32 [ %inc, %for.body ], [ 0, %entry ]
  %call = tail call i32 @FChoose(float* %p, i32 %n) #5
  %idxprom = sext i32 %call to i64
  %arrayidx = getelementptr inbounds float* %cvec, i64 %idxprom
  %0 = load float* %arrayidx, align 4, !tbaa !3
  %conv1 = fadd float %0, 1.000000e+00
  store float %conv1, float* %arrayidx, align 4, !tbaa !3
  %inc = add nsw i32 %i.06, 1
  %exitcond = icmp eq i32 %inc, %c
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %entry
  ret void
}

; Function Attrs: optsize
declare void @FSet(float*, i32, float) #4

; Function Attrs: optsize
declare i32 @FChoose(float*, i32) #4

; Function Attrs: nounwind optsize uwtable
define float @P_PvecGivenDirichlet(float* nocapture %p, i32 %n, float* nocapture %alpha) #0 {
entry:
  %cmp39 = icmp sgt i32 %n, 0
  br i1 %cmp39, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %logp.041 = phi float [ %logp.1, %for.inc ], [ 0.000000e+00, %entry ]
  %sum.040 = phi float [ %sum.1, %for.inc ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds float* %p, i64 %indvars.iv
  %0 = load float* %arrayidx, align 4, !tbaa !3
  %cmp1 = fcmp ogt float %0, 0.000000e+00
  br i1 %cmp1, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %conv = fpext float %0 to double
  %arrayidx4 = getelementptr inbounds float* %alpha, i64 %indvars.iv
  %1 = load float* %arrayidx4, align 4, !tbaa !3
  %conv5 = fpext float %1 to double
  %sub = fadd double %conv5, -1.000000e+00
  %call = tail call double @log(double %conv) #5
  %mul = fmul double %call, %sub
  %conv9 = fpext float %logp.041 to double
  %add = fadd double %conv9, %mul
  %conv10 = fptrunc double %add to float
  %2 = load float* %arrayidx4, align 4, !tbaa !3
  %conv13 = fpext float %2 to double
  %call14 = tail call double @Gammln(double %conv13) #5
  %conv15 = fpext float %conv10 to double
  %sub16 = fsub double %conv15, %call14
  %conv17 = fptrunc double %sub16 to float
  %3 = load float* %arrayidx4, align 4, !tbaa !3
  %add20 = fadd float %sum.040, %3
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %sum.1 = phi float [ %add20, %if.then ], [ %sum.040, %for.body ]
  %logp.1 = phi float [ %conv17, %if.then ], [ %logp.041, %for.body ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %entry
  %logp.0.lcssa = phi float [ 0.000000e+00, %entry ], [ %logp.1, %for.inc ]
  %sum.0.lcssa = phi float [ 0.000000e+00, %entry ], [ %sum.1, %for.inc ]
  %conv21 = fpext float %sum.0.lcssa to double
  %call22 = tail call double @Gammln(double %conv21) #5
  %conv23 = fpext float %logp.0.lcssa to double
  %add24 = fadd double %conv23, %call22
  %conv25 = fptrunc double %add24 to float
  ret float %conv25
}

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind optsize readnone }
attributes #7 = { optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"float", metadata !1}
