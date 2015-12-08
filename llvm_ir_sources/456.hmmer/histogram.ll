; ModuleID = '../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.histogram_s = type { i32*, i32, i32, i32, i32, i32, i32, float*, i32, [3 x float], float, float }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [55 x i8] c"../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c\00", align 1
@.str1 = private unnamed_addr constant [51 x i8] c"AddToHistogram(): Can't add to a fitted histogram\0A\00", align 1
@.str2 = private unnamed_addr constant [46 x i8] c"%5s %6s %6s  (one = represents %d sequences)\0A\00", align 1
@.str3 = private unnamed_addr constant [6 x i8] c"score\00", align 1
@.str4 = private unnamed_addr constant [4 x i8] c"obs\00", align 1
@.str5 = private unnamed_addr constant [4 x i8] c"exp\00", align 1
@.str6 = private unnamed_addr constant [13 x i8] c"%5s %6s %6s\0A\00", align 1
@.str7 = private unnamed_addr constant [6 x i8] c"-----\00", align 1
@.str8 = private unnamed_addr constant [4 x i8] c"---\00", align 1
@.str9 = private unnamed_addr constant [14 x i8] c"<%4d %6d %6s|\00", align 1
@.str10 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str11 = private unnamed_addr constant [5 x i8] c"oops\00", align 1
@.str12 = private unnamed_addr constant [14 x i8] c">%4d %6d %6s|\00", align 1
@.str13 = private unnamed_addr constant [13 x i8] c"%5d %6d %6d|\00", align 1
@.str14 = private unnamed_addr constant [13 x i8] c"%5d %6d %6s|\00", align 1
@.str15 = private unnamed_addr constant [35 x i8] c"\0A\0A%% No statistical fit available\0A\00", align 1
@.str16 = private unnamed_addr constant [50 x i8] c"\0A\0A%% Statistical details of theoretical EVD fit:\0A\00", align 1
@.str17 = private unnamed_addr constant [27 x i8] c"              mu = %10.4f\0A\00", align 1
@.str18 = private unnamed_addr constant [27 x i8] c"          lambda = %10.4f\0A\00", align 1
@.str19 = private unnamed_addr constant [27 x i8] c"chi-sq statistic = %10.4f\0A\00", align 1
@.str20 = private unnamed_addr constant [27 x i8] c"  P(chi-square)  = %10.4g\0A\00", align 1
@.str21 = private unnamed_addr constant [55 x i8] c"\0A\0A%% Statistical details of theoretical Gaussian fit:\0A\00", align 1
@.str22 = private unnamed_addr constant [27 x i8] c"            mean = %10.4f\0A\00", align 1
@.str23 = private unnamed_addr constant [27 x i8] c"              sd = %10.4f\0A\00", align 1
@.str24 = private unnamed_addr constant [9 x i8] c"%-6d %f\0A\00", align 1
@.str25 = private unnamed_addr constant [3 x i8] c"&\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define %struct.histogram_s* @AllocHistogram(i32 %min, i32 %max, i32 %lumpsize) #0 {
entry:
  %sub = sub nsw i32 %max, %min
  %add = add nsw i32 %sub, 1
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i32 68, i64 64) #4
  %0 = bitcast i8* %call to %struct.histogram_s*
  %min1 = getelementptr inbounds i8* %call, i64 8
  %1 = bitcast i8* %min1 to i32*
  store i32 %min, i32* %1, align 4, !tbaa !0
  %max2 = getelementptr inbounds i8* %call, i64 12
  %2 = bitcast i8* %max2 to i32*
  store i32 %max, i32* %2, align 4, !tbaa !0
  %total = getelementptr inbounds i8* %call, i64 28
  %3 = bitcast i8* %total to i32*
  store i32 0, i32* %3, align 4, !tbaa !0
  %lowscore = getelementptr inbounds i8* %call, i64 20
  %4 = bitcast i8* %lowscore to i32*
  store i32 2147483647, i32* %4, align 4, !tbaa !0
  %highscore = getelementptr inbounds i8* %call, i64 16
  %5 = bitcast i8* %highscore to i32*
  store i32 -2147483648, i32* %5, align 4, !tbaa !0
  %lumpsize3 = getelementptr inbounds i8* %call, i64 24
  %6 = bitcast i8* %lumpsize3 to i32*
  store i32 %lumpsize, i32* %6, align 4, !tbaa !0
  %conv = sext i32 %add to i64
  %mul = shl nsw i64 %conv, 2
  %call4 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i32 75, i64 %mul) #4
  %7 = bitcast i8* %call4 to i32*
  %histogram = bitcast i8* %call to i32**
  store i32* %7, i32** %histogram, align 8, !tbaa !3
  %cmp22 = icmp sgt i32 %sub, -1
  br i1 %cmp22, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %8 = add i32 %max, 1
  %9 = sub i32 %8, %min
  %10 = icmp sgt i32 %9, 1
  %.op = add i32 %9, -1
  %11 = zext i32 %.op to i64
  %.op24 = shl nuw nsw i64 %11, 2
  %.op24.op = add i64 %.op24, 4
  %12 = select i1 %10, i64 %.op24.op, i64 4
  call void @llvm.memset.p0i8.i64(i8* %call4, i8 0, i64 %12, i32 4, i1 false)
  br label %for.end

for.end:                                          ; preds = %for.body.lr.ph, %entry
  %expect = getelementptr inbounds i8* %call, i64 32
  %13 = bitcast i8* %expect to float**
  store float* null, float** %13, align 8, !tbaa !3
  %fit_type = getelementptr inbounds i8* %call, i64 40
  %14 = bitcast i8* %fit_type to i32*
  store i32 0, i32* %14, align 4, !tbaa !0
  ret %struct.histogram_s* %0
}

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #1

; Function Attrs: nounwind optsize uwtable
define void @FreeHistogram(%struct.histogram_s* nocapture %h) #0 {
entry:
  %histogram = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 0
  %0 = load i32** %histogram, align 8, !tbaa !3
  %1 = bitcast i32* %0 to i8*
  tail call void @free(i8* %1) #4
  %expect = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 7
  %2 = load float** %expect, align 8, !tbaa !3
  %cmp = icmp eq float* %2, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = bitcast float* %2 to i8*
  tail call void @free(i8* %3) #4
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %4 = bitcast %struct.histogram_s* %h to i8*
  tail call void @free(i8* %4) #4
  ret void
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define void @UnfitHistogram(%struct.histogram_s* nocapture %h) #0 {
entry:
  %expect = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 7
  %0 = load float** %expect, align 8, !tbaa !3
  %cmp = icmp eq float* %0, null
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %1 = bitcast float* %0 to i8*
  tail call void @free(i8* %1) #4
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  store float* null, float** %expect, align 8, !tbaa !3
  %fit_type = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 8
  store i32 0, i32* %fit_type, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @AddToHistogram(%struct.histogram_s* nocapture %h, float %sc) #0 {
entry:
  %fit_type = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 8
  %0 = load i32* %fit_type, align 4, !tbaa !0
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([51 x i8]* @.str1, i64 0, i64 0)) #4
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %floorf = tail call float @floorf(float %sc) #5
  %conv1 = fptosi float %floorf to i32
  %min = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 1
  %1 = load i32* %min, align 4, !tbaa !0
  %cmp2 = icmp slt i32 %conv1, %1
  %max = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 2
  %2 = load i32* %max, align 4, !tbaa !0
  br i1 %cmp2, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %sub = sub nsw i32 %2, %1
  %add = add nsw i32 %sub, 1
  %sub7 = sub nsw i32 %1, %conv1
  %lumpsize = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 5
  %3 = load i32* %lumpsize, align 4, !tbaa !0
  %add8 = add nsw i32 %3, %sub7
  %add9 = add nsw i32 %add8, %add
  %sub11 = sub nsw i32 %1, %add8
  store i32 %sub11, i32* %min, align 4, !tbaa !0
  %histogram = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 0
  %4 = load i32** %histogram, align 8, !tbaa !3
  %5 = bitcast i32* %4 to i8*
  %conv12 = sext i32 %add9 to i64
  %mul = shl nsw i64 %conv12, 2
  %call13 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i32 148, i8* %5, i64 %mul) #4
  %6 = bitcast i8* %call13 to i32*
  store i32* %6, i32** %histogram, align 8, !tbaa !3
  %idx.ext = sext i32 %add8 to i64
  %add.ptr = getelementptr inbounds i32* %6, i64 %idx.ext
  %7 = bitcast i32* %add.ptr to i8*
  %conv17 = sext i32 %add to i64
  %mul18 = shl nsw i64 %conv17, 2
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %7, i8* %call13, i64 %mul18, i32 4, i1 false)
  %cmp19119 = icmp sgt i32 %add8, 0
  br i1 %cmp19119, label %for.body.lr.ph, label %if.end53

for.body.lr.ph:                                   ; preds = %if.then4
  %8 = load i32** %histogram, align 8, !tbaa !3
  %9 = bitcast i32* %8 to i8*
  %10 = add i32 %1, %3
  %11 = add i32 %10, -1
  %12 = sub i32 %11, %conv1
  %13 = zext i32 %12 to i64
  %14 = shl nuw nsw i64 %13, 2
  %15 = add i64 %14, 4
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 %15, i32 4, i1 false)
  br label %if.end53

if.else:                                          ; preds = %if.end
  %cmp23 = icmp sgt i32 %conv1, %2
  br i1 %cmp23, label %if.then25, label %if.else.if.end53_crit_edge

if.else.if.end53_crit_edge:                       ; preds = %if.else
  %histogram57.pre = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 0
  br label %if.end53

if.then25:                                        ; preds = %if.else
  %sub28 = sub nsw i32 %2, %1
  %lumpsize30 = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 5
  %16 = load i32* %lumpsize30, align 4, !tbaa !0
  %add31 = add i32 %16, %conv1
  store i32 %add31, i32* %max, align 4, !tbaa !0
  %sub35 = sub nsw i32 %add31, %1
  %add36 = add nsw i32 %sub35, 1
  %histogram37 = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 0
  %17 = load i32** %histogram37, align 8, !tbaa !3
  %18 = bitcast i32* %17 to i8*
  %conv38 = sext i32 %add36 to i64
  %mul39 = shl nsw i64 %conv38, 2
  %call40 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i32 159, i8* %18, i64 %mul39) #4
  %19 = bitcast i8* %call40 to i32*
  store i32* %19, i32** %histogram37, align 8, !tbaa !3
  %cmp43123 = icmp slt i32 %sub28, %sub35
  br i1 %cmp43123, label %for.body45.lr.ph, label %if.end53

for.body45.lr.ph:                                 ; preds = %if.then25
  %20 = add i32 %2, 1
  %21 = sub i32 %20, %1
  %22 = sext i32 %21 to i64
  %scevgep = getelementptr i32* %19, i64 %22
  %scevgep126 = bitcast i32* %scevgep to i8*
  %23 = add i32 %conv1, %1
  %24 = add i32 %23, %16
  %25 = add i32 %24, -1
  %26 = sub i32 %25, %2
  %27 = sub i32 %26, %1
  %28 = zext i32 %27 to i64
  %29 = shl nuw nsw i64 %28, 2
  %30 = add i64 %29, 4
  call void @llvm.memset.p0i8.i64(i8* %scevgep126, i8 0, i64 %30, i32 4, i1 false)
  br label %if.end53

if.end53:                                         ; preds = %if.then25, %for.body45.lr.ph, %if.then4, %for.body.lr.ph, %if.else.if.end53_crit_edge
  %histogram57.pre-phi = phi i32** [ %histogram57.pre, %if.else.if.end53_crit_edge ], [ %histogram, %for.body.lr.ph ], [ %histogram, %if.then4 ], [ %histogram37, %for.body45.lr.ph ], [ %histogram37, %if.then25 ]
  %31 = load i32* %min, align 4, !tbaa !0
  %sub55 = sub nsw i32 %conv1, %31
  %idxprom56 = sext i32 %sub55 to i64
  %32 = load i32** %histogram57.pre-phi, align 8, !tbaa !3
  %arrayidx58 = getelementptr inbounds i32* %32, i64 %idxprom56
  %33 = load i32* %arrayidx58, align 4, !tbaa !0
  %inc59 = add nsw i32 %33, 1
  store i32 %inc59, i32* %arrayidx58, align 4, !tbaa !0
  %total = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 6
  %34 = load i32* %total, align 4, !tbaa !0
  %inc60 = add nsw i32 %34, 1
  store i32 %inc60, i32* %total, align 4, !tbaa !0
  %lowscore = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 4
  %35 = load i32* %lowscore, align 4, !tbaa !0
  %cmp61 = icmp slt i32 %conv1, %35
  br i1 %cmp61, label %if.then63, label %if.end65

if.then63:                                        ; preds = %if.end53
  store i32 %conv1, i32* %lowscore, align 4, !tbaa !0
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %if.end53
  %highscore = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 3
  %36 = load i32* %highscore, align 4, !tbaa !0
  %cmp66 = icmp sgt i32 %conv1, %36
  br i1 %cmp66, label %if.then68, label %if.end70

if.then68:                                        ; preds = %if.end65
  store i32 %conv1, i32* %highscore, align 4, !tbaa !0
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %if.end65
  ret void
}

; Function Attrs: optsize
declare void @Die(i8*, ...) #1

; Function Attrs: optsize
declare i8* @sre_realloc(i8*, i32, i8*, i64) #1

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #3

; Function Attrs: nounwind optsize uwtable
define void @PrintASCIIHistogram(%struct._IO_FILE* nocapture %fp, %struct.histogram_s* %h) #0 {
entry:
  %buffer = alloca [81 x i8], align 16
  %0 = getelementptr inbounds [81 x i8]* %buffer, i64 0, i64 0
  call void @llvm.lifetime.start(i64 81, i8* %0) #3
  %lowscore = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 4
  %1 = load i32* %lowscore, align 4, !tbaa !0
  %min = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 1
  %2 = load i32* %min, align 4, !tbaa !0
  %sub = sub i32 %1, %2
  %highscore = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 3
  %3 = load i32* %highscore, align 4, !tbaa !0
  %sub2419 = sub i32 %3, %2
  %cmp420 = icmp sgt i32 %sub, %sub2419
  br i1 %cmp420, label %for.end46, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %histogram = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 0
  %4 = load i32** %histogram, align 8, !tbaa !3
  %5 = sext i32 %sub to i64
  br label %for.body

for.cond8.preheader:                              ; preds = %for.body
  %cmp10415 = icmp sgt i32 %add.lowbound.0, %1
  br i1 %cmp10415, label %for.body11.lr.ph, label %for.end26

for.body11.lr.ph:                                 ; preds = %for.cond8.preheader
  %histogram15 = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 0
  %6 = load i32** %histogram15, align 8, !tbaa !3
  %7 = sext i32 %add.lowbound.0 to i64
  br label %for.body11

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv439 = phi i64 [ %indvars.iv.next440, %for.body ], [ %5, %for.body.lr.ph ]
  %maxbar.0423 = phi i32 [ %.maxbar.0, %for.body ], [ 0, %for.body.lr.ph ]
  %lowbound.0422 = phi i32 [ %add.lowbound.0, %for.body ], [ undef, %for.body.lr.ph ]
  %arrayidx = getelementptr inbounds i32* %4, i64 %indvars.iv439
  %8 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp3 = icmp sgt i32 %8, %maxbar.0423
  %9 = trunc i64 %indvars.iv439 to i32
  %add = add nsw i32 %2, %9
  %add.lowbound.0 = select i1 %cmp3, i32 %add, i32 %lowbound.0422
  %.maxbar.0 = select i1 %cmp3, i32 %8, i32 %maxbar.0423
  %indvars.iv.next440 = add i64 %indvars.iv439, 1
  %cmp = icmp slt i32 %9, %sub2419
  br i1 %cmp, label %for.body, label %for.cond8.preheader

