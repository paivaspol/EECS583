; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/gsi.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.gsi_s = type { %struct.__sFILE*, i16, i32 }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.gsiindex_s = type { i8**, i32*, i16, %struct.gsikey_s*, i32 }
%struct.gsikey_s = type { [32 x i8], i16, i32 }

@.str = private unnamed_addr constant [61 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/gsi.c\00", align 1
@.str1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@squid_errno = external global i32
@.str2 = private unnamed_addr constant [4 x i8] c"GSI\00", align 1
@.str3 = private unnamed_addr constant [34 x i8] c"File name too long to be indexed.\00", align 1
@.str4 = private unnamed_addr constant [26 x i8] c"key too long in GSI index\00", align 1
@.str5 = private unnamed_addr constant [28 x i8] c"too many files in GSI index\00", align 1
@.str6 = private unnamed_addr constant [28 x i8] c"offset too big in GSI index\00", align 1
@.str9 = private unnamed_addr constant [25 x i8] c"GSI: nfiles out of range\00", align 1
@.str10 = private unnamed_addr constant [24 x i8] c"GSI: nkeys out of range\00", align 1
@.str11 = private unnamed_addr constant [29 x i8] c"GSI: file index out of range\00", align 1
@.str13 = private unnamed_addr constant [25 x i8] c"GSI: offset out of range\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define %struct.gsi_s* @GSIOpen(i8* %gsifile) #0 {
  %magic = alloca [32 x i8], align 16
  tail call void @llvm.dbg.value(metadata i8* %gsifile, i64 0, metadata !96, metadata !226), !dbg !227
  tail call void @llvm.dbg.declare(metadata [32 x i8]* %magic, metadata !98, metadata !226), !dbg !228
  %1 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 58, i64 16) #7, !dbg !229
  %2 = bitcast i8* %1 to %struct.gsi_s*, !dbg !230
  tail call void @llvm.dbg.value(metadata %struct.gsi_s* %2, i64 0, metadata !97, metadata !226), !dbg !231
  %3 = tail call %struct.__sFILE* @"\01_fopen"(i8* %gsifile, i8* getelementptr inbounds ([2 x i8]* @.str1, i64 0, i64 0)) #7, !dbg !232
  %4 = bitcast i8* %1 to %struct.__sFILE**, !dbg !234
  store %struct.__sFILE* %3, %struct.__sFILE** %4, align 8, !dbg !235, !tbaa !236
  %5 = icmp eq %struct.__sFILE* %3, null, !dbg !243
  br i1 %5, label %6, label %7, !dbg !244

; <label>:6                                       ; preds = %0
  tail call void @free(i8* %1) #8, !dbg !245
  store i32 4, i32* @squid_errno, align 4, !dbg !247, !tbaa !248
  br label %35, !dbg !249

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds [32 x i8]* %magic, i64 0, i64 0, !dbg !250
  %9 = call i64 @fread(i8* %8, i64 1, i64 32, %struct.__sFILE* %3) #7, !dbg !252
  %10 = icmp eq i64 %9, 0, !dbg !252
  br i1 %10, label %11, label %12, !dbg !253

; <label>:11                                      ; preds = %7
  tail call void @free(i8* %1) #8, !dbg !254
  store i32 2, i32* @squid_errno, align 4, !dbg !256, !tbaa !248
  br label %35, !dbg !257

; <label>:12                                      ; preds = %7
  %13 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0)) #7, !dbg !258
  %14 = icmp eq i32 %13, 0, !dbg !260
  br i1 %14, label %16, label %15, !dbg !261

; <label>:15                                      ; preds = %12
  tail call void @free(i8* %1) #8, !dbg !262
  store i32 5, i32* @squid_errno, align 4, !dbg !264, !tbaa !248
  br label %35, !dbg !265

; <label>:16                                      ; preds = %12
  %17 = getelementptr inbounds i8* %1, i64 8, !dbg !266
  %18 = bitcast i8* %17 to i16*, !dbg !266
  %19 = load %struct.__sFILE** %4, align 8, !dbg !268, !tbaa !236
  %20 = tail call i64 @fread(i8* %17, i64 2, i64 1, %struct.__sFILE* %19) #7, !dbg !269
  %21 = icmp eq i64 %20, 0, !dbg !269
  br i1 %21, label %22, label %23, !dbg !270

; <label>:22                                      ; preds = %16
  tail call void @free(i8* %1) #8, !dbg !271
  store i32 2, i32* @squid_errno, align 4, !dbg !273, !tbaa !248
  br label %35, !dbg !274

; <label>:23                                      ; preds = %16
  %24 = getelementptr inbounds i8* %1, i64 12, !dbg !275
  %25 = bitcast i8* %24 to i32*, !dbg !275
  %26 = load %struct.__sFILE** %4, align 8, !dbg !277, !tbaa !236
  %27 = tail call i64 @fread(i8* %24, i64 4, i64 1, %struct.__sFILE* %26) #7, !dbg !278
  %28 = icmp eq i64 %27, 0, !dbg !278
  br i1 %28, label %29, label %30, !dbg !279

; <label>:29                                      ; preds = %23
  tail call void @free(i8* %1) #8, !dbg !280
  store i32 2, i32* @squid_errno, align 4, !dbg !282, !tbaa !248
  br label %35, !dbg !283

; <label>:30                                      ; preds = %23
  %31 = load i16* %18, align 2, !dbg !284, !tbaa !285
  %32 = tail call zeroext i16 @sre_ntoh16(i16 zeroext %31) #7, !dbg !286
  store i16 %32, i16* %18, align 2, !dbg !287, !tbaa !285
  %33 = load i32* %25, align 4, !dbg !288, !tbaa !289
  %34 = tail call i32 @sre_ntoh32(i32 %33) #7, !dbg !290
  store i32 %34, i32* %25, align 4, !dbg !291, !tbaa !289
  br label %35, !dbg !292

; <label>:35                                      ; preds = %30, %29, %22, %15, %11, %6
  %.0 = phi %struct.gsi_s* [ null, %6 ], [ null, %15 ], [ %2, %30 ], [ null, %29 ], [ null, %22 ], [ null, %11 ]
  ret %struct.gsi_s* %.0, !dbg !293
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #2

; Function Attrs: optsize
declare %struct.__sFILE* @"\01_fopen"(i8*, i8*) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize
declare i64 @fread(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #3

; Function Attrs: nounwind optsize readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) #4

; Function Attrs: optsize
declare zeroext i16 @sre_ntoh16(i16 zeroext) #2

; Function Attrs: optsize
declare i32 @sre_ntoh32(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @GSIGetRecord(%struct.gsi_s* nocapture readonly %gsi, i8* %f1, i16* %f2, i32* %f3) #0 {
  tail call void @llvm.dbg.value(metadata %struct.gsi_s* %gsi, i64 0, metadata !105, metadata !226), !dbg !294
  tail call void @llvm.dbg.value(metadata i8* %f1, i64 0, metadata !106, metadata !226), !dbg !295
  tail call void @llvm.dbg.value(metadata i16* %f2, i64 0, metadata !107, metadata !226), !dbg !296
  tail call void @llvm.dbg.value(metadata i32* %f3, i64 0, metadata !108, metadata !226), !dbg !297
  %1 = icmp eq i8* %f1, null, !dbg !298
  %2 = getelementptr inbounds %struct.gsi_s* %gsi, i64 0, i32 0, !dbg !300
  %3 = load %struct.__sFILE** %2, align 8, !dbg !300, !tbaa !236
  br i1 %1, label %4, label %6, !dbg !301

; <label>:4                                       ; preds = %0
  %5 = tail call i32 @fseek(%struct.__sFILE* %3, i64 32, i32 1) #7, !dbg !302
  br label %10, !dbg !302

; <label>:6                                       ; preds = %0
  %7 = tail call i64 @fread(i8* %f1, i64 32, i64 1, %struct.__sFILE* %3) #7, !dbg !303
  %8 = icmp eq i64 %7, 0, !dbg !303
  br i1 %8, label %9, label %10, !dbg !305

; <label>:9                                       ; preds = %6
  store i32 2, i32* @squid_errno, align 4, !dbg !306, !tbaa !248
  br label %40, !dbg !308

; <label>:10                                      ; preds = %6, %4
  %11 = icmp eq i16* %f2, null, !dbg !309
  br i1 %11, label %12, label %15, !dbg !311

; <label>:12                                      ; preds = %10
  %13 = load %struct.__sFILE** %2, align 8, !dbg !312, !tbaa !236
  %14 = tail call i32 @fseek(%struct.__sFILE* %13, i64 2, i32 1) #7, !dbg !313
  br label %21, !dbg !313

; <label>:15                                      ; preds = %10
  %16 = bitcast i16* %f2 to i8*, !dbg !314
  %17 = load %struct.__sFILE** %2, align 8, !dbg !316, !tbaa !236
  %18 = tail call i64 @fread(i8* %16, i64 2, i64 1, %struct.__sFILE* %17) #7, !dbg !317
  %19 = icmp eq i64 %18, 0, !dbg !317
  br i1 %19, label %20, label %21, !dbg !318

; <label>:20                                      ; preds = %15
  store i32 2, i32* @squid_errno, align 4, !dbg !319, !tbaa !248
  br label %40, !dbg !321

; <label>:21                                      ; preds = %15, %12
  %22 = icmp eq i32* %f3, null, !dbg !322
  br i1 %22, label %23, label %26, !dbg !324

; <label>:23                                      ; preds = %21
  %24 = load %struct.__sFILE** %2, align 8, !dbg !325, !tbaa !236
  %25 = tail call i32 @fseek(%struct.__sFILE* %24, i64 4, i32 1) #7, !dbg !326
  br label %32, !dbg !326

; <label>:26                                      ; preds = %21
  %27 = bitcast i32* %f3 to i8*, !dbg !327
  %28 = load %struct.__sFILE** %2, align 8, !dbg !329, !tbaa !236
  %29 = tail call i64 @fread(i8* %27, i64 4, i64 1, %struct.__sFILE* %28) #7, !dbg !330
  %30 = icmp eq i64 %29, 0, !dbg !330
  br i1 %30, label %31, label %32, !dbg !331

; <label>:31                                      ; preds = %26
  store i32 2, i32* @squid_errno, align 4, !dbg !332, !tbaa !248
  br label %40, !dbg !334

; <label>:32                                      ; preds = %26, %23
  br i1 %11, label %36, label %33, !dbg !335

; <label>:33                                      ; preds = %32
  %34 = load i16* %f2, align 2, !dbg !336, !tbaa !338
  %35 = tail call zeroext i16 @sre_ntoh16(i16 zeroext %34) #7, !dbg !339
  store i16 %35, i16* %f2, align 2, !dbg !340, !tbaa !338
  br label %36, !dbg !341

; <label>:36                                      ; preds = %32, %33
  br i1 %22, label %40, label %37, !dbg !342

; <label>:37                                      ; preds = %36
  %38 = load i32* %f3, align 4, !dbg !343, !tbaa !248
  %39 = tail call i32 @sre_ntoh32(i32 %38) #7, !dbg !345
  store i32 %39, i32* %f3, align 4, !dbg !346, !tbaa !248
  br label %40, !dbg !347

; <label>:40                                      ; preds = %37, %36, %31, %20, %9
  %.0 = phi i32 [ 0, %31 ], [ 0, %20 ], [ 0, %9 ], [ 1, %36 ], [ 1, %37 ]
  ret i32 %.0, !dbg !348
}

