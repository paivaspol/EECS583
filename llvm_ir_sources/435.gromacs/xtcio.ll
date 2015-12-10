; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/xtcio.c'
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
%struct.XDR = type { i32, %struct.xdr_ops*, i8*, i8*, i8*, i32 }
%struct.xdr_ops = type { i32 (%struct.XDR*, i64*)*, i32 (%struct.XDR*, i64*)*, i32 (%struct.XDR*, i8*, i32)*, i32 (%struct.XDR*, i8*, i32)*, i32 (%struct.XDR*)*, i32 (%struct.XDR*, i32)*, i32* (%struct.XDR*, i32)*, void (%struct.XDR*)*, i32 (%struct.XDR*, i32*)*, i32 (%struct.XDR*, i32*)* }

@debug = external global %struct.__sFILE*
@.str = private unnamed_addr constant [62 x i8] c"\0AXTC error: read/write of %s failed, source file %s, line %d\0A\00", align 1
@.str1 = private unnamed_addr constant [54 x i8] c"XTC read/write of %s failed, source file %s, line %d\0A\00", align 1
@.str2 = private unnamed_addr constant [3 x i8] c"*x\00", align 1
@.str3 = private unnamed_addr constant [65 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/xtcio.c\00", align 1
@.str4 = private unnamed_addr constant [50 x i8] c"Frame contains more atoms (%d) than expected (%d)\00", align 1
@.str5 = private unnamed_addr constant [7 x i8] c"natoms\00", align 1
@.str6 = private unnamed_addr constant [5 x i8] c"step\00", align 1
@.str7 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str8 = private unnamed_addr constant [4 x i8] c"box\00", align 1
@.str9 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str10 = private unnamed_addr constant [55 x i8] c"Magic Number Error in XTC file (read %d, should be %d)\00", align 1

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define i32 @__sputc(i32 %_c, %struct.__sFILE* %_p) #0 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !79, metadata !363), !dbg !364
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %_p, i64 0, metadata !80, metadata !363), !dbg !365
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2, !dbg !366
  %2 = load i32* %1, align 4, !dbg !368, !tbaa !369
  %3 = add nsw i32 %2, -1, !dbg !368
  store i32 %3, i32* %1, align 4, !dbg !368, !tbaa !369
  %4 = icmp sgt i32 %2, 0, !dbg !378
  br i1 %4, label %._crit_edge, label %5, !dbg !379

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255, !dbg !380
  br label %10, !dbg !379

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6, !dbg !381
  %7 = load i32* %6, align 4, !dbg !381, !tbaa !382
  %8 = icmp sle i32 %2, %7, !dbg !383
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10, !dbg !384
  %or.cond = or i1 %9, %8, !dbg !385
  br i1 %or.cond, label %15, label %10, !dbg !385

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ], !dbg !380
  %11 = trunc i32 %_c to i8, !dbg !386
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0, !dbg !387
  %13 = load i8** %12, align 8, !dbg !388, !tbaa !389
  %14 = getelementptr inbounds i8* %13, i64 1, !dbg !388
  store i8* %14, i8** %12, align 8, !dbg !388, !tbaa !389
  store i8 %11, i8* %13, align 1, !dbg !390, !tbaa !391
  br label %17, !dbg !392

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #6, !dbg !393
  br label %17, !dbg !394

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0, !dbg !395
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #2

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #3 {
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !86, metadata !363), !dbg !396
  %1 = icmp sgt i32 %__signo, 32, !dbg !397
  br i1 %1, label %5, label %2, !dbg !398

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !399
  %4 = shl i32 1, %3, !dbg !400
  br label %5, !dbg !398

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !398
  ret i32 %6, !dbg !401
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinitef(float %__x) #3 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !93, metadata !363), !dbg !402
  %1 = fcmp ord float %__x, 0.000000e+00, !dbg !403
  br i1 %1, label %2, label %5, !dbg !404

; <label>:2                                       ; preds = %0
  %3 = tail call float @llvm.fabs.f32(float %__x) #7, !dbg !405
  %4 = fcmp une float %3, 0x7FF0000000000000, !dbg !406
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32, !dbg !404
  ret i32 %7, !dbg !407
}

; Function Attrs: nounwind readnone
declare float @llvm.fabs.f32(float) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinited(double %__x) #3 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !99, metadata !363), !dbg !408
  %1 = fcmp ord double %__x, 0.000000e+00, !dbg !409
  br i1 %1, label %2, label %5, !dbg !410

; <label>:2                                       ; preds = %0
  %3 = tail call double @llvm.fabs.f64(double %__x) #7, !dbg !411
  %4 = fcmp une double %3, 0x7FF0000000000000, !dbg !412
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32, !dbg !410
  ret i32 %7, !dbg !413
}

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinitel(x86_fp80 %__x) #3 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !105, metadata !363), !dbg !414
  %1 = fcmp ord x86_fp80 %__x, 0xK00000000000000000000, !dbg !415
  br i1 %1, label %2, label %5, !dbg !416

; <label>:2                                       ; preds = %0
  %3 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #7, !dbg !417
  %4 = fcmp une x86_fp80 %3, 0xK7FFF8000000000000000, !dbg !418
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32, !dbg !416
  ret i32 %7, !dbg !419
}

; Function Attrs: nounwind readnone
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinff(float %__x) #3 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !108, metadata !363), !dbg !420
  %1 = tail call float @llvm.fabs.f32(float %__x) #7, !dbg !421
  %2 = fcmp oeq float %1, 0x7FF0000000000000, !dbg !422
  %3 = zext i1 %2 to i32, !dbg !422
  ret i32 %3, !dbg !423
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfd(double %__x) #3 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !111, metadata !363), !dbg !424
  %1 = tail call double @llvm.fabs.f64(double %__x) #7, !dbg !425
  %2 = fcmp oeq double %1, 0x7FF0000000000000, !dbg !426
  %3 = zext i1 %2 to i32, !dbg !426
  ret i32 %3, !dbg !427
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfl(x86_fp80 %__x) #3 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !114, metadata !363), !dbg !428
  %1 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #7, !dbg !429
  %2 = fcmp oeq x86_fp80 %1, 0xK7FFF8000000000000000, !dbg !430
  %3 = zext i1 %2 to i32, !dbg !430
  ret i32 %3, !dbg !431
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnanf(float %__x) #3 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !117, metadata !363), !dbg !432
  %1 = fcmp uno float %__x, 0.000000e+00, !dbg !433
  %2 = zext i1 %1 to i32, !dbg !433
  ret i32 %2, !dbg !434
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnand(double %__x) #3 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !120, metadata !363), !dbg !435
  %1 = fcmp uno double %__x, 0.000000e+00, !dbg !436
  %2 = zext i1 %1 to i32, !dbg !436
  ret i32 %2, !dbg !437
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnanl(x86_fp80 %__x) #3 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !123, metadata !363), !dbg !438
  %1 = fcmp uno x86_fp80 %__x, 0xK00000000000000000000, !dbg !439
  %2 = zext i1 %1 to i32, !dbg !439
  ret i32 %2, !dbg !440
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitf(float %__x) #3 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !126, metadata !363), !dbg !441
  tail call void @llvm.dbg.declare(metadata %union.anon* undef, metadata !127, metadata !363), !dbg !442
  %1 = bitcast float %__x to i32, !dbg !443
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !127, metadata !363), !dbg !442
  %2 = lshr i32 %1, 31, !dbg !444
  ret i32 %2, !dbg !445
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitd(double %__x) #3 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !135, metadata !363), !dbg !446
  tail call void @llvm.dbg.declare(metadata %union.anon.0* undef, metadata !136, metadata !363), !dbg !447
  %1 = bitcast double %__x to i64, !dbg !448
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !136, metadata !363), !dbg !447
  %2 = lshr i64 %1, 63, !dbg !449
  %3 = trunc i64 %2 to i32, !dbg !450
  ret i32 %3, !dbg !451
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitl(x86_fp80 %__x) #3 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !144, metadata !363), !dbg !452
  tail call void @llvm.dbg.declare(metadata %union.anon.1* undef, metadata !145, metadata !363), !dbg !453
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !145, metadata !363), !dbg !453
  %1 = bitcast x86_fp80 %__x to i80, !dbg !454
  %2 = lshr i80 %1, 79, !dbg !454
  %3 = trunc i80 %2 to i32, !dbg !455
  ret i32 %3, !dbg !456
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormalf(float %__x) #3 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !157, metadata !363), !dbg !457
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !93, metadata !363) #8, !dbg !458
  %1 = fcmp ord float %__x, 0.000000e+00, !dbg !460
  %2 = tail call float @llvm.fabs.f32(float %__x) #1
  %3 = fcmp une float %2, 0x7FF0000000000000, !dbg !461
  %or.cond = and i1 %1, %3, !dbg !462
  br i1 %or.cond, label %4, label %.critedge, !dbg !462

; <label>:4                                       ; preds = %0
  %5 = fcmp oge float %2, 0x3810000000000000, !dbg !463
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32, !dbg !464
  ret i32 %7, !dbg !465
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormald(double %__x) #3 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !160, metadata !363), !dbg !466
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !99, metadata !363) #8, !dbg !467
  %1 = fcmp ord double %__x, 0.000000e+00, !dbg !469
  %2 = tail call double @llvm.fabs.f64(double %__x) #1
  %3 = fcmp une double %2, 0x7FF0000000000000, !dbg !470
  %or.cond = and i1 %1, %3, !dbg !471
  br i1 %or.cond, label %4, label %.critedge, !dbg !471

; <label>:4                                       ; preds = %0
  %5 = fcmp oge double %2, 0x10000000000000, !dbg !472
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32, !dbg !473
  ret i32 %7, !dbg !474
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormall(x86_fp80 %__x) #3 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !163, metadata !363), !dbg !475
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !105, metadata !363) #8, !dbg !476
  %1 = fcmp ord x86_fp80 %__x, 0xK00000000000000000000, !dbg !478
  %2 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #1
  %3 = fcmp une x86_fp80 %2, 0xK7FFF8000000000000000, !dbg !479
  %or.cond = and i1 %1, %3, !dbg !480
  br i1 %or.cond, label %4, label %.critedge, !dbg !480

; <label>:4                                       ; preds = %0
  %5 = fcmp oge x86_fp80 %2, 0xK00018000000000000000, !dbg !481
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32, !dbg !482
  ret i32 %7, !dbg !483
}

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincosf(float %__x, float* nocapture %__sinp, float* nocapture %__cosp) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !169, metadata !363), !dbg !484
  tail call void @llvm.dbg.value(metadata float* %__sinp, i64 0, metadata !170, metadata !363), !dbg !485
  tail call void @llvm.dbg.value(metadata float* %__cosp, i64 0, metadata !171, metadata !363), !dbg !486
  tail call void @llvm.dbg.declare(metadata %struct.__float2* undef, metadata !172, metadata !363), !dbg !487
  %1 = tail call <2 x float> @__sincosf_stret(float %__x) #6, !dbg !488
  tail call void @llvm.dbg.value(metadata <2 x float> %1, i64 0, metadata !172, metadata !363), !dbg !487
  %2 = extractelement <2 x float> %1, i32 0, !dbg !489
  store float %2, float* %__sinp, align 4, !dbg !490, !tbaa !491
  %3 = extractelement <2 x float> %1, i32 1, !dbg !493
  store float %3, float* %__cosp, align 4, !dbg !494, !tbaa !491
  ret void, !dbg !495
}