for.body11:                                       ; preds = %for.body11.lr.ph, %for.inc25
  %indvars.iv437 = phi i64 [ %7, %for.body11.lr.ph ], [ %indvars.iv.next438, %for.inc25 ]
  %num.0417 = phi i32 [ 0, %for.body11.lr.ph ], [ %num.1, %for.inc25 ]
  %lowbound.2416 = phi i32 [ %add.lowbound.0, %for.body11.lr.ph ], [ %dec, %for.inc25 ]
  %10 = trunc i64 %indvars.iv437 to i32
  %sub13 = sub nsw i32 %10, %2
  %idxprom14 = sext i32 %sub13 to i64
  %arrayidx16 = getelementptr inbounds i32* %6, i64 %idxprom14
  %11 = load i32* %arrayidx16, align 4, !tbaa !0
  %cmp17 = icmp sgt i32 %11, 0
  br i1 %cmp17, label %for.inc25, label %if.end19

if.end19:                                         ; preds = %for.body11
  %inc20 = add nsw i32 %num.0417, 1
  %cmp21 = icmp eq i32 %inc20, 3
  br i1 %cmp21, label %if.then22, label %for.inc25

if.then22:                                        ; preds = %if.end19
  %add23 = add nsw i32 %lowbound.2416, 3
  br label %for.end26

for.inc25:                                        ; preds = %for.body11, %if.end19
  %num.1 = phi i32 [ %inc20, %if.end19 ], [ 0, %for.body11 ]
  %indvars.iv.next438 = add i64 %indvars.iv437, -1
  %dec = add nsw i32 %lowbound.2416, -1
  %12 = trunc i64 %indvars.iv.next438 to i32
  %cmp10 = icmp sgt i32 %12, %1
  br i1 %cmp10, label %for.body11, label %for.end26

for.end26:                                        ; preds = %for.cond8.preheader, %for.inc25, %if.then22
  %lowbound.3 = phi i32 [ %add23, %if.then22 ], [ %add.lowbound.0, %for.cond8.preheader ], [ %dec, %for.inc25 ]
  %cmp29410 = icmp slt i32 %add.lowbound.0, %3
  br i1 %cmp29410, label %for.body30.lr.ph, label %for.end46

for.body30.lr.ph:                                 ; preds = %for.end26
  %histogram34 = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 0
  %13 = load i32** %histogram34, align 8, !tbaa !3
  %14 = sext i32 %add.lowbound.0 to i64
  br label %for.body30

for.body30:                                       ; preds = %for.body30.lr.ph, %for.inc44
  %indvars.iv434 = phi i64 [ %14, %for.body30.lr.ph ], [ %indvars.iv.next435, %for.inc44 ]
  %num.2412 = phi i32 [ 0, %for.body30.lr.ph ], [ %num.3, %for.inc44 ]
  %highbound.0411 = phi i32 [ %add.lowbound.0, %for.body30.lr.ph ], [ %inc45, %for.inc44 ]
  %15 = trunc i64 %indvars.iv434 to i32
  %sub32 = sub nsw i32 %15, %2
  %idxprom33 = sext i32 %sub32 to i64
  %arrayidx35 = getelementptr inbounds i32* %13, i64 %idxprom33
  %16 = load i32* %arrayidx35, align 4, !tbaa !0
  %cmp36 = icmp sgt i32 %16, 0
  br i1 %cmp36, label %for.inc44, label %if.end38

if.end38:                                         ; preds = %for.body30
  %inc39 = add nsw i32 %num.2412, 1
  %cmp40 = icmp eq i32 %inc39, 3
  br i1 %cmp40, label %if.then41, label %for.inc44

if.then41:                                        ; preds = %if.end38
  %sub42 = add nsw i32 %highbound.0411, -3
  br label %for.end46

for.inc44:                                        ; preds = %for.body30, %if.end38
  %num.3 = phi i32 [ %inc39, %if.end38 ], [ 0, %for.body30 ]
  %indvars.iv.next435 = add i64 %indvars.iv434, 1
  %inc45 = add nsw i32 %highbound.0411, 1
  %17 = trunc i64 %indvars.iv.next435 to i32
  %cmp29 = icmp slt i32 %17, %3
  br i1 %cmp29, label %for.body30, label %for.end46

for.end46:                                        ; preds = %entry, %for.end26, %for.inc44, %if.then41
  %lowbound.3449 = phi i32 [ %lowbound.3, %if.then41 ], [ %lowbound.3, %for.end26 ], [ %lowbound.3, %for.inc44 ], [ undef, %entry ]
  %maxbar.0.lcssa442447 = phi i32 [ %.maxbar.0, %if.then41 ], [ %.maxbar.0, %for.end26 ], [ %.maxbar.0, %for.inc44 ], [ 0, %entry ]
  %highbound.1 = phi i32 [ %sub42, %if.then41 ], [ %add.lowbound.0, %for.end26 ], [ %inc45, %for.inc44 ], [ undef, %entry ]
  %sub52403 = sub nsw i32 %lowbound.3449, %2
  %cmp53404 = icmp sgt i32 %sub, %sub52403
  br i1 %cmp53404, label %for.end61, label %for.body54.lr.ph

for.body54.lr.ph:                                 ; preds = %for.end46
  %histogram56 = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 0
  %18 = load i32** %histogram56, align 8, !tbaa !3
  %19 = sext i32 %sub to i64
  br label %for.body54

for.body54:                                       ; preds = %for.body54, %for.body54.lr.ph
  %indvars.iv431 = phi i64 [ %indvars.iv.next432, %for.body54 ], [ %19, %for.body54.lr.ph ]
  %lowcount.0406 = phi i32 [ %add58, %for.body54 ], [ 0, %for.body54.lr.ph ]
  %arrayidx57 = getelementptr inbounds i32* %18, i64 %indvars.iv431
  %20 = load i32* %arrayidx57, align 4, !tbaa !0
  %add58 = add nsw i32 %20, %lowcount.0406
  %indvars.iv.next432 = add i64 %indvars.iv431, 1
  %21 = trunc i64 %indvars.iv431 to i32
  %cmp53 = icmp slt i32 %21, %sub52403
  br i1 %cmp53, label %for.body54, label %for.end61

for.end61:                                        ; preds = %for.body54, %for.end46
  %lowcount.0.lcssa = phi i32 [ 0, %for.end46 ], [ %add58, %for.body54 ]
  %sub67399 = sub nsw i32 %highbound.1, %2
  %cmp68400 = icmp slt i32 %sub2419, %sub67399
  br i1 %cmp68400, label %for.end76, label %for.body69.lr.ph

for.body69.lr.ph:                                 ; preds = %for.end61
  %histogram71 = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 0
  %22 = load i32** %histogram71, align 8, !tbaa !3
  %23 = sext i32 %sub2419 to i64
  br label %for.body69

for.body69:                                       ; preds = %for.body69, %for.body69.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body69 ], [ %23, %for.body69.lr.ph ]
  %highcount.0402 = phi i32 [ %add73, %for.body69 ], [ 0, %for.body69.lr.ph ]
  %arrayidx72 = getelementptr inbounds i32* %22, i64 %indvars.iv
  %24 = load i32* %arrayidx72, align 4, !tbaa !0
  %add73 = add nsw i32 %24, %highcount.0402
  %indvars.iv.next = add i64 %indvars.iv, -1
  %25 = trunc i64 %indvars.iv to i32
  %cmp68 = icmp sgt i32 %25, %sub67399
  br i1 %cmp68, label %for.body69, label %for.end76

for.end76:                                        ; preds = %for.body69, %for.end61
  %highcount.0.lcssa = phi i32 [ 0, %for.end61 ], [ %add73, %for.body69 ]
  %cmp77 = icmp sgt i32 %lowcount.0.lcssa, %maxbar.0.lcssa442447
  %lowcount.0.maxbar.0 = select i1 %cmp77, i32 %lowcount.0.lcssa, i32 %maxbar.0.lcssa442447
  %cmp80 = icmp sgt i32 %highcount.0.lcssa, %lowcount.0.maxbar.0
  %maxbar.3 = select i1 %cmp80, i32 %highcount.0.lcssa, i32 %lowcount.0.maxbar.0
  %sub83 = add nsw i32 %maxbar.3, -1
  %div = sdiv i32 %sub83, 59
  %add84 = add nsw i32 %div, 1
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([46 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str5, i64 0, i64 0), i32 %add84) #4
  %call85 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([13 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0)) #4
  %arrayidx86 = getelementptr inbounds [81 x i8]* %buffer, i64 0, i64 80
  store i8 0, i8* %arrayidx86, align 16, !tbaa !1
  %arrayidx87 = getelementptr inbounds [81 x i8]* %buffer, i64 0, i64 79
  store i8 10, i8* %arrayidx87, align 1, !tbaa !1
  %26 = load i32* %lowscore, align 4, !tbaa !0
  %27 = load i32* %highscore, align 4, !tbaa !0
  %cmp91396 = icmp sgt i32 %26, %27
  br i1 %cmp91396, label %for.end76.for.end224_crit_edge, label %for.body92.lr.ph

for.end76.for.end224_crit_edge:                   ; preds = %for.end76
  %fit_type225.pre = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 8
  br label %for.end224

for.body92.lr.ph:                                 ; preds = %for.end76
  %cmp106 = icmp sgt i32 %lowcount.0.lcssa, 0
  %sub108 = add nsw i32 %lowcount.0.lcssa, -1
  %cmp134 = icmp sgt i32 %highcount.0.lcssa, 0
  %sub136 = add nsw i32 %highcount.0.lcssa, -1
  %fit_type = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 8
  %histogram159 = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 0
  %arrayidx171 = getelementptr inbounds [81 x i8]* %buffer, i64 0, i64 20
  %expect200 = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 7
  br label %for.body92

for.body92:                                       ; preds = %for.inc222.for.body92_crit_edge, %for.body92.lr.ph
  %28 = phi i32 [ %27, %for.body92.lr.ph ], [ %57, %for.inc222.for.body92_crit_edge ]
  %i.3397 = phi i32 [ %26, %for.body92.lr.ph ], [ %inc223, %for.inc222.for.body92_crit_edge ]
  call void @llvm.memset.p0i8.i64(i8* %0, i8 32, i64 79, i32 16, i1 false)
  %29 = load i32* %min, align 4, !tbaa !0
  %sub94 = sub nsw i32 %i.3397, %29
  %cmp95 = icmp slt i32 %i.3397, %lowbound.3449
  %cmp97 = icmp sgt i32 %i.3397, %highbound.1
  %or.cond = or i1 %cmp95, %cmp97
  br i1 %or.cond, label %for.inc222, label %if.else99

if.else99:                                        ; preds = %for.body92
  %cmp100 = icmp eq i32 %i.3397, %lowbound.3449
  br i1 %cmp100, label %land.lhs.true, label %if.else126

land.lhs.true:                                    ; preds = %if.else99
  %30 = load i32* %lowscore, align 4, !tbaa !0
  %cmp102 = icmp eq i32 %lowbound.3449, %30
  br i1 %cmp102, label %if.else126, label %if.then103

if.then103:                                       ; preds = %land.lhs.true
  %add104 = add nsw i32 %lowbound.3449, 1
  %call105 = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([14 x i8]* @.str9, i64 0, i64 0), i32 %add104, i32 %lowcount.0.lcssa, i8* getelementptr inbounds ([2 x i8]* @.str10, i64 0, i64 0)) #4
  br i1 %cmp106, label %if.then107, label %if.end123

if.then107:                                       ; preds = %if.then103
  %div109 = sdiv i32 %sub108, %add84
  %add110 = add i32 %div109, 1
  %cmp111 = icmp sgt i32 %div109, 59
  br i1 %cmp111, label %if.then112, label %for.cond114.preheader

if.then112:                                       ; preds = %if.then107
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([5 x i8]* @.str11, i64 0, i64 0)) #4
  br label %for.cond114.preheader

for.cond114.preheader:                            ; preds = %if.then112, %if.then107
  %cmp115387 = icmp sgt i32 %div109, -1
  br i1 %cmp115387, label %for.body116.lr.ph, label %if.end123

for.body116.lr.ph:                                ; preds = %for.cond114.preheader
  %31 = xor i32 %div109, -1
  %32 = icmp sgt i32 %31, -1
  %smax = select i1 %32, i32 %31, i32 -1
  %33 = add i32 %add110, %smax
  %34 = zext i32 %33 to i64
  %35 = add i64 %34, 1
  call void @llvm.memset.p0i8.i64(i8* %arrayidx171, i8 61, i64 %35, i32 4, i1 false)
  br label %if.end123

if.end123:                                        ; preds = %for.cond114.preheader, %for.body116.lr.ph, %if.then103
  %call125 = call i32 @fputs(i8* %0, %struct._IO_FILE* %fp) #4
  br label %for.inc222

if.else126:                                       ; preds = %land.lhs.true, %if.else99
  %cmp127 = icmp ne i32 %i.3397, %highbound.1
  %cmp130 = icmp eq i32 %highbound.1, %28
  %or.cond451 = or i1 %cmp127, %cmp130
  br i1 %or.cond451, label %if.end154, label %if.then131

if.then131:                                       ; preds = %if.else126
  %call133 = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([14 x i8]* @.str12, i64 0, i64 0), i32 %highbound.1, i32 %highcount.0.lcssa, i8* getelementptr inbounds ([2 x i8]* @.str10, i64 0, i64 0)) #4
  br i1 %cmp134, label %if.then135, label %if.end148

if.then135:                                       ; preds = %if.then131
  %div137 = sdiv i32 %sub136, %add84
  %cmp140390 = icmp sgt i32 %div137, -1
  br i1 %cmp140390, label %for.body141.lr.ph, label %if.end148

for.body141.lr.ph:                                ; preds = %if.then135
  %add138 = add nsw i32 %div137, 1
  %36 = xor i32 %div137, -1
  %37 = icmp sgt i32 %36, -1
  %smax428 = select i1 %37, i32 %36, i32 -1
  %38 = add i32 %add138, %smax428
  %39 = zext i32 %38 to i64
  %40 = add i64 %39, 1
  call void @llvm.memset.p0i8.i64(i8* %arrayidx171, i8 61, i64 %40, i32 4, i1 false)
  br label %if.end148

if.end148:                                        ; preds = %if.then135, %for.body141.lr.ph, %if.then131
  %call150 = call i32 @fputs(i8* %0, %struct._IO_FILE* %fp) #4
  br label %for.inc222

if.end154:                                        ; preds = %if.else126
  %41 = load i32* %fit_type, align 4, !tbaa !0
  %cmp155 = icmp eq i32 %41, 0
  %idxprom158 = sext i32 %sub94 to i64
  %42 = load i32** %histogram159, align 8, !tbaa !3
  %arrayidx160 = getelementptr inbounds i32* %42, i64 %idxprom158
  %43 = load i32* %arrayidx160, align 4, !tbaa !0
  br i1 %cmp155, label %if.else164, label %if.then156

if.then156:                                       ; preds = %if.end154
  %44 = load float** %expect200, align 8, !tbaa !3
  %arrayidx162 = getelementptr inbounds float* %44, i64 %idxprom158
  %45 = load float* %arrayidx162, align 4, !tbaa !4
  %conv = fptosi float %45 to i32
  %call163 = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([13 x i8]* @.str13, i64 0, i64 0), i32 %i.3397, i32 %43, i32 %conv) #4
  br label %if.end170

if.else164:                                       ; preds = %if.end154
  %call169 = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([13 x i8]* @.str14, i64 0, i64 0), i32 %i.3397, i32 %43, i8* getelementptr inbounds ([2 x i8]* @.str10, i64 0, i64 0)) #4
  br label %if.end170

if.end170:                                        ; preds = %if.else164, %if.then156
  store i8 32, i8* %arrayidx171, align 4, !tbaa !1
  %46 = load i32** %histogram159, align 8, !tbaa !3
  %arrayidx174 = getelementptr inbounds i32* %46, i64 %idxprom158
  %47 = load i32* %arrayidx174, align 4, !tbaa !0
  %cmp175 = icmp sgt i32 %47, 0
  br i1 %cmp175, label %if.then177, label %if.end194

if.then177:                                       ; preds = %if.end170
  %sub181 = add nsw i32 %47, -1
  %div182 = sdiv i32 %sub181, %add84
  %cmp185393 = icmp sgt i32 %div182, -1
  br i1 %cmp185393, label %for.body187.lr.ph, label %if.end194

