; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/phylip.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct._RuneLocale = type { [8 x i8], [32 x i8], i32 (i8*, i64, i8**)*, i32 (i32, i8*, i64, i8**)*, i32, [256 x i32], [256 x i32], [256 x i32], %struct._RuneRange, %struct._RuneRange, %struct._RuneRange, i8*, i32, i32, %struct._RuneCharClass* }
%struct._RuneRange = type { i32, %struct._RuneEntry* }
%struct._RuneEntry = type { i32, i32, i32, i32* }
%struct._RuneCharClass = type { [14 x i8], i32 }
%struct.msa_struct = type { i8**, i8**, float*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i8**, i8**, i8**, [6 x float], [6 x i32], i8**, i32, i32, i8**, i8**, i32, i32, i8**, i8***, %struct.GKI*, i32, i8**, i8**, %struct.GKI*, i32, i8**, i8***, %struct.GKI*, i32, %struct.GKI*, i32, i32, i32*, i32*, i32*, i32 }
%struct.GKI = type { %struct.gki_elem**, i32, i32, i32 }
%struct.gki_elem = type { i8*, i32, %struct.gki_elem* }
%struct.msafile_struct = type { %struct.__sFILE*, i8*, i32, i8*, i32, %struct.ssifile_s*, i32, i32, i32 }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.ssifile_s = type { %struct.__sFILE*, i32, i16, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ssioffset_s, %struct.ssioffset_s, %struct.ssioffset_s, i8, i8, i8**, i32*, i32*, i32*, i32* }
%struct.ssioffset_s = type { i8, %union.anon }
%union.anon = type { i64 }

@.str = private unnamed_addr constant [4 x i8] c" \09\0A\00", align 1
@.str1 = private unnamed_addr constant [61 x i8] c"Failed to parse nseq/alen from first line of PHYLIP file %s\0A\00", align 1
@.str2 = private unnamed_addr constant [65 x i8] c"nseq and/or alen not an integer in first line of PHYLIP file %s\0A\00", align 1
@.str3 = private unnamed_addr constant [55 x i8] c"Failed to parse sequence at line %d of PHYLIP file %s\0A\00", align 1
@.str4 = private unnamed_addr constant [9 x i8] c" %d  %d\0A\00", align 1
@.str6 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str7 = private unnamed_addr constant [12 x i8] c"%-10.10s%s\0A\00", align 1
@_DefaultRuneLocale = external global %struct._RuneLocale

; Function Attrs: nounwind optsize ssp uwtable
define %struct.msa_struct* @ReadPhylip(%struct.msafile_struct* %afp) #0 {
  %s = alloca i8*, align 8
  %name = alloca [11 x i8], align 1
  %slen = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct.msafile_struct* %afp, i64 0, metadata !205, metadata !253), !dbg !254
  tail call void @llvm.dbg.declare(metadata [11 x i8]* %name, metadata !210, metadata !253), !dbg !255
  %1 = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 0, !dbg !256
  %2 = load %struct.__sFILE** %1, align 8, !dbg !256, !tbaa !258
  %3 = tail call i32 @feof(%struct.__sFILE* %2) #6, !dbg !264
  %4 = icmp eq i32 %3, 0, !dbg !264
  br i1 %4, label %.preheader, label %83, !dbg !265

.preheader:                                       ; preds = %0, %7
  %5 = call i8* @MSAFileGetLine(%struct.msafile_struct* %afp) #6, !dbg !266
  call void @llvm.dbg.value(metadata i8* %5, i64 0, metadata !207, metadata !253), !dbg !267
  store i8* %5, i8** %s, align 8, !dbg !268, !tbaa !269
  %6 = icmp eq i8* %5, null, !dbg !270
  br i1 %6, label %.loopexit, label %7, !dbg !271

; <label>:7                                       ; preds = %.preheader
  call void @llvm.dbg.value(metadata i8** %s, i64 0, metadata !207, metadata !253), !dbg !267
  %8 = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0), i32* null) #6, !dbg !272
  call void @llvm.dbg.value(metadata i8* %8, i64 0, metadata !208, metadata !253), !dbg !275
  %9 = icmp eq i8* %8, null, !dbg !276
  br i1 %9, label %.preheader, label %10, !dbg !277

; <label>:10                                      ; preds = %7
  call void @llvm.dbg.value(metadata i8** %s, i64 0, metadata !207, metadata !253), !dbg !267
  %11 = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0), i32* null) #6, !dbg !278
  call void @llvm.dbg.value(metadata i8* %11, i64 0, metadata !209, metadata !253), !dbg !280
  %12 = icmp eq i8* %11, null, !dbg !281
  br i1 %12, label %13, label %16, !dbg !282

; <label>:13                                      ; preds = %10
  %14 = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 1, !dbg !283
  %15 = load i8** %14, align 8, !dbg !283, !tbaa !284
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([61 x i8]* @.str1, i64 0, i64 0), i8* %15) #6, !dbg !285
  br label %16, !dbg !285

; <label>:16                                      ; preds = %13, %10
  %17 = call i32 @IsInt(i8* %8) #6, !dbg !286
  %18 = icmp eq i32 %17, 0, !dbg !286
  br i1 %18, label %22, label %19, !dbg !288

; <label>:19                                      ; preds = %16
  %20 = call i32 @IsInt(i8* %11) #6, !dbg !289
  %21 = icmp eq i32 %20, 0, !dbg !289
  br i1 %21, label %22, label %25, !dbg !290

; <label>:22                                      ; preds = %19, %16
  %23 = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 1, !dbg !291
  %24 = load i8** %23, align 8, !dbg !291, !tbaa !284
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([65 x i8]* @.str2, i64 0, i64 0), i8* %24) #6, !dbg !292
  br label %25, !dbg !292

; <label>:25                                      ; preds = %19, %22
  %26 = call i32 @atoi(i8* %8) #6, !dbg !293
  call void @llvm.dbg.value(metadata i32 %26, i64 0, metadata !214, metadata !253), !dbg !294
  br label %.loopexit, !dbg !295

