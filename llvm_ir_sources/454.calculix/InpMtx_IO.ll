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
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !50), !dbg !217
  tail call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !51), !dbg !218
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !219
  %cmp1 = icmp eq i8* %fn, null, !dbg !219
  %or.cond = or i1 %cmp, %cmp1, !dbg !219
  br i1 %or.cond, label %if.then, label %if.end, !dbg !219

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !220, !tbaa !222
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), %struct._InpMtx* %inpmtx, i8* %fn) #7, !dbg !220
  br label %return, !dbg !225

if.end:                                           ; preds = %entry
  %call2 = tail call i64 @strlen(i8* %fn) #8, !dbg !226
  %conv = trunc i64 %call2 to i32, !dbg !226
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !108), !dbg !226
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !110), !dbg !228
  %cmp5 = icmp sgt i32 %conv, 8, !dbg !229
  br i1 %cmp5, label %if.then7, label %if.else41, !dbg !229

if.then7:                                         ; preds = %if.end
  %sub = shl i64 %call2, 32, !dbg !230
  %sext = add i64 %sub, -34359738368, !dbg !230
  %idxprom = ashr exact i64 %sext, 32, !dbg !230
  %arrayidx = getelementptr inbounds i8* %fn, i64 %idxprom, !dbg !230
  %call8 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([9 x i8]* @.str67, i64 0, i64 0)) #8, !dbg !230
  %cmp9 = icmp eq i32 %call8, 0, !dbg !230
  br i1 %cmp9, label %if.then11, label %if.else20, !dbg !230

if.then11:                                        ; preds = %if.then7
  %call12 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([3 x i8]* @.str1, i64 0, i64 0)) #7, !dbg !232
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call12}, i64 0, metadata !52), !dbg !232
  %cmp13 = icmp eq %struct._IO_FILE* %call12, null, !dbg !232
  br i1 %cmp13, label %if.then15, label %if.else, !dbg !232

if.then15:                                        ; preds = %if.then11
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !234, !tbaa !222
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([62 x i8]* @.str2, i64 0, i64 0), %struct._InpMtx* %inpmtx, i8* %fn, i8* %fn) #7, !dbg !234
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !109), !dbg !236
  br label %return, !dbg !237

if.else:                                          ; preds = %if.then11
  %call17 = tail call i32 @InpMtx_readFromBinaryFile(%struct._InpMtx* %inpmtx, %struct._IO_FILE* %call12) #9, !dbg !238
  tail call void @llvm.dbg.value(metadata !{i32 %call17}, i64 0, metadata !109), !dbg !238
  %call18 = tail call i32 @fclose(%struct._IO_FILE* %call12) #7, !dbg !240
  br label %return

if.else20:                                        ; preds = %if.then7
  %call24 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([9 x i8]* @.str66, i64 0, i64 0)) #8, !dbg !241
  %cmp25 = icmp eq i32 %call24, 0, !dbg !241
  br i1 %cmp25, label %if.then27, label %if.else37, !dbg !241

if.then27:                                        ; preds = %if.else20
  %call28 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str3, i64 0, i64 0)) #7, !dbg !242
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call28}, i64 0, metadata !52), !dbg !242
  %cmp29 = icmp eq %struct._IO_FILE* %call28, null, !dbg !242
  br i1 %cmp29, label %if.then31, label %if.else33, !dbg !242

if.then31:                                        ; preds = %if.then27
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !244, !tbaa !222
  %call32 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([62 x i8]* @.str2, i64 0, i64 0), %struct._InpMtx* %inpmtx, i8* %fn, i8* %fn) #7, !dbg !244
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !109), !dbg !246
  br label %return, !dbg !247

if.else33:                                        ; preds = %if.then27
  %call34 = tail call i32 @InpMtx_readFromFormattedFile(%struct._InpMtx* %inpmtx, %struct._IO_FILE* %call28) #9, !dbg !248
  tail call void @llvm.dbg.value(metadata !{i32 %call34}, i64 0, metadata !109), !dbg !248
  %call35 = tail call i32 @fclose(%struct._IO_FILE* %call28) #7, !dbg !250
  br label %return

if.else37:                                        ; preds = %if.else20
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !251, !tbaa !222
  %call38 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([108 x i8]* @.str4, i64 0, i64 0), %struct._InpMtx* %inpmtx, i8* %fn, i8* %fn, i8* getelementptr inbounds ([9 x i8]* @.str67, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str66, i64 0, i64 0)) #7, !dbg !251
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !109), !dbg !253
  br label %return

if.else41:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !254, !tbaa !222
  %call42 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([108 x i8]* @.str4, i64 0, i64 0), %struct._InpMtx* %inpmtx, i8* %fn, i8* %fn, i8* getelementptr inbounds ([9 x i8]* @.str67, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str66, i64 0, i64 0)) #7, !dbg !254
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !109), !dbg !256
  br label %return

return:                                           ; preds = %if.else41, %if.else37, %if.else33, %if.then31, %if.then15, %if.else, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then15 ], [ %call17, %if.else ], [ 0, %if.then31 ], [ %call34, %if.else33 ], [ 0, %if.else37 ], [ 0, %if.else41 ]
  ret i32 %retval.0, !dbg !257
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #2

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #3

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #3

; Function Attrs: nounwind optsize
declare noalias %struct._IO_FILE* @fopen(i8* nocapture, i8* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define i32 @InpMtx_readFromBinaryFile(%struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp) #0 {
entry:
  %itemp = alloca [5 x i32], align 16
  call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !124), !dbg !258
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !125), !dbg !259
  call void @llvm.dbg.declare(metadata !{[5 x i32]* %itemp}, metadata !127), !dbg !260
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !261
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !261
  %or.cond = or i1 %cmp, %cmp1, !dbg !261
  br i1 %or.cond, label %if.then, label %if.end, !dbg !261

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !262, !tbaa !222
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([62 x i8]* @.str7, i64 0, i64 0), %struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp) #7, !dbg !262
  br label %return, !dbg !264

if.end:                                           ; preds = %entry
  call void @InpMtx_clearData(%struct._InpMtx* %inpmtx) #7, !dbg !265
  %1 = bitcast [5 x i32]* %itemp to i8*, !dbg !266
  %call2 = call i64 @fread(i8* %1, i64 4, i64 5, %struct._IO_FILE* %fp) #7, !dbg !266
  %conv = trunc i64 %call2 to i32, !dbg !266
  call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !126), !dbg !266
  %cmp3 = icmp eq i32 %conv, 5, !dbg !266
  br i1 %cmp3, label %if.end7, label %if.then5, !dbg !266

if.then5:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !267, !tbaa !222
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([66 x i8]* @.str8, i64 0, i64 0), %struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp, i32 %conv, i32 5) #7, !dbg !267
  br label %return, !dbg !269

if.end7:                                          ; preds = %if.end
  %3 = bitcast [5 x i32]* %itemp to i64*, !dbg !270
  %4 = load i64* %3, align 16, !dbg !270
  %5 = trunc i64 %4 to i32, !dbg !270
  %coordType = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 0, !dbg !270
  store i32 %5, i32* %coordType, align 4, !dbg !270, !tbaa !271
  %6 = lshr i64 %4, 32
  %7 = trunc i64 %6 to i32
  %storageMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1, !dbg !272
  store i32 %7, i32* %storageMode, align 4, !dbg !272, !tbaa !271
  %arrayidx9 = getelementptr inbounds [5 x i32]* %itemp, i64 0, i64 2, !dbg !273
  %8 = bitcast i32* %arrayidx9 to i64*, !dbg !273
  %9 = load i64* %8, align 8, !dbg !273
  %10 = trunc i64 %9 to i32, !dbg !273
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2, !dbg !273
  store i32 %10, i32* %inputMode, align 4, !dbg !273, !tbaa !271
  %11 = lshr i64 %9, 32
  %12 = trunc i64 %11 to i32
  %nent = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 4, !dbg !274
  store i32 %12, i32* %nent, align 4, !dbg !274, !tbaa !271
  %arrayidx11 = getelementptr inbounds [5 x i32]* %itemp, i64 0, i64 4, !dbg !275
  %13 = load i32* %arrayidx11, align 16, !dbg !275, !tbaa !271
  %nvector = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 10, !dbg !275
  store i32 %13, i32* %nvector, align 4, !dbg !275, !tbaa !271
  %cmp13 = icmp sgt i32 %12, 0, !dbg !276
  br i1 %cmp13, label %if.then15, label %if.end28, !dbg !276

if.then15:                                        ; preds = %if.end7
  %ivec1IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 6, !dbg !277
  %call16 = call i32 @IV_readFromBinaryFile(%struct._IV* %ivec1IV, %struct._IO_FILE* %fp) #7, !dbg !277
  %ivec2IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 7, !dbg !279
  %call17 = call i32 @IV_readFromBinaryFile(%struct._IV* %ivec2IV, %struct._IO_FILE* %fp) #7, !dbg !279
  %14 = load i32* %inputMode, align 4, !dbg !280, !tbaa !271
  %.off = add i32 %14, -1, !dbg !280
  %switch = icmp ult i32 %.off, 2, !dbg !280
  br i1 %switch, label %if.then25, label %if.end28thread-pre-split, !dbg !280

if.then25:                                        ; preds = %if.then15
  %dvecDV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 8, !dbg !281
  %call26 = call i32 @DV_readFromBinaryFile(%struct._DV* %dvecDV, %struct._IO_FILE* %fp) #7, !dbg !281
  br label %if.end28thread-pre-split, !dbg !283

if.end28thread-pre-split:                         ; preds = %if.then25, %if.then15
  %.pr = load i32* %nvector, align 4, !dbg !284, !tbaa !271
  br label %if.end28

if.end28:                                         ; preds = %if.end28thread-pre-split, %if.end7
  %15 = phi i32 [ %.pr, %if.end28thread-pre-split ], [ %13, %if.end7 ], !dbg !284
  %cmp30 = icmp sgt i32 %15, 0, !dbg !284
  br i1 %cmp30, label %if.then32, label %if.end36, !dbg !284

if.then32:                                        ; preds = %if.end28
  %vecidsIV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 11, !dbg !285
  %call33 = call i32 @IV_readFromBinaryFile(%struct._IV* %vecidsIV, %struct._IO_FILE* %fp) #7, !dbg !285
  %sizesIV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 12, !dbg !287
  %call34 = call i32 @IV_readFromBinaryFile(%struct._IV* %sizesIV, %struct._IO_FILE* %fp) #7, !dbg !287
  %offsetsIV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 13, !dbg !288
  %call35 = call i32 @IV_readFromBinaryFile(%struct._IV* %offsetsIV, %struct._IO_FILE* %fp) #7, !dbg !288
  br label %if.end36, !dbg !289

if.end36:                                         ; preds = %if.end28, %if.then32
  %16 = load i32* %nent, align 4, !dbg !290, !tbaa !271
  %maxnent = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 3, !dbg !290
  store i32 %16, i32* %maxnent, align 4, !dbg !290, !tbaa !271
  br label %return, !dbg !291

return:                                           ; preds = %if.end36, %if.then5, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then5 ], [ 1, %if.end36 ]
  ret i32 %retval.0, !dbg !291
}

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define i32 @InpMtx_readFromFormattedFile(%struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp) #0 {
entry:
  %itemp = alloca [5 x i32], align 16
  call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !115), !dbg !292
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !116), !dbg !293
  call void @llvm.dbg.declare(metadata !{[5 x i32]* %itemp}, metadata !118), !dbg !294
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !295
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !295
  %or.cond = or i1 %cmp, %cmp1, !dbg !295
  br i1 %or.cond, label %if.then, label %if.end, !dbg !295

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !296, !tbaa !222
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([59 x i8]* @.str5, i64 0, i64 0), %struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp) #7, !dbg !296
  br label %return, !dbg !298

if.end:                                           ; preds = %entry
  call void @InpMtx_clearData(%struct._InpMtx* %inpmtx) #7, !dbg !299
  %arraydecay = getelementptr inbounds [5 x i32]* %itemp, i64 0, i64 0, !dbg !300
  %call2 = call i32 @IVfscanf(%struct._IO_FILE* %fp, i32 5, i32* %arraydecay) #7, !dbg !300
  call void @llvm.dbg.value(metadata !{i32 %call2}, i64 0, metadata !117), !dbg !300
  %cmp3 = icmp eq i32 %call2, 5, !dbg !300
  br i1 %cmp3, label %if.end6, label %if.then4, !dbg !300

if.then4:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !301, !tbaa !222
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([69 x i8]* @.str6, i64 0, i64 0), %struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp, i32 %call2, i32 5) #7, !dbg !301
  br label %return, !dbg !303

if.end6:                                          ; preds = %if.end
  %2 = bitcast [5 x i32]* %itemp to i64*, !dbg !304
  %3 = load i64* %2, align 16, !dbg !304
  %4 = trunc i64 %3 to i32, !dbg !304
  %coordType = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 0, !dbg !304
  store i32 %4, i32* %coordType, align 4, !dbg !304, !tbaa !271
  %5 = lshr i64 %3, 32
  %6 = trunc i64 %5 to i32
  %storageMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1, !dbg !305
  store i32 %6, i32* %storageMode, align 4, !dbg !305, !tbaa !271
  %arrayidx8 = getelementptr inbounds [5 x i32]* %itemp, i64 0, i64 2, !dbg !306
  %7 = bitcast i32* %arrayidx8 to i64*, !dbg !306
  %8 = load i64* %7, align 8, !dbg !306
  %9 = trunc i64 %8 to i32, !dbg !306
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2, !dbg !306
  store i32 %9, i32* %inputMode, align 4, !dbg !306, !tbaa !271
  %10 = lshr i64 %8, 32
  %11 = trunc i64 %10 to i32
  %nent = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 4, !dbg !307
  store i32 %11, i32* %nent, align 4, !dbg !307, !tbaa !271
  %arrayidx10 = getelementptr inbounds [5 x i32]* %itemp, i64 0, i64 4, !dbg !308
  %12 = load i32* %arrayidx10, align 16, !dbg !308, !tbaa !271
  %nvector = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 10, !dbg !308
  store i32 %12, i32* %nvector, align 4, !dbg !308, !tbaa !271
  %cmp12 = icmp sgt i32 %11, 0, !dbg !309
  br i1 %cmp12, label %if.then13, label %if.end24, !dbg !309

if.then13:                                        ; preds = %if.end6
  %ivec1IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 6, !dbg !310
  %call14 = call i32 @IV_readFromFormattedFile(%struct._IV* %ivec1IV, %struct._IO_FILE* %fp) #7, !dbg !310
  %ivec2IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 7, !dbg !312
  %call15 = call i32 @IV_readFromFormattedFile(%struct._IV* %ivec2IV, %struct._IO_FILE* %fp) #7, !dbg !312
  %13 = load i32* %inputMode, align 4, !dbg !313, !tbaa !271
  %.off = add i32 %13, -1, !dbg !313
  %switch = icmp ult i32 %.off, 2, !dbg !313
  br i1 %switch, label %if.then21, label %if.end24thread-pre-split, !dbg !313

if.then21:                                        ; preds = %if.then13
  %dvecDV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 8, !dbg !314
  %call22 = call i32 @DV_readFromFormattedFile(%struct._DV* %dvecDV, %struct._IO_FILE* %fp) #7, !dbg !314
  br label %if.end24thread-pre-split, !dbg !316

if.end24thread-pre-split:                         ; preds = %if.then21, %if.then13
  %.pr = load i32* %nvector, align 4, !dbg !317, !tbaa !271
  br label %if.end24

if.end24:                                         ; preds = %if.end24thread-pre-split, %if.end6
  %14 = phi i32 [ %.pr, %if.end24thread-pre-split ], [ %12, %if.end6 ], !dbg !317
  %cmp26 = icmp sgt i32 %14, 0, !dbg !317
  br i1 %cmp26, label %if.then27, label %if.end31, !dbg !317

if.then27:                                        ; preds = %if.end24
  %vecidsIV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 11, !dbg !318
  %call28 = call i32 @IV_readFromFormattedFile(%struct._IV* %vecidsIV, %struct._IO_FILE* %fp) #7, !dbg !318
  %sizesIV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 12, !dbg !320
  %call29 = call i32 @IV_readFromFormattedFile(%struct._IV* %sizesIV, %struct._IO_FILE* %fp) #7, !dbg !320
  %offsetsIV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 13, !dbg !321
  %call30 = call i32 @IV_readFromFormattedFile(%struct._IV* %offsetsIV, %struct._IO_FILE* %fp) #7, !dbg !321
  br label %if.end31, !dbg !322

if.end31:                                         ; preds = %if.end24, %if.then27
  %15 = load i32* %nent, align 4, !dbg !323, !tbaa !271
  %maxnent = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 3, !dbg !323
  store i32 %15, i32* %maxnent, align 4, !dbg !323, !tbaa !271
  br label %return, !dbg !324

return:                                           ; preds = %if.end31, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ 1, %if.end31 ]
  ret i32 %retval.0, !dbg !324
}

; Function Attrs: optsize
declare void @InpMtx_clearData(%struct._InpMtx*) #4

; Function Attrs: optsize
declare i32 @IVfscanf(%struct._IO_FILE*, i32, i32*) #4

; Function Attrs: optsize
declare i32 @IV_readFromFormattedFile(%struct._IV*, %struct._IO_FILE*) #4

; Function Attrs: optsize
declare i32 @DV_readFromFormattedFile(%struct._DV*, %struct._IO_FILE*) #4

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

; Function Attrs: optsize
declare i32 @IV_readFromBinaryFile(%struct._IV*, %struct._IO_FILE*) #4

; Function Attrs: optsize
declare i32 @DV_readFromBinaryFile(%struct._DV*, %struct._IO_FILE*) #4

; Function Attrs: nounwind optsize uwtable
define i32 @InpMtx_writeToFile(%struct._InpMtx* %inpmtx, i8* %fn) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !130), !dbg !325
  tail call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !131), !dbg !326
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !327
  %cmp1 = icmp eq i8* %fn, null, !dbg !327
  %or.cond = or i1 %cmp, %cmp1, !dbg !327
  br i1 %or.cond, label %if.then, label %if.end, !dbg !327

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !328, !tbaa !222
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([55 x i8]* @.str9, i64 0, i64 0), %struct._InpMtx* %inpmtx, i8* %fn) #7, !dbg !328
  br label %return, !dbg !330

if.end:                                           ; preds = %entry
  %call2 = tail call i64 @strlen(i8* %fn) #8, !dbg !331
  %conv = trunc i64 %call2 to i32, !dbg !331
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !133), !dbg !331
  tail call void @llvm.dbg.value(metadata !227, i64 0, metadata !135), !dbg !332
  %cmp5 = icmp sgt i32 %conv, 8, !dbg !333
  br i1 %cmp5, label %if.then7, label %if.else49, !dbg !333

