; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/A2/src/A2_IO.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._A2 = type { i32, i32, i32, i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [45 x i8] c"\0A error in A2_readFromFile(%p,%s)\0A bad input\00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str2 = private unnamed_addr constant [55 x i8] c"\0A error in A2_readFromFile(%s)\0A unable to open file %s\00", align 1
@.str3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str4 = private unnamed_addr constant [97 x i8] c"\0A error in A2_readFromFile(%s)\0A bad A2 file name %s,\0A must end in %s (binary) or %s (formatted)\0A\00", align 1
@.str5 = private unnamed_addr constant [54 x i8] c"\0A error in A2_readFromFormattedFile(%p,%p)\0A bad input\00", align 1
@.str6 = private unnamed_addr constant [60 x i8] c"\0A error in A2_readFromFormattedFile()\0A %d items of %d read\0A\00", align 1
@.str7 = private unnamed_addr constant [58 x i8] c"\0A error in A2_readFromFormattedFile\0A %d items of %d read\0A\00", align 1
@.str8 = private unnamed_addr constant [57 x i8] c"\0A fatal error in A2_readFromBinaryFile(%p,%p)\0A bad input\00", align 1
@.str9 = private unnamed_addr constant [55 x i8] c"\0A error in A2_readFromBinaryFile\0A %d items of %d read\0A\00", align 1
@stdout = external global %struct._IO_FILE*
@.str10 = private unnamed_addr constant [31 x i8] c"\0A itemp = {%d, %d, %d, %d, %d}\00", align 1
@.str11 = private unnamed_addr constant [50 x i8] c"\0A fatal error in A2_writeToFile(%p,%s)\0A bad input\00", align 1
@.str12 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str13 = private unnamed_addr constant [52 x i8] c"\0A error in A2_writeToFile()\0A unable to open file %s\00", align 1
@.str14 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str15 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str16 = private unnamed_addr constant [50 x i8] c"\0A error in A2_writeToFile\0A unable to open file %s\00", align 1
@.str17 = private unnamed_addr constant [17 x i8] c"\0A %d %d %d %d %d\00", align 1
@.str18 = private unnamed_addr constant [56 x i8] c"\0A fatal error in A2_writeForHumanEye(%p,%p)\0A bad input\0A\00", align 1
@.str19 = private unnamed_addr constant [6 x i8] c"\0A    \00", align 1
@.str20 = private unnamed_addr constant [5 x i8] c"%19d\00", align 1
@.str21 = private unnamed_addr constant [5 x i8] c"\0A%4d\00", align 1
@.str22 = private unnamed_addr constant [8 x i8] c"%19.11e\00", align 1
@.str23 = private unnamed_addr constant [5 x i8] c"%36d\00", align 1
@.str24 = private unnamed_addr constant [19 x i8] c" (%16.9e,%16.9e*i)\00", align 1
@.str25 = private unnamed_addr constant [50 x i8] c"\0A fatal error in A2_writeStats(%p,%p)\0A bad input\0A\00", align 1
@.str26 = private unnamed_addr constant [32 x i8] c"\0A A2 : double 2D array object :\00", align 1
@.str27 = private unnamed_addr constant [40 x i8] c"\0A A2 : double complex 2D array object :\00", align 1
@.str28 = private unnamed_addr constant [126 x i8] c"\0A %d x %d matrix, inc1 = %d, inc2 = %d,\0A nowned = %d, %d entries allocated, occupies %d bytes\0A entries = %p, maxabs = %20.12e\00", align 1
@.str29 = private unnamed_addr constant [57 x i8] c"\0A fatal error in A2_writeForMatlab(%p,%p,%p)\0A bad input\0A\00", align 1
@.str30 = private unnamed_addr constant [24 x i8] c"\0A %s(%d,%d) = %24.16e ;\00", align 1
@.str31 = private unnamed_addr constant [36 x i8] c"\0A %s(%d,%d) = %24.16e + %24.16e*i ;\00", align 1
@.str32 = private unnamed_addr constant [5 x i8] c".a2f\00", align 1
@.str33 = private unnamed_addr constant [5 x i8] c".a2b\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @A2_readFromFile(%struct._A2* %mtx, i8* %fn) #0 {
entry:
  %cmp = icmp eq %struct._A2* %mtx, null
  %cmp1 = icmp eq i8* %fn, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([45 x i8]* @.str, i64 0, i64 0), %struct._A2* %mtx, i8* %fn) #5
  br label %return

if.end:                                           ; preds = %entry
  %call2 = tail call i64 @strlen(i8* %fn) #6
  %conv = trunc i64 %call2 to i32
  %cmp5 = icmp sgt i32 %conv, 4
  br i1 %cmp5, label %if.then7, label %if.else41

if.then7:                                         ; preds = %if.end
  %sub = shl i64 %call2, 32
  %sext = add i64 %sub, -17179869184
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds i8* %fn, i64 %idxprom
  %call8 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([5 x i8]* @.str33, i64 0, i64 0)) #6
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then11, label %if.else20

if.then11:                                        ; preds = %if.then7
  %call12 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([3 x i8]* @.str1, i64 0, i64 0)) #5
  %cmp13 = icmp eq %struct._IO_FILE* %call12, null
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.then11
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([55 x i8]* @.str2, i64 0, i64 0), i8* %fn, i8* %fn) #5
  br label %return

