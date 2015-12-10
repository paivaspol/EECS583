; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/ghat.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%union.anon = type { float }
%union.anon.0 = type { double }
%union.anon.1 = type { x86_fp80 }
%struct.__float2 = type { float, float }
%struct.__double2 = type { double, double }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str1 = private unnamed_addr constant [41 x i8] c"%8d  %8d  %8d  %15.10e  %15.10e %15.10e\0A\00", align 1
@.str2 = private unnamed_addr constant [47 x i8] c"%8d  %8d  %8d  %8d  %15.10e  %15.10e  %15.10e\0A\00", align 1
@.str3 = private unnamed_addr constant [36 x i8] c"%10g  %10g  %10g  %10g  %10g  %10g\0A\00", align 1
@.str4 = private unnamed_addr constant [9 x i8] c"  %12.5e\00", align 1
@.str6 = private unnamed_addr constant [9 x i8] c"ghat.xvg\00", align 1
@.str7 = private unnamed_addr constant [6 x i8] c"G-Hat\00", align 1
@.str8 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@.str9 = private unnamed_addr constant [3 x i8] c"gk\00", align 1
@.str10 = private unnamed_addr constant [12 x i8] c"%10g  %10g\0A\00", align 1
@.str11 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str12 = private unnamed_addr constant [16 x i8] c"%d%d%d%lf%lf%lf\00", align 1
@.str13 = private unnamed_addr constant [18 x i8] c"%d%d%d%d%lf%lf%lf\00", align 1
@.str14 = private unnamed_addr constant [19 x i8] c"%lf%lf%lf%lf%lf%lf\00", align 1
@.str15 = private unnamed_addr constant [38 x i8] c"\0AOpened %s for reading ghat function\0A\00", align 1
@.str16 = private unnamed_addr constant [26 x i8] c"gridsize: %10d %10d %10d\0A\00", align 1
@.str17 = private unnamed_addr constant [26 x i8] c"spacing:  %10g %10g %10g\0A\00", align 1
@.str18 = private unnamed_addr constant [86 x i8] c"    nalias    porder     niter      bSym      beta[X-Z]\0A%10d%10d%10d%10d%10g%10g%10g\0A\00", align 1
@.str19 = private unnamed_addr constant [87 x i8] c"      acut        r1      pval      zval      eref      qopt\0A%10g%10g%10g%10g%10g%10g\0A\00", align 1
@.str20 = private unnamed_addr constant [26 x i8] c"Reading ghat of %d %d %d\0A\00", align 1
@.str21 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str22 = private unnamed_addr constant [11 x i8] c"output.hat\00", align 1
@.str23 = private unnamed_addr constant [35 x i8] c"\0ASuccessfully read ghat function!\0A\00", align 1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #0 {
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !14, metadata !367), !dbg !368
  %1 = icmp sgt i32 %__signo, 32, !dbg !369
  br i1 %1, label %5, label %2, !dbg !370

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !371
  %4 = shl i32 1, %3, !dbg !372
  br label %5, !dbg !370

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !370
  ret i32 %6, !dbg !373
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinitef(float %__x) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !20, metadata !367), !dbg !374
  %1 = fcmp ord float %__x, 0.000000e+00, !dbg !375
  br i1 %1, label %2, label %5, !dbg !376

; <label>:2                                       ; preds = %0
  %3 = tail call float @llvm.fabs.f32(float %__x) #8, !dbg !377
  %4 = fcmp une float %3, 0x7FF0000000000000, !dbg !378
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32, !dbg !376
  ret i32 %7, !dbg !379
}

; Function Attrs: nounwind readnone
declare float @llvm.fabs.f32(float) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinited(double %__x) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !26, metadata !367), !dbg !380
  %1 = fcmp ord double %__x, 0.000000e+00, !dbg !381
  br i1 %1, label %2, label %5, !dbg !382

; <label>:2                                       ; preds = %0
  %3 = tail call double @llvm.fabs.f64(double %__x) #8, !dbg !383
  %4 = fcmp une double %3, 0x7FF0000000000000, !dbg !384
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32, !dbg !382
  ret i32 %7, !dbg !385
}

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinitel(x86_fp80 %__x) #0 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !32, metadata !367), !dbg !386
  %1 = fcmp ord x86_fp80 %__x, 0xK00000000000000000000, !dbg !387
  br i1 %1, label %2, label %5, !dbg !388

; <label>:2                                       ; preds = %0
  %3 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #8, !dbg !389
  %4 = fcmp une x86_fp80 %3, 0xK7FFF8000000000000000, !dbg !390
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32, !dbg !388
  ret i32 %7, !dbg !391
}

; Function Attrs: nounwind readnone
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinff(float %__x) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !35, metadata !367), !dbg !392
  %1 = tail call float @llvm.fabs.f32(float %__x) #8, !dbg !393
  %2 = fcmp oeq float %1, 0x7FF0000000000000, !dbg !394
  %3 = zext i1 %2 to i32, !dbg !394
  ret i32 %3, !dbg !395
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfd(double %__x) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !38, metadata !367), !dbg !396
  %1 = tail call double @llvm.fabs.f64(double %__x) #8, !dbg !397
  %2 = fcmp oeq double %1, 0x7FF0000000000000, !dbg !398
  %3 = zext i1 %2 to i32, !dbg !398
  ret i32 %3, !dbg !399
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfl(x86_fp80 %__x) #0 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !41, metadata !367), !dbg !400
  %1 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #8, !dbg !401
  %2 = fcmp oeq x86_fp80 %1, 0xK7FFF8000000000000000, !dbg !402
  %3 = zext i1 %2 to i32, !dbg !402
  ret i32 %3, !dbg !403
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnanf(float %__x) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !44, metadata !367), !dbg !404
  %1 = fcmp uno float %__x, 0.000000e+00, !dbg !405
  %2 = zext i1 %1 to i32, !dbg !405
  ret i32 %2, !dbg !406
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnand(double %__x) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !47, metadata !367), !dbg !407
  %1 = fcmp uno double %__x, 0.000000e+00, !dbg !408
  %2 = zext i1 %1 to i32, !dbg !408
  ret i32 %2, !dbg !409
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnanl(x86_fp80 %__x) #0 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !50, metadata !367), !dbg !410
  %1 = fcmp uno x86_fp80 %__x, 0xK00000000000000000000, !dbg !411
  %2 = zext i1 %1 to i32, !dbg !411
  ret i32 %2, !dbg !412
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitf(float %__x) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !53, metadata !367), !dbg !413
  tail call void @llvm.dbg.declare(metadata %union.anon* undef, metadata !54, metadata !367), !dbg !414
  %1 = bitcast float %__x to i32, !dbg !415
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !54, metadata !367), !dbg !414
  %2 = lshr i32 %1, 31, !dbg !416
  ret i32 %2, !dbg !417
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitd(double %__x) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !62, metadata !367), !dbg !418
  tail call void @llvm.dbg.declare(metadata %union.anon.0* undef, metadata !63, metadata !367), !dbg !419
  %1 = bitcast double %__x to i64, !dbg !420
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !63, metadata !367), !dbg !419
  %2 = lshr i64 %1, 63, !dbg !421
  %3 = trunc i64 %2 to i32, !dbg !422
  ret i32 %3, !dbg !423
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitl(x86_fp80 %__x) #0 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !71, metadata !367), !dbg !424
  tail call void @llvm.dbg.declare(metadata %union.anon.1* undef, metadata !72, metadata !367), !dbg !425
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !72, metadata !367), !dbg !425
  %1 = bitcast x86_fp80 %__x to i80, !dbg !426
  %2 = lshr i80 %1, 79, !dbg !426
  %3 = trunc i80 %2 to i32, !dbg !427
  ret i32 %3, !dbg !428
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormalf(float %__x) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !84, metadata !367), !dbg !429
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !20, metadata !367) #7, !dbg !430
  %1 = fcmp ord float %__x, 0.000000e+00, !dbg !432
  %2 = tail call float @llvm.fabs.f32(float %__x) #1
  %3 = fcmp une float %2, 0x7FF0000000000000, !dbg !433
  %or.cond = and i1 %1, %3, !dbg !434
  br i1 %or.cond, label %4, label %.critedge, !dbg !434

; <label>:4                                       ; preds = %0
  %5 = fcmp oge float %2, 0x3810000000000000, !dbg !435
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32, !dbg !436
  ret i32 %7, !dbg !437
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormald(double %__x) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !87, metadata !367), !dbg !438
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !26, metadata !367) #7, !dbg !439
  %1 = fcmp ord double %__x, 0.000000e+00, !dbg !441
  %2 = tail call double @llvm.fabs.f64(double %__x) #1
  %3 = fcmp une double %2, 0x7FF0000000000000, !dbg !442
  %or.cond = and i1 %1, %3, !dbg !443
  br i1 %or.cond, label %4, label %.critedge, !dbg !443

; <label>:4                                       ; preds = %0
  %5 = fcmp oge double %2, 0x10000000000000, !dbg !444
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32, !dbg !445
  ret i32 %7, !dbg !446
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormall(x86_fp80 %__x) #0 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !90, metadata !367), !dbg !447
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !32, metadata !367) #7, !dbg !448
  %1 = fcmp ord x86_fp80 %__x, 0xK00000000000000000000, !dbg !450
  %2 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #1
  %3 = fcmp une x86_fp80 %2, 0xK7FFF8000000000000000, !dbg !451
  %or.cond = and i1 %1, %3, !dbg !452
  br i1 %or.cond, label %4, label %.critedge, !dbg !452

; <label>:4                                       ; preds = %0
  %5 = fcmp oge x86_fp80 %2, 0xK00018000000000000000, !dbg !453
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32, !dbg !454
  ret i32 %7, !dbg !455
}

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincosf(float %__x, float* nocapture %__sinp, float* nocapture %__cosp) #2 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !96, metadata !367), !dbg !456
  tail call void @llvm.dbg.value(metadata float* %__sinp, i64 0, metadata !97, metadata !367), !dbg !457
  tail call void @llvm.dbg.value(metadata float* %__cosp, i64 0, metadata !98, metadata !367), !dbg !458
  tail call void @llvm.dbg.declare(metadata %struct.__float2* undef, metadata !99, metadata !367), !dbg !459
  %1 = tail call <2 x float> @__sincosf_stret(float %__x) #9, !dbg !460
  tail call void @llvm.dbg.value(metadata <2 x float> %1, i64 0, metadata !99, metadata !367), !dbg !459
  %2 = extractelement <2 x float> %1, i32 0, !dbg !461
  store float %2, float* %__sinp, align 4, !dbg !462, !tbaa !463
  %3 = extractelement <2 x float> %1, i32 1, !dbg !467
  store float %3, float* %__cosp, align 4, !dbg !468, !tbaa !463
  ret void, !dbg !469
}

; Function Attrs: optsize
declare <2 x float> @__sincosf_stret(float) #3

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincos(double %__x, double* nocapture %__sinp, double* nocapture %__cosp) #2 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !110, metadata !367), !dbg !470
  tail call void @llvm.dbg.value(metadata double* %__sinp, i64 0, metadata !111, metadata !367), !dbg !471
  tail call void @llvm.dbg.value(metadata double* %__cosp, i64 0, metadata !112, metadata !367), !dbg !472
  tail call void @llvm.dbg.declare(metadata %struct.__double2* undef, metadata !113, metadata !367), !dbg !473
  %1 = tail call { double, double } @__sincos_stret(double %__x) #9, !dbg !474
  %2 = extractvalue { double, double } %1, 0, !dbg !474
  tail call void @llvm.dbg.value(metadata double %2, i64 0, metadata !113, metadata !475), !dbg !473
  %3 = extractvalue { double, double } %1, 1, !dbg !474
  tail call void @llvm.dbg.value(metadata double %3, i64 0, metadata !113, metadata !476), !dbg !473
  store double %2, double* %__sinp, align 8, !dbg !477, !tbaa !478
  store double %3, double* %__cosp, align 8, !dbg !480, !tbaa !478
  ret void, !dbg !481
}

; Function Attrs: optsize
declare { double, double } @__sincos_stret(double) #3

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincospif(float %__x, float* nocapture %__sinp, float* nocapture %__cosp) #2 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !121, metadata !367), !dbg !482
  tail call void @llvm.dbg.value(metadata float* %__sinp, i64 0, metadata !122, metadata !367), !dbg !483
  tail call void @llvm.dbg.value(metadata float* %__cosp, i64 0, metadata !123, metadata !367), !dbg !484
  tail call void @llvm.dbg.declare(metadata %struct.__float2* undef, metadata !124, metadata !367), !dbg !485
  %1 = tail call <2 x float> @__sincospif_stret(float %__x) #9, !dbg !486
  tail call void @llvm.dbg.value(metadata <2 x float> %1, i64 0, metadata !124, metadata !367), !dbg !485
  %2 = extractelement <2 x float> %1, i32 0, !dbg !487
  store float %2, float* %__sinp, align 4, !dbg !488, !tbaa !463
  %3 = extractelement <2 x float> %1, i32 1, !dbg !489
  store float %3, float* %__cosp, align 4, !dbg !490, !tbaa !463
  ret void, !dbg !491
}

; Function Attrs: optsize
declare <2 x float> @__sincospif_stret(float) #3

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincospi(double %__x, double* nocapture %__sinp, double* nocapture %__cosp) #2 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !127, metadata !367), !dbg !492
  tail call void @llvm.dbg.value(metadata double* %__sinp, i64 0, metadata !128, metadata !367), !dbg !493
  tail call void @llvm.dbg.value(metadata double* %__cosp, i64 0, metadata !129, metadata !367), !dbg !494
  tail call void @llvm.dbg.declare(metadata %struct.__double2* undef, metadata !130, metadata !367), !dbg !495
  %1 = tail call { double, double } @__sincospi_stret(double %__x) #9, !dbg !496
  %2 = extractvalue { double, double } %1, 0, !dbg !496
  tail call void @llvm.dbg.value(metadata double %2, i64 0, metadata !130, metadata !475), !dbg !495
  %3 = extractvalue { double, double } %1, 1, !dbg !496
  tail call void @llvm.dbg.value(metadata double %3, i64 0, metadata !130, metadata !476), !dbg !495
  store double %2, double* %__sinp, align 8, !dbg !497, !tbaa !478
  store double %3, double* %__cosp, align 8, !dbg !498, !tbaa !478
  ret void, !dbg !499
}

; Function Attrs: optsize
declare { double, double } @__sincospi_stret(double) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @symmetrize_ghat(i32 %nx, i32 %ny, i32 %nz, float*** nocapture readonly %ghat) #4 {
  tail call void @llvm.dbg.value(metadata i32 %nx, i64 0, metadata !138, metadata !367), !dbg !500
  tail call void @llvm.dbg.value(metadata i32 %ny, i64 0, metadata !139, metadata !367), !dbg !501
  tail call void @llvm.dbg.value(metadata i32 %nz, i64 0, metadata !140, metadata !367), !dbg !502
  tail call void @llvm.dbg.value(metadata float*** %ghat, i64 0, metadata !141, metadata !367), !dbg !503
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !142, metadata !367), !dbg !504
  %1 = icmp slt i32 %nx, -1, !dbg !505
  br i1 %1, label %._crit_edge9, label %.lr.ph8, !dbg !508

.lr.ph8:                                          ; preds = %0
  %2 = sdiv i32 %nx, 2, !dbg !509
  %3 = sdiv i32 %ny, 2, !dbg !510
  %4 = icmp slt i32 %ny, -1, !dbg !514
  %5 = sdiv i32 %nz, 2, !dbg !515
  %6 = icmp slt i32 %nz, -1, !dbg !519
  %7 = zext i32 %nz to i64, !dbg !508
  %8 = sext i32 %5 to i64, !dbg !508
  %9 = zext i32 %ny to i64, !dbg !508
  %10 = sext i32 %3 to i64, !dbg !508
  %11 = zext i32 %nx to i64, !dbg !508
  %12 = sext i32 %2 to i64, !dbg !508
  br label %13, !dbg !508

; <label>:13                                      ; preds = %._crit_edge5, %.lr.ph8
  %indvars.iv12 = phi i64 [ %indvars.iv.next13, %._crit_edge5 ], [ 0, %.lr.ph8 ]
  tail call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !145, metadata !367), !dbg !520
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !143, metadata !367), !dbg !521
  br i1 %4, label %._crit_edge5, label %.lr.ph4, !dbg !522

.lr.ph4:                                          ; preds = %13
  %14 = sub i64 %11, %indvars.iv12, !dbg !523
  %15 = trunc i64 %14 to i32, !dbg !524
  %16 = srem i32 %15, %nx, !dbg !524
  %17 = getelementptr inbounds float*** %ghat, i64 %indvars.iv12, !dbg !525
  %18 = sext i32 %16 to i64, !dbg !527
  %19 = getelementptr inbounds float*** %ghat, i64 %18, !dbg !527
  br label %20, !dbg !522

; <label>:20                                      ; preds = %._crit_edge, %.lr.ph4
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %._crit_edge ], [ 0, %.lr.ph4 ]
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !146, metadata !367), !dbg !528
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !144, metadata !367), !dbg !529
  br i1 %6, label %._crit_edge, label %.lr.ph, !dbg !530

.lr.ph:                                           ; preds = %20
  %21 = sub i64 %9, %indvars.iv10, !dbg !531
  %22 = trunc i64 %21 to i32, !dbg !532
  %23 = srem i32 %22, %ny, !dbg !532
  %24 = load float*** %17, align 8, !dbg !525, !tbaa !533
  %25 = getelementptr inbounds float** %24, i64 %indvars.iv10, !dbg !525
  %26 = load float** %25, align 8, !dbg !525, !tbaa !533
  %27 = sext i32 %23 to i64, !dbg !535
  %28 = getelementptr inbounds float** %24, i64 %27, !dbg !535
  %29 = load float** %28, align 8, !dbg !535, !tbaa !533
  %30 = load float*** %19, align 8, !dbg !527, !tbaa !533
  %31 = getelementptr inbounds float** %30, i64 %indvars.iv10, !dbg !527
  %32 = load float** %31, align 8, !dbg !527, !tbaa !533
  %33 = getelementptr inbounds float** %30, i64 %27, !dbg !536
  %34 = load float** %33, align 8, !dbg !536, !tbaa !533
  br label %35, !dbg !530

; <label>:35                                      ; preds = %35, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %35 ], [ 0, %.lr.ph ]
  %36 = sub i64 %7, %indvars.iv, !dbg !537
  %37 = trunc i64 %36 to i32, !dbg !538
  %38 = srem i32 %37, %nz, !dbg !538
  tail call void @llvm.dbg.value(metadata i32 %38, i64 0, metadata !147, metadata !367), !dbg !539
  %39 = getelementptr inbounds float* %26, i64 %indvars.iv, !dbg !525
  %40 = bitcast float* %39 to i32*, !dbg !525
  %41 = load i32* %40, align 4, !dbg !525, !tbaa !463
  %42 = getelementptr inbounds float* %29, i64 %indvars.iv, !dbg !535
  %43 = bitcast float* %42 to i32*, !dbg !540
  store i32 %41, i32* %43, align 4, !dbg !540, !tbaa !463
  %44 = sext i32 %38 to i64, !dbg !541
  %45 = getelementptr inbounds float* %26, i64 %44, !dbg !541
  %46 = bitcast float* %45 to i32*, !dbg !542
  store i32 %41, i32* %46, align 4, !dbg !542, !tbaa !463
  %47 = getelementptr inbounds float* %29, i64 %44, !dbg !543
  %48 = bitcast float* %47 to i32*, !dbg !544
  store i32 %41, i32* %48, align 4, !dbg !544, !tbaa !463
  %49 = getelementptr inbounds float* %32, i64 %indvars.iv, !dbg !527
  %50 = bitcast float* %49 to i32*, !dbg !545
  store i32 %41, i32* %50, align 4, !dbg !545, !tbaa !463
  %51 = getelementptr inbounds float* %34, i64 %indvars.iv, !dbg !536
  %52 = bitcast float* %51 to i32*, !dbg !546
  store i32 %41, i32* %52, align 4, !dbg !546, !tbaa !463
  %53 = getelementptr inbounds float* %32, i64 %44, !dbg !547
  %54 = bitcast float* %53 to i32*, !dbg !548
  store i32 %41, i32* %54, align 4, !dbg !548, !tbaa !463
  %55 = getelementptr inbounds float* %34, i64 %44, !dbg !549
  %56 = bitcast float* %55 to i32*, !dbg !550
  store i32 %41, i32* %56, align 4, !dbg !550, !tbaa !463
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !530
  %57 = icmp slt i64 %indvars.iv, %8, !dbg !519
  br i1 %57, label %35, label %._crit_edge, !dbg !530

