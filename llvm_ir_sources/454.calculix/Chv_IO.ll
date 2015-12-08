; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/Chv/src/Chv_IO.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._Chv = type { i32, i32, i32, i32, i32, i32, i32*, i32*, double*, %struct._DV, %struct._Chv* }
%struct._DV = type { i32, i32, i32, double* }
%struct._A2 = type { i32, i32, i32, i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [57 x i8] c"\0A fatal error in Chv_writeForHumanEye(%p,%p)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [88 x i8] c"\0A Chv object at address %p\0A id = %d, nD = %d, nL = %d, nU = %d, type = %d, symflag = %d\00", align 1
@.str2 = private unnamed_addr constant [28 x i8] c"\0A chv is real and symmetric\00", align 1
@.str3 = private unnamed_addr constant [31 x i8] c"\0A chv is real and nonsymmetric\00", align 1
@.str4 = private unnamed_addr constant [35 x i8] c"\0A chv has unknown symmetry type %d\00", align 1
@.str5 = private unnamed_addr constant [31 x i8] c"\0A chv is complex and symmetric\00", align 1
@.str6 = private unnamed_addr constant [31 x i8] c"\0A chv is complex and hermitian\00", align 1
@.str7 = private unnamed_addr constant [34 x i8] c"\0A chv is complex and nonsymmetric\00", align 1
@.str8 = private unnamed_addr constant [26 x i8] c"\0A chv has unknown type %d\00", align 1
@.str9 = private unnamed_addr constant [26 x i8] c"\0A chv's row indices at %p\00", align 1
@.str10 = private unnamed_addr constant [29 x i8] c"\0A chv's column indices at %p\00", align 1
@.str11 = private unnamed_addr constant [14 x i8] c"\0A (1,1) block\00", align 1
@.str12 = private unnamed_addr constant [14 x i8] c"\0A (1,2) block\00", align 1
@.str13 = private unnamed_addr constant [14 x i8] c"\0A (2,1) block\00", align 1
@.str14 = private unnamed_addr constant [58 x i8] c"\0A fatal error in Chv_writeForMatlab(%p,%p,%p)\0A bad input\0A\00", align 1
@.str15 = private unnamed_addr constant [101 x i8] c"\0A fatal error in Chv_writeForMatlab(%p,%p,%p)\0A bad type %d, must be SPOOLES_REAL or SPOOLES_COMPLEX\0A\00", align 1
@.str16 = private unnamed_addr constant [24 x i8] c"\0A %s(%d,%d) = %20.12e ;\00", align 1
@.str17 = private unnamed_addr constant [35 x i8] c"\0A %s(%d,%d) = %20.12e + %20.12e*i;\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @Chv_writeForHumanEye(%struct._Chv* %chv, %struct._IO_FILE* %fp) #0 {
entry:
  %mtx = alloca %struct._A2, align 8
  %ierr = alloca i32, align 4
  %ncol = alloca i32, align 4
  %nD = alloca i32, align 4
  %nL = alloca i32, align 4
  %nrow = alloca i32, align 4
  %nU = alloca i32, align 4
  %colind = alloca i32*, align 8
  %rowind = alloca i32*, align 8
  %cmp = icmp eq %struct._Chv* %chv, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([57 x i8]* @.str, i64 0, i64 0), %struct._Chv* %chv, %struct._IO_FILE* %fp) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  call void @Chv_dimensions(%struct._Chv* %chv, i32* %nD, i32* %nL, i32* %nU) #5
  %id = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 0
  %1 = load i32* %id, align 4, !tbaa !3
  %2 = load i32* %nD, align 4, !tbaa !3
  %3 = load i32* %nL, align 4, !tbaa !3
  %4 = load i32* %nU, align 4, !tbaa !3
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %5 = load i32* %type, align 4, !tbaa !3
  %symflag = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 5
  %6 = load i32* %symflag, align 4, !tbaa !3
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([88 x i8]* @.str1, i64 0, i64 0), %struct._Chv* %chv, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #5
  %7 = load i32* %type, align 4, !tbaa !3
  switch i32 %7, label %if.else43 [
    i32 1, label %if.then5
    i32 2, label %if.then22
  ]

if.then5:                                         ; preds = %if.end
  %8 = load i32* %symflag, align 4, !tbaa !3
  switch i32 %8, label %if.else14 [
    i32 0, label %if.then8
    i32 2, label %if.then12
  ]

