; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._DenseMtx = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, double*, %struct._DV, %struct._DenseMtx* }
%struct._DV = type { i32, i32, i32, double* }
%struct._A2 = type { i32, i32, i32, i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [51 x i8] c"\0A error in DenseMtx_readFromFile(%p,%s)\0A bad input\00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str2 = private unnamed_addr constant [59 x i8] c"\0A error in DenseMtx_readFromFile()\0A unable to open file %s\00", align 1
@.str3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str4 = private unnamed_addr constant [107 x i8] c"\0A error in DenseMtx_readFromFile()\0A bad DenseMtx file name %s,\0A must end in %s (binary) or %s (formatted)\0A\00", align 1
@.str5 = private unnamed_addr constant [60 x i8] c"\0A error in DenseMtx_readFromFormattedFile(%p,%p)\0A bad input\00", align 1
@.str6 = private unnamed_addr constant [66 x i8] c"\0A error in DenseMtx_readFromFormattedFile()\0A %d items of %d read\0A\00", align 1
@.str7 = private unnamed_addr constant [77 x i8] c"\0A error in DenseMtx_readFromFormattedFile()\0A %d items of %d read for rowind\0A\00", align 1
@.str8 = private unnamed_addr constant [77 x i8] c"\0A error in DenseMtx_readFromFormattedFile()\0A %d items of %d read for colind\0A\00", align 1
@.str9 = private unnamed_addr constant [78 x i8] c"\0A error in DenseMtx_readFromFormattedFile()\0A %d items of %d read for entries\0A\00", align 1
@.str10 = private unnamed_addr constant [63 x i8] c"\0A fatal error in DenseMtx_readFromBinaryFile(%p,%p)\0A bad input\00", align 1
@.str11 = private unnamed_addr constant [63 x i8] c"\0A error in DenseMtx_readFromBinaryFile()\0A %d items of %d read\0A\00", align 1
@.str12 = private unnamed_addr constant [76 x i8] c"\0A error in DenseMtx_readFromBinaryFile()\0A %d items of %d read for rowind[]\0A\00", align 1
@.str13 = private unnamed_addr constant [76 x i8] c"\0A error in DenseMtx_readFromBinaryFile()\0A %d items of %d read for colind[]\0A\00", align 1
@.str14 = private unnamed_addr constant [75 x i8] c"\0A error in DenseMtx_readFromBinaryFile()\0A %d items of %d read for entries\0A\00", align 1
@.str15 = private unnamed_addr constant [58 x i8] c"\0A fatal error in DenseMtx_writeToFile(%p,%s)\0A mtx is NULL\00", align 1
@.str16 = private unnamed_addr constant [57 x i8] c"\0A fatal error in DenseMtx_writeToFile(%p,%s)\0A fn is NULL\00", align 1
@.str17 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str18 = private unnamed_addr constant [58 x i8] c"\0A error in DenseMtx_writeToFile()\0A unable to open file %s\00", align 1
@.str19 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str20 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str21 = private unnamed_addr constant [62 x i8] c"\0A fatal error in DenseMtx_writeToFormattedFile()\0A mtx is NULL\00", align 1
@.str22 = private unnamed_addr constant [61 x i8] c"\0A fatal error in DenseMtx_writeToFormattedFile()\0A fp is NULL\00", align 1
@.str23 = private unnamed_addr constant [23 x i8] c"\0A %d %d %d %d %d %d %d\00", align 1
@.str24 = private unnamed_addr constant [59 x i8] c"\0A fatal error in DenseMtx_writeToBinaryFile()\0A mtx is NULL\00", align 1
@.str25 = private unnamed_addr constant [58 x i8] c"\0A fatal error in DenseMtx_writeToBinaryFile()\0A fp is NULL\00", align 1
@.str26 = private unnamed_addr constant [52 x i8] c"\0A fatal error in DenseMtx_writeStats()\0A mtx is NULL\00", align 1
@.str27 = private unnamed_addr constant [51 x i8] c"\0A fatal error in DenseMtx_writeStats()\0A fp is NULL\00", align 1
@.str28 = private unnamed_addr constant [32 x i8] c"\0A DenseMtx object at address %p\00", align 1
@.str29 = private unnamed_addr constant [15 x i8] c", real entries\00", align 1
@.str30 = private unnamed_addr constant [18 x i8] c", complex entries\00", align 1
@.str31 = private unnamed_addr constant [23 x i8] c", unknown entries type\00", align 1
@.str32 = private unnamed_addr constant [71 x i8] c"\0A row id = %d, col id = %d\0A nrow = %d, ncol = %d, inc1 = %d, inc2 = %d\00", align 1
@.str33 = private unnamed_addr constant [41 x i8] c"\0A rowind = %p, colind = %p, entries = %p\00", align 1
@.str34 = private unnamed_addr constant [12 x i8] c", base = %p\00", align 1
@.str35 = private unnamed_addr constant [65 x i8] c"\0A rowind - base = %zd, colind - base = %zd, entries - base = %zd\00", align 1
@.str36 = private unnamed_addr constant [59 x i8] c"\0A fatal error in DenseMtx_writeForHumanEye()\0A mtx is NULL\0A\00", align 1
@.str37 = private unnamed_addr constant [26 x i8] c"\0A mtx's row indices at %p\00", align 1
@.str38 = private unnamed_addr constant [29 x i8] c"\0A mtx's column indices at %p\00", align 1
@.str39 = private unnamed_addr constant [57 x i8] c"\0A fatal error in DenseMtx_writeForMatlab()\0A mtx is NULL\0A\00", align 1
@.str40 = private unnamed_addr constant [61 x i8] c"\0A fatal error in DenseMtx_writeForMatlab()\0A mtxname is NULL\0A\00", align 1
@.str41 = private unnamed_addr constant [56 x i8] c"\0A fatal error in DenseMtx_writeForMatlab()\0A fp is NULL\0A\00", align 1
@.str42 = private unnamed_addr constant [24 x i8] c"\0A %s(%d,%d) = %24.16e ;\00", align 1
@.str43 = private unnamed_addr constant [36 x i8] c"\0A %s(%d,%d) = %24.16e + %24.16e*i ;\00", align 1
@.str44 = private unnamed_addr constant [11 x i8] c".densemtxf\00", align 1
@.str45 = private unnamed_addr constant [11 x i8] c".densemtxb\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @DenseMtx_readFromFile(%struct._DenseMtx* %mtx, i8* %fn) #0 {
entry:
  %cmp = icmp eq %struct._DenseMtx* %mtx, null
  %cmp1 = icmp eq i8* %fn, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), %struct._DenseMtx* %mtx, i8* %fn) #4
  br label %return

if.end:                                           ; preds = %entry
  %call2 = tail call i64 @strlen(i8* %fn) #5
  %conv = trunc i64 %call2 to i32
  %cmp5 = icmp sgt i32 %conv, 10
  br i1 %cmp5, label %if.then7, label %if.else41

if.then7:                                         ; preds = %if.end
  %sub = shl i64 %call2, 32
  %sext = add i64 %sub, -42949672960
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds i8* %fn, i64 %idxprom
  %call8 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([11 x i8]* @.str45, i64 0, i64 0)) #5
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then11, label %if.else20

