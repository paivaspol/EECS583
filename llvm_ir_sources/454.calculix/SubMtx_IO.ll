; ModuleID = '../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct._SubMtx = type { i32, i32, i32, i32, i32, i32, i32, double*, %struct._DV, %struct._SubMtx* }
%struct._DV = type { i32, i32, i32, double* }
%struct._A2 = type { i32, i32, i32, i32, i32, i32, double* }

@stderr = external global %struct._IO_FILE*
@.str = private unnamed_addr constant [50 x i8] c"\0A error in SubMtx_readFromFile(%p,%s)\0A bad input\0A\00", align 1
@.str1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str2 = private unnamed_addr constant [62 x i8] c"\0A error in SubMtx_readFromFile(%p,%s)\0A unable to open file %s\00", align 1
@.str3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str4 = private unnamed_addr constant [108 x i8] c"\0A error in SubMtx_readFromFile(%p,%s)\0A bad SubMtx file name %s,\0A must end in %s (binary) or %s (formatted)\0A\00", align 1
@.str5 = private unnamed_addr constant [59 x i8] c"\0A error in SubMtx_readFromFormattedFile(%p,%p)\0A bad input\0A\00", align 1
@.str6 = private unnamed_addr constant [72 x i8] c"\0A 1. error in SubMtx_readFromFormattedFile(%p,%p)\0A %d items of %d read\0A\00", align 1
@.str7 = private unnamed_addr constant [73 x i8] c"\0A error in SubMtx_readFromFormattedFile(%p,%p)\0A type = %d not supported\0A\00", align 1
@.str8 = private unnamed_addr constant [73 x i8] c"\0A error in SubMtx_readFromFormattedFile(%p,%p)\0A mode = %d not supported\0A\00", align 1
@.str9 = private unnamed_addr constant [72 x i8] c"\0A 2. error in SubMtx_readFromFormattedFile(%p,%p)\0A %d items of %d read\0A\00", align 1
@.str10 = private unnamed_addr constant [72 x i8] c"\0A 3. error in SubMtx_readFromFormattedFile(%p,%p)\0A %d items of %d read\0A\00", align 1
@.str11 = private unnamed_addr constant [72 x i8] c"\0A 5. error in SubMtx_readFromFormattedFile(%p,%p)\0A %d items of %d read\0A\00", align 1
@.str12 = private unnamed_addr constant [72 x i8] c"\0A 6. error in SubMtx_readFromFormattedFile(%p,%p)\0A %d items of %d read\0A\00", align 1
@.str13 = private unnamed_addr constant [72 x i8] c"\0A 8. error in SubMtx_readFromFormattedFile(%p,%p)\0A %d items of %d read\0A\00", align 1
@.str14 = private unnamed_addr constant [72 x i8] c"\0A 6. error in SubMtx_readFromFormattedFile(%p,%p)\0A %d items9of %d read\0A\00", align 1
@.str15 = private unnamed_addr constant [73 x i8] c"\0A 11. error in SubMtx_readFromFormattedFile(%p,%p)\0A %d items of %d read\0A\00", align 1
@.str16 = private unnamed_addr constant [73 x i8] c"\0A 12. error in SubMtx_readFromFormattedFile(%p,%p)\0A %d items of %d read\0A\00", align 1
@.str17 = private unnamed_addr constant [73 x i8] c"\0A 14. error in SubMtx_readFromFormattedFile(%p,%p)\0A %d items of %d read\0A\00", align 1
@.str18 = private unnamed_addr constant [73 x i8] c"\0A 15. error in SubMtx_readFromFormattedFile(%p,%p)\0A %d items of %d read\0A\00", align 1
@.str19 = private unnamed_addr constant [73 x i8] c"\0A 16. error in SubMtx_readFromFormattedFile(%p,%p)\0A %d items of %d read\0A\00", align 1
@.str20 = private unnamed_addr constant [72 x i8] c"\0A 4. error in SubMtx_readFromFormattedFile(%p,%p)\0A %d items of %d read\0A\00", align 1
@.str21 = private unnamed_addr constant [56 x i8] c"\0A error in SubMtx_readFromBinaryFile(%p,%p)\0A bad input\0A\00", align 1
@.str22 = private unnamed_addr constant [69 x i8] c"\0A 1. error in SubMtx_readFromBinaryFile(%p,%p)\0A %d items of %d read\0A\00", align 1
@.str23 = private unnamed_addr constant [70 x i8] c"\0A error in SubMtx_readFromBinaryFile(%p,%p)\0A type = %d not supported\0A\00", align 1
@.str24 = private unnamed_addr constant [70 x i8] c"\0A error in SubMtx_readFromBinaryFile(%p,%p)\0A mode = %d not supported\0A\00", align 1
@.str25 = private unnamed_addr constant [69 x i8] c"\0A 2. error in SubMtx_readFromBinaryFile(%p,%p)\0A %d items of %d read\0A\00", align 1
@.str26 = private unnamed_addr constant [69 x i8] c"\0A 3. error in SubMtx_readFromBinaryFile(%p,%p)\0A %d items of %d read\0A\00", align 1
@.str27 = private unnamed_addr constant [69 x i8] c"\0A 5. error in SubMtx_readFromBinaryFile(%p,%p)\0A %d items of %d read\0A\00", align 1
@.str28 = private unnamed_addr constant [69 x i8] c"\0A 6. error in SubMtx_readFromBinaryFile(%p,%p)\0A %d items of %d read\0A\00", align 1
@.str29 = private unnamed_addr constant [69 x i8] c"\0A 8. error in SubMtx_readFromBinaryFile(%p,%p)\0A %d items of %d read\0A\00", align 1
@.str30 = private unnamed_addr constant [69 x i8] c"\0A 6. error in SubMtx_readFromBinaryFile(%p,%p)\0A %d items9of %d read\0A\00", align 1
@.str31 = private unnamed_addr constant [70 x i8] c"\0A 11. error in SubMtx_readFromBinaryFile(%p,%p)\0A %d items of %d read\0A\00", align 1
@.str32 = private unnamed_addr constant [70 x i8] c"\0A 12. error in SubMtx_readFromBinaryFile(%p,%p)\0A %d items of %d read\0A\00", align 1
@.str33 = private unnamed_addr constant [70 x i8] c"\0A 14. error in SubMtx_readFromBinaryFile(%p,%p)\0A %d items of %d read\0A\00", align 1
@.str34 = private unnamed_addr constant [70 x i8] c"\0A 15. error in SubMtx_readFromBinaryFile(%p,%p)\0A %d items of %d read\0A\00", align 1
@.str35 = private unnamed_addr constant [70 x i8] c"\0A 16. error in SubMtx_readFromBinaryFile(%p,%p)\0A %d items of %d read\0A\00", align 1
@.str36 = private unnamed_addr constant [69 x i8] c"\0A 4. error in SubMtx_readFromBinaryFile(%p,%p)\0A %d items of %d read\0A\00", align 1
@.str37 = private unnamed_addr constant [55 x i8] c"\0A fatal error in SubMtx_writeToFile(%p,%s)\0A bad input\0A\00", align 1
@.str38 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str39 = private unnamed_addr constant [61 x i8] c"\0A error in SubMtx_writeToFile(%p,%s)\0A unable to open file %s\00", align 1
@.str40 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str41 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str42 = private unnamed_addr constant [64 x i8] c"\0A fatal error in SubMtx_writeToFormattedFile(%p,%p)\0A bad input\0A\00", align 1
@.str43 = private unnamed_addr constant [61 x i8] c"\0A fatal error in SubMtx_writeToBinaryFile(%p,%p)\0A bad input\0A\00", align 1
@.str44 = private unnamed_addr constant [60 x i8] c"\0A fatal error in SubMtx_writeForHumanEye(%p,%p)\0A bad input\0A\00", align 1
@.str45 = private unnamed_addr constant [12 x i8] c"\0A rowids : \00", align 1
@.str46 = private unnamed_addr constant [12 x i8] c"\0A colids : \00", align 1
@.str47 = private unnamed_addr constant [54 x i8] c"\0A fatal error in SubMtx_writeStats(%p,%p)\0A bad input\0A\00", align 1
@.str48 = private unnamed_addr constant [155 x i8] c"\0A\0A SubMtx object : type %d, (rowid,colid) = (%d,%d)\0A             : %d rows x %d columns, %d entries\0A             : %d bytes in workspace, %d used, base %p\00", align 1
@.str49 = private unnamed_addr constant [29 x i8] c"\0A             : real entries\00", align 1
@.str50 = private unnamed_addr constant [32 x i8] c"\0A             : complex entries\00", align 1
@.str51 = private unnamed_addr constant [32 x i8] c"\0A             : unknown entries\00", align 1
@.str52 = private unnamed_addr constant [39 x i8] c"\0A             : dense storage via rows\00", align 1
@.str53 = private unnamed_addr constant [42 x i8] c"\0A             : dense storage via columns\00", align 1
@.str54 = private unnamed_addr constant [40 x i8] c"\0A             : sparse storage via rows\00", align 1
@.str55 = private unnamed_addr constant [43 x i8] c"\0A             : sparse storage via columns\00", align 1
@.str56 = private unnamed_addr constant [43 x i8] c"\0A             : sparse storage via triples\00", align 1
@.str57 = private unnamed_addr constant [49 x i8] c"\0A             : sparse storage via dense subrows\00", align 1
@.str58 = private unnamed_addr constant [52 x i8] c"\0A             : sparse storage via dense subcolumns\00", align 1
@.str59 = private unnamed_addr constant [32 x i8] c"\0A             : diagonal matrix\00", align 1
@.str60 = private unnamed_addr constant [48 x i8] c"\0A             : block diagonal symmetric matrix\00", align 1
@.str61 = private unnamed_addr constant [48 x i8] c"\0A             : block diagonal hermitian matrix\00", align 1
@.str62 = private unnamed_addr constant [37 x i8] c"\0A             : unknown storage mode\00", align 1
@.str63 = private unnamed_addr constant [61 x i8] c"\0A fatal error in SubMtx_writeForMatlab(%p,%p,%p)\0A bad input\0A\00", align 1
@.str64 = private unnamed_addr constant [25 x i8] c"\0A %s(%d,%d) = %20.12e ; \00", align 1
@.str65 = private unnamed_addr constant [35 x i8] c"\0A %s(%d,%d) = %20.12e + %20.12e*i;\00", align 1
@.str66 = private unnamed_addr constant [24 x i8] c"\0A %s(%d,%d) = %20.12e ;\00", align 1
@.str67 = private unnamed_addr constant [9 x i8] c".submtxf\00", align 1
@.str68 = private unnamed_addr constant [9 x i8] c".submtxb\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @SubMtx_readFromFile(%struct._SubMtx* %mtx, i8* %fn) #0 {
entry:
  %cmp = icmp eq %struct._SubMtx* %mtx, null
  %cmp1 = icmp eq i8* %fn, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), %struct._SubMtx* %mtx, i8* %fn) #5
  br label %return

if.end:                                           ; preds = %entry
  %call2 = tail call i64 @strlen(i8* %fn) #6
  %conv = trunc i64 %call2 to i32
  %cmp5 = icmp sgt i32 %conv, 8
  br i1 %cmp5, label %if.then7, label %if.else41

if.then7:                                         ; preds = %if.end
  %sub = shl i64 %call2, 32
  %sext = add i64 %sub, -34359738368
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds i8* %fn, i64 %idxprom
  %call8 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([9 x i8]* @.str68, i64 0, i64 0)) #6
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then11, label %if.else20

if.then11:                                        ; preds = %if.then7
  %call12 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([3 x i8]* @.str1, i64 0, i64 0)) #5
  %cmp13 = icmp eq %struct._IO_FILE* %call12, null
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.then11
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([62 x i8]* @.str2, i64 0, i64 0), %struct._SubMtx* %mtx, i8* %fn, i8* %fn) #5
  br label %return

if.else:                                          ; preds = %if.then11
  %call17 = tail call i32 @SubMtx_readFromBinaryFile(%struct._SubMtx* %mtx, %struct._IO_FILE* %call12) #7
  %call18 = tail call i32 @fclose(%struct._IO_FILE* %call12) #5
  br label %return

if.else20:                                        ; preds = %if.then7
  %call24 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([9 x i8]* @.str67, i64 0, i64 0)) #6
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %if.then27, label %if.else37

if.then27:                                        ; preds = %if.else20
  %call28 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str3, i64 0, i64 0)) #5
  %cmp29 = icmp eq %struct._IO_FILE* %call28, null
  br i1 %cmp29, label %if.then31, label %if.else33

if.then31:                                        ; preds = %if.then27
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call32 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([62 x i8]* @.str2, i64 0, i64 0), %struct._SubMtx* %mtx, i8* %fn, i8* %fn) #5
  br label %return

if.else33:                                        ; preds = %if.then27
  %call34 = tail call i32 @SubMtx_readFromFormattedFile(%struct._SubMtx* %mtx, %struct._IO_FILE* %call28) #7
  %call35 = tail call i32 @fclose(%struct._IO_FILE* %call28) #5
  br label %return

if.else37:                                        ; preds = %if.else20
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call38 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([108 x i8]* @.str4, i64 0, i64 0), %struct._SubMtx* %mtx, i8* %fn, i8* %fn, i8* getelementptr inbounds ([9 x i8]* @.str68, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str67, i64 0, i64 0)) #5
  br label %return

if.else41:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call42 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([108 x i8]* @.str4, i64 0, i64 0), %struct._SubMtx* %mtx, i8* %fn, i8* %fn, i8* getelementptr inbounds ([9 x i8]* @.str68, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str67, i64 0, i64 0)) #5
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
define i32 @SubMtx_readFromBinaryFile(%struct._SubMtx* %mtx, %struct._IO_FILE* %fp) #0 {
entry:
  %entries = alloca double*, align 8
  %inc1 = alloca i32, align 4
  %inc2 = alloca i32, align 4
  %ncol = alloca i32, align 4
  %nent = alloca i32, align 4
  %nrow = alloca i32, align 4
  %itemp = alloca [7 x i32], align 16
  %colids = alloca i32*, align 8
  %colind = alloca i32*, align 8
  %firstlocs = alloca i32*, align 8
  %indices = alloca i32*, align 8
  %pivotsizes = alloca i32*, align 8
  %rowids = alloca i32*, align 8
  %rowind = alloca i32*, align 8
  %sizes = alloca i32*, align 8
  %cmp = icmp eq %struct._SubMtx* %mtx, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([56 x i8]* @.str21, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp) #5
  br label %return

if.end:                                           ; preds = %entry
  call void @SubMtx_clearData(%struct._SubMtx* %mtx) #5
  %1 = bitcast [7 x i32]* %itemp to i8*
  %call2 = call i64 @fread(i8* %1, i64 4, i64 7, %struct._IO_FILE* %fp) #5
  %conv = trunc i64 %call2 to i32
  %cmp3 = icmp eq i32 %conv, 7
  br i1 %cmp3, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([69 x i8]* @.str22, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %conv, i32 7) #5
  br label %return

if.end7:                                          ; preds = %if.end
  %3 = bitcast [7 x i32]* %itemp to i64*
  %4 = load i64* %3, align 16
  %5 = trunc i64 %4 to i32
  %.off = add i32 %5, -1
  %switch = icmp ult i32 %.off, 2
  %6 = lshr i64 %4, 32
  %7 = trunc i64 %6 to i32
  br i1 %switch, label %sw.epilog, label %sw.default

sw.default:                                       ; preds = %if.end7
  %8 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([70 x i8]* @.str23, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %5) #5
  br label %return

sw.epilog:                                        ; preds = %if.end7
  switch i32 %7, label %sw.default12 [
    i32 0, label %sw.epilog15
    i32 1, label %sw.epilog15
    i32 2, label %sw.epilog15
    i32 3, label %sw.epilog15
    i32 5, label %sw.epilog15
    i32 6, label %sw.epilog15
    i32 7, label %sw.epilog15
    i32 8, label %sw.epilog15
    i32 9, label %sw.epilog15
  ]

sw.default12:                                     ; preds = %sw.epilog
  %9 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([70 x i8]* @.str24, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %7) #5
  br label %return

sw.epilog15:                                      ; preds = %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog
  %arrayidx18 = getelementptr inbounds [7 x i32]* %itemp, i64 0, i64 2
  %10 = bitcast i32* %arrayidx18 to i64*
  %11 = load i64* %10, align 8
  %12 = trunc i64 %11 to i32
  %13 = lshr i64 %11, 32
  %14 = trunc i64 %13 to i32
  %arrayidx20 = getelementptr inbounds [7 x i32]* %itemp, i64 0, i64 4
  %15 = bitcast i32* %arrayidx20 to i64*
  %16 = load i64* %15, align 16
  %17 = trunc i64 %16 to i32
  %18 = lshr i64 %16, 32
  %19 = trunc i64 %18 to i32
  %arrayidx22 = getelementptr inbounds [7 x i32]* %itemp, i64 0, i64 6
  %20 = load i32* %arrayidx22, align 8, !tbaa !3
  call void @SubMtx_init(%struct._SubMtx* %mtx, i32 %5, i32 %7, i32 %12, i32 %14, i32 %17, i32 %19, i32 %20) #5
  call void @SubMtx_rowIndices(%struct._SubMtx* %mtx, i32* %nrow, i32** %rowind) #5
  %21 = load i32** %rowind, align 8, !tbaa !0
  %22 = bitcast i32* %21 to i8*
  %23 = load i32* %nrow, align 4, !tbaa !3
  %conv23 = sext i32 %23 to i64
  %call24 = call i64 @fread(i8* %22, i64 4, i64 %conv23, %struct._IO_FILE* %fp) #5
  %conv25 = trunc i64 %call24 to i32
  %24 = load i32* %nrow, align 4, !tbaa !3
  %cmp26 = icmp eq i32 %conv25, %24
  br i1 %cmp26, label %if.end30, label %if.then28

if.then28:                                        ; preds = %sw.epilog15
  %25 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([69 x i8]* @.str25, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %conv25, i32 %24) #5
  br label %return

if.end30:                                         ; preds = %sw.epilog15
  call void @SubMtx_columnIndices(%struct._SubMtx* %mtx, i32* %ncol, i32** %colind) #5
  %26 = load i32** %colind, align 8, !tbaa !0
  %27 = bitcast i32* %26 to i8*
  %28 = load i32* %ncol, align 4, !tbaa !3
  %conv31 = sext i32 %28 to i64
  %call32 = call i64 @fread(i8* %27, i64 4, i64 %conv31, %struct._IO_FILE* %fp) #5
  %conv33 = trunc i64 %call32 to i32
  %29 = load i32* %ncol, align 4, !tbaa !3
  %cmp34 = icmp eq i32 %conv33, %29
  br i1 %cmp34, label %if.end38, label %if.then36

if.then36:                                        ; preds = %if.end30
  %30 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([69 x i8]* @.str26, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %conv33, i32 %29) #5
  br label %return