if.then8:                                         ; preds = %if.then5
  %9 = call i64 @fwrite(i8* getelementptr inbounds ([28 x i8]* @.str2, i64 0, i64 0), i64 27, i64 1, %struct._IO_FILE* %fp)
  br label %if.end47

if.then12:                                        ; preds = %if.then5
  %10 = call i64 @fwrite(i8* getelementptr inbounds ([31 x i8]* @.str3, i64 0, i64 0), i64 30, i64 1, %struct._IO_FILE* %fp)
  br label %if.end47

if.else14:                                        ; preds = %if.then5
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([35 x i8]* @.str4, i64 0, i64 0), i32 %8) #5
  br label %if.end47

if.then22:                                        ; preds = %if.end
  %11 = load i32* %symflag, align 4, !tbaa !3
  switch i32 %11, label %if.else37 [
    i32 0, label %if.then25
    i32 1, label %if.then30
    i32 2, label %if.then35
  ]

if.then25:                                        ; preds = %if.then22
  %12 = call i64 @fwrite(i8* getelementptr inbounds ([31 x i8]* @.str5, i64 0, i64 0), i64 30, i64 1, %struct._IO_FILE* %fp)
  br label %if.end47

if.then30:                                        ; preds = %if.then22
  %13 = call i64 @fwrite(i8* getelementptr inbounds ([31 x i8]* @.str6, i64 0, i64 0), i64 30, i64 1, %struct._IO_FILE* %fp)
  br label %if.end47

if.then35:                                        ; preds = %if.then22
  %14 = call i64 @fwrite(i8* getelementptr inbounds ([34 x i8]* @.str7, i64 0, i64 0), i64 33, i64 1, %struct._IO_FILE* %fp)
  br label %if.end47

if.else37:                                        ; preds = %if.then22
  %call39 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([35 x i8]* @.str4, i64 0, i64 0), i32 %11) #5
  br label %if.end47

if.else43:                                        ; preds = %if.end
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([26 x i8]* @.str8, i64 0, i64 0), i32 %7) #5
  br label %if.end47

if.end47:                                         ; preds = %if.else43, %if.then30, %if.else37, %if.then35, %if.then25, %if.then8, %if.else14, %if.then12
  call void @Chv_rowIndices(%struct._Chv* %chv, i32* %nrow, i32** %rowind) #5
  %15 = load i32* %nrow, align 4, !tbaa !3
  %cmp48 = icmp sgt i32 %15, 0
  br i1 %cmp48, label %land.lhs.true, label %if.end53

land.lhs.true:                                    ; preds = %if.end47
  %16 = load i32** %rowind, align 8, !tbaa !0
  %cmp49 = icmp eq i32* %16, null
  br i1 %cmp49, label %if.end53, label %if.then50

if.then50:                                        ; preds = %land.lhs.true
  %call51 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([26 x i8]* @.str9, i64 0, i64 0), i32* %16) #5
  %17 = load i32* %nrow, align 4, !tbaa !3
  %18 = load i32** %rowind, align 8, !tbaa !0
  %call52 = call i32 @IVfp80(%struct._IO_FILE* %fp, i32 %17, i32* %18, i32 80, i32* %ierr) #5
  br label %if.end53

if.end53:                                         ; preds = %land.lhs.true, %if.then50, %if.end47
  call void @Chv_columnIndices(%struct._Chv* %chv, i32* %ncol, i32** %colind) #5
  %19 = load i32* %ncol, align 4, !tbaa !3
  %cmp54 = icmp sgt i32 %19, 0
  br i1 %cmp54, label %land.lhs.true55, label %if.end60

land.lhs.true55:                                  ; preds = %if.end53
  %20 = load i32** %colind, align 8, !tbaa !0
  %cmp56 = icmp eq i32* %20, null
  br i1 %cmp56, label %if.end60, label %if.then57

if.then57:                                        ; preds = %land.lhs.true55
  %call58 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([29 x i8]* @.str10, i64 0, i64 0), i32* %20) #5
  %21 = load i32* %ncol, align 4, !tbaa !3
  %22 = load i32** %colind, align 8, !tbaa !0
  %call59 = call i32 @IVfp80(%struct._IO_FILE* %fp, i32 %21, i32* %22, i32 80, i32* %ierr) #5
  br label %if.end60

