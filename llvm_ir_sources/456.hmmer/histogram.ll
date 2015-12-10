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
  tail call void @llvm.dbg.value(metadata !{i32 %min}, i64 0, metadata !32), !dbg !358
  tail call void @llvm.dbg.value(metadata !{i32 %max}, i64 0, metadata !33), !dbg !358
  tail call void @llvm.dbg.value(metadata !{i32 %lumpsize}, i64 0, metadata !34), !dbg !358
  %sub = sub nsw i32 %max, %min, !dbg !359
  %add = add nsw i32 %sub, 1, !dbg !359
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !36), !dbg !359
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i32 68, i64 64) #5, !dbg !360
  %0 = bitcast i8* %call to %struct.histogram_s*, !dbg !360
  tail call void @llvm.dbg.value(metadata !{%struct.histogram_s* %0}, i64 0, metadata !35), !dbg !360
  %min1 = getelementptr inbounds i8* %call, i64 8, !dbg !361
  %1 = bitcast i8* %min1 to i32*, !dbg !361
  store i32 %min, i32* %1, align 4, !dbg !361, !tbaa !362
  %max2 = getelementptr inbounds i8* %call, i64 12, !dbg !365
  %2 = bitcast i8* %max2 to i32*, !dbg !365
  store i32 %max, i32* %2, align 4, !dbg !365, !tbaa !362
  %total = getelementptr inbounds i8* %call, i64 28, !dbg !366
  %3 = bitcast i8* %total to i32*, !dbg !366
  store i32 0, i32* %3, align 4, !dbg !366, !tbaa !362
  %lowscore = getelementptr inbounds i8* %call, i64 20, !dbg !367
  %4 = bitcast i8* %lowscore to i32*, !dbg !367
  store i32 2147483647, i32* %4, align 4, !dbg !367, !tbaa !362
  %highscore = getelementptr inbounds i8* %call, i64 16, !dbg !368
  %5 = bitcast i8* %highscore to i32*, !dbg !368
  store i32 -2147483648, i32* %5, align 4, !dbg !368, !tbaa !362
  %lumpsize3 = getelementptr inbounds i8* %call, i64 24, !dbg !369
  %6 = bitcast i8* %lumpsize3 to i32*, !dbg !369
  store i32 %lumpsize, i32* %6, align 4, !dbg !369, !tbaa !362
  %conv = sext i32 %add to i64, !dbg !370
  %mul = shl nsw i64 %conv, 2, !dbg !370
  %call4 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i32 75, i64 %mul) #5, !dbg !370
  %7 = bitcast i8* %call4 to i32*, !dbg !370
  %histogram = bitcast i8* %call to i32**, !dbg !370
  store i32* %7, i32** %histogram, align 8, !dbg !370, !tbaa !371
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !37), !dbg !372
  %cmp22 = icmp sgt i32 %sub, -1, !dbg !372
  br i1 %cmp22, label %for.body.lr.ph, label %for.end, !dbg !372

for.body.lr.ph:                                   ; preds = %entry
  %8 = add i32 %max, 1, !dbg !372
  %9 = sub i32 %8, %min, !dbg !372
  %10 = icmp sgt i32 %9, 1
  %.op = add i32 %9, -1, !dbg !372
  %11 = zext i32 %.op to i64
  %.op24 = shl nuw nsw i64 %11, 2, !dbg !372
  %.op24.op = add i64 %.op24, 4, !dbg !372
  %12 = select i1 %10, i64 %.op24.op, i64 4, !dbg !372
  call void @llvm.memset.p0i8.i64(i8* %call4, i8 0, i64 %12, i32 4, i1 false), !dbg !372
  br label %for.end, !dbg !372

for.end:                                          ; preds = %for.body.lr.ph, %entry
  %expect = getelementptr inbounds i8* %call, i64 32, !dbg !374
  %13 = bitcast i8* %expect to float**, !dbg !374
  store float* null, float** %13, align 8, !dbg !374, !tbaa !371
  %fit_type = getelementptr inbounds i8* %call, i64 40, !dbg !375
  %14 = bitcast i8* %fit_type to i32*, !dbg !375
  store i32 0, i32* %14, align 4, !dbg !375, !tbaa !362
  ret %struct.histogram_s* %0, !dbg !376
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #2

; Function Attrs: nounwind optsize uwtable
define void @FreeHistogram(%struct.histogram_s* nocapture %h) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.histogram_s* %h}, i64 0, metadata !42), !dbg !377
  %histogram = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 0, !dbg !378
  %0 = load i32** %histogram, align 8, !dbg !378, !tbaa !371
  %1 = bitcast i32* %0 to i8*, !dbg !378
  tail call void @free(i8* %1) #5, !dbg !378
  %expect = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 7, !dbg !379
  %2 = load float** %expect, align 8, !dbg !379, !tbaa !371
  %cmp = icmp eq float* %2, null, !dbg !379
  br i1 %cmp, label %if.end, label %if.then, !dbg !379

if.then:                                          ; preds = %entry
  %3 = bitcast float* %2 to i8*, !dbg !379
  tail call void @free(i8* %3) #5, !dbg !379
  br label %if.end, !dbg !379

if.end:                                           ; preds = %entry, %if.then
  %4 = bitcast %struct.histogram_s* %h to i8*, !dbg !380
  tail call void @free(i8* %4) #5, !dbg !380
  ret void, !dbg !381
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize uwtable
define void @UnfitHistogram(%struct.histogram_s* nocapture %h) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.histogram_s* %h}, i64 0, metadata !45), !dbg !382
  %expect = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 7, !dbg !383
  %0 = load float** %expect, align 8, !dbg !383, !tbaa !371
  %cmp = icmp eq float* %0, null, !dbg !383
  br i1 %cmp, label %if.end, label %if.then, !dbg !383

if.then:                                          ; preds = %entry
  %1 = bitcast float* %0 to i8*, !dbg !383
  tail call void @free(i8* %1) #5, !dbg !383
  br label %if.end, !dbg !383

if.end:                                           ; preds = %entry, %if.then
  store float* null, float** %expect, align 8, !dbg !384, !tbaa !371
  %fit_type = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 8, !dbg !385
  store i32 0, i32* %fit_type, align 4, !dbg !385, !tbaa !362
  ret void, !dbg !386
}

; Function Attrs: nounwind optsize uwtable
define void @AddToHistogram(%struct.histogram_s* nocapture %h, float %sc) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.histogram_s* %h}, i64 0, metadata !50), !dbg !387
  tail call void @llvm.dbg.value(metadata !{float %sc}, i64 0, metadata !51), !dbg !387
  %fit_type = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 8, !dbg !388
  %0 = load i32* %fit_type, align 4, !dbg !388, !tbaa !362
  %cmp = icmp eq i32 %0, 0, !dbg !388
  br i1 %cmp, label %if.end, label %if.then, !dbg !388

if.then:                                          ; preds = %entry
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([51 x i8]* @.str1, i64 0, i64 0)) #5, !dbg !389
  br label %if.end, !dbg !389

if.end:                                           ; preds = %entry, %if.then
  %floorf = tail call float @floorf(float %sc) #6, !dbg !390
  %conv1 = fptosi float %floorf to i32, !dbg !390
  tail call void @llvm.dbg.value(metadata !{i32 %conv1}, i64 0, metadata !52), !dbg !390
  %min = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 1, !dbg !391
  %1 = load i32* %min, align 4, !dbg !391, !tbaa !362
  %cmp2 = icmp slt i32 %conv1, %1, !dbg !391
  %max = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 2, !dbg !392
  %2 = load i32* %max, align 4, !dbg !392, !tbaa !362
  br i1 %cmp2, label %if.then4, label %if.else, !dbg !391

if.then4:                                         ; preds = %if.end
  %sub = sub nsw i32 %2, %1, !dbg !392
  %add = add nsw i32 %sub, 1, !dbg !392
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !54), !dbg !392
  %sub7 = sub nsw i32 %1, %conv1, !dbg !394
  %lumpsize = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 5, !dbg !394
  %3 = load i32* %lumpsize, align 4, !dbg !394, !tbaa !362
  %add8 = add nsw i32 %3, %sub7, !dbg !394
  tail call void @llvm.dbg.value(metadata !{i32 %add8}, i64 0, metadata !53), !dbg !394
  %add9 = add nsw i32 %add8, %add, !dbg !395
  tail call void @llvm.dbg.value(metadata !{i32 %add9}, i64 0, metadata !55), !dbg !395
  %sub11 = sub nsw i32 %1, %add8, !dbg !396
  store i32 %sub11, i32* %min, align 4, !dbg !396, !tbaa !362
  %histogram = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 0, !dbg !397
  %4 = load i32** %histogram, align 8, !dbg !397, !tbaa !371
  %5 = bitcast i32* %4 to i8*, !dbg !397
  %conv12 = sext i32 %add9 to i64, !dbg !397
  %mul = shl nsw i64 %conv12, 2, !dbg !397
  %call13 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i32 148, i8* %5, i64 %mul) #5, !dbg !397
  %6 = bitcast i8* %call13 to i32*, !dbg !397
  store i32* %6, i32** %histogram, align 8, !dbg !397, !tbaa !371
  %idx.ext = sext i32 %add8 to i64, !dbg !398
  %add.ptr = getelementptr inbounds i32* %6, i64 %idx.ext, !dbg !398
  %7 = bitcast i32* %add.ptr to i8*, !dbg !398
  %conv17 = sext i32 %add to i64, !dbg !398
  %mul18 = shl nsw i64 %conv17, 2, !dbg !398
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* %7, i8* %call13, i64 %mul18, i32 4, i1 false), !dbg !398
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !56), !dbg !399
  %cmp19119 = icmp sgt i32 %add8, 0, !dbg !399
  br i1 %cmp19119, label %for.body.lr.ph, label %if.end53, !dbg !399

for.body.lr.ph:                                   ; preds = %if.then4
  %8 = load i32** %histogram, align 8, !dbg !401, !tbaa !371
  %9 = bitcast i32* %8 to i8*
  %10 = add i32 %1, %3, !dbg !399
  %11 = add i32 %10, -1, !dbg !399
  %12 = sub i32 %11, %conv1, !dbg !399
  %13 = zext i32 %12 to i64
  %14 = shl nuw nsw i64 %13, 2, !dbg !399
  %15 = add i64 %14, 4, !dbg !399
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 %15, i32 4, i1 false), !dbg !401
  br label %if.end53, !dbg !399

if.else:                                          ; preds = %if.end
  %cmp23 = icmp sgt i32 %conv1, %2, !dbg !402
  br i1 %cmp23, label %if.then25, label %if.else.if.end53_crit_edge, !dbg !402

if.else.if.end53_crit_edge:                       ; preds = %if.else
  %histogram57.pre = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 0, !dbg !403
  br label %if.end53, !dbg !402

if.then25:                                        ; preds = %if.else
  %sub28 = sub nsw i32 %2, %1, !dbg !404
  %lumpsize30 = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 5, !dbg !406
  %16 = load i32* %lumpsize30, align 4, !dbg !406, !tbaa !362
  %add31 = add i32 %16, %conv1, !dbg !406
  store i32 %add31, i32* %max, align 4, !dbg !406, !tbaa !362
  %sub35 = sub nsw i32 %add31, %1, !dbg !407
  %add36 = add nsw i32 %sub35, 1, !dbg !407
  tail call void @llvm.dbg.value(metadata !{i32 %add36}, i64 0, metadata !55), !dbg !407
  %histogram37 = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 0, !dbg !408
  %17 = load i32** %histogram37, align 8, !dbg !408, !tbaa !371
  %18 = bitcast i32* %17 to i8*, !dbg !408
  %conv38 = sext i32 %add36 to i64, !dbg !408
  %mul39 = shl nsw i64 %conv38, 2, !dbg !408
  %call40 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i32 159, i8* %18, i64 %mul39) #5, !dbg !408
  %19 = bitcast i8* %call40 to i32*, !dbg !408
  store i32* %19, i32** %histogram37, align 8, !dbg !408, !tbaa !371
  %cmp43123 = icmp slt i32 %sub28, %sub35, !dbg !409
  br i1 %cmp43123, label %for.body45.lr.ph, label %if.end53, !dbg !409

for.body45.lr.ph:                                 ; preds = %if.then25
  %20 = add i32 %2, 1, !dbg !409
  %21 = sub i32 %20, %1, !dbg !409
  %22 = sext i32 %21 to i64
  %scevgep = getelementptr i32* %19, i64 %22
  %scevgep126 = bitcast i32* %scevgep to i8*
  %23 = add i32 %conv1, %1, !dbg !409
  %24 = add i32 %23, %16, !dbg !409
  %25 = add i32 %24, -1, !dbg !409
  %26 = sub i32 %25, %2, !dbg !409
  %27 = sub i32 %26, %1, !dbg !409
  %28 = zext i32 %27 to i64
  %29 = shl nuw nsw i64 %28, 2, !dbg !409
  %30 = add i64 %29, 4, !dbg !409
  call void @llvm.memset.p0i8.i64(i8* %scevgep126, i8 0, i64 %30, i32 4, i1 false), !dbg !411
  br label %if.end53, !dbg !409

if.end53:                                         ; preds = %if.then25, %for.body45.lr.ph, %if.then4, %for.body.lr.ph, %if.else.if.end53_crit_edge
  %histogram57.pre-phi = phi i32** [ %histogram57.pre, %if.else.if.end53_crit_edge ], [ %histogram, %for.body.lr.ph ], [ %histogram, %if.then4 ], [ %histogram37, %for.body45.lr.ph ], [ %histogram37, %if.then25 ], !dbg !403
  %31 = load i32* %min, align 4, !dbg !403, !tbaa !362
  %sub55 = sub nsw i32 %conv1, %31, !dbg !403
  %idxprom56 = sext i32 %sub55 to i64, !dbg !403
  %32 = load i32** %histogram57.pre-phi, align 8, !dbg !403, !tbaa !371
  %arrayidx58 = getelementptr inbounds i32* %32, i64 %idxprom56, !dbg !403
  %33 = load i32* %arrayidx58, align 4, !dbg !403, !tbaa !362
  %inc59 = add nsw i32 %33, 1, !dbg !403
  store i32 %inc59, i32* %arrayidx58, align 4, !dbg !403, !tbaa !362
  %total = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 6, !dbg !412
  %34 = load i32* %total, align 4, !dbg !412, !tbaa !362
  %inc60 = add nsw i32 %34, 1, !dbg !412
  store i32 %inc60, i32* %total, align 4, !dbg !412, !tbaa !362
  %lowscore = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 4, !dbg !413
  %35 = load i32* %lowscore, align 4, !dbg !413, !tbaa !362
  %cmp61 = icmp slt i32 %conv1, %35, !dbg !413
  br i1 %cmp61, label %if.then63, label %if.end65, !dbg !413

if.then63:                                        ; preds = %if.end53
  store i32 %conv1, i32* %lowscore, align 4, !dbg !413, !tbaa !362
  br label %if.end65, !dbg !413

if.end65:                                         ; preds = %if.then63, %if.end53
  %highscore = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 3, !dbg !414
  %36 = load i32* %highscore, align 4, !dbg !414, !tbaa !362
  %cmp66 = icmp sgt i32 %conv1, %36, !dbg !414
  br i1 %cmp66, label %if.then68, label %if.end70, !dbg !414

if.then68:                                        ; preds = %if.end65
  store i32 %conv1, i32* %highscore, align 4, !dbg !414, !tbaa !362
  br label %if.end70, !dbg !414

if.end70:                                         ; preds = %if.then68, %if.end65
  ret void, !dbg !415
}

; Function Attrs: optsize
declare void @Die(i8*, ...) #2

; Function Attrs: optsize
declare i8* @sre_realloc(i8*, i32, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #4

; Function Attrs: nounwind optsize uwtable
define void @PrintASCIIHistogram(%struct._IO_FILE* nocapture %fp, %struct.histogram_s* %h) #0 {
entry:
  %buffer = alloca [81 x i8], align 16
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !118), !dbg !416
  call void @llvm.dbg.value(metadata !{%struct.histogram_s* %h}, i64 0, metadata !119), !dbg !416
  %0 = getelementptr inbounds [81 x i8]* %buffer, i64 0, i64 0, !dbg !417
  call void @llvm.lifetime.start(i64 81, i8* %0) #4, !dbg !417
  call void @llvm.dbg.declare(metadata !{[81 x i8]* %buffer}, metadata !125), !dbg !417
  call void @llvm.dbg.value(metadata !418, i64 0, metadata !134), !dbg !419
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !121), !dbg !420
  %lowscore = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 4, !dbg !421
  %1 = load i32* %lowscore, align 4, !dbg !421, !tbaa !362
  %min = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 1, !dbg !421
  %2 = load i32* %min, align 4, !dbg !421, !tbaa !362
  %sub = sub i32 %1, %2, !dbg !421
  call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !123), !dbg !421
  %highscore = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 3, !dbg !421
  %3 = load i32* %highscore, align 4, !dbg !421, !tbaa !362
  %sub2419 = sub i32 %3, %2, !dbg !421
  %cmp420 = icmp sgt i32 %sub, %sub2419, !dbg !421
  br i1 %cmp420, label %for.end46, label %for.body.lr.ph, !dbg !421

for.body.lr.ph:                                   ; preds = %entry
  %histogram = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 0, !dbg !423
  %4 = load i32** %histogram, align 8, !dbg !423, !tbaa !371
  %5 = sext i32 %sub to i64
  br label %for.body, !dbg !421

for.cond8.preheader:                              ; preds = %for.body
  %cmp10415 = icmp sgt i32 %add.lowbound.0, %1, !dbg !424
  br i1 %cmp10415, label %for.body11.lr.ph, label %for.end26, !dbg !424

for.body11.lr.ph:                                 ; preds = %for.cond8.preheader
  %histogram15 = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 0, !dbg !426
  %6 = load i32** %histogram15, align 8, !dbg !426, !tbaa !371
  %7 = sext i32 %add.lowbound.0 to i64
  br label %for.body11, !dbg !424

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv439 = phi i64 [ %indvars.iv.next440, %for.body ], [ %5, %for.body.lr.ph ]
  %maxbar.0423 = phi i32 [ %.maxbar.0, %for.body ], [ 0, %for.body.lr.ph ]
  %lowbound.0422 = phi i32 [ %add.lowbound.0, %for.body ], [ undef, %for.body.lr.ph ]
  %arrayidx = getelementptr inbounds i32* %4, i64 %indvars.iv439, !dbg !423
  %8 = load i32* %arrayidx, align 4, !dbg !423, !tbaa !362
  %cmp3 = icmp sgt i32 %8, %maxbar.0423, !dbg !423
  call void @llvm.dbg.value(metadata !{i32 %8}, i64 0, metadata !121), !dbg !428
  %9 = trunc i64 %indvars.iv439 to i32, !dbg !430
  %add = add nsw i32 %2, %9, !dbg !430
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !130), !dbg !430
  %add.lowbound.0 = select i1 %cmp3, i32 %add, i32 %lowbound.0422, !dbg !423
  %.maxbar.0 = select i1 %cmp3, i32 %8, i32 %maxbar.0423, !dbg !423
  %indvars.iv.next440 = add i64 %indvars.iv439, 1, !dbg !421
  %cmp = icmp slt i32 %9, %sub2419, !dbg !421
  br i1 %cmp, label %for.body, label %for.cond8.preheader, !dbg !421

for.body11:                                       ; preds = %for.body11.lr.ph, %for.inc25
  %indvars.iv437 = phi i64 [ %7, %for.body11.lr.ph ], [ %indvars.iv.next438, %for.inc25 ]
  %num.0417 = phi i32 [ 0, %for.body11.lr.ph ], [ %num.1, %for.inc25 ]
  %lowbound.2416 = phi i32 [ %add.lowbound.0, %for.body11.lr.ph ], [ %dec, %for.inc25 ]
  %10 = trunc i64 %indvars.iv437 to i32, !dbg !431
  %sub13 = sub nsw i32 %10, %2, !dbg !431
  call void @llvm.dbg.value(metadata !{i32 %sub13}, i64 0, metadata !123), !dbg !431
  %idxprom14 = sext i32 %sub13 to i64, !dbg !426
  %arrayidx16 = getelementptr inbounds i32* %6, i64 %idxprom14, !dbg !426
  %11 = load i32* %arrayidx16, align 4, !dbg !426, !tbaa !362
  %cmp17 = icmp sgt i32 %11, 0, !dbg !426
  br i1 %cmp17, label %for.inc25, label %if.end19, !dbg !426

if.end19:                                         ; preds = %for.body11
  %inc20 = add nsw i32 %num.0417, 1, !dbg !432
  call void @llvm.dbg.value(metadata !{i32 %inc20}, i64 0, metadata !122), !dbg !432
  %cmp21 = icmp eq i32 %inc20, 3, !dbg !432
  br i1 %cmp21, label %if.then22, label %for.inc25, !dbg !432

if.then22:                                        ; preds = %if.end19
  %add23 = add nsw i32 %lowbound.2416, 3, !dbg !433
  call void @llvm.dbg.value(metadata !{i32 %add23}, i64 0, metadata !130), !dbg !433
  br label %for.end26, !dbg !433

for.inc25:                                        ; preds = %for.body11, %if.end19
  %num.1 = phi i32 [ %inc20, %if.end19 ], [ 0, %for.body11 ]
  %indvars.iv.next438 = add i64 %indvars.iv437, -1, !dbg !424
  %dec = add nsw i32 %lowbound.2416, -1, !dbg !424
  call void @llvm.dbg.value(metadata !{i32 %dec}, i64 0, metadata !130), !dbg !424
  %12 = trunc i64 %indvars.iv.next438 to i32, !dbg !424
  %cmp10 = icmp sgt i32 %12, %1, !dbg !424
  br i1 %cmp10, label %for.body11, label %for.end26, !dbg !424

for.end26:                                        ; preds = %for.cond8.preheader, %for.inc25, %if.then22
  %lowbound.3 = phi i32 [ %add23, %if.then22 ], [ %add.lowbound.0, %for.cond8.preheader ], [ %dec, %for.inc25 ]
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !122), !dbg !435
  %cmp29410 = icmp slt i32 %add.lowbound.0, %3, !dbg !435
  br i1 %cmp29410, label %for.body30.lr.ph, label %for.end46, !dbg !435

for.body30.lr.ph:                                 ; preds = %for.end26
  %histogram34 = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 0, !dbg !437
  %13 = load i32** %histogram34, align 8, !dbg !437, !tbaa !371
  %14 = sext i32 %add.lowbound.0 to i64
  br label %for.body30, !dbg !435

for.body30:                                       ; preds = %for.body30.lr.ph, %for.inc44
  %indvars.iv434 = phi i64 [ %14, %for.body30.lr.ph ], [ %indvars.iv.next435, %for.inc44 ]
  %num.2412 = phi i32 [ 0, %for.body30.lr.ph ], [ %num.3, %for.inc44 ]
  %highbound.0411 = phi i32 [ %add.lowbound.0, %for.body30.lr.ph ], [ %inc45, %for.inc44 ]
  %15 = trunc i64 %indvars.iv434 to i32, !dbg !439
  %sub32 = sub nsw i32 %15, %2, !dbg !439
  call void @llvm.dbg.value(metadata !{i32 %sub32}, i64 0, metadata !123), !dbg !439
  %idxprom33 = sext i32 %sub32 to i64, !dbg !437
  %arrayidx35 = getelementptr inbounds i32* %13, i64 %idxprom33, !dbg !437
  %16 = load i32* %arrayidx35, align 4, !dbg !437, !tbaa !362
  %cmp36 = icmp sgt i32 %16, 0, !dbg !437
  br i1 %cmp36, label %for.inc44, label %if.end38, !dbg !437

if.end38:                                         ; preds = %for.body30
  %inc39 = add nsw i32 %num.2412, 1, !dbg !440
  call void @llvm.dbg.value(metadata !{i32 %inc39}, i64 0, metadata !122), !dbg !440
  %cmp40 = icmp eq i32 %inc39, 3, !dbg !440
  br i1 %cmp40, label %if.then41, label %for.inc44, !dbg !440

if.then41:                                        ; preds = %if.end38
  %sub42 = add nsw i32 %highbound.0411, -3, !dbg !441
  call void @llvm.dbg.value(metadata !{i32 %sub42}, i64 0, metadata !132), !dbg !441
  br label %for.end46, !dbg !441

for.inc44:                                        ; preds = %for.body30, %if.end38
  %num.3 = phi i32 [ %inc39, %if.end38 ], [ 0, %for.body30 ]
  %indvars.iv.next435 = add i64 %indvars.iv434, 1, !dbg !435
  %inc45 = add nsw i32 %highbound.0411, 1, !dbg !435
  call void @llvm.dbg.value(metadata !{i32 %inc45}, i64 0, metadata !132), !dbg !435
  %17 = trunc i64 %indvars.iv.next435 to i32, !dbg !435
  %cmp29 = icmp slt i32 %17, %3, !dbg !435
  br i1 %cmp29, label %for.body30, label %for.end46, !dbg !435

for.end46:                                        ; preds = %entry, %for.end26, %for.inc44, %if.then41
  %lowbound.3449 = phi i32 [ %lowbound.3, %if.then41 ], [ %lowbound.3, %for.end26 ], [ %lowbound.3, %for.inc44 ], [ undef, %entry ]
  %maxbar.0.lcssa442447 = phi i32 [ %.maxbar.0, %if.then41 ], [ %.maxbar.0, %for.end26 ], [ %.maxbar.0, %for.inc44 ], [ 0, %entry ]
  %highbound.1 = phi i32 [ %sub42, %if.then41 ], [ %add.lowbound.0, %for.end26 ], [ %inc45, %for.inc44 ], [ undef, %entry ]
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !131), !dbg !443
  call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !123), !dbg !443
  %sub52403 = sub nsw i32 %lowbound.3449, %2, !dbg !443
  %cmp53404 = icmp sgt i32 %sub, %sub52403, !dbg !443
  br i1 %cmp53404, label %for.end61, label %for.body54.lr.ph, !dbg !443

for.body54.lr.ph:                                 ; preds = %for.end46
  %histogram56 = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 0, !dbg !445
  %18 = load i32** %histogram56, align 8, !dbg !445, !tbaa !371
  %19 = sext i32 %sub to i64
  br label %for.body54, !dbg !443

for.body54:                                       ; preds = %for.body54, %for.body54.lr.ph
  %indvars.iv431 = phi i64 [ %indvars.iv.next432, %for.body54 ], [ %19, %for.body54.lr.ph ]
  %lowcount.0406 = phi i32 [ %add58, %for.body54 ], [ 0, %for.body54.lr.ph ]
  %arrayidx57 = getelementptr inbounds i32* %18, i64 %indvars.iv431, !dbg !445
  %20 = load i32* %arrayidx57, align 4, !dbg !445, !tbaa !362
  %add58 = add nsw i32 %20, %lowcount.0406, !dbg !445
  call void @llvm.dbg.value(metadata !{i32 %add58}, i64 0, metadata !131), !dbg !445
  %indvars.iv.next432 = add i64 %indvars.iv431, 1, !dbg !443
  %21 = trunc i64 %indvars.iv431 to i32, !dbg !443
  %cmp53 = icmp slt i32 %21, %sub52403, !dbg !443
  br i1 %cmp53, label %for.body54, label %for.end61, !dbg !443

for.end61:                                        ; preds = %for.body54, %for.end46
  %lowcount.0.lcssa = phi i32 [ 0, %for.end46 ], [ %add58, %for.body54 ]
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !133), !dbg !446
  call void @llvm.dbg.value(metadata !{i32 %sub2419}, i64 0, metadata !123), !dbg !446
  %sub67399 = sub nsw i32 %highbound.1, %2, !dbg !446
  %cmp68400 = icmp slt i32 %sub2419, %sub67399, !dbg !446
  br i1 %cmp68400, label %for.end76, label %for.body69.lr.ph, !dbg !446

for.body69.lr.ph:                                 ; preds = %for.end61
  %histogram71 = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 0, !dbg !448
  %22 = load i32** %histogram71, align 8, !dbg !448, !tbaa !371
  %23 = sext i32 %sub2419 to i64
  br label %for.body69, !dbg !446

for.body69:                                       ; preds = %for.body69, %for.body69.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body69 ], [ %23, %for.body69.lr.ph ]
  %highcount.0402 = phi i32 [ %add73, %for.body69 ], [ 0, %for.body69.lr.ph ]
  %arrayidx72 = getelementptr inbounds i32* %22, i64 %indvars.iv, !dbg !448
  %24 = load i32* %arrayidx72, align 4, !dbg !448, !tbaa !362
  %add73 = add nsw i32 %24, %highcount.0402, !dbg !448
  call void @llvm.dbg.value(metadata !{i32 %add73}, i64 0, metadata !133), !dbg !448
  %indvars.iv.next = add i64 %indvars.iv, -1, !dbg !446
  %25 = trunc i64 %indvars.iv to i32, !dbg !446
  %cmp68 = icmp sgt i32 %25, %sub67399, !dbg !446
  br i1 %cmp68, label %for.body69, label %for.end76, !dbg !446

for.end76:                                        ; preds = %for.body69, %for.end61
  %highcount.0.lcssa = phi i32 [ 0, %for.end61 ], [ %add73, %for.body69 ]
  %cmp77 = icmp sgt i32 %lowcount.0.lcssa, %maxbar.0.lcssa442447, !dbg !449
  call void @llvm.dbg.value(metadata !{i32 %lowcount.0.lcssa}, i64 0, metadata !121), !dbg !449
  %lowcount.0.maxbar.0 = select i1 %cmp77, i32 %lowcount.0.lcssa, i32 %maxbar.0.lcssa442447, !dbg !449
  %cmp80 = icmp sgt i32 %highcount.0.lcssa, %lowcount.0.maxbar.0, !dbg !450
  call void @llvm.dbg.value(metadata !{i32 %highcount.0.lcssa}, i64 0, metadata !121), !dbg !450
  %maxbar.3 = select i1 %cmp80, i32 %highcount.0.lcssa, i32 %lowcount.0.maxbar.0, !dbg !450
  %sub83 = add nsw i32 %maxbar.3, -1, !dbg !451
  %div = sdiv i32 %sub83, 59, !dbg !451
  %add84 = add nsw i32 %div, 1, !dbg !451
  call void @llvm.dbg.value(metadata !{i32 %add84}, i64 0, metadata !120), !dbg !451
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([46 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str5, i64 0, i64 0), i32 %add84) #5, !dbg !452
  %call85 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([13 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0)) #5, !dbg !453
  %arrayidx86 = getelementptr inbounds [81 x i8]* %buffer, i64 0, i64 80, !dbg !454
  store i8 0, i8* %arrayidx86, align 16, !dbg !454, !tbaa !363
  %arrayidx87 = getelementptr inbounds [81 x i8]* %buffer, i64 0, i64 79, !dbg !455
  store i8 10, i8* %arrayidx87, align 1, !dbg !455, !tbaa !363
  %26 = load i32* %lowscore, align 4, !dbg !456, !tbaa !362
  call void @llvm.dbg.value(metadata !{i32 %26}, i64 0, metadata !123), !dbg !456
  %27 = load i32* %highscore, align 4, !dbg !456, !tbaa !362
  %cmp91396 = icmp sgt i32 %26, %27, !dbg !456
  br i1 %cmp91396, label %for.end76.for.end224_crit_edge, label %for.body92.lr.ph, !dbg !456

for.end76.for.end224_crit_edge:                   ; preds = %for.end76
  %fit_type225.pre = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 8, !dbg !458
  br label %for.end224, !dbg !456

for.body92.lr.ph:                                 ; preds = %for.end76
  %cmp106 = icmp sgt i32 %lowcount.0.lcssa, 0, !dbg !459
  %sub108 = add nsw i32 %lowcount.0.lcssa, -1, !dbg !462
  %cmp134 = icmp sgt i32 %highcount.0.lcssa, 0, !dbg !464
  %sub136 = add nsw i32 %highcount.0.lcssa, -1, !dbg !466
  %fit_type = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 8, !dbg !468
  %histogram159 = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 0, !dbg !469
  %arrayidx171 = getelementptr inbounds [81 x i8]* %buffer, i64 0, i64 20, !dbg !470
  %expect200 = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 7, !dbg !471
  br label %for.body92, !dbg !456

for.body92:                                       ; preds = %for.inc222.for.body92_crit_edge, %for.body92.lr.ph
  %28 = phi i32 [ %27, %for.body92.lr.ph ], [ %57, %for.inc222.for.body92_crit_edge ]
  %i.3397 = phi i32 [ %26, %for.body92.lr.ph ], [ %inc223, %for.inc222.for.body92_crit_edge ]
  call void @llvm.memset.p0i8.i64(i8* %0, i8 32, i64 79, i32 16, i1 false), !dbg !472
  %29 = load i32* %min, align 4, !dbg !473, !tbaa !362
  %sub94 = sub nsw i32 %i.3397, %29, !dbg !473
  call void @llvm.dbg.value(metadata !{i32 %sub94}, i64 0, metadata !124), !dbg !473
  %cmp95 = icmp slt i32 %i.3397, %lowbound.3449, !dbg !474
  %cmp97 = icmp sgt i32 %i.3397, %highbound.1, !dbg !475
  %or.cond = or i1 %cmp95, %cmp97, !dbg !474
  br i1 %or.cond, label %for.inc222, label %if.else99, !dbg !474

if.else99:                                        ; preds = %for.body92
  %cmp100 = icmp eq i32 %i.3397, %lowbound.3449, !dbg !476
  br i1 %cmp100, label %land.lhs.true, label %if.else126, !dbg !476

land.lhs.true:                                    ; preds = %if.else99
  %30 = load i32* %lowscore, align 4, !dbg !476, !tbaa !362
  %cmp102 = icmp eq i32 %lowbound.3449, %30, !dbg !476
  br i1 %cmp102, label %if.else126, label %if.then103, !dbg !476

