; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._InpMtx = type { i32, i32, i32, i32, i32, double, %struct._IV, %struct._IV, %struct._DV, i32, i32, %struct._IV, %struct._IV, %struct._IV }
%struct._IV = type { i32, i32, i32, i32* }
%struct._DV = type { i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [50 x i8] c"\0A error in InpMtx_readFromFile(%p,%s)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str2 = private unnamed_addr constant [62 x i8] c"\0A error in InpMtx_readFromFile(%p,%s)\0A unable to open file %s\00", align 1
@.str3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str4 = private unnamed_addr constant [108 x i8] c"\0A error in InpMtx_readFromFile(%p,%s)\0A bad InpMtx file name %s,\0A must end in %s (binary) or %s (formatted)\0A\00", align 1
@.str5 = private unnamed_addr constant [59 x i8] c"\0A error in InpMtx_readFromFormattedFile(%p,%p)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [69 x i8] c"\0A error in InpMtx_readFromFormattedFile(%p,%p)\0A %d items of %d read\0A\00", align 1
@.str7 = private unnamed_addr constant [62 x i8] c"\0A fatal error in InpMtx_readFromBinaryFile(%p,%p)\0A bad input\0A\00", align 1
@.str8 = private unnamed_addr constant [66 x i8] c"\0A error in InpMtx_readFromBinaryFile(%p,%p)\0A %d items of %d read\0A\00", align 1
@.str9 = private unnamed_addr constant [55 x i8] c"\0A fatal error in InpMtx_writeToFile(%p,%s)\0A bad input\0A\00", align 1
@.str10 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str11 = private unnamed_addr constant [61 x i8] c"\0A error in InpMtx_writeToFile(%p,%s)\0A unable to open file %s\00", align 1
@.str12 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str13 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str14 = private unnamed_addr constant [64 x i8] c"\0A fatal error in InpMtx_writeToFormattedFile(%p,%p)\0A bad input\0A\00", align 1
@.str15 = private unnamed_addr constant [17 x i8] c"\0A %d %d %d %d %d\00", align 1
@.str16 = private unnamed_addr constant [89 x i8] c"\0A fatal error in InpMtx_writeToFormattedFile(%p,%p)\0A rc = %d, return from first fprintf\0A\00", align 1
@.str17 = private unnamed_addr constant [89 x i8] c"\0A fatal error in InpMtx_writeToFormattedFile(%p,%p)\0A rc = %d, return from writing ivec1\0A\00", align 1
@.str18 = private unnamed_addr constant [89 x i8] c"\0A fatal error in InpMtx_writeToFormattedFile(%p,%p)\0A rc = %d, return from writing ivec2\0A\00", align 1
@.str19 = private unnamed_addr constant [88 x i8] c"\0A fatal error in InpMtx_writeToFormattedFile(%p,%p)\0A rc = %d, return from writing dvec\0A\00", align 1
@.str20 = private unnamed_addr constant [90 x i8] c"\0A fatal error in InpMtx_writeToFormattedFile(%p,%p)\0A rc = %d, return from writing vecids\0A\00", align 1
@.str21 = private unnamed_addr constant [89 x i8] c"\0A fatal error in InpMtx_writeToFormattedFile(%p,%p)\0A rc = %d, return from writing sizes\0A\00", align 1
@.str22 = private unnamed_addr constant [91 x i8] c"\0A fatal error in InpMtx_writeToFormattedFile(%p,%p)\0A rc = %d, return from writing offsets\0A\00", align 1
@.str23 = private unnamed_addr constant [61 x i8] c"\0A fatal error in InpMtx_writeToBinaryFile(%p,%p)\0A bad input\0A\00", align 1
@.str24 = private unnamed_addr constant [75 x i8] c"\0A error in InpMtx_writeToBinaryFile(%p,%p)\0A %d of %d scalar items written\0A\00", align 1
@.str25 = private unnamed_addr constant [86 x i8] c"\0A fatal error in InpMtx_writeToBinaryFile(%p,%p)\0A rc = %d, return from writing ivec1\0A\00", align 1
@.str26 = private unnamed_addr constant [86 x i8] c"\0A fatal error in InpMtx_writeToBinaryFile(%p,%p)\0A rc = %d, return from writing ivec2\0A\00", align 1
@.str27 = private unnamed_addr constant [85 x i8] c"\0A fatal error in InpMtx_writeToBinaryFile(%p,%p)\0A rc = %d, return from writing dvec\0A\00", align 1
@.str28 = private unnamed_addr constant [87 x i8] c"\0A fatal error in InpMtx_writeToBinaryFile(%p,%p)\0A rc = %d, return from writing vecids\0A\00", align 1
@.str29 = private unnamed_addr constant [86 x i8] c"\0A fatal error in InpMtx_writeToBinaryFile(%p,%p)\0A rc = %d, return from writing sizes\0A\00", align 1
@.str30 = private unnamed_addr constant [88 x i8] c"\0A fatal error in InpMtx_writeToBinaryFile(%p,%p)\0A rc = %d, return from writing offsets\0A\00", align 1
@.str31 = private unnamed_addr constant [60 x i8] c"\0A fatal error in InpMtx_writeForHumanEye(%p,%p)\0A bad input\0A\00", align 1
@.str32 = private unnamed_addr constant [96 x i8] c"\0A fatal error in InpMtx_writeForHumanEye(%p,%p)\0A rc = %d, return from InpMtx_writeStats(%p,%p)\0A\00", align 1
@.str33 = private unnamed_addr constant [19 x i8] c"\0A data via triples\00", align 1
@.str35 = private unnamed_addr constant [11 x i8] c" <%6d,%6d>\00", align 1
@.str36 = private unnamed_addr constant [19 x i8] c" <%6d,%6d,%20.12e>\00", align 1
@.str37 = private unnamed_addr constant [28 x i8] c"\0A <%6d,%6d,%20.12e,%20.12e>\00", align 1
@.str38 = private unnamed_addr constant [19 x i8] c"\0A data via vectors\00", align 1
@.str39 = private unnamed_addr constant [9 x i8] c"\0A %6d : \00", align 1
@.str40 = private unnamed_addr constant [48 x i8] c"\0A error in InpMtx_writeStats(%p,%p)\0A bad input\0A\00", align 1
@.str41 = private unnamed_addr constant [50 x i8] c"\0A InpMtx : double precision input matrix object :\00", align 1
@.str42 = private unnamed_addr constant [28 x i8] c"\0A coordType --> row triples\00", align 1
@.str43 = private unnamed_addr constant [31 x i8] c"\0A coordType --> column triples\00", align 1
@.str44 = private unnamed_addr constant [32 x i8] c"\0A coordType --> chevron triples\00", align 1
@.str45 = private unnamed_addr constant [31 x i8] c"\0A coordType --> custom triples\00", align 1
@.str46 = private unnamed_addr constant [75 x i8] c"\0A fatal error in InpMtx_writeStats(%p,%p)\0A invalid inpmtx->coordType = %d\0A\00", align 1
@.str47 = private unnamed_addr constant [30 x i8] c"\0A storageMode --> raw triples\00", align 1
@.str48 = private unnamed_addr constant [46 x i8] c"\0A storageMode --> sorted and distinct triples\00", align 1
@.str49 = private unnamed_addr constant [46 x i8] c"\0A storageMode --> vectors by first coordinate\00", align 1
@.str50 = private unnamed_addr constant [77 x i8] c"\0A fatal error in InpMtx_writeStats(%p,%p)\0A invalid inpmtx->storageMode = %d\0A\00", align 1
@.str51 = private unnamed_addr constant [29 x i8] c"\0A inputMode --> indices only\00", align 1
@.str52 = private unnamed_addr constant [29 x i8] c"\0A inputMode --> real entries\00", align 1
@.str53 = private unnamed_addr constant [32 x i8] c"\0A inputMode --> complex entries\00", align 1
@.str54 = private unnamed_addr constant [75 x i8] c"\0A fatal error in InpMtx_writeStats(%p,%p)\0A invalid inpmtx->inputMode = %d\0A\00", align 1
@.str55 = private unnamed_addr constant [45 x i8] c"\0A maxnent = %d --> maximum number of entries\00", align 1
@.str56 = private unnamed_addr constant [42 x i8] c"\0A nent = %d --> present number of entries\00", align 1
@.str57 = private unnamed_addr constant [44 x i8] c"\0A resizeMultiple = %.4g --> resize multiple\00", align 1
@.str58 = private unnamed_addr constant [48 x i8] c"\0A maxnvector = %d --> maximum number of vectors\00", align 1
@.str59 = private unnamed_addr constant [45 x i8] c"\0A nvector = %d --> present number of vectors\00", align 1
@.str60 = private unnamed_addr constant [61 x i8] c"\0A fatal error in InpMtx_writeForMatlab(%p,%p,%p)\0A bad input\0A\00", align 1
@.str61 = private unnamed_addr constant [24 x i8] c"\0A %s(%d,%d) = %24.16e ;\00", align 1
@.str62 = private unnamed_addr constant [35 x i8] c"\0A %s(%d,%d) = %24.16e + %24.16e*i;\00", align 1
@.str63 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str64 = private unnamed_addr constant [23 x i8] c"\0A no file to read from\00", align 1
@.str65 = private unnamed_addr constant [91 x i8] c"\0A fatal error in InpMtx_readFromHBfile\0A type = %s, first character must be 'P', 'R' or 'C'\00", align 1
@.str66 = private unnamed_addr constant [9 x i8] c".inpmtxf\00", align 1
@.str67 = private unnamed_addr constant [9 x i8] c".inpmtxb\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @InpMtx_readFromFile(%struct._InpMtx* %inpmtx, i8* %fn) #0 {
entry:
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  %cmp1 = icmp eq i8* %fn, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), %struct._InpMtx* %inpmtx, i8* %fn) #6
  br label %return

