; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/ewald_util.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_nsborder = type { i32, i32, i32, i32, i32, i32, i32, [256 x i32], [256 x i32], [256 x i32], [256 x i32] }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }
%struct.t_forcerec = type { i32, float, float, float, float, float, float, i32, float, float, float, float, float, i32, i32, float, i32, float, float*, float*, float*, float*, float, float, float*, float, float, float, float, i32, float, float, i32, i32, i32, i32, i32, i32, i32, i32, [3 x float], i32, i32, i32, i32, i32*, i32*, [3 x float]*, [3 x float]*, [13 x %struct.t_nblist], [13 x %struct.t_nblist], i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, i32, float, [3 x float]*, i32, i32*, float*, i32, i32, i32, float*, i32*, float }
%struct.t_nblist = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32* }
%struct.t_block = type { [256 x i32], i32, i32*, i32, i32* }

@ewald_LRcorrection.Vself = internal unnamed_addr global float 0.000000e+00, align 4
@.str = private unnamed_addr constant [27 x i8] c"Unsupported Ewald geometry\00", align 1
@debug = external global %struct.__sFILE*
@.str1 = private unnamed_addr constant [48 x i8] c"dr=%8.4f, fscal=%8.0f, df=%10.0f,%10.0f,%10.0f\0A\00", align 1
@.str2 = private unnamed_addr constant [48 x i8] c"Long Range corrections for Ewald interactions:\0A\00", align 1
@.str3 = private unnamed_addr constant [20 x i8] c"start=%d,natoms=%d\0A\00", align 1
@.str4 = private unnamed_addr constant [22 x i8] c"q2sum = %g, Vself=%g\0A\00", align 1
@.str5 = private unnamed_addr constant [33 x i8] c"Long Range correction: Vexcl=%g\0A\00", align 1
@.str6 = private unnamed_addr constant [37 x i8] c"Total charge correction: Vcharge=%g\0A\00", align 1
@.str7 = private unnamed_addr constant [37 x i8] c"Total dipole correction: Vdipole=%g\0A\00", align 1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #0 {
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !17, metadata !329), !dbg !330
  %1 = icmp sgt i32 %__signo, 32, !dbg !331
  br i1 %1, label %5, label %2, !dbg !332

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !333
  %4 = shl i32 1, %3, !dbg !334
  br label %5, !dbg !332

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !332
  ret i32 %6, !dbg !335
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind optsize readnone ssp uwtable
define float @calc_ewaldcoeff(float %rc, float %dtol) #2 {
  tail call void @llvm.dbg.value(metadata float %rc, i64 0, metadata !25, metadata !329), !dbg !336
  tail call void @llvm.dbg.value(metadata float %dtol, i64 0, metadata !26, metadata !329), !dbg !337
  tail call void @llvm.dbg.value(metadata float 5.000000e+00, i64 0, metadata !27, metadata !329), !dbg !338
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !31, metadata !329), !dbg !339
  %1 = fpext float %dtol to double, !dbg !340
  br label %2, !dbg !341

; <label>:2                                       ; preds = %2, %0
  %x.0 = phi float [ 5.000000e+00, %0 ], [ %4, %2 ]
  %i.0 = phi i32 [ 0, %0 ], [ %3, %2 ]
  %3 = add nuw nsw i32 %i.0, 1, !dbg !342
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !31, metadata !329), !dbg !339
  %4 = fmul float %x.0, 2.000000e+00, !dbg !344
  tail call void @llvm.dbg.value(metadata float %4, i64 0, metadata !27, metadata !329), !dbg !338
  %5 = fmul float %4, %rc, !dbg !345
  %6 = fpext float %5 to double, !dbg !346
  %7 = tail call double @erfc(double %6) #8, !dbg !347
  %8 = fcmp ogt double %7, %1, !dbg !348
  br i1 %8, label %2, label %9, !dbg !349

; <label>:9                                       ; preds = %2
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !28, metadata !329), !dbg !350
  tail call void @llvm.dbg.value(metadata float %4, i64 0, metadata !29, metadata !329), !dbg !351
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !31, metadata !329), !dbg !339
  %10 = icmp sgt i32 %i.0, -61, !dbg !352
  br i1 %10, label %.lr.ph, label %._crit_edge, !dbg !355

.lr.ph:                                           ; preds = %9, %.lr.ph
  %i.14 = phi i32 [ %17, %.lr.ph ], [ 0, %9 ]
  %high.03 = phi float [ %high.0., %.lr.ph ], [ %4, %9 ]
  %low.02 = phi float [ %.low.0, %.lr.ph ], [ 0.000000e+00, %9 ]
  %11 = fadd float %low.02, %high.03, !dbg !356
  %12 = fmul float %11, 5.000000e-01, !dbg !358
  tail call void @llvm.dbg.value(metadata float %12, i64 0, metadata !27, metadata !329), !dbg !338
  %13 = fmul float %12, %rc, !dbg !359
  %14 = fpext float %13 to double, !dbg !361
  %15 = tail call double @erfc(double %14) #8, !dbg !362
  %16 = fcmp ogt double %15, %1, !dbg !363
  %.low.0 = select i1 %16, float %12, float %low.02, !dbg !364
  %high.0. = select i1 %16, float %high.03, float %12, !dbg !364
  %17 = add nuw nsw i32 %i.14, 1, !dbg !365
  tail call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !31, metadata !329), !dbg !339
  %18 = add nsw i32 %i.0, 60, !dbg !352
  %19 = icmp slt i32 %i.14, %18, !dbg !352
  br i1 %19, label %.lr.ph, label %._crit_edge, !dbg !355

._crit_edge:                                      ; preds = %.lr.ph, %9
  %x.1.lcssa = phi float [ %4, %9 ], [ %12, %.lr.ph ]
  ret float %x.1.lcssa, !dbg !366
}

; Function Attrs: nounwind optsize readnone
declare double @erfc(double) #3

; Function Attrs: nounwind optsize ssp uwtable
define float @ewald_LRcorrection(%struct.__sFILE* nocapture readnone %fp, %struct.t_nsborder* nocapture readonly %nsb, %struct.t_commrec* nocapture readonly %cr, %struct.t_forcerec* nocapture readonly %fr, float* nocapture readonly %charge, %struct.t_block* nocapture readonly %excl, [3 x float]* nocapture readonly %x, [3 x float]* nocapture readonly %box, float* nocapture readonly %mu_tot, float %qsum, i32 %ewald_geometry, float %epsilon_surface, [3 x float]* nocapture %lr_vir) #4 {
  %df = alloca [3 x float], align 4
  %dx = alloca [3 x float], align 4
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !242, metadata !329), !dbg !367
  tail call void @llvm.dbg.value(metadata %struct.t_nsborder* %nsb, i64 0, metadata !243, metadata !329), !dbg !368
  tail call void @llvm.dbg.value(metadata %struct.t_commrec* %cr, i64 0, metadata !244, metadata !329), !dbg !369
  tail call void @llvm.dbg.value(metadata %struct.t_forcerec* %fr, i64 0, metadata !245, metadata !329), !dbg !370
  tail call void @llvm.dbg.value(metadata float* %charge, i64 0, metadata !246, metadata !329), !dbg !371
  tail call void @llvm.dbg.value(metadata %struct.t_block* %excl, i64 0, metadata !247, metadata !329), !dbg !372
  tail call void @llvm.dbg.value(metadata [3 x float]* %x, i64 0, metadata !248, metadata !329), !dbg !373
  tail call void @llvm.dbg.value(metadata [3 x float]* %box, i64 0, metadata !249, metadata !329), !dbg !374
  tail call void @llvm.dbg.value(metadata float* %mu_tot, i64 0, metadata !250, metadata !329), !dbg !375
  tail call void @llvm.dbg.value(metadata float %qsum, i64 0, metadata !251, metadata !329), !dbg !376
  tail call void @llvm.dbg.value(metadata i32 %ewald_geometry, i64 0, metadata !252, metadata !329), !dbg !377
  tail call void @llvm.dbg.value(metadata float %epsilon_surface, i64 0, metadata !253, metadata !329), !dbg !378
  tail call void @llvm.dbg.value(metadata [3 x float]* %lr_vir, i64 0, metadata !254, metadata !329), !dbg !379
  %1 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 57, !dbg !380
  %2 = load float* %1, align 4, !dbg !380, !tbaa !381
  tail call void @llvm.dbg.value(metadata float %2, i64 0, metadata !276, metadata !329), !dbg !388
  tail call void @llvm.dbg.declare(metadata [3 x float]* %df, metadata !277, metadata !329), !dbg !389
  tail call void @llvm.dbg.declare(metadata [3 x float]* %dx, metadata !278, metadata !329), !dbg !390
  %3 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 55, !dbg !391
  %4 = load [3 x float]** %3, align 8, !dbg !391, !tbaa !392
  tail call void @llvm.dbg.value(metadata [3 x float]* %4, i64 0, metadata !279, metadata !329), !dbg !393
  %5 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0, !dbg !394
  %6 = load float* %5, align 4, !dbg !394, !tbaa !395
  %7 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1, !dbg !396
  %8 = load float* %7, align 4, !dbg !396, !tbaa !395
  %9 = fmul float %6, %8, !dbg !397
  %10 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2, !dbg !398
  %11 = load float* %10, align 4, !dbg !398, !tbaa !395
  %12 = fmul float %9, %11, !dbg !399
  tail call void @llvm.dbg.value(metadata float %12, i64 0, metadata !280, metadata !329), !dbg !400
  tail call void @llvm.dbg.value(metadata double 0x3FE20DD750429B6A, i64 0, metadata !283, metadata !329), !dbg !401
  %13 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 0, !dbg !402
  %14 = load i32* %13, align 4, !dbg !402, !tbaa !403
  %15 = sext i32 %14 to i64, !dbg !402
  %16 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %15, !dbg !402
  %17 = load i32* %16, align 4, !dbg !402, !tbaa !405
  tail call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !284, metadata !329), !dbg !406
  %18 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %15, !dbg !407
  %19 = load i32* %18, align 4, !dbg !407, !tbaa !405
  %20 = add nsw i32 %19, %17, !dbg !408
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !285, metadata !329), !dbg !409
  %21 = getelementptr inbounds %struct.t_block* %excl, i64 0, i32 4, !dbg !410
  %22 = load i32** %21, align 8, !dbg !410, !tbaa !411
  tail call void @llvm.dbg.value(metadata i32* %22, i64 0, metadata !263, metadata !329), !dbg !413
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !272, metadata !329), !dbg !414
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !264, metadata !329), !dbg !415
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !274, metadata !329), !dbg !416
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !273, metadata !329), !dbg !417
  %fabsf = tail call float @fabsf(float %epsilon_surface) #3, !dbg !418
  %23 = fpext float %fabsf to double, !dbg !418
  %24 = fcmp olt double %23, 1.200000e-38, !dbg !420
  br i1 %24, label %38, label %25, !dbg !421

; <label>:25                                      ; preds = %0
  switch i32 %ewald_geometry, label %37 [
    i32 0, label %26
    i32 1, label %33
  ], !dbg !422

; <label>:26                                      ; preds = %25
  %27 = fmul float %epsilon_surface, 2.000000e+00, !dbg !423
  %28 = fadd float %27, 1.000000e+00, !dbg !425
  %29 = fmul float %28, %12, !dbg !426
  %30 = fpext float %29 to double, !dbg !427
  %31 = fdiv double 0x408B47A7CA01D8DF, %30, !dbg !428
  %32 = fptrunc double %31 to float, !dbg !429
  tail call void @llvm.dbg.value(metadata float %32, i64 0, metadata !281, metadata !329), !dbg !430
  br label %38, !dbg !431

; <label>:33                                      ; preds = %25
  %34 = fpext float %12 to double, !dbg !432
  %35 = fdiv double 0x408B47A7CA01D8DF, %34, !dbg !433
  %36 = fptrunc double %35 to float, !dbg !434
  tail call void @llvm.dbg.value(metadata float %36, i64 0, metadata !281, metadata !329), !dbg !430
  br label %38, !dbg !435

; <label>:37                                      ; preds = %25
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([27 x i8]* @.str, i64 0, i64 0)) #9, !dbg !436
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !281, metadata !329), !dbg !430
  br label %38, !dbg !437

; <label>:38                                      ; preds = %0, %26, %33, %37
  %dipole_coeff.0 = phi float [ 0.000000e+00, %37 ], [ %36, %33 ], [ %32, %26 ], [ 0.000000e+00, %0 ]
  tail call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !255, metadata !329), !dbg !438
  %39 = icmp sgt i32 %19, 0, !dbg !439
  br i1 %39, label %.lr.ph18, label %._crit_edge19, !dbg !442

.lr.ph18:                                         ; preds = %38
  %40 = getelementptr inbounds %struct.t_block* %excl, i64 0, i32 2, !dbg !443
  %41 = fpext float %dipole_coeff.0 to double, !dbg !445
  %fabsf2 = tail call float @fabsf(float %dipole_coeff.0) #3, !dbg !447
  %42 = fpext float %fabsf2 to double, !dbg !447
  %43 = fcmp ogt double %42, 1.200000e-38, !dbg !448
  %44 = fmul double %41, 2.000000e+00, !dbg !449
  %45 = fmul double %44, 2.081941e-02, !dbg !454
  %46 = getelementptr inbounds float* %mu_tot, i64 2, !dbg !455
  %47 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 0, !dbg !456
  %48 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 1, !dbg !464
  %49 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 2, !dbg !466
  %50 = fpext float %2 to double, !dbg !467
  %51 = fmul float %2, %2, !dbg !468
  %52 = getelementptr inbounds [3 x float]* %df, i64 0, i64 0, !dbg !469
  %53 = getelementptr inbounds [3 x float]* %df, i64 0, i64 1, !dbg !470
  %54 = getelementptr inbounds [3 x float]* %df, i64 0, i64 2, !dbg !472
  %55 = sext i32 %17 to i64
  %56 = sext i32 %20 to i64, !dbg !442
  br label %57, !dbg !442

