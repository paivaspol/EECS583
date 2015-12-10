; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGH.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.anon.0 = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.PGH = type { i8*, i32, i32, i32, i32, i32, i32, i8***, i32, i32*, i32, i32, double, double, double, double, i32, i32, i32, i32, i32, %struct.PGExtras**, %struct.PConnectivity**, i8* }
%struct.PGExtras = type { i32, i32*, double, i32**, i32**, i32*, i32*, i32, i32*, i32**, i32*, i32*, i32*, [4 x [2 x i32*]], [4 x [2 x i32**]], [4 x [2 x i32**]] }
%struct.PConnectivity = type { i32, i32*, i32**, i32* }
%struct.cGH = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, double, double*, double*, i32*, i32*, i32, i32*, double, i8***, i8**, %struct.cGHGroupData* }
%struct.cGHGroupData = type { i8, i8 }
%struct.cGroup = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.PGA = type { i8*, i32, i32, i8*, i8*, i32, i32, i8*, i32, i32, %struct.PGExtras*, %struct.PConnectivity*, %struct.PComm*, %struct.PComm*, i32, i32, %struct.PGA* }
%struct.PComm = type { i32*, i8**, i8**, i32, i32*, i32, i32, i32 }

@pughpriv_ = external global %struct.anon.0
@.str = private unnamed_addr constant [88 x i8] c"$Header: /cactus/CactusPUGH/PUGH/src/SetupPGH.c,v 1.75 2001/10/31 12:05:00 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_CactusPUGH_PUGH_SetupPGH_c() #0 {
  ret i8* getelementptr inbounds ([88 x i8]* @.str, i64 0, i64 0), !dbg !369
}

; Function Attrs: nounwind optsize ssp uwtable
define noalias %struct.PGH* @PUGH_SetupPGH(i8* %callerid, i32 %dim, i32* %nsize, i32* %nghostzones, i32 %staggertype, i32* %perme) #1 {
  tail call void @llvm.dbg.value(metadata i8* %callerid, i64 0, metadata !124, metadata !370), !dbg !371
  tail call void @llvm.dbg.value(metadata i32 %dim, i64 0, metadata !125, metadata !370), !dbg !372
  tail call void @llvm.dbg.value(metadata i32* %nsize, i64 0, metadata !126, metadata !370), !dbg !373
  tail call void @llvm.dbg.value(metadata i32* %nghostzones, i64 0, metadata !127, metadata !370), !dbg !374
  tail call void @llvm.dbg.value(metadata i32 %staggertype, i64 0, metadata !128, metadata !370), !dbg !375
  tail call void @llvm.dbg.value(metadata i32* %perme, i64 0, metadata !129, metadata !370), !dbg !376
  %1 = load i32* getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 43), align 8, !dbg !377, !tbaa !378
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !186, metadata !370), !dbg !377
  %2 = tail call i8* @malloc(i64 144) #8, !dbg !384
  %3 = bitcast i8* %2 to %struct.PGH*, !dbg !385
  tail call void @llvm.dbg.value(metadata %struct.PGH* %3, i64 0, metadata !196, metadata !370), !dbg !386
  %4 = bitcast i8* %2 to i8**, !dbg !387
  store i8* %callerid, i8** %4, align 8, !dbg !388, !tbaa !389
  %5 = sext i32 %dim to i64, !dbg !392
  %6 = shl nsw i64 %5, 3, !dbg !393
  %7 = tail call i8* @malloc(i64 %6) #8, !dbg !394
  %8 = getelementptr inbounds i8* %2, i64 120, !dbg !395
  %9 = bitcast i8* %8 to i8**, !dbg !396
  store i8* %7, i8** %9, align 8, !dbg !396, !tbaa !397
  %10 = tail call i8* @malloc(i64 %6) #8, !dbg !398
  %11 = getelementptr inbounds i8* %2, i64 128, !dbg !399
  %12 = bitcast i8* %11 to i8**, !dbg !400
  store i8* %10, i8** %12, align 8, !dbg !400, !tbaa !401
  %13 = getelementptr inbounds i8* %2, i64 12, !dbg !402
  %14 = bitcast i8* %13 to i32*, !dbg !402
  store i32 1, i32* %14, align 4, !dbg !404, !tbaa !405
  %15 = getelementptr inbounds i8* %2, i64 16, !dbg !406
  %16 = bitcast i8* %15 to i32*, !dbg !406
  store i32 0, i32* %16, align 4, !dbg !407, !tbaa !408
  %17 = getelementptr inbounds i8* %2, i64 8, !dbg !409
  %18 = bitcast i8* %17 to i32*, !dbg !409
  store i32 %dim, i32* %18, align 4, !dbg !410, !tbaa !411
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !198, metadata !370), !dbg !412
  %19 = icmp slt i32 %dim, 1, !dbg !413
  %20 = bitcast i8* %10 to %struct.PConnectivity**
  %21 = bitcast i8* %7 to %struct.PGExtras**
  br i1 %19, label %._crit_edge5, label %.lr.ph, !dbg !416

.lr.ph:                                           ; preds = %0, %._crit_edge
  %indvars.iv8 = phi i64 [ %indvars.iv.next9, %._crit_edge ], [ 1, %0 ]
  %indvars.iv6 = phi i32 [ %indvars.iv.next7, %._crit_edge ], [ 1, %0 ]
  %22 = shl nsw i64 %indvars.iv8, 2, !dbg !417
  %23 = tail call i8* @malloc(i64 %22) #8, !dbg !419
  %24 = bitcast i8* %23 to i32*, !dbg !420
  tail call void @llvm.dbg.value(metadata i32* %24, i64 0, metadata !199, metadata !370), !dbg !421
  %25 = trunc i64 %indvars.iv8 to i32, !dbg !422
  %26 = tail call i32 @PUGH_SetupDefaultTopology(i32 %25, i32* %24) #9, !dbg !422
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !197, metadata !370), !dbg !423
  br label %27, !dbg !424

; <label>:27                                      ; preds = %41, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %41 ]
  %28 = getelementptr inbounds i32* %24, i64 %indvars.iv, !dbg !426
  %29 = load i32* %28, align 4, !dbg !426, !tbaa !430
  %30 = icmp eq i32 %29, 0, !dbg !426
  br i1 %30, label %31, label %41, !dbg !431

; <label>:31                                      ; preds = %27
  %32 = getelementptr inbounds i32* %nsize, i64 %indvars.iv, !dbg !432
  %33 = load i32* %32, align 4, !dbg !432, !tbaa !430
  %ispos = icmp sgt i32 %33, -1, !dbg !433
  %neg = sub i32 0, %33, !dbg !433
  %34 = select i1 %ispos, i32 %33, i32 %neg, !dbg !433
  %35 = getelementptr inbounds i32* %nghostzones, i64 %indvars.iv, !dbg !434
  %36 = load i32* %35, align 4, !dbg !434, !tbaa !430
  %37 = shl nsw i32 %36, 1, !dbg !435
  %38 = or i32 %37, 1, !dbg !436
  %39 = icmp sgt i32 %34, %38, !dbg !437
  br i1 %39, label %41, label %40, !dbg !438

; <label>:40                                      ; preds = %31
  store i32 1, i32* %28, align 4, !dbg !439, !tbaa !430
  br label %41, !dbg !441

; <label>:41                                      ; preds = %31, %27, %40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !424
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32, !dbg !424
  %exitcond = icmp eq i32 %lftr.wideiv, %indvars.iv6, !dbg !424
  br i1 %exitcond, label %._crit_edge, label %27, !dbg !424

._crit_edge:                                      ; preds = %41
  %42 = tail call %struct.PConnectivity* @PUGH_SetupConnectivity(i32 %25, i32 1, i32* %24, i32* %perme) #8, !dbg !442
  %43 = add nsw i64 %indvars.iv8, -1, !dbg !443
  %44 = getelementptr inbounds %struct.PConnectivity** %20, i64 %43, !dbg !444
  store %struct.PConnectivity* %42, %struct.PConnectivity** %44, align 8, !dbg !445, !tbaa !446
  tail call void @free(i8* %23) #9, !dbg !447
  %45 = load %struct.PConnectivity** %44, align 8, !dbg !448, !tbaa !446
  %46 = getelementptr inbounds %struct.PConnectivity* %45, i64 0, i32 1, !dbg !449
  %47 = load i32** %46, align 8, !dbg !449, !tbaa !450
  %48 = tail call %struct.PGExtras* @PUGH_SetupPGExtras(i32 %25, i32* %perme, i32 %staggertype, i32* %nsize, i32* %nghostzones, i32 1, i32* %47, i32 0) #8, !dbg !452
  %49 = getelementptr inbounds %struct.PGExtras** %21, i64 %43, !dbg !453
  store %struct.PGExtras* %48, %struct.PGExtras** %49, align 8, !dbg !454, !tbaa !446
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1, !dbg !416
  %indvars.iv.next7 = add nuw nsw i32 %indvars.iv6, 1, !dbg !416
  tail call void @llvm.dbg.value(metadata i32 %indvars.iv.next7, i64 0, metadata !198, metadata !370), !dbg !412
  %exitcond11 = icmp eq i32 %25, %dim, !dbg !416
  br i1 %exitcond11, label %._crit_edge5, label %.lr.ph, !dbg !416

._crit_edge5:                                     ; preds = %._crit_edge, %0
  %50 = icmp eq i32 %1, 0, !dbg !455
  br i1 %50, label %53, label %51, !dbg !455

; <label>:51                                      ; preds = %._crit_edge5
  %52 = tail call i32 @CCTK_TimerCreateI() #8, !dbg !456
  br label %53, !dbg !455