if.else:                                          ; preds = %if.then11
  %call17 = tail call i32 @A2_readFromBinaryFile(%struct._A2* %mtx, %struct._IO_FILE* %call12) #7
  %call18 = tail call i32 @fclose(%struct._IO_FILE* %call12) #5
  br label %return

if.else20:                                        ; preds = %if.then7
  %call24 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([5 x i8]* @.str32, i64 0, i64 0)) #6
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %if.then27, label %if.else37

if.then27:                                        ; preds = %if.else20
  %call28 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str3, i64 0, i64 0)) #5
  %cmp29 = icmp eq %struct._IO_FILE* %call28, null
  br i1 %cmp29, label %if.then31, label %if.else33

if.then31:                                        ; preds = %if.then27
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call32 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([55 x i8]* @.str2, i64 0, i64 0), i8* %fn, i8* %fn) #5
  br label %return

if.else33:                                        ; preds = %if.then27
  %call34 = tail call i32 @A2_readFromFormattedFile(%struct._A2* %mtx, %struct._IO_FILE* %call28) #7
  %call35 = tail call i32 @fclose(%struct._IO_FILE* %call28) #5
  br label %return

if.else37:                                        ; preds = %if.else20
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call38 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([97 x i8]* @.str4, i64 0, i64 0), i8* %fn, i8* %fn, i8* getelementptr inbounds ([5 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str32, i64 0, i64 0)) #5
  br label %return

if.else41:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call42 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([97 x i8]* @.str4, i64 0, i64 0), i8* %fn, i8* %fn, i8* getelementptr inbounds ([5 x i8]* @.str33, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str32, i64 0, i64 0)) #5
  br label %return

return:                                           ; preds = %if.else41, %if.else37, %if.else33, %if.then31, %if.then15, %if.else, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then15 ], [ %call17, %if.else ], [ 0, %if.then31 ], [ %call34, %if.else33 ], [ 0, %if.else37 ], [ 0, %if.else41 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #1

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #2

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #2

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define i32 @A2_readFromBinaryFile(%struct._A2* %mtx, %struct._IO_FILE* %fp) #0 {
entry:
  %itemp = alloca [5 x i32], align 16
  %cmp = icmp eq %struct._A2* %mtx, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([57 x i8]* @.str8, i64 0, i64 0), %struct._A2* %mtx, %struct._IO_FILE* %fp) #5
  br label %return

if.end:                                           ; preds = %entry
  call void @A2_clearData(%struct._A2* %mtx) #5
  %1 = bitcast [5 x i32]* %itemp to i8*
  %call2 = call i64 @fread(i8* %1, i64 4, i64 5, %struct._IO_FILE* %fp) #5
  %conv = trunc i64 %call2 to i32
  %cmp3 = icmp eq i32 %conv, 5
  br i1 %cmp3, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([55 x i8]* @.str9, i64 0, i64 0), i32 %conv, i32 5) #5
  br label %return

if.end7:                                          ; preds = %if.end
  %3 = load %struct._IO_FILE** @stdout, align 8, !tbaa !0
  %4 = bitcast [5 x i32]* %itemp to i64*
  %5 = load i64* %4, align 16
  %6 = trunc i64 %5 to i32
  %7 = lshr i64 %5, 32
  %8 = trunc i64 %7 to i32
  %arrayidx9 = getelementptr inbounds [5 x i32]* %itemp, i64 0, i64 2
  %9 = bitcast i32* %arrayidx9 to i64*
  %10 = load i64* %9, align 8
  %11 = trunc i64 %10 to i32
  %12 = lshr i64 %10, 32
  %13 = trunc i64 %12 to i32
  %arrayidx11 = getelementptr inbounds [5 x i32]* %itemp, i64 0, i64 4
  %14 = load i32* %arrayidx11, align 16, !tbaa !3
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([31 x i8]* @.str10, i64 0, i64 0), i32 %6, i32 %8, i32 %11, i32 %13, i32 %14) #5
  %15 = load %struct._IO_FILE** @stdout, align 8, !tbaa !0
  %call13 = call i32 @fflush(%struct._IO_FILE* %15) #5
  call void @A2_init(%struct._A2* %mtx, i32 %6, i32 %8, i32 %11, i32 %13, i32 %14, double* null) #5
  %n1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1
  %16 = load i32* %n1, align 4, !tbaa !3
  %sub = add nsw i32 %16, -1
  %inc1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3
  %17 = load i32* %inc1, align 4, !tbaa !3
  %mul = mul nsw i32 %sub, %17
  %add = add nsw i32 %mul, 1
  %n2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2
  %18 = load i32* %n2, align 4, !tbaa !3
  %sub19 = add nsw i32 %18, -1
  %inc2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4
  %19 = load i32* %inc2, align 4, !tbaa !3
  %mul20 = mul nsw i32 %sub19, %19
  %add21 = add nsw i32 %add, %mul20
  %cmp22 = icmp sgt i32 %add21, 0
  br i1 %cmp22, label %if.then24, label %return

if.then24:                                        ; preds = %if.end7
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0
  %20 = load i32* %type, align 4, !tbaa !3
  switch i32 %20, label %return [
    i32 1, label %if.then27
    i32 2, label %if.then39
  ]

