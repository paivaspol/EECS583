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
  tail call void @llvm.dbg.value(metadata !{%struct._DenseMtx* %mtx}, i64 0, metadata !42), !dbg !185
  tail call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !43), !dbg !186
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !101), !dbg !187
  %cmp = icmp eq %struct._DenseMtx* %mtx, null, !dbg !188
  %cmp1 = icmp eq i8* %fn, null, !dbg !188
  %or.cond = or i1 %cmp, %cmp1, !dbg !188
  br i1 %or.cond, label %if.then, label %if.end, !dbg !188

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !189, !tbaa !191
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([51 x i8]* @.str, i64 0, i64 0), %struct._DenseMtx* %mtx, i8* %fn) #5, !dbg !189
  br label %return, !dbg !194

if.end:                                           ; preds = %entry
  %call2 = tail call i64 @strlen(i8* %fn) #6, !dbg !195
  %conv = trunc i64 %call2 to i32, !dbg !195
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !100), !dbg !195
  tail call void @llvm.dbg.value(metadata !196, i64 0, metadata !102), !dbg !197
  %cmp5 = icmp sgt i32 %conv, 10, !dbg !198
  br i1 %cmp5, label %if.then7, label %if.else41, !dbg !198

if.then7:                                         ; preds = %if.end
  %sub = shl i64 %call2, 32, !dbg !199
  %sext = add i64 %sub, -42949672960, !dbg !199
  %idxprom = ashr exact i64 %sext, 32, !dbg !199
  %arrayidx = getelementptr inbounds i8* %fn, i64 %idxprom, !dbg !199
  %call8 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([11 x i8]* @.str45, i64 0, i64 0)) #6, !dbg !199
  %cmp9 = icmp eq i32 %call8, 0, !dbg !199
  br i1 %cmp9, label %if.then11, label %if.else20, !dbg !199

if.then11:                                        ; preds = %if.then7
  %call12 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([3 x i8]* @.str1, i64 0, i64 0)) #5, !dbg !201
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call12}, i64 0, metadata !44), !dbg !201
  %cmp13 = icmp eq %struct._IO_FILE* %call12, null, !dbg !201
  br i1 %cmp13, label %if.then15, label %if.else, !dbg !201

if.then15:                                        ; preds = %if.then11
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !203, !tbaa !191
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* %fn) #5, !dbg !203
  br label %return, !dbg !205

if.else:                                          ; preds = %if.then11
  %call17 = tail call i32 @DenseMtx_readFromBinaryFile(%struct._DenseMtx* %mtx, %struct._IO_FILE* %call12) #7, !dbg !206
  tail call void @llvm.dbg.value(metadata !{i32 %call17}, i64 0, metadata !101), !dbg !206
  %call18 = tail call i32 @fclose(%struct._IO_FILE* %call12) #5, !dbg !208
  br label %return

if.else20:                                        ; preds = %if.then7
  %call24 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([11 x i8]* @.str44, i64 0, i64 0)) #6, !dbg !209
  %cmp25 = icmp eq i32 %call24, 0, !dbg !209
  br i1 %cmp25, label %if.then27, label %if.else37, !dbg !209

if.then27:                                        ; preds = %if.else20
  %call28 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str3, i64 0, i64 0)) #5, !dbg !210
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call28}, i64 0, metadata !44), !dbg !210
  %cmp29 = icmp eq %struct._IO_FILE* %call28, null, !dbg !210
  br i1 %cmp29, label %if.then31, label %if.else33, !dbg !210

if.then31:                                        ; preds = %if.then27
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !212, !tbaa !191
  %call32 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([59 x i8]* @.str2, i64 0, i64 0), i8* %fn) #5, !dbg !212
  br label %return, !dbg !214

if.else33:                                        ; preds = %if.then27
  %call34 = tail call i32 @DenseMtx_readFromFormattedFile(%struct._DenseMtx* %mtx, %struct._IO_FILE* %call28) #7, !dbg !215
  tail call void @llvm.dbg.value(metadata !{i32 %call34}, i64 0, metadata !101), !dbg !215
  %call35 = tail call i32 @fclose(%struct._IO_FILE* %call28) #5, !dbg !217
  br label %return

if.else37:                                        ; preds = %if.else20
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !218, !tbaa !191
  %call38 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([107 x i8]* @.str4, i64 0, i64 0), i8* %fn, i8* getelementptr inbounds ([11 x i8]* @.str45, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str44, i64 0, i64 0)) #5, !dbg !218
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !101), !dbg !220
  br label %return

if.else41:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !221, !tbaa !191
  %call42 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([107 x i8]* @.str4, i64 0, i64 0), i8* %fn, i8* getelementptr inbounds ([11 x i8]* @.str45, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8]* @.str44, i64 0, i64 0)) #5, !dbg !221
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !101), !dbg !223
  br label %return

return:                                           ; preds = %if.else41, %if.else37, %if.else33, %if.then31, %if.then15, %if.else, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then15 ], [ %call17, %if.else ], [ 0, %if.then31 ], [ %call34, %if.else33 ], [ 0, %if.else37 ], [ 0, %if.else41 ]
  ret i32 %retval.0, !dbg !224
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
define i32 @DenseMtx_readFromBinaryFile(%struct._DenseMtx* %mtx, %struct._IO_FILE* %fp) #0 {
entry:
  %itemp = alloca [7 x i32], align 16
  call void @llvm.dbg.value(metadata !{%struct._DenseMtx* %mtx}, i64 0, metadata !117), !dbg !225
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !118), !dbg !226
  call void @llvm.dbg.declare(metadata !{[7 x i32]* %itemp}, metadata !121), !dbg !227
  %cmp = icmp eq %struct._DenseMtx* %mtx, null, !dbg !228
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !228
  %or.cond = or i1 %cmp, %cmp1, !dbg !228
  br i1 %or.cond, label %if.then, label %if.end, !dbg !228

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !229, !tbaa !191
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([63 x i8]* @.str10, i64 0, i64 0), %struct._DenseMtx* %mtx, %struct._IO_FILE* %fp) #5, !dbg !229
  br label %return, !dbg !231

if.end:                                           ; preds = %entry
  call void @DenseMtx_clearData(%struct._DenseMtx* %mtx) #5, !dbg !232
  %1 = bitcast [7 x i32]* %itemp to i8*, !dbg !233
  %call2 = call i64 @fread(i8* %1, i64 4, i64 7, %struct._IO_FILE* %fp) #5, !dbg !233
  %conv = trunc i64 %call2 to i32, !dbg !233
  call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !119), !dbg !233
  %cmp3 = icmp eq i32 %conv, 7, !dbg !233
  br i1 %cmp3, label %if.end7, label %if.then5, !dbg !233

if.then5:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !234, !tbaa !191
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([63 x i8]* @.str11, i64 0, i64 0), i32 %conv, i32 7) #5, !dbg !234
  br label %return, !dbg !236

if.end7:                                          ; preds = %if.end
  %3 = bitcast [7 x i32]* %itemp to i64*, !dbg !237
  %4 = load i64* %3, align 16, !dbg !237
  %5 = trunc i64 %4 to i32, !dbg !237
  %6 = lshr i64 %4, 32
  %7 = trunc i64 %6 to i32
  %arrayidx9 = getelementptr inbounds [7 x i32]* %itemp, i64 0, i64 2, !dbg !237
  %8 = bitcast i32* %arrayidx9 to i64*, !dbg !237
  %9 = load i64* %8, align 8, !dbg !237
  %10 = trunc i64 %9 to i32, !dbg !237
  %11 = lshr i64 %9, 32
  %12 = trunc i64 %11 to i32
  %arrayidx11 = getelementptr inbounds [7 x i32]* %itemp, i64 0, i64 4, !dbg !237
  %13 = bitcast i32* %arrayidx11 to i64*, !dbg !237
  %14 = load i64* %13, align 16, !dbg !237
  %15 = trunc i64 %14 to i32, !dbg !237
  %16 = lshr i64 %14, 32
  %17 = trunc i64 %16 to i32
  %arrayidx13 = getelementptr inbounds [7 x i32]* %itemp, i64 0, i64 6, !dbg !237
  %18 = load i32* %arrayidx13, align 8, !dbg !237, !tbaa !238
  call void @DenseMtx_init(%struct._DenseMtx* %mtx, i32 %5, i32 %7, i32 %10, i32 %12, i32 %15, i32 %17, i32 %18) #5, !dbg !237
  %nrow = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 3, !dbg !239
  %19 = load i32* %nrow, align 4, !dbg !239, !tbaa !238
  call void @llvm.dbg.value(metadata !{i32 %19}, i64 0, metadata !120), !dbg !239
  %cmp14 = icmp sgt i32 %19, 0, !dbg !239
  br i1 %cmp14, label %if.then16, label %if.end25, !dbg !239

if.then16:                                        ; preds = %if.end7
  %rowind = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 7, !dbg !240
  %20 = load i32** %rowind, align 8, !dbg !240, !tbaa !191
  %21 = bitcast i32* %20 to i8*, !dbg !240
  %conv17 = sext i32 %19 to i64, !dbg !240
  %call18 = call i64 @fread(i8* %21, i64 4, i64 %conv17, %struct._IO_FILE* %fp) #5, !dbg !240
  %conv19 = trunc i64 %call18 to i32, !dbg !240
  call void @llvm.dbg.value(metadata !{i32 %conv19}, i64 0, metadata !119), !dbg !240
  %cmp20 = icmp eq i32 %conv19, %19, !dbg !240
  br i1 %cmp20, label %if.end25, label %if.then22, !dbg !240

if.then22:                                        ; preds = %if.then16
  %22 = load %struct._IO_FILE** @stderr, align 8, !dbg !242, !tbaa !191
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([76 x i8]* @.str12, i64 0, i64 0), i32 %conv19, i32 %19) #5, !dbg !242
  br label %return, !dbg !244

if.end25:                                         ; preds = %if.then16, %if.end7
  %ncol = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 4, !dbg !245
  %23 = load i32* %ncol, align 4, !dbg !245, !tbaa !238
  call void @llvm.dbg.value(metadata !{i32 %23}, i64 0, metadata !120), !dbg !245
  %cmp26 = icmp sgt i32 %23, 0, !dbg !245
  br i1 %cmp26, label %if.then28, label %if.end37, !dbg !245

if.then28:                                        ; preds = %if.end25
  %colind = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 8, !dbg !246
  %24 = load i32** %colind, align 8, !dbg !246, !tbaa !191
  %25 = bitcast i32* %24 to i8*, !dbg !246
  %conv29 = sext i32 %23 to i64, !dbg !246
  %call30 = call i64 @fread(i8* %25, i64 4, i64 %conv29, %struct._IO_FILE* %fp) #5, !dbg !246
  %conv31 = trunc i64 %call30 to i32, !dbg !246
  call void @llvm.dbg.value(metadata !{i32 %conv31}, i64 0, metadata !119), !dbg !246
  %cmp32 = icmp eq i32 %conv31, %23, !dbg !246
  br i1 %cmp32, label %if.then28.if.end37_crit_edge, label %if.then34, !dbg !246

if.then28.if.end37_crit_edge:                     ; preds = %if.then28
  %.pre = load i32* %ncol, align 4, !dbg !248, !tbaa !238
  br label %if.end37, !dbg !246

if.then34:                                        ; preds = %if.then28
  %26 = load %struct._IO_FILE** @stderr, align 8, !dbg !249, !tbaa !191
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([76 x i8]* @.str13, i64 0, i64 0), i32 %conv31, i32 %23) #5, !dbg !249
  br label %return, !dbg !251

if.end37:                                         ; preds = %if.end25, %if.then28.if.end37_crit_edge
  %27 = phi i32 [ %.pre, %if.then28.if.end37_crit_edge ], [ %23, %if.end25 ]
  %28 = load i32* %nrow, align 4, !dbg !248, !tbaa !238
  %mul = mul nsw i32 %27, %28, !dbg !248
  call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !120), !dbg !248
  %cmp40 = icmp sgt i32 %mul, 0, !dbg !248
  br i1 %cmp40, label %if.then42, label %return, !dbg !248

if.then42:                                        ; preds = %if.end37
  %type = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0, !dbg !252
  %29 = load i32* %type, align 4, !dbg !252, !tbaa !238
  switch i32 %29, label %return [
    i32 1, label %if.then45
    i32 2, label %if.then57
  ], !dbg !252

if.then45:                                        ; preds = %if.then42
  %entries = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9, !dbg !254
  %30 = load double** %entries, align 8, !dbg !254, !tbaa !191
  %31 = bitcast double* %30 to i8*, !dbg !254
  %conv46 = sext i32 %mul to i64, !dbg !254
  %call47 = call i64 @fread(i8* %31, i64 8, i64 %conv46, %struct._IO_FILE* %fp) #5, !dbg !254
  %conv48 = trunc i64 %call47 to i32, !dbg !254
  call void @llvm.dbg.value(metadata !{i32 %conv48}, i64 0, metadata !119), !dbg !254
  %cmp49 = icmp eq i32 %conv48, %mul, !dbg !256
  br i1 %cmp49, label %return, label %if.then51, !dbg !256

if.then51:                                        ; preds = %if.then45
  %32 = load %struct._IO_FILE** @stderr, align 8, !dbg !257, !tbaa !191
  %call52 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([75 x i8]* @.str14, i64 0, i64 0), i32 %conv48, i32 %mul) #5, !dbg !257
  br label %return, !dbg !259

if.then57:                                        ; preds = %if.then42
  %entries58 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9, !dbg !260
  %33 = load double** %entries58, align 8, !dbg !260, !tbaa !191
  %34 = bitcast double* %33 to i8*, !dbg !260
  %mul59 = shl nsw i32 %mul, 1, !dbg !260
  %conv60 = sext i32 %mul59 to i64, !dbg !260
  %call61 = call i64 @fread(i8* %34, i64 8, i64 %conv60, %struct._IO_FILE* %fp) #5, !dbg !260
  %conv62 = trunc i64 %call61 to i32, !dbg !260
  call void @llvm.dbg.value(metadata !{i32 %conv62}, i64 0, metadata !119), !dbg !260
  %cmp64 = icmp eq i32 %conv62, %mul59, !dbg !262
  br i1 %cmp64, label %return, label %if.then66, !dbg !262

if.then66:                                        ; preds = %if.then57
  %35 = load %struct._IO_FILE** @stderr, align 8, !dbg !263, !tbaa !191
  %call68 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([75 x i8]* @.str14, i64 0, i64 0), i32 %conv62, i32 %mul59) #5, !dbg !263
  br label %return, !dbg !265