; <label>:53                                      ; preds = %._crit_edge5, %51
  %54 = phi i32 [ %52, %51 ], [ -1, %._crit_edge5 ], !dbg !455
  %55 = getelementptr inbounds i8* %2, i64 112, !dbg !457
  %56 = bitcast i8* %55 to i32*, !dbg !457
  store i32 %54, i32* %56, align 4, !dbg !458, !tbaa !459
  %57 = getelementptr inbounds i8* %2, i64 108, !dbg !460
  %58 = bitcast i8* %57 to i32*, !dbg !460
  store i32 1, i32* %58, align 4, !dbg !461, !tbaa !462
  %59 = getelementptr inbounds i8* %2, i64 20, !dbg !463
  %60 = bitcast i8* %59 to i32*, !dbg !463
  store i32 1, i32* %60, align 4, !dbg !464, !tbaa !465
  %61 = getelementptr inbounds i8* %2, i64 136, !dbg !466
  %62 = bitcast i8* %61 to i8**, !dbg !466
  store i8* null, i8** %62, align 8, !dbg !467, !tbaa !468
  %63 = getelementptr inbounds i8* %2, i64 96, !dbg !469
  %64 = bitcast i8* %63 to i32*, !dbg !469
  store i32 0, i32* %64, align 4, !dbg !470, !tbaa !471
  %65 = getelementptr inbounds i8* %2, i64 100, !dbg !472
  %66 = bitcast i8* %65 to i32*, !dbg !472
  store i32 0, i32* %66, align 4, !dbg !473, !tbaa !474
  %67 = getelementptr inbounds i8* %2, i64 104, !dbg !475
  %68 = bitcast i8* %67 to i32*, !dbg !475
  store i32 0, i32* %68, align 4, !dbg !476, !tbaa !477
  %69 = getelementptr inbounds i8* %2, i64 60, !dbg !478
  %70 = bitcast i8* %69 to i32*, !dbg !478
  store i32 0, i32* %70, align 4, !dbg !479, !tbaa !480
  %71 = getelementptr inbounds i8* %2, i64 24, !dbg !481
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !193, metadata !370), !dbg !377
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !193, metadata !370), !dbg !377
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !193, metadata !370), !dbg !377
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !193, metadata !370), !dbg !377
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !193, metadata !370), !dbg !377
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !193, metadata !370), !dbg !377
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !193, metadata !370), !dbg !377
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !193, metadata !370), !dbg !377
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !193, metadata !370), !dbg !377
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !193, metadata !370), !dbg !377
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !193, metadata !370), !dbg !377
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !193, metadata !370), !dbg !377
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !193, metadata !370), !dbg !377
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !193, metadata !370), !dbg !377
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !193, metadata !370), !dbg !377
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !193, metadata !370), !dbg !377
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !193, metadata !370), !dbg !377
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !193, metadata !370), !dbg !377
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !193, metadata !370), !dbg !377
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !193, metadata !370), !dbg !377
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !193, metadata !370), !dbg !377
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !193, metadata !370), !dbg !377
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !193, metadata !370), !dbg !377
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !193, metadata !370), !dbg !377
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !193, metadata !370), !dbg !377
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !193, metadata !370), !dbg !377
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !193, metadata !370), !dbg !377
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !193, metadata !370), !dbg !377
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !193, metadata !370), !dbg !377
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !193, metadata !370), !dbg !377
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !193, metadata !370), !dbg !377
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !193, metadata !370), !dbg !377
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !193, metadata !370), !dbg !377
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !193, metadata !370), !dbg !377
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !193, metadata !370), !dbg !377
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !193, metadata !370), !dbg !377
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !193, metadata !370), !dbg !377
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !193, metadata !370), !dbg !377
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !193, metadata !370), !dbg !377
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !193, metadata !370), !dbg !377
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !193, metadata !370), !dbg !377
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !193, metadata !370), !dbg !377
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !193, metadata !370), !dbg !377
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !193, metadata !370), !dbg !377
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !193, metadata !370), !dbg !377
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !193, metadata !370), !dbg !377
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !193, metadata !370), !dbg !377
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !193, metadata !370), !dbg !377
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !193, metadata !370), !dbg !377
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !193, metadata !370), !dbg !377
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !193, metadata !370), !dbg !377
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !193, metadata !370), !dbg !377
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !193, metadata !370), !dbg !377
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !193, metadata !370), !dbg !377
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !193, metadata !370), !dbg !377
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !193, metadata !370), !dbg !377
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !193, metadata !370), !dbg !377
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !193, metadata !370), !dbg !377
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !193, metadata !370), !dbg !377
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !193, metadata !370), !dbg !377
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !193, metadata !370), !dbg !377
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !193, metadata !370), !dbg !377
  call void @llvm.memset.p0i8.i64(i8* %71, i8 0, i64 16, i32 4, i1 false), !dbg !482
  ret %struct.PGH* %3, !dbg !483
}

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @PUGH_SetupDefaultTopology(i32 %dim, i32* %nprocs) #1 {
  tail call void @llvm.dbg.value(metadata i32 %dim, i64 0, metadata !267, metadata !370), !dbg !484
  tail call void @llvm.dbg.value(metadata i32* %nprocs, i64 0, metadata !268, metadata !370), !dbg !485
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !317, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !318, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !319, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !320, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !321, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !322, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !331, metadata !370), !dbg !487
  switch i32 %dim, label %13 [
    i32 1, label %1
    i32 2, label %3
    i32 3, label %7
  ], !dbg !488

; <label>:1                                       ; preds = %0
  %2 = load i32* getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 36), align 4, !dbg !486, !tbaa !489
  store i32 %2, i32* %nprocs, align 4, !dbg !490, !tbaa !430
  br label %19, !dbg !492

; <label>:3                                       ; preds = %0
  %4 = load i32* getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 38), align 4, !dbg !486, !tbaa !493
  %5 = load i32* getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 37), align 8, !dbg !486, !tbaa !494
  store i32 %5, i32* %nprocs, align 4, !dbg !495, !tbaa !430
  %6 = getelementptr inbounds i32* %nprocs, i64 1, !dbg !496
  store i32 %4, i32* %6, align 4, !dbg !497, !tbaa !430
  br label %19, !dbg !498

; <label>:7                                       ; preds = %0
  %8 = load i32* getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 41), align 8, !dbg !486, !tbaa !499
  %9 = load i32* getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 40), align 4, !dbg !486, !tbaa !500
  %10 = load i32* getelementptr inbounds (%struct.anon.0* @pughpriv_, i64 0, i32 39), align 8, !dbg !486, !tbaa !501
  store i32 %10, i32* %nprocs, align 4, !dbg !502, !tbaa !430
  %11 = getelementptr inbounds i32* %nprocs, i64 1, !dbg !503
  store i32 %9, i32* %11, align 4, !dbg !504, !tbaa !430
  %12 = getelementptr inbounds i32* %nprocs, i64 2, !dbg !505
  store i32 %8, i32* %12, align 4, !dbg !506, !tbaa !430
  br label %19, !dbg !507

; <label>:13                                      ; preds = %0
  %14 = bitcast i32* %nprocs to i8*, !dbg !508
  %15 = sext i32 %dim to i64, !dbg !508
  %16 = shl nsw i64 %15, 2, !dbg !508
  %17 = tail call i64 @llvm.objectsize.i64.p0i8(i8* %14, i1 false), !dbg !508
  %18 = tail call i8* @__memset_chk(i8* %14, i32 0, i64 %16, i64 %17) #8, !dbg !508
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !331, metadata !370), !dbg !487
  br label %19, !dbg !509

; <label>:19                                      ; preds = %13, %7, %3, %1
  %retval.0 = phi i32 [ -1, %13 ], [ 0, %7 ], [ 0, %3 ], [ 0, %1 ]
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !330, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !330, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !330, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !330, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !330, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !330, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !330, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !330, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !330, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !330, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !330, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !330, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !330, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !330, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !330, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !330, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !330, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !330, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !330, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !330, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !330, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !330, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !330, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !330, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !330, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !330, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !330, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !330, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !330, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !330, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !330, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !330, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !330, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !330, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !330, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !330, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !330, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !330, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !330, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !330, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !330, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !330, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !330, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !330, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !330, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !330, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !330, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !330, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !330, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !330, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !330, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !330, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !330, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !330, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !330, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !330, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !330, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !330, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !330, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !330, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !330, metadata !370), !dbg !486
  tail call void @llvm.dbg.value(metadata i8* undef, i64 0, metadata !330, metadata !370), !dbg !486
  ret i32 %retval.0, !dbg !510
}

; Function Attrs: optsize
declare %struct.PConnectivity* @PUGH_SetupConnectivity(i32, i32, i32*, i32*) #3

; Function Attrs: nounwind optsize
declare void @free(i8* nocapture) #2

; Function Attrs: optsize
declare %struct.PGExtras* @PUGH_SetupPGExtras(i32, i32*, i32, i32*, i32*, i32, i32*, i32) #3

; Function Attrs: optsize
declare i32 @CCTK_TimerCreateI() #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @PUGH_Terminate(%struct.cGH* %GH) #1 {
  %pughGH = alloca %struct.PGH*, align 8
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !236, metadata !370), !dbg !511
  %1 = tail call %struct.PGH* @PUGH_pGH(%struct.cGH* %GH) #8, !dbg !512
  tail call void @llvm.dbg.value(metadata %struct.PGH* %1, i64 0, metadata !237, metadata !370), !dbg !513
  store %struct.PGH* %1, %struct.PGH** %pughGH, align 8, !dbg !513, !tbaa !446
  tail call void @llvm.dbg.value(metadata %struct.PGH** %pughGH, i64 0, metadata !237, metadata !370), !dbg !513
  call void @PUGH_DestroyPGH(%struct.PGH** %pughGH) #9, !dbg !514
  ret i32 0, !dbg !515
}

; Function Attrs: optsize
declare %struct.PGH* @PUGH_pGH(%struct.cGH*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @PUGH_DestroyPGH(%struct.PGH** nocapture %GHin) #1 {
  %pgroup = alloca %struct.cGroup, align 4
  tail call void @llvm.dbg.value(metadata %struct.PGH** %GHin, i64 0, metadata !243, metadata !370), !dbg !516
  %1 = load %struct.PGH** %GHin, align 8, !dbg !517, !tbaa !446
  tail call void @llvm.dbg.value(metadata %struct.PGH* %1, i64 0, metadata !244, metadata !370), !dbg !518
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !260, metadata !370), !dbg !519
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !261, metadata !370), !dbg !520
  %2 = call i32 @CCTK_NumGroups() #8, !dbg !521
  %3 = icmp sgt i32 %2, 0, !dbg !524
  br i1 %3, label %.lr.ph14, label %.preheader, !dbg !525

.lr.ph14:                                         ; preds = %0
  %4 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 0, !dbg !526
  %5 = getelementptr inbounds %struct.PGH* %1, i64 0, i32 7, !dbg !529
  %6 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 4, !dbg !531
  %7 = getelementptr inbounds %struct.PGH* %1, i64 0, i32 22, !dbg !533
  %8 = getelementptr inbounds %struct.PGH* %1, i64 0, i32 21, !dbg !534
  %9 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 5, !dbg !536
  %10 = getelementptr inbounds %struct.cGroup* %pgroup, i64 0, i32 6, !dbg !539
  %11 = bitcast i8**** %5 to %struct.PGA****, !dbg !543
  br label %17, !dbg !525

.preheader:                                       ; preds = %91, %0
  %12 = getelementptr inbounds %struct.PGH* %1, i64 0, i32 1, !dbg !546
  %13 = load i32* %12, align 4, !dbg !546, !tbaa !411
  %14 = icmp slt i32 %13, 1, !dbg !549
  br i1 %14, label %._crit_edge, label %.lr.ph, !dbg !550

.lr.ph:                                           ; preds = %.preheader
  %15 = getelementptr inbounds %struct.PGH* %1, i64 0, i32 22, !dbg !551
  %16 = getelementptr inbounds %struct.PGH* %1, i64 0, i32 21, !dbg !553
  br label %95, !dbg !550

; <label>:17                                      ; preds = %.lr.ph14, %91
  %group.012 = phi i32 [ 0, %.lr.ph14 ], [ %92, %91 ]
  %variable.011 = phi i32 [ 0, %.lr.ph14 ], [ %variable.1.lcssa, %91 ]
  call void @llvm.dbg.value(metadata %struct.cGroup* %pgroup, i64 0, metadata !246, metadata !370), !dbg !554
  %18 = call i32 @CCTK_GroupData(i32 %group.012, %struct.cGroup* %pgroup) #8, !dbg !555
  %19 = load i32* %4, align 4, !dbg !526, !tbaa !556
  %20 = and i32 %19, -2, !dbg !558
  %switch = icmp eq i32 %20, 2, !dbg !558
  br i1 %switch, label %21, label %.preheader2, !dbg !558

