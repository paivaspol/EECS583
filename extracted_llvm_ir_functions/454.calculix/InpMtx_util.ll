; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_util.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._InpMtx = type { i32, i32, i32, i32, i32, double, %struct._IV, %struct._IV, %struct._DV, i32, i32, %struct._IV, %struct._IV, %struct._IV }
%struct._IV = type { i32, i32, i32, i32* }
%struct._DV = type { i32, i32, i32, double* }
%struct._Drand = type { double, double, double, double, double, double, double, double, i32 }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [56 x i8] c"\0A fatal error in InpMtx_sortAndCompress(%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [57 x i8] c"\0A fatal error in InpMtx_convertToVectors(%p)\0A bad input\0A\00", align 1
@.str2 = private unnamed_addr constant [63 x i8] c"\0A fatal error in InpMtx_dropOffdiagonalEntries(%p)\0A bad input\0A\00", align 1
@.str3 = private unnamed_addr constant [72 x i8] c"\0A fatal error in InpMtx_dropOffdiagonalEntries(%p)\0A bad coordType = %d\0A\00", align 1
@.str4 = private unnamed_addr constant [58 x i8] c"\0A fatal error in InpMtx_dropLowerTriangle(%p)\0A bad input\0A\00", align 1
@.str5 = private unnamed_addr constant [63 x i8] c"\0A fatal error in InpMtx_dropLowerTriangle(%p)\0A bad coordType \0A\00", align 1
@.str6 = private unnamed_addr constant [58 x i8] c"\0A fatal error in InpMtx_dropUpperTriangle(%p)\0A bad input\0A\00", align 1
@.str7 = private unnamed_addr constant [63 x i8] c"\0A fatal error in InpMtx_dropUpperTriangle(%p)\0A bad coordType \0A\00", align 1
@.str8 = private unnamed_addr constant [59 x i8] c"\0A fatal error in InpMtx_mapToLowerTriangle(%p)\0A bad input\0A\00", align 1
@.str9 = private unnamed_addr constant [63 x i8] c"\0A fatal error in InpMtx_mapToLowerTriangle(%p)\0A bad coordType\0A\00", align 1
@.str10 = private unnamed_addr constant [59 x i8] c"\0A fatal error in InpMtx_mapToUpperTriangle(%p)\0A bad input\0A\00", align 1
@.str11 = private unnamed_addr constant [88 x i8] c"\0A fatal error in InpMtx_mapToUpperTriangle(%p)\0A bad coordType = %d, must be 1, 2, or 3\0A\00", align 1
@.str12 = private unnamed_addr constant [76 x i8] c"\0A fatal error in InpMtx_mapToUpperTriangleH(%p)\0A input mode is not complex\0A\00", align 1
@.str13 = private unnamed_addr constant [53 x i8] c"\0A fatal error in InpMtx_checksums(%p,%p)\0A bad input\0A\00", align 1
@.str14 = private unnamed_addr constant [57 x i8] c"\0A fatal error in InpMtx_checksums(%p,%p)\0A bad inputMode\0A\00", align 1
@.str15 = private unnamed_addr constant [51 x i8] c"\0A fatal error in InpMtx_randomMatrix\0A mtx is NULL\0A\00", align 1
@.str16 = private unnamed_addr constant [57 x i8] c"\0A fatal error in InpMtx_randomMatrix\0A bad input mode %d\0A\00", align 1
@.str17 = private unnamed_addr constant [62 x i8] c"\0A fatal error in InpMtx_randomMatrix\0A bad coordinate type %d\0A\00", align 1
@.str18 = private unnamed_addr constant [58 x i8] c"\0A fatal error in InpMtx_randomMatrix\0A bad storage mode%d\0A\00", align 1
@.str19 = private unnamed_addr constant [60 x i8] c"\0A fatal error in InpMtx_randomMatrix\0A nrow = %d, ncol = %d\0A\00", align 1
@.str20 = private unnamed_addr constant [59 x i8] c"\0A fatal error in InpMtx_randomMatrix\0A bad symmetry flag%d\0A\00", align 1
@.str21 = private unnamed_addr constant [88 x i8] c"\0A fatal error in InpMtx_randomMatrix\0A symmetryflag is Hermitian, requires complex type\0A\00", align 1
@.str22 = private unnamed_addr constant [86 x i8] c"\0A fatal error in InpMtx_randomMatrix\0A symmetric or hermitian matrix, nrow %d, ncol%d\0A\00", align 1
@.str23 = private unnamed_addr constant [50 x i8] c"\0A fatal error in InpMtx_randomMatrix\0A nitem = %d\0A\00", align 1
@.str24 = private unnamed_addr constant [46 x i8] c"\0A fatal error in InpMtx_range()\0A mtx is NULL\0A\00", align 1
@.str25 = private unnamed_addr constant [45 x i8] c"\0A fatal error in InpMtx_range()\0A %d entries\0A\00", align 1
@.str26 = private unnamed_addr constant [55 x i8] c"\0A fatal error in InpMtx_range()\0A invalid coordType %d\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_sortAndCompress(%struct._InpMtx* %inpmtx) #0 {
entry:
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([56 x i8]* @.str, i64 0, i64 0), %struct._InpMtx* null) #6
  tail call void @exit(i32 -1) #7
  unreachable

if.end:                                           ; preds = %entry
  %storageMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1
  %1 = load i32* %storageMode, align 4, !tbaa !3
  %.off = add i32 %1, -2
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %return, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %if.end
  %nent5 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 4
  %2 = load i32* %nent5, align 4, !tbaa !3
  %cmp6 = icmp eq i32 %2, 0
  br i1 %cmp6, label %return, label %if.end9

if.end9:                                          ; preds = %lor.lhs.false4
  %call10 = tail call i32* @InpMtx_ivec1(%struct._InpMtx* %inpmtx) #6
  %call11 = tail call i32* @InpMtx_ivec2(%struct._InpMtx* %inpmtx) #6
  %cmp1291 = icmp sgt i32 %2, 1
  br i1 %cmp1291, label %for.body.lr.ph, label %return

for.body.lr.ph:                                   ; preds = %if.end9
  %.pre = load i32* %call10, align 4, !tbaa !3
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %3 = phi i32 [ %.pre, %for.body.lr.ph ], [ %5, %for.inc ]
  %indvars.iv = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %4 = add nsw i64 %indvars.iv, -1
  %arrayidx14 = getelementptr inbounds i32* %call10, i64 %indvars.iv
  %5 = load i32* %arrayidx14, align 4, !tbaa !3
  %cmp15 = icmp sgt i32 %3, %5
  br i1 %cmp15, label %if.then32, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %for.body
  %cmp22 = icmp eq i32 %3, %5
  br i1 %cmp22, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %lor.lhs.false16
  %arrayidx25 = getelementptr inbounds i32* %call11, i64 %4
  %6 = load i32* %arrayidx25, align 4, !tbaa !3
  %arrayidx27 = getelementptr inbounds i32* %call11, i64 %indvars.iv
  %7 = load i32* %arrayidx27, align 4, !tbaa !3
  %cmp28 = icmp sgt i32 %6, %7
  br i1 %cmp28, label %if.then32, label %for.inc

for.inc:                                          ; preds = %lor.lhs.false16, %land.lhs.true
  %indvars.iv.next = add i64 %indvars.iv, 1
  %8 = trunc i64 %indvars.iv.next to i32
  %cmp12 = icmp slt i32 %8, %2
  br i1 %cmp12, label %for.body, label %return

if.then32:                                        ; preds = %land.lhs.true, %for.body
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2
  %9 = load i32* %inputMode, align 4, !tbaa !3
  switch i32 %9, label %return [
    i32 0, label %if.then34
    i32 1, label %if.then39
    i32 2, label %if.then46
  ]

if.then34:                                        ; preds = %if.then32
  %call35 = tail call i32 @IV2sortUpAndCompress(i32 %2, i32* %call10, i32* %call11) #6
  store i32 %call35, i32* %nent5, align 4, !tbaa !3
  br label %return

if.then39:                                        ; preds = %if.then32
  %call40 = tail call double* @InpMtx_dvec(%struct._InpMtx* %inpmtx) #6
  %call41 = tail call i32 @IV2DVsortUpAndCompress(i32 %2, i32* %call10, i32* %call11, double* %call40) #6
  store i32 %call41, i32* %nent5, align 4, !tbaa !3
  br label %return

if.then46:                                        ; preds = %if.then32
  %call48 = tail call double* @InpMtx_dvec(%struct._InpMtx* %inpmtx) #6
  %call49 = tail call i32 @IV2ZVsortUpAndCompress(i32 %2, i32* %call10, i32* %call11, double* %call48) #6
  store i32 %call49, i32* %nent5, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %if.end9, %for.inc, %if.end, %if.then39, %if.then46, %if.then34, %if.then32, %lor.lhs.false4
  store i32 2, i32* %storageMode, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare i32* @InpMtx_ivec1(%struct._InpMtx*) #3

; Function Attrs: optsize
declare i32* @InpMtx_ivec2(%struct._InpMtx*) #3

; Function Attrs: optsize
declare i32 @IV2sortUpAndCompress(i32, i32*, i32*) #3

; Function Attrs: optsize
declare double* @InpMtx_dvec(%struct._InpMtx*) #3

; Function Attrs: optsize
declare i32 @IV2DVsortUpAndCompress(i32, i32*, i32*, double*) #3

; Function Attrs: optsize
declare i32 @IV2ZVsortUpAndCompress(i32, i32*, i32*, double*) #3

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_convertToVectors(%struct._InpMtx* %inpmtx) #0 {
entry:
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([57 x i8]* @.str1, i64 0, i64 0), %struct._InpMtx* null) #6
  tail call void @exit(i32 -1) #7
  unreachable

if.end:                                           ; preds = %entry
  %storageMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1
  %1 = load i32* %storageMode, align 4, !tbaa !3
  %cmp1 = icmp eq i32 %1, 3
  br i1 %cmp1, label %if.then4, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %nent2 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 4
  %2 = load i32* %nent2, align 4, !tbaa !3
  %cmp3 = icmp eq i32 %2, 0
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  store i32 3, i32* %storageMode, align 4, !tbaa !3
  br label %return

if.end6:                                          ; preds = %lor.lhs.false
  %cmp8 = icmp eq i32 %1, 1
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %if.end6
  tail call void @InpMtx_sortAndCompress(%struct._InpMtx* %inpmtx) #8
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end6
  %call11 = tail call i32* @InpMtx_ivec1(%struct._InpMtx* %inpmtx) #6
  %call12 = tail call i32* @InpMtx_ivec2(%struct._InpMtx* %inpmtx) #6
  %cmp13136 = icmp sgt i32 %2, 0
  br i1 %cmp13136, label %for.body, label %for.end.thread

for.end.thread:                                   ; preds = %if.end10
  tail call void @InpMtx_setNvector(%struct._InpMtx* %inpmtx, i32 0) #6
  br label %if.then24

for.body:                                         ; preds = %if.end10, %for.body
  %indvars.iv147 = phi i64 [ %indvars.iv.next148, %for.body ], [ 0, %if.end10 ]
  %value.0139 = phi i32 [ %value.1, %for.body ], [ -1, %if.end10 ]
  %nvector.0138 = phi i32 [ %nvector.1, %for.body ], [ 0, %if.end10 ]
  %arrayidx = getelementptr inbounds i32* %call11, i64 %indvars.iv147
  %3 = load i32* %arrayidx, align 4, !tbaa !3
  %cmp14 = icmp slt i32 %3, 0
  %cmp17 = icmp eq i32 %value.0139, %3
  %or.cond = or i1 %cmp14, %cmp17
  %.lobit = lshr i32 %3, 31
  %cmp17131 = zext i1 %cmp17 to i32
  %4 = or i32 %cmp17131, %.lobit
  %inc = xor i32 %4, 1
  %nvector.1 = add nsw i32 %inc, %nvector.0138
  %value.1 = select i1 %or.cond, i32 %value.0139, i32 %3
  %indvars.iv.next148 = add i64 %indvars.iv147, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next148 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %2
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  tail call void @InpMtx_setNvector(%struct._InpMtx* %inpmtx, i32 %nvector.1) #6
  %cmp23 = icmp slt i32 %nvector.1, 1
  br i1 %cmp23, label %if.then24, label %if.end26

if.then24:                                        ; preds = %for.end.thread, %for.end
  store i32 1, i32* %storageMode, align 4, !tbaa !3
  tail call void @InpMtx_setNent(%struct._InpMtx* %inpmtx, i32 0) #6
  br label %return

if.end26:                                         ; preds = %for.end
  %call27 = tail call i32* @InpMtx_vecids(%struct._InpMtx* %inpmtx) #6
  %call28 = tail call i32* @InpMtx_sizes(%struct._InpMtx* %inpmtx) #6
  %call29 = tail call i32* @InpMtx_offsets(%struct._InpMtx* %inpmtx) #6
  br i1 %cmp13136, label %for.body32, label %if.end72

for.cond30:                                       ; preds = %for.body32
  %inc39 = add nsw i32 %first.0135, 1
  %5 = trunc i64 %indvars.iv.next146 to i32
  %cmp31 = icmp slt i32 %5, %2
  br i1 %cmp31, label %for.body32, label %if.end72

for.body32:                                       ; preds = %if.end26, %for.cond30
  %indvars.iv145 = phi i64 [ %indvars.iv.next146, %for.cond30 ], [ 0, %if.end26 ]
  %first.0135 = phi i32 [ %inc39, %for.cond30 ], [ 0, %if.end26 ]
  %arrayidx34 = getelementptr inbounds i32* %call11, i64 %indvars.iv145
  %6 = load i32* %arrayidx34, align 4, !tbaa !3
  %cmp35 = icmp sgt i32 %6, -1
  %indvars.iv.next146 = add i64 %indvars.iv145, 1
  br i1 %cmp35, label %for.cond45.outer, label %for.cond30

