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
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtx}, i64 0, metadata !39), !dbg !323
  tail call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !40), !dbg !324
  %cmp = icmp eq %struct._SubMtx* %mtx, null, !dbg !325
  %cmp1 = icmp eq i8* %fn, null, !dbg !325
  %or.cond = or i1 %cmp, %cmp1, !dbg !325
  br i1 %or.cond, label %if.then, label %if.end, !dbg !325

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !326, !tbaa !328
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([50 x i8]* @.str, i64 0, i64 0), %struct._SubMtx* %mtx, i8* %fn) #6, !dbg !326
  br label %return, !dbg !331

if.end:                                           ; preds = %entry
  %call2 = tail call i64 @strlen(i8* %fn) #7, !dbg !332
  %conv = trunc i64 %call2 to i32, !dbg !332
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !97), !dbg !332
  tail call void @llvm.dbg.value(metadata !333, i64 0, metadata !99), !dbg !334
  %cmp5 = icmp sgt i32 %conv, 8, !dbg !335
  br i1 %cmp5, label %if.then7, label %if.else41, !dbg !335

if.then7:                                         ; preds = %if.end
  %sub = shl i64 %call2, 32, !dbg !336
  %sext = add i64 %sub, -34359738368, !dbg !336
  %idxprom = ashr exact i64 %sext, 32, !dbg !336
  %arrayidx = getelementptr inbounds i8* %fn, i64 %idxprom, !dbg !336
  %call8 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([9 x i8]* @.str68, i64 0, i64 0)) #7, !dbg !336
  %cmp9 = icmp eq i32 %call8, 0, !dbg !336
  br i1 %cmp9, label %if.then11, label %if.else20, !dbg !336

if.then11:                                        ; preds = %if.then7
  %call12 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([3 x i8]* @.str1, i64 0, i64 0)) #6, !dbg !338
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call12}, i64 0, metadata !41), !dbg !338
  %cmp13 = icmp eq %struct._IO_FILE* %call12, null, !dbg !338
  br i1 %cmp13, label %if.then15, label %if.else, !dbg !338

if.then15:                                        ; preds = %if.then11
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !340, !tbaa !328
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([62 x i8]* @.str2, i64 0, i64 0), %struct._SubMtx* %mtx, i8* %fn, i8* %fn) #6, !dbg !340
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !98), !dbg !342
  br label %return, !dbg !343

if.else:                                          ; preds = %if.then11
  %call17 = tail call i32 @SubMtx_readFromBinaryFile(%struct._SubMtx* %mtx, %struct._IO_FILE* %call12) #8, !dbg !344
  tail call void @llvm.dbg.value(metadata !{i32 %call17}, i64 0, metadata !98), !dbg !344
  %call18 = tail call i32 @fclose(%struct._IO_FILE* %call12) #6, !dbg !346
  br label %return

if.else20:                                        ; preds = %if.then7
  %call24 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([9 x i8]* @.str67, i64 0, i64 0)) #7, !dbg !347
  %cmp25 = icmp eq i32 %call24, 0, !dbg !347
  br i1 %cmp25, label %if.then27, label %if.else37, !dbg !347

if.then27:                                        ; preds = %if.else20
  %call28 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str3, i64 0, i64 0)) #6, !dbg !348
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call28}, i64 0, metadata !41), !dbg !348
  %cmp29 = icmp eq %struct._IO_FILE* %call28, null, !dbg !348
  br i1 %cmp29, label %if.then31, label %if.else33, !dbg !348

if.then31:                                        ; preds = %if.then27
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !350, !tbaa !328
  %call32 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([62 x i8]* @.str2, i64 0, i64 0), %struct._SubMtx* %mtx, i8* %fn, i8* %fn) #6, !dbg !350
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !98), !dbg !352
  br label %return, !dbg !353

if.else33:                                        ; preds = %if.then27
  %call34 = tail call i32 @SubMtx_readFromFormattedFile(%struct._SubMtx* %mtx, %struct._IO_FILE* %call28) #8, !dbg !354
  tail call void @llvm.dbg.value(metadata !{i32 %call34}, i64 0, metadata !98), !dbg !354
  %call35 = tail call i32 @fclose(%struct._IO_FILE* %call28) #6, !dbg !356
  br label %return

if.else37:                                        ; preds = %if.else20
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !357, !tbaa !328
  %call38 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([108 x i8]* @.str4, i64 0, i64 0), %struct._SubMtx* %mtx, i8* %fn, i8* %fn, i8* getelementptr inbounds ([9 x i8]* @.str68, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str67, i64 0, i64 0)) #6, !dbg !357
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !98), !dbg !359
  br label %return

if.else41:                                        ; preds = %if.end
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !360, !tbaa !328
  %call42 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([108 x i8]* @.str4, i64 0, i64 0), %struct._SubMtx* %mtx, i8* %fn, i8* %fn, i8* getelementptr inbounds ([9 x i8]* @.str68, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @.str67, i64 0, i64 0)) #6, !dbg !360
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !98), !dbg !362
  br label %return

return:                                           ; preds = %if.else41, %if.else37, %if.else33, %if.then31, %if.then15, %if.else, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then15 ], [ %call17, %if.else ], [ 0, %if.then31 ], [ %call34, %if.else33 ], [ 0, %if.else37 ], [ 0, %if.else41 ]
  ret i32 %retval.0, !dbg !363
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
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtx}, i64 0, metadata !128), !dbg !364
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !129), !dbg !365
  call void @llvm.dbg.declare(metadata !{double** %entries}, metadata !130), !dbg !366
  call void @llvm.dbg.declare(metadata !{i32* %inc1}, metadata !131), !dbg !367
  call void @llvm.dbg.declare(metadata !{i32* %inc2}, metadata !132), !dbg !367
  call void @llvm.dbg.declare(metadata !{i32* %ncol}, metadata !133), !dbg !367
  call void @llvm.dbg.declare(metadata !{i32* %nent}, metadata !134), !dbg !367
  call void @llvm.dbg.declare(metadata !{i32* %nrow}, metadata !135), !dbg !367
  call void @llvm.dbg.declare(metadata !{[7 x i32]* %itemp}, metadata !137), !dbg !368
  call void @llvm.dbg.declare(metadata !{i32** %colids}, metadata !138), !dbg !369
  call void @llvm.dbg.declare(metadata !{i32** %colind}, metadata !139), !dbg !369
  call void @llvm.dbg.declare(metadata !{i32** %firstlocs}, metadata !140), !dbg !369
  call void @llvm.dbg.declare(metadata !{i32** %indices}, metadata !141), !dbg !369
  call void @llvm.dbg.declare(metadata !{i32** %pivotsizes}, metadata !142), !dbg !370
  call void @llvm.dbg.declare(metadata !{i32** %rowids}, metadata !143), !dbg !370
  call void @llvm.dbg.declare(metadata !{i32** %rowind}, metadata !144), !dbg !370
  call void @llvm.dbg.declare(metadata !{i32** %sizes}, metadata !145), !dbg !370
  %cmp = icmp eq %struct._SubMtx* %mtx, null, !dbg !371
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !371
  %or.cond = or i1 %cmp, %cmp1, !dbg !371
  br i1 %or.cond, label %if.then, label %if.end, !dbg !371

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !372, !tbaa !328
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([56 x i8]* @.str21, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp) #6, !dbg !372
  br label %return, !dbg !374

if.end:                                           ; preds = %entry
  call void @SubMtx_clearData(%struct._SubMtx* %mtx) #6, !dbg !375
  %1 = bitcast [7 x i32]* %itemp to i8*, !dbg !376
  %call2 = call i64 @fread(i8* %1, i64 4, i64 7, %struct._IO_FILE* %fp) #6, !dbg !376
  %conv = trunc i64 %call2 to i32, !dbg !376
  call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !136), !dbg !376
  %cmp3 = icmp eq i32 %conv, 7, !dbg !376
  br i1 %cmp3, label %if.end7, label %if.then5, !dbg !376

if.then5:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !377, !tbaa !328
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([69 x i8]* @.str22, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %conv, i32 7) #6, !dbg !377
  br label %return, !dbg !379

if.end7:                                          ; preds = %if.end
  %3 = bitcast [7 x i32]* %itemp to i64*, !dbg !380
  %4 = load i64* %3, align 16, !dbg !380
  %5 = trunc i64 %4 to i32, !dbg !380
  %.off = add i32 %5, -1, !dbg !380
  %switch = icmp ult i32 %.off, 2, !dbg !380
  %6 = lshr i64 %4, 32
  %7 = trunc i64 %6 to i32
  br i1 %switch, label %sw.epilog, label %sw.default, !dbg !380

sw.default:                                       ; preds = %if.end7
  %8 = load %struct._IO_FILE** @stderr, align 8, !dbg !381, !tbaa !328
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([70 x i8]* @.str23, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %5) #6, !dbg !381
  br label %return, !dbg !383

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
  ], !dbg !384

sw.default12:                                     ; preds = %sw.epilog
  %9 = load %struct._IO_FILE** @stderr, align 8, !dbg !385, !tbaa !328
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([70 x i8]* @.str24, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %7) #6, !dbg !385
  br label %return, !dbg !387

sw.epilog15:                                      ; preds = %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog
  %arrayidx18 = getelementptr inbounds [7 x i32]* %itemp, i64 0, i64 2, !dbg !388
  %10 = bitcast i32* %arrayidx18 to i64*, !dbg !388
  %11 = load i64* %10, align 8, !dbg !388
  %12 = trunc i64 %11 to i32, !dbg !388
  %13 = lshr i64 %11, 32
  %14 = trunc i64 %13 to i32
  %arrayidx20 = getelementptr inbounds [7 x i32]* %itemp, i64 0, i64 4, !dbg !388
  %15 = bitcast i32* %arrayidx20 to i64*, !dbg !388
  %16 = load i64* %15, align 16, !dbg !388
  %17 = trunc i64 %16 to i32, !dbg !388
  %18 = lshr i64 %16, 32
  %19 = trunc i64 %18 to i32
  %arrayidx22 = getelementptr inbounds [7 x i32]* %itemp, i64 0, i64 6, !dbg !388
  %20 = load i32* %arrayidx22, align 8, !dbg !388, !tbaa !389
  call void @SubMtx_init(%struct._SubMtx* %mtx, i32 %5, i32 %7, i32 %12, i32 %14, i32 %17, i32 %19, i32 %20) #6, !dbg !388
  call void @SubMtx_rowIndices(%struct._SubMtx* %mtx, i32* %nrow, i32** %rowind) #6, !dbg !390
  call void @llvm.dbg.value(metadata !{i32** %rowind}, i64 0, metadata !144), !dbg !391
  %21 = load i32** %rowind, align 8, !dbg !391, !tbaa !328
  %22 = bitcast i32* %21 to i8*, !dbg !391
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !135), !dbg !391
  %23 = load i32* %nrow, align 4, !dbg !391, !tbaa !389
  %conv23 = sext i32 %23 to i64, !dbg !391
  %call24 = call i64 @fread(i8* %22, i64 4, i64 %conv23, %struct._IO_FILE* %fp) #6, !dbg !391
  %conv25 = trunc i64 %call24 to i32, !dbg !391
  call void @llvm.dbg.value(metadata !{i32 %conv25}, i64 0, metadata !136), !dbg !391
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !135), !dbg !391
  %24 = load i32* %nrow, align 4, !dbg !391, !tbaa !389
  %cmp26 = icmp eq i32 %conv25, %24, !dbg !391
  br i1 %cmp26, label %if.end30, label %if.then28, !dbg !391

if.then28:                                        ; preds = %sw.epilog15
  %25 = load %struct._IO_FILE** @stderr, align 8, !dbg !392, !tbaa !328
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([69 x i8]* @.str25, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %conv25, i32 %24) #6, !dbg !392
  br label %return, !dbg !394

if.end30:                                         ; preds = %sw.epilog15
  call void @SubMtx_columnIndices(%struct._SubMtx* %mtx, i32* %ncol, i32** %colind) #6, !dbg !395
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !139), !dbg !396
  %26 = load i32** %colind, align 8, !dbg !396, !tbaa !328
  %27 = bitcast i32* %26 to i8*, !dbg !396
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !133), !dbg !396
  %28 = load i32* %ncol, align 4, !dbg !396, !tbaa !389
  %conv31 = sext i32 %28 to i64, !dbg !396
  %call32 = call i64 @fread(i8* %27, i64 4, i64 %conv31, %struct._IO_FILE* %fp) #6, !dbg !396
  %conv33 = trunc i64 %call32 to i32, !dbg !396
  call void @llvm.dbg.value(metadata !{i32 %conv33}, i64 0, metadata !136), !dbg !396
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !133), !dbg !396
  %29 = load i32* %ncol, align 4, !dbg !396, !tbaa !389
  %cmp34 = icmp eq i32 %conv33, %29, !dbg !396
  br i1 %cmp34, label %if.end38, label %if.then36, !dbg !396

if.then36:                                        ; preds = %if.end30
  %30 = load %struct._IO_FILE** @stderr, align 8, !dbg !397, !tbaa !328
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([69 x i8]* @.str26, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %conv33, i32 %29) #6, !dbg !397
  br label %return, !dbg !399

if.end38:                                         ; preds = %if.end30
  %mode = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 1, !dbg !400
  %31 = load i32* %mode, align 4, !dbg !400, !tbaa !389
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
  ], !dbg !400

sw.bb39:                                          ; preds = %if.end38, %if.end38
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtx, i32* %nrow, i32* %ncol, i32* %inc1, i32* %inc2, double** %entries) #6, !dbg !401
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !135), !dbg !403
  %32 = load i32* %nrow, align 4, !dbg !403, !tbaa !389
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !133), !dbg !403
  %33 = load i32* %ncol, align 4, !dbg !403, !tbaa !389
  %mul = mul nsw i32 %33, %32, !dbg !403
  call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !134), !dbg !403
  store i32 %mul, i32* %nent, align 4, !dbg !403, !tbaa !389
  br label %sw.epilog135, !dbg !404

sw.bb40:                                          ; preds = %if.end38
  call void @SubMtx_sparseRowsInfo(%struct._SubMtx* %mtx, i32* %nrow, i32* %nent, i32** %sizes, i32** %indices, double** %entries) #6, !dbg !405
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !145), !dbg !406
  %34 = load i32** %sizes, align 8, !dbg !406, !tbaa !328
  %35 = bitcast i32* %34 to i8*, !dbg !406
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !135), !dbg !406
  %36 = load i32* %nrow, align 4, !dbg !406, !tbaa !389
  %conv41 = sext i32 %36 to i64, !dbg !406
  %call42 = call i64 @fread(i8* %35, i64 4, i64 %conv41, %struct._IO_FILE* %fp) #6, !dbg !406
  %conv43 = trunc i64 %call42 to i32, !dbg !406
  call void @llvm.dbg.value(metadata !{i32 %conv43}, i64 0, metadata !136), !dbg !406
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !135), !dbg !406
  %37 = load i32* %nrow, align 4, !dbg !406, !tbaa !389
  %cmp44 = icmp eq i32 %conv43, %37, !dbg !406
  br i1 %cmp44, label %if.end48, label %if.then46, !dbg !406

if.then46:                                        ; preds = %sw.bb40
  %38 = load %struct._IO_FILE** @stderr, align 8, !dbg !407, !tbaa !328
  %call47 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([69 x i8]* @.str27, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %conv43, i32 %37) #6, !dbg !407
  br label %return, !dbg !409

if.end48:                                         ; preds = %sw.bb40
  call void @llvm.dbg.value(metadata !{i32** %indices}, i64 0, metadata !141), !dbg !410
  %39 = load i32** %indices, align 8, !dbg !410, !tbaa !328
  %40 = bitcast i32* %39 to i8*, !dbg !410
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !134), !dbg !410
  %41 = load i32* %nent, align 4, !dbg !410, !tbaa !389
  %conv49 = sext i32 %41 to i64, !dbg !410
  %call50 = call i64 @fread(i8* %40, i64 4, i64 %conv49, %struct._IO_FILE* %fp) #6, !dbg !410
  %conv51 = trunc i64 %call50 to i32, !dbg !410
  call void @llvm.dbg.value(metadata !{i32 %conv51}, i64 0, metadata !136), !dbg !410
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !134), !dbg !410
  %42 = load i32* %nent, align 4, !dbg !410, !tbaa !389
  %cmp52 = icmp eq i32 %conv51, %42, !dbg !410
  br i1 %cmp52, label %sw.epilog135, label %if.then54, !dbg !410

if.then54:                                        ; preds = %if.end48
  %43 = load %struct._IO_FILE** @stderr, align 8, !dbg !411, !tbaa !328
  %call55 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %43, i8* getelementptr inbounds ([69 x i8]* @.str28, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %conv51, i32 %42) #6, !dbg !411
  br label %return, !dbg !413

sw.bb57:                                          ; preds = %if.end38
  call void @SubMtx_sparseColumnsInfo(%struct._SubMtx* %mtx, i32* %ncol, i32* %nent, i32** %sizes, i32** %indices, double** %entries) #6, !dbg !414
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !145), !dbg !415
  %44 = load i32** %sizes, align 8, !dbg !415, !tbaa !328
  %45 = bitcast i32* %44 to i8*, !dbg !415
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !133), !dbg !415
  %46 = load i32* %ncol, align 4, !dbg !415, !tbaa !389
  %conv58 = sext i32 %46 to i64, !dbg !415
  %call59 = call i64 @fread(i8* %45, i64 4, i64 %conv58, %struct._IO_FILE* %fp) #6, !dbg !415
  %conv60 = trunc i64 %call59 to i32, !dbg !415
  call void @llvm.dbg.value(metadata !{i32 %conv60}, i64 0, metadata !136), !dbg !415
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !133), !dbg !415
  %47 = load i32* %ncol, align 4, !dbg !415, !tbaa !389
  %cmp61 = icmp eq i32 %conv60, %47, !dbg !415
  br i1 %cmp61, label %if.end65, label %if.then63, !dbg !415

if.then63:                                        ; preds = %sw.bb57
  %48 = load %struct._IO_FILE** @stderr, align 8, !dbg !416, !tbaa !328
  %call64 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([69 x i8]* @.str29, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %conv60, i32 %47) #6, !dbg !416
  br label %return, !dbg !418

if.end65:                                         ; preds = %sw.bb57
  call void @llvm.dbg.value(metadata !{i32** %indices}, i64 0, metadata !141), !dbg !419
  %49 = load i32** %indices, align 8, !dbg !419, !tbaa !328
  %50 = bitcast i32* %49 to i8*, !dbg !419
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !134), !dbg !419
  %51 = load i32* %nent, align 4, !dbg !419, !tbaa !389
  %conv66 = sext i32 %51 to i64, !dbg !419
  %call67 = call i64 @fread(i8* %50, i64 4, i64 %conv66, %struct._IO_FILE* %fp) #6, !dbg !419
  %conv68 = trunc i64 %call67 to i32, !dbg !419
  call void @llvm.dbg.value(metadata !{i32 %conv68}, i64 0, metadata !136), !dbg !419
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !134), !dbg !419
  %52 = load i32* %nent, align 4, !dbg !419, !tbaa !389
  %cmp69 = icmp eq i32 %conv68, %52, !dbg !419
  br i1 %cmp69, label %sw.epilog135, label %if.then71, !dbg !419

if.then71:                                        ; preds = %if.end65
  %53 = load %struct._IO_FILE** @stderr, align 8, !dbg !420, !tbaa !328
  %call72 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([69 x i8]* @.str30, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %conv68, i32 %52) #6, !dbg !420
  br label %return, !dbg !422

sw.bb74:                                          ; preds = %if.end38
  call void @SubMtx_sparseTriplesInfo(%struct._SubMtx* %mtx, i32* %nent, i32** %rowids, i32** %colids, double** %entries) #6, !dbg !423
  call void @llvm.dbg.value(metadata !{i32** %rowids}, i64 0, metadata !143), !dbg !424
  %54 = load i32** %rowids, align 8, !dbg !424, !tbaa !328
  %55 = bitcast i32* %54 to i8*, !dbg !424
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !134), !dbg !424
  %56 = load i32* %nent, align 4, !dbg !424, !tbaa !389
  %conv75 = sext i32 %56 to i64, !dbg !424
  %call76 = call i64 @fread(i8* %55, i64 4, i64 %conv75, %struct._IO_FILE* %fp) #6, !dbg !424
  %conv77 = trunc i64 %call76 to i32, !dbg !424
  call void @llvm.dbg.value(metadata !{i32 %conv77}, i64 0, metadata !136), !dbg !424
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !134), !dbg !424
  %57 = load i32* %nent, align 4, !dbg !424, !tbaa !389
  %cmp78 = icmp eq i32 %conv77, %57, !dbg !424
  br i1 %cmp78, label %if.end82, label %if.then80, !dbg !424

if.then80:                                        ; preds = %sw.bb74
  %58 = load %struct._IO_FILE** @stderr, align 8, !dbg !425, !tbaa !328
  %call81 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([70 x i8]* @.str31, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %conv77, i32 %57) #6, !dbg !425
  br label %return, !dbg !427

if.end82:                                         ; preds = %sw.bb74
  call void @llvm.dbg.value(metadata !{i32** %colids}, i64 0, metadata !138), !dbg !428
  %59 = load i32** %colids, align 8, !dbg !428, !tbaa !328
  %60 = bitcast i32* %59 to i8*, !dbg !428
  %sext249 = shl i64 %call76, 32, !dbg !428
  %conv83 = ashr exact i64 %sext249, 32, !dbg !428
  %call84 = call i64 @fread(i8* %60, i64 4, i64 %conv83, %struct._IO_FILE* %fp) #6, !dbg !428
  %conv85 = trunc i64 %call84 to i32, !dbg !428
  call void @llvm.dbg.value(metadata !{i32 %conv85}, i64 0, metadata !136), !dbg !428
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !134), !dbg !428
  %61 = load i32* %nent, align 4, !dbg !428, !tbaa !389
  %cmp86 = icmp eq i32 %conv85, %61, !dbg !428
  br i1 %cmp86, label %sw.epilog135, label %if.then88, !dbg !428

if.then88:                                        ; preds = %if.end82
  %62 = load %struct._IO_FILE** @stderr, align 8, !dbg !429, !tbaa !328
  %call89 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %62, i8* getelementptr inbounds ([70 x i8]* @.str32, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %conv85, i32 %61) #6, !dbg !429
  br label %return, !dbg !431

sw.bb91:                                          ; preds = %if.end38
  call void @SubMtx_denseSubrowsInfo(%struct._SubMtx* %mtx, i32* %nrow, i32* %nent, i32** %firstlocs, i32** %sizes, double** %entries) #6, !dbg !432
  call void @llvm.dbg.value(metadata !{i32** %firstlocs}, i64 0, metadata !140), !dbg !433
  %63 = load i32** %firstlocs, align 8, !dbg !433, !tbaa !328
  %64 = bitcast i32* %63 to i8*, !dbg !433
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !135), !dbg !433
  %65 = load i32* %nrow, align 4, !dbg !433, !tbaa !389
  %conv92 = sext i32 %65 to i64, !dbg !433
  %call93 = call i64 @fread(i8* %64, i64 4, i64 %conv92, %struct._IO_FILE* %fp) #6, !dbg !433
  %conv94 = trunc i64 %call93 to i32, !dbg !433
  call void @llvm.dbg.value(metadata !{i32 %conv94}, i64 0, metadata !136), !dbg !433
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !135), !dbg !433
  %66 = load i32* %nrow, align 4, !dbg !433, !tbaa !389
  %cmp95 = icmp eq i32 %conv94, %66, !dbg !433
  br i1 %cmp95, label %if.end99, label %if.then97, !dbg !433

if.then97:                                        ; preds = %sw.bb91
  %67 = load %struct._IO_FILE** @stderr, align 8, !dbg !434, !tbaa !328
  %call98 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([70 x i8]* @.str33, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %conv94, i32 %66) #6, !dbg !434
  br label %return, !dbg !436

if.end99:                                         ; preds = %sw.bb91
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !145), !dbg !437
  %68 = load i32** %sizes, align 8, !dbg !437, !tbaa !328
  %69 = bitcast i32* %68 to i8*, !dbg !437
  %sext248 = shl i64 %call93, 32, !dbg !437
  %conv100 = ashr exact i64 %sext248, 32, !dbg !437
  %call101 = call i64 @fread(i8* %69, i64 4, i64 %conv100, %struct._IO_FILE* %fp) #6, !dbg !437
  %conv102 = trunc i64 %call101 to i32, !dbg !437
  call void @llvm.dbg.value(metadata !{i32 %conv102}, i64 0, metadata !136), !dbg !437
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !135), !dbg !437
  %70 = load i32* %nrow, align 4, !dbg !437, !tbaa !389
  %cmp103 = icmp eq i32 %conv102, %70, !dbg !437
  br i1 %cmp103, label %sw.epilog135, label %if.then105, !dbg !437

if.then105:                                       ; preds = %if.end99
  %71 = load %struct._IO_FILE** @stderr, align 8, !dbg !438, !tbaa !328
  %call106 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([70 x i8]* @.str34, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %conv102, i32 %70) #6, !dbg !438
  br label %return, !dbg !440

sw.bb108:                                         ; preds = %if.end38
  call void @SubMtx_denseSubcolumnsInfo(%struct._SubMtx* %mtx, i32* %ncol, i32* %nent, i32** %firstlocs, i32** %sizes, double** %entries) #6, !dbg !441
  call void @llvm.dbg.value(metadata !{i32** %firstlocs}, i64 0, metadata !140), !dbg !442
  %72 = load i32** %firstlocs, align 8, !dbg !442, !tbaa !328
  %73 = bitcast i32* %72 to i8*, !dbg !442
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !133), !dbg !442
  %74 = load i32* %ncol, align 4, !dbg !442, !tbaa !389
  %conv109 = sext i32 %74 to i64, !dbg !442
  %call110 = call i64 @fread(i8* %73, i64 4, i64 %conv109, %struct._IO_FILE* %fp) #6, !dbg !442
  %conv111 = trunc i64 %call110 to i32, !dbg !442
  call void @llvm.dbg.value(metadata !{i32 %conv111}, i64 0, metadata !136), !dbg !442
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !133), !dbg !442
  %75 = load i32* %ncol, align 4, !dbg !442, !tbaa !389
  %cmp112 = icmp eq i32 %conv111, %75, !dbg !442
  br i1 %cmp112, label %if.end116, label %if.then114, !dbg !442

if.then114:                                       ; preds = %sw.bb108
  %76 = load %struct._IO_FILE** @stderr, align 8, !dbg !443, !tbaa !328
  %call115 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([70 x i8]* @.str33, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %conv111, i32 %75) #6, !dbg !443
  br label %return, !dbg !445

if.end116:                                        ; preds = %sw.bb108
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !145), !dbg !446
  %77 = load i32** %sizes, align 8, !dbg !446, !tbaa !328
  %78 = bitcast i32* %77 to i8*, !dbg !446
  %sext = shl i64 %call110, 32, !dbg !446
  %conv117 = ashr exact i64 %sext, 32, !dbg !446
  %call118 = call i64 @fread(i8* %78, i64 4, i64 %conv117, %struct._IO_FILE* %fp) #6, !dbg !446
  %conv119 = trunc i64 %call118 to i32, !dbg !446
  call void @llvm.dbg.value(metadata !{i32 %conv119}, i64 0, metadata !136), !dbg !446
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !133), !dbg !446
  %79 = load i32* %ncol, align 4, !dbg !446, !tbaa !389
  %cmp120 = icmp eq i32 %conv119, %79, !dbg !446
  br i1 %cmp120, label %sw.epilog135, label %if.then122, !dbg !446

if.then122:                                       ; preds = %if.end116
  %80 = load %struct._IO_FILE** @stderr, align 8, !dbg !447, !tbaa !328
  %call123 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %80, i8* getelementptr inbounds ([70 x i8]* @.str34, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %conv119, i32 %79) #6, !dbg !447
  br label %return, !dbg !449

sw.bb125:                                         ; preds = %if.end38
  call void @SubMtx_diagonalInfo(%struct._SubMtx* %mtx, i32* %nent, double** %entries) #6, !dbg !450
  br label %sw.epilog135, !dbg !451

sw.bb126:                                         ; preds = %if.end38, %if.end38
  call void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %mtx, i32* %nrow, i32* %nent, i32** %pivotsizes, double** %entries) #6, !dbg !452
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes}, i64 0, metadata !142), !dbg !453
  %81 = load i32** %pivotsizes, align 8, !dbg !453, !tbaa !328
  %82 = bitcast i32* %81 to i8*, !dbg !453
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !135), !dbg !453
  %83 = load i32* %nrow, align 4, !dbg !453, !tbaa !389
  %conv127 = sext i32 %83 to i64, !dbg !453
  %call128 = call i64 @fread(i8* %82, i64 4, i64 %conv127, %struct._IO_FILE* %fp) #6, !dbg !453
  %conv129 = trunc i64 %call128 to i32, !dbg !453
  call void @llvm.dbg.value(metadata !{i32 %conv129}, i64 0, metadata !136), !dbg !453
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !135), !dbg !453
  %84 = load i32* %nrow, align 4, !dbg !453, !tbaa !389
  %cmp130 = icmp eq i32 %conv129, %84, !dbg !453
  br i1 %cmp130, label %sw.epilog135, label %if.then132, !dbg !453

if.then132:                                       ; preds = %sw.bb126
  %85 = load %struct._IO_FILE** @stderr, align 8, !dbg !454, !tbaa !328
  %call133 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([70 x i8]* @.str35, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %conv129, i32 %84) #6, !dbg !454
  br label %return, !dbg !456

sw.epilog135:                                     ; preds = %if.end48, %if.end65, %if.end82, %if.end99, %if.end116, %sw.bb126, %if.end38, %sw.bb125, %sw.bb39
  %type = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0, !dbg !457
  %86 = load i32* %type, align 4, !dbg !457, !tbaa !389
  switch i32 %86, label %return [
    i32 1, label %if.then138
    i32 2, label %if.then150
  ], !dbg !457

if.then138:                                       ; preds = %sw.epilog135
  call void @llvm.dbg.value(metadata !{double** %entries}, i64 0, metadata !130), !dbg !458
  %87 = load double** %entries, align 8, !dbg !458, !tbaa !328
  %88 = bitcast double* %87 to i8*, !dbg !458
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !134), !dbg !458
  %89 = load i32* %nent, align 4, !dbg !458, !tbaa !389
  %conv139 = sext i32 %89 to i64, !dbg !458
  %call140 = call i64 @fread(i8* %88, i64 8, i64 %conv139, %struct._IO_FILE* %fp) #6, !dbg !458
  %conv141 = trunc i64 %call140 to i32, !dbg !458
  call void @llvm.dbg.value(metadata !{i32 %conv141}, i64 0, metadata !136), !dbg !458
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !134), !dbg !458
  %90 = load i32* %nent, align 4, !dbg !458, !tbaa !389
  %cmp142 = icmp eq i32 %conv141, %90, !dbg !458
  br i1 %cmp142, label %return, label %if.then144, !dbg !458

if.then144:                                       ; preds = %if.then138
  %91 = load %struct._IO_FILE** @stderr, align 8, !dbg !460, !tbaa !328
  %call145 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %91, i8* getelementptr inbounds ([69 x i8]* @.str36, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %conv141, i32 %90) #6, !dbg !460
  br label %return, !dbg !462

if.then150:                                       ; preds = %sw.epilog135
  call void @llvm.dbg.value(metadata !{double** %entries}, i64 0, metadata !130), !dbg !463
  %92 = load double** %entries, align 8, !dbg !463, !tbaa !328
  %93 = bitcast double* %92 to i8*, !dbg !463
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !134), !dbg !463
  %94 = load i32* %nent, align 4, !dbg !463, !tbaa !389
  %mul151 = shl nsw i32 %94, 1, !dbg !463
  %conv152 = sext i32 %mul151 to i64, !dbg !463
  %call153 = call i64 @fread(i8* %93, i64 8, i64 %conv152, %struct._IO_FILE* %fp) #6, !dbg !463
  %conv154 = trunc i64 %call153 to i32, !dbg !463
  call void @llvm.dbg.value(metadata !{i32 %conv154}, i64 0, metadata !136), !dbg !463
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !134), !dbg !463
  %95 = load i32* %nent, align 4, !dbg !463, !tbaa !389
  %mul155 = shl nsw i32 %95, 1, !dbg !463
  %cmp156 = icmp eq i32 %conv154, %mul155, !dbg !463
  br i1 %cmp156, label %return, label %if.then158, !dbg !463

if.then158:                                       ; preds = %if.then150
  %96 = load %struct._IO_FILE** @stderr, align 8, !dbg !465, !tbaa !328
  %call160 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %96, i8* getelementptr inbounds ([69 x i8]* @.str36, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %conv154, i32 %mul155) #6, !dbg !465
  br label %return, !dbg !467

return:                                           ; preds = %if.then150, %if.then138, %sw.epilog135, %if.then158, %if.then144, %if.then132, %if.then122, %if.then114, %if.then105, %if.then97, %if.then88, %if.then80, %if.then71, %if.then63, %if.then54, %if.then46, %if.then36, %if.then28, %sw.default12, %sw.default, %if.then5, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then5 ], [ 0, %sw.default12 ], [ 0, %if.then28 ], [ 0, %if.then36 ], [ 0, %if.then144 ], [ 0, %if.then158 ], [ 0, %if.then132 ], [ 0, %if.then114 ], [ 0, %if.then122 ], [ 0, %if.then97 ], [ 0, %if.then105 ], [ 0, %if.then80 ], [ 0, %if.then88 ], [ 0, %if.then63 ], [ 0, %if.then71 ], [ 0, %if.then46 ], [ 0, %if.then54 ], [ 0, %sw.default ], [ 1, %sw.epilog135 ], [ 1, %if.then138 ], [ 1, %if.then150 ]
  ret i32 %retval.0, !dbg !468
}

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct._IO_FILE* nocapture) #2

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
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtx}, i64 0, metadata !104), !dbg !469
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !105), !dbg !470
  call void @llvm.dbg.declare(metadata !{double** %entries}, metadata !106), !dbg !471
  call void @llvm.dbg.declare(metadata !{i32* %inc1}, metadata !107), !dbg !472
  call void @llvm.dbg.declare(metadata !{i32* %inc2}, metadata !108), !dbg !472
  call void @llvm.dbg.declare(metadata !{i32* %ncol}, metadata !109), !dbg !472
  call void @llvm.dbg.declare(metadata !{i32* %nent}, metadata !110), !dbg !472
  call void @llvm.dbg.declare(metadata !{i32* %nrow}, metadata !111), !dbg !472
  call void @llvm.dbg.declare(metadata !{[7 x i32]* %itemp}, metadata !113), !dbg !473
  call void @llvm.dbg.declare(metadata !{i32** %colids}, metadata !117), !dbg !474
  call void @llvm.dbg.declare(metadata !{i32** %colind}, metadata !119), !dbg !474
  call void @llvm.dbg.declare(metadata !{i32** %firstlocs}, metadata !120), !dbg !474
  call void @llvm.dbg.declare(metadata !{i32** %indices}, metadata !121), !dbg !474
  call void @llvm.dbg.declare(metadata !{i32** %pivotsizes}, metadata !122), !dbg !475
  call void @llvm.dbg.declare(metadata !{i32** %rowids}, metadata !123), !dbg !475
  call void @llvm.dbg.declare(metadata !{i32** %rowind}, metadata !124), !dbg !475
  call void @llvm.dbg.declare(metadata !{i32** %sizes}, metadata !125), !dbg !475
  %cmp = icmp eq %struct._SubMtx* %mtx, null, !dbg !476
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !476
  %or.cond = or i1 %cmp, %cmp1, !dbg !476
  br i1 %or.cond, label %if.then, label %if.end, !dbg !476

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !477, !tbaa !328
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([59 x i8]* @.str5, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp) #6, !dbg !477
  br label %return, !dbg !479

if.end:                                           ; preds = %entry
  call void @SubMtx_clearData(%struct._SubMtx* %mtx) #6, !dbg !480
  %arraydecay = getelementptr inbounds [7 x i32]* %itemp, i64 0, i64 0, !dbg !481
  %call2 = call i32 @IVfscanf(%struct._IO_FILE* %fp, i32 7, i32* %arraydecay) #6, !dbg !481
  call void @llvm.dbg.value(metadata !{i32 %call2}, i64 0, metadata !112), !dbg !481
  %cmp3 = icmp eq i32 %call2, 7, !dbg !481
  br i1 %cmp3, label %if.end6, label %if.then4, !dbg !481

if.then4:                                         ; preds = %if.end
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !482, !tbaa !328
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([72 x i8]* @.str6, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %call2, i32 7) #6, !dbg !482
  br label %return, !dbg !484

if.end6:                                          ; preds = %if.end
  %2 = bitcast [7 x i32]* %itemp to i64*, !dbg !485
  %3 = load i64* %2, align 16, !dbg !485
  %4 = trunc i64 %3 to i32, !dbg !485
  %.off = add i32 %4, -1, !dbg !485
  %switch = icmp ult i32 %.off, 2, !dbg !485
  %5 = lshr i64 %3, 32
  %6 = trunc i64 %5 to i32
  br i1 %switch, label %sw.epilog, label %sw.default, !dbg !485

sw.default:                                       ; preds = %if.end6
  %7 = load %struct._IO_FILE** @stderr, align 8, !dbg !486, !tbaa !328
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([73 x i8]* @.str7, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %4) #6, !dbg !486
  br label %return, !dbg !488

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
  ], !dbg !489

sw.default11:                                     ; preds = %sw.epilog
  %8 = load %struct._IO_FILE** @stderr, align 8, !dbg !490, !tbaa !328
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([73 x i8]* @.str8, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %6) #6, !dbg !490
  br label %return, !dbg !492