for.body187.lr.ph:                                ; preds = %if.then177
  %add183 = add nsw i32 %div182, 1
  %48 = xor i32 %div182, -1
  %49 = icmp sgt i32 %48, -1
  %smax430 = select i1 %49, i32 %48, i32 -1
  %50 = add i32 %add183, %smax430
  %51 = zext i32 %50 to i64
  %52 = add i64 %51, 1
  call void @llvm.memset.p0i8.i64(i8* %arrayidx171, i8 61, i64 %52, i32 4, i1 false)
  br label %if.end194

if.end194:                                        ; preds = %if.then177, %for.body187.lr.ph, %if.end170
  %53 = load i32* %fit_type, align 4, !tbaa !0
  %cmp196 = icmp eq i32 %53, 0
  br i1 %cmp196, label %if.end219, label %land.lhs.true198

land.lhs.true198:                                 ; preds = %if.end194
  %54 = load float** %expect200, align 8, !tbaa !3
  %arrayidx201 = getelementptr inbounds float* %54, i64 %idxprom158
  %55 = load float* %arrayidx201, align 4, !tbaa !4
  %conv202 = fptosi float %55 to i32
  %cmp203 = icmp sgt i32 %conv202, 0
  br i1 %cmp203, label %if.then205, label %if.end219

if.then205:                                       ; preds = %land.lhs.true198
  %sub209 = fadd float %55, -1.000000e+00
  %conv210 = fptosi float %sub209 to i32
  %div211 = sdiv i32 %conv210, %add84
  %add212 = add nsw i32 %div211, 20
  %cmp213 = icmp slt i32 %add212, 78
  %56 = sext i32 %add212 to i64
  %idxprom217 = select i1 %cmp213, i64 %56, i64 78
  %arrayidx218 = getelementptr inbounds [81 x i8]* %buffer, i64 0, i64 %idxprom217
  store i8 42, i8* %arrayidx218, align 1, !tbaa !1
  br label %if.end219

if.end219:                                        ; preds = %if.end194, %if.then205, %land.lhs.true198
  %call221 = call i32 @fputs(i8* %0, %struct._IO_FILE* %fp) #4
  br label %for.inc222

for.inc222:                                       ; preds = %for.body92, %if.end219, %if.end148, %if.end123
  %57 = load i32* %highscore, align 4, !tbaa !0
  %cmp91 = icmp slt i32 %i.3397, %57
  br i1 %cmp91, label %for.inc222.for.body92_crit_edge, label %for.end224

for.inc222.for.body92_crit_edge:                  ; preds = %for.inc222
  %inc223 = add nsw i32 %i.3397, 1
  br label %for.body92

for.end224:                                       ; preds = %for.inc222, %for.end76.for.end224_crit_edge
  %fit_type225.pre-phi = phi i32* [ %fit_type225.pre, %for.end76.for.end224_crit_edge ], [ %fit_type, %for.inc222 ]
  %58 = load i32* %fit_type225.pre-phi, align 4, !tbaa !0
  switch i32 %58, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb227
    i32 2, label %sw.bb240
  ]

sw.bb:                                            ; preds = %for.end224
  %call226 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([35 x i8]* @.str15, i64 0, i64 0)) #4
  br label %sw.epilog

sw.bb227:                                         ; preds = %for.end224
  %call228 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([50 x i8]* @.str16, i64 0, i64 0)) #4
  %arrayidx229 = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 9, i64 0
  %59 = load float* %arrayidx229, align 4, !tbaa !4
  %conv230 = fpext float %59 to double
  %call231 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([27 x i8]* @.str17, i64 0, i64 0), double %conv230) #4
  %arrayidx233 = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 9, i64 1
  %60 = load float* %arrayidx233, align 4, !tbaa !4
  %conv234 = fpext float %60 to double
  %call235 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([27 x i8]* @.str18, i64 0, i64 0), double %conv234) #4
  %chisq = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 10
  %61 = load float* %chisq, align 4, !tbaa !4
  %conv236 = fpext float %61 to double
  %call237 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([27 x i8]* @.str19, i64 0, i64 0), double %conv236) #4
  %chip = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 11
  %62 = load float* %chip, align 4, !tbaa !4
  %conv238 = fpext float %62 to double
  %call239 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([27 x i8]* @.str20, i64 0, i64 0), double %conv238) #4
  br label %sw.epilog

sw.bb240:                                         ; preds = %for.end224
  %call241 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([55 x i8]* @.str21, i64 0, i64 0)) #4
  %arrayidx243 = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 9, i64 0
  %63 = load float* %arrayidx243, align 4, !tbaa !4
  %conv244 = fpext float %63 to double
  %call245 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([27 x i8]* @.str22, i64 0, i64 0), double %conv244) #4
  %arrayidx247 = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 9, i64 1
  %64 = load float* %arrayidx247, align 4, !tbaa !4
  %conv248 = fpext float %64 to double
  %call249 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([27 x i8]* @.str23, i64 0, i64 0), double %conv248) #4
  %chisq250 = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 10
  %65 = load float* %chisq250, align 4, !tbaa !4
  %conv251 = fpext float %65 to double
  %call252 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([27 x i8]* @.str19, i64 0, i64 0), double %conv251) #4
  %chip253 = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 11
  %66 = load float* %chip253, align 4, !tbaa !4
  %conv254 = fpext float %66 to double
  %call255 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([27 x i8]* @.str20, i64 0, i64 0), double %conv254) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.end224, %sw.bb240, %sw.bb227, %sw.bb
  call void @llvm.lifetime.end(i64 81, i8* %0) #3
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize
declare i32 @fputs(i8* nocapture, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define void @PrintXMGRHistogram(%struct._IO_FILE* nocapture %fp, %struct.histogram_s* nocapture %h) #0 {
entry:
  %lowscore = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 4
  %0 = load i32* %lowscore, align 4, !tbaa !0
  %highscore = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 3
  %1 = load i32* %highscore, align 4, !tbaa !0
  %cmp66 = icmp sgt i32 %0, %1
  br i1 %cmp66, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %min = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 1
  %histogram = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 0
  %total = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %2 = phi i32 [ %1, %for.body.lr.ph ], [ %7, %for.inc.for.body_crit_edge ]
  %sc.067 = phi i32 [ %0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %3 = load i32* %min, align 4, !tbaa !0
  %sub = sub nsw i32 %sc.067, %3
  %idxprom = sext i32 %sub to i64
  %4 = load i32** %histogram, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i32* %4, i64 %idxprom
  %5 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp1 = icmp sgt i32 %5, 0
  br i1 %cmp1, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %conv = sitofp i32 %5 to float
  %6 = load i32* %total, align 4, !tbaa !0
  %conv7 = sitofp i32 %6 to float
  %div = fdiv float %conv, %conv7
  %conv8 = fpext float %div to double
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([9 x i8]* @.str24, i64 0, i64 0), i32 %sc.067, double %conv8) #4
  %.pre = load i32* %highscore, align 4, !tbaa !0
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %7 = phi i32 [ %2, %for.body ], [ %.pre, %if.then ]
  %cmp = icmp slt i32 %sc.067, %7
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  %inc = add nsw i32 %sc.067, 1
  br label %for.body

for.end:                                          ; preds = %for.inc, %entry
  %8 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str25, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %fp)
  %fit_type = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 8
  %9 = load i32* %fit_type, align 4, !tbaa !0
  %cmp10 = icmp eq i32 %9, 0
  br i1 %cmp10, label %if.end38, label %if.then12

if.then12:                                        ; preds = %for.end
  %10 = load i32* %lowscore, align 4, !tbaa !0
  %11 = load i32* %highscore, align 4, !tbaa !0
  %cmp1664 = icmp sgt i32 %10, %11
  br i1 %cmp1664, label %for.end36, label %for.body18.lr.ph

for.body18.lr.ph:                                 ; preds = %if.then12
  %arrayidx20 = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 9, i64 0
  %arrayidx22 = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 9, i64 1
  br label %for.body18

for.body18:                                       ; preds = %for.body18, %for.body18.lr.ph
  %sc.165 = phi i32 [ %10, %for.body18.lr.ph ], [ %inc35, %for.body18 ]
  %conv19 = sitofp i32 %sc.165 to float
  %add = fadd float %conv19, 1.000000e+00
  %12 = load float* %arrayidx20, align 4, !tbaa !4
  %13 = load float* %arrayidx22, align 4, !tbaa !4
  %call23 = tail call double @ExtremeValueP(float %add, float %12, float %13) #6
  %sub24 = fsub double 1.000000e+00, %call23
  %14 = load float* %arrayidx20, align 4, !tbaa !4
  %15 = load float* %arrayidx22, align 4, !tbaa !4
  %call30 = tail call double @ExtremeValueP(float %conv19, float %14, float %15) #6
  %sub31 = fsub double 1.000000e+00, %call30
  %sub32 = fsub double %sub24, %sub31
  %call33 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([9 x i8]* @.str24, i64 0, i64 0), i32 %sc.165, double %sub32) #4
  %inc35 = add nsw i32 %sc.165, 1
  %16 = load i32* %highscore, align 4, !tbaa !0
  %cmp16 = icmp slt i32 %sc.165, %16
  br i1 %cmp16, label %for.body18, label %for.end36

for.end36:                                        ; preds = %for.body18, %if.then12
  %17 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str25, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %fp)
  br label %if.end38

if.end38:                                         ; preds = %for.end, %for.end36
  ret void
}

; Function Attrs: nounwind optsize uwtable
define double @ExtremeValueP(float %x, float %mu, float %lambda) #0 {
entry:
  %sub = fsub float %x, %mu
  %mul = fmul float %sub, %lambda
  %conv = fpext float %mul to double
  %cmp = fcmp ugt double %conv, 0xC00CAD875732FBD5
  br i1 %cmp, label %if.end, label %return

if.end:                                           ; preds = %entry
  %cmp8 = fcmp ult double %conv, 7.084000e+02
  br i1 %cmp8, label %if.end11, label %return

if.end11:                                         ; preds = %if.end
  %conv12 = fpext float %lambda to double
  %mul13 = fmul double %conv12, -1.000000e+00
  %conv15 = fpext float %sub to double
  %mul16 = fmul double %conv15, %mul13
  %call17 = tail call double @exp(double %mul16) #4
  %cmp18 = fcmp olt double %call17, 1.000000e-07
  br i1 %cmp18, label %return, label %if.else

if.else:                                          ; preds = %if.end11
  %mul21 = fmul double %call17, -1.000000e+00
  %call22 = tail call double @exp(double %mul21) #4
  %sub23 = fsub double 1.000000e+00, %call22
  br label %return

return:                                           ; preds = %if.end11, %if.end, %entry, %if.else
  %retval.0 = phi double [ %sub23, %if.else ], [ 1.000000e+00, %entry ], [ 0.000000e+00, %if.end ], [ %call17, %if.end11 ]
  ret double %retval.0
}

; Function Attrs: nounwind optsize uwtable
define void @PrintXMGRDistribution(%struct._IO_FILE* nocapture %fp, %struct.histogram_s* nocapture %h) #0 {
entry:
  %lowscore = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 4
  %0 = load i32* %lowscore, align 4, !tbaa !0
  %highscore = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 3
  %1 = load i32* %highscore, align 4, !tbaa !0
  %cmp46 = icmp sgt i32 %0, %1
  br i1 %cmp46, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %min = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 1
  %histogram = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 0
  %total = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %sc.048 = phi i32 [ %0, %for.body.lr.ph ], [ %add1, %for.body ]
  %cum.047 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.body ]
  %2 = load i32* %min, align 4, !tbaa !0
  %sub = sub nsw i32 %sc.048, %2
  %idxprom = sext i32 %sub to i64
  %3 = load i32** %histogram, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i32* %3, i64 %idxprom
  %4 = load i32* %arrayidx, align 4, !tbaa !0
  %add = add nsw i32 %4, %cum.047
  %add1 = add nsw i32 %sc.048, 1
  %conv = sitofp i32 %add to float
  %5 = load i32* %total, align 4, !tbaa !0
  %conv2 = sitofp i32 %5 to float
  %div = fdiv float %conv, %conv2
  %conv3 = fpext float %div to double
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([9 x i8]* @.str24, i64 0, i64 0), i32 %add1, double %conv3) #4
  %6 = load i32* %highscore, align 4, !tbaa !0
  %cmp = icmp slt i32 %sc.048, %6
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  %7 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str25, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %fp)
  %fit_type = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 8
  %8 = load i32* %fit_type, align 4, !tbaa !0
  %cmp5 = icmp eq i32 %8, 0
  br i1 %cmp5, label %if.end, label %if.then

if.then:                                          ; preds = %for.end
  %9 = load i32* %lowscore, align 4, !tbaa !0
  %10 = load i32* %highscore, align 4, !tbaa !0
  %cmp1044 = icmp sgt i32 %9, %10
  br i1 %cmp1044, label %for.end22, label %for.body12.lr.ph

for.body12.lr.ph:                                 ; preds = %if.then
  %arrayidx14 = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 9, i64 0
  %arrayidx16 = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 9, i64 1
  br label %for.body12

for.body12:                                       ; preds = %for.body12, %for.body12.lr.ph
  %sc.145 = phi i32 [ %9, %for.body12.lr.ph ], [ %inc21, %for.body12 ]
  %conv13 = sitofp i32 %sc.145 to float
  %11 = load float* %arrayidx14, align 4, !tbaa !4
  %12 = load float* %arrayidx16, align 4, !tbaa !4
  %call17 = tail call double @ExtremeValueP(float %conv13, float %11, float %12) #6
  %sub18 = fsub double 1.000000e+00, %call17
  %call19 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([9 x i8]* @.str24, i64 0, i64 0), i32 %sc.145, double %sub18) #4
  %inc21 = add nsw i32 %sc.145, 1
  %13 = load i32* %highscore, align 4, !tbaa !0
  %cmp10 = icmp slt i32 %sc.145, %13
  br i1 %cmp10, label %for.body12, label %for.end22

for.end22:                                        ; preds = %for.body12, %if.then
  %14 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str25, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %fp)
  br label %if.end

if.end:                                           ; preds = %for.end, %for.end22
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @PrintXMGRRegressionLine(%struct._IO_FILE* nocapture %fp, %struct.histogram_s* nocapture %h) #0 {
entry:
  %lowscore = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 4
  %0 = load i32* %lowscore, align 4, !tbaa !0
  %highscore = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 3
  %1 = load i32* %highscore, align 4, !tbaa !0
  %cmp58 = icmp sgt i32 %0, %1
  br i1 %cmp58, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %min = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 1
  %histogram = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 0
  %total = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %cum.060 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.inc ]
  %sc.059 = phi i32 [ %0, %for.body.lr.ph ], [ %add6, %for.inc ]
  %2 = load i32* %min, align 4, !tbaa !0
  %sub = sub nsw i32 %sc.059, %2
  %idxprom = sext i32 %sub to i64
  %3 = load i32** %histogram, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i32* %3, i64 %idxprom
  %4 = load i32* %arrayidx, align 4, !tbaa !0
  %add = add nsw i32 %4, %cum.060
  %conv = sitofp i32 %add to double
  %5 = load i32* %total, align 4, !tbaa !0
  %conv1 = sitofp i32 %5 to double
  %div = fdiv double %conv, %conv1
  %call = tail call double @log(double %div) #4
  %mul = fmul double %call, -1.000000e+00
  %call2 = tail call double @log(double %mul) #4
  %6 = load i32* %total, align 4, !tbaa !0
  %cmp4 = icmp slt i32 %add, %6
  %add6 = add nsw i32 %sc.059, 1
  br i1 %cmp4, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([9 x i8]* @.str24, i64 0, i64 0), i32 %add6, double %call2) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %7 = load i32* %highscore, align 4, !tbaa !0
  %cmp = icmp slt i32 %sc.059, %7
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.inc, %entry
  %8 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str25, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %fp)
  %fit_type = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 8
  %9 = load i32* %fit_type, align 4, !tbaa !0
  %cmp9 = icmp eq i32 %9, 0
  br i1 %cmp9, label %if.end32, label %if.then11