.loopexit:                                        ; preds = %.preheader, %25
  %nseq.0 = phi i32 [ %26, %25 ], [ 0, %.preheader ]
  %27 = call %struct.msa_struct* @MSAAlloc(i32 %nseq.0, i32 0) #6, !dbg !296
  call void @llvm.dbg.value(metadata %struct.msa_struct* %27, i64 0, metadata !206, metadata !253), !dbg !297
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !216, metadata !253), !dbg !298
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !218, metadata !253), !dbg !299
  %28 = getelementptr inbounds [11 x i8]* %name, i64 0, i64 0, !dbg !300
  %29 = getelementptr inbounds [11 x i8]* %name, i64 0, i64 10, !dbg !304
  %30 = getelementptr inbounds %struct.msa_struct* %27, i64 0, i32 39, !dbg !305
  %31 = getelementptr inbounds %struct.msa_struct* %27, i64 0, i32 1, !dbg !306
  %32 = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 2, !dbg !307
  %33 = getelementptr inbounds %struct.msafile_struct* %afp, i64 0, i32 1, !dbg !309
  %34 = getelementptr inbounds %struct.msa_struct* %27, i64 0, i32 0, !dbg !310
  %35 = getelementptr inbounds %struct.msa_struct* %27, i64 0, i32 42, !dbg !311
  br label %.outer, !dbg !312

.outer:                                           ; preds = %67, %.loopexit
  %idx.0.ph = phi i32 [ %., %67 ], [ 0, %.loopexit ]
  %nblock.0.ph = phi i32 [ %.nblock.0, %67 ], [ 0, %.loopexit ]
  br label %36

; <label>:36                                      ; preds = %.outer, %isspace.exit
  %37 = call i8* @MSAFileGetLine(%struct.msafile_struct* %afp) #6, !dbg !313
  call void @llvm.dbg.value(metadata i8* %37, i64 0, metadata !207, metadata !253), !dbg !267
  store i8* %37, i8** %s, align 8, !dbg !314, !tbaa !269
  %38 = icmp eq i8* %37, null, !dbg !315
  br i1 %38, label %81, label %39, !dbg !312

; <label>:39                                      ; preds = %36
  %40 = load i8* %37, align 1, !dbg !316, !tbaa !318
  call void @llvm.dbg.value(metadata i32 %47, i64 0, metadata !237, metadata !253) #5, !dbg !319
  call void @llvm.dbg.value(metadata i32 %47, i64 0, metadata !244, metadata !253) #5, !dbg !321
  call void @llvm.dbg.value(metadata i64 16384, i64 0, metadata !245, metadata !253) #5, !dbg !323
  %isascii.i.i1 = icmp sgt i8 %40, -1, !dbg !324
  br i1 %isascii.i.i1, label %41, label %46, !dbg !324

; <label>:41                                      ; preds = %39
  %42 = sext i8 %40 to i64, !dbg !325
  %43 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %42, !dbg !325
  %44 = load i32* %43, align 4, !dbg !325, !tbaa !326
  %45 = and i32 %44, 16384, !dbg !327
  br label %isspace.exit, !dbg !324

; <label>:46                                      ; preds = %39
  %47 = sext i8 %40 to i32, !dbg !328
  %48 = call i32 @__maskrune(i32 %47, i64 16384) #6, !dbg !329
  br label %isspace.exit, !dbg !324

isspace.exit:                                     ; preds = %41, %46
  %.sink.i.in.i = phi i32 [ %45, %41 ], [ %48, %46 ], !dbg !330
  %.sink.i.i = icmp eq i32 %.sink.i.in.i, 0, !dbg !331
  br i1 %.sink.i.i, label %49, label %36, !dbg !332

; <label>:49                                      ; preds = %isspace.exit
  %50 = icmp eq i32 %nblock.0.ph, 0, !dbg !333
  br i1 %50, label %51, label %61, !dbg !334

; <label>:51                                      ; preds = %49
  call void @llvm.dbg.value(metadata i8** %s, i64 0, metadata !207, metadata !253), !dbg !267
  %52 = load i8** %s, align 8, !dbg !300, !tbaa !269
  %strncpy = call i8* @strncpy(i8* %28, i8* %52, i64 10), !dbg !300
  store i8 0, i8* %29, align 1, !dbg !335, !tbaa !318
  %53 = load %struct.GKI** %30, align 8, !dbg !305, !tbaa !336
  %54 = call i32 @GKIStoreKey(%struct.GKI* %53, i8* %28) #6, !dbg !338
  %55 = call i8* @sre_strdup(i8* %28, i32 -1) #6, !dbg !339
  %56 = sext i32 %idx.0.ph to i64, !dbg !340
  %57 = load i8*** %31, align 8, !dbg !306, !tbaa !341
  %58 = getelementptr inbounds i8** %57, i64 %56, !dbg !340
  store i8* %55, i8** %58, align 8, !dbg !342, !tbaa !269
  call void @llvm.dbg.value(metadata i8** %s, i64 0, metadata !207, metadata !253), !dbg !267
  %59 = load i8** %s, align 8, !dbg !343, !tbaa !269
  %60 = getelementptr inbounds i8* %59, i64 10, !dbg !343
  call void @llvm.dbg.value(metadata i8* %60, i64 0, metadata !207, metadata !253), !dbg !267
  store i8* %60, i8** %s, align 8, !dbg !343, !tbaa !269
  br label %61, !dbg !344

; <label>:61                                      ; preds = %51, %49
  call void @llvm.dbg.value(metadata i8** %s, i64 0, metadata !207, metadata !253), !dbg !267
  call void @llvm.dbg.value(metadata i32* %slen, i64 0, metadata !217, metadata !253), !dbg !345
  %62 = call i8* @sre_strtok(i8** %s, i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0), i32* %slen) #6, !dbg !346
  call void @llvm.dbg.value(metadata i8* %62, i64 0, metadata !208, metadata !253), !dbg !275
  %63 = icmp eq i8* %62, null, !dbg !347
  br i1 %63, label %64, label %67, !dbg !348

; <label>:64                                      ; preds = %61
  %65 = load i32* %32, align 4, !dbg !307, !tbaa !349
  %66 = load i8** %33, align 8, !dbg !309, !tbaa !284
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([55 x i8]* @.str3, i64 0, i64 0), i32 %65, i8* %66) #6, !dbg !350
  br label %67, !dbg !350

