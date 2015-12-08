; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Utilities/src/Utilities_sortAndCompress.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [72 x i8] c"\0A fatal error in IVsortAndCompress(%d,%p)\0A bad input, n = %d, ivec = %p\00", align 1
@.str1 = private unnamed_addr constant [88 x i8] c"\0A fatal error in IVDVsortAndCompress(%d,%p,%p)\0A bad input, n = %d, ivec = %p, dvec = %p\00", align 1
@.str2 = private unnamed_addr constant [88 x i8] c"\0A fatal error in IVZVsortAndCompress(%d,%p,%p)\0A bad input, n = %d, ivec = %p, zvec = %p\00", align 1
@.str3 = private unnamed_addr constant [89 x i8] c"\0A fatal error in IV2sortAndCompress(%d,%p,%p)\0A bad input, n = %d, ivec1 = %p, ivec2 = %p\00", align 1
@.str4 = private unnamed_addr constant [105 x i8] c"\0A fatal error in IV2DVsortAndCompress(%d,%p,%p,%p)\0A bad input, n = %d, ivec1 = %p, ivec2 = %p, dvec = %p\00", align 1
@.str5 = private unnamed_addr constant [105 x i8] c"\0A fatal error in IV2ZVsortAndCompress(%d,%p,%p,%p)\0A bad input, n = %d, ivec1 = %p, ivec2 = %p, zvec = %p\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @IVsortUpAndCompress(i32 %n, i32* %ivec) #0 {
entry:
  %cmp = icmp slt i32 %n, 0
  %cmp1 = icmp eq i32* %ivec, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([72 x i8]* @.str, i64 0, i64 0), i32 %n, i32* %ivec, i32 %n, i32* %ivec) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %cmp2 = icmp eq i32 %n, 0
  br i1 %cmp2, label %return, label %if.end4

if.end4:                                          ; preds = %if.end
  tail call void @IVqsortUp(i32 %n, i32* %ivec) #4
  %cmp531 = icmp sgt i32 %n, 1
  br i1 %cmp531, label %for.body.lr.ph, label %return

for.body.lr.ph:                                   ; preds = %if.end4
  %1 = load i32* %ivec, align 4, !tbaa !3
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %key.034 = phi i32 [ %1, %for.body.lr.ph ], [ %key.1, %for.inc ]
  %first.032 = phi i32 [ 1, %for.body.lr.ph ], [ %first.1, %for.inc ]
  %arrayidx6 = getelementptr inbounds i32* %ivec, i64 %indvars.iv
  %2 = load i32* %arrayidx6, align 4, !tbaa !3
  %cmp7 = icmp eq i32 %key.034, %2
  br i1 %cmp7, label %for.inc, label %if.then8

if.then8:                                         ; preds = %for.body
  %inc = add nsw i32 %first.032, 1
  %idxprom11 = sext i32 %first.032 to i64
  %arrayidx12 = getelementptr inbounds i32* %ivec, i64 %idxprom11
  store i32 %2, i32* %arrayidx12, align 4, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then8
  %first.1 = phi i32 [ %inc, %if.then8 ], [ %first.032, %for.body ]
  %key.1 = phi i32 [ %2, %if.then8 ], [ %key.034, %for.body ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %return, label %for.body

return:                                           ; preds = %if.end4, %for.inc, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %if.end4 ], [ %first.1, %for.inc ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @IVqsortUp(i32, i32*) #3

; Function Attrs: nounwind optsize uwtable
define i32 @IVDVsortUpAndCompress(i32 %n, i32* %ivec, double* %dvec) #0 {
entry:
  %cmp = icmp slt i32 %n, 0
  %cmp1 = icmp eq i32* %ivec, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq double* %dvec, null
  %or.cond61 = or i1 %or.cond, %cmp3
  br i1 %or.cond61, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([88 x i8]* @.str1, i64 0, i64 0), i32 %n, i32* %ivec, double* %dvec, i32 %n, i32* %ivec, double* %dvec) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %cmp4 = icmp eq i32 %n, 0
  br i1 %cmp4, label %return, label %if.end6

