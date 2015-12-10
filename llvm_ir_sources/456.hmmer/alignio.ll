; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/alignio.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct._RuneLocale = type { [8 x i8], [32 x i8], i32 (i8*, i64, i8**)*, i32 (i32, i8*, i64, i8**)*, i32, [256 x i32], [256 x i32], [256 x i32], %struct._RuneRange, %struct._RuneRange, %struct._RuneRange, i8*, i32, i32, %struct._RuneCharClass* }
%struct._RuneRange = type { i32, %struct._RuneEntry* }
%struct._RuneEntry = type { i32, i32, i32, i32* }
%struct._RuneCharClass = type { [14 x i8], i32 }
%struct.aliinfo_s = type { i32, i32, i32, float*, i8*, i8*, %struct.seqinfo_s*, i8*, i8*, i8*, i8*, float, float, float, float, float, float }
%struct.seqinfo_s = type { i32, [64 x i8], [64 x i8], [64 x i8], [128 x i8], i32, i32, i32, i32, i32, i8*, i8* }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [65 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/alignio.c\00", align 1
@squid_errno = external global i32
@.str1 = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str2 = private unnamed_addr constant [24 x i8] c"%*s%-10.10s %5d %s %5d\0A\00", align 1
@.str3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str4 = private unnamed_addr constant [24 x i8] c"%*s                 %s\0A\00", align 1
@_DefaultRuneLocale = external global %struct._RuneLocale

; Function Attrs: nounwind optsize ssp uwtable
define void @AllocAlignment(i32 %nseq, i32 %alen, i8*** nocapture %ret_aseq, %struct.aliinfo_s* nocapture %ainfo) #0 {
  tail call void @llvm.dbg.value(metadata i32 %nseq, i64 0, metadata !66, metadata !300), !dbg !301
  tail call void @llvm.dbg.value(metadata i32 %alen, i64 0, metadata !67, metadata !300), !dbg !302
  tail call void @llvm.dbg.value(metadata i8*** %ret_aseq, i64 0, metadata !68, metadata !300), !dbg !303
  tail call void @llvm.dbg.value(metadata %struct.aliinfo_s* %ainfo, i64 0, metadata !69, metadata !300), !dbg !304
  tail call void @llvm.dbg.value(metadata %struct.aliinfo_s* %ainfo, i64 0, metadata !76, metadata !300) #6, !dbg !305
  %1 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 7, !dbg !307
  %2 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 4, !dbg !308
  %3 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 0, !dbg !309
  store i32 0, i32* %3, align 4, !dbg !310, !tbaa !311
  %4 = bitcast i8** %2 to i8*, !dbg !318
  tail call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 16, i32 8, i1 false) #6, !dbg !319
  %5 = bitcast i8** %1 to i8*, !dbg !318
  tail call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 56, i32 8, i1 false) #6, !dbg !320
  %6 = sext i32 %nseq to i64, !dbg !321
  %7 = shl nsw i64 %6, 3, !dbg !321
  %8 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([65 x i8]* @.str, i64 0, i64 0), i32 50, i64 %7) #7, !dbg !321
  %9 = bitcast i8* %8 to i8**, !dbg !322
  tail call void @llvm.dbg.value(metadata i8** %9, i64 0, metadata !70, metadata !300), !dbg !323
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !71, metadata !300), !dbg !324
  %10 = icmp sgt i32 %nseq, 0, !dbg !325
  br i1 %10, label %.lr.ph4, label %._crit_edge5, !dbg !328

.lr.ph4:                                          ; preds = %0
  %11 = add nsw i32 %alen, 1, !dbg !329
  %12 = sext i32 %11 to i64, !dbg !329
  %13 = add i32 %nseq, -1, !dbg !328
  br label %14, !dbg !328

; <label>:14                                      ; preds = %14, %.lr.ph4
  %indvars.iv6 = phi i64 [ 0, %.lr.ph4 ], [ %indvars.iv.next7, %14 ]
  %15 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([65 x i8]* @.str, i64 0, i64 0), i32 52, i64 %12) #7, !dbg !329
  %16 = getelementptr inbounds i8** %9, i64 %indvars.iv6, !dbg !330
  store i8* %15, i8** %16, align 8, !dbg !331, !tbaa !332
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1, !dbg !328
  %lftr.wideiv8 = trunc i64 %indvars.iv6 to i32, !dbg !328
  %exitcond9 = icmp eq i32 %lftr.wideiv8, %13, !dbg !328
  br i1 %exitcond9, label %._crit_edge5, label %14, !dbg !328

._crit_edge5:                                     ; preds = %14, %0
  %17 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 1, !dbg !333
  store i32 %alen, i32* %17, align 4, !dbg !334, !tbaa !335
  %18 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 2, !dbg !336
  store i32 %nseq, i32* %18, align 4, !dbg !337, !tbaa !338
  %19 = shl nsw i64 %6, 2, !dbg !339
  %20 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([65 x i8]* @.str, i64 0, i64 0), i32 57, i64 %19) #7, !dbg !339
  %21 = bitcast i8* %20 to float*, !dbg !340
  %22 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 3, !dbg !341
  %23 = bitcast float** %22 to i8**, !dbg !342
  store i8* %20, i8** %23, align 8, !dbg !342, !tbaa !343
  tail call void @FSet(float* %21, i32 %nseq, float 1.000000e+00) #7, !dbg !344
  %24 = mul nsw i64 %6, 360, !dbg !345
  %25 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([65 x i8]* @.str, i64 0, i64 0), i32 60, i64 %24) #7, !dbg !345
  %26 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 6, !dbg !346
  %27 = bitcast %struct.seqinfo_s** %26 to i8**, !dbg !347
  store i8* %25, i8** %27, align 8, !dbg !347, !tbaa !348
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !71, metadata !300), !dbg !324
  %28 = bitcast i8* %25 to %struct.seqinfo_s*
  br i1 %10, label %.lr.ph, label %._crit_edge, !dbg !349

.lr.ph:                                           ; preds = %._crit_edge5
  %29 = add i32 %nseq, -1, !dbg !349
  br label %30, !dbg !349

; <label>:30                                      ; preds = %30, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %30 ]
  %31 = getelementptr inbounds %struct.seqinfo_s* %28, i64 %indvars.iv, i32 0, !dbg !351
  store i32 0, i32* %31, align 4, !dbg !353, !tbaa !354
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !349
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !349
  %exitcond = icmp eq i32 %lftr.wideiv, %29, !dbg !349
  br i1 %exitcond, label %._crit_edge, label %30, !dbg !349

._crit_edge:                                      ; preds = %30, %._crit_edge5
  %32 = bitcast i8*** %ret_aseq to i8**, !dbg !356
  store i8* %8, i8** %32, align 8, !dbg !356, !tbaa !332
  ret void, !dbg !357
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @InitAinfo(%struct.aliinfo_s* nocapture %ainfo) #0 {
  tail call void @llvm.dbg.value(metadata %struct.aliinfo_s* %ainfo, i64 0, metadata !76, metadata !300), !dbg !358
  %1 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 7, !dbg !359
  %2 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 4, !dbg !360
  %3 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 0, !dbg !361
  store i32 0, i32* %3, align 4, !dbg !362, !tbaa !311
  %4 = bitcast i8** %2 to i8*, !dbg !363
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 16, i32 8, i1 false), !dbg !364
  %5 = bitcast i8** %1 to i8*, !dbg !363
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 56, i32 8, i1 false), !dbg !365
  ret void, !dbg !363
}

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #2

; Function Attrs: optsize
declare void @FSet(float*, i32, float) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @FreeAlignment(i8** %aseqs, %struct.aliinfo_s* nocapture readonly %ainfo) #0 {
  tail call void @llvm.dbg.value(metadata i8** %aseqs, i64 0, metadata !81, metadata !300), !dbg !366
  tail call void @llvm.dbg.value(metadata %struct.aliinfo_s* %ainfo, i64 0, metadata !82, metadata !300), !dbg !367
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !83, metadata !300), !dbg !368
  %1 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 2, !dbg !369
  %2 = load i32* %1, align 4, !dbg !369, !tbaa !338
  %3 = icmp sgt i32 %2, 0, !dbg !372
  br i1 %3, label %.lr.ph, label %._crit_edge, !dbg !373

.lr.ph:                                           ; preds = %0
  %4 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 6, !dbg !374
  br label %5, !dbg !373

; <label>:5                                       ; preds = %.lr.ph, %22
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %22 ]
  %6 = load %struct.seqinfo_s** %4, align 8, !dbg !374, !tbaa !348
  %7 = getelementptr inbounds %struct.seqinfo_s* %6, i64 %indvars.iv, i32 0, !dbg !377
  %8 = load i32* %7, align 4, !dbg !377, !tbaa !354
  %9 = and i32 %8, 512, !dbg !378
  %10 = icmp eq i32 %9, 0, !dbg !378
  br i1 %10, label %14, label %11, !dbg !379

; <label>:11                                      ; preds = %5
  %12 = getelementptr inbounds %struct.seqinfo_s* %6, i64 %indvars.iv, i32 10, !dbg !380
  %13 = load i8** %12, align 8, !dbg !380, !tbaa !381
  tail call void @free(i8* %13) #8, !dbg !382
  %.pre = load %struct.seqinfo_s** %4, align 8, !dbg !383, !tbaa !348
  %.phi.trans.insert = getelementptr inbounds %struct.seqinfo_s* %.pre, i64 %indvars.iv, i32 0
  %.pre2 = load i32* %.phi.trans.insert, align 4, !dbg !385, !tbaa !354
  br label %14, !dbg !382

; <label>:14                                      ; preds = %5, %11
  %15 = phi i32 [ %8, %5 ], [ %.pre2, %11 ]
  %16 = phi %struct.seqinfo_s* [ %6, %5 ], [ %.pre, %11 ]
  %17 = and i32 %15, 1024, !dbg !386
  %18 = icmp eq i32 %17, 0, !dbg !386
  br i1 %18, label %22, label %19, !dbg !387

; <label>:19                                      ; preds = %14
  %20 = getelementptr inbounds %struct.seqinfo_s* %16, i64 %indvars.iv, i32 11, !dbg !388
  %21 = load i8** %20, align 8, !dbg !388, !tbaa !389
  tail call void @free(i8* %21) #8, !dbg !390
  br label %22, !dbg !390

; <label>:22                                      ; preds = %14, %19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !373
  %23 = load i32* %1, align 4, !dbg !369, !tbaa !338
  %24 = sext i32 %23 to i64, !dbg !372
  %25 = icmp slt i64 %indvars.iv.next, %24, !dbg !372
  br i1 %25, label %5, label %._crit_edge, !dbg !373

._crit_edge:                                      ; preds = %22, %0
  %26 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 4, !dbg !391
  %27 = load i8** %26, align 8, !dbg !391, !tbaa !393
  %28 = icmp eq i8* %27, null, !dbg !394
  br i1 %28, label %30, label %29, !dbg !395

; <label>:29                                      ; preds = %._crit_edge
  tail call void @free(i8* %27) #8, !dbg !396
  br label %30, !dbg !396

; <label>:30                                      ; preds = %._crit_edge, %29
  %31 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 5, !dbg !397
  %32 = load i8** %31, align 8, !dbg !397, !tbaa !399
  %33 = icmp eq i8* %32, null, !dbg !400
  br i1 %33, label %35, label %34, !dbg !401

; <label>:34                                      ; preds = %30
  tail call void @free(i8* %32) #8, !dbg !402
  br label %35, !dbg !402

; <label>:35                                      ; preds = %30, %34
  %36 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 7, !dbg !403
  %37 = load i8** %36, align 8, !dbg !403, !tbaa !405
  %38 = icmp eq i8* %37, null, !dbg !406
  br i1 %38, label %40, label %39, !dbg !407

; <label>:39                                      ; preds = %35
  tail call void @free(i8* %37) #8, !dbg !408
  br label %40, !dbg !408

; <label>:40                                      ; preds = %35, %39
  %41 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 8, !dbg !409
  %42 = load i8** %41, align 8, !dbg !409, !tbaa !411
  %43 = icmp eq i8* %42, null, !dbg !412
  br i1 %43, label %45, label %44, !dbg !413

; <label>:44                                      ; preds = %40
  tail call void @free(i8* %42) #8, !dbg !414
  br label %45, !dbg !414

; <label>:45                                      ; preds = %40, %44
  %46 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 9, !dbg !415
  %47 = load i8** %46, align 8, !dbg !415, !tbaa !417
  %48 = icmp eq i8* %47, null, !dbg !418
  br i1 %48, label %50, label %49, !dbg !419

; <label>:49                                      ; preds = %45
  tail call void @free(i8* %47) #8, !dbg !420
  br label %50, !dbg !420

; <label>:50                                      ; preds = %45, %49
  %51 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 10, !dbg !421
  %52 = load i8** %51, align 8, !dbg !421, !tbaa !423
  %53 = icmp eq i8* %52, null, !dbg !424
  br i1 %53, label %55, label %54, !dbg !425

; <label>:54                                      ; preds = %50
  tail call void @free(i8* %52) #8, !dbg !426
  br label %55, !dbg !426

; <label>:55                                      ; preds = %50, %54
  %56 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 6, !dbg !427
  %57 = bitcast %struct.seqinfo_s** %56 to i8**, !dbg !427
  %58 = load i8** %57, align 8, !dbg !427, !tbaa !348
  tail call void @free(i8* %58) #8, !dbg !428
  %59 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 3, !dbg !429
  %60 = bitcast float** %59 to i8**, !dbg !429
  %61 = load i8** %60, align 8, !dbg !429, !tbaa !343
  tail call void @free(i8* %61) #8, !dbg !430
  %62 = load i32* %1, align 4, !dbg !431, !tbaa !338
  tail call void @Free2DArray(i8** %aseqs, i32 %62) #7, !dbg !432
  ret void, !dbg !433
}

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: optsize
declare void @Free2DArray(i8**, i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @SAMizeAlignment(i8** nocapture readonly %aseq, i32 %nseq, i32 %alen) #0 {
  tail call void @llvm.dbg.value(metadata i8** %aseq, i64 0, metadata !88, metadata !300), !dbg !434
  tail call void @llvm.dbg.value(metadata i32 %nseq, i64 0, metadata !89, metadata !300), !dbg !435
  tail call void @llvm.dbg.value(metadata i32 %alen, i64 0, metadata !90, metadata !300), !dbg !436
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !91, metadata !300), !dbg !437
  %1 = icmp sgt i32 %alen, 0, !dbg !438
  br i1 %1, label %.preheader.lr.ph, label %._crit_edge16, !dbg !441

.preheader.lr.ph:                                 ; preds = %0
  %2 = icmp sgt i32 %nseq, 0, !dbg !442
  %3 = add i32 %nseq, -1, !dbg !441
  %4 = add i32 %alen, -1, !dbg !441
  br label %.preheader, !dbg !441

.preheader:                                       ; preds = %._crit_edge14, %.preheader.lr.ph
  %indvars.iv21 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next22, %._crit_edge14 ]
  br i1 %2, label %.lr.ph, label %._crit_edge14, !dbg !446

.lr.ph:                                           ; preds = %.preheader, %30
  %indvars.iv = phi i64 [ %indvars.iv.next, %30 ], [ 0, %.preheader ]
  %sawupper.09 = phi i32 [ %sawupper.1, %30 ], [ 0, %.preheader ]
  %sawlower.08 = phi i32 [ %sawlower.1, %30 ], [ 0, %.preheader ]
  %5 = getelementptr inbounds i8** %aseq, i64 %indvars.iv, !dbg !447
  %6 = load i8** %5, align 8, !dbg !447, !tbaa !332
  %7 = getelementptr inbounds i8* %6, i64 %indvars.iv21, !dbg !447
  %8 = load i8* %7, align 1, !dbg !447, !tbaa !450
  %9 = sext i8 %8 to i32, !dbg !447
  switch i8 %8, label %10 [
    i8 32, label %30
    i8 46, label %30
    i8 95, label %30
    i8 45, label %30
    i8 126, label %30
  ], !dbg !447

; <label>:10                                      ; preds = %.lr.ph
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !275, metadata !300) #6, !dbg !451
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !282, metadata !300) #6, !dbg !454
  tail call void @llvm.dbg.value(metadata i64 32768, i64 0, metadata !283, metadata !300) #6, !dbg !456
  %isascii.i.i5 = icmp sgt i8 %8, -1, !dbg !457
  br i1 %isascii.i.i5, label %11, label %16, !dbg !457

; <label>:11                                      ; preds = %10
  %12 = sext i8 %8 to i64, !dbg !458
  %13 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %12, !dbg !458
  %14 = load i32* %13, align 4, !dbg !458, !tbaa !459
  %15 = and i32 %14, 32768, !dbg !460
  br label %isupper.exit, !dbg !457

; <label>:16                                      ; preds = %10
  %17 = tail call i32 @__maskrune(i32 %9, i64 32768) #7, !dbg !461
  br label %isupper.exit, !dbg !457

isupper.exit:                                     ; preds = %11, %16
  %.sink.i.in.i = phi i32 [ %15, %11 ], [ %17, %16 ], !dbg !462
  %.sink.i.i = icmp eq i32 %.sink.i.in.i, 0, !dbg !463
  br i1 %.sink.i.i, label %18, label %30, !dbg !464

; <label>:18                                      ; preds = %isupper.exit
  %19 = load i8** %5, align 8, !dbg !465, !tbaa !332
  %20 = getelementptr inbounds i8* %19, i64 %indvars.iv21, !dbg !465
  %21 = load i8* %20, align 1, !dbg !465, !tbaa !450
  tail call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !289, metadata !300) #6, !dbg !467
  tail call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !282, metadata !300) #6, !dbg !469
  tail call void @llvm.dbg.value(metadata i64 4096, i64 0, metadata !283, metadata !300) #6, !dbg !471
  %isascii.i.i26 = icmp sgt i8 %21, -1, !dbg !472
  br i1 %isascii.i.i26, label %22, label %27, !dbg !472

; <label>:22                                      ; preds = %18
  %23 = sext i8 %21 to i64, !dbg !473
  %24 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %23, !dbg !473
  %25 = load i32* %24, align 4, !dbg !473, !tbaa !459
  %26 = and i32 %25, 4096, !dbg !474
  br label %islower.exit, !dbg !472

; <label>:27                                      ; preds = %18
  %28 = sext i8 %21 to i32, !dbg !475
  %29 = tail call i32 @__maskrune(i32 %28, i64 4096) #7, !dbg !476
  br label %islower.exit, !dbg !472

islower.exit:                                     ; preds = %22, %27
  %.sink.i.in.i3 = phi i32 [ %26, %22 ], [ %29, %27 ], !dbg !477
  %.sink.i.i4 = icmp ne i32 %.sink.i.in.i3, 0, !dbg !478
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !93, metadata !300), !dbg !479
  %sawlower.0. = select i1 %.sink.i.i4, i32 1, i32 %sawlower.08, !dbg !480
  br label %30, !dbg !480

; <label>:30                                      ; preds = %isupper.exit, %islower.exit, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %sawlower.1 = phi i32 [ %sawlower.08, %.lr.ph ], [ %sawlower.08, %.lr.ph ], [ %sawlower.08, %.lr.ph ], [ %sawlower.08, %.lr.ph ], [ %sawlower.08, %.lr.ph ], [ %sawlower.08, %isupper.exit ], [ %sawlower.0., %islower.exit ]
  %sawupper.1 = phi i32 [ %sawupper.09, %.lr.ph ], [ %sawupper.09, %.lr.ph ], [ %sawupper.09, %.lr.ph ], [ %sawupper.09, %.lr.ph ], [ %sawupper.09, %.lr.ph ], [ 1, %isupper.exit ], [ %sawupper.09, %islower.exit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !446
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !446
  %exitcond = icmp eq i32 %lftr.wideiv, %3, !dbg !446
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !dbg !446

._crit_edge:                                      ; preds = %30
  tail call void @llvm.dbg.value(metadata i8 45, i64 0, metadata !96, metadata !300), !dbg !481
  %31 = icmp eq i32 %sawlower.1, 0, !dbg !482
  %32 = icmp ne i32 %sawupper.1, 0, !dbg !484
  %or.cond = or i1 %31, %32, !dbg !485
  %. = select i1 %or.cond, i8 45, i8 46, !dbg !485
  tail call void @llvm.dbg.value(metadata i8 %., i64 0, metadata !96, metadata !300), !dbg !481
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !92, metadata !300), !dbg !486
  br i1 %2, label %.lr.ph13, label %._crit_edge14, !dbg !487

.lr.ph13:                                         ; preds = %._crit_edge, %38
  %indvars.iv17 = phi i64 [ %indvars.iv.next18, %38 ], [ 0, %._crit_edge ]
  %33 = getelementptr inbounds i8** %aseq, i64 %indvars.iv17, !dbg !489
  %34 = load i8** %33, align 8, !dbg !489, !tbaa !332
  %35 = getelementptr inbounds i8* %34, i64 %indvars.iv21, !dbg !489
  %36 = load i8* %35, align 1, !dbg !489, !tbaa !450
  switch i8 %36, label %38 [
    i8 32, label %37
    i8 46, label %37
    i8 95, label %37
    i8 45, label %37
    i8 126, label %37
  ], !dbg !489

; <label>:37                                      ; preds = %.lr.ph13, %.lr.ph13, %.lr.ph13, %.lr.ph13, %.lr.ph13
  store i8 %., i8* %35, align 1, !dbg !492, !tbaa !450
  br label %38, !dbg !493

; <label>:38                                      ; preds = %.lr.ph13, %37
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1, !dbg !487
  %lftr.wideiv19 = trunc i64 %indvars.iv17 to i32, !dbg !487
  %exitcond20 = icmp eq i32 %lftr.wideiv19, %3, !dbg !487
  br i1 %exitcond20, label %._crit_edge14, label %.lr.ph13, !dbg !487

._crit_edge14:                                    ; preds = %38, %.preheader, %._crit_edge
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1, !dbg !441
  %lftr.wideiv23 = trunc i64 %indvars.iv21 to i32, !dbg !441
  %exitcond24 = icmp eq i32 %lftr.wideiv23, %4, !dbg !441
  br i1 %exitcond24, label %._crit_edge16, label %.preheader, !dbg !441