for.cond45:                                       ; preds = %for.cond45.outer, %for.body47
  %indvars.iv = phi i64 [ %10, %for.cond45.outer ], [ %indvars.iv.next, %for.body47 ]
  %jj.0.in = phi i32 [ %jj.0.in.ph, %for.cond45.outer ], [ %jj.0, %for.body47 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %jj.0 = add nsw i32 %jj.0.in, 1
  %7 = trunc i64 %indvars.iv.next to i32
  %cmp46 = icmp slt i32 %7, %2
  br i1 %cmp46, label %for.body47, label %for.end64

for.body47:                                       ; preds = %for.cond45
  %arrayidx49 = getelementptr inbounds i32* %call11, i64 %indvars.iv.next
  %8 = load i32* %arrayidx49, align 4, !tbaa !3
  %cmp50 = icmp eq i32 %8, %value.2.ph
  br i1 %cmp50, label %for.cond45, label %if.then51

if.then51:                                        ; preds = %for.body47
  %arrayidx53 = getelementptr inbounds i32* %call27, i64 %indvars.iv141
  store i32 %value.2.ph, i32* %arrayidx53, align 4, !tbaa !3
  %sub = sub nsw i32 %jj.0, %jj.0.in.ph
  %arrayidx55 = getelementptr inbounds i32* %call28, i64 %indvars.iv141
  store i32 %sub, i32* %arrayidx55, align 4, !tbaa !3
  %arrayidx57 = getelementptr inbounds i32* %call29, i64 %indvars.iv141
  store i32 %jj.0.in.ph, i32* %arrayidx57, align 4, !tbaa !3
  %9 = load i32* %arrayidx49, align 4, !tbaa !3
  %indvars.iv.next142 = add i64 %indvars.iv141, 1
  %inc60 = add nsw i32 %id.0.ph, 1
  br label %for.cond45.outer

for.cond45.outer:                                 ; preds = %for.body32, %if.then51
  %indvars.iv141 = phi i64 [ %indvars.iv.next142, %if.then51 ], [ 0, %for.body32 ]
  %id.0.ph = phi i32 [ %inc60, %if.then51 ], [ 0, %for.body32 ]
  %jj.0.in.ph = phi i32 [ %jj.0, %if.then51 ], [ %first.0135, %for.body32 ]
  %value.2.ph = phi i32 [ %9, %if.then51 ], [ %6, %for.body32 ]
  %10 = sext i32 %jj.0.in.ph to i64
  br label %for.cond45

for.end64:                                        ; preds = %for.cond45
  %idxprom65 = sext i32 %id.0.ph to i64
  %arrayidx66 = getelementptr inbounds i32* %call27, i64 %idxprom65
  store i32 %value.2.ph, i32* %arrayidx66, align 4, !tbaa !3
  %sub67 = sub nsw i32 %jj.0, %jj.0.in.ph
  %arrayidx69 = getelementptr inbounds i32* %call28, i64 %idxprom65
  store i32 %sub67, i32* %arrayidx69, align 4, !tbaa !3
  %arrayidx71 = getelementptr inbounds i32* %call29, i64 %idxprom65
  store i32 %jj.0.in.ph, i32* %arrayidx71, align 4, !tbaa !3
  br label %if.end72

if.end72:                                         ; preds = %if.end26, %for.cond30, %for.end64
  store i32 3, i32* %storageMode, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %if.end72, %if.then24, %if.then4
  ret void
}

; Function Attrs: optsize
declare void @InpMtx_setNvector(%struct._InpMtx*, i32) #3

; Function Attrs: optsize
declare void @InpMtx_setNent(%struct._InpMtx*, i32) #3

; Function Attrs: optsize
declare i32* @InpMtx_vecids(%struct._InpMtx*) #3

; Function Attrs: optsize
declare i32* @InpMtx_sizes(%struct._InpMtx*) #3

; Function Attrs: optsize
declare i32* @InpMtx_offsets(%struct._InpMtx*) #3

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_dropOffdiagonalEntries(%struct._InpMtx* %inpmtx) #0 {
entry:
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([63 x i8]* @.str2, i64 0, i64 0), %struct._InpMtx* null) #6
  tail call void @exit(i32 -1) #7
  unreachable

if.end:                                           ; preds = %entry
  %coordType = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 0
  %1 = load i32* %coordType, align 4, !tbaa !3
  %.off = add i32 %1, -1
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %if.end10, label %if.then7

if.then7:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([72 x i8]* @.str3, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %1) #6
  tail call void @exit(i32 -1) #7
  unreachable

if.end10:                                         ; preds = %if.end
  %nent11 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 4
  %3 = load i32* %nent11, align 4, !tbaa !3
  %call12 = tail call i32* @InpMtx_ivec1(%struct._InpMtx* %inpmtx) #6
  %call13 = tail call i32* @InpMtx_ivec2(%struct._InpMtx* %inpmtx) #6
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2
  %4 = load i32* %inputMode, align 4, !tbaa !3
  %.off291 = add i32 %4, -1
  %switch292 = icmp ult i32 %.off291, 2
  br i1 %switch292, label %if.then18, label %if.end20

if.then18:                                        ; preds = %if.end10
  %call19 = tail call double* @InpMtx_dvec(%struct._InpMtx* %inpmtx) #6
  br label %if.end20

if.end20:                                         ; preds = %if.end10, %if.then18
  %dvec.0 = phi double* [ %call19, %if.then18 ], [ undef, %if.end10 ]
  %5 = load i32* %coordType, align 4, !tbaa !3
  switch i32 %5, label %if.end169 [
    i32 1, label %for.cond.preheader
    i32 2, label %for.cond67.preheader
    i32 3, label %for.cond120.preheader
  ]

for.cond120.preheader:                            ; preds = %if.end20
  %cmp121304 = icmp sgt i32 %3, 0
  br i1 %cmp121304, label %for.body122, label %if.end169

for.cond67.preheader:                             ; preds = %if.end20
  %cmp68299 = icmp sgt i32 %3, 0
  br i1 %cmp68299, label %for.body69, label %if.end169

for.cond.preheader:                               ; preds = %if.end20
  %cmp24295 = icmp sgt i32 %3, 0
  br i1 %cmp24295, label %for.body, label %if.end169

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond.preheader ]
  %count.0297 = phi i32 [ %count.1, %for.inc ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds i32* %call12, i64 %indvars.iv
  %6 = load i32* %arrayidx, align 4, !tbaa !3
  %arrayidx26 = getelementptr inbounds i32* %call13, i64 %indvars.iv
  %7 = load i32* %arrayidx26, align 4, !tbaa !3
  %cmp27 = icmp eq i32 %6, %7
  br i1 %cmp27, label %if.then28, label %for.inc

if.then28:                                        ; preds = %for.body
  %idxprom31 = sext i32 %count.0297 to i64
  %arrayidx32 = getelementptr inbounds i32* %call12, i64 %idxprom31
  store i32 %6, i32* %arrayidx32, align 4, !tbaa !3
  %8 = load i32* %arrayidx26, align 4, !tbaa !3
  %arrayidx36 = getelementptr inbounds i32* %call13, i64 %idxprom31
  store i32 %8, i32* %arrayidx36, align 4, !tbaa !3
  %9 = load i32* %inputMode, align 4, !tbaa !3
  switch i32 %9, label %if.end60 [
    i32 1, label %if.then39
    i32 2, label %if.then46
  ]

if.then39:                                        ; preds = %if.then28
  %arrayidx41 = getelementptr inbounds double* %dvec.0, i64 %indvars.iv
  %10 = load double* %arrayidx41, align 8, !tbaa !4
  %arrayidx43 = getelementptr inbounds double* %dvec.0, i64 %idxprom31
  store double %10, double* %arrayidx43, align 8, !tbaa !4
  br label %if.end60

if.then46:                                        ; preds = %if.then28
  %11 = trunc i64 %indvars.iv to i32
  %mul = shl nsw i32 %11, 1
  %idxprom47 = sext i32 %mul to i64
  %arrayidx48 = getelementptr inbounds double* %dvec.0, i64 %idxprom47
  %12 = load double* %arrayidx48, align 8, !tbaa !4
  %mul49 = shl nsw i32 %count.0297, 1
  %idxprom50 = sext i32 %mul49 to i64
  %arrayidx51 = getelementptr inbounds double* %dvec.0, i64 %idxprom50
  store double %12, double* %arrayidx51, align 8, !tbaa !4
  %add289 = or i32 %mul, 1
  %idxprom53 = sext i32 %add289 to i64
  %arrayidx54 = getelementptr inbounds double* %dvec.0, i64 %idxprom53
  %13 = load double* %arrayidx54, align 8, !tbaa !4
  %add56290 = or i32 %mul49, 1
  %idxprom57 = sext i32 %add56290 to i64
  %arrayidx58 = getelementptr inbounds double* %dvec.0, i64 %idxprom57
  store double %13, double* %arrayidx58, align 8, !tbaa !4
  br label %if.end60

if.end60:                                         ; preds = %if.then28, %if.then46, %if.then39
  %inc = add nsw i32 %count.0297, 1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.end60
  %count.1 = phi i32 [ %inc, %if.end60 ], [ %count.0297, %for.body ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %3
  br i1 %exitcond, label %if.end169, label %for.body

for.body69:                                       ; preds = %for.cond67.preheader, %for.inc113
  %indvars.iv308 = phi i64 [ %indvars.iv.next309, %for.inc113 ], [ 0, %for.cond67.preheader ]
  %count.2301 = phi i32 [ %count.3, %for.inc113 ], [ 0, %for.cond67.preheader ]
  %arrayidx71 = getelementptr inbounds i32* %call12, i64 %indvars.iv308
  %14 = load i32* %arrayidx71, align 4, !tbaa !3
  %arrayidx73 = getelementptr inbounds i32* %call13, i64 %indvars.iv308
  %15 = load i32* %arrayidx73, align 4, !tbaa !3
  %cmp74 = icmp eq i32 %14, %15
  br i1 %cmp74, label %if.then75, label %for.inc113

if.then75:                                        ; preds = %for.body69
  %idxprom78 = sext i32 %count.2301 to i64
  %arrayidx79 = getelementptr inbounds i32* %call12, i64 %idxprom78
  store i32 %14, i32* %arrayidx79, align 4, !tbaa !3
  %16 = load i32* %arrayidx73, align 4, !tbaa !3
  %arrayidx83 = getelementptr inbounds i32* %call13, i64 %idxprom78
  store i32 %16, i32* %arrayidx83, align 4, !tbaa !3
  %17 = load i32* %inputMode, align 4, !tbaa !3
  switch i32 %17, label %if.end110 [
    i32 1, label %if.then86
    i32 2, label %if.then94
  ]

if.then86:                                        ; preds = %if.then75
  %arrayidx88 = getelementptr inbounds double* %dvec.0, i64 %indvars.iv308
  %18 = load double* %arrayidx88, align 8, !tbaa !4
  %arrayidx90 = getelementptr inbounds double* %dvec.0, i64 %idxprom78
  store double %18, double* %arrayidx90, align 8, !tbaa !4
  br label %if.end110

if.then94:                                        ; preds = %if.then75
  %19 = trunc i64 %indvars.iv308 to i32
  %mul95 = shl nsw i32 %19, 1
  %idxprom96 = sext i32 %mul95 to i64
  %arrayidx97 = getelementptr inbounds double* %dvec.0, i64 %idxprom96
  %20 = load double* %arrayidx97, align 8, !tbaa !4
  %mul98 = shl nsw i32 %count.2301, 1
  %idxprom99 = sext i32 %mul98 to i64
  %arrayidx100 = getelementptr inbounds double* %dvec.0, i64 %idxprom99
  store double %20, double* %arrayidx100, align 8, !tbaa !4
  %add102287 = or i32 %mul95, 1
  %idxprom103 = sext i32 %add102287 to i64
  %arrayidx104 = getelementptr inbounds double* %dvec.0, i64 %idxprom103
  %21 = load double* %arrayidx104, align 8, !tbaa !4
  %add106288 = or i32 %mul98, 1
  %idxprom107 = sext i32 %add106288 to i64
  %arrayidx108 = getelementptr inbounds double* %dvec.0, i64 %idxprom107
  store double %21, double* %arrayidx108, align 8, !tbaa !4
  br label %if.end110

if.end110:                                        ; preds = %if.then75, %if.then94, %if.then86
  %inc111 = add nsw i32 %count.2301, 1
  br label %for.inc113

for.inc113:                                       ; preds = %for.body69, %if.end110
  %count.3 = phi i32 [ %inc111, %if.end110 ], [ %count.2301, %for.body69 ]
  %indvars.iv.next309 = add i64 %indvars.iv308, 1
  %lftr.wideiv310 = trunc i64 %indvars.iv.next309 to i32
  %exitcond311 = icmp eq i32 %lftr.wideiv310, %3
  br i1 %exitcond311, label %if.end169, label %for.body69

for.body122:                                      ; preds = %for.cond120.preheader, %for.inc164
  %indvars.iv312 = phi i64 [ %indvars.iv.next313, %for.inc164 ], [ 0, %for.cond120.preheader ]
  %count.4306 = phi i32 [ %count.5, %for.inc164 ], [ 0, %for.cond120.preheader ]
  %arrayidx124 = getelementptr inbounds i32* %call13, i64 %indvars.iv312
  %22 = load i32* %arrayidx124, align 4, !tbaa !3
  %cmp125 = icmp eq i32 %22, 0
  br i1 %cmp125, label %if.then126, label %for.inc164

if.then126:                                       ; preds = %for.body122
  %arrayidx128 = getelementptr inbounds i32* %call12, i64 %indvars.iv312
  %23 = load i32* %arrayidx128, align 4, !tbaa !3
  %idxprom129 = sext i32 %count.4306 to i64
  %arrayidx130 = getelementptr inbounds i32* %call12, i64 %idxprom129
  store i32 %23, i32* %arrayidx130, align 4, !tbaa !3
  %24 = load i32* %arrayidx124, align 4, !tbaa !3
  %arrayidx134 = getelementptr inbounds i32* %call13, i64 %idxprom129
  store i32 %24, i32* %arrayidx134, align 4, !tbaa !3
  %25 = load i32* %inputMode, align 4, !tbaa !3
  switch i32 %25, label %if.end161 [
    i32 1, label %if.then137
    i32 2, label %if.then145
  ]

if.then137:                                       ; preds = %if.then126
  %arrayidx139 = getelementptr inbounds double* %dvec.0, i64 %indvars.iv312
  %26 = load double* %arrayidx139, align 8, !tbaa !4
  %arrayidx141 = getelementptr inbounds double* %dvec.0, i64 %idxprom129
  store double %26, double* %arrayidx141, align 8, !tbaa !4
  br label %if.end161

if.then145:                                       ; preds = %if.then126
  %27 = trunc i64 %indvars.iv312 to i32
  %mul146 = shl nsw i32 %27, 1
  %idxprom147 = sext i32 %mul146 to i64
  %arrayidx148 = getelementptr inbounds double* %dvec.0, i64 %idxprom147
  %28 = load double* %arrayidx148, align 8, !tbaa !4
  %mul149 = shl nsw i32 %count.4306, 1
  %idxprom150 = sext i32 %mul149 to i64
  %arrayidx151 = getelementptr inbounds double* %dvec.0, i64 %idxprom150
  store double %28, double* %arrayidx151, align 8, !tbaa !4
  %add153285 = or i32 %mul146, 1
  %idxprom154 = sext i32 %add153285 to i64
  %arrayidx155 = getelementptr inbounds double* %dvec.0, i64 %idxprom154
  %29 = load double* %arrayidx155, align 8, !tbaa !4
  %add157286 = or i32 %mul149, 1
  %idxprom158 = sext i32 %add157286 to i64
  %arrayidx159 = getelementptr inbounds double* %dvec.0, i64 %idxprom158
  store double %29, double* %arrayidx159, align 8, !tbaa !4
  br label %if.end161

if.end161:                                        ; preds = %if.then126, %if.then145, %if.then137
  %inc162 = add nsw i32 %count.4306, 1
  br label %for.inc164

for.inc164:                                       ; preds = %for.body122, %if.end161
  %count.5 = phi i32 [ %inc162, %if.end161 ], [ %count.4306, %for.body122 ]
  %indvars.iv.next313 = add i64 %indvars.iv312, 1
  %lftr.wideiv314 = trunc i64 %indvars.iv.next313 to i32
  %exitcond315 = icmp eq i32 %lftr.wideiv314, %3
  br i1 %exitcond315, label %if.end169, label %for.body122

if.end169:                                        ; preds = %for.cond120.preheader, %for.inc164, %for.cond67.preheader, %for.inc113, %for.cond.preheader, %for.inc, %if.end20
  %count.6 = phi i32 [ 0, %if.end20 ], [ 0, %for.cond.preheader ], [ %count.1, %for.inc ], [ 0, %for.cond67.preheader ], [ %count.3, %for.inc113 ], [ 0, %for.cond120.preheader ], [ %count.5, %for.inc164 ]
  store i32 %count.6, i32* %nent11, align 4, !tbaa !3
  %ivec1IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 6
  tail call void @IV_setSize(%struct._IV* %ivec1IV, i32 %count.6) #6
  %ivec2IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 7
  tail call void @IV_setSize(%struct._IV* %ivec2IV, i32 %count.6) #6
  %30 = load i32* %inputMode, align 4, !tbaa !3
  %.off293 = add i32 %30, -1
  %switch294 = icmp ult i32 %.off293, 2
  br i1 %switch294, label %if.then176, label %if.end177

if.then176:                                       ; preds = %if.end169
  %dvecDV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 8
  tail call void @DV_setSize(%struct._DV* %dvecDV, i32 %count.6) #6
  br label %if.end177

if.end177:                                        ; preds = %if.end169, %if.then176
  ret void
}

; Function Attrs: optsize
declare void @IV_setSize(%struct._IV*, i32) #3

; Function Attrs: optsize
declare void @DV_setSize(%struct._DV*, i32) #3

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_dropLowerTriangle(%struct._InpMtx* %inpmtx) #0 {
entry:
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([58 x i8]* @.str4, i64 0, i64 0), %struct._InpMtx* null) #6
  tail call void @exit(i32 -1) #7
  unreachable

