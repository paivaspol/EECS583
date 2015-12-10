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
  tail call void @llvm.dbg.value(metadata !{i32 %M}, i64 0, metadata !39), !dbg !64
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 35, i64 152) #4, !dbg !65
  %0 = bitcast i8* %call to %struct.plan9_s*, !dbg !65
  tail call void @llvm.dbg.value(metadata !{%struct.plan9_s* %0}, i64 0, metadata !40), !dbg !65
  %add = add nsw i32 %M, 2, !dbg !66
  %conv = sext i32 %add to i64, !dbg !66
  %mul = mul i64 %conv, 92, !dbg !66
  %call1 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 36, i64 %mul) #4, !dbg !66
  %1 = bitcast i8* %call1 to %struct.basic_state*, !dbg !66
  %ins = getelementptr inbounds i8* %call, i64 8, !dbg !66
  %2 = bitcast i8* %ins to %struct.basic_state**, !dbg !66
  store %struct.basic_state* %1, %struct.basic_state** %2, align 8, !dbg !66, !tbaa !67
  %call5 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 37, i64 %mul) #4, !dbg !70
  %3 = bitcast i8* %call5 to %struct.basic_state*, !dbg !70
  %del = getelementptr inbounds i8* %call, i64 24, !dbg !70
  %4 = bitcast i8* %del to %struct.basic_state**, !dbg !70
  store %struct.basic_state* %3, %struct.basic_state** %4, align 8, !dbg !70, !tbaa !67
  %call9 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 38, i64 %mul) #4, !dbg !71
  %5 = bitcast i8* %call9 to %struct.basic_state*, !dbg !71
  %mat = getelementptr inbounds i8* %call, i64 16, !dbg !71
  %6 = bitcast i8* %mat to %struct.basic_state**, !dbg !71
  store %struct.basic_state* %5, %struct.basic_state** %6, align 8, !dbg !71, !tbaa !67
  %call13 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 39, i64 %conv) #4, !dbg !72
  %ref = getelementptr inbounds i8* %call, i64 120, !dbg !72
  %7 = bitcast i8* %ref to i8**, !dbg !72
  store i8* %call13, i8** %7, align 8, !dbg !72, !tbaa !67
  %call17 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 40, i64 %conv) #4, !dbg !73
  %cs = getelementptr inbounds i8* %call, i64 128, !dbg !73
  %8 = bitcast i8* %cs to i8**, !dbg !73
  store i8* %call17, i8** %8, align 8, !dbg !73, !tbaa !67
  %mul21 = shl nsw i64 %conv, 4, !dbg !74
  %call22 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), i32 41, i64 %mul21) #4, !dbg !74
  %9 = bitcast i8* %call22 to float*, !dbg !74
  %xray = getelementptr inbounds i8* %call, i64 136, !dbg !74
  %10 = bitcast i8* %xray to float**, !dbg !74
  store float* %9, float** %10, align 8, !dbg !74, !tbaa !67
  %M23 = bitcast i8* %call to i32*, !dbg !75
  store i32 %M, i32* %M23, align 4, !dbg !75, !tbaa !76
  %call24 = tail call i8* @Strdup(i8* getelementptr inbounds ([8 x i8]* @.str1, i64 0, i64 0)) #4, !dbg !77
  %name = getelementptr inbounds i8* %call, i64 112, !dbg !77
  %11 = bitcast i8* %name to i8**, !dbg !77
  store i8* %call24, i8** %11, align 8, !dbg !77, !tbaa !67
  %flags = getelementptr inbounds i8* %call, i64 144, !dbg !78
  %12 = bitcast i8* %flags to i32*, !dbg !78
  store i32 0, i32* %12, align 4, !dbg !78, !tbaa !76
  tail call void @P9ZeroHMM(%struct.plan9_s* %0) #5, !dbg !79
  ret %struct.plan9_s* %0, !dbg !80
}

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #1

; Function Attrs: optsize
declare i8* @Strdup(i8*) #1