if.then27:                                        ; preds = %if.then24
  %entries = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6
  %21 = load double** %entries, align 8, !tbaa !0
  %22 = bitcast double* %21 to i8*
  %conv28 = sext i32 %add21 to i64
  %call29 = call i64 @fread(i8* %22, i64 8, i64 %conv28, %struct._IO_FILE* %fp) #5
  %conv30 = trunc i64 %call29 to i32
  %cmp31 = icmp eq i32 %conv30, %add21
  br i1 %cmp31, label %return, label %if.then33

if.then33:                                        ; preds = %if.then27
  %23 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([55 x i8]* @.str9, i64 0, i64 0), i32 %conv30, i32 %add21) #5
  br label %return

if.then39:                                        ; preds = %if.then24
  %entries40 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6
  %24 = load double** %entries40, align 8, !tbaa !0
  %25 = bitcast double* %24 to i8*
  %mul41 = shl nsw i32 %add21, 1
  %conv42 = sext i32 %mul41 to i64
  %call43 = call i64 @fread(i8* %25, i64 8, i64 %conv42, %struct._IO_FILE* %fp) #5
  %conv44 = trunc i64 %call43 to i32
  %cmp46 = icmp eq i32 %conv44, %mul41
  br i1 %cmp46, label %return, label %if.then48

if.then48:                                        ; preds = %if.then39
  %26 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call50 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([55 x i8]* @.str9, i64 0, i64 0), i32 %conv44, i32 %mul41) #5
  br label %return

return:                                           ; preds = %if.end7, %if.then39, %if.then27, %if.then24, %if.then48, %if.then33, %if.then5, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then5 ], [ 0, %if.then33 ], [ 0, %if.then48 ], [ 1, %if.then24 ], [ 1, %if.then27 ], [ 1, %if.then39 ], [ 1, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define i32 @A2_readFromFormattedFile(%struct._A2* %mtx, %struct._IO_FILE* %fp) #0 {
entry:
  %itemp = alloca [5 x i32], align 16
  %cmp = icmp eq %struct._A2* %mtx, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([54 x i8]* @.str5, i64 0, i64 0), %struct._A2* %mtx, %struct._IO_FILE* %fp) #5
  br label %return

if.end:                                           ; preds = %entry
  call void @A2_clearData(%struct._A2* %mtx) #5
  %arraydecay = getelementptr inbounds [5 x i32]* %itemp, i64 0, i64 0
  %call2 = call i32 @IVfscanf(%struct._IO_FILE* %fp, i32 5, i32* %arraydecay) #5
  %cmp3 = icmp eq i32 %call2, 5
  br i1 %cmp3, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([60 x i8]* @.str6, i64 0, i64 0), i32 %call2, i32 5) #5
  br label %return

if.end6:                                          ; preds = %if.end
  %2 = bitcast [5 x i32]* %itemp to i64*
  %3 = load i64* %2, align 16
  %4 = trunc i64 %3 to i32
  %5 = lshr i64 %3, 32
  %6 = trunc i64 %5 to i32
  %arrayidx8 = getelementptr inbounds [5 x i32]* %itemp, i64 0, i64 2
  %7 = bitcast i32* %arrayidx8 to i64*
  %8 = load i64* %7, align 8
  %9 = trunc i64 %8 to i32
  %10 = lshr i64 %8, 32
  %11 = trunc i64 %10 to i32
  %arrayidx10 = getelementptr inbounds [5 x i32]* %itemp, i64 0, i64 4
  %12 = load i32* %arrayidx10, align 16, !tbaa !3
  call void @A2_init(%struct._A2* %mtx, i32 %4, i32 %6, i32 %9, i32 %11, i32 %12, double* null) #5
  %n1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1
  %13 = load i32* %n1, align 4, !tbaa !3
  %sub = add nsw i32 %13, -1
  %inc1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3
  %14 = load i32* %inc1, align 4, !tbaa !3
  %mul = mul nsw i32 %sub, %14
  %add = add nsw i32 %mul, 1
  %n2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2
  %15 = load i32* %n2, align 4, !tbaa !3
  %sub11 = add nsw i32 %15, -1
  %inc2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4
  %16 = load i32* %inc2, align 4, !tbaa !3
  %mul12 = mul nsw i32 %sub11, %16
  %add13 = add nsw i32 %add, %mul12
  %cmp14 = icmp sgt i32 %add13, 0
  br i1 %cmp14, label %if.then15, label %return

if.then15:                                        ; preds = %if.end6
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0
  %17 = load i32* %type, align 4, !tbaa !3
  switch i32 %17, label %return [
    i32 1, label %if.then17
    i32 2, label %if.then25
  ]

if.then17:                                        ; preds = %if.then15
  %entries = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6
  %18 = load double** %entries, align 8, !tbaa !0
  %call18 = call i32 @DVfscanf(%struct._IO_FILE* %fp, i32 %add13, double* %18) #5
  %cmp19 = icmp eq i32 %call18, %add13
  br i1 %cmp19, label %return, label %if.then20

if.then20:                                        ; preds = %if.then17
  %19 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([58 x i8]* @.str7, i64 0, i64 0), i32 %call18, i32 %add13) #5
  br label %return

