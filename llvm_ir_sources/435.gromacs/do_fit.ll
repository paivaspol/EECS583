; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/do_fit.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%union.anon = type { float }
%union.anon.0 = type { double }
%union.anon.1 = type { x86_fp80 }
%struct.__float2 = type { float, float }
%struct.__double2 = type { double, double }

@calc_fit_R.omega = internal unnamed_addr global double** null, align 8
@calc_fit_R.om = internal unnamed_addr global double** null, align 8
@.str = private unnamed_addr constant [6 x i8] c"omega\00", align 1
@.str1 = private unnamed_addr constant [66 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/do_fit.c\00", align 1
@.str2 = private unnamed_addr constant [3 x i8] c"om\00", align 1
@.str3 = private unnamed_addr constant [9 x i8] c"omega[i]\00", align 1
@.str4 = private unnamed_addr constant [6 x i8] c"om[i]\00", align 1
@debug = external global %struct.__sFILE*
@.str5 = private unnamed_addr constant [8 x i8] c"IROT=0\0A\00", align 1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinitef(float %__x) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !14, metadata !360), !dbg !361
  %1 = fcmp ord float %__x, 0.000000e+00, !dbg !362
  br i1 %1, label %2, label %5, !dbg !363

; <label>:2                                       ; preds = %0
  %3 = tail call float @llvm.fabs.f32(float %__x) #8, !dbg !364
  %4 = fcmp une float %3, 0x7FF0000000000000, !dbg !365
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32, !dbg !363
  ret i32 %7, !dbg !366
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone
declare float @llvm.fabs.f32(float) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinited(double %__x) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !20, metadata !360), !dbg !367
  %1 = fcmp ord double %__x, 0.000000e+00, !dbg !368
  br i1 %1, label %2, label %5, !dbg !369

; <label>:2                                       ; preds = %0
  %3 = tail call double @llvm.fabs.f64(double %__x) #8, !dbg !370
  %4 = fcmp une double %3, 0x7FF0000000000000, !dbg !371
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32, !dbg !369
  ret i32 %7, !dbg !372
}

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinitel(x86_fp80 %__x) #0 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !26, metadata !360), !dbg !373
  %1 = fcmp ord x86_fp80 %__x, 0xK00000000000000000000, !dbg !374
  br i1 %1, label %2, label %5, !dbg !375

; <label>:2                                       ; preds = %0
  %3 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #8, !dbg !376
  %4 = fcmp une x86_fp80 %3, 0xK7FFF8000000000000000, !dbg !377
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32, !dbg !375
  ret i32 %7, !dbg !378
}

; Function Attrs: nounwind readnone
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinff(float %__x) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !29, metadata !360), !dbg !379
  %1 = tail call float @llvm.fabs.f32(float %__x) #8, !dbg !380
  %2 = fcmp oeq float %1, 0x7FF0000000000000, !dbg !381
  %3 = zext i1 %2 to i32, !dbg !381
  ret i32 %3, !dbg !382
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfd(double %__x) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !32, metadata !360), !dbg !383
  %1 = tail call double @llvm.fabs.f64(double %__x) #8, !dbg !384
  %2 = fcmp oeq double %1, 0x7FF0000000000000, !dbg !385
  %3 = zext i1 %2 to i32, !dbg !385
  ret i32 %3, !dbg !386
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfl(x86_fp80 %__x) #0 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !35, metadata !360), !dbg !387
  %1 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #8, !dbg !388
  %2 = fcmp oeq x86_fp80 %1, 0xK7FFF8000000000000000, !dbg !389
  %3 = zext i1 %2 to i32, !dbg !389
  ret i32 %3, !dbg !390
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnanf(float %__x) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !38, metadata !360), !dbg !391
  %1 = fcmp uno float %__x, 0.000000e+00, !dbg !392
  %2 = zext i1 %1 to i32, !dbg !392
  ret i32 %2, !dbg !393
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnand(double %__x) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !41, metadata !360), !dbg !394
  %1 = fcmp uno double %__x, 0.000000e+00, !dbg !395
  %2 = zext i1 %1 to i32, !dbg !395
  ret i32 %2, !dbg !396
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnanl(x86_fp80 %__x) #0 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !44, metadata !360), !dbg !397
  %1 = fcmp uno x86_fp80 %__x, 0xK00000000000000000000, !dbg !398
  %2 = zext i1 %1 to i32, !dbg !398
  ret i32 %2, !dbg !399
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitf(float %__x) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !47, metadata !360), !dbg !400
  tail call void @llvm.dbg.declare(metadata %union.anon* undef, metadata !48, metadata !360), !dbg !401
  %1 = bitcast float %__x to i32, !dbg !402
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !48, metadata !360), !dbg !401
  %2 = lshr i32 %1, 31, !dbg !403
  ret i32 %2, !dbg !404
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitd(double %__x) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !56, metadata !360), !dbg !405
  tail call void @llvm.dbg.declare(metadata %union.anon.0* undef, metadata !57, metadata !360), !dbg !406
  %1 = bitcast double %__x to i64, !dbg !407
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !57, metadata !360), !dbg !406
  %2 = lshr i64 %1, 63, !dbg !408
  %3 = trunc i64 %2 to i32, !dbg !409
  ret i32 %3, !dbg !410
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitl(x86_fp80 %__x) #0 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !65, metadata !360), !dbg !411
  tail call void @llvm.dbg.declare(metadata %union.anon.1* undef, metadata !66, metadata !360), !dbg !412
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !66, metadata !360), !dbg !412
  %1 = bitcast x86_fp80 %__x to i80, !dbg !413
  %2 = lshr i80 %1, 79, !dbg !413
  %3 = trunc i80 %2 to i32, !dbg !414
  ret i32 %3, !dbg !415
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormalf(float %__x) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !78, metadata !360), !dbg !416
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !14, metadata !360) #7, !dbg !417
  %1 = fcmp ord float %__x, 0.000000e+00, !dbg !419
  %2 = tail call float @llvm.fabs.f32(float %__x) #1
  %3 = fcmp une float %2, 0x7FF0000000000000, !dbg !420
  %or.cond = and i1 %1, %3, !dbg !421
  br i1 %or.cond, label %4, label %.critedge, !dbg !421

; <label>:4                                       ; preds = %0
  %5 = fcmp oge float %2, 0x3810000000000000, !dbg !422
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32, !dbg !423
  ret i32 %7, !dbg !424
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormald(double %__x) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !81, metadata !360), !dbg !425
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !20, metadata !360) #7, !dbg !426
  %1 = fcmp ord double %__x, 0.000000e+00, !dbg !428
  %2 = tail call double @llvm.fabs.f64(double %__x) #1
  %3 = fcmp une double %2, 0x7FF0000000000000, !dbg !429
  %or.cond = and i1 %1, %3, !dbg !430
  br i1 %or.cond, label %4, label %.critedge, !dbg !430

; <label>:4                                       ; preds = %0
  %5 = fcmp oge double %2, 0x10000000000000, !dbg !431
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32, !dbg !432
  ret i32 %7, !dbg !433
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormall(x86_fp80 %__x) #0 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !84, metadata !360), !dbg !434
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !26, metadata !360) #7, !dbg !435
  %1 = fcmp ord x86_fp80 %__x, 0xK00000000000000000000, !dbg !437
  %2 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #1
  %3 = fcmp une x86_fp80 %2, 0xK7FFF8000000000000000, !dbg !438
  %or.cond = and i1 %1, %3, !dbg !439
  br i1 %or.cond, label %4, label %.critedge, !dbg !439

; <label>:4                                       ; preds = %0
  %5 = fcmp oge x86_fp80 %2, 0xK00018000000000000000, !dbg !440
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32, !dbg !441
  ret i32 %7, !dbg !442
}

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincosf(float %__x, float* nocapture %__sinp, float* nocapture %__cosp) #2 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !90, metadata !360), !dbg !443
  tail call void @llvm.dbg.value(metadata float* %__sinp, i64 0, metadata !91, metadata !360), !dbg !444
  tail call void @llvm.dbg.value(metadata float* %__cosp, i64 0, metadata !92, metadata !360), !dbg !445
  tail call void @llvm.dbg.declare(metadata %struct.__float2* undef, metadata !93, metadata !360), !dbg !446
  %1 = tail call <2 x float> @__sincosf_stret(float %__x) #9, !dbg !447
  tail call void @llvm.dbg.value(metadata <2 x float> %1, i64 0, metadata !93, metadata !360), !dbg !446
  %2 = extractelement <2 x float> %1, i32 0, !dbg !448
  store float %2, float* %__sinp, align 4, !dbg !449, !tbaa !450
  %3 = extractelement <2 x float> %1, i32 1, !dbg !454
  store float %3, float* %__cosp, align 4, !dbg !455, !tbaa !450
  ret void, !dbg !456
}

; Function Attrs: optsize
declare <2 x float> @__sincosf_stret(float) #3

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincos(double %__x, double* nocapture %__sinp, double* nocapture %__cosp) #2 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !104, metadata !360), !dbg !457
  tail call void @llvm.dbg.value(metadata double* %__sinp, i64 0, metadata !105, metadata !360), !dbg !458
  tail call void @llvm.dbg.value(metadata double* %__cosp, i64 0, metadata !106, metadata !360), !dbg !459
  tail call void @llvm.dbg.declare(metadata %struct.__double2* undef, metadata !107, metadata !360), !dbg !460
  %1 = tail call { double, double } @__sincos_stret(double %__x) #9, !dbg !461
  %2 = extractvalue { double, double } %1, 0, !dbg !461
  tail call void @llvm.dbg.value(metadata double %2, i64 0, metadata !107, metadata !462), !dbg !460
  %3 = extractvalue { double, double } %1, 1, !dbg !461
  tail call void @llvm.dbg.value(metadata double %3, i64 0, metadata !107, metadata !463), !dbg !460
  store double %2, double* %__sinp, align 8, !dbg !464, !tbaa !465
  store double %3, double* %__cosp, align 8, !dbg !467, !tbaa !465
  ret void, !dbg !468
}

; Function Attrs: optsize
declare { double, double } @__sincos_stret(double) #3

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincospif(float %__x, float* nocapture %__sinp, float* nocapture %__cosp) #2 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !115, metadata !360), !dbg !469
  tail call void @llvm.dbg.value(metadata float* %__sinp, i64 0, metadata !116, metadata !360), !dbg !470
  tail call void @llvm.dbg.value(metadata float* %__cosp, i64 0, metadata !117, metadata !360), !dbg !471
  tail call void @llvm.dbg.declare(metadata %struct.__float2* undef, metadata !118, metadata !360), !dbg !472
  %1 = tail call <2 x float> @__sincospif_stret(float %__x) #9, !dbg !473
  tail call void @llvm.dbg.value(metadata <2 x float> %1, i64 0, metadata !118, metadata !360), !dbg !472
  %2 = extractelement <2 x float> %1, i32 0, !dbg !474
  store float %2, float* %__sinp, align 4, !dbg !475, !tbaa !450
  %3 = extractelement <2 x float> %1, i32 1, !dbg !476
  store float %3, float* %__cosp, align 4, !dbg !477, !tbaa !450
  ret void, !dbg !478
}

; Function Attrs: optsize
declare <2 x float> @__sincospif_stret(float) #3

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincospi(double %__x, double* nocapture %__sinp, double* nocapture %__cosp) #2 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !121, metadata !360), !dbg !479
  tail call void @llvm.dbg.value(metadata double* %__sinp, i64 0, metadata !122, metadata !360), !dbg !480
  tail call void @llvm.dbg.value(metadata double* %__cosp, i64 0, metadata !123, metadata !360), !dbg !481
  tail call void @llvm.dbg.declare(metadata %struct.__double2* undef, metadata !124, metadata !360), !dbg !482
  %1 = tail call { double, double } @__sincospi_stret(double %__x) #9, !dbg !483
  %2 = extractvalue { double, double } %1, 0, !dbg !483
  tail call void @llvm.dbg.value(metadata double %2, i64 0, metadata !124, metadata !462), !dbg !482
  %3 = extractvalue { double, double } %1, 1, !dbg !483
  tail call void @llvm.dbg.value(metadata double %3, i64 0, metadata !124, metadata !463), !dbg !482
  store double %2, double* %__sinp, align 8, !dbg !484, !tbaa !465
  store double %3, double* %__cosp, align 8, !dbg !485, !tbaa !465
  ret void, !dbg !486
}

; Function Attrs: optsize
declare { double, double } @__sincospi_stret(double) #3

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define i32 @__sputc(i32 %_c, %struct.__sFILE* %_p) #2 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !190, metadata !360), !dbg !487
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %_p, i64 0, metadata !191, metadata !360), !dbg !488
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2, !dbg !489
  %2 = load i32* %1, align 4, !dbg !491, !tbaa !492
  %3 = add nsw i32 %2, -1, !dbg !491
  store i32 %3, i32* %1, align 4, !dbg !491, !tbaa !492
  %4 = icmp sgt i32 %2, 0, !dbg !499
  br i1 %4, label %._crit_edge, label %5, !dbg !500

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255, !dbg !501
  br label %10, !dbg !500

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6, !dbg !502
  %7 = load i32* %6, align 4, !dbg !502, !tbaa !503
  %8 = icmp sle i32 %2, %7, !dbg !504
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10, !dbg !505
  %or.cond = or i1 %9, %8, !dbg !506
  br i1 %or.cond, label %15, label %10, !dbg !506

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ], !dbg !501
  %11 = trunc i32 %_c to i8, !dbg !507
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0, !dbg !508
  %13 = load i8** %12, align 8, !dbg !509, !tbaa !510
  %14 = getelementptr inbounds i8* %13, i64 1, !dbg !509
  store i8* %14, i8** %12, align 8, !dbg !509, !tbaa !510
  store i8 %11, i8* %13, align 1, !dbg !511, !tbaa !512
  br label %17, !dbg !513

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #9, !dbg !514
  br label %17, !dbg !515

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0, !dbg !516
}

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #3

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #0 {
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !197, metadata !360), !dbg !517
  %1 = icmp sgt i32 %__signo, 32, !dbg !518
  br i1 %1, label %5, label %2, !dbg !519

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !520
  %4 = shl i32 1, %3, !dbg !521
  br label %5, !dbg !519

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !519
  ret i32 %6, !dbg !522
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define float @calc_similar_ind(i32 %bRho, i32 %nind, i32* readonly %index, float* nocapture readonly %mass, [3 x float]* nocapture readonly %x, [3 x float]* nocapture readonly %xp) #4 {
  tail call void @llvm.dbg.value(metadata i32 %bRho, i64 0, metadata !210, metadata !360), !dbg !523
  tail call void @llvm.dbg.value(metadata i32 %nind, i64 0, metadata !211, metadata !360), !dbg !524
  tail call void @llvm.dbg.value(metadata i32* %index, i64 0, metadata !212, metadata !360), !dbg !525
  tail call void @llvm.dbg.value(metadata float* %mass, i64 0, metadata !213, metadata !360), !dbg !526
  tail call void @llvm.dbg.value(metadata [3 x float]* %x, i64 0, metadata !214, metadata !360), !dbg !527
  tail call void @llvm.dbg.value(metadata [3 x float]* %xp, i64 0, metadata !215, metadata !360), !dbg !528
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !220, metadata !360), !dbg !529
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !223, metadata !360), !dbg !530
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !224, metadata !360), !dbg !531
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !217, metadata !360), !dbg !532
  %1 = icmp sgt i32 %nind, 0, !dbg !533
  br i1 %1, label %.lr.ph, label %._crit_edge, !dbg !536

.lr.ph:                                           ; preds = %0
  %2 = icmp eq i32* %index, null, !dbg !537
  %3 = icmp eq i32 %bRho, 0, !dbg !540
  %4 = add i32 %nind, -1, !dbg !536
  br label %5, !dbg !536

; <label>:5                                       ; preds = %29, %.lr.ph
  %indvars.iv11 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next12, %29 ]
  %rd.07 = phi float [ 0.000000e+00, %.lr.ph ], [ %22, %29 ]
  %rs.06 = phi float [ 0.000000e+00, %.lr.ph ], [ %rs.2, %29 ]
  %tm.05 = phi float [ 0.000000e+00, %.lr.ph ], [ %30, %29 ]
  %6 = trunc i64 %indvars.iv11 to i32, !dbg !545
  br i1 %2, label %10, label %7, !dbg !545

; <label>:7                                       ; preds = %5
  %8 = getelementptr inbounds i32* %index, i64 %indvars.iv11, !dbg !546
  %9 = load i32* %8, align 4, !dbg !546, !tbaa !547
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !216, metadata !360), !dbg !548
  br label %10, !dbg !549

; <label>:10                                      ; preds = %5, %7
  %i.0 = phi i32 [ %9, %7 ], [ %6, %5 ]
  %11 = sext i32 %i.0 to i64, !dbg !550
  %12 = getelementptr inbounds float* %mass, i64 %11, !dbg !550
  %13 = load float* %12, align 4, !dbg !550, !tbaa !450
  tail call void @llvm.dbg.value(metadata float %13, i64 0, metadata !219, metadata !360), !dbg !551
  tail call void @llvm.dbg.value(metadata float %30, i64 0, metadata !220, metadata !360), !dbg !529
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !218, metadata !360), !dbg !552
  br label %14, !dbg !553