if.end6:                                          ; preds = %if.end
  tail call void @IVDVqsortUp(i32 %n, i32* %ivec, double* %dvec) #4
  %cmp762 = icmp sgt i32 %n, 1
  br i1 %cmp762, label %for.body.lr.ph, label %return

for.body.lr.ph:                                   ; preds = %if.end6
  %1 = load i32* %ivec, align 4, !tbaa !3
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %key.065 = phi i32 [ %1, %for.body.lr.ph ], [ %key.1, %for.inc ]
  %first.063 = phi i32 [ 1, %for.body.lr.ph ], [ %first.1, %for.inc ]
  %arrayidx8 = getelementptr inbounds i32* %ivec, i64 %indvars.iv
  %2 = load i32* %arrayidx8, align 4, !tbaa !3
  %cmp9 = icmp eq i32 %key.065, %2
  br i1 %cmp9, label %if.then10, label %if.then18

if.then10:                                        ; preds = %for.body
  %arrayidx12 = getelementptr inbounds double* %dvec, i64 %indvars.iv
  %3 = load double* %arrayidx12, align 8, !tbaa !4
  %sub = add nsw i32 %first.063, -1
  %idxprom13 = sext i32 %sub to i64
  %arrayidx14 = getelementptr inbounds double* %dvec, i64 %idxprom13
  %4 = load double* %arrayidx14, align 8, !tbaa !4
  %add = fadd double %3, %4
  store double %add, double* %arrayidx14, align 8, !tbaa !4
  br label %for.inc

if.then18:                                        ; preds = %for.body
  %idxprom21 = sext i32 %first.063 to i64
  %arrayidx22 = getelementptr inbounds i32* %ivec, i64 %idxprom21
  store i32 %2, i32* %arrayidx22, align 4, !tbaa !3
  %arrayidx24 = getelementptr inbounds double* %dvec, i64 %indvars.iv
  %5 = load double* %arrayidx24, align 8, !tbaa !4
  %arrayidx26 = getelementptr inbounds double* %dvec, i64 %idxprom21
  store double %5, double* %arrayidx26, align 8, !tbaa !4
  %inc = add nsw i32 %first.063, 1
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %if.then18
  %first.1 = phi i32 [ %first.063, %if.then10 ], [ %inc, %if.then18 ]
  %key.1 = phi i32 [ %key.065, %if.then10 ], [ %2, %if.then18 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %return, label %for.body

return:                                           ; preds = %if.end6, %for.inc, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %if.end6 ], [ %first.1, %for.inc ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare void @IVDVqsortUp(i32, i32*, double*) #3

; Function Attrs: nounwind optsize uwtable
define i32 @IVZVsortUpAndCompress(i32 %n, i32* %ivec, double* %zvec) #0 {
entry:
  %cmp = icmp slt i32 %n, 0
  %cmp1 = icmp eq i32* %ivec, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq double* %zvec, null
  %or.cond93 = or i1 %or.cond, %cmp3
  br i1 %or.cond93, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([88 x i8]* @.str2, i64 0, i64 0), i32 %n, i32* %ivec, double* %zvec, i32 %n, i32* %ivec, double* %zvec) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %cmp4 = icmp eq i32 %n, 0
  br i1 %cmp4, label %return, label %if.end6

if.end6:                                          ; preds = %if.end
  tail call void @IVZVqsortUp(i32 %n, i32* %ivec, double* %zvec) #4
  %cmp794 = icmp sgt i32 %n, 1
  br i1 %cmp794, label %for.body.lr.ph, label %return