if.then11:                                        ; preds = %if.then7
  %call12 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([3 x i8]* @.str1, i64 0, i64 0)) #4
  %cmp13 = icmp eq %struct._IO_FILE* %call12, null
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.then11
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* %fn) #4
  br label %return

if.else:                                          ; preds = %if.then11
  %call17 = tail call i32 @DenseMtx_readFromBinaryFile(%struct._DenseMtx* %mtx, %struct._IO_FILE* %call12) #6
  %call18 = tail call i32 @fclose(%struct._IO_FILE* %call12) #4
  br label %return

if.else20:                                        ; preds = %if.then7
  %call24 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([11 x i8]* @.str44, i64 0, i64 0)) #5
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %if.then27, label %if.else37

if.then27:                                        ; preds = %if.else20
  %call28 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str3, i64 0, i64 0)) #4
  %cmp29 = icmp eq %struct._IO_FILE* %call28, null
  br i1 %cmp29, label %if.then31, label %if.else33

if.then31:                                        ; preds = %if.then27
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call32 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* %fn) #4
  br label %return

if.else33:                                        ; preds = %if.then27
  %call34 = tail call i32 @DenseMtx_readFromFormattedFile(%struct._DenseMtx* %mtx, %struct._IO_FILE* %call28) #6
  %call35 = tail call i32 @fclose(%struct._IO_FILE* %call28) #4
  br label %return

if.else37:                                        ; preds = %if.else20
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call38 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([107 x i8]* @.str4, i64 0, i64 0), i8* %fn, i8* getelementptr inbounds ([11 x i8]* @.str45, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str44, i64 0, i64 0)) #4
  br label %return

if.else41:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call42 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([107 x i8]* @.str4, i64 0, i64 0), i8* %fn, i8* getelementptr inbounds ([11 x i8]* @.str45, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str44, i64 0, i64 0)) #4
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
define i32 @DenseMtx_readFromBinaryFile(%struct._DenseMtx* %mtx, %struct._IO_FILE* %fp) #0 {
entry:
  %itemp = alloca [7 x i32], align 16
  %cmp = icmp eq %struct._DenseMtx* %mtx, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([63 x i8]* @.str10, i64 0, i64 0), %struct._DenseMtx* %mtx, %struct._IO_FILE* %fp) #4
  br label %return

if.end:                                           ; preds = %entry
  call void @DenseMtx_clearData(%struct._DenseMtx* %mtx) #4
  %1 = bitcast [7 x i32]* %itemp to i8*
  %call2 = call i64 @fread(i8* %1, i64 4, i64 7, %struct._IO_FILE* %fp) #4
  %conv = trunc i64 %call2 to i32
  %cmp3 = icmp eq i32 %conv, 7
  br i1 %cmp3, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([63 x i8]* @.str11, i64 0, i64 0), i32 %conv, i32 7) #4
  br label %return

if.end7:                                          ; preds = %if.end
  %3 = bitcast [7 x i32]* %itemp to i64*
  %4 = load i64* %3, align 16
  %5 = trunc i64 %4 to i32
  %6 = lshr i64 %4, 32
  %7 = trunc i64 %6 to i32
  %arrayidx9 = getelementptr inbounds [7 x i32]* %itemp, i64 0, i64 2
  %8 = bitcast i32* %arrayidx9 to i64*
  %9 = load i64* %8, align 8
  %10 = trunc i64 %9 to i32
  %11 = lshr i64 %9, 32
  %12 = trunc i64 %11 to i32
  %arrayidx11 = getelementptr inbounds [7 x i32]* %itemp, i64 0, i64 4
  %13 = bitcast i32* %arrayidx11 to i64*
  %14 = load i64* %13, align 16
  %15 = trunc i64 %14 to i32
  %16 = lshr i64 %14, 32
  %17 = trunc i64 %16 to i32
  %arrayidx13 = getelementptr inbounds [7 x i32]* %itemp, i64 0, i64 6
  %18 = load i32* %arrayidx13, align 8, !tbaa !3
  call void @DenseMtx_init(%struct._DenseMtx* %mtx, i32 %5, i32 %7, i32 %10, i32 %12, i32 %15, i32 %17, i32 %18) #4
  %nrow = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 3
  %19 = load i32* %nrow, align 4, !tbaa !3
  %cmp14 = icmp sgt i32 %19, 0
  br i1 %cmp14, label %if.then16, label %if.end25

if.then16:                                        ; preds = %if.end7
  %rowind = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 7
  %20 = load i32** %rowind, align 8, !tbaa !0
  %21 = bitcast i32* %20 to i8*
  %conv17 = sext i32 %19 to i64
  %call18 = call i64 @fread(i8* %21, i64 4, i64 %conv17, %struct._IO_FILE* %fp) #4
  %conv19 = trunc i64 %call18 to i32
  %cmp20 = icmp eq i32 %conv19, %19
  br i1 %cmp20, label %if.end25, label %if.then22

if.then22:                                        ; preds = %if.then16
  %22 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([76 x i8]* @.str12, i64 0, i64 0), i32 %conv19, i32 %19) #4
  br label %return

if.end25:                                         ; preds = %if.then16, %if.end7
  %ncol = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 4
  %23 = load i32* %ncol, align 4, !tbaa !3
  %cmp26 = icmp sgt i32 %23, 0
  br i1 %cmp26, label %if.then28, label %if.end37

if.then28:                                        ; preds = %if.end25
  %colind = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 8
  %24 = load i32** %colind, align 8, !tbaa !0
  %25 = bitcast i32* %24 to i8*
  %conv29 = sext i32 %23 to i64
  %call30 = call i64 @fread(i8* %25, i64 4, i64 %conv29, %struct._IO_FILE* %fp) #4
  %conv31 = trunc i64 %call30 to i32
  %cmp32 = icmp eq i32 %conv31, %23
  br i1 %cmp32, label %if.then28.if.end37_crit_edge, label %if.then34

if.then28.if.end37_crit_edge:                     ; preds = %if.then28
  %.pre = load i32* %ncol, align 4, !tbaa !3
  br label %if.end37

if.then34:                                        ; preds = %if.then28
  %26 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([76 x i8]* @.str13, i64 0, i64 0), i32 %conv31, i32 %23) #4
  br label %return

if.end37:                                         ; preds = %if.end25, %if.then28.if.end37_crit_edge
  %27 = phi i32 [ %.pre, %if.then28.if.end37_crit_edge ], [ %23, %if.end25 ]
  %28 = load i32* %nrow, align 4, !tbaa !3
  %mul = mul nsw i32 %27, %28
  %cmp40 = icmp sgt i32 %mul, 0
  br i1 %cmp40, label %if.then42, label %return

if.then42:                                        ; preds = %if.end37
  %type = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0
  %29 = load i32* %type, align 4, !tbaa !3
  switch i32 %29, label %return [
    i32 1, label %if.then45
    i32 2, label %if.then57
  ]