; <label>:57                                      ; preds = %.lr.ph18, %.backedge
  %indvars.iv37 = phi i64 [ %55, %.lr.ph18 ], [ %indvars.iv.next38, %.backedge ]
  %q2sum.015 = phi double [ 0.000000e+00, %.lr.ph18 ], [ %72, %.backedge ]
  %Vexcl.014 = phi float [ 0.000000e+00, %.lr.ph18 ], [ %Vexcl.1.lcssa, %.backedge ]
  %58 = getelementptr inbounds float* %charge, i64 %indvars.iv37, !dbg !473
  %59 = load float* %58, align 4, !dbg !473, !tbaa !395
  %60 = fpext float %59 to double, !dbg !473
  %61 = fmul double %60, 3.320636e+02, !dbg !474
  %62 = fmul double %61, 4.184000e+00, !dbg !475
  %63 = fmul double %62, 1.000000e-01, !dbg !475
  %64 = fptrunc double %63 to float, !dbg !473
  tail call void @llvm.dbg.value(metadata float %64, i64 0, metadata !267, metadata !329), !dbg !476
  %65 = load i32** %40, align 8, !dbg !443, !tbaa !477
  %66 = getelementptr inbounds i32* %65, i64 %indvars.iv37, !dbg !478
  %67 = load i32* %66, align 4, !dbg !478, !tbaa !405
  tail call void @llvm.dbg.value(metadata i32 %67, i64 0, metadata !256, metadata !329), !dbg !479
  %indvars.iv.next38 = add nsw i64 %indvars.iv37, 1, !dbg !442
  %68 = getelementptr inbounds i32* %65, i64 %indvars.iv.next38, !dbg !480
  %69 = load i32* %68, align 4, !dbg !480, !tbaa !405
  tail call void @llvm.dbg.value(metadata i32 %69, i64 0, metadata !257, metadata !329), !dbg !481
  %70 = fmul float %59, %59, !dbg !482
  %71 = fpext float %70 to double, !dbg !483
  %72 = fadd double %q2sum.015, %71, !dbg !484
  tail call void @llvm.dbg.value(metadata double %72, i64 0, metadata !264, metadata !329), !dbg !415
  tail call void @llvm.dbg.value(metadata i32 %67, i64 0, metadata !258, metadata !329), !dbg !485
  %73 = icmp slt i32 %67, %69, !dbg !486
  br i1 %73, label %.lr.ph, label %._crit_edge, !dbg !487

.lr.ph:                                           ; preds = %57
  %74 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv37, i64 0, !dbg !488
  %75 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv37, i64 1, !dbg !489
  %76 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv37, i64 2, !dbg !490
  %77 = getelementptr inbounds [3 x float]* %4, i64 %indvars.iv37, i64 0, !dbg !491
  %78 = getelementptr inbounds [3 x float]* %4, i64 %indvars.iv37, i64 1, !dbg !492
  %79 = getelementptr inbounds [3 x float]* %4, i64 %indvars.iv37, i64 2, !dbg !494
  %80 = sext i32 %67 to i64
  %81 = add i32 %69, -1, !dbg !487
  br label %82, !dbg !487

; <label>:82                                      ; preds = %.loopexit, %.lr.ph
  %indvars.iv31 = phi i64 [ %80, %.lr.ph ], [ %indvars.iv.next32, %.loopexit ]
  %Vexcl.111 = phi float [ %Vexcl.014, %.lr.ph ], [ %Vexcl.2, %.loopexit ]
  %83 = getelementptr inbounds i32* %22, i64 %indvars.iv31, !dbg !495
  %84 = load i32* %83, align 4, !dbg !495, !tbaa !405
  tail call void @llvm.dbg.value(metadata i32 %84, i64 0, metadata !259, metadata !329), !dbg !496
  %85 = sext i32 %84 to i64, !dbg !497
  %86 = icmp sgt i64 %85, %indvars.iv37, !dbg !497
  br i1 %86, label %87, label %.loopexit, !dbg !498

; <label>:87                                      ; preds = %82
  %88 = getelementptr inbounds float* %charge, i64 %85, !dbg !499
  %89 = load float* %88, align 4, !dbg !499, !tbaa !395
  %90 = fmul float %64, %89, !dbg !500
  tail call void @llvm.dbg.value(metadata float %90, i64 0, metadata !282, metadata !329), !dbg !501
  %91 = fpext float %90 to double, !dbg !502
  %fabsf3 = tail call float @fabsf(float %90) #3, !dbg !503
  %92 = fpext float %fabsf3 to double, !dbg !503
  %93 = fcmp ogt double %92, 1.200000e-38, !dbg !504
  br i1 %93, label %94, label %.loopexit, !dbg !505

; <label>:94                                      ; preds = %87
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !269, metadata !329), !dbg !506
  %95 = getelementptr inbounds [3 x float]* %x, i64 %85, i64 0, !dbg !507
  tail call void @llvm.dbg.value(metadata float* %74, i64 0, metadata !293, metadata !329), !dbg !508
  tail call void @llvm.dbg.value(metadata float* %95, i64 0, metadata !294, metadata !329), !dbg !509
  tail call void @llvm.dbg.value(metadata float* %47, i64 0, metadata !295, metadata !329), !dbg !510
  %96 = load float* %74, align 4, !dbg !511, !tbaa !395
  %97 = load float* %95, align 4, !dbg !512, !tbaa !395
  %98 = fsub float %96, %97, !dbg !513
  tail call void @llvm.dbg.value(metadata float %98, i64 0, metadata !296, metadata !329), !dbg !514
  %99 = load float* %75, align 4, !dbg !489, !tbaa !395
  %100 = getelementptr inbounds [3 x float]* %x, i64 %85, i64 1, !dbg !515
  %101 = load float* %100, align 4, !dbg !515, !tbaa !395
  %102 = fsub float %99, %101, !dbg !516
  tail call void @llvm.dbg.value(metadata float %102, i64 0, metadata !297, metadata !329), !dbg !517
  %103 = load float* %76, align 4, !dbg !490, !tbaa !395
  %104 = getelementptr inbounds [3 x float]* %x, i64 %85, i64 2, !dbg !518
  %105 = load float* %104, align 4, !dbg !518, !tbaa !395
  %106 = fsub float %103, %105, !dbg !519
  tail call void @llvm.dbg.value(metadata float %106, i64 0, metadata !298, metadata !329), !dbg !520
  store float %98, float* %47, align 4, !dbg !521, !tbaa !395
  store float %102, float* %48, align 4, !dbg !522, !tbaa !395
  store float %106, float* %49, align 4, !dbg !523, !tbaa !395
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !260, metadata !329), !dbg !524
  br label %107, !dbg !525

; <label>:107                                     ; preds = %._crit_edge39, %94
  %108 = phi float [ %106, %94 ], [ %144, %._crit_edge39 ]
  %109 = phi float [ %102, %94 ], [ %145, %._crit_edge39 ]
  %110 = phi float [ %98, %94 ], [ %146, %._crit_edge39 ]
  %111 = phi float [ %106, %94 ], [ %.pre, %._crit_edge39 ]
  %indvars.iv23 = phi i64 [ 2, %94 ], [ %indvars.iv.next24, %._crit_edge39 ]
  %dr2.07 = phi float [ 0.000000e+00, %94 ], [ %149, %._crit_edge39 ]
  %112 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 %indvars.iv23, !dbg !527
  %113 = fpext float %111 to double, !dbg !527
  %114 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv23, !dbg !531
  %115 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv23, i64 %indvars.iv23, !dbg !531
  %116 = load float* %115, align 4, !dbg !531, !tbaa !395
  %117 = fpext float %116 to double, !dbg !531
  %118 = fmul double %117, 5.000000e-01, !dbg !532
  %119 = fcmp ogt double %113, %118, !dbg !533
  br i1 %119, label %120, label %130, !dbg !534

; <label>:120                                     ; preds = %107
  %121 = getelementptr inbounds [3 x float]* %114, i64 0, i64 0, !dbg !535
  tail call void @llvm.dbg.value(metadata float* %47, i64 0, metadata !303, metadata !329), !dbg !536
  tail call void @llvm.dbg.value(metadata float* %121, i64 0, metadata !304, metadata !329), !dbg !538
  %122 = load float* %121, align 4, !dbg !539, !tbaa !395
  %123 = fsub float %110, %122, !dbg !540
  tail call void @llvm.dbg.value(metadata float %123, i64 0, metadata !305, metadata !329), !dbg !541
  %124 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv23, i64 1, !dbg !542
  %125 = load float* %124, align 4, !dbg !542, !tbaa !395
  %126 = fsub float %109, %125, !dbg !543
  tail call void @llvm.dbg.value(metadata float %126, i64 0, metadata !306, metadata !329), !dbg !544
  %127 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv23, i64 2, !dbg !545
  %128 = load float* %127, align 4, !dbg !545, !tbaa !395
  %129 = fsub float %108, %128, !dbg !546
  tail call void @llvm.dbg.value(metadata float %129, i64 0, metadata !307, metadata !329), !dbg !547
  store float %123, float* %47, align 4, !dbg !548, !tbaa !395
  store float %126, float* %48, align 4, !dbg !549, !tbaa !395
  store float %129, float* %49, align 4, !dbg !550, !tbaa !395
  br label %143, !dbg !551

; <label>:130                                     ; preds = %107
  %131 = fmul double %117, -5.000000e-01, !dbg !552
  %132 = fcmp olt double %113, %131, !dbg !554
  br i1 %132, label %133, label %143, !dbg !555

; <label>:133                                     ; preds = %130
  %134 = getelementptr inbounds [3 x float]* %114, i64 0, i64 0, !dbg !556
  tail call void @llvm.dbg.value(metadata float* %47, i64 0, metadata !310, metadata !329), !dbg !557
  tail call void @llvm.dbg.value(metadata float* %134, i64 0, metadata !311, metadata !329), !dbg !559
  %135 = load float* %134, align 4, !dbg !560, !tbaa !395
  %136 = fadd float %110, %135, !dbg !561
  tail call void @llvm.dbg.value(metadata float %136, i64 0, metadata !312, metadata !329), !dbg !562
  %137 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv23, i64 1, !dbg !563
  %138 = load float* %137, align 4, !dbg !563, !tbaa !395
  %139 = fadd float %109, %138, !dbg !564
  tail call void @llvm.dbg.value(metadata float %139, i64 0, metadata !313, metadata !329), !dbg !565
  %140 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv23, i64 2, !dbg !566
  %141 = load float* %140, align 4, !dbg !566, !tbaa !395
  %142 = fadd float %108, %141, !dbg !567
  tail call void @llvm.dbg.value(metadata float %142, i64 0, metadata !314, metadata !329), !dbg !568
  store float %136, float* %47, align 4, !dbg !569, !tbaa !395
  store float %139, float* %48, align 4, !dbg !570, !tbaa !395
  store float %142, float* %49, align 4, !dbg !571, !tbaa !395
  br label %143, !dbg !572

; <label>:143                                     ; preds = %130, %133, %120
  %144 = phi float [ %108, %130 ], [ %142, %133 ], [ %129, %120 ]
  %145 = phi float [ %109, %130 ], [ %139, %133 ], [ %126, %120 ]
  %146 = phi float [ %110, %130 ], [ %136, %133 ], [ %123, %120 ]
  %147 = load float* %112, align 4, !dbg !573, !tbaa !395
  %148 = fmul float %147, %147, !dbg !574
  %149 = fadd float %dr2.07, %148, !dbg !575
  tail call void @llvm.dbg.value(metadata float %149, i64 0, metadata !269, metadata !329), !dbg !506
  %indvars.iv.next24 = add nsw i64 %indvars.iv23, -1, !dbg !525
  %150 = icmp sgt i64 %indvars.iv23, 0, !dbg !576
  br i1 %150, label %._crit_edge39, label %151, !dbg !525

._crit_edge39:                                    ; preds = %143
  %.phi.trans.insert = getelementptr inbounds [3 x float]* %dx, i64 0, i64 %indvars.iv.next24
  %.pre = load float* %.phi.trans.insert, align 4, !dbg !527, !tbaa !395
  br label %107, !dbg !525