if.then103:                                       ; preds = %land.lhs.true
  %add104 = add nsw i32 %lowbound.3449, 1, !dbg !477
  %call105 = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([14 x i8]* @.str9, i64 0, i64 0), i32 %add104, i32 %lowcount.0.lcssa, i8* getelementptr inbounds ([2 x i8]* @.str10, i64 0, i64 0)) #5, !dbg !477
  br i1 %cmp106, label %if.then107, label %if.end123, !dbg !459

if.then107:                                       ; preds = %if.then103
  %div109 = sdiv i32 %sub108, %add84, !dbg !462
  %add110 = add i32 %div109, 1, !dbg !462
  call void @llvm.dbg.value(metadata !{i32 %add110}, i64 0, metadata !122), !dbg !462
  %cmp111 = icmp sgt i32 %div109, 59, !dbg !478
  br i1 %cmp111, label %if.then112, label %for.cond114.preheader, !dbg !478

if.then112:                                       ; preds = %if.then107
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([5 x i8]* @.str11, i64 0, i64 0)) #5, !dbg !478
  br label %for.cond114.preheader, !dbg !478

for.cond114.preheader:                            ; preds = %if.then112, %if.then107
  %cmp115387 = icmp sgt i32 %div109, -1, !dbg !479
  br i1 %cmp115387, label %for.body116.lr.ph, label %if.end123, !dbg !479

for.body116.lr.ph:                                ; preds = %for.cond114.preheader
  %31 = xor i32 %div109, -1, !dbg !479
  %32 = icmp sgt i32 %31, -1
  %smax = select i1 %32, i32 %31, i32 -1
  %33 = add i32 %add110, %smax, !dbg !479
  %34 = zext i32 %33 to i64
  %35 = add i64 %34, 1, !dbg !479
  call void @llvm.memset.p0i8.i64(i8* %arrayidx171, i8 61, i64 %35, i32 4, i1 false), !dbg !479
  br label %if.end123, !dbg !479

if.end123:                                        ; preds = %for.cond114.preheader, %for.body116.lr.ph, %if.then103
  %call125 = call i32 @fputs(i8* %0, %struct._IO_FILE* %fp) #5, !dbg !481
  br label %for.inc222, !dbg !482

if.else126:                                       ; preds = %land.lhs.true, %if.else99
  %cmp127 = icmp ne i32 %i.3397, %highbound.1, !dbg !483
  %cmp130 = icmp eq i32 %highbound.1, %28, !dbg !483
  %or.cond451 = or i1 %cmp127, %cmp130, !dbg !483
  br i1 %or.cond451, label %if.end154, label %if.then131, !dbg !483

if.then131:                                       ; preds = %if.else126
  %call133 = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([14 x i8]* @.str12, i64 0, i64 0), i32 %highbound.1, i32 %highcount.0.lcssa, i8* getelementptr inbounds ([2 x i8]* @.str10, i64 0, i64 0)) #5, !dbg !484
  br i1 %cmp134, label %if.then135, label %if.end148, !dbg !464

if.then135:                                       ; preds = %if.then131
  %div137 = sdiv i32 %sub136, %add84, !dbg !466
  call void @llvm.dbg.value(metadata !{i32 %add138}, i64 0, metadata !122), !dbg !466
  call void @llvm.dbg.value(metadata !485, i64 0, metadata !129), !dbg !486
  %cmp140390 = icmp sgt i32 %div137, -1, !dbg !486
  br i1 %cmp140390, label %for.body141.lr.ph, label %if.end148, !dbg !486

for.body141.lr.ph:                                ; preds = %if.then135
  %add138 = add nsw i32 %div137, 1, !dbg !466
  %36 = xor i32 %div137, -1, !dbg !486
  %37 = icmp sgt i32 %36, -1
  %smax428 = select i1 %37, i32 %36, i32 -1
  %38 = add i32 %add138, %smax428, !dbg !486
  %39 = zext i32 %38 to i64
  %40 = add i64 %39, 1, !dbg !486
  call void @llvm.memset.p0i8.i64(i8* %arrayidx171, i8 61, i64 %40, i32 4, i1 false), !dbg !486
  br label %if.end148, !dbg !486

if.end148:                                        ; preds = %if.then135, %for.body141.lr.ph, %if.then131
  %call150 = call i32 @fputs(i8* %0, %struct._IO_FILE* %fp) #5, !dbg !488
  br label %for.inc222, !dbg !489

if.end154:                                        ; preds = %if.else126
  %41 = load i32* %fit_type, align 4, !dbg !468, !tbaa !362
  %cmp155 = icmp eq i32 %41, 0, !dbg !468
  %idxprom158 = sext i32 %sub94 to i64, !dbg !469
  %42 = load i32** %histogram159, align 8, !dbg !469, !tbaa !371
  %arrayidx160 = getelementptr inbounds i32* %42, i64 %idxprom158, !dbg !469
  %43 = load i32* %arrayidx160, align 4, !dbg !469, !tbaa !362
  br i1 %cmp155, label %if.else164, label %if.then156, !dbg !468

if.then156:                                       ; preds = %if.end154
  %44 = load float** %expect200, align 8, !dbg !469, !tbaa !371
  %arrayidx162 = getelementptr inbounds float* %44, i64 %idxprom158, !dbg !469
  %45 = load float* %arrayidx162, align 4, !dbg !469, !tbaa !490
  %conv = fptosi float %45 to i32, !dbg !469
  %call163 = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([13 x i8]* @.str13, i64 0, i64 0), i32 %i.3397, i32 %43, i32 %conv) #5, !dbg !469
  br label %if.end170, !dbg !469

if.else164:                                       ; preds = %if.end154
  %call169 = call i32 (i8*, i8*, ...)* @sprintf(i8* %0, i8* getelementptr inbounds ([13 x i8]* @.str14, i64 0, i64 0), i32 %i.3397, i32 %43, i8* getelementptr inbounds ([2 x i8]* @.str10, i64 0, i64 0)) #5, !dbg !491
  br label %if.end170

if.end170:                                        ; preds = %if.else164, %if.then156
  store i8 32, i8* %arrayidx171, align 4, !dbg !470, !tbaa !363
  %46 = load i32** %histogram159, align 8, !dbg !492, !tbaa !371
  %arrayidx174 = getelementptr inbounds i32* %46, i64 %idxprom158, !dbg !492
  %47 = load i32* %arrayidx174, align 4, !dbg !492, !tbaa !362
  %cmp175 = icmp sgt i32 %47, 0, !dbg !492
  br i1 %cmp175, label %if.then177, label %if.end194, !dbg !492

if.then177:                                       ; preds = %if.end170
  %sub181 = add nsw i32 %47, -1, !dbg !493
  %div182 = sdiv i32 %sub181, %add84, !dbg !493
  call void @llvm.dbg.value(metadata !{i32 %add183}, i64 0, metadata !122), !dbg !493
  call void @llvm.dbg.value(metadata !485, i64 0, metadata !129), !dbg !495
  %cmp185393 = icmp sgt i32 %div182, -1, !dbg !495
  br i1 %cmp185393, label %for.body187.lr.ph, label %if.end194, !dbg !495

for.body187.lr.ph:                                ; preds = %if.then177
  %add183 = add nsw i32 %div182, 1, !dbg !493
  %48 = xor i32 %div182, -1, !dbg !495
  %49 = icmp sgt i32 %48, -1
  %smax430 = select i1 %49, i32 %48, i32 -1
  %50 = add i32 %add183, %smax430, !dbg !495
  %51 = zext i32 %50 to i64
  %52 = add i64 %51, 1, !dbg !495
  call void @llvm.memset.p0i8.i64(i8* %arrayidx171, i8 61, i64 %52, i32 4, i1 false), !dbg !495
  br label %if.end194, !dbg !495

if.end194:                                        ; preds = %if.then177, %for.body187.lr.ph, %if.end170
  %53 = load i32* %fit_type, align 4, !dbg !471, !tbaa !362
  %cmp196 = icmp eq i32 %53, 0, !dbg !471
  br i1 %cmp196, label %if.end219, label %land.lhs.true198, !dbg !471

land.lhs.true198:                                 ; preds = %if.end194
  %54 = load float** %expect200, align 8, !dbg !471, !tbaa !371
  %arrayidx201 = getelementptr inbounds float* %54, i64 %idxprom158, !dbg !471
  %55 = load float* %arrayidx201, align 4, !dbg !471, !tbaa !490
  %conv202 = fptosi float %55 to i32, !dbg !471
  %cmp203 = icmp sgt i32 %conv202, 0, !dbg !471
  br i1 %cmp203, label %if.then205, label %if.end219, !dbg !471

if.then205:                                       ; preds = %land.lhs.true198
  %sub209 = fadd float %55, -1.000000e+00, !dbg !497
  %conv210 = fptosi float %sub209 to i32, !dbg !497
  %div211 = sdiv i32 %conv210, %add84, !dbg !497
  %add212 = add nsw i32 %div211, 20, !dbg !497
  call void @llvm.dbg.value(metadata !{i32 %add212}, i64 0, metadata !129), !dbg !497
  %cmp213 = icmp slt i32 %add212, 78, !dbg !499
  %56 = sext i32 %add212 to i64, !dbg !500
  %idxprom217 = select i1 %cmp213, i64 %56, i64 78, !dbg !500
  %arrayidx218 = getelementptr inbounds [81 x i8]* %buffer, i64 0, i64 %idxprom217, !dbg !500
  store i8 42, i8* %arrayidx218, align 1, !dbg !500, !tbaa !363
  br label %if.end219, !dbg !501

if.end219:                                        ; preds = %if.end194, %if.then205, %land.lhs.true198
  %call221 = call i32 @fputs(i8* %0, %struct._IO_FILE* %fp) #5, !dbg !502
  br label %for.inc222, !dbg !503

for.inc222:                                       ; preds = %for.body92, %if.end219, %if.end148, %if.end123
  call void @llvm.dbg.value(metadata !{i32 %inc223}, i64 0, metadata !123), !dbg !456
  %57 = load i32* %highscore, align 4, !dbg !456, !tbaa !362
  %cmp91 = icmp slt i32 %i.3397, %57, !dbg !456
  br i1 %cmp91, label %for.inc222.for.body92_crit_edge, label %for.end224, !dbg !456

for.inc222.for.body92_crit_edge:                  ; preds = %for.inc222
  %inc223 = add nsw i32 %i.3397, 1, !dbg !456
  br label %for.body92, !dbg !456

for.end224:                                       ; preds = %for.inc222, %for.end76.for.end224_crit_edge
  %fit_type225.pre-phi = phi i32* [ %fit_type225.pre, %for.end76.for.end224_crit_edge ], [ %fit_type, %for.inc222 ], !dbg !458
  %58 = load i32* %fit_type225.pre-phi, align 4, !dbg !458, !tbaa !362
  switch i32 %58, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb227
    i32 2, label %sw.bb240
  ], !dbg !458

sw.bb:                                            ; preds = %for.end224
  %call226 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([35 x i8]* @.str15, i64 0, i64 0)) #5, !dbg !504
  br label %sw.epilog, !dbg !506

sw.bb227:                                         ; preds = %for.end224
  %call228 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([50 x i8]* @.str16, i64 0, i64 0)) #5, !dbg !507
  %arrayidx229 = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 9, i64 0, !dbg !508
  %59 = load float* %arrayidx229, align 4, !dbg !508, !tbaa !490
  %conv230 = fpext float %59 to double, !dbg !508
  %call231 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([27 x i8]* @.str17, i64 0, i64 0), double %conv230) #5, !dbg !508
  %arrayidx233 = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 9, i64 1, !dbg !509
  %60 = load float* %arrayidx233, align 4, !dbg !509, !tbaa !490
  %conv234 = fpext float %60 to double, !dbg !509
  %call235 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([27 x i8]* @.str18, i64 0, i64 0), double %conv234) #5, !dbg !509
  %chisq = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 10, !dbg !510
  %61 = load float* %chisq, align 4, !dbg !510, !tbaa !490
  %conv236 = fpext float %61 to double, !dbg !510
  %call237 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([27 x i8]* @.str19, i64 0, i64 0), double %conv236) #5, !dbg !510
  %chip = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 11, !dbg !511
  %62 = load float* %chip, align 4, !dbg !511, !tbaa !490
  %conv238 = fpext float %62 to double, !dbg !511
  %call239 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([27 x i8]* @.str20, i64 0, i64 0), double %conv238) #5, !dbg !511
  br label %sw.epilog, !dbg !512

sw.bb240:                                         ; preds = %for.end224
  %call241 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([55 x i8]* @.str21, i64 0, i64 0)) #5, !dbg !513
  %arrayidx243 = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 9, i64 0, !dbg !514
  %63 = load float* %arrayidx243, align 4, !dbg !514, !tbaa !490
  %conv244 = fpext float %63 to double, !dbg !514
  %call245 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([27 x i8]* @.str22, i64 0, i64 0), double %conv244) #5, !dbg !514
  %arrayidx247 = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 9, i64 1, !dbg !515
  %64 = load float* %arrayidx247, align 4, !dbg !515, !tbaa !490
  %conv248 = fpext float %64 to double, !dbg !515
  %call249 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([27 x i8]* @.str23, i64 0, i64 0), double %conv248) #5, !dbg !515
  %chisq250 = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 10, !dbg !516
  %65 = load float* %chisq250, align 4, !dbg !516, !tbaa !490
  %conv251 = fpext float %65 to double, !dbg !516
  %call252 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([27 x i8]* @.str19, i64 0, i64 0), double %conv251) #5, !dbg !516
  %chip253 = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 11, !dbg !517
  %66 = load float* %chip253, align 4, !dbg !517, !tbaa !490
  %conv254 = fpext float %66 to double, !dbg !517
  %call255 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([27 x i8]* @.str20, i64 0, i64 0), double %conv254) #5, !dbg !517
  br label %sw.epilog, !dbg !518

sw.epilog:                                        ; preds = %for.end224, %sw.bb240, %sw.bb227, %sw.bb
  call void @llvm.lifetime.end(i64 81, i8* %0) #4, !dbg !519
  ret void, !dbg !520
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind optsize
declare i32 @fputs(i8* nocapture, %struct._IO_FILE* nocapture) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind optsize uwtable
define void @PrintXMGRHistogram(%struct._IO_FILE* nocapture %fp, %struct.histogram_s* nocapture %h) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !137), !dbg !521
  tail call void @llvm.dbg.value(metadata !{%struct.histogram_s* %h}, i64 0, metadata !138), !dbg !521
  %lowscore = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 4, !dbg !522
  %0 = load i32* %lowscore, align 4, !dbg !522, !tbaa !362
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !139), !dbg !522
  %highscore = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 3, !dbg !522
  %1 = load i32* %highscore, align 4, !dbg !522, !tbaa !362
  %cmp66 = icmp sgt i32 %0, %1, !dbg !522
  br i1 %cmp66, label %for.end, label %for.body.lr.ph, !dbg !522

for.body.lr.ph:                                   ; preds = %entry
  %min = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 1, !dbg !524
  %histogram = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 0, !dbg !524
  %total = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 6, !dbg !525
  br label %for.body, !dbg !522

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %2 = phi i32 [ %1, %for.body.lr.ph ], [ %7, %for.inc.for.body_crit_edge ]
  %sc.067 = phi i32 [ %0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %3 = load i32* %min, align 4, !dbg !524, !tbaa !362
  %sub = sub nsw i32 %sc.067, %3, !dbg !524
  %idxprom = sext i32 %sub to i64, !dbg !524
  %4 = load i32** %histogram, align 8, !dbg !524, !tbaa !371
  %arrayidx = getelementptr inbounds i32* %4, i64 %idxprom, !dbg !524
  %5 = load i32* %arrayidx, align 4, !dbg !524, !tbaa !362
  %cmp1 = icmp sgt i32 %5, 0, !dbg !524
  br i1 %cmp1, label %if.then, label %for.inc, !dbg !524

if.then:                                          ; preds = %for.body
  %conv = sitofp i32 %5 to float, !dbg !525
  %6 = load i32* %total, align 4, !dbg !525, !tbaa !362
  %conv7 = sitofp i32 %6 to float, !dbg !525
  %div = fdiv float %conv, %conv7, !dbg !525
  %conv8 = fpext float %div to double, !dbg !525
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([9 x i8]* @.str24, i64 0, i64 0), i32 %sc.067, double %conv8) #5, !dbg !525
  %.pre = load i32* %highscore, align 4, !dbg !522, !tbaa !362
  br label %for.inc, !dbg !525

for.inc:                                          ; preds = %for.body, %if.then
  %7 = phi i32 [ %2, %for.body ], [ %.pre, %if.then ], !dbg !522
  tail call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !139), !dbg !522
  %cmp = icmp slt i32 %sc.067, %7, !dbg !522
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end, !dbg !522

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  %inc = add nsw i32 %sc.067, 1, !dbg !522
  br label %for.body, !dbg !522

for.end:                                          ; preds = %for.inc, %entry
  %8 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str25, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %fp), !dbg !526
  %fit_type = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 8, !dbg !527
  %9 = load i32* %fit_type, align 4, !dbg !527, !tbaa !362
  %cmp10 = icmp eq i32 %9, 0, !dbg !527
  br i1 %cmp10, label %if.end38, label %if.then12, !dbg !527

if.then12:                                        ; preds = %for.end
  %10 = load i32* %lowscore, align 4, !dbg !528, !tbaa !362
  tail call void @llvm.dbg.value(metadata !{i32 %10}, i64 0, metadata !139), !dbg !528
  %11 = load i32* %highscore, align 4, !dbg !528, !tbaa !362
  %cmp1664 = icmp sgt i32 %10, %11, !dbg !528
  br i1 %cmp1664, label %for.end36, label %for.body18.lr.ph, !dbg !528

for.body18.lr.ph:                                 ; preds = %if.then12
  %arrayidx20 = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 9, i64 0, !dbg !531
  %arrayidx22 = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 9, i64 1, !dbg !531
  br label %for.body18, !dbg !528

for.body18:                                       ; preds = %for.body18, %for.body18.lr.ph
  %sc.165 = phi i32 [ %10, %for.body18.lr.ph ], [ %inc35, %for.body18 ]
  %conv19 = sitofp i32 %sc.165 to float, !dbg !531
  %add = fadd float %conv19, 1.000000e+00, !dbg !531
  %12 = load float* %arrayidx20, align 4, !dbg !531, !tbaa !490
  %13 = load float* %arrayidx22, align 4, !dbg !531, !tbaa !490
  %call23 = tail call double @ExtremeValueP(float %add, float %12, float %13) #7, !dbg !531
  %sub24 = fsub double 1.000000e+00, %call23, !dbg !531
  %14 = load float* %arrayidx20, align 4, !dbg !533, !tbaa !490
  %15 = load float* %arrayidx22, align 4, !dbg !533, !tbaa !490
  %call30 = tail call double @ExtremeValueP(float %conv19, float %14, float %15) #7, !dbg !533
  %sub31 = fsub double 1.000000e+00, %call30, !dbg !533
  %sub32 = fsub double %sub24, %sub31, !dbg !533
  tail call void @llvm.dbg.value(metadata !{double %sub32}, i64 0, metadata !140), !dbg !533
  %call33 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([9 x i8]* @.str24, i64 0, i64 0), i32 %sc.165, double %sub32) #5, !dbg !534
  %inc35 = add nsw i32 %sc.165, 1, !dbg !528
  tail call void @llvm.dbg.value(metadata !{i32 %inc35}, i64 0, metadata !139), !dbg !528
  %16 = load i32* %highscore, align 4, !dbg !528, !tbaa !362
  %cmp16 = icmp slt i32 %sc.165, %16, !dbg !528
  br i1 %cmp16, label %for.body18, label %for.end36, !dbg !528

for.end36:                                        ; preds = %for.body18, %if.then12
  %17 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str25, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %fp), !dbg !535
  br label %if.end38, !dbg !536

if.end38:                                         ; preds = %for.end, %for.end36
  ret void, !dbg !537
}

; Function Attrs: nounwind optsize uwtable
define double @ExtremeValueP(float %x, float %mu, float %lambda) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{float %x}, i64 0, metadata !250), !dbg !538
  tail call void @llvm.dbg.value(metadata !{float %mu}, i64 0, metadata !251), !dbg !538
  tail call void @llvm.dbg.value(metadata !{float %lambda}, i64 0, metadata !252), !dbg !538
  %sub = fsub float %x, %mu, !dbg !539
  %mul = fmul float %sub, %lambda, !dbg !539
  %conv = fpext float %mul to double, !dbg !539
  %cmp = fcmp ugt double %conv, 0xC00CAD875732FBD5, !dbg !539
  br i1 %cmp, label %if.end, label %return, !dbg !539

if.end:                                           ; preds = %entry
  %cmp8 = fcmp ult double %conv, 7.084000e+02, !dbg !540
  br i1 %cmp8, label %if.end11, label %return, !dbg !540

if.end11:                                         ; preds = %if.end
  %conv12 = fpext float %lambda to double, !dbg !541
  %mul13 = fmul double %conv12, -1.000000e+00, !dbg !541
  %conv15 = fpext float %sub to double, !dbg !541
  %mul16 = fmul double %conv15, %mul13, !dbg !541
  %call17 = tail call double @exp(double %mul16) #5, !dbg !541
  tail call void @llvm.dbg.value(metadata !{double %call17}, i64 0, metadata !253), !dbg !541
  %cmp18 = fcmp olt double %call17, 1.000000e-07, !dbg !542
  br i1 %cmp18, label %return, label %if.else, !dbg !542

if.else:                                          ; preds = %if.end11
  %mul21 = fmul double %call17, -1.000000e+00, !dbg !543
  %call22 = tail call double @exp(double %mul21) #5, !dbg !543
  %sub23 = fsub double 1.000000e+00, %call22, !dbg !543
  br label %return, !dbg !543

return:                                           ; preds = %if.end11, %if.end, %entry, %if.else
  %retval.0 = phi double [ %sub23, %if.else ], [ 1.000000e+00, %entry ], [ 0.000000e+00, %if.end ], [ %call17, %if.end11 ]
  ret double %retval.0, !dbg !544
}

; Function Attrs: nounwind optsize uwtable
define void @PrintXMGRDistribution(%struct._IO_FILE* nocapture %fp, %struct.histogram_s* nocapture %h) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !144), !dbg !545
  tail call void @llvm.dbg.value(metadata !{%struct.histogram_s* %h}, i64 0, metadata !145), !dbg !545
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !147), !dbg !546
  %lowscore = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 4, !dbg !546
  %0 = load i32* %lowscore, align 4, !dbg !546, !tbaa !362
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !146), !dbg !546
  %highscore = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 3, !dbg !546
  %1 = load i32* %highscore, align 4, !dbg !546, !tbaa !362
  %cmp46 = icmp sgt i32 %0, %1, !dbg !546
  br i1 %cmp46, label %for.end, label %for.body.lr.ph, !dbg !546

for.body.lr.ph:                                   ; preds = %entry
  %min = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 1, !dbg !548
  %histogram = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 0, !dbg !548
  %total = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 6, !dbg !550
  br label %for.body, !dbg !546

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %sc.048 = phi i32 [ %0, %for.body.lr.ph ], [ %add1, %for.body ]
  %cum.047 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.body ]
  %2 = load i32* %min, align 4, !dbg !548, !tbaa !362
  %sub = sub nsw i32 %sc.048, %2, !dbg !548
  %idxprom = sext i32 %sub to i64, !dbg !548
  %3 = load i32** %histogram, align 8, !dbg !548, !tbaa !371
  %arrayidx = getelementptr inbounds i32* %3, i64 %idxprom, !dbg !548
  %4 = load i32* %arrayidx, align 4, !dbg !548, !tbaa !362
  %add = add nsw i32 %4, %cum.047, !dbg !548
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !147), !dbg !548
  %add1 = add nsw i32 %sc.048, 1, !dbg !550
  %conv = sitofp i32 %add to float, !dbg !550
  %5 = load i32* %total, align 4, !dbg !550, !tbaa !362
  %conv2 = sitofp i32 %5 to float, !dbg !550
  %div = fdiv float %conv, %conv2, !dbg !550
  %conv3 = fpext float %div to double, !dbg !550
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([9 x i8]* @.str24, i64 0, i64 0), i32 %add1, double %conv3) #5, !dbg !550
  tail call void @llvm.dbg.value(metadata !{i32 %add1}, i64 0, metadata !146), !dbg !546
  %6 = load i32* %highscore, align 4, !dbg !546, !tbaa !362
  %cmp = icmp slt i32 %sc.048, %6, !dbg !546
  br i1 %cmp, label %for.body, label %for.end, !dbg !546

for.end:                                          ; preds = %for.body, %entry
  %7 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str25, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %fp), !dbg !551
  %fit_type = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 8, !dbg !552
  %8 = load i32* %fit_type, align 4, !dbg !552, !tbaa !362
  %cmp5 = icmp eq i32 %8, 0, !dbg !552
  br i1 %cmp5, label %if.end, label %if.then, !dbg !552

if.then:                                          ; preds = %for.end
  %9 = load i32* %lowscore, align 4, !dbg !553, !tbaa !362
  tail call void @llvm.dbg.value(metadata !{i32 %9}, i64 0, metadata !146), !dbg !553
  %10 = load i32* %highscore, align 4, !dbg !553, !tbaa !362
  %cmp1044 = icmp sgt i32 %9, %10, !dbg !553
  br i1 %cmp1044, label %for.end22, label %for.body12.lr.ph, !dbg !553

for.body12.lr.ph:                                 ; preds = %if.then
  %arrayidx14 = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 9, i64 0, !dbg !556
  %arrayidx16 = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 9, i64 1, !dbg !556
  br label %for.body12, !dbg !553

for.body12:                                       ; preds = %for.body12, %for.body12.lr.ph
  %sc.145 = phi i32 [ %9, %for.body12.lr.ph ], [ %inc21, %for.body12 ]
  %conv13 = sitofp i32 %sc.145 to float, !dbg !556
  %11 = load float* %arrayidx14, align 4, !dbg !556, !tbaa !490
  %12 = load float* %arrayidx16, align 4, !dbg !556, !tbaa !490
  %call17 = tail call double @ExtremeValueP(float %conv13, float %11, float %12) #7, !dbg !556
  %sub18 = fsub double 1.000000e+00, %call17, !dbg !556
  tail call void @llvm.dbg.value(metadata !{double %sub18}, i64 0, metadata !148), !dbg !556
  %call19 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([9 x i8]* @.str24, i64 0, i64 0), i32 %sc.145, double %sub18) #5, !dbg !558
  %inc21 = add nsw i32 %sc.145, 1, !dbg !553
  tail call void @llvm.dbg.value(metadata !{i32 %inc21}, i64 0, metadata !146), !dbg !553
  %13 = load i32* %highscore, align 4, !dbg !553, !tbaa !362
  %cmp10 = icmp slt i32 %sc.145, %13, !dbg !553
  br i1 %cmp10, label %for.body12, label %for.end22, !dbg !553

for.end22:                                        ; preds = %for.body12, %if.then
  %14 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str25, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %fp), !dbg !559
  br label %if.end, !dbg !560

if.end:                                           ; preds = %for.end, %for.end22
  ret void, !dbg !561
}

; Function Attrs: nounwind optsize uwtable
define void @PrintXMGRRegressionLine(%struct._IO_FILE* nocapture %fp, %struct.histogram_s* nocapture %h) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !151), !dbg !562
  tail call void @llvm.dbg.value(metadata !{%struct.histogram_s* %h}, i64 0, metadata !152), !dbg !562
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !154), !dbg !563
  %lowscore = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 4, !dbg !563
  %0 = load i32* %lowscore, align 4, !dbg !563, !tbaa !362
  tail call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !153), !dbg !563
  %highscore = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 3, !dbg !563
  %1 = load i32* %highscore, align 4, !dbg !563, !tbaa !362
  %cmp58 = icmp sgt i32 %0, %1, !dbg !563
  br i1 %cmp58, label %for.end, label %for.body.lr.ph, !dbg !563

for.body.lr.ph:                                   ; preds = %entry
  %min = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 1, !dbg !565
  %histogram = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 0, !dbg !565
  %total = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 6, !dbg !567
  br label %for.body, !dbg !563

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %cum.060 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.inc ]
  %sc.059 = phi i32 [ %0, %for.body.lr.ph ], [ %add6, %for.inc ]
  %2 = load i32* %min, align 4, !dbg !565, !tbaa !362
  %sub = sub nsw i32 %sc.059, %2, !dbg !565
  %idxprom = sext i32 %sub to i64, !dbg !565
  %3 = load i32** %histogram, align 8, !dbg !565, !tbaa !371
  %arrayidx = getelementptr inbounds i32* %3, i64 %idxprom, !dbg !565
  %4 = load i32* %arrayidx, align 4, !dbg !565, !tbaa !362
  %add = add nsw i32 %4, %cum.060, !dbg !565
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !154), !dbg !565
  %conv = sitofp i32 %add to double, !dbg !567
  %5 = load i32* %total, align 4, !dbg !567, !tbaa !362
  %conv1 = sitofp i32 %5 to double, !dbg !567
  %div = fdiv double %conv, %conv1, !dbg !567
  %call = tail call double @log(double %div) #5, !dbg !567
  %mul = fmul double %call, -1.000000e+00, !dbg !567
  %call2 = tail call double @log(double %mul) #5, !dbg !567
  tail call void @llvm.dbg.value(metadata !{double %call2}, i64 0, metadata !155), !dbg !567
  %6 = load i32* %total, align 4, !dbg !568, !tbaa !362
  %cmp4 = icmp slt i32 %add, %6, !dbg !568
  %add6 = add nsw i32 %sc.059, 1, !dbg !569
  br i1 %cmp4, label %if.then, label %for.inc, !dbg !568

if.then:                                          ; preds = %for.body
  %call7 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([9 x i8]* @.str24, i64 0, i64 0), i32 %add6, double %call2) #5, !dbg !569
  br label %for.inc, !dbg !569

for.inc:                                          ; preds = %for.body, %if.then
  tail call void @llvm.dbg.value(metadata !{i32 %add6}, i64 0, metadata !153), !dbg !563
  %7 = load i32* %highscore, align 4, !dbg !563, !tbaa !362
  %cmp = icmp slt i32 %sc.059, %7, !dbg !563
  br i1 %cmp, label %for.body, label %for.end, !dbg !563

for.end:                                          ; preds = %for.inc, %entry
  %8 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str25, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %fp), !dbg !570
  %fit_type = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 8, !dbg !571
  %9 = load i32* %fit_type, align 4, !dbg !571, !tbaa !362
  %cmp9 = icmp eq i32 %9, 0, !dbg !571
  br i1 %cmp9, label %if.end32, label %if.then11, !dbg !571

if.then11:                                        ; preds = %for.end
  %10 = load i32* %lowscore, align 4, !dbg !572, !tbaa !362
  tail call void @llvm.dbg.value(metadata !{i32 %10}, i64 0, metadata !153), !dbg !572
  %11 = load i32* %highscore, align 4, !dbg !572, !tbaa !362
  %cmp1556 = icmp sgt i32 %10, %11, !dbg !572
  br i1 %cmp1556, label %for.end30, label %for.body17.lr.ph, !dbg !572

for.body17.lr.ph:                                 ; preds = %if.then11
  %arrayidx19 = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 9, i64 0, !dbg !575
  %arrayidx21 = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 9, i64 1, !dbg !575
  br label %for.body17, !dbg !572

for.body17:                                       ; preds = %for.body17, %for.body17.lr.ph
  %sc.157 = phi i32 [ %10, %for.body17.lr.ph ], [ %inc29, %for.body17 ]
  %conv18 = sitofp i32 %sc.157 to float, !dbg !575
  %12 = load float* %arrayidx19, align 4, !dbg !575, !tbaa !490
  %13 = load float* %arrayidx21, align 4, !dbg !575, !tbaa !490
  %call22 = tail call double @ExtremeValueP(float %conv18, float %12, float %13) #7, !dbg !575
  %sub23 = fsub double 1.000000e+00, %call22, !dbg !575
  %call24 = tail call double @log(double %sub23) #5, !dbg !575
  %mul25 = fmul double %call24, -1.000000e+00, !dbg !575
  %call26 = tail call double @log(double %mul25) #5, !dbg !575
  tail call void @llvm.dbg.value(metadata !{double %call26}, i64 0, metadata !155), !dbg !575
  %call27 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([9 x i8]* @.str24, i64 0, i64 0), i32 %sc.157, double %call26) #5, !dbg !577
  %inc29 = add nsw i32 %sc.157, 1, !dbg !572
  tail call void @llvm.dbg.value(metadata !{i32 %inc29}, i64 0, metadata !153), !dbg !572
  %14 = load i32* %highscore, align 4, !dbg !572, !tbaa !362
  %cmp15 = icmp slt i32 %sc.157, %14, !dbg !572
  br i1 %cmp15, label %for.body17, label %for.end30, !dbg !572

for.end30:                                        ; preds = %for.body17, %if.then11
  %15 = tail call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str25, i64 0, i64 0), i64 2, i64 1, %struct._IO_FILE* %fp), !dbg !578
  br label %if.end32, !dbg !579

if.end32:                                         ; preds = %for.end, %for.end30
  ret void, !dbg !580
}

; Function Attrs: nounwind optsize
declare double @log(double) #3