._crit_edge:                                      ; preds = %35, %20
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1, !dbg !522
  %58 = icmp slt i64 %indvars.iv10, %10, !dbg !514
  br i1 %58, label %20, label %._crit_edge5, !dbg !522

._crit_edge5:                                     ; preds = %._crit_edge, %13
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1, !dbg !508
  %59 = icmp slt i64 %indvars.iv12, %12, !dbg !505
  br i1 %59, label %13, label %._crit_edge9, !dbg !508

._crit_edge9:                                     ; preds = %._crit_edge5, %0
  ret void, !dbg !551
}

; Function Attrs: nounwind optsize ssp uwtable
define void @mk_ghat(%struct.__sFILE* nocapture readnone %fp, i32 %nx, i32 %ny, i32 %nz, float*** nocapture readonly %ghat, float* nocapture readonly %box, float %r1, float %rc, i32 %bSym, i32 %bOld) #4 {
  %k = alloca [3 x float], align 4
  %lll = alloca [3 x float], align 4
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !216, metadata !367), !dbg !552
  tail call void @llvm.dbg.value(metadata i32 %nx, i64 0, metadata !217, metadata !367), !dbg !553
  tail call void @llvm.dbg.value(metadata i32 %ny, i64 0, metadata !218, metadata !367), !dbg !554
  tail call void @llvm.dbg.value(metadata i32 %nz, i64 0, metadata !219, metadata !367), !dbg !555
  tail call void @llvm.dbg.value(metadata float*** %ghat, i64 0, metadata !220, metadata !367), !dbg !556
  tail call void @llvm.dbg.value(metadata float* %box, i64 0, metadata !221, metadata !367), !dbg !557
  tail call void @llvm.dbg.value(metadata float %r1, i64 0, metadata !222, metadata !367), !dbg !558
  tail call void @llvm.dbg.value(metadata float %rc, i64 0, metadata !223, metadata !367), !dbg !559
  tail call void @llvm.dbg.value(metadata i32 %bSym, i64 0, metadata !224, metadata !367), !dbg !560
  tail call void @llvm.dbg.value(metadata i32 %bOld, i64 0, metadata !225, metadata !367), !dbg !561
  tail call void @llvm.dbg.declare(metadata [3 x float]* %k, metadata !234, metadata !367), !dbg !562
  tail call void @llvm.dbg.declare(metadata [3 x float]* %lll, metadata !237, metadata !367), !dbg !563
  %1 = getelementptr inbounds [3 x float]* %lll, i64 0, i64 0, !dbg !564
  tail call void @llvm.dbg.value(metadata float* %box, i64 0, metadata !332, metadata !367), !dbg !565
  tail call void @llvm.dbg.value(metadata float* %1, i64 0, metadata !333, metadata !367), !dbg !567
  %2 = load float* %box, align 4, !dbg !568, !tbaa !463
  %3 = fpext float %2 to double, !dbg !568
  %4 = fdiv double 0x401921FB54442D18, %3, !dbg !569
  %5 = fptrunc double %4 to float, !dbg !570
  store float %5, float* %1, align 4, !dbg !571, !tbaa !463
  %6 = getelementptr inbounds float* %box, i64 1, !dbg !572
  %7 = load float* %6, align 4, !dbg !572, !tbaa !463
  %8 = fpext float %7 to double, !dbg !572
  %9 = fdiv double 0x401921FB54442D18, %8, !dbg !573
  %10 = fptrunc double %9 to float, !dbg !574
  %11 = getelementptr inbounds [3 x float]* %lll, i64 0, i64 1, !dbg !575
  store float %10, float* %11, align 4, !dbg !576, !tbaa !463
  %12 = getelementptr inbounds float* %box, i64 2, !dbg !577
  %13 = load float* %12, align 4, !dbg !577, !tbaa !463
  %14 = fpext float %13 to double, !dbg !577
  %15 = fdiv double 0x401921FB54442D18, %14, !dbg !578
  %16 = fptrunc double %15 to float, !dbg !579
  %17 = getelementptr inbounds [3 x float]* %lll, i64 0, i64 2, !dbg !580
  store float %16, float* %17, align 4, !dbg !581, !tbaa !463
  %18 = icmp ne i32 %bSym, 0, !dbg !582
  br i1 %18, label %19, label %26, !dbg !584

; <label>:19                                      ; preds = %0
  %20 = sdiv i32 %nx, 2, !dbg !585
  %21 = add nsw i32 %20, 1, !dbg !587
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !229, metadata !367), !dbg !588
  %22 = sdiv i32 %ny, 2, !dbg !589
  %23 = add nsw i32 %22, 1, !dbg !590
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !230, metadata !367), !dbg !591
  %24 = sdiv i32 %nz, 2, !dbg !592
  %25 = add nsw i32 %24, 1, !dbg !593
  tail call void @llvm.dbg.value(metadata i32 %25, i64 0, metadata !231, metadata !367), !dbg !594
  br label %26, !dbg !595

; <label>:26                                      ; preds = %0, %19
  %ixmax.0 = phi i32 [ %21, %19 ], [ %nx, %0 ]
  %iymax.0 = phi i32 [ %23, %19 ], [ %ny, %0 ]
  %izmax.0 = phi i32 [ %25, %19 ], [ %nz, %0 ]
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !226, metadata !367), !dbg !596
  %27 = icmp sgt i32 %ixmax.0, 0, !dbg !597
  br i1 %27, label %.preheader4.lr.ph, label %._crit_edge10, !dbg !600

.preheader4.lr.ph:                                ; preds = %26
  %28 = icmp sgt i32 %iymax.0, 0, !dbg !601
  %29 = icmp sgt i32 %izmax.0, 0, !dbg !605
  %30 = getelementptr inbounds [3 x float]* %k, i64 0, i64 0, !dbg !609
  %31 = getelementptr inbounds [3 x float]* %k, i64 0, i64 1, !dbg !611
  %32 = getelementptr inbounds [3 x float]* %k, i64 0, i64 2, !dbg !613
  %33 = icmp eq i32 %bOld, 0, !dbg !614
  %34 = add i32 %izmax.0, -1, !dbg !600
  %35 = add i32 %iymax.0, -1, !dbg !600
  %36 = add i32 %ixmax.0, -1, !dbg !600
  br label %.preheader4, !dbg !600

.preheader4:                                      ; preds = %._crit_edge7, %.preheader4.lr.ph
  %indvars.iv15 = phi i64 [ 0, %.preheader4.lr.ph ], [ %indvars.iv.next16, %._crit_edge7 ]
  br i1 %28, label %.preheader.lr.ph, label %._crit_edge7, !dbg !618

.preheader.lr.ph:                                 ; preds = %.preheader4
  %37 = getelementptr inbounds float*** %ghat, i64 %indvars.iv15, !dbg !619
  br label %.preheader, !dbg !618

.preheader:                                       ; preds = %._crit_edge, %.preheader.lr.ph
  %indvars.iv11 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next12, %._crit_edge ]
  %38 = trunc i64 %indvars.iv11 to i32, !dbg !620
  br i1 %29, label %.lr.ph, label %._crit_edge, !dbg !621

.lr.ph:                                           ; preds = %.preheader
  %39 = trunc i64 %indvars.iv15 to i32, !dbg !620
  %40 = or i64 %indvars.iv11, %indvars.iv15, !dbg !620
  br label %41, !dbg !621

; <label>:41                                      ; preds = %68, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %68 ]
  %42 = trunc i64 %indvars.iv to i32, !dbg !622
  call fastcc void @calc_k(float* %1, i32 %39, i32 %38, i32 %42, i32 %nx, i32 %ny, i32 %nz, float* %30) #10, !dbg !622
  tail call void @llvm.dbg.value(metadata float* %30, i64 0, metadata !351, metadata !367), !dbg !623
  tail call void @llvm.dbg.value(metadata float* %30, i64 0, metadata !352, metadata !367), !dbg !624
  %43 = load float* %30, align 4, !dbg !625, !tbaa !463
  %44 = fmul float %43, %43, !dbg !626
  %45 = load float* %31, align 4, !dbg !611, !tbaa !463
  %46 = fmul float %45, %45, !dbg !627
  %47 = fadd float %44, %46, !dbg !628
  %48 = load float* %32, align 4, !dbg !613, !tbaa !463
  %49 = fmul float %48, %48, !dbg !629
  %50 = fadd float %47, %49, !dbg !630
  tail call void @llvm.dbg.value(metadata float %50, i64 0, metadata !232, metadata !367), !dbg !631
  %51 = or i64 %40, %indvars.iv, !dbg !620
  %52 = trunc i64 %51 to i32, !dbg !620
  %53 = icmp eq i32 %52, 0, !dbg !620
  br i1 %53, label %68, label %54, !dbg !620

; <label>:54                                      ; preds = %41
  %55 = fpext float %50 to double, !dbg !632
  %sqrtf = tail call float @sqrtf(float %50) #5, !dbg !633
  br i1 %33, label %62, label %56, !dbg !634

; <label>:56                                      ; preds = %54
  %57 = tail call float @gk(float %sqrtf, float %rc, float %r1) #9, !dbg !635
  %58 = fpext float %57 to double, !dbg !635
  %59 = fmul double %55, 5.727650e-04, !dbg !636
  %60 = fdiv double %58, %59, !dbg !637
  %61 = fptrunc double %60 to float, !dbg !635
  tail call void @llvm.dbg.value(metadata float %61, i64 0, metadata !233, metadata !367), !dbg !638
  br label %68, !dbg !639

; <label>:62                                      ; preds = %54
  %63 = tail call float @gknew(float %sqrtf, float %rc, float %r1) #9, !dbg !640
  %64 = fpext float %63 to double, !dbg !640
  %65 = fmul double %55, 5.727650e-04, !dbg !641
  %66 = fdiv double %64, %65, !dbg !642
  %67 = fptrunc double %66 to float, !dbg !640
  tail call void @llvm.dbg.value(metadata float %67, i64 0, metadata !233, metadata !367), !dbg !638
  br label %68

; <label>:68                                      ; preds = %41, %56, %62
  %ggg.0 = phi float [ %61, %56 ], [ %67, %62 ], [ 0.000000e+00, %41 ]
  %69 = load float*** %37, align 8, !dbg !619, !tbaa !533
  %70 = getelementptr inbounds float** %69, i64 %indvars.iv11, !dbg !619
  %71 = load float** %70, align 8, !dbg !619, !tbaa !533
  %72 = getelementptr inbounds float* %71, i64 %indvars.iv, !dbg !619
  store float %ggg.0, float* %72, align 4, !dbg !643, !tbaa !463
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !621
  %exitcond = icmp eq i32 %42, %34, !dbg !621
  br i1 %exitcond, label %._crit_edge, label %41, !dbg !621

._crit_edge:                                      ; preds = %68, %.preheader
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1, !dbg !618
  %exitcond14 = icmp eq i32 %38, %35, !dbg !618
  br i1 %exitcond14, label %._crit_edge7, label %.preheader, !dbg !618

._crit_edge7:                                     ; preds = %._crit_edge, %.preheader4
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1, !dbg !600
  %lftr.wideiv17 = trunc i64 %indvars.iv15 to i32, !dbg !600
  %exitcond18 = icmp eq i32 %lftr.wideiv17, %36, !dbg !600
  br i1 %exitcond18, label %._crit_edge10, label %.preheader4, !dbg !600

._crit_edge10:                                    ; preds = %._crit_edge7, %26
  br i1 %18, label %73, label %74, !dbg !644

; <label>:73                                      ; preds = %._crit_edge10
  tail call void @symmetrize_ghat(i32 %nx, i32 %ny, i32 %nz, float*** %ghat) #10, !dbg !645
  br label %74, !dbg !645

; <label>:74                                      ; preds = %73, %._crit_edge10
  ret void, !dbg !647
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @calc_k(float* nocapture readonly %lll, i32 %ix, i32 %iy, i32 %iz, i32 %nx, i32 %ny, i32 %nz, float* nocapture %k) #4 {
  tail call void @llvm.dbg.value(metadata float* %lll, i64 0, metadata !338, metadata !367), !dbg !648
  tail call void @llvm.dbg.value(metadata i32 %ix, i64 0, metadata !339, metadata !367), !dbg !649
  tail call void @llvm.dbg.value(metadata i32 %iy, i64 0, metadata !340, metadata !367), !dbg !650
  tail call void @llvm.dbg.value(metadata i32 %iz, i64 0, metadata !341, metadata !367), !dbg !651
  tail call void @llvm.dbg.value(metadata i32 %nx, i64 0, metadata !342, metadata !367), !dbg !652
  tail call void @llvm.dbg.value(metadata i32 %ny, i64 0, metadata !343, metadata !367), !dbg !653
  tail call void @llvm.dbg.value(metadata i32 %nz, i64 0, metadata !344, metadata !367), !dbg !654
  tail call void @llvm.dbg.value(metadata float* %k, i64 0, metadata !345, metadata !367), !dbg !655
  %1 = sdiv i32 %nx, 2, !dbg !656
  %2 = icmp slt i32 %1, %ix, !dbg !656
  br i1 %2, label %7, label %3, !dbg !656

; <label>:3                                       ; preds = %0
  %4 = sitofp i32 %ix to float, !dbg !656
  %5 = load float* %lll, align 4, !dbg !656, !tbaa !463
  %6 = fmul float %4, %5, !dbg !656
  br label %12, !dbg !656

; <label>:7                                       ; preds = %0
  %8 = sub nsw i32 %ix, %nx, !dbg !656
  %9 = sitofp i32 %8 to float, !dbg !656
  %10 = load float* %lll, align 4, !dbg !656, !tbaa !463
  %11 = fmul float %9, %10, !dbg !656
  br label %12, !dbg !656

; <label>:12                                      ; preds = %7, %3
  %13 = phi float [ %6, %3 ], [ %11, %7 ], !dbg !656
  store float %13, float* %k, align 4, !dbg !657, !tbaa !463
  %14 = sdiv i32 %ny, 2, !dbg !658
  %15 = icmp slt i32 %14, %iy, !dbg !658
  %16 = getelementptr inbounds float* %lll, i64 1
  %17 = load float* %16, align 4
  %18 = select i1 %15, i32 %ny, i32 0, !dbg !658
  %.iy = sub nsw i32 %iy, %18, !dbg !658
  %.pn = sitofp i32 %.iy to float, !dbg !658
  %19 = fmul float %.pn, %17, !dbg !658
  %20 = getelementptr inbounds float* %k, i64 1, !dbg !659
  store float %19, float* %20, align 4, !dbg !660, !tbaa !463
  %21 = sdiv i32 %nz, 2, !dbg !661
  %22 = icmp slt i32 %21, %iz, !dbg !661
  %23 = getelementptr inbounds float* %lll, i64 2
  %24 = load float* %23, align 4
  %25 = select i1 %22, i32 %nz, i32 0, !dbg !661
  %.pn1.in = sub nsw i32 %iz, %25, !dbg !661
  %.pn1 = sitofp i32 %.pn1.in to float, !dbg !661
  %26 = fmul float %.pn1, %24, !dbg !661
  %27 = getelementptr inbounds float* %k, i64 2, !dbg !662
  store float %26, float* %27, align 4, !dbg !663, !tbaa !463
  ret void, !dbg !664
}

; Function Attrs: optsize
declare float @gk(float, float, float) #3

; Function Attrs: nounwind optsize readnone
declare double @sqrt(double) #5

; Function Attrs: optsize
declare float @gknew(float, float, float) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @wr_ghat(i8* %fn, i32 %n1max, i32 %n2max, i32 %n3max, float %h1, float %h2, float %h3, float*** nocapture readonly %ghat, i32 %nalias, i32 %porder, i32 %niter, i32 %bSym, float* nocapture readonly %beta, float %r1, float %rc, float %pval, float %zval, float %eref, float %qopt) #4 {
  tail call void @llvm.dbg.value(metadata i8* %fn, i64 0, metadata !242, metadata !367), !dbg !665
  tail call void @llvm.dbg.value(metadata i32 %n1max, i64 0, metadata !243, metadata !367), !dbg !666
  tail call void @llvm.dbg.value(metadata i32 %n2max, i64 0, metadata !244, metadata !367), !dbg !667
  tail call void @llvm.dbg.value(metadata i32 %n3max, i64 0, metadata !245, metadata !367), !dbg !668
  tail call void @llvm.dbg.value(metadata float %h1, i64 0, metadata !246, metadata !367), !dbg !669
  tail call void @llvm.dbg.value(metadata float %h2, i64 0, metadata !247, metadata !367), !dbg !670
  tail call void @llvm.dbg.value(metadata float %h3, i64 0, metadata !248, metadata !367), !dbg !671
  tail call void @llvm.dbg.value(metadata float*** %ghat, i64 0, metadata !249, metadata !367), !dbg !672
  tail call void @llvm.dbg.value(metadata i32 %nalias, i64 0, metadata !250, metadata !367), !dbg !673
  tail call void @llvm.dbg.value(metadata i32 %porder, i64 0, metadata !251, metadata !367), !dbg !674
  tail call void @llvm.dbg.value(metadata i32 %niter, i64 0, metadata !252, metadata !367), !dbg !675
  tail call void @llvm.dbg.value(metadata i32 %bSym, i64 0, metadata !253, metadata !367), !dbg !676
  tail call void @llvm.dbg.value(metadata float* %beta, i64 0, metadata !254, metadata !367), !dbg !677
  tail call void @llvm.dbg.value(metadata float %r1, i64 0, metadata !255, metadata !367), !dbg !678
  tail call void @llvm.dbg.value(metadata float %rc, i64 0, metadata !256, metadata !367), !dbg !679
  tail call void @llvm.dbg.value(metadata float %pval, i64 0, metadata !257, metadata !367), !dbg !680
  tail call void @llvm.dbg.value(metadata float %zval, i64 0, metadata !258, metadata !367), !dbg !681
  tail call void @llvm.dbg.value(metadata float %eref, i64 0, metadata !259, metadata !367), !dbg !682
  tail call void @llvm.dbg.value(metadata float %qopt, i64 0, metadata !260, metadata !367), !dbg !683
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !265, metadata !367), !dbg !684
  %1 = tail call %struct.__sFILE* @ffopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0)) #9, !dbg !685
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %1, i64 0, metadata !261, metadata !367), !dbg !686
  %2 = fpext float %h1 to double, !dbg !687
  %3 = fpext float %h2 to double, !dbg !688
  %4 = fpext float %h3 to double, !dbg !689
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([41 x i8]* @.str1, i64 0, i64 0), i32 %n1max, i32 %n2max, i32 %n3max, double %2, double %3, double %4) #9, !dbg !690
  %6 = load float* %beta, align 4, !dbg !691, !tbaa !463
  %7 = fpext float %6 to double, !dbg !691
  %8 = getelementptr inbounds float* %beta, i64 1, !dbg !692
  %9 = load float* %8, align 4, !dbg !692, !tbaa !463
  %10 = fpext float %9 to double, !dbg !692
  %11 = getelementptr inbounds float* %beta, i64 2, !dbg !693
  %12 = load float* %11, align 4, !dbg !693, !tbaa !463
  %13 = fpext float %12 to double, !dbg !693
  %14 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([47 x i8]* @.str2, i64 0, i64 0), i32 %nalias, i32 %porder, i32 %niter, i32 %bSym, double %7, double %10, double %13) #9, !dbg !694
  %15 = fpext float %rc to double, !dbg !695
  %16 = fpext float %r1 to double, !dbg !696
  %17 = fpext float %pval to double, !dbg !697
  %18 = fpext float %zval to double, !dbg !698
  %19 = fpext float %eref to double, !dbg !699
  %20 = fpext float %qopt to double, !dbg !700
  %21 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([36 x i8]* @.str3, i64 0, i64 0), double %15, double %16, double %17, double %18, double %19, double %20) #9, !dbg !701
  %22 = icmp eq i32 %bSym, 0, !dbg !702
  br i1 %22, label %30, label %23, !dbg !704