if.then11:                                        ; preds = %for.end
  %10 = load i32* %lowscore, align 4, !tbaa !0
  %11 = load i32* %highscore, align 4, !tbaa !0
  %cmp1556 = icmp sgt i32 %10, %11
  br i1 %cmp1556, label %for.end30, label %for.body17.lr.ph

for.body17.lr.ph:                                 ; preds = %if.then11
  %arrayidx19 = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 9, i64 0
  %arrayidx21 = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 9, i64 1
  br label %for.body17

for.body17:                                       ; preds = %for.body17, %for.body17.lr.ph
  %sc.157 = phi i32 [ %10, %for.body17.lr.ph ], [ %inc29, %for.body17 ]
  %conv18 = sitofp i32 %sc.157 to float
  %12 = load float* %arrayidx19, align 4, !tbaa !4
  %13 = load float* %arrayidx21, align 4, !tbaa !4
  %call22 = tail call double @ExtremeValueP(float %conv18, float %12, float %13) #6
  %sub23 = fsub double 1.000000e+00, %call22
  %call24 = tail call double @log(double %sub23) #4
  %mul25 = fmul double %call24, -1.000000e+00
  %call26 = tail call double @log(double %mul25) #4
  %call27 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([9 x i8]* @.str24, i64 0, i64 0), i32 %sc.157, double %call26) #4
  %inc29 = add nsw i32 %sc.157, 1
  %14 = load i32* %highscore, align 4, !tbaa !0
  %cmp15 = icmp slt i32 %sc.157, %14
  br i1 %cmp15, label %for.body17, label %for.end30

for.end30:                                        ; preds = %for.body17, %if.then11
  %15 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str25, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %fp)
  br label %if.end32

if.end32:                                         ; preds = %for.end, %for.end30
  ret void
}

; Function Attrs: nounwind optsize
declare double @log(double) #2

; Function Attrs: nounwind optsize uwtable
define void @EVDBasicFit(%struct.histogram_s* nocapture %h) #0 {
entry:
  %slope = alloca float, align 4
  %intercept = alloca float, align 4
  %corr = alloca float, align 4
  %highscore = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 3
  %0 = load i32* %highscore, align 4, !tbaa !0
  %lowscore = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 4
  %1 = load i32* %lowscore, align 4, !tbaa !0
  %sub = sub nsw i32 %0, %1
  %add = add nsw i32 %sub, 1
  %conv = sext i32 %add to i64
  %mul = shl nsw i64 %conv, 2
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i32 492, i64 %mul) #4
  %2 = bitcast i8* %call to float*
  %call3 = call i8* @sre_malloc(i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i32 493, i64 %mul) #4
  %3 = bitcast i8* %call3 to float*
  %cmp109 = icmp sgt i32 %sub, -1
  br i1 %cmp109, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv111 = phi i64 [ %indvars.iv.next112, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds float* %3, i64 %indvars.iv111
  store float 0.000000e+00, float* %arrayidx, align 4, !tbaa !4
  %arrayidx6 = getelementptr inbounds float* %2, i64 %indvars.iv111
  store float 0.000000e+00, float* %arrayidx6, align 4, !tbaa !4
  %indvars.iv.next112 = add i64 %indvars.iv111, 1
  %4 = trunc i64 %indvars.iv.next112 to i32
  %cmp = icmp slt i32 %4, %add
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  %5 = load i32* %lowscore, align 4, !tbaa !0
  %6 = load i32* %highscore, align 4, !tbaa !0
  %cmp10106 = icmp sgt i32 %5, %6
  br i1 %cmp10106, label %for.end31, label %for.body12.lr.ph

for.body12.lr.ph:                                 ; preds = %for.end
  %min = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 1
  %7 = load i32* %min, align 4, !tbaa !0
  %histogram = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 0
  %8 = load i32** %histogram, align 8, !tbaa !3
  %total = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 6
  %9 = load i32* %total, align 4, !tbaa !0
  %conv18 = sitofp i32 %9 to float
  %10 = sext i32 %5 to i64
  br label %for.body12

for.body12:                                       ; preds = %for.body12, %for.body12.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body12 ], [ %10, %for.body12.lr.ph ]
  %sum.0108 = phi i32 [ %add16, %for.body12 ], [ 0, %for.body12.lr.ph ]
  %11 = trunc i64 %indvars.iv to i32
  %sub13 = sub nsw i32 %11, %7
  %idxprom14 = sext i32 %sub13 to i64
  %arrayidx15 = getelementptr inbounds i32* %8, i64 %idxprom14
  %12 = load i32* %arrayidx15, align 4, !tbaa !0
  %add16 = add nsw i32 %12, %sum.0108
  %conv17 = sitofp i32 %add16 to float
  %div = fdiv float %conv17, %conv18
  %sub20 = sub nsw i32 %11, %5
  %idxprom21 = sext i32 %sub20 to i64
  %arrayidx22 = getelementptr inbounds float* %2, i64 %idxprom21
  store float %div, float* %arrayidx22, align 4, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %13 = trunc i64 %indvars.iv.next to i32
  %conv24 = sitofp i32 %13 to float
  %arrayidx28 = getelementptr inbounds float* %3, i64 %idxprom21
  store float %conv24, float* %arrayidx28, align 4, !tbaa !4
  %cmp10 = icmp slt i32 %11, %6
  br i1 %cmp10, label %for.body12, label %for.end31

for.end31:                                        ; preds = %for.body12, %for.end
  %cmp35104 = icmp slt i32 %5, %6
  br i1 %cmp35104, label %for.body37, label %for.end53

for.body37:                                       ; preds = %for.end31, %for.body37
  %14 = phi i32 [ %16, %for.body37 ], [ %5, %for.end31 ]
  %sc.1105 = phi i32 [ %inc52, %for.body37 ], [ %5, %for.end31 ]
  %sub39 = sub nsw i32 %sc.1105, %14
  %idxprom40 = sext i32 %sub39 to i64
  %arrayidx41 = getelementptr inbounds float* %2, i64 %idxprom40
  %15 = load float* %arrayidx41, align 4, !tbaa !4
  %conv42 = fpext float %15 to double
  %call43 = call double @log(double %conv42) #4
  %mul44 = fmul double %call43, -1.000000e+00
  %call45 = call double @log(double %mul44) #4
  %conv46 = fptrunc double %call45 to float
  %16 = load i32* %lowscore, align 4, !tbaa !0
  %sub48 = sub nsw i32 %sc.1105, %16
  %idxprom49 = sext i32 %sub48 to i64
  %arrayidx50 = getelementptr inbounds float* %2, i64 %idxprom49
  store float %conv46, float* %arrayidx50, align 4, !tbaa !4
  %inc52 = add nsw i32 %sc.1105, 1
  %17 = load i32* %highscore, align 4, !tbaa !0
  %cmp35 = icmp slt i32 %inc52, %17
  br i1 %cmp35, label %for.body37, label %for.end53

for.end53:                                        ; preds = %for.body37, %for.end31
  %call55 = call i32 @Linefit(float* %3, float* %2, i32 %sub, float* %intercept, float* %slope, float* %corr) #4
  %18 = load float* %slope, align 4, !tbaa !4
  %conv58 = fmul float %18, -1.000000e+00
  %19 = load float* %intercept, align 4, !tbaa !4
  %div59 = fdiv float %19, %conv58
  %20 = load i32* %lowscore, align 4, !tbaa !0
  %conv61 = sitofp i32 %20 to float
  %21 = load i32* %highscore, align 4, !tbaa !0
  %conv63 = sitofp i32 %21 to float
  call void @ExtremeValueSetHistogram(%struct.histogram_s* %h, float %div59, float %conv58, float %conv61, float %conv63, i32 2) #6
  call void @free(i8* %call3) #4
  call void @free(i8* %call) #4
  ret void
}

; Function Attrs: optsize
declare i32 @Linefit(float*, float*, i32, float*, float*, float*) #1

; Function Attrs: nounwind optsize uwtable
define void @ExtremeValueSetHistogram(%struct.histogram_s* nocapture %h, float %mu, float %lambda, float %lowbound, float %highbound, i32 %ndegrees) #0 {
entry:
  %expect.i = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 7
  %0 = load float** %expect.i, align 8, !tbaa !3
  %cmp.i = icmp eq float* %0, null
  br i1 %cmp.i, label %UnfitHistogram.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %1 = bitcast float* %0 to i8*
  tail call void @free(i8* %1) #4
  br label %UnfitHistogram.exit

UnfitHistogram.exit:                              ; preds = %entry, %if.then.i
  store float* null, float** %expect.i, align 8, !tbaa !3
  %fit_type.i = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 8
  store i32 1, i32* %fit_type.i, align 4, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 9, i64 1
  store float %lambda, float* %arrayidx, align 4, !tbaa !4
  %arrayidx2 = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 9, i64 0
  store float %mu, float* %arrayidx2, align 4, !tbaa !4
  %max = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 2
  %2 = load i32* %max, align 4, !tbaa !0
  %min = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 1
  %3 = load i32* %min, align 4, !tbaa !0
  %sub = sub nsw i32 %2, %3
  %add = add nsw i32 %sub, 1
  %conv = sext i32 %add to i64
  %mul = shl nsw i64 %conv, 2
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i32 696, i64 %mul) #4
  %4 = bitcast i8* %call to float*
  store float* %4, float** %expect.i, align 8, !tbaa !3
  %cmp154 = icmp sgt i32 %sub, -1
  br i1 %cmp154, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %UnfitHistogram.exit
  %5 = add i32 %2, 1
  %6 = sub i32 %5, %3
  %7 = icmp sgt i32 %6, 1
  %.op = add i32 %6, -1
  %8 = zext i32 %.op to i64
  %.op158 = shl nuw nsw i64 %8, 2
  %.op158.op = add i64 %.op158, 4
  %9 = select i1 %7, i64 %.op158.op, i64 4
  call void @llvm.memset.p0i8.i64(i8* %call, i8 0, i64 %9, i32 4, i1 false)
  br label %for.end

for.end:                                          ; preds = %for.body.lr.ph, %UnfitHistogram.exit
  %10 = load i32* %min, align 4, !tbaa !0
  %11 = load i32* %max, align 4, !tbaa !0
  %cmp9152 = icmp sgt i32 %10, %11
  br i1 %cmp9152, label %for.end35, label %for.body11.lr.ph

for.body11.lr.ph:                                 ; preds = %for.end
  %total = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 6
  br label %for.body11

for.body11:                                       ; preds = %for.body11, %for.body11.lr.ph
  %sc.0153 = phi i32 [ %10, %for.body11.lr.ph ], [ %add18, %for.body11 ]
  %conv12 = sitofp i32 %sc.0153 to float
  %12 = load float* %arrayidx2, align 4, !tbaa !4
  %13 = load float* %arrayidx, align 4, !tbaa !4
  %14 = load i32* %total, align 4, !tbaa !0
  %conv.i = sitofp i32 %14 to double
  %call.i = tail call double @ExtremeValueP(float %conv12, float %12, float %13) #4
  %mul.i = fmul double %conv.i, %call.i
  %add18 = add nsw i32 %sc.0153, 1
  %conv19 = sitofp i32 %add18 to float
  %15 = load float* %arrayidx2, align 4, !tbaa !4
  %16 = load float* %arrayidx, align 4, !tbaa !4
  %17 = load i32* %total, align 4, !tbaa !0
  %conv.i145 = sitofp i32 %17 to double
  %call.i146 = tail call double @ExtremeValueP(float %conv19, float %15, float %16) #4
  %mul.i147 = fmul double %conv.i145, %call.i146
  %sub26 = fsub double %mul.i, %mul.i147
  %conv27 = fptrunc double %sub26 to float
  %18 = load i32* %min, align 4, !tbaa !0
  %sub29 = sub nsw i32 %sc.0153, %18
  %idxprom30 = sext i32 %sub29 to i64
  %19 = load float** %expect.i, align 8, !tbaa !3
  %arrayidx32 = getelementptr inbounds float* %19, i64 %idxprom30
  store float %conv27, float* %arrayidx32, align 4, !tbaa !4
  %20 = load i32* %max, align 4, !tbaa !0
  %cmp9 = icmp slt i32 %sc.0153, %20
  br i1 %cmp9, label %for.body11, label %for.end35

for.end35:                                        ; preds = %for.body11, %for.end
  %21 = phi i32 [ %10, %for.end ], [ %18, %for.body11 ]
  %chisq = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 10
  store float 0.000000e+00, float* %chisq, align 4, !tbaa !4
  %conv36 = fptosi float %lowbound to i32
  %conv38148 = sitofp i32 %conv36 to float
  %cmp39149 = fcmp ugt float %conv38148, %highbound
  br i1 %cmp39149, label %for.end79, label %for.body41.lr.ph

for.body41.lr.ph:                                 ; preds = %for.end35
  %22 = load float** %expect.i, align 8, !tbaa !3
  %histogram = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 0
  %23 = sext i32 %conv36 to i64
  br label %for.body41

for.body41:                                       ; preds = %for.body41.lr.ph, %for.inc77
  %24 = phi float [ 0.000000e+00, %for.body41.lr.ph ], [ %29, %for.inc77 ]
  %indvars.iv = phi i64 [ %23, %for.body41.lr.ph ], [ %indvars.iv.next, %for.inc77 ]
  %nbins.0150 = phi i32 [ 0, %for.body41.lr.ph ], [ %nbins.1, %for.inc77 ]
  %25 = trunc i64 %indvars.iv to i32
  %sub43 = sub nsw i32 %25, %21
  %idxprom44 = sext i32 %sub43 to i64
  %arrayidx46 = getelementptr inbounds float* %22, i64 %idxprom44
  %26 = load float* %arrayidx46, align 4, !tbaa !4
  %cmp48 = fcmp ult float %26, 5.000000e+00
  br i1 %cmp48, label %for.inc77, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body41
  %27 = load i32** %histogram, align 8, !tbaa !3
  %arrayidx53 = getelementptr inbounds i32* %27, i64 %idxprom44
  %28 = load i32* %arrayidx53, align 4, !tbaa !0
  %cmp54 = icmp sgt i32 %28, 4
  br i1 %cmp54, label %if.then, label %for.inc77

if.then:                                          ; preds = %land.lhs.true
  %conv61 = sitofp i32 %28 to float
  %sub67 = fsub float %conv61, %26
  %mul68 = fmul float %sub67, %sub67
  %div = fdiv float %mul68, %26
  %add75 = fadd float %div, %24
  store float %add75, float* %chisq, align 4, !tbaa !4
  %inc76 = add nsw i32 %nbins.0150, 1
  br label %for.inc77

for.inc77:                                        ; preds = %for.body41, %land.lhs.true, %if.then
  %29 = phi float [ %add75, %if.then ], [ %24, %land.lhs.true ], [ %24, %for.body41 ]
  %nbins.1 = phi i32 [ %inc76, %if.then ], [ %nbins.0150, %land.lhs.true ], [ %nbins.0150, %for.body41 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %30 = trunc i64 %indvars.iv.next to i32
  %conv38 = sitofp i32 %30 to float
  %cmp39 = fcmp ugt float %conv38, %highbound
  br i1 %cmp39, label %for.end79, label %for.body41

for.end79:                                        ; preds = %for.inc77, %for.end35
  %31 = phi float [ 0.000000e+00, %for.end35 ], [ %29, %for.inc77 ]
  %nbins.0.lcssa = phi i32 [ 0, %for.end35 ], [ %nbins.1, %for.inc77 ]
  %add80 = add nsw i32 %ndegrees, 1
  %cmp81 = icmp sgt i32 %nbins.0.lcssa, %add80
  br i1 %cmp81, label %if.then83, label %if.else

if.then83:                                        ; preds = %for.end79
  %sub84 = xor i32 %ndegrees, -1
  %sub85 = add i32 %nbins.0.lcssa, %sub84
  %conv86 = sitofp i32 %sub85 to double
  %div87 = fmul double %conv86, 5.000000e-01
  %conv89 = fpext float %31 to double
  %div90 = fmul double %conv89, 5.000000e-01
  %call91 = tail call double @IncompleteGamma(double %div87, double %div90) #4
  %conv92 = fptrunc double %call91 to float
  %chip = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 11
  store float %conv92, float* %chip, align 4, !tbaa !4
  br label %if.end94

if.else:                                          ; preds = %for.end79
  %chip93 = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 11
  store float 0.000000e+00, float* %chip93, align 4, !tbaa !4
  br label %if.end94

if.end94:                                         ; preds = %if.else, %if.then83
  ret void
}

