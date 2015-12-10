; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/random.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_atoms = type { i32, %struct.t_atom*, i8***, i8***, i8***, i32, i8***, i32, i8***, %struct.t_block, [9 x %struct.t_grps], %struct.t_pdbinfo* }
%struct.t_atom = type { float, float, float, float, i16, i16, i32, i32, [9 x i8], i8 }
%struct.t_block = type { [256 x i32], i32, i32*, i32, i32* }
%struct.t_grps = type { i32, i32* }
%struct.t_pdbinfo = type { i32, i32, i8, [6 x i8], float, float, i32, [6 x i32] }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [59 x i8] c"Velocities were taken from a Maxwell distribution at %g K\0A\00", align 1
@debug = external global %struct.__sFILE*
@.str1 = private unnamed_addr constant [109 x i8] c"Velocities were taken from a Maxwell distribution\0AInitial generated temperature: %12.5e (scaled to: %12.5e)\0A\00", align 1
@.str2 = private unnamed_addr constant [48 x i8] c"Using random seed %d for generating velocities\0A\00", align 1
@.str3 = private unnamed_addr constant [6 x i8] c"dummy\00", align 1
@.str4 = private unnamed_addr constant [66 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/random.c\00", align 1

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define i32 @__sputc(i32 %_c, %struct.__sFILE* %_p) #0 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !73, metadata !280), !dbg !281
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %_p, i64 0, metadata !74, metadata !280), !dbg !282
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2, !dbg !283
  %2 = load i32* %1, align 4, !dbg !285, !tbaa !286
  %3 = add nsw i32 %2, -1, !dbg !285
  store i32 %3, i32* %1, align 4, !dbg !285, !tbaa !286
  %4 = icmp sgt i32 %2, 0, !dbg !295
  br i1 %4, label %._crit_edge, label %5, !dbg !296

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255, !dbg !297
  br label %10, !dbg !296

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6, !dbg !298
  %7 = load i32* %6, align 4, !dbg !298, !tbaa !299
  %8 = icmp sle i32 %2, %7, !dbg !300
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10, !dbg !301
  %or.cond = or i1 %9, %8, !dbg !302
  br i1 %or.cond, label %15, label %10, !dbg !302

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ], !dbg !297
  %11 = trunc i32 %_c to i8, !dbg !303
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0, !dbg !304
  %13 = load i8** %12, align 8, !dbg !305, !tbaa !306
  %14 = getelementptr inbounds i8* %13, i64 1, !dbg !305
  store i8* %14, i8** %12, align 8, !dbg !305, !tbaa !306
  store i8 %11, i8* %13, align 1, !dbg !307, !tbaa !308
  br label %17, !dbg !309

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #7, !dbg !310
  br label %17, !dbg !311

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0, !dbg !312
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #2

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #3 {
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !80, metadata !280), !dbg !313
  %1 = icmp sgt i32 %__signo, 32, !dbg !314
  br i1 %1, label %5, label %2, !dbg !315

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !316
  %4 = shl i32 1, %3, !dbg !317
  br label %5, !dbg !315

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !315
  ret i32 %6, !dbg !318
}

; Function Attrs: nounwind optsize ssp uwtable
define float @gauss(float %am, float %sd, i32* %ig) #4 {
  tail call void @llvm.dbg.value(metadata float %am, i64 0, metadata !89, metadata !280), !dbg !319
  tail call void @llvm.dbg.value(metadata float %sd, i64 0, metadata !90, metadata !280), !dbg !320
  tail call void @llvm.dbg.value(metadata i32* %ig, i64 0, metadata !91, metadata !280), !dbg !321
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !92, metadata !280), !dbg !322
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !93, metadata !280), !dbg !323
  br label %1, !dbg !324

; <label>:1                                       ; preds = %1, %0
  %a.02 = phi float [ 0.000000e+00, %0 ], [ %3, %1 ]
  %i.01 = phi i32 [ 0, %0 ], [ %4, %1 ]
  %2 = tail call float @rando(i32* %ig) #7, !dbg !326
  %3 = fadd float %a.02, %2, !dbg !328
  tail call void @llvm.dbg.value(metadata float %3, i64 0, metadata !92, metadata !280), !dbg !322
  %4 = add nuw nsw i32 %i.01, 1, !dbg !329
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !93, metadata !280), !dbg !323
  %exitcond = icmp eq i32 %4, 12, !dbg !324
  br i1 %exitcond, label %5, label %1, !dbg !324

; <label>:5                                       ; preds = %1
  %6 = fpext float %3 to double, !dbg !330
  %7 = fadd double %6, -6.000000e+00, !dbg !331
  %8 = fpext float %sd to double, !dbg !332
  %9 = fmul double %8, %7, !dbg !333
  %10 = fpext float %am to double, !dbg !334
  %11 = fadd double %10, %9, !dbg !335
  %12 = fptrunc double %11 to float, !dbg !336
  tail call void @llvm.dbg.value(metadata float %12, i64 0, metadata !94, metadata !280), !dbg !337
  ret float %12, !dbg !338
}

; Function Attrs: optsize
declare float @rando(i32*) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @low_mspeed(float %tempi, i32 %nrdf, i32 %seed, i32 %nat, i32* nocapture readonly %a, %struct.t_atoms* nocapture readonly %atoms, [3 x float]* nocapture %v) #4 {
  %ig = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata float %tempi, i64 0, metadata !175, metadata !280), !dbg !339
  tail call void @llvm.dbg.value(metadata i32 %nrdf, i64 0, metadata !176, metadata !280), !dbg !340
  tail call void @llvm.dbg.value(metadata i32 %seed, i64 0, metadata !177, metadata !280), !dbg !341
  tail call void @llvm.dbg.value(metadata i32 %nat, i64 0, metadata !178, metadata !280), !dbg !342
  tail call void @llvm.dbg.value(metadata i32* %a, i64 0, metadata !179, metadata !280), !dbg !343
  tail call void @llvm.dbg.value(metadata %struct.t_atoms* %atoms, i64 0, metadata !180, metadata !280), !dbg !344
  tail call void @llvm.dbg.value(metadata [3 x float]* %v, i64 0, metadata !181, metadata !280), !dbg !345
  tail call void @llvm.dbg.value(metadata i32 %seed, i64 0, metadata !185, metadata !280), !dbg !346
  store i32 %seed, i32* %ig, align 4, !dbg !347, !tbaa !348
  %1 = fpext float %tempi to double, !dbg !349
  %2 = fmul double %1, 0x3F810732CDE67DC4, !dbg !350
  %3 = fptrunc double %2 to float, !dbg !351
  tail call void @llvm.dbg.value(metadata float %3, i64 0, metadata !186, metadata !280), !dbg !352
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !188, metadata !280), !dbg !353
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !182, metadata !280), !dbg !354
  %4 = icmp sgt i32 %nat, 0, !dbg !355
  br i1 %4, label %.lr.ph, label %._crit_edge, !dbg !358

.lr.ph:                                           ; preds = %0
  %5 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1, !dbg !359
  %6 = add i32 %nat, -1, !dbg !358
  br label %7, !dbg !358

; <label>:7                                       ; preds = %.loopexit3, %.lr.ph
  %indvars.iv17 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next18, %.loopexit3 ]
  %ekin.08 = phi float [ 0.000000e+00, %.lr.ph ], [ %ekin.2, %.loopexit3 ]
  %8 = getelementptr inbounds i32* %a, i64 %indvars.iv17, !dbg !361
  %9 = load i32* %8, align 4, !dbg !361, !tbaa !348
  call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !183, metadata !280), !dbg !362
  %10 = sext i32 %9 to i64, !dbg !363
  %11 = load %struct.t_atom** %5, align 8, !dbg !359, !tbaa !364
  %12 = getelementptr inbounds %struct.t_atom* %11, i64 %10, i32 0, !dbg !367
  %13 = load float* %12, align 4, !dbg !367, !tbaa !368
  call void @llvm.dbg.value(metadata float %13, i64 0, metadata !190, metadata !280), !dbg !371
  %14 = fcmp ogt float %13, 0.000000e+00, !dbg !372
  br i1 %14, label %15, label %.loopexit3, !dbg !374

; <label>:15                                      ; preds = %7
  %16 = fdiv float %3, %13, !dbg !375
  %sqrtf1 = call float @sqrtf(float %16) #8, !dbg !377
  call void @llvm.dbg.value(metadata float %sqrtf1, i64 0, metadata !187, metadata !280), !dbg !378
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !184, metadata !280), !dbg !379
  %17 = fpext float %sqrtf1 to double, !dbg !380
  %18 = fpext float %13 to double, !dbg !385
  %19 = fmul double %18, 5.000000e-01, !dbg !386
  br label %.preheader2, !dbg !387

.preheader2:                                      ; preds = %gauss.exit, %15
  %indvars.iv14 = phi i64 [ 0, %15 ], [ %indvars.iv.next15, %gauss.exit ]
  %ekin.16 = phi float [ %ekin.08, %15 ], [ %35, %gauss.exit ]
  br label %20, !dbg !388

; <label>:20                                      ; preds = %.preheader2, %20
  %a.02.i = phi float [ %22, %20 ], [ 0.000000e+00, %.preheader2 ], !dbg !389
  %i.01.i = phi i32 [ %23, %20 ], [ 0, %.preheader2 ], !dbg !389
  %21 = call float @rando(i32* %ig) #7, !dbg !388
  %22 = fadd float %a.02.i, %21, !dbg !390
  call void @llvm.dbg.value(metadata float %22, i64 0, metadata !92, metadata !280) #6, !dbg !391
  %23 = add nuw nsw i32 %i.01.i, 1, !dbg !392
  call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !93, metadata !280) #6, !dbg !393
  %exitcond.i = icmp eq i32 %23, 12, !dbg !394
  br i1 %exitcond.i, label %gauss.exit, label %20, !dbg !394

gauss.exit:                                       ; preds = %20
  %24 = fpext float %22 to double, !dbg !395
  %25 = fadd double %24, -6.000000e+00, !dbg !396
  %26 = fmul double %17, %25, !dbg !397
  %27 = fadd double %26, 0.000000e+00, !dbg !398
  %28 = fptrunc double %27 to float, !dbg !399
  call void @llvm.dbg.value(metadata float %28, i64 0, metadata !94, metadata !280) #6, !dbg !400
  %29 = getelementptr inbounds [3 x float]* %v, i64 %10, i64 %indvars.iv14, !dbg !401
  store float %28, float* %29, align 4, !dbg !402, !tbaa !403
  %30 = fpext float %28 to double, !dbg !404
  %31 = fmul double %19, %30, !dbg !405
  %32 = fmul double %30, %31, !dbg !406
  %33 = fpext float %ekin.16 to double, !dbg !407
  %34 = fadd double %33, %32, !dbg !407
  %35 = fptrunc double %34 to float, !dbg !407
  call void @llvm.dbg.value(metadata float %35, i64 0, metadata !188, metadata !280), !dbg !353
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1, !dbg !387
  %exitcond16 = icmp eq i64 %indvars.iv.next15, 3, !dbg !387
  br i1 %exitcond16, label %.loopexit3, label %.preheader2, !dbg !387

.loopexit3:                                       ; preds = %gauss.exit, %7
  %ekin.2 = phi float [ %ekin.08, %7 ], [ %35, %gauss.exit ]
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1, !dbg !358
  %lftr.wideiv19 = trunc i64 %indvars.iv17 to i32, !dbg !358
  %exitcond20 = icmp eq i32 %lftr.wideiv19, %6, !dbg !358
  br i1 %exitcond20, label %._crit_edge, label %7, !dbg !358