if.end:                                           ; preds = %entry
  %coordType = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 0
  %1 = load i32* %coordType, align 4, !tbaa !3
  %.off = add i32 %1, -1
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([63 x i8]* @.str5, i64 0, i64 0), %struct._InpMtx* %inpmtx) #6
  tail call void @exit(i32 -1) #7
  unreachable

if.end9:                                          ; preds = %if.end
  %nent10 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 4
  %3 = load i32* %nent10, align 4, !tbaa !3
  %call11 = tail call i32* @InpMtx_ivec1(%struct._InpMtx* %inpmtx) #6
  %call12 = tail call i32* @InpMtx_ivec2(%struct._InpMtx* %inpmtx) #6
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2
  %4 = load i32* %inputMode, align 4, !tbaa !3
  %.off294 = add i32 %4, -1
  %switch295 = icmp ult i32 %.off294, 2
  br i1 %switch295, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end9
  %call18 = tail call double* @InpMtx_dvec(%struct._InpMtx* %inpmtx) #6
  br label %if.end19

if.end19:                                         ; preds = %if.end9, %if.then17
  %dvec.0 = phi double* [ %call18, %if.then17 ], [ undef, %if.end9 ]
  %5 = load i32* %coordType, align 4, !tbaa !3
  switch i32 %5, label %if.end168 [
    i32 1, label %for.cond.preheader
    i32 2, label %for.cond66.preheader
    i32 3, label %for.cond119.preheader
  ]

for.cond119.preheader:                            ; preds = %if.end19
  %cmp120305 = icmp sgt i32 %3, 0
  br i1 %cmp120305, label %for.body121, label %if.end168

for.cond66.preheader:                             ; preds = %if.end19
  %cmp67300 = icmp sgt i32 %3, 0
  br i1 %cmp67300, label %for.body68, label %if.end168

for.cond.preheader:                               ; preds = %if.end19
  %cmp23296 = icmp sgt i32 %3, 0
  br i1 %cmp23296, label %for.body, label %if.end168

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond.preheader ]
  %count.0298 = phi i32 [ %count.1, %for.inc ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds i32* %call11, i64 %indvars.iv
  %6 = load i32* %arrayidx, align 4, !tbaa !3
  %arrayidx25 = getelementptr inbounds i32* %call12, i64 %indvars.iv
  %7 = load i32* %arrayidx25, align 4, !tbaa !3
  %cmp26 = icmp sgt i32 %6, %7
  br i1 %cmp26, label %for.inc, label %if.then27

if.then27:                                        ; preds = %for.body
  %idxprom30 = sext i32 %count.0298 to i64
  %arrayidx31 = getelementptr inbounds i32* %call11, i64 %idxprom30
  store i32 %6, i32* %arrayidx31, align 4, !tbaa !3
  %8 = load i32* %arrayidx25, align 4, !tbaa !3
  %arrayidx35 = getelementptr inbounds i32* %call12, i64 %idxprom30
  store i32 %8, i32* %arrayidx35, align 4, !tbaa !3
  %9 = load i32* %inputMode, align 4, !tbaa !3
  switch i32 %9, label %if.end59 [
    i32 1, label %if.then38
    i32 2, label %if.then45
  ]

if.then38:                                        ; preds = %if.then27
  %arrayidx40 = getelementptr inbounds double* %dvec.0, i64 %indvars.iv
  %10 = load double* %arrayidx40, align 8, !tbaa !4
  %arrayidx42 = getelementptr inbounds double* %dvec.0, i64 %idxprom30
  store double %10, double* %arrayidx42, align 8, !tbaa !4
  br label %if.end59

if.then45:                                        ; preds = %if.then27
  %11 = trunc i64 %indvars.iv to i32
  %mul = shl nsw i32 %11, 1
  %idxprom46 = sext i32 %mul to i64
  %arrayidx47 = getelementptr inbounds double* %dvec.0, i64 %idxprom46
  %12 = load double* %arrayidx47, align 8, !tbaa !4
  %mul48 = shl nsw i32 %count.0298, 1
  %idxprom49 = sext i32 %mul48 to i64
  %arrayidx50 = getelementptr inbounds double* %dvec.0, i64 %idxprom49
  store double %12, double* %arrayidx50, align 8, !tbaa !4
  %add292 = or i32 %mul, 1
  %idxprom52 = sext i32 %add292 to i64
  %arrayidx53 = getelementptr inbounds double* %dvec.0, i64 %idxprom52
  %13 = load double* %arrayidx53, align 8, !tbaa !4
  %add55293 = or i32 %mul48, 1
  %idxprom56 = sext i32 %add55293 to i64
  %arrayidx57 = getelementptr inbounds double* %dvec.0, i64 %idxprom56
  store double %13, double* %arrayidx57, align 8, !tbaa !4
  br label %if.end59

if.end59:                                         ; preds = %if.then27, %if.then45, %if.then38
  %inc = add nsw i32 %count.0298, 1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.end59
  %count.1 = phi i32 [ %inc, %if.end59 ], [ %count.0298, %for.body ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %3
  br i1 %exitcond, label %if.end168, label %for.body

for.body68:                                       ; preds = %for.cond66.preheader, %for.inc112
  %indvars.iv309 = phi i64 [ %indvars.iv.next310, %for.inc112 ], [ 0, %for.cond66.preheader ]
  %count.2302 = phi i32 [ %count.3, %for.inc112 ], [ 0, %for.cond66.preheader ]
  %arrayidx70 = getelementptr inbounds i32* %call11, i64 %indvars.iv309
  %14 = load i32* %arrayidx70, align 4, !tbaa !3
  %arrayidx72 = getelementptr inbounds i32* %call12, i64 %indvars.iv309
  %15 = load i32* %arrayidx72, align 4, !tbaa !3
  %cmp73 = icmp slt i32 %14, %15
  br i1 %cmp73, label %for.inc112, label %if.then74

if.then74:                                        ; preds = %for.body68
  %idxprom77 = sext i32 %count.2302 to i64
  %arrayidx78 = getelementptr inbounds i32* %call11, i64 %idxprom77
  store i32 %14, i32* %arrayidx78, align 4, !tbaa !3
  %16 = load i32* %arrayidx72, align 4, !tbaa !3
  %arrayidx82 = getelementptr inbounds i32* %call12, i64 %idxprom77
  store i32 %16, i32* %arrayidx82, align 4, !tbaa !3
  %17 = load i32* %inputMode, align 4, !tbaa !3
  switch i32 %17, label %if.end109 [
    i32 1, label %if.then85
    i32 2, label %if.then93
  ]

if.then85:                                        ; preds = %if.then74
  %arrayidx87 = getelementptr inbounds double* %dvec.0, i64 %indvars.iv309
  %18 = load double* %arrayidx87, align 8, !tbaa !4
  %arrayidx89 = getelementptr inbounds double* %dvec.0, i64 %idxprom77
  store double %18, double* %arrayidx89, align 8, !tbaa !4
  br label %if.end109

if.then93:                                        ; preds = %if.then74
  %19 = trunc i64 %indvars.iv309 to i32
  %mul94 = shl nsw i32 %19, 1
  %idxprom95 = sext i32 %mul94 to i64
  %arrayidx96 = getelementptr inbounds double* %dvec.0, i64 %idxprom95
  %20 = load double* %arrayidx96, align 8, !tbaa !4
  %mul97 = shl nsw i32 %count.2302, 1
  %idxprom98 = sext i32 %mul97 to i64
  %arrayidx99 = getelementptr inbounds double* %dvec.0, i64 %idxprom98
  store double %20, double* %arrayidx99, align 8, !tbaa !4
  %add101290 = or i32 %mul94, 1
  %idxprom102 = sext i32 %add101290 to i64
  %arrayidx103 = getelementptr inbounds double* %dvec.0, i64 %idxprom102
  %21 = load double* %arrayidx103, align 8, !tbaa !4
  %add105291 = or i32 %mul97, 1
  %idxprom106 = sext i32 %add105291 to i64
  %arrayidx107 = getelementptr inbounds double* %dvec.0, i64 %idxprom106
  store double %21, double* %arrayidx107, align 8, !tbaa !4
  br label %if.end109

if.end109:                                        ; preds = %if.then74, %if.then93, %if.then85
  %inc110 = add nsw i32 %count.2302, 1
  br label %for.inc112

for.inc112:                                       ; preds = %for.body68, %if.end109
  %count.3 = phi i32 [ %inc110, %if.end109 ], [ %count.2302, %for.body68 ]
  %indvars.iv.next310 = add i64 %indvars.iv309, 1
  %lftr.wideiv311 = trunc i64 %indvars.iv.next310 to i32
  %exitcond312 = icmp eq i32 %lftr.wideiv311, %3
  br i1 %exitcond312, label %if.end168, label %for.body68

for.body121:                                      ; preds = %for.cond119.preheader, %for.inc163
  %indvars.iv313 = phi i64 [ %indvars.iv.next314, %for.inc163 ], [ 0, %for.cond119.preheader ]
  %count.4307 = phi i32 [ %count.5, %for.inc163 ], [ 0, %for.cond119.preheader ]
  %arrayidx123 = getelementptr inbounds i32* %call12, i64 %indvars.iv313
  %22 = load i32* %arrayidx123, align 4, !tbaa !3
  %cmp124 = icmp sgt i32 %22, -1
  br i1 %cmp124, label %if.then125, label %for.inc163

if.then125:                                       ; preds = %for.body121
  %arrayidx127 = getelementptr inbounds i32* %call11, i64 %indvars.iv313
  %23 = load i32* %arrayidx127, align 4, !tbaa !3
  %idxprom128 = sext i32 %count.4307 to i64
  %arrayidx129 = getelementptr inbounds i32* %call11, i64 %idxprom128
  store i32 %23, i32* %arrayidx129, align 4, !tbaa !3
  %24 = load i32* %arrayidx123, align 4, !tbaa !3
  %arrayidx133 = getelementptr inbounds i32* %call12, i64 %idxprom128
  store i32 %24, i32* %arrayidx133, align 4, !tbaa !3
  %25 = load i32* %inputMode, align 4, !tbaa !3
  switch i32 %25, label %if.end160 [
    i32 1, label %if.then136
    i32 2, label %if.then144
  ]

if.then136:                                       ; preds = %if.then125
  %arrayidx138 = getelementptr inbounds double* %dvec.0, i64 %indvars.iv313
  %26 = load double* %arrayidx138, align 8, !tbaa !4
  %arrayidx140 = getelementptr inbounds double* %dvec.0, i64 %idxprom128
  store double %26, double* %arrayidx140, align 8, !tbaa !4
  br label %if.end160

if.then144:                                       ; preds = %if.then125
  %27 = trunc i64 %indvars.iv313 to i32
  %mul145 = shl nsw i32 %27, 1
  %idxprom146 = sext i32 %mul145 to i64
  %arrayidx147 = getelementptr inbounds double* %dvec.0, i64 %idxprom146
  %28 = load double* %arrayidx147, align 8, !tbaa !4
  %mul148 = shl nsw i32 %count.4307, 1
  %idxprom149 = sext i32 %mul148 to i64
  %arrayidx150 = getelementptr inbounds double* %dvec.0, i64 %idxprom149
  store double %28, double* %arrayidx150, align 8, !tbaa !4
  %add152288 = or i32 %mul145, 1
  %idxprom153 = sext i32 %add152288 to i64
  %arrayidx154 = getelementptr inbounds double* %dvec.0, i64 %idxprom153
  %29 = load double* %arrayidx154, align 8, !tbaa !4
  %add156289 = or i32 %mul148, 1
  %idxprom157 = sext i32 %add156289 to i64
  %arrayidx158 = getelementptr inbounds double* %dvec.0, i64 %idxprom157
  store double %29, double* %arrayidx158, align 8, !tbaa !4
  br label %if.end160

if.end160:                                        ; preds = %if.then125, %if.then144, %if.then136
  %inc161 = add nsw i32 %count.4307, 1
  br label %for.inc163

for.inc163:                                       ; preds = %for.body121, %if.end160
  %count.5 = phi i32 [ %inc161, %if.end160 ], [ %count.4307, %for.body121 ]
  %indvars.iv.next314 = add i64 %indvars.iv313, 1
  %lftr.wideiv315 = trunc i64 %indvars.iv.next314 to i32
  %exitcond316 = icmp eq i32 %lftr.wideiv315, %3
  br i1 %exitcond316, label %if.end168, label %for.body121

if.end168:                                        ; preds = %for.cond119.preheader, %for.inc163, %for.cond66.preheader, %for.inc112, %for.cond.preheader, %for.inc, %if.end19
  %count.6 = phi i32 [ 0, %if.end19 ], [ 0, %for.cond.preheader ], [ %count.1, %for.inc ], [ 0, %for.cond66.preheader ], [ %count.3, %for.inc112 ], [ 0, %for.cond119.preheader ], [ %count.5, %for.inc163 ]
  store i32 %count.6, i32* %nent10, align 4, !tbaa !3
  %ivec1IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 6
  tail call void @IV_setSize(%struct._IV* %ivec1IV, i32 %count.6) #6
  %ivec2IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 7
  tail call void @IV_setSize(%struct._IV* %ivec2IV, i32 %count.6) #6
  %30 = load i32* %inputMode, align 4, !tbaa !3
  switch i32 %30, label %if.end180 [
    i32 1, label %if.then172
    i32 2, label %if.then176
  ]

if.then172:                                       ; preds = %if.end168
  %dvecDV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 8
  tail call void @DV_setSize(%struct._DV* %dvecDV, i32 %count.6) #6
  br label %if.end180

if.then176:                                       ; preds = %if.end168
  %dvecDV177 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 8
  %mul178 = shl nsw i32 %count.6, 1
  tail call void @DV_setSize(%struct._DV* %dvecDV177, i32 %mul178) #6
  br label %if.end180

if.end180:                                        ; preds = %if.end168, %if.then176, %if.then172
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_dropUpperTriangle(%struct._InpMtx* %inpmtx) #0 {
entry:
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([58 x i8]* @.str6, i64 0, i64 0), %struct._InpMtx* null) #6
  tail call void @exit(i32 -1) #7
  unreachable

if.end:                                           ; preds = %entry
  %coordType = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 0
  %1 = load i32* %coordType, align 4, !tbaa !3
  %.off = add i32 %1, -1
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([63 x i8]* @.str7, i64 0, i64 0), %struct._InpMtx* %inpmtx) #6
  tail call void @exit(i32 -1) #7
  unreachable