if.then45:                                        ; preds = %if.then42
  %entries = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9
  %30 = load double** %entries, align 8, !tbaa !0
  %31 = bitcast double* %30 to i8*
  %conv46 = sext i32 %mul to i64
  %call47 = call i64 @fread(i8* %31, i64 8, i64 %conv46, %struct._IO_FILE* %fp) #4
  %conv48 = trunc i64 %call47 to i32
  %cmp49 = icmp eq i32 %conv48, %mul
  br i1 %cmp49, label %return, label %if.then51

if.then51:                                        ; preds = %if.then45
  %32 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call52 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([75 x i8]* @.str14, i64 0, i64 0), i32 %conv48, i32 %mul) #4
  br label %return

if.then57:                                        ; preds = %if.then42
  %entries58 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9
  %33 = load double** %entries58, align 8, !tbaa !0
  %34 = bitcast double* %33 to i8*
  %mul59 = shl nsw i32 %mul, 1
  %conv60 = sext i32 %mul59 to i64
  %call61 = call i64 @fread(i8* %34, i64 8, i64 %conv60, %struct._IO_FILE* %fp) #4
  %conv62 = trunc i64 %call61 to i32
  %cmp64 = icmp eq i32 %conv62, %mul59
  br i1 %cmp64, label %return, label %if.then66

if.then66:                                        ; preds = %if.then57
  %35 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call68 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([75 x i8]* @.str14, i64 0, i64 0), i32 %conv62, i32 %mul59) #4
  br label %return

return:                                           ; preds = %if.end37, %if.then57, %if.then45, %if.then42, %if.then66, %if.then51, %if.then34, %if.then22, %if.then5, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then5 ], [ 0, %if.then22 ], [ 0, %if.then34 ], [ 0, %if.then51 ], [ 0, %if.then66 ], [ 1, %if.then42 ], [ 1, %if.then45 ], [ 1, %if.then57 ], [ 1, %if.end37 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define i32 @DenseMtx_readFromFormattedFile(%struct._DenseMtx* %mtx, %struct._IO_FILE* %fp) #0 {
entry:
  %itemp = alloca [7 x i32], align 16
  %cmp = icmp eq %struct._DenseMtx* %mtx, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([60 x i8]* @.str5, i64 0, i64 0), %struct._DenseMtx* %mtx, %struct._IO_FILE* %fp) #4
  br label %return

if.end:                                           ; preds = %entry
  call void @DenseMtx_clearData(%struct._DenseMtx* %mtx) #4
  %arraydecay = getelementptr inbounds [7 x i32]* %itemp, i64 0, i64 0
  %call2 = call i32 @IVfscanf(%struct._IO_FILE* %fp, i32 7, i32* %arraydecay) #4
  %cmp3 = icmp eq i32 %call2, 7
  br i1 %cmp3, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([66 x i8]* @.str6, i64 0, i64 0), i32 %call2, i32 7) #4
  br label %return

if.end6:                                          ; preds = %if.end
  %2 = bitcast [7 x i32]* %itemp to i64*
  %3 = load i64* %2, align 16
  %4 = trunc i64 %3 to i32
  %5 = lshr i64 %3, 32
  %6 = trunc i64 %5 to i32
  %arrayidx8 = getelementptr inbounds [7 x i32]* %itemp, i64 0, i64 2
  %7 = bitcast i32* %arrayidx8 to i64*
  %8 = load i64* %7, align 8
  %9 = trunc i64 %8 to i32
  %10 = lshr i64 %8, 32
  %11 = trunc i64 %10 to i32
  %arrayidx10 = getelementptr inbounds [7 x i32]* %itemp, i64 0, i64 4
  %12 = bitcast i32* %arrayidx10 to i64*
  %13 = load i64* %12, align 16
  %14 = trunc i64 %13 to i32
  %15 = lshr i64 %13, 32
  %16 = trunc i64 %15 to i32
  %arrayidx12 = getelementptr inbounds [7 x i32]* %itemp, i64 0, i64 6
  %17 = load i32* %arrayidx12, align 8, !tbaa !3
  call void @DenseMtx_init(%struct._DenseMtx* %mtx, i32 %4, i32 %6, i32 %9, i32 %11, i32 %14, i32 %16, i32 %17) #4
  %nrow = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 3
  %18 = load i32* %nrow, align 4, !tbaa !3
  %cmp13 = icmp sgt i32 %18, 0
  br i1 %cmp13, label %if.then14, label %if.end20

if.then14:                                        ; preds = %if.end6
  %rowind = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 7
  %19 = load i32** %rowind, align 8, !tbaa !0
  %call15 = call i32 @IVfscanf(%struct._IO_FILE* %fp, i32 %18, i32* %19) #4
  %cmp16 = icmp eq i32 %call15, %18
  br i1 %cmp16, label %if.end20, label %if.then17

if.then17:                                        ; preds = %if.then14
  %20 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([77 x i8]* @.str7, i64 0, i64 0), i32 %call15, i32 %18) #4
  br label %return

if.end20:                                         ; preds = %if.then14, %if.end6
  %ncol = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 4
  %21 = load i32* %ncol, align 4, !tbaa !3
  %cmp21 = icmp sgt i32 %21, 0
  br i1 %cmp21, label %if.then22, label %if.end28

if.then22:                                        ; preds = %if.end20
  %colind = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 8
  %22 = load i32** %colind, align 8, !tbaa !0
  %call23 = call i32 @IVfscanf(%struct._IO_FILE* %fp, i32 %21, i32* %22) #4
  %cmp24 = icmp eq i32 %call23, %21
  br i1 %cmp24, label %if.then22.if.end28_crit_edge, label %if.then25

if.then22.if.end28_crit_edge:                     ; preds = %if.then22
  %.pre = load i32* %ncol, align 4, !tbaa !3
  br label %if.end28

if.then25:                                        ; preds = %if.then22
  %23 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([77 x i8]* @.str8, i64 0, i64 0), i32 %call23, i32 %21) #4
  br label %return

if.end28:                                         ; preds = %if.end20, %if.then22.if.end28_crit_edge
  %24 = phi i32 [ %.pre, %if.then22.if.end28_crit_edge ], [ %21, %if.end20 ]
  %25 = load i32* %nrow, align 4, !tbaa !3
  %mul = mul nsw i32 %24, %25
  %cmp31 = icmp sgt i32 %mul, 0
  br i1 %cmp31, label %if.then32, label %return

if.then32:                                        ; preds = %if.end28
  %type = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0
  %26 = load i32* %type, align 4, !tbaa !3
  switch i32 %26, label %return [
    i32 1, label %if.then34
    i32 2, label %if.then42
  ]

if.then34:                                        ; preds = %if.then32
  %entries = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9
  %27 = load double** %entries, align 8, !tbaa !0
  %call35 = call i32 @DVfscanf(%struct._IO_FILE* %fp, i32 %mul, double* %27) #4
  %cmp36 = icmp eq i32 %call35, %mul
  br i1 %cmp36, label %return, label %if.then37

if.then37:                                        ; preds = %if.then34
  %28 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([78 x i8]* @.str9, i64 0, i64 0), i32 %call35, i32 %mul) #4
  br label %return

