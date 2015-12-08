; ModuleID = '../../SPEC/benchspec/CPU2006/464.h264ref/src/leaky_bucket.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.InputParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x [2 x i32]], [8 x [2 x i32]], i32, i32, i32, i32, [200 x i8], [200 x i8], [200 x i8], [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], [200 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [200 x i8], i32, i32, i32*, i32*, i8*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x double], [200 x i8], i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.ImageParameters = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32**, i32**, i32, i32***, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [9 x [16 x [16 x i16]]], [5 x [16 x [16 x i16]]], [9 x [8 x [8 x i16]]], [2 x [4 x [16 x [16 x i16]]]], [16 x [16 x i16]], [16 x [16 x i32]], i32****, i32***, %struct.Picture*, %struct.Slice*, %struct.macroblock*, [1200 x %struct.syntaxelement], i32*, i32*, i32, i32, i32, i32, [4 x [4 x i32]], i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i16******, i16******, i16******, i16******, [15 x i16], i32, i32, i32, i32, i32, i32, i32, i32, [6 x [15 x i32]], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x i32], i32, i32, [2 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s*, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, double*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, i32, i32 }
%struct.Picture = type { i32, i32, [100 x %struct.Slice*], i32, float, float, float }
%struct.Slice = type { i32, i32, i32, i32, i32, i32, %struct.datapartition*, %struct.MotionInfoContexts*, %struct.TextureInfoContexts*, %struct.RMPNIbuffer_s*, i32, i32*, i32*, i32*, i32, i32*, i32*, i32*, i32 (i32)*, [3 x [2 x i32]] }
%struct.datapartition = type { %struct.Bitstream*, %struct.EncodingEnvironment, i32 (%struct.syntaxelement*, %struct.datapartition*)* }
%struct.Bitstream = type { i32, i32, i8, i32, i32, i8, i8, i32, i32, i8*, i32 }
%struct.EncodingEnvironment = type { i32, i32, i32, i32, i32, i8*, i32*, i32, i32, i32, i32, i32, i8*, i32*, i32, i32, i32, i32, i32, i32 }
%struct.syntaxelement = type { i32, i32, i32, i32, i32, i32, i32, i32, void (i32, i32, i32*, i32*)*, void (%struct.syntaxelement*, %struct.EncodingEnvironment*)* }
%struct.MotionInfoContexts = type { [3 x [11 x %struct.BiContextType]], [2 x [9 x %struct.BiContextType]], [2 x [10 x %struct.BiContextType]], [2 x [6 x %struct.BiContextType]], [4 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x %struct.BiContextType] }
%struct.BiContextType = type { i16, i8, i64 }
%struct.TextureInfoContexts = type { [2 x %struct.BiContextType], [4 x %struct.BiContextType], [3 x [4 x %struct.BiContextType]], [10 x [4 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [5 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]], [10 x [15 x %struct.BiContextType]] }
%struct.RMPNIbuffer_s = type { i32, i32, %struct.RMPNIbuffer_s* }
%struct.macroblock = type { i32, i32, i32, i32, i32, [8 x i32], %struct.macroblock*, %struct.macroblock*, i32, [2 x [4 x [4 x [2 x i32]]]], [16 x i32], [16 x i32], i32, i64, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, double, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.DecRefPicMarking_s = type { i32, i32, i32, i32, i32, %struct.DecRefPicMarking_s* }

@total_frame_buffer = global i64 0, align 8
@input = external global %struct.InputParameters*
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str2 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str4 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@errortext = external global [300 x i8]
@.str5 = private unnamed_addr constant [22 x i8] c"Error open file %s  \0A\00", align 1
@.str6 = private unnamed_addr constant [58 x i8] c" Number Leaky Buckets: %ld \0A     Rmin     Bmin     Fmin \0A\00", align 1
@.str7 = private unnamed_addr constant [18 x i8] c" %8ld %8ld %8ld \0A\00", align 1
@stdout = external global %struct._IO_FILE*
@.str8 = private unnamed_addr constant [81 x i8] c"-------------------------------------------------------------------------------\0A\00", align 1
@.str9 = private unnamed_addr constant [27 x i8] c" Total Frames:  %ld (%d) \0A\00", align 1
@.str11 = private unnamed_addr constant [18 x i8] c"init_buffer: Rmin\00", align 1
@.str12 = private unnamed_addr constant [18 x i8] c"init_buffer: Bmin\00", align 1
@.str13 = private unnamed_addr constant [18 x i8] c"init_buffer: Fmin\00", align 1
@Bit_Buffer = common global [10000 x i64] zeroinitializer, align 16
@img = external global %struct.ImageParameters*
@str = private unnamed_addr constant [90 x i8] c" Leaky BucketRateFile does not have valid entries;\0A using rate calculated from avg. rate \00"
@str14 = private unnamed_addr constant [76 x i8] c" LeakyBucketRate File does not exist; using rate calculated from avg. rate \00"

; Function Attrs: nounwind optsize uwtable
define i32 @get_LeakyBucketRate(i64 %NumberLeakyBuckets, i64* nocapture %Rmin) #0 {
entry:
  %buf = alloca i64, align 8
  %0 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %arraydecay = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 89, i64 0
  %call = call %struct._IO_FILE* @fopen(i8* %arraydecay, i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0)) #4
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %cmp214 = icmp eq i64 %NumberLeakyBuckets, 0
  br i1 %cmp214, label %for.end, label %for.body

if.then:                                          ; preds = %entry
  %puts13 = call i32 @puts(i8* getelementptr inbounds ([76 x i8]* @str14, i64 0, i64 0))
  br label %return

for.body:                                         ; preds = %for.cond.preheader, %if.end8
  %i.015 = phi i64 [ %inc, %if.end8 ], [ 0, %for.cond.preheader ]
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...)* @__isoc99_fscanf(%struct._IO_FILE* %call, i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), i64* %buf) #4
  %cmp4 = icmp eq i32 %call3, 1
  br i1 %cmp4, label %if.end8, label %if.then5