; Function Attrs: nounwind optsize uwtable
define void @EVDBasicFit(%struct.histogram_s* nocapture %h) #0 {
entry:
  %slope = alloca float, align 4
  %intercept = alloca float, align 4
  %corr = alloca float, align 4
  call void @llvm.dbg.value(metadata !{%struct.histogram_s* %h}, i64 0, metadata !158), !dbg !581
  call void @llvm.dbg.declare(metadata !{float* %slope}, metadata !165), !dbg !582
  call void @llvm.dbg.declare(metadata !{float* %intercept}, metadata !166), !dbg !582
  call void @llvm.dbg.declare(metadata !{float* %corr}, metadata !167), !dbg !583
  %highscore = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 3, !dbg !584
  %0 = load i32* %highscore, align 4, !dbg !584, !tbaa !362
  %lowscore = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 4, !dbg !584
  %1 = load i32* %lowscore, align 4, !dbg !584, !tbaa !362
  %sub = sub nsw i32 %0, %1, !dbg !584
  %add = add nsw i32 %sub, 1, !dbg !584
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !161), !dbg !584
  %conv = sext i32 %add to i64, !dbg !585
  %mul = shl nsw i64 %conv, 2, !dbg !585
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i32 492, i64 %mul) #5, !dbg !585
  %2 = bitcast i8* %call to float*, !dbg !585
  call void @llvm.dbg.value(metadata !{float* %2}, i64 0, metadata !159), !dbg !585
  %call3 = call i8* @sre_malloc(i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i32 493, i64 %mul) #5, !dbg !586
  %3 = bitcast i8* %call3 to float*, !dbg !586
  call void @llvm.dbg.value(metadata !{float* %3}, i64 0, metadata !160), !dbg !586
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !164), !dbg !587
  %cmp109 = icmp sgt i32 %sub, -1, !dbg !587
  br i1 %cmp109, label %for.body, label %for.end, !dbg !587

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv111 = phi i64 [ %indvars.iv.next112, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds float* %3, i64 %indvars.iv111, !dbg !589
  store float 0.000000e+00, float* %arrayidx, align 4, !dbg !589, !tbaa !490
  %arrayidx6 = getelementptr inbounds float* %2, i64 %indvars.iv111, !dbg !589
  store float 0.000000e+00, float* %arrayidx6, align 4, !dbg !589, !tbaa !490
  %indvars.iv.next112 = add i64 %indvars.iv111, 1, !dbg !587
  %4 = trunc i64 %indvars.iv.next112 to i32, !dbg !587
  %cmp = icmp slt i32 %4, %add, !dbg !587
  br i1 %cmp, label %for.body, label %for.end, !dbg !587

for.end:                                          ; preds = %for.body, %entry
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !162), !dbg !590
  %5 = load i32* %lowscore, align 4, !dbg !591, !tbaa !362
  call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !163), !dbg !591
  %6 = load i32* %highscore, align 4, !dbg !591, !tbaa !362
  %cmp10106 = icmp sgt i32 %5, %6, !dbg !591
  br i1 %cmp10106, label %for.end31, label %for.body12.lr.ph, !dbg !591

for.body12.lr.ph:                                 ; preds = %for.end
  %min = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 1, !dbg !593
  %7 = load i32* %min, align 4, !dbg !593, !tbaa !362
  %histogram = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 0, !dbg !593
  %8 = load i32** %histogram, align 8, !dbg !593, !tbaa !371
  %total = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 6, !dbg !595
  %9 = load i32* %total, align 4, !dbg !595, !tbaa !362
  %conv18 = sitofp i32 %9 to float, !dbg !595
  %10 = sext i32 %5 to i64
  br label %for.body12, !dbg !591

for.body12:                                       ; preds = %for.body12, %for.body12.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body12 ], [ %10, %for.body12.lr.ph ]
  %sum.0108 = phi i32 [ %add16, %for.body12 ], [ 0, %for.body12.lr.ph ]
  %11 = trunc i64 %indvars.iv to i32, !dbg !593
  %sub13 = sub nsw i32 %11, %7, !dbg !593
  %idxprom14 = sext i32 %sub13 to i64, !dbg !593
  %arrayidx15 = getelementptr inbounds i32* %8, i64 %idxprom14, !dbg !593
  %12 = load i32* %arrayidx15, align 4, !dbg !593, !tbaa !362
  %add16 = add nsw i32 %12, %sum.0108, !dbg !593
  call void @llvm.dbg.value(metadata !{i32 %add16}, i64 0, metadata !162), !dbg !593
  %conv17 = sitofp i32 %add16 to float, !dbg !595
  %div = fdiv float %conv17, %conv18, !dbg !595
  %sub20 = sub nsw i32 %11, %5, !dbg !595
  %idxprom21 = sext i32 %sub20 to i64, !dbg !595
  %arrayidx22 = getelementptr inbounds float* %2, i64 %idxprom21, !dbg !595
  store float %div, float* %arrayidx22, align 4, !dbg !595, !tbaa !490
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !591
  %13 = trunc i64 %indvars.iv.next to i32, !dbg !596
  %conv24 = sitofp i32 %13 to float, !dbg !596
  %arrayidx28 = getelementptr inbounds float* %3, i64 %idxprom21, !dbg !596
  store float %conv24, float* %arrayidx28, align 4, !dbg !596, !tbaa !490
  %cmp10 = icmp slt i32 %11, %6, !dbg !591
  br i1 %cmp10, label %for.body12, label %for.end31, !dbg !591

for.end31:                                        ; preds = %for.body12, %for.end
  call void @llvm.dbg.value(metadata !{i32 %5}, i64 0, metadata !163), !dbg !597
  %cmp35104 = icmp slt i32 %5, %6, !dbg !597
  br i1 %cmp35104, label %for.body37, label %for.end53, !dbg !597

for.body37:                                       ; preds = %for.end31, %for.body37
  %14 = phi i32 [ %16, %for.body37 ], [ %5, %for.end31 ], !dbg !599
  %sc.1105 = phi i32 [ %inc52, %for.body37 ], [ %5, %for.end31 ]
  %sub39 = sub nsw i32 %sc.1105, %14, !dbg !599
  %idxprom40 = sext i32 %sub39 to i64, !dbg !599
  %arrayidx41 = getelementptr inbounds float* %2, i64 %idxprom40, !dbg !599
  %15 = load float* %arrayidx41, align 4, !dbg !599, !tbaa !490
  %conv42 = fpext float %15 to double, !dbg !599
  %call43 = call double @log(double %conv42) #5, !dbg !599
  %mul44 = fmul double %call43, -1.000000e+00, !dbg !599
  %call45 = call double @log(double %mul44) #5, !dbg !599
  %conv46 = fptrunc double %call45 to float, !dbg !599
  %16 = load i32* %lowscore, align 4, !dbg !599, !tbaa !362
  %sub48 = sub nsw i32 %sc.1105, %16, !dbg !599
  %idxprom49 = sext i32 %sub48 to i64, !dbg !599
  %arrayidx50 = getelementptr inbounds float* %2, i64 %idxprom49, !dbg !599
  store float %conv46, float* %arrayidx50, align 4, !dbg !599, !tbaa !490
  %inc52 = add nsw i32 %sc.1105, 1, !dbg !597
  call void @llvm.dbg.value(metadata !{i32 %inc52}, i64 0, metadata !163), !dbg !597
  %17 = load i32* %highscore, align 4, !dbg !597, !tbaa !362
  %cmp35 = icmp slt i32 %inc52, %17, !dbg !597
  br i1 %cmp35, label %for.body37, label %for.end53, !dbg !597

for.end53:                                        ; preds = %for.body37, %for.end31
  %call55 = call i32 @Linefit(float* %3, float* %2, i32 %sub, float* %intercept, float* %slope, float* %corr) #5, !dbg !600
  call void @llvm.dbg.value(metadata !{float* %slope}, i64 0, metadata !165), !dbg !601
  %18 = load float* %slope, align 4, !dbg !601, !tbaa !490
  %conv58 = fmul float %18, -1.000000e+00, !dbg !601
  call void @llvm.dbg.value(metadata !{float %conv58}, i64 0, metadata !168), !dbg !601
  call void @llvm.dbg.value(metadata !{float* %intercept}, i64 0, metadata !166), !dbg !602
  %19 = load float* %intercept, align 4, !dbg !602, !tbaa !490
  %div59 = fdiv float %19, %conv58, !dbg !602
  call void @llvm.dbg.value(metadata !{float %div59}, i64 0, metadata !169), !dbg !602
  %20 = load i32* %lowscore, align 4, !dbg !603, !tbaa !362
  %conv61 = sitofp i32 %20 to float, !dbg !603
  %21 = load i32* %highscore, align 4, !dbg !603, !tbaa !362
  %conv63 = sitofp i32 %21 to float, !dbg !603
  call void @ExtremeValueSetHistogram(%struct.histogram_s* %h, float %div59, float %conv58, float %conv61, float %conv63, i32 2) #7, !dbg !603
  call void @free(i8* %call3) #5, !dbg !604
  call void @free(i8* %call) #5, !dbg !605
  ret void, !dbg !606
}

; Function Attrs: optsize
declare i32 @Linefit(float*, float*, i32, float*, float*, float*) #2

; Function Attrs: nounwind optsize uwtable
define void @ExtremeValueSetHistogram(%struct.histogram_s* nocapture %h, float %mu, float %lambda, float %lowbound, float %highbound, i32 %ndegrees) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.histogram_s* %h}, i64 0, metadata !200), !dbg !607
  tail call void @llvm.dbg.value(metadata !{float %mu}, i64 0, metadata !201), !dbg !607
  tail call void @llvm.dbg.value(metadata !{float %lambda}, i64 0, metadata !202), !dbg !607
  tail call void @llvm.dbg.value(metadata !{float %lowbound}, i64 0, metadata !203), !dbg !608
  tail call void @llvm.dbg.value(metadata !{float %highbound}, i64 0, metadata !204), !dbg !608
  tail call void @llvm.dbg.value(metadata !{i32 %ndegrees}, i64 0, metadata !205), !dbg !608
  tail call void @llvm.dbg.value(metadata !{%struct.histogram_s* %h}, i64 0, metadata !609) #4, !dbg !611
  %expect.i = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 7, !dbg !612
  %0 = load float** %expect.i, align 8, !dbg !612, !tbaa !371
  %cmp.i = icmp eq float* %0, null, !dbg !612
  br i1 %cmp.i, label %UnfitHistogram.exit, label %if.then.i, !dbg !612

if.then.i:                                        ; preds = %entry
  %1 = bitcast float* %0 to i8*, !dbg !612
  tail call void @free(i8* %1) #5, !dbg !612
  br label %UnfitHistogram.exit, !dbg !612

UnfitHistogram.exit:                              ; preds = %entry, %if.then.i
  store float* null, float** %expect.i, align 8, !dbg !613, !tbaa !371
  %fit_type.i = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 8, !dbg !614
  store i32 1, i32* %fit_type.i, align 4, !dbg !615, !tbaa !362
  %arrayidx = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 9, i64 1, !dbg !616
  store float %lambda, float* %arrayidx, align 4, !dbg !616, !tbaa !490
  %arrayidx2 = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 9, i64 0, !dbg !617
  store float %mu, float* %arrayidx2, align 4, !dbg !617, !tbaa !490
  %max = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 2, !dbg !618
  %2 = load i32* %max, align 4, !dbg !618, !tbaa !362
  %min = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 1, !dbg !618
  %3 = load i32* %min, align 4, !dbg !618, !tbaa !362
  %sub = sub nsw i32 %2, %3, !dbg !618
  %add = add nsw i32 %sub, 1, !dbg !618
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !207), !dbg !618
  %conv = sext i32 %add to i64, !dbg !619
  %mul = shl nsw i64 %conv, 2, !dbg !619
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i32 696, i64 %mul) #5, !dbg !619
  %4 = bitcast i8* %call to float*, !dbg !619
  store float* %4, float** %expect.i, align 8, !dbg !619, !tbaa !371
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !208), !dbg !620
  %cmp154 = icmp sgt i32 %sub, -1, !dbg !620
  br i1 %cmp154, label %for.body.lr.ph, label %for.end, !dbg !620

for.body.lr.ph:                                   ; preds = %UnfitHistogram.exit
  %5 = add i32 %2, 1, !dbg !620
  %6 = sub i32 %5, %3, !dbg !620
  %7 = icmp sgt i32 %6, 1
  %.op = add i32 %6, -1, !dbg !620
  %8 = zext i32 %.op to i64
  %.op158 = shl nuw nsw i64 %8, 2, !dbg !620
  %.op158.op = add i64 %.op158, 4, !dbg !620
  %9 = select i1 %7, i64 %.op158.op, i64 4, !dbg !620
  call void @llvm.memset.p0i8.i64(i8* %call, i8 0, i64 %9, i32 4, i1 false), !dbg !622
  br label %for.end, !dbg !620

for.end:                                          ; preds = %for.body.lr.ph, %UnfitHistogram.exit
  %10 = load i32* %min, align 4, !dbg !623, !tbaa !362
  tail call void @llvm.dbg.value(metadata !{i32 %10}, i64 0, metadata !206), !dbg !623
  %11 = load i32* %max, align 4, !dbg !623, !tbaa !362
  %cmp9152 = icmp sgt i32 %10, %11, !dbg !623
  br i1 %cmp9152, label %for.end35, label %for.body11.lr.ph, !dbg !623

for.body11.lr.ph:                                 ; preds = %for.end
  %total = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 6, !dbg !625
  br label %for.body11, !dbg !623

for.body11:                                       ; preds = %for.body11, %for.body11.lr.ph
  %sc.0153 = phi i32 [ %10, %for.body11.lr.ph ], [ %add18, %for.body11 ]
  %conv12 = sitofp i32 %sc.0153 to float, !dbg !625
  %12 = load float* %arrayidx2, align 4, !dbg !625, !tbaa !490
  %13 = load float* %arrayidx, align 4, !dbg !625, !tbaa !490
  %14 = load i32* %total, align 4, !dbg !625, !tbaa !362
  tail call void @llvm.dbg.value(metadata !{float %conv12}, i64 0, metadata !626) #4, !dbg !627
  tail call void @llvm.dbg.value(metadata !{float %12}, i64 0, metadata !628) #4, !dbg !627
  tail call void @llvm.dbg.value(metadata !{float %13}, i64 0, metadata !629) #4, !dbg !627
  tail call void @llvm.dbg.value(metadata !{i32 %14}, i64 0, metadata !630) #4, !dbg !627
  %conv.i = sitofp i32 %14 to double, !dbg !631
  %call.i = tail call double @ExtremeValueP(float %conv12, float %12, float %13) #5, !dbg !631
  %mul.i = fmul double %conv.i, %call.i, !dbg !631
  %add18 = add nsw i32 %sc.0153, 1, !dbg !632
  %conv19 = sitofp i32 %add18 to float, !dbg !632
  %15 = load float* %arrayidx2, align 4, !dbg !632, !tbaa !490
  %16 = load float* %arrayidx, align 4, !dbg !632, !tbaa !490
  %17 = load i32* %total, align 4, !dbg !632, !tbaa !362
  tail call void @llvm.dbg.value(metadata !{float %conv19}, i64 0, metadata !633) #4, !dbg !634
  tail call void @llvm.dbg.value(metadata !{float %15}, i64 0, metadata !635) #4, !dbg !634
  tail call void @llvm.dbg.value(metadata !{float %16}, i64 0, metadata !636) #4, !dbg !634
  tail call void @llvm.dbg.value(metadata !{i32 %17}, i64 0, metadata !637) #4, !dbg !634
  %conv.i145 = sitofp i32 %17 to double, !dbg !638
  %call.i146 = tail call double @ExtremeValueP(float %conv19, float %15, float %16) #5, !dbg !638
  %mul.i147 = fmul double %conv.i145, %call.i146, !dbg !638
  %sub26 = fsub double %mul.i, %mul.i147, !dbg !632
  %conv27 = fptrunc double %sub26 to float, !dbg !632
  %18 = load i32* %min, align 4, !dbg !632, !tbaa !362
  %sub29 = sub nsw i32 %sc.0153, %18, !dbg !632
  %idxprom30 = sext i32 %sub29 to i64, !dbg !632
  %19 = load float** %expect.i, align 8, !dbg !632, !tbaa !371
  %arrayidx32 = getelementptr inbounds float* %19, i64 %idxprom30, !dbg !632
  store float %conv27, float* %arrayidx32, align 4, !dbg !632, !tbaa !490
  tail call void @llvm.dbg.value(metadata !{i32 %add18}, i64 0, metadata !206), !dbg !623
  %20 = load i32* %max, align 4, !dbg !623, !tbaa !362
  %cmp9 = icmp slt i32 %sc.0153, %20, !dbg !623
  br i1 %cmp9, label %for.body11, label %for.end35, !dbg !623

for.end35:                                        ; preds = %for.body11, %for.end
  %21 = phi i32 [ %10, %for.end ], [ %18, %for.body11 ]
  %chisq = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 10, !dbg !639
  store float 0.000000e+00, float* %chisq, align 4, !dbg !639, !tbaa !490
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !209), !dbg !640
  %conv36 = fptosi float %lowbound to i32, !dbg !641
  tail call void @llvm.dbg.value(metadata !{i32 %conv36}, i64 0, metadata !206), !dbg !641
  %conv38148 = sitofp i32 %conv36 to float, !dbg !641
  %cmp39149 = fcmp ugt float %conv38148, %highbound, !dbg !641
  br i1 %cmp39149, label %for.end79, label %for.body41.lr.ph, !dbg !641

for.body41.lr.ph:                                 ; preds = %for.end35
  %22 = load float** %expect.i, align 8, !dbg !643, !tbaa !371
  %histogram = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 0, !dbg !643
  %23 = sext i32 %conv36 to i64
  br label %for.body41, !dbg !641

for.body41:                                       ; preds = %for.body41.lr.ph, %for.inc77
  %24 = phi float [ 0.000000e+00, %for.body41.lr.ph ], [ %29, %for.inc77 ]
  %indvars.iv = phi i64 [ %23, %for.body41.lr.ph ], [ %indvars.iv.next, %for.inc77 ]
  %nbins.0150 = phi i32 [ 0, %for.body41.lr.ph ], [ %nbins.1, %for.inc77 ]
  %25 = trunc i64 %indvars.iv to i32, !dbg !643
  %sub43 = sub nsw i32 %25, %21, !dbg !643
  %idxprom44 = sext i32 %sub43 to i64, !dbg !643
  %arrayidx46 = getelementptr inbounds float* %22, i64 %idxprom44, !dbg !643
  %26 = load float* %arrayidx46, align 4, !dbg !643, !tbaa !490
  %cmp48 = fcmp ult float %26, 5.000000e+00, !dbg !643
  br i1 %cmp48, label %for.inc77, label %land.lhs.true, !dbg !643

land.lhs.true:                                    ; preds = %for.body41
  %27 = load i32** %histogram, align 8, !dbg !643, !tbaa !371
  %arrayidx53 = getelementptr inbounds i32* %27, i64 %idxprom44, !dbg !643
  %28 = load i32* %arrayidx53, align 4, !dbg !643, !tbaa !362
  %cmp54 = icmp sgt i32 %28, 4, !dbg !643
  br i1 %cmp54, label %if.then, label %for.inc77, !dbg !643

if.then:                                          ; preds = %land.lhs.true
  %conv61 = sitofp i32 %28 to float, !dbg !644
  %sub67 = fsub float %conv61, %26, !dbg !644
  tail call void @llvm.dbg.value(metadata !{float %sub67}, i64 0, metadata !210), !dbg !644
  %mul68 = fmul float %sub67, %sub67, !dbg !646
  %div = fdiv float %mul68, %26, !dbg !646
  %add75 = fadd float %div, %24, !dbg !646
  store float %add75, float* %chisq, align 4, !dbg !646, !tbaa !490
  %inc76 = add nsw i32 %nbins.0150, 1, !dbg !647
  tail call void @llvm.dbg.value(metadata !{i32 %inc76}, i64 0, metadata !209), !dbg !647
  br label %for.inc77, !dbg !648

for.inc77:                                        ; preds = %for.body41, %land.lhs.true, %if.then
  %29 = phi float [ %add75, %if.then ], [ %24, %land.lhs.true ], [ %24, %for.body41 ]
  %nbins.1 = phi i32 [ %inc76, %if.then ], [ %nbins.0150, %land.lhs.true ], [ %nbins.0150, %for.body41 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !641
  %30 = trunc i64 %indvars.iv.next to i32, !dbg !641
  %conv38 = sitofp i32 %30 to float, !dbg !641
  %cmp39 = fcmp ugt float %conv38, %highbound, !dbg !641
  br i1 %cmp39, label %for.end79, label %for.body41, !dbg !641

for.end79:                                        ; preds = %for.inc77, %for.end35
  %31 = phi float [ 0.000000e+00, %for.end35 ], [ %29, %for.inc77 ]
  %nbins.0.lcssa = phi i32 [ 0, %for.end35 ], [ %nbins.1, %for.inc77 ]
  %add80 = add nsw i32 %ndegrees, 1, !dbg !649
  %cmp81 = icmp sgt i32 %nbins.0.lcssa, %add80, !dbg !649
  br i1 %cmp81, label %if.then83, label %if.else, !dbg !649

if.then83:                                        ; preds = %for.end79
  %sub84 = xor i32 %ndegrees, -1, !dbg !650
  %sub85 = add i32 %nbins.0.lcssa, %sub84, !dbg !650
  %conv86 = sitofp i32 %sub85 to double, !dbg !650
  %div87 = fmul double %conv86, 5.000000e-01, !dbg !650
  %conv89 = fpext float %31 to double, !dbg !650
  %div90 = fmul double %conv89, 5.000000e-01, !dbg !650
  %call91 = tail call double @IncompleteGamma(double %div87, double %div90) #5, !dbg !650
  %conv92 = fptrunc double %call91 to float, !dbg !650
  %chip = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 11, !dbg !650
  store float %conv92, float* %chip, align 4, !dbg !650, !tbaa !490
  br label %if.end94, !dbg !650

if.else:                                          ; preds = %for.end79
  %chip93 = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 11, !dbg !651
  store float 0.000000e+00, float* %chip93, align 4, !dbg !651, !tbaa !490
  br label %if.end94

if.end94:                                         ; preds = %if.else, %if.then83
  ret void, !dbg !652
}

; Function Attrs: nounwind optsize uwtable
define i32 @ExtremeValueFitHistogram(%struct.histogram_s* nocapture %h, i32 %censor, float %high_hint) #0 {
entry:
  %lambda = alloca float, align 4
  %mu = alloca float, align 4
  call void @llvm.dbg.value(metadata !{%struct.histogram_s* %h}, i64 0, metadata !174), !dbg !653
  call void @llvm.dbg.value(metadata !{i32 %censor}, i64 0, metadata !175), !dbg !653
  call void @llvm.dbg.value(metadata !{float %high_hint}, i64 0, metadata !176), !dbg !653
  call void @llvm.dbg.declare(metadata !{float* %lambda}, metadata !182), !dbg !654
  call void @llvm.dbg.declare(metadata !{float* %mu}, metadata !183), !dbg !654
  %lowscore = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 4, !dbg !655
  %0 = load i32* %lowscore, align 4, !dbg !655, !tbaa !362
  call void @llvm.dbg.value(metadata !{i32 %0}, i64 0, metadata !185), !dbg !655
  %tobool = icmp ne i32 %censor, 0, !dbg !656
  %highscore = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 3, !dbg !657
  %1 = load i32* %highscore, align 4, !dbg !657, !tbaa !362
  %tobool.not = xor i1 %tobool, true, !dbg !656
  %cmp232 = icmp sgt i32 %0, %1, !dbg !657
  %or.cond = or i1 %cmp232, %tobool.not, !dbg !656
  br i1 %or.cond, label %if.end9, label %for.body.lr.ph, !dbg !656

for.body.lr.ph:                                   ; preds = %entry
  %min = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 1, !dbg !659
  %2 = load i32* %min, align 4, !dbg !659, !tbaa !362
  %histogram = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 0, !dbg !659
  %3 = load i32** %histogram, align 8, !dbg !659, !tbaa !371
  %4 = sext i32 %0 to i64
  br label %for.body, !dbg !657

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv237 = phi i64 [ %indvars.iv.next238, %for.body ], [ %4, %for.body.lr.ph ]
  %max.0235 = phi i32 [ %.max.0, %for.body ], [ -1, %for.body.lr.ph ]
  %lowbound.0234 = phi i32 [ %sc.0.lowbound.0, %for.body ], [ %0, %for.body.lr.ph ]
  %5 = trunc i64 %indvars.iv237 to i32, !dbg !659
  %sub = sub nsw i32 %5, %2, !dbg !659
  %idxprom = sext i32 %sub to i64, !dbg !659
  %arrayidx = getelementptr inbounds i32* %3, i64 %idxprom, !dbg !659
  %6 = load i32* %arrayidx, align 4, !dbg !659, !tbaa !362
  %cmp2 = icmp sgt i32 %6, %max.0235, !dbg !659
  call void @llvm.dbg.value(metadata !{i32 %6}, i64 0, metadata !189), !dbg !660
  call void @llvm.dbg.value(metadata !662, i64 0, metadata !185), !dbg !663
  %sc.0.lowbound.0 = select i1 %cmp2, i32 %5, i32 %lowbound.0234, !dbg !659
  %.max.0 = select i1 %cmp2, i32 %6, i32 %max.0235, !dbg !659
  %indvars.iv.next238 = add i64 %indvars.iv237, 1, !dbg !657
  %cmp = icmp slt i32 %5, %1, !dbg !657
  br i1 %cmp, label %for.body, label %if.end9, !dbg !657

if.end9:                                          ; preds = %entry, %for.body
  %lowbound.2 = phi i32 [ %sc.0.lowbound.0, %for.body ], [ %0, %entry ]
  %conv = sitofp i32 %1 to float, !dbg !664
  %cmp11 = fcmp ogt float %conv, %high_hint, !dbg !664
  %high_hint.conv = select i1 %cmp11, float %high_hint, float %conv, !dbg !664
  %conv15 = fptosi float %high_hint.conv to i32, !dbg !664
  call void @llvm.dbg.value(metadata !{i32 %conv15}, i64 0, metadata !186), !dbg !664
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !188), !dbg !665
  %total = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 6, !dbg !666
  %conv108 = sitofp i32 %lowbound.2 to float, !dbg !667
  %min40 = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 1, !dbg !669
  %histogram43 = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 0, !dbg !669
  %7 = sext i32 %lowbound.2 to i64
  br label %for.body19, !dbg !665

for.cond16:                                       ; preds = %if.end118
  %cmp17 = icmp slt i32 %inc138, 100, !dbg !665
  br i1 %cmp17, label %for.body19, label %for.end139, !dbg !665

for.body19:                                       ; preds = %if.end9, %for.cond16
  %8 = phi float [ undef, %if.end9 ], [ %21, %for.cond16 ]
  %9 = phi float [ undef, %if.end9 ], [ %20, %for.cond16 ]
  %iteration.0231 = phi i32 [ 0, %if.end9 ], [ %inc138, %for.cond16 ]
  %highbound.0230 = phi i32 [ %conv15, %if.end9 ], [ %conv132, %for.cond16 ]
  %z.0229 = phi i32 [ undef, %if.end9 ], [ %z.1222, %for.cond16 ]
  call void @llvm.dbg.value(metadata !672, i64 0, metadata !177), !dbg !673
  call void @llvm.dbg.value(metadata !674, i64 0, metadata !178), !dbg !675
  %sub20 = sub nsw i32 %highbound.0230, %lowbound.2, !dbg !676
  %add = add nsw i32 %sub20, 1, !dbg !676
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !181), !dbg !676
  %cmp21 = icmp slt i32 %add, 5, !dbg !677
  br i1 %cmp21, label %FITFAILED, label %if.end24, !dbg !677

if.end24:                                         ; preds = %for.body19
  %conv25 = sext i32 %add to i64, !dbg !678
  %mul = shl nsw i64 %conv25, 2, !dbg !678
  %call = call i8* @sre_malloc(i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i32 600, i64 %mul) #5, !dbg !678
  %10 = bitcast i8* %call to float*, !dbg !678
  call void @llvm.dbg.value(metadata !{float* %10}, i64 0, metadata !177), !dbg !678
  %call28 = call i8* @sre_malloc(i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i32 601, i64 %mul) #5, !dbg !679
  %11 = bitcast i8* %call28 to i32*, !dbg !679
  call void @llvm.dbg.value(metadata !{i32* %11}, i64 0, metadata !178), !dbg !679
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !179), !dbg !680
  call void @llvm.dbg.value(metadata !{i32 %lowbound.2}, i64 0, metadata !184), !dbg !681
  %cmp30225 = icmp sgt i32 %lowbound.2, %highbound.0230, !dbg !681
  br i1 %cmp30225, label %FITFAILED, label %for.body32.lr.ph, !dbg !681

for.body32.lr.ph:                                 ; preds = %if.end24
  %12 = load i32** %histogram43, align 8, !dbg !669, !tbaa !371
  %.pre = load i32* %min40, align 4, !dbg !669, !tbaa !362
  br label %for.body32, !dbg !681

for.body32:                                       ; preds = %for.body32, %for.body32.lr.ph
  %13 = phi i32 [ %16, %for.body32 ], [ %.pre, %for.body32.lr.ph ], !dbg !682
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body32 ], [ %7, %for.body32.lr.ph ]
  %n.0226 = phi i32 [ %add53, %for.body32 ], [ 0, %for.body32.lr.ph ]
  %14 = trunc i64 %indvars.iv to i32, !dbg !682
  %conv33 = sitofp i32 %14 to float, !dbg !682
  %conv36 = fadd float %conv33, 5.000000e-01, !dbg !682
  %sub37 = sub nsw i32 %14, %lowbound.2, !dbg !682
  %idxprom38 = sext i32 %sub37 to i64, !dbg !682
  %arrayidx39 = getelementptr inbounds float* %10, i64 %idxprom38, !dbg !682
  store float %conv36, float* %arrayidx39, align 4, !dbg !682, !tbaa !490
  %sub41 = sub nsw i32 %14, %13, !dbg !669
  %idxprom42 = sext i32 %sub41 to i64, !dbg !669
  %arrayidx44 = getelementptr inbounds i32* %12, i64 %idxprom42, !dbg !669
  %15 = load i32* %arrayidx44, align 4, !dbg !669, !tbaa !362
  %arrayidx47 = getelementptr inbounds i32* %11, i64 %idxprom38, !dbg !669
  store i32 %15, i32* %arrayidx47, align 4, !dbg !669, !tbaa !362
  %16 = load i32* %min40, align 4, !dbg !683, !tbaa !362
  %sub49 = sub nsw i32 %14, %16, !dbg !683
  %idxprom50 = sext i32 %sub49 to i64, !dbg !683
  %arrayidx52 = getelementptr inbounds i32* %12, i64 %idxprom50, !dbg !683
  %17 = load i32* %arrayidx52, align 4, !dbg !683, !tbaa !362
  %add53 = add nsw i32 %17, %n.0226, !dbg !683
  call void @llvm.dbg.value(metadata !{i32 %add53}, i64 0, metadata !179), !dbg !683
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !681
  %cmp30 = icmp slt i32 %14, %highbound.0230, !dbg !681
  br i1 %cmp30, label %for.body32, label %for.end56, !dbg !681

for.end56:                                        ; preds = %for.body32
  %cmp57 = icmp slt i32 %add53, 100, !dbg !684
  br i1 %cmp57, label %FITFAILED, label %if.end60, !dbg !684

if.end60:                                         ; preds = %for.end56
  br i1 %tobool, label %if.then62, label %if.else113, !dbg !685

if.then62:                                        ; preds = %if.end60
  %cmp63 = icmp eq i32 %iteration.0231, 0, !dbg !686
  br i1 %cmp63, label %if.end105, label %if.end105.thread, !dbg !686

if.end105.thread:                                 ; preds = %if.then62
  call void @llvm.dbg.value(metadata !{float* %mu}, i64 0, metadata !183), !dbg !687
  call void @llvm.dbg.value(metadata !{float* %lambda}, i64 0, metadata !182), !dbg !687
  call void @llvm.dbg.value(metadata !{float %conv108}, i64 0, metadata !688) #4, !dbg !689
  call void @llvm.dbg.value(metadata !{float %9}, i64 0, metadata !690) #4, !dbg !689
  call void @llvm.dbg.value(metadata !{float %8}, i64 0, metadata !691) #4, !dbg !689
  %conv.i = fpext float %8 to double, !dbg !692
  %mul.i = fmul double %conv.i, -1.000000e+00, !dbg !692
  %sub.i = fsub float %conv108, %9, !dbg !692
  %conv1.i = fpext float %sub.i to double, !dbg !692
  %mul2.i = fmul double %conv1.i, %mul.i, !dbg !692
  %call.i = call double @exp(double %mul2.i) #5, !dbg !692
  %mul3.i = fmul double %call.i, -1.000000e+00, !dbg !692
  %call4.i = call double @exp(double %mul3.i) #5, !dbg !692
  call void @llvm.dbg.value(metadata !{double %call4.i}, i64 0, metadata !191), !dbg !687
  %18 = load i32* %total, align 4, !dbg !693, !tbaa !362
  %sub86 = sub nsw i32 %18, %add53, !dbg !693
  %conv87 = sitofp i32 %add53 to double, !dbg !693
  %mul88 = fmul double %conv87, %call4.i, !dbg !693
  %sub89 = fsub double 1.000000e+00, %call4.i, !dbg !693
  %div = fdiv double %mul88, %sub89, !dbg !693
  %conv90 = fptosi double %div to i32, !dbg !693
  %cmp91 = icmp slt i32 %sub86, %conv90, !dbg !693
  %sub86.conv90 = select i1 %cmp91, i32 %sub86, i32 %conv90, !dbg !693
  call void @llvm.dbg.value(metadata !{i32 %sub86.conv90}, i64 0, metadata !180), !dbg !693
  br label %if.then107, !dbg !694

if.end105:                                        ; preds = %if.then62
  %19 = load i32* %total, align 4, !dbg !666, !tbaa !362
  %sub66 = sub nsw i32 %19, %add53, !dbg !666
  %conv67 = sitofp i32 %add53 to float, !dbg !666
  %conv68 = fpext float %conv67 to double, !dbg !666
  %mul69 = fmul double %conv68, 5.819800e-01, !dbg !666
  %conv70 = fptosi double %mul69 to i32, !dbg !666
  %cmp71 = icmp slt i32 %sub66, %conv70, !dbg !666
  %sub66.conv70 = select i1 %cmp71, i32 %sub66, i32 %conv70, !dbg !666
  call void @llvm.dbg.value(metadata !{i32 %sub66.conv70}, i64 0, metadata !180), !dbg !666
  br label %if.then107, !dbg !694