; <label>:23                                      ; preds = %0
  %24 = sdiv i32 %n1max, 2, !dbg !705
  %25 = add nsw i32 %24, 1, !dbg !707
  tail call void @llvm.dbg.value(metadata i32 %25, i64 0, metadata !262, metadata !367), !dbg !708
  %26 = sdiv i32 %n2max, 2, !dbg !709
  %27 = add nsw i32 %26, 1, !dbg !710
  tail call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !263, metadata !367), !dbg !711
  %28 = sdiv i32 %n3max, 2, !dbg !712
  %29 = add nsw i32 %28, 1, !dbg !713
  tail call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !264, metadata !367), !dbg !714
  br label %30, !dbg !715

; <label>:30                                      ; preds = %0, %23
  %N3MAX.0 = phi i32 [ %29, %23 ], [ %n3max, %0 ]
  %N2MAX.0 = phi i32 [ %27, %23 ], [ %n2max, %0 ]
  %N1MAX.0 = phi i32 [ %25, %23 ], [ %n1max, %0 ]
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !269, metadata !367), !dbg !716
  %31 = icmp sgt i32 %N1MAX.0, 0, !dbg !717
  br i1 %31, label %.preheader4.lr.ph, label %._crit_edge24, !dbg !720

.preheader4.lr.ph:                                ; preds = %30
  %32 = icmp sgt i32 %N2MAX.0, 0, !dbg !721
  %33 = icmp sgt i32 %N3MAX.0, 0, !dbg !725
  %34 = add i32 %N3MAX.0, -1, !dbg !720
  %35 = add i32 %N2MAX.0, -1, !dbg !720
  %36 = add i32 %N1MAX.0, -1, !dbg !720
  br label %.preheader4, !dbg !720

.preheader4:                                      ; preds = %._crit_edge20, %.preheader4.lr.ph
  %indvars.iv41 = phi i64 [ 0, %.preheader4.lr.ph ], [ %indvars.iv.next42, %._crit_edge20 ]
  %bNL.022 = phi i32 [ 0, %.preheader4.lr.ph ], [ %bNL.1.lcssa, %._crit_edge20 ]
  br i1 %32, label %.preheader.lr.ph, label %._crit_edge20, !dbg !729

.preheader.lr.ph:                                 ; preds = %.preheader4
  %37 = getelementptr inbounds float*** %ghat, i64 %indvars.iv41, !dbg !730
  br label %.preheader, !dbg !729

.preheader:                                       ; preds = %52, %.preheader.lr.ph
  %indvars.iv37 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next38, %52 ]
  %bNL.118 = phi i32 [ %bNL.022, %.preheader.lr.ph ], [ %bNL.2.lcssa, %52 ]
  br i1 %33, label %.lr.ph16, label %._crit_edge17, !dbg !732

.lr.ph16:                                         ; preds = %.preheader, %48
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %48 ], [ 0, %.preheader ]
  %nn.015 = phi i32 [ %49, %48 ], [ 1, %.preheader ]
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !265, metadata !367), !dbg !684
  %38 = load float*** %37, align 8, !dbg !730, !tbaa !533
  %39 = getelementptr inbounds float** %38, i64 %indvars.iv37, !dbg !730
  %40 = load float** %39, align 8, !dbg !730, !tbaa !533
  %41 = getelementptr inbounds float* %40, i64 %indvars.iv33, !dbg !730
  %42 = load float* %41, align 4, !dbg !730, !tbaa !463
  %43 = fpext float %42 to double, !dbg !730
  %44 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([9 x i8]* @.str4, i64 0, i64 0), double %43) #9, !dbg !733
  %45 = srem i32 %nn.015, 6, !dbg !734
  %46 = icmp eq i32 %45, 0, !dbg !736
  br i1 %46, label %47, label %48, !dbg !737

; <label>:47                                      ; preds = %.lr.ph16
  %fputc3 = tail call i32 @fputc(i32 10, %struct.__sFILE* %1), !dbg !738
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !265, metadata !367), !dbg !684
  br label %48, !dbg !740

; <label>:48                                      ; preds = %.lr.ph16, %47
  %bNL.3 = phi i32 [ 1, %47 ], [ 0, %.lr.ph16 ]
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1, !dbg !732
  %49 = add nuw nsw i32 %nn.015, 1, !dbg !741
  tail call void @llvm.dbg.value(metadata i32 %49, i64 0, metadata !272, metadata !367), !dbg !742
  %lftr.wideiv35 = trunc i64 %indvars.iv33 to i32, !dbg !732
  %exitcond36 = icmp eq i32 %lftr.wideiv35, %34, !dbg !732
  br i1 %exitcond36, label %._crit_edge17, label %.lr.ph16, !dbg !732

._crit_edge17:                                    ; preds = %48, %.preheader
  %bNL.2.lcssa = phi i32 [ %bNL.118, %.preheader ], [ %bNL.3, %48 ]
  %50 = icmp eq i32 %bNL.2.lcssa, 0, !dbg !743
  br i1 %50, label %51, label %52, !dbg !745

; <label>:51                                      ; preds = %._crit_edge17
  %fputc = tail call i32 @fputc(i32 10, %struct.__sFILE* %1), !dbg !746
  br label %52, !dbg !746

; <label>:52                                      ; preds = %._crit_edge17, %51
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1, !dbg !729
  %lftr.wideiv39 = trunc i64 %indvars.iv37 to i32, !dbg !729
  %exitcond40 = icmp eq i32 %lftr.wideiv39, %35, !dbg !729
  br i1 %exitcond40, label %._crit_edge20, label %.preheader, !dbg !729

._crit_edge20:                                    ; preds = %52, %.preheader4
  %bNL.1.lcssa = phi i32 [ %bNL.022, %.preheader4 ], [ %bNL.2.lcssa, %52 ]
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1, !dbg !720
  %lftr.wideiv43 = trunc i64 %indvars.iv41 to i32, !dbg !720
  %exitcond44 = icmp eq i32 %lftr.wideiv43, %36, !dbg !720
  br i1 %exitcond44, label %._crit_edge24, label %.preheader4, !dbg !720

._crit_edge24:                                    ; preds = %._crit_edge20, %30
  tail call void @ffclose(%struct.__sFILE* %1) #9, !dbg !747
  %53 = tail call %struct.__sFILE* @xvgropen(i8* getelementptr inbounds ([9 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str9, i64 0, i64 0)) #9, !dbg !748
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %53, i64 0, metadata !261, metadata !367), !dbg !686
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !269, metadata !367), !dbg !716
  br i1 %31, label %.lr.ph12, label %._crit_edge13, !dbg !749

.lr.ph12:                                         ; preds = %._crit_edge24
  %54 = icmp sgt i32 %N2MAX.0, 0, !dbg !751
  %55 = icmp sgt i32 %N3MAX.0, 0, !dbg !756
  %56 = add i32 %N3MAX.0, -1, !dbg !749
  %57 = add i32 %N2MAX.0, -1, !dbg !749
  %58 = add i32 %N1MAX.0, -1, !dbg !749
  br label %59, !dbg !749

; <label>:59                                      ; preds = %._crit_edge9, %.lr.ph12
  %indvars.iv29 = phi i64 [ 0, %.lr.ph12 ], [ %indvars.iv.next30, %._crit_edge9 ]
  %60 = trunc i64 %indvars.iv29 to i32, !dbg !760
  %61 = sitofp i32 %60 to float, !dbg !760
  %62 = fmul float %61, %h1, !dbg !761
  tail call void @llvm.dbg.value(metadata float %62, i64 0, metadata !357, metadata !367), !dbg !762
  %63 = fmul float %62, %62, !dbg !764
  tail call void @llvm.dbg.value(metadata float %63, i64 0, metadata !266, metadata !367), !dbg !765
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !270, metadata !367), !dbg !766
  br i1 %54, label %.lr.ph8, label %._crit_edge9, !dbg !767

.lr.ph8:                                          ; preds = %59
  %64 = getelementptr inbounds float*** %ghat, i64 %indvars.iv29, !dbg !768
  br label %65, !dbg !767

; <label>:65                                      ; preds = %._crit_edge, %.lr.ph8
  %indvars.iv25 = phi i64 [ 0, %.lr.ph8 ], [ %indvars.iv.next26, %._crit_edge ]
  %66 = trunc i64 %indvars.iv25 to i32, !dbg !770
  %67 = sitofp i32 %66 to float, !dbg !770
  %68 = fmul float %67, %h2, !dbg !771
  tail call void @llvm.dbg.value(metadata float %68, i64 0, metadata !357, metadata !367), !dbg !772
  %69 = fmul float %68, %68, !dbg !774
  %70 = fadd float %63, %69, !dbg !775
  tail call void @llvm.dbg.value(metadata float %70, i64 0, metadata !267, metadata !367), !dbg !776
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !271, metadata !367), !dbg !777
  br i1 %55, label %.lr.ph, label %._crit_edge, !dbg !778

.lr.ph:                                           ; preds = %65, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %65 ]
  %71 = trunc i64 %indvars.iv to i32, !dbg !779
  %72 = sitofp i32 %71 to float, !dbg !779
  %73 = fmul float %72, %h3, !dbg !780
  tail call void @llvm.dbg.value(metadata float %73, i64 0, metadata !357, metadata !367), !dbg !781
  %74 = fmul float %73, %73, !dbg !783
  %75 = fadd float %70, %74, !dbg !784
  tail call void @llvm.dbg.value(metadata float %75, i64 0, metadata !268, metadata !367), !dbg !785
  %76 = fpext float %75 to double, !dbg !786
  %77 = tail call double @sqrt(double %76) #11, !dbg !787
  %78 = load float*** %64, align 8, !dbg !768, !tbaa !533
  %79 = getelementptr inbounds float** %78, i64 %indvars.iv25, !dbg !768
  %80 = load float** %79, align 8, !dbg !768, !tbaa !533
  %81 = getelementptr inbounds float* %80, i64 %indvars.iv, !dbg !768
  %82 = load float* %81, align 4, !dbg !768, !tbaa !463
  %83 = fpext float %82 to double, !dbg !768
  %84 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %53, i8* getelementptr inbounds ([12 x i8]* @.str10, i64 0, i64 0), double %77, double %83) #9, !dbg !788
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !778
  %exitcond = icmp eq i32 %71, %56, !dbg !778
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !dbg !778

._crit_edge:                                      ; preds = %.lr.ph, %65
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1, !dbg !767
  %exitcond28 = icmp eq i32 %66, %57, !dbg !767
  br i1 %exitcond28, label %._crit_edge9, label %65, !dbg !767

._crit_edge9:                                     ; preds = %._crit_edge, %59
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1, !dbg !749
  %exitcond32 = icmp eq i32 %60, %58, !dbg !749
  br i1 %exitcond32, label %._crit_edge13, label %59, !dbg !749

._crit_edge13:                                    ; preds = %._crit_edge9, %._crit_edge24
  tail call void @ffclose(%struct.__sFILE* %53) #9, !dbg !789
  ret void, !dbg !790
}

; Function Attrs: optsize
declare %struct.__sFILE* @ffopen(i8*, i8*) #3

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #6

; Function Attrs: optsize
declare void @ffclose(%struct.__sFILE*) #3

; Function Attrs: optsize
declare %struct.__sFILE* @xvgropen(i8*, i8*, i8*, i8*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @pr_scalar_gk(i8* %fn, i32 %nx, i32 %ny, i32 %nz, float* nocapture readonly %box, float*** nocapture readonly %ghat) #4 {
  %k = alloca [3 x float], align 4
  %lll = alloca [3 x float], align 4
  tail call void @llvm.dbg.value(metadata i8* %fn, i64 0, metadata !277, metadata !367), !dbg !791
  tail call void @llvm.dbg.value(metadata i32 %nx, i64 0, metadata !278, metadata !367), !dbg !792
  tail call void @llvm.dbg.value(metadata i32 %ny, i64 0, metadata !279, metadata !367), !dbg !793
  tail call void @llvm.dbg.value(metadata i32 %nz, i64 0, metadata !280, metadata !367), !dbg !794
  tail call void @llvm.dbg.value(metadata float* %box, i64 0, metadata !281, metadata !367), !dbg !795
  tail call void @llvm.dbg.value(metadata float*** %ghat, i64 0, metadata !282, metadata !367), !dbg !796
  tail call void @llvm.dbg.declare(metadata [3 x float]* %k, metadata !288, metadata !367), !dbg !797
  tail call void @llvm.dbg.declare(metadata [3 x float]* %lll, metadata !289, metadata !367), !dbg !798
  %1 = getelementptr inbounds [3 x float]* %lll, i64 0, i64 0, !dbg !799
  tail call void @llvm.dbg.value(metadata float* %box, i64 0, metadata !332, metadata !367), !dbg !800
  tail call void @llvm.dbg.value(metadata float* %1, i64 0, metadata !333, metadata !367), !dbg !802
  %2 = load float* %box, align 4, !dbg !803, !tbaa !463
  %3 = fpext float %2 to double, !dbg !803
  %4 = fdiv double 0x401921FB54442D18, %3, !dbg !804
  %5 = fptrunc double %4 to float, !dbg !805
  store float %5, float* %1, align 4, !dbg !806, !tbaa !463
  %6 = getelementptr inbounds float* %box, i64 1, !dbg !807
  %7 = load float* %6, align 4, !dbg !807, !tbaa !463
  %8 = fpext float %7 to double, !dbg !807
  %9 = fdiv double 0x401921FB54442D18, %8, !dbg !808
  %10 = fptrunc double %9 to float, !dbg !809
  %11 = getelementptr inbounds [3 x float]* %lll, i64 0, i64 1, !dbg !810
  store float %10, float* %11, align 4, !dbg !811, !tbaa !463
  %12 = getelementptr inbounds float* %box, i64 2, !dbg !812
  %13 = load float* %12, align 4, !dbg !812, !tbaa !463
  %14 = fpext float %13 to double, !dbg !812
  %15 = fdiv double 0x401921FB54442D18, %14, !dbg !813
  %16 = fptrunc double %15 to float, !dbg !814
  %17 = getelementptr inbounds [3 x float]* %lll, i64 0, i64 2, !dbg !815
  store float %16, float* %17, align 4, !dbg !816, !tbaa !463
  %18 = tail call %struct.__sFILE* @xvgropen(i8* %fn, i8* getelementptr inbounds ([6 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str9, i64 0, i64 0)) #9, !dbg !817
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %18, i64 0, metadata !283, metadata !367), !dbg !818
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !284, metadata !367), !dbg !819
  %19 = icmp sgt i32 %nx, 0, !dbg !820
  br i1 %19, label %.preheader1.lr.ph, label %._crit_edge6, !dbg !823

.preheader1.lr.ph:                                ; preds = %0
  %20 = icmp sgt i32 %ny, 0, !dbg !824
  %21 = icmp sgt i32 %nz, 0, !dbg !828
  %22 = getelementptr inbounds [3 x float]* %k, i64 0, i64 0, !dbg !832
  %23 = getelementptr inbounds [3 x float]* %k, i64 0, i64 1, !dbg !834
  %24 = getelementptr inbounds [3 x float]* %k, i64 0, i64 2, !dbg !836
  %25 = add i32 %nz, -1, !dbg !823
  %26 = add i32 %ny, -1, !dbg !823
  %27 = add i32 %nx, -1, !dbg !823
  br label %.preheader1, !dbg !823

.preheader1:                                      ; preds = %._crit_edge4, %.preheader1.lr.ph
  %indvars.iv11 = phi i64 [ 0, %.preheader1.lr.ph ], [ %indvars.iv.next12, %._crit_edge4 ]
  br i1 %20, label %.preheader.lr.ph, label %._crit_edge4, !dbg !837

.preheader.lr.ph:                                 ; preds = %.preheader1
  %28 = getelementptr inbounds float*** %ghat, i64 %indvars.iv11, !dbg !838
  br label %.preheader, !dbg !837

.preheader:                                       ; preds = %._crit_edge, %.preheader.lr.ph
  %indvars.iv7 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next8, %._crit_edge ]
  br i1 %21, label %.lr.ph, label %.preheader._crit_edge, !dbg !839

.preheader._crit_edge:                            ; preds = %.preheader
  %.pre = trunc i64 %indvars.iv7 to i32, !dbg !837
  br label %._crit_edge, !dbg !839

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ]
  %29 = trunc i64 %indvars.iv to i32, !dbg !840
  %30 = trunc i64 %indvars.iv7 to i32, !dbg !840
  %31 = trunc i64 %indvars.iv11 to i32, !dbg !840
  call fastcc void @calc_k(float* %1, i32 %31, i32 %30, i32 %29, i32 %nx, i32 %ny, i32 %nz, float* %22) #10, !dbg !840
  tail call void @llvm.dbg.value(metadata float* %22, i64 0, metadata !362, metadata !367) #7, !dbg !841
  %32 = load float* %22, align 4, !dbg !842, !tbaa !463
  %33 = fmul float %32, %32, !dbg !843
  %34 = load float* %23, align 4, !dbg !834, !tbaa !463
  %35 = fmul float %34, %34, !dbg !844
  %36 = fadd float %33, %35, !dbg !845
  %37 = load float* %24, align 4, !dbg !836, !tbaa !463
  %38 = fmul float %37, %37, !dbg !846
  %39 = fadd float %36, %38, !dbg !847
  %sqrtf.i = tail call float @sqrtf(float %39) #5, !dbg !848
  tail call void @llvm.dbg.value(metadata float %sqrtf.i, i64 0, metadata !287, metadata !367), !dbg !849
  %40 = fpext float %sqrtf.i to double, !dbg !850
  %41 = load float*** %28, align 8, !dbg !838, !tbaa !533
  %42 = getelementptr inbounds float** %41, i64 %indvars.iv7, !dbg !838
  %43 = load float** %42, align 8, !dbg !838, !tbaa !533
  %44 = getelementptr inbounds float* %43, i64 %indvars.iv, !dbg !838
  %45 = load float* %44, align 4, !dbg !838, !tbaa !463
  %46 = fpext float %45 to double, !dbg !838
  %47 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %18, i8* getelementptr inbounds ([12 x i8]* @.str10, i64 0, i64 0), double %40, double %46) #9, !dbg !851
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !839
  %exitcond = icmp eq i32 %29, %25, !dbg !839
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !dbg !839

._crit_edge:                                      ; preds = %.lr.ph, %.preheader._crit_edge
  %lftr.wideiv9.pre-phi = phi i32 [ %.pre, %.preheader._crit_edge ], [ %30, %.lr.ph ], !dbg !837
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1, !dbg !837
  %exitcond10 = icmp eq i32 %lftr.wideiv9.pre-phi, %26, !dbg !837
  br i1 %exitcond10, label %._crit_edge4, label %.preheader, !dbg !837

._crit_edge4:                                     ; preds = %._crit_edge, %.preheader1
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1, !dbg !823
  %lftr.wideiv13 = trunc i64 %indvars.iv11 to i32, !dbg !823
  %exitcond14 = icmp eq i32 %lftr.wideiv13, %27, !dbg !823
  br i1 %exitcond14, label %._crit_edge6, label %.preheader1, !dbg !823

._crit_edge6:                                     ; preds = %._crit_edge4, %0
  tail call void @ffclose(%struct.__sFILE* %18) #9, !dbg !852
  ret void, !dbg !853
}