if.then25:                                        ; preds = %if.then15
  %mul26 = shl nsw i32 %add13, 1
  %entries27 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6
  %20 = load double** %entries27, align 8, !tbaa !0
  %call28 = call i32 @DVfscanf(%struct._IO_FILE* %fp, i32 %mul26, double* %20) #5
  %cmp30 = icmp eq i32 %call28, %mul26
  br i1 %cmp30, label %return, label %if.then31

if.then31:                                        ; preds = %if.then25
  %21 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([58 x i8]* @.str7, i64 0, i64 0), i32 %call28, i32 %mul26) #5
  br label %return

return:                                           ; preds = %if.end6, %if.then25, %if.then17, %if.then15, %if.then31, %if.then20, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ 0, %if.then20 ], [ 0, %if.then31 ], [ 1, %if.then15 ], [ 1, %if.then17 ], [ 1, %if.then25 ], [ 1, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare void @A2_clearData(%struct._A2*) #3

; Function Attrs: optsize
declare i32 @IVfscanf(%struct._IO_FILE*, i32, i32*) #3

; Function Attrs: optsize
declare void @A2_init(%struct._A2*, i32, i32, i32, i32, i32, double*) #3

; Function Attrs: optsize
declare i32 @DVfscanf(%struct._IO_FILE*, i32, double*) #3

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define void @A2_writeToFile(%struct._A2* %mtx, i8* %fn) #0 {
entry:
  %cmp = icmp eq %struct._A2* %mtx, null
  %cmp1 = icmp eq i8* %fn, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8]* @.str11, i64 0, i64 0), %struct._A2* %mtx, i8* %fn) #5
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %call2 = tail call i64 @strlen(i8* %fn) #6
  %conv = trunc i64 %call2 to i32
  %cmp5 = icmp sgt i32 %conv, 4
  br i1 %cmp5, label %if.then7, label %if.else46

if.then7:                                         ; preds = %if.end
  %sub = shl i64 %call2, 32
  %sext = add i64 %sub, -17179869184
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds i8* %fn, i64 %idxprom
  %call8 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([5 x i8]* @.str33, i64 0, i64 0)) #6
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then11, label %if.else19

if.then11:                                        ; preds = %if.then7
  %call12 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([3 x i8]* @.str12, i64 0, i64 0)) #5
  %cmp13 = icmp eq %struct._IO_FILE* %call12, null
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.then11
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([52 x i8]* @.str13, i64 0, i64 0), i8* %fn) #5
  br label %if.end55

if.else:                                          ; preds = %if.then11
  tail call void @A2_writeToBinaryFile(%struct._A2* %mtx, %struct._IO_FILE* %call12) #7
  %call17 = tail call i32 @fclose(%struct._IO_FILE* %call12) #5
  br label %if.end55

if.else19:                                        ; preds = %if.then7
  %call23 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([5 x i8]* @.str32, i64 0, i64 0)) #6
  %cmp24 = icmp eq i32 %call23, 0
  br i1 %cmp24, label %if.then26, label %if.else35

if.then26:                                        ; preds = %if.else19
  %call27 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str14, i64 0, i64 0)) #5
  %cmp28 = icmp eq %struct._IO_FILE* %call27, null
  br i1 %cmp28, label %if.then30, label %if.else32

if.then30:                                        ; preds = %if.then26
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call31 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([52 x i8]* @.str13, i64 0, i64 0), i8* %fn) #5
  br label %if.end55

if.else32:                                        ; preds = %if.then26
  tail call void @A2_writeToFormattedFile(%struct._A2* %mtx, %struct._IO_FILE* %call27) #7
  %call33 = tail call i32 @fclose(%struct._IO_FILE* %call27) #5
  br label %if.end55

if.else35:                                        ; preds = %if.else19
  %call36 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str15, i64 0, i64 0)) #5
  %cmp37 = icmp eq %struct._IO_FILE* %call36, null
  br i1 %cmp37, label %if.then39, label %if.else41

if.then39:                                        ; preds = %if.else35
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call40 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([52 x i8]* @.str13, i64 0, i64 0), i8* %fn) #5
  br label %if.end55

if.else41:                                        ; preds = %if.else35
  tail call void @A2_writeForHumanEye(%struct._A2* %mtx, %struct._IO_FILE* %call36) #7
  %call42 = tail call i32 @fclose(%struct._IO_FILE* %call36) #5
  br label %if.end55

if.else46:                                        ; preds = %if.end
  %call47 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str15, i64 0, i64 0)) #5
  %cmp48 = icmp eq %struct._IO_FILE* %call47, null
  br i1 %cmp48, label %if.then50, label %if.else52

if.then50:                                        ; preds = %if.else46
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call51 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([50 x i8]* @.str16, i64 0, i64 0), i8* %fn) #5
  br label %if.end55

if.else52:                                        ; preds = %if.else46
  tail call void @A2_writeForHumanEye(%struct._A2* %mtx, %struct._IO_FILE* %call47) #7
  %call53 = tail call i32 @fclose(%struct._IO_FILE* %call47) #5
  br label %if.end55