._crit_edge16:                                    ; preds = %._crit_edge14, %0
  ret void, !dbg !494
}

; Function Attrs: nounwind optsize ssp uwtable
define void @SAMizeAlignmentByGapFrac(i8** nocapture readonly %aseq, i32 %nseq, i32 %alen, float %maxgap) #0 {
  tail call void @llvm.dbg.value(metadata i8** %aseq, i64 0, metadata !101, metadata !300), !dbg !495
  tail call void @llvm.dbg.value(metadata i32 %nseq, i64 0, metadata !102, metadata !300), !dbg !496
  tail call void @llvm.dbg.value(metadata i32 %alen, i64 0, metadata !103, metadata !300), !dbg !497
  tail call void @llvm.dbg.value(metadata float %maxgap, i64 0, metadata !104, metadata !300), !dbg !498
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !105, metadata !300), !dbg !499
  %1 = icmp sgt i32 %alen, 0, !dbg !500
  br i1 %1, label %.preheader3.lr.ph, label %._crit_edge11, !dbg !503

.preheader3.lr.ph:                                ; preds = %0
  %2 = icmp sgt i32 %nseq, 0, !dbg !504
  %3 = sitofp i32 %nseq to float, !dbg !508
  %4 = add i32 %nseq, -1, !dbg !503
  %5 = add i32 %alen, -1, !dbg !503
  br label %.preheader3, !dbg !503

.preheader3:                                      ; preds = %.loopexit, %.preheader3.lr.ph
  %indvars.iv20 = phi i64 [ 0, %.preheader3.lr.ph ], [ %indvars.iv.next21, %.loopexit ]
  br i1 %2, label %.lr.ph, label %._crit_edge, !dbg !510

.lr.ph:                                           ; preds = %.preheader3, %12
  %indvars.iv = phi i64 [ %indvars.iv.next, %12 ], [ 0, %.preheader3 ]
  %ngap.05 = phi i32 [ %ngap.1, %12 ], [ 0, %.preheader3 ]
  %6 = getelementptr inbounds i8** %aseq, i64 %indvars.iv, !dbg !511
  %7 = load i8** %6, align 8, !dbg !511, !tbaa !332
  %8 = getelementptr inbounds i8* %7, i64 %indvars.iv20, !dbg !511
  %9 = load i8* %8, align 1, !dbg !511, !tbaa !450
  switch i8 %9, label %12 [
    i8 32, label %10
    i8 46, label %10
    i8 95, label %10
    i8 45, label %10
    i8 126, label %10
  ], !dbg !511

; <label>:10                                      ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %11 = add nsw i32 %ngap.05, 1, !dbg !513
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !107, metadata !300), !dbg !514
  br label %12, !dbg !515

; <label>:12                                      ; preds = %.lr.ph, %10
  %ngap.1 = phi i32 [ %11, %10 ], [ %ngap.05, %.lr.ph ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !510
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !510
  %exitcond = icmp eq i32 %lftr.wideiv, %4, !dbg !510
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !dbg !510

._crit_edge:                                      ; preds = %12, %.preheader3
  %ngap.0.lcssa = phi i32 [ 0, %.preheader3 ], [ %ngap.1, %12 ]
  %13 = sitofp i32 %ngap.0.lcssa to float, !dbg !516
  %14 = fdiv float %13, %3, !dbg !517
  %15 = fcmp ogt float %14, %maxgap, !dbg !518
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !106, metadata !300), !dbg !519
  br i1 %15, label %.preheader, label %.preheader1, !dbg !520

.preheader1:                                      ; preds = %._crit_edge
  br i1 %2, label %.lr.ph7, label %.loopexit, !dbg !521

.preheader:                                       ; preds = %._crit_edge
  br i1 %2, label %.lr.ph9, label %.loopexit, !dbg !524

.lr.ph9:                                          ; preds = %.preheader, %27
  %indvars.iv16 = phi i64 [ %indvars.iv.next17, %27 ], [ 0, %.preheader ]
  %16 = getelementptr inbounds i8** %aseq, i64 %indvars.iv16, !dbg !527
  %17 = load i8** %16, align 8, !dbg !527, !tbaa !332
  %18 = getelementptr inbounds i8* %17, i64 %indvars.iv20, !dbg !527
  %19 = load i8* %18, align 1, !dbg !527, !tbaa !450
  switch i8 %19, label %21 [
    i8 32, label %20
    i8 46, label %20
    i8 95, label %20
    i8 45, label %20
    i8 126, label %20
  ], !dbg !527

; <label>:20                                      ; preds = %.lr.ph9, %.lr.ph9, %.lr.ph9, %.lr.ph9, %.lr.ph9
  store i8 46, i8* %18, align 1, !dbg !530, !tbaa !450
  br label %27, !dbg !531

; <label>:21                                      ; preds = %.lr.ph9
  %22 = sext i8 %19 to i32, !dbg !527
  tail call void @llvm.dbg.value(metadata i32 %22, i64 0, metadata !292, metadata !300) #6, !dbg !532
  %23 = tail call i32 @__tolower(i32 %22) #7, !dbg !534
  %24 = trunc i32 %23 to i8, !dbg !535
  %25 = load i8** %16, align 8, !dbg !536, !tbaa !332
  %26 = getelementptr inbounds i8* %25, i64 %indvars.iv20, !dbg !536
  store i8 %24, i8* %26, align 1, !dbg !537, !tbaa !450
  br label %27

; <label>:27                                      ; preds = %20, %21
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1, !dbg !524
  %lftr.wideiv18 = trunc i64 %indvars.iv16 to i32, !dbg !524
  %exitcond19 = icmp eq i32 %lftr.wideiv18, %4, !dbg !524
  br i1 %exitcond19, label %.loopexit, label %.lr.ph9, !dbg !524

.lr.ph7:                                          ; preds = %.preheader1, %39
  %indvars.iv12 = phi i64 [ %indvars.iv.next13, %39 ], [ 0, %.preheader1 ]
  %28 = getelementptr inbounds i8** %aseq, i64 %indvars.iv12, !dbg !538
  %29 = load i8** %28, align 8, !dbg !538, !tbaa !332
  %30 = getelementptr inbounds i8* %29, i64 %indvars.iv20, !dbg !538
  %31 = load i8* %30, align 1, !dbg !538, !tbaa !450
  switch i8 %31, label %33 [
    i8 32, label %32
    i8 46, label %32
    i8 95, label %32
    i8 45, label %32
    i8 126, label %32
  ], !dbg !538

; <label>:32                                      ; preds = %.lr.ph7, %.lr.ph7, %.lr.ph7, %.lr.ph7, %.lr.ph7
  store i8 45, i8* %30, align 1, !dbg !541, !tbaa !450
  br label %39, !dbg !542

; <label>:33                                      ; preds = %.lr.ph7
  %34 = sext i8 %31 to i32, !dbg !538
  tail call void @llvm.dbg.value(metadata i32 %34, i64 0, metadata !295, metadata !300) #6, !dbg !543
  %35 = tail call i32 @__toupper(i32 %34) #7, !dbg !545
  %36 = trunc i32 %35 to i8, !dbg !546
  %37 = load i8** %28, align 8, !dbg !547, !tbaa !332
  %38 = getelementptr inbounds i8* %37, i64 %indvars.iv20, !dbg !547
  store i8 %36, i8* %38, align 1, !dbg !548, !tbaa !450
  br label %39

; <label>:39                                      ; preds = %32, %33
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1, !dbg !521
  %lftr.wideiv14 = trunc i64 %indvars.iv12 to i32, !dbg !521
  %exitcond15 = icmp eq i32 %lftr.wideiv14, %4, !dbg !521
  br i1 %exitcond15, label %.loopexit, label %.lr.ph7, !dbg !521

.loopexit:                                        ; preds = %39, %27, %.preheader1, %.preheader
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1, !dbg !503
  %lftr.wideiv22 = trunc i64 %indvars.iv20 to i32, !dbg !503
  %exitcond23 = icmp eq i32 %lftr.wideiv22, %5, !dbg !503
  br i1 %exitcond23, label %._crit_edge11, label %.preheader3, !dbg !503

._crit_edge11:                                    ; preds = %.loopexit, %0
  ret void, !dbg !549
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @MakeAlignedString(i8* nocapture readonly %aseq, i32 %alen, i8* nocapture readonly %ss, i8** nocapture %ret_s) #0 {
  tail call void @llvm.dbg.value(metadata i8* %aseq, i64 0, metadata !112, metadata !300), !dbg !550
  tail call void @llvm.dbg.value(metadata i32 %alen, i64 0, metadata !113, metadata !300), !dbg !551
  tail call void @llvm.dbg.value(metadata i8* %ss, i64 0, metadata !114, metadata !300), !dbg !552
  tail call void @llvm.dbg.value(metadata i8** %ret_s, i64 0, metadata !115, metadata !300), !dbg !553
  %1 = add nsw i32 %alen, 1, !dbg !554
  %2 = sext i32 %1 to i64, !dbg !554
  %3 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([65 x i8]* @.str, i64 0, i64 0), i32 242, i64 %2) #7, !dbg !554
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !116, metadata !300), !dbg !555
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !118, metadata !300), !dbg !556
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !117, metadata !300), !dbg !557
  %4 = icmp sgt i32 %alen, 0, !dbg !558
  br i1 %4, label %.lr.ph, label %20, !dbg !561

.lr.ph:                                           ; preds = %0
  %5 = add i32 %alen, -1, !dbg !561
  %6 = zext i32 %5 to i64
  br label %7, !dbg !561

; <label>:7                                       ; preds = %18, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %18 ]
  %rpos.02 = phi i32 [ 0, %.lr.ph ], [ %rpos.1, %18 ]
  %8 = getelementptr inbounds i8* %aseq, i64 %indvars.iv, !dbg !562
  %9 = load i8* %8, align 1, !dbg !562, !tbaa !450
  switch i8 %9, label %10 [
    i8 32, label %16
    i8 46, label %16
    i8 95, label %16
    i8 45, label %16
    i8 126, label %16
  ], !dbg !562

; <label>:10                                      ; preds = %7
  %11 = sext i32 %rpos.02 to i64, !dbg !564
  %12 = getelementptr inbounds i8* %ss, i64 %11, !dbg !564
  %13 = load i8* %12, align 1, !dbg !564, !tbaa !450
  %14 = getelementptr inbounds i8* %3, i64 %indvars.iv, !dbg !566
  store i8 %13, i8* %14, align 1, !dbg !567, !tbaa !450
  %15 = add nsw i32 %rpos.02, 1, !dbg !568
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !118, metadata !300), !dbg !556
  br label %18, !dbg !569

; <label>:16                                      ; preds = %7, %7, %7, %7, %7
  %17 = getelementptr inbounds i8* %3, i64 %indvars.iv, !dbg !570
  store i8 46, i8* %17, align 1, !dbg !571, !tbaa !450
  br label %18

; <label>:18                                      ; preds = %10, %16
  %rpos.1 = phi i32 [ %rpos.02, %16 ], [ %15, %10 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !561
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !561
  %exitcond = icmp eq i32 %lftr.wideiv, %5, !dbg !561
  br i1 %exitcond, label %._crit_edge, label %7, !dbg !561

._crit_edge:                                      ; preds = %18
  %19 = add nuw nsw i64 %6, 1, !dbg !561
  br label %20, !dbg !561

; <label>:20                                      ; preds = %._crit_edge, %0
  %.lcssa = phi i64 [ %19, %._crit_edge ], [ 0, %0 ]
  %rpos.0.lcssa = phi i32 [ %rpos.1, %._crit_edge ], [ 0, %0 ]
  %21 = getelementptr inbounds i8* %3, i64 %.lcssa, !dbg !572
  store i8 0, i8* %21, align 1, !dbg !573, !tbaa !450
  %22 = sext i32 %rpos.0.lcssa to i64, !dbg !574
  %23 = tail call i64 @strlen(i8* %ss) #7, !dbg !576
  %24 = icmp eq i64 %22, %23, !dbg !577
  br i1 %24, label %26, label %25, !dbg !578

; <label>:25                                      ; preds = %20
  store i32 6, i32* @squid_errno, align 4, !dbg !579, !tbaa !459
  tail call void @free(i8* %3) #8, !dbg !581
  br label %27, !dbg !582

; <label>:26                                      ; preds = %20
  store i8* %3, i8** %ret_s, align 8, !dbg !583, !tbaa !332
  br label %27, !dbg !584

; <label>:27                                      ; preds = %26, %25
  %.0 = phi i32 [ 0, %25 ], [ 1, %26 ]
  ret i32 %.0, !dbg !585
}

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #4

; Function Attrs: nounwind optsize ssp uwtable
define i32 @MakeDealignedString(i8* nocapture readonly %aseq, i32 %alen, i8* nocapture readonly %ss, i8** nocapture %ret_s) #0 {
  tail call void @llvm.dbg.value(metadata i8* %aseq, i64 0, metadata !121, metadata !300), !dbg !586
  tail call void @llvm.dbg.value(metadata i32 %alen, i64 0, metadata !122, metadata !300), !dbg !587
  tail call void @llvm.dbg.value(metadata i8* %ss, i64 0, metadata !123, metadata !300), !dbg !588
  tail call void @llvm.dbg.value(metadata i8** %ret_s, i64 0, metadata !124, metadata !300), !dbg !589
  %1 = add nsw i32 %alen, 1, !dbg !590
  %2 = sext i32 %1 to i64, !dbg !590
  %3 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([65 x i8]* @.str, i64 0, i64 0), i32 280, i64 %2) #7, !dbg !590
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !125, metadata !300), !dbg !591
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !127, metadata !300), !dbg !592
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !126, metadata !300), !dbg !593
  %4 = icmp sgt i32 %alen, 0, !dbg !594
  br i1 %4, label %.lr.ph, label %._crit_edge, !dbg !597

.lr.ph:                                           ; preds = %0
  %5 = add i32 %alen, -1, !dbg !597
  br label %6, !dbg !597

; <label>:6                                       ; preds = %15, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %15 ]
  %rpos.02 = phi i32 [ 0, %.lr.ph ], [ %rpos.1, %15 ]
  %7 = getelementptr inbounds i8* %aseq, i64 %indvars.iv, !dbg !598
  %8 = load i8* %7, align 1, !dbg !598, !tbaa !450
  switch i8 %8, label %9 [
    i8 32, label %15
    i8 46, label %15
    i8 95, label %15
    i8 45, label %15
    i8 126, label %15
  ], !dbg !598

; <label>:9                                       ; preds = %6
  %10 = getelementptr inbounds i8* %ss, i64 %indvars.iv, !dbg !600
  %11 = load i8* %10, align 1, !dbg !600, !tbaa !450
  %12 = sext i32 %rpos.02 to i64, !dbg !602
  %13 = getelementptr inbounds i8* %3, i64 %12, !dbg !602
  store i8 %11, i8* %13, align 1, !dbg !603, !tbaa !450
  %14 = add nsw i32 %rpos.02, 1, !dbg !604
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !127, metadata !300), !dbg !592
  br label %15, !dbg !605

; <label>:15                                      ; preds = %6, %6, %6, %6, %6, %9
  %rpos.1 = phi i32 [ %rpos.02, %6 ], [ %14, %9 ], [ %rpos.02, %6 ], [ %rpos.02, %6 ], [ %rpos.02, %6 ], [ %rpos.02, %6 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !597
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !597
  %exitcond = icmp eq i32 %lftr.wideiv, %5, !dbg !597
  br i1 %exitcond, label %._crit_edge, label %6, !dbg !597

._crit_edge:                                      ; preds = %15, %0
  %rpos.0.lcssa = phi i32 [ 0, %0 ], [ %rpos.1, %15 ]
  %16 = sext i32 %rpos.0.lcssa to i64, !dbg !606
  %17 = getelementptr inbounds i8* %3, i64 %16, !dbg !606
  store i8 0, i8* %17, align 1, !dbg !607, !tbaa !450
  %18 = sext i32 %alen to i64, !dbg !608
  %19 = tail call i64 @strlen(i8* %ss) #7, !dbg !610
  %20 = icmp eq i64 %18, %19, !dbg !611
  br i1 %20, label %22, label %21, !dbg !612

; <label>:21                                      ; preds = %._crit_edge
  store i32 6, i32* @squid_errno, align 4, !dbg !613, !tbaa !459
  tail call void @free(i8* %3) #8, !dbg !615
  br label %23, !dbg !616

; <label>:22                                      ; preds = %._crit_edge
  store i8* %3, i8** %ret_s, align 8, !dbg !617, !tbaa !332
  br label %23, !dbg !618

; <label>:23                                      ; preds = %22, %21
  %.0 = phi i32 [ 0, %21 ], [ 1, %22 ]
  ret i32 %.0, !dbg !619
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define i32 @DealignedLength(i8* nocapture readonly %aseq) #5 {
  tail call void @llvm.dbg.value(metadata i8* %aseq, i64 0, metadata !132, metadata !300), !dbg !620
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !133, metadata !300), !dbg !621
  br label %1, !dbg !622

; <label>:1                                       ; preds = %5, %0
  %.0 = phi i8* [ %aseq, %0 ], [ %6, %5 ]
  %rlen.0 = phi i32 [ 0, %0 ], [ %rlen.1, %5 ]
  %2 = load i8* %.0, align 1, !dbg !624, !tbaa !450
  switch i8 %2, label %3 [
    i8 0, label %7
    i8 32, label %5
    i8 46, label %5
    i8 95, label %5
    i8 45, label %5
    i8 126, label %5
  ], !dbg !626

; <label>:3                                       ; preds = %1
  %4 = add nsw i32 %rlen.0, 1, !dbg !627
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !133, metadata !300), !dbg !621
  br label %5, !dbg !629

; <label>:5                                       ; preds = %1, %1, %1, %1, %1, %3
  %rlen.1 = phi i32 [ %4, %3 ], [ %rlen.0, %1 ], [ %rlen.0, %1 ], [ %rlen.0, %1 ], [ %rlen.0, %1 ], [ %rlen.0, %1 ]
  %6 = getelementptr inbounds i8* %.0, i64 1, !dbg !630
  tail call void @llvm.dbg.value(metadata i8* %6, i64 0, metadata !132, metadata !300), !dbg !620
  br label %1, !dbg !631

; <label>:7                                       ; preds = %1
  ret i32 %rlen.0, !dbg !632
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @WritePairwiseAlignment(%struct.__sFILE* nocapture %ofp, i8* nocapture readonly %aseq1, i8* nocapture readonly %name1, i32 %spos1, i8* nocapture readonly %aseq2, i8* nocapture readonly %name2, i32 %spos2, i32** nocapture readonly %pam, i32 %indent) #0 {
  %sname1 = alloca [11 x i8], align 1
  %sname2 = alloca [11 x i8], align 1
  %buf1 = alloca [61 x i8], align 16
  %bufmid = alloca [61 x i8], align 16
  %buf2 = alloca [61 x i8], align 16
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %ofp, i64 0, metadata !198, metadata !300), !dbg !633
  tail call void @llvm.dbg.value(metadata i8* %aseq1, i64 0, metadata !199, metadata !300), !dbg !634
  tail call void @llvm.dbg.value(metadata i8* %name1, i64 0, metadata !200, metadata !300), !dbg !635
  tail call void @llvm.dbg.value(metadata i32 %spos1, i64 0, metadata !201, metadata !300), !dbg !636
  tail call void @llvm.dbg.value(metadata i8* %aseq2, i64 0, metadata !202, metadata !300), !dbg !637
  tail call void @llvm.dbg.value(metadata i8* %name2, i64 0, metadata !203, metadata !300), !dbg !638
  tail call void @llvm.dbg.value(metadata i32 %spos2, i64 0, metadata !204, metadata !300), !dbg !639
  tail call void @llvm.dbg.value(metadata i32** %pam, i64 0, metadata !205, metadata !300), !dbg !640
  tail call void @llvm.dbg.value(metadata i32 %indent, i64 0, metadata !206, metadata !300), !dbg !641
  tail call void @llvm.dbg.declare(metadata [11 x i8]* %sname1, metadata !207, metadata !300), !dbg !642
  tail call void @llvm.dbg.declare(metadata [11 x i8]* %sname2, metadata !211, metadata !300), !dbg !643
  %1 = getelementptr inbounds [61 x i8]* %buf1, i64 0, i64 0, !dbg !644
  call void @llvm.lifetime.start(i64 61, i8* %1) #6, !dbg !644
  tail call void @llvm.dbg.declare(metadata [61 x i8]* %buf1, metadata !213, metadata !300), !dbg !645
  %2 = getelementptr inbounds [61 x i8]* %bufmid, i64 0, i64 0, !dbg !646
  call void @llvm.lifetime.start(i64 61, i8* %2) #6, !dbg !646
  tail call void @llvm.dbg.declare(metadata [61 x i8]* %bufmid, metadata !217, metadata !300), !dbg !647
  %3 = getelementptr inbounds [61 x i8]* %buf2, i64 0, i64 0, !dbg !648
  call void @llvm.lifetime.start(i64 61, i8* %3) #6, !dbg !648
  tail call void @llvm.dbg.declare(metadata [61 x i8]* %buf2, metadata !218, metadata !300), !dbg !649
  %4 = getelementptr inbounds [11 x i8]* %sname1, i64 0, i64 0, !dbg !650
  %strncpy = call i8* @strncpy(i8* %4, i8* %name1, i64 10), !dbg !650
  %5 = getelementptr inbounds [11 x i8]* %sname1, i64 0, i64 10, !dbg !651
  store i8 0, i8* %5, align 1, !dbg !652, !tbaa !450
  %6 = call i8* @strtok(i8* %4, i8* getelementptr inbounds ([4 x i8]* @.str1, i64 0, i64 0)) #7, !dbg !653
  %7 = getelementptr inbounds [11 x i8]* %sname2, i64 0, i64 0, !dbg !654
  %strncpy1 = call i8* @strncpy(i8* %7, i8* %name2, i64 10), !dbg !654
  %8 = getelementptr inbounds [11 x i8]* %sname2, i64 0, i64 10, !dbg !655
  store i8 0, i8* %8, align 1, !dbg !656, !tbaa !450
  %9 = call i8* @strtok(i8* %7, i8* getelementptr inbounds ([4 x i8]* @.str1, i64 0, i64 0)) #7, !dbg !657
  call void @llvm.dbg.value(metadata i8* %aseq1, i64 0, metadata !219, metadata !300), !dbg !658
  call void @llvm.dbg.value(metadata i8* %aseq2, i64 0, metadata !220, metadata !300), !dbg !659
  call void @llvm.dbg.value(metadata i32 %spos1, i64 0, metadata !223, metadata !300), !dbg !660
  call void @llvm.dbg.value(metadata i32 %spos2, i64 0, metadata !224, metadata !300), !dbg !661
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !212, metadata !300), !dbg !662
  %10 = getelementptr inbounds [61 x i8]* %buf1, i64 0, i64 60, !dbg !663
  %11 = getelementptr inbounds [61 x i8]* %buf2, i64 0, i64 60, !dbg !665
  br label %12, !dbg !666