; Function Attrs: nounwind optsize ssp uwtable
define float*** @rd_ghat(%struct.__sFILE* nocapture %log, i8* %fn, i32* nocapture %igrid, float* nocapture %gridspace, float* nocapture %beta, i32* %porder, float* nocapture %r1, float* nocapture %rc) #4 {
  %gx = alloca double, align 8
  %gy = alloca double, align 8
  %gz = alloca double, align 8
  %alX = alloca double, align 8
  %alY = alloca double, align 8
  %alZ = alloca double, align 8
  %ddd = alloca double, align 8
  %acut = alloca double, align 8
  %pval = alloca double, align 8
  %zval = alloca double, align 8
  %eref = alloca double, align 8
  %qopt = alloca double, align 8
  %r11 = alloca double, align 8
  %nalias = alloca i32, align 4
  %niter = alloca i32, align 4
  %bSym = alloca i32, align 4
  %ix = alloca i32, align 4
  %iy = alloca i32, align 4
  %iz = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %log, i64 0, metadata !295, metadata !367), !dbg !854
  tail call void @llvm.dbg.value(metadata i8* %fn, i64 0, metadata !296, metadata !367), !dbg !855
  tail call void @llvm.dbg.value(metadata i32* %igrid, i64 0, metadata !297, metadata !367), !dbg !856
  tail call void @llvm.dbg.value(metadata float* %gridspace, i64 0, metadata !298, metadata !367), !dbg !857
  tail call void @llvm.dbg.value(metadata float* %beta, i64 0, metadata !299, metadata !367), !dbg !858
  tail call void @llvm.dbg.value(metadata i32* %porder, i64 0, metadata !300, metadata !367), !dbg !859
  tail call void @llvm.dbg.value(metadata float* %r1, i64 0, metadata !301, metadata !367), !dbg !860
  tail call void @llvm.dbg.value(metadata float* %rc, i64 0, metadata !302, metadata !367), !dbg !861
  %1 = tail call %struct.__sFILE* @ffopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str11, i64 0, i64 0)) #9, !dbg !862
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %1, i64 0, metadata !303, metadata !367), !dbg !863
  tail call void @llvm.dbg.value(metadata double* %gx, i64 0, metadata !305, metadata !367), !dbg !864
  tail call void @llvm.dbg.value(metadata double* %gy, i64 0, metadata !306, metadata !367), !dbg !865
  tail call void @llvm.dbg.value(metadata double* %gz, i64 0, metadata !307, metadata !367), !dbg !866
  tail call void @llvm.dbg.value(metadata i32* %ix, i64 0, metadata !321, metadata !367), !dbg !867
  tail call void @llvm.dbg.value(metadata i32* %iy, i64 0, metadata !322, metadata !367), !dbg !868
  tail call void @llvm.dbg.value(metadata i32* %iz, i64 0, metadata !323, metadata !367), !dbg !869
  %2 = call i32 (%struct.__sFILE*, i8*, ...)* @fscanf(%struct.__sFILE* %1, i8* getelementptr inbounds ([16 x i8]* @.str12, i64 0, i64 0), i32* %ix, i32* %iy, i32* %iz, double* %gx, double* %gy, double* %gz) #9, !dbg !870
  call void @llvm.dbg.value(metadata i32* %ix, i64 0, metadata !321, metadata !367), !dbg !867
  %3 = load i32* %ix, align 4, !dbg !871, !tbaa !872
  store i32 %3, i32* %igrid, align 4, !dbg !874, !tbaa !872
  call void @llvm.dbg.value(metadata i32* %iy, i64 0, metadata !322, metadata !367), !dbg !868
  %4 = load i32* %iy, align 4, !dbg !875, !tbaa !872
  %5 = getelementptr inbounds i32* %igrid, i64 1, !dbg !876
  store i32 %4, i32* %5, align 4, !dbg !877, !tbaa !872
  call void @llvm.dbg.value(metadata i32* %iz, i64 0, metadata !323, metadata !367), !dbg !869
  %6 = load i32* %iz, align 4, !dbg !878, !tbaa !872
  %7 = getelementptr inbounds i32* %igrid, i64 2, !dbg !879
  store i32 %6, i32* %7, align 4, !dbg !880, !tbaa !872
  call void @llvm.dbg.value(metadata double* %gx, i64 0, metadata !305, metadata !367), !dbg !864
  %8 = load double* %gx, align 8, !dbg !881, !tbaa !478
  %9 = fptrunc double %8 to float, !dbg !881
  store float %9, float* %gridspace, align 4, !dbg !882, !tbaa !463
  call void @llvm.dbg.value(metadata double* %gy, i64 0, metadata !306, metadata !367), !dbg !865
  %10 = load double* %gy, align 8, !dbg !883, !tbaa !478
  %11 = fptrunc double %10 to float, !dbg !883
  %12 = getelementptr inbounds float* %gridspace, i64 1, !dbg !884
  store float %11, float* %12, align 4, !dbg !885, !tbaa !463
  call void @llvm.dbg.value(metadata double* %gz, i64 0, metadata !307, metadata !367), !dbg !866
  %13 = load double* %gz, align 8, !dbg !886, !tbaa !478
  %14 = fptrunc double %13 to float, !dbg !886
  %15 = getelementptr inbounds float* %gridspace, i64 2, !dbg !887
  store float %14, float* %15, align 4, !dbg !888, !tbaa !463
  call void @llvm.dbg.value(metadata double* %alX, i64 0, metadata !308, metadata !367), !dbg !889
  call void @llvm.dbg.value(metadata double* %alY, i64 0, metadata !309, metadata !367), !dbg !890
  call void @llvm.dbg.value(metadata double* %alZ, i64 0, metadata !310, metadata !367), !dbg !891
  call void @llvm.dbg.value(metadata i32* %nalias, i64 0, metadata !318, metadata !367), !dbg !892
  call void @llvm.dbg.value(metadata i32* %niter, i64 0, metadata !319, metadata !367), !dbg !893
  call void @llvm.dbg.value(metadata i32* %bSym, i64 0, metadata !320, metadata !367), !dbg !894
  %16 = call i32 (%struct.__sFILE*, i8*, ...)* @fscanf(%struct.__sFILE* %1, i8* getelementptr inbounds ([18 x i8]* @.str13, i64 0, i64 0), i32* %nalias, i32* %porder, i32* %niter, i32* %bSym, double* %alX, double* %alY, double* %alZ) #9, !dbg !895
  call void @llvm.dbg.value(metadata double* %acut, i64 0, metadata !312, metadata !367), !dbg !896
  call void @llvm.dbg.value(metadata double* %pval, i64 0, metadata !313, metadata !367), !dbg !897
  call void @llvm.dbg.value(metadata double* %zval, i64 0, metadata !314, metadata !367), !dbg !898
  call void @llvm.dbg.value(metadata double* %eref, i64 0, metadata !315, metadata !367), !dbg !899
  call void @llvm.dbg.value(metadata double* %qopt, i64 0, metadata !316, metadata !367), !dbg !900
  call void @llvm.dbg.value(metadata double* %r11, i64 0, metadata !317, metadata !367), !dbg !901
  %17 = call i32 (%struct.__sFILE*, i8*, ...)* @fscanf(%struct.__sFILE* %1, i8* getelementptr inbounds ([19 x i8]* @.str14, i64 0, i64 0), double* %acut, double* %r11, double* %pval, double* %zval, double* %eref, double* %qopt) #9, !dbg !902
  call void @llvm.dbg.value(metadata double* %r11, i64 0, metadata !317, metadata !367), !dbg !901
  %18 = load double* %r11, align 8, !dbg !903, !tbaa !478
  %19 = fptrunc double %18 to float, !dbg !903
  store float %19, float* %r1, align 4, !dbg !904, !tbaa !463
  call void @llvm.dbg.value(metadata double* %acut, i64 0, metadata !312, metadata !367), !dbg !896
  %20 = load double* %acut, align 8, !dbg !905, !tbaa !478
  %21 = fptrunc double %20 to float, !dbg !905
  store float %21, float* %rc, align 4, !dbg !906, !tbaa !463
  %22 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([38 x i8]* @.str15, i64 0, i64 0), i8* %fn) #9, !dbg !907
  call void @llvm.dbg.value(metadata i32* %ix, i64 0, metadata !321, metadata !367), !dbg !867
  %23 = load i32* %ix, align 4, !dbg !908, !tbaa !872
  call void @llvm.dbg.value(metadata i32* %iy, i64 0, metadata !322, metadata !367), !dbg !868
  %24 = load i32* %iy, align 4, !dbg !909, !tbaa !872
  call void @llvm.dbg.value(metadata i32* %iz, i64 0, metadata !323, metadata !367), !dbg !869
  %25 = load i32* %iz, align 4, !dbg !910, !tbaa !872
  %26 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([26 x i8]* @.str16, i64 0, i64 0), i32 %23, i32 %24, i32 %25) #9, !dbg !911
  call void @llvm.dbg.value(metadata double* %gx, i64 0, metadata !305, metadata !367), !dbg !864
  %27 = load double* %gx, align 8, !dbg !912, !tbaa !478
  call void @llvm.dbg.value(metadata double* %gy, i64 0, metadata !306, metadata !367), !dbg !865
  %28 = load double* %gy, align 8, !dbg !913, !tbaa !478
  call void @llvm.dbg.value(metadata double* %gz, i64 0, metadata !307, metadata !367), !dbg !866
  %29 = load double* %gz, align 8, !dbg !914, !tbaa !478
  %30 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([26 x i8]* @.str17, i64 0, i64 0), double %27, double %28, double %29) #9, !dbg !915
  call void @llvm.dbg.value(metadata i32* %nalias, i64 0, metadata !318, metadata !367), !dbg !892
  %31 = load i32* %nalias, align 4, !dbg !916, !tbaa !872
  %32 = load i32* %porder, align 4, !dbg !917, !tbaa !872
  call void @llvm.dbg.value(metadata i32* %niter, i64 0, metadata !319, metadata !367), !dbg !893
  %33 = load i32* %niter, align 4, !dbg !918, !tbaa !872
  call void @llvm.dbg.value(metadata i32* %bSym, i64 0, metadata !320, metadata !367), !dbg !894
  %34 = load i32* %bSym, align 4, !dbg !919, !tbaa !872
  call void @llvm.dbg.value(metadata double* %alX, i64 0, metadata !308, metadata !367), !dbg !889
  %35 = load double* %alX, align 8, !dbg !920, !tbaa !478
  call void @llvm.dbg.value(metadata double* %alY, i64 0, metadata !309, metadata !367), !dbg !890
  %36 = load double* %alY, align 8, !dbg !921, !tbaa !478
  call void @llvm.dbg.value(metadata double* %alZ, i64 0, metadata !310, metadata !367), !dbg !891
  %37 = load double* %alZ, align 8, !dbg !922, !tbaa !478
  %38 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([86 x i8]* @.str18, i64 0, i64 0), i32 %31, i32 %32, i32 %33, i32 %34, double %35, double %36, double %37) #9, !dbg !923
  call void @llvm.dbg.value(metadata double* %acut, i64 0, metadata !312, metadata !367), !dbg !896
  %39 = load double* %acut, align 8, !dbg !924, !tbaa !478
  %40 = load float* %r1, align 4, !dbg !925, !tbaa !463
  %41 = fpext float %40 to double, !dbg !925
  call void @llvm.dbg.value(metadata double* %pval, i64 0, metadata !313, metadata !367), !dbg !897
  %42 = load double* %pval, align 8, !dbg !926, !tbaa !478
  call void @llvm.dbg.value(metadata double* %zval, i64 0, metadata !314, metadata !367), !dbg !898
  %43 = load double* %zval, align 8, !dbg !927, !tbaa !478
  call void @llvm.dbg.value(metadata double* %eref, i64 0, metadata !315, metadata !367), !dbg !899
  %44 = load double* %eref, align 8, !dbg !928, !tbaa !478
  call void @llvm.dbg.value(metadata double* %qopt, i64 0, metadata !316, metadata !367), !dbg !900
  %45 = load double* %qopt, align 8, !dbg !929, !tbaa !478
  %46 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([87 x i8]* @.str19, i64 0, i64 0), double %39, double %41, double %42, double %43, double %44, double %45) #9, !dbg !930
  %47 = call i32 @fflush(%struct.__sFILE* %log) #9, !dbg !931
  call void @llvm.dbg.value(metadata double* %alX, i64 0, metadata !308, metadata !367), !dbg !889
  %48 = load double* %alX, align 8, !dbg !932, !tbaa !478
  %49 = fptrunc double %48 to float, !dbg !932
  store float %49, float* %beta, align 4, !dbg !933, !tbaa !463
  call void @llvm.dbg.value(metadata double* %alY, i64 0, metadata !309, metadata !367), !dbg !890
  %50 = load double* %alY, align 8, !dbg !934, !tbaa !478
  %51 = fptrunc double %50 to float, !dbg !934
  %52 = getelementptr inbounds float* %beta, i64 1, !dbg !935
  store float %51, float* %52, align 4, !dbg !936, !tbaa !463
  call void @llvm.dbg.value(metadata double* %alZ, i64 0, metadata !310, metadata !367), !dbg !891
  %53 = load double* %alZ, align 8, !dbg !937, !tbaa !478
  %54 = fptrunc double %53 to float, !dbg !937
  %55 = getelementptr inbounds float* %beta, i64 2, !dbg !938
  store float %54, float* %55, align 4, !dbg !939, !tbaa !463
  call void @llvm.dbg.value(metadata i32* %ix, i64 0, metadata !321, metadata !367), !dbg !867
  %56 = load i32* %ix, align 4, !dbg !940, !tbaa !872
  call void @llvm.dbg.value(metadata i32* %iy, i64 0, metadata !322, metadata !367), !dbg !868
  %57 = load i32* %iy, align 4, !dbg !941, !tbaa !872
  call void @llvm.dbg.value(metadata i32* %iz, i64 0, metadata !323, metadata !367), !dbg !869
  %58 = load i32* %iz, align 4, !dbg !942, !tbaa !872
  %59 = call float*** @mk_rgrid(i32 %56, i32 %57, i32 %58) #9, !dbg !943
  call void @llvm.dbg.value(metadata float*** %59, i64 0, metadata !304, metadata !367), !dbg !944
  call void @llvm.dbg.value(metadata i32* %bSym, i64 0, metadata !320, metadata !367), !dbg !894
  %60 = load i32* %bSym, align 4, !dbg !945, !tbaa !872
  %61 = icmp eq i32 %60, 0, !dbg !945
  %62 = load i32* %igrid, align 4, !dbg !947, !tbaa !872
  br i1 %61, label %72, label %63, !dbg !949

; <label>:63                                      ; preds = %0
  %64 = sdiv i32 %62, 2, !dbg !950
  %65 = add nsw i32 %64, 1, !dbg !951
  call void @llvm.dbg.value(metadata i32 %65, i64 0, metadata !324, metadata !367), !dbg !952
  %66 = load i32* %5, align 4, !dbg !953, !tbaa !872
  %67 = sdiv i32 %66, 2, !dbg !954
  %68 = add nsw i32 %67, 1, !dbg !955
  call void @llvm.dbg.value(metadata i32 %68, i64 0, metadata !325, metadata !367), !dbg !956
  %69 = load i32* %7, align 4, !dbg !957, !tbaa !872
  %70 = sdiv i32 %69, 2, !dbg !958
  %71 = add nsw i32 %70, 1, !dbg !959
  call void @llvm.dbg.value(metadata i32 %71, i64 0, metadata !326, metadata !367), !dbg !960
  br label %75, !dbg !961

; <label>:72                                      ; preds = %0
  call void @llvm.dbg.value(metadata i32 %62, i64 0, metadata !324, metadata !367), !dbg !952
  %73 = load i32* %5, align 4, !dbg !962, !tbaa !872
  call void @llvm.dbg.value(metadata i32 %73, i64 0, metadata !325, metadata !367), !dbg !956
  %74 = load i32* %7, align 4, !dbg !964, !tbaa !872
  call void @llvm.dbg.value(metadata i32 %74, i64 0, metadata !326, metadata !367), !dbg !960
  br label %75

; <label>:75                                      ; preds = %72, %63
  %ixmax.0 = phi i32 [ %65, %63 ], [ %62, %72 ]
  %iymax.0 = phi i32 [ %68, %63 ], [ %73, %72 ]
  %izmax.0 = phi i32 [ %71, %63 ], [ %74, %72 ]
  %76 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([26 x i8]* @.str20, i64 0, i64 0), i32 %ixmax.0, i32 %iymax.0, i32 %izmax.0) #9, !dbg !965
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !321, metadata !367), !dbg !867
  store i32 0, i32* %ix, align 4, !dbg !966, !tbaa !872
  call void @llvm.dbg.value(metadata i32* %ix, i64 0, metadata !321, metadata !367), !dbg !867
  %77 = icmp sgt i32 %ixmax.0, 0, !dbg !969
  br i1 %77, label %.preheader3.lr.ph, label %._crit_edge5, !dbg !970

.preheader3.lr.ph:                                ; preds = %75
  %78 = icmp sgt i32 %iymax.0, 0, !dbg !971
  %79 = icmp sgt i32 %izmax.0, 0, !dbg !974
  br label %.preheader3, !dbg !970

.preheader3:                                      ; preds = %.preheader3.lr.ph, %._crit_edge4
  %80 = phi i32 [ 0, %.preheader3.lr.ph ], [ %104, %._crit_edge4 ]
  store i32 0, i32* %iy, align 4, !dbg !977, !tbaa !872
  call void @llvm.dbg.value(metadata i32* %iy, i64 0, metadata !322, metadata !367), !dbg !868
  br i1 %78, label %.preheader, label %._crit_edge4, !dbg !978

.preheader:                                       ; preds = %.preheader3, %._crit_edge
  %81 = phi i32 [ %99, %._crit_edge ], [ %80, %.preheader3 ]
  %82 = phi i32 [ %101, %._crit_edge ], [ 0, %.preheader3 ]
  store i32 0, i32* %iz, align 4, !dbg !979, !tbaa !872
  call void @llvm.dbg.value(metadata i32* %iz, i64 0, metadata !323, metadata !367), !dbg !869
  br i1 %79, label %.lr.ph, label %._crit_edge, !dbg !980

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  call void @llvm.dbg.value(metadata double* %ddd, i64 0, metadata !311, metadata !367), !dbg !981
  %83 = call i32 (%struct.__sFILE*, i8*, ...)* @fscanf(%struct.__sFILE* %1, i8* getelementptr inbounds ([4 x i8]* @.str21, i64 0, i64 0), double* %ddd) #9, !dbg !982
  call void @llvm.dbg.value(metadata double* %ddd, i64 0, metadata !311, metadata !367), !dbg !981
  %84 = load double* %ddd, align 8, !dbg !984, !tbaa !478
  %85 = fptrunc double %84 to float, !dbg !984
  call void @llvm.dbg.value(metadata i32* %iz, i64 0, metadata !323, metadata !367), !dbg !869
  %86 = load i32* %iz, align 4, !dbg !985, !tbaa !872
  %87 = sext i32 %86 to i64, !dbg !986
  call void @llvm.dbg.value(metadata i32* %iy, i64 0, metadata !322, metadata !367), !dbg !868
  %88 = load i32* %iy, align 4, !dbg !987, !tbaa !872
  %89 = sext i32 %88 to i64, !dbg !986
  call void @llvm.dbg.value(metadata i32* %ix, i64 0, metadata !321, metadata !367), !dbg !867
  %90 = load i32* %ix, align 4, !dbg !988, !tbaa !872
  %91 = sext i32 %90 to i64, !dbg !986
  %92 = getelementptr inbounds float*** %59, i64 %91, !dbg !986
  %93 = load float*** %92, align 8, !dbg !986, !tbaa !533
  %94 = getelementptr inbounds float** %93, i64 %89, !dbg !986
  %95 = load float** %94, align 8, !dbg !986, !tbaa !533
  %96 = getelementptr inbounds float* %95, i64 %87, !dbg !986
  store float %85, float* %96, align 4, !dbg !989, !tbaa !463
  call void @llvm.dbg.value(metadata i32* %iz, i64 0, metadata !323, metadata !367), !dbg !869
  %97 = add nsw i32 %86, 1, !dbg !979
  call void @llvm.dbg.value(metadata i32 %97, i64 0, metadata !323, metadata !367), !dbg !869
  store i32 %97, i32* %iz, align 4, !dbg !979, !tbaa !872
  call void @llvm.dbg.value(metadata i32* %iz, i64 0, metadata !323, metadata !367), !dbg !869
  %98 = icmp slt i32 %97, %izmax.0, !dbg !974
  br i1 %98, label %.lr.ph, label %._crit_edge, !dbg !980

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %99 = phi i32 [ %81, %.preheader ], [ %90, %.lr.ph ]
  %100 = phi i32 [ %82, %.preheader ], [ %88, %.lr.ph ], !dbg !868
  call void @llvm.dbg.value(metadata i32* %iy, i64 0, metadata !322, metadata !367), !dbg !868
  %101 = add nsw i32 %100, 1, !dbg !977
  call void @llvm.dbg.value(metadata i32 %101, i64 0, metadata !322, metadata !367), !dbg !868
  store i32 %101, i32* %iy, align 4, !dbg !977, !tbaa !872
  call void @llvm.dbg.value(metadata i32* %iy, i64 0, metadata !322, metadata !367), !dbg !868
  %102 = icmp slt i32 %101, %iymax.0, !dbg !971
  br i1 %102, label %.preheader, label %._crit_edge4, !dbg !978