; Function Attrs: optsize
declare <2 x float> @__sincosf_stret(float) #2

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincos(double %__x, double* nocapture %__sinp, double* nocapture %__cosp) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !183, metadata !363), !dbg !496
  tail call void @llvm.dbg.value(metadata double* %__sinp, i64 0, metadata !184, metadata !363), !dbg !497
  tail call void @llvm.dbg.value(metadata double* %__cosp, i64 0, metadata !185, metadata !363), !dbg !498
  tail call void @llvm.dbg.declare(metadata %struct.__double2* undef, metadata !186, metadata !363), !dbg !499
  %1 = tail call { double, double } @__sincos_stret(double %__x) #6, !dbg !500
  %2 = extractvalue { double, double } %1, 0, !dbg !500
  tail call void @llvm.dbg.value(metadata double %2, i64 0, metadata !186, metadata !501), !dbg !499
  %3 = extractvalue { double, double } %1, 1, !dbg !500
  tail call void @llvm.dbg.value(metadata double %3, i64 0, metadata !186, metadata !502), !dbg !499
  store double %2, double* %__sinp, align 8, !dbg !503, !tbaa !504
  store double %3, double* %__cosp, align 8, !dbg !506, !tbaa !504
  ret void, !dbg !507
}

; Function Attrs: optsize
declare { double, double } @__sincos_stret(double) #2

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincospif(float %__x, float* nocapture %__sinp, float* nocapture %__cosp) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !194, metadata !363), !dbg !508
  tail call void @llvm.dbg.value(metadata float* %__sinp, i64 0, metadata !195, metadata !363), !dbg !509
  tail call void @llvm.dbg.value(metadata float* %__cosp, i64 0, metadata !196, metadata !363), !dbg !510
  tail call void @llvm.dbg.declare(metadata %struct.__float2* undef, metadata !197, metadata !363), !dbg !511
  %1 = tail call <2 x float> @__sincospif_stret(float %__x) #6, !dbg !512
  tail call void @llvm.dbg.value(metadata <2 x float> %1, i64 0, metadata !197, metadata !363), !dbg !511
  %2 = extractelement <2 x float> %1, i32 0, !dbg !513
  store float %2, float* %__sinp, align 4, !dbg !514, !tbaa !491
  %3 = extractelement <2 x float> %1, i32 1, !dbg !515
  store float %3, float* %__cosp, align 4, !dbg !516, !tbaa !491
  ret void, !dbg !517
}

; Function Attrs: optsize
declare <2 x float> @__sincospif_stret(float) #2

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincospi(double %__x, double* nocapture %__sinp, double* nocapture %__cosp) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !200, metadata !363), !dbg !518
  tail call void @llvm.dbg.value(metadata double* %__sinp, i64 0, metadata !201, metadata !363), !dbg !519
  tail call void @llvm.dbg.value(metadata double* %__cosp, i64 0, metadata !202, metadata !363), !dbg !520
  tail call void @llvm.dbg.declare(metadata %struct.__double2* undef, metadata !203, metadata !363), !dbg !521
  %1 = tail call { double, double } @__sincospi_stret(double %__x) #6, !dbg !522
  %2 = extractvalue { double, double } %1, 0, !dbg !522
  tail call void @llvm.dbg.value(metadata double %2, i64 0, metadata !203, metadata !501), !dbg !521
  %3 = extractvalue { double, double } %1, 1, !dbg !522
  tail call void @llvm.dbg.value(metadata double %3, i64 0, metadata !203, metadata !502), !dbg !521
  store double %2, double* %__sinp, align 8, !dbg !523, !tbaa !504
  store double %3, double* %__cosp, align 8, !dbg !524, !tbaa !504
  ret void, !dbg !525
}

; Function Attrs: optsize
declare { double, double } @__sincospi_stret(double) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @open_xtc(i8* %fn, i8* %mode) #4 {
  tail call void @llvm.dbg.value(metadata i8* %fn, i64 0, metadata !208, metadata !363), !dbg !526
  tail call void @llvm.dbg.value(metadata i8* %mode, i64 0, metadata !209, metadata !363), !dbg !527
  %1 = tail call i32 @gmx_fio_open(i8* %fn, i8* %mode) #6, !dbg !528
  ret i32 %1, !dbg !529
}

; Function Attrs: optsize
declare i32 @gmx_fio_open(i8*, i8*) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @close_xtc(i32 %fp) #4 {
  tail call void @llvm.dbg.value(metadata i32 %fp, i64 0, metadata !214, metadata !363), !dbg !530
  tail call void @gmx_fio_close(i32 %fp) #6, !dbg !531
  ret void, !dbg !532
}

; Function Attrs: optsize
declare void @gmx_fio_close(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @xtc_check(i8* %str, i32 %bResult, i8* %file, i32 %line) #4 {
  tail call void @llvm.dbg.value(metadata i8* %str, i64 0, metadata !219, metadata !363), !dbg !533
  tail call void @llvm.dbg.value(metadata i32 %bResult, i64 0, metadata !220, metadata !363), !dbg !534
  tail call void @llvm.dbg.value(metadata i8* %file, i64 0, metadata !221, metadata !363), !dbg !535
  tail call void @llvm.dbg.value(metadata i32 %line, i64 0, metadata !222, metadata !363), !dbg !536
  %1 = icmp eq i32 %bResult, 0, !dbg !537
  br i1 %1, label %2, label %7, !dbg !539

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @debug, align 8, !dbg !540, !tbaa !543
  %4 = icmp eq %struct.__sFILE* %3, null, !dbg !540
  br i1 %4, label %7, label %5, !dbg !544

; <label>:5                                       ; preds = %2
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %3, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* %str, i8* %file, i32 %line) #6, !dbg !545
  br label %7, !dbg !545

; <label>:7                                       ; preds = %0, %5, %2
  %.0 = phi i32 [ 0, %2 ], [ 0, %5 ], [ 1, %0 ]
  ret i32 %.0, !dbg !546
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #5

; Function Attrs: nounwind optsize ssp uwtable
define void @xtc_check_fat_err(i8* %str, i32 %bResult, i8* %file, i32 %line) #4 {
  tail call void @llvm.dbg.value(metadata i8* %str, i64 0, metadata !227, metadata !363), !dbg !547
  tail call void @llvm.dbg.value(metadata i32 %bResult, i64 0, metadata !228, metadata !363), !dbg !548
  tail call void @llvm.dbg.value(metadata i8* %file, i64 0, metadata !229, metadata !363), !dbg !549
  tail call void @llvm.dbg.value(metadata i32 %line, i64 0, metadata !230, metadata !363), !dbg !550
  %1 = icmp eq i32 %bResult, 0, !dbg !551
  br i1 %1, label %2, label %3, !dbg !553

; <label>:2                                       ; preds = %0
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([54 x i8]* @.str1, i64 0, i64 0), i8* %str, i8* %file, i32 %line) #6, !dbg !554
  br label %3, !dbg !556

; <label>:3                                       ; preds = %0, %2
  ret void, !dbg !557
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @write_xtc(i32 %fp, i32 %natoms, i32 %step, float %time, [3 x float]* %box, [3 x float]* %x, float %prec) #4 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %magic_number = alloca i32, align 4
  %bDum = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32 %fp, i64 0, metadata !241, metadata !363), !dbg !558
  tail call void @llvm.dbg.value(metadata i32 %natoms, i64 0, metadata !242, metadata !363), !dbg !559
  store i32 %natoms, i32* %1, align 4, !tbaa !560
  tail call void @llvm.dbg.value(metadata i32 %step, i64 0, metadata !243, metadata !363), !dbg !561
  store i32 %step, i32* %2, align 4, !tbaa !560
  tail call void @llvm.dbg.value(metadata float %time, i64 0, metadata !244, metadata !363), !dbg !562
  store float %time, float* %3, align 4, !tbaa !491
  tail call void @llvm.dbg.value(metadata [3 x float]* %box, i64 0, metadata !245, metadata !363), !dbg !563
  tail call void @llvm.dbg.value(metadata [3 x float]* %x, i64 0, metadata !246, metadata !363), !dbg !564
  tail call void @llvm.dbg.value(metadata float %prec, i64 0, metadata !247, metadata !363), !dbg !565
  store float %prec, float* %4, align 4, !tbaa !491
  tail call void @llvm.dbg.value(metadata i32 1995, i64 0, metadata !248, metadata !363), !dbg !566
  store i32 1995, i32* %magic_number, align 4, !dbg !566, !tbaa !560
  %5 = tail call %struct.XDR* @gmx_fio_getxdr(i32 %fp) #6, !dbg !567
  tail call void @llvm.dbg.value(metadata %struct.XDR* %5, i64 0, metadata !249, metadata !363), !dbg !568
  tail call void @llvm.dbg.value(metadata i32* %1, i64 0, metadata !242, metadata !363), !dbg !559
  tail call void @llvm.dbg.value(metadata i32* %2, i64 0, metadata !243, metadata !363), !dbg !561
  tail call void @llvm.dbg.value(metadata float* %3, i64 0, metadata !244, metadata !363), !dbg !562
  tail call void @llvm.dbg.value(metadata i32* %magic_number, i64 0, metadata !248, metadata !363), !dbg !566
  tail call void @llvm.dbg.value(metadata i32* %bDum, i64 0, metadata !299, metadata !363), !dbg !569
  %6 = call fastcc i32 @xtc_header(%struct.XDR* %5, i32* %magic_number, i32* %1, i32* %2, float* %3, i32* %bDum) #9, !dbg !570
  %7 = icmp eq i32 %6, 0, !dbg !570
  br i1 %7, label %10, label %8, !dbg !572

; <label>:8                                       ; preds = %0
  call void @llvm.dbg.value(metadata i32* %1, i64 0, metadata !242, metadata !363), !dbg !559
  call void @llvm.dbg.value(metadata float* %4, i64 0, metadata !247, metadata !363), !dbg !565
  %9 = call fastcc i32 @xtc_coord(%struct.XDR* %5, i32* %1, [3 x float]* %box, [3 x float]* %x, float* %4) #9, !dbg !573
  br label %10, !dbg !574

; <label>:10                                      ; preds = %0, %8
  %.0 = phi i32 [ %9, %8 ], [ 0, %0 ]
  ret i32 %.0, !dbg !575
}

; Function Attrs: optsize
declare %struct.XDR* @gmx_fio_getxdr(i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @xtc_header(%struct.XDR* %xd, i32* %magic, i32* %natoms, i32* %step, float* %time, i32* nocapture %bOK) #4 {
  tail call void @llvm.dbg.value(metadata %struct.XDR* %xd, i64 0, metadata !336, metadata !363), !dbg !576
  tail call void @llvm.dbg.value(metadata i32* %magic, i64 0, metadata !337, metadata !363), !dbg !577
  tail call void @llvm.dbg.value(metadata i32* %natoms, i64 0, metadata !338, metadata !363), !dbg !578
  tail call void @llvm.dbg.value(metadata i32* %step, i64 0, metadata !339, metadata !363), !dbg !579
  tail call void @llvm.dbg.value(metadata float* %time, i64 0, metadata !340, metadata !363), !dbg !580
  tail call void @llvm.dbg.value(metadata i32* %bOK, i64 0, metadata !341, metadata !363), !dbg !581
  %1 = tail call i32 @xdr_int(%struct.XDR* %xd, i32* %magic) #6, !dbg !582
  %2 = icmp eq i32 %1, 0, !dbg !584
  br i1 %2, label %27, label %3, !dbg !585

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @xdr_int(%struct.XDR* %xd, i32* %natoms) #6, !dbg !586
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([7 x i8]* @.str5, i64 0, i64 0), i64 0, metadata !219, metadata !363) #8, !dbg !587
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !220, metadata !363) #8, !dbg !589
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i64 0, metadata !221, metadata !363) #8, !dbg !590
  tail call void @llvm.dbg.value(metadata i32 88, i64 0, metadata !222, metadata !363) #8, !dbg !591
  %5 = icmp eq i32 %4, 0, !dbg !592
  br i1 %5, label %6, label %11, !dbg !593