if.end9:                                          ; preds = %if.end
  %nent10 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 4
  %3 = load i32* %nent10, align 4, !tbaa !3
  %call11 = tail call i32* @InpMtx_ivec1(%struct._InpMtx* %inpmtx) #6
  %call12 = tail call i32* @InpMtx_ivec2(%struct._InpMtx* %inpmtx) #6
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2
  %4 = load i32* %inputMode, align 4, !tbaa !3
  %.off289 = add i32 %4, -1
  %switch290 = icmp ult i32 %.off289, 2
  br i1 %switch290, label %if.then17, label %if.end19

if.then17:                                        ; preds = %if.end9
  %call18 = tail call double* @InpMtx_dvec(%struct._InpMtx* %inpmtx) #6
  br label %if.end19

if.end19:                                         ; preds = %if.end9, %if.then17
  %dvec.0 = phi double* [ %call18, %if.then17 ], [ undef, %if.end9 ]
  %5 = load i32* %coordType, align 4, !tbaa !3
  switch i32 %5, label %if.end168 [
    i32 1, label %for.cond.preheader
    i32 2, label %for.cond66.preheader
    i32 3, label %for.cond119.preheader
  ]

for.cond119.preheader:                            ; preds = %if.end19
  %cmp120302 = icmp sgt i32 %3, 0
  br i1 %cmp120302, label %for.body121, label %if.end168

for.cond66.preheader:                             ; preds = %if.end19
  %cmp67297 = icmp sgt i32 %3, 0
  br i1 %cmp67297, label %for.body68, label %if.end168

for.cond.preheader:                               ; preds = %if.end19
  %cmp23293 = icmp sgt i32 %3, 0
  br i1 %cmp23293, label %for.body, label %if.end168

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond.preheader ]
  %count.0295 = phi i32 [ %count.1, %for.inc ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds i32* %call11, i64 %indvars.iv
  %6 = load i32* %arrayidx, align 4, !tbaa !3
  %arrayidx25 = getelementptr inbounds i32* %call12, i64 %indvars.iv
  %7 = load i32* %arrayidx25, align 4, !tbaa !3
  %cmp26 = icmp slt i32 %6, %7
  br i1 %cmp26, label %for.inc, label %if.then27

if.then27:                                        ; preds = %for.body
  %idxprom30 = sext i32 %count.0295 to i64
  %arrayidx31 = getelementptr inbounds i32* %call11, i64 %idxprom30
  store i32 %6, i32* %arrayidx31, align 4, !tbaa !3
  %8 = load i32* %arrayidx25, align 4, !tbaa !3
  %arrayidx35 = getelementptr inbounds i32* %call12, i64 %idxprom30
  store i32 %8, i32* %arrayidx35, align 4, !tbaa !3
  %9 = load i32* %inputMode, align 4, !tbaa !3
  switch i32 %9, label %if.end59 [
    i32 1, label %if.then38
    i32 2, label %if.then45
  ]

if.then38:                                        ; preds = %if.then27
  %arrayidx40 = getelementptr inbounds double* %dvec.0, i64 %indvars.iv
  %10 = load double* %arrayidx40, align 8, !tbaa !4
  %arrayidx42 = getelementptr inbounds double* %dvec.0, i64 %idxprom30
  store double %10, double* %arrayidx42, align 8, !tbaa !4
  br label %if.end59

if.then45:                                        ; preds = %if.then27
  %11 = trunc i64 %indvars.iv to i32
  %mul = shl nsw i32 %11, 1
  %idxprom46 = sext i32 %mul to i64
  %arrayidx47 = getelementptr inbounds double* %dvec.0, i64 %idxprom46
  %12 = load double* %arrayidx47, align 8, !tbaa !4
  %mul48 = shl nsw i32 %count.0295, 1
  %idxprom49 = sext i32 %mul48 to i64
  %arrayidx50 = getelementptr inbounds double* %dvec.0, i64 %idxprom49
  store double %12, double* %arrayidx50, align 8, !tbaa !4
  %add287 = or i32 %mul, 1
  %idxprom52 = sext i32 %add287 to i64
  %arrayidx53 = getelementptr inbounds double* %dvec.0, i64 %idxprom52
  %13 = load double* %arrayidx53, align 8, !tbaa !4
  %add55288 = or i32 %mul48, 1
  %idxprom56 = sext i32 %add55288 to i64
  %arrayidx57 = getelementptr inbounds double* %dvec.0, i64 %idxprom56
  store double %13, double* %arrayidx57, align 8, !tbaa !4
  br label %if.end59

if.end59:                                         ; preds = %if.then27, %if.then45, %if.then38
  %inc = add nsw i32 %count.0295, 1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.end59
  %count.1 = phi i32 [ %inc, %if.end59 ], [ %count.0295, %for.body ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %3
  br i1 %exitcond, label %if.end168, label %for.body

for.body68:                                       ; preds = %for.cond66.preheader, %for.inc112
  %indvars.iv306 = phi i64 [ %indvars.iv.next307, %for.inc112 ], [ 0, %for.cond66.preheader ]
  %count.2299 = phi i32 [ %count.3, %for.inc112 ], [ 0, %for.cond66.preheader ]
  %arrayidx70 = getelementptr inbounds i32* %call11, i64 %indvars.iv306
  %14 = load i32* %arrayidx70, align 4, !tbaa !3
  %arrayidx72 = getelementptr inbounds i32* %call12, i64 %indvars.iv306
  %15 = load i32* %arrayidx72, align 4, !tbaa !3
  %cmp73 = icmp sgt i32 %14, %15
  br i1 %cmp73, label %for.inc112, label %if.then74

if.then74:                                        ; preds = %for.body68
  %idxprom77 = sext i32 %count.2299 to i64
  %arrayidx78 = getelementptr inbounds i32* %call11, i64 %idxprom77
  store i32 %14, i32* %arrayidx78, align 4, !tbaa !3
  %16 = load i32* %arrayidx72, align 4, !tbaa !3
  %arrayidx82 = getelementptr inbounds i32* %call12, i64 %idxprom77
  store i32 %16, i32* %arrayidx82, align 4, !tbaa !3
  %17 = load i32* %inputMode, align 4, !tbaa !3
  switch i32 %17, label %if.end109 [
    i32 1, label %if.then85
    i32 2, label %if.then93
  ]

if.then85:                                        ; preds = %if.then74
  %arrayidx87 = getelementptr inbounds double* %dvec.0, i64 %indvars.iv306
  %18 = load double* %arrayidx87, align 8, !tbaa !4
  %arrayidx89 = getelementptr inbounds double* %dvec.0, i64 %idxprom77
  store double %18, double* %arrayidx89, align 8, !tbaa !4
  br label %if.end109

if.then93:                                        ; preds = %if.then74
  %19 = trunc i64 %indvars.iv306 to i32
  %mul94 = shl nsw i32 %19, 1
  %idxprom95 = sext i32 %mul94 to i64
  %arrayidx96 = getelementptr inbounds double* %dvec.0, i64 %idxprom95
  %20 = load double* %arrayidx96, align 8, !tbaa !4
  %mul97 = shl nsw i32 %count.2299, 1
  %idxprom98 = sext i32 %mul97 to i64
  %arrayidx99 = getelementptr inbounds double* %dvec.0, i64 %idxprom98
  store double %20, double* %arrayidx99, align 8, !tbaa !4
  %add101285 = or i32 %mul94, 1
  %idxprom102 = sext i32 %add101285 to i64
  %arrayidx103 = getelementptr inbounds double* %dvec.0, i64 %idxprom102
  %21 = load double* %arrayidx103, align 8, !tbaa !4
  %add105286 = or i32 %mul97, 1
  %idxprom106 = sext i32 %add105286 to i64
  %arrayidx107 = getelementptr inbounds double* %dvec.0, i64 %idxprom106
  store double %21, double* %arrayidx107, align 8, !tbaa !4
  br label %if.end109

if.end109:                                        ; preds = %if.then74, %if.then93, %if.then85
  %inc110 = add nsw i32 %count.2299, 1
  br label %for.inc112

for.inc112:                                       ; preds = %for.body68, %if.end109
  %count.3 = phi i32 [ %inc110, %if.end109 ], [ %count.2299, %for.body68 ]
  %indvars.iv.next307 = add i64 %indvars.iv306, 1
  %lftr.wideiv308 = trunc i64 %indvars.iv.next307 to i32
  %exitcond309 = icmp eq i32 %lftr.wideiv308, %3
  br i1 %exitcond309, label %if.end168, label %for.body68

for.body121:                                      ; preds = %for.cond119.preheader, %for.inc163
  %indvars.iv310 = phi i64 [ %indvars.iv.next311, %for.inc163 ], [ 0, %for.cond119.preheader ]
  %count.4304 = phi i32 [ %count.5, %for.inc163 ], [ 0, %for.cond119.preheader ]
  %arrayidx123 = getelementptr inbounds i32* %call12, i64 %indvars.iv310
  %22 = load i32* %arrayidx123, align 4, !tbaa !3
  %cmp124 = icmp slt i32 %22, 1
  br i1 %cmp124, label %if.then125, label %for.inc163

if.then125:                                       ; preds = %for.body121
  %arrayidx127 = getelementptr inbounds i32* %call11, i64 %indvars.iv310
  %23 = load i32* %arrayidx127, align 4, !tbaa !3
  %idxprom128 = sext i32 %count.4304 to i64
  %arrayidx129 = getelementptr inbounds i32* %call11, i64 %idxprom128
  store i32 %23, i32* %arrayidx129, align 4, !tbaa !3
  %24 = load i32* %arrayidx123, align 4, !tbaa !3
  %arrayidx133 = getelementptr inbounds i32* %call12, i64 %idxprom128
  store i32 %24, i32* %arrayidx133, align 4, !tbaa !3
  %25 = load i32* %inputMode, align 4, !tbaa !3
  switch i32 %25, label %if.end160 [
    i32 1, label %if.then136
    i32 2, label %if.then144
  ]

if.then136:                                       ; preds = %if.then125
  %arrayidx138 = getelementptr inbounds double* %dvec.0, i64 %indvars.iv310
  %26 = load double* %arrayidx138, align 8, !tbaa !4
  %arrayidx140 = getelementptr inbounds double* %dvec.0, i64 %idxprom128
  store double %26, double* %arrayidx140, align 8, !tbaa !4
  br label %if.end160

if.then144:                                       ; preds = %if.then125
  %27 = trunc i64 %indvars.iv310 to i32
  %mul145 = shl nsw i32 %27, 1
  %idxprom146 = sext i32 %mul145 to i64
  %arrayidx147 = getelementptr inbounds double* %dvec.0, i64 %idxprom146
  %28 = load double* %arrayidx147, align 8, !tbaa !4
  %mul148 = shl nsw i32 %count.4304, 1
  %idxprom149 = sext i32 %mul148 to i64
  %arrayidx150 = getelementptr inbounds double* %dvec.0, i64 %idxprom149
  store double %28, double* %arrayidx150, align 8, !tbaa !4
  %add152283 = or i32 %mul145, 1
  %idxprom153 = sext i32 %add152283 to i64
  %arrayidx154 = getelementptr inbounds double* %dvec.0, i64 %idxprom153
  %29 = load double* %arrayidx154, align 8, !tbaa !4
  %add156284 = or i32 %mul148, 1
  %idxprom157 = sext i32 %add156284 to i64
  %arrayidx158 = getelementptr inbounds double* %dvec.0, i64 %idxprom157
  store double %29, double* %arrayidx158, align 8, !tbaa !4
  br label %if.end160

if.end160:                                        ; preds = %if.then125, %if.then144, %if.then136
  %inc161 = add nsw i32 %count.4304, 1
  br label %for.inc163

for.inc163:                                       ; preds = %for.body121, %if.end160
  %count.5 = phi i32 [ %inc161, %if.end160 ], [ %count.4304, %for.body121 ]
  %indvars.iv.next311 = add i64 %indvars.iv310, 1
  %lftr.wideiv312 = trunc i64 %indvars.iv.next311 to i32
  %exitcond313 = icmp eq i32 %lftr.wideiv312, %3
  br i1 %exitcond313, label %if.end168, label %for.body121

if.end168:                                        ; preds = %for.cond119.preheader, %for.inc163, %for.cond66.preheader, %for.inc112, %for.cond.preheader, %for.inc, %if.end19
  %count.6 = phi i32 [ 0, %if.end19 ], [ 0, %for.cond.preheader ], [ %count.1, %for.inc ], [ 0, %for.cond66.preheader ], [ %count.3, %for.inc112 ], [ 0, %for.cond119.preheader ], [ %count.5, %for.inc163 ]
  store i32 %count.6, i32* %nent10, align 4, !tbaa !3
  %ivec1IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 6
  tail call void @IV_setSize(%struct._IV* %ivec1IV, i32 %count.6) #6
  %ivec2IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 7
  tail call void @IV_setSize(%struct._IV* %ivec2IV, i32 %count.6) #6
  %30 = load i32* %inputMode, align 4, !tbaa !3
  %.off291 = add i32 %30, -1
  %switch292 = icmp ult i32 %.off291, 2
  br i1 %switch292, label %if.then175, label %if.end176

if.then175:                                       ; preds = %if.end168
  %dvecDV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 8
  tail call void @DV_setSize(%struct._DV* %dvecDV, i32 %count.6) #6
  br label %if.end176

if.end176:                                        ; preds = %if.end168, %if.then175
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_mapToLowerTriangle(%struct._InpMtx* %inpmtx) #0 {
entry:
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([59 x i8]* @.str8, i64 0, i64 0), %struct._InpMtx* null) #6
  tail call void @exit(i32 -1) #7
  unreachable

if.end:                                           ; preds = %entry
  %coordType = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 0
  %1 = load i32* %coordType, align 4, !tbaa !3
  %.off = add i32 %1, -1
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([63 x i8]* @.str9, i64 0, i64 0), %struct._InpMtx* %inpmtx) #6
  tail call void @exit(i32 -1) #7
  unreachable