if.then107:                                       ; preds = %if.end105, %if.end105.thread
  %z.1221 = phi i32 [ %sub86.conv90, %if.end105.thread ], [ %sub66.conv70, %if.end105 ]
  %call109 = call i32 @EVDCensoredFit(float* %10, i32* %11, i32 %add, i32 %z.1221, float %conv108, float* %mu, float* %lambda) #7, !dbg !667
  %tobool110 = icmp eq i32 %call109, 0, !dbg !667
  br i1 %tobool110, label %FITFAILED, label %if.end118, !dbg !667

if.else113:                                       ; preds = %if.end60
  %call114 = call i32 @EVDMaxLikelyFit(float* %10, i32* %11, i32 %add, float* %mu, float* %lambda) #7, !dbg !695
  %tobool115 = icmp eq i32 %call114, 0, !dbg !695
  br i1 %tobool115, label %FITFAILED, label %if.end118, !dbg !695

if.end118:                                        ; preds = %if.then107, %if.else113
  %z.1222 = phi i32 [ %z.1221, %if.then107 ], [ %z.0229, %if.else113 ]
  call void @llvm.dbg.value(metadata !{float* %mu}, i64 0, metadata !183), !dbg !696
  %20 = load float* %mu, align 4, !dbg !696, !tbaa !490
  %conv119 = fpext float %20 to double, !dbg !696
  %add120 = add nsw i32 %z.1222, %add53, !dbg !697
  %sub121 = add nsw i32 %add120, -1, !dbg !697
  %conv122 = sitofp i32 %sub121 to double, !dbg !697
  %conv124 = sitofp i32 %add120 to double, !dbg !697
  %div125 = fdiv double %conv122, %conv124, !dbg !697
  %call126 = call double @log(double %div125) #5, !dbg !697
  %mul127 = fmul double %call126, -1.000000e+00, !dbg !697
  %call128 = call double @log(double %mul127) #5, !dbg !697
  call void @llvm.dbg.value(metadata !{float* %lambda}, i64 0, metadata !182), !dbg !697
  %21 = load float* %lambda, align 4, !dbg !697, !tbaa !490
  %conv129 = fpext float %21 to double, !dbg !697
  %div130 = fdiv double %call128, %conv129, !dbg !697
  %sub131 = fsub double %conv119, %div130, !dbg !697
  %conv132 = fptosi double %sub131 to i32, !dbg !697
  call void @llvm.dbg.value(metadata !{i32 %conv132}, i64 0, metadata !187), !dbg !697
  call void @free(i8* %call) #5, !dbg !698
  call void @free(i8* %call28) #5, !dbg !699
  %cmp133 = icmp slt i32 %conv132, %highbound.0230, !dbg !700
  call void @llvm.dbg.value(metadata !{i32 %conv132}, i64 0, metadata !186), !dbg !701
  %inc138 = add nsw i32 %iteration.0231, 1, !dbg !665
  call void @llvm.dbg.value(metadata !{i32 %inc138}, i64 0, metadata !188), !dbg !665
  br i1 %cmp133, label %for.cond16, label %for.end139, !dbg !700

for.end139:                                       ; preds = %if.end118, %for.cond16
  %highbound.0.lcssa = phi i32 [ %highbound.0230, %if.end118 ], [ %conv132, %for.cond16 ]
  call void @llvm.dbg.value(metadata !{float* %mu}, i64 0, metadata !183), !dbg !702
  call void @llvm.dbg.value(metadata !{float* %lambda}, i64 0, metadata !182), !dbg !702
  %conv141 = sitofp i32 %highbound.0.lcssa to float, !dbg !702
  call void @ExtremeValueSetHistogram(%struct.histogram_s* %h, float %20, float %21, float %conv108, float %conv141, i32 1) #7, !dbg !702
  br label %return, !dbg !703

FITFAILED:                                        ; preds = %if.end24, %if.then107, %if.else113, %for.end56, %for.body19
  %y.0 = phi i32* [ null, %for.body19 ], [ %11, %for.end56 ], [ %11, %if.then107 ], [ %11, %if.else113 ], [ %11, %if.end24 ]
  %x.0 = phi float* [ null, %for.body19 ], [ %10, %for.end56 ], [ %10, %if.then107 ], [ %10, %if.else113 ], [ %10, %if.end24 ]
  call void @llvm.dbg.value(metadata !{%struct.histogram_s* %h}, i64 0, metadata !704) #4, !dbg !706
  %expect.i = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 7, !dbg !707
  %22 = load float** %expect.i, align 8, !dbg !707, !tbaa !371
  %cmp.i = icmp eq float* %22, null, !dbg !707
  br i1 %cmp.i, label %UnfitHistogram.exit, label %if.then.i, !dbg !707

if.then.i:                                        ; preds = %FITFAILED
  %23 = bitcast float* %22 to i8*, !dbg !707
  call void @free(i8* %23) #5, !dbg !707
  br label %UnfitHistogram.exit, !dbg !707

UnfitHistogram.exit:                              ; preds = %FITFAILED, %if.then.i
  store float* null, float** %expect.i, align 8, !dbg !708, !tbaa !371
  %fit_type.i = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 8, !dbg !709
  store i32 0, i32* %fit_type.i, align 4, !dbg !709, !tbaa !362
  %cmp142 = icmp eq float* %x.0, null, !dbg !710
  br i1 %cmp142, label %if.end145, label %if.then144, !dbg !710

if.then144:                                       ; preds = %UnfitHistogram.exit
  %24 = bitcast float* %x.0 to i8*, !dbg !710
  call void @free(i8* %24) #5, !dbg !710
  br label %if.end145, !dbg !710

if.end145:                                        ; preds = %UnfitHistogram.exit, %if.then144
  %cmp146 = icmp eq i32* %y.0, null, !dbg !711
  br i1 %cmp146, label %return, label %if.then148, !dbg !711

if.then148:                                       ; preds = %if.end145
  %25 = bitcast i32* %y.0 to i8*, !dbg !711
  call void @free(i8* %25) #5, !dbg !711
  br label %return, !dbg !711

return:                                           ; preds = %if.then148, %if.end145, %for.end139
  %retval.0 = phi i32 [ 1, %for.end139 ], [ 0, %if.end145 ], [ 0, %if.then148 ]
  ret i32 %retval.0, !dbg !712
}

; Function Attrs: nounwind optsize uwtable
define double @EVDDistribution(float %x, float %mu, float %lambda) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{float %x}, i64 0, metadata !245), !dbg !713
  tail call void @llvm.dbg.value(metadata !{float %mu}, i64 0, metadata !246), !dbg !713
  tail call void @llvm.dbg.value(metadata !{float %lambda}, i64 0, metadata !247), !dbg !713
  %conv = fpext float %lambda to double, !dbg !714
  %mul = fmul double %conv, -1.000000e+00, !dbg !714
  %sub = fsub float %x, %mu, !dbg !714
  %conv1 = fpext float %sub to double, !dbg !714
  %mul2 = fmul double %conv1, %mul, !dbg !714
  %call = tail call double @exp(double %mul2) #5, !dbg !714
  %mul3 = fmul double %call, -1.000000e+00, !dbg !714
  %call4 = tail call double @exp(double %mul3) #5, !dbg !714
  ret double %call4, !dbg !714
}

; Function Attrs: nounwind optsize uwtable
define i32 @EVDCensoredFit(float* nocapture %x, i32* %y, i32 %n, i32 %z, float %c, float* nocapture %ret_mu, float* nocapture %ret_lambda) #0 {
entry:
  %fx = alloca float, align 4
  %dfx = alloca float, align 4
  call void @llvm.dbg.value(metadata !{float* %x}, i64 0, metadata !338), !dbg !715
  call void @llvm.dbg.value(metadata !{i32* %y}, i64 0, metadata !339), !dbg !715
  call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !340), !dbg !715
  call void @llvm.dbg.value(metadata !{i32 %z}, i64 0, metadata !341), !dbg !715
  call void @llvm.dbg.value(metadata !{float %c}, i64 0, metadata !342), !dbg !715
  call void @llvm.dbg.value(metadata !{float* %ret_mu}, i64 0, metadata !343), !dbg !716
  call void @llvm.dbg.value(metadata !{float* %ret_lambda}, i64 0, metadata !344), !dbg !716
  call void @llvm.dbg.declare(metadata !{float* %fx}, metadata !347), !dbg !717
  call void @llvm.dbg.declare(metadata !{float* %dfx}, metadata !348), !dbg !718
  call void @llvm.dbg.value(metadata !719, i64 0, metadata !352), !dbg !720
  call void @llvm.dbg.value(metadata !721, i64 0, metadata !345), !dbg !722
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !353), !dbg !723
  br label %for.body, !dbg !723

for.body:                                         ; preds = %entry, %if.end
  %i.0172 = phi i32 [ 0, %entry ], [ %inc, %if.end ]
  %lambda.0171 = phi float [ 0x3FC99999A0000000, %entry ], [ %lambda.1, %if.end ]
  call void @Lawless422(float* %x, i32* %y, i32 %n, i32 %z, float %c, float %lambda.0171, float* %fx, float* %dfx) #7, !dbg !725
  call void @llvm.dbg.value(metadata !{float* %fx}, i64 0, metadata !347), !dbg !727
  %0 = load float* %fx, align 4, !dbg !727, !tbaa !490
  %fabsf158 = call float @fabsf(float %0) #6, !dbg !727
  %cmp2 = fcmp olt float %fabsf158, 0x3EE4F8B580000000, !dbg !727
  br i1 %cmp2, label %for.end, label %if.end, !dbg !727

if.end:                                           ; preds = %for.body
  call void @llvm.dbg.value(metadata !{float* %dfx}, i64 0, metadata !348), !dbg !728
  %1 = load float* %dfx, align 4, !dbg !728, !tbaa !490
  %div = fdiv float %0, %1, !dbg !728
  %sub = fsub float %lambda.0171, %div, !dbg !728
  call void @llvm.dbg.value(metadata !{float %sub}, i64 0, metadata !345), !dbg !728
  %cmp5 = fcmp ugt float %sub, 0.000000e+00, !dbg !729
  call void @llvm.dbg.value(metadata !730, i64 0, metadata !345), !dbg !729
  %lambda.1 = select i1 %cmp5, float %sub, float 0x3F50624DE0000000, !dbg !729
  %inc = add nsw i32 %i.0172, 1, !dbg !723
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !353), !dbg !723
  %cmp = icmp slt i32 %inc, 100, !dbg !723
  br i1 %cmp, label %for.body, label %for.end, !dbg !723

for.end:                                          ; preds = %for.body, %if.end
  %i.0.lcssa = phi i32 [ %i.0172, %for.body ], [ %inc, %if.end ]
  %lambda.0.lcssa = phi float [ %lambda.0171, %for.body ], [ %lambda.1, %if.end ]
  %cmp9 = icmp eq i32 %i.0.lcssa, 100, !dbg !731
  br i1 %cmp9, label %if.then11, label %if.end69, !dbg !731

if.then11:                                        ; preds = %for.end
  call void @llvm.dbg.value(metadata !721, i64 0, metadata !354), !dbg !732
  call void @llvm.dbg.value(metadata !721, i64 0, metadata !356), !dbg !732
  call void @llvm.dbg.value(metadata !721, i64 0, metadata !345), !dbg !732
  call void @Lawless422(float* %x, i32* %y, i32 %n, i32 %z, float %c, float 0x3FC99999A0000000, float* %fx, float* %dfx) #7, !dbg !733
  call void @llvm.dbg.value(metadata !{float* %fx}, i64 0, metadata !347), !dbg !734
  %2 = load float* %fx, align 4, !dbg !734, !tbaa !490
  %cmp13 = fcmp olt float %2, 0.000000e+00, !dbg !734
  br i1 %cmp13, label %do.body, label %do.body27, !dbg !734

do.body:                                          ; preds = %if.then11, %if.end23
  %left.0 = phi float [ %conv18, %if.end23 ], [ 0x3FC99999A0000000, %if.then11 ]
  %conv16 = fpext float %left.0 to double, !dbg !735
  %sub17 = fadd double %conv16, -3.000000e-02, !dbg !735
  %conv18 = fptrunc double %sub17 to float, !dbg !735
  call void @llvm.dbg.value(metadata !{float %conv18}, i64 0, metadata !354), !dbg !735
  %cmp20 = fcmp olt float %conv18, 0.000000e+00, !dbg !738
  br i1 %cmp20, label %return, label %if.end23, !dbg !738

if.end23:                                         ; preds = %do.body
  call void @Lawless422(float* %x, i32* %y, i32 %n, i32 %z, float %c, float %conv18, float* %fx, float* %dfx) #7, !dbg !739
  call void @llvm.dbg.value(metadata !{float* %fx}, i64 0, metadata !347), !dbg !740
  %3 = load float* %fx, align 4, !dbg !740, !tbaa !490
  %cmp25 = fcmp olt float %3, 0.000000e+00, !dbg !740
  br i1 %cmp25, label %do.body, label %for.body44, !dbg !740

do.body27:                                        ; preds = %if.then11, %do.cond35
  %right.0 = phi float [ %conv29, %do.cond35 ], [ 0x3FC99999A0000000, %if.then11 ]
  %conv28 = fpext float %right.0 to double, !dbg !741
  %add = fadd double %conv28, 1.000000e-01, !dbg !741
  %conv29 = fptrunc double %add to float, !dbg !741
  call void @llvm.dbg.value(metadata !{float %conv29}, i64 0, metadata !356), !dbg !741
  call void @Lawless422(float* %x, i32* %y, i32 %n, i32 %z, float %c, float 0x3FC99999A0000000, float* %fx, float* %dfx) #7, !dbg !744
  %cmp31 = fcmp ogt float %conv29, 1.000000e+02, !dbg !745
  br i1 %cmp31, label %return, label %do.cond35, !dbg !745

do.cond35:                                        ; preds = %do.body27
  call void @llvm.dbg.value(metadata !{float* %fx}, i64 0, metadata !347), !dbg !746
  %4 = load float* %fx, align 4, !dbg !746, !tbaa !490
  %cmp37 = fcmp ogt float %4, 0.000000e+00, !dbg !746
  br i1 %cmp37, label %do.body27, label %for.body44, !dbg !746

for.body44:                                       ; preds = %if.end23, %do.cond35, %if.end55
  %right.2166 = phi float [ %right.2.conv48, %if.end55 ], [ 0x3FC99999A0000000, %if.end23 ], [ %conv29, %do.cond35 ]
  %left.2165 = phi float [ %conv48.left.2, %if.end55 ], [ %conv18, %if.end23 ], [ 0x3FC99999A0000000, %do.cond35 ]
  %i.1164 = phi i32 [ %inc63, %if.end55 ], [ 0, %if.end23 ], [ 0, %do.cond35 ]
  %add45 = fadd float %left.2165, %right.2166, !dbg !747
  %conv48 = fmul float %add45, 5.000000e-01, !dbg !747
  call void @llvm.dbg.value(metadata !{float %conv48}, i64 0, metadata !357), !dbg !747
  call void @Lawless422(float* %x, i32* %y, i32 %n, i32 %z, float %c, float %left.2165, float* %fx, float* %dfx) #7, !dbg !750
  call void @llvm.dbg.value(metadata !{float* %fx}, i64 0, metadata !347), !dbg !751
  %5 = load float* %fx, align 4, !dbg !751, !tbaa !490
  %fabsf = call float @fabsf(float %5) #6, !dbg !751
  %cmp52 = fcmp olt float %fabsf, 0x3EE4F8B580000000, !dbg !751
  br i1 %cmp52, label %for.end64, label %if.end55, !dbg !751

if.end55:                                         ; preds = %for.body44
  %cmp57 = fcmp ogt float %5, 0.000000e+00, !dbg !752
  %conv48.left.2 = select i1 %cmp57, float %conv48, float %left.2165, !dbg !752
  %right.2.conv48 = select i1 %cmp57, float %right.2166, float %conv48, !dbg !752
  %inc63 = add nsw i32 %i.1164, 1, !dbg !753
  call void @llvm.dbg.value(metadata !{i32 %inc63}, i64 0, metadata !353), !dbg !753
  %cmp42 = icmp slt i32 %inc63, 100, !dbg !753
  br i1 %cmp42, label %for.body44, label %for.end64, !dbg !753

for.end64:                                        ; preds = %for.body44, %if.end55
  %i.1.lcssa = phi i32 [ %i.1164, %for.body44 ], [ %inc63, %if.end55 ]
  %cmp65 = icmp eq i32 %i.1.lcssa, 100, !dbg !754
  br i1 %cmp65, label %return, label %if.end69, !dbg !754

if.end69:                                         ; preds = %for.end64, %for.end
  %lambda.2 = phi float [ %lambda.0.lcssa, %for.end ], [ %conv48, %for.end64 ]
  call void @llvm.dbg.value(metadata !755, i64 0, metadata !351), !dbg !756
  call void @llvm.dbg.value(metadata !755, i64 0, metadata !349), !dbg !756
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !353), !dbg !757
  %cmp71159 = icmp sgt i32 %n, 0, !dbg !757
  br i1 %cmp71159, label %for.body73.lr.ph, label %if.end69.for.end88_crit_edge, !dbg !757

if.end69.for.end88_crit_edge:                     ; preds = %if.end69
  %conv90.pre = fpext float %lambda.2 to double, !dbg !759
  %mul91.pre = fmul double %conv90.pre, -1.000000e+00, !dbg !759
  br label %for.end88, !dbg !757

for.body73.lr.ph:                                 ; preds = %if.end69
  %cmp74 = icmp eq i32* %y, null, !dbg !760
  %conv77 = fpext float %lambda.2 to double, !dbg !762
  %mul = fmul double %conv77, -1.000000e+00, !dbg !762
  br label %for.body73, !dbg !757

for.body73:                                       ; preds = %cond.end, %for.body73.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body73.lr.ph ], [ %indvars.iv.next, %cond.end ]
  %total.0161 = phi double [ 0.000000e+00, %for.body73.lr.ph ], [ %add85, %cond.end ]
  %esum.0160 = phi double [ 0.000000e+00, %for.body73.lr.ph ], [ %add84, %cond.end ]
  br i1 %cmp74, label %cond.end, label %cond.false, !dbg !760

cond.false:                                       ; preds = %for.body73
  %arrayidx = getelementptr inbounds i32* %y, i64 %indvars.iv, !dbg !760
  %6 = load i32* %arrayidx, align 4, !dbg !760, !tbaa !362
  %conv76 = sitofp i32 %6 to double, !dbg !760
  br label %cond.end, !dbg !760

cond.end:                                         ; preds = %for.body73, %cond.false
  %cond = phi double [ %conv76, %cond.false ], [ 1.000000e+00, %for.body73 ], !dbg !760
  call void @llvm.dbg.value(metadata !{double %cond}, i64 0, metadata !350), !dbg !760
  %arrayidx79 = getelementptr inbounds float* %x, i64 %indvars.iv, !dbg !762
  %7 = load float* %arrayidx79, align 4, !dbg !762, !tbaa !490
  %conv80 = fpext float %7 to double, !dbg !762
  %mul81 = fmul double %mul, %conv80, !dbg !762
  %call82 = call double @exp(double %mul81) #5, !dbg !762
  %mul83 = fmul double %cond, %call82, !dbg !762
  %add84 = fadd double %esum.0160, %mul83, !dbg !762
  call void @llvm.dbg.value(metadata !{double %add84}, i64 0, metadata !349), !dbg !762
  %add85 = fadd double %total.0161, %cond, !dbg !763
  call void @llvm.dbg.value(metadata !{double %add85}, i64 0, metadata !351), !dbg !763
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !757
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !757
  %exitcond = icmp eq i32 %lftr.wideiv, %n, !dbg !757
  br i1 %exitcond, label %for.end88, label %for.body73, !dbg !757

for.end88:                                        ; preds = %cond.end, %if.end69.for.end88_crit_edge
  %mul91.pre-phi = phi double [ %mul91.pre, %if.end69.for.end88_crit_edge ], [ %mul, %cond.end ], !dbg !759
  %conv90.pre-phi = phi double [ %conv90.pre, %if.end69.for.end88_crit_edge ], [ %conv77, %cond.end ], !dbg !759
  %total.0.lcssa = phi double [ 0.000000e+00, %if.end69.for.end88_crit_edge ], [ %add85, %cond.end ]
  %esum.0.lcssa = phi double [ 0.000000e+00, %if.end69.for.end88_crit_edge ], [ %add84, %cond.end ]
  %conv89 = sitofp i32 %z to double, !dbg !759
  %conv92 = fpext float %c to double, !dbg !759
  %mul93 = fmul double %conv92, %mul91.pre-phi, !dbg !759
  %call94 = call double @exp(double %mul93) #5, !dbg !759
  %mul95 = fmul double %conv89, %call94, !dbg !759
  %add96 = fadd double %esum.0.lcssa, %mul95, !dbg !759
  call void @llvm.dbg.value(metadata !{double %add96}, i64 0, metadata !349), !dbg !759
  %div97 = fdiv double %add96, %total.0.lcssa, !dbg !764
  %call98 = call double @log(double %div97) #5, !dbg !764
  %mul99 = fmul double %call98, -1.000000e+00, !dbg !764
  %div101 = fdiv double %mul99, %conv90.pre-phi, !dbg !764
  %conv102 = fptrunc double %div101 to float, !dbg !764
  call void @llvm.dbg.value(metadata !{float %conv102}, i64 0, metadata !346), !dbg !764
  store float %lambda.2, float* %ret_lambda, align 4, !dbg !765, !tbaa !490
  store float %conv102, float* %ret_mu, align 4, !dbg !766, !tbaa !490
  br label %return, !dbg !767

return:                                           ; preds = %do.body27, %do.body, %for.end64, %for.end88
  %retval.0 = phi i32 [ 1, %for.end88 ], [ 0, %for.end64 ], [ 0, %do.body ], [ 0, %do.body27 ]
  ret i32 %retval.0, !dbg !767
}

; Function Attrs: nounwind optsize uwtable
define i32 @EVDMaxLikelyFit(float* nocapture %x, i32* %c, i32 %n, float* nocapture %ret_mu, float* nocapture %ret_lambda) #0 {
entry:
  %fx = alloca float, align 4
  %dfx = alloca float, align 4
  call void @llvm.dbg.value(metadata !{float* %x}, i64 0, metadata !316), !dbg !768
  call void @llvm.dbg.value(metadata !{i32* %c}, i64 0, metadata !317), !dbg !768
  call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !318), !dbg !768
  call void @llvm.dbg.value(metadata !{float* %ret_mu}, i64 0, metadata !319), !dbg !768
  call void @llvm.dbg.value(metadata !{float* %ret_lambda}, i64 0, metadata !320), !dbg !768
  call void @llvm.dbg.declare(metadata !{float* %fx}, metadata !323), !dbg !769
  call void @llvm.dbg.declare(metadata !{float* %dfx}, metadata !324), !dbg !770
  call void @llvm.dbg.value(metadata !719, i64 0, metadata !328), !dbg !771
  call void @llvm.dbg.value(metadata !721, i64 0, metadata !321), !dbg !772
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !329), !dbg !773
  br label %for.body, !dbg !773

for.body:                                         ; preds = %entry, %if.end
  %i.0151 = phi i32 [ 0, %entry ], [ %inc, %if.end ]
  %lambda.0150 = phi float [ 0x3FC99999A0000000, %entry ], [ %lambda.1, %if.end ]
  call void @Lawless416(float* %x, i32* %c, i32 %n, float %lambda.0150, float* %fx, float* %dfx) #7, !dbg !775
  call void @llvm.dbg.value(metadata !{float* %fx}, i64 0, metadata !323), !dbg !777
  %0 = load float* %fx, align 4, !dbg !777, !tbaa !490
  %fabsf137 = call float @fabsf(float %0) #6, !dbg !777
  %cmp2 = fcmp olt float %fabsf137, 0x3EE4F8B580000000, !dbg !777
  br i1 %cmp2, label %for.end, label %if.end, !dbg !777

if.end:                                           ; preds = %for.body
  call void @llvm.dbg.value(metadata !{float* %dfx}, i64 0, metadata !324), !dbg !778
  %1 = load float* %dfx, align 4, !dbg !778, !tbaa !490
  %div = fdiv float %0, %1, !dbg !778
  %sub = fsub float %lambda.0150, %div, !dbg !778
  call void @llvm.dbg.value(metadata !{float %sub}, i64 0, metadata !321), !dbg !778
  %cmp5 = fcmp ugt float %sub, 0.000000e+00, !dbg !779
  call void @llvm.dbg.value(metadata !730, i64 0, metadata !321), !dbg !779
  %lambda.1 = select i1 %cmp5, float %sub, float 0x3F50624DE0000000, !dbg !779
  %inc = add nsw i32 %i.0151, 1, !dbg !773
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !329), !dbg !773
  %cmp = icmp slt i32 %inc, 100, !dbg !773
  br i1 %cmp, label %for.body, label %for.end, !dbg !773

for.end:                                          ; preds = %for.body, %if.end
  %i.0.lcssa = phi i32 [ %i.0151, %for.body ], [ %inc, %if.end ]
  %lambda.0.lcssa = phi float [ %lambda.0150, %for.body ], [ %lambda.1, %if.end ]
  %cmp9 = icmp eq i32 %i.0.lcssa, 100, !dbg !780
  br i1 %cmp9, label %if.then11, label %if.end69, !dbg !780

if.then11:                                        ; preds = %for.end
  call void @llvm.dbg.value(metadata !721, i64 0, metadata !330), !dbg !781
  call void @llvm.dbg.value(metadata !721, i64 0, metadata !332), !dbg !781
  call void @llvm.dbg.value(metadata !721, i64 0, metadata !321), !dbg !781
  call void @Lawless416(float* %x, i32* %c, i32 %n, float 0x3FC99999A0000000, float* %fx, float* %dfx) #7, !dbg !782
  call void @llvm.dbg.value(metadata !{float* %fx}, i64 0, metadata !323), !dbg !783
  %2 = load float* %fx, align 4, !dbg !783, !tbaa !490
  %cmp13 = fcmp olt float %2, 0.000000e+00, !dbg !783
  br i1 %cmp13, label %do.body, label %do.body27, !dbg !783

do.body:                                          ; preds = %if.then11, %if.end23
  %left.0 = phi float [ %conv18, %if.end23 ], [ 0x3FC99999A0000000, %if.then11 ]
  %conv16 = fpext float %left.0 to double, !dbg !784
  %sub17 = fadd double %conv16, -1.000000e-01, !dbg !784
  %conv18 = fptrunc double %sub17 to float, !dbg !784
  call void @llvm.dbg.value(metadata !{float %conv18}, i64 0, metadata !330), !dbg !784
  %cmp20 = fcmp olt float %conv18, 0.000000e+00, !dbg !787
  br i1 %cmp20, label %return, label %if.end23, !dbg !787

if.end23:                                         ; preds = %do.body
  call void @Lawless416(float* %x, i32* %c, i32 %n, float %conv18, float* %fx, float* %dfx) #7, !dbg !788
  call void @llvm.dbg.value(metadata !{float* %fx}, i64 0, metadata !323), !dbg !789
  %3 = load float* %fx, align 4, !dbg !789, !tbaa !490
  %cmp25 = fcmp olt float %3, 0.000000e+00, !dbg !789
  br i1 %cmp25, label %do.body, label %for.body44, !dbg !789

do.body27:                                        ; preds = %if.then11, %do.cond35
  %right.0 = phi float [ %conv29, %do.cond35 ], [ 0x3FC99999A0000000, %if.then11 ]
  %conv28 = fpext float %right.0 to double, !dbg !790
  %add = fadd double %conv28, 1.000000e-01, !dbg !790
  %conv29 = fptrunc double %add to float, !dbg !790
  call void @llvm.dbg.value(metadata !{float %conv29}, i64 0, metadata !332), !dbg !790
  call void @Lawless416(float* %x, i32* %c, i32 %n, float %conv29, float* %fx, float* %dfx) #7, !dbg !793
  %cmp31 = fcmp ogt float %conv29, 1.000000e+02, !dbg !794
  br i1 %cmp31, label %return, label %do.cond35, !dbg !794

do.cond35:                                        ; preds = %do.body27
  call void @llvm.dbg.value(metadata !{float* %fx}, i64 0, metadata !323), !dbg !795
  %4 = load float* %fx, align 4, !dbg !795, !tbaa !490
  %cmp37 = fcmp ogt float %4, 0.000000e+00, !dbg !795
  br i1 %cmp37, label %do.body27, label %for.body44, !dbg !795

for.body44:                                       ; preds = %if.end23, %do.cond35, %if.end55
  %right.2145 = phi float [ %right.2.conv48, %if.end55 ], [ 0x3FC99999A0000000, %if.end23 ], [ %conv29, %do.cond35 ]
  %left.2144 = phi float [ %conv48.left.2, %if.end55 ], [ %conv18, %if.end23 ], [ 0x3FC99999A0000000, %do.cond35 ]
  %i.1143 = phi i32 [ %inc63, %if.end55 ], [ 0, %if.end23 ], [ 0, %do.cond35 ]
  %add45 = fadd float %left.2144, %right.2145, !dbg !796
  %conv48 = fmul float %add45, 5.000000e-01, !dbg !796
  call void @llvm.dbg.value(metadata !{float %conv48}, i64 0, metadata !333), !dbg !796
  call void @Lawless416(float* %x, i32* %c, i32 %n, float %conv48, float* %fx, float* %dfx) #7, !dbg !799
  call void @llvm.dbg.value(metadata !{float* %fx}, i64 0, metadata !323), !dbg !800
  %5 = load float* %fx, align 4, !dbg !800, !tbaa !490
  %fabsf = call float @fabsf(float %5) #6, !dbg !800
  %cmp52 = fcmp olt float %fabsf, 0x3EE4F8B580000000, !dbg !800
  br i1 %cmp52, label %for.end64, label %if.end55, !dbg !800

if.end55:                                         ; preds = %for.body44
  %cmp57 = fcmp ogt float %5, 0.000000e+00, !dbg !801
  %conv48.left.2 = select i1 %cmp57, float %conv48, float %left.2144, !dbg !801
  %right.2.conv48 = select i1 %cmp57, float %right.2145, float %conv48, !dbg !801
  %inc63 = add nsw i32 %i.1143, 1, !dbg !802
  call void @llvm.dbg.value(metadata !{i32 %inc63}, i64 0, metadata !329), !dbg !802
  %cmp42 = icmp slt i32 %inc63, 100, !dbg !802
  br i1 %cmp42, label %for.body44, label %for.end64, !dbg !802

for.end64:                                        ; preds = %for.body44, %if.end55
  %i.1.lcssa = phi i32 [ %i.1143, %for.body44 ], [ %inc63, %if.end55 ]
  %cmp65 = icmp eq i32 %i.1.lcssa, 100, !dbg !803
  br i1 %cmp65, label %return, label %if.end69, !dbg !803

if.end69:                                         ; preds = %for.end64, %for.end
  %lambda.2 = phi float [ %lambda.0.lcssa, %for.end ], [ %conv48, %for.end64 ]
  call void @llvm.dbg.value(metadata !755, i64 0, metadata !325), !dbg !804
  call void @llvm.dbg.value(metadata !755, i64 0, metadata !327), !dbg !805
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !329), !dbg !806
  %cmp71138 = icmp sgt i32 %n, 0, !dbg !806
  br i1 %cmp71138, label %for.body73.lr.ph, label %for.end87, !dbg !806

for.body73.lr.ph:                                 ; preds = %if.end69
  %cmp74 = icmp eq i32* %c, null, !dbg !808
  %mul = fmul float %lambda.2, -1.000000e+00, !dbg !810
  br label %for.body73, !dbg !806

for.body73:                                       ; preds = %cond.end, %for.body73.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body73.lr.ph ], [ %indvars.iv.next, %cond.end ]
  %total.0140 = phi double [ 0.000000e+00, %for.body73.lr.ph ], [ %add84, %cond.end ]
  %esum.0139 = phi double [ 0.000000e+00, %for.body73.lr.ph ], [ %add83, %cond.end ]
  br i1 %cmp74, label %cond.end, label %cond.false, !dbg !808

cond.false:                                       ; preds = %for.body73
  %arrayidx = getelementptr inbounds i32* %c, i64 %indvars.iv, !dbg !808
  %6 = load i32* %arrayidx, align 4, !dbg !808, !tbaa !362
  %conv76 = sitofp i32 %6 to double, !dbg !808
  br label %cond.end, !dbg !808

cond.end:                                         ; preds = %for.body73, %cond.false
  %cond = phi double [ %conv76, %cond.false ], [ 1.000000e+00, %for.body73 ], !dbg !808
  call void @llvm.dbg.value(metadata !{double %cond}, i64 0, metadata !326), !dbg !808
  %arrayidx78 = getelementptr inbounds float* %x, i64 %indvars.iv, !dbg !810
  %7 = load float* %arrayidx78, align 4, !dbg !810, !tbaa !490
  %mul79 = fmul float %mul, %7, !dbg !810
  %conv80 = fpext float %mul79 to double, !dbg !810
  %call81 = call double @exp(double %conv80) #5, !dbg !810
  %mul82 = fmul double %cond, %call81, !dbg !810
  %add83 = fadd double %esum.0139, %mul82, !dbg !810
  call void @llvm.dbg.value(metadata !{double %add83}, i64 0, metadata !325), !dbg !810
  %add84 = fadd double %total.0140, %cond, !dbg !811
  call void @llvm.dbg.value(metadata !{double %add84}, i64 0, metadata !327), !dbg !811
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !806
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !806
  %exitcond = icmp eq i32 %lftr.wideiv, %n, !dbg !806
  br i1 %exitcond, label %for.end87, label %for.body73, !dbg !806

for.end87:                                        ; preds = %cond.end, %if.end69
  %total.0.lcssa = phi double [ 0.000000e+00, %if.end69 ], [ %add84, %cond.end ]
  %esum.0.lcssa = phi double [ 0.000000e+00, %if.end69 ], [ %add83, %cond.end ]
  %div88 = fdiv double %esum.0.lcssa, %total.0.lcssa, !dbg !812
  %call89 = call double @log(double %div88) #5, !dbg !812
  %mul90 = fmul double %call89, -1.000000e+00, !dbg !812
  %conv91 = fpext float %lambda.2 to double, !dbg !812
  %div92 = fdiv double %mul90, %conv91, !dbg !812
  %conv93 = fptrunc double %div92 to float, !dbg !812
  call void @llvm.dbg.value(metadata !{float %conv93}, i64 0, metadata !322), !dbg !812
  store float %lambda.2, float* %ret_lambda, align 4, !dbg !813, !tbaa !490
  store float %conv93, float* %ret_mu, align 4, !dbg !814, !tbaa !490
  br label %return, !dbg !815