._crit_edge4:                                     ; preds = %._crit_edge, %.preheader3
  %103 = phi i32 [ %80, %.preheader3 ], [ %99, %._crit_edge ], !dbg !867
  call void @llvm.dbg.value(metadata i32* %ix, i64 0, metadata !321, metadata !367), !dbg !867
  %104 = add nsw i32 %103, 1, !dbg !966
  call void @llvm.dbg.value(metadata i32 %104, i64 0, metadata !321, metadata !367), !dbg !867
  store i32 %104, i32* %ix, align 4, !dbg !966, !tbaa !872
  call void @llvm.dbg.value(metadata i32* %ix, i64 0, metadata !321, metadata !367), !dbg !867
  %105 = icmp slt i32 %104, %ixmax.0, !dbg !969
  br i1 %105, label %.preheader3, label %._crit_edge5, !dbg !970

._crit_edge5:                                     ; preds = %._crit_edge4, %75
  call void @ffclose(%struct.__sFILE* %1) #9, !dbg !990
  %106 = load i32* %igrid, align 4, !dbg !991, !tbaa !872
  %107 = load i32* %5, align 4, !dbg !992, !tbaa !872
  %108 = load i32* %7, align 4, !dbg !993, !tbaa !872
  call void @llvm.dbg.value(metadata double* %gx, i64 0, metadata !305, metadata !367), !dbg !864
  %109 = load double* %gx, align 8, !dbg !994, !tbaa !478
  %110 = fptrunc double %109 to float, !dbg !994
  call void @llvm.dbg.value(metadata double* %gy, i64 0, metadata !306, metadata !367), !dbg !865
  %111 = load double* %gy, align 8, !dbg !995, !tbaa !478
  %112 = fptrunc double %111 to float, !dbg !995
  call void @llvm.dbg.value(metadata double* %gz, i64 0, metadata !307, metadata !367), !dbg !866
  %113 = load double* %gz, align 8, !dbg !996, !tbaa !478
  %114 = fptrunc double %113 to float, !dbg !996
  call void @llvm.dbg.value(metadata i32* %nalias, i64 0, metadata !318, metadata !367), !dbg !892
  %115 = load i32* %nalias, align 4, !dbg !997, !tbaa !872
  %116 = load i32* %porder, align 4, !dbg !998, !tbaa !872
  call void @llvm.dbg.value(metadata i32* %niter, i64 0, metadata !319, metadata !367), !dbg !893
  %117 = load i32* %niter, align 4, !dbg !999, !tbaa !872
  call void @llvm.dbg.value(metadata i32* %bSym, i64 0, metadata !320, metadata !367), !dbg !894
  %118 = load i32* %bSym, align 4, !dbg !1000, !tbaa !872
  %119 = load float* %r1, align 4, !dbg !1001, !tbaa !463
  %120 = load float* %rc, align 4, !dbg !1002, !tbaa !463
  call void @llvm.dbg.value(metadata double* %pval, i64 0, metadata !313, metadata !367), !dbg !897
  %121 = load double* %pval, align 8, !dbg !1003, !tbaa !478
  %122 = fptrunc double %121 to float, !dbg !1003
  call void @llvm.dbg.value(metadata double* %zval, i64 0, metadata !314, metadata !367), !dbg !898
  %123 = load double* %zval, align 8, !dbg !1004, !tbaa !478
  %124 = fptrunc double %123 to float, !dbg !1004
  call void @llvm.dbg.value(metadata double* %eref, i64 0, metadata !315, metadata !367), !dbg !899
  %125 = load double* %eref, align 8, !dbg !1005, !tbaa !478
  %126 = fptrunc double %125 to float, !dbg !1005
  call void @llvm.dbg.value(metadata double* %qopt, i64 0, metadata !316, metadata !367), !dbg !900
  %127 = load double* %qopt, align 8, !dbg !1006, !tbaa !478
  %128 = fptrunc double %127 to float, !dbg !1006
  call void @wr_ghat(i8* getelementptr inbounds ([11 x i8]* @.str22, i64 0, i64 0), i32 %106, i32 %107, i32 %108, float %110, float %112, float %114, float*** %59, i32 %115, i32 %116, i32 %117, i32 %118, float* %beta, float %119, float %120, float %122, float %124, float %126, float %128) #10, !dbg !1007
  call void @llvm.dbg.value(metadata i32* %bSym, i64 0, metadata !320, metadata !367), !dbg !894
  %129 = load i32* %bSym, align 4, !dbg !1008, !tbaa !872
  %130 = icmp eq i32 %129, 0, !dbg !1008
  br i1 %130, label %135, label %131, !dbg !1010

; <label>:131                                     ; preds = %._crit_edge5
  %132 = load i32* %igrid, align 4, !dbg !1011, !tbaa !872
  %133 = load i32* %5, align 4, !dbg !1012, !tbaa !872
  %134 = load i32* %7, align 4, !dbg !1013, !tbaa !872
  call void @symmetrize_ghat(i32 %132, i32 %133, i32 %134, float*** %59) #10, !dbg !1014
  br label %135, !dbg !1014

; <label>:135                                     ; preds = %._crit_edge5, %131
  %136 = call i64 @fwrite(i8* getelementptr inbounds ([35 x i8]* @.str23, i64 0, i64 0), i64 34, i64 1, %struct.__sFILE* %log), !dbg !1015
  ret float*** %59, !dbg !1016
}

; Function Attrs: nounwind optsize
declare i32 @fscanf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #6

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct.__sFILE* nocapture) #6

; Function Attrs: optsize
declare float*** @mk_rgrid(i32, i32, i32) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

declare float @sqrtf(float)

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #7

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct.__sFILE* nocapture) #7