return:                                           ; preds = %if.end37, %if.then57, %if.then45, %if.then42, %if.then66, %if.then51, %if.then34, %if.then22, %if.then5, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then5 ], [ 0, %if.then22 ], [ 0, %if.then34 ], [ 0, %if.then51 ], [ 0, %if.then66 ], [ 1, %if.then42 ], [ 1, %if.then45 ], [ 1, %if.then57 ], [ 1, %if.end37 ]
  ret i32 %retval.0, !dbg !266
}

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define i32 @DenseMtx_readFromFormattedFile(%struct._DenseMtx* %mtx, %struct._IO_FILE* %fp) #0 {
entry:
  %itemp = alloca [7 x i32], align 16
  call void @llvm.dbg.value(metadata !{%struct._DenseMtx* %mtx}, i64 0, metadata !107), !dbg !267
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !108), !dbg !268
  call void @llvm.dbg.declare(metadata !{[7 x i32]* %itemp}, metadata !111), !dbg !269
  %cmp = icmp eq %struct._DenseMtx* %mtx, null, !dbg !270
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !270
  %or.cond = or i1 %cmp, %cmp1, !dbg !270
  br i1 %or.cond, label %if.then, label %if.end, !dbg !270

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !271, !tbaa !191
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([60 x i8]* @.str5, i64 0, i64 0), %struct._DenseMtx* %mtx, %struct._IO_FILE* %fp) #5, !dbg !271
  br label %return, !dbg !273

if.end:                                           ; preds = %entry
  call void @DenseMtx_clearData(%struct._DenseMtx* %mtx) #5, !dbg !274
  %arraydecay = getelementptr inbounds [7 x i32]* %itemp, i64 0, i64 0, !dbg !275
  %call2 = call i32 @IVfscanf(%struct._IO_FILE* %fp, i32 7, i32* %arraydecay) #5, !dbg !275
  call void @llvm.dbg.value(metadata !{i32 %call2}, i64 0, metadata !109), !dbg !275
  %cmp3 = icmp eq i32 %call2, 7, !dbg !275
  br i1 %cmp3, label %if.end6, label %if.then4, !dbg !275

if.then4:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !276, !tbaa !191
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([66 x i8]* @.str6, i64 0, i64 0), i32 %call2, i32 7) #5, !dbg !276
  br label %return, !dbg !278

if.end6:                                          ; preds = %if.end
  %2 = bitcast [7 x i32]* %itemp to i64*, !dbg !279
  %3 = load i64* %2, align 16, !dbg !279
  %4 = trunc i64 %3 to i32, !dbg !279
  %5 = lshr i64 %3, 32
  %6 = trunc i64 %5 to i32
  %arrayidx8 = getelementptr inbounds [7 x i32]* %itemp, i64 0, i64 2, !dbg !279
  %7 = bitcast i32* %arrayidx8 to i64*, !dbg !279
  %8 = load i64* %7, align 8, !dbg !279
  %9 = trunc i64 %8 to i32, !dbg !279
  %10 = lshr i64 %8, 32
  %11 = trunc i64 %10 to i32
  %arrayidx10 = getelementptr inbounds [7 x i32]* %itemp, i64 0, i64 4, !dbg !279
  %12 = bitcast i32* %arrayidx10 to i64*, !dbg !279
  %13 = load i64* %12, align 16, !dbg !279
  %14 = trunc i64 %13 to i32, !dbg !279
  %15 = lshr i64 %13, 32
  %16 = trunc i64 %15 to i32
  %arrayidx12 = getelementptr inbounds [7 x i32]* %itemp, i64 0, i64 6, !dbg !279
  %17 = load i32* %arrayidx12, align 8, !dbg !279, !tbaa !238
  call void @DenseMtx_init(%struct._DenseMtx* %mtx, i32 %4, i32 %6, i32 %9, i32 %11, i32 %14, i32 %16, i32 %17) #5, !dbg !279
  %nrow = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 3, !dbg !280
  %18 = load i32* %nrow, align 4, !dbg !280, !tbaa !238
  call void @llvm.dbg.value(metadata !{i32 %18}, i64 0, metadata !110), !dbg !280
  %cmp13 = icmp sgt i32 %18, 0, !dbg !280
  br i1 %cmp13, label %if.then14, label %if.end20, !dbg !280

if.then14:                                        ; preds = %if.end6
  %rowind = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 7, !dbg !281
  %19 = load i32** %rowind, align 8, !dbg !281, !tbaa !191
  %call15 = call i32 @IVfscanf(%struct._IO_FILE* %fp, i32 %18, i32* %19) #5, !dbg !281
  call void @llvm.dbg.value(metadata !{i32 %call15}, i64 0, metadata !109), !dbg !281
  %cmp16 = icmp eq i32 %call15, %18, !dbg !281
  br i1 %cmp16, label %if.end20, label %if.then17, !dbg !281

if.then17:                                        ; preds = %if.then14
  %20 = load %struct._IO_FILE** @stderr, align 8, !dbg !283, !tbaa !191
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([77 x i8]* @.str7, i64 0, i64 0), i32 %call15, i32 %18) #5, !dbg !283
  br label %return, !dbg !285

if.end20:                                         ; preds = %if.then14, %if.end6
  %ncol = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 4, !dbg !286
  %21 = load i32* %ncol, align 4, !dbg !286, !tbaa !238
  call void @llvm.dbg.value(metadata !{i32 %21}, i64 0, metadata !110), !dbg !286
  %cmp21 = icmp sgt i32 %21, 0, !dbg !286
  br i1 %cmp21, label %if.then22, label %if.end28, !dbg !286

if.then22:                                        ; preds = %if.end20
  %colind = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 8, !dbg !287
  %22 = load i32** %colind, align 8, !dbg !287, !tbaa !191
  %call23 = call i32 @IVfscanf(%struct._IO_FILE* %fp, i32 %21, i32* %22) #5, !dbg !287
  call void @llvm.dbg.value(metadata !{i32 %call23}, i64 0, metadata !109), !dbg !287
  %cmp24 = icmp eq i32 %call23, %21, !dbg !287
  br i1 %cmp24, label %if.then22.if.end28_crit_edge, label %if.then25, !dbg !287

if.then22.if.end28_crit_edge:                     ; preds = %if.then22
  %.pre = load i32* %ncol, align 4, !dbg !289, !tbaa !238
  br label %if.end28, !dbg !287

if.then25:                                        ; preds = %if.then22
  %23 = load %struct._IO_FILE** @stderr, align 8, !dbg !290, !tbaa !191
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([77 x i8]* @.str8, i64 0, i64 0), i32 %call23, i32 %21) #5, !dbg !290
  br label %return, !dbg !292

if.end28:                                         ; preds = %if.end20, %if.then22.if.end28_crit_edge
  %24 = phi i32 [ %.pre, %if.then22.if.end28_crit_edge ], [ %21, %if.end20 ]
  %25 = load i32* %nrow, align 4, !dbg !289, !tbaa !238
  %mul = mul nsw i32 %24, %25, !dbg !289
  call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !110), !dbg !289
  %cmp31 = icmp sgt i32 %mul, 0, !dbg !289
  br i1 %cmp31, label %if.then32, label %return, !dbg !289

if.then32:                                        ; preds = %if.end28
  %type = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0, !dbg !293
  %26 = load i32* %type, align 4, !dbg !293, !tbaa !238
  switch i32 %26, label %return [
    i32 1, label %if.then34
    i32 2, label %if.then42
  ], !dbg !293

if.then34:                                        ; preds = %if.then32
  %entries = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9, !dbg !295
  %27 = load double** %entries, align 8, !dbg !295, !tbaa !191
  %call35 = call i32 @DVfscanf(%struct._IO_FILE* %fp, i32 %mul, double* %27) #5, !dbg !295
  call void @llvm.dbg.value(metadata !{i32 %call35}, i64 0, metadata !109), !dbg !295
  %cmp36 = icmp eq i32 %call35, %mul, !dbg !295
  br i1 %cmp36, label %return, label %if.then37, !dbg !295

if.then37:                                        ; preds = %if.then34
  %28 = load %struct._IO_FILE** @stderr, align 8, !dbg !297, !tbaa !191
  %call38 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([78 x i8]* @.str9, i64 0, i64 0), i32 %call35, i32 %mul) #5, !dbg !297
  br label %return, !dbg !299

if.then42:                                        ; preds = %if.then32
  %mul43 = shl nsw i32 %mul, 1, !dbg !300
  %entries44 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9, !dbg !300
  %29 = load double** %entries44, align 8, !dbg !300, !tbaa !191
  %call45 = call i32 @DVfscanf(%struct._IO_FILE* %fp, i32 %mul43, double* %29) #5, !dbg !300
  call void @llvm.dbg.value(metadata !{i32 %call45}, i64 0, metadata !109), !dbg !300
  %cmp47 = icmp eq i32 %call45, %mul43, !dbg !300
  br i1 %cmp47, label %return, label %if.then48, !dbg !300

if.then48:                                        ; preds = %if.then42
  %30 = load %struct._IO_FILE** @stderr, align 8, !dbg !302, !tbaa !191
  %call50 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([78 x i8]* @.str9, i64 0, i64 0), i32 %call45, i32 %mul43) #5, !dbg !302
  br label %return, !dbg !304

return:                                           ; preds = %if.end28, %if.then42, %if.then34, %if.then32, %if.then48, %if.then37, %if.then25, %if.then17, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ 0, %if.then17 ], [ 0, %if.then25 ], [ 0, %if.then37 ], [ 0, %if.then48 ], [ 1, %if.then32 ], [ 1, %if.then34 ], [ 1, %if.then42 ], [ 1, %if.end28 ]
  ret i32 %retval.0, !dbg !305
}

; Function Attrs: optsize
declare void @DenseMtx_clearData(%struct._DenseMtx*) #4

; Function Attrs: optsize
declare i32 @IVfscanf(%struct._IO_FILE*, i32, i32*) #4

; Function Attrs: optsize
declare void @DenseMtx_init(%struct._DenseMtx*, i32, i32, i32, i32, i32, i32, i32) #4

; Function Attrs: optsize
declare i32 @DVfscanf(%struct._IO_FILE*, i32, double*) #4

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define i32 @DenseMtx_writeToFile(%struct._DenseMtx* %mtx, i8* %fn) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DenseMtx* %mtx}, i64 0, metadata !124), !dbg !306
  tail call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !125), !dbg !307
  %cmp = icmp eq %struct._DenseMtx* %mtx, null, !dbg !308
  br i1 %cmp, label %if.then, label %if.end, !dbg !308

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !309, !tbaa !191
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([58 x i8]* @.str15, i64 0, i64 0), %struct._DenseMtx* null, i8* %fn) #5, !dbg !309
  br label %return, !dbg !311

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i8* %fn, null, !dbg !312
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !312

if.then2:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !313, !tbaa !191
  %call3 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([57 x i8]* @.str16, i64 0, i64 0), %struct._DenseMtx* %mtx, i8* null) #5, !dbg !313
  br label %return, !dbg !315

if.end4:                                          ; preds = %if.end
  %call5 = tail call i64 @strlen(i8* %fn) #6, !dbg !316
  %conv = trunc i64 %call5 to i32, !dbg !316
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !127), !dbg !316
  tail call void @llvm.dbg.value(metadata !196, i64 0, metadata !128), !dbg !317
  %cmp8 = icmp sgt i32 %conv, 10, !dbg !318
  br i1 %cmp8, label %if.then10, label %if.else52, !dbg !318

if.then10:                                        ; preds = %if.end4
  %sub = shl i64 %call5, 32, !dbg !319
  %sext = add i64 %sub, -42949672960, !dbg !319
  %idxprom = ashr exact i64 %sext, 32, !dbg !319
  %arrayidx = getelementptr inbounds i8* %fn, i64 %idxprom, !dbg !319
  %call11 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([11 x i8]* @.str45, i64 0, i64 0)) #6, !dbg !319
  %cmp12 = icmp eq i32 %call11, 0, !dbg !319
  br i1 %cmp12, label %if.then14, label %if.else23, !dbg !319

if.then14:                                        ; preds = %if.then10
  %call15 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([3 x i8]* @.str17, i64 0, i64 0)) #5, !dbg !321
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call15}, i64 0, metadata !126), !dbg !321
  %cmp16 = icmp eq %struct._IO_FILE* %call15, null, !dbg !321
  br i1 %cmp16, label %if.then18, label %if.else, !dbg !321

if.then18:                                        ; preds = %if.then14
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !323, !tbaa !191
  %call19 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([58 x i8]* @.str18, i64 0, i64 0), i8* %fn) #5, !dbg !323
  br label %return, !dbg !325

if.else:                                          ; preds = %if.then14
  %call20 = tail call i32 @DenseMtx_writeToBinaryFile(%struct._DenseMtx* %mtx, %struct._IO_FILE* %call15) #7, !dbg !326
  %call21 = tail call i32 @fclose(%struct._IO_FILE* %call15) #5, !dbg !328
  br label %return, !dbg !329

if.else23:                                        ; preds = %if.then10
  %call27 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([11 x i8]* @.str44, i64 0, i64 0)) #6, !dbg !330
  %cmp28 = icmp eq i32 %call27, 0, !dbg !330
  br i1 %cmp28, label %if.then30, label %if.else40, !dbg !330

if.then30:                                        ; preds = %if.else23
  %call31 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str19, i64 0, i64 0)) #5, !dbg !331
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call31}, i64 0, metadata !126), !dbg !331
  %cmp32 = icmp eq %struct._IO_FILE* %call31, null, !dbg !331
  br i1 %cmp32, label %if.then34, label %if.else36, !dbg !331

if.then34:                                        ; preds = %if.then30
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !333, !tbaa !191
  %call35 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([58 x i8]* @.str18, i64 0, i64 0), i8* %fn) #5, !dbg !333
  br label %return, !dbg !335

if.else36:                                        ; preds = %if.then30
  %call37 = tail call i32 @DenseMtx_writeToFormattedFile(%struct._DenseMtx* %mtx, %struct._IO_FILE* %call31) #7, !dbg !336
  %call38 = tail call i32 @fclose(%struct._IO_FILE* %call31) #5, !dbg !338
  br label %return, !dbg !339

if.else40:                                        ; preds = %if.else23
  %call41 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str20, i64 0, i64 0)) #5, !dbg !340
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call41}, i64 0, metadata !126), !dbg !340
  %cmp42 = icmp eq %struct._IO_FILE* %call41, null, !dbg !340
  br i1 %cmp42, label %if.then44, label %if.else46, !dbg !340