sw.epilog14:                                      ; preds = %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog, %sw.epilog
  %arrayidx17 = getelementptr inbounds [7 x i32]* %itemp, i64 0, i64 2, !dbg !493
  %9 = bitcast i32* %arrayidx17 to i64*, !dbg !493
  %10 = load i64* %9, align 8, !dbg !493
  %11 = trunc i64 %10 to i32, !dbg !493
  %12 = lshr i64 %10, 32
  %13 = trunc i64 %12 to i32
  %arrayidx19 = getelementptr inbounds [7 x i32]* %itemp, i64 0, i64 4, !dbg !493
  %14 = bitcast i32* %arrayidx19 to i64*, !dbg !493
  %15 = load i64* %14, align 16, !dbg !493
  %16 = trunc i64 %15 to i32, !dbg !493
  %17 = lshr i64 %15, 32
  %18 = trunc i64 %17 to i32
  %arrayidx21 = getelementptr inbounds [7 x i32]* %itemp, i64 0, i64 6, !dbg !493
  %19 = load i32* %arrayidx21, align 8, !dbg !493, !tbaa !389
  call void @SubMtx_init(%struct._SubMtx* %mtx, i32 %4, i32 %6, i32 %11, i32 %13, i32 %16, i32 %18, i32 %19) #6, !dbg !493
  call void @SubMtx_rowIndices(%struct._SubMtx* %mtx, i32* %nrow, i32** %rowind) #6, !dbg !494
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !111), !dbg !495
  %20 = load i32* %nrow, align 4, !dbg !495, !tbaa !389
  call void @llvm.dbg.value(metadata !{i32** %rowind}, i64 0, metadata !124), !dbg !495
  %21 = load i32** %rowind, align 8, !dbg !495, !tbaa !328
  %call22 = call i32 @IVfscanf(%struct._IO_FILE* %fp, i32 %20, i32* %21) #6, !dbg !495
  call void @llvm.dbg.value(metadata !{i32 %call22}, i64 0, metadata !112), !dbg !495
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !111), !dbg !495
  %22 = load i32* %nrow, align 4, !dbg !495, !tbaa !389
  %cmp23 = icmp eq i32 %call22, %22, !dbg !495
  br i1 %cmp23, label %if.end26, label %if.then24, !dbg !495

if.then24:                                        ; preds = %sw.epilog14
  %23 = load %struct._IO_FILE** @stderr, align 8, !dbg !496, !tbaa !328
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([72 x i8]* @.str9, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %call22, i32 %22) #6, !dbg !496
  br label %return, !dbg !498

if.end26:                                         ; preds = %sw.epilog14
  call void @SubMtx_columnIndices(%struct._SubMtx* %mtx, i32* %ncol, i32** %colind) #6, !dbg !499
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !109), !dbg !500
  %24 = load i32* %ncol, align 4, !dbg !500, !tbaa !389
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !119), !dbg !500
  %25 = load i32** %colind, align 8, !dbg !500, !tbaa !328
  %call27 = call i32 @IVfscanf(%struct._IO_FILE* %fp, i32 %24, i32* %25) #6, !dbg !500
  call void @llvm.dbg.value(metadata !{i32 %call27}, i64 0, metadata !112), !dbg !500
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !109), !dbg !500
  %26 = load i32* %ncol, align 4, !dbg !500, !tbaa !389
  %cmp28 = icmp eq i32 %call27, %26, !dbg !500
  br i1 %cmp28, label %if.end31, label %if.then29, !dbg !500

if.then29:                                        ; preds = %if.end26
  %27 = load %struct._IO_FILE** @stderr, align 8, !dbg !501, !tbaa !328
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([72 x i8]* @.str10, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %call27, i32 %26) #6, !dbg !501
  br label %return, !dbg !503

if.end31:                                         ; preds = %if.end26
  %mode = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 1, !dbg !504
  %28 = load i32* %mode, align 4, !dbg !504, !tbaa !389
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
  ], !dbg !504

sw.bb32:                                          ; preds = %if.end31, %if.end31
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtx, i32* %nrow, i32* %ncol, i32* %inc1, i32* %inc2, double** %entries) #6, !dbg !505
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !111), !dbg !507
  %29 = load i32* %nrow, align 4, !dbg !507, !tbaa !389
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !109), !dbg !507
  %30 = load i32* %ncol, align 4, !dbg !507, !tbaa !389
  %mul = mul nsw i32 %30, %29, !dbg !507
  call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !110), !dbg !507
  store i32 %mul, i32* %nent, align 4, !dbg !507, !tbaa !389
  br label %sw.epilog95, !dbg !508

sw.bb33:                                          ; preds = %if.end31
  call void @SubMtx_sparseRowsInfo(%struct._SubMtx* %mtx, i32* %nrow, i32* %nent, i32** %sizes, i32** %indices, double** %entries) #6, !dbg !509
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !111), !dbg !510
  %31 = load i32* %nrow, align 4, !dbg !510, !tbaa !389
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !125), !dbg !510
  %32 = load i32** %sizes, align 8, !dbg !510, !tbaa !328
  %call34 = call i32 @IVfscanf(%struct._IO_FILE* %fp, i32 %31, i32* %32) #6, !dbg !510
  call void @llvm.dbg.value(metadata !{i32 %call34}, i64 0, metadata !112), !dbg !510
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !111), !dbg !510
  %33 = load i32* %nrow, align 4, !dbg !510, !tbaa !389
  %cmp35 = icmp eq i32 %call34, %33, !dbg !510
  br i1 %cmp35, label %if.end38, label %if.then36, !dbg !510

if.then36:                                        ; preds = %sw.bb33
  %34 = load %struct._IO_FILE** @stderr, align 8, !dbg !511, !tbaa !328
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([72 x i8]* @.str11, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %call34, i32 %33) #6, !dbg !511
  br label %return, !dbg !513

if.end38:                                         ; preds = %sw.bb33
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !110), !dbg !514
  %35 = load i32* %nent, align 4, !dbg !514, !tbaa !389
  call void @llvm.dbg.value(metadata !{i32** %indices}, i64 0, metadata !121), !dbg !514
  %36 = load i32** %indices, align 8, !dbg !514, !tbaa !328
  %call39 = call i32 @IVfscanf(%struct._IO_FILE* %fp, i32 %35, i32* %36) #6, !dbg !514
  call void @llvm.dbg.value(metadata !{i32 %call39}, i64 0, metadata !112), !dbg !514
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !110), !dbg !514
  %37 = load i32* %nent, align 4, !dbg !514, !tbaa !389
  %cmp40 = icmp eq i32 %call39, %37, !dbg !514
  br i1 %cmp40, label %sw.epilog95, label %if.then41, !dbg !514

if.then41:                                        ; preds = %if.end38
  %38 = load %struct._IO_FILE** @stderr, align 8, !dbg !515, !tbaa !328
  %call42 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([72 x i8]* @.str12, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %call39, i32 %37) #6, !dbg !515
  br label %return, !dbg !517

sw.bb44:                                          ; preds = %if.end31
  call void @SubMtx_sparseColumnsInfo(%struct._SubMtx* %mtx, i32* %ncol, i32* %nent, i32** %sizes, i32** %indices, double** %entries) #6, !dbg !518
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !109), !dbg !519
  %39 = load i32* %ncol, align 4, !dbg !519, !tbaa !389
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !125), !dbg !519
  %40 = load i32** %sizes, align 8, !dbg !519, !tbaa !328
  %call45 = call i32 @IVfscanf(%struct._IO_FILE* %fp, i32 %39, i32* %40) #6, !dbg !519
  call void @llvm.dbg.value(metadata !{i32 %call45}, i64 0, metadata !112), !dbg !519
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !109), !dbg !519
  %41 = load i32* %ncol, align 4, !dbg !519, !tbaa !389
  %cmp46 = icmp eq i32 %call45, %41, !dbg !519
  br i1 %cmp46, label %if.end49, label %if.then47, !dbg !519

if.then47:                                        ; preds = %sw.bb44
  %42 = load %struct._IO_FILE** @stderr, align 8, !dbg !520, !tbaa !328
  %call48 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([72 x i8]* @.str13, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %call45, i32 %41) #6, !dbg !520
  br label %return, !dbg !522

if.end49:                                         ; preds = %sw.bb44
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !110), !dbg !523
  %43 = load i32* %nent, align 4, !dbg !523, !tbaa !389
  call void @llvm.dbg.value(metadata !{i32** %indices}, i64 0, metadata !121), !dbg !523
  %44 = load i32** %indices, align 8, !dbg !523, !tbaa !328
  %call50 = call i32 @IVfscanf(%struct._IO_FILE* %fp, i32 %43, i32* %44) #6, !dbg !523
  call void @llvm.dbg.value(metadata !{i32 %call50}, i64 0, metadata !112), !dbg !523
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !110), !dbg !523
  %45 = load i32* %nent, align 4, !dbg !523, !tbaa !389
  %cmp51 = icmp eq i32 %call50, %45, !dbg !523
  br i1 %cmp51, label %sw.epilog95, label %if.then52, !dbg !523

if.then52:                                        ; preds = %if.end49
  %46 = load %struct._IO_FILE** @stderr, align 8, !dbg !524, !tbaa !328
  %call53 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([72 x i8]* @.str14, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %call50, i32 %45) #6, !dbg !524
  br label %return, !dbg !526

sw.bb55:                                          ; preds = %if.end31
  call void @SubMtx_sparseTriplesInfo(%struct._SubMtx* %mtx, i32* %nent, i32** %rowids, i32** %colids, double** %entries) #6, !dbg !527
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !110), !dbg !528
  %47 = load i32* %nent, align 4, !dbg !528, !tbaa !389
  call void @llvm.dbg.value(metadata !{i32** %rowids}, i64 0, metadata !123), !dbg !528
  %48 = load i32** %rowids, align 8, !dbg !528, !tbaa !328
  %call56 = call i32 @IVfscanf(%struct._IO_FILE* %fp, i32 %47, i32* %48) #6, !dbg !528
  call void @llvm.dbg.value(metadata !{i32 %call56}, i64 0, metadata !112), !dbg !528
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !110), !dbg !528
  %49 = load i32* %nent, align 4, !dbg !528, !tbaa !389
  %cmp57 = icmp eq i32 %call56, %49, !dbg !528
  br i1 %cmp57, label %if.end60, label %if.then58, !dbg !528

if.then58:                                        ; preds = %sw.bb55
  %50 = load %struct._IO_FILE** @stderr, align 8, !dbg !529, !tbaa !328
  %call59 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([73 x i8]* @.str15, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %call56, i32 %49) #6, !dbg !529
  br label %return, !dbg !531

if.end60:                                         ; preds = %sw.bb55
  call void @llvm.dbg.value(metadata !{i32** %colids}, i64 0, metadata !117), !dbg !532
  %51 = load i32** %colids, align 8, !dbg !532, !tbaa !328
  %call61 = call i32 @IVfscanf(%struct._IO_FILE* %fp, i32 %call56, i32* %51) #6, !dbg !532
  call void @llvm.dbg.value(metadata !{i32 %call61}, i64 0, metadata !112), !dbg !532
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !110), !dbg !532
  %52 = load i32* %nent, align 4, !dbg !532, !tbaa !389
  %cmp62 = icmp eq i32 %call61, %52, !dbg !532
  br i1 %cmp62, label %sw.epilog95, label %if.then63, !dbg !532

if.then63:                                        ; preds = %if.end60
  %53 = load %struct._IO_FILE** @stderr, align 8, !dbg !533, !tbaa !328
  %call64 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([73 x i8]* @.str16, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %call61, i32 %52) #6, !dbg !533
  br label %return, !dbg !535

sw.bb66:                                          ; preds = %if.end31
  call void @SubMtx_denseSubrowsInfo(%struct._SubMtx* %mtx, i32* %nrow, i32* %nent, i32** %firstlocs, i32** %sizes, double** %entries) #6, !dbg !536
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !111), !dbg !537
  %54 = load i32* %nrow, align 4, !dbg !537, !tbaa !389
  call void @llvm.dbg.value(metadata !{i32** %firstlocs}, i64 0, metadata !120), !dbg !537
  %55 = load i32** %firstlocs, align 8, !dbg !537, !tbaa !328
  %call67 = call i32 @IVfscanf(%struct._IO_FILE* %fp, i32 %54, i32* %55) #6, !dbg !537
  call void @llvm.dbg.value(metadata !{i32 %call67}, i64 0, metadata !112), !dbg !537
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !111), !dbg !537
  %56 = load i32* %nrow, align 4, !dbg !537, !tbaa !389
  %cmp68 = icmp eq i32 %call67, %56, !dbg !537
  br i1 %cmp68, label %if.end71, label %if.then69, !dbg !537

if.then69:                                        ; preds = %sw.bb66
  %57 = load %struct._IO_FILE** @stderr, align 8, !dbg !538, !tbaa !328
  %call70 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %57, i8* getelementptr inbounds ([73 x i8]* @.str17, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %call67, i32 %56) #6, !dbg !538
  br label %return, !dbg !540

if.end71:                                         ; preds = %sw.bb66
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !125), !dbg !541
  %58 = load i32** %sizes, align 8, !dbg !541, !tbaa !328
  %call72 = call i32 @IVfscanf(%struct._IO_FILE* %fp, i32 %call67, i32* %58) #6, !dbg !541
  call void @llvm.dbg.value(metadata !{i32 %call72}, i64 0, metadata !112), !dbg !541
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !111), !dbg !541
  %59 = load i32* %nrow, align 4, !dbg !541, !tbaa !389
  %cmp73 = icmp eq i32 %call72, %59, !dbg !541
  br i1 %cmp73, label %sw.epilog95, label %if.then74, !dbg !541

if.then74:                                        ; preds = %if.end71
  %60 = load %struct._IO_FILE** @stderr, align 8, !dbg !542, !tbaa !328
  %call75 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %60, i8* getelementptr inbounds ([73 x i8]* @.str18, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %call72, i32 %59) #6, !dbg !542
  br label %return, !dbg !544

sw.bb77:                                          ; preds = %if.end31
  call void @SubMtx_denseSubcolumnsInfo(%struct._SubMtx* %mtx, i32* %ncol, i32* %nent, i32** %firstlocs, i32** %sizes, double** %entries) #6, !dbg !545
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !109), !dbg !546
  %61 = load i32* %ncol, align 4, !dbg !546, !tbaa !389
  call void @llvm.dbg.value(metadata !{i32** %firstlocs}, i64 0, metadata !120), !dbg !546
  %62 = load i32** %firstlocs, align 8, !dbg !546, !tbaa !328
  %call78 = call i32 @IVfscanf(%struct._IO_FILE* %fp, i32 %61, i32* %62) #6, !dbg !546
  call void @llvm.dbg.value(metadata !{i32 %call78}, i64 0, metadata !112), !dbg !546
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !109), !dbg !546
  %63 = load i32* %ncol, align 4, !dbg !546, !tbaa !389
  %cmp79 = icmp eq i32 %call78, %63, !dbg !546
  br i1 %cmp79, label %if.end82, label %if.then80, !dbg !546

if.then80:                                        ; preds = %sw.bb77
  %64 = load %struct._IO_FILE** @stderr, align 8, !dbg !547, !tbaa !328
  %call81 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %64, i8* getelementptr inbounds ([73 x i8]* @.str17, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %call78, i32 %63) #6, !dbg !547
  br label %return, !dbg !549

if.end82:                                         ; preds = %sw.bb77
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !125), !dbg !550
  %65 = load i32** %sizes, align 8, !dbg !550, !tbaa !328
  %call83 = call i32 @IVfscanf(%struct._IO_FILE* %fp, i32 %call78, i32* %65) #6, !dbg !550
  call void @llvm.dbg.value(metadata !{i32 %call83}, i64 0, metadata !112), !dbg !550
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !109), !dbg !550
  %66 = load i32* %ncol, align 4, !dbg !550, !tbaa !389
  %cmp84 = icmp eq i32 %call83, %66, !dbg !550
  br i1 %cmp84, label %sw.epilog95, label %if.then85, !dbg !550

if.then85:                                        ; preds = %if.end82
  %67 = load %struct._IO_FILE** @stderr, align 8, !dbg !551, !tbaa !328
  %call86 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([73 x i8]* @.str18, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %call83, i32 %66) #6, !dbg !551
  br label %return, !dbg !553

sw.bb88:                                          ; preds = %if.end31
  call void @SubMtx_diagonalInfo(%struct._SubMtx* %mtx, i32* %nent, double** %entries) #6, !dbg !554
  br label %sw.epilog95, !dbg !555

sw.bb89:                                          ; preds = %if.end31, %if.end31
  call void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %mtx, i32* %nrow, i32* %nent, i32** %pivotsizes, double** %entries) #6, !dbg !556
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !111), !dbg !557
  %68 = load i32* %nrow, align 4, !dbg !557, !tbaa !389
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes}, i64 0, metadata !122), !dbg !557
  %69 = load i32** %pivotsizes, align 8, !dbg !557, !tbaa !328
  %call90 = call i32 @IVfscanf(%struct._IO_FILE* %fp, i32 %68, i32* %69) #6, !dbg !557
  call void @llvm.dbg.value(metadata !{i32 %call90}, i64 0, metadata !112), !dbg !557
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !111), !dbg !557
  %70 = load i32* %nrow, align 4, !dbg !557, !tbaa !389
  %cmp91 = icmp eq i32 %call90, %70, !dbg !557
  br i1 %cmp91, label %sw.epilog95, label %if.then92, !dbg !557

if.then92:                                        ; preds = %sw.bb89
  %71 = load %struct._IO_FILE** @stderr, align 8, !dbg !558, !tbaa !328
  %call93 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %71, i8* getelementptr inbounds ([73 x i8]* @.str19, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %call90, i32 %70) #6, !dbg !558
  br label %return, !dbg !560

sw.epilog95:                                      ; preds = %if.end38, %if.end49, %if.end60, %if.end71, %if.end82, %sw.bb89, %if.end31, %sw.bb88, %sw.bb32
  %type = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0, !dbg !561
  %72 = load i32* %type, align 4, !dbg !561, !tbaa !389
  switch i32 %72, label %return [
    i32 1, label %if.then97
    i32 2, label %if.then105
  ], !dbg !561

if.then97:                                        ; preds = %sw.epilog95
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !110), !dbg !562
  %73 = load i32* %nent, align 4, !dbg !562, !tbaa !389
  call void @llvm.dbg.value(metadata !{double** %entries}, i64 0, metadata !106), !dbg !562
  %74 = load double** %entries, align 8, !dbg !562, !tbaa !328
  %call98 = call i32 @DVfscanf(%struct._IO_FILE* %fp, i32 %73, double* %74) #6, !dbg !562
  call void @llvm.dbg.value(metadata !{i32 %call98}, i64 0, metadata !112), !dbg !562
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !110), !dbg !562
  %75 = load i32* %nent, align 4, !dbg !562, !tbaa !389
  %cmp99 = icmp eq i32 %call98, %75, !dbg !562
  br i1 %cmp99, label %return, label %if.then100, !dbg !562

if.then100:                                       ; preds = %if.then97
  %76 = load %struct._IO_FILE** @stderr, align 8, !dbg !564, !tbaa !328
  %call101 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %76, i8* getelementptr inbounds ([72 x i8]* @.str20, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %call98, i32 %75) #6, !dbg !564
  br label %return, !dbg !566

if.then105:                                       ; preds = %sw.epilog95
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !110), !dbg !567
  %77 = load i32* %nent, align 4, !dbg !567, !tbaa !389
  %mul106 = shl nsw i32 %77, 1, !dbg !567
  call void @llvm.dbg.value(metadata !{double** %entries}, i64 0, metadata !106), !dbg !567
  %78 = load double** %entries, align 8, !dbg !567, !tbaa !328
  %call107 = call i32 @DVfscanf(%struct._IO_FILE* %fp, i32 %mul106, double* %78) #6, !dbg !567
  call void @llvm.dbg.value(metadata !{i32 %call107}, i64 0, metadata !112), !dbg !567
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !110), !dbg !567
  %79 = load i32* %nent, align 4, !dbg !567, !tbaa !389
  %mul108 = shl nsw i32 %79, 1, !dbg !567
  %cmp109 = icmp eq i32 %call107, %mul108, !dbg !567
  br i1 %cmp109, label %return, label %if.then110, !dbg !567

if.then110:                                       ; preds = %if.then105
  %80 = load %struct._IO_FILE** @stderr, align 8, !dbg !569, !tbaa !328
  %call112 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %80, i8* getelementptr inbounds ([72 x i8]* @.str20, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp, i32 %call107, i32 %mul108) #6, !dbg !569
  br label %return, !dbg !571

return:                                           ; preds = %if.then105, %if.then97, %sw.epilog95, %if.then110, %if.then100, %if.then92, %if.then85, %if.then80, %if.then74, %if.then69, %if.then63, %if.then58, %if.then52, %if.then47, %if.then41, %if.then36, %if.then29, %if.then24, %sw.default11, %sw.default, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then4 ], [ 0, %sw.default11 ], [ 0, %if.then24 ], [ 0, %if.then29 ], [ 0, %if.then100 ], [ 0, %if.then110 ], [ 0, %if.then92 ], [ 0, %if.then80 ], [ 0, %if.then85 ], [ 0, %if.then69 ], [ 0, %if.then74 ], [ 0, %if.then58 ], [ 0, %if.then63 ], [ 0, %if.then47 ], [ 0, %if.then52 ], [ 0, %if.then36 ], [ 0, %if.then41 ], [ 0, %sw.default ], [ 1, %sw.epilog95 ], [ 1, %if.then97 ], [ 1, %if.then105 ]
  ret i32 %retval.0, !dbg !572
}

; Function Attrs: optsize
declare void @SubMtx_clearData(%struct._SubMtx*) #4

; Function Attrs: optsize
declare i32 @IVfscanf(%struct._IO_FILE*, i32, i32*) #4

; Function Attrs: optsize
declare void @SubMtx_init(%struct._SubMtx*, i32, i32, i32, i32, i32, i32, i32) #4

; Function Attrs: optsize
declare void @SubMtx_rowIndices(%struct._SubMtx*, i32*, i32**) #4

; Function Attrs: optsize
declare void @SubMtx_columnIndices(%struct._SubMtx*, i32*, i32**) #4

; Function Attrs: optsize
declare void @SubMtx_denseInfo(%struct._SubMtx*, i32*, i32*, i32*, i32*, double**) #4

; Function Attrs: optsize
declare void @SubMtx_sparseRowsInfo(%struct._SubMtx*, i32*, i32*, i32**, i32**, double**) #4

; Function Attrs: optsize
declare void @SubMtx_sparseColumnsInfo(%struct._SubMtx*, i32*, i32*, i32**, i32**, double**) #4

; Function Attrs: optsize
declare void @SubMtx_sparseTriplesInfo(%struct._SubMtx*, i32*, i32**, i32**, double**) #4

; Function Attrs: optsize
declare void @SubMtx_denseSubrowsInfo(%struct._SubMtx*, i32*, i32*, i32**, i32**, double**) #4

; Function Attrs: optsize
declare void @SubMtx_denseSubcolumnsInfo(%struct._SubMtx*, i32*, i32*, i32**, i32**, double**) #4

; Function Attrs: optsize
declare void @SubMtx_diagonalInfo(%struct._SubMtx*, i32*, double**) #4

; Function Attrs: optsize
declare void @SubMtx_blockDiagonalInfo(%struct._SubMtx*, i32*, i32*, i32**, double**) #4

; Function Attrs: optsize
declare i32 @DVfscanf(%struct._IO_FILE*, i32, double*) #4

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define i32 @SubMtx_writeToFile(%struct._SubMtx* %mtx, i8* %fn) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtx}, i64 0, metadata !148), !dbg !573
  tail call void @llvm.dbg.value(metadata !{i8* %fn}, i64 0, metadata !149), !dbg !574
  %cmp = icmp eq %struct._SubMtx* %mtx, null, !dbg !575
  %cmp1 = icmp eq i8* %fn, null, !dbg !575
  %or.cond = or i1 %cmp, %cmp1, !dbg !575
  br i1 %or.cond, label %if.then, label %if.end, !dbg !575

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !576, !tbaa !328
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([55 x i8]* @.str37, i64 0, i64 0), %struct._SubMtx* %mtx, i8* %fn) #6, !dbg !576
  br label %if.end, !dbg !578

if.end:                                           ; preds = %entry, %if.then
  %call2 = tail call i64 @strlen(i8* %fn) #7, !dbg !579
  %conv = trunc i64 %call2 to i32, !dbg !579
  tail call void @llvm.dbg.value(metadata !{i32 %conv}, i64 0, metadata !151), !dbg !579
  tail call void @llvm.dbg.value(metadata !333, i64 0, metadata !153), !dbg !580
  %cmp5 = icmp sgt i32 %conv, 8, !dbg !581
  br i1 %cmp5, label %if.then7, label %if.else49, !dbg !581

if.then7:                                         ; preds = %if.end
  %sub = shl i64 %call2, 32, !dbg !582
  %sext = add i64 %sub, -34359738368, !dbg !582
  %idxprom = ashr exact i64 %sext, 32, !dbg !582
  %arrayidx = getelementptr inbounds i8* %fn, i64 %idxprom, !dbg !582
  %call8 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([9 x i8]* @.str68, i64 0, i64 0)) #7, !dbg !582
  %cmp9 = icmp eq i32 %call8, 0, !dbg !582
  br i1 %cmp9, label %if.then11, label %if.else20, !dbg !582

if.then11:                                        ; preds = %if.then7
  %call12 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([3 x i8]* @.str38, i64 0, i64 0)) #6, !dbg !584
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call12}, i64 0, metadata !150), !dbg !584
  %cmp13 = icmp eq %struct._IO_FILE* %call12, null, !dbg !584
  br i1 %cmp13, label %if.then15, label %if.else, !dbg !584

if.then15:                                        ; preds = %if.then11
  %1 = load %struct._IO_FILE** @stderr, align 8, !dbg !586, !tbaa !328
  %call16 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([61 x i8]* @.str39, i64 0, i64 0), %struct._SubMtx* %mtx, i8* %fn, i8* %fn) #6, !dbg !586
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !152), !dbg !588
  br label %if.end59, !dbg !589

if.else:                                          ; preds = %if.then11
  %call17 = tail call i32 @SubMtx_writeToBinaryFile(%struct._SubMtx* %mtx, %struct._IO_FILE* %call12) #8, !dbg !590
  tail call void @llvm.dbg.value(metadata !592, i64 0, metadata !152), !dbg !590
  %call18 = tail call i32 @fclose(%struct._IO_FILE* %call12) #6, !dbg !593
  br label %if.end59

if.else20:                                        ; preds = %if.then7
  %call24 = tail call i32 @strcmp(i8* %arrayidx, i8* getelementptr inbounds ([9 x i8]* @.str67, i64 0, i64 0)) #7, !dbg !594
  %cmp25 = icmp eq i32 %call24, 0, !dbg !594
  br i1 %cmp25, label %if.then27, label %if.else37, !dbg !594

if.then27:                                        ; preds = %if.else20
  %call28 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str40, i64 0, i64 0)) #6, !dbg !595
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call28}, i64 0, metadata !150), !dbg !595
  %cmp29 = icmp eq %struct._IO_FILE* %call28, null, !dbg !595
  br i1 %cmp29, label %if.then31, label %if.else33, !dbg !595

if.then31:                                        ; preds = %if.then27
  %2 = load %struct._IO_FILE** @stderr, align 8, !dbg !597, !tbaa !328
  %call32 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([61 x i8]* @.str39, i64 0, i64 0), %struct._SubMtx* %mtx, i8* %fn, i8* %fn) #6, !dbg !597
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !152), !dbg !599
  br label %if.end59, !dbg !600

if.else33:                                        ; preds = %if.then27
  %call34 = tail call i32 @SubMtx_writeToFormattedFile(%struct._SubMtx* %mtx, %struct._IO_FILE* %call28) #8, !dbg !601
  tail call void @llvm.dbg.value(metadata !592, i64 0, metadata !152), !dbg !601
  %call35 = tail call i32 @fclose(%struct._IO_FILE* %call28) #6, !dbg !603
  br label %if.end59

if.else37:                                        ; preds = %if.else20
  %call38 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str41, i64 0, i64 0)) #6, !dbg !604
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call38}, i64 0, metadata !150), !dbg !604
  %cmp39 = icmp eq %struct._IO_FILE* %call38, null, !dbg !604
  br i1 %cmp39, label %if.then41, label %if.else43, !dbg !604

if.then41:                                        ; preds = %if.else37
  %3 = load %struct._IO_FILE** @stderr, align 8, !dbg !606, !tbaa !328
  %call42 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([61 x i8]* @.str39, i64 0, i64 0), %struct._SubMtx* %mtx, i8* %fn, i8* %fn) #6, !dbg !606
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !152), !dbg !608
  br label %if.end59, !dbg !609

if.else43:                                        ; preds = %if.else37
  %call44 = tail call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %mtx, %struct._IO_FILE* %call38) #8, !dbg !610
  tail call void @llvm.dbg.value(metadata !592, i64 0, metadata !152), !dbg !610
  %call45 = tail call i32 @fclose(%struct._IO_FILE* %call38) #6, !dbg !612
  br label %if.end59

if.else49:                                        ; preds = %if.end
  %call50 = tail call %struct._IO_FILE* @fopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str41, i64 0, i64 0)) #6, !dbg !613
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %call50}, i64 0, metadata !150), !dbg !613
  %cmp51 = icmp eq %struct._IO_FILE* %call50, null, !dbg !613
  br i1 %cmp51, label %if.then53, label %if.else55, !dbg !613

if.then53:                                        ; preds = %if.else49
  %4 = load %struct._IO_FILE** @stderr, align 8, !dbg !615, !tbaa !328
  %call54 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([61 x i8]* @.str39, i64 0, i64 0), %struct._SubMtx* %mtx, i8* %fn, i8* %fn) #6, !dbg !615
  tail call void @llvm.dbg.value(metadata !2, i64 0, metadata !152), !dbg !617
  br label %if.end59, !dbg !618

if.else55:                                        ; preds = %if.else49
  %call56 = tail call i32 @SubMtx_writeForHumanEye(%struct._SubMtx* %mtx, %struct._IO_FILE* %call50) #8, !dbg !619
  tail call void @llvm.dbg.value(metadata !592, i64 0, metadata !152), !dbg !619
  %call57 = tail call i32 @fclose(%struct._IO_FILE* %call50) #6, !dbg !621
  br label %if.end59

if.end59:                                         ; preds = %if.then53, %if.else55, %if.else, %if.then15, %if.then41, %if.else43, %if.then31, %if.else33
  %rc.0 = phi i32 [ 0, %if.then15 ], [ 1, %if.else ], [ 0, %if.then31 ], [ 1, %if.else33 ], [ 0, %if.then41 ], [ 1, %if.else43 ], [ 0, %if.then53 ], [ 1, %if.else55 ]
  ret i32 %rc.0, !dbg !622
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
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtx}, i64 0, metadata !175), !dbg !623
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !176), !dbg !624
  call void @llvm.dbg.declare(metadata !{double** %entries}, metadata !177), !dbg !625
  call void @llvm.dbg.declare(metadata !{i32* %inc1}, metadata !178), !dbg !626
  call void @llvm.dbg.declare(metadata !{i32* %inc2}, metadata !179), !dbg !626
  call void @llvm.dbg.declare(metadata !{i32* %ncol}, metadata !180), !dbg !626
  call void @llvm.dbg.declare(metadata !{i32* %nent}, metadata !181), !dbg !626
  call void @llvm.dbg.declare(metadata !{i32* %nrow}, metadata !182), !dbg !626
  call void @llvm.dbg.declare(metadata !{[7 x i32]* %itemp}, metadata !184), !dbg !627
  call void @llvm.dbg.declare(metadata !{i32** %colids}, metadata !185), !dbg !628
  call void @llvm.dbg.declare(metadata !{i32** %colind}, metadata !186), !dbg !628
  call void @llvm.dbg.declare(metadata !{i32** %firstlocs}, metadata !187), !dbg !628
  call void @llvm.dbg.declare(metadata !{i32** %indices}, metadata !188), !dbg !628
  call void @llvm.dbg.declare(metadata !{i32** %pivotsizes}, metadata !189), !dbg !629
  call void @llvm.dbg.declare(metadata !{i32** %rowids}, metadata !190), !dbg !629
  call void @llvm.dbg.declare(metadata !{i32** %rowind}, metadata !191), !dbg !629
  call void @llvm.dbg.declare(metadata !{i32** %sizes}, metadata !192), !dbg !629
  %cmp = icmp eq %struct._SubMtx* %mtx, null, !dbg !630
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !630
  %or.cond = or i1 %cmp, %cmp1, !dbg !630
  br i1 %or.cond, label %if.then, label %if.end, !dbg !630

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !631, !tbaa !328
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([61 x i8]* @.str43, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp) #6, !dbg !631
  call void @exit(i32 -1) #9, !dbg !633
  unreachable, !dbg !633

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0, !dbg !634
  %1 = load i32* %type, align 4, !dbg !634, !tbaa !389
  %arrayidx = getelementptr inbounds [7 x i32]* %itemp, i64 0, i64 0, !dbg !634
  store i32 %1, i32* %arrayidx, align 16, !dbg !634, !tbaa !389
  %mode = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 1, !dbg !635
  %2 = load i32* %mode, align 4, !dbg !635, !tbaa !389
  %arrayidx2 = getelementptr inbounds [7 x i32]* %itemp, i64 0, i64 1, !dbg !635
  store i32 %2, i32* %arrayidx2, align 4, !dbg !635, !tbaa !389
  %rowid = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 2, !dbg !636
  %3 = load i32* %rowid, align 4, !dbg !636, !tbaa !389
  %arrayidx3 = getelementptr inbounds [7 x i32]* %itemp, i64 0, i64 2, !dbg !636
  store i32 %3, i32* %arrayidx3, align 8, !dbg !636, !tbaa !389
  %colid = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 3, !dbg !637
  %4 = load i32* %colid, align 4, !dbg !637, !tbaa !389
  %arrayidx4 = getelementptr inbounds [7 x i32]* %itemp, i64 0, i64 3, !dbg !637
  store i32 %4, i32* %arrayidx4, align 4, !dbg !637, !tbaa !389
  %nrow5 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 4, !dbg !638
  %5 = load i32* %nrow5, align 4, !dbg !638, !tbaa !389
  %arrayidx6 = getelementptr inbounds [7 x i32]* %itemp, i64 0, i64 4, !dbg !638
  store i32 %5, i32* %arrayidx6, align 16, !dbg !638, !tbaa !389
  %ncol7 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 5, !dbg !639
  %6 = load i32* %ncol7, align 4, !dbg !639, !tbaa !389
  %arrayidx8 = getelementptr inbounds [7 x i32]* %itemp, i64 0, i64 5, !dbg !639
  store i32 %6, i32* %arrayidx8, align 4, !dbg !639, !tbaa !389
  %nent9 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 6, !dbg !640
  %7 = load i32* %nent9, align 4, !dbg !640, !tbaa !389
  %arrayidx10 = getelementptr inbounds [7 x i32]* %itemp, i64 0, i64 6, !dbg !640
  store i32 %7, i32* %arrayidx10, align 8, !dbg !640, !tbaa !389
  %8 = bitcast [7 x i32]* %itemp to i8*, !dbg !641
  %call11 = call i64 @fwrite(i8* %8, i64 4, i64 7, %struct._IO_FILE* %fp) #6, !dbg !641
  call void @SubMtx_rowIndices(%struct._SubMtx* %mtx, i32* %nrow, i32** %rowind) #6, !dbg !642
  call void @llvm.dbg.value(metadata !{i32** %rowind}, i64 0, metadata !191), !dbg !643
  %9 = load i32** %rowind, align 8, !dbg !643, !tbaa !328
  %10 = bitcast i32* %9 to i8*, !dbg !643
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !182), !dbg !643
  %11 = load i32* %nrow, align 4, !dbg !643, !tbaa !389
  %conv12 = sext i32 %11 to i64, !dbg !643
  %call13 = call i64 @fwrite(i8* %10, i64 4, i64 %conv12, %struct._IO_FILE* %fp) #6, !dbg !643
  call void @SubMtx_columnIndices(%struct._SubMtx* %mtx, i32* %ncol, i32** %colind) #6, !dbg !644
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !186), !dbg !645
  %12 = load i32** %colind, align 8, !dbg !645, !tbaa !328
  %13 = bitcast i32* %12 to i8*, !dbg !645
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !180), !dbg !645
  %14 = load i32* %ncol, align 4, !dbg !645, !tbaa !389
  %conv15 = sext i32 %14 to i64, !dbg !645
  %call16 = call i64 @fwrite(i8* %13, i64 4, i64 %conv15, %struct._IO_FILE* %fp) #6, !dbg !645
  %15 = load i32* %mode, align 4, !dbg !646, !tbaa !389
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
  ], !dbg !646

sw.bb:                                            ; preds = %if.end, %if.end
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtx, i32* %nrow, i32* %ncol, i32* %inc1, i32* %inc2, double** %entries) #6, !dbg !647
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !182), !dbg !649
  %16 = load i32* %nrow, align 4, !dbg !649, !tbaa !389
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !180), !dbg !649
  %17 = load i32* %ncol, align 4, !dbg !649, !tbaa !389
  %mul = mul nsw i32 %17, %16, !dbg !649
  call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !181), !dbg !649
  store i32 %mul, i32* %nent, align 4, !dbg !649, !tbaa !389
  br label %sw.epilog, !dbg !650

sw.bb19:                                          ; preds = %if.end
  call void @SubMtx_sparseRowsInfo(%struct._SubMtx* %mtx, i32* %nrow, i32* %nent, i32** %sizes, i32** %indices, double** %entries) #6, !dbg !651
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !192), !dbg !652
  %18 = load i32** %sizes, align 8, !dbg !652, !tbaa !328
  %19 = bitcast i32* %18 to i8*, !dbg !652
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !182), !dbg !652
  %20 = load i32* %nrow, align 4, !dbg !652, !tbaa !389
  %conv20 = sext i32 %20 to i64, !dbg !652
  %call21 = call i64 @fwrite(i8* %19, i64 4, i64 %conv20, %struct._IO_FILE* %fp) #6, !dbg !652
  call void @llvm.dbg.value(metadata !{i32** %indices}, i64 0, metadata !188), !dbg !653
  %21 = load i32** %indices, align 8, !dbg !653, !tbaa !328
  %22 = bitcast i32* %21 to i8*, !dbg !653
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !181), !dbg !653
  %23 = load i32* %nent, align 4, !dbg !653, !tbaa !389
  %conv23 = sext i32 %23 to i64, !dbg !653
  %call24 = call i64 @fwrite(i8* %22, i64 4, i64 %conv23, %struct._IO_FILE* %fp) #6, !dbg !653
  br label %sw.epilog, !dbg !654