if.end:                                           ; preds = %entry
  %call2 = tail call i64 @strlen(i8* %fn) #7
  %conv = trunc i64 %call2 to i32
  %cmp5 = icmp sgt i32 %conv, 8
  br i1 %cmp5, label %if.then7, label %if.else41

if.then7:                                         ; preds = %if.end
  %sub = shl i64 %call2, 32
  %sext = add i64 %sub, -34359738368
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds i8* %fn, i64 %idxprom
  %call8 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([9 x i8]* @.str67, i64 0, i64 0)) #7
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then11, label %if.else20

if.then11:                                        ; preds = %if.then7
  %call12 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([3 x i8]* @.str1, i64 0, i64 0)) #6
  %cmp13 = icmp eq %struct._IO_FILE* %call12, null
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.then11
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([62 x i8]* @.str2, i64 0, i64 0), %struct._InpMtx* %inpmtx, i8* %fn, i8* %fn) #6
  br label %return

if.else:                                          ; preds = %if.then11
  %call17 = tail call i32 @InpMtx_readFromBinaryFile(%struct._InpMtx* %inpmtx, %struct._IO_FILE* %call12) #8
  %call18 = tail call i32 @fclose(%struct._IO_FILE* %call12) #6
  br label %return

if.else20:                                        ; preds = %if.then7
  %call24 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([9 x i8]* @.str66, i64 0, i64 0)) #7
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %if.then27, label %if.else37

if.then27:                                        ; preds = %if.else20
  %call28 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str3, i64 0, i64 0)) #6
  %cmp29 = icmp eq %struct._IO_FILE* %call28, null
  br i1 %cmp29, label %if.then31, label %if.else33

if.then31:                                        ; preds = %if.then27
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call32 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([62 x i8]* @.str2, i64 0, i64 0), %struct._InpMtx* %inpmtx, i8* %fn, i8* %fn) #6
  br label %return

if.else33:                                        ; preds = %if.then27
  %call34 = tail call i32 @InpMtx_readFromFormattedFile(%struct._InpMtx* %inpmtx, %struct._IO_FILE* %call28) #8
  %call35 = tail call i32 @fclose(%struct._IO_FILE* %call28) #6
  br label %return

if.else37:                                        ; preds = %if.else20
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call38 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([108 x i8]* @.str4, i64 0, i64 0), %struct._InpMtx* %inpmtx, i8* %fn, i8* %fn, i8* getelementptr inbounds ([9 x i8]* @.str67, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str66, i64 0, i64 0)) #6
  br label %return

if.else41:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call42 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([108 x i8]* @.str4, i64 0, i64 0), %struct._InpMtx* %inpmtx, i8* %fn, i8* %fn, i8* getelementptr inbounds ([9 x i8]* @.str67, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str66, i64 0, i64 0)) #6
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
define i32 @InpMtx_readFromBinaryFile(%struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp) #0 {
entry:
  %itemp = alloca [5 x i32], align 16
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([62 x i8]* @.str7, i64 0, i64 0), %struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp) #6
  br label %return

if.end:                                           ; preds = %entry
  call void @InpMtx_clearData(%struct._InpMtx* %inpmtx) #6
  %1 = bitcast [5 x i32]* %itemp to i8*
  %call2 = call i64 @fread(i8* %1, i64 4, i64 5, %struct._IO_FILE* %fp) #6
  %conv = trunc i64 %call2 to i32
  %cmp3 = icmp eq i32 %conv, 5
  br i1 %cmp3, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([66 x i8]* @.str8, i64 0, i64 0), %struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp, i32 %conv, i32 5) #6
  br label %return

if.end7:                                          ; preds = %if.end
  %3 = bitcast [5 x i32]* %itemp to i64*
  %4 = load i64* %3, align 16
  %5 = trunc i64 %4 to i32
  %coordType = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 0
  store i32 %5, i32* %coordType, align 4, !tbaa !3
  %6 = lshr i64 %4, 32
  %7 = trunc i64 %6 to i32
  %storageMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1
  store i32 %7, i32* %storageMode, align 4, !tbaa !3
  %arrayidx9 = getelementptr inbounds [5 x i32]* %itemp, i64 0, i64 2
  %8 = bitcast i32* %arrayidx9 to i64*
  %9 = load i64* %8, align 8
  %10 = trunc i64 %9 to i32
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2
  store i32 %10, i32* %inputMode, align 4, !tbaa !3
  %11 = lshr i64 %9, 32
  %12 = trunc i64 %11 to i32
  %nent = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 4
  store i32 %12, i32* %nent, align 4, !tbaa !3
  %arrayidx11 = getelementptr inbounds [5 x i32]* %itemp, i64 0, i64 4
  %13 = load i32* %arrayidx11, align 16, !tbaa !3
  %nvector = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 10
  store i32 %13, i32* %nvector, align 4, !tbaa !3
  %cmp13 = icmp sgt i32 %12, 0
  br i1 %cmp13, label %if.then15, label %if.end28

if.then15:                                        ; preds = %if.end7
  %ivec1IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 6
  %call16 = call i32 @IV_readFromBinaryFile(%struct._IV* %ivec1IV, %struct._IO_FILE* %fp) #6
  %ivec2IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 7
  %call17 = call i32 @IV_readFromBinaryFile(%struct._IV* %ivec2IV, %struct._IO_FILE* %fp) #6
  %14 = load i32* %inputMode, align 4, !tbaa !3
  %.off = add i32 %14, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then25, label %if.end28thread-pre-split

if.then25:                                        ; preds = %if.then15
  %dvecDV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 8
  %call26 = call i32 @DV_readFromBinaryFile(%struct._DV* %dvecDV, %struct._IO_FILE* %fp) #6
  br label %if.end28thread-pre-split

if.end28thread-pre-split:                         ; preds = %if.then25, %if.then15
  %.pr = load i32* %nvector, align 4, !tbaa !3
  br label %if.end28

if.end28:                                         ; preds = %if.end28thread-pre-split, %if.end7
  %15 = phi i32 [ %.pr, %if.end28thread-pre-split ], [ %13, %if.end7 ]
  %cmp30 = icmp sgt i32 %15, 0
  br i1 %cmp30, label %if.then32, label %if.end36

if.then32:                                        ; preds = %if.end28
  %vecidsIV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 11
  %call33 = call i32 @IV_readFromBinaryFile(%struct._IV* %vecidsIV, %struct._IO_FILE* %fp) #6
  %sizesIV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 12
  %call34 = call i32 @IV_readFromBinaryFile(%struct._IV* %sizesIV, %struct._IO_FILE* %fp) #6
  %offsetsIV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 13
  %call35 = call i32 @IV_readFromBinaryFile(%struct._IV* %offsetsIV, %struct._IO_FILE* %fp) #6
  br label %if.end36

if.end36:                                         ; preds = %if.end28, %if.then32
  %16 = load i32* %nent, align 4, !tbaa !3
  %maxnent = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 3
  store i32 %16, i32* %maxnent, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %if.end36, %if.then5, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then5 ], [ 1, %if.end36 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define i32 @InpMtx_readFromFormattedFile(%struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp) #0 {
entry:
  %itemp = alloca [5 x i32], align 16
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([59 x i8]* @.str5, i64 0, i64 0), %struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp) #6
  br label %return

if.end:                                           ; preds = %entry
  call void @InpMtx_clearData(%struct._InpMtx* %inpmtx) #6
  %arraydecay = getelementptr inbounds [5 x i32]* %itemp, i64 0, i64 0
  %call2 = call i32 @IVfscanf(%struct._IO_FILE* %fp, i32 5, i32* %arraydecay) #6
  %cmp3 = icmp eq i32 %call2, 5
  br i1 %cmp3, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([69 x i8]* @.str6, i64 0, i64 0), %struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp, i32 %call2, i32 5) #6
  br label %return

if.end6:                                          ; preds = %if.end
  %2 = bitcast [5 x i32]* %itemp to i64*
  %3 = load i64* %2, align 16
  %4 = trunc i64 %3 to i32
  %coordType = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 0
  store i32 %4, i32* %coordType, align 4, !tbaa !3
  %5 = lshr i64 %3, 32
  %6 = trunc i64 %5 to i32
  %storageMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1
  store i32 %6, i32* %storageMode, align 4, !tbaa !3
  %arrayidx8 = getelementptr inbounds [5 x i32]* %itemp, i64 0, i64 2
  %7 = bitcast i32* %arrayidx8 to i64*
  %8 = load i64* %7, align 8
  %9 = trunc i64 %8 to i32
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2
  store i32 %9, i32* %inputMode, align 4, !tbaa !3
  %10 = lshr i64 %8, 32
  %11 = trunc i64 %10 to i32
  %nent = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 4
  store i32 %11, i32* %nent, align 4, !tbaa !3
  %arrayidx10 = getelementptr inbounds [5 x i32]* %itemp, i64 0, i64 4
  %12 = load i32* %arrayidx10, align 16, !tbaa !3
  %nvector = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 10
  store i32 %12, i32* %nvector, align 4, !tbaa !3
  %cmp12 = icmp sgt i32 %11, 0
  br i1 %cmp12, label %if.then13, label %if.end24