; Function Attrs: nounwind optsize uwtable
define i32 @ExtremeValueFitHistogram(%struct.histogram_s* nocapture %h, i32 %censor, float %high_hint) #0 {
entry:
  %lambda = alloca float, align 4
  %mu = alloca float, align 4
  %lowscore = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 4
  %0 = load i32* %lowscore, align 4, !tbaa !0
  %tobool = icmp ne i32 %censor, 0
  %highscore = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 3
  %1 = load i32* %highscore, align 4, !tbaa !0
  %tobool.not = xor i1 %tobool, true
  %cmp232 = icmp sgt i32 %0, %1
  %or.cond = or i1 %cmp232, %tobool.not
  br i1 %or.cond, label %if.end9, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %min = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 1
  %2 = load i32* %min, align 4, !tbaa !0
  %histogram = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 0
  %3 = load i32** %histogram, align 8, !tbaa !3
  %4 = sext i32 %0 to i64
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv237 = phi i64 [ %indvars.iv.next238, %for.body ], [ %4, %for.body.lr.ph ]
  %max.0235 = phi i32 [ %.max.0, %for.body ], [ -1, %for.body.lr.ph ]
  %lowbound.0234 = phi i32 [ %sc.0.lowbound.0, %for.body ], [ %0, %for.body.lr.ph ]
  %5 = trunc i64 %indvars.iv237 to i32
  %sub = sub nsw i32 %5, %2
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i32* %3, i64 %idxprom
  %6 = load i32* %arrayidx, align 4, !tbaa !0
  %cmp2 = icmp sgt i32 %6, %max.0235
  %sc.0.lowbound.0 = select i1 %cmp2, i32 %5, i32 %lowbound.0234
  %.max.0 = select i1 %cmp2, i32 %6, i32 %max.0235
  %indvars.iv.next238 = add i64 %indvars.iv237, 1
  %cmp = icmp slt i32 %5, %1
  br i1 %cmp, label %for.body, label %if.end9

if.end9:                                          ; preds = %entry, %for.body
  %lowbound.2 = phi i32 [ %sc.0.lowbound.0, %for.body ], [ %0, %entry ]
  %conv = sitofp i32 %1 to float
  %cmp11 = fcmp ogt float %conv, %high_hint
  %high_hint.conv = select i1 %cmp11, float %high_hint, float %conv
  %conv15 = fptosi float %high_hint.conv to i32
  %total = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 6
  %conv108 = sitofp i32 %lowbound.2 to float
  %min40 = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 1
  %histogram43 = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 0
  %7 = sext i32 %lowbound.2 to i64
  br label %for.body19

for.cond16:                                       ; preds = %if.end118
  %cmp17 = icmp slt i32 %inc138, 100
  br i1 %cmp17, label %for.body19, label %for.end139

for.body19:                                       ; preds = %if.end9, %for.cond16
  %8 = phi float [ undef, %if.end9 ], [ %21, %for.cond16 ]
  %9 = phi float [ undef, %if.end9 ], [ %20, %for.cond16 ]
  %iteration.0231 = phi i32 [ 0, %if.end9 ], [ %inc138, %for.cond16 ]
  %highbound.0230 = phi i32 [ %conv15, %if.end9 ], [ %conv132, %for.cond16 ]
  %z.0229 = phi i32 [ undef, %if.end9 ], [ %z.1222, %for.cond16 ]
  %sub20 = sub nsw i32 %highbound.0230, %lowbound.2
  %add = add nsw i32 %sub20, 1
  %cmp21 = icmp slt i32 %add, 5
  br i1 %cmp21, label %FITFAILED, label %if.end24

if.end24:                                         ; preds = %for.body19
  %conv25 = sext i32 %add to i64
  %mul = shl nsw i64 %conv25, 2
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i32 600, i64 %mul) #4
  %10 = bitcast i8* %call to float*
  %call28 = call i8* @sre_malloc(i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i32 601, i64 %mul) #4
  %11 = bitcast i8* %call28 to i32*
  %cmp30225 = icmp sgt i32 %lowbound.2, %highbound.0230
  br i1 %cmp30225, label %FITFAILED, label %for.body32.lr.ph

for.body32.lr.ph:                                 ; preds = %if.end24
  %12 = load i32** %histogram43, align 8, !tbaa !3
  %.pre = load i32* %min40, align 4, !tbaa !0
  br label %for.body32

for.body32:                                       ; preds = %for.body32, %for.body32.lr.ph
  %13 = phi i32 [ %16, %for.body32 ], [ %.pre, %for.body32.lr.ph ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body32 ], [ %7, %for.body32.lr.ph ]
  %n.0226 = phi i32 [ %add53, %for.body32 ], [ 0, %for.body32.lr.ph ]
  %14 = trunc i64 %indvars.iv to i32
  %conv33 = sitofp i32 %14 to float
  %conv36 = fadd float %conv33, 5.000000e-01
  %sub37 = sub nsw i32 %14, %lowbound.2
  %idxprom38 = sext i32 %sub37 to i64
  %arrayidx39 = getelementptr inbounds float* %10, i64 %idxprom38
  store float %conv36, float* %arrayidx39, align 4, !tbaa !4
  %sub41 = sub nsw i32 %14, %13
  %idxprom42 = sext i32 %sub41 to i64
  %arrayidx44 = getelementptr inbounds i32* %12, i64 %idxprom42
  %15 = load i32* %arrayidx44, align 4, !tbaa !0
  %arrayidx47 = getelementptr inbounds i32* %11, i64 %idxprom38
  store i32 %15, i32* %arrayidx47, align 4, !tbaa !0
  %16 = load i32* %min40, align 4, !tbaa !0
  %sub49 = sub nsw i32 %14, %16
  %idxprom50 = sext i32 %sub49 to i64
  %arrayidx52 = getelementptr inbounds i32* %12, i64 %idxprom50
  %17 = load i32* %arrayidx52, align 4, !tbaa !0
  %add53 = add nsw i32 %17, %n.0226
  %indvars.iv.next = add i64 %indvars.iv, 1
  %cmp30 = icmp slt i32 %14, %highbound.0230
  br i1 %cmp30, label %for.body32, label %for.end56

for.end56:                                        ; preds = %for.body32
  %cmp57 = icmp slt i32 %add53, 100
  br i1 %cmp57, label %FITFAILED, label %if.end60

if.end60:                                         ; preds = %for.end56
  br i1 %tobool, label %if.then62, label %if.else113

if.then62:                                        ; preds = %if.end60
  %cmp63 = icmp eq i32 %iteration.0231, 0
  br i1 %cmp63, label %if.end105, label %if.end105.thread

if.end105.thread:                                 ; preds = %if.then62
  %conv.i = fpext float %8 to double
  %mul.i = fmul double %conv.i, -1.000000e+00
  %sub.i = fsub float %conv108, %9
  %conv1.i = fpext float %sub.i to double
  %mul2.i = fmul double %conv1.i, %mul.i
  %call.i = call double @exp(double %mul2.i) #4
  %mul3.i = fmul double %call.i, -1.000000e+00
  %call4.i = call double @exp(double %mul3.i) #4
  %18 = load i32* %total, align 4, !tbaa !0
  %sub86 = sub nsw i32 %18, %add53
  %conv87 = sitofp i32 %add53 to double
  %mul88 = fmul double %conv87, %call4.i
  %sub89 = fsub double 1.000000e+00, %call4.i
  %div = fdiv double %mul88, %sub89
  %conv90 = fptosi double %div to i32
  %cmp91 = icmp slt i32 %sub86, %conv90
  %sub86.conv90 = select i1 %cmp91, i32 %sub86, i32 %conv90
  br label %if.then107

if.end105:                                        ; preds = %if.then62
  %19 = load i32* %total, align 4, !tbaa !0
  %sub66 = sub nsw i32 %19, %add53
  %conv67 = sitofp i32 %add53 to float
  %conv68 = fpext float %conv67 to double
  %mul69 = fmul double %conv68, 5.819800e-01
  %conv70 = fptosi double %mul69 to i32
  %cmp71 = icmp slt i32 %sub66, %conv70
  %sub66.conv70 = select i1 %cmp71, i32 %sub66, i32 %conv70
  br label %if.then107

if.then107:                                       ; preds = %if.end105, %if.end105.thread
  %z.1221 = phi i32 [ %sub86.conv90, %if.end105.thread ], [ %sub66.conv70, %if.end105 ]
  %call109 = call i32 @EVDCensoredFit(float* %10, i32* %11, i32 %add, i32 %z.1221, float %conv108, float* %mu, float* %lambda) #6
  %tobool110 = icmp eq i32 %call109, 0
  br i1 %tobool110, label %FITFAILED, label %if.end118

if.else113:                                       ; preds = %if.end60
  %call114 = call i32 @EVDMaxLikelyFit(float* %10, i32* %11, i32 %add, float* %mu, float* %lambda) #6
  %tobool115 = icmp eq i32 %call114, 0
  br i1 %tobool115, label %FITFAILED, label %if.end118

if.end118:                                        ; preds = %if.then107, %if.else113
  %z.1222 = phi i32 [ %z.1221, %if.then107 ], [ %z.0229, %if.else113 ]
  %20 = load float* %mu, align 4, !tbaa !4
  %conv119 = fpext float %20 to double
  %add120 = add nsw i32 %z.1222, %add53
  %sub121 = add nsw i32 %add120, -1
  %conv122 = sitofp i32 %sub121 to double
  %conv124 = sitofp i32 %add120 to double
  %div125 = fdiv double %conv122, %conv124
  %call126 = call double @log(double %div125) #4
  %mul127 = fmul double %call126, -1.000000e+00
  %call128 = call double @log(double %mul127) #4
  %21 = load float* %lambda, align 4, !tbaa !4
  %conv129 = fpext float %21 to double
  %div130 = fdiv double %call128, %conv129
  %sub131 = fsub double %conv119, %div130
  %conv132 = fptosi double %sub131 to i32
  call void @free(i8* %call) #4
  call void @free(i8* %call28) #4
  %cmp133 = icmp slt i32 %conv132, %highbound.0230
  %inc138 = add nsw i32 %iteration.0231, 1
  br i1 %cmp133, label %for.cond16, label %for.end139

for.end139:                                       ; preds = %if.end118, %for.cond16
  %highbound.0.lcssa = phi i32 [ %highbound.0230, %if.end118 ], [ %conv132, %for.cond16 ]
  %conv141 = sitofp i32 %highbound.0.lcssa to float
  call void @ExtremeValueSetHistogram(%struct.histogram_s* %h, float %20, float %21, float %conv108, float %conv141, i32 1) #6
  br label %return

FITFAILED:                                        ; preds = %if.end24, %if.then107, %if.else113, %for.end56, %for.body19
  %y.0 = phi i32* [ null, %for.body19 ], [ %11, %for.end56 ], [ %11, %if.then107 ], [ %11, %if.else113 ], [ %11, %if.end24 ]
  %x.0 = phi float* [ null, %for.body19 ], [ %10, %for.end56 ], [ %10, %if.then107 ], [ %10, %if.else113 ], [ %10, %if.end24 ]
  %expect.i = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 7
  %22 = load float** %expect.i, align 8, !tbaa !3
  %cmp.i = icmp eq float* %22, null
  br i1 %cmp.i, label %UnfitHistogram.exit, label %if.then.i

if.then.i:                                        ; preds = %FITFAILED
  %23 = bitcast float* %22 to i8*
  call void @free(i8* %23) #4
  br label %UnfitHistogram.exit

UnfitHistogram.exit:                              ; preds = %FITFAILED, %if.then.i
  store float* null, float** %expect.i, align 8, !tbaa !3
  %fit_type.i = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 8
  store i32 0, i32* %fit_type.i, align 4, !tbaa !0
  %cmp142 = icmp eq float* %x.0, null
  br i1 %cmp142, label %if.end145, label %if.then144

if.then144:                                       ; preds = %UnfitHistogram.exit
  %24 = bitcast float* %x.0 to i8*
  call void @free(i8* %24) #4
  br label %if.end145

if.end145:                                        ; preds = %UnfitHistogram.exit, %if.then144
  %cmp146 = icmp eq i32* %y.0, null
  br i1 %cmp146, label %return, label %if.then148

if.then148:                                       ; preds = %if.end145
  %25 = bitcast i32* %y.0 to i8*
  call void @free(i8* %25) #4
  br label %return

return:                                           ; preds = %if.then148, %if.end145, %for.end139
  %retval.0 = phi i32 [ 1, %for.end139 ], [ 0, %if.end145 ], [ 0, %if.then148 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define double @EVDDistribution(float %x, float %mu, float %lambda) #0 {
entry:
  %conv = fpext float %lambda to double
  %mul = fmul double %conv, -1.000000e+00
  %sub = fsub float %x, %mu
  %conv1 = fpext float %sub to double
  %mul2 = fmul double %conv1, %mul
  %call = tail call double @exp(double %mul2) #4
  %mul3 = fmul double %call, -1.000000e+00
  %call4 = tail call double @exp(double %mul3) #4
  ret double %call4
}

; Function Attrs: nounwind optsize uwtable
define i32 @EVDCensoredFit(float* nocapture %x, i32* %y, i32 %n, i32 %z, float %c, float* nocapture %ret_mu, float* nocapture %ret_lambda) #0 {
entry:
  %fx = alloca float, align 4
  %dfx = alloca float, align 4
  br label %for.body

for.body:                                         ; preds = %entry, %if.end
  %i.0172 = phi i32 [ 0, %entry ], [ %inc, %if.end ]
  %lambda.0171 = phi float [ 0x3FC99999A0000000, %entry ], [ %lambda.1, %if.end ]
  call void @Lawless422(float* %x, i32* %y, i32 %n, i32 %z, float %c, float %lambda.0171, float* %fx, float* %dfx) #6
  %0 = load float* %fx, align 4, !tbaa !4
  %fabsf158 = call float @fabsf(float %0) #5
  %cmp2 = fcmp olt float %fabsf158, 0x3EE4F8B580000000
  br i1 %cmp2, label %for.end, label %if.end

if.end:                                           ; preds = %for.body
  %1 = load float* %dfx, align 4, !tbaa !4
  %div = fdiv float %0, %1
  %sub = fsub float %lambda.0171, %div
  %cmp5 = fcmp ugt float %sub, 0.000000e+00
  %lambda.1 = select i1 %cmp5, float %sub, float 0x3F50624DE0000000
  %inc = add nsw i32 %i.0172, 1
  %cmp = icmp slt i32 %inc, 100
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %if.end
  %i.0.lcssa = phi i32 [ %i.0172, %for.body ], [ %inc, %if.end ]
  %lambda.0.lcssa = phi float [ %lambda.0171, %for.body ], [ %lambda.1, %if.end ]
  %cmp9 = icmp eq i32 %i.0.lcssa, 100
  br i1 %cmp9, label %if.then11, label %if.end69

if.then11:                                        ; preds = %for.end
  call void @Lawless422(float* %x, i32* %y, i32 %n, i32 %z, float %c, float 0x3FC99999A0000000, float* %fx, float* %dfx) #6
  %2 = load float* %fx, align 4, !tbaa !4
  %cmp13 = fcmp olt float %2, 0.000000e+00
  br i1 %cmp13, label %do.body, label %do.body27

do.body:                                          ; preds = %if.then11, %if.end23
  %left.0 = phi float [ %conv18, %if.end23 ], [ 0x3FC99999A0000000, %if.then11 ]
  %conv16 = fpext float %left.0 to double
  %sub17 = fadd double %conv16, -3.000000e-02
  %conv18 = fptrunc double %sub17 to float
  %cmp20 = fcmp olt float %conv18, 0.000000e+00
  br i1 %cmp20, label %return, label %if.end23

if.end23:                                         ; preds = %do.body
  call void @Lawless422(float* %x, i32* %y, i32 %n, i32 %z, float %c, float %conv18, float* %fx, float* %dfx) #6
  %3 = load float* %fx, align 4, !tbaa !4
  %cmp25 = fcmp olt float %3, 0.000000e+00
  br i1 %cmp25, label %do.body, label %for.body44