for.body.lr.ph:                                   ; preds = %if.end6
  %1 = load i32* %ivec, align 4, !tbaa !3
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %key.097 = phi i32 [ %1, %for.body.lr.ph ], [ %key.1, %for.inc ]
  %first.095 = phi i32 [ 1, %for.body.lr.ph ], [ %first.1, %for.inc ]
  %arrayidx8 = getelementptr inbounds i32* %ivec, i64 %indvars.iv
  %2 = load i32* %arrayidx8, align 4, !tbaa !3
  %cmp9 = icmp eq i32 %key.097, %2
  br i1 %cmp9, label %if.then10, label %if.then29

if.then10:                                        ; preds = %for.body
  %3 = trunc i64 %indvars.iv to i32
  %mul = shl nsw i32 %3, 1
  %idxprom11 = sext i32 %mul to i64
  %arrayidx12 = getelementptr inbounds double* %zvec, i64 %idxprom11
  %4 = load double* %arrayidx12, align 8, !tbaa !4
  %sub = shl i32 %first.095, 1
  %mul13 = add i32 %sub, -2
  %idxprom14 = sext i32 %mul13 to i64
  %arrayidx15 = getelementptr inbounds double* %zvec, i64 %idxprom14
  %5 = load double* %arrayidx15, align 8, !tbaa !4
  %add = fadd double %4, %5
  store double %add, double* %arrayidx15, align 8, !tbaa !4
  %add1792 = or i32 %mul, 1
  %idxprom18 = sext i32 %add1792 to i64
  %arrayidx19 = getelementptr inbounds double* %zvec, i64 %idxprom18
  %6 = load double* %arrayidx19, align 8, !tbaa !4
  %add22 = add i32 %sub, -1
  %idxprom23 = sext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds double* %zvec, i64 %idxprom23
  %7 = load double* %arrayidx24, align 8, !tbaa !4
  %add25 = fadd double %6, %7
  store double %add25, double* %arrayidx24, align 8, !tbaa !4
  br label %for.inc

if.then29:                                        ; preds = %for.body
  %idxprom32 = sext i32 %first.095 to i64
  %arrayidx33 = getelementptr inbounds i32* %ivec, i64 %idxprom32
  store i32 %2, i32* %arrayidx33, align 4, !tbaa !3
  %8 = trunc i64 %indvars.iv to i32
  %mul34 = shl nsw i32 %8, 1
  %idxprom35 = sext i32 %mul34 to i64
  %arrayidx36 = getelementptr inbounds double* %zvec, i64 %idxprom35
  %9 = load double* %arrayidx36, align 8, !tbaa !4
  %mul37 = shl nsw i32 %first.095, 1
  %idxprom38 = sext i32 %mul37 to i64
  %arrayidx39 = getelementptr inbounds double* %zvec, i64 %idxprom38
  store double %9, double* %arrayidx39, align 8, !tbaa !4
  %add4190 = or i32 %mul34, 1
  %idxprom42 = sext i32 %add4190 to i64
  %arrayidx43 = getelementptr inbounds double* %zvec, i64 %idxprom42
  %10 = load double* %arrayidx43, align 8, !tbaa !4
  %add4591 = or i32 %mul37, 1
  %idxprom46 = sext i32 %add4591 to i64
  %arrayidx47 = getelementptr inbounds double* %zvec, i64 %idxprom46
  store double %10, double* %arrayidx47, align 8, !tbaa !4
  %inc = add nsw i32 %first.095, 1
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %if.then29
  %first.1 = phi i32 [ %first.095, %if.then10 ], [ %inc, %if.then29 ]
  %key.1 = phi i32 [ %key.097, %if.then10 ], [ %2, %if.then29 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %return, label %for.body

return:                                           ; preds = %if.end6, %for.inc, %if.end
  %retval.0 = phi i32 [ 0, %if.end ], [ 1, %if.end6 ], [ %first.1, %for.inc ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare void @IVZVqsortUp(i32, i32*, double*) #3

; Function Attrs: nounwind optsize uwtable
define i32 @IV2sortUpAndCompress(i32 %n, i32* %ivec1, i32* %ivec2) #0 {
entry:
  %cmp = icmp slt i32 %n, 0
  %cmp1 = icmp eq i32* %ivec1, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq i32* %ivec2, null
  %or.cond78 = or i1 %or.cond, %cmp3
  br i1 %or.cond78, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([89 x i8]* @.str3, i64 0, i64 0), i32 %n, i32* %ivec1, i32* %ivec2, i32 %n, i32* %ivec1, i32* %ivec2) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %cmp4 = icmp eq i32 %n, 0
  br i1 %cmp4, label %return, label %if.end6

if.end6:                                          ; preds = %if.end
  tail call void @IV2qsortUp(i32 %n, i32* %ivec1, i32* %ivec2) #4
  %1 = load i32* %ivec1, align 4, !tbaa !3
  %cmp779 = icmp sgt i32 %n, 1
  br i1 %cmp779, label %for.body, label %for.end

for.body:                                         ; preds = %if.end6, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %if.end6 ]
  %start.083 = phi i32 [ %start.1, %for.inc ], [ 0, %if.end6 ]
  %key.082 = phi i32 [ %key.1, %for.inc ], [ %1, %if.end6 ]
  %first.080 = phi i32 [ %first.1, %for.inc ], [ 0, %if.end6 ]
  %arrayidx8 = getelementptr inbounds i32* %ivec1, i64 %indvars.iv
  %2 = load i32* %arrayidx8, align 4, !tbaa !3
  %cmp9 = icmp eq i32 %key.082, %2
  br i1 %cmp9, label %for.inc, label %if.then10