if.end38:                                         ; preds = %if.end30
  %mode = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 1
  %31 = load i32* %mode, align 4, !tbaa !3
  switch i32 %31, label %sw.epilog135 [
    i32 0, label %sw.bb39
    i32 1, label %sw.bb39
    i32 2, label %sw.bb40
    i32 3, label %sw.bb57
    i32 4, label %sw.bb74
    i32 5, label %sw.bb91
    i32 6, label %sw.bb108
    i32 7, label %sw.bb125
    i32 8, label %sw.bb126
    i32 9, label %sw.bb126
  ]

sw.bb39:                                          ; preds = %if.end38, %if.end38
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtx, i32* %nrow, i32* %ncol, i32* %inc1, i32* %inc2, double** %entries) #5
  %32 = load i32* %nrow, align 4, !tbaa !3
  %33 = load i32* %ncol, align 4, !tbaa !3
  %mul = mul nsw i32 %33, %32
  store i32 %mul, i32* %nent, align 4, !tbaa !3
  br label %sw.epilog135

sw.bb40:                                          ; preds = %if.end38
  call void @SubMtx_sparseRowsInfo(%struct._SubMtx* %mtx, i32* %nrow, i32* %nent, i32** %sizes, i32** %indices, double** %entries) #5
  %34 = load i32** %sizes, align 8, !tbaa !0
  %35 = bitcast i32* %34 to i8*
  %36 = load i32* %nrow, align 4, !tbaa !3
  %conv41 = sext i32 %36 to i64
  %call42 = call i64 @fread(i8* %35, i64 4, i64 %conv41, %struct._IO_FILE* %fp) #5
  %conv43 = trunc i64 %call42 to i32
  %37 = load i32* %nrow, align 4, !tbaa !3
  %cmp44 = icmp eq i32 %conv43, %37
  br i1 %cmp44, label %if.end48, label %if.then46

if.then46:                                        ; preds = %sw.bb40
  %38 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call47 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([69 x i8]* @.str27, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %conv43, i32 %37) #5
  br label %return

if.end48:                                         ; preds = %sw.bb40
  %39 = load i32** %indices, align 8, !tbaa !0
  %40 = bitcast i32* %39 to i8*
  %41 = load i32* %nent, align 4, !tbaa !3
  %conv49 = sext i32 %41 to i64
  %call50 = call i64 @fread(i8* %40, i64 4, i64 %conv49, %struct._IO_FILE* %fp) #5
  %conv51 = trunc i64 %call50 to i32
  %42 = load i32* %nent, align 4, !tbaa !3
  %cmp52 = icmp eq i32 %conv51, %42
  br i1 %cmp52, label %sw.epilog135, label %if.then54

if.then54:                                        ; preds = %if.end48
  %43 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call55 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([69 x i8]* @.str28, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %conv51, i32 %42) #5
  br label %return

sw.bb57:                                          ; preds = %if.end38
  call void @SubMtx_sparseColumnsInfo(%struct._SubMtx* %mtx, i32* %ncol, i32* %nent, i32** %sizes, i32** %indices, double** %entries) #5
  %44 = load i32** %sizes, align 8, !tbaa !0
  %45 = bitcast i32* %44 to i8*
  %46 = load i32* %ncol, align 4, !tbaa !3
  %conv58 = sext i32 %46 to i64
  %call59 = call i64 @fread(i8* %45, i64 4, i64 %conv58, %struct._IO_FILE* %fp) #5
  %conv60 = trunc i64 %call59 to i32
  %47 = load i32* %ncol, align 4, !tbaa !3
  %cmp61 = icmp eq i32 %conv60, %47
  br i1 %cmp61, label %if.end65, label %if.then63

if.then63:                                        ; preds = %sw.bb57
  %48 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call64 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([69 x i8]* @.str29, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %conv60, i32 %47) #5
  br label %return

if.end65:                                         ; preds = %sw.bb57
  %49 = load i32** %indices, align 8, !tbaa !0
  %50 = bitcast i32* %49 to i8*
  %51 = load i32* %nent, align 4, !tbaa !3
  %conv66 = sext i32 %51 to i64
  %call67 = call i64 @fread(i8* %50, i64 4, i64 %conv66, %struct._IO_FILE* %fp) #5
  %conv68 = trunc i64 %call67 to i32
  %52 = load i32* %nent, align 4, !tbaa !3
  %cmp69 = icmp eq i32 %conv68, %52
  br i1 %cmp69, label %sw.epilog135, label %if.then71

if.then71:                                        ; preds = %if.end65
  %53 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call72 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([69 x i8]* @.str30, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %conv68, i32 %52) #5
  br label %return

sw.bb74:                                          ; preds = %if.end38
  call void @SubMtx_sparseTriplesInfo(%struct._SubMtx* %mtx, i32* %nent, i32** %rowids, i32** %colids, double** %entries) #5
  %54 = load i32** %rowids, align 8, !tbaa !0
  %55 = bitcast i32* %54 to i8*
  %56 = load i32* %nent, align 4, !tbaa !3
  %conv75 = sext i32 %56 to i64
  %call76 = call i64 @fread(i8* %55, i64 4, i64 %conv75, %struct._IO_FILE* %fp) #5
  %conv77 = trunc i64 %call76 to i32
  %57 = load i32* %nent, align 4, !tbaa !3
  %cmp78 = icmp eq i32 %conv77, %57
  br i1 %cmp78, label %if.end82, label %if.then80

if.then80:                                        ; preds = %sw.bb74
  %58 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call81 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([70 x i8]* @.str31, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %conv77, i32 %57) #5
  br label %return

if.end82:                                         ; preds = %sw.bb74
  %59 = load i32** %colids, align 8, !tbaa !0
  %60 = bitcast i32* %59 to i8*
  %sext249 = shl i64 %call76, 32
  %conv83 = ashr exact i64 %sext249, 32
  %call84 = call i64 @fread(i8* %60, i64 4, i64 %conv83, %struct._IO_FILE* %fp) #5
  %conv85 = trunc i64 %call84 to i32
  %61 = load i32* %nent, align 4, !tbaa !3
  %cmp86 = icmp eq i32 %conv85, %61
  br i1 %cmp86, label %sw.epilog135, label %if.then88

if.then88:                                        ; preds = %if.end82
  %62 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call89 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %62, i8* getelementptr inbounds ([70 x i8]* @.str32, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %conv85, i32 %61) #5
  br label %return

sw.bb91:                                          ; preds = %if.end38
  call void @SubMtx_denseSubrowsInfo(%struct._SubMtx* %mtx, i32* %nrow, i32* %nent, i32** %firstlocs, i32** %sizes, double** %entries) #5
  %63 = load i32** %firstlocs, align 8, !tbaa !0
  %64 = bitcast i32* %63 to i8*
  %65 = load i32* %nrow, align 4, !tbaa !3
  %conv92 = sext i32 %65 to i64
  %call93 = call i64 @fread(i8* %64, i64 4, i64 %conv92, %struct._IO_FILE* %fp) #5
  %conv94 = trunc i64 %call93 to i32
  %66 = load i32* %nrow, align 4, !tbaa !3
  %cmp95 = icmp eq i32 %conv94, %66
  br i1 %cmp95, label %if.end99, label %if.then97

if.then97:                                        ; preds = %sw.bb91
  %67 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call98 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([70 x i8]* @.str33, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %conv94, i32 %66) #5
  br label %return

if.end99:                                         ; preds = %sw.bb91
  %68 = load i32** %sizes, align 8, !tbaa !0
  %69 = bitcast i32* %68 to i8*
  %sext248 = shl i64 %call93, 32
  %conv100 = ashr exact i64 %sext248, 32
  %call101 = call i64 @fread(i8* %69, i64 4, i64 %conv100, %struct._IO_FILE* %fp) #5
  %conv102 = trunc i64 %call101 to i32
  %70 = load i32* %nrow, align 4, !tbaa !3
  %cmp103 = icmp eq i32 %conv102, %70
  br i1 %cmp103, label %sw.epilog135, label %if.then105

if.then105:                                       ; preds = %if.end99
  %71 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call106 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([70 x i8]* @.str34, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %conv102, i32 %70) #5
  br label %return

sw.bb108:                                         ; preds = %if.end38
  call void @SubMtx_denseSubcolumnsInfo(%struct._SubMtx* %mtx, i32* %ncol, i32* %nent, i32** %firstlocs, i32** %sizes, double** %entries) #5
  %72 = load i32** %firstlocs, align 8, !tbaa !0
  %73 = bitcast i32* %72 to i8*
  %74 = load i32* %ncol, align 4, !tbaa !3
  %conv109 = sext i32 %74 to i64
  %call110 = call i64 @fread(i8* %73, i64 4, i64 %conv109, %struct._IO_FILE* %fp) #5
  %conv111 = trunc i64 %call110 to i32
  %75 = load i32* %ncol, align 4, !tbaa !3
  %cmp112 = icmp eq i32 %conv111, %75
  br i1 %cmp112, label %if.end116, label %if.then114

if.then114:                                       ; preds = %sw.bb108
  %76 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call115 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([70 x i8]* @.str33, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %conv111, i32 %75) #5
  br label %return

if.end116:                                        ; preds = %sw.bb108
  %77 = load i32** %sizes, align 8, !tbaa !0
  %78 = bitcast i32* %77 to i8*
  %sext = shl i64 %call110, 32
  %conv117 = ashr exact i64 %sext, 32
  %call118 = call i64 @fread(i8* %78, i64 4, i64 %conv117, %struct._IO_FILE* %fp) #5
  %conv119 = trunc i64 %call118 to i32
  %79 = load i32* %ncol, align 4, !tbaa !3
  %cmp120 = icmp eq i32 %conv119, %79
  br i1 %cmp120, label %sw.epilog135, label %if.then122

if.then122:                                       ; preds = %if.end116
  %80 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call123 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %80, i8* getelementptr inbounds ([70 x i8]* @.str34, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %conv119, i32 %79) #5
  br label %return

sw.bb125:                                         ; preds = %if.end38
  call void @SubMtx_diagonalInfo(%struct._SubMtx* %mtx, i32* %nent, double** %entries) #5
  br label %sw.epilog135

sw.bb126:                                         ; preds = %if.end38, %if.end38
  call void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %mtx, i32* %nrow, i32* %nent, i32** %pivotsizes, double** %entries) #5
  %81 = load i32** %pivotsizes, align 8, !tbaa !0
  %82 = bitcast i32* %81 to i8*
  %83 = load i32* %nrow, align 4, !tbaa !3
  %conv127 = sext i32 %83 to i64
  %call128 = call i64 @fread(i8* %82, i64 4, i64 %conv127, %struct._IO_FILE* %fp) #5
  %conv129 = trunc i64 %call128 to i32
  %84 = load i32* %nrow, align 4, !tbaa !3
  %cmp130 = icmp eq i32 %conv129, %84
  br i1 %cmp130, label %sw.epilog135, label %if.then132

if.then132:                                       ; preds = %sw.bb126
  %85 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call133 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([70 x i8]* @.str35, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %conv129, i32 %84) #5
  br label %return

sw.epilog135:                                     ; preds = %if.end48, %if.end65, %if.end82, %if.end99, %if.end116, %sw.bb126, %if.end38, %sw.bb125, %sw.bb39
  %type = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0
  %86 = load i32* %type, align 4, !tbaa !3
  switch i32 %86, label %return [
    i32 1, label %if.then138
    i32 2, label %if.then150
  ]

if.then138:                                       ; preds = %sw.epilog135
  %87 = load double** %entries, align 8, !tbaa !0
  %88 = bitcast double* %87 to i8*
  %89 = load i32* %nent, align 4, !tbaa !3
  %conv139 = sext i32 %89 to i64
  %call140 = call i64 @fread(i8* %88, i64 8, i64 %conv139, %struct._IO_FILE* %fp) #5
  %conv141 = trunc i64 %call140 to i32
  %90 = load i32* %nent, align 4, !tbaa !3
  %cmp142 = icmp eq i32 %conv141, %90
  br i1 %cmp142, label %return, label %if.then144

if.then144:                                       ; preds = %if.then138
  %91 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call145 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %91, i8* getelementptr inbounds ([69 x i8]* @.str36, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %conv141, i32 %90) #5
  br label %return

if.then150:                                       ; preds = %sw.epilog135
  %92 = load double** %entries, align 8, !tbaa !0
  %93 = bitcast double* %92 to i8*
  %94 = load i32* %nent, align 4, !tbaa !3
  %mul151 = shl nsw i32 %94, 1
  %conv152 = sext i32 %mul151 to i64
  %call153 = call i64 @fread(i8* %93, i64 8, i64 %conv152, %struct._IO_FILE* %fp) #5
  %conv154 = trunc i64 %call153 to i32
  %95 = load i32* %nent, align 4, !tbaa !3
  %mul155 = shl nsw i32 %95, 1
  %cmp156 = icmp eq i32 %conv154, %mul155
  br i1 %cmp156, label %return, label %if.then158

if.then158:                                       ; preds = %if.then150
  %96 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call160 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %96, i8* getelementptr inbounds ([69 x i8]* @.str36, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %conv154, i32 %mul155) #5
  br label %return

return:                                           ; preds = %if.then150, %if.then138, %sw.epilog135, %if.then158, %if.then144, %if.then132, %if.then122, %if.then114, %if.then105, %if.then97, %if.then88, %if.then80, %if.then71, %if.then63, %if.then54, %if.then46, %if.then36, %if.then28, %sw.default12, %sw.default, %if.then5, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then5 ], [ 0, %sw.default12 ], [ 0, %if.then28 ], [ 0, %if.then36 ], [ 0, %if.then144 ], [ 0, %if.then158 ], [ 0, %if.then132 ], [ 0, %if.then114 ], [ 0, %if.then122 ], [ 0, %if.then97 ], [ 0, %if.then105 ], [ 0, %if.then80 ], [ 0, %if.then88 ], [ 0, %if.then63 ], [ 0, %if.then71 ], [ 0, %if.then46 ], [ 0, %if.then54 ], [ 0, %sw.default ], [ 1, %sw.epilog135 ], [ 1, %if.then138 ], [ 1, %if.then150 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define i32 @SubMtx_readFromFormattedFile(%struct._SubMtx* %mtx, %struct._IO_FILE* %fp) #0 {
entry:
  %entries = alloca double*, align 8
  %inc1 = alloca i32, align 4
  %inc2 = alloca i32, align 4
  %ncol = alloca i32, align 4
  %nent = alloca i32, align 4
  %nrow = alloca i32, align 4
  %itemp = alloca [7 x i32], align 16
  %colids = alloca i32*, align 8
  %colind = alloca i32*, align 8
  %firstlocs = alloca i32*, align 8
  %indices = alloca i32*, align 8
  %pivotsizes = alloca i32*, align 8
  %rowids = alloca i32*, align 8
  %rowind = alloca i32*, align 8
  %sizes = alloca i32*, align 8
  %cmp = icmp eq %struct._SubMtx* %mtx, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([59 x i8]* @.str5, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp) #5
  br label %return

if.end:                                           ; preds = %entry
  call void @SubMtx_clearData(%struct._SubMtx* %mtx) #5
  %arraydecay = getelementptr inbounds [7 x i32]* %itemp, i64 0, i64 0
  %call2 = call i32 @IVfscanf(%struct._IO_FILE* %fp, i32 7, i32* %arraydecay) #5
  %cmp3 = icmp eq i32 %call2, 7
  br i1 %cmp3, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([72 x i8]* @.str6, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %call2, i32 7) #5
  br label %return

if.end6:                                          ; preds = %if.end
  %2 = bitcast [7 x i32]* %itemp to i64*
  %3 = load i64* %2, align 16
  %4 = trunc i64 %3 to i32
  %.off = add i32 %4, -1
  %switch = icmp ult i32 %.off, 2
  %5 = lshr i64 %3, 32
  %6 = trunc i64 %5 to i32
  br i1 %switch, label %sw.epilog, label %sw.default

sw.default:                                       ; preds = %if.end6
  %7 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([73 x i8]* @.str7, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %4) #5
  br label %return

sw.epilog:                                        ; preds = %if.end6
  switch i32 %6, label %sw.default11 [
    i32 0, label %sw.epilog14
    i32 1, label %sw.epilog14
    i32 2, label %sw.epilog14
    i32 3, label %sw.epilog14
    i32 5, label %sw.epilog14
    i32 6, label %sw.epilog14
    i32 7, label %sw.epilog14
    i32 8, label %sw.epilog14
    i32 9, label %sw.epilog14
  ]

sw.default11:                                     ; preds = %sw.epilog
  %8 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([73 x i8]* @.str8, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %6) #5
  br label %return

sw.epilog14:                                      ; preds = %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog
  %arrayidx17 = getelementptr inbounds [7 x i32]* %itemp, i64 0, i64 2
  %9 = bitcast i32* %arrayidx17 to i64*
  %10 = load i64* %9, align 8
  %11 = trunc i64 %10 to i32
  %12 = lshr i64 %10, 32
  %13 = trunc i64 %12 to i32
  %arrayidx19 = getelementptr inbounds [7 x i32]* %itemp, i64 0, i64 4
  %14 = bitcast i32* %arrayidx19 to i64*
  %15 = load i64* %14, align 16
  %16 = trunc i64 %15 to i32
  %17 = lshr i64 %15, 32
  %18 = trunc i64 %17 to i32
  %arrayidx21 = getelementptr inbounds [7 x i32]* %itemp, i64 0, i64 6
  %19 = load i32* %arrayidx21, align 8, !tbaa !3
  call void @SubMtx_init(%struct._SubMtx* %mtx, i32 %4, i32 %6, i32 %11, i32 %13, i32 %16, i32 %18, i32 %19) #5
  call void @SubMtx_rowIndices(%struct._SubMtx* %mtx, i32* %nrow, i32** %rowind) #5
  %20 = load i32* %nrow, align 4, !tbaa !3
  %21 = load i32** %rowind, align 8, !tbaa !0
  %call22 = call i32 @IVfscanf(%struct._IO_FILE* %fp, i32 %20, i32* %21) #5
  %22 = load i32* %nrow, align 4, !tbaa !3
  %cmp23 = icmp eq i32 %call22, %22
  br i1 %cmp23, label %if.end26, label %if.then24

if.then24:                                        ; preds = %sw.epilog14
  %23 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([72 x i8]* @.str9, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %call22, i32 %22) #5
  br label %return

if.end26:                                         ; preds = %sw.epilog14
  call void @SubMtx_columnIndices(%struct._SubMtx* %mtx, i32* %ncol, i32** %colind) #5
  %24 = load i32* %ncol, align 4, !tbaa !3
  %25 = load i32** %colind, align 8, !tbaa !0
  %call27 = call i32 @IVfscanf(%struct._IO_FILE* %fp, i32 %24, i32* %25) #5
  %26 = load i32* %ncol, align 4, !tbaa !3
  %cmp28 = icmp eq i32 %call27, %26
  br i1 %cmp28, label %if.end31, label %if.then29

if.then29:                                        ; preds = %if.end26
  %27 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([72 x i8]* @.str10, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %call27, i32 %26) #5
  br label %return

if.end31:                                         ; preds = %if.end26
  %mode = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 1
  %28 = load i32* %mode, align 4, !tbaa !3
  switch i32 %28, label %sw.epilog95 [
    i32 0, label %sw.bb32
    i32 1, label %sw.bb32
    i32 2, label %sw.bb33
    i32 3, label %sw.bb44
    i32 4, label %sw.bb55
    i32 5, label %sw.bb66
    i32 6, label %sw.bb77
    i32 7, label %sw.bb88
    i32 8, label %sw.bb89
    i32 9, label %sw.bb89
  ]

sw.bb32:                                          ; preds = %if.end31, %if.end31
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtx, i32* %nrow, i32* %ncol, i32* %inc1, i32* %inc2, double** %entries) #5
  %29 = load i32* %nrow, align 4, !tbaa !3
  %30 = load i32* %ncol, align 4, !tbaa !3
  %mul = mul nsw i32 %30, %29
  store i32 %mul, i32* %nent, align 4, !tbaa !3
  br label %sw.epilog95