; Function Attrs: nounwind optsize uwtable
define void @P9ZeroHMM(%struct.plan9_s* nocapture %hmm) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.plan9_s* %hmm}, i64 0, metadata !50), !dbg !81
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !51), !dbg !82
  %M = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 0, !dbg !82
  %0 = load i32* %M, align 4, !dbg !82, !tbaa !76
  %add66 = add nsw i32 %0, 1, !dbg !82
  %cmp67 = icmp slt i32 %add66, 0, !dbg !82
  br i1 %cmp67, label %for.end41, label %for.cond1.preheader.lr.ph, !dbg !82

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %mat = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 2, !dbg !84
  %1 = load %struct.basic_state** %mat, align 8, !dbg !84, !tbaa !67
  %ins = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 1, !dbg !88
  %2 = load %struct.basic_state** %ins, align 8, !dbg !88, !tbaa !67
  %del = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 3, !dbg !89
  %3 = load %struct.basic_state** %del, align 8, !dbg !89, !tbaa !67
  %4 = load i32* @Alphabet_size, align 4, !dbg !90, !tbaa !76
  %cmp1764 = icmp sgt i32 %4, 0, !dbg !90
  br label %for.cond1.preheader, !dbg !82

for.cond1.preheader:                              ; preds = %for.inc39, %for.cond1.preheader.lr.ph
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %for.inc39 ], [ 0, %for.cond1.preheader.lr.ph ]
  br label %for.body3, !dbg !92

for.body3:                                        ; preds = %for.body3, %for.cond1.preheader
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.body3 ]
  %arrayidx5 = getelementptr inbounds %struct.basic_state* %1, i64 %indvars.iv77, i32 0, i64 %indvars.iv, !dbg !84
  store float 0.000000e+00, float* %arrayidx5, align 4, !dbg !84, !tbaa !93
  %arrayidx10 = getelementptr inbounds %struct.basic_state* %2, i64 %indvars.iv77, i32 0, i64 %indvars.iv, !dbg !88
  store float 0.000000e+00, float* %arrayidx10, align 4, !dbg !88, !tbaa !93
  %arrayidx15 = getelementptr inbounds %struct.basic_state* %3, i64 %indvars.iv77, i32 0, i64 %indvars.iv, !dbg !89
  store float 0.000000e+00, float* %arrayidx15, align 4, !dbg !89, !tbaa !93
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !92
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !92
  %exitcond = icmp eq i32 %lftr.wideiv, 3, !dbg !92
  br i1 %exitcond, label %for.cond16.loopexit, label %for.body3, !dbg !92

for.cond16.loopexit:                              ; preds = %for.body3
  br i1 %cmp1764, label %for.body18, label %for.inc39, !dbg !90

for.body18:                                       ; preds = %for.cond16.loopexit, %for.body18
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %for.body18 ], [ 0, %for.cond16.loopexit ]
  %arrayidx23 = getelementptr inbounds %struct.basic_state* %1, i64 %indvars.iv77, i32 1, i64 %indvars.iv72, !dbg !94
  store float 0.000000e+00, float* %arrayidx23, align 4, !dbg !94, !tbaa !93
  %arrayidx29 = getelementptr inbounds %struct.basic_state* %2, i64 %indvars.iv77, i32 1, i64 %indvars.iv72, !dbg !96
  store float 0.000000e+00, float* %arrayidx29, align 4, !dbg !96, !tbaa !93
  %arrayidx35 = getelementptr inbounds %struct.basic_state* %3, i64 %indvars.iv77, i32 1, i64 %indvars.iv72, !dbg !97
  store float 0.000000e+00, float* %arrayidx35, align 4, !dbg !97, !tbaa !93
  %indvars.iv.next73 = add i64 %indvars.iv72, 1, !dbg !90
  %5 = trunc i64 %indvars.iv.next73 to i32, !dbg !90
  %cmp17 = icmp slt i32 %5, %4, !dbg !90
  br i1 %cmp17, label %for.body18, label %for.inc39, !dbg !90

for.inc39:                                        ; preds = %for.body18, %for.cond16.loopexit
  %indvars.iv.next78 = add i64 %indvars.iv77, 1, !dbg !82
  %6 = trunc i64 %indvars.iv77 to i32, !dbg !82
  %cmp = icmp slt i32 %6, %add66, !dbg !82
  br i1 %cmp, label %for.cond1.preheader, label %for.end41, !dbg !82

for.end41:                                        ; preds = %for.inc39, %entry
  ret void, !dbg !98
}

; Function Attrs: nounwind optsize uwtable
define i32 @P9FreeHMM(%struct.plan9_s* %hmm) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.plan9_s* %hmm}, i64 0, metadata !45), !dbg !99
  %cmp = icmp eq %struct.plan9_s* %hmm, null, !dbg !100
  br i1 %cmp, label %return, label %if.end, !dbg !100