if.end60:                                         ; preds = %land.lhs.true55, %if.then57, %if.end53
  call void @A2_setDefaultFields(%struct._A2* %mtx) #5
  call void @Chv_fill11block(%struct._Chv* %chv, %struct._A2* %mtx) #5
  %23 = call i64 @fwrite(i8* getelementptr inbounds ([14 x i8]* @.str11, i64 0, i64 0), i64 13, i64 1, %struct._IO_FILE* %fp)
  call void @A2_writeForHumanEye(%struct._A2* %mtx, %struct._IO_FILE* %fp) #5
  %24 = load i32* %nU, align 4, !tbaa !3
  %cmp62 = icmp sgt i32 %24, 0
  br i1 %cmp62, label %if.then63, label %if.end65

if.then63:                                        ; preds = %if.end60
  call void @Chv_fill12block(%struct._Chv* %chv, %struct._A2* %mtx) #5
  %25 = call i64 @fwrite(i8* getelementptr inbounds ([14 x i8]* @.str12, i64 0, i64 0), i64 13, i64 1, %struct._IO_FILE* %fp)
  call void @A2_writeForHumanEye(%struct._A2* %mtx, %struct._IO_FILE* %fp) #5
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %if.end60
  %26 = load i32* %nL, align 4, !tbaa !3
  %cmp66 = icmp sgt i32 %26, 0
  br i1 %cmp66, label %land.lhs.true67, label %if.end74

land.lhs.true67:                                  ; preds = %if.end65
  %27 = load i32* %symflag, align 4, !tbaa !3
  %cmp69 = icmp eq i32 %27, 2
  br i1 %cmp69, label %if.then72, label %if.end74

if.then72:                                        ; preds = %land.lhs.true67
  call void @Chv_fill21block(%struct._Chv* %chv, %struct._A2* %mtx) #5
  %28 = call i64 @fwrite(i8* getelementptr inbounds ([14 x i8]* @.str13, i64 0, i64 0), i64 13, i64 1, %struct._IO_FILE* %fp)
  call void @A2_writeForHumanEye(%struct._A2* %mtx, %struct._IO_FILE* %fp) #5
  br label %if.end74

if.end74:                                         ; preds = %if.then72, %land.lhs.true67, %if.end65
  call void @A2_clearData(%struct._A2* %mtx) #5
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #2

; Function Attrs: optsize
declare void @Chv_dimensions(%struct._Chv*, i32*, i32*, i32*) #3

; Function Attrs: optsize
declare void @Chv_rowIndices(%struct._Chv*, i32*, i32**) #3

; Function Attrs: optsize
declare i32 @IVfp80(%struct._IO_FILE*, i32, i32*, i32, i32*) #3

; Function Attrs: optsize
declare void @Chv_columnIndices(%struct._Chv*, i32*, i32**) #3

; Function Attrs: optsize
declare void @A2_setDefaultFields(%struct._A2*) #3

; Function Attrs: optsize
declare void @Chv_fill11block(%struct._Chv*, %struct._A2*) #3

; Function Attrs: optsize
declare void @A2_writeForHumanEye(%struct._A2*, %struct._IO_FILE*) #3

; Function Attrs: optsize
declare void @Chv_fill12block(%struct._Chv*, %struct._A2*) #3

; Function Attrs: optsize
declare void @Chv_fill21block(%struct._Chv*, %struct._A2*) #3

; Function Attrs: optsize
declare void @A2_clearData(%struct._A2*) #3

; Function Attrs: nounwind optsize uwtable
define void @Chv_writeForMatlab(%struct._Chv* %chv, i8* %chvname, %struct._IO_FILE* %fp) #0 {
entry:
  %ncol = alloca i32, align 4
  %nD = alloca i32, align 4
  %nL = alloca i32, align 4
  %nrow = alloca i32, align 4
  %nU = alloca i32, align 4
  %colind = alloca i32*, align 8
  %rowind = alloca i32*, align 8
  %value = alloca double, align 8
  %imag = alloca double, align 8
  %real = alloca double, align 8
  %cmp = icmp eq %struct._Chv* %chv, null
  %cmp1 = icmp eq i8* %chvname, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond204 = or i1 %or.cond, %cmp3
  br i1 %or.cond204, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([58 x i8]* @.str14, i64 0, i64 0), %struct._Chv* %chv, i8* %chvname, %struct._IO_FILE* %fp) #5
  call void @exit(i32 -1) #6
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._Chv* %chv, i64 0, i32 4
  %1 = load i32* %type, align 4, !tbaa !3
  %.off = add i32 %1, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end11, label %if.then8