; <label>:151                                     ; preds = %143
  %152 = fpext float %149 to double, !dbg !577
  %153 = tail call double @sqrt(double %152) #8, !dbg !577
  %154 = fdiv double 1.000000e+00, %153, !dbg !577
  %155 = fptrunc double %154 to float, !dbg !577
  tail call void @llvm.dbg.value(metadata float %155, i64 0, metadata !270, metadata !329), !dbg !578
  %156 = fmul float %155, %155, !dbg !579
  tail call void @llvm.dbg.value(metadata float %156, i64 0, metadata !275, metadata !329), !dbg !580
  %157 = fpext float %155 to double, !dbg !581
  %158 = fdiv float 1.000000e+00, %155, !dbg !582
  tail call void @llvm.dbg.value(metadata float %158, i64 0, metadata !268, metadata !329), !dbg !583
  %159 = fmul float %2, %158, !dbg !584
  %160 = fpext float %159 to double, !dbg !585
  %161 = tail call double @erf(double %160) #8, !dbg !586
  %162 = fmul double %91, %161, !dbg !587
  %163 = fmul double %157, %162, !dbg !588
  %164 = fptrunc double %163 to float, !dbg !589
  tail call void @llvm.dbg.value(metadata float %164, i64 0, metadata !266, metadata !329), !dbg !590
  %165 = fadd float %Vexcl.111, %164, !dbg !591
  tail call void @llvm.dbg.value(metadata float %165, i64 0, metadata !272, metadata !329), !dbg !414
  %166 = fpext float %156 to double, !dbg !592
  %167 = fpext float %164 to double, !dbg !593
  %168 = fmul double %91, 2.000000e+00, !dbg !594
  %169 = fmul double %50, %168, !dbg !595
  %170 = fmul double %169, 0x3FE20DD750429B6A, !dbg !596
  %171 = fmul float %51, %149, !dbg !597
  %172 = fsub float -0.000000e+00, %171, !dbg !597
  %173 = fpext float %172 to double, !dbg !598
  %174 = tail call double @exp(double %173) #8, !dbg !599
  %175 = fmul double %170, %174, !dbg !600
  %176 = fsub double %167, %175, !dbg !601
  %177 = fmul double %166, %176, !dbg !602
  %178 = fptrunc double %177 to float, !dbg !592
  tail call void @llvm.dbg.value(metadata float %178, i64 0, metadata !271, metadata !329), !dbg !603
  tail call void @llvm.dbg.value(metadata float %178, i64 0, metadata !319, metadata !329), !dbg !604
  tail call void @llvm.dbg.value(metadata float* %47, i64 0, metadata !320, metadata !329), !dbg !605
  tail call void @llvm.dbg.value(metadata float* %52, i64 0, metadata !321, metadata !329), !dbg !606
  %179 = fmul float %146, %178, !dbg !607
  store float %179, float* %52, align 4, !dbg !608, !tbaa !395
  %180 = fmul float %145, %178, !dbg !609
  store float %180, float* %53, align 4, !dbg !610, !tbaa !395
  %181 = fmul float %144, %178, !dbg !611
  store float %181, float* %54, align 4, !dbg !612, !tbaa !395
  %182 = load %struct.__sFILE** @debug, align 8, !dbg !613, !tbaa !615
  %183 = icmp eq %struct.__sFILE* %182, null, !dbg !613
  br i1 %183, label %191, label %184, !dbg !616

; <label>:184                                     ; preds = %151
  %185 = fpext float %158 to double, !dbg !617
  %186 = fpext float %178 to double, !dbg !618
  %187 = fpext float %179 to double, !dbg !619
  %188 = fpext float %180 to double, !dbg !620
  %189 = fpext float %181 to double, !dbg !621
  %190 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %182, i8* getelementptr inbounds ([48 x i8]* @.str1, i64 0, i64 0), double %185, double %186, double %187, double %188, double %189) #9, !dbg !622
  br label %191, !dbg !622

; <label>:191                                     ; preds = %151, %184
  %192 = getelementptr inbounds [3 x float]* %4, i64 %85, i64 0, !dbg !623
  tail call void @llvm.dbg.value(metadata float* %192, i64 0, metadata !310, metadata !329), !dbg !624
  tail call void @llvm.dbg.value(metadata float* %52, i64 0, metadata !311, metadata !329), !dbg !626
  %193 = load float* %192, align 4, !dbg !627, !tbaa !395
  %194 = fadd float %193, %179, !dbg !628
  tail call void @llvm.dbg.value(metadata float %194, i64 0, metadata !312, metadata !329), !dbg !629
  %195 = getelementptr inbounds [3 x float]* %4, i64 %85, i64 1, !dbg !630
  %196 = load float* %195, align 4, !dbg !630, !tbaa !395
  %197 = fadd float %196, %180, !dbg !631
  tail call void @llvm.dbg.value(metadata float %197, i64 0, metadata !313, metadata !329), !dbg !632
  %198 = getelementptr inbounds [3 x float]* %4, i64 %85, i64 2, !dbg !633
  %199 = load float* %198, align 4, !dbg !633, !tbaa !395
  %200 = fadd float %199, %181, !dbg !634
  tail call void @llvm.dbg.value(metadata float %200, i64 0, metadata !314, metadata !329), !dbg !635
  store float %194, float* %192, align 4, !dbg !636, !tbaa !395
  store float %197, float* %195, align 4, !dbg !637, !tbaa !395
  store float %200, float* %198, align 4, !dbg !638, !tbaa !395
  tail call void @llvm.dbg.value(metadata float* %77, i64 0, metadata !303, metadata !329), !dbg !639
  tail call void @llvm.dbg.value(metadata float* %52, i64 0, metadata !304, metadata !329), !dbg !640
  %201 = load float* %77, align 4, !dbg !641, !tbaa !395
  %202 = fsub float %201, %179, !dbg !642
  tail call void @llvm.dbg.value(metadata float %202, i64 0, metadata !305, metadata !329), !dbg !643
  %203 = load float* %78, align 4, !dbg !492, !tbaa !395
  %204 = fsub float %203, %180, !dbg !644
  tail call void @llvm.dbg.value(metadata float %204, i64 0, metadata !306, metadata !329), !dbg !645
  %205 = load float* %79, align 4, !dbg !494, !tbaa !395
  %206 = fsub float %205, %181, !dbg !646
  tail call void @llvm.dbg.value(metadata float %206, i64 0, metadata !307, metadata !329), !dbg !647
  store float %202, float* %77, align 4, !dbg !648, !tbaa !395
  store float %204, float* %78, align 4, !dbg !649, !tbaa !395
  store float %206, float* %79, align 4, !dbg !650, !tbaa !395
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !261, metadata !329), !dbg !651
  br label %.preheader, !dbg !652

.preheader:                                       ; preds = %..preheader_crit_edge, %191
  %207 = phi float [ %146, %191 ], [ %.pre41, %..preheader_crit_edge ]
  %indvars.iv28 = phi i64 [ 0, %191 ], [ %indvars.iv.next29, %..preheader_crit_edge ]
  %208 = fpext float %207 to double, !dbg !654
  %209 = fmul double %208, 5.000000e-01, !dbg !658
  br label %210, !dbg !659

; <label>:210                                     ; preds = %210, %.preheader
  %indvars.iv25 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next26, %210 ]
  %211 = getelementptr inbounds [3 x float]* %df, i64 0, i64 %indvars.iv25, !dbg !660
  %212 = load float* %211, align 4, !dbg !660, !tbaa !395
  %213 = fpext float %212 to double, !dbg !660
  %214 = fmul double %209, %213, !dbg !661
  %215 = getelementptr inbounds [3 x float]* %lr_vir, i64 %indvars.iv28, i64 %indvars.iv25, !dbg !662
  %216 = load float* %215, align 4, !dbg !663, !tbaa !395
  %217 = fpext float %216 to double, !dbg !663
  %218 = fadd double %217, %214, !dbg !663
  %219 = fptrunc double %218 to float, !dbg !663
  store float %219, float* %215, align 4, !dbg !663, !tbaa !395
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1, !dbg !659
  %exitcond27 = icmp eq i64 %indvars.iv.next26, 3, !dbg !659
  br i1 %exitcond27, label %220, label %210, !dbg !659

; <label>:220                                     ; preds = %210
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1, !dbg !652
  %exitcond30 = icmp eq i64 %indvars.iv.next29, 3, !dbg !652
  br i1 %exitcond30, label %.loopexit, label %..preheader_crit_edge, !dbg !652

..preheader_crit_edge:                            ; preds = %220
  %.phi.trans.insert40 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 %indvars.iv.next29
  %.pre41 = load float* %.phi.trans.insert40, align 4, !dbg !654, !tbaa !395
  br label %.preheader, !dbg !652

.loopexit:                                        ; preds = %220, %82, %87
  %Vexcl.2 = phi float [ %Vexcl.111, %87 ], [ %Vexcl.111, %82 ], [ %165, %220 ]
  %indvars.iv.next32 = add nsw i64 %indvars.iv31, 1, !dbg !487
  %lftr.wideiv = trunc i64 %indvars.iv31 to i32, !dbg !487
  %exitcond33 = icmp eq i32 %lftr.wideiv, %81, !dbg !487
  br i1 %exitcond33, label %._crit_edge, label %82, !dbg !487

._crit_edge:                                      ; preds = %.loopexit, %57
  %Vexcl.1.lcssa = phi float [ %Vexcl.014, %57 ], [ %Vexcl.2, %.loopexit ]
  br i1 %43, label %221, label %.backedge, !dbg !664

; <label>:221                                     ; preds = %._crit_edge
  switch i32 %ewald_geometry, label %.backedge [
    i32 0, label %.preheader4
    i32 1, label %235
  ], !dbg !665

.backedge:                                        ; preds = %.preheader4, %221, %._crit_edge, %235
  %222 = icmp slt i64 %indvars.iv.next38, %56, !dbg !439
  br i1 %222, label %57, label %._crit_edge19, !dbg !442

.preheader4:                                      ; preds = %221, %.preheader4
  %indvars.iv34 = phi i64 [ %indvars.iv.next35, %.preheader4 ], [ 0, %221 ]
  %223 = getelementptr inbounds float* %mu_tot, i64 %indvars.iv34, !dbg !666
  %224 = load float* %223, align 4, !dbg !666, !tbaa !395
  %225 = fpext float %224 to double, !dbg !666
  %226 = fmul double %45, %225, !dbg !670
  %227 = load float* %58, align 4, !dbg !671, !tbaa !395
  %228 = fpext float %227 to double, !dbg !671
  %229 = fmul double %226, %228, !dbg !672
  %230 = getelementptr inbounds [3 x float]* %4, i64 %indvars.iv37, i64 %indvars.iv34, !dbg !673
  %231 = load float* %230, align 4, !dbg !674, !tbaa !395
  %232 = fpext float %231 to double, !dbg !674
  %233 = fsub double %232, %229, !dbg !674
  %234 = fptrunc double %233 to float, !dbg !674
  store float %234, float* %230, align 4, !dbg !674, !tbaa !395
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1, !dbg !675
  %exitcond36 = icmp eq i64 %indvars.iv.next35, 3, !dbg !675
  br i1 %exitcond36, label %.backedge, label %.preheader4, !dbg !675

; <label>:235                                     ; preds = %221
  %236 = load float* %46, align 4, !dbg !455, !tbaa !395
  %237 = fpext float %236 to double, !dbg !455
  %238 = fmul double %45, %237, !dbg !676
  %239 = load float* %58, align 4, !dbg !677, !tbaa !395
  %240 = fpext float %239 to double, !dbg !677
  %241 = fmul double %238, %240, !dbg !678
  %242 = getelementptr inbounds [3 x float]* %4, i64 %indvars.iv37, i64 2, !dbg !679
  %243 = load float* %242, align 4, !dbg !680, !tbaa !395
  %244 = fpext float %243 to double, !dbg !680
  %245 = fsub double %244, %241, !dbg !680
  %246 = fptrunc double %245 to float, !dbg !680
  store float %246, float* %242, align 4, !dbg !680, !tbaa !395
  br label %.backedge, !dbg !681

._crit_edge19:                                    ; preds = %.backedge, %38
  %q2sum.0.lcssa = phi double [ 0.000000e+00, %38 ], [ %72, %.backedge ]
  %Vexcl.0.lcssa = phi float [ 0.000000e+00, %38 ], [ %Vexcl.1.lcssa, %.backedge ]
  %247 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0, !dbg !682
  %248 = load i32* %247, align 4, !dbg !682, !tbaa !684
  %249 = icmp eq i32 %248, 0, !dbg !682
  br i1 %249, label %250, label %305, !dbg !682

; <label>:250                                     ; preds = %._crit_edge19
  %251 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4, !dbg !682
  %252 = load i32* %251, align 4, !dbg !682, !tbaa !686
  %253 = icmp eq i32 %252, 0, !dbg !682
  br i1 %253, label %254, label %305, !dbg !687

; <label>:254                                     ; preds = %250
  %255 = fmul float %qsum, %qsum, !dbg !688
  %256 = fpext float %255 to double, !dbg !690
  %257 = fmul double %256, 0x400921FB54442D18, !dbg !691
  %258 = fmul double %257, 3.320636e+02, !dbg !692
  %259 = fmul double %258, 4.184000e+00, !dbg !693
  %260 = fmul double %259, 1.000000e-01, !dbg !693
  %261 = fpext float %12 to double, !dbg !694
  %262 = fmul double %261, 2.000000e+00, !dbg !695
  %263 = fmul double %261, %262, !dbg !696
  %264 = fpext float %2 to double, !dbg !697
  %265 = fmul double %264, %263, !dbg !698
  %266 = fmul double %264, %265, !dbg !699
  %267 = fdiv double %260, %266, !dbg !700
  %268 = fptrunc double %267 to float, !dbg !690
  tail call void @llvm.dbg.value(metadata float %268, i64 0, metadata !266, metadata !329), !dbg !590
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !261, metadata !329), !dbg !651
  br label %269, !dbg !701

; <label>:269                                     ; preds = %269, %254
  %indvars.iv = phi i64 [ 0, %254 ], [ %indvars.iv.next, %269 ]
  %270 = getelementptr inbounds [3 x float]* %lr_vir, i64 %indvars.iv, i64 %indvars.iv, !dbg !703
  %271 = load float* %270, align 4, !dbg !705, !tbaa !395
  %272 = fadd float %268, %271, !dbg !705
  store float %272, float* %270, align 4, !dbg !705, !tbaa !395
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !701
  %exitcond = icmp eq i64 %indvars.iv.next, 3, !dbg !701
  br i1 %exitcond, label %273, label %269, !dbg !701