sw.bb33:                                          ; preds = %if.end31
  call void @SubMtx_sparseRowsInfo(%struct._SubMtx* %mtx, i32* %nrow, i32* %nent, i32** %sizes, i32** %indices, double** %entries) #5
  %31 = load i32* %nrow, align 4, !tbaa !3
  %32 = load i32** %sizes, align 8, !tbaa !0
  %call34 = call i32 @IVfscanf(%struct._IO_FILE* %fp, i32 %31, i32* %32) #5
  %33 = load i32* %nrow, align 4, !tbaa !3
  %cmp35 = icmp eq i32 %call34, %33
  br i1 %cmp35, label %if.end38, label %if.then36

if.then36:                                        ; preds = %sw.bb33
  %34 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([72 x i8]* @.str11, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %call34, i32 %33) #5
  br label %return

if.end38:                                         ; preds = %sw.bb33
  %35 = load i32* %nent, align 4, !tbaa !3
  %36 = load i32** %indices, align 8, !tbaa !0
  %call39 = call i32 @IVfscanf(%struct._IO_FILE* %fp, i32 %35, i32* %36) #5
  %37 = load i32* %nent, align 4, !tbaa !3
  %cmp40 = icmp eq i32 %call39, %37
  br i1 %cmp40, label %sw.epilog95, label %if.then41

if.then41:                                        ; preds = %if.end38
  %38 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call42 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([72 x i8]* @.str12, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %call39, i32 %37) #5
  br label %return

sw.bb44:                                          ; preds = %if.end31
  call void @SubMtx_sparseColumnsInfo(%struct._SubMtx* %mtx, i32* %ncol, i32* %nent, i32** %sizes, i32** %indices, double** %entries) #5
  %39 = load i32* %ncol, align 4, !tbaa !3
  %40 = load i32** %sizes, align 8, !tbaa !0
  %call45 = call i32 @IVfscanf(%struct._IO_FILE* %fp, i32 %39, i32* %40) #5
  %41 = load i32* %ncol, align 4, !tbaa !3
  %cmp46 = icmp eq i32 %call45, %41
  br i1 %cmp46, label %if.end49, label %if.then47

if.then47:                                        ; preds = %sw.bb44
  %42 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call48 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([72 x i8]* @.str13, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %call45, i32 %41) #5
  br label %return

if.end49:                                         ; preds = %sw.bb44
  %43 = load i32* %nent, align 4, !tbaa !3
  %44 = load i32** %indices, align 8, !tbaa !0
  %call50 = call i32 @IVfscanf(%struct._IO_FILE* %fp, i32 %43, i32* %44) #5
  %45 = load i32* %nent, align 4, !tbaa !3
  %cmp51 = icmp eq i32 %call50, %45
  br i1 %cmp51, label %sw.epilog95, label %if.then52

if.then52:                                        ; preds = %if.end49
  %46 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call53 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([72 x i8]* @.str14, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %call50, i32 %45) #5
  br label %return

sw.bb55:                                          ; preds = %if.end31
  call void @SubMtx_sparseTriplesInfo(%struct._SubMtx* %mtx, i32* %nent, i32** %rowids, i32** %colids, double** %entries) #5
  %47 = load i32* %nent, align 4, !tbaa !3
  %48 = load i32** %rowids, align 8, !tbaa !0
  %call56 = call i32 @IVfscanf(%struct._IO_FILE* %fp, i32 %47, i32* %48) #5
  %49 = load i32* %nent, align 4, !tbaa !3
  %cmp57 = icmp eq i32 %call56, %49
  br i1 %cmp57, label %if.end60, label %if.then58

if.then58:                                        ; preds = %sw.bb55
  %50 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call59 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([73 x i8]* @.str15, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %call56, i32 %49) #5
  br label %return

if.end60:                                         ; preds = %sw.bb55
  %51 = load i32** %colids, align 8, !tbaa !0
  %call61 = call i32 @IVfscanf(%struct._IO_FILE* %fp, i32 %call56, i32* %51) #5
  %52 = load i32* %nent, align 4, !tbaa !3
  %cmp62 = icmp eq i32 %call61, %52
  br i1 %cmp62, label %sw.epilog95, label %if.then63

if.then63:                                        ; preds = %if.end60
  %53 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call64 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([73 x i8]* @.str16, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %call61, i32 %52) #5
  br label %return

sw.bb66:                                          ; preds = %if.end31
  call void @SubMtx_denseSubrowsInfo(%struct._SubMtx* %mtx, i32* %nrow, i32* %nent, i32** %firstlocs, i32** %sizes, double** %entries) #5
  %54 = load i32* %nrow, align 4, !tbaa !3
  %55 = load i32** %firstlocs, align 8, !tbaa !0
  %call67 = call i32 @IVfscanf(%struct._IO_FILE* %fp, i32 %54, i32* %55) #5
  %56 = load i32* %nrow, align 4, !tbaa !3
  %cmp68 = icmp eq i32 %call67, %56
  br i1 %cmp68, label %if.end71, label %if.then69

if.then69:                                        ; preds = %sw.bb66
  %57 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call70 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %57, i8* getelementptr inbounds ([73 x i8]* @.str17, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %call67, i32 %56) #5
  br label %return

if.end71:                                         ; preds = %sw.bb66
  %58 = load i32** %sizes, align 8, !tbaa !0
  %call72 = call i32 @IVfscanf(%struct._IO_FILE* %fp, i32 %call67, i32* %58) #5
  %59 = load i32* %nrow, align 4, !tbaa !3
  %cmp73 = icmp eq i32 %call72, %59
  br i1 %cmp73, label %sw.epilog95, label %if.then74

if.then74:                                        ; preds = %if.end71
  %60 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call75 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([73 x i8]* @.str18, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %call72, i32 %59) #5
  br label %return

sw.bb77:                                          ; preds = %if.end31
  call void @SubMtx_denseSubcolumnsInfo(%struct._SubMtx* %mtx, i32* %ncol, i32* %nent, i32** %firstlocs, i32** %sizes, double** %entries) #5
  %61 = load i32* %ncol, align 4, !tbaa !3
  %62 = load i32** %firstlocs, align 8, !tbaa !0
  %call78 = call i32 @IVfscanf(%struct._IO_FILE* %fp, i32 %61, i32* %62) #5
  %63 = load i32* %ncol, align 4, !tbaa !3
  %cmp79 = icmp eq i32 %call78, %63
  br i1 %cmp79, label %if.end82, label %if.then80

if.then80:                                        ; preds = %sw.bb77
  %64 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call81 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %64, i8* getelementptr inbounds ([73 x i8]* @.str17, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %call78, i32 %63) #5
  br label %return

if.end82:                                         ; preds = %sw.bb77
  %65 = load i32** %sizes, align 8, !tbaa !0
  %call83 = call i32 @IVfscanf(%struct._IO_FILE* %fp, i32 %call78, i32* %65) #5
  %66 = load i32* %ncol, align 4, !tbaa !3
  %cmp84 = icmp eq i32 %call83, %66
  br i1 %cmp84, label %sw.epilog95, label %if.then85

if.then85:                                        ; preds = %if.end82
  %67 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call86 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([73 x i8]* @.str18, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %call83, i32 %66) #5
  br label %return

sw.bb88:                                          ; preds = %if.end31
  call void @SubMtx_diagonalInfo(%struct._SubMtx* %mtx, i32* %nent, double** %entries) #5
  br label %sw.epilog95

sw.bb89:                                          ; preds = %if.end31, %if.end31
  call void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %mtx, i32* %nrow, i32* %nent, i32** %pivotsizes, double** %entries) #5
  %68 = load i32* %nrow, align 4, !tbaa !3
  %69 = load i32** %pivotsizes, align 8, !tbaa !0
  %call90 = call i32 @IVfscanf(%struct._IO_FILE* %fp, i32 %68, i32* %69) #5
  %70 = load i32* %nrow, align 4, !tbaa !3
  %cmp91 = icmp eq i32 %call90, %70
  br i1 %cmp91, label %sw.epilog95, label %if.then92

if.then92:                                        ; preds = %sw.bb89
  %71 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call93 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([73 x i8]* @.str19, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %call90, i32 %70) #5
  br label %return

sw.epilog95:                                      ; preds = %if.end38, %if.end49, %if.end60, %if.end71, %if.end82, %sw.bb89, %if.end31, %sw.bb88, %sw.bb32
  %type = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0
  %72 = load i32* %type, align 4, !tbaa !3
  switch i32 %72, label %return [
    i32 1, label %if.then97
    i32 2, label %if.then105
  ]

if.then97:                                        ; preds = %sw.epilog95
  %73 = load i32* %nent, align 4, !tbaa !3
  %74 = load double** %entries, align 8, !tbaa !0
  %call98 = call i32 @DVfscanf(%struct._IO_FILE* %fp, i32 %73, double* %74) #5
  %75 = load i32* %nent, align 4, !tbaa !3
  %cmp99 = icmp eq i32 %call98, %75
  br i1 %cmp99, label %return, label %if.then100

if.then100:                                       ; preds = %if.then97
  %76 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call101 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([72 x i8]* @.str20, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %call98, i32 %75) #5
  br label %return

if.then105:                                       ; preds = %sw.epilog95
  %77 = load i32* %nent, align 4, !tbaa !3
  %mul106 = shl nsw i32 %77, 1
  %78 = load double** %entries, align 8, !tbaa !0
  %call107 = call i32 @DVfscanf(%struct._IO_FILE* %fp, i32 %mul106, double* %78) #5
  %79 = load i32* %nent, align 4, !tbaa !3
  %mul108 = shl nsw i32 %79, 1
  %cmp109 = icmp eq i32 %call107, %mul108
  br i1 %cmp109, label %return, label %if.then110

if.then110:                                       ; preds = %if.then105
  %80 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call112 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %80, i8* getelementptr inbounds ([72 x i8]* @.str20, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %call107, i32 %mul108) #5
  br label %return

return:                                           ; preds = %if.then105, %if.then97, %sw.epilog95, %if.then110, %if.then100, %if.then92, %if.then85, %if.then80, %if.then74, %if.then69, %if.then63, %if.then58, %if.then52, %if.then47, %if.then41, %if.then36, %if.then29, %if.then24, %sw.default11, %sw.default, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ 0, %sw.default11 ], [ 0, %if.then24 ], [ 0, %if.then29 ], [ 0, %if.then100 ], [ 0, %if.then110 ], [ 0, %if.then92 ], [ 0, %if.then80 ], [ 0, %if.then85 ], [ 0, %if.then69 ], [ 0, %if.then74 ], [ 0, %if.then58 ], [ 0, %if.then63 ], [ 0, %if.then47 ], [ 0, %if.then52 ], [ 0, %if.then36 ], [ 0, %if.then41 ], [ 0, %sw.default ], [ 1, %sw.epilog95 ], [ 1, %if.then97 ], [ 1, %if.then105 ]
  ret i32 %retval.0
}

; Function Attrs: optsize
declare void @SubMtx_clearData(%struct._SubMtx*) #3

; Function Attrs: optsize
declare i32 @IVfscanf(%struct._IO_FILE*, i32, i32*) #3

; Function Attrs: optsize
declare void @SubMtx_init(%struct._SubMtx*, i32, i32, i32, i32, i32, i32, i32) #3

; Function Attrs: optsize
declare void @SubMtx_rowIndices(%struct._SubMtx*, i32*, i32**) #3

; Function Attrs: optsize
declare void @SubMtx_columnIndices(%struct._SubMtx*, i32*, i32**) #3

; Function Attrs: optsize
declare void @SubMtx_denseInfo(%struct._SubMtx*, i32*, i32*, i32*, i32*, double**) #3

; Function Attrs: optsize
declare void @SubMtx_sparseRowsInfo(%struct._SubMtx*, i32*, i32*, i32**, i32**, double**) #3

; Function Attrs: optsize
declare void @SubMtx_sparseColumnsInfo(%struct._SubMtx*, i32*, i32*, i32**, i32**, double**) #3

; Function Attrs: optsize
declare void @SubMtx_sparseTriplesInfo(%struct._SubMtx*, i32*, i32**, i32**, double**) #3

; Function Attrs: optsize
declare void @SubMtx_denseSubrowsInfo(%struct._SubMtx*, i32*, i32*, i32**, i32**, double**) #3

; Function Attrs: optsize
declare void @SubMtx_denseSubcolumnsInfo(%struct._SubMtx*, i32*, i32*, i32**, i32**, double**) #3

; Function Attrs: optsize
declare void @SubMtx_diagonalInfo(%struct._SubMtx*, i32*, double**) #3

; Function Attrs: optsize
declare void @SubMtx_blockDiagonalInfo(%struct._SubMtx*, i32*, i32*, i32**, double**) #3

; Function Attrs: optsize
declare i32 @DVfscanf(%struct._IO_FILE*, i32, double*) #3

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define i32 @SubMtx_writeToFile(%struct._SubMtx* %mtx, i8* %fn) #0 {
entry:
  %cmp = icmp eq %struct._SubMtx* %mtx, null
  %cmp1 = icmp eq i8* %fn, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([55 x i8]* @.str37, i64 0, i64 0), %struct._SubMtx* %mtx, i8* %fn) #5
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %call2 = tail call i64 @strlen(i8* %fn) #6
  %conv = trunc i64 %call2 to i32
  %cmp5 = icmp sgt i32 %conv, 8
  br i1 %cmp5, label %if.then7, label %if.else49

if.then7:                                         ; preds = %if.end
  %sub = shl i64 %call2, 32
  %sext = add i64 %sub, -34359738368
  %idxprom = ashr exact i64 %sext, 32
  %arrayidx = getelementptr inbounds i8* %fn, i64 %idxprom
  %call8 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([9 x i8]* @.str68, i64 0, i64 0)) #6
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then11, label %if.else20

if.then11:                                        ; preds = %if.then7
  %call12 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([3 x i8]* @.str38, i64 0, i64 0)) #5
  %cmp13 = icmp eq %struct._IO_FILE* %call12, null
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.then11
  %1 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([61 x i8]* @.str39, i64 0, i64 0), %struct._SubMtx* %mtx, i8* %fn, i8* %fn) #5
  br label %if.end59

if.else:                                          ; preds = %if.then11
  %call17 = tail call i32 @SubMtx_writeToBinaryFile(%struct._SubMtx* %mtx, %struct._IO_FILE* %call12) #7
  %call18 = tail call i32 @fclose(%struct._IO_FILE* %call12) #5
  br label %if.end59

if.else20:                                        ; preds = %if.then7
  %call24 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([9 x i8]* @.str67, i64 0, i64 0)) #6
  %cmp25 = icmp eq i32 %call24, 0
  br i1 %cmp25, label %if.then27, label %if.else37

if.then27:                                        ; preds = %if.else20
  %call28 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str40, i64 0, i64 0)) #5
  %cmp29 = icmp eq %struct._IO_FILE* %call28, null
  br i1 %cmp29, label %if.then31, label %if.else33

if.then31:                                        ; preds = %if.then27
  %2 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call32 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([61 x i8]* @.str39, i64 0, i64 0), %struct._SubMtx* %mtx, i8* %fn, i8* %fn) #5
  br label %if.end59

if.else33:                                        ; preds = %if.then27
  %call34 = tail call i32 @SubMtx_writeToFormattedFile(%struct._SubMtx* %mtx, %struct._IO_FILE* %call28) #7
  %call35 = tail call i32 @fclose(%struct._IO_FILE* %call28) #5
  br label %if.end59

if.else37:                                        ; preds = %if.else20
  %call38 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str41, i64 0, i64 0)) #5
  %cmp39 = icmp eq %struct._IO_FILE* %call38, null
  br i1 %cmp39, label %if.then41, label %if.else43

if.then41:                                        ; preds = %if.else37
  %3 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call42 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([61 x i8]* @.str39, i64 0, i64 0), %struct._SubMtx* %mtx, i8* %fn, i8* %fn) #5
  br label %if.end59

if.else43:                                        ; preds = %if.else37
  %call44 = tail call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %mtx, %struct._IO_FILE* %call38) #7
  %call45 = tail call i32 @fclose(%struct._IO_FILE* %call38) #5
  br label %if.end59

if.else49:                                        ; preds = %if.end
  %call50 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str41, i64 0, i64 0)) #5
  %cmp51 = icmp eq %struct._IO_FILE* %call50, null
  br i1 %cmp51, label %if.then53, label %if.else55

if.then53:                                        ; preds = %if.else49
  %4 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call54 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([61 x i8]* @.str39, i64 0, i64 0), %struct._SubMtx* %mtx, i8* %fn, i8* %fn) #5
  br label %if.end59

if.else55:                                        ; preds = %if.else49
  %call56 = tail call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %mtx, %struct._IO_FILE* %call50) #7
  %call57 = tail call i32 @fclose(%struct._IO_FILE* %call50) #5
  br label %if.end59

if.end59:                                         ; preds = %if.then53, %if.else55, %if.else, %if.then15, %if.then41, %if.else43, %if.then31, %if.else33
  %rc.0 = phi i32 [ 0, %if.then15 ], [ 1, %if.else ], [ 0, %if.then31 ], [ 1, %if.else33 ], [ 0, %if.then41 ], [ 1, %if.else43 ], [ 0, %if.then53 ], [ 1, %if.else55 ]
  ret i32 %rc.0
}