return:                                           ; preds = %do.body27, %do.body, %for.end64, %for.end87
  %retval.0 = phi i32 [ 1, %for.end87 ], [ 0, %for.end64 ], [ 0, %do.body ], [ 0, %do.body27 ]
  ret i32 %retval.0, !dbg !815
}

; Function Attrs: nounwind optsize uwtable
define double @ExtremeValueE(float %x, float %mu, float %lambda, i32 %N) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{float %x}, i64 0, metadata !265), !dbg !816
  tail call void @llvm.dbg.value(metadata !{float %mu}, i64 0, metadata !266), !dbg !816
  tail call void @llvm.dbg.value(metadata !{float %lambda}, i64 0, metadata !267), !dbg !816
  tail call void @llvm.dbg.value(metadata !{i32 %N}, i64 0, metadata !268), !dbg !816
  %conv = sitofp i32 %N to double, !dbg !817
  %call = tail call double @ExtremeValueP(float %x, float %mu, float %lambda) #7, !dbg !817
  %mul = fmul double %conv, %call, !dbg !817
  ret double %mul, !dbg !817
}

; Function Attrs: optsize
declare double @IncompleteGamma(double, double) #2

; Function Attrs: nounwind optsize uwtable
define i32 @GaussianFitHistogram(%struct.histogram_s* nocapture %h, float %high_hint) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.histogram_s* %h}, i64 0, metadata !215), !dbg !818
  tail call void @llvm.dbg.value(metadata !{float %high_hint}, i64 0, metadata !216), !dbg !818
  tail call void @llvm.dbg.value(metadata !{%struct.histogram_s* %h}, i64 0, metadata !819) #4, !dbg !821
  %expect.i = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 7, !dbg !822
  %0 = load float** %expect.i, align 8, !dbg !822, !tbaa !371
  %cmp.i = icmp eq float* %0, null, !dbg !822
  br i1 %cmp.i, label %UnfitHistogram.exit, label %if.then.i, !dbg !822

if.then.i:                                        ; preds = %entry
  %1 = bitcast float* %0 to i8*, !dbg !822
  tail call void @free(i8* %1) #5, !dbg !822
  br label %UnfitHistogram.exit, !dbg !822

UnfitHistogram.exit:                              ; preds = %entry, %if.then.i
  store float* null, float** %expect.i, align 8, !dbg !823, !tbaa !371
  %fit_type.i = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 8, !dbg !824
  store i32 0, i32* %fit_type.i, align 4, !dbg !824, !tbaa !362
  %total = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 6, !dbg !825
  %2 = load i32* %total, align 4, !dbg !825, !tbaa !362
  %cmp = icmp slt i32 %2, 1000, !dbg !825
  br i1 %cmp, label %if.then, label %if.end, !dbg !825

if.then:                                          ; preds = %UnfitHistogram.exit
  store i32 0, i32* %fit_type.i, align 4, !dbg !826, !tbaa !362
  br label %return, !dbg !826

if.end:                                           ; preds = %UnfitHistogram.exit
  tail call void @llvm.dbg.value(metadata !828, i64 0, metadata !218), !dbg !829
  tail call void @llvm.dbg.value(metadata !828, i64 0, metadata !217), !dbg !829
  %lowscore = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 4, !dbg !830
  %3 = load i32* %lowscore, align 4, !dbg !830, !tbaa !362
  tail call void @llvm.dbg.value(metadata !{i32 %3}, i64 0, metadata !220), !dbg !830
  %highscore = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 3, !dbg !830
  %4 = load i32* %highscore, align 4, !dbg !830, !tbaa !362
  %cmp1238 = icmp sgt i32 %3, %4, !dbg !830
  %min32.pre = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 1, !dbg !832
  br i1 %cmp1238, label %for.end, label %for.body.lr.ph, !dbg !830

for.body.lr.ph:                                   ; preds = %if.end
  %5 = load i32* %min32.pre, align 4, !dbg !833, !tbaa !362
  %histogram = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 0, !dbg !833
  %6 = load i32** %histogram, align 8, !dbg !833, !tbaa !371
  %7 = sext i32 %3 to i64
  br label %for.body, !dbg !830

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv247 = phi i64 [ %indvars.iv.next248, %for.body ], [ %7, %for.body.lr.ph ]
  %sqsum.0240 = phi float [ %add14, %for.body ], [ 0.000000e+00, %for.body.lr.ph ]
  %sum.0239 = phi float [ %add5, %for.body ], [ 0.000000e+00, %for.body.lr.ph ]
  %8 = trunc i64 %indvars.iv247 to i32, !dbg !835
  %conv = sitofp i32 %8 to float, !dbg !835
  %conv3 = fadd float %conv, 5.000000e-01, !dbg !835
  tail call void @llvm.dbg.value(metadata !{float %conv3}, i64 0, metadata !219), !dbg !835
  %sub = sub nsw i32 %8, %5, !dbg !833
  %idxprom = sext i32 %sub to i64, !dbg !833
  %arrayidx = getelementptr inbounds i32* %6, i64 %idxprom, !dbg !833
  %9 = load i32* %arrayidx, align 4, !dbg !833, !tbaa !362
  %conv4 = sitofp i32 %9 to float, !dbg !833
  %mul = fmul float %conv3, %conv4, !dbg !833
  %add5 = fadd float %sum.0239, %mul, !dbg !833
  tail call void @llvm.dbg.value(metadata !{float %add5}, i64 0, metadata !217), !dbg !833
  %mul13 = fmul float %conv3, %mul, !dbg !836
  %add14 = fadd float %sqsum.0240, %mul13, !dbg !836
  tail call void @llvm.dbg.value(metadata !{float %add14}, i64 0, metadata !218), !dbg !836
  %indvars.iv.next248 = add i64 %indvars.iv247, 1, !dbg !830
  %cmp1 = icmp slt i32 %8, %4, !dbg !830
  br i1 %cmp1, label %for.body, label %for.end, !dbg !830

for.end:                                          ; preds = %if.end, %for.body
  %sqsum.0.lcssa = phi float [ %add14, %for.body ], [ 0.000000e+00, %if.end ]
  %sum.0.lcssa = phi float [ %add5, %for.body ], [ 0.000000e+00, %if.end ]
  store i32 2, i32* %fit_type.i, align 4, !dbg !837, !tbaa !362
  %conv17 = sitofp i32 %2 to float, !dbg !838
  %div = fdiv float %sum.0.lcssa, %conv17, !dbg !838
  %arrayidx18 = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 9, i64 0, !dbg !838
  store float %div, float* %arrayidx18, align 4, !dbg !838, !tbaa !490
  %mul19 = fmul float %sum.0.lcssa, %sum.0.lcssa, !dbg !839
  %div22 = fdiv float %mul19, %conv17, !dbg !839
  %sub23 = fsub float %sqsum.0.lcssa, %div22, !dbg !839
  %sub25 = add nsw i32 %2, -1, !dbg !839
  %conv26 = sitofp i32 %sub25 to float, !dbg !839
  %div27 = fdiv float %sub23, %conv26, !dbg !839
  %conv29 = tail call float @sqrtf(float %div27) #3, !dbg !839
  %arrayidx31 = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 9, i64 1, !dbg !839
  store float %conv29, float* %arrayidx31, align 4, !dbg !839, !tbaa !490
  %max = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 2, !dbg !832
  %10 = load i32* %max, align 4, !dbg !832, !tbaa !362
  %11 = load i32* %min32.pre, align 4, !dbg !832, !tbaa !362
  %sub33 = sub nsw i32 %10, %11, !dbg !832
  %add34 = add nsw i32 %sub33, 1, !dbg !832
  tail call void @llvm.dbg.value(metadata !{i32 %add34}, i64 0, metadata !222), !dbg !832
  %conv35 = sext i32 %add34 to i64, !dbg !840
  %mul36 = shl nsw i64 %conv35, 2, !dbg !840
  %call37 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i32 790, i64 %mul36) #5, !dbg !840
  %12 = bitcast i8* %call37 to float*, !dbg !840
  store float* %12, float** %expect.i, align 8, !dbg !840, !tbaa !371
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !223), !dbg !841
  %cmp39236 = icmp sgt i32 %sub33, -1, !dbg !841
  br i1 %cmp39236, label %for.body41.lr.ph, label %for.end47, !dbg !841

for.body41.lr.ph:                                 ; preds = %for.end
  %13 = add i32 %10, 1, !dbg !841
  %14 = sub i32 %13, %11, !dbg !841
  %15 = icmp sgt i32 %14, 1
  %.op = add i32 %14, -1, !dbg !841
  %16 = zext i32 %.op to i64
  %.op249 = shl nuw nsw i64 %16, 2, !dbg !841
  %.op249.op = add i64 %.op249, 4, !dbg !841
  %17 = select i1 %15, i64 %.op249.op, i64 4, !dbg !841
  call void @llvm.memset.p0i8.i64(i8* %call37, i8 0, i64 %17, i32 4, i1 false), !dbg !843
  br label %for.end47, !dbg !841

for.end47:                                        ; preds = %for.body41.lr.ph, %for.end
  %18 = load i32* %min32.pre, align 4, !dbg !844, !tbaa !362
  tail call void @llvm.dbg.value(metadata !{i32 %18}, i64 0, metadata !220), !dbg !844
  %19 = load i32* %max, align 4, !dbg !844, !tbaa !362
  %cmp51234 = icmp sgt i32 %18, %19, !dbg !844
  br i1 %cmp51234, label %for.end95, label %for.body53, !dbg !844

for.body53:                                       ; preds = %for.end47, %for.body53
  %sc.1235 = phi i32 [ %inc94, %for.body53 ], [ %18, %for.end47 ]
  %conv54 = sitofp i32 %sc.1235 to float, !dbg !846
  %conv55 = fpext float %conv54 to double, !dbg !846
  %add56 = fadd double %conv55, 5.000000e-01, !dbg !846
  %20 = load float* %arrayidx18, align 4, !dbg !846, !tbaa !490
  %conv59 = fpext float %20 to double, !dbg !846
  %sub60 = fsub double %add56, %conv59, !dbg !846
  %conv61 = fptrunc double %sub60 to float, !dbg !846
  tail call void @llvm.dbg.value(metadata !{float %conv61}, i64 0, metadata !219), !dbg !846
  %21 = load i32* %total, align 4, !dbg !848, !tbaa !362
  %conv63 = sitofp i32 %21 to float, !dbg !848
  %conv64 = fpext float %conv63 to double, !dbg !848
  %22 = load float* %arrayidx31, align 4, !dbg !848, !tbaa !490
  %conv67 = fpext float %22 to double, !dbg !848
  %mul69 = fmul double %conv67, 0x40040D9291DFEC75, !dbg !849
  %div70 = fdiv double 1.000000e+00, %mul69, !dbg !849
  %conv71 = fpext float %conv61 to double, !dbg !850
  %mul72 = fmul double %conv71, -1.000000e+00, !dbg !850
  %mul74 = fmul double %conv71, %mul72, !dbg !850
  %mul78 = fmul double %conv67, 2.000000e+00, !dbg !850
  %mul82 = fmul double %conv67, %mul78, !dbg !850
  %div83 = fdiv double %mul74, %mul82, !dbg !850
  %call84 = tail call double @exp(double %div83) #5, !dbg !850
  %mul85 = fmul double %div70, %call84, !dbg !850
  %mul86 = fmul double %conv64, %mul85, !dbg !850
  %conv87 = fptrunc double %mul86 to float, !dbg !850
  %23 = load i32* %min32.pre, align 4, !dbg !850, !tbaa !362
  %sub89 = sub nsw i32 %sc.1235, %23, !dbg !850
  %idxprom90 = sext i32 %sub89 to i64, !dbg !850
  %24 = load float** %expect.i, align 8, !dbg !850, !tbaa !371
  %arrayidx92 = getelementptr inbounds float* %24, i64 %idxprom90, !dbg !850
  store float %conv87, float* %arrayidx92, align 4, !dbg !850, !tbaa !490
  %inc94 = add nsw i32 %sc.1235, 1, !dbg !844
  tail call void @llvm.dbg.value(metadata !{i32 %inc94}, i64 0, metadata !220), !dbg !844
  %25 = load i32* %max, align 4, !dbg !844, !tbaa !362
  %cmp51 = icmp slt i32 %sc.1235, %25, !dbg !844
  br i1 %cmp51, label %for.body53, label %for.end95, !dbg !844

for.end95:                                        ; preds = %for.body53, %for.end47
  %26 = phi i32 [ %18, %for.end47 ], [ %23, %for.body53 ]
  %chisq = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 10, !dbg !851
  store float 0.000000e+00, float* %chisq, align 4, !dbg !851, !tbaa !490
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !221), !dbg !852
  %27 = load i32* %lowscore, align 4, !dbg !853, !tbaa !362
  tail call void @llvm.dbg.value(metadata !{i32 %27}, i64 0, metadata !220), !dbg !853
  %28 = load i32* %highscore, align 4, !dbg !853, !tbaa !362
  %cmp99231 = icmp sgt i32 %27, %28, !dbg !853
  br i1 %cmp99231, label %if.else, label %for.body101.lr.ph, !dbg !853

for.body101.lr.ph:                                ; preds = %for.end95
  %29 = load float** %expect.i, align 8, !dbg !855, !tbaa !371
  %histogram113 = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 0, !dbg !855
  %30 = sext i32 %27 to i64
  br label %for.body101, !dbg !853

for.body101:                                      ; preds = %for.inc141, %for.body101.lr.ph
  %31 = phi float [ %36, %for.inc141 ], [ 0.000000e+00, %for.body101.lr.ph ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc141 ], [ %30, %for.body101.lr.ph ]
  %nbins.0233 = phi i32 [ %nbins.1, %for.inc141 ], [ 0, %for.body101.lr.ph ]
  %32 = trunc i64 %indvars.iv to i32, !dbg !855
  %sub103 = sub nsw i32 %32, %26, !dbg !855
  %idxprom104 = sext i32 %sub103 to i64, !dbg !855
  %arrayidx106 = getelementptr inbounds float* %29, i64 %idxprom104, !dbg !855
  %33 = load float* %arrayidx106, align 4, !dbg !855, !tbaa !490
  %cmp108 = fcmp ult float %33, 5.000000e+00, !dbg !855
  br i1 %cmp108, label %for.inc141, label %land.lhs.true, !dbg !855

land.lhs.true:                                    ; preds = %for.body101
  %34 = load i32** %histogram113, align 8, !dbg !855, !tbaa !371
  %arrayidx114 = getelementptr inbounds i32* %34, i64 %idxprom104, !dbg !855
  %35 = load i32* %arrayidx114, align 4, !dbg !855, !tbaa !362
  %cmp115 = icmp sgt i32 %35, 4, !dbg !855
  br i1 %cmp115, label %if.then117, label %for.inc141, !dbg !855

if.then117:                                       ; preds = %land.lhs.true
  %conv123 = sitofp i32 %35 to float, !dbg !856
  %sub129 = fsub float %conv123, %33, !dbg !856
  tail call void @llvm.dbg.value(metadata !{float %sub129}, i64 0, metadata !219), !dbg !856
  %mul130 = fmul float %sub129, %sub129, !dbg !858
  %div136 = fdiv float %mul130, %33, !dbg !858
  %add138 = fadd float %div136, %31, !dbg !858
  store float %add138, float* %chisq, align 4, !dbg !858, !tbaa !490
  %inc139 = add nsw i32 %nbins.0233, 1, !dbg !859
  tail call void @llvm.dbg.value(metadata !{i32 %inc139}, i64 0, metadata !221), !dbg !859
  br label %for.inc141, !dbg !860

for.inc141:                                       ; preds = %for.body101, %land.lhs.true, %if.then117
  %36 = phi float [ %add138, %if.then117 ], [ %31, %land.lhs.true ], [ %31, %for.body101 ]
  %nbins.1 = phi i32 [ %inc139, %if.then117 ], [ %nbins.0233, %land.lhs.true ], [ %nbins.0233, %for.body101 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !853
  %cmp99 = icmp slt i32 %32, %28, !dbg !853
  br i1 %cmp99, label %for.body101, label %for.end143, !dbg !853

for.end143:                                       ; preds = %for.inc141
  %cmp144 = icmp sgt i32 %nbins.1, 3, !dbg !861
  br i1 %cmp144, label %if.then146, label %if.else, !dbg !861

if.then146:                                       ; preds = %for.end143
  %sub147 = add nsw i32 %nbins.1, -3, !dbg !862
  %conv148 = sitofp i32 %sub147 to double, !dbg !862
  %div149 = fmul double %conv148, 5.000000e-01, !dbg !862
  %conv151 = fpext float %36 to double, !dbg !862
  %div152 = fmul double %conv151, 5.000000e-01, !dbg !862
  %call153 = tail call double @IncompleteGamma(double %div149, double %div152) #5, !dbg !862
  %conv154 = fptrunc double %call153 to float, !dbg !862
  %chip = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 11, !dbg !862
  store float %conv154, float* %chip, align 4, !dbg !862, !tbaa !490
  br label %return, !dbg !862

if.else:                                          ; preds = %for.end95, %for.end143
  %chip155 = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 11, !dbg !863
  store float 0.000000e+00, float* %chip155, align 4, !dbg !863, !tbaa !490
  br label %return

return:                                           ; preds = %if.then146, %if.else, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %if.else ], [ 1, %if.then146 ]
  ret i32 %retval.0, !dbg !864
}

; Function Attrs: nounwind optsize
declare double @exp(double) #3

; Function Attrs: nounwind optsize uwtable
define void @GaussianSetHistogram(%struct.histogram_s* nocapture %h, float %mean, float %sd) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct.histogram_s* %h}, i64 0, metadata !228), !dbg !865
  tail call void @llvm.dbg.value(metadata !{float %mean}, i64 0, metadata !229), !dbg !865
  tail call void @llvm.dbg.value(metadata !{float %sd}, i64 0, metadata !230), !dbg !865
  tail call void @llvm.dbg.value(metadata !{%struct.histogram_s* %h}, i64 0, metadata !866) #4, !dbg !868
  %expect.i = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 7, !dbg !869
  %0 = load float** %expect.i, align 8, !dbg !869, !tbaa !371
  %cmp.i = icmp eq float* %0, null, !dbg !869
  br i1 %cmp.i, label %UnfitHistogram.exit, label %if.then.i, !dbg !869

if.then.i:                                        ; preds = %entry
  %1 = bitcast float* %0 to i8*, !dbg !869
  tail call void @free(i8* %1) #5, !dbg !869
  br label %UnfitHistogram.exit, !dbg !869

UnfitHistogram.exit:                              ; preds = %entry, %if.then.i
  store float* null, float** %expect.i, align 8, !dbg !870, !tbaa !371
  %fit_type.i = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 8, !dbg !871
  store i32 2, i32* %fit_type.i, align 4, !dbg !872, !tbaa !362
  %arrayidx = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 9, i64 0, !dbg !873
  store float %mean, float* %arrayidx, align 4, !dbg !873, !tbaa !490
  %arrayidx2 = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 9, i64 1, !dbg !874
  store float %sd, float* %arrayidx2, align 4, !dbg !874, !tbaa !490
  %max = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 2, !dbg !875
  %2 = load i32* %max, align 4, !dbg !875, !tbaa !362
  %min = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 1, !dbg !875
  %3 = load i32* %min, align 4, !dbg !875, !tbaa !362
  %sub = sub nsw i32 %2, %3, !dbg !875
  %add = add nsw i32 %sub, 1, !dbg !875
  tail call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !232), !dbg !875
  %conv = sext i32 %add to i64, !dbg !876
  %mul = shl nsw i64 %conv, 2, !dbg !876
  %call = tail call i8* @sre_malloc(i8* getelementptr inbounds ([55 x i8]* @.str, i64 0, i64 0), i32 845, i64 %mul) #5, !dbg !876
  %4 = bitcast i8* %call to float*, !dbg !876
  store float* %4, float** %expect.i, align 8, !dbg !876, !tbaa !371
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !233), !dbg !877
  %cmp164 = icmp sgt i32 %sub, -1, !dbg !877
  br i1 %cmp164, label %for.body.lr.ph, label %for.end, !dbg !877

for.body.lr.ph:                                   ; preds = %UnfitHistogram.exit
  %5 = add i32 %2, 1, !dbg !877
  %6 = sub i32 %5, %3, !dbg !877
  %7 = icmp sgt i32 %6, 1
  %.op = add i32 %6, -1, !dbg !877
  %8 = zext i32 %.op to i64
  %.op168 = shl nuw nsw i64 %8, 2, !dbg !877
  %.op168.op = add i64 %.op168, 4, !dbg !877
  %9 = select i1 %7, i64 %.op168.op, i64 4, !dbg !877
  call void @llvm.memset.p0i8.i64(i8* %call, i8 0, i64 %9, i32 4, i1 false), !dbg !879
  br label %for.end, !dbg !877

for.end:                                          ; preds = %for.body.lr.ph, %UnfitHistogram.exit
  %10 = load i32* %min, align 4, !dbg !880, !tbaa !362
  tail call void @llvm.dbg.value(metadata !{i32 %10}, i64 0, metadata !231), !dbg !880
  %11 = load i32* %max, align 4, !dbg !880, !tbaa !362
  %cmp9162 = icmp sgt i32 %10, %11, !dbg !880
  br i1 %cmp9162, label %for.end51, label %for.body11.lr.ph, !dbg !880

for.body11.lr.ph:                                 ; preds = %for.end
  %total = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 6, !dbg !882
  br label %for.body11, !dbg !880

for.body11:                                       ; preds = %for.body11, %for.body11.lr.ph
  %sc.0163 = phi i32 [ %10, %for.body11.lr.ph ], [ %inc50, %for.body11 ]
  %conv12 = sitofp i32 %sc.0163 to float, !dbg !884
  %conv13 = fpext float %conv12 to double, !dbg !884
  %add14 = fadd double %conv13, 5.000000e-01, !dbg !884
  %12 = load float* %arrayidx, align 4, !dbg !884, !tbaa !490
  %conv17 = fpext float %12 to double, !dbg !884
  %sub18 = fsub double %add14, %conv17, !dbg !884
  %conv19 = fptrunc double %sub18 to float, !dbg !884
  tail call void @llvm.dbg.value(metadata !{float %conv19}, i64 0, metadata !235), !dbg !884
  %13 = load i32* %total, align 4, !dbg !882, !tbaa !362
  %conv20 = sitofp i32 %13 to float, !dbg !882
  %conv21 = fpext float %conv20 to double, !dbg !882
  %14 = load float* %arrayidx2, align 4, !dbg !882, !tbaa !490
  %conv24 = fpext float %14 to double, !dbg !882
  %mul26 = fmul double %conv24, 0x40040D9291DFEC75, !dbg !885
  %div = fdiv double 1.000000e+00, %mul26, !dbg !885
  %conv27 = fpext float %conv19 to double, !dbg !886
  %mul28 = fmul double %conv27, -1.000000e+00, !dbg !886
  %mul30 = fmul double %conv27, %mul28, !dbg !886
  %mul34 = fmul double %conv24, 2.000000e+00, !dbg !886
  %mul38 = fmul double %conv24, %mul34, !dbg !886
  %div39 = fdiv double %mul30, %mul38, !dbg !886
  %call40 = tail call double @exp(double %div39) #5, !dbg !886
  %mul41 = fmul double %div, %call40, !dbg !886
  %mul42 = fmul double %conv21, %mul41, !dbg !886
  %conv43 = fptrunc double %mul42 to float, !dbg !886
  %15 = load i32* %min, align 4, !dbg !886, !tbaa !362
  %sub45 = sub nsw i32 %sc.0163, %15, !dbg !886
  %idxprom46 = sext i32 %sub45 to i64, !dbg !886
  %16 = load float** %expect.i, align 8, !dbg !886, !tbaa !371
  %arrayidx48 = getelementptr inbounds float* %16, i64 %idxprom46, !dbg !886
  store float %conv43, float* %arrayidx48, align 4, !dbg !886, !tbaa !490
  %inc50 = add nsw i32 %sc.0163, 1, !dbg !880
  tail call void @llvm.dbg.value(metadata !{i32 %inc50}, i64 0, metadata !231), !dbg !880
  %17 = load i32* %max, align 4, !dbg !880, !tbaa !362
  %cmp9 = icmp slt i32 %sc.0163, %17, !dbg !880
  br i1 %cmp9, label %for.body11, label %for.end51, !dbg !880

for.end51:                                        ; preds = %for.body11, %for.end
  %18 = phi i32 [ %10, %for.end ], [ %15, %for.body11 ]
  %chisq = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 10, !dbg !887
  store float 0.000000e+00, float* %chisq, align 4, !dbg !887, !tbaa !490
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !234), !dbg !888
  %lowscore = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 4, !dbg !889
  %19 = load i32* %lowscore, align 4, !dbg !889, !tbaa !362
  tail call void @llvm.dbg.value(metadata !{i32 %19}, i64 0, metadata !231), !dbg !889
  %highscore = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 3, !dbg !889
  %20 = load i32* %highscore, align 4, !dbg !889, !tbaa !362
  %cmp53159 = icmp sgt i32 %19, %20, !dbg !889
  br i1 %cmp53159, label %if.else, label %for.body55.lr.ph, !dbg !889

for.body55.lr.ph:                                 ; preds = %for.end51
  %21 = load float** %expect.i, align 8, !dbg !891, !tbaa !371
  %histogram = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 0, !dbg !891
  %22 = sext i32 %19 to i64
  br label %for.body55, !dbg !889

for.body55:                                       ; preds = %for.inc92, %for.body55.lr.ph
  %23 = phi float [ %28, %for.inc92 ], [ 0.000000e+00, %for.body55.lr.ph ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc92 ], [ %22, %for.body55.lr.ph ]
  %nbins.0161 = phi i32 [ %nbins.1, %for.inc92 ], [ 0, %for.body55.lr.ph ]
  %24 = trunc i64 %indvars.iv to i32, !dbg !891
  %sub57 = sub nsw i32 %24, %18, !dbg !891
  %idxprom58 = sext i32 %sub57 to i64, !dbg !891
  %arrayidx60 = getelementptr inbounds float* %21, i64 %idxprom58, !dbg !891
  %25 = load float* %arrayidx60, align 4, !dbg !891, !tbaa !490
  %cmp62 = fcmp ult float %25, 5.000000e+00, !dbg !891
  br i1 %cmp62, label %for.inc92, label %land.lhs.true, !dbg !891

land.lhs.true:                                    ; preds = %for.body55
  %26 = load i32** %histogram, align 8, !dbg !891, !tbaa !371
  %arrayidx67 = getelementptr inbounds i32* %26, i64 %idxprom58, !dbg !891
  %27 = load i32* %arrayidx67, align 4, !dbg !891, !tbaa !362
  %cmp68 = icmp sgt i32 %27, 4, !dbg !891
  br i1 %cmp68, label %if.then, label %for.inc92, !dbg !891

if.then:                                          ; preds = %land.lhs.true
  %conv75 = sitofp i32 %27 to float, !dbg !892
  %sub81 = fsub float %conv75, %25, !dbg !892
  tail call void @llvm.dbg.value(metadata !{float %sub81}, i64 0, metadata !235), !dbg !892
  %mul82 = fmul float %sub81, %sub81, !dbg !894
  %div88 = fdiv float %mul82, %25, !dbg !894
  %add90 = fadd float %div88, %23, !dbg !894
  store float %add90, float* %chisq, align 4, !dbg !894, !tbaa !490
  %inc91 = add nsw i32 %nbins.0161, 1, !dbg !895
  tail call void @llvm.dbg.value(metadata !{i32 %inc91}, i64 0, metadata !234), !dbg !895
  br label %for.inc92, !dbg !896

for.inc92:                                        ; preds = %for.body55, %land.lhs.true, %if.then
  %28 = phi float [ %add90, %if.then ], [ %23, %land.lhs.true ], [ %23, %for.body55 ]
  %nbins.1 = phi i32 [ %inc91, %if.then ], [ %nbins.0161, %land.lhs.true ], [ %nbins.0161, %for.body55 ]
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !889
  %cmp53 = icmp slt i32 %24, %20, !dbg !889
  br i1 %cmp53, label %for.body55, label %for.end94, !dbg !889

for.end94:                                        ; preds = %for.inc92
  %cmp95 = icmp sgt i32 %nbins.1, 1, !dbg !897
  br i1 %cmp95, label %if.then97, label %if.else, !dbg !897

if.then97:                                        ; preds = %for.end94
  %sub98 = add nsw i32 %nbins.1, -1, !dbg !898
  %conv99 = sitofp i32 %sub98 to double, !dbg !898
  %div100 = fmul double %conv99, 5.000000e-01, !dbg !898
  %conv102 = fpext float %28 to double, !dbg !898
  %div103 = fmul double %conv102, 5.000000e-01, !dbg !898
  %call104 = tail call double @IncompleteGamma(double %div100, double %div103) #5, !dbg !898
  %conv105 = fptrunc double %call104 to float, !dbg !898
  %chip = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 11, !dbg !898
  store float %conv105, float* %chip, align 4, !dbg !898, !tbaa !490
  br label %if.end107, !dbg !898

if.else:                                          ; preds = %for.end51, %for.end94
  %chip106 = getelementptr inbounds %struct.histogram_s* %h, i64 0, i32 11, !dbg !899
  store float 0.000000e+00, float* %chip106, align 4, !dbg !899, !tbaa !490
  br label %if.end107

if.end107:                                        ; preds = %if.else, %if.then97
  ret void, !dbg !900
}

; Function Attrs: nounwind optsize uwtable
define double @EVDDensity(float %x, float %mu, float %lambda) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{float %x}, i64 0, metadata !240), !dbg !901
  tail call void @llvm.dbg.value(metadata !{float %mu}, i64 0, metadata !241), !dbg !901
  tail call void @llvm.dbg.value(metadata !{float %lambda}, i64 0, metadata !242), !dbg !901
  %conv = fpext float %lambda to double, !dbg !902
  %mul = fmul double %conv, -1.000000e+00, !dbg !902
  %sub = fsub float %x, %mu, !dbg !902
  %conv2 = fpext float %sub to double, !dbg !902
  %mul3 = fmul double %conv2, %mul, !dbg !902
  %call = tail call double @exp(double %mul3) #5, !dbg !903
  %sub9 = fsub double %mul3, %call, !dbg !903
  %call10 = tail call double @exp(double %sub9) #5, !dbg !903
  %mul11 = fmul double %conv, %call10, !dbg !903
  ret double %mul11, !dbg !903
}

; Function Attrs: nounwind optsize uwtable
define double @ExtremeValueP2(float %x, float %mu, float %lambda, i32 %N) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{float %x}, i64 0, metadata !258), !dbg !904
  tail call void @llvm.dbg.value(metadata !{float %mu}, i64 0, metadata !259), !dbg !904
  tail call void @llvm.dbg.value(metadata !{float %lambda}, i64 0, metadata !260), !dbg !904
  tail call void @llvm.dbg.value(metadata !{i32 %N}, i64 0, metadata !261), !dbg !904
  %conv = sitofp i32 %N to double, !dbg !905
  %call = tail call double @ExtremeValueP(float %x, float %mu, float %lambda) #7, !dbg !905
  %mul = fmul double %conv, %call, !dbg !905
  tail call void @llvm.dbg.value(metadata !{double %mul}, i64 0, metadata !262), !dbg !905
  %cmp = fcmp olt double %mul, 1.000000e-07, !dbg !906
  br i1 %cmp, label %return, label %if.else, !dbg !906

if.else:                                          ; preds = %entry
  %mul2 = fmul double %mul, -1.000000e+00, !dbg !907
  %call3 = tail call double @exp(double %mul2) #5, !dbg !907
  %sub = fsub double 1.000000e+00, %call3, !dbg !907
  br label %return, !dbg !907

return:                                           ; preds = %entry, %if.else
  %retval.0 = phi double [ %sub, %if.else ], [ %mul, %entry ]
  ret double %retval.0, !dbg !908
}

; Function Attrs: nounwind optsize uwtable
define float @EVDrandom(float %mu, float %lambda) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{float %mu}, i64 0, metadata !273), !dbg !909
  tail call void @llvm.dbg.value(metadata !{float %lambda}, i64 0, metadata !274), !dbg !909
  tail call void @llvm.dbg.value(metadata !828, i64 0, metadata !275), !dbg !910
  br label %while.body, !dbg !911

while.body:                                       ; preds = %entry, %while.body
  %call = tail call double @sre_random() #5, !dbg !911
  %conv5 = fptrunc double %call to float, !dbg !911
  tail call void @llvm.dbg.value(metadata !{float %conv5}, i64 0, metadata !275), !dbg !911
  %cmp = fcmp oeq float %conv5, 0.000000e+00, !dbg !911
  %cmp3 = fcmp oeq float %conv5, 1.000000e+00, !dbg !911
  %or.cond = or i1 %cmp, %cmp3, !dbg !911
  br i1 %or.cond, label %while.body, label %while.end, !dbg !911

while.end:                                        ; preds = %while.body
  %phitmp = fpext float %conv5 to double, !dbg !911
  %conv6 = fpext float %mu to double, !dbg !912
  %call8 = tail call double @log(double %phitmp) #5, !dbg !912
  %mul = fmul double %call8, -1.000000e+00, !dbg !912
  %call9 = tail call double @log(double %mul) #5, !dbg !912
  %conv10 = fpext float %lambda to double, !dbg !912
  %div = fdiv double %call9, %conv10, !dbg !912
  %sub = fsub double %conv6, %div, !dbg !912
  %conv11 = fptrunc double %sub to float, !dbg !912
  ret float %conv11, !dbg !912
}