do.body27:                                        ; preds = %if.then11, %do.cond35
  %right.0 = phi float [ %conv29, %do.cond35 ], [ 0x3FC99999A0000000, %if.then11 ]
  %conv28 = fpext float %right.0 to double
  %add = fadd double %conv28, 1.000000e-01
  %conv29 = fptrunc double %add to float
  call void @Lawless422(float* %x, i32* %y, i32 %n, i32 %z, float %c, float 0x3FC99999A0000000, float* %fx, float* %dfx) #6
  %cmp31 = fcmp ogt float %conv29, 1.000000e+02
  br i1 %cmp31, label %return, label %do.cond35

do.cond35:                                        ; preds = %do.body27
  %4 = load float* %fx, align 4, !tbaa !4
  %cmp37 = fcmp ogt float %4, 0.000000e+00
  br i1 %cmp37, label %do.body27, label %for.body44

for.body44:                                       ; preds = %if.end23, %do.cond35, %if.end55
  %right.2166 = phi float [ %right.2.conv48, %if.end55 ], [ 0x3FC99999A0000000, %if.end23 ], [ %conv29, %do.cond35 ]
  %left.2165 = phi float [ %conv48.left.2, %if.end55 ], [ %conv18, %if.end23 ], [ 0x3FC99999A0000000, %do.cond35 ]
  %i.1164 = phi i32 [ %inc63, %if.end55 ], [ 0, %if.end23 ], [ 0, %do.cond35 ]
  %add45 = fadd float %left.2165, %right.2166
  %conv48 = fmul float %add45, 5.000000e-01
  call void @Lawless422(float* %x, i32* %y, i32 %n, i32 %z, float %c, float %left.2165, float* %fx, float* %dfx) #6
  %5 = load float* %fx, align 4, !tbaa !4
  %fabsf = call float @fabsf(float %5) #5
  %cmp52 = fcmp olt float %fabsf, 0x3EE4F8B580000000
  br i1 %cmp52, label %for.end64, label %if.end55

if.end55:                                         ; preds = %for.body44
  %cmp57 = fcmp ogt float %5, 0.000000e+00
  %conv48.left.2 = select i1 %cmp57, float %conv48, float %left.2165
  %right.2.conv48 = select i1 %cmp57, float %right.2166, float %conv48
  %inc63 = add nsw i32 %i.1164, 1
  %cmp42 = icmp slt i32 %inc63, 100
  br i1 %cmp42, label %for.body44, label %for.end64

for.end64:                                        ; preds = %for.body44, %if.end55
  %i.1.lcssa = phi i32 [ %i.1164, %for.body44 ], [ %inc63, %if.end55 ]
  %cmp65 = icmp eq i32 %i.1.lcssa, 100
  br i1 %cmp65, label %return, label %if.end69

if.end69:                                         ; preds = %for.end64, %for.end
  %lambda.2 = phi float [ %lambda.0.lcssa, %for.end ], [ %conv48, %for.end64 ]
  %cmp71159 = icmp sgt i32 %n, 0
  br i1 %cmp71159, label %for.body73.lr.ph, label %if.end69.for.end88_crit_edge

if.end69.for.end88_crit_edge:                     ; preds = %if.end69
  %conv90.pre = fpext float %lambda.2 to double
  %mul91.pre = fmul double %conv90.pre, -1.000000e+00
  br label %for.end88

for.body73.lr.ph:                                 ; preds = %if.end69
  %cmp74 = icmp eq i32* %y, null
  %conv77 = fpext float %lambda.2 to double
  %mul = fmul double %conv77, -1.000000e+00
  br label %for.body73

for.body73:                                       ; preds = %cond.end, %for.body73.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body73.lr.ph ], [ %indvars.iv.next, %cond.end ]
  %total.0161 = phi double [ 0.000000e+00, %for.body73.lr.ph ], [ %add85, %cond.end ]
  %esum.0160 = phi double [ 0.000000e+00, %for.body73.lr.ph ], [ %add84, %cond.end ]
  br i1 %cmp74, label %cond.end, label %cond.false

cond.false:                                       ; preds = %for.body73
  %arrayidx = getelementptr inbounds i32* %y, i64 %indvars.iv
  %6 = load i32* %arrayidx, align 4, !tbaa !0
  %conv76 = sitofp i32 %6 to double
  br label %cond.end

cond.end:                                         ; preds = %for.body73, %cond.false
  %cond = phi double [ %conv76, %cond.false ], [ 1.000000e+00, %for.body73 ]
  %arrayidx79 = getelementptr inbounds float* %x, i64 %indvars.iv
  %7 = load float* %arrayidx79, align 4, !tbaa !4
  %conv80 = fpext float %7 to double
  %mul81 = fmul double %mul, %conv80
  %call82 = call double @exp(double %mul81) #4
  %mul83 = fmul double %cond, %call82
  %add84 = fadd double %esum.0160, %mul83
  %add85 = fadd double %total.0161, %cond
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end88, label %for.body73

for.end88:                                        ; preds = %cond.end, %if.end69.for.end88_crit_edge
  %mul91.pre-phi = phi double [ %mul91.pre, %if.end69.for.end88_crit_edge ], [ %mul, %cond.end ]
  %conv90.pre-phi = phi double [ %conv90.pre, %if.end69.for.end88_crit_edge ], [ %conv77, %cond.end ]
  %total.0.lcssa = phi double [ 0.000000e+00, %if.end69.for.end88_crit_edge ], [ %add85, %cond.end ]
  %esum.0.lcssa = phi double [ 0.000000e+00, %if.end69.for.end88_crit_edge ], [ %add84, %cond.end ]
  %conv89 = sitofp i32 %z to double
  %conv92 = fpext float %c to double
  %mul93 = fmul double %conv92, %mul91.pre-phi
  %call94 = call double @exp(double %mul93) #4
  %mul95 = fmul double %conv89, %call94
  %add96 = fadd double %esum.0.lcssa, %mul95
  %div97 = fdiv double %add96, %total.0.lcssa
  %call98 = call double @log(double %div97) #4
  %mul99 = fmul double %call98, -1.000000e+00
  %div101 = fdiv double %mul99, %conv90.pre-phi
  %conv102 = fptrunc double %div101 to float
  store float %lambda.2, float* %ret_lambda, align 4, !tbaa !4
  store float %conv102, float* %ret_mu, align 4, !tbaa !4
  br label %return

return:                                           ; preds = %do.body27, %do.body, %for.end64, %for.end88
  %retval.0 = phi i32 [ 1, %for.end88 ], [ 0, %for.end64 ], [ 0, %do.body ], [ 0, %do.body27 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @EVDMaxLikelyFit(float* nocapture %x, i32* %c, i32 %n, float* nocapture %ret_mu, float* nocapture %ret_lambda) #0 {
entry:
  %fx = alloca float, align 4
  %dfx = alloca float, align 4
  br label %for.body

for.body:                                         ; preds = %entry, %if.end
  %i.0151 = phi i32 [ 0, %entry ], [ %inc, %if.end ]
  %lambda.0150 = phi float [ 0x3FC99999A0000000, %entry ], [ %lambda.1, %if.end ]
  call void @Lawless416(float* %x, i32* %c, i32 %n, float %lambda.0150, float* %fx, float* %dfx) #6
  %0 = load float* %fx, align 4, !tbaa !4
  %fabsf137 = call float @fabsf(float %0) #5
  %cmp2 = fcmp olt float %fabsf137, 0x3EE4F8B580000000
  br i1 %cmp2, label %for.end, label %if.end

if.end:                                           ; preds = %for.body
  %1 = load float* %dfx, align 4, !tbaa !4
  %div = fdiv float %0, %1
  %sub = fsub float %lambda.0150, %div
  %cmp5 = fcmp ugt float %sub, 0.000000e+00
  %lambda.1 = select i1 %cmp5, float %sub, float 0x3F50624DE0000000
  %inc = add nsw i32 %i.0151, 1
  %cmp = icmp slt i32 %inc, 100
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %if.end
  %i.0.lcssa = phi i32 [ %i.0151, %for.body ], [ %inc, %if.end ]
  %lambda.0.lcssa = phi float [ %lambda.0150, %for.body ], [ %lambda.1, %if.end ]
  %cmp9 = icmp eq i32 %i.0.lcssa, 100
  br i1 %cmp9, label %if.then11, label %if.end69

if.then11:                                        ; preds = %for.end
  call void @Lawless416(float* %x, i32* %c, i32 %n, float 0x3FC99999A0000000, float* %fx, float* %dfx) #6
  %2 = load float* %fx, align 4, !tbaa !4
  %cmp13 = fcmp olt float %2, 0.000000e+00
  br i1 %cmp13, label %do.body, label %do.body27

do.body:                                          ; preds = %if.then11, %if.end23
  %left.0 = phi float [ %conv18, %if.end23 ], [ 0x3FC99999A0000000, %if.then11 ]
  %conv16 = fpext float %left.0 to double
  %sub17 = fadd double %conv16, -1.000000e-01
  %conv18 = fptrunc double %sub17 to float
  %cmp20 = fcmp olt float %conv18, 0.000000e+00
  br i1 %cmp20, label %return, label %if.end23

if.end23:                                         ; preds = %do.body
  call void @Lawless416(float* %x, i32* %c, i32 %n, float %conv18, float* %fx, float* %dfx) #6
  %3 = load float* %fx, align 4, !tbaa !4
  %cmp25 = fcmp olt float %3, 0.000000e+00
  br i1 %cmp25, label %do.body, label %for.body44

do.body27:                                        ; preds = %if.then11, %do.cond35
  %right.0 = phi float [ %conv29, %do.cond35 ], [ 0x3FC99999A0000000, %if.then11 ]
  %conv28 = fpext float %right.0 to double
  %add = fadd double %conv28, 1.000000e-01
  %conv29 = fptrunc double %add to float
  call void @Lawless416(float* %x, i32* %c, i32 %n, float %conv29, float* %fx, float* %dfx) #6
  %cmp31 = fcmp ogt float %conv29, 1.000000e+02
  br i1 %cmp31, label %return, label %do.cond35

do.cond35:                                        ; preds = %do.body27
  %4 = load float* %fx, align 4, !tbaa !4
  %cmp37 = fcmp ogt float %4, 0.000000e+00
  br i1 %cmp37, label %do.body27, label %for.body44

for.body44:                                       ; preds = %if.end23, %do.cond35, %if.end55
  %right.2145 = phi float [ %right.2.conv48, %if.end55 ], [ 0x3FC99999A0000000, %if.end23 ], [ %conv29, %do.cond35 ]
  %left.2144 = phi float [ %conv48.left.2, %if.end55 ], [ %conv18, %if.end23 ], [ 0x3FC99999A0000000, %do.cond35 ]
  %i.1143 = phi i32 [ %inc63, %if.end55 ], [ 0, %if.end23 ], [ 0, %do.cond35 ]
  %add45 = fadd float %left.2144, %right.2145
  %conv48 = fmul float %add45, 5.000000e-01
  call void @Lawless416(float* %x, i32* %c, i32 %n, float %conv48, float* %fx, float* %dfx) #6
  %5 = load float* %fx, align 4, !tbaa !4
  %fabsf = call float @fabsf(float %5) #5
  %cmp52 = fcmp olt float %fabsf, 0x3EE4F8B580000000
  br i1 %cmp52, label %for.end64, label %if.end55

if.end55:                                         ; preds = %for.body44
  %cmp57 = fcmp ogt float %5, 0.000000e+00
  %conv48.left.2 = select i1 %cmp57, float %conv48, float %left.2144
  %right.2.conv48 = select i1 %cmp57, float %right.2145, float %conv48
  %inc63 = add nsw i32 %i.1143, 1
  %cmp42 = icmp slt i32 %inc63, 100
  br i1 %cmp42, label %for.body44, label %for.end64

for.end64:                                        ; preds = %for.body44, %if.end55
  %i.1.lcssa = phi i32 [ %i.1143, %for.body44 ], [ %inc63, %if.end55 ]
  %cmp65 = icmp eq i32 %i.1.lcssa, 100
  br i1 %cmp65, label %return, label %if.end69

if.end69:                                         ; preds = %for.end64, %for.end
  %lambda.2 = phi float [ %lambda.0.lcssa, %for.end ], [ %conv48, %for.end64 ]
  %cmp71138 = icmp sgt i32 %n, 0
  br i1 %cmp71138, label %for.body73.lr.ph, label %for.end87

for.body73.lr.ph:                                 ; preds = %if.end69
  %cmp74 = icmp eq i32* %c, null
  %mul = fmul float %lambda.2, -1.000000e+00
  br label %for.body73

for.body73:                                       ; preds = %cond.end, %for.body73.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body73.lr.ph ], [ %indvars.iv.next, %cond.end ]
  %total.0140 = phi double [ 0.000000e+00, %for.body73.lr.ph ], [ %add84, %cond.end ]
  %esum.0139 = phi double [ 0.000000e+00, %for.body73.lr.ph ], [ %add83, %cond.end ]
  br i1 %cmp74, label %cond.end, label %cond.false

cond.false:                                       ; preds = %for.body73
  %arrayidx = getelementptr inbounds i32* %c, i64 %indvars.iv
  %6 = load i32* %arrayidx, align 4, !tbaa !0
  %conv76 = sitofp i32 %6 to double
  br label %cond.end

cond.end:                                         ; preds = %for.body73, %cond.false
  %cond = phi double [ %conv76, %cond.false ], [ 1.000000e+00, %for.body73 ]
  %arrayidx78 = getelementptr inbounds float* %x, i64 %indvars.iv
  %7 = load float* %arrayidx78, align 4, !tbaa !4
  %mul79 = fmul float %mul, %7
  %conv80 = fpext float %mul79 to double
  %call81 = call double @exp(double %conv80) #4
  %mul82 = fmul double %cond, %call81
  %add83 = fadd double %esum.0139, %mul82
  %add84 = fadd double %total.0140, %cond
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end87, label %for.body73

for.end87:                                        ; preds = %cond.end, %if.end69
  %total.0.lcssa = phi double [ 0.000000e+00, %if.end69 ], [ %add84, %cond.end ]
  %esum.0.lcssa = phi double [ 0.000000e+00, %if.end69 ], [ %add83, %cond.end ]
  %div88 = fdiv double %esum.0.lcssa, %total.0.lcssa
  %call89 = call double @log(double %div88) #4
  %mul90 = fmul double %call89, -1.000000e+00
  %conv91 = fpext float %lambda.2 to double
  %div92 = fdiv double %mul90, %conv91
  %conv93 = fptrunc double %div92 to float
  store float %lambda.2, float* %ret_lambda, align 4, !tbaa !4
  store float %conv93, float* %ret_mu, align 4, !tbaa !4
  br label %return

return:                                           ; preds = %do.body27, %do.body, %for.end64, %for.end87
  %retval.0 = phi i32 [ 1, %for.end87 ], [ 0, %for.end64 ], [ 0, %do.body ], [ 0, %do.body27 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define double @ExtremeValueE(float %x, float %mu, float %lambda, i32 %N) #0 {
entry:
  %conv = sitofp i32 %N to double
  %call = tail call double @ExtremeValueP(float %x, float %mu, float %lambda) #6
  %mul = fmul double %conv, %call
  ret double %mul
}

; Function Attrs: optsize
declare double @IncompleteGamma(double, double) #1

; Function Attrs: nounwind optsize uwtable
define i32 @GaussianFitHistogram(%struct.histogram_s* nocapture %h, float %high_hint) #0 {
entry:
  %expect.i = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 7
  %0 = load float** %expect.i, align 8, !tbaa !3
  %cmp.i = icmp eq float* %0, null
  br i1 %cmp.i, label %UnfitHistogram.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %1 = bitcast float* %0 to i8*
  tail call void @free(i8* %1) #4
  br label %UnfitHistogram.exit