if.then7:                                         ; preds = %if.end
  %sub = shl i64 %call2, 32, !dbg !334
  %sext = add i64 %sub, -34359738368, !dbg !334
  %idxprom = ashr exact i64 %sext, 32, !dbg !334
  %arrayidx = getelementptr inbounds i8* %fn, i64 %idxprom, !dbg !334
  %call8 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([9 x i8]* @.str67, i64 0, i64 0)) #8, !dbg !334
  %cmp9 = icmp eq i32 %call8, 0, !dbg !334
  br i1 %cmp9, label %if.then11, label %if.else20, !dbg !334

if.then11:                                        ; preds = %if.then7
  %call12 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([3 x i8]* @.str10, i64 0, i64 0)) #7, !dbg !336
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call12}, i64 0, metadata !132), !dbg !336
  %cmp13 = icmp eq %struct._IO_FILE* %call12, null, !dbg !336
  br i1 %cmp13, label %if.then15, label %if.else, !dbg !336

if.then15:                                        ; preds = %if.then11
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !338, !tbaa !222
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([61 x i8]* @.str11, i64 0, i64 0), %struct._InpMtx* %inpmtx, i8* %fn, i8* %fn) #7, !dbg !338
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !134), !dbg !340
  br label %return, !dbg !341

if.else:                                          ; preds = %if.then11
  %call17 = tail call i32 @InpMtx_writeToBinaryFile(%struct._InpMtx* %inpmtx, %struct._IO_FILE* %call12) #9, !dbg !342
  tail call void @llvm.dbg.value(metadata !{i32 %call17}, i64 0, metadata !134), !dbg !342
  %call18 = tail call i32 @fclose(%struct._IO_FILE* %call12) #7, !dbg !344
  br label %return

if.else20:                                        ; preds = %if.then7
  %call24 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([9 x i8]* @.str66, i64 0, i64 0)) #8, !dbg !345
  %cmp25 = icmp eq i32 %call24, 0, !dbg !345
  br i1 %cmp25, label %if.then27, label %if.else37, !dbg !345

if.then27:                                        ; preds = %if.else20
  %call28 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str12, i64 0, i64 0)) #7, !dbg !346
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call28}, i64 0, metadata !132), !dbg !346
  %cmp29 = icmp eq %struct._IO_FILE* %call28, null, !dbg !346
  br i1 %cmp29, label %if.then31, label %if.else33, !dbg !346

if.then31:                                        ; preds = %if.then27
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !348, !tbaa !222
  %call32 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([61 x i8]* @.str11, i64 0, i64 0), %struct._InpMtx* %inpmtx, i8* %fn, i8* %fn) #7, !dbg !348
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !134), !dbg !350
  br label %return, !dbg !351

if.else33:                                        ; preds = %if.then27
  %call34 = tail call i32 @InpMtx_writeToFormattedFile(%struct._InpMtx* %inpmtx, %struct._IO_FILE* %call28) #9, !dbg !352
  tail call void @llvm.dbg.value(metadata !{i32 %call34}, i64 0, metadata !134), !dbg !352
  %call35 = tail call i32 @fclose(%struct._IO_FILE* %call28) #7, !dbg !354
  br label %return

if.else37:                                        ; preds = %if.else20
  %call38 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str13, i64 0, i64 0)) #7, !dbg !355
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call38}, i64 0, metadata !132), !dbg !355
  %cmp39 = icmp eq %struct._IO_FILE* %call38, null, !dbg !355
  br i1 %cmp39, label %if.then41, label %if.else43, !dbg !355

if.then41:                                        ; preds = %if.else37
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !357, !tbaa !222
  %call42 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([61 x i8]* @.str11, i64 0, i64 0), %struct._InpMtx* %inpmtx, i8* %fn, i8* %fn) #7, !dbg !357
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !134), !dbg !359
  br label %return, !dbg !360

if.else43:                                        ; preds = %if.else37
  %call44 = tail call i32 @InpMtx_writeForHumanEye(%struct._InpMtx* %inpmtx, %struct._IO_FILE* %call38) #9, !dbg !361
  tail call void @llvm.dbg.value(metadata !{i32 %call44}, i64 0, metadata !134), !dbg !361
  %call45 = tail call i32 @fclose(%struct._IO_FILE* %call38) #7, !dbg !363
  br label %return

if.else49:                                        ; preds = %if.end
  %call50 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str13, i64 0, i64 0)) #7, !dbg !364
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call50}, i64 0, metadata !132), !dbg !364
  %cmp51 = icmp eq %struct._IO_FILE* %call50, null, !dbg !364
  br i1 %cmp51, label %if.then53, label %if.else55, !dbg !364

if.then53:                                        ; preds = %if.else49
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !366, !tbaa !222
  %call54 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([61 x i8]* @.str11, i64 0, i64 0), %struct._InpMtx* %inpmtx, i8* %fn, i8* %fn) #7, !dbg !366
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !134), !dbg !368
  br label %return, !dbg !369

if.else55:                                        ; preds = %if.else49
  %call56 = tail call i32 @InpMtx_writeForHumanEye(%struct._InpMtx* %inpmtx, %struct._IO_FILE* %call50) #9, !dbg !370
  tail call void @llvm.dbg.value(metadata !{i32 %call56}, i64 0, metadata !134), !dbg !370
  %call57 = tail call i32 @fclose(%struct._IO_FILE* %call50) #7, !dbg !372
  br label %return

return:                                           ; preds = %if.else33, %if.then31, %if.else43, %if.then41, %if.then15, %if.else, %if.else55, %if.then53, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then15 ], [ %call17, %if.else ], [ 0, %if.then31 ], [ %call34, %if.else33 ], [ 0, %if.then41 ], [ %call44, %if.else43 ], [ 0, %if.then53 ], [ %call56, %if.else55 ]
  ret i32 %retval.0, !dbg !373
}

; Function Attrs: nounwind optsize uwtable
define i32 @InpMtx_writeToBinaryFile(%struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp) #0 {
entry:
  %itemp = alloca [6 x i32], align 16
  call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !143), !dbg !374
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !144), !dbg !375
  call void @llvm.dbg.declare(metadata !{[6 x i32]* %itemp}, metadata !146), !dbg !376
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !377
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !377
  %or.cond = or i1 %cmp, %cmp1, !dbg !377
  br i1 %or.cond, label %if.then, label %if.end, !dbg !377

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !378, !tbaa !222
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([61 x i8]* @.str23, i64 0, i64 0), %struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp) #7, !dbg !378
  br label %return, !dbg !380

if.end:                                           ; preds = %entry
  %coordType = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 0, !dbg !381
  %1 = load i32* %coordType, align 4, !dbg !381, !tbaa !271
  %arrayidx = getelementptr inbounds [6 x i32]* %itemp, i64 0, i64 0, !dbg !381
  store i32 %1, i32* %arrayidx, align 16, !dbg !381, !tbaa !271
  %storageMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1, !dbg !382
  %2 = load i32* %storageMode, align 4, !dbg !382, !tbaa !271
  %arrayidx2 = getelementptr inbounds [6 x i32]* %itemp, i64 0, i64 1, !dbg !382
  store i32 %2, i32* %arrayidx2, align 4, !dbg !382, !tbaa !271
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2, !dbg !383
  %3 = load i32* %inputMode, align 4, !dbg !383, !tbaa !271
  %arrayidx3 = getelementptr inbounds [6 x i32]* %itemp, i64 0, i64 2, !dbg !383
  store i32 %3, i32* %arrayidx3, align 8, !dbg !383, !tbaa !271
  %nent = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 4, !dbg !384
  %4 = load i32* %nent, align 4, !dbg !384, !tbaa !271
  %arrayidx4 = getelementptr inbounds [6 x i32]* %itemp, i64 0, i64 3, !dbg !384
  store i32 %4, i32* %arrayidx4, align 4, !dbg !384, !tbaa !271
  %nvector = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 10, !dbg !385
  %5 = load i32* %nvector, align 4, !dbg !385, !tbaa !271
  %arrayidx5 = getelementptr inbounds [6 x i32]* %itemp, i64 0, i64 4, !dbg !385
  store i32 %5, i32* %arrayidx5, align 16, !dbg !385, !tbaa !271
  %6 = bitcast [6 x i32]* %itemp to i8*, !dbg !386
  %call6 = call i64 @fwrite(i8* %6, i64 4, i64 5, %struct._IO_FILE* %fp) #7, !dbg !386
  %conv = trunc i64 %call6 to i32, !dbg !386
  call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !145), !dbg !386
  %cmp7 = icmp eq i32 %conv, 5, !dbg !387
  br i1 %cmp7, label %if.end11, label %if.then9, !dbg !387

if.then9:                                         ; preds = %if.end
  %7 = load %struct._IO_FILE** @stderr, align 8, !dbg !388, !tbaa !222
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([75 x i8]* @.str24, i64 0, i64 0), %struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp, i32 %conv, i32 5) #7, !dbg !388
  br label %return, !dbg !390

if.end11:                                         ; preds = %if.end
  %8 = load i32* %nent, align 4, !dbg !391, !tbaa !271
  %cmp13 = icmp sgt i32 %8, 0, !dbg !391
  br i1 %cmp13, label %if.then15, label %if.end59, !dbg !391

if.then15:                                        ; preds = %if.end11
  %ivec1IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 6, !dbg !392
  call void @IV_setSize(%struct._IV* %ivec1IV, i32 %8) #7, !dbg !392
  %call18 = call i32 @IV_writeToBinaryFile(%struct._IV* %ivec1IV, %struct._IO_FILE* %fp) #7, !dbg !394
  call void @llvm.dbg.value(metadata !{i32 %call18}, i64 0, metadata !145), !dbg !394
  %cmp19 = icmp slt i32 %call18, 0, !dbg !395
  br i1 %cmp19, label %if.then21, label %if.end23, !dbg !395

if.then21:                                        ; preds = %if.then15
  %9 = load %struct._IO_FILE** @stderr, align 8, !dbg !396, !tbaa !222
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([86 x i8]* @.str25, i64 0, i64 0), %struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp, i32 %call18) #7, !dbg !396
  br label %return, !dbg !398

if.end23:                                         ; preds = %if.then15
  %ivec2IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 7, !dbg !399
  %10 = load i32* %nent, align 4, !dbg !399, !tbaa !271
  call void @IV_setSize(%struct._IV* %ivec2IV, i32 %10) #7, !dbg !399
  %call26 = call i32 @IV_writeToBinaryFile(%struct._IV* %ivec2IV, %struct._IO_FILE* %fp) #7, !dbg !400
  call void @llvm.dbg.value(metadata !{i32 %call26}, i64 0, metadata !145), !dbg !400
  %cmp27 = icmp slt i32 %call26, 0, !dbg !401
  br i1 %cmp27, label %if.then29, label %if.end31, !dbg !401

if.then29:                                        ; preds = %if.end23
  %11 = load %struct._IO_FILE** @stderr, align 8, !dbg !402, !tbaa !222
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([86 x i8]* @.str26, i64 0, i64 0), %struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp, i32 %call26) #7, !dbg !402
  br label %return, !dbg !404

if.end31:                                         ; preds = %if.end23
  %12 = load i32* %inputMode, align 4, !dbg !405, !tbaa !271
  switch i32 %12, label %if.end59 [
    i32 1, label %if.then35
    i32 2, label %if.then47
  ], !dbg !405

if.then35:                                        ; preds = %if.end31
  %dvecDV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 8, !dbg !406
  %13 = load i32* %nent, align 4, !dbg !406, !tbaa !271
  call void @DV_setSize(%struct._DV* %dvecDV, i32 %13) #7, !dbg !406
  %call38 = call i32 @DV_writeToBinaryFile(%struct._DV* %dvecDV, %struct._IO_FILE* %fp) #7, !dbg !408
  call void @llvm.dbg.value(metadata !{i32 %call38}, i64 0, metadata !145), !dbg !408
  %cmp39 = icmp slt i32 %call38, 0, !dbg !409
  br i1 %cmp39, label %if.then41, label %if.end59, !dbg !409

if.then41:                                        ; preds = %if.then35
  %14 = load %struct._IO_FILE** @stderr, align 8, !dbg !410, !tbaa !222
  %call42 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([85 x i8]* @.str27, i64 0, i64 0), %struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp, i32 %call38) #7, !dbg !410
  br label %return, !dbg !412

if.then47:                                        ; preds = %if.end31
  %dvecDV48 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 8, !dbg !413
  %15 = load i32* %nent, align 4, !dbg !413, !tbaa !271
  %mul = shl nsw i32 %15, 1, !dbg !413
  call void @DV_setSize(%struct._DV* %dvecDV48, i32 %mul) #7, !dbg !413
  %call51 = call i32 @DV_writeToBinaryFile(%struct._DV* %dvecDV48, %struct._IO_FILE* %fp) #7, !dbg !415
  call void @llvm.dbg.value(metadata !{i32 %call51}, i64 0, metadata !145), !dbg !415
  %cmp52 = icmp slt i32 %call51, 0, !dbg !416
  br i1 %cmp52, label %if.then54, label %if.end59, !dbg !416

if.then54:                                        ; preds = %if.then47
  %16 = load %struct._IO_FILE** @stderr, align 8, !dbg !417, !tbaa !222
  %call55 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([85 x i8]* @.str27, i64 0, i64 0), %struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp, i32 %call51) #7, !dbg !417
  br label %return, !dbg !419

if.end59:                                         ; preds = %if.end31, %if.then35, %if.then47, %if.end11
  %17 = load i32* %nvector, align 4, !dbg !420, !tbaa !271
  %cmp61 = icmp sgt i32 %17, 0, !dbg !420
  br i1 %cmp61, label %if.then63, label %return, !dbg !420

if.then63:                                        ; preds = %if.end59
  %vecidsIV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 11, !dbg !421
  %call64 = call i32 @IV_writeToBinaryFile(%struct._IV* %vecidsIV, %struct._IO_FILE* %fp) #7, !dbg !421
  call void @llvm.dbg.value(metadata !{i32 %call64}, i64 0, metadata !145), !dbg !421
  %cmp65 = icmp slt i32 %call64, 0, !dbg !423
  br i1 %cmp65, label %if.then67, label %if.end69, !dbg !423

if.then67:                                        ; preds = %if.then63
  %18 = load %struct._IO_FILE** @stderr, align 8, !dbg !424, !tbaa !222
  %call68 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([87 x i8]* @.str28, i64 0, i64 0), %struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp, i32 %call64) #7, !dbg !424
  br label %return, !dbg !426

if.end69:                                         ; preds = %if.then63
  %sizesIV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 12, !dbg !427
  %call70 = call i32 @IV_writeToBinaryFile(%struct._IV* %sizesIV, %struct._IO_FILE* %fp) #7, !dbg !427
  call void @llvm.dbg.value(metadata !{i32 %call70}, i64 0, metadata !145), !dbg !427
  %cmp71 = icmp slt i32 %call70, 0, !dbg !428
  br i1 %cmp71, label %if.then73, label %if.end75, !dbg !428

if.then73:                                        ; preds = %if.end69
  %19 = load %struct._IO_FILE** @stderr, align 8, !dbg !429, !tbaa !222
  %call74 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([86 x i8]* @.str29, i64 0, i64 0), %struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp, i32 %call70) #7, !dbg !429
  br label %return, !dbg !431

if.end75:                                         ; preds = %if.end69
  %offsetsIV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 13, !dbg !432
  %call76 = call i32 @IV_writeToBinaryFile(%struct._IV* %offsetsIV, %struct._IO_FILE* %fp) #7, !dbg !432
  call void @llvm.dbg.value(metadata !{i32 %call76}, i64 0, metadata !145), !dbg !432
  %cmp77 = icmp slt i32 %call76, 0, !dbg !433
  br i1 %cmp77, label %if.then79, label %return, !dbg !433

if.then79:                                        ; preds = %if.end75
  %20 = load %struct._IO_FILE** @stderr, align 8, !dbg !434, !tbaa !222
  %call80 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([88 x i8]* @.str30, i64 0, i64 0), %struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp, i32 %call76) #7, !dbg !434
  br label %return, !dbg !436

return:                                           ; preds = %if.end59, %if.end75, %if.then79, %if.then73, %if.then67, %if.then54, %if.then41, %if.then29, %if.then21, %if.then9, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then9 ], [ 0, %if.then21 ], [ 0, %if.then29 ], [ 0, %if.then41 ], [ 0, %if.then67 ], [ 0, %if.then73 ], [ 0, %if.then79 ], [ 0, %if.then54 ], [ 1, %if.end75 ], [ 1, %if.end59 ]
  ret i32 %retval.0, !dbg !437
}

; Function Attrs: nounwind optsize uwtable
define i32 @InpMtx_writeToFormattedFile(%struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !138), !dbg !438
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !139), !dbg !439
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !440
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !440
  %or.cond = or i1 %cmp, %cmp1, !dbg !440
  br i1 %or.cond, label %if.then, label %if.end, !dbg !440

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !441, !tbaa !222
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([64 x i8]* @.str14, i64 0, i64 0), %struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp) #7, !dbg !441
  br label %return, !dbg !443

if.end:                                           ; preds = %entry
  %coordType = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 0, !dbg !444
  %1 = load i32* %coordType, align 4, !dbg !444, !tbaa !271
  %storageMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1, !dbg !444
  %2 = load i32* %storageMode, align 4, !dbg !444, !tbaa !271
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2, !dbg !444
  %3 = load i32* %inputMode, align 4, !dbg !444, !tbaa !271
  %nent = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 4, !dbg !444
  %4 = load i32* %nent, align 4, !dbg !444, !tbaa !271
  %nvector = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 10, !dbg !444
  %5 = load i32* %nvector, align 4, !dbg !444, !tbaa !271
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([17 x i8]* @.str15, i64 0, i64 0), i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #7, !dbg !444
  tail call void @llvm.dbg.value(metadata !{i32 %call2}, i64 0, metadata !140), !dbg !444
  %cmp3 = icmp slt i32 %call2, 0, !dbg !445
  br i1 %cmp3, label %if.then4, label %if.end6, !dbg !445

if.then4:                                         ; preds = %if.end
  %6 = load %struct._IO_FILE** @stderr, align 8, !dbg !446, !tbaa !222
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([89 x i8]* @.str16, i64 0, i64 0), %struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp, i32 %call2) #7, !dbg !446
  br label %return, !dbg !448

if.end6:                                          ; preds = %if.end
  %7 = load i32* %nent, align 4, !dbg !449, !tbaa !271
  %cmp8 = icmp sgt i32 %7, 0, !dbg !449
  br i1 %cmp8, label %if.then9, label %if.end47, !dbg !449

if.then9:                                         ; preds = %if.end6
  %ivec1IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 6, !dbg !450
  tail call void @IV_setSize(%struct._IV* %ivec1IV, i32 %7) #7, !dbg !450
  %call12 = tail call i32 @IV_writeToFormattedFile(%struct._IV* %ivec1IV, %struct._IO_FILE* %fp) #7, !dbg !452
  tail call void @llvm.dbg.value(metadata !{i32 %call12}, i64 0, metadata !140), !dbg !452
  %cmp13 = icmp slt i32 %call12, 0, !dbg !453
  br i1 %cmp13, label %if.then14, label %if.end16, !dbg !453