if.then42:                                        ; preds = %if.then32
  %mul43 = shl nsw i32 %mul, 1
  %entries44 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9
  %29 = load double** %entries44, align 8, !tbaa !0
  %call45 = call i32 @DVfscanf(%struct._IO_FILE* %fp, i32 %mul43, double* %29) #4
  %cmp47 = icmp eq i32 %call45, %mul43
  br i1 %cmp47, label %return, label %if.then48

if.then48:                                        ; preds = %if.then42
  %30 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call50 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([78 x i8]* @.str9, i64 0, i64 0), i32 %call45, i32 %mul43) #4
  br label %return

return:                                           ; preds = %if.end28, %if.then42, %if.then34, %if.then32, %if.then48, %if.then37, %if.then25, %if.then17, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ 0, %if.then17 ], [ 0, %if.then25 ], [ 0, %if.then37 ], [ 0, %if.then48 ], [ 1, %if.then32 ], [ 1, %if.then34 ], [ 1, %if.then42 ], [ 1, %if.end28 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare void @DenseMtx_clearData(%struct._DenseMtx*) #3

; Function Attrs: optsize
declare i32 @IVfscanf(%struct._IO_FILE*, i32, i32*) #3

; Function Attrs: optsize
declare void @DenseMtx_init(%struct._DenseMtx*, i32, i32, i32, i32, i32, i32, i32) #3

; Function Attrs: optsize
declare i32 @DVfscanf(%struct._IO_FILE*, i32, double*) #3

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define i32 @DenseMtx_writeToFile(%struct._DenseMtx* %mtx, i8* %fn) #0 {
entry:
  %cmp = icmp eq %struct._DenseMtx* %mtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([58 x i8]* @.str15, i64 0, i64 0), %struct._DenseMtx* null, i8* %fn) #4
  br label %return

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i8* %fn, null
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([57 x i8]* @.str16, i64 0, i64 0), %struct._DenseMtx* %mtx, i8* null) #4
  br label %return

if.end4:                                          ; preds = %if.end
  %call5 = tail call i64 @strlen(i8* %fn) #5
  %conv = trunc i64 %call5 to i32
  %cmp8 = icmp sgt i32 %conv, 10
  br i1 %cmp8, label %if.then10, label %if.else52

if.then10:                                        ; preds = %if.end4
  %sub = shl i64 %call5, 32
  %sext = add i64 %sub, -42949672960
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds i8* %fn, i64 %idxprom
  %call11 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([11 x i8]* @.str45, i64 0, i64 0)) #5
  %cmp12 = icmp eq i32 %call11, 0
  br i1 %cmp12, label %if.then14, label %if.else23

if.then14:                                        ; preds = %if.then10
  %call15 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([3 x i8]* @.str17, i64 0, i64 0)) #4
  %cmp16 = icmp eq %struct._IO_FILE* %call15, null
  br i1 %cmp16, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.then14
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call19 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([58 x i8]* @.str18, i64 0, i64 0), i8* %fn) #4
  br label %return

if.else:                                          ; preds = %if.then14
  %call20 = tail call i32 @DenseMtx_writeToBinaryFile(%struct._DenseMtx* %mtx, %struct._IO_FILE* %call15) #6
  %call21 = tail call i32 @fclose(%struct._IO_FILE* %call15) #4
  br label %return

if.else23:                                        ; preds = %if.then10
  %call27 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([11 x i8]* @.str44, i64 0, i64 0)) #5
  %cmp28 = icmp eq i32 %call27, 0
  br i1 %cmp28, label %if.then30, label %if.else40

if.then30:                                        ; preds = %if.else23
  %call31 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str19, i64 0, i64 0)) #4
  %cmp32 = icmp eq %struct._IO_FILE* %call31, null
  br i1 %cmp32, label %if.then34, label %if.else36

if.then34:                                        ; preds = %if.then30
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call35 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([58 x i8]* @.str18, i64 0, i64 0), i8* %fn) #4
  br label %return

if.else36:                                        ; preds = %if.then30
  %call37 = tail call i32 @DenseMtx_writeToFormattedFile(%struct._DenseMtx* %mtx, %struct._IO_FILE* %call31) #6
  %call38 = tail call i32 @fclose(%struct._IO_FILE* %call31) #4
  br label %return

if.else40:                                        ; preds = %if.else23
  %call41 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str20, i64 0, i64 0)) #4
  %cmp42 = icmp eq %struct._IO_FILE* %call41, null
  br i1 %cmp42, label %if.then44, label %if.else46

if.then44:                                        ; preds = %if.else40
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call45 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([58 x i8]* @.str18, i64 0, i64 0), i8* %fn) #4
  br label %return

if.else46:                                        ; preds = %if.else40
  %call47 = tail call i32 @DenseMtx_writeForHumanEye(%struct._DenseMtx* %mtx, %struct._IO_FILE* %call41) #6
  %call48 = tail call i32 @fclose(%struct._IO_FILE* %call41) #4
  br label %return

if.else52:                                        ; preds = %if.end4
  %call53 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str20, i64 0, i64 0)) #4
  %cmp54 = icmp eq %struct._IO_FILE* %call53, null
  br i1 %cmp54, label %if.then56, label %if.else58

if.then56:                                        ; preds = %if.else52
  %5 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call57 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([58 x i8]* @.str18, i64 0, i64 0), i8* %fn) #4
  br label %return

if.else58:                                        ; preds = %if.else52
  %call59 = tail call i32 @DenseMtx_writeForHumanEye(%struct._DenseMtx* %mtx, %struct._IO_FILE* %call53) #6
  %call60 = tail call i32 @fclose(%struct._IO_FILE* %call53) #4
  br label %return

return:                                           ; preds = %if.else58, %if.else36, %if.else46, %if.else, %if.then56, %if.then44, %if.then34, %if.then18, %if.then2, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -2, %if.then2 ], [ -3, %if.then18 ], [ -3, %if.then34 ], [ -3, %if.then44 ], [ -3, %if.then56 ], [ 1, %if.else ], [ 1, %if.else46 ], [ 1, %if.else36 ], [ 1, %if.else58 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @DenseMtx_writeToBinaryFile(%struct._DenseMtx* %mtx, %struct._IO_FILE* %fp) #0 {
entry:
  %cmp = icmp eq %struct._DenseMtx* %mtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([59 x i8]* @.str24, i64 0, i64 0), i64 58, i64 1, %struct._IO_FILE* %0) #7
  br label %return

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([58 x i8]* @.str25, i64 0, i64 0), i64 57, i64 1, %struct._IO_FILE* %2) #7
  br label %return