UnfitHistogram.exit:                              ; preds = %entry, %if.then.i
  store float* null, float** %expect.i, align 8, !tbaa !3
  %fit_type.i = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 8
  store i32 0, i32* %fit_type.i, align 4, !tbaa !0
  %total = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 6
  %2 = load i32* %total, align 4, !tbaa !0
  %cmp = icmp slt i32 %2, 1000
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %UnfitHistogram.exit
  store i32 0, i32* %fit_type.i, align 4, !tbaa !0
  br label %return

if.end:                                           ; preds = %UnfitHistogram.exit
  %lowscore = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 4
  %3 = load i32* %lowscore, align 4, !tbaa !0
  %highscore = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 3
  %4 = load i32* %highscore, align 4, !tbaa !0
  %cmp1238 = icmp sgt i32 %3, %4
  %min32.pre = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 1
  br i1 %cmp1238, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end
  %5 = load i32* %min32.pre, align 4, !tbaa !0
  %histogram = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 0
  %6 = load i32** %histogram, align 8, !tbaa !3
  %7 = sext i32 %3 to i64
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv247 = phi i64 [ %indvars.iv.next248, %for.body ], [ %7, %for.body.lr.ph ]
  %sqsum.0240 = phi float [ %add14, %for.body ], [ 0.000000e+00, %for.body.lr.ph ]
  %sum.0239 = phi float [ %add5, %for.body ], [ 0.000000e+00, %for.body.lr.ph ]
  %8 = trunc i64 %indvars.iv247 to i32
  %conv = sitofp i32 %8 to float
  %conv3 = fadd float %conv, 5.000000e-01
  %sub = sub nsw i32 %8, %5
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds i32* %6, i64 %idxprom
  %9 = load i32* %arrayidx, align 4, !tbaa !0
  %conv4 = sitofp i32 %9 to float
  %mul = fmul float %conv3, %conv4
  %add5 = fadd float %sum.0239, %mul
  %mul13 = fmul float %conv3, %mul
  %add14 = fadd float %sqsum.0240, %mul13
  %indvars.iv.next248 = add i64 %indvars.iv247, 1
  %cmp1 = icmp slt i32 %8, %4
  br i1 %cmp1, label %for.body, label %for.end

for.end:                                          ; preds = %if.end, %for.body
  %sqsum.0.lcssa = phi float [ %add14, %for.body ], [ 0.000000e+00, %if.end ]
  %sum.0.lcssa = phi float [ %add5, %for.body ], [ 0.000000e+00, %if.end ]
  store i32 2, i32* %fit_type.i, align 4, !tbaa !0
  %conv17 = sitofp i32 %2 to float
  %div = fdiv float %sum.0.lcssa, %conv17
  %arrayidx18 = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 9, i64 0
  store float %div, float* %arrayidx18, align 4, !tbaa !4
  %mul19 = fmul float %sum.0.lcssa, %sum.0.lcssa
  %div22 = fdiv float %mul19, %conv17
  %sub23 = fsub float %sqsum.0.lcssa, %div22
  %sub25 = add nsw i32 %2, -1
  %conv26 = sitofp i32 %sub25 to float
  %div27 = fdiv float %sub23, %conv26
  %conv29 = tail call float @sqrtf(float %div27) #2
  %arrayidx31 = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 9, i64 1
  store float %conv29, float* %arrayidx31, align 4, !tbaa !4
  %max = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 2
  %10 = load i32* %max, align 4, !tbaa !0
  %11 = load i32* %min32.pre, align 4, !tbaa !0
  %sub33 = sub nsw i32 %10, %11
  %add34 = add nsw i32 %sub33, 1
  %conv35 = sext i32 %add34 to i64
  %mul36 = shl nsw i64 %conv35, 2
  %call37 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i32 790, i64 %mul36) #4
  %12 = bitcast i8* %call37 to float*
  store float* %12, float** %expect.i, align 8, !tbaa !3
  %cmp39236 = icmp sgt i32 %sub33, -1
  br i1 %cmp39236, label %for.body41.lr.ph, label %for.end47

for.body41.lr.ph:                                 ; preds = %for.end
  %13 = add i32 %10, 1
  %14 = sub i32 %13, %11
  %15 = icmp sgt i32 %14, 1
  %.op = add i32 %14, -1
  %16 = zext i32 %.op to i64
  %.op249 = shl nuw nsw i64 %16, 2
  %.op249.op = add i64 %.op249, 4
  %17 = select i1 %15, i64 %.op249.op, i64 4
  call void @llvm.memset.p0i8.i64(i8* %call37, i8 0, i64 %17, i32 4, i1 false)
  br label %for.end47

for.end47:                                        ; preds = %for.body41.lr.ph, %for.end
  %18 = load i32* %min32.pre, align 4, !tbaa !0
  %19 = load i32* %max, align 4, !tbaa !0
  %cmp51234 = icmp sgt i32 %18, %19
  br i1 %cmp51234, label %for.end95, label %for.body53

for.body53:                                       ; preds = %for.end47, %for.body53
  %sc.1235 = phi i32 [ %inc94, %for.body53 ], [ %18, %for.end47 ]
  %conv54 = sitofp i32 %sc.1235 to float
  %conv55 = fpext float %conv54 to double
  %add56 = fadd double %conv55, 5.000000e-01
  %20 = load float* %arrayidx18, align 4, !tbaa !4
  %conv59 = fpext float %20 to double
  %sub60 = fsub double %add56, %conv59
  %conv61 = fptrunc double %sub60 to float
  %21 = load i32* %total, align 4, !tbaa !0
  %conv63 = sitofp i32 %21 to float
  %conv64 = fpext float %conv63 to double
  %22 = load float* %arrayidx31, align 4, !tbaa !4
  %conv67 = fpext float %22 to double
  %mul69 = fmul double %conv67, 0x40040D9291DFEC75
  %div70 = fdiv double 1.000000e+00, %mul69
  %conv71 = fpext float %conv61 to double
  %mul72 = fmul double %conv71, -1.000000e+00
  %mul74 = fmul double %conv71, %mul72
  %mul78 = fmul double %conv67, 2.000000e+00
  %mul82 = fmul double %conv67, %mul78
  %div83 = fdiv double %mul74, %mul82
  %call84 = tail call double @exp(double %div83) #4
  %mul85 = fmul double %div70, %call84
  %mul86 = fmul double %conv64, %mul85
  %conv87 = fptrunc double %mul86 to float
  %23 = load i32* %min32.pre, align 4, !tbaa !0
  %sub89 = sub nsw i32 %sc.1235, %23
  %idxprom90 = sext i32 %sub89 to i64
  %24 = load float** %expect.i, align 8, !tbaa !3
  %arrayidx92 = getelementptr inbounds float* %24, i64 %idxprom90
  store float %conv87, float* %arrayidx92, align 4, !tbaa !4
  %inc94 = add nsw i32 %sc.1235, 1
  %25 = load i32* %max, align 4, !tbaa !0
  %cmp51 = icmp slt i32 %sc.1235, %25
  br i1 %cmp51, label %for.body53, label %for.end95

for.end95:                                        ; preds = %for.body53, %for.end47
  %26 = phi i32 [ %18, %for.end47 ], [ %23, %for.body53 ]
  %chisq = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 10
  store float 0.000000e+00, float* %chisq, align 4, !tbaa !4
  %27 = load i32* %lowscore, align 4, !tbaa !0
  %28 = load i32* %highscore, align 4, !tbaa !0
  %cmp99231 = icmp sgt i32 %27, %28
  br i1 %cmp99231, label %if.else, label %for.body101.lr.ph

for.body101.lr.ph:                                ; preds = %for.end95
  %29 = load float** %expect.i, align 8, !tbaa !3
  %histogram113 = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 0
  %30 = sext i32 %27 to i64
  br label %for.body101

for.body101:                                      ; preds = %for.inc141, %for.body101.lr.ph
  %31 = phi float [ %36, %for.inc141 ], [ 0.000000e+00, %for.body101.lr.ph ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc141 ], [ %30, %for.body101.lr.ph ]
  %nbins.0233 = phi i32 [ %nbins.1, %for.inc141 ], [ 0, %for.body101.lr.ph ]
  %32 = trunc i64 %indvars.iv to i32
  %sub103 = sub nsw i32 %32, %26
  %idxprom104 = sext i32 %sub103 to i64
  %arrayidx106 = getelementptr inbounds float* %29, i64 %idxprom104
  %33 = load float* %arrayidx106, align 4, !tbaa !4
  %cmp108 = fcmp ult float %33, 5.000000e+00
  br i1 %cmp108, label %for.inc141, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body101
  %34 = load i32** %histogram113, align 8, !tbaa !3
  %arrayidx114 = getelementptr inbounds i32* %34, i64 %idxprom104
  %35 = load i32* %arrayidx114, align 4, !tbaa !0
  %cmp115 = icmp sgt i32 %35, 4
  br i1 %cmp115, label %if.then117, label %for.inc141

if.then117:                                       ; preds = %land.lhs.true
  %conv123 = sitofp i32 %35 to float
  %sub129 = fsub float %conv123, %33
  %mul130 = fmul float %sub129, %sub129
  %div136 = fdiv float %mul130, %33
  %add138 = fadd float %div136, %31
  store float %add138, float* %chisq, align 4, !tbaa !4
  %inc139 = add nsw i32 %nbins.0233, 1
  br label %for.inc141

for.inc141:                                       ; preds = %for.body101, %land.lhs.true, %if.then117
  %36 = phi float [ %add138, %if.then117 ], [ %31, %land.lhs.true ], [ %31, %for.body101 ]
  %nbins.1 = phi i32 [ %inc139, %if.then117 ], [ %nbins.0233, %land.lhs.true ], [ %nbins.0233, %for.body101 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %cmp99 = icmp slt i32 %32, %28
  br i1 %cmp99, label %for.body101, label %for.end143

for.end143:                                       ; preds = %for.inc141
  %cmp144 = icmp sgt i32 %nbins.1, 3
  br i1 %cmp144, label %if.then146, label %if.else

if.then146:                                       ; preds = %for.end143
  %sub147 = add nsw i32 %nbins.1, -3
  %conv148 = sitofp i32 %sub147 to double
  %div149 = fmul double %conv148, 5.000000e-01
  %conv151 = fpext float %36 to double
  %div152 = fmul double %conv151, 5.000000e-01
  %call153 = tail call double @IncompleteGamma(double %div149, double %div152) #4
  %conv154 = fptrunc double %call153 to float
  %chip = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 11
  store float %conv154, float* %chip, align 4, !tbaa !4
  br label %return

if.else:                                          ; preds = %for.end95, %for.end143
  %chip155 = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 11
  store float 0.000000e+00, float* %chip155, align 4, !tbaa !4
  br label %return

return:                                           ; preds = %if.then146, %if.else, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.else ], [ 1, %if.then146 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
declare double @exp(double) #2

; Function Attrs: nounwind optsize uwtable
define void @GaussianSetHistogram(%struct.histogram_s* nocapture %h, float %mean, float %sd) #0 {
entry:
  %expect.i = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 7
  %0 = load float** %expect.i, align 8, !tbaa !3
  %cmp.i = icmp eq float* %0, null
  br i1 %cmp.i, label %UnfitHistogram.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  %1 = bitcast float* %0 to i8*
  tail call void @free(i8* %1) #4
  br label %UnfitHistogram.exit

UnfitHistogram.exit:                              ; preds = %entry, %if.then.i
  store float* null, float** %expect.i, align 8, !tbaa !3
  %fit_type.i = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 8
  store i32 2, i32* %fit_type.i, align 4, !tbaa !0
  %arrayidx = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 9, i64 0
  store float %mean, float* %arrayidx, align 4, !tbaa !4
  %arrayidx2 = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 9, i64 1
  store float %sd, float* %arrayidx2, align 4, !tbaa !4
  %max = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 2
  %2 = load i32* %max, align 4, !tbaa !0
  %min = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 1
  %3 = load i32* %min, align 4, !tbaa !0
  %sub = sub nsw i32 %2, %3
  %add = add nsw i32 %sub, 1
  %conv = sext i32 %add to i64
  %mul = shl nsw i64 %conv, 2
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i32 845, i64 %mul) #4
  %4 = bitcast i8* %call to float*
  store float* %4, float** %expect.i, align 8, !tbaa !3
  %cmp164 = icmp sgt i32 %sub, -1
  br i1 %cmp164, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %UnfitHistogram.exit
  %5 = add i32 %2, 1
  %6 = sub i32 %5, %3
  %7 = icmp sgt i32 %6, 1
  %.op = add i32 %6, -1
  %8 = zext i32 %.op to i64
  %.op168 = shl nuw nsw i64 %8, 2
  %.op168.op = add i64 %.op168, 4
  %9 = select i1 %7, i64 %.op168.op, i64 4
  call void @llvm.memset.p0i8.i64(i8* %call, i8 0, i64 %9, i32 4, i1 false)
  br label %for.end

for.end:                                          ; preds = %for.body.lr.ph, %UnfitHistogram.exit
  %10 = load i32* %min, align 4, !tbaa !0
  %11 = load i32* %max, align 4, !tbaa !0
  %cmp9162 = icmp sgt i32 %10, %11
  br i1 %cmp9162, label %for.end51, label %for.body11.lr.ph

for.body11.lr.ph:                                 ; preds = %for.end
  %total = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 6
  br label %for.body11

for.body11:                                       ; preds = %for.body11, %for.body11.lr.ph
  %sc.0163 = phi i32 [ %10, %for.body11.lr.ph ], [ %inc50, %for.body11 ]
  %conv12 = sitofp i32 %sc.0163 to float
  %conv13 = fpext float %conv12 to double
  %add14 = fadd double %conv13, 5.000000e-01
  %12 = load float* %arrayidx, align 4, !tbaa !4
  %conv17 = fpext float %12 to double
  %sub18 = fsub double %add14, %conv17
  %conv19 = fptrunc double %sub18 to float
  %13 = load i32* %total, align 4, !tbaa !0
  %conv20 = sitofp i32 %13 to float
  %conv21 = fpext float %conv20 to double
  %14 = load float* %arrayidx2, align 4, !tbaa !4
  %conv24 = fpext float %14 to double
  %mul26 = fmul double %conv24, 0x40040D9291DFEC75
  %div = fdiv double 1.000000e+00, %mul26
  %conv27 = fpext float %conv19 to double
  %mul28 = fmul double %conv27, -1.000000e+00
  %mul30 = fmul double %conv27, %mul28
  %mul34 = fmul double %conv24, 2.000000e+00
  %mul38 = fmul double %conv24, %mul34
  %div39 = fdiv double %mul30, %mul38
  %call40 = tail call double @exp(double %div39) #4
  %mul41 = fmul double %div, %call40
  %mul42 = fmul double %conv21, %mul41
  %conv43 = fptrunc double %mul42 to float
  %15 = load i32* %min, align 4, !tbaa !0
  %sub45 = sub nsw i32 %sc.0163, %15
  %idxprom46 = sext i32 %sub45 to i64
  %16 = load float** %expect.i, align 8, !tbaa !3
  %arrayidx48 = getelementptr inbounds float* %16, i64 %idxprom46
  store float %conv43, float* %arrayidx48, align 4, !tbaa !4
  %inc50 = add nsw i32 %sc.0163, 1
  %17 = load i32* %max, align 4, !tbaa !0
  %cmp9 = icmp slt i32 %sc.0163, %17
  br i1 %cmp9, label %for.body11, label %for.end51

for.end51:                                        ; preds = %for.body11, %for.end
  %18 = phi i32 [ %10, %for.end ], [ %15, %for.body11 ]
  %chisq = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 10
  store float 0.000000e+00, float* %chisq, align 4, !tbaa !4
  %lowscore = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 4
  %19 = load i32* %lowscore, align 4, !tbaa !0
  %highscore = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 3
  %20 = load i32* %highscore, align 4, !tbaa !0
  %cmp53159 = icmp sgt i32 %19, %20
  br i1 %cmp53159, label %if.else, label %for.body55.lr.ph

for.body55.lr.ph:                                 ; preds = %for.end51
  %21 = load float** %expect.i, align 8, !tbaa !3
  %histogram = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 0
  %22 = sext i32 %19 to i64
  br label %for.body55