if.then5:                                         ; preds = %for.body
  %puts = call i32 @puts(i8* getelementptr inbounds ([90 x i8]* @str, i64 0, i64 0))
  %call7 = call i32 @fclose(%struct._IO_FILE* %call) #4
  br label %return

if.end8:                                          ; preds = %for.body
  %1 = load i64* %buf, align 8, !tbaa !3
  %arrayidx = getelementptr inbounds i64* %Rmin, i64 %i.015
  store i64 %1, i64* %arrayidx, align 8, !tbaa !3
  %inc = add i64 %i.015, 1
  %cmp2 = icmp ult i64 %inc, %NumberLeakyBuckets
  br i1 %cmp2, label %for.body, label %for.end

for.end:                                          ; preds = %if.end8, %for.cond.preheader
  %call9 = call i32 @fclose(%struct._IO_FILE* %call) #4
  br label %return

return:                                           ; preds = %for.end, %if.then5, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then5 ], [ 1, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #1

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture, ...) #1

; Function Attrs: optsize
declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @PutBigDoubleWord(i64 %dw, %struct._IO_FILE* nocapture %fp) #0 {
entry:
  %shr = lshr i64 %dw, 24
  %shr.tr = trunc i64 %shr to i32
  %conv = and i32 %shr.tr, 255
  %call = tail call i32 @fputc(i32 %conv, %struct._IO_FILE* %fp) #4
  %shr1 = lshr i64 %dw, 16
  %shr1.tr = trunc i64 %shr1 to i32
  %conv3 = and i32 %shr1.tr, 255
  %call4 = tail call i32 @fputc(i32 %conv3, %struct._IO_FILE* %fp) #4
  %shr5 = lshr i64 %dw, 8
  %shr5.tr = trunc i64 %shr5 to i32
  %conv7 = and i32 %shr5.tr, 255
  %call8 = tail call i32 @fputc(i32 %conv7, %struct._IO_FILE* %fp) #4
  %dw.tr = trunc i64 %dw to i32
  %conv10 = and i32 %dw.tr, 255
  %call11 = tail call i32 @fputc(i32 %conv10, %struct._IO_FILE* %fp) #4
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @write_buffer(i64 %NumberLeakyBuckets, i64* nocapture %Rmin, i64* nocapture %Bmin, i64* nocapture %Fmin) #0 {
entry:
  %0 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %arraydecay = getelementptr inbounds %struct.InputParameters* %0, i64 0, i32 90, i64 0
  %call = tail call %struct._IO_FILE* @fopen(i8* %arraydecay, i8* getelementptr inbounds ([3 x i8]* @.str4, i64 0, i64 0)) #4
  %cmp = icmp eq %struct._IO_FILE* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %arraydecay2 = getelementptr inbounds %struct.InputParameters* %1, i64 0, i32 90, i64 0
  %call3 = tail call i32 (i8*, i64, i8*, ...)* @snprintf(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i64 300, i8* getelementptr inbounds ([22 x i8]* @.str5, i64 0, i64 0), i8* %arraydecay2) #4
  tail call void @error(i8* getelementptr inbounds ([300 x i8]* @errortext, i64 0, i64 0), i32 1) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  tail call void @PutBigDoubleWord(i64 %NumberLeakyBuckets, %struct._IO_FILE* %call) #5
  %call4 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([58 x i8]* @.str6, i64 0, i64 0), i64 %NumberLeakyBuckets) #4
  %cmp529 = icmp eq i64 %NumberLeakyBuckets, 0
  br i1 %cmp529, label %for.end, label %for.body