if.then44:                                        ; preds = %if.else40
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !342, !tbaa !191
  %call45 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([58 x i8]* @.str18, i64 0, i64 0), i8* %fn) #5, !dbg !342
  br label %return, !dbg !344

if.else46:                                        ; preds = %if.else40
  %call47 = tail call i32 @DenseMtx_writeForHumanEye(%struct._DenseMtx* %mtx, %struct._IO_FILE* %call41) #7, !dbg !345
  %call48 = tail call i32 @fclose(%struct._IO_FILE* %call41) #5, !dbg !347
  br label %return

if.else52:                                        ; preds = %if.end4
  %call53 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str20, i64 0, i64 0)) #5, !dbg !348
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call53}, i64 0, metadata !126), !dbg !348
  %cmp54 = icmp eq %struct._IO_FILE* %call53, null, !dbg !348
  br i1 %cmp54, label %if.then56, label %if.else58, !dbg !348

if.then56:                                        ; preds = %if.else52
  %5 = load %struct._IO_FILE** @stderr, align 8, !dbg !350, !tbaa !191
  %call57 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([58 x i8]* @.str18, i64 0, i64 0), i8* %fn) #5, !dbg !350
  br label %return, !dbg !352

if.else58:                                        ; preds = %if.else52
  %call59 = tail call i32 @DenseMtx_writeForHumanEye(%struct._DenseMtx* %mtx, %struct._IO_FILE* %call53) #7, !dbg !353
  %call60 = tail call i32 @fclose(%struct._IO_FILE* %call53) #5, !dbg !355
  br label %return

return:                                           ; preds = %if.else58, %if.else36, %if.else46, %if.else, %if.then56, %if.then44, %if.then34, %if.then18, %if.then2, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -2, %if.then2 ], [ -3, %if.then18 ], [ -3, %if.then34 ], [ -3, %if.then44 ], [ -3, %if.then56 ], [ 1, %if.else ], [ 1, %if.else46 ], [ 1, %if.else36 ], [ 1, %if.else58 ]
  ret i32 %retval.0, !dbg !356
}

; Function Attrs: nounwind optsize uwtable
define i32 @DenseMtx_writeToBinaryFile(%struct._DenseMtx* %mtx, %struct._IO_FILE* %fp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DenseMtx* %mtx}, i64 0, metadata !136), !dbg !357
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !137), !dbg !358
  %cmp = icmp eq %struct._DenseMtx* %mtx, null, !dbg !359
  br i1 %cmp, label %if.then, label %if.end, !dbg !359

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !360, !tbaa !191
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([59 x i8]* @.str24, i64 0, i64 0), i64 58, i64 1, %struct._IO_FILE* %0) #8, !dbg !360
  br label %return, !dbg !362

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !363
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !363

if.then2:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !364, !tbaa !191
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([58 x i8]* @.str25, i64 0, i64 0), i64 57, i64 1, %struct._IO_FILE* %2) #8, !dbg !364
  br label %return, !dbg !366

if.end4:                                          ; preds = %if.end
  %type = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0, !dbg !367
  %4 = bitcast %struct._DenseMtx* %mtx to i8*, !dbg !367
  %call5 = tail call i64 @fwrite(i8* %4, i64 4, i64 1, %struct._IO_FILE* %fp) #5, !dbg !367
  %rowid = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 1, !dbg !368
  %5 = bitcast i32* %rowid to i8*, !dbg !368
  %call6 = tail call i64 @fwrite(i8* %5, i64 4, i64 1, %struct._IO_FILE* %fp) #5, !dbg !368
  %colid = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 2, !dbg !369
  %6 = bitcast i32* %colid to i8*, !dbg !369
  %call7 = tail call i64 @fwrite(i8* %6, i64 4, i64 1, %struct._IO_FILE* %fp) #5, !dbg !369
  %nrow = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 3, !dbg !370
  %7 = bitcast i32* %nrow to i8*, !dbg !370
  %call8 = tail call i64 @fwrite(i8* %7, i64 4, i64 1, %struct._IO_FILE* %fp) #5, !dbg !370
  %ncol = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 4, !dbg !371
  %8 = bitcast i32* %ncol to i8*, !dbg !371
  %call9 = tail call i64 @fwrite(i8* %8, i64 4, i64 1, %struct._IO_FILE* %fp) #5, !dbg !371
  %inc1 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 5, !dbg !372
  %9 = bitcast i32* %inc1 to i8*, !dbg !372
  %call10 = tail call i64 @fwrite(i8* %9, i64 4, i64 1, %struct._IO_FILE* %fp) #5, !dbg !372
  %inc2 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 6, !dbg !373
  %10 = bitcast i32* %inc2 to i8*, !dbg !373
  %call11 = tail call i64 @fwrite(i8* %10, i64 4, i64 1, %struct._IO_FILE* %fp) #5, !dbg !373
  %11 = load i32* %nrow, align 4, !dbg !374, !tbaa !238
  tail call void @llvm.dbg.value(metadata !{i32 %11}, i64 0, metadata !138), !dbg !374
  %cmp13 = icmp sgt i32 %11, 0, !dbg !374
  br i1 %cmp13, label %land.lhs.true, label %if.end18, !dbg !374

land.lhs.true:                                    ; preds = %if.end4
  %rowind = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 7, !dbg !374
  %12 = load i32** %rowind, align 8, !dbg !374, !tbaa !191
  %cmp14 = icmp eq i32* %12, null, !dbg !374
  br i1 %cmp14, label %if.end18, label %if.then15, !dbg !374

if.then15:                                        ; preds = %land.lhs.true
  %13 = bitcast i32* %12 to i8*, !dbg !375
  %conv = sext i32 %11 to i64, !dbg !375
  %call17 = tail call i64 @fwrite(i8* %13, i64 4, i64 %conv, %struct._IO_FILE* %fp) #5, !dbg !375
  br label %if.end18, !dbg !377

if.end18:                                         ; preds = %land.lhs.true, %if.then15, %if.end4
  %14 = load i32* %ncol, align 4, !dbg !378, !tbaa !238
  tail call void @llvm.dbg.value(metadata !{i32 %14}, i64 0, metadata !138), !dbg !378
  %cmp20 = icmp sgt i32 %14, 0, !dbg !378
  br i1 %cmp20, label %land.lhs.true22, label %if.end29, !dbg !378

land.lhs.true22:                                  ; preds = %if.end18
  %colind = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 8, !dbg !378
  %15 = load i32** %colind, align 8, !dbg !378, !tbaa !191
  %cmp23 = icmp eq i32* %15, null, !dbg !378
  br i1 %cmp23, label %if.end29, label %if.then25, !dbg !378

if.then25:                                        ; preds = %land.lhs.true22
  %16 = bitcast i32* %15 to i8*, !dbg !379
  %conv27 = sext i32 %14 to i64, !dbg !379
  %call28 = tail call i64 @fwrite(i8* %16, i64 4, i64 %conv27, %struct._IO_FILE* %fp) #5, !dbg !379
  %.pre = load i32* %ncol, align 4, !dbg !381, !tbaa !238
  br label %if.end29, !dbg !382

if.end29:                                         ; preds = %land.lhs.true22, %if.end18, %if.then25
  %17 = phi i32 [ %.pre, %if.then25 ], [ %14, %if.end18 ], [ %14, %land.lhs.true22 ]
  %18 = load i32* %nrow, align 4, !dbg !381, !tbaa !238
  %mul = mul nsw i32 %17, %18, !dbg !381
  tail call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !138), !dbg !381
  %cmp32 = icmp sgt i32 %mul, 0, !dbg !381
  br i1 %cmp32, label %land.lhs.true34, label %return, !dbg !381

land.lhs.true34:                                  ; preds = %if.end29
  %entries = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9, !dbg !381
  %19 = load double** %entries, align 8, !dbg !381, !tbaa !191
  %cmp35 = icmp eq double* %19, null, !dbg !381
  br i1 %cmp35, label %return, label %if.then37, !dbg !381

if.then37:                                        ; preds = %land.lhs.true34
  %20 = load i32* %type, align 4, !dbg !383, !tbaa !238
  switch i32 %20, label %return [
    i32 1, label %if.then41
    i32 2, label %if.then48
  ], !dbg !383

if.then41:                                        ; preds = %if.then37
  %21 = bitcast double* %19 to i8*, !dbg !385
  %conv43 = sext i32 %mul to i64, !dbg !385
  %call44 = tail call i64 @fwrite(i8* %21, i64 8, i64 %conv43, %struct._IO_FILE* %fp) #5, !dbg !385
  br label %return, !dbg !387

if.then48:                                        ; preds = %if.then37
  %22 = bitcast double* %19 to i8*, !dbg !388
  %mul50 = shl nsw i32 %mul, 1, !dbg !388
  %conv51 = sext i32 %mul50 to i64, !dbg !388
  %call52 = tail call i64 @fwrite(i8* %22, i64 8, i64 %conv51, %struct._IO_FILE* %fp) #5, !dbg !388
  br label %return, !dbg !390

return:                                           ; preds = %if.end29, %if.then48, %if.then41, %land.lhs.true34, %if.then37, %if.then2, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -2, %if.then2 ], [ 1, %if.then37 ], [ 1, %land.lhs.true34 ], [ 1, %if.then41 ], [ 1, %if.then48 ], [ 1, %if.end29 ]
  ret i32 %retval.0, !dbg !391
}

; Function Attrs: nounwind optsize uwtable
define i32 @DenseMtx_writeToFormattedFile(%struct._DenseMtx* %mtx, %struct._IO_FILE* %fp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DenseMtx* %mtx}, i64 0, metadata !131), !dbg !392
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !132), !dbg !393
  %cmp = icmp eq %struct._DenseMtx* %mtx, null, !dbg !394
  br i1 %cmp, label %if.then, label %if.end, !dbg !394

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !395, !tbaa !191
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([62 x i8]* @.str21, i64 0, i64 0), i64 61, i64 1, %struct._IO_FILE* %0) #8, !dbg !395
  br label %return, !dbg !397

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !398
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !398

if.then2:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !399, !tbaa !191
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([61 x i8]* @.str22, i64 0, i64 0), i64 60, i64 1, %struct._IO_FILE* %2) #8, !dbg !399
  br label %return, !dbg !401

if.end4:                                          ; preds = %if.end
  %type = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0, !dbg !402
  %4 = load i32* %type, align 4, !dbg !402, !tbaa !238
  %rowid = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 1, !dbg !402
  %5 = load i32* %rowid, align 4, !dbg !402, !tbaa !238
  %colid = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 2, !dbg !402
  %6 = load i32* %colid, align 4, !dbg !402, !tbaa !238
  %nrow = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 3, !dbg !402
  %7 = load i32* %nrow, align 4, !dbg !402, !tbaa !238
  %ncol = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 4, !dbg !402
  %8 = load i32* %ncol, align 4, !dbg !402, !tbaa !238
  %inc1 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 5, !dbg !402
  %9 = load i32* %inc1, align 4, !dbg !402, !tbaa !238
  %inc2 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 6, !dbg !402
  %10 = load i32* %inc2, align 4, !dbg !402, !tbaa !238
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([23 x i8]* @.str23, i64 0, i64 0), i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10) #5, !dbg !402
  %11 = load i32* %nrow, align 4, !dbg !403, !tbaa !238
  tail call void @llvm.dbg.value(metadata !{i32 %11}, i64 0, metadata !133), !dbg !403
  %cmp7 = icmp sgt i32 %11, 0, !dbg !403
  br i1 %cmp7, label %land.lhs.true, label %if.end11, !dbg !403

land.lhs.true:                                    ; preds = %if.end4
  %rowind = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 7, !dbg !403
  %12 = load i32** %rowind, align 8, !dbg !403, !tbaa !191
  %cmp8 = icmp eq i32* %12, null, !dbg !403
  br i1 %cmp8, label %if.end11, label %if.then9, !dbg !403

if.then9:                                         ; preds = %land.lhs.true
  tail call void @IVfprintf(%struct._IO_FILE* %fp, i32 %11, i32* %12) #5, !dbg !404
  br label %if.end11, !dbg !406

if.end11:                                         ; preds = %land.lhs.true, %if.then9, %if.end4
  %13 = load i32* %ncol, align 4, !dbg !407, !tbaa !238
  tail call void @llvm.dbg.value(metadata !{i32 %13}, i64 0, metadata !133), !dbg !407
  %cmp13 = icmp sgt i32 %13, 0, !dbg !407
  br i1 %cmp13, label %land.lhs.true14, label %if.end18, !dbg !407

land.lhs.true14:                                  ; preds = %if.end11
  %colind = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 8, !dbg !407
  %14 = load i32** %colind, align 8, !dbg !407, !tbaa !191
  %cmp15 = icmp eq i32* %14, null, !dbg !407
  br i1 %cmp15, label %if.end18, label %if.then16, !dbg !407

if.then16:                                        ; preds = %land.lhs.true14
  tail call void @IVfprintf(%struct._IO_FILE* %fp, i32 %13, i32* %14) #5, !dbg !408
  %.pre = load i32* %ncol, align 4, !dbg !410, !tbaa !238
  br label %if.end18, !dbg !411

if.end18:                                         ; preds = %land.lhs.true14, %if.end11, %if.then16
  %15 = phi i32 [ %.pre, %if.then16 ], [ %13, %if.end11 ], [ %13, %land.lhs.true14 ]
  %16 = load i32* %nrow, align 4, !dbg !410, !tbaa !238
  %mul = mul nsw i32 %15, %16, !dbg !410
  tail call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !133), !dbg !410
  %cmp21 = icmp sgt i32 %mul, 0, !dbg !410
  br i1 %cmp21, label %land.lhs.true22, label %return, !dbg !410

land.lhs.true22:                                  ; preds = %if.end18
  %entries = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9, !dbg !410
  %17 = load double** %entries, align 8, !dbg !410, !tbaa !191
  %cmp23 = icmp eq double* %17, null, !dbg !410
  br i1 %cmp23, label %return, label %if.then24, !dbg !410

if.then24:                                        ; preds = %land.lhs.true22
  %18 = load i32* %type, align 4, !dbg !412, !tbaa !238
  switch i32 %18, label %return [
    i32 1, label %if.then27
    i32 2, label %if.then31
  ], !dbg !412

if.then27:                                        ; preds = %if.then24
  tail call void @DVfprintf(%struct._IO_FILE* %fp, i32 %mul, double* %17) #5, !dbg !414
  br label %return, !dbg !416