if.then13:                                        ; preds = %if.end6
  %ivec1IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 6
  %call14 = call i32 @IV_readFromFormattedFile(%struct._IV* %ivec1IV, %struct._IO_FILE* %fp) #6
  %ivec2IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 7
  %call15 = call i32 @IV_readFromFormattedFile(%struct._IV* %ivec2IV, %struct._IO_FILE* %fp) #6
  %13 = load i32* %inputMode, align 4, !tbaa !3
  %.off = add i32 %13, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.then21, label %if.end24thread-pre-split

if.then21:                                        ; preds = %if.then13
  %dvecDV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 8
  %call22 = call i32 @DV_readFromFormattedFile(%struct._DV* %dvecDV, %struct._IO_FILE* %fp) #6
  br label %if.end24thread-pre-split

if.end24thread-pre-split:                         ; preds = %if.then21, %if.then13
  %.pr = load i32* %nvector, align 4, !tbaa !3
  br label %if.end24

if.end24:                                         ; preds = %if.end24thread-pre-split, %if.end6
  %14 = phi i32 [ %.pr, %if.end24thread-pre-split ], [ %12, %if.end6 ]
  %cmp26 = icmp sgt i32 %14, 0
  br i1 %cmp26, label %if.then27, label %if.end31

if.then27:                                        ; preds = %if.end24
  %vecidsIV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 11
  %call28 = call i32 @IV_readFromFormattedFile(%struct._IV* %vecidsIV, %struct._IO_FILE* %fp) #6
  %sizesIV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 12
  %call29 = call i32 @IV_readFromFormattedFile(%struct._IV* %sizesIV, %struct._IO_FILE* %fp) #6
  %offsetsIV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 13
  %call30 = call i32 @IV_readFromFormattedFile(%struct._IV* %offsetsIV, %struct._IO_FILE* %fp) #6
  br label %if.end31

if.end31:                                         ; preds = %if.end24, %if.then27
  %15 = load i32* %nent, align 4, !tbaa !3
  %maxnent = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 3
  store i32 %15, i32* %maxnent, align 4, !tbaa !3
  br label %return

return:                                           ; preds = %if.end31, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ 1, %if.end31 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare void @InpMtx_clearData(%struct._InpMtx*) #3

; Function Attrs: optsize
declare i32 @IVfscanf(%struct._IO_FILE*, i32, i32*) #3

; Function Attrs: optsize
declare i32 @IV_readFromFormattedFile(%struct._IV*, %struct._IO_FILE*) #3

; Function Attrs: optsize
declare i32 @DV_readFromFormattedFile(%struct._DV*, %struct._IO_FILE*) #3

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

; Function Attrs: optsize
declare i32 @IV_readFromBinaryFile(%struct._IV*, %struct._IO_FILE*) #3

; Function Attrs: optsize
declare i32 @DV_readFromBinaryFile(%struct._DV*, %struct._IO_FILE*) #3

; Function Attrs: nounwind optsize uwtable
define i32 @InpMtx_writeToFile(%struct._InpMtx* %inpmtx, i8* %fn) #0 {
entry:
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  %cmp1 = icmp eq i8* %fn, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([55 x i8]* @.str9, i64 0, i64 0), %struct._InpMtx* %inpmtx, i8* %fn) #6
  br label %return

if.end:                                           ; preds = %entry
  %call2 = tail call i64 @strlen(i8* %fn) #7
  %conv = trunc i64 %call2 to i32
  %cmp5 = icmp sgt i32 %conv, 8
  br i1 %cmp5, label %if.then7, label %if.else49

if.then7:                                         ; preds = %if.end
  %sub = shl i64 %call2, 32
  %sext = add i64 %sub, -34359738368
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds i8* %fn, i64 %idxprom
  %call8 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([9 x i8]* @.str67, i64 0, i64 0)) #7
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then11, label %if.else20

if.then11:                                        ; preds = %if.then7
  %call12 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([3 x i8]* @.str10, i64 0, i64 0)) #6
  %cmp13 = icmp eq %struct._IO_FILE* %call12, null
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.then11
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([61 x i8]* @.str11, i64 0, i64 0), %struct._InpMtx* %inpmtx, i8* %fn, i8* %fn) #6
  br label %return

if.else:                                          ; preds = %if.then11
  %call17 = tail call i32 @InpMtx_writeToBinaryFile(%struct._InpMtx* %inpmtx, %struct._IO_FILE* %call12) #8
  %call18 = tail call i32 @fclose(%struct._IO_FILE* %call12) #6
  br label %return

if.else20:                                        ; preds = %if.then7
  %call24 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([9 x i8]* @.str66, i64 0, i64 0)) #7
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %if.then27, label %if.else37

if.then27:                                        ; preds = %if.else20
  %call28 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str12, i64 0, i64 0)) #6
  %cmp29 = icmp eq %struct._IO_FILE* %call28, null
  br i1 %cmp29, label %if.then31, label %if.else33

if.then31:                                        ; preds = %if.then27
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call32 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([61 x i8]* @.str11, i64 0, i64 0), %struct._InpMtx* %inpmtx, i8* %fn, i8* %fn) #6
  br label %return

if.else33:                                        ; preds = %if.then27
  %call34 = tail call i32 @InpMtx_writeToFormattedFile(%struct._InpMtx* %inpmtx, %struct._IO_FILE* %call28) #8
  %call35 = tail call i32 @fclose(%struct._IO_FILE* %call28) #6
  br label %return

if.else37:                                        ; preds = %if.else20
  %call38 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str13, i64 0, i64 0)) #6
  %cmp39 = icmp eq %struct._IO_FILE* %call38, null
  br i1 %cmp39, label %if.then41, label %if.else43

if.then41:                                        ; preds = %if.else37
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call42 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([61 x i8]* @.str11, i64 0, i64 0), %struct._InpMtx* %inpmtx, i8* %fn, i8* %fn) #6
  br label %return

if.else43:                                        ; preds = %if.else37
  %call44 = tail call i32 @InpMtx_writeForHumanEye(%struct._InpMtx* %inpmtx, %struct._IO_FILE* %call38) #8
  %call45 = tail call i32 @fclose(%struct._IO_FILE* %call38) #6
  br label %return

if.else49:                                        ; preds = %if.end
  %call50 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str13, i64 0, i64 0)) #6
  %cmp51 = icmp eq %struct._IO_FILE* %call50, null
  br i1 %cmp51, label %if.then53, label %if.else55

if.then53:                                        ; preds = %if.else49
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call54 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([61 x i8]* @.str11, i64 0, i64 0), %struct._InpMtx* %inpmtx, i8* %fn, i8* %fn) #6
  br label %return

if.else55:                                        ; preds = %if.else49
  %call56 = tail call i32 @InpMtx_writeForHumanEye(%struct._InpMtx* %inpmtx, %struct._IO_FILE* %call50) #8
  %call57 = tail call i32 @fclose(%struct._IO_FILE* %call50) #6
  br label %return

return:                                           ; preds = %if.else33, %if.then31, %if.else43, %if.then41, %if.then15, %if.else, %if.else55, %if.then53, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then15 ], [ %call17, %if.else ], [ 0, %if.then31 ], [ %call34, %if.else33 ], [ 0, %if.then41 ], [ %call44, %if.else43 ], [ 0, %if.then53 ], [ %call56, %if.else55 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @InpMtx_writeToBinaryFile(%struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp) #0 {
entry:
  %itemp = alloca [6 x i32], align 16
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([61 x i8]* @.str23, i64 0, i64 0), %struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp) #6
  br label %return

if.end:                                           ; preds = %entry
  %coordType = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 0
  %1 = load i32* %coordType, align 4, !tbaa !3
  %arrayidx = getelementptr inbounds [6 x i32]* %itemp, i64 0, i64 0
  store i32 %1, i32* %arrayidx, align 16, !tbaa !3
  %storageMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1
  %2 = load i32* %storageMode, align 4, !tbaa !3
  %arrayidx2 = getelementptr inbounds [6 x i32]* %itemp, i64 0, i64 1
  store i32 %2, i32* %arrayidx2, align 4, !tbaa !3
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2
  %3 = load i32* %inputMode, align 4, !tbaa !3
  %arrayidx3 = getelementptr inbounds [6 x i32]* %itemp, i64 0, i64 2
  store i32 %3, i32* %arrayidx3, align 8, !tbaa !3
  %nent = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 4
  %4 = load i32* %nent, align 4, !tbaa !3
  %arrayidx4 = getelementptr inbounds [6 x i32]* %itemp, i64 0, i64 3
  store i32 %4, i32* %arrayidx4, align 4, !tbaa !3
  %nvector = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 10
  %5 = load i32* %nvector, align 4, !tbaa !3
  %arrayidx5 = getelementptr inbounds [6 x i32]* %itemp, i64 0, i64 4
  store i32 %5, i32* %arrayidx5, align 16, !tbaa !3
  %6 = bitcast [6 x i32]* %itemp to i8*
  %call6 = call i64 @fwrite(i8* %6, i64 4, i64 5, %struct._IO_FILE* %fp) #6
  %conv = trunc i64 %call6 to i32
  %cmp7 = icmp eq i32 %conv, 5
  br i1 %cmp7, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end
  %7 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([75 x i8]* @.str24, i64 0, i64 0), %struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp, i32 %conv, i32 5) #6
  br label %return