; <label>:12                                      ; preds = %0, %._crit_edge15
  %rpos2.022 = phi i32 [ %spos2, %0 ], [ %88, %._crit_edge15 ]
  %rpos1.021 = phi i32 [ %spos1, %0 ], [ %84, %._crit_edge15 ]
  %s1.020 = phi i8* [ %aseq1, %0 ], [ %31, %._crit_edge15 ]
  %s2.017 = phi i8* [ %aseq2, %0 ], [ %33, %._crit_edge15 ]
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !212, metadata !300), !dbg !662
  %strncpy2 = call i8* @strncpy(i8* %1, i8* %s1.020, i64 60), !dbg !667
  store i8 0, i8* %10, align 4, !dbg !668, !tbaa !450
  %strncpy3 = call i8* @strncpy(i8* %3, i8* %s2.017, i64 60), !dbg !669
  store i8 0, i8* %11, align 4, !dbg !670, !tbaa !450
  %13 = call i64 @strlen(i8* %1) #7, !dbg !671
  %14 = trunc i64 %13 to i32, !dbg !671
  call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !221, metadata !300), !dbg !672
  %15 = call i64 @strlen(i8* %3) #7, !dbg !673
  %16 = trunc i64 %15 to i32, !dbg !673
  call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !222, metadata !300), !dbg !674
  %17 = icmp eq i32 %14, 60, !dbg !675
  br i1 %17, label %18, label %22, !dbg !677

; <label>:18                                      ; preds = %12
  %19 = getelementptr inbounds i8* %s1.020, i64 60, !dbg !678
  %20 = load i8* %19, align 1, !dbg !678, !tbaa !450
  %21 = icmp eq i8 %20, 0, !dbg !679
  br i1 %21, label %22, label %28, !dbg !680

; <label>:22                                      ; preds = %18, %12
  %23 = icmp eq i32 %16, 60, !dbg !681
  br i1 %23, label %24, label %29, !dbg !682

; <label>:24                                      ; preds = %22
  %25 = getelementptr inbounds i8* %s2.017, i64 60, !dbg !683
  %26 = load i8* %25, align 1, !dbg !683, !tbaa !450
  %27 = icmp eq i8 %26, 0, !dbg !684
  br i1 %27, label %29, label %28, !dbg !685

; <label>:28                                      ; preds = %18, %24
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !212, metadata !300), !dbg !662
  br label %29, !dbg !686

; <label>:29                                      ; preds = %24, %28, %22
  %still_going.1 = phi i32 [ 1, %28 ], [ 0, %24 ], [ 0, %22 ]
  %sext = shl i64 %13, 32, !dbg !687
  %30 = ashr exact i64 %sext, 32, !dbg !687
  %31 = getelementptr inbounds i8* %s1.020, i64 %30, !dbg !687
  call void @llvm.dbg.value(metadata i8* %31, i64 0, metadata !219, metadata !300), !dbg !658
  %sext4 = shl i64 %15, 32, !dbg !688
  %32 = ashr exact i64 %sext4, 32, !dbg !688
  %33 = getelementptr inbounds i8* %s2.017, i64 %32, !dbg !688
  call void @llvm.dbg.value(metadata i8* %33, i64 0, metadata !220, metadata !300), !dbg !659
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !227, metadata !300), !dbg !689
  %34 = icmp sgt i32 %14, 0, !dbg !690
  %35 = icmp sgt i32 %16, 0, !dbg !693
  %.5 = and i1 %34, %35, !dbg !694
  br i1 %.5, label %.lr.ph, label %68, !dbg !695

.lr.ph:                                           ; preds = %29
  %36 = sub i32 0, %16, !dbg !695
  %37 = sub i32 0, %14, !dbg !695
  %38 = icmp ugt i32 %36, %37
  %umax = select i1 %38, i32 %36, i32 %37
  %39 = xor i32 %umax, -1, !dbg !695
  %40 = zext i32 %39 to i64
  br label %41, !dbg !695

; <label>:41                                      ; preds = %66, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %66 ]
  %42 = getelementptr inbounds [61 x i8]* %buf1, i64 0, i64 %indvars.iv, !dbg !696
  %43 = load i8* %42, align 1, !dbg !696, !tbaa !450
  %44 = sext i8 %43 to i64, !dbg !696
  switch i8 %43, label %45 [
    i8 32, label %64
    i8 46, label %64
    i8 95, label %64
    i8 45, label %64
    i8 126, label %64
  ], !dbg !696

; <label>:45                                      ; preds = %41
  %46 = getelementptr inbounds [61 x i8]* %buf2, i64 0, i64 %indvars.iv, !dbg !699
  %47 = load i8* %46, align 1, !dbg !699, !tbaa !450
  %48 = sext i8 %47 to i64, !dbg !699
  switch i8 %47, label %49 [
    i8 32, label %64
    i8 46, label %64
    i8 95, label %64
    i8 45, label %64
    i8 126, label %64
  ], !dbg !699

; <label>:49                                      ; preds = %45
  %50 = icmp eq i8 %43, %47, !dbg !700
  br i1 %50, label %51, label %53, !dbg !703

; <label>:51                                      ; preds = %49
  %52 = getelementptr inbounds [61 x i8]* %bufmid, i64 0, i64 %indvars.iv, !dbg !704
  store i8 %43, i8* %52, align 1, !dbg !705, !tbaa !450
  br label %66, !dbg !704

; <label>:53                                      ; preds = %49
  %54 = add nsw i64 %48, -65, !dbg !706
  %55 = add nsw i64 %44, -65, !dbg !708
  %56 = getelementptr inbounds i32** %pam, i64 %55, !dbg !709
  %57 = load i32** %56, align 8, !dbg !709, !tbaa !332
  %58 = getelementptr inbounds i32* %57, i64 %54, !dbg !709
  %59 = load i32* %58, align 4, !dbg !709, !tbaa !459
  %60 = icmp sgt i32 %59, 0, !dbg !710
  %61 = getelementptr inbounds [61 x i8]* %bufmid, i64 0, i64 %indvars.iv, !dbg !711
  br i1 %60, label %62, label %63, !dbg !712

; <label>:62                                      ; preds = %53
  store i8 43, i8* %61, align 1, !dbg !713, !tbaa !450
  br label %66, !dbg !711

; <label>:63                                      ; preds = %53
  store i8 32, i8* %61, align 1, !dbg !714, !tbaa !450
  br label %66

; <label>:64                                      ; preds = %45, %45, %45, %45, %45, %41, %41, %41, %41, %41
  %65 = getelementptr inbounds [61 x i8]* %bufmid, i64 0, i64 %indvars.iv, !dbg !715
  store i8 32, i8* %65, align 1, !dbg !716, !tbaa !450
  br label %66

; <label>:66                                      ; preds = %64, %62, %63, %51
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !695
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !695
  %exitcond = icmp eq i32 %lftr.wideiv, %39, !dbg !695
  br i1 %exitcond, label %._crit_edge, label %41, !dbg !695

._crit_edge:                                      ; preds = %66
  %67 = add nuw nsw i64 %40, 1, !dbg !695
  br label %68, !dbg !695

; <label>:68                                      ; preds = %._crit_edge, %29
  %.lcssa = phi i64 [ %67, %._crit_edge ], [ 0, %29 ]
  %69 = getelementptr inbounds [61 x i8]* %bufmid, i64 0, i64 %.lcssa, !dbg !717
  store i8 0, i8* %69, align 1, !dbg !718, !tbaa !450
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !225, metadata !300), !dbg !719
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !227, metadata !300), !dbg !689
  br i1 %34, label %.lr.ph10, label %.preheader, !dbg !720

.lr.ph10:                                         ; preds = %68
  %70 = add i32 %14, -1, !dbg !720
  br label %72, !dbg !720

.preheader:                                       ; preds = %77, %68
  %rawcount1.0.lcssa = phi i32 [ 0, %68 ], [ %rawcount1.1, %77 ]
  br i1 %35, label %.lr.ph14, label %._crit_edge15, !dbg !722

.lr.ph14:                                         ; preds = %.preheader
  %71 = add i32 %16, -1, !dbg !722
  br label %78, !dbg !722

; <label>:72                                      ; preds = %77, %.lr.ph10
  %indvars.iv24 = phi i64 [ 0, %.lr.ph10 ], [ %indvars.iv.next25, %77 ]
  %rawcount1.07 = phi i32 [ 0, %.lr.ph10 ], [ %rawcount1.1, %77 ]
  %73 = getelementptr inbounds [61 x i8]* %buf1, i64 0, i64 %indvars.iv24, !dbg !724
  %74 = load i8* %73, align 1, !dbg !724, !tbaa !450
  switch i8 %74, label %75 [
    i8 32, label %77
    i8 46, label %77
    i8 95, label %77
    i8 45, label %77
    i8 126, label %77
  ], !dbg !724

; <label>:75                                      ; preds = %72
  %76 = add nsw i32 %rawcount1.07, 1, !dbg !727
  call void @llvm.dbg.value(metadata i32 %76, i64 0, metadata !225, metadata !300), !dbg !719
  br label %77, !dbg !728

; <label>:77                                      ; preds = %72, %72, %72, %72, %72, %75
  %rawcount1.1 = phi i32 [ %rawcount1.07, %72 ], [ %76, %75 ], [ %rawcount1.07, %72 ], [ %rawcount1.07, %72 ], [ %rawcount1.07, %72 ], [ %rawcount1.07, %72 ]
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1, !dbg !720
  %lftr.wideiv26 = trunc i64 %indvars.iv24 to i32, !dbg !720
  %exitcond27 = icmp eq i32 %lftr.wideiv26, %70, !dbg !720
  br i1 %exitcond27, label %.preheader, label %72, !dbg !720

; <label>:78                                      ; preds = %83, %.lr.ph14
  %indvars.iv28 = phi i64 [ 0, %.lr.ph14 ], [ %indvars.iv.next29, %83 ]
  %rawcount2.012 = phi i32 [ 0, %.lr.ph14 ], [ %rawcount2.1, %83 ]
  %79 = getelementptr inbounds [61 x i8]* %buf2, i64 0, i64 %indvars.iv28, !dbg !729
  %80 = load i8* %79, align 1, !dbg !729, !tbaa !450
  switch i8 %80, label %81 [
    i8 32, label %83
    i8 46, label %83
    i8 95, label %83
    i8 45, label %83
    i8 126, label %83
  ], !dbg !729

; <label>:81                                      ; preds = %78
  %82 = add nsw i32 %rawcount2.012, 1, !dbg !732
  call void @llvm.dbg.value(metadata i32 %82, i64 0, metadata !226, metadata !300), !dbg !733
  br label %83, !dbg !734

; <label>:83                                      ; preds = %78, %78, %78, %78, %78, %81
  %rawcount2.1 = phi i32 [ %rawcount2.012, %78 ], [ %82, %81 ], [ %rawcount2.012, %78 ], [ %rawcount2.012, %78 ], [ %rawcount2.012, %78 ], [ %rawcount2.012, %78 ]
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1, !dbg !722
  %lftr.wideiv30 = trunc i64 %indvars.iv28 to i32, !dbg !722
  %exitcond31 = icmp eq i32 %lftr.wideiv30, %71, !dbg !722
  br i1 %exitcond31, label %._crit_edge15, label %78, !dbg !722

._crit_edge15:                                    ; preds = %83, %.preheader
  %rawcount2.0.lcssa = phi i32 [ 0, %.preheader ], [ %rawcount2.1, %83 ]
  %84 = add nsw i32 %rawcount1.0.lcssa, %rpos1.021, !dbg !735
  %85 = add nsw i32 %84, -1, !dbg !736
  %86 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ofp, i8* getelementptr inbounds ([24 x i8]* @.str2, i64 0, i64 0), i32 %indent, i8* getelementptr inbounds ([1 x i8]* @.str3, i64 0, i64 0), i8* %4, i32 %rpos1.021, i8* %1, i32 %85) #7, !dbg !737
  %87 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ofp, i8* getelementptr inbounds ([24 x i8]* @.str4, i64 0, i64 0), i32 %indent, i8* getelementptr inbounds ([1 x i8]* @.str3, i64 0, i64 0), i8* %2) #7, !dbg !738
  %88 = add nsw i32 %rawcount2.0.lcssa, %rpos2.022, !dbg !739
  %89 = add nsw i32 %88, -1, !dbg !740
  %90 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %ofp, i8* getelementptr inbounds ([24 x i8]* @.str2, i64 0, i64 0), i32 %indent, i8* getelementptr inbounds ([1 x i8]* @.str3, i64 0, i64 0), i8* %7, i32 %rpos2.022, i8* %3, i32 %89) #7, !dbg !741
  %fputc = call i32 @fputc(i32 10, %struct.__sFILE* %ofp), !dbg !742
  call void @llvm.dbg.value(metadata i32 %84, i64 0, metadata !223, metadata !300), !dbg !660
  call void @llvm.dbg.value(metadata i32 %88, i64 0, metadata !224, metadata !300), !dbg !661
  %91 = icmp eq i32 %still_going.1, 0, !dbg !666
  br i1 %91, label %92, label %12, !dbg !666

; <label>:92                                      ; preds = %._crit_edge15
  call void @llvm.lifetime.end(i64 61, i8* %3) #6, !dbg !743
  call void @llvm.lifetime.end(i64 61, i8* %2) #6, !dbg !743
  call void @llvm.lifetime.end(i64 61, i8* %1) #6, !dbg !743
  ret i32 1, !dbg !743
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #6

; Function Attrs: nounwind optsize
declare i8* @strtok(i8*, i8* nocapture readonly) #3

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #6

; Function Attrs: nounwind optsize ssp uwtable
define i32 @MingapAlignment(i8** nocapture readonly %aseqs, %struct.aliinfo_s* nocapture %ainfo) #0 {
  tail call void @llvm.dbg.value(metadata i8** %aseqs, i64 0, metadata !232, metadata !300), !dbg !744
  tail call void @llvm.dbg.value(metadata %struct.aliinfo_s* %ainfo, i64 0, metadata !233, metadata !300), !dbg !745
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !234, metadata !300), !dbg !746
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !235, metadata !300), !dbg !747
  %1 = load i8** %aseqs, align 8, !dbg !748, !tbaa !332
  %2 = load i8* %1, align 1, !dbg !748, !tbaa !450
  %3 = icmp eq i8 %2, 0, !dbg !751
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !236, metadata !300), !dbg !752
  %.pre33 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 2, !dbg !753
  br i1 %3, label %.preheader, label %.preheader2.lr.ph, !dbg !756

.preheader2.lr.ph:                                ; preds = %0
  %4 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 4, !dbg !757
  %5 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 5, !dbg !762
  br label %.preheader2, !dbg !756

.preheader2:                                      ; preds = %.preheader2.lr.ph, %58
  %6 = phi i8* [ %1, %.preheader2.lr.ph ], [ %59, %58 ]
  %indvars.iv22 = phi i64 [ 0, %.preheader2.lr.ph ], [ %indvars.iv.next23, %58 ]
  %mpos.015 = phi i32 [ 0, %.preheader2.lr.ph ], [ %mpos.1, %58 ]
  %7 = load i32* %.pre33, align 4, !dbg !764, !tbaa !338
  %8 = icmp sgt i32 %7, 0, !dbg !767
  br i1 %8, label %.lr.ph5, label %24, !dbg !768

.preheader:                                       ; preds = %58, %0
  %9 = phi i8* [ %1, %0 ], [ %59, %58 ]
  %mpos.0.lcssa = phi i32 [ 0, %0 ], [ %mpos.1, %58 ]
  %10 = load i32* %.pre33, align 4, !dbg !753, !tbaa !338
  %11 = icmp sgt i32 %10, 0, !dbg !769
  br i1 %11, label %.lr.ph, label %._crit_edge, !dbg !770

.lr.ph:                                           ; preds = %.preheader
  %12 = sext i32 %mpos.0.lcssa to i64, !dbg !771
  %13 = getelementptr inbounds i8* %9, i64 %12, !dbg !771
  store i8 0, i8* %13, align 1, !dbg !772, !tbaa !450
  %14 = load i32* %.pre33, align 4, !dbg !753, !tbaa !338
  %15 = icmp sgt i32 %14, 1, !dbg !769
  br i1 %15, label %._crit_edge29, label %._crit_edge, !dbg !770

.lr.ph5:                                          ; preds = %.preheader2, %._crit_edge24
  %16 = phi i8* [ %.pre, %._crit_edge24 ], [ %6, %.preheader2 ]
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %._crit_edge24 ], [ 0, %.preheader2 ]
  %17 = getelementptr inbounds i8* %16, i64 %indvars.iv22, !dbg !773
  %18 = load i8* %17, align 1, !dbg !773, !tbaa !450
  switch i8 %18, label %._crit_edge6 [
    i8 32, label %19
    i8 46, label %19
    i8 95, label %19
    i8 45, label %19
    i8 126, label %19
  ], !dbg !773

; <label>:19                                      ; preds = %.lr.ph5, %.lr.ph5, %.lr.ph5, %.lr.ph5, %.lr.ph5
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1, !dbg !768
  %20 = sext i32 %7 to i64, !dbg !767
  %21 = icmp slt i64 %indvars.iv.next19, %20, !dbg !767
  br i1 %21, label %._crit_edge24, label %._crit_edge8, !dbg !768

._crit_edge24:                                    ; preds = %19
  %.phi.trans.insert = getelementptr inbounds i8** %aseqs, i64 %indvars.iv.next19
  %.pre = load i8** %.phi.trans.insert, align 8, !dbg !773, !tbaa !332
  br label %.lr.ph5, !dbg !768

._crit_edge6:                                     ; preds = %.lr.ph5
  %22 = trunc i64 %indvars.iv18 to i32, !dbg !773
  br label %24, !dbg !773

._crit_edge8:                                     ; preds = %19
  %23 = trunc i64 %indvars.iv.next19 to i32, !dbg !768
  br label %24, !dbg !768

; <label>:24                                      ; preds = %._crit_edge8, %._crit_edge6, %.preheader2
  %idx.0.lcssa = phi i32 [ %22, %._crit_edge6 ], [ %23, %._crit_edge8 ], [ 0, %.preheader2 ]
  %25 = icmp eq i32 %idx.0.lcssa, %7, !dbg !775
  br i1 %25, label %58, label %26, !dbg !777

; <label>:26                                      ; preds = %24
  %27 = trunc i64 %indvars.iv22 to i32, !dbg !778
  %28 = icmp eq i32 %mpos.015, %27, !dbg !778
  br i1 %28, label %56, label %.preheader1, !dbg !779

.preheader1:                                      ; preds = %26
  br i1 %8, label %.lr.ph12, label %._crit_edge13, !dbg !780

.lr.ph12:                                         ; preds = %.preheader1
  %29 = sext i32 %mpos.015 to i64, !dbg !782
  %30 = getelementptr inbounds i8* %6, i64 %indvars.iv22, !dbg !784
  %31 = load i8* %30, align 1, !dbg !784, !tbaa !450
  %32 = getelementptr inbounds i8* %6, i64 %29, !dbg !782
  store i8 %31, i8* %32, align 1, !dbg !785, !tbaa !450
  %33 = load i32* %.pre33, align 4, !dbg !786, !tbaa !338
  %34 = icmp sgt i32 %33, 1, !dbg !787
  br i1 %34, label %._crit_edge25, label %._crit_edge13, !dbg !780

._crit_edge25:                                    ; preds = %.lr.ph12, %._crit_edge25
  %indvars.iv.next2136 = phi i64 [ %indvars.iv.next21, %._crit_edge25 ], [ 1, %.lr.ph12 ]
  %.phi.trans.insert26 = getelementptr inbounds i8** %aseqs, i64 %indvars.iv.next2136
  %.pre27 = load i8** %.phi.trans.insert26, align 8, !dbg !784, !tbaa !332
  %35 = getelementptr inbounds i8* %.pre27, i64 %indvars.iv22, !dbg !784
  %36 = load i8* %35, align 1, !dbg !784, !tbaa !450
  %37 = getelementptr inbounds i8* %.pre27, i64 %29, !dbg !782
  store i8 %36, i8* %37, align 1, !dbg !785, !tbaa !450
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv.next2136, 1, !dbg !780
  %38 = load i32* %.pre33, align 4, !dbg !786, !tbaa !338
  %39 = sext i32 %38 to i64, !dbg !787
  %40 = icmp slt i64 %indvars.iv.next21, %39, !dbg !787
  br i1 %40, label %._crit_edge25, label %._crit_edge13, !dbg !780

._crit_edge13:                                    ; preds = %.lr.ph12, %._crit_edge25, %.preheader1
  %41 = load i8** %4, align 8, !dbg !757, !tbaa !393
  %42 = icmp eq i8* %41, null, !dbg !788
  br i1 %42, label %48, label %43, !dbg !789