; <label>:21                                      ; preds = %17
  %22 = sext i32 %variable.011 to i64, !dbg !559
  %23 = load i8**** %5, align 8, !dbg !529, !tbaa !560
  %24 = getelementptr inbounds i8*** %23, i64 %22, !dbg !559
  %25 = bitcast i8*** %24 to %struct.PGA***, !dbg !559
  %26 = load %struct.PGA*** %25, align 8, !dbg !559, !tbaa !446
  %27 = load %struct.PGA** %26, align 8, !dbg !559, !tbaa !446
  call void @llvm.dbg.value(metadata %struct.PGA* %27, i64 0, metadata !245, metadata !370), !dbg !561
  %28 = getelementptr inbounds %struct.PGA* %27, i64 0, i32 13, !dbg !562
  %29 = load %struct.PComm** %28, align 8, !dbg !562, !tbaa !564
  %30 = icmp eq %struct.PComm* %29, null, !dbg !566
  br i1 %30, label %38, label %31, !dbg !567

; <label>:31                                      ; preds = %21
  %32 = getelementptr inbounds %struct.PComm* %29, i64 0, i32 3, !dbg !568
  %33 = load i32* %32, align 4, !dbg !568, !tbaa !571
  %34 = icmp eq i32 %33, 0, !dbg !573
  br i1 %34, label %37, label %35, !dbg !574

; <label>:35                                      ; preds = %31
  %36 = call i32 @PUGH_DisableGArrayGroupComm(%struct.PGH* %1, i32 %variable.011, %struct.PComm* %29) #8, !dbg !575
  br label %37, !dbg !577

; <label>:37                                      ; preds = %31, %35
  call void @PUGH_DestroyComm(%struct.PComm** %28) #8, !dbg !578
  br label %38, !dbg !579

; <label>:38                                      ; preds = %21, %37
  %39 = getelementptr inbounds %struct.PGA* %27, i64 0, i32 11, !dbg !580
  %40 = load %struct.PConnectivity** %39, align 8, !dbg !580, !tbaa !581
  %41 = load i32* %6, align 4, !dbg !531, !tbaa !582
  %42 = add nsw i32 %41, -1, !dbg !583
  %43 = sext i32 %42 to i64, !dbg !584
  %44 = load %struct.PConnectivity*** %7, align 8, !dbg !533, !tbaa !401
  %45 = getelementptr inbounds %struct.PConnectivity** %44, i64 %43, !dbg !584
  %46 = load %struct.PConnectivity** %45, align 8, !dbg !584, !tbaa !446
  %47 = icmp eq %struct.PConnectivity* %40, %46, !dbg !585
  br i1 %47, label %49, label %48, !dbg !586

; <label>:48                                      ; preds = %38
  call void @PUGH_DestroyConnectivity(%struct.PConnectivity** %39) #8, !dbg !587
  %.pre = load i32* %6, align 4, !dbg !589, !tbaa !582
  br label %49, !dbg !590

; <label>:49                                      ; preds = %38, %48
  %50 = phi i32 [ %41, %38 ], [ %.pre, %48 ]
  %51 = getelementptr inbounds %struct.PGA* %27, i64 0, i32 10, !dbg !591
  %52 = load %struct.PGExtras** %51, align 8, !dbg !591, !tbaa !592
  %53 = add nsw i32 %50, -1, !dbg !593
  %54 = sext i32 %53 to i64, !dbg !594
  %55 = load %struct.PGExtras*** %8, align 8, !dbg !534, !tbaa !397
  %56 = getelementptr inbounds %struct.PGExtras** %55, i64 %54, !dbg !594
  %57 = load %struct.PGExtras** %56, align 8, !dbg !594, !tbaa !446
  %58 = icmp eq %struct.PGExtras* %52, %57, !dbg !595
  br i1 %58, label %.preheader2, label %59, !dbg !596

; <label>:59                                      ; preds = %49
  call void @PUGH_DestroyPGExtras(%struct.PGExtras** %51) #8, !dbg !597
  br label %.preheader2, !dbg !599

.preheader2:                                      ; preds = %49, %59, %17
  %60 = load i32* %9, align 4, !dbg !536, !tbaa !600
  %61 = icmp sgt i32 %60, 0, !dbg !601
  br i1 %61, label %.preheader1.lr.ph, label %91, !dbg !602

.preheader1.lr.ph:                                ; preds = %.preheader2
  %62 = sext i32 %variable.011 to i64
  br label %.preheader1, !dbg !602

.preheader1:                                      ; preds = %.preheader1.lr.ph, %._crit_edge7
  %indvars.iv17 = phi i64 [ %62, %.preheader1.lr.ph ], [ %indvars.iv.next18, %._crit_edge7 ]
  %this_var.09 = phi i32 [ 0, %.preheader1.lr.ph ], [ %87, %._crit_edge7 ]
  %63 = load i32* %10, align 4, !dbg !539, !tbaa !603
  %64 = icmp sgt i32 %63, 0, !dbg !604
  br i1 %64, label %.lr.ph6, label %._crit_edge7, !dbg !605

.lr.ph6:                                          ; preds = %.preheader1, %79
  %indvars.iv15 = phi i64 [ %indvars.iv.next16, %79 ], [ 0, %.preheader1 ]
  %65 = load i32* %4, align 4, !dbg !606, !tbaa !556
  switch i32 %65, label %79 [
    i32 2, label %66
    i32 3, label %66
    i32 1, label %71
  ], !dbg !607

; <label>:66                                      ; preds = %.lr.ph6, %.lr.ph6
  %67 = load %struct.PGA**** %11, align 8, !dbg !543, !tbaa !560
  %68 = getelementptr inbounds %struct.PGA*** %67, i64 %indvars.iv17, !dbg !608
  %69 = load %struct.PGA*** %68, align 8, !dbg !608, !tbaa !446
  %70 = getelementptr inbounds %struct.PGA** %69, i64 %indvars.iv15, !dbg !608
  call void @PUGH_DestroyGArray(%struct.PGA** %70) #8, !dbg !609
  br label %79, !dbg !610

; <label>:71                                      ; preds = %.lr.ph6
  %72 = load i8**** %5, align 8, !dbg !611, !tbaa !560
  %73 = getelementptr inbounds i8*** %72, i64 %indvars.iv17, !dbg !613
  %74 = load i8*** %73, align 8, !dbg !613, !tbaa !446
  %75 = getelementptr inbounds i8** %74, i64 %indvars.iv15, !dbg !613
  %76 = load i8** %75, align 8, !dbg !613, !tbaa !446
  %77 = icmp eq i8* %76, null, !dbg !613
  br i1 %77, label %79, label %78, !dbg !614

; <label>:78                                      ; preds = %71
  call void @free(i8* %76) #9, !dbg !615
  br label %79, !dbg !617

; <label>:79                                      ; preds = %71, %66, %.lr.ph6, %78
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1, !dbg !605
  %80 = load i32* %10, align 4, !dbg !539, !tbaa !603
  %81 = sext i32 %80 to i64, !dbg !604
  %82 = icmp slt i64 %indvars.iv.next16, %81, !dbg !604
  br i1 %82, label %.lr.ph6, label %._crit_edge7, !dbg !605

._crit_edge7:                                     ; preds = %79, %.preheader1
  %83 = load i8**** %5, align 8, !dbg !618, !tbaa !560
  %84 = getelementptr inbounds i8*** %83, i64 %indvars.iv17, !dbg !619
  %85 = bitcast i8*** %84 to i8**, !dbg !619
  %86 = load i8** %85, align 8, !dbg !619, !tbaa !446
  call void @free(i8* %86) #9, !dbg !620
  %87 = add nuw nsw i32 %this_var.09, 1, !dbg !621
  call void @llvm.dbg.value(metadata i32 %87, i64 0, metadata !262, metadata !370), !dbg !622
  %indvars.iv.next18 = add i64 %indvars.iv17, 1, !dbg !602
  %88 = load i32* %9, align 4, !dbg !536, !tbaa !600
  %89 = icmp slt i32 %87, %88, !dbg !601
  br i1 %89, label %.preheader1, label %._crit_edge10, !dbg !602

._crit_edge10:                                    ; preds = %._crit_edge7
  %90 = trunc i64 %indvars.iv.next18 to i32, !dbg !602
  br label %91, !dbg !602

; <label>:91                                      ; preds = %._crit_edge10, %.preheader2
  %variable.1.lcssa = phi i32 [ %90, %._crit_edge10 ], [ %variable.011, %.preheader2 ]
  %92 = add nuw nsw i32 %group.012, 1, !dbg !623
  call void @llvm.dbg.value(metadata i32 %92, i64 0, metadata !261, metadata !370), !dbg !520
  %93 = call i32 @CCTK_NumGroups() #8, !dbg !521
  %94 = icmp slt i32 %92, %93, !dbg !524
  br i1 %94, label %17, label %.preheader, !dbg !525

; <label>:95                                      ; preds = %95, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %95 ], [ 1, %.lr.ph ]
  %96 = add nsw i64 %indvars.iv, -1, !dbg !624
  %97 = load %struct.PConnectivity*** %15, align 8, !dbg !551, !tbaa !401
  %98 = getelementptr inbounds %struct.PConnectivity** %97, i64 %96, !dbg !625
  call void @PUGH_DestroyConnectivity(%struct.PConnectivity** %98) #8, !dbg !626
  %99 = load %struct.PGExtras*** %16, align 8, !dbg !553, !tbaa !397
  %100 = getelementptr inbounds %struct.PGExtras** %99, i64 %96, !dbg !627
  call void @PUGH_DestroyPGExtras(%struct.PGExtras** %100) #8, !dbg !628
  %indvars.iv.next = add nuw i64 %indvars.iv, 1, !dbg !550
  %101 = load i32* %12, align 4, !dbg !546, !tbaa !411
  %102 = sext i32 %101 to i64, !dbg !549
  %103 = icmp slt i64 %indvars.iv, %102, !dbg !549
  br i1 %103, label %95, label %._crit_edge, !dbg !550

._crit_edge:                                      ; preds = %95, %.preheader
  %104 = getelementptr inbounds %struct.PGH* %1, i64 0, i32 23, !dbg !629
  %105 = load i8** %104, align 8, !dbg !629, !tbaa !468
  %106 = icmp eq i8* %105, null, !dbg !631
  br i1 %106, label %108, label %107, !dbg !632

; <label>:107                                     ; preds = %._crit_edge
  call void @free(i8* %105) #9, !dbg !633
  br label %108, !dbg !635