if.then14:                                        ; preds = %if.then9
  %8 = load %struct._IO_FILE** @stderr, align 8, !dbg !454, !tbaa !222
  %call15 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([89 x i8]* @.str17, i64 0, i64 0), %struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp, i32 %call12) #7, !dbg !454
  br label %return, !dbg !456

if.end16:                                         ; preds = %if.then9
  %ivec2IV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 7, !dbg !457
  %9 = load i32* %nent, align 4, !dbg !457, !tbaa !271
  tail call void @IV_setSize(%struct._IV* %ivec2IV, i32 %9) #7, !dbg !457
  %call19 = tail call i32 @IV_writeToFormattedFile(%struct._IV* %ivec2IV, %struct._IO_FILE* %fp) #7, !dbg !458
  tail call void @llvm.dbg.value(metadata !{i32 %call19}, i64 0, metadata !140), !dbg !458
  %cmp20 = icmp slt i32 %call19, 0, !dbg !459
  br i1 %cmp20, label %if.then21, label %if.end23, !dbg !459

if.then21:                                        ; preds = %if.end16
  %10 = load %struct._IO_FILE** @stderr, align 8, !dbg !460, !tbaa !222
  %call22 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([89 x i8]* @.str18, i64 0, i64 0), %struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp, i32 %call19) #7, !dbg !460
  br label %return, !dbg !462

if.end23:                                         ; preds = %if.end16
  %11 = load i32* %inputMode, align 4, !dbg !463, !tbaa !271
  switch i32 %11, label %if.end47 [
    i32 1, label %if.then26
    i32 2, label %if.then36
  ], !dbg !463

if.then26:                                        ; preds = %if.end23
  %dvecDV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 8, !dbg !464
  %12 = load i32* %nent, align 4, !dbg !464, !tbaa !271
  tail call void @DV_setSize(%struct._DV* %dvecDV, i32 %12) #7, !dbg !464
  %call29 = tail call i32 @DV_writeToFormattedFile(%struct._DV* %dvecDV, %struct._IO_FILE* %fp) #7, !dbg !466
  tail call void @llvm.dbg.value(metadata !{i32 %call29}, i64 0, metadata !140), !dbg !466
  %cmp30 = icmp slt i32 %call29, 0, !dbg !467
  br i1 %cmp30, label %if.then31, label %if.end47, !dbg !467

if.then31:                                        ; preds = %if.then26
  %13 = load %struct._IO_FILE** @stderr, align 8, !dbg !468, !tbaa !222
  %call32 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([88 x i8]* @.str19, i64 0, i64 0), %struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp, i32 %call29) #7, !dbg !468
  br label %return, !dbg !470

if.then36:                                        ; preds = %if.end23
  %dvecDV37 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 8, !dbg !471
  %14 = load i32* %nent, align 4, !dbg !471, !tbaa !271
  %mul = shl nsw i32 %14, 1, !dbg !471
  tail call void @DV_setSize(%struct._DV* %dvecDV37, i32 %mul) #7, !dbg !471
  %call40 = tail call i32 @DV_writeToFormattedFile(%struct._DV* %dvecDV37, %struct._IO_FILE* %fp) #7, !dbg !473
  tail call void @llvm.dbg.value(metadata !{i32 %call40}, i64 0, metadata !140), !dbg !473
  %cmp41 = icmp slt i32 %call40, 0, !dbg !474
  br i1 %cmp41, label %if.then42, label %if.end47, !dbg !474

if.then42:                                        ; preds = %if.then36
  %15 = load %struct._IO_FILE** @stderr, align 8, !dbg !475, !tbaa !222
  %call43 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([88 x i8]* @.str19, i64 0, i64 0), %struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp, i32 %call40) #7, !dbg !475
  br label %return, !dbg !477

if.end47:                                         ; preds = %if.end23, %if.then26, %if.then36, %if.end6
  %16 = load i32* %nvector, align 4, !dbg !478, !tbaa !271
  %cmp49 = icmp sgt i32 %16, 0, !dbg !478
  br i1 %cmp49, label %if.then50, label %return, !dbg !478

if.then50:                                        ; preds = %if.end47
  %vecidsIV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 11, !dbg !479
  %call51 = tail call i32 @IV_writeToFormattedFile(%struct._IV* %vecidsIV, %struct._IO_FILE* %fp) #7, !dbg !479
  tail call void @llvm.dbg.value(metadata !{i32 %call51}, i64 0, metadata !140), !dbg !479
  %cmp52 = icmp slt i32 %call51, 0, !dbg !481
  br i1 %cmp52, label %if.then53, label %if.end55, !dbg !481

if.then53:                                        ; preds = %if.then50
  %17 = load %struct._IO_FILE** @stderr, align 8, !dbg !482, !tbaa !222
  %call54 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([90 x i8]* @.str20, i64 0, i64 0), %struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp, i32 %call51) #7, !dbg !482
  br label %return, !dbg !484

if.end55:                                         ; preds = %if.then50
  %sizesIV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 12, !dbg !485
  %call56 = tail call i32 @IV_writeToFormattedFile(%struct._IV* %sizesIV, %struct._IO_FILE* %fp) #7, !dbg !485
  tail call void @llvm.dbg.value(metadata !{i32 %call56}, i64 0, metadata !140), !dbg !485
  %cmp57 = icmp slt i32 %call56, 0, !dbg !486
  br i1 %cmp57, label %if.then58, label %if.end60, !dbg !486

if.then58:                                        ; preds = %if.end55
  %18 = load %struct._IO_FILE** @stderr, align 8, !dbg !487, !tbaa !222
  %call59 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([89 x i8]* @.str21, i64 0, i64 0), %struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp, i32 %call56) #7, !dbg !487
  br label %return, !dbg !489

if.end60:                                         ; preds = %if.end55
  %offsetsIV = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 13, !dbg !490
  %call61 = tail call i32 @IV_writeToFormattedFile(%struct._IV* %offsetsIV, %struct._IO_FILE* %fp) #7, !dbg !490
  tail call void @llvm.dbg.value(metadata !{i32 %call61}, i64 0, metadata !140), !dbg !490
  %cmp62 = icmp slt i32 %call61, 0, !dbg !491
  br i1 %cmp62, label %if.then63, label %return, !dbg !491

if.then63:                                        ; preds = %if.end60
  %19 = load %struct._IO_FILE** @stderr, align 8, !dbg !492, !tbaa !222
  %call64 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([91 x i8]* @.str22, i64 0, i64 0), %struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp, i32 %call61) #7, !dbg !492
  br label %return, !dbg !494

return:                                           ; preds = %if.end47, %if.end60, %if.then63, %if.then58, %if.then53, %if.then42, %if.then31, %if.then21, %if.then14, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ 0, %if.then14 ], [ 0, %if.then21 ], [ 0, %if.then31 ], [ 0, %if.then53 ], [ 0, %if.then58 ], [ 0, %if.then63 ], [ 0, %if.then42 ], [ 1, %if.end60 ], [ 1, %if.end47 ]
  ret i32 %retval.0, !dbg !495
}

; Function Attrs: nounwind optsize uwtable
define i32 @InpMtx_writeForHumanEye(%struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp) #0 {
entry:
  %entries = alloca double*, align 8
  %ierr = alloca i32, align 4
  %size = alloca i32, align 4
  %indices = alloca i32*, align 8
  call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !152), !dbg !496
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !153), !dbg !497
  call void @llvm.dbg.declare(metadata !{double** %entries}, metadata !154), !dbg !498
  call void @llvm.dbg.declare(metadata !{i32* %ierr}, metadata !155), !dbg !499
  call void @llvm.dbg.declare(metadata !{i32* %size}, metadata !159), !dbg !499
  call void @llvm.dbg.declare(metadata !{i32** %indices}, metadata !161), !dbg !500
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !501
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !501
  %or.cond = or i1 %cmp, %cmp1, !dbg !501
  br i1 %or.cond, label %if.then, label %if.end, !dbg !501

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !502, !tbaa !222
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([60 x i8]* @.str31, i64 0, i64 0), %struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp) #7, !dbg !502
  call void @exit(i32 -1) #10, !dbg !504
  unreachable, !dbg !504

if.end:                                           ; preds = %entry
  %call2 = call i32 @InpMtx_writeStats(%struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp) #9, !dbg !505
  call void @llvm.dbg.value(metadata !{i32 %call2}, i64 0, metadata !158), !dbg !505
  %cmp3 = icmp eq i32 %call2, 0, !dbg !505
  br i1 %cmp3, label %if.then4, label %if.end6, !dbg !505

if.then4:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !506, !tbaa !222
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([96 x i8]* @.str32, i64 0, i64 0), %struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp, i32 0, %struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp) #7, !dbg !506
  br label %return, !dbg !508

if.end6:                                          ; preds = %if.end
  %nent = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 4, !dbg !509
  %2 = load i32* %nent, align 4, !dbg !509, !tbaa !271
  %cmp7 = icmp sgt i32 %2, 0, !dbg !509
  br i1 %cmp7, label %if.then8, label %return, !dbg !509

if.then8:                                         ; preds = %if.end6
  %storageMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1, !dbg !510
  %3 = load i32* %storageMode, align 4, !dbg !510, !tbaa !271
  switch i32 %3, label %return [
    i32 1, label %if.then13
    i32 2, label %if.then13
    i32 3, label %land.lhs.true
  ], !dbg !510

if.then13:                                        ; preds = %if.then8, %if.then8
  %call14 = call i32* @InpMtx_ivec1(%struct._InpMtx* %inpmtx) #7, !dbg !511
  call void @llvm.dbg.value(metadata !{i32* %call14}, i64 0, metadata !162), !dbg !511
  %call15 = call i32* @InpMtx_ivec2(%struct._InpMtx* %inpmtx) #7, !dbg !512
  call void @llvm.dbg.value(metadata !{i32* %call15}, i64 0, metadata !165), !dbg !512
  %4 = call i64 @fwrite(i8* getelementptr inbounds ([19 x i8]* @.str33, i64 0, i64 0), i64 18, i64 1, %struct._IO_FILE* %fp) #6, !dbg !513
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2, !dbg !514
  %5 = load i32* %inputMode, align 4, !dbg !514, !tbaa !271
  switch i32 %5, label %return [
    i32 0, label %for.cond.preheader
    i32 1, label %if.then30
    i32 2, label %if.then54
  ], !dbg !514

for.cond.preheader:                               ; preds = %if.then13
  %6 = load i32* %nent, align 4, !dbg !515, !tbaa !271
  %cmp20235 = icmp sgt i32 %6, 0, !dbg !515
  br i1 %cmp20235, label %for.body, label %return, !dbg !515

for.body:                                         ; preds = %for.cond.preheader, %if.end24
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end24 ], [ 0, %for.cond.preheader ]
  %rem231 = and i64 %indvars.iv, 3, !dbg !518
  %cmp21 = icmp eq i64 %rem231, 0, !dbg !518
  br i1 %cmp21, label %if.then22, label %if.end24, !dbg !518

if.then22:                                        ; preds = %for.body
  %fputc234 = call i32 @fputc(i32 10, %struct._IO_FILE* %fp), !dbg !520
  br label %if.end24, !dbg !522

if.end24:                                         ; preds = %if.then22, %for.body
  %arrayidx = getelementptr inbounds i32* %call14, i64 %indvars.iv, !dbg !523
  %7 = load i32* %arrayidx, align 4, !dbg !523, !tbaa !271
  %arrayidx26 = getelementptr inbounds i32* %call15, i64 %indvars.iv, !dbg !523
  %8 = load i32* %arrayidx26, align 4, !dbg !523, !tbaa !271
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([11 x i8]* @.str35, i64 0, i64 0), i32 %7, i32 %8) #7, !dbg !523
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !515
  %9 = load i32* %nent, align 4, !dbg !515, !tbaa !271
  %10 = trunc i64 %indvars.iv.next to i32, !dbg !515
  %cmp20 = icmp slt i32 %10, %9, !dbg !515
  br i1 %cmp20, label %for.body, label %return, !dbg !515

if.then30:                                        ; preds = %if.then13
  %call31 = call double* @InpMtx_dvec(%struct._InpMtx* %inpmtx) #7, !dbg !524
  call void @llvm.dbg.value(metadata !{double* %call31}, i64 0, metadata !166), !dbg !524
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !156), !dbg !525
  %11 = load i32* %nent, align 4, !dbg !525, !tbaa !271
  %cmp34238 = icmp sgt i32 %11, 0, !dbg !525
  br i1 %cmp34238, label %for.body35, label %return, !dbg !525

for.body35:                                       ; preds = %if.then30, %if.end40
  %indvars.iv252 = phi i64 [ %indvars.iv.next253, %if.end40 ], [ 0, %if.then30 ]
  %rem36230 = and i64 %indvars.iv252, 1, !dbg !527
  %cmp37 = icmp eq i64 %rem36230, 0, !dbg !527
  br i1 %cmp37, label %if.then38, label %if.end40, !dbg !527

if.then38:                                        ; preds = %for.body35
  %fputc = call i32 @fputc(i32 10, %struct._IO_FILE* %fp), !dbg !529
  br label %if.end40, !dbg !529

if.end40:                                         ; preds = %if.then38, %for.body35
  %arrayidx42 = getelementptr inbounds i32* %call14, i64 %indvars.iv252, !dbg !531
  %12 = load i32* %arrayidx42, align 4, !dbg !531, !tbaa !271
  %arrayidx44 = getelementptr inbounds i32* %call15, i64 %indvars.iv252, !dbg !531
  %13 = load i32* %arrayidx44, align 4, !dbg !531, !tbaa !271
  %arrayidx46 = getelementptr inbounds double* %call31, i64 %indvars.iv252, !dbg !531
  %14 = load double* %arrayidx46, align 8, !dbg !531, !tbaa !532
  %call47 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str36, i64 0, i64 0), i32 %12, i32 %13, double %14) #7, !dbg !531
  %indvars.iv.next253 = add i64 %indvars.iv252, 1, !dbg !525
  %15 = load i32* %nent, align 4, !dbg !525, !tbaa !271
  %16 = trunc i64 %indvars.iv.next253 to i32, !dbg !525
  %cmp34 = icmp slt i32 %16, %15, !dbg !525
  br i1 %cmp34, label %for.body35, label %return, !dbg !525

if.then54:                                        ; preds = %if.then13
  %call56 = call double* @InpMtx_dvec(%struct._InpMtx* %inpmtx) #7, !dbg !533
  call void @llvm.dbg.value(metadata !{double* %call56}, i64 0, metadata !168), !dbg !533
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !156), !dbg !534
  %17 = load i32* %nent, align 4, !dbg !534, !tbaa !271
  %cmp59241 = icmp sgt i32 %17, 0, !dbg !534
  br i1 %cmp59241, label %for.body60, label %return, !dbg !534

for.body60:                                       ; preds = %if.then54, %for.body60
  %indvars.iv254 = phi i64 [ %indvars.iv.next255, %for.body60 ], [ 0, %if.then54 ]
  %arrayidx62 = getelementptr inbounds i32* %call14, i64 %indvars.iv254, !dbg !536
  %18 = load i32* %arrayidx62, align 4, !dbg !536, !tbaa !271
  %arrayidx64 = getelementptr inbounds i32* %call15, i64 %indvars.iv254, !dbg !536
  %19 = load i32* %arrayidx64, align 4, !dbg !536, !tbaa !271
  %20 = trunc i64 %indvars.iv254 to i32, !dbg !536
  %mul = shl nsw i32 %20, 1, !dbg !536
  %idxprom65 = sext i32 %mul to i64, !dbg !536
  %arrayidx66 = getelementptr inbounds double* %call56, i64 %idxprom65, !dbg !536
  %21 = load double* %arrayidx66, align 8, !dbg !536, !tbaa !532
  %add229 = or i32 %mul, 1, !dbg !536
  %idxprom68 = sext i32 %add229 to i64, !dbg !536
  %arrayidx69 = getelementptr inbounds double* %call56, i64 %idxprom68, !dbg !536
  %22 = load double* %arrayidx69, align 8, !dbg !536, !tbaa !532
  %call70 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([28 x i8]* @.str37, i64 0, i64 0), i32 %18, i32 %19, double %21, double %22) #7, !dbg !536
  %indvars.iv.next255 = add i64 %indvars.iv254, 1, !dbg !534
  %23 = load i32* %nent, align 4, !dbg !534, !tbaa !271
  %24 = trunc i64 %indvars.iv.next255 to i32, !dbg !534
  %cmp59 = icmp slt i32 %24, %23, !dbg !534
  br i1 %cmp59, label %for.body60, label %return, !dbg !534

land.lhs.true:                                    ; preds = %if.then8
  %nvector = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 10, !dbg !538
  %25 = load i32* %nvector, align 4, !dbg !538, !tbaa !271
  %cmp80 = icmp sgt i32 %25, 0, !dbg !538
  br i1 %cmp80, label %if.then81, label %return, !dbg !538

if.then81:                                        ; preds = %land.lhs.true
  %call82 = call i32* @InpMtx_vecids(%struct._InpMtx* %inpmtx) #7, !dbg !539
  call void @llvm.dbg.value(metadata !{i32* %call82}, i64 0, metadata !170), !dbg !539
  %26 = call i64 @fwrite(i8* getelementptr inbounds ([19 x i8]* @.str38, i64 0, i64 0), i64 18, i64 1, %struct._IO_FILE* %fp) #6, !dbg !540
  %inputMode84 = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2, !dbg !541
  %27 = load i32* %inputMode84, align 4, !dbg !541, !tbaa !271
  switch i32 %27, label %return [
    i32 0, label %for.cond87.preheader
    i32 1, label %for.cond107.preheader
    i32 2, label %for.cond124.preheader
  ], !dbg !541

for.cond124.preheader:                            ; preds = %if.then81
  %28 = load i32* %nvector, align 4, !dbg !542, !tbaa !271
  %cmp126250 = icmp sgt i32 %28, 0, !dbg !542
  br i1 %cmp126250, label %for.body127, label %return, !dbg !542

for.cond107.preheader:                            ; preds = %if.then81
  %29 = load i32* %nvector, align 4, !dbg !545, !tbaa !271
  %cmp109247 = icmp sgt i32 %29, 0, !dbg !545
  br i1 %cmp109247, label %for.body110, label %return, !dbg !545

for.cond87.preheader:                             ; preds = %if.then81
  %30 = load i32* %nvector, align 4, !dbg !548, !tbaa !271
  %cmp89244 = icmp sgt i32 %30, 0, !dbg !548
  br i1 %cmp89244, label %for.body90, label %return, !dbg !548

for.body90:                                       ; preds = %for.cond87.preheader, %for.inc100
  %indvars.iv256 = phi i64 [ %indvars.iv.next257, %for.inc100 ], [ 0, %for.cond87.preheader ]
  %arrayidx92 = getelementptr inbounds i32* %call82, i64 %indvars.iv256, !dbg !551
  %31 = load i32* %arrayidx92, align 4, !dbg !551, !tbaa !271
  call void @llvm.dbg.value(metadata !{i32 %31}, i64 0, metadata !160), !dbg !551
  call void @InpMtx_vector(%struct._InpMtx* %inpmtx, i32 %31, i32* %size, i32** %indices) #7, !dbg !553
  call void @llvm.dbg.value(metadata !{i32* %size}, i64 0, metadata !159), !dbg !554
  %32 = load i32* %size, align 4, !dbg !554, !tbaa !271
  %cmp93 = icmp sgt i32 %32, 0, !dbg !554
  br i1 %cmp93, label %if.then94, label %for.inc100, !dbg !554