if.end:                                           ; preds = %entry
  %ref = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 6, !dbg !101
  %0 = load i8** %ref, align 8, !dbg !101, !tbaa !67
  tail call void @free(i8* %0) #4, !dbg !101
  %cs = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 7, !dbg !102
  %1 = load i8** %cs, align 8, !dbg !102, !tbaa !67
  tail call void @free(i8* %1) #4, !dbg !102
  %xray = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 8, !dbg !103
  %2 = load float** %xray, align 8, !dbg !103, !tbaa !67
  %3 = bitcast float* %2 to i8*, !dbg !103
  tail call void @free(i8* %3) #4, !dbg !103
  %name = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 5, !dbg !104
  %4 = load i8** %name, align 8, !dbg !104, !tbaa !67
  tail call void @free(i8* %4) #4, !dbg !104
  %mat = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 2, !dbg !105
  %5 = load %struct.basic_state** %mat, align 8, !dbg !105, !tbaa !67
  %cmp1 = icmp eq %struct.basic_state* %5, null, !dbg !105
  br i1 %cmp1, label %if.end4, label %if.then2, !dbg !105

if.then2:                                         ; preds = %if.end
  %6 = bitcast %struct.basic_state* %5 to i8*, !dbg !105
  tail call void @free(i8* %6) #4, !dbg !105
  br label %if.end4, !dbg !105

if.end4:                                          ; preds = %if.end, %if.then2
  %ins = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 1, !dbg !106
  %7 = load %struct.basic_state** %ins, align 8, !dbg !106, !tbaa !67
  %cmp5 = icmp eq %struct.basic_state* %7, null, !dbg !106
  br i1 %cmp5, label %if.end8, label %if.then6, !dbg !106

if.then6:                                         ; preds = %if.end4
  %8 = bitcast %struct.basic_state* %7 to i8*, !dbg !106
  tail call void @free(i8* %8) #4, !dbg !106
  br label %if.end8, !dbg !106

if.end8:                                          ; preds = %if.end4, %if.then6
  %del = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 3, !dbg !107
  %9 = load %struct.basic_state** %del, align 8, !dbg !107, !tbaa !67
  %cmp9 = icmp eq %struct.basic_state* %9, null, !dbg !107
  br i1 %cmp9, label %if.end12, label %if.then10, !dbg !107

if.then10:                                        ; preds = %if.end8
  %10 = bitcast %struct.basic_state* %9 to i8*, !dbg !107
  tail call void @free(i8* %10) #4, !dbg !107
  br label %if.end12, !dbg !107

if.end12:                                         ; preds = %if.end8, %if.then10
  %11 = bitcast %struct.plan9_s* %hmm to i8*, !dbg !108
  tail call void @free(i8* %11) #4, !dbg !108
  br label %return, !dbg !109

return:                                           ; preds = %entry, %if.end12
  %retval.0 = phi i32 [ 1, %if.end12 ], [ 0, %entry ]
  ret i32 %retval.0, !dbg !109
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @P9Renormalize(%struct.plan9_s* nocapture %hmm) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.plan9_s* %hmm}, i64 0, metadata !56), !dbg !110
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !57), !dbg !111
  %M = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 0, !dbg !111
  %0 = load i32* %M, align 4, !dbg !111, !tbaa !76
  %cmp35 = icmp slt i32 %0, 0, !dbg !111
  br i1 %cmp35, label %for.end, label %for.body.lr.ph, !dbg !111

for.body.lr.ph:                                   ; preds = %entry
  %mat = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 2, !dbg !113
  %ins = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 1, !dbg !115
  %del = getelementptr inbounds %struct.plan9_s* %hmm, i64 0, i32 3, !dbg !116
  br label %for.body, !dbg !111