if.end4:                                          ; preds = %if.end
  %type = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0
  %4 = bitcast %struct._DenseMtx* %mtx to i8*
  %call5 = tail call i64 @fwrite(i8* %4, i64 4, i64 1, %struct._IO_FILE* %fp) #4
  %rowid = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 1
  %5 = bitcast i32* %rowid to i8*
  %call6 = tail call i64 @fwrite(i8* %5, i64 4, i64 1, %struct._IO_FILE* %fp) #4
  %colid = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 2
  %6 = bitcast i32* %colid to i8*
  %call7 = tail call i64 @fwrite(i8* %6, i64 4, i64 1, %struct._IO_FILE* %fp) #4
  %nrow = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 3
  %7 = bitcast i32* %nrow to i8*
  %call8 = tail call i64 @fwrite(i8* %7, i64 4, i64 1, %struct._IO_FILE* %fp) #4
  %ncol = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 4
  %8 = bitcast i32* %ncol to i8*
  %call9 = tail call i64 @fwrite(i8* %8, i64 4, i64 1, %struct._IO_FILE* %fp) #4
  %inc1 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 5
  %9 = bitcast i32* %inc1 to i8*
  %call10 = tail call i64 @fwrite(i8* %9, i64 4, i64 1, %struct._IO_FILE* %fp) #4
  %inc2 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 6
  %10 = bitcast i32* %inc2 to i8*
  %call11 = tail call i64 @fwrite(i8* %10, i64 4, i64 1, %struct._IO_FILE* %fp) #4
  %11 = load i32* %nrow, align 4, !tbaa !3
  %cmp13 = icmp sgt i32 %11, 0
  br i1 %cmp13, label %land.lhs.true, label %if.end18

land.lhs.true:                                    ; preds = %if.end4
  %rowind = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 7
  %12 = load i32** %rowind, align 8, !tbaa !0
  %cmp14 = icmp eq i32* %12, null
  br i1 %cmp14, label %if.end18, label %if.then15

if.then15:                                        ; preds = %land.lhs.true
  %13 = bitcast i32* %12 to i8*
  %conv = sext i32 %11 to i64
  %call17 = tail call i64 @fwrite(i8* %13, i64 4, i64 %conv, %struct._IO_FILE* %fp) #4
  br label %if.end18

if.end18:                                         ; preds = %land.lhs.true, %if.then15, %if.end4
  %14 = load i32* %ncol, align 4, !tbaa !3
  %cmp20 = icmp sgt i32 %14, 0
  br i1 %cmp20, label %land.lhs.true22, label %if.end29

land.lhs.true22:                                  ; preds = %if.end18
  %colind = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 8
  %15 = load i32** %colind, align 8, !tbaa !0
  %cmp23 = icmp eq i32* %15, null
  br i1 %cmp23, label %if.end29, label %if.then25

if.then25:                                        ; preds = %land.lhs.true22
  %16 = bitcast i32* %15 to i8*
  %conv27 = sext i32 %14 to i64
  %call28 = tail call i64 @fwrite(i8* %16, i64 4, i64 %conv27, %struct._IO_FILE* %fp) #4
  %.pre = load i32* %ncol, align 4, !tbaa !3
  br label %if.end29

if.end29:                                         ; preds = %land.lhs.true22, %if.end18, %if.then25
  %17 = phi i32 [ %.pre, %if.then25 ], [ %14, %if.end18 ], [ %14, %land.lhs.true22 ]
  %18 = load i32* %nrow, align 4, !tbaa !3
  %mul = mul nsw i32 %17, %18
  %cmp32 = icmp sgt i32 %mul, 0
  br i1 %cmp32, label %land.lhs.true34, label %return

land.lhs.true34:                                  ; preds = %if.end29
  %entries = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9
  %19 = load double** %entries, align 8, !tbaa !0
  %cmp35 = icmp eq double* %19, null
  br i1 %cmp35, label %return, label %if.then37

if.then37:                                        ; preds = %land.lhs.true34
  %20 = load i32* %type, align 4, !tbaa !3
  switch i32 %20, label %return [
    i32 1, label %if.then41
    i32 2, label %if.then48
  ]

if.then41:                                        ; preds = %if.then37
  %21 = bitcast double* %19 to i8*
  %conv43 = sext i32 %mul to i64
  %call44 = tail call i64 @fwrite(i8* %21, i64 8, i64 %conv43, %struct._IO_FILE* %fp) #4
  br label %return

if.then48:                                        ; preds = %if.then37
  %22 = bitcast double* %19 to i8*
  %mul50 = shl nsw i32 %mul, 1
  %conv51 = sext i32 %mul50 to i64
  %call52 = tail call i64 @fwrite(i8* %22, i64 8, i64 %conv51, %struct._IO_FILE* %fp) #4
  br label %return

return:                                           ; preds = %if.end29, %if.then48, %if.then41, %land.lhs.true34, %if.then37, %if.then2, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -2, %if.then2 ], [ 1, %if.then37 ], [ 1, %land.lhs.true34 ], [ 1, %if.then41 ], [ 1, %if.then48 ], [ 1, %if.end29 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @DenseMtx_writeToFormattedFile(%struct._DenseMtx* %mtx, %struct._IO_FILE* %fp) #0 {
entry:
  %cmp = icmp eq %struct._DenseMtx* %mtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([62 x i8]* @.str21, i64 0, i64 0), i64 61, i64 1, %struct._IO_FILE* %0) #7
  br label %return

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([61 x i8]* @.str22, i64 0, i64 0), i64 60, i64 1, %struct._IO_FILE* %2) #7
  br label %return

if.end4:                                          ; preds = %if.end
  %type = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0
  %4 = load i32* %type, align 4, !tbaa !3
  %rowid = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 1
  %5 = load i32* %rowid, align 4, !tbaa !3
  %colid = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 2
  %6 = load i32* %colid, align 4, !tbaa !3
  %nrow = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 3
  %7 = load i32* %nrow, align 4, !tbaa !3
  %ncol = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 4
  %8 = load i32* %ncol, align 4, !tbaa !3
  %inc1 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 5
  %9 = load i32* %inc1, align 4, !tbaa !3
  %inc2 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 6
  %10 = load i32* %inc2, align 4, !tbaa !3
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([23 x i8]* @.str23, i64 0, i64 0), i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10) #4
  %11 = load i32* %nrow, align 4, !tbaa !3
  %cmp7 = icmp sgt i32 %11, 0
  br i1 %cmp7, label %land.lhs.true, label %if.end11

land.lhs.true:                                    ; preds = %if.end4
  %rowind = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 7
  %12 = load i32** %rowind, align 8, !tbaa !0
  %cmp8 = icmp eq i32* %12, null
  br i1 %cmp8, label %if.end11, label %if.then9

if.then9:                                         ; preds = %land.lhs.true
  tail call void @IVfprintf(%struct._IO_FILE* %fp, i32 %11, i32* %12) #4
  br label %if.end11

if.end11:                                         ; preds = %land.lhs.true, %if.then9, %if.end4
  %13 = load i32* %ncol, align 4, !tbaa !3
  %cmp13 = icmp sgt i32 %13, 0
  br i1 %cmp13, label %land.lhs.true14, label %if.end18

land.lhs.true14:                                  ; preds = %if.end11
  %colind = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 8
  %14 = load i32** %colind, align 8, !tbaa !0
  %cmp15 = icmp eq i32* %14, null
  br i1 %cmp15, label %if.end18, label %if.then16

if.then16:                                        ; preds = %land.lhs.true14
  tail call void @IVfprintf(%struct._IO_FILE* %fp, i32 %13, i32* %14) #4
  %.pre = load i32* %ncol, align 4, !tbaa !3
  br label %if.end18

