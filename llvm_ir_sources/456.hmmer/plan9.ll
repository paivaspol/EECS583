; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/plan9.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.plan9_s = type { i32, %struct.basic_state*, %struct.basic_state*, %struct.basic_state*, [20 x float], i8*, i8*, i8*, float*, i32 }
%struct.basic_state = type { [3 x float], [20 x float] }

@.str = private unnamed_addr constant [51 x i8] c"../../SPEC/benchspec/CPU2006/456.hmmer/src/plan9.c\00", align 1
@.str1 = private unnamed_addr constant [8 x i8] c"unnamed\00", align 1
@Alphabet_size = external global i32
@Alphabet_type = external global i32
@aafq = external global [0 x float]
@.str2 = private unnamed_addr constant [56 x i8] c"No support for non-protein, non-nucleic acid alphabets.\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct.plan9_s* @P9AllocHMM(i32 %M) #0 {
entry:
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 35, i64 152) #3
  %0 = bitcast i8* %call to %struct.plan9_s*
  %add = add nsw i32 %M, 2
  %conv = sext i32 %add to i64
  %mul = mul i64 %conv, 92
  %call1 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 36, i64 %mul) #3
  %1 = bitcast i8* %call1 to %struct.basic_state*
  %ins = getelementptr inbounds i8* %call, i64 8
  %2 = bitcast i8* %ins to %struct.basic_state**
  store %struct.basic_state* %1, %struct.basic_state** %2, align 8, !tbaa !0
  %call5 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 37, i64 %mul) #3
  %3 = bitcast i8* %call5 to %struct.basic_state*
  %del = getelementptr inbounds i8* %call, i64 24
  %4 = bitcast i8* %del to %struct.basic_state**
  store %struct.basic_state* %3, %struct.basic_state** %4, align 8, !tbaa !0
  %call9 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 38, i64 %mul) #3
  %5 = bitcast i8* %call9 to %struct.basic_state*
  %mat = getelementptr inbounds i8* %call, i64 16
  %6 = bitcast i8* %mat to %struct.basic_state**
  store %struct.basic_state* %5, %struct.basic_state** %6, align 8, !tbaa !0
  %call13 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 39, i64 %conv) #3
  %ref = getelementptr inbounds i8* %call, i64 120
  %7 = bitcast i8* %ref to i8**
  store i8* %call13, i8** %7, align 8, !tbaa !0
  %call17 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 40, i64 %conv) #3
  %cs = getelementptr inbounds i8* %call, i64 128
  %8 = bitcast i8* %cs to i8**
  store i8* %call17, i8** %8, align 8, !tbaa !0
  %mul21 = shl nsw i64 %conv, 4
  %call22 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 41, i64 %mul21) #3
  %9 = bitcast i8* %call22 to float*
  %xray = getelementptr inbounds i8* %call, i64 136
  %10 = bitcast i8* %xray to float**
  store float* %9, float** %10, align 8, !tbaa !0
  %M23 = bitcast i8* %call to i32*
  store i32 %M, i32* %M23, align 4, !tbaa !3
  %call24 = tail call i8* @Strdup(i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0)) #3
  %name = getelementptr inbounds i8* %call, i64 112
  %11 = bitcast i8* %name to i8**
  store i8* %call24, i8** %11, align 8, !tbaa !0
  %flags = getelementptr inbounds i8* %call, i64 144
  %12 = bitcast i8* %flags to i32*
  store i32 0, i32* %12, align 4, !tbaa !3
  tail call void @P9ZeroHMM(%struct.plan9_s* %0) #4
  ret %struct.plan9_s* %0
}

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #1

; Function Attrs: optsize
declare i8* @Strdup(i8*) #1

; Function Attrs: nounwind optsize uwtable
define void @P9ZeroHMM(%struct.plan9_s* nocapture %hmm) #0 {
entry:
  %M = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 0
  %0 = load i32* %M, align 4, !tbaa !3
  %add66 = add nsw i32 %0, 1
  %cmp67 = icmp slt i32 %add66, 0
  br i1 %cmp67, label %for.end41, label %for.cond1.preheader.lr.ph

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %mat = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 2
  %1 = load %struct.basic_state** %mat, align 8, !tbaa !0
  %ins = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 1
  %2 = load %struct.basic_state** %ins, align 8, !tbaa !0
  %del = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 3
  %3 = load %struct.basic_state** %del, align 8, !tbaa !0
  %4 = load i32* @Alphabet_size, align 4, !tbaa !3
  %cmp1764 = icmp sgt i32 %4, 0
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc39, %for.cond1.preheader.lr.ph
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %for.inc39 ], [ 0, %for.cond1.preheader.lr.ph ]
  br label %for.body3