; <label>:14                                      ; preds = %28, %10
  %indvars.iv = phi i64 [ 0, %10 ], [ %indvars.iv.next, %28 ]
  %rd.13 = phi float [ %rd.07, %10 ], [ %22, %28 ]
  %rs.12 = phi float [ %rs.06, %10 ], [ %rs.2, %28 ]
  %15 = getelementptr inbounds [3 x float]* %x, i64 %11, i64 %indvars.iv, !dbg !554
  %16 = load float* %15, align 4, !dbg !554, !tbaa !450
  %17 = getelementptr inbounds [3 x float]* %xp, i64 %11, i64 %indvars.iv, !dbg !555
  %18 = load float* %17, align 4, !dbg !555, !tbaa !450
  %19 = fsub float %16, %18, !dbg !556
  tail call void @llvm.dbg.value(metadata float %19, i64 0, metadata !222, metadata !360), !dbg !557
  tail call void @llvm.dbg.value(metadata float %19, i64 0, metadata !323, metadata !360), !dbg !558
  %20 = fmul float %19, %19, !dbg !560
  %21 = fmul float %13, %20, !dbg !561
  %22 = fadd float %rd.13, %21, !dbg !562
  tail call void @llvm.dbg.value(metadata float %22, i64 0, metadata !224, metadata !360), !dbg !531
  br i1 %3, label %28, label %23, !dbg !563

; <label>:23                                      ; preds = %14
  %24 = fadd float %16, %18, !dbg !564
  tail call void @llvm.dbg.value(metadata float %24, i64 0, metadata !221, metadata !360), !dbg !566
  tail call void @llvm.dbg.value(metadata float %24, i64 0, metadata !323, metadata !360), !dbg !567
  %25 = fmul float %24, %24, !dbg !569
  %26 = fmul float %13, %25, !dbg !570
  %27 = fadd float %rs.12, %26, !dbg !571
  tail call void @llvm.dbg.value(metadata float %27, i64 0, metadata !223, metadata !360), !dbg !530
  br label %28, !dbg !572

; <label>:28                                      ; preds = %14, %23
  %rs.2 = phi float [ %27, %23 ], [ %rs.12, %14 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !553
  %exitcond = icmp eq i64 %indvars.iv.next, 3, !dbg !553
  br i1 %exitcond, label %29, label %14, !dbg !553

; <label>:29                                      ; preds = %28
  %30 = fadd float %tm.05, %13, !dbg !573
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1, !dbg !536
  %exitcond13 = icmp eq i32 %6, %4, !dbg !536
  br i1 %exitcond13, label %._crit_edge, label %5, !dbg !536

._crit_edge:                                      ; preds = %29, %0
  %rd.0.lcssa = phi float [ 0.000000e+00, %0 ], [ %22, %29 ]
  %rs.0.lcssa = phi float [ 0.000000e+00, %0 ], [ %rs.2, %29 ]
  %tm.0.lcssa = phi float [ 0.000000e+00, %0 ], [ %30, %29 ]
  %31 = icmp eq i32 %bRho, 0, !dbg !574
  br i1 %31, label %38, label %32, !dbg !576

; <label>:32                                      ; preds = %._crit_edge
  %33 = fdiv float %rd.0.lcssa, %rs.0.lcssa, !dbg !577
  %34 = fpext float %33 to double, !dbg !578
  %35 = tail call double @sqrt(double %34) #10, !dbg !579
  %36 = fmul double %35, 2.000000e+00, !dbg !580
  %37 = fptrunc double %36 to float, !dbg !581
  br label %40, !dbg !582

; <label>:38                                      ; preds = %._crit_edge
  %39 = fdiv float %rd.0.lcssa, %tm.0.lcssa, !dbg !583
  %sqrtf = tail call float @sqrtf(float %39) #5, !dbg !584
  br label %40, !dbg !585

; <label>:40                                      ; preds = %38, %32
  %.0 = phi float [ %37, %32 ], [ %sqrtf, %38 ]
  ret float %.0, !dbg !586
}

; Function Attrs: nounwind optsize readnone
declare double @sqrt(double) #5

; Function Attrs: nounwind optsize readonly ssp uwtable
define float @rmsdev_ind(i32 %nind, i32* readonly %index, float* nocapture readonly %mass, [3 x float]* nocapture readonly %x, [3 x float]* nocapture readonly %xp) #4 {
  tail call void @llvm.dbg.value(metadata i32 %nind, i64 0, metadata !229, metadata !360), !dbg !587
  tail call void @llvm.dbg.value(metadata i32* %index, i64 0, metadata !230, metadata !360), !dbg !588
  tail call void @llvm.dbg.value(metadata float* %mass, i64 0, metadata !231, metadata !360), !dbg !589
  tail call void @llvm.dbg.value(metadata [3 x float]* %x, i64 0, metadata !232, metadata !360), !dbg !590
  tail call void @llvm.dbg.value(metadata [3 x float]* %xp, i64 0, metadata !233, metadata !360), !dbg !591
  %1 = tail call float @calc_similar_ind(i32 0, i32 %nind, i32* %index, float* %mass, [3 x float]* %x, [3 x float]* %xp) #11, !dbg !592
  ret float %1, !dbg !593
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define float @rmsdev(i32 %natoms, float* nocapture readonly %mass, [3 x float]* nocapture readonly %x, [3 x float]* nocapture readonly %xp) #4 {
  tail call void @llvm.dbg.value(metadata i32 %natoms, i64 0, metadata !238, metadata !360), !dbg !594
  tail call void @llvm.dbg.value(metadata float* %mass, i64 0, metadata !239, metadata !360), !dbg !595
  tail call void @llvm.dbg.value(metadata [3 x float]* %x, i64 0, metadata !240, metadata !360), !dbg !596
  tail call void @llvm.dbg.value(metadata [3 x float]* %xp, i64 0, metadata !241, metadata !360), !dbg !597
  %1 = tail call float @calc_similar_ind(i32 0, i32 %natoms, i32* null, float* %mass, [3 x float]* %x, [3 x float]* %xp) #11, !dbg !598
  ret float %1, !dbg !599
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define float @rhodev_ind(i32 %nind, i32* readonly %index, float* nocapture readonly %mass, [3 x float]* nocapture readonly %x, [3 x float]* nocapture readonly %xp) #4 {
  tail call void @llvm.dbg.value(metadata i32 %nind, i64 0, metadata !244, metadata !360), !dbg !600
  tail call void @llvm.dbg.value(metadata i32* %index, i64 0, metadata !245, metadata !360), !dbg !601
  tail call void @llvm.dbg.value(metadata float* %mass, i64 0, metadata !246, metadata !360), !dbg !602
  tail call void @llvm.dbg.value(metadata [3 x float]* %x, i64 0, metadata !247, metadata !360), !dbg !603
  tail call void @llvm.dbg.value(metadata [3 x float]* %xp, i64 0, metadata !248, metadata !360), !dbg !604
  %1 = tail call float @calc_similar_ind(i32 1, i32 %nind, i32* %index, float* %mass, [3 x float]* %x, [3 x float]* %xp) #11, !dbg !605
  ret float %1, !dbg !606
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define float @rhodev(i32 %natoms, float* nocapture readonly %mass, [3 x float]* nocapture readonly %x, [3 x float]* nocapture readonly %xp) #4 {
  tail call void @llvm.dbg.value(metadata i32 %natoms, i64 0, metadata !251, metadata !360), !dbg !607
  tail call void @llvm.dbg.value(metadata float* %mass, i64 0, metadata !252, metadata !360), !dbg !608
  tail call void @llvm.dbg.value(metadata [3 x float]* %x, i64 0, metadata !253, metadata !360), !dbg !609
  tail call void @llvm.dbg.value(metadata [3 x float]* %xp, i64 0, metadata !254, metadata !360), !dbg !610
  %1 = tail call float @calc_similar_ind(i32 1, i32 %natoms, i32* null, float* %mass, [3 x float]* %x, [3 x float]* %xp) #11, !dbg !611
  ret float %1, !dbg !612
}

; Function Attrs: nounwind optsize ssp uwtable
define void @calc_fit_R(i32 %natoms, float* nocapture readonly %w_rls, [3 x float]* nocapture readonly %xp, [3 x float]* nocapture readonly %x, [3 x float]* nocapture %R) #6 {
  %irot = alloca i32, align 4
  %d = alloca [6 x double], align 16
  %1 = bitcast [6 x double]* %d to i8*
  %vh = alloca [3 x [3 x float]], align 16
  %vk = alloca [3 x [3 x float]], align 16
  %u = alloca [3 x [3 x float]], align 16
  tail call void @llvm.dbg.value(metadata i32 %natoms, i64 0, metadata !260, metadata !360), !dbg !613
  tail call void @llvm.dbg.value(metadata float* %w_rls, i64 0, metadata !261, metadata !360), !dbg !614
  tail call void @llvm.dbg.value(metadata [3 x float]* %xp, i64 0, metadata !262, metadata !360), !dbg !615
  tail call void @llvm.dbg.value(metadata [3 x float]* %x, i64 0, metadata !263, metadata !360), !dbg !616
  tail call void @llvm.dbg.value(metadata [3 x float]* %R, i64 0, metadata !264, metadata !360), !dbg !617
  call void @llvm.lifetime.start(i64 48, i8* %1) #7, !dbg !618
  tail call void @llvm.dbg.declare(metadata [6 x double]* %d, metadata !272, metadata !360), !dbg !619
  %2 = bitcast [3 x [3 x float]]* %vh to i8*, !dbg !620
  call void @llvm.lifetime.start(i64 36, i8* %2) #7, !dbg !620
  tail call void @llvm.dbg.declare(metadata [3 x [3 x float]]* %vh, metadata !278, metadata !360), !dbg !621
  %3 = bitcast [3 x [3 x float]]* %vk to i8*, !dbg !620
  call void @llvm.lifetime.start(i64 36, i8* %3) #7, !dbg !620
  tail call void @llvm.dbg.declare(metadata [3 x [3 x float]]* %vk, metadata !282, metadata !360), !dbg !622
  %4 = bitcast [3 x [3 x float]]* %u to i8*, !dbg !620
  call void @llvm.lifetime.start(i64 36, i8* %4) #7, !dbg !620
  tail call void @llvm.dbg.declare(metadata [3 x [3 x float]]* %u, metadata !283, metadata !360), !dbg !623
  %5 = load double*** @calc_fit_R.omega, align 8, !dbg !624, !tbaa !626
  %6 = icmp eq double** %5, null, !dbg !627
  br i1 %6, label %9, label %.preheader9, !dbg !628

.preheader9.loopexit:                             ; preds = %12
  %.pre = load double*** @calc_fit_R.omega, align 8, !dbg !629, !tbaa !626
  br label %.preheader9

.preheader9:                                      ; preds = %.preheader9.loopexit, %0
  %7 = phi double** [ %.pre, %.preheader9.loopexit ], [ %5, %0 ]
  %8 = load double*** @calc_fit_R.om, align 8, !dbg !636, !tbaa !626
  br label %21, !dbg !637

; <label>:9                                       ; preds = %0
  %10 = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 105, i32 6, i32 8) #9, !dbg !638
  store i8* %10, i8** bitcast (double*** @calc_fit_R.omega to i8**), align 8, !dbg !638, !tbaa !626
  %11 = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 106, i32 6, i32 8) #9, !dbg !640
  store i8* %11, i8** bitcast (double*** @calc_fit_R.om to i8**), align 8, !dbg !640, !tbaa !626
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !270, metadata !360), !dbg !641
  br label %12, !dbg !642

; <label>:12                                      ; preds = %12, %9
  %indvars.iv64 = phi i64 [ 0, %9 ], [ %indvars.iv.next65, %12 ]
  %13 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 108, i32 6, i32 8) #9, !dbg !644
  %14 = load double*** @calc_fit_R.omega, align 8, !dbg !644, !tbaa !626
  %15 = getelementptr inbounds double** %14, i64 %indvars.iv64, !dbg !644
  %16 = bitcast double** %15 to i8**, !dbg !644
  store i8* %13, i8** %16, align 8, !dbg !644, !tbaa !626
  %17 = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 109, i32 6, i32 8) #9, !dbg !647
  %18 = load double*** @calc_fit_R.om, align 8, !dbg !647, !tbaa !626
  %19 = getelementptr inbounds double** %18, i64 %indvars.iv64, !dbg !647
  %20 = bitcast double** %19 to i8**, !dbg !647
  store i8* %17, i8** %20, align 8, !dbg !647, !tbaa !626
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1, !dbg !642
  %exitcond66 = icmp eq i64 %indvars.iv.next65, 6, !dbg !642
  br i1 %exitcond66, label %.preheader9.loopexit, label %12, !dbg !642

; <label>:21                                      ; preds = %30, %.preheader9
  %indvars.iv61 = phi i64 [ 0, %.preheader9 ], [ %indvars.iv.next62, %30 ]
  %22 = getelementptr inbounds [6 x double]* %d, i64 0, i64 %indvars.iv61, !dbg !648
  store double 0.000000e+00, double* %22, align 8, !dbg !649, !tbaa !465
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !268, metadata !360), !dbg !650
  %23 = getelementptr inbounds double** %7, i64 %indvars.iv61, !dbg !629
  %24 = load double** %23, align 8, !dbg !629, !tbaa !626
  %25 = getelementptr inbounds double** %8, i64 %indvars.iv61, !dbg !636
  %26 = load double** %25, align 8, !dbg !636, !tbaa !626
  br label %27, !dbg !651

; <label>:27                                      ; preds = %27, %21
  %indvars.iv58 = phi i64 [ 0, %21 ], [ %indvars.iv.next59, %27 ]
  %28 = getelementptr inbounds double* %24, i64 %indvars.iv58, !dbg !629
  store double 0.000000e+00, double* %28, align 8, !dbg !652, !tbaa !465
  %29 = getelementptr inbounds double* %26, i64 %indvars.iv58, !dbg !636
  store double 0.000000e+00, double* %29, align 8, !dbg !653, !tbaa !465
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1, !dbg !651
  %exitcond60 = icmp eq i64 %indvars.iv.next59, 6, !dbg !651
  br i1 %exitcond60, label %30, label %27, !dbg !651

; <label>:30                                      ; preds = %27
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1, !dbg !637
  %exitcond63 = icmp eq i64 %indvars.iv.next62, 6, !dbg !637
  br i1 %exitcond63, label %31, label %21, !dbg !637

; <label>:31                                      ; preds = %30
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !329, metadata !360) #7, !dbg !654
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 36, i32 16, i1 false) #7, !dbg !656
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !267, metadata !360), !dbg !657
  %32 = icmp sgt i32 %natoms, 0, !dbg !658
  br i1 %32, label %.lr.ph24, label %.lr.ph, !dbg !661

.lr.ph24:                                         ; preds = %31
  %33 = add i32 %natoms, -1, !dbg !661
  br label %34, !dbg !661

; <label>:34                                      ; preds = %.loopexit, %.lr.ph24
  %indvars.iv54 = phi i64 [ 0, %.lr.ph24 ], [ %indvars.iv.next55, %.loopexit ]
  %35 = getelementptr inbounds float* %w_rls, i64 %indvars.iv54, !dbg !662
  %36 = load float* %35, align 4, !dbg !662, !tbaa !450
  tail call void @llvm.dbg.value(metadata float %36, i64 0, metadata !284, metadata !360), !dbg !664
  %37 = fpext float %36 to double, !dbg !665
  %fabsf = tail call float @fabsf(float %36) #5, !dbg !666
  %38 = fpext float %fabsf to double, !dbg !666
  %39 = fcmp ogt double %38, 1.200000e-38, !dbg !667
  br i1 %39, label %.preheader8, label %.loopexit, !dbg !668

.preheader8:                                      ; preds = %34, %54
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %54 ], [ 0, %34 ]
  %40 = getelementptr inbounds [3 x float]* %xp, i64 %indvars.iv54, i64 %indvars.iv51, !dbg !669
  %41 = load float* %40, align 4, !dbg !669, !tbaa !450
  %42 = fpext float %41 to double, !dbg !669
  tail call void @llvm.dbg.value(metadata double %42, i64 0, metadata !277, metadata !360), !dbg !673
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !266, metadata !360), !dbg !674
  br label %43, !dbg !675