if.end18:                                         ; preds = %land.lhs.true14, %if.end11, %if.then16
  %15 = phi i32 [ %.pre, %if.then16 ], [ %13, %if.end11 ], [ %13, %land.lhs.true14 ]
  %16 = load i32* %nrow, align 4, !tbaa !3
  %mul = mul nsw i32 %15, %16
  %cmp21 = icmp sgt i32 %mul, 0
  br i1 %cmp21, label %land.lhs.true22, label %return

land.lhs.true22:                                  ; preds = %if.end18
  %entries = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9
  %17 = load double** %entries, align 8, !tbaa !0
  %cmp23 = icmp eq double* %17, null
  br i1 %cmp23, label %return, label %if.then24

if.then24:                                        ; preds = %land.lhs.true22
  %18 = load i32* %type, align 4, !tbaa !3
  switch i32 %18, label %return [
    i32 1, label %if.then27
    i32 2, label %if.then31
  ]

if.then27:                                        ; preds = %if.then24
  tail call void @DVfprintf(%struct._IO_FILE* %fp, i32 %mul, double* %17) #4
  br label %return

if.then31:                                        ; preds = %if.then24
  %mul32 = shl nsw i32 %mul, 1
  tail call void @DVfprintf(%struct._IO_FILE* %fp, i32 %mul32, double* %17) #4
  br label %return

return:                                           ; preds = %if.end18, %if.then31, %if.then27, %land.lhs.true22, %if.then24, %if.then2, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -2, %if.then2 ], [ 1, %if.then24 ], [ 1, %land.lhs.true22 ], [ 1, %if.then27 ], [ 1, %if.then31 ], [ 1, %if.end18 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @DenseMtx_writeForHumanEye(%struct._DenseMtx* %mtx, %struct._IO_FILE* %fp) #0 {
entry:
  %a2 = alloca %struct._A2, align 8
  %ierr = alloca i32, align 4
  %ncol = alloca i32, align 4
  %nrow = alloca i32, align 4
  %colind = alloca i32*, align 8
  %rowind = alloca i32*, align 8
  %cmp = icmp eq %struct._DenseMtx* %mtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %1 = call i64 @fwrite(i8* getelementptr inbounds ([59 x i8]* @.str36, i64 0, i64 0), i64 58, i64 1, %struct._IO_FILE* %0) #7
  br label %return

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %3 = call i64 @fwrite(i8* getelementptr inbounds ([59 x i8]* @.str36, i64 0, i64 0), i64 58, i64 1, %struct._IO_FILE* %2) #7
  br label %return

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @DenseMtx_writeStats(%struct._DenseMtx* %mtx, %struct._IO_FILE* %fp) #6
  call void @DenseMtx_rowIndices(%struct._DenseMtx* %mtx, i32* %nrow, i32** %rowind) #4
  %4 = load i32* %nrow, align 4, !tbaa !3
  %cmp6 = icmp sgt i32 %4, 0
  br i1 %cmp6, label %land.lhs.true, label %if.end11

land.lhs.true:                                    ; preds = %if.end4
  %5 = load i32** %rowind, align 8, !tbaa !0
  %cmp7 = icmp eq i32* %5, null
  br i1 %cmp7, label %if.end11, label %if.then8

if.then8:                                         ; preds = %land.lhs.true
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([26 x i8]* @.str37, i64 0, i64 0), i32* %5) #4
  %6 = load i32* %nrow, align 4, !tbaa !3
  %7 = load i32** %rowind, align 8, !tbaa !0
  %call10 = call i32 @IVfp80(%struct._IO_FILE* %fp, i32 %6, i32* %7, i32 80, i32* %ierr) #4
  br label %if.end11

if.end11:                                         ; preds = %land.lhs.true, %if.then8, %if.end4
  call void @DenseMtx_columnIndices(%struct._DenseMtx* %mtx, i32* %ncol, i32** %colind) #4
  %8 = load i32* %ncol, align 4, !tbaa !3
  %cmp12 = icmp sgt i32 %8, 0
  br i1 %cmp12, label %land.lhs.true13, label %if.end18

land.lhs.true13:                                  ; preds = %if.end11
  %9 = load i32** %colind, align 8, !tbaa !0
  %cmp14 = icmp eq i32* %9, null
  br i1 %cmp14, label %if.end18, label %if.then15

if.then15:                                        ; preds = %land.lhs.true13
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([29 x i8]* @.str38, i64 0, i64 0), i32* %9) #4
  %10 = load i32* %ncol, align 4, !tbaa !3
  %11 = load i32** %colind, align 8, !tbaa !0
  %call17 = call i32 @IVfp80(%struct._IO_FILE* %fp, i32 %10, i32* %11, i32 80, i32* %ierr) #4
  br label %if.end18

if.end18:                                         ; preds = %land.lhs.true13, %if.then15, %if.end11
  %12 = load i32* %nrow, align 4, !tbaa !3
  %cmp19 = icmp sgt i32 %12, 0
  br i1 %cmp19, label %land.lhs.true20, label %return

land.lhs.true20:                                  ; preds = %if.end18
  %13 = load i32* %ncol, align 4, !tbaa !3
  %cmp21 = icmp sgt i32 %13, 0
  br i1 %cmp21, label %if.then22, label %return

if.then22:                                        ; preds = %land.lhs.true20
  call void @A2_setDefaultFields(%struct._A2* %a2) #4
  call void @DenseMtx_setA2(%struct._DenseMtx* %mtx, %struct._A2* %a2) #4
  call void @A2_writeForHumanEye(%struct._A2* %a2, %struct._IO_FILE* %fp) #4
  br label %return

return:                                           ; preds = %if.end18, %land.lhs.true20, %if.then22, %if.then2, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -2, %if.then2 ], [ 1, %if.then22 ], [ 1, %land.lhs.true20 ], [ 1, %if.end18 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare void @IVfprintf(%struct._IO_FILE*, i32, i32*) #3

; Function Attrs: optsize
declare void @DVfprintf(%struct._IO_FILE*, i32, double*) #3

; Function Attrs: nounwind optsize
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define i32 @DenseMtx_writeStats(%struct._DenseMtx* %mtx, %struct._IO_FILE* %fp) #0 {
entry:
  %cmp = icmp eq %struct._DenseMtx* %mtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([52 x i8]* @.str26, i64 0, i64 0), i64 51, i64 1, %struct._IO_FILE* %0) #7
  br label %return

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([51 x i8]* @.str27, i64 0, i64 0), i64 50, i64 1, %struct._IO_FILE* %2) #7
  br label %return

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([32 x i8]* @.str28, i64 0, i64 0), %struct._DenseMtx* %mtx) #4
  %type = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0
  %4 = load i32* %type, align 4, !tbaa !3
  switch i32 %4, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb7
  ]

sw.bb:                                            ; preds = %if.end4
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str29, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %fp) #7
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end4
  %6 = tail call i64 @fwrite(i8* getelementptr inbounds ([18 x i8]* @.str30, i64 0, i64 0), i64 17, i64 1, %struct._IO_FILE* %fp) #7
  br label %sw.epilog