; Function Attrs: optsize
declare double @sre_random() #2

; Function Attrs: nounwind optsize uwtable
define void @Lawless416(float* nocapture %x, i32* %y, i32 %n, float %lambda, float* nocapture %ret_f, float* nocapture %ret_df) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{float* %x}, i64 0, metadata !280), !dbg !913
  tail call void @llvm.dbg.value(metadata !{i32* %y}, i64 0, metadata !281), !dbg !913
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !282), !dbg !913
  tail call void @llvm.dbg.value(metadata !{float %lambda}, i64 0, metadata !283), !dbg !913
  tail call void @llvm.dbg.value(metadata !{float* %ret_f}, i64 0, metadata !284), !dbg !913
  tail call void @llvm.dbg.value(metadata !{float* %ret_df}, i64 0, metadata !285), !dbg !913
  tail call void @llvm.dbg.value(metadata !755, i64 0, metadata !291), !dbg !914
  tail call void @llvm.dbg.value(metadata !755, i64 0, metadata !288), !dbg !914
  tail call void @llvm.dbg.value(metadata !755, i64 0, metadata !289), !dbg !914
  tail call void @llvm.dbg.value(metadata !755, i64 0, metadata !287), !dbg !914
  tail call void @llvm.dbg.value(metadata !755, i64 0, metadata !286), !dbg !914
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !292), !dbg !915
  %cmp94 = icmp sgt i32 %n, 0, !dbg !915
  br i1 %cmp94, label %for.body.lr.ph, label %entry.for.end_crit_edge, !dbg !915

entry.for.end_crit_edge:                          ; preds = %entry
  %conv44.pre = fpext float %lambda to double, !dbg !917
  br label %for.end, !dbg !915

for.body.lr.ph:                                   ; preds = %entry
  %cmp1 = icmp eq i32* %y, null, !dbg !918
  %conv9 = fpext float %lambda to double, !dbg !920
  %mul10 = fmul double %conv9, -1.000000e+00, !dbg !920
  br label %for.body, !dbg !915

for.body:                                         ; preds = %cond.end, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %cond.end ]
  %total.099 = phi double [ 0.000000e+00, %for.body.lr.ph ], [ %add43, %cond.end ]
  %esum.098 = phi double [ 0.000000e+00, %for.body.lr.ph ], [ %add42, %cond.end ]
  %xsum.097 = phi double [ 0.000000e+00, %for.body.lr.ph ], [ %add, %cond.end ]
  %xxesum.096 = phi double [ 0.000000e+00, %for.body.lr.ph ], [ %add33, %cond.end ]
  %xesum.095 = phi double [ 0.000000e+00, %for.body.lr.ph ], [ %add16, %cond.end ]
  br i1 %cmp1, label %cond.end, label %cond.false, !dbg !918

cond.false:                                       ; preds = %for.body
  %arrayidx = getelementptr inbounds i32* %y, i64 %indvars.iv, !dbg !918
  %0 = load i32* %arrayidx, align 4, !dbg !918, !tbaa !362
  %conv = sitofp i32 %0 to double, !dbg !918
  br label %cond.end, !dbg !918

cond.end:                                         ; preds = %for.body, %cond.false
  %cond = phi double [ %conv, %cond.false ], [ 1.000000e+00, %for.body ], !dbg !918
  tail call void @llvm.dbg.value(metadata !{double %cond}, i64 0, metadata !290), !dbg !918
  %arrayidx3 = getelementptr inbounds float* %x, i64 %indvars.iv, !dbg !921
  %1 = load float* %arrayidx3, align 4, !dbg !921, !tbaa !490
  %conv4 = fpext float %1 to double, !dbg !921
  %mul = fmul double %cond, %conv4, !dbg !921
  %add = fadd double %xsum.097, %mul, !dbg !921
  tail call void @llvm.dbg.value(metadata !{double %add}, i64 0, metadata !289), !dbg !921
  %mul14 = fmul double %mul10, %conv4, !dbg !920
  %call = tail call double @exp(double %mul14) #5, !dbg !920
  %mul15 = fmul double %call, %mul, !dbg !920
  %add16 = fadd double %xesum.095, %mul15, !dbg !920
  tail call void @llvm.dbg.value(metadata !{double %add16}, i64 0, metadata !287), !dbg !920
  %2 = load float* %arrayidx3, align 4, !dbg !922, !tbaa !490
  %conv19 = fpext float %2 to double, !dbg !922
  %mul20 = fmul double %cond, %conv19, !dbg !922
  %mul24 = fmul double %conv19, %mul20, !dbg !922
  %mul30 = fmul double %mul10, %conv19, !dbg !922
  %call31 = tail call double @exp(double %mul30) #5, !dbg !922
  %mul32 = fmul double %call31, %mul24, !dbg !922
  %add33 = fadd double %xxesum.096, %mul32, !dbg !922
  tail call void @llvm.dbg.value(metadata !{double %add33}, i64 0, metadata !288), !dbg !922
  %3 = load float* %arrayidx3, align 4, !dbg !923, !tbaa !490
  %conv38 = fpext float %3 to double, !dbg !923
  %mul39 = fmul double %mul10, %conv38, !dbg !923
  %call40 = tail call double @exp(double %mul39) #5, !dbg !923
  %mul41 = fmul double %cond, %call40, !dbg !923
  %add42 = fadd double %esum.098, %mul41, !dbg !923
  tail call void @llvm.dbg.value(metadata !{double %add42}, i64 0, metadata !286), !dbg !923
  %add43 = fadd double %total.099, %cond, !dbg !924
  tail call void @llvm.dbg.value(metadata !{double %add43}, i64 0, metadata !291), !dbg !924
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !915
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !915
  %exitcond = icmp eq i32 %lftr.wideiv, %n, !dbg !915
  br i1 %exitcond, label %for.end, label %for.body, !dbg !915

for.end:                                          ; preds = %cond.end, %entry.for.end_crit_edge
  %conv44.pre-phi = phi double [ %conv44.pre, %entry.for.end_crit_edge ], [ %conv9, %cond.end ], !dbg !917
  %total.0.lcssa = phi double [ 0.000000e+00, %entry.for.end_crit_edge ], [ %add43, %cond.end ]
  %esum.0.lcssa = phi double [ 0.000000e+00, %entry.for.end_crit_edge ], [ %add42, %cond.end ]
  %xsum.0.lcssa = phi double [ 0.000000e+00, %entry.for.end_crit_edge ], [ %add, %cond.end ]
  %xxesum.0.lcssa = phi double [ 0.000000e+00, %entry.for.end_crit_edge ], [ %add33, %cond.end ]
  %xesum.0.lcssa = phi double [ 0.000000e+00, %entry.for.end_crit_edge ], [ %add16, %cond.end ]
  %div = fdiv double 1.000000e+00, %conv44.pre-phi, !dbg !917
  %div45 = fdiv double %xsum.0.lcssa, %total.0.lcssa, !dbg !917
  %sub = fsub double %div, %div45, !dbg !917
  %div46 = fdiv double %xesum.0.lcssa, %esum.0.lcssa, !dbg !917
  %add47 = fadd double %sub, %div46, !dbg !917
  %conv48 = fptrunc double %add47 to float, !dbg !917
  store float %conv48, float* %ret_f, align 4, !dbg !917, !tbaa !490
  %mul51 = fmul double %div46, %div46, !dbg !925
  %div52 = fdiv double %xxesum.0.lcssa, %esum.0.lcssa, !dbg !925
  %sub53 = fsub double %mul51, %div52, !dbg !925
  %mul54 = fmul float %lambda, %lambda, !dbg !925
  %conv55 = fpext float %mul54 to double, !dbg !925
  %div56 = fdiv double 1.000000e+00, %conv55, !dbg !925
  %sub57 = fsub double %sub53, %div56, !dbg !925
  %conv58 = fptrunc double %sub57 to float, !dbg !925
  store float %conv58, float* %ret_df, align 4, !dbg !925, !tbaa !490
  ret void, !dbg !926
}

; Function Attrs: nounwind optsize uwtable
define void @Lawless422(float* nocapture %x, i32* %y, i32 %n, i32 %z, float %c, float %lambda, float* nocapture %ret_f, float* nocapture %ret_df) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{float* %x}, i64 0, metadata !297), !dbg !927
  tail call void @llvm.dbg.value(metadata !{i32* %y}, i64 0, metadata !298), !dbg !927
  tail call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !299), !dbg !927
  tail call void @llvm.dbg.value(metadata !{i32 %z}, i64 0, metadata !300), !dbg !927
  tail call void @llvm.dbg.value(metadata !{float %c}, i64 0, metadata !301), !dbg !927
  tail call void @llvm.dbg.value(metadata !{float %lambda}, i64 0, metadata !302), !dbg !928
  tail call void @llvm.dbg.value(metadata !{float* %ret_f}, i64 0, metadata !303), !dbg !928
  tail call void @llvm.dbg.value(metadata !{float* %ret_df}, i64 0, metadata !304), !dbg !928
  tail call void @llvm.dbg.value(metadata !755, i64 0, metadata !310), !dbg !929
  tail call void @llvm.dbg.value(metadata !755, i64 0, metadata !307), !dbg !929
  tail call void @llvm.dbg.value(metadata !755, i64 0, metadata !308), !dbg !929
  tail call void @llvm.dbg.value(metadata !755, i64 0, metadata !306), !dbg !929
  tail call void @llvm.dbg.value(metadata !755, i64 0, metadata !305), !dbg !929
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !311), !dbg !930
  %cmp137 = icmp sgt i32 %n, 0, !dbg !930
  br i1 %cmp137, label %for.body.lr.ph, label %entry.for.end_crit_edge, !dbg !930

entry.for.end_crit_edge:                          ; preds = %entry
  %conv45.pre = fpext float %lambda to double, !dbg !932
  %mul46.pre = fmul double %conv45.pre, -1.000000e+00, !dbg !932
  br label %for.end, !dbg !930

for.body.lr.ph:                                   ; preds = %entry
  %cmp1 = icmp eq i32* %y, null, !dbg !933
  %conv5 = fpext float %lambda to double, !dbg !935
  %mul6 = fmul double %conv5, -1.000000e+00, !dbg !935
  br label %for.body, !dbg !930

for.body:                                         ; preds = %cond.end, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %cond.end ]
  %total.0142 = phi double [ 0.000000e+00, %for.body.lr.ph ], [ %add43, %cond.end ]
  %esum.0141 = phi double [ 0.000000e+00, %for.body.lr.ph ], [ %add12, %cond.end ]
  %xsum.0140 = phi double [ 0.000000e+00, %for.body.lr.ph ], [ %add, %cond.end ]
  %xxesum.0139 = phi double [ 0.000000e+00, %for.body.lr.ph ], [ %add42, %cond.end ]
  %xesum.0138 = phi double [ 0.000000e+00, %for.body.lr.ph ], [ %add25, %cond.end ]
  br i1 %cmp1, label %cond.end, label %cond.false, !dbg !933

cond.false:                                       ; preds = %for.body
  %arrayidx = getelementptr inbounds i32* %y, i64 %indvars.iv, !dbg !933
  %0 = load i32* %arrayidx, align 4, !dbg !933, !tbaa !362
  %conv = sitofp i32 %0 to double, !dbg !933
  br label %cond.end, !dbg !933

cond.end:                                         ; preds = %for.body, %cond.false
  %cond = phi double [ %conv, %cond.false ], [ 1.000000e+00, %for.body ], !dbg !933
  tail call void @llvm.dbg.value(metadata !{double %cond}, i64 0, metadata !309), !dbg !933
  %arrayidx3 = getelementptr inbounds float* %x, i64 %indvars.iv, !dbg !936
  %1 = load float* %arrayidx3, align 4, !dbg !936, !tbaa !490
  %conv4 = fpext float %1 to double, !dbg !936
  %mul = fmul double %cond, %conv4, !dbg !936
  %add = fadd double %xsum.0140, %mul, !dbg !936
  tail call void @llvm.dbg.value(metadata !{double %add}, i64 0, metadata !308), !dbg !936
  %mul10 = fmul double %mul6, %conv4, !dbg !935
  %call = tail call double @exp(double %mul10) #5, !dbg !935
  %mul11 = fmul double %cond, %call, !dbg !935
  %add12 = fadd double %esum.0141, %mul11, !dbg !935
  tail call void @llvm.dbg.value(metadata !{double %add12}, i64 0, metadata !305), !dbg !935
  %2 = load float* %arrayidx3, align 4, !dbg !937, !tbaa !490
  %conv15 = fpext float %2 to double, !dbg !937
  %mul16 = fmul double %cond, %conv15, !dbg !937
  %mul22 = fmul double %mul6, %conv15, !dbg !937
  %call23 = tail call double @exp(double %mul22) #5, !dbg !937
  %mul24 = fmul double %call23, %mul16, !dbg !937
  %add25 = fadd double %xesum.0138, %mul24, !dbg !937
  tail call void @llvm.dbg.value(metadata !{double %add25}, i64 0, metadata !306), !dbg !937
  %3 = load float* %arrayidx3, align 4, !dbg !938, !tbaa !490
  %conv28 = fpext float %3 to double, !dbg !938
  %mul29 = fmul double %cond, %conv28, !dbg !938
  %mul33 = fmul double %conv28, %mul29, !dbg !938
  %mul39 = fmul double %mul6, %conv28, !dbg !938
  %call40 = tail call double @exp(double %mul39) #5, !dbg !938
  %mul41 = fmul double %call40, %mul33, !dbg !938
  %add42 = fadd double %xxesum.0139, %mul41, !dbg !938
  tail call void @llvm.dbg.value(metadata !{double %add42}, i64 0, metadata !307), !dbg !938
  %add43 = fadd double %total.0142, %cond, !dbg !939
  tail call void @llvm.dbg.value(metadata !{double %add43}, i64 0, metadata !310), !dbg !939
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !930
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !930
  %exitcond = icmp eq i32 %lftr.wideiv, %n, !dbg !930
  br i1 %exitcond, label %for.end, label %for.body, !dbg !930

for.end:                                          ; preds = %cond.end, %entry.for.end_crit_edge
  %mul46.pre-phi = phi double [ %mul46.pre, %entry.for.end_crit_edge ], [ %mul6, %cond.end ], !dbg !932
  %conv45.pre-phi = phi double [ %conv45.pre, %entry.for.end_crit_edge ], [ %conv5, %cond.end ], !dbg !932
  %total.0.lcssa = phi double [ 0.000000e+00, %entry.for.end_crit_edge ], [ %add43, %cond.end ]
  %esum.0.lcssa = phi double [ 0.000000e+00, %entry.for.end_crit_edge ], [ %add12, %cond.end ]
  %xsum.0.lcssa = phi double [ 0.000000e+00, %entry.for.end_crit_edge ], [ %add, %cond.end ]
  %xxesum.0.lcssa = phi double [ 0.000000e+00, %entry.for.end_crit_edge ], [ %add42, %cond.end ]
  %xesum.0.lcssa = phi double [ 0.000000e+00, %entry.for.end_crit_edge ], [ %add25, %cond.end ]
  %conv44 = sitofp i32 %z to double, !dbg !932
  %conv47 = fpext float %c to double, !dbg !932
  %mul48 = fmul double %conv47, %mul46.pre-phi, !dbg !932
  %call49 = tail call double @exp(double %mul48) #5, !dbg !932
  %mul50 = fmul double %conv44, %call49, !dbg !932
  %add51 = fadd double %esum.0.lcssa, %mul50, !dbg !932
  tail call void @llvm.dbg.value(metadata !{double %add51}, i64 0, metadata !305), !dbg !932
  %mul54 = fmul double %conv44, %conv47, !dbg !940
  %call59 = tail call double @exp(double %mul48) #5, !dbg !940
  %mul60 = fmul double %mul54, %call59, !dbg !940
  %add61 = fadd double %xesum.0.lcssa, %mul60, !dbg !940
  tail call void @llvm.dbg.value(metadata !{double %add61}, i64 0, metadata !306), !dbg !940
  %mul66 = fmul double %conv47, %mul54, !dbg !941
  %call71 = tail call double @exp(double %mul48) #5, !dbg !941
  %mul72 = fmul double %mul66, %call71, !dbg !941
  %add73 = fadd double %xxesum.0.lcssa, %mul72, !dbg !941
  tail call void @llvm.dbg.value(metadata !{double %add73}, i64 0, metadata !307), !dbg !941
  %div = fdiv double 1.000000e+00, %conv45.pre-phi, !dbg !942
  %div75 = fdiv double %xsum.0.lcssa, %total.0.lcssa, !dbg !942
  %sub = fsub double %div, %div75, !dbg !942
  %div76 = fdiv double %add61, %add51, !dbg !942
  %add77 = fadd double %sub, %div76, !dbg !942
  %conv78 = fptrunc double %add77 to float, !dbg !942
  store float %conv78, float* %ret_f, align 4, !dbg !942, !tbaa !490
  %mul81 = fmul double %div76, %div76, !dbg !943
  %div82 = fdiv double %add73, %add51, !dbg !943
  %sub83 = fsub double %mul81, %div82, !dbg !943
  %mul84 = fmul float %lambda, %lambda, !dbg !943
  %conv85 = fpext float %mul84 to double, !dbg !943
  %div86 = fdiv double 1.000000e+00, %conv85, !dbg !943
  %sub87 = fsub double %sub83, %div86, !dbg !943
  %conv88 = fptrunc double %sub87 to float, !dbg !943
  store float %conv88, float* %ret_df, align 4, !dbg !943, !tbaa !490
  ret void, !dbg !944
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

declare float @floorf(float)

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

declare float @fabsf(float)