sw.bb26:                                          ; preds = %if.end
  call void @SubMtx_sparseColumnsInfo(%struct._SubMtx* %mtx, i32* %ncol, i32* %nent, i32** %sizes, i32** %indices, double** %entries) #6, !dbg !655
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !192), !dbg !656
  %24 = load i32** %sizes, align 8, !dbg !656, !tbaa !328
  %25 = bitcast i32* %24 to i8*, !dbg !656
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !180), !dbg !656
  %26 = load i32* %ncol, align 4, !dbg !656, !tbaa !389
  %conv27 = sext i32 %26 to i64, !dbg !656
  %call28 = call i64 @fwrite(i8* %25, i64 4, i64 %conv27, %struct._IO_FILE* %fp) #6, !dbg !656
  call void @llvm.dbg.value(metadata !{i32** %indices}, i64 0, metadata !188), !dbg !657
  %27 = load i32** %indices, align 8, !dbg !657, !tbaa !328
  %28 = bitcast i32* %27 to i8*, !dbg !657
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !181), !dbg !657
  %29 = load i32* %nent, align 4, !dbg !657, !tbaa !389
  %conv30 = sext i32 %29 to i64, !dbg !657
  %call31 = call i64 @fwrite(i8* %28, i64 4, i64 %conv30, %struct._IO_FILE* %fp) #6, !dbg !657
  br label %sw.epilog, !dbg !658

sw.bb33:                                          ; preds = %if.end
  call void @SubMtx_sparseTriplesInfo(%struct._SubMtx* %mtx, i32* %nent, i32** %rowids, i32** %colids, double** %entries) #6, !dbg !659
  call void @llvm.dbg.value(metadata !{i32** %rowids}, i64 0, metadata !190), !dbg !660
  %30 = load i32** %rowids, align 8, !dbg !660, !tbaa !328
  %31 = bitcast i32* %30 to i8*, !dbg !660
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !181), !dbg !660
  %32 = load i32* %nent, align 4, !dbg !660, !tbaa !389
  %conv34 = sext i32 %32 to i64, !dbg !660
  %call35 = call i64 @fwrite(i8* %31, i64 4, i64 %conv34, %struct._IO_FILE* %fp) #6, !dbg !660
  call void @llvm.dbg.value(metadata !{i32** %colids}, i64 0, metadata !185), !dbg !661
  %33 = load i32** %colids, align 8, !dbg !661, !tbaa !328
  %34 = bitcast i32* %33 to i8*, !dbg !661
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !181), !dbg !661
  %35 = load i32* %nent, align 4, !dbg !661, !tbaa !389
  %conv37 = sext i32 %35 to i64, !dbg !661
  %call38 = call i64 @fwrite(i8* %34, i64 4, i64 %conv37, %struct._IO_FILE* %fp) #6, !dbg !661
  br label %sw.epilog, !dbg !662

sw.bb40:                                          ; preds = %if.end
  call void @SubMtx_denseSubrowsInfo(%struct._SubMtx* %mtx, i32* %nrow, i32* %nent, i32** %firstlocs, i32** %sizes, double** %entries) #6, !dbg !663
  call void @llvm.dbg.value(metadata !{i32** %firstlocs}, i64 0, metadata !187), !dbg !664
  %36 = load i32** %firstlocs, align 8, !dbg !664, !tbaa !328
  %37 = bitcast i32* %36 to i8*, !dbg !664
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !182), !dbg !664
  %38 = load i32* %nrow, align 4, !dbg !664, !tbaa !389
  %conv41 = sext i32 %38 to i64, !dbg !664
  %call42 = call i64 @fwrite(i8* %37, i64 4, i64 %conv41, %struct._IO_FILE* %fp) #6, !dbg !664
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !192), !dbg !665
  %39 = load i32** %sizes, align 8, !dbg !665, !tbaa !328
  %40 = bitcast i32* %39 to i8*, !dbg !665
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !182), !dbg !665
  %41 = load i32* %nrow, align 4, !dbg !665, !tbaa !389
  %conv44 = sext i32 %41 to i64, !dbg !665
  %call45 = call i64 @fwrite(i8* %40, i64 4, i64 %conv44, %struct._IO_FILE* %fp) #6, !dbg !665
  br label %sw.epilog, !dbg !666

sw.bb47:                                          ; preds = %if.end
  call void @SubMtx_denseSubcolumnsInfo(%struct._SubMtx* %mtx, i32* %ncol, i32* %nent, i32** %firstlocs, i32** %sizes, double** %entries) #6, !dbg !667
  call void @llvm.dbg.value(metadata !{i32** %firstlocs}, i64 0, metadata !187), !dbg !668
  %42 = load i32** %firstlocs, align 8, !dbg !668, !tbaa !328
  %43 = bitcast i32* %42 to i8*, !dbg !668
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !180), !dbg !668
  %44 = load i32* %ncol, align 4, !dbg !668, !tbaa !389
  %conv48 = sext i32 %44 to i64, !dbg !668
  %call49 = call i64 @fwrite(i8* %43, i64 4, i64 %conv48, %struct._IO_FILE* %fp) #6, !dbg !668
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !192), !dbg !669
  %45 = load i32** %sizes, align 8, !dbg !669, !tbaa !328
  %46 = bitcast i32* %45 to i8*, !dbg !669
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !180), !dbg !669
  %47 = load i32* %ncol, align 4, !dbg !669, !tbaa !389
  %conv51 = sext i32 %47 to i64, !dbg !669
  %call52 = call i64 @fwrite(i8* %46, i64 4, i64 %conv51, %struct._IO_FILE* %fp) #6, !dbg !669
  br label %sw.epilog, !dbg !670

sw.bb54:                                          ; preds = %if.end
  call void @SubMtx_diagonalInfo(%struct._SubMtx* %mtx, i32* %nent, double** %entries) #6, !dbg !671
  br label %sw.epilog, !dbg !672

sw.bb55:                                          ; preds = %if.end, %if.end
  call void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %mtx, i32* %nrow, i32* %nent, i32** %pivotsizes, double** %entries) #6, !dbg !673
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes}, i64 0, metadata !189), !dbg !674
  %48 = load i32** %pivotsizes, align 8, !dbg !674, !tbaa !328
  %49 = bitcast i32* %48 to i8*, !dbg !674
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !182), !dbg !674
  %50 = load i32* %nrow, align 4, !dbg !674, !tbaa !389
  %conv56 = sext i32 %50 to i64, !dbg !674
  %call57 = call i64 @fwrite(i8* %49, i64 4, i64 %conv56, %struct._IO_FILE* %fp) #6, !dbg !674
  br label %sw.epilog, !dbg !675

sw.epilog:                                        ; preds = %if.end, %sw.bb55, %sw.bb54, %sw.bb47, %sw.bb40, %sw.bb33, %sw.bb26, %sw.bb19, %sw.bb
  %51 = load i32* %type, align 4, !dbg !676, !tbaa !389
  switch i32 %51, label %if.end75 [
    i32 1, label %if.then62
    i32 2, label %if.then69
  ], !dbg !676

if.then62:                                        ; preds = %sw.epilog
  call void @llvm.dbg.value(metadata !{double** %entries}, i64 0, metadata !177), !dbg !677
  %52 = load double** %entries, align 8, !dbg !677, !tbaa !328
  %53 = bitcast double* %52 to i8*, !dbg !677
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !181), !dbg !677
  %54 = load i32* %nent, align 4, !dbg !677, !tbaa !389
  %conv63 = sext i32 %54 to i64, !dbg !677
  %call64 = call i64 @fwrite(i8* %53, i64 8, i64 %conv63, %struct._IO_FILE* %fp) #6, !dbg !677
  br label %if.end75, !dbg !679

if.then69:                                        ; preds = %sw.epilog
  call void @llvm.dbg.value(metadata !{double** %entries}, i64 0, metadata !177), !dbg !680
  %55 = load double** %entries, align 8, !dbg !680, !tbaa !328
  %56 = bitcast double* %55 to i8*, !dbg !680
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !181), !dbg !680
  %57 = load i32* %nent, align 4, !dbg !680, !tbaa !389
  %mul70 = shl nsw i32 %57, 1, !dbg !680
  %conv71 = sext i32 %mul70 to i64, !dbg !680
  %call72 = call i64 @fwrite(i8* %56, i64 8, i64 %conv71, %struct._IO_FILE* %fp) #6, !dbg !680
  br label %if.end75, !dbg !682

if.end75:                                         ; preds = %sw.epilog, %if.then69, %if.then62
  ret i32 1, !dbg !683
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
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtx}, i64 0, metadata !156), !dbg !684
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !157), !dbg !685
  call void @llvm.dbg.declare(metadata !{double** %entries}, metadata !158), !dbg !686
  call void @llvm.dbg.declare(metadata !{i32* %inc1}, metadata !159), !dbg !687
  call void @llvm.dbg.declare(metadata !{i32* %inc2}, metadata !160), !dbg !687
  call void @llvm.dbg.declare(metadata !{i32* %ncol}, metadata !161), !dbg !687
  call void @llvm.dbg.declare(metadata !{i32* %nent}, metadata !162), !dbg !687
  call void @llvm.dbg.declare(metadata !{i32* %nrow}, metadata !163), !dbg !687
  call void @llvm.dbg.declare(metadata !{[7 x i32]* %itemp}, metadata !164), !dbg !688
  call void @llvm.dbg.declare(metadata !{i32** %colids}, metadata !165), !dbg !689
  call void @llvm.dbg.declare(metadata !{i32** %colind}, metadata !166), !dbg !689
  call void @llvm.dbg.declare(metadata !{i32** %firstlocs}, metadata !167), !dbg !689
  call void @llvm.dbg.declare(metadata !{i32** %indices}, metadata !168), !dbg !689
  call void @llvm.dbg.declare(metadata !{i32** %pivotsizes}, metadata !169), !dbg !690
  call void @llvm.dbg.declare(metadata !{i32** %rowids}, metadata !170), !dbg !690
  call void @llvm.dbg.declare(metadata !{i32** %rowind}, metadata !171), !dbg !690
  call void @llvm.dbg.declare(metadata !{i32** %sizes}, metadata !172), !dbg !690
  %cmp = icmp eq %struct._SubMtx* %mtx, null, !dbg !691
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !691
  %or.cond = or i1 %cmp, %cmp1, !dbg !691
  br i1 %or.cond, label %if.then, label %if.end, !dbg !691

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !692, !tbaa !328
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([64 x i8]* @.str42, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp) #6, !dbg !692
  call void @exit(i32 -1) #9, !dbg !694
  unreachable, !dbg !694

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0, !dbg !695
  %1 = load i32* %type, align 4, !dbg !695, !tbaa !389
  %arrayidx = getelementptr inbounds [7 x i32]* %itemp, i64 0, i64 0, !dbg !695
  store i32 %1, i32* %arrayidx, align 16, !dbg !695, !tbaa !389
  %mode = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 1, !dbg !696
  %2 = load i32* %mode, align 4, !dbg !696, !tbaa !389
  %arrayidx2 = getelementptr inbounds [7 x i32]* %itemp, i64 0, i64 1, !dbg !696
  store i32 %2, i32* %arrayidx2, align 4, !dbg !696, !tbaa !389
  %rowid = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 2, !dbg !697
  %3 = load i32* %rowid, align 4, !dbg !697, !tbaa !389
  %arrayidx3 = getelementptr inbounds [7 x i32]* %itemp, i64 0, i64 2, !dbg !697
  store i32 %3, i32* %arrayidx3, align 8, !dbg !697, !tbaa !389
  %colid = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 3, !dbg !698
  %4 = load i32* %colid, align 4, !dbg !698, !tbaa !389
  %arrayidx4 = getelementptr inbounds [7 x i32]* %itemp, i64 0, i64 3, !dbg !698
  store i32 %4, i32* %arrayidx4, align 4, !dbg !698, !tbaa !389
  %nrow5 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 4, !dbg !699
  %5 = load i32* %nrow5, align 4, !dbg !699, !tbaa !389
  %arrayidx6 = getelementptr inbounds [7 x i32]* %itemp, i64 0, i64 4, !dbg !699
  store i32 %5, i32* %arrayidx6, align 16, !dbg !699, !tbaa !389
  %ncol7 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 5, !dbg !700
  %6 = load i32* %ncol7, align 4, !dbg !700, !tbaa !389
  %arrayidx8 = getelementptr inbounds [7 x i32]* %itemp, i64 0, i64 5, !dbg !700
  store i32 %6, i32* %arrayidx8, align 4, !dbg !700, !tbaa !389
  %nent9 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 6, !dbg !701
  %7 = load i32* %nent9, align 4, !dbg !701, !tbaa !389
  %arrayidx10 = getelementptr inbounds [7 x i32]* %itemp, i64 0, i64 6, !dbg !701
  store i32 %7, i32* %arrayidx10, align 8, !dbg !701, !tbaa !389
  call void @IVfprintf(%struct._IO_FILE* %fp, i32 7, i32* %arrayidx) #6, !dbg !702
  call void @SubMtx_rowIndices(%struct._SubMtx* %mtx, i32* %nrow, i32** %rowind) #6, !dbg !703
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !163), !dbg !704
  %8 = load i32* %nrow, align 4, !dbg !704, !tbaa !389
  call void @llvm.dbg.value(metadata !{i32** %rowind}, i64 0, metadata !171), !dbg !704
  %9 = load i32** %rowind, align 8, !dbg !704, !tbaa !328
  call void @IVfprintf(%struct._IO_FILE* %fp, i32 %8, i32* %9) #6, !dbg !704
  call void @SubMtx_columnIndices(%struct._SubMtx* %mtx, i32* %ncol, i32** %colind) #6, !dbg !705
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !161), !dbg !706
  %10 = load i32* %ncol, align 4, !dbg !706, !tbaa !389
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !166), !dbg !706
  %11 = load i32** %colind, align 8, !dbg !706, !tbaa !328
  call void @IVfprintf(%struct._IO_FILE* %fp, i32 %10, i32* %11) #6, !dbg !706
  %12 = load i32* %mode, align 4, !dbg !707, !tbaa !389
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
  ], !dbg !707

sw.bb:                                            ; preds = %if.end, %if.end
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtx, i32* %nrow, i32* %ncol, i32* %inc1, i32* %inc2, double** %entries) #6, !dbg !708
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !163), !dbg !710
  %13 = load i32* %nrow, align 4, !dbg !710, !tbaa !389
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !161), !dbg !710
  %14 = load i32* %ncol, align 4, !dbg !710, !tbaa !389
  %mul = mul nsw i32 %14, %13, !dbg !710
  call void @llvm.dbg.value(metadata !{i32 %mul}, i64 0, metadata !162), !dbg !710
  store i32 %mul, i32* %nent, align 4, !dbg !710, !tbaa !389
  br label %sw.epilog, !dbg !711

sw.bb12:                                          ; preds = %if.end
  call void @SubMtx_sparseRowsInfo(%struct._SubMtx* %mtx, i32* %nrow, i32* %nent, i32** %sizes, i32** %indices, double** %entries) #6, !dbg !712
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !163), !dbg !713
  %15 = load i32* %nrow, align 4, !dbg !713, !tbaa !389
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !172), !dbg !713
  %16 = load i32** %sizes, align 8, !dbg !713, !tbaa !328
  call void @IVfprintf(%struct._IO_FILE* %fp, i32 %15, i32* %16) #6, !dbg !713
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !162), !dbg !714
  %17 = load i32* %nent, align 4, !dbg !714, !tbaa !389
  call void @llvm.dbg.value(metadata !{i32** %indices}, i64 0, metadata !168), !dbg !714
  %18 = load i32** %indices, align 8, !dbg !714, !tbaa !328
  call void @IVfprintf(%struct._IO_FILE* %fp, i32 %17, i32* %18) #6, !dbg !714
  br label %sw.epilog, !dbg !715

sw.bb13:                                          ; preds = %if.end
  call void @SubMtx_sparseColumnsInfo(%struct._SubMtx* %mtx, i32* %ncol, i32* %nent, i32** %sizes, i32** %indices, double** %entries) #6, !dbg !716
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !161), !dbg !717
  %19 = load i32* %ncol, align 4, !dbg !717, !tbaa !389
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !172), !dbg !717
  %20 = load i32** %sizes, align 8, !dbg !717, !tbaa !328
  call void @IVfprintf(%struct._IO_FILE* %fp, i32 %19, i32* %20) #6, !dbg !717
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !162), !dbg !718
  %21 = load i32* %nent, align 4, !dbg !718, !tbaa !389
  call void @llvm.dbg.value(metadata !{i32** %indices}, i64 0, metadata !168), !dbg !718
  %22 = load i32** %indices, align 8, !dbg !718, !tbaa !328
  call void @IVfprintf(%struct._IO_FILE* %fp, i32 %21, i32* %22) #6, !dbg !718
  br label %sw.epilog, !dbg !719

sw.bb14:                                          ; preds = %if.end
  call void @SubMtx_sparseTriplesInfo(%struct._SubMtx* %mtx, i32* %nent, i32** %rowids, i32** %colids, double** %entries) #6, !dbg !720
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !162), !dbg !721
  %23 = load i32* %nent, align 4, !dbg !721, !tbaa !389
  call void @llvm.dbg.value(metadata !{i32** %rowids}, i64 0, metadata !170), !dbg !721
  %24 = load i32** %rowids, align 8, !dbg !721, !tbaa !328
  call void @IVfprintf(%struct._IO_FILE* %fp, i32 %23, i32* %24) #6, !dbg !721
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !162), !dbg !722
  %25 = load i32* %nent, align 4, !dbg !722, !tbaa !389
  call void @llvm.dbg.value(metadata !{i32** %colids}, i64 0, metadata !165), !dbg !722
  %26 = load i32** %colids, align 8, !dbg !722, !tbaa !328
  call void @IVfprintf(%struct._IO_FILE* %fp, i32 %25, i32* %26) #6, !dbg !722
  br label %sw.epilog, !dbg !723

sw.bb15:                                          ; preds = %if.end
  call void @SubMtx_denseSubrowsInfo(%struct._SubMtx* %mtx, i32* %nrow, i32* %nent, i32** %firstlocs, i32** %sizes, double** %entries) #6, !dbg !724
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !163), !dbg !725
  %27 = load i32* %nrow, align 4, !dbg !725, !tbaa !389
  call void @llvm.dbg.value(metadata !{i32** %firstlocs}, i64 0, metadata !167), !dbg !725
  %28 = load i32** %firstlocs, align 8, !dbg !725, !tbaa !328
  call void @IVfprintf(%struct._IO_FILE* %fp, i32 %27, i32* %28) #6, !dbg !725
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !163), !dbg !726
  %29 = load i32* %nrow, align 4, !dbg !726, !tbaa !389
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !172), !dbg !726
  %30 = load i32** %sizes, align 8, !dbg !726, !tbaa !328
  call void @IVfprintf(%struct._IO_FILE* %fp, i32 %29, i32* %30) #6, !dbg !726
  br label %sw.epilog, !dbg !727

sw.bb16:                                          ; preds = %if.end
  call void @SubMtx_denseSubcolumnsInfo(%struct._SubMtx* %mtx, i32* %ncol, i32* %nent, i32** %firstlocs, i32** %sizes, double** %entries) #6, !dbg !728
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !161), !dbg !729
  %31 = load i32* %ncol, align 4, !dbg !729, !tbaa !389
  call void @llvm.dbg.value(metadata !{i32** %firstlocs}, i64 0, metadata !167), !dbg !729
  %32 = load i32** %firstlocs, align 8, !dbg !729, !tbaa !328
  call void @IVfprintf(%struct._IO_FILE* %fp, i32 %31, i32* %32) #6, !dbg !729
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !161), !dbg !730
  %33 = load i32* %ncol, align 4, !dbg !730, !tbaa !389
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !172), !dbg !730
  %34 = load i32** %sizes, align 8, !dbg !730, !tbaa !328
  call void @IVfprintf(%struct._IO_FILE* %fp, i32 %33, i32* %34) #6, !dbg !730
  br label %sw.epilog, !dbg !731

sw.bb17:                                          ; preds = %if.end
  call void @SubMtx_diagonalInfo(%struct._SubMtx* %mtx, i32* %nent, double** %entries) #6, !dbg !732
  br label %sw.epilog, !dbg !733

sw.bb18:                                          ; preds = %if.end, %if.end
  call void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %mtx, i32* %nrow, i32* %nent, i32** %pivotsizes, double** %entries) #6, !dbg !734
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !163), !dbg !735
  %35 = load i32* %nrow, align 4, !dbg !735, !tbaa !389
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes}, i64 0, metadata !169), !dbg !735
  %36 = load i32** %pivotsizes, align 8, !dbg !735, !tbaa !328
  call void @IVfprintf(%struct._IO_FILE* %fp, i32 %35, i32* %36) #6, !dbg !735
  br label %sw.epilog, !dbg !736

sw.epilog:                                        ; preds = %if.end, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb
  %37 = load i32* %type, align 4, !dbg !737, !tbaa !389
  switch i32 %37, label %if.end27 [
    i32 1, label %if.then21
    i32 2, label %if.then24
  ], !dbg !737

if.then21:                                        ; preds = %sw.epilog
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !162), !dbg !738
  %38 = load i32* %nent, align 4, !dbg !738, !tbaa !389
  call void @llvm.dbg.value(metadata !{double** %entries}, i64 0, metadata !158), !dbg !738
  %39 = load double** %entries, align 8, !dbg !738, !tbaa !328
  call void @DVfprintf(%struct._IO_FILE* %fp, i32 %38, double* %39) #6, !dbg !738
  br label %if.end27, !dbg !740

if.then24:                                        ; preds = %sw.epilog
  call void @llvm.dbg.value(metadata !{i32* %nent}, i64 0, metadata !162), !dbg !741
  %40 = load i32* %nent, align 4, !dbg !741, !tbaa !389
  %mul25 = shl nsw i32 %40, 1, !dbg !741
  call void @llvm.dbg.value(metadata !{double** %entries}, i64 0, metadata !158), !dbg !741
  %41 = load double** %entries, align 8, !dbg !741, !tbaa !328
  call void @DVfprintf(%struct._IO_FILE* %fp, i32 %mul25, double* %41) #6, !dbg !741
  br label %if.end27, !dbg !743

if.end27:                                         ; preds = %sw.epilog, %if.then24, %if.then21
  ret i32 1, !dbg !744
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
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtx}, i64 0, metadata !195), !dbg !745
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !196), !dbg !746
  call void @llvm.dbg.declare(metadata !{%struct._A2* %a2}, metadata !197), !dbg !747
  call void @llvm.dbg.declare(metadata !{double* %imag}, metadata !209), !dbg !748
  call void @llvm.dbg.declare(metadata !{double* %real}, metadata !210), !dbg !748
  call void @llvm.dbg.declare(metadata !{i32* %ierr}, metadata !211), !dbg !749
  call void @llvm.dbg.declare(metadata !{i32* %ncol}, metadata !214), !dbg !749
  call void @llvm.dbg.declare(metadata !{i32* %nrow}, metadata !215), !dbg !749
  call void @llvm.dbg.declare(metadata !{i32** %colind}, metadata !216), !dbg !750
  call void @llvm.dbg.declare(metadata !{i32** %rowind}, metadata !217), !dbg !750
  %cmp = icmp eq %struct._SubMtx* %mtx, null, !dbg !751
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !751
  %or.cond = or i1 %cmp, %cmp1, !dbg !751
  br i1 %or.cond, label %if.then, label %if.end, !dbg !751

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !752, !tbaa !328
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([60 x i8]* @.str44, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp) #6, !dbg !752
  call void @exit(i32 -1) #9, !dbg !754
  unreachable, !dbg !754

if.end:                                           ; preds = %entry
  %call2 = call i32 @SubMtx_writeStats(%struct._SubMtx* %mtx, %struct._IO_FILE* %fp) #8, !dbg !755
  call void @SubMtx_rowIndices(%struct._SubMtx* %mtx, i32* %nrow, i32** %rowind) #6, !dbg !756
  %1 = call i64 @fwrite(i8* getelementptr inbounds ([12 x i8]* @.str45, i64 0, i64 0), i64 11, i64 1, %struct._IO_FILE* %fp) #10, !dbg !757
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !215), !dbg !758
  %2 = load i32* %nrow, align 4, !dbg !758, !tbaa !389
  call void @llvm.dbg.value(metadata !{i32** %rowind}, i64 0, metadata !217), !dbg !758
  %3 = load i32** %rowind, align 8, !dbg !758, !tbaa !328
  %call4 = call i32 @IVfp80(%struct._IO_FILE* %fp, i32 %2, i32* %3, i32 80, i32* %ierr) #6, !dbg !758
  call void @SubMtx_columnIndices(%struct._SubMtx* %mtx, i32* %ncol, i32** %colind) #6, !dbg !759
  %4 = call i64 @fwrite(i8* getelementptr inbounds ([12 x i8]* @.str46, i64 0, i64 0), i64 11, i64 1, %struct._IO_FILE* %fp) #10, !dbg !760
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !214), !dbg !761
  %5 = load i32* %ncol, align 4, !dbg !761, !tbaa !389
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !216), !dbg !761
  %6 = load i32** %colind, align 8, !dbg !761, !tbaa !328
  %call6 = call i32 @IVfp80(%struct._IO_FILE* %fp, i32 %5, i32* %6, i32 80, i32* %ierr) #6, !dbg !761
  call void @A2_setDefaultFields(%struct._A2* %a2) #6, !dbg !762
  %type = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0, !dbg !763
  %7 = load i32* %type, align 4, !dbg !763, !tbaa !389
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !215), !dbg !763
  %8 = load i32* %nrow, align 4, !dbg !763, !tbaa !389
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !214), !dbg !763
  %9 = load i32* %ncol, align 4, !dbg !763, !tbaa !389
  call void @A2_init(%struct._A2* %a2, i32 %7, i32 %8, i32 %9, i32 1, i32 %8, double* null) #6, !dbg !763
  call void @A2_zero(%struct._A2* %a2) #6, !dbg !764
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !212), !dbg !765
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !215), !dbg !765
  %10 = load i32* %nrow, align 4, !dbg !765, !tbaa !389
  %cmp751 = icmp sgt i32 %10, 0, !dbg !765
  br i1 %cmp751, label %for.cond8.preheader.lr.ph, label %for.end23, !dbg !765

for.cond8.preheader.lr.ph:                        ; preds = %if.end
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !214), !dbg !767
  %.pre = load i32* %ncol, align 4, !dbg !767, !tbaa !389
  br label %for.cond8.preheader, !dbg !765

for.cond8.preheader:                              ; preds = %for.cond8.preheader.lr.ph, %for.inc21
  %11 = phi i32 [ %10, %for.cond8.preheader.lr.ph ], [ %18, %for.inc21 ]
  %12 = phi i32 [ %.pre, %for.cond8.preheader.lr.ph ], [ %19, %for.inc21 ], !dbg !767
  %irow.052 = phi i32 [ 0, %for.cond8.preheader.lr.ph ], [ %inc22, %for.inc21 ]
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !214), !dbg !767
  %cmp949 = icmp sgt i32 %12, 0, !dbg !767
  br i1 %cmp949, label %for.body10, label %for.inc21, !dbg !767

for.body10:                                       ; preds = %for.inc, %for.cond8.preheader
  %jcol.050 = phi i32 [ 0, %for.cond8.preheader ], [ %inc, %for.inc ]
  %13 = load i32* %type, align 4, !dbg !770, !tbaa !389
  switch i32 %13, label %for.inc [
    i32 1, label %if.then13
    i32 2, label %if.then17
  ], !dbg !770

if.then13:                                        ; preds = %for.body10
  %call14 = call i32 @SubMtx_realEntry(%struct._SubMtx* %mtx, i32 %irow.052, i32 %jcol.050, double* %real) #6, !dbg !772
  call void @llvm.dbg.value(metadata !{double* %real}, i64 0, metadata !210), !dbg !774
  %14 = load double* %real, align 8, !dbg !774, !tbaa !775
  call void @A2_setRealEntry(%struct._A2* %a2, i32 %irow.052, i32 %jcol.050, double %14) #6, !dbg !774
  br label %for.inc, !dbg !776

if.then17:                                        ; preds = %for.body10
  %call18 = call i32 @SubMtx_complexEntry(%struct._SubMtx* %mtx, i32 %irow.052, i32 %jcol.050, double* %real, double* %imag) #6, !dbg !777
  call void @llvm.dbg.value(metadata !{double* %real}, i64 0, metadata !210), !dbg !779
  %15 = load double* %real, align 8, !dbg !779, !tbaa !775
  call void @llvm.dbg.value(metadata !{double* %imag}, i64 0, metadata !209), !dbg !779
  %16 = load double* %imag, align 8, !dbg !779, !tbaa !775
  call void @A2_setComplexEntry(%struct._A2* %a2, i32 %irow.052, i32 %jcol.050, double %15, double %16) #6, !dbg !779
  br label %for.inc, !dbg !780

for.inc:                                          ; preds = %for.body10, %if.then13, %if.then17
  %inc = add nsw i32 %jcol.050, 1, !dbg !767
  call void @llvm.dbg.value(metadata !{i32 %inc}, i64 0, metadata !213), !dbg !767
  call void @llvm.dbg.value(metadata !{i32* %ncol}, i64 0, metadata !214), !dbg !767
  %17 = load i32* %ncol, align 4, !dbg !767, !tbaa !389
  %cmp9 = icmp slt i32 %inc, %17, !dbg !767
  br i1 %cmp9, label %for.body10, label %for.cond8.for.inc21_crit_edge, !dbg !767

for.cond8.for.inc21_crit_edge:                    ; preds = %for.inc
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !215), !dbg !765
  %.pre53 = load i32* %nrow, align 4, !dbg !765, !tbaa !389
  br label %for.inc21, !dbg !767

for.inc21:                                        ; preds = %for.cond8.preheader, %for.cond8.for.inc21_crit_edge
  %18 = phi i32 [ %.pre53, %for.cond8.for.inc21_crit_edge ], [ %11, %for.cond8.preheader ], !dbg !765
  %19 = phi i32 [ %17, %for.cond8.for.inc21_crit_edge ], [ %12, %for.cond8.preheader ]
  %inc22 = add nsw i32 %irow.052, 1, !dbg !765
  call void @llvm.dbg.value(metadata !{i32 %inc22}, i64 0, metadata !212), !dbg !765
  call void @llvm.dbg.value(metadata !{i32* %nrow}, i64 0, metadata !215), !dbg !765
  %cmp7 = icmp slt i32 %inc22, %18, !dbg !765
  br i1 %cmp7, label %for.cond8.preheader, label %for.end23, !dbg !765

for.end23:                                        ; preds = %for.inc21, %if.end
  call void @A2_writeForHumanEye(%struct._A2* %a2, %struct._IO_FILE* %fp) #6, !dbg !781
  call void @A2_clearData(%struct._A2* %a2) #6, !dbg !782
  ret i32 1, !dbg !783
}

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32) #5

; Function Attrs: optsize
declare void @IVfprintf(%struct._IO_FILE*, i32, i32*) #4

; Function Attrs: optsize
declare void @DVfprintf(%struct._IO_FILE*, i32, double*) #4

; Function Attrs: nounwind optsize
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #2

; Function Attrs: nounwind optsize uwtable
define i32 @SubMtx_writeStats(%struct._SubMtx* %mtx, %struct._IO_FILE* %fp) #0 {
entry:
  tail call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtx}, i64 0, metadata !220), !dbg !784
  tail call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !221), !dbg !785
  %cmp = icmp eq %struct._SubMtx* %mtx, null, !dbg !786
  %cmp1 = icmp eq %struct._IO_FILE* %fp, null, !dbg !786
  %or.cond = or i1 %cmp, %cmp1, !dbg !786
  br i1 %or.cond, label %if.then, label %if.end, !dbg !786

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !787, !tbaa !328
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([54 x i8]* @.str47, i64 0, i64 0), %struct._SubMtx* %mtx, %struct._IO_FILE* %fp) #6, !dbg !787
  tail call void @exit(i32 -1) #9, !dbg !789
  unreachable, !dbg !789

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0, !dbg !790
  %1 = load i32* %type, align 4, !dbg !790, !tbaa !389
  %rowid = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 2, !dbg !790
  %2 = load i32* %rowid, align 4, !dbg !790, !tbaa !389
  %colid = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 3, !dbg !790
  %3 = load i32* %colid, align 4, !dbg !790, !tbaa !389
  %nrow = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 4, !dbg !790
  %4 = load i32* %nrow, align 4, !dbg !790, !tbaa !389
  %ncol = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 5, !dbg !790
  %5 = load i32* %ncol, align 4, !dbg !790, !tbaa !389
  %nent = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 6, !dbg !790
  %6 = load i32* %nent, align 4, !dbg !790, !tbaa !389
  %call2 = tail call i32 @SubMtx_nbytesInWorkspace(%struct._SubMtx* %mtx) #6, !dbg !791
  %call3 = tail call i32 @SubMtx_nbytesInUse(%struct._SubMtx* %mtx) #6, !dbg !791
  %call4 = tail call i8* @SubMtx_workspace(%struct._SubMtx* %mtx) #6, !dbg !792
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([155 x i8]* @.str48, i64 0, i64 0), i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %call2, i32 %call3, i8* %call4) #6, !dbg !792
  %7 = load i32* %type, align 4, !dbg !793, !tbaa !389
  switch i32 %7, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb8
  ], !dbg !793

sw.bb:                                            ; preds = %if.end
  %8 = tail call i64 @fwrite(i8* getelementptr inbounds ([29 x i8]* @.str49, i64 0, i64 0), i64 28, i64 1, %struct._IO_FILE* %fp) #10, !dbg !794
  br label %sw.epilog, !dbg !796

sw.bb8:                                           ; preds = %if.end
  %9 = tail call i64 @fwrite(i8* getelementptr inbounds ([32 x i8]* @.str50, i64 0, i64 0), i64 31, i64 1, %struct._IO_FILE* %fp) #10, !dbg !797
  br label %sw.epilog, !dbg !798

sw.default:                                       ; preds = %if.end
  %10 = tail call i64 @fwrite(i8* getelementptr inbounds ([32 x i8]* @.str51, i64 0, i64 0), i64 31, i64 1, %struct._IO_FILE* %fp) #10, !dbg !799
  br label %sw.epilog, !dbg !800

sw.epilog:                                        ; preds = %sw.default, %sw.bb8, %sw.bb
  %mode = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 1, !dbg !801
  %11 = load i32* %mode, align 4, !dbg !801, !tbaa !389
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
  ], !dbg !801

sw.bb11:                                          ; preds = %sw.epilog
  %12 = tail call i64 @fwrite(i8* getelementptr inbounds ([39 x i8]* @.str52, i64 0, i64 0), i64 38, i64 1, %struct._IO_FILE* %fp) #10, !dbg !802
  br label %sw.epilog33, !dbg !804

sw.bb13:                                          ; preds = %sw.epilog
  %13 = tail call i64 @fwrite(i8* getelementptr inbounds ([42 x i8]* @.str53, i64 0, i64 0), i64 41, i64 1, %struct._IO_FILE* %fp) #10, !dbg !805
  br label %sw.epilog33, !dbg !806

sw.bb15:                                          ; preds = %sw.epilog
  %14 = tail call i64 @fwrite(i8* getelementptr inbounds ([40 x i8]* @.str54, i64 0, i64 0), i64 39, i64 1, %struct._IO_FILE* %fp) #10, !dbg !807
  br label %sw.epilog33, !dbg !808

sw.bb17:                                          ; preds = %sw.epilog
  %15 = tail call i64 @fwrite(i8* getelementptr inbounds ([43 x i8]* @.str55, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %fp) #10, !dbg !809
  br label %sw.epilog33, !dbg !810

sw.bb19:                                          ; preds = %sw.epilog
  %16 = tail call i64 @fwrite(i8* getelementptr inbounds ([43 x i8]* @.str56, i64 0, i64 0), i64 42, i64 1, %struct._IO_FILE* %fp) #10, !dbg !811
  br label %sw.epilog33, !dbg !812

sw.bb21:                                          ; preds = %sw.epilog
  %17 = tail call i64 @fwrite(i8* getelementptr inbounds ([49 x i8]* @.str57, i64 0, i64 0), i64 48, i64 1, %struct._IO_FILE* %fp) #10, !dbg !813
  br label %sw.epilog33, !dbg !814

sw.bb23:                                          ; preds = %sw.epilog
  %18 = tail call i64 @fwrite(i8* getelementptr inbounds ([52 x i8]* @.str58, i64 0, i64 0), i64 51, i64 1, %struct._IO_FILE* %fp) #10, !dbg !815
  br label %sw.epilog33, !dbg !816

sw.bb25:                                          ; preds = %sw.epilog
  %19 = tail call i64 @fwrite(i8* getelementptr inbounds ([32 x i8]* @.str59, i64 0, i64 0), i64 31, i64 1, %struct._IO_FILE* %fp) #10, !dbg !817
  br label %sw.epilog33, !dbg !818

sw.bb27:                                          ; preds = %sw.epilog
  %20 = tail call i64 @fwrite(i8* getelementptr inbounds ([48 x i8]* @.str60, i64 0, i64 0), i64 47, i64 1, %struct._IO_FILE* %fp) #10, !dbg !819
  br label %sw.epilog33, !dbg !820

sw.bb29:                                          ; preds = %sw.epilog
  %21 = tail call i64 @fwrite(i8* getelementptr inbounds ([48 x i8]* @.str61, i64 0, i64 0), i64 47, i64 1, %struct._IO_FILE* %fp) #10, !dbg !821
  br label %sw.epilog33, !dbg !822

sw.default31:                                     ; preds = %sw.epilog
  %22 = tail call i64 @fwrite(i8* getelementptr inbounds ([37 x i8]* @.str62, i64 0, i64 0), i64 36, i64 1, %struct._IO_FILE* %fp) #10, !dbg !823
  br label %sw.epilog33, !dbg !824

sw.epilog33:                                      ; preds = %sw.default31, %sw.bb29, %sw.bb27, %sw.bb25, %sw.bb23, %sw.bb21, %sw.bb19, %sw.bb17, %sw.bb15, %sw.bb13, %sw.bb11
  ret i32 1, !dbg !825
}

; Function Attrs: optsize
declare i32 @IVfp80(%struct._IO_FILE*, i32, i32*, i32, i32*) #4

; Function Attrs: optsize
declare void @A2_setDefaultFields(%struct._A2*) #4

; Function Attrs: optsize
declare void @A2_init(%struct._A2*, i32, i32, i32, i32, i32, double*) #4

; Function Attrs: optsize
declare void @A2_zero(%struct._A2*) #4

; Function Attrs: optsize
declare i32 @SubMtx_realEntry(%struct._SubMtx*, i32, i32, double*) #4

; Function Attrs: optsize
declare void @A2_setRealEntry(%struct._A2*, i32, i32, double) #4

; Function Attrs: optsize
declare i32 @SubMtx_complexEntry(%struct._SubMtx*, i32, i32, double*, double*) #4