; <label>:6                                       ; preds = %3
  %7 = load %struct.__sFILE** @debug, align 8, !dbg !594, !tbaa !543
  %8 = icmp eq %struct.__sFILE* %7, null, !dbg !594
  br i1 %8, label %xtc_check.exit4, label %9, !dbg !595

; <label>:9                                       ; preds = %6
  %10 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %7, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 88) #6, !dbg !596
  br label %xtc_check.exit4, !dbg !596

; <label>:11                                      ; preds = %3
  %12 = tail call i32 @xdr_int(%struct.XDR* %xd, i32* %step) #6, !dbg !597
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0), i64 0, metadata !219, metadata !363) #8, !dbg !599
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !220, metadata !363) #8, !dbg !601
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i64 0, metadata !221, metadata !363) #8, !dbg !602
  tail call void @llvm.dbg.value(metadata i32 90, i64 0, metadata !222, metadata !363) #8, !dbg !603
  %13 = icmp eq i32 %12, 0, !dbg !604
  br i1 %13, label %14, label %19, !dbg !605

; <label>:14                                      ; preds = %11
  %15 = load %struct.__sFILE** @debug, align 8, !dbg !606, !tbaa !543
  %16 = icmp eq %struct.__sFILE* %15, null, !dbg !606
  br i1 %16, label %xtc_check.exit4, label %17, !dbg !607

; <label>:17                                      ; preds = %14
  %18 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %15, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 90) #6, !dbg !608
  br label %xtc_check.exit4, !dbg !608

; <label>:19                                      ; preds = %11
  %20 = tail call i32 @xdr_real(%struct.XDR* %xd, float* %time) #6, !dbg !609
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([5 x i8]* @.str7, i64 0, i64 0), i64 0, metadata !219, metadata !363) #8, !dbg !611
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !220, metadata !363) #8, !dbg !613
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i64 0, metadata !221, metadata !363) #8, !dbg !614
  tail call void @llvm.dbg.value(metadata i32 92, i64 0, metadata !222, metadata !363) #8, !dbg !615
  %21 = icmp eq i32 %20, 0, !dbg !616
  br i1 %21, label %22, label %xtc_check.exit4, !dbg !617

; <label>:22                                      ; preds = %19
  %23 = load %struct.__sFILE** @debug, align 8, !dbg !618, !tbaa !543
  %24 = icmp eq %struct.__sFILE* %23, null, !dbg !618
  br i1 %24, label %xtc_check.exit4, label %25, !dbg !619

; <label>:25                                      ; preds = %22
  %26 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %23, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 92) #6, !dbg !620
  br label %xtc_check.exit4, !dbg !620

xtc_check.exit4:                                  ; preds = %9, %6, %17, %14, %25, %22, %19
  %result.1 = phi i32 [ 0, %22 ], [ 0, %25 ], [ 1, %19 ], [ 0, %14 ], [ 0, %17 ], [ 0, %6 ], [ 0, %9 ]
  store i32 %result.1, i32* %bOK, align 4, !dbg !621, !tbaa !560
  br label %27, !dbg !622

; <label>:27                                      ; preds = %0, %xtc_check.exit4
  %.0 = phi i32 [ %result.1, %xtc_check.exit4 ], [ 0, %0 ]
  ret i32 %.0, !dbg !623
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @xtc_coord(%struct.XDR* %xd, i32* %natoms, [3 x float]* %box, [3 x float]* %x, float* %prec) #4 {
  tail call void @llvm.dbg.value(metadata %struct.XDR* %xd, i64 0, metadata !347, metadata !363), !dbg !624
  tail call void @llvm.dbg.value(metadata i32* %natoms, i64 0, metadata !348, metadata !363), !dbg !625
  tail call void @llvm.dbg.value(metadata [3 x float]* %box, i64 0, metadata !349, metadata !363), !dbg !626
  tail call void @llvm.dbg.value(metadata [3 x float]* %x, i64 0, metadata !350, metadata !363), !dbg !627
  tail call void @llvm.dbg.value(metadata float* %prec, i64 0, metadata !351, metadata !363), !dbg !628
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !354, metadata !363), !dbg !629
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !352, metadata !363), !dbg !630
  br label %.preheader, !dbg !631

.preheader:                                       ; preds = %0, %.critedge1
  %indvars.iv11 = phi i64 [ 0, %0 ], [ %indvars.iv.next12, %.critedge1 ]
  br label %.lr.ph, !dbg !634

.lr.ph:                                           ; preds = %.preheader, %xtc_check.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %xtc_check.exit ], [ 0, %.preheader ]
  %1 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv11, i64 %indvars.iv, !dbg !637
  %2 = tail call i32 @xdr_real(%struct.XDR* %xd, float* %1) #6, !dbg !637
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0), i64 0, metadata !219, metadata !363) #8, !dbg !638
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !220, metadata !363) #8, !dbg !640
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i64 0, metadata !221, metadata !363) #8, !dbg !641
  tail call void @llvm.dbg.value(metadata i32 106, i64 0, metadata !222, metadata !363) #8, !dbg !642
  %3 = icmp eq i32 %2, 0, !dbg !643
  br i1 %3, label %4, label %xtc_check.exit, !dbg !644

; <label>:4                                       ; preds = %.lr.ph
  %5 = load %struct.__sFILE** @debug, align 8, !dbg !645, !tbaa !543
  %6 = icmp eq %struct.__sFILE* %5, null, !dbg !645
  br i1 %6, label %xtc_check.exit6, label %7, !dbg !646

; <label>:7                                       ; preds = %4
  %8 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %5, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 106) #6, !dbg !647
  br label %xtc_check.exit6, !dbg !647

xtc_check.exit:                                   ; preds = %.lr.ph
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !354, metadata !363), !dbg !629
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !634
  %9 = icmp slt i64 %indvars.iv.next, 3, !dbg !648
  br i1 %9, label %.lr.ph, label %.critedge1, !dbg !634

.critedge1:                                       ; preds = %xtc_check.exit
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1, !dbg !631
  %10 = icmp slt i64 %indvars.iv.next12, 3, !dbg !649
  br i1 %10, label %.preheader, label %.critedge, !dbg !631

.critedge:                                        ; preds = %.critedge1
  %11 = getelementptr inbounds [3 x float]* %x, i64 0, i64 0, !dbg !650
  %12 = tail call i32 @xdr3drcoord(%struct.XDR* %xd, float* %11, i32* %natoms, float* %prec) #6, !dbg !650
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8]* @.str9, i64 0, i64 0), i64 0, metadata !219, metadata !363) #8, !dbg !652
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !220, metadata !363) #8, !dbg !654
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i64 0, metadata !221, metadata !363) #8, !dbg !655
  tail call void @llvm.dbg.value(metadata i32 110, i64 0, metadata !222, metadata !363) #8, !dbg !656
  %13 = icmp eq i32 %12, 0, !dbg !657
  br i1 %13, label %14, label %xtc_check.exit6, !dbg !658

; <label>:14                                      ; preds = %.critedge
  %15 = load %struct.__sFILE** @debug, align 8, !dbg !659, !tbaa !543
  %16 = icmp eq %struct.__sFILE* %15, null, !dbg !659
  br i1 %16, label %xtc_check.exit6, label %17, !dbg !660

; <label>:17                                      ; preds = %14
  %18 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %15, i8* getelementptr inbounds ([62 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 110) #6, !dbg !661
  br label %xtc_check.exit6, !dbg !661

xtc_check.exit6:                                  ; preds = %4, %7, %17, %14, %.critedge
  %result.2 = phi i32 [ 0, %14 ], [ 0, %17 ], [ 1, %.critedge ], [ 0, %7 ], [ 0, %4 ]
  ret i32 %result.2, !dbg !662
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @read_first_xtc(i32 %fp, i32* %natoms, i32* %step, float* %time, [3 x float]* %box, [3 x float]** nocapture %x, float* %prec, i32* nocapture %bOK) #4 {
  %magic = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32 %fp, i64 0, metadata !307, metadata !363), !dbg !663
  tail call void @llvm.dbg.value(metadata i32* %natoms, i64 0, metadata !308, metadata !363), !dbg !664
  tail call void @llvm.dbg.value(metadata i32* %step, i64 0, metadata !309, metadata !363), !dbg !665
  tail call void @llvm.dbg.value(metadata float* %time, i64 0, metadata !310, metadata !363), !dbg !666
  tail call void @llvm.dbg.value(metadata [3 x float]* %box, i64 0, metadata !311, metadata !363), !dbg !667
  tail call void @llvm.dbg.value(metadata [3 x float]** %x, i64 0, metadata !312, metadata !363), !dbg !668
  tail call void @llvm.dbg.value(metadata float* %prec, i64 0, metadata !313, metadata !363), !dbg !669
  tail call void @llvm.dbg.value(metadata i32* %bOK, i64 0, metadata !314, metadata !363), !dbg !670
  store i32 1, i32* %bOK, align 4, !dbg !671, !tbaa !560
  %1 = tail call %struct.XDR* @gmx_fio_getxdr(i32 %fp) #6, !dbg !672
  tail call void @llvm.dbg.value(metadata %struct.XDR* %1, i64 0, metadata !316, metadata !363), !dbg !673
  tail call void @llvm.dbg.value(metadata i32* %magic, i64 0, metadata !315, metadata !363), !dbg !674
  %2 = call fastcc i32 @xtc_header(%struct.XDR* %1, i32* %magic, i32* %natoms, i32* %step, float* %time, i32* %bOK) #9, !dbg !675
  %3 = icmp eq i32 %2, 0, !dbg !675
  br i1 %3, label %13, label %4, !dbg !677

; <label>:4                                       ; preds = %0
  call void @llvm.dbg.value(metadata i32* %magic, i64 0, metadata !315, metadata !363), !dbg !674
  %5 = load i32* %magic, align 4, !dbg !678, !tbaa !560
  call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !357, metadata !363) #8, !dbg !679
  %6 = icmp eq i32 %5, 1995, !dbg !681
  br i1 %6, label %check_xtc_magic.exit, label %7, !dbg !683

; <label>:7                                       ; preds = %4
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([55 x i8]* @.str10, i64 0, i64 0), i32 %5, i32 1995) #6, !dbg !684
  br label %check_xtc_magic.exit, !dbg !684

check_xtc_magic.exit:                             ; preds = %4, %7
  %8 = load i32* %natoms, align 4, !dbg !685, !tbaa !560
  %9 = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str3, i64 0, i64 0), i32 157, i32 %8, i32 12) #6, !dbg !685
  %10 = bitcast i8* %9 to [3 x float]*, !dbg !685
  %11 = bitcast [3 x float]** %x to i8**, !dbg !685
  store i8* %9, i8** %11, align 8, !dbg !685, !tbaa !543
  %12 = call fastcc i32 @xtc_coord(%struct.XDR* %1, i32* %natoms, [3 x float]* %box, [3 x float]* %10, float* %prec) #9, !dbg !686
  store i32 %12, i32* %bOK, align 4, !dbg !687, !tbaa !560
  br label %13, !dbg !688