sw.default:                                       ; preds = %if.end4
  %7 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8]* @.str31, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %fp) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb7, %sw.bb
  %rowid = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 1
  %8 = load i32* %rowid, align 4, !tbaa !3
  %colid = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 2
  %9 = load i32* %colid, align 4, !tbaa !3
  %nrow = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 3
  %10 = load i32* %nrow, align 4, !tbaa !3
  %ncol = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 4
  %11 = load i32* %ncol, align 4, !tbaa !3
  %inc1 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 5
  %12 = load i32* %inc1, align 4, !tbaa !3
  %inc2 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 6
  %13 = load i32* %inc2, align 4, !tbaa !3
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([71 x i8]* @.str32, i64 0, i64 0), i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13) #4
  %rowind = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 7
  %14 = load i32** %rowind, align 8, !tbaa !0
  %colind = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 8
  %15 = load i32** %colind, align 8, !tbaa !0
  %entries = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9
  %16 = load double** %entries, align 8, !tbaa !0
  %call11 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([41 x i8]* @.str33, i64 0, i64 0), i32* %14, i32* %15, double* %16) #4
  %wrkDV = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 10
  %call12 = tail call double* @DV_entries(%struct._DV* %wrkDV) #4
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([12 x i8]* @.str34, i64 0, i64 0), double* %call12) #4
  %17 = load i32** %rowind, align 8, !tbaa !0
  %call16 = tail call double* @DV_entries(%struct._DV* %wrkDV) #4
  %sub.ptr.lhs.cast = ptrtoint i32* %17 to i64
  %sub.ptr.rhs.cast = ptrtoint double* %call16 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 2
  %18 = load i32** %colind, align 8, !tbaa !0
  %call19 = tail call double* @DV_entries(%struct._DV* %wrkDV) #4
  %sub.ptr.lhs.cast20 = ptrtoint i32* %18 to i64
  %sub.ptr.rhs.cast21 = ptrtoint double* %call19 to i64
  %sub.ptr.sub22 = sub i64 %sub.ptr.lhs.cast20, %sub.ptr.rhs.cast21
  %sub.ptr.div23 = ashr exact i64 %sub.ptr.sub22, 2
  %19 = load double** %entries, align 8, !tbaa !0
  %call26 = tail call double* @DV_entries(%struct._DV* %wrkDV) #4
  %sub.ptr.lhs.cast27 = ptrtoint double* %19 to i64
  %sub.ptr.rhs.cast28 = ptrtoint double* %call26 to i64
  %sub.ptr.sub29 = sub i64 %sub.ptr.lhs.cast27, %sub.ptr.rhs.cast28
  %sub.ptr.div30 = ashr exact i64 %sub.ptr.sub29, 3
  %call31 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([65 x i8]* @.str35, i64 0, i64 0), i64 %sub.ptr.div, i64 %sub.ptr.div23, i64 %sub.ptr.div30) #4
  br label %return