; <label>:43                                      ; preds = %._crit_edge13
  %44 = getelementptr inbounds i8* %41, i64 %indvars.iv22, !dbg !790
  %45 = load i8* %44, align 1, !dbg !790, !tbaa !450
  %46 = sext i32 %mpos.015 to i64, !dbg !791
  %47 = getelementptr inbounds i8* %41, i64 %46, !dbg !791
  store i8 %45, i8* %47, align 1, !dbg !792, !tbaa !450
  br label %48, !dbg !791

; <label>:48                                      ; preds = %._crit_edge13, %43
  %49 = load i8** %5, align 8, !dbg !762, !tbaa !399
  %50 = icmp eq i8* %49, null, !dbg !793
  br i1 %50, label %56, label %51, !dbg !794

; <label>:51                                      ; preds = %48
  %52 = getelementptr inbounds i8* %49, i64 %indvars.iv22, !dbg !795
  %53 = load i8* %52, align 1, !dbg !795, !tbaa !450
  %54 = sext i32 %mpos.015 to i64, !dbg !796
  %55 = getelementptr inbounds i8* %49, i64 %54, !dbg !796
  store i8 %53, i8* %55, align 1, !dbg !797, !tbaa !450
  br label %56, !dbg !796

; <label>:56                                      ; preds = %48, %26, %51
  %57 = add nsw i32 %mpos.015, 1, !dbg !798
  tail call void @llvm.dbg.value(metadata i32 %57, i64 0, metadata !235, metadata !300), !dbg !747
  %.pre28 = load i8** %aseqs, align 8, !dbg !748, !tbaa !332
  br label %58, !dbg !799

; <label>:58                                      ; preds = %24, %56
  %59 = phi i8* [ %6, %24 ], [ %.pre28, %56 ], !dbg !756
  %mpos.1 = phi i32 [ %mpos.015, %24 ], [ %57, %56 ]
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1, !dbg !756
  %60 = getelementptr inbounds i8* %59, i64 %indvars.iv.next23, !dbg !748
  %61 = load i8* %60, align 1, !dbg !748, !tbaa !450
  %62 = icmp eq i8 %61, 0, !dbg !751
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !236, metadata !300), !dbg !752
  br i1 %62, label %.preheader, label %.preheader2, !dbg !756

._crit_edge29:                                    ; preds = %.lr.ph, %._crit_edge29
  %indvars.iv.next35 = phi i64 [ %indvars.iv.next, %._crit_edge29 ], [ 1, %.lr.ph ]
  %.phi.trans.insert30 = getelementptr inbounds i8** %aseqs, i64 %indvars.iv.next35
  %.pre31 = load i8** %.phi.trans.insert30, align 8, !dbg !771, !tbaa !332
  %63 = getelementptr inbounds i8* %.pre31, i64 %12, !dbg !771
  store i8 0, i8* %63, align 1, !dbg !772, !tbaa !450
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.next35, 1, !dbg !770
  %64 = load i32* %.pre33, align 4, !dbg !753, !tbaa !338
  %65 = sext i32 %64 to i64, !dbg !769
  %66 = icmp slt i64 %indvars.iv.next, %65, !dbg !769
  br i1 %66, label %._crit_edge29, label %._crit_edge, !dbg !770

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge29, %.preheader
  %67 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 1, !dbg !800
  store i32 %mpos.0.lcssa, i32* %67, align 4, !dbg !801, !tbaa !335
  %68 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 4, !dbg !802
  %69 = load i8** %68, align 8, !dbg !802, !tbaa !393
  %70 = icmp eq i8* %69, null, !dbg !804
  br i1 %70, label %74, label %71, !dbg !805

; <label>:71                                      ; preds = %._crit_edge
  %72 = sext i32 %mpos.0.lcssa to i64, !dbg !806
  %73 = getelementptr inbounds i8* %69, i64 %72, !dbg !806
  store i8 0, i8* %73, align 1, !dbg !807, !tbaa !450
  br label %74, !dbg !806

; <label>:74                                      ; preds = %._crit_edge, %71
  %75 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 5, !dbg !808
  %76 = load i8** %75, align 8, !dbg !808, !tbaa !399
  %77 = icmp eq i8* %76, null, !dbg !810
  br i1 %77, label %81, label %78, !dbg !811

; <label>:78                                      ; preds = %74
  %79 = sext i32 %mpos.0.lcssa to i64, !dbg !812
  %80 = getelementptr inbounds i8* %76, i64 %79, !dbg !812
  store i8 0, i8* %80, align 1, !dbg !813, !tbaa !450
  br label %81, !dbg !812

; <label>:81                                      ; preds = %74, %78
  ret i32 1, !dbg !814
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @RandomAlignment(i8** nocapture readonly %rseqs, %struct.seqinfo_s* %sqinfo, i32 %nseq, float %pop, float %pex, i8*** nocapture %ret_aseqs, %struct.aliinfo_s* nocapture %ainfo) #0 {
  tail call void @llvm.dbg.value(metadata i8** %rseqs, i64 0, metadata !241, metadata !300), !dbg !815
  tail call void @llvm.dbg.value(metadata %struct.seqinfo_s* %sqinfo, i64 0, metadata !242, metadata !300), !dbg !816
  tail call void @llvm.dbg.value(metadata i32 %nseq, i64 0, metadata !243, metadata !300), !dbg !817
  tail call void @llvm.dbg.value(metadata float %pop, i64 0, metadata !244, metadata !300), !dbg !818
  tail call void @llvm.dbg.value(metadata float %pex, i64 0, metadata !245, metadata !300), !dbg !819
  tail call void @llvm.dbg.value(metadata i8*** %ret_aseqs, i64 0, metadata !246, metadata !300), !dbg !820
  tail call void @llvm.dbg.value(metadata %struct.aliinfo_s* %ainfo, i64 0, metadata !247, metadata !300), !dbg !821
  %1 = sext i32 %nseq to i64, !dbg !822
  %2 = shl nsw i64 %1, 2, !dbg !822
  %3 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([65 x i8]* @.str, i64 0, i64 0), i32 530, i64 %2) #7, !dbg !822
  %4 = bitcast i8* %3 to i32*, !dbg !823
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !250, metadata !300), !dbg !824
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !251, metadata !300), !dbg !825
  tail call void @llvm.dbg.value(metadata i32 9999999, i64 0, metadata !259, metadata !300), !dbg !826
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !256, metadata !300), !dbg !827
  %5 = icmp sgt i32 %nseq, 0, !dbg !828
  br i1 %5, label %.lr.ph57, label %15, !dbg !831

.lr.ph57:                                         ; preds = %0
  %6 = add i32 %nseq, -1, !dbg !831
  br label %7, !dbg !831

; <label>:7                                       ; preds = %7, %.lr.ph57
  %indvars.iv108 = phi i64 [ 0, %.lr.ph57 ], [ %indvars.iv.next109, %7 ]
  %minlen.055 = phi i32 [ 9999999, %.lr.ph57 ], [ %.minlen.0, %7 ]
  %M.053 = phi i32 [ 0, %.lr.ph57 ], [ %13, %7 ]
  %8 = getelementptr inbounds i8** %rseqs, i64 %indvars.iv108, !dbg !832
  %9 = load i8** %8, align 8, !dbg !832, !tbaa !332
  %10 = tail call i64 @strlen(i8* %9) #7, !dbg !834
  %11 = trunc i64 %10 to i32, !dbg !834
  %12 = getelementptr inbounds i32* %4, i64 %indvars.iv108, !dbg !835
  store i32 %11, i32* %12, align 4, !dbg !836, !tbaa !459
  %13 = add nsw i32 %11, %M.053, !dbg !837
  tail call void @llvm.dbg.value(metadata i32 %13, i64 0, metadata !251, metadata !300), !dbg !825
  %14 = icmp slt i32 %11, %minlen.055, !dbg !838
  %.minlen.0 = select i1 %14, i32 %11, i32 %minlen.055, !dbg !839
  tail call void @llvm.dbg.value(metadata i32 %.minlen.0, i64 0, metadata !259, metadata !300), !dbg !826
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1, !dbg !831
  %lftr.wideiv110 = trunc i64 %indvars.iv108 to i32, !dbg !831
  %exitcond111 = icmp eq i32 %lftr.wideiv110, %6, !dbg !831
  br i1 %exitcond111, label %._crit_edge58, label %7, !dbg !831

._crit_edge58:                                    ; preds = %7
  %phitmp = sitofp i32 %13 to float, !dbg !831
  %phitmp61 = fpext float %phitmp to double, !dbg !831
  br label %15, !dbg !831

; <label>:15                                      ; preds = %._crit_edge58, %0
  %minlen.0.lcssa = phi i32 [ %.minlen.0, %._crit_edge58 ], [ 9999999, %0 ]
  %M.0.lcssa = phi double [ %phitmp61, %._crit_edge58 ], [ 0.000000e+00, %0 ]
  %16 = fpext float %pop to double, !dbg !840
  %17 = fpext float %pex to double, !dbg !841
  %18 = fsub double 1.000000e+00, %17, !dbg !842
  %19 = fdiv double 1.000000e+00, %18, !dbg !843
  %20 = fadd double %19, 1.000000e+00, !dbg !844
  %21 = fmul double %16, %20, !dbg !845
  %22 = fadd double %21, 1.000000e+00, !dbg !846
  %23 = fdiv double %M.0.lcssa, %22, !dbg !847
  %24 = fptosi double %23 to i32, !dbg !848
  tail call void @llvm.dbg.value(metadata i32 %24, i64 0, metadata !251, metadata !300), !dbg !825
  %25 = sdiv i32 %24, %nseq, !dbg !849
  tail call void @llvm.dbg.value(metadata i32 %25, i64 0, metadata !251, metadata !300), !dbg !825
  %26 = icmp sgt i32 %25, %minlen.0.lcssa, !dbg !850
  tail call void @llvm.dbg.value(metadata i32 %.minlen.0, i64 0, metadata !251, metadata !300), !dbg !825
  %minlen.0. = select i1 %26, i32 %minlen.0.lcssa, i32 %25, !dbg !852
  %27 = shl nsw i64 %1, 3, !dbg !853
  %28 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([65 x i8]* @.str, i64 0, i64 0), i32 545, i64 %27) #7, !dbg !853
  %29 = bitcast i8* %28 to i32**, !dbg !854
  tail call void @llvm.dbg.value(metadata i32** %29, i64 0, metadata !252, metadata !300), !dbg !855
  %30 = add nsw i32 %minlen.0., 1, !dbg !856
  %31 = sext i32 %30 to i64, !dbg !856
  %32 = shl nsw i64 %31, 2, !dbg !856
  %33 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([65 x i8]* @.str, i64 0, i64 0), i32 546, i64 %32) #7, !dbg !856
  %34 = bitcast i8* %33 to i32*, !dbg !857
  tail call void @llvm.dbg.value(metadata i32* %34, i64 0, metadata !253, metadata !300), !dbg !858
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !256, metadata !300), !dbg !827
  br i1 %5, label %.lr.ph51, label %.preheader5, !dbg !859

.lr.ph51:                                         ; preds = %15
  %35 = icmp slt i32 %minlen.0., 0, !dbg !861
  %36 = xor i32 %minlen.0.lcssa, -1, !dbg !859
  %37 = xor i32 %25, -1, !dbg !859
  %38 = icmp sgt i32 %36, %37
  %smax100 = select i1 %38, i32 %36, i32 %37
  %39 = xor i32 %smax100, -1, !dbg !859
  %40 = zext i32 %39 to i64
  %41 = shl nuw nsw i64 %40, 2, !dbg !859
  %42 = add nuw nsw i64 %41, 4, !dbg !859
  %43 = add i32 %nseq, -1, !dbg !859
  br label %44, !dbg !859

; <label>:44                                      ; preds = %48, %.lr.ph51
  %indvars.iv104 = phi i64 [ 0, %.lr.ph51 ], [ %indvars.iv.next105, %48 ]
  %45 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([65 x i8]* @.str, i64 0, i64 0), i32 549, i64 %32) #7, !dbg !866
  %46 = getelementptr inbounds i32** %29, i64 %indvars.iv104, !dbg !867
  %47 = bitcast i32** %46 to i8**, !dbg !868
  store i8* %45, i8** %47, align 8, !dbg !868, !tbaa !332
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !255, metadata !300), !dbg !869
  br i1 %35, label %48, label %.lr.ph47, !dbg !870

.lr.ph47:                                         ; preds = %44
  call void @llvm.memset.p0i8.i64(i8* %45, i8 0, i64 %42, i32 4, i1 false), !dbg !871
  br label %48, !dbg !870

; <label>:48                                      ; preds = %.lr.ph47, %44
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1, !dbg !859
  %lftr.wideiv106 = trunc i64 %indvars.iv104 to i32, !dbg !859
  %exitcond107 = icmp eq i32 %lftr.wideiv106, %43, !dbg !859
  br i1 %exitcond107, label %._crit_edge52, label %44, !dbg !859

._crit_edge52:                                    ; preds = %48
  %49 = fadd float %pop, %pex, !dbg !872
  %50 = fdiv float %pop, %49, !dbg !873
  tail call void @llvm.dbg.value(metadata float %50, i64 0, metadata !244, metadata !300), !dbg !818
  %51 = fpext float %50 to double, !dbg !874
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !256, metadata !300), !dbg !827
  br i1 %5, label %.preheader6.lr.ph, label %.preheader5, !dbg !875

.preheader6.lr.ph:                                ; preds = %._crit_edge52
  %52 = sitofp i32 %30 to double, !dbg !877
  %53 = add i32 %nseq, -1, !dbg !875
  br label %.preheader6, !dbg !875

.preheader6:                                      ; preds = %._crit_edge43, %.preheader6.lr.ph
  %indvars.iv94 = phi i64 [ 0, %.preheader6.lr.ph ], [ %indvars.iv.next95, %._crit_edge43 ]
  %54 = getelementptr inbounds i32* %4, i64 %indvars.iv94, !dbg !884
  %55 = load i32* %54, align 4, !dbg !884, !tbaa !459
  %56 = icmp sgt i32 %55, %minlen.0., !dbg !885
  br i1 %56, label %.lr.ph42, label %._crit_edge43, !dbg !886

.lr.ph42:                                         ; preds = %.preheader6
  %57 = getelementptr inbounds i32** %29, i64 %indvars.iv94, !dbg !887
  br label %64, !dbg !886

.preheader5:                                      ; preds = %._crit_edge43, %15, %._crit_edge52
  %58 = icmp slt i32 %minlen.0., 0, !dbg !888
  br i1 %58, label %._crit_edge38, label %.lr.ph37, !dbg !891

.lr.ph37:                                         ; preds = %.preheader5
  %59 = add i32 %nseq, -1, !dbg !891
  %60 = xor i32 %minlen.0.lcssa, -1, !dbg !891
  %61 = xor i32 %25, -1, !dbg !891
  %62 = icmp sgt i32 %60, %61
  %smax91 = select i1 %62, i32 %60, i32 %61
  %63 = xor i32 %smax91, -1, !dbg !891
  br label %82, !dbg !891

; <label>:64                                      ; preds = %.lr.ph42, %72
  %rpos.141 = phi i32 [ 0, %.lr.ph42 ], [ %78, %72 ]
  %apos.040 = phi i32 [ -1, %.lr.ph42 ], [ %apos.1, %72 ]
  %65 = tail call double @sre_random() #7, !dbg !892
  %66 = fcmp olt double %65, %51, !dbg !893
  %67 = icmp eq i32 %apos.040, -1, !dbg !894
  %or.cond = or i1 %67, %66, !dbg !895
  br i1 %or.cond, label %68, label %72, !dbg !895

; <label>:68                                      ; preds = %64
  %69 = tail call double @sre_random() #7, !dbg !877
  %70 = fmul double %52, %69, !dbg !877
  %71 = fptosi double %70 to i32, !dbg !877
  tail call void @llvm.dbg.value(metadata i32 %71, i64 0, metadata !254, metadata !300), !dbg !896
  br label %72, !dbg !897

; <label>:72                                      ; preds = %64, %68
  %apos.1 = phi i32 [ %71, %68 ], [ %apos.040, %64 ]
  %73 = sext i32 %apos.1 to i64, !dbg !887
  %74 = load i32** %57, align 8, !dbg !887, !tbaa !332
  %75 = getelementptr inbounds i32* %74, i64 %73, !dbg !887
  %76 = load i32* %75, align 4, !dbg !898, !tbaa !459
  %77 = add nsw i32 %76, 1, !dbg !898
  store i32 %77, i32* %75, align 4, !dbg !898, !tbaa !459
  %78 = add nuw nsw i32 %rpos.141, 1, !dbg !899
  tail call void @llvm.dbg.value(metadata i32 %78, i64 0, metadata !255, metadata !300), !dbg !869
  %79 = load i32* %54, align 4, !dbg !884, !tbaa !459
  %80 = sub nsw i32 %79, %minlen.0., !dbg !900
  %81 = icmp slt i32 %78, %80, !dbg !885
  br i1 %81, label %64, label %._crit_edge43, !dbg !886

._crit_edge43:                                    ; preds = %72, %.preheader6
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1, !dbg !875
  %lftr.wideiv96 = trunc i64 %indvars.iv94 to i32, !dbg !875
  %exitcond97 = icmp eq i32 %lftr.wideiv96, %53, !dbg !875
  br i1 %exitcond97, label %.preheader5, label %.preheader6, !dbg !875

; <label>:82                                      ; preds = %._crit_edge34, %.lr.ph37
  %indvars.iv89 = phi i64 [ %indvars.iv.next90, %._crit_edge34 ], [ 0, %.lr.ph37 ]
  %alen.035 = phi i32 [ %94, %._crit_edge34 ], [ %minlen.0., %.lr.ph37 ]
  %83 = getelementptr inbounds i32* %34, i64 %indvars.iv89, !dbg !901
  store i32 0, i32* %83, align 4, !dbg !903, !tbaa !459
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !256, metadata !300), !dbg !827
  br i1 %5, label %.lr.ph33, label %._crit_edge34, !dbg !904

.lr.ph33:                                         ; preds = %82, %91
  %84 = phi i32 [ %92, %91 ], [ 0, %82 ], !dbg !906
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %91 ], [ 0, %82 ]
  %85 = getelementptr inbounds i32** %29, i64 %indvars.iv85, !dbg !906
  %86 = load i32** %85, align 8, !dbg !906, !tbaa !332
  %87 = getelementptr inbounds i32* %86, i64 %indvars.iv89, !dbg !906
  %88 = load i32* %87, align 4, !dbg !906, !tbaa !459
  %89 = icmp sgt i32 %88, %84, !dbg !909
  br i1 %89, label %90, label %91, !dbg !910

; <label>:90                                      ; preds = %.lr.ph33
  store i32 %88, i32* %83, align 4, !dbg !911, !tbaa !459
  br label %91, !dbg !912

; <label>:91                                      ; preds = %.lr.ph33, %90
  %92 = phi i32 [ %84, %.lr.ph33 ], [ %88, %90 ]
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1, !dbg !904
  %lftr.wideiv87 = trunc i64 %indvars.iv85 to i32, !dbg !904
  %exitcond88 = icmp eq i32 %lftr.wideiv87, %59, !dbg !904
  br i1 %exitcond88, label %._crit_edge34, label %.lr.ph33, !dbg !904

._crit_edge34:                                    ; preds = %91, %82
  %93 = phi i32 [ 0, %82 ], [ %92, %91 ]
  %94 = add nsw i32 %93, %alen.035, !dbg !913
  tail call void @llvm.dbg.value(metadata i32 %94, i64 0, metadata !249, metadata !300), !dbg !914
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1, !dbg !891
  %lftr.wideiv92 = trunc i64 %indvars.iv89 to i32, !dbg !891
  %exitcond93 = icmp eq i32 %lftr.wideiv92, %63, !dbg !891
  br i1 %exitcond93, label %._crit_edge38, label %82, !dbg !891

._crit_edge38:                                    ; preds = %._crit_edge34, %.preheader5
  %alen.0.lcssa = phi i32 [ %minlen.0., %.preheader5 ], [ %94, %._crit_edge34 ]
  %95 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([65 x i8]* @.str, i64 0, i64 0), i32 581, i64 %27) #7, !dbg !915
  %96 = bitcast i8* %95 to i8**, !dbg !916
  tail call void @llvm.dbg.value(metadata i8** %96, i64 0, metadata !248, metadata !300), !dbg !917
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !256, metadata !300), !dbg !827
  br i1 %5, label %.lr.ph30, label %._crit_edge27, !dbg !918

.lr.ph30:                                         ; preds = %._crit_edge38
  %97 = add nsw i32 %alen.0.lcssa, 1, !dbg !920
  %98 = sext i32 %97 to i64, !dbg !920
  %99 = add i32 %nseq, -1, !dbg !918
  br label %106, !dbg !918

.preheader4:                                      ; preds = %106
  br i1 %5, label %.preheader3.lr.ph, label %._crit_edge27, !dbg !922

.preheader3.lr.ph:                                ; preds = %.preheader4
  %100 = sext i32 %alen.0.lcssa to i64, !dbg !924
  %101 = xor i32 %minlen.0.lcssa, -1, !dbg !922
  %102 = xor i32 %25, -1, !dbg !922
  %103 = icmp sgt i32 %101, %102
  %smax = select i1 %103, i32 %101, i32 %102
  %104 = xor i32 %smax, -1, !dbg !922
  %105 = add i32 %nseq, -1, !dbg !922
  br label %.preheader3, !dbg !922

; <label>:106                                     ; preds = %106, %.lr.ph30
  %indvars.iv81 = phi i64 [ 0, %.lr.ph30 ], [ %indvars.iv.next82, %106 ]
  %107 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([65 x i8]* @.str, i64 0, i64 0), i32 583, i64 %98) #7, !dbg !920
  %108 = getelementptr inbounds i8** %96, i64 %indvars.iv81, !dbg !927
  store i8* %107, i8** %108, align 8, !dbg !928, !tbaa !332
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1, !dbg !918
  %lftr.wideiv83 = trunc i64 %indvars.iv81 to i32, !dbg !918
  %exitcond84 = icmp eq i32 %lftr.wideiv83, %99, !dbg !918
  br i1 %exitcond84, label %.preheader4, label %106, !dbg !918