if.then8:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([101 x i8]* @.str15, i64 0, i64 0), %struct._Chv* %chv, i8* %chvname, %struct._IO_FILE* %fp, i32 %1) #5
  call void @exit(i32 -1) #6
  unreachable

if.end11:                                         ; preds = %if.end
  call void @Chv_dimensions(%struct._Chv* %chv, i32* %nD, i32* %nL, i32* %nU) #5
  call void @Chv_rowIndices(%struct._Chv* %chv, i32* %nrow, i32** %rowind) #5
  call void @Chv_columnIndices(%struct._Chv* %chv, i32* %ncol, i32** %colind) #5
  %3 = load i32* %type, align 4, !tbaa !3
  switch i32 %3, label %if.end125 [
    i32 1, label %for.cond.preheader
    i32 2, label %for.cond67.preheader
  ]

for.cond67.preheader:                             ; preds = %if.end11
  %4 = load i32* %nD, align 4, !tbaa !3
  %cmp68230 = icmp sgt i32 %4, 0
  br i1 %cmp68230, label %for.cond70.preheader, label %for.cond105.preheader

for.cond.preheader:                               ; preds = %if.end11
  %5 = load i32* %nD, align 4, !tbaa !3
  %cmp15215 = icmp sgt i32 %5, 0
  br i1 %cmp15215, label %for.cond16.preheader, label %for.cond45.preheader

for.cond16.preheader:                             ; preds = %for.cond.preheader, %for.inc23
  %6 = phi i32 [ %16, %for.inc23 ], [ %5, %for.cond.preheader ]
  %indvars.iv241 = phi i64 [ %indvars.iv.next242, %for.inc23 ], [ 0, %for.cond.preheader ]
  %cmp17213 = icmp sgt i32 %6, 0
  br i1 %cmp17213, label %for.body18, label %for.inc23

for.cond26.preheader:                             ; preds = %for.inc23
  %cmp27211 = icmp sgt i32 %16, 0
  br i1 %cmp27211, label %for.cond29.preheader.lr.ph, label %for.cond45.preheader

for.cond29.preheader.lr.ph:                       ; preds = %for.cond26.preheader
  %.pre256 = load i32* %ncol, align 4, !tbaa !3
  br label %for.cond29.preheader

for.body18:                                       ; preds = %for.cond16.preheader, %for.body18
  %indvars.iv239 = phi i64 [ %indvars.iv.next240, %for.body18 ], [ 0, %for.cond16.preheader ]
  %7 = trunc i64 %indvars.iv239 to i32
  %8 = trunc i64 %indvars.iv241 to i32
  call void @Chv_realEntry(%struct._Chv* %chv, i32 %8, i32 %7, double* %value) #5
  %9 = load i32** %rowind, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %9, i64 %indvars.iv241
  %10 = load i32* %arrayidx, align 4, !tbaa !3
  %add = add nsw i32 %10, 1
  %11 = load i32** %colind, align 8, !tbaa !0
  %arrayidx20 = getelementptr inbounds i32* %11, i64 %indvars.iv239
  %12 = load i32* %arrayidx20, align 4, !tbaa !3
  %add21 = add nsw i32 %12, 1
  %13 = load double* %value, align 8, !tbaa !4
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([24 x i8]* @.str16, i64 0, i64 0), i8* %chvname, i32 %add, i32 %add21, double %13) #5
  %indvars.iv.next240 = add i64 %indvars.iv239, 1
  %14 = load i32* %nD, align 4, !tbaa !3
  %15 = trunc i64 %indvars.iv.next240 to i32
  %cmp17 = icmp slt i32 %15, %14
  br i1 %cmp17, label %for.body18, label %for.inc23

for.inc23:                                        ; preds = %for.body18, %for.cond16.preheader
  %16 = phi i32 [ %6, %for.cond16.preheader ], [ %14, %for.body18 ]
  %indvars.iv.next242 = add i64 %indvars.iv241, 1
  %17 = trunc i64 %indvars.iv.next242 to i32
  %cmp15 = icmp slt i32 %17, %16
  br i1 %cmp15, label %for.cond16.preheader, label %for.cond26.preheader