; Function Attrs: nounwind optsize uwtable
define i32 @SubMtx_writeToBinaryFile(%struct._SubMtx* %mtx, %struct._IO_FILE* %fp) #0 {
entry:
  %entries = alloca double*, align 8
  %inc1 = alloca i32, align 4
  %inc2 = alloca i32, align 4
  %ncol = alloca i32, align 4
  %nent = alloca i32, align 4
  %nrow = alloca i32, align 4
  %itemp = alloca [7 x i32], align 16
  %colids = alloca i32*, align 8
  %colind = alloca i32*, align 8
  %firstlocs = alloca i32*, align 8
  %indices = alloca i32*, align 8
  %pivotsizes = alloca i32*, align 8
  %rowids = alloca i32*, align 8
  %rowind = alloca i32*, align 8
  %sizes = alloca i32*, align 8
  %cmp = icmp eq %struct._SubMtx* %mtx, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([61 x i8]* @.str43, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp) #5
  call void @exit(i32 -1) #8
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0
  %1 = load i32* %type, align 4, !tbaa !3
  %arrayidx = getelementptr inbounds [7 x i32]* %itemp, i64 0, i64 0
  store i32 %1, i32* %arrayidx, align 16, !tbaa !3
  %mode = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 1
  %2 = load i32* %mode, align 4, !tbaa !3
  %arrayidx2 = getelementptr inbounds [7 x i32]* %itemp, i64 0, i64 1
  store i32 %2, i32* %arrayidx2, align 4, !tbaa !3
  %rowid = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 2
  %3 = load i32* %rowid, align 4, !tbaa !3
  %arrayidx3 = getelementptr inbounds [7 x i32]* %itemp, i64 0, i64 2
  store i32 %3, i32* %arrayidx3, align 8, !tbaa !3
  %colid = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 3
  %4 = load i32* %colid, align 4, !tbaa !3
  %arrayidx4 = getelementptr inbounds [7 x i32]* %itemp, i64 0, i64 3
  store i32 %4, i32* %arrayidx4, align 4, !tbaa !3
  %nrow5 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 4
  %5 = load i32* %nrow5, align 4, !tbaa !3
  %arrayidx6 = getelementptr inbounds [7 x i32]* %itemp, i64 0, i64 4
  store i32 %5, i32* %arrayidx6, align 16, !tbaa !3
  %ncol7 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 5
  %6 = load i32* %ncol7, align 4, !tbaa !3
  %arrayidx8 = getelementptr inbounds [7 x i32]* %itemp, i64 0, i64 5
  store i32 %6, i32* %arrayidx8, align 4, !tbaa !3
  %nent9 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 6
  %7 = load i32* %nent9, align 4, !tbaa !3
  %arrayidx10 = getelementptr inbounds [7 x i32]* %itemp, i64 0, i64 6
  store i32 %7, i32* %arrayidx10, align 8, !tbaa !3
  %8 = bitcast [7 x i32]* %itemp to i8*
  %call11 = call i64 @fwrite(i8* %8, i64 4, i64 7, %struct._IO_FILE* %fp) #5
  call void @SubMtx_rowIndices(%struct._SubMtx* %mtx, i32* %nrow, i32** %rowind) #5
  %9 = load i32** %rowind, align 8, !tbaa !0
  %10 = bitcast i32* %9 to i8*
  %11 = load i32* %nrow, align 4, !tbaa !3
  %conv12 = sext i32 %11 to i64
  %call13 = call i64 @fwrite(i8* %10, i64 4, i64 %conv12, %struct._IO_FILE* %fp) #5
  call void @SubMtx_columnIndices(%struct._SubMtx* %mtx, i32* %ncol, i32** %colind) #5
  %12 = load i32** %colind, align 8, !tbaa !0
  %13 = bitcast i32* %12 to i8*
  %14 = load i32* %ncol, align 4, !tbaa !3
  %conv15 = sext i32 %14 to i64
  %call16 = call i64 @fwrite(i8* %13, i64 4, i64 %conv15, %struct._IO_FILE* %fp) #5
  %15 = load i32* %mode, align 4, !tbaa !3
  switch i32 %15, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb19
    i32 3, label %sw.bb26
    i32 4, label %sw.bb33
    i32 5, label %sw.bb40
    i32 6, label %sw.bb47
    i32 7, label %sw.bb54
    i32 8, label %sw.bb55
    i32 9, label %sw.bb55
  ]

sw.bb:                                            ; preds = %if.end, %if.end
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtx, i32* %nrow, i32* %ncol, i32* %inc1, i32* %inc2, double** %entries) #5
  %16 = load i32* %nrow, align 4, !tbaa !3
  %17 = load i32* %ncol, align 4, !tbaa !3
  %mul = mul nsw i32 %17, %16
  store i32 %mul, i32* %nent, align 4, !tbaa !3
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end
  call void @SubMtx_sparseRowsInfo(%struct._SubMtx* %mtx, i32* %nrow, i32* %nent, i32** %sizes, i32** %indices, double** %entries) #5
  %18 = load i32** %sizes, align 8, !tbaa !0
  %19 = bitcast i32* %18 to i8*
  %20 = load i32* %nrow, align 4, !tbaa !3
  %conv20 = sext i32 %20 to i64
  %call21 = call i64 @fwrite(i8* %19, i64 4, i64 %conv20, %struct._IO_FILE* %fp) #5
  %21 = load i32** %indices, align 8, !tbaa !0
  %22 = bitcast i32* %21 to i8*
  %23 = load i32* %nent, align 4, !tbaa !3
  %conv23 = sext i32 %23 to i64
  %call24 = call i64 @fwrite(i8* %22, i64 4, i64 %conv23, %struct._IO_FILE* %fp) #5
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end
  call void @SubMtx_sparseColumnsInfo(%struct._SubMtx* %mtx, i32* %ncol, i32* %nent, i32** %sizes, i32** %indices, double** %entries) #5
  %24 = load i32** %sizes, align 8, !tbaa !0
  %25 = bitcast i32* %24 to i8*
  %26 = load i32* %ncol, align 4, !tbaa !3
  %conv27 = sext i32 %26 to i64
  %call28 = call i64 @fwrite(i8* %25, i64 4, i64 %conv27, %struct._IO_FILE* %fp) #5
  %27 = load i32** %indices, align 8, !tbaa !0
  %28 = bitcast i32* %27 to i8*
  %29 = load i32* %nent, align 4, !tbaa !3
  %conv30 = sext i32 %29 to i64
  %call31 = call i64 @fwrite(i8* %28, i64 4, i64 %conv30, %struct._IO_FILE* %fp) #5
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end
  call void @SubMtx_sparseTriplesInfo(%struct._SubMtx* %mtx, i32* %nent, i32** %rowids, i32** %colids, double** %entries) #5
  %30 = load i32** %rowids, align 8, !tbaa !0
  %31 = bitcast i32* %30 to i8*
  %32 = load i32* %nent, align 4, !tbaa !3
  %conv34 = sext i32 %32 to i64
  %call35 = call i64 @fwrite(i8* %31, i64 4, i64 %conv34, %struct._IO_FILE* %fp) #5
  %33 = load i32** %colids, align 8, !tbaa !0
  %34 = bitcast i32* %33 to i8*
  %35 = load i32* %nent, align 4, !tbaa !3
  %conv37 = sext i32 %35 to i64
  %call38 = call i64 @fwrite(i8* %34, i64 4, i64 %conv37, %struct._IO_FILE* %fp) #5
  br label %sw.epilog

sw.bb40:                                          ; preds = %if.end
  call void @SubMtx_denseSubrowsInfo(%struct._SubMtx* %mtx, i32* %nrow, i32* %nent, i32** %firstlocs, i32** %sizes, double** %entries) #5
  %36 = load i32** %firstlocs, align 8, !tbaa !0
  %37 = bitcast i32* %36 to i8*
  %38 = load i32* %nrow, align 4, !tbaa !3
  %conv41 = sext i32 %38 to i64
  %call42 = call i64 @fwrite(i8* %37, i64 4, i64 %conv41, %struct._IO_FILE* %fp) #5
  %39 = load i32** %sizes, align 8, !tbaa !0
  %40 = bitcast i32* %39 to i8*
  %41 = load i32* %nrow, align 4, !tbaa !3
  %conv44 = sext i32 %41 to i64
  %call45 = call i64 @fwrite(i8* %40, i64 4, i64 %conv44, %struct._IO_FILE* %fp) #5
  br label %sw.epilog

sw.bb47:                                          ; preds = %if.end
  call void @SubMtx_denseSubcolumnsInfo(%struct._SubMtx* %mtx, i32* %ncol, i32* %nent, i32** %firstlocs, i32** %sizes, double** %entries) #5
  %42 = load i32** %firstlocs, align 8, !tbaa !0
  %43 = bitcast i32* %42 to i8*
  %44 = load i32* %ncol, align 4, !tbaa !3
  %conv48 = sext i32 %44 to i64
  %call49 = call i64 @fwrite(i8* %43, i64 4, i64 %conv48, %struct._IO_FILE* %fp) #5
  %45 = load i32** %sizes, align 8, !tbaa !0
  %46 = bitcast i32* %45 to i8*
  %47 = load i32* %ncol, align 4, !tbaa !3
  %conv51 = sext i32 %47 to i64
  %call52 = call i64 @fwrite(i8* %46, i64 4, i64 %conv51, %struct._IO_FILE* %fp) #5
  br label %sw.epilog

sw.bb54:                                          ; preds = %if.end
  call void @SubMtx_diagonalInfo(%struct._SubMtx* %mtx, i32* %nent, double** %entries) #5
  br label %sw.epilog

sw.bb55:                                          ; preds = %if.end, %if.end
  call void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %mtx, i32* %nrow, i32* %nent, i32** %pivotsizes, double** %entries) #5
  %48 = load i32** %pivotsizes, align 8, !tbaa !0
  %49 = bitcast i32* %48 to i8*
  %50 = load i32* %nrow, align 4, !tbaa !3
  %conv56 = sext i32 %50 to i64
  %call57 = call i64 @fwrite(i8* %49, i64 4, i64 %conv56, %struct._IO_FILE* %fp) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb55, %sw.bb54, %sw.bb47, %sw.bb40, %sw.bb33, %sw.bb26, %sw.bb19, %sw.bb
  %51 = load i32* %type, align 4, !tbaa !3
  switch i32 %51, label %if.end75 [
    i32 1, label %if.then62
    i32 2, label %if.then69
  ]

if.then62:                                        ; preds = %sw.epilog
  %52 = load double** %entries, align 8, !tbaa !0
  %53 = bitcast double* %52 to i8*
  %54 = load i32* %nent, align 4, !tbaa !3
  %conv63 = sext i32 %54 to i64
  %call64 = call i64 @fwrite(i8* %53, i64 8, i64 %conv63, %struct._IO_FILE* %fp) #5
  br label %if.end75

if.then69:                                        ; preds = %sw.epilog
  %55 = load double** %entries, align 8, !tbaa !0
  %56 = bitcast double* %55 to i8*
  %57 = load i32* %nent, align 4, !tbaa !3
  %mul70 = shl nsw i32 %57, 1
  %conv71 = sext i32 %mul70 to i64
  %call72 = call i64 @fwrite(i8* %56, i64 8, i64 %conv71, %struct._IO_FILE* %fp) #5
  br label %if.end75

if.end75:                                         ; preds = %sw.epilog, %if.then69, %if.then62
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define i32 @SubMtx_writeToFormattedFile(%struct._SubMtx* %mtx, %struct._IO_FILE* %fp) #0 {
entry:
  %entries = alloca double*, align 8
  %inc1 = alloca i32, align 4
  %inc2 = alloca i32, align 4
  %ncol = alloca i32, align 4
  %nent = alloca i32, align 4
  %nrow = alloca i32, align 4
  %itemp = alloca [7 x i32], align 16
  %colids = alloca i32*, align 8
  %colind = alloca i32*, align 8
  %firstlocs = alloca i32*, align 8
  %indices = alloca i32*, align 8
  %pivotsizes = alloca i32*, align 8
  %rowids = alloca i32*, align 8
  %rowind = alloca i32*, align 8
  %sizes = alloca i32*, align 8
  %cmp = icmp eq %struct._SubMtx* %mtx, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([64 x i8]* @.str42, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp) #5
  call void @exit(i32 -1) #8
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0
  %1 = load i32* %type, align 4, !tbaa !3
  %arrayidx = getelementptr inbounds [7 x i32]* %itemp, i64 0, i64 0
  store i32 %1, i32* %arrayidx, align 16, !tbaa !3
  %mode = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 1
  %2 = load i32* %mode, align 4, !tbaa !3
  %arrayidx2 = getelementptr inbounds [7 x i32]* %itemp, i64 0, i64 1
  store i32 %2, i32* %arrayidx2, align 4, !tbaa !3
  %rowid = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 2
  %3 = load i32* %rowid, align 4, !tbaa !3
  %arrayidx3 = getelementptr inbounds [7 x i32]* %itemp, i64 0, i64 2
  store i32 %3, i32* %arrayidx3, align 8, !tbaa !3
  %colid = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 3
  %4 = load i32* %colid, align 4, !tbaa !3
  %arrayidx4 = getelementptr inbounds [7 x i32]* %itemp, i64 0, i64 3
  store i32 %4, i32* %arrayidx4, align 4, !tbaa !3
  %nrow5 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 4
  %5 = load i32* %nrow5, align 4, !tbaa !3
  %arrayidx6 = getelementptr inbounds [7 x i32]* %itemp, i64 0, i64 4
  store i32 %5, i32* %arrayidx6, align 16, !tbaa !3
  %ncol7 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 5
  %6 = load i32* %ncol7, align 4, !tbaa !3
  %arrayidx8 = getelementptr inbounds [7 x i32]* %itemp, i64 0, i64 5
  store i32 %6, i32* %arrayidx8, align 4, !tbaa !3
  %nent9 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 6
  %7 = load i32* %nent9, align 4, !tbaa !3
  %arrayidx10 = getelementptr inbounds [7 x i32]* %itemp, i64 0, i64 6
  store i32 %7, i32* %arrayidx10, align 8, !tbaa !3
  call void @IVfprintf(%struct._IO_FILE* %fp, i32 7, i32* %arrayidx) #5
  call void @SubMtx_rowIndices(%struct._SubMtx* %mtx, i32* %nrow, i32** %rowind) #5
  %8 = load i32* %nrow, align 4, !tbaa !3
  %9 = load i32** %rowind, align 8, !tbaa !0
  call void @IVfprintf(%struct._IO_FILE* %fp, i32 %8, i32* %9) #5
  call void @SubMtx_columnIndices(%struct._SubMtx* %mtx, i32* %ncol, i32** %colind) #5
  %10 = load i32* %ncol, align 4, !tbaa !3
  %11 = load i32** %colind, align 8, !tbaa !0
  call void @IVfprintf(%struct._IO_FILE* %fp, i32 %10, i32* %11) #5
  %12 = load i32* %mode, align 4, !tbaa !3
  switch i32 %12, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb12
    i32 3, label %sw.bb13
    i32 4, label %sw.bb14
    i32 5, label %sw.bb15
    i32 6, label %sw.bb16
    i32 7, label %sw.bb17
    i32 8, label %sw.bb18
    i32 9, label %sw.bb18
  ]

sw.bb:                                            ; preds = %if.end, %if.end
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtx, i32* %nrow, i32* %ncol, i32* %inc1, i32* %inc2, double** %entries) #5
  %13 = load i32* %nrow, align 4, !tbaa !3
  %14 = load i32* %ncol, align 4, !tbaa !3
  %mul = mul nsw i32 %14, %13
  store i32 %mul, i32* %nent, align 4, !tbaa !3
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end
  call void @SubMtx_sparseRowsInfo(%struct._SubMtx* %mtx, i32* %nrow, i32* %nent, i32** %sizes, i32** %indices, double** %entries) #5
  %15 = load i32* %nrow, align 4, !tbaa !3
  %16 = load i32** %sizes, align 8, !tbaa !0
  call void @IVfprintf(%struct._IO_FILE* %fp, i32 %15, i32* %16) #5
  %17 = load i32* %nent, align 4, !tbaa !3
  %18 = load i32** %indices, align 8, !tbaa !0
  call void @IVfprintf(%struct._IO_FILE* %fp, i32 %17, i32* %18) #5
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end
  call void @SubMtx_sparseColumnsInfo(%struct._SubMtx* %mtx, i32* %ncol, i32* %nent, i32** %sizes, i32** %indices, double** %entries) #5
  %19 = load i32* %ncol, align 4, !tbaa !3
  %20 = load i32** %sizes, align 8, !tbaa !0
  call void @IVfprintf(%struct._IO_FILE* %fp, i32 %19, i32* %20) #5
  %21 = load i32* %nent, align 4, !tbaa !3
  %22 = load i32** %indices, align 8, !tbaa !0
  call void @IVfprintf(%struct._IO_FILE* %fp, i32 %21, i32* %22) #5
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end
  call void @SubMtx_sparseTriplesInfo(%struct._SubMtx* %mtx, i32* %nent, i32** %rowids, i32** %colids, double** %entries) #5
  %23 = load i32* %nent, align 4, !tbaa !3
  %24 = load i32** %rowids, align 8, !tbaa !0
  call void @IVfprintf(%struct._IO_FILE* %fp, i32 %23, i32* %24) #5
  %25 = load i32* %nent, align 4, !tbaa !3
  %26 = load i32** %colids, align 8, !tbaa !0
  call void @IVfprintf(%struct._IO_FILE* %fp, i32 %25, i32* %26) #5
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end
  call void @SubMtx_denseSubrowsInfo(%struct._SubMtx* %mtx, i32* %nrow, i32* %nent, i32** %firstlocs, i32** %sizes, double** %entries) #5
  %27 = load i32* %nrow, align 4, !tbaa !3
  %28 = load i32** %firstlocs, align 8, !tbaa !0
  call void @IVfprintf(%struct._IO_FILE* %fp, i32 %27, i32* %28) #5
  %29 = load i32* %nrow, align 4, !tbaa !3
  %30 = load i32** %sizes, align 8, !tbaa !0
  call void @IVfprintf(%struct._IO_FILE* %fp, i32 %29, i32* %30) #5
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end
  call void @SubMtx_denseSubcolumnsInfo(%struct._SubMtx* %mtx, i32* %ncol, i32* %nent, i32** %firstlocs, i32** %sizes, double** %entries) #5
  %31 = load i32* %ncol, align 4, !tbaa !3
  %32 = load i32** %firstlocs, align 8, !tbaa !0
  call void @IVfprintf(%struct._IO_FILE* %fp, i32 %31, i32* %32) #5
  %33 = load i32* %ncol, align 4, !tbaa !3
  %34 = load i32** %sizes, align 8, !tbaa !0
  call void @IVfprintf(%struct._IO_FILE* %fp, i32 %33, i32* %34) #5
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end
  call void @SubMtx_diagonalInfo(%struct._SubMtx* %mtx, i32* %nent, double** %entries) #5
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end, %if.end
  call void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %mtx, i32* %nrow, i32* %nent, i32** %pivotsizes, double** %entries) #5
  %35 = load i32* %nrow, align 4, !tbaa !3
  %36 = load i32** %pivotsizes, align 8, !tbaa !0
  call void @IVfprintf(%struct._IO_FILE* %fp, i32 %35, i32* %36) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb
  %37 = load i32* %type, align 4, !tbaa !3
  switch i32 %37, label %if.end27 [
    i32 1, label %if.then21
    i32 2, label %if.then24
  ]

if.then21:                                        ; preds = %sw.epilog
  %38 = load i32* %nent, align 4, !tbaa !3
  %39 = load double** %entries, align 8, !tbaa !0
  call void @DVfprintf(%struct._IO_FILE* %fp, i32 %38, double* %39) #5
  br label %if.end27