; Function Attrs: optsize
declare void @A2_setComplexEntry(%struct._A2*, i32, i32, double, double) #4

; Function Attrs: optsize
declare void @A2_writeForHumanEye(%struct._A2*, %struct._IO_FILE*) #4

; Function Attrs: optsize
declare void @A2_clearData(%struct._A2*) #4

; Function Attrs: optsize
declare i32 @SubMtx_nbytesInWorkspace(%struct._SubMtx*) #4

; Function Attrs: optsize
declare i32 @SubMtx_nbytesInUse(%struct._SubMtx*) #4

; Function Attrs: optsize
declare i8* @SubMtx_workspace(%struct._SubMtx*) #4

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
  call void @llvm.dbg.value(metadata !{%struct._SubMtx* %mtx}, i64 0, metadata !226), !dbg !826
  call void @llvm.dbg.value(metadata !{i8* %mtxname}, i64 0, metadata !227), !dbg !827
  call void @llvm.dbg.value(metadata !{%struct._IO_FILE* %fp}, i64 0, metadata !228), !dbg !828
  call void @llvm.dbg.declare(metadata !{i32* %ncol}, metadata !229), !dbg !829
  call void @llvm.dbg.declare(metadata !{i32* %nrow}, metadata !230), !dbg !829
  call void @llvm.dbg.declare(metadata !{i32** %colind}, metadata !231), !dbg !830
  call void @llvm.dbg.declare(metadata !{i32** %rowind}, metadata !232), !dbg !830
  %cmp = icmp eq %struct._SubMtx* %mtx, null, !dbg !831
  %cmp1 = icmp eq i8* %mtxname, null, !dbg !831
  %or.cond = or i1 %cmp, %cmp1, !dbg !831
  %cmp3 = icmp eq %struct._IO_FILE* %fp, null, !dbg !831
  %or.cond872 = or i1 %or.cond, %cmp3, !dbg !831
  br i1 %or.cond872, label %if.then, label %if.end, !dbg !831

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE** @stderr, align 8, !dbg !832, !tbaa !328
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([61 x i8]* @.str63, i64 0, i64 0), %struct._SubMtx* %mtx, i8* %mtxname, %struct._IO_FILE* %fp) #6, !dbg !832
  call void @exit(i32 -1) #9, !dbg !834
  unreachable, !dbg !834

if.end:                                           ; preds = %entry
  call void @SubMtx_rowIndices(%struct._SubMtx* %mtx, i32* %nrow, i32** %rowind) #6, !dbg !835
  call void @SubMtx_columnIndices(%struct._SubMtx* %mtx, i32* %ncol, i32** %colind) #6, !dbg !836
  %mode = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 1, !dbg !837
  %1 = load i32* %mode, align 4, !dbg !837, !tbaa !389
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
  ], !dbg !837

if.then8:                                         ; preds = %if.end, %if.end
  call void @llvm.dbg.declare(metadata !{i32* %inc1}, metadata !235), !dbg !838
  call void @llvm.dbg.declare(metadata !{i32* %inc2}, metadata !236), !dbg !838
  call void @llvm.dbg.declare(metadata !{i32* %ncol9}, metadata !239), !dbg !838
  call void @llvm.dbg.declare(metadata !{i32* %nrow10}, metadata !240), !dbg !838
  call void @llvm.dbg.declare(metadata !{double** %entries}, metadata !241), !dbg !839
  call void @SubMtx_denseInfo(%struct._SubMtx* %mtx, i32* %nrow10, i32* %ncol9, i32* %inc1, i32* %inc2, double** %entries) #6, !dbg !840
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !237), !dbg !841
  call void @llvm.dbg.value(metadata !{i32* %nrow10}, i64 0, metadata !240), !dbg !841
  %2 = load i32* %nrow10, align 4, !dbg !841, !tbaa !389
  %cmp11875 = icmp sgt i32 %2, 0, !dbg !841
  br i1 %cmp11875, label %for.cond12.preheader.lr.ph, label %if.end647, !dbg !841

for.cond12.preheader.lr.ph:                       ; preds = %if.then8
  %type = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0, !dbg !843
  call void @llvm.dbg.value(metadata !{i32* %ncol9}, i64 0, metadata !239), !dbg !847
  %.pre = load i32* %ncol9, align 4, !dbg !847, !tbaa !389
  br label %for.cond12.preheader, !dbg !841

for.cond12.preheader:                             ; preds = %for.cond12.preheader.lr.ph, %for.inc44
  %3 = phi i32 [ %2, %for.cond12.preheader.lr.ph ], [ %25, %for.inc44 ]
  %4 = phi i32 [ %.pre, %for.cond12.preheader.lr.ph ], [ %26, %for.inc44 ], !dbg !847
  %indvars.iv940 = phi i64 [ 0, %for.cond12.preheader.lr.ph ], [ %indvars.iv.next941, %for.inc44 ]
  call void @llvm.dbg.value(metadata !{i32* %ncol9}, i64 0, metadata !239), !dbg !847
  %cmp13873 = icmp sgt i32 %4, 0, !dbg !847
  br i1 %cmp13873, label %for.body14, label %for.inc44, !dbg !847

for.body14:                                       ; preds = %for.inc, %for.cond12.preheader
  %indvars.iv = phi i64 [ 0, %for.cond12.preheader ], [ %indvars.iv.next, %for.inc ]
  call void @llvm.dbg.value(metadata !{i32* %inc1}, i64 0, metadata !235), !dbg !848
  %5 = load i32* %inc1, align 4, !dbg !848, !tbaa !389
  %6 = trunc i64 %indvars.iv940 to i32, !dbg !848
  %mul = mul nsw i32 %5, %6, !dbg !848
  call void @llvm.dbg.value(metadata !{i32* %inc2}, i64 0, metadata !236), !dbg !848
  %7 = load i32* %inc2, align 4, !dbg !848, !tbaa !389
  %8 = trunc i64 %indvars.iv to i32, !dbg !848
  %mul15 = mul nsw i32 %7, %8, !dbg !848
  %add = add nsw i32 %mul15, %mul, !dbg !848
  call void @llvm.dbg.value(metadata !{i32 %add}, i64 0, metadata !233), !dbg !848
  %9 = load i32* %type, align 4, !dbg !843, !tbaa !389
  switch i32 %9, label %for.inc [
    i32 1, label %if.then17
    i32 2, label %if.then27
  ], !dbg !843

if.then17:                                        ; preds = %for.body14
  call void @llvm.dbg.value(metadata !{i32** %rowind}, i64 0, metadata !232), !dbg !849
  %10 = load i32** %rowind, align 8, !dbg !849, !tbaa !328
  %arrayidx = getelementptr inbounds i32* %10, i64 %indvars.iv940, !dbg !849
  %11 = load i32* %arrayidx, align 4, !dbg !849, !tbaa !389
  %add18 = add nsw i32 %11, 1, !dbg !849
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !231), !dbg !849
  %12 = load i32** %colind, align 8, !dbg !849, !tbaa !328
  %arrayidx20 = getelementptr inbounds i32* %12, i64 %indvars.iv, !dbg !849
  %13 = load i32* %arrayidx20, align 4, !dbg !849, !tbaa !389
  %add21 = add nsw i32 %13, 1, !dbg !849
  %idxprom22 = sext i32 %add to i64, !dbg !849
  call void @llvm.dbg.value(metadata !{double** %entries}, i64 0, metadata !241), !dbg !849
  %14 = load double** %entries, align 8, !dbg !849, !tbaa !328
  %arrayidx23 = getelementptr inbounds double* %14, i64 %idxprom22, !dbg !849
  %15 = load double* %arrayidx23, align 8, !dbg !849, !tbaa !775
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([25 x i8]* @.str64, i64 0, i64 0), i8* %mtxname, i32 %add18, i32 %add21, double %15) #6, !dbg !849
  br label %for.inc, !dbg !851

if.then27:                                        ; preds = %for.body14
  call void @llvm.dbg.value(metadata !{i32** %rowind}, i64 0, metadata !232), !dbg !852
  %16 = load i32** %rowind, align 8, !dbg !852, !tbaa !328
  %arrayidx29 = getelementptr inbounds i32* %16, i64 %indvars.iv940, !dbg !852
  %17 = load i32* %arrayidx29, align 4, !dbg !852, !tbaa !389
  %add30 = add nsw i32 %17, 1, !dbg !852
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !231), !dbg !852
  %18 = load i32** %colind, align 8, !dbg !852, !tbaa !328
  %arrayidx32 = getelementptr inbounds i32* %18, i64 %indvars.iv, !dbg !852
  %19 = load i32* %arrayidx32, align 4, !dbg !852, !tbaa !389
  %add33 = add nsw i32 %19, 1, !dbg !852
  %mul34 = shl nsw i32 %add, 1, !dbg !852
  %idxprom35 = sext i32 %mul34 to i64, !dbg !852
  call void @llvm.dbg.value(metadata !{double** %entries}, i64 0, metadata !241), !dbg !852
  %20 = load double** %entries, align 8, !dbg !852, !tbaa !328
  %arrayidx36 = getelementptr inbounds double* %20, i64 %idxprom35, !dbg !852
  %21 = load double* %arrayidx36, align 8, !dbg !852, !tbaa !775
  %add38871 = or i32 %mul34, 1, !dbg !852
  %idxprom39 = sext i32 %add38871 to i64, !dbg !852
  %arrayidx40 = getelementptr inbounds double* %20, i64 %idxprom39, !dbg !852
  %22 = load double* %arrayidx40, align 8, !dbg !852, !tbaa !775
  %call41 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([35 x i8]* @.str65, i64 0, i64 0), i8* %mtxname, i32 %add30, i32 %add33, double %21, double %22) #6, !dbg !852
  br label %for.inc, !dbg !854

for.inc:                                          ; preds = %for.body14, %if.then17, %if.then27
  %indvars.iv.next = add i64 %indvars.iv, 1, !dbg !847
  call void @llvm.dbg.value(metadata !{i32* %ncol9}, i64 0, metadata !239), !dbg !847
  %23 = load i32* %ncol9, align 4, !dbg !847, !tbaa !389
  %24 = trunc i64 %indvars.iv.next to i32, !dbg !847
  %cmp13 = icmp slt i32 %24, %23, !dbg !847
  br i1 %cmp13, label %for.body14, label %for.cond12.for.inc44_crit_edge, !dbg !847

for.cond12.for.inc44_crit_edge:                   ; preds = %for.inc
  call void @llvm.dbg.value(metadata !{i32* %nrow10}, i64 0, metadata !240), !dbg !841
  %.pre1015 = load i32* %nrow10, align 4, !dbg !841, !tbaa !389
  br label %for.inc44, !dbg !847

for.inc44:                                        ; preds = %for.cond12.preheader, %for.cond12.for.inc44_crit_edge
  %25 = phi i32 [ %.pre1015, %for.cond12.for.inc44_crit_edge ], [ %3, %for.cond12.preheader ], !dbg !841
  %26 = phi i32 [ %23, %for.cond12.for.inc44_crit_edge ], [ %4, %for.cond12.preheader ]
  %indvars.iv.next941 = add i64 %indvars.iv940, 1, !dbg !841
  call void @llvm.dbg.value(metadata !{i32* %nrow10}, i64 0, metadata !240), !dbg !841
  %27 = trunc i64 %indvars.iv.next941 to i32, !dbg !841
  %cmp11 = icmp slt i32 %27, %25, !dbg !841
  br i1 %cmp11, label %for.cond12.preheader, label %if.end647, !dbg !841

if.then50:                                        ; preds = %if.end
  call void @llvm.dbg.declare(metadata !{double** %entries51}, metadata !242), !dbg !855
  call void @llvm.dbg.declare(metadata !{i32* %nent}, metadata !247), !dbg !856
  call void @llvm.dbg.declare(metadata !{i32* %nrow54}, metadata !248), !dbg !856
  call void @llvm.dbg.declare(metadata !{i32** %indices}, metadata !250), !dbg !856
  call void @llvm.dbg.declare(metadata !{i32** %sizes}, metadata !251), !dbg !856
  call void @SubMtx_sparseRowsInfo(%struct._SubMtx* %mtx, i32* %nrow54, i32* %nent, i32** %sizes, i32** %indices, double** %entries51) #6, !dbg !857
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !245), !dbg !858
  call void @llvm.dbg.value(metadata !{i32* %nrow54}, i64 0, metadata !248), !dbg !858
  %28 = load i32* %nrow54, align 4, !dbg !858, !tbaa !389
  %cmp56881 = icmp sgt i32 %28, 0, !dbg !858
  br i1 %cmp56881, label %for.body57.lr.ph, label %if.end647, !dbg !858

for.body57.lr.ph:                                 ; preds = %if.then50
  %type100 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0, !dbg !860
  br label %for.body57, !dbg !858

for.body57:                                       ; preds = %for.inc114, %for.body57.lr.ph
  %indvars.iv944 = phi i64 [ 0, %for.body57.lr.ph ], [ %indvars.iv.next945, %for.inc114 ]
  call void @llvm.dbg.value(metadata !{i32** %sizes}, i64 0, metadata !251), !dbg !862
  %29 = load i32** %sizes, align 8, !dbg !862, !tbaa !328
  %arrayidx59 = getelementptr inbounds i32* %29, i64 %indvars.iv944, !dbg !862
  %30 = load i32* %arrayidx59, align 4, !dbg !862, !tbaa !389
  call void @llvm.dbg.value(metadata !{i32 %30}, i64 0, metadata !249), !dbg !862
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !244), !dbg !863
  %cmp61878 = icmp sgt i32 %30, 0, !dbg !863
  br i1 %cmp61878, label %for.body62, label %for.end99, !dbg !863

for.body62:                                       ; preds = %for.inc97, %for.body57
  %indvars.iv942 = phi i64 [ 0, %for.body57 ], [ %indvars.iv.next943, %for.inc97 ]
  call void @llvm.dbg.value(metadata !{i32** %indices}, i64 0, metadata !250), !dbg !865
  %31 = load i32** %indices, align 8, !dbg !865, !tbaa !328
  %arrayidx64 = getelementptr inbounds i32* %31, i64 %indvars.iv942, !dbg !865
  %32 = load i32* %arrayidx64, align 4, !dbg !865, !tbaa !389
  call void @llvm.dbg.value(metadata !{i32 %32}, i64 0, metadata !246), !dbg !865
  %33 = load i32* %type100, align 4, !dbg !867, !tbaa !389
  switch i32 %33, label %for.inc97 [
    i32 1, label %if.then67
    i32 2, label %if.then80
  ], !dbg !867

if.then67:                                        ; preds = %for.body62
  call void @llvm.dbg.value(metadata !{i32** %rowind}, i64 0, metadata !232), !dbg !868
  %34 = load i32** %rowind, align 8, !dbg !868, !tbaa !328
  %arrayidx69 = getelementptr inbounds i32* %34, i64 %indvars.iv944, !dbg !868
  %35 = load i32* %arrayidx69, align 4, !dbg !868, !tbaa !389
  %add70 = add nsw i32 %35, 1, !dbg !868
  %idxprom71 = sext i32 %32 to i64, !dbg !868
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !231), !dbg !868
  %36 = load i32** %colind, align 8, !dbg !868, !tbaa !328
  %arrayidx72 = getelementptr inbounds i32* %36, i64 %idxprom71, !dbg !868
  %37 = load i32* %arrayidx72, align 4, !dbg !868, !tbaa !389
  %add73 = add nsw i32 %37, 1, !dbg !868
  call void @llvm.dbg.value(metadata !{double** %entries51}, i64 0, metadata !242), !dbg !868
  %38 = load double** %entries51, align 8, !dbg !868, !tbaa !328
  %arrayidx75 = getelementptr inbounds double* %38, i64 %indvars.iv942, !dbg !868
  %39 = load double* %arrayidx75, align 8, !dbg !868, !tbaa !775
  %call76 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([24 x i8]* @.str66, i64 0, i64 0), i8* %mtxname, i32 %add70, i32 %add73, double %39) #6, !dbg !868
  br label %for.inc97, !dbg !870

if.then80:                                        ; preds = %for.body62
  call void @llvm.dbg.value(metadata !{i32** %rowind}, i64 0, metadata !232), !dbg !871
  %40 = load i32** %rowind, align 8, !dbg !871, !tbaa !328
  %arrayidx82 = getelementptr inbounds i32* %40, i64 %indvars.iv944, !dbg !871
  %41 = load i32* %arrayidx82, align 4, !dbg !871, !tbaa !389
  %add83 = add nsw i32 %41, 1, !dbg !871
  %idxprom84 = sext i32 %32 to i64, !dbg !871
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !231), !dbg !871
  %42 = load i32** %colind, align 8, !dbg !871, !tbaa !328
  %arrayidx85 = getelementptr inbounds i32* %42, i64 %idxprom84, !dbg !871
  %43 = load i32* %arrayidx85, align 4, !dbg !871, !tbaa !389
  %add86 = add nsw i32 %43, 1, !dbg !871
  %44 = trunc i64 %indvars.iv942 to i32, !dbg !871
  %mul87 = shl nsw i32 %44, 1, !dbg !871
  %idxprom88 = sext i32 %mul87 to i64, !dbg !871
  call void @llvm.dbg.value(metadata !{double** %entries51}, i64 0, metadata !242), !dbg !871
  %45 = load double** %entries51, align 8, !dbg !871, !tbaa !328
  %arrayidx89 = getelementptr inbounds double* %45, i64 %idxprom88, !dbg !871
  %46 = load double* %arrayidx89, align 8, !dbg !871, !tbaa !775
  %add91870 = or i32 %mul87, 1, !dbg !871
  %idxprom92 = sext i32 %add91870 to i64, !dbg !871
  %arrayidx93 = getelementptr inbounds double* %45, i64 %idxprom92, !dbg !871
  %47 = load double* %arrayidx93, align 8, !dbg !871, !tbaa !775
  %call94 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([35 x i8]* @.str65, i64 0, i64 0), i8* %mtxname, i32 %add83, i32 %add86, double %46, double %47) #6, !dbg !871
  br label %for.inc97, !dbg !873

for.inc97:                                        ; preds = %for.body62, %if.then67, %if.then80
  %indvars.iv.next943 = add i64 %indvars.iv942, 1, !dbg !863
  %lftr.wideiv = trunc i64 %indvars.iv.next943 to i32, !dbg !863
  %exitcond = icmp eq i32 %lftr.wideiv, %30, !dbg !863
  br i1 %exitcond, label %for.end99, label %for.body62, !dbg !863

for.end99:                                        ; preds = %for.inc97, %for.body57
  call void @llvm.dbg.value(metadata !{i32** %indices}, i64 0, metadata !250), !dbg !874
  %48 = load i32** %indices, align 8, !dbg !874, !tbaa !328
  %idx.ext = sext i32 %30 to i64, !dbg !874
  %add.ptr = getelementptr inbounds i32* %48, i64 %idx.ext, !dbg !874
  call void @llvm.dbg.value(metadata !{i32* %add.ptr}, i64 0, metadata !250), !dbg !874
  store i32* %add.ptr, i32** %indices, align 8, !dbg !874, !tbaa !328
  %49 = load i32* %type100, align 4, !dbg !860, !tbaa !389
  switch i32 %49, label %for.inc114 [
    i32 1, label %if.then102
    i32 2, label %if.then108
  ], !dbg !860

if.then102:                                       ; preds = %for.end99
  call void @llvm.dbg.value(metadata !{double** %entries51}, i64 0, metadata !242), !dbg !875
  %50 = load double** %entries51, align 8, !dbg !875, !tbaa !328
  %add.ptr104 = getelementptr inbounds double* %50, i64 %idx.ext, !dbg !875
  call void @llvm.dbg.value(metadata !{double* %add.ptr104}, i64 0, metadata !242), !dbg !875
  store double* %add.ptr104, double** %entries51, align 8, !dbg !875, !tbaa !328
  br label %for.inc114, !dbg !877

if.then108:                                       ; preds = %for.end99
  %mul109 = shl nsw i32 %30, 1, !dbg !878
  call void @llvm.dbg.value(metadata !{double** %entries51}, i64 0, metadata !242), !dbg !878
  %51 = load double** %entries51, align 8, !dbg !878, !tbaa !328
  %idx.ext110 = sext i32 %mul109 to i64, !dbg !878
  %add.ptr111 = getelementptr inbounds double* %51, i64 %idx.ext110, !dbg !878
  call void @llvm.dbg.value(metadata !{double* %add.ptr111}, i64 0, metadata !242), !dbg !878
  store double* %add.ptr111, double** %entries51, align 8, !dbg !878, !tbaa !328
  br label %for.inc114, !dbg !880

for.inc114:                                       ; preds = %for.end99, %if.then102, %if.then108
  %indvars.iv.next945 = add i64 %indvars.iv944, 1, !dbg !858
  call void @llvm.dbg.value(metadata !{i32* %nrow54}, i64 0, metadata !248), !dbg !858
  %52 = load i32* %nrow54, align 4, !dbg !858, !tbaa !389
  %53 = trunc i64 %indvars.iv.next945 to i32, !dbg !858
  %cmp56 = icmp slt i32 %53, %52, !dbg !858
  br i1 %cmp56, label %for.body57, label %if.end647, !dbg !858

if.then120:                                       ; preds = %if.end
  call void @llvm.dbg.declare(metadata !{double** %entries121}, metadata !252), !dbg !881
  call void @llvm.dbg.declare(metadata !{i32* %nent125}, metadata !258), !dbg !882
  call void @llvm.dbg.declare(metadata !{i32* %ncol126}, metadata !259), !dbg !882
  call void @llvm.dbg.declare(metadata !{i32** %indices127}, metadata !260), !dbg !882
  call void @llvm.dbg.declare(metadata !{i32** %sizes128}, metadata !261), !dbg !882
  call void @SubMtx_sparseColumnsInfo(%struct._SubMtx* %mtx, i32* %ncol126, i32* %nent125, i32** %sizes128, i32** %indices127, double** %entries121) #6, !dbg !883
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !257), !dbg !884
  call void @llvm.dbg.value(metadata !{i32* %ncol126}, i64 0, metadata !259), !dbg !884
  %54 = load i32* %ncol126, align 4, !dbg !884, !tbaa !389
  %cmp130886 = icmp sgt i32 %54, 0, !dbg !884
  br i1 %cmp130886, label %for.body131.lr.ph, label %if.end647, !dbg !884

for.body131.lr.ph:                                ; preds = %if.then120
  %type176 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0, !dbg !886
  br label %for.body131, !dbg !884

for.body131:                                      ; preds = %for.inc190, %for.body131.lr.ph
  %indvars.iv950 = phi i64 [ 0, %for.body131.lr.ph ], [ %indvars.iv.next951, %for.inc190 ]
  call void @llvm.dbg.value(metadata !{i32** %sizes128}, i64 0, metadata !261), !dbg !888
  %55 = load i32** %sizes128, align 8, !dbg !888, !tbaa !328
  %arrayidx133 = getelementptr inbounds i32* %55, i64 %indvars.iv950, !dbg !888
  %56 = load i32* %arrayidx133, align 4, !dbg !888, !tbaa !389
  call void @llvm.dbg.value(metadata !{i32 %56}, i64 0, metadata !254), !dbg !888
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !255), !dbg !889
  %cmp135883 = icmp sgt i32 %56, 0, !dbg !889
  br i1 %cmp135883, label %for.body136, label %for.end173, !dbg !889

for.body136:                                      ; preds = %for.inc171, %for.body131
  %indvars.iv946 = phi i64 [ 0, %for.body131 ], [ %indvars.iv.next947, %for.inc171 ]
  call void @llvm.dbg.value(metadata !{i32** %indices127}, i64 0, metadata !260), !dbg !891
  %57 = load i32** %indices127, align 8, !dbg !891, !tbaa !328
  %arrayidx138 = getelementptr inbounds i32* %57, i64 %indvars.iv946, !dbg !891
  %58 = load i32* %arrayidx138, align 4, !dbg !891, !tbaa !389
  call void @llvm.dbg.value(metadata !{i32 %58}, i64 0, metadata !256), !dbg !891
  %59 = load i32* %type176, align 4, !dbg !893, !tbaa !389
  switch i32 %59, label %for.inc171 [
    i32 1, label %if.then141
    i32 2, label %if.then154
  ], !dbg !893

if.then141:                                       ; preds = %for.body136
  %idxprom142 = sext i32 %58 to i64, !dbg !894
  call void @llvm.dbg.value(metadata !{i32** %rowind}, i64 0, metadata !232), !dbg !894
  %60 = load i32** %rowind, align 8, !dbg !894, !tbaa !328
  %arrayidx143 = getelementptr inbounds i32* %60, i64 %idxprom142, !dbg !894
  %61 = load i32* %arrayidx143, align 4, !dbg !894, !tbaa !389
  %add144 = add nsw i32 %61, 1, !dbg !894
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !231), !dbg !894
  %62 = load i32** %colind, align 8, !dbg !894, !tbaa !328
  %arrayidx146 = getelementptr inbounds i32* %62, i64 %indvars.iv950, !dbg !894
  %63 = load i32* %arrayidx146, align 4, !dbg !894, !tbaa !389
  %add147 = add nsw i32 %63, 1, !dbg !894
  call void @llvm.dbg.value(metadata !{double** %entries121}, i64 0, metadata !252), !dbg !894
  %64 = load double** %entries121, align 8, !dbg !894, !tbaa !328
  %arrayidx149 = getelementptr inbounds double* %64, i64 %indvars.iv946, !dbg !894
  %65 = load double* %arrayidx149, align 8, !dbg !894, !tbaa !775
  %call150 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([24 x i8]* @.str66, i64 0, i64 0), i8* %mtxname, i32 %add144, i32 %add147, double %65) #6, !dbg !894
  br label %for.inc171, !dbg !896

if.then154:                                       ; preds = %for.body136
  %idxprom155 = sext i32 %58 to i64, !dbg !897
  call void @llvm.dbg.value(metadata !{i32** %rowind}, i64 0, metadata !232), !dbg !897
  %66 = load i32** %rowind, align 8, !dbg !897, !tbaa !328
  %arrayidx156 = getelementptr inbounds i32* %66, i64 %idxprom155, !dbg !897
  %67 = load i32* %arrayidx156, align 4, !dbg !897, !tbaa !389
  %add157 = add nsw i32 %67, 1, !dbg !897
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !231), !dbg !897
  %68 = load i32** %colind, align 8, !dbg !897, !tbaa !328
  %arrayidx159 = getelementptr inbounds i32* %68, i64 %indvars.iv950, !dbg !897
  %69 = load i32* %arrayidx159, align 4, !dbg !897, !tbaa !389
  %add160 = add nsw i32 %69, 1, !dbg !897
  %70 = trunc i64 %indvars.iv946 to i32, !dbg !897
  %mul161 = shl nsw i32 %70, 1, !dbg !897
  %idxprom162 = sext i32 %mul161 to i64, !dbg !897
  call void @llvm.dbg.value(metadata !{double** %entries121}, i64 0, metadata !252), !dbg !897
  %71 = load double** %entries121, align 8, !dbg !897, !tbaa !328
  %arrayidx163 = getelementptr inbounds double* %71, i64 %idxprom162, !dbg !897
  %72 = load double* %arrayidx163, align 8, !dbg !897, !tbaa !775
  %add165869 = or i32 %mul161, 1, !dbg !897
  %idxprom166 = sext i32 %add165869 to i64, !dbg !897
  %arrayidx167 = getelementptr inbounds double* %71, i64 %idxprom166, !dbg !897
  %73 = load double* %arrayidx167, align 8, !dbg !897, !tbaa !775
  %call168 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([35 x i8]* @.str65, i64 0, i64 0), i8* %mtxname, i32 %add157, i32 %add160, double %72, double %73) #6, !dbg !897
  br label %for.inc171, !dbg !899

for.inc171:                                       ; preds = %for.body136, %if.then141, %if.then154
  %indvars.iv.next947 = add i64 %indvars.iv946, 1, !dbg !889
  %lftr.wideiv948 = trunc i64 %indvars.iv.next947 to i32, !dbg !889
  %exitcond949 = icmp eq i32 %lftr.wideiv948, %56, !dbg !889
  br i1 %exitcond949, label %for.end173, label %for.body136, !dbg !889

for.end173:                                       ; preds = %for.inc171, %for.body131
  call void @llvm.dbg.value(metadata !{i32** %indices127}, i64 0, metadata !260), !dbg !900
  %74 = load i32** %indices127, align 8, !dbg !900, !tbaa !328
  %idx.ext174 = sext i32 %56 to i64, !dbg !900
  %add.ptr175 = getelementptr inbounds i32* %74, i64 %idx.ext174, !dbg !900
  call void @llvm.dbg.value(metadata !{i32* %add.ptr175}, i64 0, metadata !260), !dbg !900
  store i32* %add.ptr175, i32** %indices127, align 8, !dbg !900, !tbaa !328
  %75 = load i32* %type176, align 4, !dbg !886, !tbaa !389
  switch i32 %75, label %for.inc190 [
    i32 1, label %if.then178
    i32 2, label %if.then184
  ], !dbg !886

if.then178:                                       ; preds = %for.end173
  call void @llvm.dbg.value(metadata !{double** %entries121}, i64 0, metadata !252), !dbg !901
  %76 = load double** %entries121, align 8, !dbg !901, !tbaa !328
  %add.ptr180 = getelementptr inbounds double* %76, i64 %idx.ext174, !dbg !901
  call void @llvm.dbg.value(metadata !{double* %add.ptr180}, i64 0, metadata !252), !dbg !901
  store double* %add.ptr180, double** %entries121, align 8, !dbg !901, !tbaa !328
  br label %for.inc190, !dbg !903

if.then184:                                       ; preds = %for.end173
  %mul185 = shl nsw i32 %56, 1, !dbg !904
  call void @llvm.dbg.value(metadata !{double** %entries121}, i64 0, metadata !252), !dbg !904
  %77 = load double** %entries121, align 8, !dbg !904, !tbaa !328
  %idx.ext186 = sext i32 %mul185 to i64, !dbg !904
  %add.ptr187 = getelementptr inbounds double* %77, i64 %idx.ext186, !dbg !904
  call void @llvm.dbg.value(metadata !{double* %add.ptr187}, i64 0, metadata !252), !dbg !904
  store double* %add.ptr187, double** %entries121, align 8, !dbg !904, !tbaa !328
  br label %for.inc190, !dbg !906

for.inc190:                                       ; preds = %for.end173, %if.then178, %if.then184
  %indvars.iv.next951 = add i64 %indvars.iv950, 1, !dbg !884
  call void @llvm.dbg.value(metadata !{i32* %ncol126}, i64 0, metadata !259), !dbg !884
  %78 = load i32* %ncol126, align 4, !dbg !884, !tbaa !389
  %79 = trunc i64 %indvars.iv.next951 to i32, !dbg !884
  %cmp130 = icmp slt i32 %79, %78, !dbg !884
  br i1 %cmp130, label %for.body131, label %if.end647, !dbg !884

if.then196:                                       ; preds = %if.end
  call void @llvm.dbg.declare(metadata !{double** %entries197}, metadata !262), !dbg !907
  call void @llvm.dbg.declare(metadata !{i32* %nent201}, metadata !267), !dbg !908
  call void @llvm.dbg.declare(metadata !{i32** %colids}, metadata !268), !dbg !908
  call void @llvm.dbg.declare(metadata !{i32** %rowids}, metadata !269), !dbg !908
  call void @SubMtx_sparseTriplesInfo(%struct._SubMtx* %mtx, i32* %nent201, i32** %rowids, i32** %colids, double** %entries197) #6, !dbg !909
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !264), !dbg !910
  call void @llvm.dbg.value(metadata !{i32* %nent201}, i64 0, metadata !267), !dbg !910
  %80 = load i32* %nent201, align 4, !dbg !910, !tbaa !389
  %cmp203889 = icmp sgt i32 %80, 0, !dbg !910
  br i1 %cmp203889, label %for.body204.lr.ph, label %if.end647, !dbg !910

for.body204.lr.ph:                                ; preds = %if.then196
  %type209 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0, !dbg !912
  br label %for.body204, !dbg !910

for.body204:                                      ; preds = %for.inc241, %for.body204.lr.ph
  %indvars.iv952 = phi i64 [ 0, %for.body204.lr.ph ], [ %indvars.iv.next953, %for.inc241 ]
  call void @llvm.dbg.value(metadata !{i32** %rowids}, i64 0, metadata !269), !dbg !914
  %81 = load i32** %rowids, align 8, !dbg !914, !tbaa !328
  %arrayidx206 = getelementptr inbounds i32* %81, i64 %indvars.iv952, !dbg !914
  %82 = load i32* %arrayidx206, align 4, !dbg !914, !tbaa !389
  call void @llvm.dbg.value(metadata !{i32 %82}, i64 0, metadata !265), !dbg !914
  call void @llvm.dbg.value(metadata !{i32** %colids}, i64 0, metadata !268), !dbg !915
  %83 = load i32** %colids, align 8, !dbg !915, !tbaa !328
  %arrayidx208 = getelementptr inbounds i32* %83, i64 %indvars.iv952, !dbg !915
  %84 = load i32* %arrayidx208, align 4, !dbg !915, !tbaa !389
  call void @llvm.dbg.value(metadata !{i32 %84}, i64 0, metadata !266), !dbg !915
  %85 = load i32* %type209, align 4, !dbg !912, !tbaa !389
  switch i32 %85, label %for.inc241 [
    i32 1, label %if.then211
    i32 2, label %if.then224
  ], !dbg !912

if.then211:                                       ; preds = %for.body204
  %idxprom212 = sext i32 %82 to i64, !dbg !916
  call void @llvm.dbg.value(metadata !{i32** %rowind}, i64 0, metadata !232), !dbg !916
  %86 = load i32** %rowind, align 8, !dbg !916, !tbaa !328
  %arrayidx213 = getelementptr inbounds i32* %86, i64 %idxprom212, !dbg !916
  %87 = load i32* %arrayidx213, align 4, !dbg !916, !tbaa !389
  %add214 = add nsw i32 %87, 1, !dbg !916
  %idxprom215 = sext i32 %84 to i64, !dbg !916
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !231), !dbg !916
  %88 = load i32** %colind, align 8, !dbg !916, !tbaa !328
  %arrayidx216 = getelementptr inbounds i32* %88, i64 %idxprom215, !dbg !916
  %89 = load i32* %arrayidx216, align 4, !dbg !916, !tbaa !389
  %add217 = add nsw i32 %89, 1, !dbg !916
  call void @llvm.dbg.value(metadata !{double** %entries197}, i64 0, metadata !262), !dbg !916
  %90 = load double** %entries197, align 8, !dbg !916, !tbaa !328
  %arrayidx219 = getelementptr inbounds double* %90, i64 %indvars.iv952, !dbg !916
  %91 = load double* %arrayidx219, align 8, !dbg !916, !tbaa !775
  %call220 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([24 x i8]* @.str66, i64 0, i64 0), i8* %mtxname, i32 %add214, i32 %add217, double %91) #6, !dbg !916
  br label %for.inc241, !dbg !918

if.then224:                                       ; preds = %for.body204
  %idxprom225 = sext i32 %82 to i64, !dbg !919
  call void @llvm.dbg.value(metadata !{i32** %rowind}, i64 0, metadata !232), !dbg !919
  %92 = load i32** %rowind, align 8, !dbg !919, !tbaa !328
  %arrayidx226 = getelementptr inbounds i32* %92, i64 %idxprom225, !dbg !919
  %93 = load i32* %arrayidx226, align 4, !dbg !919, !tbaa !389
  %add227 = add nsw i32 %93, 1, !dbg !919
  %idxprom228 = sext i32 %84 to i64, !dbg !919
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !231), !dbg !919
  %94 = load i32** %colind, align 8, !dbg !919, !tbaa !328
  %arrayidx229 = getelementptr inbounds i32* %94, i64 %idxprom228, !dbg !919
  %95 = load i32* %arrayidx229, align 4, !dbg !919, !tbaa !389
  %add230 = add nsw i32 %95, 1, !dbg !919
  %96 = trunc i64 %indvars.iv952 to i32, !dbg !919
  %mul231 = shl nsw i32 %96, 1, !dbg !919
  %idxprom232 = sext i32 %mul231 to i64, !dbg !919
  call void @llvm.dbg.value(metadata !{double** %entries197}, i64 0, metadata !262), !dbg !919
  %97 = load double** %entries197, align 8, !dbg !919, !tbaa !328
  %arrayidx233 = getelementptr inbounds double* %97, i64 %idxprom232, !dbg !919
  %98 = load double* %arrayidx233, align 8, !dbg !919, !tbaa !775
  %add235868 = or i32 %mul231, 1, !dbg !919
  %idxprom236 = sext i32 %add235868 to i64, !dbg !919
  %arrayidx237 = getelementptr inbounds double* %97, i64 %idxprom236, !dbg !919
  %99 = load double* %arrayidx237, align 8, !dbg !919, !tbaa !775
  %call238 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([35 x i8]* @.str65, i64 0, i64 0), i8* %mtxname, i32 %add227, i32 %add230, double %98, double %99) #6, !dbg !919
  br label %for.inc241, !dbg !921

for.inc241:                                       ; preds = %for.body204, %if.then211, %if.then224
  %indvars.iv.next953 = add i64 %indvars.iv952, 1, !dbg !910
  call void @llvm.dbg.value(metadata !{i32* %nent201}, i64 0, metadata !267), !dbg !910
  %100 = load i32* %nent201, align 4, !dbg !910, !tbaa !389
  %101 = trunc i64 %indvars.iv.next953 to i32, !dbg !910
  %cmp203 = icmp slt i32 %101, %100, !dbg !910
  br i1 %cmp203, label %for.body204, label %if.end647, !dbg !910

if.then247:                                       ; preds = %if.end
  call void @llvm.dbg.declare(metadata !{double** %entries248}, metadata !270), !dbg !922
  call void @llvm.dbg.declare(metadata !{i32* %nent252}, metadata !277), !dbg !923
  call void @llvm.dbg.declare(metadata !{i32* %nrow253}, metadata !278), !dbg !923
  call void @llvm.dbg.declare(metadata !{i32** %firstlocs}, metadata !279), !dbg !924
  call void @llvm.dbg.declare(metadata !{i32** %sizes254}, metadata !280), !dbg !924
  call void @SubMtx_denseSubrowsInfo(%struct._SubMtx* %mtx, i32* %nrow253, i32* %nent252, i32** %firstlocs, i32** %sizes254, double** %entries248) #6, !dbg !925
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !274), !dbg !926
  call void @llvm.dbg.value(metadata !{i32* %nrow253}, i64 0, metadata !278), !dbg !926
  %102 = load i32* %nrow253, align 4, !dbg !926, !tbaa !389
  %cmp256898 = icmp sgt i32 %102, 0, !dbg !926
  br i1 %cmp256898, label %for.body257.lr.ph, label %if.end647, !dbg !926