._crit_edge:                                      ; preds = %.loopexit3, %0
  %ekin.0.lcssa = phi float [ 0.000000e+00, %0 ], [ %ekin.2, %.loopexit3 ]
  %36 = fpext float %ekin.0.lcssa to double, !dbg !408
  %37 = fmul double %36, 2.000000e+00, !dbg !409
  %38 = sitofp i32 %nrdf to double, !dbg !410
  %39 = fmul double %38, 0x3F810732CDE67DC4, !dbg !411
  %40 = fdiv double %37, %39, !dbg !412
  %41 = fptrunc double %40 to float, !dbg !413
  call void @llvm.dbg.value(metadata float %41, i64 0, metadata !189, metadata !280), !dbg !414
  %42 = fcmp ogt float %41, 0.000000e+00, !dbg !415
  br i1 %42, label %43, label %.loopexit, !dbg !417

; <label>:43                                      ; preds = %._crit_edge
  %44 = fdiv float %tempi, %41, !dbg !418
  %sqrtf = call float @sqrtf(float %44) #8, !dbg !420
  call void @llvm.dbg.value(metadata float %sqrtf, i64 0, metadata !191, metadata !280), !dbg !421
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !182, metadata !280), !dbg !354
  br i1 %4, label %.preheader.lr.ph, label %.loopexit, !dbg !422

.preheader.lr.ph:                                 ; preds = %43
  %45 = add i32 %nat, -1, !dbg !422
  br label %.preheader, !dbg !422

.preheader:                                       ; preds = %53, %.preheader.lr.ph
  %indvars.iv11 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next12, %53 ]
  %46 = getelementptr inbounds i32* %a, i64 %indvars.iv11, !dbg !424
  %47 = load i32* %46, align 4, !dbg !424, !tbaa !348
  %48 = sext i32 %47 to i64, !dbg !428
  br label %49, !dbg !429

; <label>:49                                      ; preds = %49, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %49 ]
  %50 = getelementptr inbounds [3 x float]* %v, i64 %48, i64 %indvars.iv, !dbg !428
  %51 = load float* %50, align 4, !dbg !430, !tbaa !403
  %52 = fmul float %sqrtf, %51, !dbg !430
  store float %52, float* %50, align 4, !dbg !430, !tbaa !403
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !429
  %exitcond = icmp eq i64 %indvars.iv.next, 3, !dbg !429
  br i1 %exitcond, label %53, label %49, !dbg !429

; <label>:53                                      ; preds = %49
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1, !dbg !422
  %lftr.wideiv = trunc i64 %indvars.iv11 to i32, !dbg !422
  %exitcond13 = icmp eq i32 %lftr.wideiv, %45, !dbg !422
  br i1 %exitcond13, label %.loopexit, label %.preheader, !dbg !422

.loopexit:                                        ; preds = %53, %43, %._crit_edge
  %54 = load %struct.__sFILE** @__stderrp, align 8, !dbg !431, !tbaa !432
  %55 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %54, i8* getelementptr inbounds ([59 x i8]* @.str, i64 0, i64 0), double %1) #7, !dbg !433
  %56 = load %struct.__sFILE** @debug, align 8, !dbg !434, !tbaa !432
  %57 = icmp eq %struct.__sFILE* %56, null, !dbg !434
  br i1 %57, label %61, label %58, !dbg !436

; <label>:58                                      ; preds = %.loopexit
  %59 = fpext float %41 to double, !dbg !437
  %60 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %56, i8* getelementptr inbounds ([109 x i8]* @.str1, i64 0, i64 0), double %59, double %1) #7, !dbg !439
  br label %61, !dbg !440

; <label>:61                                      ; preds = %.loopexit, %58
  ret void, !dbg !441
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #5

; Function Attrs: nounwind optsize ssp uwtable
define void @grp_maxwell(%struct.t_block* nocapture readonly %grp, float* nocapture readonly %tempi, i32* nocapture readonly %nrdf, i32 %seed, %struct.t_atoms* nocapture readonly %atoms, [3 x float]* nocapture %v) #4 {
  tail call void @llvm.dbg.value(metadata %struct.t_block* %grp, i64 0, metadata !198, metadata !280), !dbg !442
  tail call void @llvm.dbg.value(metadata float* %tempi, i64 0, metadata !199, metadata !280), !dbg !443
  tail call void @llvm.dbg.value(metadata i32* %nrdf, i64 0, metadata !200, metadata !280), !dbg !444
  tail call void @llvm.dbg.value(metadata i32 %seed, i64 0, metadata !201, metadata !280), !dbg !445
  tail call void @llvm.dbg.value(metadata %struct.t_atoms* %atoms, i64 0, metadata !202, metadata !280), !dbg !446
  tail call void @llvm.dbg.value(metadata [3 x float]* %v, i64 0, metadata !203, metadata !280), !dbg !447
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !204, metadata !280), !dbg !448
  %1 = getelementptr inbounds %struct.t_block* %grp, i64 0, i32 1, !dbg !449
  %2 = load i32* %1, align 4, !dbg !449, !tbaa !452
  %3 = icmp sgt i32 %2, 0, !dbg !453
  br i1 %3, label %.lr.ph, label %._crit_edge, !dbg !454

.lr.ph:                                           ; preds = %0
  %4 = getelementptr inbounds %struct.t_block* %grp, i64 0, i32 2, !dbg !455
  %5 = getelementptr inbounds %struct.t_block* %grp, i64 0, i32 4, !dbg !457
  br label %6, !dbg !454

; <label>:6                                       ; preds = %.lr.ph, %6
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %6 ]
  %7 = load i32** %4, align 8, !dbg !455, !tbaa !458
  %8 = getelementptr inbounds i32* %7, i64 %indvars.iv, !dbg !459
  %9 = load i32* %8, align 4, !dbg !459, !tbaa !348
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !205, metadata !280), !dbg !460
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !454
  %10 = getelementptr inbounds i32* %7, i64 %indvars.iv.next, !dbg !461
  %11 = load i32* %10, align 4, !dbg !461, !tbaa !348
  %12 = sub nsw i32 %11, %9, !dbg !462
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !206, metadata !280), !dbg !463
  %13 = getelementptr inbounds float* %tempi, i64 %indvars.iv, !dbg !464
  %14 = load float* %13, align 4, !dbg !464, !tbaa !403
  %15 = getelementptr inbounds i32* %nrdf, i64 %indvars.iv, !dbg !465
  %16 = load i32* %15, align 4, !dbg !465, !tbaa !348
  %17 = sext i32 %9 to i64, !dbg !466
  %18 = load i32** %5, align 8, !dbg !457, !tbaa !467
  %19 = getelementptr inbounds i32* %18, i64 %17, !dbg !466
  tail call void @low_mspeed(float %14, i32 %16, i32 %seed, i32 %12, i32* %19, %struct.t_atoms* %atoms, [3 x float]* %v) #9, !dbg !468
  %20 = load i32* %1, align 4, !dbg !449, !tbaa !452
  %21 = sext i32 %20 to i64, !dbg !453
  %22 = icmp slt i64 %indvars.iv.next, %21, !dbg !453
  br i1 %22, label %6, label %._crit_edge, !dbg !454

._crit_edge:                                      ; preds = %6, %0
  ret void, !dbg !469
}

; Function Attrs: nounwind optsize ssp uwtable
define void @maxwell_speed(float %tempi, i32 %nrdf, i32 %seed, %struct.t_atoms* nocapture readonly %atoms, [3 x float]* nocapture %v) #4 {
  tail call void @llvm.dbg.value(metadata float %tempi, i64 0, metadata !211, metadata !280), !dbg !470
  tail call void @llvm.dbg.value(metadata i32 %nrdf, i64 0, metadata !212, metadata !280), !dbg !471
  tail call void @llvm.dbg.value(metadata i32 %seed, i64 0, metadata !213, metadata !280), !dbg !472
  tail call void @llvm.dbg.value(metadata %struct.t_atoms* %atoms, i64 0, metadata !214, metadata !280), !dbg !473
  tail call void @llvm.dbg.value(metadata [3 x float]* %v, i64 0, metadata !215, metadata !280), !dbg !474
  %1 = icmp eq i32 %seed, -1, !dbg !475
  br i1 %1, label %2, label %6, !dbg !477

; <label>:2                                       ; preds = %0
  %3 = tail call i32 @make_seed() #7, !dbg !478
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !213, metadata !280), !dbg !472
  %4 = load %struct.__sFILE** @__stderrp, align 8, !dbg !480, !tbaa !432
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([48 x i8]* @.str2, i64 0, i64 0), i32 %3) #7, !dbg !481
  br label %6, !dbg !482

; <label>:6                                       ; preds = %2, %0
  %.0 = phi i32 [ %3, %2 ], [ %seed, %0 ]
  %7 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0, !dbg !483
  %8 = load i32* %7, align 4, !dbg !483, !tbaa !484
  %9 = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 143, i32 %8, i32 4) #7, !dbg !483
  %10 = bitcast i8* %9 to i32*, !dbg !483
  tail call void @llvm.dbg.value(metadata i32* %10, i64 0, metadata !216, metadata !280), !dbg !485
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !217, metadata !280), !dbg !486
  %11 = load i32* %7, align 4, !dbg !487, !tbaa !484
  %12 = icmp sgt i32 %11, 0, !dbg !490
  br i1 %12, label %.lr.ph, label %._crit_edge, !dbg !491

.lr.ph:                                           ; preds = %6, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %6 ]
  %13 = getelementptr inbounds i32* %10, i64 %indvars.iv, !dbg !492
  %14 = trunc i64 %indvars.iv to i32, !dbg !493
  store i32 %14, i32* %13, align 4, !dbg !493, !tbaa !348
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !491
  %15 = load i32* %7, align 4, !dbg !487, !tbaa !484
  %16 = sext i32 %15 to i64, !dbg !490
  %17 = icmp slt i64 %indvars.iv.next, %16, !dbg !490
  br i1 %17, label %.lr.ph, label %._crit_edge, !dbg !491

._crit_edge:                                      ; preds = %.lr.ph, %6
  %.lcssa = phi i32 [ %11, %6 ], [ %15, %.lr.ph ]
  tail call void @low_mspeed(float %tempi, i32 %nrdf, i32 %.0, i32 %.lcssa, i32* %10, %struct.t_atoms* %atoms, [3 x float]* %v) #9, !dbg !494
  tail call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 147, i8* %9) #7, !dbg !495
  ret void, !dbg !496
}