for.cond29.preheader:                             ; preds = %for.cond29.preheader.lr.ph, %for.inc42
  %18 = phi i32 [ %.pre256, %for.cond29.preheader.lr.ph ], [ %34, %for.inc42 ]
  %indvars.iv237 = phi i64 [ 0, %for.cond29.preheader.lr.ph ], [ %indvars.iv.next238, %for.inc42 ]
  %19 = phi i32 [ %16, %for.cond29.preheader.lr.ph ], [ %33, %for.inc42 ]
  %cmp30209 = icmp slt i32 %19, %18
  br i1 %cmp30209, label %for.body31.lr.ph, label %for.inc42

for.body31.lr.ph:                                 ; preds = %for.cond29.preheader
  %20 = sext i32 %19 to i64
  br label %for.body31

for.cond45.preheader:                             ; preds = %for.cond.preheader, %for.inc42, %for.cond26.preheader
  %21 = phi i32 [ %16, %for.cond26.preheader ], [ %33, %for.inc42 ], [ %5, %for.cond.preheader ]
  %22 = load i32* %nrow, align 4, !tbaa !3
  %cmp46207 = icmp slt i32 %21, %22
  br i1 %cmp46207, label %for.cond48.preheader.lr.ph, label %if.end125

for.cond48.preheader.lr.ph:                       ; preds = %for.cond45.preheader
  %23 = sext i32 %21 to i64
  br label %for.cond48.preheader

for.body31:                                       ; preds = %for.body31.lr.ph, %for.body31
  %indvars.iv234 = phi i64 [ %20, %for.body31.lr.ph ], [ %indvars.iv.next235, %for.body31 ]
  %24 = trunc i64 %indvars.iv234 to i32
  %25 = trunc i64 %indvars.iv237 to i32
  call void @Chv_realEntry(%struct._Chv* %chv, i32 %25, i32 %24, double* %value) #5
  %26 = load i32** %rowind, align 8, !tbaa !0
  %arrayidx33 = getelementptr inbounds i32* %26, i64 %indvars.iv237
  %27 = load i32* %arrayidx33, align 4, !tbaa !3
  %add34 = add nsw i32 %27, 1
  %28 = load i32** %colind, align 8, !tbaa !0
  %arrayidx36 = getelementptr inbounds i32* %28, i64 %indvars.iv234
  %29 = load i32* %arrayidx36, align 4, !tbaa !3
  %add37 = add nsw i32 %29, 1
  %30 = load double* %value, align 8, !tbaa !4
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([24 x i8]* @.str16, i64 0, i64 0), i8* %chvname, i32 %add34, i32 %add37, double %30) #5
  %indvars.iv.next235 = add i64 %indvars.iv234, 1
  %31 = load i32* %ncol, align 4, !tbaa !3
  %32 = trunc i64 %indvars.iv.next235 to i32
  %cmp30 = icmp slt i32 %32, %31
  br i1 %cmp30, label %for.body31, label %for.cond29.for.inc42_crit_edge

for.cond29.for.inc42_crit_edge:                   ; preds = %for.body31
  %.pre257 = load i32* %nD, align 4, !tbaa !3
  br label %for.inc42

for.inc42:                                        ; preds = %for.cond29.for.inc42_crit_edge, %for.cond29.preheader
  %33 = phi i32 [ %.pre257, %for.cond29.for.inc42_crit_edge ], [ %19, %for.cond29.preheader ]
  %34 = phi i32 [ %31, %for.cond29.for.inc42_crit_edge ], [ %18, %for.cond29.preheader ]
  %indvars.iv.next238 = add i64 %indvars.iv237, 1
  %35 = trunc i64 %indvars.iv.next238 to i32
  %cmp27 = icmp slt i32 %35, %33
  br i1 %cmp27, label %for.cond29.preheader, label %for.cond45.preheader

for.cond48.preheader:                             ; preds = %for.cond48.preheader.lr.ph, %for.inc61
  %36 = phi i32 [ %22, %for.cond48.preheader.lr.ph ], [ %47, %for.inc61 ]
  %37 = phi i32 [ %21, %for.cond48.preheader.lr.ph ], [ %48, %for.inc61 ]
  %indvars.iv232 = phi i64 [ %23, %for.cond48.preheader.lr.ph ], [ %indvars.iv.next233, %for.inc61 ]
  %cmp49205 = icmp sgt i32 %37, 0
  br i1 %cmp49205, label %for.body50, label %for.inc61