; Function Attrs: nounwind optsize
declare i32 @fseek(%struct.__sFILE* nocapture, i64, i32) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @GSIGetOffset(%struct.gsi_s* nocapture readonly %gsi, i8* nocapture readonly %key, i8* %ret_seqfile, i32* nocapture %ret_format, i64* nocapture %ret_offset) #0 {
  %name = alloca [33 x i8], align 16
  %offset = alloca i32, align 4
  %filenum = alloca i16, align 2
  %fmt = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct.gsi_s* %gsi, i64 0, metadata !115, metadata !226), !dbg !349
  tail call void @llvm.dbg.value(metadata i8* %key, i64 0, metadata !116, metadata !226), !dbg !350
  tail call void @llvm.dbg.value(metadata i8* %ret_seqfile, i64 0, metadata !117, metadata !226), !dbg !351
  tail call void @llvm.dbg.value(metadata i32* %ret_format, i64 0, metadata !118, metadata !226), !dbg !352
  tail call void @llvm.dbg.value(metadata i64* %ret_offset, i64 0, metadata !119, metadata !226), !dbg !353
  %1 = getelementptr inbounds [33 x i8]* %name, i64 0, i64 0, !dbg !354
  call void @llvm.lifetime.start(i64 33, i8* %1) #5, !dbg !354
  tail call void @llvm.dbg.declare(metadata [33 x i8]* %name, metadata !124, metadata !226), !dbg !355
  %2 = getelementptr inbounds [33 x i8]* %name, i64 0, i64 32, !dbg !356
  store i8 0, i8* %2, align 16, !dbg !357, !tbaa !358
  %3 = getelementptr inbounds %struct.gsi_s* %gsi, i64 0, i32 1, !dbg !359
  %4 = load i16* %3, align 2, !dbg !359, !tbaa !285
  %5 = zext i16 %4 to i32, !dbg !360
  %6 = add nuw nsw i32 %5, 1, !dbg !361
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !120, metadata !226), !dbg !362
  %7 = getelementptr inbounds %struct.gsi_s* %gsi, i64 0, i32 2, !dbg !363
  %8 = load i32* %7, align 4, !dbg !363, !tbaa !289
  %9 = add i32 %5, %8, !dbg !364
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !121, metadata !226), !dbg !365
  %10 = add i32 %6, %9, !dbg !366
  %11 = lshr i32 %10, 1, !dbg !367
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !122, metadata !226), !dbg !368
  %12 = getelementptr inbounds %struct.gsi_s* %gsi, i64 0, i32 0, !dbg !369
  %13 = load %struct.__sFILE** %12, align 8, !dbg !369, !tbaa !236
  %14 = mul i32 %11, 38, !dbg !370
  %15 = zext i32 %14 to i64, !dbg !371
  %16 = tail call i32 @fseek(%struct.__sFILE* %13, i64 %15, i32 0) #7, !dbg !372
  call void @llvm.dbg.value(metadata i32* %offset, i64 0, metadata !128, metadata !226), !dbg !373
  call void @llvm.dbg.value(metadata i16* %filenum, i64 0, metadata !129, metadata !226), !dbg !374
  %17 = call i32 @GSIGetRecord(%struct.gsi_s* %gsi, i8* %1, i16* %filenum, i32* %offset) #8, !dbg !375
  %18 = icmp eq i32 %17, 0, !dbg !376
  br i1 %18, label %._crit_edge, label %.lr.ph, !dbg !376

.lr.ph:                                           ; preds = %0, %23
  %mid.03 = phi i32 [ %28, %23 ], [ %11, %0 ]
  %right.02 = phi i32 [ %right.1, %23 ], [ %9, %0 ]
  %left.01 = phi i32 [ %left.1, %23 ], [ %6, %0 ]
  %19 = call i32 @strcmp(i8* %1, i8* %key) #7, !dbg !377
  call void @llvm.dbg.value(metadata i32 %19, i64 0, metadata !123, metadata !226), !dbg !379
  %20 = icmp eq i32 %19, 0, !dbg !380
  br i1 %20, label %._crit_edge, label %21, !dbg !382

; <label>:21                                      ; preds = %.lr.ph
  %22 = icmp ult i32 %left.01, %right.02, !dbg !383
  br i1 %22, label %23, label %.loopexit, !dbg !385

; <label>:23                                      ; preds = %21
  %24 = icmp slt i32 %19, 0, !dbg !386
  %25 = add nuw i32 %mid.03, 1, !dbg !388
  call void @llvm.dbg.value(metadata i32 %25, i64 0, metadata !120, metadata !226), !dbg !362
  %26 = add nsw i32 %mid.03, -1, !dbg !389
  call void @llvm.dbg.value(metadata i32 %26, i64 0, metadata !121, metadata !226), !dbg !365
  %left.1 = select i1 %24, i32 %25, i32 %left.01, !dbg !391
  %right.1 = select i1 %24, i32 %right.02, i32 %26, !dbg !391
  %27 = add i32 %left.1, %right.1, !dbg !392
  %28 = lshr i32 %27, 1, !dbg !393
  call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !122, metadata !226), !dbg !368
  %29 = load %struct.__sFILE** %12, align 8, !dbg !394, !tbaa !236
  %30 = mul i32 %28, 38, !dbg !395
  %31 = zext i32 %30 to i64, !dbg !396
  %32 = call i32 @fseek(%struct.__sFILE* %29, i64 %31, i32 0) #7, !dbg !397
  call void @llvm.dbg.value(metadata i32* %offset, i64 0, metadata !128, metadata !226), !dbg !373
  call void @llvm.dbg.value(metadata i16* %filenum, i64 0, metadata !129, metadata !226), !dbg !374
  %33 = call i32 @GSIGetRecord(%struct.gsi_s* %gsi, i8* %1, i16* %filenum, i32* %offset) #8, !dbg !375
  %34 = icmp eq i32 %33, 0, !dbg !376
  br i1 %34, label %._crit_edge, label %.lr.ph, !dbg !376

._crit_edge:                                      ; preds = %.lr.ph, %23, %0
  %35 = load %struct.__sFILE** %12, align 8, !dbg !398, !tbaa !236
  call void @llvm.dbg.value(metadata i16* %filenum, i64 0, metadata !129, metadata !226), !dbg !374
  %36 = load i16* %filenum, align 2, !dbg !399, !tbaa !338
  %37 = zext i16 %36 to i64, !dbg !399
  %38 = mul nuw nsw i64 %37, 38, !dbg !400
  %39 = call i32 @fseek(%struct.__sFILE* %35, i64 %38, i32 0) #7, !dbg !401
  call void @llvm.dbg.value(metadata i32* %fmt, i64 0, metadata !130, metadata !226), !dbg !402
  %40 = call i32 @GSIGetRecord(%struct.gsi_s* %gsi, i8* %ret_seqfile, i16* null, i32* %fmt) #8, !dbg !403
  call void @llvm.dbg.value(metadata i32* %fmt, i64 0, metadata !130, metadata !226), !dbg !402
  %41 = load i32* %fmt, align 4, !dbg !404, !tbaa !248
  store i32 %41, i32* %ret_format, align 4, !dbg !405, !tbaa !248
  call void @llvm.dbg.value(metadata i32* %offset, i64 0, metadata !128, metadata !226), !dbg !373
  %42 = load i32* %offset, align 4, !dbg !406, !tbaa !248
  %43 = zext i32 %42 to i64, !dbg !407
  store i64 %43, i64* %ret_offset, align 8, !dbg !408, !tbaa !409
  br label %.loopexit, !dbg !411

.loopexit:                                        ; preds = %21, %._crit_edge
  %.0 = phi i32 [ 1, %._crit_edge ], [ 0, %21 ]
  call void @llvm.lifetime.end(i64 33, i8* %1) #5, !dbg !412
  ret i32 %.0, !dbg !412
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: nounwind optsize ssp uwtable
define void @GSIClose(%struct.gsi_s* nocapture %gsi) #0 {
  tail call void @llvm.dbg.value(metadata %struct.gsi_s* %gsi, i64 0, metadata !135, metadata !226), !dbg !413
  %1 = getelementptr inbounds %struct.gsi_s* %gsi, i64 0, i32 0, !dbg !414
  %2 = load %struct.__sFILE** %1, align 8, !dbg !414, !tbaa !236
  %3 = tail call i32 @fclose(%struct.__sFILE* %2) #7, !dbg !415
  %4 = bitcast %struct.gsi_s* %gsi to i8*, !dbg !416
  tail call void @free(i8* %4) #8, !dbg !417
  ret void, !dbg !418
}

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct.__sFILE* nocapture) #3

; Function Attrs: nounwind optsize ssp uwtable
define %struct.gsiindex_s* @GSIAllocIndex() #0 {
  %1 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 200, i64 40) #7, !dbg !419
  %2 = bitcast i8* %1 to %struct.gsiindex_s*, !dbg !419
  tail call void @llvm.dbg.value(metadata %struct.gsiindex_s* %2, i64 0, metadata !149, metadata !226), !dbg !420
  %3 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 201, i64 80) #7, !dbg !421
  %4 = bitcast i8* %1 to i8**, !dbg !422
  store i8* %3, i8** %4, align 8, !dbg !422, !tbaa !423
  %5 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 202, i64 40) #7, !dbg !425
  %6 = getelementptr inbounds i8* %1, i64 8, !dbg !426
  %7 = bitcast i8* %6 to i8**, !dbg !427
  store i8* %5, i8** %7, align 8, !dbg !427, !tbaa !428
  %8 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 203, i64 4000) #7, !dbg !429
  %9 = getelementptr inbounds i8* %1, i64 24, !dbg !430
  %10 = bitcast i8* %9 to i8**, !dbg !431
  store i8* %8, i8** %10, align 8, !dbg !431, !tbaa !432
  %11 = getelementptr inbounds i8* %1, i64 16, !dbg !433
  %12 = bitcast i8* %11 to i16*, !dbg !433
  store i16 0, i16* %12, align 2, !dbg !434, !tbaa !435
  %13 = getelementptr inbounds i8* %1, i64 32, !dbg !436
  %14 = bitcast i8* %13 to i32*, !dbg !436
  store i32 0, i32* %14, align 4, !dbg !437, !tbaa !438
  ret %struct.gsiindex_s* %2, !dbg !439
}

; Function Attrs: nounwind optsize ssp uwtable
define void @GSIFreeIndex(%struct.gsiindex_s* nocapture %g) #0 {
  tail call void @llvm.dbg.value(metadata %struct.gsiindex_s* %g, i64 0, metadata !154, metadata !226), !dbg !440
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !155, metadata !226), !dbg !441
  %1 = getelementptr inbounds %struct.gsiindex_s* %g, i64 0, i32 2, !dbg !442
  %2 = load i16* %1, align 2, !dbg !442, !tbaa !435
  %3 = icmp eq i16 %2, 0, !dbg !445
  br i1 %3, label %._crit_edge, label %.lr.ph, !dbg !446

.lr.ph:                                           ; preds = %0
  %4 = getelementptr inbounds %struct.gsiindex_s* %g, i64 0, i32 0, !dbg !447
  br label %5, !dbg !446

; <label>:5                                       ; preds = %.lr.ph, %5
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %5 ]
  %6 = load i8*** %4, align 8, !dbg !447, !tbaa !423
  %7 = getelementptr inbounds i8** %6, i64 %indvars.iv, !dbg !448
  %8 = load i8** %7, align 8, !dbg !448, !tbaa !449
  tail call void @free(i8* %8) #8, !dbg !450
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !446
  %9 = load i16* %1, align 2, !dbg !442, !tbaa !435
  %10 = zext i16 %9 to i64, !dbg !445
  %11 = icmp slt i64 %indvars.iv.next, %10, !dbg !445
  br i1 %11, label %5, label %._crit_edge, !dbg !446

._crit_edge:                                      ; preds = %5, %0
  %12 = bitcast %struct.gsiindex_s* %g to i8**, !dbg !451
  %13 = load i8** %12, align 8, !dbg !451, !tbaa !423
  tail call void @free(i8* %13) #8, !dbg !452
  %14 = getelementptr inbounds %struct.gsiindex_s* %g, i64 0, i32 1, !dbg !453
  %15 = bitcast i32** %14 to i8**, !dbg !453
  %16 = load i8** %15, align 8, !dbg !453, !tbaa !428
  tail call void @free(i8* %16) #8, !dbg !454
  %17 = getelementptr inbounds %struct.gsiindex_s* %g, i64 0, i32 3, !dbg !455
  %18 = bitcast %struct.gsikey_s** %17 to i8**, !dbg !455
  %19 = load i8** %18, align 8, !dbg !455, !tbaa !432
  tail call void @free(i8* %19) #8, !dbg !456
  %20 = bitcast %struct.gsiindex_s* %g to i8*, !dbg !457
  tail call void @free(i8* %20) #8, !dbg !458
  ret void, !dbg !459
}

; Function Attrs: nounwind optsize ssp uwtable
define void @GSIAddFileToIndex(%struct.gsiindex_s* nocapture %g, i8* %filename, i32 %fmt) #0 {
  tail call void @llvm.dbg.value(metadata %struct.gsiindex_s* %g, i64 0, metadata !160, metadata !226), !dbg !460
  tail call void @llvm.dbg.value(metadata i8* %filename, i64 0, metadata !161, metadata !226), !dbg !461
  tail call void @llvm.dbg.value(metadata i32 %fmt, i64 0, metadata !162, metadata !226), !dbg !462
  %1 = tail call i64 @strlen(i8* %filename) #7, !dbg !463
  %2 = trunc i64 %1 to i32, !dbg !463
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !163, metadata !226), !dbg !464
  %3 = icmp sgt i32 %2, 31, !dbg !465
  br i1 %3, label %4, label %5, !dbg !467