; Function Attrs: optsize
declare i32 @make_seed() #2

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define float @calc_cm(%struct.__sFILE* nocapture readnone %log, i32 %natoms, float* nocapture readonly %mass, [3 x float]* nocapture readonly %x, [3 x float]* nocapture readonly %v, float* nocapture %xcm, float* nocapture %vcm, float* nocapture %acm, [3 x float]* nocapture %L) #4 {
  %dx = alloca [3 x float], align 4
  %a0 = alloca [3 x float], align 4
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %log, i64 0, metadata !223, metadata !280), !dbg !497
  tail call void @llvm.dbg.value(metadata i32 %natoms, i64 0, metadata !224, metadata !280), !dbg !498
  tail call void @llvm.dbg.value(metadata float* %mass, i64 0, metadata !225, metadata !280), !dbg !499
  tail call void @llvm.dbg.value(metadata [3 x float]* %x, i64 0, metadata !226, metadata !280), !dbg !500
  tail call void @llvm.dbg.value(metadata [3 x float]* %v, i64 0, metadata !227, metadata !280), !dbg !501
  tail call void @llvm.dbg.value(metadata float* %xcm, i64 0, metadata !228, metadata !280), !dbg !502
  tail call void @llvm.dbg.value(metadata float* %vcm, i64 0, metadata !229, metadata !280), !dbg !503
  tail call void @llvm.dbg.value(metadata float* %acm, i64 0, metadata !230, metadata !280), !dbg !504
  tail call void @llvm.dbg.value(metadata [3 x float]* %L, i64 0, metadata !231, metadata !280), !dbg !505
  tail call void @llvm.dbg.declare(metadata [3 x float]* %dx, metadata !232, metadata !280), !dbg !506
  tail call void @llvm.dbg.declare(metadata [3 x float]* %a0, metadata !233, metadata !280), !dbg !507
  tail call void @llvm.dbg.value(metadata float* %xcm, i64 0, metadata !261, metadata !280), !dbg !508
  store float 0.000000e+00, float* %xcm, align 4, !dbg !510, !tbaa !403
  %1 = getelementptr inbounds float* %xcm, i64 1, !dbg !511
  store float 0.000000e+00, float* %1, align 4, !dbg !512, !tbaa !403
  %2 = getelementptr inbounds float* %xcm, i64 2, !dbg !513
  store float 0.000000e+00, float* %2, align 4, !dbg !514, !tbaa !403
  tail call void @llvm.dbg.value(metadata float* %vcm, i64 0, metadata !261, metadata !280), !dbg !515
  store float 0.000000e+00, float* %vcm, align 4, !dbg !517, !tbaa !403
  %3 = getelementptr inbounds float* %vcm, i64 1, !dbg !518
  store float 0.000000e+00, float* %3, align 4, !dbg !519, !tbaa !403
  %4 = getelementptr inbounds float* %vcm, i64 2, !dbg !520
  store float 0.000000e+00, float* %4, align 4, !dbg !521, !tbaa !403
  tail call void @llvm.dbg.value(metadata float* %acm, i64 0, metadata !261, metadata !280), !dbg !522
  store float 0.000000e+00, float* %acm, align 4, !dbg !524, !tbaa !403
  %5 = getelementptr inbounds float* %acm, i64 1, !dbg !525
  store float 0.000000e+00, float* %5, align 4, !dbg !526, !tbaa !403
  %6 = getelementptr inbounds float* %acm, i64 2, !dbg !527
  store float 0.000000e+00, float* %6, align 4, !dbg !528, !tbaa !403
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !234, metadata !280), !dbg !529
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !236, metadata !280), !dbg !530
  %7 = icmp sgt i32 %natoms, 0, !dbg !531
  %8 = getelementptr inbounds [3 x float]* %a0, i64 0, i64 0, !dbg !534
  %9 = getelementptr inbounds [3 x float]* %a0, i64 0, i64 1, !dbg !536
  %10 = getelementptr inbounds [3 x float]* %a0, i64 0, i64 2, !dbg !538
  br i1 %7, label %.lr.ph8, label %._crit_edge9, !dbg !539

.lr.ph8:                                          ; preds = %0
  %11 = add i32 %natoms, -1, !dbg !539
  br label %12, !dbg !539

; <label>:12                                      ; preds = %53, %.lr.ph8
  %indvars.iv19 = phi i64 [ 0, %.lr.ph8 ], [ %indvars.iv.next20, %53 ]
  %tm.05 = phi float [ 0.000000e+00, %.lr.ph8 ], [ %54, %53 ]
  %13 = getelementptr inbounds float* %mass, i64 %indvars.iv19, !dbg !540
  %14 = load float* %13, align 4, !dbg !540, !tbaa !403
  tail call void @llvm.dbg.value(metadata float %14, i64 0, metadata !235, metadata !280), !dbg !541
  tail call void @llvm.dbg.value(metadata float %54, i64 0, metadata !234, metadata !280), !dbg !529
  %15 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv19, i64 0, !dbg !542
  %16 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv19, i64 0, !dbg !543
  tail call void @llvm.dbg.value(metadata float* %15, i64 0, metadata !266, metadata !280), !dbg !544
  tail call void @llvm.dbg.value(metadata float* %16, i64 0, metadata !267, metadata !280), !dbg !545
  tail call void @llvm.dbg.value(metadata float* %8, i64 0, metadata !268, metadata !280), !dbg !546
  %17 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv19, i64 1, !dbg !547
  %18 = load float* %17, align 4, !dbg !547, !tbaa !403
  %19 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv19, i64 2, !dbg !548
  %20 = load float* %19, align 4, !dbg !548, !tbaa !403
  %21 = fmul float %18, %20, !dbg !549
  %22 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv19, i64 2, !dbg !550
  %23 = load float* %22, align 4, !dbg !550, !tbaa !403
  %24 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv19, i64 1, !dbg !551
  %25 = load float* %24, align 4, !dbg !551, !tbaa !403
  %26 = fmul float %23, %25, !dbg !552
  %27 = fsub float %21, %26, !dbg !553
  store float %27, float* %8, align 4, !dbg !554, !tbaa !403
  %28 = load float* %16, align 4, !dbg !555, !tbaa !403
  %29 = fmul float %23, %28, !dbg !556
  %30 = load float* %15, align 4, !dbg !557, !tbaa !403
  %31 = fmul float %30, %20, !dbg !558
  %32 = fsub float %29, %31, !dbg !559
  store float %32, float* %9, align 4, !dbg !560, !tbaa !403
  %33 = fmul float %30, %25, !dbg !561
  %34 = fmul float %18, %28, !dbg !562
  %35 = fsub float %33, %34, !dbg !563
  store float %35, float* %10, align 4, !dbg !564, !tbaa !403
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !237, metadata !280), !dbg !565
  br label %36, !dbg !566

; <label>:36                                      ; preds = %._crit_edge23, %12
  %37 = phi float [ %27, %12 ], [ %.pre25, %._crit_edge23 ]
  %38 = phi float [ %30, %12 ], [ %.pre, %._crit_edge23 ]
  %indvars.iv16 = phi i64 [ 0, %12 ], [ %indvars.iv.next17, %._crit_edge23 ]
  %39 = fmul float %14, %38, !dbg !568
  %40 = getelementptr inbounds float* %xcm, i64 %indvars.iv16, !dbg !571
  %41 = load float* %40, align 4, !dbg !572, !tbaa !403
  %42 = fadd float %41, %39, !dbg !572
  store float %42, float* %40, align 4, !dbg !572, !tbaa !403
  %43 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv19, i64 %indvars.iv16, !dbg !573
  %44 = load float* %43, align 4, !dbg !573, !tbaa !403
  %45 = fmul float %14, %44, !dbg !574
  %46 = getelementptr inbounds float* %vcm, i64 %indvars.iv16, !dbg !575
  %47 = load float* %46, align 4, !dbg !576, !tbaa !403
  %48 = fadd float %47, %45, !dbg !576
  store float %48, float* %46, align 4, !dbg !576, !tbaa !403
  %49 = fmul float %14, %37, !dbg !577
  %50 = getelementptr inbounds float* %acm, i64 %indvars.iv16, !dbg !578
  %51 = load float* %50, align 4, !dbg !579, !tbaa !403
  %52 = fadd float %51, %49, !dbg !579
  store float %52, float* %50, align 4, !dbg !579, !tbaa !403
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1, !dbg !566
  %exitcond18 = icmp eq i64 %indvars.iv.next17, 3, !dbg !566
  br i1 %exitcond18, label %53, label %._crit_edge23, !dbg !566

._crit_edge23:                                    ; preds = %36
  %.phi.trans.insert = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv19, i64 %indvars.iv.next17
  %.pre = load float* %.phi.trans.insert, align 4, !dbg !580, !tbaa !403
  %.phi.trans.insert24 = getelementptr inbounds [3 x float]* %a0, i64 0, i64 %indvars.iv.next17
  %.pre25 = load float* %.phi.trans.insert24, align 4, !dbg !581, !tbaa !403
  br label %36, !dbg !566

; <label>:53                                      ; preds = %36
  %54 = fadd float %tm.05, %14, !dbg !582
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1, !dbg !539
  %lftr.wideiv21 = trunc i64 %indvars.iv19 to i32, !dbg !539
  %exitcond22 = icmp eq i32 %lftr.wideiv21, %11, !dbg !539
  br i1 %exitcond22, label %._crit_edge9, label %12, !dbg !539

._crit_edge9:                                     ; preds = %53, %0
  %tm.0.lcssa = phi float [ 0.000000e+00, %0 ], [ %54, %53 ]
  tail call void @llvm.dbg.value(metadata float* %xcm, i64 0, metadata !266, metadata !280), !dbg !583
  tail call void @llvm.dbg.value(metadata float* %vcm, i64 0, metadata !267, metadata !280), !dbg !585
  tail call void @llvm.dbg.value(metadata float* %8, i64 0, metadata !268, metadata !280), !dbg !586
  %55 = load float* %1, align 4, !dbg !587, !tbaa !403
  %56 = load float* %4, align 4, !dbg !588, !tbaa !403
  %57 = fmul float %55, %56, !dbg !589
  %58 = load float* %2, align 4, !dbg !590, !tbaa !403
  %59 = load float* %3, align 4, !dbg !591, !tbaa !403
  %60 = fmul float %58, %59, !dbg !592
  %61 = fsub float %57, %60, !dbg !593
  store float %61, float* %8, align 4, !dbg !594, !tbaa !403
  %62 = load float* %vcm, align 4, !dbg !595, !tbaa !403
  %63 = fmul float %58, %62, !dbg !596
  %64 = load float* %xcm, align 4, !dbg !597, !tbaa !403
  %65 = fmul float %64, %56, !dbg !598
  %66 = fsub float %63, %65, !dbg !599
  store float %66, float* %9, align 4, !dbg !600, !tbaa !403
  %67 = fmul float %64, %59, !dbg !601
  %68 = fmul float %55, %62, !dbg !602
  %69 = fsub float %67, %68, !dbg !603
  store float %69, float* %10, align 4, !dbg !604, !tbaa !403
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !237, metadata !280), !dbg !565
  %70 = fdiv float %64, %tm.0.lcssa, !dbg !605
  store float %70, float* %xcm, align 4, !dbg !605, !tbaa !403
  %71 = load float* %vcm, align 4, !dbg !609, !tbaa !403
  %72 = fdiv float %71, %tm.0.lcssa, !dbg !609
  store float %72, float* %vcm, align 4, !dbg !609, !tbaa !403
  %73 = fdiv float %61, %tm.0.lcssa, !dbg !610
  %74 = load float* %acm, align 4, !dbg !611, !tbaa !403
  %75 = fsub float %74, %73, !dbg !611
  store float %75, float* %acm, align 4, !dbg !611, !tbaa !403
  br label %._crit_edge26, !dbg !612

._crit_edge26:                                    ; preds = %._crit_edge9, %._crit_edge26
  %indvars.iv.next1437 = phi i64 [ 1, %._crit_edge9 ], [ %indvars.iv.next14, %._crit_edge26 ]
  %.phi.trans.insert27 = getelementptr inbounds float* %xcm, i64 %indvars.iv.next1437
  %.pre28 = load float* %.phi.trans.insert27, align 4, !dbg !605, !tbaa !403
  %.phi.trans.insert29 = getelementptr inbounds [3 x float]* %a0, i64 0, i64 %indvars.iv.next1437
  %.pre30 = load float* %.phi.trans.insert29, align 4, !dbg !613, !tbaa !403
  %76 = getelementptr inbounds float* %xcm, i64 %indvars.iv.next1437, !dbg !614
  %77 = fdiv float %.pre28, %tm.0.lcssa, !dbg !605
  store float %77, float* %76, align 4, !dbg !605, !tbaa !403
  %78 = getelementptr inbounds float* %vcm, i64 %indvars.iv.next1437, !dbg !615
  %79 = load float* %78, align 4, !dbg !609, !tbaa !403
  %80 = fdiv float %79, %tm.0.lcssa, !dbg !609
  store float %80, float* %78, align 4, !dbg !609, !tbaa !403
  %81 = fdiv float %.pre30, %tm.0.lcssa, !dbg !610
  %82 = getelementptr inbounds float* %acm, i64 %indvars.iv.next1437, !dbg !616
  %83 = load float* %82, align 4, !dbg !611, !tbaa !403
  %84 = fsub float %83, %81, !dbg !611
  store float %84, float* %82, align 4, !dbg !611, !tbaa !403
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv.next1437, 1, !dbg !612
  %exitcond15 = icmp eq i64 %indvars.iv.next14, 3, !dbg !612
  br i1 %exitcond15, label %85, label %._crit_edge26, !dbg !612