if.then94:                                        ; preds = %for.body90
  %33 = load i32* %arrayidx92, align 4, !dbg !555, !tbaa !271
  %call97 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([9 x i8]* @.str39, i64 0, i64 0), i32 %33) #7, !dbg !555
  call void @llvm.dbg.value(metadata !{i32* %size}, i64 0, metadata !159), !dbg !557
  %34 = load i32* %size, align 4, !dbg !557, !tbaa !271
  call void @llvm.dbg.value(metadata !{i32** %indices}, i64 0, metadata !161), !dbg !557
  %35 = load i32** %indices, align 8, !dbg !557, !tbaa !222
  %call98 = call i32 @IVfp80(%struct._IO_FILE* %fp, i32 %34, i32* %35, i32 10, i32* %ierr) #7, !dbg !557
  br label %for.inc100, !dbg !558

for.inc100:                                       ; preds = %for.body90, %if.then94
  %indvars.iv.next257 = add i64 %indvars.iv256, 1, !dbg !548
  %36 = load i32* %nvector, align 4, !dbg !548, !tbaa !271
  %37 = trunc i64 %indvars.iv.next257 to i32, !dbg !548
  %cmp89 = icmp slt i32 %37, %36, !dbg !548
  br i1 %cmp89, label %for.body90, label %return, !dbg !548

for.body110:                                      ; preds = %for.cond107.preheader, %for.body110
  %indvars.iv258 = phi i64 [ %indvars.iv.next259, %for.body110 ], [ 0, %for.cond107.preheader ]
  %arrayidx112 = getelementptr inbounds i32* %call82, i64 %indvars.iv258, !dbg !559
  %38 = load i32* %arrayidx112, align 4, !dbg !559, !tbaa !271
  call void @llvm.dbg.value(metadata !{i32 %38}, i64 0, metadata !160), !dbg !559
  call void @InpMtx_realVector(%struct._InpMtx* %inpmtx, i32 %38, i32* %size, i32** %indices, double** %entries) #7, !dbg !561
  %39 = load i32* %arrayidx112, align 4, !dbg !562, !tbaa !271
  %call115 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([9 x i8]* @.str39, i64 0, i64 0), i32 %39) #7, !dbg !562
  call void @llvm.dbg.value(metadata !{i32* %size}, i64 0, metadata !159), !dbg !563
  %40 = load i32* %size, align 4, !dbg !563, !tbaa !271
  call void @llvm.dbg.value(metadata !{i32** %indices}, i64 0, metadata !161), !dbg !563
  %41 = load i32** %indices, align 8, !dbg !563, !tbaa !222
  %call116 = call i32 @IVfp80(%struct._IO_FILE* %fp, i32 %40, i32* %41, i32 10, i32* %ierr) #7, !dbg !563
  call void @llvm.dbg.value(metadata !{i32* %size}, i64 0, metadata !159), !dbg !564
  %42 = load i32* %size, align 4, !dbg !564, !tbaa !271
  call void @llvm.dbg.value(metadata !{double** %entries}, i64 0, metadata !154), !dbg !564
  %43 = load double** %entries, align 8, !dbg !564, !tbaa !222
  call void @DVfprintf(%struct._IO_FILE* %fp, i32 %42, double* %43) #7, !dbg !564
  %indvars.iv.next259 = add i64 %indvars.iv258, 1, !dbg !545
  %44 = load i32* %nvector, align 4, !dbg !545, !tbaa !271
  %45 = trunc i64 %indvars.iv.next259 to i32, !dbg !545
  %cmp109 = icmp slt i32 %45, %44, !dbg !545
  br i1 %cmp109, label %for.body110, label %return, !dbg !545

for.body127:                                      ; preds = %for.cond124.preheader, %for.body127
  %indvars.iv260 = phi i64 [ %indvars.iv.next261, %for.body127 ], [ 0, %for.cond124.preheader ]
  %arrayidx129 = getelementptr inbounds i32* %call82, i64 %indvars.iv260, !dbg !565
  %46 = load i32* %arrayidx129, align 4, !dbg !565, !tbaa !271
  call void @llvm.dbg.value(metadata !{i32 %46}, i64 0, metadata !160), !dbg !565
  call void @InpMtx_complexVector(%struct._InpMtx* %inpmtx, i32 %46, i32* %size, i32** %indices, double** %entries) #7, !dbg !567
  %47 = load i32* %arrayidx129, align 4, !dbg !568, !tbaa !271
  %call132 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([9 x i8]* @.str39, i64 0, i64 0), i32 %47) #7, !dbg !568
  call void @llvm.dbg.value(metadata !{i32* %size}, i64 0, metadata !159), !dbg !569
  %48 = load i32* %size, align 4, !dbg !569, !tbaa !271
  call void @llvm.dbg.value(metadata !{i32** %indices}, i64 0, metadata !161), !dbg !569
  %49 = load i32** %indices, align 8, !dbg !569, !tbaa !222
  %call133 = call i32 @IVfp80(%struct._IO_FILE* %fp, i32 %48, i32* %49, i32 10, i32* %ierr) #7, !dbg !569
  call void @llvm.dbg.value(metadata !{i32* %size}, i64 0, metadata !159), !dbg !570
  %50 = load i32* %size, align 4, !dbg !570, !tbaa !271
  call void @llvm.dbg.value(metadata !{double** %entries}, i64 0, metadata !154), !dbg !570
  %51 = load double** %entries, align 8, !dbg !570, !tbaa !222
  call void @ZVfprintf(%struct._IO_FILE* %fp, i32 %50, double* %51) #7, !dbg !570
  %indvars.iv.next261 = add i64 %indvars.iv260, 1, !dbg !542
  %52 = load i32* %nvector, align 4, !dbg !542, !tbaa !271
  %53 = trunc i64 %indvars.iv.next261 to i32, !dbg !542
  %cmp126 = icmp slt i32 %53, %52, !dbg !542
  br i1 %cmp126, label %for.body127, label %return, !dbg !542

return:                                           ; preds = %for.cond124.preheader, %for.body127, %for.cond107.preheader, %for.body110, %for.cond87.preheader, %for.inc100, %if.then54, %for.body60, %if.then30, %if.end40, %for.cond.preheader, %if.end24, %if.end6, %land.lhs.true, %if.then13, %if.then8, %if.then81, %if.then4
  %retval.0 = phi i32 [ 0, %if.then4 ], [ 1, %if.then81 ], [ 1, %if.then8 ], [ 1, %if.then13 ], [ 1, %land.lhs.true ], [ 1, %if.end6 ], [ 1, %if.end24 ], [ 1, %for.cond.preheader ], [ 1, %if.end40 ], [ 1, %if.then30 ], [ 1, %for.body60 ], [ 1, %if.then54 ], [ 1, %for.inc100 ], [ 1, %for.cond87.preheader ], [ 1, %for.body110 ], [ 1, %for.cond107.preheader ], [ 1, %for.body127 ], [ 1, %for.cond124.preheader ]
  ret i32 %retval.0, !dbg !571
}

; Function Attrs: optsize
declare void @IV_setSize(%struct._IV*, i32) #4

; Function Attrs: optsize
declare i32 @IV_writeToFormattedFile(%struct._IV*, %struct._IO_FILE*) #4

; Function Attrs: optsize
declare void @DV_setSize(%struct._DV*, i32) #4

; Function Attrs: optsize
declare i32 @DV_writeToFormattedFile(%struct._DV*, %struct._IO_FILE*) #4

; Function Attrs: nounwind optsize
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

; Function Attrs: optsize
declare i32 @IV_writeToBinaryFile(%struct._IV*, %struct._IO_FILE*) #4

; Function Attrs: optsize
declare i32 @DV_writeToBinaryFile(%struct._DV*, %struct._IO_FILE*) #4

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #5

; Function Attrs: nounwind optsize uwtable
define i32 @InpMtx_writeStats(%struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !174), !dbg !572
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !175), !dbg !573
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !574
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !574
  %or.cond = or i1 %cmp, %cmp1, !dbg !574
  br i1 %or.cond, label %if.then, label %if.end, !dbg !574

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !575, !tbaa !222
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([48 x i8]* @.str40, i64 0, i64 0), %struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp) #7, !dbg !575
  tail call void @exit(i32 -1) #10, !dbg !577
  unreachable, !dbg !577

if.end:                                           ; preds = %entry
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([50 x i8]* @.str41, i64 0, i64 0), i64 49, i64 1, %struct._IO_FILE* %fp) #6, !dbg !578
  %coordType = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 0, !dbg !579
  %2 = load i32* %coordType, align 4, !dbg !579, !tbaa !271
  switch i32 %2, label %if.else20 [
    i32 1, label %if.then4
    i32 2, label %if.then8
    i32 3, label %if.then13
    i32 4, label %if.then18
  ], !dbg !579

if.then4:                                         ; preds = %if.end
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([28 x i8]* @.str42, i64 0, i64 0), i64 27, i64 1, %struct._IO_FILE* %fp) #6, !dbg !580
  br label %if.end26, !dbg !582

if.then8:                                         ; preds = %if.end
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([31 x i8]* @.str43, i64 0, i64 0), i64 30, i64 1, %struct._IO_FILE* %fp) #6, !dbg !583
  br label %if.end26, !dbg !585

if.then13:                                        ; preds = %if.end
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([32 x i8]* @.str44, i64 0, i64 0), i64 31, i64 1, %struct._IO_FILE* %fp) #6, !dbg !586
  br label %if.end26, !dbg !588

if.then18:                                        ; preds = %if.end
  %6 = tail call i64 @fwrite(i8* getelementptr inbounds ([31 x i8]* @.str45, i64 0, i64 0), i64 30, i64 1, %struct._IO_FILE* %fp) #6, !dbg !589
  br label %if.end26

if.else20:                                        ; preds = %if.end
  %7 = load %struct._IO_FILE** @stderr, align 8, !dbg !591, !tbaa !222
  %call22 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([75 x i8]* @.str46, i64 0, i64 0), %struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp, i32 %2) #7, !dbg !591
  br label %return, !dbg !593

if.end26:                                         ; preds = %if.then8, %if.then18, %if.then13, %if.then4
  %storageMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1, !dbg !594
  %8 = load i32* %storageMode, align 4, !dbg !594, !tbaa !271
  switch i32 %8, label %if.else40 [
    i32 1, label %if.then28
    i32 2, label %if.then33
    i32 3, label %if.then38
  ], !dbg !594

if.then28:                                        ; preds = %if.end26
  %9 = tail call i64 @fwrite(i8* getelementptr inbounds ([30 x i8]* @.str47, i64 0, i64 0), i64 29, i64 1, %struct._IO_FILE* %fp) #6, !dbg !595
  br label %if.end45, !dbg !597

if.then33:                                        ; preds = %if.end26
  %10 = tail call i64 @fwrite(i8* getelementptr inbounds ([46 x i8]* @.str48, i64 0, i64 0), i64 45, i64 1, %struct._IO_FILE* %fp) #6, !dbg !598
  br label %if.end45, !dbg !600

if.then38:                                        ; preds = %if.end26
  %11 = tail call i64 @fwrite(i8* getelementptr inbounds ([46 x i8]* @.str49, i64 0, i64 0), i64 45, i64 1, %struct._IO_FILE* %fp) #6, !dbg !601
  br label %if.end45

if.else40:                                        ; preds = %if.end26
  %12 = load %struct._IO_FILE** @stderr, align 8, !dbg !603, !tbaa !222
  %call42 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([77 x i8]* @.str50, i64 0, i64 0), %struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp, i32 %8) #7, !dbg !603
  br label %return, !dbg !605

if.end45:                                         ; preds = %if.then33, %if.then38, %if.then28
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2, !dbg !606
  %13 = load i32* %inputMode, align 4, !dbg !606, !tbaa !271
  switch i32 %13, label %if.else59 [
    i32 0, label %if.then47
    i32 1, label %if.then52
    i32 2, label %if.then57
  ], !dbg !606

if.then47:                                        ; preds = %if.end45
  %14 = tail call i64 @fwrite(i8* getelementptr inbounds ([29 x i8]* @.str51, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %fp) #6, !dbg !607
  br label %if.end64, !dbg !609

if.then52:                                        ; preds = %if.end45
  %15 = tail call i64 @fwrite(i8* getelementptr inbounds ([29 x i8]* @.str52, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %fp) #6, !dbg !610
  br label %if.end64, !dbg !612

if.then57:                                        ; preds = %if.end45
  %16 = tail call i64 @fwrite(i8* getelementptr inbounds ([32 x i8]* @.str53, i64 0, i64 0), i64 31, i64 1, %struct._IO_FILE* %fp) #6, !dbg !613
  br label %if.end64

if.else59:                                        ; preds = %if.end45
  %17 = load %struct._IO_FILE** @stderr, align 8, !dbg !615, !tbaa !222
  %call61 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([75 x i8]* @.str54, i64 0, i64 0), %struct._InpMtx* %inpmtx, %struct._IO_FILE* %fp, i32 %13) #7, !dbg !615
  br label %return, !dbg !617

if.end64:                                         ; preds = %if.then52, %if.then57, %if.then47
  %maxnent = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 3, !dbg !618
  %18 = load i32* %maxnent, align 4, !dbg !618, !tbaa !271
  %call65 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([45 x i8]* @.str55, i64 0, i64 0), i32 %18) #7, !dbg !618
  %nent = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 4, !dbg !619
  %19 = load i32* %nent, align 4, !dbg !619, !tbaa !271
  %call66 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([42 x i8]* @.str56, i64 0, i64 0), i32 %19) #7, !dbg !619
  %resizeMultiple = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 5, !dbg !620
  %20 = load double* %resizeMultiple, align 8, !dbg !620, !tbaa !532
  %call67 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([44 x i8]* @.str57, i64 0, i64 0), double %20) #7, !dbg !620
  %maxnvector = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 9, !dbg !621
  %21 = load i32* %maxnvector, align 4, !dbg !621, !tbaa !271
  %call68 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([48 x i8]* @.str58, i64 0, i64 0), i32 %21) #7, !dbg !621
  %nvector = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 10, !dbg !622
  %22 = load i32* %nvector, align 4, !dbg !622, !tbaa !271
  %call69 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([45 x i8]* @.str59, i64 0, i64 0), i32 %22) #7, !dbg !622
  %call70 = tail call i32 @fflush(%struct._IO_FILE* %fp) #7, !dbg !623
  br label %return, !dbg !624

return:                                           ; preds = %if.end64, %if.else59, %if.else40, %if.else20
  %retval.0 = phi i32 [ 1, %if.end64 ], [ 0, %if.else59 ], [ 0, %if.else40 ], [ 0, %if.else20 ]
  ret i32 %retval.0, !dbg !624
}

; Function Attrs: optsize
declare i32* @InpMtx_ivec1(%struct._InpMtx*) #4

; Function Attrs: optsize
declare i32* @InpMtx_ivec2(%struct._InpMtx*) #4

; Function Attrs: optsize
declare double* @InpMtx_dvec(%struct._InpMtx*) #4

; Function Attrs: optsize
declare i32* @InpMtx_vecids(%struct._InpMtx*) #4

; Function Attrs: optsize
declare void @InpMtx_vector(%struct._InpMtx*, i32, i32*, i32**) #4

; Function Attrs: optsize
declare i32 @IVfp80(%struct._IO_FILE*, i32, i32*, i32, i32*) #4

; Function Attrs: optsize
declare void @InpMtx_realVector(%struct._InpMtx*, i32, i32*, i32**, double**) #4

; Function Attrs: optsize
declare void @DVfprintf(%struct._IO_FILE*, i32, double*) #4

; Function Attrs: optsize
declare void @InpMtx_complexVector(%struct._InpMtx*, i32, i32*, i32**, double**) #4

; Function Attrs: optsize
declare void @ZVfprintf(%struct._IO_FILE*, i32, double*) #4

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define i32 @InpMtx_writeForMatlab(%struct._InpMtx* %inpmtx, i8* %mtxname, %struct._IO_FILE* %fp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !180), !dbg !625
  tail call void @llvm.dbg.value(metadata !{i8* %mtxname}, i64 0, metadata !181), !dbg !626
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !182), !dbg !627
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !628
  %cmp1 = icmp eq i8* %mtxname, null, !dbg !628
  %or.cond = or i1 %cmp, %cmp1, !dbg !628
  %cmp3 = icmp eq %struct._IO_FILE* %fp, null, !dbg !628
  %or.cond89 = or i1 %or.cond, %cmp3, !dbg !628
  br i1 %or.cond89, label %if.then, label %if.end, !dbg !628

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !629, !tbaa !222
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([61 x i8]* @.str60, i64 0, i64 0), %struct._InpMtx* %inpmtx, i8* %mtxname, %struct._IO_FILE* %fp) #7, !dbg !629
  tail call void @exit(i32 -1) #10, !dbg !631
  unreachable, !dbg !631

if.end:                                           ; preds = %entry
  %coordType = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 0, !dbg !632
  %1 = load i32* %coordType, align 4, !dbg !632, !tbaa !271
  tail call void @llvm.dbg.value(metadata !{i32 %1}, i64 0, metadata !184), !dbg !632
  %storageMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 1, !dbg !633
  %2 = load i32* %storageMode, align 4, !dbg !633, !tbaa !271
  tail call void @llvm.dbg.value(metadata !{i32 %2}, i64 0, metadata !185), !dbg !633
  %cmp4 = icmp ne i32 %1, 1, !dbg !634
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !634

if.then5:                                         ; preds = %if.end
  tail call void @InpMtx_changeCoordType(%struct._InpMtx* %inpmtx, i32 1) #7, !dbg !635
  br label %if.end6, !dbg !637

if.end6:                                          ; preds = %if.then5, %if.end
  %nent = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 4, !dbg !638
  %3 = load i32* %nent, align 4, !dbg !638, !tbaa !271
  %cmp7 = icmp sgt i32 %3, 0, !dbg !638
  br i1 %cmp7, label %if.then8, label %if.end49, !dbg !638

if.then8:                                         ; preds = %if.end6
  %call9 = tail call i32* @InpMtx_ivec1(%struct._InpMtx* %inpmtx) #7, !dbg !639
  tail call void @llvm.dbg.value(metadata !{i32* %call9}, i64 0, metadata !186), !dbg !639
  %call10 = tail call i32* @InpMtx_ivec2(%struct._InpMtx* %inpmtx) #7, !dbg !640
  tail call void @llvm.dbg.value(metadata !{i32* %call10}, i64 0, metadata !188), !dbg !640
  %inputMode = getelementptr inbounds %struct._InpMtx* %inpmtx, i64 0, i32 2, !dbg !641
  %4 = load i32* %inputMode, align 4, !dbg !641, !tbaa !271
  switch i32 %4, label %if.end49 [
    i32 1, label %if.then12
    i32 2, label %if.then24
  ], !dbg !641