if.end9:                                          ; preds = %if.end
  %nent10 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 4
  %3 = load i32* %nent10, align 4, !tbaa !3
  %call11 = tail call i32* @InpMtx_ivec1(%struct._InpMtx* %inpmtx) #6
  %call12 = tail call i32* @InpMtx_ivec2(%struct._InpMtx* %inpmtx) #6
  %4 = load i32* %coordType, align 4, !tbaa !3
  switch i32 %4, label %if.end67 [
    i32 1, label %for.cond.preheader
    i32 2, label %for.cond29.preheader
    i32 3, label %for.cond50.preheader
  ]

for.cond50.preheader:                             ; preds = %if.end9
  %cmp51114 = icmp sgt i32 %3, 0
  br i1 %cmp51114, label %for.body52, label %if.end67

for.cond29.preheader:                             ; preds = %if.end9
  %cmp30111 = icmp sgt i32 %3, 0
  br i1 %cmp30111, label %for.body31, label %if.end67

for.cond.preheader:                               ; preds = %if.end9
  %cmp16108 = icmp sgt i32 %3, 0
  br i1 %cmp16108, label %for.body, label %if.end67

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds i32* %call11, i64 %indvars.iv
  %5 = load i32* %arrayidx, align 4, !tbaa !3
  %arrayidx18 = getelementptr inbounds i32* %call12, i64 %indvars.iv
  %6 = load i32* %arrayidx18, align 4, !tbaa !3
  %cmp19 = icmp slt i32 %5, %6
  br i1 %cmp19, label %if.then20, label %for.inc

if.then20:                                        ; preds = %for.body
  store i32 %6, i32* %arrayidx, align 4, !tbaa !3
  store i32 %5, i32* %arrayidx18, align 4, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then20
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %3
  br i1 %exitcond, label %if.end67, label %for.body

for.body31:                                       ; preds = %for.cond29.preheader, %for.inc43
  %indvars.iv116 = phi i64 [ %indvars.iv.next117, %for.inc43 ], [ 0, %for.cond29.preheader ]
  %arrayidx33 = getelementptr inbounds i32* %call12, i64 %indvars.iv116
  %7 = load i32* %arrayidx33, align 4, !tbaa !3
  %arrayidx35 = getelementptr inbounds i32* %call11, i64 %indvars.iv116
  %8 = load i32* %arrayidx35, align 4, !tbaa !3
  %cmp36 = icmp slt i32 %7, %8
  br i1 %cmp36, label %if.then37, label %for.inc43

if.then37:                                        ; preds = %for.body31
  store i32 %7, i32* %arrayidx35, align 4, !tbaa !3
  store i32 %8, i32* %arrayidx33, align 4, !tbaa !3
  br label %for.inc43

for.inc43:                                        ; preds = %for.body31, %if.then37
  %indvars.iv.next117 = add i64 %indvars.iv116, 1
  %lftr.wideiv118 = trunc i64 %indvars.iv.next117 to i32
  %exitcond119 = icmp eq i32 %lftr.wideiv118, %3
  br i1 %exitcond119, label %if.end67, label %for.body31

for.body52:                                       ; preds = %for.cond50.preheader, %for.inc62
  %indvars.iv120 = phi i64 [ %indvars.iv.next121, %for.inc62 ], [ 0, %for.cond50.preheader ]
  %arrayidx54 = getelementptr inbounds i32* %call12, i64 %indvars.iv120
  %9 = load i32* %arrayidx54, align 4, !tbaa !3
  %cmp55 = icmp sgt i32 %9, 0
  br i1 %cmp55, label %if.then56, label %for.inc62

if.then56:                                        ; preds = %for.body52
  %sub = sub nsw i32 0, %9
  store i32 %sub, i32* %arrayidx54, align 4, !tbaa !3
  br label %for.inc62

for.inc62:                                        ; preds = %for.body52, %if.then56
  %indvars.iv.next121 = add i64 %indvars.iv120, 1
  %lftr.wideiv122 = trunc i64 %indvars.iv.next121 to i32
  %exitcond123 = icmp eq i32 %lftr.wideiv122, %3
  br i1 %exitcond123, label %if.end67, label %for.body52

if.end67:                                         ; preds = %for.cond50.preheader, %for.inc62, %for.cond29.preheader, %for.inc43, %for.cond.preheader, %for.inc, %if.end9
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_mapToUpperTriangle(%struct._InpMtx* %inpmtx) #0 {
entry:
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([59 x i8]* @.str10, i64 0, i64 0), %struct._InpMtx* null) #6
  tail call void @exit(i32 -1) #7
  unreachable

if.end:                                           ; preds = %entry
  %coordType = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 0
  %1 = load i32* %coordType, align 4, !tbaa !3
  %.off = add i32 %1, -1
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %if.end10, label %if.then7

if.then7:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([88 x i8]* @.str11, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %1) #6
  tail call void @exit(i32 -1) #7
  unreachable

if.end10:                                         ; preds = %if.end
  %nent11 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 4
  %3 = load i32* %nent11, align 4, !tbaa !3
  %call12 = tail call i32* @InpMtx_ivec1(%struct._InpMtx* %inpmtx) #6
  %call13 = tail call i32* @InpMtx_ivec2(%struct._InpMtx* %inpmtx) #6
  %4 = load i32* %coordType, align 4, !tbaa !3
  switch i32 %4, label %if.end68 [
    i32 1, label %for.cond.preheader
    i32 2, label %for.cond30.preheader
    i32 3, label %for.cond51.preheader
  ]

for.cond51.preheader:                             ; preds = %if.end10
  %cmp52117 = icmp sgt i32 %3, 0
  br i1 %cmp52117, label %for.body53, label %if.end68

for.cond30.preheader:                             ; preds = %if.end10
  %cmp31114 = icmp sgt i32 %3, 0
  br i1 %cmp31114, label %for.body32, label %if.end68

for.cond.preheader:                               ; preds = %if.end10
  %cmp17111 = icmp sgt i32 %3, 0
  br i1 %cmp17111, label %for.body, label %if.end68

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds i32* %call12, i64 %indvars.iv
  %5 = load i32* %arrayidx, align 4, !tbaa !3
  %arrayidx19 = getelementptr inbounds i32* %call13, i64 %indvars.iv
  %6 = load i32* %arrayidx19, align 4, !tbaa !3
  %cmp20 = icmp sgt i32 %5, %6
  br i1 %cmp20, label %if.then21, label %for.inc

if.then21:                                        ; preds = %for.body
  store i32 %6, i32* %arrayidx, align 4, !tbaa !3
  store i32 %5, i32* %arrayidx19, align 4, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then21
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %3
  br i1 %exitcond, label %if.end68, label %for.body

for.body32:                                       ; preds = %for.cond30.preheader, %for.inc44
  %indvars.iv119 = phi i64 [ %indvars.iv.next120, %for.inc44 ], [ 0, %for.cond30.preheader ]
  %arrayidx34 = getelementptr inbounds i32* %call13, i64 %indvars.iv119
  %7 = load i32* %arrayidx34, align 4, !tbaa !3
  %arrayidx36 = getelementptr inbounds i32* %call12, i64 %indvars.iv119
  %8 = load i32* %arrayidx36, align 4, !tbaa !3
  %cmp37 = icmp sgt i32 %7, %8
  br i1 %cmp37, label %if.then38, label %for.inc44

if.then38:                                        ; preds = %for.body32
  store i32 %7, i32* %arrayidx36, align 4, !tbaa !3
  store i32 %8, i32* %arrayidx34, align 4, !tbaa !3
  br label %for.inc44

for.inc44:                                        ; preds = %for.body32, %if.then38
  %indvars.iv.next120 = add i64 %indvars.iv119, 1
  %lftr.wideiv121 = trunc i64 %indvars.iv.next120 to i32
  %exitcond122 = icmp eq i32 %lftr.wideiv121, %3
  br i1 %exitcond122, label %if.end68, label %for.body32

for.body53:                                       ; preds = %for.cond51.preheader, %for.inc63
  %indvars.iv123 = phi i64 [ %indvars.iv.next124, %for.inc63 ], [ 0, %for.cond51.preheader ]
  %arrayidx55 = getelementptr inbounds i32* %call13, i64 %indvars.iv123
  %9 = load i32* %arrayidx55, align 4, !tbaa !3
  %cmp56 = icmp slt i32 %9, 0
  br i1 %cmp56, label %if.then57, label %for.inc63

if.then57:                                        ; preds = %for.body53
  %sub = sub nsw i32 0, %9
  store i32 %sub, i32* %arrayidx55, align 4, !tbaa !3
  br label %for.inc63

for.inc63:                                        ; preds = %for.body53, %if.then57
  %indvars.iv.next124 = add i64 %indvars.iv123, 1
  %lftr.wideiv125 = trunc i64 %indvars.iv.next124 to i32
  %exitcond126 = icmp eq i32 %lftr.wideiv125, %3
  br i1 %exitcond126, label %if.end68, label %for.body53

