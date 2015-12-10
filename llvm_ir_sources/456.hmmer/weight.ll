; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/weight.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct._RuneLocale = type { [8 x i8], [32 x i8], i32 (i8*, i64, i8**)*, i32 (i32, i8*, i64, i8**)*, i32, [256 x i32], [256 x i32], [256 x i32], %struct._RuneRange, %struct._RuneRange, %struct._RuneRange, i8*, i32, i32, %struct._RuneCharClass* }
%struct._RuneRange = type { i32, %struct._RuneEntry* }
%struct._RuneEntry = type { i32, i32, i32, i32* }
%struct._RuneCharClass = type { [14 x i8], i32 }
%struct.phylo_s = type { i32, i32, i32, float, float, float, i8*, i32 }
%struct.msa_struct = type { i8**, i8**, float*, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i8**, i8**, i8**, [6 x float], [6 x i32], i8**, i32, i32, i8**, i8**, i32, i32, i8**, i8***, %struct.GKI*, i32, i8**, i8**, %struct.GKI*, i32, i8**, i8***, %struct.GKI*, i32, %struct.GKI*, i32, i32, i32*, i32*, i32*, i32 }
%struct.GKI = type { %struct.gki_elem**, i32, i32, i32 }
%struct.gki_elem = type { i8*, i32, %struct.gki_elem* }

@.str = private unnamed_addr constant [17 x i8] c"Cluster() failed\00", align 1
@.str1 = private unnamed_addr constant [64 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/weight.c\00", align 1
@.str3 = private unnamed_addr constant [49 x i8] c"removing %12s -- fractional identity %.2f to %s\0A\00", align 1
@.str4 = private unnamed_addr constant [14 x i8] c"chose %d: %s\0A\00", align 1
@_DefaultRuneLocale = external global %struct._RuneLocale
@.str5 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1

; Function Attrs: nounwind optsize ssp uwtable
define void @GSCWeights(i8** %aseq, i32 %nseq, i32 %alen, float* nocapture %wgt) #0 {
  %dmx = alloca float**, align 8
  %tree = alloca %struct.phylo_s*, align 8
  tail call void @llvm.dbg.value(metadata i8** %aseq, i64 0, metadata !25, metadata !292), !dbg !293
  tail call void @llvm.dbg.value(metadata i32 %nseq, i64 0, metadata !26, metadata !292), !dbg !294
  tail call void @llvm.dbg.value(metadata i32 %alen, i64 0, metadata !27, metadata !292), !dbg !295
  tail call void @llvm.dbg.value(metadata float* %wgt, i64 0, metadata !28, metadata !292), !dbg !296
  %1 = icmp eq i32 %nseq, 1, !dbg !297
  br i1 %1, label %2, label %3, !dbg !299

; <label>:2                                       ; preds = %0
  store float 1.000000e+00, float* %wgt, align 4, !dbg !300, !tbaa !302
  br label %43, !dbg !306

; <label>:3                                       ; preds = %0
  tail call void @llvm.dbg.value(metadata float*** %dmx, i64 0, metadata !29, metadata !292), !dbg !307
  call void @MakeDiffMx(i8** %aseq, i32 %nseq, float*** %dmx) #5, !dbg !308
  call void @llvm.dbg.value(metadata float*** %dmx, i64 0, metadata !29, metadata !292), !dbg !307
  %4 = load float*** %dmx, align 8, !dbg !309, !tbaa !311
  call void @llvm.dbg.value(metadata %struct.phylo_s** %tree, i64 0, metadata !30, metadata !292), !dbg !313
  %5 = call i32 @Cluster(float** %4, i32 %nseq, i32 2, %struct.phylo_s** %tree) #5, !dbg !314
  %6 = icmp eq i32 %5, 0, !dbg !314
  br i1 %6, label %7, label %8, !dbg !315

; <label>:7                                       ; preds = %3
  call void (i8*, ...)* @Die(i8* getelementptr inbounds ([17 x i8]* @.str, i64 0, i64 0)) #5, !dbg !316
  br label %8, !dbg !316

; <label>:8                                       ; preds = %3, %7
  %9 = shl i32 %nseq, 1, !dbg !317
  %10 = add nsw i32 %9, -1, !dbg !317
  %11 = sext i32 %10 to i64, !dbg !317
  %12 = shl nsw i64 %11, 2, !dbg !317
  %13 = call i8* @sre_malloc(i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 67, i64 %12) #5, !dbg !317
  %14 = bitcast i8* %13 to float*, !dbg !317
  call void @llvm.dbg.value(metadata float* %14, i64 0, metadata !42, metadata !292), !dbg !318
  %15 = call i8* @sre_malloc(i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 68, i64 %12) #5, !dbg !319
  %16 = bitcast i8* %15 to float*, !dbg !319
  call void @llvm.dbg.value(metadata float* %16, i64 0, metadata !43, metadata !292), !dbg !320
  %17 = call i8* @sre_malloc(i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 69, i64 %12) #5, !dbg !321
  %18 = bitcast i8* %17 to float*, !dbg !321
  call void @llvm.dbg.value(metadata float* %18, i64 0, metadata !44, metadata !292), !dbg !322
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !45, metadata !292), !dbg !323
  %19 = icmp sgt i32 %nseq, 0, !dbg !324
  br i1 %19, label %.lr.ph4, label %._crit_edge.critedge, !dbg !327

.lr.ph4:                                          ; preds = %8
  %20 = add i32 %nseq, -1, !dbg !327
  br label %21, !dbg !327

; <label>:21                                      ; preds = %21, %.lr.ph4
  %indvars.iv7 = phi i64 [ 0, %.lr.ph4 ], [ %indvars.iv.next8, %21 ]
  %22 = getelementptr inbounds float* %16, i64 %indvars.iv7, !dbg !328
  store float 0.000000e+00, float* %22, align 4, !dbg !329, !tbaa !302
  %23 = getelementptr inbounds float* %14, i64 %indvars.iv7, !dbg !330
  store float 0.000000e+00, float* %23, align 4, !dbg !331, !tbaa !302
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1, !dbg !327
  %lftr.wideiv9 = trunc i64 %indvars.iv7 to i32, !dbg !327
  %exitcond10 = icmp eq i32 %lftr.wideiv9, %20, !dbg !327
  br i1 %exitcond10, label %._crit_edge5, label %21, !dbg !327

._crit_edge5:                                     ; preds = %21
  call void @llvm.dbg.value(metadata %struct.phylo_s** %tree, i64 0, metadata !30, metadata !292), !dbg !313
  %24 = load %struct.phylo_s** %tree, align 8, !dbg !332, !tbaa !311
  call fastcc void @upweight(%struct.phylo_s* %24, i32 %nseq, float* %14, float* %16, i32 %nseq) #6, !dbg !333
  %25 = sitofp i32 %nseq to float, !dbg !334
  %26 = sext i32 %nseq to i64, !dbg !335
  %27 = getelementptr inbounds float* %18, i64 %26, !dbg !335
  store float %25, float* %27, align 4, !dbg !336, !tbaa !302
  call void @llvm.dbg.value(metadata %struct.phylo_s** %tree, i64 0, metadata !30, metadata !292), !dbg !313
  %28 = load %struct.phylo_s** %tree, align 8, !dbg !337, !tbaa !311
  call fastcc void @downweight(%struct.phylo_s* %28, i32 %nseq, float* %14, float* %16, float* %18, i32 %nseq) #6, !dbg !338
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !45, metadata !292), !dbg !323
  br i1 %19, label %.lr.ph, label %._crit_edge, !dbg !339

.lr.ph:                                           ; preds = %._crit_edge5
  %29 = add i32 %nseq, -1, !dbg !339
  br label %30, !dbg !339

; <label>:30                                      ; preds = %30, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %30 ]
  %31 = getelementptr inbounds float* %18, i64 %indvars.iv, !dbg !341
  %32 = bitcast float* %31 to i32*, !dbg !341
  %33 = load i32* %32, align 4, !dbg !341, !tbaa !302
  %34 = getelementptr inbounds float* %wgt, i64 %indvars.iv, !dbg !343
  %35 = bitcast float* %34 to i32*, !dbg !344
  store i32 %33, i32* %35, align 4, !dbg !344, !tbaa !302
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !339
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !339
  %exitcond = icmp eq i32 %lftr.wideiv, %29, !dbg !339
  br i1 %exitcond, label %._crit_edge, label %30, !dbg !339

._crit_edge.critedge:                             ; preds = %8
  call void @llvm.dbg.value(metadata %struct.phylo_s** %tree, i64 0, metadata !30, metadata !292), !dbg !313
  %36 = load %struct.phylo_s** %tree, align 8, !dbg !332, !tbaa !311
  call fastcc void @upweight(%struct.phylo_s* %36, i32 %nseq, float* %14, float* %16, i32 %nseq) #6, !dbg !333
  %37 = sitofp i32 %nseq to float, !dbg !334
  %38 = sext i32 %nseq to i64, !dbg !335
  %39 = getelementptr inbounds float* %18, i64 %38, !dbg !335
  store float %37, float* %39, align 4, !dbg !336, !tbaa !302
  call void @llvm.dbg.value(metadata %struct.phylo_s** %tree, i64 0, metadata !30, metadata !292), !dbg !313
  %40 = load %struct.phylo_s** %tree, align 8, !dbg !337, !tbaa !311
  call fastcc void @downweight(%struct.phylo_s* %40, i32 %nseq, float* %14, float* %16, float* %18, i32 %nseq) #6, !dbg !338
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !45, metadata !292), !dbg !323
  br label %._crit_edge

._crit_edge:                                      ; preds = %30, %._crit_edge.critedge, %._crit_edge5
  call void @llvm.dbg.value(metadata float*** %dmx, i64 0, metadata !29, metadata !292), !dbg !307
  %41 = load float*** %dmx, align 8, !dbg !345, !tbaa !311
  call void @FMX2Free(float** %41) #5, !dbg !346
  call void @llvm.dbg.value(metadata %struct.phylo_s** %tree, i64 0, metadata !30, metadata !292), !dbg !313
  %42 = load %struct.phylo_s** %tree, align 8, !dbg !347, !tbaa !311
  call void @FreePhylo(%struct.phylo_s* %42, i32 %nseq) #5, !dbg !348
  call void @free(i8* %13) #6, !dbg !349
  call void @free(i8* %15) #6, !dbg !350
  call void @free(i8* %17) #6, !dbg !351
  br label %43, !dbg !352

; <label>:43                                      ; preds = %._crit_edge, %2
  ret void, !dbg !352
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: optsize
declare void @MakeDiffMx(i8**, i32, float***) #2

; Function Attrs: optsize
declare i32 @Cluster(float**, i32, i32, %struct.phylo_s**) #2

; Function Attrs: optsize
declare void @Die(i8*, ...) #2

; Function Attrs: optsize
declare i8* @sre_malloc(i8*, i32, i64) #2

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @upweight(%struct.phylo_s* readonly %tree, i32 %nseq, float* %lwt, float* %rwt, i32 %node) #0 {
  tail call void @llvm.dbg.value(metadata %struct.phylo_s* %tree, i64 0, metadata !223, metadata !292), !dbg !353
  tail call void @llvm.dbg.value(metadata i32 %nseq, i64 0, metadata !224, metadata !292), !dbg !354
  tail call void @llvm.dbg.value(metadata float* %lwt, i64 0, metadata !225, metadata !292), !dbg !355
  tail call void @llvm.dbg.value(metadata float* %rwt, i64 0, metadata !226, metadata !292), !dbg !356
  tail call void @llvm.dbg.value(metadata i32 %node, i64 0, metadata !227, metadata !292), !dbg !357
  %1 = sub nsw i32 %node, %nseq, !dbg !358
  %2 = sext i32 %1 to i64, !dbg !359
  %3 = getelementptr inbounds %struct.phylo_s* %tree, i64 %2, i32 1, !dbg !360
  %4 = load i32* %3, align 4, !dbg !360, !tbaa !361
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !228, metadata !292), !dbg !364
  %5 = icmp slt i32 %4, %nseq, !dbg !365
  br i1 %5, label %7, label %6, !dbg !367

; <label>:6                                       ; preds = %0
  tail call fastcc void @upweight(%struct.phylo_s* %tree, i32 %nseq, float* %lwt, float* %rwt, i32 %4) #6, !dbg !368
  br label %7, !dbg !368

; <label>:7                                       ; preds = %0, %6
  %8 = getelementptr inbounds %struct.phylo_s* %tree, i64 %2, i32 2, !dbg !369
  %9 = load i32* %8, align 4, !dbg !369, !tbaa !370
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !229, metadata !292), !dbg !371
  %10 = icmp slt i32 %9, %nseq, !dbg !372
  br i1 %10, label %12, label %11, !dbg !374

; <label>:11                                      ; preds = %7
  tail call fastcc void @upweight(%struct.phylo_s* %tree, i32 %nseq, float* %lwt, float* %rwt, i32 %9) #6, !dbg !375
  br label %12, !dbg !375

; <label>:12                                      ; preds = %7, %11
  %13 = sext i32 %4 to i64, !dbg !376
  %14 = getelementptr inbounds float* %lwt, i64 %13, !dbg !376
  %15 = load float* %14, align 4, !dbg !376, !tbaa !302
  %16 = getelementptr inbounds float* %rwt, i64 %13, !dbg !377
  %17 = load float* %16, align 4, !dbg !377, !tbaa !302
  %18 = fadd float %15, %17, !dbg !378
  %19 = getelementptr inbounds %struct.phylo_s* %tree, i64 %2, i32 4, !dbg !379
  %20 = load float* %19, align 4, !dbg !379, !tbaa !380
  %21 = fadd float %18, %20, !dbg !381
  %22 = sext i32 %node to i64, !dbg !382
  %23 = getelementptr inbounds float* %lwt, i64 %22, !dbg !382
  store float %21, float* %23, align 4, !dbg !383, !tbaa !302
  %24 = sext i32 %9 to i64, !dbg !384
  %25 = getelementptr inbounds float* %lwt, i64 %24, !dbg !384
  %26 = load float* %25, align 4, !dbg !384, !tbaa !302
  %27 = getelementptr inbounds float* %rwt, i64 %24, !dbg !385
  %28 = load float* %27, align 4, !dbg !385, !tbaa !302
  %29 = fadd float %26, %28, !dbg !386
  %30 = getelementptr inbounds %struct.phylo_s* %tree, i64 %2, i32 5, !dbg !387
  %31 = load float* %30, align 4, !dbg !387, !tbaa !388
  %32 = fadd float %29, %31, !dbg !389
  %33 = getelementptr inbounds float* %rwt, i64 %22, !dbg !390
  store float %32, float* %33, align 4, !dbg !391, !tbaa !302
  ret void, !dbg !392
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @downweight(%struct.phylo_s* readonly %tree, i32 %nseq, float* readonly %lwt, float* readonly %rwt, float* %fwt, i32 %node) #0 {
  br label %tailrecurse

tailrecurse:                                      ; preds = %63, %0
  %node.tr = phi i32 [ %node, %0 ], [ %6, %63 ]
  tail call void @llvm.dbg.value(metadata %struct.phylo_s* %tree, i64 0, metadata !234, metadata !292), !dbg !393
  tail call void @llvm.dbg.value(metadata i32 %nseq, i64 0, metadata !235, metadata !292), !dbg !394
  tail call void @llvm.dbg.value(metadata float* %lwt, i64 0, metadata !236, metadata !292), !dbg !395
  tail call void @llvm.dbg.value(metadata float* %rwt, i64 0, metadata !237, metadata !292), !dbg !396
  tail call void @llvm.dbg.value(metadata float* %fwt, i64 0, metadata !238, metadata !292), !dbg !397
  tail call void @llvm.dbg.value(metadata i32 %node.tr, i64 0, metadata !239, metadata !292), !dbg !398
  %1 = sub nsw i32 %node.tr, %nseq, !dbg !399
  %2 = sext i32 %1 to i64, !dbg !400
  %3 = getelementptr inbounds %struct.phylo_s* %tree, i64 %2, i32 1, !dbg !401
  %4 = load i32* %3, align 4, !dbg !401, !tbaa !361
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !240, metadata !292), !dbg !402
  %5 = getelementptr inbounds %struct.phylo_s* %tree, i64 %2, i32 2, !dbg !403
  %6 = load i32* %5, align 4, !dbg !403, !tbaa !370
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !241, metadata !292), !dbg !404
  %7 = sext i32 %node.tr to i64, !dbg !405
  %8 = getelementptr inbounds float* %lwt, i64 %7, !dbg !405
  %9 = load float* %8, align 4, !dbg !405, !tbaa !302
  %10 = getelementptr inbounds float* %rwt, i64 %7, !dbg !407
  %11 = load float* %10, align 4, !dbg !407, !tbaa !302
  %12 = fadd float %9, %11, !dbg !408
  %13 = fcmp ogt float %12, 0.000000e+00, !dbg !409
  br i1 %13, label %14, label %29, !dbg !410

; <label>:14                                      ; preds = %tailrecurse
  %15 = getelementptr inbounds float* %fwt, i64 %7, !dbg !411
  %16 = load float* %15, align 4, !dbg !411, !tbaa !302
  %17 = fdiv float %9, %12, !dbg !413
  %18 = fmul float %16, %17, !dbg !414
  %19 = sext i32 %4 to i64, !dbg !415
  %20 = getelementptr inbounds float* %fwt, i64 %19, !dbg !415
  store float %18, float* %20, align 4, !dbg !416, !tbaa !302
  %21 = load float* %15, align 4, !dbg !417, !tbaa !302
  %22 = load float* %10, align 4, !dbg !418, !tbaa !302
  %23 = load float* %8, align 4, !dbg !419, !tbaa !302
  %24 = fadd float %22, %23, !dbg !420
  %25 = fdiv float %22, %24, !dbg !421
  %26 = fmul float %21, %25, !dbg !422
  %27 = sext i32 %6 to i64, !dbg !423
  %28 = getelementptr inbounds float* %fwt, i64 %27, !dbg !423
  store float %26, float* %28, align 4, !dbg !424, !tbaa !302
  br label %60, !dbg !425

; <label>:29                                      ; preds = %tailrecurse
  %30 = icmp slt i32 %4, %nseq, !dbg !426
  br i1 %30, label %37, label %31, !dbg !428

; <label>:31                                      ; preds = %29
  %32 = sub nsw i32 %4, %nseq, !dbg !429
  %33 = sext i32 %32 to i64, !dbg !430
  %34 = getelementptr inbounds %struct.phylo_s* %tree, i64 %33, i32 7, !dbg !431
  %35 = load i32* %34, align 4, !dbg !431, !tbaa !432
  %36 = sitofp i32 %35 to double, !dbg !430
  %phitmp = fptrunc double %36 to float, !dbg !428
  br label %37, !dbg !428

; <label>:37                                      ; preds = %29, %31
  %38 = phi float [ %phitmp, %31 ], [ 1.000000e+00, %29 ]
  tail call void @llvm.dbg.value(metadata float %38, i64 0, metadata !242, metadata !292), !dbg !433
  %39 = icmp slt i32 %6, %nseq, !dbg !434
  br i1 %39, label %46, label %40, !dbg !435

; <label>:40                                      ; preds = %37
  %41 = sub nsw i32 %6, %nseq, !dbg !436
  %42 = sext i32 %41 to i64, !dbg !437
  %43 = getelementptr inbounds %struct.phylo_s* %tree, i64 %42, i32 7, !dbg !438
  %44 = load i32* %43, align 4, !dbg !438, !tbaa !432
  %45 = sitofp i32 %44 to double, !dbg !437
  %phitmp1 = fptrunc double %45 to float, !dbg !435
  br label %46, !dbg !435

; <label>:46                                      ; preds = %37, %40
  %47 = phi float [ %phitmp1, %40 ], [ 1.000000e+00, %37 ]
  tail call void @llvm.dbg.value(metadata float %47, i64 0, metadata !243, metadata !292), !dbg !439
  %48 = getelementptr inbounds float* %fwt, i64 %7, !dbg !440
  %49 = load float* %48, align 4, !dbg !440, !tbaa !302
  %50 = fmul float %38, %49, !dbg !441
  %51 = fadd float %38, %47, !dbg !442
  %52 = fdiv float %50, %51, !dbg !443
  %53 = sext i32 %4 to i64, !dbg !444
  %54 = getelementptr inbounds float* %fwt, i64 %53, !dbg !444
  store float %52, float* %54, align 4, !dbg !445, !tbaa !302
  %55 = load float* %48, align 4, !dbg !446, !tbaa !302
  %56 = fmul float %47, %55, !dbg !447
  %57 = fdiv float %56, %51, !dbg !448
  %58 = sext i32 %6 to i64, !dbg !449
  %59 = getelementptr inbounds float* %fwt, i64 %58, !dbg !449
  store float %57, float* %59, align 4, !dbg !450, !tbaa !302
  br label %60

; <label>:60                                      ; preds = %46, %14
  %61 = icmp slt i32 %4, %nseq, !dbg !451
  br i1 %61, label %63, label %62, !dbg !453

; <label>:62                                      ; preds = %60
  tail call fastcc void @downweight(%struct.phylo_s* %tree, i32 %nseq, float* %lwt, float* %rwt, float* %fwt, i32 %4) #6, !dbg !454
  br label %63, !dbg !454

; <label>:63                                      ; preds = %60, %62
  %64 = icmp slt i32 %6, %nseq, !dbg !455
  br i1 %64, label %65, label %tailrecurse, !dbg !457

; <label>:65                                      ; preds = %63
  ret void, !dbg !458
}

; Function Attrs: optsize
declare void @FMX2Free(float**) #2

; Function Attrs: optsize
declare void @FreePhylo(%struct.phylo_s*, i32) #2

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @VoronoiWeights(i8** nocapture readonly %aseq, i32 %nseq, i32 %alen, float* %wgt) #0 {
  %symseen = alloca [27 x i32], align 16
  tail call void @llvm.dbg.value(metadata i8** %aseq, i64 0, metadata !48, metadata !292), !dbg !459
  tail call void @llvm.dbg.value(metadata i32 %nseq, i64 0, metadata !49, metadata !292), !dbg !460
  tail call void @llvm.dbg.value(metadata i32 %alen, i64 0, metadata !50, metadata !292), !dbg !461
  tail call void @llvm.dbg.value(metadata float* %wgt, i64 0, metadata !51, metadata !292), !dbg !462
  %1 = bitcast [27 x i32]* %symseen to i8*, !dbg !463
  call void @llvm.lifetime.start(i64 108, i8* %1) #4, !dbg !463
  tail call void @llvm.dbg.declare(metadata [27 x i32]* %symseen, metadata !56, metadata !292), !dbg !464
  %2 = icmp eq i32 %nseq, 1, !dbg !465
  br i1 %2, label %3, label %4, !dbg !467

; <label>:3                                       ; preds = %0
  store float 1.000000e+00, float* %wgt, align 4, !dbg !468, !tbaa !302
  br label %212, !dbg !470

; <label>:4                                       ; preds = %0
  tail call void @llvm.dbg.value(metadata i32 50, i64 0, metadata !69, metadata !292), !dbg !471
  %5 = sext i32 %nseq to i64, !dbg !472
  %6 = shl nsw i64 %5, 3, !dbg !476
  %7 = tail call i8* @malloc(i64 %6) #5, !dbg !477
  %8 = bitcast i8* %7 to float**, !dbg !478
  tail call void @llvm.dbg.value(metadata float** %8, i64 0, metadata !278, metadata !292) #4, !dbg !479
  %9 = icmp eq i8* %7, null, !dbg !480
  br i1 %9, label %10, label %.preheader2.i, !dbg !481