; <label>:43                                      ; preds = %43, %.preheader8
  %indvars.iv48 = phi i64 [ 0, %.preheader8 ], [ %indvars.iv.next49, %43 ]
  %44 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv54, i64 %indvars.iv48, !dbg !677
  %45 = load float* %44, align 4, !dbg !677, !tbaa !450
  %46 = fpext float %45 to double, !dbg !677
  tail call void @llvm.dbg.value(metadata double %46, i64 0, metadata !276, metadata !360), !dbg !680
  %47 = fmul double %37, %46, !dbg !681
  %48 = fmul double %42, %47, !dbg !682
  %49 = getelementptr inbounds [3 x [3 x float]]* %u, i64 0, i64 %indvars.iv51, i64 %indvars.iv48, !dbg !683
  %50 = load float* %49, align 4, !dbg !684, !tbaa !450
  %51 = fpext float %50 to double, !dbg !684
  %52 = fadd double %51, %48, !dbg !684
  %53 = fptrunc double %52 to float, !dbg !684
  store float %53, float* %49, align 4, !dbg !684, !tbaa !450
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1, !dbg !675
  %exitcond50 = icmp eq i64 %indvars.iv.next49, 3, !dbg !675
  br i1 %exitcond50, label %54, label %43, !dbg !675

; <label>:54                                      ; preds = %43
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1, !dbg !685
  %exitcond53 = icmp eq i64 %indvars.iv.next52, 3, !dbg !685
  br i1 %exitcond53, label %.loopexit, label %.preheader8, !dbg !685

.loopexit:                                        ; preds = %54, %34
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1, !dbg !661
  %lftr.wideiv56 = trunc i64 %indvars.iv54 to i32, !dbg !661
  %exitcond57 = icmp eq i32 %lftr.wideiv56, %33, !dbg !661
  br i1 %exitcond57, label %.lr.ph, label %34, !dbg !661

.lr.ph:                                           ; preds = %31, %.loopexit, %._crit_edge
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %._crit_edge ], [ 0, %.loopexit ], [ 0, %31 ]
  %indvars.iv42 = phi i32 [ %indvars.iv.next43, %._crit_edge ], [ 1, %.loopexit ], [ 1, %31 ]
  %55 = icmp sgt i64 %indvars.iv45, 2, !dbg !686
  %56 = add nsw i64 %indvars.iv45, -3, !dbg !692
  %57 = getelementptr inbounds double** %7, i64 %indvars.iv45, !dbg !694
  br label %58, !dbg !695

; <label>:58                                      ; preds = %75, %.lr.ph
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %75 ], [ 0, %.lr.ph ]
  %59 = icmp slt i64 %indvars.iv40, 3, !dbg !696
  %or.cond = and i1 %55, %59, !dbg !697
  br i1 %or.cond, label %60, label %69, !dbg !697

; <label>:60                                      ; preds = %58
  %61 = getelementptr inbounds [3 x [3 x float]]* %u, i64 0, i64 %56, i64 %indvars.iv40, !dbg !698
  %62 = load float* %61, align 4, !dbg !698, !tbaa !450
  %63 = fpext float %62 to double, !dbg !698
  %64 = load double** %57, align 8, !dbg !694, !tbaa !626
  %65 = getelementptr inbounds double* %64, i64 %indvars.iv40, !dbg !694
  store double %63, double* %65, align 8, !dbg !699, !tbaa !465
  %66 = getelementptr inbounds double** %7, i64 %indvars.iv40, !dbg !700
  %67 = load double** %66, align 8, !dbg !700, !tbaa !626
  %68 = getelementptr inbounds double* %67, i64 %indvars.iv45, !dbg !700
  store double %63, double* %68, align 8, !dbg !701, !tbaa !465
  br label %75, !dbg !702

; <label>:69                                      ; preds = %58
  %70 = load double** %57, align 8, !dbg !703, !tbaa !626
  %71 = getelementptr inbounds double* %70, i64 %indvars.iv40, !dbg !703
  store double 0.000000e+00, double* %71, align 8, !dbg !705, !tbaa !465
  %72 = getelementptr inbounds double** %7, i64 %indvars.iv40, !dbg !706
  %73 = load double** %72, align 8, !dbg !706, !tbaa !626
  %74 = getelementptr inbounds double* %73, i64 %indvars.iv45, !dbg !706
  store double 0.000000e+00, double* %74, align 8, !dbg !707, !tbaa !465
  br label %75

; <label>:75                                      ; preds = %60, %69
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1, !dbg !695
  %lftr.wideiv = trunc i64 %indvars.iv.next41 to i32, !dbg !695
  %exitcond44 = icmp eq i32 %lftr.wideiv, %indvars.iv42, !dbg !695
  br i1 %exitcond44, label %._crit_edge, label %58, !dbg !695

._crit_edge:                                      ; preds = %75
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1, !dbg !708
  %indvars.iv.next43 = add nuw nsw i32 %indvars.iv42, 1, !dbg !708
  %exitcond47 = icmp eq i64 %indvars.iv.next46, 6, !dbg !708
  br i1 %exitcond47, label %76, label %.lr.ph, !dbg !708

; <label>:76                                      ; preds = %._crit_edge
  %77 = getelementptr inbounds [6 x double]* %d, i64 0, i64 0, !dbg !709
  tail call void @llvm.dbg.value(metadata i32* %irot, i64 0, metadata !271, metadata !360), !dbg !710
  call void @jacobi(double** %7, i32 6, double* %77, double** %8, i32* %irot) #9, !dbg !711
  %78 = load %struct.__sFILE** @debug, align 8, !dbg !712, !tbaa !626
  %79 = icmp ne %struct.__sFILE* %78, null, !dbg !712
  call void @llvm.dbg.value(metadata i32* %irot, i64 0, metadata !271, metadata !360), !dbg !710
  %80 = load i32* %irot, align 4
  %81 = icmp eq i32 %80, 0, !dbg !714
  %or.cond3 = and i1 %79, %81, !dbg !715
  br i1 %or.cond3, label %82, label %.preheader5, !dbg !715

; <label>:82                                      ; preds = %76
  %83 = call i64 @fwrite(i8* getelementptr inbounds ([8 x i8]* @.str5, i64 0, i64 0), i64 7, i64 1, %struct.__sFILE* %78), !dbg !716
  br label %.preheader5, !dbg !716

.preheader5:                                      ; preds = %82, %76
  %84 = load double*** @calc_fit_R.om, align 8, !dbg !717, !tbaa !626
  br label %.preheader4, !dbg !724

.preheader4:                                      ; preds = %113, %.preheader5
  %indvars.iv37 = phi i64 [ 0, %.preheader5 ], [ %indvars.iv.next38, %113 ]
  %index.017 = phi i32 [ 0, %.preheader5 ], [ %index.2, %113 ]
  br label %85, !dbg !725

; <label>:85                                      ; preds = %93, %.preheader4
  %indvars.iv31 = phi i64 [ 0, %.preheader4 ], [ %indvars.iv.next32, %93 ]
  %max_d.014 = phi float [ -1.000000e+03, %.preheader4 ], [ %max_d.1, %93 ]
  %index.113 = phi i32 [ %index.017, %.preheader4 ], [ %index.2, %93 ]
  %86 = getelementptr inbounds [6 x double]* %d, i64 0, i64 %indvars.iv31, !dbg !727
  %87 = load double* %86, align 8, !dbg !727, !tbaa !465
  %88 = fpext float %max_d.014 to double, !dbg !730
  %89 = fcmp ogt double %87, %88, !dbg !731
  br i1 %89, label %90, label %93, !dbg !732

; <label>:90                                      ; preds = %85
  %91 = fptrunc double %87 to float, !dbg !733
  call void @llvm.dbg.value(metadata float %91, i64 0, metadata !286, metadata !360), !dbg !735
  %92 = trunc i64 %indvars.iv31 to i32, !dbg !736
  br label %93, !dbg !736

; <label>:93                                      ; preds = %85, %90
  %index.2 = phi i32 [ %92, %90 ], [ %index.113, %85 ]
  %max_d.1 = phi float [ %91, %90 ], [ %max_d.014, %85 ]
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1, !dbg !725
  %exitcond33 = icmp eq i64 %indvars.iv.next32, 6, !dbg !725
  br i1 %exitcond33, label %94, label %85, !dbg !725

; <label>:94                                      ; preds = %93
  %95 = sext i32 %index.2 to i64, !dbg !737
  %96 = getelementptr inbounds [6 x double]* %d, i64 0, i64 %95, !dbg !737
  store double -1.000000e+04, double* %96, align 8, !dbg !738, !tbaa !465
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !270, metadata !360), !dbg !641
  br label %97, !dbg !739

; <label>:97                                      ; preds = %97, %94
  %indvars.iv34 = phi i64 [ 0, %94 ], [ %indvars.iv.next35, %97 ]
  %98 = getelementptr inbounds double** %84, i64 %indvars.iv34, !dbg !717
  %99 = load double** %98, align 8, !dbg !717, !tbaa !626
  %100 = getelementptr inbounds double* %99, i64 %95, !dbg !717
  %101 = load double* %100, align 8, !dbg !717, !tbaa !465
  %102 = fmul double %101, 0x3FF6A09E667F3BCD, !dbg !740
  %103 = fptrunc double %102 to float, !dbg !741
  %104 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 %indvars.iv37, i64 %indvars.iv34, !dbg !742
  store float %103, float* %104, align 4, !dbg !743, !tbaa !450
  %105 = add nuw nsw i64 %indvars.iv34, 3, !dbg !744
  %106 = getelementptr inbounds double** %84, i64 %105, !dbg !745
  %107 = load double** %106, align 8, !dbg !745, !tbaa !626
  %108 = getelementptr inbounds double* %107, i64 %95, !dbg !745
  %109 = load double* %108, align 8, !dbg !745, !tbaa !465
  %110 = fmul double %109, 0x3FF6A09E667F3BCD, !dbg !746
  %111 = fptrunc double %110 to float, !dbg !747
  %112 = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 %indvars.iv37, i64 %indvars.iv34, !dbg !748
  store float %111, float* %112, align 4, !dbg !749, !tbaa !450
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1, !dbg !739
  %exitcond36 = icmp eq i64 %indvars.iv.next35, 3, !dbg !739
  br i1 %exitcond36, label %113, label %97, !dbg !739

; <label>:113                                     ; preds = %97
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1, !dbg !724
  %exitcond39 = icmp eq i64 %indvars.iv.next38, 2, !dbg !724
  br i1 %exitcond39, label %114, label %.preheader4, !dbg !724

; <label>:114                                     ; preds = %113
  %115 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 0, i64 0, !dbg !750
  %116 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 1, i64 0, !dbg !751
  %117 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 2, i64 0, !dbg !752
  tail call void @llvm.dbg.value(metadata float* %115, i64 0, metadata !335, metadata !360), !dbg !753
  tail call void @llvm.dbg.value(metadata float* %116, i64 0, metadata !336, metadata !360), !dbg !755
  tail call void @llvm.dbg.value(metadata float* %117, i64 0, metadata !337, metadata !360), !dbg !756
  %118 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 0, i64 1, !dbg !757
  %119 = load float* %118, align 4, !dbg !757, !tbaa !450
  %120 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 1, i64 2, !dbg !758
  %121 = load float* %120, align 4, !dbg !758, !tbaa !450
  %122 = fmul float %119, %121, !dbg !759
  %123 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 0, i64 2, !dbg !760
  %124 = load float* %123, align 8, !dbg !760, !tbaa !450
  %125 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 1, i64 1, !dbg !761
  %126 = load float* %125, align 4, !dbg !761, !tbaa !450
  %127 = fmul float %124, %126, !dbg !762
  %128 = fsub float %122, %127, !dbg !763
  store float %128, float* %117, align 8, !dbg !764, !tbaa !450
  %129 = load float* %116, align 4, !dbg !765, !tbaa !450
  %130 = fmul float %124, %129, !dbg !766
  %131 = load float* %115, align 16, !dbg !767, !tbaa !450
  %132 = fmul float %131, %121, !dbg !768
  %133 = fsub float %130, %132, !dbg !769
  %134 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 2, i64 1, !dbg !770
  store float %133, float* %134, align 4, !dbg !771, !tbaa !450
  %135 = fmul float %131, %126, !dbg !772
  %136 = fmul float %119, %129, !dbg !773
  %137 = fsub float %135, %136, !dbg !774
  %138 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 2, i64 2, !dbg !775
  store float %137, float* %138, align 8, !dbg !776, !tbaa !450
  %139 = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 0, i64 0, !dbg !777
  %140 = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 1, i64 0, !dbg !778
  %141 = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 2, i64 0, !dbg !779
  tail call void @llvm.dbg.value(metadata float* %139, i64 0, metadata !335, metadata !360), !dbg !780
  tail call void @llvm.dbg.value(metadata float* %140, i64 0, metadata !336, metadata !360), !dbg !782
  tail call void @llvm.dbg.value(metadata float* %141, i64 0, metadata !337, metadata !360), !dbg !783
  %142 = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 0, i64 1, !dbg !784
  %143 = load float* %142, align 4, !dbg !784, !tbaa !450
  %144 = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 1, i64 2, !dbg !785
  %145 = load float* %144, align 4, !dbg !785, !tbaa !450
  %146 = fmul float %143, %145, !dbg !786
  %147 = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 0, i64 2, !dbg !787
  %148 = load float* %147, align 8, !dbg !787, !tbaa !450
  %149 = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 1, i64 1, !dbg !788
  %150 = load float* %149, align 4, !dbg !788, !tbaa !450
  %151 = fmul float %148, %150, !dbg !789
  %152 = fsub float %146, %151, !dbg !790
  store float %152, float* %141, align 8, !dbg !791, !tbaa !450
  %153 = load float* %140, align 4, !dbg !792, !tbaa !450
  %154 = fmul float %148, %153, !dbg !793
  %155 = load float* %139, align 16, !dbg !794, !tbaa !450
  %156 = fmul float %155, %145, !dbg !795
  %157 = fsub float %154, %156, !dbg !796
  %158 = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 2, i64 1, !dbg !797
  store float %157, float* %158, align 4, !dbg !798, !tbaa !450
  %159 = fmul float %155, %150, !dbg !799
  %160 = fmul float %143, %153, !dbg !800
  %161 = fsub float %159, %160, !dbg !801
  %162 = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 2, i64 2, !dbg !802
  store float %161, float* %162, align 8, !dbg !803, !tbaa !450
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !266, metadata !360), !dbg !674
  br label %.preheader, !dbg !804

.preheader:                                       ; preds = %..preheader_crit_edge, %114
  %163 = phi float [ %152, %114 ], [ %.pre71, %..preheader_crit_edge ]
  %164 = phi float [ %153, %114 ], [ %.pre69, %..preheader_crit_edge ]
  %165 = phi float [ %155, %114 ], [ %.pre67, %..preheader_crit_edge ]
  %indvars.iv28 = phi i64 [ 0, %114 ], [ %indvars.iv.next29, %..preheader_crit_edge ]
  br label %166, !dbg !806

; <label>:166                                     ; preds = %166, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %166 ]
  %167 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 0, i64 %indvars.iv, !dbg !809
  %168 = load float* %167, align 4, !dbg !809, !tbaa !450
  %169 = fmul float %165, %168, !dbg !811
  %170 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 1, i64 %indvars.iv, !dbg !812
  %171 = load float* %170, align 4, !dbg !812, !tbaa !450
  %172 = fmul float %164, %171, !dbg !813
  %173 = fadd float %169, %172, !dbg !814
  %174 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 2, i64 %indvars.iv, !dbg !815
  %175 = load float* %174, align 4, !dbg !815, !tbaa !450
  %176 = fmul float %163, %175, !dbg !816
  %177 = fadd float %173, %176, !dbg !817
  %178 = getelementptr inbounds [3 x float]* %R, i64 %indvars.iv28, i64 %indvars.iv, !dbg !818
  store float %177, float* %178, align 4, !dbg !819, !tbaa !450
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !806
  %exitcond = icmp eq i64 %indvars.iv.next, 3, !dbg !806
  br i1 %exitcond, label %179, label %166, !dbg !806

; <label>:179                                     ; preds = %166
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1, !dbg !804
  %exitcond30 = icmp eq i64 %indvars.iv.next29, 3, !dbg !804
  br i1 %exitcond30, label %180, label %..preheader_crit_edge, !dbg !804

..preheader_crit_edge:                            ; preds = %179
  %.phi.trans.insert = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 0, i64 %indvars.iv.next29
  %.pre67 = load float* %.phi.trans.insert, align 4, !dbg !820, !tbaa !450
  %.phi.trans.insert68 = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 1, i64 %indvars.iv.next29
  %.pre69 = load float* %.phi.trans.insert68, align 4, !dbg !821, !tbaa !450
  %.phi.trans.insert70 = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 2, i64 %indvars.iv.next29
  %.pre71 = load float* %.phi.trans.insert70, align 4, !dbg !822, !tbaa !450
  br label %.preheader, !dbg !804

; <label>:180                                     ; preds = %179
  call void @llvm.lifetime.end(i64 36, i8* %4) #7, !dbg !823
  call void @llvm.lifetime.end(i64 36, i8* %3) #7, !dbg !823
  call void @llvm.lifetime.end(i64 36, i8* %2) #7, !dbg !823
  call void @llvm.lifetime.end(i64 48, i8* %1) #7, !dbg !823
  ret void, !dbg !823
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #3