for.body257.lr.ph:                                ; preds = %if.then247
  %type270 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0, !dbg !928
  br label %for.body257, !dbg !926

for.body257:                                      ; preds = %for.inc325, %for.body257.lr.ph
  %indvars.iv960 = phi i64 [ 0, %for.body257.lr.ph ], [ %indvars.iv.next961, %for.inc325 ]
  call void @llvm.dbg.value(metadata !{i32** %sizes254}, i64 0, metadata !280), !dbg !933
  %103 = load i32** %sizes254, align 8, !dbg !933, !tbaa !328
  %arrayidx259 = getelementptr inbounds i32* %103, i64 %indvars.iv960, !dbg !933
  %104 = load i32* %arrayidx259, align 4, !dbg !933, !tbaa !389
  %cmp260 = icmp sgt i32 %104, 0, !dbg !933
  br i1 %cmp260, label %if.then261, label %for.inc325, !dbg !933

if.then261:                                       ; preds = %for.body257
  call void @llvm.dbg.value(metadata !{i32** %firstlocs}, i64 0, metadata !279), !dbg !934
  %105 = load i32** %firstlocs, align 8, !dbg !934, !tbaa !328
  %arrayidx263 = getelementptr inbounds i32* %105, i64 %indvars.iv960, !dbg !934
  %106 = load i32* %arrayidx263, align 4, !dbg !934, !tbaa !389
  call void @llvm.dbg.value(metadata !{i32 %106}, i64 0, metadata !272), !dbg !934
  %add266 = add i32 %104, -1, !dbg !935
  %sub = add i32 %add266, %106, !dbg !935
  call void @llvm.dbg.value(metadata !{i32 %sub}, i64 0, metadata !276), !dbg !935
  call void @llvm.dbg.value(metadata !{i32 %106}, i64 0, metadata !275), !dbg !936
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !273), !dbg !936
  %cmp268891 = icmp sgt i32 %106, %sub, !dbg !936
  %107 = load i32* %type270, align 4, !dbg !928, !tbaa !389
  %cmp271892 = icmp eq i32 %107, 1, !dbg !928
  br i1 %cmp268891, label %for.end305, label %for.body269.lr.ph, !dbg !936

for.body269.lr.ph:                                ; preds = %if.then261
  %108 = sext i32 %106 to i64
  br label %for.body269, !dbg !936

for.body269:                                      ; preds = %for.inc302, %for.body269.lr.ph
  %indvars.iv958 = phi i64 [ %indvars.iv.next959, %for.inc302 ], [ 0, %for.body269.lr.ph ], !dbg !936
  %indvars.iv956 = phi i64 [ %indvars.iv.next957, %for.inc302 ], [ %108, %for.body269.lr.ph ]
  %cmp271895 = phi i1 [ %cmp271, %for.inc302 ], [ %cmp271892, %for.body269.lr.ph ]
  %109 = phi i32 [ %125, %for.inc302 ], [ %107, %for.body269.lr.ph ]
  br i1 %cmp271895, label %if.then272, label %if.else282, !dbg !928

if.then272:                                       ; preds = %for.body269
  call void @llvm.dbg.value(metadata !{i32** %rowind}, i64 0, metadata !232), !dbg !937
  %110 = load i32** %rowind, align 8, !dbg !937, !tbaa !328
  %arrayidx274 = getelementptr inbounds i32* %110, i64 %indvars.iv960, !dbg !937
  %111 = load i32* %arrayidx274, align 4, !dbg !937, !tbaa !389
  %add275 = add nsw i32 %111, 1, !dbg !937
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !231), !dbg !937
  %112 = load i32** %colind, align 8, !dbg !937, !tbaa !328
  %arrayidx277 = getelementptr inbounds i32* %112, i64 %indvars.iv956, !dbg !937
  %113 = load i32* %arrayidx277, align 4, !dbg !937, !tbaa !389
  %add278 = add nsw i32 %113, 1, !dbg !937
  call void @llvm.dbg.value(metadata !{double** %entries248}, i64 0, metadata !270), !dbg !937
  %114 = load double** %entries248, align 8, !dbg !937, !tbaa !328
  %arrayidx280 = getelementptr inbounds double* %114, i64 %indvars.iv958, !dbg !937
  %115 = load double* %arrayidx280, align 8, !dbg !937, !tbaa !775
  %call281 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([24 x i8]* @.str66, i64 0, i64 0), i8* %mtxname, i32 %add275, i32 %add278, double %115) #6, !dbg !937
  br label %for.inc302, !dbg !939

if.else282:                                       ; preds = %for.body269
  %cmp284 = icmp eq i32 %109, 2, !dbg !940
  br i1 %cmp284, label %if.then285, label %for.inc302, !dbg !940

if.then285:                                       ; preds = %if.else282
  call void @llvm.dbg.value(metadata !{i32** %rowind}, i64 0, metadata !232), !dbg !941
  %116 = load i32** %rowind, align 8, !dbg !941, !tbaa !328
  %arrayidx287 = getelementptr inbounds i32* %116, i64 %indvars.iv960, !dbg !941
  %117 = load i32* %arrayidx287, align 4, !dbg !941, !tbaa !389
  %add288 = add nsw i32 %117, 1, !dbg !941
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !231), !dbg !941
  %118 = load i32** %colind, align 8, !dbg !941, !tbaa !328
  %arrayidx290 = getelementptr inbounds i32* %118, i64 %indvars.iv956, !dbg !941
  %119 = load i32* %arrayidx290, align 4, !dbg !941, !tbaa !389
  %add291 = add nsw i32 %119, 1, !dbg !941
  %120 = trunc i64 %indvars.iv958 to i32, !dbg !941
  %mul292 = shl nsw i32 %120, 1, !dbg !941
  %idxprom293 = sext i32 %mul292 to i64, !dbg !941
  call void @llvm.dbg.value(metadata !{double** %entries248}, i64 0, metadata !270), !dbg !941
  %121 = load double** %entries248, align 8, !dbg !941, !tbaa !328
  %arrayidx294 = getelementptr inbounds double* %121, i64 %idxprom293, !dbg !941
  %122 = load double* %arrayidx294, align 8, !dbg !941, !tbaa !775
  %add296867 = or i32 %mul292, 1, !dbg !941
  %idxprom297 = sext i32 %add296867 to i64, !dbg !941
  %arrayidx298 = getelementptr inbounds double* %121, i64 %idxprom297, !dbg !941
  %123 = load double* %arrayidx298, align 8, !dbg !941, !tbaa !775
  %call299 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([35 x i8]* @.str65, i64 0, i64 0), i8* %mtxname, i32 %add288, i32 %add291, double %122, double %123) #6, !dbg !941
  br label %for.inc302, !dbg !943

for.inc302:                                       ; preds = %if.then272, %if.then285, %if.else282
  %indvars.iv.next957 = add i64 %indvars.iv956, 1, !dbg !936
  %indvars.iv.next959 = add i64 %indvars.iv958, 1, !dbg !936
  %124 = trunc i64 %indvars.iv956 to i32, !dbg !936
  %cmp268 = icmp slt i32 %124, %sub, !dbg !936
  %125 = load i32* %type270, align 4, !dbg !928, !tbaa !389
  %cmp271 = icmp eq i32 %125, 1, !dbg !928
  br i1 %cmp268, label %for.body269, label %for.end305, !dbg !936

for.end305:                                       ; preds = %for.inc302, %if.then261
  %cmp271.lcssa = phi i1 [ %cmp271892, %if.then261 ], [ %cmp271, %for.inc302 ]
  %.lcssa = phi i32 [ %107, %if.then261 ], [ %125, %for.inc302 ]
  br i1 %cmp271.lcssa, label %if.then308, label %if.else313, !dbg !944

if.then308:                                       ; preds = %for.end305
  call void @llvm.dbg.value(metadata !{i32** %sizes254}, i64 0, metadata !280), !dbg !945
  %126 = load i32** %sizes254, align 8, !dbg !945, !tbaa !328
  %arrayidx310 = getelementptr inbounds i32* %126, i64 %indvars.iv960, !dbg !945
  %127 = load i32* %arrayidx310, align 4, !dbg !945, !tbaa !389
  call void @llvm.dbg.value(metadata !{double** %entries248}, i64 0, metadata !270), !dbg !945
  %128 = load double** %entries248, align 8, !dbg !945, !tbaa !328
  %idx.ext311 = sext i32 %127 to i64, !dbg !945
  %add.ptr312 = getelementptr inbounds double* %128, i64 %idx.ext311, !dbg !945
  call void @llvm.dbg.value(metadata !{double* %add.ptr312}, i64 0, metadata !270), !dbg !945
  store double* %add.ptr312, double** %entries248, align 8, !dbg !945, !tbaa !328
  br label %for.inc325, !dbg !947

if.else313:                                       ; preds = %for.end305
  %cmp315 = icmp eq i32 %.lcssa, 2, !dbg !948
  br i1 %cmp315, label %if.then316, label %for.inc325, !dbg !948

if.then316:                                       ; preds = %if.else313
  call void @llvm.dbg.value(metadata !{i32** %sizes254}, i64 0, metadata !280), !dbg !949
  %129 = load i32** %sizes254, align 8, !dbg !949, !tbaa !328
  %arrayidx318 = getelementptr inbounds i32* %129, i64 %indvars.iv960, !dbg !949
  %130 = load i32* %arrayidx318, align 4, !dbg !949, !tbaa !389
  %mul319 = shl nsw i32 %130, 1, !dbg !949
  call void @llvm.dbg.value(metadata !{double** %entries248}, i64 0, metadata !270), !dbg !949
  %131 = load double** %entries248, align 8, !dbg !949, !tbaa !328
  %idx.ext320 = sext i32 %mul319 to i64, !dbg !949
  %add.ptr321 = getelementptr inbounds double* %131, i64 %idx.ext320, !dbg !949
  call void @llvm.dbg.value(metadata !{double* %add.ptr321}, i64 0, metadata !270), !dbg !949
  store double* %add.ptr321, double** %entries248, align 8, !dbg !949, !tbaa !328
  br label %for.inc325, !dbg !951

for.inc325:                                       ; preds = %if.else313, %for.body257, %if.then316, %if.then308
  %indvars.iv.next961 = add i64 %indvars.iv960, 1, !dbg !926
  call void @llvm.dbg.value(metadata !{i32* %nrow253}, i64 0, metadata !278), !dbg !926
  %132 = load i32* %nrow253, align 4, !dbg !926, !tbaa !389
  %133 = trunc i64 %indvars.iv.next961 to i32, !dbg !926
  %cmp256 = icmp slt i32 %133, %132, !dbg !926
  br i1 %cmp256, label %for.body257, label %if.end647, !dbg !926

if.then331:                                       ; preds = %if.end
  call void @llvm.dbg.declare(metadata !{double** %entries332}, metadata !281), !dbg !952
  call void @llvm.dbg.declare(metadata !{i32* %ncol338}, metadata !288), !dbg !953
  call void @llvm.dbg.declare(metadata !{i32* %nent339}, metadata !289), !dbg !953
  call void @llvm.dbg.declare(metadata !{i32** %firstlocs340}, metadata !290), !dbg !954
  call void @llvm.dbg.declare(metadata !{i32** %sizes341}, metadata !291), !dbg !954
  call void @SubMtx_denseSubcolumnsInfo(%struct._SubMtx* %mtx, i32* %ncol338, i32* %nent339, i32** %firstlocs340, i32** %sizes341, double** %entries332) #6, !dbg !955
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !286), !dbg !956
  call void @llvm.dbg.value(metadata !{i32* %ncol338}, i64 0, metadata !288), !dbg !956
  %134 = load i32* %ncol338, align 4, !dbg !956, !tbaa !389
  %cmp343909 = icmp sgt i32 %134, 0, !dbg !956
  br i1 %cmp343909, label %for.body344.lr.ph, label %if.end647, !dbg !956

for.body344.lr.ph:                                ; preds = %if.then331
  %type358 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0, !dbg !958
  br label %for.body344, !dbg !956

for.body344:                                      ; preds = %for.inc413, %for.body344.lr.ph
  %indvars.iv968 = phi i64 [ 0, %for.body344.lr.ph ], [ %indvars.iv.next969, %for.inc413 ]
  call void @llvm.dbg.value(metadata !{i32** %sizes341}, i64 0, metadata !291), !dbg !963
  %135 = load i32** %sizes341, align 8, !dbg !963, !tbaa !328
  %arrayidx346 = getelementptr inbounds i32* %135, i64 %indvars.iv968, !dbg !963
  %136 = load i32* %arrayidx346, align 4, !dbg !963, !tbaa !389
  %cmp347 = icmp sgt i32 %136, 0, !dbg !963
  br i1 %cmp347, label %if.then348, label %for.inc413, !dbg !963

if.then348:                                       ; preds = %for.body344
  call void @llvm.dbg.value(metadata !{i32** %firstlocs340}, i64 0, metadata !290), !dbg !964
  %137 = load i32** %firstlocs340, align 8, !dbg !964, !tbaa !328
  %arrayidx350 = getelementptr inbounds i32* %137, i64 %indvars.iv968, !dbg !964
  %138 = load i32* %arrayidx350, align 4, !dbg !964, !tbaa !389
  call void @llvm.dbg.value(metadata !{i32 %138}, i64 0, metadata !283), !dbg !964
  %add353 = add i32 %136, -1, !dbg !965
  %sub354 = add i32 %add353, %138, !dbg !965
  call void @llvm.dbg.value(metadata !{i32 %sub354}, i64 0, metadata !287), !dbg !965
  call void @llvm.dbg.value(metadata !{i32 %138}, i64 0, metadata !285), !dbg !966
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !284), !dbg !966
  %cmp356901 = icmp sgt i32 %138, %sub354, !dbg !966
  %139 = load i32* %type358, align 4, !dbg !958, !tbaa !389
  %cmp359902 = icmp eq i32 %139, 1, !dbg !958
  br i1 %cmp356901, label %for.end393, label %for.body357.lr.ph, !dbg !966

for.body357.lr.ph:                                ; preds = %if.then348
  %140 = sext i32 %138 to i64
  br label %for.body357, !dbg !966

for.body357:                                      ; preds = %for.inc390, %for.body357.lr.ph
  %indvars.iv966 = phi i64 [ %indvars.iv.next967, %for.inc390 ], [ 0, %for.body357.lr.ph ], !dbg !966
  %indvars.iv964 = phi i64 [ %indvars.iv.next965, %for.inc390 ], [ %140, %for.body357.lr.ph ]
  %cmp359905 = phi i1 [ %cmp359, %for.inc390 ], [ %cmp359902, %for.body357.lr.ph ]
  %141 = phi i32 [ %157, %for.inc390 ], [ %139, %for.body357.lr.ph ]
  br i1 %cmp359905, label %if.then360, label %if.else370, !dbg !958

if.then360:                                       ; preds = %for.body357
  call void @llvm.dbg.value(metadata !{i32** %rowind}, i64 0, metadata !232), !dbg !967
  %142 = load i32** %rowind, align 8, !dbg !967, !tbaa !328
  %arrayidx362 = getelementptr inbounds i32* %142, i64 %indvars.iv964, !dbg !967
  %143 = load i32* %arrayidx362, align 4, !dbg !967, !tbaa !389
  %add363 = add nsw i32 %143, 1, !dbg !967
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !231), !dbg !967
  %144 = load i32** %colind, align 8, !dbg !967, !tbaa !328
  %arrayidx365 = getelementptr inbounds i32* %144, i64 %indvars.iv968, !dbg !967
  %145 = load i32* %arrayidx365, align 4, !dbg !967, !tbaa !389
  %add366 = add nsw i32 %145, 1, !dbg !967
  call void @llvm.dbg.value(metadata !{double** %entries332}, i64 0, metadata !281), !dbg !967
  %146 = load double** %entries332, align 8, !dbg !967, !tbaa !328
  %arrayidx368 = getelementptr inbounds double* %146, i64 %indvars.iv966, !dbg !967
  %147 = load double* %arrayidx368, align 8, !dbg !967, !tbaa !775
  %call369 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([24 x i8]* @.str66, i64 0, i64 0), i8* %mtxname, i32 %add363, i32 %add366, double %147) #6, !dbg !967
  br label %for.inc390, !dbg !969

if.else370:                                       ; preds = %for.body357
  %cmp372 = icmp eq i32 %141, 2, !dbg !970
  br i1 %cmp372, label %if.then373, label %for.inc390, !dbg !970

if.then373:                                       ; preds = %if.else370
  call void @llvm.dbg.value(metadata !{i32** %rowind}, i64 0, metadata !232), !dbg !971
  %148 = load i32** %rowind, align 8, !dbg !971, !tbaa !328
  %arrayidx375 = getelementptr inbounds i32* %148, i64 %indvars.iv964, !dbg !971
  %149 = load i32* %arrayidx375, align 4, !dbg !971, !tbaa !389
  %add376 = add nsw i32 %149, 1, !dbg !971
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !231), !dbg !971
  %150 = load i32** %colind, align 8, !dbg !971, !tbaa !328
  %arrayidx378 = getelementptr inbounds i32* %150, i64 %indvars.iv968, !dbg !971
  %151 = load i32* %arrayidx378, align 4, !dbg !971, !tbaa !389
  %add379 = add nsw i32 %151, 1, !dbg !971
  %152 = trunc i64 %indvars.iv966 to i32, !dbg !971
  %mul380 = shl nsw i32 %152, 1, !dbg !971
  %idxprom381 = sext i32 %mul380 to i64, !dbg !971
  call void @llvm.dbg.value(metadata !{double** %entries332}, i64 0, metadata !281), !dbg !971
  %153 = load double** %entries332, align 8, !dbg !971, !tbaa !328
  %arrayidx382 = getelementptr inbounds double* %153, i64 %idxprom381, !dbg !971
  %154 = load double* %arrayidx382, align 8, !dbg !971, !tbaa !775
  %add384866 = or i32 %mul380, 1, !dbg !971
  %idxprom385 = sext i32 %add384866 to i64, !dbg !971
  %arrayidx386 = getelementptr inbounds double* %153, i64 %idxprom385, !dbg !971
  %155 = load double* %arrayidx386, align 8, !dbg !971, !tbaa !775
  %call387 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([35 x i8]* @.str65, i64 0, i64 0), i8* %mtxname, i32 %add376, i32 %add379, double %154, double %155) #6, !dbg !971
  br label %for.inc390, !dbg !973

for.inc390:                                       ; preds = %if.then360, %if.then373, %if.else370
  %indvars.iv.next965 = add i64 %indvars.iv964, 1, !dbg !966
  %indvars.iv.next967 = add i64 %indvars.iv966, 1, !dbg !966
  %156 = trunc i64 %indvars.iv964 to i32, !dbg !966
  %cmp356 = icmp slt i32 %156, %sub354, !dbg !966
  %157 = load i32* %type358, align 4, !dbg !958, !tbaa !389
  %cmp359 = icmp eq i32 %157, 1, !dbg !958
  br i1 %cmp356, label %for.body357, label %for.end393, !dbg !966

for.end393:                                       ; preds = %for.inc390, %if.then348
  %cmp359.lcssa = phi i1 [ %cmp359902, %if.then348 ], [ %cmp359, %for.inc390 ]
  %.lcssa900 = phi i32 [ %139, %if.then348 ], [ %157, %for.inc390 ]
  br i1 %cmp359.lcssa, label %if.then396, label %if.else401, !dbg !974

if.then396:                                       ; preds = %for.end393
  call void @llvm.dbg.value(metadata !{i32** %sizes341}, i64 0, metadata !291), !dbg !975
  %158 = load i32** %sizes341, align 8, !dbg !975, !tbaa !328
  %arrayidx398 = getelementptr inbounds i32* %158, i64 %indvars.iv968, !dbg !975
  %159 = load i32* %arrayidx398, align 4, !dbg !975, !tbaa !389
  call void @llvm.dbg.value(metadata !{double** %entries332}, i64 0, metadata !281), !dbg !975
  %160 = load double** %entries332, align 8, !dbg !975, !tbaa !328
  %idx.ext399 = sext i32 %159 to i64, !dbg !975
  %add.ptr400 = getelementptr inbounds double* %160, i64 %idx.ext399, !dbg !975
  call void @llvm.dbg.value(metadata !{double* %add.ptr400}, i64 0, metadata !281), !dbg !975
  store double* %add.ptr400, double** %entries332, align 8, !dbg !975, !tbaa !328
  br label %for.inc413, !dbg !977

if.else401:                                       ; preds = %for.end393
  %cmp403 = icmp eq i32 %.lcssa900, 2, !dbg !978
  br i1 %cmp403, label %if.then404, label %for.inc413, !dbg !978

if.then404:                                       ; preds = %if.else401
  call void @llvm.dbg.value(metadata !{i32** %sizes341}, i64 0, metadata !291), !dbg !979
  %161 = load i32** %sizes341, align 8, !dbg !979, !tbaa !328
  %arrayidx406 = getelementptr inbounds i32* %161, i64 %indvars.iv968, !dbg !979
  %162 = load i32* %arrayidx406, align 4, !dbg !979, !tbaa !389
  %mul407 = shl nsw i32 %162, 1, !dbg !979
  call void @llvm.dbg.value(metadata !{double** %entries332}, i64 0, metadata !281), !dbg !979
  %163 = load double** %entries332, align 8, !dbg !979, !tbaa !328
  %idx.ext408 = sext i32 %mul407 to i64, !dbg !979
  %add.ptr409 = getelementptr inbounds double* %163, i64 %idx.ext408, !dbg !979
  call void @llvm.dbg.value(metadata !{double* %add.ptr409}, i64 0, metadata !281), !dbg !979
  store double* %add.ptr409, double** %entries332, align 8, !dbg !979, !tbaa !328
  br label %for.inc413, !dbg !981

for.inc413:                                       ; preds = %if.else401, %for.body344, %if.then404, %if.then396
  %indvars.iv.next969 = add i64 %indvars.iv968, 1, !dbg !956
  call void @llvm.dbg.value(metadata !{i32* %ncol338}, i64 0, metadata !288), !dbg !956
  %164 = load i32* %ncol338, align 4, !dbg !956, !tbaa !389
  %165 = trunc i64 %indvars.iv.next969 to i32, !dbg !956
  %cmp343 = icmp slt i32 %165, %164, !dbg !956
  br i1 %cmp343, label %for.body344, label %if.end647, !dbg !956

if.then419:                                       ; preds = %if.end
  call void @llvm.dbg.declare(metadata !{double** %entries420}, metadata !292), !dbg !982
  call void @llvm.dbg.declare(metadata !{i32* %nent422}, metadata !295), !dbg !983
  call void @SubMtx_diagonalInfo(%struct._SubMtx* %mtx, i32* %nent422, double** %entries420) #6, !dbg !984
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !294), !dbg !985
  call void @llvm.dbg.value(metadata !{i32* %nent422}, i64 0, metadata !295), !dbg !985
  %166 = load i32* %nent422, align 4, !dbg !985, !tbaa !389
  %cmp424912 = icmp sgt i32 %166, 0, !dbg !985
  br i1 %cmp424912, label %for.body425.lr.ph, label %if.end647, !dbg !985

for.body425.lr.ph:                                ; preds = %if.then419
  %type426 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0, !dbg !987
  br label %for.body425, !dbg !985

for.body425:                                      ; preds = %for.inc458, %for.body425.lr.ph
  %indvars.iv970 = phi i64 [ 0, %for.body425.lr.ph ], [ %indvars.iv.next971, %for.inc458 ]
  %167 = load i32* %type426, align 4, !dbg !987, !tbaa !389
  switch i32 %167, label %for.inc458 [
    i32 1, label %if.then428
    i32 2, label %if.then441
  ], !dbg !987

if.then428:                                       ; preds = %for.body425
  call void @llvm.dbg.value(metadata !{i32** %rowind}, i64 0, metadata !232), !dbg !989
  %168 = load i32** %rowind, align 8, !dbg !989, !tbaa !328
  %arrayidx430 = getelementptr inbounds i32* %168, i64 %indvars.iv970, !dbg !989
  %169 = load i32* %arrayidx430, align 4, !dbg !989, !tbaa !389
  %add431 = add nsw i32 %169, 1, !dbg !989
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !231), !dbg !989
  %170 = load i32** %colind, align 8, !dbg !989, !tbaa !328
  %arrayidx433 = getelementptr inbounds i32* %170, i64 %indvars.iv970, !dbg !989
  %171 = load i32* %arrayidx433, align 4, !dbg !989, !tbaa !389
  %add434 = add nsw i32 %171, 1, !dbg !989
  call void @llvm.dbg.value(metadata !{double** %entries420}, i64 0, metadata !292), !dbg !989
  %172 = load double** %entries420, align 8, !dbg !989, !tbaa !328
  %arrayidx436 = getelementptr inbounds double* %172, i64 %indvars.iv970, !dbg !989
  %173 = load double* %arrayidx436, align 8, !dbg !989, !tbaa !775
  %call437 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([24 x i8]* @.str66, i64 0, i64 0), i8* %mtxname, i32 %add431, i32 %add434, double %173) #6, !dbg !989
  br label %for.inc458, !dbg !991

if.then441:                                       ; preds = %for.body425
  call void @llvm.dbg.value(metadata !{i32** %rowind}, i64 0, metadata !232), !dbg !992
  %174 = load i32** %rowind, align 8, !dbg !992, !tbaa !328
  %arrayidx443 = getelementptr inbounds i32* %174, i64 %indvars.iv970, !dbg !992
  %175 = load i32* %arrayidx443, align 4, !dbg !992, !tbaa !389
  %add444 = add nsw i32 %175, 1, !dbg !992
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !231), !dbg !992
  %176 = load i32** %colind, align 8, !dbg !992, !tbaa !328
  %arrayidx446 = getelementptr inbounds i32* %176, i64 %indvars.iv970, !dbg !992
  %177 = load i32* %arrayidx446, align 4, !dbg !992, !tbaa !389
  %add447 = add nsw i32 %177, 1, !dbg !992
  %178 = trunc i64 %indvars.iv970 to i32, !dbg !992
  %mul448 = shl nsw i32 %178, 1, !dbg !992
  %idxprom449 = sext i32 %mul448 to i64, !dbg !992
  call void @llvm.dbg.value(metadata !{double** %entries420}, i64 0, metadata !292), !dbg !992
  %179 = load double** %entries420, align 8, !dbg !992, !tbaa !328
  %arrayidx450 = getelementptr inbounds double* %179, i64 %idxprom449, !dbg !992
  %180 = load double* %arrayidx450, align 8, !dbg !992, !tbaa !775
  %add452865 = or i32 %mul448, 1, !dbg !992
  %idxprom453 = sext i32 %add452865 to i64, !dbg !992
  %arrayidx454 = getelementptr inbounds double* %179, i64 %idxprom453, !dbg !992
  %181 = load double* %arrayidx454, align 8, !dbg !992, !tbaa !775
  %call455 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([35 x i8]* @.str65, i64 0, i64 0), i8* %mtxname, i32 %add444, i32 %add447, double %180, double %181) #6, !dbg !992
  br label %for.inc458, !dbg !994

for.inc458:                                       ; preds = %for.body425, %if.then428, %if.then441
  %indvars.iv.next971 = add i64 %indvars.iv970, 1, !dbg !985
  call void @llvm.dbg.value(metadata !{i32* %nent422}, i64 0, metadata !295), !dbg !985
  %182 = load i32* %nent422, align 4, !dbg !985, !tbaa !389
  %183 = trunc i64 %indvars.iv.next971 to i32, !dbg !985
  %cmp424 = icmp slt i32 %183, %182, !dbg !985
  br i1 %cmp424, label %for.body425, label %if.end647, !dbg !985

if.then464:                                       ; preds = %if.end
  call void @llvm.dbg.declare(metadata !{double** %entries465}, metadata !296), !dbg !995
  call void @llvm.dbg.declare(metadata !{i32* %ncol468}, metadata !304), !dbg !996
  call void @llvm.dbg.declare(metadata !{i32* %nent469}, metadata !305), !dbg !996
  call void @llvm.dbg.declare(metadata !{i32** %pivotsizes}, metadata !306), !dbg !997
  call void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %mtx, i32* %ncol468, i32* %nent469, i32** %pivotsizes, double** %entries465) #6, !dbg !998
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !303), !dbg !999
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !299), !dbg !999
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !300), !dbg !999
  call void @llvm.dbg.value(metadata !{i32* %ncol468}, i64 0, metadata !304), !dbg !999
  %184 = load i32* %ncol468, align 4, !dbg !999, !tbaa !389
  %cmp471923 = icmp sgt i32 %184, 0, !dbg !999
  br i1 %cmp471923, label %for.body472.lr.ph, label %if.end647, !dbg !999

for.body472.lr.ph:                                ; preds = %if.then464
  %type481 = getelementptr inbounds %struct._SubMtx* %mtx, i64 0, i32 0, !dbg !1001
  br label %for.body472, !dbg !999

for.body472:                                      ; preds = %for.end562.for.body472_crit_edge, %for.body472.lr.ph
  %185 = phi i32 [ %184, %for.body472.lr.ph ], [ %228, %for.end562.for.body472_crit_edge ]
  %indvars.iv994 = phi i64 [ 0, %for.body472.lr.ph ], [ %indvars.iv.next995, %for.end562.for.body472_crit_edge ]
  %kk.0926 = phi i32 [ 0, %for.body472.lr.ph ], [ %kk.1.lcssa, %for.end562.for.body472_crit_edge ]
  %irow467.0925 = phi i32 [ 0, %for.body472.lr.ph ], [ %add563, %for.end562.for.body472_crit_edge ]
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes}, i64 0, metadata !306), !dbg !1007
  %186 = load i32** %pivotsizes, align 8, !dbg !1007, !tbaa !328
  %arrayidx474 = getelementptr inbounds i32* %186, i64 %indvars.iv994, !dbg !1007
  %187 = load i32* %arrayidx474, align 4, !dbg !1007, !tbaa !389
  call void @llvm.dbg.value(metadata !{i32 %187}, i64 0, metadata !302), !dbg !1007
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !298), !dbg !1008
  %cmp476918 = icmp sgt i32 %187, 0, !dbg !1008
  br i1 %cmp476918, label %for.cond478.preheader.lr.ph, label %for.end562, !dbg !1008

for.cond478.preheader.lr.ph:                      ; preds = %for.body472
  %188 = sext i32 %irow467.0925 to i64, !dbg !1008
  br label %for.body480.lr.ph, !dbg !1008

for.body480.lr.ph:                                ; preds = %for.cond478.preheader.lr.ph, %for.inc560
  %indvars.iv986 = phi i64 [ 0, %for.cond478.preheader.lr.ph ], [ %indvars.iv.next987, %for.inc560 ]
  %indvars.iv982 = phi i32 [ %187, %for.cond478.preheader.lr.ph ], [ %indvars.iv.next983, %for.inc560 ], !dbg !1009
  %kk.1920 = phi i32 [ %kk.0926, %for.cond478.preheader.lr.ph ], [ %227, %for.inc560 ]
  %189 = add nsw i64 %indvars.iv986, %188, !dbg !1010
  %190 = sext i32 %kk.1920 to i64
  br label %for.body480, !dbg !1009

for.body480:                                      ; preds = %for.inc556.for.body480_crit_edge, %for.body480.lr.ph
  %indvars.iv976 = phi i64 [ %indvars.iv986, %for.body480.lr.ph ], [ %indvars.iv.next977, %for.inc556.for.body480_crit_edge ], !dbg !1008
  %indvars.iv972 = phi i64 [ %190, %for.body480.lr.ph ], [ %indvars.iv.next973, %for.inc556.for.body480_crit_edge ]
  %191 = load i32* %type481, align 4, !dbg !1001, !tbaa !389
  switch i32 %191, label %if.end516 [
    i32 1, label %if.then483
    i32 2, label %if.then498
  ], !dbg !1001

if.then483:                                       ; preds = %for.body480
  call void @llvm.dbg.value(metadata !{i32** %rowind}, i64 0, metadata !232), !dbg !1013
  %192 = load i32** %rowind, align 8, !dbg !1013, !tbaa !328
  %arrayidx486 = getelementptr inbounds i32* %192, i64 %189, !dbg !1013
  %193 = load i32* %arrayidx486, align 4, !dbg !1013, !tbaa !389
  %add487 = add nsw i32 %193, 1, !dbg !1013
  %194 = add nsw i64 %indvars.iv976, %188, !dbg !1013
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !231), !dbg !1013
  %195 = load i32** %colind, align 8, !dbg !1013, !tbaa !328
  %arrayidx490 = getelementptr inbounds i32* %195, i64 %194, !dbg !1013
  %196 = load i32* %arrayidx490, align 4, !dbg !1013, !tbaa !389
  %add491 = add nsw i32 %196, 1, !dbg !1013
  call void @llvm.dbg.value(metadata !{double** %entries465}, i64 0, metadata !296), !dbg !1013
  %197 = load double** %entries465, align 8, !dbg !1013, !tbaa !328
  %arrayidx493 = getelementptr inbounds double* %197, i64 %indvars.iv972, !dbg !1013
  %198 = load double* %arrayidx493, align 8, !dbg !1013, !tbaa !775
  %call494 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([24 x i8]* @.str66, i64 0, i64 0), i8* %mtxname, i32 %add487, i32 %add491, double %198) #6, !dbg !1013
  br label %if.end516, !dbg !1015

if.then498:                                       ; preds = %for.body480
  call void @llvm.dbg.value(metadata !{i32** %rowind}, i64 0, metadata !232), !dbg !1016
  %199 = load i32** %rowind, align 8, !dbg !1016, !tbaa !328
  %arrayidx501 = getelementptr inbounds i32* %199, i64 %189, !dbg !1016
  %200 = load i32* %arrayidx501, align 4, !dbg !1016, !tbaa !389
  %add502 = add nsw i32 %200, 1, !dbg !1016
  %201 = add nsw i64 %indvars.iv976, %188, !dbg !1016
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !231), !dbg !1016
  %202 = load i32** %colind, align 8, !dbg !1016, !tbaa !328
  %arrayidx505 = getelementptr inbounds i32* %202, i64 %201, !dbg !1016
  %203 = load i32* %arrayidx505, align 4, !dbg !1016, !tbaa !389
  %add506 = add nsw i32 %203, 1, !dbg !1016
  %204 = trunc i64 %indvars.iv972 to i32, !dbg !1016
  %mul507 = shl nsw i32 %204, 1, !dbg !1016
  %idxprom508 = sext i32 %mul507 to i64, !dbg !1016
  call void @llvm.dbg.value(metadata !{double** %entries465}, i64 0, metadata !296), !dbg !1016
  %205 = load double** %entries465, align 8, !dbg !1016, !tbaa !328
  %arrayidx509 = getelementptr inbounds double* %205, i64 %idxprom508, !dbg !1016
  %206 = load double* %arrayidx509, align 8, !dbg !1016, !tbaa !775
  %add511864 = or i32 %mul507, 1, !dbg !1016
  %idxprom512 = sext i32 %add511864 to i64, !dbg !1016
  %arrayidx513 = getelementptr inbounds double* %205, i64 %idxprom512, !dbg !1016
  %207 = load double* %arrayidx513, align 8, !dbg !1016, !tbaa !775
  %call514 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([35 x i8]* @.str65, i64 0, i64 0), i8* %mtxname, i32 %add502, i32 %add506, double %206, double %207) #6, !dbg !1016
  br label %if.end516, !dbg !1018

if.end516:                                        ; preds = %for.body480, %if.then498, %if.then483
  %208 = trunc i64 %indvars.iv976 to i32, !dbg !1019
  %209 = trunc i64 %indvars.iv986 to i32, !dbg !1019
  %cmp517 = icmp eq i32 %209, %208, !dbg !1019
  br i1 %cmp517, label %for.inc556, label %if.then518, !dbg !1019

if.then518:                                       ; preds = %if.end516
  %210 = load i32* %type481, align 4, !dbg !1020, !tbaa !389
  switch i32 %210, label %for.inc556 [
    i32 1, label %if.then521
    i32 2, label %if.then536
  ], !dbg !1020

if.then521:                                       ; preds = %if.then518
  %211 = add nsw i64 %indvars.iv976, %188, !dbg !1010
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !231), !dbg !1010
  %212 = load i32** %colind, align 8, !dbg !1010, !tbaa !328
  %arrayidx524 = getelementptr inbounds i32* %212, i64 %211, !dbg !1010
  %213 = load i32* %arrayidx524, align 4, !dbg !1010, !tbaa !389
  %add525 = add nsw i32 %213, 1, !dbg !1010
  call void @llvm.dbg.value(metadata !{i32** %rowind}, i64 0, metadata !232), !dbg !1010
  %214 = load i32** %rowind, align 8, !dbg !1010, !tbaa !328
  %arrayidx528 = getelementptr inbounds i32* %214, i64 %189, !dbg !1010
  %215 = load i32* %arrayidx528, align 4, !dbg !1010, !tbaa !389
  %add529 = add nsw i32 %215, 1, !dbg !1010
  call void @llvm.dbg.value(metadata !{double** %entries465}, i64 0, metadata !296), !dbg !1010
  %216 = load double** %entries465, align 8, !dbg !1010, !tbaa !328
  %arrayidx531 = getelementptr inbounds double* %216, i64 %indvars.iv972, !dbg !1010
  %217 = load double* %arrayidx531, align 8, !dbg !1010, !tbaa !775
  %call532 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([24 x i8]* @.str66, i64 0, i64 0), i8* %mtxname, i32 %add525, i32 %add529, double %217) #6, !dbg !1010
  br label %for.inc556, !dbg !1021