; <label>:10                                      ; preds = %4
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([14 x i8]* @.str5, i64 0, i64 0)) #5, !dbg !482
  br label %.preheader2.i, !dbg !482

.preheader2.i:                                    ; preds = %10, %4
  %11 = icmp sgt i32 %nseq, 0, !dbg !483
  %12 = shl nsw i64 %5, 2, !dbg !486
  br i1 %11, label %.lr.ph7.i, label %simple_diffmx.exit.thread, !dbg !488

simple_diffmx.exit.thread:                        ; preds = %.preheader2.i
  tail call void @llvm.dbg.value(metadata float** %8, i64 0, metadata !52, metadata !292), !dbg !489
  tail call void @llvm.dbg.value(metadata float** %8, i64 0, metadata !52, metadata !292), !dbg !489
  tail call void @llvm.dbg.value(metadata float** %8, i64 0, metadata !52, metadata !292), !dbg !489
  %13 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 184, i64 %12) #5, !dbg !490
  %14 = bitcast i8* %13 to float*, !dbg !490
  tail call void @llvm.dbg.value(metadata float* %50, i64 0, metadata !53, metadata !292), !dbg !491
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !62, metadata !292), !dbg !492
  br label %._crit_edge40, !dbg !493

.lr.ph7.i:                                        ; preds = %.preheader2.i
  %15 = add i32 %nseq, -1, !dbg !488
  br label %16, !dbg !488

; <label>:16                                      ; preds = %22, %.lr.ph7.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.i ], [ %indvars.iv.next.i, %22 ], !dbg !495
  %17 = tail call i8* @malloc(i64 %12) #5, !dbg !496
  %18 = getelementptr inbounds float** %8, i64 %indvars.iv.i, !dbg !497
  %19 = bitcast float** %18 to i8**, !dbg !498
  store i8* %17, i8** %19, align 8, !dbg !498, !tbaa !311
  %20 = icmp eq i8* %17, null, !dbg !499
  br i1 %20, label %21, label %22, !dbg !500

; <label>:21                                      ; preds = %16
  tail call void (i8*, ...)* @Die(i8* getelementptr inbounds ([14 x i8]* @.str5, i64 0, i64 0)) #5, !dbg !501
  br label %22, !dbg !501

; <label>:22                                      ; preds = %21, %16
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !488
  %lftr.wideiv74 = trunc i64 %indvars.iv.i to i32, !dbg !488
  %exitcond75 = icmp eq i32 %lftr.wideiv74, %15, !dbg !488
  br i1 %exitcond75, label %.lr.ph.i, label %16, !dbg !488

.lr.ph.i:                                         ; preds = %22, %._crit_edge.i
  %indvars.iv10.i = phi i64 [ %indvars.iv.next11.i, %._crit_edge.i ], [ 0, %22 ], !dbg !495
  %23 = getelementptr inbounds i8** %aseq, i64 %indvars.iv10.i, !dbg !502
  %24 = getelementptr inbounds float** %8, i64 %indvars.iv10.i, !dbg !507
  %.pre.i = load i8** %23, align 8, !dbg !502, !tbaa !311
  br label %25, !dbg !508

; <label>:25                                      ; preds = %simple_distance.exit._crit_edge.i, %.lr.ph.i
  %26 = phi i8* [ %.pre.i, %.lr.ph.i ], [ %.pre16.i, %simple_distance.exit._crit_edge.i ], !dbg !495
  %indvars.iv8.i = phi i64 [ %indvars.iv10.i, %.lr.ph.i ], [ %indvars.iv.next9.i, %simple_distance.exit._crit_edge.i ], !dbg !495
  tail call void @llvm.dbg.value(metadata i8* %.pre.i, i64 0, metadata !266, metadata !292) #4, !dbg !509
  tail call void @llvm.dbg.value(metadata i8* %26, i64 0, metadata !267, metadata !292) #4, !dbg !511
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !268, metadata !292) #4, !dbg !512
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !269, metadata !292) #4, !dbg !513
  br label %27, !dbg !514

; <label>:27                                      ; preds = %34, %25
  %.01.i.i = phi i8* [ %.pre.i, %25 ], [ %35, %34 ], !dbg !515
  %.0.i.i = phi i8* [ %26, %25 ], [ %36, %34 ], !dbg !515
  %diff.0.i.i = phi i32 [ 0, %25 ], [ %diff.2.i.i, %34 ], !dbg !515
  %valid.0.i.i = phi i32 [ 0, %25 ], [ %valid.1.i.i, %34 ], !dbg !515
  %28 = load i8* %.01.i.i, align 1, !dbg !516, !tbaa !519
  switch i8 %28, label %29 [
    i8 0, label %37
    i8 32, label %34
    i8 46, label %34
    i8 95, label %34
    i8 45, label %34
    i8 126, label %34
  ], !dbg !520

; <label>:29                                      ; preds = %27
  %30 = load i8* %.0.i.i, align 1, !dbg !521, !tbaa !519
  switch i8 %30, label %31 [
    i8 32, label %34
    i8 46, label %34
    i8 95, label %34
    i8 45, label %34
    i8 126, label %34
  ], !dbg !521

; <label>:31                                      ; preds = %29
  %not..i.i = icmp ne i8 %28, %30, !dbg !524
  %32 = zext i1 %not..i.i to i32, !dbg !524
  %diff.0..i.i = add nsw i32 %32, %diff.0.i.i, !dbg !524
  %33 = add nsw i32 %valid.0.i.i, 1, !dbg !525
  tail call void @llvm.dbg.value(metadata i32 %33, i64 0, metadata !269, metadata !292) #4, !dbg !513
  br label %34, !dbg !526

; <label>:34                                      ; preds = %31, %29, %29, %29, %29, %29, %27, %27, %27, %27, %27
  %diff.2.i.i = phi i32 [ %diff.0.i.i, %29 ], [ %diff.0..i.i, %31 ], [ %diff.0.i.i, %27 ], [ %diff.0.i.i, %27 ], [ %diff.0.i.i, %27 ], [ %diff.0.i.i, %27 ], [ %diff.0.i.i, %27 ], [ %diff.0.i.i, %29 ], [ %diff.0.i.i, %29 ], [ %diff.0.i.i, %29 ], [ %diff.0.i.i, %29 ], !dbg !515
  %valid.1.i.i = phi i32 [ %valid.0.i.i, %29 ], [ %33, %31 ], [ %valid.0.i.i, %27 ], [ %valid.0.i.i, %27 ], [ %valid.0.i.i, %27 ], [ %valid.0.i.i, %27 ], [ %valid.0.i.i, %27 ], [ %valid.0.i.i, %29 ], [ %valid.0.i.i, %29 ], [ %valid.0.i.i, %29 ], [ %valid.0.i.i, %29 ], !dbg !515
  %35 = getelementptr inbounds i8* %.01.i.i, i64 1, !dbg !527
  tail call void @llvm.dbg.value(metadata i8* %35, i64 0, metadata !266, metadata !292) #4, !dbg !509
  %36 = getelementptr inbounds i8* %.0.i.i, i64 1, !dbg !528
  tail call void @llvm.dbg.value(metadata i8* %36, i64 0, metadata !267, metadata !292) #4, !dbg !511
  br label %27, !dbg !529

; <label>:37                                      ; preds = %27
  %38 = icmp sgt i32 %valid.0.i.i, 0, !dbg !530
  br i1 %38, label %39, label %simple_distance.exit.i, !dbg !531

; <label>:39                                      ; preds = %37
  %40 = sitofp i32 %diff.0.i.i to float, !dbg !532
  %41 = sitofp i32 %valid.0.i.i to float, !dbg !533
  %42 = fdiv float %40, %41, !dbg !534
  br label %simple_distance.exit.i, !dbg !531

simple_distance.exit.i:                           ; preds = %39, %37
  %43 = phi float [ %42, %39 ], [ 0.000000e+00, %37 ], !dbg !515
  %44 = getelementptr inbounds float** %8, i64 %indvars.iv8.i, !dbg !535
  %45 = load float** %44, align 8, !dbg !535, !tbaa !311
  %46 = getelementptr inbounds float* %45, i64 %indvars.iv10.i, !dbg !535
  store float %43, float* %46, align 4, !dbg !536, !tbaa !302
  %47 = load float** %24, align 8, !dbg !507, !tbaa !311
  %48 = getelementptr inbounds float* %47, i64 %indvars.iv8.i, !dbg !507
  store float %43, float* %48, align 4, !dbg !537, !tbaa !302
  %indvars.iv.next9.i = add nuw nsw i64 %indvars.iv8.i, 1, !dbg !508
  %lftr.wideiv.i = trunc i64 %indvars.iv8.i to i32, !dbg !508
  %exitcond.i = icmp eq i32 %lftr.wideiv.i, %15, !dbg !508
  br i1 %exitcond.i, label %._crit_edge.i, label %simple_distance.exit._crit_edge.i, !dbg !508

simple_distance.exit._crit_edge.i:                ; preds = %simple_distance.exit.i
  %.phi.trans.insert.i = getelementptr inbounds i8** %aseq, i64 %indvars.iv.next9.i, !dbg !495
  %.pre16.i = load i8** %.phi.trans.insert.i, align 8, !dbg !538, !tbaa !311
  br label %25, !dbg !508

._crit_edge.i:                                    ; preds = %simple_distance.exit.i
  %indvars.iv.next11.i = add nuw nsw i64 %indvars.iv10.i, 1, !dbg !539
  %lftr.wideiv72 = trunc i64 %indvars.iv10.i to i32, !dbg !539
  %exitcond73 = icmp eq i32 %lftr.wideiv72, %15, !dbg !539
  br i1 %exitcond73, label %simple_diffmx.exit, label %.lr.ph.i, !dbg !539

simple_diffmx.exit:                               ; preds = %._crit_edge.i
  tail call void @llvm.dbg.value(metadata float** %8, i64 0, metadata !52, metadata !292), !dbg !489
  tail call void @llvm.dbg.value(metadata float** %8, i64 0, metadata !52, metadata !292), !dbg !489
  tail call void @llvm.dbg.value(metadata float** %8, i64 0, metadata !52, metadata !292), !dbg !489
  %49 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 184, i64 %12) #5, !dbg !490
  %50 = bitcast i8* %49 to float*, !dbg !490
  tail call void @llvm.dbg.value(metadata float* %50, i64 0, metadata !53, metadata !292), !dbg !491
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !62, metadata !292), !dbg !492
  br i1 %11, label %.preheader5.lr.ph, label %._crit_edge40, !dbg !493

.preheader5.lr.ph:                                ; preds = %simple_diffmx.exit
  %51 = add i32 %nseq, -1, !dbg !493
  br label %.lr.ph36, !dbg !493

.lr.ph36:                                         ; preds = %.preheader5.lr.ph, %._crit_edge37
  %indvars.iv68 = phi i64 [ 0, %.preheader5.lr.ph ], [ %indvars.iv.next69, %._crit_edge37 ]
  %52 = getelementptr inbounds float** %8, i64 %indvars.iv68, !dbg !540
  br label %53, !dbg !547

; <label>:53                                      ; preds = %63, %.lr.ph36
  %indvars.iv64 = phi i64 [ 0, %.lr.ph36 ], [ %indvars.iv.next65, %63 ]
  %min.035 = phi float [ 1.000000e+00, %.lr.ph36 ], [ %min.1, %63 ]
  %54 = trunc i64 %indvars.iv64 to i32, !dbg !548
  %55 = trunc i64 %indvars.iv68 to i32, !dbg !548
  %56 = icmp eq i32 %54, %55, !dbg !548
  br i1 %56, label %63, label %57, !dbg !550

; <label>:57                                      ; preds = %53
  %58 = load float** %52, align 8, !dbg !540, !tbaa !311
  %59 = getelementptr inbounds float* %58, i64 %indvars.iv64, !dbg !540
  %60 = load float* %59, align 4, !dbg !540, !tbaa !302
  %61 = fcmp olt float %60, %min.035, !dbg !551
  br i1 %61, label %62, label %63, !dbg !552

; <label>:62                                      ; preds = %57
  tail call void @llvm.dbg.value(metadata float %60, i64 0, metadata !65, metadata !292), !dbg !553
  br label %63, !dbg !554

; <label>:63                                      ; preds = %57, %62, %53
  %min.1 = phi float [ %min.035, %53 ], [ %60, %62 ], [ %min.035, %57 ]
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1, !dbg !547
  %exitcond67 = icmp eq i32 %54, %51, !dbg !547
  br i1 %exitcond67, label %._crit_edge37, label %53, !dbg !547

._crit_edge37:                                    ; preds = %63
  %64 = fmul float %min.1, 5.000000e-01, !dbg !555
  %65 = getelementptr inbounds float* %50, i64 %indvars.iv68, !dbg !556
  store float %64, float* %65, align 4, !dbg !557, !tbaa !302
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1, !dbg !493
  %exitcond71 = icmp eq i32 %55, %51, !dbg !493
  br i1 %exitcond71, label %._crit_edge40, label %.lr.ph36, !dbg !493

._crit_edge40:                                    ; preds = %._crit_edge37, %simple_diffmx.exit.thread, %simple_diffmx.exit
  %66 = phi float* [ %14, %simple_diffmx.exit.thread ], [ %50, %simple_diffmx.exit ], [ %50, %._crit_edge37 ]
  %67 = phi i8* [ %13, %simple_diffmx.exit.thread ], [ %49, %simple_diffmx.exit ], [ %49, %._crit_edge37 ]
  %68 = bitcast i8* %7 to i8**, !dbg !558
  tail call void @Free2DArray(i8** %68, i32 %nseq) #5, !dbg !559
  %69 = sext i32 %alen to i64, !dbg !560
  %70 = shl nsw i64 %69, 3, !dbg !560
  %71 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 198, i64 %70) #5, !dbg !560
  %72 = bitcast i8* %71 to i8**, !dbg !560
  tail call void @llvm.dbg.value(metadata i8** %72, i64 0, metadata !54, metadata !292), !dbg !561
  %73 = shl nsw i64 %69, 2, !dbg !562
  %74 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 199, i64 %73) #5, !dbg !562
  %75 = bitcast i8* %74 to i32*, !dbg !562
  tail call void @llvm.dbg.value(metadata i32* %75, i64 0, metadata !55, metadata !292), !dbg !563
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !61, metadata !292), !dbg !564
  %76 = icmp sgt i32 %alen, 0, !dbg !565
  br i1 %76, label %.lr.ph33, label %._crit_edge30, !dbg !568

.lr.ph33:                                         ; preds = %._crit_edge40
  %77 = add i32 %alen, -1, !dbg !568
  br label %81, !dbg !568

.preheader4:                                      ; preds = %81
  br i1 %76, label %.lr.ph29, label %._crit_edge30, !dbg !569

.lr.ph29:                                         ; preds = %.preheader4
  %78 = getelementptr inbounds [27 x i32]* %symseen, i64 0, i64 26, !dbg !571
  %79 = add i32 %nseq, -1, !dbg !569
  %80 = add i32 %alen, -1, !dbg !569
  br label %84, !dbg !569

; <label>:81                                      ; preds = %81, %.lr.ph33
  %indvars.iv60 = phi i64 [ 0, %.lr.ph33 ], [ %indvars.iv.next61, %81 ]
  %82 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 201, i64 27) #5, !dbg !575
  %83 = getelementptr inbounds i8** %72, i64 %indvars.iv60, !dbg !576
  store i8* %82, i8** %83, align 8, !dbg !577, !tbaa !311
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1, !dbg !568
  %lftr.wideiv62 = trunc i64 %indvars.iv60 to i32, !dbg !568
  %exitcond63 = icmp eq i32 %lftr.wideiv62, %77, !dbg !568
  br i1 %exitcond63, label %.preheader4, label %81, !dbg !568

; <label>:84                                      ; preds = %134, %.lr.ph29
  %indvars.iv56 = phi i64 [ 0, %.lr.ph29 ], [ %indvars.iv.next57, %134 ]
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 108, i32 16, i1 false), !dbg !578
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !62, metadata !292), !dbg !492
  br i1 %11, label %.lr.ph24, label %._crit_edge25, !dbg !579

.lr.ph24:                                         ; preds = %84, %106
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %106 ], [ 0, %84 ]
  %85 = getelementptr inbounds i8** %aseq, i64 %indvars.iv49, !dbg !581
  %86 = load i8** %85, align 8, !dbg !581, !tbaa !311
  %87 = getelementptr inbounds i8* %86, i64 %indvars.iv56, !dbg !581
  %88 = load i8* %87, align 1, !dbg !581, !tbaa !519
  %89 = sext i8 %88 to i32, !dbg !581
  switch i8 %88, label %90 [
    i8 32, label %105
    i8 46, label %105
    i8 95, label %105
    i8 45, label %105
    i8 126, label %105
  ], !dbg !581

; <label>:90                                      ; preds = %.lr.ph24
  tail call void @llvm.dbg.value(metadata i32 %89, i64 0, metadata !249, metadata !292) #4, !dbg !584
  tail call void @llvm.dbg.value(metadata i32 %89, i64 0, metadata !257, metadata !292) #4, !dbg !588
  tail call void @llvm.dbg.value(metadata i64 32768, i64 0, metadata !258, metadata !292) #4, !dbg !590
  %isascii.i.i2 = icmp sgt i8 %88, -1, !dbg !591
  br i1 %isascii.i.i2, label %91, label %96, !dbg !591

; <label>:91                                      ; preds = %90
  %92 = sext i8 %88 to i64, !dbg !592
  %93 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %92, !dbg !592
  %94 = load i32* %93, align 4, !dbg !592, !tbaa !593
  %95 = and i32 %94, 32768, !dbg !594
  br label %isupper.exit, !dbg !591

; <label>:96                                      ; preds = %90
  %97 = tail call i32 @__maskrune(i32 %89, i64 32768) #5, !dbg !595
  %.pre = load i8** %85, align 8, !dbg !596, !tbaa !311
  %.phi.trans.insert = getelementptr inbounds i8* %.pre, i64 %indvars.iv56
  %.pre76 = load i8* %.phi.trans.insert, align 1, !dbg !596, !tbaa !519
  br label %isupper.exit, !dbg !591

isupper.exit:                                     ; preds = %91, %96
  %98 = phi i8 [ %88, %91 ], [ %.pre76, %96 ]
  %.sink.i.in.i = phi i32 [ %95, %91 ], [ %97, %96 ], !dbg !597
  %99 = icmp eq i32 %.sink.i.in.i, 0, !dbg !597
  %100 = sext i8 %98 to i32, !dbg !596
  %symidx.0.v = select i1 %99, i32 -97, i32 -65, !dbg !598
  %symidx.0 = add nsw i32 %100, %symidx.0.v, !dbg !598
  %101 = icmp ult i32 %symidx.0, 26, !dbg !599
  br i1 %101, label %102, label %106, !dbg !599

; <label>:102                                     ; preds = %isupper.exit
  %103 = sext i32 %symidx.0 to i64, !dbg !601
  %104 = getelementptr inbounds [27 x i32]* %symseen, i64 0, i64 %103, !dbg !601
  store i32 1, i32* %104, align 4, !dbg !602, !tbaa !593
  br label %106, !dbg !601

; <label>:105                                     ; preds = %.lr.ph24, %.lr.ph24, %.lr.ph24, %.lr.ph24, %.lr.ph24
  store i32 1, i32* %78, align 8, !dbg !603, !tbaa !593
  br label %106

; <label>:106                                     ; preds = %105, %102, %isupper.exit
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1, !dbg !579
  %lftr.wideiv51 = trunc i64 %indvars.iv49 to i32, !dbg !579
  %exitcond52 = icmp eq i32 %lftr.wideiv51, %79, !dbg !579
  br i1 %exitcond52, label %._crit_edge25, label %.lr.ph24, !dbg !579

._crit_edge25:                                    ; preds = %106, %84
  %107 = getelementptr inbounds i32* %75, i64 %indvars.iv56, !dbg !604
  store i32 0, i32* %107, align 4, !dbg !606, !tbaa !593
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !64, metadata !292), !dbg !607
  %108 = getelementptr inbounds i8** %72, i64 %indvars.iv56, !dbg !608
  br label %109, !dbg !612

; <label>:109                                     ; preds = %122, %._crit_edge25
  %110 = phi i32 [ 0, %._crit_edge25 ], [ %123, %122 ]
  %indvars.iv53 = phi i64 [ 0, %._crit_edge25 ], [ %indvars.iv.next54, %122 ]
  %i.127 = phi i32 [ 0, %._crit_edge25 ], [ %124, %122 ]
  %111 = getelementptr inbounds [27 x i32]* %symseen, i64 0, i64 %indvars.iv53, !dbg !613
  %112 = load i32* %111, align 4, !dbg !613, !tbaa !593
  %113 = icmp eq i32 %112, 0, !dbg !613
  br i1 %113, label %122, label %114, !dbg !614

; <label>:114                                     ; preds = %109
  %115 = add nuw nsw i32 %i.127, 65, !dbg !615
  %116 = trunc i32 %115 to i8, !dbg !616
  %117 = sext i32 %110 to i64, !dbg !608
  %118 = load i8** %108, align 8, !dbg !608, !tbaa !311
  %119 = getelementptr inbounds i8* %118, i64 %117, !dbg !608
  store i8 %116, i8* %119, align 1, !dbg !617, !tbaa !519
  %120 = load i32* %107, align 4, !dbg !618, !tbaa !593
  %121 = add nsw i32 %120, 1, !dbg !618
  store i32 %121, i32* %107, align 4, !dbg !618, !tbaa !593
  br label %122, !dbg !619

; <label>:122                                     ; preds = %109, %114
  %123 = phi i32 [ %110, %109 ], [ %121, %114 ]
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1, !dbg !612
  %124 = add nuw nsw i32 %i.127, 1, !dbg !620
  tail call void @llvm.dbg.value(metadata i32 %124, i64 0, metadata !64, metadata !292), !dbg !607
  %exitcond55 = icmp eq i64 %indvars.iv.next54, 26, !dbg !612
  br i1 %exitcond55, label %125, label %109, !dbg !612

; <label>:125                                     ; preds = %122
  %126 = load i32* %78, align 8, !dbg !571, !tbaa !593
  %127 = icmp eq i32 %126, 0, !dbg !571
  br i1 %127, label %134, label %128, !dbg !621

; <label>:128                                     ; preds = %125
  %129 = sext i32 %123 to i64, !dbg !622
  %130 = load i8** %108, align 8, !dbg !622, !tbaa !311
  %131 = getelementptr inbounds i8* %130, i64 %129, !dbg !622
  store i8 32, i8* %131, align 1, !dbg !624, !tbaa !519
  %132 = load i32* %107, align 4, !dbg !625, !tbaa !593
  %133 = add nsw i32 %132, 1, !dbg !625
  store i32 %133, i32* %107, align 4, !dbg !625, !tbaa !593
  br label %134, !dbg !626

; <label>:134                                     ; preds = %125, %128
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1, !dbg !569
  %lftr.wideiv58 = trunc i64 %indvars.iv56 to i32, !dbg !569
  %exitcond59 = icmp eq i32 %lftr.wideiv58, %80, !dbg !569
  br i1 %exitcond59, label %._crit_edge30, label %84, !dbg !569