if.end55:                                         ; preds = %if.then50, %if.else52, %if.else, %if.then15, %if.then39, %if.else41, %if.then30, %if.else32
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @A2_writeToBinaryFile(%struct._A2* nocapture %mtx, %struct._IO_FILE* %fp) #0 {
entry:
  %cmp = icmp eq %struct._IO_FILE* %fp, null
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0
  %0 = bitcast %struct._A2* %mtx to i8*
  %call = tail call i64 @fwrite(i8* %0, i64 4, i64 1, %struct._IO_FILE* %fp) #5
  %n1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1
  %1 = bitcast i32* %n1 to i8*
  %call1 = tail call i64 @fwrite(i8* %1, i64 4, i64 1, %struct._IO_FILE* %fp) #5
  %n2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2
  %2 = bitcast i32* %n2 to i8*
  %call2 = tail call i64 @fwrite(i8* %2, i64 4, i64 1, %struct._IO_FILE* %fp) #5
  %inc1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3
  %3 = bitcast i32* %inc1 to i8*
  %call3 = tail call i64 @fwrite(i8* %3, i64 4, i64 1, %struct._IO_FILE* %fp) #5
  %inc2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4
  %4 = bitcast i32* %inc2 to i8*
  %call4 = tail call i64 @fwrite(i8* %4, i64 4, i64 1, %struct._IO_FILE* %fp) #5
  %5 = load i32* %n1, align 4, !tbaa !3
  %sub = add nsw i32 %5, -1
  %6 = load i32* %inc1, align 4, !tbaa !3
  %mul = mul nsw i32 %sub, %6
  %add = add nsw i32 %mul, 1
  %7 = load i32* %n2, align 4, !tbaa !3
  %sub8 = add nsw i32 %7, -1
  %8 = load i32* %inc2, align 4, !tbaa !3
  %mul10 = mul nsw i32 %sub8, %8
  %add11 = add nsw i32 %add, %mul10
  %cmp12 = icmp sgt i32 %add11, 0
  br i1 %cmp12, label %land.lhs.true, label %return

land.lhs.true:                                    ; preds = %if.end
  %entries = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6
  %9 = load double** %entries, align 8, !tbaa !0
  %cmp13 = icmp eq double* %9, null
  br i1 %cmp13, label %return, label %if.then14

if.then14:                                        ; preds = %land.lhs.true
  %10 = load i32* %type, align 4, !tbaa !3
  switch i32 %10, label %return [
    i32 1, label %if.then17
    i32 2, label %if.then23
  ]

if.then17:                                        ; preds = %if.then14
  %11 = bitcast double** %entries to i8*
  %conv = sext i32 %add11 to i64
  %call19 = tail call i64 @fwrite(i8* %11, i64 8, i64 %conv, %struct._IO_FILE* %fp) #5
  br label %return

if.then23:                                        ; preds = %if.then14
  %12 = bitcast double** %entries to i8*
  %mul25 = shl nsw i32 %add11, 1
  %conv26 = sext i32 %mul25 to i64
  %call27 = tail call i64 @fwrite(i8* %12, i64 8, i64 %conv26, %struct._IO_FILE* %fp) #5
  br label %return

return:                                           ; preds = %if.then14, %land.lhs.true, %if.end, %if.then23, %if.then17, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @A2_writeToFormattedFile(%struct._A2* %mtx, %struct._IO_FILE* %fp) #0 {
entry:
  %cmp = icmp eq %struct._A2* %mtx, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %return, label %if.end

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0
  %0 = load i32* %type, align 4, !tbaa !3
  %n1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1
  %1 = load i32* %n1, align 4, !tbaa !3
  %n2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2
  %2 = load i32* %n2, align 4, !tbaa !3
  %inc1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3
  %3 = load i32* %inc1, align 4, !tbaa !3
  %inc2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4
  %4 = load i32* %inc2, align 4, !tbaa !3
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([17 x i8]* @.str17, i64 0, i64 0), i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #5
  %5 = load i32* %n1, align 4, !tbaa !3
  %sub = add nsw i32 %5, -1
  %6 = load i32* %inc1, align 4, !tbaa !3
  %mul = mul nsw i32 %sub, %6
  %add = add nsw i32 %mul, 1
  %7 = load i32* %n2, align 4, !tbaa !3
  %sub5 = add nsw i32 %7, -1
  %8 = load i32* %inc2, align 4, !tbaa !3
  %mul7 = mul nsw i32 %sub5, %8
  %add8 = add nsw i32 %add, %mul7
  %cmp9 = icmp sgt i32 %add8, 0
  br i1 %cmp9, label %land.lhs.true, label %return

land.lhs.true:                                    ; preds = %if.end
  %entries = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6
  %9 = load double** %entries, align 8, !tbaa !0
  %cmp10 = icmp eq double* %9, null
  br i1 %cmp10, label %return, label %if.then11

if.then11:                                        ; preds = %land.lhs.true
  %10 = load i32* %type, align 4, !tbaa !3
  switch i32 %10, label %return [
    i32 1, label %if.then14
    i32 2, label %if.then18
  ]

if.then14:                                        ; preds = %if.then11
  tail call void @DVfprintf(%struct._IO_FILE* %fp, i32 %add8, double* %9) #5
  br label %return

if.then18:                                        ; preds = %if.then11
  %mul19 = shl nsw i32 %add8, 1
  tail call void @DVfprintf(%struct._IO_FILE* %fp, i32 %mul19, double* %9) #5
  br label %return