; Function Attrs: optsize
declare void @jacobi(double**, i32, double*, double**, i32*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: nounwind optsize ssp uwtable
define void @do_fit(i32 %natoms, float* nocapture readonly %w_rls, [3 x float]* nocapture readonly %xp, [3 x float]* nocapture %x) #6 {
  %R = alloca [3 x [3 x float]], align 16
  %x_old = alloca [3 x float], align 4
  %x_old6 = bitcast [3 x float]* %x_old to i8*
  tail call void @llvm.dbg.value(metadata i32 %natoms, i64 0, metadata !291, metadata !360), !dbg !824
  tail call void @llvm.dbg.value(metadata float* %w_rls, i64 0, metadata !292, metadata !360), !dbg !825
  tail call void @llvm.dbg.value(metadata [3 x float]* %xp, i64 0, metadata !293, metadata !360), !dbg !826
  tail call void @llvm.dbg.value(metadata [3 x float]* %x, i64 0, metadata !294, metadata !360), !dbg !827
  %1 = bitcast [3 x [3 x float]]* %R to i8*, !dbg !828
  call void @llvm.lifetime.start(i64 36, i8* %1) #7, !dbg !828
  tail call void @llvm.dbg.declare(metadata [3 x [3 x float]]* %R, metadata !300, metadata !360), !dbg !829
  tail call void @llvm.dbg.declare(metadata [3 x float]* %x_old, metadata !301, metadata !360), !dbg !830
  %2 = getelementptr inbounds [3 x [3 x float]]* %R, i64 0, i64 0, !dbg !831
  call void @calc_fit_R(i32 %natoms, float* %w_rls, [3 x float]* %xp, [3 x float]* %x, [3 x float]* %2) #11, !dbg !832
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !296, metadata !360), !dbg !833
  %3 = icmp sgt i32 %natoms, 0, !dbg !834
  br i1 %3, label %.preheader1.lr.ph, label %._crit_edge, !dbg !837

.preheader1.lr.ph:                                ; preds = %0
  %4 = add i32 %natoms, -1, !dbg !837
  br label %.preheader1, !dbg !837

.preheader1:                                      ; preds = %16, %.preheader1.lr.ph
  %indvars.iv13 = phi i64 [ 0, %.preheader1.lr.ph ], [ %indvars.iv.next14, %16 ]
  %scevgep = getelementptr [3 x float]* %x, i64 %indvars.iv13, i64 0
  %scevgep7 = bitcast float* %scevgep to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %x_old6, i8* %scevgep7, i64 12, i32 4, i1 false), !dbg !838
  br label %5, !dbg !842

; <label>:5                                       ; preds = %15, %.preheader1
  %indvars.iv8 = phi i64 [ 0, %.preheader1 ], [ %indvars.iv.next9, %15 ]
  %6 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv13, i64 %indvars.iv8, !dbg !844
  store float 0.000000e+00, float* %6, align 4, !dbg !847, !tbaa !450
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !299, metadata !360), !dbg !848
  br label %7, !dbg !849

; <label>:7                                       ; preds = %7, %5
  %indvars.iv = phi i64 [ 0, %5 ], [ %indvars.iv.next, %7 ]
  %8 = phi float [ 0.000000e+00, %5 ], [ %14, %7 ], !dbg !851
  %9 = getelementptr inbounds [3 x [3 x float]]* %R, i64 0, i64 %indvars.iv8, i64 %indvars.iv, !dbg !851
  %10 = load float* %9, align 4, !dbg !851, !tbaa !450
  %11 = getelementptr inbounds [3 x float]* %x_old, i64 0, i64 %indvars.iv, !dbg !853
  %12 = load float* %11, align 4, !dbg !853, !tbaa !450
  %13 = fmul float %10, %12, !dbg !854
  %14 = fadd float %8, %13, !dbg !855
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !849
  %exitcond = icmp eq i64 %indvars.iv.next, 3, !dbg !849
  br i1 %exitcond, label %15, label %7, !dbg !849

; <label>:15                                      ; preds = %7
  store float %14, float* %6, align 4, !dbg !855, !tbaa !450
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1, !dbg !842
  %exitcond10 = icmp eq i64 %indvars.iv.next9, 3, !dbg !842
  br i1 %exitcond10, label %16, label %5, !dbg !842

; <label>:16                                      ; preds = %15
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1, !dbg !837
  %lftr.wideiv = trunc i64 %indvars.iv13 to i32, !dbg !837
  %exitcond15 = icmp eq i32 %lftr.wideiv, %4, !dbg !837
  br i1 %exitcond15, label %._crit_edge, label %.preheader1, !dbg !837

._crit_edge:                                      ; preds = %16, %0
  call void @llvm.lifetime.end(i64 36, i8* %1) #7, !dbg !856
  ret void, !dbg !856
}

; Function Attrs: nounwind optsize ssp uwtable
define void @reset_x(i32 %ncm, i32* nocapture readonly %ind_cm, i32 %nreset, i32* readonly %ind_reset, [3 x float]* nocapture %x, float* nocapture readonly %mass) #6 {
  %xcm = alloca [3 x float], align 4
  tail call void @llvm.dbg.value(metadata i32 %ncm, i64 0, metadata !306, metadata !360), !dbg !857
  tail call void @llvm.dbg.value(metadata i32* %ind_cm, i64 0, metadata !307, metadata !360), !dbg !858
  tail call void @llvm.dbg.value(metadata i32 %nreset, i64 0, metadata !308, metadata !360), !dbg !859
  tail call void @llvm.dbg.value(metadata i32* %ind_reset, i64 0, metadata !309, metadata !360), !dbg !860
  tail call void @llvm.dbg.value(metadata [3 x float]* %x, i64 0, metadata !310, metadata !360), !dbg !861
  tail call void @llvm.dbg.value(metadata float* %mass, i64 0, metadata !311, metadata !360), !dbg !862
  tail call void @llvm.dbg.declare(metadata [3 x float]* %xcm, metadata !315, metadata !360), !dbg !863
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !316, metadata !360), !dbg !864
  %1 = getelementptr inbounds [3 x float]* %xcm, i64 0, i64 0, !dbg !865
  tail call void @llvm.dbg.value(metadata float* %1, i64 0, metadata !342, metadata !360), !dbg !866
  store float 0.000000e+00, float* %1, align 4, !dbg !868, !tbaa !450
  %2 = getelementptr inbounds [3 x float]* %xcm, i64 0, i64 1, !dbg !869
  store float 0.000000e+00, float* %2, align 4, !dbg !870, !tbaa !450
  %3 = getelementptr inbounds [3 x float]* %xcm, i64 0, i64 2, !dbg !871
  store float 0.000000e+00, float* %3, align 4, !dbg !872, !tbaa !450
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !312, metadata !360), !dbg !873
  %4 = icmp sgt i32 %ncm, 0, !dbg !874
  br i1 %4, label %.lr.ph11, label %.preheader3, !dbg !877

.lr.ph11:                                         ; preds = %0
  %5 = add i32 %ncm, -1, !dbg !877
  br label %6, !dbg !877

.preheader3:                                      ; preds = %19, %0
  %tm.0.lcssa = phi float [ 0.000000e+00, %0 ], [ %20, %19 ]
  br label %21, !dbg !878

; <label>:6                                       ; preds = %19, %.lr.ph11
  %indvars.iv22 = phi i64 [ 0, %.lr.ph11 ], [ %indvars.iv.next23, %19 ]
  %tm.09 = phi float [ 0.000000e+00, %.lr.ph11 ], [ %20, %19 ]
  %7 = getelementptr inbounds i32* %ind_cm, i64 %indvars.iv22, !dbg !880
  %8 = load i32* %7, align 4, !dbg !880, !tbaa !547
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !314, metadata !360), !dbg !882
  %9 = sext i32 %8 to i64, !dbg !883
  %10 = getelementptr inbounds float* %mass, i64 %9, !dbg !883
  %11 = load float* %10, align 4, !dbg !883, !tbaa !450
  tail call void @llvm.dbg.value(metadata float %11, i64 0, metadata !317, metadata !360), !dbg !884
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !313, metadata !360), !dbg !885
  br label %12, !dbg !886

; <label>:12                                      ; preds = %12, %6
  %indvars.iv19 = phi i64 [ 0, %6 ], [ %indvars.iv.next20, %12 ]
  %13 = getelementptr inbounds [3 x float]* %x, i64 %9, i64 %indvars.iv19, !dbg !888
  %14 = load float* %13, align 4, !dbg !888, !tbaa !450
  %15 = fmul float %11, %14, !dbg !890
  %16 = getelementptr inbounds [3 x float]* %xcm, i64 0, i64 %indvars.iv19, !dbg !891
  %17 = load float* %16, align 4, !dbg !892, !tbaa !450
  %18 = fadd float %17, %15, !dbg !892
  store float %18, float* %16, align 4, !dbg !892, !tbaa !450
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1, !dbg !886
  %exitcond21 = icmp eq i64 %indvars.iv.next20, 3, !dbg !886
  br i1 %exitcond21, label %19, label %12, !dbg !886

; <label>:19                                      ; preds = %12
  %20 = fadd float %tm.09, %11, !dbg !893
  tail call void @llvm.dbg.value(metadata float %20, i64 0, metadata !316, metadata !360), !dbg !864
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1, !dbg !877
  %lftr.wideiv24 = trunc i64 %indvars.iv22 to i32, !dbg !877
  %exitcond25 = icmp eq i32 %lftr.wideiv24, %5, !dbg !877
  br i1 %exitcond25, label %.preheader3, label %6, !dbg !877

; <label>:21                                      ; preds = %21, %.preheader3
  %indvars.iv16 = phi i64 [ 0, %.preheader3 ], [ %indvars.iv.next17, %21 ]
  %22 = getelementptr inbounds [3 x float]* %xcm, i64 0, i64 %indvars.iv16, !dbg !894
  %23 = load float* %22, align 4, !dbg !896, !tbaa !450
  %24 = fdiv float %23, %tm.0.lcssa, !dbg !896
  store float %24, float* %22, align 4, !dbg !896, !tbaa !450
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1, !dbg !878
  %exitcond18 = icmp eq i64 %indvars.iv.next17, 3, !dbg !878
  br i1 %exitcond18, label %25, label %21, !dbg !878

; <label>:25                                      ; preds = %21
  %26 = icmp eq i32* %ind_reset, null, !dbg !897
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !312, metadata !360), !dbg !873
  %27 = icmp sgt i32 %nreset, 0, !dbg !899
  br i1 %26, label %.preheader, label %.preheader1, !dbg !902

.preheader1:                                      ; preds = %25
  br i1 %27, label %.lr.ph6, label %.loopexit, !dbg !903

.lr.ph6:                                          ; preds = %.preheader1
  %28 = load float* %1, align 4, !dbg !905, !tbaa !450
  %29 = load float* %2, align 4, !dbg !908, !tbaa !450
  %30 = load float* %3, align 4, !dbg !909, !tbaa !450
  %31 = add i32 %nreset, -1, !dbg !903
  br label %36, !dbg !903

.preheader:                                       ; preds = %25
  br i1 %27, label %.lr.ph, label %.loopexit, !dbg !910

.lr.ph:                                           ; preds = %.preheader
  %32 = load float* %1, align 4, !dbg !911, !tbaa !450
  %33 = load float* %2, align 4, !dbg !913, !tbaa !450
  %34 = load float* %3, align 4, !dbg !914, !tbaa !450
  %35 = add i32 %nreset, -1, !dbg !910
  br label %49, !dbg !910

; <label>:36                                      ; preds = %36, %.lr.ph6
  %indvars.iv12 = phi i64 [ 0, %.lr.ph6 ], [ %indvars.iv.next13, %36 ]
  %37 = getelementptr inbounds i32* %ind_reset, i64 %indvars.iv12, !dbg !915
  %38 = load i32* %37, align 4, !dbg !915, !tbaa !547
  %39 = sext i32 %38 to i64, !dbg !916
  %40 = getelementptr inbounds [3 x float]* %x, i64 %39, i64 0, !dbg !916
  tail call void @llvm.dbg.value(metadata float* %40, i64 0, metadata !347, metadata !360), !dbg !917
  tail call void @llvm.dbg.value(metadata float* %1, i64 0, metadata !348, metadata !360), !dbg !918
  %41 = load float* %40, align 4, !dbg !919, !tbaa !450
  %42 = fsub float %41, %28, !dbg !920
  tail call void @llvm.dbg.value(metadata float %42, i64 0, metadata !349, metadata !360), !dbg !921
  %43 = getelementptr inbounds [3 x float]* %x, i64 %39, i64 1, !dbg !922
  %44 = load float* %43, align 4, !dbg !922, !tbaa !450
  %45 = fsub float %44, %29, !dbg !923
  tail call void @llvm.dbg.value(metadata float %45, i64 0, metadata !350, metadata !360), !dbg !924
  %46 = getelementptr inbounds [3 x float]* %x, i64 %39, i64 2, !dbg !925
  %47 = load float* %46, align 4, !dbg !925, !tbaa !450
  %48 = fsub float %47, %30, !dbg !926
  tail call void @llvm.dbg.value(metadata float %48, i64 0, metadata !351, metadata !360), !dbg !927
  store float %42, float* %40, align 4, !dbg !928, !tbaa !450
  store float %45, float* %43, align 4, !dbg !929, !tbaa !450
  store float %48, float* %46, align 4, !dbg !930, !tbaa !450
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1, !dbg !903
  %lftr.wideiv14 = trunc i64 %indvars.iv12 to i32, !dbg !903
  %exitcond15 = icmp eq i32 %lftr.wideiv14, %31, !dbg !903
  br i1 %exitcond15, label %.loopexit, label %36, !dbg !903

; <label>:49                                      ; preds = %49, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %49 ]
  %50 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 0, !dbg !931
  tail call void @llvm.dbg.value(metadata float* %50, i64 0, metadata !347, metadata !360), !dbg !932
  tail call void @llvm.dbg.value(metadata float* %1, i64 0, metadata !348, metadata !360), !dbg !933
  %51 = load float* %50, align 4, !dbg !934, !tbaa !450
  %52 = fsub float %51, %32, !dbg !935
  tail call void @llvm.dbg.value(metadata float %52, i64 0, metadata !349, metadata !360), !dbg !936
  %53 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 1, !dbg !937
  %54 = load float* %53, align 4, !dbg !937, !tbaa !450
  %55 = fsub float %54, %33, !dbg !938
  tail call void @llvm.dbg.value(metadata float %55, i64 0, metadata !350, metadata !360), !dbg !939
  %56 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 2, !dbg !940
  %57 = load float* %56, align 4, !dbg !940, !tbaa !450
  %58 = fsub float %57, %34, !dbg !941
  tail call void @llvm.dbg.value(metadata float %58, i64 0, metadata !351, metadata !360), !dbg !942
  store float %52, float* %50, align 4, !dbg !943, !tbaa !450
  store float %55, float* %53, align 4, !dbg !944, !tbaa !450
  store float %58, float* %56, align 4, !dbg !945, !tbaa !450
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !910
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !910
  %exitcond = icmp eq i32 %lftr.wideiv, %35, !dbg !910
  br i1 %exitcond, label %.loopexit, label %49, !dbg !910

.loopexit:                                        ; preds = %36, %49, %.preheader1, %.preheader
  ret void, !dbg !946
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

declare float @sqrtf(float)

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #7

declare float @fabsf(float)

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #7

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #7