.preheader3:                                      ; preds = %._crit_edge25, %.preheader3.lr.ph
  %indvars.iv77 = phi i64 [ 0, %.preheader3.lr.ph ], [ %indvars.iv.next78, %._crit_edge25 ]
  br i1 %58, label %.preheader3._crit_edge, label %.preheader2.lr.ph, !dbg !929

.preheader3._crit_edge:                           ; preds = %.preheader3
  %.pre113 = getelementptr inbounds i8** %96, i64 %indvars.iv77, !dbg !924
  br label %._crit_edge25, !dbg !929

.preheader2.lr.ph:                                ; preds = %.preheader3
  %109 = getelementptr inbounds i32** %29, i64 %indvars.iv77, !dbg !931
  %110 = getelementptr inbounds i8** %rseqs, i64 %indvars.iv77, !dbg !936
  %111 = getelementptr inbounds i8** %96, i64 %indvars.iv77, !dbg !937
  br label %.preheader2, !dbg !929

.preheader2:                                      ; preds = %155, %.preheader2.lr.ph
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %155 ], [ 0, %.preheader2.lr.ph ]
  %rpos.223 = phi i32 [ %rpos.4, %155 ], [ 0, %.preheader2.lr.ph ]
  %apos.322 = phi i32 [ %apos.6, %155 ], [ 0, %.preheader2.lr.ph ]
  %112 = load i32** %109, align 8, !dbg !931, !tbaa !332
  %113 = getelementptr inbounds i32* %112, i64 %indvars.iv73, !dbg !931
  %114 = load i32* %113, align 4, !dbg !931, !tbaa !459
  %115 = icmp sgt i32 %114, 0, !dbg !938
  br i1 %115, label %.lr.ph12, label %.preheader, !dbg !939

.lr.ph12:                                         ; preds = %.preheader2
  %116 = sext i32 %rpos.223 to i64
  %117 = sext i32 %apos.322 to i64
  br label %124, !dbg !939

..preheader_crit_edge:                            ; preds = %124
  %118 = trunc i64 %indvars.iv.next70 to i32, !dbg !939
  %119 = trunc i64 %indvars.iv.next68 to i32, !dbg !939
  br label %.preheader, !dbg !939

.preheader:                                       ; preds = %..preheader_crit_edge, %.preheader2
  %count.0.lcssa = phi i32 [ %130, %..preheader_crit_edge ], [ 0, %.preheader2 ]
  %rpos.3.lcssa = phi i32 [ %119, %..preheader_crit_edge ], [ %rpos.223, %.preheader2 ]
  %apos.4.lcssa = phi i32 [ %118, %..preheader_crit_edge ], [ %apos.322, %.preheader2 ]
  %120 = getelementptr inbounds i32* %34, i64 %indvars.iv73, !dbg !940
  %121 = load i32* %120, align 4, !dbg !940, !tbaa !459
  %122 = icmp slt i32 %count.0.lcssa, %121, !dbg !943
  br i1 %122, label %.lr.ph19, label %142, !dbg !944

.lr.ph19:                                         ; preds = %.preheader
  %123 = sext i32 %apos.4.lcssa to i64
  br label %135, !dbg !944

; <label>:124                                     ; preds = %.lr.ph12, %124
  %indvars.iv69 = phi i64 [ %117, %.lr.ph12 ], [ %indvars.iv.next70, %124 ]
  %indvars.iv67 = phi i64 [ %116, %.lr.ph12 ], [ %indvars.iv.next68, %124 ]
  %count.011 = phi i32 [ 0, %.lr.ph12 ], [ %130, %124 ]
  %indvars.iv.next68 = add i64 %indvars.iv67, 1, !dbg !939
  %125 = load i8** %110, align 8, !dbg !936, !tbaa !332
  %126 = getelementptr inbounds i8* %125, i64 %indvars.iv67, !dbg !936
  %127 = load i8* %126, align 1, !dbg !936, !tbaa !450
  %indvars.iv.next70 = add i64 %indvars.iv69, 1, !dbg !939
  %128 = load i8** %111, align 8, !dbg !937, !tbaa !332
  %129 = getelementptr inbounds i8* %128, i64 %indvars.iv69, !dbg !937
  store i8 %127, i8* %129, align 1, !dbg !945, !tbaa !450
  %130 = add nuw nsw i32 %count.011, 1, !dbg !946
  tail call void @llvm.dbg.value(metadata i32 %130, i64 0, metadata !258, metadata !300), !dbg !947
  %131 = load i32** %109, align 8, !dbg !931, !tbaa !332
  %132 = getelementptr inbounds i32* %131, i64 %indvars.iv73, !dbg !931
  %133 = load i32* %132, align 4, !dbg !931, !tbaa !459
  %134 = icmp slt i32 %130, %133, !dbg !938
  br i1 %134, label %124, label %..preheader_crit_edge, !dbg !939

; <label>:135                                     ; preds = %.lr.ph19, %135
  %indvars.iv71 = phi i64 [ %123, %.lr.ph19 ], [ %indvars.iv.next72, %135 ]
  %count.118 = phi i32 [ %count.0.lcssa, %.lr.ph19 ], [ %138, %135 ]
  %indvars.iv.next72 = add i64 %indvars.iv71, 1, !dbg !944
  %136 = load i8** %111, align 8, !dbg !948, !tbaa !332
  %137 = getelementptr inbounds i8* %136, i64 %indvars.iv71, !dbg !948
  store i8 32, i8* %137, align 1, !dbg !949, !tbaa !450
  %138 = add nsw i32 %count.118, 1, !dbg !950
  tail call void @llvm.dbg.value(metadata i32 %138, i64 0, metadata !258, metadata !300), !dbg !947
  %139 = load i32* %120, align 4, !dbg !940, !tbaa !459
  %140 = icmp slt i32 %138, %139, !dbg !943
  br i1 %140, label %135, label %._crit_edge20, !dbg !944

._crit_edge20:                                    ; preds = %135
  %141 = trunc i64 %indvars.iv.next72 to i32, !dbg !944
  br label %142, !dbg !944

; <label>:142                                     ; preds = %._crit_edge20, %.preheader
  %apos.5.lcssa = phi i32 [ %141, %._crit_edge20 ], [ %apos.4.lcssa, %.preheader ]
  %143 = trunc i64 %indvars.iv73 to i32, !dbg !951
  %144 = icmp eq i32 %143, %minlen.0., !dbg !951
  br i1 %144, label %155, label %145, !dbg !953

; <label>:145                                     ; preds = %142
  %146 = add nsw i32 %rpos.3.lcssa, 1, !dbg !954
  tail call void @llvm.dbg.value(metadata i32 %146, i64 0, metadata !255, metadata !300), !dbg !869
  %147 = sext i32 %rpos.3.lcssa to i64, !dbg !955
  %148 = load i8** %110, align 8, !dbg !955, !tbaa !332
  %149 = getelementptr inbounds i8* %148, i64 %147, !dbg !955
  %150 = load i8* %149, align 1, !dbg !955, !tbaa !450
  %151 = add nsw i32 %apos.5.lcssa, 1, !dbg !956
  tail call void @llvm.dbg.value(metadata i32 %151, i64 0, metadata !254, metadata !300), !dbg !896
  %152 = sext i32 %apos.5.lcssa to i64, !dbg !957
  %153 = load i8** %111, align 8, !dbg !957, !tbaa !332
  %154 = getelementptr inbounds i8* %153, i64 %152, !dbg !957
  store i8 %150, i8* %154, align 1, !dbg !958, !tbaa !450
  br label %155, !dbg !957

; <label>:155                                     ; preds = %142, %145
  %apos.6 = phi i32 [ %151, %145 ], [ %apos.5.lcssa, %142 ]
  %rpos.4 = phi i32 [ %146, %145 ], [ %rpos.3.lcssa, %142 ]
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1, !dbg !929
  %exitcond76 = icmp eq i32 %143, %104, !dbg !929
  br i1 %exitcond76, label %._crit_edge25, label %.preheader2, !dbg !929

._crit_edge25:                                    ; preds = %155, %.preheader3._crit_edge
  %.pre-phi = phi i8** [ %.pre113, %.preheader3._crit_edge ], [ %111, %155 ], !dbg !924
  %156 = load i8** %.pre-phi, align 8, !dbg !924, !tbaa !332
  %157 = getelementptr inbounds i8* %156, i64 %100, !dbg !924
  store i8 0, i8* %157, align 1, !dbg !959, !tbaa !450
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1, !dbg !922
  %lftr.wideiv79 = trunc i64 %indvars.iv77 to i32, !dbg !922
  %exitcond80 = icmp eq i32 %lftr.wideiv79, %105, !dbg !922
  br i1 %exitcond80, label %._crit_edge27, label %.preheader3, !dbg !922

._crit_edge27:                                    ; preds = %._crit_edge25, %._crit_edge38, %.preheader4
  %158 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 0, !dbg !960
  store i32 0, i32* %158, align 4, !dbg !961, !tbaa !311
  %159 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 1, !dbg !962
  store i32 %alen.0.lcssa, i32* %159, align 4, !dbg !963, !tbaa !335
  %160 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 2, !dbg !964
  store i32 %nseq, i32* %160, align 4, !dbg !965, !tbaa !338
  %161 = mul nsw i64 %1, 360, !dbg !966
  %162 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([65 x i8]* @.str, i64 0, i64 0), i32 603, i64 %161) #7, !dbg !966
  %163 = getelementptr inbounds %struct.aliinfo_s* %ainfo, i64 0, i32 6, !dbg !967
  %164 = bitcast %struct.seqinfo_s** %163 to i8**, !dbg !968
  store i8* %162, i8** %164, align 8, !dbg !968, !tbaa !348
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !256, metadata !300), !dbg !827
  br i1 %5, label %.lr.ph, label %._crit_edge, !dbg !969

.lr.ph:                                           ; preds = %._crit_edge27
  %165 = bitcast i8* %162 to %struct.seqinfo_s*
  %166 = add i32 %nseq, -1, !dbg !969
  tail call void @SeqinfoCopy(%struct.seqinfo_s* %165, %struct.seqinfo_s* %sqinfo) #7, !dbg !971
  %exitcond117 = icmp eq i32 %166, 0, !dbg !969
  br i1 %exitcond117, label %._crit_edge, label %._crit_edge112, !dbg !969

._crit_edge112:                                   ; preds = %.lr.ph, %._crit_edge112
  %indvars.iv118 = phi i64 [ %indvars.iv.next, %._crit_edge112 ], [ 0, %.lr.ph ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv118, 1, !dbg !969
  %.pre = load %struct.seqinfo_s** %163, align 8, !dbg !973, !tbaa !348
  %167 = getelementptr inbounds %struct.seqinfo_s* %.pre, i64 %indvars.iv.next, !dbg !974
  %168 = getelementptr inbounds %struct.seqinfo_s* %sqinfo, i64 %indvars.iv.next, !dbg !975
  tail call void @SeqinfoCopy(%struct.seqinfo_s* %167, %struct.seqinfo_s* %168) #7, !dbg !971
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !969
  %exitcond = icmp eq i32 %lftr.wideiv, %166, !dbg !969
  br i1 %exitcond, label %._crit_edge, label %._crit_edge112, !dbg !969

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge112, %._crit_edge27
  tail call void @free(i8* %3) #8, !dbg !976
  tail call void @free(i8* %33) #8, !dbg !977
  %169 = bitcast i8* %28 to i8**, !dbg !978
  tail call void @Free2DArray(i8** %169, i32 %nseq) #7, !dbg !979
  %170 = bitcast i8*** %ret_aseqs to i8**, !dbg !980
  store i8* %95, i8** %170, align 8, !dbg !980, !tbaa !332
  ret i32 1, !dbg !981
}

; Function Attrs: optsize
declare double @sre_random() #2

; Function Attrs: optsize
declare void @SeqinfoCopy(%struct.seqinfo_s*, %struct.seqinfo_s*) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @AlignmentHomogenousGapsym(i8** nocapture readonly %aseq, i32 %nseq, i32 %alen, i8 signext %gapsym) #0 {
  tail call void @llvm.dbg.value(metadata i8** %aseq, i64 0, metadata !264, metadata !300), !dbg !982
  tail call void @llvm.dbg.value(metadata i32 %nseq, i64 0, metadata !265, metadata !300), !dbg !983
  tail call void @llvm.dbg.value(metadata i32 %alen, i64 0, metadata !266, metadata !300), !dbg !984
  tail call void @llvm.dbg.value(metadata i8 %gapsym, i64 0, metadata !267, metadata !300), !dbg !985
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !268, metadata !300), !dbg !986
  %1 = icmp sgt i32 %nseq, 0, !dbg !987
  br i1 %1, label %.preheader.lr.ph, label %._crit_edge3, !dbg !990

.preheader.lr.ph:                                 ; preds = %0
  %2 = icmp sgt i32 %alen, 0, !dbg !991
  %3 = add i32 %alen, -1, !dbg !990
  %4 = add i32 %nseq, -1, !dbg !990
  br label %.preheader, !dbg !990

.preheader:                                       ; preds = %._crit_edge, %.preheader.lr.ph
  %indvars.iv4 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next5, %._crit_edge ]
  br i1 %2, label %.lr.ph, label %._crit_edge, !dbg !994

.lr.ph:                                           ; preds = %.preheader
  %5 = getelementptr inbounds i8** %aseq, i64 %indvars.iv4, !dbg !995
  br label %6, !dbg !994

; <label>:6                                       ; preds = %11, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %11 ]
  %7 = load i8** %5, align 8, !dbg !995, !tbaa !332
  %8 = getelementptr inbounds i8* %7, i64 %indvars.iv, !dbg !995
  %9 = load i8* %8, align 1, !dbg !995, !tbaa !450
  switch i8 %9, label %11 [
    i8 32, label %10
    i8 46, label %10
    i8 95, label %10
    i8 45, label %10
    i8 126, label %10
  ], !dbg !995

; <label>:10                                      ; preds = %6, %6, %6, %6, %6
  store i8 %gapsym, i8* %8, align 1, !dbg !997, !tbaa !450
  br label %11, !dbg !998

; <label>:11                                      ; preds = %6, %10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !994
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !994
  %exitcond = icmp eq i32 %lftr.wideiv, %3, !dbg !994
  br i1 %exitcond, label %._crit_edge, label %6, !dbg !994

._crit_edge:                                      ; preds = %11, %.preheader
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1, !dbg !990
  %lftr.wideiv6 = trunc i64 %indvars.iv4 to i32, !dbg !990
  %exitcond7 = icmp eq i32 %lftr.wideiv6, %4, !dbg !990
  br i1 %exitcond7, label %._crit_edge3, label %.preheader, !dbg !990

._crit_edge3:                                     ; preds = %._crit_edge, %0
  ret void, !dbg !999
}

; Function Attrs: optsize
declare i32 @__maskrune(i32, i64) #2

; Function Attrs: optsize
declare i32 @__tolower(i32) #2