for.body:                                         ; preds = %if.end16, %for.body.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end16 ], [ 0, %for.body.lr.ph ]
  %1 = load %struct.basic_state** %mat, align 8, !dbg !113, !tbaa !67
  %arraydecay = getelementptr inbounds %struct.basic_state* %1, i64 %indvars.iv, i32 0, i64 0, !dbg !113
  tail call void @FNorm(float* %arraydecay, i32 3) #4, !dbg !113
  %2 = load %struct.basic_state** %ins, align 8, !dbg !115, !tbaa !67
  %arraydecay4 = getelementptr inbounds %struct.basic_state* %2, i64 %indvars.iv, i32 0, i64 0, !dbg !115
  tail call void @FNorm(float* %arraydecay4, i32 3) #4, !dbg !115
  %3 = trunc i64 %indvars.iv to i32, !dbg !116
  %cmp5 = icmp sgt i32 %3, 0, !dbg !116
  br i1 %cmp5, label %if.then, label %if.end16, !dbg !116

if.then:                                          ; preds = %for.body
  %4 = load %struct.basic_state** %del, align 8, !dbg !116, !tbaa !67
  %arraydecay9 = getelementptr inbounds %struct.basic_state* %4, i64 %indvars.iv, i32 0, i64 0, !dbg !116
  tail call void @FNorm(float* %arraydecay9, i32 3) #4, !dbg !116
  %5 = load %struct.basic_state** %mat, align 8, !dbg !117, !tbaa !67
  %arraydecay15 = getelementptr inbounds %struct.basic_state* %5, i64 %indvars.iv, i32 1, i64 0, !dbg !117
  %6 = load i32* @Alphabet_size, align 4, !dbg !117, !tbaa !76
  tail call void @FNorm(float* %arraydecay15, i32 %6) #4, !dbg !117
  br label %if.end16, !dbg !117

if.end16:                                         ; preds = %for.body, %if.then
  %7 = load %struct.basic_state** %ins, align 8, !dbg !118, !tbaa !67
  %arraydecay21 = getelementptr inbounds %struct.basic_state* %7, i64 %indvars.iv, i32 1, i64 0, !dbg !118
  %8 = load i32* @Alphabet_size, align 4, !dbg !118, !tbaa !76
  tail call void @FNorm(float* %arraydecay21, i32 %8) #4, !dbg !118
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !111
  %9 = load i32* %M, align 4, !dbg !111, !tbaa !76
  %cmp = icmp slt i32 %3, %9, !dbg !111
  br i1 %cmp, label %for.body, label %for.end, !dbg !111

for.end:                                          ; preds = %if.end16, %entry
  ret void, !dbg !119
}

; Function Attrs: optsize
declare void @FNorm(float*, i32) #1

; Function Attrs: nounwind optsize uwtable
define void @P9DefaultNullModel(float* nocapture %null) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{float* %null}, i64 0, metadata !62), !dbg !120
  %0 = load i32* @Alphabet_type, align 4, !dbg !121, !tbaa !76
  switch i32 %0, label %if.else14 [
    i32 3, label %for.cond.preheader
    i32 2, label %for.cond6.preheader
  ], !dbg !121

for.cond6.preheader:                              ; preds = %entry
  %1 = load i32* @Alphabet_size, align 4, !dbg !122, !tbaa !76
  %cmp726 = icmp sgt i32 %1, 0, !dbg !122
  br i1 %cmp726, label %for.body8, label %if.end15, !dbg !122

for.cond.preheader:                               ; preds = %entry
  %2 = load i32* @Alphabet_size, align 4, !dbg !124, !tbaa !76
  %cmp123 = icmp sgt i32 %2, 0, !dbg !124
  br i1 %cmp123, label %for.body, label %if.end15, !dbg !124

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds [0 x float]* @aafq, i64 0, i64 %indvars.iv, !dbg !126
  %3 = load float* %arrayidx, align 4, !dbg !126, !tbaa !93
  %arrayidx3 = getelementptr inbounds float* %null, i64 %indvars.iv, !dbg !126
  store float %3, float* %arrayidx3, align 4, !dbg !126, !tbaa !93
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !124
  %4 = trunc i64 %indvars.iv.next to i32, !dbg !124
  %cmp1 = icmp slt i32 %4, %2, !dbg !124
  br i1 %cmp1, label %for.body, label %if.end15, !dbg !124

for.body8:                                        ; preds = %for.cond6.preheader, %for.body8
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %for.body8 ], [ 0, %for.cond6.preheader ]
  %arrayidx10 = getelementptr inbounds float* %null, i64 %indvars.iv29, !dbg !127
  store float 2.500000e-01, float* %arrayidx10, align 4, !dbg !127, !tbaa !93
  %indvars.iv.next30 = add i64 %indvars.iv29, 1, !dbg !122
  %5 = trunc i64 %indvars.iv.next30 to i32, !dbg !122
  %cmp7 = icmp slt i32 %5, %1, !dbg !122
  br i1 %cmp7, label %for.body8, label %if.end15, !dbg !122