; <label>:108                                     ; preds = %._crit_edge, %107
  %109 = getelementptr inbounds %struct.PGH* %1, i64 0, i32 22, !dbg !636
  %110 = bitcast %struct.PConnectivity*** %109 to i8**, !dbg !636
  %111 = load i8** %110, align 8, !dbg !636, !tbaa !401
  call void @free(i8* %111) #9, !dbg !637
  %112 = getelementptr inbounds %struct.PGH* %1, i64 0, i32 21, !dbg !638
  %113 = bitcast %struct.PGExtras*** %112 to i8**, !dbg !638
  %114 = load i8** %113, align 8, !dbg !638, !tbaa !397
  call void @free(i8* %114) #9, !dbg !639
  %115 = getelementptr inbounds %struct.PGH* %1, i64 0, i32 7, !dbg !640
  %116 = bitcast i8**** %115 to i8**, !dbg !640
  %117 = load i8** %116, align 8, !dbg !640, !tbaa !560
  call void @free(i8* %117) #9, !dbg !641
  %118 = bitcast %struct.PGH* %1 to i8*, !dbg !642
  call void @free(i8* %118) #9, !dbg !643
  store %struct.PGH* null, %struct.PGH** %GHin, align 8, !dbg !644, !tbaa !446
  ret void, !dbg !645
}

; Function Attrs: optsize
declare i32 @CCTK_NumGroups() #3

; Function Attrs: optsize
declare i32 @CCTK_GroupData(i32, %struct.cGroup*) #3

; Function Attrs: optsize
declare i32 @PUGH_DisableGArrayGroupComm(%struct.PGH*, i32, %struct.PComm*) #3

; Function Attrs: optsize
declare void @PUGH_DestroyComm(%struct.PComm**) #3

; Function Attrs: optsize
declare void @PUGH_DestroyConnectivity(%struct.PConnectivity**) #3

; Function Attrs: optsize
declare void @PUGH_DestroyPGExtras(%struct.PGExtras**) #3

; Function Attrs: optsize
declare void @PUGH_DestroyGArray(%struct.PGA**) #3

; Function Attrs: nounwind optsize
declare i8* @__memset_chk(i8*, i32, i64, i64) #2

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #4

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @PUGH_ParallelInit(%struct.cGH* nocapture readnone %GH) #0 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !334, metadata !370), !dbg !646
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !334, metadata !370), !dbg !646
  ret i32 0, !dbg !647
}

; Function Attrs: noreturn nounwind optsize ssp uwtable
define i32 @PUGH_Exit(%struct.cGH* nocapture readnone %GH, i32 %retval) #5 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !339, metadata !370), !dbg !648
  tail call void @llvm.dbg.value(metadata i32 %retval, i64 0, metadata !340, metadata !370), !dbg !649
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !339, metadata !370), !dbg !648
  tail call void @exit(i32 %retval) #10, !dbg !650
  unreachable, !dbg !650
}

; Function Attrs: noreturn optsize
declare void @exit(i32) #6