; <label>:4                                       ; preds = %0
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([34 x i8]* @.str3, i64 0, i64 0)) #7, !dbg !468
  br label %5, !dbg !468

; <label>:5                                       ; preds = %4, %0
  %6 = tail call i8* @sre_strdup(i8* %filename, i32 %2) #7, !dbg !469
  %7 = getelementptr inbounds %struct.gsiindex_s* %g, i64 0, i32 2, !dbg !470
  %8 = load i16* %7, align 2, !dbg !470, !tbaa !435
  %9 = zext i16 %8 to i64, !dbg !471
  %10 = getelementptr inbounds %struct.gsiindex_s* %g, i64 0, i32 0, !dbg !472
  %11 = load i8*** %10, align 8, !dbg !472, !tbaa !423
  %12 = getelementptr inbounds i8** %11, i64 %9, !dbg !471
  store i8* %6, i8** %12, align 8, !dbg !473, !tbaa !449
  %13 = getelementptr inbounds %struct.gsiindex_s* %g, i64 0, i32 1, !dbg !474
  %14 = load i32** %13, align 8, !dbg !474, !tbaa !428
  %15 = getelementptr inbounds i32* %14, i64 %9, !dbg !475
  store i32 %fmt, i32* %15, align 4, !dbg !476, !tbaa !248
  %16 = add i16 %8, 1, !dbg !477
  store i16 %16, i16* %7, align 2, !dbg !477, !tbaa !435
  %17 = urem i16 %16, 10, !dbg !478
  %18 = icmp eq i16 %17, 0, !dbg !480
  br i1 %18, label %19, label %33, !dbg !481

; <label>:19                                      ; preds = %5
  %20 = zext i16 %16 to i64, !dbg !482
  %21 = bitcast %struct.gsiindex_s* %g to i8**, !dbg !483
  %22 = load i8** %21, align 8, !dbg !483, !tbaa !423
  %23 = shl nuw nsw i64 %20, 3, !dbg !483
  %24 = add nuw nsw i64 %23, 80, !dbg !483
  %25 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 229, i8* %22, i64 %24) #7, !dbg !483
  store i8* %25, i8** %21, align 8, !dbg !485, !tbaa !423
  %26 = bitcast i32** %13 to i8**, !dbg !486
  %27 = load i8** %26, align 8, !dbg !486, !tbaa !428
  %28 = load i16* %7, align 2, !dbg !486, !tbaa !435
  %29 = zext i16 %28 to i64, !dbg !486
  %30 = shl nuw nsw i64 %29, 2, !dbg !486
  %31 = add nuw nsw i64 %30, 40, !dbg !486
  %32 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 230, i8* %27, i64 %31) #7, !dbg !486
  store i8* %32, i8** %26, align 8, !dbg !487, !tbaa !428
  br label %33, !dbg !488

; <label>:33                                      ; preds = %19, %5
  ret void, !dbg !489
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #4

; Function Attrs: optsize
declare void @Die(i8*, ...) #2

; Function Attrs: optsize
declare i8* @sre_strdup(i8*, i32) #2

; Function Attrs: optsize
declare i8* @sre_realloc(i8*, i32, i8*, i64) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @GSIAddKeyToIndex(%struct.gsiindex_s* nocapture %g, i8* %key, i32 %filenum, i64 %offset) #0 {
  tail call void @llvm.dbg.value(metadata %struct.gsiindex_s* %g, i64 0, metadata !168, metadata !226), !dbg !490
  tail call void @llvm.dbg.value(metadata i8* %key, i64 0, metadata !169, metadata !226), !dbg !491
  tail call void @llvm.dbg.value(metadata i32 %filenum, i64 0, metadata !170, metadata !226), !dbg !492
  tail call void @llvm.dbg.value(metadata i64 %offset, i64 0, metadata !171, metadata !226), !dbg !493
  %1 = tail call i64 @strlen(i8* %key) #7, !dbg !494
  %2 = icmp ugt i64 %1, 31, !dbg !496
  br i1 %2, label %3, label %4, !dbg !497

; <label>:3                                       ; preds = %0
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([26 x i8]* @.str4, i64 0, i64 0)) #7, !dbg !498
  br label %4, !dbg !498

; <label>:4                                       ; preds = %3, %0
  %5 = icmp sgt i32 %filenum, 65535, !dbg !499
  br i1 %5, label %6, label %7, !dbg !501

; <label>:6                                       ; preds = %4
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([28 x i8]* @.str5, i64 0, i64 0)) #7, !dbg !502
  br label %7, !dbg !502

; <label>:7                                       ; preds = %6, %4
  %8 = icmp sgt i64 %offset, 4294967295, !dbg !503
  br i1 %8, label %9, label %10, !dbg !505

; <label>:9                                       ; preds = %7
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([28 x i8]* @.str6, i64 0, i64 0)) #7, !dbg !506
  br label %10, !dbg !506

; <label>:10                                      ; preds = %9, %7
  %11 = getelementptr inbounds %struct.gsiindex_s* %g, i64 0, i32 4, !dbg !507
  %12 = load i32* %11, align 4, !dbg !507, !tbaa !438
  %13 = sext i32 %12 to i64, !dbg !507
  %14 = getelementptr inbounds %struct.gsiindex_s* %g, i64 0, i32 3, !dbg !507
  %15 = load %struct.gsikey_s** %14, align 8, !dbg !507, !tbaa !432
  %16 = getelementptr inbounds %struct.gsikey_s* %15, i64 %13, i32 0, i64 0, !dbg !507
  %17 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %16, i1 false), !dbg !507
  %18 = tail call i8* @__strncpy_chk(i8* %16, i8* %key, i64 31, i64 %17) #7, !dbg !507
  %19 = load i32* %11, align 4, !dbg !508, !tbaa !438
  %20 = sext i32 %19 to i64, !dbg !509
  %21 = load %struct.gsikey_s** %14, align 8, !dbg !510, !tbaa !432
  %22 = getelementptr inbounds %struct.gsikey_s* %21, i64 %20, i32 0, i64 31, !dbg !509
  store i8 0, i8* %22, align 1, !dbg !511, !tbaa !358
  %23 = trunc i32 %filenum to i16, !dbg !512
  %24 = load i32* %11, align 4, !dbg !513, !tbaa !438
  %25 = sext i32 %24 to i64, !dbg !514
  %26 = load %struct.gsikey_s** %14, align 8, !dbg !515, !tbaa !432
  %27 = getelementptr inbounds %struct.gsikey_s* %26, i64 %25, i32 1, !dbg !516
  store i16 %23, i16* %27, align 2, !dbg !517, !tbaa !518
  %28 = trunc i64 %offset to i32, !dbg !520
  %29 = getelementptr inbounds %struct.gsikey_s* %26, i64 %25, i32 2, !dbg !521
  store i32 %28, i32* %29, align 4, !dbg !522, !tbaa !523
  %30 = add nsw i32 %24, 1, !dbg !524
  store i32 %30, i32* %11, align 4, !dbg !524, !tbaa !438
  %31 = srem i32 %30, 100, !dbg !525
  %32 = icmp eq i32 %31, 0, !dbg !527
  br i1 %32, label %33, label %40, !dbg !528

; <label>:33                                      ; preds = %10
  %34 = getelementptr inbounds %struct.gsikey_s* %26, i64 0, i32 0, i64 0
  %35 = bitcast %struct.gsikey_s** %14 to i8**, !dbg !529
  %36 = add nsw i32 %24, 101, !dbg !529
  %37 = sext i32 %36 to i64, !dbg !529
  %38 = mul nsw i64 %37, 40, !dbg !529
  %39 = tail call i8* @sre_realloc(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 247, i8* %34, i64 %38) #7, !dbg !529
  store i8* %39, i8** %35, align 8, !dbg !530, !tbaa !432
  br label %40, !dbg !531

; <label>:40                                      ; preds = %33, %10
  ret void, !dbg !532
}

; Function Attrs: nounwind optsize
declare i8* @__strncpy_chk(i8*, i8*, i64, i64) #3

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @GSISortIndex(%struct.gsiindex_s* nocapture readonly %g) #0 {
  tail call void @llvm.dbg.value(metadata %struct.gsiindex_s* %g, i64 0, metadata !174, metadata !226), !dbg !533
  %1 = getelementptr inbounds %struct.gsiindex_s* %g, i64 0, i32 3, !dbg !534
  %2 = bitcast %struct.gsikey_s** %1 to i8**, !dbg !534
  %3 = load i8** %2, align 8, !dbg !534, !tbaa !432
  %4 = getelementptr inbounds %struct.gsiindex_s* %g, i64 0, i32 4, !dbg !535
  %5 = load i32* %4, align 4, !dbg !535, !tbaa !438
  %6 = tail call i32 (i8*, i32, i64, i32 (i8*, i8*)*, ...)* bitcast (i32 (...)* @specqsort to i32 (i8*, i32, i64, i32 (i8*, i8*)*, ...)*)(i8* %3, i32 %5, i64 40, i32 (i8*, i8*)* @gsi_keysorter) #7, !dbg !536
  ret void, !dbg !537
}

; Function Attrs: optsize
declare i32 @specqsort(...) #2

; Function Attrs: nounwind optsize readonly ssp uwtable
define internal i32 @gsi_keysorter(i8* nocapture readonly %k1, i8* nocapture readonly %k2) #6 {
  tail call void @llvm.dbg.value(metadata i8* %k1, i64 0, metadata !218, metadata !226), !dbg !538
  tail call void @llvm.dbg.value(metadata i8* %k2, i64 0, metadata !219, metadata !226), !dbg !539
  %1 = tail call i32 @strcmp(i8* %k1, i8* %k2) #7, !dbg !540
  ret i32 %1, !dbg !541
}

; Function Attrs: nounwind optsize ssp uwtable
define void @GSIWriteIndex(%struct.__sFILE* %fp, %struct.gsiindex_s* nocapture readonly %g) #0 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !179, metadata !226), !dbg !542
  tail call void @llvm.dbg.value(metadata %struct.gsiindex_s* %g, i64 0, metadata !180, metadata !226), !dbg !543
  %1 = getelementptr inbounds %struct.gsiindex_s* %g, i64 0, i32 2, !dbg !544
  %2 = getelementptr inbounds %struct.gsiindex_s* %g, i64 0, i32 4, !dbg !546
  %3 = load i16* %1, align 2, !dbg !548, !tbaa !435
  %4 = zext i16 %3 to i32, !dbg !549
  %5 = load i32* %2, align 4, !dbg !550, !tbaa !438
  %6 = sext i32 %5 to i64, !dbg !551
  tail call void @GSIWriteHeader(%struct.__sFILE* %fp, i32 %4, i64 %6) #8, !dbg !552
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !181, metadata !226), !dbg !553
  %7 = load i16* %1, align 2, !dbg !554, !tbaa !435
  %8 = icmp eq i16 %7, 0, !dbg !557
  br i1 %8, label %.preheader, label %.lr.ph4, !dbg !558

.lr.ph4:                                          ; preds = %0
  %9 = getelementptr inbounds %struct.gsiindex_s* %g, i64 0, i32 0, !dbg !559
  %10 = getelementptr inbounds %struct.gsiindex_s* %g, i64 0, i32 1, !dbg !560
  br label %14, !dbg !558

.preheader:                                       ; preds = %14, %0
  %11 = load i32* %2, align 4, !dbg !561, !tbaa !438
  %12 = icmp eq i32 %11, 0, !dbg !564
  br i1 %12, label %._crit_edge, label %.lr.ph, !dbg !565

.lr.ph:                                           ; preds = %.preheader
  %13 = getelementptr inbounds %struct.gsiindex_s* %g, i64 0, i32 3, !dbg !566
  br label %27, !dbg !565

; <label>:14                                      ; preds = %.lr.ph4, %14
  %i.02 = phi i32 [ 0, %.lr.ph4 ], [ %19, %14 ]
  %15 = zext i32 %i.02 to i64, !dbg !567
  %16 = load i8*** %9, align 8, !dbg !559, !tbaa !423
  %17 = getelementptr inbounds i8** %16, i64 %15, !dbg !567
  %18 = load i8** %17, align 8, !dbg !567, !tbaa !449
  %19 = add nuw nsw i32 %i.02, 1, !dbg !568
  %20 = load i32** %10, align 8, !dbg !560, !tbaa !428
  %21 = getelementptr inbounds i32* %20, i64 %15, !dbg !569
  %22 = load i32* %21, align 4, !dbg !569, !tbaa !248
  %23 = tail call i32 @GSIWriteFileRecord(%struct.__sFILE* %fp, i8* %18, i32 %19, i32 %22) #8, !dbg !570
  tail call void @llvm.dbg.value(metadata i32 %19, i64 0, metadata !181, metadata !226), !dbg !553
  %24 = load i16* %1, align 2, !dbg !554, !tbaa !435
  %25 = zext i16 %24 to i32, !dbg !571
  %26 = icmp ult i32 %19, %25, !dbg !557
  br i1 %26, label %14, label %.preheader, !dbg !558