._crit_edge30:                                    ; preds = %134, %._crit_edge40, %.preheader4
  %135 = add nsw i32 %alen, 1, !dbg !627
  %136 = sext i32 %135 to i64, !dbg !627
  %137 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 268, i64 %136) #5, !dbg !627
  tail call void @llvm.dbg.value(metadata i8* %137, i64 0, metadata !60, metadata !292), !dbg !628
  tail call void @llvm.dbg.value(metadata i32 42, i64 0, metadata !71, metadata !292), !dbg !629
  tail call void @FSet(float* %wgt, i32 %nseq, float 0.000000e+00) #5, !dbg !630
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !70, metadata !292), !dbg !631
  %138 = mul nsw i32 %nseq, 50, !dbg !632
  br i1 %11, label %.preheader3.lr.ph, label %._crit_edge, !dbg !635

.preheader3.lr.ph:                                ; preds = %._crit_edge30
  %139 = add i32 %alen, -1, !dbg !635
  %140 = zext i32 %139 to i64
  %141 = add nuw nsw i64 %140, 1, !dbg !635
  br label %.preheader3, !dbg !635

.preheader3:                                      ; preds = %.preheader3.lr.ph, %._crit_edge18
  %best.021 = phi i32 [ 42, %.preheader3.lr.ph ], [ %best.3, %._crit_edge18 ]
  %iteration.020 = phi i32 [ 0, %.preheader3.lr.ph ], [ %206, %._crit_edge18 ]
  br i1 %76, label %.lr.ph9, label %.lr.ph16, !dbg !636

.preheader:                                       ; preds = %._crit_edge18
  br i1 %11, label %.lr.ph, label %._crit_edge, !dbg !639

.lr.ph:                                           ; preds = %.preheader
  %142 = add i32 %nseq, -1, !dbg !639
  br label %208, !dbg !639

.lr.ph9:                                          ; preds = %.preheader3, %157
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %157 ], [ 0, %.preheader3 ]
  %143 = getelementptr inbounds i32* %75, i64 %indvars.iv43, !dbg !641
  %144 = load i32* %143, align 4, !dbg !641, !tbaa !593
  %145 = icmp eq i32 %144, 0, !dbg !643
  br i1 %145, label %157, label %146, !dbg !644

; <label>:146                                     ; preds = %.lr.ph9
  %147 = tail call double @sre_random() #5, !dbg !645
  %148 = load i32* %143, align 4, !dbg !645, !tbaa !593
  %149 = sitofp i32 %148 to double, !dbg !645
  %150 = fmul double %147, %149, !dbg !645
  %151 = fptosi double %150 to i32, !dbg !645
  %152 = sext i32 %151 to i64, !dbg !646
  %153 = getelementptr inbounds i8** %72, i64 %indvars.iv43, !dbg !646
  %154 = load i8** %153, align 8, !dbg !646, !tbaa !311
  %155 = getelementptr inbounds i8* %154, i64 %152, !dbg !646
  %156 = load i8* %155, align 1, !dbg !646, !tbaa !519
  br label %157, !dbg !644

; <label>:157                                     ; preds = %.lr.ph9, %146
  %158 = phi i8 [ %156, %146 ], [ 32, %.lr.ph9 ], !dbg !644
  %159 = getelementptr inbounds i8* %137, i64 %indvars.iv43, !dbg !647
  store i8 %158, i8* %159, align 1, !dbg !648, !tbaa !519
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1, !dbg !636
  %lftr.wideiv45 = trunc i64 %indvars.iv43 to i32, !dbg !636
  %exitcond46 = icmp eq i32 %lftr.wideiv45, %139, !dbg !636
  br i1 %exitcond46, label %.lr.ph16, label %.lr.ph9, !dbg !636

.lr.ph16:                                         ; preds = %157, %.preheader3
  %.lcssa = phi i64 [ 0, %.preheader3 ], [ %141, %157 ]
  %160 = getelementptr inbounds i8* %137, i64 %.lcssa, !dbg !649
  store i8 0, i8* %160, align 1, !dbg !650, !tbaa !519
  %161 = tail call double @sre_random() #5, !dbg !651
  tail call void @llvm.dbg.value(metadata float %162, i64 0, metadata !68, metadata !292), !dbg !652
  tail call void @llvm.dbg.value(metadata float 1.000000e+00, i64 0, metadata !65, metadata !292), !dbg !553
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !62, metadata !292), !dbg !492
  %162 = fptrunc double %161 to float, !dbg !651
  br label %163, !dbg !653

; <label>:163                                     ; preds = %.lr.ph16, %199
  %indvars.iv47 = phi i64 [ 0, %.lr.ph16 ], [ %indvars.iv.next48, %199 ]
  %best.114 = phi i32 [ %best.021, %.lr.ph16 ], [ %best.2, %199 ]
  %champion.013 = phi float [ %162, %.lr.ph16 ], [ %champion.1, %199 ]
  %min.211 = phi float [ 1.000000e+00, %.lr.ph16 ], [ %min.3, %199 ]
  %164 = getelementptr inbounds i8** %aseq, i64 %indvars.iv47, !dbg !655
  %165 = load i8** %164, align 8, !dbg !655, !tbaa !311
  tail call void @llvm.dbg.value(metadata i8* %165, i64 0, metadata !266, metadata !292), !dbg !658
  tail call void @llvm.dbg.value(metadata i8* %137, i64 0, metadata !267, metadata !292), !dbg !660
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !268, metadata !292), !dbg !661
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !269, metadata !292), !dbg !662
  br label %166, !dbg !663

; <label>:166                                     ; preds = %173, %163
  %.01.i = phi i8* [ %165, %163 ], [ %174, %173 ], !dbg !664
  %.0.i = phi i8* [ %137, %163 ], [ %175, %173 ], !dbg !664
  %diff.0.i = phi i32 [ 0, %163 ], [ %diff.2.i, %173 ], !dbg !664
  %valid.0.i = phi i32 [ 0, %163 ], [ %valid.1.i, %173 ], !dbg !664
  %167 = load i8* %.01.i, align 1, !dbg !665, !tbaa !519
  switch i8 %167, label %168 [
    i8 0, label %176
    i8 32, label %173
    i8 46, label %173
    i8 95, label %173
    i8 45, label %173
    i8 126, label %173
  ], !dbg !666

; <label>:168                                     ; preds = %166
  %169 = load i8* %.0.i, align 1, !dbg !667, !tbaa !519
  switch i8 %169, label %170 [
    i8 32, label %173
    i8 46, label %173
    i8 95, label %173
    i8 45, label %173
    i8 126, label %173
  ], !dbg !667

; <label>:170                                     ; preds = %168
  %not..i = icmp ne i8 %167, %169, !dbg !668
  %171 = zext i1 %not..i to i32, !dbg !668
  %diff.0..i = add nsw i32 %171, %diff.0.i, !dbg !668
  %172 = add nsw i32 %valid.0.i, 1, !dbg !669
  tail call void @llvm.dbg.value(metadata i32 %172, i64 0, metadata !269, metadata !292), !dbg !662
  br label %173, !dbg !670

; <label>:173                                     ; preds = %170, %168, %168, %168, %168, %168, %166, %166, %166, %166, %166
  %diff.2.i = phi i32 [ %diff.0.i, %168 ], [ %diff.0..i, %170 ], [ %diff.0.i, %166 ], [ %diff.0.i, %166 ], [ %diff.0.i, %166 ], [ %diff.0.i, %166 ], [ %diff.0.i, %166 ], [ %diff.0.i, %168 ], [ %diff.0.i, %168 ], [ %diff.0.i, %168 ], [ %diff.0.i, %168 ], !dbg !664
  %valid.1.i = phi i32 [ %valid.0.i, %168 ], [ %172, %170 ], [ %valid.0.i, %166 ], [ %valid.0.i, %166 ], [ %valid.0.i, %166 ], [ %valid.0.i, %166 ], [ %valid.0.i, %166 ], [ %valid.0.i, %168 ], [ %valid.0.i, %168 ], [ %valid.0.i, %168 ], [ %valid.0.i, %168 ], !dbg !664
  %174 = getelementptr inbounds i8* %.01.i, i64 1, !dbg !671
  tail call void @llvm.dbg.value(metadata i8* %174, i64 0, metadata !266, metadata !292), !dbg !658
  %175 = getelementptr inbounds i8* %.0.i, i64 1, !dbg !672
  tail call void @llvm.dbg.value(metadata i8* %175, i64 0, metadata !267, metadata !292), !dbg !660
  br label %166, !dbg !673

; <label>:176                                     ; preds = %166
  %177 = icmp sgt i32 %valid.0.i, 0, !dbg !674
  br i1 %177, label %178, label %simple_distance.exit, !dbg !675

; <label>:178                                     ; preds = %176
  %179 = sitofp i32 %diff.0.i to float, !dbg !676
  %180 = sitofp i32 %valid.0.i to float, !dbg !677
  %181 = fdiv float %179, %180, !dbg !678
  br label %simple_distance.exit, !dbg !675

simple_distance.exit:                             ; preds = %176, %178
  %182 = phi float [ %181, %178 ], [ 0.000000e+00, %176 ], !dbg !664
  tail call void @llvm.dbg.value(metadata float %182, i64 0, metadata !66, metadata !292), !dbg !679
  %183 = getelementptr inbounds float* %66, i64 %indvars.iv47, !dbg !680
  %184 = load float* %183, align 4, !dbg !680, !tbaa !302
  %185 = fcmp olt float %182, %184, !dbg !682
  br i1 %185, label %simple_distance.exit._crit_edge, label %186, !dbg !683

; <label>:186                                     ; preds = %simple_distance.exit
  %187 = fcmp olt float %182, %min.211, !dbg !684
  %188 = trunc i64 %indvars.iv47 to i32, !dbg !686
  br i1 %187, label %189, label %192, !dbg !686

; <label>:189                                     ; preds = %186
  %190 = tail call double @sre_random() #5, !dbg !687
  %191 = fptrunc double %190 to float, !dbg !687
  tail call void @llvm.dbg.value(metadata float %191, i64 0, metadata !68, metadata !292), !dbg !652
  tail call void @llvm.dbg.value(metadata float %182, i64 0, metadata !65, metadata !292), !dbg !553
  br label %199, !dbg !689

; <label>:192                                     ; preds = %186
  %193 = fcmp oeq float %182, %min.211, !dbg !690
  br i1 %193, label %194, label %199, !dbg !692

; <label>:194                                     ; preds = %192
  %195 = tail call double @sre_random() #5, !dbg !693
  %196 = fptrunc double %195 to float, !dbg !693
  tail call void @llvm.dbg.value(metadata float %196, i64 0, metadata !67, metadata !292), !dbg !695
  %197 = fcmp ogt float %196, %champion.013, !dbg !696
  br i1 %197, label %198, label %199, !dbg !698

; <label>:198                                     ; preds = %194
  tail call void @llvm.dbg.value(metadata float %196, i64 0, metadata !68, metadata !292), !dbg !652
  tail call void @llvm.dbg.value(metadata float %182, i64 0, metadata !65, metadata !292), !dbg !553
  br label %199, !dbg !699

; <label>:199                                     ; preds = %189, %194, %198, %192
  %min.3 = phi float [ %182, %189 ], [ %182, %198 ], [ %min.211, %194 ], [ %min.211, %192 ]
  %champion.1 = phi float [ %191, %189 ], [ %196, %198 ], [ %champion.013, %194 ], [ %champion.013, %192 ]
  %best.2 = phi i32 [ %188, %189 ], [ %188, %198 ], [ %best.114, %194 ], [ %best.114, %192 ]
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1, !dbg !653
  %200 = icmp slt i64 %indvars.iv.next48, %5, !dbg !701
  br i1 %200, label %163, label %._crit_edge18, !dbg !653

simple_distance.exit._crit_edge:                  ; preds = %simple_distance.exit
  %201 = trunc i64 %indvars.iv47 to i32, !dbg !683
  br label %._crit_edge18, !dbg !683

._crit_edge18:                                    ; preds = %199, %simple_distance.exit._crit_edge
  %best.3 = phi i32 [ %201, %simple_distance.exit._crit_edge ], [ %best.2, %199 ]
  %202 = sext i32 %best.3 to i64, !dbg !702
  %203 = getelementptr inbounds float* %wgt, i64 %202, !dbg !702
  %204 = load float* %203, align 4, !dbg !703, !tbaa !302
  %205 = fadd float %204, 1.000000e+00, !dbg !703
  store float %205, float* %203, align 4, !dbg !703, !tbaa !302
  %206 = add nuw nsw i32 %iteration.020, 1, !dbg !704
  tail call void @llvm.dbg.value(metadata i32 %206, i64 0, metadata !70, metadata !292), !dbg !631
  %207 = icmp slt i32 %206, %138, !dbg !705
  br i1 %207, label %.preheader3, label %.preheader, !dbg !635

; <label>:208                                     ; preds = %208, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %208 ]
  %209 = getelementptr inbounds float* %wgt, i64 %indvars.iv, !dbg !706
  %210 = load float* %209, align 4, !dbg !706, !tbaa !302
  %211 = fdiv float %210, 5.000000e+01, !dbg !708
  store float %211, float* %209, align 4, !dbg !709, !tbaa !302
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !639
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !639
  %exitcond = icmp eq i32 %lftr.wideiv, %142, !dbg !639
  br i1 %exitcond, label %._crit_edge, label %208, !dbg !639

._crit_edge:                                      ; preds = %208, %._crit_edge30, %.preheader
  tail call void @free(i8* %137) #6, !dbg !710
  tail call void @free(i8* %74) #6, !dbg !711
  tail call void @free(i8* %67) #6, !dbg !712
  tail call void @Free2DArray(i8** %72, i32 %alen) #5, !dbg !713
  br label %212, !dbg !714

; <label>:212                                     ; preds = %._crit_edge, %3
  call void @llvm.lifetime.end(i64 108, i8* %1) #4, !dbg !714
  ret void, !dbg !714
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: optsize
declare void @Free2DArray(i8**, i32) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: optsize
declare void @FSet(float*, i32, float) #2

; Function Attrs: optsize
declare double @sre_random() #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind optsize ssp uwtable
define void @BlosumWeights(i8** nocapture readonly %aseqs, i32 %nseq, i32 %alen, float %maxid, float* %wgt) #0 {
  %c = alloca i32*, align 8
  %nc = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i8** %aseqs, i64 0, metadata !76, metadata !292), !dbg !715
  tail call void @llvm.dbg.value(metadata i32 %nseq, i64 0, metadata !77, metadata !292), !dbg !716
  tail call void @llvm.dbg.value(metadata i32 %alen, i64 0, metadata !78, metadata !292), !dbg !717
  tail call void @llvm.dbg.value(metadata float %maxid, i64 0, metadata !79, metadata !292), !dbg !718
  tail call void @llvm.dbg.value(metadata float* %wgt, i64 0, metadata !80, metadata !292), !dbg !719
  tail call void @llvm.dbg.value(metadata i32** %c, i64 0, metadata !81, metadata !292), !dbg !720
  tail call void @llvm.dbg.value(metadata i32* %nc, i64 0, metadata !82, metadata !292), !dbg !721
  call void @SingleLinkCluster(i8** %aseqs, i32 %nseq, i32 undef, float %maxid, i32** %c, i32* %nc) #6, !dbg !722
  tail call void @FSet(float* %wgt, i32 %nseq, float 1.000000e+00) #5, !dbg !723
  tail call void @llvm.dbg.value(metadata i32* %nc, i64 0, metadata !82, metadata !292), !dbg !721
  %1 = load i32* %nc, align 4, !dbg !724, !tbaa !593
  %2 = sext i32 %1 to i64, !dbg !724
  %3 = shl nsw i64 %2, 2, !dbg !724
  %4 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 403, i64 %3) #5, !dbg !724
  %5 = bitcast i8* %4 to i32*, !dbg !724
  tail call void @llvm.dbg.value(metadata i32* %5, i64 0, metadata !83, metadata !292), !dbg !725
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !84, metadata !292), !dbg !726
  tail call void @llvm.dbg.value(metadata i32* %nc, i64 0, metadata !82, metadata !292), !dbg !721
  %6 = icmp sgt i32 %1, 0, !dbg !727
  br i1 %6, label %.lr.ph7, label %.preheader1, !dbg !730

.lr.ph7:                                          ; preds = %0
  %7 = icmp sgt i32 %1, 1
  %.op = add i32 %1, -1, !dbg !730
  %8 = zext i32 %.op to i64
  %.op15 = shl nuw nsw i64 %8, 2, !dbg !730
  %.op15.op = add nuw nsw i64 %.op15, 4, !dbg !730
  %9 = select i1 %7, i64 %.op15.op, i64 4, !dbg !730
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 %9, i32 4, i1 false), !dbg !731
  br label %.preheader1, !dbg !730

.preheader1:                                      ; preds = %.lr.ph7, %0
  %10 = icmp sgt i32 %nseq, 0, !dbg !732
  br i1 %10, label %.lr.ph4, label %.preheader._crit_edge, !dbg !735

.lr.ph4:                                          ; preds = %.preheader1
  %11 = load i32** %c, align 8, !dbg !736, !tbaa !311
  %12 = add i32 %nseq, -1, !dbg !735
  br label %16, !dbg !735

.preheader:                                       ; preds = %16
  br i1 %10, label %.lr.ph, label %.preheader._crit_edge, !dbg !737

.preheader._crit_edge:                            ; preds = %.preheader1, %.preheader
  %.phi.trans.insert = bitcast i32** %c to i8**
  %.pre = load i8** %.phi.trans.insert, align 8, !dbg !739, !tbaa !311
  br label %._crit_edge, !dbg !737

.lr.ph:                                           ; preds = %.preheader
  %13 = load i32** %c, align 8, !dbg !740, !tbaa !311
  %14 = add i32 %nseq, -1, !dbg !737
  %15 = bitcast i32* %13 to i8*
  br label %23, !dbg !737

; <label>:16                                      ; preds = %16, %.lr.ph4
  %indvars.iv8 = phi i64 [ 0, %.lr.ph4 ], [ %indvars.iv.next9, %16 ]
  tail call void @llvm.dbg.value(metadata i32** %c, i64 0, metadata !81, metadata !292), !dbg !720
  %17 = getelementptr inbounds i32* %11, i64 %indvars.iv8, !dbg !736
  %18 = load i32* %17, align 4, !dbg !736, !tbaa !593
  %19 = sext i32 %18 to i64, !dbg !742
  %20 = getelementptr inbounds i32* %5, i64 %19, !dbg !742
  %21 = load i32* %20, align 4, !dbg !743, !tbaa !593
  %22 = add nsw i32 %21, 1, !dbg !743
  store i32 %22, i32* %20, align 4, !dbg !743, !tbaa !593
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1, !dbg !735
  %lftr.wideiv10 = trunc i64 %indvars.iv8 to i32, !dbg !735
  %exitcond11 = icmp eq i32 %lftr.wideiv10, %12, !dbg !735
  br i1 %exitcond11, label %.preheader, label %16, !dbg !735

; <label>:23                                      ; preds = %23, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %23 ]
  tail call void @llvm.dbg.value(metadata i32** %c, i64 0, metadata !81, metadata !292), !dbg !720
  %24 = getelementptr inbounds i32* %13, i64 %indvars.iv, !dbg !740
  %25 = load i32* %24, align 4, !dbg !740, !tbaa !593
  %26 = sext i32 %25 to i64, !dbg !744
  %27 = getelementptr inbounds i32* %5, i64 %26, !dbg !744
  %28 = load i32* %27, align 4, !dbg !744, !tbaa !593
  %29 = sitofp i32 %28 to float, !dbg !745
  %30 = fdiv float 1.000000e+00, %29, !dbg !746
  %31 = getelementptr inbounds float* %wgt, i64 %indvars.iv, !dbg !747
  store float %30, float* %31, align 4, !dbg !748, !tbaa !302
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !737
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !737
  %exitcond = icmp eq i32 %lftr.wideiv, %14, !dbg !737
  br i1 %exitcond, label %._crit_edge, label %23, !dbg !737

._crit_edge:                                      ; preds = %23, %.preheader._crit_edge
  %32 = phi i8* [ %.pre, %.preheader._crit_edge ], [ %15, %23 ]
  tail call void @free(i8* %4) #6, !dbg !749
  tail call void @llvm.dbg.value(metadata i32** %c, i64 0, metadata !81, metadata !292), !dbg !720
  tail call void @free(i8* %32) #6, !dbg !750
  ret void, !dbg !751
}

; Function Attrs: nounwind optsize ssp uwtable
define void @SingleLinkCluster(i8** nocapture readonly %aseq, i32 %nseq, i32 %alen, float %maxid, i32** nocapture %ret_c, i32* nocapture %ret_nc) #0 {
  tail call void @llvm.dbg.value(metadata i8** %aseq, i64 0, metadata !204, metadata !292), !dbg !752
  tail call void @llvm.dbg.value(metadata i32 %nseq, i64 0, metadata !205, metadata !292), !dbg !753
  tail call void @llvm.dbg.value(metadata i32 %alen, i64 0, metadata !206, metadata !292), !dbg !754
  tail call void @llvm.dbg.value(metadata float %maxid, i64 0, metadata !207, metadata !292), !dbg !755
  tail call void @llvm.dbg.value(metadata i32** %ret_c, i64 0, metadata !208, metadata !292), !dbg !756
  tail call void @llvm.dbg.value(metadata i32* %ret_nc, i64 0, metadata !209, metadata !292), !dbg !757
  %1 = sext i32 %nseq to i64, !dbg !758
  %2 = shl nsw i64 %1, 2, !dbg !758
  %3 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 716, i64 %2) #5, !dbg !758
  %4 = bitcast i8* %3 to i32*, !dbg !758
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !210, metadata !292), !dbg !759
  %5 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 717, i64 %2) #5, !dbg !760
  %6 = bitcast i8* %5 to i32*, !dbg !760
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !212, metadata !292), !dbg !761
  %7 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 718, i64 %2) #5, !dbg !762
  %8 = bitcast i8* %7 to i32*, !dbg !762
  tail call void @llvm.dbg.value(metadata i32* %8, i64 0, metadata !214, metadata !292), !dbg !763
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !218, metadata !292), !dbg !764
  %9 = icmp sgt i32 %nseq, 0, !dbg !765
  br i1 %9, label %.lr.ph13, label %._crit_edge9, !dbg !768

.lr.ph13:                                         ; preds = %0
  %10 = add i32 %nseq, -1, !dbg !768
  br label %13, !dbg !768

.preheader:                                       ; preds = %13
  br i1 %9, label %.lr.ph8, label %._crit_edge9, !dbg !769

.lr.ph8:                                          ; preds = %.preheader
  %11 = fpext float %maxid to double, !dbg !770
  %12 = fsub double 1.000000e+00, %11, !dbg !776
  br label %16, !dbg !769

; <label>:13                                      ; preds = %13, %.lr.ph13
  %indvars.iv21 = phi i64 [ 0, %.lr.ph13 ], [ %indvars.iv.next22, %13 ]
  %14 = getelementptr inbounds i32* %4, i64 %indvars.iv21, !dbg !777
  %15 = trunc i64 %indvars.iv21 to i32, !dbg !778
  store i32 %15, i32* %14, align 4, !dbg !778, !tbaa !593
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1, !dbg !768
  %exitcond = icmp eq i32 %15, %10, !dbg !768
  br i1 %exitcond, label %.preheader, label %13, !dbg !768