if.then12:                                        ; preds = %if.then8
  %call13 = tail call double* @InpMtx_dvec(%struct._InpMtx* %inpmtx) #7, !dbg !642
  tail call void @llvm.dbg.value(metadata !{double* %call13}, i64 0, metadata !189), !dbg !642
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !183), !dbg !643
  %5 = load i32* %nent, align 4, !dbg !643, !tbaa !271
  %cmp1590 = icmp sgt i32 %5, 0, !dbg !643
  br i1 %cmp1590, label %for.body, label %if.end49, !dbg !643

for.body:                                         ; preds = %if.then12, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then12 ]
  %arrayidx = getelementptr inbounds i32* %call9, i64 %indvars.iv, !dbg !645
  %6 = load i32* %arrayidx, align 4, !dbg !645, !tbaa !271
  %add = add nsw i32 %6, 1, !dbg !645
  %arrayidx17 = getelementptr inbounds i32* %call10, i64 %indvars.iv, !dbg !645
  %7 = load i32* %arrayidx17, align 4, !dbg !645, !tbaa !271
  %add18 = add nsw i32 %7, 1, !dbg !645
  %arrayidx20 = getelementptr inbounds double* %call13, i64 %indvars.iv, !dbg !645
  %8 = load double* %arrayidx20, align 8, !dbg !645, !tbaa !532
  %call21 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([24 x i8]* @.str61, i64 0, i64 0), i8* %mtxname, i32 %add, i32 %add18, double %8) #7, !dbg !645
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !643
  %9 = load i32* %nent, align 4, !dbg !643, !tbaa !271
  %10 = trunc i64 %indvars.iv.next to i32, !dbg !643
  %cmp15 = icmp slt i32 %10, %9, !dbg !643
  br i1 %cmp15, label %for.body, label %if.end49, !dbg !643

if.then24:                                        ; preds = %if.then8
  %call26 = tail call double* @InpMtx_dvec(%struct._InpMtx* %inpmtx) #7, !dbg !647
  tail call void @llvm.dbg.value(metadata !{double* %call26}, i64 0, metadata !191), !dbg !647
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !183), !dbg !648
  %11 = load i32* %nent, align 4, !dbg !648, !tbaa !271
  %cmp2993 = icmp sgt i32 %11, 0, !dbg !648
  br i1 %cmp2993, label %for.body30, label %if.end49, !dbg !648

for.body30:                                       ; preds = %if.then24, %for.body30
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %for.body30 ], [ 0, %if.then24 ]
  %arrayidx32 = getelementptr inbounds i32* %call9, i64 %indvars.iv95, !dbg !650
  %12 = load i32* %arrayidx32, align 4, !dbg !650, !tbaa !271
  %add33 = add nsw i32 %12, 1, !dbg !650
  %arrayidx35 = getelementptr inbounds i32* %call10, i64 %indvars.iv95, !dbg !650
  %13 = load i32* %arrayidx35, align 4, !dbg !650, !tbaa !271
  %add36 = add nsw i32 %13, 1, !dbg !650
  %14 = trunc i64 %indvars.iv95 to i32, !dbg !650
  %mul = shl nsw i32 %14, 1, !dbg !650
  %idxprom37 = sext i32 %mul to i64, !dbg !650
  %arrayidx38 = getelementptr inbounds double* %call26, i64 %idxprom37, !dbg !650
  %15 = load double* %arrayidx38, align 8, !dbg !650, !tbaa !532
  %add4088 = or i32 %mul, 1, !dbg !650
  %idxprom41 = sext i32 %add4088 to i64, !dbg !650
  %arrayidx42 = getelementptr inbounds double* %call26, i64 %idxprom41, !dbg !650
  %16 = load double* %arrayidx42, align 8, !dbg !650, !tbaa !532
  %call43 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([35 x i8]* @.str62, i64 0, i64 0), i8* %mtxname, i32 %add33, i32 %add36, double %15, double %16) #7, !dbg !650
  %indvars.iv.next96 = add i64 %indvars.iv95, 1, !dbg !648
  %17 = load i32* %nent, align 4, !dbg !648, !tbaa !271
  %18 = trunc i64 %indvars.iv.next96 to i32, !dbg !648
  %cmp29 = icmp slt i32 %18, %17, !dbg !648
  br i1 %cmp29, label %for.body30, label %if.end49, !dbg !648

if.end49:                                         ; preds = %if.then24, %for.body30, %if.then12, %for.body, %if.then8, %if.end6
  br i1 %cmp4, label %if.then51, label %if.end52, !dbg !652

if.then51:                                        ; preds = %if.end49
  tail call void @InpMtx_changeCoordType(%struct._InpMtx* %inpmtx, i32 %1) #7, !dbg !653
  br label %if.end52, !dbg !655

if.end52:                                         ; preds = %if.then51, %if.end49
  tail call void @InpMtx_changeStorageMode(%struct._InpMtx* %inpmtx, i32 %2) #7, !dbg !656
  ret i32 1, !dbg !657
}

; Function Attrs: optsize
declare void @InpMtx_changeCoordType(%struct._InpMtx*, i32) #4

; Function Attrs: optsize
declare void @InpMtx_changeStorageMode(%struct._InpMtx*, i32) #4

; Function Attrs: nounwind optsize uwtable
define i32 @InpMtx_readFromHBfile(%struct._InpMtx* %inpmtx, i8* %fn) #0 {
entry:
  %type = alloca i8*, align 8
  %ncol = alloca i32, align 4
  %nnonzeros = alloca i32, align 4
  %nrhs = alloca i32, align 4
  %nrow = alloca i32, align 4
  call void @llvm.dbg.value(metadata !{%struct._InpMtx* %inpmtx}, i64 0, metadata !195), !dbg !658
  call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !196), !dbg !659
  call void @llvm.dbg.declare(metadata !{i8** %type}, metadata !197), !dbg !660
  call void @llvm.dbg.declare(metadata !{i32* %ncol}, metadata !204), !dbg !661
  call void @llvm.dbg.declare(metadata !{i32* %nnonzeros}, metadata !205), !dbg !661
  call void @llvm.dbg.declare(metadata !{i32* %nrhs}, metadata !206), !dbg !662
  call void @llvm.dbg.declare(metadata !{i32* %nrow}, metadata !207), !dbg !662
  %cmp = icmp eq %struct._InpMtx* %inpmtx, null, !dbg !663
  %cmp1 = icmp eq i8* %fn, null, !dbg !663
  %or.cond = or i1 %cmp, %cmp1, !dbg !663
  br i1 %or.cond, label %if.then, label %if.end, !dbg !663

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !664, !tbaa !222
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), %struct._InpMtx* %inpmtx, i8* %fn) #7, !dbg !664
  br label %return, !dbg !666

if.end:                                           ; preds = %entry
  %call2 = call i32 @strcmp(i8* %fn, i8* getelementptr inbounds ([5 x i8]* @.str63, i64 0, i64 0)) #8, !dbg !667
  %cmp3 = icmp eq i32 %call2, 0, !dbg !667
  br i1 %cmp3, label %if.then4, label %if.end6, !dbg !667

if.then4:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !668, !tbaa !222
  %2 = call i64 @fwrite(i8* getelementptr inbounds ([23 x i8]* @.str64, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %1) #6, !dbg !668
  call void @exit(i32 0) #10, !dbg !670
  unreachable, !dbg !670

if.end6:                                          ; preds = %if.end
  %call7 = call i32 @readHB_info(i8* %fn, i32* %nrow, i32* %ncol, i32* %nnonzeros, i8** %type, i32* %nrhs) #7, !dbg !671
  call void @llvm.dbg.value(metadata !{i32 %call7}, i64 0, metadata !208), !dbg !671
  %cmp8 = icmp eq i32 %call7, 1, !dbg !672
  br i1 %cmp8, label %if.end10, label %return, !dbg !672

if.end10:                                         ; preds = %if.end6
  call void @llvm.dbg.value(metadata !{i8** %type}, i64 0, metadata !197), !dbg !673
  %3 = load i8** %type, align 8, !dbg !673, !tbaa !222
  %4 = load i8* %3, align 1, !dbg !673, !tbaa !223
  %conv = sext i8 %4 to i32, !dbg !673
  switch i32 %conv, label %sw.default [
    i32 80, label %sw.epilog
    i32 82, label %sw.bb11
    i32 67, label %sw.bb12
  ], !dbg !673

sw.bb11:                                          ; preds = %if.end10
  call void @llvm.dbg.value(metadata !674, i64 0, metadata !202), !dbg !675
  br label %sw.epilog, !dbg !677

sw.bb12:                                          ; preds = %if.end10
  call void @llvm.dbg.value(metadata !678, i64 0, metadata !202), !dbg !679
  br label %sw.epilog, !dbg !680

sw.default:                                       ; preds = %if.end10
  %5 = load %struct._IO_FILE** @stderr, align 8, !dbg !681, !tbaa !222
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([91 x i8]* @.str65, i64 0, i64 0), i8* %3) #7, !dbg !681
  call void @exit(i32 -1) #10, !dbg !682
  unreachable, !dbg !682

sw.epilog:                                        ; preds = %if.end10, %sw.bb12, %sw.bb11
  %inputMode.0 = phi i32 [ 2, %sw.bb12 ], [ 1, %sw.bb11 ], [ 0, %if.end10 ]
  call void @llvm.dbg.value(metadata !{i32* %nnonzeros}, i64 0, metadata !205), !dbg !683
  %6 = load i32* %nnonzeros, align 4, !dbg !683, !tbaa !271
  call void @InpMtx_init(%struct._InpMtx* %inpmtx, i32 2, i32 %inputMode.0, i32 %6, i32 0) #7, !dbg !683
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !204), !dbg !684
  %7 = load i32* %ncol, align 4, !dbg !684, !tbaa !271
  %add = add nsw i32 %7, 1, !dbg !684
  %call14 = call i32* @IVinit(i32 %add, i32 -1) #7, !dbg !684
  call void @llvm.dbg.value(metadata !{i32* %call14}, i64 0, metadata !210), !dbg !684
  %call15 = call i32* @InpMtx_ivec1(%struct._InpMtx* %inpmtx) #7, !dbg !685
  call void @llvm.dbg.value(metadata !{i32* %call15}, i64 0, metadata !209), !dbg !685
  %call16 = call i32* @InpMtx_ivec2(%struct._InpMtx* %inpmtx) #7, !dbg !686
  call void @llvm.dbg.value(metadata !{i32* %call16}, i64 0, metadata !211), !dbg !686
  %call17 = call double* @InpMtx_dvec(%struct._InpMtx* %inpmtx) #7, !dbg !687
  call void @llvm.dbg.value(metadata !{double* %call17}, i64 0, metadata !198), !dbg !687
  call void @llvm.dbg.value(metadata !{i32* %nnonzeros}, i64 0, metadata !205), !dbg !688
  %8 = load i32* %nnonzeros, align 4, !dbg !688, !tbaa !271
  call void @InpMtx_setNent(%struct._InpMtx* %inpmtx, i32 %8) #7, !dbg !688
  %call18 = call i32 @readHB_mat_double(i8* %fn, i32* %call14, i32* %call16, double* %call17) #7, !dbg !689
  call void @llvm.dbg.value(metadata !{i32 %call18}, i64 0, metadata !208), !dbg !689
  %cmp19 = icmp eq i32 %call18, 1, !dbg !690
  br i1 %cmp19, label %for.cond.preheader, label %return, !dbg !690

for.cond.preheader:                               ; preds = %sw.epilog
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !204), !dbg !691
  %9 = load i32* %ncol, align 4, !dbg !691, !tbaa !271
  %cmp2392 = icmp slt i32 %9, 0, !dbg !691
  br i1 %cmp2392, label %for.cond26.preheader, label %for.body, !dbg !691

for.cond26.preheader:                             ; preds = %for.body, %for.cond.preheader
  %10 = phi i32 [ %9, %for.cond.preheader ], [ %13, %for.body ]
  call void @llvm.dbg.value(metadata !{i32* %nnonzeros}, i64 0, metadata !205), !dbg !693
  %11 = load i32* %nnonzeros, align 4, !dbg !693, !tbaa !271
  %cmp2790 = icmp sgt i32 %11, 0, !dbg !693
  br i1 %cmp2790, label %for.body29, label %for.cond36.preheader, !dbg !693

for.body:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %for.body ], [ 0, %for.cond.preheader ]
  %arrayidx25 = getelementptr inbounds i32* %call14, i64 %indvars.iv98, !dbg !695
  %12 = load i32* %arrayidx25, align 4, !dbg !695, !tbaa !271
  %dec = add nsw i32 %12, -1, !dbg !695
  store i32 %dec, i32* %arrayidx25, align 4, !dbg !695, !tbaa !271
  %indvars.iv.next99 = add i64 %indvars.iv98, 1, !dbg !691
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !204), !dbg !691
  %13 = load i32* %ncol, align 4, !dbg !691, !tbaa !271
  %14 = trunc i64 %indvars.iv98 to i32, !dbg !691
  %cmp23 = icmp slt i32 %14, %13, !dbg !691
  br i1 %cmp23, label %for.body, label %for.cond26.preheader, !dbg !691

for.cond26.for.cond36.preheader_crit_edge:        ; preds = %for.body29
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !204), !dbg !697
  %.pre = load i32* %ncol, align 4, !dbg !697, !tbaa !271
  br label %for.cond36.preheader, !dbg !693

for.cond36.preheader:                             ; preds = %for.cond26.for.cond36.preheader_crit_edge, %for.cond26.preheader
  %15 = phi i32 [ %.pre, %for.cond26.for.cond36.preheader_crit_edge ], [ %10, %for.cond26.preheader ]
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !204), !dbg !697
  %cmp3788 = icmp sgt i32 %15, 0, !dbg !697
  br i1 %cmp3788, label %for.body39, label %for.end56, !dbg !697

for.body29:                                       ; preds = %for.cond26.preheader, %for.body29
  %indvars.iv96 = phi i64 [ %indvars.iv.next97, %for.body29 ], [ 0, %for.cond26.preheader ]
  %arrayidx31 = getelementptr inbounds i32* %call16, i64 %indvars.iv96, !dbg !699
  %16 = load i32* %arrayidx31, align 4, !dbg !699, !tbaa !271
  %dec32 = add nsw i32 %16, -1, !dbg !699
  store i32 %dec32, i32* %arrayidx31, align 4, !dbg !699, !tbaa !271
  %indvars.iv.next97 = add i64 %indvars.iv96, 1, !dbg !693
  call void @llvm.dbg.value(metadata !{i32* %nnonzeros}, i64 0, metadata !205), !dbg !693
  %17 = load i32* %nnonzeros, align 4, !dbg !693, !tbaa !271
  %18 = trunc i64 %indvars.iv.next97 to i32, !dbg !693
  %cmp27 = icmp slt i32 %18, %17, !dbg !693
  br i1 %cmp27, label %for.body29, label %for.cond26.for.cond36.preheader_crit_edge, !dbg !693

for.cond45.for.cond36.loopexit_crit_edge:         ; preds = %for.body48
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !204), !dbg !697
  %.pre100 = load i32* %ncol, align 4, !dbg !697, !tbaa !271
  br label %for.cond36.loopexit, !dbg !701

for.cond36.loopexit:                              ; preds = %for.cond45.for.cond36.loopexit_crit_edge, %for.body39
  %19 = phi i32 [ %.pre100, %for.cond45.for.cond36.loopexit_crit_edge ], [ %21, %for.body39 ], !dbg !697
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !204), !dbg !697
  %20 = trunc i64 %indvars.iv.next95 to i32, !dbg !697
  %cmp37 = icmp slt i32 %20, %19, !dbg !697
  br i1 %cmp37, label %for.body39, label %for.end56, !dbg !697

for.body39:                                       ; preds = %for.cond36.loopexit, %for.cond36.preheader
  %21 = phi i32 [ %15, %for.cond36.preheader ], [ %19, %for.cond36.loopexit ]
  %indvars.iv94 = phi i64 [ 0, %for.cond36.preheader ], [ %indvars.iv.next95, %for.cond36.loopexit ]
  %arrayidx41 = getelementptr inbounds i32* %call14, i64 %indvars.iv94, !dbg !704
  %22 = load i32* %arrayidx41, align 4, !dbg !704, !tbaa !271
  call void @llvm.dbg.value(metadata !{i32 %22}, i64 0, metadata !201), !dbg !704
  %indvars.iv.next95 = add i64 %indvars.iv94, 1, !dbg !697
  %arrayidx44 = getelementptr inbounds i32* %call14, i64 %indvars.iv.next95, !dbg !705
  %23 = load i32* %arrayidx44, align 4, !dbg !705, !tbaa !271
  %sub = add nsw i32 %23, -1, !dbg !705
  call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !200), !dbg !705
  call void @llvm.dbg.value(metadata !{i32 %22}, i64 0, metadata !199), !dbg !701
  %cmp4686 = icmp sgt i32 %22, %sub, !dbg !701
  br i1 %cmp4686, label %for.cond36.loopexit, label %for.body48.lr.ph, !dbg !701

for.body48.lr.ph:                                 ; preds = %for.body39
  %24 = sext i32 %22 to i64
  br label %for.body48, !dbg !701

for.body48:                                       ; preds = %for.body48, %for.body48.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body48 ], [ %24, %for.body48.lr.ph ]
  %arrayidx50 = getelementptr inbounds i32* %call15, i64 %indvars.iv, !dbg !706
  %25 = trunc i64 %indvars.iv94 to i32, !dbg !706
  store i32 %25, i32* %arrayidx50, align 4, !dbg !706, !tbaa !271
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !701
  %26 = trunc i64 %indvars.iv to i32, !dbg !701
  %cmp46 = icmp slt i32 %26, %sub, !dbg !701
  br i1 %cmp46, label %for.body48, label %for.cond45.for.cond36.loopexit_crit_edge, !dbg !701

for.end56:                                        ; preds = %for.cond36.loopexit, %for.cond36.preheader
  call void @IVfree(i32* %call14) #7, !dbg !708
  call void @llvm.dbg.value(metadata !{i8** %type}, i64 0, metadata !197), !dbg !709
  %27 = load i8** %type, align 8, !dbg !709, !tbaa !222
  call void @CVfree(i8* %27) #7, !dbg !709
  br label %return, !dbg !710

return:                                           ; preds = %sw.epilog, %if.end6, %for.end56, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %for.end56 ], [ %call7, %if.end6 ], [ %call18, %sw.epilog ]
  ret i32 %retval.0, !dbg !710
}

; Function Attrs: optsize
declare i32 @readHB_info(i8*, i32*, i32*, i32*, i8**, i32*) #4

; Function Attrs: optsize
declare void @InpMtx_init(%struct._InpMtx*, i32, i32, i32, i32) #4

; Function Attrs: optsize
declare i32* @IVinit(i32, i32) #4

; Function Attrs: optsize
declare void @InpMtx_setNent(%struct._InpMtx*, i32) #4