; Function Attrs: nounwind optsize
declare float @sqrtf(float) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !2, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !38, metadata !43, metadata !46, metadata !57, metadata !135, metadata !142, metadata !149, metadata !156, metadata !170, metadata !196, metadata !211, metadata !224, metadata !236, metadata !243, metadata !248, metadata !254, metadata !263, metadata !269, metadata !276, metadata !293, metadata !312, metadata !334}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"AllocHistogram", metadata !"AllocHistogram", metadata !"", i32 60, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, %struct.histogram_s* (i32, i32, i32)* @AllocHistogram, null, null, metadata !31, i32 61} ; [ DW_TAG_subprogram ] [line 60] [def] [scope 61] [AllocHistogram]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !14, metadata !14, metadata !14}
!8 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from histogram_s]
!9 = metadata !{i32 786451, metadata !10, null, metadata !"histogram_s", i32 419, i64 512, i64 64, i32 0, i32 0, null, metadata !11, i32 0, null, null} ; [ DW_TAG_structure_type ] [histogram_s] [line 419, size 512, align 64, offset 0] [from ]
!10 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/456.hmmer/src/structs.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!11 = metadata !{metadata !12, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !24, metadata !25, metadata !29, metadata !30}
!12 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"histogram", i32 420, i64 64, i64 64, i64 0, i32 0, metadata !13} ; [ DW_TAG_member ] [histogram] [line 420, size 64, align 64, offset 0] [from ]
!13 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !14} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"min", i32 421, i64 32, i64 32, i64 64, i32 0, metadata !14} ; [ DW_TAG_member ] [min] [line 421, size 32, align 32, offset 64] [from int]
!16 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"max", i32 422, i64 32, i64 32, i64 96, i32 0, metadata !14} ; [ DW_TAG_member ] [max] [line 422, size 32, align 32, offset 96] [from int]
!17 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"highscore", i32 423, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [highscore] [line 423, size 32, align 32, offset 128] [from int]
!18 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"lowscore", i32 424, i64 32, i64 32, i64 160, i32 0, metadata !14} ; [ DW_TAG_member ] [lowscore] [line 424, size 32, align 32, offset 160] [from int]
!19 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"lumpsize", i32 425, i64 32, i64 32, i64 192, i32 0, metadata !14} ; [ DW_TAG_member ] [lumpsize] [line 425, size 32, align 32, offset 192] [from int]
!20 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"total", i32 426, i64 32, i64 32, i64 224, i32 0, metadata !14} ; [ DW_TAG_member ] [total] [line 426, size 32, align 32, offset 224] [from int]
!21 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"expect", i32 428, i64 64, i64 64, i64 256, i32 0, metadata !22} ; [ DW_TAG_member ] [expect] [line 428, size 64, align 64, offset 256] [from ]
!22 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from float]
!23 = metadata !{i32 786468, null, null, metadata !"float", i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [float] [line 0, size 32, align 32, offset 0, enc DW_ATE_float]
!24 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"fit_type", i32 429, i64 32, i64 32, i64 320, i32 0, metadata !14} ; [ DW_TAG_member ] [fit_type] [line 429, size 32, align 32, offset 320] [from int]
!25 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"param", i32 430, i64 96, i64 32, i64 352, i32 0, metadata !26} ; [ DW_TAG_member ] [param] [line 430, size 96, align 32, offset 352] [from ]
!26 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 96, i64 32, i32 0, i32 0, metadata !23, metadata !27, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 96, align 32, offset 0] [from float]
!27 = metadata !{metadata !28}
!28 = metadata !{i32 786465, i64 0, i64 3}        ; [ DW_TAG_subrange_type ] [0, 2]
!29 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"chisq", i32 431, i64 32, i64 32, i64 448, i32 0, metadata !23} ; [ DW_TAG_member ] [chisq] [line 431, size 32, align 32, offset 448] [from float]
!30 = metadata !{i32 786445, metadata !10, metadata !9, metadata !"chip", i32 432, i64 32, i64 32, i64 480, i32 0, metadata !23} ; [ DW_TAG_member ] [chip] [line 432, size 32, align 32, offset 480] [from float]
!31 = metadata !{metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37}
!32 = metadata !{i32 786689, metadata !4, metadata !"min", metadata !5, i32 16777276, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [min] [line 60]
!33 = metadata !{i32 786689, metadata !4, metadata !"max", metadata !5, i32 33554492, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [max] [line 60]
!34 = metadata !{i32 786689, metadata !4, metadata !"lumpsize", metadata !5, i32 50331708, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lumpsize] [line 60]
!35 = metadata !{i32 786688, metadata !4, metadata !"h", metadata !5, i32 62, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [h] [line 62]
!36 = metadata !{i32 786688, metadata !4, metadata !"newsize", metadata !5, i32 63, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newsize] [line 63]
!37 = metadata !{i32 786688, metadata !4, metadata !"i", metadata !5, i32 64, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 64]
!38 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"FreeHistogram", metadata !"FreeHistogram", metadata !"", i32 90, metadata !39, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.histogram_s*)* @FreeHistogram, null, null, metadata !41, i32 91} ; [ DW_TAG_subprogram ] [line 90] [def] [scope 91] [FreeHistogram]
!39 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !40, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!40 = metadata !{null, metadata !8}
!41 = metadata !{metadata !42}
!42 = metadata !{i32 786689, metadata !38, metadata !"h", metadata !5, i32 16777306, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [h] [line 90]
!43 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"UnfitHistogram", metadata !"UnfitHistogram", metadata !"", i32 102, metadata !39, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.histogram_s*)* @UnfitHistogram, null, null, metadata !44, i32 103} ; [ DW_TAG_subprogram ] [line 102] [def] [scope 103] [UnfitHistogram]
!44 = metadata !{metadata !45}
!45 = metadata !{i32 786689, metadata !43, metadata !"h", metadata !5, i32 16777318, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [h] [line 102]
!46 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"AddToHistogram", metadata !"AddToHistogram", metadata !"", i32 118, metadata !47, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.histogram_s*, float)* @AddToHistogram, null, null, metadata !49, i32 119} ; [ DW_TAG_subprogram ] [line 118] [def] [scope 119] [AddToHistogram]
!47 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !48, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!48 = metadata !{null, metadata !8, metadata !23}
!49 = metadata !{metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56}
!50 = metadata !{i32 786689, metadata !46, metadata !"h", metadata !5, i32 16777334, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [h] [line 118]
!51 = metadata !{i32 786689, metadata !46, metadata !"sc", metadata !5, i32 33554550, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sc] [line 118]
!52 = metadata !{i32 786688, metadata !46, metadata !"score", metadata !5, i32 120, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [score] [line 120]
!53 = metadata !{i32 786688, metadata !46, metadata !"moveby", metadata !5, i32 121, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [moveby] [line 121]
!54 = metadata !{i32 786688, metadata !46, metadata !"prevsize", metadata !5, i32 122, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [prevsize] [line 122]
!55 = metadata !{i32 786688, metadata !46, metadata !"newsize", metadata !5, i32 123, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [newsize] [line 123]
!56 = metadata !{i32 786688, metadata !46, metadata !"i", metadata !5, i32 124, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 124]
!57 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PrintASCIIHistogram", metadata !"PrintASCIIHistogram", metadata !"", i32 189, metadata !58, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, %struct.histogram_s*)* @PrintASCIIHistogram, null, null, metadata !117, i32 190} ; [ DW_TAG_subprogram ] [line 189] [def] [scope 190] [PrintASCIIHistogram]
!58 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !59, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!59 = metadata !{null, metadata !60, metadata !8}
!60 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !61} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!61 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !62} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!62 = metadata !{i32 786451, metadata !63, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !64, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!63 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!64 = metadata !{metadata !65, metadata !66, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !87, metadata !88, metadata !89, metadata !90, metadata !93, metadata !95, metadata !97, metadata !101, metadata !103, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !112, metadata !113}
!65 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !14} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!66 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !67} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!67 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !68} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!68 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!69 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !67} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!70 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !67} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!71 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !67} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!72 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !67} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!73 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !67} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!74 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !67} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!75 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !67} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!76 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !67} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!77 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !67} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!78 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !67} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!79 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !80} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!80 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !81} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!81 = metadata !{i32 786451, metadata !63, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !82, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!82 = metadata !{metadata !83, metadata !84, metadata !86}
!83 = metadata !{i32 786445, metadata !63, metadata !81, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !80} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!84 = metadata !{i32 786445, metadata !63, metadata !81, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !85} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!85 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !62} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!86 = metadata !{i32 786445, metadata !63, metadata !81, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !14} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!87 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !85} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!88 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !14} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!89 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !14} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!90 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !91} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!91 = metadata !{i32 786454, metadata !63, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !92} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!92 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!93 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !94} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!94 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!95 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !96} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!96 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!97 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !98} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!98 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !68, metadata !99, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!99 = metadata !{metadata !100}
!100 = metadata !{i32 786465, i64 0, i64 1}       ; [ DW_TAG_subrange_type ] [0, 0]
!101 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !102} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!102 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!103 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !104} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!104 = metadata !{i32 786454, metadata !63, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !92} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!105 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !102} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!106 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !102} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!107 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !102} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!108 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !102} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!109 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !110} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!110 = metadata !{i32 786454, metadata !63, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !111} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!111 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!112 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !14} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!113 = metadata !{i32 786445, metadata !63, metadata !62, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !114} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!114 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !68, metadata !115, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!115 = metadata !{metadata !116}
!116 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!117 = metadata !{metadata !118, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !134}
!118 = metadata !{i32 786689, metadata !57, metadata !"fp", metadata !5, i32 16777405, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 189]
!119 = metadata !{i32 786689, metadata !57, metadata !"h", metadata !5, i32 33554621, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [h] [line 189]
!120 = metadata !{i32 786688, metadata !57, metadata !"units", metadata !5, i32 191, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [units] [line 191]
!121 = metadata !{i32 786688, metadata !57, metadata !"maxbar", metadata !5, i32 192, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [maxbar] [line 192]
!122 = metadata !{i32 786688, metadata !57, metadata !"num", metadata !5, i32 193, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [num] [line 193]
!123 = metadata !{i32 786688, metadata !57, metadata !"i", metadata !5, i32 194, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 194]
!124 = metadata !{i32 786688, metadata !57, metadata !"idx", metadata !5, i32 194, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 194]
!125 = metadata !{i32 786688, metadata !57, metadata !"buffer", metadata !5, i32 195, metadata !126, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [buffer] [line 195]
!126 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 648, i64 8, i32 0, i32 0, metadata !68, metadata !127, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 648, align 8, offset 0] [from char]
!127 = metadata !{metadata !128}
!128 = metadata !{i32 786465, i64 0, i64 81}      ; [ DW_TAG_subrange_type ] [0, 80]
!129 = metadata !{i32 786688, metadata !57, metadata !"pos", metadata !5, i32 196, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pos] [line 196]
!130 = metadata !{i32 786688, metadata !57, metadata !"lowbound", metadata !5, i32 197, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lowbound] [line 197]
!131 = metadata !{i32 786688, metadata !57, metadata !"lowcount", metadata !5, i32 197, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lowcount] [line 197]
!132 = metadata !{i32 786688, metadata !57, metadata !"highbound", metadata !5, i32 198, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [highbound] [line 198]
!133 = metadata !{i32 786688, metadata !57, metadata !"highcount", metadata !5, i32 198, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [highcount] [line 198]
!134 = metadata !{i32 786688, metadata !57, metadata !"emptybins", metadata !5, i32 199, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [emptybins] [line 199]
!135 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PrintXMGRHistogram", metadata !"PrintXMGRHistogram", metadata !"", i32 348, metadata !58, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, %struct.histogram_s*)* @PrintXMGRHistogram, null, null, metadata !136, i32 349} ; [ DW_TAG_subprogram ] [line 348] [def] [scope 349] [PrintXMGRHistogram]
!136 = metadata !{metadata !137, metadata !138, metadata !139, metadata !140}
!137 = metadata !{i32 786689, metadata !135, metadata !"fp", metadata !5, i32 16777564, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 348]
!138 = metadata !{i32 786689, metadata !135, metadata !"h", metadata !5, i32 33554780, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [h] [line 348]
!139 = metadata !{i32 786688, metadata !135, metadata !"sc", metadata !5, i32 350, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sc] [line 350]
!140 = metadata !{i32 786688, metadata !135, metadata !"val", metadata !5, i32 351, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [val] [line 351]
!141 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!142 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PrintXMGRDistribution", metadata !"PrintXMGRDistribution", metadata !"", i32 384, metadata !58, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, %struct.histogram_s*)* @PrintXMGRDistribution, null, null, metadata !143, i32 385} ; [ DW_TAG_subprogram ] [line 384] [def] [scope 385] [PrintXMGRDistribution]
!143 = metadata !{metadata !144, metadata !145, metadata !146, metadata !147, metadata !148}
!144 = metadata !{i32 786689, metadata !142, metadata !"fp", metadata !5, i32 16777600, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 384]
!145 = metadata !{i32 786689, metadata !142, metadata !"h", metadata !5, i32 33554816, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [h] [line 384]
!146 = metadata !{i32 786688, metadata !142, metadata !"sc", metadata !5, i32 386, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sc] [line 386]
!147 = metadata !{i32 786688, metadata !142, metadata !"cum", metadata !5, i32 387, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cum] [line 387]
!148 = metadata !{i32 786688, metadata !142, metadata !"val", metadata !5, i32 388, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [val] [line 388]
!149 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"PrintXMGRRegressionLine", metadata !"PrintXMGRRegressionLine", metadata !"", i32 423, metadata !58, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._IO_FILE*, %struct.histogram_s*)* @PrintXMGRRegressionLine, null, null, metadata !150, i32 424} ; [ DW_TAG_subprogram ] [line 423] [def] [scope 424] [PrintXMGRRegressionLine]
!150 = metadata !{metadata !151, metadata !152, metadata !153, metadata !154, metadata !155}
!151 = metadata !{i32 786689, metadata !149, metadata !"fp", metadata !5, i32 16777639, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 423]
!152 = metadata !{i32 786689, metadata !149, metadata !"h", metadata !5, i32 33554855, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [h] [line 423]
!153 = metadata !{i32 786688, metadata !149, metadata !"sc", metadata !5, i32 425, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sc] [line 425]
!154 = metadata !{i32 786688, metadata !149, metadata !"cum", metadata !5, i32 426, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [cum] [line 426]
!155 = metadata !{i32 786688, metadata !149, metadata !"val", metadata !5, i32 427, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [val] [line 427]
!156 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"EVDBasicFit", metadata !"EVDBasicFit", metadata !"", i32 476, metadata !39, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.histogram_s*)* @EVDBasicFit, null, null, metadata !157, i32 477} ; [ DW_TAG_subprogram ] [line 476] [def] [scope 477] [EVDBasicFit]
!157 = metadata !{metadata !158, metadata !159, metadata !160, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169}
!158 = metadata !{i32 786689, metadata !156, metadata !"h", metadata !5, i32 16777692, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [h] [line 476]
!159 = metadata !{i32 786688, metadata !156, metadata !"d", metadata !5, i32 478, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [d] [line 478]
!160 = metadata !{i32 786688, metadata !156, metadata !"x", metadata !5, i32 479, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 479]
!161 = metadata !{i32 786688, metadata !156, metadata !"hsize", metadata !5, i32 480, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hsize] [line 480]
!162 = metadata !{i32 786688, metadata !156, metadata !"sum", metadata !5, i32 481, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum] [line 481]
!163 = metadata !{i32 786688, metadata !156, metadata !"sc", metadata !5, i32 482, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sc] [line 482]
!164 = metadata !{i32 786688, metadata !156, metadata !"idx", metadata !5, i32 482, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 482]
!165 = metadata !{i32 786688, metadata !156, metadata !"slope", metadata !5, i32 483, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [slope] [line 483]
!166 = metadata !{i32 786688, metadata !156, metadata !"intercept", metadata !5, i32 483, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [intercept] [line 483]
!167 = metadata !{i32 786688, metadata !156, metadata !"corr", metadata !5, i32 484, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [corr] [line 484]
!168 = metadata !{i32 786688, metadata !156, metadata !"lambda", metadata !5, i32 485, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lambda] [line 485]
!169 = metadata !{i32 786688, metadata !156, metadata !"mu", metadata !5, i32 485, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mu] [line 485]
!170 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ExtremeValueFitHistogram", metadata !"ExtremeValueFitHistogram", metadata !"", i32 555, metadata !171, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.histogram_s*, i32, float)* @ExtremeValueFitHistogram, null, null, metadata !173, i32 556} ; [ DW_TAG_subprogram ] [line 555] [def] [scope 556] [ExtremeValueFitHistogram]
!171 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !172, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!172 = metadata !{metadata !14, metadata !8, metadata !14, metadata !23}
!173 = metadata !{metadata !174, metadata !175, metadata !176, metadata !177, metadata !178, metadata !179, metadata !180, metadata !181, metadata !182, metadata !183, metadata !184, metadata !185, metadata !186, metadata !187, metadata !188, metadata !189, metadata !191}
!174 = metadata !{i32 786689, metadata !170, metadata !"h", metadata !5, i32 16777771, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [h] [line 555]
!175 = metadata !{i32 786689, metadata !170, metadata !"censor", metadata !5, i32 33554987, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [censor] [line 555]
!176 = metadata !{i32 786689, metadata !170, metadata !"high_hint", metadata !5, i32 50332203, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [high_hint] [line 555]
!177 = metadata !{i32 786688, metadata !170, metadata !"x", metadata !5, i32 557, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [x] [line 557]
!178 = metadata !{i32 786688, metadata !170, metadata !"y", metadata !5, i32 558, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 558]
!179 = metadata !{i32 786688, metadata !170, metadata !"n", metadata !5, i32 559, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [n] [line 559]
!180 = metadata !{i32 786688, metadata !170, metadata !"z", metadata !5, i32 560, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [z] [line 560]
!181 = metadata !{i32 786688, metadata !170, metadata !"hsize", metadata !5, i32 561, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hsize] [line 561]
!182 = metadata !{i32 786688, metadata !170, metadata !"lambda", metadata !5, i32 562, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lambda] [line 562]
!183 = metadata !{i32 786688, metadata !170, metadata !"mu", metadata !5, i32 562, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mu] [line 562]
!184 = metadata !{i32 786688, metadata !170, metadata !"sc", metadata !5, i32 563, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sc] [line 563]
!185 = metadata !{i32 786688, metadata !170, metadata !"lowbound", metadata !5, i32 564, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lowbound] [line 564]
!186 = metadata !{i32 786688, metadata !170, metadata !"highbound", metadata !5, i32 565, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [highbound] [line 565]
!187 = metadata !{i32 786688, metadata !170, metadata !"new_highbound", metadata !5, i32 566, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [new_highbound] [line 566]
!188 = metadata !{i32 786688, metadata !170, metadata !"iteration", metadata !5, i32 567, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iteration] [line 567]
!189 = metadata !{i32 786688, metadata !190, metadata !"max", metadata !5, i32 576, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [max] [line 576]
!190 = metadata !{i32 786443, metadata !1, metadata !170, i32 575, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!191 = metadata !{i32 786688, metadata !192, metadata !"psx", metadata !5, i32 624, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [psx] [line 624]
!192 = metadata !{i32 786443, metadata !1, metadata !193, i32 623, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!193 = metadata !{i32 786443, metadata !1, metadata !194, i32 619, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!194 = metadata !{i32 786443, metadata !1, metadata !195, i32 592, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!195 = metadata !{i32 786443, metadata !1, metadata !170, i32 591, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!196 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ExtremeValueSetHistogram", metadata !"ExtremeValueSetHistogram", metadata !"", i32 682, metadata !197, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.histogram_s*, float, float, float, float, i32)* @ExtremeValueSetHistogram, null, null, metadata !199, i32 684} ; [ DW_TAG_subprogram ] [line 682] [def] [scope 684] [ExtremeValueSetHistogram]
!197 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !198, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!198 = metadata !{null, metadata !8, metadata !23, metadata !23, metadata !23, metadata !23, metadata !14}
!199 = metadata !{metadata !200, metadata !201, metadata !202, metadata !203, metadata !204, metadata !205, metadata !206, metadata !207, metadata !208, metadata !209, metadata !210}
!200 = metadata !{i32 786689, metadata !196, metadata !"h", metadata !5, i32 16777898, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [h] [line 682]
!201 = metadata !{i32 786689, metadata !196, metadata !"mu", metadata !5, i32 33555114, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mu] [line 682]
!202 = metadata !{i32 786689, metadata !196, metadata !"lambda", metadata !5, i32 50332330, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lambda] [line 682]
!203 = metadata !{i32 786689, metadata !196, metadata !"lowbound", metadata !5, i32 67109547, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lowbound] [line 683]
!204 = metadata !{i32 786689, metadata !196, metadata !"highbound", metadata !5, i32 83886763, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [highbound] [line 683]
!205 = metadata !{i32 786689, metadata !196, metadata !"ndegrees", metadata !5, i32 100663979, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ndegrees] [line 683]
!206 = metadata !{i32 786688, metadata !196, metadata !"sc", metadata !5, i32 685, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sc] [line 685]
!207 = metadata !{i32 786688, metadata !196, metadata !"hsize", metadata !5, i32 686, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hsize] [line 686]
!208 = metadata !{i32 786688, metadata !196, metadata !"idx", metadata !5, i32 686, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 686]
!209 = metadata !{i32 786688, metadata !196, metadata !"nbins", metadata !5, i32 687, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nbins] [line 687]
!210 = metadata !{i32 786688, metadata !196, metadata !"delta", metadata !5, i32 688, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [delta] [line 688]
!211 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"GaussianFitHistogram", metadata !"GaussianFitHistogram", metadata !"", i32 747, metadata !212, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct.histogram_s*, float)* @GaussianFitHistogram, null, null, metadata !214, i32 748} ; [ DW_TAG_subprogram ] [line 747] [def] [scope 748] [GaussianFitHistogram]
!212 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !213, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!213 = metadata !{metadata !14, metadata !8, metadata !23}
!214 = metadata !{metadata !215, metadata !216, metadata !217, metadata !218, metadata !219, metadata !220, metadata !221, metadata !222, metadata !223}
!215 = metadata !{i32 786689, metadata !211, metadata !"h", metadata !5, i32 16777963, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [h] [line 747]
!216 = metadata !{i32 786689, metadata !211, metadata !"high_hint", metadata !5, i32 33555179, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [high_hint] [line 747]
!217 = metadata !{i32 786688, metadata !211, metadata !"sum", metadata !5, i32 749, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sum] [line 749]
!218 = metadata !{i32 786688, metadata !211, metadata !"sqsum", metadata !5, i32 750, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sqsum] [line 750]
!219 = metadata !{i32 786688, metadata !211, metadata !"delta", metadata !5, i32 751, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [delta] [line 751]
!220 = metadata !{i32 786688, metadata !211, metadata !"sc", metadata !5, i32 752, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sc] [line 752]
!221 = metadata !{i32 786688, metadata !211, metadata !"nbins", metadata !5, i32 753, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nbins] [line 753]
!222 = metadata !{i32 786688, metadata !211, metadata !"hsize", metadata !5, i32 754, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hsize] [line 754]
!223 = metadata !{i32 786688, metadata !211, metadata !"idx", metadata !5, i32 754, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 754]
!224 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"GaussianSetHistogram", metadata !"GaussianSetHistogram", metadata !"", i32 830, metadata !225, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct.histogram_s*, float, float)* @GaussianSetHistogram, null, null, metadata !227, i32 831} ; [ DW_TAG_subprogram ] [line 830] [def] [scope 831] [GaussianSetHistogram]
!225 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !226, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!226 = metadata !{null, metadata !8, metadata !23, metadata !23}
!227 = metadata !{metadata !228, metadata !229, metadata !230, metadata !231, metadata !232, metadata !233, metadata !234, metadata !235}
!228 = metadata !{i32 786689, metadata !224, metadata !"h", metadata !5, i32 16778046, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [h] [line 830]
!229 = metadata !{i32 786689, metadata !224, metadata !"mean", metadata !5, i32 33555262, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mean] [line 830]
!230 = metadata !{i32 786689, metadata !224, metadata !"sd", metadata !5, i32 50332478, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [sd] [line 830]
!231 = metadata !{i32 786688, metadata !224, metadata !"sc", metadata !5, i32 832, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sc] [line 832]
!232 = metadata !{i32 786688, metadata !224, metadata !"hsize", metadata !5, i32 833, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [hsize] [line 833]
!233 = metadata !{i32 786688, metadata !224, metadata !"idx", metadata !5, i32 833, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [idx] [line 833]
!234 = metadata !{i32 786688, metadata !224, metadata !"nbins", metadata !5, i32 834, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nbins] [line 834]
!235 = metadata !{i32 786688, metadata !224, metadata !"delta", metadata !5, i32 835, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [delta] [line 835]
!236 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"EVDDensity", metadata !"EVDDensity", metadata !"", i32 891, metadata !237, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (float, float, float)* @EVDDensity, null, null, metadata !239, i32 892} ; [ DW_TAG_subprogram ] [line 891] [def] [scope 892] [EVDDensity]
!237 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !238, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!238 = metadata !{metadata !141, metadata !23, metadata !23, metadata !23}
!239 = metadata !{metadata !240, metadata !241, metadata !242}
!240 = metadata !{i32 786689, metadata !236, metadata !"x", metadata !5, i32 16778107, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 891]
!241 = metadata !{i32 786689, metadata !236, metadata !"mu", metadata !5, i32 33555323, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mu] [line 891]
!242 = metadata !{i32 786689, metadata !236, metadata !"lambda", metadata !5, i32 50332539, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lambda] [line 891]
!243 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"EVDDistribution", metadata !"EVDDistribution", metadata !"", i32 905, metadata !237, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (float, float, float)* @EVDDistribution, null, null, metadata !244, i32 906} ; [ DW_TAG_subprogram ] [line 905] [def] [scope 906] [EVDDistribution]
!244 = metadata !{metadata !245, metadata !246, metadata !247}
!245 = metadata !{i32 786689, metadata !243, metadata !"x", metadata !5, i32 16778121, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 905]
!246 = metadata !{i32 786689, metadata !243, metadata !"mu", metadata !5, i32 33555337, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mu] [line 905]
!247 = metadata !{i32 786689, metadata !243, metadata !"lambda", metadata !5, i32 50332553, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lambda] [line 905]
!248 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ExtremeValueP", metadata !"ExtremeValueP", metadata !"", i32 928, metadata !237, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (float, float, float)* @ExtremeValueP, null, null, metadata !249, i32 929} ; [ DW_TAG_subprogram ] [line 928] [def] [scope 929] [ExtremeValueP]
!249 = metadata !{metadata !250, metadata !251, metadata !252, metadata !253}
!250 = metadata !{i32 786689, metadata !248, metadata !"x", metadata !5, i32 16778144, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 928]
!251 = metadata !{i32 786689, metadata !248, metadata !"mu", metadata !5, i32 33555360, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mu] [line 928]
!252 = metadata !{i32 786689, metadata !248, metadata !"lambda", metadata !5, i32 50332576, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lambda] [line 928]
!253 = metadata !{i32 786688, metadata !248, metadata !"y", metadata !5, i32 930, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 930]
!254 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ExtremeValueP2", metadata !"ExtremeValueP2", metadata !"", i32 957, metadata !255, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (float, float, float, i32)* @ExtremeValueP2, null, null, metadata !257, i32 958} ; [ DW_TAG_subprogram ] [line 957] [def] [scope 958] [ExtremeValueP2]
!255 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !256, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!256 = metadata !{metadata !141, metadata !23, metadata !23, metadata !23, metadata !14}
!257 = metadata !{metadata !258, metadata !259, metadata !260, metadata !261, metadata !262}
!258 = metadata !{i32 786689, metadata !254, metadata !"x", metadata !5, i32 16778173, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 957]
!259 = metadata !{i32 786689, metadata !254, metadata !"mu", metadata !5, i32 33555389, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mu] [line 957]
!260 = metadata !{i32 786689, metadata !254, metadata !"lambda", metadata !5, i32 50332605, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lambda] [line 957]
!261 = metadata !{i32 786689, metadata !254, metadata !"N", metadata !5, i32 67109821, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [N] [line 957]
!262 = metadata !{i32 786688, metadata !254, metadata !"y", metadata !5, i32 959, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [y] [line 959]
!263 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"ExtremeValueE", metadata !"ExtremeValueE", metadata !"", i32 978, metadata !255, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, double (float, float, float, i32)* @ExtremeValueE, null, null, metadata !264, i32 979} ; [ DW_TAG_subprogram ] [line 978] [def] [scope 979] [ExtremeValueE]
!264 = metadata !{metadata !265, metadata !266, metadata !267, metadata !268}
!265 = metadata !{i32 786689, metadata !263, metadata !"x", metadata !5, i32 16778194, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 978]
!266 = metadata !{i32 786689, metadata !263, metadata !"mu", metadata !5, i32 33555410, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mu] [line 978]
!267 = metadata !{i32 786689, metadata !263, metadata !"lambda", metadata !5, i32 50332626, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lambda] [line 978]
!268 = metadata !{i32 786689, metadata !263, metadata !"N", metadata !5, i32 67109842, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [N] [line 978]
!269 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"EVDrandom", metadata !"EVDrandom", metadata !"", i32 993, metadata !270, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, float (float, float)* @EVDrandom, null, null, metadata !272, i32 994} ; [ DW_TAG_subprogram ] [line 993] [def] [scope 994] [EVDrandom]
!270 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !271, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!271 = metadata !{metadata !23, metadata !23, metadata !23}
!272 = metadata !{metadata !273, metadata !274, metadata !275}
!273 = metadata !{i32 786689, metadata !269, metadata !"mu", metadata !5, i32 16778209, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mu] [line 993]
!274 = metadata !{i32 786689, metadata !269, metadata !"lambda", metadata !5, i32 33555425, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lambda] [line 993]
!275 = metadata !{i32 786688, metadata !269, metadata !"p", metadata !5, i32 995, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [p] [line 995]
!276 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Lawless416", metadata !"Lawless416", metadata !"", i32 1028, metadata !277, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (float*, i32*, i32, float, float*, float*)* @Lawless416, null, null, metadata !279, i32 1029} ; [ DW_TAG_subprogram ] [line 1028] [def] [scope 1029] [Lawless416]
!277 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !278, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!278 = metadata !{null, metadata !22, metadata !13, metadata !14, metadata !23, metadata !22, metadata !22}
!279 = metadata !{metadata !280, metadata !281, metadata !282, metadata !283, metadata !284, metadata !285, metadata !286, metadata !287, metadata !288, metadata !289, metadata !290, metadata !291, metadata !292}
!280 = metadata !{i32 786689, metadata !276, metadata !"x", metadata !5, i32 16778244, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 1028]
!281 = metadata !{i32 786689, metadata !276, metadata !"y", metadata !5, i32 33555460, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 1028]
!282 = metadata !{i32 786689, metadata !276, metadata !"n", metadata !5, i32 50332676, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 1028]
!283 = metadata !{i32 786689, metadata !276, metadata !"lambda", metadata !5, i32 67109892, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lambda] [line 1028]
!284 = metadata !{i32 786689, metadata !276, metadata !"ret_f", metadata !5, i32 83887108, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_f] [line 1028]
!285 = metadata !{i32 786689, metadata !276, metadata !"ret_df", metadata !5, i32 100664324, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_df] [line 1028]
!286 = metadata !{i32 786688, metadata !276, metadata !"esum", metadata !5, i32 1031, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [esum] [line 1031]
!287 = metadata !{i32 786688, metadata !276, metadata !"xesum", metadata !5, i32 1032, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xesum] [line 1032]
!288 = metadata !{i32 786688, metadata !276, metadata !"xxesum", metadata !5, i32 1033, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xxesum] [line 1033]
!289 = metadata !{i32 786688, metadata !276, metadata !"xsum", metadata !5, i32 1034, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xsum] [line 1034]
!290 = metadata !{i32 786688, metadata !276, metadata !"mult", metadata !5, i32 1035, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mult] [line 1035]
!291 = metadata !{i32 786688, metadata !276, metadata !"total", metadata !5, i32 1036, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [total] [line 1036]
!292 = metadata !{i32 786688, metadata !276, metadata !"i", metadata !5, i32 1037, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1037]
!293 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"Lawless422", metadata !"Lawless422", metadata !"", i32 1085, metadata !294, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (float*, i32*, i32, i32, float, float, float*, float*)* @Lawless422, null, null, metadata !296, i32 1087} ; [ DW_TAG_subprogram ] [line 1085] [def] [scope 1087] [Lawless422]
!294 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !295, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!295 = metadata !{null, metadata !22, metadata !13, metadata !14, metadata !14, metadata !23, metadata !23, metadata !22, metadata !22}
!296 = metadata !{metadata !297, metadata !298, metadata !299, metadata !300, metadata !301, metadata !302, metadata !303, metadata !304, metadata !305, metadata !306, metadata !307, metadata !308, metadata !309, metadata !310, metadata !311}
!297 = metadata !{i32 786689, metadata !293, metadata !"x", metadata !5, i32 16778301, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 1085]
!298 = metadata !{i32 786689, metadata !293, metadata !"y", metadata !5, i32 33555517, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 1085]
!299 = metadata !{i32 786689, metadata !293, metadata !"n", metadata !5, i32 50332733, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 1085]
!300 = metadata !{i32 786689, metadata !293, metadata !"z", metadata !5, i32 67109949, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [z] [line 1085]
!301 = metadata !{i32 786689, metadata !293, metadata !"c", metadata !5, i32 83887165, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 1085]
!302 = metadata !{i32 786689, metadata !293, metadata !"lambda", metadata !5, i32 100664382, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lambda] [line 1086]
!303 = metadata !{i32 786689, metadata !293, metadata !"ret_f", metadata !5, i32 117441598, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_f] [line 1086]
!304 = metadata !{i32 786689, metadata !293, metadata !"ret_df", metadata !5, i32 134218814, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_df] [line 1086]
!305 = metadata !{i32 786688, metadata !293, metadata !"esum", metadata !5, i32 1088, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [esum] [line 1088]
!306 = metadata !{i32 786688, metadata !293, metadata !"xesum", metadata !5, i32 1089, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xesum] [line 1089]
!307 = metadata !{i32 786688, metadata !293, metadata !"xxesum", metadata !5, i32 1090, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xxesum] [line 1090]
!308 = metadata !{i32 786688, metadata !293, metadata !"xsum", metadata !5, i32 1091, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [xsum] [line 1091]
!309 = metadata !{i32 786688, metadata !293, metadata !"mult", metadata !5, i32 1092, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mult] [line 1092]
!310 = metadata !{i32 786688, metadata !293, metadata !"total", metadata !5, i32 1093, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [total] [line 1093]
!311 = metadata !{i32 786688, metadata !293, metadata !"i", metadata !5, i32 1094, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1094]
!312 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"EVDMaxLikelyFit", metadata !"EVDMaxLikelyFit", metadata !"", i32 1147, metadata !313, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (float*, i32*, i32, float*, float*)* @EVDMaxLikelyFit, null, null, metadata !315, i32 1148} ; [ DW_TAG_subprogram ] [line 1147] [def] [scope 1148] [EVDMaxLikelyFit]
!313 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !314, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!314 = metadata !{metadata !14, metadata !22, metadata !13, metadata !14, metadata !22, metadata !22}
!315 = metadata !{metadata !316, metadata !317, metadata !318, metadata !319, metadata !320, metadata !321, metadata !322, metadata !323, metadata !324, metadata !325, metadata !326, metadata !327, metadata !328, metadata !329, metadata !330, metadata !332, metadata !333}
!316 = metadata !{i32 786689, metadata !312, metadata !"x", metadata !5, i32 16778363, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 1147]
!317 = metadata !{i32 786689, metadata !312, metadata !"c", metadata !5, i32 33555579, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 1147]
!318 = metadata !{i32 786689, metadata !312, metadata !"n", metadata !5, i32 50332795, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 1147]
!319 = metadata !{i32 786689, metadata !312, metadata !"ret_mu", metadata !5, i32 67110011, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_mu] [line 1147]
!320 = metadata !{i32 786689, metadata !312, metadata !"ret_lambda", metadata !5, i32 83887227, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_lambda] [line 1147]
!321 = metadata !{i32 786688, metadata !312, metadata !"lambda", metadata !5, i32 1149, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lambda] [line 1149]
!322 = metadata !{i32 786688, metadata !312, metadata !"mu", metadata !5, i32 1149, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mu] [line 1149]
!323 = metadata !{i32 786688, metadata !312, metadata !"fx", metadata !5, i32 1150, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fx] [line 1150]
!324 = metadata !{i32 786688, metadata !312, metadata !"dfx", metadata !5, i32 1151, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dfx] [line 1151]
!325 = metadata !{i32 786688, metadata !312, metadata !"esum", metadata !5, i32 1152, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [esum] [line 1152]
!326 = metadata !{i32 786688, metadata !312, metadata !"mult", metadata !5, i32 1153, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mult] [line 1153]
!327 = metadata !{i32 786688, metadata !312, metadata !"total", metadata !5, i32 1154, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [total] [line 1154]
!328 = metadata !{i32 786688, metadata !312, metadata !"tol", metadata !5, i32 1155, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tol] [line 1155]
!329 = metadata !{i32 786688, metadata !312, metadata !"i", metadata !5, i32 1156, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1156]
!330 = metadata !{i32 786688, metadata !331, metadata !"left", metadata !5, i32 1181, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [left] [line 1181]
!331 = metadata !{i32 786443, metadata !1, metadata !312, i32 1180, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!332 = metadata !{i32 786688, metadata !331, metadata !"right", metadata !5, i32 1181, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [right] [line 1181]
!333 = metadata !{i32 786688, metadata !331, metadata !"mid", metadata !5, i32 1181, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mid] [line 1181]
!334 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"EVDCensoredFit", metadata !"EVDCensoredFit", metadata !"", i32 1271, metadata !335, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (float*, i32*, i32, i32, float, float*, float*)* @EVDCensoredFit, null, null, metadata !337, i32 1273} ; [ DW_TAG_subprogram ] [line 1271] [def] [scope 1273] [EVDCensoredFit]
!335 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !336, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!336 = metadata !{metadata !14, metadata !22, metadata !13, metadata !14, metadata !14, metadata !23, metadata !22, metadata !22}
!337 = metadata !{metadata !338, metadata !339, metadata !340, metadata !341, metadata !342, metadata !343, metadata !344, metadata !345, metadata !346, metadata !347, metadata !348, metadata !349, metadata !350, metadata !351, metadata !352, metadata !353, metadata !354, metadata !356, metadata !357}
!338 = metadata !{i32 786689, metadata !334, metadata !"x", metadata !5, i32 16778487, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [x] [line 1271]
!339 = metadata !{i32 786689, metadata !334, metadata !"y", metadata !5, i32 33555703, metadata !13, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [y] [line 1271]
!340 = metadata !{i32 786689, metadata !334, metadata !"n", metadata !5, i32 50332919, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [n] [line 1271]
!341 = metadata !{i32 786689, metadata !334, metadata !"z", metadata !5, i32 67110135, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [z] [line 1271]
!342 = metadata !{i32 786689, metadata !334, metadata !"c", metadata !5, i32 83887351, metadata !23, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [c] [line 1271]
!343 = metadata !{i32 786689, metadata !334, metadata !"ret_mu", metadata !5, i32 100664568, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_mu] [line 1272]
!344 = metadata !{i32 786689, metadata !334, metadata !"ret_lambda", metadata !5, i32 117441784, metadata !22, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ret_lambda] [line 1272]
!345 = metadata !{i32 786688, metadata !334, metadata !"lambda", metadata !5, i32 1274, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lambda] [line 1274]
!346 = metadata !{i32 786688, metadata !334, metadata !"mu", metadata !5, i32 1274, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mu] [line 1274]
!347 = metadata !{i32 786688, metadata !334, metadata !"fx", metadata !5, i32 1275, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fx] [line 1275]
!348 = metadata !{i32 786688, metadata !334, metadata !"dfx", metadata !5, i32 1276, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dfx] [line 1276]
!349 = metadata !{i32 786688, metadata !334, metadata !"esum", metadata !5, i32 1277, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [esum] [line 1277]
!350 = metadata !{i32 786688, metadata !334, metadata !"mult", metadata !5, i32 1278, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mult] [line 1278]
!351 = metadata !{i32 786688, metadata !334, metadata !"total", metadata !5, i32 1279, metadata !141, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [total] [line 1279]
!352 = metadata !{i32 786688, metadata !334, metadata !"tol", metadata !5, i32 1280, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tol] [line 1280]
!353 = metadata !{i32 786688, metadata !334, metadata !"i", metadata !5, i32 1281, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [i] [line 1281]
!354 = metadata !{i32 786688, metadata !355, metadata !"left", metadata !5, i32 1306, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [left] [line 1306]
!355 = metadata !{i32 786443, metadata !1, metadata !334, i32 1305, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!356 = metadata !{i32 786688, metadata !355, metadata !"right", metadata !5, i32 1306, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [right] [line 1306]
!357 = metadata !{i32 786688, metadata !355, metadata !"mid", metadata !5, i32 1306, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [mid] [line 1306]
!358 = metadata !{i32 60, i32 0, metadata !4, null}
!359 = metadata !{i32 66, i32 0, metadata !4, null}
!360 = metadata !{i32 68, i32 0, metadata !4, null}
!361 = metadata !{i32 69, i32 0, metadata !4, null}
!362 = metadata !{metadata !"int", metadata !363}
!363 = metadata !{metadata !"omnipotent char", metadata !364}
!364 = metadata !{metadata !"Simple C/C++ TBAA"}
!365 = metadata !{i32 70, i32 0, metadata !4, null}
!366 = metadata !{i32 71, i32 0, metadata !4, null}
!367 = metadata !{i32 72, i32 0, metadata !4, null}
!368 = metadata !{i32 73, i32 0, metadata !4, null}
!369 = metadata !{i32 74, i32 0, metadata !4, null}
!370 = metadata !{i32 75, i32 0, metadata !4, null}
!371 = metadata !{metadata !"any pointer", metadata !363}
!372 = metadata !{i32 76, i32 0, metadata !373, null}
!373 = metadata !{i32 786443, metadata !1, metadata !4, i32 76, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!374 = metadata !{i32 78, i32 0, metadata !4, null}
!375 = metadata !{i32 79, i32 0, metadata !4, null}
!376 = metadata !{i32 81, i32 0, metadata !4, null}
!377 = metadata !{i32 90, i32 0, metadata !38, null}
!378 = metadata !{i32 92, i32 0, metadata !38, null}
!379 = metadata !{i32 93, i32 0, metadata !38, null}
!380 = metadata !{i32 94, i32 0, metadata !38, null}
!381 = metadata !{i32 95, i32 0, metadata !38, null}
!382 = metadata !{i32 102, i32 0, metadata !43, null}
!383 = metadata !{i32 104, i32 0, metadata !43, null}
!384 = metadata !{i32 105, i32 0, metadata !43, null}
!385 = metadata !{i32 106, i32 0, metadata !43, null}
!386 = metadata !{i32 107, i32 0, metadata !43, null}
!387 = metadata !{i32 118, i32 0, metadata !46, null}
!388 = metadata !{i32 129, i32 0, metadata !46, null}
!389 = metadata !{i32 130, i32 0, metadata !46, null}
!390 = metadata !{i32 137, i32 0, metadata !46, null}
!391 = metadata !{i32 141, i32 0, metadata !46, null}
!392 = metadata !{i32 143, i32 0, metadata !393, null}
!393 = metadata !{i32 786443, metadata !1, metadata !46, i32 142, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!394 = metadata !{i32 144, i32 0, metadata !393, null}
!395 = metadata !{i32 145, i32 0, metadata !393, null}
!396 = metadata !{i32 146, i32 0, metadata !393, null}
!397 = metadata !{i32 148, i32 0, metadata !393, null}
!398 = metadata !{i32 149, i32 0, metadata !393, null}
!399 = metadata !{i32 150, i32 0, metadata !400, null}
!400 = metadata !{i32 786443, metadata !1, metadata !393, i32 150, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!401 = metadata !{i32 151, i32 0, metadata !400, null}
!402 = metadata !{i32 153, i32 0, metadata !46, null}
!403 = metadata !{i32 167, i32 0, metadata !46, null}
!404 = metadata !{i32 155, i32 0, metadata !405, null}
!405 = metadata !{i32 786443, metadata !1, metadata !46, i32 154, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!406 = metadata !{i32 156, i32 0, metadata !405, null}
!407 = metadata !{i32 157, i32 0, metadata !405, null}
!408 = metadata !{i32 159, i32 0, metadata !405, null}
!409 = metadata !{i32 160, i32 0, metadata !410, null}
!410 = metadata !{i32 786443, metadata !1, metadata !405, i32 160, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!411 = metadata !{i32 161, i32 0, metadata !410, null}
!412 = metadata !{i32 168, i32 0, metadata !46, null}
!413 = metadata !{i32 169, i32 0, metadata !46, null}
!414 = metadata !{i32 170, i32 0, metadata !46, null}
!415 = metadata !{i32 174, i32 0, metadata !46, null}
!416 = metadata !{i32 189, i32 0, metadata !57, null}
!417 = metadata !{i32 195, i32 0, metadata !57, null}
!418 = metadata !{i32 3}
!419 = metadata !{i32 199, i32 0, metadata !57, null}
!420 = metadata !{i32 207, i32 0, metadata !57, null}
!421 = metadata !{i32 208, i32 0, metadata !422, null}
!422 = metadata !{i32 786443, metadata !1, metadata !57, i32 208, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!423 = metadata !{i32 209, i32 0, metadata !422, null}
!424 = metadata !{i32 220, i32 0, metadata !425, null}
!425 = metadata !{i32 786443, metadata !1, metadata !57, i32 220, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!426 = metadata !{i32 223, i32 0, metadata !427, null}
!427 = metadata !{i32 786443, metadata !1, metadata !425, i32 221, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!428 = metadata !{i32 211, i32 0, metadata !429, null}
!429 = metadata !{i32 786443, metadata !1, metadata !422, i32 210, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!430 = metadata !{i32 212, i32 0, metadata !429, null}
!431 = metadata !{i32 222, i32 0, metadata !427, null}
!432 = metadata !{i32 224, i32 0, metadata !427, null}
!433 = metadata !{i32 224, i32 0, metadata !434, null}
!434 = metadata !{i32 786443, metadata !1, metadata !427, i32 224, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!435 = metadata !{i32 226, i32 0, metadata !436, null}
!436 = metadata !{i32 786443, metadata !1, metadata !57, i32 226, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!437 = metadata !{i32 229, i32 0, metadata !438, null}
!438 = metadata !{i32 786443, metadata !1, metadata !436, i32 227, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!439 = metadata !{i32 228, i32 0, metadata !438, null}
!440 = metadata !{i32 230, i32 0, metadata !438, null}
!441 = metadata !{i32 230, i32 0, metadata !442, null}
!442 = metadata !{i32 786443, metadata !1, metadata !438, i32 230, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!443 = metadata !{i32 233, i32 0, metadata !444, null}
!444 = metadata !{i32 786443, metadata !1, metadata !57, i32 233, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!445 = metadata !{i32 234, i32 0, metadata !444, null}
!446 = metadata !{i32 235, i32 0, metadata !447, null}
!447 = metadata !{i32 786443, metadata !1, metadata !57, i32 235, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!448 = metadata !{i32 236, i32 0, metadata !447, null}
!449 = metadata !{i32 239, i32 0, metadata !57, null}
!450 = metadata !{i32 240, i32 0, metadata !57, null}
!451 = metadata !{i32 241, i32 0, metadata !57, null}
!452 = metadata !{i32 246, i32 0, metadata !57, null}
!453 = metadata !{i32 248, i32 0, metadata !57, null}
!454 = metadata !{i32 249, i32 0, metadata !57, null}
!455 = metadata !{i32 250, i32 0, metadata !57, null}
!456 = metadata !{i32 251, i32 0, metadata !457, null}
!457 = metadata !{i32 786443, metadata !1, metadata !57, i32 251, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!458 = metadata !{i32 314, i32 0, metadata !57, null}
!459 = metadata !{i32 263, i32 0, metadata !460, null}
!460 = metadata !{i32 786443, metadata !1, metadata !461, i32 261, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!461 = metadata !{i32 786443, metadata !1, metadata !457, i32 252, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!462 = metadata !{i32 264, i32 0, metadata !463, null}
!463 = metadata !{i32 786443, metadata !1, metadata !460, i32 263, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!464 = metadata !{i32 274, i32 0, metadata !465, null}
!465 = metadata !{i32 786443, metadata !1, metadata !461, i32 272, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!466 = metadata !{i32 275, i32 0, metadata !467, null}
!467 = metadata !{i32 786443, metadata !1, metadata !465, i32 274, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!468 = metadata !{i32 284, i32 0, metadata !461, null}
!469 = metadata !{i32 285, i32 0, metadata !461, null}
!470 = metadata !{i32 289, i32 0, metadata !461, null}
!471 = metadata !{i32 300, i32 0, metadata !461, null}
!472 = metadata !{i32 253, i32 0, metadata !461, null}
!473 = metadata !{i32 254, i32 0, metadata !461, null}
!474 = metadata !{i32 258, i32 0, metadata !461, null}
!475 = metadata !{i32 259, i32 0, metadata !461, null}
!476 = metadata !{i32 260, i32 0, metadata !461, null}
!477 = metadata !{i32 262, i32 0, metadata !460, null}
!478 = metadata !{i32 265, i32 0, metadata !463, null}
!479 = metadata !{i32 266, i32 0, metadata !480, null}
!480 = metadata !{i32 786443, metadata !1, metadata !463, i32 266, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!481 = metadata !{i32 268, i32 0, metadata !460, null}
!482 = metadata !{i32 269, i32 0, metadata !460, null}
!483 = metadata !{i32 271, i32 0, metadata !461, null}
!484 = metadata !{i32 273, i32 0, metadata !465, null}
!485 = metadata !{i32 20}
!486 = metadata !{i32 276, i32 0, metadata !487, null}
!487 = metadata !{i32 786443, metadata !1, metadata !467, i32 276, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!488 = metadata !{i32 278, i32 0, metadata !465, null}
!489 = metadata !{i32 279, i32 0, metadata !465, null}
!490 = metadata !{metadata !"float", metadata !363}
!491 = metadata !{i32 288, i32 0, metadata !461, null}
!492 = metadata !{i32 293, i32 0, metadata !461, null}
!493 = metadata !{i32 294, i32 0, metadata !494, null}
!494 = metadata !{i32 786443, metadata !1, metadata !461, i32 293, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!495 = metadata !{i32 295, i32 0, metadata !496, null}
!496 = metadata !{i32 786443, metadata !1, metadata !494, i32 295, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!497 = metadata !{i32 302, i32 0, metadata !498, null}
!498 = metadata !{i32 786443, metadata !1, metadata !461, i32 301, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!499 = metadata !{i32 303, i32 0, metadata !498, null}
!500 = metadata !{i32 304, i32 0, metadata !498, null}
!501 = metadata !{i32 305, i32 0, metadata !498, null}
!502 = metadata !{i32 309, i32 0, metadata !461, null}
!503 = metadata !{i32 310, i32 0, metadata !461, null}
!504 = metadata !{i32 316, i32 0, metadata !505, null}
!505 = metadata !{i32 786443, metadata !1, metadata !57, i32 314, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!506 = metadata !{i32 317, i32 0, metadata !505, null}
!507 = metadata !{i32 320, i32 0, metadata !505, null}
!508 = metadata !{i32 321, i32 0, metadata !505, null}
!509 = metadata !{i32 322, i32 0, metadata !505, null}
!510 = metadata !{i32 323, i32 0, metadata !505, null}
!511 = metadata !{i32 324, i32 0, metadata !505, null}
!512 = metadata !{i32 325, i32 0, metadata !505, null}
!513 = metadata !{i32 328, i32 0, metadata !505, null}
!514 = metadata !{i32 329, i32 0, metadata !505, null}
!515 = metadata !{i32 330, i32 0, metadata !505, null}
!516 = metadata !{i32 331, i32 0, metadata !505, null}
!517 = metadata !{i32 332, i32 0, metadata !505, null}
!518 = metadata !{i32 333, i32 0, metadata !505, null}
!519 = metadata !{i32 335, i32 0, metadata !57, null}
!520 = metadata !{i32 336, i32 0, metadata !57, null}
!521 = metadata !{i32 348, i32 0, metadata !135, null}
!522 = metadata !{i32 355, i32 0, metadata !523, null}
!523 = metadata !{i32 786443, metadata !1, metadata !135, i32 355, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!524 = metadata !{i32 356, i32 0, metadata !523, null}
!525 = metadata !{i32 357, i32 0, metadata !523, null}
!526 = metadata !{i32 359, i32 0, metadata !135, null}
!527 = metadata !{i32 363, i32 0, metadata !135, null}
!528 = metadata !{i32 365, i32 0, metadata !529, null}
!529 = metadata !{i32 786443, metadata !1, metadata !530, i32 365, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!530 = metadata !{i32 786443, metadata !1, metadata !135, i32 364, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!531 = metadata !{i32 368, i32 0, metadata !532, null}
!532 = metadata !{i32 786443, metadata !1, metadata !529, i32 366, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!533 = metadata !{i32 369, i32 0, metadata !532, null}
!534 = metadata !{i32 370, i32 0, metadata !532, null}
!535 = metadata !{i32 372, i32 0, metadata !530, null}
!536 = metadata !{i32 373, i32 0, metadata !530, null}
!537 = metadata !{i32 374, i32 0, metadata !135, null}
!538 = metadata !{i32 928, i32 0, metadata !248, null}
!539 = metadata !{i32 933, i32 0, metadata !248, null}
!540 = metadata !{i32 935, i32 0, metadata !248, null}
!541 = metadata !{i32 937, i32 0, metadata !248, null}
!542 = metadata !{i32 938, i32 0, metadata !248, null}
!543 = metadata !{i32 939, i32 0, metadata !248, null}
!544 = metadata !{i32 940, i32 0, metadata !248, null}
!545 = metadata !{i32 384, i32 0, metadata !142, null}
!546 = metadata !{i32 394, i32 0, metadata !547, null}
!547 = metadata !{i32 786443, metadata !1, metadata !142, i32 394, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!548 = metadata !{i32 396, i32 0, metadata !549, null}
!549 = metadata !{i32 786443, metadata !1, metadata !547, i32 395, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!550 = metadata !{i32 397, i32 0, metadata !549, null}
!551 = metadata !{i32 399, i32 0, metadata !142, null}
!552 = metadata !{i32 403, i32 0, metadata !142, null}
!553 = metadata !{i32 405, i32 0, metadata !554, null}
!554 = metadata !{i32 786443, metadata !1, metadata !555, i32 405, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!555 = metadata !{i32 786443, metadata !1, metadata !142, i32 404, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!556 = metadata !{i32 407, i32 0, metadata !557, null}
!557 = metadata !{i32 786443, metadata !1, metadata !554, i32 406, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!558 = metadata !{i32 409, i32 0, metadata !557, null}
!559 = metadata !{i32 411, i32 0, metadata !555, null}
!560 = metadata !{i32 412, i32 0, metadata !555, null}
!561 = metadata !{i32 413, i32 0, metadata !142, null}
!562 = metadata !{i32 423, i32 0, metadata !149, null}
!563 = metadata !{i32 433, i32 0, metadata !564, null}
!564 = metadata !{i32 786443, metadata !1, metadata !149, i32 433, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!565 = metadata !{i32 435, i32 0, metadata !566, null}
!566 = metadata !{i32 786443, metadata !1, metadata !564, i32 434, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!567 = metadata !{i32 436, i32 0, metadata !566, null}
!568 = metadata !{i32 437, i32 0, metadata !566, null}
!569 = metadata !{i32 438, i32 0, metadata !566, null}
!570 = metadata !{i32 440, i32 0, metadata !149, null}
!571 = metadata !{i32 444, i32 0, metadata !149, null}
!572 = metadata !{i32 446, i32 0, metadata !573, null}
!573 = metadata !{i32 786443, metadata !1, metadata !574, i32 446, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!574 = metadata !{i32 786443, metadata !1, metadata !149, i32 445, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!575 = metadata !{i32 448, i32 0, metadata !576, null}
!576 = metadata !{i32 786443, metadata !1, metadata !573, i32 447, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!577 = metadata !{i32 450, i32 0, metadata !576, null}
!578 = metadata !{i32 452, i32 0, metadata !574, null}
!579 = metadata !{i32 453, i32 0, metadata !574, null}
!580 = metadata !{i32 454, i32 0, metadata !149, null}
!581 = metadata !{i32 476, i32 0, metadata !156, null}
!582 = metadata !{i32 483, i32 0, metadata !156, null}
!583 = metadata !{i32 484, i32 0, metadata !156, null}
!584 = metadata !{i32 491, i32 0, metadata !156, null}
!585 = metadata !{i32 492, i32 0, metadata !156, null}
!586 = metadata !{i32 493, i32 0, metadata !156, null}
!587 = metadata !{i32 494, i32 0, metadata !588, null}
!588 = metadata !{i32 786443, metadata !1, metadata !156, i32 494, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!589 = metadata !{i32 495, i32 0, metadata !588, null}
!590 = metadata !{i32 501, i32 0, metadata !156, null}
!591 = metadata !{i32 502, i32 0, metadata !592, null}
!592 = metadata !{i32 786443, metadata !1, metadata !156, i32 502, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!593 = metadata !{i32 504, i32 0, metadata !594, null}
!594 = metadata !{i32 786443, metadata !1, metadata !592, i32 503, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!595 = metadata !{i32 505, i32 0, metadata !594, null}
!596 = metadata !{i32 506, i32 0, metadata !594, null}
!597 = metadata !{i32 514, i32 0, metadata !598, null}
!598 = metadata !{i32 786443, metadata !1, metadata !156, i32 514, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!599 = metadata !{i32 515, i32 0, metadata !598, null}
!600 = metadata !{i32 518, i32 0, metadata !156, null}
!601 = metadata !{i32 520, i32 0, metadata !156, null}
!602 = metadata !{i32 521, i32 0, metadata !156, null}
!603 = metadata !{i32 526, i32 0, metadata !156, null}
!604 = metadata !{i32 528, i32 0, metadata !156, null}
!605 = metadata !{i32 529, i32 0, metadata !156, null}
!606 = metadata !{i32 530, i32 0, metadata !156, null}
!607 = metadata !{i32 682, i32 0, metadata !196, null}
!608 = metadata !{i32 683, i32 0, metadata !196, null}
!609 = metadata !{i32 786689, metadata !43, metadata !"h", metadata !5, i32 16777318, metadata !8, i32 0, metadata !610} ; [ DW_TAG_arg_variable ] [h] [line 102]
!610 = metadata !{i32 690, i32 0, metadata !196, null}
!611 = metadata !{i32 102, i32 0, metadata !43, metadata !610}
!612 = metadata !{i32 104, i32 0, metadata !43, metadata !610}
!613 = metadata !{i32 105, i32 0, metadata !43, metadata !610}
!614 = metadata !{i32 106, i32 0, metadata !43, metadata !610}
!615 = metadata !{i32 691, i32 0, metadata !196, null}
!616 = metadata !{i32 692, i32 0, metadata !196, null}
!617 = metadata !{i32 693, i32 0, metadata !196, null}
!618 = metadata !{i32 695, i32 0, metadata !196, null}
!619 = metadata !{i32 696, i32 0, metadata !196, null}
!620 = metadata !{i32 697, i32 0, metadata !621, null}
!621 = metadata !{i32 786443, metadata !1, metadata !196, i32 697, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!622 = metadata !{i32 698, i32 0, metadata !621, null}
!623 = metadata !{i32 702, i32 0, metadata !624, null}
!624 = metadata !{i32 786443, metadata !1, metadata !196, i32 702, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!625 = metadata !{i32 704, i32 0, metadata !624, null}
!626 = metadata !{i32 786689, metadata !263, metadata !"x", metadata !5, i32 16778194, metadata !23, i32 0, metadata !625} ; [ DW_TAG_arg_variable ] [x] [line 978]
!627 = metadata !{i32 978, i32 0, metadata !263, metadata !625}
!628 = metadata !{i32 786689, metadata !263, metadata !"mu", metadata !5, i32 33555410, metadata !23, i32 0, metadata !625} ; [ DW_TAG_arg_variable ] [mu] [line 978]
!629 = metadata !{i32 786689, metadata !263, metadata !"lambda", metadata !5, i32 50332626, metadata !23, i32 0, metadata !625} ; [ DW_TAG_arg_variable ] [lambda] [line 978]
!630 = metadata !{i32 786689, metadata !263, metadata !"N", metadata !5, i32 67109842, metadata !14, i32 0, metadata !625} ; [ DW_TAG_arg_variable ] [N] [line 978]
!631 = metadata !{i32 980, i32 0, metadata !263, metadata !625}
!632 = metadata !{i32 706, i32 0, metadata !624, null}
!633 = metadata !{i32 786689, metadata !263, metadata !"x", metadata !5, i32 16778194, metadata !23, i32 0, metadata !632} ; [ DW_TAG_arg_variable ] [x] [line 978]
!634 = metadata !{i32 978, i32 0, metadata !263, metadata !632}
!635 = metadata !{i32 786689, metadata !263, metadata !"mu", metadata !5, i32 33555410, metadata !23, i32 0, metadata !632} ; [ DW_TAG_arg_variable ] [mu] [line 978]
!636 = metadata !{i32 786689, metadata !263, metadata !"lambda", metadata !5, i32 50332626, metadata !23, i32 0, metadata !632} ; [ DW_TAG_arg_variable ] [lambda] [line 978]
!637 = metadata !{i32 786689, metadata !263, metadata !"N", metadata !5, i32 67109842, metadata !14, i32 0, metadata !632} ; [ DW_TAG_arg_variable ] [N] [line 978]
!638 = metadata !{i32 980, i32 0, metadata !263, metadata !632}
!639 = metadata !{i32 711, i32 0, metadata !196, null}
!640 = metadata !{i32 712, i32 0, metadata !196, null}
!641 = metadata !{i32 713, i32 0, metadata !642, null}
!642 = metadata !{i32 786443, metadata !1, metadata !196, i32 713, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!643 = metadata !{i32 714, i32 0, metadata !642, null}
!644 = metadata !{i32 716, i32 0, metadata !645, null}
!645 = metadata !{i32 786443, metadata !1, metadata !642, i32 715, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!646 = metadata !{i32 717, i32 0, metadata !645, null}
!647 = metadata !{i32 718, i32 0, metadata !645, null}
!648 = metadata !{i32 719, i32 0, metadata !645, null}
!649 = metadata !{i32 724, i32 0, metadata !196, null}
!650 = metadata !{i32 725, i32 0, metadata !196, null}
!651 = metadata !{i32 728, i32 0, metadata !196, null}
!652 = metadata !{i32 729, i32 0, metadata !196, null}
!653 = metadata !{i32 555, i32 0, metadata !170, null}
!654 = metadata !{i32 562, i32 0, metadata !170, null}
!655 = metadata !{i32 573, i32 0, metadata !170, null}
!656 = metadata !{i32 574, i32 0, metadata !170, null}
!657 = metadata !{i32 577, i32 0, metadata !658, null}
!658 = metadata !{i32 786443, metadata !1, metadata !190, i32 577, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!659 = metadata !{i32 578, i32 0, metadata !658, null}
!660 = metadata !{i32 580, i32 0, metadata !661, null}
!661 = metadata !{i32 786443, metadata !1, metadata !658, i32 579, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!662 = metadata !{i32 undef}
!663 = metadata !{i32 581, i32 0, metadata !661, null}
!664 = metadata !{i32 587, i32 0, metadata !170, null}
!665 = metadata !{i32 591, i32 0, metadata !195, null}
!666 = metadata !{i32 621, i32 0, metadata !193, null}
!667 = metadata !{i32 633, i32 0, metadata !668, null}
!668 = metadata !{i32 786443, metadata !1, metadata !194, i32 632, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!669 = metadata !{i32 606, i32 0, metadata !670, null}
!670 = metadata !{i32 786443, metadata !1, metadata !671, i32 604, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!671 = metadata !{i32 786443, metadata !1, metadata !194, i32 603, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!672 = metadata !{float* null}
!673 = metadata !{i32 595, i32 0, metadata !194, null}
!674 = metadata !{i32* null}
!675 = metadata !{i32 596, i32 0, metadata !194, null}
!676 = metadata !{i32 597, i32 0, metadata !194, null}
!677 = metadata !{i32 598, i32 0, metadata !194, null}
!678 = metadata !{i32 600, i32 0, metadata !194, null}
!679 = metadata !{i32 601, i32 0, metadata !194, null}
!680 = metadata !{i32 602, i32 0, metadata !194, null}
!681 = metadata !{i32 603, i32 0, metadata !671, null}
!682 = metadata !{i32 605, i32 0, metadata !670, null}
!683 = metadata !{i32 607, i32 0, metadata !670, null}
!684 = metadata !{i32 610, i32 0, metadata !194, null}
!685 = metadata !{i32 618, i32 0, metadata !194, null}
!686 = metadata !{i32 620, i32 0, metadata !193, null}
!687 = metadata !{i32 625, i32 0, metadata !192, null}
!688 = metadata !{i32 786689, metadata !243, metadata !"x", metadata !5, i32 16778121, metadata !23, i32 0, metadata !687} ; [ DW_TAG_arg_variable ] [x] [line 905]
!689 = metadata !{i32 905, i32 0, metadata !243, metadata !687}
!690 = metadata !{i32 786689, metadata !243, metadata !"mu", metadata !5, i32 33555337, metadata !23, i32 0, metadata !687} ; [ DW_TAG_arg_variable ] [mu] [line 905]
!691 = metadata !{i32 786689, metadata !243, metadata !"lambda", metadata !5, i32 50332553, metadata !23, i32 0, metadata !687} ; [ DW_TAG_arg_variable ] [lambda] [line 905]
!692 = metadata !{i32 907, i32 0, metadata !243, metadata !687}
!693 = metadata !{i32 626, i32 0, metadata !192, null}
!694 = metadata !{i32 632, i32 0, metadata !194, null}
!695 = metadata !{i32 636, i32 0, metadata !194, null}
!696 = metadata !{i32 642, i32 0, metadata !194, null}
!697 = metadata !{i32 643, i32 0, metadata !194, null}
!698 = metadata !{i32 645, i32 0, metadata !194, null}
!699 = metadata !{i32 646, i32 0, metadata !194, null}
!700 = metadata !{i32 647, i32 0, metadata !194, null}
!701 = metadata !{i32 648, i32 0, metadata !194, null}
!702 = metadata !{i32 656, i32 0, metadata !170, null}
!703 = metadata !{i32 657, i32 0, metadata !170, null}
!704 = metadata !{i32 786689, metadata !43, metadata !"h", metadata !5, i32 16777318, metadata !8, i32 0, metadata !705} ; [ DW_TAG_arg_variable ] [h] [line 102]
!705 = metadata !{i32 660, i32 0, metadata !170, null}
!706 = metadata !{i32 102, i32 0, metadata !43, metadata !705}
!707 = metadata !{i32 104, i32 0, metadata !43, metadata !705}
!708 = metadata !{i32 105, i32 0, metadata !43, metadata !705}
!709 = metadata !{i32 106, i32 0, metadata !43, metadata !705}
!710 = metadata !{i32 661, i32 0, metadata !170, null}
!711 = metadata !{i32 662, i32 0, metadata !170, null}
!712 = metadata !{i32 663, i32 0, metadata !170, null}
!713 = metadata !{i32 905, i32 0, metadata !243, null}
!714 = metadata !{i32 907, i32 0, metadata !243, null}
!715 = metadata !{i32 1271, i32 0, metadata !334, null}
!716 = metadata !{i32 1272, i32 0, metadata !334, null}
!717 = metadata !{i32 1275, i32 0, metadata !334, null}
!718 = metadata !{i32 1276, i32 0, metadata !334, null}
!719 = metadata !{float 0x3EE4F8B580000000}
!720 = metadata !{i32 1280, i32 0, metadata !334, null}
!721 = metadata !{float 0x3FC99999A0000000}
!722 = metadata !{i32 1285, i32 0, metadata !334, null}
!723 = metadata !{i32 1289, i32 0, metadata !724, null}
!724 = metadata !{i32 786443, metadata !1, metadata !334, i32 1289, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!725 = metadata !{i32 1291, i32 0, metadata !726, null}
!726 = metadata !{i32 786443, metadata !1, metadata !724, i32 1290, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!727 = metadata !{i32 1292, i32 0, metadata !726, null}
!728 = metadata !{i32 1293, i32 0, metadata !726, null}
!729 = metadata !{i32 1294, i32 0, metadata !726, null}
!730 = metadata !{float 0x3F50624DE0000000}
!731 = metadata !{i32 1304, i32 0, metadata !334, null}
!732 = metadata !{i32 1309, i32 0, metadata !355, null}
!733 = metadata !{i32 1310, i32 0, metadata !355, null}
!734 = metadata !{i32 1311, i32 0, metadata !355, null}
!735 = metadata !{i32 1314, i32 0, metadata !736, null}
!736 = metadata !{i32 786443, metadata !1, metadata !737, i32 1313, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!737 = metadata !{i32 786443, metadata !1, metadata !355, i32 1312, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!738 = metadata !{i32 1315, i32 0, metadata !736, null}
!739 = metadata !{i32 1319, i32 0, metadata !736, null}
!740 = metadata !{i32 1320, i32 0, metadata !736, null}
!741 = metadata !{i32 1325, i32 0, metadata !742, null}
!742 = metadata !{i32 786443, metadata !1, metadata !743, i32 1324, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!743 = metadata !{i32 786443, metadata !1, metadata !355, i32 1323, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!744 = metadata !{i32 1326, i32 0, metadata !742, null}
!745 = metadata !{i32 1327, i32 0, metadata !742, null}
!746 = metadata !{i32 1331, i32 0, metadata !742, null}
!747 = metadata !{i32 1336, i32 0, metadata !748, null}
!748 = metadata !{i32 786443, metadata !1, metadata !749, i32 1335, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!749 = metadata !{i32 786443, metadata !1, metadata !355, i32 1334, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!750 = metadata !{i32 1337, i32 0, metadata !748, null}
!751 = metadata !{i32 1338, i32 0, metadata !748, null}
!752 = metadata !{i32 1339, i32 0, metadata !748, null}
!753 = metadata !{i32 1334, i32 0, metadata !749, null}
!754 = metadata !{i32 1342, i32 0, metadata !355, null}
!755 = metadata !{double 0.000000e+00}
!756 = metadata !{i32 1351, i32 0, metadata !334, null}
!757 = metadata !{i32 1352, i32 0, metadata !758, null}
!758 = metadata !{i32 786443, metadata !1, metadata !334, i32 1352, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!759 = metadata !{i32 1358, i32 0, metadata !334, null}
!760 = metadata !{i32 1354, i32 0, metadata !761, null}
!761 = metadata !{i32 786443, metadata !1, metadata !758, i32 1353, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!762 = metadata !{i32 1355, i32 0, metadata !761, null}
!763 = metadata !{i32 1356, i32 0, metadata !761, null}
!764 = metadata !{i32 1359, i32 0, metadata !334, null}
!765 = metadata !{i32 1361, i32 0, metadata !334, null}
!766 = metadata !{i32 1362, i32 0, metadata !334, null}
!767 = metadata !{i32 1363, i32 0, metadata !334, null}
!768 = metadata !{i32 1147, i32 0, metadata !312, null}
!769 = metadata !{i32 1150, i32 0, metadata !312, null}
!770 = metadata !{i32 1151, i32 0, metadata !312, null}
!771 = metadata !{i32 1155, i32 0, metadata !312, null}
!772 = metadata !{i32 1160, i32 0, metadata !312, null}
!773 = metadata !{i32 1164, i32 0, metadata !774, null}
!774 = metadata !{i32 786443, metadata !1, metadata !312, i32 1164, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!775 = metadata !{i32 1166, i32 0, metadata !776, null}
!776 = metadata !{i32 786443, metadata !1, metadata !774, i32 1165, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!777 = metadata !{i32 1167, i32 0, metadata !776, null}
!778 = metadata !{i32 1168, i32 0, metadata !776, null}
!779 = metadata !{i32 1169, i32 0, metadata !776, null}
!780 = metadata !{i32 1179, i32 0, metadata !312, null}
!781 = metadata !{i32 1185, i32 0, metadata !331, null}
!782 = metadata !{i32 1186, i32 0, metadata !331, null}
!783 = metadata !{i32 1187, i32 0, metadata !331, null}
!784 = metadata !{i32 1190, i32 0, metadata !785, null}
!785 = metadata !{i32 786443, metadata !1, metadata !786, i32 1189, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!786 = metadata !{i32 786443, metadata !1, metadata !331, i32 1188, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!787 = metadata !{i32 1191, i32 0, metadata !785, null}
!788 = metadata !{i32 1195, i32 0, metadata !785, null}
!789 = metadata !{i32 1196, i32 0, metadata !785, null}
!790 = metadata !{i32 1201, i32 0, metadata !791, null}
!791 = metadata !{i32 786443, metadata !1, metadata !792, i32 1200, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!792 = metadata !{i32 786443, metadata !1, metadata !331, i32 1199, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!793 = metadata !{i32 1202, i32 0, metadata !791, null}
!794 = metadata !{i32 1203, i32 0, metadata !791, null}
!795 = metadata !{i32 1207, i32 0, metadata !791, null}
!796 = metadata !{i32 1212, i32 0, metadata !797, null}
!797 = metadata !{i32 786443, metadata !1, metadata !798, i32 1211, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!798 = metadata !{i32 786443, metadata !1, metadata !331, i32 1210, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!799 = metadata !{i32 1213, i32 0, metadata !797, null}
!800 = metadata !{i32 1214, i32 0, metadata !797, null}
!801 = metadata !{i32 1215, i32 0, metadata !797, null}
!802 = metadata !{i32 1210, i32 0, metadata !798, null}
!803 = metadata !{i32 1218, i32 0, metadata !331, null}
!804 = metadata !{i32 1227, i32 0, metadata !312, null}
!805 = metadata !{i32 1228, i32 0, metadata !312, null}
!806 = metadata !{i32 1229, i32 0, metadata !807, null}
!807 = metadata !{i32 786443, metadata !1, metadata !312, i32 1229, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!808 = metadata !{i32 1231, i32 0, metadata !809, null}
!809 = metadata !{i32 786443, metadata !1, metadata !807, i32 1230, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!810 = metadata !{i32 1232, i32 0, metadata !809, null}
!811 = metadata !{i32 1233, i32 0, metadata !809, null}
!812 = metadata !{i32 1235, i32 0, metadata !312, null}
!813 = metadata !{i32 1237, i32 0, metadata !312, null}
!814 = metadata !{i32 1238, i32 0, metadata !312, null}
!815 = metadata !{i32 1239, i32 0, metadata !312, null}
!816 = metadata !{i32 978, i32 0, metadata !263, null}
!817 = metadata !{i32 980, i32 0, metadata !263, null}
!818 = metadata !{i32 747, i32 0, metadata !211, null}
!819 = metadata !{i32 786689, metadata !43, metadata !"h", metadata !5, i32 16777318, metadata !8, i32 0, metadata !820} ; [ DW_TAG_arg_variable ] [h] [line 102]
!820 = metadata !{i32 758, i32 0, metadata !211, null}
!821 = metadata !{i32 102, i32 0, metadata !43, metadata !820}
!822 = metadata !{i32 104, i32 0, metadata !43, metadata !820}
!823 = metadata !{i32 105, i32 0, metadata !43, metadata !820}
!824 = metadata !{i32 106, i32 0, metadata !43, metadata !820}
!825 = metadata !{i32 763, i32 0, metadata !211, null}
!826 = metadata !{i32 763, i32 0, metadata !827, null}
!827 = metadata !{i32 786443, metadata !1, metadata !211, i32 763, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!828 = metadata !{float 0.000000e+00}
!829 = metadata !{i32 772, i32 0, metadata !211, null}
!830 = metadata !{i32 773, i32 0, metadata !831, null}
!831 = metadata !{i32 786443, metadata !1, metadata !211, i32 773, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!832 = metadata !{i32 789, i32 0, metadata !211, null}
!833 = metadata !{i32 776, i32 0, metadata !834, null}
!834 = metadata !{i32 786443, metadata !1, metadata !831, i32 774, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!835 = metadata !{i32 775, i32 0, metadata !834, null}
!836 = metadata !{i32 777, i32 0, metadata !834, null}
!837 = metadata !{i32 779, i32 0, metadata !211, null}
!838 = metadata !{i32 780, i32 0, metadata !211, null}
!839 = metadata !{i32 781, i32 0, metadata !211, null}
!840 = metadata !{i32 790, i32 0, metadata !211, null}
!841 = metadata !{i32 791, i32 0, metadata !842, null}
!842 = metadata !{i32 786443, metadata !1, metadata !211, i32 791, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!843 = metadata !{i32 792, i32 0, metadata !842, null}
!844 = metadata !{i32 794, i32 0, metadata !845, null}
!845 = metadata !{i32 786443, metadata !1, metadata !211, i32 794, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!846 = metadata !{i32 796, i32 0, metadata !847, null}
!847 = metadata !{i32 786443, metadata !1, metadata !845, i32 795, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!848 = metadata !{i32 797, i32 0, metadata !847, null}
!849 = metadata !{i32 798, i32 0, metadata !847, null}
!850 = metadata !{i32 799, i32 0, metadata !847, null}
!851 = metadata !{i32 804, i32 0, metadata !211, null}
!852 = metadata !{i32 805, i32 0, metadata !211, null}
!853 = metadata !{i32 806, i32 0, metadata !854, null}
!854 = metadata !{i32 786443, metadata !1, metadata !211, i32 806, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!855 = metadata !{i32 807, i32 0, metadata !854, null}
!856 = metadata !{i32 809, i32 0, metadata !857, null}
!857 = metadata !{i32 786443, metadata !1, metadata !854, i32 808, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!858 = metadata !{i32 810, i32 0, metadata !857, null}
!859 = metadata !{i32 811, i32 0, metadata !857, null}
!860 = metadata !{i32 812, i32 0, metadata !857, null}
!861 = metadata !{i32 814, i32 0, metadata !211, null}
!862 = metadata !{i32 815, i32 0, metadata !211, null}
!863 = metadata !{i32 818, i32 0, metadata !211, null}
!864 = metadata !{i32 820, i32 0, metadata !211, null}
!865 = metadata !{i32 830, i32 0, metadata !224, null}
!866 = metadata !{i32 786689, metadata !43, metadata !"h", metadata !5, i32 16777318, metadata !8, i32 0, metadata !867} ; [ DW_TAG_arg_variable ] [h] [line 102]
!867 = metadata !{i32 837, i32 0, metadata !224, null}
!868 = metadata !{i32 102, i32 0, metadata !43, metadata !867}
!869 = metadata !{i32 104, i32 0, metadata !43, metadata !867}
!870 = metadata !{i32 105, i32 0, metadata !43, metadata !867}
!871 = metadata !{i32 106, i32 0, metadata !43, metadata !867}
!872 = metadata !{i32 838, i32 0, metadata !224, null}
!873 = metadata !{i32 839, i32 0, metadata !224, null}
!874 = metadata !{i32 840, i32 0, metadata !224, null}
!875 = metadata !{i32 844, i32 0, metadata !224, null}
!876 = metadata !{i32 845, i32 0, metadata !224, null}
!877 = metadata !{i32 846, i32 0, metadata !878, null}
!878 = metadata !{i32 786443, metadata !1, metadata !224, i32 846, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!879 = metadata !{i32 847, i32 0, metadata !878, null}
!880 = metadata !{i32 854, i32 0, metadata !881, null}
!881 = metadata !{i32 786443, metadata !1, metadata !224, i32 854, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!882 = metadata !{i32 857, i32 0, metadata !883, null}
!883 = metadata !{i32 786443, metadata !1, metadata !881, i32 855, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!884 = metadata !{i32 856, i32 0, metadata !883, null}
!885 = metadata !{i32 858, i32 0, metadata !883, null}
!886 = metadata !{i32 859, i32 0, metadata !883, null}
!887 = metadata !{i32 864, i32 0, metadata !224, null}
!888 = metadata !{i32 865, i32 0, metadata !224, null}
!889 = metadata !{i32 866, i32 0, metadata !890, null}
!890 = metadata !{i32 786443, metadata !1, metadata !224, i32 866, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!891 = metadata !{i32 867, i32 0, metadata !890, null}
!892 = metadata !{i32 869, i32 0, metadata !893, null}
!893 = metadata !{i32 786443, metadata !1, metadata !890, i32 868, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!894 = metadata !{i32 870, i32 0, metadata !893, null}
!895 = metadata !{i32 871, i32 0, metadata !893, null}
!896 = metadata !{i32 872, i32 0, metadata !893, null}
!897 = metadata !{i32 874, i32 0, metadata !224, null}
!898 = metadata !{i32 875, i32 0, metadata !224, null}
!899 = metadata !{i32 878, i32 0, metadata !224, null}
!900 = metadata !{i32 879, i32 0, metadata !224, null}
!901 = metadata !{i32 891, i32 0, metadata !236, null}
!902 = metadata !{i32 893, i32 0, metadata !236, null}
!903 = metadata !{i32 894, i32 0, metadata !236, null}
!904 = metadata !{i32 957, i32 0, metadata !254, null}
!905 = metadata !{i32 960, i32 0, metadata !254, null}
!906 = metadata !{i32 961, i32 0, metadata !254, null}
!907 = metadata !{i32 962, i32 0, metadata !254, null}
!908 = metadata !{i32 963, i32 0, metadata !254, null}
!909 = metadata !{i32 993, i32 0, metadata !269, null}
!910 = metadata !{i32 995, i32 0, metadata !269, null}
!911 = metadata !{i32 1000, i32 0, metadata !269, null}
!912 = metadata !{i32 1001, i32 0, metadata !269, null}
!913 = metadata !{i32 1028, i32 0, metadata !276, null}
!914 = metadata !{i32 1040, i32 0, metadata !276, null}
!915 = metadata !{i32 1041, i32 0, metadata !916, null}
!916 = metadata !{i32 786443, metadata !1, metadata !276, i32 1041, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!917 = metadata !{i32 1050, i32 0, metadata !276, null}
!918 = metadata !{i32 1043, i32 0, metadata !919, null}
!919 = metadata !{i32 786443, metadata !1, metadata !916, i32 1042, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!920 = metadata !{i32 1045, i32 0, metadata !919, null}
!921 = metadata !{i32 1044, i32 0, metadata !919, null}
!922 = metadata !{i32 1046, i32 0, metadata !919, null}
!923 = metadata !{i32 1047, i32 0, metadata !919, null}
!924 = metadata !{i32 1048, i32 0, metadata !919, null}
!925 = metadata !{i32 1051, i32 0, metadata !276, null}
!926 = metadata !{i32 1055, i32 0, metadata !276, null}
!927 = metadata !{i32 1085, i32 0, metadata !293, null}
!928 = metadata !{i32 1086, i32 0, metadata !293, null}
!929 = metadata !{i32 1096, i32 0, metadata !293, null}
!930 = metadata !{i32 1097, i32 0, metadata !931, null}
!931 = metadata !{i32 786443, metadata !1, metadata !293, i32 1097, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!932 = metadata !{i32 1109, i32 0, metadata !293, null}
!933 = metadata !{i32 1099, i32 0, metadata !934, null}
!934 = metadata !{i32 786443, metadata !1, metadata !931, i32 1098, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/456.hmmer/src/histogram.c]
!935 = metadata !{i32 1101, i32 0, metadata !934, null}
!936 = metadata !{i32 1100, i32 0, metadata !934, null}
!937 = metadata !{i32 1102, i32 0, metadata !934, null}
!938 = metadata !{i32 1103, i32 0, metadata !934, null}
!939 = metadata !{i32 1104, i32 0, metadata !934, null}
!940 = metadata !{i32 1110, i32 0, metadata !293, null}
!941 = metadata !{i32 1111, i32 0, metadata !293, null}
!942 = metadata !{i32 1113, i32 0, metadata !293, null}
!943 = metadata !{i32 1114, i32 0, metadata !293, null}
!944 = metadata !{i32 1118, i32 0, metadata !293, null}