if.else14:                                        ; preds = %entry
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([56 x i8]* @.str2, i64 0, i64 0)) #4, !dbg !128
  br label %if.end15

if.end15:                                         ; preds = %for.cond6.preheader, %for.body8, %for.cond.preheader, %for.body, %if.else14
  ret void, !dbg !129
}

; Function Attrs: optsize
declare void @Die(i8*, ...) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan9.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/plan9.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !41, metadata !46, metadata !54, metadata !58}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"P9AllocHMM", metadata !"P9AllocHMM", metadata !"", i32 31, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.plan9_s* (i32)* @P9AllocHMM, null, null, metadata !38, i32 32} ; [ DW_TAG_subprogram ] [line 31] [def] [scope 32] [P9AllocHMM]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan9.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !13}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from plan9_s]
!9 = metadata !{i32 786451, metadata !10, null, metadata !"plan9_s", i32 567, i64 1216, i64 64, i32 0, i32 0, null, metadata !11, i32 0, null, null} ; [ DW_TAG_structure_type ] [plan9_s] [line 567, size 1216, align 64, offset 0] [from ]
!10 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/structs.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!11 = metadata !{metadata !12, metadata !14, metadata !27, metadata !28, metadata !29, metadata !30, metadata !33, metadata !34, metadata !35, metadata !37}
!12 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"M", i32 568, i64 32, i64 32, i64 0, i32 0, metadata !13} ; [ DW_TAG_member ] [M] [line 568, size 32, align 32, offset 0] [from int]
!13 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!14 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"ins", i32 569, i64 64, i64 64, i64 64, i32 0, metadata !15} ; [ DW_TAG_member ] [ins] [line 569, size 64, align 64, offset 64] [from ]
!15 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from basic_state]
!16 = metadata !{i32 786451, metadata !10, null, metadata !"basic_state", i32 560, i64 736, i64 32, i32 0, i32 0, null, metadata !17, i32 0, null, null} ; [ DW_TAG_structure_type ] [basic_state] [line 560, size 736, align 32, offset 0] [from ]
!17 = metadata !{metadata !18, metadata !23}
!18 = metadata !{i32 786445, metadata !10, metadata !16, metadata !"t", i32 561, i64 96, i64 32, i64 0, i32 0, metadata !19} ; [ DW_TAG_member ] [t] [line 561, size 96, align 32, offset 0] [from ]
!19 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !20, metadata !21, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from float]
!20 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!21 = metadata !{metadata !22}
!22 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ] [0, 2]
!23 = metadata !{i32 786445, metadata !10, metadata !16, metadata !"p", i32 562, i64 640, i64 32, i64 96, i32 0, metadata !24} ; [ DW_TAG_member ] [p] [line 562, size 640, align 32, offset 96] [from ]
!24 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 640, i64 32, i32 0, i32 0, metadata !20, metadata !25, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 640, align 32, offset 0] [from float]
!25 = metadata !{metadata !26}
!26 = metadata !{i32 786465, i64 0, i64 20}       ; [ DW_TAG_subrange_type ] [0, 19]
!27 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"mat", i32 570, i64 64, i64 64, i64 128, i32 0, metadata !15} ; [ DW_TAG_member ] [mat] [line 570, size 64, align 64, offset 128] [from ]
!28 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"del", i32 571, i64 64, i64 64, i64 192, i32 0, metadata !15} ; [ DW_TAG_member ] [del] [line 571, size 64, align 64, offset 192] [from ]
!29 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"null", i32 573, i64 640, i64 32, i64 256, i32 0, metadata !24} ; [ DW_TAG_member ] [null] [line 573, size 640, align 32, offset 256] [from ]
!30 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"name", i32 577, i64 64, i64 64, i64 896, i32 0, metadata !31} ; [ DW_TAG_member ] [name] [line 577, size 64, align 64, offset 896] [from ]
!31 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !32} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!32 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!33 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"ref", i32 578, i64 64, i64 64, i64 960, i32 0, metadata !31} ; [ DW_TAG_member ] [ref] [line 578, size 64, align 64, offset 960] [from ]
!34 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"cs", i32 579, i64 64, i64 64, i64 1024, i32 0, metadata !31} ; [ DW_TAG_member ] [cs] [line 579, size 64, align 64, offset 1024] [from ]
!35 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"xray", i32 580, i64 64, i64 64, i64 1088, i32 0, metadata !36} ; [ DW_TAG_member ] [xray] [line 580, size 64, align 64, offset 1088] [from ]
!36 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from float]
!37 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"flags", i32 582, i64 32, i64 32, i64 1152, i32 0, metadata !13} ; [ DW_TAG_member ] [flags] [line 582, size 32, align 32, offset 1152] [from int]
!38 = metadata !{metadata !39, metadata !40}
!39 = metadata !{i32 786689, metadata !4, metadata !"M", metadata !5, i32 16777247, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [M] [line 31]
!40 = metadata !{i32 786688, metadata !4, metadata !"hmm", metadata !5, i32 33, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hmm] [line 33]
!41 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"P9FreeHMM", metadata !"P9FreeHMM", metadata !"", i32 50, metadata !42, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.plan9_s*)* @P9FreeHMM, null, null, metadata !44, i32 51} ; [ DW_TAG_subprogram ] [line 50] [def] [scope 51] [P9FreeHMM]
!42 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !43, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!43 = metadata !{metadata !13, metadata !8}
!44 = metadata !{metadata !45}
!45 = metadata !{i32 786689, metadata !41, metadata !"hmm", metadata !5, i32 16777266, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmm] [line 50]
!46 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"P9ZeroHMM", metadata !"P9ZeroHMM", metadata !"", i32 70, metadata !47, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.plan9_s*)* @P9ZeroHMM, null, null, metadata !49, i32 71} ; [ DW_TAG_subprogram ] [line 70] [def] [scope 71] [P9ZeroHMM]
!47 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !48, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!48 = metadata !{null, metadata !8}
!49 = metadata !{metadata !50, metadata !51, metadata !52, metadata !53}
!50 = metadata !{i32 786689, metadata !46, metadata !"hmm", metadata !5, i32 16777286, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmm] [line 70]
!51 = metadata !{i32 786688, metadata !46, metadata !"k", metadata !5, i32 72, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 72]
!52 = metadata !{i32 786688, metadata !46, metadata !"ts", metadata !5, i32 72, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ts] [line 72]
!53 = metadata !{i32 786688, metadata !46, metadata !"idx", metadata !5, i32 72, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 72]
!54 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"P9Renormalize", metadata !"P9Renormalize", metadata !"", i32 104, metadata !47, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.plan9_s*)* @P9Renormalize, null, null, metadata !55, i32 105} ; [ DW_TAG_subprogram ] [line 104] [def] [scope 105] [P9Renormalize]
!55 = metadata !{metadata !56, metadata !57}
!56 = metadata !{i32 786689, metadata !54, metadata !"hmm", metadata !5, i32 16777320, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [hmm] [line 104]
!57 = metadata !{i32 786688, metadata !54, metadata !"k", metadata !5, i32 106, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [k] [line 106]
!58 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"P9DefaultNullModel", metadata !"P9DefaultNullModel", metadata !"", i32 128, metadata !59, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (float*)* @P9DefaultNullModel, null, null, metadata !61, i32 129} ; [ DW_TAG_subprogram ] [line 128] [def] [scope 129] [P9DefaultNullModel]
!59 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !60, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!60 = metadata !{null, metadata !36}
!61 = metadata !{metadata !62, metadata !63}
!62 = metadata !{i32 786689, metadata !58, metadata !"null", metadata !5, i32 16777344, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [null] [line 128]
!63 = metadata !{i32 786688, metadata !58, metadata !"x", metadata !5, i32 130, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 130]
!64 = metadata !{i32 31, i32 0, metadata !4, null}
!65 = metadata !{i32 35, i32 0, metadata !4, null}
!66 = metadata !{i32 36, i32 0, metadata !4, null}
!67 = metadata !{metadata !"any pointer", metadata !68}
!68 = metadata !{metadata !"omnipotent char", metadata !69}
!69 = metadata !{metadata !"Simple C/C++ TBAA"}
!70 = metadata !{i32 37, i32 0, metadata !4, null}
!71 = metadata !{i32 38, i32 0, metadata !4, null}
!72 = metadata !{i32 39, i32 0, metadata !4, null}
!73 = metadata !{i32 40, i32 0, metadata !4, null}
!74 = metadata !{i32 41, i32 0, metadata !4, null}
!75 = metadata !{i32 42, i32 0, metadata !4, null}
!76 = metadata !{metadata !"int", metadata !68}
!77 = metadata !{i32 43, i32 0, metadata !4, null}
!78 = metadata !{i32 45, i32 0, metadata !4, null}
!79 = metadata !{i32 46, i32 0, metadata !4, null}
!80 = metadata !{i32 47, i32 0, metadata !4, null}
!81 = metadata !{i32 70, i32 0, metadata !46, null}
!82 = metadata !{i32 74, i32 0, metadata !83, null}
!83 = metadata !{i32 786443, metadata !1, metadata !46, i32 74, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan9.c]
!84 = metadata !{i32 78, i32 0, metadata !85, null}
!85 = metadata !{i32 786443, metadata !1, metadata !86, i32 77, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan9.c]
!86 = metadata !{i32 786443, metadata !1, metadata !87, i32 76, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan9.c]
!87 = metadata !{i32 786443, metadata !1, metadata !83, i32 75, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan9.c]
!88 = metadata !{i32 79, i32 0, metadata !85, null}
!89 = metadata !{i32 80, i32 0, metadata !85, null}
!90 = metadata !{i32 82, i32 0, metadata !91, null}
!91 = metadata !{i32 786443, metadata !1, metadata !87, i32 82, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan9.c]
!92 = metadata !{i32 76, i32 0, metadata !86, null}
!93 = metadata !{metadata !"float", metadata !68}
!94 = metadata !{i32 84, i32 0, metadata !95, null}
!95 = metadata !{i32 786443, metadata !1, metadata !91, i32 83, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan9.c]
!96 = metadata !{i32 85, i32 0, metadata !95, null}
!97 = metadata !{i32 86, i32 0, metadata !95, null}
!98 = metadata !{i32 89, i32 0, metadata !46, null}
!99 = metadata !{i32 50, i32 0, metadata !41, null}
!100 = metadata !{i32 52, i32 0, metadata !41, null}
!101 = metadata !{i32 53, i32 0, metadata !41, null}
!102 = metadata !{i32 54, i32 0, metadata !41, null}
!103 = metadata !{i32 55, i32 0, metadata !41, null}
!104 = metadata !{i32 56, i32 0, metadata !41, null}
!105 = metadata !{i32 57, i32 0, metadata !41, null}
!106 = metadata !{i32 58, i32 0, metadata !41, null} ; [ DW_TAG_imported_module ]
!107 = metadata !{i32 59, i32 0, metadata !41, null}
!108 = metadata !{i32 60, i32 0, metadata !41, null}
!109 = metadata !{i32 61, i32 0, metadata !41, null}
!110 = metadata !{i32 104, i32 0, metadata !54, null}
!111 = metadata !{i32 108, i32 0, metadata !112, null}
!112 = metadata !{i32 786443, metadata !1, metadata !54, i32 108, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan9.c]
!113 = metadata !{i32 111, i32 0, metadata !114, null}
!114 = metadata !{i32 786443, metadata !1, metadata !112, i32 109, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan9.c]
!115 = metadata !{i32 112, i32 0, metadata !114, null}
!116 = metadata !{i32 113, i32 0, metadata !114, null}
!117 = metadata !{i32 115, i32 0, metadata !114, null}
!118 = metadata !{i32 116, i32 0, metadata !114, null}
!119 = metadata !{i32 118, i32 0, metadata !54, null}
!120 = metadata !{i32 128, i32 0, metadata !58, null}
!121 = metadata !{i32 131, i32 0, metadata !58, null}
!122 = metadata !{i32 135, i32 0, metadata !123, null}
!123 = metadata !{i32 786443, metadata !1, metadata !58, i32 135, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan9.c]
!124 = metadata !{i32 132, i32 0, metadata !125, null}
!125 = metadata !{i32 786443, metadata !1, metadata !58, i32 132, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/plan9.c]
!126 = metadata !{i32 133, i32 0, metadata !125, null}
!127 = metadata !{i32 136, i32 0, metadata !123, null}
!128 = metadata !{i32 138, i32 0, metadata !58, null}
!129 = metadata !{i32 139, i32 0, metadata !58, null}