; <label>:27                                      ; preds = %.lr.ph, %27
  %i.11 = phi i32 [ 0, %.lr.ph ], [ %38, %27 ]
  %28 = zext i32 %i.11 to i64, !dbg !572
  %29 = load %struct.gsikey_s** %13, align 8, !dbg !566, !tbaa !432
  %30 = getelementptr inbounds %struct.gsikey_s* %29, i64 %28, i32 0, i64 0, !dbg !572
  %31 = getelementptr inbounds %struct.gsikey_s* %29, i64 %28, i32 1, !dbg !573
  %32 = load i16* %31, align 2, !dbg !573, !tbaa !518
  %33 = zext i16 %32 to i32, !dbg !574
  %34 = getelementptr inbounds %struct.gsikey_s* %29, i64 %28, i32 2, !dbg !575
  %35 = load i32* %34, align 4, !dbg !575, !tbaa !523
  %36 = zext i32 %35 to i64, !dbg !576
  %37 = tail call i32 @GSIWriteKeyRecord(%struct.__sFILE* %fp, i8* %30, i32 %33, i64 %36) #8, !dbg !577
  %38 = add nuw i32 %i.11, 1, !dbg !578
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !181, metadata !226), !dbg !553
  %39 = load i32* %2, align 4, !dbg !561, !tbaa !438
  %40 = icmp ult i32 %38, %39, !dbg !564
  br i1 %40, label %27, label %._crit_edge, !dbg !565

._crit_edge:                                      ; preds = %27, %.preheader
  ret void, !dbg !579
}

; Function Attrs: nounwind optsize ssp uwtable
define void @GSIWriteHeader(%struct.__sFILE* %fp, i32 %nfiles, i64 %nkeys) #0 {
  %key = alloca [32 x i8], align 16
  %f1 = alloca i16, align 2
  %f2 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !186, metadata !226), !dbg !580
  tail call void @llvm.dbg.value(metadata i32 %nfiles, i64 0, metadata !187, metadata !226), !dbg !581
  tail call void @llvm.dbg.value(metadata i64 %nkeys, i64 0, metadata !188, metadata !226), !dbg !582
  tail call void @llvm.dbg.declare(metadata [32 x i8]* %key, metadata !189, metadata !226), !dbg !583
  %1 = icmp sgt i32 %nfiles, 65535, !dbg !584
  br i1 %1, label %2, label %3, !dbg !586

; <label>:2                                       ; preds = %0
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([25 x i8]* @.str9, i64 0, i64 0)) #7, !dbg !587
  br label %3, !dbg !587

; <label>:3                                       ; preds = %2, %0
  %4 = icmp sgt i64 %nkeys, 4294967295, !dbg !588
  br i1 %4, label %5, label %6, !dbg !590

; <label>:5                                       ; preds = %3
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([24 x i8]* @.str10, i64 0, i64 0)) #7, !dbg !591
  br label %6, !dbg !591

; <label>:6                                       ; preds = %5, %3
  %7 = trunc i32 %nfiles to i16, !dbg !592
  tail call void @llvm.dbg.value(metadata i16 %7, i64 0, metadata !190, metadata !226), !dbg !593
  %8 = trunc i64 %nkeys to i32, !dbg !594
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !191, metadata !226), !dbg !595
  tail call void @llvm.dbg.value(metadata i16* %f1, i64 0, metadata !190, metadata !226), !dbg !593
  %9 = tail call zeroext i16 @sre_hton16(i16 zeroext %7) #7, !dbg !596
  tail call void @llvm.dbg.value(metadata i16 %9, i64 0, metadata !190, metadata !226), !dbg !593
  store i16 %9, i16* %f1, align 2, !dbg !597, !tbaa !338
  tail call void @llvm.dbg.value(metadata i32* %f2, i64 0, metadata !191, metadata !226), !dbg !595
  %10 = tail call i32 @sre_hton32(i32 %8) #7, !dbg !598
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !191, metadata !226), !dbg !595
  store i32 %10, i32* %f2, align 4, !dbg !599, !tbaa !248
  %11 = getelementptr inbounds [32 x i8]* %key, i64 0, i64 0, !dbg !600
  %12 = bitcast [32 x i8]* %key to i32*, !dbg !600
  store i32 4805447, i32* %12, align 16, !dbg !600
  %13 = call i64 @"\01_fwrite"(i8* %11, i64 1, i64 32, %struct.__sFILE* %fp) #7, !dbg !601
  %14 = icmp ult i64 %13, 32, !dbg !603
  br i1 %14, label %15, label %16, !dbg !604

; <label>:15                                      ; preds = %6
  call void @Panic(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 314) #7, !dbg !605
  br label %16, !dbg !605

; <label>:16                                      ; preds = %15, %6
  %17 = bitcast i16* %f1 to i8*, !dbg !606
  %18 = call i64 @"\01_fwrite"(i8* %17, i64 2, i64 1, %struct.__sFILE* %fp) #7, !dbg !608
  %19 = icmp eq i64 %18, 0, !dbg !609
  br i1 %19, label %20, label %21, !dbg !610

; <label>:20                                      ; preds = %16
  call void @Panic(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 315) #7, !dbg !611
  br label %21, !dbg !611

; <label>:21                                      ; preds = %20, %16
  %22 = bitcast i32* %f2 to i8*, !dbg !612
  %23 = call i64 @"\01_fwrite"(i8* %22, i64 4, i64 1, %struct.__sFILE* %fp) #7, !dbg !614
  %24 = icmp eq i64 %23, 0, !dbg !615
  br i1 %24, label %25, label %26, !dbg !616

; <label>:25                                      ; preds = %21
  call void @Panic(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 316) #7, !dbg !617
  br label %26, !dbg !617

; <label>:26                                      ; preds = %25, %21
  ret void, !dbg !618
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @GSIWriteFileRecord(%struct.__sFILE* %fp, i8* %fname, i32 %idx, i32 %fmt) #0 {
  %f1 = alloca i16, align 2
  %f2 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !196, metadata !226), !dbg !619
  tail call void @llvm.dbg.value(metadata i8* %fname, i64 0, metadata !197, metadata !226), !dbg !620
  tail call void @llvm.dbg.value(metadata i32 %idx, i64 0, metadata !198, metadata !226), !dbg !621
  tail call void @llvm.dbg.value(metadata i32 %fmt, i64 0, metadata !199, metadata !226), !dbg !622
  %1 = tail call i64 @strlen(i8* %fname) #7, !dbg !623
  %2 = icmp ugt i64 %1, 31, !dbg !625
  br i1 %2, label %23, label %3, !dbg !626

; <label>:3                                       ; preds = %0
  %4 = icmp sgt i32 %idx, 65535, !dbg !627
  br i1 %4, label %5, label %6, !dbg !629

; <label>:5                                       ; preds = %3
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([29 x i8]* @.str11, i64 0, i64 0)) #7, !dbg !630
  br label %6, !dbg !630

; <label>:6                                       ; preds = %3, %5
  %7 = trunc i32 %idx to i16, !dbg !631
  tail call void @llvm.dbg.value(metadata i16 %7, i64 0, metadata !200, metadata !226), !dbg !632
  tail call void @llvm.dbg.value(metadata i32 %fmt, i64 0, metadata !201, metadata !226), !dbg !633
  tail call void @llvm.dbg.value(metadata i16* %f1, i64 0, metadata !200, metadata !226), !dbg !632
  %8 = tail call zeroext i16 @sre_hton16(i16 zeroext %7) #7, !dbg !634
  tail call void @llvm.dbg.value(metadata i16 %8, i64 0, metadata !200, metadata !226), !dbg !632
  store i16 %8, i16* %f1, align 2, !dbg !635, !tbaa !338
  tail call void @llvm.dbg.value(metadata i32* %f2, i64 0, metadata !201, metadata !226), !dbg !633
  %9 = tail call i32 @sre_hton32(i32 %fmt) #7, !dbg !636
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !201, metadata !226), !dbg !633
  store i32 %9, i32* %f2, align 4, !dbg !637, !tbaa !248
  %10 = tail call i64 @"\01_fwrite"(i8* %fname, i64 1, i64 32, %struct.__sFILE* %fp) #7, !dbg !638
  %11 = icmp ult i64 %10, 32, !dbg !640
  br i1 %11, label %12, label %13, !dbg !641

; <label>:12                                      ; preds = %6
  tail call void @Panic(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 347) #7, !dbg !642
  br label %13, !dbg !642

; <label>:13                                      ; preds = %12, %6
  %14 = bitcast i16* %f1 to i8*, !dbg !643
  %15 = call i64 @"\01_fwrite"(i8* %14, i64 2, i64 1, %struct.__sFILE* %fp) #7, !dbg !645
  %16 = icmp eq i64 %15, 0, !dbg !646
  br i1 %16, label %17, label %18, !dbg !647

; <label>:17                                      ; preds = %13
  call void @Panic(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 348) #7, !dbg !648
  br label %18, !dbg !648

; <label>:18                                      ; preds = %17, %13
  %19 = bitcast i32* %f2 to i8*, !dbg !649
  %20 = call i64 @"\01_fwrite"(i8* %19, i64 4, i64 1, %struct.__sFILE* %fp) #7, !dbg !651
  %21 = icmp eq i64 %20, 0, !dbg !652
  br i1 %21, label %22, label %23, !dbg !653

; <label>:22                                      ; preds = %18
  call void @Panic(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 349) #7, !dbg !654
  br label %23, !dbg !654

; <label>:23                                      ; preds = %18, %22, %0
  %.0 = phi i32 [ 0, %0 ], [ 1, %22 ], [ 1, %18 ]
  ret i32 %.0, !dbg !655
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @GSIWriteKeyRecord(%struct.__sFILE* %fp, i8* %key, i32 %fileidx, i64 %offset) #0 {
  %f1 = alloca i16, align 2
  %f2 = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !206, metadata !226), !dbg !656
  tail call void @llvm.dbg.value(metadata i8* %key, i64 0, metadata !207, metadata !226), !dbg !657
  tail call void @llvm.dbg.value(metadata i32 %fileidx, i64 0, metadata !208, metadata !226), !dbg !658
  tail call void @llvm.dbg.value(metadata i64 %offset, i64 0, metadata !209, metadata !226), !dbg !659
  %1 = tail call i64 @strlen(i8* %key) #7, !dbg !660
  %2 = icmp ugt i64 %1, 31, !dbg !662
  br i1 %2, label %27, label %3, !dbg !663

; <label>:3                                       ; preds = %0
  %4 = icmp sgt i32 %fileidx, 65535, !dbg !664
  br i1 %4, label %5, label %6, !dbg !666

; <label>:5                                       ; preds = %3
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([29 x i8]* @.str11, i64 0, i64 0)) #7, !dbg !667
  br label %6, !dbg !667

; <label>:6                                       ; preds = %5, %3
  %7 = icmp sgt i64 %offset, 4294967295, !dbg !668
  br i1 %7, label %8, label %9, !dbg !670

; <label>:8                                       ; preds = %6
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([25 x i8]* @.str13, i64 0, i64 0)) #7, !dbg !671
  br label %9, !dbg !671

; <label>:9                                       ; preds = %8, %6
  %10 = trunc i32 %fileidx to i16, !dbg !672
  tail call void @llvm.dbg.value(metadata i16 %10, i64 0, metadata !210, metadata !226), !dbg !673
  %11 = trunc i64 %offset to i32, !dbg !674
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !211, metadata !226), !dbg !675
  tail call void @llvm.dbg.value(metadata i16* %f1, i64 0, metadata !210, metadata !226), !dbg !673
  %12 = tail call zeroext i16 @sre_hton16(i16 zeroext %10) #7, !dbg !676
  tail call void @llvm.dbg.value(metadata i16 %12, i64 0, metadata !210, metadata !226), !dbg !673
  store i16 %12, i16* %f1, align 2, !dbg !677, !tbaa !338
  tail call void @llvm.dbg.value(metadata i32* %f2, i64 0, metadata !211, metadata !226), !dbg !675
  %13 = tail call i32 @sre_hton32(i32 %11) #7, !dbg !678
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !211, metadata !226), !dbg !675
  store i32 %13, i32* %f2, align 4, !dbg !679, !tbaa !248
  %14 = tail call i64 @"\01_fwrite"(i8* %key, i64 1, i64 32, %struct.__sFILE* %fp) #7, !dbg !680
  %15 = icmp ult i64 %14, 32, !dbg !682
  br i1 %15, label %16, label %17, !dbg !683