; <label>:16                                      ; preds = %.lr.ph8, %._crit_edge
  %na.07 = phi i32 [ %nseq, %.lr.ph8 ], [ %na.1.lcssa, %._crit_edge ]
  %nc.06 = phi i32 [ 0, %.lr.ph8 ], [ %72, %._crit_edge ]
  %nb.05 = phi i32 [ 0, %.lr.ph8 ], [ %nb.1.lcssa, %._crit_edge ]
  %17 = add nsw i32 %na.07, -1, !dbg !779
  %18 = sext i32 %17 to i64, !dbg !780
  %19 = getelementptr inbounds i32* %4, i64 %18, !dbg !780
  %20 = load i32* %19, align 4, !dbg !780, !tbaa !593
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !216, metadata !292), !dbg !781
  tail call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !211, metadata !292), !dbg !782
  %21 = sext i32 %nb.05 to i64, !dbg !783
  %22 = getelementptr inbounds i32* %6, i64 %21, !dbg !783
  store i32 %20, i32* %22, align 4, !dbg !784, !tbaa !593
  %23 = add nsw i32 %nb.05, 1, !dbg !785
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !213, metadata !292), !dbg !786
  %24 = icmp sgt i32 %nb.05, -1, !dbg !787
  br i1 %24, label %.lr.ph, label %._crit_edge, !dbg !788

.loopexit:                                        ; preds = %37
  %25 = trunc i64 %indvars.iv19 to i32, !dbg !787
  %26 = trunc i64 %indvars.iv17 to i32, !dbg !787
  %27 = icmp sgt i32 %26, 0, !dbg !787
  br i1 %27, label %.lr.ph, label %._crit_edge, !dbg !788

.lr.ph:                                           ; preds = %16, %.loopexit
  %na.13 = phi i32 [ %25, %.loopexit ], [ %17, %16 ]
  %nb.12 = phi i32 [ %26, %.loopexit ], [ %23, %16 ]
  %28 = add i32 %nb.12, -1, !dbg !789
  %29 = sext i32 %28 to i64, !dbg !790
  %30 = getelementptr inbounds i32* %6, i64 %29, !dbg !790
  %31 = load i32* %30, align 4, !dbg !790, !tbaa !593
  tail call void @llvm.dbg.value(metadata i32 %31, i64 0, metadata !216, metadata !292), !dbg !781
  tail call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !213, metadata !292), !dbg !786
  %32 = sext i32 %31 to i64, !dbg !791
  %33 = getelementptr inbounds i32* %8, i64 %32, !dbg !791
  store i32 %nc.06, i32* %33, align 4, !dbg !792, !tbaa !593
  %34 = getelementptr inbounds i8** %aseq, i64 %32, !dbg !793
  %35 = sext i32 %na.13 to i64
  br label %.outer, !dbg !794

.outer:                                           ; preds = %66, %.lr.ph
  %indvars.iv19 = phi i64 [ %indvars.iv.next20, %66 ], [ %35, %.lr.ph ]
  %indvars.iv17 = phi i64 [ %indvars.iv.next18, %66 ], [ %29, %.lr.ph ]
  %na.2.ph = phi i32 [ %67, %66 ], [ %na.13, %.lr.ph ]
  %i.1.in.ph = phi i32 [ %i.1, %66 ], [ %na.13, %.lr.ph ]
  %36 = sext i32 %i.1.in.ph to i64
  br label %37

; <label>:37                                      ; preds = %.outer, %simple_distance.exit
  %indvars.iv = phi i64 [ %36, %.outer ], [ %indvars.iv.next, %simple_distance.exit ]
  %i.1.in = phi i32 [ %i.1.in.ph, %.outer ], [ %i.1, %simple_distance.exit ]
  %i.1 = add nsw i32 %i.1.in, -1, !dbg !795
  %38 = icmp sgt i64 %indvars.iv, 0, !dbg !796
  br i1 %38, label %39, label %.loopexit, !dbg !797

; <label>:39                                      ; preds = %37
  %40 = load i8** %34, align 8, !dbg !793, !tbaa !311
  %41 = sext i32 %i.1 to i64, !dbg !798
  %42 = getelementptr inbounds i32* %4, i64 %41, !dbg !798
  %43 = load i32* %42, align 4, !dbg !798, !tbaa !593
  %44 = sext i32 %43 to i64, !dbg !799
  %45 = getelementptr inbounds i8** %aseq, i64 %44, !dbg !799
  %46 = load i8** %45, align 8, !dbg !799, !tbaa !311
  tail call void @llvm.dbg.value(metadata i8* %40, i64 0, metadata !266, metadata !292), !dbg !800
  tail call void @llvm.dbg.value(metadata i8* %46, i64 0, metadata !267, metadata !292), !dbg !802
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !268, metadata !292), !dbg !803
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !269, metadata !292), !dbg !804
  br label %47, !dbg !805

; <label>:47                                      ; preds = %54, %39
  %.01.i = phi i8* [ %40, %39 ], [ %55, %54 ], !dbg !806
  %.0.i = phi i8* [ %46, %39 ], [ %56, %54 ], !dbg !806
  %diff.0.i = phi i32 [ 0, %39 ], [ %diff.2.i, %54 ], !dbg !806
  %valid.0.i = phi i32 [ 0, %39 ], [ %valid.1.i, %54 ], !dbg !806
  %48 = load i8* %.01.i, align 1, !dbg !807, !tbaa !519
  switch i8 %48, label %49 [
    i8 0, label %57
    i8 32, label %54
    i8 46, label %54
    i8 95, label %54
    i8 45, label %54
    i8 126, label %54
  ], !dbg !808

; <label>:49                                      ; preds = %47
  %50 = load i8* %.0.i, align 1, !dbg !809, !tbaa !519
  switch i8 %50, label %51 [
    i8 32, label %54
    i8 46, label %54
    i8 95, label %54
    i8 45, label %54
    i8 126, label %54
  ], !dbg !809

; <label>:51                                      ; preds = %49
  %not..i = icmp ne i8 %48, %50, !dbg !810
  %52 = zext i1 %not..i to i32, !dbg !810
  %diff.0..i = add nsw i32 %52, %diff.0.i, !dbg !810
  %53 = add nsw i32 %valid.0.i, 1, !dbg !811
  tail call void @llvm.dbg.value(metadata i32 %53, i64 0, metadata !269, metadata !292), !dbg !804
  br label %54, !dbg !812

; <label>:54                                      ; preds = %51, %49, %49, %49, %49, %49, %47, %47, %47, %47, %47
  %diff.2.i = phi i32 [ %diff.0.i, %49 ], [ %diff.0..i, %51 ], [ %diff.0.i, %47 ], [ %diff.0.i, %47 ], [ %diff.0.i, %47 ], [ %diff.0.i, %47 ], [ %diff.0.i, %47 ], [ %diff.0.i, %49 ], [ %diff.0.i, %49 ], [ %diff.0.i, %49 ], [ %diff.0.i, %49 ], !dbg !806
  %valid.1.i = phi i32 [ %valid.0.i, %49 ], [ %53, %51 ], [ %valid.0.i, %47 ], [ %valid.0.i, %47 ], [ %valid.0.i, %47 ], [ %valid.0.i, %47 ], [ %valid.0.i, %47 ], [ %valid.0.i, %49 ], [ %valid.0.i, %49 ], [ %valid.0.i, %49 ], [ %valid.0.i, %49 ], !dbg !806
  %55 = getelementptr inbounds i8* %.01.i, i64 1, !dbg !813
  tail call void @llvm.dbg.value(metadata i8* %55, i64 0, metadata !266, metadata !292), !dbg !800
  %56 = getelementptr inbounds i8* %.0.i, i64 1, !dbg !814
  tail call void @llvm.dbg.value(metadata i8* %56, i64 0, metadata !267, metadata !292), !dbg !802
  br label %47, !dbg !815

; <label>:57                                      ; preds = %47
  %58 = icmp sgt i32 %valid.0.i, 0, !dbg !816
  br i1 %58, label %59, label %simple_distance.exit, !dbg !817

; <label>:59                                      ; preds = %57
  %60 = sitofp i32 %diff.0.i to float, !dbg !818
  %61 = sitofp i32 %valid.0.i to float, !dbg !819
  %62 = fdiv float %60, %61, !dbg !820
  br label %simple_distance.exit, !dbg !817

simple_distance.exit:                             ; preds = %57, %59
  %63 = phi float [ %62, %59 ], [ 0.000000e+00, %57 ], !dbg !806
  %64 = fpext float %63 to double, !dbg !806
  %65 = fcmp ugt double %64, %12, !dbg !821
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !822
  br i1 %65, label %37, label %66, !dbg !822

; <label>:66                                      ; preds = %simple_distance.exit
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !217, metadata !292), !dbg !823
  %67 = add nsw i32 %na.2.ph, -1, !dbg !824
  %68 = sext i32 %67 to i64, !dbg !826
  %69 = getelementptr inbounds i32* %4, i64 %68, !dbg !826
  %70 = load i32* %69, align 4, !dbg !826, !tbaa !593
  store i32 %70, i32* %42, align 4, !dbg !827, !tbaa !593
  tail call void @llvm.dbg.value(metadata i32 %67, i64 0, metadata !211, metadata !292), !dbg !782
  %71 = getelementptr inbounds i32* %6, i64 %indvars.iv17, !dbg !828
  store i32 %43, i32* %71, align 4, !dbg !829, !tbaa !593
  %indvars.iv.next18 = add i64 %indvars.iv17, 1, !dbg !830
  %indvars.iv.next20 = add i64 %indvars.iv19, -1, !dbg !830
  br label %.outer, !dbg !830

._crit_edge:                                      ; preds = %.loopexit, %16
  %na.1.lcssa = phi i32 [ %17, %16 ], [ %25, %.loopexit ]
  %nb.1.lcssa = phi i32 [ %23, %16 ], [ %26, %.loopexit ]
  %72 = add nuw nsw i32 %nc.06, 1, !dbg !831
  tail call void @llvm.dbg.value(metadata i32 %72, i64 0, metadata !215, metadata !292), !dbg !832
  %73 = icmp sgt i32 %na.1.lcssa, 0, !dbg !833
  br i1 %73, label %16, label %._crit_edge9, !dbg !769

._crit_edge9:                                     ; preds = %._crit_edge, %0, %.preheader
  %nc.0.lcssa = phi i32 [ 0, %.preheader ], [ 0, %0 ], [ %72, %._crit_edge ]
  tail call void @free(i8* %3) #6, !dbg !834
  tail call void @free(i8* %5) #6, !dbg !835
  %74 = bitcast i32** %ret_c to i8**, !dbg !836
  store i8* %7, i8** %74, align 8, !dbg !836, !tbaa !311
  store i32 %nc.0.lcssa, i32* %ret_nc, align 4, !dbg !837, !tbaa !593
  ret void, !dbg !838
}

; Function Attrs: nounwind optsize ssp uwtable
define void @PositionBasedWeights(i8** nocapture readonly %aseq, i32 %nseq, i32 %alen, float* %wgt) #0 {
  %rescount = alloca [26 x i32], align 16
  %1 = bitcast [26 x i32]* %rescount to i8*
  tail call void @llvm.dbg.value(metadata i8** %aseq, i64 0, metadata !87, metadata !292), !dbg !839
  tail call void @llvm.dbg.value(metadata i32 %nseq, i64 0, metadata !88, metadata !292), !dbg !840
  tail call void @llvm.dbg.value(metadata i32 %alen, i64 0, metadata !89, metadata !292), !dbg !841
  tail call void @llvm.dbg.value(metadata float* %wgt, i64 0, metadata !90, metadata !292), !dbg !842
  call void @llvm.lifetime.start(i64 104, i8* %1) #4, !dbg !843
  tail call void @llvm.dbg.declare(metadata [26 x i32]* %rescount, metadata !91, metadata !292), !dbg !844
  tail call void @FSet(float* %wgt, i32 %nseq, float 0.000000e+00) #5, !dbg !845
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !97, metadata !292), !dbg !846
  %2 = icmp sgt i32 %alen, 0, !dbg !847
  br i1 %2, label %.preheader10.lr.ph, label %.preheader, !dbg !850

.preheader10.lr.ph:                               ; preds = %0
  %3 = icmp sgt i32 %nseq, 0, !dbg !851
  %4 = add i32 %nseq, -1, !dbg !850
  %5 = add i32 %alen, -1, !dbg !850
  br label %.preheader10, !dbg !850

.preheader10:                                     ; preds = %._crit_edge19, %.preheader10.lr.ph
  %indvars.iv35 = phi i64 [ 0, %.preheader10.lr.ph ], [ %indvars.iv.next36, %._crit_edge19 ]
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 104, i32 16, i1 false), !dbg !855
  br i1 %3, label %.lr.ph14, label %vector.body, !dbg !858

vector.body:                                      ; preds = %.preheader10, %38, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %38 ], [ 0, %.preheader10 ], !dbg !859
  %vec.phi = phi <2 x i32> [ %10, %vector.body ], [ zeroinitializer, %38 ], [ zeroinitializer, %.preheader10 ]
  %6 = getelementptr inbounds [26 x i32]* %rescount, i64 0, i64 %index, !dbg !861
  %7 = bitcast i32* %6 to <2 x i32>*, !dbg !861
  %wide.load = load <2 x i32>* %7, align 8, !dbg !861, !tbaa !593
  %8 = icmp sgt <2 x i32> %wide.load, zeroinitializer, !dbg !864
  %9 = zext <2 x i1> %8 to <2 x i32>, !dbg !865
  %10 = add nsw <2 x i32> %9, %vec.phi, !dbg !865
  %index.next = add i64 %index, 2, !dbg !859
  %11 = icmp eq i64 %index.next, 26, !dbg !859
  br i1 %11, label %middle.block, label %vector.body, !dbg !859, !llvm.loop !866

middle.block:                                     ; preds = %vector.body
  %rdx.shuf = shufflevector <2 x i32> %10, <2 x i32> undef, <2 x i32> <i32 1, i32 undef>, !dbg !865
  %bin.rdx = add <2 x i32> %10, %rdx.shuf, !dbg !865
  %12 = extractelement <2 x i32> %bin.rdx, i32 0, !dbg !865
  br i1 %3, label %.lr.ph18, label %._crit_edge19, !dbg !869

.preheader:                                       ; preds = %._crit_edge19, %0
  %13 = icmp sgt i32 %nseq, 0, !dbg !871
  br i1 %13, label %.lr.ph, label %._crit_edge, !dbg !874

.lr.ph:                                           ; preds = %.preheader
  %14 = add i32 %nseq, -1, !dbg !874
  br label %71, !dbg !874

.lr.ph14:                                         ; preds = %.preheader10, %38
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %38 ], [ 0, %.preheader10 ]
  %15 = getelementptr inbounds i8** %aseq, i64 %indvars.iv24, !dbg !875
  %16 = load i8** %15, align 8, !dbg !875, !tbaa !311
  %17 = getelementptr inbounds i8* %16, i64 %indvars.iv35, !dbg !875
  %18 = load i8* %17, align 1, !dbg !875, !tbaa !519
  tail call void @llvm.dbg.value(metadata i32 %25, i64 0, metadata !283, metadata !292) #4, !dbg !877
  tail call void @llvm.dbg.value(metadata i32 %25, i64 0, metadata !257, metadata !292) #4, !dbg !879
  tail call void @llvm.dbg.value(metadata i64 256, i64 0, metadata !258, metadata !292) #4, !dbg !881
  %isascii.i.i6 = icmp sgt i8 %18, -1, !dbg !882
  br i1 %isascii.i.i6, label %19, label %24, !dbg !882

; <label>:19                                      ; preds = %.lr.ph14
  %20 = sext i8 %18 to i64, !dbg !883
  %21 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %20, !dbg !883
  %22 = load i32* %21, align 4, !dbg !883, !tbaa !593
  %23 = and i32 %22, 256, !dbg !884
  br label %isalpha.exit, !dbg !882

; <label>:24                                      ; preds = %.lr.ph14
  %25 = sext i8 %18 to i32, !dbg !885
  %26 = tail call i32 @__maskrune(i32 %25, i64 256) #5, !dbg !886
  br label %isalpha.exit, !dbg !882

isalpha.exit:                                     ; preds = %19, %24
  %.sink.i.in.i = phi i32 [ %23, %19 ], [ %26, %24 ], !dbg !887
  %.sink.i.i = icmp eq i32 %.sink.i.in.i, 0, !dbg !888
  br i1 %.sink.i.i, label %38, label %27, !dbg !889

; <label>:27                                      ; preds = %isalpha.exit
  %28 = load i8** %15, align 8, !dbg !890, !tbaa !311
  %29 = getelementptr inbounds i8* %28, i64 %indvars.iv35, !dbg !890
  %30 = load i8* %29, align 1, !dbg !890, !tbaa !519
  %31 = sext i8 %30 to i32, !dbg !891
  tail call void @llvm.dbg.value(metadata i32 %31, i64 0, metadata !286, metadata !292) #4, !dbg !892
  %32 = tail call i32 @__toupper(i32 %31) #5, !dbg !894
  %33 = add nsw i32 %32, -65, !dbg !895
  %34 = sext i32 %33 to i64, !dbg !896
  %35 = getelementptr inbounds [26 x i32]* %rescount, i64 0, i64 %34, !dbg !896
  %36 = load i32* %35, align 4, !dbg !897, !tbaa !593
  %37 = add nsw i32 %36, 1, !dbg !897
  store i32 %37, i32* %35, align 4, !dbg !897, !tbaa !593
  br label %38, !dbg !896

; <label>:38                                      ; preds = %isalpha.exit, %27
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1, !dbg !858
  %lftr.wideiv26 = trunc i64 %indvars.iv24 to i32, !dbg !858
  %exitcond27 = icmp eq i32 %lftr.wideiv26, %4, !dbg !858
  br i1 %exitcond27, label %vector.body, label %.lr.ph14, !dbg !858

.lr.ph18:                                         ; preds = %middle.block, %70
  %indvars.iv31 = phi i64 [ %indvars.iv.next32, %70 ], [ 0, %middle.block ]
  %39 = getelementptr inbounds i8** %aseq, i64 %indvars.iv31, !dbg !898
  %40 = load i8** %39, align 8, !dbg !898, !tbaa !311
  %41 = getelementptr inbounds i8* %40, i64 %indvars.iv35, !dbg !898
  %42 = load i8* %41, align 1, !dbg !898, !tbaa !519
  tail call void @llvm.dbg.value(metadata i32 %49, i64 0, metadata !283, metadata !292) #4, !dbg !901
  tail call void @llvm.dbg.value(metadata i32 %49, i64 0, metadata !257, metadata !292) #4, !dbg !903
  tail call void @llvm.dbg.value(metadata i64 256, i64 0, metadata !258, metadata !292) #4, !dbg !905
  %isascii.i.i15 = icmp sgt i8 %42, -1, !dbg !906
  br i1 %isascii.i.i15, label %43, label %48, !dbg !906

; <label>:43                                      ; preds = %.lr.ph18
  %44 = sext i8 %42 to i64, !dbg !907
  %45 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %44, !dbg !907
  %46 = load i32* %45, align 4, !dbg !907, !tbaa !593
  %47 = and i32 %46, 256, !dbg !908
  br label %isalpha.exit4, !dbg !906

; <label>:48                                      ; preds = %.lr.ph18
  %49 = sext i8 %42 to i32, !dbg !909
  %50 = tail call i32 @__maskrune(i32 %49, i64 256) #5, !dbg !910
  br label %isalpha.exit4, !dbg !906

isalpha.exit4:                                    ; preds = %43, %48
  %.sink.i.in.i2 = phi i32 [ %47, %43 ], [ %50, %48 ], !dbg !911
  %.sink.i.i3 = icmp eq i32 %.sink.i.in.i2, 0, !dbg !912
  br i1 %.sink.i.i3, label %70, label %51, !dbg !913

; <label>:51                                      ; preds = %isalpha.exit4
  %52 = load i8** %39, align 8, !dbg !914, !tbaa !311
  %53 = getelementptr inbounds i8* %52, i64 %indvars.iv35, !dbg !914
  %54 = load i8* %53, align 1, !dbg !914, !tbaa !519
  %55 = sext i8 %54 to i32, !dbg !915
  tail call void @llvm.dbg.value(metadata i32 %55, i64 0, metadata !286, metadata !292) #4, !dbg !916
  %56 = tail call i32 @__toupper(i32 %55) #5, !dbg !918
  %57 = add nsw i32 %56, -65, !dbg !919
  %58 = sext i32 %57 to i64, !dbg !920
  %59 = getelementptr inbounds [26 x i32]* %rescount, i64 0, i64 %58, !dbg !920
  %60 = load i32* %59, align 4, !dbg !920, !tbaa !593
  %61 = mul nsw i32 %60, %12, !dbg !921
  %62 = sitofp i32 %61 to float, !dbg !922
  %63 = fpext float %62 to double, !dbg !922
  %64 = fdiv double 1.000000e+00, %63, !dbg !923
  %65 = getelementptr inbounds float* %wgt, i64 %indvars.iv31, !dbg !924
  %66 = load float* %65, align 4, !dbg !925, !tbaa !302
  %67 = fpext float %66 to double, !dbg !925
  %68 = fadd double %64, %67, !dbg !925
  %69 = fptrunc double %68 to float, !dbg !925
  store float %69, float* %65, align 4, !dbg !925, !tbaa !302
  br label %70, !dbg !924

; <label>:70                                      ; preds = %isalpha.exit4, %51
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1, !dbg !869
  %lftr.wideiv33 = trunc i64 %indvars.iv31 to i32, !dbg !869
  %exitcond34 = icmp eq i32 %lftr.wideiv33, %4, !dbg !869
  br i1 %exitcond34, label %._crit_edge19, label %.lr.ph18, !dbg !869

._crit_edge19:                                    ; preds = %70, %middle.block
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1, !dbg !850
  %lftr.wideiv37 = trunc i64 %indvars.iv35 to i32, !dbg !850
  %exitcond38 = icmp eq i32 %lftr.wideiv37, %5, !dbg !850
  br i1 %exitcond38, label %.preheader, label %.preheader10, !dbg !850

; <label>:71                                      ; preds = %71, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %71 ]
  %72 = getelementptr inbounds i8** %aseq, i64 %indvars.iv, !dbg !926
  %73 = load i8** %72, align 8, !dbg !926, !tbaa !311
  %74 = tail call i32 @DealignedLength(i8* %73) #5, !dbg !927
  %75 = sitofp i32 %74 to float, !dbg !928
  %76 = getelementptr inbounds float* %wgt, i64 %indvars.iv, !dbg !929
  %77 = load float* %76, align 4, !dbg !930, !tbaa !302
  %78 = fdiv float %77, %75, !dbg !930
  store float %78, float* %76, align 4, !dbg !930, !tbaa !302
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !874
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !874
  %exitcond = icmp eq i32 %lftr.wideiv, %14, !dbg !874
  br i1 %exitcond, label %._crit_edge, label %71, !dbg !874

._crit_edge:                                      ; preds = %71, %.preheader
  %79 = sitofp i32 %nseq to float, !dbg !931
  %80 = tail call float @FSum(float* %wgt, i32 %nseq) #5, !dbg !932
  %81 = fdiv float %79, %80, !dbg !933
  tail call void @llvm.dbg.value(metadata float %81, i64 0, metadata !99, metadata !292), !dbg !934
  tail call void @FScale(float* %wgt, i32 %nseq, float %81) #5, !dbg !935
  call void @llvm.lifetime.end(i64 104, i8* %1) #4, !dbg !936
  ret void, !dbg !936
}

; Function Attrs: optsize
declare i32 @DealignedLength(i8*) #2