if.then536:                                       ; preds = %if.then518
  %218 = add nsw i64 %indvars.iv976, %188, !dbg !1022
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !231), !dbg !1022
  %219 = load i32** %colind, align 8, !dbg !1022, !tbaa !328
  %arrayidx539 = getelementptr inbounds i32* %219, i64 %218, !dbg !1022
  %220 = load i32* %arrayidx539, align 4, !dbg !1022, !tbaa !389
  %add540 = add nsw i32 %220, 1, !dbg !1022
  call void @llvm.dbg.value(metadata !{i32** %rowind}, i64 0, metadata !232), !dbg !1022
  %221 = load i32** %rowind, align 8, !dbg !1022, !tbaa !328
  %arrayidx543 = getelementptr inbounds i32* %221, i64 %189, !dbg !1022
  %222 = load i32* %arrayidx543, align 4, !dbg !1022, !tbaa !389
  %add544 = add nsw i32 %222, 1, !dbg !1022
  %223 = trunc i64 %indvars.iv972 to i32, !dbg !1022
  %mul545 = shl nsw i32 %223, 1, !dbg !1022
  %idxprom546 = sext i32 %mul545 to i64, !dbg !1022
  call void @llvm.dbg.value(metadata !{double** %entries465}, i64 0, metadata !296), !dbg !1022
  %224 = load double** %entries465, align 8, !dbg !1022, !tbaa !328
  %arrayidx547 = getelementptr inbounds double* %224, i64 %idxprom546, !dbg !1022
  %225 = load double* %arrayidx547, align 8, !dbg !1022, !tbaa !775
  %add549863 = or i32 %mul545, 1, !dbg !1022
  %idxprom550 = sext i32 %add549863 to i64, !dbg !1022
  %arrayidx551 = getelementptr inbounds double* %224, i64 %idxprom550, !dbg !1022
  %226 = load double* %arrayidx551, align 8, !dbg !1022, !tbaa !775
  %call552 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([35 x i8]* @.str65, i64 0, i64 0), i8* %mtxname, i32 %add540, i32 %add544, double %225, double %226) #6, !dbg !1022
  br label %for.inc556, !dbg !1024

for.inc556:                                       ; preds = %if.then518, %if.end516, %if.then536, %if.then521
  %indvars.iv.next977 = add i64 %indvars.iv976, 1, !dbg !1009
  call void @llvm.dbg.value(metadata !{i32 %227}, i64 0, metadata !303), !dbg !1009
  %lftr.wideiv984 = trunc i64 %indvars.iv.next977 to i32, !dbg !1009
  %exitcond985 = icmp eq i32 %lftr.wideiv984, %187, !dbg !1009
  br i1 %exitcond985, label %for.inc560, label %for.inc556.for.body480_crit_edge, !dbg !1009

for.inc556.for.body480_crit_edge:                 ; preds = %for.inc556
  %indvars.iv.next973 = add i64 %indvars.iv972, 1, !dbg !1009
  br label %for.body480, !dbg !1009

for.inc560:                                       ; preds = %for.inc556
  %227 = add i32 %kk.1920, %indvars.iv982, !dbg !1009
  %indvars.iv.next987 = add i64 %indvars.iv986, 1, !dbg !1008
  %indvars.iv.next983 = add i32 %indvars.iv982, -1, !dbg !1008
  %lftr.wideiv992 = trunc i64 %indvars.iv.next987 to i32, !dbg !1008
  %exitcond993 = icmp eq i32 %lftr.wideiv992, %187, !dbg !1008
  br i1 %exitcond993, label %for.cond475.for.end562_crit_edge, label %for.body480.lr.ph, !dbg !1008

for.cond475.for.end562_crit_edge:                 ; preds = %for.inc560
  call void @llvm.dbg.value(metadata !{i32* %ncol468}, i64 0, metadata !304), !dbg !999
  %.pre1016 = load i32* %ncol468, align 4, !dbg !999, !tbaa !389
  br label %for.end562, !dbg !1008

for.end562:                                       ; preds = %for.body472, %for.cond475.for.end562_crit_edge
  %228 = phi i32 [ %.pre1016, %for.cond475.for.end562_crit_edge ], [ %185, %for.body472 ], !dbg !1025
  %kk.1.lcssa = phi i32 [ %227, %for.cond475.for.end562_crit_edge ], [ %kk.0926, %for.body472 ]
  %add563 = add nsw i32 %187, %irow467.0925, !dbg !1025
  call void @llvm.dbg.value(metadata !{i32 %add563}, i64 0, metadata !300), !dbg !1025
  call void @llvm.dbg.value(metadata !{i32* %ncol468}, i64 0, metadata !304), !dbg !999
  %cmp471 = icmp slt i32 %add563, %228, !dbg !999
  br i1 %cmp471, label %for.end562.for.body472_crit_edge, label %if.end647, !dbg !999

for.end562.for.body472_crit_edge:                 ; preds = %for.end562
  %indvars.iv.next995 = add i64 %indvars.iv994, 1, !dbg !999
  br label %for.body472, !dbg !999

if.then570:                                       ; preds = %if.end
  call void @llvm.dbg.declare(metadata !{double** %entries571}, metadata !307), !dbg !1026
  call void @llvm.dbg.declare(metadata !{i32* %ncol578}, metadata !315), !dbg !1027
  call void @llvm.dbg.declare(metadata !{i32* %nent579}, metadata !316), !dbg !1027
  call void @llvm.dbg.declare(metadata !{i32** %pivotsizes580}, metadata !317), !dbg !1028
  call void @SubMtx_blockDiagonalInfo(%struct._SubMtx* %mtx, i32* %ncol578, i32* %nent579, i32** %pivotsizes580, double** %entries571) #6, !dbg !1029
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !314), !dbg !1030
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !310), !dbg !1030
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !311), !dbg !1030
  call void @llvm.dbg.value(metadata !{i32* %ncol578}, i64 0, metadata !315), !dbg !1030
  %229 = load i32* %ncol578, align 4, !dbg !1030, !tbaa !389
  %cmp582936 = icmp sgt i32 %229, 0, !dbg !1030
  br i1 %cmp582936, label %for.body583, label %if.end647, !dbg !1030

for.body583:                                      ; preds = %if.then570, %for.end634.for.body583_crit_edge
  %230 = phi i32 [ %255, %for.end634.for.body583_crit_edge ], [ %229, %if.then570 ]
  %indvars.iv1012 = phi i64 [ %indvars.iv.next1013, %for.end634.for.body583_crit_edge ], [ 0, %if.then570 ]
  %kk577.0939 = phi i32 [ %kk577.1.lcssa, %for.end634.for.body583_crit_edge ], [ 0, %if.then570 ]
  %irow574.0938 = phi i32 [ %add635, %for.end634.for.body583_crit_edge ], [ 0, %if.then570 ]
  call void @llvm.dbg.value(metadata !{i32** %pivotsizes580}, i64 0, metadata !317), !dbg !1032
  %231 = load i32** %pivotsizes580, align 8, !dbg !1032, !tbaa !328
  %arrayidx585 = getelementptr inbounds i32* %231, i64 %indvars.iv1012, !dbg !1032
  %232 = load i32* %arrayidx585, align 4, !dbg !1032, !tbaa !389
  call void @llvm.dbg.value(metadata !{i32 %232}, i64 0, metadata !313), !dbg !1032
  call void @llvm.dbg.value(metadata !2, i64 0, metadata !309), !dbg !1034
  %cmp587931 = icmp sgt i32 %232, 0, !dbg !1034
  br i1 %cmp587931, label %for.cond589.preheader.lr.ph, label %for.end634, !dbg !1034

for.cond589.preheader.lr.ph:                      ; preds = %for.body583
  %233 = sext i32 %irow574.0938 to i64, !dbg !1034
  br label %for.body591.lr.ph, !dbg !1034

for.body591.lr.ph:                                ; preds = %for.cond589.preheader.lr.ph, %for.inc632
  %indvars.iv1007 = phi i64 [ 0, %for.cond589.preheader.lr.ph ], [ %indvars.iv.next1008, %for.inc632 ]
  %indvars.iv1003 = phi i32 [ %232, %for.cond589.preheader.lr.ph ], [ %indvars.iv.next1004, %for.inc632 ], !dbg !1036
  %kk577.1933 = phi i32 [ %kk577.0939, %for.cond589.preheader.lr.ph ], [ %254, %for.inc632 ]
  %234 = add nsw i64 %indvars.iv1007, %233, !dbg !1039
  %235 = sext i32 %kk577.1933 to i64
  br label %for.body591, !dbg !1036

for.body591:                                      ; preds = %for.inc628, %for.body591.lr.ph
  %indvars.iv1000 = phi i64 [ %indvars.iv1007, %for.body591.lr.ph ], [ %indvars.iv.next1001, %for.inc628 ], !dbg !1034
  %indvars.iv996 = phi i64 [ %235, %for.body591.lr.ph ], [ %indvars.iv.next997, %for.inc628 ]
  call void @llvm.dbg.value(metadata !{i32** %rowind}, i64 0, metadata !232), !dbg !1039
  %236 = load i32** %rowind, align 8, !dbg !1039, !tbaa !328
  %arrayidx594 = getelementptr inbounds i32* %236, i64 %234, !dbg !1039
  %237 = load i32* %arrayidx594, align 4, !dbg !1039, !tbaa !389
  %add595 = add nsw i32 %237, 1, !dbg !1039
  %238 = add nsw i64 %indvars.iv1000, %233, !dbg !1039
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !231), !dbg !1039
  %239 = load i32** %colind, align 8, !dbg !1039, !tbaa !328
  %arrayidx598 = getelementptr inbounds i32* %239, i64 %238, !dbg !1039
  %240 = load i32* %arrayidx598, align 4, !dbg !1039, !tbaa !389
  %add599 = add nsw i32 %240, 1, !dbg !1039
  %241 = trunc i64 %indvars.iv996 to i32, !dbg !1039
  %mul600 = shl nsw i32 %241, 1, !dbg !1039
  %idxprom601 = sext i32 %mul600 to i64, !dbg !1039
  call void @llvm.dbg.value(metadata !{double** %entries571}, i64 0, metadata !307), !dbg !1039
  %242 = load double** %entries571, align 8, !dbg !1039, !tbaa !328
  %arrayidx602 = getelementptr inbounds double* %242, i64 %idxprom601, !dbg !1039
  %243 = load double* %arrayidx602, align 8, !dbg !1039, !tbaa !775
  %add604862 = or i32 %mul600, 1, !dbg !1039
  %idxprom605 = sext i32 %add604862 to i64, !dbg !1039
  %arrayidx606 = getelementptr inbounds double* %242, i64 %idxprom605, !dbg !1039
  %244 = load double* %arrayidx606, align 8, !dbg !1039, !tbaa !775
  %call607 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([35 x i8]* @.str65, i64 0, i64 0), i8* %mtxname, i32 %add595, i32 %add599, double %243, double %244) #6, !dbg !1039
  %245 = trunc i64 %indvars.iv1000 to i32, !dbg !1041
  %246 = trunc i64 %indvars.iv1007 to i32, !dbg !1041
  %cmp608 = icmp eq i32 %246, %245, !dbg !1041
  br i1 %cmp608, label %for.inc628, label %if.then609, !dbg !1041

if.then609:                                       ; preds = %for.body591
  call void @llvm.dbg.value(metadata !{i32** %colind}, i64 0, metadata !231), !dbg !1042
  %247 = load i32** %colind, align 8, !dbg !1042, !tbaa !328
  %arrayidx612 = getelementptr inbounds i32* %247, i64 %238, !dbg !1042
  %248 = load i32* %arrayidx612, align 4, !dbg !1042, !tbaa !389
  %add613 = add nsw i32 %248, 1, !dbg !1042
  call void @llvm.dbg.value(metadata !{i32** %rowind}, i64 0, metadata !232), !dbg !1042
  %249 = load i32** %rowind, align 8, !dbg !1042, !tbaa !328
  %arrayidx616 = getelementptr inbounds i32* %249, i64 %234, !dbg !1042
  %250 = load i32* %arrayidx616, align 4, !dbg !1042, !tbaa !389
  %add617 = add nsw i32 %250, 1, !dbg !1042
  call void @llvm.dbg.value(metadata !{double** %entries571}, i64 0, metadata !307), !dbg !1042
  %251 = load double** %entries571, align 8, !dbg !1042, !tbaa !328
  %arrayidx620 = getelementptr inbounds double* %251, i64 %idxprom601, !dbg !1042
  %252 = load double* %arrayidx620, align 8, !dbg !1042, !tbaa !775
  %arrayidx624 = getelementptr inbounds double* %251, i64 %idxprom605, !dbg !1042
  %253 = load double* %arrayidx624, align 8, !dbg !1042, !tbaa !775
  %sub625 = fsub double -0.000000e+00, %253, !dbg !1042
  %call626 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %fp, i8* getelementptr inbounds ([35 x i8]* @.str65, i64 0, i64 0), i8* %mtxname, i32 %add613, i32 %add617, double %252, double %sub625) #6, !dbg !1042
  br label %for.inc628, !dbg !1044

for.inc628:                                       ; preds = %for.body591, %if.then609
  %indvars.iv.next1001 = add i64 %indvars.iv1000, 1, !dbg !1036
  %indvars.iv.next997 = add i64 %indvars.iv996, 1, !dbg !1036
  call void @llvm.dbg.value(metadata !{i32 %254}, i64 0, metadata !314), !dbg !1036
  %lftr.wideiv1005 = trunc i64 %indvars.iv.next1001 to i32, !dbg !1036
  %exitcond1006 = icmp eq i32 %lftr.wideiv1005, %232, !dbg !1036
  br i1 %exitcond1006, label %for.inc632, label %for.body591, !dbg !1036

for.inc632:                                       ; preds = %for.inc628
  %254 = add i32 %kk577.1933, %indvars.iv1003, !dbg !1036
  %indvars.iv.next1008 = add i64 %indvars.iv1007, 1, !dbg !1034
  %indvars.iv.next1004 = add i32 %indvars.iv1003, -1, !dbg !1034
  %lftr.wideiv1010 = trunc i64 %indvars.iv.next1008 to i32, !dbg !1034
  %exitcond1011 = icmp eq i32 %lftr.wideiv1010, %232, !dbg !1034
  br i1 %exitcond1011, label %for.cond586.for.end634_crit_edge, label %for.body591.lr.ph, !dbg !1034

for.cond586.for.end634_crit_edge:                 ; preds = %for.inc632
  call void @llvm.dbg.value(metadata !{i32* %ncol578}, i64 0, metadata !315), !dbg !1030
  %.pre1014 = load i32* %ncol578, align 4, !dbg !1030, !tbaa !389
  br label %for.end634, !dbg !1034

for.end634:                                       ; preds = %for.cond586.for.end634_crit_edge, %for.body583
  %255 = phi i32 [ %.pre1014, %for.cond586.for.end634_crit_edge ], [ %230, %for.body583 ], !dbg !1045
  %kk577.1.lcssa = phi i32 [ %254, %for.cond586.for.end634_crit_edge ], [ %kk577.0939, %for.body583 ]
  %add635 = add nsw i32 %232, %irow574.0938, !dbg !1045
  call void @llvm.dbg.value(metadata !{i32 %add635}, i64 0, metadata !311), !dbg !1045
  call void @llvm.dbg.value(metadata !{i32* %ncol578}, i64 0, metadata !315), !dbg !1030
  %cmp582 = icmp slt i32 %add635, %255, !dbg !1030
  br i1 %cmp582, label %for.end634.for.body583_crit_edge, label %if.end647, !dbg !1030

for.end634.for.body583_crit_edge:                 ; preds = %for.end634
  %indvars.iv.next1013 = add i64 %indvars.iv1012, 1, !dbg !1030
  br label %for.body583, !dbg !1030

if.end647:                                        ; preds = %if.then570, %for.end634, %if.then464, %for.end562, %if.then419, %for.inc458, %if.then331, %for.inc413, %if.then247, %for.inc325, %if.then196, %for.inc241, %if.then120, %for.inc190, %if.then50, %for.inc114, %if.then8, %for.inc44, %if.end
  ret void, !dbg !1046
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind optsize readonly }
attributes #8 = { optsize }
attributes #9 = { noreturn nounwind optsize }
attributes #10 = { nounwind }