if.end11:                                         ; preds = %if.end
  %8 = load i32* %nent, align 4, !tbaa !3
  %cmp13 = icmp sgt i32 %8, 0
  br i1 %cmp13, label %if.then15, label %if.end59

if.then15:                                        ; preds = %if.end11
  %ivec1IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 6
  call void @IV_setSize(%struct._IV* %ivec1IV, i32 %8) #6
  %call18 = call i32 @IV_writeToBinaryFile(%struct._IV* %ivec1IV, %struct._IO_FILE* %fp) #6
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.then15
  %9 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([86 x i8]* @.str25, i64 0, i64 0), %struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp, i32 %call18) #6
  br label %return

if.end23:                                         ; preds = %if.then15
  %ivec2IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 7
  %10 = load i32* %nent, align 4, !tbaa !3
  call void @IV_setSize(%struct._IV* %ivec2IV, i32 %10) #6
  %call26 = call i32 @IV_writeToBinaryFile(%struct._IV* %ivec2IV, %struct._IO_FILE* %fp) #6
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.end23
  %11 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([86 x i8]* @.str26, i64 0, i64 0), %struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp, i32 %call26) #6
  br label %return

if.end31:                                         ; preds = %if.end23
  %12 = load i32* %inputMode, align 4, !tbaa !3
  switch i32 %12, label %if.end59 [
    i32 1, label %if.then35
    i32 2, label %if.then47
  ]

if.then35:                                        ; preds = %if.end31
  %dvecDV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 8
  %13 = load i32* %nent, align 4, !tbaa !3
  call void @DV_setSize(%struct._DV* %dvecDV, i32 %13) #6
  %call38 = call i32 @DV_writeToBinaryFile(%struct._DV* %dvecDV, %struct._IO_FILE* %fp) #6
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.then41, label %if.end59

if.then41:                                        ; preds = %if.then35
  %14 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call42 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([85 x i8]* @.str27, i64 0, i64 0), %struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp, i32 %call38) #6
  br label %return

if.then47:                                        ; preds = %if.end31
  %dvecDV48 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 8
  %15 = load i32* %nent, align 4, !tbaa !3
  %mul = shl nsw i32 %15, 1
  call void @DV_setSize(%struct._DV* %dvecDV48, i32 %mul) #6
  %call51 = call i32 @DV_writeToBinaryFile(%struct._DV* %dvecDV48, %struct._IO_FILE* %fp) #6
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %if.then54, label %if.end59

if.then54:                                        ; preds = %if.then47
  %16 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call55 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([85 x i8]* @.str27, i64 0, i64 0), %struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp, i32 %call51) #6
  br label %return

if.end59:                                         ; preds = %if.end31, %if.then35, %if.then47, %if.end11
  %17 = load i32* %nvector, align 4, !tbaa !3
  %cmp61 = icmp sgt i32 %17, 0
  br i1 %cmp61, label %if.then63, label %return

if.then63:                                        ; preds = %if.end59
  %vecidsIV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 11
  %call64 = call i32 @IV_writeToBinaryFile(%struct._IV* %vecidsIV, %struct._IO_FILE* %fp) #6
  %cmp65 = icmp slt i32 %call64, 0
  br i1 %cmp65, label %if.then67, label %if.end69

if.then67:                                        ; preds = %if.then63
  %18 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call68 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([87 x i8]* @.str28, i64 0, i64 0), %struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp, i32 %call64) #6
  br label %return

if.end69:                                         ; preds = %if.then63
  %sizesIV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 12
  %call70 = call i32 @IV_writeToBinaryFile(%struct._IV* %sizesIV, %struct._IO_FILE* %fp) #6
  %cmp71 = icmp slt i32 %call70, 0
  br i1 %cmp71, label %if.then73, label %if.end75

if.then73:                                        ; preds = %if.end69
  %19 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call74 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([86 x i8]* @.str29, i64 0, i64 0), %struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp, i32 %call70) #6
  br label %return

if.end75:                                         ; preds = %if.end69
  %offsetsIV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 13
  %call76 = call i32 @IV_writeToBinaryFile(%struct._IV* %offsetsIV, %struct._IO_FILE* %fp) #6
  %cmp77 = icmp slt i32 %call76, 0
  br i1 %cmp77, label %if.then79, label %return

if.then79:                                        ; preds = %if.end75
  %20 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call80 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([88 x i8]* @.str30, i64 0, i64 0), %struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp, i32 %call76) #6
  br label %return

return:                                           ; preds = %if.end59, %if.end75, %if.then79, %if.then73, %if.then67, %if.then54, %if.then41, %if.then29, %if.then21, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then9 ], [ 0, %if.then21 ], [ 0, %if.then29 ], [ 0, %if.then41 ], [ 0, %if.then67 ], [ 0, %if.then73 ], [ 0, %if.then79 ], [ 0, %if.then54 ], [ 1, %if.end75 ], [ 1, %if.end59 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @InpMtx_writeToFormattedFile(%struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp) #0 {
entry:
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([64 x i8]* @.str14, i64 0, i64 0), %struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp) #6
  br label %return

if.end:                                           ; preds = %entry
  %coordType = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 0
  %1 = load i32* %coordType, align 4, !tbaa !3
  %storageMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1
  %2 = load i32* %storageMode, align 4, !tbaa !3
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2
  %3 = load i32* %inputMode, align 4, !tbaa !3
  %nent = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 4
  %4 = load i32* %nent, align 4, !tbaa !3
  %nvector = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 10
  %5 = load i32* %nvector, align 4, !tbaa !3
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([17 x i8]* @.str15, i64 0, i64 0), i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #6
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %6 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([89 x i8]* @.str16, i64 0, i64 0), %struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp, i32 %call2) #6
  br label %return

if.end6:                                          ; preds = %if.end
  %7 = load i32* %nent, align 4, !tbaa !3
  %cmp8 = icmp sgt i32 %7, 0
  br i1 %cmp8, label %if.then9, label %if.end47

if.then9:                                         ; preds = %if.end6
  %ivec1IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 6
  tail call void @IV_setSize(%struct._IV* %ivec1IV, i32 %7) #6
  %call12 = tail call i32 @IV_writeToFormattedFile(%struct._IV* %ivec1IV, %struct._IO_FILE* %fp) #6
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.end16

if.then14:                                        ; preds = %if.then9
  %8 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call15 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([89 x i8]* @.str17, i64 0, i64 0), %struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp, i32 %call12) #6
  br label %return

if.end16:                                         ; preds = %if.then9
  %ivec2IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 7
  %9 = load i32* %nent, align 4, !tbaa !3
  tail call void @IV_setSize(%struct._IV* %ivec2IV, i32 %9) #6
  %call19 = tail call i32 @IV_writeToFormattedFile(%struct._IV* %ivec2IV, %struct._IO_FILE* %fp) #6
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.end16
  %10 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call22 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([89 x i8]* @.str18, i64 0, i64 0), %struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp, i32 %call19) #6
  br label %return

if.end23:                                         ; preds = %if.end16
  %11 = load i32* %inputMode, align 4, !tbaa !3
  switch i32 %11, label %if.end47 [
    i32 1, label %if.then26
    i32 2, label %if.then36
  ]

if.then26:                                        ; preds = %if.end23
  %dvecDV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 8
  %12 = load i32* %nent, align 4, !tbaa !3
  tail call void @DV_setSize(%struct._DV* %dvecDV, i32 %12) #6
  %call29 = tail call i32 @DV_writeToFormattedFile(%struct._DV* %dvecDV, %struct._IO_FILE* %fp) #6
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.then31, label %if.end47

if.then31:                                        ; preds = %if.then26
  %13 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call32 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([88 x i8]* @.str19, i64 0, i64 0), %struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp, i32 %call29) #6
  br label %return

if.then36:                                        ; preds = %if.end23
  %dvecDV37 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 8
  %14 = load i32* %nent, align 4, !tbaa !3
  %mul = shl nsw i32 %14, 1
  tail call void @DV_setSize(%struct._DV* %dvecDV37, i32 %mul) #6
  %call40 = tail call i32 @DV_writeToFormattedFile(%struct._DV* %dvecDV37, %struct._IO_FILE* %fp) #6
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %if.then42, label %if.end47

if.then42:                                        ; preds = %if.then36
  %15 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call43 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([88 x i8]* @.str19, i64 0, i64 0), %struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp, i32 %call40) #6
  br label %return

if.end47:                                         ; preds = %if.end23, %if.then26, %if.then36, %if.end6
  %16 = load i32* %nvector, align 4, !tbaa !3
  %cmp49 = icmp sgt i32 %16, 0
  br i1 %cmp49, label %if.then50, label %return

if.then50:                                        ; preds = %if.end47
  %vecidsIV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 11
  %call51 = tail call i32 @IV_writeToFormattedFile(%struct._IV* %vecidsIV, %struct._IO_FILE* %fp) #6
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %if.then53, label %if.end55

if.then53:                                        ; preds = %if.then50
  %17 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call54 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([90 x i8]* @.str20, i64 0, i64 0), %struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp, i32 %call51) #6
  br label %return