if.then31:                                        ; preds = %if.then24
  %mul32 = shl nsw i32 %mul, 1, !dbg !417
  tail call void @DVfprintf(%struct._IO_FILE* %fp, i32 %mul32, double* %17) #5, !dbg !417
  br label %return, !dbg !419

return:                                           ; preds = %if.end18, %if.then31, %if.then27, %land.lhs.true22, %if.then24, %if.then2, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -2, %if.then2 ], [ 1, %if.then24 ], [ 1, %land.lhs.true22 ], [ 1, %if.then27 ], [ 1, %if.then31 ], [ 1, %if.end18 ]
  ret i32 %retval.0, !dbg !420
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
  call void @llvm.dbg.value(metadata !{%struct._DenseMtx* %mtx}, i64 0, metadata !145), !dbg !421
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !146), !dbg !422
  call void @llvm.dbg.declare(metadata !{%struct._A2* %a2}, metadata !147), !dbg !423
  call void @llvm.dbg.declare(metadata !{i32* %ierr}, metadata !159), !dbg !424
  call void @llvm.dbg.declare(metadata !{i32* %ncol}, metadata !160), !dbg !424
  call void @llvm.dbg.declare(metadata !{i32* %nrow}, metadata !161), !dbg !424
  call void @llvm.dbg.declare(metadata !{i32** %colind}, metadata !162), !dbg !425
  call void @llvm.dbg.declare(metadata !{i32** %rowind}, metadata !163), !dbg !425
  %cmp = icmp eq %struct._DenseMtx* %mtx, null, !dbg !426
  br i1 %cmp, label %if.then, label %if.end, !dbg !426

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !427, !tbaa !191
  %1 = call i64 @fwrite(i8* getelementptr inbounds ([59 x i8]* @.str36, i64 0, i64 0), i64 58, i64 1, %struct._IO_FILE* %0) #8, !dbg !427
  br label %return, !dbg !429

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !430
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !430

if.then2:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !431, !tbaa !191
  %3 = call i64 @fwrite(i8* getelementptr inbounds ([59 x i8]* @.str36, i64 0, i64 0), i64 58, i64 1, %struct._IO_FILE* %2) #8, !dbg !431
  br label %return, !dbg !433

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @DenseMtx_writeStats(%struct._DenseMtx* %mtx, %struct._IO_FILE* %fp) #7, !dbg !434
  call void @DenseMtx_rowIndices(%struct._DenseMtx* %mtx, i32* %nrow, i32** %rowind) #5, !dbg !435
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !161), !dbg !436
  %4 = load i32* %nrow, align 4, !dbg !436, !tbaa !238
  %cmp6 = icmp sgt i32 %4, 0, !dbg !436
  br i1 %cmp6, label %land.lhs.true, label %if.end11, !dbg !436

land.lhs.true:                                    ; preds = %if.end4
  call void @llvm.dbg.value(metadata !{i32** %rowind}, i64 0, metadata !163), !dbg !436
  %5 = load i32** %rowind, align 8, !dbg !436, !tbaa !191
  %cmp7 = icmp eq i32* %5, null, !dbg !436
  br i1 %cmp7, label %if.end11, label %if.then8, !dbg !436

if.then8:                                         ; preds = %land.lhs.true
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([26 x i8]* @.str37, i64 0, i64 0), i32* %5) #5, !dbg !437
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !161), !dbg !439
  %6 = load i32* %nrow, align 4, !dbg !439, !tbaa !238
  call void @llvm.dbg.value(metadata !{i32** %rowind}, i64 0, metadata !163), !dbg !439
  %7 = load i32** %rowind, align 8, !dbg !439, !tbaa !191
  %call10 = call i32 @IVfp80(%struct._IO_FILE* %fp, i32 %6, i32* %7, i32 80, i32* %ierr) #5, !dbg !439
  br label %if.end11, !dbg !440

if.end11:                                         ; preds = %land.lhs.true, %if.then8, %if.end4
  call void @DenseMtx_columnIndices(%struct._DenseMtx* %mtx, i32* %ncol, i32** %colind) #5, !dbg !441
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !160), !dbg !442
  %8 = load i32* %ncol, align 4, !dbg !442, !tbaa !238
  %cmp12 = icmp sgt i32 %8, 0, !dbg !442
  br i1 %cmp12, label %land.lhs.true13, label %if.end18, !dbg !442

land.lhs.true13:                                  ; preds = %if.end11
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !162), !dbg !442
  %9 = load i32** %colind, align 8, !dbg !442, !tbaa !191
  %cmp14 = icmp eq i32* %9, null, !dbg !442
  br i1 %cmp14, label %if.end18, label %if.then15, !dbg !442

if.then15:                                        ; preds = %land.lhs.true13
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([29 x i8]* @.str38, i64 0, i64 0), i32* %9) #5, !dbg !443
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !160), !dbg !445
  %10 = load i32* %ncol, align 4, !dbg !445, !tbaa !238
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !162), !dbg !445
  %11 = load i32** %colind, align 8, !dbg !445, !tbaa !191
  %call17 = call i32 @IVfp80(%struct._IO_FILE* %fp, i32 %10, i32* %11, i32 80, i32* %ierr) #5, !dbg !445
  br label %if.end18, !dbg !446

if.end18:                                         ; preds = %land.lhs.true13, %if.then15, %if.end11
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !161), !dbg !447
  %12 = load i32* %nrow, align 4, !dbg !447, !tbaa !238
  %cmp19 = icmp sgt i32 %12, 0, !dbg !447
  br i1 %cmp19, label %land.lhs.true20, label %return, !dbg !447

land.lhs.true20:                                  ; preds = %if.end18
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !160), !dbg !447
  %13 = load i32* %ncol, align 4, !dbg !447, !tbaa !238
  %cmp21 = icmp sgt i32 %13, 0, !dbg !447
  br i1 %cmp21, label %if.then22, label %return, !dbg !447

if.then22:                                        ; preds = %land.lhs.true20
  call void @A2_setDefaultFields(%struct._A2* %a2) #5, !dbg !448
  call void @DenseMtx_setA2(%struct._DenseMtx* %mtx, %struct._A2* %a2) #5, !dbg !450
  call void @A2_writeForHumanEye(%struct._A2* %a2, %struct._IO_FILE* %fp) #5, !dbg !451
  br label %return, !dbg !452

return:                                           ; preds = %if.end18, %land.lhs.true20, %if.then22, %if.then2, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -2, %if.then2 ], [ 1, %if.then22 ], [ 1, %land.lhs.true20 ], [ 1, %if.end18 ]
  ret i32 %retval.0, !dbg !453
}

; Function Attrs: optsize
declare void @IVfprintf(%struct._IO_FILE*, i32, i32*) #4

; Function Attrs: optsize
declare void @DVfprintf(%struct._IO_FILE*, i32, double*) #4

; Function Attrs: nounwind optsize
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define i32 @DenseMtx_writeStats(%struct._DenseMtx* %mtx, %struct._IO_FILE* %fp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._DenseMtx* %mtx}, i64 0, metadata !141), !dbg !454
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !142), !dbg !455
  %cmp = icmp eq %struct._DenseMtx* %mtx, null, !dbg !456
  br i1 %cmp, label %if.then, label %if.end, !dbg !456

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !457, !tbaa !191
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([52 x i8]* @.str26, i64 0, i64 0), i64 51, i64 1, %struct._IO_FILE* %0) #8, !dbg !457
  br label %return, !dbg !459

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !460
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !460

if.then2:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !461, !tbaa !191
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([51 x i8]* @.str27, i64 0, i64 0), i64 50, i64 1, %struct._IO_FILE* %2) #8, !dbg !461
  br label %return, !dbg !463

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([32 x i8]* @.str28, i64 0, i64 0), %struct._DenseMtx* %mtx) #5, !dbg !464
  %type = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0, !dbg !465
  %4 = load i32* %type, align 4, !dbg !465, !tbaa !238
  switch i32 %4, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb7
  ], !dbg !465

sw.bb:                                            ; preds = %if.end4
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str29, i64 0, i64 0), i64 14, i64 1, %struct._IO_FILE* %fp) #8, !dbg !466
  br label %sw.epilog, !dbg !468

sw.bb7:                                           ; preds = %if.end4
  %6 = tail call i64 @fwrite(i8* getelementptr inbounds ([18 x i8]* @.str30, i64 0, i64 0), i64 17, i64 1, %struct._IO_FILE* %fp) #8, !dbg !469
  br label %sw.epilog, !dbg !470

sw.default:                                       ; preds = %if.end4
  %7 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8]* @.str31, i64 0, i64 0), i64 22, i64 1, %struct._IO_FILE* %fp) #8, !dbg !471
  br label %sw.epilog, !dbg !472

sw.epilog:                                        ; preds = %sw.default, %sw.bb7, %sw.bb
  %rowid = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 1, !dbg !473
  %8 = load i32* %rowid, align 4, !dbg !473, !tbaa !238
  %colid = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 2, !dbg !473
  %9 = load i32* %colid, align 4, !dbg !473, !tbaa !238
  %nrow = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 3, !dbg !473
  %10 = load i32* %nrow, align 4, !dbg !473, !tbaa !238
  %ncol = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 4, !dbg !473
  %11 = load i32* %ncol, align 4, !dbg !473, !tbaa !238
  %inc1 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 5, !dbg !473
  %12 = load i32* %inc1, align 4, !dbg !473, !tbaa !238
  %inc2 = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 6, !dbg !473
  %13 = load i32* %inc2, align 4, !dbg !473, !tbaa !238
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([71 x i8]* @.str32, i64 0, i64 0), i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13) #5, !dbg !473
  %rowind = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 7, !dbg !474
  %14 = load i32** %rowind, align 8, !dbg !474, !tbaa !191
  %colind = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 8, !dbg !474
  %15 = load i32** %colind, align 8, !dbg !474, !tbaa !191
  %entries = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 9, !dbg !474
  %16 = load double** %entries, align 8, !dbg !474, !tbaa !191
  %call11 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([41 x i8]* @.str33, i64 0, i64 0), i32* %14, i32* %15, double* %16) #5, !dbg !474
  %wrkDV = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 10, !dbg !475
  %call12 = tail call double* @DV_entries(%struct._DV* %wrkDV) #5, !dbg !475
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([12 x i8]* @.str34, i64 0, i64 0), double* %call12) #5, !dbg !475
  %17 = load i32** %rowind, align 8, !dbg !476, !tbaa !191
  %call16 = tail call double* @DV_entries(%struct._DV* %wrkDV) #5, !dbg !477
  %sub.ptr.lhs.cast = ptrtoint i32* %17 to i64, !dbg !477
  %sub.ptr.rhs.cast = ptrtoint double* %call16 to i64, !dbg !477
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !477
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 2, !dbg !477
  %18 = load i32** %colind, align 8, !dbg !477, !tbaa !191
  %call19 = tail call double* @DV_entries(%struct._DV* %wrkDV) #5, !dbg !478
  %sub.ptr.lhs.cast20 = ptrtoint i32* %18 to i64, !dbg !478
  %sub.ptr.rhs.cast21 = ptrtoint double* %call19 to i64, !dbg !478
  %sub.ptr.sub22 = sub i64 %sub.ptr.lhs.cast20, %sub.ptr.rhs.cast21, !dbg !478
  %sub.ptr.div23 = ashr exact i64 %sub.ptr.sub22, 2, !dbg !478
  %19 = load double** %entries, align 8, !dbg !478, !tbaa !191
  %call26 = tail call double* @DV_entries(%struct._DV* %wrkDV) #5, !dbg !479
  %sub.ptr.lhs.cast27 = ptrtoint double* %19 to i64, !dbg !479
  %sub.ptr.rhs.cast28 = ptrtoint double* %call26 to i64, !dbg !479
  %sub.ptr.sub29 = sub i64 %sub.ptr.lhs.cast27, %sub.ptr.rhs.cast28, !dbg !479
  %sub.ptr.div30 = ashr exact i64 %sub.ptr.sub29, 3, !dbg !479
  %call31 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([65 x i8]* @.str35, i64 0, i64 0), i64 %sub.ptr.div, i64 %sub.ptr.div23, i64 %sub.ptr.div30) #5, !dbg !479
  br label %return, !dbg !480

return:                                           ; preds = %sw.epilog, %if.then2, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -2, %if.then2 ], [ 1, %sw.epilog ]
  ret i32 %retval.0, !dbg !480
}

; Function Attrs: optsize
declare double* @DV_entries(%struct._DV*) #4

; Function Attrs: optsize
declare void @DenseMtx_rowIndices(%struct._DenseMtx*, i32*, i32**) #4

; Function Attrs: optsize
declare i32 @IVfp80(%struct._IO_FILE*, i32, i32*, i32, i32*) #4

; Function Attrs: optsize
declare void @DenseMtx_columnIndices(%struct._DenseMtx*, i32*, i32**) #4

; Function Attrs: optsize
declare void @A2_setDefaultFields(%struct._A2*) #4

; Function Attrs: optsize
declare void @DenseMtx_setA2(%struct._DenseMtx*, %struct._A2*) #4

; Function Attrs: optsize
declare void @A2_writeForHumanEye(%struct._A2*, %struct._IO_FILE*) #4

; Function Attrs: nounwind optsize uwtable
define i32 @DenseMtx_writeForMatlab(%struct._DenseMtx* %mtx, i8* %mtxname, %struct._IO_FILE* %fp) #0 {
entry:
  %ncol = alloca i32, align 4
  %nrow = alloca i32, align 4
  %colind = alloca i32*, align 8
  %rowind = alloca i32*, align 8
  call void @llvm.dbg.value(metadata !{%struct._DenseMtx* %mtx}, i64 0, metadata !168), !dbg !481
  call void @llvm.dbg.value(metadata !{i8* %mtxname}, i64 0, metadata !169), !dbg !482
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !170), !dbg !483
  call void @llvm.dbg.declare(metadata !{i32* %ncol}, metadata !176), !dbg !484
  call void @llvm.dbg.declare(metadata !{i32* %nrow}, metadata !177), !dbg !484
  call void @llvm.dbg.declare(metadata !{i32** %colind}, metadata !178), !dbg !485
  call void @llvm.dbg.declare(metadata !{i32** %rowind}, metadata !179), !dbg !485
  %cmp = icmp eq %struct._DenseMtx* %mtx, null, !dbg !486
  br i1 %cmp, label %if.then, label %if.end, !dbg !486

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !487, !tbaa !191
  %1 = call i64 @fwrite(i8* getelementptr inbounds ([57 x i8]* @.str39, i64 0, i64 0), i64 56, i64 1, %struct._IO_FILE* %0) #8, !dbg !487
  br label %return, !dbg !489

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i8* %mtxname, null, !dbg !490
  br i1 %cmp1, label %if.then2, label %if.end4, !dbg !490