for.body3:                                        ; preds = %for.body3, %for.cond1.preheader
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.body3 ]
  %arrayidx5 = getelementptr inbounds %struct.basic_state* %1, i64 %indvars.iv77, i32 0, i64 %indvars.iv
  store float 0.000000e+00, float* %arrayidx5, align 4, !tbaa !4
  %arrayidx10 = getelementptr inbounds %struct.basic_state* %2, i64 %indvars.iv77, i32 0, i64 %indvars.iv
  store float 0.000000e+00, float* %arrayidx10, align 4, !tbaa !4
  %arrayidx15 = getelementptr inbounds %struct.basic_state* %3, i64 %indvars.iv77, i32 0, i64 %indvars.iv
  store float 0.000000e+00, float* %arrayidx15, align 4, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.cond16.loopexit, label %for.body3

for.cond16.loopexit:                              ; preds = %for.body3
  br i1 %cmp1764, label %for.body18, label %for.inc39

for.body18:                                       ; preds = %for.cond16.loopexit, %for.body18
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %for.body18 ], [ 0, %for.cond16.loopexit ]
  %arrayidx23 = getelementptr inbounds %struct.basic_state* %1, i64 %indvars.iv77, i32 1, i64 %indvars.iv72
  store float 0.000000e+00, float* %arrayidx23, align 4, !tbaa !4
  %arrayidx29 = getelementptr inbounds %struct.basic_state* %2, i64 %indvars.iv77, i32 1, i64 %indvars.iv72
  store float 0.000000e+00, float* %arrayidx29, align 4, !tbaa !4
  %arrayidx35 = getelementptr inbounds %struct.basic_state* %3, i64 %indvars.iv77, i32 1, i64 %indvars.iv72
  store float 0.000000e+00, float* %arrayidx35, align 4, !tbaa !4
  %indvars.iv.next73 = add i64 %indvars.iv72, 1
  %5 = trunc i64 %indvars.iv.next73 to i32
  %cmp17 = icmp slt i32 %5, %4
  br i1 %cmp17, label %for.body18, label %for.inc39

for.inc39:                                        ; preds = %for.body18, %for.cond16.loopexit
  %indvars.iv.next78 = add i64 %indvars.iv77, 1
  %6 = trunc i64 %indvars.iv77 to i32
  %cmp = icmp slt i32 %6, %add66
  br i1 %cmp, label %for.cond1.preheader, label %for.end41

for.end41:                                        ; preds = %for.inc39, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @P9FreeHMM(%struct.plan9_s* %hmm) #0 {
entry:
  %cmp = icmp eq %struct.plan9_s* %hmm, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %ref = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 6
  %0 = load i8** %ref, align 8, !tbaa !0
  tail call void @free(i8* %0) #3
  %cs = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 7
  %1 = load i8** %cs, align 8, !tbaa !0
  tail call void @free(i8* %1) #3
  %xray = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 8
  %2 = load float** %xray, align 8, !tbaa !0
  %3 = bitcast float* %2 to i8*
  tail call void @free(i8* %3) #3
  %name = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 5
  %4 = load i8** %name, align 8, !tbaa !0
  tail call void @free(i8* %4) #3
  %mat = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 2
  %5 = load %struct.basic_state** %mat, align 8, !tbaa !0
  %cmp1 = icmp eq %struct.basic_state* %5, null
  br i1 %cmp1, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %6 = bitcast %struct.basic_state* %5 to i8*
  tail call void @free(i8* %6) #3
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then2
  %ins = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 1
  %7 = load %struct.basic_state** %ins, align 8, !tbaa !0
  %cmp5 = icmp eq %struct.basic_state* %7, null
  br i1 %cmp5, label %if.end8, label %if.then6

if.then6:                                         ; preds = %if.end4
  %8 = bitcast %struct.basic_state* %7 to i8*
  tail call void @free(i8* %8) #3
  br label %if.end8

if.end8:                                          ; preds = %if.end4, %if.then6
  %del = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 3
  %9 = load %struct.basic_state** %del, align 8, !tbaa !0
  %cmp9 = icmp eq %struct.basic_state* %9, null
  br i1 %cmp9, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.end8
  %10 = bitcast %struct.basic_state* %9 to i8*
  tail call void @free(i8* %10) #3
  br label %if.end12

if.end12:                                         ; preds = %if.end8, %if.then10
  %11 = bitcast %struct.plan9_s* %hmm to i8*
  tail call void @free(i8* %11) #3
  br label %return