for.body50:                                       ; preds = %for.cond48.preheader, %for.body50
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body50 ], [ 0, %for.cond48.preheader ]
  %38 = trunc i64 %indvars.iv to i32
  %39 = trunc i64 %indvars.iv232 to i32
  call void @Chv_realEntry(%struct._Chv* %chv, i32 %39, i32 %38, double* %value) #5
  %40 = load i32** %rowind, align 8, !tbaa !0
  %arrayidx52 = getelementptr inbounds i32* %40, i64 %indvars.iv232
  %41 = load i32* %arrayidx52, align 4, !tbaa !3
  %add53 = add nsw i32 %41, 1
  %42 = load i32** %colind, align 8, !tbaa !0
  %arrayidx55 = getelementptr inbounds i32* %42, i64 %indvars.iv
  %43 = load i32* %arrayidx55, align 4, !tbaa !3
  %add56 = add nsw i32 %43, 1
  %44 = load double* %value, align 8, !tbaa !4
  %call57 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([24 x i8]* @.str16, i64 0, i64 0), i8* %chvname, i32 %add53, i32 %add56, double %44) #5
  %indvars.iv.next = add i64 %indvars.iv, 1
  %45 = load i32* %nD, align 4, !tbaa !3
  %46 = trunc i64 %indvars.iv.next to i32
  %cmp49 = icmp slt i32 %46, %45
  br i1 %cmp49, label %for.body50, label %for.cond48.for.inc61_crit_edge

for.cond48.for.inc61_crit_edge:                   ; preds = %for.body50
  %.pre = load i32* %nrow, align 4, !tbaa !3
  br label %for.inc61

for.inc61:                                        ; preds = %for.cond48.for.inc61_crit_edge, %for.cond48.preheader
  %47 = phi i32 [ %.pre, %for.cond48.for.inc61_crit_edge ], [ %36, %for.cond48.preheader ]
  %48 = phi i32 [ %45, %for.cond48.for.inc61_crit_edge ], [ %37, %for.cond48.preheader ]
  %indvars.iv.next233 = add i64 %indvars.iv232, 1
  %49 = trunc i64 %indvars.iv.next233 to i32
  %cmp46 = icmp slt i32 %49, %47
  br i1 %cmp46, label %for.cond48.preheader, label %if.end125

for.cond70.preheader:                             ; preds = %for.cond67.preheader, %for.inc83
  %50 = phi i32 [ %61, %for.inc83 ], [ %4, %for.cond67.preheader ]
  %indvars.iv254 = phi i64 [ %indvars.iv.next255, %for.inc83 ], [ 0, %for.cond67.preheader ]
  %cmp71228 = icmp sgt i32 %50, 0
  br i1 %cmp71228, label %for.body72, label %for.inc83

for.cond86.preheader:                             ; preds = %for.inc83
  %cmp87225 = icmp sgt i32 %61, 0
  br i1 %cmp87225, label %for.cond89.preheader.lr.ph, label %for.cond105.preheader

for.cond89.preheader.lr.ph:                       ; preds = %for.cond86.preheader
  %.pre259 = load i32* %ncol, align 4, !tbaa !3
  br label %for.cond89.preheader

for.body72:                                       ; preds = %for.cond70.preheader, %for.body72
  %indvars.iv252 = phi i64 [ %indvars.iv.next253, %for.body72 ], [ 0, %for.cond70.preheader ]
  %51 = trunc i64 %indvars.iv252 to i32
  %52 = trunc i64 %indvars.iv254 to i32
  call void @Chv_complexEntry(%struct._Chv* %chv, i32 %52, i32 %51, double* %real, double* %imag) #5
  %53 = load i32** %rowind, align 8, !tbaa !0
  %arrayidx74 = getelementptr inbounds i32* %53, i64 %indvars.iv254
  %54 = load i32* %arrayidx74, align 4, !tbaa !3
  %add75 = add nsw i32 %54, 1
  %55 = load i32** %colind, align 8, !tbaa !0
  %arrayidx77 = getelementptr inbounds i32* %55, i64 %indvars.iv252
  %56 = load i32* %arrayidx77, align 4, !tbaa !3
  %add78 = add nsw i32 %56, 1
  %57 = load double* %real, align 8, !tbaa !4
  %58 = load double* %imag, align 8, !tbaa !4
  %call79 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([35 x i8]* @.str17, i64 0, i64 0), i8* %chvname, i32 %add75, i32 %add78, double %57, double %58) #5
  %indvars.iv.next253 = add i64 %indvars.iv252, 1
  %59 = load i32* %nD, align 4, !tbaa !3
  %60 = trunc i64 %indvars.iv.next253 to i32
  %cmp71 = icmp slt i32 %60, %59
  br i1 %cmp71, label %for.body72, label %for.inc83