for.body:                                         ; preds = %if.end, %for.body
  %iBucket.030 = phi i64 [ %inc, %for.body ], [ 0, %if.end ]
  %arrayidx = getelementptr inbounds i64* %Rmin, i64 %iBucket.030
  %2 = load i64* %arrayidx, align 8, !tbaa !3
  tail call void @PutBigDoubleWord(i64 %2, %struct._IO_FILE* %call) #5
  %arrayidx6 = getelementptr inbounds i64* %Bmin, i64 %iBucket.030
  %3 = load i64* %arrayidx6, align 8, !tbaa !3
  tail call void @PutBigDoubleWord(i64 %3, %struct._IO_FILE* %call) #5
  %arrayidx7 = getelementptr inbounds i64* %Fmin, i64 %iBucket.030
  %4 = load i64* %arrayidx7, align 8, !tbaa !3
  tail call void @PutBigDoubleWord(i64 %4, %struct._IO_FILE* %call) #5
  %5 = load i64* %arrayidx, align 8, !tbaa !3
  %6 = load i64* %arrayidx6, align 8, !tbaa !3
  %7 = load i64* %arrayidx7, align 8, !tbaa !3
  %call11 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @.str7, i64 0, i64 0), i64 %5, i64 %6, i64 %7) #4
  %inc = add i64 %iBucket.030, 1
  %exitcond = icmp eq i64 %inc, %NumberLeakyBuckets
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body, %if.end
  %call12 = tail call i32 @fclose(%struct._IO_FILE* %call) #4
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @snprintf(i8* nocapture, i64, i8* nocapture, ...) #1

; Function Attrs: optsize
declare void @error(i8*, i32) #2

; Function Attrs: nounwind optsize uwtable
define void @Sort(i64 %NumberLeakyBuckets, i64* nocapture %Rmin) #0 {
entry:
  %sub = add i64 %NumberLeakyBuckets, -1
  %cmp29 = icmp eq i64 %sub, 0
  br i1 %cmp29, label %for.end12, label %for.body