if.end55:                                         ; preds = %if.then50
  %sizesIV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 12
  %call56 = tail call i32 @IV_writeToFormattedFile(%struct._IV* %sizesIV, %struct._IO_FILE* %fp) #6
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %if.then58, label %if.end60

if.then58:                                        ; preds = %if.end55
  %18 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call59 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([89 x i8]* @.str21, i64 0, i64 0), %struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp, i32 %call56) #6
  br label %return

if.end60:                                         ; preds = %if.end55
  %offsetsIV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 13
  %call61 = tail call i32 @IV_writeToFormattedFile(%struct._IV* %offsetsIV, %struct._IO_FILE* %fp) #6
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %if.then63, label %return

if.then63:                                        ; preds = %if.end60
  %19 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call64 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([91 x i8]* @.str22, i64 0, i64 0), %struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp, i32 %call61) #6
  br label %return

return:                                           ; preds = %if.end47, %if.end60, %if.then63, %if.then58, %if.then53, %if.then42, %if.then31, %if.then21, %if.then14, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ 0, %if.then14 ], [ 0, %if.then21 ], [ 0, %if.then31 ], [ 0, %if.then53 ], [ 0, %if.then58 ], [ 0, %if.then63 ], [ 0, %if.then42 ], [ 1, %if.end60 ], [ 1, %if.end47 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @InpMtx_writeForHumanEye(%struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp) #0 {
entry:
  %entries = alloca double*, align 8
  %ierr = alloca i32, align 4
  %size = alloca i32, align 4
  %indices = alloca i32*, align 8
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([60 x i8]* @.str31, i64 0, i64 0), %struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp) #6
  call void @exit(i32 -1) #9
  unreachable

if.end:                                           ; preds = %entry
  %call2 = call i32 @InpMtx_writeStats(%struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp) #8
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([96 x i8]* @.str32, i64 0, i64 0), %struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp, i32 0, %struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp) #6
  br label %return

if.end6:                                          ; preds = %if.end
  %nent = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 4
  %2 = load i32* %nent, align 4, !tbaa !3
  %cmp7 = icmp sgt i32 %2, 0
  br i1 %cmp7, label %if.then8, label %return

if.then8:                                         ; preds = %if.end6
  %storageMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1
  %3 = load i32* %storageMode, align 4, !tbaa !3
  switch i32 %3, label %return [
    i32 1, label %if.then13
    i32 2, label %if.then13
    i32 3, label %land.lhs.true
  ]

if.then13:                                        ; preds = %if.then8, %if.then8
  %call14 = call i32* @InpMtx_ivec1(%struct._InpMtx* %inpmtx) #6
  %call15 = call i32* @InpMtx_ivec2(%struct._InpMtx* %inpmtx) #6
  %4 = call i64 @fwrite(i8* getelementptr inbounds ([19 x i8]* @.str33, i64 0, i64 0), i64 18, i64 1, %struct._IO_FILE* %fp) #5
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2
  %5 = load i32* %inputMode, align 4, !tbaa !3
  switch i32 %5, label %return [
    i32 0, label %for.cond.preheader
    i32 1, label %if.then30
    i32 2, label %if.then54
  ]

for.cond.preheader:                               ; preds = %if.then13
  %6 = load i32* %nent, align 4, !tbaa !3
  %cmp20235 = icmp sgt i32 %6, 0
  br i1 %cmp20235, label %for.body, label %return

for.body:                                         ; preds = %for.cond.preheader, %if.end24
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end24 ], [ 0, %for.cond.preheader ]
  %rem231 = and i64 %indvars.iv, 3
  %cmp21 = icmp eq i64 %rem231, 0
  br i1 %cmp21, label %if.then22, label %if.end24

if.then22:                                        ; preds = %for.body
  %fputc234 = call i32 @fputc(i32 10, %struct._IO_FILE* %fp)
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %for.body
  %arrayidx = getelementptr inbounds i32* %call14, i64 %indvars.iv
  %7 = load i32* %arrayidx, align 4, !tbaa !3
  %arrayidx26 = getelementptr inbounds i32* %call15, i64 %indvars.iv
  %8 = load i32* %arrayidx26, align 4, !tbaa !3
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([11 x i8]* @.str35, i64 0, i64 0), i32 %7, i32 %8) #6
  %indvars.iv.next = add i64 %indvars.iv, 1
  %9 = load i32* %nent, align 4, !tbaa !3
  %10 = trunc i64 %indvars.iv.next to i32
  %cmp20 = icmp slt i32 %10, %9
  br i1 %cmp20, label %for.body, label %return

if.then30:                                        ; preds = %if.then13
  %call31 = call double* @InpMtx_dvec(%struct._InpMtx* %inpmtx) #6
  %11 = load i32* %nent, align 4, !tbaa !3
  %cmp34238 = icmp sgt i32 %11, 0
  br i1 %cmp34238, label %for.body35, label %return

for.body35:                                       ; preds = %if.then30, %if.end40
  %indvars.iv252 = phi i64 [ %indvars.iv.next253, %if.end40 ], [ 0, %if.then30 ]
  %rem36230 = and i64 %indvars.iv252, 1
  %cmp37 = icmp eq i64 %rem36230, 0
  br i1 %cmp37, label %if.then38, label %if.end40

if.then38:                                        ; preds = %for.body35
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %fp)
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %for.body35
  %arrayidx42 = getelementptr inbounds i32* %call14, i64 %indvars.iv252
  %12 = load i32* %arrayidx42, align 4, !tbaa !3
  %arrayidx44 = getelementptr inbounds i32* %call15, i64 %indvars.iv252
  %13 = load i32* %arrayidx44, align 4, !tbaa !3
  %arrayidx46 = getelementptr inbounds double* %call31, i64 %indvars.iv252
  %14 = load double* %arrayidx46, align 8, !tbaa !4
  %call47 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str36, i64 0, i64 0), i32 %12, i32 %13, double %14) #6
  %indvars.iv.next253 = add i64 %indvars.iv252, 1
  %15 = load i32* %nent, align 4, !tbaa !3
  %16 = trunc i64 %indvars.iv.next253 to i32
  %cmp34 = icmp slt i32 %16, %15
  br i1 %cmp34, label %for.body35, label %return

if.then54:                                        ; preds = %if.then13
  %call56 = call double* @InpMtx_dvec(%struct._InpMtx* %inpmtx) #6
  %17 = load i32* %nent, align 4, !tbaa !3
  %cmp59241 = icmp sgt i32 %17, 0
  br i1 %cmp59241, label %for.body60, label %return

for.body60:                                       ; preds = %if.then54, %for.body60
  %indvars.iv254 = phi i64 [ %indvars.iv.next255, %for.body60 ], [ 0, %if.then54 ]
  %arrayidx62 = getelementptr inbounds i32* %call14, i64 %indvars.iv254
  %18 = load i32* %arrayidx62, align 4, !tbaa !3
  %arrayidx64 = getelementptr inbounds i32* %call15, i64 %indvars.iv254
  %19 = load i32* %arrayidx64, align 4, !tbaa !3
  %20 = trunc i64 %indvars.iv254 to i32
  %mul = shl nsw i32 %20, 1
  %idxprom65 = sext i32 %mul to i64
  %arrayidx66 = getelementptr inbounds double* %call56, i64 %idxprom65
  %21 = load double* %arrayidx66, align 8, !tbaa !4
  %add229 = or i32 %mul, 1
  %idxprom68 = sext i32 %add229 to i64
  %arrayidx69 = getelementptr inbounds double* %call56, i64 %idxprom68
  %22 = load double* %arrayidx69, align 8, !tbaa !4
  %call70 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([28 x i8]* @.str37, i64 0, i64 0), i32 %18, i32 %19, double %21, double %22) #6
  %indvars.iv.next255 = add i64 %indvars.iv254, 1
  %23 = load i32* %nent, align 4, !tbaa !3
  %24 = trunc i64 %indvars.iv.next255 to i32
  %cmp59 = icmp slt i32 %24, %23
  br i1 %cmp59, label %for.body60, label %return

land.lhs.true:                                    ; preds = %if.then8
  %nvector = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 10
  %25 = load i32* %nvector, align 4, !tbaa !3
  %cmp80 = icmp sgt i32 %25, 0
  br i1 %cmp80, label %if.then81, label %return

if.then81:                                        ; preds = %land.lhs.true
  %call82 = call i32* @InpMtx_vecids(%struct._InpMtx* %inpmtx) #6
  %26 = call i64 @fwrite(i8* getelementptr inbounds ([19 x i8]* @.str38, i64 0, i64 0), i64 18, i64 1, %struct._IO_FILE* %fp) #5
  %inputMode84 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2
  %27 = load i32* %inputMode84, align 4, !tbaa !3
  switch i32 %27, label %return [
    i32 0, label %for.cond87.preheader
    i32 1, label %for.cond107.preheader
    i32 2, label %for.cond124.preheader
  ]

for.cond124.preheader:                            ; preds = %if.then81
  %28 = load i32* %nvector, align 4, !tbaa !3
  %cmp126250 = icmp sgt i32 %28, 0
  br i1 %cmp126250, label %for.body127, label %return

for.cond107.preheader:                            ; preds = %if.then81
  %29 = load i32* %nvector, align 4, !tbaa !3
  %cmp109247 = icmp sgt i32 %29, 0
  br i1 %cmp109247, label %for.body110, label %return