return:                                           ; preds = %sw.epilog, %if.then2, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -2, %if.then2 ], [ 1, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare double* @DV_entries(%struct._DV*) #3

; Function Attrs: optsize
declare void @DenseMtx_rowIndices(%struct._DenseMtx*, i32*, i32**) #3

; Function Attrs: optsize
declare i32 @IVfp80(%struct._IO_FILE*, i32, i32*, i32, i32*) #3

; Function Attrs: optsize
declare void @DenseMtx_columnIndices(%struct._DenseMtx*, i32*, i32**) #3

; Function Attrs: optsize
declare void @A2_setDefaultFields(%struct._A2*) #3

; Function Attrs: optsize
declare void @DenseMtx_setA2(%struct._DenseMtx*, %struct._A2*) #3

; Function Attrs: optsize
declare void @A2_writeForHumanEye(%struct._A2*, %struct._IO_FILE*) #3

; Function Attrs: nounwind optsize uwtable
define i32 @DenseMtx_writeForMatlab(%struct._DenseMtx* %mtx, i8* %mtxname, %struct._IO_FILE* %fp) #0 {
entry:
  %ncol = alloca i32, align 4
  %nrow = alloca i32, align 4
  %colind = alloca i32*, align 8
  %rowind = alloca i32*, align 8
  %cmp = icmp eq %struct._DenseMtx* %mtx, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %1 = call i64 @fwrite(i8* getelementptr inbounds ([57 x i8]* @.str39, i64 0, i64 0), i64 56, i64 1, %struct._IO_FILE* %0) #7
  br label %return

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i8* %mtxname, null
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %3 = call i64 @fwrite(i8* getelementptr inbounds ([61 x i8]* @.str40, i64 0, i64 0), i64 60, i64 1, %struct._IO_FILE* %2) #7
  br label %return

if.end4:                                          ; preds = %if.end
  %cmp5 = icmp eq %struct._IO_FILE* %fp, null
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end4
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %5 = call i64 @fwrite(i8* getelementptr inbounds ([56 x i8]* @.str41, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #7
  br label %return

if.end8:                                          ; preds = %if.end4
  call void @DenseMtx_rowIndices(%struct._DenseMtx* %mtx, i32* %nrow, i32** %rowind) #4
  call void @DenseMtx_columnIndices(%struct._DenseMtx* %mtx, i32* %ncol, i32** %colind) #4
  call void @DenseMtx_dimensions(%struct._DenseMtx* %mtx, i32* %nrow, i32* %ncol) #4
  %call9 = call i32 @DenseMtx_rowIncrement(%struct._DenseMtx* %mtx) #4
  %call10 = call i32 @DenseMtx_columnIncrement(%struct._DenseMtx* %mtx) #4
  %call11 = call double* @DenseMtx_entries(%struct._DenseMtx* %mtx) #4
  %type = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0
  %6 = load i32* %type, align 4, !tbaa !3
  switch i32 %6, label %return [
    i32 1, label %for.cond.preheader
    i32 2, label %for.cond32.preheader
  ]

for.cond32.preheader:                             ; preds = %if.end8
  %7 = load i32* %ncol, align 4, !tbaa !3
  %cmp33108 = icmp sgt i32 %7, 0
  br i1 %cmp33108, label %for.cond35.preheader.lr.ph, label %return

for.cond35.preheader.lr.ph:                       ; preds = %for.cond32.preheader
  %.pre117 = load i32* %nrow, align 4, !tbaa !3
  br label %for.cond35.preheader

for.cond.preheader:                               ; preds = %if.end8
  %8 = load i32* %ncol, align 4, !tbaa !3
  %cmp14103 = icmp sgt i32 %8, 0
  br i1 %cmp14103, label %for.cond15.preheader.lr.ph, label %return

for.cond15.preheader.lr.ph:                       ; preds = %for.cond.preheader
  %.pre = load i32* %nrow, align 4, !tbaa !3
  br label %for.cond15.preheader

for.cond15.preheader:                             ; preds = %for.cond15.preheader.lr.ph, %for.inc26
  %9 = phi i32 [ %8, %for.cond15.preheader.lr.ph ], [ %20, %for.inc26 ]
  %10 = phi i32 [ %.pre, %for.cond15.preheader.lr.ph ], [ %21, %for.inc26 ]
  %indvars.iv110 = phi i64 [ 0, %for.cond15.preheader.lr.ph ], [ %indvars.iv.next111, %for.inc26 ]
  %cmp16101 = icmp sgt i32 %10, 0
  br i1 %cmp16101, label %for.body17.lr.ph, label %for.inc26

for.body17.lr.ph:                                 ; preds = %for.cond15.preheader
  %11 = trunc i64 %indvars.iv110 to i32
  %mul21 = mul nsw i32 %11, %call10
  br label %for.body17

for.body17:                                       ; preds = %for.body17.lr.ph, %for.body17
  %indvars.iv = phi i64 [ 0, %for.body17.lr.ph ], [ %indvars.iv.next, %for.body17 ]
  %12 = load i32** %rowind, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %12, i64 %indvars.iv
  %13 = load i32* %arrayidx, align 4, !tbaa !3
  %add = add nsw i32 %13, 1
  %14 = load i32** %colind, align 8, !tbaa !0
  %arrayidx19 = getelementptr inbounds i32* %14, i64 %indvars.iv110
  %15 = load i32* %arrayidx19, align 4, !tbaa !3
  %add20 = add nsw i32 %15, 1
  %16 = trunc i64 %indvars.iv to i32
  %mul = mul nsw i32 %16, %call9
  %add22 = add nsw i32 %mul, %mul21
  %idxprom23 = sext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds double* %call11, i64 %idxprom23
  %17 = load double* %arrayidx24, align 8, !tbaa !4
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([24 x i8]* @.str42, i64 0, i64 0), i8* %mtxname, i32 %add, i32 %add20, double %17) #4
  %indvars.iv.next = add i64 %indvars.iv, 1
  %18 = load i32* %nrow, align 4, !tbaa !3
  %19 = trunc i64 %indvars.iv.next to i32
  %cmp16 = icmp slt i32 %19, %18
  br i1 %cmp16, label %for.body17, label %for.cond15.for.inc26_crit_edge

for.cond15.for.inc26_crit_edge:                   ; preds = %for.body17
  %.pre116 = load i32* %ncol, align 4, !tbaa !3
  br label %for.inc26

for.inc26:                                        ; preds = %for.cond15.for.inc26_crit_edge, %for.cond15.preheader
  %20 = phi i32 [ %.pre116, %for.cond15.for.inc26_crit_edge ], [ %9, %for.cond15.preheader ]
  %21 = phi i32 [ %18, %for.cond15.for.inc26_crit_edge ], [ %10, %for.cond15.preheader ]
  %indvars.iv.next111 = add i64 %indvars.iv110, 1
  %22 = trunc i64 %indvars.iv.next111 to i32
  %cmp14 = icmp slt i32 %22, %20
  br i1 %cmp14, label %for.cond15.preheader, label %return

for.cond35.preheader:                             ; preds = %for.cond35.preheader.lr.ph, %for.inc61
  %23 = phi i32 [ %7, %for.cond35.preheader.lr.ph ], [ %35, %for.inc61 ]
  %24 = phi i32 [ %.pre117, %for.cond35.preheader.lr.ph ], [ %36, %for.inc61 ]
  %indvars.iv114 = phi i64 [ 0, %for.cond35.preheader.lr.ph ], [ %indvars.iv.next115, %for.inc61 ]
  %cmp36105 = icmp sgt i32 %24, 0
  br i1 %cmp36105, label %for.body37.lr.ph, label %for.inc61

for.body37.lr.ph:                                 ; preds = %for.cond35.preheader
  %25 = trunc i64 %indvars.iv114 to i32
  %mul45 = mul nsw i32 %25, %call10
  br label %for.body37

for.body37:                                       ; preds = %for.body37.lr.ph, %for.body37
  %indvars.iv112 = phi i64 [ 0, %for.body37.lr.ph ], [ %indvars.iv.next113, %for.body37 ]
  %26 = load i32** %rowind, align 8, !tbaa !0
  %arrayidx39 = getelementptr inbounds i32* %26, i64 %indvars.iv112
  %27 = load i32* %arrayidx39, align 4, !tbaa !3
  %add40 = add nsw i32 %27, 1
  %28 = load i32** %colind, align 8, !tbaa !0
  %arrayidx42 = getelementptr inbounds i32* %28, i64 %indvars.iv114
  %29 = load i32* %arrayidx42, align 4, !tbaa !3
  %add43 = add nsw i32 %29, 1
  %30 = trunc i64 %indvars.iv112 to i32
  %mul44 = mul nsw i32 %30, %call9
  %add46 = add nsw i32 %mul44, %mul45
  %mul47 = shl nsw i32 %add46, 1
  %idxprom48 = sext i32 %mul47 to i64
  %arrayidx49 = getelementptr inbounds double* %call11, i64 %idxprom48
  %31 = load double* %arrayidx49, align 8, !tbaa !4
  %add54100 = or i32 %mul47, 1
  %idxprom55 = sext i32 %add54100 to i64
  %arrayidx56 = getelementptr inbounds double* %call11, i64 %idxprom55
  %32 = load double* %arrayidx56, align 8, !tbaa !4
  %call57 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([36 x i8]* @.str43, i64 0, i64 0), i8* %mtxname, i32 %add40, i32 %add43, double %31, double %32) #4
  %indvars.iv.next113 = add i64 %indvars.iv112, 1
  %33 = load i32* %nrow, align 4, !tbaa !3
  %34 = trunc i64 %indvars.iv.next113 to i32
  %cmp36 = icmp slt i32 %34, %33
  br i1 %cmp36, label %for.body37, label %for.cond35.for.inc61_crit_edge

for.cond35.for.inc61_crit_edge:                   ; preds = %for.body37
  %.pre118 = load i32* %ncol, align 4, !tbaa !3
  br label %for.inc61

for.inc61:                                        ; preds = %for.cond35.for.inc61_crit_edge, %for.cond35.preheader
  %35 = phi i32 [ %.pre118, %for.cond35.for.inc61_crit_edge ], [ %23, %for.cond35.preheader ]
  %36 = phi i32 [ %33, %for.cond35.for.inc61_crit_edge ], [ %24, %for.cond35.preheader ]
  %indvars.iv.next115 = add i64 %indvars.iv114, 1
  %37 = trunc i64 %indvars.iv.next115 to i32
  %cmp33 = icmp slt i32 %37, %35
  br i1 %cmp33, label %for.cond35.preheader, label %return

return:                                           ; preds = %for.cond32.preheader, %for.inc61, %for.cond.preheader, %for.inc26, %if.end8, %if.then6, %if.then2, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -2, %if.then2 ], [ -3, %if.then6 ], [ 1, %if.end8 ], [ 1, %for.inc26 ], [ 1, %for.cond.preheader ], [ 1, %for.inc61 ], [ 1, %for.cond32.preheader ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare void @DenseMtx_dimensions(%struct._DenseMtx*, i32*, i32*) #3

; Function Attrs: optsize
declare i32 @DenseMtx_rowIncrement(%struct._DenseMtx*) #3

; Function Attrs: optsize
declare i32 @DenseMtx_columnIncrement(%struct._DenseMtx*) #3

; Function Attrs: optsize
declare double* @DenseMtx_entries(%struct._DenseMtx*) #3

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize }
attributes #5 = { nounwind optsize readonly }
attributes #6 = { optsize }
attributes #7 = { nounwind }

!0 = metadata !{metadata !"any pointer", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"double", metadata !1}