attributes #0 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { readnone }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }
attributes #11 = { nounwind optsize readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!363, !364, !365}
!llvm.ident = !{!366}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !8, globals: !2, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/ghat.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "real", file: !6, line: 87, baseType: !7)
!6 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/simple.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!7 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!8 = !{!9, !15, !21, !27, !33, !36, !39, !42, !45, !48, !51, !60, !69, !82, !85, !88, !91, !105, !119, !125, !131, !149, !238, !273, !290, !327, !334, !346, !353, !358}
!9 = !DISubprogram(name: "__sigbits", scope: !10, file: !10, line: 114, type: !11, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @__sigbits, variables: !13)
!10 = !DIFile(filename: "/usr/include/signal.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!11 = !DISubroutineType(types: !12)
!12 = !{!4, !4}
!13 = !{!14}
!14 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__signo", arg: 1, scope: !9, file: !10, line: 114, type: !4)
!15 = !DISubprogram(name: "__inline_isfinitef", scope: !16, file: !16, line: 204, type: !17, isLocal: false, isDefinition: true, scopeLine: 204, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isfinitef, variables: !19)
!16 = !DIFile(filename: "/usr/include/math.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!17 = !DISubroutineType(types: !18)
!18 = !{!4, !7}
!19 = !{!20}
!20 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !15, file: !16, line: 204, type: !7)
!21 = !DISubprogram(name: "__inline_isfinited", scope: !16, file: !16, line: 207, type: !22, isLocal: false, isDefinition: true, scopeLine: 207, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isfinited, variables: !25)
!22 = !DISubroutineType(types: !23)
!23 = !{!4, !24}
!24 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!25 = !{!26}
!26 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !21, file: !16, line: 207, type: !24)
!27 = !DISubprogram(name: "__inline_isfinitel", scope: !16, file: !16, line: 210, type: !28, isLocal: false, isDefinition: true, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isfinitel, variables: !31)
!28 = !DISubroutineType(types: !29)
!29 = !{!4, !30}
!30 = !DIBasicType(name: "long double", size: 128, align: 128, encoding: DW_ATE_float)
!31 = !{!32}
!32 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !27, file: !16, line: 210, type: !30)
!33 = !DISubprogram(name: "__inline_isinff", scope: !16, file: !16, line: 213, type: !17, isLocal: false, isDefinition: true, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isinff, variables: !34)
!34 = !{!35}
!35 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !33, file: !16, line: 213, type: !7)
!36 = !DISubprogram(name: "__inline_isinfd", scope: !16, file: !16, line: 216, type: !22, isLocal: false, isDefinition: true, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isinfd, variables: !37)
!37 = !{!38}
!38 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !36, file: !16, line: 216, type: !24)
!39 = !DISubprogram(name: "__inline_isinfl", scope: !16, file: !16, line: 219, type: !28, isLocal: false, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isinfl, variables: !40)
!40 = !{!41}
!41 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !39, file: !16, line: 219, type: !30)
!42 = !DISubprogram(name: "__inline_isnanf", scope: !16, file: !16, line: 222, type: !17, isLocal: false, isDefinition: true, scopeLine: 222, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isnanf, variables: !43)
!43 = !{!44}
!44 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !42, file: !16, line: 222, type: !7)
!45 = !DISubprogram(name: "__inline_isnand", scope: !16, file: !16, line: 225, type: !22, isLocal: false, isDefinition: true, scopeLine: 225, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isnand, variables: !46)
!46 = !{!47}
!47 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !45, file: !16, line: 225, type: !24)
!48 = !DISubprogram(name: "__inline_isnanl", scope: !16, file: !16, line: 228, type: !28, isLocal: false, isDefinition: true, scopeLine: 228, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isnanl, variables: !49)
!49 = !{!50}
!50 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !48, file: !16, line: 228, type: !30)
!51 = !DISubprogram(name: "__inline_signbitf", scope: !16, file: !16, line: 231, type: !17, isLocal: false, isDefinition: true, scopeLine: 231, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_signbitf, variables: !52)
!52 = !{!53, !54}
!53 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !51, file: !16, line: 231, type: !7)
!54 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__u", scope: !51, file: !16, line: 232, type: !55)
!55 = !DICompositeType(tag: DW_TAG_union_type, scope: !51, file: !16, line: 232, size: 32, align: 32, elements: !56)
!56 = !{!57, !58}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "__f", scope: !55, file: !16, line: 232, baseType: !7, size: 32, align: 32)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "__u", scope: !55, file: !16, line: 232, baseType: !59, size: 32, align: 32)
!59 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!60 = !DISubprogram(name: "__inline_signbitd", scope: !16, file: !16, line: 236, type: !22, isLocal: false, isDefinition: true, scopeLine: 236, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_signbitd, variables: !61)
!61 = !{!62, !63}
!62 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !60, file: !16, line: 236, type: !24)
!63 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__u", scope: !60, file: !16, line: 237, type: !64)
!64 = !DICompositeType(tag: DW_TAG_union_type, scope: !60, file: !16, line: 237, size: 64, align: 64, elements: !65)
!65 = !{!66, !67}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "__f", scope: !64, file: !16, line: 237, baseType: !24, size: 64, align: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "__u", scope: !64, file: !16, line: 237, baseType: !68, size: 64, align: 64)
!68 = !DIBasicType(name: "long long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!69 = !DISubprogram(name: "__inline_signbitl", scope: !16, file: !16, line: 242, type: !28, isLocal: false, isDefinition: true, scopeLine: 242, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_signbitl, variables: !70)
!70 = !{!71, !72}
!71 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !69, file: !16, line: 242, type: !30)
!72 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__u", scope: !69, file: !16, line: 246, type: !73)
!73 = !DICompositeType(tag: DW_TAG_union_type, scope: !69, file: !16, line: 243, size: 128, align: 128, elements: !74)
!74 = !{!75, !76}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "__ld", scope: !73, file: !16, line: 244, baseType: !30, size: 128, align: 128)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "__p", scope: !73, file: !16, line: 245, baseType: !77, size: 128, align: 64)
!77 = !DICompositeType(tag: DW_TAG_structure_type, scope: !73, file: !16, line: 245, size: 128, align: 64, elements: !78)
!78 = !{!79, !80}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "__m", scope: !77, file: !16, line: 245, baseType: !68, size: 64, align: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "__sexp", scope: !77, file: !16, line: 245, baseType: !81, size: 16, align: 16, offset: 64)
!81 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!82 = !DISubprogram(name: "__inline_isnormalf", scope: !16, file: !16, line: 257, type: !17, isLocal: false, isDefinition: true, scopeLine: 257, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isnormalf, variables: !83)
!83 = !{!84}
!84 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !82, file: !16, line: 257, type: !7)
!85 = !DISubprogram(name: "__inline_isnormald", scope: !16, file: !16, line: 260, type: !22, isLocal: false, isDefinition: true, scopeLine: 260, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isnormald, variables: !86)
!86 = !{!87}
!87 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !85, file: !16, line: 260, type: !24)
!88 = !DISubprogram(name: "__inline_isnormall", scope: !16, file: !16, line: 263, type: !28, isLocal: false, isDefinition: true, scopeLine: 263, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isnormall, variables: !89)
!89 = !{!90}
!90 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !88, file: !16, line: 263, type: !30)
!91 = !DISubprogram(name: "__sincosf", scope: !16, file: !16, line: 642, type: !92, isLocal: false, isDefinition: true, scopeLine: 642, flags: DIFlagPrototyped, isOptimized: true, function: void (float, float*, float*)* @__sincosf, variables: !95)
!92 = !DISubroutineType(types: !93)
!93 = !{null, !7, !94, !94}
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!95 = !{!96, !97, !98, !99}
!96 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !91, file: !16, line: 642, type: !7)
!97 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !91, file: !16, line: 642, type: !94)
!98 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !91, file: !16, line: 642, type: !94)
!99 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !91, file: !16, line: 643, type: !100)
!100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!101 = !DICompositeType(tag: DW_TAG_structure_type, name: "__float2", file: !16, line: 634, size: 64, align: 32, elements: !102)
!102 = !{!103, !104}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "__sinval", scope: !101, file: !16, line: 634, baseType: !7, size: 32, align: 32)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "__cosval", scope: !101, file: !16, line: 634, baseType: !7, size: 32, align: 32, offset: 32)
!105 = !DISubprogram(name: "__sincos", scope: !16, file: !16, line: 647, type: !106, isLocal: false, isDefinition: true, scopeLine: 647, flags: DIFlagPrototyped, isOptimized: true, function: void (double, double*, double*)* @__sincos, variables: !109)
!106 = !DISubroutineType(types: !107)
!107 = !{null, !24, !108, !108}
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!109 = !{!110, !111, !112, !113}
!110 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !105, file: !16, line: 647, type: !24)
!111 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !105, file: !16, line: 647, type: !108)
!112 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !105, file: !16, line: 647, type: !108)
!113 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !105, file: !16, line: 648, type: !114)
!114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!115 = !DICompositeType(tag: DW_TAG_structure_type, name: "__double2", file: !16, line: 635, size: 128, align: 64, elements: !116)
!116 = !{!117, !118}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "__sinval", scope: !115, file: !16, line: 635, baseType: !24, size: 64, align: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "__cosval", scope: !115, file: !16, line: 635, baseType: !24, size: 64, align: 64, offset: 64)
!119 = !DISubprogram(name: "__sincospif", scope: !16, file: !16, line: 652, type: !92, isLocal: false, isDefinition: true, scopeLine: 652, flags: DIFlagPrototyped, isOptimized: true, function: void (float, float*, float*)* @__sincospif, variables: !120)
!120 = !{!121, !122, !123, !124}
!121 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !119, file: !16, line: 652, type: !7)
!122 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !119, file: !16, line: 652, type: !94)
!123 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !119, file: !16, line: 652, type: !94)
!124 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !119, file: !16, line: 653, type: !100)
!125 = !DISubprogram(name: "__sincospi", scope: !16, file: !16, line: 657, type: !106, isLocal: false, isDefinition: true, scopeLine: 657, flags: DIFlagPrototyped, isOptimized: true, function: void (double, double*, double*)* @__sincospi, variables: !126)
!126 = !{!127, !128, !129, !130}
!127 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !125, file: !16, line: 657, type: !24)
!128 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !125, file: !16, line: 657, type: !108)
!129 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !125, file: !16, line: 657, type: !108)
!130 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !125, file: !16, line: 658, type: !114)
!131 = !DISubprogram(name: "symmetrize_ghat", scope: !1, file: !1, line: 42, type: !132, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i32, i32, float***)* @symmetrize_ghat, variables: !137)
!132 = !DISubroutineType(types: !133)
!133 = !{null, !4, !4, !4, !134}
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64, align: 64)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!137 = !{!138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148}
!138 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nx", arg: 1, scope: !131, file: !1, line: 42, type: !4)
!139 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ny", arg: 2, scope: !131, file: !1, line: 42, type: !4)
!140 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nz", arg: 3, scope: !131, file: !1, line: 42, type: !4)
!141 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ghat", arg: 4, scope: !131, file: !1, line: 42, type: !134)
!142 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !131, file: !1, line: 44, type: !4)
!143 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !131, file: !1, line: 44, type: !4)
!144 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !131, file: !1, line: 44, type: !4)
!145 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iip", scope: !131, file: !1, line: 45, type: !4)
!146 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "jjp", scope: !131, file: !1, line: 45, type: !4)
!147 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kkp", scope: !131, file: !1, line: 45, type: !4)
!148 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ggg", scope: !131, file: !1, line: 46, type: !5)
!149 = !DISubprogram(name: "mk_ghat", scope: !1, file: !1, line: 71, type: !150, isLocal: false, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, i32, i32, i32, float***, float*, float, float, i32, i32)* @mk_ghat, variables: !215)
!150 = !DISubroutineType(types: !151)
!151 = !{null, !152, !4, !4, !4, !134, !136, !5, !5, !4, !4}
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64, align: 64)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !154, line: 153, baseType: !155)
!154 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!155 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !154, line: 122, size: 1216, align: 64, elements: !156)
!156 = !{!157, !160, !161, !162, !164, !165, !170, !171, !173, !177, !183, !193, !199, !200, !203, !204, !208, !212, !213, !214}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !155, file: !154, line: 123, baseType: !158, size: 64, align: 64)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64, align: 64)
!159 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !155, file: !154, line: 124, baseType: !4, size: 32, align: 32, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !155, file: !154, line: 125, baseType: !4, size: 32, align: 32, offset: 96)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !155, file: !154, line: 126, baseType: !163, size: 16, align: 16, offset: 128)
!163 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !155, file: !154, line: 127, baseType: !163, size: 16, align: 16, offset: 144)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !155, file: !154, line: 128, baseType: !166, size: 128, align: 64, offset: 192)
!166 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !154, line: 88, size: 128, align: 64, elements: !167)
!167 = !{!168, !169}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !166, file: !154, line: 89, baseType: !158, size: 64, align: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !166, file: !154, line: 90, baseType: !4, size: 32, align: 32, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !155, file: !154, line: 129, baseType: !4, size: 32, align: 32, offset: 320)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !155, file: !154, line: 132, baseType: !172, size: 64, align: 64, offset: 384)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !155, file: !154, line: 133, baseType: !174, size: 64, align: 64, offset: 448)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64, align: 64)
!175 = !DISubroutineType(types: !176)
!176 = !{!4, !172}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !155, file: !154, line: 134, baseType: !178, size: 64, align: 64, offset: 512)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64, align: 64)
!179 = !DISubroutineType(types: !180)
!180 = !{!4, !172, !181, !4}
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64, align: 64)
!182 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !155, file: !154, line: 135, baseType: !184, size: 64, align: 64, offset: 576)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64, align: 64)
!185 = !DISubroutineType(types: !186)
!186 = !{!187, !172, !187, !4}
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !154, line: 77, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !189, line: 71, baseType: !190)
!189 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !191, line: 46, baseType: !192)
!191 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!192 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !155, file: !154, line: 136, baseType: !194, size: 64, align: 64, offset: 640)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64, align: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{!4, !172, !197, !4}
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64, align: 64)
!198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !182)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !155, file: !154, line: 139, baseType: !166, size: 128, align: 64, offset: 704)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !155, file: !154, line: 140, baseType: !201, size: 64, align: 64, offset: 832)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64, align: 64)
!202 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !154, line: 94, flags: DIFlagFwdDecl)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !155, file: !154, line: 141, baseType: !4, size: 32, align: 32, offset: 896)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !155, file: !154, line: 144, baseType: !205, size: 24, align: 8, offset: 928)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 24, align: 8, elements: !206)
!206 = !{!207}
!207 = !DISubrange(count: 3)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !155, file: !154, line: 145, baseType: !209, size: 8, align: 8, offset: 952)
!209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 8, align: 8, elements: !210)
!210 = !{!211}
!211 = !DISubrange(count: 1)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !155, file: !154, line: 148, baseType: !166, size: 128, align: 64, offset: 960)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !155, file: !154, line: 151, baseType: !4, size: 32, align: 32, offset: 1088)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !155, file: !154, line: 152, baseType: !187, size: 64, align: 64, offset: 1152)
!215 = !{!216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !237}
!216 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !149, file: !1, line: 71, type: !152)
!217 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nx", arg: 2, scope: !149, file: !1, line: 71, type: !4)
!218 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ny", arg: 3, scope: !149, file: !1, line: 71, type: !4)
!219 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nz", arg: 4, scope: !149, file: !1, line: 71, type: !4)
!220 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ghat", arg: 5, scope: !149, file: !1, line: 71, type: !134)
!221 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "box", arg: 6, scope: !149, file: !1, line: 72, type: !136)
!222 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r1", arg: 7, scope: !149, file: !1, line: 72, type: !5)
!223 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "rc", arg: 8, scope: !149, file: !1, line: 72, type: !5)
!224 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bSym", arg: 9, scope: !149, file: !1, line: 72, type: !4)
!225 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bOld", arg: 10, scope: !149, file: !1, line: 72, type: !4)
!226 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ix", scope: !149, file: !1, line: 74, type: !4)
!227 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iy", scope: !149, file: !1, line: 74, type: !4)
!228 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iz", scope: !149, file: !1, line: 74, type: !4)
!229 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ixmax", scope: !149, file: !1, line: 75, type: !4)
!230 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iymax", scope: !149, file: !1, line: 75, type: !4)
!231 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "izmax", scope: !149, file: !1, line: 75, type: !4)
!232 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k2", scope: !149, file: !1, line: 76, type: !5)
!233 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ggg", scope: !149, file: !1, line: 76, type: !5)
!234 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !149, file: !1, line: 77, type: !235)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "rvec", file: !6, line: 101, baseType: !236)
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 96, align: 32, elements: !206)
!237 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lll", scope: !149, file: !1, line: 77, type: !235)
!238 = !DISubprogram(name: "wr_ghat", scope: !1, file: !1, line: 113, type: !239, isLocal: false, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i32, i32, i32, float, float, float, float***, i32, i32, i32, i32, float*, float, float, float, float, float, float)* @wr_ghat, variables: !241)
!239 = !DISubroutineType(types: !240)
!240 = !{null, !181, !4, !4, !4, !5, !5, !5, !134, !4, !4, !4, !4, !136, !5, !5, !5, !5, !5, !5}
!241 = !{!242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272}
!242 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fn", arg: 1, scope: !238, file: !1, line: 113, type: !181)
!243 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n1max", arg: 2, scope: !238, file: !1, line: 113, type: !4)
!244 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n2max", arg: 3, scope: !238, file: !1, line: 113, type: !4)
!245 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n3max", arg: 4, scope: !238, file: !1, line: 113, type: !4)
!246 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "h1", arg: 5, scope: !238, file: !1, line: 113, type: !5)
!247 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "h2", arg: 6, scope: !238, file: !1, line: 113, type: !5)
!248 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "h3", arg: 7, scope: !238, file: !1, line: 113, type: !5)
!249 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ghat", arg: 8, scope: !238, file: !1, line: 114, type: !134)
!250 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nalias", arg: 9, scope: !238, file: !1, line: 114, type: !4)
!251 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "porder", arg: 10, scope: !238, file: !1, line: 114, type: !4)
!252 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "niter", arg: 11, scope: !238, file: !1, line: 114, type: !4)
!253 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bSym", arg: 12, scope: !238, file: !1, line: 114, type: !4)
!254 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "beta", arg: 13, scope: !238, file: !1, line: 114, type: !136)
!255 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r1", arg: 14, scope: !238, file: !1, line: 115, type: !5)
!256 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "rc", arg: 15, scope: !238, file: !1, line: 115, type: !5)
!257 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pval", arg: 16, scope: !238, file: !1, line: 115, type: !5)
!258 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "zval", arg: 17, scope: !238, file: !1, line: 115, type: !5)
!259 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "eref", arg: 18, scope: !238, file: !1, line: 115, type: !5)
!260 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "qopt", arg: 19, scope: !238, file: !1, line: 115, type: !5)
!261 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fp", scope: !238, file: !1, line: 117, type: !152)
!262 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "N1MAX", scope: !238, file: !1, line: 118, type: !4)
!263 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "N2MAX", scope: !238, file: !1, line: 118, type: !4)
!264 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "N3MAX", scope: !238, file: !1, line: 118, type: !4)
!265 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bNL", scope: !238, file: !1, line: 119, type: !4)
!266 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rx", scope: !238, file: !1, line: 120, type: !5)
!267 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ry", scope: !238, file: !1, line: 120, type: !5)
!268 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rz", scope: !238, file: !1, line: 120, type: !5)
!269 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ii", scope: !238, file: !1, line: 121, type: !4)
!270 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "jj", scope: !238, file: !1, line: 121, type: !4)
!271 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kk", scope: !238, file: !1, line: 121, type: !4)
!272 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nn", scope: !238, file: !1, line: 121, type: !4)
!273 = !DISubprogram(name: "pr_scalar_gk", scope: !1, file: !1, line: 171, type: !274, isLocal: false, isDefinition: true, scopeLine: 172, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i32, i32, i32, float*, float***)* @pr_scalar_gk, variables: !276)
!274 = !DISubroutineType(types: !275)
!275 = !{null, !181, !4, !4, !4, !136, !134}
!276 = !{!277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289}
!277 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fn", arg: 1, scope: !273, file: !1, line: 171, type: !181)
!278 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nx", arg: 2, scope: !273, file: !1, line: 171, type: !4)
!279 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ny", arg: 3, scope: !273, file: !1, line: 171, type: !4)
!280 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nz", arg: 4, scope: !273, file: !1, line: 171, type: !4)
!281 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "box", arg: 5, scope: !273, file: !1, line: 171, type: !136)
!282 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ghat", arg: 6, scope: !273, file: !1, line: 171, type: !134)
!283 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fp", scope: !273, file: !1, line: 173, type: !152)
!284 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ii", scope: !273, file: !1, line: 174, type: !4)
!285 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "jj", scope: !273, file: !1, line: 174, type: !4)
!286 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kk", scope: !273, file: !1, line: 174, type: !4)
!287 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k1", scope: !273, file: !1, line: 175, type: !5)
!288 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !273, file: !1, line: 176, type: !235)
!289 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lll", scope: !273, file: !1, line: 176, type: !235)
!290 = !DISubprogram(name: "rd_ghat", scope: !1, file: !1, line: 193, type: !291, isLocal: false, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, function: float*** (%struct.__sFILE*, i8*, i32*, float*, float*, i32*, float*, float*)* @rd_ghat, variables: !294)
!291 = !DISubroutineType(types: !292)
!292 = !{!134, !152, !181, !293, !136, !136, !293, !136, !136}
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!294 = !{!295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326}
!295 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "log", arg: 1, scope: !290, file: !1, line: 193, type: !152)
!296 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fn", arg: 2, scope: !290, file: !1, line: 193, type: !181)
!297 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "igrid", arg: 3, scope: !290, file: !1, line: 193, type: !293)
!298 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "gridspace", arg: 4, scope: !290, file: !1, line: 193, type: !136)
!299 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "beta", arg: 5, scope: !290, file: !1, line: 194, type: !136)
!300 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "porder", arg: 6, scope: !290, file: !1, line: 194, type: !293)
!301 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "r1", arg: 7, scope: !290, file: !1, line: 194, type: !136)
!302 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "rc", arg: 8, scope: !290, file: !1, line: 194, type: !136)
!303 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "in", scope: !290, file: !1, line: 196, type: !152)
!304 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gh", scope: !290, file: !1, line: 197, type: !134)
!305 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gx", scope: !290, file: !1, line: 198, type: !24)
!306 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gy", scope: !290, file: !1, line: 198, type: !24)
!307 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "gz", scope: !290, file: !1, line: 198, type: !24)
!308 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "alX", scope: !290, file: !1, line: 198, type: !24)
!309 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "alY", scope: !290, file: !1, line: 198, type: !24)
!310 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "alZ", scope: !290, file: !1, line: 198, type: !24)
!311 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ddd", scope: !290, file: !1, line: 198, type: !24)
!312 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "acut", scope: !290, file: !1, line: 199, type: !24)
!313 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pval", scope: !290, file: !1, line: 199, type: !24)
!314 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "zval", scope: !290, file: !1, line: 199, type: !24)
!315 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "eref", scope: !290, file: !1, line: 199, type: !24)
!316 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "qopt", scope: !290, file: !1, line: 199, type: !24)
!317 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r11", scope: !290, file: !1, line: 199, type: !24)
!318 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nalias", scope: !290, file: !1, line: 200, type: !4)
!319 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "niter", scope: !290, file: !1, line: 200, type: !4)
!320 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bSym", scope: !290, file: !1, line: 200, type: !4)
!321 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ix", scope: !290, file: !1, line: 201, type: !4)
!322 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iy", scope: !290, file: !1, line: 201, type: !4)
!323 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iz", scope: !290, file: !1, line: 201, type: !4)
!324 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ixmax", scope: !290, file: !1, line: 201, type: !4)
!325 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "iymax", scope: !290, file: !1, line: 201, type: !4)
!326 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "izmax", scope: !290, file: !1, line: 201, type: !4)
!327 = !DISubprogram(name: "calc_lll", scope: !328, file: !328, line: 90, type: !329, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, variables: !331)
!328 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/shift_util.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!329 = !DISubroutineType(types: !330)
!330 = !{null, !136, !136}
!331 = !{!332, !333}
!332 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "box", arg: 1, scope: !327, file: !328, line: 90, type: !136)
!333 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lll", arg: 2, scope: !327, file: !328, line: 90, type: !136)
!334 = !DISubprogram(name: "calc_k", scope: !328, file: !328, line: 97, type: !335, isLocal: true, isDefinition: true, scopeLine: 98, flags: DIFlagPrototyped, isOptimized: true, function: void (float*, i32, i32, i32, i32, i32, i32, float*)* @calc_k, variables: !337)
!335 = !DISubroutineType(types: !336)
!336 = !{null, !136, !4, !4, !4, !4, !4, !4, !136}
!337 = !{!338, !339, !340, !341, !342, !343, !344, !345}
!338 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lll", arg: 1, scope: !334, file: !328, line: 97, type: !136)
!339 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ix", arg: 2, scope: !334, file: !328, line: 97, type: !4)
!340 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "iy", arg: 3, scope: !334, file: !328, line: 97, type: !4)
!341 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "iz", arg: 4, scope: !334, file: !328, line: 97, type: !4)
!342 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nx", arg: 5, scope: !334, file: !328, line: 97, type: !4)
!343 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ny", arg: 6, scope: !334, file: !328, line: 97, type: !4)
!344 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nz", arg: 7, scope: !334, file: !328, line: 97, type: !4)
!345 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "k", arg: 8, scope: !334, file: !328, line: 97, type: !136)
!346 = !DISubprogram(name: "iprod", scope: !347, file: !347, line: 343, type: !348, isLocal: true, isDefinition: true, scopeLine: 344, flags: DIFlagPrototyped, isOptimized: true, variables: !350)
!347 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/vec.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!348 = !DISubroutineType(types: !349)
!349 = !{!5, !136, !136}
!350 = !{!351, !352}
!351 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !346, file: !347, line: 343, type: !136)
!352 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !346, file: !347, line: 343, type: !136)
!353 = !DISubprogram(name: "sqr", scope: !347, file: !347, line: 197, type: !354, isLocal: true, isDefinition: true, scopeLine: 198, flags: DIFlagPrototyped, isOptimized: true, variables: !356)
!354 = !DISubroutineType(types: !355)
!355 = !{!5, !5}
!356 = !{!357}
!357 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !353, file: !347, line: 197, type: !5)
!358 = !DISubprogram(name: "norm", scope: !347, file: !347, line: 358, type: !359, isLocal: true, isDefinition: true, scopeLine: 359, flags: DIFlagPrototyped, isOptimized: true, variables: !361)
!359 = !DISubroutineType(types: !360)
!360 = !{!5, !136}
!361 = !{!362}
!362 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !358, file: !347, line: 358, type: !136)
!363 = !{i32 2, !"Dwarf Version", i32 2}
!364 = !{i32 2, !"Debug Info Version", i32 700000003}
!365 = !{i32 1, !"PIC Level", i32 2}
!366 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!367 = !DIExpression()
!368 = !DILocation(line: 114, column: 15, scope: !9)
!369 = !DILocation(line: 116, column: 20, scope: !9)
!370 = !DILocation(line: 116, column: 12, scope: !9)
!371 = !DILocation(line: 116, column: 57, scope: !9)
!372 = !DILocation(line: 116, column: 45, scope: !9)
!373 = !DILocation(line: 116, column: 5, scope: !9)
!374 = !DILocation(line: 204, column: 53, scope: !15)
!375 = !DILocation(line: 205, column: 16, scope: !15)
!376 = !DILocation(line: 205, column: 23, scope: !15)
!377 = !DILocation(line: 205, column: 26, scope: !15)
!378 = !DILocation(line: 205, column: 47, scope: !15)
!379 = !DILocation(line: 205, column: 5, scope: !15)
!380 = !DILocation(line: 207, column: 54, scope: !21)
!381 = !DILocation(line: 208, column: 16, scope: !21)
!382 = !DILocation(line: 208, column: 23, scope: !21)
!383 = !DILocation(line: 208, column: 26, scope: !21)
!384 = !DILocation(line: 208, column: 46, scope: !21)
!385 = !DILocation(line: 208, column: 5, scope: !21)
!386 = !DILocation(line: 210, column: 59, scope: !27)
!387 = !DILocation(line: 211, column: 16, scope: !27)
!388 = !DILocation(line: 211, column: 23, scope: !27)
!389 = !DILocation(line: 211, column: 26, scope: !27)
!390 = !DILocation(line: 211, column: 47, scope: !27)
!391 = !DILocation(line: 211, column: 5, scope: !27)
!392 = !DILocation(line: 213, column: 50, scope: !33)
!393 = !DILocation(line: 214, column: 12, scope: !33)
!394 = !DILocation(line: 214, column: 33, scope: !33)
!395 = !DILocation(line: 214, column: 5, scope: !33)
!396 = !DILocation(line: 216, column: 51, scope: !36)
!397 = !DILocation(line: 217, column: 12, scope: !36)
!398 = !DILocation(line: 217, column: 32, scope: !36)
!399 = !DILocation(line: 217, column: 5, scope: !36)
!400 = !DILocation(line: 219, column: 56, scope: !39)
!401 = !DILocation(line: 220, column: 12, scope: !39)
!402 = !DILocation(line: 220, column: 33, scope: !39)
!403 = !DILocation(line: 220, column: 5, scope: !39)
!404 = !DILocation(line: 222, column: 50, scope: !42)
!405 = !DILocation(line: 223, column: 16, scope: !42)
!406 = !DILocation(line: 223, column: 5, scope: !42)
!407 = !DILocation(line: 225, column: 51, scope: !45)
!408 = !DILocation(line: 226, column: 16, scope: !45)
!409 = !DILocation(line: 226, column: 5, scope: !45)
!410 = !DILocation(line: 228, column: 56, scope: !48)
!411 = !DILocation(line: 229, column: 16, scope: !48)
!412 = !DILocation(line: 229, column: 5, scope: !48)
!413 = !DILocation(line: 231, column: 52, scope: !51)
!414 = !DILocation(line: 232, column: 44, scope: !51)
!415 = !DILocation(line: 233, column: 13, scope: !51)
!416 = !DILocation(line: 234, column: 26, scope: !51)
!417 = !DILocation(line: 234, column: 5, scope: !51)
!418 = !DILocation(line: 236, column: 53, scope: !60)
!419 = !DILocation(line: 237, column: 51, scope: !60)
!420 = !DILocation(line: 238, column: 13, scope: !60)
!421 = !DILocation(line: 239, column: 26, scope: !60)
!422 = !DILocation(line: 239, column: 12, scope: !60)
!423 = !DILocation(line: 239, column: 5, scope: !60)
!424 = !DILocation(line: 242, column: 58, scope: !69)
!425 = !DILocation(line: 246, column: 7, scope: !69)
!426 = !DILocation(line: 248, column: 26, scope: !69)
!427 = !DILocation(line: 248, column: 33, scope: !69)
!428 = !DILocation(line: 248, column: 5, scope: !69)
!429 = !DILocation(line: 257, column: 53, scope: !82)
!430 = !DILocation(line: 204, column: 53, scope: !15, inlinedAt: !431)
!431 = distinct !DILocation(line: 258, column: 12, scope: !82)
!432 = !DILocation(line: 205, column: 16, scope: !15, inlinedAt: !431)
!433 = !DILocation(line: 205, column: 47, scope: !15, inlinedAt: !431)
!434 = !DILocation(line: 205, column: 23, scope: !15, inlinedAt: !431)
!435 = !DILocation(line: 258, column: 60, scope: !82)
!436 = !DILocation(line: 258, column: 36, scope: !82)
!437 = !DILocation(line: 258, column: 5, scope: !82)
!438 = !DILocation(line: 260, column: 54, scope: !85)
!439 = !DILocation(line: 207, column: 54, scope: !21, inlinedAt: !440)
!440 = distinct !DILocation(line: 261, column: 12, scope: !85)
!441 = !DILocation(line: 208, column: 16, scope: !21, inlinedAt: !440)
!442 = !DILocation(line: 208, column: 46, scope: !21, inlinedAt: !440)
!443 = !DILocation(line: 208, column: 23, scope: !21, inlinedAt: !440)
!444 = !DILocation(line: 261, column: 59, scope: !85)
!445 = !DILocation(line: 261, column: 36, scope: !85)
!446 = !DILocation(line: 261, column: 5, scope: !85)
!447 = !DILocation(line: 263, column: 59, scope: !88)
!448 = !DILocation(line: 210, column: 59, scope: !27, inlinedAt: !449)
!449 = distinct !DILocation(line: 264, column: 12, scope: !88)
!450 = !DILocation(line: 211, column: 16, scope: !27, inlinedAt: !449)
!451 = !DILocation(line: 211, column: 47, scope: !27, inlinedAt: !449)
!452 = !DILocation(line: 211, column: 23, scope: !27, inlinedAt: !449)
!453 = !DILocation(line: 264, column: 60, scope: !88)
!454 = !DILocation(line: 264, column: 36, scope: !88)
!455 = !DILocation(line: 264, column: 5, scope: !88)
!456 = !DILocation(line: 642, column: 45, scope: !91)
!457 = !DILocation(line: 642, column: 57, scope: !91)
!458 = !DILocation(line: 642, column: 72, scope: !91)
!459 = !DILocation(line: 643, column: 27, scope: !91)
!460 = !DILocation(line: 643, column: 37, scope: !91)
!461 = !DILocation(line: 644, column: 23, scope: !91)
!462 = !DILocation(line: 644, column: 13, scope: !91)
!463 = !{!464, !464, i64 0}
!464 = !{!"float", !465, i64 0}
!465 = !{!"omnipotent char", !466, i64 0}
!466 = !{!"Simple C/C++ TBAA"}
!467 = !DILocation(line: 644, column: 51, scope: !91)
!468 = !DILocation(line: 644, column: 41, scope: !91)
!469 = !DILocation(line: 645, column: 1, scope: !91)
!470 = !DILocation(line: 647, column: 45, scope: !105)
!471 = !DILocation(line: 647, column: 58, scope: !105)
!472 = !DILocation(line: 647, column: 74, scope: !105)
!473 = !DILocation(line: 648, column: 28, scope: !105)
!474 = !DILocation(line: 648, column: 38, scope: !105)
!475 = !DIExpression(DW_OP_bit_piece, 0, 64)
!476 = !DIExpression(DW_OP_bit_piece, 64, 64)
!477 = !DILocation(line: 649, column: 13, scope: !105)
!478 = !{!479, !479, i64 0}
!479 = !{!"double", !465, i64 0}
!480 = !DILocation(line: 649, column: 41, scope: !105)
!481 = !DILocation(line: 650, column: 1, scope: !105)
!482 = !DILocation(line: 652, column: 47, scope: !119)
!483 = !DILocation(line: 652, column: 59, scope: !119)
!484 = !DILocation(line: 652, column: 74, scope: !119)
!485 = !DILocation(line: 653, column: 27, scope: !119)
!486 = !DILocation(line: 653, column: 37, scope: !119)
!487 = !DILocation(line: 654, column: 23, scope: !119)
!488 = !DILocation(line: 654, column: 13, scope: !119)
!489 = !DILocation(line: 654, column: 51, scope: !119)
!490 = !DILocation(line: 654, column: 41, scope: !119)
!491 = !DILocation(line: 655, column: 1, scope: !119)
!492 = !DILocation(line: 657, column: 47, scope: !125)
!493 = !DILocation(line: 657, column: 60, scope: !125)
!494 = !DILocation(line: 657, column: 76, scope: !125)
!495 = !DILocation(line: 658, column: 28, scope: !125)
!496 = !DILocation(line: 658, column: 38, scope: !125)
!497 = !DILocation(line: 659, column: 13, scope: !125)
!498 = !DILocation(line: 659, column: 41, scope: !125)
!499 = !DILocation(line: 660, column: 1, scope: !125)
!500 = !DILocation(line: 42, column: 26, scope: !131)
!501 = !DILocation(line: 42, column: 33, scope: !131)
!502 = !DILocation(line: 42, column: 40, scope: !131)
!503 = !DILocation(line: 42, column: 51, scope: !131)
!504 = !DILocation(line: 44, column: 8, scope: !131)
!505 = !DILocation(line: 52, column: 14, scope: !506)
!506 = distinct !DILexicalBlock(scope: !507, file: !1, line: 52, column: 3)
!507 = distinct !DILexicalBlock(scope: !131, file: !1, line: 52, column: 3)
!508 = !DILocation(line: 52, column: 3, scope: !507)
!509 = !DILocation(line: 52, column: 18, scope: !506)
!510 = !DILocation(line: 54, column: 20, scope: !511)
!511 = distinct !DILexicalBlock(scope: !512, file: !1, line: 54, column: 5)
!512 = distinct !DILexicalBlock(scope: !513, file: !1, line: 54, column: 5)
!513 = distinct !DILexicalBlock(scope: !506, file: !1, line: 52, column: 28)
!514 = !DILocation(line: 54, column: 16, scope: !511)
!515 = !DILocation(line: 56, column: 22, scope: !516)
!516 = distinct !DILexicalBlock(scope: !517, file: !1, line: 56, column: 7)
!517 = distinct !DILexicalBlock(scope: !518, file: !1, line: 56, column: 7)
!518 = distinct !DILexicalBlock(scope: !511, file: !1, line: 54, column: 30)
!519 = !DILocation(line: 56, column: 18, scope: !516)
!520 = !DILocation(line: 45, column: 8, scope: !131)
!521 = !DILocation(line: 44, column: 10, scope: !131)
!522 = !DILocation(line: 54, column: 5, scope: !512)
!523 = !DILocation(line: 53, column: 14, scope: !513)
!524 = !DILocation(line: 53, column: 18, scope: !513)
!525 = !DILocation(line: 58, column: 24, scope: !526)
!526 = distinct !DILexicalBlock(scope: !516, file: !1, line: 56, column: 32)
!527 = !DILocation(line: 62, column: 2, scope: !526)
!528 = !DILocation(line: 45, column: 12, scope: !131)
!529 = !DILocation(line: 44, column: 12, scope: !131)
!530 = !DILocation(line: 56, column: 7, scope: !517)
!531 = !DILocation(line: 55, column: 16, scope: !518)
!532 = !DILocation(line: 55, column: 20, scope: !518)
!533 = !{!534, !534, i64 0}
!534 = !{!"any pointer", !465, i64 0}
!535 = !DILocation(line: 59, column: 2, scope: !526)
!536 = !DILocation(line: 63, column: 2, scope: !526)
!537 = !DILocation(line: 57, column: 11, scope: !526)
!538 = !DILocation(line: 57, column: 15, scope: !526)
!539 = !DILocation(line: 45, column: 16, scope: !131)
!540 = !DILocation(line: 59, column: 22, scope: !526)
!541 = !DILocation(line: 60, column: 2, scope: !526)
!542 = !DILocation(line: 60, column: 22, scope: !526)
!543 = !DILocation(line: 61, column: 2, scope: !526)
!544 = !DILocation(line: 61, column: 22, scope: !526)
!545 = !DILocation(line: 62, column: 22, scope: !526)
!546 = !DILocation(line: 63, column: 22, scope: !526)
!547 = !DILocation(line: 64, column: 2, scope: !526)
!548 = !DILocation(line: 64, column: 22, scope: !526)
!549 = !DILocation(line: 65, column: 2, scope: !526)
!550 = !DILocation(line: 65, column: 22, scope: !526)
!551 = !DILocation(line: 69, column: 1, scope: !131)
!552 = !DILocation(line: 71, column: 20, scope: !149)
!553 = !DILocation(line: 71, column: 27, scope: !149)
!554 = !DILocation(line: 71, column: 34, scope: !149)
!555 = !DILocation(line: 71, column: 41, scope: !149)
!556 = !DILocation(line: 71, column: 52, scope: !149)
!557 = !DILocation(line: 72, column: 12, scope: !149)
!558 = !DILocation(line: 72, column: 21, scope: !149)
!559 = !DILocation(line: 72, column: 29, scope: !149)
!560 = !DILocation(line: 72, column: 37, scope: !149)
!561 = !DILocation(line: 72, column: 47, scope: !149)
!562 = !DILocation(line: 77, column: 8, scope: !149)
!563 = !DILocation(line: 77, column: 10, scope: !149)
!564 = !DILocation(line: 79, column: 16, scope: !149)
!565 = !DILocation(line: 90, column: 27, scope: !327, inlinedAt: !566)
!566 = distinct !DILocation(line: 79, column: 3, scope: !149)
!567 = !DILocation(line: 90, column: 36, scope: !327, inlinedAt: !566)
!568 = !DILocation(line: 92, column: 22, scope: !327, inlinedAt: !566)
!569 = !DILocation(line: 92, column: 21, scope: !327, inlinedAt: !566)
!570 = !DILocation(line: 92, column: 13, scope: !327, inlinedAt: !566)
!571 = !DILocation(line: 92, column: 11, scope: !327, inlinedAt: !566)
!572 = !DILocation(line: 93, column: 22, scope: !327, inlinedAt: !566)
!573 = !DILocation(line: 93, column: 21, scope: !327, inlinedAt: !566)
!574 = !DILocation(line: 93, column: 13, scope: !327, inlinedAt: !566)
!575 = !DILocation(line: 93, column: 3, scope: !327, inlinedAt: !566)
!576 = !DILocation(line: 93, column: 11, scope: !327, inlinedAt: !566)
!577 = !DILocation(line: 94, column: 22, scope: !327, inlinedAt: !566)
!578 = !DILocation(line: 94, column: 21, scope: !327, inlinedAt: !566)
!579 = !DILocation(line: 94, column: 13, scope: !327, inlinedAt: !566)
!580 = !DILocation(line: 94, column: 3, scope: !327, inlinedAt: !566)
!581 = !DILocation(line: 94, column: 11, scope: !327, inlinedAt: !566)
!582 = !DILocation(line: 81, column: 7, scope: !583)
!583 = distinct !DILexicalBlock(scope: !149, file: !1, line: 81, column: 7)
!584 = !DILocation(line: 81, column: 7, scope: !149)
!585 = !DILocation(line: 82, column: 13, scope: !586)
!586 = distinct !DILexicalBlock(scope: !583, file: !1, line: 81, column: 13)
!587 = !DILocation(line: 82, column: 15, scope: !586)
!588 = !DILocation(line: 75, column: 8, scope: !149)
!589 = !DILocation(line: 83, column: 13, scope: !586)
!590 = !DILocation(line: 83, column: 15, scope: !586)
!591 = !DILocation(line: 75, column: 14, scope: !149)
!592 = !DILocation(line: 84, column: 13, scope: !586)
!593 = !DILocation(line: 84, column: 15, scope: !586)
!594 = !DILocation(line: 75, column: 20, scope: !149)
!595 = !DILocation(line: 85, column: 3, scope: !586)
!596 = !DILocation(line: 74, column: 8, scope: !149)
!597 = !DILocation(line: 92, column: 17, scope: !598)
!598 = distinct !DILexicalBlock(scope: !599, file: !1, line: 92, column: 3)
!599 = distinct !DILexicalBlock(scope: !149, file: !1, line: 92, column: 3)
!600 = !DILocation(line: 92, column: 3, scope: !599)
!601 = !DILocation(line: 93, column: 19, scope: !602)
!602 = distinct !DILexicalBlock(scope: !603, file: !1, line: 93, column: 5)
!603 = distinct !DILexicalBlock(scope: !604, file: !1, line: 93, column: 5)
!604 = distinct !DILexicalBlock(scope: !598, file: !1, line: 92, column: 33)
!605 = !DILocation(line: 94, column: 21, scope: !606)
!606 = distinct !DILexicalBlock(scope: !607, file: !1, line: 94, column: 7)
!607 = distinct !DILexicalBlock(scope: !608, file: !1, line: 94, column: 7)
!608 = distinct !DILexicalBlock(scope: !602, file: !1, line: 93, column: 35)
!609 = !DILocation(line: 95, column: 31, scope: !610)
!610 = distinct !DILexicalBlock(scope: !606, file: !1, line: 94, column: 37)
!611 = !DILocation(line: 345, column: 23, scope: !346, inlinedAt: !612)
!612 = distinct !DILocation(line: 96, column: 7, scope: !610)
!613 = !DILocation(line: 345, column: 35, scope: !346, inlinedAt: !612)
!614 = !DILocation(line: 100, column: 8, scope: !615)
!615 = distinct !DILexicalBlock(scope: !616, file: !1, line: 100, column: 8)
!616 = distinct !DILexicalBlock(scope: !617, file: !1, line: 99, column: 7)
!617 = distinct !DILexicalBlock(scope: !610, file: !1, line: 97, column: 6)
!618 = !DILocation(line: 93, column: 5, scope: !603)
!619 = !DILocation(line: 105, column: 2, scope: !610)
!620 = !DILocation(line: 97, column: 16, scope: !617)
!621 = !DILocation(line: 94, column: 7, scope: !607)
!622 = !DILocation(line: 95, column: 2, scope: !610)
!623 = !DILocation(line: 343, column: 31, scope: !346, inlinedAt: !612)
!624 = !DILocation(line: 343, column: 38, scope: !346, inlinedAt: !612)
!625 = !DILocation(line: 345, column: 11, scope: !346, inlinedAt: !612)
!626 = !DILocation(line: 345, column: 16, scope: !346, inlinedAt: !612)
!627 = !DILocation(line: 345, column: 28, scope: !346, inlinedAt: !612)
!628 = !DILocation(line: 345, column: 22, scope: !346, inlinedAt: !612)
!629 = !DILocation(line: 345, column: 40, scope: !346, inlinedAt: !612)
!630 = !DILocation(line: 345, column: 34, scope: !346, inlinedAt: !612)
!631 = !DILocation(line: 76, column: 8, scope: !149)
!632 = !DILocation(line: 101, column: 20, scope: !615)
!633 = !DILocation(line: 101, column: 15, scope: !615)
!634 = !DILocation(line: 100, column: 8, scope: !616)
!635 = !DILocation(line: 101, column: 12, scope: !615)
!636 = !DILocation(line: 101, column: 34, scope: !615)
!637 = !DILocation(line: 101, column: 30, scope: !615)
!638 = !DILocation(line: 76, column: 11, scope: !149)
!639 = !DILocation(line: 101, column: 6, scope: !615)
!640 = !DILocation(line: 103, column: 12, scope: !615)
!641 = !DILocation(line: 103, column: 37, scope: !615)
!642 = !DILocation(line: 103, column: 33, scope: !615)
!643 = !DILocation(line: 105, column: 18, scope: !610)
!644 = !DILocation(line: 109, column: 7, scope: !149)
!645 = !DILocation(line: 110, column: 5, scope: !646)
!646 = distinct !DILexicalBlock(scope: !149, file: !1, line: 109, column: 7)
!647 = !DILocation(line: 111, column: 1, scope: !149)
!648 = !DILocation(line: 97, column: 25, scope: !334)
!649 = !DILocation(line: 97, column: 33, scope: !334)
!650 = !DILocation(line: 97, column: 40, scope: !334)
!651 = !DILocation(line: 97, column: 47, scope: !334)
!652 = !DILocation(line: 97, column: 54, scope: !334)
!653 = !DILocation(line: 97, column: 61, scope: !334)
!654 = !DILocation(line: 97, column: 68, scope: !334)
!655 = !DILocation(line: 97, column: 76, scope: !334)
!656 = !DILocation(line: 100, column: 11, scope: !334)
!657 = !DILocation(line: 100, column: 9, scope: !334)
!658 = !DILocation(line: 101, column: 11, scope: !334)
!659 = !DILocation(line: 101, column: 3, scope: !334)
!660 = !DILocation(line: 101, column: 9, scope: !334)
!661 = !DILocation(line: 102, column: 11, scope: !334)
!662 = !DILocation(line: 102, column: 3, scope: !334)
!663 = !DILocation(line: 102, column: 9, scope: !334)
!664 = !DILocation(line: 104, column: 1, scope: !334)
!665 = !DILocation(line: 113, column: 20, scope: !238)
!666 = !DILocation(line: 113, column: 27, scope: !238)
!667 = !DILocation(line: 113, column: 37, scope: !238)
!668 = !DILocation(line: 113, column: 47, scope: !238)
!669 = !DILocation(line: 113, column: 58, scope: !238)
!670 = !DILocation(line: 113, column: 66, scope: !238)
!671 = !DILocation(line: 113, column: 74, scope: !238)
!672 = !DILocation(line: 114, column: 15, scope: !238)
!673 = !DILocation(line: 114, column: 24, scope: !238)
!674 = !DILocation(line: 114, column: 35, scope: !238)
!675 = !DILocation(line: 114, column: 46, scope: !238)
!676 = !DILocation(line: 114, column: 57, scope: !238)
!677 = !DILocation(line: 114, column: 67, scope: !238)
!678 = !DILocation(line: 115, column: 12, scope: !238)
!679 = !DILocation(line: 115, column: 20, scope: !238)
!680 = !DILocation(line: 115, column: 28, scope: !238)
!681 = !DILocation(line: 115, column: 38, scope: !238)
!682 = !DILocation(line: 115, column: 48, scope: !238)
!683 = !DILocation(line: 115, column: 58, scope: !238)
!684 = !DILocation(line: 119, column: 8, scope: !238)
!685 = !DILocation(line: 123, column: 8, scope: !238)
!686 = !DILocation(line: 117, column: 9, scope: !238)
!687 = !DILocation(line: 125, column: 22, scope: !238)
!688 = !DILocation(line: 125, column: 25, scope: !238)
!689 = !DILocation(line: 125, column: 28, scope: !238)
!690 = !DILocation(line: 124, column: 3, scope: !238)
!691 = !DILocation(line: 127, column: 29, scope: !238)
!692 = !DILocation(line: 127, column: 38, scope: !238)
!693 = !DILocation(line: 127, column: 47, scope: !238)
!694 = !DILocation(line: 126, column: 3, scope: !238)
!695 = !DILocation(line: 129, column: 4, scope: !238)
!696 = !DILocation(line: 129, column: 7, scope: !238)
!697 = !DILocation(line: 129, column: 10, scope: !238)
!698 = !DILocation(line: 129, column: 15, scope: !238)
!699 = !DILocation(line: 129, column: 20, scope: !238)
!700 = !DILocation(line: 129, column: 25, scope: !238)
!701 = !DILocation(line: 128, column: 3, scope: !238)
!702 = !DILocation(line: 131, column: 7, scope: !703)
!703 = distinct !DILexicalBlock(scope: !238, file: !1, line: 131, column: 7)
!704 = !DILocation(line: 131, column: 7, scope: !238)
!705 = !DILocation(line: 132, column: 18, scope: !706)
!706 = distinct !DILexicalBlock(scope: !703, file: !1, line: 131, column: 13)
!707 = !DILocation(line: 132, column: 20, scope: !706)
!708 = !DILocation(line: 118, column: 8, scope: !238)
!709 = !DILocation(line: 133, column: 18, scope: !706)
!710 = !DILocation(line: 133, column: 20, scope: !706)
!711 = !DILocation(line: 118, column: 14, scope: !238)
!712 = !DILocation(line: 134, column: 18, scope: !706)
!713 = !DILocation(line: 134, column: 20, scope: !706)
!714 = !DILocation(line: 118, column: 20, scope: !238)
!715 = !DILocation(line: 135, column: 3, scope: !706)
!716 = !DILocation(line: 121, column: 8, scope: !238)
!717 = !DILocation(line: 141, column: 16, scope: !718)
!718 = distinct !DILexicalBlock(scope: !719, file: !1, line: 141, column: 3)
!719 = distinct !DILexicalBlock(scope: !238, file: !1, line: 141, column: 3)
!720 = !DILocation(line: 141, column: 3, scope: !719)
!721 = !DILocation(line: 142, column: 18, scope: !722)
!722 = distinct !DILexicalBlock(scope: !723, file: !1, line: 142, column: 5)
!723 = distinct !DILexicalBlock(scope: !724, file: !1, line: 142, column: 5)
!724 = distinct !DILexicalBlock(scope: !718, file: !1, line: 141, column: 31)
!725 = !DILocation(line: 143, column: 25, scope: !726)
!726 = distinct !DILexicalBlock(scope: !727, file: !1, line: 143, column: 7)
!727 = distinct !DILexicalBlock(scope: !728, file: !1, line: 143, column: 7)
!728 = distinct !DILexicalBlock(scope: !722, file: !1, line: 142, column: 33)
!729 = !DILocation(line: 142, column: 5, scope: !723)
!730 = !DILocation(line: 145, column: 24, scope: !731)
!731 = distinct !DILexicalBlock(scope: !726, file: !1, line: 143, column: 45)
!732 = !DILocation(line: 143, column: 7, scope: !727)
!733 = !DILocation(line: 145, column: 2, scope: !731)
!734 = !DILocation(line: 146, column: 10, scope: !735)
!735 = distinct !DILexicalBlock(scope: !731, file: !1, line: 146, column: 6)
!736 = !DILocation(line: 146, column: 15, scope: !735)
!737 = !DILocation(line: 146, column: 6, scope: !731)
!738 = !DILocation(line: 147, column: 4, scope: !739)
!739 = distinct !DILexicalBlock(scope: !735, file: !1, line: 146, column: 21)
!740 = !DILocation(line: 149, column: 2, scope: !739)
!741 = !DILocation(line: 143, column: 41, scope: !726)
!742 = !DILocation(line: 121, column: 17, scope: !238)
!743 = !DILocation(line: 151, column: 12, scope: !744)
!744 = distinct !DILexicalBlock(scope: !728, file: !1, line: 151, column: 11)
!745 = !DILocation(line: 151, column: 11, scope: !728)
!746 = !DILocation(line: 152, column: 2, scope: !744)
!747 = !DILocation(line: 155, column: 3, scope: !238)
!748 = !DILocation(line: 157, column: 6, scope: !238)
!749 = !DILocation(line: 158, column: 3, scope: !750)
!750 = distinct !DILexicalBlock(scope: !238, file: !1, line: 158, column: 3)
!751 = !DILocation(line: 160, column: 18, scope: !752)
!752 = distinct !DILexicalBlock(scope: !753, file: !1, line: 160, column: 5)
!753 = distinct !DILexicalBlock(scope: !754, file: !1, line: 160, column: 5)
!754 = distinct !DILexicalBlock(scope: !755, file: !1, line: 158, column: 31)
!755 = distinct !DILexicalBlock(scope: !750, file: !1, line: 158, column: 3)
!756 = !DILocation(line: 162, column: 20, scope: !757)
!757 = distinct !DILexicalBlock(scope: !758, file: !1, line: 162, column: 7)
!758 = distinct !DILexicalBlock(scope: !759, file: !1, line: 162, column: 7)
!759 = distinct !DILexicalBlock(scope: !752, file: !1, line: 160, column: 33)
!760 = !DILocation(line: 159, column: 19, scope: !754)
!761 = !DILocation(line: 159, column: 21, scope: !754)
!762 = !DILocation(line: 197, column: 29, scope: !353, inlinedAt: !763)
!763 = distinct !DILocation(line: 159, column: 8, scope: !754)
!764 = !DILocation(line: 199, column: 12, scope: !353, inlinedAt: !763)
!765 = !DILocation(line: 120, column: 8, scope: !238)
!766 = !DILocation(line: 121, column: 11, scope: !238)
!767 = !DILocation(line: 160, column: 5, scope: !753)
!768 = !DILocation(line: 164, column: 37, scope: !769)
!769 = distinct !DILexicalBlock(scope: !757, file: !1, line: 162, column: 35)
!770 = !DILocation(line: 161, column: 24, scope: !759)
!771 = !DILocation(line: 161, column: 26, scope: !759)
!772 = !DILocation(line: 197, column: 29, scope: !353, inlinedAt: !773)
!773 = distinct !DILocation(line: 161, column: 13, scope: !759)
!774 = !DILocation(line: 199, column: 12, scope: !353, inlinedAt: !773)
!775 = !DILocation(line: 161, column: 12, scope: !759)
!776 = !DILocation(line: 120, column: 11, scope: !238)
!777 = !DILocation(line: 121, column: 14, scope: !238)
!778 = !DILocation(line: 162, column: 7, scope: !758)
!779 = !DILocation(line: 163, column: 19, scope: !769)
!780 = !DILocation(line: 163, column: 21, scope: !769)
!781 = !DILocation(line: 197, column: 29, scope: !353, inlinedAt: !782)
!782 = distinct !DILocation(line: 163, column: 8, scope: !769)
!783 = !DILocation(line: 199, column: 12, scope: !353, inlinedAt: !782)
!784 = !DILocation(line: 163, column: 7, scope: !769)
!785 = !DILocation(line: 120, column: 14, scope: !238)
!786 = !DILocation(line: 164, column: 33, scope: !769)
!787 = !DILocation(line: 164, column: 28, scope: !769)
!788 = !DILocation(line: 164, column: 2, scope: !769)
!789 = !DILocation(line: 168, column: 3, scope: !238)
!790 = !DILocation(line: 169, column: 1, scope: !238)
!791 = !DILocation(line: 171, column: 25, scope: !273)
!792 = !DILocation(line: 171, column: 32, scope: !273)
!793 = !DILocation(line: 171, column: 39, scope: !273)
!794 = !DILocation(line: 171, column: 46, scope: !273)
!795 = !DILocation(line: 171, column: 54, scope: !273)
!796 = !DILocation(line: 171, column: 66, scope: !273)
!797 = !DILocation(line: 176, column: 8, scope: !273)
!798 = !DILocation(line: 176, column: 10, scope: !273)
!799 = !DILocation(line: 178, column: 16, scope: !273)
!800 = !DILocation(line: 90, column: 27, scope: !327, inlinedAt: !801)
!801 = distinct !DILocation(line: 178, column: 3, scope: !273)
!802 = !DILocation(line: 90, column: 36, scope: !327, inlinedAt: !801)
!803 = !DILocation(line: 92, column: 22, scope: !327, inlinedAt: !801)
!804 = !DILocation(line: 92, column: 21, scope: !327, inlinedAt: !801)
!805 = !DILocation(line: 92, column: 13, scope: !327, inlinedAt: !801)
!806 = !DILocation(line: 92, column: 11, scope: !327, inlinedAt: !801)
!807 = !DILocation(line: 93, column: 22, scope: !327, inlinedAt: !801)
!808 = !DILocation(line: 93, column: 21, scope: !327, inlinedAt: !801)
!809 = !DILocation(line: 93, column: 13, scope: !327, inlinedAt: !801)
!810 = !DILocation(line: 93, column: 3, scope: !327, inlinedAt: !801)
!811 = !DILocation(line: 93, column: 11, scope: !327, inlinedAt: !801)
!812 = !DILocation(line: 94, column: 22, scope: !327, inlinedAt: !801)
!813 = !DILocation(line: 94, column: 21, scope: !327, inlinedAt: !801)
!814 = !DILocation(line: 94, column: 13, scope: !327, inlinedAt: !801)
!815 = !DILocation(line: 94, column: 3, scope: !327, inlinedAt: !801)
!816 = !DILocation(line: 94, column: 11, scope: !327, inlinedAt: !801)
!817 = !DILocation(line: 180, column: 6, scope: !273)
!818 = !DILocation(line: 173, column: 9, scope: !273)
!819 = !DILocation(line: 174, column: 8, scope: !273)
!820 = !DILocation(line: 181, column: 16, scope: !821)
!821 = distinct !DILexicalBlock(scope: !822, file: !1, line: 181, column: 3)
!822 = distinct !DILexicalBlock(scope: !273, file: !1, line: 181, column: 3)
!823 = !DILocation(line: 181, column: 3, scope: !822)
!824 = !DILocation(line: 182, column: 18, scope: !825)
!825 = distinct !DILexicalBlock(scope: !826, file: !1, line: 182, column: 5)
!826 = distinct !DILexicalBlock(scope: !827, file: !1, line: 182, column: 5)
!827 = distinct !DILexicalBlock(scope: !821, file: !1, line: 181, column: 28)
!828 = !DILocation(line: 183, column: 20, scope: !829)
!829 = distinct !DILexicalBlock(scope: !830, file: !1, line: 183, column: 7)
!830 = distinct !DILexicalBlock(scope: !831, file: !1, line: 183, column: 7)
!831 = distinct !DILexicalBlock(scope: !825, file: !1, line: 182, column: 30)
!832 = !DILocation(line: 184, column: 31, scope: !833)
!833 = distinct !DILexicalBlock(scope: !829, file: !1, line: 183, column: 32)
!834 = !DILocation(line: 360, column: 27, scope: !358, inlinedAt: !835)
!835 = distinct !DILocation(line: 185, column: 7, scope: !833)
!836 = !DILocation(line: 360, column: 39, scope: !358, inlinedAt: !835)
!837 = !DILocation(line: 182, column: 5, scope: !826)
!838 = !DILocation(line: 186, column: 31, scope: !833)
!839 = !DILocation(line: 183, column: 7, scope: !830)
!840 = !DILocation(line: 184, column: 2, scope: !833)
!841 = !DILocation(line: 358, column: 30, scope: !358, inlinedAt: !835)
!842 = !DILocation(line: 360, column: 15, scope: !358, inlinedAt: !835)
!843 = !DILocation(line: 360, column: 20, scope: !358, inlinedAt: !835)
!844 = !DILocation(line: 360, column: 32, scope: !358, inlinedAt: !835)
!845 = !DILocation(line: 360, column: 26, scope: !358, inlinedAt: !835)
!846 = !DILocation(line: 360, column: 44, scope: !358, inlinedAt: !835)
!847 = !DILocation(line: 360, column: 38, scope: !358, inlinedAt: !835)
!848 = !DILocation(line: 360, column: 10, scope: !358, inlinedAt: !835)
!849 = !DILocation(line: 175, column: 8, scope: !273)
!850 = !DILocation(line: 186, column: 28, scope: !833)
!851 = !DILocation(line: 186, column: 2, scope: !833)
!852 = !DILocation(line: 190, column: 3, scope: !273)
!853 = !DILocation(line: 191, column: 1, scope: !273)
!854 = !DILocation(line: 193, column: 23, scope: !290)
!855 = !DILocation(line: 193, column: 33, scope: !290)
!856 = !DILocation(line: 193, column: 41, scope: !290)
!857 = !DILocation(line: 193, column: 52, scope: !290)
!858 = !DILocation(line: 194, column: 8, scope: !290)
!859 = !DILocation(line: 194, column: 18, scope: !290)
!860 = !DILocation(line: 194, column: 31, scope: !290)
!861 = !DILocation(line: 194, column: 40, scope: !290)
!862 = !DILocation(line: 203, column: 6, scope: !290)
!863 = !DILocation(line: 196, column: 11, scope: !290)
!864 = !DILocation(line: 198, column: 10, scope: !290)
!865 = !DILocation(line: 198, column: 13, scope: !290)
!866 = !DILocation(line: 198, column: 16, scope: !290)
!867 = !DILocation(line: 201, column: 10, scope: !290)
!868 = !DILocation(line: 201, column: 13, scope: !290)
!869 = !DILocation(line: 201, column: 16, scope: !290)
!870 = !DILocation(line: 204, column: 3, scope: !290)
!871 = !DILocation(line: 205, column: 13, scope: !290)
!872 = !{!873, !873, i64 0}
!873 = !{!"int", !465, i64 0}
!874 = !DILocation(line: 205, column: 12, scope: !290)
!875 = !DILocation(line: 205, column: 27, scope: !290)
!876 = !DILocation(line: 205, column: 17, scope: !290)
!877 = !DILocation(line: 205, column: 26, scope: !290)
!878 = !DILocation(line: 205, column: 41, scope: !290)
!879 = !DILocation(line: 205, column: 31, scope: !290)
!880 = !DILocation(line: 205, column: 40, scope: !290)
!881 = !DILocation(line: 206, column: 17, scope: !290)
!882 = !DILocation(line: 206, column: 16, scope: !290)
!883 = !DILocation(line: 206, column: 36, scope: !290)
!884 = !DILocation(line: 206, column: 22, scope: !290)
!885 = !DILocation(line: 206, column: 35, scope: !290)
!886 = !DILocation(line: 206, column: 55, scope: !290)
!887 = !DILocation(line: 206, column: 41, scope: !290)
!888 = !DILocation(line: 206, column: 54, scope: !290)
!889 = !DILocation(line: 198, column: 19, scope: !290)
!890 = !DILocation(line: 198, column: 23, scope: !290)
!891 = !DILocation(line: 198, column: 27, scope: !290)
!892 = !DILocation(line: 200, column: 10, scope: !290)
!893 = !DILocation(line: 200, column: 17, scope: !290)
!894 = !DILocation(line: 200, column: 23, scope: !290)
!895 = !DILocation(line: 207, column: 3, scope: !290)
!896 = !DILocation(line: 199, column: 10, scope: !290)
!897 = !DILocation(line: 199, column: 15, scope: !290)
!898 = !DILocation(line: 199, column: 20, scope: !290)
!899 = !DILocation(line: 199, column: 25, scope: !290)
!900 = !DILocation(line: 199, column: 30, scope: !290)
!901 = !DILocation(line: 199, column: 35, scope: !290)
!902 = !DILocation(line: 208, column: 3, scope: !290)
!903 = !DILocation(line: 209, column: 9, scope: !290)
!904 = !DILocation(line: 209, column: 7, scope: !290)
!905 = !DILocation(line: 210, column: 9, scope: !290)
!906 = !DILocation(line: 210, column: 7, scope: !290)
!907 = !DILocation(line: 212, column: 3, scope: !290)
!908 = !DILocation(line: 213, column: 44, scope: !290)
!909 = !DILocation(line: 213, column: 47, scope: !290)
!910 = !DILocation(line: 213, column: 50, scope: !290)
!911 = !DILocation(line: 213, column: 3, scope: !290)
!912 = !DILocation(line: 214, column: 44, scope: !290)
!913 = !DILocation(line: 214, column: 47, scope: !290)
!914 = !DILocation(line: 214, column: 50, scope: !290)
!915 = !DILocation(line: 214, column: 3, scope: !290)
!916 = !DILocation(line: 217, column: 4, scope: !290)
!917 = !DILocation(line: 217, column: 11, scope: !290)
!918 = !DILocation(line: 217, column: 19, scope: !290)
!919 = !DILocation(line: 217, column: 25, scope: !290)
!920 = !DILocation(line: 217, column: 30, scope: !290)
!921 = !DILocation(line: 217, column: 34, scope: !290)
!922 = !DILocation(line: 217, column: 38, scope: !290)
!923 = !DILocation(line: 215, column: 3, scope: !290)
!924 = !DILocation(line: 219, column: 33, scope: !290)
!925 = !DILocation(line: 219, column: 38, scope: !290)
!926 = !DILocation(line: 219, column: 42, scope: !290)
!927 = !DILocation(line: 219, column: 47, scope: !290)
!928 = !DILocation(line: 219, column: 52, scope: !290)
!929 = !DILocation(line: 219, column: 57, scope: !290)
!930 = !DILocation(line: 218, column: 3, scope: !290)
!931 = !DILocation(line: 220, column: 3, scope: !290)
!932 = !DILocation(line: 222, column: 14, scope: !290)
!933 = !DILocation(line: 222, column: 12, scope: !290)
!934 = !DILocation(line: 223, column: 14, scope: !290)
!935 = !DILocation(line: 223, column: 3, scope: !290)
!936 = !DILocation(line: 223, column: 12, scope: !290)
!937 = !DILocation(line: 224, column: 14, scope: !290)
!938 = !DILocation(line: 224, column: 3, scope: !290)
!939 = !DILocation(line: 224, column: 12, scope: !290)
!940 = !DILocation(line: 226, column: 22, scope: !290)
!941 = !DILocation(line: 226, column: 25, scope: !290)
!942 = !DILocation(line: 226, column: 28, scope: !290)
!943 = !DILocation(line: 226, column: 13, scope: !290)
!944 = !DILocation(line: 197, column: 13, scope: !290)
!945 = !DILocation(line: 227, column: 7, scope: !946)
!946 = distinct !DILexicalBlock(scope: !290, file: !1, line: 227, column: 7)
!947 = !DILocation(line: 228, column: 11, scope: !948)
!948 = distinct !DILexicalBlock(scope: !946, file: !1, line: 227, column: 13)
!949 = !DILocation(line: 227, column: 7, scope: !290)
!950 = !DILocation(line: 228, column: 20, scope: !948)
!951 = !DILocation(line: 228, column: 22, scope: !948)
!952 = !DILocation(line: 201, column: 19, scope: !290)
!953 = !DILocation(line: 229, column: 11, scope: !948)
!954 = !DILocation(line: 229, column: 20, scope: !948)
!955 = !DILocation(line: 229, column: 22, scope: !948)
!956 = !DILocation(line: 201, column: 25, scope: !290)
!957 = !DILocation(line: 230, column: 11, scope: !948)
!958 = !DILocation(line: 230, column: 20, scope: !948)
!959 = !DILocation(line: 230, column: 22, scope: !948)
!960 = !DILocation(line: 201, column: 31, scope: !290)
!961 = !DILocation(line: 231, column: 3, scope: !948)
!962 = !DILocation(line: 234, column: 11, scope: !963)
!963 = distinct !DILexicalBlock(scope: !946, file: !1, line: 232, column: 8)
!964 = !DILocation(line: 235, column: 11, scope: !963)
!965 = !DILocation(line: 237, column: 3, scope: !290)
!966 = !DILocation(line: 238, column: 27, scope: !967)
!967 = distinct !DILexicalBlock(scope: !968, file: !1, line: 238, column: 3)
!968 = distinct !DILexicalBlock(scope: !290, file: !1, line: 238, column: 3)
!969 = !DILocation(line: 238, column: 16, scope: !967)
!970 = !DILocation(line: 238, column: 3, scope: !968)
!971 = !DILocation(line: 239, column: 18, scope: !972)
!972 = distinct !DILexicalBlock(scope: !973, file: !1, line: 239, column: 5)
!973 = distinct !DILexicalBlock(scope: !967, file: !1, line: 239, column: 5)
!974 = !DILocation(line: 240, column: 20, scope: !975)
!975 = distinct !DILexicalBlock(scope: !976, file: !1, line: 240, column: 7)
!976 = distinct !DILexicalBlock(scope: !972, file: !1, line: 240, column: 7)
!977 = !DILocation(line: 239, column: 29, scope: !972)
!978 = !DILocation(line: 239, column: 5, scope: !973)
!979 = !DILocation(line: 240, column: 31, scope: !975)
!980 = !DILocation(line: 240, column: 7, scope: !976)
!981 = !DILocation(line: 198, column: 31, scope: !290)
!982 = !DILocation(line: 241, column: 2, scope: !983)
!983 = distinct !DILexicalBlock(scope: !975, file: !1, line: 240, column: 35)
!984 = !DILocation(line: 242, column: 19, scope: !983)
!985 = !DILocation(line: 242, column: 13, scope: !983)
!986 = !DILocation(line: 242, column: 2, scope: !983)
!987 = !DILocation(line: 242, column: 9, scope: !983)
!988 = !DILocation(line: 242, column: 5, scope: !983)
!989 = !DILocation(line: 242, column: 17, scope: !983)
!990 = !DILocation(line: 244, column: 3, scope: !290)
!991 = !DILocation(line: 246, column: 24, scope: !290)
!992 = !DILocation(line: 246, column: 34, scope: !290)
!993 = !DILocation(line: 246, column: 44, scope: !290)
!994 = !DILocation(line: 246, column: 54, scope: !290)
!995 = !DILocation(line: 246, column: 57, scope: !290)
!996 = !DILocation(line: 246, column: 60, scope: !290)
!997 = !DILocation(line: 247, column: 4, scope: !290)
!998 = !DILocation(line: 247, column: 11, scope: !290)
!999 = !DILocation(line: 247, column: 19, scope: !290)
!1000 = !DILocation(line: 247, column: 25, scope: !290)
!1001 = !DILocation(line: 248, column: 4, scope: !290)
!1002 = !DILocation(line: 248, column: 8, scope: !290)
!1003 = !DILocation(line: 248, column: 12, scope: !290)
!1004 = !DILocation(line: 248, column: 17, scope: !290)
!1005 = !DILocation(line: 248, column: 22, scope: !290)
!1006 = !DILocation(line: 248, column: 27, scope: !290)
!1007 = !DILocation(line: 246, column: 3, scope: !290)
!1008 = !DILocation(line: 250, column: 7, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !290, file: !1, line: 250, column: 7)
!1010 = !DILocation(line: 250, column: 7, scope: !290)
!1011 = !DILocation(line: 251, column: 21, scope: !1009)
!1012 = !DILocation(line: 251, column: 31, scope: !1009)
!1013 = !DILocation(line: 251, column: 41, scope: !1009)
!1014 = !DILocation(line: 251, column: 5, scope: !1009)
!1015 = !DILocation(line: 253, column: 3, scope: !290)
!1016 = !DILocation(line: 256, column: 3, scope: !290)