for.cond87.preheader:                             ; preds = %if.then81
  %30 = load i32* %nvector, align 4, !tbaa !3
  %cmp89244 = icmp sgt i32 %30, 0
  br i1 %cmp89244, label %for.body90, label %return

for.body90:                                       ; preds = %for.cond87.preheader, %for.inc100
  %indvars.iv256 = phi i64 [ %indvars.iv.next257, %for.inc100 ], [ 0, %for.cond87.preheader ]
  %arrayidx92 = getelementptr inbounds i32* %call82, i64 %indvars.iv256
  %31 = load i32* %arrayidx92, align 4, !tbaa !3
  call void @InpMtx_vector(%struct._InpMtx* %inpmtx, i32 %31, i32* %size, i32** %indices) #6
  %32 = load i32* %size, align 4, !tbaa !3
  %cmp93 = icmp sgt i32 %32, 0
  br i1 %cmp93, label %if.then94, label %for.inc100

if.then94:                                        ; preds = %for.body90
  %33 = load i32* %arrayidx92, align 4, !tbaa !3
  %call97 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([9 x i8]* @.str39, i64 0, i64 0), i32 %33) #6
  %34 = load i32* %size, align 4, !tbaa !3
  %35 = load i32** %indices, align 8, !tbaa !0
  %call98 = call i32 @IVfp80(%struct._IO_FILE* %fp, i32 %34, i32* %35, i32 10, i32* %ierr) #6
  br label %for.inc100

for.inc100:                                       ; preds = %for.body90, %if.then94
  %indvars.iv.next257 = add i64 %indvars.iv256, 1
  %36 = load i32* %nvector, align 4, !tbaa !3
  %37 = trunc i64 %indvars.iv.next257 to i32
  %cmp89 = icmp slt i32 %37, %36
  br i1 %cmp89, label %for.body90, label %return

for.body110:                                      ; preds = %for.cond107.preheader, %for.body110
  %indvars.iv258 = phi i64 [ %indvars.iv.next259, %for.body110 ], [ 0, %for.cond107.preheader ]
  %arrayidx112 = getelementptr inbounds i32* %call82, i64 %indvars.iv258
  %38 = load i32* %arrayidx112, align 4, !tbaa !3
  call void @InpMtx_realVector(%struct._InpMtx* %inpmtx, i32 %38, i32* %size, i32** %indices, double** %entries) #6
  %39 = load i32* %arrayidx112, align 4, !tbaa !3
  %call115 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([9 x i8]* @.str39, i64 0, i64 0), i32 %39) #6
  %40 = load i32* %size, align 4, !tbaa !3
  %41 = load i32** %indices, align 8, !tbaa !0
  %call116 = call i32 @IVfp80(%struct._IO_FILE* %fp, i32 %40, i32* %41, i32 10, i32* %ierr) #6
  %42 = load i32* %size, align 4, !tbaa !3
  %43 = load double** %entries, align 8, !tbaa !0
  call void @DVfprintf(%struct._IO_FILE* %fp, i32 %42, double* %43) #6
  %indvars.iv.next259 = add i64 %indvars.iv258, 1
  %44 = load i32* %nvector, align 4, !tbaa !3
  %45 = trunc i64 %indvars.iv.next259 to i32
  %cmp109 = icmp slt i32 %45, %44
  br i1 %cmp109, label %for.body110, label %return

for.body127:                                      ; preds = %for.cond124.preheader, %for.body127
  %indvars.iv260 = phi i64 [ %indvars.iv.next261, %for.body127 ], [ 0, %for.cond124.preheader ]
  %arrayidx129 = getelementptr inbounds i32* %call82, i64 %indvars.iv260
  %46 = load i32* %arrayidx129, align 4, !tbaa !3
  call void @InpMtx_complexVector(%struct._InpMtx* %inpmtx, i32 %46, i32* %size, i32** %indices, double** %entries) #6
  %47 = load i32* %arrayidx129, align 4, !tbaa !3
  %call132 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([9 x i8]* @.str39, i64 0, i64 0), i32 %47) #6
  %48 = load i32* %size, align 4, !tbaa !3
  %49 = load i32** %indices, align 8, !tbaa !0
  %call133 = call i32 @IVfp80(%struct._IO_FILE* %fp, i32 %48, i32* %49, i32 10, i32* %ierr) #6
  %50 = load i32* %size, align 4, !tbaa !3
  %51 = load double** %entries, align 8, !tbaa !0
  call void @ZVfprintf(%struct._IO_FILE* %fp, i32 %50, double* %51) #6
  %indvars.iv.next261 = add i64 %indvars.iv260, 1
  %52 = load i32* %nvector, align 4, !tbaa !3
  %53 = trunc i64 %indvars.iv.next261 to i32
  %cmp126 = icmp slt i32 %53, %52
  br i1 %cmp126, label %for.body127, label %return

return:                                           ; preds = %for.cond124.preheader, %for.body127, %for.cond107.preheader, %for.body110, %for.cond87.preheader, %for.inc100, %if.then54, %for.body60, %if.then30, %if.end40, %for.cond.preheader, %if.end24, %if.end6, %land.lhs.true, %if.then13, %if.then8, %if.then81, %if.then4
  %retval.0 = phi i32 [ 0, %if.then4 ], [ 1, %if.then81 ], [ 1, %if.then8 ], [ 1, %if.then13 ], [ 1, %land.lhs.true ], [ 1, %if.end6 ], [ 1, %if.end24 ], [ 1, %for.cond.preheader ], [ 1, %if.end40 ], [ 1, %if.then30 ], [ 1, %for.body60 ], [ 1, %if.then54 ], [ 1, %for.inc100 ], [ 1, %for.cond87.preheader ], [ 1, %for.body110 ], [ 1, %for.cond107.preheader ], [ 1, %for.body127 ], [ 1, %for.cond124.preheader ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare void @IV_setSize(%struct._IV*, i32) #3

; Function Attrs: optsize
declare i32 @IV_writeToFormattedFile(%struct._IV*, %struct._IO_FILE*) #3

; Function Attrs: optsize
declare void @DV_setSize(%struct._DV*, i32) #3

; Function Attrs: optsize
declare i32 @DV_writeToFormattedFile(%struct._DV*, %struct._IO_FILE*) #3

; Function Attrs: nounwind optsize
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

; Function Attrs: optsize
declare i32 @IV_writeToBinaryFile(%struct._IV*, %struct._IO_FILE*) #3

; Function Attrs: optsize
declare i32 @DV_writeToBinaryFile(%struct._DV*, %struct._IO_FILE*) #3

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #4

; Function Attrs: nounwind optsize uwtable
define i32 @InpMtx_writeStats(%struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp) #0 {
entry:
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([48 x i8]* @.str40, i64 0, i64 0), %struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp) #6
  tail call void @exit(i32 -1) #9
  unreachable

if.end:                                           ; preds = %entry
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([50 x i8]* @.str41, i64 0, i64 0), i64 49, i64 1, %struct._IO_FILE* %fp) #5
  %coordType = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 0
  %2 = load i32* %coordType, align 4, !tbaa !3
  switch i32 %2, label %if.else20 [
    i32 1, label %if.then4
    i32 2, label %if.then8
    i32 3, label %if.then13
    i32 4, label %if.then18
  ]

if.then4:                                         ; preds = %if.end
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([28 x i8]* @.str42, i64 0, i64 0), i64 27, i64 1, %struct._IO_FILE* %fp) #5
  br label %if.end26

if.then8:                                         ; preds = %if.end
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([31 x i8]* @.str43, i64 0, i64 0), i64 30, i64 1, %struct._IO_FILE* %fp) #5
  br label %if.end26

if.then13:                                        ; preds = %if.end
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([32 x i8]* @.str44, i64 0, i64 0), i64 31, i64 1, %struct._IO_FILE* %fp) #5
  br label %if.end26

if.then18:                                        ; preds = %if.end
  %6 = tail call i64 @fwrite(i8* getelementptr inbounds ([31 x i8]* @.str45, i64 0, i64 0), i64 30, i64 1, %struct._IO_FILE* %fp) #5
  br label %if.end26

if.else20:                                        ; preds = %if.end
  %7 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call22 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([75 x i8]* @.str46, i64 0, i64 0), %struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp, i32 %2) #6
  br label %return

if.end26:                                         ; preds = %if.then8, %if.then18, %if.then13, %if.then4
  %storageMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1
  %8 = load i32* %storageMode, align 4, !tbaa !3
  switch i32 %8, label %if.else40 [
    i32 1, label %if.then28
    i32 2, label %if.then33
    i32 3, label %if.then38
  ]

if.then28:                                        ; preds = %if.end26
  %9 = tail call i64 @fwrite(i8* getelementptr inbounds ([30 x i8]* @.str47, i64 0, i64 0), i64 29, i64 1, %struct._IO_FILE* %fp) #5
  br label %if.end45

if.then33:                                        ; preds = %if.end26
  %10 = tail call i64 @fwrite(i8* getelementptr inbounds ([46 x i8]* @.str48, i64 0, i64 0), i64 45, i64 1, %struct._IO_FILE* %fp) #5
  br label %if.end45

if.then38:                                        ; preds = %if.end26
  %11 = tail call i64 @fwrite(i8* getelementptr inbounds ([46 x i8]* @.str49, i64 0, i64 0), i64 45, i64 1, %struct._IO_FILE* %fp) #5
  br label %if.end45