if.then24:                                        ; preds = %sw.epilog
  %40 = load i32* %nent, align 4, !tbaa !3
  %mul25 = shl nsw i32 %40, 1
  %41 = load double** %entries, align 8, !tbaa !0
  call void @DVfprintf(%struct._IO_FILE* %fp, i32 %mul25, double* %41) #5
  br label %if.end27

if.end27:                                         ; preds = %sw.epilog, %if.then24, %if.then21
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %mtx, %struct._IO_FILE* %fp) #0 {
entry:
  %a2 = alloca %struct._A2, align 8
  %imag = alloca double, align 8
  %real = alloca double, align 8
  %ierr = alloca i32, align 4
  %ncol = alloca i32, align 4
  %nrow = alloca i32, align 4
  %colind = alloca i32*, align 8
  %rowind = alloca i32*, align 8
  %cmp = icmp eq %struct._SubMtx* %mtx, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([60 x i8]* @.str44, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp) #5
  call void @exit(i32 -1) #8
  unreachable

if.end:                                           ; preds = %entry
  %call2 = call i32 @SubMtx_writeStats(%struct._SubMtx* %mtx, %struct._IO_FILE* %fp) #7
  call void @SubMtx_rowIndices(%struct._SubMtx* %mtx, i32* %nrow, i32** %rowind) #5
  %1 = call i64 @fwrite(i8* getelementptr inbounds ([12 x i8]* @.str45, i64 0, i64 0), i64 11, i64 1, %struct._IO_FILE* %fp) #9
  %2 = load i32* %nrow, align 4, !tbaa !3
  %3 = load i32** %rowind, align 8, !tbaa !0
  %call4 = call i32 @IVfp80(%struct._IO_FILE* %fp, i32 %2, i32* %3, i32 80, i32* %ierr) #5
  call void @SubMtx_columnIndices(%struct._SubMtx* %mtx, i32* %ncol, i32** %colind) #5
  %4 = call i64 @fwrite(i8* getelementptr inbounds ([12 x i8]* @.str46, i64 0, i64 0), i64 11, i64 1, %struct._IO_FILE* %fp) #9
  %5 = load i32* %ncol, align 4, !tbaa !3
  %6 = load i32** %colind, align 8, !tbaa !0
  %call6 = call i32 @IVfp80(%struct._IO_FILE* %fp, i32 %5, i32* %6, i32 80, i32* %ierr) #5
  call void @A2_setDefaultFields(%struct._A2* %a2) #5
  %type = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0
  %7 = load i32* %type, align 4, !tbaa !3
  %8 = load i32* %nrow, align 4, !tbaa !3
  %9 = load i32* %ncol, align 4, !tbaa !3
  call void @A2_init(%struct._A2* %a2, i32 %7, i32 %8, i32 %9, i32 1, i32 %8, double* null) #5
  call void @A2_zero(%struct._A2* %a2) #5
  %10 = load i32* %nrow, align 4, !tbaa !3
  %cmp751 = icmp sgt i32 %10, 0
  br i1 %cmp751, label %for.cond8.preheader.lr.ph, label %for.end23

for.cond8.preheader.lr.ph:                        ; preds = %if.end
  %.pre = load i32* %ncol, align 4, !tbaa !3
  br label %for.cond8.preheader

for.cond8.preheader:                              ; preds = %for.cond8.preheader.lr.ph, %for.inc21
  %11 = phi i32 [ %10, %for.cond8.preheader.lr.ph ], [ %18, %for.inc21 ]
  %12 = phi i32 [ %.pre, %for.cond8.preheader.lr.ph ], [ %19, %for.inc21 ]
  %irow.052 = phi i32 [ 0, %for.cond8.preheader.lr.ph ], [ %inc22, %for.inc21 ]
  %cmp949 = icmp sgt i32 %12, 0
  br i1 %cmp949, label %for.body10, label %for.inc21

for.body10:                                       ; preds = %for.inc, %for.cond8.preheader
  %jcol.050 = phi i32 [ 0, %for.cond8.preheader ], [ %inc, %for.inc ]
  %13 = load i32* %type, align 4, !tbaa !3
  switch i32 %13, label %for.inc [
    i32 1, label %if.then13
    i32 2, label %if.then17
  ]

if.then13:                                        ; preds = %for.body10
  %call14 = call i32 @SubMtx_realEntry(%struct._SubMtx* %mtx, i32 %irow.052, i32 %jcol.050, double* %real) #5
  %14 = load double* %real, align 8, !tbaa !4
  call void @A2_setRealEntry(%struct._A2* %a2, i32 %irow.052, i32 %jcol.050, double %14) #5
  br label %for.inc

if.then17:                                        ; preds = %for.body10
  %call18 = call i32 @SubMtx_complexEntry(%struct._SubMtx* %mtx, i32 %irow.052, i32 %jcol.050, double* %real, double* %imag) #5
  %15 = load double* %real, align 8, !tbaa !4
  %16 = load double* %imag, align 8, !tbaa !4
  call void @A2_setComplexEntry(%struct._A2* %a2, i32 %irow.052, i32 %jcol.050, double %15, double %16) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body10, %if.then13, %if.then17
  %inc = add nsw i32 %jcol.050, 1
  %17 = load i32* %ncol, align 4, !tbaa !3
  %cmp9 = icmp slt i32 %inc, %17
  br i1 %cmp9, label %for.body10, label %for.cond8.for.inc21_crit_edge

for.cond8.for.inc21_crit_edge:                    ; preds = %for.inc
  %.pre53 = load i32* %nrow, align 4, !tbaa !3
  br label %for.inc21

for.inc21:                                        ; preds = %for.cond8.preheader, %for.cond8.for.inc21_crit_edge
  %18 = phi i32 [ %.pre53, %for.cond8.for.inc21_crit_edge ], [ %11, %for.cond8.preheader ]
  %19 = phi i32 [ %17, %for.cond8.for.inc21_crit_edge ], [ %12, %for.cond8.preheader ]
  %inc22 = add nsw i32 %irow.052, 1
  %cmp7 = icmp slt i32 %inc22, %18
  br i1 %cmp7, label %for.cond8.preheader, label %for.end23

for.end23:                                        ; preds = %for.inc21, %if.end
  call void @A2_writeForHumanEye(%struct._A2* %a2, %struct._IO_FILE* %fp) #5
  call void @A2_clearData(%struct._A2* %a2) #5
  ret i32 1
}

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #4

; Function Attrs: optsize
declare void @IVfprintf(%struct._IO_FILE*, i32, i32*) #3

; Function Attrs: optsize
declare void @DVfprintf(%struct._IO_FILE*, i32, double*) #3

; Function Attrs: nounwind optsize
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind optsize uwtable
define i32 @SubMtx_writeStats(%struct._SubMtx* %mtx, %struct._IO_FILE* %fp) #0 {
entry:
  %cmp = icmp eq %struct._SubMtx* %mtx, null
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([54 x i8]* @.str47, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp) #5
  tail call void @exit(i32 -1) #8
  unreachable

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0
  %1 = load i32* %type, align 4, !tbaa !3
  %rowid = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 2
  %2 = load i32* %rowid, align 4, !tbaa !3
  %colid = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 3
  %3 = load i32* %colid, align 4, !tbaa !3
  %nrow = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 4
  %4 = load i32* %nrow, align 4, !tbaa !3
  %ncol = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 5
  %5 = load i32* %ncol, align 4, !tbaa !3
  %nent = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 6
  %6 = load i32* %nent, align 4, !tbaa !3
  %call2 = tail call i32 @SubMtx_nbytesInWorkspace(%struct._SubMtx* %mtx) #5
  %call3 = tail call i32 @SubMtx_nbytesInUse(%struct._SubMtx* %mtx) #5
  %call4 = tail call i8* @SubMtx_workspace(%struct._SubMtx* %mtx) #5
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([155 x i8]* @.str48, i64 0, i64 0), i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %call2, i32 %call3, i8* %call4) #5
  %7 = load i32* %type, align 4, !tbaa !3
  switch i32 %7, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb8
  ]

sw.bb:                                            ; preds = %if.end
  %8 = tail call i64 @fwrite(i8* getelementptr inbounds ([29 x i8]* @.str49, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %fp) #9
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  %9 = tail call i64 @fwrite(i8* getelementptr inbounds ([32 x i8]* @.str50, i64 0, i64 0), i64 31, i64 1, %struct._IO_FILE* %fp) #9
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %10 = tail call i64 @fwrite(i8* getelementptr inbounds ([32 x i8]* @.str51, i64 0, i64 0), i64 31, i64 1, %struct._IO_FILE* %fp) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb8, %sw.bb
  %mode = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 1
  %11 = load i32* %mode, align 4, !tbaa !3
  switch i32 %11, label %sw.default31 [
    i32 0, label %sw.bb11
    i32 1, label %sw.bb13
    i32 2, label %sw.bb15
    i32 3, label %sw.bb17
    i32 4, label %sw.bb19
    i32 5, label %sw.bb21
    i32 6, label %sw.bb23
    i32 7, label %sw.bb25
    i32 8, label %sw.bb27
    i32 9, label %sw.bb29
  ]

sw.bb11:                                          ; preds = %sw.epilog
  %12 = tail call i64 @fwrite(i8* getelementptr inbounds ([39 x i8]* @.str52, i64 0, i64 0), i64 38, i64 1, %struct._IO_FILE* %fp) #9
  br label %sw.epilog33

sw.bb13:                                          ; preds = %sw.epilog
  %13 = tail call i64 @fwrite(i8* getelementptr inbounds ([42 x i8]* @.str53, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %fp) #9
  br label %sw.epilog33

sw.bb15:                                          ; preds = %sw.epilog
  %14 = tail call i64 @fwrite(i8* getelementptr inbounds ([40 x i8]* @.str54, i64 0, i64 0), i64 39, i64 1, %struct._IO_FILE* %fp) #9
  br label %sw.epilog33

sw.bb17:                                          ; preds = %sw.epilog
  %15 = tail call i64 @fwrite(i8* getelementptr inbounds ([43 x i8]* @.str55, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %fp) #9
  br label %sw.epilog33

sw.bb19:                                          ; preds = %sw.epilog
  %16 = tail call i64 @fwrite(i8* getelementptr inbounds ([43 x i8]* @.str56, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %fp) #9
  br label %sw.epilog33

sw.bb21:                                          ; preds = %sw.epilog
  %17 = tail call i64 @fwrite(i8* getelementptr inbounds ([49 x i8]* @.str57, i64 0, i64 0), i64 48, i64 1, %struct._IO_FILE* %fp) #9
  br label %sw.epilog33

sw.bb23:                                          ; preds = %sw.epilog
  %18 = tail call i64 @fwrite(i8* getelementptr inbounds ([52 x i8]* @.str58, i64 0, i64 0), i64 51, i64 1, %struct._IO_FILE* %fp) #9
  br label %sw.epilog33

sw.bb25:                                          ; preds = %sw.epilog
  %19 = tail call i64 @fwrite(i8* getelementptr inbounds ([32 x i8]* @.str59, i64 0, i64 0), i64 31, i64 1, %struct._IO_FILE* %fp) #9
  br label %sw.epilog33

sw.bb27:                                          ; preds = %sw.epilog
  %20 = tail call i64 @fwrite(i8* getelementptr inbounds ([48 x i8]* @.str60, i64 0, i64 0), i64 47, i64 1, %struct._IO_FILE* %fp) #9
  br label %sw.epilog33

sw.bb29:                                          ; preds = %sw.epilog
  %21 = tail call i64 @fwrite(i8* getelementptr inbounds ([48 x i8]* @.str61, i64 0, i64 0), i64 47, i64 1, %struct._IO_FILE* %fp) #9
  br label %sw.epilog33

sw.default31:                                     ; preds = %sw.epilog
  %22 = tail call i64 @fwrite(i8* getelementptr inbounds ([37 x i8]* @.str62, i64 0, i64 0), i64 36, i64 1, %struct._IO_FILE* %fp) #9
  br label %sw.epilog33

sw.epilog33:                                      ; preds = %sw.default31, %sw.bb29, %sw.bb27, %sw.bb25, %sw.bb23, %sw.bb21, %sw.bb19, %sw.bb17, %sw.bb15, %sw.bb13, %sw.bb11
  ret i32 1
}

; Function Attrs: optsize
declare i32 @IVfp80(%struct._IO_FILE*, i32, i32*, i32, i32*) #3

; Function Attrs: optsize
declare void @A2_setDefaultFields(%struct._A2*) #3

; Function Attrs: optsize
declare void @A2_init(%struct._A2*, i32, i32, i32, i32, i32, double*) #3

; Function Attrs: optsize
declare void @A2_zero(%struct._A2*) #3

; Function Attrs: optsize
declare i32 @SubMtx_realEntry(%struct._SubMtx*, i32, i32, double*) #3

; Function Attrs: optsize
declare void @A2_setRealEntry(%struct._A2*, i32, i32, double) #3

; Function Attrs: optsize
declare i32 @SubMtx_complexEntry(%struct._SubMtx*, i32, i32, double*, double*) #3

; Function Attrs: optsize
declare void @A2_setComplexEntry(%struct._A2*, i32, i32, double, double) #3

; Function Attrs: optsize
declare void @A2_writeForHumanEye(%struct._A2*, %struct._IO_FILE*) #3

; Function Attrs: optsize
declare void @A2_clearData(%struct._A2*) #3

; Function Attrs: optsize
declare i32 @SubMtx_nbytesInWorkspace(%struct._SubMtx*) #3

; Function Attrs: optsize
declare i32 @SubMtx_nbytesInUse(%struct._SubMtx*) #3

; Function Attrs: optsize
declare i8* @SubMtx_workspace(%struct._SubMtx*) #3

; Function Attrs: nounwind optsize uwtable
define void @SubMtx_writeForMatlab(%struct._SubMtx* %mtx, i8* %mtxname, %struct._IO_FILE* %fp) #0 {
entry:
  %ncol = alloca i32, align 4
  %nrow = alloca i32, align 4
  %colind = alloca i32*, align 8
  %rowind = alloca i32*, align 8
  %inc1 = alloca i32, align 4
  %inc2 = alloca i32, align 4
  %ncol9 = alloca i32, align 4
  %nrow10 = alloca i32, align 4
  %entries = alloca double*, align 8
  %entries51 = alloca double*, align 8
  %nent = alloca i32, align 4
  %nrow54 = alloca i32, align 4
  %indices = alloca i32*, align 8
  %sizes = alloca i32*, align 8
  %entries121 = alloca double*, align 8
  %nent125 = alloca i32, align 4
  %ncol126 = alloca i32, align 4
  %indices127 = alloca i32*, align 8
  %sizes128 = alloca i32*, align 8
  %entries197 = alloca double*, align 8
  %nent201 = alloca i32, align 4
  %colids = alloca i32*, align 8
  %rowids = alloca i32*, align 8
  %entries248 = alloca double*, align 8
  %nent252 = alloca i32, align 4
  %nrow253 = alloca i32, align 4
  %firstlocs = alloca i32*, align 8
  %sizes254 = alloca i32*, align 8
  %entries332 = alloca double*, align 8
  %ncol338 = alloca i32, align 4
  %nent339 = alloca i32, align 4
  %firstlocs340 = alloca i32*, align 8
  %sizes341 = alloca i32*, align 8
  %entries420 = alloca double*, align 8
  %nent422 = alloca i32, align 4
  %entries465 = alloca double*, align 8
  %ncol468 = alloca i32, align 4
  %nent469 = alloca i32, align 4
  %pivotsizes = alloca i32*, align 8
  %entries571 = alloca double*, align 8
  %ncol578 = alloca i32, align 4
  %nent579 = alloca i32, align 4
  %pivotsizes580 = alloca i32*, align 8
  %cmp = icmp eq %struct._SubMtx* %mtx, null
  %cmp1 = icmp eq i8* %mtxname, null
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq %struct._IO_FILE* %fp, null
  %or.cond872 = or i1 %or.cond, %cmp3
  br i1 %or.cond872, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !tbaa !0
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([61 x i8]* @.str63, i64 0, i64 0), %struct._SubMtx* %mtx, i8* %mtxname, %struct._IO_FILE* %fp) #5
  call void @exit(i32 -1) #8
  unreachable

if.end:                                           ; preds = %entry
  call void @SubMtx_rowIndices(%struct._SubMtx* %mtx, i32* %nrow, i32** %rowind) #5
  call void @SubMtx_columnIndices(%struct._SubMtx* %mtx, i32* %ncol, i32** %colind) #5
  %mode = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 1
  %1 = load i32* %mode, align 4, !tbaa !3
  switch i32 %1, label %if.end647 [
    i32 0, label %if.then8
    i32 1, label %if.then8
    i32 2, label %if.then50
    i32 3, label %if.then120
    i32 4, label %if.then196
    i32 5, label %if.then247
    i32 6, label %if.then331
    i32 7, label %if.then419
    i32 8, label %if.then464
    i32 9, label %if.then570
  ]

if.then8:                                         ; preds = %if.end, %if.end
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtx, i32* %nrow10, i32* %ncol9, i32* %inc1, i32* %inc2, double** %entries) #5
  %2 = load i32* %nrow10, align 4, !tbaa !3
  %cmp11875 = icmp sgt i32 %2, 0
  br i1 %cmp11875, label %for.cond12.preheader.lr.ph, label %if.end647

for.cond12.preheader.lr.ph:                       ; preds = %if.then8
  %type = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0
  %.pre = load i32* %ncol9, align 4, !tbaa !3
  br label %for.cond12.preheader

for.cond12.preheader:                             ; preds = %for.cond12.preheader.lr.ph, %for.inc44
  %3 = phi i32 [ %2, %for.cond12.preheader.lr.ph ], [ %25, %for.inc44 ]
  %4 = phi i32 [ %.pre, %for.cond12.preheader.lr.ph ], [ %26, %for.inc44 ]
  %indvars.iv940 = phi i64 [ 0, %for.cond12.preheader.lr.ph ], [ %indvars.iv.next941, %for.inc44 ]
  %cmp13873 = icmp sgt i32 %4, 0
  br i1 %cmp13873, label %for.body14, label %for.inc44

for.body14:                                       ; preds = %for.inc, %for.cond12.preheader
  %indvars.iv = phi i64 [ 0, %for.cond12.preheader ], [ %indvars.iv.next, %for.inc ]
  %5 = load i32* %inc1, align 4, !tbaa !3
  %6 = trunc i64 %indvars.iv940 to i32
  %mul = mul nsw i32 %5, %6
  %7 = load i32* %inc2, align 4, !tbaa !3
  %8 = trunc i64 %indvars.iv to i32
  %mul15 = mul nsw i32 %7, %8
  %add = add nsw i32 %mul15, %mul
  %9 = load i32* %type, align 4, !tbaa !3
  switch i32 %9, label %for.inc [
    i32 1, label %if.then17
    i32 2, label %if.then27
  ]

if.then17:                                        ; preds = %for.body14
  %10 = load i32** %rowind, align 8, !tbaa !0
  %arrayidx = getelementptr inbounds i32* %10, i64 %indvars.iv940
  %11 = load i32* %arrayidx, align 4, !tbaa !3
  %add18 = add nsw i32 %11, 1
  %12 = load i32** %colind, align 8, !tbaa !0
  %arrayidx20 = getelementptr inbounds i32* %12, i64 %indvars.iv
  %13 = load i32* %arrayidx20, align 4, !tbaa !3
  %add21 = add nsw i32 %13, 1
  %idxprom22 = sext i32 %add to i64
  %14 = load double** %entries, align 8, !tbaa !0
  %arrayidx23 = getelementptr inbounds double* %14, i64 %idxprom22
  %15 = load double* %arrayidx23, align 8, !tbaa !4
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([25 x i8]* @.str64, i64 0, i64 0), i8* %mtxname, i32 %add18, i32 %add21, double %15) #5
  br label %for.inc