for.cond.loopexit:                                ; preds = %for.inc, %for.body
  %exitcond31 = icmp eq i64 %add, %sub
  br i1 %exitcond31, label %for.end12, label %for.body

for.body:                                         ; preds = %entry, %for.cond.loopexit
  %i.030 = phi i64 [ %add, %for.cond.loopexit ], [ 0, %entry ]
  %add = add i64 %i.030, 1
  %cmp227 = icmp ult i64 %add, %NumberLeakyBuckets
  br i1 %cmp227, label %for.body3.lr.ph, label %for.cond.loopexit

for.body3.lr.ph:                                  ; preds = %for.body
  %arrayidx = getelementptr inbounds i64* %Rmin, i64 %i.030
  br label %for.body3

for.body3:                                        ; preds = %for.inc, %for.body3.lr.ph
  %j.028 = phi i64 [ %add, %for.body3.lr.ph ], [ %inc, %for.inc ]
  %0 = load i64* %arrayidx, align 8, !tbaa !3
  %arrayidx4 = getelementptr inbounds i64* %Rmin, i64 %j.028
  %1 = load i64* %arrayidx4, align 8, !tbaa !3
  %cmp5 = icmp ugt i64 %0, %1
  br i1 %cmp5, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body3
  store i64 %1, i64* %arrayidx, align 8, !tbaa !3
  store i64 %0, i64* %arrayidx4, align 8, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %for.body3, %if.then
  %inc = add i64 %j.028, 1
  %exitcond = icmp eq i64 %inc, %NumberLeakyBuckets
  br i1 %exitcond, label %for.cond.loopexit, label %for.body3

for.end12:                                        ; preds = %for.cond.loopexit, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @calc_buffer() #0 {
if.end:
  %0 = load %struct._IO_FILE** @stdout, align 8, !tbaa !0
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([81 x i8]* @.str8, i64 0, i64 0), i64 80, i64 1, %struct._IO_FILE* %0)
  %2 = load i64* @total_frame_buffer, align 8, !tbaa !3
  %3 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %no_frames = getelementptr inbounds %struct.InputParameters* %3, i64 0, i32 2
  %4 = load i32* %no_frames, align 4, !tbaa !4
  %call1 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([27 x i8]* @.str9, i64 0, i64 0), i64 %2, i32 %4) #4
  %5 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %NumberLeakyBuckets2 = getelementptr inbounds %struct.InputParameters* %5, i64 0, i32 88
  %6 = load i32* %NumberLeakyBuckets2, align 4, !tbaa !4
  %conv = sext i32 %6 to i64
  %call4 = tail call noalias i8* @calloc(i64 %conv, i64 8) #4
  %7 = bitcast i8* %call4 to i64*
  %tobool5 = icmp eq i8* %call4, null
  br i1 %tobool5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  tail call void @no_mem_exit(i8* getelementptr inbounds ([18 x i8]* @.str11, i64 0, i64 0)) #4
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then6
  %call8 = tail call noalias i8* @calloc(i64 %conv, i64 8) #4
  %8 = bitcast i8* %call8 to i64*
  %tobool9 = icmp eq i8* %call8, null
  br i1 %tobool9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end7
  tail call void @no_mem_exit(i8* getelementptr inbounds ([18 x i8]* @.str12, i64 0, i64 0)) #4
  br label %if.end11

if.end11:                                         ; preds = %if.end7, %if.then10
  %call12 = tail call noalias i8* @calloc(i64 %conv, i64 8) #4
  %9 = bitcast i8* %call12 to i64*
  %tobool13 = icmp eq i8* %call12, null
  br i1 %tobool13, label %if.then14, label %for.cond.preheader