if.then2:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !491, !tbaa !191
  %3 = call i64 @fwrite(i8* getelementptr inbounds ([61 x i8]* @.str40, i64 0, i64 0), i64 60, i64 1, %struct._IO_FILE* %2) #8, !dbg !491
  br label %return, !dbg !493

if.end4:                                          ; preds = %if.end
  %cmp5 = icmp eq %struct._IO_FILE* %fp, null, !dbg !494
  br i1 %cmp5, label %if.then6, label %if.end8, !dbg !494

if.then6:                                         ; preds = %if.end4
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !495, !tbaa !191
  %5 = call i64 @fwrite(i8* getelementptr inbounds ([56 x i8]* @.str41, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #8, !dbg !495
  br label %return, !dbg !497

if.end8:                                          ; preds = %if.end4
  call void @DenseMtx_rowIndices(%struct._DenseMtx* %mtx, i32* %nrow, i32** %rowind) #5, !dbg !498
  call void @DenseMtx_columnIndices(%struct._DenseMtx* %mtx, i32* %ncol, i32** %colind) #5, !dbg !499
  call void @DenseMtx_dimensions(%struct._DenseMtx* %mtx, i32* %nrow, i32* %ncol) #5, !dbg !500
  %call9 = call i32 @DenseMtx_rowIncrement(%struct._DenseMtx* %mtx) #5, !dbg !501
  call void @llvm.dbg.value(metadata !{i32 %call9}, i64 0, metadata !172), !dbg !501
  %call10 = call i32 @DenseMtx_columnIncrement(%struct._DenseMtx* %mtx) #5, !dbg !502
  call void @llvm.dbg.value(metadata !{i32 %call10}, i64 0, metadata !173), !dbg !502
  %call11 = call double* @DenseMtx_entries(%struct._DenseMtx* %mtx) #5, !dbg !503
  call void @llvm.dbg.value(metadata !{double* %call11}, i64 0, metadata !171), !dbg !503
  %type = getelementptr inbounds %struct._DenseMtx* %mtx, i64 0, i32 0, !dbg !504
  %6 = load i32* %type, align 4, !dbg !504, !tbaa !238
  switch i32 %6, label %return [
    i32 1, label %for.cond.preheader
    i32 2, label %for.cond32.preheader
  ], !dbg !504

for.cond32.preheader:                             ; preds = %if.end8
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !176), !dbg !505
  %7 = load i32* %ncol, align 4, !dbg !505, !tbaa !238
  %cmp33108 = icmp sgt i32 %7, 0, !dbg !505
  br i1 %cmp33108, label %for.cond35.preheader.lr.ph, label %return, !dbg !505

for.cond35.preheader.lr.ph:                       ; preds = %for.cond32.preheader
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !177), !dbg !508
  %.pre117 = load i32* %nrow, align 4, !dbg !508, !tbaa !238
  br label %for.cond35.preheader, !dbg !505

for.cond.preheader:                               ; preds = %if.end8
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !176), !dbg !511
  %8 = load i32* %ncol, align 4, !dbg !511, !tbaa !238
  %cmp14103 = icmp sgt i32 %8, 0, !dbg !511
  br i1 %cmp14103, label %for.cond15.preheader.lr.ph, label %return, !dbg !511

for.cond15.preheader.lr.ph:                       ; preds = %for.cond.preheader
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !177), !dbg !514
  %.pre = load i32* %nrow, align 4, !dbg !514, !tbaa !238
  br label %for.cond15.preheader, !dbg !511

for.cond15.preheader:                             ; preds = %for.cond15.preheader.lr.ph, %for.inc26
  %9 = phi i32 [ %8, %for.cond15.preheader.lr.ph ], [ %20, %for.inc26 ]
  %10 = phi i32 [ %.pre, %for.cond15.preheader.lr.ph ], [ %21, %for.inc26 ], !dbg !514
  %indvars.iv110 = phi i64 [ 0, %for.cond15.preheader.lr.ph ], [ %indvars.iv.next111, %for.inc26 ]
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !177), !dbg !514
  %cmp16101 = icmp sgt i32 %10, 0, !dbg !514
  br i1 %cmp16101, label %for.body17.lr.ph, label %for.inc26, !dbg !514

for.body17.lr.ph:                                 ; preds = %for.cond15.preheader
  %11 = trunc i64 %indvars.iv110 to i32, !dbg !517
  %mul21 = mul nsw i32 %11, %call10, !dbg !517
  br label %for.body17, !dbg !514

for.body17:                                       ; preds = %for.body17.lr.ph, %for.body17
  %indvars.iv = phi i64 [ 0, %for.body17.lr.ph ], [ %indvars.iv.next, %for.body17 ]
  call void @llvm.dbg.value(metadata !{i32** %rowind}, i64 0, metadata !179), !dbg !517
  %12 = load i32** %rowind, align 8, !dbg !517, !tbaa !191
  %arrayidx = getelementptr inbounds i32* %12, i64 %indvars.iv, !dbg !517
  %13 = load i32* %arrayidx, align 4, !dbg !517, !tbaa !238
  %add = add nsw i32 %13, 1, !dbg !517
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !178), !dbg !517
  %14 = load i32** %colind, align 8, !dbg !517, !tbaa !191
  %arrayidx19 = getelementptr inbounds i32* %14, i64 %indvars.iv110, !dbg !517
  %15 = load i32* %arrayidx19, align 4, !dbg !517, !tbaa !238
  %add20 = add nsw i32 %15, 1, !dbg !517
  %16 = trunc i64 %indvars.iv to i32, !dbg !517
  %mul = mul nsw i32 %16, %call9, !dbg !517
  %add22 = add nsw i32 %mul, %mul21, !dbg !517
  %idxprom23 = sext i32 %add22 to i64, !dbg !517
  %arrayidx24 = getelementptr inbounds double* %call11, i64 %idxprom23, !dbg !517
  %17 = load double* %arrayidx24, align 8, !dbg !517, !tbaa !519
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([24 x i8]* @.str42, i64 0, i64 0), i8* %mtxname, i32 %add, i32 %add20, double %17) #5, !dbg !517
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !514
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !177), !dbg !514
  %18 = load i32* %nrow, align 4, !dbg !514, !tbaa !238
  %19 = trunc i64 %indvars.iv.next to i32, !dbg !514
  %cmp16 = icmp slt i32 %19, %18, !dbg !514
  br i1 %cmp16, label %for.body17, label %for.cond15.for.inc26_crit_edge, !dbg !514

for.cond15.for.inc26_crit_edge:                   ; preds = %for.body17
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !176), !dbg !511
  %.pre116 = load i32* %ncol, align 4, !dbg !511, !tbaa !238
  br label %for.inc26, !dbg !514

for.inc26:                                        ; preds = %for.cond15.for.inc26_crit_edge, %for.cond15.preheader
  %20 = phi i32 [ %.pre116, %for.cond15.for.inc26_crit_edge ], [ %9, %for.cond15.preheader ], !dbg !511
  %21 = phi i32 [ %18, %for.cond15.for.inc26_crit_edge ], [ %10, %for.cond15.preheader ]
  %indvars.iv.next111 = add i64 %indvars.iv110, 1, !dbg !511
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !176), !dbg !511
  %22 = trunc i64 %indvars.iv.next111 to i32, !dbg !511
  %cmp14 = icmp slt i32 %22, %20, !dbg !511
  br i1 %cmp14, label %for.cond15.preheader, label %return, !dbg !511

for.cond35.preheader:                             ; preds = %for.cond35.preheader.lr.ph, %for.inc61
  %23 = phi i32 [ %7, %for.cond35.preheader.lr.ph ], [ %35, %for.inc61 ]
  %24 = phi i32 [ %.pre117, %for.cond35.preheader.lr.ph ], [ %36, %for.inc61 ], !dbg !508
  %indvars.iv114 = phi i64 [ 0, %for.cond35.preheader.lr.ph ], [ %indvars.iv.next115, %for.inc61 ]
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !177), !dbg !508
  %cmp36105 = icmp sgt i32 %24, 0, !dbg !508
  br i1 %cmp36105, label %for.body37.lr.ph, label %for.inc61, !dbg !508

for.body37.lr.ph:                                 ; preds = %for.cond35.preheader
  %25 = trunc i64 %indvars.iv114 to i32, !dbg !520
  %mul45 = mul nsw i32 %25, %call10, !dbg !520
  br label %for.body37, !dbg !508

for.body37:                                       ; preds = %for.body37.lr.ph, %for.body37
  %indvars.iv112 = phi i64 [ 0, %for.body37.lr.ph ], [ %indvars.iv.next113, %for.body37 ]
  call void @llvm.dbg.value(metadata !{i32** %rowind}, i64 0, metadata !179), !dbg !520
  %26 = load i32** %rowind, align 8, !dbg !520, !tbaa !191
  %arrayidx39 = getelementptr inbounds i32* %26, i64 %indvars.iv112, !dbg !520
  %27 = load i32* %arrayidx39, align 4, !dbg !520, !tbaa !238
  %add40 = add nsw i32 %27, 1, !dbg !520
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !178), !dbg !520
  %28 = load i32** %colind, align 8, !dbg !520, !tbaa !191
  %arrayidx42 = getelementptr inbounds i32* %28, i64 %indvars.iv114, !dbg !520
  %29 = load i32* %arrayidx42, align 4, !dbg !520, !tbaa !238
  %add43 = add nsw i32 %29, 1, !dbg !520
  %30 = trunc i64 %indvars.iv112 to i32, !dbg !520
  %mul44 = mul nsw i32 %30, %call9, !dbg !520
  %add46 = add nsw i32 %mul44, %mul45, !dbg !520
  %mul47 = shl nsw i32 %add46, 1, !dbg !520
  %idxprom48 = sext i32 %mul47 to i64, !dbg !520
  %arrayidx49 = getelementptr inbounds double* %call11, i64 %idxprom48, !dbg !520
  %31 = load double* %arrayidx49, align 8, !dbg !520, !tbaa !519
  %add54100 = or i32 %mul47, 1, !dbg !520
  %idxprom55 = sext i32 %add54100 to i64, !dbg !520
  %arrayidx56 = getelementptr inbounds double* %call11, i64 %idxprom55, !dbg !520
  %32 = load double* %arrayidx56, align 8, !dbg !520, !tbaa !519
  %call57 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([36 x i8]* @.str43, i64 0, i64 0), i8* %mtxname, i32 %add40, i32 %add43, double %31, double %32) #5, !dbg !520
  %indvars.iv.next113 = add i64 %indvars.iv112, 1, !dbg !508
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !177), !dbg !508
  %33 = load i32* %nrow, align 4, !dbg !508, !tbaa !238
  %34 = trunc i64 %indvars.iv.next113 to i32, !dbg !508
  %cmp36 = icmp slt i32 %34, %33, !dbg !508
  br i1 %cmp36, label %for.body37, label %for.cond35.for.inc61_crit_edge, !dbg !508

for.cond35.for.inc61_crit_edge:                   ; preds = %for.body37
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !176), !dbg !505
  %.pre118 = load i32* %ncol, align 4, !dbg !505, !tbaa !238
  br label %for.inc61, !dbg !508

for.inc61:                                        ; preds = %for.cond35.for.inc61_crit_edge, %for.cond35.preheader
  %35 = phi i32 [ %.pre118, %for.cond35.for.inc61_crit_edge ], [ %23, %for.cond35.preheader ], !dbg !505
  %36 = phi i32 [ %33, %for.cond35.for.inc61_crit_edge ], [ %24, %for.cond35.preheader ]
  %indvars.iv.next115 = add i64 %indvars.iv114, 1, !dbg !505
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !176), !dbg !505
  %37 = trunc i64 %indvars.iv.next115 to i32, !dbg !505
  %cmp33 = icmp slt i32 %37, %35, !dbg !505
  br i1 %cmp33, label %for.cond35.preheader, label %return, !dbg !505

return:                                           ; preds = %for.cond32.preheader, %for.inc61, %for.cond.preheader, %for.inc26, %if.end8, %if.then6, %if.then2, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -2, %if.then2 ], [ -3, %if.then6 ], [ 1, %if.end8 ], [ 1, %for.inc26 ], [ 1, %for.cond.preheader ], [ 1, %for.inc61 ], [ 1, %for.cond32.preheader ]
  ret i32 %retval.0, !dbg !522
}

; Function Attrs: optsize
declare void @DenseMtx_dimensions(%struct._DenseMtx*, i32*, i32*) #4

; Function Attrs: optsize
declare i32 @DenseMtx_rowIncrement(%struct._DenseMtx*) #4

; Function Attrs: optsize
declare i32 @DenseMtx_columnIncrement(%struct._DenseMtx*) #4