if.then27:                                        ; preds = %for.body14
  %16 = load i32** %rowind, align 8, !tbaa !0
  %arrayidx29 = getelementptr inbounds i32* %16, i64 %indvars.iv940
  %17 = load i32* %arrayidx29, align 4, !tbaa !3
  %add30 = add nsw i32 %17, 1
  %18 = load i32** %colind, align 8, !tbaa !0
  %arrayidx32 = getelementptr inbounds i32* %18, i64 %indvars.iv
  %19 = load i32* %arrayidx32, align 4, !tbaa !3
  %add33 = add nsw i32 %19, 1
  %mul34 = shl nsw i32 %add, 1
  %idxprom35 = sext i32 %mul34 to i64
  %20 = load double** %entries, align 8, !tbaa !0
  %arrayidx36 = getelementptr inbounds double* %20, i64 %idxprom35
  %21 = load double* %arrayidx36, align 8, !tbaa !4
  %add38871 = or i32 %mul34, 1
  %idxprom39 = sext i32 %add38871 to i64
  %arrayidx40 = getelementptr inbounds double* %20, i64 %idxprom39
  %22 = load double* %arrayidx40, align 8, !tbaa !4
  %call41 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([35 x i8]* @.str65, i64 0, i64 0), i8* %mtxname, i32 %add30, i32 %add33, double %21, double %22) #5
  br label %for.inc

for.inc:                                          ; preds = %for.body14, %if.then17, %if.then27
  %indvars.iv.next = add i64 %indvars.iv, 1
  %23 = load i32* %ncol9, align 4, !tbaa !3
  %24 = trunc i64 %indvars.iv.next to i32
  %cmp13 = icmp slt i32 %24, %23
  br i1 %cmp13, label %for.body14, label %for.cond12.for.inc44_crit_edge

for.cond12.for.inc44_crit_edge:                   ; preds = %for.inc
  %.pre1015 = load i32* %nrow10, align 4, !tbaa !3
  br label %for.inc44

for.inc44:                                        ; preds = %for.cond12.preheader, %for.cond12.for.inc44_crit_edge
  %25 = phi i32 [ %.pre1015, %for.cond12.for.inc44_crit_edge ], [ %3, %for.cond12.preheader ]
  %26 = phi i32 [ %23, %for.cond12.for.inc44_crit_edge ], [ %4, %for.cond12.preheader ]
  %indvars.iv.next941 = add i64 %indvars.iv940, 1
  %27 = trunc i64 %indvars.iv.next941 to i32
  %cmp11 = icmp slt i32 %27, %25
  br i1 %cmp11, label %for.cond12.preheader, label %if.end647

if.then50:                                        ; preds = %if.end
  call void @SubMtx_sparseRowsInfo(%struct._SubMtx* %mtx, i32* %nrow54, i32* %nent, i32** %sizes, i32** %indices, double** %entries51) #5
  %28 = load i32* %nrow54, align 4, !tbaa !3
  %cmp56881 = icmp sgt i32 %28, 0
  br i1 %cmp56881, label %for.body57.lr.ph, label %if.end647

for.body57.lr.ph:                                 ; preds = %if.then50
  %type100 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0
  br label %for.body57

for.body57:                                       ; preds = %for.inc114, %for.body57.lr.ph
  %indvars.iv944 = phi i64 [ 0, %for.body57.lr.ph ], [ %indvars.iv.next945, %for.inc114 ]
  %29 = load i32** %sizes, align 8, !tbaa !0
  %arrayidx59 = getelementptr inbounds i32* %29, i64 %indvars.iv944
  %30 = load i32* %arrayidx59, align 4, !tbaa !3
  %cmp61878 = icmp sgt i32 %30, 0
  br i1 %cmp61878, label %for.body62, label %for.end99

for.body62:                                       ; preds = %for.inc97, %for.body57
  %indvars.iv942 = phi i64 [ 0, %for.body57 ], [ %indvars.iv.next943, %for.inc97 ]
  %31 = load i32** %indices, align 8, !tbaa !0
  %arrayidx64 = getelementptr inbounds i32* %31, i64 %indvars.iv942
  %32 = load i32* %arrayidx64, align 4, !tbaa !3
  %33 = load i32* %type100, align 4, !tbaa !3
  switch i32 %33, label %for.inc97 [
    i32 1, label %if.then67
    i32 2, label %if.then80
  ]

if.then67:                                        ; preds = %for.body62
  %34 = load i32** %rowind, align 8, !tbaa !0
  %arrayidx69 = getelementptr inbounds i32* %34, i64 %indvars.iv944
  %35 = load i32* %arrayidx69, align 4, !tbaa !3
  %add70 = add nsw i32 %35, 1
  %idxprom71 = sext i32 %32 to i64
  %36 = load i32** %colind, align 8, !tbaa !0
  %arrayidx72 = getelementptr inbounds i32* %36, i64 %idxprom71
  %37 = load i32* %arrayidx72, align 4, !tbaa !3
  %add73 = add nsw i32 %37, 1
  %38 = load double** %entries51, align 8, !tbaa !0
  %arrayidx75 = getelementptr inbounds double* %38, i64 %indvars.iv942
  %39 = load double* %arrayidx75, align 8, !tbaa !4
  %call76 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([24 x i8]* @.str66, i64 0, i64 0), i8* %mtxname, i32 %add70, i32 %add73, double %39) #5
  br label %for.inc97

if.then80:                                        ; preds = %for.body62
  %40 = load i32** %rowind, align 8, !tbaa !0
  %arrayidx82 = getelementptr inbounds i32* %40, i64 %indvars.iv944
  %41 = load i32* %arrayidx82, align 4, !tbaa !3
  %add83 = add nsw i32 %41, 1
  %idxprom84 = sext i32 %32 to i64
  %42 = load i32** %colind, align 8, !tbaa !0
  %arrayidx85 = getelementptr inbounds i32* %42, i64 %idxprom84
  %43 = load i32* %arrayidx85, align 4, !tbaa !3
  %add86 = add nsw i32 %43, 1
  %44 = trunc i64 %indvars.iv942 to i32
  %mul87 = shl nsw i32 %44, 1
  %idxprom88 = sext i32 %mul87 to i64
  %45 = load double** %entries51, align 8, !tbaa !0
  %arrayidx89 = getelementptr inbounds double* %45, i64 %idxprom88
  %46 = load double* %arrayidx89, align 8, !tbaa !4
  %add91870 = or i32 %mul87, 1
  %idxprom92 = sext i32 %add91870 to i64
  %arrayidx93 = getelementptr inbounds double* %45, i64 %idxprom92
  %47 = load double* %arrayidx93, align 8, !tbaa !4
  %call94 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([35 x i8]* @.str65, i64 0, i64 0), i8* %mtxname, i32 %add83, i32 %add86, double %46, double %47) #5
  br label %for.inc97

for.inc97:                                        ; preds = %for.body62, %if.then67, %if.then80
  %indvars.iv.next943 = add i64 %indvars.iv942, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next943 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %30
  br i1 %exitcond, label %for.end99, label %for.body62

for.end99:                                        ; preds = %for.inc97, %for.body57
  %48 = load i32** %indices, align 8, !tbaa !0
  %idx.ext = sext i32 %30 to i64
  %add.ptr = getelementptr inbounds i32* %48, i64 %idx.ext
  store i32* %add.ptr, i32** %indices, align 8, !tbaa !0
  %49 = load i32* %type100, align 4, !tbaa !3
  switch i32 %49, label %for.inc114 [
    i32 1, label %if.then102
    i32 2, label %if.then108
  ]

if.then102:                                       ; preds = %for.end99
  %50 = load double** %entries51, align 8, !tbaa !0
  %add.ptr104 = getelementptr inbounds double* %50, i64 %idx.ext
  store double* %add.ptr104, double** %entries51, align 8, !tbaa !0
  br label %for.inc114

if.then108:                                       ; preds = %for.end99
  %mul109 = shl nsw i32 %30, 1
  %51 = load double** %entries51, align 8, !tbaa !0
  %idx.ext110 = sext i32 %mul109 to i64
  %add.ptr111 = getelementptr inbounds double* %51, i64 %idx.ext110
  store double* %add.ptr111, double** %entries51, align 8, !tbaa !0
  br label %for.inc114

for.inc114:                                       ; preds = %for.end99, %if.then102, %if.then108
  %indvars.iv.next945 = add i64 %indvars.iv944, 1
  %52 = load i32* %nrow54, align 4, !tbaa !3
  %53 = trunc i64 %indvars.iv.next945 to i32
  %cmp56 = icmp slt i32 %53, %52
  br i1 %cmp56, label %for.body57, label %if.end647

if.then120:                                       ; preds = %if.end
  call void @SubMtx_sparseColumnsInfo(%struct._SubMtx* %mtx, i32* %ncol126, i32* %nent125, i32** %sizes128, i32** %indices127, double** %entries121) #5
  %54 = load i32* %ncol126, align 4, !tbaa !3
  %cmp130886 = icmp sgt i32 %54, 0
  br i1 %cmp130886, label %for.body131.lr.ph, label %if.end647

for.body131.lr.ph:                                ; preds = %if.then120
  %type176 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0
  br label %for.body131

for.body131:                                      ; preds = %for.inc190, %for.body131.lr.ph
  %indvars.iv950 = phi i64 [ 0, %for.body131.lr.ph ], [ %indvars.iv.next951, %for.inc190 ]
  %55 = load i32** %sizes128, align 8, !tbaa !0
  %arrayidx133 = getelementptr inbounds i32* %55, i64 %indvars.iv950
  %56 = load i32* %arrayidx133, align 4, !tbaa !3
  %cmp135883 = icmp sgt i32 %56, 0
  br i1 %cmp135883, label %for.body136, label %for.end173

for.body136:                                      ; preds = %for.inc171, %for.body131
  %indvars.iv946 = phi i64 [ 0, %for.body131 ], [ %indvars.iv.next947, %for.inc171 ]
  %57 = load i32** %indices127, align 8, !tbaa !0
  %arrayidx138 = getelementptr inbounds i32* %57, i64 %indvars.iv946
  %58 = load i32* %arrayidx138, align 4, !tbaa !3
  %59 = load i32* %type176, align 4, !tbaa !3
  switch i32 %59, label %for.inc171 [
    i32 1, label %if.then141
    i32 2, label %if.then154
  ]

if.then141:                                       ; preds = %for.body136
  %idxprom142 = sext i32 %58 to i64
  %60 = load i32** %rowind, align 8, !tbaa !0
  %arrayidx143 = getelementptr inbounds i32* %60, i64 %idxprom142
  %61 = load i32* %arrayidx143, align 4, !tbaa !3
  %add144 = add nsw i32 %61, 1
  %62 = load i32** %colind, align 8, !tbaa !0
  %arrayidx146 = getelementptr inbounds i32* %62, i64 %indvars.iv950
  %63 = load i32* %arrayidx146, align 4, !tbaa !3
  %add147 = add nsw i32 %63, 1
  %64 = load double** %entries121, align 8, !tbaa !0
  %arrayidx149 = getelementptr inbounds double* %64, i64 %indvars.iv946
  %65 = load double* %arrayidx149, align 8, !tbaa !4
  %call150 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([24 x i8]* @.str66, i64 0, i64 0), i8* %mtxname, i32 %add144, i32 %add147, double %65) #5
  br label %for.inc171

if.then154:                                       ; preds = %for.body136
  %idxprom155 = sext i32 %58 to i64
  %66 = load i32** %rowind, align 8, !tbaa !0
  %arrayidx156 = getelementptr inbounds i32* %66, i64 %idxprom155
  %67 = load i32* %arrayidx156, align 4, !tbaa !3
  %add157 = add nsw i32 %67, 1
  %68 = load i32** %colind, align 8, !tbaa !0
  %arrayidx159 = getelementptr inbounds i32* %68, i64 %indvars.iv950
  %69 = load i32* %arrayidx159, align 4, !tbaa !3
  %add160 = add nsw i32 %69, 1
  %70 = trunc i64 %indvars.iv946 to i32
  %mul161 = shl nsw i32 %70, 1
  %idxprom162 = sext i32 %mul161 to i64
  %71 = load double** %entries121, align 8, !tbaa !0
  %arrayidx163 = getelementptr inbounds double* %71, i64 %idxprom162
  %72 = load double* %arrayidx163, align 8, !tbaa !4
  %add165869 = or i32 %mul161, 1
  %idxprom166 = sext i32 %add165869 to i64
  %arrayidx167 = getelementptr inbounds double* %71, i64 %idxprom166
  %73 = load double* %arrayidx167, align 8, !tbaa !4
  %call168 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([35 x i8]* @.str65, i64 0, i64 0), i8* %mtxname, i32 %add157, i32 %add160, double %72, double %73) #5
  br label %for.inc171

for.inc171:                                       ; preds = %for.body136, %if.then141, %if.then154
  %indvars.iv.next947 = add i64 %indvars.iv946, 1
  %lftr.wideiv948 = trunc i64 %indvars.iv.next947 to i32
  %exitcond949 = icmp eq i32 %lftr.wideiv948, %56
  br i1 %exitcond949, label %for.end173, label %for.body136

for.end173:                                       ; preds = %for.inc171, %for.body131
  %74 = load i32** %indices127, align 8, !tbaa !0
  %idx.ext174 = sext i32 %56 to i64
  %add.ptr175 = getelementptr inbounds i32* %74, i64 %idx.ext174
  store i32* %add.ptr175, i32** %indices127, align 8, !tbaa !0
  %75 = load i32* %type176, align 4, !tbaa !3
  switch i32 %75, label %for.inc190 [
    i32 1, label %if.then178
    i32 2, label %if.then184
  ]

if.then178:                                       ; preds = %for.end173
  %76 = load double** %entries121, align 8, !tbaa !0
  %add.ptr180 = getelementptr inbounds double* %76, i64 %idx.ext174
  store double* %add.ptr180, double** %entries121, align 8, !tbaa !0
  br label %for.inc190

if.then184:                                       ; preds = %for.end173
  %mul185 = shl nsw i32 %56, 1
  %77 = load double** %entries121, align 8, !tbaa !0
  %idx.ext186 = sext i32 %mul185 to i64
  %add.ptr187 = getelementptr inbounds double* %77, i64 %idx.ext186
  store double* %add.ptr187, double** %entries121, align 8, !tbaa !0
  br label %for.inc190

for.inc190:                                       ; preds = %for.end173, %if.then178, %if.then184
  %indvars.iv.next951 = add i64 %indvars.iv950, 1
  %78 = load i32* %ncol126, align 4, !tbaa !3
  %79 = trunc i64 %indvars.iv.next951 to i32
  %cmp130 = icmp slt i32 %79, %78
  br i1 %cmp130, label %for.body131, label %if.end647

if.then196:                                       ; preds = %if.end
  call void @SubMtx_sparseTriplesInfo(%struct._SubMtx* %mtx, i32* %nent201, i32** %rowids, i32** %colids, double** %entries197) #5
  %80 = load i32* %nent201, align 4, !tbaa !3
  %cmp203889 = icmp sgt i32 %80, 0
  br i1 %cmp203889, label %for.body204.lr.ph, label %if.end647

for.body204.lr.ph:                                ; preds = %if.then196
  %type209 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0
  br label %for.body204

for.body204:                                      ; preds = %for.inc241, %for.body204.lr.ph
  %indvars.iv952 = phi i64 [ 0, %for.body204.lr.ph ], [ %indvars.iv.next953, %for.inc241 ]
  %81 = load i32** %rowids, align 8, !tbaa !0
  %arrayidx206 = getelementptr inbounds i32* %81, i64 %indvars.iv952
  %82 = load i32* %arrayidx206, align 4, !tbaa !3
  %83 = load i32** %colids, align 8, !tbaa !0
  %arrayidx208 = getelementptr inbounds i32* %83, i64 %indvars.iv952
  %84 = load i32* %arrayidx208, align 4, !tbaa !3
  %85 = load i32* %type209, align 4, !tbaa !3
  switch i32 %85, label %for.inc241 [
    i32 1, label %if.then211
    i32 2, label %if.then224
  ]

if.then211:                                       ; preds = %for.body204
  %idxprom212 = sext i32 %82 to i64
  %86 = load i32** %rowind, align 8, !tbaa !0
  %arrayidx213 = getelementptr inbounds i32* %86, i64 %idxprom212
  %87 = load i32* %arrayidx213, align 4, !tbaa !3
  %add214 = add nsw i32 %87, 1
  %idxprom215 = sext i32 %84 to i64
  %88 = load i32** %colind, align 8, !tbaa !0
  %arrayidx216 = getelementptr inbounds i32* %88, i64 %idxprom215
  %89 = load i32* %arrayidx216, align 4, !tbaa !3
  %add217 = add nsw i32 %89, 1
  %90 = load double** %entries197, align 8, !tbaa !0
  %arrayidx219 = getelementptr inbounds double* %90, i64 %indvars.iv952
  %91 = load double* %arrayidx219, align 8, !tbaa !4
  %call220 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([24 x i8]* @.str66, i64 0, i64 0), i8* %mtxname, i32 %add214, i32 %add217, double %91) #5
  br label %for.inc241

if.then224:                                       ; preds = %for.body204
  %idxprom225 = sext i32 %82 to i64
  %92 = load i32** %rowind, align 8, !tbaa !0
  %arrayidx226 = getelementptr inbounds i32* %92, i64 %idxprom225
  %93 = load i32* %arrayidx226, align 4, !tbaa !3
  %add227 = add nsw i32 %93, 1
  %idxprom228 = sext i32 %84 to i64
  %94 = load i32** %colind, align 8, !tbaa !0
  %arrayidx229 = getelementptr inbounds i32* %94, i64 %idxprom228
  %95 = load i32* %arrayidx229, align 4, !tbaa !3
  %add230 = add nsw i32 %95, 1
  %96 = trunc i64 %indvars.iv952 to i32
  %mul231 = shl nsw i32 %96, 1
  %idxprom232 = sext i32 %mul231 to i64
  %97 = load double** %entries197, align 8, !tbaa !0
  %arrayidx233 = getelementptr inbounds double* %97, i64 %idxprom232
  %98 = load double* %arrayidx233, align 8, !tbaa !4
  %add235868 = or i32 %mul231, 1
  %idxprom236 = sext i32 %add235868 to i64
  %arrayidx237 = getelementptr inbounds double* %97, i64 %idxprom236
  %99 = load double* %arrayidx237, align 8, !tbaa !4
  %call238 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([35 x i8]* @.str65, i64 0, i64 0), i8* %mtxname, i32 %add227, i32 %add230, double %98, double %99) #5
  br label %for.inc241