; <label>:16                                      ; preds = %9
  tail call void @Panic(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 382) #7, !dbg !684
  br label %17, !dbg !684

; <label>:17                                      ; preds = %16, %9
  %18 = bitcast i16* %f1 to i8*, !dbg !685
  %19 = call i64 @"\01_fwrite"(i8* %18, i64 2, i64 1, %struct.__sFILE* %fp) #7, !dbg !687
  %20 = icmp eq i64 %19, 0, !dbg !688
  br i1 %20, label %21, label %22, !dbg !689

; <label>:21                                      ; preds = %17
  call void @Panic(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 383) #7, !dbg !690
  br label %22, !dbg !690

; <label>:22                                      ; preds = %21, %17
  %23 = bitcast i32* %f2 to i8*, !dbg !691
  %24 = call i64 @"\01_fwrite"(i8* %23, i64 4, i64 1, %struct.__sFILE* %fp) #7, !dbg !693
  %25 = icmp eq i64 %24, 0, !dbg !694
  br i1 %25, label %26, label %27, !dbg !695

; <label>:26                                      ; preds = %22
  call void @Panic(i8* getelementptr inbounds ([61 x i8]* @.str, i64 0, i64 0), i32 384) #7, !dbg !696
  br label %27, !dbg !696

; <label>:27                                      ; preds = %22, %26, %0
  %.0 = phi i32 [ 0, %0 ], [ 1, %26 ], [ 1, %22 ]
  ret i32 %.0, !dbg !697
}

; Function Attrs: optsize
declare zeroext i16 @sre_hton16(i16 zeroext) #2

; Function Attrs: optsize
declare i32 @sre_hton32(i32) #2

; Function Attrs: optsize
declare i64 @"\01_fwrite"(i8*, i64, i64, %struct.__sFILE*) #2