return:                                           ; preds = %if.then11, %land.lhs.true, %if.end, %if.then18, %if.then14, %entry
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @A2_writeForHumanEye(%struct._A2* %mtx, %struct._IO_FILE* %fp) #0 {
entry:
  %cmp = icmp eq %struct._A2* %mtx, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([56 x i8]* @.str18, i64 0, i64 0), %struct._A2* %mtx, %struct._IO_FILE* %fp) #5
  tail call void @exit(i32 -1) #8
  unreachable

if.end:                                           ; preds = %entry
  tail call void @A2_writeStats(%struct._A2* %mtx, %struct._IO_FILE* %fp) #7
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0
  %1 = load i32* %type, align 4, !tbaa !3
  switch i32 %1, label %if.end88 [
    i32 1, label %for.cond.preheader
    i32 2, label %for.cond37.preheader
  ]

for.cond37.preheader:                             ; preds = %if.end
  %n238 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2
  %2 = load i32* %n238, align 4, !tbaa !3
  %cmp39171 = icmp sgt i32 %2, 0
  br i1 %cmp39171, label %for.body40.lr.ph, label %if.end88

for.body40.lr.ph:                                 ; preds = %for.cond37.preheader
  %n157 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1
  %inc164 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3
  %inc266 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4
  %entries71 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6
  br label %for.body40

for.cond.preheader:                               ; preds = %if.end
  %n2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2
  %3 = load i32* %n2, align 4, !tbaa !3
  %cmp4160 = icmp sgt i32 %3, 0
  br i1 %cmp4160, label %for.body.lr.ph, label %if.end88

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %n1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1
  %inc1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3
  %inc2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4
  %entries = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc31
  %4 = phi i32 [ %3, %for.body.lr.ph ], [ %12, %for.inc31 ]
  %jfirst.0161 = phi i32 [ 0, %for.body.lr.ph ], [ %add32, %for.inc31 ]
  %add152 = or i32 %jfirst.0161, 3
  %cmp6 = icmp slt i32 %add152, %4
  %sub = add nsw i32 %4, -1
  %add152.sub = select i1 %cmp6, i32 %add152, i32 %sub
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([6 x i8]* @.str19, i64 0, i64 0), i64 5, i64 1, %struct._IO_FILE* %fp) #9
  %cmp12153 = icmp sgt i32 %jfirst.0161, %add152.sub
  br i1 %cmp12153, label %for.cond15.loopexit, label %for.body13

for.body13:                                       ; preds = %for.body, %for.body13
  %j.0154 = phi i32 [ %inc, %for.body13 ], [ %jfirst.0161, %for.body ]
  %call14 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str20, i64 0, i64 0), i32 %j.0154) #5
  %inc = add nsw i32 %j.0154, 1
  %exitcond = icmp eq i32 %j.0154, %add152.sub
  br i1 %exitcond, label %for.cond15.loopexit, label %for.body13

for.cond15.loopexit:                              ; preds = %for.body13, %for.body
  %6 = load i32* %n1, align 4, !tbaa !3
  %cmp16157 = icmp sgt i32 %6, 0
  br i1 %cmp16157, label %for.body17, label %for.inc31

for.body17:                                       ; preds = %for.cond15.loopexit, %for.inc28
  %i.0158 = phi i32 [ %inc29, %for.inc28 ], [ 0, %for.cond15.loopexit ]
  %call18 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str21, i64 0, i64 0), i32 %i.0158) #5
  br i1 %cmp12153, label %for.inc28, label %for.body21

for.body21:                                       ; preds = %for.body17, %for.body21
  %j.1156 = phi i32 [ %inc26, %for.body21 ], [ %jfirst.0161, %for.body17 ]
  %7 = load i32* %inc1, align 4, !tbaa !3
  %mul = mul nsw i32 %7, %i.0158
  %8 = load i32* %inc2, align 4, !tbaa !3
  %mul22 = mul nsw i32 %8, %j.1156
  %add23 = add nsw i32 %mul22, %mul
  %idxprom = sext i32 %add23 to i64
  %9 = load double** %entries, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds double* %9, i64 %idxprom
  %10 = load double* %arrayidx, align 8, !tbaa !4
  %call24 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([8 x i8]* @.str22, i64 0, i64 0), double %10) #5
  %inc26 = add nsw i32 %j.1156, 1
  %exitcond174 = icmp eq i32 %j.1156, %add152.sub
  br i1 %exitcond174, label %for.inc28, label %for.body21

for.inc28:                                        ; preds = %for.body21, %for.body17
  %inc29 = add nsw i32 %i.0158, 1
  %11 = load i32* %n1, align 4, !tbaa !3
  %cmp16 = icmp slt i32 %inc29, %11
  br i1 %cmp16, label %for.body17, label %for.inc31

for.inc31:                                        ; preds = %for.inc28, %for.cond15.loopexit
  %add32 = add nsw i32 %jfirst.0161, 4
  %12 = load i32* %n2, align 4, !tbaa !3
  %cmp4 = icmp slt i32 %add32, %12
  br i1 %cmp4, label %for.body, label %if.end88