; <label>:85                                      ; preds = %._crit_edge26
  tail call void @llvm.dbg.value(metadata [3 x float]* %L, i64 0, metadata !273, metadata !280) #6, !dbg !617
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !274, metadata !280) #6, !dbg !619
  %86 = bitcast [3 x float]* %L to i8*, !dbg !620
  tail call void @llvm.memset.p0i8.i64(i8* %86, i8 0, i64 36, i32 4, i1 false) #6, !dbg !621
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !236, metadata !280), !dbg !530
  br i1 %7, label %.lr.ph, label %._crit_edge, !dbg !622

.lr.ph:                                           ; preds = %85
  %87 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 0, !dbg !624
  %88 = getelementptr inbounds [3 x float]* %L, i64 0, i64 0, !dbg !627
  %89 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 1, !dbg !628
  %90 = getelementptr inbounds [3 x float]* %L, i64 0, i64 1, !dbg !629
  %91 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 2, !dbg !630
  %92 = getelementptr inbounds [3 x float]* %L, i64 0, i64 2, !dbg !631
  %93 = getelementptr inbounds [3 x float]* %L, i64 1, i64 1, !dbg !632
  %94 = getelementptr inbounds [3 x float]* %L, i64 1, i64 2, !dbg !633
  %95 = getelementptr inbounds [3 x float]* %L, i64 2, i64 2, !dbg !634
  %96 = add i32 %natoms, -1, !dbg !622
  br label %97, !dbg !622

; <label>:97                                      ; preds = %109, %.lr.ph
  %indvars.iv10 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next11, %109 ]
  %98 = phi <4 x float> [ zeroinitializer, %.lr.ph ], [ %137, %109 ]
  %99 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %120, %109 ]
  %100 = getelementptr inbounds float* %mass, i64 %indvars.iv10, !dbg !635
  %101 = load float* %100, align 4, !dbg !635, !tbaa !403
  tail call void @llvm.dbg.value(metadata float %101, i64 0, metadata !235, metadata !280), !dbg !541
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !237, metadata !280), !dbg !565
  br label %102, !dbg !636

; <label>:102                                     ; preds = %102, %97
  %indvars.iv = phi i64 [ 0, %97 ], [ %indvars.iv.next, %102 ]
  %103 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv10, i64 %indvars.iv, !dbg !638
  %104 = load float* %103, align 4, !dbg !638, !tbaa !403
  %105 = getelementptr inbounds float* %xcm, i64 %indvars.iv, !dbg !640
  %106 = load float* %105, align 4, !dbg !640, !tbaa !403
  %107 = fsub float %104, %106, !dbg !641
  %108 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 %indvars.iv, !dbg !642
  store float %107, float* %108, align 4, !dbg !643, !tbaa !403
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !636
  %exitcond = icmp eq i64 %indvars.iv.next, 3, !dbg !636
  br i1 %exitcond, label %109, label %102, !dbg !636

; <label>:109                                     ; preds = %102
  %110 = load float* %87, align 4, !dbg !624, !tbaa !403
  %111 = load float* %89, align 4, !dbg !628, !tbaa !403
  %112 = insertelement <2 x float> undef, float %110, i32 0, !dbg !644
  %113 = insertelement <2 x float> %112, float %110, i32 1, !dbg !644
  %114 = insertelement <2 x float> undef, float %111, i32 0, !dbg !644
  %115 = insertelement <2 x float> %114, float %110, i32 1, !dbg !644
  %116 = fmul <2 x float> %113, %115, !dbg !644
  %117 = insertelement <2 x float> undef, float %101, i32 0, !dbg !645
  %118 = insertelement <2 x float> %117, float %101, i32 1, !dbg !645
  %119 = fmul <2 x float> %116, %118, !dbg !645
  %120 = fadd <2 x float> %99, %119, !dbg !646
  %121 = extractelement <2 x float> %120, i32 1, !dbg !647
  store float %121, float* %88, align 4, !dbg !647, !tbaa !403
  %122 = extractelement <2 x float> %120, i32 0, !dbg !646
  store float %122, float* %90, align 4, !dbg !646, !tbaa !403
  %123 = load float* %91, align 4, !dbg !630, !tbaa !403
  %124 = insertelement <4 x float> undef, float %123, i32 0, !dbg !648
  %125 = insertelement <4 x float> %124, float %111, i32 1, !dbg !648
  %126 = insertelement <4 x float> %125, float %111, i32 2, !dbg !648
  %127 = insertelement <4 x float> %126, float %123, i32 3, !dbg !648
  %128 = insertelement <4 x float> %124, float %123, i32 1, !dbg !648
  %129 = insertelement <4 x float> %128, float %111, i32 2, !dbg !648
  %130 = insertelement <4 x float> %129, float %110, i32 3, !dbg !648
  %131 = fmul <4 x float> %127, %130, !dbg !648
  %132 = insertelement <4 x float> undef, float %101, i32 0, !dbg !649
  %133 = insertelement <4 x float> %132, float %101, i32 1, !dbg !649
  %134 = insertelement <4 x float> %133, float %101, i32 2, !dbg !649
  %135 = insertelement <4 x float> %134, float %101, i32 3, !dbg !649
  %136 = fmul <4 x float> %131, %135, !dbg !649
  %137 = fadd <4 x float> %98, %136, !dbg !650
  %138 = extractelement <4 x float> %137, i32 3, !dbg !651
  store float %138, float* %92, align 4, !dbg !651, !tbaa !403
  %139 = extractelement <4 x float> %137, i32 2, !dbg !652
  store float %139, float* %93, align 4, !dbg !652, !tbaa !403
  %140 = extractelement <4 x float> %137, i32 1, !dbg !653
  store float %140, float* %94, align 4, !dbg !653, !tbaa !403
  %141 = extractelement <4 x float> %137, i32 0, !dbg !650
  store float %141, float* %95, align 4, !dbg !650, !tbaa !403
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1, !dbg !622
  %lftr.wideiv = trunc i64 %indvars.iv10 to i32, !dbg !622
  %exitcond12 = icmp eq i32 %lftr.wideiv, %96, !dbg !622
  br i1 %exitcond12, label %._crit_edge, label %97, !dbg !622

._crit_edge:                                      ; preds = %109, %85
  ret float %tm.0.lcssa, !dbg !654
}

; Function Attrs: nounwind optsize ssp uwtable
define void @stop_cm(%struct.__sFILE* nocapture readnone %log, i32 %natoms, float* nocapture readonly %mass, [3 x float]* nocapture readonly %x, [3 x float]* nocapture %v) #4 {
  %xcm = alloca [3 x float], align 4
  %vcm = alloca [3 x float], align 4
  %acm = alloca [3 x float], align 4
  %L = alloca [3 x [3 x float]], align 16
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %log, i64 0, metadata !242, metadata !280), !dbg !655
  tail call void @llvm.dbg.value(metadata i32 %natoms, i64 0, metadata !243, metadata !280), !dbg !656
  tail call void @llvm.dbg.value(metadata float* %mass, i64 0, metadata !244, metadata !280), !dbg !657
  tail call void @llvm.dbg.value(metadata [3 x float]* %x, i64 0, metadata !245, metadata !280), !dbg !658
  tail call void @llvm.dbg.value(metadata [3 x float]* %v, i64 0, metadata !246, metadata !280), !dbg !659
  tail call void @llvm.dbg.declare(metadata [3 x float]* %xcm, metadata !247, metadata !280), !dbg !660
  tail call void @llvm.dbg.declare(metadata [3 x float]* %vcm, metadata !248, metadata !280), !dbg !661
  tail call void @llvm.dbg.declare(metadata [3 x float]* %acm, metadata !249, metadata !280), !dbg !662
  %1 = bitcast [3 x [3 x float]]* %L to i8*, !dbg !663
  call void @llvm.lifetime.start(i64 36, i8* %1) #6, !dbg !663
  tail call void @llvm.dbg.declare(metadata [3 x [3 x float]]* %L, metadata !250, metadata !280), !dbg !664
  %2 = getelementptr inbounds [3 x float]* %xcm, i64 0, i64 0, !dbg !665
  %3 = getelementptr inbounds [3 x float]* %vcm, i64 0, i64 0, !dbg !666
  %4 = getelementptr inbounds [3 x float]* %acm, i64 0, i64 0, !dbg !667
  %5 = getelementptr inbounds [3 x [3 x float]]* %L, i64 0, i64 0, !dbg !668
  %6 = call float @calc_cm(%struct.__sFILE* undef, i32 %natoms, float* %mass, [3 x float]* %x, [3 x float]* %v, float* %2, float* %3, float* %4, [3 x float]* %5) #9, !dbg !669
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !254, metadata !280), !dbg !670
  %7 = icmp sgt i32 %natoms, 0, !dbg !671
  br i1 %7, label %.preheader.lr.ph, label %._crit_edge, !dbg !674

.preheader.lr.ph:                                 ; preds = %0
  %8 = add i32 %natoms, -1, !dbg !674
  br label %.preheader, !dbg !674

.preheader:                                       ; preds = %15, %.preheader.lr.ph
  %indvars.iv3 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next4, %15 ]
  br label %9, !dbg !675

; <label>:9                                       ; preds = %9, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %9 ]
  %10 = getelementptr inbounds [3 x float]* %vcm, i64 0, i64 %indvars.iv, !dbg !677
  %11 = load float* %10, align 4, !dbg !677, !tbaa !403
  %12 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv3, i64 %indvars.iv, !dbg !679
  %13 = load float* %12, align 4, !dbg !680, !tbaa !403
  %14 = fsub float %13, %11, !dbg !680
  store float %14, float* %12, align 4, !dbg !680, !tbaa !403
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !675
  %exitcond = icmp eq i64 %indvars.iv.next, 3, !dbg !675
  br i1 %exitcond, label %15, label %9, !dbg !675

; <label>:15                                      ; preds = %9
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1, !dbg !674
  %lftr.wideiv = trunc i64 %indvars.iv3 to i32, !dbg !674
  %exitcond5 = icmp eq i32 %lftr.wideiv, %8, !dbg !674
  br i1 %exitcond5, label %._crit_edge, label %.preheader, !dbg !674

._crit_edge:                                      ; preds = %15, %0
  call void @llvm.lifetime.end(i64 36, i8* %1) #6, !dbg !681
  ret void, !dbg !681
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #6

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #6

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