if.then10:                                        ; preds = %for.body
  %3 = trunc i64 %indvars.iv to i32
  %sub = sub nsw i32 %3, %start.083
  %idx.ext = sext i32 %start.083 to i64
  %add.ptr = getelementptr inbounds i32* %ivec2, i64 %idx.ext
  %call11 = tail call i32 @IVsortUpAndCompress(i32 %sub, i32* %add.ptr) #6
  %idx.ext12 = sext i32 %first.080 to i64
  %add.ptr13 = getelementptr inbounds i32* %ivec1, i64 %idx.ext12
  tail call void @IVfill(i32 %call11, i32* %add.ptr13, i32 %key.082) #4
  %add.ptr15 = getelementptr inbounds i32* %ivec2, i64 %idx.ext12
  tail call void @IVcopy(i32 %call11, i32* %add.ptr15, i32* %add.ptr) #4
  %add = add nsw i32 %call11, %first.080
  %4 = load i32* %arrayidx8, align 4, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then10
  %first.1 = phi i32 [ %add, %if.then10 ], [ %first.080, %for.body ]
  %key.1 = phi i32 [ %4, %if.then10 ], [ %key.082, %for.body ]
  %start.1 = phi i32 [ %3, %if.then10 ], [ %start.083, %for.body ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end6
  %start.0.lcssa = phi i32 [ 0, %if.end6 ], [ %start.1, %for.inc ]
  %key.0.lcssa = phi i32 [ %1, %if.end6 ], [ %key.1, %for.inc ]
  %first.0.lcssa = phi i32 [ 0, %if.end6 ], [ %first.1, %for.inc ]
  %sub21 = sub nsw i32 %n, %start.0.lcssa
  %idx.ext22 = sext i32 %start.0.lcssa to i64
  %add.ptr23 = getelementptr inbounds i32* %ivec2, i64 %idx.ext22
  %call24 = tail call i32 @IVsortUpAndCompress(i32 %sub21, i32* %add.ptr23) #6
  %idx.ext25 = sext i32 %first.0.lcssa to i64
  %add.ptr26 = getelementptr inbounds i32* %ivec1, i64 %idx.ext25
  tail call void @IVfill(i32 %call24, i32* %add.ptr26, i32 %key.0.lcssa) #4
  %add.ptr28 = getelementptr inbounds i32* %ivec2, i64 %idx.ext25
  tail call void @IVcopy(i32 %call24, i32* %add.ptr28, i32* %add.ptr23) #4
  %add31 = add nsw i32 %call24, %first.0.lcssa
  br label %return

return:                                           ; preds = %if.end, %for.end
  %retval.0 = phi i32 [ %add31, %for.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare void @IV2qsortUp(i32, i32*, i32*) #3

; Function Attrs: optsize
declare void @IVfill(i32, i32*, i32) #3

; Function Attrs: optsize
declare void @IVcopy(i32, i32*, i32*) #3

; Function Attrs: nounwind optsize uwtable
define i32 @IV2DVsortUpAndCompress(i32 %n, i32* %ivec1, i32* %ivec2, double* %dvec) #0 {
entry:
  %cmp = icmp slt i32 %n, 0
  %cmp1 = icmp eq i32* %ivec1, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq i32* %ivec2, null
  %or.cond109 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq double* %dvec, null
  %or.cond110 = or i1 %or.cond109, %cmp5
  br i1 %or.cond110, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([105 x i8]* @.str4, i64 0, i64 0), i32 %n, i32* %ivec1, i32* %ivec2, double* %dvec, i32 %n, i32* %ivec1, i32* %ivec2, double* %dvec) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %cmp6 = icmp eq i32 %n, 0
  br i1 %cmp6, label %return, label %if.end8

if.end8:                                          ; preds = %if.end
  tail call void @IV2DVqsortUp(i32 %n, i32* %ivec1, i32* %ivec2, double* %dvec) #4
  %1 = load i32* %ivec1, align 4, !tbaa !3
  %cmp9111 = icmp sgt i32 %n, 1
  br i1 %cmp9111, label %for.body, label %for.end

for.body:                                         ; preds = %if.end8, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %if.end8 ]
  %start.0115 = phi i32 [ %start.1, %for.inc ], [ 0, %if.end8 ]
  %key.0114 = phi i32 [ %key.1, %for.inc ], [ %1, %if.end8 ]
  %first.0112 = phi i32 [ %first.1, %for.inc ], [ 0, %if.end8 ]
  %arrayidx10 = getelementptr inbounds i32* %ivec1, i64 %indvars.iv
  %2 = load i32* %arrayidx10, align 4, !tbaa !3
  %cmp11 = icmp eq i32 %key.0114, %2
  br i1 %cmp11, label %for.inc, label %if.then12