; <label>:67                                      ; preds = %64, %61
  %68 = sext i32 %idx.0.ph to i64, !dbg !351
  %69 = load i8*** %34, align 8, !dbg !310, !tbaa !352
  %70 = getelementptr inbounds i8** %69, i64 %68, !dbg !351
  %71 = load i32** %35, align 8, !dbg !311, !tbaa !353
  %72 = getelementptr inbounds i32* %71, i64 %68, !dbg !354
  %73 = load i32* %72, align 4, !dbg !354, !tbaa !326
  call void @llvm.dbg.value(metadata i32* %slen, i64 0, metadata !217, metadata !253), !dbg !345
  %74 = load i32* %slen, align 4, !dbg !355, !tbaa !326
  %75 = call i32 @sre_strcat(i8** %70, i32 %73, i8* %62, i32 %74) #6, !dbg !356
  %76 = load i32** %35, align 8, !dbg !357, !tbaa !353
  %77 = getelementptr inbounds i32* %76, i64 %68, !dbg !358
  store i32 %75, i32* %77, align 4, !dbg !359, !tbaa !326
  %78 = add nsw i32 %idx.0.ph, 1, !dbg !360
  call void @llvm.dbg.value(metadata i32 %78, i64 0, metadata !216, metadata !253), !dbg !298
  %79 = icmp eq i32 %78, %nseq.0, !dbg !361
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !216, metadata !253), !dbg !298
  %. = select i1 %79, i32 0, i32 %78, !dbg !363
  %80 = zext i1 %79 to i32, !dbg !363
  %.nblock.0 = add nsw i32 %80, %nblock.0.ph, !dbg !363
  br label %.outer, !dbg !363

; <label>:81                                      ; preds = %36
  %82 = getelementptr inbounds %struct.msa_struct* %27, i64 0, i32 4, !dbg !364
  store i32 %nseq.0, i32* %82, align 4, !dbg !365, !tbaa !366
  call void @MSAVerifyParse(%struct.msa_struct* %27) #6, !dbg !367
  br label %83, !dbg !368

; <label>:83                                      ; preds = %0, %81
  %.0 = phi %struct.msa_struct* [ %27, %81 ], [ null, %0 ]
  ret %struct.msa_struct* %.0, !dbg !369
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind optsize
declare i32 @feof(%struct.__sFILE* nocapture) #2

; Function Attrs: optsize
declare i8* @MSAFileGetLine(%struct.msafile_struct*) #3

; Function Attrs: optsize
declare i8* @sre_strtok(i8**, i8*, i32*) #3

; Function Attrs: optsize
declare void @Die(i8*, ...) #3

; Function Attrs: optsize
declare i32 @IsInt(i8*) #3

; Function Attrs: nounwind optsize readonly
declare i32 @atoi(i8* nocapture) #4

; Function Attrs: optsize
declare %struct.msa_struct* @MSAAlloc(i32, i32) #3

; Function Attrs: optsize
declare i32 @GKIStoreKey(%struct.GKI*, i8*) #3

; Function Attrs: optsize
declare i8* @sre_strdup(i8*, i32) #3

; Function Attrs: optsize
declare i32 @sre_strcat(i8**, i32, i8*, i32) #3

; Function Attrs: optsize
declare void @MSAVerifyParse(%struct.msa_struct*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @WritePhylip(%struct.__sFILE* nocapture %fp, %struct.msa_struct* nocapture readonly %msa) #0 {
  %buf = alloca [51 x i8], align 16
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !223, metadata !253), !dbg !370
  tail call void @llvm.dbg.value(metadata %struct.msa_struct* %msa, i64 0, metadata !224, metadata !253), !dbg !371
  tail call void @llvm.dbg.value(metadata i32 50, i64 0, metadata !226, metadata !253), !dbg !372
  %1 = getelementptr inbounds [51 x i8]* %buf, i64 0, i64 0, !dbg !373
  call void @llvm.lifetime.start(i64 51, i8* %1) #5, !dbg !373
  tail call void @llvm.dbg.declare(metadata [51 x i8]* %buf, metadata !227, metadata !253), !dbg !374
  %2 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 4, !dbg !375
  %3 = load i32* %2, align 4, !dbg !375, !tbaa !366
  %4 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 3, !dbg !376
  %5 = load i32* %4, align 4, !dbg !376, !tbaa !377
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([9 x i8]* @.str4, i64 0, i64 0), i32 %3, i32 %5) #6, !dbg !378
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !231, metadata !253), !dbg !379
  %7 = load i32* %4, align 4, !dbg !380, !tbaa !377
  %8 = icmp sgt i32 %7, 0, !dbg !383
  br i1 %8, label %.lr.ph4, label %._crit_edge5, !dbg !384

.lr.ph4:                                          ; preds = %0
  %9 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0, !dbg !385
  %10 = getelementptr inbounds [51 x i8]* %buf, i64 0, i64 50, !dbg !390
  %11 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1, !dbg !391
  br label %12, !dbg !384

; <label>:12                                      ; preds = %.lr.ph4, %._crit_edge
  %indvars.iv6 = phi i64 [ 0, %.lr.ph4 ], [ %indvars.iv.next7, %._crit_edge ]
  %13 = icmp sgt i64 %indvars.iv6, 0, !dbg !393
  br i1 %13, label %14, label %.preheader, !dbg !395

; <label>:14                                      ; preds = %12
  %fputc = call i32 @fputc(i32 10, %struct.__sFILE* %fp), !dbg !396
  br label %.preheader, !dbg !396

.preheader:                                       ; preds = %14, %12
  %15 = load i32* %2, align 4, !dbg !397, !tbaa !366
  %16 = icmp sgt i32 %15, 0, !dbg !398
  br i1 %16, label %.lr.ph, label %._crit_edge, !dbg !399

.lr.ph:                                           ; preds = %.preheader, %28
  %indvars.iv = phi i64 [ %indvars.iv.next, %28 ], [ 0, %.preheader ]
  %17 = load i8*** %9, align 8, !dbg !385, !tbaa !352
  %18 = getelementptr inbounds i8** %17, i64 %indvars.iv, !dbg !385
  %19 = load i8** %18, align 8, !dbg !385, !tbaa !269
  %20 = getelementptr inbounds i8* %19, i64 %indvars.iv6, !dbg !385
  %strncpy = call i8* @strncpy(i8* %1, i8* %20, i64 50), !dbg !385
  store i8 0, i8* %10, align 2, !dbg !400, !tbaa !318
  br i1 %13, label %21, label %23, !dbg !401

; <label>:21                                      ; preds = %.lr.ph
  %22 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str6, i64 0, i64 0), i8* %1) #6, !dbg !402
  br label %28, !dbg !402