for.inc83:                                        ; preds = %for.body72, %for.cond70.preheader
  %61 = phi i32 [ %50, %for.cond70.preheader ], [ %59, %for.body72 ]
  %indvars.iv.next255 = add i64 %indvars.iv254, 1
  %62 = trunc i64 %indvars.iv.next255 to i32
  %cmp68 = icmp slt i32 %62, %61
  br i1 %cmp68, label %for.cond70.preheader, label %for.cond86.preheader

for.cond89.preheader:                             ; preds = %for.cond89.preheader.lr.ph, %for.inc102
  %63 = phi i32 [ %.pre259, %for.cond89.preheader.lr.ph ], [ %80, %for.inc102 ]
  %indvars.iv250 = phi i64 [ 0, %for.cond89.preheader.lr.ph ], [ %indvars.iv.next251, %for.inc102 ]
  %64 = phi i32 [ %61, %for.cond89.preheader.lr.ph ], [ %79, %for.inc102 ]
  %cmp90222 = icmp slt i32 %64, %63
  br i1 %cmp90222, label %for.body91.lr.ph, label %for.inc102

for.body91.lr.ph:                                 ; preds = %for.cond89.preheader
  %65 = sext i32 %64 to i64
  br label %for.body91

for.cond105.preheader:                            ; preds = %for.cond67.preheader, %for.inc102, %for.cond86.preheader
  %66 = phi i32 [ %61, %for.cond86.preheader ], [ %79, %for.inc102 ], [ %4, %for.cond67.preheader ]
  %67 = load i32* %nrow, align 4, !tbaa !3
  %cmp106220 = icmp slt i32 %66, %67
  br i1 %cmp106220, label %for.cond108.preheader.lr.ph, label %if.end125

for.cond108.preheader.lr.ph:                      ; preds = %for.cond105.preheader
  %68 = sext i32 %66 to i64
  br label %for.cond108.preheader

for.body91:                                       ; preds = %for.body91.lr.ph, %for.body91
  %indvars.iv247 = phi i64 [ %65, %for.body91.lr.ph ], [ %indvars.iv.next248, %for.body91 ]
  %69 = trunc i64 %indvars.iv247 to i32
  %70 = trunc i64 %indvars.iv250 to i32
  call void @Chv_complexEntry(%struct._Chv* %chv, i32 %70, i32 %69, double* %real, double* %imag) #5
  %71 = load i32** %rowind, align 8, !tbaa !0
  %arrayidx93 = getelementptr inbounds i32* %71, i64 %indvars.iv250
  %72 = load i32* %arrayidx93, align 4, !tbaa !3
  %add94 = add nsw i32 %72, 1
  %73 = load i32** %colind, align 8, !tbaa !0
  %arrayidx96 = getelementptr inbounds i32* %73, i64 %indvars.iv247
  %74 = load i32* %arrayidx96, align 4, !tbaa !3
  %add97 = add nsw i32 %74, 1
  %75 = load double* %real, align 8, !tbaa !4
  %76 = load double* %imag, align 8, !tbaa !4
  %call98 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([35 x i8]* @.str17, i64 0, i64 0), i8* %chvname, i32 %add94, i32 %add97, double %75, double %76) #5
  %indvars.iv.next248 = add i64 %indvars.iv247, 1
  %77 = load i32* %ncol, align 4, !tbaa !3
  %78 = trunc i64 %indvars.iv.next248 to i32
  %cmp90 = icmp slt i32 %78, %77
  br i1 %cmp90, label %for.body91, label %for.cond89.for.inc102_crit_edge