for.body40:                                       ; preds = %for.body40.lr.ph, %for.inc84
  %13 = phi i32 [ %2, %for.body40.lr.ph ], [ %22, %for.inc84 ]
  %jfirst.1172 = phi i32 [ 0, %for.body40.lr.ph ], [ %add85, %for.inc84 ]
  %add41150 = or i32 %jfirst.1172, 1
  %cmp43 = icmp slt i32 %add41150, %13
  %sub46 = add nsw i32 %13, -1
  %add41150.sub46 = select i1 %cmp43, i32 %add41150, i32 %sub46
  %14 = tail call i64 @fwrite(i8* getelementptr inbounds ([6 x i8]* @.str19, i64 0, i64 0), i64 5, i64 1, %struct._IO_FILE* %fp) #9
  %cmp50163 = icmp sgt i32 %jfirst.1172, %add41150.sub46
  br i1 %cmp50163, label %for.cond56.loopexit, label %for.body51

for.body51:                                       ; preds = %for.body40, %for.body51
  %j.2164 = phi i32 [ %inc54, %for.body51 ], [ %jfirst.1172, %for.body40 ]
  %call52 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str23, i64 0, i64 0), i32 %j.2164) #5
  %inc54 = add nsw i32 %j.2164, 1
  %exitcond175 = icmp eq i32 %j.2164, %add41150.sub46
  br i1 %exitcond175, label %for.cond56.loopexit, label %for.body51

for.cond56.loopexit:                              ; preds = %for.body51, %for.body40
  %15 = load i32* %n157, align 4, !tbaa !3
  %cmp58167 = icmp sgt i32 %15, 0
  br i1 %cmp58167, label %for.body59, label %for.inc84

for.body59:                                       ; preds = %for.cond56.loopexit, %for.inc81
  %i.1168 = phi i32 [ %inc82, %for.inc81 ], [ 0, %for.cond56.loopexit ]
  %call60 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str21, i64 0, i64 0), i32 %i.1168) #5
  br i1 %cmp50163, label %for.inc81, label %for.body63

for.body63:                                       ; preds = %for.body59, %for.body63
  %j.3166 = phi i32 [ %inc79, %for.body63 ], [ %jfirst.1172, %for.body59 ]
  %16 = load i32* %inc164, align 4, !tbaa !3
  %mul65 = mul nsw i32 %16, %i.1168
  %17 = load i32* %inc266, align 4, !tbaa !3
  %mul67 = mul nsw i32 %17, %j.3166
  %add68 = add nsw i32 %mul67, %mul65
  %mul69 = shl nsw i32 %add68, 1
  %idxprom70 = sext i32 %mul69 to i64
  %18 = load double** %entries71, align 8, !tbaa !0
  %arrayidx72 = getelementptr inbounds double* %18, i64 %idxprom70
  %19 = load double* %arrayidx72, align 8, !tbaa !4
  %add73151 = or i32 %mul69, 1
  %idxprom74 = sext i32 %add73151 to i64
  %arrayidx76 = getelementptr inbounds double* %18, i64 %idxprom74
  %20 = load double* %arrayidx76, align 8, !tbaa !4
  %call77 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str24, i64 0, i64 0), double %19, double %20) #5
  %inc79 = add nsw i32 %j.3166, 1
  %exitcond176 = icmp eq i32 %j.3166, %add41150.sub46
  br i1 %exitcond176, label %for.inc81, label %for.body63

for.inc81:                                        ; preds = %for.body63, %for.body59
  %inc82 = add nsw i32 %i.1168, 1
  %21 = load i32* %n157, align 4, !tbaa !3
  %cmp58 = icmp slt i32 %inc82, %21
  br i1 %cmp58, label %for.body59, label %for.inc84

for.inc84:                                        ; preds = %for.inc81, %for.cond56.loopexit
  %add85 = add nsw i32 %jfirst.1172, 2
  %22 = load i32* %n238, align 4, !tbaa !3
  %cmp39 = icmp slt i32 %add85, %22
  br i1 %cmp39, label %for.body40, label %if.end88

if.end88:                                         ; preds = %for.cond37.preheader, %for.inc84, %for.cond.preheader, %for.inc31, %if.end
  ret void
}

; Function Attrs: optsize
declare void @DVfprintf(%struct._IO_FILE*, i32, double*) #3

; Function Attrs: nounwind optsize
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #4

; Function Attrs: nounwind optsize uwtable
define void @A2_writeStats(%struct._A2* %mtx, %struct._IO_FILE* %fp) #0 {
entry:
  %cmp = icmp eq %struct._A2* %mtx, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8]* @.str25, i64 0, i64 0), %struct._A2* %mtx, %struct._IO_FILE* %fp) #5
  tail call void @exit(i32 -1) #8
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0
  %1 = load i32* %type, align 4, !tbaa !3
  switch i32 %1, label %if.end10 [
    i32 1, label %if.then3
    i32 2, label %if.then7
  ]

if.then3:                                         ; preds = %if.end
  %2 = tail call i64 @fwrite(i8* getelementptr inbounds ([32 x i8]* @.str26, i64 0, i64 0), i64 31, i64 1, %struct._IO_FILE* %fp) #9
  br label %if.end10