for.inc241:                                       ; preds = %for.body204, %if.then211, %if.then224
  %indvars.iv.next953 = add i64 %indvars.iv952, 1
  %100 = load i32* %nent201, align 4, !tbaa !3
  %101 = trunc i64 %indvars.iv.next953 to i32
  %cmp203 = icmp slt i32 %101, %100
  br i1 %cmp203, label %for.body204, label %if.end647

if.then247:                                       ; preds = %if.end
  call void @SubMtx_denseSubrowsInfo(%struct._SubMtx* %mtx, i32* %nrow253, i32* %nent252, i32** %firstlocs, i32** %sizes254, double** %entries248) #5
  %102 = load i32* %nrow253, align 4, !tbaa !3
  %cmp256898 = icmp sgt i32 %102, 0
  br i1 %cmp256898, label %for.body257.lr.ph, label %if.end647

for.body257.lr.ph:                                ; preds = %if.then247
  %type270 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0
  br label %for.body257

for.body257:                                      ; preds = %for.inc325, %for.body257.lr.ph
  %indvars.iv960 = phi i64 [ 0, %for.body257.lr.ph ], [ %indvars.iv.next961, %for.inc325 ]
  %103 = load i32** %sizes254, align 8, !tbaa !0
  %arrayidx259 = getelementptr inbounds i32* %103, i64 %indvars.iv960
  %104 = load i32* %arrayidx259, align 4, !tbaa !3
  %cmp260 = icmp sgt i32 %104, 0
  br i1 %cmp260, label %if.then261, label %for.inc325

if.then261:                                       ; preds = %for.body257
  %105 = load i32** %firstlocs, align 8, !tbaa !0
  %arrayidx263 = getelementptr inbounds i32* %105, i64 %indvars.iv960
  %106 = load i32* %arrayidx263, align 4, !tbaa !3
  %add266 = add i32 %104, -1
  %sub = add i32 %add266, %106
  %cmp268891 = icmp sgt i32 %106, %sub
  %107 = load i32* %type270, align 4, !tbaa !3
  %cmp271892 = icmp eq i32 %107, 1
  br i1 %cmp268891, label %for.end305, label %for.body269.lr.ph

for.body269.lr.ph:                                ; preds = %if.then261
  %108 = sext i32 %106 to i64
  br label %for.body269

for.body269:                                      ; preds = %for.inc302, %for.body269.lr.ph
  %indvars.iv958 = phi i64 [ %indvars.iv.next959, %for.inc302 ], [ 0, %for.body269.lr.ph ]
  %indvars.iv956 = phi i64 [ %indvars.iv.next957, %for.inc302 ], [ %108, %for.body269.lr.ph ]
  %cmp271895 = phi i1 [ %cmp271, %for.inc302 ], [ %cmp271892, %for.body269.lr.ph ]
  %109 = phi i32 [ %125, %for.inc302 ], [ %107, %for.body269.lr.ph ]
  br i1 %cmp271895, label %if.then272, label %if.else282

if.then272:                                       ; preds = %for.body269
  %110 = load i32** %rowind, align 8, !tbaa !0
  %arrayidx274 = getelementptr inbounds i32* %110, i64 %indvars.iv960
  %111 = load i32* %arrayidx274, align 4, !tbaa !3
  %add275 = add nsw i32 %111, 1
  %112 = load i32** %colind, align 8, !tbaa !0
  %arrayidx277 = getelementptr inbounds i32* %112, i64 %indvars.iv956
  %113 = load i32* %arrayidx277, align 4, !tbaa !3
  %add278 = add nsw i32 %113, 1
  %114 = load double** %entries248, align 8, !tbaa !0
  %arrayidx280 = getelementptr inbounds double* %114, i64 %indvars.iv958
  %115 = load double* %arrayidx280, align 8, !tbaa !4
  %call281 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([24 x i8]* @.str66, i64 0, i64 0), i8* %mtxname, i32 %add275, i32 %add278, double %115) #5
  br label %for.inc302

if.else282:                                       ; preds = %for.body269
  %cmp284 = icmp eq i32 %109, 2
  br i1 %cmp284, label %if.then285, label %for.inc302

if.then285:                                       ; preds = %if.else282
  %116 = load i32** %rowind, align 8, !tbaa !0
  %arrayidx287 = getelementptr inbounds i32* %116, i64 %indvars.iv960
  %117 = load i32* %arrayidx287, align 4, !tbaa !3
  %add288 = add nsw i32 %117, 1
  %118 = load i32** %colind, align 8, !tbaa !0
  %arrayidx290 = getelementptr inbounds i32* %118, i64 %indvars.iv956
  %119 = load i32* %arrayidx290, align 4, !tbaa !3
  %add291 = add nsw i32 %119, 1
  %120 = trunc i64 %indvars.iv958 to i32
  %mul292 = shl nsw i32 %120, 1
  %idxprom293 = sext i32 %mul292 to i64
  %121 = load double** %entries248, align 8, !tbaa !0
  %arrayidx294 = getelementptr inbounds double* %121, i64 %idxprom293
  %122 = load double* %arrayidx294, align 8, !tbaa !4
  %add296867 = or i32 %mul292, 1
  %idxprom297 = sext i32 %add296867 to i64
  %arrayidx298 = getelementptr inbounds double* %121, i64 %idxprom297
  %123 = load double* %arrayidx298, align 8, !tbaa !4
  %call299 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([35 x i8]* @.str65, i64 0, i64 0), i8* %mtxname, i32 %add288, i32 %add291, double %122, double %123) #5
  br label %for.inc302

for.inc302:                                       ; preds = %if.then272, %if.then285, %if.else282
  %indvars.iv.next957 = add i64 %indvars.iv956, 1
  %indvars.iv.next959 = add i64 %indvars.iv958, 1
  %124 = trunc i64 %indvars.iv956 to i32
  %cmp268 = icmp slt i32 %124, %sub
  %125 = load i32* %type270, align 4, !tbaa !3
  %cmp271 = icmp eq i32 %125, 1
  br i1 %cmp268, label %for.body269, label %for.end305

for.end305:                                       ; preds = %for.inc302, %if.then261
  %cmp271.lcssa = phi i1 [ %cmp271892, %if.then261 ], [ %cmp271, %for.inc302 ]
  %.lcssa = phi i32 [ %107, %if.then261 ], [ %125, %for.inc302 ]
  br i1 %cmp271.lcssa, label %if.then308, label %if.else313

if.then308:                                       ; preds = %for.end305
  %126 = load i32** %sizes254, align 8, !tbaa !0
  %arrayidx310 = getelementptr inbounds i32* %126, i64 %indvars.iv960
  %127 = load i32* %arrayidx310, align 4, !tbaa !3
  %128 = load double** %entries248, align 8, !tbaa !0
  %idx.ext311 = sext i32 %127 to i64
  %add.ptr312 = getelementptr inbounds double* %128, i64 %idx.ext311
  store double* %add.ptr312, double** %entries248, align 8, !tbaa !0
  br label %for.inc325

if.else313:                                       ; preds = %for.end305
  %cmp315 = icmp eq i32 %.lcssa, 2
  br i1 %cmp315, label %if.then316, label %for.inc325

if.then316:                                       ; preds = %if.else313
  %129 = load i32** %sizes254, align 8, !tbaa !0
  %arrayidx318 = getelementptr inbounds i32* %129, i64 %indvars.iv960
  %130 = load i32* %arrayidx318, align 4, !tbaa !3
  %mul319 = shl nsw i32 %130, 1
  %131 = load double** %entries248, align 8, !tbaa !0
  %idx.ext320 = sext i32 %mul319 to i64
  %add.ptr321 = getelementptr inbounds double* %131, i64 %idx.ext320
  store double* %add.ptr321, double** %entries248, align 8, !tbaa !0
  br label %for.inc325

for.inc325:                                       ; preds = %if.else313, %for.body257, %if.then316, %if.then308
  %indvars.iv.next961 = add i64 %indvars.iv960, 1
  %132 = load i32* %nrow253, align 4, !tbaa !3
  %133 = trunc i64 %indvars.iv.next961 to i32
  %cmp256 = icmp slt i32 %133, %132
  br i1 %cmp256, label %for.body257, label %if.end647

if.then331:                                       ; preds = %if.end
  call void @SubMtx_denseSubcolumnsInfo(%struct._SubMtx* %mtx, i32* %ncol338, i32* %nent339, i32** %firstlocs340, i32** %sizes341, double** %entries332) #5
  %134 = load i32* %ncol338, align 4, !tbaa !3
  %cmp343909 = icmp sgt i32 %134, 0
  br i1 %cmp343909, label %for.body344.lr.ph, label %if.end647

for.body344.lr.ph:                                ; preds = %if.then331
  %type358 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0
  br label %for.body344

for.body344:                                      ; preds = %for.inc413, %for.body344.lr.ph
  %indvars.iv968 = phi i64 [ 0, %for.body344.lr.ph ], [ %indvars.iv.next969, %for.inc413 ]
  %135 = load i32** %sizes341, align 8, !tbaa !0
  %arrayidx346 = getelementptr inbounds i32* %135, i64 %indvars.iv968
  %136 = load i32* %arrayidx346, align 4, !tbaa !3
  %cmp347 = icmp sgt i32 %136, 0
  br i1 %cmp347, label %if.then348, label %for.inc413

if.then348:                                       ; preds = %for.body344
  %137 = load i32** %firstlocs340, align 8, !tbaa !0
  %arrayidx350 = getelementptr inbounds i32* %137, i64 %indvars.iv968
  %138 = load i32* %arrayidx350, align 4, !tbaa !3
  %add353 = add i32 %136, -1
  %sub354 = add i32 %add353, %138
  %cmp356901 = icmp sgt i32 %138, %sub354
  %139 = load i32* %type358, align 4, !tbaa !3
  %cmp359902 = icmp eq i32 %139, 1
  br i1 %cmp356901, label %for.end393, label %for.body357.lr.ph

for.body357.lr.ph:                                ; preds = %if.then348
  %140 = sext i32 %138 to i64
  br label %for.body357

for.body357:                                      ; preds = %for.inc390, %for.body357.lr.ph
  %indvars.iv966 = phi i64 [ %indvars.iv.next967, %for.inc390 ], [ 0, %for.body357.lr.ph ]
  %indvars.iv964 = phi i64 [ %indvars.iv.next965, %for.inc390 ], [ %140, %for.body357.lr.ph ]
  %cmp359905 = phi i1 [ %cmp359, %for.inc390 ], [ %cmp359902, %for.body357.lr.ph ]
  %141 = phi i32 [ %157, %for.inc390 ], [ %139, %for.body357.lr.ph ]
  br i1 %cmp359905, label %if.then360, label %if.else370

if.then360:                                       ; preds = %for.body357
  %142 = load i32** %rowind, align 8, !tbaa !0
  %arrayidx362 = getelementptr inbounds i32* %142, i64 %indvars.iv964
  %143 = load i32* %arrayidx362, align 4, !tbaa !3
  %add363 = add nsw i32 %143, 1
  %144 = load i32** %colind, align 8, !tbaa !0
  %arrayidx365 = getelementptr inbounds i32* %144, i64 %indvars.iv968
  %145 = load i32* %arrayidx365, align 4, !tbaa !3
  %add366 = add nsw i32 %145, 1
  %146 = load double** %entries332, align 8, !tbaa !0
  %arrayidx368 = getelementptr inbounds double* %146, i64 %indvars.iv966
  %147 = load double* %arrayidx368, align 8, !tbaa !4
  %call369 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([24 x i8]* @.str66, i64 0, i64 0), i8* %mtxname, i32 %add363, i32 %add366, double %147) #5
  br label %for.inc390

if.else370:                                       ; preds = %for.body357
  %cmp372 = icmp eq i32 %141, 2
  br i1 %cmp372, label %if.then373, label %for.inc390

if.then373:                                       ; preds = %if.else370
  %148 = load i32** %rowind, align 8, !tbaa !0
  %arrayidx375 = getelementptr inbounds i32* %148, i64 %indvars.iv964
  %149 = load i32* %arrayidx375, align 4, !tbaa !3
  %add376 = add nsw i32 %149, 1
  %150 = load i32** %colind, align 8, !tbaa !0
  %arrayidx378 = getelementptr inbounds i32* %150, i64 %indvars.iv968
  %151 = load i32* %arrayidx378, align 4, !tbaa !3
  %add379 = add nsw i32 %151, 1
  %152 = trunc i64 %indvars.iv966 to i32
  %mul380 = shl nsw i32 %152, 1
  %idxprom381 = sext i32 %mul380 to i64
  %153 = load double** %entries332, align 8, !tbaa !0
  %arrayidx382 = getelementptr inbounds double* %153, i64 %idxprom381
  %154 = load double* %arrayidx382, align 8, !tbaa !4
  %add384866 = or i32 %mul380, 1
  %idxprom385 = sext i32 %add384866 to i64
  %arrayidx386 = getelementptr inbounds double* %153, i64 %idxprom385
  %155 = load double* %arrayidx386, align 8, !tbaa !4
  %call387 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([35 x i8]* @.str65, i64 0, i64 0), i8* %mtxname, i32 %add376, i32 %add379, double %154, double %155) #5
  br label %for.inc390

for.inc390:                                       ; preds = %if.then360, %if.then373, %if.else370
  %indvars.iv.next965 = add i64 %indvars.iv964, 1
  %indvars.iv.next967 = add i64 %indvars.iv966, 1
  %156 = trunc i64 %indvars.iv964 to i32
  %cmp356 = icmp slt i32 %156, %sub354
  %157 = load i32* %type358, align 4, !tbaa !3
  %cmp359 = icmp eq i32 %157, 1
  br i1 %cmp356, label %for.body357, label %for.end393

for.end393:                                       ; preds = %for.inc390, %if.then348
  %cmp359.lcssa = phi i1 [ %cmp359902, %if.then348 ], [ %cmp359, %for.inc390 ]
  %.lcssa900 = phi i32 [ %139, %if.then348 ], [ %157, %for.inc390 ]
  br i1 %cmp359.lcssa, label %if.then396, label %if.else401

if.then396:                                       ; preds = %for.end393
  %158 = load i32** %sizes341, align 8, !tbaa !0
  %arrayidx398 = getelementptr inbounds i32* %158, i64 %indvars.iv968
  %159 = load i32* %arrayidx398, align 4, !tbaa !3
  %160 = load double** %entries332, align 8, !tbaa !0
  %idx.ext399 = sext i32 %159 to i64
  %add.ptr400 = getelementptr inbounds double* %160, i64 %idx.ext399
  store double* %add.ptr400, double** %entries332, align 8, !tbaa !0
  br label %for.inc413

if.else401:                                       ; preds = %for.end393
  %cmp403 = icmp eq i32 %.lcssa900, 2
  br i1 %cmp403, label %if.then404, label %for.inc413

if.then404:                                       ; preds = %if.else401
  %161 = load i32** %sizes341, align 8, !tbaa !0
  %arrayidx406 = getelementptr inbounds i32* %161, i64 %indvars.iv968
  %162 = load i32* %arrayidx406, align 4, !tbaa !3
  %mul407 = shl nsw i32 %162, 1
  %163 = load double** %entries332, align 8, !tbaa !0
  %idx.ext408 = sext i32 %mul407 to i64
  %add.ptr409 = getelementptr inbounds double* %163, i64 %idx.ext408
  store double* %add.ptr409, double** %entries332, align 8, !tbaa !0
  br label %for.inc413

for.inc413:                                       ; preds = %if.else401, %for.body344, %if.then404, %if.then396
  %indvars.iv.next969 = add i64 %indvars.iv968, 1
  %164 = load i32* %ncol338, align 4, !tbaa !3
  %165 = trunc i64 %indvars.iv.next969 to i32
  %cmp343 = icmp slt i32 %165, %164
  br i1 %cmp343, label %for.body344, label %if.end647

if.then419:                                       ; preds = %if.end
  call void @SubMtx_diagonalInfo(%struct._SubMtx* %mtx, i32* %nent422, double** %entries420) #5
  %166 = load i32* %nent422, align 4, !tbaa !3
  %cmp424912 = icmp sgt i32 %166, 0
  br i1 %cmp424912, label %for.body425.lr.ph, label %if.end647

for.body425.lr.ph:                                ; preds = %if.then419
  %type426 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0
  br label %for.body425

for.body425:                                      ; preds = %for.inc458, %for.body425.lr.ph
  %indvars.iv970 = phi i64 [ 0, %for.body425.lr.ph ], [ %indvars.iv.next971, %for.inc458 ]
  %167 = load i32* %type426, align 4, !tbaa !3
  switch i32 %167, label %for.inc458 [
    i32 1, label %if.then428
    i32 2, label %if.then441
  ]

if.then428:                                       ; preds = %for.body425
  %168 = load i32** %rowind, align 8, !tbaa !0
  %arrayidx430 = getelementptr inbounds i32* %168, i64 %indvars.iv970
  %169 = load i32* %arrayidx430, align 4, !tbaa !3
  %add431 = add nsw i32 %169, 1
  %170 = load i32** %colind, align 8, !tbaa !0
  %arrayidx433 = getelementptr inbounds i32* %170, i64 %indvars.iv970
  %171 = load i32* %arrayidx433, align 4, !tbaa !3
  %add434 = add nsw i32 %171, 1
  %172 = load double** %entries420, align 8, !tbaa !0
  %arrayidx436 = getelementptr inbounds double* %172, i64 %indvars.iv970
  %173 = load double* %arrayidx436, align 8, !tbaa !4
  %call437 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([24 x i8]* @.str66, i64 0, i64 0), i8* %mtxname, i32 %add431, i32 %add434, double %173) #5
  br label %for.inc458

if.then441:                                       ; preds = %for.body425
  %174 = load i32** %rowind, align 8, !tbaa !0
  %arrayidx443 = getelementptr inbounds i32* %174, i64 %indvars.iv970
  %175 = load i32* %arrayidx443, align 4, !tbaa !3
  %add444 = add nsw i32 %175, 1
  %176 = load i32** %colind, align 8, !tbaa !0
  %arrayidx446 = getelementptr inbounds i32* %176, i64 %indvars.iv970
  %177 = load i32* %arrayidx446, align 4, !tbaa !3
  %add447 = add nsw i32 %177, 1
  %178 = trunc i64 %indvars.iv970 to i32
  %mul448 = shl nsw i32 %178, 1
  %idxprom449 = sext i32 %mul448 to i64
  %179 = load double** %entries420, align 8, !tbaa !0
  %arrayidx450 = getelementptr inbounds double* %179, i64 %idxprom449
  %180 = load double* %arrayidx450, align 8, !tbaa !4
  %add452865 = or i32 %mul448, 1
  %idxprom453 = sext i32 %add452865 to i64
  %arrayidx454 = getelementptr inbounds double* %179, i64 %idxprom453
  %181 = load double* %arrayidx454, align 8, !tbaa !4
  %call455 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([35 x i8]* @.str65, i64 0, i64 0), i8* %mtxname, i32 %add444, i32 %add447, double %180, double %181) #5
  br label %for.inc458