attributes #0 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { readnone }
attributes #9 = { nounwind optsize }
attributes #10 = { nounwind optsize readnone }
attributes #11 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!356, !357, !358}
!llvm.ident = !{!359}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !7, globals: !352, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/do_fit.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5, !6}
!4 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!5 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!7 = !{!8, !15, !21, !27, !30, !33, !36, !39, !42, !45, !54, !63, !76, !79, !82, !85, !99, !113, !119, !125, !192, !198, !225, !234, !242, !249, !255, !287, !302, !318, !324, !331, !338, !343}
!8 = !DISubprogram(name: "__inline_isfinitef", scope: !9, file: !9, line: 204, type: !10, isLocal: false, isDefinition: true, scopeLine: 204, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isfinitef, variables: !13)
!9 = !DIFile(filename: "/usr/include/math.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!10 = !DISubroutineType(types: !11)
!11 = !{!4, !12}
!12 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!13 = !{!14}
!14 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !8, file: !9, line: 204, type: !12)
!15 = !DISubprogram(name: "__inline_isfinited", scope: !9, file: !9, line: 207, type: !16, isLocal: false, isDefinition: true, scopeLine: 207, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isfinited, variables: !19)
!16 = !DISubroutineType(types: !17)
!17 = !{!4, !18}
!18 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!19 = !{!20}
!20 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !15, file: !9, line: 207, type: !18)
!21 = !DISubprogram(name: "__inline_isfinitel", scope: !9, file: !9, line: 210, type: !22, isLocal: false, isDefinition: true, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isfinitel, variables: !25)
!22 = !DISubroutineType(types: !23)
!23 = !{!4, !24}
!24 = !DIBasicType(name: "long double", size: 128, align: 128, encoding: DW_ATE_float)
!25 = !{!26}
!26 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !21, file: !9, line: 210, type: !24)
!27 = !DISubprogram(name: "__inline_isinff", scope: !9, file: !9, line: 213, type: !10, isLocal: false, isDefinition: true, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isinff, variables: !28)
!28 = !{!29}
!29 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !27, file: !9, line: 213, type: !12)
!30 = !DISubprogram(name: "__inline_isinfd", scope: !9, file: !9, line: 216, type: !16, isLocal: false, isDefinition: true, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isinfd, variables: !31)
!31 = !{!32}
!32 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !30, file: !9, line: 216, type: !18)
!33 = !DISubprogram(name: "__inline_isinfl", scope: !9, file: !9, line: 219, type: !22, isLocal: false, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isinfl, variables: !34)
!34 = !{!35}
!35 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !33, file: !9, line: 219, type: !24)
!36 = !DISubprogram(name: "__inline_isnanf", scope: !9, file: !9, line: 222, type: !10, isLocal: false, isDefinition: true, scopeLine: 222, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isnanf, variables: !37)
!37 = !{!38}
!38 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !36, file: !9, line: 222, type: !12)
!39 = !DISubprogram(name: "__inline_isnand", scope: !9, file: !9, line: 225, type: !16, isLocal: false, isDefinition: true, scopeLine: 225, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isnand, variables: !40)
!40 = !{!41}
!41 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !39, file: !9, line: 225, type: !18)
!42 = !DISubprogram(name: "__inline_isnanl", scope: !9, file: !9, line: 228, type: !22, isLocal: false, isDefinition: true, scopeLine: 228, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isnanl, variables: !43)
!43 = !{!44}
!44 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !42, file: !9, line: 228, type: !24)
!45 = !DISubprogram(name: "__inline_signbitf", scope: !9, file: !9, line: 231, type: !10, isLocal: false, isDefinition: true, scopeLine: 231, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_signbitf, variables: !46)
!46 = !{!47, !48}
!47 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !45, file: !9, line: 231, type: !12)
!48 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__u", scope: !45, file: !9, line: 232, type: !49)
!49 = !DICompositeType(tag: DW_TAG_union_type, scope: !45, file: !9, line: 232, size: 32, align: 32, elements: !50)
!50 = !{!51, !52}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "__f", scope: !49, file: !9, line: 232, baseType: !12, size: 32, align: 32)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "__u", scope: !49, file: !9, line: 232, baseType: !53, size: 32, align: 32)
!53 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!54 = !DISubprogram(name: "__inline_signbitd", scope: !9, file: !9, line: 236, type: !16, isLocal: false, isDefinition: true, scopeLine: 236, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_signbitd, variables: !55)
!55 = !{!56, !57}
!56 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !54, file: !9, line: 236, type: !18)
!57 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__u", scope: !54, file: !9, line: 237, type: !58)
!58 = !DICompositeType(tag: DW_TAG_union_type, scope: !54, file: !9, line: 237, size: 64, align: 64, elements: !59)
!59 = !{!60, !61}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "__f", scope: !58, file: !9, line: 237, baseType: !18, size: 64, align: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "__u", scope: !58, file: !9, line: 237, baseType: !62, size: 64, align: 64)
!62 = !DIBasicType(name: "long long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!63 = !DISubprogram(name: "__inline_signbitl", scope: !9, file: !9, line: 242, type: !22, isLocal: false, isDefinition: true, scopeLine: 242, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_signbitl, variables: !64)
!64 = !{!65, !66}
!65 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !63, file: !9, line: 242, type: !24)
!66 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__u", scope: !63, file: !9, line: 246, type: !67)
!67 = !DICompositeType(tag: DW_TAG_union_type, scope: !63, file: !9, line: 243, size: 128, align: 128, elements: !68)
!68 = !{!69, !70}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "__ld", scope: !67, file: !9, line: 244, baseType: !24, size: 128, align: 128)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "__p", scope: !67, file: !9, line: 245, baseType: !71, size: 128, align: 64)
!71 = !DICompositeType(tag: DW_TAG_structure_type, scope: !67, file: !9, line: 245, size: 128, align: 64, elements: !72)
!72 = !{!73, !74}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "__m", scope: !71, file: !9, line: 245, baseType: !62, size: 64, align: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "__sexp", scope: !71, file: !9, line: 245, baseType: !75, size: 16, align: 16, offset: 64)
!75 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!76 = !DISubprogram(name: "__inline_isnormalf", scope: !9, file: !9, line: 257, type: !10, isLocal: false, isDefinition: true, scopeLine: 257, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isnormalf, variables: !77)
!77 = !{!78}
!78 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !76, file: !9, line: 257, type: !12)
!79 = !DISubprogram(name: "__inline_isnormald", scope: !9, file: !9, line: 260, type: !16, isLocal: false, isDefinition: true, scopeLine: 260, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isnormald, variables: !80)
!80 = !{!81}
!81 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !79, file: !9, line: 260, type: !18)
!82 = !DISubprogram(name: "__inline_isnormall", scope: !9, file: !9, line: 263, type: !22, isLocal: false, isDefinition: true, scopeLine: 263, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isnormall, variables: !83)
!83 = !{!84}
!84 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !82, file: !9, line: 263, type: !24)
!85 = !DISubprogram(name: "__sincosf", scope: !9, file: !9, line: 642, type: !86, isLocal: false, isDefinition: true, scopeLine: 642, flags: DIFlagPrototyped, isOptimized: true, function: void (float, float*, float*)* @__sincosf, variables: !89)
!86 = !DISubroutineType(types: !87)
!87 = !{null, !12, !88, !88}
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!89 = !{!90, !91, !92, !93}
!90 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !85, file: !9, line: 642, type: !12)
!91 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !85, file: !9, line: 642, type: !88)
!92 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !85, file: !9, line: 642, type: !88)
!93 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !85, file: !9, line: 643, type: !94)
!94 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!95 = !DICompositeType(tag: DW_TAG_structure_type, name: "__float2", file: !9, line: 634, size: 64, align: 32, elements: !96)
!96 = !{!97, !98}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__sinval", scope: !95, file: !9, line: 634, baseType: !12, size: 32, align: 32)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__cosval", scope: !95, file: !9, line: 634, baseType: !12, size: 32, align: 32, offset: 32)
!99 = !DISubprogram(name: "__sincos", scope: !9, file: !9, line: 647, type: !100, isLocal: false, isDefinition: true, scopeLine: 647, flags: DIFlagPrototyped, isOptimized: true, function: void (double, double*, double*)* @__sincos, variables: !103)
!100 = !DISubroutineType(types: !101)
!101 = !{null, !18, !102, !102}
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!103 = !{!104, !105, !106, !107}
!104 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !99, file: !9, line: 647, type: !18)
!105 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !99, file: !9, line: 647, type: !102)
!106 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !99, file: !9, line: 647, type: !102)
!107 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !99, file: !9, line: 648, type: !108)
!108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!109 = !DICompositeType(tag: DW_TAG_structure_type, name: "__double2", file: !9, line: 635, size: 128, align: 64, elements: !110)
!110 = !{!111, !112}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "__sinval", scope: !109, file: !9, line: 635, baseType: !18, size: 64, align: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "__cosval", scope: !109, file: !9, line: 635, baseType: !18, size: 64, align: 64, offset: 64)
!113 = !DISubprogram(name: "__sincospif", scope: !9, file: !9, line: 652, type: !86, isLocal: false, isDefinition: true, scopeLine: 652, flags: DIFlagPrototyped, isOptimized: true, function: void (float, float*, float*)* @__sincospif, variables: !114)
!114 = !{!115, !116, !117, !118}
!115 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !113, file: !9, line: 652, type: !12)
!116 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !113, file: !9, line: 652, type: !88)
!117 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !113, file: !9, line: 652, type: !88)
!118 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !113, file: !9, line: 653, type: !94)
!119 = !DISubprogram(name: "__sincospi", scope: !9, file: !9, line: 657, type: !100, isLocal: false, isDefinition: true, scopeLine: 657, flags: DIFlagPrototyped, isOptimized: true, function: void (double, double*, double*)* @__sincospi, variables: !120)
!120 = !{!121, !122, !123, !124}
!121 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !119, file: !9, line: 657, type: !18)
!122 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !119, file: !9, line: 657, type: !102)
!123 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !119, file: !9, line: 657, type: !102)
!124 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !119, file: !9, line: 658, type: !108)
!125 = !DISubprogram(name: "__sputc", scope: !126, file: !126, line: 348, type: !127, isLocal: false, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, %struct.__sFILE*)* @__sputc, variables: !189)
!126 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!127 = !DISubroutineType(types: !128)
!128 = !{!4, !4, !129}
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64, align: 64)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !126, line: 153, baseType: !131)
!131 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !126, line: 122, size: 1216, align: 64, elements: !132)
!132 = !{!133, !136, !137, !138, !140, !141, !146, !147, !148, !152, !157, !167, !173, !174, !177, !178, !182, !186, !187, !188}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !131, file: !126, line: 123, baseType: !134, size: 64, align: 64)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64, align: 64)
!135 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !131, file: !126, line: 124, baseType: !4, size: 32, align: 32, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !131, file: !126, line: 125, baseType: !4, size: 32, align: 32, offset: 96)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !131, file: !126, line: 126, baseType: !139, size: 16, align: 16, offset: 128)
!139 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !131, file: !126, line: 127, baseType: !139, size: 16, align: 16, offset: 144)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !131, file: !126, line: 128, baseType: !142, size: 128, align: 64, offset: 192)
!142 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !126, line: 88, size: 128, align: 64, elements: !143)
!143 = !{!144, !145}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !142, file: !126, line: 89, baseType: !134, size: 64, align: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !142, file: !126, line: 90, baseType: !4, size: 32, align: 32, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !131, file: !126, line: 129, baseType: !4, size: 32, align: 32, offset: 320)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !131, file: !126, line: 132, baseType: !6, size: 64, align: 64, offset: 384)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !131, file: !126, line: 133, baseType: !149, size: 64, align: 64, offset: 448)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64, align: 64)
!150 = !DISubroutineType(types: !151)
!151 = !{!4, !6}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !131, file: !126, line: 134, baseType: !153, size: 64, align: 64, offset: 512)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64, align: 64)
!154 = !DISubroutineType(types: !155)
!155 = !{!4, !6, !156, !4}
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !131, file: !126, line: 135, baseType: !158, size: 64, align: 64, offset: 576)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64, align: 64)
!159 = !DISubroutineType(types: !160)
!160 = !{!161, !6, !161, !4}
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !126, line: 77, baseType: !162)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !163, line: 71, baseType: !164)
!163 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !165, line: 46, baseType: !166)
!165 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!166 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !131, file: !126, line: 136, baseType: !168, size: 64, align: 64, offset: 640)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64, align: 64)
!169 = !DISubroutineType(types: !170)
!170 = !{!4, !6, !171, !4}
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64, align: 64)
!172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !131, file: !126, line: 139, baseType: !142, size: 128, align: 64, offset: 704)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !131, file: !126, line: 140, baseType: !175, size: 64, align: 64, offset: 832)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64, align: 64)
!176 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !126, line: 94, flags: DIFlagFwdDecl)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !131, file: !126, line: 141, baseType: !4, size: 32, align: 32, offset: 896)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !131, file: !126, line: 144, baseType: !179, size: 24, align: 8, offset: 928)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 24, align: 8, elements: !180)
!180 = !{!181}
!181 = !DISubrange(count: 3)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !131, file: !126, line: 145, baseType: !183, size: 8, align: 8, offset: 952)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 8, align: 8, elements: !184)
!184 = !{!185}
!185 = !DISubrange(count: 1)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !131, file: !126, line: 148, baseType: !142, size: 128, align: 64, offset: 960)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !131, file: !126, line: 151, baseType: !4, size: 32, align: 32, offset: 1088)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !131, file: !126, line: 152, baseType: !161, size: 64, align: 64, offset: 1152)
!189 = !{!190, !191}
!190 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !125, file: !126, line: 348, type: !4)
!191 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_p", arg: 2, scope: !125, file: !126, line: 348, type: !129)
!192 = !DISubprogram(name: "__sigbits", scope: !193, file: !193, line: 114, type: !194, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @__sigbits, variables: !196)
!193 = !DIFile(filename: "/usr/include/signal.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!194 = !DISubroutineType(types: !195)
!195 = !{!4, !4}
!196 = !{!197}
!197 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__signo", arg: 1, scope: !192, file: !193, line: 114, type: !4)
!198 = !DISubprogram(name: "calc_similar_ind", scope: !1, file: !1, line: 43, type: !199, isLocal: false, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: true, function: float (i32, i32, i32*, float*, [3 x float]*, [3 x float]*)* @calc_similar_ind, variables: !209)
!199 = !DISubroutineType(types: !200)
!200 = !{!201, !4, !4, !203, !205, !206, !206}
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "real", file: !202, line: 87, baseType: !12)
!202 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/simple.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64, align: 64)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "atom_id", file: !202, line: 73, baseType: !4)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64, align: 64)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64, align: 64)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "rvec", file: !202, line: 101, baseType: !208)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, size: 96, align: 32, elements: !180)
!209 = !{!210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224}
!210 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bRho", arg: 1, scope: !198, file: !1, line: 43, type: !4)
!211 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nind", arg: 2, scope: !198, file: !1, line: 43, type: !4)
!212 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "index", arg: 3, scope: !198, file: !1, line: 43, type: !203)
!213 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mass", arg: 4, scope: !198, file: !1, line: 43, type: !205)
!214 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 5, scope: !198, file: !1, line: 44, type: !206)
!215 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xp", arg: 6, scope: !198, file: !1, line: 44, type: !206)
!216 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !198, file: !1, line: 46, type: !4)
!217 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !198, file: !1, line: 46, type: !4)
!218 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d", scope: !198, file: !1, line: 46, type: !4)
!219 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !198, file: !1, line: 47, type: !201)
!220 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tm", scope: !198, file: !1, line: 47, type: !201)
!221 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xs", scope: !198, file: !1, line: 47, type: !201)
!222 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xd", scope: !198, file: !1, line: 47, type: !201)
!223 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rs", scope: !198, file: !1, line: 47, type: !201)
!224 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rd", scope: !198, file: !1, line: 47, type: !201)
!225 = !DISubprogram(name: "rmsdev_ind", scope: !1, file: !1, line: 74, type: !226, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, function: float (i32, i32*, float*, [3 x float]*, [3 x float]*)* @rmsdev_ind, variables: !228)
!226 = !DISubroutineType(types: !227)
!227 = !{!201, !4, !203, !205, !206, !206}
!228 = !{!229, !230, !231, !232, !233}
!229 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nind", arg: 1, scope: !225, file: !1, line: 74, type: !4)
!230 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "index", arg: 2, scope: !225, file: !1, line: 74, type: !203)
!231 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mass", arg: 3, scope: !225, file: !1, line: 74, type: !205)
!232 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 4, scope: !225, file: !1, line: 74, type: !206)
!233 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xp", arg: 5, scope: !225, file: !1, line: 74, type: !206)
!234 = !DISubprogram(name: "rmsdev", scope: !1, file: !1, line: 79, type: !235, isLocal: false, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: true, function: float (i32, float*, [3 x float]*, [3 x float]*)* @rmsdev, variables: !237)
!235 = !DISubroutineType(types: !236)
!236 = !{!201, !4, !205, !206, !206}
!237 = !{!238, !239, !240, !241}
!238 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "natoms", arg: 1, scope: !234, file: !1, line: 79, type: !4)
!239 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mass", arg: 2, scope: !234, file: !1, line: 79, type: !205)
!240 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 3, scope: !234, file: !1, line: 79, type: !206)
!241 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xp", arg: 4, scope: !234, file: !1, line: 79, type: !206)
!242 = !DISubprogram(name: "rhodev_ind", scope: !1, file: !1, line: 84, type: !226, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, function: float (i32, i32*, float*, [3 x float]*, [3 x float]*)* @rhodev_ind, variables: !243)
!243 = !{!244, !245, !246, !247, !248}
!244 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nind", arg: 1, scope: !242, file: !1, line: 84, type: !4)
!245 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "index", arg: 2, scope: !242, file: !1, line: 84, type: !203)
!246 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mass", arg: 3, scope: !242, file: !1, line: 84, type: !205)
!247 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 4, scope: !242, file: !1, line: 84, type: !206)
!248 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xp", arg: 5, scope: !242, file: !1, line: 84, type: !206)
!249 = !DISubprogram(name: "rhodev", scope: !1, file: !1, line: 89, type: !235, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, function: float (i32, float*, [3 x float]*, [3 x float]*)* @rhodev, variables: !250)
!250 = !{!251, !252, !253, !254}
!251 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "natoms", arg: 1, scope: !249, file: !1, line: 89, type: !4)
!252 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mass", arg: 2, scope: !249, file: !1, line: 89, type: !205)
!253 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 3, scope: !249, file: !1, line: 89, type: !206)
!254 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xp", arg: 4, scope: !249, file: !1, line: 89, type: !206)
!255 = !DISubprogram(name: "calc_fit_R", scope: !1, file: !1, line: 94, type: !256, isLocal: false, isDefinition: true, scopeLine: 95, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, float*, [3 x float]*, [3 x float]*, [3 x float]*)* @calc_fit_R, variables: !259)
!256 = !DISubroutineType(types: !257)
!257 = !{null, !4, !205, !206, !206, !258}
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64, align: 64)
!259 = !{!260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !276, !277, !278, !282, !283, !284, !285, !286}
!260 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "natoms", arg: 1, scope: !255, file: !1, line: 94, type: !4)
!261 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "w_rls", arg: 2, scope: !255, file: !1, line: 94, type: !205)
!262 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xp", arg: 3, scope: !255, file: !1, line: 94, type: !206)
!263 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 4, scope: !255, file: !1, line: 94, type: !206)
!264 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "R", arg: 5, scope: !255, file: !1, line: 94, type: !258)
!265 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !255, file: !1, line: 96, type: !4)
!266 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !255, file: !1, line: 96, type: !4)
!267 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !255, file: !1, line: 96, type: !4)
!268 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !255, file: !1, line: 96, type: !4)
!269 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !255, file: !1, line: 96, type: !4)
!270 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !255, file: !1, line: 96, type: !4)
!271 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "irot", scope: !255, file: !1, line: 96, type: !4)
!272 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d", scope: !255, file: !1, line: 98, type: !273)
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 384, align: 64, elements: !274)
!274 = !{!275}
!275 = !DISubrange(count: 6)
!276 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xnr", scope: !255, file: !1, line: 98, type: !18)
!277 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xpc", scope: !255, file: !1, line: 98, type: !18)
!278 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vh", scope: !255, file: !1, line: 99, type: !279)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "matrix", file: !202, line: 103, baseType: !280)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, size: 288, align: 32, elements: !281)
!281 = !{!181, !181}
!282 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vk", scope: !255, file: !1, line: 99, type: !279)
!283 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "u", scope: !255, file: !1, line: 99, type: !279)
!284 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mn", scope: !255, file: !1, line: 100, type: !201)
!285 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "index", scope: !255, file: !1, line: 101, type: !4)
!286 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "max_d", scope: !255, file: !1, line: 102, type: !201)
!287 = !DISubprogram(name: "do_fit", scope: !1, file: !1, line: 187, type: !288, isLocal: false, isDefinition: true, scopeLine: 188, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, float*, [3 x float]*, [3 x float]*)* @do_fit, variables: !290)
!288 = !DISubroutineType(types: !289)
!289 = !{null, !4, !205, !206, !206}
!290 = !{!291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301}
!291 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "natoms", arg: 1, scope: !287, file: !1, line: 187, type: !4)
!292 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "w_rls", arg: 2, scope: !287, file: !1, line: 187, type: !205)
!293 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xp", arg: 3, scope: !287, file: !1, line: 187, type: !206)
!294 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 4, scope: !287, file: !1, line: 187, type: !206)
!295 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !287, file: !1, line: 189, type: !4)
!296 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !287, file: !1, line: 189, type: !4)
!297 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !287, file: !1, line: 189, type: !4)
!298 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !287, file: !1, line: 189, type: !4)
!299 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "c", scope: !287, file: !1, line: 189, type: !4)
!300 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "R", scope: !287, file: !1, line: 190, type: !279)
!301 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x_old", scope: !287, file: !1, line: 191, type: !207)
!302 = !DISubprogram(name: "reset_x", scope: !1, file: !1, line: 208, type: !303, isLocal: false, isDefinition: true, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i32*, i32, i32*, [3 x float]*, float*)* @reset_x, variables: !305)
!303 = !DISubroutineType(types: !304)
!304 = !{null, !4, !203, !4, !203, !206, !205}
!305 = !{!306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317}
!306 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ncm", arg: 1, scope: !302, file: !1, line: 208, type: !4)
!307 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ind_cm", arg: 2, scope: !302, file: !1, line: 208, type: !203)
!308 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nreset", arg: 3, scope: !302, file: !1, line: 209, type: !4)
!309 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ind_reset", arg: 4, scope: !302, file: !1, line: 209, type: !203)
!310 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 5, scope: !302, file: !1, line: 209, type: !206)
!311 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mass", arg: 6, scope: !302, file: !1, line: 209, type: !205)
!312 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !302, file: !1, line: 211, type: !4)
!313 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !302, file: !1, line: 211, type: !4)
!314 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ai", scope: !302, file: !1, line: 211, type: !4)
!315 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xcm", scope: !302, file: !1, line: 212, type: !207)
!316 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tm", scope: !302, file: !1, line: 213, type: !201)
!317 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mm", scope: !302, file: !1, line: 213, type: !201)
!318 = !DISubprogram(name: "sqr", scope: !319, file: !319, line: 197, type: !320, isLocal: true, isDefinition: true, scopeLine: 198, flags: DIFlagPrototyped, isOptimized: true, variables: !322)
!319 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/vec.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!320 = !DISubroutineType(types: !321)
!321 = !{!201, !201}
!322 = !{!323}
!323 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !318, file: !319, line: 197, type: !201)
!324 = !DISubprogram(name: "clear_mat", scope: !319, file: !319, line: 334, type: !325, isLocal: true, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, variables: !327)
!325 = !DISubroutineType(types: !326)
!326 = !{null, !258}
!327 = !{!328, !329}
!328 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !324, file: !319, line: 334, type: !258)
!329 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nul", scope: !324, file: !319, line: 336, type: !330)
!330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !201)
!331 = !DISubprogram(name: "oprod", scope: !319, file: !319, line: 417, type: !332, isLocal: true, isDefinition: true, scopeLine: 418, flags: DIFlagPrototyped, isOptimized: true, variables: !334)
!332 = !DISubroutineType(types: !333)
!333 = !{null, !205, !205, !205}
!334 = !{!335, !336, !337}
!335 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !331, file: !319, line: 417, type: !205)
!336 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !331, file: !319, line: 417, type: !205)
!337 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "c", arg: 3, scope: !331, file: !319, line: 417, type: !205)
!338 = !DISubprogram(name: "clear_rvec", scope: !319, file: !319, line: 316, type: !339, isLocal: true, isDefinition: true, scopeLine: 317, flags: DIFlagPrototyped, isOptimized: true, variables: !341)
!339 = !DISubroutineType(types: !340)
!340 = !{null, !205}
!341 = !{!342}
!342 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !338, file: !319, line: 316, type: !205)
!343 = !DISubprogram(name: "rvec_dec", scope: !319, file: !319, line: 257, type: !344, isLocal: true, isDefinition: true, scopeLine: 258, flags: DIFlagPrototyped, isOptimized: true, variables: !346)
!344 = !DISubroutineType(types: !345)
!345 = !{null, !205, !205}
!346 = !{!347, !348, !349, !350, !351}
!347 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !343, file: !319, line: 257, type: !205)
!348 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !343, file: !319, line: 257, type: !205)
!349 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !343, file: !319, line: 259, type: !201)
!350 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !343, file: !319, line: 259, type: !201)
!351 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "z", scope: !343, file: !319, line: 259, type: !201)
!352 = !{!353, !355}
!353 = !DIGlobalVariable(name: "omega", scope: !255, file: !1, line: 97, type: !354, isLocal: true, isDefinition: true, variable: double*** @calc_fit_R.omega)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64, align: 64)
!355 = !DIGlobalVariable(name: "om", scope: !255, file: !1, line: 97, type: !354, isLocal: true, isDefinition: true, variable: double*** @calc_fit_R.om)
!356 = !{i32 2, !"Dwarf Version", i32 2}
!357 = !{i32 2, !"Debug Info Version", i32 700000003}
!358 = !{i32 1, !"PIC Level", i32 2}
!359 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!360 = !DIExpression()
!361 = !DILocation(line: 204, column: 53, scope: !8)
!362 = !DILocation(line: 205, column: 16, scope: !8)
!363 = !DILocation(line: 205, column: 23, scope: !8)
!364 = !DILocation(line: 205, column: 26, scope: !8)
!365 = !DILocation(line: 205, column: 47, scope: !8)
!366 = !DILocation(line: 205, column: 5, scope: !8)
!367 = !DILocation(line: 207, column: 54, scope: !15)
!368 = !DILocation(line: 208, column: 16, scope: !15)
!369 = !DILocation(line: 208, column: 23, scope: !15)
!370 = !DILocation(line: 208, column: 26, scope: !15)
!371 = !DILocation(line: 208, column: 46, scope: !15)
!372 = !DILocation(line: 208, column: 5, scope: !15)
!373 = !DILocation(line: 210, column: 59, scope: !21)
!374 = !DILocation(line: 211, column: 16, scope: !21)
!375 = !DILocation(line: 211, column: 23, scope: !21)
!376 = !DILocation(line: 211, column: 26, scope: !21)
!377 = !DILocation(line: 211, column: 47, scope: !21)
!378 = !DILocation(line: 211, column: 5, scope: !21)
!379 = !DILocation(line: 213, column: 50, scope: !27)
!380 = !DILocation(line: 214, column: 12, scope: !27)
!381 = !DILocation(line: 214, column: 33, scope: !27)
!382 = !DILocation(line: 214, column: 5, scope: !27)
!383 = !DILocation(line: 216, column: 51, scope: !30)
!384 = !DILocation(line: 217, column: 12, scope: !30)
!385 = !DILocation(line: 217, column: 32, scope: !30)
!386 = !DILocation(line: 217, column: 5, scope: !30)
!387 = !DILocation(line: 219, column: 56, scope: !33)
!388 = !DILocation(line: 220, column: 12, scope: !33)
!389 = !DILocation(line: 220, column: 33, scope: !33)
!390 = !DILocation(line: 220, column: 5, scope: !33)
!391 = !DILocation(line: 222, column: 50, scope: !36)
!392 = !DILocation(line: 223, column: 16, scope: !36)
!393 = !DILocation(line: 223, column: 5, scope: !36)
!394 = !DILocation(line: 225, column: 51, scope: !39)
!395 = !DILocation(line: 226, column: 16, scope: !39)
!396 = !DILocation(line: 226, column: 5, scope: !39)
!397 = !DILocation(line: 228, column: 56, scope: !42)
!398 = !DILocation(line: 229, column: 16, scope: !42)
!399 = !DILocation(line: 229, column: 5, scope: !42)
!400 = !DILocation(line: 231, column: 52, scope: !45)
!401 = !DILocation(line: 232, column: 44, scope: !45)
!402 = !DILocation(line: 233, column: 13, scope: !45)
!403 = !DILocation(line: 234, column: 26, scope: !45)
!404 = !DILocation(line: 234, column: 5, scope: !45)
!405 = !DILocation(line: 236, column: 53, scope: !54)
!406 = !DILocation(line: 237, column: 51, scope: !54)
!407 = !DILocation(line: 238, column: 13, scope: !54)
!408 = !DILocation(line: 239, column: 26, scope: !54)
!409 = !DILocation(line: 239, column: 12, scope: !54)
!410 = !DILocation(line: 239, column: 5, scope: !54)
!411 = !DILocation(line: 242, column: 58, scope: !63)
!412 = !DILocation(line: 246, column: 7, scope: !63)
!413 = !DILocation(line: 248, column: 26, scope: !63)
!414 = !DILocation(line: 248, column: 33, scope: !63)
!415 = !DILocation(line: 248, column: 5, scope: !63)
!416 = !DILocation(line: 257, column: 53, scope: !76)
!417 = !DILocation(line: 204, column: 53, scope: !8, inlinedAt: !418)
!418 = distinct !DILocation(line: 258, column: 12, scope: !76)
!419 = !DILocation(line: 205, column: 16, scope: !8, inlinedAt: !418)
!420 = !DILocation(line: 205, column: 47, scope: !8, inlinedAt: !418)
!421 = !DILocation(line: 205, column: 23, scope: !8, inlinedAt: !418)
!422 = !DILocation(line: 258, column: 60, scope: !76)
!423 = !DILocation(line: 258, column: 36, scope: !76)
!424 = !DILocation(line: 258, column: 5, scope: !76)
!425 = !DILocation(line: 260, column: 54, scope: !79)
!426 = !DILocation(line: 207, column: 54, scope: !15, inlinedAt: !427)
!427 = distinct !DILocation(line: 261, column: 12, scope: !79)
!428 = !DILocation(line: 208, column: 16, scope: !15, inlinedAt: !427)
!429 = !DILocation(line: 208, column: 46, scope: !15, inlinedAt: !427)
!430 = !DILocation(line: 208, column: 23, scope: !15, inlinedAt: !427)
!431 = !DILocation(line: 261, column: 59, scope: !79)
!432 = !DILocation(line: 261, column: 36, scope: !79)
!433 = !DILocation(line: 261, column: 5, scope: !79)
!434 = !DILocation(line: 263, column: 59, scope: !82)
!435 = !DILocation(line: 210, column: 59, scope: !21, inlinedAt: !436)
!436 = distinct !DILocation(line: 264, column: 12, scope: !82)
!437 = !DILocation(line: 211, column: 16, scope: !21, inlinedAt: !436)
!438 = !DILocation(line: 211, column: 47, scope: !21, inlinedAt: !436)
!439 = !DILocation(line: 211, column: 23, scope: !21, inlinedAt: !436)
!440 = !DILocation(line: 264, column: 60, scope: !82)
!441 = !DILocation(line: 264, column: 36, scope: !82)
!442 = !DILocation(line: 264, column: 5, scope: !82)
!443 = !DILocation(line: 642, column: 45, scope: !85)
!444 = !DILocation(line: 642, column: 57, scope: !85)
!445 = !DILocation(line: 642, column: 72, scope: !85)
!446 = !DILocation(line: 643, column: 27, scope: !85)
!447 = !DILocation(line: 643, column: 37, scope: !85)
!448 = !DILocation(line: 644, column: 23, scope: !85)
!449 = !DILocation(line: 644, column: 13, scope: !85)
!450 = !{!451, !451, i64 0}
!451 = !{!"float", !452, i64 0}
!452 = !{!"omnipotent char", !453, i64 0}
!453 = !{!"Simple C/C++ TBAA"}
!454 = !DILocation(line: 644, column: 51, scope: !85)
!455 = !DILocation(line: 644, column: 41, scope: !85)
!456 = !DILocation(line: 645, column: 1, scope: !85)
!457 = !DILocation(line: 647, column: 45, scope: !99)
!458 = !DILocation(line: 647, column: 58, scope: !99)
!459 = !DILocation(line: 647, column: 74, scope: !99)
!460 = !DILocation(line: 648, column: 28, scope: !99)
!461 = !DILocation(line: 648, column: 38, scope: !99)
!462 = !DIExpression(DW_OP_bit_piece, 0, 64)
!463 = !DIExpression(DW_OP_bit_piece, 64, 64)
!464 = !DILocation(line: 649, column: 13, scope: !99)
!465 = !{!466, !466, i64 0}
!466 = !{!"double", !452, i64 0}
!467 = !DILocation(line: 649, column: 41, scope: !99)
!468 = !DILocation(line: 650, column: 1, scope: !99)
!469 = !DILocation(line: 652, column: 47, scope: !113)
!470 = !DILocation(line: 652, column: 59, scope: !113)
!471 = !DILocation(line: 652, column: 74, scope: !113)
!472 = !DILocation(line: 653, column: 27, scope: !113)
!473 = !DILocation(line: 653, column: 37, scope: !113)
!474 = !DILocation(line: 654, column: 23, scope: !113)
!475 = !DILocation(line: 654, column: 13, scope: !113)
!476 = !DILocation(line: 654, column: 51, scope: !113)
!477 = !DILocation(line: 654, column: 41, scope: !113)
!478 = !DILocation(line: 655, column: 1, scope: !113)
!479 = !DILocation(line: 657, column: 47, scope: !119)
!480 = !DILocation(line: 657, column: 60, scope: !119)
!481 = !DILocation(line: 657, column: 76, scope: !119)
!482 = !DILocation(line: 658, column: 28, scope: !119)
!483 = !DILocation(line: 658, column: 38, scope: !119)
!484 = !DILocation(line: 659, column: 13, scope: !119)
!485 = !DILocation(line: 659, column: 41, scope: !119)
!486 = !DILocation(line: 660, column: 1, scope: !119)
!487 = !DILocation(line: 348, column: 40, scope: !125)
!488 = !DILocation(line: 348, column: 50, scope: !125)
!489 = !DILocation(line: 349, column: 12, scope: !490)
!490 = distinct !DILexicalBlock(scope: !125, file: !126, line: 349, column: 6)
!491 = !DILocation(line: 349, column: 6, scope: !490)
!492 = !{!493, !495, i64 12}
!493 = !{!"__sFILE", !494, i64 0, !495, i64 8, !495, i64 12, !496, i64 16, !496, i64 18, !497, i64 24, !495, i64 40, !494, i64 48, !494, i64 56, !494, i64 64, !494, i64 72, !494, i64 80, !497, i64 88, !494, i64 104, !495, i64 112, !452, i64 116, !452, i64 119, !497, i64 120, !495, i64 136, !498, i64 144}
!494 = !{!"any pointer", !452, i64 0}
!495 = !{!"int", !452, i64 0}
!496 = !{!"short", !452, i64 0}
!497 = !{!"__sbuf", !494, i64 0, !495, i64 8}
!498 = !{!"long long", !452, i64 0}
!499 = !DILocation(line: 349, column: 15, scope: !490)
!500 = !DILocation(line: 349, column: 20, scope: !490)
!501 = !DILocation(line: 350, column: 10, scope: !490)
!502 = !DILocation(line: 349, column: 38, scope: !490)
!503 = !{!493, !495, i64 40}
!504 = !DILocation(line: 349, column: 31, scope: !490)
!505 = !DILocation(line: 349, column: 59, scope: !490)
!506 = !DILocation(line: 349, column: 47, scope: !490)
!507 = !DILocation(line: 350, column: 23, scope: !490)
!508 = !DILocation(line: 350, column: 16, scope: !490)
!509 = !DILocation(line: 350, column: 18, scope: !490)
!510 = !{!493, !494, i64 0}
!511 = !DILocation(line: 350, column: 21, scope: !490)
!512 = !{!452, !452, i64 0}
!513 = !DILocation(line: 350, column: 3, scope: !490)
!514 = !DILocation(line: 352, column: 11, scope: !490)
!515 = !DILocation(line: 352, column: 3, scope: !490)
!516 = !DILocation(line: 353, column: 1, scope: !125)
!517 = !DILocation(line: 114, column: 15, scope: !192)
!518 = !DILocation(line: 116, column: 20, scope: !192)
!519 = !DILocation(line: 116, column: 12, scope: !192)
!520 = !DILocation(line: 116, column: 57, scope: !192)
!521 = !DILocation(line: 116, column: 45, scope: !192)
!522 = !DILocation(line: 116, column: 5, scope: !192)
!523 = !DILocation(line: 43, column: 28, scope: !198)
!524 = !DILocation(line: 43, column: 37, scope: !198)
!525 = !DILocation(line: 43, column: 51, scope: !198)
!526 = !DILocation(line: 43, column: 62, scope: !198)
!527 = !DILocation(line: 44, column: 14, scope: !198)
!528 = !DILocation(line: 44, column: 23, scope: !198)
!529 = !DILocation(line: 47, column: 11, scope: !198)
!530 = !DILocation(line: 47, column: 23, scope: !198)
!531 = !DILocation(line: 47, column: 27, scope: !198)
!532 = !DILocation(line: 46, column: 10, scope: !198)
!533 = !DILocation(line: 52, column: 13, scope: !534)
!534 = distinct !DILexicalBlock(scope: !535, file: !1, line: 52, column: 3)
!535 = distinct !DILexicalBlock(scope: !198, file: !1, line: 52, column: 3)
!536 = !DILocation(line: 52, column: 3, scope: !535)
!537 = !DILocation(line: 53, column: 9, scope: !538)
!538 = distinct !DILexicalBlock(scope: !539, file: !1, line: 53, column: 9)
!539 = distinct !DILexicalBlock(scope: !534, file: !1, line: 52, column: 25)
!540 = !DILocation(line: 62, column: 11, scope: !541)
!541 = distinct !DILexicalBlock(scope: !542, file: !1, line: 62, column: 11)
!542 = distinct !DILexicalBlock(scope: !543, file: !1, line: 59, column: 27)
!543 = distinct !DILexicalBlock(scope: !544, file: !1, line: 59, column: 5)
!544 = distinct !DILexicalBlock(scope: !539, file: !1, line: 59, column: 5)
!545 = !DILocation(line: 53, column: 9, scope: !539)
!546 = !DILocation(line: 54, column: 11, scope: !538)
!547 = !{!495, !495, i64 0}
!548 = !DILocation(line: 46, column: 7, scope: !198)
!549 = !DILocation(line: 54, column: 7, scope: !538)
!550 = !DILocation(line: 57, column: 9, scope: !539)
!551 = !DILocation(line: 47, column: 8, scope: !198)
!552 = !DILocation(line: 46, column: 13, scope: !198)
!553 = !DILocation(line: 59, column: 5, scope: !544)
!554 = !DILocation(line: 60, column: 12, scope: !542)
!555 = !DILocation(line: 60, column: 22, scope: !542)
!556 = !DILocation(line: 60, column: 20, scope: !542)
!557 = !DILocation(line: 47, column: 19, scope: !198)
!558 = !DILocation(line: 197, column: 29, scope: !318, inlinedAt: !559)
!559 = distinct !DILocation(line: 61, column: 17, scope: !542)
!560 = !DILocation(line: 199, column: 12, scope: !318, inlinedAt: !559)
!561 = !DILocation(line: 61, column: 15, scope: !542)
!562 = !DILocation(line: 61, column: 10, scope: !542)
!563 = !DILocation(line: 62, column: 11, scope: !542)
!564 = !DILocation(line: 63, column: 15, scope: !565)
!565 = distinct !DILexicalBlock(scope: !541, file: !1, line: 62, column: 17)
!566 = !DILocation(line: 47, column: 15, scope: !198)
!567 = !DILocation(line: 197, column: 29, scope: !318, inlinedAt: !568)
!568 = distinct !DILocation(line: 64, column: 12, scope: !565)
!569 = !DILocation(line: 199, column: 12, scope: !318, inlinedAt: !568)
!570 = !DILocation(line: 64, column: 10, scope: !565)
!571 = !DILocation(line: 64, column: 5, scope: !565)
!572 = !DILocation(line: 65, column: 7, scope: !565)
!573 = !DILocation(line: 58, column: 8, scope: !539)
!574 = !DILocation(line: 68, column: 7, scope: !575)
!575 = distinct !DILexicalBlock(scope: !198, file: !1, line: 68, column: 7)
!576 = !DILocation(line: 68, column: 7, scope: !198)
!577 = !DILocation(line: 69, column: 21, scope: !575)
!578 = !DILocation(line: 69, column: 19, scope: !575)
!579 = !DILocation(line: 69, column: 14, scope: !575)
!580 = !DILocation(line: 69, column: 13, scope: !575)
!581 = !DILocation(line: 69, column: 12, scope: !575)
!582 = !DILocation(line: 69, column: 5, scope: !575)
!583 = !DILocation(line: 71, column: 19, scope: !575)
!584 = !DILocation(line: 71, column: 12, scope: !575)
!585 = !DILocation(line: 71, column: 5, scope: !575)
!586 = !DILocation(line: 72, column: 1, scope: !198)
!587 = !DILocation(line: 74, column: 21, scope: !225)
!588 = !DILocation(line: 74, column: 34, scope: !225)
!589 = !DILocation(line: 74, column: 47, scope: !225)
!590 = !DILocation(line: 74, column: 59, scope: !225)
!591 = !DILocation(line: 74, column: 68, scope: !225)
!592 = !DILocation(line: 76, column: 10, scope: !225)
!593 = !DILocation(line: 76, column: 3, scope: !225)
!594 = !DILocation(line: 79, column: 17, scope: !234)
!595 = !DILocation(line: 79, column: 29, scope: !234)
!596 = !DILocation(line: 79, column: 41, scope: !234)
!597 = !DILocation(line: 79, column: 50, scope: !234)
!598 = !DILocation(line: 81, column: 10, scope: !234)
!599 = !DILocation(line: 81, column: 3, scope: !234)
!600 = !DILocation(line: 84, column: 21, scope: !242)
!601 = !DILocation(line: 84, column: 34, scope: !242)
!602 = !DILocation(line: 84, column: 47, scope: !242)
!603 = !DILocation(line: 84, column: 59, scope: !242)
!604 = !DILocation(line: 84, column: 68, scope: !242)
!605 = !DILocation(line: 86, column: 10, scope: !242)
!606 = !DILocation(line: 86, column: 3, scope: !242)
!607 = !DILocation(line: 89, column: 17, scope: !249)
!608 = !DILocation(line: 89, column: 29, scope: !249)
!609 = !DILocation(line: 89, column: 41, scope: !249)
!610 = !DILocation(line: 89, column: 50, scope: !249)
!611 = !DILocation(line: 91, column: 10, scope: !249)
!612 = !DILocation(line: 91, column: 3, scope: !249)
!613 = !DILocation(line: 94, column: 21, scope: !255)
!614 = !DILocation(line: 94, column: 34, scope: !255)
!615 = !DILocation(line: 94, column: 46, scope: !255)
!616 = !DILocation(line: 94, column: 55, scope: !255)
!617 = !DILocation(line: 94, column: 64, scope: !255)
!618 = !DILocation(line: 98, column: 3, scope: !255)
!619 = !DILocation(line: 98, column: 10, scope: !255)
!620 = !DILocation(line: 99, column: 3, scope: !255)
!621 = !DILocation(line: 99, column: 10, scope: !255)
!622 = !DILocation(line: 99, column: 13, scope: !255)
!623 = !DILocation(line: 99, column: 16, scope: !255)
!624 = !DILocation(line: 104, column: 7, scope: !625)
!625 = distinct !DILexicalBlock(scope: !255, file: !1, line: 104, column: 7)
!626 = !{!494, !494, i64 0}
!627 = !DILocation(line: 104, column: 13, scope: !625)
!628 = !DILocation(line: 104, column: 7, scope: !255)
!629 = !DILocation(line: 116, column: 7, scope: !630)
!630 = distinct !DILexicalBlock(scope: !631, file: !1, line: 115, column: 28)
!631 = distinct !DILexicalBlock(scope: !632, file: !1, line: 115, column: 5)
!632 = distinct !DILexicalBlock(scope: !633, file: !1, line: 115, column: 5)
!633 = distinct !DILexicalBlock(scope: !634, file: !1, line: 113, column: 26)
!634 = distinct !DILexicalBlock(scope: !635, file: !1, line: 113, column: 3)
!635 = distinct !DILexicalBlock(scope: !255, file: !1, line: 113, column: 3)
!636 = !DILocation(line: 117, column: 7, scope: !630)
!637 = !DILocation(line: 113, column: 3, scope: !635)
!638 = !DILocation(line: 105, column: 5, scope: !639)
!639 = distinct !DILexicalBlock(scope: !625, file: !1, line: 104, column: 22)
!640 = !DILocation(line: 106, column: 5, scope: !639)
!641 = !DILocation(line: 96, column: 20, scope: !255)
!642 = !DILocation(line: 107, column: 5, scope: !643)
!643 = distinct !DILexicalBlock(scope: !639, file: !1, line: 107, column: 5)
!644 = !DILocation(line: 108, column: 7, scope: !645)
!645 = distinct !DILexicalBlock(scope: !646, file: !1, line: 107, column: 28)
!646 = distinct !DILexicalBlock(scope: !643, file: !1, line: 107, column: 5)
!647 = !DILocation(line: 109, column: 7, scope: !645)
!648 = !DILocation(line: 114, column: 5, scope: !633)
!649 = !DILocation(line: 114, column: 9, scope: !633)
!650 = !DILocation(line: 96, column: 16, scope: !255)
!651 = !DILocation(line: 115, column: 5, scope: !632)
!652 = !DILocation(line: 116, column: 18, scope: !630)
!653 = !DILocation(line: 117, column: 15, scope: !630)
!654 = !DILocation(line: 336, column: 14, scope: !324, inlinedAt: !655)
!655 = distinct !DILocation(line: 122, column: 3, scope: !255)
!656 = !DILocation(line: 338, column: 22, scope: !324, inlinedAt: !655)
!657 = !DILocation(line: 96, column: 14, scope: !255)
!658 = !DILocation(line: 123, column: 13, scope: !659)
!659 = distinct !DILexicalBlock(scope: !660, file: !1, line: 123, column: 3)
!660 = distinct !DILexicalBlock(scope: !255, file: !1, line: 123, column: 3)
!661 = !DILocation(line: 123, column: 3, scope: !660)
!662 = !DILocation(line: 124, column: 19, scope: !663)
!663 = distinct !DILexicalBlock(scope: !659, file: !1, line: 124, column: 9)
!664 = !DILocation(line: 100, column: 10, scope: !255)
!665 = !DILocation(line: 124, column: 14, scope: !663)
!666 = !DILocation(line: 124, column: 9, scope: !663)
!667 = !DILocation(line: 124, column: 29, scope: !663)
!668 = !DILocation(line: 124, column: 9, scope: !659)
!669 = !DILocation(line: 126, column: 6, scope: !670)
!670 = distinct !DILexicalBlock(scope: !671, file: !1, line: 125, column: 30)
!671 = distinct !DILexicalBlock(scope: !672, file: !1, line: 125, column: 7)
!672 = distinct !DILexicalBlock(scope: !663, file: !1, line: 125, column: 7)
!673 = !DILocation(line: 98, column: 23, scope: !255)
!674 = !DILocation(line: 96, column: 12, scope: !255)
!675 = !DILocation(line: 127, column: 2, scope: !676)
!676 = distinct !DILexicalBlock(scope: !670, file: !1, line: 127, column: 2)
!677 = !DILocation(line: 128, column: 8, scope: !678)
!678 = distinct !DILexicalBlock(scope: !679, file: !1, line: 127, column: 25)
!679 = distinct !DILexicalBlock(scope: !676, file: !1, line: 127, column: 2)
!680 = !DILocation(line: 98, column: 19, scope: !255)
!681 = !DILocation(line: 129, column: 15, scope: !678)
!682 = !DILocation(line: 129, column: 19, scope: !678)
!683 = !DILocation(line: 129, column: 4, scope: !678)
!684 = !DILocation(line: 129, column: 11, scope: !678)
!685 = !DILocation(line: 125, column: 7, scope: !672)
!686 = !DILocation(line: 137, column: 12, scope: !687)
!687 = distinct !DILexicalBlock(scope: !688, file: !1, line: 137, column: 11)
!688 = distinct !DILexicalBlock(scope: !689, file: !1, line: 136, column: 5)
!689 = distinct !DILexicalBlock(scope: !690, file: !1, line: 136, column: 5)
!690 = distinct !DILexicalBlock(scope: !691, file: !1, line: 135, column: 3)
!691 = distinct !DILexicalBlock(scope: !255, file: !1, line: 135, column: 3)
!692 = !DILocation(line: 138, column: 24, scope: !693)
!693 = distinct !DILexicalBlock(scope: !687, file: !1, line: 137, column: 28)
!694 = !DILocation(line: 138, column: 9, scope: !693)
!695 = !DILocation(line: 136, column: 5, scope: !689)
!696 = !DILocation(line: 137, column: 22, scope: !687)
!697 = !DILocation(line: 137, column: 18, scope: !687)
!698 = !DILocation(line: 138, column: 21, scope: !693)
!699 = !DILocation(line: 138, column: 20, scope: !693)
!700 = !DILocation(line: 139, column: 9, scope: !693)
!701 = !DILocation(line: 139, column: 20, scope: !693)
!702 = !DILocation(line: 140, column: 7, scope: !693)
!703 = !DILocation(line: 141, column: 9, scope: !704)
!704 = distinct !DILexicalBlock(scope: !687, file: !1, line: 140, column: 14)
!705 = !DILocation(line: 141, column: 20, scope: !704)
!706 = !DILocation(line: 142, column: 9, scope: !704)
!707 = !DILocation(line: 142, column: 20, scope: !704)
!708 = !DILocation(line: 135, column: 3, scope: !691)
!709 = !DILocation(line: 146, column: 22, scope: !255)
!710 = !DILocation(line: 96, column: 22, scope: !255)
!711 = !DILocation(line: 146, column: 3, scope: !255)
!712 = !DILocation(line: 154, column: 7, scope: !713)
!713 = distinct !DILexicalBlock(scope: !255, file: !1, line: 154, column: 7)
!714 = !DILocation(line: 154, column: 20, scope: !713)
!715 = !DILocation(line: 154, column: 13, scope: !713)
!716 = !DILocation(line: 154, column: 25, scope: !713)
!717 = !DILocation(line: 168, column: 24, scope: !718)
!718 = distinct !DILexicalBlock(scope: !719, file: !1, line: 167, column: 26)
!719 = distinct !DILexicalBlock(scope: !720, file: !1, line: 167, column: 5)
!720 = distinct !DILexicalBlock(scope: !721, file: !1, line: 167, column: 5)
!721 = distinct !DILexicalBlock(scope: !722, file: !1, line: 159, column: 22)
!722 = distinct !DILexicalBlock(scope: !723, file: !1, line: 159, column: 3)
!723 = distinct !DILexicalBlock(scope: !255, file: !1, line: 159, column: 3)
!724 = !DILocation(line: 159, column: 3, scope: !723)
!725 = !DILocation(line: 161, column: 5, scope: !726)
!726 = distinct !DILexicalBlock(scope: !721, file: !1, line: 161, column: 5)
!727 = !DILocation(line: 162, column: 11, scope: !728)
!728 = distinct !DILexicalBlock(scope: !729, file: !1, line: 162, column: 11)
!729 = distinct !DILexicalBlock(scope: !726, file: !1, line: 161, column: 5)
!730 = !DILocation(line: 162, column: 16, scope: !728)
!731 = !DILocation(line: 162, column: 15, scope: !728)
!732 = !DILocation(line: 162, column: 11, scope: !729)
!733 = !DILocation(line: 163, column: 15, scope: !734)
!734 = distinct !DILexicalBlock(scope: !728, file: !1, line: 162, column: 23)
!735 = !DILocation(line: 102, column: 10, scope: !255)
!736 = !DILocation(line: 165, column: 7, scope: !734)
!737 = !DILocation(line: 166, column: 5, scope: !721)
!738 = !DILocation(line: 166, column: 13, scope: !721)
!739 = !DILocation(line: 167, column: 5, scope: !720)
!740 = !DILocation(line: 168, column: 23, scope: !718)
!741 = !DILocation(line: 168, column: 16, scope: !718)
!742 = !DILocation(line: 168, column: 7, scope: !718)
!743 = !DILocation(line: 168, column: 15, scope: !718)
!744 = !DILocation(line: 169, column: 28, scope: !718)
!745 = !DILocation(line: 169, column: 24, scope: !718)
!746 = !DILocation(line: 169, column: 23, scope: !718)
!747 = !DILocation(line: 169, column: 16, scope: !718)
!748 = !DILocation(line: 169, column: 7, scope: !718)
!749 = !DILocation(line: 169, column: 15, scope: !718)
!750 = !DILocation(line: 176, column: 9, scope: !255)
!751 = !DILocation(line: 176, column: 15, scope: !255)
!752 = !DILocation(line: 176, column: 21, scope: !255)
!753 = !DILocation(line: 417, column: 31, scope: !331, inlinedAt: !754)
!754 = distinct !DILocation(line: 176, column: 3, scope: !255)
!755 = !DILocation(line: 417, column: 38, scope: !331, inlinedAt: !754)
!756 = !DILocation(line: 417, column: 45, scope: !331, inlinedAt: !754)
!757 = !DILocation(line: 419, column: 9, scope: !331, inlinedAt: !754)
!758 = !DILocation(line: 419, column: 15, scope: !331, inlinedAt: !754)
!759 = !DILocation(line: 419, column: 14, scope: !331, inlinedAt: !754)
!760 = !DILocation(line: 419, column: 21, scope: !331, inlinedAt: !754)
!761 = !DILocation(line: 419, column: 27, scope: !331, inlinedAt: !754)
!762 = !DILocation(line: 419, column: 26, scope: !331, inlinedAt: !754)
!763 = !DILocation(line: 419, column: 20, scope: !331, inlinedAt: !754)
!764 = !DILocation(line: 419, column: 8, scope: !331, inlinedAt: !754)
!765 = !DILocation(line: 420, column: 15, scope: !331, inlinedAt: !754)
!766 = !DILocation(line: 420, column: 14, scope: !331, inlinedAt: !754)
!767 = !DILocation(line: 420, column: 21, scope: !331, inlinedAt: !754)
!768 = !DILocation(line: 420, column: 26, scope: !331, inlinedAt: !754)
!769 = !DILocation(line: 420, column: 20, scope: !331, inlinedAt: !754)
!770 = !DILocation(line: 420, column: 3, scope: !331, inlinedAt: !754)
!771 = !DILocation(line: 420, column: 8, scope: !331, inlinedAt: !754)
!772 = !DILocation(line: 421, column: 14, scope: !331, inlinedAt: !754)
!773 = !DILocation(line: 421, column: 26, scope: !331, inlinedAt: !754)
!774 = !DILocation(line: 421, column: 20, scope: !331, inlinedAt: !754)
!775 = !DILocation(line: 421, column: 3, scope: !331, inlinedAt: !754)
!776 = !DILocation(line: 421, column: 8, scope: !331, inlinedAt: !754)
!777 = !DILocation(line: 177, column: 9, scope: !255)
!778 = !DILocation(line: 177, column: 15, scope: !255)
!779 = !DILocation(line: 177, column: 21, scope: !255)
!780 = !DILocation(line: 417, column: 31, scope: !331, inlinedAt: !781)
!781 = distinct !DILocation(line: 177, column: 3, scope: !255)
!782 = !DILocation(line: 417, column: 38, scope: !331, inlinedAt: !781)
!783 = !DILocation(line: 417, column: 45, scope: !331, inlinedAt: !781)
!784 = !DILocation(line: 419, column: 9, scope: !331, inlinedAt: !781)
!785 = !DILocation(line: 419, column: 15, scope: !331, inlinedAt: !781)
!786 = !DILocation(line: 419, column: 14, scope: !331, inlinedAt: !781)
!787 = !DILocation(line: 419, column: 21, scope: !331, inlinedAt: !781)
!788 = !DILocation(line: 419, column: 27, scope: !331, inlinedAt: !781)
!789 = !DILocation(line: 419, column: 26, scope: !331, inlinedAt: !781)
!790 = !DILocation(line: 419, column: 20, scope: !331, inlinedAt: !781)
!791 = !DILocation(line: 419, column: 8, scope: !331, inlinedAt: !781)
!792 = !DILocation(line: 420, column: 15, scope: !331, inlinedAt: !781)
!793 = !DILocation(line: 420, column: 14, scope: !331, inlinedAt: !781)
!794 = !DILocation(line: 420, column: 21, scope: !331, inlinedAt: !781)
!795 = !DILocation(line: 420, column: 26, scope: !331, inlinedAt: !781)
!796 = !DILocation(line: 420, column: 20, scope: !331, inlinedAt: !781)
!797 = !DILocation(line: 420, column: 3, scope: !331, inlinedAt: !781)
!798 = !DILocation(line: 420, column: 8, scope: !331, inlinedAt: !781)
!799 = !DILocation(line: 421, column: 14, scope: !331, inlinedAt: !781)
!800 = !DILocation(line: 421, column: 26, scope: !331, inlinedAt: !781)
!801 = !DILocation(line: 421, column: 20, scope: !331, inlinedAt: !781)
!802 = !DILocation(line: 421, column: 3, scope: !331, inlinedAt: !781)
!803 = !DILocation(line: 421, column: 8, scope: !331, inlinedAt: !781)
!804 = !DILocation(line: 180, column: 3, scope: !805)
!805 = distinct !DILexicalBlock(scope: !255, file: !1, line: 180, column: 3)
!806 = !DILocation(line: 181, column: 5, scope: !807)
!807 = distinct !DILexicalBlock(scope: !808, file: !1, line: 181, column: 5)
!808 = distinct !DILexicalBlock(scope: !805, file: !1, line: 180, column: 3)
!809 = !DILocation(line: 182, column: 26, scope: !810)
!810 = distinct !DILexicalBlock(scope: !807, file: !1, line: 181, column: 5)
!811 = !DILocation(line: 182, column: 25, scope: !810)
!812 = !DILocation(line: 183, column: 19, scope: !810)
!813 = !DILocation(line: 183, column: 18, scope: !810)
!814 = !DILocation(line: 182, column: 35, scope: !810)
!815 = !DILocation(line: 184, column: 19, scope: !810)
!816 = !DILocation(line: 184, column: 18, scope: !810)
!817 = !DILocation(line: 183, column: 28, scope: !810)
!818 = !DILocation(line: 182, column: 7, scope: !810)
!819 = !DILocation(line: 182, column: 15, scope: !810)
!820 = !DILocation(line: 182, column: 17, scope: !810)
!821 = !DILocation(line: 183, column: 10, scope: !810)
!822 = !DILocation(line: 184, column: 10, scope: !810)
!823 = !DILocation(line: 185, column: 1, scope: !255)
!824 = !DILocation(line: 187, column: 17, scope: !287)
!825 = !DILocation(line: 187, column: 30, scope: !287)
!826 = !DILocation(line: 187, column: 42, scope: !287)
!827 = !DILocation(line: 187, column: 51, scope: !287)
!828 = !DILocation(line: 190, column: 3, scope: !287)
!829 = !DILocation(line: 190, column: 10, scope: !287)
!830 = !DILocation(line: 191, column: 10, scope: !287)
!831 = !DILocation(line: 194, column: 32, scope: !287)
!832 = !DILocation(line: 194, column: 3, scope: !287)
!833 = !DILocation(line: 189, column: 12, scope: !287)
!834 = !DILocation(line: 197, column: 13, scope: !835)
!835 = distinct !DILexicalBlock(scope: !836, file: !1, line: 197, column: 3)
!836 = distinct !DILexicalBlock(scope: !287, file: !1, line: 197, column: 3)
!837 = !DILocation(line: 197, column: 3, scope: !836)
!838 = !DILocation(line: 199, column: 15, scope: !839)
!839 = distinct !DILexicalBlock(scope: !840, file: !1, line: 198, column: 5)
!840 = distinct !DILexicalBlock(scope: !841, file: !1, line: 198, column: 5)
!841 = distinct !DILexicalBlock(scope: !835, file: !1, line: 197, column: 27)
!842 = !DILocation(line: 200, column: 5, scope: !843)
!843 = distinct !DILexicalBlock(scope: !841, file: !1, line: 200, column: 5)
!844 = !DILocation(line: 201, column: 7, scope: !845)
!845 = distinct !DILexicalBlock(scope: !846, file: !1, line: 200, column: 26)
!846 = distinct !DILexicalBlock(scope: !843, file: !1, line: 200, column: 5)
!847 = !DILocation(line: 201, column: 14, scope: !845)
!848 = !DILocation(line: 189, column: 18, scope: !287)
!849 = !DILocation(line: 202, column: 7, scope: !850)
!850 = distinct !DILexicalBlock(scope: !845, file: !1, line: 202, column: 7)
!851 = !DILocation(line: 203, column: 18, scope: !852)
!852 = distinct !DILexicalBlock(scope: !850, file: !1, line: 202, column: 7)
!853 = !DILocation(line: 203, column: 26, scope: !852)
!854 = !DILocation(line: 203, column: 25, scope: !852)
!855 = !DILocation(line: 203, column: 16, scope: !852)
!856 = !DILocation(line: 206, column: 1, scope: !287)
!857 = !DILocation(line: 208, column: 18, scope: !302)
!858 = !DILocation(line: 208, column: 30, scope: !302)
!859 = !DILocation(line: 209, column: 11, scope: !302)
!860 = !DILocation(line: 209, column: 27, scope: !302)
!861 = !DILocation(line: 209, column: 42, scope: !302)
!862 = !DILocation(line: 209, column: 51, scope: !302)
!863 = !DILocation(line: 212, column: 8, scope: !302)
!864 = !DILocation(line: 213, column: 8, scope: !302)
!865 = !DILocation(line: 216, column: 14, scope: !302)
!866 = !DILocation(line: 316, column: 36, scope: !338, inlinedAt: !867)
!867 = distinct !DILocation(line: 216, column: 3, scope: !302)
!868 = !DILocation(line: 321, column: 8, scope: !338, inlinedAt: !867)
!869 = !DILocation(line: 322, column: 3, scope: !338, inlinedAt: !867)
!870 = !DILocation(line: 322, column: 8, scope: !338, inlinedAt: !867)
!871 = !DILocation(line: 323, column: 3, scope: !338, inlinedAt: !867)
!872 = !DILocation(line: 323, column: 8, scope: !338, inlinedAt: !867)
!873 = !DILocation(line: 211, column: 8, scope: !302)
!874 = !DILocation(line: 217, column: 13, scope: !875)
!875 = distinct !DILexicalBlock(scope: !876, file: !1, line: 217, column: 3)
!876 = distinct !DILexicalBlock(scope: !302, file: !1, line: 217, column: 3)
!877 = !DILocation(line: 217, column: 3, scope: !876)
!878 = !DILocation(line: 224, column: 3, scope: !879)
!879 = distinct !DILexicalBlock(scope: !302, file: !1, line: 224, column: 3)
!880 = !DILocation(line: 218, column: 8, scope: !881)
!881 = distinct !DILexicalBlock(scope: !875, file: !1, line: 217, column: 24)
!882 = !DILocation(line: 211, column: 12, scope: !302)
!883 = !DILocation(line: 219, column: 8, scope: !881)
!884 = !DILocation(line: 213, column: 11, scope: !302)
!885 = !DILocation(line: 211, column: 10, scope: !302)
!886 = !DILocation(line: 220, column: 5, scope: !887)
!887 = distinct !DILexicalBlock(scope: !881, file: !1, line: 220, column: 5)
!888 = !DILocation(line: 221, column: 18, scope: !889)
!889 = distinct !DILexicalBlock(scope: !887, file: !1, line: 220, column: 5)
!890 = !DILocation(line: 221, column: 17, scope: !889)
!891 = !DILocation(line: 221, column: 7, scope: !889)
!892 = !DILocation(line: 221, column: 13, scope: !889)
!893 = !DILocation(line: 222, column: 7, scope: !881)
!894 = !DILocation(line: 225, column: 5, scope: !895)
!895 = distinct !DILexicalBlock(scope: !879, file: !1, line: 224, column: 3)
!896 = !DILocation(line: 225, column: 11, scope: !895)
!897 = !DILocation(line: 227, column: 7, scope: !898)
!898 = distinct !DILexicalBlock(scope: !302, file: !1, line: 227, column: 7)
!899 = !DILocation(line: 231, column: 15, scope: !900)
!900 = distinct !DILexicalBlock(scope: !901, file: !1, line: 231, column: 5)
!901 = distinct !DILexicalBlock(scope: !898, file: !1, line: 231, column: 5)
!902 = !DILocation(line: 227, column: 7, scope: !302)
!903 = !DILocation(line: 228, column: 5, scope: !904)
!904 = distinct !DILexicalBlock(scope: !898, file: !1, line: 228, column: 5)
!905 = !DILocation(line: 261, column: 11, scope: !343, inlinedAt: !906)
!906 = distinct !DILocation(line: 229, column: 7, scope: !907)
!907 = distinct !DILexicalBlock(scope: !904, file: !1, line: 228, column: 5)
!908 = !DILocation(line: 262, column: 11, scope: !343, inlinedAt: !906)
!909 = !DILocation(line: 263, column: 11, scope: !343, inlinedAt: !906)
!910 = !DILocation(line: 231, column: 5, scope: !901)
!911 = !DILocation(line: 261, column: 11, scope: !343, inlinedAt: !912)
!912 = distinct !DILocation(line: 232, column: 7, scope: !900)
!913 = !DILocation(line: 262, column: 11, scope: !343, inlinedAt: !912)
!914 = !DILocation(line: 263, column: 11, scope: !343, inlinedAt: !912)
!915 = !DILocation(line: 229, column: 18, scope: !907)
!916 = !DILocation(line: 229, column: 16, scope: !907)
!917 = !DILocation(line: 257, column: 34, scope: !343, inlinedAt: !906)
!918 = !DILocation(line: 257, column: 41, scope: !343, inlinedAt: !906)
!919 = !DILocation(line: 261, column: 5, scope: !343, inlinedAt: !906)
!920 = !DILocation(line: 261, column: 10, scope: !343, inlinedAt: !906)
!921 = !DILocation(line: 259, column: 8, scope: !343, inlinedAt: !906)
!922 = !DILocation(line: 262, column: 5, scope: !343, inlinedAt: !906)
!923 = !DILocation(line: 262, column: 10, scope: !343, inlinedAt: !906)
!924 = !DILocation(line: 259, column: 10, scope: !343, inlinedAt: !906)
!925 = !DILocation(line: 263, column: 5, scope: !343, inlinedAt: !906)
!926 = !DILocation(line: 263, column: 10, scope: !343, inlinedAt: !906)
!927 = !DILocation(line: 259, column: 12, scope: !343, inlinedAt: !906)
!928 = !DILocation(line: 265, column: 8, scope: !343, inlinedAt: !906)
!929 = !DILocation(line: 266, column: 8, scope: !343, inlinedAt: !906)
!930 = !DILocation(line: 267, column: 8, scope: !343, inlinedAt: !906)
!931 = !DILocation(line: 232, column: 16, scope: !900)
!932 = !DILocation(line: 257, column: 34, scope: !343, inlinedAt: !912)
!933 = !DILocation(line: 257, column: 41, scope: !343, inlinedAt: !912)
!934 = !DILocation(line: 261, column: 5, scope: !343, inlinedAt: !912)
!935 = !DILocation(line: 261, column: 10, scope: !343, inlinedAt: !912)
!936 = !DILocation(line: 259, column: 8, scope: !343, inlinedAt: !912)
!937 = !DILocation(line: 262, column: 5, scope: !343, inlinedAt: !912)
!938 = !DILocation(line: 262, column: 10, scope: !343, inlinedAt: !912)
!939 = !DILocation(line: 259, column: 10, scope: !343, inlinedAt: !912)
!940 = !DILocation(line: 263, column: 5, scope: !343, inlinedAt: !912)
!941 = !DILocation(line: 263, column: 10, scope: !343, inlinedAt: !912)
!942 = !DILocation(line: 259, column: 12, scope: !343, inlinedAt: !912)
!943 = !DILocation(line: 265, column: 8, scope: !343, inlinedAt: !912)
!944 = !DILocation(line: 266, column: 8, scope: !343, inlinedAt: !912)
!945 = !DILocation(line: 267, column: 8, scope: !343, inlinedAt: !912)
!946 = !DILocation(line: 233, column: 1, scope: !302)