declare float @sqrtf(float)

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!276, !277, !278}
!llvm.ident = !{!279}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !5, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/random.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!5 = !{!6, !75, !81, !95, !192, !207, !218, !238, !256, !262, !269}
!6 = !DISubprogram(name: "__sputc", scope: !7, file: !7, line: 348, type: !8, isLocal: false, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, %struct.__sFILE*)* @__sputc, variables: !72)
!7 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !11}
!10 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !7, line: 153, baseType: !13)
!13 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !7, line: 122, size: 1216, align: 64, elements: !14)
!14 = !{!15, !18, !19, !20, !22, !23, !28, !29, !31, !35, !40, !50, !56, !57, !60, !61, !65, !69, !70, !71}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !13, file: !7, line: 123, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !13, file: !7, line: 124, baseType: !10, size: 32, align: 32, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !13, file: !7, line: 125, baseType: !10, size: 32, align: 32, offset: 96)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !13, file: !7, line: 126, baseType: !21, size: 16, align: 16, offset: 128)
!21 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !13, file: !7, line: 127, baseType: !21, size: 16, align: 16, offset: 144)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !13, file: !7, line: 128, baseType: !24, size: 128, align: 64, offset: 192)
!24 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !7, line: 88, size: 128, align: 64, elements: !25)
!25 = !{!26, !27}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !24, file: !7, line: 89, baseType: !16, size: 64, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !24, file: !7, line: 90, baseType: !10, size: 32, align: 32, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !13, file: !7, line: 129, baseType: !10, size: 32, align: 32, offset: 320)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !13, file: !7, line: 132, baseType: !30, size: 64, align: 64, offset: 384)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !13, file: !7, line: 133, baseType: !32, size: 64, align: 64, offset: 448)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = !DISubroutineType(types: !34)
!34 = !{!10, !30}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !13, file: !7, line: 134, baseType: !36, size: 64, align: 64, offset: 512)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DISubroutineType(types: !38)
!38 = !{!10, !30, !39, !10}
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !13, file: !7, line: 135, baseType: !41, size: 64, align: 64, offset: 576)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DISubroutineType(types: !43)
!43 = !{!44, !30, !44, !10}
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !7, line: 77, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !46, line: 71, baseType: !47)
!46 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !48, line: 46, baseType: !49)
!48 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!49 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !13, file: !7, line: 136, baseType: !51, size: 64, align: 64, offset: 640)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DISubroutineType(types: !53)
!53 = !{!10, !30, !54, !10}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !13, file: !7, line: 139, baseType: !24, size: 128, align: 64, offset: 704)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !13, file: !7, line: 140, baseType: !58, size: 64, align: 64, offset: 832)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !7, line: 94, flags: DIFlagFwdDecl)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !13, file: !7, line: 141, baseType: !10, size: 32, align: 32, offset: 896)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !13, file: !7, line: 144, baseType: !62, size: 24, align: 8, offset: 928)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 24, align: 8, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 3)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !13, file: !7, line: 145, baseType: !66, size: 8, align: 8, offset: 952)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 8, align: 8, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 1)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !13, file: !7, line: 148, baseType: !24, size: 128, align: 64, offset: 960)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !13, file: !7, line: 151, baseType: !10, size: 32, align: 32, offset: 1088)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !13, file: !7, line: 152, baseType: !44, size: 64, align: 64, offset: 1152)
!72 = !{!73, !74}
!73 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !6, file: !7, line: 348, type: !10)
!74 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_p", arg: 2, scope: !6, file: !7, line: 348, type: !11)
!75 = !DISubprogram(name: "__sigbits", scope: !76, file: !76, line: 114, type: !77, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @__sigbits, variables: !79)
!76 = !DIFile(filename: "/usr/include/signal.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!77 = !DISubroutineType(types: !78)
!78 = !{!10, !10}
!79 = !{!80}
!80 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__signo", arg: 1, scope: !75, file: !76, line: 114, type: !10)
!81 = !DISubprogram(name: "gauss", scope: !1, file: !1, line: 41, type: !82, isLocal: false, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: true, function: float (float, float, i32*)* @gauss, variables: !88)
!82 = !DISubroutineType(types: !83)
!83 = !{!84, !84, !84, !87}
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "real", file: !85, line: 87, baseType: !86)
!85 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/simple.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!86 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!88 = !{!89, !90, !91, !92, !93, !94}
!89 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "am", arg: 1, scope: !81, file: !1, line: 41, type: !84)
!90 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sd", arg: 2, scope: !81, file: !1, line: 41, type: !84)
!91 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ig", arg: 3, scope: !81, file: !1, line: 41, type: !87)
!92 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a", scope: !81, file: !1, line: 51, type: !84)
!93 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !81, file: !1, line: 52, type: !10)
!94 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gval", scope: !81, file: !1, line: 58, type: !84)
!95 = !DISubprogram(name: "low_mspeed", scope: !1, file: !1, line: 84, type: !96, isLocal: false, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, function: void (float, i32, i32, i32, i32*, %struct.t_atoms*, [3 x float]*)* @low_mspeed, variables: !174)
!96 = !DISubroutineType(types: !97)
!97 = !{null, !84, !10, !10, !10, !98, !100, !171}
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64, align: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "atom_id", file: !85, line: 73, baseType: !10)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64, align: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_atoms", file: !102, line: 94, baseType: !103)
!102 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/atoms.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!103 = !DICompositeType(tag: DW_TAG_structure_type, file: !102, line: 75, size: 10240, align: 64, elements: !104)
!104 = !{!105, !106, !125, !128, !129, !130, !131, !132, !133, !134, !147, !154}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !103, file: !102, line: 76, baseType: !10, size: 32, align: 32)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "atom", scope: !103, file: !102, line: 77, baseType: !107, size: 64, align: 64, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64, align: 64)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_atom", file: !102, line: 57, baseType: !109)
!109 = !DICompositeType(tag: DW_TAG_structure_type, file: !102, line: 48, size: 320, align: 32, elements: !110)
!110 = !{!111, !112, !113, !114, !115, !117, !118, !119, !120, !124}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !109, file: !102, line: 49, baseType: !84, size: 32, align: 32)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "q", scope: !109, file: !102, line: 49, baseType: !84, size: 32, align: 32, offset: 32)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "mB", scope: !109, file: !102, line: 50, baseType: !84, size: 32, align: 32, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "qB", scope: !109, file: !102, line: 50, baseType: !84, size: 32, align: 32, offset: 96)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !109, file: !102, line: 51, baseType: !116, size: 16, align: 16, offset: 128)
!116 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "typeB", scope: !109, file: !102, line: 52, baseType: !116, size: 16, align: 16, offset: 144)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "ptype", scope: !109, file: !102, line: 53, baseType: !10, size: 32, align: 32, offset: 160)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "resnr", scope: !109, file: !102, line: 54, baseType: !10, size: 32, align: 32, offset: 192)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "grpnr", scope: !109, file: !102, line: 55, baseType: !121, size: 72, align: 8, offset: 224)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 72, align: 8, elements: !122)
!122 = !{!123}
!123 = !DISubrange(count: 9)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !109, file: !102, line: 56, baseType: !17, size: 8, align: 8, offset: 296)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "atomname", scope: !103, file: !102, line: 80, baseType: !126, size: 64, align: 64, offset: 128)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64, align: 64)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "atomtype", scope: !103, file: !102, line: 82, baseType: !126, size: 64, align: 64, offset: 192)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "atomtypeB", scope: !103, file: !102, line: 84, baseType: !126, size: 64, align: 64, offset: 256)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "nres", scope: !103, file: !102, line: 86, baseType: !10, size: 32, align: 32, offset: 320)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "resname", scope: !103, file: !102, line: 87, baseType: !126, size: 64, align: 64, offset: 384)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "ngrpname", scope: !103, file: !102, line: 89, baseType: !10, size: 32, align: 32, offset: 448)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "grpname", scope: !103, file: !102, line: 90, baseType: !126, size: 64, align: 64, offset: 512)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "excl", scope: !103, file: !102, line: 91, baseType: !135, size: 8448, align: 64, offset: 576)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_block", file: !136, line: 52, baseType: !137)
!136 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/block.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!137 = !DICompositeType(tag: DW_TAG_structure_type, file: !136, line: 36, size: 8448, align: 64, elements: !138)
!138 = !{!139, !143, !144, !145, !146}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "multinr", scope: !137, file: !136, line: 37, baseType: !140, size: 8192, align: 32)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 8192, align: 32, elements: !141)
!141 = !{!142}
!142 = !DISubrange(count: 256)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !137, file: !136, line: 43, baseType: !10, size: 32, align: 32, offset: 8192)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !137, file: !136, line: 44, baseType: !98, size: 64, align: 64, offset: 8256)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "nra", scope: !137, file: !136, line: 45, baseType: !10, size: 32, align: 32, offset: 8320)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !137, file: !136, line: 46, baseType: !98, size: 64, align: 64, offset: 8384)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "grps", scope: !103, file: !102, line: 92, baseType: !148, size: 1152, align: 64, offset: 9024)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 1152, align: 64, elements: !122)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_grps", file: !102, line: 73, baseType: !150)
!150 = !DICompositeType(tag: DW_TAG_structure_type, file: !102, line: 70, size: 128, align: 64, elements: !151)
!151 = !{!152, !153}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !150, file: !102, line: 71, baseType: !10, size: 32, align: 32)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nm_ind", scope: !150, file: !102, line: 72, baseType: !87, size: 64, align: 64, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "pdbinfo", scope: !103, file: !102, line: 93, baseType: !155, size: 64, align: 64, offset: 10176)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64, align: 64)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_pdbinfo", file: !102, line: 68, baseType: !157)
!157 = !DICompositeType(tag: DW_TAG_structure_type, file: !102, line: 59, size: 416, align: 32, elements: !158)
!158 = !{!159, !160, !161, !162, !166, !167, !168, !169}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !157, file: !102, line: 60, baseType: !10, size: 32, align: 32)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "atomnr", scope: !157, file: !102, line: 61, baseType: !10, size: 32, align: 32, offset: 32)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "altloc", scope: !157, file: !102, line: 62, baseType: !4, size: 8, align: 8, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "pdbresnr", scope: !157, file: !102, line: 63, baseType: !163, size: 48, align: 8, offset: 72)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, align: 8, elements: !164)
!164 = !{!165}
!165 = !DISubrange(count: 6)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "occup", scope: !157, file: !102, line: 64, baseType: !84, size: 32, align: 32, offset: 128)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "bfac", scope: !157, file: !102, line: 65, baseType: !84, size: 32, align: 32, offset: 160)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "bAnisotropic", scope: !157, file: !102, line: 66, baseType: !10, size: 32, align: 32, offset: 192)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "uij", scope: !157, file: !102, line: 67, baseType: !170, size: 192, align: 32, offset: 224)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 192, align: 32, elements: !164)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64, align: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "rvec", file: !85, line: 101, baseType: !173)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 96, align: 32, elements: !63)
!174 = !{!175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191}
!175 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tempi", arg: 1, scope: !95, file: !1, line: 84, type: !84)
!176 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nrdf", arg: 2, scope: !95, file: !1, line: 84, type: !10)
!177 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "seed", arg: 3, scope: !95, file: !1, line: 84, type: !10)
!178 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nat", arg: 4, scope: !95, file: !1, line: 84, type: !10)
!179 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 5, scope: !95, file: !1, line: 84, type: !98)
!180 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "atoms", arg: 6, scope: !95, file: !1, line: 85, type: !100)
!181 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 7, scope: !95, file: !1, line: 85, type: !171)
!182 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !95, file: !1, line: 87, type: !10)
!183 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !95, file: !1, line: 87, type: !10)
!184 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !95, file: !1, line: 87, type: !10)
!185 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ig", scope: !95, file: !1, line: 87, type: !10)
!186 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "boltz", scope: !95, file: !1, line: 88, type: !84)
!187 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sd", scope: !95, file: !1, line: 88, type: !84)
!188 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ekin", scope: !95, file: !1, line: 89, type: !84)
!189 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "temp", scope: !95, file: !1, line: 89, type: !84)
!190 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mass", scope: !95, file: !1, line: 89, type: !84)
!191 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "scal", scope: !95, file: !1, line: 89, type: !84)
!192 = !DISubprogram(name: "grp_maxwell", scope: !1, file: !1, line: 122, type: !193, isLocal: false, isDefinition: true, scopeLine: 124, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.t_block*, float*, i32*, i32, %struct.t_atoms*, [3 x float]*)* @grp_maxwell, variables: !197)
!193 = !DISubroutineType(types: !194)
!194 = !{null, !195, !196, !87, !10, !100, !171}
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64, align: 64)
!197 = !{!198, !199, !200, !201, !202, !203, !204, !205, !206}
!198 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "grp", arg: 1, scope: !192, file: !1, line: 122, type: !195)
!199 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tempi", arg: 2, scope: !192, file: !1, line: 122, type: !196)
!200 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nrdf", arg: 3, scope: !192, file: !1, line: 122, type: !87)
!201 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "seed", arg: 4, scope: !192, file: !1, line: 122, type: !10)
!202 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "atoms", arg: 5, scope: !192, file: !1, line: 123, type: !100)
!203 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 6, scope: !192, file: !1, line: 123, type: !171)
!204 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !192, file: !1, line: 125, type: !10)
!205 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "s", scope: !192, file: !1, line: 125, type: !10)
!206 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !192, file: !1, line: 125, type: !10)
!207 = !DISubprogram(name: "maxwell_speed", scope: !1, file: !1, line: 134, type: !208, isLocal: false, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: true, function: void (float, i32, i32, %struct.t_atoms*, [3 x float]*)* @maxwell_speed, variables: !210)
!208 = !DISubroutineType(types: !209)
!209 = !{null, !84, !10, !10, !100, !171}
!210 = !{!211, !212, !213, !214, !215, !216, !217}
!211 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "tempi", arg: 1, scope: !207, file: !1, line: 134, type: !84)
!212 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nrdf", arg: 2, scope: !207, file: !1, line: 134, type: !10)
!213 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "seed", arg: 3, scope: !207, file: !1, line: 134, type: !10)
!214 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "atoms", arg: 4, scope: !207, file: !1, line: 134, type: !100)
!215 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 5, scope: !207, file: !1, line: 134, type: !171)
!216 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dummy", scope: !207, file: !1, line: 136, type: !98)
!217 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !207, file: !1, line: 137, type: !10)
!218 = !DISubprogram(name: "calc_cm", scope: !1, file: !1, line: 150, type: !219, isLocal: false, isDefinition: true, scopeLine: 152, flags: DIFlagPrototyped, isOptimized: true, function: float (%struct.__sFILE*, i32, float*, [3 x float]*, [3 x float]*, float*, float*, float*, [3 x float]*)* @calc_cm, variables: !222)
!219 = !DISubroutineType(types: !220)
!220 = !{!84, !11, !10, !196, !171, !171, !196, !196, !196, !221}
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64, align: 64)
!222 = !{!223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237}
!223 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "log", arg: 1, scope: !218, file: !1, line: 150, type: !11)
!224 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "natoms", arg: 2, scope: !218, file: !1, line: 150, type: !10)
!225 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mass", arg: 3, scope: !218, file: !1, line: 150, type: !196)
!226 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 4, scope: !218, file: !1, line: 150, type: !171)
!227 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 5, scope: !218, file: !1, line: 150, type: !171)
!228 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xcm", arg: 6, scope: !218, file: !1, line: 151, type: !196)
!229 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "vcm", arg: 7, scope: !218, file: !1, line: 151, type: !196)
!230 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "acm", arg: 8, scope: !218, file: !1, line: 151, type: !196)
!231 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "L", arg: 9, scope: !218, file: !1, line: 151, type: !221)
!232 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dx", scope: !218, file: !1, line: 153, type: !172)
!233 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "a0", scope: !218, file: !1, line: 153, type: !172)
!234 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tm", scope: !218, file: !1, line: 154, type: !84)
!235 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m0", scope: !218, file: !1, line: 154, type: !84)
!236 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !218, file: !1, line: 155, type: !10)
!237 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !218, file: !1, line: 155, type: !10)
!238 = !DISubprogram(name: "stop_cm", scope: !1, file: !1, line: 208, type: !239, isLocal: false, isDefinition: true, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, i32, float*, [3 x float]*, [3 x float]*)* @stop_cm, variables: !241)
!239 = !DISubroutineType(types: !240)
!240 = !{null, !11, !10, !196, !171, !171}
!241 = !{!242, !243, !244, !245, !246, !247, !248, !249, !250, !254, !255}
!242 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "log", arg: 1, scope: !238, file: !1, line: 208, type: !11)
!243 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "natoms", arg: 2, scope: !238, file: !1, line: 208, type: !10)
!244 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mass", arg: 3, scope: !238, file: !1, line: 208, type: !196)
!245 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 4, scope: !238, file: !1, line: 208, type: !171)
!246 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 5, scope: !238, file: !1, line: 208, type: !171)
!247 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xcm", scope: !238, file: !1, line: 210, type: !172)
!248 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vcm", scope: !238, file: !1, line: 210, type: !172)
!249 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "acm", scope: !238, file: !1, line: 210, type: !172)
!250 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "L", scope: !238, file: !1, line: 211, type: !251)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "tensor", file: !85, line: 105, baseType: !252)
!252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 288, align: 32, elements: !253)
!253 = !{!64, !64}
!254 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !238, file: !1, line: 212, type: !10)
!255 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !238, file: !1, line: 212, type: !10)
!256 = !DISubprogram(name: "clear_rvec", scope: !257, file: !257, line: 316, type: !258, isLocal: true, isDefinition: true, scopeLine: 317, flags: DIFlagPrototyped, isOptimized: true, variables: !260)
!257 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/vec.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!258 = !DISubroutineType(types: !259)
!259 = !{null, !196}
!260 = !{!261}
!261 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !256, file: !257, line: 316, type: !196)
!262 = !DISubprogram(name: "oprod", scope: !257, file: !257, line: 417, type: !263, isLocal: true, isDefinition: true, scopeLine: 418, flags: DIFlagPrototyped, isOptimized: true, variables: !265)
!263 = !DISubroutineType(types: !264)
!264 = !{null, !196, !196, !196}
!265 = !{!266, !267, !268}
!266 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !262, file: !257, line: 417, type: !196)
!267 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !262, file: !257, line: 417, type: !196)
!268 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 3, scope: !262, file: !257, line: 417, type: !196)
!269 = !DISubprogram(name: "clear_mat", scope: !257, file: !257, line: 334, type: !270, isLocal: true, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, variables: !272)
!270 = !DISubroutineType(types: !271)
!271 = !{null, !221}
!272 = !{!273, !274}
!273 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !269, file: !257, line: 334, type: !221)
!274 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nul", scope: !269, file: !257, line: 336, type: !275)
!275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!276 = !{i32 2, !"Dwarf Version", i32 2}
!277 = !{i32 2, !"Debug Info Version", i32 700000003}
!278 = !{i32 1, !"PIC Level", i32 2}
!279 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!280 = !DIExpression()
!281 = !DILocation(line: 348, column: 40, scope: !6)
!282 = !DILocation(line: 348, column: 50, scope: !6)
!283 = !DILocation(line: 349, column: 12, scope: !284)
!284 = distinct !DILexicalBlock(scope: !6, file: !7, line: 349, column: 6)
!285 = !DILocation(line: 349, column: 6, scope: !284)
!286 = !{!287, !291, i64 12}
!287 = !{!"__sFILE", !288, i64 0, !291, i64 8, !291, i64 12, !292, i64 16, !292, i64 18, !293, i64 24, !291, i64 40, !288, i64 48, !288, i64 56, !288, i64 64, !288, i64 72, !288, i64 80, !293, i64 88, !288, i64 104, !291, i64 112, !289, i64 116, !289, i64 119, !293, i64 120, !291, i64 136, !294, i64 144}
!288 = !{!"any pointer", !289, i64 0}
!289 = !{!"omnipotent char", !290, i64 0}
!290 = !{!"Simple C/C++ TBAA"}
!291 = !{!"int", !289, i64 0}
!292 = !{!"short", !289, i64 0}
!293 = !{!"__sbuf", !288, i64 0, !291, i64 8}
!294 = !{!"long long", !289, i64 0}
!295 = !DILocation(line: 349, column: 15, scope: !284)
!296 = !DILocation(line: 349, column: 20, scope: !284)
!297 = !DILocation(line: 350, column: 10, scope: !284)
!298 = !DILocation(line: 349, column: 38, scope: !284)
!299 = !{!287, !291, i64 40}
!300 = !DILocation(line: 349, column: 31, scope: !284)
!301 = !DILocation(line: 349, column: 59, scope: !284)
!302 = !DILocation(line: 349, column: 47, scope: !284)
!303 = !DILocation(line: 350, column: 23, scope: !284)
!304 = !DILocation(line: 350, column: 16, scope: !284)
!305 = !DILocation(line: 350, column: 18, scope: !284)
!306 = !{!287, !288, i64 0}
!307 = !DILocation(line: 350, column: 21, scope: !284)
!308 = !{!289, !289, i64 0}
!309 = !DILocation(line: 350, column: 3, scope: !284)
!310 = !DILocation(line: 352, column: 11, scope: !284)
!311 = !DILocation(line: 352, column: 3, scope: !284)
!312 = !DILocation(line: 353, column: 1, scope: !6)
!313 = !DILocation(line: 114, column: 15, scope: !75)
!314 = !DILocation(line: 116, column: 20, scope: !75)
!315 = !DILocation(line: 116, column: 12, scope: !75)
!316 = !DILocation(line: 116, column: 57, scope: !75)
!317 = !DILocation(line: 116, column: 45, scope: !75)
!318 = !DILocation(line: 116, column: 5, scope: !75)
!319 = !DILocation(line: 41, column: 18, scope: !81)
!320 = !DILocation(line: 41, column: 27, scope: !81)
!321 = !DILocation(line: 41, column: 36, scope: !81)
!322 = !DILocation(line: 51, column: 8, scope: !81)
!323 = !DILocation(line: 52, column: 8, scope: !81)
!324 = !DILocation(line: 62, column: 3, scope: !325)
!325 = distinct !DILexicalBlock(scope: !81, file: !1, line: 62, column: 3)
!326 = !DILocation(line: 63, column: 13, scope: !327)
!327 = distinct !DILexicalBlock(scope: !325, file: !1, line: 62, column: 3)
!328 = !DILocation(line: 63, column: 11, scope: !327)
!329 = !DILocation(line: 62, column: 22, scope: !327)
!330 = !DILocation(line: 64, column: 11, scope: !81)
!331 = !DILocation(line: 64, column: 12, scope: !81)
!332 = !DILocation(line: 64, column: 18, scope: !81)
!333 = !DILocation(line: 64, column: 17, scope: !81)
!334 = !DILocation(line: 64, column: 21, scope: !81)
!335 = !DILocation(line: 64, column: 20, scope: !81)
!336 = !DILocation(line: 64, column: 10, scope: !81)
!337 = !DILocation(line: 58, column: 8, scope: !81)
!338 = !DILocation(line: 81, column: 3, scope: !81)
!339 = !DILocation(line: 84, column: 22, scope: !95)
!340 = !DILocation(line: 84, column: 32, scope: !95)
!341 = !DILocation(line: 84, column: 41, scope: !95)
!342 = !DILocation(line: 84, column: 50, scope: !95)
!343 = !DILocation(line: 84, column: 62, scope: !95)
!344 = !DILocation(line: 85, column: 12, scope: !95)
!345 = !DILocation(line: 85, column: 23, scope: !95)
!346 = !DILocation(line: 87, column: 14, scope: !95)
!347 = !DILocation(line: 91, column: 5, scope: !95)
!348 = !{!291, !291, i64 0}
!349 = !DILocation(line: 92, column: 15, scope: !95)
!350 = !DILocation(line: 92, column: 14, scope: !95)
!351 = !DILocation(line: 92, column: 9, scope: !95)
!352 = !DILocation(line: 88, column: 8, scope: !95)
!353 = !DILocation(line: 89, column: 8, scope: !95)
!354 = !DILocation(line: 87, column: 8, scope: !95)
!355 = !DILocation(line: 94, column: 15, scope: !356)
!356 = distinct !DILexicalBlock(scope: !357, file: !1, line: 94, column: 3)
!357 = distinct !DILexicalBlock(scope: !95, file: !1, line: 94, column: 3)
!358 = !DILocation(line: 94, column: 3, scope: !357)
!359 = !DILocation(line: 96, column: 17, scope: !360)
!360 = distinct !DILexicalBlock(scope: !356, file: !1, line: 94, column: 27)
!361 = !DILocation(line: 95, column: 7, scope: !360)
!362 = !DILocation(line: 87, column: 10, scope: !95)
!363 = !DILocation(line: 96, column: 10, scope: !360)
!364 = !{!365, !288, i64 8}
!365 = !{!"", !291, i64 0, !288, i64 8, !288, i64 16, !288, i64 24, !288, i64 32, !291, i64 40, !288, i64 48, !291, i64 56, !288, i64 64, !366, i64 72, !289, i64 1128, !288, i64 1272}
!366 = !{!"", !289, i64 0, !291, i64 1024, !288, i64 1032, !291, i64 1040, !288, i64 1048}
!367 = !DILocation(line: 96, column: 25, scope: !360)
!368 = !{!369, !370, i64 0}
!369 = !{!"", !370, i64 0, !370, i64 4, !370, i64 8, !370, i64 12, !292, i64 16, !292, i64 18, !291, i64 20, !291, i64 24, !289, i64 28, !289, i64 37}
!370 = !{!"float", !289, i64 0}
!371 = !DILocation(line: 89, column: 18, scope: !95)
!372 = !DILocation(line: 97, column: 14, scope: !373)
!373 = distinct !DILexicalBlock(scope: !360, file: !1, line: 97, column: 9)
!374 = !DILocation(line: 97, column: 9, scope: !360)
!375 = !DILocation(line: 98, column: 20, scope: !376)
!376 = distinct !DILexicalBlock(scope: !373, file: !1, line: 97, column: 19)
!377 = !DILocation(line: 98, column: 10, scope: !376)
!378 = !DILocation(line: 88, column: 14, scope: !95)
!379 = !DILocation(line: 87, column: 12, scope: !95)
!380 = !DILocation(line: 64, column: 18, scope: !81, inlinedAt: !381)
!381 = distinct !DILocation(line: 100, column: 10, scope: !382)
!382 = distinct !DILexicalBlock(scope: !383, file: !1, line: 99, column: 31)
!383 = distinct !DILexicalBlock(scope: !384, file: !1, line: 99, column: 7)
!384 = distinct !DILexicalBlock(scope: !376, file: !1, line: 99, column: 7)
!385 = !DILocation(line: 101, column: 12, scope: !382)
!386 = !DILocation(line: 101, column: 11, scope: !382)
!387 = !DILocation(line: 99, column: 7, scope: !384)
!388 = !DILocation(line: 63, column: 13, scope: !327, inlinedAt: !381)
!389 = !DILocation(line: 100, column: 10, scope: !382)
!390 = !DILocation(line: 63, column: 11, scope: !327, inlinedAt: !381)
!391 = !DILocation(line: 51, column: 8, scope: !81, inlinedAt: !381)
!392 = !DILocation(line: 62, column: 22, scope: !327, inlinedAt: !381)
!393 = !DILocation(line: 52, column: 8, scope: !81, inlinedAt: !381)
!394 = !DILocation(line: 62, column: 3, scope: !325, inlinedAt: !381)
!395 = !DILocation(line: 64, column: 11, scope: !81, inlinedAt: !381)
!396 = !DILocation(line: 64, column: 12, scope: !81, inlinedAt: !381)
!397 = !DILocation(line: 64, column: 17, scope: !81, inlinedAt: !381)
!398 = !DILocation(line: 64, column: 20, scope: !81, inlinedAt: !381)
!399 = !DILocation(line: 64, column: 10, scope: !81, inlinedAt: !381)
!400 = !DILocation(line: 58, column: 8, scope: !81, inlinedAt: !381)
!401 = !DILocation(line: 100, column: 2, scope: !382)
!402 = !DILocation(line: 100, column: 9, scope: !382)
!403 = !{!370, !370, i64 0}
!404 = !DILocation(line: 101, column: 17, scope: !382)
!405 = !DILocation(line: 101, column: 16, scope: !382)
!406 = !DILocation(line: 101, column: 24, scope: !382)
!407 = !DILocation(line: 101, column: 6, scope: !382)
!408 = !DILocation(line: 105, column: 13, scope: !95)
!409 = !DILocation(line: 105, column: 12, scope: !95)
!410 = !DILocation(line: 105, column: 20, scope: !95)
!411 = !DILocation(line: 105, column: 24, scope: !95)
!412 = !DILocation(line: 105, column: 18, scope: !95)
!413 = !DILocation(line: 105, column: 8, scope: !95)
!414 = !DILocation(line: 89, column: 13, scope: !95)
!415 = !DILocation(line: 106, column: 12, scope: !416)
!416 = distinct !DILexicalBlock(scope: !95, file: !1, line: 106, column: 7)
!417 = !DILocation(line: 106, column: 7, scope: !95)
!418 = !DILocation(line: 107, column: 20, scope: !419)
!419 = distinct !DILexicalBlock(scope: !416, file: !1, line: 106, column: 17)
!420 = !DILocation(line: 107, column: 10, scope: !419)
!421 = !DILocation(line: 89, column: 23, scope: !95)
!422 = !DILocation(line: 108, column: 5, scope: !423)
!423 = distinct !DILexicalBlock(scope: !419, file: !1, line: 108, column: 5)
!424 = !DILocation(line: 110, column: 4, scope: !425)
!425 = distinct !DILexicalBlock(scope: !426, file: !1, line: 109, column: 7)
!426 = distinct !DILexicalBlock(scope: !427, file: !1, line: 109, column: 7)
!427 = distinct !DILexicalBlock(scope: !423, file: !1, line: 108, column: 5)
!428 = !DILocation(line: 110, column: 2, scope: !425)
!429 = !DILocation(line: 109, column: 7, scope: !426)
!430 = !DILocation(line: 110, column: 12, scope: !425)
!431 = !DILocation(line: 112, column: 11, scope: !95)
!432 = !{!288, !288, i64 0}
!433 = !DILocation(line: 112, column: 3, scope: !95)
!434 = !DILocation(line: 114, column: 7, scope: !435)
!435 = distinct !DILexicalBlock(scope: !95, file: !1, line: 114, column: 7)
!436 = !DILocation(line: 114, column: 7, scope: !95)
!437 = !DILocation(line: 118, column: 6, scope: !438)
!438 = distinct !DILexicalBlock(scope: !435, file: !1, line: 114, column: 14)
!439 = !DILocation(line: 115, column: 5, scope: !438)
!440 = !DILocation(line: 119, column: 3, scope: !438)
!441 = !DILocation(line: 120, column: 1, scope: !95)
!442 = !DILocation(line: 122, column: 27, scope: !192)
!443 = !DILocation(line: 122, column: 36, scope: !192)
!444 = !DILocation(line: 122, column: 48, scope: !192)
!445 = !DILocation(line: 122, column: 59, scope: !192)
!446 = !DILocation(line: 123, column: 13, scope: !192)
!447 = !DILocation(line: 123, column: 24, scope: !192)
!448 = !DILocation(line: 125, column: 7, scope: !192)
!449 = !DILocation(line: 127, column: 20, scope: !450)
!450 = distinct !DILexicalBlock(scope: !451, file: !1, line: 127, column: 3)
!451 = distinct !DILexicalBlock(scope: !192, file: !1, line: 127, column: 3)
!452 = !{!366, !291, i64 1024}
!453 = !DILocation(line: 127, column: 14, scope: !450)
!454 = !DILocation(line: 127, column: 3, scope: !451)
!455 = !DILocation(line: 128, column: 12, scope: !456)
!456 = distinct !DILexicalBlock(scope: !450, file: !1, line: 127, column: 30)
!457 = !DILocation(line: 130, column: 47, scope: !456)
!458 = !{!366, !288, i64 1032}
!459 = !DILocation(line: 128, column: 7, scope: !456)
!460 = !DILocation(line: 125, column: 9, scope: !192)
!461 = !DILocation(line: 129, column: 7, scope: !456)
!462 = !DILocation(line: 129, column: 22, scope: !456)
!463 = !DILocation(line: 125, column: 11, scope: !192)
!464 = !DILocation(line: 130, column: 16, scope: !456)
!465 = !DILocation(line: 130, column: 25, scope: !456)
!466 = !DILocation(line: 130, column: 42, scope: !456)
!467 = !{!366, !288, i64 1048}
!468 = !DILocation(line: 130, column: 5, scope: !456)
!469 = !DILocation(line: 132, column: 1, scope: !192)
!470 = !DILocation(line: 134, column: 25, scope: !207)
!471 = !DILocation(line: 134, column: 35, scope: !207)
!472 = !DILocation(line: 134, column: 44, scope: !207)
!473 = !DILocation(line: 134, column: 58, scope: !207)
!474 = !DILocation(line: 134, column: 70, scope: !207)
!475 = !DILocation(line: 139, column: 12, scope: !476)
!476 = distinct !DILexicalBlock(scope: !207, file: !1, line: 139, column: 7)
!477 = !DILocation(line: 139, column: 7, scope: !207)
!478 = !DILocation(line: 140, column: 12, scope: !479)
!479 = distinct !DILexicalBlock(scope: !476, file: !1, line: 139, column: 19)
!480 = !DILocation(line: 141, column: 13, scope: !479)
!481 = !DILocation(line: 141, column: 5, scope: !479)
!482 = !DILocation(line: 142, column: 3, scope: !479)
!483 = !DILocation(line: 143, column: 3, scope: !207)
!484 = !{!365, !291, i64 0}
!485 = !DILocation(line: 136, column: 12, scope: !207)
!486 = !DILocation(line: 137, column: 11, scope: !207)
!487 = !DILocation(line: 144, column: 22, scope: !488)
!488 = distinct !DILexicalBlock(scope: !489, file: !1, line: 144, column: 3)
!489 = distinct !DILexicalBlock(scope: !207, file: !1, line: 144, column: 3)
!490 = !DILocation(line: 144, column: 14, scope: !488)
!491 = !DILocation(line: 144, column: 3, scope: !489)
!492 = !DILocation(line: 145, column: 5, scope: !488)
!493 = !DILocation(line: 145, column: 13, scope: !488)
!494 = !DILocation(line: 146, column: 3, scope: !207)
!495 = !DILocation(line: 147, column: 3, scope: !207)
!496 = !DILocation(line: 148, column: 1, scope: !207)
!497 = !DILocation(line: 150, column: 20, scope: !218)
!498 = !DILocation(line: 150, column: 28, scope: !218)
!499 = !DILocation(line: 150, column: 40, scope: !218)
!500 = !DILocation(line: 150, column: 52, scope: !218)
!501 = !DILocation(line: 150, column: 61, scope: !218)
!502 = !DILocation(line: 151, column: 12, scope: !218)
!503 = !DILocation(line: 151, column: 21, scope: !218)
!504 = !DILocation(line: 151, column: 30, scope: !218)
!505 = !DILocation(line: 151, column: 41, scope: !218)
!506 = !DILocation(line: 153, column: 8, scope: !218)
!507 = !DILocation(line: 153, column: 11, scope: !218)
!508 = !DILocation(line: 316, column: 36, scope: !256, inlinedAt: !509)
!509 = distinct !DILocation(line: 157, column: 3, scope: !218)
!510 = !DILocation(line: 321, column: 8, scope: !256, inlinedAt: !509)
!511 = !DILocation(line: 322, column: 3, scope: !256, inlinedAt: !509)
!512 = !DILocation(line: 322, column: 8, scope: !256, inlinedAt: !509)
!513 = !DILocation(line: 323, column: 3, scope: !256, inlinedAt: !509)
!514 = !DILocation(line: 323, column: 8, scope: !256, inlinedAt: !509)
!515 = !DILocation(line: 316, column: 36, scope: !256, inlinedAt: !516)
!516 = distinct !DILocation(line: 158, column: 3, scope: !218)
!517 = !DILocation(line: 321, column: 8, scope: !256, inlinedAt: !516)
!518 = !DILocation(line: 322, column: 3, scope: !256, inlinedAt: !516)
!519 = !DILocation(line: 322, column: 8, scope: !256, inlinedAt: !516)
!520 = !DILocation(line: 323, column: 3, scope: !256, inlinedAt: !516)
!521 = !DILocation(line: 323, column: 8, scope: !256, inlinedAt: !516)
!522 = !DILocation(line: 316, column: 36, scope: !256, inlinedAt: !523)
!523 = distinct !DILocation(line: 159, column: 3, scope: !218)
!524 = !DILocation(line: 321, column: 8, scope: !256, inlinedAt: !523)
!525 = !DILocation(line: 322, column: 3, scope: !256, inlinedAt: !523)
!526 = !DILocation(line: 322, column: 8, scope: !256, inlinedAt: !523)
!527 = !DILocation(line: 323, column: 3, scope: !256, inlinedAt: !523)
!528 = !DILocation(line: 323, column: 8, scope: !256, inlinedAt: !523)
!529 = !DILocation(line: 154, column: 8, scope: !218)
!530 = !DILocation(line: 155, column: 8, scope: !218)
!531 = !DILocation(line: 161, column: 14, scope: !532)
!532 = distinct !DILexicalBlock(scope: !533, file: !1, line: 161, column: 3)
!533 = distinct !DILexicalBlock(scope: !218, file: !1, line: 161, column: 3)
!534 = !DILocation(line: 164, column: 21, scope: !535)
!535 = distinct !DILexicalBlock(scope: !532, file: !1, line: 161, column: 29)
!536 = !DILocation(line: 420, column: 3, scope: !262, inlinedAt: !537)
!537 = distinct !DILocation(line: 164, column: 5, scope: !535)
!538 = !DILocation(line: 421, column: 3, scope: !262, inlinedAt: !537)
!539 = !DILocation(line: 161, column: 3, scope: !533)
!540 = !DILocation(line: 162, column: 8, scope: !535)
!541 = !DILocation(line: 154, column: 11, scope: !218)
!542 = !DILocation(line: 164, column: 11, scope: !535)
!543 = !DILocation(line: 164, column: 16, scope: !535)
!544 = !DILocation(line: 417, column: 31, scope: !262, inlinedAt: !537)
!545 = !DILocation(line: 417, column: 38, scope: !262, inlinedAt: !537)
!546 = !DILocation(line: 417, column: 45, scope: !262, inlinedAt: !537)
!547 = !DILocation(line: 419, column: 9, scope: !262, inlinedAt: !537)
!548 = !DILocation(line: 419, column: 15, scope: !262, inlinedAt: !537)
!549 = !DILocation(line: 419, column: 14, scope: !262, inlinedAt: !537)
!550 = !DILocation(line: 419, column: 21, scope: !262, inlinedAt: !537)
!551 = !DILocation(line: 419, column: 27, scope: !262, inlinedAt: !537)
!552 = !DILocation(line: 419, column: 26, scope: !262, inlinedAt: !537)
!553 = !DILocation(line: 419, column: 20, scope: !262, inlinedAt: !537)
!554 = !DILocation(line: 419, column: 8, scope: !262, inlinedAt: !537)
!555 = !DILocation(line: 420, column: 15, scope: !262, inlinedAt: !537)
!556 = !DILocation(line: 420, column: 14, scope: !262, inlinedAt: !537)
!557 = !DILocation(line: 420, column: 21, scope: !262, inlinedAt: !537)
!558 = !DILocation(line: 420, column: 26, scope: !262, inlinedAt: !537)
!559 = !DILocation(line: 420, column: 20, scope: !262, inlinedAt: !537)
!560 = !DILocation(line: 420, column: 8, scope: !262, inlinedAt: !537)
!561 = !DILocation(line: 421, column: 14, scope: !262, inlinedAt: !537)
!562 = !DILocation(line: 421, column: 26, scope: !262, inlinedAt: !537)
!563 = !DILocation(line: 421, column: 20, scope: !262, inlinedAt: !537)
!564 = !DILocation(line: 421, column: 8, scope: !262, inlinedAt: !537)
!565 = !DILocation(line: 155, column: 10, scope: !218)
!566 = !DILocation(line: 165, column: 5, scope: !567)
!567 = distinct !DILexicalBlock(scope: !535, file: !1, line: 165, column: 5)
!568 = !DILocation(line: 166, column: 17, scope: !569)
!569 = distinct !DILexicalBlock(scope: !570, file: !1, line: 165, column: 28)
!570 = distinct !DILexicalBlock(scope: !567, file: !1, line: 165, column: 5)
!571 = !DILocation(line: 166, column: 7, scope: !569)
!572 = !DILocation(line: 166, column: 13, scope: !569)
!573 = !DILocation(line: 167, column: 18, scope: !569)
!574 = !DILocation(line: 167, column: 17, scope: !569)
!575 = !DILocation(line: 167, column: 7, scope: !569)
!576 = !DILocation(line: 167, column: 13, scope: !569)
!577 = !DILocation(line: 168, column: 17, scope: !569)
!578 = !DILocation(line: 168, column: 7, scope: !569)
!579 = !DILocation(line: 168, column: 13, scope: !569)
!580 = !DILocation(line: 166, column: 18, scope: !569)
!581 = !DILocation(line: 168, column: 18, scope: !569)
!582 = !DILocation(line: 163, column: 7, scope: !535)
!583 = !DILocation(line: 417, column: 31, scope: !262, inlinedAt: !584)
!584 = distinct !DILocation(line: 171, column: 3, scope: !218)
!585 = !DILocation(line: 417, column: 38, scope: !262, inlinedAt: !584)
!586 = !DILocation(line: 417, column: 45, scope: !262, inlinedAt: !584)
!587 = !DILocation(line: 419, column: 9, scope: !262, inlinedAt: !584)
!588 = !DILocation(line: 419, column: 15, scope: !262, inlinedAt: !584)
!589 = !DILocation(line: 419, column: 14, scope: !262, inlinedAt: !584)
!590 = !DILocation(line: 419, column: 21, scope: !262, inlinedAt: !584)
!591 = !DILocation(line: 419, column: 27, scope: !262, inlinedAt: !584)
!592 = !DILocation(line: 419, column: 26, scope: !262, inlinedAt: !584)
!593 = !DILocation(line: 419, column: 20, scope: !262, inlinedAt: !584)
!594 = !DILocation(line: 419, column: 8, scope: !262, inlinedAt: !584)
!595 = !DILocation(line: 420, column: 15, scope: !262, inlinedAt: !584)
!596 = !DILocation(line: 420, column: 14, scope: !262, inlinedAt: !584)
!597 = !DILocation(line: 420, column: 21, scope: !262, inlinedAt: !584)
!598 = !DILocation(line: 420, column: 26, scope: !262, inlinedAt: !584)
!599 = !DILocation(line: 420, column: 20, scope: !262, inlinedAt: !584)
!600 = !DILocation(line: 420, column: 8, scope: !262, inlinedAt: !584)
!601 = !DILocation(line: 421, column: 14, scope: !262, inlinedAt: !584)
!602 = !DILocation(line: 421, column: 26, scope: !262, inlinedAt: !584)
!603 = !DILocation(line: 421, column: 20, scope: !262, inlinedAt: !584)
!604 = !DILocation(line: 421, column: 8, scope: !262, inlinedAt: !584)
!605 = !DILocation(line: 173, column: 11, scope: !606)
!606 = distinct !DILexicalBlock(scope: !607, file: !1, line: 172, column: 26)
!607 = distinct !DILexicalBlock(scope: !608, file: !1, line: 172, column: 3)
!608 = distinct !DILexicalBlock(scope: !218, file: !1, line: 172, column: 3)
!609 = !DILocation(line: 174, column: 11, scope: !606)
!610 = !DILocation(line: 175, column: 18, scope: !606)
!611 = !DILocation(line: 175, column: 11, scope: !606)
!612 = !DILocation(line: 172, column: 3, scope: !608)
!613 = !DILocation(line: 175, column: 13, scope: !606)
!614 = !DILocation(line: 173, column: 5, scope: !606)
!615 = !DILocation(line: 174, column: 5, scope: !606)
!616 = !DILocation(line: 175, column: 5, scope: !606)
!617 = !DILocation(line: 334, column: 37, scope: !269, inlinedAt: !618)
!618 = distinct !DILocation(line: 187, column: 3, scope: !218)
!619 = !DILocation(line: 336, column: 14, scope: !269, inlinedAt: !618)
!620 = !DILocation(line: 341, column: 1, scope: !269, inlinedAt: !618)
!621 = !DILocation(line: 338, column: 22, scope: !269, inlinedAt: !618)
!622 = !DILocation(line: 188, column: 3, scope: !623)
!623 = distinct !DILexicalBlock(scope: !218, file: !1, line: 188, column: 3)
!624 = !DILocation(line: 192, column: 16, scope: !625)
!625 = distinct !DILexicalBlock(scope: !626, file: !1, line: 188, column: 29)
!626 = distinct !DILexicalBlock(scope: !623, file: !1, line: 188, column: 3)
!627 = !DILocation(line: 192, column: 5, scope: !625)
!628 = !DILocation(line: 193, column: 23, scope: !625)
!629 = !DILocation(line: 193, column: 5, scope: !625)
!630 = !DILocation(line: 194, column: 23, scope: !625)
!631 = !DILocation(line: 194, column: 5, scope: !625)
!632 = !DILocation(line: 195, column: 5, scope: !625)
!633 = !DILocation(line: 196, column: 5, scope: !625)
!634 = !DILocation(line: 197, column: 5, scope: !625)
!635 = !DILocation(line: 189, column: 8, scope: !625)
!636 = !DILocation(line: 190, column: 5, scope: !637)
!637 = distinct !DILexicalBlock(scope: !625, file: !1, line: 190, column: 5)
!638 = !DILocation(line: 191, column: 13, scope: !639)
!639 = distinct !DILexicalBlock(scope: !637, file: !1, line: 190, column: 5)
!640 = !DILocation(line: 191, column: 21, scope: !639)
!641 = !DILocation(line: 191, column: 20, scope: !639)
!642 = !DILocation(line: 191, column: 7, scope: !639)
!643 = !DILocation(line: 191, column: 12, scope: !639)
!644 = !DILocation(line: 193, column: 22, scope: !625)
!645 = !DILocation(line: 193, column: 29, scope: !625)
!646 = !DILocation(line: 193, column: 14, scope: !625)
!647 = !DILocation(line: 192, column: 14, scope: !625)
!648 = !DILocation(line: 197, column: 22, scope: !625)
!649 = !DILocation(line: 197, column: 29, scope: !625)
!650 = !DILocation(line: 197, column: 14, scope: !625)
!651 = !DILocation(line: 194, column: 14, scope: !625)
!652 = !DILocation(line: 195, column: 14, scope: !625)
!653 = !DILocation(line: 196, column: 14, scope: !625)
!654 = !DILocation(line: 205, column: 3, scope: !218)
!655 = !DILocation(line: 208, column: 20, scope: !238)
!656 = !DILocation(line: 208, column: 28, scope: !238)
!657 = !DILocation(line: 208, column: 40, scope: !238)
!658 = !DILocation(line: 208, column: 52, scope: !238)
!659 = !DILocation(line: 208, column: 61, scope: !238)
!660 = !DILocation(line: 210, column: 10, scope: !238)
!661 = !DILocation(line: 210, column: 14, scope: !238)
!662 = !DILocation(line: 210, column: 18, scope: !238)
!663 = !DILocation(line: 211, column: 3, scope: !238)
!664 = !DILocation(line: 211, column: 10, scope: !238)
!665 = !DILocation(line: 217, column: 37, scope: !238)
!666 = !DILocation(line: 217, column: 41, scope: !238)
!667 = !DILocation(line: 217, column: 45, scope: !238)
!668 = !DILocation(line: 217, column: 49, scope: !238)
!669 = !DILocation(line: 217, column: 9, scope: !238)
!670 = !DILocation(line: 212, column: 10, scope: !238)
!671 = !DILocation(line: 220, column: 14, scope: !672)
!672 = distinct !DILexicalBlock(scope: !673, file: !1, line: 220, column: 3)
!673 = distinct !DILexicalBlock(scope: !238, file: !1, line: 220, column: 3)
!674 = !DILocation(line: 220, column: 3, scope: !673)
!675 = !DILocation(line: 221, column: 5, scope: !676)
!676 = distinct !DILexicalBlock(scope: !672, file: !1, line: 221, column: 5)
!677 = !DILocation(line: 222, column: 16, scope: !678)
!678 = distinct !DILexicalBlock(scope: !676, file: !1, line: 221, column: 5)
!679 = !DILocation(line: 222, column: 7, scope: !678)
!680 = !DILocation(line: 222, column: 14, scope: !678)
!681 = !DILocation(line: 227, column: 1, scope: !238)