if.then14:                                        ; preds = %if.end11
  tail call void @no_mem_exit(i8* getelementptr inbounds ([18 x i8]* @.str13, i64 0, i64 0)) #4
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end11, %if.then14
  %10 = load i64* @total_frame_buffer, align 8, !tbaa !3
  %cmp236 = icmp eq i64 %10, 0
  br i1 %cmp236, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %TotalRate.0238 = phi i64 [ %add17, %for.body ], [ 0, %for.cond.preheader ]
  %iFrame.0237 = phi i64 [ %inc, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds [10000 x i64]* @Bit_Buffer, i64 0, i64 %iFrame.0237
  %11 = load i64* %arrayidx, align 8, !tbaa !3
  %add17 = add i64 %11, %TotalRate.0238
  %inc = add i64 %iFrame.0237, 1
  %cmp = icmp ult i64 %inc, %10
  br i1 %cmp, label %for.body, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.body
  %phitmp = uitofp i64 %add17 to float
  %phitmp241 = uitofp i64 %10 to float
  br label %for.end

for.end:                                          ; preds = %for.cond.preheader, %for.cond.for.end_crit_edge
  %.lcssa = phi float [ %phitmp241, %for.cond.for.end_crit_edge ], [ 0.000000e+00, %for.cond.preheader ]
  %TotalRate.0.lcssa = phi float [ %phitmp, %for.cond.for.end_crit_edge ], [ 0.000000e+00, %for.cond.preheader ]
  %div = fdiv float %TotalRate.0.lcssa, %.lcssa
  %conv20 = fptoui float %div to i64
  %call21 = tail call i32 @get_LeakyBucketRate(i64 %conv, i64* %7) #5
  %cmp22 = icmp eq i32 %call21, 1
  br i1 %cmp22, label %if.end55, label %for.cond25.preheader

for.cond25.preheader:                             ; preds = %for.end
  %cmp26234 = icmp eq i32 %6, 0
  br i1 %cmp26234, label %if.end55.thread, label %for.body28.lr.ph

if.end55.thread:                                  ; preds = %for.cond25.preheader
  tail call void @Sort(i64 %conv, i64* %7) #5
  br label %for.end136

for.body28.lr.ph:                                 ; preds = %for.cond25.preheader
  %conv32 = uitofp i64 %conv20 to float
  %12 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %framerate = getelementptr inbounds %struct.ImageParameters* %12, i64 0, i32 12
  %13 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %jumpd = getelementptr inbounds %struct.InputParameters* %13, i64 0, i32 5
  %div40 = lshr i64 %conv20, 2
  %conv41 = uitofp i64 %div40 to float
  br label %for.body28

for.body28:                                       ; preds = %for.body28.lr.ph, %for.inc52
  %iBucket.0235 = phi i64 [ 0, %for.body28.lr.ph ], [ %inc53, %for.inc52 ]
  %cmp29 = icmp eq i64 %iBucket.0235, 0
  br i1 %cmp29, label %if.then31, label %if.else

if.then31:                                        ; preds = %for.body28
  %14 = load float* %framerate, align 4, !tbaa !5
  %mul = fmul float %conv32, %14
  %conv33 = fptoui float %mul to i64
  %15 = load i32* %jumpd, align 4, !tbaa !4
  %add34 = add nsw i32 %15, 1
  %conv35 = sext i32 %add34 to i64
  %div36 = udiv i64 %conv33, %conv35
  store i64 %div36, i64* %7, align 8, !tbaa !3
  br label %for.inc52

if.else:                                          ; preds = %for.body28
  %sub = add i64 %iBucket.0235, -1
  %arrayidx38 = getelementptr inbounds i64* %7, i64 %sub
  %16 = load i64* %arrayidx38, align 8, !tbaa !3
  %conv39 = uitofp i64 %16 to float
  %17 = load float* %framerate, align 4, !tbaa !5
  %mul43 = fmul float %conv41, %17
  %18 = load i32* %jumpd, align 4, !tbaa !4
  %add45 = add nsw i32 %18, 1
  %conv46 = sitofp i32 %add45 to float
  %div47 = fdiv float %mul43, %conv46
  %add48 = fadd float %conv39, %div47
  %conv49 = fptoui float %add48 to i64
  %arrayidx50 = getelementptr inbounds i64* %7, i64 %iBucket.0235
  store i64 %conv49, i64* %arrayidx50, align 8, !tbaa !3
  br label %for.inc52

for.inc52:                                        ; preds = %if.then31, %if.else
  %inc53 = add i64 %iBucket.0235, 1
  %cmp26 = icmp ult i64 %inc53, %conv
  br i1 %cmp26, label %for.body28, label %if.end55

if.end55:                                         ; preds = %for.inc52, %for.end
  tail call void @Sort(i64 %conv, i64* %7) #5
  %mul56 = mul i64 %conv20, 20
  %cmp58231 = icmp eq i32 %6, 0
  br i1 %cmp58231, label %for.end136, label %for.body60.lr.ph

for.body60.lr.ph:                                 ; preds = %if.end55
  %19 = load %struct.InputParameters** @input, align 8, !tbaa !0
  %jumpd62 = getelementptr inbounds %struct.InputParameters* %19, i64 0, i32 5
  %20 = load i32* %jumpd62, align 4, !tbaa !4
  %add63 = add nsw i32 %20, 1
  %conv64 = sext i32 %add63 to i64
  %21 = load %struct.ImageParameters** @img, align 8, !tbaa !0
  %framerate67 = getelementptr inbounds %struct.ImageParameters* %21, i64 0, i32 12
  %22 = load float* %framerate67, align 4, !tbaa !5
  %23 = load i64* @total_frame_buffer, align 8, !tbaa !3
  %cmp72226 = icmp eq i64 %23, 0
  %24 = load i64* getelementptr inbounds ([10000 x i64]* @Bit_Buffer, i64 0, i64 0), align 16, !tbaa !3
  br label %for.body60

for.body60:                                       ; preds = %for.body60.lr.ph, %for.end131
  %iBucket.1233 = phi i64 [ 0, %for.body60.lr.ph ], [ %inc135, %for.end131 ]
  %FrameIndex.0232 = phi i64 [ 0, %for.body60.lr.ph ], [ %FrameIndex.1.lcssa, %for.end131 ]
  %arrayidx61 = getelementptr inbounds i64* %7, i64 %iBucket.1233
  %25 = load i64* %arrayidx61, align 8, !tbaa !3
  %mul65 = mul i64 %conv64, %25
  %conv66 = uitofp i64 %mul65 to float
  %div68 = fdiv float %conv66, %22
  %conv69 = fptosi float %div68 to i64
  br i1 %cmp72226, label %for.end99, label %for.body74

for.body74:                                       ; preds = %for.body60, %for.body74.for.body74_crit_edge
  %26 = phi i64 [ %storemerge225, %for.body74.for.body74_crit_edge ], [ %mul56, %for.body60 ]
  %minB.0229 = phi i64 [ %sub77.minB.0, %for.body74.for.body74_crit_edge ], [ %mul56, %for.body60 ]
  %iFrame.1228 = phi i64 [ %add87, %for.body74.for.body74_crit_edge ], [ 0, %for.body60 ]
  %FrameIndex.1227 = phi i64 [ %iFrame.1.FrameIndex.1, %for.body74.for.body74_crit_edge ], [ %FrameIndex.0232, %for.body60 ]
  %arrayidx76 = getelementptr inbounds [10000 x i64]* @Bit_Buffer, i64 0, i64 %iFrame.1228
  %27 = load i64* %arrayidx76, align 8, !tbaa !3
  %sub77 = sub nsw i64 %26, %27
  %cmp80 = icmp slt i64 %sub77, %minB.0229
  %iFrame.1.FrameIndex.1 = select i1 %cmp80, i64 %iFrame.1228, i64 %FrameIndex.1227
  %sub77.minB.0 = select i1 %cmp80, i64 %sub77, i64 %minB.0229
  %add86 = add nsw i64 %sub77, %conv69
  %add87 = add i64 %iFrame.1228, 1
  %exitcond = icmp eq i64 %add87, %23
  br i1 %exitcond, label %for.end99, label %for.body74.for.body74_crit_edge

for.body74.for.body74_crit_edge:                  ; preds = %for.body74
  %cmp91 = icmp sgt i64 %add86, %mul56
  %storemerge225 = select i1 %cmp91, i64 %mul56, i64 %add86
  br label %for.body74

for.end99:                                        ; preds = %for.body74, %for.body60
  %minB.0.lcssa = phi i64 [ %mul56, %for.body60 ], [ %sub77.minB.0, %for.body74 ]
  %FrameIndex.1.lcssa = phi i64 [ %FrameIndex.0232, %for.body60 ], [ %iFrame.1.FrameIndex.1, %for.body74 ]
  %sub100 = sub nsw i64 %mul56, %minB.0.lcssa
  %add103 = add i64 %FrameIndex.1.lcssa, 1
  br label %for.cond102

for.cond102:                                      ; preds = %for.body106, %for.end99
  %28 = phi i64 [ %24, %for.end99 ], [ %add120, %for.body106 ]
  %InitFullness.0 = phi i64 [ %24, %for.end99 ], [ %sub116.InitFullness.0, %for.body106 ]
  %iFrame.2 = phi i64 [ 0, %for.end99 ], [ %add121, %for.body106 ]
  %cmp104 = icmp ult i64 %iFrame.2, %add103
  br i1 %cmp104, label %for.body106, label %for.end131

for.body106:                                      ; preds = %for.cond102
  %arrayidx108 = getelementptr inbounds [10000 x i64]* @Bit_Buffer, i64 0, i64 %iFrame.2
  %29 = load i64* %arrayidx108, align 8, !tbaa !3
  %sub109 = sub nsw i64 %28, %29
  %cmp112 = icmp slt i64 %sub109, 0
  %.sub109 = select i1 %cmp112, i64 0, i64 %sub109
  %sub116 = select i1 %cmp112, i64 %sub109, i64 0
  %sub116.InitFullness.0 = sub nsw i64 %InitFullness.0, %sub116
  %add120 = add nsw i64 %.sub109, %conv69
  %add121 = add i64 %iFrame.2, 1
  %cmp125 = icmp sgt i64 %add120, %sub100
  br i1 %cmp125, label %for.end131, label %for.cond102

for.end131:                                       ; preds = %for.body106, %for.cond102
  %InitFullness.2 = phi i64 [ %sub116.InitFullness.0, %for.body106 ], [ %InitFullness.0, %for.cond102 ]
  %arrayidx132 = getelementptr inbounds i64* %8, i64 %iBucket.1233
  store i64 %sub100, i64* %arrayidx132, align 8, !tbaa !3
  %arrayidx133 = getelementptr inbounds i64* %9, i64 %iBucket.1233
  store i64 %InitFullness.2, i64* %arrayidx133, align 8, !tbaa !3
  %inc135 = add i64 %iBucket.1233, 1
  %cmp58 = icmp ult i64 %inc135, %conv
  br i1 %cmp58, label %for.body60, label %for.end136

for.end136:                                       ; preds = %for.end131, %if.end55.thread, %if.end55
  tail call void @write_buffer(i64 %conv, i64* %7, i64* %8, i64* %9) #5
  tail call void @free(i8* %call4) #4
  tail call void @free(i8* %call8) #4
  tail call void @free(i8* %call12) #4
  ret void
}

; Function Attrs: nounwind optsize
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: optsize
declare void @no_mem_exit(i8*) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #1

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture) #3

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind optsize }
attributes #5 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"long", metadata !1}
!4 = metadata !{metadata !"int", metadata !1}
!5 = metadata !{metadata !"float", metadata !1}