if.end68:                                         ; preds = %for.cond51.preheader, %for.inc63, %for.cond30.preheader, %for.inc44, %for.cond.preheader, %for.inc, %if.end10
  %storageMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1
  store i32 1, i32* %storageMode, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_mapToUpperTriangleH(%struct._InpMtx* %inpmtx) #0 {
entry:
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([59 x i8]* @.str10, i64 0, i64 0), %struct._InpMtx* null) #6
  tail call void @exit(i32 -1) #7
  unreachable

if.end:                                           ; preds = %entry
  %coordType = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 0
  %1 = load i32* %coordType, align 4, !tbaa !3
  %.off = add i32 %1, -1
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %if.end10, label %if.then7

if.then7:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call9 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([88 x i8]* @.str11, i64 0, i64 0), %struct._InpMtx* %inpmtx, i32 %1) #6
  tail call void @exit(i32 -1) #7
  unreachable

if.end10:                                         ; preds = %if.end
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2
  %3 = load i32* %inputMode, align 4, !tbaa !3
  %cmp11 = icmp eq i32 %3, 2
  br i1 %cmp11, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.end10
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([76 x i8]* @.str12, i64 0, i64 0), %struct._InpMtx* %inpmtx) #6
  tail call void @exit(i32 -1) #7
  unreachable

if.end14:                                         ; preds = %if.end10
  %nent15 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 4
  %5 = load i32* %nent15, align 4, !tbaa !3
  %call16 = tail call i32* @InpMtx_ivec1(%struct._InpMtx* %inpmtx) #6
  %call17 = tail call i32* @InpMtx_ivec2(%struct._InpMtx* %inpmtx) #6
  %call18 = tail call double* @InpMtx_dvec(%struct._InpMtx* %inpmtx) #6
  %6 = load i32* %coordType, align 4, !tbaa !3
  switch i32 %6, label %if.end98 [
    i32 1, label %for.cond.preheader
    i32 2, label %for.cond41.preheader
    i32 3, label %for.cond71.preheader
  ]

for.cond71.preheader:                             ; preds = %if.end14
  %cmp72164 = icmp sgt i32 %5, 0
  br i1 %cmp72164, label %for.body73, label %if.end98

for.cond41.preheader:                             ; preds = %if.end14
  %cmp42161 = icmp sgt i32 %5, 0
  br i1 %cmp42161, label %for.body43, label %if.end98

for.cond.preheader:                               ; preds = %if.end14
  %cmp22158 = icmp sgt i32 %5, 0
  br i1 %cmp22158, label %for.body, label %if.end98

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds i32* %call16, i64 %indvars.iv
  %7 = load i32* %arrayidx, align 4, !tbaa !3
  %arrayidx24 = getelementptr inbounds i32* %call17, i64 %indvars.iv
  %8 = load i32* %arrayidx24, align 4, !tbaa !3
  %cmp25 = icmp sgt i32 %7, %8
  br i1 %cmp25, label %if.then26, label %for.inc

if.then26:                                        ; preds = %for.body
  store i32 %8, i32* %arrayidx, align 4, !tbaa !3
  store i32 %7, i32* %arrayidx24, align 4, !tbaa !3
  %9 = trunc i64 %indvars.iv to i32
  %mul = shl nsw i32 %9, 1
  %add157 = or i32 %mul, 1
  %idxprom31 = sext i32 %add157 to i64
  %arrayidx32 = getelementptr inbounds double* %call18, i64 %idxprom31
  %10 = load double* %arrayidx32, align 8, !tbaa !4
  %sub = fsub double -0.000000e+00, %10
  store double %sub, double* %arrayidx32, align 8, !tbaa !4
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then26
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %5
  br i1 %exitcond, label %if.end98, label %for.body

for.body43:                                       ; preds = %for.cond41.preheader, %for.inc64
  %indvars.iv166 = phi i64 [ %indvars.iv.next167, %for.inc64 ], [ 0, %for.cond41.preheader ]
  %arrayidx45 = getelementptr inbounds i32* %call17, i64 %indvars.iv166
  %11 = load i32* %arrayidx45, align 4, !tbaa !3
  %arrayidx47 = getelementptr inbounds i32* %call16, i64 %indvars.iv166
  %12 = load i32* %arrayidx47, align 4, !tbaa !3
  %cmp48 = icmp sgt i32 %11, %12
  br i1 %cmp48, label %if.then49, label %for.inc64

if.then49:                                        ; preds = %for.body43
  store i32 %11, i32* %arrayidx47, align 4, !tbaa !3
  store i32 %12, i32* %arrayidx45, align 4, !tbaa !3
  %13 = trunc i64 %indvars.iv166 to i32
  %mul54 = shl nsw i32 %13, 1
  %add55156 = or i32 %mul54, 1
  %idxprom56 = sext i32 %add55156 to i64
  %arrayidx57 = getelementptr inbounds double* %call18, i64 %idxprom56
  %14 = load double* %arrayidx57, align 8, !tbaa !4
  %sub58 = fsub double -0.000000e+00, %14
  store double %sub58, double* %arrayidx57, align 8, !tbaa !4
  br label %for.inc64

for.inc64:                                        ; preds = %for.body43, %if.then49
  %indvars.iv.next167 = add i64 %indvars.iv166, 1
  %lftr.wideiv168 = trunc i64 %indvars.iv.next167 to i32
  %exitcond169 = icmp eq i32 %lftr.wideiv168, %5
  br i1 %exitcond169, label %if.end98, label %for.body43

for.body73:                                       ; preds = %for.cond71.preheader, %for.inc93
  %indvars.iv170 = phi i64 [ %indvars.iv.next171, %for.inc93 ], [ 0, %for.cond71.preheader ]
  %arrayidx75 = getelementptr inbounds i32* %call17, i64 %indvars.iv170
  %15 = load i32* %arrayidx75, align 4, !tbaa !3
  %cmp76 = icmp slt i32 %15, 0
  br i1 %cmp76, label %if.then77, label %for.inc93

if.then77:                                        ; preds = %for.body73
  %sub80 = sub nsw i32 0, %15
  store i32 %sub80, i32* %arrayidx75, align 4, !tbaa !3
  %16 = trunc i64 %indvars.iv170 to i32
  %mul83 = shl nsw i32 %16, 1
  %add84155 = or i32 %mul83, 1
  %idxprom85 = sext i32 %add84155 to i64
  %arrayidx86 = getelementptr inbounds double* %call18, i64 %idxprom85
  %17 = load double* %arrayidx86, align 8, !tbaa !4
  %sub87 = fsub double -0.000000e+00, %17
  store double %sub87, double* %arrayidx86, align 8, !tbaa !4
  br label %for.inc93

for.inc93:                                        ; preds = %for.body73, %if.then77
  %indvars.iv.next171 = add i64 %indvars.iv170, 1
  %lftr.wideiv172 = trunc i64 %indvars.iv.next171 to i32
  %exitcond173 = icmp eq i32 %lftr.wideiv172, %5
  br i1 %exitcond173, label %if.end98, label %for.body73

if.end98:                                         ; preds = %for.cond71.preheader, %for.inc93, %for.cond41.preheader, %for.inc64, %for.cond.preheader, %for.inc, %if.end14
  %storageMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1
  store i32 1, i32* %storageMode, align 4, !tbaa !3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @InpMtx_checksums(%struct._InpMtx* %inpmtx, double* %sums) #0 {
entry:
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([53 x i8]* @.str13, i64 0, i64 0), %struct._InpMtx* null, double* %sums) #6
  tail call void @exit(i32 -1) #7
  unreachable

if.end:                                           ; preds = %entry
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2
  %1 = load i32* %inputMode, align 4, !tbaa !3
  %switch = icmp ult i32 %1, 3
  br i1 %switch, label %sw.epilog, label %sw.default

sw.default:                                       ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([57 x i8]* @.str14, i64 0, i64 0), %struct._InpMtx* %inpmtx, double* %sums) #6
  tail call void @exit(i32 -1) #7
  unreachable

sw.epilog:                                        ; preds = %if.end
  %arrayidx = getelementptr inbounds double* %sums, i64 2
  %arrayidx2 = getelementptr inbounds double* %sums, i64 1
  %3 = bitcast double* %sums to i8*
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 24, i32 8, i1 false)
  %call4 = tail call i32 @InpMtx_nent(%struct._InpMtx* %inpmtx) #6
  %cmp5 = icmp slt i32 %call4, 1
  br i1 %cmp5, label %return, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %sw.epilog
  %call8 = tail call i32* @InpMtx_ivec1(%struct._InpMtx* %inpmtx) #6
  %call9 = tail call i32* @InpMtx_ivec2(%struct._InpMtx* %inpmtx) #6
  %sums.promoted = load double* %sums, align 8, !tbaa !4
  %arrayidx2.promoted = load double* %arrayidx2, align 8, !tbaa !4
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv99 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next100, %for.body ]
  %4 = phi double [ %arrayidx2.promoted, %for.body.lr.ph ], [ %add19, %for.body ]
  %5 = phi double [ %sums.promoted, %for.body.lr.ph ], [ %add, %for.body ]
  %arrayidx11 = getelementptr inbounds i32* %call8, i64 %indvars.iv99
  %6 = load i32* %arrayidx11, align 4, !tbaa !3
  %ispos = icmp sgt i32 %6, -1
  %neg = sub i32 0, %6
  %7 = select i1 %ispos, i32 %6, i32 %neg
  %conv = sitofp i32 %7 to double
  %add = fadd double %5, %conv
  %arrayidx15 = getelementptr inbounds i32* %call9, i64 %indvars.iv99
  %8 = load i32* %arrayidx15, align 4, !tbaa !3
  %ispos86 = icmp sgt i32 %8, -1
  %neg87 = sub i32 0, %8
  %9 = select i1 %ispos86, i32 %8, i32 %neg87
  %conv17 = sitofp i32 %9 to double
  %add19 = fadd double %4, %conv17
  %indvars.iv.next100 = add i64 %indvars.iv99, 1
  %lftr.wideiv101 = trunc i64 %indvars.iv.next100 to i32
  %exitcond102 = icmp eq i32 %lftr.wideiv101, %call4
  br i1 %exitcond102, label %for.end, label %for.body

for.end:                                          ; preds = %for.body
  store double %add, double* %sums, align 8, !tbaa !4
  store double %add19, double* %arrayidx2, align 8, !tbaa !4
  %10 = load i32* %inputMode, align 4, !tbaa !3
  switch i32 %10, label %return [
    i32 2, label %sw.bb35
    i32 1, label %sw.bb21
  ]

sw.bb21:                                          ; preds = %for.end
  %call22 = tail call double* @InpMtx_dvec(%struct._InpMtx* %inpmtx) #6
  %.pre = load double* %arrayidx, align 8, !tbaa !4
  br label %for.body26

for.body26:                                       ; preds = %for.body26, %sw.bb21
  %11 = phi double [ %.pre, %sw.bb21 ], [ %add31, %for.body26 ]
  %indvars.iv95 = phi i64 [ 0, %sw.bb21 ], [ %indvars.iv.next96, %for.body26 ]
  %arrayidx28 = getelementptr inbounds double* %call22, i64 %indvars.iv95
  %12 = load double* %arrayidx28, align 8, !tbaa !4
  %call29 = tail call double @fabs(double %12) #9
  %add31 = fadd double %call29, %11
  store double %add31, double* %arrayidx, align 8, !tbaa !4
  %indvars.iv.next96 = add i64 %indvars.iv95, 1
  %lftr.wideiv97 = trunc i64 %indvars.iv.next96 to i32
  %exitcond98 = icmp eq i32 %lftr.wideiv97, %call4
  br i1 %exitcond98, label %return, label %for.body26

sw.bb35:                                          ; preds = %for.end
  %call37 = tail call double* @InpMtx_dvec(%struct._InpMtx* %inpmtx) #6
  br label %for.body41

for.body41:                                       ; preds = %sw.bb35, %for.body41
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body41 ], [ 0, %sw.bb35 ]
  %13 = trunc i64 %indvars.iv to i32
  %mul = shl nsw i32 %13, 1
  %idxprom42 = sext i32 %mul to i64
  %arrayidx43 = getelementptr inbounds double* %call37, i64 %idxprom42
  %14 = load double* %arrayidx43, align 8, !tbaa !4
  %add4585 = or i32 %mul, 1
  %idxprom46 = sext i32 %add4585 to i64
  %arrayidx47 = getelementptr inbounds double* %call37, i64 %idxprom46
  %15 = load double* %arrayidx47, align 8, !tbaa !4
  %call48 = tail call double @Zabs(double %14, double %15) #6
  %16 = load double* %arrayidx, align 8, !tbaa !4
  %add50 = fadd double %call48, %16
  store double %add50, double* %arrayidx, align 8, !tbaa !4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %call4
  br i1 %exitcond, label %return, label %for.body41

return:                                           ; preds = %for.body26, %for.body41, %for.end, %sw.epilog
  ret void
}

; Function Attrs: optsize
declare i32 @InpMtx_nent(%struct._InpMtx*) #3

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #4

; Function Attrs: optsize
declare double @Zabs(double, double) #3

; Function Attrs: nounwind optsize uwtable
define i32 @InpMtx_randomMatrix(%struct._InpMtx* %mtx, i32 %inputMode, i32 %coordType, i32 %storageMode, i32 %nrow, i32 %ncol, i32 %symflag, i32 %nonzerodiag, i32 %nitem, i32 %seed) #0 {
entry:
  %cmp = icmp eq %struct._InpMtx* %mtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([51 x i8]* @.str15, i64 0, i64 0), i64 50, i64 1, %struct._IO_FILE* %0)
  br label %return

if.end:                                           ; preds = %entry
  %switch = icmp ult i32 %inputMode, 3
  br i1 %switch, label %sw.epilog, label %sw.default