; <label>:273                                     ; preds = %269
  %274 = fmul float %12, %268, !dbg !706
  %275 = fsub float -0.000000e+00, %274, !dbg !706
  tail call void @llvm.dbg.value(metadata float %275, i64 0, metadata !273, metadata !329), !dbg !417
  %276 = fpext float %dipole_coeff.0 to double, !dbg !707
  %fabsf1 = tail call float @fabsf(float %dipole_coeff.0) #3, !dbg !709
  %277 = fpext float %fabsf1 to double, !dbg !709
  %278 = fcmp ogt double %277, 1.200000e-38, !dbg !710
  br i1 %278, label %279, label %305, !dbg !711

; <label>:279                                     ; preds = %273
  switch i32 %ewald_geometry, label %305 [
    i32 0, label %280
    i32 1, label %296
  ], !dbg !712

; <label>:280                                     ; preds = %279
  %281 = fmul double %276, 2.081941e-02, !dbg !714
  %282 = fmul double %281, 2.081941e-02, !dbg !716
  %283 = load float* %mu_tot, align 4, !dbg !717, !tbaa !395
  %284 = fmul float %283, %283, !dbg !718
  %285 = getelementptr inbounds float* %mu_tot, i64 1, !dbg !719
  %286 = load float* %285, align 4, !dbg !719, !tbaa !395
  %287 = fmul float %286, %286, !dbg !720
  %288 = fadd float %284, %287, !dbg !721
  %289 = getelementptr inbounds float* %mu_tot, i64 2, !dbg !722
  %290 = load float* %289, align 4, !dbg !722, !tbaa !395
  %291 = fmul float %290, %290, !dbg !723
  %292 = fadd float %288, %291, !dbg !724
  %293 = fpext float %292 to double, !dbg !725
  %294 = fmul double %282, %293, !dbg !726
  %295 = fptrunc double %294 to float, !dbg !727
  tail call void @llvm.dbg.value(metadata float %295, i64 0, metadata !274, metadata !329), !dbg !416
  br label %305, !dbg !728

; <label>:296                                     ; preds = %279
  %297 = fmul double %276, 2.081941e-02, !dbg !729
  %298 = fmul double %297, 2.081941e-02, !dbg !731
  %299 = getelementptr inbounds float* %mu_tot, i64 2, !dbg !732
  %300 = load float* %299, align 4, !dbg !732, !tbaa !395
  %301 = fpext float %300 to double, !dbg !732
  %302 = fmul double %298, %301, !dbg !733
  %303 = fmul double %301, %302, !dbg !734
  %304 = fptrunc double %303 to float, !dbg !735
  tail call void @llvm.dbg.value(metadata float %304, i64 0, metadata !274, metadata !329), !dbg !416
  br label %305, !dbg !736

; <label>:305                                     ; preds = %279, %273, %296, %280, %250, %._crit_edge19
  %Vcharge.0 = phi float [ %275, %280 ], [ %275, %296 ], [ %275, %273 ], [ 0.000000e+00, %250 ], [ 0.000000e+00, %._crit_edge19 ], [ %275, %279 ]
  %Vdipole.0 = phi float [ %295, %280 ], [ %304, %296 ], [ 0.000000e+00, %273 ], [ 0.000000e+00, %250 ], [ 0.000000e+00, %._crit_edge19 ], [ 0.000000e+00, %279 ]
  %306 = fpext float %2 to double, !dbg !737
  %307 = fmul double %306, 3.320636e+02, !dbg !738
  %308 = fmul double %307, 4.184000e+00, !dbg !739
  %309 = fmul double %308, 1.000000e-01, !dbg !739
  %310 = fmul double %309, %q2sum.0.lcssa, !dbg !740
  %311 = fdiv double %310, 0x3FFC5BF891B4EF6A, !dbg !741
  %312 = fptrunc double %311 to float, !dbg !737
  store float %312, float* @ewald_LRcorrection.Vself, align 4, !dbg !742, !tbaa !395
  %313 = load %struct.__sFILE** @debug, align 8, !dbg !743, !tbaa !615
  %314 = icmp eq %struct.__sFILE* %313, null, !dbg !743
  br i1 %314, label %341, label %315, !dbg !745

; <label>:315                                     ; preds = %305
  %316 = tail call i64 @fwrite(i8* getelementptr inbounds ([48 x i8]* @.str2, i64 0, i64 0), i64 47, i64 1, %struct.__sFILE* %313), !dbg !746
  %317 = load %struct.__sFILE** @debug, align 8, !dbg !748, !tbaa !615
  %318 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %317, i8* getelementptr inbounds ([20 x i8]* @.str3, i64 0, i64 0), i32 %17, i32 %19) #9, !dbg !749
  %319 = load %struct.__sFILE** @debug, align 8, !dbg !750, !tbaa !615
  %320 = load float* @ewald_LRcorrection.Vself, align 4, !dbg !751, !tbaa !395
  %321 = fpext float %320 to double, !dbg !751
  %322 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %319, i8* getelementptr inbounds ([22 x i8]* @.str4, i64 0, i64 0), double %q2sum.0.lcssa, double %321) #9, !dbg !752
  %323 = load %struct.__sFILE** @debug, align 8, !dbg !753, !tbaa !615
  %324 = fpext float %Vexcl.0.lcssa to double, !dbg !754
  %325 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %323, i8* getelementptr inbounds ([33 x i8]* @.str5, i64 0, i64 0), double %324) #9, !dbg !755
  %326 = load i32* %247, align 4, !dbg !756, !tbaa !684
  %327 = icmp eq i32 %326, 0, !dbg !756
  br i1 %327, label %328, label %341, !dbg !756

; <label>:328                                     ; preds = %315
  %329 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4, !dbg !756
  %330 = load i32* %329, align 4, !dbg !756, !tbaa !686
  %331 = icmp eq i32 %330, 0, !dbg !756
  br i1 %331, label %332, label %341, !dbg !758

; <label>:332                                     ; preds = %328
  %333 = load %struct.__sFILE** @debug, align 8, !dbg !759, !tbaa !615
  %334 = fpext float %Vcharge.0 to double, !dbg !761
  %335 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %333, i8* getelementptr inbounds ([37 x i8]* @.str6, i64 0, i64 0), double %334) #9, !dbg !762
  %336 = fcmp ogt float %epsilon_surface, 0.000000e+00, !dbg !763
  br i1 %336, label %337, label %341, !dbg !765

; <label>:337                                     ; preds = %332
  %338 = load %struct.__sFILE** @debug, align 8, !dbg !766, !tbaa !615
  %339 = fpext float %Vdipole.0 to double, !dbg !767
  %340 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %338, i8* getelementptr inbounds ([37 x i8]* @.str7, i64 0, i64 0), double %339) #9, !dbg !768
  br label %341, !dbg !768

; <label>:341                                     ; preds = %305, %315, %328, %337, %332
  %342 = fadd float %Vcharge.0, %Vdipole.0, !dbg !769
  %343 = load float* @ewald_LRcorrection.Vself, align 4, !dbg !770, !tbaa !395
  %344 = fsub float %342, %343, !dbg !771
  %345 = fsub float %344, %Vexcl.0.lcssa, !dbg !772
  ret float %345, !dbg !773
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #5

; Function Attrs: nounwind optsize readnone
declare double @sqrt(double) #3

; Function Attrs: nounwind optsize readnone
declare double @erf(double) #3

; Function Attrs: nounwind optsize readnone
declare double @exp(double) #3

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #6

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

declare float @fabsf(float)

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #7