; Function Attrs: optsize
declare float @FSum(float*, i32) #2

; Function Attrs: optsize
declare void @FScale(float*, i32, float) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @FilterAlignment(%struct.msa_struct* %msa, float %cutoff, %struct.msa_struct** %ret_new) #0 {
  tail call void @llvm.dbg.value(metadata %struct.msa_struct* %msa, i64 0, metadata !177, metadata !292), !dbg !937
  tail call void @llvm.dbg.value(metadata float %cutoff, i64 0, metadata !178, metadata !292), !dbg !938
  tail call void @llvm.dbg.value(metadata %struct.msa_struct** %ret_new, i64 0, metadata !179, metadata !292), !dbg !939
  %1 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 4, !dbg !940
  %2 = load i32* %1, align 4, !dbg !940, !tbaa !941
  %3 = sext i32 %2 to i64, !dbg !940
  %4 = shl nsw i64 %3, 2, !dbg !940
  %5 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 532, i64 %4) #5, !dbg !940
  %6 = bitcast i8* %5 to i32*, !dbg !940
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !181, metadata !292), !dbg !943
  %7 = load i32* %1, align 4, !dbg !944, !tbaa !941
  %8 = sext i32 %7 to i64, !dbg !944
  %9 = shl nsw i64 %8, 2, !dbg !944
  %10 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 533, i64 %9) #5, !dbg !944
  %11 = bitcast i8* %10 to i32*, !dbg !944
  tail call void @llvm.dbg.value(metadata i32* %11, i64 0, metadata !182, metadata !292), !dbg !945
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !184, metadata !292), !dbg !946
  %12 = load i32* %1, align 4, !dbg !947, !tbaa !941
  %13 = icmp sgt i32 %12, 0, !dbg !950
  br i1 %13, label %.lr.ph11, label %._crit_edge8, !dbg !951

.preheader1:                                      ; preds = %.lr.ph11
  %14 = icmp sgt i32 %18, 0, !dbg !952
  br i1 %14, label %.preheader.lr.ph, label %._crit_edge8, !dbg !955

.preheader.lr.ph:                                 ; preds = %.preheader1
  %15 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 0, !dbg !956
  %16 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1, !dbg !961
  br label %.preheader, !dbg !955

.lr.ph11:                                         ; preds = %0, %.lr.ph11
  %indvars.iv17 = phi i64 [ %indvars.iv.next18, %.lr.ph11 ], [ 0, %0 ]
  %17 = getelementptr inbounds i32* %11, i64 %indvars.iv17, !dbg !964
  store i32 0, i32* %17, align 4, !dbg !965, !tbaa !593
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1, !dbg !951
  %18 = load i32* %1, align 4, !dbg !947, !tbaa !941
  %19 = sext i32 %18 to i64, !dbg !950
  %20 = icmp slt i64 %indvars.iv.next18, %19, !dbg !950
  br i1 %20, label %.lr.ph11, label %.preheader1, !dbg !951

.preheader:                                       ; preds = %.preheader.lr.ph, %48
  %indvars.iv15 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next16, %48 ]
  %nnew.05 = phi i32 [ 0, %.preheader.lr.ph ], [ %nnew.1, %48 ]
  %21 = icmp sgt i32 %nnew.05, 0, !dbg !966
  %22 = sext i32 %nnew.05 to i64, !dbg !967
  br i1 %21, label %.lr.ph, label %._crit_edge, !dbg !967

; <label>:23                                      ; preds = %.lr.ph
  %24 = icmp slt i64 %indvars.iv.next, %22, !dbg !966
  br i1 %24, label %.lr.ph, label %._crit_edge, !dbg !967

.lr.ph:                                           ; preds = %.preheader, %23
  %indvars.iv = phi i64 [ %indvars.iv.next, %23 ], [ 0, %.preheader ]
  %25 = load i8*** %15, align 8, !dbg !956, !tbaa !968
  %26 = getelementptr inbounds i8** %25, i64 %indvars.iv15, !dbg !969
  %27 = load i8** %26, align 8, !dbg !969, !tbaa !311
  %28 = getelementptr inbounds i32* %6, i64 %indvars.iv, !dbg !970
  %29 = load i32* %28, align 4, !dbg !970, !tbaa !593
  %30 = sext i32 %29 to i64, !dbg !971
  %31 = getelementptr inbounds i8** %25, i64 %30, !dbg !971
  %32 = load i8** %31, align 8, !dbg !971, !tbaa !311
  %33 = tail call float @PairwiseIdentity(i8* %27, i8* %32) #5, !dbg !972
  tail call void @llvm.dbg.value(metadata float %33, i64 0, metadata !183, metadata !292), !dbg !973
  %34 = fcmp ogt float %33, %cutoff, !dbg !974
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !967
  br i1 %34, label %.critedge, label %23, !dbg !975

.critedge:                                        ; preds = %.lr.ph
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !186, metadata !292), !dbg !976
  %35 = load i8*** %16, align 8, !dbg !961, !tbaa !977
  %36 = getelementptr inbounds i8** %35, i64 %indvars.iv15, !dbg !978
  %37 = load i8** %36, align 8, !dbg !978, !tbaa !311
  %38 = fpext float %33 to double, !dbg !979
  %39 = load i32* %28, align 4, !dbg !980, !tbaa !593
  %40 = sext i32 %39 to i64, !dbg !981
  %41 = getelementptr inbounds i8** %35, i64 %40, !dbg !981
  %42 = load i8** %41, align 8, !dbg !981, !tbaa !311
  %43 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([49 x i8]* @.str3, i64 0, i64 0), i8* %37, double %38, i8* %42) #5, !dbg !982
  br label %48

._crit_edge:                                      ; preds = %23, %.preheader
  %44 = add nsw i32 %nnew.05, 1, !dbg !983
  tail call void @llvm.dbg.value(metadata i32 %44, i64 0, metadata !180, metadata !292), !dbg !986
  %45 = getelementptr inbounds i32* %6, i64 %22, !dbg !987
  %46 = trunc i64 %indvars.iv15 to i32, !dbg !988
  store i32 %46, i32* %45, align 4, !dbg !988, !tbaa !593
  %47 = getelementptr inbounds i32* %11, i64 %indvars.iv15, !dbg !989
  store i32 1, i32* %47, align 4, !dbg !990, !tbaa !593
  br label %48, !dbg !991

; <label>:48                                      ; preds = %.critedge, %._crit_edge
  %nnew.1 = phi i32 [ %44, %._crit_edge ], [ %nnew.05, %.critedge ]
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1, !dbg !955
  %49 = load i32* %1, align 4, !dbg !992, !tbaa !941
  %50 = sext i32 %49 to i64, !dbg !952
  %51 = icmp slt i64 %indvars.iv.next16, %50, !dbg !952
  br i1 %51, label %.preheader, label %._crit_edge8, !dbg !955

._crit_edge8:                                     ; preds = %48, %0, %.preheader1
  tail call void @MSASmallerAlignment(%struct.msa_struct* %msa, i32* %11, %struct.msa_struct** %ret_new) #5, !dbg !993
  tail call void @free(i8* %5) #6, !dbg !994
  tail call void @free(i8* %10) #6, !dbg !995
  ret void, !dbg !996
}

; Function Attrs: optsize
declare float @PairwiseIdentity(i8*, i8*) #2

; Function Attrs: nounwind optsize
declare i32 @printf(i8* nocapture readonly, ...) #3

; Function Attrs: optsize
declare void @MSASmallerAlignment(%struct.msa_struct*, i32*, %struct.msa_struct**) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @SampleAlignment(%struct.msa_struct* %msa, i32 %sample, %struct.msa_struct** %ret_new) #0 {
  tail call void @llvm.dbg.value(metadata %struct.msa_struct* %msa, i64 0, metadata !191, metadata !292), !dbg !997
  tail call void @llvm.dbg.value(metadata i32 %sample, i64 0, metadata !192, metadata !292), !dbg !998
  tail call void @llvm.dbg.value(metadata %struct.msa_struct** %ret_new, i64 0, metadata !193, metadata !292), !dbg !999
  %1 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 4, !dbg !1000
  %2 = load i32* %1, align 4, !dbg !1000, !tbaa !941
  %3 = sext i32 %2 to i64, !dbg !1000
  %4 = shl nsw i64 %3, 2, !dbg !1000
  %5 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 596, i64 %4) #5, !dbg !1000
  %6 = bitcast i8* %5 to i32*, !dbg !1001
  tail call void @llvm.dbg.value(metadata i32* %6, i64 0, metadata !194, metadata !292), !dbg !1002
  %7 = load i32* %1, align 4, !dbg !1003, !tbaa !941
  %8 = sext i32 %7 to i64, !dbg !1003
  %9 = shl nsw i64 %8, 2, !dbg !1003
  %10 = tail call i8* @sre_malloc(i8* getelementptr inbounds ([64 x i8]* @.str1, i64 0, i64 0), i32 597, i64 %9) #5, !dbg !1003
  %11 = bitcast i8* %10 to i32*, !dbg !1004
  tail call void @llvm.dbg.value(metadata i32* %11, i64 0, metadata !195, metadata !292), !dbg !1005
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !196, metadata !292), !dbg !1006
  %12 = load i32* %1, align 4, !dbg !1007, !tbaa !941
  %13 = icmp sgt i32 %12, 0, !dbg !1010
  br i1 %13, label %.lr.ph5, label %._crit_edge6, !dbg !1011

.lr.ph5:                                          ; preds = %0, %.lr.ph5
  %indvars.iv8 = phi i64 [ %indvars.iv.next9, %.lr.ph5 ], [ 0, %0 ]
  %14 = getelementptr inbounds i32* %6, i64 %indvars.iv8, !dbg !1012
  %15 = trunc i64 %indvars.iv8 to i32, !dbg !1014
  store i32 %15, i32* %14, align 4, !dbg !1014, !tbaa !593
  %16 = getelementptr inbounds i32* %11, i64 %indvars.iv8, !dbg !1015
  store i32 0, i32* %16, align 4, !dbg !1016, !tbaa !593
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1, !dbg !1011
  %17 = load i32* %1, align 4, !dbg !1007, !tbaa !941
  %18 = sext i32 %17 to i64, !dbg !1010
  %19 = icmp slt i64 %indvars.iv.next9, %18, !dbg !1010
  br i1 %19, label %.lr.ph5, label %._crit_edge6, !dbg !1011

._crit_edge6:                                     ; preds = %.lr.ph5, %0
  %.lcssa = phi i32 [ %12, %0 ], [ %17, %.lr.ph5 ]
  %20 = icmp sgt i32 %.lcssa, %sample, !dbg !1017
  tail call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !192, metadata !292), !dbg !998
  %sample. = select i1 %20, i32 %sample, i32 %.lcssa, !dbg !1019
  tail call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !198, metadata !292), !dbg !1020
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !196, metadata !292), !dbg !1006
  %21 = icmp sgt i32 %sample., 0, !dbg !1021
  br i1 %21, label %.lr.ph, label %._crit_edge, !dbg !1024

.lr.ph:                                           ; preds = %._crit_edge6
  %22 = getelementptr inbounds %struct.msa_struct* %msa, i64 0, i32 1, !dbg !1025
  %23 = sext i32 %.lcssa to i64
  %24 = xor i32 %.lcssa, -1, !dbg !1024
  %25 = xor i32 %sample, -1, !dbg !1024
  %26 = icmp sgt i32 %24, %25
  %smax = select i1 %26, i32 %24, i32 %25
  %27 = sub i32 -2, %smax, !dbg !1024
  br label %28, !dbg !1024

; <label>:28                                      ; preds = %28, %.lr.ph
  %indvars.iv = phi i64 [ %23, %.lr.ph ], [ %indvars.iv.next, %28 ]
  %i.11 = phi i32 [ 0, %.lr.ph ], [ %47, %28 ]
  %29 = tail call double @sre_random() #5, !dbg !1027
  %30 = trunc i64 %indvars.iv to i32, !dbg !1027
  %31 = sitofp i32 %30 to double, !dbg !1027
  %32 = fmul double %31, %29, !dbg !1027
  %33 = fptosi double %32 to i32, !dbg !1027
  tail call void @llvm.dbg.value(metadata i32 %33, i64 0, metadata !197, metadata !292), !dbg !1028
  %34 = sext i32 %33 to i64, !dbg !1029
  %35 = getelementptr inbounds i32* %6, i64 %34, !dbg !1029
  %36 = load i32* %35, align 4, !dbg !1029, !tbaa !593
  %37 = sext i32 %36 to i64, !dbg !1030
  %38 = load i8*** %22, align 8, !dbg !1025, !tbaa !977
  %39 = getelementptr inbounds i8** %38, i64 %37, !dbg !1030
  %40 = load i8** %39, align 8, !dbg !1030, !tbaa !311
  %41 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([14 x i8]* @.str4, i64 0, i64 0), i32 %36, i8* %40) #5, !dbg !1031
  %42 = load i32* %35, align 4, !dbg !1032, !tbaa !593
  %43 = sext i32 %42 to i64, !dbg !1033
  %44 = getelementptr inbounds i32* %11, i64 %43, !dbg !1033
  store i32 1, i32* %44, align 4, !dbg !1034, !tbaa !593
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !1024
  %45 = getelementptr inbounds i32* %6, i64 %indvars.iv.next, !dbg !1035
  %46 = load i32* %45, align 4, !dbg !1035, !tbaa !593
  store i32 %46, i32* %35, align 4, !dbg !1036, !tbaa !593
  %47 = add nuw nsw i32 %i.11, 1, !dbg !1037
  tail call void @llvm.dbg.value(metadata i32 %47, i64 0, metadata !196, metadata !292), !dbg !1006
  %exitcond = icmp eq i32 %i.11, %27, !dbg !1024
  br i1 %exitcond, label %._crit_edge, label %28, !dbg !1024

._crit_edge:                                      ; preds = %28, %._crit_edge6
  tail call void @MSASmallerAlignment(%struct.msa_struct* %msa, i32* %11, %struct.msa_struct** %ret_new) #5, !dbg !1038
  tail call void @free(i8* %5) #6, !dbg !1039
  tail call void @free(i8* %10) #6, !dbg !1040
  ret void, !dbg !1041
}

; Function Attrs: optsize
declare i32 @__maskrune(i32, i64) #2

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #3