sw.default:                                       ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([57 x i8]* @.str16, i64 0, i64 0), i32 %inputMode) #6
  br label %return

sw.epilog:                                        ; preds = %if.end
  %.off = add i32 %coordType, -1
  %switch116 = icmp ult i32 %.off, 3
  br i1 %switch116, label %sw.epilog5, label %sw.default3

sw.default3:                                      ; preds = %sw.epilog
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([62 x i8]* @.str17, i64 0, i64 0), i32 %coordType) #6
  br label %return

sw.epilog5:                                       ; preds = %sw.epilog
  %.off117 = add i32 %storageMode, -1
  %switch118 = icmp ult i32 %.off117, 3
  br i1 %switch118, label %sw.epilog9, label %sw.default7

sw.default7:                                      ; preds = %sw.epilog5
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call8 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([58 x i8]* @.str18, i64 0, i64 0), i32 %storageMode) #6
  br label %return

sw.epilog9:                                       ; preds = %sw.epilog5
  %cmp10 = icmp slt i32 %nrow, 1
  %cmp11 = icmp slt i32 %ncol, 1
  %or.cond = or i1 %cmp10, %cmp11
  br i1 %or.cond, label %if.then12, label %if.end14

if.then12:                                        ; preds = %sw.epilog9
  %5 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([60 x i8]* @.str19, i64 0, i64 0), i32 %nrow, i32 %ncol) #6
  br label %return

if.end14:                                         ; preds = %sw.epilog9
  %switch119 = icmp ult i32 %symflag, 3
  br i1 %switch119, label %sw.epilog18, label %sw.default16

sw.default16:                                     ; preds = %if.end14
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call17 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([59 x i8]* @.str20, i64 0, i64 0), i32 %symflag) #6
  br label %return

sw.epilog18:                                      ; preds = %if.end14
  %cmp19 = icmp eq i32 %symflag, 1
  %cmp19.not = xor i1 %cmp19, true
  %cmp20 = icmp eq i32 %inputMode, 2
  %or.cond231 = or i1 %cmp20, %cmp19.not
  br i1 %or.cond231, label %if.end23, label %if.then21

if.then21:                                        ; preds = %sw.epilog18
  %7 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %8 = tail call i64 @fwrite(i8* getelementptr inbounds ([88 x i8]* @.str21, i64 0, i64 0), i64 87, i64 1, %struct._IO_FILE* %7)
  br label %return

if.end23:                                         ; preds = %sw.epilog18
  %9 = icmp ult i32 %symflag, 2
  %.not = xor i1 %9, true
  %cmp28 = icmp eq i32 %nrow, %ncol
  %or.cond232 = or i1 %cmp28, %.not
  br i1 %or.cond232, label %if.end31, label %if.then29

if.then29:                                        ; preds = %if.end23
  %10 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call30 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([86 x i8]* @.str22, i64 0, i64 0), i32 %nrow, i32 %ncol) #6
  br label %return

if.end31:                                         ; preds = %if.end23
  %cmp32 = icmp slt i32 %nitem, 0
  br i1 %cmp32, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.end31
  %11 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call34 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([50 x i8]* @.str23, i64 0, i64 0), i32 %nitem) #6
  br label %return

if.end35:                                         ; preds = %if.end31
  %cmp36 = icmp sle i32 %nrow, %ncol
  %cond = select i1 %cmp36, i32 %nrow, i32 %ncol
  %cmp37 = icmp eq i32 %nonzerodiag, 1
  %add = select i1 %cmp37, i32 %cond, i32 0
  %add.nitem = add i32 %add, %nitem
  tail call void @InpMtx_init(%struct._InpMtx* %mtx, i32 1, i32 %inputMode, i32 %add.nitem, i32 0) #6
  %call40 = tail call %struct._Drand* @Drand_new() #6
  tail call void @Drand_setSeed(%struct._Drand* %call40, i32 %seed) #6
  %call41 = tail call i32* @IVinit(i32 %add.nitem, i32 -1) #6
  %call42 = tail call i32* @IVinit(i32 %add.nitem, i32 -1) #6
  br i1 %cmp37, label %if.then44, label %if.else

if.then44:                                        ; preds = %if.end35
  tail call void @IVramp(i32 %cond, i32* %call41, i32 0, i32 1) #6
  %conv = sitofp i32 %nrow to double
  tail call void @Drand_setUniform(%struct._Drand* %call40, double 0.000000e+00, double %conv) #6
  %sub = sub nsw i32 %add.nitem, %cond
  %idx.ext = sext i32 %cond to i64
  %add.ptr = getelementptr inbounds i32* %call41, i64 %idx.ext
  tail call void @Drand_fillIvector(%struct._Drand* %call40, i32 %sub, i32* %add.ptr) #6
  %conv45 = sitofp i32 %ncol to double
  tail call void @Drand_setUniform(%struct._Drand* %call40, double 0.000000e+00, double %conv45) #6
  tail call void @IVramp(i32 %cond, i32* %call42, i32 0, i32 1) #6
  %add.ptr48 = getelementptr inbounds i32* %call42, i64 %idx.ext
  tail call void @Drand_fillIvector(%struct._Drand* %call40, i32 %sub, i32* %add.ptr48) #6
  br label %if.end51

if.else:                                          ; preds = %if.end35
  %conv49 = sitofp i32 %nrow to double
  tail call void @Drand_setUniform(%struct._Drand* %call40, double 0.000000e+00, double %conv49) #6
  tail call void @Drand_fillIvector(%struct._Drand* %call40, i32 %add.nitem, i32* %call41) #6
  %conv50 = sitofp i32 %ncol to double
  tail call void @Drand_setUniform(%struct._Drand* %call40, double 0.000000e+00, double %conv50) #6
  tail call void @Drand_fillIvector(%struct._Drand* %call40, i32 %add.nitem, i32* %call42) #6
  br label %if.end51

if.end51:                                         ; preds = %if.else, %if.then44
  %cmp58239 = icmp sgt i32 %add.nitem, 0
  %or.cond245 = and i1 %9, %cmp58239
  br i1 %or.cond245, label %for.body, label %if.end70

for.body:                                         ; preds = %if.end51, %for.inc
  %indvars.iv241 = phi i64 [ %indvars.iv.next242, %for.inc ], [ 0, %if.end51 ]
  %arrayidx = getelementptr inbounds i32* %call41, i64 %indvars.iv241
  %12 = load i32* %arrayidx, align 4, !tbaa !3
  %arrayidx61 = getelementptr inbounds i32* %call42, i64 %indvars.iv241
  %13 = load i32* %arrayidx61, align 4, !tbaa !3
  %cmp62 = icmp sgt i32 %12, %13
  br i1 %cmp62, label %if.then64, label %for.inc

if.then64:                                        ; preds = %for.body
  store i32 %13, i32* %arrayidx, align 4, !tbaa !3
  store i32 %12, i32* %arrayidx61, align 4, !tbaa !3
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then64
  %indvars.iv.next242 = add i64 %indvars.iv241, 1
  %lftr.wideiv243 = trunc i64 %indvars.iv.next242 to i32
  %exitcond244 = icmp eq i32 %lftr.wideiv243, %add.nitem
  br i1 %exitcond244, label %if.end70, label %for.body

if.end70:                                         ; preds = %for.inc, %if.end51
  switch i32 %inputMode, label %if.end106 [
    i32 1, label %if.end106.thread
    i32 2, label %if.then78
  ]

if.end106.thread:                                 ; preds = %if.end70
  %call74 = tail call double* @DVinit(i32 %add.nitem, double 0.000000e+00) #6
  tail call void @Drand_setUniform(%struct._Drand* %call40, double 0.000000e+00, double 1.000000e+00) #6
  tail call void @Drand_fillDvector(%struct._Drand* %call40, i32 %add.nitem, double* %call74) #6
  br label %sw.bb108

if.then78:                                        ; preds = %if.end70
  %mul = shl nsw i32 %add.nitem, 1
  %call79 = tail call double* @DVinit(i32 %mul, double 0.000000e+00) #6
  tail call void @Drand_setUniform(%struct._Drand* %call40, double 0.000000e+00, double 1.000000e+00) #6
  tail call void @Drand_fillDvector(%struct._Drand* %call40, i32 %mul, double* %call79) #6
  br i1 %cmp19, label %for.cond84.preheader, label %sw.bb109

for.cond84.preheader:                             ; preds = %if.then78
  %cmp85237 = icmp sgt i32 %add.nitem, 0
  br i1 %cmp85237, label %for.body87, label %if.end106

for.body87:                                       ; preds = %for.cond84.preheader, %for.inc100
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc100 ], [ 0, %for.cond84.preheader ]
  %arrayidx89 = getelementptr inbounds i32* %call41, i64 %indvars.iv
  %14 = load i32* %arrayidx89, align 4, !tbaa !3
  %arrayidx91 = getelementptr inbounds i32* %call42, i64 %indvars.iv
  %15 = load i32* %arrayidx91, align 4, !tbaa !3
  %cmp92 = icmp eq i32 %14, %15
  br i1 %cmp92, label %if.then94, label %for.inc100

if.then94:                                        ; preds = %for.body87
  %16 = trunc i64 %indvars.iv to i32
  %mul95 = shl nsw i32 %16, 1
  %add96230 = or i32 %mul95, 1
  %idxprom97 = sext i32 %add96230 to i64
  %arrayidx98 = getelementptr inbounds double* %call79, i64 %idxprom97
  store double 0.000000e+00, double* %arrayidx98, align 8, !tbaa !4
  br label %for.inc100

for.inc100:                                       ; preds = %for.body87, %if.then94
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %add.nitem
  br i1 %exitcond, label %if.end106, label %for.body87

if.end106:                                        ; preds = %for.cond84.preheader, %for.inc100, %if.end70
  %dvec.0 = phi double* [ null, %if.end70 ], [ %call79, %for.inc100 ], [ %call79, %for.cond84.preheader ]
  switch i32 %inputMode, label %sw.epilog110 [
    i32 0, label %sw.bb107
    i32 1, label %sw.bb108
    i32 2, label %sw.bb109
  ]

sw.bb107:                                         ; preds = %if.end106
  tail call void @InpMtx_inputTriples(%struct._InpMtx* %mtx, i32 %add.nitem, i32* %call41, i32* %call42) #6
  br label %sw.epilog110

sw.bb108:                                         ; preds = %if.end106.thread, %if.end106
  %dvec.0233 = phi double* [ %call74, %if.end106.thread ], [ %dvec.0, %if.end106 ]
  tail call void @InpMtx_inputRealTriples(%struct._InpMtx* %mtx, i32 %add.nitem, i32* %call41, i32* %call42, double* %dvec.0233) #6
  br label %sw.epilog110

sw.bb109:                                         ; preds = %if.then78, %if.end106
  %dvec.0236 = phi double* [ %dvec.0, %if.end106 ], [ %call79, %if.then78 ]
  tail call void @InpMtx_inputComplexTriples(%struct._InpMtx* %mtx, i32 %add.nitem, i32* %call41, i32* %call42, double* %dvec.0236) #6
  br label %sw.epilog110

sw.epilog110:                                     ; preds = %if.end106, %sw.bb109, %sw.bb108, %sw.bb107
  %dvec.0234 = phi double* [ %dvec.0, %if.end106 ], [ %dvec.0236, %sw.bb109 ], [ %dvec.0233, %sw.bb108 ], [ %dvec.0, %sw.bb107 ]
  tail call void @InpMtx_changeCoordType(%struct._InpMtx* %mtx, i32 %coordType) #6
  tail call void @InpMtx_changeStorageMode(%struct._InpMtx* %mtx, i32 %storageMode) #6
  %call111 = tail call %struct._Drand* @Drand_free(%struct._Drand* %call40) #6
  tail call void @IVfree(i32* %call41) #6
  tail call void @IVfree(i32* %call42) #6
  %cmp112 = icmp eq double* %dvec.0234, null
  br i1 %cmp112, label %return, label %if.then114

if.then114:                                       ; preds = %sw.epilog110
  tail call void @DVfree(double* %dvec.0234) #6
  br label %return

return:                                           ; preds = %if.then114, %sw.epilog110, %if.then33, %if.then29, %if.then21, %sw.default16, %if.then12, %sw.default7, %sw.default3, %sw.default, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -5, %if.then12 ], [ -7, %if.then21 ], [ -8, %if.then29 ], [ -9, %if.then33 ], [ -6, %sw.default16 ], [ -4, %sw.default7 ], [ -3, %sw.default3 ], [ -2, %sw.default ], [ 1, %sw.epilog110 ], [ 1, %if.then114 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare void @InpMtx_init(%struct._InpMtx*, i32, i32, i32, i32) #3

; Function Attrs: optsize
declare %struct._Drand* @Drand_new() #3

; Function Attrs: optsize
declare void @Drand_setSeed(%struct._Drand*, i32) #3

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: optsize
declare void @IVramp(i32, i32*, i32, i32) #3

; Function Attrs: optsize
declare void @Drand_setUniform(%struct._Drand*, double, double) #3

; Function Attrs: optsize
declare void @Drand_fillIvector(%struct._Drand*, i32, i32*) #3

; Function Attrs: optsize
declare double* @DVinit(i32, double) #3

; Function Attrs: optsize
declare void @Drand_fillDvector(%struct._Drand*, i32, double*) #3

; Function Attrs: optsize
declare void @InpMtx_inputTriples(%struct._InpMtx*, i32, i32*, i32*) #3

; Function Attrs: optsize
declare void @InpMtx_inputRealTriples(%struct._InpMtx*, i32, i32*, i32*, double*) #3

; Function Attrs: optsize
declare void @InpMtx_inputComplexTriples(%struct._InpMtx*, i32, i32*, i32*, double*) #3

; Function Attrs: optsize
declare void @InpMtx_changeCoordType(%struct._InpMtx*, i32) #3

; Function Attrs: optsize
declare void @InpMtx_changeStorageMode(%struct._InpMtx*, i32) #3

; Function Attrs: optsize
declare %struct._Drand* @Drand_free(%struct._Drand*) #3

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: optsize
declare void @DVfree(double*) #3

; Function Attrs: nounwind optsize uwtable
define i32 @InpMtx_range(%struct._InpMtx* %mtx, i32* %pmincol, i32* %pmaxcol, i32* %pminrow, i32* %pmaxrow) #0 {
entry:
  %cmp = icmp eq %struct._InpMtx* %mtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([46 x i8]* @.str24, i64 0, i64 0), i64 45, i64 1, %struct._IO_FILE* %0)
  br label %return