; Function Attrs: optsize
declare double* @DenseMtx_entries(%struct._DenseMtx*) #4

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind optsize readonly }
attributes #7 = { optsize }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !180, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !103, metadata !115, metadata !122, metadata !129, metadata !134, metadata !139, metadata !143, metadata !164}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DenseMtx_readFromFile", metadata !"DenseMtx_readFromFile", metadata !"", i32 23, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._DenseMtx*, i8*)* @DenseMtx_readFromFile, null, null, metadata !41, i32 26} ; [ DW_TAG_subprogram ] [line 23] [def] [scope 26] [DenseMtx_readFromFile]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9, metadata !39}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DenseMtx]
!10 = metadata !{i32 786454, metadata !1, null, metadata !"DenseMtx", i32 28, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [DenseMtx] [line 28, size 0, align 0, offset 0] [from _DenseMtx]
!11 = metadata !{i32 786451, metadata !12, null, metadata !"_DenseMtx", i32 29, i64 704, i64 64, i32 0, i32 0, null, metadata !13, i32 0, null, null} ; [ DW_TAG_structure_type ] [_DenseMtx] [line 29, size 704, align 64, offset 0] [from ]
!12 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/../DenseMtx.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!13 = metadata !{metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !23, metadata !24, metadata !27, metadata !36}
!14 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"type", i32 30, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [type] [line 30, size 32, align 32, offset 0] [from int]
!15 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"rowid", i32 31, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [rowid] [line 31, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"colid", i32 32, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [colid] [line 32, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nrow", i32 33, i64 32, i64 32, i64 96, i32 0, metadata !8} ; [ DW_TAG_member ] [nrow] [line 33, size 32, align 32, offset 96] [from int]
!18 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"ncol", i32 34, i64 32, i64 32, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [ncol] [line 34, size 32, align 32, offset 128] [from int]
!19 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"inc1", i32 35, i64 32, i64 32, i64 160, i32 0, metadata !8} ; [ DW_TAG_member ] [inc1] [line 35, size 32, align 32, offset 160] [from int]
!20 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"inc2", i32 36, i64 32, i64 32, i64 192, i32 0, metadata !8} ; [ DW_TAG_member ] [inc2] [line 36, size 32, align 32, offset 192] [from int]
!21 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"rowind", i32 37, i64 64, i64 64, i64 256, i32 0, metadata !22} ; [ DW_TAG_member ] [rowind] [line 37, size 64, align 64, offset 256] [from ]
!22 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!23 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"colind", i32 38, i64 64, i64 64, i64 320, i32 0, metadata !22} ; [ DW_TAG_member ] [colind] [line 38, size 64, align 64, offset 320] [from ]
!24 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"entries", i32 39, i64 64, i64 64, i64 384, i32 0, metadata !25} ; [ DW_TAG_member ] [entries] [line 39, size 64, align 64, offset 384] [from ]
!25 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!26 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!27 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"wrkDV", i32 40, i64 192, i64 64, i64 448, i32 0, metadata !28} ; [ DW_TAG_member ] [wrkDV] [line 40, size 192, align 64, offset 448] [from DV]
!28 = metadata !{i32 786454, metadata !12, null, metadata !"DV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !29} ; [ DW_TAG_typedef ] [DV] [line 20, size 0, align 0, offset 0] [from _DV]
!29 = metadata !{i32 786451, metadata !30, null, metadata !"_DV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !31, i32 0, null, null} ; [ DW_TAG_structure_type ] [_DV] [line 21, size 192, align 64, offset 0] [from ]
!30 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/../../DV/DV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!31 = metadata !{metadata !32, metadata !33, metadata !34, metadata !35}
!32 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!33 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!34 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!35 = metadata !{i32 786445, metadata !30, metadata !29, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !25} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!36 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"next", i32 41, i64 64, i64 64, i64 640, i32 0, metadata !37} ; [ DW_TAG_member ] [next] [line 41, size 64, align 64, offset 640] [from ]
!37 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !38} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from DenseMtx]
!38 = metadata !{i32 786454, metadata !12, null, metadata !"DenseMtx", i32 28, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [DenseMtx] [line 28, size 0, align 0, offset 0] [from _DenseMtx]
!39 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !40} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!40 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!41 = metadata !{metadata !42, metadata !43, metadata !44, metadata !100, metadata !101, metadata !102}
!42 = metadata !{i32 786689, metadata !4, metadata !"mtx", metadata !5, i32 16777240, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 24]
!43 = metadata !{i32 786689, metadata !4, metadata !"fn", metadata !5, i32 33554457, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 25]
!44 = metadata !{i32 786688, metadata !4, metadata !"fp", metadata !5, i32 27, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 27]
!45 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !46} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!46 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !47} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!47 = metadata !{i32 786451, metadata !48, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !49, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!48 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!49 = metadata !{metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !70, metadata !71, metadata !72, metadata !73, metadata !76, metadata !78, metadata !80, metadata !84, metadata !86, metadata !88, metadata !89, metadata !90, metadata !91, metadata !92, metadata !95, metadata !96}
!50 = metadata !{i32 786445, metadata !48, metadata !47, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!51 = metadata !{i32 786445, metadata !48, metadata !47, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !39} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!52 = metadata !{i32 786445, metadata !48, metadata !47, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !39} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!53 = metadata !{i32 786445, metadata !48, metadata !47, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !39} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!54 = metadata !{i32 786445, metadata !48, metadata !47, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !39} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!55 = metadata !{i32 786445, metadata !48, metadata !47, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !39} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!56 = metadata !{i32 786445, metadata !48, metadata !47, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !39} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!57 = metadata !{i32 786445, metadata !48, metadata !47, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !39} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!58 = metadata !{i32 786445, metadata !48, metadata !47, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !39} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!59 = metadata !{i32 786445, metadata !48, metadata !47, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !39} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!60 = metadata !{i32 786445, metadata !48, metadata !47, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !39} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!61 = metadata !{i32 786445, metadata !48, metadata !47, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !39} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!62 = metadata !{i32 786445, metadata !48, metadata !47, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !63} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!63 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !64} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!64 = metadata !{i32 786451, metadata !48, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !65, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!65 = metadata !{metadata !66, metadata !67, metadata !69}
!66 = metadata !{i32 786445, metadata !48, metadata !64, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !63} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!67 = metadata !{i32 786445, metadata !48, metadata !64, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !68} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!68 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !47} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!69 = metadata !{i32 786445, metadata !48, metadata !64, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!70 = metadata !{i32 786445, metadata !48, metadata !47, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !68} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!71 = metadata !{i32 786445, metadata !48, metadata !47, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !8} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!72 = metadata !{i32 786445, metadata !48, metadata !47, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !8} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!73 = metadata !{i32 786445, metadata !48, metadata !47, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !74} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!74 = metadata !{i32 786454, metadata !48, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !75} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!75 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!76 = metadata !{i32 786445, metadata !48, metadata !47, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !77} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!77 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!78 = metadata !{i32 786445, metadata !48, metadata !47, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !79} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!79 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!80 = metadata !{i32 786445, metadata !48, metadata !47, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !81} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!81 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !40, metadata !82, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!82 = metadata !{metadata !83}
!83 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!84 = metadata !{i32 786445, metadata !48, metadata !47, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !85} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!85 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!86 = metadata !{i32 786445, metadata !48, metadata !47, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !87} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!87 = metadata !{i32 786454, metadata !48, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !75} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!88 = metadata !{i32 786445, metadata !48, metadata !47, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !85} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!89 = metadata !{i32 786445, metadata !48, metadata !47, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !85} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!90 = metadata !{i32 786445, metadata !48, metadata !47, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !85} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!91 = metadata !{i32 786445, metadata !48, metadata !47, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !85} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!92 = metadata !{i32 786445, metadata !48, metadata !47, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !93} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!93 = metadata !{i32 786454, metadata !48, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !94} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!94 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!95 = metadata !{i32 786445, metadata !48, metadata !47, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !8} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!96 = metadata !{i32 786445, metadata !48, metadata !47, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !97} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!97 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !40, metadata !98, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!98 = metadata !{metadata !99}
!99 = metadata !{i32 786465, i64 0, i64 20}       ; [ DW_TAG_subrange_type ] [0, 19]
!100 = metadata !{i32 786688, metadata !4, metadata !"fnlength", metadata !5, i32 28, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fnlength] [line 28]
!101 = metadata !{i32 786688, metadata !4, metadata !"rc", metadata !5, i32 28, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 28]
!102 = metadata !{i32 786688, metadata !4, metadata !"sulength", metadata !5, i32 28, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sulength] [line 28]
!103 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DenseMtx_readFromFormattedFile", metadata !"DenseMtx_readFromFormattedFile", metadata !"", i32 91, metadata !104, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._DenseMtx*, %struct._IO_FILE*)* @DenseMtx_readFromFormattedFile, null, null, metadata !106, i32 94} ; [ DW_TAG_subprogram ] [line 91] [def] [scope 94] [DenseMtx_readFromFormattedFile]
!104 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !105, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!105 = metadata !{metadata !8, metadata !9, metadata !45}
!106 = metadata !{metadata !107, metadata !108, metadata !109, metadata !110, metadata !111}
!107 = metadata !{i32 786689, metadata !103, metadata !"mtx", metadata !5, i32 16777308, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 92]
!108 = metadata !{i32 786689, metadata !103, metadata !"fp", metadata !5, i32 33554525, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 93]
!109 = metadata !{i32 786688, metadata !103, metadata !"rc", metadata !5, i32 95, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 95]
!110 = metadata !{i32 786688, metadata !103, metadata !"size", metadata !5, i32 95, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 95]
!111 = metadata !{i32 786688, metadata !103, metadata !"itemp", metadata !5, i32 96, metadata !112, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [itemp] [line 96]
!112 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 224, i64 32, i32 0, i32 0, metadata !8, metadata !113, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 224, align 32, offset 0] [from int]
!113 = metadata !{metadata !114}
!114 = metadata !{i32 786465, i64 0, i64 7}       ; [ DW_TAG_subrange_type ] [0, 6]
!115 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DenseMtx_readFromBinaryFile", metadata !"DenseMtx_readFromBinaryFile", metadata !"", i32 188, metadata !104, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._DenseMtx*, %struct._IO_FILE*)* @DenseMtx_readFromBinaryFile, null, null, metadata !116, i32 191} ; [ DW_TAG_subprogram ] [line 188] [def] [scope 191] [DenseMtx_readFromBinaryFile]
!116 = metadata !{metadata !117, metadata !118, metadata !119, metadata !120, metadata !121}
!117 = metadata !{i32 786689, metadata !115, metadata !"mtx", metadata !5, i32 16777405, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 189]
!118 = metadata !{i32 786689, metadata !115, metadata !"fp", metadata !5, i32 33554622, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 190]
!119 = metadata !{i32 786688, metadata !115, metadata !"rc", metadata !5, i32 192, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 192]
!120 = metadata !{i32 786688, metadata !115, metadata !"size", metadata !5, i32 192, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 192]
!121 = metadata !{i32 786688, metadata !115, metadata !"itemp", metadata !5, i32 193, metadata !112, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [itemp] [line 193]
!122 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DenseMtx_writeToFile", metadata !"DenseMtx_writeToFile", metadata !"", i32 299, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._DenseMtx*, i8*)* @DenseMtx_writeToFile, null, null, metadata !123, i32 302} ; [ DW_TAG_subprogram ] [line 299] [def] [scope 302] [DenseMtx_writeToFile]
!123 = metadata !{metadata !124, metadata !125, metadata !126, metadata !127, metadata !128}
!124 = metadata !{i32 786689, metadata !122, metadata !"mtx", metadata !5, i32 16777516, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 300]
!125 = metadata !{i32 786689, metadata !122, metadata !"fn", metadata !5, i32 33554733, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 301]
!126 = metadata !{i32 786688, metadata !122, metadata !"fp", metadata !5, i32 303, metadata !45, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 303]
!127 = metadata !{i32 786688, metadata !122, metadata !"fnlength", metadata !5, i32 304, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fnlength] [line 304]
!128 = metadata !{i32 786688, metadata !122, metadata !"sulength", metadata !5, i32 304, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sulength] [line 304]
!129 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DenseMtx_writeToFormattedFile", metadata !"DenseMtx_writeToFormattedFile", metadata !"", i32 382, metadata !104, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._DenseMtx*, %struct._IO_FILE*)* @DenseMtx_writeToFormattedFile, null, null, metadata !130, i32 385} ; [ DW_TAG_subprogram ] [line 382] [def] [scope 385] [DenseMtx_writeToFormattedFile]
!130 = metadata !{metadata !131, metadata !132, metadata !133}
!131 = metadata !{i32 786689, metadata !129, metadata !"mtx", metadata !5, i32 16777599, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 383]
!132 = metadata !{i32 786689, metadata !129, metadata !"fp", metadata !5, i32 33554816, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 384]
!133 = metadata !{i32 786688, metadata !129, metadata !"size", metadata !5, i32 386, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 386]
!134 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DenseMtx_writeToBinaryFile", metadata !"DenseMtx_writeToBinaryFile", metadata !"", i32 430, metadata !104, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._DenseMtx*, %struct._IO_FILE*)* @DenseMtx_writeToBinaryFile, null, null, metadata !135, i32 433} ; [ DW_TAG_subprogram ] [line 430] [def] [scope 433] [DenseMtx_writeToBinaryFile]
!135 = metadata !{metadata !136, metadata !137, metadata !138}
!136 = metadata !{i32 786689, metadata !134, metadata !"mtx", metadata !5, i32 16777647, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 431]
!137 = metadata !{i32 786689, metadata !134, metadata !"fp", metadata !5, i32 33554864, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 432]
!138 = metadata !{i32 786688, metadata !134, metadata !"size", metadata !5, i32 434, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [size] [line 434]
!139 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DenseMtx_writeStats", metadata !"DenseMtx_writeStats", metadata !"", i32 483, metadata !104, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._DenseMtx*, %struct._IO_FILE*)* @DenseMtx_writeStats, null, null, metadata !140, i32 486} ; [ DW_TAG_subprogram ] [line 483] [def] [scope 486] [DenseMtx_writeStats]
!140 = metadata !{metadata !141, metadata !142}
!141 = metadata !{i32 786689, metadata !139, metadata !"mtx", metadata !5, i32 16777700, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 484]
!142 = metadata !{i32 786689, metadata !139, metadata !"fp", metadata !5, i32 33554917, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 485]
!143 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DenseMtx_writeForHumanEye", metadata !"DenseMtx_writeForHumanEye", metadata !"", i32 548, metadata !104, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._DenseMtx*, %struct._IO_FILE*)* @DenseMtx_writeForHumanEye, null, null, metadata !144, i32 551} ; [ DW_TAG_subprogram ] [line 548] [def] [scope 551] [DenseMtx_writeForHumanEye]
!144 = metadata !{metadata !145, metadata !146, metadata !147, metadata !159, metadata !160, metadata !161, metadata !162, metadata !163}
!145 = metadata !{i32 786689, metadata !143, metadata !"mtx", metadata !5, i32 16777765, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 549]
!146 = metadata !{i32 786689, metadata !143, metadata !"fp", metadata !5, i32 33554982, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 550]
!147 = metadata !{i32 786688, metadata !143, metadata !"a2", metadata !5, i32 552, metadata !148, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a2] [line 552]
!148 = metadata !{i32 786454, metadata !1, null, metadata !"A2", i32 49, i64 0, i64 0, i64 0, i32 0, metadata !149} ; [ DW_TAG_typedef ] [A2] [line 49, size 0, align 0, offset 0] [from _A2]
!149 = metadata !{i32 786451, metadata !150, null, metadata !"_A2", i32 41, i64 256, i64 64, i32 0, i32 0, null, metadata !151, i32 0, null, null} ; [ DW_TAG_structure_type ] [_A2] [line 41, size 256, align 64, offset 0] [from ]
!150 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/../../A2/A2.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!151 = metadata !{metadata !152, metadata !153, metadata !154, metadata !155, metadata !156, metadata !157, metadata !158}
!152 = metadata !{i32 786445, metadata !150, metadata !149, metadata !"type", i32 42, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [type] [line 42, size 32, align 32, offset 0] [from int]
!153 = metadata !{i32 786445, metadata !150, metadata !149, metadata !"n1", i32 43, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [n1] [line 43, size 32, align 32, offset 32] [from int]
!154 = metadata !{i32 786445, metadata !150, metadata !149, metadata !"n2", i32 44, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [n2] [line 44, size 32, align 32, offset 64] [from int]
!155 = metadata !{i32 786445, metadata !150, metadata !149, metadata !"inc1", i32 45, i64 32, i64 32, i64 96, i32 0, metadata !8} ; [ DW_TAG_member ] [inc1] [line 45, size 32, align 32, offset 96] [from int]
!156 = metadata !{i32 786445, metadata !150, metadata !149, metadata !"inc2", i32 46, i64 32, i64 32, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [inc2] [line 46, size 32, align 32, offset 128] [from int]
!157 = metadata !{i32 786445, metadata !150, metadata !149, metadata !"nowned", i32 47, i64 32, i64 32, i64 160, i32 0, metadata !8} ; [ DW_TAG_member ] [nowned] [line 47, size 32, align 32, offset 160] [from int]
!158 = metadata !{i32 786445, metadata !150, metadata !149, metadata !"entries", i32 48, i64 64, i64 64, i64 192, i32 0, metadata !25} ; [ DW_TAG_member ] [entries] [line 48, size 64, align 64, offset 192] [from ]
!159 = metadata !{i32 786688, metadata !143, metadata !"ierr", metadata !5, i32 553, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ierr] [line 553]
!160 = metadata !{i32 786688, metadata !143, metadata !"ncol", metadata !5, i32 553, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 553]
!161 = metadata !{i32 786688, metadata !143, metadata !"nrow", metadata !5, i32 553, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 553]
!162 = metadata !{i32 786688, metadata !143, metadata !"colind", metadata !5, i32 554, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colind] [line 554]
!163 = metadata !{i32 786688, metadata !143, metadata !"rowind", metadata !5, i32 554, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowind] [line 554]
!164 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"DenseMtx_writeForMatlab", metadata !"DenseMtx_writeForMatlab", metadata !"", i32 603, metadata !165, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._DenseMtx*, i8*, %struct._IO_FILE*)* @DenseMtx_writeForMatlab, null, null, metadata !167, i32 607} ; [ DW_TAG_subprogram ] [line 603] [def] [scope 607] [DenseMtx_writeForMatlab]
!165 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !166, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!166 = metadata !{metadata !8, metadata !9, metadata !39, metadata !45}
!167 = metadata !{metadata !168, metadata !169, metadata !170, metadata !171, metadata !172, metadata !173, metadata !174, metadata !175, metadata !176, metadata !177, metadata !178, metadata !179}
!168 = metadata !{i32 786689, metadata !164, metadata !"mtx", metadata !5, i32 16777820, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 604]
!169 = metadata !{i32 786689, metadata !164, metadata !"mtxname", metadata !5, i32 33555037, metadata !39, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxname] [line 605]
!170 = metadata !{i32 786689, metadata !164, metadata !"fp", metadata !5, i32 50332254, metadata !45, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 606]
!171 = metadata !{i32 786688, metadata !164, metadata !"entries", metadata !5, i32 608, metadata !25, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 608]
!172 = metadata !{i32 786688, metadata !164, metadata !"inc1", metadata !5, i32 609, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 609]
!173 = metadata !{i32 786688, metadata !164, metadata !"inc2", metadata !5, i32 609, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 609]
!174 = metadata !{i32 786688, metadata !164, metadata !"irow", metadata !5, i32 609, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irow] [line 609]
!175 = metadata !{i32 786688, metadata !164, metadata !"jcol", metadata !5, i32 609, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcol] [line 609]
!176 = metadata !{i32 786688, metadata !164, metadata !"ncol", metadata !5, i32 609, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 609]
!177 = metadata !{i32 786688, metadata !164, metadata !"nrow", metadata !5, i32 609, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 609]
!178 = metadata !{i32 786688, metadata !164, metadata !"colind", metadata !5, i32 610, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colind] [line 610]
!179 = metadata !{i32 786688, metadata !164, metadata !"rowind", metadata !5, i32 610, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowind] [line 610]
!180 = metadata !{metadata !181, metadata !184}
!181 = metadata !{i32 786484, i32 0, null, metadata !"suffixf", metadata !"suffixf", metadata !"", metadata !5, i32 6, metadata !182, i32 1, i32 1, null, null}
!182 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !183} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!183 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !40} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!184 = metadata !{i32 786484, i32 0, null, metadata !"suffixb", metadata !"suffixb", metadata !"", metadata !5, i32 5, metadata !182, i32 1, i32 1, null, null}
!185 = metadata !{i32 24, i32 0, metadata !4, null}
!186 = metadata !{i32 25, i32 0, metadata !4, null}
!187 = metadata !{i32 28, i32 0, metadata !4, null}
!188 = metadata !{i32 34, i32 0, metadata !4, null}
!189 = metadata !{i32 35, i32 0, metadata !190, null}
!190 = metadata !{i32 786443, metadata !1, metadata !4, i32 34, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!191 = metadata !{metadata !"any pointer", metadata !192}
!192 = metadata !{metadata !"omnipotent char", metadata !193}
!193 = metadata !{metadata !"Simple C/C++ TBAA"}
!194 = metadata !{i32 37, i32 0, metadata !190, null}
!195 = metadata !{i32 44, i32 0, metadata !4, null}
!196 = metadata !{i32 10}
!197 = metadata !{i32 45, i32 0, metadata !4, null}
!198 = metadata !{i32 46, i32 0, metadata !4, null}
!199 = metadata !{i32 47, i32 0, metadata !200, null}
!200 = metadata !{i32 786443, metadata !1, metadata !4, i32 46, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!201 = metadata !{i32 48, i32 0, metadata !202, null}
!202 = metadata !{i32 786443, metadata !1, metadata !200, i32 47, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!203 = metadata !{i32 49, i32 0, metadata !204, null}
!204 = metadata !{i32 786443, metadata !1, metadata !202, i32 48, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!205 = metadata !{i32 51, i32 0, metadata !204, null}
!206 = metadata !{i32 52, i32 0, metadata !207, null}
!207 = metadata !{i32 786443, metadata !1, metadata !202, i32 51, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!208 = metadata !{i32 53, i32 0, metadata !207, null}
!209 = metadata !{i32 55, i32 0, metadata !200, null}
!210 = metadata !{i32 56, i32 0, metadata !211, null}
!211 = metadata !{i32 786443, metadata !1, metadata !200, i32 55, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!212 = metadata !{i32 57, i32 0, metadata !213, null}
!213 = metadata !{i32 786443, metadata !1, metadata !211, i32 56, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!214 = metadata !{i32 59, i32 0, metadata !213, null}
!215 = metadata !{i32 60, i32 0, metadata !216, null}
!216 = metadata !{i32 786443, metadata !1, metadata !211, i32 59, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!217 = metadata !{i32 61, i32 0, metadata !216, null}
!218 = metadata !{i32 64, i32 0, metadata !219, null}
!219 = metadata !{i32 786443, metadata !1, metadata !200, i32 63, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!220 = metadata !{i32 68, i32 0, metadata !219, null}
!221 = metadata !{i32 71, i32 0, metadata !222, null}
!222 = metadata !{i32 786443, metadata !1, metadata !4, i32 70, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!223 = metadata !{i32 76, i32 0, metadata !222, null}
!224 = metadata !{i32 78, i32 0, metadata !4, null}
!225 = metadata !{i32 189, i32 0, metadata !115, null}
!226 = metadata !{i32 190, i32 0, metadata !115, null}
!227 = metadata !{i32 193, i32 0, metadata !115, null}
!228 = metadata !{i32 199, i32 0, metadata !115, null}
!229 = metadata !{i32 200, i32 0, metadata !230, null}
!230 = metadata !{i32 786443, metadata !1, metadata !115, i32 199, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!231 = metadata !{i32 203, i32 0, metadata !230, null}
!232 = metadata !{i32 210, i32 0, metadata !115, null}
!233 = metadata !{i32 217, i32 0, metadata !115, null}
!234 = metadata !{i32 218, i32 0, metadata !235, null}
!235 = metadata !{i32 786443, metadata !1, metadata !115, i32 217, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!236 = metadata !{i32 220, i32 0, metadata !235, null}
!237 = metadata !{i32 227, i32 0, metadata !115, null}
!238 = metadata !{metadata !"int", metadata !192}
!239 = metadata !{i32 234, i32 0, metadata !115, null}
!240 = metadata !{i32 235, i32 0, metadata !241, null}
!241 = metadata !{i32 786443, metadata !1, metadata !115, i32 234, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!242 = metadata !{i32 236, i32 0, metadata !243, null}
!243 = metadata !{i32 786443, metadata !1, metadata !241, i32 235, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!244 = metadata !{i32 238, i32 0, metadata !243, null}
!245 = metadata !{i32 246, i32 0, metadata !115, null}
!246 = metadata !{i32 247, i32 0, metadata !247, null}
!247 = metadata !{i32 786443, metadata !1, metadata !115, i32 246, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!248 = metadata !{i32 258, i32 0, metadata !115, null}
!249 = metadata !{i32 248, i32 0, metadata !250, null}
!250 = metadata !{i32 786443, metadata !1, metadata !247, i32 247, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!251 = metadata !{i32 250, i32 0, metadata !250, null}
!252 = metadata !{i32 259, i32 0, metadata !253, null}
!253 = metadata !{i32 786443, metadata !1, metadata !115, i32 258, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!254 = metadata !{i32 260, i32 0, metadata !255, null}
!255 = metadata !{i32 786443, metadata !1, metadata !253, i32 259, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!256 = metadata !{i32 261, i32 0, metadata !255, null}
!257 = metadata !{i32 262, i32 0, metadata !258, null}
!258 = metadata !{i32 786443, metadata !1, metadata !255, i32 261, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!259 = metadata !{i32 264, i32 0, metadata !258, null}
!260 = metadata !{i32 267, i32 0, metadata !261, null}
!261 = metadata !{i32 786443, metadata !1, metadata !253, i32 266, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!262 = metadata !{i32 268, i32 0, metadata !261, null}
!263 = metadata !{i32 269, i32 0, metadata !264, null}
!264 = metadata !{i32 786443, metadata !1, metadata !261, i32 268, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!265 = metadata !{i32 271, i32 0, metadata !264, null}
!266 = metadata !{i32 275, i32 0, metadata !115, null}
!267 = metadata !{i32 92, i32 0, metadata !103, null}
!268 = metadata !{i32 93, i32 0, metadata !103, null}
!269 = metadata !{i32 96, i32 0, metadata !103, null}
!270 = metadata !{i32 102, i32 0, metadata !103, null}
!271 = metadata !{i32 103, i32 0, metadata !272, null}
!272 = metadata !{i32 786443, metadata !1, metadata !103, i32 102, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!273 = metadata !{i32 105, i32 0, metadata !272, null}
!274 = metadata !{i32 112, i32 0, metadata !103, null}
!275 = metadata !{i32 119, i32 0, metadata !103, null}
!276 = metadata !{i32 120, i32 0, metadata !277, null}
!277 = metadata !{i32 786443, metadata !1, metadata !103, i32 119, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!278 = metadata !{i32 122, i32 0, metadata !277, null}
!279 = metadata !{i32 129, i32 0, metadata !103, null}
!280 = metadata !{i32 136, i32 0, metadata !103, null}
!281 = metadata !{i32 137, i32 0, metadata !282, null}
!282 = metadata !{i32 786443, metadata !1, metadata !103, i32 136, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!283 = metadata !{i32 138, i32 0, metadata !284, null}
!284 = metadata !{i32 786443, metadata !1, metadata !282, i32 137, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!285 = metadata !{i32 140, i32 0, metadata !284, null}
!286 = metadata !{i32 148, i32 0, metadata !103, null}
!287 = metadata !{i32 149, i32 0, metadata !288, null}
!288 = metadata !{i32 786443, metadata !1, metadata !103, i32 148, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!289 = metadata !{i32 160, i32 0, metadata !103, null}
!290 = metadata !{i32 150, i32 0, metadata !291, null}
!291 = metadata !{i32 786443, metadata !1, metadata !288, i32 149, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!292 = metadata !{i32 152, i32 0, metadata !291, null}
!293 = metadata !{i32 161, i32 0, metadata !294, null}
!294 = metadata !{i32 786443, metadata !1, metadata !103, i32 160, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!295 = metadata !{i32 162, i32 0, metadata !296, null}
!296 = metadata !{i32 786443, metadata !1, metadata !294, i32 161, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!297 = metadata !{i32 163, i32 0, metadata !298, null}
!298 = metadata !{i32 786443, metadata !1, metadata !296, i32 162, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!299 = metadata !{i32 165, i32 0, metadata !298, null}
!300 = metadata !{i32 168, i32 0, metadata !301, null}
!301 = metadata !{i32 786443, metadata !1, metadata !294, i32 167, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!302 = metadata !{i32 169, i32 0, metadata !303, null}
!303 = metadata !{i32 786443, metadata !1, metadata !301, i32 168, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!304 = metadata !{i32 171, i32 0, metadata !303, null}
!305 = metadata !{i32 175, i32 0, metadata !103, null}
!306 = metadata !{i32 300, i32 0, metadata !122, null}
!307 = metadata !{i32 301, i32 0, metadata !122, null}
!308 = metadata !{i32 310, i32 0, metadata !122, null}
!309 = metadata !{i32 311, i32 0, metadata !310, null}
!310 = metadata !{i32 786443, metadata !1, metadata !122, i32 310, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!311 = metadata !{i32 313, i32 0, metadata !310, null}
!312 = metadata !{i32 315, i32 0, metadata !122, null}
!313 = metadata !{i32 316, i32 0, metadata !314, null}
!314 = metadata !{i32 786443, metadata !1, metadata !122, i32 315, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!315 = metadata !{i32 318, i32 0, metadata !314, null}
!316 = metadata !{i32 325, i32 0, metadata !122, null}
!317 = metadata !{i32 326, i32 0, metadata !122, null}
!318 = metadata !{i32 327, i32 0, metadata !122, null}
!319 = metadata !{i32 328, i32 0, metadata !320, null}
!320 = metadata !{i32 786443, metadata !1, metadata !122, i32 327, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!321 = metadata !{i32 329, i32 0, metadata !322, null}
!322 = metadata !{i32 786443, metadata !1, metadata !320, i32 328, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!323 = metadata !{i32 330, i32 0, metadata !324, null}
!324 = metadata !{i32 786443, metadata !1, metadata !322, i32 329, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!325 = metadata !{i32 332, i32 0, metadata !324, null}
!326 = metadata !{i32 334, i32 0, metadata !327, null}
!327 = metadata !{i32 786443, metadata !1, metadata !322, i32 333, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!328 = metadata !{i32 335, i32 0, metadata !327, null}
!329 = metadata !{i32 337, i32 0, metadata !322, null}
!330 = metadata !{i32 337, i32 0, metadata !320, null}
!331 = metadata !{i32 338, i32 0, metadata !332, null}
!332 = metadata !{i32 786443, metadata !1, metadata !320, i32 337, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!333 = metadata !{i32 339, i32 0, metadata !334, null}
!334 = metadata !{i32 786443, metadata !1, metadata !332, i32 338, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!335 = metadata !{i32 341, i32 0, metadata !334, null}
!336 = metadata !{i32 343, i32 0, metadata !337, null}
!337 = metadata !{i32 786443, metadata !1, metadata !332, i32 342, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!338 = metadata !{i32 344, i32 0, metadata !337, null}
!339 = metadata !{i32 346, i32 0, metadata !332, null}
!340 = metadata !{i32 347, i32 0, metadata !341, null}
!341 = metadata !{i32 786443, metadata !1, metadata !320, i32 346, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!342 = metadata !{i32 348, i32 0, metadata !343, null}
!343 = metadata !{i32 786443, metadata !1, metadata !341, i32 347, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!344 = metadata !{i32 350, i32 0, metadata !343, null}
!345 = metadata !{i32 352, i32 0, metadata !346, null}
!346 = metadata !{i32 786443, metadata !1, metadata !341, i32 351, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!347 = metadata !{i32 353, i32 0, metadata !346, null}
!348 = metadata !{i32 357, i32 0, metadata !349, null}
!349 = metadata !{i32 786443, metadata !1, metadata !122, i32 356, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!350 = metadata !{i32 358, i32 0, metadata !351, null}
!351 = metadata !{i32 786443, metadata !1, metadata !349, i32 357, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!352 = metadata !{i32 360, i32 0, metadata !351, null}
!353 = metadata !{i32 362, i32 0, metadata !354, null}
!354 = metadata !{i32 786443, metadata !1, metadata !349, i32 361, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!355 = metadata !{i32 363, i32 0, metadata !354, null}
!356 = metadata !{i32 366, i32 0, metadata !122, null}
!357 = metadata !{i32 431, i32 0, metadata !134, null}
!358 = metadata !{i32 432, i32 0, metadata !134, null}
!359 = metadata !{i32 436, i32 0, metadata !134, null}
!360 = metadata !{i32 437, i32 0, metadata !361, null}
!361 = metadata !{i32 786443, metadata !1, metadata !134, i32 436, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!362 = metadata !{i32 439, i32 0, metadata !361, null}
!363 = metadata !{i32 441, i32 0, metadata !134, null}
!364 = metadata !{i32 442, i32 0, metadata !365, null}
!365 = metadata !{i32 786443, metadata !1, metadata !134, i32 441, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!366 = metadata !{i32 444, i32 0, metadata !365, null}
!367 = metadata !{i32 446, i32 0, metadata !134, null}
!368 = metadata !{i32 447, i32 0, metadata !134, null}
!369 = metadata !{i32 448, i32 0, metadata !134, null}
!370 = metadata !{i32 449, i32 0, metadata !134, null}
!371 = metadata !{i32 450, i32 0, metadata !134, null}
!372 = metadata !{i32 451, i32 0, metadata !134, null}
!373 = metadata !{i32 452, i32 0, metadata !134, null}
!374 = metadata !{i32 453, i32 0, metadata !134, null}
!375 = metadata !{i32 454, i32 0, metadata !376, null}
!376 = metadata !{i32 786443, metadata !1, metadata !134, i32 453, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!377 = metadata !{i32 455, i32 0, metadata !376, null}
!378 = metadata !{i32 456, i32 0, metadata !134, null}
!379 = metadata !{i32 457, i32 0, metadata !380, null}
!380 = metadata !{i32 786443, metadata !1, metadata !134, i32 456, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!381 = metadata !{i32 459, i32 0, metadata !134, null}
!382 = metadata !{i32 458, i32 0, metadata !380, null}
!383 = metadata !{i32 460, i32 0, metadata !384, null}
!384 = metadata !{i32 786443, metadata !1, metadata !134, i32 459, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!385 = metadata !{i32 461, i32 0, metadata !386, null}
!386 = metadata !{i32 786443, metadata !1, metadata !384, i32 460, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!387 = metadata !{i32 462, i32 0, metadata !386, null}
!388 = metadata !{i32 463, i32 0, metadata !389, null}
!389 = metadata !{i32 786443, metadata !1, metadata !384, i32 462, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!390 = metadata !{i32 464, i32 0, metadata !389, null}
!391 = metadata !{i32 466, i32 0, metadata !134, null}
!392 = metadata !{i32 383, i32 0, metadata !129, null}
!393 = metadata !{i32 384, i32 0, metadata !129, null}
!394 = metadata !{i32 388, i32 0, metadata !129, null}
!395 = metadata !{i32 389, i32 0, metadata !396, null}
!396 = metadata !{i32 786443, metadata !1, metadata !129, i32 388, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!397 = metadata !{i32 391, i32 0, metadata !396, null}
!398 = metadata !{i32 393, i32 0, metadata !129, null}
!399 = metadata !{i32 394, i32 0, metadata !400, null}
!400 = metadata !{i32 786443, metadata !1, metadata !129, i32 393, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!401 = metadata !{i32 396, i32 0, metadata !400, null}
!402 = metadata !{i32 398, i32 0, metadata !129, null}
!403 = metadata !{i32 401, i32 0, metadata !129, null}
!404 = metadata !{i32 402, i32 0, metadata !405, null}
!405 = metadata !{i32 786443, metadata !1, metadata !129, i32 401, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!406 = metadata !{i32 403, i32 0, metadata !405, null}
!407 = metadata !{i32 404, i32 0, metadata !129, null}
!408 = metadata !{i32 405, i32 0, metadata !409, null}
!409 = metadata !{i32 786443, metadata !1, metadata !129, i32 404, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!410 = metadata !{i32 407, i32 0, metadata !129, null}
!411 = metadata !{i32 406, i32 0, metadata !409, null}
!412 = metadata !{i32 408, i32 0, metadata !413, null}
!413 = metadata !{i32 786443, metadata !1, metadata !129, i32 407, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!414 = metadata !{i32 409, i32 0, metadata !415, null}
!415 = metadata !{i32 786443, metadata !1, metadata !413, i32 408, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!416 = metadata !{i32 410, i32 0, metadata !415, null}
!417 = metadata !{i32 411, i32 0, metadata !418, null}
!418 = metadata !{i32 786443, metadata !1, metadata !413, i32 410, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!419 = metadata !{i32 412, i32 0, metadata !418, null}
!420 = metadata !{i32 414, i32 0, metadata !129, null}
!421 = metadata !{i32 549, i32 0, metadata !143, null}
!422 = metadata !{i32 550, i32 0, metadata !143, null}
!423 = metadata !{i32 552, i32 0, metadata !143, null}
!424 = metadata !{i32 553, i32 0, metadata !143, null}
!425 = metadata !{i32 554, i32 0, metadata !143, null}
!426 = metadata !{i32 560, i32 0, metadata !143, null}
!427 = metadata !{i32 561, i32 0, metadata !428, null}
!428 = metadata !{i32 786443, metadata !1, metadata !143, i32 560, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!429 = metadata !{i32 563, i32 0, metadata !428, null}
!430 = metadata !{i32 565, i32 0, metadata !143, null}
!431 = metadata !{i32 566, i32 0, metadata !432, null}
!432 = metadata !{i32 786443, metadata !1, metadata !143, i32 565, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!433 = metadata !{i32 568, i32 0, metadata !432, null}
!434 = metadata !{i32 570, i32 0, metadata !143, null}
!435 = metadata !{i32 571, i32 0, metadata !143, null}
!436 = metadata !{i32 572, i32 0, metadata !143, null}
!437 = metadata !{i32 573, i32 0, metadata !438, null}
!438 = metadata !{i32 786443, metadata !1, metadata !143, i32 572, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!439 = metadata !{i32 574, i32 0, metadata !438, null}
!440 = metadata !{i32 575, i32 0, metadata !438, null}
!441 = metadata !{i32 576, i32 0, metadata !143, null}
!442 = metadata !{i32 577, i32 0, metadata !143, null}
!443 = metadata !{i32 578, i32 0, metadata !444, null}
!444 = metadata !{i32 786443, metadata !1, metadata !143, i32 577, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!445 = metadata !{i32 579, i32 0, metadata !444, null}
!446 = metadata !{i32 580, i32 0, metadata !444, null}
!447 = metadata !{i32 581, i32 0, metadata !143, null}
!448 = metadata !{i32 582, i32 0, metadata !449, null}
!449 = metadata !{i32 786443, metadata !1, metadata !143, i32 581, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!450 = metadata !{i32 583, i32 0, metadata !449, null}
!451 = metadata !{i32 584, i32 0, metadata !449, null}
!452 = metadata !{i32 585, i32 0, metadata !449, null}
!453 = metadata !{i32 586, i32 0, metadata !143, null}
!454 = metadata !{i32 484, i32 0, metadata !139, null}
!455 = metadata !{i32 485, i32 0, metadata !139, null}
!456 = metadata !{i32 492, i32 0, metadata !139, null}
!457 = metadata !{i32 493, i32 0, metadata !458, null}
!458 = metadata !{i32 786443, metadata !1, metadata !139, i32 492, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!459 = metadata !{i32 495, i32 0, metadata !458, null}
!460 = metadata !{i32 497, i32 0, metadata !139, null}
!461 = metadata !{i32 498, i32 0, metadata !462, null}
!462 = metadata !{i32 786443, metadata !1, metadata !139, i32 497, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!463 = metadata !{i32 500, i32 0, metadata !462, null}
!464 = metadata !{i32 502, i32 0, metadata !139, null}
!465 = metadata !{i32 503, i32 0, metadata !139, null}
!466 = metadata !{i32 505, i32 0, metadata !467, null}
!467 = metadata !{i32 786443, metadata !1, metadata !139, i32 503, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!468 = metadata !{i32 506, i32 0, metadata !467, null}
!469 = metadata !{i32 508, i32 0, metadata !467, null}
!470 = metadata !{i32 509, i32 0, metadata !467, null}
!471 = metadata !{i32 511, i32 0, metadata !467, null}
!472 = metadata !{i32 512, i32 0, metadata !467, null}
!473 = metadata !{i32 514, i32 0, metadata !139, null}
!474 = metadata !{i32 518, i32 0, metadata !139, null}
!475 = metadata !{i32 520, i32 0, metadata !139, null}
!476 = metadata !{i32 521, i32 0, metadata !139, null}
!477 = metadata !{i32 527, i32 0, metadata !139, null}
!478 = metadata !{i32 528, i32 0, metadata !139, null}
!479 = metadata !{i32 529, i32 0, metadata !139, null}
!480 = metadata !{i32 531, i32 0, metadata !139, null}
!481 = metadata !{i32 604, i32 0, metadata !164, null}
!482 = metadata !{i32 605, i32 0, metadata !164, null}
!483 = metadata !{i32 606, i32 0, metadata !164, null}
!484 = metadata !{i32 609, i32 0, metadata !164, null}
!485 = metadata !{i32 610, i32 0, metadata !164, null}
!486 = metadata !{i32 616, i32 0, metadata !164, null}
!487 = metadata !{i32 617, i32 0, metadata !488, null}
!488 = metadata !{i32 786443, metadata !1, metadata !164, i32 616, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!489 = metadata !{i32 619, i32 0, metadata !488, null}
!490 = metadata !{i32 621, i32 0, metadata !164, null}
!491 = metadata !{i32 622, i32 0, metadata !492, null}
!492 = metadata !{i32 786443, metadata !1, metadata !164, i32 621, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!493 = metadata !{i32 624, i32 0, metadata !492, null}
!494 = metadata !{i32 626, i32 0, metadata !164, null}
!495 = metadata !{i32 627, i32 0, metadata !496, null}
!496 = metadata !{i32 786443, metadata !1, metadata !164, i32 626, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!497 = metadata !{i32 629, i32 0, metadata !496, null}
!498 = metadata !{i32 631, i32 0, metadata !164, null}
!499 = metadata !{i32 632, i32 0, metadata !164, null}
!500 = metadata !{i32 633, i32 0, metadata !164, null}
!501 = metadata !{i32 634, i32 0, metadata !164, null}
!502 = metadata !{i32 635, i32 0, metadata !164, null}
!503 = metadata !{i32 636, i32 0, metadata !164, null}
!504 = metadata !{i32 637, i32 0, metadata !164, null}
!505 = metadata !{i32 646, i32 0, metadata !506, null}
!506 = metadata !{i32 786443, metadata !1, metadata !507, i32 646, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!507 = metadata !{i32 786443, metadata !1, metadata !164, i32 645, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!508 = metadata !{i32 647, i32 0, metadata !509, null}
!509 = metadata !{i32 786443, metadata !1, metadata !510, i32 647, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!510 = metadata !{i32 786443, metadata !1, metadata !506, i32 646, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!511 = metadata !{i32 638, i32 0, metadata !512, null}
!512 = metadata !{i32 786443, metadata !1, metadata !513, i32 638, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!513 = metadata !{i32 786443, metadata !1, metadata !164, i32 637, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!514 = metadata !{i32 639, i32 0, metadata !515, null}
!515 = metadata !{i32 786443, metadata !1, metadata !516, i32 639, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!516 = metadata !{i32 786443, metadata !1, metadata !512, i32 638, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!517 = metadata !{i32 640, i32 0, metadata !518, null}
!518 = metadata !{i32 786443, metadata !1, metadata !515, i32 639, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!519 = metadata !{metadata !"double", metadata !192}
!520 = metadata !{i32 648, i32 0, metadata !521, null}
!521 = metadata !{i32 786443, metadata !1, metadata !509, i32 647, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/DenseMtx/src/DenseMtx_IO.c]
!522 = metadata !{i32 655, i32 0, metadata !164, null}