for.body55:                                       ; preds = %for.inc92, %for.body55.lr.ph
  %23 = phi float [ %28, %for.inc92 ], [ 0.000000e+00, %for.body55.lr.ph ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc92 ], [ %22, %for.body55.lr.ph ]
  %nbins.0161 = phi i32 [ %nbins.1, %for.inc92 ], [ 0, %for.body55.lr.ph ]
  %24 = trunc i64 %indvars.iv to i32
  %sub57 = sub nsw i32 %24, %18
  %idxprom58 = sext i32 %sub57 to i64
  %arrayidx60 = getelementptr inbounds float* %21, i64 %idxprom58
  %25 = load float* %arrayidx60, align 4, !tbaa !4
  %cmp62 = fcmp ult float %25, 5.000000e+00
  br i1 %cmp62, label %for.inc92, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body55
  %26 = load i32** %histogram, align 8, !tbaa !3
  %arrayidx67 = getelementptr inbounds i32* %26, i64 %idxprom58
  %27 = load i32* %arrayidx67, align 4, !tbaa !0
  %cmp68 = icmp sgt i32 %27, 4
  br i1 %cmp68, label %if.then, label %for.inc92

if.then:                                          ; preds = %land.lhs.true
  %conv75 = sitofp i32 %27 to float
  %sub81 = fsub float %conv75, %25
  %mul82 = fmul float %sub81, %sub81
  %div88 = fdiv float %mul82, %25
  %add90 = fadd float %div88, %23
  store float %add90, float* %chisq, align 4, !tbaa !4
  %inc91 = add nsw i32 %nbins.0161, 1
  br label %for.inc92

for.inc92:                                        ; preds = %for.body55, %land.lhs.true, %if.then
  %28 = phi float [ %add90, %if.then ], [ %23, %land.lhs.true ], [ %23, %for.body55 ]
  %nbins.1 = phi i32 [ %inc91, %if.then ], [ %nbins.0161, %land.lhs.true ], [ %nbins.0161, %for.body55 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %cmp53 = icmp slt i32 %24, %20
  br i1 %cmp53, label %for.body55, label %for.end94

for.end94:                                        ; preds = %for.inc92
  %cmp95 = icmp sgt i32 %nbins.1, 1
  br i1 %cmp95, label %if.then97, label %if.else

if.then97:                                        ; preds = %for.end94
  %sub98 = add nsw i32 %nbins.1, -1
  %conv99 = sitofp i32 %sub98 to double
  %div100 = fmul double %conv99, 5.000000e-01
  %conv102 = fpext float %28 to double
  %div103 = fmul double %conv102, 5.000000e-01
  %call104 = tail call double @IncompleteGamma(double %div100, double %div103) #4
  %conv105 = fptrunc double %call104 to float
  %chip = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 11
  store float %conv105, float* %chip, align 4, !tbaa !4
  br label %if.end107

if.else:                                          ; preds = %for.end51, %for.end94
  %chip106 = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 11
  store float 0.000000e+00, float* %chip106, align 4, !tbaa !4
  br label %if.end107

if.end107:                                        ; preds = %if.else, %if.then97
  ret void
}

; Function Attrs: nounwind optsize uwtable
define double @EVDDensity(float %x, float %mu, float %lambda) #0 {
entry:
  %conv = fpext float %lambda to double
  %mul = fmul double %conv, -1.000000e+00
  %sub = fsub float %x, %mu
  %conv2 = fpext float %sub to double
  %mul3 = fmul double %conv2, %mul
  %call = tail call double @exp(double %mul3) #4
  %sub9 = fsub double %mul3, %call
  %call10 = tail call double @exp(double %sub9) #4
  %mul11 = fmul double %conv, %call10
  ret double %mul11
}

; Function Attrs: nounwind optsize uwtable
define double @ExtremeValueP2(float %x, float %mu, float %lambda, i32 %N) #0 {
entry:
  %conv = sitofp i32 %N to double
  %call = tail call double @ExtremeValueP(float %x, float %mu, float %lambda) #6
  %mul = fmul double %conv, %call
  %cmp = fcmp olt double %mul, 1.000000e-07
  br i1 %cmp, label %return, label %if.else

if.else:                                          ; preds = %entry
  %mul2 = fmul double %mul, -1.000000e+00
  %call3 = tail call double @exp(double %mul2) #4
  %sub = fsub double 1.000000e+00, %call3
  br label %return

return:                                           ; preds = %entry, %if.else
  %retval.0 = phi double [ %sub, %if.else ], [ %mul, %entry ]
  ret double %retval.0
}

; Function Attrs: nounwind optsize uwtable
define float @EVDrandom(float %mu, float %lambda) #0 {
entry:
  br label %while.body

while.body:                                       ; preds = %entry, %while.body
  %call = tail call double @sre_random() #4
  %conv5 = fptrunc double %call to float
  %cmp = fcmp oeq float %conv5, 0.000000e+00
  %cmp3 = fcmp oeq float %conv5, 1.000000e+00
  %or.cond = or i1 %cmp, %cmp3
  br i1 %or.cond, label %while.body, label %while.end

while.end:                                        ; preds = %while.body
  %phitmp = fpext float %conv5 to double
  %conv6 = fpext float %mu to double
  %call8 = tail call double @log(double %phitmp) #4
  %mul = fmul double %call8, -1.000000e+00
  %call9 = tail call double @log(double %mul) #4
  %conv10 = fpext float %lambda to double
  %div = fdiv double %call9, %conv10
  %sub = fsub double %conv6, %div
  %conv11 = fptrunc double %sub to float
  ret float %conv11
}

; Function Attrs: optsize
declare double @sre_random() #1

; Function Attrs: nounwind optsize uwtable
define void @Lawless416(float* nocapture %x, i32* %y, i32 %n, float %lambda, float* nocapture %ret_f, float* nocapture %ret_df) #0 {
entry:
  %cmp94 = icmp sgt i32 %n, 0
  br i1 %cmp94, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  %conv44.pre = fpext float %lambda to double
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %cmp1 = icmp eq i32* %y, null
  %conv9 = fpext float %lambda to double
  %mul10 = fmul double %conv9, -1.000000e+00
  br label %for.body

for.body:                                         ; preds = %cond.end, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %cond.end ]
  %total.099 = phi double [ 0.000000e+00, %for.body.lr.ph ], [ %add43, %cond.end ]
  %esum.098 = phi double [ 0.000000e+00, %for.body.lr.ph ], [ %add42, %cond.end ]
  %xsum.097 = phi double [ 0.000000e+00, %for.body.lr.ph ], [ %add, %cond.end ]
  %xxesum.096 = phi double [ 0.000000e+00, %for.body.lr.ph ], [ %add33, %cond.end ]
  %xesum.095 = phi double [ 0.000000e+00, %for.body.lr.ph ], [ %add16, %cond.end ]
  br i1 %cmp1, label %cond.end, label %cond.false

cond.false:                                       ; preds = %for.body
  %arrayidx = getelementptr inbounds i32* %y, i64 %indvars.iv
  %0 = load i32* %arrayidx, align 4, !tbaa !0
  %conv = sitofp i32 %0 to double
  br label %cond.end

cond.end:                                         ; preds = %for.body, %cond.false
  %cond = phi double [ %conv, %cond.false ], [ 1.000000e+00, %for.body ]
  %arrayidx3 = getelementptr inbounds float* %x, i64 %indvars.iv
  %1 = load float* %arrayidx3, align 4, !tbaa !4
  %conv4 = fpext float %1 to double
  %mul = fmul double %cond, %conv4
  %add = fadd double %xsum.097, %mul
  %mul14 = fmul double %mul10, %conv4
  %call = tail call double @exp(double %mul14) #4
  %mul15 = fmul double %call, %mul
  %add16 = fadd double %xesum.095, %mul15
  %2 = load float* %arrayidx3, align 4, !tbaa !4
  %conv19 = fpext float %2 to double
  %mul20 = fmul double %cond, %conv19
  %mul24 = fmul double %conv19, %mul20
  %mul30 = fmul double %mul10, %conv19
  %call31 = tail call double @exp(double %mul30) #4
  %mul32 = fmul double %call31, %mul24
  %add33 = fadd double %xxesum.096, %mul32
  %3 = load float* %arrayidx3, align 4, !tbaa !4
  %conv38 = fpext float %3 to double
  %mul39 = fmul double %mul10, %conv38
  %call40 = tail call double @exp(double %mul39) #4
  %mul41 = fmul double %cond, %call40
  %add42 = fadd double %esum.098, %mul41
  %add43 = fadd double %total.099, %cond
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %cond.end, %entry.for.end_crit_edge
  %conv44.pre-phi = phi double [ %conv44.pre, %entry.for.end_crit_edge ], [ %conv9, %cond.end ]
  %total.0.lcssa = phi double [ 0.000000e+00, %entry.for.end_crit_edge ], [ %add43, %cond.end ]
  %esum.0.lcssa = phi double [ 0.000000e+00, %entry.for.end_crit_edge ], [ %add42, %cond.end ]
  %xsum.0.lcssa = phi double [ 0.000000e+00, %entry.for.end_crit_edge ], [ %add, %cond.end ]
  %xxesum.0.lcssa = phi double [ 0.000000e+00, %entry.for.end_crit_edge ], [ %add33, %cond.end ]
  %xesum.0.lcssa = phi double [ 0.000000e+00, %entry.for.end_crit_edge ], [ %add16, %cond.end ]
  %div = fdiv double 1.000000e+00, %conv44.pre-phi
  %div45 = fdiv double %xsum.0.lcssa, %total.0.lcssa
  %sub = fsub double %div, %div45
  %div46 = fdiv double %xesum.0.lcssa, %esum.0.lcssa
  %add47 = fadd double %sub, %div46
  %conv48 = fptrunc double %add47 to float
  store float %conv48, float* %ret_f, align 4, !tbaa !4
  %mul51 = fmul double %div46, %div46
  %div52 = fdiv double %xxesum.0.lcssa, %esum.0.lcssa
  %sub53 = fsub double %mul51, %div52
  %mul54 = fmul float %lambda, %lambda
  %conv55 = fpext float %mul54 to double
  %div56 = fdiv double 1.000000e+00, %conv55
  %sub57 = fsub double %sub53, %div56
  %conv58 = fptrunc double %sub57 to float
  store float %conv58, float* %ret_df, align 4, !tbaa !4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @Lawless422(float* nocapture %x, i32* %y, i32 %n, i32 %z, float %c, float %lambda, float* nocapture %ret_f, float* nocapture %ret_df) #0 {
entry:
  %cmp137 = icmp sgt i32 %n, 0
  br i1 %cmp137, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  %conv45.pre = fpext float %lambda to double
  %mul46.pre = fmul double %conv45.pre, -1.000000e+00
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %cmp1 = icmp eq i32* %y, null
  %conv5 = fpext float %lambda to double
  %mul6 = fmul double %conv5, -1.000000e+00
  br label %for.body

for.body:                                         ; preds = %cond.end, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %cond.end ]
  %total.0142 = phi double [ 0.000000e+00, %for.body.lr.ph ], [ %add43, %cond.end ]
  %esum.0141 = phi double [ 0.000000e+00, %for.body.lr.ph ], [ %add12, %cond.end ]
  %xsum.0140 = phi double [ 0.000000e+00, %for.body.lr.ph ], [ %add, %cond.end ]
  %xxesum.0139 = phi double [ 0.000000e+00, %for.body.lr.ph ], [ %add42, %cond.end ]
  %xesum.0138 = phi double [ 0.000000e+00, %for.body.lr.ph ], [ %add25, %cond.end ]
  br i1 %cmp1, label %cond.end, label %cond.false

cond.false:                                       ; preds = %for.body
  %arrayidx = getelementptr inbounds i32* %y, i64 %indvars.iv
  %0 = load i32* %arrayidx, align 4, !tbaa !0
  %conv = sitofp i32 %0 to double
  br label %cond.end

cond.end:                                         ; preds = %for.body, %cond.false
  %cond = phi double [ %conv, %cond.false ], [ 1.000000e+00, %for.body ]
  %arrayidx3 = getelementptr inbounds float* %x, i64 %indvars.iv
  %1 = load float* %arrayidx3, align 4, !tbaa !4
  %conv4 = fpext float %1 to double
  %mul = fmul double %cond, %conv4
  %add = fadd double %xsum.0140, %mul
  %mul10 = fmul double %mul6, %conv4
  %call = tail call double @exp(double %mul10) #4
  %mul11 = fmul double %cond, %call
  %add12 = fadd double %esum.0141, %mul11
  %2 = load float* %arrayidx3, align 4, !tbaa !4
  %conv15 = fpext float %2 to double
  %mul16 = fmul double %cond, %conv15
  %mul22 = fmul double %mul6, %conv15
  %call23 = tail call double @exp(double %mul22) #4
  %mul24 = fmul double %call23, %mul16
  %add25 = fadd double %xesum.0138, %mul24
  %3 = load float* %arrayidx3, align 4, !tbaa !4
  %conv28 = fpext float %3 to double
  %mul29 = fmul double %cond, %conv28
  %mul33 = fmul double %conv28, %mul29
  %mul39 = fmul double %mul6, %conv28
  %call40 = tail call double @exp(double %mul39) #4
  %mul41 = fmul double %call40, %mul33
  %add42 = fadd double %xxesum.0139, %mul41
  %add43 = fadd double %total.0142, %cond
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %cond.end, %entry.for.end_crit_edge
  %mul46.pre-phi = phi double [ %mul46.pre, %entry.for.end_crit_edge ], [ %mul6, %cond.end ]
  %conv45.pre-phi = phi double [ %conv45.pre, %entry.for.end_crit_edge ], [ %conv5, %cond.end ]
  %total.0.lcssa = phi double [ 0.000000e+00, %entry.for.end_crit_edge ], [ %add43, %cond.end ]
  %esum.0.lcssa = phi double [ 0.000000e+00, %entry.for.end_crit_edge ], [ %add12, %cond.end ]
  %xsum.0.lcssa = phi double [ 0.000000e+00, %entry.for.end_crit_edge ], [ %add, %cond.end ]
  %xxesum.0.lcssa = phi double [ 0.000000e+00, %entry.for.end_crit_edge ], [ %add42, %cond.end ]
  %xesum.0.lcssa = phi double [ 0.000000e+00, %entry.for.end_crit_edge ], [ %add25, %cond.end ]
  %conv44 = sitofp i32 %z to double
  %conv47 = fpext float %c to double
  %mul48 = fmul double %conv47, %mul46.pre-phi
  %call49 = tail call double @exp(double %mul48) #4
  %mul50 = fmul double %conv44, %call49
  %add51 = fadd double %esum.0.lcssa, %mul50
  %mul54 = fmul double %conv44, %conv47
  %call59 = tail call double @exp(double %mul48) #4
  %mul60 = fmul double %mul54, %call59
  %add61 = fadd double %xesum.0.lcssa, %mul60
  %mul66 = fmul double %conv47, %mul54
  %call71 = tail call double @exp(double %mul48) #4
  %mul72 = fmul double %mul66, %call71
  %add73 = fadd double %xxesum.0.lcssa, %mul72
  %div = fdiv double 1.000000e+00, %conv45.pre-phi
  %div75 = fdiv double %xsum.0.lcssa, %total.0.lcssa
  %sub = fsub double %div, %div75
  %div76 = fdiv double %add61, %add51
  %add77 = fadd double %sub, %div76
  %conv78 = fptrunc double %add77 to float
  store float %conv78, float* %ret_f, align 4, !tbaa !4
  %mul81 = fmul double %div76, %div76
  %div82 = fdiv double %add73, %add51
  %sub83 = fsub double %mul81, %div82
  %mul84 = fmul float %lambda, %lambda
  %conv85 = fpext float %mul84 to double
  %div86 = fdiv double 1.000000e+00, %conv85
  %sub87 = fsub double %sub83, %div86
  %conv88 = fptrunc double %sub87 to float
  store float %conv88, float* %ret_df, align 4, !tbaa !4
  ret void
}

declare float @floorf(float)

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #3

declare float @fabsf(float)

; Function Attrs: nounwind optsize
declare float @sqrtf(float) #2

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }
attributes #5 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { optsize }

!0 = metadata !{metadata !"int", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"any pointer", metadata !1}
!4 = metadata !{metadata !"float", metadata !1}