if.then12:                                        ; preds = %for.body
  %3 = trunc i64 %indvars.iv to i32
  %sub = sub nsw i32 %3, %start.0115
  %idx.ext = sext i32 %start.0115 to i64
  %add.ptr = getelementptr inbounds i32* %ivec2, i64 %idx.ext
  %add.ptr14 = getelementptr inbounds double* %dvec, i64 %idx.ext
  %call15 = tail call i32 @IVDVsortUpAndCompress(i32 %sub, i32* %add.ptr, double* %add.ptr14) #6
  %idx.ext16 = sext i32 %first.0112 to i64
  %add.ptr17 = getelementptr inbounds i32* %ivec1, i64 %idx.ext16
  tail call void @IVfill(i32 %call15, i32* %add.ptr17, i32 %key.0114) #4
  %add.ptr19 = getelementptr inbounds i32* %ivec2, i64 %idx.ext16
  tail call void @IVcopy(i32 %call15, i32* %add.ptr19, i32* %add.ptr) #4
  %add.ptr23 = getelementptr inbounds double* %dvec, i64 %idx.ext16
  tail call void @DVcopy(i32 %call15, double* %add.ptr23, double* %add.ptr14) #4
  %add = add nsw i32 %call15, %first.0112
  %4 = load i32* %arrayidx10, align 4, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then12
  %first.1 = phi i32 [ %add, %if.then12 ], [ %first.0112, %for.body ]
  %key.1 = phi i32 [ %4, %if.then12 ], [ %key.0114, %for.body ]
  %start.1 = phi i32 [ %3, %if.then12 ], [ %start.0115, %for.body ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end8
  %start.0.lcssa = phi i32 [ 0, %if.end8 ], [ %start.1, %for.inc ]
  %key.0.lcssa = phi i32 [ %1, %if.end8 ], [ %key.1, %for.inc ]
  %first.0.lcssa = phi i32 [ 0, %if.end8 ], [ %first.1, %for.inc ]
  %sub29 = sub nsw i32 %n, %start.0.lcssa
  %idx.ext30 = sext i32 %start.0.lcssa to i64
  %add.ptr31 = getelementptr inbounds i32* %ivec2, i64 %idx.ext30
  %add.ptr33 = getelementptr inbounds double* %dvec, i64 %idx.ext30
  %call34 = tail call i32 @IVDVsortUpAndCompress(i32 %sub29, i32* %add.ptr31, double* %add.ptr33) #6
  %idx.ext35 = sext i32 %first.0.lcssa to i64
  %add.ptr36 = getelementptr inbounds i32* %ivec1, i64 %idx.ext35
  tail call void @IVfill(i32 %call34, i32* %add.ptr36, i32 %key.0.lcssa) #4
  %add.ptr38 = getelementptr inbounds i32* %ivec2, i64 %idx.ext35
  tail call void @IVcopy(i32 %call34, i32* %add.ptr38, i32* %add.ptr31) #4
  %add.ptr42 = getelementptr inbounds double* %dvec, i64 %idx.ext35
  tail call void @DVcopy(i32 %call34, double* %add.ptr42, double* %add.ptr33) #4
  %add45 = add nsw i32 %call34, %first.0.lcssa
  br label %return

return:                                           ; preds = %if.end, %for.end
  %retval.0 = phi i32 [ %add45, %for.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare void @IV2DVqsortUp(i32, i32*, i32*, double*) #3

; Function Attrs: optsize
declare void @DVcopy(i32, double*, double*) #3

; Function Attrs: nounwind optsize uwtable
define i32 @IV2ZVsortUpAndCompress(i32 %n, i32* %ivec1, i32* %ivec2, double* %zvec) #0 {
entry:
  %cmp = icmp slt i32 %n, 0
  %cmp1 = icmp eq i32* %ivec1, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq i32* %ivec2, null
  %or.cond116 = or i1 %or.cond, %cmp3
  %cmp5 = icmp eq double* %zvec, null
  %or.cond117 = or i1 %or.cond116, %cmp5
  br i1 %or.cond117, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([105 x i8]* @.str5, i64 0, i64 0), i32 %n, i32* %ivec1, i32* %ivec2, double* %zvec, i32 %n, i32* %ivec1, i32* %ivec2, double* %zvec) #4
  tail call void @exit(i32 -1) #5
  unreachable

if.end:                                           ; preds = %entry
  %cmp6 = icmp eq i32 %n, 0
  br i1 %cmp6, label %return, label %if.end8

if.end8:                                          ; preds = %if.end
  tail call void @IV2ZVqsortUp(i32 %n, i32* %ivec1, i32* %ivec2, double* %zvec) #4
  %1 = load i32* %ivec1, align 4, !tbaa !3
  %cmp9118 = icmp sgt i32 %n, 1
  br i1 %cmp9118, label %for.body, label %for.end

for.body:                                         ; preds = %if.end8, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %if.end8 ]
  %start.0122 = phi i32 [ %start.1, %for.inc ], [ 0, %if.end8 ]
  %key.0121 = phi i32 [ %key.1, %for.inc ], [ %1, %if.end8 ]
  %first.0119 = phi i32 [ %first.1, %for.inc ], [ 0, %if.end8 ]
  %arrayidx10 = getelementptr inbounds i32* %ivec1, i64 %indvars.iv
  %2 = load i32* %arrayidx10, align 4, !tbaa !3
  %cmp11 = icmp eq i32 %key.0121, %2
  br i1 %cmp11, label %for.inc, label %if.then12