if.end:                                           ; preds = %entry
  %nent1 = getelementptr inbounds %struct._InpMtx* %mtx, i64 0, i32 4
  %2 = load i32* %nent1, align 4, !tbaa !3
  %cmp2 = icmp slt i32 %2, 1
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([45 x i8]* @.str25, i64 0, i64 0), i32 %2) #6
  br label %return

if.end5:                                          ; preds = %if.end
  %coordType = getelementptr inbounds %struct._InpMtx* %mtx, i64 0, i32 0
  %4 = load i32* %coordType, align 4, !tbaa !3
  switch i32 %4, label %if.else113 [
    i32 1, label %if.then7
    i32 2, label %if.then31
    i32 3, label %if.then68
  ]

if.then7:                                         ; preds = %if.end5
  %call8 = tail call i32* @InpMtx_ivec1(%struct._InpMtx* %mtx) #6
  %call9 = tail call i32* @InpMtx_ivec2(%struct._InpMtx* %mtx) #6
  %5 = load i32* %call8, align 4, !tbaa !3
  %6 = load i32* %call9, align 4, !tbaa !3
  %cmp11201 = icmp sgt i32 %2, 1
  br i1 %cmp11201, label %for.body, label %if.end118

for.body:                                         ; preds = %if.then7, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %if.then7 ]
  %maxcol.0206 = phi i32 [ %maxcol.1, %for.inc ], [ %6, %if.then7 ]
  %maxrow.0205 = phi i32 [ %maxrow.1, %for.inc ], [ %5, %if.then7 ]
  %mincol.0204 = phi i32 [ %mincol.1, %for.inc ], [ %6, %if.then7 ]
  %minrow.0203 = phi i32 [ %minrow.1, %for.inc ], [ %5, %if.then7 ]
  %arrayidx12 = getelementptr inbounds i32* %call8, i64 %indvars.iv
  %7 = load i32* %arrayidx12, align 4, !tbaa !3
  %arrayidx14 = getelementptr inbounds i32* %call9, i64 %indvars.iv
  %8 = load i32* %arrayidx14, align 4, !tbaa !3
  %cmp15 = icmp sgt i32 %minrow.0203, %7
  br i1 %cmp15, label %if.end20, label %if.else

if.else:                                          ; preds = %for.body
  %cmp17 = icmp slt i32 %maxrow.0205, %7
  %.maxrow.0 = select i1 %cmp17, i32 %7, i32 %maxrow.0205
  br label %if.end20

if.end20:                                         ; preds = %if.else, %for.body
  %minrow.1 = phi i32 [ %7, %for.body ], [ %minrow.0203, %if.else ]
  %maxrow.1 = phi i32 [ %maxrow.0205, %for.body ], [ %.maxrow.0, %if.else ]
  %cmp21 = icmp sgt i32 %mincol.0204, %8
  br i1 %cmp21, label %for.inc, label %if.else23

if.else23:                                        ; preds = %if.end20
  %cmp24 = icmp slt i32 %maxcol.0206, %8
  %.maxcol.0 = select i1 %cmp24, i32 %8, i32 %maxcol.0206
  br label %for.inc

for.inc:                                          ; preds = %if.else23, %if.end20
  %mincol.1 = phi i32 [ %8, %if.end20 ], [ %mincol.0204, %if.else23 ]
  %maxcol.1 = phi i32 [ %maxcol.0206, %if.end20 ], [ %.maxcol.0, %if.else23 ]
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %2
  br i1 %exitcond, label %if.end118, label %for.body

if.then31:                                        ; preds = %if.end5
  %call33 = tail call i32* @InpMtx_ivec2(%struct._InpMtx* %mtx) #6
  %call35 = tail call i32* @InpMtx_ivec1(%struct._InpMtx* %mtx) #6
  %9 = load i32* %call33, align 4, !tbaa !3
  %10 = load i32* %call35, align 4, !tbaa !3
  %cmp42211 = icmp sgt i32 %2, 1
  br i1 %cmp42211, label %for.body43, label %if.end118

for.body43:                                       ; preds = %if.then31, %for.inc62
  %indvars.iv232 = phi i64 [ %indvars.iv.next233, %for.inc62 ], [ 1, %if.then31 ]
  %maxcol.2216 = phi i32 [ %maxcol.3, %for.inc62 ], [ %10, %if.then31 ]
  %maxrow.2215 = phi i32 [ %maxrow.3, %for.inc62 ], [ %9, %if.then31 ]
  %mincol.2213 = phi i32 [ %mincol.3, %for.inc62 ], [ %10, %if.then31 ]
  %minrow.2212 = phi i32 [ %minrow.3, %for.inc62 ], [ %9, %if.then31 ]
  %arrayidx45 = getelementptr inbounds i32* %call33, i64 %indvars.iv232
  %11 = load i32* %arrayidx45, align 4, !tbaa !3
  %arrayidx47 = getelementptr inbounds i32* %call35, i64 %indvars.iv232
  %12 = load i32* %arrayidx47, align 4, !tbaa !3
  %cmp48 = icmp sgt i32 %minrow.2212, %11
  br i1 %cmp48, label %if.end54, label %if.else50

if.else50:                                        ; preds = %for.body43
  %cmp51 = icmp slt i32 %maxrow.2215, %11
  %.maxrow.2 = select i1 %cmp51, i32 %11, i32 %maxrow.2215
  br label %if.end54

if.end54:                                         ; preds = %if.else50, %for.body43
  %minrow.3 = phi i32 [ %11, %for.body43 ], [ %minrow.2212, %if.else50 ]
  %maxrow.3 = phi i32 [ %maxrow.2215, %for.body43 ], [ %.maxrow.2, %if.else50 ]
  %cmp55 = icmp sgt i32 %mincol.2213, %12
  br i1 %cmp55, label %for.inc62, label %if.else57

if.else57:                                        ; preds = %if.end54
  %cmp58 = icmp slt i32 %maxcol.2216, %12
  %.maxcol.2 = select i1 %cmp58, i32 %12, i32 %maxcol.2216
  br label %for.inc62

for.inc62:                                        ; preds = %if.else57, %if.end54
  %mincol.3 = phi i32 [ %12, %if.end54 ], [ %mincol.2213, %if.else57 ]
  %maxcol.3 = phi i32 [ %maxcol.2216, %if.end54 ], [ %.maxcol.2, %if.else57 ]
  %indvars.iv.next233 = add i64 %indvars.iv232, 1
  %lftr.wideiv234 = trunc i64 %indvars.iv.next233 to i32
  %exitcond235 = icmp eq i32 %lftr.wideiv234, %2
  br i1 %exitcond235, label %if.end118, label %for.body43

if.then68:                                        ; preds = %if.end5
  %call69 = tail call i32* @InpMtx_ivec1(%struct._InpMtx* %mtx) #6
  %call70 = tail call i32* @InpMtx_ivec2(%struct._InpMtx* %mtx) #6
  %13 = load i32* %call70, align 4, !tbaa !3
  %cmp75 = icmp sgt i32 %13, -1
  %14 = load i32* %call69, align 4, !tbaa !3
  %add = select i1 %cmp75, i32 %13, i32 0
  %col71.0 = add nsw i32 %add, %14
  %sub = select i1 %cmp75, i32 0, i32 %13
  %row73.0 = sub nsw i32 %14, %sub
  %cmp82222 = icmp sgt i32 %2, 1
  br i1 %cmp82222, label %for.body83, label %if.end118

for.body83:                                       ; preds = %if.then68, %for.inc110
  %indvars.iv236 = phi i64 [ %indvars.iv.next237, %for.inc110 ], [ 1, %if.then68 ]
  %maxcol.4226 = phi i32 [ %maxcol.5, %for.inc110 ], [ %col71.0, %if.then68 ]
  %maxrow.4225 = phi i32 [ %maxrow.5, %for.inc110 ], [ %row73.0, %if.then68 ]
  %mincol.4224 = phi i32 [ %mincol.5, %for.inc110 ], [ %col71.0, %if.then68 ]
  %minrow.4223 = phi i32 [ %minrow.5, %for.inc110 ], [ %row73.0, %if.then68 ]
  %arrayidx85 = getelementptr inbounds i32* %call70, i64 %indvars.iv236
  %15 = load i32* %arrayidx85, align 4, !tbaa !3
  %cmp86 = icmp sgt i32 %15, -1
  %arrayidx89 = getelementptr inbounds i32* %call69, i64 %indvars.iv236
  %16 = load i32* %arrayidx89, align 4, !tbaa !3
  %add90 = select i1 %cmp86, i32 %15, i32 0
  %col71.1 = add nsw i32 %add90, %16
  %sub94 = select i1 %cmp86, i32 0, i32 %15
  %row73.1 = sub nsw i32 %16, %sub94
  %cmp96 = icmp sgt i32 %minrow.4223, %row73.1
  br i1 %cmp96, label %if.end102, label %if.else98

if.else98:                                        ; preds = %for.body83
  %cmp99 = icmp slt i32 %maxrow.4225, %row73.1
  %row73.1.maxrow.4 = select i1 %cmp99, i32 %row73.1, i32 %maxrow.4225
  br label %if.end102

if.end102:                                        ; preds = %if.else98, %for.body83
  %minrow.5 = phi i32 [ %row73.1, %for.body83 ], [ %minrow.4223, %if.else98 ]
  %maxrow.5 = phi i32 [ %maxrow.4225, %for.body83 ], [ %row73.1.maxrow.4, %if.else98 ]
  %cmp103 = icmp sgt i32 %mincol.4224, %col71.1
  br i1 %cmp103, label %for.inc110, label %if.else105

if.else105:                                       ; preds = %if.end102
  %cmp106 = icmp slt i32 %maxcol.4226, %col71.1
  %col71.1.maxcol.4 = select i1 %cmp106, i32 %col71.1, i32 %maxcol.4226
  br label %for.inc110

for.inc110:                                       ; preds = %if.else105, %if.end102
  %mincol.5 = phi i32 [ %col71.1, %if.end102 ], [ %mincol.4224, %if.else105 ]
  %maxcol.5 = phi i32 [ %maxcol.4226, %if.end102 ], [ %col71.1.maxcol.4, %if.else105 ]
  %indvars.iv.next237 = add i64 %indvars.iv236, 1
  %lftr.wideiv238 = trunc i64 %indvars.iv.next237 to i32
  %exitcond239 = icmp eq i32 %lftr.wideiv238, %2
  br i1 %exitcond239, label %if.end118, label %for.body83

if.else113:                                       ; preds = %if.end5
  %17 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call115 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([55 x i8]* @.str26, i64 0, i64 0), i32 %4) #6
  br label %return

if.end118:                                        ; preds = %if.then68, %for.inc110, %if.then31, %for.inc62, %if.then7, %for.inc
  %minrow.6 = phi i32 [ %5, %if.then7 ], [ %minrow.1, %for.inc ], [ %9, %if.then31 ], [ %minrow.3, %for.inc62 ], [ %row73.0, %if.then68 ], [ %minrow.5, %for.inc110 ]
  %mincol.6 = phi i32 [ %6, %if.then7 ], [ %mincol.1, %for.inc ], [ %10, %if.then31 ], [ %mincol.3, %for.inc62 ], [ %col71.0, %if.then68 ], [ %mincol.5, %for.inc110 ]
  %maxrow.6 = phi i32 [ %5, %if.then7 ], [ %maxrow.1, %for.inc ], [ %9, %if.then31 ], [ %maxrow.3, %for.inc62 ], [ %row73.0, %if.then68 ], [ %maxrow.5, %for.inc110 ]
  %maxcol.6 = phi i32 [ %6, %if.then7 ], [ %maxcol.1, %for.inc ], [ %10, %if.then31 ], [ %maxcol.3, %for.inc62 ], [ %col71.0, %if.then68 ], [ %maxcol.5, %for.inc110 ]
  %cmp119 = icmp eq i32* %pmincol, null
  br i1 %cmp119, label %if.end121, label %if.then120

if.then120:                                       ; preds = %if.end118
  store i32 %mincol.6, i32* %pmincol, align 4, !tbaa !3
  br label %if.end121

if.end121:                                        ; preds = %if.end118, %if.then120
  %cmp122 = icmp eq i32* %pmaxcol, null
  br i1 %cmp122, label %if.end124, label %if.then123

if.then123:                                       ; preds = %if.end121
  store i32 %maxcol.6, i32* %pmaxcol, align 4, !tbaa !3
  br label %if.end124

if.end124:                                        ; preds = %if.end121, %if.then123
  %cmp125 = icmp eq i32* %pminrow, null
  br i1 %cmp125, label %if.end127, label %if.then126

if.then126:                                       ; preds = %if.end124
  store i32 %minrow.6, i32* %pminrow, align 4, !tbaa !3
  br label %if.end127

if.end127:                                        ; preds = %if.end124, %if.then126
  %cmp128 = icmp eq i32* %pmaxrow, null
  br i1 %cmp128, label %return, label %if.then129

if.then129:                                       ; preds = %if.end127
  store i32 %maxrow.6, i32* %pmaxrow, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %if.then129, %if.end127, %if.else113, %if.then3, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -2, %if.then3 ], [ -3, %if.else113 ], [ 1, %if.end127 ], [ 1, %if.then129 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { noreturn nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize readnone }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"double", metadata !1}