; Function Attrs: optsize
declare void @Panic(i8*, i32) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!222, !223, !224}
!llvm.ident = !{!225}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !91, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/gsi.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !31, !19, !81, !75, !79, !82}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "GSIFILE", file: !6, line: 51, baseType: !7)
!6 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/gsi.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!7 = !DICompositeType(tag: DW_TAG_structure_type, name: "gsi_s", file: !6, line: 46, size: 128, align: 64, elements: !8)
!8 = !{!9, !74, !78}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "gsifp", scope: !7, file: !6, line: 47, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !12, line: 153, baseType: !13)
!12 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!13 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !12, line: 122, size: 1216, align: 64, elements: !14)
!14 = !{!15, !18, !20, !21, !23, !24, !29, !30, !32, !36, !42, !52, !58, !59, !62, !63, !67, !71, !72, !73}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !13, file: !12, line: 123, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !13, file: !12, line: 124, baseType: !19, size: 32, align: 32, offset: 64)
!19 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !13, file: !12, line: 125, baseType: !19, size: 32, align: 32, offset: 96)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !13, file: !12, line: 126, baseType: !22, size: 16, align: 16, offset: 128)
!22 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !13, file: !12, line: 127, baseType: !22, size: 16, align: 16, offset: 144)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !13, file: !12, line: 128, baseType: !25, size: 128, align: 64, offset: 192)
!25 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !12, line: 88, size: 128, align: 64, elements: !26)
!26 = !{!27, !28}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !25, file: !12, line: 89, baseType: !16, size: 64, align: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !25, file: !12, line: 90, baseType: !19, size: 32, align: 32, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !13, file: !12, line: 129, baseType: !19, size: 32, align: 32, offset: 320)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !13, file: !12, line: 132, baseType: !31, size: 64, align: 64, offset: 384)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !13, file: !12, line: 133, baseType: !33, size: 64, align: 64, offset: 448)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!34 = !DISubroutineType(types: !35)
!35 = !{!19, !31}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !13, file: !12, line: 134, baseType: !37, size: 64, align: 64, offset: 512)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!38 = !DISubroutineType(types: !39)
!39 = !{!19, !31, !40, !19}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!41 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !13, file: !12, line: 135, baseType: !43, size: 64, align: 64, offset: 576)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!44 = !DISubroutineType(types: !45)
!45 = !{!46, !31, !46, !19}
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !12, line: 77, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !48, line: 71, baseType: !49)
!48 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !50, line: 46, baseType: !51)
!50 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!51 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !13, file: !12, line: 136, baseType: !53, size: 64, align: 64, offset: 640)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!54 = !DISubroutineType(types: !55)
!55 = !{!19, !31, !56, !19}
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !13, file: !12, line: 139, baseType: !25, size: 128, align: 64, offset: 704)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !13, file: !12, line: 140, baseType: !60, size: 64, align: 64, offset: 832)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64, align: 64)
!61 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !12, line: 94, flags: DIFlagFwdDecl)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !13, file: !12, line: 141, baseType: !19, size: 32, align: 32, offset: 896)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !13, file: !12, line: 144, baseType: !64, size: 24, align: 8, offset: 928)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 24, align: 8, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 3)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !13, file: !12, line: 145, baseType: !68, size: 8, align: 8, offset: 952)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 8, align: 8, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 1)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !13, file: !12, line: 148, baseType: !25, size: 128, align: 64, offset: 960)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !13, file: !12, line: 151, baseType: !19, size: 32, align: 32, offset: 1088)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !13, file: !12, line: 152, baseType: !46, size: 64, align: 64, offset: 1152)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "nfiles", scope: !7, file: !6, line: 48, baseType: !75, size: 16, align: 16, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqd_uint16", file: !76, line: 40, baseType: !77)
!76 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/squid.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!77 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "recnum", scope: !7, file: !6, line: 49, baseType: !79, size: 32, align: 32, offset: 96)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqd_uint32", file: !76, line: 41, baseType: !80)
!80 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!81 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64, align: 64)
!83 = !DICompositeType(tag: DW_TAG_structure_type, name: "gsikey_s", file: !6, line: 53, size: 320, align: 32, elements: !84)
!84 = !{!85, !89, !90}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !83, file: !6, line: 54, baseType: !86, size: 256, align: 8)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 256, align: 8, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 32)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "filenum", scope: !83, file: !6, line: 55, baseType: !75, size: 16, align: 16, offset: 256)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !83, file: !6, line: 56, baseType: !79, size: 32, align: 32, offset: 288)
!91 = !{!92, !99, !109, !131, !136, !150, !156, !164, !172, !175, !182, !192, !202, !212}
!92 = !DISubprogram(name: "GSIOpen", scope: !1, file: !1, line: 53, type: !93, isLocal: false, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: true, function: %struct.gsi_s* (i8*)* @GSIOpen, variables: !95)
!93 = !DISubroutineType(types: !94)
!94 = !{!4, !40}
!95 = !{!96, !97, !98}
!96 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gsifile", arg: 1, scope: !92, file: !1, line: 53, type: !40)
!97 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gsi", scope: !92, file: !1, line: 55, type: !4)
!98 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "magic", scope: !92, file: !1, line: 56, type: !86)
!99 = !DISubprogram(name: "GSIGetRecord", scope: !1, file: !1, line: 93, type: !100, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.gsi_s*, i8*, i16*, i32*)* @GSIGetRecord, variables: !104)
!100 = !DISubroutineType(types: !101)
!101 = !{!19, !4, !40, !102, !103}
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, align: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64)
!104 = !{!105, !106, !107, !108}
!105 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gsi", arg: 1, scope: !99, file: !1, line: 93, type: !4)
!106 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f1", arg: 2, scope: !99, file: !1, line: 93, type: !40)
!107 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f2", arg: 3, scope: !99, file: !1, line: 93, type: !102)
!108 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f3", arg: 4, scope: !99, file: !1, line: 93, type: !103)
!109 = !DISubprogram(name: "GSIGetOffset", scope: !1, file: !1, line: 128, type: !110, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.gsi_s*, i8*, i8*, i32*, i64*)* @GSIGetOffset, variables: !114)
!110 = !DISubroutineType(types: !111)
!111 = !{!19, !4, !40, !40, !112, !113}
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64, align: 64)
!114 = !{!115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !128, !129, !130}
!115 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gsi", arg: 1, scope: !109, file: !1, line: 128, type: !4)
!116 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "key", arg: 2, scope: !109, file: !1, line: 128, type: !40)
!117 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ret_seqfile", arg: 3, scope: !109, file: !1, line: 128, type: !40)
!118 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ret_format", arg: 4, scope: !109, file: !1, line: 129, type: !112)
!119 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ret_offset", arg: 5, scope: !109, file: !1, line: 129, type: !113)
!120 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "left", scope: !109, file: !1, line: 131, type: !79)
!121 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "right", scope: !109, file: !1, line: 131, type: !79)
!122 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mid", scope: !109, file: !1, line: 131, type: !79)
!123 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cmp", scope: !109, file: !1, line: 132, type: !19)
!124 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !109, file: !1, line: 133, type: !125)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 264, align: 8, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 33)
!128 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "offset", scope: !109, file: !1, line: 134, type: !79)
!129 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "filenum", scope: !109, file: !1, line: 135, type: !75)
!130 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fmt", scope: !109, file: !1, line: 136, type: !79)
!131 = !DISubprogram(name: "GSIClose", scope: !1, file: !1, line: 171, type: !132, isLocal: false, isDefinition: true, scopeLine: 172, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.gsi_s*)* @GSIClose, variables: !134)
!132 = !DISubroutineType(types: !133)
!133 = !{null, !4}
!134 = !{!135}
!135 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gsi", arg: 1, scope: !131, file: !1, line: 171, type: !4)
!136 = !DISubprogram(name: "GSIAllocIndex", scope: !1, file: !1, line: 196, type: !137, isLocal: false, isDefinition: true, scopeLine: 197, flags: DIFlagPrototyped, isOptimized: true, function: %struct.gsiindex_s* ()* @GSIAllocIndex, variables: !148)
!137 = !DISubroutineType(types: !138)
!138 = !{!139}
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64, align: 64)
!140 = !DICompositeType(tag: DW_TAG_structure_type, name: "gsiindex_s", file: !6, line: 58, size: 320, align: 64, elements: !141)
!141 = !{!142, !144, !145, !146, !147}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "filenames", scope: !140, file: !6, line: 59, baseType: !143, size: 64, align: 64)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64, align: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "fmt", scope: !140, file: !6, line: 60, baseType: !112, size: 64, align: 64, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "nfiles", scope: !140, file: !6, line: 61, baseType: !75, size: 16, align: 16, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !140, file: !6, line: 63, baseType: !82, size: 64, align: 64, offset: 192)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "nkeys", scope: !140, file: !6, line: 64, baseType: !19, size: 32, align: 32, offset: 256)
!148 = !{!149}
!149 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "g", scope: !136, file: !1, line: 198, type: !139)
!150 = !DISubprogram(name: "GSIFreeIndex", scope: !1, file: !1, line: 209, type: !151, isLocal: false, isDefinition: true, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.gsiindex_s*)* @GSIFreeIndex, variables: !153)
!151 = !DISubroutineType(types: !152)
!152 = !{null, !139}
!153 = !{!154, !155}
!154 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "g", arg: 1, scope: !150, file: !1, line: 209, type: !139)
!155 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !150, file: !1, line: 211, type: !19)
!156 = !DISubprogram(name: "GSIAddFileToIndex", scope: !1, file: !1, line: 219, type: !157, isLocal: false, isDefinition: true, scopeLine: 220, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.gsiindex_s*, i8*, i32)* @GSIAddFileToIndex, variables: !159)
!157 = !DISubroutineType(types: !158)
!158 = !{null, !139, !40, !19}
!159 = !{!160, !161, !162, !163}
!160 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "g", arg: 1, scope: !156, file: !1, line: 219, type: !139)
!161 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename", arg: 2, scope: !156, file: !1, line: 219, type: !40)
!162 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fmt", arg: 3, scope: !156, file: !1, line: 219, type: !19)
!163 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !156, file: !1, line: 221, type: !19)
!164 = !DISubprogram(name: "GSIAddKeyToIndex", scope: !1, file: !1, line: 234, type: !165, isLocal: false, isDefinition: true, scopeLine: 235, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.gsiindex_s*, i8*, i32, i64)* @GSIAddKeyToIndex, variables: !167)
!165 = !DISubroutineType(types: !166)
!166 = !{null, !139, !40, !19, !81}
!167 = !{!168, !169, !170, !171}
!168 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "g", arg: 1, scope: !164, file: !1, line: 234, type: !139)
!169 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "key", arg: 2, scope: !164, file: !1, line: 234, type: !40)
!170 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filenum", arg: 3, scope: !164, file: !1, line: 234, type: !19)
!171 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "offset", arg: 4, scope: !164, file: !1, line: 234, type: !81)
!172 = !DISubprogram(name: "GSISortIndex", scope: !1, file: !1, line: 259, type: !151, isLocal: false, isDefinition: true, scopeLine: 260, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.gsiindex_s*)* @GSISortIndex, variables: !173)
!173 = !{!174}
!174 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "g", arg: 1, scope: !172, file: !1, line: 259, type: !139)
!175 = !DISubprogram(name: "GSIWriteIndex", scope: !1, file: !1, line: 264, type: !176, isLocal: false, isDefinition: true, scopeLine: 265, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, %struct.gsiindex_s*)* @GSIWriteIndex, variables: !178)
!176 = !DISubroutineType(types: !177)
!177 = !{null, !10, !139}
!178 = !{!179, !180, !181}
!179 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !175, file: !1, line: 264, type: !10)
!180 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "g", arg: 2, scope: !175, file: !1, line: 264, type: !139)
!181 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !175, file: !1, line: 266, type: !79)
!182 = !DISubprogram(name: "GSIWriteHeader", scope: !1, file: !1, line: 297, type: !183, isLocal: false, isDefinition: true, scopeLine: 298, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, i32, i64)* @GSIWriteHeader, variables: !185)
!183 = !DISubroutineType(types: !184)
!184 = !{null, !10, !19, !81}
!185 = !{!186, !187, !188, !189, !190, !191}
!186 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !182, file: !1, line: 297, type: !10)
!187 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nfiles", arg: 2, scope: !182, file: !1, line: 297, type: !19)
!188 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nkeys", arg: 3, scope: !182, file: !1, line: 297, type: !81)
!189 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "key", scope: !182, file: !1, line: 299, type: !86)
!190 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "f1", scope: !182, file: !1, line: 300, type: !75)
!191 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "f2", scope: !182, file: !1, line: 301, type: !79)
!192 = !DISubprogram(name: "GSIWriteFileRecord", scope: !1, file: !1, line: 333, type: !193, isLocal: false, isDefinition: true, scopeLine: 334, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.__sFILE*, i8*, i32, i32)* @GSIWriteFileRecord, variables: !195)
!193 = !DISubroutineType(types: !194)
!194 = !{!19, !10, !40, !19, !19}
!195 = !{!196, !197, !198, !199, !200, !201}
!196 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !192, file: !1, line: 333, type: !10)
!197 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fname", arg: 2, scope: !192, file: !1, line: 333, type: !40)
!198 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "idx", arg: 3, scope: !192, file: !1, line: 333, type: !19)
!199 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fmt", arg: 4, scope: !192, file: !1, line: 333, type: !19)
!200 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "f1", scope: !192, file: !1, line: 335, type: !75)
!201 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "f2", scope: !192, file: !1, line: 336, type: !79)
!202 = !DISubprogram(name: "GSIWriteKeyRecord", scope: !1, file: !1, line: 368, type: !203, isLocal: false, isDefinition: true, scopeLine: 369, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.__sFILE*, i8*, i32, i64)* @GSIWriteKeyRecord, variables: !205)
!203 = !DISubroutineType(types: !204)
!204 = !{!19, !10, !40, !19, !81}
!205 = !{!206, !207, !208, !209, !210, !211}
!206 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !202, file: !1, line: 368, type: !10)
!207 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "key", arg: 2, scope: !202, file: !1, line: 368, type: !40)
!208 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fileidx", arg: 3, scope: !202, file: !1, line: 368, type: !19)
!209 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "offset", arg: 4, scope: !202, file: !1, line: 368, type: !81)
!210 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "f1", scope: !202, file: !1, line: 370, type: !75)
!211 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "f2", scope: !202, file: !1, line: 371, type: !79)
!212 = !DISubprogram(name: "gsi_keysorter", scope: !1, file: !1, line: 250, type: !213, isLocal: true, isDefinition: true, scopeLine: 251, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i8*)* @gsi_keysorter, variables: !217)
!213 = !DISubroutineType(types: !214)
!214 = !{!19, !215, !215}
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64, align: 64)
!216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!217 = !{!218, !219, !220, !221}
!218 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "k1", arg: 1, scope: !212, file: !1, line: 250, type: !215)
!219 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "k2", arg: 2, scope: !212, file: !1, line: 250, type: !215)
!220 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "key1", scope: !212, file: !1, line: 252, type: !82)
!221 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "key2", scope: !212, file: !1, line: 253, type: !82)
!222 = !{i32 2, !"Dwarf Version", i32 2}
!223 = !{i32 2, !"Debug Info Version", i32 700000003}
!224 = !{i32 1, !"PIC Level", i32 2}
!225 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!226 = !DIExpression()
!227 = !DILocation(line: 53, column: 15, scope: !92)
!228 = !DILocation(line: 56, column: 15, scope: !92)
!229 = !DILocation(line: 58, column: 21, scope: !92)
!230 = !DILocation(line: 58, column: 9, scope: !92)
!231 = !DILocation(line: 55, column: 15, scope: !92)
!232 = !DILocation(line: 59, column: 21, scope: !233)
!233 = distinct !DILexicalBlock(scope: !92, file: !1, line: 59, column: 7)
!234 = !DILocation(line: 59, column: 13, scope: !233)
!235 = !DILocation(line: 59, column: 19, scope: !233)
!236 = !{!237, !238, i64 0}
!237 = !{!"gsi_s", !238, i64 0, !241, i64 8, !242, i64 12}
!238 = !{!"any pointer", !239, i64 0}
!239 = !{!"omnipotent char", !240, i64 0}
!240 = !{!"Simple C/C++ TBAA"}
!241 = !{!"short", !239, i64 0}
!242 = !{!"int", !239, i64 0}
!243 = !DILocation(line: 59, column: 42, scope: !233)
!244 = !DILocation(line: 59, column: 7, scope: !92)
!245 = !DILocation(line: 60, column: 7, scope: !246)
!246 = distinct !DILexicalBlock(scope: !233, file: !1, line: 60, column: 5)
!247 = !DILocation(line: 60, column: 30, scope: !246)
!248 = !{!242, !242, i64 0}
!249 = !DILocation(line: 60, column: 46, scope: !246)
!250 = !DILocation(line: 62, column: 15, scope: !251)
!251 = distinct !DILexicalBlock(scope: !92, file: !1, line: 62, column: 7)
!252 = !DILocation(line: 62, column: 9, scope: !251)
!253 = !DILocation(line: 62, column: 7, scope: !92)
!254 = !DILocation(line: 63, column: 7, scope: !255)
!255 = distinct !DILexicalBlock(scope: !251, file: !1, line: 63, column: 5)
!256 = !DILocation(line: 63, column: 30, scope: !255)
!257 = !DILocation(line: 63, column: 46, scope: !255)
!258 = !DILocation(line: 64, column: 7, scope: !259)
!259 = distinct !DILexicalBlock(scope: !92, file: !1, line: 64, column: 7)
!260 = !DILocation(line: 64, column: 28, scope: !259)
!261 = !DILocation(line: 64, column: 7, scope: !92)
!262 = !DILocation(line: 65, column: 7, scope: !263)
!263 = distinct !DILexicalBlock(scope: !259, file: !1, line: 65, column: 5)
!264 = !DILocation(line: 65, column: 30, scope: !263)
!265 = !DILocation(line: 65, column: 46, scope: !263)
!266 = !DILocation(line: 67, column: 22, scope: !267)
!267 = distinct !DILexicalBlock(scope: !92, file: !1, line: 67, column: 7)
!268 = !DILocation(line: 67, column: 59, scope: !267)
!269 = !DILocation(line: 67, column: 9, scope: !267)
!270 = !DILocation(line: 67, column: 7, scope: !92)
!271 = !DILocation(line: 68, column: 7, scope: !272)
!272 = distinct !DILexicalBlock(scope: !267, file: !1, line: 68, column: 5)
!273 = !DILocation(line: 68, column: 30, scope: !272)
!274 = !DILocation(line: 68, column: 46, scope: !272)
!275 = !DILocation(line: 69, column: 22, scope: !276)
!276 = distinct !DILexicalBlock(scope: !92, file: !1, line: 69, column: 7)
!277 = !DILocation(line: 69, column: 59, scope: !276)
!278 = !DILocation(line: 69, column: 9, scope: !276)
!279 = !DILocation(line: 69, column: 7, scope: !92)
!280 = !DILocation(line: 70, column: 7, scope: !281)
!281 = distinct !DILexicalBlock(scope: !276, file: !1, line: 70, column: 5)
!282 = !DILocation(line: 70, column: 30, scope: !281)
!283 = !DILocation(line: 70, column: 46, scope: !281)
!284 = !DILocation(line: 72, column: 33, scope: !92)
!285 = !{!237, !241, i64 8}
!286 = !DILocation(line: 72, column: 17, scope: !92)
!287 = !DILocation(line: 72, column: 15, scope: !92)
!288 = !DILocation(line: 73, column: 33, scope: !92)
!289 = !{!237, !242, i64 12}
!290 = !DILocation(line: 73, column: 17, scope: !92)
!291 = !DILocation(line: 73, column: 15, scope: !92)
!292 = !DILocation(line: 75, column: 3, scope: !92)
!293 = !DILocation(line: 76, column: 1, scope: !92)
!294 = !DILocation(line: 93, column: 23, scope: !99)
!295 = !DILocation(line: 93, column: 34, scope: !99)
!296 = !DILocation(line: 93, column: 50, scope: !99)
!297 = !DILocation(line: 93, column: 66, scope: !99)
!298 = !DILocation(line: 95, column: 10, scope: !299)
!299 = distinct !DILexicalBlock(scope: !99, file: !1, line: 95, column: 7)
!300 = !DILocation(line: 95, column: 30, scope: !299)
!301 = !DILocation(line: 95, column: 7, scope: !99)
!302 = !DILocation(line: 95, column: 19, scope: !299)
!303 = !DILocation(line: 96, column: 14, scope: !304)
!304 = distinct !DILexicalBlock(scope: !299, file: !1, line: 96, column: 12)
!305 = !DILocation(line: 96, column: 12, scope: !299)
!306 = !DILocation(line: 97, column: 19, scope: !307)
!307 = distinct !DILexicalBlock(scope: !304, file: !1, line: 97, column: 5)
!308 = !DILocation(line: 97, column: 35, scope: !307)
!309 = !DILocation(line: 99, column: 10, scope: !310)
!310 = distinct !DILexicalBlock(scope: !99, file: !1, line: 99, column: 7)
!311 = !DILocation(line: 99, column: 7, scope: !99)
!312 = !DILocation(line: 99, column: 30, scope: !310)
!313 = !DILocation(line: 99, column: 19, scope: !310)
!314 = !DILocation(line: 100, column: 20, scope: !315)
!315 = distinct !DILexicalBlock(scope: !310, file: !1, line: 100, column: 12)
!316 = !DILocation(line: 100, column: 52, scope: !315)
!317 = !DILocation(line: 100, column: 14, scope: !315)
!318 = !DILocation(line: 100, column: 12, scope: !310)
!319 = !DILocation(line: 101, column: 19, scope: !320)
!320 = distinct !DILexicalBlock(scope: !315, file: !1, line: 101, column: 5)
!321 = !DILocation(line: 101, column: 35, scope: !320)
!322 = !DILocation(line: 103, column: 10, scope: !323)
!323 = distinct !DILexicalBlock(scope: !99, file: !1, line: 103, column: 7)
!324 = !DILocation(line: 103, column: 7, scope: !99)
!325 = !DILocation(line: 103, column: 30, scope: !323)
!326 = !DILocation(line: 103, column: 19, scope: !323)
!327 = !DILocation(line: 104, column: 20, scope: !328)
!328 = distinct !DILexicalBlock(scope: !323, file: !1, line: 104, column: 12)
!329 = !DILocation(line: 104, column: 52, scope: !328)
!330 = !DILocation(line: 104, column: 14, scope: !328)
!331 = !DILocation(line: 104, column: 12, scope: !323)
!332 = !DILocation(line: 105, column: 19, scope: !333)
!333 = distinct !DILexicalBlock(scope: !328, file: !1, line: 105, column: 5)
!334 = !DILocation(line: 105, column: 35, scope: !333)
!335 = !DILocation(line: 107, column: 7, scope: !99)
!336 = !DILocation(line: 107, column: 36, scope: !337)
!337 = distinct !DILexicalBlock(scope: !99, file: !1, line: 107, column: 7)
!338 = !{!241, !241, i64 0}
!339 = !DILocation(line: 107, column: 25, scope: !337)
!340 = !DILocation(line: 107, column: 23, scope: !337)
!341 = !DILocation(line: 107, column: 19, scope: !337)
!342 = !DILocation(line: 108, column: 7, scope: !99)
!343 = !DILocation(line: 108, column: 36, scope: !344)
!344 = distinct !DILexicalBlock(scope: !99, file: !1, line: 108, column: 7)
!345 = !DILocation(line: 108, column: 25, scope: !344)
!346 = !DILocation(line: 108, column: 23, scope: !344)
!347 = !DILocation(line: 108, column: 19, scope: !344)
!348 = !DILocation(line: 111, column: 1, scope: !99)
!349 = !DILocation(line: 128, column: 23, scope: !109)
!350 = !DILocation(line: 128, column: 34, scope: !109)
!351 = !DILocation(line: 128, column: 45, scope: !109)
!352 = !DILocation(line: 129, column: 12, scope: !109)
!353 = !DILocation(line: 129, column: 30, scope: !109)
!354 = !DILocation(line: 133, column: 3, scope: !109)
!355 = !DILocation(line: 133, column: 15, scope: !109)
!356 = !DILocation(line: 138, column: 3, scope: !109)
!357 = !DILocation(line: 138, column: 21, scope: !109)
!358 = !{!239, !239, i64 0}
!359 = !DILocation(line: 140, column: 16, scope: !109)
!360 = !DILocation(line: 140, column: 11, scope: !109)
!361 = !DILocation(line: 140, column: 23, scope: !109)
!362 = !DILocation(line: 131, column: 15, scope: !109)
!363 = !DILocation(line: 141, column: 30, scope: !109)
!364 = !DILocation(line: 141, column: 23, scope: !109)
!365 = !DILocation(line: 131, column: 21, scope: !109)
!366 = !DILocation(line: 142, column: 17, scope: !109)
!367 = !DILocation(line: 142, column: 26, scope: !109)
!368 = !DILocation(line: 131, column: 28, scope: !109)
!369 = !DILocation(line: 143, column: 14, scope: !109)
!370 = !DILocation(line: 143, column: 25, scope: !109)
!371 = !DILocation(line: 143, column: 21, scope: !109)
!372 = !DILocation(line: 143, column: 3, scope: !109)
!373 = !DILocation(line: 134, column: 15, scope: !109)
!374 = !DILocation(line: 135, column: 15, scope: !109)
!375 = !DILocation(line: 145, column: 10, scope: !109)
!376 = !DILocation(line: 145, column: 3, scope: !109)
!377 = !DILocation(line: 147, column: 13, scope: !378)
!378 = distinct !DILexicalBlock(scope: !109, file: !1, line: 146, column: 5)
!379 = !DILocation(line: 132, column: 15, scope: !109)
!380 = !DILocation(line: 148, column: 20, scope: !381)
!381 = distinct !DILexicalBlock(scope: !378, file: !1, line: 148, column: 16)
!382 = !DILocation(line: 148, column: 16, scope: !378)
!383 = !DILocation(line: 149, column: 21, scope: !384)
!384 = distinct !DILexicalBlock(scope: !381, file: !1, line: 149, column: 16)
!385 = !DILocation(line: 149, column: 16, scope: !381)
!386 = !DILocation(line: 150, column: 20, scope: !387)
!387 = distinct !DILexicalBlock(scope: !384, file: !1, line: 150, column: 16)
!388 = !DILocation(line: 150, column: 42, scope: !387)
!389 = !DILocation(line: 151, column: 43, scope: !390)
!390 = distinct !DILexicalBlock(scope: !387, file: !1, line: 151, column: 16)
!391 = !DILocation(line: 150, column: 16, scope: !384)
!392 = !DILocation(line: 152, column: 19, scope: !378)
!393 = !DILocation(line: 152, column: 28, scope: !378)
!394 = !DILocation(line: 153, column: 18, scope: !378)
!395 = !DILocation(line: 153, column: 29, scope: !378)
!396 = !DILocation(line: 153, column: 25, scope: !378)
!397 = !DILocation(line: 153, column: 7, scope: !378)
!398 = !DILocation(line: 158, column: 14, scope: !109)
!399 = !DILocation(line: 158, column: 21, scope: !109)
!400 = !DILocation(line: 158, column: 29, scope: !109)
!401 = !DILocation(line: 158, column: 3, scope: !109)
!402 = !DILocation(line: 136, column: 15, scope: !109)
!403 = !DILocation(line: 159, column: 3, scope: !109)
!404 = !DILocation(line: 160, column: 24, scope: !109)
!405 = !DILocation(line: 160, column: 15, scope: !109)
!406 = !DILocation(line: 161, column: 24, scope: !109)
!407 = !DILocation(line: 161, column: 17, scope: !109)
!408 = !DILocation(line: 161, column: 15, scope: !109)
!409 = !{!410, !410, i64 0}
!410 = !{!"long", !239, i64 0}
!411 = !DILocation(line: 163, column: 3, scope: !109)
!412 = !DILocation(line: 164, column: 1, scope: !109)
!413 = !DILocation(line: 171, column: 19, scope: !131)
!414 = !DILocation(line: 173, column: 15, scope: !131)
!415 = !DILocation(line: 173, column: 3, scope: !131)
!416 = !DILocation(line: 174, column: 8, scope: !131)
!417 = !DILocation(line: 174, column: 3, scope: !131)
!418 = !DILocation(line: 175, column: 1, scope: !131)
!419 = !DILocation(line: 200, column: 7, scope: !136)
!420 = !DILocation(line: 198, column: 22, scope: !136)
!421 = !DILocation(line: 201, column: 18, scope: !136)
!422 = !DILocation(line: 201, column: 16, scope: !136)
!423 = !{!424, !238, i64 0}
!424 = !{!"gsiindex_s", !238, i64 0, !238, i64 8, !241, i64 16, !238, i64 24, !242, i64 32}
!425 = !DILocation(line: 202, column: 18, scope: !136)
!426 = !DILocation(line: 202, column: 6, scope: !136)
!427 = !DILocation(line: 202, column: 16, scope: !136)
!428 = !{!424, !238, i64 8}
!429 = !DILocation(line: 203, column: 18, scope: !136)
!430 = !DILocation(line: 203, column: 6, scope: !136)
!431 = !DILocation(line: 203, column: 16, scope: !136)
!432 = !{!424, !238, i64 24}
!433 = !DILocation(line: 204, column: 6, scope: !136)
!434 = !DILocation(line: 204, column: 16, scope: !136)
!435 = !{!424, !241, i64 16}
!436 = !DILocation(line: 205, column: 6, scope: !136)
!437 = !DILocation(line: 205, column: 16, scope: !136)
!438 = !{!424, !242, i64 32}
!439 = !DILocation(line: 206, column: 3, scope: !136)
!440 = !DILocation(line: 209, column: 33, scope: !150)
!441 = !DILocation(line: 211, column: 7, scope: !150)
!442 = !DILocation(line: 212, column: 22, scope: !443)
!443 = distinct !DILexicalBlock(scope: !444, file: !1, line: 212, column: 3)
!444 = distinct !DILexicalBlock(scope: !150, file: !1, line: 212, column: 3)
!445 = !DILocation(line: 212, column: 17, scope: !443)
!446 = !DILocation(line: 212, column: 3, scope: !444)
!447 = !DILocation(line: 212, column: 43, scope: !443)
!448 = !DILocation(line: 212, column: 40, scope: !443)
!449 = !{!238, !238, i64 0}
!450 = !DILocation(line: 212, column: 35, scope: !443)
!451 = !DILocation(line: 213, column: 11, scope: !150)
!452 = !DILocation(line: 213, column: 3, scope: !150)
!453 = !DILocation(line: 214, column: 11, scope: !150)
!454 = !DILocation(line: 214, column: 3, scope: !150)
!455 = !DILocation(line: 215, column: 11, scope: !150)
!456 = !DILocation(line: 215, column: 3, scope: !150)
!457 = !DILocation(line: 216, column: 8, scope: !150)
!458 = !DILocation(line: 216, column: 3, scope: !150)
!459 = !DILocation(line: 217, column: 1, scope: !150)
!460 = !DILocation(line: 219, column: 38, scope: !156)
!461 = !DILocation(line: 219, column: 47, scope: !156)
!462 = !DILocation(line: 219, column: 61, scope: !156)
!463 = !DILocation(line: 223, column: 9, scope: !156)
!464 = !DILocation(line: 221, column: 7, scope: !156)
!465 = !DILocation(line: 224, column: 11, scope: !466)
!466 = distinct !DILexicalBlock(scope: !156, file: !1, line: 224, column: 7)
!467 = !DILocation(line: 224, column: 7, scope: !156)
!468 = !DILocation(line: 224, column: 27, scope: !466)
!469 = !DILocation(line: 225, column: 29, scope: !156)
!470 = !DILocation(line: 225, column: 19, scope: !156)
!471 = !DILocation(line: 225, column: 3, scope: !156)
!472 = !DILocation(line: 225, column: 6, scope: !156)
!473 = !DILocation(line: 225, column: 27, scope: !156)
!474 = !DILocation(line: 226, column: 6, scope: !156)
!475 = !DILocation(line: 226, column: 3, scope: !156)
!476 = !DILocation(line: 226, column: 27, scope: !156)
!477 = !DILocation(line: 227, column: 12, scope: !156)
!478 = !DILocation(line: 228, column: 17, scope: !479)
!479 = distinct !DILexicalBlock(scope: !156, file: !1, line: 228, column: 7)
!480 = !DILocation(line: 228, column: 22, scope: !479)
!481 = !DILocation(line: 228, column: 7, scope: !156)
!482 = !DILocation(line: 228, column: 7, scope: !479)
!483 = !DILocation(line: 229, column: 20, scope: !484)
!484 = distinct !DILexicalBlock(scope: !479, file: !1, line: 228, column: 28)
!485 = !DILocation(line: 229, column: 18, scope: !484)
!486 = !DILocation(line: 230, column: 20, scope: !484)
!487 = !DILocation(line: 230, column: 18, scope: !484)
!488 = !DILocation(line: 231, column: 3, scope: !484)
!489 = !DILocation(line: 232, column: 1, scope: !156)
!490 = !DILocation(line: 234, column: 37, scope: !164)
!491 = !DILocation(line: 234, column: 46, scope: !164)
!492 = !DILocation(line: 234, column: 55, scope: !164)
!493 = !DILocation(line: 234, column: 69, scope: !164)
!494 = !DILocation(line: 236, column: 7, scope: !495)
!495 = distinct !DILexicalBlock(scope: !164, file: !1, line: 236, column: 7)
!496 = !DILocation(line: 236, column: 19, scope: !495)
!497 = !DILocation(line: 236, column: 7, scope: !164)
!498 = !DILocation(line: 236, column: 35, scope: !495)
!499 = !DILocation(line: 237, column: 15, scope: !500)
!500 = distinct !DILexicalBlock(scope: !164, file: !1, line: 237, column: 7)
!501 = !DILocation(line: 237, column: 7, scope: !164)
!502 = !DILocation(line: 237, column: 33, scope: !500)
!503 = !DILocation(line: 238, column: 15, scope: !504)
!504 = distinct !DILexicalBlock(scope: !164, file: !1, line: 238, column: 7)
!505 = !DILocation(line: 238, column: 7, scope: !164)
!506 = !DILocation(line: 238, column: 33, scope: !504)
!507 = !DILocation(line: 240, column: 3, scope: !164)
!508 = !DILocation(line: 241, column: 15, scope: !164)
!509 = !DILocation(line: 241, column: 3, scope: !164)
!510 = !DILocation(line: 241, column: 6, scope: !164)
!511 = !DILocation(line: 241, column: 41, scope: !164)
!512 = !DILocation(line: 242, column: 32, scope: !164)
!513 = !DILocation(line: 242, column: 15, scope: !164)
!514 = !DILocation(line: 242, column: 3, scope: !164)
!515 = !DILocation(line: 242, column: 6, scope: !164)
!516 = !DILocation(line: 242, column: 22, scope: !164)
!517 = !DILocation(line: 242, column: 30, scope: !164)
!518 = !{!519, !241, i64 32}
!519 = !{!"gsikey_s", !239, i64 0, !241, i64 32, !242, i64 36}
!520 = !DILocation(line: 243, column: 32, scope: !164)
!521 = !DILocation(line: 243, column: 22, scope: !164)
!522 = !DILocation(line: 243, column: 30, scope: !164)
!523 = !{!519, !242, i64 36}
!524 = !DILocation(line: 244, column: 11, scope: !164)
!525 = !DILocation(line: 246, column: 16, scope: !526)
!526 = distinct !DILexicalBlock(scope: !164, file: !1, line: 246, column: 7)
!527 = !DILocation(line: 246, column: 22, scope: !526)
!528 = !DILocation(line: 246, column: 7, scope: !164)
!529 = !DILocation(line: 247, column: 16, scope: !526)
!530 = !DILocation(line: 247, column: 14, scope: !526)
!531 = !DILocation(line: 247, column: 5, scope: !526)
!532 = !DILocation(line: 248, column: 1, scope: !164)
!533 = !DILocation(line: 259, column: 33, scope: !172)
!534 = !DILocation(line: 261, column: 25, scope: !172)
!535 = !DILocation(line: 261, column: 35, scope: !172)
!536 = !DILocation(line: 261, column: 3, scope: !172)
!537 = !DILocation(line: 262, column: 1, scope: !172)
!538 = !DILocation(line: 250, column: 27, scope: !212)
!539 = !DILocation(line: 250, column: 43, scope: !212)
!540 = !DILocation(line: 256, column: 10, scope: !212)
!541 = !DILocation(line: 256, column: 3, scope: !212)
!542 = !DILocation(line: 264, column: 21, scope: !175)
!543 = !DILocation(line: 264, column: 44, scope: !175)
!544 = !DILocation(line: 270, column: 10, scope: !545)
!545 = distinct !DILexicalBlock(scope: !175, file: !1, line: 270, column: 7)
!546 = !DILocation(line: 271, column: 10, scope: !547)
!547 = distinct !DILexicalBlock(scope: !175, file: !1, line: 271, column: 7)
!548 = !DILocation(line: 273, column: 25, scope: !175)
!549 = !DILocation(line: 273, column: 22, scope: !175)
!550 = !DILocation(line: 273, column: 36, scope: !175)
!551 = !DILocation(line: 273, column: 33, scope: !175)
!552 = !DILocation(line: 273, column: 3, scope: !175)
!553 = !DILocation(line: 266, column: 14, scope: !175)
!554 = !DILocation(line: 274, column: 22, scope: !555)
!555 = distinct !DILexicalBlock(scope: !556, file: !1, line: 274, column: 3)
!556 = distinct !DILexicalBlock(scope: !175, file: !1, line: 274, column: 3)
!557 = !DILocation(line: 274, column: 17, scope: !555)
!558 = !DILocation(line: 274, column: 3, scope: !556)
!559 = !DILocation(line: 275, column: 31, scope: !555)
!560 = !DILocation(line: 275, column: 53, scope: !555)
!561 = !DILocation(line: 276, column: 22, scope: !562)
!562 = distinct !DILexicalBlock(scope: !563, file: !1, line: 276, column: 3)
!563 = distinct !DILexicalBlock(scope: !175, file: !1, line: 276, column: 3)
!564 = !DILocation(line: 276, column: 17, scope: !562)
!565 = !DILocation(line: 276, column: 3, scope: !563)
!566 = !DILocation(line: 277, column: 30, scope: !562)
!567 = !DILocation(line: 275, column: 28, scope: !555)
!568 = !DILocation(line: 275, column: 46, scope: !555)
!569 = !DILocation(line: 275, column: 50, scope: !555)
!570 = !DILocation(line: 275, column: 5, scope: !555)
!571 = !DILocation(line: 274, column: 19, scope: !555)
!572 = !DILocation(line: 277, column: 27, scope: !562)
!573 = !DILocation(line: 277, column: 56, scope: !562)
!574 = !DILocation(line: 277, column: 44, scope: !562)
!575 = !DILocation(line: 277, column: 77, scope: !562)
!576 = !DILocation(line: 277, column: 65, scope: !562)
!577 = !DILocation(line: 277, column: 5, scope: !562)
!578 = !DILocation(line: 276, column: 30, scope: !562)
!579 = !DILocation(line: 278, column: 1, scope: !175)
!580 = !DILocation(line: 297, column: 22, scope: !182)
!581 = !DILocation(line: 297, column: 30, scope: !182)
!582 = !DILocation(line: 297, column: 43, scope: !182)
!583 = !DILocation(line: 299, column: 14, scope: !182)
!584 = !DILocation(line: 305, column: 14, scope: !585)
!585 = distinct !DILexicalBlock(scope: !182, file: !1, line: 305, column: 7)
!586 = !DILocation(line: 305, column: 7, scope: !182)
!587 = !DILocation(line: 305, column: 32, scope: !585)
!588 = !DILocation(line: 306, column: 13, scope: !589)
!589 = distinct !DILexicalBlock(scope: !182, file: !1, line: 306, column: 7)
!590 = !DILocation(line: 306, column: 7, scope: !182)
!591 = !DILocation(line: 306, column: 32, scope: !589)
!592 = !DILocation(line: 308, column: 8, scope: !182)
!593 = !DILocation(line: 300, column: 14, scope: !182)
!594 = !DILocation(line: 309, column: 8, scope: !182)
!595 = !DILocation(line: 301, column: 14, scope: !182)
!596 = !DILocation(line: 310, column: 8, scope: !182)
!597 = !DILocation(line: 310, column: 6, scope: !182)
!598 = !DILocation(line: 311, column: 8, scope: !182)
!599 = !DILocation(line: 311, column: 6, scope: !182)
!600 = !DILocation(line: 312, column: 3, scope: !182)
!601 = !DILocation(line: 314, column: 7, scope: !602)
!602 = distinct !DILexicalBlock(scope: !182, file: !1, line: 314, column: 7)
!603 = !DILocation(line: 314, column: 41, scope: !602)
!604 = !DILocation(line: 314, column: 7, scope: !182)
!605 = !DILocation(line: 314, column: 56, scope: !602)
!606 = !DILocation(line: 315, column: 14, scope: !607)
!607 = distinct !DILexicalBlock(scope: !182, file: !1, line: 315, column: 7)
!608 = !DILocation(line: 315, column: 7, scope: !607)
!609 = !DILocation(line: 315, column: 32, scope: !607)
!610 = !DILocation(line: 315, column: 7, scope: !182)
!611 = !DILocation(line: 315, column: 38, scope: !607)
!612 = !DILocation(line: 316, column: 14, scope: !613)
!613 = distinct !DILexicalBlock(scope: !182, file: !1, line: 316, column: 7)
!614 = !DILocation(line: 316, column: 7, scope: !613)
!615 = !DILocation(line: 316, column: 32, scope: !613)
!616 = !DILocation(line: 316, column: 7, scope: !182)
!617 = !DILocation(line: 316, column: 38, scope: !613)
!618 = !DILocation(line: 317, column: 1, scope: !182)
!619 = !DILocation(line: 333, column: 26, scope: !192)
!620 = !DILocation(line: 333, column: 36, scope: !192)
!621 = !DILocation(line: 333, column: 47, scope: !192)
!622 = !DILocation(line: 333, column: 56, scope: !192)
!623 = !DILocation(line: 338, column: 7, scope: !624)
!624 = distinct !DILexicalBlock(scope: !192, file: !1, line: 338, column: 7)
!625 = !DILocation(line: 338, column: 21, scope: !624)
!626 = !DILocation(line: 338, column: 7, scope: !192)
!627 = !DILocation(line: 339, column: 11, scope: !628)
!628 = distinct !DILexicalBlock(scope: !192, file: !1, line: 339, column: 7)
!629 = !DILocation(line: 339, column: 7, scope: !192)
!630 = !DILocation(line: 339, column: 29, scope: !628)
!631 = !DILocation(line: 342, column: 8, scope: !192)
!632 = !DILocation(line: 335, column: 14, scope: !192)
!633 = !DILocation(line: 336, column: 14, scope: !192)
!634 = !DILocation(line: 344, column: 8, scope: !192)
!635 = !DILocation(line: 344, column: 6, scope: !192)
!636 = !DILocation(line: 345, column: 8, scope: !192)
!637 = !DILocation(line: 345, column: 6, scope: !192)
!638 = !DILocation(line: 347, column: 7, scope: !639)
!639 = distinct !DILexicalBlock(scope: !192, file: !1, line: 347, column: 7)
!640 = !DILocation(line: 347, column: 41, scope: !639)
!641 = !DILocation(line: 347, column: 7, scope: !192)
!642 = !DILocation(line: 347, column: 56, scope: !639)
!643 = !DILocation(line: 348, column: 14, scope: !644)
!644 = distinct !DILexicalBlock(scope: !192, file: !1, line: 348, column: 7)
!645 = !DILocation(line: 348, column: 7, scope: !644)
!646 = !DILocation(line: 348, column: 29, scope: !644)
!647 = !DILocation(line: 348, column: 7, scope: !192)
!648 = !DILocation(line: 348, column: 37, scope: !644)
!649 = !DILocation(line: 349, column: 14, scope: !650)
!650 = distinct !DILexicalBlock(scope: !192, file: !1, line: 349, column: 7)
!651 = !DILocation(line: 349, column: 7, scope: !650)
!652 = !DILocation(line: 349, column: 29, scope: !650)
!653 = !DILocation(line: 349, column: 7, scope: !192)
!654 = !DILocation(line: 349, column: 37, scope: !650)
!655 = !DILocation(line: 351, column: 1, scope: !192)
!656 = !DILocation(line: 368, column: 25, scope: !202)
!657 = !DILocation(line: 368, column: 35, scope: !202)
!658 = !DILocation(line: 368, column: 44, scope: !202)
!659 = !DILocation(line: 368, column: 58, scope: !202)
!660 = !DILocation(line: 373, column: 7, scope: !661)
!661 = distinct !DILexicalBlock(scope: !202, file: !1, line: 373, column: 7)
!662 = !DILocation(line: 373, column: 19, scope: !661)
!663 = !DILocation(line: 373, column: 7, scope: !202)
!664 = !DILocation(line: 374, column: 15, scope: !665)
!665 = distinct !DILexicalBlock(scope: !202, file: !1, line: 374, column: 7)
!666 = !DILocation(line: 374, column: 7, scope: !202)
!667 = !DILocation(line: 374, column: 33, scope: !665)
!668 = !DILocation(line: 375, column: 15, scope: !669)
!669 = distinct !DILexicalBlock(scope: !202, file: !1, line: 375, column: 7)
!670 = !DILocation(line: 375, column: 7, scope: !202)
!671 = !DILocation(line: 375, column: 33, scope: !669)
!672 = !DILocation(line: 377, column: 8, scope: !202)
!673 = !DILocation(line: 370, column: 14, scope: !202)
!674 = !DILocation(line: 378, column: 8, scope: !202)
!675 = !DILocation(line: 371, column: 14, scope: !202)
!676 = !DILocation(line: 379, column: 8, scope: !202)
!677 = !DILocation(line: 379, column: 6, scope: !202)
!678 = !DILocation(line: 380, column: 8, scope: !202)
!679 = !DILocation(line: 380, column: 6, scope: !202)
!680 = !DILocation(line: 382, column: 7, scope: !681)
!681 = distinct !DILexicalBlock(scope: !202, file: !1, line: 382, column: 7)
!682 = !DILocation(line: 382, column: 39, scope: !681)
!683 = !DILocation(line: 382, column: 7, scope: !202)
!684 = !DILocation(line: 382, column: 54, scope: !681)
!685 = !DILocation(line: 383, column: 14, scope: !686)
!686 = distinct !DILexicalBlock(scope: !202, file: !1, line: 383, column: 7)
!687 = !DILocation(line: 383, column: 7, scope: !686)
!688 = !DILocation(line: 383, column: 30, scope: !686)
!689 = !DILocation(line: 383, column: 7, scope: !202)
!690 = !DILocation(line: 383, column: 35, scope: !686)
!691 = !DILocation(line: 384, column: 14, scope: !692)
!692 = distinct !DILexicalBlock(scope: !202, file: !1, line: 384, column: 7)
!693 = !DILocation(line: 384, column: 7, scope: !692)
!694 = !DILocation(line: 384, column: 30, scope: !692)
!695 = !DILocation(line: 384, column: 7, scope: !202)
!696 = !DILocation(line: 384, column: 35, scope: !692)
!697 = !DILocation(line: 386, column: 1, scope: !202)