; Function Attrs: optsize
declare i32 @readHB_mat_double(i8*, i32*, i32*, double*) #4

; Function Attrs: optsize
declare void @IVfree(i32*) #4

; Function Attrs: optsize
declare void @CVfree(i8*) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #6

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind optsize readonly }
attributes #9 = { optsize }
attributes #10 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !212, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !111, metadata !122, metadata !128, metadata !136, metadata !141, metadata !150, metadata !172, metadata !176, metadata !193}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_readFromFile", metadata !"InpMtx_readFromFile", metadata !"", i32 23, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._InpMtx*, i8*)* @InpMtx_readFromFile, null, null, metadata !49, i32 26} ; [ DW_TAG_subprogram ] [line 23] [def] [scope 26] [InpMtx_readFromFile]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9, metadata !47}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from InpMtx]
!10 = metadata !{i32 786454, metadata !1, null, metadata !"InpMtx", i32 51, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [InpMtx] [line 51, size 0, align 0, offset 0] [from _InpMtx]
!11 = metadata !{i32 786451, metadata !12, null, metadata !"_InpMtx", i32 52, i64 1472, i64 64, i32 0, i32 0, null, metadata !13, i32 0, null, null} ; [ DW_TAG_structure_type ] [_InpMtx] [line 52, size 1472, align 64, offset 0] [from ]
!12 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/../../InpMtx/InpMtx.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!13 = metadata !{metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !21, metadata !31, metadata !32, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46}
!14 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"coordType", i32 53, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [coordType] [line 53, size 32, align 32, offset 0] [from int]
!15 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"storageMode", i32 54, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [storageMode] [line 54, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"inputMode", i32 55, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [inputMode] [line 55, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"maxnent", i32 56, i64 32, i64 32, i64 96, i32 0, metadata !8} ; [ DW_TAG_member ] [maxnent] [line 56, size 32, align 32, offset 96] [from int]
!18 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nent", i32 57, i64 32, i64 32, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [nent] [line 57, size 32, align 32, offset 128] [from int]
!19 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"resizeMultiple", i32 58, i64 64, i64 64, i64 192, i32 0, metadata !20} ; [ DW_TAG_member ] [resizeMultiple] [line 58, size 64, align 64, offset 192] [from double]
!20 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!21 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"ivec1IV", i32 59, i64 192, i64 64, i64 256, i32 0, metadata !22} ; [ DW_TAG_member ] [ivec1IV] [line 59, size 192, align 64, offset 256] [from IV]
!22 = metadata !{i32 786454, metadata !12, null, metadata !"IV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ] [IV] [line 20, size 0, align 0, offset 0] [from _IV]
!23 = metadata !{i32 786451, metadata !24, null, metadata !"_IV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !25, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IV] [line 21, size 192, align 64, offset 0] [from ]
!24 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/../../IV/IV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!25 = metadata !{metadata !26, metadata !27, metadata !28, metadata !29}
!26 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!27 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!28 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!29 = metadata !{i32 786445, metadata !24, metadata !23, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !30} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!30 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!31 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"ivec2IV", i32 60, i64 192, i64 64, i64 448, i32 0, metadata !22} ; [ DW_TAG_member ] [ivec2IV] [line 60, size 192, align 64, offset 448] [from IV]
!32 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"dvecDV", i32 61, i64 192, i64 64, i64 640, i32 0, metadata !33} ; [ DW_TAG_member ] [dvecDV] [line 61, size 192, align 64, offset 640] [from DV]
!33 = metadata !{i32 786454, metadata !12, null, metadata !"DV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !34} ; [ DW_TAG_typedef ] [DV] [line 20, size 0, align 0, offset 0] [from _DV]
!34 = metadata !{i32 786451, metadata !35, null, metadata !"_DV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !36, i32 0, null, null} ; [ DW_TAG_structure_type ] [_DV] [line 21, size 192, align 64, offset 0] [from ]
!35 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/../../DV/DV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!36 = metadata !{metadata !37, metadata !38, metadata !39, metadata !40}
!37 = metadata !{i32 786445, metadata !35, metadata !34, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!38 = metadata !{i32 786445, metadata !35, metadata !34, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!39 = metadata !{i32 786445, metadata !35, metadata !34, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!40 = metadata !{i32 786445, metadata !35, metadata !34, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !41} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!41 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !20} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!42 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"maxnvector", i32 62, i64 32, i64 32, i64 832, i32 0, metadata !8} ; [ DW_TAG_member ] [maxnvector] [line 62, size 32, align 32, offset 832] [from int]
!43 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nvector", i32 63, i64 32, i64 32, i64 864, i32 0, metadata !8} ; [ DW_TAG_member ] [nvector] [line 63, size 32, align 32, offset 864] [from int]
!44 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"vecidsIV", i32 64, i64 192, i64 64, i64 896, i32 0, metadata !22} ; [ DW_TAG_member ] [vecidsIV] [line 64, size 192, align 64, offset 896] [from IV]
!45 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"sizesIV", i32 65, i64 192, i64 64, i64 1088, i32 0, metadata !22} ; [ DW_TAG_member ] [sizesIV] [line 65, size 192, align 64, offset 1088] [from IV]
!46 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"offsetsIV", i32 66, i64 192, i64 64, i64 1280, i32 0, metadata !22} ; [ DW_TAG_member ] [offsetsIV] [line 66, size 192, align 64, offset 1280] [from IV]
!47 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !48} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!48 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!49 = metadata !{metadata !50, metadata !51, metadata !52, metadata !108, metadata !109, metadata !110}
!50 = metadata !{i32 786689, metadata !4, metadata !"inpmtx", metadata !5, i32 16777240, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 24]
!51 = metadata !{i32 786689, metadata !4, metadata !"fn", metadata !5, i32 33554457, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 25]
!52 = metadata !{i32 786688, metadata !4, metadata !"fp", metadata !5, i32 27, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 27]
!53 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !54} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!54 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !55} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!55 = metadata !{i32 786451, metadata !56, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !57, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!56 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!57 = metadata !{metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !78, metadata !79, metadata !80, metadata !81, metadata !84, metadata !86, metadata !88, metadata !92, metadata !94, metadata !96, metadata !97, metadata !98, metadata !99, metadata !100, metadata !103, metadata !104}
!58 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!59 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !47} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!60 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !47} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!61 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !47} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!62 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !47} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!63 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !47} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!64 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !47} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!65 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !47} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!66 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !47} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!67 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !47} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!68 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !47} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!69 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !47} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!70 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !71} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!71 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !72} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!72 = metadata !{i32 786451, metadata !56, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !73, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!73 = metadata !{metadata !74, metadata !75, metadata !77}
!74 = metadata !{i32 786445, metadata !56, metadata !72, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !71} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!75 = metadata !{i32 786445, metadata !56, metadata !72, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !76} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!76 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !55} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!77 = metadata !{i32 786445, metadata !56, metadata !72, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!78 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !76} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!79 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !8} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!80 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !8} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!81 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !82} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!82 = metadata !{i32 786454, metadata !56, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !83} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!83 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!84 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !85} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!85 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!86 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !87} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!87 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!88 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !89} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!89 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !48, metadata !90, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!90 = metadata !{metadata !91}
!91 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!92 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !93} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!93 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!94 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !95} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!95 = metadata !{i32 786454, metadata !56, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !83} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!96 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !93} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!97 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !93} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!98 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !93} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!99 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !93} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!100 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !101} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!101 = metadata !{i32 786454, metadata !56, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !102} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!102 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!103 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !8} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!104 = metadata !{i32 786445, metadata !56, metadata !55, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !105} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!105 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !48, metadata !106, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!106 = metadata !{metadata !107}
!107 = metadata !{i32 786465, i64 0, i64 20}      ; [ DW_TAG_subrange_type ] [0, 19]
!108 = metadata !{i32 786688, metadata !4, metadata !"fnlength", metadata !5, i32 28, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fnlength] [line 28]
!109 = metadata !{i32 786688, metadata !4, metadata !"rc", metadata !5, i32 28, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 28]
!110 = metadata !{i32 786688, metadata !4, metadata !"sulength", metadata !5, i32 28, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sulength] [line 28]
!111 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_readFromFormattedFile", metadata !"InpMtx_readFromFormattedFile", metadata !"", i32 92, metadata !112, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._InpMtx*, %struct._IO_FILE*)* @InpMtx_readFromFormattedFile, null, null, metadata !114, i32 95} ; [ DW_TAG_subprogram ] [line 92] [def] [scope 95] [InpMtx_readFromFormattedFile]
!112 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !113, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!113 = metadata !{metadata !8, metadata !9, metadata !53}
!114 = metadata !{metadata !115, metadata !116, metadata !117, metadata !118}
!115 = metadata !{i32 786689, metadata !111, metadata !"inpmtx", metadata !5, i32 16777309, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 93]
!116 = metadata !{i32 786689, metadata !111, metadata !"fp", metadata !5, i32 33554526, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 94]
!117 = metadata !{i32 786688, metadata !111, metadata !"rc", metadata !5, i32 96, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 96]
!118 = metadata !{i32 786688, metadata !111, metadata !"itemp", metadata !5, i32 97, metadata !119, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [itemp] [line 97]
!119 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 32, i32 0, i32 0, metadata !8, metadata !120, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 32, offset 0] [from int]
!120 = metadata !{metadata !121}
!121 = metadata !{i32 786465, i64 0, i64 5}       ; [ DW_TAG_subrange_type ] [0, 4]
!122 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_readFromBinaryFile", metadata !"InpMtx_readFromBinaryFile", metadata !"", i32 158, metadata !112, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._InpMtx*, %struct._IO_FILE*)* @InpMtx_readFromBinaryFile, null, null, metadata !123, i32 161} ; [ DW_TAG_subprogram ] [line 158] [def] [scope 161] [InpMtx_readFromBinaryFile]
!123 = metadata !{metadata !124, metadata !125, metadata !126, metadata !127}
!124 = metadata !{i32 786689, metadata !122, metadata !"inpmtx", metadata !5, i32 16777375, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 159]
!125 = metadata !{i32 786689, metadata !122, metadata !"fp", metadata !5, i32 33554592, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 160]
!126 = metadata !{i32 786688, metadata !122, metadata !"rc", metadata !5, i32 162, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 162]
!127 = metadata !{i32 786688, metadata !122, metadata !"itemp", metadata !5, i32 163, metadata !119, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [itemp] [line 163]
!128 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_writeToFile", metadata !"InpMtx_writeToFile", metadata !"", i32 231, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._InpMtx*, i8*)* @InpMtx_writeToFile, null, null, metadata !129, i32 234} ; [ DW_TAG_subprogram ] [line 231] [def] [scope 234] [InpMtx_writeToFile]
!129 = metadata !{metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135}
!130 = metadata !{i32 786689, metadata !128, metadata !"inpmtx", metadata !5, i32 16777448, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 232]
!131 = metadata !{i32 786689, metadata !128, metadata !"fn", metadata !5, i32 33554665, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 233]
!132 = metadata !{i32 786688, metadata !128, metadata !"fp", metadata !5, i32 235, metadata !53, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 235]
!133 = metadata !{i32 786688, metadata !128, metadata !"fnlength", metadata !5, i32 236, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fnlength] [line 236]
!134 = metadata !{i32 786688, metadata !128, metadata !"rc", metadata !5, i32 236, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 236]
!135 = metadata !{i32 786688, metadata !128, metadata !"sulength", metadata !5, i32 236, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sulength] [line 236]
!136 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_writeToFormattedFile", metadata !"InpMtx_writeToFormattedFile", metadata !"", i32 306, metadata !112, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._InpMtx*, %struct._IO_FILE*)* @InpMtx_writeToFormattedFile, null, null, metadata !137, i32 309} ; [ DW_TAG_subprogram ] [line 306] [def] [scope 309] [InpMtx_writeToFormattedFile]
!137 = metadata !{metadata !138, metadata !139, metadata !140}
!138 = metadata !{i32 786689, metadata !136, metadata !"inpmtx", metadata !5, i32 16777523, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 307]
!139 = metadata !{i32 786689, metadata !136, metadata !"fp", metadata !5, i32 33554740, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 308]
!140 = metadata !{i32 786688, metadata !136, metadata !"rc", metadata !5, i32 310, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 310]
!141 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_writeToBinaryFile", metadata !"InpMtx_writeToBinaryFile", metadata !"", i32 421, metadata !112, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._InpMtx*, %struct._IO_FILE*)* @InpMtx_writeToBinaryFile, null, null, metadata !142, i32 424} ; [ DW_TAG_subprogram ] [line 421] [def] [scope 424] [InpMtx_writeToBinaryFile]
!142 = metadata !{metadata !143, metadata !144, metadata !145, metadata !146}
!143 = metadata !{i32 786689, metadata !141, metadata !"inpmtx", metadata !5, i32 16777638, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 422]
!144 = metadata !{i32 786689, metadata !141, metadata !"fp", metadata !5, i32 33554855, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 423]
!145 = metadata !{i32 786688, metadata !141, metadata !"rc", metadata !5, i32 425, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 425]
!146 = metadata !{i32 786688, metadata !141, metadata !"itemp", metadata !5, i32 426, metadata !147, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [itemp] [line 426]
!147 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 192, i64 32, i32 0, i32 0, metadata !8, metadata !148, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 192, align 32, offset 0] [from int]
!148 = metadata !{metadata !149}
!149 = metadata !{i32 786465, i64 0, i64 6}       ; [ DW_TAG_subrange_type ] [0, 5]
!150 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_writeForHumanEye", metadata !"InpMtx_writeForHumanEye", metadata !"", i32 538, metadata !112, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._InpMtx*, %struct._IO_FILE*)* @InpMtx_writeForHumanEye, null, null, metadata !151, i32 541} ; [ DW_TAG_subprogram ] [line 538] [def] [scope 541] [InpMtx_writeForHumanEye]
!151 = metadata !{metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161, metadata !162, metadata !165, metadata !166, metadata !168, metadata !170}
!152 = metadata !{i32 786689, metadata !150, metadata !"inpmtx", metadata !5, i32 16777755, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 539]
!153 = metadata !{i32 786689, metadata !150, metadata !"fp", metadata !5, i32 33554972, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 540]
!154 = metadata !{i32 786688, metadata !150, metadata !"entries", metadata !5, i32 542, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 542]
!155 = metadata !{i32 786688, metadata !150, metadata !"ierr", metadata !5, i32 543, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ierr] [line 543]
!156 = metadata !{i32 786688, metadata !150, metadata !"ii", metadata !5, i32 543, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 543]
!157 = metadata !{i32 786688, metadata !150, metadata !"iv", metadata !5, i32 543, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iv] [line 543]
!158 = metadata !{i32 786688, metadata !150, metadata !"rc", metadata !5, i32 543, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 543]
!159 = metadata !{i32 786688, metadata !150, metadata !"size", metadata !5, i32 543, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 543]
!160 = metadata !{i32 786688, metadata !150, metadata !"vecid", metadata !5, i32 543, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vecid] [line 543]
!161 = metadata !{i32 786688, metadata !150, metadata !"indices", metadata !5, i32 544, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indices] [line 544]
!162 = metadata !{i32 786688, metadata !163, metadata !"ivec1", metadata !5, i32 564, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ivec1] [line 564]
!163 = metadata !{i32 786443, metadata !1, metadata !164, i32 563, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!164 = metadata !{i32 786443, metadata !1, metadata !150, i32 562, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!165 = metadata !{i32 786688, metadata !163, metadata !"ivec2", metadata !5, i32 565, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ivec2] [line 565]
!166 = metadata !{i32 786688, metadata !167, metadata !"dvec", metadata !5, i32 576, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dvec] [line 576]
!167 = metadata !{i32 786443, metadata !1, metadata !163, i32 575, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!168 = metadata !{i32 786688, metadata !169, metadata !"dvec", metadata !5, i32 583, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dvec] [line 583]
!169 = metadata !{i32 786443, metadata !1, metadata !163, i32 582, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!170 = metadata !{i32 786688, metadata !171, metadata !"vecids", metadata !5, i32 590, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [vecids] [line 590]
!171 = metadata !{i32 786443, metadata !1, metadata !164, i32 589, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!172 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_writeStats", metadata !"InpMtx_writeStats", metadata !"", i32 635, metadata !112, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._InpMtx*, %struct._IO_FILE*)* @InpMtx_writeStats, null, null, metadata !173, i32 638} ; [ DW_TAG_subprogram ] [line 635] [def] [scope 638] [InpMtx_writeStats]
!173 = metadata !{metadata !174, metadata !175}
!174 = metadata !{i32 786689, metadata !172, metadata !"inpmtx", metadata !5, i32 16777852, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 636]
!175 = metadata !{i32 786689, metadata !172, metadata !"fp", metadata !5, i32 33555069, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 637]
!176 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_writeForMatlab", metadata !"InpMtx_writeForMatlab", metadata !"", i32 712, metadata !177, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._InpMtx*, i8*, %struct._IO_FILE*)* @InpMtx_writeForMatlab, null, null, metadata !179, i32 716} ; [ DW_TAG_subprogram ] [line 712] [def] [scope 716] [InpMtx_writeForMatlab]
!177 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !178, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!178 = metadata !{metadata !8, metadata !9, metadata !47, metadata !53}
!179 = metadata !{metadata !180, metadata !181, metadata !182, metadata !183, metadata !184, metadata !185, metadata !186, metadata !188, metadata !189, metadata !191}
!180 = metadata !{i32 786689, metadata !176, metadata !"inpmtx", metadata !5, i32 16777929, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 713]
!181 = metadata !{i32 786689, metadata !176, metadata !"mtxname", metadata !5, i32 33555146, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxname] [line 714]
!182 = metadata !{i32 786689, metadata !176, metadata !"fp", metadata !5, i32 50332363, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 715]
!183 = metadata !{i32 786688, metadata !176, metadata !"ii", metadata !5, i32 717, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 717]
!184 = metadata !{i32 786688, metadata !176, metadata !"oldCoordType", metadata !5, i32 717, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [oldCoordType] [line 717]
!185 = metadata !{i32 786688, metadata !176, metadata !"oldStorageMode", metadata !5, i32 717, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [oldStorageMode] [line 717]
!186 = metadata !{i32 786688, metadata !187, metadata !"ivec1", metadata !5, i32 738, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ivec1] [line 738]
!187 = metadata !{i32 786443, metadata !1, metadata !176, i32 737, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!188 = metadata !{i32 786688, metadata !187, metadata !"ivec2", metadata !5, i32 739, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ivec2] [line 739]
!189 = metadata !{i32 786688, metadata !190, metadata !"dvec", metadata !5, i32 742, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dvec] [line 742]
!190 = metadata !{i32 786443, metadata !1, metadata !187, i32 741, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!191 = metadata !{i32 786688, metadata !192, metadata !"dvec", metadata !5, i32 748, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [dvec] [line 748]
!192 = metadata !{i32 786443, metadata !1, metadata !187, i32 747, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!193 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"InpMtx_readFromHBfile", metadata !"InpMtx_readFromHBfile", metadata !"", i32 777, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._InpMtx*, i8*)* @InpMtx_readFromHBfile, null, null, metadata !194, i32 780} ; [ DW_TAG_subprogram ] [line 777] [def] [scope 780] [InpMtx_readFromHBfile]
!194 = metadata !{metadata !195, metadata !196, metadata !197, metadata !198, metadata !199, metadata !200, metadata !201, metadata !202, metadata !203, metadata !204, metadata !205, metadata !206, metadata !207, metadata !208, metadata !209, metadata !210, metadata !211}
!195 = metadata !{i32 786689, metadata !193, metadata !"inpmtx", metadata !5, i32 16777994, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [inpmtx] [line 778]
!196 = metadata !{i32 786689, metadata !193, metadata !"fn", metadata !5, i32 33555211, metadata !47, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 779]
!197 = metadata !{i32 786688, metadata !193, metadata !"type", metadata !5, i32 781, metadata !47, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [type] [line 781]
!198 = metadata !{i32 786688, metadata !193, metadata !"values", metadata !5, i32 782, metadata !41, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [values] [line 782]
!199 = metadata !{i32 786688, metadata !193, metadata !"ii", metadata !5, i32 783, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 783]
!200 = metadata !{i32 786688, metadata !193, metadata !"iiend", metadata !5, i32 783, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iiend] [line 783]
!201 = metadata !{i32 786688, metadata !193, metadata !"iistart", metadata !5, i32 783, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [iistart] [line 783]
!202 = metadata !{i32 786688, metadata !193, metadata !"inputMode", metadata !5, i32 783, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inputMode] [line 783]
!203 = metadata !{i32 786688, metadata !193, metadata !"jcol", metadata !5, i32 783, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcol] [line 783]
!204 = metadata !{i32 786688, metadata !193, metadata !"ncol", metadata !5, i32 783, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 783]
!205 = metadata !{i32 786688, metadata !193, metadata !"nnonzeros", metadata !5, i32 783, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nnonzeros] [line 783]
!206 = metadata !{i32 786688, metadata !193, metadata !"nrhs", metadata !5, i32 784, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrhs] [line 784]
!207 = metadata !{i32 786688, metadata !193, metadata !"nrow", metadata !5, i32 784, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 784]
!208 = metadata !{i32 786688, metadata !193, metadata !"rc", metadata !5, i32 784, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 784]
!209 = metadata !{i32 786688, metadata !193, metadata !"colind", metadata !5, i32 785, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colind] [line 785]
!210 = metadata !{i32 786688, metadata !193, metadata !"colptr", metadata !5, i32 785, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colptr] [line 785]
!211 = metadata !{i32 786688, metadata !193, metadata !"rowind", metadata !5, i32 785, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowind] [line 785]
!212 = metadata !{metadata !213, metadata !216}
!213 = metadata !{i32 786484, i32 0, null, metadata !"suffixf", metadata !"suffixf", metadata !"", metadata !5, i32 6, metadata !214, i32 1, i32 1, null, null}
!214 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !215} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!215 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !48} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!216 = metadata !{i32 786484, i32 0, null, metadata !"suffixb", metadata !"suffixb", metadata !"", metadata !5, i32 5, metadata !214, i32 1, i32 1, null, null}
!217 = metadata !{i32 24, i32 0, metadata !4, null}
!218 = metadata !{i32 25, i32 0, metadata !4, null}
!219 = metadata !{i32 34, i32 0, metadata !4, null}
!220 = metadata !{i32 35, i32 0, metadata !221, null}
!221 = metadata !{i32 786443, metadata !1, metadata !4, i32 34, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!222 = metadata !{metadata !"any pointer", metadata !223}
!223 = metadata !{metadata !"omnipotent char", metadata !224}
!224 = metadata !{metadata !"Simple C/C++ TBAA"}
!225 = metadata !{i32 37, i32 0, metadata !221, null}
!226 = metadata !{i32 44, i32 0, metadata !4, null}
!227 = metadata !{i32 8}
!228 = metadata !{i32 45, i32 0, metadata !4, null}
!229 = metadata !{i32 46, i32 0, metadata !4, null}
!230 = metadata !{i32 47, i32 0, metadata !231, null}
!231 = metadata !{i32 786443, metadata !1, metadata !4, i32 46, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!232 = metadata !{i32 48, i32 0, metadata !233, null}
!233 = metadata !{i32 786443, metadata !1, metadata !231, i32 47, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!234 = metadata !{i32 49, i32 0, metadata !235, null}
!235 = metadata !{i32 786443, metadata !1, metadata !233, i32 48, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!236 = metadata !{i32 51, i32 0, metadata !235, null}
!237 = metadata !{i32 52, i32 0, metadata !235, null}
!238 = metadata !{i32 53, i32 0, metadata !239, null}
!239 = metadata !{i32 786443, metadata !1, metadata !233, i32 52, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!240 = metadata !{i32 54, i32 0, metadata !239, null}
!241 = metadata !{i32 56, i32 0, metadata !231, null}
!242 = metadata !{i32 57, i32 0, metadata !243, null}
!243 = metadata !{i32 786443, metadata !1, metadata !231, i32 56, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!244 = metadata !{i32 58, i32 0, metadata !245, null} ; [ DW_TAG_imported_module ]
!245 = metadata !{i32 786443, metadata !1, metadata !243, i32 57, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!246 = metadata !{i32 60, i32 0, metadata !245, null}
!247 = metadata !{i32 61, i32 0, metadata !245, null}
!248 = metadata !{i32 62, i32 0, metadata !249, null}
!249 = metadata !{i32 786443, metadata !1, metadata !243, i32 61, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!250 = metadata !{i32 63, i32 0, metadata !249, null}
!251 = metadata !{i32 66, i32 0, metadata !252, null}
!252 = metadata !{i32 786443, metadata !1, metadata !231, i32 65, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!253 = metadata !{i32 70, i32 0, metadata !252, null}
!254 = metadata !{i32 73, i32 0, metadata !255, null}
!255 = metadata !{i32 786443, metadata !1, metadata !4, i32 72, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!256 = metadata !{i32 77, i32 0, metadata !255, null}
!257 = metadata !{i32 79, i32 0, metadata !4, null}
!258 = metadata !{i32 159, i32 0, metadata !122, null}
!259 = metadata !{i32 160, i32 0, metadata !122, null}
!260 = metadata !{i32 163, i32 0, metadata !122, null}
!261 = metadata !{i32 169, i32 0, metadata !122, null}
!262 = metadata !{i32 170, i32 0, metadata !263, null}
!263 = metadata !{i32 786443, metadata !1, metadata !122, i32 169, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!264 = metadata !{i32 172, i32 0, metadata !263, null}
!265 = metadata !{i32 179, i32 0, metadata !122, null}
!266 = metadata !{i32 186, i32 0, metadata !122, null}
!267 = metadata !{i32 187, i32 0, metadata !268, null}
!268 = metadata !{i32 786443, metadata !1, metadata !122, i32 186, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!269 = metadata !{i32 189, i32 0, metadata !268, null}
!270 = metadata !{i32 191, i32 0, metadata !122, null}
!271 = metadata !{metadata !"int", metadata !223}
!272 = metadata !{i32 192, i32 0, metadata !122, null}
!273 = metadata !{i32 193, i32 0, metadata !122, null}
!274 = metadata !{i32 194, i32 0, metadata !122, null}
!275 = metadata !{i32 195, i32 0, metadata !122, null}
!276 = metadata !{i32 196, i32 0, metadata !122, null}
!277 = metadata !{i32 197, i32 0, metadata !278, null}
!278 = metadata !{i32 786443, metadata !1, metadata !122, i32 196, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!279 = metadata !{i32 198, i32 0, metadata !278, null}
!280 = metadata !{i32 199, i32 0, metadata !278, null}
!281 = metadata !{i32 201, i32 0, metadata !282, null}
!282 = metadata !{i32 786443, metadata !1, metadata !278, i32 200, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!283 = metadata !{i32 202, i32 0, metadata !282, null}
!284 = metadata !{i32 204, i32 0, metadata !122, null}
!285 = metadata !{i32 205, i32 0, metadata !286, null}
!286 = metadata !{i32 786443, metadata !1, metadata !122, i32 204, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!287 = metadata !{i32 206, i32 0, metadata !286, null}
!288 = metadata !{i32 207, i32 0, metadata !286, null}
!289 = metadata !{i32 208, i32 0, metadata !286, null}
!290 = metadata !{i32 209, i32 0, metadata !122, null}
!291 = metadata !{i32 211, i32 0, metadata !122, null}
!292 = metadata !{i32 93, i32 0, metadata !111, null}
!293 = metadata !{i32 94, i32 0, metadata !111, null}
!294 = metadata !{i32 97, i32 0, metadata !111, null}
!295 = metadata !{i32 103, i32 0, metadata !111, null}
!296 = metadata !{i32 104, i32 0, metadata !297, null}
!297 = metadata !{i32 786443, metadata !1, metadata !111, i32 103, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!298 = metadata !{i32 106, i32 0, metadata !297, null}
!299 = metadata !{i32 113, i32 0, metadata !111, null}
!300 = metadata !{i32 120, i32 0, metadata !111, null}
!301 = metadata !{i32 121, i32 0, metadata !302, null}
!302 = metadata !{i32 786443, metadata !1, metadata !111, i32 120, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!303 = metadata !{i32 123, i32 0, metadata !302, null}
!304 = metadata !{i32 125, i32 0, metadata !111, null}
!305 = metadata !{i32 126, i32 0, metadata !111, null}
!306 = metadata !{i32 127, i32 0, metadata !111, null}
!307 = metadata !{i32 128, i32 0, metadata !111, null}
!308 = metadata !{i32 129, i32 0, metadata !111, null}
!309 = metadata !{i32 130, i32 0, metadata !111, null}
!310 = metadata !{i32 131, i32 0, metadata !311, null}
!311 = metadata !{i32 786443, metadata !1, metadata !111, i32 130, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!312 = metadata !{i32 132, i32 0, metadata !311, null}
!313 = metadata !{i32 133, i32 0, metadata !311, null}
!314 = metadata !{i32 135, i32 0, metadata !315, null}
!315 = metadata !{i32 786443, metadata !1, metadata !311, i32 134, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!316 = metadata !{i32 136, i32 0, metadata !315, null}
!317 = metadata !{i32 138, i32 0, metadata !111, null}
!318 = metadata !{i32 139, i32 0, metadata !319, null}
!319 = metadata !{i32 786443, metadata !1, metadata !111, i32 138, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!320 = metadata !{i32 140, i32 0, metadata !319, null}
!321 = metadata !{i32 141, i32 0, metadata !319, null}
!322 = metadata !{i32 142, i32 0, metadata !319, null}
!323 = metadata !{i32 143, i32 0, metadata !111, null}
!324 = metadata !{i32 145, i32 0, metadata !111, null}
!325 = metadata !{i32 232, i32 0, metadata !128, null}
!326 = metadata !{i32 233, i32 0, metadata !128, null}
!327 = metadata !{i32 242, i32 0, metadata !128, null}
!328 = metadata !{i32 243, i32 0, metadata !329, null}
!329 = metadata !{i32 786443, metadata !1, metadata !128, i32 242, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!330 = metadata !{i32 245, i32 0, metadata !329, null}
!331 = metadata !{i32 252, i32 0, metadata !128, null}
!332 = metadata !{i32 253, i32 0, metadata !128, null}
!333 = metadata !{i32 254, i32 0, metadata !128, null}
!334 = metadata !{i32 255, i32 0, metadata !335, null}
!335 = metadata !{i32 786443, metadata !1, metadata !128, i32 254, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!336 = metadata !{i32 256, i32 0, metadata !337, null}
!337 = metadata !{i32 786443, metadata !1, metadata !335, i32 255, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!338 = metadata !{i32 257, i32 0, metadata !339, null}
!339 = metadata !{i32 786443, metadata !1, metadata !337, i32 256, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!340 = metadata !{i32 259, i32 0, metadata !339, null}
!341 = metadata !{i32 260, i32 0, metadata !339, null}
!342 = metadata !{i32 261, i32 0, metadata !343, null}
!343 = metadata !{i32 786443, metadata !1, metadata !337, i32 260, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!344 = metadata !{i32 262, i32 0, metadata !343, null}
!345 = metadata !{i32 264, i32 0, metadata !335, null}
!346 = metadata !{i32 265, i32 0, metadata !347, null}
!347 = metadata !{i32 786443, metadata !1, metadata !335, i32 264, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!348 = metadata !{i32 266, i32 0, metadata !349, null}
!349 = metadata !{i32 786443, metadata !1, metadata !347, i32 265, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!350 = metadata !{i32 268, i32 0, metadata !349, null}
!351 = metadata !{i32 269, i32 0, metadata !349, null}
!352 = metadata !{i32 270, i32 0, metadata !353, null}
!353 = metadata !{i32 786443, metadata !1, metadata !347, i32 269, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!354 = metadata !{i32 271, i32 0, metadata !353, null}
!355 = metadata !{i32 274, i32 0, metadata !356, null}
!356 = metadata !{i32 786443, metadata !1, metadata !335, i32 273, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!357 = metadata !{i32 275, i32 0, metadata !358, null}
!358 = metadata !{i32 786443, metadata !1, metadata !356, i32 274, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!359 = metadata !{i32 277, i32 0, metadata !358, null}
!360 = metadata !{i32 278, i32 0, metadata !358, null}
!361 = metadata !{i32 279, i32 0, metadata !362, null}
!362 = metadata !{i32 786443, metadata !1, metadata !356, i32 278, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!363 = metadata !{i32 280, i32 0, metadata !362, null}
!364 = metadata !{i32 284, i32 0, metadata !365, null}
!365 = metadata !{i32 786443, metadata !1, metadata !128, i32 283, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!366 = metadata !{i32 285, i32 0, metadata !367, null}
!367 = metadata !{i32 786443, metadata !1, metadata !365, i32 284, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!368 = metadata !{i32 287, i32 0, metadata !367, null}
!369 = metadata !{i32 288, i32 0, metadata !367, null}
!370 = metadata !{i32 289, i32 0, metadata !371, null}
!371 = metadata !{i32 786443, metadata !1, metadata !365, i32 288, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!372 = metadata !{i32 290, i32 0, metadata !371, null}
!373 = metadata !{i32 293, i32 0, metadata !128, null}
!374 = metadata !{i32 422, i32 0, metadata !141, null}
!375 = metadata !{i32 423, i32 0, metadata !141, null}
!376 = metadata !{i32 426, i32 0, metadata !141, null}
!377 = metadata !{i32 432, i32 0, metadata !141, null}
!378 = metadata !{i32 433, i32 0, metadata !379, null}
!379 = metadata !{i32 786443, metadata !1, metadata !141, i32 432, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!380 = metadata !{i32 435, i32 0, metadata !379, null}
!381 = metadata !{i32 442, i32 0, metadata !141, null}
!382 = metadata !{i32 443, i32 0, metadata !141, null}
!383 = metadata !{i32 444, i32 0, metadata !141, null}
!384 = metadata !{i32 445, i32 0, metadata !141, null}
!385 = metadata !{i32 446, i32 0, metadata !141, null}
!386 = metadata !{i32 447, i32 0, metadata !141, null}
!387 = metadata !{i32 448, i32 0, metadata !141, null}
!388 = metadata !{i32 449, i32 0, metadata !389, null}
!389 = metadata !{i32 786443, metadata !1, metadata !141, i32 448, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!390 = metadata !{i32 451, i32 0, metadata !389, null}
!391 = metadata !{i32 458, i32 0, metadata !141, null}
!392 = metadata !{i32 459, i32 0, metadata !393, null}
!393 = metadata !{i32 786443, metadata !1, metadata !141, i32 458, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!394 = metadata !{i32 460, i32 0, metadata !393, null}
!395 = metadata !{i32 461, i32 0, metadata !393, null}
!396 = metadata !{i32 462, i32 0, metadata !397, null}
!397 = metadata !{i32 786443, metadata !1, metadata !393, i32 461, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!398 = metadata !{i32 466, i32 0, metadata !397, null}
!399 = metadata !{i32 468, i32 0, metadata !393, null}
!400 = metadata !{i32 469, i32 0, metadata !393, null}
!401 = metadata !{i32 470, i32 0, metadata !393, null}
!402 = metadata !{i32 471, i32 0, metadata !403, null}
!403 = metadata !{i32 786443, metadata !1, metadata !393, i32 470, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!404 = metadata !{i32 475, i32 0, metadata !403, null}
!405 = metadata !{i32 477, i32 0, metadata !393, null}
!406 = metadata !{i32 478, i32 0, metadata !407, null}
!407 = metadata !{i32 786443, metadata !1, metadata !393, i32 477, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!408 = metadata !{i32 479, i32 0, metadata !407, null}
!409 = metadata !{i32 480, i32 0, metadata !407, null}
!410 = metadata !{i32 481, i32 0, metadata !411, null}
!411 = metadata !{i32 786443, metadata !1, metadata !407, i32 480, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!412 = metadata !{i32 485, i32 0, metadata !411, null}
!413 = metadata !{i32 488, i32 0, metadata !414, null}
!414 = metadata !{i32 786443, metadata !1, metadata !393, i32 487, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!415 = metadata !{i32 489, i32 0, metadata !414, null}
!416 = metadata !{i32 490, i32 0, metadata !414, null}
!417 = metadata !{i32 491, i32 0, metadata !418, null}
!418 = metadata !{i32 786443, metadata !1, metadata !414, i32 490, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!419 = metadata !{i32 495, i32 0, metadata !418, null}
!420 = metadata !{i32 499, i32 0, metadata !141, null}
!421 = metadata !{i32 500, i32 0, metadata !422, null}
!422 = metadata !{i32 786443, metadata !1, metadata !141, i32 499, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!423 = metadata !{i32 501, i32 0, metadata !422, null}
!424 = metadata !{i32 502, i32 0, metadata !425, null}
!425 = metadata !{i32 786443, metadata !1, metadata !422, i32 501, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!426 = metadata !{i32 506, i32 0, metadata !425, null}
!427 = metadata !{i32 508, i32 0, metadata !422, null}
!428 = metadata !{i32 509, i32 0, metadata !422, null}
!429 = metadata !{i32 510, i32 0, metadata !430, null}
!430 = metadata !{i32 786443, metadata !1, metadata !422, i32 509, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!431 = metadata !{i32 514, i32 0, metadata !430, null}
!432 = metadata !{i32 516, i32 0, metadata !422, null}
!433 = metadata !{i32 517, i32 0, metadata !422, null}
!434 = metadata !{i32 518, i32 0, metadata !435, null}
!435 = metadata !{i32 786443, metadata !1, metadata !422, i32 517, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!436 = metadata !{i32 522, i32 0, metadata !435, null}
!437 = metadata !{i32 525, i32 0, metadata !141, null}
!438 = metadata !{i32 307, i32 0, metadata !136, null}
!439 = metadata !{i32 308, i32 0, metadata !136, null}
!440 = metadata !{i32 316, i32 0, metadata !136, null}
!441 = metadata !{i32 317, i32 0, metadata !442, null}
!442 = metadata !{i32 786443, metadata !1, metadata !136, i32 316, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!443 = metadata !{i32 320, i32 0, metadata !442, null}
!444 = metadata !{i32 327, i32 0, metadata !136, null}
!445 = metadata !{i32 330, i32 0, metadata !136, null}
!446 = metadata !{i32 331, i32 0, metadata !447, null}
!447 = metadata !{i32 786443, metadata !1, metadata !136, i32 330, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!448 = metadata !{i32 334, i32 0, metadata !447, null}
!449 = metadata !{i32 341, i32 0, metadata !136, null}
!450 = metadata !{i32 342, i32 0, metadata !451, null}
!451 = metadata !{i32 786443, metadata !1, metadata !136, i32 341, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!452 = metadata !{i32 343, i32 0, metadata !451, null}
!453 = metadata !{i32 344, i32 0, metadata !451, null}
!454 = metadata !{i32 345, i32 0, metadata !455, null}
!455 = metadata !{i32 786443, metadata !1, metadata !451, i32 344, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!456 = metadata !{i32 349, i32 0, metadata !455, null}
!457 = metadata !{i32 351, i32 0, metadata !451, null}
!458 = metadata !{i32 352, i32 0, metadata !451, null}
!459 = metadata !{i32 353, i32 0, metadata !451, null}
!460 = metadata !{i32 354, i32 0, metadata !461, null}
!461 = metadata !{i32 786443, metadata !1, metadata !451, i32 353, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!462 = metadata !{i32 358, i32 0, metadata !461, null}
!463 = metadata !{i32 360, i32 0, metadata !451, null}
!464 = metadata !{i32 361, i32 0, metadata !465, null}
!465 = metadata !{i32 786443, metadata !1, metadata !451, i32 360, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!466 = metadata !{i32 362, i32 0, metadata !465, null}
!467 = metadata !{i32 363, i32 0, metadata !465, null}
!468 = metadata !{i32 364, i32 0, metadata !469, null}
!469 = metadata !{i32 786443, metadata !1, metadata !465, i32 363, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!470 = metadata !{i32 368, i32 0, metadata !469, null}
!471 = metadata !{i32 371, i32 0, metadata !472, null}
!472 = metadata !{i32 786443, metadata !1, metadata !451, i32 370, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!473 = metadata !{i32 372, i32 0, metadata !472, null}
!474 = metadata !{i32 373, i32 0, metadata !472, null}
!475 = metadata !{i32 374, i32 0, metadata !476, null}
!476 = metadata !{i32 786443, metadata !1, metadata !472, i32 373, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!477 = metadata !{i32 378, i32 0, metadata !476, null}
!478 = metadata !{i32 382, i32 0, metadata !136, null}
!479 = metadata !{i32 383, i32 0, metadata !480, null}
!480 = metadata !{i32 786443, metadata !1, metadata !136, i32 382, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!481 = metadata !{i32 384, i32 0, metadata !480, null}
!482 = metadata !{i32 385, i32 0, metadata !483, null}
!483 = metadata !{i32 786443, metadata !1, metadata !480, i32 384, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!484 = metadata !{i32 389, i32 0, metadata !483, null}
!485 = metadata !{i32 391, i32 0, metadata !480, null}
!486 = metadata !{i32 392, i32 0, metadata !480, null}
!487 = metadata !{i32 393, i32 0, metadata !488, null}
!488 = metadata !{i32 786443, metadata !1, metadata !480, i32 392, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!489 = metadata !{i32 397, i32 0, metadata !488, null}
!490 = metadata !{i32 399, i32 0, metadata !480, null}
!491 = metadata !{i32 400, i32 0, metadata !480, null}
!492 = metadata !{i32 401, i32 0, metadata !493, null}
!493 = metadata !{i32 786443, metadata !1, metadata !480, i32 400, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!494 = metadata !{i32 405, i32 0, metadata !493, null}
!495 = metadata !{i32 408, i32 0, metadata !136, null}
!496 = metadata !{i32 539, i32 0, metadata !150, null}
!497 = metadata !{i32 540, i32 0, metadata !150, null}
!498 = metadata !{i32 542, i32 0, metadata !150, null}
!499 = metadata !{i32 543, i32 0, metadata !150, null}
!500 = metadata !{i32 544, i32 0, metadata !150, null}
!501 = metadata !{i32 546, i32 0, metadata !150, null}
!502 = metadata !{i32 547, i32 0, metadata !503, null}
!503 = metadata !{i32 786443, metadata !1, metadata !150, i32 546, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!504 = metadata !{i32 549, i32 0, metadata !503, null}
!505 = metadata !{i32 556, i32 0, metadata !150, null}
!506 = metadata !{i32 557, i32 0, metadata !507, null}
!507 = metadata !{i32 786443, metadata !1, metadata !150, i32 556, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!508 = metadata !{i32 560, i32 0, metadata !507, null}
!509 = metadata !{i32 562, i32 0, metadata !150, null}
!510 = metadata !{i32 563, i32 0, metadata !164, null}
!511 = metadata !{i32 564, i32 0, metadata !163, null}
!512 = metadata !{i32 565, i32 0, metadata !163, null}
!513 = metadata !{i32 567, i32 0, metadata !163, null}
!514 = metadata !{i32 568, i32 0, metadata !163, null}
!515 = metadata !{i32 569, i32 0, metadata !516, null}
!516 = metadata !{i32 786443, metadata !1, metadata !517, i32 569, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!517 = metadata !{i32 786443, metadata !1, metadata !163, i32 568, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!518 = metadata !{i32 570, i32 0, metadata !519, null}
!519 = metadata !{i32 786443, metadata !1, metadata !516, i32 569, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!520 = metadata !{i32 571, i32 0, metadata !521, null}
!521 = metadata !{i32 786443, metadata !1, metadata !519, i32 570, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!522 = metadata !{i32 572, i32 0, metadata !521, null}
!523 = metadata !{i32 573, i32 0, metadata !519, null}
!524 = metadata !{i32 576, i32 0, metadata !167, null}
!525 = metadata !{i32 577, i32 0, metadata !526, null}
!526 = metadata !{i32 786443, metadata !1, metadata !167, i32 577, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!527 = metadata !{i32 578, i32 0, metadata !528, null}
!528 = metadata !{i32 786443, metadata !1, metadata !526, i32 577, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!529 = metadata !{i32 578, i32 0, metadata !530, null}
!530 = metadata !{i32 786443, metadata !1, metadata !528, i32 578, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!531 = metadata !{i32 579, i32 0, metadata !528, null}
!532 = metadata !{metadata !"double", metadata !223}
!533 = metadata !{i32 583, i32 0, metadata !169, null}
!534 = metadata !{i32 584, i32 0, metadata !535, null}
!535 = metadata !{i32 786443, metadata !1, metadata !169, i32 584, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!536 = metadata !{i32 585, i32 0, metadata !537, null}
!537 = metadata !{i32 786443, metadata !1, metadata !535, i32 584, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!538 = metadata !{i32 589, i32 0, metadata !164, null}
!539 = metadata !{i32 590, i32 0, metadata !171, null}
!540 = metadata !{i32 592, i32 0, metadata !171, null}
!541 = metadata !{i32 593, i32 0, metadata !171, null}
!542 = metadata !{i32 611, i32 0, metadata !543, null}
!543 = metadata !{i32 786443, metadata !1, metadata !544, i32 611, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!544 = metadata !{i32 786443, metadata !1, metadata !171, i32 610, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!545 = metadata !{i32 603, i32 0, metadata !546, null}
!546 = metadata !{i32 786443, metadata !1, metadata !547, i32 603, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!547 = metadata !{i32 786443, metadata !1, metadata !171, i32 602, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!548 = metadata !{i32 594, i32 0, metadata !549, null}
!549 = metadata !{i32 786443, metadata !1, metadata !550, i32 594, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!550 = metadata !{i32 786443, metadata !1, metadata !171, i32 593, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!551 = metadata !{i32 595, i32 0, metadata !552, null}
!552 = metadata !{i32 786443, metadata !1, metadata !549, i32 594, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!553 = metadata !{i32 596, i32 0, metadata !552, null}
!554 = metadata !{i32 597, i32 0, metadata !552, null}
!555 = metadata !{i32 598, i32 0, metadata !556, null}
!556 = metadata !{i32 786443, metadata !1, metadata !552, i32 597, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!557 = metadata !{i32 599, i32 0, metadata !556, null}
!558 = metadata !{i32 600, i32 0, metadata !556, null}
!559 = metadata !{i32 604, i32 0, metadata !560, null}
!560 = metadata !{i32 786443, metadata !1, metadata !546, i32 603, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!561 = metadata !{i32 605, i32 0, metadata !560, null}
!562 = metadata !{i32 606, i32 0, metadata !560, null}
!563 = metadata !{i32 607, i32 0, metadata !560, null}
!564 = metadata !{i32 608, i32 0, metadata !560, null}
!565 = metadata !{i32 612, i32 0, metadata !566, null}
!566 = metadata !{i32 786443, metadata !1, metadata !543, i32 611, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!567 = metadata !{i32 613, i32 0, metadata !566, null}
!568 = metadata !{i32 615, i32 0, metadata !566, null}
!569 = metadata !{i32 616, i32 0, metadata !566, null}
!570 = metadata !{i32 617, i32 0, metadata !566, null}
!571 = metadata !{i32 622, i32 0, metadata !150, null}
!572 = metadata !{i32 636, i32 0, metadata !172, null}
!573 = metadata !{i32 637, i32 0, metadata !172, null}
!574 = metadata !{i32 644, i32 0, metadata !172, null}
!575 = metadata !{i32 645, i32 0, metadata !576, null}
!576 = metadata !{i32 786443, metadata !1, metadata !172, i32 644, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!577 = metadata !{i32 647, i32 0, metadata !576, null}
!578 = metadata !{i32 649, i32 0, metadata !172, null}
!579 = metadata !{i32 650, i32 0, metadata !172, null}
!580 = metadata !{i32 651, i32 0, metadata !581, null}
!581 = metadata !{i32 786443, metadata !1, metadata !172, i32 650, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!582 = metadata !{i32 652, i32 0, metadata !581, null}
!583 = metadata !{i32 653, i32 0, metadata !584, null}
!584 = metadata !{i32 786443, metadata !1, metadata !172, i32 652, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!585 = metadata !{i32 654, i32 0, metadata !584, null}
!586 = metadata !{i32 655, i32 0, metadata !587, null}
!587 = metadata !{i32 786443, metadata !1, metadata !172, i32 654, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!588 = metadata !{i32 656, i32 0, metadata !587, null}
!589 = metadata !{i32 657, i32 0, metadata !590, null}
!590 = metadata !{i32 786443, metadata !1, metadata !172, i32 656, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!591 = metadata !{i32 659, i32 0, metadata !592, null}
!592 = metadata !{i32 786443, metadata !1, metadata !172, i32 658, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!593 = metadata !{i32 662, i32 0, metadata !592, null}
!594 = metadata !{i32 664, i32 0, metadata !172, null}
!595 = metadata !{i32 665, i32 0, metadata !596, null}
!596 = metadata !{i32 786443, metadata !1, metadata !172, i32 664, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!597 = metadata !{i32 666, i32 0, metadata !596, null}
!598 = metadata !{i32 667, i32 0, metadata !599, null}
!599 = metadata !{i32 786443, metadata !1, metadata !172, i32 666, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!600 = metadata !{i32 668, i32 0, metadata !599, null}
!601 = metadata !{i32 669, i32 0, metadata !602, null}
!602 = metadata !{i32 786443, metadata !1, metadata !172, i32 668, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!603 = metadata !{i32 671, i32 0, metadata !604, null}
!604 = metadata !{i32 786443, metadata !1, metadata !172, i32 670, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!605 = metadata !{i32 674, i32 0, metadata !604, null}
!606 = metadata !{i32 676, i32 0, metadata !172, null}
!607 = metadata !{i32 677, i32 0, metadata !608, null}
!608 = metadata !{i32 786443, metadata !1, metadata !172, i32 676, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!609 = metadata !{i32 678, i32 0, metadata !608, null}
!610 = metadata !{i32 679, i32 0, metadata !611, null}
!611 = metadata !{i32 786443, metadata !1, metadata !172, i32 678, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!612 = metadata !{i32 680, i32 0, metadata !611, null}
!613 = metadata !{i32 681, i32 0, metadata !614, null}
!614 = metadata !{i32 786443, metadata !1, metadata !172, i32 680, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!615 = metadata !{i32 683, i32 0, metadata !616, null}
!616 = metadata !{i32 786443, metadata !1, metadata !172, i32 682, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!617 = metadata !{i32 686, i32 0, metadata !616, null}
!618 = metadata !{i32 688, i32 0, metadata !172, null}
!619 = metadata !{i32 690, i32 0, metadata !172, null}
!620 = metadata !{i32 692, i32 0, metadata !172, null}
!621 = metadata !{i32 694, i32 0, metadata !172, null}
!622 = metadata !{i32 696, i32 0, metadata !172, null}
!623 = metadata !{i32 698, i32 0, metadata !172, null}
!624 = metadata !{i32 699, i32 0, metadata !172, null}
!625 = metadata !{i32 713, i32 0, metadata !176, null}
!626 = metadata !{i32 714, i32 0, metadata !176, null}
!627 = metadata !{i32 715, i32 0, metadata !176, null}
!628 = metadata !{i32 719, i32 0, metadata !176, null}
!629 = metadata !{i32 720, i32 0, metadata !630, null}
!630 = metadata !{i32 786443, metadata !1, metadata !176, i32 719, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!631 = metadata !{i32 722, i32 0, metadata !630, null}
!632 = metadata !{i32 728, i32 0, metadata !176, null}
!633 = metadata !{i32 729, i32 0, metadata !176, null}
!634 = metadata !{i32 730, i32 0, metadata !176, null}
!635 = metadata !{i32 731, i32 0, metadata !636, null}
!636 = metadata !{i32 786443, metadata !1, metadata !176, i32 730, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!637 = metadata !{i32 732, i32 0, metadata !636, null}
!638 = metadata !{i32 737, i32 0, metadata !176, null}
!639 = metadata !{i32 738, i32 0, metadata !187, null}
!640 = metadata !{i32 739, i32 0, metadata !187, null}
!641 = metadata !{i32 741, i32 0, metadata !187, null}
!642 = metadata !{i32 742, i32 0, metadata !190, null}
!643 = metadata !{i32 743, i32 0, metadata !644, null}
!644 = metadata !{i32 786443, metadata !1, metadata !190, i32 743, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!645 = metadata !{i32 744, i32 0, metadata !646, null}
!646 = metadata !{i32 786443, metadata !1, metadata !644, i32 743, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!647 = metadata !{i32 748, i32 0, metadata !192, null}
!648 = metadata !{i32 749, i32 0, metadata !649, null}
!649 = metadata !{i32 786443, metadata !1, metadata !192, i32 749, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!650 = metadata !{i32 750, i32 0, metadata !651, null}
!651 = metadata !{i32 786443, metadata !1, metadata !649, i32 749, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!652 = metadata !{i32 756, i32 0, metadata !176, null}
!653 = metadata !{i32 757, i32 0, metadata !654, null}
!654 = metadata !{i32 786443, metadata !1, metadata !176, i32 756, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!655 = metadata !{i32 758, i32 0, metadata !654, null}
!656 = metadata !{i32 759, i32 0, metadata !176, null}
!657 = metadata !{i32 760, i32 0, metadata !176, null}
!658 = metadata !{i32 778, i32 0, metadata !193, null}
!659 = metadata !{i32 779, i32 0, metadata !193, null}
!660 = metadata !{i32 781, i32 0, metadata !193, null}
!661 = metadata !{i32 783, i32 0, metadata !193, null}
!662 = metadata !{i32 784, i32 0, metadata !193, null}
!663 = metadata !{i32 791, i32 0, metadata !193, null}
!664 = metadata !{i32 792, i32 0, metadata !665, null}
!665 = metadata !{i32 786443, metadata !1, metadata !193, i32 791, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!666 = metadata !{i32 794, i32 0, metadata !665, null}
!667 = metadata !{i32 801, i32 0, metadata !193, null}
!668 = metadata !{i32 802, i32 0, metadata !669, null}
!669 = metadata !{i32 786443, metadata !1, metadata !193, i32 801, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!670 = metadata !{i32 803, i32 0, metadata !669, null}
!671 = metadata !{i32 805, i32 0, metadata !193, null}
!672 = metadata !{i32 806, i32 0, metadata !193, null}
!673 = metadata !{i32 809, i32 0, metadata !193, null}
!674 = metadata !{i32 1}
!675 = metadata !{i32 814, i32 0, metadata !676, null}
!676 = metadata !{i32 786443, metadata !1, metadata !193, i32 809, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!677 = metadata !{i32 815, i32 0, metadata !676, null}
!678 = metadata !{i32 2}
!679 = metadata !{i32 817, i32 0, metadata !676, null}
!680 = metadata !{i32 818, i32 0, metadata !676, null}
!681 = metadata !{i32 820, i32 0, metadata !676, null}
!682 = metadata !{i32 823, i32 0, metadata !676, null}
!683 = metadata !{i32 831, i32 0, metadata !193, null}
!684 = metadata !{i32 832, i32 0, metadata !193, null}
!685 = metadata !{i32 833, i32 0, metadata !193, null}
!686 = metadata !{i32 834, i32 0, metadata !193, null}
!687 = metadata !{i32 835, i32 0, metadata !193, null}
!688 = metadata !{i32 836, i32 0, metadata !193, null}
!689 = metadata !{i32 842, i32 0, metadata !193, null}
!690 = metadata !{i32 843, i32 0, metadata !193, null}
!691 = metadata !{i32 851, i32 0, metadata !692, null}
!692 = metadata !{i32 786443, metadata !1, metadata !193, i32 851, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!693 = metadata !{i32 854, i32 0, metadata !694, null}
!694 = metadata !{i32 786443, metadata !1, metadata !193, i32 854, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!695 = metadata !{i32 852, i32 0, metadata !696, null}
!696 = metadata !{i32 786443, metadata !1, metadata !692, i32 851, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!697 = metadata !{i32 862, i32 0, metadata !698, null}
!698 = metadata !{i32 786443, metadata !1, metadata !193, i32 862, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!699 = metadata !{i32 855, i32 0, metadata !700, null}
!700 = metadata !{i32 786443, metadata !1, metadata !694, i32 854, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!701 = metadata !{i32 865, i32 0, metadata !702, null}
!702 = metadata !{i32 786443, metadata !1, metadata !703, i32 865, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!703 = metadata !{i32 786443, metadata !1, metadata !698, i32 862, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!704 = metadata !{i32 863, i32 0, metadata !703, null}
!705 = metadata !{i32 864, i32 0, metadata !703, null}
!706 = metadata !{i32 866, i32 0, metadata !707, null}
!707 = metadata !{i32 786443, metadata !1, metadata !702, i32 865, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/InpMtx/src/InpMtx_IO.c]
!708 = metadata !{i32 874, i32 0, metadata !193, null}
!709 = metadata !{i32 875, i32 0, metadata !193, null}
!710 = metadata !{i32 877, i32 0, metadata !193, null}