if.else40:                                        ; preds = %if.end26
  %12 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call42 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([77 x i8]* @.str50, i64 0, i64 0), %struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp, i32 %8) #6
  br label %return

if.end45:                                         ; preds = %if.then33, %if.then38, %if.then28
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2
  %13 = load i32* %inputMode, align 4, !tbaa !3
  switch i32 %13, label %if.else59 [
    i32 0, label %if.then47
    i32 1, label %if.then52
    i32 2, label %if.then57
  ]

if.then47:                                        ; preds = %if.end45
  %14 = tail call i64 @fwrite(i8* getelementptr inbounds ([29 x i8]* @.str51, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %fp) #5
  br label %if.end64

if.then52:                                        ; preds = %if.end45
  %15 = tail call i64 @fwrite(i8* getelementptr inbounds ([29 x i8]* @.str52, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %fp) #5
  br label %if.end64

if.then57:                                        ; preds = %if.end45
  %16 = tail call i64 @fwrite(i8* getelementptr inbounds ([32 x i8]* @.str53, i64 0, i64 0), i64 31, i64 1, %struct._IO_FILE* %fp) #5
  br label %if.end64

if.else59:                                        ; preds = %if.end45
  %17 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call61 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([75 x i8]* @.str54, i64 0, i64 0), %struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp, i32 %13) #6
  br label %return

if.end64:                                         ; preds = %if.then52, %if.then57, %if.then47
  %maxnent = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 3
  %18 = load i32* %maxnent, align 4, !tbaa !3
  %call65 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([45 x i8]* @.str55, i64 0, i64 0), i32 %18) #6
  %nent = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 4
  %19 = load i32* %nent, align 4, !tbaa !3
  %call66 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([42 x i8]* @.str56, i64 0, i64 0), i32 %19) #6
  %resizeMultiple = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 5
  %20 = load double* %resizeMultiple, align 8, !tbaa !4
  %call67 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([44 x i8]* @.str57, i64 0, i64 0), double %20) #6
  %maxnvector = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 9
  %21 = load i32* %maxnvector, align 4, !tbaa !3
  %call68 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([48 x i8]* @.str58, i64 0, i64 0), i32 %21) #6
  %nvector = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 10
  %22 = load i32* %nvector, align 4, !tbaa !3
  %call69 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([45 x i8]* @.str59, i64 0, i64 0), i32 %22) #6
  %call70 = tail call i32 @fflush(%struct._IO_FILE* %fp) #6
  br label %return

return:                                           ; preds = %if.end64, %if.else59, %if.else40, %if.else20
  %retval.0 = phi i32 [ 1, %if.end64 ], [ 0, %if.else59 ], [ 0, %if.else40 ], [ 0, %if.else20 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32* @InpMtx_ivec1(%struct._InpMtx*) #3

; Function Attrs: optsize
declare i32* @InpMtx_ivec2(%struct._InpMtx*) #3

; Function Attrs: optsize
declare double* @InpMtx_dvec(%struct._InpMtx*) #3

; Function Attrs: optsize
declare i32* @InpMtx_vecids(%struct._InpMtx*) #3

; Function Attrs: optsize
declare void @InpMtx_vector(%struct._InpMtx*, i32, i32*, i32**) #3

; Function Attrs: optsize
declare i32 @IVfp80(%struct._IO_FILE*, i32, i32*, i32, i32*) #3

; Function Attrs: optsize
declare void @InpMtx_realVector(%struct._InpMtx*, i32, i32*, i32**, double**) #3

; Function Attrs: optsize
declare void @DVfprintf(%struct._IO_FILE*, i32, double*) #3

; Function Attrs: optsize
declare void @InpMtx_complexVector(%struct._InpMtx*, i32, i32*, i32**, double**) #3

; Function Attrs: optsize
declare void @ZVfprintf(%struct._IO_FILE*, i32, double*) #3

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define i32 @InpMtx_writeForMatlab(%struct._InpMtx* %inpmtx, i8* %mtxname, %struct._IO_FILE* %fp) #0 {
entry:
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  %cmp1 = icmp eq i8* %mtxname, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond89 = or i1 %or.cond, %cmp3
  br i1 %or.cond89, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([61 x i8]* @.str60, i64 0, i64 0), %struct._InpMtx* %inpmtx, i8* %mtxname, %struct._IO_FILE* %fp) #6
  tail call void @exit(i32 -1) #9
  unreachable

if.end:                                           ; preds = %entry
  %coordType = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 0
  %1 = load i32* %coordType, align 4, !tbaa !3
  %storageMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1
  %2 = load i32* %storageMode, align 4, !tbaa !3
  %cmp4 = icmp ne i32 %1, 1
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  tail call void @InpMtx_changeCoordType(%struct._InpMtx* %inpmtx, i32 1) #6
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end
  %nent = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 4
  %3 = load i32* %nent, align 4, !tbaa !3
  %cmp7 = icmp sgt i32 %3, 0
  br i1 %cmp7, label %if.then8, label %if.end49

if.then8:                                         ; preds = %if.end6
  %call9 = tail call i32* @InpMtx_ivec1(%struct._InpMtx* %inpmtx) #6
  %call10 = tail call i32* @InpMtx_ivec2(%struct._InpMtx* %inpmtx) #6
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2
  %4 = load i32* %inputMode, align 4, !tbaa !3
  switch i32 %4, label %if.end49 [
    i32 1, label %if.then12
    i32 2, label %if.then24
  ]

if.then12:                                        ; preds = %if.then8
  %call13 = tail call double* @InpMtx_dvec(%struct._InpMtx* %inpmtx) #6
  %5 = load i32* %nent, align 4, !tbaa !3
  %cmp1590 = icmp sgt i32 %5, 0
  br i1 %cmp1590, label %for.body, label %if.end49

for.body:                                         ; preds = %if.then12, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then12 ]
  %arrayidx = getelementptr inbounds i32* %call9, i64 %indvars.iv
  %6 = load i32* %arrayidx, align 4, !tbaa !3
  %add = add nsw i32 %6, 1
  %arrayidx17 = getelementptr inbounds i32* %call10, i64 %indvars.iv
  %7 = load i32* %arrayidx17, align 4, !tbaa !3
  %add18 = add nsw i32 %7, 1
  %arrayidx20 = getelementptr inbounds double* %call13, i64 %indvars.iv
  %8 = load double* %arrayidx20, align 8, !tbaa !4
  %call21 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([24 x i8]* @.str61, i64 0, i64 0), i8* %mtxname, i32 %add, i32 %add18, double %8) #6
  %indvars.iv.next = add i64 %indvars.iv, 1
  %9 = load i32* %nent, align 4, !tbaa !3
  %10 = trunc i64 %indvars.iv.next to i32
  %cmp15 = icmp slt i32 %10, %9
  br i1 %cmp15, label %for.body, label %if.end49

if.then24:                                        ; preds = %if.then8
  %call26 = tail call double* @InpMtx_dvec(%struct._InpMtx* %inpmtx) #6
  %11 = load i32* %nent, align 4, !tbaa !3
  %cmp2993 = icmp sgt i32 %11, 0
  br i1 %cmp2993, label %for.body30, label %if.end49

for.body30:                                       ; preds = %if.then24, %for.body30
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %for.body30 ], [ 0, %if.then24 ]
  %arrayidx32 = getelementptr inbounds i32* %call9, i64 %indvars.iv95
  %12 = load i32* %arrayidx32, align 4, !tbaa !3
  %add33 = add nsw i32 %12, 1
  %arrayidx35 = getelementptr inbounds i32* %call10, i64 %indvars.iv95
  %13 = load i32* %arrayidx35, align 4, !tbaa !3
  %add36 = add nsw i32 %13, 1
  %14 = trunc i64 %indvars.iv95 to i32
  %mul = shl nsw i32 %14, 1
  %idxprom37 = sext i32 %mul to i64
  %arrayidx38 = getelementptr inbounds double* %call26, i64 %idxprom37
  %15 = load double* %arrayidx38, align 8, !tbaa !4
  %add4088 = or i32 %mul, 1
  %idxprom41 = sext i32 %add4088 to i64
  %arrayidx42 = getelementptr inbounds double* %call26, i64 %idxprom41
  %16 = load double* %arrayidx42, align 8, !tbaa !4
  %call43 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([35 x i8]* @.str62, i64 0, i64 0), i8* %mtxname, i32 %add33, i32 %add36, double %15, double %16) #6
  %indvars.iv.next96 = add i64 %indvars.iv95, 1
  %17 = load i32* %nent, align 4, !tbaa !3
  %18 = trunc i64 %indvars.iv.next96 to i32
  %cmp29 = icmp slt i32 %18, %17
  br i1 %cmp29, label %for.body30, label %if.end49

if.end49:                                         ; preds = %if.then24, %for.body30, %if.then12, %for.body, %if.then8, %if.end6
  br i1 %cmp4, label %if.then51, label %if.end52

if.then51:                                        ; preds = %if.end49
  tail call void @InpMtx_changeCoordType(%struct._InpMtx* %inpmtx, i32 %1) #6
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %if.end49
  tail call void @InpMtx_changeStorageMode(%struct._InpMtx* %inpmtx, i32 %2) #6
  ret i32 1
}

; Function Attrs: optsize
declare void @InpMtx_changeCoordType(%struct._InpMtx*, i32) #3