; Function Attrs: noreturn nounwind optsize ssp uwtable
define i32 @PUGH_Abort(%struct.cGH* nocapture readnone %GH, i32 %retval) #5 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !343, metadata !370), !dbg !651
  tail call void @llvm.dbg.value(metadata i32 %retval, i64 0, metadata !344, metadata !370), !dbg !652
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !343, metadata !370), !dbg !651
  tail call void @llvm.dbg.value(metadata i32 %retval, i64 0, metadata !344, metadata !370), !dbg !652
  tail call void @exit(i32 0) #10, !dbg !653
  unreachable, !dbg !653
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @PUGH_MyProc(%struct.cGH* nocapture readnone %GH) #0 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !351, metadata !370), !dbg !654
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !351, metadata !370), !dbg !654
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !352, metadata !370), !dbg !655
  ret i32 0, !dbg !656
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @PUGH_nProcs(%struct.cGH* nocapture readnone %GH) #0 {
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !355, metadata !370), !dbg !657
  tail call void @llvm.dbg.value(metadata %struct.cGH* %GH, i64 0, metadata !355, metadata !370), !dbg !657
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !356, metadata !370), !dbg !658
  ret i32 1, !dbg !659
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #7

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone }
attributes #5 = { noreturn nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind optsize }
attributes #9 = { optsize }
attributes #10 = { noreturn nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!365, !366, !367}
!llvm.ident = !{!368}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !114, globals: !363, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGH/SetupPGH.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !37, !66, !23, !78, !112}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "pGH", file: !6, line: 81, baseType: !7)
!6 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGH/../include/pGH.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!7 = !DICompositeType(tag: DW_TAG_structure_type, name: "PGH", file: !6, line: 13, size: 1152, align: 64, elements: !8)
!8 = !{!9, !11, !13, !14, !15, !16, !17, !18, !21, !22, !24, !25, !26, !28, !29, !30, !31, !32, !33, !34, !35, !36, !65, !75}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "callerid", scope: !7, file: !6, line: 17, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "dim", scope: !7, file: !6, line: 18, baseType: !12, size: 32, align: 32, offset: 64)
!12 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "nprocs", scope: !7, file: !6, line: 21, baseType: !12, size: 32, align: 32, offset: 96)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "myproc", scope: !7, file: !6, line: 22, baseType: !12, size: 32, align: 32, offset: 128)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "commmodel", scope: !7, file: !6, line: 23, baseType: !12, size: 32, align: 32, offset: 160)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "nvariables", scope: !7, file: !6, line: 27, baseType: !12, size: 32, align: 32, offset: 192)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "narrays", scope: !7, file: !6, line: 28, baseType: !12, size: 32, align: 32, offset: 224)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "variables", scope: !7, file: !6, line: 29, baseType: !19, size: 64, align: 64, offset: 256)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "timelevel", scope: !7, file: !6, line: 32, baseType: !12, size: 32, align: 32, offset: 320)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "perme", scope: !7, file: !6, line: 34, baseType: !23, size: 64, align: 64, offset: 384)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "periodic", scope: !7, file: !6, line: 35, baseType: !12, size: 32, align: 32, offset: 448)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "forceSync", scope: !7, file: !6, line: 37, baseType: !12, size: 32, align: 32, offset: 480)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "dx0", scope: !7, file: !6, line: 41, baseType: !27, size: 64, align: 64, offset: 512)
!27 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "dy0", scope: !7, file: !6, line: 41, baseType: !27, size: 64, align: 64, offset: 576)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "dz0", scope: !7, file: !6, line: 41, baseType: !27, size: 64, align: 64, offset: 640)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "dt0", scope: !7, file: !6, line: 41, baseType: !27, size: 64, align: 64, offset: 704)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !7, file: !6, line: 44, baseType: !12, size: 32, align: 32, offset: 768)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "mglevel", scope: !7, file: !6, line: 45, baseType: !12, size: 32, align: 32, offset: 800)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "convlevel", scope: !7, file: !6, line: 46, baseType: !12, size: 32, align: 32, offset: 832)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !7, file: !6, line: 49, baseType: !12, size: 32, align: 32, offset: 864)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "comm_time", scope: !7, file: !6, line: 53, baseType: !12, size: 32, align: 32, offset: 896)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "GFExtras", scope: !7, file: !6, line: 76, baseType: !37, size: 64, align: 64, offset: 960)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "pGExtras", file: !40, line: 72, baseType: !41)
!40 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGH/../include/pGV.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!41 = !DICompositeType(tag: DW_TAG_structure_type, name: "PGExtras", file: !40, line: 37, size: 2368, align: 64, elements: !42)
!42 = !{!43, !44, !45, !46, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !62, !64}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "dim", scope: !41, file: !40, line: 39, baseType: !12, size: 32, align: 32)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "nsize", scope: !41, file: !40, line: 41, baseType: !23, size: 64, align: 64, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "maxskew", scope: !41, file: !40, line: 44, baseType: !27, size: 64, align: 64, offset: 128)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "lb", scope: !41, file: !40, line: 45, baseType: !47, size: 64, align: 64, offset: 192)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "ub", scope: !41, file: !40, line: 46, baseType: !47, size: 64, align: 64, offset: 256)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "bbox", scope: !41, file: !40, line: 47, baseType: !23, size: 64, align: 64, offset: 320)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "lnsize", scope: !41, file: !40, line: 49, baseType: !23, size: 64, align: 64, offset: 384)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "npoints", scope: !41, file: !40, line: 50, baseType: !12, size: 32, align: 32, offset: 448)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "rnpoints", scope: !41, file: !40, line: 51, baseType: !23, size: 64, align: 64, offset: 512)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "rnsize", scope: !41, file: !40, line: 52, baseType: !47, size: 64, align: 64, offset: 576)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "iterator", scope: !41, file: !40, line: 55, baseType: !23, size: 64, align: 64, offset: 640)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "hyper_volume", scope: !41, file: !40, line: 56, baseType: !23, size: 64, align: 64, offset: 704)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "nghostzones", scope: !41, file: !40, line: 59, baseType: !23, size: 64, align: 64, offset: 768)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "ownership", scope: !41, file: !40, line: 60, baseType: !58, size: 512, align: 64, offset: 832)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 512, align: 64, elements: !59)
!59 = !{!60, !61}
!60 = !DISubrange(count: 4)
!61 = !DISubrange(count: 2)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "ghosts", scope: !41, file: !40, line: 64, baseType: !63, size: 512, align: 64, offset: 1344)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 512, align: 64, elements: !59)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "overlap", scope: !41, file: !40, line: 68, baseType: !63, size: 512, align: 64, offset: 1856)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "Connectivity", scope: !7, file: !6, line: 77, baseType: !66, size: 64, align: 64, offset: 1024)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64, align: 64)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "pConnectivity", file: !40, line: 29, baseType: !69)
!69 = !DICompositeType(tag: DW_TAG_structure_type, name: "PConnectivity", file: !40, line: 23, size: 256, align: 64, elements: !70)
!70 = !{!71, !72, !73, !74}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "dim", scope: !69, file: !40, line: 25, baseType: !12, size: 32, align: 32)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "nprocs", scope: !69, file: !40, line: 26, baseType: !23, size: 64, align: 64, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "neighbours", scope: !69, file: !40, line: 27, baseType: !47, size: 64, align: 64, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "perme", scope: !69, file: !40, line: 28, baseType: !23, size: 64, align: 64, offset: 192)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "identity_string", scope: !7, file: !6, line: 79, baseType: !76, size: 64, align: 64, offset: 1088)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64, align: 64)
!77 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "pGA", file: !40, line: 126, baseType: !80)
!80 = !DICompositeType(tag: DW_TAG_structure_type, name: "PGA", file: !40, line: 96, size: 832, align: 64, elements: !81)
!81 = !{!82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !107, !108, !109, !110}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !80, file: !40, line: 98, baseType: !76, size: 64, align: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !80, file: !40, line: 99, baseType: !12, size: 32, align: 32, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "arrayid", scope: !80, file: !40, line: 100, baseType: !12, size: 32, align: 32, offset: 96)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "padddata", scope: !80, file: !40, line: 101, baseType: !10, size: 64, align: 64, offset: 128)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !80, file: !40, line: 102, baseType: !10, size: 64, align: 64, offset: 192)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "storage", scope: !80, file: !40, line: 103, baseType: !12, size: 32, align: 32, offset: 256)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "stagger", scope: !80, file: !40, line: 104, baseType: !12, size: 32, align: 32, offset: 288)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !80, file: !40, line: 106, baseType: !10, size: 64, align: 64, offset: 320)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "varsize", scope: !80, file: !40, line: 114, baseType: !12, size: 32, align: 32, offset: 384)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "vtype", scope: !80, file: !40, line: 115, baseType: !12, size: 32, align: 32, offset: 416)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "extras", scope: !80, file: !40, line: 117, baseType: !38, size: 64, align: 64, offset: 448)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "connectivity", scope: !80, file: !40, line: 118, baseType: !67, size: 64, align: 64, offset: 512)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !80, file: !40, line: 120, baseType: !95, size: 64, align: 64, offset: 576)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64, align: 64)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "pComm", file: !40, line: 94, baseType: !97)
!97 = !DICompositeType(tag: DW_TAG_structure_type, name: "PComm", file: !40, line: 74, size: 448, align: 64, elements: !98)
!98 = !{!99, !100, !101, !102, !103, !104, !105, !106}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_sz", scope: !97, file: !40, line: 77, baseType: !23, size: 64, align: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "send_buffer", scope: !97, file: !40, line: 78, baseType: !20, size: 64, align: 64, offset: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "recv_buffer", scope: !97, file: !40, line: 79, baseType: !20, size: 64, align: 64, offset: 128)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "commflag", scope: !97, file: !40, line: 80, baseType: !12, size: 32, align: 32, offset: 192)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "docomm", scope: !97, file: !40, line: 82, baseType: !23, size: 64, align: 64, offset: 256)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "first_var", scope: !97, file: !40, line: 84, baseType: !12, size: 32, align: 32, offset: 320)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "n_vars", scope: !97, file: !40, line: 85, baseType: !12, size: 32, align: 32, offset: 352)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "sync_timelevel", scope: !97, file: !40, line: 86, baseType: !12, size: 32, align: 32, offset: 384)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "groupcomm", scope: !80, file: !40, line: 121, baseType: !95, size: 64, align: 64, offset: 640)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "vector_size", scope: !80, file: !40, line: 123, baseType: !12, size: 32, align: 32, offset: 704)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "vector_entry", scope: !80, file: !40, line: 124, baseType: !12, size: 32, align: 32, offset: 736)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "vector_base", scope: !80, file: !40, line: 125, baseType: !111, size: 64, align: 64, offset: 768)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64, align: 64)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64, align: 64)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64, align: 64)
!114 = !{!115, !120, !200, !238, !263, !332, !335, !341, !345, !353, !357}
!115 = !DISubprogram(name: "CCTKi_version_CactusPUGH_PUGH_SetupPGH_c", scope: !1, file: !1, line: 31, type: !116, isLocal: false, isDefinition: true, scopeLine: 31, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_CactusPUGH_PUGH_SetupPGH_c, variables: !2)
!116 = !DISubroutineType(types: !117)
!117 = !{!118}
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64, align: 64)
!119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!120 = !DISubprogram(name: "PUGH_SetupPGH", scope: !1, file: !1, line: 87, type: !121, isLocal: false, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: true, function: %struct.PGH* (i8*, i32, i32*, i32*, i32, i32*)* @PUGH_SetupPGH, variables: !123)
!121 = !DISubroutineType(types: !122)
!122 = !{!4, !10, !12, !23, !23, !12, !23}
!123 = !{!124, !125, !126, !127, !128, !129, !130, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !190, !191, !192, !193, !196, !197, !198, !199}
!124 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "callerid", arg: 1, scope: !120, file: !1, line: 87, type: !10)
!125 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dim", arg: 2, scope: !120, file: !1, line: 88, type: !12)
!126 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nsize", arg: 3, scope: !120, file: !1, line: 89, type: !23)
!127 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nghostzones", arg: 4, scope: !120, file: !1, line: 90, type: !23)
!128 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "staggertype", arg: 5, scope: !120, file: !1, line: 91, type: !12)
!129 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "perme", arg: 6, scope: !120, file: !1, line: 92, type: !23)
!130 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size", scope: !120, file: !1, line: 94, type: !131)
!131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!132 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size_x", scope: !120, file: !1, line: 94, type: !131)
!133 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size_y", scope: !120, file: !1, line: 94, type: !131)
!134 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size_z", scope: !120, file: !1, line: 94, type: !131)
!135 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_nsize", scope: !120, file: !1, line: 94, type: !131)
!136 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_nx", scope: !120, file: !1, line: 94, type: !131)
!137 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_ny", scope: !120, file: !1, line: 94, type: !131)
!138 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_nz", scope: !120, file: !1, line: 94, type: !131)
!139 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic", scope: !120, file: !1, line: 94, type: !131)
!140 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_x", scope: !120, file: !1, line: 94, type: !131)
!141 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_y", scope: !120, file: !1, line: 94, type: !131)
!142 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_z", scope: !120, file: !1, line: 94, type: !131)
!143 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "info", scope: !120, file: !1, line: 94, type: !118)
!144 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "initialize_memory", scope: !120, file: !1, line: 94, type: !118)
!145 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition", scope: !120, file: !1, line: 94, type: !118)
!146 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_1d_x", scope: !120, file: !1, line: 94, type: !118)
!147 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_2d_x", scope: !120, file: !1, line: 94, type: !118)
!148 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_2d_y", scope: !120, file: !1, line: 94, type: !118)
!149 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_3d_x", scope: !120, file: !1, line: 94, type: !118)
!150 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_3d_y", scope: !120, file: !1, line: 94, type: !118)
!151 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_3d_z", scope: !120, file: !1, line: 94, type: !118)
!152 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology", scope: !120, file: !1, line: 94, type: !118)
!153 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "storage_verbose", scope: !120, file: !1, line: 94, type: !118)
!154 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cacheline_mult", scope: !120, file: !1, line: 94, type: !131)
!155 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "enable_all_storage", scope: !120, file: !1, line: 94, type: !131)
!156 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_nsize", scope: !120, file: !1, line: 94, type: !131)
!157 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_nx", scope: !120, file: !1, line: 94, type: !131)
!158 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_ny", scope: !120, file: !1, line: 94, type: !131)
!159 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_nz", scope: !120, file: !1, line: 94, type: !131)
!160 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadabort", scope: !120, file: !1, line: 94, type: !131)
!161 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadarraygroupsizeb", scope: !120, file: !1, line: 94, type: !131)
!162 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadbarrier", scope: !120, file: !1, line: 94, type: !131)
!163 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloaddisablegroupcomm", scope: !120, file: !1, line: 94, type: !131)
!164 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloaddisablegroupstorage", scope: !120, file: !1, line: 94, type: !131)
!165 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadenablegroupcomm", scope: !120, file: !1, line: 94, type: !131)
!166 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadenablegroupstorage", scope: !120, file: !1, line: 94, type: !131)
!167 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadevolve", scope: !120, file: !1, line: 94, type: !131)
!168 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadexit", scope: !120, file: !1, line: 94, type: !131)
!169 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadgroupdynamicdata", scope: !120, file: !1, line: 94, type: !131)
!170 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadmyproc", scope: !120, file: !1, line: 94, type: !131)
!171 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadnprocs", scope: !120, file: !1, line: 94, type: !131)
!172 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadparallelinit", scope: !120, file: !1, line: 94, type: !131)
!173 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadquerygroupstorageb", scope: !120, file: !1, line: 94, type: !131)
!174 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadsyncgroup", scope: !120, file: !1, line: 94, type: !131)
!175 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_active", scope: !120, file: !1, line: 94, type: !131)
!176 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_address_spacing", scope: !120, file: !1, line: 94, type: !131)
!177 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_cacheline_bits", scope: !120, file: !1, line: 94, type: !131)
!178 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_size", scope: !120, file: !1, line: 94, type: !131)
!179 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_1d_x", scope: !120, file: !1, line: 94, type: !131)
!180 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_2d_x", scope: !120, file: !1, line: 94, type: !131)
!181 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_2d_y", scope: !120, file: !1, line: 94, type: !131)
!182 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_3d_x", scope: !120, file: !1, line: 94, type: !131)
!183 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_3d_y", scope: !120, file: !1, line: 94, type: !131)
!184 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_3d_z", scope: !120, file: !1, line: 94, type: !131)
!185 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "storage_report_every", scope: !120, file: !1, line: 94, type: !131)
!186 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timer_output", scope: !120, file: !1, line: 94, type: !131)
!187 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "terminate", scope: !120, file: !1, line: 94, type: !118)
!188 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_initial_time", scope: !120, file: !1, line: 94, type: !189)
!189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!190 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_final_time", scope: !120, file: !1, line: 94, type: !189)
!191 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_itlast", scope: !120, file: !1, line: 94, type: !131)
!192 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "terminate_next", scope: !120, file: !1, line: 94, type: !131)
!193 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_pdummy_pointer", scope: !120, file: !1, line: 94, type: !194)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64, align: 64)
!195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!196 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pughGH", scope: !120, file: !1, line: 95, type: !4)
!197 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !120, file: !1, line: 96, type: !12)
!198 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "idim", scope: !120, file: !1, line: 96, type: !12)
!199 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nprocs", scope: !120, file: !1, line: 97, type: !23)
!200 = !DISubprogram(name: "PUGH_Terminate", scope: !1, file: !1, line: 178, type: !201, isLocal: false, isDefinition: true, scopeLine: 179, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*)* @PUGH_Terminate, variables: !235)
!201 = !DISubroutineType(types: !202)
!202 = !{!12, !203}
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64, align: 64)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGH", file: !205, line: 75, baseType: !206)
!205 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGH/../include/cGH.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!206 = !DICompositeType(tag: DW_TAG_structure_type, file: !205, line: 24, size: 1216, align: 64, elements: !207)
!207 = !{!208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !220, !221, !222, !223, !224, !225, !226, !227, !228}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_dim", scope: !206, file: !205, line: 26, baseType: !12, size: 32, align: 32)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_iteration", scope: !206, file: !205, line: 27, baseType: !12, size: 32, align: 32, offset: 32)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_gsh", scope: !206, file: !205, line: 30, baseType: !23, size: 64, align: 64, offset: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lsh", scope: !206, file: !205, line: 31, baseType: !23, size: 64, align: 64, offset: 128)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lbnd", scope: !206, file: !205, line: 32, baseType: !23, size: 64, align: 64, offset: 192)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_ubnd", scope: !206, file: !205, line: 33, baseType: !23, size: 64, align: 64, offset: 256)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_lssh", scope: !206, file: !205, line: 36, baseType: !23, size: 64, align: 64, offset: 320)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_to", scope: !206, file: !205, line: 39, baseType: !23, size: 64, align: 64, offset: 384)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_from", scope: !206, file: !205, line: 40, baseType: !23, size: 64, align: 64, offset: 448)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_time", scope: !206, file: !205, line: 43, baseType: !27, size: 64, align: 64, offset: 512)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_delta_space", scope: !206, file: !205, line: 44, baseType: !219, size: 64, align: 64, offset: 576)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64, align: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_origin_space", scope: !206, file: !205, line: 47, baseType: !219, size: 64, align: 64, offset: 640)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_bbox", scope: !206, file: !205, line: 51, baseType: !23, size: 64, align: 64, offset: 704)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_levfac", scope: !206, file: !205, line: 54, baseType: !23, size: 64, align: 64, offset: 768)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_convlevel", scope: !206, file: !205, line: 57, baseType: !12, size: 32, align: 32, offset: 832)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_nghostzones", scope: !206, file: !205, line: 60, baseType: !23, size: 64, align: 64, offset: 896)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "cctk_time", scope: !206, file: !205, line: 63, baseType: !27, size: 64, align: 64, offset: 960)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !206, file: !205, line: 67, baseType: !19, size: 64, align: 64, offset: 1024)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "extensions", scope: !206, file: !205, line: 70, baseType: !20, size: 64, align: 64, offset: 1088)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "GroupData", scope: !206, file: !205, line: 73, baseType: !229, size: 64, align: 64, offset: 1152)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64, align: 64)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGHGroupData", file: !205, line: 22, baseType: !231)
!231 = !DICompositeType(tag: DW_TAG_structure_type, file: !205, line: 18, size: 16, align: 8, elements: !232)
!232 = !{!233, !234}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "storage", scope: !231, file: !205, line: 20, baseType: !77, size: 8, align: 8)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !231, file: !205, line: 21, baseType: !77, size: 8, align: 8, offset: 8)
!235 = !{!236, !237}
!236 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !200, file: !1, line: 178, type: !203)
!237 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pughGH", scope: !200, file: !1, line: 180, type: !4)
!238 = !DISubprogram(name: "PUGH_DestroyPGH", scope: !1, file: !1, line: 202, type: !239, isLocal: false, isDefinition: true, scopeLine: 203, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.PGH**)* @PUGH_DestroyPGH, variables: !242)
!239 = !DISubroutineType(types: !240)
!240 = !{null, !241}
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!242 = !{!243, !244, !245, !246, !259, !260, !261, !262}
!243 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GHin", arg: 1, scope: !238, file: !1, line: 202, type: !241)
!244 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "GH", scope: !238, file: !1, line: 204, type: !4)
!245 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "GA", scope: !238, file: !1, line: 205, type: !78)
!246 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pgroup", scope: !238, file: !1, line: 206, type: !247)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "cGroup", file: !248, line: 24, baseType: !249)
!248 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/PUGH/../include/cctk_Groups.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!249 = !DICompositeType(tag: DW_TAG_structure_type, file: !248, line: 14, size: 256, align: 32, elements: !250)
!250 = !{!251, !252, !253, !254, !255, !256, !257, !258}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "grouptype", scope: !249, file: !248, line: 16, baseType: !12, size: 32, align: 32)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "vartype", scope: !249, file: !248, line: 17, baseType: !12, size: 32, align: 32, offset: 32)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "disttype", scope: !249, file: !248, line: 18, baseType: !12, size: 32, align: 32, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "stagtype", scope: !249, file: !248, line: 19, baseType: !12, size: 32, align: 32, offset: 96)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "dim", scope: !249, file: !248, line: 20, baseType: !12, size: 32, align: 32, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "numvars", scope: !249, file: !248, line: 21, baseType: !12, size: 32, align: 32, offset: 160)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "numtimelevels", scope: !249, file: !248, line: 22, baseType: !12, size: 32, align: 32, offset: 192)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "vectorgroup", scope: !249, file: !248, line: 23, baseType: !12, size: 32, align: 32, offset: 224)
!259 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !238, file: !1, line: 207, type: !12)
!260 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "variable", scope: !238, file: !1, line: 208, type: !12)
!261 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "group", scope: !238, file: !1, line: 209, type: !12)
!262 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "this_var", scope: !238, file: !1, line: 210, type: !12)
!263 = !DISubprogram(name: "PUGH_SetupDefaultTopology", scope: !1, file: !1, line: 333, type: !264, isLocal: false, isDefinition: true, scopeLine: 334, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i32*)* @PUGH_SetupDefaultTopology, variables: !266)
!264 = !DISubroutineType(types: !265)
!265 = !{!12, !12, !23}
!266 = !{!267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331}
!267 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dim", arg: 1, scope: !263, file: !1, line: 333, type: !12)
!268 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nprocs", arg: 2, scope: !263, file: !1, line: 333, type: !23)
!269 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size", scope: !263, file: !1, line: 335, type: !131)
!270 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size_x", scope: !263, file: !1, line: 335, type: !131)
!271 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size_y", scope: !263, file: !1, line: 335, type: !131)
!272 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ghost_size_z", scope: !263, file: !1, line: 335, type: !131)
!273 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_nsize", scope: !263, file: !1, line: 335, type: !131)
!274 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_nx", scope: !263, file: !1, line: 335, type: !131)
!275 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_ny", scope: !263, file: !1, line: 335, type: !131)
!276 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "global_nz", scope: !263, file: !1, line: 335, type: !131)
!277 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic", scope: !263, file: !1, line: 335, type: !131)
!278 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_x", scope: !263, file: !1, line: 335, type: !131)
!279 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_y", scope: !263, file: !1, line: 335, type: !131)
!280 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "periodic_z", scope: !263, file: !1, line: 335, type: !131)
!281 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "info", scope: !263, file: !1, line: 335, type: !118)
!282 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "initialize_memory", scope: !263, file: !1, line: 335, type: !118)
!283 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition", scope: !263, file: !1, line: 335, type: !118)
!284 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_1d_x", scope: !263, file: !1, line: 335, type: !118)
!285 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_2d_x", scope: !263, file: !1, line: 335, type: !118)
!286 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_2d_y", scope: !263, file: !1, line: 335, type: !118)
!287 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_3d_x", scope: !263, file: !1, line: 335, type: !118)
!288 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_3d_y", scope: !263, file: !1, line: 335, type: !118)
!289 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition_3d_z", scope: !263, file: !1, line: 335, type: !118)
!290 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology", scope: !263, file: !1, line: 335, type: !118)
!291 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "storage_verbose", scope: !263, file: !1, line: 335, type: !118)
!292 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cacheline_mult", scope: !263, file: !1, line: 335, type: !131)
!293 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "enable_all_storage", scope: !263, file: !1, line: 335, type: !131)
!294 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_nsize", scope: !263, file: !1, line: 335, type: !131)
!295 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_nx", scope: !263, file: !1, line: 335, type: !131)
!296 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_ny", scope: !263, file: !1, line: 335, type: !131)
!297 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "local_nz", scope: !263, file: !1, line: 335, type: !131)
!298 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadabort", scope: !263, file: !1, line: 335, type: !131)
!299 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadarraygroupsizeb", scope: !263, file: !1, line: 335, type: !131)
!300 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadbarrier", scope: !263, file: !1, line: 335, type: !131)
!301 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloaddisablegroupcomm", scope: !263, file: !1, line: 335, type: !131)
!302 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloaddisablegroupstorage", scope: !263, file: !1, line: 335, type: !131)
!303 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadenablegroupcomm", scope: !263, file: !1, line: 335, type: !131)
!304 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadenablegroupstorage", scope: !263, file: !1, line: 335, type: !131)
!305 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadevolve", scope: !263, file: !1, line: 335, type: !131)
!306 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadexit", scope: !263, file: !1, line: 335, type: !131)
!307 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadgroupdynamicdata", scope: !263, file: !1, line: 335, type: !131)
!308 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadmyproc", scope: !263, file: !1, line: 335, type: !131)
!309 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadnprocs", scope: !263, file: !1, line: 335, type: !131)
!310 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadparallelinit", scope: !263, file: !1, line: 335, type: !131)
!311 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadquerygroupstorageb", scope: !263, file: !1, line: 335, type: !131)
!312 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "overloadsyncgroup", scope: !263, file: !1, line: 335, type: !131)
!313 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_active", scope: !263, file: !1, line: 335, type: !131)
!314 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_address_spacing", scope: !263, file: !1, line: 335, type: !131)
!315 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_cacheline_bits", scope: !263, file: !1, line: 335, type: !131)
!316 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "padding_size", scope: !263, file: !1, line: 335, type: !131)
!317 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_1d_x", scope: !263, file: !1, line: 335, type: !131)
!318 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_2d_x", scope: !263, file: !1, line: 335, type: !131)
!319 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_2d_y", scope: !263, file: !1, line: 335, type: !131)
!320 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_3d_x", scope: !263, file: !1, line: 335, type: !131)
!321 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_3d_y", scope: !263, file: !1, line: 335, type: !131)
!322 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "processor_topology_3d_z", scope: !263, file: !1, line: 335, type: !131)
!323 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "storage_report_every", scope: !263, file: !1, line: 335, type: !131)
!324 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timer_output", scope: !263, file: !1, line: 335, type: !131)
!325 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "terminate", scope: !263, file: !1, line: 335, type: !118)
!326 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_initial_time", scope: !263, file: !1, line: 335, type: !189)
!327 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_final_time", scope: !263, file: !1, line: 335, type: !189)
!328 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_itlast", scope: !263, file: !1, line: 335, type: !131)
!329 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "terminate_next", scope: !263, file: !1, line: 335, type: !131)
!330 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cctk_pdummy_pointer", scope: !263, file: !1, line: 335, type: !194)
!331 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "retval", scope: !263, file: !1, line: 336, type: !12)
!332 = !DISubprogram(name: "PUGH_ParallelInit", scope: !1, file: !1, line: 384, type: !201, isLocal: false, isDefinition: true, scopeLine: 385, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*)* @PUGH_ParallelInit, variables: !333)
!333 = !{!334}
!334 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !332, file: !1, line: 384, type: !203)
!335 = !DISubprogram(name: "PUGH_Exit", scope: !1, file: !1, line: 420, type: !336, isLocal: false, isDefinition: true, scopeLine: 421, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*, i32)* @PUGH_Exit, variables: !338)
!336 = !DISubroutineType(types: !337)
!337 = !{!12, !203, !12}
!338 = !{!339, !340}
!339 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !335, file: !1, line: 420, type: !203)
!340 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "retval", arg: 2, scope: !335, file: !1, line: 420, type: !12)
!341 = !DISubprogram(name: "PUGH_Abort", scope: !1, file: !1, line: 460, type: !336, isLocal: false, isDefinition: true, scopeLine: 461, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*, i32)* @PUGH_Abort, variables: !342)
!342 = !{!343, !344}
!343 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !341, file: !1, line: 460, type: !203)
!344 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "retval", arg: 2, scope: !341, file: !1, line: 460, type: !12)
!345 = !DISubprogram(name: "PUGH_MyProc", scope: !1, file: !1, line: 502, type: !346, isLocal: false, isDefinition: true, scopeLine: 503, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*)* @PUGH_MyProc, variables: !350)
!346 = !DISubroutineType(types: !347)
!347 = !{!12, !348}
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64, align: 64)
!349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !204)
!350 = !{!351, !352}
!351 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !345, file: !1, line: 502, type: !348)
!352 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "myproc", scope: !345, file: !1, line: 504, type: !12)
!353 = !DISubprogram(name: "PUGH_nProcs", scope: !1, file: !1, line: 539, type: !346, isLocal: false, isDefinition: true, scopeLine: 540, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.cGH*)* @PUGH_nProcs, variables: !354)
!354 = !{!355, !356}
!355 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "GH", arg: 1, scope: !353, file: !1, line: 539, type: !348)
!356 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nprocs", scope: !353, file: !1, line: 541, type: !12)
!357 = !DISubprogram(name: "Setup_nProcs", scope: !1, file: !1, line: 628, type: !358, isLocal: true, isDefinition: true, scopeLine: 629, flags: DIFlagPrototyped, isOptimized: true, variables: !360)
!358 = !DISubroutineType(types: !359)
!359 = !{!12, !4, !12}
!360 = !{!361, !362}
!361 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pughGH", arg: 1, scope: !357, file: !1, line: 628, type: !4)
!362 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dim", arg: 2, scope: !357, file: !1, line: 628, type: !12)
!363 = !{!364}
!364 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 29, type: !118, isLocal: true, isDefinition: true)
!365 = !{i32 2, !"Dwarf Version", i32 2}
!366 = !{i32 2, !"Debug Info Version", i32 700000003}
!367 = !{i32 1, !"PIC Level", i32 2}
!368 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!369 = !DILocation(line: 31, column: 1, scope: !115)
!370 = !DIExpression()
!371 = !DILocation(line: 87, column: 27, scope: !120)
!372 = !DILocation(line: 88, column: 25, scope: !120)
!373 = !DILocation(line: 89, column: 26, scope: !120)
!374 = !DILocation(line: 90, column: 26, scope: !120)
!375 = !DILocation(line: 91, column: 25, scope: !120)
!376 = !DILocation(line: 92, column: 26, scope: !120)
!377 = !DILocation(line: 94, column: 3, scope: !120)
!378 = !{!379, !383, i64 216}
!379 = !{!"", !380, i64 0, !380, i64 8, !380, i64 16, !380, i64 24, !380, i64 32, !380, i64 40, !380, i64 48, !380, i64 56, !380, i64 64, !380, i64 72, !380, i64 80, !383, i64 88, !383, i64 92, !383, i64 96, !383, i64 100, !383, i64 104, !383, i64 108, !383, i64 112, !383, i64 116, !383, i64 120, !383, i64 124, !383, i64 128, !383, i64 132, !383, i64 136, !383, i64 140, !383, i64 144, !383, i64 148, !383, i64 152, !383, i64 156, !383, i64 160, !383, i64 164, !383, i64 168, !383, i64 172, !383, i64 176, !383, i64 180, !383, i64 184, !383, i64 188, !383, i64 192, !383, i64 196, !383, i64 200, !383, i64 204, !383, i64 208, !383, i64 212, !383, i64 216}
!380 = !{!"any pointer", !381, i64 0}
!381 = !{!"omnipotent char", !382, i64 0}
!382 = !{!"Simple C/C++ TBAA"}
!383 = !{!"int", !381, i64 0}
!384 = !DILocation(line: 101, column: 20, scope: !120)
!385 = !DILocation(line: 101, column: 12, scope: !120)
!386 = !DILocation(line: 95, column: 8, scope: !120)
!387 = !DILocation(line: 104, column: 11, scope: !120)
!388 = !DILocation(line: 104, column: 20, scope: !120)
!389 = !{!390, !380, i64 0}
!390 = !{!"PGH", !380, i64 0, !383, i64 8, !383, i64 12, !383, i64 16, !383, i64 20, !383, i64 24, !383, i64 28, !380, i64 32, !383, i64 40, !380, i64 48, !383, i64 56, !383, i64 60, !391, i64 64, !391, i64 72, !391, i64 80, !391, i64 88, !383, i64 96, !383, i64 100, !383, i64 104, !383, i64 108, !383, i64 112, !380, i64 120, !380, i64 128, !380, i64 136}
!391 = !{!"double", !381, i64 0}
!392 = !DILocation(line: 106, column: 48, scope: !120)
!393 = !DILocation(line: 106, column: 52, scope: !120)
!394 = !DILocation(line: 106, column: 40, scope: !120)
!395 = !DILocation(line: 106, column: 11, scope: !120)
!396 = !DILocation(line: 106, column: 24, scope: !120)
!397 = !{!390, !380, i64 120}
!398 = !DILocation(line: 107, column: 45, scope: !120)
!399 = !DILocation(line: 107, column: 11, scope: !120)
!400 = !DILocation(line: 107, column: 24, scope: !120)
!401 = !{!390, !380, i64 128}
!402 = !DILocation(line: 690, column: 11, scope: !357, inlinedAt: !403)
!403 = distinct !DILocation(line: 110, column: 3, scope: !120)
!404 = !DILocation(line: 690, column: 18, scope: !357, inlinedAt: !403)
!405 = !{!390, !383, i64 12}
!406 = !DILocation(line: 691, column: 11, scope: !357, inlinedAt: !403)
!407 = !DILocation(line: 691, column: 18, scope: !357, inlinedAt: !403)
!408 = !{!390, !383, i64 16}
!409 = !DILocation(line: 694, column: 11, scope: !357, inlinedAt: !403)
!410 = !DILocation(line: 694, column: 15, scope: !357, inlinedAt: !403)
!411 = !{!390, !383, i64 8}
!412 = !DILocation(line: 96, column: 10, scope: !120)
!413 = !DILocation(line: 113, column: 23, scope: !414)
!414 = distinct !DILexicalBlock(scope: !415, file: !1, line: 113, column: 3)
!415 = distinct !DILexicalBlock(scope: !120, file: !1, line: 113, column: 3)
!416 = !DILocation(line: 113, column: 3, scope: !415)
!417 = !DILocation(line: 115, column: 35, scope: !418)
!418 = distinct !DILexicalBlock(scope: !414, file: !1, line: 114, column: 3)
!419 = !DILocation(line: 115, column: 22, scope: !418)
!420 = !DILocation(line: 115, column: 14, scope: !418)
!421 = !DILocation(line: 97, column: 8, scope: !120)
!422 = !DILocation(line: 117, column: 5, scope: !418)
!423 = !DILocation(line: 96, column: 7, scope: !120)
!424 = !DILocation(line: 122, column: 5, scope: !425)
!425 = distinct !DILexicalBlock(scope: !418, file: !1, line: 122, column: 5)
!426 = !DILocation(line: 124, column: 14, scope: !427)
!427 = distinct !DILexicalBlock(scope: !428, file: !1, line: 124, column: 11)
!428 = distinct !DILexicalBlock(scope: !429, file: !1, line: 123, column: 5)
!429 = distinct !DILexicalBlock(scope: !425, file: !1, line: 122, column: 5)
!430 = !{!383, !383, i64 0}
!431 = !DILocation(line: 124, column: 25, scope: !427)
!432 = !DILocation(line: 124, column: 34, scope: !427)
!433 = !DILocation(line: 124, column: 29, scope: !427)
!434 = !DILocation(line: 124, column: 51, scope: !427)
!435 = !DILocation(line: 124, column: 49, scope: !427)
!436 = !DILocation(line: 124, column: 66, scope: !427)
!437 = !DILocation(line: 124, column: 44, scope: !427)
!438 = !DILocation(line: 124, column: 11, scope: !428)
!439 = !DILocation(line: 126, column: 19, scope: !440)
!440 = distinct !DILexicalBlock(scope: !427, file: !1, line: 125, column: 7)
!441 = !DILocation(line: 127, column: 7, scope: !440)
!442 = !DILocation(line: 130, column: 36, scope: !418)
!443 = !DILocation(line: 130, column: 30, scope: !418)
!444 = !DILocation(line: 130, column: 5, scope: !418)
!445 = !DILocation(line: 130, column: 34, scope: !418)
!446 = !{!380, !380, i64 0}
!447 = !DILocation(line: 132, column: 5, scope: !418)
!448 = !DILocation(line: 137, column: 52, scope: !418)
!449 = !DILocation(line: 137, column: 82, scope: !418)
!450 = !{!451, !380, i64 8}
!451 = !{!"PConnectivity", !383, i64 0, !380, i64 8, !380, i64 16, !380, i64 24}
!452 = !DILocation(line: 134, column: 32, scope: !418)
!453 = !DILocation(line: 134, column: 5, scope: !418)
!454 = !DILocation(line: 134, column: 30, scope: !418)
!455 = !DILocation(line: 142, column: 23, scope: !120)
!456 = !DILocation(line: 142, column: 38, scope: !120)
!457 = !DILocation(line: 142, column: 11, scope: !120)
!458 = !DILocation(line: 142, column: 21, scope: !120)
!459 = !{!390, !383, i64 112}
!460 = !DILocation(line: 144, column: 11, scope: !120)
!461 = !DILocation(line: 144, column: 18, scope: !120)
!462 = !{!390, !383, i64 108}
!463 = !DILocation(line: 145, column: 11, scope: !120)
!464 = !DILocation(line: 145, column: 21, scope: !120)
!465 = !{!390, !383, i64 20}
!466 = !DILocation(line: 146, column: 11, scope: !120)
!467 = !DILocation(line: 146, column: 27, scope: !120)
!468 = !{!390, !380, i64 136}
!469 = !DILocation(line: 147, column: 11, scope: !120)
!470 = !DILocation(line: 147, column: 17, scope: !120)
!471 = !{!390, !383, i64 96}
!472 = !DILocation(line: 148, column: 11, scope: !120)
!473 = !DILocation(line: 148, column: 19, scope: !120)
!474 = !{!390, !383, i64 100}
!475 = !DILocation(line: 149, column: 11, scope: !120)
!476 = !DILocation(line: 149, column: 21, scope: !120)
!477 = !{!390, !383, i64 104}
!478 = !DILocation(line: 150, column: 11, scope: !120)
!479 = !DILocation(line: 150, column: 21, scope: !120)
!480 = !{!390, !383, i64 60}
!481 = !DILocation(line: 151, column: 11, scope: !120)
!482 = !DILocation(line: 151, column: 22, scope: !120)
!483 = !DILocation(line: 155, column: 26, scope: !120)
!484 = !DILocation(line: 333, column: 36, scope: !263)
!485 = !DILocation(line: 333, column: 45, scope: !263)
!486 = !DILocation(line: 335, column: 3, scope: !263)
!487 = !DILocation(line: 336, column: 7, scope: !263)
!488 = !DILocation(line: 341, column: 3, scope: !263)
!489 = !{!379, !383, i64 188}
!490 = !DILocation(line: 344, column: 17, scope: !491)
!491 = distinct !DILexicalBlock(scope: !263, file: !1, line: 342, column: 3)
!492 = !DILocation(line: 345, column: 7, scope: !491)
!493 = !{!379, !383, i64 196}
!494 = !{!379, !383, i64 192}
!495 = !DILocation(line: 347, column: 17, scope: !491)
!496 = !DILocation(line: 348, column: 7, scope: !491)
!497 = !DILocation(line: 348, column: 17, scope: !491)
!498 = !DILocation(line: 349, column: 7, scope: !491)
!499 = !{!379, !383, i64 208}
!500 = !{!379, !383, i64 204}
!501 = !{!379, !383, i64 200}
!502 = !DILocation(line: 351, column: 17, scope: !491)
!503 = !DILocation(line: 352, column: 7, scope: !491)
!504 = !DILocation(line: 352, column: 17, scope: !491)
!505 = !DILocation(line: 353, column: 7, scope: !491)
!506 = !DILocation(line: 353, column: 17, scope: !491)
!507 = !DILocation(line: 354, column: 7, scope: !491)
!508 = !DILocation(line: 356, column: 7, scope: !491)
!509 = !DILocation(line: 358, column: 3, scope: !491)
!510 = !DILocation(line: 360, column: 26, scope: !263)
!511 = !DILocation(line: 178, column: 26, scope: !200)
!512 = !DILocation(line: 180, column: 17, scope: !200)
!513 = !DILocation(line: 180, column: 8, scope: !200)
!514 = !DILocation(line: 183, column: 3, scope: !200)
!515 = !DILocation(line: 184, column: 3, scope: !200)
!516 = !DILocation(line: 202, column: 29, scope: !238)
!517 = !DILocation(line: 213, column: 8, scope: !238)
!518 = !DILocation(line: 204, column: 11, scope: !238)
!519 = !DILocation(line: 208, column: 7, scope: !238)
!520 = !DILocation(line: 209, column: 7, scope: !238)
!521 = !DILocation(line: 232, column: 26, scope: !522)
!522 = distinct !DILexicalBlock(scope: !523, file: !1, line: 232, column: 3)
!523 = distinct !DILexicalBlock(scope: !238, file: !1, line: 232, column: 3)
!524 = !DILocation(line: 232, column: 24, scope: !522)
!525 = !DILocation(line: 232, column: 3, scope: !523)
!526 = !DILocation(line: 241, column: 16, scope: !527)
!527 = distinct !DILexicalBlock(scope: !528, file: !1, line: 241, column: 9)
!528 = distinct !DILexicalBlock(scope: !522, file: !1, line: 233, column: 3)
!529 = !DILocation(line: 243, column: 24, scope: !530)
!530 = distinct !DILexicalBlock(scope: !527, file: !1, line: 242, column: 5)
!531 = !DILocation(line: 259, column: 55, scope: !532)
!532 = distinct !DILexicalBlock(scope: !530, file: !1, line: 259, column: 11)
!533 = !DILocation(line: 259, column: 35, scope: !532)
!534 = !DILocation(line: 263, column: 29, scope: !535)
!535 = distinct !DILexicalBlock(scope: !530, file: !1, line: 263, column: 11)
!536 = !DILocation(line: 269, column: 42, scope: !537)
!537 = distinct !DILexicalBlock(scope: !538, file: !1, line: 269, column: 5)
!538 = distinct !DILexicalBlock(scope: !528, file: !1, line: 269, column: 5)
!539 = !DILocation(line: 271, column: 30, scope: !540)
!540 = distinct !DILexicalBlock(scope: !541, file: !1, line: 271, column: 7)
!541 = distinct !DILexicalBlock(scope: !542, file: !1, line: 271, column: 7)
!542 = distinct !DILexicalBlock(scope: !537, file: !1, line: 270, column: 5)
!543 = !DILocation(line: 277, column: 48, scope: !544)
!544 = distinct !DILexicalBlock(scope: !545, file: !1, line: 274, column: 9)
!545 = distinct !DILexicalBlock(scope: !540, file: !1, line: 272, column: 7)
!546 = !DILocation(line: 291, column: 19, scope: !547)
!547 = distinct !DILexicalBlock(scope: !548, file: !1, line: 291, column: 3)
!548 = distinct !DILexicalBlock(scope: !238, file: !1, line: 291, column: 3)
!549 = !DILocation(line: 291, column: 13, scope: !547)
!550 = !DILocation(line: 291, column: 3, scope: !548)
!551 = !DILocation(line: 293, column: 35, scope: !552)
!552 = distinct !DILexicalBlock(scope: !547, file: !1, line: 292, column: 3)
!553 = !DILocation(line: 294, column: 31, scope: !552)
!554 = !DILocation(line: 206, column: 10, scope: !238)
!555 = !DILocation(line: 239, column: 5, scope: !528)
!556 = !{!557, !383, i64 0}
!557 = !{!"", !383, i64 0, !383, i64 4, !383, i64 8, !383, i64 12, !383, i64 16, !383, i64 20, !383, i64 24, !383, i64 28}
!558 = !DILocation(line: 241, column: 40, scope: !527)
!559 = !DILocation(line: 243, column: 20, scope: !530)
!560 = !{!390, !380, i64 32}
!561 = !DILocation(line: 205, column: 11, scope: !238)
!562 = !DILocation(line: 246, column: 15, scope: !563)
!563 = distinct !DILexicalBlock(scope: !530, file: !1, line: 246, column: 11)
!564 = !{!565, !380, i64 80}
!565 = !{!"PGA", !380, i64 0, !383, i64 8, !383, i64 12, !380, i64 16, !380, i64 24, !383, i64 32, !383, i64 36, !380, i64 40, !383, i64 48, !383, i64 52, !380, i64 56, !380, i64 64, !380, i64 72, !380, i64 80, !383, i64 88, !383, i64 92, !380, i64 96}
!566 = !DILocation(line: 246, column: 11, scope: !563)
!567 = !DILocation(line: 246, column: 11, scope: !530)
!568 = !DILocation(line: 248, column: 28, scope: !569)
!569 = distinct !DILexicalBlock(scope: !570, file: !1, line: 248, column: 13)
!570 = distinct !DILexicalBlock(scope: !563, file: !1, line: 247, column: 7)
!571 = !{!572, !383, i64 24}
!572 = !{!"PComm", !380, i64 0, !380, i64 8, !380, i64 16, !383, i64 24, !380, i64 32, !383, i64 40, !383, i64 44, !383, i64 48}
!573 = !DILocation(line: 248, column: 37, scope: !569)
!574 = !DILocation(line: 248, column: 13, scope: !570)
!575 = !DILocation(line: 250, column: 11, scope: !576)
!576 = distinct !DILexicalBlock(scope: !569, file: !1, line: 249, column: 9)
!577 = !DILocation(line: 251, column: 9, scope: !576)
!578 = !DILocation(line: 252, column: 9, scope: !570)
!579 = !DILocation(line: 253, column: 7, scope: !570)
!580 = !DILocation(line: 259, column: 15, scope: !532)
!581 = !{!565, !380, i64 64}
!582 = !{!557, !383, i64 16}
!583 = !DILocation(line: 259, column: 58, scope: !532)
!584 = !DILocation(line: 259, column: 31, scope: !532)
!585 = !DILocation(line: 259, column: 28, scope: !532)
!586 = !DILocation(line: 259, column: 11, scope: !530)
!587 = !DILocation(line: 261, column: 9, scope: !588)
!588 = distinct !DILexicalBlock(scope: !532, file: !1, line: 260, column: 7)
!589 = !DILocation(line: 263, column: 45, scope: !535)
!590 = !DILocation(line: 262, column: 7, scope: !588)
!591 = !DILocation(line: 263, column: 15, scope: !535)
!592 = !{!565, !380, i64 56}
!593 = !DILocation(line: 263, column: 48, scope: !535)
!594 = !DILocation(line: 263, column: 25, scope: !535)
!595 = !DILocation(line: 263, column: 22, scope: !535)
!596 = !DILocation(line: 263, column: 11, scope: !530)
!597 = !DILocation(line: 265, column: 9, scope: !598)
!598 = distinct !DILexicalBlock(scope: !535, file: !1, line: 264, column: 7)
!599 = !DILocation(line: 266, column: 7, scope: !598)
!600 = !{!557, !383, i64 20}
!601 = !DILocation(line: 269, column: 33, scope: !537)
!602 = !DILocation(line: 269, column: 5, scope: !538)
!603 = !{!557, !383, i64 24}
!604 = !DILocation(line: 271, column: 21, scope: !540)
!605 = !DILocation(line: 271, column: 7, scope: !541)
!606 = !DILocation(line: 273, column: 23, scope: !545)
!607 = !DILocation(line: 273, column: 9, scope: !545)
!608 = !DILocation(line: 277, column: 34, scope: !544)
!609 = !DILocation(line: 277, column: 13, scope: !544)
!610 = !DILocation(line: 278, column: 13, scope: !544)
!611 = !DILocation(line: 280, column: 21, scope: !612)
!612 = distinct !DILexicalBlock(scope: !544, file: !1, line: 280, column: 17)
!613 = !DILocation(line: 280, column: 17, scope: !612)
!614 = !DILocation(line: 280, column: 17, scope: !544)
!615 = !DILocation(line: 282, column: 15, scope: !616)
!616 = distinct !DILexicalBlock(scope: !612, file: !1, line: 281, column: 13)
!617 = !DILocation(line: 283, column: 13, scope: !616)
!618 = !DILocation(line: 287, column: 16, scope: !542)
!619 = !DILocation(line: 287, column: 12, scope: !542)
!620 = !DILocation(line: 287, column: 7, scope: !542)
!621 = !DILocation(line: 269, column: 59, scope: !537)
!622 = !DILocation(line: 210, column: 7, scope: !238)
!623 = !DILocation(line: 232, column: 49, scope: !522)
!624 = !DILocation(line: 293, column: 49, scope: !552)
!625 = !DILocation(line: 293, column: 31, scope: !552)
!626 = !DILocation(line: 293, column: 5, scope: !552)
!627 = !DILocation(line: 294, column: 27, scope: !552)
!628 = !DILocation(line: 294, column: 5, scope: !552)
!629 = !DILocation(line: 297, column: 10, scope: !630)
!630 = distinct !DILexicalBlock(scope: !238, file: !1, line: 297, column: 6)
!631 = !DILocation(line: 297, column: 6, scope: !630)
!632 = !DILocation(line: 297, column: 6, scope: !238)
!633 = !DILocation(line: 299, column: 5, scope: !634)
!634 = distinct !DILexicalBlock(scope: !630, file: !1, line: 298, column: 3)
!635 = !DILocation(line: 300, column: 3, scope: !634)
!636 = !DILocation(line: 301, column: 12, scope: !238)
!637 = !DILocation(line: 301, column: 3, scope: !238)
!638 = !DILocation(line: 302, column: 12, scope: !238)
!639 = !DILocation(line: 302, column: 3, scope: !238)
!640 = !DILocation(line: 303, column: 12, scope: !238)
!641 = !DILocation(line: 303, column: 3, scope: !238)
!642 = !DILocation(line: 304, column: 8, scope: !238)
!643 = !DILocation(line: 304, column: 3, scope: !238)
!644 = !DILocation(line: 305, column: 9, scope: !238)
!645 = !DILocation(line: 306, column: 1, scope: !238)
!646 = !DILocation(line: 384, column: 29, scope: !332)
!647 = !DILocation(line: 389, column: 3, scope: !332)
!648 = !DILocation(line: 420, column: 21, scope: !335)
!649 = !DILocation(line: 420, column: 29, scope: !335)
!650 = !DILocation(line: 428, column: 3, scope: !335)
!651 = !DILocation(line: 460, column: 22, scope: !341)
!652 = !DILocation(line: 460, column: 30, scope: !341)
!653 = !DILocation(line: 477, column: 3, scope: !341)
!654 = !DILocation(line: 502, column: 29, scope: !345)
!655 = !DILocation(line: 504, column: 7, scope: !345)
!656 = !DILocation(line: 515, column: 3, scope: !345)
!657 = !DILocation(line: 539, column: 29, scope: !353)
!658 = !DILocation(line: 541, column: 7, scope: !353)
!659 = !DILocation(line: 552, column: 3, scope: !353)