for.inc458:                                       ; preds = %for.body425, %if.then428, %if.then441
  %indvars.iv.next971 = add i64 %indvars.iv970, 1
  %182 = load i32* %nent422, align 4, !tbaa !3
  %183 = trunc i64 %indvars.iv.next971 to i32
  %cmp424 = icmp slt i32 %183, %182
  br i1 %cmp424, label %for.body425, label %if.end647

if.then464:                                       ; preds = %if.end
  call void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %mtx, i32* %ncol468, i32* %nent469, i32** %pivotsizes, double** %entries465) #5
  %184 = load i32* %ncol468, align 4, !tbaa !3
  %cmp471923 = icmp sgt i32 %184, 0
  br i1 %cmp471923, label %for.body472.lr.ph, label %if.end647

for.body472.lr.ph:                                ; preds = %if.then464
  %type481 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0
  br label %for.body472

for.body472:                                      ; preds = %for.end562.for.body472_crit_edge, %for.body472.lr.ph
  %185 = phi i32 [ %184, %for.body472.lr.ph ], [ %228, %for.end562.for.body472_crit_edge ]
  %indvars.iv994 = phi i64 [ 0, %for.body472.lr.ph ], [ %indvars.iv.next995, %for.end562.for.body472_crit_edge ]
  %kk.0926 = phi i32 [ 0, %for.body472.lr.ph ], [ %kk.1.lcssa, %for.end562.for.body472_crit_edge ]
  %irow467.0925 = phi i32 [ 0, %for.body472.lr.ph ], [ %add563, %for.end562.for.body472_crit_edge ]
  %186 = load i32** %pivotsizes, align 8, !tbaa !0
  %arrayidx474 = getelementptr inbounds i32* %186, i64 %indvars.iv994
  %187 = load i32* %arrayidx474, align 4, !tbaa !3
  %cmp476918 = icmp sgt i32 %187, 0
  br i1 %cmp476918, label %for.cond478.preheader.lr.ph, label %for.end562

for.cond478.preheader.lr.ph:                      ; preds = %for.body472
  %188 = sext i32 %irow467.0925 to i64
  br label %for.body480.lr.ph

for.body480.lr.ph:                                ; preds = %for.cond478.preheader.lr.ph, %for.inc560
  %indvars.iv986 = phi i64 [ 0, %for.cond478.preheader.lr.ph ], [ %indvars.iv.next987, %for.inc560 ]
  %indvars.iv982 = phi i32 [ %187, %for.cond478.preheader.lr.ph ], [ %indvars.iv.next983, %for.inc560 ]
  %kk.1920 = phi i32 [ %kk.0926, %for.cond478.preheader.lr.ph ], [ %227, %for.inc560 ]
  %189 = add nsw i64 %indvars.iv986, %188
  %190 = sext i32 %kk.1920 to i64
  br label %for.body480

for.body480:                                      ; preds = %for.inc556.for.body480_crit_edge, %for.body480.lr.ph
  %indvars.iv976 = phi i64 [ %indvars.iv986, %for.body480.lr.ph ], [ %indvars.iv.next977, %for.inc556.for.body480_crit_edge ]
  %indvars.iv972 = phi i64 [ %190, %for.body480.lr.ph ], [ %indvars.iv.next973, %for.inc556.for.body480_crit_edge ]
  %191 = load i32* %type481, align 4, !tbaa !3
  switch i32 %191, label %if.end516 [
    i32 1, label %if.then483
    i32 2, label %if.then498
  ]

if.then483:                                       ; preds = %for.body480
  %192 = load i32** %rowind, align 8, !tbaa !0
  %arrayidx486 = getelementptr inbounds i32* %192, i64 %189
  %193 = load i32* %arrayidx486, align 4, !tbaa !3
  %add487 = add nsw i32 %193, 1
  %194 = add nsw i64 %indvars.iv976, %188
  %195 = load i32** %colind, align 8, !tbaa !0
  %arrayidx490 = getelementptr inbounds i32* %195, i64 %194
  %196 = load i32* %arrayidx490, align 4, !tbaa !3
  %add491 = add nsw i32 %196, 1
  %197 = load double** %entries465, align 8, !tbaa !0
  %arrayidx493 = getelementptr inbounds double* %197, i64 %indvars.iv972
  %198 = load double* %arrayidx493, align 8, !tbaa !4
  %call494 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([24 x i8]* @.str66, i64 0, i64 0), i8* %mtxname, i32 %add487, i32 %add491, double %198) #5
  br label %if.end516

if.then498:                                       ; preds = %for.body480
  %199 = load i32** %rowind, align 8, !tbaa !0
  %arrayidx501 = getelementptr inbounds i32* %199, i64 %189
  %200 = load i32* %arrayidx501, align 4, !tbaa !3
  %add502 = add nsw i32 %200, 1
  %201 = add nsw i64 %indvars.iv976, %188
  %202 = load i32** %colind, align 8, !tbaa !0
  %arrayidx505 = getelementptr inbounds i32* %202, i64 %201
  %203 = load i32* %arrayidx505, align 4, !tbaa !3
  %add506 = add nsw i32 %203, 1
  %204 = trunc i64 %indvars.iv972 to i32
  %mul507 = shl nsw i32 %204, 1
  %idxprom508 = sext i32 %mul507 to i64
  %205 = load double** %entries465, align 8, !tbaa !0
  %arrayidx509 = getelementptr inbounds double* %205, i64 %idxprom508
  %206 = load double* %arrayidx509, align 8, !tbaa !4
  %add511864 = or i32 %mul507, 1
  %idxprom512 = sext i32 %add511864 to i64
  %arrayidx513 = getelementptr inbounds double* %205, i64 %idxprom512
  %207 = load double* %arrayidx513, align 8, !tbaa !4
  %call514 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([35 x i8]* @.str65, i64 0, i64 0), i8* %mtxname, i32 %add502, i32 %add506, double %206, double %207) #5
  br label %if.end516

if.end516:                                        ; preds = %for.body480, %if.then498, %if.then483
  %208 = trunc i64 %indvars.iv976 to i32
  %209 = trunc i64 %indvars.iv986 to i32
  %cmp517 = icmp eq i32 %209, %208
  br i1 %cmp517, label %for.inc556, label %if.then518

if.then518:                                       ; preds = %if.end516
  %210 = load i32* %type481, align 4, !tbaa !3
  switch i32 %210, label %for.inc556 [
    i32 1, label %if.then521
    i32 2, label %if.then536
  ]

if.then521:                                       ; preds = %if.then518
  %211 = add nsw i64 %indvars.iv976, %188
  %212 = load i32** %colind, align 8, !tbaa !0
  %arrayidx524 = getelementptr inbounds i32* %212, i64 %211
  %213 = load i32* %arrayidx524, align 4, !tbaa !3
  %add525 = add nsw i32 %213, 1
  %214 = load i32** %rowind, align 8, !tbaa !0
  %arrayidx528 = getelementptr inbounds i32* %214, i64 %189
  %215 = load i32* %arrayidx528, align 4, !tbaa !3
  %add529 = add nsw i32 %215, 1
  %216 = load double** %entries465, align 8, !tbaa !0
  %arrayidx531 = getelementptr inbounds double* %216, i64 %indvars.iv972
  %217 = load double* %arrayidx531, align 8, !tbaa !4
  %call532 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([24 x i8]* @.str66, i64 0, i64 0), i8* %mtxname, i32 %add525, i32 %add529, double %217) #5
  br label %for.inc556

if.then536:                                       ; preds = %if.then518
  %218 = add nsw i64 %indvars.iv976, %188
  %219 = load i32** %colind, align 8, !tbaa !0
  %arrayidx539 = getelementptr inbounds i32* %219, i64 %218
  %220 = load i32* %arrayidx539, align 4, !tbaa !3
  %add540 = add nsw i32 %220, 1
  %221 = load i32** %rowind, align 8, !tbaa !0
  %arrayidx543 = getelementptr inbounds i32* %221, i64 %189
  %222 = load i32* %arrayidx543, align 4, !tbaa !3
  %add544 = add nsw i32 %222, 1
  %223 = trunc i64 %indvars.iv972 to i32
  %mul545 = shl nsw i32 %223, 1
  %idxprom546 = sext i32 %mul545 to i64
  %224 = load double** %entries465, align 8, !tbaa !0
  %arrayidx547 = getelementptr inbounds double* %224, i64 %idxprom546
  %225 = load double* %arrayidx547, align 8, !tbaa !4
  %add549863 = or i32 %mul545, 1
  %idxprom550 = sext i32 %add549863 to i64
  %arrayidx551 = getelementptr inbounds double* %224, i64 %idxprom550
  %226 = load double* %arrayidx551, align 8, !tbaa !4
  %call552 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([35 x i8]* @.str65, i64 0, i64 0), i8* %mtxname, i32 %add540, i32 %add544, double %225, double %226) #5
  br label %for.inc556

for.inc556:                                       ; preds = %if.then518, %if.end516, %if.then536, %if.then521
  %indvars.iv.next977 = add i64 %indvars.iv976, 1
  %lftr.wideiv984 = trunc i64 %indvars.iv.next977 to i32
  %exitcond985 = icmp eq i32 %lftr.wideiv984, %187
  br i1 %exitcond985, label %for.inc560, label %for.inc556.for.body480_crit_edge

for.inc556.for.body480_crit_edge:                 ; preds = %for.inc556
  %indvars.iv.next973 = add i64 %indvars.iv972, 1
  br label %for.body480

for.inc560:                                       ; preds = %for.inc556
  %227 = add i32 %kk.1920, %indvars.iv982
  %indvars.iv.next987 = add i64 %indvars.iv986, 1
  %indvars.iv.next983 = add i32 %indvars.iv982, -1
  %lftr.wideiv992 = trunc i64 %indvars.iv.next987 to i32
  %exitcond993 = icmp eq i32 %lftr.wideiv992, %187
  br i1 %exitcond993, label %for.cond475.for.end562_crit_edge, label %for.body480.lr.ph

for.cond475.for.end562_crit_edge:                 ; preds = %for.inc560
  %.pre1016 = load i32* %ncol468, align 4, !tbaa !3
  br label %for.end562

for.end562:                                       ; preds = %for.body472, %for.cond475.for.end562_crit_edge
  %228 = phi i32 [ %.pre1016, %for.cond475.for.end562_crit_edge ], [ %185, %for.body472 ]
  %kk.1.lcssa = phi i32 [ %227, %for.cond475.for.end562_crit_edge ], [ %kk.0926, %for.body472 ]
  %add563 = add nsw i32 %187, %irow467.0925
  %cmp471 = icmp slt i32 %add563, %228
  br i1 %cmp471, label %for.end562.for.body472_crit_edge, label %if.end647

for.end562.for.body472_crit_edge:                 ; preds = %for.end562
  %indvars.iv.next995 = add i64 %indvars.iv994, 1
  br label %for.body472

if.then570:                                       ; preds = %if.end
  call void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %mtx, i32* %ncol578, i32* %nent579, i32** %pivotsizes580, double** %entries571) #5
  %229 = load i32* %ncol578, align 4, !tbaa !3
  %cmp582936 = icmp sgt i32 %229, 0
  br i1 %cmp582936, label %for.body583, label %if.end647

for.body583:                                      ; preds = %if.then570, %for.end634.for.body583_crit_edge
  %230 = phi i32 [ %255, %for.end634.for.body583_crit_edge ], [ %229, %if.then570 ]
  %indvars.iv1012 = phi i64 [ %indvars.iv.next1013, %for.end634.for.body583_crit_edge ], [ 0, %if.then570 ]
  %kk577.0939 = phi i32 [ %kk577.1.lcssa, %for.end634.for.body583_crit_edge ], [ 0, %if.then570 ]
  %irow574.0938 = phi i32 [ %add635, %for.end634.for.body583_crit_edge ], [ 0, %if.then570 ]
  %231 = load i32** %pivotsizes580, align 8, !tbaa !0
  %arrayidx585 = getelementptr inbounds i32* %231, i64 %indvars.iv1012
  %232 = load i32* %arrayidx585, align 4, !tbaa !3
  %cmp587931 = icmp sgt i32 %232, 0
  br i1 %cmp587931, label %for.cond589.preheader.lr.ph, label %for.end634

for.cond589.preheader.lr.ph:                      ; preds = %for.body583
  %233 = sext i32 %irow574.0938 to i64
  br label %for.body591.lr.ph

for.body591.lr.ph:                                ; preds = %for.cond589.preheader.lr.ph, %for.inc632
  %indvars.iv1007 = phi i64 [ 0, %for.cond589.preheader.lr.ph ], [ %indvars.iv.next1008, %for.inc632 ]
  %indvars.iv1003 = phi i32 [ %232, %for.cond589.preheader.lr.ph ], [ %indvars.iv.next1004, %for.inc632 ]
  %kk577.1933 = phi i32 [ %kk577.0939, %for.cond589.preheader.lr.ph ], [ %254, %for.inc632 ]
  %234 = add nsw i64 %indvars.iv1007, %233
  %235 = sext i32 %kk577.1933 to i64
  br label %for.body591

for.body591:                                      ; preds = %for.inc628, %for.body591.lr.ph
  %indvars.iv1000 = phi i64 [ %indvars.iv1007, %for.body591.lr.ph ], [ %indvars.iv.next1001, %for.inc628 ]
  %indvars.iv996 = phi i64 [ %235, %for.body591.lr.ph ], [ %indvars.iv.next997, %for.inc628 ]
  %236 = load i32** %rowind, align 8, !tbaa !0
  %arrayidx594 = getelementptr inbounds i32* %236, i64 %234
  %237 = load i32* %arrayidx594, align 4, !tbaa !3
  %add595 = add nsw i32 %237, 1
  %238 = add nsw i64 %indvars.iv1000, %233
  %239 = load i32** %colind, align 8, !tbaa !0
  %arrayidx598 = getelementptr inbounds i32* %239, i64 %238
  %240 = load i32* %arrayidx598, align 4, !tbaa !3
  %add599 = add nsw i32 %240, 1
  %241 = trunc i64 %indvars.iv996 to i32
  %mul600 = shl nsw i32 %241, 1
  %idxprom601 = sext i32 %mul600 to i64
  %242 = load double** %entries571, align 8, !tbaa !0
  %arrayidx602 = getelementptr inbounds double* %242, i64 %idxprom601
  %243 = load double* %arrayidx602, align 8, !tbaa !4
  %add604862 = or i32 %mul600, 1
  %idxprom605 = sext i32 %add604862 to i64
  %arrayidx606 = getelementptr inbounds double* %242, i64 %idxprom605
  %244 = load double* %arrayidx606, align 8, !tbaa !4
  %call607 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([35 x i8]* @.str65, i64 0, i64 0), i8* %mtxname, i32 %add595, i32 %add599, double %243, double %244) #5
  %245 = trunc i64 %indvars.iv1000 to i32
  %246 = trunc i64 %indvars.iv1007 to i32
  %cmp608 = icmp eq i32 %246, %245
  br i1 %cmp608, label %for.inc628, label %if.then609

if.then609:                                       ; preds = %for.body591
  %247 = load i32** %colind, align 8, !tbaa !0
  %arrayidx612 = getelementptr inbounds i32* %247, i64 %238
  %248 = load i32* %arrayidx612, align 4, !tbaa !3
  %add613 = add nsw i32 %248, 1
  %249 = load i32** %rowind, align 8, !tbaa !0
  %arrayidx616 = getelementptr inbounds i32* %249, i64 %234
  %250 = load i32* %arrayidx616, align 4, !tbaa !3
  %add617 = add nsw i32 %250, 1
  %251 = load double** %entries571, align 8, !tbaa !0
  %arrayidx620 = getelementptr inbounds double* %251, i64 %idxprom601
  %252 = load double* %arrayidx620, align 8, !tbaa !4
  %arrayidx624 = getelementptr inbounds double* %251, i64 %idxprom605
  %253 = load double* %arrayidx624, align 8, !tbaa !4
  %sub625 = fsub double -0.000000e+00, %253
  %call626 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([35 x i8]* @.str65, i64 0, i64 0), i8* %mtxname, i32 %add613, i32 %add617, double %252, double %sub625) #5
  br label %for.inc628

for.inc628:                                       ; preds = %for.body591, %if.then609
  %indvars.iv.next1001 = add i64 %indvars.iv1000, 1
  %indvars.iv.next997 = add i64 %indvars.iv996, 1
  %lftr.wideiv1005 = trunc i64 %indvars.iv.next1001 to i32
  %exitcond1006 = icmp eq i32 %lftr.wideiv1005, %232
  br i1 %exitcond1006, label %for.inc632, label %for.body591

for.inc632:                                       ; preds = %for.inc628
  %254 = add i32 %kk577.1933, %indvars.iv1003
  %indvars.iv.next1008 = add i64 %indvars.iv1007, 1
  %indvars.iv.next1004 = add i32 %indvars.iv1003, -1
  %lftr.wideiv1010 = trunc i64 %indvars.iv.next1008 to i32
  %exitcond1011 = icmp eq i32 %lftr.wideiv1010, %232
  br i1 %exitcond1011, label %for.cond586.for.end634_crit_edge, label %for.body591.lr.ph

for.cond586.for.end634_crit_edge:                 ; preds = %for.inc632
  %.pre1014 = load i32* %ncol578, align 4, !tbaa !3
  br label %for.end634

for.end634:                                       ; preds = %for.cond586.for.end634_crit_edge, %for.body583
  %255 = phi i32 [ %.pre1014, %for.cond586.for.end634_crit_edge ], [ %230, %for.body583 ]
  %kk577.1.lcssa = phi i32 [ %254, %for.cond586.for.end634_crit_edge ], [ %kk577.0939, %for.body583 ]
  %add635 = add nsw i32 %232, %irow574.0938
  %cmp582 = icmp slt i32 %add635, %255
  br i1 %cmp582, label %for.end634.for.body583_crit_edge, label %if.end647

for.end634.for.body583_crit_edge:                 ; preds = %for.end634
  %indvars.iv.next1013 = add i64 %indvars.iv1012, 1
  br label %for.body583

if.end647:                                        ; preds = %if.then570, %for.end634, %if.then464, %for.end562, %if.then419, %for.inc458, %if.then331, %for.inc413, %if.then247, %for.inc325, %if.then196, %for.inc241, %if.then120, %for.inc190, %if.then50, %for.inc114, %if.then8, %for.inc44, %if.end
  ret void
}

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