if.then7:                                         ; preds = %if.end
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([40 x i8]* @.str27, i64 0, i64 0), i64 39, i64 1, %struct._IO_FILE* %fp) #9
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then7, %if.then3
  %n1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 1
  %4 = load i32* %n1, align 4, !tbaa !3
  %n2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 2
  %5 = load i32* %n2, align 4, !tbaa !3
  %inc1 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 3
  %6 = load i32* %inc1, align 4, !tbaa !3
  %inc2 = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 4
  %7 = load i32* %inc2, align 4, !tbaa !3
  %nowned = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 5
  %8 = load i32* %nowned, align 4, !tbaa !3
  %mul = mul nsw i32 %5, %4
  %call13 = tail call i32 @A2_sizeOf(%struct._A2* %mtx) #5
  %entries = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 6
  %9 = load double** %entries, align 8, !tbaa !0
  %call14 = tail call double @A2_maxabs(%struct._A2* %mtx) #5
  %call15 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([126 x i8]* @.str28, i64 0, i64 0), i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %mul, i32 %call13, double* %9, double %call14) #5
  ret void
}

; Function Attrs: optsize
declare i32 @A2_sizeOf(%struct._A2*) #3

; Function Attrs: optsize
declare double @A2_maxabs(%struct._A2*) #3

; Function Attrs: nounwind optsize uwtable
define void @A2_writeForMatlab(%struct._A2* %mtx, i8* %mtxname, %struct._IO_FILE* %fp) #0 {
entry:
  %value = alloca double, align 8
  %imag = alloca double, align 8
  %real = alloca double, align 8
  %cmp = icmp eq %struct._A2* %mtx, null
  %cmp1 = icmp eq i8* %mtxname, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond47 = or i1 %or.cond, %cmp3
  br i1 %or.cond47, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([57 x i8]* @.str29, i64 0, i64 0), %struct._A2* %mtx, i8* %mtxname, %struct._IO_FILE* %fp) #5
  call void @exit(i32 -1) #8
  unreachable

if.end:                                           ; preds = %entry
  %call4 = call i32 @A2_nrow(%struct._A2* %mtx) #5
  %call5 = call i32 @A2_ncol(%struct._A2* %mtx) #5
  %cmp650 = icmp sgt i32 %call4, 0
  br i1 %cmp650, label %for.cond7.preheader.lr.ph, label %for.end24

for.cond7.preheader.lr.ph:                        ; preds = %if.end
  %cmp848 = icmp sgt i32 %call5, 0
  %type = getelementptr inbounds %struct._A2* %mtx, i64 0, i32 0
  br label %for.cond7.preheader

for.cond7.preheader:                              ; preds = %for.inc22, %for.cond7.preheader.lr.ph
  %irow.051 = phi i32 [ 0, %for.cond7.preheader.lr.ph ], [ %add, %for.inc22 ]
  %add = add nsw i32 %irow.051, 1
  br i1 %cmp848, label %for.body9, label %for.inc22

for.body9:                                        ; preds = %for.cond7.preheader, %for.inc
  %jcol.049 = phi i32 [ %inc.pre-phi, %for.inc ], [ 0, %for.cond7.preheader ]
  %1 = load i32* %type, align 4, !tbaa !3
  switch i32 %1, label %for.body9.for.inc_crit_edge [
    i32 1, label %if.then11
    i32 2, label %if.then16
  ]

for.body9.for.inc_crit_edge:                      ; preds = %for.body9
  %inc.pre = add nsw i32 %jcol.049, 1
  br label %for.inc

if.then11:                                        ; preds = %for.body9
  call void @A2_realEntry(%struct._A2* %mtx, i32 %irow.051, i32 %jcol.049, double* %value) #5
  %add12 = add nsw i32 %jcol.049, 1
  %2 = load double* %value, align 8, !tbaa !4
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([24 x i8]* @.str30, i64 0, i64 0), i8* %mtxname, i32 %add, i32 %add12, double %2) #5
  br label %for.inc

if.then16:                                        ; preds = %for.body9
  call void @A2_complexEntry(%struct._A2* %mtx, i32 %irow.051, i32 %jcol.049, double* %real, double* %imag) #5
  %add18 = add nsw i32 %jcol.049, 1
  %3 = load double* %real, align 8, !tbaa !4
  %4 = load double* %imag, align 8, !tbaa !4
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([36 x i8]* @.str31, i64 0, i64 0), i8* %mtxname, i32 %add, i32 %add18, double %3, double %4) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body9.for.inc_crit_edge, %if.then11, %if.then16
  %inc.pre-phi = phi i32 [ %inc.pre, %for.body9.for.inc_crit_edge ], [ %add12, %if.then11 ], [ %add18, %if.then16 ]
  %exitcond = icmp eq i32 %inc.pre-phi, %call5
  br i1 %exitcond, label %for.inc22, label %for.body9

for.inc22:                                        ; preds = %for.cond7.preheader, %for.inc
  %exitcond52 = icmp eq i32 %add, %call4
  br i1 %exitcond52, label %for.end24, label %for.cond7.preheader

for.end24:                                        ; preds = %for.inc22, %if.end
  ret void
}

; Function Attrs: optsize
declare i32 @A2_nrow(%struct._A2*) #3

; Function Attrs: optsize
declare i32 @A2_ncol(%struct._A2*) #3

; Function Attrs: optsize
declare void @A2_realEntry(%struct._A2*, i32, i32, double*) #3

; Function Attrs: optsize
declare void @A2_complexEntry(%struct._A2*, i32, i32, double*, double*) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind optsize readonly }
attributes #7 = { optsize }
attributes #8 = { noreturn nounwind optsize }
attributes #9 = { nounwind }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"double", metadata !1}