; <label>:13                                      ; preds = %0, %check_xtc_magic.exit
  %.0 = phi i32 [ %12, %check_xtc_magic.exit ], [ 0, %0 ]
  ret i32 %.0, !dbg !689
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define i32 @read_next_xtc(i32 %fp, i32 %natoms, i32* %step, float* %time, [3 x float]* %box, [3 x float]* %x, float* %prec, i32* nocapture %bOK) #4 {
  %1 = alloca i32, align 4
  %magic = alloca i32, align 4
  %n = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata i32 %fp, i64 0, metadata !321, metadata !363), !dbg !690
  tail call void @llvm.dbg.value(metadata i32 %natoms, i64 0, metadata !322, metadata !363), !dbg !691
  store i32 %natoms, i32* %1, align 4, !tbaa !560
  tail call void @llvm.dbg.value(metadata i32* %step, i64 0, metadata !323, metadata !363), !dbg !692
  tail call void @llvm.dbg.value(metadata float* %time, i64 0, metadata !324, metadata !363), !dbg !693
  tail call void @llvm.dbg.value(metadata [3 x float]* %box, i64 0, metadata !325, metadata !363), !dbg !694
  tail call void @llvm.dbg.value(metadata [3 x float]* %x, i64 0, metadata !326, metadata !363), !dbg !695
  tail call void @llvm.dbg.value(metadata float* %prec, i64 0, metadata !327, metadata !363), !dbg !696
  tail call void @llvm.dbg.value(metadata i32* %bOK, i64 0, metadata !328, metadata !363), !dbg !697
  store i32 1, i32* %bOK, align 4, !dbg !698, !tbaa !560
  %2 = tail call %struct.XDR* @gmx_fio_getxdr(i32 %fp) #6, !dbg !699
  tail call void @llvm.dbg.value(metadata %struct.XDR* %2, i64 0, metadata !331, metadata !363), !dbg !700
  tail call void @llvm.dbg.value(metadata i32* %magic, i64 0, metadata !329, metadata !363), !dbg !701
  tail call void @llvm.dbg.value(metadata i32* %n, i64 0, metadata !330, metadata !363), !dbg !702
  %3 = call fastcc i32 @xtc_header(%struct.XDR* %2, i32* %magic, i32* %n, i32* %step, float* %time, i32* %bOK) #9, !dbg !703
  %4 = icmp eq i32 %3, 0, !dbg !703
  br i1 %4, label %14, label %5, !dbg !705

; <label>:5                                       ; preds = %0
  call void @llvm.dbg.value(metadata i32* %n, i64 0, metadata !330, metadata !363), !dbg !702
  %6 = load i32* %n, align 4, !dbg !706, !tbaa !560
  call void @llvm.dbg.value(metadata i32* %1, i64 0, metadata !322, metadata !363), !dbg !691
  %7 = icmp sgt i32 %6, %natoms, !dbg !708
  br i1 %7, label %8, label %9, !dbg !709

; <label>:8                                       ; preds = %5
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([50 x i8]* @.str4, i64 0, i64 0), i32 %6, i32 %natoms) #6, !dbg !710
  br label %9, !dbg !710

; <label>:9                                       ; preds = %8, %5
  call void @llvm.dbg.value(metadata i32* %magic, i64 0, metadata !329, metadata !363), !dbg !701
  %10 = load i32* %magic, align 4, !dbg !711, !tbaa !560
  call void @llvm.dbg.value(metadata i32 %10, i64 0, metadata !357, metadata !363) #8, !dbg !712
  %11 = icmp eq i32 %10, 1995, !dbg !714
  br i1 %11, label %check_xtc_magic.exit, label %12, !dbg !715

; <label>:12                                      ; preds = %9
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([55 x i8]* @.str10, i64 0, i64 0), i32 %10, i32 1995) #6, !dbg !716
  br label %check_xtc_magic.exit, !dbg !716

check_xtc_magic.exit:                             ; preds = %9, %12
  call void @llvm.dbg.value(metadata i32* %1, i64 0, metadata !322, metadata !363), !dbg !691
  %13 = call fastcc i32 @xtc_coord(%struct.XDR* %2, i32* %1, [3 x float]* %box, [3 x float]* %x, float* %prec) #9, !dbg !717
  store i32 %13, i32* %bOK, align 4, !dbg !718, !tbaa !560
  br label %14, !dbg !719

; <label>:14                                      ; preds = %0, %check_xtc_magic.exit
  %.0 = phi i32 [ %13, %check_xtc_magic.exit ], [ 0, %0 ]
  ret i32 %.0, !dbg !720
}

; Function Attrs: optsize
declare i32 @xdr_int(%struct.XDR*, i32*) #2

; Function Attrs: optsize
declare i32 @xdr_real(%struct.XDR*, float*) #2