; Function Attrs: optsize
declare i32 @__toupper(i32) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!288, !289, !290}
!llvm.ident = !{!291}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !9, subprograms: !17, globals: !287, imports: !287)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/weight.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "clust_strategy", file: !4, line: 273, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/squid.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "CLUSTER_MEAN", value: 0)
!7 = !DIEnumerator(name: "CLUSTER_MAX", value: 1)
!8 = !DIEnumerator(name: "CLUSTER_MIN", value: 2)
!9 = !{!10, !12, !13, !14, !15, !11, !16}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!12 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!13 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!17 = !{!18, !46, !72, !85, !100, !187, !199, !219, !230, !244, !250, !259, !262, !270, !281, !284}
!18 = !DISubprogram(name: "GSCWeights", scope: !1, file: !1, line: 46, type: !19, isLocal: false, isDefinition: true, scopeLine: 47, flags: DIFlagPrototyped, isOptimized: true, function: void (i8**, i32, i32, float*)* @GSCWeights, variables: !24)
!19 = !DISubroutineType(types: !20)
!20 = !{null, !21, !12, !12, !16}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64, align: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!23 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!24 = !{!25, !26, !27, !28, !29, !30, !42, !43, !44, !45}
!25 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "aseq", arg: 1, scope: !18, file: !1, line: 46, type: !21)
!26 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nseq", arg: 2, scope: !18, file: !1, line: 46, type: !12)
!27 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "alen", arg: 3, scope: !18, file: !1, line: 46, type: !12)
!28 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "wgt", arg: 4, scope: !18, file: !1, line: 46, type: !16)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dmx", scope: !18, file: !1, line: 48, type: !15)
!30 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tree", scope: !18, file: !1, line: 49, type: !31)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, align: 64)
!32 = !DICompositeType(tag: DW_TAG_structure_type, name: "phylo_s", file: !4, line: 258, size: 320, align: 64, elements: !33)
!33 = !{!34, !35, !36, !37, !38, !39, !40, !41}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !32, file: !4, line: 259, baseType: !12, size: 32, align: 32)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !32, file: !4, line: 260, baseType: !12, size: 32, align: 32, offset: 32)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !32, file: !4, line: 261, baseType: !12, size: 32, align: 32, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "diff", scope: !32, file: !4, line: 262, baseType: !13, size: 32, align: 32, offset: 96)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "lblen", scope: !32, file: !4, line: 263, baseType: !13, size: 32, align: 32, offset: 128)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "rblen", scope: !32, file: !4, line: 264, baseType: !13, size: 32, align: 32, offset: 160)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "is_in", scope: !32, file: !4, line: 265, baseType: !22, size: 64, align: 64, offset: 192)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "incnum", scope: !32, file: !4, line: 266, baseType: !12, size: 32, align: 32, offset: 256)
!42 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lwt", scope: !18, file: !1, line: 50, type: !16)
!43 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rwt", scope: !18, file: !1, line: 50, type: !16)
!44 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fwt", scope: !18, file: !1, line: 51, type: !16)
!45 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !18, file: !1, line: 52, type: !12)
!46 = !DISubprogram(name: "VoronoiWeights", scope: !1, file: !1, line: 154, type: !19, isLocal: false, isDefinition: true, scopeLine: 155, flags: DIFlagPrototyped, isOptimized: true, function: void (i8**, i32, i32, float*)* @VoronoiWeights, variables: !47)
!47 = !{!48, !49, !50, !51, !52, !53, !54, !55, !56, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71}
!48 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "aseq", arg: 1, scope: !46, file: !1, line: 154, type: !21)
!49 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nseq", arg: 2, scope: !46, file: !1, line: 154, type: !12)
!50 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "alen", arg: 3, scope: !46, file: !1, line: 154, type: !12)
!51 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "wgt", arg: 4, scope: !46, file: !1, line: 154, type: !16)
!52 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dmx", scope: !46, file: !1, line: 156, type: !15)
!53 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "halfmin", scope: !46, file: !1, line: 157, type: !16)
!54 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "psym", scope: !46, file: !1, line: 158, type: !21)
!55 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nsym", scope: !46, file: !1, line: 159, type: !14)
!56 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "symseen", scope: !46, file: !1, line: 160, type: !57)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 864, align: 32, elements: !58)
!58 = !{!59}
!59 = !DISubrange(count: 27)
!60 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "randseq", scope: !46, file: !1, line: 161, type: !22)
!61 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "acol", scope: !46, file: !1, line: 162, type: !12)
!62 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "idx", scope: !46, file: !1, line: 163, type: !12)
!63 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "symidx", scope: !46, file: !1, line: 164, type: !12)
!64 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !46, file: !1, line: 165, type: !12)
!65 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "min", scope: !46, file: !1, line: 166, type: !13)
!66 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dist", scope: !46, file: !1, line: 167, type: !13)
!67 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "challenge", scope: !46, file: !1, line: 168, type: !13)
!68 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "champion", scope: !46, file: !1, line: 168, type: !13)
!69 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "itscale", scope: !46, file: !1, line: 169, type: !12)
!70 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iteration", scope: !46, file: !1, line: 170, type: !12)
!71 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "best", scope: !46, file: !1, line: 171, type: !12)
!72 = !DISubprogram(name: "BlosumWeights", scope: !1, file: !1, line: 394, type: !73, isLocal: false, isDefinition: true, scopeLine: 395, flags: DIFlagPrototyped, isOptimized: true, function: void (i8**, i32, i32, float, float*)* @BlosumWeights, variables: !75)
!73 = !DISubroutineType(types: !74)
!74 = !{null, !21, !12, !12, !13, !16}
!75 = !{!76, !77, !78, !79, !80, !81, !82, !83, !84}
!76 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "aseqs", arg: 1, scope: !72, file: !1, line: 394, type: !21)
!77 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nseq", arg: 2, scope: !72, file: !1, line: 394, type: !12)
!78 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "alen", arg: 3, scope: !72, file: !1, line: 394, type: !12)
!79 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "maxid", arg: 4, scope: !72, file: !1, line: 394, type: !13)
!80 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "wgt", arg: 5, scope: !72, file: !1, line: 394, type: !16)
!81 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !72, file: !1, line: 396, type: !14)
!82 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nc", scope: !72, file: !1, line: 396, type: !12)
!83 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nmem", scope: !72, file: !1, line: 397, type: !14)
!84 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !72, file: !1, line: 398, type: !12)
!85 = !DISubprogram(name: "PositionBasedWeights", scope: !1, file: !1, line: 463, type: !19, isLocal: false, isDefinition: true, scopeLine: 464, flags: DIFlagPrototyped, isOptimized: true, function: void (i8**, i32, i32, float*)* @PositionBasedWeights, variables: !86)
!86 = !{!87, !88, !89, !90, !91, !95, !96, !97, !98, !99}
!87 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "aseq", arg: 1, scope: !85, file: !1, line: 463, type: !21)
!88 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nseq", arg: 2, scope: !85, file: !1, line: 463, type: !12)
!89 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "alen", arg: 3, scope: !85, file: !1, line: 463, type: !12)
!90 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "wgt", arg: 4, scope: !85, file: !1, line: 463, type: !16)
!91 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rescount", scope: !85, file: !1, line: 465, type: !92)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 832, align: 32, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 26)
!95 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nres", scope: !85, file: !1, line: 466, type: !12)
!96 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "idx", scope: !85, file: !1, line: 467, type: !12)
!97 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pos", scope: !85, file: !1, line: 467, type: !12)
!98 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !85, file: !1, line: 468, type: !12)
!99 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "norm", scope: !85, file: !1, line: 469, type: !13)
!100 = !DISubprogram(name: "FilterAlignment", scope: !1, file: !1, line: 521, type: !101, isLocal: false, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.msa_struct*, float, %struct.msa_struct**)* @FilterAlignment, variables: !176)
!101 = !DISubroutineType(types: !102)
!102 = !{null, !103, !13, !175}
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64, align: 64)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "MSA", file: !105, line: 177, baseType: !106)
!105 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/msa.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!106 = !DICompositeType(tag: DW_TAG_structure_type, name: "msa_struct", file: !105, line: 112, size: 2880, align: 64, elements: !107)
!107 = !{!108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !130, !132, !133, !134, !135, !136, !137, !138, !139, !140, !142, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "aseq", scope: !106, file: !105, line: 115, baseType: !21, size: 64, align: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "sqname", scope: !106, file: !105, line: 116, baseType: !21, size: 64, align: 64, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "wgt", scope: !106, file: !105, line: 117, baseType: !16, size: 64, align: 64, offset: 128)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "alen", scope: !106, file: !105, line: 118, baseType: !12, size: 32, align: 32, offset: 192)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "nseq", scope: !106, file: !105, line: 119, baseType: !12, size: 32, align: 32, offset: 224)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !106, file: !105, line: 123, baseType: !12, size: 32, align: 32, offset: 256)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !106, file: !105, line: 124, baseType: !12, size: 32, align: 32, offset: 288)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !106, file: !105, line: 125, baseType: !22, size: 64, align: 64, offset: 320)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !106, file: !105, line: 126, baseType: !22, size: 64, align: 64, offset: 384)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "acc", scope: !106, file: !105, line: 127, baseType: !22, size: 64, align: 64, offset: 448)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "au", scope: !106, file: !105, line: 128, baseType: !22, size: 64, align: 64, offset: 512)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "ss_cons", scope: !106, file: !105, line: 129, baseType: !22, size: 64, align: 64, offset: 576)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "sa_cons", scope: !106, file: !105, line: 130, baseType: !22, size: 64, align: 64, offset: 640)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "rf", scope: !106, file: !105, line: 131, baseType: !22, size: 64, align: 64, offset: 704)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "sqacc", scope: !106, file: !105, line: 132, baseType: !21, size: 64, align: 64, offset: 768)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "sqdesc", scope: !106, file: !105, line: 133, baseType: !21, size: 64, align: 64, offset: 832)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !106, file: !105, line: 134, baseType: !21, size: 64, align: 64, offset: 896)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !106, file: !105, line: 135, baseType: !21, size: 64, align: 64, offset: 960)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "cutoff", scope: !106, file: !105, line: 136, baseType: !127, size: 192, align: 32, offset: 1024)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 192, align: 32, elements: !128)
!128 = !{!129}
!129 = !DISubrange(count: 6)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "cutoff_is_set", scope: !106, file: !105, line: 137, baseType: !131, size: 192, align: 32, offset: 1216)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 192, align: 32, elements: !128)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "comment", scope: !106, file: !105, line: 144, baseType: !21, size: 64, align: 64, offset: 1408)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "ncomment", scope: !106, file: !105, line: 145, baseType: !12, size: 32, align: 32, offset: 1472)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_ncomment", scope: !106, file: !105, line: 146, baseType: !12, size: 32, align: 32, offset: 1504)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "gf_tag", scope: !106, file: !105, line: 148, baseType: !21, size: 64, align: 64, offset: 1536)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "gf", scope: !106, file: !105, line: 149, baseType: !21, size: 64, align: 64, offset: 1600)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "ngf", scope: !106, file: !105, line: 150, baseType: !12, size: 32, align: 32, offset: 1664)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_ngf", scope: !106, file: !105, line: 151, baseType: !12, size: 32, align: 32, offset: 1696)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "gs_tag", scope: !106, file: !105, line: 153, baseType: !21, size: 64, align: 64, offset: 1728)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "gs", scope: !106, file: !105, line: 154, baseType: !141, size: 64, align: 64, offset: 1792)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "gs_idx", scope: !106, file: !105, line: 155, baseType: !143, size: 64, align: 64, offset: 1856)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "GKI", file: !145, line: 42, baseType: !146)
!145 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/456.hmmer/src/gki.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!146 = !DICompositeType(tag: DW_TAG_structure_type, file: !145, line: 36, size: 192, align: 64, elements: !147)
!147 = !{!148, !156, !157, !158}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !146, file: !145, line: 37, baseType: !149, size: 64, align: 64)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64, align: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64, align: 64)
!151 = !DICompositeType(tag: DW_TAG_structure_type, name: "gki_elem", file: !145, line: 26, size: 192, align: 64, elements: !152)
!152 = !{!153, !154, !155}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !151, file: !145, line: 27, baseType: !22, size: 64, align: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "idx", scope: !151, file: !145, line: 28, baseType: !12, size: 32, align: 32, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nxt", scope: !151, file: !145, line: 29, baseType: !150, size: 64, align: 64, offset: 128)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "primelevel", scope: !146, file: !145, line: 39, baseType: !12, size: 32, align: 32, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nhash", scope: !146, file: !145, line: 40, baseType: !12, size: 32, align: 32, offset: 96)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nkeys", scope: !146, file: !145, line: 41, baseType: !12, size: 32, align: 32, offset: 128)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "ngs", scope: !106, file: !105, line: 156, baseType: !12, size: 32, align: 32, offset: 1920)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "gc_tag", scope: !106, file: !105, line: 158, baseType: !21, size: 64, align: 64, offset: 1984)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !106, file: !105, line: 159, baseType: !21, size: 64, align: 64, offset: 2048)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "gc_idx", scope: !106, file: !105, line: 160, baseType: !143, size: 64, align: 64, offset: 2112)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "ngc", scope: !106, file: !105, line: 161, baseType: !12, size: 32, align: 32, offset: 2176)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "gr_tag", scope: !106, file: !105, line: 163, baseType: !21, size: 64, align: 64, offset: 2240)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "gr", scope: !106, file: !105, line: 164, baseType: !141, size: 64, align: 64, offset: 2304)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "gr_idx", scope: !106, file: !105, line: 165, baseType: !143, size: 64, align: 64, offset: 2368)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "ngr", scope: !106, file: !105, line: 166, baseType: !12, size: 32, align: 32, offset: 2432)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !106, file: !105, line: 170, baseType: !143, size: 64, align: 64, offset: 2496)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nseqalloc", scope: !106, file: !105, line: 171, baseType: !12, size: 32, align: 32, offset: 2560)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nseqlump", scope: !106, file: !105, line: 172, baseType: !12, size: 32, align: 32, offset: 2592)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "sqlen", scope: !106, file: !105, line: 173, baseType: !14, size: 64, align: 64, offset: 2624)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "sslen", scope: !106, file: !105, line: 174, baseType: !14, size: 64, align: 64, offset: 2688)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "salen", scope: !106, file: !105, line: 175, baseType: !14, size: 64, align: 64, offset: 2752)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "lastidx", scope: !106, file: !105, line: 176, baseType: !12, size: 32, align: 32, offset: 2816)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64, align: 64)
!176 = !{!177, !178, !179, !180, !181, !182, !183, !184, !185, !186}
!177 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "msa", arg: 1, scope: !100, file: !1, line: 521, type: !103)
!178 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cutoff", arg: 2, scope: !100, file: !1, line: 521, type: !13)
!179 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ret_new", arg: 3, scope: !100, file: !1, line: 521, type: !175)
!180 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nnew", scope: !100, file: !1, line: 523, type: !12)
!181 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "list", scope: !100, file: !1, line: 524, type: !14)
!182 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "useme", scope: !100, file: !1, line: 525, type: !14)
!183 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ident", scope: !100, file: !1, line: 526, type: !13)
!184 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !100, file: !1, line: 527, type: !12)
!185 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !100, file: !1, line: 527, type: !12)
!186 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "remove", scope: !100, file: !1, line: 528, type: !12)
!187 = !DISubprogram(name: "SampleAlignment", scope: !1, file: !1, line: 587, type: !188, isLocal: false, isDefinition: true, scopeLine: 588, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.msa_struct*, i32, %struct.msa_struct**)* @SampleAlignment, variables: !190)
!188 = !DISubroutineType(types: !189)
!189 = !{null, !103, !12, !175}
!190 = !{!191, !192, !193, !194, !195, !196, !197, !198}
!191 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "msa", arg: 1, scope: !187, file: !1, line: 587, type: !103)
!192 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sample", arg: 2, scope: !187, file: !1, line: 587, type: !12)
!193 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ret_new", arg: 3, scope: !187, file: !1, line: 587, type: !175)
!194 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "list", scope: !187, file: !1, line: 589, type: !14)
!195 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "useme", scope: !187, file: !1, line: 590, type: !14)
!196 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !187, file: !1, line: 591, type: !12)
!197 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "idx", scope: !187, file: !1, line: 591, type: !12)
!198 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !187, file: !1, line: 592, type: !12)
!199 = !DISubprogram(name: "SingleLinkCluster", scope: !1, file: !1, line: 704, type: !200, isLocal: false, isDefinition: true, scopeLine: 706, flags: DIFlagPrototyped, isOptimized: true, function: void (i8**, i32, i32, float, i32**, i32*)* @SingleLinkCluster, variables: !203)
!200 = !DISubroutineType(types: !201)
!201 = !{null, !21, !12, !12, !13, !202, !14}
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!203 = !{!204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218}
!204 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "aseq", arg: 1, scope: !199, file: !1, line: 704, type: !21)
!205 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nseq", arg: 2, scope: !199, file: !1, line: 704, type: !12)
!206 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "alen", arg: 3, scope: !199, file: !1, line: 704, type: !12)
!207 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "maxid", arg: 4, scope: !199, file: !1, line: 704, type: !13)
!208 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ret_c", arg: 5, scope: !199, file: !1, line: 705, type: !202)
!209 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ret_nc", arg: 6, scope: !199, file: !1, line: 705, type: !14)
!210 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !199, file: !1, line: 707, type: !14)
!211 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "na", scope: !199, file: !1, line: 707, type: !12)
!212 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "b", scope: !199, file: !1, line: 708, type: !14)
!213 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nb", scope: !199, file: !1, line: 708, type: !12)
!214 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !199, file: !1, line: 709, type: !14)
!215 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nc", scope: !199, file: !1, line: 710, type: !12)
!216 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !199, file: !1, line: 711, type: !12)
!217 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "w", scope: !199, file: !1, line: 711, type: !12)
!218 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !199, file: !1, line: 712, type: !12)
!219 = !DISubprogram(name: "upweight", scope: !1, file: !1, line: 96, type: !220, isLocal: true, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.phylo_s*, i32, float*, float*, i32)* @upweight, variables: !222)
!220 = !DISubroutineType(types: !221)
!221 = !{null, !31, !12, !16, !16, !12}
!222 = !{!223, !224, !225, !226, !227, !228, !229}
!223 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tree", arg: 1, scope: !219, file: !1, line: 96, type: !31)
!224 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nseq", arg: 2, scope: !219, file: !1, line: 96, type: !12)
!225 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lwt", arg: 3, scope: !219, file: !1, line: 96, type: !16)
!226 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "rwt", arg: 4, scope: !219, file: !1, line: 96, type: !16)
!227 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "node", arg: 5, scope: !219, file: !1, line: 96, type: !12)
!228 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ld", scope: !219, file: !1, line: 98, type: !12)
!229 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rd", scope: !219, file: !1, line: 98, type: !12)
!230 = !DISubprogram(name: "downweight", scope: !1, file: !1, line: 110, type: !231, isLocal: true, isDefinition: true, scopeLine: 111, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.phylo_s*, i32, float*, float*, float*, i32)* @downweight, variables: !233)
!231 = !DISubroutineType(types: !232)
!232 = !{null, !31, !12, !16, !16, !16, !12}
!233 = !{!234, !235, !236, !237, !238, !239, !240, !241, !242, !243}
!234 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tree", arg: 1, scope: !230, file: !1, line: 110, type: !31)
!235 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nseq", arg: 2, scope: !230, file: !1, line: 110, type: !12)
!236 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lwt", arg: 3, scope: !230, file: !1, line: 110, type: !16)
!237 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "rwt", arg: 4, scope: !230, file: !1, line: 110, type: !16)
!238 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fwt", arg: 5, scope: !230, file: !1, line: 110, type: !16)
!239 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "node", arg: 6, scope: !230, file: !1, line: 110, type: !12)
!240 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ld", scope: !230, file: !1, line: 112, type: !12)
!241 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rd", scope: !230, file: !1, line: 112, type: !12)
!242 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lnum", scope: !230, file: !1, line: 113, type: !13)
!243 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rnum", scope: !230, file: !1, line: 113, type: !13)
!244 = !DISubprogram(name: "isupper", scope: !245, file: !245, line: 273, type: !246, isLocal: false, isDefinition: true, scopeLine: 274, flags: DIFlagPrototyped, isOptimized: true, variables: !248)
!245 = !DIFile(filename: "/usr/include/ctype.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!246 = !DISubroutineType(types: !247)
!247 = !{!12, !12}
!248 = !{!249}
!249 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !244, file: !245, line: 273, type: !12)
!250 = !DISubprogram(name: "__istype", scope: !245, file: !245, line: 153, type: !251, isLocal: false, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: true, variables: !256)
!251 = !DISubroutineType(types: !252)
!252 = !{!12, !253, !255}
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_ct_rune_t", file: !254, line: 70, baseType: !12)
!254 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!255 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!256 = !{!257, !258}
!257 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !250, file: !245, line: 153, type: !253)
!258 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_f", arg: 2, scope: !250, file: !245, line: 153, type: !255)
!259 = !DISubprogram(name: "isascii", scope: !245, file: !245, line: 135, type: !246, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, variables: !260)
!260 = !{!261}
!261 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !259, file: !245, line: 135, type: !12)
!262 = !DISubprogram(name: "simple_distance", scope: !1, file: !1, line: 316, type: !263, isLocal: true, isDefinition: true, scopeLine: 317, flags: DIFlagPrototyped, isOptimized: true, variables: !265)
!263 = !DISubroutineType(types: !264)
!264 = !{!13, !22, !22}
!265 = !{!266, !267, !268, !269}
!266 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s1", arg: 1, scope: !262, file: !1, line: 316, type: !22)
!267 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "s2", arg: 2, scope: !262, file: !1, line: 316, type: !22)
!268 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "diff", scope: !262, file: !1, line: 318, type: !12)
!269 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "valid", scope: !262, file: !1, line: 319, type: !12)
!270 = !DISubprogram(name: "simple_diffmx", scope: !1, file: !1, line: 343, type: !271, isLocal: true, isDefinition: true, scopeLine: 346, flags: DIFlagPrototyped, isOptimized: true, variables: !274)
!271 = !DISubroutineType(types: !272)
!272 = !{!12, !21, !12, !273}
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!274 = !{!275, !276, !277, !278, !279, !280}
!275 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "aseqs", arg: 1, scope: !270, file: !1, line: 343, type: !21)
!276 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "num", arg: 2, scope: !270, file: !1, line: 344, type: !12)
!277 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ret_dmx", arg: 3, scope: !270, file: !1, line: 345, type: !273)
!278 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dmx", scope: !270, file: !1, line: 347, type: !15)
!279 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !270, file: !1, line: 348, type: !12)
!280 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !270, file: !1, line: 348, type: !12)
!281 = !DISubprogram(name: "isalpha", scope: !245, file: !245, line: 218, type: !246, isLocal: false, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: true, variables: !282)
!282 = !{!283}
!283 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !281, file: !245, line: 218, type: !12)
!284 = !DISubprogram(name: "toupper", scope: !245, file: !245, line: 298, type: !246, isLocal: false, isDefinition: true, scopeLine: 299, flags: DIFlagPrototyped, isOptimized: true, variables: !285)
!285 = !{!286}
!286 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !284, file: !245, line: 298, type: !12)
!287 = !{}
!288 = !{i32 2, !"Dwarf Version", i32 2}
!289 = !{i32 2, !"Debug Info Version", i32 700000003}
!290 = !{i32 1, !"PIC Level", i32 2}
!291 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!292 = !DIExpression()
!293 = !DILocation(line: 46, column: 19, scope: !18)
!294 = !DILocation(line: 46, column: 29, scope: !18)
!295 = !DILocation(line: 46, column: 39, scope: !18)
!296 = !DILocation(line: 46, column: 52, scope: !18)
!297 = !DILocation(line: 56, column: 12, scope: !298)
!298 = distinct !DILexicalBlock(scope: !18, file: !1, line: 56, column: 7)
!299 = !DILocation(line: 56, column: 7, scope: !18)
!300 = !DILocation(line: 56, column: 27, scope: !301)
!301 = distinct !DILexicalBlock(scope: !298, file: !1, line: 56, column: 18)
!302 = !{!303, !303, i64 0}
!303 = !{!"float", !304, i64 0}
!304 = !{!"omnipotent char", !305, i64 0}
!305 = !{!"Simple C/C++ TBAA"}
!306 = !DILocation(line: 56, column: 34, scope: !301)
!307 = !DILocation(line: 48, column: 11, scope: !18)
!308 = !DILocation(line: 62, column: 3, scope: !18)
!309 = !DILocation(line: 63, column: 17, scope: !310)
!310 = distinct !DILexicalBlock(scope: !18, file: !1, line: 63, column: 7)
!311 = !{!312, !312, i64 0}
!312 = !{!"any pointer", !304, i64 0}
!313 = !DILocation(line: 49, column: 19, scope: !18)
!314 = !DILocation(line: 63, column: 9, scope: !310)
!315 = !DILocation(line: 63, column: 7, scope: !18)
!316 = !DILocation(line: 63, column: 50, scope: !310)
!317 = !DILocation(line: 67, column: 9, scope: !18)
!318 = !DILocation(line: 50, column: 11, scope: !18)
!319 = !DILocation(line: 68, column: 9, scope: !18)
!320 = !DILocation(line: 50, column: 17, scope: !18)
!321 = !DILocation(line: 69, column: 9, scope: !18)
!322 = !DILocation(line: 51, column: 11, scope: !18)
!323 = !DILocation(line: 52, column: 12, scope: !18)
!324 = !DILocation(line: 76, column: 17, scope: !325)
!325 = distinct !DILexicalBlock(scope: !326, file: !1, line: 76, column: 3)
!326 = distinct !DILexicalBlock(scope: !18, file: !1, line: 76, column: 3)
!327 = !DILocation(line: 76, column: 3, scope: !326)
!328 = !DILocation(line: 77, column: 14, scope: !325)
!329 = !DILocation(line: 77, column: 21, scope: !325)
!330 = !DILocation(line: 77, column: 5, scope: !325)
!331 = !DILocation(line: 77, column: 12, scope: !325)
!332 = !DILocation(line: 80, column: 12, scope: !18)
!333 = !DILocation(line: 80, column: 3, scope: !18)
!334 = !DILocation(line: 84, column: 15, scope: !18)
!335 = !DILocation(line: 84, column: 3, scope: !18)
!336 = !DILocation(line: 84, column: 13, scope: !18)
!337 = !DILocation(line: 85, column: 14, scope: !18)
!338 = !DILocation(line: 85, column: 3, scope: !18)
!339 = !DILocation(line: 87, column: 3, scope: !340)
!340 = distinct !DILexicalBlock(scope: !18, file: !1, line: 87, column: 3)
!341 = !DILocation(line: 88, column: 15, scope: !342)
!342 = distinct !DILexicalBlock(scope: !340, file: !1, line: 87, column: 3)
!343 = !DILocation(line: 88, column: 5, scope: !342)
!344 = !DILocation(line: 88, column: 13, scope: !342)
!345 = !DILocation(line: 90, column: 12, scope: !18)
!346 = !DILocation(line: 90, column: 3, scope: !18)
!347 = !DILocation(line: 91, column: 13, scope: !18)
!348 = !DILocation(line: 91, column: 3, scope: !18)
!349 = !DILocation(line: 92, column: 3, scope: !18)
!350 = !DILocation(line: 92, column: 14, scope: !18)
!351 = !DILocation(line: 92, column: 25, scope: !18)
!352 = !DILocation(line: 93, column: 1, scope: !18)
!353 = !DILocation(line: 96, column: 26, scope: !219)
!354 = !DILocation(line: 96, column: 36, scope: !219)
!355 = !DILocation(line: 96, column: 49, scope: !219)
!356 = !DILocation(line: 96, column: 61, scope: !219)
!357 = !DILocation(line: 96, column: 70, scope: !219)
!358 = !DILocation(line: 100, column: 17, scope: !219)
!359 = !DILocation(line: 100, column: 8, scope: !219)
!360 = !DILocation(line: 100, column: 24, scope: !219)
!361 = !{!362, !363, i64 4}
!362 = !{!"phylo_s", !363, i64 0, !363, i64 4, !363, i64 8, !303, i64 12, !303, i64 16, !303, i64 20, !312, i64 24, !363, i64 32}
!363 = !{!"int", !304, i64 0}
!364 = !DILocation(line: 98, column: 7, scope: !219)
!365 = !DILocation(line: 101, column: 10, scope: !366)
!366 = distinct !DILexicalBlock(scope: !219, file: !1, line: 101, column: 7)
!367 = !DILocation(line: 101, column: 7, scope: !219)
!368 = !DILocation(line: 101, column: 19, scope: !366)
!369 = !DILocation(line: 102, column: 24, scope: !219)
!370 = !{!362, !363, i64 8}
!371 = !DILocation(line: 98, column: 10, scope: !219)
!372 = !DILocation(line: 103, column: 10, scope: !373)
!373 = distinct !DILexicalBlock(scope: !219, file: !1, line: 103, column: 7)
!374 = !DILocation(line: 103, column: 7, scope: !219)
!375 = !DILocation(line: 103, column: 19, scope: !373)
!376 = !DILocation(line: 104, column: 15, scope: !219)
!377 = !DILocation(line: 104, column: 25, scope: !219)
!378 = !DILocation(line: 104, column: 23, scope: !219)
!379 = !DILocation(line: 104, column: 51, scope: !219)
!380 = !{!362, !303, i64 16}
!381 = !DILocation(line: 104, column: 33, scope: !219)
!382 = !DILocation(line: 104, column: 3, scope: !219)
!383 = !DILocation(line: 104, column: 13, scope: !219)
!384 = !DILocation(line: 105, column: 15, scope: !219)
!385 = !DILocation(line: 105, column: 25, scope: !219)
!386 = !DILocation(line: 105, column: 23, scope: !219)
!387 = !DILocation(line: 105, column: 51, scope: !219)
!388 = !{!362, !303, i64 20}
!389 = !DILocation(line: 105, column: 33, scope: !219)
!390 = !DILocation(line: 105, column: 3, scope: !219)
!391 = !DILocation(line: 105, column: 13, scope: !219)
!392 = !DILocation(line: 106, column: 1, scope: !219)
!393 = !DILocation(line: 110, column: 28, scope: !230)
!394 = !DILocation(line: 110, column: 38, scope: !230)
!395 = !DILocation(line: 110, column: 51, scope: !230)
!396 = !DILocation(line: 110, column: 63, scope: !230)
!397 = !DILocation(line: 110, column: 75, scope: !230)
!398 = !DILocation(line: 110, column: 84, scope: !230)
!399 = !DILocation(line: 115, column: 17, scope: !230)
!400 = !DILocation(line: 115, column: 8, scope: !230)
!401 = !DILocation(line: 115, column: 24, scope: !230)
!402 = !DILocation(line: 112, column: 7, scope: !230)
!403 = !DILocation(line: 116, column: 24, scope: !230)
!404 = !DILocation(line: 112, column: 10, scope: !230)
!405 = !DILocation(line: 117, column: 7, scope: !406)
!406 = distinct !DILexicalBlock(scope: !230, file: !1, line: 117, column: 7)
!407 = !DILocation(line: 117, column: 19, scope: !406)
!408 = !DILocation(line: 117, column: 17, scope: !406)
!409 = !DILocation(line: 117, column: 29, scope: !406)
!410 = !DILocation(line: 117, column: 7, scope: !230)
!411 = !DILocation(line: 119, column: 17, scope: !412)
!412 = distinct !DILexicalBlock(scope: !406, file: !1, line: 118, column: 5)
!413 = !DILocation(line: 119, column: 40, scope: !412)
!414 = !DILocation(line: 119, column: 27, scope: !412)
!415 = !DILocation(line: 119, column: 7, scope: !412)
!416 = !DILocation(line: 119, column: 15, scope: !412)
!417 = !DILocation(line: 120, column: 17, scope: !412)
!418 = !DILocation(line: 120, column: 30, scope: !412)
!419 = !DILocation(line: 120, column: 43, scope: !412)
!420 = !DILocation(line: 120, column: 53, scope: !412)
!421 = !DILocation(line: 120, column: 40, scope: !412)
!422 = !DILocation(line: 120, column: 27, scope: !412)
!423 = !DILocation(line: 120, column: 7, scope: !412)
!424 = !DILocation(line: 120, column: 15, scope: !412)
!425 = !DILocation(line: 121, column: 5, scope: !412)
!426 = !DILocation(line: 124, column: 18, scope: !427)
!427 = distinct !DILexicalBlock(scope: !406, file: !1, line: 123, column: 5)
!428 = !DILocation(line: 124, column: 14, scope: !427)
!429 = !DILocation(line: 124, column: 36, scope: !427)
!430 = !DILocation(line: 124, column: 29, scope: !427)
!431 = !DILocation(line: 124, column: 43, scope: !427)
!432 = !{!362, !363, i64 32}
!433 = !DILocation(line: 113, column: 9, scope: !230)
!434 = !DILocation(line: 125, column: 18, scope: !427)
!435 = !DILocation(line: 125, column: 14, scope: !427)
!436 = !DILocation(line: 125, column: 36, scope: !427)
!437 = !DILocation(line: 125, column: 29, scope: !427)
!438 = !DILocation(line: 125, column: 43, scope: !427)
!439 = !DILocation(line: 113, column: 15, scope: !230)
!440 = !DILocation(line: 126, column: 17, scope: !427)
!441 = !DILocation(line: 126, column: 27, scope: !427)
!442 = !DILocation(line: 126, column: 42, scope: !427)
!443 = !DILocation(line: 126, column: 34, scope: !427)
!444 = !DILocation(line: 126, column: 7, scope: !427)
!445 = !DILocation(line: 126, column: 15, scope: !427)
!446 = !DILocation(line: 127, column: 17, scope: !427)
!447 = !DILocation(line: 127, column: 27, scope: !427)
!448 = !DILocation(line: 127, column: 34, scope: !427)
!449 = !DILocation(line: 127, column: 7, scope: !427)
!450 = !DILocation(line: 127, column: 15, scope: !427)
!451 = !DILocation(line: 130, column: 10, scope: !452)
!452 = distinct !DILexicalBlock(scope: !230, file: !1, line: 130, column: 7)
!453 = !DILocation(line: 130, column: 7, scope: !230)
!454 = !DILocation(line: 130, column: 19, scope: !452)
!455 = !DILocation(line: 131, column: 10, scope: !456)
!456 = distinct !DILexicalBlock(scope: !230, file: !1, line: 131, column: 7)
!457 = !DILocation(line: 131, column: 7, scope: !230)
!458 = !DILocation(line: 132, column: 1, scope: !230)
!459 = !DILocation(line: 154, column: 23, scope: !46)
!460 = !DILocation(line: 154, column: 33, scope: !46)
!461 = !DILocation(line: 154, column: 43, scope: !46)
!462 = !DILocation(line: 154, column: 56, scope: !46)
!463 = !DILocation(line: 160, column: 3, scope: !46)
!464 = !DILocation(line: 160, column: 12, scope: !46)
!465 = !DILocation(line: 175, column: 12, scope: !466)
!466 = distinct !DILexicalBlock(scope: !46, file: !1, line: 175, column: 7)
!467 = !DILocation(line: 175, column: 7, scope: !46)
!468 = !DILocation(line: 175, column: 27, scope: !469)
!469 = distinct !DILexicalBlock(scope: !466, file: !1, line: 175, column: 18)
!470 = !DILocation(line: 175, column: 34, scope: !469)
!471 = !DILocation(line: 169, column: 11, scope: !46)
!472 = !DILocation(line: 352, column: 51, scope: !473, inlinedAt: !474)
!473 = distinct !DILexicalBlock(scope: !270, file: !1, line: 352, column: 7)
!474 = distinct !DILocation(line: 182, column: 9, scope: !475)
!475 = distinct !DILexicalBlock(scope: !46, file: !1, line: 182, column: 7)
!476 = !DILocation(line: 352, column: 49, scope: !473, inlinedAt: !474)
!477 = !DILocation(line: 352, column: 25, scope: !473, inlinedAt: !474)
!478 = !DILocation(line: 352, column: 14, scope: !473, inlinedAt: !474)
!479 = !DILocation(line: 347, column: 11, scope: !270, inlinedAt: !474)
!480 = !DILocation(line: 352, column: 57, scope: !473, inlinedAt: !474)
!481 = !DILocation(line: 352, column: 7, scope: !270, inlinedAt: !474)
!482 = !DILocation(line: 353, column: 5, scope: !473, inlinedAt: !474)
!483 = !DILocation(line: 354, column: 17, scope: !484, inlinedAt: !474)
!484 = distinct !DILexicalBlock(scope: !485, file: !1, line: 354, column: 3)
!485 = distinct !DILexicalBlock(scope: !270, file: !1, line: 354, column: 3)
!486 = !DILocation(line: 355, column: 51, scope: !487, inlinedAt: !474)
!487 = distinct !DILexicalBlock(scope: !484, file: !1, line: 355, column: 9)
!488 = !DILocation(line: 354, column: 3, scope: !485, inlinedAt: !474)
!489 = !DILocation(line: 156, column: 11, scope: !46)
!490 = !DILocation(line: 184, column: 13, scope: !46)
!491 = !DILocation(line: 157, column: 11, scope: !46)
!492 = !DILocation(line: 163, column: 12, scope: !46)
!493 = !DILocation(line: 185, column: 3, scope: !494)
!494 = distinct !DILexicalBlock(scope: !46, file: !1, line: 185, column: 3)
!495 = !DILocation(line: 182, column: 9, scope: !475)
!496 = !DILocation(line: 355, column: 29, scope: !487, inlinedAt: !474)
!497 = !DILocation(line: 355, column: 10, scope: !487, inlinedAt: !474)
!498 = !DILocation(line: 355, column: 17, scope: !487, inlinedAt: !474)
!499 = !DILocation(line: 355, column: 59, scope: !487, inlinedAt: !474)
!500 = !DILocation(line: 355, column: 9, scope: !484, inlinedAt: !474)
!501 = !DILocation(line: 356, column: 7, scope: !487, inlinedAt: !474)
!502 = !DILocation(line: 362, column: 47, scope: !503, inlinedAt: !474)
!503 = distinct !DILexicalBlock(scope: !504, file: !1, line: 361, column: 5)
!504 = distinct !DILexicalBlock(scope: !505, file: !1, line: 361, column: 5)
!505 = distinct !DILexicalBlock(scope: !506, file: !1, line: 360, column: 3)
!506 = distinct !DILexicalBlock(scope: !270, file: !1, line: 360, column: 3)
!507 = !DILocation(line: 362, column: 7, scope: !503, inlinedAt: !474)
!508 = !DILocation(line: 361, column: 5, scope: !504, inlinedAt: !474)
!509 = !DILocation(line: 316, column: 23, scope: !262, inlinedAt: !510)
!510 = distinct !DILocation(line: 362, column: 31, scope: !503, inlinedAt: !474)
!511 = !DILocation(line: 316, column: 33, scope: !262, inlinedAt: !510)
!512 = !DILocation(line: 318, column: 7, scope: !262, inlinedAt: !510)
!513 = !DILocation(line: 319, column: 7, scope: !262, inlinedAt: !510)
!514 = !DILocation(line: 321, column: 3, scope: !262, inlinedAt: !510)
!515 = !DILocation(line: 362, column: 31, scope: !503, inlinedAt: !474)
!516 = !DILocation(line: 321, column: 10, scope: !517, inlinedAt: !510)
!517 = distinct !DILexicalBlock(scope: !518, file: !1, line: 321, column: 3)
!518 = distinct !DILexicalBlock(scope: !262, file: !1, line: 321, column: 3)
!519 = !{!304, !304, i64 0}
!520 = !DILocation(line: 321, column: 3, scope: !518, inlinedAt: !510)
!521 = !DILocation(line: 323, column: 25, scope: !522, inlinedAt: !510)
!522 = distinct !DILexicalBlock(scope: !523, file: !1, line: 323, column: 11)
!523 = distinct !DILexicalBlock(scope: !517, file: !1, line: 322, column: 5)
!524 = !DILocation(line: 324, column: 11, scope: !523, inlinedAt: !510)
!525 = !DILocation(line: 325, column: 12, scope: !523, inlinedAt: !510)
!526 = !DILocation(line: 326, column: 5, scope: !523, inlinedAt: !510)
!527 = !DILocation(line: 321, column: 25, scope: !517, inlinedAt: !510)
!528 = !DILocation(line: 321, column: 31, scope: !517, inlinedAt: !510)
!529 = !DILocation(line: 321, column: 3, scope: !517, inlinedAt: !510)
!530 = !DILocation(line: 327, column: 17, scope: !262, inlinedAt: !510)
!531 = !DILocation(line: 327, column: 11, scope: !262, inlinedAt: !510)
!532 = !DILocation(line: 327, column: 24, scope: !262, inlinedAt: !510)
!533 = !DILocation(line: 327, column: 39, scope: !262, inlinedAt: !510)
!534 = !DILocation(line: 327, column: 37, scope: !262, inlinedAt: !510)
!535 = !DILocation(line: 362, column: 19, scope: !503, inlinedAt: !474)
!536 = !DILocation(line: 362, column: 29, scope: !503, inlinedAt: !474)
!537 = !DILocation(line: 362, column: 17, scope: !503, inlinedAt: !474)
!538 = !DILocation(line: 362, column: 57, scope: !503, inlinedAt: !474)
!539 = !DILocation(line: 360, column: 3, scope: !506, inlinedAt: !474)
!540 = !DILocation(line: 190, column: 8, scope: !541)
!541 = distinct !DILexicalBlock(scope: !542, file: !1, line: 190, column: 8)
!542 = distinct !DILexicalBlock(scope: !543, file: !1, line: 188, column: 2)
!543 = distinct !DILexicalBlock(scope: !544, file: !1, line: 187, column: 7)
!544 = distinct !DILexicalBlock(scope: !545, file: !1, line: 187, column: 7)
!545 = distinct !DILexicalBlock(scope: !546, file: !1, line: 186, column: 5)
!546 = distinct !DILexicalBlock(scope: !494, file: !1, line: 185, column: 3)
!547 = !DILocation(line: 187, column: 7, scope: !544)
!548 = !DILocation(line: 189, column: 10, scope: !549)
!549 = distinct !DILexicalBlock(scope: !542, file: !1, line: 189, column: 8)
!550 = !DILocation(line: 189, column: 8, scope: !542)
!551 = !DILocation(line: 190, column: 20, scope: !541)
!552 = !DILocation(line: 190, column: 8, scope: !542)
!553 = !DILocation(line: 166, column: 11, scope: !46)
!554 = !DILocation(line: 190, column: 27, scope: !541)
!555 = !DILocation(line: 192, column: 22, scope: !545)
!556 = !DILocation(line: 192, column: 7, scope: !545)
!557 = !DILocation(line: 192, column: 20, scope: !545)
!558 = !DILocation(line: 194, column: 25, scope: !46)
!559 = !DILocation(line: 194, column: 3, scope: !46)
!560 = !DILocation(line: 198, column: 10, scope: !46)
!561 = !DILocation(line: 158, column: 12, scope: !46)
!562 = !DILocation(line: 199, column: 10, scope: !46)
!563 = !DILocation(line: 159, column: 12, scope: !46)
!564 = !DILocation(line: 162, column: 12, scope: !46)
!565 = !DILocation(line: 200, column: 23, scope: !566)
!566 = distinct !DILexicalBlock(scope: !567, file: !1, line: 200, column: 3)
!567 = distinct !DILexicalBlock(scope: !46, file: !1, line: 200, column: 3)
!568 = !DILocation(line: 200, column: 3, scope: !567)
!569 = !DILocation(line: 204, column: 3, scope: !570)
!570 = distinct !DILexicalBlock(scope: !46, file: !1, line: 204, column: 3)
!571 = !DILocation(line: 226, column: 11, scope: !572)
!572 = distinct !DILexicalBlock(scope: !573, file: !1, line: 226, column: 11)
!573 = distinct !DILexicalBlock(scope: !574, file: !1, line: 205, column: 5)
!574 = distinct !DILexicalBlock(scope: !570, file: !1, line: 204, column: 3)
!575 = !DILocation(line: 201, column: 18, scope: !566)
!576 = !DILocation(line: 201, column: 5, scope: !566)
!577 = !DILocation(line: 201, column: 16, scope: !566)
!578 = !DILocation(line: 206, column: 7, scope: !573)
!579 = !DILocation(line: 207, column: 7, scope: !580)
!580 = distinct !DILexicalBlock(scope: !573, file: !1, line: 207, column: 7)
!581 = !DILocation(line: 208, column: 8, scope: !582)
!582 = distinct !DILexicalBlock(scope: !583, file: !1, line: 208, column: 6)
!583 = distinct !DILexicalBlock(scope: !580, file: !1, line: 207, column: 7)
!584 = !DILocation(line: 273, column: 13, scope: !244, inlinedAt: !585)
!585 = distinct !DILocation(line: 210, column: 10, scope: !586)
!586 = distinct !DILexicalBlock(scope: !587, file: !1, line: 210, column: 10)
!587 = distinct !DILexicalBlock(scope: !582, file: !1, line: 209, column: 4)
!588 = !DILocation(line: 153, column: 29, scope: !250, inlinedAt: !589)
!589 = distinct !DILocation(line: 275, column: 10, scope: !244, inlinedAt: !585)
!590 = !DILocation(line: 153, column: 47, scope: !250, inlinedAt: !589)
!591 = !DILocation(line: 158, column: 10, scope: !250, inlinedAt: !589)
!592 = !DILocation(line: 158, column: 27, scope: !250, inlinedAt: !589)
!593 = !{!363, !363, i64 0}
!594 = !DILocation(line: 158, column: 25, scope: !250, inlinedAt: !589)
!595 = !DILocation(line: 159, column: 7, scope: !250, inlinedAt: !589)
!596 = !DILocation(line: 211, column: 17, scope: !586)
!597 = !DILocation(line: 210, column: 10, scope: !586)
!598 = !DILocation(line: 210, column: 10, scope: !587)
!599 = !DILocation(line: 214, column: 22, scope: !600)
!600 = distinct !DILexicalBlock(scope: !587, file: !1, line: 214, column: 10)
!601 = !DILocation(line: 215, column: 8, scope: !600)
!602 = !DILocation(line: 215, column: 24, scope: !600)
!603 = !DILocation(line: 218, column: 16, scope: !582)
!604 = !DILocation(line: 220, column: 12, scope: !605)
!605 = distinct !DILexicalBlock(scope: !573, file: !1, line: 220, column: 7)
!606 = !DILocation(line: 220, column: 23, scope: !605)
!607 = !DILocation(line: 165, column: 12, scope: !46)
!608 = !DILocation(line: 223, column: 6, scope: !609)
!609 = distinct !DILexicalBlock(scope: !610, file: !1, line: 222, column: 4)
!610 = distinct !DILexicalBlock(scope: !611, file: !1, line: 221, column: 6)
!611 = distinct !DILexicalBlock(scope: !605, file: !1, line: 220, column: 7)
!612 = !DILocation(line: 220, column: 7, scope: !605)
!613 = !DILocation(line: 221, column: 6, scope: !610)
!614 = !DILocation(line: 221, column: 6, scope: !611)
!615 = !DILocation(line: 223, column: 34, scope: !609)
!616 = !DILocation(line: 223, column: 31, scope: !609)
!617 = !DILocation(line: 223, column: 29, scope: !609)
!618 = !DILocation(line: 224, column: 16, scope: !609)
!619 = !DILocation(line: 225, column: 4, scope: !609)
!620 = !DILocation(line: 220, column: 44, scope: !611)
!621 = !DILocation(line: 226, column: 11, scope: !573)
!622 = !DILocation(line: 226, column: 26, scope: !623)
!623 = distinct !DILexicalBlock(scope: !572, file: !1, line: 226, column: 24)
!624 = !DILocation(line: 226, column: 49, scope: !623)
!625 = !DILocation(line: 226, column: 66, scope: !623)
!626 = !DILocation(line: 226, column: 70, scope: !623)
!627 = !DILocation(line: 268, column: 13, scope: !46)
!628 = !DILocation(line: 161, column: 12, scope: !46)
!629 = !DILocation(line: 171, column: 11, scope: !46)
!630 = !DILocation(line: 271, column: 3, scope: !46)
!631 = !DILocation(line: 170, column: 11, scope: !46)
!632 = !DILocation(line: 272, column: 43, scope: !633)
!633 = distinct !DILexicalBlock(scope: !634, file: !1, line: 272, column: 3)
!634 = distinct !DILexicalBlock(scope: !46, file: !1, line: 272, column: 3)
!635 = !DILocation(line: 272, column: 3, scope: !634)
!636 = !DILocation(line: 274, column: 7, scope: !637)
!637 = distinct !DILexicalBlock(scope: !638, file: !1, line: 274, column: 7)
!638 = distinct !DILexicalBlock(scope: !633, file: !1, line: 273, column: 5)
!639 = !DILocation(line: 299, column: 3, scope: !640)
!640 = distinct !DILexicalBlock(scope: !46, file: !1, line: 299, column: 3)
!641 = !DILocation(line: 275, column: 19, scope: !642)
!642 = distinct !DILexicalBlock(scope: !637, file: !1, line: 274, column: 7)
!643 = !DILocation(line: 275, column: 30, scope: !642)
!644 = !DILocation(line: 275, column: 18, scope: !642)
!645 = !DILocation(line: 275, column: 55, scope: !642)
!646 = !DILocation(line: 275, column: 44, scope: !642)
!647 = !DILocation(line: 275, column: 2, scope: !642)
!648 = !DILocation(line: 275, column: 16, scope: !642)
!649 = !DILocation(line: 276, column: 7, scope: !638)
!650 = !DILocation(line: 276, column: 21, scope: !638)
!651 = !DILocation(line: 278, column: 18, scope: !638)
!652 = !DILocation(line: 168, column: 22, scope: !46)
!653 = !DILocation(line: 279, column: 7, scope: !654)
!654 = distinct !DILexicalBlock(scope: !638, file: !1, line: 279, column: 7)
!655 = !DILocation(line: 281, column: 27, scope: !656)
!656 = distinct !DILexicalBlock(scope: !657, file: !1, line: 280, column: 2)
!657 = distinct !DILexicalBlock(scope: !654, file: !1, line: 279, column: 7)
!658 = !DILocation(line: 316, column: 23, scope: !262, inlinedAt: !659)
!659 = distinct !DILocation(line: 281, column: 11, scope: !656)
!660 = !DILocation(line: 316, column: 33, scope: !262, inlinedAt: !659)
!661 = !DILocation(line: 318, column: 7, scope: !262, inlinedAt: !659)
!662 = !DILocation(line: 319, column: 7, scope: !262, inlinedAt: !659)
!663 = !DILocation(line: 321, column: 3, scope: !262, inlinedAt: !659)
!664 = !DILocation(line: 281, column: 11, scope: !656)
!665 = !DILocation(line: 321, column: 10, scope: !517, inlinedAt: !659)
!666 = !DILocation(line: 321, column: 3, scope: !518, inlinedAt: !659)
!667 = !DILocation(line: 323, column: 25, scope: !522, inlinedAt: !659)
!668 = !DILocation(line: 324, column: 11, scope: !523, inlinedAt: !659)
!669 = !DILocation(line: 325, column: 12, scope: !523, inlinedAt: !659)
!670 = !DILocation(line: 326, column: 5, scope: !523, inlinedAt: !659)
!671 = !DILocation(line: 321, column: 25, scope: !517, inlinedAt: !659)
!672 = !DILocation(line: 321, column: 31, scope: !517, inlinedAt: !659)
!673 = !DILocation(line: 321, column: 3, scope: !517, inlinedAt: !659)
!674 = !DILocation(line: 327, column: 17, scope: !262, inlinedAt: !659)
!675 = !DILocation(line: 327, column: 11, scope: !262, inlinedAt: !659)
!676 = !DILocation(line: 327, column: 24, scope: !262, inlinedAt: !659)
!677 = !DILocation(line: 327, column: 39, scope: !262, inlinedAt: !659)
!678 = !DILocation(line: 327, column: 37, scope: !262, inlinedAt: !659)
!679 = !DILocation(line: 167, column: 11, scope: !46)
!680 = !DILocation(line: 282, column: 15, scope: !681)
!681 = distinct !DILexicalBlock(scope: !656, file: !1, line: 282, column: 8)
!682 = !DILocation(line: 282, column: 13, scope: !681)
!683 = !DILocation(line: 282, column: 8, scope: !656)
!684 = !DILocation(line: 287, column: 13, scope: !685)
!685 = distinct !DILexicalBlock(scope: !656, file: !1, line: 287, column: 8)
!686 = !DILocation(line: 287, column: 8, scope: !656)
!687 = !DILocation(line: 288, column: 19, scope: !688)
!688 = distinct !DILexicalBlock(scope: !685, file: !1, line: 288, column: 6)
!689 = !DILocation(line: 288, column: 57, scope: !688)
!690 = !DILocation(line: 289, column: 18, scope: !691)
!691 = distinct !DILexicalBlock(scope: !685, file: !1, line: 289, column: 13)
!692 = !DILocation(line: 289, column: 13, scope: !685)
!693 = !DILocation(line: 291, column: 20, scope: !694)
!694 = distinct !DILexicalBlock(scope: !691, file: !1, line: 290, column: 6)
!695 = !DILocation(line: 168, column: 11, scope: !46)
!696 = !DILocation(line: 292, column: 22, scope: !697)
!697 = distinct !DILexicalBlock(scope: !694, file: !1, line: 292, column: 12)
!698 = !DILocation(line: 292, column: 12, scope: !694)
!699 = !DILocation(line: 293, column: 51, scope: !700)
!700 = distinct !DILexicalBlock(scope: !697, file: !1, line: 293, column: 3)
!701 = !DILocation(line: 279, column: 36, scope: !657)
!702 = !DILocation(line: 296, column: 7, scope: !638)
!703 = !DILocation(line: 296, column: 17, scope: !638)
!704 = !DILocation(line: 272, column: 60, scope: !633)
!705 = !DILocation(line: 272, column: 33, scope: !633)
!706 = !DILocation(line: 300, column: 16, scope: !707)
!707 = distinct !DILexicalBlock(scope: !640, file: !1, line: 299, column: 3)
!708 = !DILocation(line: 300, column: 25, scope: !707)
!709 = !DILocation(line: 300, column: 14, scope: !707)
!710 = !DILocation(line: 302, column: 3, scope: !46)
!711 = !DILocation(line: 303, column: 3, scope: !46)
!712 = !DILocation(line: 304, column: 3, scope: !46)
!713 = !DILocation(line: 305, column: 3, scope: !46)
!714 = !DILocation(line: 306, column: 1, scope: !46)
!715 = !DILocation(line: 394, column: 22, scope: !72)
!716 = !DILocation(line: 394, column: 33, scope: !72)
!717 = !DILocation(line: 394, column: 43, scope: !72)
!718 = !DILocation(line: 394, column: 55, scope: !72)
!719 = !DILocation(line: 394, column: 69, scope: !72)
!720 = !DILocation(line: 396, column: 9, scope: !72)
!721 = !DILocation(line: 396, column: 12, scope: !72)
!722 = !DILocation(line: 400, column: 3, scope: !72)
!723 = !DILocation(line: 402, column: 3, scope: !72)
!724 = !DILocation(line: 403, column: 10, scope: !72)
!725 = !DILocation(line: 397, column: 9, scope: !72)
!726 = !DILocation(line: 398, column: 9, scope: !72)
!727 = !DILocation(line: 405, column: 17, scope: !728)
!728 = distinct !DILexicalBlock(scope: !729, file: !1, line: 405, column: 3)
!729 = distinct !DILexicalBlock(scope: !72, file: !1, line: 405, column: 3)
!730 = !DILocation(line: 405, column: 3, scope: !729)
!731 = !DILocation(line: 405, column: 38, scope: !728)
!732 = !DILocation(line: 406, column: 17, scope: !733)
!733 = distinct !DILexicalBlock(scope: !734, file: !1, line: 406, column: 3)
!734 = distinct !DILexicalBlock(scope: !72, file: !1, line: 406, column: 3)
!735 = !DILocation(line: 406, column: 3, scope: !734)
!736 = !DILocation(line: 406, column: 35, scope: !733)
!737 = !DILocation(line: 407, column: 3, scope: !738)
!738 = distinct !DILexicalBlock(scope: !72, file: !1, line: 407, column: 3)
!739 = !DILocation(line: 410, column: 8, scope: !72)
!740 = !DILocation(line: 407, column: 57, scope: !741)
!741 = distinct !DILexicalBlock(scope: !738, file: !1, line: 407, column: 3)
!742 = !DILocation(line: 406, column: 30, scope: !733)
!743 = !DILocation(line: 406, column: 40, scope: !733)
!744 = !DILocation(line: 407, column: 52, scope: !741)
!745 = !DILocation(line: 407, column: 44, scope: !741)
!746 = !DILocation(line: 407, column: 39, scope: !741)
!747 = !DILocation(line: 407, column: 30, scope: !741)
!748 = !DILocation(line: 407, column: 37, scope: !741)
!749 = !DILocation(line: 409, column: 3, scope: !72)
!750 = !DILocation(line: 410, column: 3, scope: !72)
!751 = !DILocation(line: 411, column: 3, scope: !72)
!752 = !DILocation(line: 704, column: 26, scope: !199)
!753 = !DILocation(line: 704, column: 36, scope: !199)
!754 = !DILocation(line: 704, column: 46, scope: !199)
!755 = !DILocation(line: 704, column: 58, scope: !199)
!756 = !DILocation(line: 705, column: 11, scope: !199)
!757 = !DILocation(line: 705, column: 23, scope: !199)
!758 = !DILocation(line: 716, column: 7, scope: !199)
!759 = !DILocation(line: 707, column: 8, scope: !199)
!760 = !DILocation(line: 717, column: 7, scope: !199)
!761 = !DILocation(line: 708, column: 8, scope: !199)
!762 = !DILocation(line: 718, column: 7, scope: !199)
!763 = !DILocation(line: 709, column: 8, scope: !199)
!764 = !DILocation(line: 712, column: 8, scope: !199)
!765 = !DILocation(line: 719, column: 17, scope: !766)
!766 = distinct !DILexicalBlock(scope: !767, file: !1, line: 719, column: 3)
!767 = distinct !DILexicalBlock(scope: !199, file: !1, line: 719, column: 3)
!768 = !DILocation(line: 719, column: 3, scope: !767)
!769 = !DILocation(line: 726, column: 3, scope: !199)
!770 = !DILocation(line: 735, column: 55, scope: !771)
!771 = distinct !DILexicalBlock(scope: !772, file: !1, line: 735, column: 10)
!772 = distinct !DILexicalBlock(scope: !773, file: !1, line: 734, column: 4)
!773 = distinct !DILexicalBlock(scope: !774, file: !1, line: 734, column: 4)
!774 = distinct !DILexicalBlock(scope: !775, file: !1, line: 731, column: 2)
!775 = distinct !DILexicalBlock(scope: !199, file: !1, line: 727, column: 5)
!776 = !DILocation(line: 735, column: 53, scope: !771)
!777 = !DILocation(line: 719, column: 30, scope: !766)
!778 = !DILocation(line: 719, column: 35, scope: !766)
!779 = !DILocation(line: 728, column: 15, scope: !775)
!780 = !DILocation(line: 728, column: 11, scope: !775)
!781 = !DILocation(line: 711, column: 8, scope: !199)
!782 = !DILocation(line: 707, column: 11, scope: !199)
!783 = !DILocation(line: 729, column: 7, scope: !775)
!784 = !DILocation(line: 729, column: 13, scope: !775)
!785 = !DILocation(line: 729, column: 22, scope: !775)
!786 = !DILocation(line: 708, column: 11, scope: !199)
!787 = !DILocation(line: 730, column: 17, scope: !775)
!788 = !DILocation(line: 730, column: 7, scope: !775)
!789 = !DILocation(line: 732, column: 15, scope: !774)
!790 = !DILocation(line: 732, column: 11, scope: !774)
!791 = !DILocation(line: 733, column: 4, scope: !774)
!792 = !DILocation(line: 733, column: 9, scope: !774)
!793 = !DILocation(line: 735, column: 26, scope: !771)
!794 = !DILocation(line: 734, column: 9, scope: !773)
!795 = !DILocation(line: 734, column: 15, scope: !773)
!796 = !DILocation(line: 734, column: 21, scope: !772)
!797 = !DILocation(line: 734, column: 4, scope: !773)
!798 = !DILocation(line: 735, column: 40, scope: !771)
!799 = !DILocation(line: 735, column: 35, scope: !771)
!800 = !DILocation(line: 316, column: 23, scope: !262, inlinedAt: !801)
!801 = distinct !DILocation(line: 735, column: 10, scope: !771)
!802 = !DILocation(line: 316, column: 33, scope: !262, inlinedAt: !801)
!803 = !DILocation(line: 318, column: 7, scope: !262, inlinedAt: !801)
!804 = !DILocation(line: 319, column: 7, scope: !262, inlinedAt: !801)
!805 = !DILocation(line: 321, column: 3, scope: !262, inlinedAt: !801)
!806 = !DILocation(line: 735, column: 10, scope: !771)
!807 = !DILocation(line: 321, column: 10, scope: !517, inlinedAt: !801)
!808 = !DILocation(line: 321, column: 3, scope: !518, inlinedAt: !801)
!809 = !DILocation(line: 323, column: 25, scope: !522, inlinedAt: !801)
!810 = !DILocation(line: 324, column: 11, scope: !523, inlinedAt: !801)
!811 = !DILocation(line: 325, column: 12, scope: !523, inlinedAt: !801)
!812 = !DILocation(line: 326, column: 5, scope: !523, inlinedAt: !801)
!813 = !DILocation(line: 321, column: 25, scope: !517, inlinedAt: !801)
!814 = !DILocation(line: 321, column: 31, scope: !517, inlinedAt: !801)
!815 = !DILocation(line: 321, column: 3, scope: !517, inlinedAt: !801)
!816 = !DILocation(line: 327, column: 17, scope: !262, inlinedAt: !801)
!817 = !DILocation(line: 327, column: 11, scope: !262, inlinedAt: !801)
!818 = !DILocation(line: 327, column: 24, scope: !262, inlinedAt: !801)
!819 = !DILocation(line: 327, column: 39, scope: !262, inlinedAt: !801)
!820 = !DILocation(line: 327, column: 37, scope: !262, inlinedAt: !801)
!821 = !DILocation(line: 735, column: 47, scope: !771)
!822 = !DILocation(line: 735, column: 10, scope: !772)
!823 = !DILocation(line: 711, column: 10, scope: !199)
!824 = !DILocation(line: 737, column: 24, scope: !825)
!825 = distinct !DILexicalBlock(scope: !771, file: !1, line: 736, column: 8)
!826 = !DILocation(line: 737, column: 20, scope: !825)
!827 = !DILocation(line: 737, column: 18, scope: !825)
!828 = !DILocation(line: 738, column: 3, scope: !825)
!829 = !DILocation(line: 738, column: 9, scope: !825)
!830 = !DILocation(line: 739, column: 8, scope: !825)
!831 = !DILocation(line: 741, column: 9, scope: !775)
!832 = !DILocation(line: 710, column: 8, scope: !199)
!833 = !DILocation(line: 726, column: 13, scope: !199)
!834 = !DILocation(line: 746, column: 3, scope: !199)
!835 = !DILocation(line: 747, column: 3, scope: !199)
!836 = !DILocation(line: 748, column: 11, scope: !199)
!837 = !DILocation(line: 749, column: 11, scope: !199)
!838 = !DILocation(line: 750, column: 3, scope: !199)
!839 = !DILocation(line: 463, column: 29, scope: !85)
!840 = !DILocation(line: 463, column: 39, scope: !85)
!841 = !DILocation(line: 463, column: 49, scope: !85)
!842 = !DILocation(line: 463, column: 62, scope: !85)
!843 = !DILocation(line: 465, column: 3, scope: !85)
!844 = !DILocation(line: 465, column: 8, scope: !85)
!845 = !DILocation(line: 471, column: 3, scope: !85)
!846 = !DILocation(line: 467, column: 13, scope: !85)
!847 = !DILocation(line: 472, column: 21, scope: !848)
!848 = distinct !DILexicalBlock(scope: !849, file: !1, line: 472, column: 3)
!849 = distinct !DILexicalBlock(scope: !85, file: !1, line: 472, column: 3)
!850 = !DILocation(line: 472, column: 3, scope: !849)
!851 = !DILocation(line: 475, column: 25, scope: !852)
!852 = distinct !DILexicalBlock(scope: !853, file: !1, line: 475, column: 7)
!853 = distinct !DILexicalBlock(scope: !854, file: !1, line: 475, column: 7)
!854 = distinct !DILexicalBlock(scope: !848, file: !1, line: 473, column: 5)
!855 = !DILocation(line: 474, column: 44, scope: !856)
!856 = distinct !DILexicalBlock(scope: !857, file: !1, line: 474, column: 7)
!857 = distinct !DILexicalBlock(scope: !854, file: !1, line: 474, column: 7)
!858 = !DILocation(line: 475, column: 7, scope: !853)
!859 = !DILocation(line: 480, column: 7, scope: !860)
!860 = distinct !DILexicalBlock(scope: !854, file: !1, line: 480, column: 7)
!861 = !DILocation(line: 481, column: 6, scope: !862)
!862 = distinct !DILexicalBlock(scope: !863, file: !1, line: 481, column: 6)
!863 = distinct !DILexicalBlock(scope: !860, file: !1, line: 480, column: 7)
!864 = !DILocation(line: 481, column: 18, scope: !862)
!865 = !DILocation(line: 481, column: 6, scope: !863)
!866 = distinct !{!866, !867, !868}
!867 = !{!"llvm.loop.vectorize.width", i32 1}
!868 = !{!"llvm.loop.interleave.count", i32 1}
!869 = !DILocation(line: 483, column: 7, scope: !870)
!870 = distinct !DILexicalBlock(scope: !854, file: !1, line: 483, column: 7)
!871 = !DILocation(line: 488, column: 21, scope: !872)
!872 = distinct !DILexicalBlock(scope: !873, file: !1, line: 488, column: 3)
!873 = distinct !DILexicalBlock(scope: !85, file: !1, line: 488, column: 3)
!874 = !DILocation(line: 488, column: 3, scope: !873)
!875 = !DILocation(line: 476, column: 20, scope: !876)
!876 = distinct !DILexicalBlock(scope: !852, file: !1, line: 476, column: 6)
!877 = !DILocation(line: 218, column: 13, scope: !281, inlinedAt: !878)
!878 = distinct !DILocation(line: 476, column: 6, scope: !876)
!879 = !DILocation(line: 153, column: 29, scope: !250, inlinedAt: !880)
!880 = distinct !DILocation(line: 220, column: 10, scope: !281, inlinedAt: !878)
!881 = !DILocation(line: 153, column: 47, scope: !250, inlinedAt: !880)
!882 = !DILocation(line: 158, column: 10, scope: !250, inlinedAt: !880)
!883 = !DILocation(line: 158, column: 27, scope: !250, inlinedAt: !880)
!884 = !DILocation(line: 158, column: 25, scope: !250, inlinedAt: !880)
!885 = !DILocation(line: 476, column: 14, scope: !876)
!886 = !DILocation(line: 159, column: 7, scope: !250, inlinedAt: !880)
!887 = !DILocation(line: 476, column: 6, scope: !876)
!888 = !DILocation(line: 220, column: 10, scope: !281, inlinedAt: !878)
!889 = !DILocation(line: 476, column: 6, scope: !852)
!890 = !DILocation(line: 477, column: 27, scope: !876)
!891 = !DILocation(line: 477, column: 21, scope: !876)
!892 = !DILocation(line: 298, column: 13, scope: !284, inlinedAt: !893)
!893 = distinct !DILocation(line: 477, column: 13, scope: !876)
!894 = !DILocation(line: 300, column: 17, scope: !284, inlinedAt: !893)
!895 = !DILocation(line: 477, column: 43, scope: !876)
!896 = !DILocation(line: 477, column: 4, scope: !876)
!897 = !DILocation(line: 477, column: 50, scope: !876)
!898 = !DILocation(line: 484, column: 20, scope: !899)
!899 = distinct !DILexicalBlock(scope: !900, file: !1, line: 484, column: 6)
!900 = distinct !DILexicalBlock(scope: !870, file: !1, line: 483, column: 7)
!901 = !DILocation(line: 218, column: 13, scope: !281, inlinedAt: !902)
!902 = distinct !DILocation(line: 484, column: 6, scope: !899)
!903 = !DILocation(line: 153, column: 29, scope: !250, inlinedAt: !904)
!904 = distinct !DILocation(line: 220, column: 10, scope: !281, inlinedAt: !902)
!905 = !DILocation(line: 153, column: 47, scope: !250, inlinedAt: !904)
!906 = !DILocation(line: 158, column: 10, scope: !250, inlinedAt: !904)
!907 = !DILocation(line: 158, column: 27, scope: !250, inlinedAt: !904)
!908 = !DILocation(line: 158, column: 25, scope: !250, inlinedAt: !904)
!909 = !DILocation(line: 484, column: 14, scope: !899)
!910 = !DILocation(line: 159, column: 7, scope: !250, inlinedAt: !904)
!911 = !DILocation(line: 484, column: 6, scope: !899)
!912 = !DILocation(line: 220, column: 10, scope: !281, inlinedAt: !902)
!913 = !DILocation(line: 484, column: 6, scope: !900)
!914 = !DILocation(line: 485, column: 60, scope: !899)
!915 = !DILocation(line: 485, column: 54, scope: !899)
!916 = !DILocation(line: 298, column: 13, scope: !284, inlinedAt: !917)
!917 = distinct !DILocation(line: 485, column: 46, scope: !899)
!918 = !DILocation(line: 300, column: 17, scope: !284, inlinedAt: !917)
!919 = !DILocation(line: 485, column: 76, scope: !899)
!920 = !DILocation(line: 485, column: 37, scope: !899)
!921 = !DILocation(line: 485, column: 35, scope: !899)
!922 = !DILocation(line: 485, column: 21, scope: !899)
!923 = !DILocation(line: 485, column: 19, scope: !899)
!924 = !DILocation(line: 485, column: 4, scope: !899)
!925 = !DILocation(line: 485, column: 13, scope: !899)
!926 = !DILocation(line: 489, column: 41, scope: !872)
!927 = !DILocation(line: 489, column: 25, scope: !872)
!928 = !DILocation(line: 489, column: 17, scope: !872)
!929 = !DILocation(line: 489, column: 5, scope: !872)
!930 = !DILocation(line: 489, column: 14, scope: !872)
!931 = !DILocation(line: 490, column: 10, scope: !85)
!932 = !DILocation(line: 490, column: 25, scope: !85)
!933 = !DILocation(line: 490, column: 23, scope: !85)
!934 = !DILocation(line: 469, column: 9, scope: !85)
!935 = !DILocation(line: 491, column: 3, scope: !85)
!936 = !DILocation(line: 493, column: 1, scope: !85)
!937 = !DILocation(line: 521, column: 22, scope: !100)
!938 = !DILocation(line: 521, column: 33, scope: !100)
!939 = !DILocation(line: 521, column: 47, scope: !100)
!940 = !DILocation(line: 532, column: 11, scope: !100)
!941 = !{!942, !363, i64 28}
!942 = !{!"msa_struct", !312, i64 0, !312, i64 8, !312, i64 16, !363, i64 24, !363, i64 28, !363, i64 32, !363, i64 36, !312, i64 40, !312, i64 48, !312, i64 56, !312, i64 64, !312, i64 72, !312, i64 80, !312, i64 88, !312, i64 96, !312, i64 104, !312, i64 112, !312, i64 120, !304, i64 128, !304, i64 152, !312, i64 176, !363, i64 184, !363, i64 188, !312, i64 192, !312, i64 200, !363, i64 208, !363, i64 212, !312, i64 216, !312, i64 224, !312, i64 232, !363, i64 240, !312, i64 248, !312, i64 256, !312, i64 264, !363, i64 272, !312, i64 280, !312, i64 288, !312, i64 296, !363, i64 304, !312, i64 312, !363, i64 320, !363, i64 324, !312, i64 328, !312, i64 336, !312, i64 344, !363, i64 352}
!943 = !DILocation(line: 524, column: 11, scope: !100)
!944 = !DILocation(line: 533, column: 11, scope: !100)
!945 = !DILocation(line: 525, column: 11, scope: !100)
!946 = !DILocation(line: 527, column: 11, scope: !100)
!947 = !DILocation(line: 534, column: 24, scope: !948)
!948 = distinct !DILexicalBlock(scope: !949, file: !1, line: 534, column: 3)
!949 = distinct !DILexicalBlock(scope: !100, file: !1, line: 534, column: 3)
!950 = !DILocation(line: 534, column: 17, scope: !948)
!951 = !DILocation(line: 534, column: 3, scope: !949)
!952 = !DILocation(line: 537, column: 17, scope: !953)
!953 = distinct !DILexicalBlock(scope: !954, file: !1, line: 537, column: 3)
!954 = distinct !DILexicalBlock(scope: !100, file: !1, line: 537, column: 3)
!955 = !DILocation(line: 537, column: 3, scope: !954)
!956 = !DILocation(line: 542, column: 34, scope: !957)
!957 = distinct !DILexicalBlock(scope: !958, file: !1, line: 541, column: 2)
!958 = distinct !DILexicalBlock(scope: !959, file: !1, line: 540, column: 7)
!959 = distinct !DILexicalBlock(scope: !960, file: !1, line: 540, column: 7)
!960 = distinct !DILexicalBlock(scope: !953, file: !1, line: 538, column: 5)
!961 = !DILocation(line: 547, column: 13, scope: !962)
!962 = distinct !DILexicalBlock(scope: !963, file: !1, line: 544, column: 6)
!963 = distinct !DILexicalBlock(scope: !957, file: !1, line: 543, column: 8)
!964 = !DILocation(line: 534, column: 35, scope: !948)
!965 = !DILocation(line: 534, column: 44, scope: !948)
!966 = !DILocation(line: 540, column: 21, scope: !958)
!967 = !DILocation(line: 540, column: 7, scope: !959)
!968 = !{!942, !312, i64 0}
!969 = !DILocation(line: 542, column: 29, scope: !957)
!970 = !DILocation(line: 542, column: 53, scope: !957)
!971 = !DILocation(line: 542, column: 43, scope: !957)
!972 = !DILocation(line: 542, column: 12, scope: !957)
!973 = !DILocation(line: 526, column: 11, scope: !100)
!974 = !DILocation(line: 543, column: 14, scope: !963)
!975 = !DILocation(line: 543, column: 8, scope: !957)
!976 = !DILocation(line: 528, column: 11, scope: !100)
!977 = !{!942, !312, i64 8}
!978 = !DILocation(line: 547, column: 8, scope: !962)
!979 = !DILocation(line: 547, column: 24, scope: !962)
!980 = !DILocation(line: 548, column: 20, scope: !962)
!981 = !DILocation(line: 548, column: 8, scope: !962)
!982 = !DILocation(line: 546, column: 8, scope: !962)
!983 = !DILocation(line: 553, column: 11, scope: !984)
!984 = distinct !DILexicalBlock(scope: !985, file: !1, line: 552, column: 28)
!985 = distinct !DILexicalBlock(scope: !960, file: !1, line: 552, column: 11)
!986 = !DILocation(line: 523, column: 11, scope: !100)
!987 = !DILocation(line: 553, column: 2, scope: !984)
!988 = !DILocation(line: 553, column: 15, scope: !984)
!989 = !DILocation(line: 554, column: 2, scope: !984)
!990 = !DILocation(line: 554, column: 15, scope: !984)
!991 = !DILocation(line: 555, column: 7, scope: !984)
!992 = !DILocation(line: 537, column: 24, scope: !953)
!993 = !DILocation(line: 558, column: 3, scope: !100)
!994 = !DILocation(line: 559, column: 3, scope: !100)
!995 = !DILocation(line: 560, column: 3, scope: !100)
!996 = !DILocation(line: 561, column: 3, scope: !100)
!997 = !DILocation(line: 587, column: 22, scope: !187)
!998 = !DILocation(line: 587, column: 31, scope: !187)
!999 = !DILocation(line: 587, column: 45, scope: !187)
!1000 = !DILocation(line: 596, column: 19, scope: !187)
!1001 = !DILocation(line: 596, column: 11, scope: !187)
!1002 = !DILocation(line: 589, column: 11, scope: !187)
!1003 = !DILocation(line: 597, column: 19, scope: !187)
!1004 = !DILocation(line: 597, column: 11, scope: !187)
!1005 = !DILocation(line: 590, column: 11, scope: !187)
!1006 = !DILocation(line: 591, column: 11, scope: !187)
!1007 = !DILocation(line: 598, column: 24, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1009, file: !1, line: 598, column: 3)
!1009 = distinct !DILexicalBlock(scope: !187, file: !1, line: 598, column: 3)
!1010 = !DILocation(line: 598, column: 17, scope: !1008)
!1011 = !DILocation(line: 598, column: 3, scope: !1009)
!1012 = !DILocation(line: 600, column: 7, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1008, file: !1, line: 599, column: 5)
!1014 = !DILocation(line: 600, column: 16, scope: !1013)
!1015 = !DILocation(line: 601, column: 7, scope: !1013)
!1016 = !DILocation(line: 601, column: 16, scope: !1013)
!1017 = !DILocation(line: 606, column: 14, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !187, file: !1, line: 606, column: 7)
!1019 = !DILocation(line: 606, column: 7, scope: !187)
!1020 = !DILocation(line: 592, column: 11, scope: !187)
!1021 = !DILocation(line: 609, column: 34, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1023, file: !1, line: 609, column: 3)
!1023 = distinct !DILexicalBlock(scope: !187, file: !1, line: 609, column: 3)
!1024 = !DILocation(line: 609, column: 3, scope: !1023)
!1025 = !DILocation(line: 612, column: 48, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1022, file: !1, line: 610, column: 5)
!1027 = !DILocation(line: 611, column: 13, scope: !1026)
!1028 = !DILocation(line: 591, column: 14, scope: !187)
!1029 = !DILocation(line: 612, column: 32, scope: !1026)
!1030 = !DILocation(line: 612, column: 43, scope: !1026)
!1031 = !DILocation(line: 612, column: 7, scope: !1026)
!1032 = !DILocation(line: 613, column: 13, scope: !1026)
!1033 = !DILocation(line: 613, column: 7, scope: !1026)
!1034 = !DILocation(line: 613, column: 24, scope: !1026)
!1035 = !DILocation(line: 614, column: 19, scope: !1026)
!1036 = !DILocation(line: 614, column: 17, scope: !1026)
!1037 = !DILocation(line: 609, column: 45, scope: !1022)
!1038 = !DILocation(line: 617, column: 3, scope: !187)
!1039 = !DILocation(line: 618, column: 3, scope: !187)
!1040 = !DILocation(line: 619, column: 3, scope: !187)
!1041 = !DILocation(line: 620, column: 3, scope: !187)