attributes #0 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind optsize readnone }
attributes #9 = { nounwind optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!325, !326, !327}
!llvm.ident = !{!328}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !9, subprograms: !10, globals: !322, imports: !9)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/ewald_util.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 65, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/enums.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "eewg3D", value: 0)
!7 = !DIEnumerator(name: "eewg3DC", value: 1)
!8 = !DIEnumerator(name: "eewgNR", value: 2)
!9 = !{}
!10 = !{!11, !18, !32, !286, !299, !308, !315}
!11 = !DISubprogram(name: "__sigbits", scope: !12, file: !12, line: 114, type: !13, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @__sigbits, variables: !16)
!12 = !DIFile(filename: "/usr/include/signal.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!13 = !DISubroutineType(types: !14)
!14 = !{!15, !15}
!15 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!16 = !{!17}
!17 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__signo", arg: 1, scope: !11, file: !12, line: 114, type: !15)
!18 = !DISubprogram(name: "calc_ewaldcoeff", scope: !1, file: !1, line: 49, type: !19, isLocal: false, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped, isOptimized: true, function: float (float, float)* @calc_ewaldcoeff, variables: !24)
!19 = !DISubroutineType(types: !20)
!20 = !{!21, !21, !21}
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "real", file: !22, line: 87, baseType: !23)
!22 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/simple.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!23 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!24 = !{!25, !26, !27, !28, !29, !30, !31}
!25 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "rc", arg: 1, scope: !18, file: !1, line: 49, type: !21)
!26 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dtol", arg: 2, scope: !18, file: !1, line: 49, type: !21)
!27 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !18, file: !1, line: 51, type: !21)
!28 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "low", scope: !18, file: !1, line: 51, type: !21)
!29 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "high", scope: !18, file: !1, line: 51, type: !21)
!30 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !18, file: !1, line: 52, type: !15)
!31 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !18, file: !1, line: 52, type: !15)
!32 = !DISubprogram(name: "ewald_LRcorrection", scope: !1, file: !1, line: 75, type: !33, isLocal: false, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, function: float (%struct.__sFILE*, %struct.t_nsborder*, %struct.t_commrec*, %struct.t_forcerec*, float*, %struct.t_block*, [3 x float]*, [3 x float]*, float*, float, i32, float, [3 x float]*)* @ewald_LRcorrection, variables: !241)
!33 = !DISubroutineType(types: !34)
!34 = !{!21, !35, !98, !117, !128, !152, !230, !184, !240, !152, !21, !15, !21, !240}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64, align: 64)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !37, line: 153, baseType: !38)
!37 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!38 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !37, line: 122, size: 1216, align: 64, elements: !39)
!39 = !{!40, !43, !44, !45, !47, !48, !53, !54, !56, !60, !66, !76, !82, !83, !86, !87, !91, !95, !96, !97}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !38, file: !37, line: 123, baseType: !41, size: 64, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !38, file: !37, line: 124, baseType: !15, size: 32, align: 32, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !38, file: !37, line: 125, baseType: !15, size: 32, align: 32, offset: 96)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !38, file: !37, line: 126, baseType: !46, size: 16, align: 16, offset: 128)
!46 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !38, file: !37, line: 127, baseType: !46, size: 16, align: 16, offset: 144)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !38, file: !37, line: 128, baseType: !49, size: 128, align: 64, offset: 192)
!49 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !37, line: 88, size: 128, align: 64, elements: !50)
!50 = !{!51, !52}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !49, file: !37, line: 89, baseType: !41, size: 64, align: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !49, file: !37, line: 90, baseType: !15, size: 32, align: 32, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !38, file: !37, line: 129, baseType: !15, size: 32, align: 32, offset: 320)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !38, file: !37, line: 132, baseType: !55, size: 64, align: 64, offset: 384)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !38, file: !37, line: 133, baseType: !57, size: 64, align: 64, offset: 448)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!58 = !DISubroutineType(types: !59)
!59 = !{!15, !55}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !38, file: !37, line: 134, baseType: !61, size: 64, align: 64, offset: 512)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64, align: 64)
!62 = !DISubroutineType(types: !63)
!63 = !{!15, !55, !64, !15}
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!65 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !38, file: !37, line: 135, baseType: !67, size: 64, align: 64, offset: 576)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64, align: 64)
!68 = !DISubroutineType(types: !69)
!69 = !{!70, !55, !70, !15}
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !37, line: 77, baseType: !71)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !72, line: 71, baseType: !73)
!72 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !74, line: 46, baseType: !75)
!74 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!75 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !38, file: !37, line: 136, baseType: !77, size: 64, align: 64, offset: 640)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64, align: 64)
!78 = !DISubroutineType(types: !79)
!79 = !{!15, !55, !80, !15}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64, align: 64)
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !38, file: !37, line: 139, baseType: !49, size: 128, align: 64, offset: 704)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !38, file: !37, line: 140, baseType: !84, size: 64, align: 64, offset: 832)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, align: 64)
!85 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !37, line: 94, flags: DIFlagFwdDecl)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !38, file: !37, line: 141, baseType: !15, size: 32, align: 32, offset: 896)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !38, file: !37, line: 144, baseType: !88, size: 24, align: 8, offset: 928)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 24, align: 8, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 3)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !38, file: !37, line: 145, baseType: !92, size: 8, align: 8, offset: 952)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 8, align: 8, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 1)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !38, file: !37, line: 148, baseType: !49, size: 128, align: 64, offset: 960)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !38, file: !37, line: 151, baseType: !15, size: 32, align: 32, offset: 1088)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !38, file: !37, line: 152, baseType: !70, size: 64, align: 64, offset: 1152)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64, align: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_nsborder", file: !100, line: 59, baseType: !101)
!100 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/nsborder.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!101 = !DICompositeType(tag: DW_TAG_structure_type, file: !100, line: 36, size: 32992, align: 32, elements: !102)
!102 = !{!103, !104, !105, !106, !107, !108, !109, !110, !114, !115, !116}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "nodeid", scope: !101, file: !100, line: 37, baseType: !15, size: 32, align: 32)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "nnodes", scope: !101, file: !100, line: 38, baseType: !15, size: 32, align: 32, offset: 32)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "cgtotal", scope: !101, file: !100, line: 39, baseType: !15, size: 32, align: 32, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "natoms", scope: !101, file: !100, line: 40, baseType: !15, size: 32, align: 32, offset: 96)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "nstDlb", scope: !101, file: !100, line: 41, baseType: !15, size: 32, align: 32, offset: 128)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !101, file: !100, line: 43, baseType: !15, size: 32, align: 32, offset: 160)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "bshift", scope: !101, file: !100, line: 43, baseType: !15, size: 32, align: 32, offset: 192)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "homenr", scope: !101, file: !100, line: 50, baseType: !111, size: 8192, align: 32, offset: 224)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 8192, align: 32, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 256)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !101, file: !100, line: 51, baseType: !111, size: 8192, align: 32, offset: 8416)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "cgload", scope: !101, file: !100, line: 52, baseType: !111, size: 8192, align: 32, offset: 16608)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "workload", scope: !101, file: !100, line: 55, baseType: !111, size: 8192, align: 32, offset: 24800)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64, align: 64)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_commrec", file: !119, line: 40, baseType: !120)
!119 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/commrec.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!120 = !DICompositeType(tag: DW_TAG_structure_type, file: !119, line: 36, size: 192, align: 32, elements: !121)
!121 = !{!122, !123, !124, !125, !126, !127}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "nodeid", scope: !120, file: !119, line: 37, baseType: !15, size: 32, align: 32)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "nnodes", scope: !120, file: !119, line: 37, baseType: !15, size: 32, align: 32, offset: 32)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !120, file: !119, line: 38, baseType: !15, size: 32, align: 32, offset: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !120, file: !119, line: 38, baseType: !15, size: 32, align: 32, offset: 96)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "threadid", scope: !120, file: !119, line: 39, baseType: !15, size: 32, align: 32, offset: 128)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "nthreads", scope: !120, file: !119, line: 39, baseType: !15, size: 32, align: 32, offset: 160)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64, align: 64)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_forcerec", file: !130, line: 149, baseType: !131)
!130 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/forcerec.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!131 = !DICompositeType(tag: DW_TAG_structure_type, file: !130, line: 43, size: 22784, align: 64, elements: !132)
!132 = !{!133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !176, !177, !178, !179, !180, !182, !183, !186, !187, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "ePBC", scope: !131, file: !130, line: 45, baseType: !15, size: 32, align: 32)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "rlist", scope: !131, file: !130, line: 46, baseType: !21, size: 32, align: 32, offset: 32)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "rlistlong", scope: !131, file: !130, line: 46, baseType: !21, size: 32, align: 32, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "zsquare", scope: !131, file: !130, line: 49, baseType: !21, size: 32, align: 32, offset: 96)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !131, file: !130, line: 49, baseType: !21, size: 32, align: 32, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "epsilon_r", scope: !131, file: !130, line: 50, baseType: !21, size: 32, align: 32, offset: 160)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "epsfac", scope: !131, file: !130, line: 50, baseType: !21, size: 32, align: 32, offset: 192)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "bRF", scope: !131, file: !130, line: 53, baseType: !15, size: 32, align: 32, offset: 224)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "kappa", scope: !131, file: !130, line: 54, baseType: !21, size: 32, align: 32, offset: 256)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "k_rf", scope: !131, file: !130, line: 54, baseType: !21, size: 32, align: 32, offset: 288)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "c_rf", scope: !131, file: !130, line: 54, baseType: !21, size: 32, align: 32, offset: 320)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "avcsix", scope: !131, file: !130, line: 57, baseType: !21, size: 32, align: 32, offset: 352)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "fudgeQQ", scope: !131, file: !130, line: 60, baseType: !21, size: 32, align: 32, offset: 384)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "bcoultab", scope: !131, file: !130, line: 63, baseType: !15, size: 32, align: 32, offset: 416)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "bvdwtab", scope: !131, file: !130, line: 64, baseType: !15, size: 32, align: 32, offset: 448)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "rtab", scope: !131, file: !130, line: 65, baseType: !21, size: 32, align: 32, offset: 480)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "ntab", scope: !131, file: !130, line: 66, baseType: !15, size: 32, align: 32, offset: 512)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "tabscale", scope: !131, file: !130, line: 67, baseType: !21, size: 32, align: 32, offset: 544)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "coultab", scope: !131, file: !130, line: 69, baseType: !152, size: 64, align: 64, offset: 576)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64, align: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "vdwtab", scope: !131, file: !130, line: 70, baseType: !152, size: 64, align: 64, offset: 640)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "coulvdwtab", scope: !131, file: !130, line: 71, baseType: !152, size: 64, align: 64, offset: 704)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "coulvdw14tab", scope: !131, file: !130, line: 72, baseType: !152, size: 64, align: 64, offset: 768)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "rcoulomb_switch", scope: !131, file: !130, line: 75, baseType: !21, size: 32, align: 32, offset: 832)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "rcoulomb", scope: !131, file: !130, line: 75, baseType: !21, size: 32, align: 32, offset: 864)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "phi", scope: !131, file: !130, line: 76, baseType: !152, size: 64, align: 64, offset: 896)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "rvdw_switch", scope: !131, file: !130, line: 79, baseType: !21, size: 32, align: 32, offset: 960)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "rvdw", scope: !131, file: !130, line: 79, baseType: !21, size: 32, align: 32, offset: 992)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "bham_b_max", scope: !131, file: !130, line: 80, baseType: !21, size: 32, align: 32, offset: 1024)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "tabscale_exp", scope: !131, file: !130, line: 81, baseType: !21, size: 32, align: 32, offset: 1056)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "efep", scope: !131, file: !130, line: 84, baseType: !15, size: 32, align: 32, offset: 1088)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "sc_alpha", scope: !131, file: !130, line: 85, baseType: !21, size: 32, align: 32, offset: 1120)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "sc_sigma6", scope: !131, file: !130, line: 86, baseType: !21, size: 32, align: 32, offset: 1152)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "bSepDVDL", scope: !131, file: !130, line: 87, baseType: !15, size: 32, align: 32, offset: 1184)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "eeltype", scope: !131, file: !130, line: 90, baseType: !15, size: 32, align: 32, offset: 1216)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "vdwtype", scope: !131, file: !130, line: 91, baseType: !15, size: 32, align: 32, offset: 1248)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "cg0", scope: !131, file: !130, line: 92, baseType: !15, size: 32, align: 32, offset: 1280)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "hcg", scope: !131, file: !130, line: 92, baseType: !15, size: 32, align: 32, offset: 1312)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "ndelta", scope: !131, file: !130, line: 93, baseType: !15, size: 32, align: 32, offset: 1344)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "bSolvOpt", scope: !131, file: !130, line: 94, baseType: !15, size: 32, align: 32, offset: 1376)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nMNOMol", scope: !131, file: !130, line: 95, baseType: !15, size: 32, align: 32, offset: 1408)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nMNOav", scope: !131, file: !130, line: 96, baseType: !175, size: 96, align: 32, offset: 1440)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 96, align: 32, elements: !89)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "nWatMol", scope: !131, file: !130, line: 97, baseType: !15, size: 32, align: 32, offset: 1536)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "Dimension", scope: !131, file: !130, line: 98, baseType: !15, size: 32, align: 32, offset: 1568)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "bGrid", scope: !131, file: !130, line: 99, baseType: !15, size: 32, align: 32, offset: 1600)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "bDomDecomp", scope: !131, file: !130, line: 99, baseType: !15, size: 32, align: 32, offset: 1632)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "solvent_type", scope: !131, file: !130, line: 100, baseType: !181, size: 64, align: 64, offset: 1664)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "mno_index", scope: !131, file: !130, line: 101, baseType: !181, size: 64, align: 64, offset: 1728)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "cg_cm", scope: !131, file: !130, line: 102, baseType: !184, size: 64, align: 64, offset: 1792)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64, align: 64)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "rvec", file: !22, line: 101, baseType: !175)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "shift_vec", scope: !131, file: !130, line: 103, baseType: !184, size: 64, align: 64, offset: 1856)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "nlist_sr", scope: !131, file: !130, line: 108, baseType: !188, size: 9984, align: 64, offset: 1920)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 9984, align: 64, elements: !210)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_nblist", file: !190, line: 60, baseType: !191)
!190 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/nblist.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!191 = !DICompositeType(tag: DW_TAG_structure_type, file: !190, line: 36, size: 768, align: 64, elements: !192)
!192 = !{!193, !194, !195, !196, !197, !198, !199, !200, !203, !204, !205, !206, !207, !208, !209}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "il_code", scope: !191, file: !190, line: 37, baseType: !15, size: 32, align: 32)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "nri", scope: !191, file: !190, line: 39, baseType: !15, size: 32, align: 32, offset: 32)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "maxnri", scope: !191, file: !190, line: 39, baseType: !15, size: 32, align: 32, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "nrj", scope: !191, file: !190, line: 40, baseType: !15, size: 32, align: 32, offset: 96)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "maxnrj", scope: !191, file: !190, line: 40, baseType: !15, size: 32, align: 32, offset: 128)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !191, file: !190, line: 41, baseType: !15, size: 32, align: 32, offset: 160)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "solvent", scope: !191, file: !190, line: 42, baseType: !15, size: 32, align: 32, offset: 192)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "iinr", scope: !191, file: !190, line: 43, baseType: !201, size: 64, align: 64, offset: 256)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64, align: 64)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "atom_id", file: !22, line: 73, baseType: !15)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "gid", scope: !191, file: !190, line: 44, baseType: !181, size: 64, align: 64, offset: 320)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !191, file: !190, line: 45, baseType: !181, size: 64, align: 64, offset: 384)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "jindex", scope: !191, file: !190, line: 46, baseType: !181, size: 64, align: 64, offset: 448)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "jjnr", scope: !191, file: !190, line: 47, baseType: !201, size: 64, align: 64, offset: 512)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "nsatoms", scope: !191, file: !190, line: 48, baseType: !181, size: 64, align: 64, offset: 576)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "pad1", scope: !191, file: !190, line: 58, baseType: !15, size: 32, align: 32, offset: 640)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "pad2", scope: !191, file: !190, line: 58, baseType: !181, size: 64, align: 64, offset: 704)
!210 = !{!211}
!211 = !DISubrange(count: 13)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "nlist_lr", scope: !131, file: !130, line: 109, baseType: !188, size: 9984, align: 64, offset: 11904)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "bTwinRange", scope: !131, file: !130, line: 120, baseType: !15, size: 32, align: 32, offset: 21888)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "nlr", scope: !131, file: !130, line: 121, baseType: !15, size: 32, align: 32, offset: 21920)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "f_twin", scope: !131, file: !130, line: 122, baseType: !184, size: 64, align: 64, offset: 21952)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "fshift_twin", scope: !131, file: !130, line: 123, baseType: !184, size: 64, align: 64, offset: 22016)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "f_pme", scope: !131, file: !130, line: 126, baseType: !184, size: 64, align: 64, offset: 22080)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "bEwald", scope: !131, file: !130, line: 127, baseType: !15, size: 32, align: 32, offset: 22144)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "ewaldcoeff", scope: !131, file: !130, line: 128, baseType: !21, size: 32, align: 32, offset: 22176)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "fshift", scope: !131, file: !130, line: 131, baseType: !184, size: 64, align: 64, offset: 22208)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "nmol", scope: !131, file: !130, line: 134, baseType: !15, size: 32, align: 32, offset: 22272)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "mol_nr", scope: !131, file: !130, line: 135, baseType: !201, size: 64, align: 64, offset: 22336)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "mol_epot", scope: !131, file: !130, line: 136, baseType: !152, size: 64, align: 64, offset: 22400)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "nstcalc", scope: !131, file: !130, line: 137, baseType: !15, size: 32, align: 32, offset: 22464)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "ntype", scope: !131, file: !130, line: 140, baseType: !15, size: 32, align: 32, offset: 22496)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "bBHAM", scope: !131, file: !130, line: 141, baseType: !15, size: 32, align: 32, offset: 22528)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "nbfp", scope: !131, file: !130, line: 142, baseType: !152, size: 64, align: 64, offset: 22592)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "eg_excl", scope: !131, file: !130, line: 145, baseType: !181, size: 64, align: 64, offset: 22656)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "fc_stepsize", scope: !131, file: !130, line: 148, baseType: !21, size: 32, align: 32, offset: 22720)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64, align: 64)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_block", file: !232, line: 52, baseType: !233)
!232 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/block.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!233 = !DICompositeType(tag: DW_TAG_structure_type, file: !232, line: 36, size: 8448, align: 64, elements: !234)
!234 = !{!235, !236, !237, !238, !239}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "multinr", scope: !233, file: !232, line: 37, baseType: !111, size: 8192, align: 32)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !233, file: !232, line: 43, baseType: !15, size: 32, align: 32, offset: 8192)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !233, file: !232, line: 44, baseType: !201, size: 64, align: 64, offset: 8256)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "nra", scope: !233, file: !232, line: 45, baseType: !15, size: 32, align: 32, offset: 8320)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !233, file: !232, line: 46, baseType: !201, size: 64, align: 64, offset: 8384)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64, align: 64)
!241 = !{!242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285}
!242 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !32, file: !1, line: 75, type: !35)
!243 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nsb", arg: 2, scope: !32, file: !1, line: 75, type: !98)
!244 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cr", arg: 3, scope: !32, file: !1, line: 75, type: !117)
!245 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fr", arg: 4, scope: !32, file: !1, line: 75, type: !128)
!246 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "charge", arg: 5, scope: !32, file: !1, line: 76, type: !152)
!247 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "excl", arg: 6, scope: !32, file: !1, line: 76, type: !230)
!248 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 7, scope: !32, file: !1, line: 76, type: !184)
!249 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "box", arg: 8, scope: !32, file: !1, line: 77, type: !240)
!250 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mu_tot", arg: 9, scope: !32, file: !1, line: 77, type: !152)
!251 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "qsum", arg: 10, scope: !32, file: !1, line: 77, type: !21)
!252 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ewald_geometry", arg: 11, scope: !32, file: !1, line: 77, type: !15)
!253 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "epsilon_surface", arg: 12, scope: !32, file: !1, line: 78, type: !21)
!254 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lr_vir", arg: 13, scope: !32, file: !1, line: 78, type: !240)
!255 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !32, file: !1, line: 83, type: !15)
!256 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i1", scope: !32, file: !1, line: 83, type: !15)
!257 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i2", scope: !32, file: !1, line: 83, type: !15)
!258 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !32, file: !1, line: 83, type: !15)
!259 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !32, file: !1, line: 83, type: !15)
!260 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !32, file: !1, line: 83, type: !15)
!261 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iv", scope: !32, file: !1, line: 83, type: !15)
!262 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "jv", scope: !32, file: !1, line: 83, type: !15)
!263 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "AA", scope: !32, file: !1, line: 84, type: !201)
!264 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "q2sum", scope: !32, file: !1, line: 85, type: !265)
!265 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!266 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vc", scope: !32, file: !1, line: 86, type: !21)
!267 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "qi", scope: !32, file: !1, line: 86, type: !21)
!268 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dr", scope: !32, file: !1, line: 86, type: !21)
!269 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dr2", scope: !32, file: !1, line: 86, type: !21)
!270 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rinv", scope: !32, file: !1, line: 86, type: !21)
!271 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fscal", scope: !32, file: !1, line: 86, type: !21)
!272 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Vexcl", scope: !32, file: !1, line: 86, type: !21)
!273 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Vcharge", scope: !32, file: !1, line: 86, type: !21)
!274 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "Vdipole", scope: !32, file: !1, line: 86, type: !21)
!275 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rinv2", scope: !32, file: !1, line: 86, type: !21)
!276 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ewc", scope: !32, file: !1, line: 86, type: !21)
!277 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "df", scope: !32, file: !1, line: 87, type: !185)
!278 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dx", scope: !32, file: !1, line: 87, type: !185)
!279 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "f_pme", scope: !32, file: !1, line: 88, type: !184)
!280 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vol", scope: !32, file: !1, line: 89, type: !21)
!281 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dipole_coeff", scope: !32, file: !1, line: 90, type: !21)
!282 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "qq", scope: !32, file: !1, line: 90, type: !21)
!283 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "isp", scope: !32, file: !1, line: 98, type: !265)
!284 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "start", scope: !32, file: !1, line: 100, type: !15)
!285 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "end", scope: !32, file: !1, line: 101, type: !15)
!286 = !DISubprogram(name: "rvec_sub", scope: !287, file: !287, line: 244, type: !288, isLocal: true, isDefinition: true, scopeLine: 245, flags: DIFlagPrototyped, isOptimized: true, variables: !292)
!287 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/vec.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!288 = !DISubroutineType(types: !289)
!289 = !{null, !290, !290, !152}
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64, align: 64)
!291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!292 = !{!293, !294, !295, !296, !297, !298}
!293 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !286, file: !287, line: 244, type: !290)
!294 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !286, file: !287, line: 244, type: !290)
!295 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 3, scope: !286, file: !287, line: 244, type: !152)
!296 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !286, file: !287, line: 246, type: !21)
!297 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !286, file: !287, line: 246, type: !21)
!298 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "z", scope: !286, file: !287, line: 246, type: !21)
!299 = !DISubprogram(name: "rvec_dec", scope: !287, file: !287, line: 257, type: !300, isLocal: true, isDefinition: true, scopeLine: 258, flags: DIFlagPrototyped, isOptimized: true, variables: !302)
!300 = !DISubroutineType(types: !301)
!301 = !{null, !152, !152}
!302 = !{!303, !304, !305, !306, !307}
!303 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !299, file: !287, line: 257, type: !152)
!304 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !299, file: !287, line: 257, type: !152)
!305 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !299, file: !287, line: 259, type: !21)
!306 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !299, file: !287, line: 259, type: !21)
!307 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "z", scope: !299, file: !287, line: 259, type: !21)
!308 = !DISubprogram(name: "rvec_inc", scope: !287, file: !287, line: 231, type: !300, isLocal: true, isDefinition: true, scopeLine: 232, flags: DIFlagPrototyped, isOptimized: true, variables: !309)
!309 = !{!310, !311, !312, !313, !314}
!310 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !308, file: !287, line: 231, type: !152)
!311 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !308, file: !287, line: 231, type: !152)
!312 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !308, file: !287, line: 233, type: !21)
!313 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !308, file: !287, line: 233, type: !21)
!314 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "z", scope: !308, file: !287, line: 233, type: !21)
!315 = !DISubprogram(name: "svmul", scope: !287, file: !287, line: 304, type: !316, isLocal: true, isDefinition: true, scopeLine: 305, flags: DIFlagPrototyped, isOptimized: true, variables: !318)
!316 = !DISubroutineType(types: !317)
!317 = !{null, !21, !152, !152}
!318 = !{!319, !320, !321}
!319 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !315, file: !287, line: 304, type: !21)
!320 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v1", arg: 2, scope: !315, file: !287, line: 304, type: !152)
!321 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v2", arg: 3, scope: !315, file: !287, line: 304, type: !152)
!322 = !{!323, !324}
!323 = !DIGlobalVariable(name: "bFirst", scope: !32, file: !1, line: 80, type: !15, isLocal: true, isDefinition: true)
!324 = !DIGlobalVariable(name: "Vself", scope: !32, file: !1, line: 81, type: !21, isLocal: true, isDefinition: true, variable: float* @ewald_LRcorrection.Vself)
!325 = !{i32 2, !"Dwarf Version", i32 2}
!326 = !{i32 2, !"Debug Info Version", i32 700000003}
!327 = !{i32 1, !"PIC Level", i32 2}
!328 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!329 = !DIExpression()
!330 = !DILocation(line: 114, column: 15, scope: !11)
!331 = !DILocation(line: 116, column: 20, scope: !11)
!332 = !DILocation(line: 116, column: 12, scope: !11)
!333 = !DILocation(line: 116, column: 57, scope: !11)
!334 = !DILocation(line: 116, column: 45, scope: !11)
!335 = !DILocation(line: 116, column: 5, scope: !11)
!336 = !DILocation(line: 49, column: 27, scope: !18)
!337 = !DILocation(line: 49, column: 35, scope: !18)
!338 = !DILocation(line: 51, column: 8, scope: !18)
!339 = !DILocation(line: 52, column: 9, scope: !18)
!340 = !DILocation(line: 58, column: 25, scope: !18)
!341 = !DILocation(line: 55, column: 3, scope: !18)
!342 = !DILocation(line: 56, column: 6, scope: !343)
!343 = distinct !DILexicalBlock(scope: !18, file: !1, line: 55, column: 6)
!344 = !DILocation(line: 57, column: 6, scope: !343)
!345 = !DILocation(line: 58, column: 18, scope: !18)
!346 = !DILocation(line: 58, column: 17, scope: !18)
!347 = !DILocation(line: 58, column: 12, scope: !18)
!348 = !DILocation(line: 58, column: 23, scope: !18)
!349 = !DILocation(line: 58, column: 3, scope: !343)
!350 = !DILocation(line: 51, column: 12, scope: !18)
!351 = !DILocation(line: 51, column: 16, scope: !18)
!352 = !DILocation(line: 63, column: 12, scope: !353)
!353 = distinct !DILexicalBlock(scope: !354, file: !1, line: 63, column: 3)
!354 = distinct !DILexicalBlock(scope: !18, file: !1, line: 63, column: 3)
!355 = !DILocation(line: 63, column: 3, scope: !354)
!356 = !DILocation(line: 64, column: 11, scope: !357)
!357 = distinct !DILexicalBlock(scope: !353, file: !1, line: 63, column: 20)
!358 = !DILocation(line: 64, column: 17, scope: !357)
!359 = !DILocation(line: 65, column: 15, scope: !360)
!360 = distinct !DILexicalBlock(scope: !357, file: !1, line: 65, column: 9)
!361 = !DILocation(line: 65, column: 14, scope: !360)
!362 = !DILocation(line: 65, column: 9, scope: !360)
!363 = !DILocation(line: 65, column: 20, scope: !360)
!364 = !DILocation(line: 66, column: 7, scope: !360)
!365 = !DILocation(line: 63, column: 16, scope: !353)
!366 = !DILocation(line: 70, column: 3, scope: !18)
!367 = !DILocation(line: 75, column: 31, scope: !32)
!368 = !DILocation(line: 75, column: 46, scope: !32)
!369 = !DILocation(line: 75, column: 61, scope: !32)
!370 = !DILocation(line: 75, column: 76, scope: !32)
!371 = !DILocation(line: 76, column: 9, scope: !32)
!372 = !DILocation(line: 76, column: 27, scope: !32)
!373 = !DILocation(line: 76, column: 37, scope: !32)
!374 = !DILocation(line: 77, column: 11, scope: !32)
!375 = !DILocation(line: 77, column: 20, scope: !32)
!376 = !DILocation(line: 77, column: 32, scope: !32)
!377 = !DILocation(line: 77, column: 42, scope: !32)
!378 = !DILocation(line: 78, column: 9, scope: !32)
!379 = !DILocation(line: 78, column: 32, scope: !32)
!380 = !DILocation(line: 86, column: 71, scope: !32)
!381 = !{!382, !386, i64 2772}
!382 = !{!"", !383, i64 0, !386, i64 4, !386, i64 8, !386, i64 12, !386, i64 16, !386, i64 20, !386, i64 24, !383, i64 28, !386, i64 32, !386, i64 36, !386, i64 40, !386, i64 44, !386, i64 48, !383, i64 52, !383, i64 56, !386, i64 60, !383, i64 64, !386, i64 68, !387, i64 72, !387, i64 80, !387, i64 88, !387, i64 96, !386, i64 104, !386, i64 108, !387, i64 112, !386, i64 120, !386, i64 124, !386, i64 128, !386, i64 132, !383, i64 136, !386, i64 140, !386, i64 144, !383, i64 148, !383, i64 152, !383, i64 156, !383, i64 160, !383, i64 164, !383, i64 168, !383, i64 172, !383, i64 176, !384, i64 180, !383, i64 192, !383, i64 196, !383, i64 200, !383, i64 204, !387, i64 208, !387, i64 216, !387, i64 224, !387, i64 232, !384, i64 240, !384, i64 1488, !383, i64 2736, !383, i64 2740, !387, i64 2744, !387, i64 2752, !387, i64 2760, !383, i64 2768, !386, i64 2772, !387, i64 2776, !383, i64 2784, !387, i64 2792, !387, i64 2800, !383, i64 2808, !383, i64 2812, !383, i64 2816, !387, i64 2824, !387, i64 2832, !386, i64 2840}
!383 = !{!"int", !384, i64 0}
!384 = !{!"omnipotent char", !385, i64 0}
!385 = !{!"Simple C/C++ TBAA"}
!386 = !{!"float", !384, i64 0}
!387 = !{!"any pointer", !384, i64 0}
!388 = !DILocation(line: 86, column: 63, scope: !32)
!389 = !DILocation(line: 87, column: 11, scope: !32)
!390 = !DILocation(line: 87, column: 14, scope: !32)
!391 = !DILocation(line: 88, column: 22, scope: !32)
!392 = !{!382, !387, i64 2760}
!393 = !DILocation(line: 88, column: 12, scope: !32)
!394 = !DILocation(line: 89, column: 17, scope: !32)
!395 = !{!386, !386, i64 0}
!396 = !DILocation(line: 89, column: 29, scope: !32)
!397 = !DILocation(line: 89, column: 28, scope: !32)
!398 = !DILocation(line: 89, column: 41, scope: !32)
!399 = !DILocation(line: 89, column: 40, scope: !32)
!400 = !DILocation(line: 89, column: 11, scope: !32)
!401 = !DILocation(line: 98, column: 11, scope: !32)
!402 = !DILocation(line: 100, column: 19, scope: !32)
!403 = !{!404, !383, i64 0}
!404 = !{!"", !383, i64 0, !383, i64 4, !383, i64 8, !383, i64 12, !383, i64 16, !383, i64 20, !383, i64 24, !384, i64 28, !384, i64 1052, !384, i64 2076, !384, i64 3100}
!405 = !{!383, !383, i64 0}
!406 = !DILocation(line: 100, column: 11, scope: !32)
!407 = !DILocation(line: 101, column: 25, scope: !32)
!408 = !DILocation(line: 101, column: 24, scope: !32)
!409 = !DILocation(line: 101, column: 11, scope: !32)
!410 = !DILocation(line: 103, column: 17, scope: !32)
!411 = !{!412, !387, i64 1048}
!412 = !{!"", !384, i64 0, !383, i64 1024, !387, i64 1032, !383, i64 1040, !387, i64 1048}
!413 = !DILocation(line: 84, column: 12, scope: !32)
!414 = !DILocation(line: 86, column: 35, scope: !32)
!415 = !DILocation(line: 85, column: 11, scope: !32)
!416 = !DILocation(line: 86, column: 49, scope: !32)
!417 = !DILocation(line: 86, column: 41, scope: !32)
!418 = !DILocation(line: 109, column: 7, scope: !419)
!419 = distinct !DILexicalBlock(scope: !32, file: !1, line: 109, column: 7)
!420 = !DILocation(line: 109, column: 29, scope: !419)
!421 = !DILocation(line: 109, column: 7, scope: !32)
!422 = !DILocation(line: 112, column: 5, scope: !419)
!423 = !DILocation(line: 114, column: 43, scope: !424)
!424 = distinct !DILexicalBlock(scope: !419, file: !1, line: 112, column: 28)
!425 = !DILocation(line: 114, column: 59, scope: !424)
!426 = !DILocation(line: 114, column: 62, scope: !424)
!427 = !DILocation(line: 114, column: 40, scope: !424)
!428 = !DILocation(line: 114, column: 39, scope: !424)
!429 = !DILocation(line: 114, column: 20, scope: !424)
!430 = !DILocation(line: 90, column: 11, scope: !32)
!431 = !DILocation(line: 115, column: 7, scope: !424)
!432 = !DILocation(line: 117, column: 40, scope: !424)
!433 = !DILocation(line: 117, column: 39, scope: !424)
!434 = !DILocation(line: 117, column: 20, scope: !424)
!435 = !DILocation(line: 118, column: 7, scope: !424)
!436 = !DILocation(line: 120, column: 7, scope: !424)
!437 = !DILocation(line: 122, column: 7, scope: !424)
!438 = !DILocation(line: 83, column: 11, scope: !32)
!439 = !DILocation(line: 125, column: 18, scope: !440)
!440 = distinct !DILexicalBlock(scope: !441, file: !1, line: 125, column: 3)
!441 = distinct !DILexicalBlock(scope: !32, file: !1, line: 125, column: 3)
!442 = !DILocation(line: 125, column: 3, scope: !441)
!443 = !DILocation(line: 128, column: 19, scope: !444)
!444 = distinct !DILexicalBlock(scope: !440, file: !1, line: 125, column: 30)
!445 = !DILocation(line: 219, column: 15, scope: !446)
!446 = distinct !DILexicalBlock(scope: !444, file: !1, line: 219, column: 10)
!447 = !DILocation(line: 219, column: 10, scope: !446)
!448 = !DILocation(line: 219, column: 28, scope: !446)
!449 = !DILocation(line: 224, column: 26, scope: !450)
!450 = distinct !DILexicalBlock(scope: !451, file: !1, line: 223, column: 37)
!451 = distinct !DILexicalBlock(scope: !452, file: !1, line: 223, column: 12)
!452 = distinct !DILexicalBlock(scope: !453, file: !1, line: 220, column: 5)
!453 = distinct !DILexicalBlock(scope: !446, file: !1, line: 219, column: 43)
!454 = !DILocation(line: 224, column: 39, scope: !450)
!455 = !DILocation(line: 224, column: 50, scope: !450)
!456 = !DILocation(line: 146, column: 23, scope: !457)
!457 = distinct !DILexicalBlock(scope: !458, file: !1, line: 144, column: 31)
!458 = distinct !DILexicalBlock(scope: !459, file: !1, line: 144, column: 6)
!459 = distinct !DILexicalBlock(scope: !460, file: !1, line: 142, column: 18)
!460 = distinct !DILexicalBlock(scope: !461, file: !1, line: 142, column: 11)
!461 = distinct !DILexicalBlock(scope: !462, file: !1, line: 133, column: 30)
!462 = distinct !DILexicalBlock(scope: !463, file: !1, line: 133, column: 7)
!463 = distinct !DILexicalBlock(scope: !444, file: !1, line: 133, column: 7)
!464 = !DILocation(line: 253, column: 3, scope: !286, inlinedAt: !465)
!465 = distinct !DILocation(line: 146, column: 4, scope: !457)
!466 = !DILocation(line: 254, column: 3, scope: !286, inlinedAt: !465)
!467 = !DILocation(line: 197, column: 31, scope: !457)
!468 = !DILocation(line: 197, column: 47, scope: !457)
!469 = !DILocation(line: 203, column: 19, scope: !457)
!470 = !DILocation(line: 307, column: 3, scope: !315, inlinedAt: !471)
!471 = distinct !DILocation(line: 203, column: 4, scope: !457)
!472 = !DILocation(line: 308, column: 3, scope: !315, inlinedAt: !471)
!473 = !DILocation(line: 127, column: 13, scope: !444)
!474 = !DILocation(line: 127, column: 22, scope: !444)
!475 = !DILocation(line: 127, column: 23, scope: !444)
!476 = !DILocation(line: 86, column: 14, scope: !32)
!477 = !{!412, !387, i64 1032}
!478 = !DILocation(line: 128, column: 13, scope: !444)
!479 = !DILocation(line: 83, column: 13, scope: !32)
!480 = !DILocation(line: 129, column: 13, scope: !444)
!481 = !DILocation(line: 83, column: 16, scope: !32)
!482 = !DILocation(line: 130, column: 25, scope: !444)
!483 = !DILocation(line: 130, column: 16, scope: !444)
!484 = !DILocation(line: 130, column: 13, scope: !444)
!485 = !DILocation(line: 83, column: 19, scope: !32)
!486 = !DILocation(line: 133, column: 19, scope: !462)
!487 = !DILocation(line: 133, column: 7, scope: !463)
!488 = !DILocation(line: 146, column: 13, scope: !457)
!489 = !DILocation(line: 249, column: 5, scope: !286, inlinedAt: !465)
!490 = !DILocation(line: 250, column: 5, scope: !286, inlinedAt: !465)
!491 = !DILocation(line: 208, column: 13, scope: !457)
!492 = !DILocation(line: 262, column: 5, scope: !299, inlinedAt: !493)
!493 = distinct !DILocation(line: 208, column: 4, scope: !457)
!494 = !DILocation(line: 263, column: 5, scope: !299, inlinedAt: !493)
!495 = !DILocation(line: 134, column: 6, scope: !461)
!496 = !DILocation(line: 83, column: 21, scope: !32)
!497 = !DILocation(line: 142, column: 13, scope: !460)
!498 = !DILocation(line: 142, column: 11, scope: !461)
!499 = !DILocation(line: 143, column: 10, scope: !459)
!500 = !DILocation(line: 143, column: 9, scope: !459)
!501 = !DILocation(line: 90, column: 24, scope: !32)
!502 = !DILocation(line: 144, column: 11, scope: !458)
!503 = !DILocation(line: 144, column: 6, scope: !458)
!504 = !DILocation(line: 144, column: 15, scope: !458)
!505 = !DILocation(line: 144, column: 6, scope: !459)
!506 = !DILocation(line: 86, column: 20, scope: !32)
!507 = !DILocation(line: 146, column: 18, scope: !457)
!508 = !DILocation(line: 244, column: 40, scope: !286, inlinedAt: !465)
!509 = !DILocation(line: 244, column: 53, scope: !286, inlinedAt: !465)
!510 = !DILocation(line: 244, column: 60, scope: !286, inlinedAt: !465)
!511 = !DILocation(line: 248, column: 5, scope: !286, inlinedAt: !465)
!512 = !DILocation(line: 248, column: 11, scope: !286, inlinedAt: !465)
!513 = !DILocation(line: 248, column: 10, scope: !286, inlinedAt: !465)
!514 = !DILocation(line: 246, column: 8, scope: !286, inlinedAt: !465)
!515 = !DILocation(line: 249, column: 11, scope: !286, inlinedAt: !465)
!516 = !DILocation(line: 249, column: 10, scope: !286, inlinedAt: !465)
!517 = !DILocation(line: 246, column: 10, scope: !286, inlinedAt: !465)
!518 = !DILocation(line: 250, column: 11, scope: !286, inlinedAt: !465)
!519 = !DILocation(line: 250, column: 10, scope: !286, inlinedAt: !465)
!520 = !DILocation(line: 246, column: 12, scope: !286, inlinedAt: !465)
!521 = !DILocation(line: 252, column: 8, scope: !286, inlinedAt: !465)
!522 = !DILocation(line: 253, column: 8, scope: !286, inlinedAt: !465)
!523 = !DILocation(line: 254, column: 8, scope: !286, inlinedAt: !465)
!524 = !DILocation(line: 83, column: 23, scope: !32)
!525 = !DILocation(line: 147, column: 4, scope: !526)
!526 = distinct !DILexicalBlock(scope: !457, file: !1, line: 147, column: 4)
!527 = !DILocation(line: 148, column: 10, scope: !528)
!528 = distinct !DILexicalBlock(scope: !529, file: !1, line: 148, column: 10)
!529 = distinct !DILexicalBlock(scope: !530, file: !1, line: 147, column: 28)
!530 = distinct !DILexicalBlock(scope: !526, file: !1, line: 147, column: 4)
!531 = !DILocation(line: 148, column: 22, scope: !528)
!532 = !DILocation(line: 148, column: 21, scope: !528)
!533 = !DILocation(line: 148, column: 16, scope: !528)
!534 = !DILocation(line: 148, column: 10, scope: !529)
!535 = !DILocation(line: 149, column: 20, scope: !528)
!536 = !DILocation(line: 257, column: 34, scope: !299, inlinedAt: !537)
!537 = distinct !DILocation(line: 149, column: 8, scope: !528)
!538 = !DILocation(line: 257, column: 41, scope: !299, inlinedAt: !537)
!539 = !DILocation(line: 261, column: 11, scope: !299, inlinedAt: !537)
!540 = !DILocation(line: 261, column: 10, scope: !299, inlinedAt: !537)
!541 = !DILocation(line: 259, column: 8, scope: !299, inlinedAt: !537)
!542 = !DILocation(line: 262, column: 11, scope: !299, inlinedAt: !537)
!543 = !DILocation(line: 262, column: 10, scope: !299, inlinedAt: !537)
!544 = !DILocation(line: 259, column: 10, scope: !299, inlinedAt: !537)
!545 = !DILocation(line: 263, column: 11, scope: !299, inlinedAt: !537)
!546 = !DILocation(line: 263, column: 10, scope: !299, inlinedAt: !537)
!547 = !DILocation(line: 259, column: 12, scope: !299, inlinedAt: !537)
!548 = !DILocation(line: 265, column: 8, scope: !299, inlinedAt: !537)
!549 = !DILocation(line: 266, column: 8, scope: !299, inlinedAt: !537)
!550 = !DILocation(line: 267, column: 8, scope: !299, inlinedAt: !537)
!551 = !DILocation(line: 149, column: 8, scope: !528)
!552 = !DILocation(line: 150, column: 27, scope: !553)
!553 = distinct !DILexicalBlock(scope: !528, file: !1, line: 150, column: 15)
!554 = !DILocation(line: 150, column: 21, scope: !553)
!555 = !DILocation(line: 150, column: 15, scope: !528)
!556 = !DILocation(line: 151, column: 20, scope: !553)
!557 = !DILocation(line: 231, column: 34, scope: !308, inlinedAt: !558)
!558 = distinct !DILocation(line: 151, column: 8, scope: !553)
!559 = !DILocation(line: 231, column: 41, scope: !308, inlinedAt: !558)
!560 = !DILocation(line: 235, column: 11, scope: !308, inlinedAt: !558)
!561 = !DILocation(line: 235, column: 10, scope: !308, inlinedAt: !558)
!562 = !DILocation(line: 233, column: 8, scope: !308, inlinedAt: !558)
!563 = !DILocation(line: 236, column: 11, scope: !308, inlinedAt: !558)
!564 = !DILocation(line: 236, column: 10, scope: !308, inlinedAt: !558)
!565 = !DILocation(line: 233, column: 10, scope: !308, inlinedAt: !558)
!566 = !DILocation(line: 237, column: 11, scope: !308, inlinedAt: !558)
!567 = !DILocation(line: 237, column: 10, scope: !308, inlinedAt: !558)
!568 = !DILocation(line: 233, column: 12, scope: !308, inlinedAt: !558)
!569 = !DILocation(line: 239, column: 8, scope: !308, inlinedAt: !558)
!570 = !DILocation(line: 240, column: 8, scope: !308, inlinedAt: !558)
!571 = !DILocation(line: 241, column: 8, scope: !308, inlinedAt: !558)
!572 = !DILocation(line: 151, column: 8, scope: !553)
!573 = !DILocation(line: 153, column: 14, scope: !529)
!574 = !DILocation(line: 153, column: 19, scope: !529)
!575 = !DILocation(line: 153, column: 11, scope: !529)
!576 = !DILocation(line: 147, column: 18, scope: !530)
!577 = !DILocation(line: 166, column: 24, scope: !457)
!578 = !DILocation(line: 86, column: 24, scope: !32)
!579 = !DILocation(line: 167, column: 28, scope: !457)
!580 = !DILocation(line: 86, column: 57, scope: !32)
!581 = !DILocation(line: 168, column: 28, scope: !457)
!582 = !DILocation(line: 168, column: 24, scope: !457)
!583 = !DILocation(line: 86, column: 17, scope: !32)
!584 = !DILocation(line: 195, column: 24, scope: !457)
!585 = !DILocation(line: 195, column: 21, scope: !457)
!586 = !DILocation(line: 195, column: 17, scope: !457)
!587 = !DILocation(line: 195, column: 16, scope: !457)
!588 = !DILocation(line: 195, column: 28, scope: !457)
!589 = !DILocation(line: 195, column: 14, scope: !457)
!590 = !DILocation(line: 86, column: 11, scope: !32)
!591 = !DILocation(line: 196, column: 11, scope: !457)
!592 = !DILocation(line: 197, column: 14, scope: !457)
!593 = !DILocation(line: 197, column: 21, scope: !457)
!594 = !DILocation(line: 197, column: 27, scope: !457)
!595 = !DILocation(line: 197, column: 30, scope: !457)
!596 = !DILocation(line: 197, column: 34, scope: !457)
!597 = !DILocation(line: 197, column: 51, scope: !457)
!598 = !DILocation(line: 197, column: 43, scope: !457)
!599 = !DILocation(line: 197, column: 39, scope: !457)
!600 = !DILocation(line: 197, column: 38, scope: !457)
!601 = !DILocation(line: 197, column: 23, scope: !457)
!602 = !DILocation(line: 197, column: 19, scope: !457)
!603 = !DILocation(line: 86, column: 29, scope: !32)
!604 = !DILocation(line: 304, column: 31, scope: !315, inlinedAt: !471)
!605 = !DILocation(line: 304, column: 38, scope: !315, inlinedAt: !471)
!606 = !DILocation(line: 304, column: 46, scope: !315, inlinedAt: !471)
!607 = !DILocation(line: 306, column: 11, scope: !315, inlinedAt: !471)
!608 = !DILocation(line: 306, column: 9, scope: !315, inlinedAt: !471)
!609 = !DILocation(line: 307, column: 11, scope: !315, inlinedAt: !471)
!610 = !DILocation(line: 307, column: 9, scope: !315, inlinedAt: !471)
!611 = !DILocation(line: 308, column: 11, scope: !315, inlinedAt: !471)
!612 = !DILocation(line: 308, column: 9, scope: !315, inlinedAt: !471)
!613 = !DILocation(line: 204, column: 8, scope: !614)
!614 = distinct !DILexicalBlock(scope: !457, file: !1, line: 204, column: 8)
!615 = !{!387, !387, i64 0}
!616 = !DILocation(line: 204, column: 8, scope: !457)
!617 = !DILocation(line: 206, column: 7, scope: !614)
!618 = !DILocation(line: 206, column: 10, scope: !614)
!619 = !DILocation(line: 206, column: 16, scope: !614)
!620 = !DILocation(line: 206, column: 23, scope: !614)
!621 = !DILocation(line: 206, column: 30, scope: !614)
!622 = !DILocation(line: 205, column: 6, scope: !614)
!623 = !DILocation(line: 207, column: 13, scope: !457)
!624 = !DILocation(line: 231, column: 34, scope: !308, inlinedAt: !625)
!625 = distinct !DILocation(line: 207, column: 4, scope: !457)
!626 = !DILocation(line: 231, column: 41, scope: !308, inlinedAt: !625)
!627 = !DILocation(line: 235, column: 5, scope: !308, inlinedAt: !625)
!628 = !DILocation(line: 235, column: 10, scope: !308, inlinedAt: !625)
!629 = !DILocation(line: 233, column: 8, scope: !308, inlinedAt: !625)
!630 = !DILocation(line: 236, column: 5, scope: !308, inlinedAt: !625)
!631 = !DILocation(line: 236, column: 10, scope: !308, inlinedAt: !625)
!632 = !DILocation(line: 233, column: 10, scope: !308, inlinedAt: !625)
!633 = !DILocation(line: 237, column: 5, scope: !308, inlinedAt: !625)
!634 = !DILocation(line: 237, column: 10, scope: !308, inlinedAt: !625)
!635 = !DILocation(line: 233, column: 12, scope: !308, inlinedAt: !625)
!636 = !DILocation(line: 239, column: 8, scope: !308, inlinedAt: !625)
!637 = !DILocation(line: 240, column: 8, scope: !308, inlinedAt: !625)
!638 = !DILocation(line: 241, column: 8, scope: !308, inlinedAt: !625)
!639 = !DILocation(line: 257, column: 34, scope: !299, inlinedAt: !493)
!640 = !DILocation(line: 257, column: 41, scope: !299, inlinedAt: !493)
!641 = !DILocation(line: 261, column: 5, scope: !299, inlinedAt: !493)
!642 = !DILocation(line: 261, column: 10, scope: !299, inlinedAt: !493)
!643 = !DILocation(line: 259, column: 8, scope: !299, inlinedAt: !493)
!644 = !DILocation(line: 262, column: 10, scope: !299, inlinedAt: !493)
!645 = !DILocation(line: 259, column: 10, scope: !299, inlinedAt: !493)
!646 = !DILocation(line: 263, column: 10, scope: !299, inlinedAt: !493)
!647 = !DILocation(line: 259, column: 12, scope: !299, inlinedAt: !493)
!648 = !DILocation(line: 265, column: 8, scope: !299, inlinedAt: !493)
!649 = !DILocation(line: 266, column: 8, scope: !299, inlinedAt: !493)
!650 = !DILocation(line: 267, column: 8, scope: !299, inlinedAt: !493)
!651 = !DILocation(line: 83, column: 25, scope: !32)
!652 = !DILocation(line: 209, column: 4, scope: !653)
!653 = distinct !DILexicalBlock(scope: !457, file: !1, line: 209, column: 4)
!654 = !DILocation(line: 211, column: 28, scope: !655)
!655 = distinct !DILexicalBlock(scope: !656, file: !1, line: 210, column: 6)
!656 = distinct !DILexicalBlock(scope: !657, file: !1, line: 210, column: 6)
!657 = distinct !DILexicalBlock(scope: !653, file: !1, line: 209, column: 4)
!658 = !DILocation(line: 211, column: 27, scope: !655)
!659 = !DILocation(line: 210, column: 6, scope: !656)
!660 = !DILocation(line: 211, column: 35, scope: !655)
!661 = !DILocation(line: 211, column: 34, scope: !655)
!662 = !DILocation(line: 211, column: 8, scope: !655)
!663 = !DILocation(line: 211, column: 22, scope: !655)
!664 = !DILocation(line: 219, column: 10, scope: !444)
!665 = !DILocation(line: 220, column: 5, scope: !453)
!666 = !DILocation(line: 222, column: 46, scope: !667)
!667 = distinct !DILexicalBlock(scope: !668, file: !1, line: 221, column: 4)
!668 = distinct !DILexicalBlock(scope: !669, file: !1, line: 221, column: 4)
!669 = distinct !DILexicalBlock(scope: !452, file: !1, line: 220, column: 29)
!670 = !DILocation(line: 222, column: 45, scope: !667)
!671 = !DILocation(line: 222, column: 56, scope: !667)
!672 = !DILocation(line: 222, column: 55, scope: !667)
!673 = !DILocation(line: 222, column: 6, scope: !667)
!674 = !DILocation(line: 222, column: 17, scope: !667)
!675 = !DILocation(line: 221, column: 4, scope: !668)
!676 = !DILocation(line: 224, column: 49, scope: !450)
!677 = !DILocation(line: 224, column: 61, scope: !450)
!678 = !DILocation(line: 224, column: 60, scope: !450)
!679 = !DILocation(line: 224, column: 6, scope: !450)
!680 = !DILocation(line: 224, column: 21, scope: !450)
!681 = !DILocation(line: 225, column: 2, scope: !450)
!682 = !DILocation(line: 230, column: 6, scope: !683)
!683 = distinct !DILexicalBlock(scope: !32, file: !1, line: 230, column: 6)
!684 = !{!685, !383, i64 0}
!685 = !{!"", !383, i64 0, !383, i64 4, !383, i64 8, !383, i64 12, !383, i64 16, !383, i64 20}
!686 = !{!685, !383, i64 16}
!687 = !DILocation(line: 230, column: 6, scope: !32)
!688 = !DILocation(line: 233, column: 12, scope: !689)
!689 = distinct !DILexicalBlock(scope: !683, file: !1, line: 230, column: 18)
!690 = !DILocation(line: 233, column: 8, scope: !689)
!691 = !DILocation(line: 233, column: 17, scope: !689)
!692 = !DILocation(line: 233, column: 22, scope: !689)
!693 = !DILocation(line: 233, column: 23, scope: !689)
!694 = !DILocation(line: 233, column: 41, scope: !689)
!695 = !DILocation(line: 233, column: 40, scope: !689)
!696 = !DILocation(line: 233, column: 44, scope: !689)
!697 = !DILocation(line: 233, column: 49, scope: !689)
!698 = !DILocation(line: 233, column: 48, scope: !689)
!699 = !DILocation(line: 233, column: 52, scope: !689)
!700 = !DILocation(line: 233, column: 35, scope: !689)
!701 = !DILocation(line: 234, column: 5, scope: !702)
!702 = distinct !DILexicalBlock(scope: !689, file: !1, line: 234, column: 5)
!703 = !DILocation(line: 235, column: 7, scope: !704)
!704 = distinct !DILexicalBlock(scope: !702, file: !1, line: 234, column: 5)
!705 = !DILocation(line: 235, column: 21, scope: !704)
!706 = !DILocation(line: 236, column: 17, scope: !689)
!707 = !DILocation(line: 243, column: 13, scope: !708)
!708 = distinct !DILexicalBlock(scope: !689, file: !1, line: 243, column: 8)
!709 = !DILocation(line: 243, column: 8, scope: !708)
!710 = !DILocation(line: 243, column: 26, scope: !708)
!711 = !DILocation(line: 243, column: 8, scope: !689)
!712 = !DILocation(line: 244, column: 10, scope: !713)
!713 = distinct !DILexicalBlock(scope: !708, file: !1, line: 243, column: 41)
!714 = !DILocation(line: 245, column: 22, scope: !715)
!715 = distinct !DILexicalBlock(scope: !713, file: !1, line: 244, column: 10)
!716 = !DILocation(line: 245, column: 32, scope: !715)
!717 = !DILocation(line: 246, column: 5, scope: !715)
!718 = !DILocation(line: 246, column: 15, scope: !715)
!719 = !DILocation(line: 246, column: 27, scope: !715)
!720 = !DILocation(line: 246, column: 37, scope: !715)
!721 = !DILocation(line: 246, column: 26, scope: !715)
!722 = !DILocation(line: 246, column: 49, scope: !715)
!723 = !DILocation(line: 246, column: 59, scope: !715)
!724 = !DILocation(line: 246, column: 48, scope: !715)
!725 = !DILocation(line: 246, column: 4, scope: !715)
!726 = !DILocation(line: 245, column: 42, scope: !715)
!727 = !DILocation(line: 245, column: 10, scope: !715)
!728 = !DILocation(line: 245, column: 2, scope: !715)
!729 = !DILocation(line: 248, column: 22, scope: !730)
!730 = distinct !DILexicalBlock(scope: !715, file: !1, line: 247, column: 15)
!731 = !DILocation(line: 248, column: 32, scope: !730)
!732 = !DILocation(line: 248, column: 43, scope: !730)
!733 = !DILocation(line: 248, column: 42, scope: !730)
!734 = !DILocation(line: 248, column: 53, scope: !730)
!735 = !DILocation(line: 248, column: 10, scope: !730)
!736 = !DILocation(line: 248, column: 2, scope: !730)
!737 = !DILocation(line: 252, column: 9, scope: !32)
!738 = !DILocation(line: 252, column: 12, scope: !32)
!739 = !DILocation(line: 252, column: 13, scope: !32)
!740 = !DILocation(line: 252, column: 25, scope: !32)
!741 = !DILocation(line: 252, column: 31, scope: !32)
!742 = !DILocation(line: 252, column: 8, scope: !32)
!743 = !DILocation(line: 254, column: 7, scope: !744)
!744 = distinct !DILexicalBlock(scope: !32, file: !1, line: 254, column: 7)
!745 = !DILocation(line: 254, column: 7, scope: !32)
!746 = !DILocation(line: 255, column: 5, scope: !747)
!747 = distinct !DILexicalBlock(scope: !744, file: !1, line: 254, column: 14)
!748 = !DILocation(line: 256, column: 13, scope: !747)
!749 = !DILocation(line: 256, column: 5, scope: !747)
!750 = !DILocation(line: 257, column: 13, scope: !747)
!751 = !DILocation(line: 257, column: 51, scope: !747)
!752 = !DILocation(line: 257, column: 5, scope: !747)
!753 = !DILocation(line: 258, column: 13, scope: !747)
!754 = !DILocation(line: 258, column: 55, scope: !747)
!755 = !DILocation(line: 258, column: 5, scope: !747)
!756 = !DILocation(line: 259, column: 8, scope: !757)
!757 = distinct !DILexicalBlock(scope: !747, file: !1, line: 259, column: 8)
!758 = !DILocation(line: 259, column: 8, scope: !747)
!759 = !DILocation(line: 260, column: 15, scope: !760)
!760 = distinct !DILexicalBlock(scope: !757, file: !1, line: 259, column: 20)
!761 = !DILocation(line: 260, column: 61, scope: !760)
!762 = !DILocation(line: 260, column: 7, scope: !760)
!763 = !DILocation(line: 261, column: 25, scope: !764)
!764 = distinct !DILexicalBlock(scope: !760, file: !1, line: 261, column: 10)
!765 = !DILocation(line: 261, column: 10, scope: !760)
!766 = !DILocation(line: 262, column: 10, scope: !764)
!767 = !DILocation(line: 262, column: 56, scope: !764)
!768 = !DILocation(line: 262, column: 2, scope: !764)
!769 = !DILocation(line: 266, column: 18, scope: !32)
!770 = !DILocation(line: 266, column: 27, scope: !32)
!771 = !DILocation(line: 266, column: 26, scope: !32)
!772 = !DILocation(line: 266, column: 32, scope: !32)
!773 = !DILocation(line: 266, column: 3, scope: !32)