if.then12:                                        ; preds = %for.body
  %3 = trunc i64 %indvars.iv to i32
  %sub = sub nsw i32 %3, %start.0122
  %idx.ext = sext i32 %start.0122 to i64
  %add.ptr = getelementptr inbounds i32* %ivec2, i64 %idx.ext
  %mul = shl nsw i32 %start.0122, 1
  %idx.ext13 = sext i32 %mul to i64
  %add.ptr14 = getelementptr inbounds double* %zvec, i64 %idx.ext13
  %call15 = tail call i32 @IVZVsortUpAndCompress(i32 %sub, i32* %add.ptr, double* %add.ptr14) #6
  %idx.ext16 = sext i32 %first.0119 to i64
  %add.ptr17 = getelementptr inbounds i32* %ivec1, i64 %idx.ext16
  tail call void @IVfill(i32 %call15, i32* %add.ptr17, i32 %key.0121) #4
  %add.ptr19 = getelementptr inbounds i32* %ivec2, i64 %idx.ext16
  tail call void @IVcopy(i32 %call15, i32* %add.ptr19, i32* %add.ptr) #4
  %mul22 = shl nsw i32 %call15, 1
  %mul23 = shl nsw i32 %first.0119, 1
  %idx.ext24 = sext i32 %mul23 to i64
  %add.ptr25 = getelementptr inbounds double* %zvec, i64 %idx.ext24
  tail call void @DVcopy(i32 %mul22, double* %add.ptr25, double* %add.ptr14) #4
  %add = add nsw i32 %call15, %first.0119
  %4 = load i32* %arrayidx10, align 4, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then12
  %first.1 = phi i32 [ %add, %if.then12 ], [ %first.0119, %for.body ]
  %key.1 = phi i32 [ %4, %if.then12 ], [ %key.0121, %for.body ]
  %start.1 = phi i32 [ %3, %if.then12 ], [ %start.0122, %for.body ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %n
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc, %if.end8
  %start.0.lcssa = phi i32 [ 0, %if.end8 ], [ %start.1, %for.inc ]
  %key.0.lcssa = phi i32 [ %1, %if.end8 ], [ %key.1, %for.inc ]
  %first.0.lcssa = phi i32 [ 0, %if.end8 ], [ %first.1, %for.inc ]
  %sub32 = sub nsw i32 %n, %start.0.lcssa
  %idx.ext33 = sext i32 %start.0.lcssa to i64
  %add.ptr34 = getelementptr inbounds i32* %ivec2, i64 %idx.ext33
  %mul35 = shl nsw i32 %start.0.lcssa, 1
  %idx.ext36 = sext i32 %mul35 to i64
  %add.ptr37 = getelementptr inbounds double* %zvec, i64 %idx.ext36
  %call38 = tail call i32 @IVZVsortUpAndCompress(i32 %sub32, i32* %add.ptr34, double* %add.ptr37) #6
  %idx.ext39 = sext i32 %first.0.lcssa to i64
  %add.ptr40 = getelementptr inbounds i32* %ivec1, i64 %idx.ext39
  tail call void @IVfill(i32 %call38, i32* %add.ptr40, i32 %key.0.lcssa) #4
  %add.ptr42 = getelementptr inbounds i32* %ivec2, i64 %idx.ext39
  tail call void @IVcopy(i32 %call38, i32* %add.ptr42, i32* %add.ptr34) #4
  %mul45 = shl nsw i32 %call38, 1
  %mul46 = shl nsw i32 %first.0.lcssa, 1
  %idx.ext47 = sext i32 %mul46 to i64
  %add.ptr48 = getelementptr inbounds double* %zvec, i64 %idx.ext47
  tail call void @DVcopy(i32 %mul45, double* %add.ptr48, double* %add.ptr37) #4
  %add52 = add nsw i32 %call38, %first.0.lcssa
  br label %return

return:                                           ; preds = %if.end, %for.end
  %retval.0 = phi i32 [ %add52, %for.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare void @IV2ZVqsortUp(i32, i32*, i32*, double*) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { noreturn nounwind optsize }
attributes #6 = { optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"double", metadata !1}