; Function Attrs: optsize
declare i32 @xdr3drcoord(%struct.XDR*, float*, i32*, float*) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { readnone }
attributes #8 = { nounwind }
attributes #9 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!359, !360, !361}
!llvm.ident = !{!362}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !9, subprograms: !12, globals: !358, imports: !358)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/xtcio.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xdr_op", file: !4, line: 119, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/gmx_system_xdr.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "XDR_ENCODE", value: 0)
!7 = !DIEnumerator(name: "XDR_DECODE", value: 1)
!8 = !DIEnumerator(name: "XDR_FREE", value: 2)
!9 = !{!10, !11}
!10 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!11 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!12 = !{!13, !81, !87, !94, !100, !106, !109, !112, !115, !118, !121, !124, !133, !142, !155, !158, !161, !164, !178, !192, !198, !204, !210, !215, !223, !231, !300, !317, !332, !343, !355}
!13 = !DISubprogram(name: "__sputc", scope: !14, file: !14, line: 348, type: !15, isLocal: false, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, %struct.__sFILE*)* @__sputc, variables: !78)
!14 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!15 = !DISubroutineType(types: !16)
!16 = !{!11, !11, !17}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64, align: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !14, line: 153, baseType: !19)
!19 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !14, line: 122, size: 1216, align: 64, elements: !20)
!20 = !{!21, !24, !25, !26, !28, !29, !34, !35, !37, !41, !46, !56, !62, !63, !66, !67, !71, !75, !76, !77}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !19, file: !14, line: 123, baseType: !22, size: 64, align: 64)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64, align: 64)
!23 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !19, file: !14, line: 124, baseType: !11, size: 32, align: 32, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !19, file: !14, line: 125, baseType: !11, size: 32, align: 32, offset: 96)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !19, file: !14, line: 126, baseType: !27, size: 16, align: 16, offset: 128)
!27 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !19, file: !14, line: 127, baseType: !27, size: 16, align: 16, offset: 144)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !19, file: !14, line: 128, baseType: !30, size: 128, align: 64, offset: 192)
!30 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !14, line: 88, size: 128, align: 64, elements: !31)
!31 = !{!32, !33}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !30, file: !14, line: 89, baseType: !22, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !30, file: !14, line: 90, baseType: !11, size: 32, align: 32, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !19, file: !14, line: 129, baseType: !11, size: 32, align: 32, offset: 320)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !19, file: !14, line: 132, baseType: !36, size: 64, align: 64, offset: 384)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !19, file: !14, line: 133, baseType: !38, size: 64, align: 64, offset: 448)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!39 = !DISubroutineType(types: !40)
!40 = !{!11, !36}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !19, file: !14, line: 134, baseType: !42, size: 64, align: 64, offset: 512)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!43 = !DISubroutineType(types: !44)
!44 = !{!11, !36, !45, !11}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !19, file: !14, line: 135, baseType: !47, size: 64, align: 64, offset: 576)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!48 = !DISubroutineType(types: !49)
!49 = !{!50, !36, !50, !11}
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !14, line: 77, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !52, line: 71, baseType: !53)
!52 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !54, line: 46, baseType: !55)
!54 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!55 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !19, file: !14, line: 136, baseType: !57, size: 64, align: 64, offset: 640)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!58 = !DISubroutineType(types: !59)
!59 = !{!11, !36, !60, !11}
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64, align: 64)
!61 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !19, file: !14, line: 139, baseType: !30, size: 128, align: 64, offset: 704)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !19, file: !14, line: 140, baseType: !64, size: 64, align: 64, offset: 832)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!65 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !14, line: 94, flags: DIFlagFwdDecl)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !19, file: !14, line: 141, baseType: !11, size: 32, align: 32, offset: 896)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !19, file: !14, line: 144, baseType: !68, size: 24, align: 8, offset: 928)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 24, align: 8, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 3)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !19, file: !14, line: 145, baseType: !72, size: 8, align: 8, offset: 952)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8, align: 8, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 1)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !19, file: !14, line: 148, baseType: !30, size: 128, align: 64, offset: 960)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !19, file: !14, line: 151, baseType: !11, size: 32, align: 32, offset: 1088)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !19, file: !14, line: 152, baseType: !50, size: 64, align: 64, offset: 1152)
!78 = !{!79, !80}
!79 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !13, file: !14, line: 348, type: !11)
!80 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_p", arg: 2, scope: !13, file: !14, line: 348, type: !17)
!81 = !DISubprogram(name: "__sigbits", scope: !82, file: !82, line: 114, type: !83, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @__sigbits, variables: !85)
!82 = !DIFile(filename: "/usr/include/signal.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!83 = !DISubroutineType(types: !84)
!84 = !{!11, !11}
!85 = !{!86}
!86 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__signo", arg: 1, scope: !81, file: !82, line: 114, type: !11)
!87 = !DISubprogram(name: "__inline_isfinitef", scope: !88, file: !88, line: 204, type: !89, isLocal: false, isDefinition: true, scopeLine: 204, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isfinitef, variables: !92)
!88 = !DIFile(filename: "/usr/include/math.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!89 = !DISubroutineType(types: !90)
!90 = !{!11, !91}
!91 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!92 = !{!93}
!93 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !87, file: !88, line: 204, type: !91)
!94 = !DISubprogram(name: "__inline_isfinited", scope: !88, file: !88, line: 207, type: !95, isLocal: false, isDefinition: true, scopeLine: 207, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isfinited, variables: !98)
!95 = !DISubroutineType(types: !96)
!96 = !{!11, !97}
!97 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!98 = !{!99}
!99 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !94, file: !88, line: 207, type: !97)
!100 = !DISubprogram(name: "__inline_isfinitel", scope: !88, file: !88, line: 210, type: !101, isLocal: false, isDefinition: true, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isfinitel, variables: !104)
!101 = !DISubroutineType(types: !102)
!102 = !{!11, !103}
!103 = !DIBasicType(name: "long double", size: 128, align: 128, encoding: DW_ATE_float)
!104 = !{!105}
!105 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !100, file: !88, line: 210, type: !103)
!106 = !DISubprogram(name: "__inline_isinff", scope: !88, file: !88, line: 213, type: !89, isLocal: false, isDefinition: true, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isinff, variables: !107)
!107 = !{!108}
!108 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !106, file: !88, line: 213, type: !91)
!109 = !DISubprogram(name: "__inline_isinfd", scope: !88, file: !88, line: 216, type: !95, isLocal: false, isDefinition: true, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isinfd, variables: !110)
!110 = !{!111}
!111 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !109, file: !88, line: 216, type: !97)
!112 = !DISubprogram(name: "__inline_isinfl", scope: !88, file: !88, line: 219, type: !101, isLocal: false, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isinfl, variables: !113)
!113 = !{!114}
!114 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !112, file: !88, line: 219, type: !103)
!115 = !DISubprogram(name: "__inline_isnanf", scope: !88, file: !88, line: 222, type: !89, isLocal: false, isDefinition: true, scopeLine: 222, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isnanf, variables: !116)
!116 = !{!117}
!117 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !115, file: !88, line: 222, type: !91)
!118 = !DISubprogram(name: "__inline_isnand", scope: !88, file: !88, line: 225, type: !95, isLocal: false, isDefinition: true, scopeLine: 225, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isnand, variables: !119)
!119 = !{!120}
!120 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !118, file: !88, line: 225, type: !97)
!121 = !DISubprogram(name: "__inline_isnanl", scope: !88, file: !88, line: 228, type: !101, isLocal: false, isDefinition: true, scopeLine: 228, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isnanl, variables: !122)
!122 = !{!123}
!123 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !121, file: !88, line: 228, type: !103)
!124 = !DISubprogram(name: "__inline_signbitf", scope: !88, file: !88, line: 231, type: !89, isLocal: false, isDefinition: true, scopeLine: 231, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_signbitf, variables: !125)
!125 = !{!126, !127}
!126 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !124, file: !88, line: 231, type: !91)
!127 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__u", scope: !124, file: !88, line: 232, type: !128)
!128 = !DICompositeType(tag: DW_TAG_union_type, scope: !124, file: !88, line: 232, size: 32, align: 32, elements: !129)
!129 = !{!130, !131}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "__f", scope: !128, file: !88, line: 232, baseType: !91, size: 32, align: 32)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "__u", scope: !128, file: !88, line: 232, baseType: !132, size: 32, align: 32)
!132 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!133 = !DISubprogram(name: "__inline_signbitd", scope: !88, file: !88, line: 236, type: !95, isLocal: false, isDefinition: true, scopeLine: 236, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_signbitd, variables: !134)
!134 = !{!135, !136}
!135 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !133, file: !88, line: 236, type: !97)
!136 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__u", scope: !133, file: !88, line: 237, type: !137)
!137 = !DICompositeType(tag: DW_TAG_union_type, scope: !133, file: !88, line: 237, size: 64, align: 64, elements: !138)
!138 = !{!139, !140}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "__f", scope: !137, file: !88, line: 237, baseType: !97, size: 64, align: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "__u", scope: !137, file: !88, line: 237, baseType: !141, size: 64, align: 64)
!141 = !DIBasicType(name: "long long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!142 = !DISubprogram(name: "__inline_signbitl", scope: !88, file: !88, line: 242, type: !101, isLocal: false, isDefinition: true, scopeLine: 242, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_signbitl, variables: !143)
!143 = !{!144, !145}
!144 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !142, file: !88, line: 242, type: !103)
!145 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__u", scope: !142, file: !88, line: 246, type: !146)
!146 = !DICompositeType(tag: DW_TAG_union_type, scope: !142, file: !88, line: 243, size: 128, align: 128, elements: !147)
!147 = !{!148, !149}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "__ld", scope: !146, file: !88, line: 244, baseType: !103, size: 128, align: 128)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "__p", scope: !146, file: !88, line: 245, baseType: !150, size: 128, align: 64)
!150 = !DICompositeType(tag: DW_TAG_structure_type, scope: !146, file: !88, line: 245, size: 128, align: 64, elements: !151)
!151 = !{!152, !153}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__m", scope: !150, file: !88, line: 245, baseType: !141, size: 64, align: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__sexp", scope: !150, file: !88, line: 245, baseType: !154, size: 16, align: 16, offset: 64)
!154 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!155 = !DISubprogram(name: "__inline_isnormalf", scope: !88, file: !88, line: 257, type: !89, isLocal: false, isDefinition: true, scopeLine: 257, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isnormalf, variables: !156)
!156 = !{!157}
!157 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !155, file: !88, line: 257, type: !91)
!158 = !DISubprogram(name: "__inline_isnormald", scope: !88, file: !88, line: 260, type: !95, isLocal: false, isDefinition: true, scopeLine: 260, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isnormald, variables: !159)
!159 = !{!160}
!160 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !158, file: !88, line: 260, type: !97)
!161 = !DISubprogram(name: "__inline_isnormall", scope: !88, file: !88, line: 263, type: !101, isLocal: false, isDefinition: true, scopeLine: 263, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isnormall, variables: !162)
!162 = !{!163}
!163 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !161, file: !88, line: 263, type: !103)
!164 = !DISubprogram(name: "__sincosf", scope: !88, file: !88, line: 642, type: !165, isLocal: false, isDefinition: true, scopeLine: 642, flags: DIFlagPrototyped, isOptimized: true, function: void (float, float*, float*)* @__sincosf, variables: !168)
!165 = !DISubroutineType(types: !166)
!166 = !{null, !91, !167, !167}
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64, align: 64)
!168 = !{!169, !170, !171, !172}
!169 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !164, file: !88, line: 642, type: !91)
!170 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !164, file: !88, line: 642, type: !167)
!171 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !164, file: !88, line: 642, type: !167)
!172 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !164, file: !88, line: 643, type: !173)
!173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !174)
!174 = !DICompositeType(tag: DW_TAG_structure_type, name: "__float2", file: !88, line: 634, size: 64, align: 32, elements: !175)
!175 = !{!176, !177}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "__sinval", scope: !174, file: !88, line: 634, baseType: !91, size: 32, align: 32)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "__cosval", scope: !174, file: !88, line: 634, baseType: !91, size: 32, align: 32, offset: 32)
!178 = !DISubprogram(name: "__sincos", scope: !88, file: !88, line: 647, type: !179, isLocal: false, isDefinition: true, scopeLine: 647, flags: DIFlagPrototyped, isOptimized: true, function: void (double, double*, double*)* @__sincos, variables: !182)
!179 = !DISubroutineType(types: !180)
!180 = !{null, !97, !181, !181}
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64, align: 64)
!182 = !{!183, !184, !185, !186}
!183 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !178, file: !88, line: 647, type: !97)
!184 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !178, file: !88, line: 647, type: !181)
!185 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !178, file: !88, line: 647, type: !181)
!186 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !178, file: !88, line: 648, type: !187)
!187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !188)
!188 = !DICompositeType(tag: DW_TAG_structure_type, name: "__double2", file: !88, line: 635, size: 128, align: 64, elements: !189)
!189 = !{!190, !191}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "__sinval", scope: !188, file: !88, line: 635, baseType: !97, size: 64, align: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "__cosval", scope: !188, file: !88, line: 635, baseType: !97, size: 64, align: 64, offset: 64)
!192 = !DISubprogram(name: "__sincospif", scope: !88, file: !88, line: 652, type: !165, isLocal: false, isDefinition: true, scopeLine: 652, flags: DIFlagPrototyped, isOptimized: true, function: void (float, float*, float*)* @__sincospif, variables: !193)
!193 = !{!194, !195, !196, !197}
!194 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !192, file: !88, line: 652, type: !91)
!195 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !192, file: !88, line: 652, type: !167)
!196 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !192, file: !88, line: 652, type: !167)
!197 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !192, file: !88, line: 653, type: !173)
!198 = !DISubprogram(name: "__sincospi", scope: !88, file: !88, line: 657, type: !179, isLocal: false, isDefinition: true, scopeLine: 657, flags: DIFlagPrototyped, isOptimized: true, function: void (double, double*, double*)* @__sincospi, variables: !199)
!199 = !{!200, !201, !202, !203}
!200 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !198, file: !88, line: 657, type: !97)
!201 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !198, file: !88, line: 657, type: !181)
!202 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !198, file: !88, line: 657, type: !181)
!203 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !198, file: !88, line: 658, type: !187)
!204 = !DISubprogram(name: "open_xtc", scope: !1, file: !1, line: 45, type: !205, isLocal: false, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i8*)* @open_xtc, variables: !207)
!205 = !DISubroutineType(types: !206)
!206 = !{!11, !45, !45}
!207 = !{!208, !209}
!208 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fn", arg: 1, scope: !204, file: !1, line: 45, type: !45)
!209 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mode", arg: 2, scope: !204, file: !1, line: 45, type: !45)
!210 = !DISubprogram(name: "close_xtc", scope: !1, file: !1, line: 50, type: !211, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, function: void (i32)* @close_xtc, variables: !213)
!211 = !DISubroutineType(types: !212)
!212 = !{null, !11}
!213 = !{!214}
!214 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !210, file: !1, line: 50, type: !11)
!215 = !DISubprogram(name: "xtc_check", scope: !1, file: !1, line: 62, type: !216, isLocal: false, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i32, i8*, i32)* @xtc_check, variables: !218)
!216 = !DISubroutineType(types: !217)
!217 = !{!11, !45, !11, !45, !11}
!218 = !{!219, !220, !221, !222}
!219 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "str", arg: 1, scope: !215, file: !1, line: 62, type: !45)
!220 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bResult", arg: 2, scope: !215, file: !1, line: 62, type: !11)
!221 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "file", arg: 3, scope: !215, file: !1, line: 62, type: !45)
!222 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "line", arg: 4, scope: !215, file: !1, line: 62, type: !11)
!223 = !DISubprogram(name: "xtc_check_fat_err", scope: !1, file: !1, line: 73, type: !224, isLocal: false, isDefinition: true, scopeLine: 74, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i32, i8*, i32)* @xtc_check_fat_err, variables: !226)
!224 = !DISubroutineType(types: !225)
!225 = !{null, !45, !11, !45, !11}
!226 = !{!227, !228, !229, !230}
!227 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "str", arg: 1, scope: !223, file: !1, line: 73, type: !45)
!228 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bResult", arg: 2, scope: !223, file: !1, line: 73, type: !11)
!229 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "file", arg: 3, scope: !223, file: !1, line: 73, type: !45)
!230 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "line", arg: 4, scope: !223, file: !1, line: 73, type: !11)
!231 = !DISubprogram(name: "write_xtc", scope: !1, file: !1, line: 124, type: !232, isLocal: false, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i32, i32, float, [3 x float]*, [3 x float]*, float)* @write_xtc, variables: !240)
!232 = !DISubroutineType(types: !233)
!233 = !{!11, !11, !11, !11, !234, !236, !238, !234}
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "real", file: !235, line: 87, baseType: !91)
!235 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/simple.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64, align: 64)
!237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !234, size: 96, align: 32, elements: !69)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64, align: 64)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "rvec", file: !235, line: 101, baseType: !237)
!240 = !{!241, !242, !243, !244, !245, !246, !247, !248, !249, !299}
!241 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !231, file: !1, line: 124, type: !11)
!242 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "natoms", arg: 2, scope: !231, file: !1, line: 125, type: !11)
!243 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "step", arg: 3, scope: !231, file: !1, line: 125, type: !11)
!244 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "time", arg: 4, scope: !231, file: !1, line: 125, type: !234)
!245 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "box", arg: 5, scope: !231, file: !1, line: 126, type: !236)
!246 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 6, scope: !231, file: !1, line: 126, type: !238)
!247 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "prec", arg: 7, scope: !231, file: !1, line: 126, type: !234)
!248 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "magic_number", scope: !231, file: !1, line: 128, type: !11)
!249 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xd", scope: !231, file: !1, line: 129, type: !250)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64, align: 64)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "XDR", file: !4, line: 144, baseType: !252)
!252 = !DICompositeType(tag: DW_TAG_structure_type, name: "XDR", file: !4, line: 145, size: 384, align: 64, elements: !253)
!253 = !{!254, !255, !295, !296, !297, !298}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "x_op", scope: !252, file: !4, line: 147, baseType: !3, size: 32, align: 32)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "x_ops", scope: !252, file: !4, line: 171, baseType: !256, size: 64, align: 64, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64, align: 64)
!257 = !DICompositeType(tag: DW_TAG_structure_type, name: "xdr_ops", file: !4, line: 148, size: 640, align: 64, elements: !258)
!258 = !{!259, !266, !267, !271, !272, !276, !280, !286, !290, !294}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "x_getlong", scope: !257, file: !4, line: 150, baseType: !260, size: 64, align: 64)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64, align: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!263, !250, !264}
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool_t", file: !4, line: 99, baseType: !11)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64, align: 64)
!265 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "x_putlong", scope: !257, file: !4, line: 152, baseType: !260, size: 64, align: 64, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "x_getbytes", scope: !257, file: !4, line: 154, baseType: !268, size: 64, align: 64, offset: 128)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64, align: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{!263, !250, !45, !132}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "x_putbytes", scope: !257, file: !4, line: 156, baseType: !268, size: 64, align: 64, offset: 192)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "x_getpostn", scope: !257, file: !4, line: 158, baseType: !273, size: 64, align: 64, offset: 256)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64, align: 64)
!274 = !DISubroutineType(types: !275)
!275 = !{!132, !250}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "x_setpostn", scope: !257, file: !4, line: 160, baseType: !277, size: 64, align: 64, offset: 320)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64, align: 64)
!278 = !DISubroutineType(types: !279)
!279 = !{!263, !250, !132}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "x_inline", scope: !257, file: !4, line: 162, baseType: !281, size: 64, align: 64, offset: 384)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64, align: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{!284, !250, !11}
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64, align: 64)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "xdr_int32_t", file: !4, line: 106, baseType: !11)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "x_destroy", scope: !257, file: !4, line: 164, baseType: !287, size: 64, align: 64, offset: 448)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64, align: 64)
!288 = !DISubroutineType(types: !289)
!289 = !{null, !250}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "x_getint32", scope: !257, file: !4, line: 166, baseType: !291, size: 64, align: 64, offset: 512)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64, align: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{!263, !250, !284}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "x_putint32", scope: !257, file: !4, line: 168, baseType: !291, size: 64, align: 64, offset: 576)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "x_public", scope: !252, file: !4, line: 172, baseType: !45, size: 64, align: 64, offset: 128)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "x_private", scope: !252, file: !4, line: 173, baseType: !45, size: 64, align: 64, offset: 192)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "x_base", scope: !252, file: !4, line: 174, baseType: !45, size: 64, align: 64, offset: 256)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "x_handy", scope: !252, file: !4, line: 175, baseType: !11, size: 32, align: 32, offset: 320)
!299 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bDum", scope: !231, file: !1, line: 130, type: !11)
!300 = !DISubprogram(name: "read_first_xtc", scope: !1, file: !1, line: 141, type: !301, isLocal: false, isDefinition: true, scopeLine: 143, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i32*, i32*, float*, [3 x float]*, [3 x float]**, float*, i32*)* @read_first_xtc, variables: !306)
!301 = !DISubroutineType(types: !302)
!302 = !{!11, !11, !303, !303, !304, !236, !305, !304, !303}
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64, align: 64)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64, align: 64)
!306 = !{!307, !308, !309, !310, !311, !312, !313, !314, !315, !316}
!307 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !300, file: !1, line: 141, type: !11)
!308 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "natoms", arg: 2, scope: !300, file: !1, line: 141, type: !303)
!309 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "step", arg: 3, scope: !300, file: !1, line: 141, type: !303)
!310 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "time", arg: 4, scope: !300, file: !1, line: 141, type: !304)
!311 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "box", arg: 5, scope: !300, file: !1, line: 142, type: !236)
!312 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 6, scope: !300, file: !1, line: 142, type: !305)
!313 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "prec", arg: 7, scope: !300, file: !1, line: 142, type: !304)
!314 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bOK", arg: 8, scope: !300, file: !1, line: 142, type: !303)
!315 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "magic", scope: !300, file: !1, line: 144, type: !11)
!316 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xd", scope: !300, file: !1, line: 145, type: !250)
!317 = !DISubprogram(name: "read_next_xtc", scope: !1, file: !1, line: 164, type: !318, isLocal: false, isDefinition: true, scopeLine: 167, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, i32, i32*, float*, [3 x float]*, [3 x float]*, float*, i32*)* @read_next_xtc, variables: !320)
!318 = !DISubroutineType(types: !319)
!319 = !{!11, !11, !11, !303, !304, !236, !238, !304, !303}
!320 = !{!321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331}
!321 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !317, file: !1, line: 164, type: !11)
!322 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "natoms", arg: 2, scope: !317, file: !1, line: 165, type: !11)
!323 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "step", arg: 3, scope: !317, file: !1, line: 165, type: !303)
!324 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "time", arg: 4, scope: !317, file: !1, line: 165, type: !304)
!325 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "box", arg: 5, scope: !317, file: !1, line: 166, type: !236)
!326 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 6, scope: !317, file: !1, line: 166, type: !238)
!327 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "prec", arg: 7, scope: !317, file: !1, line: 166, type: !304)
!328 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bOK", arg: 8, scope: !317, file: !1, line: 166, type: !303)
!329 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "magic", scope: !317, file: !1, line: 168, type: !11)
!330 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !317, file: !1, line: 169, type: !11)
!331 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xd", scope: !317, file: !1, line: 170, type: !250)
!332 = !DISubprogram(name: "xtc_header", scope: !1, file: !1, line: 81, type: !333, isLocal: true, isDefinition: true, scopeLine: 83, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.XDR*, i32*, i32*, i32*, float*, i32*)* @xtc_header, variables: !335)
!333 = !DISubroutineType(types: !334)
!334 = !{!11, !250, !303, !303, !303, !304, !303}
!335 = !{!336, !337, !338, !339, !340, !341, !342}
!336 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xd", arg: 1, scope: !332, file: !1, line: 81, type: !250)
!337 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "magic", arg: 2, scope: !332, file: !1, line: 81, type: !303)
!338 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "natoms", arg: 3, scope: !332, file: !1, line: 81, type: !303)
!339 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "step", arg: 4, scope: !332, file: !1, line: 81, type: !303)
!340 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "time", arg: 5, scope: !332, file: !1, line: 81, type: !304)
!341 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bOK", arg: 6, scope: !332, file: !1, line: 82, type: !303)
!342 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !332, file: !1, line: 84, type: !11)
!343 = !DISubprogram(name: "xtc_coord", scope: !1, file: !1, line: 98, type: !344, isLocal: true, isDefinition: true, scopeLine: 99, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.XDR*, i32*, [3 x float]*, [3 x float]*, float*)* @xtc_coord, variables: !346)
!344 = !DISubroutineType(types: !345)
!345 = !{!11, !250, !303, !236, !238, !304}
!346 = !{!347, !348, !349, !350, !351, !352, !353, !354}
!347 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xd", arg: 1, scope: !343, file: !1, line: 98, type: !250)
!348 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "natoms", arg: 2, scope: !343, file: !1, line: 98, type: !303)
!349 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "box", arg: 3, scope: !343, file: !1, line: 98, type: !236)
!350 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 4, scope: !343, file: !1, line: 98, type: !238)
!351 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "prec", arg: 5, scope: !343, file: !1, line: 98, type: !304)
!352 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !343, file: !1, line: 100, type: !11)
!353 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !343, file: !1, line: 100, type: !11)
!354 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !343, file: !1, line: 100, type: !11)
!355 = !DISubprogram(name: "check_xtc_magic", scope: !1, file: !1, line: 55, type: !211, isLocal: true, isDefinition: true, scopeLine: 56, flags: DIFlagPrototyped, isOptimized: true, variables: !356)
!356 = !{!357}
!357 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "magic", arg: 1, scope: !355, file: !1, line: 55, type: !11)
!358 = !{}
!359 = !{i32 2, !"Dwarf Version", i32 2}
!360 = !{i32 2, !"Debug Info Version", i32 700000003}
!361 = !{i32 1, !"PIC Level", i32 2}
!362 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!363 = !DIExpression()
!364 = !DILocation(line: 348, column: 40, scope: !13)
!365 = !DILocation(line: 348, column: 50, scope: !13)
!366 = !DILocation(line: 349, column: 12, scope: !367)
!367 = distinct !DILexicalBlock(scope: !13, file: !14, line: 349, column: 6)
!368 = !DILocation(line: 349, column: 6, scope: !367)
!369 = !{!370, !374, i64 12}
!370 = !{!"__sFILE", !371, i64 0, !374, i64 8, !374, i64 12, !375, i64 16, !375, i64 18, !376, i64 24, !374, i64 40, !371, i64 48, !371, i64 56, !371, i64 64, !371, i64 72, !371, i64 80, !376, i64 88, !371, i64 104, !374, i64 112, !372, i64 116, !372, i64 119, !376, i64 120, !374, i64 136, !377, i64 144}
!371 = !{!"any pointer", !372, i64 0}
!372 = !{!"omnipotent char", !373, i64 0}
!373 = !{!"Simple C/C++ TBAA"}
!374 = !{!"int", !372, i64 0}
!375 = !{!"short", !372, i64 0}
!376 = !{!"__sbuf", !371, i64 0, !374, i64 8}
!377 = !{!"long long", !372, i64 0}
!378 = !DILocation(line: 349, column: 15, scope: !367)
!379 = !DILocation(line: 349, column: 20, scope: !367)
!380 = !DILocation(line: 350, column: 10, scope: !367)
!381 = !DILocation(line: 349, column: 38, scope: !367)
!382 = !{!370, !374, i64 40}
!383 = !DILocation(line: 349, column: 31, scope: !367)
!384 = !DILocation(line: 349, column: 59, scope: !367)
!385 = !DILocation(line: 349, column: 47, scope: !367)
!386 = !DILocation(line: 350, column: 23, scope: !367)
!387 = !DILocation(line: 350, column: 16, scope: !367)
!388 = !DILocation(line: 350, column: 18, scope: !367)
!389 = !{!370, !371, i64 0}
!390 = !DILocation(line: 350, column: 21, scope: !367)
!391 = !{!372, !372, i64 0}
!392 = !DILocation(line: 350, column: 3, scope: !367)
!393 = !DILocation(line: 352, column: 11, scope: !367)
!394 = !DILocation(line: 352, column: 3, scope: !367)
!395 = !DILocation(line: 353, column: 1, scope: !13)
!396 = !DILocation(line: 114, column: 15, scope: !81)
!397 = !DILocation(line: 116, column: 20, scope: !81)
!398 = !DILocation(line: 116, column: 12, scope: !81)
!399 = !DILocation(line: 116, column: 57, scope: !81)
!400 = !DILocation(line: 116, column: 45, scope: !81)
!401 = !DILocation(line: 116, column: 5, scope: !81)
!402 = !DILocation(line: 204, column: 53, scope: !87)
!403 = !DILocation(line: 205, column: 16, scope: !87)
!404 = !DILocation(line: 205, column: 23, scope: !87)
!405 = !DILocation(line: 205, column: 26, scope: !87)
!406 = !DILocation(line: 205, column: 47, scope: !87)
!407 = !DILocation(line: 205, column: 5, scope: !87)
!408 = !DILocation(line: 207, column: 54, scope: !94)
!409 = !DILocation(line: 208, column: 16, scope: !94)
!410 = !DILocation(line: 208, column: 23, scope: !94)
!411 = !DILocation(line: 208, column: 26, scope: !94)
!412 = !DILocation(line: 208, column: 46, scope: !94)
!413 = !DILocation(line: 208, column: 5, scope: !94)
!414 = !DILocation(line: 210, column: 59, scope: !100)
!415 = !DILocation(line: 211, column: 16, scope: !100)
!416 = !DILocation(line: 211, column: 23, scope: !100)
!417 = !DILocation(line: 211, column: 26, scope: !100)
!418 = !DILocation(line: 211, column: 47, scope: !100)
!419 = !DILocation(line: 211, column: 5, scope: !100)
!420 = !DILocation(line: 213, column: 50, scope: !106)
!421 = !DILocation(line: 214, column: 12, scope: !106)
!422 = !DILocation(line: 214, column: 33, scope: !106)
!423 = !DILocation(line: 214, column: 5, scope: !106)
!424 = !DILocation(line: 216, column: 51, scope: !109)
!425 = !DILocation(line: 217, column: 12, scope: !109)
!426 = !DILocation(line: 217, column: 32, scope: !109)
!427 = !DILocation(line: 217, column: 5, scope: !109)
!428 = !DILocation(line: 219, column: 56, scope: !112)
!429 = !DILocation(line: 220, column: 12, scope: !112)
!430 = !DILocation(line: 220, column: 33, scope: !112)
!431 = !DILocation(line: 220, column: 5, scope: !112)
!432 = !DILocation(line: 222, column: 50, scope: !115)
!433 = !DILocation(line: 223, column: 16, scope: !115)
!434 = !DILocation(line: 223, column: 5, scope: !115)
!435 = !DILocation(line: 225, column: 51, scope: !118)
!436 = !DILocation(line: 226, column: 16, scope: !118)
!437 = !DILocation(line: 226, column: 5, scope: !118)
!438 = !DILocation(line: 228, column: 56, scope: !121)
!439 = !DILocation(line: 229, column: 16, scope: !121)
!440 = !DILocation(line: 229, column: 5, scope: !121)
!441 = !DILocation(line: 231, column: 52, scope: !124)
!442 = !DILocation(line: 232, column: 44, scope: !124)
!443 = !DILocation(line: 233, column: 13, scope: !124)
!444 = !DILocation(line: 234, column: 26, scope: !124)
!445 = !DILocation(line: 234, column: 5, scope: !124)
!446 = !DILocation(line: 236, column: 53, scope: !133)
!447 = !DILocation(line: 237, column: 51, scope: !133)
!448 = !DILocation(line: 238, column: 13, scope: !133)
!449 = !DILocation(line: 239, column: 26, scope: !133)
!450 = !DILocation(line: 239, column: 12, scope: !133)
!451 = !DILocation(line: 239, column: 5, scope: !133)
!452 = !DILocation(line: 242, column: 58, scope: !142)
!453 = !DILocation(line: 246, column: 7, scope: !142)
!454 = !DILocation(line: 248, column: 26, scope: !142)
!455 = !DILocation(line: 248, column: 33, scope: !142)
!456 = !DILocation(line: 248, column: 5, scope: !142)
!457 = !DILocation(line: 257, column: 53, scope: !155)
!458 = !DILocation(line: 204, column: 53, scope: !87, inlinedAt: !459)
!459 = distinct !DILocation(line: 258, column: 12, scope: !155)
!460 = !DILocation(line: 205, column: 16, scope: !87, inlinedAt: !459)
!461 = !DILocation(line: 205, column: 47, scope: !87, inlinedAt: !459)
!462 = !DILocation(line: 205, column: 23, scope: !87, inlinedAt: !459)
!463 = !DILocation(line: 258, column: 60, scope: !155)
!464 = !DILocation(line: 258, column: 36, scope: !155)
!465 = !DILocation(line: 258, column: 5, scope: !155)
!466 = !DILocation(line: 260, column: 54, scope: !158)
!467 = !DILocation(line: 207, column: 54, scope: !94, inlinedAt: !468)
!468 = distinct !DILocation(line: 261, column: 12, scope: !158)
!469 = !DILocation(line: 208, column: 16, scope: !94, inlinedAt: !468)
!470 = !DILocation(line: 208, column: 46, scope: !94, inlinedAt: !468)
!471 = !DILocation(line: 208, column: 23, scope: !94, inlinedAt: !468)
!472 = !DILocation(line: 261, column: 59, scope: !158)
!473 = !DILocation(line: 261, column: 36, scope: !158)
!474 = !DILocation(line: 261, column: 5, scope: !158)
!475 = !DILocation(line: 263, column: 59, scope: !161)
!476 = !DILocation(line: 210, column: 59, scope: !100, inlinedAt: !477)
!477 = distinct !DILocation(line: 264, column: 12, scope: !161)
!478 = !DILocation(line: 211, column: 16, scope: !100, inlinedAt: !477)
!479 = !DILocation(line: 211, column: 47, scope: !100, inlinedAt: !477)
!480 = !DILocation(line: 211, column: 23, scope: !100, inlinedAt: !477)
!481 = !DILocation(line: 264, column: 60, scope: !161)
!482 = !DILocation(line: 264, column: 36, scope: !161)
!483 = !DILocation(line: 264, column: 5, scope: !161)
!484 = !DILocation(line: 642, column: 45, scope: !164)
!485 = !DILocation(line: 642, column: 57, scope: !164)
!486 = !DILocation(line: 642, column: 72, scope: !164)
!487 = !DILocation(line: 643, column: 27, scope: !164)
!488 = !DILocation(line: 643, column: 37, scope: !164)
!489 = !DILocation(line: 644, column: 23, scope: !164)
!490 = !DILocation(line: 644, column: 13, scope: !164)
!491 = !{!492, !492, i64 0}
!492 = !{!"float", !372, i64 0}
!493 = !DILocation(line: 644, column: 51, scope: !164)
!494 = !DILocation(line: 644, column: 41, scope: !164)
!495 = !DILocation(line: 645, column: 1, scope: !164)
!496 = !DILocation(line: 647, column: 45, scope: !178)
!497 = !DILocation(line: 647, column: 58, scope: !178)
!498 = !DILocation(line: 647, column: 74, scope: !178)
!499 = !DILocation(line: 648, column: 28, scope: !178)
!500 = !DILocation(line: 648, column: 38, scope: !178)
!501 = !DIExpression(DW_OP_bit_piece, 0, 64)
!502 = !DIExpression(DW_OP_bit_piece, 64, 64)
!503 = !DILocation(line: 649, column: 13, scope: !178)
!504 = !{!505, !505, i64 0}
!505 = !{!"double", !372, i64 0}
!506 = !DILocation(line: 649, column: 41, scope: !178)
!507 = !DILocation(line: 650, column: 1, scope: !178)
!508 = !DILocation(line: 652, column: 47, scope: !192)
!509 = !DILocation(line: 652, column: 59, scope: !192)
!510 = !DILocation(line: 652, column: 74, scope: !192)
!511 = !DILocation(line: 653, column: 27, scope: !192)
!512 = !DILocation(line: 653, column: 37, scope: !192)
!513 = !DILocation(line: 654, column: 23, scope: !192)
!514 = !DILocation(line: 654, column: 13, scope: !192)
!515 = !DILocation(line: 654, column: 51, scope: !192)
!516 = !DILocation(line: 654, column: 41, scope: !192)
!517 = !DILocation(line: 655, column: 1, scope: !192)
!518 = !DILocation(line: 657, column: 47, scope: !198)
!519 = !DILocation(line: 657, column: 60, scope: !198)
!520 = !DILocation(line: 657, column: 76, scope: !198)
!521 = !DILocation(line: 658, column: 28, scope: !198)
!522 = !DILocation(line: 658, column: 38, scope: !198)
!523 = !DILocation(line: 659, column: 13, scope: !198)
!524 = !DILocation(line: 659, column: 41, scope: !198)
!525 = !DILocation(line: 660, column: 1, scope: !198)
!526 = !DILocation(line: 45, column: 20, scope: !204)
!527 = !DILocation(line: 45, column: 29, scope: !204)
!528 = !DILocation(line: 47, column: 10, scope: !204)
!529 = !DILocation(line: 47, column: 3, scope: !204)
!530 = !DILocation(line: 50, column: 20, scope: !210)
!531 = !DILocation(line: 52, column: 3, scope: !210)
!532 = !DILocation(line: 53, column: 1, scope: !210)
!533 = !DILocation(line: 62, column: 21, scope: !215)
!534 = !DILocation(line: 62, column: 30, scope: !215)
!535 = !DILocation(line: 62, column: 44, scope: !215)
!536 = !DILocation(line: 62, column: 53, scope: !215)
!537 = !DILocation(line: 64, column: 8, scope: !538)
!538 = distinct !DILexicalBlock(scope: !215, file: !1, line: 64, column: 7)
!539 = !DILocation(line: 64, column: 7, scope: !215)
!540 = !DILocation(line: 65, column: 9, scope: !541)
!541 = distinct !DILexicalBlock(scope: !542, file: !1, line: 65, column: 9)
!542 = distinct !DILexicalBlock(scope: !538, file: !1, line: 64, column: 17)
!543 = !{!371, !371, i64 0}
!544 = !DILocation(line: 65, column: 9, scope: !542)
!545 = !DILocation(line: 66, column: 7, scope: !541)
!546 = !DILocation(line: 71, column: 1, scope: !215)
!547 = !DILocation(line: 73, column: 30, scope: !223)
!548 = !DILocation(line: 73, column: 39, scope: !223)
!549 = !DILocation(line: 73, column: 53, scope: !223)
!550 = !DILocation(line: 73, column: 62, scope: !223)
!551 = !DILocation(line: 75, column: 8, scope: !552)
!552 = distinct !DILexicalBlock(scope: !223, file: !1, line: 75, column: 7)
!553 = !DILocation(line: 75, column: 7, scope: !223)
!554 = !DILocation(line: 76, column: 5, scope: !555)
!555 = distinct !DILexicalBlock(scope: !552, file: !1, line: 75, column: 17)
!556 = !DILocation(line: 78, column: 3, scope: !555)
!557 = !DILocation(line: 79, column: 1, scope: !223)
!558 = !DILocation(line: 124, column: 19, scope: !231)
!559 = !DILocation(line: 125, column: 12, scope: !231)
!560 = !{!374, !374, i64 0}
!561 = !DILocation(line: 125, column: 23, scope: !231)
!562 = !DILocation(line: 125, column: 33, scope: !231)
!563 = !DILocation(line: 126, column: 15, scope: !231)
!564 = !DILocation(line: 126, column: 25, scope: !231)
!565 = !DILocation(line: 126, column: 32, scope: !231)
!566 = !DILocation(line: 128, column: 7, scope: !231)
!567 = !DILocation(line: 132, column: 8, scope: !231)
!568 = !DILocation(line: 129, column: 8, scope: !231)
!569 = !DILocation(line: 130, column: 8, scope: !231)
!570 = !DILocation(line: 134, column: 8, scope: !571)
!571 = distinct !DILexicalBlock(scope: !231, file: !1, line: 134, column: 7)
!572 = !DILocation(line: 134, column: 7, scope: !231)
!573 = !DILocation(line: 138, column: 10, scope: !231)
!574 = !DILocation(line: 138, column: 3, scope: !231)
!575 = !DILocation(line: 139, column: 1, scope: !231)
!576 = !DILocation(line: 81, column: 28, scope: !332)
!577 = !DILocation(line: 81, column: 36, scope: !332)
!578 = !DILocation(line: 81, column: 47, scope: !332)
!579 = !DILocation(line: 81, column: 59, scope: !332)
!580 = !DILocation(line: 81, column: 70, scope: !332)
!581 = !DILocation(line: 82, column: 15, scope: !332)
!582 = !DILocation(line: 86, column: 7, scope: !583)
!583 = distinct !DILexicalBlock(scope: !332, file: !1, line: 86, column: 7)
!584 = !DILocation(line: 86, column: 25, scope: !583)
!585 = !DILocation(line: 86, column: 7, scope: !332)
!586 = !DILocation(line: 88, column: 10, scope: !332)
!587 = !DILocation(line: 62, column: 21, scope: !215, inlinedAt: !588)
!588 = distinct !DILocation(line: 88, column: 10, scope: !332)
!589 = !DILocation(line: 62, column: 30, scope: !215, inlinedAt: !588)
!590 = !DILocation(line: 62, column: 44, scope: !215, inlinedAt: !588)
!591 = !DILocation(line: 62, column: 53, scope: !215, inlinedAt: !588)
!592 = !DILocation(line: 64, column: 8, scope: !538, inlinedAt: !588)
!593 = !DILocation(line: 64, column: 7, scope: !215, inlinedAt: !588)
!594 = !DILocation(line: 65, column: 9, scope: !541, inlinedAt: !588)
!595 = !DILocation(line: 65, column: 9, scope: !542, inlinedAt: !588)
!596 = !DILocation(line: 66, column: 7, scope: !541, inlinedAt: !588)
!597 = !DILocation(line: 90, column: 12, scope: !598)
!598 = distinct !DILexicalBlock(scope: !332, file: !1, line: 89, column: 7)
!599 = !DILocation(line: 62, column: 21, scope: !215, inlinedAt: !600)
!600 = distinct !DILocation(line: 90, column: 12, scope: !598)
!601 = !DILocation(line: 62, column: 30, scope: !215, inlinedAt: !600)
!602 = !DILocation(line: 62, column: 44, scope: !215, inlinedAt: !600)
!603 = !DILocation(line: 62, column: 53, scope: !215, inlinedAt: !600)
!604 = !DILocation(line: 64, column: 8, scope: !538, inlinedAt: !600)
!605 = !DILocation(line: 64, column: 7, scope: !215, inlinedAt: !600)
!606 = !DILocation(line: 65, column: 9, scope: !541, inlinedAt: !600)
!607 = !DILocation(line: 65, column: 9, scope: !542, inlinedAt: !600)
!608 = !DILocation(line: 66, column: 7, scope: !541, inlinedAt: !600)
!609 = !DILocation(line: 92, column: 12, scope: !610)
!610 = distinct !DILexicalBlock(scope: !332, file: !1, line: 91, column: 7)
!611 = !DILocation(line: 62, column: 21, scope: !215, inlinedAt: !612)
!612 = distinct !DILocation(line: 92, column: 12, scope: !610)
!613 = !DILocation(line: 62, column: 30, scope: !215, inlinedAt: !612)
!614 = !DILocation(line: 62, column: 44, scope: !215, inlinedAt: !612)
!615 = !DILocation(line: 62, column: 53, scope: !215, inlinedAt: !612)
!616 = !DILocation(line: 64, column: 8, scope: !538, inlinedAt: !612)
!617 = !DILocation(line: 64, column: 7, scope: !215, inlinedAt: !612)
!618 = !DILocation(line: 65, column: 9, scope: !541, inlinedAt: !612)
!619 = !DILocation(line: 65, column: 9, scope: !542, inlinedAt: !612)
!620 = !DILocation(line: 66, column: 7, scope: !541, inlinedAt: !612)
!621 = !DILocation(line: 93, column: 7, scope: !332)
!622 = !DILocation(line: 95, column: 3, scope: !332)
!623 = !DILocation(line: 96, column: 1, scope: !332)
!624 = !DILocation(line: 98, column: 27, scope: !343)
!625 = !DILocation(line: 98, column: 35, scope: !343)
!626 = !DILocation(line: 98, column: 49, scope: !343)
!627 = !DILocation(line: 98, column: 59, scope: !343)
!628 = !DILocation(line: 98, column: 67, scope: !343)
!629 = !DILocation(line: 100, column: 11, scope: !343)
!630 = !DILocation(line: 100, column: 7, scope: !343)
!631 = !DILocation(line: 104, column: 21, scope: !632)
!632 = distinct !DILexicalBlock(scope: !633, file: !1, line: 104, column: 3)
!633 = distinct !DILexicalBlock(scope: !343, file: !1, line: 104, column: 3)
!634 = !DILocation(line: 105, column: 23, scope: !635)
!635 = distinct !DILexicalBlock(scope: !636, file: !1, line: 105, column: 5)
!636 = distinct !DILexicalBlock(scope: !632, file: !1, line: 105, column: 5)
!637 = !DILocation(line: 106, column: 14, scope: !635)
!638 = !DILocation(line: 62, column: 21, scope: !215, inlinedAt: !639)
!639 = distinct !DILocation(line: 106, column: 14, scope: !635)
!640 = !DILocation(line: 62, column: 30, scope: !215, inlinedAt: !639)
!641 = !DILocation(line: 62, column: 44, scope: !215, inlinedAt: !639)
!642 = !DILocation(line: 62, column: 53, scope: !215, inlinedAt: !639)
!643 = !DILocation(line: 64, column: 8, scope: !538, inlinedAt: !639)
!644 = !DILocation(line: 64, column: 7, scope: !215, inlinedAt: !639)
!645 = !DILocation(line: 65, column: 9, scope: !541, inlinedAt: !639)
!646 = !DILocation(line: 65, column: 9, scope: !542, inlinedAt: !639)
!647 = !DILocation(line: 66, column: 7, scope: !541, inlinedAt: !639)
!648 = !DILocation(line: 105, column: 17, scope: !635)
!649 = !DILocation(line: 104, column: 15, scope: !632)
!650 = !DILocation(line: 110, column: 12, scope: !651)
!651 = distinct !DILexicalBlock(scope: !343, file: !1, line: 108, column: 7)
!652 = !DILocation(line: 62, column: 21, scope: !215, inlinedAt: !653)
!653 = distinct !DILocation(line: 110, column: 12, scope: !651)
!654 = !DILocation(line: 62, column: 30, scope: !215, inlinedAt: !653)
!655 = !DILocation(line: 62, column: 44, scope: !215, inlinedAt: !653)
!656 = !DILocation(line: 62, column: 53, scope: !215, inlinedAt: !653)
!657 = !DILocation(line: 64, column: 8, scope: !538, inlinedAt: !653)
!658 = !DILocation(line: 64, column: 7, scope: !215, inlinedAt: !653)
!659 = !DILocation(line: 65, column: 9, scope: !541, inlinedAt: !653)
!660 = !DILocation(line: 65, column: 9, scope: !542, inlinedAt: !653)
!661 = !DILocation(line: 66, column: 7, scope: !541, inlinedAt: !653)
!662 = !DILocation(line: 112, column: 3, scope: !343)
!663 = !DILocation(line: 141, column: 24, scope: !300)
!664 = !DILocation(line: 141, column: 32, scope: !300)
!665 = !DILocation(line: 141, column: 44, scope: !300)
!666 = !DILocation(line: 141, column: 55, scope: !300)
!667 = !DILocation(line: 142, column: 13, scope: !300)
!668 = !DILocation(line: 142, column: 24, scope: !300)
!669 = !DILocation(line: 142, column: 32, scope: !300)
!670 = !DILocation(line: 142, column: 43, scope: !300)
!671 = !DILocation(line: 147, column: 7, scope: !300)
!672 = !DILocation(line: 148, column: 8, scope: !300)
!673 = !DILocation(line: 145, column: 8, scope: !300)
!674 = !DILocation(line: 144, column: 7, scope: !300)
!675 = !DILocation(line: 151, column: 9, scope: !676)
!676 = distinct !DILexicalBlock(scope: !300, file: !1, line: 151, column: 8)
!677 = !DILocation(line: 151, column: 8, scope: !300)
!678 = !DILocation(line: 155, column: 19, scope: !300)
!679 = !DILocation(line: 55, column: 33, scope: !355, inlinedAt: !680)
!680 = distinct !DILocation(line: 155, column: 3, scope: !300)
!681 = !DILocation(line: 57, column: 13, scope: !682, inlinedAt: !680)
!682 = distinct !DILexicalBlock(scope: !355, file: !1, line: 57, column: 7)
!683 = !DILocation(line: 57, column: 7, scope: !355, inlinedAt: !680)
!684 = !DILocation(line: 58, column: 5, scope: !682, inlinedAt: !680)
!685 = !DILocation(line: 157, column: 3, scope: !300)
!686 = !DILocation(line: 159, column: 8, scope: !300)
!687 = !DILocation(line: 159, column: 7, scope: !300)
!688 = !DILocation(line: 161, column: 3, scope: !300)
!689 = !DILocation(line: 162, column: 1, scope: !300)
!690 = !DILocation(line: 164, column: 23, scope: !317)
!691 = !DILocation(line: 165, column: 9, scope: !317)
!692 = !DILocation(line: 165, column: 21, scope: !317)
!693 = !DILocation(line: 165, column: 32, scope: !317)
!694 = !DILocation(line: 166, column: 12, scope: !317)
!695 = !DILocation(line: 166, column: 22, scope: !317)
!696 = !DILocation(line: 166, column: 30, scope: !317)
!697 = !DILocation(line: 166, column: 41, scope: !317)
!698 = !DILocation(line: 172, column: 7, scope: !317)
!699 = !DILocation(line: 173, column: 8, scope: !317)
!700 = !DILocation(line: 170, column: 8, scope: !317)
!701 = !DILocation(line: 168, column: 7, scope: !317)
!702 = !DILocation(line: 169, column: 7, scope: !317)
!703 = !DILocation(line: 176, column: 8, scope: !704)
!704 = distinct !DILexicalBlock(scope: !317, file: !1, line: 176, column: 7)
!705 = !DILocation(line: 176, column: 7, scope: !317)
!706 = !DILocation(line: 178, column: 7, scope: !707)
!707 = distinct !DILexicalBlock(scope: !317, file: !1, line: 178, column: 7)
!708 = !DILocation(line: 178, column: 8, scope: !707)
!709 = !DILocation(line: 178, column: 7, scope: !317)
!710 = !DILocation(line: 179, column: 5, scope: !707)
!711 = !DILocation(line: 183, column: 19, scope: !317)
!712 = !DILocation(line: 55, column: 33, scope: !355, inlinedAt: !713)
!713 = distinct !DILocation(line: 183, column: 3, scope: !317)
!714 = !DILocation(line: 57, column: 13, scope: !682, inlinedAt: !713)
!715 = !DILocation(line: 57, column: 7, scope: !355, inlinedAt: !713)
!716 = !DILocation(line: 58, column: 5, scope: !682, inlinedAt: !713)
!717 = !DILocation(line: 185, column: 8, scope: !317)
!718 = !DILocation(line: 185, column: 7, scope: !317)
!719 = !DILocation(line: 187, column: 3, scope: !317)
!720 = !DILocation(line: 188, column: 1, scope: !317)