; <label>:23                                      ; preds = %.lr.ph
  %24 = load i8*** %11, align 8, !dbg !391, !tbaa !341
  %25 = getelementptr inbounds i8** %24, i64 %indvars.iv, !dbg !403
  %26 = load i8** %25, align 8, !dbg !403, !tbaa !269
  %27 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([12 x i8]* @.str7, i64 0, i64 0), i8* %26, i8* %1) #6, !dbg !404
  br label %28

; <label>:28                                      ; preds = %21, %23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !399
  %29 = load i32* %2, align 4, !dbg !397, !tbaa !366
  %30 = sext i32 %29 to i64, !dbg !398
  %31 = icmp slt i64 %indvars.iv.next, %30, !dbg !398
  br i1 %31, label %.lr.ph, label %._crit_edge, !dbg !399

._crit_edge:                                      ; preds = %28, %.preheader
  %indvars.iv.next7 = add nsw i64 %indvars.iv6, 50, !dbg !384
  %32 = load i32* %4, align 4, !dbg !380, !tbaa !377
  %33 = sext i32 %32 to i64, !dbg !383
  %34 = icmp slt i64 %indvars.iv.next7, %33, !dbg !383
  br i1 %34, label %12, label %._crit_edge5, !dbg !384

._crit_edge5:                                     ; preds = %._crit_edge, %0
  call void @llvm.lifetime.end(i64 51, i8* %1) #5, !dbg !405
  ret void, !dbg !405
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: optsize
declare i32 @__maskrune(i32, i64) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8* nocapture readonly, i64) #5

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct.__sFILE* nocapture) #5

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!249, !250, !251}
!llvm.ident = !{!252}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !6, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/phylip.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!5 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!6 = !{!7, !219, !232, !238, !246}
!7 = !DISubprogram(name: "ReadPhylip", scope: !1, file: !1, line: 76, type: !8, isLocal: false, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, function: %struct.msa_struct* (%struct.msafile_struct*)* @ReadPhylip, variables: !204)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !88}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "MSA", file: !12, line: 177, baseType: !13)
!12 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/msa.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!13 = !DICompositeType(tag: DW_TAG_structure_type, name: "msa_struct", file: !12, line: 112, size: 2880, align: 64, elements: !14)
!14 = !{!15, !19, !20, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !42, !44, !45, !46, !47, !48, !49, !50, !51, !52, !54, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !85, !86, !87}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "aseq", scope: !13, file: !12, line: 115, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!18 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "sqname", scope: !13, file: !12, line: 116, baseType: !16, size: 64, align: 64, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "wgt", scope: !13, file: !12, line: 117, baseType: !21, size: 64, align: 64, offset: 128)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!22 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "alen", scope: !13, file: !12, line: 118, baseType: !5, size: 32, align: 32, offset: 192)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "nseq", scope: !13, file: !12, line: 119, baseType: !5, size: 32, align: 32, offset: 224)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !13, file: !12, line: 123, baseType: !5, size: 32, align: 32, offset: 256)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !13, file: !12, line: 124, baseType: !5, size: 32, align: 32, offset: 288)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !13, file: !12, line: 125, baseType: !17, size: 64, align: 64, offset: 320)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !13, file: !12, line: 126, baseType: !17, size: 64, align: 64, offset: 384)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "acc", scope: !13, file: !12, line: 127, baseType: !17, size: 64, align: 64, offset: 448)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "au", scope: !13, file: !12, line: 128, baseType: !17, size: 64, align: 64, offset: 512)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "ss_cons", scope: !13, file: !12, line: 129, baseType: !17, size: 64, align: 64, offset: 576)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "sa_cons", scope: !13, file: !12, line: 130, baseType: !17, size: 64, align: 64, offset: 640)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "rf", scope: !13, file: !12, line: 131, baseType: !17, size: 64, align: 64, offset: 704)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "sqacc", scope: !13, file: !12, line: 132, baseType: !16, size: 64, align: 64, offset: 768)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "sqdesc", scope: !13, file: !12, line: 133, baseType: !16, size: 64, align: 64, offset: 832)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !13, file: !12, line: 134, baseType: !16, size: 64, align: 64, offset: 896)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !13, file: !12, line: 135, baseType: !16, size: 64, align: 64, offset: 960)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "cutoff", scope: !13, file: !12, line: 136, baseType: !39, size: 192, align: 32, offset: 1024)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 192, align: 32, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 6)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "cutoff_is_set", scope: !13, file: !12, line: 137, baseType: !43, size: 192, align: 32, offset: 1216)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 192, align: 32, elements: !40)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "comment", scope: !13, file: !12, line: 144, baseType: !16, size: 64, align: 64, offset: 1408)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "ncomment", scope: !13, file: !12, line: 145, baseType: !5, size: 32, align: 32, offset: 1472)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_ncomment", scope: !13, file: !12, line: 146, baseType: !5, size: 32, align: 32, offset: 1504)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "gf_tag", scope: !13, file: !12, line: 148, baseType: !16, size: 64, align: 64, offset: 1536)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "gf", scope: !13, file: !12, line: 149, baseType: !16, size: 64, align: 64, offset: 1600)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "ngf", scope: !13, file: !12, line: 150, baseType: !5, size: 32, align: 32, offset: 1664)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_ngf", scope: !13, file: !12, line: 151, baseType: !5, size: 32, align: 32, offset: 1696)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "gs_tag", scope: !13, file: !12, line: 153, baseType: !16, size: 64, align: 64, offset: 1728)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "gs", scope: !13, file: !12, line: 154, baseType: !53, size: 64, align: 64, offset: 1792)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "gs_idx", scope: !13, file: !12, line: 155, baseType: !55, size: 64, align: 64, offset: 1856)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "GKI", file: !57, line: 42, baseType: !58)
!57 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/gki.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!58 = !DICompositeType(tag: DW_TAG_structure_type, file: !57, line: 36, size: 192, align: 64, elements: !59)
!59 = !{!60, !68, !69, !70}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !58, file: !57, line: 37, baseType: !61, size: 64, align: 64)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, align: 64)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64, align: 64)
!63 = !DICompositeType(tag: DW_TAG_structure_type, name: "gki_elem", file: !57, line: 26, size: 192, align: 64, elements: !64)
!64 = !{!65, !66, !67}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !63, file: !57, line: 27, baseType: !17, size: 64, align: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !63, file: !57, line: 28, baseType: !5, size: 32, align: 32, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "nxt", scope: !63, file: !57, line: 29, baseType: !62, size: 64, align: 64, offset: 128)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "primelevel", scope: !58, file: !57, line: 39, baseType: !5, size: 32, align: 32, offset: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "nhash", scope: !58, file: !57, line: 40, baseType: !5, size: 32, align: 32, offset: 96)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "nkeys", scope: !58, file: !57, line: 41, baseType: !5, size: 32, align: 32, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "ngs", scope: !13, file: !12, line: 156, baseType: !5, size: 32, align: 32, offset: 1920)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "gc_tag", scope: !13, file: !12, line: 158, baseType: !16, size: 64, align: 64, offset: 1984)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !13, file: !12, line: 159, baseType: !16, size: 64, align: 64, offset: 2048)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "gc_idx", scope: !13, file: !12, line: 160, baseType: !55, size: 64, align: 64, offset: 2112)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "ngc", scope: !13, file: !12, line: 161, baseType: !5, size: 32, align: 32, offset: 2176)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "gr_tag", scope: !13, file: !12, line: 163, baseType: !16, size: 64, align: 64, offset: 2240)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "gr", scope: !13, file: !12, line: 164, baseType: !53, size: 64, align: 64, offset: 2304)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "gr_idx", scope: !13, file: !12, line: 165, baseType: !55, size: 64, align: 64, offset: 2368)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "ngr", scope: !13, file: !12, line: 166, baseType: !5, size: 32, align: 32, offset: 2432)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !13, file: !12, line: 170, baseType: !55, size: 64, align: 64, offset: 2496)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "nseqalloc", scope: !13, file: !12, line: 171, baseType: !5, size: 32, align: 32, offset: 2560)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "nseqlump", scope: !13, file: !12, line: 172, baseType: !5, size: 32, align: 32, offset: 2592)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "sqlen", scope: !13, file: !12, line: 173, baseType: !84, size: 64, align: 64, offset: 2624)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "sslen", scope: !13, file: !12, line: 174, baseType: !84, size: 64, align: 64, offset: 2688)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "salen", scope: !13, file: !12, line: 175, baseType: !84, size: 64, align: 64, offset: 2752)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "lastidx", scope: !13, file: !12, line: 176, baseType: !5, size: 32, align: 32, offset: 2816)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64, align: 64)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "MSAFILE", file: !12, line: 199, baseType: !90)
!90 = !DICompositeType(tag: DW_TAG_structure_type, name: "msafile_struct", file: !12, line: 186, size: 512, align: 64, elements: !91)
!91 = !{!92, !153, !154, !155, !156, !157, !201, !202, !203}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !90, file: !12, line: 187, baseType: !93, size: 64, align: 64)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, align: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !95, line: 153, baseType: !96)
!95 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!96 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !95, line: 122, size: 1216, align: 64, elements: !97)
!97 = !{!98, !101, !102, !103, !105, !106, !111, !112, !113, !117, !121, !131, !137, !138, !141, !142, !146, !150, !151, !152}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !96, file: !95, line: 123, baseType: !99, size: 64, align: 64)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64, align: 64)
!100 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !96, file: !95, line: 124, baseType: !5, size: 32, align: 32, offset: 64)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !96, file: !95, line: 125, baseType: !5, size: 32, align: 32, offset: 96)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !96, file: !95, line: 126, baseType: !104, size: 16, align: 16, offset: 128)
!104 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !96, file: !95, line: 127, baseType: !104, size: 16, align: 16, offset: 144)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !96, file: !95, line: 128, baseType: !107, size: 128, align: 64, offset: 192)
!107 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !95, line: 88, size: 128, align: 64, elements: !108)
!108 = !{!109, !110}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !107, file: !95, line: 89, baseType: !99, size: 64, align: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !107, file: !95, line: 90, baseType: !5, size: 32, align: 32, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !96, file: !95, line: 129, baseType: !5, size: 32, align: 32, offset: 320)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !96, file: !95, line: 132, baseType: !4, size: 64, align: 64, offset: 384)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !96, file: !95, line: 133, baseType: !114, size: 64, align: 64, offset: 448)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64, align: 64)
!115 = !DISubroutineType(types: !116)
!116 = !{!5, !4}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !96, file: !95, line: 134, baseType: !118, size: 64, align: 64, offset: 512)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64, align: 64)
!119 = !DISubroutineType(types: !120)
!120 = !{!5, !4, !17, !5}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !96, file: !95, line: 135, baseType: !122, size: 64, align: 64, offset: 576)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64, align: 64)
!123 = !DISubroutineType(types: !124)
!124 = !{!125, !4, !125, !5}
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !95, line: 77, baseType: !126)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !127, line: 71, baseType: !128)
!127 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !129, line: 46, baseType: !130)
!129 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!130 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !96, file: !95, line: 136, baseType: !132, size: 64, align: 64, offset: 640)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64, align: 64)
!133 = !DISubroutineType(types: !134)
!134 = !{!5, !4, !135, !5}
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64, align: 64)
!136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !96, file: !95, line: 139, baseType: !107, size: 128, align: 64, offset: 704)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !96, file: !95, line: 140, baseType: !139, size: 64, align: 64, offset: 832)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64, align: 64)
!140 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !95, line: 94, flags: DIFlagFwdDecl)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !96, file: !95, line: 141, baseType: !5, size: 32, align: 32, offset: 896)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !96, file: !95, line: 144, baseType: !143, size: 24, align: 8, offset: 928)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 24, align: 8, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 3)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !96, file: !95, line: 145, baseType: !147, size: 8, align: 8, offset: 952)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 8, align: 8, elements: !148)
!148 = !{!149}
!149 = !DISubrange(count: 1)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !96, file: !95, line: 148, baseType: !107, size: 128, align: 64, offset: 960)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !96, file: !95, line: 151, baseType: !5, size: 32, align: 32, offset: 1088)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !96, file: !95, line: 152, baseType: !125, size: 64, align: 64, offset: 1152)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "fname", scope: !90, file: !12, line: 188, baseType: !17, size: 64, align: 64, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "linenumber", scope: !90, file: !12, line: 189, baseType: !5, size: 32, align: 32, offset: 128)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !90, file: !12, line: 191, baseType: !17, size: 64, align: 64, offset: 192)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !90, file: !12, line: 192, baseType: !5, size: 32, align: 32, offset: 256)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "ssi", scope: !90, file: !12, line: 194, baseType: !158, size: 64, align: 64, offset: 320)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64, align: 64)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSIFILE", file: !160, line: 76, baseType: !161)
!160 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/ssi.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!161 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssifile_s", file: !160, line: 49, size: 1152, align: 64, elements: !162)
!162 = !{!163, !164, !168, !171, !172, !173, !174, !175, !176, !177, !178, !179, !191, !192, !193, !194, !195, !196, !198, !199, !200}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "fp", scope: !161, file: !160, line: 50, baseType: !93, size: 64, align: 64)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !161, file: !160, line: 51, baseType: !165, size: 32, align: 32, offset: 64)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqd_uint32", file: !166, line: 41, baseType: !167)
!166 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/squid.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!167 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nfiles", scope: !161, file: !160, line: 52, baseType: !169, size: 16, align: 16, offset: 96)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqd_uint16", file: !166, line: 40, baseType: !170)
!170 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nprimary", scope: !161, file: !160, line: 53, baseType: !165, size: 32, align: 32, offset: 128)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nsecondary", scope: !161, file: !160, line: 54, baseType: !165, size: 32, align: 32, offset: 160)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "flen", scope: !161, file: !160, line: 55, baseType: !165, size: 32, align: 32, offset: 192)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "plen", scope: !161, file: !160, line: 56, baseType: !165, size: 32, align: 32, offset: 224)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "slen", scope: !161, file: !160, line: 57, baseType: !165, size: 32, align: 32, offset: 256)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "frecsize", scope: !161, file: !160, line: 58, baseType: !165, size: 32, align: 32, offset: 288)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "precsize", scope: !161, file: !160, line: 59, baseType: !165, size: 32, align: 32, offset: 320)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "srecsize", scope: !161, file: !160, line: 60, baseType: !165, size: 32, align: 32, offset: 352)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "foffset", scope: !161, file: !160, line: 61, baseType: !180, size: 128, align: 64, offset: 384)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSIOFFSET", file: !160, line: 42, baseType: !181)
!181 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssioffset_s", file: !160, line: 35, size: 128, align: 64, elements: !182)
!182 = !{!183, !184}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !181, file: !160, line: 36, baseType: !18, size: 8, align: 8)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "off", scope: !181, file: !160, line: 40, baseType: !185, size: 64, align: 64, offset: 64)
!185 = !DICompositeType(tag: DW_TAG_union_type, scope: !181, file: !160, line: 37, size: 64, align: 64, elements: !186)
!186 = !{!187, !188}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "i32", scope: !185, file: !160, line: 38, baseType: !165, size: 32, align: 32)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "i64", scope: !185, file: !160, line: 39, baseType: !189, size: 64, align: 64)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqd_uint64", file: !166, line: 42, baseType: !190)
!190 = !DIBasicType(name: "long long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "poffset", scope: !161, file: !160, line: 62, baseType: !180, size: 128, align: 64, offset: 512)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "soffset", scope: !161, file: !160, line: 63, baseType: !180, size: 128, align: 64, offset: 640)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "imode", scope: !161, file: !160, line: 65, baseType: !18, size: 8, align: 8, offset: 768)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "smode", scope: !161, file: !160, line: 66, baseType: !18, size: 8, align: 8, offset: 776)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !161, file: !160, line: 70, baseType: !16, size: 64, align: 64, offset: 832)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "fileformat", scope: !161, file: !160, line: 71, baseType: !197, size: 64, align: 64, offset: 896)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64, align: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "fileflags", scope: !161, file: !160, line: 72, baseType: !197, size: 64, align: 64, offset: 960)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "bpl", scope: !161, file: !160, line: 73, baseType: !197, size: 64, align: 64, offset: 1024)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "rpl", scope: !161, file: !160, line: 74, baseType: !197, size: 64, align: 64, offset: 1088)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "do_gzip", scope: !90, file: !12, line: 196, baseType: !5, size: 32, align: 32, offset: 384)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "do_stdin", scope: !90, file: !12, line: 197, baseType: !5, size: 32, align: 32, offset: 416)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !90, file: !12, line: 198, baseType: !5, size: 32, align: 32, offset: 448)
!204 = !{!205, !206, !207, !208, !209, !210, !214, !215, !216, !217, !218}
!205 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "afp", arg: 1, scope: !7, file: !1, line: 76, type: !88)
!206 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "msa", scope: !7, file: !1, line: 78, type: !10)
!207 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !7, file: !1, line: 79, type: !17)
!208 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s1", scope: !7, file: !1, line: 79, type: !17)
!209 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s2", scope: !7, file: !1, line: 79, type: !17)
!210 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !7, file: !1, line: 80, type: !211)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 88, align: 8, elements: !212)
!212 = !{!213}
!213 = !DISubrange(count: 11)
!214 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nseq", scope: !7, file: !1, line: 81, type: !5)
!215 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "alen", scope: !7, file: !1, line: 81, type: !5)
!216 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "idx", scope: !7, file: !1, line: 82, type: !5)
!217 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "slen", scope: !7, file: !1, line: 83, type: !5)
!218 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nblock", scope: !7, file: !1, line: 84, type: !5)
!219 = !DISubprogram(name: "WritePhylip", scope: !1, file: !1, line: 146, type: !220, isLocal: false, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, %struct.msa_struct*)* @WritePhylip, variables: !222)
!220 = !DISubroutineType(types: !221)
!221 = !{null, !93, !10}
!222 = !{!223, !224, !225, !226, !227, !231}
!223 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !219, file: !1, line: 146, type: !93)
!224 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "msa", arg: 2, scope: !219, file: !1, line: 146, type: !10)
!225 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "idx", scope: !219, file: !1, line: 148, type: !5)
!226 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cpl", scope: !219, file: !1, line: 149, type: !5)
!227 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !219, file: !1, line: 150, type: !228)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 408, align: 8, elements: !229)
!229 = !{!230}
!230 = !DISubrange(count: 51)
!231 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pos", scope: !219, file: !1, line: 151, type: !5)
!232 = !DISubprogram(name: "isspace", scope: !233, file: !233, line: 267, type: !234, isLocal: false, isDefinition: true, scopeLine: 268, flags: DIFlagPrototyped, isOptimized: true, variables: !236)
!233 = !DIFile(filename: "/usr/include/ctype.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!234 = !DISubroutineType(types: !235)
!235 = !{!5, !5}
!236 = !{!237}
!237 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !232, file: !233, line: 267, type: !5)
!238 = !DISubprogram(name: "__istype", scope: !233, file: !233, line: 153, type: !239, isLocal: false, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: true, variables: !243)
!239 = !DISubroutineType(types: !240)
!240 = !{!5, !241, !242}
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_ct_rune_t", file: !129, line: 70, baseType: !5)
!242 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!243 = !{!244, !245}
!244 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !238, file: !233, line: 153, type: !241)
!245 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_f", arg: 2, scope: !238, file: !233, line: 153, type: !242)
!246 = !DISubprogram(name: "isascii", scope: !233, file: !233, line: 135, type: !234, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, variables: !247)
!247 = !{!248}
!248 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !246, file: !233, line: 135, type: !5)
!249 = !{i32 2, !"Dwarf Version", i32 2}
!250 = !{i32 2, !"Debug Info Version", i32 700000003}
!251 = !{i32 1, !"PIC Level", i32 2}
!252 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!253 = !DIExpression()
!254 = !DILocation(line: 76, column: 21, scope: !7)
!255 = !DILocation(line: 80, column: 9, scope: !7)
!256 = !DILocation(line: 86, column: 17, scope: !257)
!257 = distinct !DILexicalBlock(scope: !7, file: !1, line: 86, column: 7)
!258 = !{!259, !260, i64 0}
!259 = !{!"msafile_struct", !260, i64 0, !260, i64 8, !263, i64 16, !260, i64 24, !263, i64 32, !260, i64 40, !263, i64 48, !263, i64 52, !263, i64 56}
!260 = !{!"any pointer", !261, i64 0}
!261 = !{!"omnipotent char", !262, i64 0}
!262 = !{!"Simple C/C++ TBAA"}
!263 = !{!"int", !261, i64 0}
!264 = !DILocation(line: 86, column: 7, scope: !257)
!265 = !DILocation(line: 86, column: 7, scope: !7)
!266 = !DILocation(line: 92, column: 15, scope: !7)
!267 = !DILocation(line: 79, column: 9, scope: !7)
!268 = !DILocation(line: 92, column: 13, scope: !7)
!269 = !{!260, !260, i64 0}
!270 = !DILocation(line: 92, column: 36, scope: !7)
!271 = !DILocation(line: 92, column: 3, scope: !7)
!272 = !DILocation(line: 94, column: 17, scope: !273)
!273 = distinct !DILexicalBlock(scope: !274, file: !1, line: 94, column: 11)
!274 = distinct !DILexicalBlock(scope: !7, file: !1, line: 93, column: 5)
!275 = !DILocation(line: 79, column: 13, scope: !7)
!276 = !DILocation(line: 94, column: 51, scope: !273)
!277 = !DILocation(line: 94, column: 11, scope: !274)
!278 = !DILocation(line: 95, column: 17, scope: !279)
!279 = distinct !DILexicalBlock(scope: !274, file: !1, line: 95, column: 11)
!280 = !DILocation(line: 79, column: 18, scope: !7)
!281 = !DILocation(line: 95, column: 51, scope: !279)
!282 = !DILocation(line: 95, column: 11, scope: !274)
!283 = !DILocation(line: 96, column: 76, scope: !279)
!284 = !{!259, !260, i64 8}
!285 = !DILocation(line: 96, column: 2, scope: !279)
!286 = !DILocation(line: 97, column: 13, scope: !287)
!287 = distinct !DILexicalBlock(scope: !274, file: !1, line: 97, column: 11)
!288 = !DILocation(line: 97, column: 23, scope: !287)
!289 = !DILocation(line: 97, column: 28, scope: !287)
!290 = !DILocation(line: 97, column: 11, scope: !274)
!291 = !DILocation(line: 98, column: 80, scope: !287)
!292 = !DILocation(line: 98, column: 2, scope: !287)
!293 = !DILocation(line: 99, column: 14, scope: !274)
!294 = !DILocation(line: 81, column: 9, scope: !7)
!295 = !DILocation(line: 101, column: 7, scope: !274)
!296 = !DILocation(line: 104, column: 9, scope: !7)
!297 = !DILocation(line: 78, column: 9, scope: !7)
!298 = !DILocation(line: 82, column: 9, scope: !7)
!299 = !DILocation(line: 84, column: 9, scope: !7)
!300 = !DILocation(line: 113, column: 2, scope: !301)
!301 = distinct !DILexicalBlock(scope: !302, file: !1, line: 112, column: 24)
!302 = distinct !DILexicalBlock(scope: !303, file: !1, line: 112, column: 11)
!303 = distinct !DILexicalBlock(scope: !7, file: !1, line: 108, column: 5)
!304 = !DILocation(line: 114, column: 2, scope: !301)
!305 = !DILocation(line: 115, column: 19, scope: !301)
!306 = !DILocation(line: 116, column: 7, scope: !301)
!307 = !DILocation(line: 122, column: 11, scope: !308)
!308 = distinct !DILexicalBlock(scope: !303, file: !1, line: 120, column: 11)
!309 = !DILocation(line: 122, column: 28, scope: !308)
!310 = !DILocation(line: 123, column: 43, scope: !303)
!311 = !DILocation(line: 123, column: 60, scope: !303)
!312 = !DILocation(line: 107, column: 3, scope: !7)
!313 = !DILocation(line: 107, column: 15, scope: !7)
!314 = !DILocation(line: 107, column: 13, scope: !7)
!315 = !DILocation(line: 107, column: 36, scope: !7)
!316 = !DILocation(line: 110, column: 25, scope: !317)
!317 = distinct !DILexicalBlock(scope: !303, file: !1, line: 110, column: 11)
!318 = !{!261, !261, i64 0}
!319 = !DILocation(line: 267, column: 13, scope: !232, inlinedAt: !320)
!320 = distinct !DILocation(line: 110, column: 11, scope: !317)
!321 = !DILocation(line: 153, column: 29, scope: !238, inlinedAt: !322)
!322 = distinct !DILocation(line: 269, column: 10, scope: !232, inlinedAt: !320)
!323 = !DILocation(line: 153, column: 47, scope: !238, inlinedAt: !322)
!324 = !DILocation(line: 158, column: 10, scope: !238, inlinedAt: !322)
!325 = !DILocation(line: 158, column: 27, scope: !238, inlinedAt: !322)
!326 = !{!263, !263, i64 0}
!327 = !DILocation(line: 158, column: 25, scope: !238, inlinedAt: !322)
!328 = !DILocation(line: 110, column: 19, scope: !317)
!329 = !DILocation(line: 159, column: 7, scope: !238, inlinedAt: !322)
!330 = !DILocation(line: 110, column: 11, scope: !317)
!331 = !DILocation(line: 269, column: 10, scope: !232, inlinedAt: !320)
!332 = !DILocation(line: 110, column: 11, scope: !303)
!333 = !DILocation(line: 112, column: 18, scope: !302)
!334 = !DILocation(line: 112, column: 11, scope: !303)
!335 = !DILocation(line: 114, column: 11, scope: !301)
!336 = !{!337, !260, i64 312}
!337 = !{!"msa_struct", !260, i64 0, !260, i64 8, !260, i64 16, !263, i64 24, !263, i64 28, !263, i64 32, !263, i64 36, !260, i64 40, !260, i64 48, !260, i64 56, !260, i64 64, !260, i64 72, !260, i64 80, !260, i64 88, !260, i64 96, !260, i64 104, !260, i64 112, !260, i64 120, !261, i64 128, !261, i64 152, !260, i64 176, !263, i64 184, !263, i64 188, !260, i64 192, !260, i64 200, !263, i64 208, !263, i64 212, !260, i64 216, !260, i64 224, !260, i64 232, !263, i64 240, !260, i64 248, !260, i64 256, !260, i64 264, !263, i64 272, !260, i64 280, !260, i64 288, !260, i64 296, !263, i64 304, !260, i64 312, !263, i64 320, !263, i64 324, !260, i64 328, !260, i64 336, !260, i64 344, !263, i64 352}
!338 = !DILocation(line: 115, column: 2, scope: !301)
!339 = !DILocation(line: 116, column: 21, scope: !301)
!340 = !DILocation(line: 116, column: 2, scope: !301)
!341 = !{!337, !260, i64 8}
!342 = !DILocation(line: 116, column: 19, scope: !301)
!343 = !DILocation(line: 117, column: 4, scope: !301)
!344 = !DILocation(line: 118, column: 7, scope: !301)
!345 = !DILocation(line: 83, column: 9, scope: !7)
!346 = !DILocation(line: 120, column: 17, scope: !308)
!347 = !DILocation(line: 120, column: 52, scope: !308)
!348 = !DILocation(line: 120, column: 11, scope: !303)
!349 = !{!259, !263, i64 16}
!350 = !DILocation(line: 121, column: 2, scope: !308)
!351 = !DILocation(line: 123, column: 38, scope: !303)
!352 = !{!337, !260, i64 0}
!353 = !{!337, !260, i64 328}
!354 = !DILocation(line: 123, column: 55, scope: !303)
!355 = !DILocation(line: 123, column: 76, scope: !303)
!356 = !DILocation(line: 123, column: 25, scope: !303)
!357 = !DILocation(line: 123, column: 12, scope: !303)
!358 = !DILocation(line: 123, column: 7, scope: !303)
!359 = !DILocation(line: 123, column: 23, scope: !303)
!360 = !DILocation(line: 125, column: 10, scope: !303)
!361 = !DILocation(line: 126, column: 15, scope: !362)
!362 = distinct !DILexicalBlock(scope: !303, file: !1, line: 126, column: 11)
!363 = !DILocation(line: 126, column: 11, scope: !303)
!364 = !DILocation(line: 128, column: 8, scope: !7)
!365 = !DILocation(line: 128, column: 13, scope: !7)
!366 = !{!337, !263, i64 28}
!367 = !DILocation(line: 129, column: 3, scope: !7)
!368 = !DILocation(line: 130, column: 3, scope: !7)
!369 = !DILocation(line: 131, column: 1, scope: !7)
!370 = !DILocation(line: 146, column: 19, scope: !219)
!371 = !DILocation(line: 146, column: 28, scope: !219)
!372 = !DILocation(line: 149, column: 10, scope: !219)
!373 = !DILocation(line: 150, column: 3, scope: !219)
!374 = !DILocation(line: 150, column: 10, scope: !219)
!375 = !DILocation(line: 155, column: 33, scope: !219)
!376 = !DILocation(line: 155, column: 44, scope: !219)
!377 = !{!337, !263, i64 24}
!378 = !DILocation(line: 155, column: 3, scope: !219)
!379 = !DILocation(line: 151, column: 10, scope: !219)
!380 = !DILocation(line: 163, column: 28, scope: !381)
!381 = distinct !DILexicalBlock(scope: !382, file: !1, line: 163, column: 3)
!382 = distinct !DILexicalBlock(scope: !219, file: !1, line: 163, column: 3)
!383 = !DILocation(line: 163, column: 21, scope: !381)
!384 = !DILocation(line: 163, column: 3, scope: !382)
!385 = !DILocation(line: 169, column: 4, scope: !386)
!386 = distinct !DILexicalBlock(scope: !387, file: !1, line: 168, column: 2)
!387 = distinct !DILexicalBlock(scope: !388, file: !1, line: 167, column: 7)
!388 = distinct !DILexicalBlock(scope: !389, file: !1, line: 167, column: 7)
!389 = distinct !DILexicalBlock(scope: !381, file: !1, line: 164, column: 5)
!390 = !DILocation(line: 170, column: 4, scope: !386)
!391 = !DILocation(line: 172, column: 50, scope: !392)
!392 = distinct !DILexicalBlock(scope: !386, file: !1, line: 171, column: 8)
!393 = !DILocation(line: 165, column: 15, scope: !394)
!394 = distinct !DILexicalBlock(scope: !389, file: !1, line: 165, column: 11)
!395 = !DILocation(line: 165, column: 11, scope: !389)
!396 = !DILocation(line: 165, column: 20, scope: !394)
!397 = !DILocation(line: 167, column: 32, scope: !387)
!398 = !DILocation(line: 167, column: 25, scope: !387)
!399 = !DILocation(line: 167, column: 7, scope: !388)
!400 = !DILocation(line: 170, column: 13, scope: !386)
!401 = !DILocation(line: 171, column: 8, scope: !386)
!402 = !DILocation(line: 171, column: 17, scope: !392)
!403 = !DILocation(line: 172, column: 45, scope: !392)
!404 = !DILocation(line: 172, column: 17, scope: !392)
!405 = !DILocation(line: 176, column: 1, scope: !219)