; Function Attrs: optsize
declare void @InpMtx_changeStorageMode(%struct._InpMtx*, i32) #3

; Function Attrs: nounwind optsize uwtable
define i32 @InpMtx_readFromHBfile(%struct._InpMtx* %inpmtx, i8* %fn) #0 {
entry:
  %type = alloca i8*, align 8
  %ncol = alloca i32, align 4
  %nnonzeros = alloca i32, align 4
  %nrhs = alloca i32, align 4
  %nrow = alloca i32, align 4
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null
  %cmp1 = icmp eq i8* %fn, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), %struct._InpMtx* %inpmtx, i8* %fn) #6
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call i32 @strcmp(i8* %fn, i8* getelementptr inbounds ([5 x i8]* @.str63, i64 0, i64 0)) #7
  %cmp3 = icmp eq i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %2 = call i64 @fwrite(i8* getelementptr inbounds ([23 x i8]* @.str64, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %1) #5
  call void @exit(i32 0) #9
  unreachable

if.end6:                                          ; preds = %if.end
  %call7 = call i32 @readHB_info(i8* %fn, i32* %nrow, i32* %ncol, i32* %nnonzeros, i8** %type, i32* %nrhs) #6
  %cmp8 = icmp eq i32 %call7, 1
  br i1 %cmp8, label %if.end10, label %return

if.end10:                                         ; preds = %if.end6
  %3 = load i8** %type, align 8, !tbaa !0
  %4 = load i8* %3, align 1, !tbaa !1
  %conv = sext i8 %4 to i32
  switch i32 %conv, label %sw.default [
    i32 80, label %sw.epilog
    i32 82, label %sw.bb11
    i32 67, label %sw.bb12
  ]

sw.bb11:                                          ; preds = %if.end10
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end10
  br label %sw.epilog

sw.default:                                       ; preds = %if.end10
  %5 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([91 x i8]* @.str65, i64 0, i64 0), i8* %3) #6
  call void @exit(i32 -1) #9
  unreachable

sw.epilog:                                        ; preds = %if.end10, %sw.bb12, %sw.bb11
  %inputMode.0 = phi i32 [ 2, %sw.bb12 ], [ 1, %sw.bb11 ], [ 0, %if.end10 ]
  %6 = load i32* %nnonzeros, align 4, !tbaa !3
  call void @InpMtx_init(%struct._InpMtx* %inpmtx, i32 2, i32 %inputMode.0, i32 %6, i32 0) #6
  %7 = load i32* %ncol, align 4, !tbaa !3
  %add = add nsw i32 %7, 1
  %call14 = call i32* @IVinit(i32 %add, i32 -1) #6
  %call15 = call i32* @InpMtx_ivec1(%struct._InpMtx* %inpmtx) #6
  %call16 = call i32* @InpMtx_ivec2(%struct._InpMtx* %inpmtx) #6
  %call17 = call double* @InpMtx_dvec(%struct._InpMtx* %inpmtx) #6
  %8 = load i32* %nnonzeros, align 4, !tbaa !3
  call void @InpMtx_setNent(%struct._InpMtx* %inpmtx, i32 %8) #6
  %call18 = call i32 @readHB_mat_double(i8* %fn, i32* %call14, i32* %call16, double* %call17) #6
  %cmp19 = icmp eq i32 %call18, 1
  br i1 %cmp19, label %for.cond.preheader, label %return

for.cond.preheader:                               ; preds = %sw.epilog
  %9 = load i32* %ncol, align 4, !tbaa !3
  %cmp2392 = icmp slt i32 %9, 0
  br i1 %cmp2392, label %for.cond26.preheader, label %for.body

for.cond26.preheader:                             ; preds = %for.body, %for.cond.preheader
  %10 = phi i32 [ %9, %for.cond.preheader ], [ %13, %for.body ]
  %11 = load i32* %nnonzeros, align 4, !tbaa !3
  %cmp2790 = icmp sgt i32 %11, 0
  br i1 %cmp2790, label %for.body29, label %for.cond36.preheader

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx25 = getelementptr inbounds i32* %call14, i64 %indvars.iv98
  %12 = load i32* %arrayidx25, align 4, !tbaa !3
  %dec = add nsw i32 %12, -1
  store i32 %dec, i32* %arrayidx25, align 4, !tbaa !3
  %indvars.iv.next99 = add i64 %indvars.iv98, 1
  %13 = load i32* %ncol, align 4, !tbaa !3
  %14 = trunc i64 %indvars.iv98 to i32
  %cmp23 = icmp slt i32 %14, %13
  br i1 %cmp23, label %for.body, label %for.cond26.preheader

for.cond26.for.cond36.preheader_crit_edge:        ; preds = %for.body29
  %.pre = load i32* %ncol, align 4, !tbaa !3
  br label %for.cond36.preheader

for.cond36.preheader:                             ; preds = %for.cond26.for.cond36.preheader_crit_edge, %for.cond26.preheader
  %15 = phi i32 [ %.pre, %for.cond26.for.cond36.preheader_crit_edge ], [ %10, %for.cond26.preheader ]
  %cmp3788 = icmp sgt i32 %15, 0
  br i1 %cmp3788, label %for.body39, label %for.end56

for.body29:                                       ; preds = %for.cond26.preheader, %for.body29
  %indvars.iv96 = phi i64 [ %indvars.iv.next97, %for.body29 ], [ 0, %for.cond26.preheader ]
  %arrayidx31 = getelementptr inbounds i32* %call16, i64 %indvars.iv96
  %16 = load i32* %arrayidx31, align 4, !tbaa !3
  %dec32 = add nsw i32 %16, -1
  store i32 %dec32, i32* %arrayidx31, align 4, !tbaa !3
  %indvars.iv.next97 = add i64 %indvars.iv96, 1
  %17 = load i32* %nnonzeros, align 4, !tbaa !3
  %18 = trunc i64 %indvars.iv.next97 to i32
  %cmp27 = icmp slt i32 %18, %17
  br i1 %cmp27, label %for.body29, label %for.cond26.for.cond36.preheader_crit_edge

for.cond45.for.cond36.loopexit_crit_edge:         ; preds = %for.body48
  %.pre100 = load i32* %ncol, align 4, !tbaa !3
  br label %for.cond36.loopexit

for.cond36.loopexit:                              ; preds = %for.cond45.for.cond36.loopexit_crit_edge, %for.body39
  %19 = phi i32 [ %.pre100, %for.cond45.for.cond36.loopexit_crit_edge ], [ %21, %for.body39 ]
  %20 = trunc i64 %indvars.iv.next95 to i32
  %cmp37 = icmp slt i32 %20, %19
  br i1 %cmp37, label %for.body39, label %for.end56

for.body39:                                       ; preds = %for.cond36.loopexit, %for.cond36.preheader
  %21 = phi i32 [ %15, %for.cond36.preheader ], [ %19, %for.cond36.loopexit ]
  %indvars.iv94 = phi i64 [ 0, %for.cond36.preheader ], [ %indvars.iv.next95, %for.cond36.loopexit ]
  %arrayidx41 = getelementptr inbounds i32* %call14, i64 %indvars.iv94
  %22 = load i32* %arrayidx41, align 4, !tbaa !3
  %indvars.iv.next95 = add i64 %indvars.iv94, 1
  %arrayidx44 = getelementptr inbounds i32* %call14, i64 %indvars.iv.next95
  %23 = load i32* %arrayidx44, align 4, !tbaa !3
  %sub = add nsw i32 %23, -1
  %cmp4686 = icmp sgt i32 %22, %sub
  br i1 %cmp4686, label %for.cond36.loopexit, label %for.body48.lr.ph

for.body48.lr.ph:                                 ; preds = %for.body39
  %24 = sext i32 %22 to i64
  br label %for.body48

for.body48:                                       ; preds = %for.body48, %for.body48.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body48 ], [ %24, %for.body48.lr.ph ]
  %arrayidx50 = getelementptr inbounds i32* %call15, i64 %indvars.iv
  %25 = trunc i64 %indvars.iv94 to i32
  store i32 %25, i32* %arrayidx50, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 1
  %26 = trunc i64 %indvars.iv to i32
  %cmp46 = icmp slt i32 %26, %sub
  br i1 %cmp46, label %for.body48, label %for.cond45.for.cond36.loopexit_crit_edge

for.end56:                                        ; preds = %for.cond36.loopexit, %for.cond36.preheader
  call void @IVfree(i32* %call14) #6
  %27 = load i8** %type, align 8, !tbaa !0
  call void @CVfree(i8* %27) #6
  br label %return

return:                                           ; preds = %sw.epilog, %if.end6, %for.end56, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %for.end56 ], [ %call7, %if.end6 ], [ %call18, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare i32 @readHB_info(i8*, i32*, i32*, i32*, i8**, i32*) #3

; Function Attrs: optsize
declare void @InpMtx_init(%struct._InpMtx*, i32, i32, i32, i32) #3

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #3

; Function Attrs: optsize
declare void @InpMtx_setNent(%struct._InpMtx*, i32) #3

; Function Attrs: optsize
declare i32 @readHB_mat_double(i8*, i32*, i32*, double*) #3

; Function Attrs: optsize
declare void @IVfree(i32*) #3

; Function Attrs: optsize
declare void @CVfree(i8*) #3

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #5

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind optsize readonly }
attributes #8 = { optsize }
attributes #9 = { noreturn nounwind optsize }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"double", metadata !1}