for.cond89.for.inc102_crit_edge:                  ; preds = %for.body91
  %.pre260 = load i32* %nD, align 4, !tbaa !3
  br label %for.inc102

for.inc102:                                       ; preds = %for.cond89.for.inc102_crit_edge, %for.cond89.preheader
  %79 = phi i32 [ %.pre260, %for.cond89.for.inc102_crit_edge ], [ %64, %for.cond89.preheader ]
  %80 = phi i32 [ %77, %for.cond89.for.inc102_crit_edge ], [ %63, %for.cond89.preheader ]
  %indvars.iv.next251 = add i64 %indvars.iv250, 1
  %81 = trunc i64 %indvars.iv.next251 to i32
  %cmp87 = icmp slt i32 %81, %79
  br i1 %cmp87, label %for.cond89.preheader, label %for.cond105.preheader

for.cond108.preheader:                            ; preds = %for.cond108.preheader.lr.ph, %for.inc121
  %82 = phi i32 [ %67, %for.cond108.preheader.lr.ph ], [ %94, %for.inc121 ]
  %83 = phi i32 [ %66, %for.cond108.preheader.lr.ph ], [ %95, %for.inc121 ]
  %indvars.iv245 = phi i64 [ %68, %for.cond108.preheader.lr.ph ], [ %indvars.iv.next246, %for.inc121 ]
  %cmp109217 = icmp sgt i32 %83, 0
  br i1 %cmp109217, label %for.body110, label %for.inc121

for.body110:                                      ; preds = %for.cond108.preheader, %for.body110
  %indvars.iv243 = phi i64 [ %indvars.iv.next244, %for.body110 ], [ 0, %for.cond108.preheader ]
  %84 = trunc i64 %indvars.iv243 to i32
  %85 = trunc i64 %indvars.iv245 to i32
  call void @Chv_complexEntry(%struct._Chv* %chv, i32 %85, i32 %84, double* %real, double* %imag) #5
  %86 = load i32** %rowind, align 8, !tbaa !0
  %arrayidx112 = getelementptr inbounds i32* %86, i64 %indvars.iv245
  %87 = load i32* %arrayidx112, align 4, !tbaa !3
  %add113 = add nsw i32 %87, 1
  %88 = load i32** %colind, align 8, !tbaa !0
  %arrayidx115 = getelementptr inbounds i32* %88, i64 %indvars.iv243
  %89 = load i32* %arrayidx115, align 4, !tbaa !3
  %add116 = add nsw i32 %89, 1
  %90 = load double* %real, align 8, !tbaa !4
  %91 = load double* %imag, align 8, !tbaa !4
  %call117 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([35 x i8]* @.str17, i64 0, i64 0), i8* %chvname, i32 %add113, i32 %add116, double %90, double %91) #5
  %indvars.iv.next244 = add i64 %indvars.iv243, 1
  %92 = load i32* %nD, align 4, !tbaa !3
  %93 = trunc i64 %indvars.iv.next244 to i32
  %cmp109 = icmp slt i32 %93, %92
  br i1 %cmp109, label %for.body110, label %for.cond108.for.inc121_crit_edge

for.cond108.for.inc121_crit_edge:                 ; preds = %for.body110
  %.pre258 = load i32* %nrow, align 4, !tbaa !3
  br label %for.inc121

for.inc121:                                       ; preds = %for.cond108.for.inc121_crit_edge, %for.cond108.preheader
  %94 = phi i32 [ %.pre258, %for.cond108.for.inc121_crit_edge ], [ %82, %for.cond108.preheader ]
  %95 = phi i32 [ %92, %for.cond108.for.inc121_crit_edge ], [ %83, %for.cond108.preheader ]
  %indvars.iv.next246 = add i64 %indvars.iv245, 1
  %96 = trunc i64 %indvars.iv.next246 to i32
  %cmp106 = icmp slt i32 %96, %94
  br i1 %cmp106, label %for.cond108.preheader, label %if.end125

if.end125:                                        ; preds = %for.cond105.preheader, %for.inc121, %for.cond45.preheader, %for.inc61, %if.end11
  ret void
}

; Function Attrs: optsize
declare void @Chv_realEntry(%struct._Chv*, i32, i32, double*) #3

; Function Attrs: optsize
declare void @Chv_complexEntry(%struct._Chv*, i32, i32, double*, double*) #3

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"double", metadata !1}