; Function Attrs: optsize
declare i32 @__toupper(i32) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8* nocapture readonly, i64) #6

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct.__sFILE* nocapture) #6

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!296, !297, !298}
!llvm.ident = !{!299}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !37, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/alignio.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5, !7, !9, !33, !34, !15, !8, !6, !35, !36}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64, align: 64)
!6 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "SQINFO", file: !11, line: 98, baseType: !12)
!11 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/squid.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "seqinfo_s", file: !11, line: 84, size: 2880, align: 64, elements: !13)
!13 = !{!14, !16, !20, !21, !22, !26, !27, !28, !29, !30, !31, !32}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !12, file: !11, line: 85, baseType: !15, size: 32, align: 32)
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !12, file: !11, line: 86, baseType: !17, size: 512, align: 8, offset: 32)
!17 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 512, align: 8, elements: !18)
!18 = !{!19}
!19 = !DISubrange(count: 64)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !12, file: !11, line: 87, baseType: !17, size: 512, align: 8, offset: 544)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "acc", scope: !12, file: !11, line: 88, baseType: !17, size: 512, align: 8, offset: 1056)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !12, file: !11, line: 89, baseType: !23, size: 1024, align: 8, offset: 1568)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1024, align: 8, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 128)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !12, file: !11, line: 90, baseType: !15, size: 32, align: 32, offset: 2592)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !12, file: !11, line: 91, baseType: !15, size: 32, align: 32, offset: 2624)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !12, file: !11, line: 92, baseType: !15, size: 32, align: 32, offset: 2656)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "olen", scope: !12, file: !11, line: 93, baseType: !15, size: 32, align: 32, offset: 2688)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !12, file: !11, line: 94, baseType: !15, size: 32, align: 32, offset: 2720)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !12, file: !11, line: 95, baseType: !5, size: 64, align: 64, offset: 2752)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !12, file: !11, line: 96, baseType: !5, size: 64, align: 64, offset: 2816)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!37 = !{!38, !72, !77, !84, !97, !108, !119, !128, !134, !228, !237, !260, !270, !276, !284, !287, !290, !293}
!38 = !DISubprogram(name: "AllocAlignment", scope: !1, file: !1, line: 43, type: !39, isLocal: false, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i32, i8***, %struct.aliinfo_s*)* @AllocAlignment, variables: !65)
!39 = !DISubroutineType(types: !40)
!40 = !{null, !15, !15, !41, !42}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "AINFO", file: !44, line: 83, baseType: !45)
!44 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/msa.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!45 = !DICompositeType(tag: DW_TAG_structure_type, name: "aliinfo_s", file: !44, line: 65, size: 832, align: 64, elements: !46)
!46 = !{!47, !48, !49, !50, !51, !52, !53, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !45, file: !44, line: 66, baseType: !15, size: 32, align: 32)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "alen", scope: !45, file: !44, line: 67, baseType: !15, size: 32, align: 32, offset: 32)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "nseq", scope: !45, file: !44, line: 68, baseType: !15, size: 32, align: 32, offset: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "wgt", scope: !45, file: !44, line: 69, baseType: !7, size: 64, align: 64, offset: 128)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !45, file: !44, line: 70, baseType: !5, size: 64, align: 64, offset: 192)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "rf", scope: !45, file: !44, line: 71, baseType: !5, size: 64, align: 64, offset: 256)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "sqinfo", scope: !45, file: !44, line: 72, baseType: !54, size: 64, align: 64, offset: 320)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !45, file: !44, line: 75, baseType: !5, size: 64, align: 64, offset: 384)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !45, file: !44, line: 76, baseType: !5, size: 64, align: 64, offset: 448)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "acc", scope: !45, file: !44, line: 77, baseType: !5, size: 64, align: 64, offset: 512)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "au", scope: !45, file: !44, line: 78, baseType: !5, size: 64, align: 64, offset: 576)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "tc1", scope: !45, file: !44, line: 79, baseType: !8, size: 32, align: 32, offset: 640)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "tc2", scope: !45, file: !44, line: 79, baseType: !8, size: 32, align: 32, offset: 672)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "nc1", scope: !45, file: !44, line: 80, baseType: !8, size: 32, align: 32, offset: 704)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "nc2", scope: !45, file: !44, line: 80, baseType: !8, size: 32, align: 32, offset: 736)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "ga1", scope: !45, file: !44, line: 81, baseType: !8, size: 32, align: 32, offset: 768)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "ga2", scope: !45, file: !44, line: 81, baseType: !8, size: 32, align: 32, offset: 800)
!65 = !{!66, !67, !68, !69, !70, !71}
!66 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nseq", arg: 1, scope: !38, file: !1, line: 43, type: !15)
!67 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "alen", arg: 2, scope: !38, file: !1, line: 43, type: !15)
!68 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ret_aseq", arg: 3, scope: !38, file: !1, line: 43, type: !41)
!69 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ainfo", arg: 4, scope: !38, file: !1, line: 43, type: !42)
!70 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "aseq", scope: !38, file: !1, line: 45, type: !4)
!71 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "idx", scope: !38, file: !1, line: 46, type: !15)
!72 = !DISubprogram(name: "InitAinfo", scope: !1, file: !1, line: 80, type: !73, isLocal: false, isDefinition: true, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.aliinfo_s*)* @InitAinfo, variables: !75)
!73 = !DISubroutineType(types: !74)
!74 = !{null, !42}
!75 = !{!76}
!76 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ainfo", arg: 1, scope: !72, file: !1, line: 80, type: !42)
!77 = !DISubprogram(name: "FreeAlignment", scope: !1, file: !1, line: 105, type: !78, isLocal: false, isDefinition: true, scopeLine: 106, flags: DIFlagPrototyped, isOptimized: true, function: void (i8**, %struct.aliinfo_s*)* @FreeAlignment, variables: !80)
!78 = !DISubroutineType(types: !79)
!79 = !{null, !4, !42}
!80 = !{!81, !82, !83}
!81 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "aseqs", arg: 1, scope: !77, file: !1, line: 105, type: !4)
!82 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ainfo", arg: 2, scope: !77, file: !1, line: 105, type: !42)
!83 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !77, file: !1, line: 107, type: !15)
!84 = !DISubprogram(name: "SAMizeAlignment", scope: !1, file: !1, line: 144, type: !85, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, function: void (i8**, i32, i32)* @SAMizeAlignment, variables: !87)
!85 = !DISubroutineType(types: !86)
!86 = !{null, !4, !15, !15}
!87 = !{!88, !89, !90, !91, !92, !93, !94, !95, !96}
!88 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "aseq", arg: 1, scope: !84, file: !1, line: 144, type: !4)
!89 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nseq", arg: 2, scope: !84, file: !1, line: 144, type: !15)
!90 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "alen", arg: 3, scope: !84, file: !1, line: 144, type: !15)
!91 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "col", scope: !84, file: !1, line: 146, type: !15)
!92 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !84, file: !1, line: 147, type: !15)
!93 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sawlower", scope: !84, file: !1, line: 148, type: !15)
!94 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sawupper", scope: !84, file: !1, line: 148, type: !15)
!95 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sawgap", scope: !84, file: !1, line: 148, type: !15)
!96 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gapchar", scope: !84, file: !1, line: 149, type: !6)
!97 = !DISubprogram(name: "SAMizeAlignmentByGapFrac", scope: !1, file: !1, line: 190, type: !98, isLocal: false, isDefinition: true, scopeLine: 191, flags: DIFlagPrototyped, isOptimized: true, function: void (i8**, i32, i32, float)* @SAMizeAlignmentByGapFrac, variables: !100)
!98 = !DISubroutineType(types: !99)
!99 = !{null, !4, !15, !15, !8}
!100 = !{!101, !102, !103, !104, !105, !106, !107}
!101 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "aseq", arg: 1, scope: !97, file: !1, line: 190, type: !4)
!102 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nseq", arg: 2, scope: !97, file: !1, line: 190, type: !15)
!103 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "alen", arg: 3, scope: !97, file: !1, line: 190, type: !15)
!104 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "maxgap", arg: 4, scope: !97, file: !1, line: 190, type: !8)
!105 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "apos", scope: !97, file: !1, line: 192, type: !15)
!106 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "idx", scope: !97, file: !1, line: 193, type: !15)
!107 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ngap", scope: !97, file: !1, line: 194, type: !15)
!108 = !DISubprogram(name: "MakeAlignedString", scope: !1, file: !1, line: 237, type: !109, isLocal: false, isDefinition: true, scopeLine: 238, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i32, i8*, i8**)* @MakeAlignedString, variables: !111)
!109 = !DISubroutineType(types: !110)
!110 = !{!15, !5, !15, !5, !4}
!111 = !{!112, !113, !114, !115, !116, !117, !118}
!112 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "aseq", arg: 1, scope: !108, file: !1, line: 237, type: !5)
!113 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "alen", arg: 2, scope: !108, file: !1, line: 237, type: !15)
!114 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ss", arg: 3, scope: !108, file: !1, line: 237, type: !5)
!115 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ret_s", arg: 4, scope: !108, file: !1, line: 237, type: !4)
!116 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new", scope: !108, file: !1, line: 239, type: !5)
!117 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "apos", scope: !108, file: !1, line: 240, type: !15)
!118 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rpos", scope: !108, file: !1, line: 240, type: !15)
!119 = !DISubprogram(name: "MakeDealignedString", scope: !1, file: !1, line: 275, type: !109, isLocal: false, isDefinition: true, scopeLine: 276, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i32, i8*, i8**)* @MakeDealignedString, variables: !120)
!120 = !{!121, !122, !123, !124, !125, !126, !127}
!121 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "aseq", arg: 1, scope: !119, file: !1, line: 275, type: !5)
!122 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "alen", arg: 2, scope: !119, file: !1, line: 275, type: !15)
!123 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ss", arg: 3, scope: !119, file: !1, line: 275, type: !5)
!124 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ret_s", arg: 4, scope: !119, file: !1, line: 275, type: !4)
!125 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new", scope: !119, file: !1, line: 277, type: !5)
!126 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "apos", scope: !119, file: !1, line: 278, type: !15)
!127 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rpos", scope: !119, file: !1, line: 278, type: !15)
!128 = !DISubprogram(name: "DealignedLength", scope: !1, file: !1, line: 305, type: !129, isLocal: false, isDefinition: true, scopeLine: 306, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*)* @DealignedLength, variables: !131)
!129 = !DISubroutineType(types: !130)
!130 = !{!15, !5}
!131 = !{!132, !133}
!132 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "aseq", arg: 1, scope: !128, file: !1, line: 305, type: !5)
!133 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rlen", scope: !128, file: !1, line: 307, type: !15)
!134 = !DISubprogram(name: "WritePairwiseAlignment", scope: !1, file: !1, line: 333, type: !135, isLocal: false, isDefinition: true, scopeLine: 337, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.__sFILE*, i8*, i8*, i32, i8*, i8*, i32, i32**, i32)* @WritePairwiseAlignment, variables: !197)
!135 = !DISubroutineType(types: !136)
!136 = !{!15, !137, !5, !5, !15, !5, !5, !15, !36, !15}
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64, align: 64)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !139, line: 153, baseType: !140)
!139 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!140 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !139, line: 122, size: 1216, align: 64, elements: !141)
!141 = !{!142, !145, !146, !147, !149, !150, !155, !156, !157, !161, !165, !175, !181, !182, !185, !186, !190, !194, !195, !196}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !140, file: !139, line: 123, baseType: !143, size: 64, align: 64)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!144 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !140, file: !139, line: 124, baseType: !15, size: 32, align: 32, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !140, file: !139, line: 125, baseType: !15, size: 32, align: 32, offset: 96)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !140, file: !139, line: 126, baseType: !148, size: 16, align: 16, offset: 128)
!148 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !140, file: !139, line: 127, baseType: !148, size: 16, align: 16, offset: 144)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !140, file: !139, line: 128, baseType: !151, size: 128, align: 64, offset: 192)
!151 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !139, line: 88, size: 128, align: 64, elements: !152)
!152 = !{!153, !154}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !151, file: !139, line: 89, baseType: !143, size: 64, align: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !151, file: !139, line: 90, baseType: !15, size: 32, align: 32, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !140, file: !139, line: 129, baseType: !15, size: 32, align: 32, offset: 320)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !140, file: !139, line: 132, baseType: !33, size: 64, align: 64, offset: 384)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !140, file: !139, line: 133, baseType: !158, size: 64, align: 64, offset: 448)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64, align: 64)
!159 = !DISubroutineType(types: !160)
!160 = !{!15, !33}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !140, file: !139, line: 134, baseType: !162, size: 64, align: 64, offset: 512)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64, align: 64)
!163 = !DISubroutineType(types: !164)
!164 = !{!15, !33, !5, !15}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !140, file: !139, line: 135, baseType: !166, size: 64, align: 64, offset: 576)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64, align: 64)
!167 = !DISubroutineType(types: !168)
!168 = !{!169, !33, !169, !15}
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !139, line: 77, baseType: !170)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !171, line: 71, baseType: !172)
!171 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !173, line: 46, baseType: !174)
!173 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!174 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !140, file: !139, line: 136, baseType: !176, size: 64, align: 64, offset: 640)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64, align: 64)
!177 = !DISubroutineType(types: !178)
!178 = !{!15, !33, !179, !15}
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64, align: 64)
!180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !140, file: !139, line: 139, baseType: !151, size: 128, align: 64, offset: 704)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !140, file: !139, line: 140, baseType: !183, size: 64, align: 64, offset: 832)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64, align: 64)
!184 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !139, line: 94, flags: DIFlagFwdDecl)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !140, file: !139, line: 141, baseType: !15, size: 32, align: 32, offset: 896)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !140, file: !139, line: 144, baseType: !187, size: 24, align: 8, offset: 928)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 24, align: 8, elements: !188)
!188 = !{!189}
!189 = !DISubrange(count: 3)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !140, file: !139, line: 145, baseType: !191, size: 8, align: 8, offset: 952)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 8, align: 8, elements: !192)
!192 = !{!193}
!193 = !DISubrange(count: 1)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !140, file: !139, line: 148, baseType: !151, size: 128, align: 64, offset: 960)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !140, file: !139, line: 151, baseType: !15, size: 32, align: 32, offset: 1088)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !140, file: !139, line: 152, baseType: !169, size: 64, align: 64, offset: 1152)
!197 = !{!198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !211, !212, !213, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227}
!198 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ofp", arg: 1, scope: !134, file: !1, line: 333, type: !137)
!199 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "aseq1", arg: 2, scope: !134, file: !1, line: 334, type: !5)
!200 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name1", arg: 3, scope: !134, file: !1, line: 334, type: !5)
!201 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "spos1", arg: 4, scope: !134, file: !1, line: 334, type: !15)
!202 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "aseq2", arg: 5, scope: !134, file: !1, line: 335, type: !5)
!203 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name2", arg: 6, scope: !134, file: !1, line: 335, type: !5)
!204 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "spos2", arg: 7, scope: !134, file: !1, line: 335, type: !15)
!205 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pam", arg: 8, scope: !134, file: !1, line: 336, type: !36)
!206 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "indent", arg: 9, scope: !134, file: !1, line: 336, type: !15)
!207 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sname1", scope: !134, file: !1, line: 338, type: !208)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 88, align: 8, elements: !209)
!209 = !{!210}
!210 = !DISubrange(count: 11)
!211 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sname2", scope: !134, file: !1, line: 339, type: !208)
!212 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "still_going", scope: !134, file: !1, line: 340, type: !15)
!213 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf1", scope: !134, file: !1, line: 341, type: !214)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 488, align: 8, elements: !215)
!215 = !{!216}
!216 = !DISubrange(count: 61)
!217 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bufmid", scope: !134, file: !1, line: 342, type: !214)
!218 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf2", scope: !134, file: !1, line: 343, type: !214)
!219 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s1", scope: !134, file: !1, line: 344, type: !5)
!220 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s2", scope: !134, file: !1, line: 344, type: !5)
!221 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "count1", scope: !134, file: !1, line: 345, type: !15)
!222 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "count2", scope: !134, file: !1, line: 345, type: !15)
!223 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rpos1", scope: !134, file: !1, line: 346, type: !15)
!224 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rpos2", scope: !134, file: !1, line: 346, type: !15)
!225 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rawcount1", scope: !134, file: !1, line: 347, type: !15)
!226 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rawcount2", scope: !134, file: !1, line: 347, type: !15)
!227 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "apos", scope: !134, file: !1, line: 348, type: !15)
!228 = !DISubprogram(name: "MingapAlignment", scope: !1, file: !1, line: 431, type: !229, isLocal: false, isDefinition: true, scopeLine: 432, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8**, %struct.aliinfo_s*)* @MingapAlignment, variables: !231)
!229 = !DISubroutineType(types: !230)
!230 = !{!15, !4, !42}
!231 = !{!232, !233, !234, !235, !236}
!232 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "aseqs", arg: 1, scope: !228, file: !1, line: 431, type: !4)
!233 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ainfo", arg: 2, scope: !228, file: !1, line: 431, type: !42)
!234 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "apos", scope: !228, file: !1, line: 433, type: !15)
!235 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mpos", scope: !228, file: !1, line: 434, type: !15)
!236 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "idx", scope: !228, file: !1, line: 435, type: !15)
!237 = !DISubprogram(name: "RandomAlignment", scope: !1, file: !1, line: 514, type: !238, isLocal: false, isDefinition: true, scopeLine: 516, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8**, %struct.seqinfo_s*, i32, float, float, i8***, %struct.aliinfo_s*)* @RandomAlignment, variables: !240)
!238 = !DISubroutineType(types: !239)
!239 = !{!15, !4, !9, !15, !8, !8, !41, !42}
!240 = !{!241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259}
!241 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "rseqs", arg: 1, scope: !237, file: !1, line: 514, type: !4)
!242 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sqinfo", arg: 2, scope: !237, file: !1, line: 514, type: !9)
!243 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nseq", arg: 3, scope: !237, file: !1, line: 514, type: !15)
!244 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pop", arg: 4, scope: !237, file: !1, line: 514, type: !8)
!245 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pex", arg: 5, scope: !237, file: !1, line: 514, type: !8)
!246 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ret_aseqs", arg: 6, scope: !237, file: !1, line: 515, type: !41)
!247 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ainfo", arg: 7, scope: !237, file: !1, line: 515, type: !42)
!248 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "aseqs", scope: !237, file: !1, line: 517, type: !4)
!249 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "alen", scope: !237, file: !1, line: 518, type: !15)
!250 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rlen", scope: !237, file: !1, line: 519, type: !35)
!251 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "M", scope: !237, file: !1, line: 520, type: !15)
!252 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ins", scope: !237, file: !1, line: 521, type: !36)
!253 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "master_ins", scope: !237, file: !1, line: 522, type: !35)
!254 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "apos", scope: !237, file: !1, line: 523, type: !15)
!255 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rpos", scope: !237, file: !1, line: 523, type: !15)
!256 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "idx", scope: !237, file: !1, line: 523, type: !15)
!257 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "statepos", scope: !237, file: !1, line: 524, type: !15)
!258 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "count", scope: !237, file: !1, line: 525, type: !15)
!259 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "minlen", scope: !237, file: !1, line: 526, type: !15)
!260 = !DISubprogram(name: "AlignmentHomogenousGapsym", scope: !1, file: !1, line: 635, type: !261, isLocal: false, isDefinition: true, scopeLine: 636, flags: DIFlagPrototyped, isOptimized: true, function: void (i8**, i32, i32, i8)* @AlignmentHomogenousGapsym, variables: !263)
!261 = !DISubroutineType(types: !262)
!262 = !{null, !4, !15, !15, !6}
!263 = !{!264, !265, !266, !267, !268, !269}
!264 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "aseq", arg: 1, scope: !260, file: !1, line: 635, type: !4)
!265 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nseq", arg: 2, scope: !260, file: !1, line: 635, type: !15)
!266 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "alen", arg: 3, scope: !260, file: !1, line: 635, type: !15)
!267 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gapsym", arg: 4, scope: !260, file: !1, line: 635, type: !6)
!268 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !260, file: !1, line: 637, type: !15)
!269 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "apos", scope: !260, file: !1, line: 637, type: !15)
!270 = !DISubprogram(name: "isupper", scope: !271, file: !271, line: 273, type: !272, isLocal: false, isDefinition: true, scopeLine: 274, flags: DIFlagPrototyped, isOptimized: true, variables: !274)
!271 = !DIFile(filename: "/usr/include/ctype.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!272 = !DISubroutineType(types: !273)
!273 = !{!15, !15}
!274 = !{!275}
!275 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !270, file: !271, line: 273, type: !15)
!276 = !DISubprogram(name: "__istype", scope: !271, file: !271, line: 153, type: !277, isLocal: false, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: true, variables: !281)
!277 = !DISubroutineType(types: !278)
!278 = !{!15, !279, !280}
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_ct_rune_t", file: !173, line: 70, baseType: !15)
!280 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!281 = !{!282, !283}
!282 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !276, file: !271, line: 153, type: !279)
!283 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_f", arg: 2, scope: !276, file: !271, line: 153, type: !280)
!284 = !DISubprogram(name: "isascii", scope: !271, file: !271, line: 135, type: !272, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, variables: !285)
!285 = !{!286}
!286 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !284, file: !271, line: 135, type: !15)
!287 = !DISubprogram(name: "islower", scope: !271, file: !271, line: 249, type: !272, isLocal: false, isDefinition: true, scopeLine: 250, flags: DIFlagPrototyped, isOptimized: true, variables: !288)
!288 = !{!289}
!289 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !287, file: !271, line: 249, type: !15)
!290 = !DISubprogram(name: "tolower", scope: !271, file: !271, line: 292, type: !272, isLocal: false, isDefinition: true, scopeLine: 293, flags: DIFlagPrototyped, isOptimized: true, variables: !291)
!291 = !{!292}
!292 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !290, file: !271, line: 292, type: !15)
!293 = !DISubprogram(name: "toupper", scope: !271, file: !271, line: 298, type: !272, isLocal: false, isDefinition: true, scopeLine: 299, flags: DIFlagPrototyped, isOptimized: true, variables: !294)
!294 = !{!295}
!295 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !293, file: !271, line: 298, type: !15)
!296 = !{i32 2, !"Dwarf Version", i32 2}
!297 = !{i32 2, !"Debug Info Version", i32 700000003}
!298 = !{i32 1, !"PIC Level", i32 2}
!299 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!300 = !DIExpression()
!301 = !DILocation(line: 43, column: 20, scope: !38)
!302 = !DILocation(line: 43, column: 30, scope: !38)
!303 = !DILocation(line: 43, column: 44, scope: !38)
!304 = !DILocation(line: 43, column: 61, scope: !38)
!305 = !DILocation(line: 80, column: 18, scope: !72, inlinedAt: !306)
!306 = distinct !DILocation(line: 48, column: 3, scope: !38)
!307 = !DILocation(line: 82, column: 10, scope: !72, inlinedAt: !306)
!308 = !DILocation(line: 84, column: 10, scope: !72, inlinedAt: !306)
!309 = !DILocation(line: 88, column: 10, scope: !72, inlinedAt: !306)
!310 = !DILocation(line: 88, column: 16, scope: !72, inlinedAt: !306)
!311 = !{!312, !313, i64 0}
!312 = !{!"aliinfo_s", !313, i64 0, !313, i64 4, !313, i64 8, !316, i64 16, !316, i64 24, !316, i64 32, !316, i64 40, !316, i64 48, !316, i64 56, !316, i64 64, !316, i64 72, !317, i64 80, !317, i64 84, !317, i64 88, !317, i64 92, !317, i64 96, !317, i64 100}
!313 = !{!"int", !314, i64 0}
!314 = !{!"omnipotent char", !315, i64 0}
!315 = !{!"Simple C/C++ TBAA"}
!316 = !{!"any pointer", !314, i64 0}
!317 = !{!"float", !314, i64 0}
!318 = !DILocation(line: 93, column: 1, scope: !72, inlinedAt: !306)
!319 = !DILocation(line: 84, column: 16, scope: !72, inlinedAt: !306)
!320 = !DILocation(line: 83, column: 16, scope: !72, inlinedAt: !306)
!321 = !DILocation(line: 50, column: 20, scope: !38)
!322 = !DILocation(line: 50, column: 10, scope: !38)
!323 = !DILocation(line: 45, column: 10, scope: !38)
!324 = !DILocation(line: 46, column: 7, scope: !38)
!325 = !DILocation(line: 51, column: 21, scope: !326)
!326 = distinct !DILexicalBlock(scope: !327, file: !1, line: 51, column: 3)
!327 = distinct !DILexicalBlock(scope: !38, file: !1, line: 51, column: 3)
!328 = !DILocation(line: 51, column: 3, scope: !327)
!329 = !DILocation(line: 52, column: 26, scope: !326)
!330 = !DILocation(line: 52, column: 5, scope: !326)
!331 = !DILocation(line: 52, column: 15, scope: !326)
!332 = !{!316, !316, i64 0}
!333 = !DILocation(line: 54, column: 10, scope: !38)
!334 = !DILocation(line: 54, column: 16, scope: !38)
!335 = !{!312, !313, i64 4}
!336 = !DILocation(line: 55, column: 10, scope: !38)
!337 = !DILocation(line: 55, column: 16, scope: !38)
!338 = !{!312, !313, i64 8}
!339 = !DILocation(line: 57, column: 28, scope: !38)
!340 = !DILocation(line: 57, column: 18, scope: !38)
!341 = !DILocation(line: 57, column: 10, scope: !38)
!342 = !DILocation(line: 57, column: 16, scope: !38)
!343 = !{!312, !316, i64 16}
!344 = !DILocation(line: 58, column: 3, scope: !38)
!345 = !DILocation(line: 60, column: 30, scope: !38)
!346 = !DILocation(line: 60, column: 10, scope: !38)
!347 = !DILocation(line: 60, column: 17, scope: !38)
!348 = !{!312, !316, i64 40}
!349 = !DILocation(line: 61, column: 3, scope: !350)
!350 = distinct !DILexicalBlock(scope: !38, file: !1, line: 61, column: 3)
!351 = !DILocation(line: 62, column: 24, scope: !352)
!352 = distinct !DILexicalBlock(scope: !350, file: !1, line: 61, column: 3)
!353 = !DILocation(line: 62, column: 30, scope: !352)
!354 = !{!355, !313, i64 0}
!355 = !{!"seqinfo_s", !313, i64 0, !314, i64 4, !314, i64 68, !314, i64 132, !314, i64 196, !313, i64 324, !313, i64 328, !313, i64 332, !313, i64 336, !313, i64 340, !316, i64 344, !316, i64 352}
!356 = !DILocation(line: 64, column: 13, scope: !38)
!357 = !DILocation(line: 65, column: 1, scope: !38)
!358 = !DILocation(line: 80, column: 18, scope: !72)
!359 = !DILocation(line: 82, column: 10, scope: !72)
!360 = !DILocation(line: 84, column: 10, scope: !72)
!361 = !DILocation(line: 88, column: 10, scope: !72)
!362 = !DILocation(line: 88, column: 16, scope: !72)
!363 = !DILocation(line: 93, column: 1, scope: !72)
!364 = !DILocation(line: 84, column: 16, scope: !72)
!365 = !DILocation(line: 83, column: 16, scope: !72)
!366 = !DILocation(line: 105, column: 22, scope: !77)
!367 = !DILocation(line: 105, column: 36, scope: !77)
!368 = !DILocation(line: 107, column: 7, scope: !77)
!369 = !DILocation(line: 109, column: 26, scope: !370)
!370 = distinct !DILexicalBlock(scope: !371, file: !1, line: 109, column: 3)
!371 = distinct !DILexicalBlock(scope: !77, file: !1, line: 109, column: 3)
!372 = !DILocation(line: 109, column: 17, scope: !370)
!373 = !DILocation(line: 109, column: 3, scope: !371)
!374 = !DILocation(line: 111, column: 18, scope: !375)
!375 = distinct !DILexicalBlock(scope: !376, file: !1, line: 111, column: 11)
!376 = distinct !DILexicalBlock(scope: !370, file: !1, line: 110, column: 5)
!377 = !DILocation(line: 111, column: 28, scope: !375)
!378 = !DILocation(line: 111, column: 34, scope: !375)
!379 = !DILocation(line: 111, column: 11, scope: !376)
!380 = !DILocation(line: 111, column: 69, scope: !375)
!381 = !{!355, !316, i64 344}
!382 = !DILocation(line: 111, column: 47, scope: !375)
!383 = !DILocation(line: 112, column: 18, scope: !384)
!384 = distinct !DILexicalBlock(scope: !376, file: !1, line: 112, column: 11)
!385 = !DILocation(line: 112, column: 28, scope: !384)
!386 = !DILocation(line: 112, column: 34, scope: !384)
!387 = !DILocation(line: 112, column: 11, scope: !376)
!388 = !DILocation(line: 112, column: 69, scope: !384)
!389 = !{!355, !316, i64 352}
!390 = !DILocation(line: 112, column: 47, scope: !384)
!391 = !DILocation(line: 114, column: 14, scope: !392)
!392 = distinct !DILexicalBlock(scope: !77, file: !1, line: 114, column: 7)
!393 = !{!312, !316, i64 24}
!394 = !DILocation(line: 114, column: 19, scope: !392)
!395 = !DILocation(line: 114, column: 7, scope: !77)
!396 = !DILocation(line: 114, column: 28, scope: !392)
!397 = !DILocation(line: 115, column: 14, scope: !398)
!398 = distinct !DILexicalBlock(scope: !77, file: !1, line: 115, column: 7)
!399 = !{!312, !316, i64 32}
!400 = !DILocation(line: 115, column: 19, scope: !398)
!401 = !DILocation(line: 115, column: 7, scope: !77)
!402 = !DILocation(line: 115, column: 28, scope: !398)
!403 = !DILocation(line: 116, column: 14, scope: !404)
!404 = distinct !DILexicalBlock(scope: !77, file: !1, line: 116, column: 7)
!405 = !{!312, !316, i64 48}
!406 = !DILocation(line: 116, column: 19, scope: !404)
!407 = !DILocation(line: 116, column: 7, scope: !77)
!408 = !DILocation(line: 116, column: 28, scope: !404)
!409 = !DILocation(line: 117, column: 14, scope: !410)
!410 = distinct !DILexicalBlock(scope: !77, file: !1, line: 117, column: 7)
!411 = !{!312, !316, i64 56}
!412 = !DILocation(line: 117, column: 19, scope: !410)
!413 = !DILocation(line: 117, column: 7, scope: !77)
!414 = !DILocation(line: 117, column: 28, scope: !410)
!415 = !DILocation(line: 118, column: 14, scope: !416)
!416 = distinct !DILexicalBlock(scope: !77, file: !1, line: 118, column: 7)
!417 = !{!312, !316, i64 64}
!418 = !DILocation(line: 118, column: 19, scope: !416)
!419 = !DILocation(line: 118, column: 7, scope: !77)
!420 = !DILocation(line: 118, column: 28, scope: !416)
!421 = !DILocation(line: 119, column: 14, scope: !422)
!422 = distinct !DILexicalBlock(scope: !77, file: !1, line: 119, column: 7)
!423 = !{!312, !316, i64 72}
!424 = !DILocation(line: 119, column: 19, scope: !422)
!425 = !DILocation(line: 119, column: 7, scope: !77)
!426 = !DILocation(line: 119, column: 28, scope: !422)
!427 = !DILocation(line: 121, column: 15, scope: !77)
!428 = !DILocation(line: 121, column: 3, scope: !77)
!429 = !DILocation(line: 122, column: 15, scope: !77)
!430 = !DILocation(line: 122, column: 3, scope: !77)
!431 = !DILocation(line: 123, column: 39, scope: !77)
!432 = !DILocation(line: 123, column: 3, scope: !77)
!433 = !DILocation(line: 124, column: 1, scope: !77)
!434 = !DILocation(line: 144, column: 24, scope: !84)
!435 = !DILocation(line: 144, column: 34, scope: !84)
!436 = !DILocation(line: 144, column: 44, scope: !84)
!437 = !DILocation(line: 146, column: 7, scope: !84)
!438 = !DILocation(line: 151, column: 21, scope: !439)
!439 = distinct !DILexicalBlock(scope: !440, file: !1, line: 151, column: 3)
!440 = distinct !DILexicalBlock(scope: !84, file: !1, line: 151, column: 3)
!441 = !DILocation(line: 151, column: 3, scope: !440)
!442 = !DILocation(line: 155, column: 21, scope: !443)
!443 = distinct !DILexicalBlock(scope: !444, file: !1, line: 155, column: 7)
!444 = distinct !DILexicalBlock(scope: !445, file: !1, line: 155, column: 7)
!445 = distinct !DILexicalBlock(scope: !439, file: !1, line: 152, column: 5)
!446 = !DILocation(line: 155, column: 7, scope: !444)
!447 = !DILocation(line: 157, column: 8, scope: !448)
!448 = distinct !DILexicalBlock(scope: !449, file: !1, line: 157, column: 8)
!449 = distinct !DILexicalBlock(scope: !443, file: !1, line: 156, column: 2)
!450 = !{!314, !314, i64 0}
!451 = !DILocation(line: 273, column: 13, scope: !270, inlinedAt: !452)
!452 = distinct !DILocation(line: 158, column: 8, scope: !453)
!453 = distinct !DILexicalBlock(scope: !449, file: !1, line: 158, column: 8)
!454 = !DILocation(line: 153, column: 29, scope: !276, inlinedAt: !455)
!455 = distinct !DILocation(line: 275, column: 10, scope: !270, inlinedAt: !452)
!456 = !DILocation(line: 153, column: 47, scope: !276, inlinedAt: !455)
!457 = !DILocation(line: 158, column: 10, scope: !276, inlinedAt: !455)
!458 = !DILocation(line: 158, column: 27, scope: !276, inlinedAt: !455)
!459 = !{!313, !313, i64 0}
!460 = !DILocation(line: 158, column: 25, scope: !276, inlinedAt: !455)
!461 = !DILocation(line: 159, column: 7, scope: !276, inlinedAt: !455)
!462 = !DILocation(line: 158, column: 8, scope: !453)
!463 = !DILocation(line: 275, column: 10, scope: !270, inlinedAt: !452)
!464 = !DILocation(line: 158, column: 8, scope: !449)
!465 = !DILocation(line: 159, column: 22, scope: !466)
!466 = distinct !DILexicalBlock(scope: !449, file: !1, line: 159, column: 8)
!467 = !DILocation(line: 249, column: 13, scope: !287, inlinedAt: !468)
!468 = distinct !DILocation(line: 159, column: 8, scope: !466)
!469 = !DILocation(line: 153, column: 29, scope: !276, inlinedAt: !470)
!470 = distinct !DILocation(line: 251, column: 10, scope: !287, inlinedAt: !468)
!471 = !DILocation(line: 153, column: 47, scope: !276, inlinedAt: !470)
!472 = !DILocation(line: 158, column: 10, scope: !276, inlinedAt: !470)
!473 = !DILocation(line: 158, column: 27, scope: !276, inlinedAt: !470)
!474 = !DILocation(line: 158, column: 25, scope: !276, inlinedAt: !470)
!475 = !DILocation(line: 159, column: 16, scope: !466)
!476 = !DILocation(line: 159, column: 7, scope: !276, inlinedAt: !470)
!477 = !DILocation(line: 159, column: 8, scope: !466)
!478 = !DILocation(line: 251, column: 10, scope: !287, inlinedAt: !468)
!479 = !DILocation(line: 148, column: 7, scope: !84)
!480 = !DILocation(line: 159, column: 8, scope: !449)
!481 = !DILocation(line: 149, column: 8, scope: !84)
!482 = !DILocation(line: 163, column: 11, scope: !483)
!483 = distinct !DILexicalBlock(scope: !445, file: !1, line: 163, column: 11)
!484 = !DILocation(line: 163, column: 25, scope: !483)
!485 = !DILocation(line: 163, column: 20, scope: !483)
!486 = !DILocation(line: 147, column: 7, scope: !84)
!487 = !DILocation(line: 166, column: 7, scope: !488)
!488 = distinct !DILexicalBlock(scope: !445, file: !1, line: 166, column: 7)
!489 = !DILocation(line: 167, column: 6, scope: !490)
!490 = distinct !DILexicalBlock(scope: !491, file: !1, line: 167, column: 6)
!491 = distinct !DILexicalBlock(scope: !488, file: !1, line: 166, column: 7)
!492 = !DILocation(line: 167, column: 40, scope: !490)
!493 = !DILocation(line: 167, column: 27, scope: !490)
!494 = !DILocation(line: 169, column: 1, scope: !84)
!495 = !DILocation(line: 190, column: 33, scope: !97)
!496 = !DILocation(line: 190, column: 43, scope: !97)
!497 = !DILocation(line: 190, column: 53, scope: !97)
!498 = !DILocation(line: 190, column: 65, scope: !97)
!499 = !DILocation(line: 192, column: 7, scope: !97)
!500 = !DILocation(line: 196, column: 23, scope: !501)
!501 = distinct !DILexicalBlock(scope: !502, file: !1, line: 196, column: 3)
!502 = distinct !DILexicalBlock(scope: !97, file: !1, line: 196, column: 3)
!503 = !DILocation(line: 196, column: 3, scope: !502)
!504 = !DILocation(line: 200, column: 25, scope: !505)
!505 = distinct !DILexicalBlock(scope: !506, file: !1, line: 200, column: 7)
!506 = distinct !DILexicalBlock(scope: !507, file: !1, line: 200, column: 7)
!507 = distinct !DILexicalBlock(scope: !501, file: !1, line: 197, column: 5)
!508 = !DILocation(line: 204, column: 26, scope: !509)
!509 = distinct !DILexicalBlock(scope: !507, file: !1, line: 204, column: 11)
!510 = !DILocation(line: 200, column: 7, scope: !506)
!511 = !DILocation(line: 201, column: 6, scope: !512)
!512 = distinct !DILexicalBlock(scope: !505, file: !1, line: 201, column: 6)
!513 = !DILocation(line: 201, column: 34, scope: !512)
!514 = !DILocation(line: 194, column: 7, scope: !97)
!515 = !DILocation(line: 201, column: 30, scope: !512)
!516 = !DILocation(line: 204, column: 11, scope: !509)
!517 = !DILocation(line: 204, column: 24, scope: !509)
!518 = !DILocation(line: 204, column: 39, scope: !509)
!519 = !DILocation(line: 193, column: 7, scope: !97)
!520 = !DILocation(line: 204, column: 11, scope: !507)
!521 = !DILocation(line: 212, column: 4, scope: !522)
!522 = distinct !DILexicalBlock(scope: !523, file: !1, line: 212, column: 4)
!523 = distinct !DILexicalBlock(scope: !509, file: !1, line: 211, column: 2)
!524 = !DILocation(line: 206, column: 4, scope: !525)
!525 = distinct !DILexicalBlock(scope: !526, file: !1, line: 206, column: 4)
!526 = distinct !DILexicalBlock(scope: !509, file: !1, line: 205, column: 2)
!527 = !DILocation(line: 207, column: 10, scope: !528)
!528 = distinct !DILexicalBlock(scope: !529, file: !1, line: 207, column: 10)
!529 = distinct !DILexicalBlock(scope: !525, file: !1, line: 206, column: 4)
!530 = !DILocation(line: 207, column: 50, scope: !528)
!531 = !DILocation(line: 207, column: 34, scope: !528)
!532 = !DILocation(line: 292, column: 13, scope: !290, inlinedAt: !533)
!533 = distinct !DILocation(line: 208, column: 36, scope: !528)
!534 = !DILocation(line: 294, column: 17, scope: !290, inlinedAt: !533)
!535 = !DILocation(line: 208, column: 29, scope: !528)
!536 = !DILocation(line: 208, column: 11, scope: !528)
!537 = !DILocation(line: 208, column: 27, scope: !528)
!538 = !DILocation(line: 213, column: 10, scope: !539)
!539 = distinct !DILexicalBlock(scope: !540, file: !1, line: 213, column: 10)
!540 = distinct !DILexicalBlock(scope: !522, file: !1, line: 212, column: 4)
!541 = !DILocation(line: 213, column: 50, scope: !539)
!542 = !DILocation(line: 213, column: 34, scope: !539)
!543 = !DILocation(line: 298, column: 13, scope: !293, inlinedAt: !544)
!544 = distinct !DILocation(line: 214, column: 36, scope: !539)
!545 = !DILocation(line: 300, column: 17, scope: !293, inlinedAt: !544)
!546 = !DILocation(line: 214, column: 29, scope: !539)
!547 = !DILocation(line: 214, column: 11, scope: !539)
!548 = !DILocation(line: 214, column: 27, scope: !539)
!549 = !DILocation(line: 217, column: 1, scope: !97)
!550 = !DILocation(line: 237, column: 25, scope: !108)
!551 = !DILocation(line: 237, column: 35, scope: !108)
!552 = !DILocation(line: 237, column: 47, scope: !108)
!553 = !DILocation(line: 237, column: 58, scope: !108)
!554 = !DILocation(line: 242, column: 18, scope: !108)
!555 = !DILocation(line: 239, column: 9, scope: !108)
!556 = !DILocation(line: 240, column: 15, scope: !108)
!557 = !DILocation(line: 240, column: 9, scope: !108)
!558 = !DILocation(line: 243, column: 30, scope: !559)
!559 = distinct !DILexicalBlock(scope: !560, file: !1, line: 243, column: 3)
!560 = distinct !DILexicalBlock(scope: !108, file: !1, line: 243, column: 3)
!561 = !DILocation(line: 243, column: 3, scope: !560)
!562 = !DILocation(line: 244, column: 11, scope: !563)
!563 = distinct !DILexicalBlock(scope: !559, file: !1, line: 244, column: 9)
!564 = !DILocation(line: 246, column: 14, scope: !565)
!565 = distinct !DILexicalBlock(scope: !563, file: !1, line: 245, column: 7)
!566 = !DILocation(line: 246, column: 2, scope: !565)
!567 = !DILocation(line: 246, column: 12, scope: !565)
!568 = !DILocation(line: 247, column: 6, scope: !565)
!569 = !DILocation(line: 248, column: 7, scope: !565)
!570 = !DILocation(line: 250, column: 7, scope: !563)
!571 = !DILocation(line: 250, column: 17, scope: !563)
!572 = !DILocation(line: 251, column: 3, scope: !108)
!573 = !DILocation(line: 251, column: 13, scope: !108)
!574 = !DILocation(line: 253, column: 7, scope: !575)
!575 = distinct !DILexicalBlock(scope: !108, file: !1, line: 253, column: 7)
!576 = !DILocation(line: 253, column: 15, scope: !575)
!577 = !DILocation(line: 253, column: 12, scope: !575)
!578 = !DILocation(line: 253, column: 7, scope: !108)
!579 = !DILocation(line: 254, column: 19, scope: !580)
!580 = distinct !DILexicalBlock(scope: !575, file: !1, line: 254, column: 5)
!581 = !DILocation(line: 254, column: 38, scope: !580)
!582 = !DILocation(line: 254, column: 49, scope: !580)
!583 = !DILocation(line: 255, column: 10, scope: !108)
!584 = !DILocation(line: 256, column: 3, scope: !108)
!585 = !DILocation(line: 257, column: 1, scope: !108)
!586 = !DILocation(line: 275, column: 27, scope: !119)
!587 = !DILocation(line: 275, column: 37, scope: !119)
!588 = !DILocation(line: 275, column: 49, scope: !119)
!589 = !DILocation(line: 275, column: 60, scope: !119)
!590 = !DILocation(line: 280, column: 18, scope: !119)
!591 = !DILocation(line: 277, column: 9, scope: !119)
!592 = !DILocation(line: 278, column: 15, scope: !119)
!593 = !DILocation(line: 278, column: 9, scope: !119)
!594 = !DILocation(line: 281, column: 30, scope: !595)
!595 = distinct !DILexicalBlock(scope: !596, file: !1, line: 281, column: 3)
!596 = distinct !DILexicalBlock(scope: !119, file: !1, line: 281, column: 3)
!597 = !DILocation(line: 281, column: 3, scope: !596)
!598 = !DILocation(line: 282, column: 11, scope: !599)
!599 = distinct !DILexicalBlock(scope: !595, file: !1, line: 282, column: 9)
!600 = !DILocation(line: 284, column: 14, scope: !601)
!601 = distinct !DILexicalBlock(scope: !599, file: !1, line: 283, column: 7)
!602 = !DILocation(line: 284, column: 2, scope: !601)
!603 = !DILocation(line: 284, column: 12, scope: !601)
!604 = !DILocation(line: 285, column: 6, scope: !601)
!605 = !DILocation(line: 286, column: 7, scope: !601)
!606 = !DILocation(line: 287, column: 3, scope: !119)
!607 = !DILocation(line: 287, column: 13, scope: !119)
!608 = !DILocation(line: 288, column: 7, scope: !609)
!609 = distinct !DILexicalBlock(scope: !119, file: !1, line: 288, column: 7)
!610 = !DILocation(line: 288, column: 15, scope: !609)
!611 = !DILocation(line: 288, column: 12, scope: !609)
!612 = !DILocation(line: 288, column: 7, scope: !119)
!613 = !DILocation(line: 289, column: 19, scope: !614)
!614 = distinct !DILexicalBlock(scope: !609, file: !1, line: 289, column: 5)
!615 = !DILocation(line: 289, column: 38, scope: !614)
!616 = !DILocation(line: 289, column: 49, scope: !614)
!617 = !DILocation(line: 290, column: 10, scope: !119)
!618 = !DILocation(line: 291, column: 3, scope: !119)
!619 = !DILocation(line: 292, column: 1, scope: !119)
!620 = !DILocation(line: 305, column: 23, scope: !128)
!621 = !DILocation(line: 307, column: 7, scope: !128)
!622 = !DILocation(line: 308, column: 8, scope: !623)
!623 = distinct !DILexicalBlock(scope: !128, file: !1, line: 308, column: 3)
!624 = !DILocation(line: 308, column: 18, scope: !625)
!625 = distinct !DILexicalBlock(scope: !623, file: !1, line: 308, column: 3)
!626 = !DILocation(line: 308, column: 3, scope: !623)
!627 = !DILocation(line: 309, column: 29, scope: !628)
!628 = distinct !DILexicalBlock(scope: !625, file: !1, line: 309, column: 9)
!629 = !DILocation(line: 309, column: 25, scope: !628)
!630 = !DILocation(line: 308, column: 29, scope: !625)
!631 = !DILocation(line: 308, column: 3, scope: !625)
!632 = !DILocation(line: 310, column: 3, scope: !128)
!633 = !DILocation(line: 333, column: 30, scope: !134)
!634 = !DILocation(line: 334, column: 16, scope: !134)
!635 = !DILocation(line: 334, column: 29, scope: !134)
!636 = !DILocation(line: 334, column: 40, scope: !134)
!637 = !DILocation(line: 335, column: 16, scope: !134)
!638 = !DILocation(line: 335, column: 29, scope: !134)
!639 = !DILocation(line: 335, column: 40, scope: !134)
!640 = !DILocation(line: 336, column: 16, scope: !134)
!641 = !DILocation(line: 336, column: 25, scope: !134)
!642 = !DILocation(line: 338, column: 8, scope: !134)
!643 = !DILocation(line: 339, column: 8, scope: !134)
!644 = !DILocation(line: 341, column: 3, scope: !134)
!645 = !DILocation(line: 341, column: 8, scope: !134)
!646 = !DILocation(line: 342, column: 3, scope: !134)
!647 = !DILocation(line: 342, column: 8, scope: !134)
!648 = !DILocation(line: 343, column: 3, scope: !134)
!649 = !DILocation(line: 343, column: 8, scope: !134)
!650 = !DILocation(line: 350, column: 3, scope: !134)
!651 = !DILocation(line: 351, column: 3, scope: !134)
!652 = !DILocation(line: 351, column: 14, scope: !134)
!653 = !DILocation(line: 352, column: 3, scope: !134)
!654 = !DILocation(line: 354, column: 3, scope: !134)
!655 = !DILocation(line: 355, column: 3, scope: !134)
!656 = !DILocation(line: 355, column: 14, scope: !134)
!657 = !DILocation(line: 356, column: 3, scope: !134)
!658 = !DILocation(line: 344, column: 9, scope: !134)
!659 = !DILocation(line: 344, column: 14, scope: !134)
!660 = !DILocation(line: 346, column: 8, scope: !134)
!661 = !DILocation(line: 346, column: 15, scope: !134)
!662 = !DILocation(line: 340, column: 8, scope: !134)
!663 = !DILocation(line: 369, column: 30, scope: !664)
!664 = distinct !DILexicalBlock(scope: !134, file: !1, line: 365, column: 5)
!665 = !DILocation(line: 370, column: 30, scope: !664)
!666 = !DILocation(line: 364, column: 3, scope: !134)
!667 = !DILocation(line: 369, column: 7, scope: !664)
!668 = !DILocation(line: 369, column: 39, scope: !664)
!669 = !DILocation(line: 370, column: 7, scope: !664)
!670 = !DILocation(line: 370, column: 39, scope: !664)
!671 = !DILocation(line: 371, column: 16, scope: !664)
!672 = !DILocation(line: 345, column: 8, scope: !134)
!673 = !DILocation(line: 372, column: 16, scope: !664)
!674 = !DILocation(line: 345, column: 16, scope: !134)
!675 = !DILocation(line: 375, column: 19, scope: !676)
!676 = distinct !DILexicalBlock(scope: !664, file: !1, line: 375, column: 11)
!677 = !DILocation(line: 375, column: 25, scope: !676)
!678 = !DILocation(line: 375, column: 28, scope: !676)
!679 = !DILocation(line: 375, column: 35, scope: !676)
!680 = !DILocation(line: 375, column: 44, scope: !676)
!681 = !DILocation(line: 376, column: 12, scope: !676)
!682 = !DILocation(line: 376, column: 18, scope: !676)
!683 = !DILocation(line: 376, column: 21, scope: !676)
!684 = !DILocation(line: 376, column: 28, scope: !676)
!685 = !DILocation(line: 375, column: 11, scope: !664)
!686 = !DILocation(line: 377, column: 2, scope: !676)
!687 = !DILocation(line: 380, column: 10, scope: !664)
!688 = !DILocation(line: 381, column: 10, scope: !664)
!689 = !DILocation(line: 348, column: 8, scope: !134)
!690 = !DILocation(line: 384, column: 27, scope: !691)
!691 = distinct !DILexicalBlock(scope: !692, file: !1, line: 384, column: 7)
!692 = distinct !DILexicalBlock(scope: !664, file: !1, line: 384, column: 7)
!693 = !DILocation(line: 384, column: 44, scope: !691)
!694 = !DILocation(line: 384, column: 36, scope: !691)
!695 = !DILocation(line: 384, column: 7, scope: !692)
!696 = !DILocation(line: 386, column: 9, scope: !697)
!697 = distinct !DILexicalBlock(scope: !698, file: !1, line: 386, column: 8)
!698 = distinct !DILexicalBlock(scope: !691, file: !1, line: 385, column: 2)
!699 = !DILocation(line: 386, column: 31, scope: !697)
!700 = !DILocation(line: 388, column: 23, scope: !701)
!701 = distinct !DILexicalBlock(scope: !702, file: !1, line: 388, column: 12)
!702 = distinct !DILexicalBlock(scope: !697, file: !1, line: 387, column: 6)
!703 = !DILocation(line: 388, column: 12, scope: !702)
!704 = !DILocation(line: 389, column: 3, scope: !701)
!705 = !DILocation(line: 389, column: 16, scope: !701)
!706 = !DILocation(line: 390, column: 50, scope: !707)
!707 = distinct !DILexicalBlock(scope: !701, file: !1, line: 390, column: 17)
!708 = !DILocation(line: 390, column: 32, scope: !707)
!709 = !DILocation(line: 390, column: 17, scope: !707)
!710 = !DILocation(line: 390, column: 57, scope: !707)
!711 = !DILocation(line: 391, column: 3, scope: !707)
!712 = !DILocation(line: 390, column: 17, scope: !701)
!713 = !DILocation(line: 391, column: 16, scope: !707)
!714 = !DILocation(line: 393, column: 16, scope: !707)
!715 = !DILocation(line: 396, column: 6, scope: !697)
!716 = !DILocation(line: 396, column: 19, scope: !697)
!717 = !DILocation(line: 398, column: 7, scope: !664)
!718 = !DILocation(line: 398, column: 20, scope: !664)
!719 = !DILocation(line: 347, column: 8, scope: !134)
!720 = !DILocation(line: 401, column: 7, scope: !721)
!721 = distinct !DILexicalBlock(scope: !664, file: !1, line: 401, column: 7)
!722 = !DILocation(line: 405, column: 7, scope: !723)
!723 = distinct !DILexicalBlock(scope: !664, file: !1, line: 405, column: 7)
!724 = !DILocation(line: 402, column: 7, scope: !725)
!725 = distinct !DILexicalBlock(scope: !726, file: !1, line: 402, column: 6)
!726 = distinct !DILexicalBlock(scope: !721, file: !1, line: 401, column: 7)
!727 = !DILocation(line: 402, column: 35, scope: !725)
!728 = !DILocation(line: 402, column: 26, scope: !725)
!729 = !DILocation(line: 406, column: 7, scope: !730)
!730 = distinct !DILexicalBlock(scope: !731, file: !1, line: 406, column: 6)
!731 = distinct !DILexicalBlock(scope: !723, file: !1, line: 405, column: 7)
!732 = !DILocation(line: 406, column: 35, scope: !730)
!733 = !DILocation(line: 347, column: 19, scope: !134)
!734 = !DILocation(line: 406, column: 26, scope: !730)
!735 = !DILocation(line: 409, column: 35, scope: !664)
!736 = !DILocation(line: 409, column: 47, scope: !664)
!737 = !DILocation(line: 408, column: 14, scope: !664)
!738 = !DILocation(line: 410, column: 14, scope: !664)
!739 = !DILocation(line: 413, column: 35, scope: !664)
!740 = !DILocation(line: 413, column: 47, scope: !664)
!741 = !DILocation(line: 412, column: 14, scope: !664)
!742 = !DILocation(line: 414, column: 14, scope: !664)
!743 = !DILocation(line: 421, column: 1, scope: !134)
!744 = !DILocation(line: 431, column: 24, scope: !228)
!745 = !DILocation(line: 431, column: 38, scope: !228)
!746 = !DILocation(line: 433, column: 7, scope: !228)
!747 = !DILocation(line: 434, column: 7, scope: !228)
!748 = !DILocation(line: 439, column: 28, scope: !749)
!749 = distinct !DILexicalBlock(scope: !750, file: !1, line: 439, column: 3)
!750 = distinct !DILexicalBlock(scope: !228, file: !1, line: 439, column: 3)
!751 = !DILocation(line: 439, column: 43, scope: !749)
!752 = !DILocation(line: 435, column: 7, scope: !228)
!753 = !DILocation(line: 459, column: 30, scope: !754)
!754 = distinct !DILexicalBlock(scope: !755, file: !1, line: 459, column: 3)
!755 = distinct !DILexicalBlock(scope: !228, file: !1, line: 459, column: 3)
!756 = !DILocation(line: 439, column: 3, scope: !750)
!757 = !DILocation(line: 453, column: 15, scope: !758)
!758 = distinct !DILexicalBlock(scope: !759, file: !1, line: 453, column: 8)
!759 = distinct !DILexicalBlock(scope: !760, file: !1, line: 449, column: 2)
!760 = distinct !DILexicalBlock(scope: !761, file: !1, line: 448, column: 11)
!761 = distinct !DILexicalBlock(scope: !749, file: !1, line: 440, column: 5)
!762 = !DILocation(line: 454, column: 15, scope: !763)
!763 = distinct !DILexicalBlock(scope: !759, file: !1, line: 454, column: 8)
!764 = !DILocation(line: 442, column: 34, scope: !765)
!765 = distinct !DILexicalBlock(scope: !766, file: !1, line: 442, column: 7)
!766 = distinct !DILexicalBlock(scope: !761, file: !1, line: 442, column: 7)
!767 = !DILocation(line: 442, column: 25, scope: !765)
!768 = !DILocation(line: 442, column: 7, scope: !766)
!769 = !DILocation(line: 459, column: 21, scope: !754)
!770 = !DILocation(line: 459, column: 3, scope: !755)
!771 = !DILocation(line: 460, column: 5, scope: !754)
!772 = !DILocation(line: 460, column: 22, scope: !754)
!773 = !DILocation(line: 443, column: 8, scope: !774)
!774 = distinct !DILexicalBlock(scope: !765, file: !1, line: 443, column: 6)
!775 = !DILocation(line: 445, column: 15, scope: !776)
!776 = distinct !DILexicalBlock(scope: !761, file: !1, line: 445, column: 11)
!777 = !DILocation(line: 445, column: 11, scope: !761)
!778 = !DILocation(line: 448, column: 16, scope: !760)
!779 = !DILocation(line: 448, column: 11, scope: !761)
!780 = !DILocation(line: 450, column: 4, scope: !781)
!781 = distinct !DILexicalBlock(scope: !759, file: !1, line: 450, column: 4)
!782 = !DILocation(line: 451, column: 6, scope: !783)
!783 = distinct !DILexicalBlock(scope: !781, file: !1, line: 450, column: 4)
!784 = !DILocation(line: 451, column: 25, scope: !783)
!785 = !DILocation(line: 451, column: 23, scope: !783)
!786 = !DILocation(line: 450, column: 31, scope: !783)
!787 = !DILocation(line: 450, column: 22, scope: !783)
!788 = !DILocation(line: 453, column: 18, scope: !758)
!789 = !DILocation(line: 453, column: 8, scope: !759)
!790 = !DILocation(line: 453, column: 45, scope: !758)
!791 = !DILocation(line: 453, column: 27, scope: !758)
!792 = !DILocation(line: 453, column: 43, scope: !758)
!793 = !DILocation(line: 454, column: 18, scope: !763)
!794 = !DILocation(line: 454, column: 8, scope: !759)
!795 = !DILocation(line: 454, column: 45, scope: !763)
!796 = !DILocation(line: 454, column: 27, scope: !763)
!797 = !DILocation(line: 454, column: 43, scope: !763)
!798 = !DILocation(line: 456, column: 11, scope: !761)
!799 = !DILocation(line: 457, column: 5, scope: !761)
!800 = !DILocation(line: 461, column: 10, scope: !228)
!801 = !DILocation(line: 461, column: 15, scope: !228)
!802 = !DILocation(line: 462, column: 14, scope: !803)
!803 = distinct !DILexicalBlock(scope: !228, file: !1, line: 462, column: 7)
!804 = !DILocation(line: 462, column: 17, scope: !803)
!805 = !DILocation(line: 462, column: 7, scope: !228)
!806 = !DILocation(line: 462, column: 26, scope: !803)
!807 = !DILocation(line: 462, column: 42, scope: !803)
!808 = !DILocation(line: 463, column: 14, scope: !809)
!809 = distinct !DILexicalBlock(scope: !228, file: !1, line: 463, column: 7)
!810 = !DILocation(line: 463, column: 17, scope: !809)
!811 = !DILocation(line: 463, column: 7, scope: !228)
!812 = !DILocation(line: 463, column: 26, scope: !809)
!813 = !DILocation(line: 463, column: 42, scope: !809)
!814 = !DILocation(line: 464, column: 3, scope: !228)
!815 = !DILocation(line: 514, column: 24, scope: !237)
!816 = !DILocation(line: 514, column: 39, scope: !237)
!817 = !DILocation(line: 514, column: 51, scope: !237)
!818 = !DILocation(line: 514, column: 63, scope: !237)
!819 = !DILocation(line: 514, column: 74, scope: !237)
!820 = !DILocation(line: 515, column: 11, scope: !237)
!821 = !DILocation(line: 515, column: 29, scope: !237)
!822 = !DILocation(line: 530, column: 18, scope: !237)
!823 = !DILocation(line: 530, column: 10, scope: !237)
!824 = !DILocation(line: 519, column: 10, scope: !237)
!825 = !DILocation(line: 520, column: 10, scope: !237)
!826 = !DILocation(line: 526, column: 10, scope: !237)
!827 = !DILocation(line: 523, column: 22, scope: !237)
!828 = !DILocation(line: 533, column: 21, scope: !829)
!829 = distinct !DILexicalBlock(scope: !830, file: !1, line: 533, column: 3)
!830 = distinct !DILexicalBlock(scope: !237, file: !1, line: 533, column: 3)
!831 = !DILocation(line: 533, column: 3, scope: !830)
!832 = !DILocation(line: 535, column: 26, scope: !833)
!833 = distinct !DILexicalBlock(scope: !829, file: !1, line: 534, column: 5)
!834 = !DILocation(line: 535, column: 19, scope: !833)
!835 = !DILocation(line: 535, column: 7, scope: !833)
!836 = !DILocation(line: 535, column: 17, scope: !833)
!837 = !DILocation(line: 536, column: 9, scope: !833)
!838 = !DILocation(line: 537, column: 27, scope: !833)
!839 = !DILocation(line: 537, column: 16, scope: !833)
!840 = !DILocation(line: 539, column: 33, scope: !237)
!841 = !DILocation(line: 539, column: 59, scope: !237)
!842 = !DILocation(line: 539, column: 57, scope: !237)
!843 = !DILocation(line: 539, column: 50, scope: !237)
!844 = !DILocation(line: 539, column: 44, scope: !237)
!845 = !DILocation(line: 539, column: 37, scope: !237)
!846 = !DILocation(line: 539, column: 31, scope: !237)
!847 = !DILocation(line: 539, column: 24, scope: !237)
!848 = !DILocation(line: 539, column: 7, scope: !237)
!849 = !DILocation(line: 540, column: 5, scope: !237)
!850 = !DILocation(line: 541, column: 9, scope: !851)
!851 = distinct !DILexicalBlock(scope: !237, file: !1, line: 541, column: 7)
!852 = !DILocation(line: 541, column: 7, scope: !237)
!853 = !DILocation(line: 545, column: 18, scope: !237)
!854 = !DILocation(line: 545, column: 9, scope: !237)
!855 = !DILocation(line: 521, column: 10, scope: !237)
!856 = !DILocation(line: 546, column: 24, scope: !237)
!857 = !DILocation(line: 546, column: 16, scope: !237)
!858 = !DILocation(line: 522, column: 10, scope: !237)
!859 = !DILocation(line: 547, column: 3, scope: !860)
!860 = distinct !DILexicalBlock(scope: !237, file: !1, line: 547, column: 3)
!861 = !DILocation(line: 550, column: 27, scope: !862)
!862 = distinct !DILexicalBlock(scope: !863, file: !1, line: 550, column: 7)
!863 = distinct !DILexicalBlock(scope: !864, file: !1, line: 550, column: 7)
!864 = distinct !DILexicalBlock(scope: !865, file: !1, line: 548, column: 5)
!865 = distinct !DILexicalBlock(scope: !860, file: !1, line: 547, column: 3)
!866 = !DILocation(line: 549, column: 26, scope: !864)
!867 = !DILocation(line: 549, column: 7, scope: !864)
!868 = !DILocation(line: 549, column: 16, scope: !864)
!869 = !DILocation(line: 523, column: 16, scope: !237)
!870 = !DILocation(line: 550, column: 7, scope: !863)
!871 = !DILocation(line: 551, column: 17, scope: !862)
!872 = !DILocation(line: 554, column: 19, scope: !237)
!873 = !DILocation(line: 554, column: 13, scope: !237)
!874 = !DILocation(line: 555, column: 15, scope: !237)
!875 = !DILocation(line: 557, column: 3, scope: !876)
!876 = distinct !DILexicalBlock(scope: !237, file: !1, line: 557, column: 3)
!877 = !DILocation(line: 563, column: 13, scope: !878)
!878 = distinct !DILexicalBlock(scope: !879, file: !1, line: 562, column: 8)
!879 = distinct !DILexicalBlock(scope: !880, file: !1, line: 561, column: 2)
!880 = distinct !DILexicalBlock(scope: !881, file: !1, line: 560, column: 7)
!881 = distinct !DILexicalBlock(scope: !882, file: !1, line: 560, column: 7)
!882 = distinct !DILexicalBlock(scope: !883, file: !1, line: 558, column: 5)
!883 = distinct !DILexicalBlock(scope: !876, file: !1, line: 557, column: 3)
!884 = !DILocation(line: 560, column: 29, scope: !880)
!885 = !DILocation(line: 560, column: 27, scope: !880)
!886 = !DILocation(line: 560, column: 7, scope: !881)
!887 = !DILocation(line: 564, column: 4, scope: !879)
!888 = !DILocation(line: 569, column: 23, scope: !889)
!889 = distinct !DILexicalBlock(scope: !890, file: !1, line: 569, column: 3)
!890 = distinct !DILexicalBlock(scope: !237, file: !1, line: 569, column: 3)
!891 = !DILocation(line: 569, column: 3, scope: !890)
!892 = !DILocation(line: 562, column: 8, scope: !878)
!893 = !DILocation(line: 562, column: 21, scope: !878)
!894 = !DILocation(line: 562, column: 35, scope: !878)
!895 = !DILocation(line: 562, column: 27, scope: !878)
!896 = !DILocation(line: 523, column: 10, scope: !237)
!897 = !DILocation(line: 563, column: 6, scope: !878)
!898 = !DILocation(line: 564, column: 18, scope: !879)
!899 = !DILocation(line: 560, column: 46, scope: !880)
!900 = !DILocation(line: 560, column: 38, scope: !880)
!901 = !DILocation(line: 571, column: 7, scope: !902)
!902 = distinct !DILexicalBlock(scope: !889, file: !1, line: 570, column: 5)
!903 = !DILocation(line: 571, column: 24, scope: !902)
!904 = !DILocation(line: 572, column: 7, scope: !905)
!905 = distinct !DILexicalBlock(scope: !902, file: !1, line: 572, column: 7)
!906 = !DILocation(line: 573, column: 6, scope: !907)
!907 = distinct !DILexicalBlock(scope: !908, file: !1, line: 573, column: 6)
!908 = distinct !DILexicalBlock(scope: !905, file: !1, line: 572, column: 7)
!909 = !DILocation(line: 573, column: 21, scope: !907)
!910 = !DILocation(line: 573, column: 6, scope: !908)
!911 = !DILocation(line: 574, column: 21, scope: !907)
!912 = !DILocation(line: 574, column: 4, scope: !907)
!913 = !DILocation(line: 575, column: 12, scope: !902)
!914 = !DILocation(line: 518, column: 10, scope: !237)
!915 = !DILocation(line: 581, column: 21, scope: !237)
!916 = !DILocation(line: 581, column: 11, scope: !237)
!917 = !DILocation(line: 517, column: 10, scope: !237)
!918 = !DILocation(line: 582, column: 3, scope: !919)
!919 = distinct !DILexicalBlock(scope: !237, file: !1, line: 582, column: 3)
!920 = !DILocation(line: 583, column: 27, scope: !921)
!921 = distinct !DILexicalBlock(scope: !919, file: !1, line: 582, column: 3)
!922 = !DILocation(line: 584, column: 3, scope: !923)
!923 = distinct !DILexicalBlock(scope: !237, file: !1, line: 584, column: 3)
!924 = !DILocation(line: 598, column: 7, scope: !925)
!925 = distinct !DILexicalBlock(scope: !926, file: !1, line: 585, column: 5)
!926 = distinct !DILexicalBlock(scope: !923, file: !1, line: 584, column: 3)
!927 = !DILocation(line: 583, column: 5, scope: !921)
!928 = !DILocation(line: 583, column: 16, scope: !921)
!929 = !DILocation(line: 588, column: 7, scope: !930)
!930 = distinct !DILexicalBlock(scope: !925, file: !1, line: 588, column: 7)
!931 = !DILocation(line: 590, column: 28, scope: !932)
!932 = distinct !DILexicalBlock(scope: !933, file: !1, line: 590, column: 4)
!933 = distinct !DILexicalBlock(scope: !934, file: !1, line: 590, column: 4)
!934 = distinct !DILexicalBlock(scope: !935, file: !1, line: 589, column: 2)
!935 = distinct !DILexicalBlock(scope: !930, file: !1, line: 588, column: 7)
!936 = !DILocation(line: 591, column: 27, scope: !932)
!937 = !DILocation(line: 591, column: 6, scope: !932)
!938 = !DILocation(line: 590, column: 26, scope: !932)
!939 = !DILocation(line: 590, column: 4, scope: !933)
!940 = !DILocation(line: 592, column: 19, scope: !941)
!941 = distinct !DILexicalBlock(scope: !942, file: !1, line: 592, column: 4)
!942 = distinct !DILexicalBlock(scope: !934, file: !1, line: 592, column: 4)
!943 = !DILocation(line: 592, column: 17, scope: !941)
!944 = !DILocation(line: 592, column: 4, scope: !942)
!945 = !DILocation(line: 591, column: 25, scope: !932)
!946 = !DILocation(line: 590, column: 53, scope: !932)
!947 = !DILocation(line: 525, column: 10, scope: !237)
!948 = !DILocation(line: 593, column: 6, scope: !941)
!949 = !DILocation(line: 593, column: 25, scope: !941)
!950 = !DILocation(line: 592, column: 46, scope: !941)
!951 = !DILocation(line: 595, column: 17, scope: !952)
!952 = distinct !DILexicalBlock(scope: !934, file: !1, line: 595, column: 8)
!953 = !DILocation(line: 595, column: 8, scope: !934)
!954 = !DILocation(line: 596, column: 42, scope: !952)
!955 = !DILocation(line: 596, column: 27, scope: !952)
!956 = !DILocation(line: 596, column: 21, scope: !952)
!957 = !DILocation(line: 596, column: 6, scope: !952)
!958 = !DILocation(line: 596, column: 25, scope: !952)
!959 = !DILocation(line: 598, column: 24, scope: !925)
!960 = !DILocation(line: 600, column: 10, scope: !237)
!961 = !DILocation(line: 600, column: 16, scope: !237)
!962 = !DILocation(line: 601, column: 10, scope: !237)
!963 = !DILocation(line: 601, column: 16, scope: !237)
!964 = !DILocation(line: 602, column: 10, scope: !237)
!965 = !DILocation(line: 602, column: 16, scope: !237)
!966 = !DILocation(line: 603, column: 30, scope: !237)
!967 = !DILocation(line: 603, column: 10, scope: !237)
!968 = !DILocation(line: 603, column: 17, scope: !237)
!969 = !DILocation(line: 604, column: 3, scope: !970)
!970 = distinct !DILexicalBlock(scope: !237, file: !1, line: 604, column: 3)
!971 = !DILocation(line: 605, column: 5, scope: !972)
!972 = distinct !DILexicalBlock(scope: !970, file: !1, line: 604, column: 3)
!973 = !DILocation(line: 605, column: 26, scope: !972)
!974 = !DILocation(line: 605, column: 19, scope: !972)
!975 = !DILocation(line: 605, column: 42, scope: !972)
!976 = !DILocation(line: 607, column: 3, scope: !237)
!977 = !DILocation(line: 608, column: 3, scope: !237)
!978 = !DILocation(line: 609, column: 15, scope: !237)
!979 = !DILocation(line: 609, column: 3, scope: !237)
!980 = !DILocation(line: 610, column: 14, scope: !237)
!981 = !DILocation(line: 611, column: 3, scope: !237)
!982 = !DILocation(line: 635, column: 34, scope: !260)
!983 = !DILocation(line: 635, column: 44, scope: !260)
!984 = !DILocation(line: 635, column: 54, scope: !260)
!985 = !DILocation(line: 635, column: 65, scope: !260)
!986 = !DILocation(line: 637, column: 7, scope: !260)
!987 = !DILocation(line: 639, column: 17, scope: !988)
!988 = distinct !DILexicalBlock(scope: !989, file: !1, line: 639, column: 3)
!989 = distinct !DILexicalBlock(scope: !260, file: !1, line: 639, column: 3)
!990 = !DILocation(line: 639, column: 3, scope: !989)
!991 = !DILocation(line: 640, column: 25, scope: !992)
!992 = distinct !DILexicalBlock(scope: !993, file: !1, line: 640, column: 5)
!993 = distinct !DILexicalBlock(scope: !988, file: !1, line: 640, column: 5)
!994 = !DILocation(line: 640, column: 5, scope: !993)
!995 = !DILocation(line: 641, column: 11, scope: !996)
!996 = distinct !DILexicalBlock(scope: !992, file: !1, line: 641, column: 11)
!997 = !DILocation(line: 641, column: 47, scope: !996)
!998 = !DILocation(line: 641, column: 33, scope: !996)
!999 = !DILocation(line: 642, column: 1, scope: !260)