return:                                           ; preds = %entry, %if.end12
  %retval.0 = phi i32 [ 1, %if.end12 ], [ 0, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @P9Renormalize(%struct.plan9_s* nocapture %hmm) #0 {
entry:
  %M = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 0
  %0 = load i32* %M, align 4, !tbaa !3
  %cmp35 = icmp slt i32 %0, 0
  br i1 %cmp35, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %mat = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 2
  %ins = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 1
  %del = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end16, %for.body.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end16 ], [ 0, %for.body.lr.ph ]
  %1 = load %struct.basic_state** %mat, align 8, !tbaa !0
  %arraydecay = getelementptr inbounds %struct.basic_state* %1, i64 %indvars.iv, i32 0, i64 0
  tail call void @FNorm(float* %arraydecay, i32 3) #3
  %2 = load %struct.basic_state** %ins, align 8, !tbaa !0
  %arraydecay4 = getelementptr inbounds %struct.basic_state* %2, i64 %indvars.iv, i32 0, i64 0
  tail call void @FNorm(float* %arraydecay4, i32 3) #3
  %3 = trunc i64 %indvars.iv to i32
  %cmp5 = icmp sgt i32 %3, 0
  br i1 %cmp5, label %if.then, label %if.end16

if.then:                                          ; preds = %for.body
  %4 = load %struct.basic_state** %del, align 8, !tbaa !0
  %arraydecay9 = getelementptr inbounds %struct.basic_state* %4, i64 %indvars.iv, i32 0, i64 0
  tail call void @FNorm(float* %arraydecay9, i32 3) #3
  %5 = load %struct.basic_state** %mat, align 8, !tbaa !0
  %arraydecay15 = getelementptr inbounds %struct.basic_state* %5, i64 %indvars.iv, i32 1, i64 0
  %6 = load i32* @Alphabet_size, align 4, !tbaa !3
  tail call void @FNorm(float* %arraydecay15, i32 %6) #3
  br label %if.end16

if.end16:                                         ; preds = %for.body, %if.then
  %7 = load %struct.basic_state** %ins, align 8, !tbaa !0
  %arraydecay21 = getelementptr inbounds %struct.basic_state* %7, i64 %indvars.iv, i32 1, i64 0
  %8 = load i32* @Alphabet_size, align 4, !tbaa !3
  tail call void @FNorm(float* %arraydecay21, i32 %8) #3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %9 = load i32* %M, align 4, !tbaa !3
  %cmp = icmp slt i32 %3, %9
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %if.end16, %entry
  ret void
}

; Function Attrs: optsize
declare void @FNorm(float*, i32) #1

; Function Attrs: nounwind optsize uwtable
define void @P9DefaultNullModel(float* nocapture %null) #0 {
entry:
  %0 = load i32* @Alphabet_type, align 4, !tbaa !3
  switch i32 %0, label %if.else14 [
    i32 3, label %for.cond.preheader
    i32 2, label %for.cond6.preheader
  ]

for.cond6.preheader:                              ; preds = %entry
  %1 = load i32* @Alphabet_size, align 4, !tbaa !3
  %cmp726 = icmp sgt i32 %1, 0
  br i1 %cmp726, label %for.body8, label %if.end15

for.cond.preheader:                               ; preds = %entry
  %2 = load i32* @Alphabet_size, align 4, !tbaa !3
  %cmp123 = icmp sgt i32 %2, 0
  br i1 %cmp123, label %for.body, label %if.end15

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds [0 x float]* @aafq, i64 0, i64 %indvars.iv
  %3 = load float* %arrayidx, align 4, !tbaa !4
  %arrayidx3 = getelementptr inbounds float* %null, i64 %indvars.iv
  store float %3, float* %arrayidx3, align 4, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %4 = trunc i64 %indvars.iv.next to i32
  %cmp1 = icmp slt i32 %4, %2
  br i1 %cmp1, label %for.body, label %if.end15

for.body8:                                        ; preds = %for.cond6.preheader, %for.body8
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %for.body8 ], [ 0, %for.cond6.preheader ]
  %arrayidx10 = getelementptr inbounds float* %null, i64 %indvars.iv29
  store float 2.500000e-01, float* %arrayidx10, align 4, !tbaa !4
  %indvars.iv.next30 = add i64 %indvars.iv29, 1
  %5 = trunc i64 %indvars.iv.next30 to i32
  %cmp7 = icmp slt i32 %5, %1
  br i1 %cmp7, label %for.body8, label %if.end15

if.else14:                                        ; preds = %entry
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([56 x i8]* @.str2, i64 0, i64 0)) #3
  br label %if.end15

if.end15:                                         ; preds = %for.cond6.preheader, %for.body8, %for.cond.preheader, %for.body, %if.else14
  ret void
}

; Function Attrs: optsize
declare void @Die(i8*, ...) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize }
attributes #4 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"float", metadata !1}