!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.3 (tags/RELEASE_33/final)", i1 true, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !318, metadata !2, metadata !""} ; [ DW_TAG_compile_unit ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c] [DW_LANG_C99]
!1 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4, metadata !100, metadata !126, metadata !146, metadata !154, metadata !173, metadata !193, metadata !218, metadata !222}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SubMtx_readFromFile", metadata !"SubMtx_readFromFile", metadata !"", i32 25, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._SubMtx*, i8*)* @SubMtx_readFromFile, null, null, metadata !38, i32 28} ; [ DW_TAG_subprogram ] [line 25] [def] [scope 28] [SubMtx_readFromFile]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!6 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !9, metadata !36}
!8 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SubMtx]
!10 = metadata !{i32 786454, metadata !1, null, metadata !"SubMtx", i32 43, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [SubMtx] [line 43, size 0, align 0, offset 0] [from _SubMtx]
!11 = metadata !{i32 786451, metadata !12, null, metadata !"_SubMtx", i32 44, i64 576, i64 64, i32 0, i32 0, null, metadata !13, i32 0, null, null} ; [ DW_TAG_structure_type ] [_SubMtx] [line 44, size 576, align 64, offset 0] [from ]
!12 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/../SubMtx.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!13 = metadata !{metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !24, metadata !33}
!14 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"type", i32 45, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [type] [line 45, size 32, align 32, offset 0] [from int]
!15 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"mode", i32 46, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [mode] [line 46, size 32, align 32, offset 32] [from int]
!16 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"rowid", i32 47, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [rowid] [line 47, size 32, align 32, offset 64] [from int]
!17 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"colid", i32 48, i64 32, i64 32, i64 96, i32 0, metadata !8} ; [ DW_TAG_member ] [colid] [line 48, size 32, align 32, offset 96] [from int]
!18 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nrow", i32 49, i64 32, i64 32, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [nrow] [line 49, size 32, align 32, offset 128] [from int]
!19 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"ncol", i32 50, i64 32, i64 32, i64 160, i32 0, metadata !8} ; [ DW_TAG_member ] [ncol] [line 50, size 32, align 32, offset 160] [from int]
!20 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"nent", i32 51, i64 32, i64 32, i64 192, i32 0, metadata !8} ; [ DW_TAG_member ] [nent] [line 51, size 32, align 32, offset 192] [from int]
!21 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"entries", i32 52, i64 64, i64 64, i64 256, i32 0, metadata !22} ; [ DW_TAG_member ] [entries] [line 52, size 64, align 64, offset 256] [from ]
!22 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !23} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from double]
!23 = metadata !{i32 786468, null, null, metadata !"double", i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ] [double] [line 0, size 64, align 64, offset 0, enc DW_ATE_float]
!24 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"wrkDV", i32 53, i64 192, i64 64, i64 320, i32 0, metadata !25} ; [ DW_TAG_member ] [wrkDV] [line 53, size 192, align 64, offset 320] [from DV]
!25 = metadata !{i32 786454, metadata !12, null, metadata !"DV", i32 20, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_typedef ] [DV] [line 20, size 0, align 0, offset 0] [from _DV]
!26 = metadata !{i32 786451, metadata !27, null, metadata !"_DV", i32 21, i64 192, i64 64, i32 0, i32 0, null, metadata !28, i32 0, null, null} ; [ DW_TAG_structure_type ] [_DV] [line 21, size 192, align 64, offset 0] [from ]
!27 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/../../DV/DV.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!28 = metadata !{metadata !29, metadata !30, metadata !31, metadata !32}
!29 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"size", i32 22, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [size] [line 22, size 32, align 32, offset 0] [from int]
!30 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"maxsize", i32 23, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [maxsize] [line 23, size 32, align 32, offset 32] [from int]
!31 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"owned", i32 24, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [owned] [line 24, size 32, align 32, offset 64] [from int]
!32 = metadata !{i32 786445, metadata !27, metadata !26, metadata !"vec", i32 25, i64 64, i64 64, i64 128, i32 0, metadata !22} ; [ DW_TAG_member ] [vec] [line 25, size 64, align 64, offset 128] [from ]
!33 = metadata !{i32 786445, metadata !12, metadata !11, metadata !"next", i32 54, i64 64, i64 64, i64 512, i32 0, metadata !34} ; [ DW_TAG_member ] [next] [line 54, size 64, align 64, offset 512] [from ]
!34 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !35} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from SubMtx]
!35 = metadata !{i32 786454, metadata !12, null, metadata !"SubMtx", i32 43, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ] [SubMtx] [line 43, size 0, align 0, offset 0] [from _SubMtx]
!36 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !37} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from char]
!37 = metadata !{i32 786468, null, null, metadata !"char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!38 = metadata !{metadata !39, metadata !40, metadata !41, metadata !97, metadata !98, metadata !99}
!39 = metadata !{i32 786689, metadata !4, metadata !"mtx", metadata !5, i32 16777242, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 26]
!40 = metadata !{i32 786689, metadata !4, metadata !"fn", metadata !5, i32 33554459, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 27]
!41 = metadata !{i32 786688, metadata !4, metadata !"fp", metadata !5, i32 29, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 29]
!42 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !43} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from FILE]
!43 = metadata !{i32 786454, metadata !1, null, metadata !"FILE", i32 48, i64 0, i64 0, i64 0, i32 0, metadata !44} ; [ DW_TAG_typedef ] [FILE] [line 48, size 0, align 0, offset 0] [from _IO_FILE]
!44 = metadata !{i32 786451, metadata !45, null, metadata !"_IO_FILE", i32 245, i64 1728, i64 64, i32 0, i32 0, null, metadata !46, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_FILE] [line 245, size 1728, align 64, offset 0] [from ]
!45 = metadata !{metadata !"/usr/include/libio.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!46 = metadata !{metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !67, metadata !68, metadata !69, metadata !70, metadata !73, metadata !75, metadata !77, metadata !81, metadata !83, metadata !85, metadata !86, metadata !87, metadata !88, metadata !89, metadata !92, metadata !93}
!47 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_flags", i32 246, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [_flags] [line 246, size 32, align 32, offset 0] [from int]
!48 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_IO_read_ptr", i32 251, i64 64, i64 64, i64 64, i32 0, metadata !36} ; [ DW_TAG_member ] [_IO_read_ptr] [line 251, size 64, align 64, offset 64] [from ]
!49 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_IO_read_end", i32 252, i64 64, i64 64, i64 128, i32 0, metadata !36} ; [ DW_TAG_member ] [_IO_read_end] [line 252, size 64, align 64, offset 128] [from ]
!50 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_IO_read_base", i32 253, i64 64, i64 64, i64 192, i32 0, metadata !36} ; [ DW_TAG_member ] [_IO_read_base] [line 253, size 64, align 64, offset 192] [from ]
!51 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_IO_write_base", i32 254, i64 64, i64 64, i64 256, i32 0, metadata !36} ; [ DW_TAG_member ] [_IO_write_base] [line 254, size 64, align 64, offset 256] [from ]
!52 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_IO_write_ptr", i32 255, i64 64, i64 64, i64 320, i32 0, metadata !36} ; [ DW_TAG_member ] [_IO_write_ptr] [line 255, size 64, align 64, offset 320] [from ]
!53 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_IO_write_end", i32 256, i64 64, i64 64, i64 384, i32 0, metadata !36} ; [ DW_TAG_member ] [_IO_write_end] [line 256, size 64, align 64, offset 384] [from ]
!54 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_IO_buf_base", i32 257, i64 64, i64 64, i64 448, i32 0, metadata !36} ; [ DW_TAG_member ] [_IO_buf_base] [line 257, size 64, align 64, offset 448] [from ]
!55 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_IO_buf_end", i32 258, i64 64, i64 64, i64 512, i32 0, metadata !36} ; [ DW_TAG_member ] [_IO_buf_end] [line 258, size 64, align 64, offset 512] [from ]
!56 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_IO_save_base", i32 260, i64 64, i64 64, i64 576, i32 0, metadata !36} ; [ DW_TAG_member ] [_IO_save_base] [line 260, size 64, align 64, offset 576] [from ]
!57 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_IO_backup_base", i32 261, i64 64, i64 64, i64 640, i32 0, metadata !36} ; [ DW_TAG_member ] [_IO_backup_base] [line 261, size 64, align 64, offset 640] [from ]
!58 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_IO_save_end", i32 262, i64 64, i64 64, i64 704, i32 0, metadata !36} ; [ DW_TAG_member ] [_IO_save_end] [line 262, size 64, align 64, offset 704] [from ]
!59 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_markers", i32 264, i64 64, i64 64, i64 768, i32 0, metadata !60} ; [ DW_TAG_member ] [_markers] [line 264, size 64, align 64, offset 768] [from ]
!60 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !61} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_marker]
!61 = metadata !{i32 786451, metadata !45, null, metadata !"_IO_marker", i32 160, i64 192, i64 64, i32 0, i32 0, null, metadata !62, i32 0, null, null} ; [ DW_TAG_structure_type ] [_IO_marker] [line 160, size 192, align 64, offset 0] [from ]
!62 = metadata !{metadata !63, metadata !64, metadata !66}
!63 = metadata !{i32 786445, metadata !45, metadata !61, metadata !"_next", i32 161, i64 64, i64 64, i64 0, i32 0, metadata !60} ; [ DW_TAG_member ] [_next] [line 161, size 64, align 64, offset 0] [from ]
!64 = metadata !{i32 786445, metadata !45, metadata !61, metadata !"_sbuf", i32 162, i64 64, i64 64, i64 64, i32 0, metadata !65} ; [ DW_TAG_member ] [_sbuf] [line 162, size 64, align 64, offset 64] [from ]
!65 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !44} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from _IO_FILE]
!66 = metadata !{i32 786445, metadata !45, metadata !61, metadata !"_pos", i32 166, i64 32, i64 32, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [_pos] [line 166, size 32, align 32, offset 128] [from int]
!67 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_chain", i32 266, i64 64, i64 64, i64 832, i32 0, metadata !65} ; [ DW_TAG_member ] [_chain] [line 266, size 64, align 64, offset 832] [from ]
!68 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_fileno", i32 268, i64 32, i64 32, i64 896, i32 0, metadata !8} ; [ DW_TAG_member ] [_fileno] [line 268, size 32, align 32, offset 896] [from int]
!69 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_flags2", i32 272, i64 32, i64 32, i64 928, i32 0, metadata !8} ; [ DW_TAG_member ] [_flags2] [line 272, size 32, align 32, offset 928] [from int]
!70 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_old_offset", i32 274, i64 64, i64 64, i64 960, i32 0, metadata !71} ; [ DW_TAG_member ] [_old_offset] [line 274, size 64, align 64, offset 960] [from __off_t]
!71 = metadata !{i32 786454, metadata !45, null, metadata !"__off_t", i32 131, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_typedef ] [__off_t] [line 131, size 0, align 0, offset 0] [from long int]
!72 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!73 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_cur_column", i32 278, i64 16, i64 16, i64 1024, i32 0, metadata !74} ; [ DW_TAG_member ] [_cur_column] [line 278, size 16, align 16, offset 1024] [from unsigned short]
!74 = metadata !{i32 786468, null, null, metadata !"unsigned short", i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [unsigned short] [line 0, size 16, align 16, offset 0, enc DW_ATE_unsigned]
!75 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_vtable_offset", i32 279, i64 8, i64 8, i64 1040, i32 0, metadata !76} ; [ DW_TAG_member ] [_vtable_offset] [line 279, size 8, align 8, offset 1040] [from signed char]
!76 = metadata !{i32 786468, null, null, metadata !"signed char", i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ] [signed char] [line 0, size 8, align 8, offset 0, enc DW_ATE_signed_char]
!77 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_shortbuf", i32 280, i64 8, i64 8, i64 1048, i32 0, metadata !78} ; [ DW_TAG_member ] [_shortbuf] [line 280, size 8, align 8, offset 1048] [from ]
!78 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 8, i64 8, i32 0, i32 0, metadata !37, metadata !79, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 8, align 8, offset 0] [from char]
!79 = metadata !{metadata !80}
!80 = metadata !{i32 786465, i64 0, i64 1}        ; [ DW_TAG_subrange_type ] [0, 0]
!81 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_lock", i32 284, i64 64, i64 64, i64 1088, i32 0, metadata !82} ; [ DW_TAG_member ] [_lock] [line 284, size 64, align 64, offset 1088] [from ]
!82 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, null} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!83 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_offset", i32 293, i64 64, i64 64, i64 1152, i32 0, metadata !84} ; [ DW_TAG_member ] [_offset] [line 293, size 64, align 64, offset 1152] [from __off64_t]
!84 = metadata !{i32 786454, metadata !45, null, metadata !"__off64_t", i32 132, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_typedef ] [__off64_t] [line 132, size 0, align 0, offset 0] [from long int]
!85 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"__pad1", i32 302, i64 64, i64 64, i64 1216, i32 0, metadata !82} ; [ DW_TAG_member ] [__pad1] [line 302, size 64, align 64, offset 1216] [from ]
!86 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"__pad2", i32 303, i64 64, i64 64, i64 1280, i32 0, metadata !82} ; [ DW_TAG_member ] [__pad2] [line 303, size 64, align 64, offset 1280] [from ]
!87 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"__pad3", i32 304, i64 64, i64 64, i64 1344, i32 0, metadata !82} ; [ DW_TAG_member ] [__pad3] [line 304, size 64, align 64, offset 1344] [from ]
!88 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"__pad4", i32 305, i64 64, i64 64, i64 1408, i32 0, metadata !82} ; [ DW_TAG_member ] [__pad4] [line 305, size 64, align 64, offset 1408] [from ]
!89 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"__pad5", i32 306, i64 64, i64 64, i64 1472, i32 0, metadata !90} ; [ DW_TAG_member ] [__pad5] [line 306, size 64, align 64, offset 1472] [from size_t]
!90 = metadata !{i32 786454, metadata !45, null, metadata !"size_t", i32 42, i64 0, i64 0, i64 0, i32 0, metadata !91} ; [ DW_TAG_typedef ] [size_t] [line 42, size 0, align 0, offset 0] [from long unsigned int]
!91 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!92 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_mode", i32 308, i64 32, i64 32, i64 1536, i32 0, metadata !8} ; [ DW_TAG_member ] [_mode] [line 308, size 32, align 32, offset 1536] [from int]
!93 = metadata !{i32 786445, metadata !45, metadata !44, metadata !"_unused2", i32 310, i64 160, i64 8, i64 1568, i32 0, metadata !94} ; [ DW_TAG_member ] [_unused2] [line 310, size 160, align 8, offset 1568] [from ]
!94 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 160, i64 8, i32 0, i32 0, metadata !37, metadata !95, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 160, align 8, offset 0] [from char]
!95 = metadata !{metadata !96}
!96 = metadata !{i32 786465, i64 0, i64 20}       ; [ DW_TAG_subrange_type ] [0, 19]
!97 = metadata !{i32 786688, metadata !4, metadata !"fnlength", metadata !5, i32 30, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fnlength] [line 30]
!98 = metadata !{i32 786688, metadata !4, metadata !"rc", metadata !5, i32 30, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 30]
!99 = metadata !{i32 786688, metadata !4, metadata !"sulength", metadata !5, i32 30, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sulength] [line 30]
!100 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SubMtx_readFromFormattedFile", metadata !"SubMtx_readFromFormattedFile", metadata !"", i32 94, metadata !101, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._SubMtx*, %struct._IO_FILE*)* @SubMtx_readFromFormattedFile, null, null, metadata !103, i32 97} ; [ DW_TAG_subprogram ] [line 94] [def] [scope 97] [SubMtx_readFromFormattedFile]
!101 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !102, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!102 = metadata !{metadata !8, metadata !9, metadata !42}
!103 = metadata !{metadata !104, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !110, metadata !111, metadata !112, metadata !113, metadata !117, metadata !119, metadata !120, metadata !121, metadata !122, metadata !123, metadata !124, metadata !125}
!104 = metadata !{i32 786689, metadata !100, metadata !"mtx", metadata !5, i32 16777311, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 95]
!105 = metadata !{i32 786689, metadata !100, metadata !"fp", metadata !5, i32 33554528, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 96]
!106 = metadata !{i32 786688, metadata !100, metadata !"entries", metadata !5, i32 98, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 98]
!107 = metadata !{i32 786688, metadata !100, metadata !"inc1", metadata !5, i32 99, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 99]
!108 = metadata !{i32 786688, metadata !100, metadata !"inc2", metadata !5, i32 99, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 99]
!109 = metadata !{i32 786688, metadata !100, metadata !"ncol", metadata !5, i32 99, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 99]
!110 = metadata !{i32 786688, metadata !100, metadata !"nent", metadata !5, i32 99, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 99]
!111 = metadata !{i32 786688, metadata !100, metadata !"nrow", metadata !5, i32 99, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 99]
!112 = metadata !{i32 786688, metadata !100, metadata !"rc", metadata !5, i32 99, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 99]
!113 = metadata !{i32 786688, metadata !100, metadata !"itemp", metadata !5, i32 100, metadata !114, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [itemp] [line 100]
!114 = metadata !{i32 786433, null, null, metadata !"", i32 0, i64 224, i64 32, i32 0, i32 0, metadata !8, metadata !115, i32 0, i32 0} ; [ DW_TAG_array_type ] [line 0, size 224, align 32, offset 0] [from int]
!115 = metadata !{metadata !116}
!116 = metadata !{i32 786465, i64 0, i64 7}       ; [ DW_TAG_subrange_type ] [0, 6]
!117 = metadata !{i32 786688, metadata !100, metadata !"colids", metadata !5, i32 101, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colids] [line 101]
!118 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !8} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from int]
!119 = metadata !{i32 786688, metadata !100, metadata !"colind", metadata !5, i32 101, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colind] [line 101]
!120 = metadata !{i32 786688, metadata !100, metadata !"firstlocs", metadata !5, i32 101, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [firstlocs] [line 101]
!121 = metadata !{i32 786688, metadata !100, metadata !"indices", metadata !5, i32 101, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indices] [line 101]
!122 = metadata !{i32 786688, metadata !100, metadata !"pivotsizes", metadata !5, i32 102, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pivotsizes] [line 102]
!123 = metadata !{i32 786688, metadata !100, metadata !"rowids", metadata !5, i32 102, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowids] [line 102]
!124 = metadata !{i32 786688, metadata !100, metadata !"rowind", metadata !5, i32 102, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowind] [line 102]
!125 = metadata !{i32 786688, metadata !100, metadata !"sizes", metadata !5, i32 102, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizes] [line 102]
!126 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SubMtx_readFromBinaryFile", metadata !"SubMtx_readFromBinaryFile", metadata !"", i32 324, metadata !101, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._SubMtx*, %struct._IO_FILE*)* @SubMtx_readFromBinaryFile, null, null, metadata !127, i32 327} ; [ DW_TAG_subprogram ] [line 324] [def] [scope 327] [SubMtx_readFromBinaryFile]
!127 = metadata !{metadata !128, metadata !129, metadata !130, metadata !131, metadata !132, metadata !133, metadata !134, metadata !135, metadata !136, metadata !137, metadata !138, metadata !139, metadata !140, metadata !141, metadata !142, metadata !143, metadata !144, metadata !145}
!128 = metadata !{i32 786689, metadata !126, metadata !"mtx", metadata !5, i32 16777541, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 325]
!129 = metadata !{i32 786689, metadata !126, metadata !"fp", metadata !5, i32 33554758, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 326]
!130 = metadata !{i32 786688, metadata !126, metadata !"entries", metadata !5, i32 328, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 328]
!131 = metadata !{i32 786688, metadata !126, metadata !"inc1", metadata !5, i32 329, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 329]
!132 = metadata !{i32 786688, metadata !126, metadata !"inc2", metadata !5, i32 329, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 329]
!133 = metadata !{i32 786688, metadata !126, metadata !"ncol", metadata !5, i32 329, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 329]
!134 = metadata !{i32 786688, metadata !126, metadata !"nent", metadata !5, i32 329, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 329]
!135 = metadata !{i32 786688, metadata !126, metadata !"nrow", metadata !5, i32 329, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 329]
!136 = metadata !{i32 786688, metadata !126, metadata !"rc", metadata !5, i32 329, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 329]
!137 = metadata !{i32 786688, metadata !126, metadata !"itemp", metadata !5, i32 330, metadata !114, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [itemp] [line 330]
!138 = metadata !{i32 786688, metadata !126, metadata !"colids", metadata !5, i32 331, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colids] [line 331]
!139 = metadata !{i32 786688, metadata !126, metadata !"colind", metadata !5, i32 331, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colind] [line 331]
!140 = metadata !{i32 786688, metadata !126, metadata !"firstlocs", metadata !5, i32 331, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [firstlocs] [line 331]
!141 = metadata !{i32 786688, metadata !126, metadata !"indices", metadata !5, i32 331, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indices] [line 331]
!142 = metadata !{i32 786688, metadata !126, metadata !"pivotsizes", metadata !5, i32 332, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pivotsizes] [line 332]
!143 = metadata !{i32 786688, metadata !126, metadata !"rowids", metadata !5, i32 332, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowids] [line 332]
!144 = metadata !{i32 786688, metadata !126, metadata !"rowind", metadata !5, i32 332, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowind] [line 332]
!145 = metadata !{i32 786688, metadata !126, metadata !"sizes", metadata !5, i32 332, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizes] [line 332]
!146 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SubMtx_writeToFile", metadata !"SubMtx_writeToFile", metadata !"", i32 564, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._SubMtx*, i8*)* @SubMtx_writeToFile, null, null, metadata !147, i32 567} ; [ DW_TAG_subprogram ] [line 564] [def] [scope 567] [SubMtx_writeToFile]
!147 = metadata !{metadata !148, metadata !149, metadata !150, metadata !151, metadata !152, metadata !153}
!148 = metadata !{i32 786689, metadata !146, metadata !"mtx", metadata !5, i32 16777781, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 565]
!149 = metadata !{i32 786689, metadata !146, metadata !"fn", metadata !5, i32 33554998, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fn] [line 566]
!150 = metadata !{i32 786688, metadata !146, metadata !"fp", metadata !5, i32 568, metadata !42, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fp] [line 568]
!151 = metadata !{i32 786688, metadata !146, metadata !"fnlength", metadata !5, i32 569, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fnlength] [line 569]
!152 = metadata !{i32 786688, metadata !146, metadata !"rc", metadata !5, i32 569, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 569]
!153 = metadata !{i32 786688, metadata !146, metadata !"sulength", metadata !5, i32 569, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sulength] [line 569]
!154 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SubMtx_writeToFormattedFile", metadata !"SubMtx_writeToFormattedFile", metadata !"", i32 638, metadata !101, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._SubMtx*, %struct._IO_FILE*)* @SubMtx_writeToFormattedFile, null, null, metadata !155, i32 641} ; [ DW_TAG_subprogram ] [line 638] [def] [scope 641] [SubMtx_writeToFormattedFile]
!155 = metadata !{metadata !156, metadata !157, metadata !158, metadata !159, metadata !160, metadata !161, metadata !162, metadata !163, metadata !164, metadata !165, metadata !166, metadata !167, metadata !168, metadata !169, metadata !170, metadata !171, metadata !172}
!156 = metadata !{i32 786689, metadata !154, metadata !"mtx", metadata !5, i32 16777855, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 639]
!157 = metadata !{i32 786689, metadata !154, metadata !"fp", metadata !5, i32 33555072, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 640]
!158 = metadata !{i32 786688, metadata !154, metadata !"entries", metadata !5, i32 642, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 642]
!159 = metadata !{i32 786688, metadata !154, metadata !"inc1", metadata !5, i32 643, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 643]
!160 = metadata !{i32 786688, metadata !154, metadata !"inc2", metadata !5, i32 643, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 643]
!161 = metadata !{i32 786688, metadata !154, metadata !"ncol", metadata !5, i32 643, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 643]
!162 = metadata !{i32 786688, metadata !154, metadata !"nent", metadata !5, i32 643, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 643]
!163 = metadata !{i32 786688, metadata !154, metadata !"nrow", metadata !5, i32 643, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 643]
!164 = metadata !{i32 786688, metadata !154, metadata !"itemp", metadata !5, i32 644, metadata !114, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [itemp] [line 644]
!165 = metadata !{i32 786688, metadata !154, metadata !"colids", metadata !5, i32 645, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colids] [line 645]
!166 = metadata !{i32 786688, metadata !154, metadata !"colind", metadata !5, i32 645, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colind] [line 645]
!167 = metadata !{i32 786688, metadata !154, metadata !"firstlocs", metadata !5, i32 645, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [firstlocs] [line 645]
!168 = metadata !{i32 786688, metadata !154, metadata !"indices", metadata !5, i32 645, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indices] [line 645]
!169 = metadata !{i32 786688, metadata !154, metadata !"pivotsizes", metadata !5, i32 646, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pivotsizes] [line 646]
!170 = metadata !{i32 786688, metadata !154, metadata !"rowids", metadata !5, i32 646, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowids] [line 646]
!171 = metadata !{i32 786688, metadata !154, metadata !"rowind", metadata !5, i32 646, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowind] [line 646]
!172 = metadata !{i32 786688, metadata !154, metadata !"sizes", metadata !5, i32 646, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizes] [line 646]
!173 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SubMtx_writeToBinaryFile", metadata !"SubMtx_writeToBinaryFile", metadata !"", i32 751, metadata !101, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._SubMtx*, %struct._IO_FILE*)* @SubMtx_writeToBinaryFile, null, null, metadata !174, i32 754} ; [ DW_TAG_subprogram ] [line 751] [def] [scope 754] [SubMtx_writeToBinaryFile]
!174 = metadata !{metadata !175, metadata !176, metadata !177, metadata !178, metadata !179, metadata !180, metadata !181, metadata !182, metadata !183, metadata !184, metadata !185, metadata !186, metadata !187, metadata !188, metadata !189, metadata !190, metadata !191, metadata !192}
!175 = metadata !{i32 786689, metadata !173, metadata !"mtx", metadata !5, i32 16777968, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 752]
!176 = metadata !{i32 786689, metadata !173, metadata !"fp", metadata !5, i32 33555185, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 753]
!177 = metadata !{i32 786688, metadata !173, metadata !"entries", metadata !5, i32 755, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 755]
!178 = metadata !{i32 786688, metadata !173, metadata !"inc1", metadata !5, i32 756, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 756]
!179 = metadata !{i32 786688, metadata !173, metadata !"inc2", metadata !5, i32 756, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 756]
!180 = metadata !{i32 786688, metadata !173, metadata !"ncol", metadata !5, i32 756, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 756]
!181 = metadata !{i32 786688, metadata !173, metadata !"nent", metadata !5, i32 756, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 756]
!182 = metadata !{i32 786688, metadata !173, metadata !"nrow", metadata !5, i32 756, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 756]
!183 = metadata !{i32 786688, metadata !173, metadata !"rc", metadata !5, i32 756, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rc] [line 756]
!184 = metadata !{i32 786688, metadata !173, metadata !"itemp", metadata !5, i32 757, metadata !114, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [itemp] [line 757]
!185 = metadata !{i32 786688, metadata !173, metadata !"colids", metadata !5, i32 758, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colids] [line 758]
!186 = metadata !{i32 786688, metadata !173, metadata !"colind", metadata !5, i32 758, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colind] [line 758]
!187 = metadata !{i32 786688, metadata !173, metadata !"firstlocs", metadata !5, i32 758, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [firstlocs] [line 758]
!188 = metadata !{i32 786688, metadata !173, metadata !"indices", metadata !5, i32 758, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indices] [line 758]
!189 = metadata !{i32 786688, metadata !173, metadata !"pivotsizes", metadata !5, i32 759, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pivotsizes] [line 759]
!190 = metadata !{i32 786688, metadata !173, metadata !"rowids", metadata !5, i32 759, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowids] [line 759]
!191 = metadata !{i32 786688, metadata !173, metadata !"rowind", metadata !5, i32 759, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowind] [line 759]
!192 = metadata !{i32 786688, metadata !173, metadata !"sizes", metadata !5, i32 759, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizes] [line 759]
!193 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SubMtx_writeForHumanEye", metadata !"SubMtx_writeForHumanEye", metadata !"", i32 862, metadata !101, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._SubMtx*, %struct._IO_FILE*)* @SubMtx_writeForHumanEye, null, null, metadata !194, i32 865} ; [ DW_TAG_subprogram ] [line 862] [def] [scope 865] [SubMtx_writeForHumanEye]
!194 = metadata !{metadata !195, metadata !196, metadata !197, metadata !209, metadata !210, metadata !211, metadata !212, metadata !213, metadata !214, metadata !215, metadata !216, metadata !217}
!195 = metadata !{i32 786689, metadata !193, metadata !"mtx", metadata !5, i32 16778079, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 863]
!196 = metadata !{i32 786689, metadata !193, metadata !"fp", metadata !5, i32 33555296, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 864]
!197 = metadata !{i32 786688, metadata !193, metadata !"a2", metadata !5, i32 866, metadata !198, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [a2] [line 866]
!198 = metadata !{i32 786454, metadata !1, null, metadata !"A2", i32 49, i64 0, i64 0, i64 0, i32 0, metadata !199} ; [ DW_TAG_typedef ] [A2] [line 49, size 0, align 0, offset 0] [from _A2]
!199 = metadata !{i32 786451, metadata !200, null, metadata !"_A2", i32 41, i64 256, i64 64, i32 0, i32 0, null, metadata !201, i32 0, null, null} ; [ DW_TAG_structure_type ] [_A2] [line 41, size 256, align 64, offset 0] [from ]
!200 = metadata !{metadata !"../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/../../A2/A2.h", metadata !"/home/arquinn/Project1/EECS583/source_extraction_scripts"}
!201 = metadata !{metadata !202, metadata !203, metadata !204, metadata !205, metadata !206, metadata !207, metadata !208}
!202 = metadata !{i32 786445, metadata !200, metadata !199, metadata !"type", i32 42, i64 32, i64 32, i64 0, i32 0, metadata !8} ; [ DW_TAG_member ] [type] [line 42, size 32, align 32, offset 0] [from int]
!203 = metadata !{i32 786445, metadata !200, metadata !199, metadata !"n1", i32 43, i64 32, i64 32, i64 32, i32 0, metadata !8} ; [ DW_TAG_member ] [n1] [line 43, size 32, align 32, offset 32] [from int]
!204 = metadata !{i32 786445, metadata !200, metadata !199, metadata !"n2", i32 44, i64 32, i64 32, i64 64, i32 0, metadata !8} ; [ DW_TAG_member ] [n2] [line 44, size 32, align 32, offset 64] [from int]
!205 = metadata !{i32 786445, metadata !200, metadata !199, metadata !"inc1", i32 45, i64 32, i64 32, i64 96, i32 0, metadata !8} ; [ DW_TAG_member ] [inc1] [line 45, size 32, align 32, offset 96] [from int]
!206 = metadata !{i32 786445, metadata !200, metadata !199, metadata !"inc2", i32 46, i64 32, i64 32, i64 128, i32 0, metadata !8} ; [ DW_TAG_member ] [inc2] [line 46, size 32, align 32, offset 128] [from int]
!207 = metadata !{i32 786445, metadata !200, metadata !199, metadata !"nowned", i32 47, i64 32, i64 32, i64 160, i32 0, metadata !8} ; [ DW_TAG_member ] [nowned] [line 47, size 32, align 32, offset 160] [from int]
!208 = metadata !{i32 786445, metadata !200, metadata !199, metadata !"entries", i32 48, i64 64, i64 64, i64 192, i32 0, metadata !22} ; [ DW_TAG_member ] [entries] [line 48, size 64, align 64, offset 192] [from ]
!209 = metadata !{i32 786688, metadata !193, metadata !"imag", metadata !5, i32 867, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [imag] [line 867]
!210 = metadata !{i32 786688, metadata !193, metadata !"real", metadata !5, i32 867, metadata !23, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [real] [line 867]
!211 = metadata !{i32 786688, metadata !193, metadata !"ierr", metadata !5, i32 868, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ierr] [line 868]
!212 = metadata !{i32 786688, metadata !193, metadata !"irow", metadata !5, i32 868, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irow] [line 868]
!213 = metadata !{i32 786688, metadata !193, metadata !"jcol", metadata !5, i32 868, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcol] [line 868]
!214 = metadata !{i32 786688, metadata !193, metadata !"ncol", metadata !5, i32 868, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 868]
!215 = metadata !{i32 786688, metadata !193, metadata !"nrow", metadata !5, i32 868, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 868]
!216 = metadata !{i32 786688, metadata !193, metadata !"colind", metadata !5, i32 869, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colind] [line 869]
!217 = metadata !{i32 786688, metadata !193, metadata !"rowind", metadata !5, i32 869, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowind] [line 869]
!218 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SubMtx_writeStats", metadata !"SubMtx_writeStats", metadata !"", i32 916, metadata !101, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, i32 (%struct._SubMtx*, %struct._IO_FILE*)* @SubMtx_writeStats, null, null, metadata !219, i32 919} ; [ DW_TAG_subprogram ] [line 916] [def] [scope 919] [SubMtx_writeStats]
!219 = metadata !{metadata !220, metadata !221}
!220 = metadata !{i32 786689, metadata !218, metadata !"mtx", metadata !5, i32 16778133, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 917]
!221 = metadata !{i32 786689, metadata !218, metadata !"fp", metadata !5, i32 33555350, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 918]
!222 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"SubMtx_writeForMatlab", metadata !"SubMtx_writeForMatlab", metadata !"", i32 995, metadata !223, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 true, void (%struct._SubMtx*, i8*, %struct._IO_FILE*)* @SubMtx_writeForMatlab, null, null, metadata !225, i32 999} ; [ DW_TAG_subprogram ] [line 995] [def] [scope 999] [SubMtx_writeForMatlab]
!223 = metadata !{i32 786453, i32 0, i32 0, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !224, i32 0, i32 0} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!224 = metadata !{null, metadata !9, metadata !36, metadata !42}
!225 = metadata !{metadata !226, metadata !227, metadata !228, metadata !229, metadata !230, metadata !231, metadata !232, metadata !233, metadata !235, metadata !236, metadata !237, metadata !238, metadata !239, metadata !240, metadata !241, metadata !242, metadata !244, metadata !245, metadata !246, metadata !247, metadata !248, metadata !249, metadata !250, metadata !251, metadata !252, metadata !254, metadata !255, metadata !256, metadata !257, metadata !258, metadata !259, metadata !260, metadata !261, metadata !262, metadata !264, metadata !265, metadata !266, metadata !267, metadata !268, metadata !269, metadata !270, metadata !272, metadata !273, metadata !274, metadata !275, metadata !276, metadata !277, metadata !278, metadata !279, metadata !280, metadata !281, metadata !283, metadata !284, metadata !285, metadata !286, metadata !287, metadata !288, metadata !289, metadata !290, metadata !291, metadata !292, metadata !294, metadata !295, metadata !296, metadata !298, metadata !299, metadata !300, metadata !301, metadata !302, metadata !303, metadata !304, metadata !305, metadata !306, metadata !307, metadata !309, metadata !310, metadata !311, metadata !312, metadata !313, metadata !314, metadata !315, metadata !316, metadata !317}
!226 = metadata !{i32 786689, metadata !222, metadata !"mtx", metadata !5, i32 16778212, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtx] [line 996]
!227 = metadata !{i32 786689, metadata !222, metadata !"mtxname", metadata !5, i32 33555429, metadata !36, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [mtxname] [line 997]
!228 = metadata !{i32 786689, metadata !222, metadata !"fp", metadata !5, i32 50332646, metadata !42, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [fp] [line 998]
!229 = metadata !{i32 786688, metadata !222, metadata !"ncol", metadata !5, i32 1000, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 1000]
!230 = metadata !{i32 786688, metadata !222, metadata !"nrow", metadata !5, i32 1000, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 1000]
!231 = metadata !{i32 786688, metadata !222, metadata !"colind", metadata !5, i32 1001, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colind] [line 1001]
!232 = metadata !{i32 786688, metadata !222, metadata !"rowind", metadata !5, i32 1001, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowind] [line 1001]
!233 = metadata !{i32 786688, metadata !234, metadata !"ij", metadata !5, i32 1015, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ij] [line 1015]
!234 = metadata !{i32 786443, metadata !1, metadata !222, i32 1014, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!235 = metadata !{i32 786688, metadata !234, metadata !"inc1", metadata !5, i32 1015, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc1] [line 1015]
!236 = metadata !{i32 786688, metadata !234, metadata !"inc2", metadata !5, i32 1015, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [inc2] [line 1015]
!237 = metadata !{i32 786688, metadata !234, metadata !"irow", metadata !5, i32 1015, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irow] [line 1015]
!238 = metadata !{i32 786688, metadata !234, metadata !"jcol", metadata !5, i32 1015, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcol] [line 1015]
!239 = metadata !{i32 786688, metadata !234, metadata !"ncol", metadata !5, i32 1015, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 1015]
!240 = metadata !{i32 786688, metadata !234, metadata !"nrow", metadata !5, i32 1015, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 1015]
!241 = metadata !{i32 786688, metadata !234, metadata !"entries", metadata !5, i32 1016, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 1016]
!242 = metadata !{i32 786688, metadata !243, metadata !"entries", metadata !5, i32 1033, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 1033]
!243 = metadata !{i32 786443, metadata !1, metadata !222, i32 1032, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!244 = metadata !{i32 786688, metadata !243, metadata !"ii", metadata !5, i32 1034, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 1034]
!245 = metadata !{i32 786688, metadata !243, metadata !"irow", metadata !5, i32 1034, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irow] [line 1034]
!246 = metadata !{i32 786688, metadata !243, metadata !"jcol", metadata !5, i32 1034, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcol] [line 1034]
!247 = metadata !{i32 786688, metadata !243, metadata !"nent", metadata !5, i32 1034, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 1034]
!248 = metadata !{i32 786688, metadata !243, metadata !"nrow", metadata !5, i32 1034, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 1034]
!249 = metadata !{i32 786688, metadata !243, metadata !"rowsize", metadata !5, i32 1034, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowsize] [line 1034]
!250 = metadata !{i32 786688, metadata !243, metadata !"indices", metadata !5, i32 1034, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indices] [line 1034]
!251 = metadata !{i32 786688, metadata !243, metadata !"sizes", metadata !5, i32 1034, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizes] [line 1034]
!252 = metadata !{i32 786688, metadata !253, metadata !"entries", metadata !5, i32 1059, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 1059]
!253 = metadata !{i32 786443, metadata !1, metadata !222, i32 1058, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!254 = metadata !{i32 786688, metadata !253, metadata !"colsize", metadata !5, i32 1060, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colsize] [line 1060]
!255 = metadata !{i32 786688, metadata !253, metadata !"ii", metadata !5, i32 1060, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 1060]
!256 = metadata !{i32 786688, metadata !253, metadata !"irow", metadata !5, i32 1060, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irow] [line 1060]
!257 = metadata !{i32 786688, metadata !253, metadata !"jcol", metadata !5, i32 1060, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcol] [line 1060]
!258 = metadata !{i32 786688, metadata !253, metadata !"nent", metadata !5, i32 1060, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 1060]
!259 = metadata !{i32 786688, metadata !253, metadata !"ncol", metadata !5, i32 1060, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 1060]
!260 = metadata !{i32 786688, metadata !253, metadata !"indices", metadata !5, i32 1060, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [indices] [line 1060]
!261 = metadata !{i32 786688, metadata !253, metadata !"sizes", metadata !5, i32 1060, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizes] [line 1060]
!262 = metadata !{i32 786688, metadata !263, metadata !"entries", metadata !5, i32 1085, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 1085]
!263 = metadata !{i32 786443, metadata !1, metadata !222, i32 1084, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!264 = metadata !{i32 786688, metadata !263, metadata !"ii", metadata !5, i32 1086, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 1086]
!265 = metadata !{i32 786688, metadata !263, metadata !"irow", metadata !5, i32 1086, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irow] [line 1086]
!266 = metadata !{i32 786688, metadata !263, metadata !"jcol", metadata !5, i32 1086, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcol] [line 1086]
!267 = metadata !{i32 786688, metadata !263, metadata !"nent", metadata !5, i32 1086, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 1086]
!268 = metadata !{i32 786688, metadata !263, metadata !"colids", metadata !5, i32 1086, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [colids] [line 1086]
!269 = metadata !{i32 786688, metadata !263, metadata !"rowids", metadata !5, i32 1086, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [rowids] [line 1086]
!270 = metadata !{i32 786688, metadata !271, metadata !"entries", metadata !5, i32 1102, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 1102]
!271 = metadata !{i32 786443, metadata !1, metadata !222, i32 1101, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!272 = metadata !{i32 786688, metadata !271, metadata !"first", metadata !5, i32 1103, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [first] [line 1103]
!273 = metadata !{i32 786688, metadata !271, metadata !"ii", metadata !5, i32 1103, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 1103]
!274 = metadata !{i32 786688, metadata !271, metadata !"irow", metadata !5, i32 1103, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irow] [line 1103]
!275 = metadata !{i32 786688, metadata !271, metadata !"jcol", metadata !5, i32 1103, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcol] [line 1103]
!276 = metadata !{i32 786688, metadata !271, metadata !"last", metadata !5, i32 1103, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [last] [line 1103]
!277 = metadata !{i32 786688, metadata !271, metadata !"nent", metadata !5, i32 1103, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 1103]
!278 = metadata !{i32 786688, metadata !271, metadata !"nrow", metadata !5, i32 1103, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nrow] [line 1103]
!279 = metadata !{i32 786688, metadata !271, metadata !"firstlocs", metadata !5, i32 1104, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [firstlocs] [line 1104]
!280 = metadata !{i32 786688, metadata !271, metadata !"sizes", metadata !5, i32 1104, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizes] [line 1104]
!281 = metadata !{i32 786688, metadata !282, metadata !"entries", metadata !5, i32 1131, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 1131]
!282 = metadata !{i32 786443, metadata !1, metadata !222, i32 1130, i32 0, i32 127} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!283 = metadata !{i32 786688, metadata !282, metadata !"first", metadata !5, i32 1132, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [first] [line 1132]
!284 = metadata !{i32 786688, metadata !282, metadata !"ii", metadata !5, i32 1132, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 1132]
!285 = metadata !{i32 786688, metadata !282, metadata !"irow", metadata !5, i32 1132, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irow] [line 1132]
!286 = metadata !{i32 786688, metadata !282, metadata !"jcol", metadata !5, i32 1132, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jcol] [line 1132]
!287 = metadata !{i32 786688, metadata !282, metadata !"last", metadata !5, i32 1132, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [last] [line 1132]
!288 = metadata !{i32 786688, metadata !282, metadata !"ncol", metadata !5, i32 1132, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 1132]
!289 = metadata !{i32 786688, metadata !282, metadata !"nent", metadata !5, i32 1132, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 1132]
!290 = metadata !{i32 786688, metadata !282, metadata !"firstlocs", metadata !5, i32 1133, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [firstlocs] [line 1133]
!291 = metadata !{i32 786688, metadata !282, metadata !"sizes", metadata !5, i32 1133, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [sizes] [line 1133]
!292 = metadata !{i32 786688, metadata !293, metadata !"entries", metadata !5, i32 1160, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 1160]
!293 = metadata !{i32 786443, metadata !1, metadata !222, i32 1159, i32 0, i32 137} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!294 = metadata !{i32 786688, metadata !293, metadata !"irow", metadata !5, i32 1161, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irow] [line 1161]
!295 = metadata !{i32 786688, metadata !293, metadata !"nent", metadata !5, i32 1161, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 1161]
!296 = metadata !{i32 786688, metadata !297, metadata !"entries", metadata !5, i32 1175, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 1175]
!297 = metadata !{i32 786443, metadata !1, metadata !222, i32 1174, i32 0, i32 142} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!298 = metadata !{i32 786688, metadata !297, metadata !"ii", metadata !5, i32 1176, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 1176]
!299 = metadata !{i32 786688, metadata !297, metadata !"ipivot", metadata !5, i32 1176, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ipivot] [line 1176]
!300 = metadata !{i32 786688, metadata !297, metadata !"irow", metadata !5, i32 1176, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irow] [line 1176]
!301 = metadata !{i32 786688, metadata !297, metadata !"jj", metadata !5, i32 1176, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 1176]
!302 = metadata !{i32 786688, metadata !297, metadata !"m", metadata !5, i32 1176, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 1176]
!303 = metadata !{i32 786688, metadata !297, metadata !"kk", metadata !5, i32 1176, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 1176]
!304 = metadata !{i32 786688, metadata !297, metadata !"ncol", metadata !5, i32 1176, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 1176]
!305 = metadata !{i32 786688, metadata !297, metadata !"nent", metadata !5, i32 1176, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 1176]
!306 = metadata !{i32 786688, metadata !297, metadata !"pivotsizes", metadata !5, i32 1177, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pivotsizes] [line 1177]
!307 = metadata !{i32 786688, metadata !308, metadata !"entries", metadata !5, i32 1210, metadata !22, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [entries] [line 1210]
!308 = metadata !{i32 786443, metadata !1, metadata !222, i32 1209, i32 0, i32 154} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!309 = metadata !{i32 786688, metadata !308, metadata !"ii", metadata !5, i32 1211, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ii] [line 1211]
!310 = metadata !{i32 786688, metadata !308, metadata !"ipivot", metadata !5, i32 1211, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ipivot] [line 1211]
!311 = metadata !{i32 786688, metadata !308, metadata !"irow", metadata !5, i32 1211, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irow] [line 1211]
!312 = metadata !{i32 786688, metadata !308, metadata !"jj", metadata !5, i32 1211, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [jj] [line 1211]
!313 = metadata !{i32 786688, metadata !308, metadata !"m", metadata !5, i32 1211, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [m] [line 1211]
!314 = metadata !{i32 786688, metadata !308, metadata !"kk", metadata !5, i32 1211, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kk] [line 1211]
!315 = metadata !{i32 786688, metadata !308, metadata !"ncol", metadata !5, i32 1211, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ncol] [line 1211]
!316 = metadata !{i32 786688, metadata !308, metadata !"nent", metadata !5, i32 1211, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nent] [line 1211]
!317 = metadata !{i32 786688, metadata !308, metadata !"pivotsizes", metadata !5, i32 1212, metadata !118, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pivotsizes] [line 1212]
!318 = metadata !{metadata !319, metadata !322}
!319 = metadata !{i32 786484, i32 0, null, metadata !"suffixf", metadata !"suffixf", metadata !"", metadata !5, i32 8, metadata !320, i32 1, i32 1, null, null}
!320 = metadata !{i32 786447, null, null, metadata !"", i32 0, i64 64, i64 64, i64 0, i32 0, metadata !321} ; [ DW_TAG_pointer_type ] [line 0, size 64, align 64, offset 0] [from ]
!321 = metadata !{i32 786470, null, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, metadata !37} ; [ DW_TAG_const_type ] [line 0, size 0, align 0, offset 0] [from char]
!322 = metadata !{i32 786484, i32 0, null, metadata !"suffixb", metadata !"suffixb", metadata !"", metadata !5, i32 7, metadata !320, i32 1, i32 1, null, null}
!323 = metadata !{i32 26, i32 0, metadata !4, null}
!324 = metadata !{i32 27, i32 0, metadata !4, null}
!325 = metadata !{i32 36, i32 0, metadata !4, null}
!326 = metadata !{i32 37, i32 0, metadata !327, null}
!327 = metadata !{i32 786443, metadata !1, metadata !4, i32 36, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!328 = metadata !{metadata !"any pointer", metadata !329}
!329 = metadata !{metadata !"omnipotent char", metadata !330}
!330 = metadata !{metadata !"Simple C/C++ TBAA"}
!331 = metadata !{i32 39, i32 0, metadata !327, null}
!332 = metadata !{i32 46, i32 0, metadata !4, null}
!333 = metadata !{i32 8}
!334 = metadata !{i32 47, i32 0, metadata !4, null}
!335 = metadata !{i32 48, i32 0, metadata !4, null}
!336 = metadata !{i32 49, i32 0, metadata !337, null}
!337 = metadata !{i32 786443, metadata !1, metadata !4, i32 48, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!338 = metadata !{i32 50, i32 0, metadata !339, null}
!339 = metadata !{i32 786443, metadata !1, metadata !337, i32 49, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!340 = metadata !{i32 51, i32 0, metadata !341, null}
!341 = metadata !{i32 786443, metadata !1, metadata !339, i32 50, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!342 = metadata !{i32 53, i32 0, metadata !341, null}
!343 = metadata !{i32 54, i32 0, metadata !341, null}
!344 = metadata !{i32 55, i32 0, metadata !345, null}
!345 = metadata !{i32 786443, metadata !1, metadata !339, i32 54, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!346 = metadata !{i32 56, i32 0, metadata !345, null}
!347 = metadata !{i32 58, i32 0, metadata !337, null} ; [ DW_TAG_imported_module ]
!348 = metadata !{i32 59, i32 0, metadata !349, null}
!349 = metadata !{i32 786443, metadata !1, metadata !337, i32 58, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!350 = metadata !{i32 60, i32 0, metadata !351, null}
!351 = metadata !{i32 786443, metadata !1, metadata !349, i32 59, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!352 = metadata !{i32 62, i32 0, metadata !351, null}
!353 = metadata !{i32 63, i32 0, metadata !351, null}
!354 = metadata !{i32 64, i32 0, metadata !355, null}
!355 = metadata !{i32 786443, metadata !1, metadata !349, i32 63, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!356 = metadata !{i32 65, i32 0, metadata !355, null}
!357 = metadata !{i32 68, i32 0, metadata !358, null}
!358 = metadata !{i32 786443, metadata !1, metadata !337, i32 67, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!359 = metadata !{i32 72, i32 0, metadata !358, null}
!360 = metadata !{i32 75, i32 0, metadata !361, null}
!361 = metadata !{i32 786443, metadata !1, metadata !4, i32 74, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!362 = metadata !{i32 79, i32 0, metadata !361, null}
!363 = metadata !{i32 81, i32 0, metadata !4, null}
!364 = metadata !{i32 325, i32 0, metadata !126, null}
!365 = metadata !{i32 326, i32 0, metadata !126, null}
!366 = metadata !{i32 328, i32 0, metadata !126, null}
!367 = metadata !{i32 329, i32 0, metadata !126, null}
!368 = metadata !{i32 330, i32 0, metadata !126, null}
!369 = metadata !{i32 331, i32 0, metadata !126, null}
!370 = metadata !{i32 332, i32 0, metadata !126, null}
!371 = metadata !{i32 338, i32 0, metadata !126, null}
!372 = metadata !{i32 339, i32 0, metadata !373, null}
!373 = metadata !{i32 786443, metadata !1, metadata !126, i32 338, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!374 = metadata !{i32 341, i32 0, metadata !373, null}
!375 = metadata !{i32 343, i32 0, metadata !126, null}
!376 = metadata !{i32 349, i32 0, metadata !126, null}
!377 = metadata !{i32 350, i32 0, metadata !378, null}
!378 = metadata !{i32 786443, metadata !1, metadata !126, i32 349, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!379 = metadata !{i32 352, i32 0, metadata !378, null}
!380 = metadata !{i32 359, i32 0, metadata !126, null}
!381 = metadata !{i32 364, i32 0, metadata !382, null}
!382 = metadata !{i32 786443, metadata !1, metadata !126, i32 359, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!383 = metadata !{i32 366, i32 0, metadata !382, null}
!384 = metadata !{i32 373, i32 0, metadata !126, null}
!385 = metadata !{i32 385, i32 0, metadata !386, null}
!386 = metadata !{i32 786443, metadata !1, metadata !126, i32 373, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!387 = metadata !{i32 387, i32 0, metadata !386, null}
!388 = metadata !{i32 394, i32 0, metadata !126, null}
!389 = metadata !{metadata !"int", metadata !329}
!390 = metadata !{i32 401, i32 0, metadata !126, null}
!391 = metadata !{i32 402, i32 0, metadata !126, null}
!392 = metadata !{i32 403, i32 0, metadata !393, null}
!393 = metadata !{i32 786443, metadata !1, metadata !126, i32 402, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!394 = metadata !{i32 405, i32 0, metadata !393, null}
!395 = metadata !{i32 412, i32 0, metadata !126, null}
!396 = metadata !{i32 413, i32 0, metadata !126, null}
!397 = metadata !{i32 414, i32 0, metadata !398, null}
!398 = metadata !{i32 786443, metadata !1, metadata !126, i32 413, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!399 = metadata !{i32 416, i32 0, metadata !398, null}
!400 = metadata !{i32 423, i32 0, metadata !126, null}
!401 = metadata !{i32 426, i32 0, metadata !402, null}
!402 = metadata !{i32 786443, metadata !1, metadata !126, i32 423, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!403 = metadata !{i32 427, i32 0, metadata !402, null}
!404 = metadata !{i32 428, i32 0, metadata !402, null}
!405 = metadata !{i32 430, i32 0, metadata !402, null}
!406 = metadata !{i32 432, i32 0, metadata !402, null}
!407 = metadata !{i32 433, i32 0, metadata !408, null}
!408 = metadata !{i32 786443, metadata !1, metadata !402, i32 432, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!409 = metadata !{i32 435, i32 0, metadata !408, null}
!410 = metadata !{i32 437, i32 0, metadata !402, null}
!411 = metadata !{i32 438, i32 0, metadata !412, null}
!412 = metadata !{i32 786443, metadata !1, metadata !402, i32 437, i32 0, i32 40} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!413 = metadata !{i32 440, i32 0, metadata !412, null}
!414 = metadata !{i32 444, i32 0, metadata !402, null}
!415 = metadata !{i32 446, i32 0, metadata !402, null}
!416 = metadata !{i32 447, i32 0, metadata !417, null}
!417 = metadata !{i32 786443, metadata !1, metadata !402, i32 446, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!418 = metadata !{i32 449, i32 0, metadata !417, null}
!419 = metadata !{i32 451, i32 0, metadata !402, null}
!420 = metadata !{i32 452, i32 0, metadata !421, null}
!421 = metadata !{i32 786443, metadata !1, metadata !402, i32 451, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!422 = metadata !{i32 454, i32 0, metadata !421, null}
!423 = metadata !{i32 458, i32 0, metadata !402, null}
!424 = metadata !{i32 459, i32 0, metadata !402, null}
!425 = metadata !{i32 460, i32 0, metadata !426, null}
!426 = metadata !{i32 786443, metadata !1, metadata !402, i32 459, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!427 = metadata !{i32 463, i32 0, metadata !426, null}
!428 = metadata !{i32 465, i32 0, metadata !402, null}
!429 = metadata !{i32 466, i32 0, metadata !430, null}
!430 = metadata !{i32 786443, metadata !1, metadata !402, i32 465, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!431 = metadata !{i32 469, i32 0, metadata !430, null}
!432 = metadata !{i32 473, i32 0, metadata !402, null}
!433 = metadata !{i32 475, i32 0, metadata !402, null}
!434 = metadata !{i32 477, i32 0, metadata !435, null}
!435 = metadata !{i32 786443, metadata !1, metadata !402, i32 476, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!436 = metadata !{i32 480, i32 0, metadata !435, null}
!437 = metadata !{i32 482, i32 0, metadata !402, null}
!438 = metadata !{i32 484, i32 0, metadata !439, null}
!439 = metadata !{i32 786443, metadata !1, metadata !402, i32 483, i32 0, i32 46} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!440 = metadata !{i32 487, i32 0, metadata !439, null}
!441 = metadata !{i32 491, i32 0, metadata !402, null}
!442 = metadata !{i32 493, i32 0, metadata !402, null}
!443 = metadata !{i32 495, i32 0, metadata !444, null}
!444 = metadata !{i32 786443, metadata !1, metadata !402, i32 494, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!445 = metadata !{i32 498, i32 0, metadata !444, null}
!446 = metadata !{i32 500, i32 0, metadata !402, null}
!447 = metadata !{i32 502, i32 0, metadata !448, null}
!448 = metadata !{i32 786443, metadata !1, metadata !402, i32 501, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!449 = metadata !{i32 505, i32 0, metadata !448, null}
!450 = metadata !{i32 509, i32 0, metadata !402, null}
!451 = metadata !{i32 510, i32 0, metadata !402, null}
!452 = metadata !{i32 513, i32 0, metadata !402, null}
!453 = metadata !{i32 514, i32 0, metadata !402, null}
!454 = metadata !{i32 516, i32 0, metadata !455, null}
!455 = metadata !{i32 786443, metadata !1, metadata !402, i32 515, i32 0, i32 49} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!456 = metadata !{i32 519, i32 0, metadata !455, null}
!457 = metadata !{i32 528, i32 0, metadata !126, null}
!458 = metadata !{i32 529, i32 0, metadata !459, null}
!459 = metadata !{i32 786443, metadata !1, metadata !126, i32 528, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!460 = metadata !{i32 531, i32 0, metadata !461, null}
!461 = metadata !{i32 786443, metadata !1, metadata !459, i32 530, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!462 = metadata !{i32 533, i32 0, metadata !461, null}
!463 = metadata !{i32 536, i32 0, metadata !464, null}
!464 = metadata !{i32 786443, metadata !1, metadata !126, i32 535, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!465 = metadata !{i32 538, i32 0, metadata !466, null}
!466 = metadata !{i32 786443, metadata !1, metadata !464, i32 537, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!467 = metadata !{i32 540, i32 0, metadata !466, null}
!468 = metadata !{i32 544, i32 0, metadata !126, null}
!469 = metadata !{i32 95, i32 0, metadata !100, null}
!470 = metadata !{i32 96, i32 0, metadata !100, null}
!471 = metadata !{i32 98, i32 0, metadata !100, null}
!472 = metadata !{i32 99, i32 0, metadata !100, null}
!473 = metadata !{i32 100, i32 0, metadata !100, null}
!474 = metadata !{i32 101, i32 0, metadata !100, null}
!475 = metadata !{i32 102, i32 0, metadata !100, null}
!476 = metadata !{i32 108, i32 0, metadata !100, null}
!477 = metadata !{i32 109, i32 0, metadata !478, null}
!478 = metadata !{i32 786443, metadata !1, metadata !100, i32 108, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!479 = metadata !{i32 111, i32 0, metadata !478, null}
!480 = metadata !{i32 113, i32 0, metadata !100, null}
!481 = metadata !{i32 119, i32 0, metadata !100, null}
!482 = metadata !{i32 120, i32 0, metadata !483, null}
!483 = metadata !{i32 786443, metadata !1, metadata !100, i32 119, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!484 = metadata !{i32 122, i32 0, metadata !483, null}
!485 = metadata !{i32 129, i32 0, metadata !100, null}
!486 = metadata !{i32 134, i32 0, metadata !487, null}
!487 = metadata !{i32 786443, metadata !1, metadata !100, i32 129, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!488 = metadata !{i32 136, i32 0, metadata !487, null}
!489 = metadata !{i32 143, i32 0, metadata !100, null}
!490 = metadata !{i32 155, i32 0, metadata !491, null}
!491 = metadata !{i32 786443, metadata !1, metadata !100, i32 143, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!492 = metadata !{i32 157, i32 0, metadata !491, null}
!493 = metadata !{i32 164, i32 0, metadata !100, null}
!494 = metadata !{i32 171, i32 0, metadata !100, null}
!495 = metadata !{i32 172, i32 0, metadata !100, null}
!496 = metadata !{i32 173, i32 0, metadata !497, null}
!497 = metadata !{i32 786443, metadata !1, metadata !100, i32 172, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!498 = metadata !{i32 175, i32 0, metadata !497, null}
!499 = metadata !{i32 182, i32 0, metadata !100, null}
!500 = metadata !{i32 183, i32 0, metadata !100, null}
!501 = metadata !{i32 184, i32 0, metadata !502, null}
!502 = metadata !{i32 786443, metadata !1, metadata !100, i32 183, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!503 = metadata !{i32 186, i32 0, metadata !502, null}
!504 = metadata !{i32 193, i32 0, metadata !100, null}
!505 = metadata !{i32 196, i32 0, metadata !506, null}
!506 = metadata !{i32 786443, metadata !1, metadata !100, i32 193, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!507 = metadata !{i32 197, i32 0, metadata !506, null}
!508 = metadata !{i32 198, i32 0, metadata !506, null}
!509 = metadata !{i32 200, i32 0, metadata !506, null}
!510 = metadata !{i32 201, i32 0, metadata !506, null}
!511 = metadata !{i32 202, i32 0, metadata !512, null}
!512 = metadata !{i32 786443, metadata !1, metadata !506, i32 201, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!513 = metadata !{i32 205, i32 0, metadata !512, null}
!514 = metadata !{i32 207, i32 0, metadata !506, null}
!515 = metadata !{i32 208, i32 0, metadata !516, null}
!516 = metadata !{i32 786443, metadata !1, metadata !506, i32 207, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!517 = metadata !{i32 211, i32 0, metadata !516, null}
!518 = metadata !{i32 215, i32 0, metadata !506, null}
!519 = metadata !{i32 217, i32 0, metadata !506, null}
!520 = metadata !{i32 218, i32 0, metadata !521, null}
!521 = metadata !{i32 786443, metadata !1, metadata !506, i32 217, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!522 = metadata !{i32 221, i32 0, metadata !521, null}
!523 = metadata !{i32 223, i32 0, metadata !506, null}
!524 = metadata !{i32 224, i32 0, metadata !525, null}
!525 = metadata !{i32 786443, metadata !1, metadata !506, i32 223, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!526 = metadata !{i32 227, i32 0, metadata !525, null}
!527 = metadata !{i32 231, i32 0, metadata !506, null}
!528 = metadata !{i32 232, i32 0, metadata !506, null}
!529 = metadata !{i32 233, i32 0, metadata !530, null}
!530 = metadata !{i32 786443, metadata !1, metadata !506, i32 232, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!531 = metadata !{i32 236, i32 0, metadata !530, null}
!532 = metadata !{i32 238, i32 0, metadata !506, null}
!533 = metadata !{i32 239, i32 0, metadata !534, null}
!534 = metadata !{i32 786443, metadata !1, metadata !506, i32 238, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!535 = metadata !{i32 242, i32 0, metadata !534, null}
!536 = metadata !{i32 246, i32 0, metadata !506, null}
!537 = metadata !{i32 248, i32 0, metadata !506, null}
!538 = metadata !{i32 249, i32 0, metadata !539, null}
!539 = metadata !{i32 786443, metadata !1, metadata !506, i32 248, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!540 = metadata !{i32 252, i32 0, metadata !539, null}
!541 = metadata !{i32 254, i32 0, metadata !506, null}
!542 = metadata !{i32 255, i32 0, metadata !543, null}
!543 = metadata !{i32 786443, metadata !1, metadata !506, i32 254, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!544 = metadata !{i32 258, i32 0, metadata !543, null}
!545 = metadata !{i32 262, i32 0, metadata !506, null}
!546 = metadata !{i32 264, i32 0, metadata !506, null}
!547 = metadata !{i32 265, i32 0, metadata !548, null}
!548 = metadata !{i32 786443, metadata !1, metadata !506, i32 264, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!549 = metadata !{i32 268, i32 0, metadata !548, null}
!550 = metadata !{i32 270, i32 0, metadata !506, null}
!551 = metadata !{i32 271, i32 0, metadata !552, null}
!552 = metadata !{i32 786443, metadata !1, metadata !506, i32 270, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!553 = metadata !{i32 274, i32 0, metadata !552, null}
!554 = metadata !{i32 278, i32 0, metadata !506, null}
!555 = metadata !{i32 279, i32 0, metadata !506, null}
!556 = metadata !{i32 282, i32 0, metadata !506, null}
!557 = metadata !{i32 283, i32 0, metadata !506, null}
!558 = metadata !{i32 284, i32 0, metadata !559, null}
!559 = metadata !{i32 786443, metadata !1, metadata !506, i32 283, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!560 = metadata !{i32 287, i32 0, metadata !559, null}
!561 = metadata !{i32 296, i32 0, metadata !100, null}
!562 = metadata !{i32 297, i32 0, metadata !563, null}
!563 = metadata !{i32 786443, metadata !1, metadata !100, i32 296, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!564 = metadata !{i32 298, i32 0, metadata !565, null}
!565 = metadata !{i32 786443, metadata !1, metadata !563, i32 297, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!566 = metadata !{i32 301, i32 0, metadata !565, null}
!567 = metadata !{i32 304, i32 0, metadata !568, null}
!568 = metadata !{i32 786443, metadata !1, metadata !100, i32 303, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!569 = metadata !{i32 305, i32 0, metadata !570, null}
!570 = metadata !{i32 786443, metadata !1, metadata !568, i32 304, i32 0, i32 31} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!571 = metadata !{i32 308, i32 0, metadata !570, null}
!572 = metadata !{i32 311, i32 0, metadata !100, null}
!573 = metadata !{i32 565, i32 0, metadata !146, null}
!574 = metadata !{i32 566, i32 0, metadata !146, null}
!575 = metadata !{i32 575, i32 0, metadata !146, null}
!576 = metadata !{i32 576, i32 0, metadata !577, null}
!577 = metadata !{i32 786443, metadata !1, metadata !146, i32 575, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!578 = metadata !{i32 578, i32 0, metadata !577, null}
!579 = metadata !{i32 584, i32 0, metadata !146, null}
!580 = metadata !{i32 585, i32 0, metadata !146, null}
!581 = metadata !{i32 586, i32 0, metadata !146, null}
!582 = metadata !{i32 587, i32 0, metadata !583, null}
!583 = metadata !{i32 786443, metadata !1, metadata !146, i32 586, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!584 = metadata !{i32 588, i32 0, metadata !585, null}
!585 = metadata !{i32 786443, metadata !1, metadata !583, i32 587, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!586 = metadata !{i32 589, i32 0, metadata !587, null}
!587 = metadata !{i32 786443, metadata !1, metadata !585, i32 588, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!588 = metadata !{i32 591, i32 0, metadata !587, null}
!589 = metadata !{i32 592, i32 0, metadata !587, null}
!590 = metadata !{i32 593, i32 0, metadata !591, null}
!591 = metadata !{i32 786443, metadata !1, metadata !585, i32 592, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!592 = metadata !{i32 1}
!593 = metadata !{i32 594, i32 0, metadata !591, null}
!594 = metadata !{i32 596, i32 0, metadata !583, null}
!595 = metadata !{i32 597, i32 0, metadata !596, null}
!596 = metadata !{i32 786443, metadata !1, metadata !583, i32 596, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!597 = metadata !{i32 598, i32 0, metadata !598, null}
!598 = metadata !{i32 786443, metadata !1, metadata !596, i32 597, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!599 = metadata !{i32 600, i32 0, metadata !598, null}
!600 = metadata !{i32 601, i32 0, metadata !598, null}
!601 = metadata !{i32 602, i32 0, metadata !602, null}
!602 = metadata !{i32 786443, metadata !1, metadata !596, i32 601, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!603 = metadata !{i32 603, i32 0, metadata !602, null}
!604 = metadata !{i32 606, i32 0, metadata !605, null}
!605 = metadata !{i32 786443, metadata !1, metadata !583, i32 605, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!606 = metadata !{i32 607, i32 0, metadata !607, null}
!607 = metadata !{i32 786443, metadata !1, metadata !605, i32 606, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!608 = metadata !{i32 609, i32 0, metadata !607, null}
!609 = metadata !{i32 610, i32 0, metadata !607, null}
!610 = metadata !{i32 611, i32 0, metadata !611, null}
!611 = metadata !{i32 786443, metadata !1, metadata !605, i32 610, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!612 = metadata !{i32 612, i32 0, metadata !611, null}
!613 = metadata !{i32 616, i32 0, metadata !614, null}
!614 = metadata !{i32 786443, metadata !1, metadata !146, i32 615, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!615 = metadata !{i32 617, i32 0, metadata !616, null}
!616 = metadata !{i32 786443, metadata !1, metadata !614, i32 616, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!617 = metadata !{i32 619, i32 0, metadata !616, null}
!618 = metadata !{i32 620, i32 0, metadata !616, null}
!619 = metadata !{i32 621, i32 0, metadata !620, null}
!620 = metadata !{i32 786443, metadata !1, metadata !614, i32 620, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!621 = metadata !{i32 622, i32 0, metadata !620, null}
!622 = metadata !{i32 625, i32 0, metadata !146, null}
!623 = metadata !{i32 752, i32 0, metadata !173, null}
!624 = metadata !{i32 753, i32 0, metadata !173, null}
!625 = metadata !{i32 755, i32 0, metadata !173, null}
!626 = metadata !{i32 756, i32 0, metadata !173, null}
!627 = metadata !{i32 757, i32 0, metadata !173, null}
!628 = metadata !{i32 758, i32 0, metadata !173, null}
!629 = metadata !{i32 759, i32 0, metadata !173, null}
!630 = metadata !{i32 765, i32 0, metadata !173, null}
!631 = metadata !{i32 766, i32 0, metadata !632, null}
!632 = metadata !{i32 786443, metadata !1, metadata !173, i32 765, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!633 = metadata !{i32 768, i32 0, metadata !632, null}
!634 = metadata !{i32 775, i32 0, metadata !173, null}
!635 = metadata !{i32 776, i32 0, metadata !173, null}
!636 = metadata !{i32 777, i32 0, metadata !173, null}
!637 = metadata !{i32 778, i32 0, metadata !173, null}
!638 = metadata !{i32 779, i32 0, metadata !173, null}
!639 = metadata !{i32 780, i32 0, metadata !173, null}
!640 = metadata !{i32 781, i32 0, metadata !173, null}
!641 = metadata !{i32 782, i32 0, metadata !173, null}
!642 = metadata !{i32 788, i32 0, metadata !173, null}
!643 = metadata !{i32 789, i32 0, metadata !173, null}
!644 = metadata !{i32 790, i32 0, metadata !173, null}
!645 = metadata !{i32 791, i32 0, metadata !173, null}
!646 = metadata !{i32 797, i32 0, metadata !173, null}
!647 = metadata !{i32 800, i32 0, metadata !648, null}
!648 = metadata !{i32 786443, metadata !1, metadata !173, i32 797, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!649 = metadata !{i32 801, i32 0, metadata !648, null}
!650 = metadata !{i32 802, i32 0, metadata !648, null}
!651 = metadata !{i32 804, i32 0, metadata !648, null}
!652 = metadata !{i32 806, i32 0, metadata !648, null}
!653 = metadata !{i32 807, i32 0, metadata !648, null}
!654 = metadata !{i32 808, i32 0, metadata !648, null}
!655 = metadata !{i32 810, i32 0, metadata !648, null}
!656 = metadata !{i32 812, i32 0, metadata !648, null}
!657 = metadata !{i32 813, i32 0, metadata !648, null}
!658 = metadata !{i32 814, i32 0, metadata !648, null}
!659 = metadata !{i32 816, i32 0, metadata !648, null}
!660 = metadata !{i32 817, i32 0, metadata !648, null}
!661 = metadata !{i32 818, i32 0, metadata !648, null}
!662 = metadata !{i32 819, i32 0, metadata !648, null}
!663 = metadata !{i32 821, i32 0, metadata !648, null}
!664 = metadata !{i32 823, i32 0, metadata !648, null}
!665 = metadata !{i32 824, i32 0, metadata !648, null}
!666 = metadata !{i32 825, i32 0, metadata !648, null}
!667 = metadata !{i32 827, i32 0, metadata !648, null}
!668 = metadata !{i32 829, i32 0, metadata !648, null}
!669 = metadata !{i32 830, i32 0, metadata !648, null}
!670 = metadata !{i32 831, i32 0, metadata !648, null}
!671 = metadata !{i32 833, i32 0, metadata !648, null}
!672 = metadata !{i32 834, i32 0, metadata !648, null}
!673 = metadata !{i32 837, i32 0, metadata !648, null}
!674 = metadata !{i32 838, i32 0, metadata !648, null}
!675 = metadata !{i32 839, i32 0, metadata !648, null}
!676 = metadata !{i32 846, i32 0, metadata !173, null}
!677 = metadata !{i32 847, i32 0, metadata !678, null}
!678 = metadata !{i32 786443, metadata !1, metadata !173, i32 846, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!679 = metadata !{i32 848, i32 0, metadata !678, null}
!680 = metadata !{i32 849, i32 0, metadata !681, null}
!681 = metadata !{i32 786443, metadata !1, metadata !173, i32 848, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!682 = metadata !{i32 850, i32 0, metadata !681, null}
!683 = metadata !{i32 851, i32 0, metadata !173, null}
!684 = metadata !{i32 639, i32 0, metadata !154, null}
!685 = metadata !{i32 640, i32 0, metadata !154, null}
!686 = metadata !{i32 642, i32 0, metadata !154, null}
!687 = metadata !{i32 643, i32 0, metadata !154, null}
!688 = metadata !{i32 644, i32 0, metadata !154, null}
!689 = metadata !{i32 645, i32 0, metadata !154, null}
!690 = metadata !{i32 646, i32 0, metadata !154, null}
!691 = metadata !{i32 652, i32 0, metadata !154, null}
!692 = metadata !{i32 653, i32 0, metadata !693, null}
!693 = metadata !{i32 786443, metadata !1, metadata !154, i32 652, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!694 = metadata !{i32 655, i32 0, metadata !693, null}
!695 = metadata !{i32 662, i32 0, metadata !154, null}
!696 = metadata !{i32 663, i32 0, metadata !154, null}
!697 = metadata !{i32 664, i32 0, metadata !154, null}
!698 = metadata !{i32 665, i32 0, metadata !154, null}
!699 = metadata !{i32 666, i32 0, metadata !154, null}
!700 = metadata !{i32 667, i32 0, metadata !154, null}
!701 = metadata !{i32 668, i32 0, metadata !154, null}
!702 = metadata !{i32 669, i32 0, metadata !154, null}
!703 = metadata !{i32 675, i32 0, metadata !154, null}
!704 = metadata !{i32 676, i32 0, metadata !154, null}
!705 = metadata !{i32 677, i32 0, metadata !154, null}
!706 = metadata !{i32 678, i32 0, metadata !154, null}
!707 = metadata !{i32 684, i32 0, metadata !154, null}
!708 = metadata !{i32 687, i32 0, metadata !709, null}
!709 = metadata !{i32 786443, metadata !1, metadata !154, i32 684, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!710 = metadata !{i32 688, i32 0, metadata !709, null}
!711 = metadata !{i32 689, i32 0, metadata !709, null}
!712 = metadata !{i32 691, i32 0, metadata !709, null}
!713 = metadata !{i32 693, i32 0, metadata !709, null}
!714 = metadata !{i32 694, i32 0, metadata !709, null}
!715 = metadata !{i32 695, i32 0, metadata !709, null}
!716 = metadata !{i32 697, i32 0, metadata !709, null}
!717 = metadata !{i32 699, i32 0, metadata !709, null}
!718 = metadata !{i32 700, i32 0, metadata !709, null}
!719 = metadata !{i32 701, i32 0, metadata !709, null}
!720 = metadata !{i32 703, i32 0, metadata !709, null}
!721 = metadata !{i32 704, i32 0, metadata !709, null}
!722 = metadata !{i32 705, i32 0, metadata !709, null}
!723 = metadata !{i32 706, i32 0, metadata !709, null}
!724 = metadata !{i32 708, i32 0, metadata !709, null}
!725 = metadata !{i32 710, i32 0, metadata !709, null}
!726 = metadata !{i32 711, i32 0, metadata !709, null}
!727 = metadata !{i32 712, i32 0, metadata !709, null}
!728 = metadata !{i32 714, i32 0, metadata !709, null}
!729 = metadata !{i32 716, i32 0, metadata !709, null}
!730 = metadata !{i32 717, i32 0, metadata !709, null}
!731 = metadata !{i32 718, i32 0, metadata !709, null}
!732 = metadata !{i32 720, i32 0, metadata !709, null}
!733 = metadata !{i32 721, i32 0, metadata !709, null}
!734 = metadata !{i32 724, i32 0, metadata !709, null}
!735 = metadata !{i32 725, i32 0, metadata !709, null}
!736 = metadata !{i32 726, i32 0, metadata !709, null}
!737 = metadata !{i32 733, i32 0, metadata !154, null}
!738 = metadata !{i32 734, i32 0, metadata !739, null}
!739 = metadata !{i32 786443, metadata !1, metadata !154, i32 733, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!740 = metadata !{i32 735, i32 0, metadata !739, null}
!741 = metadata !{i32 736, i32 0, metadata !742, null}
!742 = metadata !{i32 786443, metadata !1, metadata !154, i32 735, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!743 = metadata !{i32 737, i32 0, metadata !742, null}
!744 = metadata !{i32 738, i32 0, metadata !154, null}
!745 = metadata !{i32 863, i32 0, metadata !193, null}
!746 = metadata !{i32 864, i32 0, metadata !193, null}
!747 = metadata !{i32 866, i32 0, metadata !193, null}
!748 = metadata !{i32 867, i32 0, metadata !193, null}
!749 = metadata !{i32 868, i32 0, metadata !193, null}
!750 = metadata !{i32 869, i32 0, metadata !193, null}
!751 = metadata !{i32 875, i32 0, metadata !193, null}
!752 = metadata !{i32 876, i32 0, metadata !753, null}
!753 = metadata !{i32 786443, metadata !1, metadata !193, i32 875, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!754 = metadata !{i32 878, i32 0, metadata !753, null}
!755 = metadata !{i32 880, i32 0, metadata !193, null}
!756 = metadata !{i32 881, i32 0, metadata !193, null}
!757 = metadata !{i32 882, i32 0, metadata !193, null}
!758 = metadata !{i32 883, i32 0, metadata !193, null}
!759 = metadata !{i32 884, i32 0, metadata !193, null}
!760 = metadata !{i32 885, i32 0, metadata !193, null}
!761 = metadata !{i32 886, i32 0, metadata !193, null}
!762 = metadata !{i32 888, i32 0, metadata !193, null}
!763 = metadata !{i32 889, i32 0, metadata !193, null}
!764 = metadata !{i32 890, i32 0, metadata !193, null}
!765 = metadata !{i32 891, i32 0, metadata !766, null}
!766 = metadata !{i32 786443, metadata !1, metadata !193, i32 891, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!767 = metadata !{i32 892, i32 0, metadata !768, null}
!768 = metadata !{i32 786443, metadata !1, metadata !769, i32 892, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!769 = metadata !{i32 786443, metadata !1, metadata !766, i32 891, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!770 = metadata !{i32 893, i32 0, metadata !771, null}
!771 = metadata !{i32 786443, metadata !1, metadata !768, i32 892, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!772 = metadata !{i32 894, i32 0, metadata !773, null}
!773 = metadata !{i32 786443, metadata !1, metadata !771, i32 893, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!774 = metadata !{i32 895, i32 0, metadata !773, null}
!775 = metadata !{metadata !"double", metadata !329}
!776 = metadata !{i32 896, i32 0, metadata !773, null}
!777 = metadata !{i32 897, i32 0, metadata !778, null}
!778 = metadata !{i32 786443, metadata !1, metadata !771, i32 896, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!779 = metadata !{i32 898, i32 0, metadata !778, null}
!780 = metadata !{i32 899, i32 0, metadata !778, null}
!781 = metadata !{i32 902, i32 0, metadata !193, null}
!782 = metadata !{i32 903, i32 0, metadata !193, null}
!783 = metadata !{i32 905, i32 0, metadata !193, null}
!784 = metadata !{i32 917, i32 0, metadata !218, null}
!785 = metadata !{i32 918, i32 0, metadata !218, null}
!786 = metadata !{i32 925, i32 0, metadata !218, null}
!787 = metadata !{i32 926, i32 0, metadata !788, null}
!788 = metadata !{i32 786443, metadata !1, metadata !218, i32 925, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!789 = metadata !{i32 928, i32 0, metadata !788, null}
!790 = metadata !{i32 930, i32 0, metadata !218, null}
!791 = metadata !{i32 936, i32 0, metadata !218, null}
!792 = metadata !{i32 937, i32 0, metadata !218, null}
!793 = metadata !{i32 938, i32 0, metadata !218, null}
!794 = metadata !{i32 940, i32 0, metadata !795, null}
!795 = metadata !{i32 786443, metadata !1, metadata !218, i32 938, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!796 = metadata !{i32 941, i32 0, metadata !795, null}
!797 = metadata !{i32 943, i32 0, metadata !795, null}
!798 = metadata !{i32 944, i32 0, metadata !795, null}
!799 = metadata !{i32 946, i32 0, metadata !795, null}
!800 = metadata !{i32 947, i32 0, metadata !795, null}
!801 = metadata !{i32 949, i32 0, metadata !218, null}
!802 = metadata !{i32 951, i32 0, metadata !803, null}
!803 = metadata !{i32 786443, metadata !1, metadata !218, i32 949, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!804 = metadata !{i32 952, i32 0, metadata !803, null}
!805 = metadata !{i32 954, i32 0, metadata !803, null}
!806 = metadata !{i32 955, i32 0, metadata !803, null}
!807 = metadata !{i32 957, i32 0, metadata !803, null}
!808 = metadata !{i32 958, i32 0, metadata !803, null}
!809 = metadata !{i32 960, i32 0, metadata !803, null}
!810 = metadata !{i32 961, i32 0, metadata !803, null}
!811 = metadata !{i32 963, i32 0, metadata !803, null}
!812 = metadata !{i32 964, i32 0, metadata !803, null}
!813 = metadata !{i32 966, i32 0, metadata !803, null}
!814 = metadata !{i32 967, i32 0, metadata !803, null}
!815 = metadata !{i32 969, i32 0, metadata !803, null}
!816 = metadata !{i32 970, i32 0, metadata !803, null}
!817 = metadata !{i32 972, i32 0, metadata !803, null}
!818 = metadata !{i32 973, i32 0, metadata !803, null}
!819 = metadata !{i32 975, i32 0, metadata !803, null}
!820 = metadata !{i32 976, i32 0, metadata !803, null}
!821 = metadata !{i32 978, i32 0, metadata !803, null}
!822 = metadata !{i32 979, i32 0, metadata !803, null}
!823 = metadata !{i32 981, i32 0, metadata !803, null}
!824 = metadata !{i32 982, i32 0, metadata !803, null}
!825 = metadata !{i32 984, i32 0, metadata !218, null}
!826 = metadata !{i32 996, i32 0, metadata !222, null}
!827 = metadata !{i32 997, i32 0, metadata !222, null}
!828 = metadata !{i32 998, i32 0, metadata !222, null}
!829 = metadata !{i32 1000, i32 0, metadata !222, null}
!830 = metadata !{i32 1001, i32 0, metadata !222, null}
!831 = metadata !{i32 1007, i32 0, metadata !222, null}
!832 = metadata !{i32 1008, i32 0, metadata !833, null}
!833 = metadata !{i32 786443, metadata !1, metadata !222, i32 1007, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!834 = metadata !{i32 1010, i32 0, metadata !833, null}
!835 = metadata !{i32 1012, i32 0, metadata !222, null}
!836 = metadata !{i32 1013, i32 0, metadata !222, null}
!837 = metadata !{i32 1014, i32 0, metadata !222, null}
!838 = metadata !{i32 1015, i32 0, metadata !234, null}
!839 = metadata !{i32 1016, i32 0, metadata !234, null}
!840 = metadata !{i32 1018, i32 0, metadata !234, null}
!841 = metadata !{i32 1019, i32 0, metadata !842, null}
!842 = metadata !{i32 786443, metadata !1, metadata !234, i32 1019, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!843 = metadata !{i32 1022, i32 0, metadata !844, null}
!844 = metadata !{i32 786443, metadata !1, metadata !845, i32 1020, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!845 = metadata !{i32 786443, metadata !1, metadata !846, i32 1020, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!846 = metadata !{i32 786443, metadata !1, metadata !842, i32 1019, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!847 = metadata !{i32 1020, i32 0, metadata !845, null}
!848 = metadata !{i32 1021, i32 0, metadata !844, null}
!849 = metadata !{i32 1023, i32 0, metadata !850, null}
!850 = metadata !{i32 786443, metadata !1, metadata !844, i32 1022, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!851 = metadata !{i32 1025, i32 0, metadata !850, null}
!852 = metadata !{i32 1026, i32 0, metadata !853, null}
!853 = metadata !{i32 786443, metadata !1, metadata !844, i32 1025, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!854 = metadata !{i32 1029, i32 0, metadata !853, null}
!855 = metadata !{i32 1033, i32 0, metadata !243, null}
!856 = metadata !{i32 1034, i32 0, metadata !243, null}
!857 = metadata !{i32 1036, i32 0, metadata !243, null}
!858 = metadata !{i32 1038, i32 0, metadata !859, null}
!859 = metadata !{i32 786443, metadata !1, metadata !243, i32 1038, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!860 = metadata !{i32 1052, i32 0, metadata !861, null}
!861 = metadata !{i32 786443, metadata !1, metadata !859, i32 1038, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!862 = metadata !{i32 1039, i32 0, metadata !861, null}
!863 = metadata !{i32 1040, i32 0, metadata !864, null}
!864 = metadata !{i32 786443, metadata !1, metadata !861, i32 1040, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!865 = metadata !{i32 1041, i32 0, metadata !866, null}
!866 = metadata !{i32 786443, metadata !1, metadata !864, i32 1040, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!867 = metadata !{i32 1042, i32 0, metadata !866, null}
!868 = metadata !{i32 1043, i32 0, metadata !869, null}
!869 = metadata !{i32 786443, metadata !1, metadata !866, i32 1042, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!870 = metadata !{i32 1045, i32 0, metadata !869, null}
!871 = metadata !{i32 1046, i32 0, metadata !872, null}
!872 = metadata !{i32 786443, metadata !1, metadata !866, i32 1045, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!873 = metadata !{i32 1049, i32 0, metadata !872, null}
!874 = metadata !{i32 1051, i32 0, metadata !861, null}
!875 = metadata !{i32 1053, i32 0, metadata !876, null}
!876 = metadata !{i32 786443, metadata !1, metadata !861, i32 1052, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!877 = metadata !{i32 1054, i32 0, metadata !876, null}
!878 = metadata !{i32 1055, i32 0, metadata !879, null}
!879 = metadata !{i32 786443, metadata !1, metadata !861, i32 1054, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!880 = metadata !{i32 1056, i32 0, metadata !879, null}
!881 = metadata !{i32 1059, i32 0, metadata !253, null}
!882 = metadata !{i32 1060, i32 0, metadata !253, null}
!883 = metadata !{i32 1062, i32 0, metadata !253, null}
!884 = metadata !{i32 1064, i32 0, metadata !885, null}
!885 = metadata !{i32 786443, metadata !1, metadata !253, i32 1064, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!886 = metadata !{i32 1078, i32 0, metadata !887, null}
!887 = metadata !{i32 786443, metadata !1, metadata !885, i32 1064, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!888 = metadata !{i32 1065, i32 0, metadata !887, null}
!889 = metadata !{i32 1066, i32 0, metadata !890, null}
!890 = metadata !{i32 786443, metadata !1, metadata !887, i32 1066, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!891 = metadata !{i32 1067, i32 0, metadata !892, null}
!892 = metadata !{i32 786443, metadata !1, metadata !890, i32 1066, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!893 = metadata !{i32 1068, i32 0, metadata !892, null}
!894 = metadata !{i32 1069, i32 0, metadata !895, null}
!895 = metadata !{i32 786443, metadata !1, metadata !892, i32 1068, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!896 = metadata !{i32 1071, i32 0, metadata !895, null}
!897 = metadata !{i32 1072, i32 0, metadata !898, null}
!898 = metadata !{i32 786443, metadata !1, metadata !892, i32 1071, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!899 = metadata !{i32 1075, i32 0, metadata !898, null}
!900 = metadata !{i32 1077, i32 0, metadata !887, null}
!901 = metadata !{i32 1079, i32 0, metadata !902, null}
!902 = metadata !{i32 786443, metadata !1, metadata !887, i32 1078, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!903 = metadata !{i32 1080, i32 0, metadata !902, null}
!904 = metadata !{i32 1081, i32 0, metadata !905, null}
!905 = metadata !{i32 786443, metadata !1, metadata !887, i32 1080, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!906 = metadata !{i32 1082, i32 0, metadata !905, null}
!907 = metadata !{i32 1085, i32 0, metadata !263, null}
!908 = metadata !{i32 1086, i32 0, metadata !263, null}
!909 = metadata !{i32 1088, i32 0, metadata !263, null}
!910 = metadata !{i32 1089, i32 0, metadata !911, null}
!911 = metadata !{i32 786443, metadata !1, metadata !263, i32 1089, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!912 = metadata !{i32 1092, i32 0, metadata !913, null}
!913 = metadata !{i32 786443, metadata !1, metadata !911, i32 1089, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!914 = metadata !{i32 1090, i32 0, metadata !913, null}
!915 = metadata !{i32 1091, i32 0, metadata !913, null}
!916 = metadata !{i32 1093, i32 0, metadata !917, null}
!917 = metadata !{i32 786443, metadata !1, metadata !913, i32 1092, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!918 = metadata !{i32 1095, i32 0, metadata !917, null}
!919 = metadata !{i32 1096, i32 0, metadata !920, null}
!920 = metadata !{i32 786443, metadata !1, metadata !913, i32 1095, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!921 = metadata !{i32 1099, i32 0, metadata !920, null}
!922 = metadata !{i32 1102, i32 0, metadata !271, null}
!923 = metadata !{i32 1103, i32 0, metadata !271, null}
!924 = metadata !{i32 1104, i32 0, metadata !271, null}
!925 = metadata !{i32 1106, i32 0, metadata !271, null}
!926 = metadata !{i32 1108, i32 0, metadata !927, null}
!927 = metadata !{i32 786443, metadata !1, metadata !271, i32 1108, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!928 = metadata !{i32 1113, i32 0, metadata !929, null}
!929 = metadata !{i32 786443, metadata !1, metadata !930, i32 1112, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!930 = metadata !{i32 786443, metadata !1, metadata !931, i32 1112, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!931 = metadata !{i32 786443, metadata !1, metadata !932, i32 1109, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!932 = metadata !{i32 786443, metadata !1, metadata !927, i32 1108, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!933 = metadata !{i32 1109, i32 0, metadata !932, null}
!934 = metadata !{i32 1110, i32 0, metadata !931, null}
!935 = metadata !{i32 1111, i32 0, metadata !931, null}
!936 = metadata !{i32 1112, i32 0, metadata !930, null}
!937 = metadata !{i32 1114, i32 0, metadata !938, null}
!938 = metadata !{i32 786443, metadata !1, metadata !929, i32 1113, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!939 = metadata !{i32 1117, i32 0, metadata !938, null}
!940 = metadata !{i32 1117, i32 0, metadata !929, null}
!941 = metadata !{i32 1118, i32 0, metadata !942, null}
!942 = metadata !{i32 786443, metadata !1, metadata !929, i32 1117, i32 0, i32 124} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!943 = metadata !{i32 1121, i32 0, metadata !942, null}
!944 = metadata !{i32 1123, i32 0, metadata !931, null}
!945 = metadata !{i32 1124, i32 0, metadata !946, null}
!946 = metadata !{i32 786443, metadata !1, metadata !931, i32 1123, i32 0, i32 125} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!947 = metadata !{i32 1125, i32 0, metadata !946, null}
!948 = metadata !{i32 1125, i32 0, metadata !931, null}
!949 = metadata !{i32 1126, i32 0, metadata !950, null}
!950 = metadata !{i32 786443, metadata !1, metadata !931, i32 1125, i32 0, i32 126} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!951 = metadata !{i32 1127, i32 0, metadata !950, null}
!952 = metadata !{i32 1131, i32 0, metadata !282, null}
!953 = metadata !{i32 1132, i32 0, metadata !282, null}
!954 = metadata !{i32 1133, i32 0, metadata !282, null}
!955 = metadata !{i32 1135, i32 0, metadata !282, null}
!956 = metadata !{i32 1137, i32 0, metadata !957, null}
!957 = metadata !{i32 786443, metadata !1, metadata !282, i32 1137, i32 0, i32 128} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!958 = metadata !{i32 1142, i32 0, metadata !959, null}
!959 = metadata !{i32 786443, metadata !1, metadata !960, i32 1141, i32 0, i32 132} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!960 = metadata !{i32 786443, metadata !1, metadata !961, i32 1141, i32 0, i32 131} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!961 = metadata !{i32 786443, metadata !1, metadata !962, i32 1138, i32 0, i32 130} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!962 = metadata !{i32 786443, metadata !1, metadata !957, i32 1137, i32 0, i32 129} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!963 = metadata !{i32 1138, i32 0, metadata !962, null}
!964 = metadata !{i32 1139, i32 0, metadata !961, null}
!965 = metadata !{i32 1140, i32 0, metadata !961, null}
!966 = metadata !{i32 1141, i32 0, metadata !960, null}
!967 = metadata !{i32 1143, i32 0, metadata !968, null}
!968 = metadata !{i32 786443, metadata !1, metadata !959, i32 1142, i32 0, i32 133} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!969 = metadata !{i32 1145, i32 0, metadata !968, null}
!970 = metadata !{i32 1145, i32 0, metadata !959, null}
!971 = metadata !{i32 1146, i32 0, metadata !972, null}
!972 = metadata !{i32 786443, metadata !1, metadata !959, i32 1145, i32 0, i32 134} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!973 = metadata !{i32 1150, i32 0, metadata !972, null}
!974 = metadata !{i32 1152, i32 0, metadata !961, null}
!975 = metadata !{i32 1153, i32 0, metadata !976, null}
!976 = metadata !{i32 786443, metadata !1, metadata !961, i32 1152, i32 0, i32 135} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!977 = metadata !{i32 1154, i32 0, metadata !976, null}
!978 = metadata !{i32 1154, i32 0, metadata !961, null}
!979 = metadata !{i32 1155, i32 0, metadata !980, null}
!980 = metadata !{i32 786443, metadata !1, metadata !961, i32 1154, i32 0, i32 136} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!981 = metadata !{i32 1156, i32 0, metadata !980, null}
!982 = metadata !{i32 1160, i32 0, metadata !293, null}
!983 = metadata !{i32 1161, i32 0, metadata !293, null}
!984 = metadata !{i32 1163, i32 0, metadata !293, null}
!985 = metadata !{i32 1164, i32 0, metadata !986, null}
!986 = metadata !{i32 786443, metadata !1, metadata !293, i32 1164, i32 0, i32 138} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!987 = metadata !{i32 1165, i32 0, metadata !988, null}
!988 = metadata !{i32 786443, metadata !1, metadata !986, i32 1164, i32 0, i32 139} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!989 = metadata !{i32 1166, i32 0, metadata !990, null}
!990 = metadata !{i32 786443, metadata !1, metadata !988, i32 1165, i32 0, i32 140} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!991 = metadata !{i32 1168, i32 0, metadata !990, null}
!992 = metadata !{i32 1169, i32 0, metadata !993, null}
!993 = metadata !{i32 786443, metadata !1, metadata !988, i32 1168, i32 0, i32 141} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!994 = metadata !{i32 1172, i32 0, metadata !993, null}
!995 = metadata !{i32 1175, i32 0, metadata !297, null}
!996 = metadata !{i32 1176, i32 0, metadata !297, null}
!997 = metadata !{i32 1177, i32 0, metadata !297, null}
!998 = metadata !{i32 1179, i32 0, metadata !297, null}
!999 = metadata !{i32 1180, i32 0, metadata !1000, null}
!1000 = metadata !{i32 786443, metadata !1, metadata !297, i32 1180, i32 0, i32 143} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!1001 = metadata !{i32 1184, i32 0, metadata !1002, null}
!1002 = metadata !{i32 786443, metadata !1, metadata !1003, i32 1183, i32 0, i32 148} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!1003 = metadata !{i32 786443, metadata !1, metadata !1004, i32 1183, i32 0, i32 147} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!1004 = metadata !{i32 786443, metadata !1, metadata !1005, i32 1182, i32 0, i32 146} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!1005 = metadata !{i32 786443, metadata !1, metadata !1006, i32 1182, i32 0, i32 145} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!1006 = metadata !{i32 786443, metadata !1, metadata !1000, i32 1180, i32 0, i32 144} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!1007 = metadata !{i32 1181, i32 0, metadata !1006, null}
!1008 = metadata !{i32 1182, i32 0, metadata !1005, null}
!1009 = metadata !{i32 1183, i32 0, metadata !1003, null}
!1010 = metadata !{i32 1195, i32 0, metadata !1011, null}
!1011 = metadata !{i32 786443, metadata !1, metadata !1012, i32 1194, i32 0, i32 152} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!1012 = metadata !{i32 786443, metadata !1, metadata !1002, i32 1193, i32 0, i32 151} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!1013 = metadata !{i32 1185, i32 0, metadata !1014, null}
!1014 = metadata !{i32 786443, metadata !1, metadata !1002, i32 1184, i32 0, i32 149} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!1015 = metadata !{i32 1188, i32 0, metadata !1014, null}
!1016 = metadata !{i32 1189, i32 0, metadata !1017, null}
!1017 = metadata !{i32 786443, metadata !1, metadata !1002, i32 1188, i32 0, i32 150} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!1018 = metadata !{i32 1192, i32 0, metadata !1017, null}
!1019 = metadata !{i32 1193, i32 0, metadata !1002, null}
!1020 = metadata !{i32 1194, i32 0, metadata !1012, null}
!1021 = metadata !{i32 1198, i32 0, metadata !1011, null}
!1022 = metadata !{i32 1199, i32 0, metadata !1023, null}
!1023 = metadata !{i32 786443, metadata !1, metadata !1012, i32 1198, i32 0, i32 153} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!1024 = metadata !{i32 1203, i32 0, metadata !1023, null}
!1025 = metadata !{i32 1207, i32 0, metadata !1006, null}
!1026 = metadata !{i32 1210, i32 0, metadata !308, null}
!1027 = metadata !{i32 1211, i32 0, metadata !308, null}
!1028 = metadata !{i32 1212, i32 0, metadata !308, null}
!1029 = metadata !{i32 1214, i32 0, metadata !308, null}
!1030 = metadata !{i32 1215, i32 0, metadata !1031, null}
!1031 = metadata !{i32 786443, metadata !1, metadata !308, i32 1215, i32 0, i32 155} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!1032 = metadata !{i32 1216, i32 0, metadata !1033, null}
!1033 = metadata !{i32 786443, metadata !1, metadata !1031, i32 1215, i32 0, i32 156} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!1034 = metadata !{i32 1217, i32 0, metadata !1035, null}
!1035 = metadata !{i32 786443, metadata !1, metadata !1033, i32 1217, i32 0, i32 157} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!1036 = metadata !{i32 1218, i32 0, metadata !1037, null}
!1037 = metadata !{i32 786443, metadata !1, metadata !1038, i32 1218, i32 0, i32 159} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!1038 = metadata !{i32 786443, metadata !1, metadata !1035, i32 1217, i32 0, i32 158} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!1039 = metadata !{i32 1219, i32 0, metadata !1040, null}
!1040 = metadata !{i32 786443, metadata !1, metadata !1037, i32 1218, i32 0, i32 160} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!1041 = metadata !{i32 1222, i32 0, metadata !1040, null}
!1042 = metadata !{i32 1223, i32 0, metadata !1043, null}
!1043 = metadata !{i32 786443, metadata !1, metadata !1040, i32 1222, i32 0, i32 161} ; [ DW_TAG_lexical_block ] [/home/arquinn/Project1/EECS583/source_extraction_scripts/../../SPEC/benchspec/CPU2006/454.calculix/src/SPOOLES/SubMtx/src/SubMtx_IO.c]
!1044 = metadata !{i32 1226, i32 0, metadata !1043, null}
!1045 = metadata !{i32 1229, i32 0, metadata !1033, null}
!1046 = metadata !{i32 1232, i32 0, metadata !222, null}
