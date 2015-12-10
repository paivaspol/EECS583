; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/libxdrf.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.XDR = type { i32, %struct.xdr_ops*, i8*, i8*, i8*, i32 }
%struct.xdr_ops = type { i32 (%struct.XDR*, i64*)*, i32 (%struct.XDR*, i64*)*, i32 (%struct.XDR*, i8*, i32)*, i32 (%struct.XDR*, i8*, i32)*, i32 (%struct.XDR*)*, i32 (%struct.XDR*, i32)*, i32* (%struct.XDR*, i32)*, void (%struct.XDR*)*, i32 (%struct.XDR*, i32*)*, i32 (%struct.XDR*, i32*)* }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%union.anon = type { float }
%union.anon.0 = type { double }
%union.anon.1 = type { x86_fp80 }
%struct.__float2 = type { float, float }
%struct.__double2 = type { double, double }

@xdropen.init_done = internal unnamed_addr global i1 false
@xdridptr = internal unnamed_addr global [20 x %struct.XDR*] zeroinitializer, align 16
@xdrfiles = internal unnamed_addr global [20 x %struct.__sFILE*] zeroinitializer, align 16
@xdrmodes = internal unnamed_addr global [20 x i8] zeroinitializer, align 16
@__stderrp = external global %struct.__sFILE*
@.str3 = private unnamed_addr constant [33 x i8] c"xdrclose: passed a NULL pointer\0A\00", align 1
@.str4 = private unnamed_addr constant [33 x i8] c"xdrclose: no such open xdr file\0A\00", align 1
@xdr3dfcoord.ip = internal unnamed_addr global i32* null, align 8
@xdr3dfcoord.oldsize = internal unnamed_addr global i32 0, align 4
@xdr3dfcoord.buf = internal unnamed_addr global i32* null, align 8
@.str5 = private unnamed_addr constant [31 x i8] c"xdr error. no open xdr stream\0A\00", align 1
@.str6 = private unnamed_addr constant [15 x i8] c"malloc failed\0A\00", align 1
@.str7 = private unnamed_addr constant [16 x i8] c"realloc failed\0A\00", align 1
@magicints = internal unnamed_addr constant [73 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 8, i32 10, i32 12, i32 16, i32 20, i32 25, i32 32, i32 40, i32 50, i32 64, i32 80, i32 101, i32 128, i32 161, i32 203, i32 256, i32 322, i32 406, i32 512, i32 645, i32 812, i32 1024, i32 1290, i32 1625, i32 2048, i32 2580, i32 3250, i32 4096, i32 5060, i32 6501, i32 8192, i32 10321, i32 13003, i32 16384, i32 20642, i32 26007, i32 32768, i32 41285, i32 52015, i32 65536, i32 82570, i32 104031, i32 131072, i32 165140, i32 208063, i32 262144, i32 330280, i32 416127, i32 524287, i32 660561, i32 832255, i32 1048576, i32 1321122, i32 1664510, i32 2097152, i32 2642245, i32 3329021, i32 4194304, i32 5284491, i32 6658042, i32 8388607, i32 10568983, i32 13316085, i32 16777216], align 16
@.str8 = private unnamed_addr constant [65 x i8] c"wrong number of coordinates in xdr3dfcoord; %d arg vs %d in file\00", align 1
@.str9 = private unnamed_addr constant [58 x i8] c"major breakdown in sendints num %u doesn't match size %u\0A\00", align 1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinitef(float %__x) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !84, metadata !435), !dbg !436
  %1 = fcmp ord float %__x, 0.000000e+00, !dbg !437
  br i1 %1, label %2, label %5, !dbg !438

; <label>:2                                       ; preds = %0
  %3 = tail call float @llvm.fabs.f32(float %__x) #9, !dbg !439
  %4 = fcmp une float %3, 0x7FF0000000000000, !dbg !440
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32, !dbg !438
  ret i32 %7, !dbg !441
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone
declare float @llvm.fabs.f32(float) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinited(double %__x) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !90, metadata !435), !dbg !442
  %1 = fcmp ord double %__x, 0.000000e+00, !dbg !443
  br i1 %1, label %2, label %5, !dbg !444

; <label>:2                                       ; preds = %0
  %3 = tail call double @llvm.fabs.f64(double %__x) #9, !dbg !445
  %4 = fcmp une double %3, 0x7FF0000000000000, !dbg !446
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32, !dbg !444
  ret i32 %7, !dbg !447
}

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinitel(x86_fp80 %__x) #0 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !96, metadata !435), !dbg !448
  %1 = fcmp ord x86_fp80 %__x, 0xK00000000000000000000, !dbg !449
  br i1 %1, label %2, label %5, !dbg !450

; <label>:2                                       ; preds = %0
  %3 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #9, !dbg !451
  %4 = fcmp une x86_fp80 %3, 0xK7FFF8000000000000000, !dbg !452
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32, !dbg !450
  ret i32 %7, !dbg !453
}

; Function Attrs: nounwind readnone
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinff(float %__x) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !99, metadata !435), !dbg !454
  %1 = tail call float @llvm.fabs.f32(float %__x) #9, !dbg !455
  %2 = fcmp oeq float %1, 0x7FF0000000000000, !dbg !456
  %3 = zext i1 %2 to i32, !dbg !456
  ret i32 %3, !dbg !457
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfd(double %__x) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !102, metadata !435), !dbg !458
  %1 = tail call double @llvm.fabs.f64(double %__x) #9, !dbg !459
  %2 = fcmp oeq double %1, 0x7FF0000000000000, !dbg !460
  %3 = zext i1 %2 to i32, !dbg !460
  ret i32 %3, !dbg !461
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfl(x86_fp80 %__x) #0 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !105, metadata !435), !dbg !462
  %1 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #9, !dbg !463
  %2 = fcmp oeq x86_fp80 %1, 0xK7FFF8000000000000000, !dbg !464
  %3 = zext i1 %2 to i32, !dbg !464
  ret i32 %3, !dbg !465
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnanf(float %__x) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !108, metadata !435), !dbg !466
  %1 = fcmp uno float %__x, 0.000000e+00, !dbg !467
  %2 = zext i1 %1 to i32, !dbg !467
  ret i32 %2, !dbg !468
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnand(double %__x) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !111, metadata !435), !dbg !469
  %1 = fcmp uno double %__x, 0.000000e+00, !dbg !470
  %2 = zext i1 %1 to i32, !dbg !470
  ret i32 %2, !dbg !471
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnanl(x86_fp80 %__x) #0 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !114, metadata !435), !dbg !472
  %1 = fcmp uno x86_fp80 %__x, 0xK00000000000000000000, !dbg !473
  %2 = zext i1 %1 to i32, !dbg !473
  ret i32 %2, !dbg !474
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitf(float %__x) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !117, metadata !435), !dbg !475
  tail call void @llvm.dbg.declare(metadata %union.anon* undef, metadata !118, metadata !435), !dbg !476
  %1 = bitcast float %__x to i32, !dbg !477
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !118, metadata !435), !dbg !476
  %2 = lshr i32 %1, 31, !dbg !478
  ret i32 %2, !dbg !479
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitd(double %__x) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !125, metadata !435), !dbg !480
  tail call void @llvm.dbg.declare(metadata %union.anon.0* undef, metadata !126, metadata !435), !dbg !481
  %1 = bitcast double %__x to i64, !dbg !482
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !126, metadata !435), !dbg !481
  %2 = lshr i64 %1, 63, !dbg !483
  %3 = trunc i64 %2 to i32, !dbg !484
  ret i32 %3, !dbg !485
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitl(x86_fp80 %__x) #0 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !134, metadata !435), !dbg !486
  tail call void @llvm.dbg.declare(metadata %union.anon.1* undef, metadata !135, metadata !435), !dbg !487
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !135, metadata !435), !dbg !487
  %1 = bitcast x86_fp80 %__x to i80, !dbg !488
  %2 = lshr i80 %1, 79, !dbg !488
  %3 = trunc i80 %2 to i32, !dbg !489
  ret i32 %3, !dbg !490
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormalf(float %__x) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !147, metadata !435), !dbg !491
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !84, metadata !435) #7, !dbg !492
  %1 = fcmp ord float %__x, 0.000000e+00, !dbg !494
  %2 = tail call float @llvm.fabs.f32(float %__x) #1
  %3 = fcmp une float %2, 0x7FF0000000000000, !dbg !495
  %or.cond = and i1 %1, %3, !dbg !496
  br i1 %or.cond, label %4, label %.critedge, !dbg !496

; <label>:4                                       ; preds = %0
  %5 = fcmp oge float %2, 0x3810000000000000, !dbg !497
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32, !dbg !498
  ret i32 %7, !dbg !499
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormald(double %__x) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !150, metadata !435), !dbg !500
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !90, metadata !435) #7, !dbg !501
  %1 = fcmp ord double %__x, 0.000000e+00, !dbg !503
  %2 = tail call double @llvm.fabs.f64(double %__x) #1
  %3 = fcmp une double %2, 0x7FF0000000000000, !dbg !504
  %or.cond = and i1 %1, %3, !dbg !505
  br i1 %or.cond, label %4, label %.critedge, !dbg !505

; <label>:4                                       ; preds = %0
  %5 = fcmp oge double %2, 0x10000000000000, !dbg !506
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32, !dbg !507
  ret i32 %7, !dbg !508
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormall(x86_fp80 %__x) #0 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !153, metadata !435), !dbg !509
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !96, metadata !435) #7, !dbg !510
  %1 = fcmp ord x86_fp80 %__x, 0xK00000000000000000000, !dbg !512
  %2 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #1
  %3 = fcmp une x86_fp80 %2, 0xK7FFF8000000000000000, !dbg !513
  %or.cond = and i1 %1, %3, !dbg !514
  br i1 %or.cond, label %4, label %.critedge, !dbg !514

; <label>:4                                       ; preds = %0
  %5 = fcmp oge x86_fp80 %2, 0xK00018000000000000000, !dbg !515
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32, !dbg !516
  ret i32 %7, !dbg !517
}

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincosf(float %__x, float* nocapture %__sinp, float* nocapture %__cosp) #2 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !159, metadata !435), !dbg !518
  tail call void @llvm.dbg.value(metadata float* %__sinp, i64 0, metadata !160, metadata !435), !dbg !519
  tail call void @llvm.dbg.value(metadata float* %__cosp, i64 0, metadata !161, metadata !435), !dbg !520
  tail call void @llvm.dbg.declare(metadata %struct.__float2* undef, metadata !162, metadata !435), !dbg !521
  %1 = tail call <2 x float> @__sincosf_stret(float %__x) #10, !dbg !522
  tail call void @llvm.dbg.value(metadata <2 x float> %1, i64 0, metadata !162, metadata !435), !dbg !521
  %2 = extractelement <2 x float> %1, i32 0, !dbg !523
  store float %2, float* %__sinp, align 4, !dbg !524, !tbaa !525
  %3 = extractelement <2 x float> %1, i32 1, !dbg !529
  store float %3, float* %__cosp, align 4, !dbg !530, !tbaa !525
  ret void, !dbg !531
}

; Function Attrs: optsize
declare <2 x float> @__sincosf_stret(float) #3

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincos(double %__x, double* nocapture %__sinp, double* nocapture %__cosp) #2 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !173, metadata !435), !dbg !532
  tail call void @llvm.dbg.value(metadata double* %__sinp, i64 0, metadata !174, metadata !435), !dbg !533
  tail call void @llvm.dbg.value(metadata double* %__cosp, i64 0, metadata !175, metadata !435), !dbg !534
  tail call void @llvm.dbg.declare(metadata %struct.__double2* undef, metadata !176, metadata !435), !dbg !535
  %1 = tail call { double, double } @__sincos_stret(double %__x) #10, !dbg !536
  %2 = extractvalue { double, double } %1, 0, !dbg !536
  tail call void @llvm.dbg.value(metadata double %2, i64 0, metadata !176, metadata !537), !dbg !535
  %3 = extractvalue { double, double } %1, 1, !dbg !536
  tail call void @llvm.dbg.value(metadata double %3, i64 0, metadata !176, metadata !538), !dbg !535
  store double %2, double* %__sinp, align 8, !dbg !539, !tbaa !540
  store double %3, double* %__cosp, align 8, !dbg !542, !tbaa !540
  ret void, !dbg !543
}

; Function Attrs: optsize
declare { double, double } @__sincos_stret(double) #3

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincospif(float %__x, float* nocapture %__sinp, float* nocapture %__cosp) #2 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !184, metadata !435), !dbg !544
  tail call void @llvm.dbg.value(metadata float* %__sinp, i64 0, metadata !185, metadata !435), !dbg !545
  tail call void @llvm.dbg.value(metadata float* %__cosp, i64 0, metadata !186, metadata !435), !dbg !546
  tail call void @llvm.dbg.declare(metadata %struct.__float2* undef, metadata !187, metadata !435), !dbg !547
  %1 = tail call <2 x float> @__sincospif_stret(float %__x) #10, !dbg !548
  tail call void @llvm.dbg.value(metadata <2 x float> %1, i64 0, metadata !187, metadata !435), !dbg !547
  %2 = extractelement <2 x float> %1, i32 0, !dbg !549
  store float %2, float* %__sinp, align 4, !dbg !550, !tbaa !525
  %3 = extractelement <2 x float> %1, i32 1, !dbg !551
  store float %3, float* %__cosp, align 4, !dbg !552, !tbaa !525
  ret void, !dbg !553
}

; Function Attrs: optsize
declare <2 x float> @__sincospif_stret(float) #3

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincospi(double %__x, double* nocapture %__sinp, double* nocapture %__cosp) #2 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !190, metadata !435), !dbg !554
  tail call void @llvm.dbg.value(metadata double* %__sinp, i64 0, metadata !191, metadata !435), !dbg !555
  tail call void @llvm.dbg.value(metadata double* %__cosp, i64 0, metadata !192, metadata !435), !dbg !556
  tail call void @llvm.dbg.declare(metadata %struct.__double2* undef, metadata !193, metadata !435), !dbg !557
  %1 = tail call { double, double } @__sincospi_stret(double %__x) #10, !dbg !558
  %2 = extractvalue { double, double } %1, 0, !dbg !558
  tail call void @llvm.dbg.value(metadata double %2, i64 0, metadata !193, metadata !537), !dbg !557
  %3 = extractvalue { double, double } %1, 1, !dbg !558
  tail call void @llvm.dbg.value(metadata double %3, i64 0, metadata !193, metadata !538), !dbg !557
  store double %2, double* %__sinp, align 8, !dbg !559, !tbaa !540
  store double %3, double* %__cosp, align 8, !dbg !560, !tbaa !540
  ret void, !dbg !561
}

; Function Attrs: optsize
declare { double, double } @__sincospi_stret(double) #3

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define i32 @__sputc(i32 %_c, %struct.__sFILE* %_p) #2 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !255, metadata !435), !dbg !562
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %_p, i64 0, metadata !256, metadata !435), !dbg !563
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2, !dbg !564
  %2 = load i32* %1, align 4, !dbg !566, !tbaa !567
  %3 = add nsw i32 %2, -1, !dbg !566
  store i32 %3, i32* %1, align 4, !dbg !566, !tbaa !567
  %4 = icmp sgt i32 %2, 0, !dbg !574
  br i1 %4, label %._crit_edge, label %5, !dbg !575

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255, !dbg !576
  br label %10, !dbg !575

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6, !dbg !577
  %7 = load i32* %6, align 4, !dbg !577, !tbaa !578
  %8 = icmp sle i32 %2, %7, !dbg !579
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10, !dbg !580
  %or.cond = or i1 %9, %8, !dbg !581
  br i1 %or.cond, label %15, label %10, !dbg !581

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ], !dbg !576
  %11 = trunc i32 %_c to i8, !dbg !582
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0, !dbg !583
  %13 = load i8** %12, align 8, !dbg !584, !tbaa !585
  %14 = getelementptr inbounds i8* %13, i64 1, !dbg !584
  store i8* %14, i8** %12, align 8, !dbg !584, !tbaa !585
  store i8 %11, i8* %13, align 1, !dbg !586, !tbaa !587
  br label %17, !dbg !588

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #10, !dbg !589
  br label %17, !dbg !590

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0, !dbg !591
}

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #3

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #0 {
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !262, metadata !435), !dbg !592
  %1 = icmp sgt i32 %__signo, 32, !dbg !593
  br i1 %1, label %5, label %2, !dbg !594

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !595
  %4 = shl i32 1, %3, !dbg !596
  br label %5, !dbg !594

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !594
  ret i32 %6, !dbg !597
}

; Function Attrs: nounwind optsize ssp uwtable
define i32 @xdropen(%struct.XDR* %xdrs, i8* %filename, i8* nocapture readonly %type) #4 {
  %newtype = alloca [5 x i8], align 4
  tail call void @llvm.dbg.value(metadata %struct.XDR* %xdrs, i64 0, metadata !267, metadata !435), !dbg !598
  tail call void @llvm.dbg.value(metadata i8* %filename, i64 0, metadata !268, metadata !435), !dbg !599
  tail call void @llvm.dbg.value(metadata i8* %type, i64 0, metadata !269, metadata !435), !dbg !600
  tail call void @llvm.dbg.declare(metadata [5 x i8]* %newtype, metadata !272, metadata !435), !dbg !601
  %.b = load i1* @xdropen.init_done, align 1
  br i1 %.b, label %.preheader, label %.preheader1, !dbg !602

.preheader1:                                      ; preds = %0
  call void @llvm.memset.p0i8.i64(i8* bitcast (%struct.XDR** getelementptr inbounds ([20 x %struct.XDR*]* @xdridptr, i64 0, i64 1) to i8*), i8 0, i64 152, i32 8, i1 false), !dbg !603
  store i1 true, i1* @xdropen.init_done, align 1
  br label %.preheader, !dbg !609

.preheader:                                       ; preds = %.preheader1, %0, %5
  %indvars.iv = phi i64 [ %indvars.iv.next, %5 ], [ 1, %0 ], [ 1, %.preheader1 ]
  %xdrid.12 = phi i32 [ %6, %5 ], [ 1, %0 ], [ 1, %.preheader1 ]
  %1 = getelementptr inbounds [20 x %struct.XDR*]* @xdridptr, i64 0, i64 %indvars.iv, !dbg !610
  %2 = load %struct.XDR** %1, align 8, !dbg !610, !tbaa !611
  %3 = icmp eq %struct.XDR* %2, null, !dbg !612
  %4 = trunc i64 %indvars.iv to i32, !dbg !613
  br i1 %3, label %.critedge, label %5, !dbg !613

; <label>:5                                       ; preds = %.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !614
  %6 = add nuw nsw i32 %xdrid.12, 1, !dbg !615
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !271, metadata !435), !dbg !617
  %7 = icmp slt i64 %indvars.iv.next, 20, !dbg !618
  br i1 %7, label %.preheader, label %.critedge, !dbg !614

.critedge:                                        ; preds = %.preheader, %5
  %xdrid.1.lcssa = phi i32 [ %4, %.preheader ], [ %6, %5 ]
  %8 = icmp eq i32 %xdrid.1.lcssa, 20, !dbg !619
  br i1 %8, label %34, label %9, !dbg !621

; <label>:9                                       ; preds = %.critedge
  %10 = load i8* %type, align 1, !dbg !622, !tbaa !587
  switch i8 %10, label %15 [
    i8 119, label %11
    i8 87, label %11
    i8 97, label %13
    i8 65, label %13
  ], !dbg !624

; <label>:11                                      ; preds = %9, %9
  %12 = bitcast [5 x i8]* %newtype to i32*, !dbg !625
  store i32 2843255, i32* %12, align 4, !dbg !625
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !270, metadata !435), !dbg !627
  br label %17, !dbg !628

; <label>:13                                      ; preds = %9, %9
  %14 = bitcast [5 x i8]* %newtype to i32*, !dbg !629
  store i32 2843233, i32* %14, align 4, !dbg !629
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !270, metadata !435), !dbg !627
  br label %17, !dbg !632

; <label>:15                                      ; preds = %9
  %16 = bitcast [5 x i8]* %newtype to i32*, !dbg !633
  store i32 2843250, i32* %16, align 4, !dbg !633
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !270, metadata !435), !dbg !627
  br label %17

; <label>:17                                      ; preds = %13, %15, %11
  %lmode.0 = phi i32 [ 0, %11 ], [ 0, %13 ], [ 1, %15 ]
  %18 = getelementptr inbounds [5 x i8]* %newtype, i64 0, i64 0, !dbg !635
  %19 = call %struct.__sFILE* @"\01_fopen"(i8* %filename, i8* %18) #10, !dbg !636
  %20 = sext i32 %xdrid.1.lcssa to i64, !dbg !637
  %21 = getelementptr inbounds [20 x %struct.__sFILE*]* @xdrfiles, i64 0, i64 %20, !dbg !637
  store %struct.__sFILE* %19, %struct.__sFILE** %21, align 8, !dbg !638, !tbaa !611
  %22 = icmp eq %struct.__sFILE* %19, null, !dbg !639
  br i1 %22, label %34, label %23, !dbg !641

; <label>:23                                      ; preds = %17
  %24 = load i8* %type, align 1, !dbg !642, !tbaa !587
  %25 = getelementptr inbounds [20 x i8]* @xdrmodes, i64 0, i64 %20, !dbg !643
  store i8 %24, i8* %25, align 1, !dbg !644, !tbaa !587
  %26 = icmp eq %struct.XDR* %xdrs, null, !dbg !645
  br i1 %26, label %27, label %32, !dbg !647

; <label>:27                                      ; preds = %23
  %28 = call i8* @malloc(i64 48) #10, !dbg !648
  %29 = bitcast i8* %28 to %struct.XDR*, !dbg !650
  %30 = getelementptr inbounds [20 x %struct.XDR*]* @xdridptr, i64 0, i64 %20, !dbg !651
  %31 = bitcast %struct.XDR** %30 to i8**, !dbg !652
  store i8* %28, i8** %31, align 8, !dbg !652, !tbaa !611
  call void @xdrstdio_create(%struct.XDR* %29, %struct.__sFILE* %19, i32 %lmode.0) #10, !dbg !653
  br label %34, !dbg !654

; <label>:32                                      ; preds = %23
  %33 = getelementptr inbounds [20 x %struct.XDR*]* @xdridptr, i64 0, i64 %20, !dbg !655
  store %struct.XDR* %xdrs, %struct.XDR** %33, align 8, !dbg !657, !tbaa !611
  call void @xdrstdio_create(%struct.XDR* %xdrs, %struct.__sFILE* %19, i32 %lmode.0) #10, !dbg !658
  br label %34

; <label>:34                                      ; preds = %27, %32, %17, %.critedge
  %.0 = phi i32 [ 0, %.critedge ], [ 0, %17 ], [ %xdrid.1.lcssa, %32 ], [ %xdrid.1.lcssa, %27 ]
  ret i32 %.0, !dbg !659
}

; Function Attrs: optsize
declare %struct.__sFILE* @"\01_fopen"(i8*, i8*) #3

; Function Attrs: nounwind optsize
declare noalias i8* @malloc(i64) #5

; Function Attrs: optsize
declare void @xdrstdio_create(%struct.XDR*, %struct.__sFILE*, i32) #3

; Function Attrs: nounwind optsize ssp uwtable
define i32 @xdrclose(%struct.XDR* %xdrs) #4 {
  tail call void @llvm.dbg.value(metadata %struct.XDR* %xdrs, i64 0, metadata !280, metadata !435), !dbg !660
  %1 = icmp eq %struct.XDR* %xdrs, null, !dbg !661
  br i1 %1, label %2, label %.preheader, !dbg !663

; <label>:2                                       ; preds = %0
  %3 = load %struct.__sFILE** @__stderrp, align 8, !dbg !664, !tbaa !611
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([33 x i8]* @.str3, i64 0, i64 0), i64 32, i64 1, %struct.__sFILE* %3), !dbg !666
  tail call void @exit(i32 1) #11, !dbg !667
  unreachable, !dbg !667

; <label>:5                                       ; preds = %.preheader
  %6 = icmp slt i64 %indvars.iv.next, 20, !dbg !668
  br i1 %6, label %.preheader, label %21, !dbg !671

.preheader:                                       ; preds = %0, %5
  %indvars.iv = phi i64 [ %indvars.iv.next, %5 ], [ 1, %0 ]
  %7 = getelementptr inbounds [20 x %struct.XDR*]* @xdridptr, i64 0, i64 %indvars.iv, !dbg !672
  %8 = load %struct.XDR** %7, align 8, !dbg !672, !tbaa !611
  %9 = icmp eq %struct.XDR* %8, %xdrs, !dbg !675
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !671
  br i1 %9, label %10, label %5, !dbg !676

; <label>:10                                      ; preds = %.preheader
  %11 = getelementptr inbounds %struct.XDR* %xdrs, i64 0, i32 1, !dbg !677
  %12 = load %struct.xdr_ops** %11, align 8, !dbg !677, !tbaa !681
  %13 = getelementptr inbounds %struct.xdr_ops* %12, i64 0, i32 7, !dbg !677
  %14 = load void (%struct.XDR*)** %13, align 8, !dbg !677, !tbaa !683
  %15 = icmp eq void (%struct.XDR*)* %14, null, !dbg !677
  br i1 %15, label %17, label %16, !dbg !685

; <label>:16                                      ; preds = %10
  tail call void %14(%struct.XDR* %xdrs) #10, !dbg !677
  br label %17, !dbg !677

; <label>:17                                      ; preds = %10, %16
  %18 = getelementptr inbounds [20 x %struct.__sFILE*]* @xdrfiles, i64 0, i64 %indvars.iv, !dbg !686
  %19 = load %struct.__sFILE** %18, align 8, !dbg !686, !tbaa !611
  %20 = tail call i32 @fclose(%struct.__sFILE* %19) #10, !dbg !687
  store %struct.XDR* null, %struct.XDR** %7, align 8, !dbg !688, !tbaa !611
  ret i32 1, !dbg !689

; <label>:21                                      ; preds = %5
  %22 = load %struct.__sFILE** @__stderrp, align 8, !dbg !690, !tbaa !611
  %23 = tail call i64 @fwrite(i8* getelementptr inbounds ([33 x i8]* @.str4, i64 0, i64 0), i64 32, i64 1, %struct.__sFILE* %22), !dbg !691
  tail call void @exit(i32 1) #11, !dbg !692
  unreachable, !dbg !692
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #5

; Function Attrs: noreturn optsize
declare void @exit(i32) #6

; Function Attrs: nounwind optsize
declare i32 @fclose(%struct.__sFILE* nocapture) #5

; Function Attrs: nounwind optsize ssp uwtable
define i32 @xdr3dfcoord(%struct.XDR* %xdrs, float* %fp, i32* %size, float* %precision) #4 {
  %minint = alloca [3 x i32], align 4
  %maxint = alloca [3 x i32], align 4
  %smallidx = alloca i32, align 4
  %sizeint = alloca [3 x i32], align 4
  %sizesmall = alloca [3 x i32], align 4
  %tmpcoord = alloca [30 x i32], align 16
  %lsize = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct.XDR* %xdrs, i64 0, metadata !286, metadata !435), !dbg !693
  tail call void @llvm.dbg.value(metadata float* %fp, i64 0, metadata !287, metadata !435), !dbg !694
  tail call void @llvm.dbg.value(metadata i32* %size, i64 0, metadata !288, metadata !435), !dbg !695
  tail call void @llvm.dbg.value(metadata float* %precision, i64 0, metadata !289, metadata !435), !dbg !696
  tail call void @llvm.dbg.declare(metadata [3 x i32]* %minint, metadata !290, metadata !435), !dbg !697
  tail call void @llvm.dbg.declare(metadata [3 x i32]* %maxint, metadata !292, metadata !435), !dbg !698
  tail call void @llvm.dbg.declare(metadata [3 x i32]* %sizeint, metadata !305, metadata !435), !dbg !699
  tail call void @llvm.dbg.declare(metadata [3 x i32]* %sizesmall, metadata !307, metadata !435), !dbg !700
  tail call void @llvm.dbg.declare(metadata [3 x i32]* undef, metadata !308, metadata !435), !dbg !701
  tail call void @llvm.dbg.declare(metadata [3 x i32]* undef, metadata !325, metadata !435), !dbg !702
  %1 = bitcast [30 x i32]* %tmpcoord to i8*, !dbg !703
  call void @llvm.lifetime.start(i64 120, i8* %1) #7, !dbg !703
  tail call void @llvm.dbg.declare(metadata [30 x i32]* %tmpcoord, metadata !326, metadata !435), !dbg !704
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !335, metadata !435), !dbg !705
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !331, metadata !435), !dbg !706
  br label %2, !dbg !707

; <label>:2                                       ; preds = %6, %0
  %indvars.iv166 = phi i64 [ %indvars.iv.next167, %6 ], [ 0, %0 ]
  %3 = getelementptr inbounds [20 x %struct.XDR*]* @xdridptr, i64 0, i64 %indvars.iv166, !dbg !708
  %4 = load %struct.XDR** %3, align 8, !dbg !708, !tbaa !611
  %5 = icmp eq %struct.XDR* %4, %xdrs, !dbg !709
  br i1 %5, label %11, label %6, !dbg !707

; <label>:6                                       ; preds = %2
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1, !dbg !710
  %7 = icmp sgt i64 %indvars.iv166, 18, !dbg !712
  br i1 %7, label %8, label %2, !dbg !710

; <label>:8                                       ; preds = %6
  %9 = load %struct.__sFILE** @__stderrp, align 8, !dbg !714, !tbaa !611
  %10 = tail call i64 @fwrite(i8* getelementptr inbounds ([31 x i8]* @.str5, i64 0, i64 0), i64 30, i64 1, %struct.__sFILE* %9), !dbg !716
  tail call void @exit(i32 1) #11, !dbg !717
  unreachable, !dbg !717

; <label>:11                                      ; preds = %2
  %12 = getelementptr inbounds [20 x i8]* @xdrmodes, i64 0, i64 %indvars.iv166, !dbg !718
  %13 = load i8* %12, align 1, !dbg !718, !tbaa !587
  switch i8 %13, label %442 [
    i8 119, label %14
    i8 97, label %14
  ], !dbg !720

; <label>:14                                      ; preds = %11, %11
  %15 = tail call i32 @xdr_int(%struct.XDR* %xdrs, i32* %size) #10, !dbg !721
  %16 = icmp eq i32 %15, 0, !dbg !724
  br i1 %16, label %.loopexit95, label %17, !dbg !725

; <label>:17                                      ; preds = %14
  %18 = load i32* %size, align 4, !dbg !726, !tbaa !727
  %19 = mul nsw i32 %18, 3, !dbg !728
  tail call void @llvm.dbg.value(metadata i32 %19, i64 0, metadata !309, metadata !435), !dbg !729
  %20 = icmp slt i32 %18, 10, !dbg !730
  br i1 %20, label %21, label %24, !dbg !732

; <label>:21                                      ; preds = %17
  %22 = bitcast float* %fp to i8*, !dbg !733
  %23 = tail call i32 @xdr_vector(%struct.XDR* %xdrs, i8* %22, i32 %19, i32 4, i32 (%struct.XDR*, i8*, ...)* bitcast (i32 (%struct.XDR*, float*)* @xdr_float to i32 (%struct.XDR*, i8*, ...)*)) #10, !dbg !735
  br label %.loopexit95, !dbg !736

; <label>:24                                      ; preds = %17
  %25 = tail call i32 @xdr_float(%struct.XDR* %xdrs, float* %precision) #10, !dbg !737
  %26 = load i32** @xdr3dfcoord.ip, align 8, !dbg !738, !tbaa !611
  %27 = icmp eq i32* %26, null, !dbg !740
  br i1 %27, label %28, label %50, !dbg !741

; <label>:28                                      ; preds = %24
  %29 = zext i32 %19 to i64, !dbg !742
  %30 = shl nuw nsw i64 %29, 2, !dbg !744
  %31 = tail call i8* @malloc(i64 %30) #10, !dbg !745
  store i8* %31, i8** bitcast (i32** @xdr3dfcoord.ip to i8**), align 8, !dbg !746, !tbaa !611
  %32 = icmp eq i8* %31, null, !dbg !747
  br i1 %32, label %33, label %36, !dbg !749

; <label>:33                                      ; preds = %28
  %34 = load %struct.__sFILE** @__stderrp, align 8, !dbg !750, !tbaa !611
  %35 = tail call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str6, i64 0, i64 0), i64 14, i64 1, %struct.__sFILE* %34), !dbg !752
  tail call void @exit(i32 1) #11, !dbg !753
  unreachable, !dbg !753

; <label>:36                                      ; preds = %28
  %37 = uitofp i32 %19 to double, !dbg !754
  %38 = fmul double %37, 1.200000e+00, !dbg !755
  %39 = fptosi double %38 to i32, !dbg !754
  tail call void @llvm.dbg.value(metadata i32 %39, i64 0, metadata !330, metadata !435), !dbg !756
  %40 = sext i32 %39 to i64, !dbg !757
  %41 = shl nsw i64 %40, 2, !dbg !758
  %42 = tail call i8* @malloc(i64 %41) #10, !dbg !759
  store i8* %42, i8** bitcast (i32** @xdr3dfcoord.buf to i8**), align 8, !dbg !760, !tbaa !611
  %43 = icmp eq i8* %42, null, !dbg !761
  br i1 %43, label %44, label %47, !dbg !763

; <label>:44                                      ; preds = %36
  %45 = load %struct.__sFILE** @__stderrp, align 8, !dbg !764, !tbaa !611
  %46 = tail call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str6, i64 0, i64 0), i64 14, i64 1, %struct.__sFILE* %45), !dbg !766
  tail call void @exit(i32 1) #11, !dbg !767
  unreachable, !dbg !767

; <label>:47                                      ; preds = %36
  %48 = bitcast i8* %42 to i32*
  %49 = load i32* %size, align 4, !dbg !768, !tbaa !727
  store i32 %49, i32* @xdr3dfcoord.oldsize, align 4, !dbg !769, !tbaa !727
  br label %.lr.ph144, !dbg !770

; <label>:50                                      ; preds = %24
  %51 = load i32* %size, align 4, !dbg !771, !tbaa !727
  %52 = load i32* @xdr3dfcoord.oldsize, align 4, !dbg !773, !tbaa !727
  %53 = icmp sgt i32 %51, %52, !dbg !774
  br i1 %53, label %54, label %._crit_edge168, !dbg !775

._crit_edge168:                                   ; preds = %50
  %.pre = load i32** @xdr3dfcoord.buf, align 8, !dbg !776, !tbaa !611
  %.pre189 = zext i32 %19 to i64, !dbg !777
  br label %.lr.ph144, !dbg !775

; <label>:54                                      ; preds = %50
  %55 = bitcast i32* %26 to i8*, !dbg !778
  %56 = zext i32 %19 to i64, !dbg !780
  %57 = shl nuw nsw i64 %56, 2, !dbg !781
  %58 = tail call i8* @realloc(i8* %55, i64 %57) #10, !dbg !782
  store i8* %58, i8** bitcast (i32** @xdr3dfcoord.ip to i8**), align 8, !dbg !783, !tbaa !611
  %59 = icmp eq i8* %58, null, !dbg !784
  br i1 %59, label %60, label %63, !dbg !786

; <label>:60                                      ; preds = %54
  %61 = load %struct.__sFILE** @__stderrp, align 8, !dbg !787, !tbaa !611
  %62 = tail call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str6, i64 0, i64 0), i64 14, i64 1, %struct.__sFILE* %61), !dbg !789
  tail call void @exit(i32 1) #11, !dbg !790
  unreachable, !dbg !790

; <label>:63                                      ; preds = %54
  %64 = uitofp i32 %19 to double, !dbg !791
  %65 = fmul double %64, 1.200000e+00, !dbg !792
  %66 = fptosi double %65 to i32, !dbg !791
  tail call void @llvm.dbg.value(metadata i32 %66, i64 0, metadata !330, metadata !435), !dbg !756
  %67 = load i8** bitcast (i32** @xdr3dfcoord.buf to i8**), align 8, !dbg !793, !tbaa !611
  %68 = sext i32 %66 to i64, !dbg !794
  %69 = shl nsw i64 %68, 2, !dbg !795
  %70 = tail call i8* @realloc(i8* %67, i64 %69) #10, !dbg !796
  store i8* %70, i8** bitcast (i32** @xdr3dfcoord.buf to i8**), align 8, !dbg !797, !tbaa !611
  %71 = icmp eq i8* %70, null, !dbg !798
  br i1 %71, label %72, label %75, !dbg !800

; <label>:72                                      ; preds = %63
  %73 = load %struct.__sFILE** @__stderrp, align 8, !dbg !801, !tbaa !611
  %74 = tail call i64 @fwrite(i8* getelementptr inbounds ([16 x i8]* @.str7, i64 0, i64 0), i64 15, i64 1, %struct.__sFILE* %73), !dbg !803
  tail call void @exit(i32 1) #11, !dbg !804
  unreachable, !dbg !804

; <label>:75                                      ; preds = %63
  %76 = bitcast i8* %70 to i32*
  %77 = load i32* %size, align 4, !dbg !805, !tbaa !727
  store i32 %77, i32* @xdr3dfcoord.oldsize, align 4, !dbg !806, !tbaa !727
  br label %.lr.ph144, !dbg !807

.lr.ph144:                                        ; preds = %47, %75, %._crit_edge168
  %.pre-phi190 = phi i64 [ %.pre189, %._crit_edge168 ], [ %56, %75 ], [ %29, %47 ], !dbg !777
  %78 = phi i32* [ %.pre, %._crit_edge168 ], [ %76, %75 ], [ %48, %47 ]
  %79 = getelementptr inbounds i32* %78, i64 2, !dbg !776
  store i32 0, i32* %79, align 4, !dbg !808, !tbaa !727
  %80 = getelementptr inbounds i32* %78, i64 1, !dbg !809
  store i32 0, i32* %80, align 4, !dbg !810, !tbaa !727
  store i32 0, i32* %78, align 4, !dbg !811, !tbaa !727
  %81 = getelementptr inbounds [3 x i32]* %minint, i64 0, i64 2, !dbg !812
  store i32 2147483647, i32* %81, align 4, !dbg !813, !tbaa !727
  %82 = getelementptr inbounds [3 x i32]* %minint, i64 0, i64 1, !dbg !814
  store i32 2147483647, i32* %82, align 4, !dbg !815, !tbaa !727
  %83 = getelementptr inbounds [3 x i32]* %minint, i64 0, i64 0, !dbg !816
  store i32 2147483647, i32* %83, align 4, !dbg !817, !tbaa !727
  %84 = getelementptr inbounds [3 x i32]* %maxint, i64 0, i64 2, !dbg !818
  store i32 -2147483648, i32* %84, align 4, !dbg !819, !tbaa !727
  %85 = getelementptr inbounds [3 x i32]* %maxint, i64 0, i64 1, !dbg !820
  store i32 -2147483648, i32* %85, align 4, !dbg !821, !tbaa !727
  %86 = getelementptr inbounds [3 x i32]* %maxint, i64 0, i64 0, !dbg !822
  store i32 -2147483648, i32* %86, align 4, !dbg !823, !tbaa !727
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !320, metadata !435), !dbg !824
  tail call void @llvm.dbg.value(metadata float* %fp, i64 0, metadata !321, metadata !435), !dbg !825
  tail call void @llvm.dbg.value(metadata i32* %88, i64 0, metadata !294, metadata !435), !dbg !826
  tail call void @llvm.dbg.value(metadata i32 2147483647, i64 0, metadata !293, metadata !435), !dbg !827
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !301, metadata !435), !dbg !828
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !300, metadata !435), !dbg !829
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !299, metadata !435), !dbg !830
  %87 = getelementptr inbounds float* %fp, i64 %.pre-phi190, !dbg !777
  %88 = load i32** @xdr3dfcoord.ip, align 8, !dbg !831, !tbaa !611
  %89 = load float* %precision, align 4, !dbg !832, !tbaa !525
  br label %90, !dbg !835

; <label>:90                                      ; preds = %.lr.ph144, %153
  %errval.0142 = phi i32 [ 1, %.lr.ph144 ], [ %errval.3, %153 ]
  %lfp.0141 = phi float* [ %fp, %.lr.ph144 ], [ %155, %153 ]
  %mindiff.0140 = phi i32 [ 2147483647, %.lr.ph144 ], [ %mindiff.1, %153 ]
  %lip.0139 = phi i32* [ %88, %.lr.ph144 ], [ %154, %153 ]
  %oldlint3.0138 = phi i32 [ 0, %.lr.ph144 ], [ %145, %153 ]
  %oldlint2.0137 = phi i32 [ 0, %.lr.ph144 ], [ %123, %153 ]
  %oldlint1.0136 = phi i32 [ 0, %.lr.ph144 ], [ %101, %153 ]
  %91 = load float* %lfp.0141, align 4, !dbg !836, !tbaa !525
  %92 = fcmp ult float %91, 0.000000e+00, !dbg !837
  %93 = fmul float %91, %89, !dbg !838
  br i1 %92, label %96, label %94, !dbg !839

; <label>:94                                      ; preds = %90
  %95 = fadd float %93, 5.000000e-01, !dbg !840
  tail call void @llvm.dbg.value(metadata float %95, i64 0, metadata !322, metadata !435), !dbg !841
  br label %98, !dbg !842

; <label>:96                                      ; preds = %90
  %97 = fadd float %93, -5.000000e-01, !dbg !843
  tail call void @llvm.dbg.value(metadata float %97, i64 0, metadata !322, metadata !435), !dbg !841
  br label %98

; <label>:98                                      ; preds = %96, %94
  %lf.0 = phi float [ %95, %94 ], [ %97, %96 ]
  %fabsf = tail call float @fabsf(float %lf.0) #12, !dbg !844
  %99 = fpext float %fabsf to double, !dbg !844
  %100 = fcmp ogt double %99, 0x41DFFFFFFF400000, !dbg !846
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !335, metadata !435), !dbg !705
  %101 = fptosi float %lf.0 to i32, !dbg !847
  tail call void @llvm.dbg.value(metadata i32 %101, i64 0, metadata !296, metadata !435), !dbg !848
  %102 = load i32* %83, align 4, !dbg !849, !tbaa !727
  %103 = icmp slt i32 %101, %102, !dbg !851
  br i1 %103, label %104, label %105, !dbg !852

; <label>:104                                     ; preds = %98
  store i32 %101, i32* %83, align 4, !dbg !853, !tbaa !727
  br label %105, !dbg !854

; <label>:105                                     ; preds = %104, %98
  %106 = load i32* %86, align 4, !dbg !855, !tbaa !727
  %107 = icmp sgt i32 %101, %106, !dbg !857
  br i1 %107, label %108, label %109, !dbg !858

; <label>:108                                     ; preds = %105
  store i32 %101, i32* %86, align 4, !dbg !859, !tbaa !727
  br label %109, !dbg !860

; <label>:109                                     ; preds = %108, %105
  %110 = getelementptr inbounds i32* %lip.0139, i64 1, !dbg !861
  tail call void @llvm.dbg.value(metadata i32* %110, i64 0, metadata !294, metadata !435), !dbg !826
  store i32 %101, i32* %lip.0139, align 4, !dbg !862, !tbaa !727
  %111 = getelementptr inbounds float* %lfp.0141, i64 1, !dbg !863
  tail call void @llvm.dbg.value(metadata float* %111, i64 0, metadata !321, metadata !435), !dbg !825
  %112 = load float* %111, align 4, !dbg !864, !tbaa !525
  %113 = fcmp ult float %112, 0.000000e+00, !dbg !866
  %114 = fmul float %112, %89, !dbg !867
  br i1 %113, label %117, label %115, !dbg !868

; <label>:115                                     ; preds = %109
  %116 = fadd float %114, 5.000000e-01, !dbg !869
  tail call void @llvm.dbg.value(metadata float %116, i64 0, metadata !322, metadata !435), !dbg !841
  br label %119, !dbg !870

; <label>:117                                     ; preds = %109
  %118 = fadd float %114, -5.000000e-01, !dbg !871
  tail call void @llvm.dbg.value(metadata float %118, i64 0, metadata !322, metadata !435), !dbg !841
  br label %119

; <label>:119                                     ; preds = %117, %115
  %lf.1 = phi float [ %116, %115 ], [ %118, %117 ]
  %fabsf41 = tail call float @fabsf(float %lf.1) #12, !dbg !872
  %120 = fpext float %fabsf41 to double, !dbg !872
  %121 = fcmp ogt double %120, 0x41DFFFFFFF400000, !dbg !874
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !335, metadata !435), !dbg !705
  %122 = or i1 %100, %121, !dbg !875
  %123 = fptosi float %lf.1 to i32, !dbg !876
  tail call void @llvm.dbg.value(metadata i32 %123, i64 0, metadata !297, metadata !435), !dbg !877
  %124 = load i32* %82, align 4, !dbg !878, !tbaa !727
  %125 = icmp slt i32 %123, %124, !dbg !880
  br i1 %125, label %126, label %127, !dbg !881

; <label>:126                                     ; preds = %119
  store i32 %123, i32* %82, align 4, !dbg !882, !tbaa !727
  br label %127, !dbg !883

; <label>:127                                     ; preds = %126, %119
  %128 = load i32* %85, align 4, !dbg !884, !tbaa !727
  %129 = icmp sgt i32 %123, %128, !dbg !886
  br i1 %129, label %130, label %131, !dbg !887

; <label>:130                                     ; preds = %127
  store i32 %123, i32* %85, align 4, !dbg !888, !tbaa !727
  br label %131, !dbg !889

; <label>:131                                     ; preds = %130, %127
  %132 = getelementptr inbounds i32* %lip.0139, i64 2, !dbg !890
  tail call void @llvm.dbg.value(metadata i32* %132, i64 0, metadata !294, metadata !435), !dbg !826
  store i32 %123, i32* %110, align 4, !dbg !891, !tbaa !727
  %133 = getelementptr inbounds float* %lfp.0141, i64 2, !dbg !892
  tail call void @llvm.dbg.value(metadata float* %133, i64 0, metadata !321, metadata !435), !dbg !825
  %134 = load float* %133, align 4, !dbg !893, !tbaa !525
  %135 = fcmp ult float %134, 0.000000e+00, !dbg !895
  %136 = fmul float %134, %89, !dbg !896
  br i1 %135, label %139, label %137, !dbg !897

; <label>:137                                     ; preds = %131
  %138 = fadd float %136, 5.000000e-01, !dbg !898
  tail call void @llvm.dbg.value(metadata float %138, i64 0, metadata !322, metadata !435), !dbg !841
  br label %141, !dbg !899

; <label>:139                                     ; preds = %131
  %140 = fadd float %136, -5.000000e-01, !dbg !900
  tail call void @llvm.dbg.value(metadata float %140, i64 0, metadata !322, metadata !435), !dbg !841
  br label %141

; <label>:141                                     ; preds = %139, %137
  %lf.2 = phi float [ %138, %137 ], [ %140, %139 ]
  %fabsf42 = tail call float @fabsf(float %lf.2) #12, !dbg !901
  %142 = fpext float %fabsf42 to double, !dbg !901
  %143 = fcmp ogt double %142, 0x41DFFFFFFF400000, !dbg !903
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !335, metadata !435), !dbg !705
  %144 = or i1 %122, %143, !dbg !904
  %errval.3 = select i1 %144, i32 0, i32 %errval.0142, !dbg !904
  %145 = fptosi float %lf.2 to i32, !dbg !905
  tail call void @llvm.dbg.value(metadata i32 %145, i64 0, metadata !298, metadata !435), !dbg !906
  %146 = load i32* %81, align 4, !dbg !907, !tbaa !727
  %147 = icmp slt i32 %145, %146, !dbg !909
  br i1 %147, label %148, label %149, !dbg !910

; <label>:148                                     ; preds = %141
  store i32 %145, i32* %81, align 4, !dbg !911, !tbaa !727
  br label %149, !dbg !912

; <label>:149                                     ; preds = %148, %141
  %150 = load i32* %84, align 4, !dbg !913, !tbaa !727
  %151 = icmp sgt i32 %145, %150, !dbg !915
  br i1 %151, label %152, label %153, !dbg !916

; <label>:152                                     ; preds = %149
  store i32 %145, i32* %84, align 4, !dbg !917, !tbaa !727
  br label %153, !dbg !918

; <label>:153                                     ; preds = %152, %149
  %154 = getelementptr inbounds i32* %lip.0139, i64 3, !dbg !919
  tail call void @llvm.dbg.value(metadata i32* %154, i64 0, metadata !294, metadata !435), !dbg !826
  store i32 %145, i32* %132, align 4, !dbg !920, !tbaa !727
  %155 = getelementptr inbounds float* %lfp.0141, i64 3, !dbg !921
  tail call void @llvm.dbg.value(metadata float* %155, i64 0, metadata !321, metadata !435), !dbg !825
  %156 = sub nsw i32 %oldlint1.0136, %101, !dbg !922
  %ispos43 = icmp sgt i32 %156, -1, !dbg !923
  %neg44 = sub i32 0, %156, !dbg !923
  %157 = select i1 %ispos43, i32 %156, i32 %neg44, !dbg !923
  %158 = sub nsw i32 %oldlint2.0137, %123, !dbg !924
  %ispos45 = icmp sgt i32 %158, -1, !dbg !925
  %neg46 = sub i32 0, %158, !dbg !925
  %159 = select i1 %ispos45, i32 %158, i32 %neg46, !dbg !925
  %160 = add nsw i32 %159, %157, !dbg !926
  %161 = sub nsw i32 %oldlint3.0138, %145, !dbg !927
  %ispos47 = icmp sgt i32 %161, -1, !dbg !928
  %neg48 = sub i32 0, %161, !dbg !928
  %162 = select i1 %ispos47, i32 %161, i32 %neg48, !dbg !928
  %163 = add nsw i32 %160, %162, !dbg !929
  tail call void @llvm.dbg.value(metadata i32 %163, i64 0, metadata !295, metadata !435), !dbg !930
  %164 = icmp slt i32 %163, %mindiff.0140, !dbg !931
  %165 = icmp ugt float* %lfp.0141, %fp, !dbg !933
  %or.cond49 = and i1 %165, %164, !dbg !934
  tail call void @llvm.dbg.value(metadata i32 %163, i64 0, metadata !293, metadata !435), !dbg !827
  %mindiff.1 = select i1 %or.cond49, i32 %163, i32 %mindiff.0140, !dbg !934
  %166 = icmp ult float* %155, %87, !dbg !935
  br i1 %166, label %90, label %._crit_edge145, !dbg !835

._crit_edge145:                                   ; preds = %153
  %167 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %83) #10, !dbg !936
  %168 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %82) #10, !dbg !937
  %169 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %81) #10, !dbg !938
  %170 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %86) #10, !dbg !939
  %171 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %85) #10, !dbg !940
  %172 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %84) #10, !dbg !941
  %173 = load i32* %86, align 4, !dbg !942, !tbaa !727
  %174 = sitofp i32 %173 to float, !dbg !944
  %175 = load i32* %83, align 4, !dbg !945, !tbaa !727
  %176 = sitofp i32 %175 to float, !dbg !946
  %177 = fsub float %174, %176, !dbg !947
  %178 = fcmp ult float %177, 0x41E0000000000000, !dbg !948
  %179 = load i32* %85, align 4, !dbg !949, !tbaa !727
  br i1 %178, label %180, label %._crit_edge186, !dbg !950

._crit_edge186:                                   ; preds = %._crit_edge145
  %.pre170.pre = load i32* %82, align 4, !dbg !951, !tbaa !727
  br label %193, !dbg !950

; <label>:180                                     ; preds = %._crit_edge145
  %181 = sitofp i32 %179 to float, !dbg !952
  %182 = load i32* %82, align 4, !dbg !953, !tbaa !727
  %183 = sitofp i32 %182 to float, !dbg !954
  %184 = fsub float %181, %183, !dbg !955
  %185 = fcmp ult float %184, 0x41E0000000000000, !dbg !956
  br i1 %185, label %186, label %193, !dbg !957

; <label>:186                                     ; preds = %180
  %187 = load i32* %84, align 4, !dbg !958, !tbaa !727
  %188 = sitofp i32 %187 to float, !dbg !959
  %189 = load i32* %81, align 4, !dbg !960, !tbaa !727
  %190 = sitofp i32 %189 to float, !dbg !961
  %191 = fsub float %188, %190, !dbg !962
  %192 = fcmp ult float %191, 0x41E0000000000000, !dbg !963
  br i1 %192, label %194, label %193, !dbg !964

; <label>:193                                     ; preds = %._crit_edge186, %186, %180
  %.pre170 = phi i32 [ %.pre170.pre, %._crit_edge186 ], [ %182, %186 ], [ %182, %180 ]
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !335, metadata !435), !dbg !705
  %.pre171 = load i32* %84, align 4, !dbg !965, !tbaa !727
  %.pre172 = load i32* %81, align 4, !dbg !966, !tbaa !727
  br label %194, !dbg !967

; <label>:194                                     ; preds = %186, %193
  %195 = phi i32 [ %.pre172, %193 ], [ %189, %186 ]
  %196 = phi i32 [ %.pre171, %193 ], [ %187, %186 ]
  %197 = phi i32 [ %.pre170, %193 ], [ %182, %186 ]
  %errval.4 = phi i32 [ 0, %193 ], [ %errval.3, %186 ]
  %198 = add i32 %173, 1, !dbg !969
  %199 = sub i32 %198, %175, !dbg !970
  %200 = getelementptr inbounds [3 x i32]* %sizeint, i64 0, i64 0, !dbg !971
  store i32 %199, i32* %200, align 4, !dbg !972, !tbaa !727
  %201 = add i32 %179, 1, !dbg !973
  %202 = sub i32 %201, %197, !dbg !974
  %203 = getelementptr inbounds [3 x i32]* %sizeint, i64 0, i64 1, !dbg !975
  store i32 %202, i32* %203, align 4, !dbg !976, !tbaa !727
  %204 = sub nsw i32 %196, %195, !dbg !977
  %205 = add nsw i32 %204, 1, !dbg !978
  %206 = getelementptr inbounds [3 x i32]* %sizeint, i64 0, i64 2, !dbg !979
  store i32 %205, i32* %206, align 4, !dbg !980, !tbaa !727
  %207 = or i32 %202, %199, !dbg !981
  %208 = or i32 %207, %205, !dbg !983
  %209 = icmp ugt i32 %208, 16777215, !dbg !984
  br i1 %209, label %210, label %220, !dbg !985

; <label>:210                                     ; preds = %194
  tail call void @llvm.dbg.value(metadata i32 %199, i64 0, metadata !341, metadata !435), !dbg !986
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !342, metadata !435), !dbg !989
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !343, metadata !435), !dbg !990
  %not.1.i = icmp eq i32 %198, %175, !dbg !991
  br i1 %not.1.i, label %sizeofint.exit, label %.lr.ph.i, !dbg !992

.lr.ph.i:                                         ; preds = %210, %.lr.ph.i
  %num_of_bits.03.i = phi i32 [ %211, %.lr.ph.i ], [ 0, %210 ], !dbg !993
  %num.02.i = phi i32 [ %212, %.lr.ph.i ], [ 1, %210 ], !dbg !993
  %211 = add nuw nsw i32 %num_of_bits.03.i, 1, !dbg !994
  tail call void @llvm.dbg.value(metadata i32 %211, i64 0, metadata !343, metadata !435), !dbg !990
  %212 = shl i32 %num.02.i, 1, !dbg !996
  tail call void @llvm.dbg.value(metadata i32 %212, i64 0, metadata !342, metadata !435), !dbg !989
  %213 = icmp slt i32 %211, 32, !dbg !997
  %not..i = icmp ule i32 %212, %199, !dbg !991
  %..i = and i1 %213, %not..i, !dbg !991
  br i1 %..i, label %.lr.ph.i, label %sizeofint.exit, !dbg !992

sizeofint.exit:                                   ; preds = %.lr.ph.i, %210
  %num_of_bits.0.lcssa.i = phi i32 [ 0, %210 ], [ %211, %.lr.ph.i ], !dbg !993
  call void @llvm.dbg.value(metadata i32 %num_of_bits.0.lcssa.i, i64 0, metadata !308, metadata !998), !dbg !701
  tail call void @llvm.dbg.value(metadata i32 %202, i64 0, metadata !341, metadata !435), !dbg !999
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !342, metadata !435), !dbg !1001
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !343, metadata !435), !dbg !1002
  %not.1.i52 = icmp eq i32 %201, %197, !dbg !1003
  br i1 %not.1.i52, label %sizeofint.exit59, label %.lr.ph.i57, !dbg !1004

.lr.ph.i57:                                       ; preds = %sizeofint.exit, %.lr.ph.i57
  %num_of_bits.03.i53 = phi i32 [ %214, %.lr.ph.i57 ], [ 0, %sizeofint.exit ], !dbg !1005
  %num.02.i54 = phi i32 [ %215, %.lr.ph.i57 ], [ 1, %sizeofint.exit ], !dbg !1005
  %214 = add nuw nsw i32 %num_of_bits.03.i53, 1, !dbg !1006
  tail call void @llvm.dbg.value(metadata i32 %214, i64 0, metadata !343, metadata !435), !dbg !1002
  %215 = shl i32 %num.02.i54, 1, !dbg !1007
  tail call void @llvm.dbg.value(metadata i32 %215, i64 0, metadata !342, metadata !435), !dbg !1001
  %216 = icmp slt i32 %214, 32, !dbg !1008
  %not..i55 = icmp ule i32 %215, %202, !dbg !1003
  %..i56 = and i1 %216, %not..i55, !dbg !1003
  br i1 %..i56, label %.lr.ph.i57, label %sizeofint.exit59, !dbg !1004

sizeofint.exit59:                                 ; preds = %.lr.ph.i57, %sizeofint.exit
  %num_of_bits.0.lcssa.i58 = phi i32 [ 0, %sizeofint.exit ], [ %214, %.lr.ph.i57 ], !dbg !1005
  call void @llvm.dbg.value(metadata i32 %num_of_bits.0.lcssa.i58, i64 0, metadata !308, metadata !1009), !dbg !701
  tail call void @llvm.dbg.value(metadata i32 %205, i64 0, metadata !341, metadata !435), !dbg !1010
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !342, metadata !435), !dbg !1012
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !343, metadata !435), !dbg !1013
  %not.1.i60 = icmp eq i32 %205, 0, !dbg !1014
  br i1 %not.1.i60, label %sizeofint.exit67, label %.lr.ph.i65, !dbg !1015

.lr.ph.i65:                                       ; preds = %sizeofint.exit59, %.lr.ph.i65
  %num_of_bits.03.i61 = phi i32 [ %217, %.lr.ph.i65 ], [ 0, %sizeofint.exit59 ], !dbg !1016
  %num.02.i62 = phi i32 [ %218, %.lr.ph.i65 ], [ 1, %sizeofint.exit59 ], !dbg !1016
  %217 = add nuw nsw i32 %num_of_bits.03.i61, 1, !dbg !1017
  tail call void @llvm.dbg.value(metadata i32 %217, i64 0, metadata !343, metadata !435), !dbg !1013
  %218 = shl i32 %num.02.i62, 1, !dbg !1018
  tail call void @llvm.dbg.value(metadata i32 %218, i64 0, metadata !342, metadata !435), !dbg !1012
  %219 = icmp slt i32 %217, 32, !dbg !1019
  %not..i63 = icmp ule i32 %218, %205, !dbg !1014
  %..i64 = and i1 %219, %not..i63, !dbg !1014
  br i1 %..i64, label %.lr.ph.i65, label %sizeofint.exit67, !dbg !1015

; <label>:220                                     ; preds = %194
  %221 = call fastcc i32 @sizeofints(i32* %200) #13, !dbg !1020
  call void @llvm.dbg.value(metadata i32 %221, i64 0, metadata !333, metadata !435), !dbg !1022
  br label %sizeofint.exit67

sizeofint.exit67:                                 ; preds = %.lr.ph.i65, %sizeofint.exit59, %220
  %bitsizeint.sroa.8.0 = phi i32 [ undef, %220 ], [ 0, %sizeofint.exit59 ], [ %217, %.lr.ph.i65 ]
  %bitsizeint.sroa.4.0 = phi i32 [ undef, %220 ], [ %num_of_bits.0.lcssa.i58, %sizeofint.exit59 ], [ %num_of_bits.0.lcssa.i58, %.lr.ph.i65 ]
  %bitsizeint.sroa.0.0 = phi i32 [ undef, %220 ], [ %num_of_bits.0.lcssa.i, %sizeofint.exit59 ], [ %num_of_bits.0.lcssa.i, %.lr.ph.i65 ]
  %bitsize.0 = phi i32 [ %221, %220 ], [ 0, %sizeofint.exit59 ], [ 0, %.lr.ph.i65 ]
  %222 = load i32** @xdr3dfcoord.ip, align 8, !dbg !1023, !tbaa !611
  call void @llvm.dbg.value(metadata i32* %222, i64 0, metadata !310, metadata !435), !dbg !1024
  call void @llvm.dbg.value(metadata i32 9, i64 0, metadata !302, metadata !435), !dbg !1025
  store i32 9, i32* %smallidx, align 4, !dbg !1026, !tbaa !727
  call void @llvm.dbg.value(metadata i32* %smallidx, i64 0, metadata !302, metadata !435), !dbg !1025
  br label %226, !dbg !1028

; <label>:223                                     ; preds = %226
  %224 = trunc i64 %indvars.iv.next165 to i32, !dbg !1026
  store i32 %224, i32* %smallidx, align 4, !dbg !1026, !tbaa !727
  call void @llvm.dbg.value(metadata i32* %smallidx, i64 0, metadata !302, metadata !435), !dbg !1025
  %225 = icmp ult i32 %224, 73, !dbg !1029
  br i1 %225, label %226, label %.critedge, !dbg !1028

; <label>:226                                     ; preds = %sizeofint.exit67, %223
  %indvars.iv164 = phi i64 [ 9, %sizeofint.exit67 ], [ %indvars.iv.next165, %223 ]
  %227 = getelementptr inbounds [73 x i32]* @magicints, i64 0, i64 %indvars.iv164, !dbg !1030
  %228 = load i32* %227, align 4, !dbg !1030, !tbaa !727
  %229 = icmp slt i32 %228, %mindiff.1, !dbg !1031
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1, !dbg !1028
  br i1 %229, label %223, label %.critedge, !dbg !1032

.critedge:                                        ; preds = %223, %226
  call void @llvm.dbg.value(metadata i32* %smallidx, i64 0, metadata !302, metadata !435), !dbg !1025
  %230 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %smallidx) #10, !dbg !1033
  call void @llvm.dbg.value(metadata i32* %smallidx, i64 0, metadata !302, metadata !435), !dbg !1025
  %231 = load i32* %smallidx, align 4, !dbg !1034, !tbaa !727
  %232 = add nsw i32 %231, 8, !dbg !1034
  %233 = icmp ugt i32 %232, 73, !dbg !1034
  %. = select i1 %233, i32 73, i32 %232, !dbg !1034
  call void @llvm.dbg.value(metadata i32 %., i64 0, metadata !304, metadata !435), !dbg !1035
  %234 = add nsw i32 %., -8, !dbg !1036
  call void @llvm.dbg.value(metadata i32 %234, i64 0, metadata !303, metadata !435), !dbg !1037
  call void @llvm.dbg.value(metadata i32* %smallidx, i64 0, metadata !302, metadata !435), !dbg !1025
  %235 = icmp slt i32 %231, 10, !dbg !1038
  %236 = add nsw i32 %231, -1, !dbg !1038
  %237 = sext i32 %236 to i64, !dbg !1039
  %238 = select i1 %235, i64 9, i64 %237, !dbg !1039
  %239 = getelementptr inbounds [73 x i32]* @magicints, i64 0, i64 %238, !dbg !1039
  %240 = load i32* %239, align 4, !dbg !1039, !tbaa !727
  %241 = sdiv i32 %240, 2, !dbg !1040
  call void @llvm.dbg.value(metadata i32 %241, i64 0, metadata !314, metadata !435), !dbg !1041
  call void @llvm.dbg.value(metadata i32* %smallidx, i64 0, metadata !302, metadata !435), !dbg !1025
  %242 = sext i32 %231 to i64, !dbg !1042
  %243 = getelementptr inbounds [73 x i32]* @magicints, i64 0, i64 %242, !dbg !1042
  %244 = load i32* %243, align 4, !dbg !1042, !tbaa !727
  %245 = sdiv i32 %244, 2, !dbg !1043
  call void @llvm.dbg.value(metadata i32 %245, i64 0, metadata !313, metadata !435), !dbg !1044
  %246 = getelementptr inbounds [3 x i32]* %sizesmall, i64 0, i64 2, !dbg !1045
  store i32 %244, i32* %246, align 4, !dbg !1046, !tbaa !727
  %247 = getelementptr inbounds [3 x i32]* %sizesmall, i64 0, i64 1, !dbg !1047
  store i32 %244, i32* %247, align 4, !dbg !1048, !tbaa !727
  %248 = getelementptr inbounds [3 x i32]* %sizesmall, i64 0, i64 0, !dbg !1049
  store i32 %244, i32* %248, align 4, !dbg !1050, !tbaa !727
  %249 = sext i32 %. to i64, !dbg !1051
  %250 = getelementptr inbounds [73 x i32]* @magicints, i64 0, i64 %249, !dbg !1051
  %251 = load i32* %250, align 4, !dbg !1051, !tbaa !727
  %252 = sdiv i32 %251, 2, !dbg !1052
  call void @llvm.dbg.value(metadata i32 %252, i64 0, metadata !315, metadata !435), !dbg !1053
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !316, metadata !435), !dbg !1054
  %253 = getelementptr inbounds [30 x i32]* %tmpcoord, i64 0, i64 0, !dbg !1055
  %254 = getelementptr inbounds [30 x i32]* %tmpcoord, i64 0, i64 1, !dbg !1057
  %255 = getelementptr inbounds [30 x i32]* %tmpcoord, i64 0, i64 2, !dbg !1058
  %256 = icmp eq i32 %bitsize.0, 0, !dbg !1059
  br label %.outer, !dbg !1061

.outer:                                           ; preds = %424, %.critedge
  %smallnum.0.ph = phi i32 [ %smallnum.1, %424 ], [ %245, %.critedge ]
  %smaller.0.ph = phi i32 [ %smaller.1, %424 ], [ %241, %.critedge ]
  %i.0.ph = phi i32 [ %i.1.lcssa, %424 ], [ 0, %.critedge ]
  %prevrun.0.ph = phi i32 [ %prevrun.1, %424 ], [ -1, %.critedge ]
  %prevcoord.sroa.26.0.ph = phi i32 [ %prevcoord.sroa.26.1.lcssa, %424 ], [ undef, %.critedge ]
  %prevcoord.sroa.13.0.ph = phi i32 [ %prevcoord.sroa.13.1.lcssa, %424 ], [ undef, %.critedge ]
  %prevcoord.sroa.0.0.ph = phi i32 [ %prevcoord.sroa.0.1.lcssa, %424 ], [ undef, %.critedge ]
  %257 = mul nsw i32 %smaller.0.ph, %smaller.0.ph, !dbg !1062
  br label %258

; <label>:258                                     ; preds = %.outer, %._crit_edge
  %i.0 = phi i32 [ %i.1.lcssa, %._crit_edge ], [ %i.0.ph, %.outer ]
  %prevrun.0 = phi i32 [ %prevrun.1, %._crit_edge ], [ %prevrun.0.ph, %.outer ]
  %prevcoord.sroa.26.0 = phi i32 [ %prevcoord.sroa.26.1.lcssa, %._crit_edge ], [ %prevcoord.sroa.26.0.ph, %.outer ]
  %prevcoord.sroa.13.0 = phi i32 [ %prevcoord.sroa.13.1.lcssa, %._crit_edge ], [ %prevcoord.sroa.13.0.ph, %.outer ]
  %prevcoord.sroa.0.0 = phi i32 [ %prevcoord.sroa.0.1.lcssa, %._crit_edge ], [ %prevcoord.sroa.0.0.ph, %.outer ]
  %259 = load i32* %size, align 4, !dbg !1065, !tbaa !727
  %260 = icmp slt i32 %i.0, %259, !dbg !1066
  br i1 %260, label %261, label %426, !dbg !1061

; <label>:261                                     ; preds = %258
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !317, metadata !435), !dbg !1067
  %262 = mul nsw i32 %i.0, 3, !dbg !1068
  %263 = sext i32 %262 to i64, !dbg !1069
  %264 = getelementptr inbounds i32* %222, i64 %263, !dbg !1069
  call void @llvm.dbg.value(metadata i32* %264, i64 0, metadata !324, metadata !435), !dbg !1070
  call void @llvm.dbg.value(metadata i32* %smallidx, i64 0, metadata !302, metadata !435), !dbg !1025
  %265 = load i32* %smallidx, align 4, !dbg !1071, !tbaa !727
  %266 = icmp slt i32 %265, %., !dbg !1073
  %267 = icmp sgt i32 %i.0, 0, !dbg !1074
  %or.cond = and i1 %267, %266, !dbg !1075
  br i1 %or.cond, label %268, label %285, !dbg !1075

; <label>:268                                     ; preds = %261
  %269 = load i32* %264, align 4, !dbg !1076, !tbaa !727
  %270 = sub nsw i32 %269, %prevcoord.sroa.0.0, !dbg !1077
  %ispos33 = icmp sgt i32 %270, -1, !dbg !1078
  %neg34 = sub i32 0, %270, !dbg !1078
  %271 = select i1 %ispos33, i32 %270, i32 %neg34, !dbg !1078
  %272 = icmp slt i32 %271, %252, !dbg !1079
  br i1 %272, label %273, label %285, !dbg !1080

; <label>:273                                     ; preds = %268
  %.sum35 = add nsw i64 %263, 1, !dbg !1081
  %274 = getelementptr inbounds i32* %222, i64 %.sum35, !dbg !1081
  %275 = load i32* %274, align 4, !dbg !1081, !tbaa !727
  %276 = sub nsw i32 %275, %prevcoord.sroa.13.0, !dbg !1082
  %ispos36 = icmp sgt i32 %276, -1, !dbg !1083
  %neg37 = sub i32 0, %276, !dbg !1083
  %277 = select i1 %ispos36, i32 %276, i32 %neg37, !dbg !1083
  %278 = icmp slt i32 %277, %252, !dbg !1084
  br i1 %278, label %279, label %285, !dbg !1085

; <label>:279                                     ; preds = %273
  %.sum38 = add nsw i64 %263, 2, !dbg !1086
  %280 = getelementptr inbounds i32* %222, i64 %.sum38, !dbg !1086
  %281 = load i32* %280, align 4, !dbg !1086, !tbaa !727
  %282 = sub nsw i32 %281, %prevcoord.sroa.26.0, !dbg !1087
  %ispos39 = icmp sgt i32 %282, -1, !dbg !1088
  %neg40 = sub i32 0, %282, !dbg !1088
  %283 = select i1 %ispos39, i32 %282, i32 %neg40, !dbg !1088
  %284 = icmp slt i32 %283, %252, !dbg !1089
  br i1 %284, label %287, label %285, !dbg !1090

; <label>:285                                     ; preds = %279, %273, %268, %261
  call void @llvm.dbg.value(metadata i32* %smallidx, i64 0, metadata !302, metadata !435), !dbg !1025
  %286 = icmp sgt i32 %265, %234, !dbg !1091
  %.50 = sext i1 %286 to i32, !dbg !1093
  br label %287, !dbg !1093

; <label>:287                                     ; preds = %285, %279
  %is_smaller.0 = phi i32 [ 1, %279 ], [ %.50, %285 ]
  %288 = add nsw i32 %i.0, 1, !dbg !1095
  %289 = icmp slt i32 %288, %259, !dbg !1097
  %290 = load i32* %264, align 4, !dbg !1098, !tbaa !727
  br i1 %289, label %291, label %._crit_edge173, !dbg !1101

; <label>:291                                     ; preds = %287
  %.sum22 = add nsw i64 %263, 3, !dbg !1102
  %292 = getelementptr inbounds i32* %222, i64 %.sum22, !dbg !1102
  %293 = load i32* %292, align 4, !dbg !1102, !tbaa !727
  %294 = sub nsw i32 %290, %293, !dbg !1103
  %ispos23 = icmp sgt i32 %294, -1, !dbg !1104
  %neg24 = sub i32 0, %294, !dbg !1104
  %295 = select i1 %ispos23, i32 %294, i32 %neg24, !dbg !1104
  %296 = icmp slt i32 %295, %smallnum.0.ph, !dbg !1105
  br i1 %296, label %297, label %._crit_edge173, !dbg !1106

; <label>:297                                     ; preds = %291
  %.sum25 = add nsw i64 %263, 1, !dbg !1107
  %298 = getelementptr inbounds i32* %222, i64 %.sum25, !dbg !1107
  %299 = load i32* %298, align 4, !dbg !1107, !tbaa !727
  %.sum26 = add nsw i64 %263, 4, !dbg !1108
  %300 = getelementptr inbounds i32* %222, i64 %.sum26, !dbg !1108
  %301 = load i32* %300, align 4, !dbg !1108, !tbaa !727
  %302 = sub nsw i32 %299, %301, !dbg !1109
  %ispos27 = icmp sgt i32 %302, -1, !dbg !1110
  %neg28 = sub i32 0, %302, !dbg !1110
  %303 = select i1 %ispos27, i32 %302, i32 %neg28, !dbg !1110
  %304 = icmp slt i32 %303, %smallnum.0.ph, !dbg !1111
  br i1 %304, label %305, label %._crit_edge173, !dbg !1112

; <label>:305                                     ; preds = %297
  %.sum29 = add nsw i64 %263, 2, !dbg !1113
  %306 = getelementptr inbounds i32* %222, i64 %.sum29, !dbg !1113
  %307 = load i32* %306, align 4, !dbg !1113, !tbaa !727
  %.sum30 = add nsw i64 %263, 5, !dbg !1114
  %308 = getelementptr inbounds i32* %222, i64 %.sum30, !dbg !1114
  %309 = load i32* %308, align 4, !dbg !1114, !tbaa !727
  %310 = sub nsw i32 %307, %309, !dbg !1115
  %ispos31 = icmp sgt i32 %310, -1, !dbg !1116
  %neg32 = sub i32 0, %310, !dbg !1116
  %311 = select i1 %ispos31, i32 %310, i32 %neg32, !dbg !1116
  %312 = icmp slt i32 %311, %smallnum.0.ph, !dbg !1117
  br i1 %312, label %313, label %._crit_edge173, !dbg !1118

; <label>:313                                     ; preds = %305
  call void @llvm.dbg.value(metadata i32 %290, i64 0, metadata !323, metadata !435), !dbg !1119
  store i32 %293, i32* %264, align 4, !dbg !1120, !tbaa !727
  store i32 %290, i32* %292, align 4, !dbg !1122, !tbaa !727
  call void @llvm.dbg.value(metadata i32 %299, i64 0, metadata !323, metadata !435), !dbg !1119
  store i32 %301, i32* %298, align 4, !dbg !1123, !tbaa !727
  store i32 %299, i32* %300, align 4, !dbg !1124, !tbaa !727
  call void @llvm.dbg.value(metadata i32 %307, i64 0, metadata !323, metadata !435), !dbg !1119
  store i32 %309, i32* %306, align 4, !dbg !1125, !tbaa !727
  store i32 %307, i32* %308, align 4, !dbg !1126, !tbaa !727
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !317, metadata !435), !dbg !1067
  br label %._crit_edge173, !dbg !1127

._crit_edge173:                                   ; preds = %287, %291, %297, %305, %313
  %314 = phi i32 [ %293, %313 ], [ %290, %305 ], [ %290, %297 ], [ %290, %291 ], [ %290, %287 ]
  %is_small.0 = phi i32 [ 1, %313 ], [ 0, %305 ], [ 0, %297 ], [ 0, %291 ], [ 0, %287 ]
  %315 = load i32* %83, align 4, !dbg !1128, !tbaa !727
  %316 = sub nsw i32 %314, %315, !dbg !1129
  store i32 %316, i32* %253, align 16, !dbg !1130, !tbaa !727
  %.sum15 = add nsw i64 %263, 1, !dbg !1131
  %317 = getelementptr inbounds i32* %222, i64 %.sum15, !dbg !1131
  %318 = load i32* %317, align 4, !dbg !1131, !tbaa !727
  %319 = load i32* %82, align 4, !dbg !1132, !tbaa !727
  %320 = sub nsw i32 %318, %319, !dbg !1133
  store i32 %320, i32* %254, align 4, !dbg !1134, !tbaa !727
  %.sum16 = add nsw i64 %263, 2, !dbg !1135
  %321 = getelementptr inbounds i32* %222, i64 %.sum16, !dbg !1135
  %322 = load i32* %321, align 4, !dbg !1135, !tbaa !727
  %323 = load i32* %81, align 4, !dbg !1136, !tbaa !727
  %324 = sub nsw i32 %322, %323, !dbg !1137
  store i32 %324, i32* %255, align 8, !dbg !1138, !tbaa !727
  %325 = load i32** @xdr3dfcoord.buf, align 8, !dbg !1139, !tbaa !611
  br i1 %256, label %326, label %329, !dbg !1141

; <label>:326                                     ; preds = %._crit_edge173
  call fastcc void @sendbits(i32* %325, i32 %bitsizeint.sroa.0.0, i32 %316) #13, !dbg !1142
  %327 = load i32** @xdr3dfcoord.buf, align 8, !dbg !1143, !tbaa !611
  call fastcc void @sendbits(i32* %327, i32 %bitsizeint.sroa.4.0, i32 %320) #13, !dbg !1144
  %328 = load i32** @xdr3dfcoord.buf, align 8, !dbg !1145, !tbaa !611
  call fastcc void @sendbits(i32* %328, i32 %bitsizeint.sroa.8.0, i32 %324) #13, !dbg !1146
  br label %330, !dbg !1147

; <label>:329                                     ; preds = %._crit_edge173
  call fastcc void @sendints(i32* %325, i32 %bitsize.0, i32* %200, i32* %253) #13, !dbg !1148
  br label %330

; <label>:330                                     ; preds = %329, %326
  %331 = load i32* %264, align 4, !dbg !1150, !tbaa !727
  call void @llvm.dbg.value(metadata i32 %331, i64 0, metadata !325, metadata !998), !dbg !702
  %332 = load i32* %317, align 4, !dbg !1151, !tbaa !727
  call void @llvm.dbg.value(metadata i32 %332, i64 0, metadata !325, metadata !1009), !dbg !702
  %333 = load i32* %321, align 4, !dbg !1152, !tbaa !727
  call void @llvm.dbg.value(metadata i32 %333, i64 0, metadata !325, metadata !1153), !dbg !702
  call void @llvm.dbg.value(metadata i32* %336, i64 0, metadata !324, metadata !435), !dbg !1070
  call void @llvm.dbg.value(metadata i32 %288, i64 0, metadata !316, metadata !435), !dbg !1054
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !319, metadata !435), !dbg !1154
  %334 = icmp eq i32 %is_small.0, 0, !dbg !1155
  %335 = icmp eq i32 %is_smaller.0, -1, !dbg !1157
  %or.cond3 = and i1 %335, %334, !dbg !1158
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !318, metadata !435), !dbg !1159
  %.is_smaller.0 = select i1 %or.cond3, i32 0, i32 %is_smaller.0, !dbg !1158
  br i1 %334, label %.critedge4, label %.lr.ph126, !dbg !1160

.lr.ph126:                                        ; preds = %330
  %.sum17 = add nsw i64 %263, 3, !dbg !1161
  %336 = getelementptr inbounds i32* %222, i64 %.sum17, !dbg !1161
  br label %337, !dbg !1160

; <label>:337                                     ; preds = %.lr.ph126, %.backedge
  %indvars.iv = phi i64 [ 0, %.lr.ph126 ], [ %indvars.iv.next, %.backedge ]
  %prevcoord.sroa.0.1125 = phi i32 [ %331, %.lr.ph126 ], [ %368, %.backedge ]
  %prevcoord.sroa.13.1124 = phi i32 [ %332, %.lr.ph126 ], [ %369, %.backedge ]
  %prevcoord.sroa.26.1123 = phi i32 [ %333, %.lr.ph126 ], [ %370, %.backedge ]
  %thiscoord.0122 = phi i32* [ %336, %.lr.ph126 ], [ %372, %.backedge ]
  %is_smaller.1120 = phi i32 [ %.is_smaller.0, %.lr.ph126 ], [ %is_smaller.2, %.backedge ]
  %i.1119 = phi i32 [ %288, %.lr.ph126 ], [ %371, %.backedge ]
  %338 = icmp eq i32 %is_smaller.1120, -1, !dbg !1162
  %339 = load i32* %thiscoord.0122, align 4, !dbg !1163, !tbaa !727
  br i1 %338, label %340, label %._crit_edge175, !dbg !1164

._crit_edge175:                                   ; preds = %337
  %.pre191 = getelementptr inbounds i32* %thiscoord.0122, i64 1, !dbg !1165
  %.pre193 = getelementptr inbounds i32* %thiscoord.0122, i64 2, !dbg !1166
  br label %354, !dbg !1164

; <label>:340                                     ; preds = %337
  %341 = sub nsw i32 %339, %prevcoord.sroa.0.1125, !dbg !1163
  %342 = mul nsw i32 %341, %341, !dbg !1163
  %343 = getelementptr inbounds i32* %thiscoord.0122, i64 1, !dbg !1167
  %344 = load i32* %343, align 4, !dbg !1167, !tbaa !727
  %345 = sub nsw i32 %344, %prevcoord.sroa.13.1124, !dbg !1167
  %346 = mul nsw i32 %345, %345, !dbg !1167
  %347 = add nuw nsw i32 %346, %342, !dbg !1168
  %348 = getelementptr inbounds i32* %thiscoord.0122, i64 2, !dbg !1169
  %349 = load i32* %348, align 4, !dbg !1169, !tbaa !727
  %350 = sub nsw i32 %349, %prevcoord.sroa.26.1123, !dbg !1169
  %351 = mul nsw i32 %350, %350, !dbg !1169
  %352 = add nuw nsw i32 %347, %351, !dbg !1170
  %353 = icmp ult i32 %352, %257, !dbg !1171
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !318, metadata !435), !dbg !1159
  %is_smaller.1. = sext i1 %353 to i32, !dbg !1172
  br label %354, !dbg !1172

; <label>:354                                     ; preds = %._crit_edge175, %340
  %.pre-phi194 = phi i32* [ %.pre193, %._crit_edge175 ], [ %348, %340 ], !dbg !1166
  %.pre-phi192 = phi i32* [ %.pre191, %._crit_edge175 ], [ %343, %340 ], !dbg !1165
  %is_smaller.2 = phi i32 [ %is_smaller.1120, %._crit_edge175 ], [ %is_smaller.1., %340 ]
  %355 = sub i32 %smallnum.0.ph, %prevcoord.sroa.0.1125, !dbg !1173
  %356 = add i32 %355, %339, !dbg !1174
  %357 = add nuw nsw i64 %indvars.iv, 1, !dbg !1175
  %358 = getelementptr inbounds [30 x i32]* %tmpcoord, i64 0, i64 %indvars.iv, !dbg !1176
  store i32 %356, i32* %358, align 4, !dbg !1177, !tbaa !727
  %359 = load i32* %.pre-phi192, align 4, !dbg !1165, !tbaa !727
  %360 = sub i32 %smallnum.0.ph, %prevcoord.sroa.13.1124, !dbg !1178
  %361 = add i32 %360, %359, !dbg !1179
  %362 = add nuw nsw i64 %indvars.iv, 2, !dbg !1180
  %363 = getelementptr inbounds [30 x i32]* %tmpcoord, i64 0, i64 %357, !dbg !1181
  store i32 %361, i32* %363, align 4, !dbg !1182, !tbaa !727
  %364 = load i32* %.pre-phi194, align 4, !dbg !1166, !tbaa !727
  %365 = sub i32 %smallnum.0.ph, %prevcoord.sroa.26.1123, !dbg !1183
  %366 = add i32 %365, %364, !dbg !1184
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 3, !dbg !1160
  %367 = getelementptr inbounds [30 x i32]* %tmpcoord, i64 0, i64 %362, !dbg !1185
  store i32 %366, i32* %367, align 4, !dbg !1186, !tbaa !727
  %368 = load i32* %thiscoord.0122, align 4, !dbg !1187, !tbaa !727
  call void @llvm.dbg.value(metadata i32 %368, i64 0, metadata !325, metadata !998), !dbg !702
  %369 = load i32* %.pre-phi192, align 4, !dbg !1188, !tbaa !727
  call void @llvm.dbg.value(metadata i32 %369, i64 0, metadata !325, metadata !1009), !dbg !702
  %370 = load i32* %.pre-phi194, align 4, !dbg !1189, !tbaa !727
  call void @llvm.dbg.value(metadata i32 %370, i64 0, metadata !325, metadata !1153), !dbg !702
  %371 = add nsw i32 %i.1119, 1, !dbg !1190
  call void @llvm.dbg.value(metadata i32 %371, i64 0, metadata !316, metadata !435), !dbg !1054
  %372 = getelementptr inbounds i32* %thiscoord.0122, i64 3, !dbg !1191
  call void @llvm.dbg.value(metadata i32* %372, i64 0, metadata !324, metadata !435), !dbg !1070
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !317, metadata !435), !dbg !1067
  %373 = load i32* %size, align 4, !dbg !1192, !tbaa !727
  %374 = icmp slt i32 %371, %373, !dbg !1194
  br i1 %374, label %375, label %..critedge4_crit_edge, !dbg !1195

; <label>:375                                     ; preds = %354
  %376 = load i32* %372, align 4, !dbg !1196, !tbaa !727
  %377 = sub nsw i32 %376, %368, !dbg !1197
  %ispos = icmp sgt i32 %377, -1, !dbg !1198
  %neg = sub i32 0, %377, !dbg !1198
  %378 = select i1 %ispos, i32 %377, i32 %neg, !dbg !1198
  %379 = icmp slt i32 %378, %smallnum.0.ph, !dbg !1199
  br i1 %379, label %380, label %..critedge4_crit_edge, !dbg !1200

; <label>:380                                     ; preds = %375
  %381 = getelementptr inbounds i32* %thiscoord.0122, i64 4, !dbg !1201
  %382 = load i32* %381, align 4, !dbg !1201, !tbaa !727
  %383 = sub nsw i32 %382, %369, !dbg !1202
  %ispos18 = icmp sgt i32 %383, -1, !dbg !1203
  %neg19 = sub i32 0, %383, !dbg !1203
  %384 = select i1 %ispos18, i32 %383, i32 %neg19, !dbg !1203
  %385 = icmp slt i32 %384, %smallnum.0.ph, !dbg !1204
  br i1 %385, label %.backedge, label %..critedge4_crit_edge, !dbg !1205

.backedge:                                        ; preds = %380
  %386 = getelementptr inbounds i32* %thiscoord.0122, i64 5, !dbg !1206
  %387 = load i32* %386, align 4, !dbg !1206, !tbaa !727
  %388 = sub nsw i32 %387, %370, !dbg !1207
  %ispos20 = icmp sgt i32 %388, -1, !dbg !1208
  %neg21 = sub i32 0, %388, !dbg !1208
  %389 = select i1 %ispos20, i32 %388, i32 %neg21, !dbg !1208
  %390 = icmp slt i32 %389, %smallnum.0.ph, !dbg !1209
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !317, metadata !435), !dbg !1067
  %391 = icmp slt i64 %indvars.iv.next, 24, !dbg !1210
  %or.cond8 = and i1 %390, %391, !dbg !1160
  br i1 %or.cond8, label %337, label %..critedge4_crit_edge, !dbg !1160

..critedge4_crit_edge:                            ; preds = %354, %375, %380, %.backedge
  %392 = trunc i64 %indvars.iv.next to i32, !dbg !1160
  br label %.critedge4, !dbg !1160

.critedge4:                                       ; preds = %330, %..critedge4_crit_edge
  %prevcoord.sroa.0.1.lcssa = phi i32 [ %368, %..critedge4_crit_edge ], [ %331, %330 ]
  %prevcoord.sroa.13.1.lcssa = phi i32 [ %369, %..critedge4_crit_edge ], [ %332, %330 ]
  %prevcoord.sroa.26.1.lcssa = phi i32 [ %370, %..critedge4_crit_edge ], [ %333, %330 ]
  %run.0.lcssa = phi i32 [ %392, %..critedge4_crit_edge ], [ 0, %330 ]
  %is_smaller.1.lcssa = phi i32 [ %is_smaller.2, %..critedge4_crit_edge ], [ %.is_smaller.0, %330 ]
  %i.1.lcssa = phi i32 [ %371, %..critedge4_crit_edge ], [ %288, %330 ]
  %393 = icmp ne i32 %run.0.lcssa, %prevrun.0, !dbg !1211
  %394 = icmp ne i32 %is_smaller.1.lcssa, 0, !dbg !1213
  %or.cond6 = or i1 %394, %393, !dbg !1214
  %395 = load i32** @xdr3dfcoord.buf, align 8, !dbg !1215, !tbaa !611
  br i1 %or.cond6, label %396, label %400, !dbg !1214

; <label>:396                                     ; preds = %.critedge4
  call fastcc void @sendbits(i32* %395, i32 1, i32 1) #13, !dbg !1217
  %397 = load i32** @xdr3dfcoord.buf, align 8, !dbg !1218, !tbaa !611
  %398 = add i32 %is_smaller.1.lcssa, 1, !dbg !1219
  %399 = add i32 %398, %run.0.lcssa, !dbg !1220
  call fastcc void @sendbits(i32* %397, i32 5, i32 %399) #13, !dbg !1221
  br label %401, !dbg !1222

; <label>:400                                     ; preds = %.critedge4
  call fastcc void @sendbits(i32* %395, i32 1, i32 0) #13, !dbg !1223
  br label %401

; <label>:401                                     ; preds = %400, %396
  %prevrun.1 = phi i32 [ %run.0.lcssa, %396 ], [ %prevrun.0, %400 ]
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !312, metadata !435), !dbg !1225
  %402 = icmp sgt i32 %run.0.lcssa, 0, !dbg !1226
  br i1 %402, label %.lr.ph134, label %._crit_edge, !dbg !1229

.lr.ph134:                                        ; preds = %401
  %403 = sext i32 %run.0.lcssa to i64, !dbg !1229
  br label %404, !dbg !1229

; <label>:404                                     ; preds = %.lr.ph134, %404
  %indvars.iv162 = phi i64 [ 0, %.lr.ph134 ], [ %indvars.iv.next163, %404 ]
  %405 = load i32** @xdr3dfcoord.buf, align 8, !dbg !1230, !tbaa !611
  call void @llvm.dbg.value(metadata i32* %smallidx, i64 0, metadata !302, metadata !435), !dbg !1025
  %406 = load i32* %smallidx, align 4, !dbg !1232, !tbaa !727
  %407 = getelementptr inbounds [30 x i32]* %tmpcoord, i64 0, i64 %indvars.iv162, !dbg !1233
  call fastcc void @sendints(i32* %405, i32 %406, i32* %248, i32* %407) #13, !dbg !1234
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 3, !dbg !1229
  %408 = icmp slt i64 %indvars.iv.next163, %403, !dbg !1226
  br i1 %408, label %404, label %._crit_edge, !dbg !1229

._crit_edge:                                      ; preds = %404, %401
  br i1 %394, label %409, label %258, !dbg !1235

; <label>:409                                     ; preds = %._crit_edge
  call void @llvm.dbg.value(metadata i32* %smallidx, i64 0, metadata !302, metadata !435), !dbg !1025
  %410 = load i32* %smallidx, align 4, !dbg !1236, !tbaa !727
  %411 = add nsw i32 %410, %is_smaller.1.lcssa, !dbg !1236
  call void @llvm.dbg.value(metadata i32 %411, i64 0, metadata !302, metadata !435), !dbg !1025
  store i32 %411, i32* %smallidx, align 4, !dbg !1236, !tbaa !727
  %412 = icmp slt i32 %is_smaller.1.lcssa, 0, !dbg !1239
  br i1 %412, label %413, label %419, !dbg !1241

; <label>:413                                     ; preds = %409
  call void @llvm.dbg.value(metadata i32 %smaller.0.ph, i64 0, metadata !313, metadata !435), !dbg !1044
  %414 = add nsw i32 %411, -1, !dbg !1242
  %415 = sext i32 %414 to i64, !dbg !1244
  %416 = getelementptr inbounds [73 x i32]* @magicints, i64 0, i64 %415, !dbg !1244
  %417 = load i32* %416, align 4, !dbg !1244, !tbaa !727
  %418 = sdiv i32 %417, 2, !dbg !1245
  call void @llvm.dbg.value(metadata i32 %418, i64 0, metadata !314, metadata !435), !dbg !1041
  %.pre177 = sext i32 %411 to i64, !dbg !1246
  %.phi.trans.insert = getelementptr inbounds [73 x i32]* @magicints, i64 0, i64 %.pre177
  %.pre178 = load i32* %.phi.trans.insert, align 4, !dbg !1246, !tbaa !727
  br label %424, !dbg !1247

; <label>:419                                     ; preds = %409
  call void @llvm.dbg.value(metadata i32 %smallnum.0.ph, i64 0, metadata !314, metadata !435), !dbg !1041
  %420 = sext i32 %411 to i64, !dbg !1248
  %421 = getelementptr inbounds [73 x i32]* @magicints, i64 0, i64 %420, !dbg !1248
  %422 = load i32* %421, align 4, !dbg !1248, !tbaa !727
  %423 = sdiv i32 %422, 2, !dbg !1250
  call void @llvm.dbg.value(metadata i32 %423, i64 0, metadata !313, metadata !435), !dbg !1044
  br label %424

; <label>:424                                     ; preds = %419, %413
  %425 = phi i32 [ %422, %419 ], [ %.pre178, %413 ]
  %smallnum.1 = phi i32 [ %423, %419 ], [ %smaller.0.ph, %413 ]
  %smaller.1 = phi i32 [ %smallnum.0.ph, %419 ], [ %418, %413 ]
  call void @llvm.dbg.value(metadata i32* %smallidx, i64 0, metadata !302, metadata !435), !dbg !1025
  store i32 %425, i32* %246, align 4, !dbg !1251, !tbaa !727
  store i32 %425, i32* %247, align 4, !dbg !1252, !tbaa !727
  store i32 %425, i32* %248, align 4, !dbg !1253, !tbaa !727
  br label %.outer, !dbg !1254

; <label>:426                                     ; preds = %258
  %427 = load i32** @xdr3dfcoord.buf, align 8, !dbg !1255, !tbaa !611
  %428 = getelementptr inbounds i32* %427, i64 1, !dbg !1255
  %429 = load i32* %428, align 4, !dbg !1255, !tbaa !727
  %430 = icmp eq i32 %429, 0, !dbg !1257
  br i1 %430, label %434, label %431, !dbg !1258

; <label>:431                                     ; preds = %426
  %432 = load i32* %427, align 4, !dbg !1259, !tbaa !727
  %433 = add nsw i32 %432, 1, !dbg !1259
  store i32 %433, i32* %427, align 4, !dbg !1259, !tbaa !727
  br label %434, !dbg !1260

; <label>:434                                     ; preds = %426, %431
  %435 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %427) #10, !dbg !1261
  %436 = load i32** @xdr3dfcoord.buf, align 8, !dbg !1262, !tbaa !611
  %437 = getelementptr inbounds i32* %436, i64 3, !dbg !1262
  %438 = bitcast i32* %437 to i8*, !dbg !1263
  %439 = load i32* %436, align 4, !dbg !1264, !tbaa !727
  %440 = call i32 @xdr_opaque(%struct.XDR* %xdrs, i8* %438, i32 %439) #10, !dbg !1265
  %441 = mul nsw i32 %440, %errval.4, !dbg !1266
  br label %.loopexit95, !dbg !1267

; <label>:442                                     ; preds = %11
  tail call void @llvm.dbg.value(metadata i32* %lsize, i64 0, metadata !332, metadata !435), !dbg !1268
  %443 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %lsize) #10, !dbg !1269
  %444 = icmp eq i32 %443, 0, !dbg !1272
  br i1 %444, label %.loopexit95, label %445, !dbg !1273

; <label>:445                                     ; preds = %442
  %446 = load i32* %size, align 4, !dbg !1274, !tbaa !727
  %447 = icmp eq i32 %446, 0, !dbg !1276
  br i1 %447, label %thread-pre-split, label %448, !dbg !1277

; <label>:448                                     ; preds = %445
  call void @llvm.dbg.value(metadata i32* %lsize, i64 0, metadata !332, metadata !435), !dbg !1268
  %449 = load i32* %lsize, align 4, !dbg !1278, !tbaa !727
  %450 = icmp eq i32 %449, %446, !dbg !1279
  br i1 %450, label %454, label %451, !dbg !1280

; <label>:451                                     ; preds = %448
  %452 = load %struct.__sFILE** @__stderrp, align 8, !dbg !1281, !tbaa !611
  %453 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %452, i8* getelementptr inbounds ([65 x i8]* @.str8, i64 0, i64 0), i32 %446, i32 %449) #10, !dbg !1283
  br label %thread-pre-split, !dbg !1284

thread-pre-split:                                 ; preds = %451, %445
  %.pr = load i32* %lsize, align 4, !dbg !1285, !tbaa !727
  br label %454

; <label>:454                                     ; preds = %thread-pre-split, %448
  %455 = phi i32 [ %.pr, %thread-pre-split ], [ %446, %448 ], !dbg !1285
  call void @llvm.dbg.value(metadata i32* %lsize, i64 0, metadata !332, metadata !435), !dbg !1268
  store i32 %455, i32* %size, align 4, !dbg !1286, !tbaa !727
  %456 = mul nsw i32 %455, 3, !dbg !1287
  call void @llvm.dbg.value(metadata i32 %456, i64 0, metadata !309, metadata !435), !dbg !729
  %457 = icmp slt i32 %455, 10, !dbg !1288
  br i1 %457, label %458, label %461, !dbg !1290

; <label>:458                                     ; preds = %454
  %459 = bitcast float* %fp to i8*, !dbg !1291
  %460 = call i32 @xdr_vector(%struct.XDR* %xdrs, i8* %459, i32 %456, i32 4, i32 (%struct.XDR*, i8*, ...)* bitcast (i32 (%struct.XDR*, float*)* @xdr_float to i32 (%struct.XDR*, i8*, ...)*)) #10, !dbg !1293
  br label %.loopexit95, !dbg !1294

; <label>:461                                     ; preds = %454
  %462 = call i32 @xdr_float(%struct.XDR* %xdrs, float* %precision) #10, !dbg !1295
  %463 = load i32** @xdr3dfcoord.ip, align 8, !dbg !1296, !tbaa !611
  %464 = icmp eq i32* %463, null, !dbg !1298
  br i1 %464, label %465, label %487, !dbg !1299

; <label>:465                                     ; preds = %461
  %466 = zext i32 %456 to i64, !dbg !1300
  %467 = shl nuw nsw i64 %466, 2, !dbg !1302
  %468 = call i8* @malloc(i64 %467) #10, !dbg !1303
  store i8* %468, i8** bitcast (i32** @xdr3dfcoord.ip to i8**), align 8, !dbg !1304, !tbaa !611
  %469 = icmp eq i8* %468, null, !dbg !1305
  br i1 %469, label %470, label %473, !dbg !1307

; <label>:470                                     ; preds = %465
  %471 = load %struct.__sFILE** @__stderrp, align 8, !dbg !1308, !tbaa !611
  %472 = call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str6, i64 0, i64 0), i64 14, i64 1, %struct.__sFILE* %471), !dbg !1310
  call void @exit(i32 1) #11, !dbg !1311
  unreachable, !dbg !1311

; <label>:473                                     ; preds = %465
  %474 = uitofp i32 %456 to double, !dbg !1312
  %475 = fmul double %474, 1.200000e+00, !dbg !1313
  %476 = fptosi double %475 to i32, !dbg !1312
  call void @llvm.dbg.value(metadata i32 %476, i64 0, metadata !330, metadata !435), !dbg !756
  %477 = sext i32 %476 to i64, !dbg !1314
  %478 = shl nsw i64 %477, 2, !dbg !1315
  %479 = call i8* @malloc(i64 %478) #10, !dbg !1316
  store i8* %479, i8** bitcast (i32** @xdr3dfcoord.buf to i8**), align 8, !dbg !1317, !tbaa !611
  %480 = icmp eq i8* %479, null, !dbg !1318
  br i1 %480, label %481, label %484, !dbg !1320

; <label>:481                                     ; preds = %473
  %482 = load %struct.__sFILE** @__stderrp, align 8, !dbg !1321, !tbaa !611
  %483 = call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str6, i64 0, i64 0), i64 14, i64 1, %struct.__sFILE* %482), !dbg !1323
  call void @exit(i32 1) #11, !dbg !1324
  unreachable, !dbg !1324

; <label>:484                                     ; preds = %473
  %485 = bitcast i8* %479 to i32*
  %486 = load i32* %size, align 4, !dbg !1325, !tbaa !727
  store i32 %486, i32* @xdr3dfcoord.oldsize, align 4, !dbg !1326, !tbaa !727
  br label %515, !dbg !1327

; <label>:487                                     ; preds = %461
  %488 = load i32* %size, align 4, !dbg !1328, !tbaa !727
  %489 = load i32* @xdr3dfcoord.oldsize, align 4, !dbg !1330, !tbaa !727
  %490 = icmp sgt i32 %488, %489, !dbg !1331
  br i1 %490, label %491, label %._crit_edge179, !dbg !1332

._crit_edge179:                                   ; preds = %487
  %.pre180 = load i32** @xdr3dfcoord.buf, align 8, !dbg !1333, !tbaa !611
  br label %515, !dbg !1332

; <label>:491                                     ; preds = %487
  %492 = bitcast i32* %463 to i8*, !dbg !1334
  %493 = zext i32 %456 to i64, !dbg !1336
  %494 = shl nuw nsw i64 %493, 2, !dbg !1337
  %495 = call i8* @realloc(i8* %492, i64 %494) #10, !dbg !1338
  store i8* %495, i8** bitcast (i32** @xdr3dfcoord.ip to i8**), align 8, !dbg !1339, !tbaa !611
  %496 = icmp eq i8* %495, null, !dbg !1340
  br i1 %496, label %497, label %500, !dbg !1342

; <label>:497                                     ; preds = %491
  %498 = load %struct.__sFILE** @__stderrp, align 8, !dbg !1343, !tbaa !611
  %499 = call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str6, i64 0, i64 0), i64 14, i64 1, %struct.__sFILE* %498), !dbg !1345
  call void @exit(i32 1) #11, !dbg !1346
  unreachable, !dbg !1346

; <label>:500                                     ; preds = %491
  %501 = uitofp i32 %456 to double, !dbg !1347
  %502 = fmul double %501, 1.200000e+00, !dbg !1348
  %503 = fptosi double %502 to i32, !dbg !1347
  call void @llvm.dbg.value(metadata i32 %503, i64 0, metadata !330, metadata !435), !dbg !756
  %504 = load i8** bitcast (i32** @xdr3dfcoord.buf to i8**), align 8, !dbg !1349, !tbaa !611
  %505 = sext i32 %503 to i64, !dbg !1350
  %506 = shl nsw i64 %505, 2, !dbg !1351
  %507 = call i8* @realloc(i8* %504, i64 %506) #10, !dbg !1352
  store i8* %507, i8** bitcast (i32** @xdr3dfcoord.buf to i8**), align 8, !dbg !1353, !tbaa !611
  %508 = icmp eq i8* %507, null, !dbg !1354
  br i1 %508, label %509, label %512, !dbg !1356

; <label>:509                                     ; preds = %500
  %510 = load %struct.__sFILE** @__stderrp, align 8, !dbg !1357, !tbaa !611
  %511 = call i64 @fwrite(i8* getelementptr inbounds ([15 x i8]* @.str6, i64 0, i64 0), i64 14, i64 1, %struct.__sFILE* %510), !dbg !1359
  call void @exit(i32 1) #11, !dbg !1360
  unreachable, !dbg !1360

; <label>:512                                     ; preds = %500
  %513 = bitcast i8* %507 to i32*
  %514 = load i32* %size, align 4, !dbg !1361, !tbaa !727
  store i32 %514, i32* @xdr3dfcoord.oldsize, align 4, !dbg !1362, !tbaa !727
  br label %515, !dbg !1363

; <label>:515                                     ; preds = %._crit_edge179, %512, %484
  %516 = phi i32* [ %.pre180, %._crit_edge179 ], [ %513, %512 ], [ %485, %484 ]
  %517 = getelementptr inbounds i32* %516, i64 2, !dbg !1333
  store i32 0, i32* %517, align 4, !dbg !1364, !tbaa !727
  %518 = getelementptr inbounds i32* %516, i64 1, !dbg !1365
  store i32 0, i32* %518, align 4, !dbg !1366, !tbaa !727
  store i32 0, i32* %516, align 4, !dbg !1367, !tbaa !727
  %519 = getelementptr inbounds [3 x i32]* %minint, i64 0, i64 0, !dbg !1368
  %520 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %519) #10, !dbg !1369
  %521 = getelementptr inbounds [3 x i32]* %minint, i64 0, i64 1, !dbg !1370
  %522 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %521) #10, !dbg !1371
  %523 = getelementptr inbounds [3 x i32]* %minint, i64 0, i64 2, !dbg !1372
  %524 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %523) #10, !dbg !1373
  %525 = getelementptr inbounds [3 x i32]* %maxint, i64 0, i64 0, !dbg !1374
  %526 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %525) #10, !dbg !1375
  %527 = getelementptr inbounds [3 x i32]* %maxint, i64 0, i64 1, !dbg !1376
  %528 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %527) #10, !dbg !1377
  %529 = getelementptr inbounds [3 x i32]* %maxint, i64 0, i64 2, !dbg !1378
  %530 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %529) #10, !dbg !1379
  %531 = load i32* %525, align 4, !dbg !1380, !tbaa !727
  %532 = load i32* %519, align 4, !dbg !1381, !tbaa !727
  %533 = add i32 %531, 1, !dbg !1382
  %534 = sub i32 %533, %532, !dbg !1383
  %535 = getelementptr inbounds [3 x i32]* %sizeint, i64 0, i64 0, !dbg !1384
  store i32 %534, i32* %535, align 4, !dbg !1385, !tbaa !727
  %536 = load i32* %527, align 4, !dbg !1386, !tbaa !727
  %537 = load i32* %521, align 4, !dbg !1387, !tbaa !727
  %538 = add i32 %536, 1, !dbg !1388
  %539 = sub i32 %538, %537, !dbg !1389
  %540 = getelementptr inbounds [3 x i32]* %sizeint, i64 0, i64 1, !dbg !1390
  store i32 %539, i32* %540, align 4, !dbg !1391, !tbaa !727
  %541 = load i32* %529, align 4, !dbg !1392, !tbaa !727
  %542 = load i32* %523, align 4, !dbg !1393, !tbaa !727
  %543 = sub nsw i32 %541, %542, !dbg !1394
  %544 = add nsw i32 %543, 1, !dbg !1395
  %545 = getelementptr inbounds [3 x i32]* %sizeint, i64 0, i64 2, !dbg !1396
  store i32 %544, i32* %545, align 4, !dbg !1397, !tbaa !727
  %546 = or i32 %539, %534, !dbg !1398
  %547 = or i32 %546, %544, !dbg !1400
  %548 = icmp ugt i32 %547, 16777215, !dbg !1401
  br i1 %548, label %549, label %559, !dbg !1402

; <label>:549                                     ; preds = %515
  tail call void @llvm.dbg.value(metadata i32 %534, i64 0, metadata !341, metadata !435), !dbg !1403
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !342, metadata !435), !dbg !1406
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !343, metadata !435), !dbg !1407
  %not.1.i68 = icmp eq i32 %533, %532, !dbg !1408
  br i1 %not.1.i68, label %sizeofint.exit75, label %.lr.ph.i73, !dbg !1409

.lr.ph.i73:                                       ; preds = %549, %.lr.ph.i73
  %num_of_bits.03.i69 = phi i32 [ %550, %.lr.ph.i73 ], [ 0, %549 ], !dbg !1410
  %num.02.i70 = phi i32 [ %551, %.lr.ph.i73 ], [ 1, %549 ], !dbg !1410
  %550 = add nuw nsw i32 %num_of_bits.03.i69, 1, !dbg !1411
  tail call void @llvm.dbg.value(metadata i32 %550, i64 0, metadata !343, metadata !435), !dbg !1407
  %551 = shl i32 %num.02.i70, 1, !dbg !1412
  tail call void @llvm.dbg.value(metadata i32 %551, i64 0, metadata !342, metadata !435), !dbg !1406
  %552 = icmp slt i32 %550, 32, !dbg !1413
  %not..i71 = icmp ule i32 %551, %534, !dbg !1408
  %..i72 = and i1 %552, %not..i71, !dbg !1408
  br i1 %..i72, label %.lr.ph.i73, label %sizeofint.exit75, !dbg !1409

sizeofint.exit75:                                 ; preds = %.lr.ph.i73, %549
  %num_of_bits.0.lcssa.i74 = phi i32 [ 0, %549 ], [ %550, %.lr.ph.i73 ], !dbg !1410
  call void @llvm.dbg.value(metadata i32 %num_of_bits.0.lcssa.i74, i64 0, metadata !308, metadata !998), !dbg !701
  tail call void @llvm.dbg.value(metadata i32 %539, i64 0, metadata !341, metadata !435), !dbg !1414
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !342, metadata !435), !dbg !1416
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !343, metadata !435), !dbg !1417
  %not.1.i76 = icmp eq i32 %538, %537, !dbg !1418
  br i1 %not.1.i76, label %sizeofint.exit83, label %.lr.ph.i81, !dbg !1419

.lr.ph.i81:                                       ; preds = %sizeofint.exit75, %.lr.ph.i81
  %num_of_bits.03.i77 = phi i32 [ %553, %.lr.ph.i81 ], [ 0, %sizeofint.exit75 ], !dbg !1420
  %num.02.i78 = phi i32 [ %554, %.lr.ph.i81 ], [ 1, %sizeofint.exit75 ], !dbg !1420
  %553 = add nuw nsw i32 %num_of_bits.03.i77, 1, !dbg !1421
  tail call void @llvm.dbg.value(metadata i32 %553, i64 0, metadata !343, metadata !435), !dbg !1417
  %554 = shl i32 %num.02.i78, 1, !dbg !1422
  tail call void @llvm.dbg.value(metadata i32 %554, i64 0, metadata !342, metadata !435), !dbg !1416
  %555 = icmp slt i32 %553, 32, !dbg !1423
  %not..i79 = icmp ule i32 %554, %539, !dbg !1418
  %..i80 = and i1 %555, %not..i79, !dbg !1418
  br i1 %..i80, label %.lr.ph.i81, label %sizeofint.exit83, !dbg !1419

sizeofint.exit83:                                 ; preds = %.lr.ph.i81, %sizeofint.exit75
  %num_of_bits.0.lcssa.i82 = phi i32 [ 0, %sizeofint.exit75 ], [ %553, %.lr.ph.i81 ], !dbg !1420
  call void @llvm.dbg.value(metadata i32 %num_of_bits.0.lcssa.i82, i64 0, metadata !308, metadata !1009), !dbg !701
  tail call void @llvm.dbg.value(metadata i32 %544, i64 0, metadata !341, metadata !435), !dbg !1424
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !342, metadata !435), !dbg !1426
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !343, metadata !435), !dbg !1427
  %not.1.i84 = icmp eq i32 %544, 0, !dbg !1428
  br i1 %not.1.i84, label %sizeofint.exit91, label %.lr.ph.i89, !dbg !1429

.lr.ph.i89:                                       ; preds = %sizeofint.exit83, %.lr.ph.i89
  %num_of_bits.03.i85 = phi i32 [ %556, %.lr.ph.i89 ], [ 0, %sizeofint.exit83 ], !dbg !1430
  %num.02.i86 = phi i32 [ %557, %.lr.ph.i89 ], [ 1, %sizeofint.exit83 ], !dbg !1430
  %556 = add nuw nsw i32 %num_of_bits.03.i85, 1, !dbg !1431
  tail call void @llvm.dbg.value(metadata i32 %556, i64 0, metadata !343, metadata !435), !dbg !1427
  %557 = shl i32 %num.02.i86, 1, !dbg !1432
  tail call void @llvm.dbg.value(metadata i32 %557, i64 0, metadata !342, metadata !435), !dbg !1426
  %558 = icmp slt i32 %556, 32, !dbg !1433
  %not..i87 = icmp ule i32 %557, %544, !dbg !1428
  %..i88 = and i1 %558, %not..i87, !dbg !1428
  br i1 %..i88, label %.lr.ph.i89, label %sizeofint.exit91, !dbg !1429

; <label>:559                                     ; preds = %515
  %560 = call fastcc i32 @sizeofints(i32* %535) #13, !dbg !1434
  call void @llvm.dbg.value(metadata i32 %560, i64 0, metadata !333, metadata !435), !dbg !1022
  br label %sizeofint.exit91

sizeofint.exit91:                                 ; preds = %.lr.ph.i89, %sizeofint.exit83, %559
  %bitsizeint.sroa.8.1 = phi i32 [ undef, %559 ], [ 0, %sizeofint.exit83 ], [ %556, %.lr.ph.i89 ]
  %bitsizeint.sroa.4.1 = phi i32 [ undef, %559 ], [ %num_of_bits.0.lcssa.i82, %sizeofint.exit83 ], [ %num_of_bits.0.lcssa.i82, %.lr.ph.i89 ]
  %bitsizeint.sroa.0.1 = phi i32 [ undef, %559 ], [ %num_of_bits.0.lcssa.i74, %sizeofint.exit83 ], [ %num_of_bits.0.lcssa.i74, %.lr.ph.i89 ]
  %bitsize.1 = phi i32 [ %560, %559 ], [ 0, %sizeofint.exit83 ], [ 0, %.lr.ph.i89 ]
  call void @llvm.dbg.value(metadata i32* %smallidx, i64 0, metadata !302, metadata !435), !dbg !1025
  %561 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %smallidx) #10, !dbg !1436
  %562 = icmp eq i32 %561, 0, !dbg !1438
  br i1 %562, label %.loopexit95, label %563, !dbg !1439

; <label>:563                                     ; preds = %sizeofint.exit91
  call void @llvm.dbg.value(metadata i32* %smallidx, i64 0, metadata !302, metadata !435), !dbg !1025
  %564 = load i32* %smallidx, align 4, !dbg !1440, !tbaa !727
  call void @llvm.dbg.value(metadata i32* %smallidx, i64 0, metadata !302, metadata !435), !dbg !1025
  %565 = icmp slt i32 %564, 10, !dbg !1441
  br i1 %565, label %568, label %566, !dbg !1441

; <label>:566                                     ; preds = %563
  %567 = add nsw i32 %564, -1, !dbg !1441
  %phitmp = sext i32 %567 to i64, !dbg !1441
  br label %568, !dbg !1441

; <label>:568                                     ; preds = %563, %566
  %569 = phi i64 [ %phitmp, %566 ], [ 9, %563 ]
  %570 = getelementptr inbounds [73 x i32]* @magicints, i64 0, i64 %569, !dbg !1442
  %571 = load i32* %570, align 4, !dbg !1442, !tbaa !727
  %572 = sdiv i32 %571, 2, !dbg !1443
  call void @llvm.dbg.value(metadata i32 %572, i64 0, metadata !314, metadata !435), !dbg !1041
  call void @llvm.dbg.value(metadata i32* %smallidx, i64 0, metadata !302, metadata !435), !dbg !1025
  %573 = sext i32 %564 to i64, !dbg !1444
  %574 = getelementptr inbounds [73 x i32]* @magicints, i64 0, i64 %573, !dbg !1444
  %575 = load i32* %574, align 4, !dbg !1444, !tbaa !727
  %576 = sdiv i32 %575, 2, !dbg !1445
  call void @llvm.dbg.value(metadata i32 %576, i64 0, metadata !313, metadata !435), !dbg !1044
  %577 = getelementptr inbounds [3 x i32]* %sizesmall, i64 0, i64 2, !dbg !1446
  store i32 %575, i32* %577, align 4, !dbg !1447, !tbaa !727
  %578 = getelementptr inbounds [3 x i32]* %sizesmall, i64 0, i64 1, !dbg !1448
  store i32 %575, i32* %578, align 4, !dbg !1449, !tbaa !727
  %579 = getelementptr inbounds [3 x i32]* %sizesmall, i64 0, i64 0, !dbg !1450
  store i32 %575, i32* %579, align 4, !dbg !1451, !tbaa !727
  %580 = load i32** @xdr3dfcoord.buf, align 8, !dbg !1452, !tbaa !611
  %581 = call i32 @xdr_int(%struct.XDR* %xdrs, i32* %580) #10, !dbg !1454
  %582 = icmp eq i32 %581, 0, !dbg !1455
  br i1 %582, label %.loopexit95, label %583, !dbg !1456

; <label>:583                                     ; preds = %568
  %584 = load i32** @xdr3dfcoord.buf, align 8, !dbg !1457, !tbaa !611
  %585 = getelementptr inbounds i32* %584, i64 3, !dbg !1457
  %586 = bitcast i32* %585 to i8*, !dbg !1459
  %587 = load i32* %584, align 4, !dbg !1460, !tbaa !727
  %588 = call i32 @xdr_opaque(%struct.XDR* %xdrs, i8* %586, i32 %587) #10, !dbg !1461
  %589 = icmp eq i32 %588, 0, !dbg !1462
  br i1 %589, label %.loopexit95, label %590, !dbg !1463

; <label>:590                                     ; preds = %583
  %591 = load i32** @xdr3dfcoord.buf, align 8, !dbg !1464, !tbaa !611
  %592 = getelementptr inbounds i32* %591, i64 2, !dbg !1464
  store i32 0, i32* %592, align 4, !dbg !1465, !tbaa !727
  %593 = getelementptr inbounds i32* %591, i64 1, !dbg !1466
  store i32 0, i32* %593, align 4, !dbg !1467, !tbaa !727
  store i32 0, i32* %591, align 4, !dbg !1468, !tbaa !727
  call void @llvm.dbg.value(metadata float* %fp, i64 0, metadata !321, metadata !435), !dbg !825
  %594 = load float* %precision, align 4, !dbg !1469, !tbaa !525
  %595 = fdiv float 1.000000e+00, %594, !dbg !1470
  call void @llvm.dbg.value(metadata float %595, i64 0, metadata !334, metadata !435), !dbg !1471
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !319, metadata !435), !dbg !1154
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !316, metadata !435), !dbg !1054
  %596 = load i32** @xdr3dfcoord.ip, align 8, !dbg !1472, !tbaa !611
  call void @llvm.dbg.value(metadata i32* %596, i64 0, metadata !294, metadata !435), !dbg !826
  call void @llvm.dbg.value(metadata i32* %lsize, i64 0, metadata !332, metadata !435), !dbg !1268
  %597 = load i32* %lsize, align 4, !dbg !1473, !tbaa !727
  %598 = icmp sgt i32 %597, 0, !dbg !1474
  br i1 %598, label %.lr.ph117, label %.loopexit95, !dbg !1475

.lr.ph117:                                        ; preds = %590
  %599 = icmp eq i32 %bitsize.1, 0, !dbg !1476
  br label %600, !dbg !1475

; <label>:600                                     ; preds = %._crit_edge181, %.lr.ph117
  %601 = phi i32* [ %591, %.lr.ph117 ], [ %.pre182, %._crit_edge181 ]
  %.pn = phi i32 [ %576, %.lr.ph117 ], [ %smallnum.3, %._crit_edge181 ]
  %lfp.1115 = phi float* [ %fp, %.lr.ph117 ], [ %lfp.4, %._crit_edge181 ]
  %run.1114 = phi i32 [ 0, %.lr.ph117 ], [ %run.2, %._crit_edge181 ]
  %i.2113 = phi i32 [ 0, %.lr.ph117 ], [ %i.4, %._crit_edge181 ]
  %smaller.2112 = phi i32 [ %572, %.lr.ph117 ], [ %smaller.3, %._crit_edge181 ]
  %602 = mul nsw i32 %i.2113, 3, !dbg !1479
  %603 = sext i32 %602 to i64, !dbg !1480
  %604 = getelementptr inbounds i32* %596, i64 %603, !dbg !1480
  call void @llvm.dbg.value(metadata i32* %604, i64 0, metadata !324, metadata !435), !dbg !1070
  br i1 %599, label %605, label %613, !dbg !1481

; <label>:605                                     ; preds = %600
  %606 = call fastcc i32 @receivebits(i32* %601, i32 %bitsizeint.sroa.0.1) #13, !dbg !1482
  store i32 %606, i32* %604, align 4, !dbg !1484, !tbaa !727
  %607 = load i32** @xdr3dfcoord.buf, align 8, !dbg !1485, !tbaa !611
  %608 = call fastcc i32 @receivebits(i32* %607, i32 %bitsizeint.sroa.4.1) #13, !dbg !1486
  %.sum13 = add nsw i64 %603, 1, !dbg !1487
  %609 = getelementptr inbounds i32* %596, i64 %.sum13, !dbg !1487
  store i32 %608, i32* %609, align 4, !dbg !1488, !tbaa !727
  %610 = load i32** @xdr3dfcoord.buf, align 8, !dbg !1489, !tbaa !611
  %611 = call fastcc i32 @receivebits(i32* %610, i32 %bitsizeint.sroa.8.1) #13, !dbg !1490
  %.sum14 = add nsw i64 %603, 2, !dbg !1491
  %612 = getelementptr inbounds i32* %596, i64 %.sum14, !dbg !1491
  store i32 %611, i32* %612, align 4, !dbg !1492, !tbaa !727
  br label %614, !dbg !1493

; <label>:613                                     ; preds = %600
  call fastcc void @receiveints(i32* %601, i32 %bitsize.1, i32* %535, i32* %604) #13, !dbg !1494
  %.pre183 = add nsw i64 %603, 1, !dbg !1496
  %.pre184 = add nsw i64 %603, 2, !dbg !1497
  br label %614

; <label>:614                                     ; preds = %613, %605
  %.sum9.pre-phi = phi i64 [ %.pre184, %613 ], [ %.sum14, %605 ], !dbg !1497
  %.sum.pre-phi = phi i64 [ %.pre183, %613 ], [ %.sum13, %605 ], !dbg !1496
  %615 = add nsw i32 %i.2113, 1, !dbg !1498
  call void @llvm.dbg.value(metadata i32 %615, i64 0, metadata !316, metadata !435), !dbg !1054
  %616 = load i32* %519, align 4, !dbg !1499, !tbaa !727
  %617 = load i32* %604, align 4, !dbg !1500, !tbaa !727
  %618 = add nsw i32 %617, %616, !dbg !1500
  store i32 %618, i32* %604, align 4, !dbg !1500, !tbaa !727
  %619 = load i32* %521, align 4, !dbg !1501, !tbaa !727
  %620 = getelementptr inbounds i32* %596, i64 %.sum.pre-phi, !dbg !1496
  %621 = load i32* %620, align 4, !dbg !1502, !tbaa !727
  %622 = add nsw i32 %621, %619, !dbg !1502
  store i32 %622, i32* %620, align 4, !dbg !1502, !tbaa !727
  %623 = load i32* %523, align 4, !dbg !1503, !tbaa !727
  %624 = getelementptr inbounds i32* %596, i64 %.sum9.pre-phi, !dbg !1497
  %625 = load i32* %624, align 4, !dbg !1504, !tbaa !727
  %626 = add nsw i32 %625, %623, !dbg !1504
  store i32 %626, i32* %624, align 4, !dbg !1504, !tbaa !727
  %627 = load i32* %604, align 4, !dbg !1505, !tbaa !727
  call void @llvm.dbg.value(metadata i32 %627, i64 0, metadata !325, metadata !998), !dbg !702
  %628 = load i32* %620, align 4, !dbg !1506, !tbaa !727
  call void @llvm.dbg.value(metadata i32 %628, i64 0, metadata !325, metadata !1009), !dbg !702
  call void @llvm.dbg.value(metadata i32 %626, i64 0, metadata !325, metadata !1153), !dbg !702
  %629 = load i32** @xdr3dfcoord.buf, align 8, !dbg !1507, !tbaa !611
  %630 = call fastcc i32 @receivebits(i32* %629, i32 1) #13, !dbg !1508
  call void @llvm.dbg.value(metadata i32 %630, i64 0, metadata !311, metadata !435), !dbg !1509
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !318, metadata !435), !dbg !1159
  %631 = icmp eq i32 %630, 1, !dbg !1510
  br i1 %631, label %632, label %638, !dbg !1512

; <label>:632                                     ; preds = %614
  %633 = load i32** @xdr3dfcoord.buf, align 8, !dbg !1513, !tbaa !611
  %634 = call fastcc i32 @receivebits(i32* %633, i32 5) #13, !dbg !1515
  call void @llvm.dbg.value(metadata i32 %634, i64 0, metadata !319, metadata !435), !dbg !1154
  %635 = srem i32 %634, 3, !dbg !1516
  call void @llvm.dbg.value(metadata i32 %635, i64 0, metadata !318, metadata !435), !dbg !1159
  %636 = sub nsw i32 %634, %635, !dbg !1517
  call void @llvm.dbg.value(metadata i32 %636, i64 0, metadata !319, metadata !435), !dbg !1154
  %637 = add nsw i32 %635, -1, !dbg !1518
  call void @llvm.dbg.value(metadata i32 %637, i64 0, metadata !318, metadata !435), !dbg !1159
  br label %638, !dbg !1519

; <label>:638                                     ; preds = %632, %614
  %is_smaller.3 = phi i32 [ %637, %632 ], [ 0, %614 ]
  %run.2 = phi i32 [ %636, %632 ], [ %run.1114, %614 ]
  %639 = icmp sgt i32 %run.2, 0, !dbg !1520
  br i1 %639, label %.lr.ph, label %683, !dbg !1522

.lr.ph:                                           ; preds = %638
  %.sum10 = add nsw i64 %603, 3, !dbg !1523
  %640 = getelementptr inbounds i32* %596, i64 %.sum10, !dbg !1523
  call void @llvm.dbg.value(metadata i32* %640, i64 0, metadata !324, metadata !435), !dbg !1070
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !312, metadata !435), !dbg !1225
  %.sum11 = add nsw i64 %603, 4, !dbg !1525
  %641 = getelementptr inbounds i32* %596, i64 %.sum11, !dbg !1525
  %.sum12 = add nsw i64 %603, 5, !dbg !1529
  %642 = getelementptr inbounds i32* %596, i64 %.sum12, !dbg !1529
  %643 = add i32 %run.2, -1, !dbg !1530
  %644 = udiv i32 %643, 3, !dbg !1530
  br label %645, !dbg !1530

; <label>:645                                     ; preds = %.lr.ph, %668
  %prevcoord.sroa.0.2108 = phi i32 [ %627, %.lr.ph ], [ %650, %668 ]
  %prevcoord.sroa.13.2107 = phi i32 [ %628, %.lr.ph ], [ %653, %668 ]
  %prevcoord.sroa.26.2106 = phi i32 [ %626, %.lr.ph ], [ %656, %668 ]
  %lfp.2105 = phi float* [ %lfp.1115, %.lr.ph ], [ %680, %668 ]
  %k.1103 = phi i32 [ 0, %.lr.ph ], [ %681, %668 ]
  %646 = load i32** @xdr3dfcoord.buf, align 8, !dbg !1531, !tbaa !611
  call void @llvm.dbg.value(metadata i32* %smallidx, i64 0, metadata !302, metadata !435), !dbg !1025
  %647 = load i32* %smallidx, align 4, !dbg !1532, !tbaa !727
  call fastcc void @receiveints(i32* %646, i32 %647, i32* %579, i32* %640) #13, !dbg !1533
  %648 = sub i32 %prevcoord.sroa.0.2108, %.pn, !dbg !1534
  %649 = load i32* %640, align 4, !dbg !1535, !tbaa !727
  %650 = add nsw i32 %648, %649, !dbg !1535
  store i32 %650, i32* %640, align 4, !dbg !1535, !tbaa !727
  %651 = sub i32 %prevcoord.sroa.13.2107, %.pn, !dbg !1536
  %652 = load i32* %641, align 4, !dbg !1537, !tbaa !727
  %653 = add nsw i32 %651, %652, !dbg !1537
  store i32 %653, i32* %641, align 4, !dbg !1537, !tbaa !727
  %654 = sub nsw i32 %prevcoord.sroa.26.2106, %.pn, !dbg !1538
  %655 = load i32* %642, align 4, !dbg !1539, !tbaa !727
  %656 = add nsw i32 %655, %654, !dbg !1539
  store i32 %656, i32* %642, align 4, !dbg !1539, !tbaa !727
  %657 = icmp eq i32 %k.1103, 0, !dbg !1540
  br i1 %657, label %658, label %668, !dbg !1542

; <label>:658                                     ; preds = %645
  call void @llvm.dbg.value(metadata i32 %650, i64 0, metadata !323, metadata !435), !dbg !1119
  store i32 %prevcoord.sroa.0.2108, i32* %640, align 4, !dbg !1543, !tbaa !727
  call void @llvm.dbg.value(metadata i32 %650, i64 0, metadata !325, metadata !998), !dbg !702
  call void @llvm.dbg.value(metadata i32 %653, i64 0, metadata !323, metadata !435), !dbg !1119
  store i32 %prevcoord.sroa.13.2107, i32* %641, align 4, !dbg !1545, !tbaa !727
  call void @llvm.dbg.value(metadata i32 %653, i64 0, metadata !325, metadata !1009), !dbg !702
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !323, metadata !435), !dbg !1119
  store i32 %prevcoord.sroa.26.2106, i32* %642, align 4, !dbg !1546, !tbaa !727
  call void @llvm.dbg.value(metadata i32 %656, i64 0, metadata !325, metadata !1153), !dbg !702
  %659 = sitofp i32 %650 to float, !dbg !1547
  %660 = fmul float %595, %659, !dbg !1548
  %661 = getelementptr inbounds float* %lfp.2105, i64 1, !dbg !1549
  call void @llvm.dbg.value(metadata float* %661, i64 0, metadata !321, metadata !435), !dbg !825
  store float %660, float* %lfp.2105, align 4, !dbg !1550, !tbaa !525
  %662 = sitofp i32 %653 to float, !dbg !1551
  %663 = fmul float %595, %662, !dbg !1552
  %664 = getelementptr inbounds float* %lfp.2105, i64 2, !dbg !1553
  call void @llvm.dbg.value(metadata float* %664, i64 0, metadata !321, metadata !435), !dbg !825
  store float %663, float* %661, align 4, !dbg !1554, !tbaa !525
  %665 = sitofp i32 %656 to float, !dbg !1555
  %666 = fmul float %595, %665, !dbg !1556
  %667 = getelementptr inbounds float* %lfp.2105, i64 3, !dbg !1557
  call void @llvm.dbg.value(metadata float* %667, i64 0, metadata !321, metadata !435), !dbg !825
  store float %666, float* %664, align 4, !dbg !1558, !tbaa !525
  br label %668, !dbg !1559

; <label>:668                                     ; preds = %645, %658
  %669 = phi i32 [ %prevcoord.sroa.26.2106, %658 ], [ %656, %645 ]
  %670 = phi i32 [ %prevcoord.sroa.13.2107, %658 ], [ %653, %645 ]
  %671 = phi i32 [ %prevcoord.sroa.0.2108, %658 ], [ %650, %645 ]
  %lfp.3 = phi float* [ %667, %658 ], [ %lfp.2105, %645 ]
  %672 = sitofp i32 %671 to float, !dbg !1560
  %673 = fmul float %595, %672, !dbg !1561
  %674 = getelementptr inbounds float* %lfp.3, i64 1, !dbg !1562
  call void @llvm.dbg.value(metadata float* %674, i64 0, metadata !321, metadata !435), !dbg !825
  store float %673, float* %lfp.3, align 4, !dbg !1563, !tbaa !525
  %675 = sitofp i32 %670 to float, !dbg !1564
  %676 = fmul float %595, %675, !dbg !1565
  %677 = getelementptr inbounds float* %lfp.3, i64 2, !dbg !1566
  call void @llvm.dbg.value(metadata float* %677, i64 0, metadata !321, metadata !435), !dbg !825
  store float %676, float* %674, align 4, !dbg !1567, !tbaa !525
  %678 = sitofp i32 %669 to float, !dbg !1568
  %679 = fmul float %595, %678, !dbg !1569
  %680 = getelementptr inbounds float* %lfp.3, i64 3, !dbg !1570
  call void @llvm.dbg.value(metadata float* %680, i64 0, metadata !321, metadata !435), !dbg !825
  store float %679, float* %677, align 4, !dbg !1571, !tbaa !525
  %681 = add nuw nsw i32 %k.1103, 3, !dbg !1572
  call void @llvm.dbg.value(metadata i32 %681, i64 0, metadata !312, metadata !435), !dbg !1225
  %682 = icmp slt i32 %681, %run.2, !dbg !1573
  br i1 %682, label %645, label %.loopexit, !dbg !1530

; <label>:683                                     ; preds = %638
  %684 = load i32* %604, align 4, !dbg !1574, !tbaa !727
  %685 = sitofp i32 %684 to float, !dbg !1574
  %686 = fmul float %595, %685, !dbg !1576
  %687 = getelementptr inbounds float* %lfp.1115, i64 1, !dbg !1577
  call void @llvm.dbg.value(metadata float* %687, i64 0, metadata !321, metadata !435), !dbg !825
  store float %686, float* %lfp.1115, align 4, !dbg !1578, !tbaa !525
  %688 = load i32* %620, align 4, !dbg !1579, !tbaa !727
  %689 = sitofp i32 %688 to float, !dbg !1579
  %690 = fmul float %595, %689, !dbg !1580
  %691 = getelementptr inbounds float* %lfp.1115, i64 2, !dbg !1581
  call void @llvm.dbg.value(metadata float* %691, i64 0, metadata !321, metadata !435), !dbg !825
  store float %690, float* %687, align 4, !dbg !1582, !tbaa !525
  %692 = load i32* %624, align 4, !dbg !1583, !tbaa !727
  %693 = sitofp i32 %692 to float, !dbg !1583
  %694 = fmul float %595, %693, !dbg !1584
  %695 = getelementptr inbounds float* %lfp.1115, i64 3, !dbg !1585
  call void @llvm.dbg.value(metadata float* %695, i64 0, metadata !321, metadata !435), !dbg !825
  store float %694, float* %691, align 4, !dbg !1586, !tbaa !525
  br label %698

.loopexit:                                        ; preds = %668
  %696 = add i32 %i.2113, 2, !dbg !1530
  %697 = add i32 %696, %644, !dbg !1530
  br label %698

; <label>:698                                     ; preds = %.loopexit, %683
  %i.4 = phi i32 [ %615, %683 ], [ %697, %.loopexit ]
  %lfp.4 = phi float* [ %695, %683 ], [ %680, %.loopexit ]
  call void @llvm.dbg.value(metadata i32* %smallidx, i64 0, metadata !302, metadata !435), !dbg !1025
  %699 = load i32* %smallidx, align 4, !dbg !1587, !tbaa !727
  %700 = add nsw i32 %699, %is_smaller.3, !dbg !1587
  call void @llvm.dbg.value(metadata i32 %700, i64 0, metadata !302, metadata !435), !dbg !1025
  store i32 %700, i32* %smallidx, align 4, !dbg !1587, !tbaa !727
  %701 = icmp slt i32 %is_smaller.3, 0, !dbg !1588
  br i1 %701, label %702, label %710, !dbg !1590

; <label>:702                                     ; preds = %698
  call void @llvm.dbg.value(metadata i32 %smaller.3, i64 0, metadata !313, metadata !435), !dbg !1044
  %703 = icmp sgt i32 %700, 9, !dbg !1591
  br i1 %703, label %704, label %717, !dbg !1594

; <label>:704                                     ; preds = %702
  %705 = add nsw i32 %700, -1, !dbg !1595
  %706 = sext i32 %705 to i64, !dbg !1597
  %707 = getelementptr inbounds [73 x i32]* @magicints, i64 0, i64 %706, !dbg !1597
  %708 = load i32* %707, align 4, !dbg !1597, !tbaa !727
  %709 = sdiv i32 %708, 2, !dbg !1598
  call void @llvm.dbg.value(metadata i32 %709, i64 0, metadata !314, metadata !435), !dbg !1041
  br label %717, !dbg !1599

; <label>:710                                     ; preds = %698
  %711 = icmp sgt i32 %is_smaller.3, 0, !dbg !1600
  br i1 %711, label %712, label %717, !dbg !1602

; <label>:712                                     ; preds = %710
  call void @llvm.dbg.value(metadata i32 %smallnum.3, i64 0, metadata !314, metadata !435), !dbg !1041
  %713 = sext i32 %700 to i64, !dbg !1603
  %714 = getelementptr inbounds [73 x i32]* @magicints, i64 0, i64 %713, !dbg !1603
  %715 = load i32* %714, align 4, !dbg !1603, !tbaa !727
  %716 = sdiv i32 %715, 2, !dbg !1605
  call void @llvm.dbg.value(metadata i32 %716, i64 0, metadata !313, metadata !435), !dbg !1044
  br label %717, !dbg !1606

; <label>:717                                     ; preds = %702, %710, %712, %704
  %smallnum.3 = phi i32 [ %smaller.2112, %704 ], [ %716, %712 ], [ %.pn, %710 ], [ %smaller.2112, %702 ]
  %smaller.3 = phi i32 [ %709, %704 ], [ %.pn, %712 ], [ %smaller.2112, %710 ], [ 0, %702 ]
  call void @llvm.dbg.value(metadata i32* %smallidx, i64 0, metadata !302, metadata !435), !dbg !1025
  %718 = sext i32 %700 to i64, !dbg !1607
  %719 = getelementptr inbounds [73 x i32]* @magicints, i64 0, i64 %718, !dbg !1607
  %720 = load i32* %719, align 4, !dbg !1607, !tbaa !727
  store i32 %720, i32* %577, align 4, !dbg !1608, !tbaa !727
  store i32 %720, i32* %578, align 4, !dbg !1609, !tbaa !727
  store i32 %720, i32* %579, align 4, !dbg !1610, !tbaa !727
  call void @llvm.dbg.value(metadata i32* %lsize, i64 0, metadata !332, metadata !435), !dbg !1268
  %721 = load i32* %lsize, align 4, !dbg !1473, !tbaa !727
  %722 = icmp slt i32 %i.4, %721, !dbg !1474
  br i1 %722, label %._crit_edge181, label %.loopexit95, !dbg !1475

._crit_edge181:                                   ; preds = %717
  %.pre182 = load i32** @xdr3dfcoord.buf, align 8, !dbg !1611, !tbaa !611
  br label %600, !dbg !1475

.loopexit95:                                      ; preds = %717, %590, %583, %568, %sizeofint.exit91, %442, %14, %458, %434, %21
  %.0 = phi i32 [ %23, %21 ], [ %441, %434 ], [ %460, %458 ], [ 0, %14 ], [ 0, %442 ], [ 0, %sizeofint.exit91 ], [ 0, %568 ], [ 0, %583 ], [ 1, %590 ], [ 1, %717 ]
  call void @llvm.lifetime.end(i64 120, i8* %1) #7, !dbg !1612
  ret i32 %.0, !dbg !1612
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #7

; Function Attrs: optsize
declare i32 @xdr_int(%struct.XDR*, i32*) #3

; Function Attrs: optsize
declare i32 @xdr_vector(%struct.XDR*, i8*, i32, i32, i32 (%struct.XDR*, i8*, ...)*) #3

; Function Attrs: optsize
declare i32 @xdr_float(%struct.XDR*, float*) #3

; Function Attrs: nounwind optsize
declare noalias i8* @realloc(i8* nocapture, i64) #5

; Function Attrs: nounwind optsize readonly ssp uwtable
define internal fastcc i32 @sizeofints(i32* nocapture readonly %sizes) #8 {
  %bytes = alloca [32 x i32], align 16
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !348, metadata !435), !dbg !1613
  %1 = bitcast [32 x i32]* %bytes to i8*, !dbg !1614
  call void @llvm.lifetime.start(i64 128, i8* %1) #7, !dbg !1614
  tail call void @llvm.dbg.declare(metadata [32 x i32]* %bytes, metadata !354, metadata !435), !dbg !1615
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !352, metadata !435), !dbg !1616
  %2 = getelementptr inbounds [32 x i32]* %bytes, i64 0, i64 0, !dbg !1617
  store i32 1, i32* %2, align 16, !dbg !1618, !tbaa !727
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !353, metadata !435), !dbg !1619
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !350, metadata !435), !dbg !1620
  br label %.preheader1, !dbg !1621

.preheader1:                                      ; preds = %._crit_edge12, %0
  %indvars.iv19 = phi i64 [ 0, %0 ], [ %indvars.iv.next20, %._crit_edge12 ]
  %num_of_bytes.014 = phi i32 [ 1, %0 ], [ %bytecnt.1.lcssa, %._crit_edge12 ]
  %3 = icmp eq i32 %num_of_bytes.014, 0, !dbg !1623
  br i1 %3, label %._crit_edge12, label %.lr.ph6, !dbg !1628

.lr.ph6:                                          ; preds = %.preheader1
  %4 = getelementptr inbounds i32* %sizes, i64 %indvars.iv19, !dbg !1629
  %5 = load i32* %4, align 4, !dbg !1629, !tbaa !727
  %6 = add i32 %num_of_bytes.014, -1, !dbg !1628
  br label %8, !dbg !1628

.preheader:                                       ; preds = %8
  %7 = icmp eq i32 %14, 0, !dbg !1631
  br i1 %7, label %._crit_edge12, label %.lr.ph11, !dbg !1632

; <label>:8                                       ; preds = %8, %.lr.ph6
  %indvars.iv = phi i64 [ 0, %.lr.ph6 ], [ %indvars.iv.next, %8 ]
  %tmp.05 = phi i32 [ 0, %.lr.ph6 ], [ %14, %8 ]
  %9 = getelementptr inbounds [32 x i32]* %bytes, i64 0, i64 %indvars.iv, !dbg !1633
  %10 = load i32* %9, align 4, !dbg !1633, !tbaa !727
  %11 = mul i32 %5, %10, !dbg !1634
  %12 = add i32 %11, %tmp.05, !dbg !1635
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !359, metadata !435), !dbg !1636
  %13 = and i32 %12, 255, !dbg !1637
  store i32 %13, i32* %9, align 4, !dbg !1638, !tbaa !727
  %14 = lshr i32 %12, 8, !dbg !1639
  tail call void @llvm.dbg.value(metadata i32 %14, i64 0, metadata !359, metadata !435), !dbg !1636
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1628
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !1628
  %exitcond = icmp eq i32 %lftr.wideiv, %6, !dbg !1628
  br i1 %exitcond, label %.preheader, label %8, !dbg !1628

.lr.ph11:                                         ; preds = %.preheader, %.lr.ph11
  %tmp.110 = phi i32 [ %19, %.lr.ph11 ], [ %14, %.preheader ]
  %bytecnt.19 = phi i32 [ %16, %.lr.ph11 ], [ %num_of_bytes.014, %.preheader ]
  %15 = and i32 %tmp.110, 255, !dbg !1640
  %16 = add i32 %bytecnt.19, 1, !dbg !1642
  tail call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !358, metadata !435), !dbg !1643
  %17 = zext i32 %bytecnt.19 to i64, !dbg !1644
  %18 = getelementptr inbounds [32 x i32]* %bytes, i64 0, i64 %17, !dbg !1644
  store i32 %15, i32* %18, align 4, !dbg !1645, !tbaa !727
  %19 = lshr i32 %tmp.110, 8, !dbg !1646
  tail call void @llvm.dbg.value(metadata i32 %19, i64 0, metadata !359, metadata !435), !dbg !1636
  %20 = icmp eq i32 %19, 0, !dbg !1631
  br i1 %20, label %._crit_edge12, label %.lr.ph11, !dbg !1632

._crit_edge12:                                    ; preds = %.lr.ph11, %.preheader1, %.preheader
  %bytecnt.1.lcssa = phi i32 [ %num_of_bytes.014, %.preheader ], [ 0, %.preheader1 ], [ %16, %.lr.ph11 ]
  tail call void @llvm.dbg.value(metadata i32 %16, i64 0, metadata !352, metadata !435), !dbg !1616
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1, !dbg !1621
  %exitcond21 = icmp eq i64 %indvars.iv.next20, 3, !dbg !1621
  br i1 %exitcond21, label %21, label %.preheader1, !dbg !1621

; <label>:21                                      ; preds = %._crit_edge12
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !351, metadata !435), !dbg !1647
  %22 = add i32 %bytecnt.1.lcssa, -1, !dbg !1648
  tail call void @llvm.dbg.value(metadata i32 %22, i64 0, metadata !352, metadata !435), !dbg !1616
  %23 = zext i32 %22 to i64, !dbg !1649
  %24 = getelementptr inbounds [32 x i32]* %bytes, i64 0, i64 %23, !dbg !1649
  %25 = load i32* %24, align 4, !dbg !1649, !tbaa !727
  %26 = icmp eq i32 %25, 0, !dbg !1650
  br i1 %26, label %._crit_edge, label %.lr.ph, !dbg !1651

.lr.ph:                                           ; preds = %21, %.lr.ph
  %num_of_bits.03 = phi i32 [ %27, %.lr.ph ], [ 0, %21 ]
  %num.02 = phi i32 [ %28, %.lr.ph ], [ 1, %21 ]
  %27 = add i32 %num_of_bits.03, 1, !dbg !1652
  tail call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !353, metadata !435), !dbg !1619
  %28 = shl nsw i32 %num.02, 1, !dbg !1654
  tail call void @llvm.dbg.value(metadata i32 %28, i64 0, metadata !351, metadata !435), !dbg !1647
  %29 = icmp ult i32 %25, %28, !dbg !1650
  br i1 %29, label %._crit_edge, label %.lr.ph, !dbg !1651

._crit_edge:                                      ; preds = %.lr.ph, %21
  %num_of_bits.0.lcssa = phi i32 [ 0, %21 ], [ %27, %.lr.ph ]
  %30 = shl i32 %22, 3, !dbg !1655
  %31 = add i32 %num_of_bits.0.lcssa, %30, !dbg !1656
  call void @llvm.lifetime.end(i64 128, i8* %1) #7, !dbg !1657
  ret i32 %31, !dbg !1657
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @sendbits(i32* nocapture %buf, i32 %num_of_bits, i32 %num) #4 {
  tail call void @llvm.dbg.value(metadata i32* %buf, i64 0, metadata !364, metadata !435), !dbg !1658
  tail call void @llvm.dbg.value(metadata i32 %num_of_bits, i64 0, metadata !365, metadata !435), !dbg !1659
  tail call void @llvm.dbg.value(metadata i32 %num, i64 0, metadata !366, metadata !435), !dbg !1660
  %1 = getelementptr inbounds i32* %buf, i64 3, !dbg !1661
  %2 = bitcast i32* %1 to i8*, !dbg !1661
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !370, metadata !435), !dbg !1662
  %3 = load i32* %buf, align 4, !dbg !1663, !tbaa !727
  tail call void @llvm.dbg.value(metadata i32 %3, i64 0, metadata !367, metadata !435), !dbg !1664
  %4 = getelementptr inbounds i32* %buf, i64 1, !dbg !1665
  %5 = load i32* %4, align 4, !dbg !1665, !tbaa !727
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !369, metadata !435), !dbg !1666
  %6 = getelementptr inbounds i32* %buf, i64 2, !dbg !1667
  %7 = load i32* %6, align 4, !dbg !1667, !tbaa !727
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !368, metadata !435), !dbg !1668
  %8 = icmp sgt i32 %num_of_bits, 7, !dbg !1669
  br i1 %8, label %.lr.ph, label %26, !dbg !1670

.lr.ph:                                           ; preds = %0
  %9 = add i32 %num_of_bits, -8, !dbg !1670
  %10 = lshr i32 %9, 3, !dbg !1670
  %11 = add i32 %3, %10, !dbg !1670
  %12 = shl nuw i32 %10, 3, !dbg !1670
  br label %13, !dbg !1670

; <label>:13                                      ; preds = %.lr.ph, %13
  %.03 = phi i32 [ %num_of_bits, %.lr.ph ], [ %15, %13 ]
  %lastbyte.02 = phi i32 [ %7, %.lr.ph ], [ %17, %13 ]
  %cnt.01 = phi i32 [ %3, %.lr.ph ], [ %20, %13 ]
  %14 = shl i32 %lastbyte.02, 8, !dbg !1671
  %15 = add nsw i32 %.03, -8, !dbg !1673
  %16 = ashr i32 %num, %15, !dbg !1674
  %17 = or i32 %16, %14, !dbg !1675
  tail call void @llvm.dbg.value(metadata i32 %17, i64 0, metadata !368, metadata !435), !dbg !1668
  %18 = lshr i32 %17, %5, !dbg !1676
  %19 = trunc i32 %18 to i8, !dbg !1677
  %20 = add i32 %cnt.01, 1, !dbg !1678
  tail call void @llvm.dbg.value(metadata i32 %20, i64 0, metadata !367, metadata !435), !dbg !1664
  %21 = zext i32 %cnt.01 to i64, !dbg !1679
  %22 = getelementptr inbounds i8* %2, i64 %21, !dbg !1679
  store i8 %19, i8* %22, align 1, !dbg !1680, !tbaa !587
  tail call void @llvm.dbg.value(metadata i32 %15, i64 0, metadata !365, metadata !435), !dbg !1659
  %23 = icmp sgt i32 %15, 7, !dbg !1669
  br i1 %23, label %13, label %._crit_edge, !dbg !1670

._crit_edge:                                      ; preds = %13
  %24 = add i32 %11, 1, !dbg !1670
  %25 = sub i32 %9, %12, !dbg !1670
  br label %26, !dbg !1670

; <label>:26                                      ; preds = %._crit_edge, %0
  %.0.lcssa = phi i32 [ %25, %._crit_edge ], [ %num_of_bits, %0 ]
  %lastbyte.0.lcssa = phi i32 [ %17, %._crit_edge ], [ %7, %0 ]
  %cnt.0.lcssa = phi i32 [ %24, %._crit_edge ], [ %3, %0 ]
  %27 = icmp sgt i32 %.0.lcssa, 0, !dbg !1681
  br i1 %27, label %28, label %40, !dbg !1683

; <label>:28                                      ; preds = %26
  %29 = shl i32 %lastbyte.0.lcssa, %.0.lcssa, !dbg !1684
  %30 = or i32 %29, %num, !dbg !1686
  tail call void @llvm.dbg.value(metadata i32 %30, i64 0, metadata !368, metadata !435), !dbg !1668
  %31 = add nsw i32 %.0.lcssa, %5, !dbg !1687
  tail call void @llvm.dbg.value(metadata i32 %31, i64 0, metadata !369, metadata !435), !dbg !1666
  %32 = icmp sgt i32 %31, 7, !dbg !1688
  br i1 %32, label %33, label %40, !dbg !1690

; <label>:33                                      ; preds = %28
  %34 = add nsw i32 %31, -8, !dbg !1691
  tail call void @llvm.dbg.value(metadata i32 %34, i64 0, metadata !369, metadata !435), !dbg !1666
  %35 = lshr i32 %30, %34, !dbg !1693
  %36 = trunc i32 %35 to i8, !dbg !1694
  %37 = add i32 %cnt.0.lcssa, 1, !dbg !1695
  tail call void @llvm.dbg.value(metadata i32 %37, i64 0, metadata !367, metadata !435), !dbg !1664
  %38 = zext i32 %cnt.0.lcssa to i64, !dbg !1696
  %39 = getelementptr inbounds i8* %2, i64 %38, !dbg !1696
  store i8 %36, i8* %39, align 1, !dbg !1697, !tbaa !587
  br label %40, !dbg !1698

; <label>:40                                      ; preds = %28, %33, %26
  %cnt.1 = phi i32 [ %37, %33 ], [ %cnt.0.lcssa, %28 ], [ %cnt.0.lcssa, %26 ]
  %lastbyte.1 = phi i32 [ %30, %33 ], [ %30, %28 ], [ %lastbyte.0.lcssa, %26 ]
  %lastbits.0 = phi i32 [ %34, %33 ], [ %31, %28 ], [ %5, %26 ]
  store i32 %cnt.1, i32* %buf, align 4, !dbg !1699, !tbaa !727
  store i32 %lastbits.0, i32* %4, align 4, !dbg !1700, !tbaa !727
  store i32 %lastbyte.1, i32* %6, align 4, !dbg !1701, !tbaa !727
  %41 = icmp sgt i32 %lastbits.0, 0, !dbg !1702
  br i1 %41, label %42, label %48, !dbg !1704

; <label>:42                                      ; preds = %40
  %43 = sub nsw i32 8, %lastbits.0, !dbg !1705
  %44 = shl i32 %lastbyte.1, %43, !dbg !1707
  %45 = trunc i32 %44 to i8, !dbg !1708
  %46 = zext i32 %cnt.1 to i64, !dbg !1709
  %47 = getelementptr inbounds i8* %2, i64 %46, !dbg !1709
  store i8 %45, i8* %47, align 1, !dbg !1710, !tbaa !587
  br label %48, !dbg !1711

; <label>:48                                      ; preds = %42, %40
  ret void, !dbg !1712
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @sendints(i32* nocapture %buf, i32 %num_of_bits, i32* nocapture readonly %sizes, i32* nocapture readonly %nums) #4 {
  %bytes = alloca [32 x i32], align 16
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !376, metadata !435), !dbg !1713
  %1 = bitcast [32 x i32]* %bytes to i8*, !dbg !1714
  call void @llvm.lifetime.start(i64 128, i8* %1) #7, !dbg !1714
  tail call void @llvm.dbg.declare(metadata [32 x i32]* %bytes, metadata !381, metadata !435), !dbg !1715
  %2 = load i32* %nums, align 4, !dbg !1716, !tbaa !727
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !384, metadata !435), !dbg !1717
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !382, metadata !435), !dbg !1718
  br label %3, !dbg !1719

; <label>:3                                       ; preds = %3, %0
  %num_of_bytes.0 = phi i32 [ 0, %0 ], [ %5, %3 ]
  %tmp.0 = phi i32 [ %2, %0 ], [ %8, %3 ]
  %4 = and i32 %tmp.0, 255, !dbg !1720
  %5 = add i32 %num_of_bytes.0, 1, !dbg !1722
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !382, metadata !435), !dbg !1718
  %6 = zext i32 %num_of_bytes.0 to i64, !dbg !1723
  %7 = getelementptr inbounds [32 x i32]* %bytes, i64 0, i64 %6, !dbg !1723
  store i32 %4, i32* %7, align 4, !dbg !1724, !tbaa !727
  %8 = lshr i32 %tmp.0, 8, !dbg !1725
  tail call void @llvm.dbg.value(metadata i32 %8, i64 0, metadata !384, metadata !435), !dbg !1717
  %9 = icmp eq i32 %8, 0, !dbg !1726
  br i1 %9, label %.preheader4, label %3, !dbg !1727

.preheader4:                                      ; preds = %3, %._crit_edge22
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %._crit_edge22 ], [ 1, %3 ]
  %num_of_bytes.125 = phi i32 [ %bytecnt.1.lcssa, %._crit_edge22 ], [ %5, %3 ]
  %10 = getelementptr inbounds i32* %nums, i64 %indvars.iv42, !dbg !1728
  %11 = load i32* %10, align 4, !dbg !1728, !tbaa !727
  %12 = getelementptr inbounds i32* %sizes, i64 %indvars.iv42, !dbg !1733
  %13 = load i32* %12, align 4, !dbg !1733, !tbaa !727
  %14 = icmp ult i32 %11, %13, !dbg !1734
  br i1 %14, label %.preheader3, label %17, !dbg !1735

.preheader3:                                      ; preds = %.preheader4
  %15 = icmp eq i32 %num_of_bytes.125, 0, !dbg !1736
  br i1 %15, label %.preheader2, label %.lr.ph16, !dbg !1739

.lr.ph16:                                         ; preds = %.preheader3
  %16 = add i32 %num_of_bytes.125, -1, !dbg !1739
  br label %21, !dbg !1739

; <label>:17                                      ; preds = %.preheader4
  %18 = load %struct.__sFILE** @__stderrp, align 8, !dbg !1740, !tbaa !611
  %19 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %18, i8* getelementptr inbounds ([58 x i8]* @.str9, i64 0, i64 0), i32 %11, i32 %13) #10, !dbg !1742
  tail call void @exit(i32 1) #11, !dbg !1743
  unreachable, !dbg !1743

.preheader2:                                      ; preds = %21, %.preheader3
  %tmp.1.lcssa = phi i32 [ %11, %.preheader3 ], [ %27, %21 ]
  %bytecnt.0.lcssa = phi i32 [ 0, %.preheader3 ], [ %num_of_bytes.125, %21 ]
  %20 = icmp eq i32 %tmp.1.lcssa, 0, !dbg !1744
  br i1 %20, label %._crit_edge22, label %.lr.ph21, !dbg !1745

; <label>:21                                      ; preds = %21, %.lr.ph16
  %indvars.iv38 = phi i64 [ 0, %.lr.ph16 ], [ %indvars.iv.next39, %21 ]
  %tmp.115 = phi i32 [ %11, %.lr.ph16 ], [ %27, %21 ]
  %22 = getelementptr inbounds [32 x i32]* %bytes, i64 0, i64 %indvars.iv38, !dbg !1746
  %23 = load i32* %22, align 4, !dbg !1746, !tbaa !727
  %24 = mul i32 %13, %23, !dbg !1748
  %25 = add i32 %24, %tmp.115, !dbg !1749
  tail call void @llvm.dbg.value(metadata i32 %25, i64 0, metadata !384, metadata !435), !dbg !1717
  %26 = and i32 %25, 255, !dbg !1750
  store i32 %26, i32* %22, align 4, !dbg !1751, !tbaa !727
  %27 = lshr i32 %25, 8, !dbg !1752
  tail call void @llvm.dbg.value(metadata i32 %27, i64 0, metadata !384, metadata !435), !dbg !1717
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1, !dbg !1739
  %lftr.wideiv40 = trunc i64 %indvars.iv38 to i32, !dbg !1739
  %exitcond41 = icmp eq i32 %lftr.wideiv40, %16, !dbg !1739
  br i1 %exitcond41, label %.preheader2, label %21, !dbg !1739

.lr.ph21:                                         ; preds = %.preheader2, %.lr.ph21
  %tmp.220 = phi i32 [ %32, %.lr.ph21 ], [ %tmp.1.lcssa, %.preheader2 ]
  %bytecnt.119 = phi i32 [ %29, %.lr.ph21 ], [ %bytecnt.0.lcssa, %.preheader2 ]
  %28 = and i32 %tmp.220, 255, !dbg !1753
  %29 = add i32 %bytecnt.119, 1, !dbg !1755
  tail call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !383, metadata !435), !dbg !1756
  %30 = zext i32 %bytecnt.119 to i64, !dbg !1757
  %31 = getelementptr inbounds [32 x i32]* %bytes, i64 0, i64 %30, !dbg !1757
  store i32 %28, i32* %31, align 4, !dbg !1758, !tbaa !727
  %32 = lshr i32 %tmp.220, 8, !dbg !1759
  tail call void @llvm.dbg.value(metadata i32 %32, i64 0, metadata !384, metadata !435), !dbg !1717
  %33 = icmp eq i32 %32, 0, !dbg !1744
  br i1 %33, label %._crit_edge22, label %.lr.ph21, !dbg !1745

._crit_edge22:                                    ; preds = %.lr.ph21, %.preheader2
  %bytecnt.1.lcssa = phi i32 [ %bytecnt.0.lcssa, %.preheader2 ], [ %29, %.lr.ph21 ]
  tail call void @llvm.dbg.value(metadata i32 %29, i64 0, metadata !382, metadata !435), !dbg !1718
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1, !dbg !1760
  %34 = icmp slt i64 %indvars.iv.next43, 3, !dbg !1761
  br i1 %34, label %.preheader4, label %35, !dbg !1760

; <label>:35                                      ; preds = %._crit_edge22
  %36 = shl i32 %bytecnt.1.lcssa, 3, !dbg !1762
  %37 = icmp ugt i32 %36, %num_of_bits, !dbg !1764
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !380, metadata !435), !dbg !1765
  br i1 %37, label %.preheader, label %.preheader1, !dbg !1766

.preheader1:                                      ; preds = %35
  %38 = icmp eq i32 %bytecnt.1.lcssa, 0, !dbg !1767
  br i1 %38, label %._crit_edge13, label %.lr.ph12, !dbg !1771

.lr.ph12:                                         ; preds = %.preheader1
  %39 = add i32 %bytecnt.1.lcssa, -1, !dbg !1771
  br label %43, !dbg !1771

.preheader:                                       ; preds = %35
  %40 = add i32 %bytecnt.1.lcssa, -1, !dbg !1772
  %41 = icmp eq i32 %40, 0, !dbg !1776
  br i1 %41, label %51, label %.lr.ph, !dbg !1777

.lr.ph:                                           ; preds = %.preheader
  %42 = add i32 %bytecnt.1.lcssa, -2, !dbg !1777
  br label %47, !dbg !1777

; <label>:43                                      ; preds = %43, %.lr.ph12
  %indvars.iv34 = phi i64 [ 0, %.lr.ph12 ], [ %indvars.iv.next35, %43 ]
  %44 = getelementptr inbounds [32 x i32]* %bytes, i64 0, i64 %indvars.iv34, !dbg !1778
  %45 = load i32* %44, align 4, !dbg !1778, !tbaa !727
  tail call fastcc void @sendbits(i32* %buf, i32 8, i32 %45) #13, !dbg !1780
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1, !dbg !1771
  %lftr.wideiv36 = trunc i64 %indvars.iv34 to i32, !dbg !1771
  %exitcond37 = icmp eq i32 %lftr.wideiv36, %39, !dbg !1771
  br i1 %exitcond37, label %._crit_edge13, label %43, !dbg !1771

._crit_edge13:                                    ; preds = %43, %.preheader1
  %46 = sub i32 %num_of_bits, %36, !dbg !1781
  tail call fastcc void @sendbits(i32* %buf, i32 %46, i32 0) #13, !dbg !1782
  br label %56, !dbg !1783

; <label>:47                                      ; preds = %47, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %47 ]
  %48 = getelementptr inbounds [32 x i32]* %bytes, i64 0, i64 %indvars.iv, !dbg !1784
  %49 = load i32* %48, align 4, !dbg !1784, !tbaa !727
  tail call fastcc void @sendbits(i32* %buf, i32 8, i32 %49) #13, !dbg !1786
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1777
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !1777
  %exitcond = icmp eq i32 %lftr.wideiv, %42, !dbg !1777
  br i1 %exitcond, label %._crit_edge, label %47, !dbg !1777

._crit_edge:                                      ; preds = %47
  %50 = add i32 %bytecnt.1.lcssa, -1, !dbg !1777
  %phitmp = sext i32 %50 to i64, !dbg !1777
  br label %51, !dbg !1777

; <label>:51                                      ; preds = %.preheader, %._crit_edge
  %i.2.lcssa = phi i64 [ %phitmp, %._crit_edge ], [ 0, %.preheader ]
  %52 = shl i32 %40, 3, !dbg !1787
  %53 = sub i32 %num_of_bits, %52, !dbg !1788
  %54 = getelementptr inbounds [32 x i32]* %bytes, i64 0, i64 %i.2.lcssa, !dbg !1789
  %55 = load i32* %54, align 4, !dbg !1789, !tbaa !727
  tail call fastcc void @sendbits(i32* %buf, i32 %53, i32 %55) #13, !dbg !1790
  br label %56

; <label>:56                                      ; preds = %51, %._crit_edge13
  call void @llvm.lifetime.end(i64 128, i8* %1) #7, !dbg !1791
  ret void, !dbg !1791
}

; Function Attrs: optsize
declare i32 @xdr_opaque(%struct.XDR*, i8*, i32) #3

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc i32 @receivebits(i32* nocapture %buf, i32 %num_of_bits) #4 {
  tail call void @llvm.dbg.value(metadata i32* %buf, i64 0, metadata !389, metadata !435), !dbg !1792
  tail call void @llvm.dbg.value(metadata i32 %num_of_bits, i64 0, metadata !390, metadata !435), !dbg !1793
  %1 = shl i32 1, %num_of_bits, !dbg !1794
  %2 = add nsw i32 %1, -1, !dbg !1795
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !396, metadata !435), !dbg !1796
  %3 = getelementptr inbounds i32* %buf, i64 3, !dbg !1797
  %4 = bitcast i32* %3 to i8*, !dbg !1797
  tail call void @llvm.dbg.value(metadata i8* %4, i64 0, metadata !395, metadata !435), !dbg !1798
  %5 = load i32* %buf, align 4, !dbg !1799, !tbaa !727
  tail call void @llvm.dbg.value(metadata i32 %5, i64 0, metadata !391, metadata !435), !dbg !1800
  %6 = getelementptr inbounds i32* %buf, i64 1, !dbg !1801
  %7 = load i32* %6, align 4, !dbg !1801, !tbaa !727
  tail call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !393, metadata !435), !dbg !1802
  %8 = getelementptr inbounds i32* %buf, i64 2, !dbg !1803
  %9 = load i32* %8, align 4, !dbg !1803, !tbaa !727
  tail call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !394, metadata !435), !dbg !1804
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !392, metadata !435), !dbg !1805
  %10 = icmp sgt i32 %num_of_bits, 7, !dbg !1806
  br i1 %10, label %.lr.ph, label %29, !dbg !1807

.lr.ph:                                           ; preds = %0
  %11 = sext i32 %5 to i64
  %12 = add i32 %num_of_bits, -8, !dbg !1807
  %13 = lshr i32 %12, 3, !dbg !1807
  %14 = shl nuw i32 %13, 3, !dbg !1807
  %15 = add i32 %5, %13, !dbg !1807
  br label %16, !dbg !1807

; <label>:16                                      ; preds = %.lr.ph, %16
  %indvars.iv = phi i64 [ %11, %.lr.ph ], [ %indvars.iv.next, %16 ]
  %.04 = phi i32 [ %num_of_bits, %.lr.ph ], [ %23, %16 ]
  %lastbyte.02 = phi i32 [ %9, %.lr.ph ], [ %21, %16 ]
  %num.01 = phi i32 [ 0, %.lr.ph ], [ %25, %16 ]
  %17 = shl i32 %lastbyte.02, 8, !dbg !1808
  %indvars.iv.next = add nsw i64 %indvars.iv, 1, !dbg !1807
  %18 = getelementptr inbounds i8* %4, i64 %indvars.iv, !dbg !1810
  %19 = load i8* %18, align 1, !dbg !1810, !tbaa !587
  %20 = zext i8 %19 to i32, !dbg !1810
  %21 = or i32 %20, %17, !dbg !1811
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !394, metadata !435), !dbg !1804
  %22 = lshr i32 %21, %7, !dbg !1812
  %23 = add nsw i32 %.04, -8, !dbg !1813
  %24 = shl i32 %22, %23, !dbg !1814
  %25 = or i32 %24, %num.01, !dbg !1815
  tail call void @llvm.dbg.value(metadata i32 %25, i64 0, metadata !392, metadata !435), !dbg !1805
  tail call void @llvm.dbg.value(metadata i32 %23, i64 0, metadata !390, metadata !435), !dbg !1793
  %26 = icmp sgt i32 %23, 7, !dbg !1806
  br i1 %26, label %16, label %._crit_edge, !dbg !1807

._crit_edge:                                      ; preds = %16
  %27 = sub i32 %12, %14, !dbg !1807
  %28 = add i32 %15, 1, !dbg !1807
  br label %29, !dbg !1807

; <label>:29                                      ; preds = %._crit_edge, %0
  %.0.lcssa = phi i32 [ %27, %._crit_edge ], [ %num_of_bits, %0 ]
  %cnt.0.lcssa = phi i32 [ %28, %._crit_edge ], [ %5, %0 ]
  %lastbyte.0.lcssa = phi i32 [ %21, %._crit_edge ], [ %9, %0 ]
  %num.0.lcssa = phi i32 [ %25, %._crit_edge ], [ 0, %0 ]
  %30 = icmp sgt i32 %.0.lcssa, 0, !dbg !1816
  br i1 %30, label %31, label %49, !dbg !1818

; <label>:31                                      ; preds = %29
  %32 = icmp ult i32 %7, %.0.lcssa, !dbg !1819
  br i1 %32, label %33, label %42, !dbg !1822

; <label>:33                                      ; preds = %31
  %34 = add i32 %7, 8, !dbg !1823
  tail call void @llvm.dbg.value(metadata i32 %34, i64 0, metadata !393, metadata !435), !dbg !1802
  %35 = shl i32 %lastbyte.0.lcssa, 8, !dbg !1825
  %36 = add nsw i32 %cnt.0.lcssa, 1, !dbg !1826
  tail call void @llvm.dbg.value(metadata i32 %36, i64 0, metadata !391, metadata !435), !dbg !1800
  %37 = sext i32 %cnt.0.lcssa to i64, !dbg !1827
  %38 = getelementptr inbounds i8* %4, i64 %37, !dbg !1827
  %39 = load i8* %38, align 1, !dbg !1827, !tbaa !587
  %40 = zext i8 %39 to i32, !dbg !1827
  %41 = or i32 %40, %35, !dbg !1828
  tail call void @llvm.dbg.value(metadata i32 %41, i64 0, metadata !394, metadata !435), !dbg !1804
  br label %42, !dbg !1829

; <label>:42                                      ; preds = %33, %31
  %lastbits.0 = phi i32 [ %34, %33 ], [ %7, %31 ]
  %lastbyte.1 = phi i32 [ %41, %33 ], [ %lastbyte.0.lcssa, %31 ]
  %cnt.1 = phi i32 [ %36, %33 ], [ %cnt.0.lcssa, %31 ]
  %43 = sub i32 %lastbits.0, %.0.lcssa, !dbg !1830
  tail call void @llvm.dbg.value(metadata i32 %43, i64 0, metadata !393, metadata !435), !dbg !1802
  %44 = lshr i32 %lastbyte.1, %43, !dbg !1831
  %45 = shl i32 1, %.0.lcssa, !dbg !1832
  %46 = add nsw i32 %45, -1, !dbg !1833
  %47 = and i32 %44, %46, !dbg !1834
  %48 = or i32 %47, %num.0.lcssa, !dbg !1835
  tail call void @llvm.dbg.value(metadata i32 %48, i64 0, metadata !392, metadata !435), !dbg !1805
  br label %49, !dbg !1836

; <label>:49                                      ; preds = %42, %29
  %num.1 = phi i32 [ %48, %42 ], [ %num.0.lcssa, %29 ]
  %lastbits.1 = phi i32 [ %43, %42 ], [ %7, %29 ]
  %lastbyte.2 = phi i32 [ %lastbyte.1, %42 ], [ %lastbyte.0.lcssa, %29 ]
  %cnt.2 = phi i32 [ %cnt.1, %42 ], [ %cnt.0.lcssa, %29 ]
  %50 = and i32 %num.1, %2, !dbg !1837
  tail call void @llvm.dbg.value(metadata i32 %50, i64 0, metadata !392, metadata !435), !dbg !1805
  store i32 %cnt.2, i32* %buf, align 4, !dbg !1838, !tbaa !727
  store i32 %lastbits.1, i32* %6, align 4, !dbg !1839, !tbaa !727
  store i32 %lastbyte.2, i32* %8, align 4, !dbg !1840, !tbaa !727
  ret i32 %50, !dbg !1841
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @receiveints(i32* nocapture %buf, i32 %num_of_bits, i32* nocapture readonly %sizes, i32* nocapture %nums) #4 {
  %bytes = alloca [32 x i32], align 16
  tail call void @llvm.dbg.value(metadata i32 3, i64 0, metadata !402, metadata !435), !dbg !1842
  %1 = bitcast [32 x i32]* %bytes to i8*, !dbg !1843
  call void @llvm.lifetime.start(i64 128, i8* %1) #7, !dbg !1843
  tail call void @llvm.dbg.declare(metadata [32 x i32]* %bytes, metadata !406, metadata !435), !dbg !1844
  %2 = getelementptr inbounds [32 x i32]* %bytes, i64 0, i64 3, !dbg !1845
  store i32 0, i32* %2, align 4, !dbg !1846, !tbaa !727
  %3 = getelementptr inbounds [32 x i32]* %bytes, i64 0, i64 2, !dbg !1847
  store i32 0, i32* %3, align 8, !dbg !1848, !tbaa !727
  %4 = getelementptr inbounds [32 x i32]* %bytes, i64 0, i64 1, !dbg !1849
  store i32 0, i32* %4, align 4, !dbg !1850, !tbaa !727
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !410, metadata !435), !dbg !1851
  %5 = icmp sgt i32 %num_of_bits, 8, !dbg !1852
  br i1 %5, label %.lr.ph8, label %17, !dbg !1853

.lr.ph8:                                          ; preds = %0
  %6 = add i32 %num_of_bits, -9, !dbg !1853
  %7 = lshr i32 %6, 3, !dbg !1853
  %8 = shl nuw i32 %7, 3, !dbg !1853
  br label %9, !dbg !1853

; <label>:9                                       ; preds = %.lr.ph8, %9
  %indvars.iv16 = phi i64 [ 0, %.lr.ph8 ], [ %indvars.iv.next17, %9 ]
  %.06 = phi i32 [ %num_of_bits, %.lr.ph8 ], [ %12, %9 ]
  %10 = tail call fastcc i32 @receivebits(i32* %buf, i32 8) #13, !dbg !1854
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1, !dbg !1853
  %11 = getelementptr inbounds [32 x i32]* %bytes, i64 0, i64 %indvars.iv16, !dbg !1856
  store i32 %10, i32* %11, align 4, !dbg !1857, !tbaa !727
  %12 = add nsw i32 %.06, -8, !dbg !1858
  tail call void @llvm.dbg.value(metadata i32 %12, i64 0, metadata !403, metadata !435), !dbg !1859
  %13 = icmp sgt i32 %12, 8, !dbg !1852
  br i1 %13, label %9, label %._crit_edge9, !dbg !1853

._crit_edge9:                                     ; preds = %9
  %14 = add i32 %num_of_bits, -8, !dbg !1853
  %15 = sub i32 %14, %8, !dbg !1853
  %16 = add nuw nsw i32 %7, 1, !dbg !1853
  br label %17, !dbg !1853

; <label>:17                                      ; preds = %._crit_edge9, %0
  %.0.lcssa = phi i32 [ %15, %._crit_edge9 ], [ %num_of_bits, %0 ]
  %num_of_bytes.0.lcssa = phi i32 [ %16, %._crit_edge9 ], [ 0, %0 ]
  %18 = icmp sgt i32 %.0.lcssa, 0, !dbg !1860
  br i1 %18, label %19, label %24, !dbg !1862

; <label>:19                                      ; preds = %17
  %20 = tail call fastcc i32 @receivebits(i32* %buf, i32 %.0.lcssa) #13, !dbg !1863
  %21 = add nsw i32 %num_of_bytes.0.lcssa, 1, !dbg !1865
  tail call void @llvm.dbg.value(metadata i32 %21, i64 0, metadata !410, metadata !435), !dbg !1851
  %22 = sext i32 %num_of_bytes.0.lcssa to i64, !dbg !1866
  %23 = getelementptr inbounds [32 x i32]* %bytes, i64 0, i64 %22, !dbg !1866
  store i32 %20, i32* %23, align 4, !dbg !1867, !tbaa !727
  br label %24, !dbg !1868

; <label>:24                                      ; preds = %19, %17
  %num_of_bytes.1 = phi i32 [ %21, %19 ], [ %num_of_bytes.0.lcssa, %17 ]
  tail call void @llvm.dbg.value(metadata i32 2, i64 0, metadata !408, metadata !435), !dbg !1869
  %25 = icmp sgt i32 %num_of_bytes.1, 0, !dbg !1870
  %26 = sext i32 %num_of_bytes.1 to i64
  br label %.preheader, !dbg !1876

.preheader:                                       ; preds = %24, %._crit_edge
  %indvars.iv14 = phi i64 [ 2, %24 ], [ %indvars.iv.next15, %._crit_edge ]
  br i1 %25, label %.lr.ph, label %._crit_edge, !dbg !1877

.lr.ph:                                           ; preds = %.preheader
  %27 = getelementptr inbounds i32* %sizes, i64 %indvars.iv14, !dbg !1878
  %28 = load i32* %27, align 4, !dbg !1878, !tbaa !727
  br label %29, !dbg !1877

; <label>:29                                      ; preds = %.lr.ph, %29
  %indvars.iv = phi i64 [ %26, %.lr.ph ], [ %indvars.iv.next, %29 ]
  %num.02 = phi i32 [ 0, %.lr.ph ], [ %36, %29 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !1877
  %30 = shl i32 %num.02, 8, !dbg !1880
  %31 = getelementptr inbounds [32 x i32]* %bytes, i64 0, i64 %indvars.iv.next, !dbg !1881
  %32 = load i32* %31, align 4, !dbg !1881, !tbaa !727
  %33 = or i32 %32, %30, !dbg !1882
  tail call void @llvm.dbg.value(metadata i32 %33, i64 0, metadata !412, metadata !435), !dbg !1883
  %34 = udiv i32 %33, %28, !dbg !1884
  tail call void @llvm.dbg.value(metadata i32 %34, i64 0, metadata !411, metadata !435), !dbg !1885
  store i32 %34, i32* %31, align 4, !dbg !1886, !tbaa !727
  %35 = mul i32 %28, %34, !dbg !1887
  %36 = sub i32 %33, %35, !dbg !1888
  tail call void @llvm.dbg.value(metadata i32 %36, i64 0, metadata !412, metadata !435), !dbg !1883
  %37 = icmp sgt i64 %indvars.iv, 1, !dbg !1870
  br i1 %37, label %29, label %._crit_edge, !dbg !1877

._crit_edge:                                      ; preds = %29, %.preheader
  %num.0.lcssa = phi i32 [ 0, %.preheader ], [ %36, %29 ]
  %38 = getelementptr inbounds i32* %nums, i64 %indvars.iv14, !dbg !1889
  store i32 %num.0.lcssa, i32* %38, align 4, !dbg !1890, !tbaa !727
  %indvars.iv.next15 = add nsw i64 %indvars.iv14, -1, !dbg !1876
  %39 = icmp sgt i64 %indvars.iv14, 1, !dbg !1891
  br i1 %39, label %.preheader, label %40, !dbg !1876

; <label>:40                                      ; preds = %._crit_edge
  %41 = bitcast [32 x i32]* %bytes to i64*, !dbg !1892
  %42 = load i64* %41, align 16, !dbg !1892
  %43 = trunc i64 %42 to i32, !dbg !1892
  %44 = lshr i64 %42, 24, !dbg !1893
  %.tr = trunc i64 %44 to i32, !dbg !1893
  %45 = and i32 %.tr, -256, !dbg !1893
  %46 = or i32 %45, %43, !dbg !1894
  %47 = bitcast i32* %3 to i64*, !dbg !1895
  %48 = load i64* %47, align 8, !dbg !1895
  %49 = trunc i64 %48 to i32, !dbg !1895
  %50 = shl i32 %49, 16, !dbg !1896
  %51 = or i32 %46, %50, !dbg !1897
  %52 = lshr i64 %48, 8, !dbg !1898
  %.tr18 = trunc i64 %52 to i32, !dbg !1898
  %53 = and i32 %.tr18, -16777216, !dbg !1898
  %54 = or i32 %51, %53, !dbg !1899
  store i32 %54, i32* %nums, align 4, !dbg !1900, !tbaa !727
  call void @llvm.lifetime.end(i64 128, i8* %1) #7, !dbg !1901
  ret void, !dbg !1901
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #7

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #7

declare float @fabsf(float)

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #7

attributes #0 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { readnone }
attributes #10 = { nounwind optsize }
attributes #11 = { noreturn nounwind optsize }
attributes #12 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!431, !432, !433}
!llvm.ident = !{!434}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !9, subprograms: !78, globals: !413, imports: !430)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/libxdrf.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "xdr_op", file: !4, line: 119, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/gmx_system_xdr.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "XDR_ENCODE", value: 0)
!7 = !DIEnumerator(name: "XDR_DECODE", value: 1)
!8 = !DIEnumerator(name: "XDR_FREE", value: 2)
!9 = !{!10, !11, !12, !13, !64, !34, !35, !69, !73, !74, !75, !76}
!10 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!11 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "XDR", file: !4, line: 144, baseType: !15)
!15 = !DICompositeType(tag: DW_TAG_structure_type, name: "XDR", file: !4, line: 145, size: 384, align: 64, elements: !16)
!16 = !{!17, !18, !60, !61, !62, !63}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "x_op", scope: !15, file: !4, line: 147, baseType: !3, size: 32, align: 32)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "x_ops", scope: !15, file: !4, line: 171, baseType: !19, size: 64, align: 64, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DICompositeType(tag: DW_TAG_structure_type, name: "xdr_ops", file: !4, line: 148, size: 640, align: 64, elements: !21)
!21 = !{!22, !29, !30, !36, !37, !41, !45, !51, !55, !59}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "x_getlong", scope: !20, file: !4, line: 150, baseType: !23, size: 64, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!24 = !DISubroutineType(types: !25)
!25 = !{!26, !13, !27}
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool_t", file: !4, line: 99, baseType: !10)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, align: 64)
!28 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "x_putlong", scope: !20, file: !4, line: 152, baseType: !23, size: 64, align: 64, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "x_getbytes", scope: !20, file: !4, line: 154, baseType: !31, size: 64, align: 64, offset: 128)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, align: 64)
!32 = !DISubroutineType(types: !33)
!33 = !{!26, !13, !34, !35}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64, align: 64)
!35 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "x_putbytes", scope: !20, file: !4, line: 156, baseType: !31, size: 64, align: 64, offset: 192)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "x_getpostn", scope: !20, file: !4, line: 158, baseType: !38, size: 64, align: 64, offset: 256)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!39 = !DISubroutineType(types: !40)
!40 = !{!35, !13}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "x_setpostn", scope: !20, file: !4, line: 160, baseType: !42, size: 64, align: 64, offset: 320)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64, align: 64)
!43 = !DISubroutineType(types: !44)
!44 = !{!26, !13, !35}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "x_inline", scope: !20, file: !4, line: 162, baseType: !46, size: 64, align: 64, offset: 384)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = !DISubroutineType(types: !48)
!48 = !{!49, !13, !10}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "xdr_int32_t", file: !4, line: 106, baseType: !10)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "x_destroy", scope: !20, file: !4, line: 164, baseType: !52, size: 64, align: 64, offset: 448)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64, align: 64)
!53 = !DISubroutineType(types: !54)
!54 = !{null, !13}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "x_getint32", scope: !20, file: !4, line: 166, baseType: !56, size: 64, align: 64, offset: 512)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!57 = !DISubroutineType(types: !58)
!58 = !{!26, !13, !49}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "x_putint32", scope: !20, file: !4, line: 168, baseType: !56, size: 64, align: 64, offset: 576)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "x_public", scope: !15, file: !4, line: 172, baseType: !34, size: 64, align: 64, offset: 128)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "x_private", scope: !15, file: !4, line: 173, baseType: !34, size: 64, align: 64, offset: 192)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "x_base", scope: !15, file: !4, line: 174, baseType: !34, size: 64, align: 64, offset: 256)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "x_handy", scope: !15, file: !4, line: 175, baseType: !10, size: 32, align: 32, offset: 320)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !65, line: 30, baseType: !66)
!65 = !DIFile(filename: "/usr/include/sys/_types/_size_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_size_t", file: !67, line: 92, baseType: !68)
!67 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!68 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "xdrproc_t", file: !4, line: 187, baseType: !70)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!71 = !DISubroutineType(types: !72)
!72 = !{!26, !13, !12, null}
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!74 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64, align: 64)
!77 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!78 = !{!79, !85, !91, !97, !100, !103, !106, !109, !112, !115, !123, !132, !145, !148, !151, !154, !168, !182, !188, !194, !257, !263, !276, !282, !336, !344, !360, !371, !385, !397}
!79 = !DISubprogram(name: "__inline_isfinitef", scope: !80, file: !80, line: 204, type: !81, isLocal: false, isDefinition: true, scopeLine: 204, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isfinitef, variables: !83)
!80 = !DIFile(filename: "/usr/include/math.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!81 = !DISubroutineType(types: !82)
!82 = !{!10, !74}
!83 = !{!84}
!84 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !79, file: !80, line: 204, type: !74)
!85 = !DISubprogram(name: "__inline_isfinited", scope: !80, file: !80, line: 207, type: !86, isLocal: false, isDefinition: true, scopeLine: 207, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isfinited, variables: !89)
!86 = !DISubroutineType(types: !87)
!87 = !{!10, !88}
!88 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!89 = !{!90}
!90 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !85, file: !80, line: 207, type: !88)
!91 = !DISubprogram(name: "__inline_isfinitel", scope: !80, file: !80, line: 210, type: !92, isLocal: false, isDefinition: true, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isfinitel, variables: !95)
!92 = !DISubroutineType(types: !93)
!93 = !{!10, !94}
!94 = !DIBasicType(name: "long double", size: 128, align: 128, encoding: DW_ATE_float)
!95 = !{!96}
!96 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !91, file: !80, line: 210, type: !94)
!97 = !DISubprogram(name: "__inline_isinff", scope: !80, file: !80, line: 213, type: !81, isLocal: false, isDefinition: true, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isinff, variables: !98)
!98 = !{!99}
!99 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !97, file: !80, line: 213, type: !74)
!100 = !DISubprogram(name: "__inline_isinfd", scope: !80, file: !80, line: 216, type: !86, isLocal: false, isDefinition: true, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isinfd, variables: !101)
!101 = !{!102}
!102 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !100, file: !80, line: 216, type: !88)
!103 = !DISubprogram(name: "__inline_isinfl", scope: !80, file: !80, line: 219, type: !92, isLocal: false, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isinfl, variables: !104)
!104 = !{!105}
!105 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !103, file: !80, line: 219, type: !94)
!106 = !DISubprogram(name: "__inline_isnanf", scope: !80, file: !80, line: 222, type: !81, isLocal: false, isDefinition: true, scopeLine: 222, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isnanf, variables: !107)
!107 = !{!108}
!108 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !106, file: !80, line: 222, type: !74)
!109 = !DISubprogram(name: "__inline_isnand", scope: !80, file: !80, line: 225, type: !86, isLocal: false, isDefinition: true, scopeLine: 225, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isnand, variables: !110)
!110 = !{!111}
!111 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !109, file: !80, line: 225, type: !88)
!112 = !DISubprogram(name: "__inline_isnanl", scope: !80, file: !80, line: 228, type: !92, isLocal: false, isDefinition: true, scopeLine: 228, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isnanl, variables: !113)
!113 = !{!114}
!114 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !112, file: !80, line: 228, type: !94)
!115 = !DISubprogram(name: "__inline_signbitf", scope: !80, file: !80, line: 231, type: !81, isLocal: false, isDefinition: true, scopeLine: 231, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_signbitf, variables: !116)
!116 = !{!117, !118}
!117 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !115, file: !80, line: 231, type: !74)
!118 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__u", scope: !115, file: !80, line: 232, type: !119)
!119 = !DICompositeType(tag: DW_TAG_union_type, scope: !115, file: !80, line: 232, size: 32, align: 32, elements: !120)
!120 = !{!121, !122}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "__f", scope: !119, file: !80, line: 232, baseType: !74, size: 32, align: 32)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "__u", scope: !119, file: !80, line: 232, baseType: !35, size: 32, align: 32)
!123 = !DISubprogram(name: "__inline_signbitd", scope: !80, file: !80, line: 236, type: !86, isLocal: false, isDefinition: true, scopeLine: 236, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_signbitd, variables: !124)
!124 = !{!125, !126}
!125 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !123, file: !80, line: 236, type: !88)
!126 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__u", scope: !123, file: !80, line: 237, type: !127)
!127 = !DICompositeType(tag: DW_TAG_union_type, scope: !123, file: !80, line: 237, size: 64, align: 64, elements: !128)
!128 = !{!129, !130}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "__f", scope: !127, file: !80, line: 237, baseType: !88, size: 64, align: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "__u", scope: !127, file: !80, line: 237, baseType: !131, size: 64, align: 64)
!131 = !DIBasicType(name: "long long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!132 = !DISubprogram(name: "__inline_signbitl", scope: !80, file: !80, line: 242, type: !92, isLocal: false, isDefinition: true, scopeLine: 242, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_signbitl, variables: !133)
!133 = !{!134, !135}
!134 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !132, file: !80, line: 242, type: !94)
!135 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__u", scope: !132, file: !80, line: 246, type: !136)
!136 = !DICompositeType(tag: DW_TAG_union_type, scope: !132, file: !80, line: 243, size: 128, align: 128, elements: !137)
!137 = !{!138, !139}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "__ld", scope: !136, file: !80, line: 244, baseType: !94, size: 128, align: 128)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "__p", scope: !136, file: !80, line: 245, baseType: !140, size: 128, align: 64)
!140 = !DICompositeType(tag: DW_TAG_structure_type, scope: !136, file: !80, line: 245, size: 128, align: 64, elements: !141)
!141 = !{!142, !143}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "__m", scope: !140, file: !80, line: 245, baseType: !131, size: 64, align: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "__sexp", scope: !140, file: !80, line: 245, baseType: !144, size: 16, align: 16, offset: 64)
!144 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!145 = !DISubprogram(name: "__inline_isnormalf", scope: !80, file: !80, line: 257, type: !81, isLocal: false, isDefinition: true, scopeLine: 257, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isnormalf, variables: !146)
!146 = !{!147}
!147 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !145, file: !80, line: 257, type: !74)
!148 = !DISubprogram(name: "__inline_isnormald", scope: !80, file: !80, line: 260, type: !86, isLocal: false, isDefinition: true, scopeLine: 260, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isnormald, variables: !149)
!149 = !{!150}
!150 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !148, file: !80, line: 260, type: !88)
!151 = !DISubprogram(name: "__inline_isnormall", scope: !80, file: !80, line: 263, type: !92, isLocal: false, isDefinition: true, scopeLine: 263, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isnormall, variables: !152)
!152 = !{!153}
!153 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !151, file: !80, line: 263, type: !94)
!154 = !DISubprogram(name: "__sincosf", scope: !80, file: !80, line: 642, type: !155, isLocal: false, isDefinition: true, scopeLine: 642, flags: DIFlagPrototyped, isOptimized: true, function: void (float, float*, float*)* @__sincosf, variables: !158)
!155 = !DISubroutineType(types: !156)
!156 = !{null, !74, !157, !157}
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!158 = !{!159, !160, !161, !162}
!159 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !154, file: !80, line: 642, type: !74)
!160 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !154, file: !80, line: 642, type: !157)
!161 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !154, file: !80, line: 642, type: !157)
!162 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !154, file: !80, line: 643, type: !163)
!163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !164)
!164 = !DICompositeType(tag: DW_TAG_structure_type, name: "__float2", file: !80, line: 634, size: 64, align: 32, elements: !165)
!165 = !{!166, !167}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "__sinval", scope: !164, file: !80, line: 634, baseType: !74, size: 32, align: 32)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "__cosval", scope: !164, file: !80, line: 634, baseType: !74, size: 32, align: 32, offset: 32)
!168 = !DISubprogram(name: "__sincos", scope: !80, file: !80, line: 647, type: !169, isLocal: false, isDefinition: true, scopeLine: 647, flags: DIFlagPrototyped, isOptimized: true, function: void (double, double*, double*)* @__sincos, variables: !172)
!169 = !DISubroutineType(types: !170)
!170 = !{null, !88, !171, !171}
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64, align: 64)
!172 = !{!173, !174, !175, !176}
!173 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !168, file: !80, line: 647, type: !88)
!174 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !168, file: !80, line: 647, type: !171)
!175 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !168, file: !80, line: 647, type: !171)
!176 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !168, file: !80, line: 648, type: !177)
!177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !178)
!178 = !DICompositeType(tag: DW_TAG_structure_type, name: "__double2", file: !80, line: 635, size: 128, align: 64, elements: !179)
!179 = !{!180, !181}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "__sinval", scope: !178, file: !80, line: 635, baseType: !88, size: 64, align: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "__cosval", scope: !178, file: !80, line: 635, baseType: !88, size: 64, align: 64, offset: 64)
!182 = !DISubprogram(name: "__sincospif", scope: !80, file: !80, line: 652, type: !155, isLocal: false, isDefinition: true, scopeLine: 652, flags: DIFlagPrototyped, isOptimized: true, function: void (float, float*, float*)* @__sincospif, variables: !183)
!183 = !{!184, !185, !186, !187}
!184 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !182, file: !80, line: 652, type: !74)
!185 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !182, file: !80, line: 652, type: !157)
!186 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !182, file: !80, line: 652, type: !157)
!187 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !182, file: !80, line: 653, type: !163)
!188 = !DISubprogram(name: "__sincospi", scope: !80, file: !80, line: 657, type: !169, isLocal: false, isDefinition: true, scopeLine: 657, flags: DIFlagPrototyped, isOptimized: true, function: void (double, double*, double*)* @__sincospi, variables: !189)
!189 = !{!190, !191, !192, !193}
!190 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !188, file: !80, line: 657, type: !88)
!191 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !188, file: !80, line: 657, type: !171)
!192 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !188, file: !80, line: 657, type: !171)
!193 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !188, file: !80, line: 658, type: !177)
!194 = !DISubprogram(name: "__sputc", scope: !195, file: !195, line: 348, type: !196, isLocal: false, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, %struct.__sFILE*)* @__sputc, variables: !254)
!195 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!196 = !DISubroutineType(types: !197)
!197 = !{!10, !10, !198}
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64, align: 64)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !195, line: 153, baseType: !200)
!200 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !195, line: 122, size: 1216, align: 64, elements: !201)
!201 = !{!202, !203, !204, !205, !207, !208, !213, !214, !215, !219, !223, !232, !238, !239, !242, !243, !247, !251, !252, !253}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !200, file: !195, line: 123, baseType: !76, size: 64, align: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !200, file: !195, line: 124, baseType: !10, size: 32, align: 32, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !200, file: !195, line: 125, baseType: !10, size: 32, align: 32, offset: 96)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !200, file: !195, line: 126, baseType: !206, size: 16, align: 16, offset: 128)
!206 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !200, file: !195, line: 127, baseType: !206, size: 16, align: 16, offset: 144)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !200, file: !195, line: 128, baseType: !209, size: 128, align: 64, offset: 192)
!209 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !195, line: 88, size: 128, align: 64, elements: !210)
!210 = !{!211, !212}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !209, file: !195, line: 89, baseType: !76, size: 64, align: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !209, file: !195, line: 90, baseType: !10, size: 32, align: 32, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !200, file: !195, line: 129, baseType: !10, size: 32, align: 32, offset: 320)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !200, file: !195, line: 132, baseType: !12, size: 64, align: 64, offset: 384)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !200, file: !195, line: 133, baseType: !216, size: 64, align: 64, offset: 448)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, align: 64)
!217 = !DISubroutineType(types: !218)
!218 = !{!10, !12}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !200, file: !195, line: 134, baseType: !220, size: 64, align: 64, offset: 512)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64, align: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{!10, !12, !34, !10}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !200, file: !195, line: 135, baseType: !224, size: 64, align: 64, offset: 576)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64, align: 64)
!225 = !DISubroutineType(types: !226)
!226 = !{!227, !12, !227, !10}
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !195, line: 77, baseType: !228)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !229, line: 71, baseType: !230)
!229 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !67, line: 46, baseType: !231)
!231 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !200, file: !195, line: 136, baseType: !233, size: 64, align: 64, offset: 640)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64, align: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{!10, !12, !236, !10}
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64, align: 64)
!237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !200, file: !195, line: 139, baseType: !209, size: 128, align: 64, offset: 704)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !200, file: !195, line: 140, baseType: !240, size: 64, align: 64, offset: 832)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64, align: 64)
!241 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !195, line: 94, flags: DIFlagFwdDecl)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !200, file: !195, line: 141, baseType: !10, size: 32, align: 32, offset: 896)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !200, file: !195, line: 144, baseType: !244, size: 24, align: 8, offset: 928)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 24, align: 8, elements: !245)
!245 = !{!246}
!246 = !DISubrange(count: 3)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !200, file: !195, line: 145, baseType: !248, size: 8, align: 8, offset: 952)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 8, align: 8, elements: !249)
!249 = !{!250}
!250 = !DISubrange(count: 1)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !200, file: !195, line: 148, baseType: !209, size: 128, align: 64, offset: 960)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !200, file: !195, line: 151, baseType: !10, size: 32, align: 32, offset: 1088)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !200, file: !195, line: 152, baseType: !227, size: 64, align: 64, offset: 1152)
!254 = !{!255, !256}
!255 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !194, file: !195, line: 348, type: !10)
!256 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_p", arg: 2, scope: !194, file: !195, line: 348, type: !198)
!257 = !DISubprogram(name: "__sigbits", scope: !258, file: !258, line: 114, type: !259, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @__sigbits, variables: !261)
!258 = !DIFile(filename: "/usr/include/signal.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!259 = !DISubroutineType(types: !260)
!260 = !{!10, !10}
!261 = !{!262}
!262 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__signo", arg: 1, scope: !257, file: !258, line: 114, type: !10)
!263 = !DISubprogram(name: "xdropen", scope: !1, file: !1, line: 318, type: !264, isLocal: false, isDefinition: true, scopeLine: 318, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.XDR*, i8*, i8*)* @xdropen, variables: !266)
!264 = !DISubroutineType(types: !265)
!265 = !{!10, !13, !236, !236}
!266 = !{!267, !268, !269, !270, !271, !272}
!267 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xdrs", arg: 1, scope: !263, file: !1, line: 318, type: !13)
!268 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename", arg: 2, scope: !263, file: !1, line: 318, type: !236)
!269 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 3, scope: !263, file: !1, line: 318, type: !236)
!270 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lmode", scope: !263, file: !1, line: 320, type: !3)
!271 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xdrid", scope: !263, file: !1, line: 321, type: !10)
!272 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newtype", scope: !263, file: !1, line: 322, type: !273)
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 40, align: 8, elements: !274)
!274 = !{!275}
!275 = !DISubrange(count: 5)
!276 = !DISubprogram(name: "xdrclose", scope: !1, file: !1, line: 378, type: !277, isLocal: false, isDefinition: true, scopeLine: 378, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.XDR*)* @xdrclose, variables: !279)
!277 = !DISubroutineType(types: !278)
!278 = !{!10, !13}
!279 = !{!280, !281}
!280 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xdrs", arg: 1, scope: !276, file: !1, line: 378, type: !13)
!281 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xdrid", scope: !276, file: !1, line: 379, type: !10)
!282 = !DISubprogram(name: "xdr3dfcoord", scope: !1, file: !1, line: 671, type: !283, isLocal: false, isDefinition: true, scopeLine: 671, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.XDR*, float*, i32*, float*)* @xdr3dfcoord, variables: !285)
!283 = !DISubroutineType(types: !284)
!284 = !{!10, !13, !157, !73, !157}
!285 = !{!286, !287, !288, !289, !290, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !330, !331, !332, !333, !334, !335}
!286 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xdrs", arg: 1, scope: !282, file: !1, line: 671, type: !13)
!287 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 2, scope: !282, file: !1, line: 671, type: !157)
!288 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 3, scope: !282, file: !1, line: 671, type: !73)
!289 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "precision", arg: 4, scope: !282, file: !1, line: 671, type: !157)
!290 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "minint", scope: !282, file: !1, line: 678, type: !291)
!291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 96, align: 32, elements: !245)
!292 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "maxint", scope: !282, file: !1, line: 678, type: !291)
!293 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mindiff", scope: !282, file: !1, line: 678, type: !10)
!294 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lip", scope: !282, file: !1, line: 678, type: !73)
!295 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "diff", scope: !282, file: !1, line: 678, type: !10)
!296 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lint1", scope: !282, file: !1, line: 679, type: !10)
!297 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lint2", scope: !282, file: !1, line: 679, type: !10)
!298 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lint3", scope: !282, file: !1, line: 679, type: !10)
!299 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "oldlint1", scope: !282, file: !1, line: 679, type: !10)
!300 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "oldlint2", scope: !282, file: !1, line: 679, type: !10)
!301 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "oldlint3", scope: !282, file: !1, line: 679, type: !10)
!302 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "smallidx", scope: !282, file: !1, line: 679, type: !10)
!303 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "minidx", scope: !282, file: !1, line: 680, type: !10)
!304 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "maxidx", scope: !282, file: !1, line: 680, type: !10)
!305 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sizeint", scope: !282, file: !1, line: 681, type: !306)
!306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 96, align: 32, elements: !245)
!307 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sizesmall", scope: !282, file: !1, line: 681, type: !306)
!308 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bitsizeint", scope: !282, file: !1, line: 681, type: !306)
!309 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size3", scope: !282, file: !1, line: 681, type: !35)
!310 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "luip", scope: !282, file: !1, line: 681, type: !75)
!311 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "flag", scope: !282, file: !1, line: 682, type: !10)
!312 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !282, file: !1, line: 682, type: !10)
!313 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "smallnum", scope: !282, file: !1, line: 683, type: !10)
!314 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "smaller", scope: !282, file: !1, line: 683, type: !10)
!315 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "larger", scope: !282, file: !1, line: 683, type: !10)
!316 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !282, file: !1, line: 683, type: !10)
!317 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "is_small", scope: !282, file: !1, line: 683, type: !10)
!318 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "is_smaller", scope: !282, file: !1, line: 683, type: !10)
!319 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "run", scope: !282, file: !1, line: 683, type: !10)
!320 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "prevrun", scope: !282, file: !1, line: 683, type: !10)
!321 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lfp", scope: !282, file: !1, line: 684, type: !157)
!322 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lf", scope: !282, file: !1, line: 684, type: !74)
!323 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !282, file: !1, line: 685, type: !10)
!324 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "thiscoord", scope: !282, file: !1, line: 685, type: !73)
!325 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "prevcoord", scope: !282, file: !1, line: 685, type: !291)
!326 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmpcoord", scope: !282, file: !1, line: 686, type: !327)
!327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 960, align: 32, elements: !328)
!328 = !{!329}
!329 = !DISubrange(count: 30)
!330 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bufsize", scope: !282, file: !1, line: 688, type: !10)
!331 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xdrid", scope: !282, file: !1, line: 688, type: !10)
!332 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lsize", scope: !282, file: !1, line: 688, type: !10)
!333 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bitsize", scope: !282, file: !1, line: 689, type: !35)
!334 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "inv_precision", scope: !282, file: !1, line: 690, type: !74)
!335 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "errval", scope: !282, file: !1, line: 691, type: !10)
!336 = !DISubprogram(name: "sizeofint", scope: !1, file: !1, line: 451, type: !337, isLocal: true, isDefinition: true, scopeLine: 451, flags: DIFlagPrototyped, isOptimized: true, variables: !340)
!337 = !DISubroutineType(types: !338)
!338 = !{!10, !339}
!339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!340 = !{!341, !342, !343}
!341 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "size", arg: 1, scope: !336, file: !1, line: 451, type: !339)
!342 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "num", scope: !336, file: !1, line: 452, type: !35)
!343 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "num_of_bits", scope: !336, file: !1, line: 453, type: !10)
!344 = !DISubprogram(name: "sizeofints", scope: !1, file: !1, line: 474, type: !345, isLocal: true, isDefinition: true, scopeLine: 474, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32*)* @sizeofints, variables: !347)
!345 = !DISubroutineType(types: !346)
!346 = !{!10, !339, !75}
!347 = !{!348, !349, !350, !351, !352, !353, !354, !358, !359}
!348 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "num_of_ints", arg: 1, scope: !344, file: !1, line: 474, type: !339)
!349 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sizes", arg: 2, scope: !344, file: !1, line: 474, type: !75)
!350 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !344, file: !1, line: 475, type: !10)
!351 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "num", scope: !344, file: !1, line: 475, type: !10)
!352 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "num_of_bytes", scope: !344, file: !1, line: 476, type: !35)
!353 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "num_of_bits", scope: !344, file: !1, line: 476, type: !35)
!354 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bytes", scope: !344, file: !1, line: 476, type: !355)
!355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 1024, align: 32, elements: !356)
!356 = !{!357}
!357 = !DISubrange(count: 32)
!358 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bytecnt", scope: !344, file: !1, line: 476, type: !35)
!359 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !344, file: !1, line: 476, type: !35)
!360 = !DISubprogram(name: "sendbits", scope: !1, file: !1, line: 412, type: !361, isLocal: true, isDefinition: true, scopeLine: 412, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, i32, i32)* @sendbits, variables: !363)
!361 = !DISubroutineType(types: !362)
!362 = !{null, !73, !10, !10}
!363 = !{!364, !365, !366, !367, !368, !369, !370}
!364 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "buf", arg: 1, scope: !360, file: !1, line: 412, type: !73)
!365 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "num_of_bits", arg: 2, scope: !360, file: !1, line: 412, type: !10)
!366 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "num", arg: 3, scope: !360, file: !1, line: 412, type: !10)
!367 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cnt", scope: !360, file: !1, line: 414, type: !35)
!368 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lastbyte", scope: !360, file: !1, line: 414, type: !35)
!369 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lastbits", scope: !360, file: !1, line: 415, type: !10)
!370 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cbuf", scope: !360, file: !1, line: 416, type: !76)
!371 = !DISubprogram(name: "sendints", scope: !1, file: !1, line: 518, type: !372, isLocal: true, isDefinition: true, scopeLine: 519, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, i32, i32*, i32*)* @sendints, variables: !374)
!372 = !DISubroutineType(types: !373)
!373 = !{null, !73, !339, !339, !75, !75}
!374 = !{!375, !376, !377, !378, !379, !380, !381, !382, !383, !384}
!375 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "buf", arg: 1, scope: !371, file: !1, line: 518, type: !73)
!376 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "num_of_ints", arg: 2, scope: !371, file: !1, line: 518, type: !339)
!377 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "num_of_bits", arg: 3, scope: !371, file: !1, line: 518, type: !339)
!378 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sizes", arg: 4, scope: !371, file: !1, line: 519, type: !75)
!379 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nums", arg: 5, scope: !371, file: !1, line: 519, type: !75)
!380 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !371, file: !1, line: 521, type: !10)
!381 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bytes", scope: !371, file: !1, line: 522, type: !355)
!382 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "num_of_bytes", scope: !371, file: !1, line: 522, type: !35)
!383 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bytecnt", scope: !371, file: !1, line: 522, type: !35)
!384 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !371, file: !1, line: 522, type: !35)
!385 = !DISubprogram(name: "receivebits", scope: !1, file: !1, line: 573, type: !386, isLocal: true, isDefinition: true, scopeLine: 573, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32*, i32)* @receivebits, variables: !388)
!386 = !DISubroutineType(types: !387)
!387 = !{!10, !73, !10}
!388 = !{!389, !390, !391, !392, !393, !394, !395, !396}
!389 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "buf", arg: 1, scope: !385, file: !1, line: 573, type: !73)
!390 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "num_of_bits", arg: 2, scope: !385, file: !1, line: 573, type: !10)
!391 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cnt", scope: !385, file: !1, line: 575, type: !10)
!392 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "num", scope: !385, file: !1, line: 575, type: !10)
!393 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lastbits", scope: !385, file: !1, line: 576, type: !35)
!394 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lastbyte", scope: !385, file: !1, line: 576, type: !35)
!395 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cbuf", scope: !385, file: !1, line: 577, type: !76)
!396 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mask", scope: !385, file: !1, line: 578, type: !10)
!397 = !DISubprogram(name: "receiveints", scope: !1, file: !1, line: 617, type: !398, isLocal: true, isDefinition: true, scopeLine: 618, flags: DIFlagPrototyped, isOptimized: true, function: void (i32*, i32, i32*, i32*)* @receiveints, variables: !400)
!398 = !DISubroutineType(types: !399)
!399 = !{null, !73, !339, !10, !75, !73}
!400 = !{!401, !402, !403, !404, !405, !406, !408, !409, !410, !411, !412}
!401 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "buf", arg: 1, scope: !397, file: !1, line: 617, type: !73)
!402 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "num_of_ints", arg: 2, scope: !397, file: !1, line: 617, type: !339)
!403 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "num_of_bits", arg: 3, scope: !397, file: !1, line: 617, type: !10)
!404 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sizes", arg: 4, scope: !397, file: !1, line: 618, type: !75)
!405 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nums", arg: 5, scope: !397, file: !1, line: 618, type: !73)
!406 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bytes", scope: !397, file: !1, line: 619, type: !407)
!407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 1024, align: 32, elements: !356)
!408 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !397, file: !1, line: 620, type: !10)
!409 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !397, file: !1, line: 620, type: !10)
!410 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "num_of_bytes", scope: !397, file: !1, line: 620, type: !10)
!411 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !397, file: !1, line: 620, type: !10)
!412 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "num", scope: !397, file: !1, line: 620, type: !10)
!413 = !{!414, !415, !416, !417, !418, !422, !424, !426}
!414 = !DIGlobalVariable(name: "init_done", scope: !263, file: !1, line: 319, type: !10, isLocal: true, isDefinition: true)
!415 = !DIGlobalVariable(name: "ip", scope: !282, file: !1, line: 674, type: !73, isLocal: true, isDefinition: true, variable: i32** @xdr3dfcoord.ip)
!416 = !DIGlobalVariable(name: "oldsize", scope: !282, file: !1, line: 675, type: !10, isLocal: true, isDefinition: true, variable: i32* @xdr3dfcoord.oldsize)
!417 = !DIGlobalVariable(name: "buf", scope: !282, file: !1, line: 676, type: !73, isLocal: true, isDefinition: true, variable: i32** @xdr3dfcoord.buf)
!418 = !DIGlobalVariable(name: "xdrfiles", scope: !0, file: !1, line: 46, type: !419, isLocal: true, isDefinition: true, variable: [20 x %struct.__sFILE*]* @xdrfiles)
!419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !198, size: 1280, align: 64, elements: !420)
!420 = !{!421}
!421 = !DISubrange(count: 20)
!422 = !DIGlobalVariable(name: "xdridptr", scope: !0, file: !1, line: 47, type: !423, isLocal: true, isDefinition: true, variable: [20 x %struct.XDR*]* @xdridptr)
!423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 1280, align: 64, elements: !420)
!424 = !DIGlobalVariable(name: "xdrmodes", scope: !0, file: !1, line: 48, type: !425, isLocal: true, isDefinition: true, variable: [20 x i8]* @xdrmodes)
!425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 160, align: 8, elements: !420)
!426 = !DIGlobalVariable(name: "magicints", scope: !0, file: !1, line: 292, type: !427, isLocal: true, isDefinition: true, variable: [73 x i32]* @magicints)
!427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 2336, align: 32, elements: !428)
!428 = !{!429}
!429 = !DISubrange(count: 73)
!430 = !{}
!431 = !{i32 2, !"Dwarf Version", i32 2}
!432 = !{i32 2, !"Debug Info Version", i32 700000003}
!433 = !{i32 1, !"PIC Level", i32 2}
!434 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!435 = !DIExpression()
!436 = !DILocation(line: 204, column: 53, scope: !79)
!437 = !DILocation(line: 205, column: 16, scope: !79)
!438 = !DILocation(line: 205, column: 23, scope: !79)
!439 = !DILocation(line: 205, column: 26, scope: !79)
!440 = !DILocation(line: 205, column: 47, scope: !79)
!441 = !DILocation(line: 205, column: 5, scope: !79)
!442 = !DILocation(line: 207, column: 54, scope: !85)
!443 = !DILocation(line: 208, column: 16, scope: !85)
!444 = !DILocation(line: 208, column: 23, scope: !85)
!445 = !DILocation(line: 208, column: 26, scope: !85)
!446 = !DILocation(line: 208, column: 46, scope: !85)
!447 = !DILocation(line: 208, column: 5, scope: !85)
!448 = !DILocation(line: 210, column: 59, scope: !91)
!449 = !DILocation(line: 211, column: 16, scope: !91)
!450 = !DILocation(line: 211, column: 23, scope: !91)
!451 = !DILocation(line: 211, column: 26, scope: !91)
!452 = !DILocation(line: 211, column: 47, scope: !91)
!453 = !DILocation(line: 211, column: 5, scope: !91)
!454 = !DILocation(line: 213, column: 50, scope: !97)
!455 = !DILocation(line: 214, column: 12, scope: !97)
!456 = !DILocation(line: 214, column: 33, scope: !97)
!457 = !DILocation(line: 214, column: 5, scope: !97)
!458 = !DILocation(line: 216, column: 51, scope: !100)
!459 = !DILocation(line: 217, column: 12, scope: !100)
!460 = !DILocation(line: 217, column: 32, scope: !100)
!461 = !DILocation(line: 217, column: 5, scope: !100)
!462 = !DILocation(line: 219, column: 56, scope: !103)
!463 = !DILocation(line: 220, column: 12, scope: !103)
!464 = !DILocation(line: 220, column: 33, scope: !103)
!465 = !DILocation(line: 220, column: 5, scope: !103)
!466 = !DILocation(line: 222, column: 50, scope: !106)
!467 = !DILocation(line: 223, column: 16, scope: !106)
!468 = !DILocation(line: 223, column: 5, scope: !106)
!469 = !DILocation(line: 225, column: 51, scope: !109)
!470 = !DILocation(line: 226, column: 16, scope: !109)
!471 = !DILocation(line: 226, column: 5, scope: !109)
!472 = !DILocation(line: 228, column: 56, scope: !112)
!473 = !DILocation(line: 229, column: 16, scope: !112)
!474 = !DILocation(line: 229, column: 5, scope: !112)
!475 = !DILocation(line: 231, column: 52, scope: !115)
!476 = !DILocation(line: 232, column: 44, scope: !115)
!477 = !DILocation(line: 233, column: 13, scope: !115)
!478 = !DILocation(line: 234, column: 26, scope: !115)
!479 = !DILocation(line: 234, column: 5, scope: !115)
!480 = !DILocation(line: 236, column: 53, scope: !123)
!481 = !DILocation(line: 237, column: 51, scope: !123)
!482 = !DILocation(line: 238, column: 13, scope: !123)
!483 = !DILocation(line: 239, column: 26, scope: !123)
!484 = !DILocation(line: 239, column: 12, scope: !123)
!485 = !DILocation(line: 239, column: 5, scope: !123)
!486 = !DILocation(line: 242, column: 58, scope: !132)
!487 = !DILocation(line: 246, column: 7, scope: !132)
!488 = !DILocation(line: 248, column: 26, scope: !132)
!489 = !DILocation(line: 248, column: 33, scope: !132)
!490 = !DILocation(line: 248, column: 5, scope: !132)
!491 = !DILocation(line: 257, column: 53, scope: !145)
!492 = !DILocation(line: 204, column: 53, scope: !79, inlinedAt: !493)
!493 = distinct !DILocation(line: 258, column: 12, scope: !145)
!494 = !DILocation(line: 205, column: 16, scope: !79, inlinedAt: !493)
!495 = !DILocation(line: 205, column: 47, scope: !79, inlinedAt: !493)
!496 = !DILocation(line: 205, column: 23, scope: !79, inlinedAt: !493)
!497 = !DILocation(line: 258, column: 60, scope: !145)
!498 = !DILocation(line: 258, column: 36, scope: !145)
!499 = !DILocation(line: 258, column: 5, scope: !145)
!500 = !DILocation(line: 260, column: 54, scope: !148)
!501 = !DILocation(line: 207, column: 54, scope: !85, inlinedAt: !502)
!502 = distinct !DILocation(line: 261, column: 12, scope: !148)
!503 = !DILocation(line: 208, column: 16, scope: !85, inlinedAt: !502)
!504 = !DILocation(line: 208, column: 46, scope: !85, inlinedAt: !502)
!505 = !DILocation(line: 208, column: 23, scope: !85, inlinedAt: !502)
!506 = !DILocation(line: 261, column: 59, scope: !148)
!507 = !DILocation(line: 261, column: 36, scope: !148)
!508 = !DILocation(line: 261, column: 5, scope: !148)
!509 = !DILocation(line: 263, column: 59, scope: !151)
!510 = !DILocation(line: 210, column: 59, scope: !91, inlinedAt: !511)
!511 = distinct !DILocation(line: 264, column: 12, scope: !151)
!512 = !DILocation(line: 211, column: 16, scope: !91, inlinedAt: !511)
!513 = !DILocation(line: 211, column: 47, scope: !91, inlinedAt: !511)
!514 = !DILocation(line: 211, column: 23, scope: !91, inlinedAt: !511)
!515 = !DILocation(line: 264, column: 60, scope: !151)
!516 = !DILocation(line: 264, column: 36, scope: !151)
!517 = !DILocation(line: 264, column: 5, scope: !151)
!518 = !DILocation(line: 642, column: 45, scope: !154)
!519 = !DILocation(line: 642, column: 57, scope: !154)
!520 = !DILocation(line: 642, column: 72, scope: !154)
!521 = !DILocation(line: 643, column: 27, scope: !154)
!522 = !DILocation(line: 643, column: 37, scope: !154)
!523 = !DILocation(line: 644, column: 23, scope: !154)
!524 = !DILocation(line: 644, column: 13, scope: !154)
!525 = !{!526, !526, i64 0}
!526 = !{!"float", !527, i64 0}
!527 = !{!"omnipotent char", !528, i64 0}
!528 = !{!"Simple C/C++ TBAA"}
!529 = !DILocation(line: 644, column: 51, scope: !154)
!530 = !DILocation(line: 644, column: 41, scope: !154)
!531 = !DILocation(line: 645, column: 1, scope: !154)
!532 = !DILocation(line: 647, column: 45, scope: !168)
!533 = !DILocation(line: 647, column: 58, scope: !168)
!534 = !DILocation(line: 647, column: 74, scope: !168)
!535 = !DILocation(line: 648, column: 28, scope: !168)
!536 = !DILocation(line: 648, column: 38, scope: !168)
!537 = !DIExpression(DW_OP_bit_piece, 0, 64)
!538 = !DIExpression(DW_OP_bit_piece, 64, 64)
!539 = !DILocation(line: 649, column: 13, scope: !168)
!540 = !{!541, !541, i64 0}
!541 = !{!"double", !527, i64 0}
!542 = !DILocation(line: 649, column: 41, scope: !168)
!543 = !DILocation(line: 650, column: 1, scope: !168)
!544 = !DILocation(line: 652, column: 47, scope: !182)
!545 = !DILocation(line: 652, column: 59, scope: !182)
!546 = !DILocation(line: 652, column: 74, scope: !182)
!547 = !DILocation(line: 653, column: 27, scope: !182)
!548 = !DILocation(line: 653, column: 37, scope: !182)
!549 = !DILocation(line: 654, column: 23, scope: !182)
!550 = !DILocation(line: 654, column: 13, scope: !182)
!551 = !DILocation(line: 654, column: 51, scope: !182)
!552 = !DILocation(line: 654, column: 41, scope: !182)
!553 = !DILocation(line: 655, column: 1, scope: !182)
!554 = !DILocation(line: 657, column: 47, scope: !188)
!555 = !DILocation(line: 657, column: 60, scope: !188)
!556 = !DILocation(line: 657, column: 76, scope: !188)
!557 = !DILocation(line: 658, column: 28, scope: !188)
!558 = !DILocation(line: 658, column: 38, scope: !188)
!559 = !DILocation(line: 659, column: 13, scope: !188)
!560 = !DILocation(line: 659, column: 41, scope: !188)
!561 = !DILocation(line: 660, column: 1, scope: !188)
!562 = !DILocation(line: 348, column: 40, scope: !194)
!563 = !DILocation(line: 348, column: 50, scope: !194)
!564 = !DILocation(line: 349, column: 12, scope: !565)
!565 = distinct !DILexicalBlock(scope: !194, file: !195, line: 349, column: 6)
!566 = !DILocation(line: 349, column: 6, scope: !565)
!567 = !{!568, !570, i64 12}
!568 = !{!"__sFILE", !569, i64 0, !570, i64 8, !570, i64 12, !571, i64 16, !571, i64 18, !572, i64 24, !570, i64 40, !569, i64 48, !569, i64 56, !569, i64 64, !569, i64 72, !569, i64 80, !572, i64 88, !569, i64 104, !570, i64 112, !527, i64 116, !527, i64 119, !572, i64 120, !570, i64 136, !573, i64 144}
!569 = !{!"any pointer", !527, i64 0}
!570 = !{!"int", !527, i64 0}
!571 = !{!"short", !527, i64 0}
!572 = !{!"__sbuf", !569, i64 0, !570, i64 8}
!573 = !{!"long long", !527, i64 0}
!574 = !DILocation(line: 349, column: 15, scope: !565)
!575 = !DILocation(line: 349, column: 20, scope: !565)
!576 = !DILocation(line: 350, column: 10, scope: !565)
!577 = !DILocation(line: 349, column: 38, scope: !565)
!578 = !{!568, !570, i64 40}
!579 = !DILocation(line: 349, column: 31, scope: !565)
!580 = !DILocation(line: 349, column: 59, scope: !565)
!581 = !DILocation(line: 349, column: 47, scope: !565)
!582 = !DILocation(line: 350, column: 23, scope: !565)
!583 = !DILocation(line: 350, column: 16, scope: !565)
!584 = !DILocation(line: 350, column: 18, scope: !565)
!585 = !{!568, !569, i64 0}
!586 = !DILocation(line: 350, column: 21, scope: !565)
!587 = !{!527, !527, i64 0}
!588 = !DILocation(line: 350, column: 3, scope: !565)
!589 = !DILocation(line: 352, column: 11, scope: !565)
!590 = !DILocation(line: 352, column: 3, scope: !565)
!591 = !DILocation(line: 353, column: 1, scope: !194)
!592 = !DILocation(line: 114, column: 15, scope: !257)
!593 = !DILocation(line: 116, column: 20, scope: !257)
!594 = !DILocation(line: 116, column: 12, scope: !257)
!595 = !DILocation(line: 116, column: 57, scope: !257)
!596 = !DILocation(line: 116, column: 45, scope: !257)
!597 = !DILocation(line: 116, column: 5, scope: !257)
!598 = !DILocation(line: 318, column: 18, scope: !263)
!599 = !DILocation(line: 318, column: 36, scope: !263)
!600 = !DILocation(line: 318, column: 58, scope: !263)
!601 = !DILocation(line: 322, column: 10, scope: !263)
!602 = !DILocation(line: 324, column: 9, scope: !263)
!603 = !DILocation(line: 326, column: 22, scope: !604)
!604 = distinct !DILexicalBlock(scope: !605, file: !1, line: 325, column: 42)
!605 = distinct !DILexicalBlock(scope: !606, file: !1, line: 325, column: 2)
!606 = distinct !DILexicalBlock(scope: !607, file: !1, line: 325, column: 2)
!607 = distinct !DILexicalBlock(scope: !608, file: !1, line: 324, column: 25)
!608 = distinct !DILexicalBlock(scope: !263, file: !1, line: 324, column: 9)
!609 = !DILocation(line: 329, column: 5, scope: !607)
!610 = !DILocation(line: 331, column: 29, scope: !263)
!611 = !{!569, !569, i64 0}
!612 = !DILocation(line: 331, column: 45, scope: !263)
!613 = !DILocation(line: 331, column: 5, scope: !263)
!614 = !DILocation(line: 331, column: 26, scope: !263)
!615 = !DILocation(line: 332, column: 7, scope: !616)
!616 = distinct !DILexicalBlock(scope: !263, file: !1, line: 331, column: 54)
!617 = !DILocation(line: 321, column: 9, scope: !263)
!618 = !DILocation(line: 331, column: 18, scope: !263)
!619 = !DILocation(line: 334, column: 15, scope: !620)
!620 = distinct !DILexicalBlock(scope: !263, file: !1, line: 334, column: 9)
!621 = !DILocation(line: 334, column: 9, scope: !263)
!622 = !DILocation(line: 337, column: 9, scope: !623)
!623 = distinct !DILexicalBlock(scope: !263, file: !1, line: 337, column: 9)
!624 = !DILocation(line: 337, column: 22, scope: !623)
!625 = !DILocation(line: 338, column: 13, scope: !626)
!626 = distinct !DILexicalBlock(scope: !623, file: !1, line: 337, column: 39)
!627 = !DILocation(line: 320, column: 17, scope: !263)
!628 = !DILocation(line: 340, column: 5, scope: !626)
!629 = !DILocation(line: 341, column: 13, scope: !630)
!630 = distinct !DILexicalBlock(scope: !631, file: !1, line: 340, column: 46)
!631 = distinct !DILexicalBlock(scope: !623, file: !1, line: 340, column: 16)
!632 = !DILocation(line: 343, column: 5, scope: !630)
!633 = !DILocation(line: 344, column: 13, scope: !634)
!634 = distinct !DILexicalBlock(scope: !631, file: !1, line: 343, column: 12)
!635 = !DILocation(line: 347, column: 39, scope: !263)
!636 = !DILocation(line: 347, column: 23, scope: !263)
!637 = !DILocation(line: 347, column: 5, scope: !263)
!638 = !DILocation(line: 347, column: 21, scope: !263)
!639 = !DILocation(line: 348, column: 25, scope: !640)
!640 = distinct !DILexicalBlock(scope: !263, file: !1, line: 348, column: 9)
!641 = !DILocation(line: 348, column: 9, scope: !263)
!642 = !DILocation(line: 352, column: 23, scope: !263)
!643 = !DILocation(line: 352, column: 5, scope: !263)
!644 = !DILocation(line: 352, column: 21, scope: !263)
!645 = !DILocation(line: 358, column: 14, scope: !646)
!646 = distinct !DILexicalBlock(scope: !263, file: !1, line: 358, column: 9)
!647 = !DILocation(line: 358, column: 9, scope: !263)
!648 = !DILocation(line: 359, column: 28, scope: !649)
!649 = distinct !DILexicalBlock(scope: !646, file: !1, line: 358, column: 23)
!650 = !DILocation(line: 359, column: 20, scope: !649)
!651 = !DILocation(line: 359, column: 2, scope: !649)
!652 = !DILocation(line: 359, column: 18, scope: !649)
!653 = !DILocation(line: 360, column: 2, scope: !649)
!654 = !DILocation(line: 361, column: 5, scope: !649)
!655 = !DILocation(line: 362, column: 2, scope: !656)
!656 = distinct !DILexicalBlock(scope: !646, file: !1, line: 361, column: 12)
!657 = !DILocation(line: 362, column: 18, scope: !656)
!658 = !DILocation(line: 363, column: 2, scope: !656)
!659 = !DILocation(line: 366, column: 1, scope: !263)
!660 = !DILocation(line: 378, column: 19, scope: !276)
!661 = !DILocation(line: 381, column: 14, scope: !662)
!662 = distinct !DILexicalBlock(scope: !276, file: !1, line: 381, column: 9)
!663 = !DILocation(line: 381, column: 9, scope: !276)
!664 = !DILocation(line: 382, column: 10, scope: !665)
!665 = distinct !DILexicalBlock(scope: !662, file: !1, line: 381, column: 23)
!666 = !DILocation(line: 382, column: 2, scope: !665)
!667 = !DILocation(line: 383, column: 2, scope: !665)
!668 = !DILocation(line: 385, column: 27, scope: !669)
!669 = distinct !DILexicalBlock(scope: !670, file: !1, line: 385, column: 5)
!670 = distinct !DILexicalBlock(scope: !276, file: !1, line: 385, column: 5)
!671 = !DILocation(line: 385, column: 5, scope: !670)
!672 = !DILocation(line: 386, column: 6, scope: !673)
!673 = distinct !DILexicalBlock(scope: !674, file: !1, line: 386, column: 6)
!674 = distinct !DILexicalBlock(scope: !669, file: !1, line: 385, column: 45)
!675 = !DILocation(line: 386, column: 22, scope: !673)
!676 = !DILocation(line: 386, column: 6, scope: !674)
!677 = !DILocation(line: 388, column: 6, scope: !678)
!678 = distinct !DILexicalBlock(scope: !679, file: !1, line: 388, column: 6)
!679 = distinct !DILexicalBlock(scope: !680, file: !1, line: 388, column: 6)
!680 = distinct !DILexicalBlock(scope: !673, file: !1, line: 386, column: 31)
!681 = !{!682, !569, i64 8}
!682 = !{!"XDR", !527, i64 0, !569, i64 8, !569, i64 16, !569, i64 24, !569, i64 32, !570, i64 40}
!683 = !{!684, !569, i64 56}
!684 = !{!"xdr_ops", !569, i64 0, !569, i64 8, !569, i64 16, !569, i64 24, !569, i64 32, !569, i64 40, !569, i64 48, !569, i64 56, !569, i64 64, !569, i64 72}
!685 = !DILocation(line: 388, column: 6, scope: !679)
!686 = !DILocation(line: 389, column: 13, scope: !680)
!687 = !DILocation(line: 389, column: 6, scope: !680)
!688 = !DILocation(line: 390, column: 22, scope: !680)
!689 = !DILocation(line: 391, column: 6, scope: !680)
!690 = !DILocation(line: 394, column: 13, scope: !276)
!691 = !DILocation(line: 394, column: 5, scope: !276)
!692 = !DILocation(line: 395, column: 5, scope: !276)
!693 = !DILocation(line: 671, column: 22, scope: !282)
!694 = !DILocation(line: 671, column: 35, scope: !282)
!695 = !DILocation(line: 671, column: 44, scope: !282)
!696 = !DILocation(line: 671, column: 57, scope: !282)
!697 = !DILocation(line: 678, column: 9, scope: !282)
!698 = !DILocation(line: 678, column: 20, scope: !282)
!699 = !DILocation(line: 681, column: 14, scope: !282)
!700 = !DILocation(line: 681, column: 26, scope: !282)
!701 = !DILocation(line: 681, column: 40, scope: !282)
!702 = !DILocation(line: 685, column: 27, scope: !282)
!703 = !DILocation(line: 686, column: 5, scope: !282)
!704 = !DILocation(line: 686, column: 18, scope: !282)
!705 = !DILocation(line: 691, column: 9, scope: !282)
!706 = !DILocation(line: 688, column: 18, scope: !282)
!707 = !DILocation(line: 695, column: 5, scope: !282)
!708 = !DILocation(line: 695, column: 12, scope: !282)
!709 = !DILocation(line: 695, column: 28, scope: !282)
!710 = !DILocation(line: 697, column: 6, scope: !711)
!711 = distinct !DILexicalBlock(scope: !282, file: !1, line: 695, column: 37)
!712 = !DILocation(line: 697, column: 12, scope: !713)
!713 = distinct !DILexicalBlock(scope: !711, file: !1, line: 697, column: 6)
!714 = !DILocation(line: 698, column: 14, scope: !715)
!715 = distinct !DILexicalBlock(scope: !713, file: !1, line: 697, column: 22)
!716 = !DILocation(line: 698, column: 6, scope: !715)
!717 = !DILocation(line: 699, column: 6, scope: !715)
!718 = !DILocation(line: 702, column: 10, scope: !719)
!719 = distinct !DILexicalBlock(scope: !282, file: !1, line: 702, column: 9)
!720 = !DILocation(line: 702, column: 34, scope: !719)
!721 = !DILocation(line: 706, column: 6, scope: !722)
!722 = distinct !DILexicalBlock(scope: !723, file: !1, line: 706, column: 6)
!723 = distinct !DILexicalBlock(scope: !719, file: !1, line: 702, column: 63)
!724 = !DILocation(line: 706, column: 26, scope: !722)
!725 = !DILocation(line: 706, column: 6, scope: !723)
!726 = !DILocation(line: 708, column: 10, scope: !723)
!727 = !{!570, !570, i64 0}
!728 = !DILocation(line: 708, column: 16, scope: !723)
!729 = !DILocation(line: 681, column: 55, scope: !282)
!730 = !DILocation(line: 712, column: 12, scope: !731)
!731 = distinct !DILexicalBlock(scope: !723, file: !1, line: 712, column: 6)
!732 = !DILocation(line: 712, column: 6, scope: !723)
!733 = !DILocation(line: 713, column: 38, scope: !734)
!734 = distinct !DILexicalBlock(scope: !731, file: !1, line: 712, column: 19)
!735 = !DILocation(line: 713, column: 21, scope: !734)
!736 = !DILocation(line: 713, column: 13, scope: !734)
!737 = !DILocation(line: 717, column: 2, scope: !723)
!738 = !DILocation(line: 718, column: 6, scope: !739)
!739 = distinct !DILexicalBlock(scope: !723, file: !1, line: 718, column: 6)
!740 = !DILocation(line: 718, column: 9, scope: !739)
!741 = !DILocation(line: 718, column: 6, scope: !723)
!742 = !DILocation(line: 719, column: 34, scope: !743)
!743 = distinct !DILexicalBlock(scope: !739, file: !1, line: 718, column: 18)
!744 = !DILocation(line: 719, column: 40, scope: !743)
!745 = !DILocation(line: 719, column: 18, scope: !743)
!746 = !DILocation(line: 719, column: 9, scope: !743)
!747 = !DILocation(line: 720, column: 13, scope: !748)
!748 = distinct !DILexicalBlock(scope: !743, file: !1, line: 720, column: 10)
!749 = !DILocation(line: 720, column: 10, scope: !743)
!750 = !DILocation(line: 721, column: 11, scope: !751)
!751 = distinct !DILexicalBlock(scope: !748, file: !1, line: 720, column: 22)
!752 = !DILocation(line: 721, column: 3, scope: !751)
!753 = !DILocation(line: 722, column: 3, scope: !751)
!754 = !DILocation(line: 724, column: 16, scope: !743)
!755 = !DILocation(line: 724, column: 22, scope: !743)
!756 = !DILocation(line: 688, column: 9, scope: !282)
!757 = !DILocation(line: 725, column: 35, scope: !743)
!758 = !DILocation(line: 725, column: 43, scope: !743)
!759 = !DILocation(line: 725, column: 19, scope: !743)
!760 = !DILocation(line: 725, column: 10, scope: !743)
!761 = !DILocation(line: 726, column: 14, scope: !762)
!762 = distinct !DILexicalBlock(scope: !743, file: !1, line: 726, column: 10)
!763 = !DILocation(line: 726, column: 10, scope: !743)
!764 = !DILocation(line: 727, column: 11, scope: !765)
!765 = distinct !DILexicalBlock(scope: !762, file: !1, line: 726, column: 23)
!766 = !DILocation(line: 727, column: 3, scope: !765)
!767 = !DILocation(line: 728, column: 3, scope: !765)
!768 = !DILocation(line: 730, column: 16, scope: !743)
!769 = !DILocation(line: 730, column: 14, scope: !743)
!770 = !DILocation(line: 731, column: 2, scope: !743)
!771 = !DILocation(line: 731, column: 13, scope: !772)
!772 = distinct !DILexicalBlock(scope: !739, file: !1, line: 731, column: 13)
!773 = !DILocation(line: 731, column: 21, scope: !772)
!774 = !DILocation(line: 731, column: 19, scope: !772)
!775 = !DILocation(line: 731, column: 13, scope: !739)
!776 = !DILocation(line: 746, column: 20, scope: !723)
!777 = !DILocation(line: 754, column: 17, scope: !723)
!778 = !DILocation(line: 732, column: 26, scope: !779)
!779 = distinct !DILexicalBlock(scope: !772, file: !1, line: 731, column: 30)
!780 = !DILocation(line: 732, column: 39, scope: !779)
!781 = !DILocation(line: 732, column: 45, scope: !779)
!782 = !DILocation(line: 732, column: 18, scope: !779)
!783 = !DILocation(line: 732, column: 9, scope: !779)
!784 = !DILocation(line: 733, column: 13, scope: !785)
!785 = distinct !DILexicalBlock(scope: !779, file: !1, line: 733, column: 10)
!786 = !DILocation(line: 733, column: 10, scope: !779)
!787 = !DILocation(line: 734, column: 11, scope: !788)
!788 = distinct !DILexicalBlock(scope: !785, file: !1, line: 733, column: 22)
!789 = !DILocation(line: 734, column: 3, scope: !788)
!790 = !DILocation(line: 735, column: 3, scope: !788)
!791 = !DILocation(line: 737, column: 16, scope: !779)
!792 = !DILocation(line: 737, column: 22, scope: !779)
!793 = !DILocation(line: 738, column: 27, scope: !779)
!794 = !DILocation(line: 738, column: 41, scope: !779)
!795 = !DILocation(line: 738, column: 49, scope: !779)
!796 = !DILocation(line: 738, column: 19, scope: !779)
!797 = !DILocation(line: 738, column: 10, scope: !779)
!798 = !DILocation(line: 739, column: 14, scope: !799)
!799 = distinct !DILexicalBlock(scope: !779, file: !1, line: 739, column: 10)
!800 = !DILocation(line: 739, column: 10, scope: !779)
!801 = !DILocation(line: 740, column: 11, scope: !802)
!802 = distinct !DILexicalBlock(scope: !799, file: !1, line: 739, column: 23)
!803 = !DILocation(line: 740, column: 3, scope: !802)
!804 = !DILocation(line: 741, column: 3, scope: !802)
!805 = !DILocation(line: 743, column: 16, scope: !779)
!806 = !DILocation(line: 743, column: 14, scope: !779)
!807 = !DILocation(line: 744, column: 2, scope: !779)
!808 = !DILocation(line: 746, column: 27, scope: !723)
!809 = !DILocation(line: 746, column: 11, scope: !723)
!810 = !DILocation(line: 746, column: 18, scope: !723)
!811 = !DILocation(line: 746, column: 9, scope: !723)
!812 = !DILocation(line: 747, column: 26, scope: !723)
!813 = !DILocation(line: 747, column: 36, scope: !723)
!814 = !DILocation(line: 747, column: 14, scope: !723)
!815 = !DILocation(line: 747, column: 24, scope: !723)
!816 = !DILocation(line: 747, column: 2, scope: !723)
!817 = !DILocation(line: 747, column: 12, scope: !723)
!818 = !DILocation(line: 748, column: 26, scope: !723)
!819 = !DILocation(line: 748, column: 36, scope: !723)
!820 = !DILocation(line: 748, column: 14, scope: !723)
!821 = !DILocation(line: 748, column: 24, scope: !723)
!822 = !DILocation(line: 748, column: 2, scope: !723)
!823 = !DILocation(line: 748, column: 12, scope: !723)
!824 = !DILocation(line: 683, column: 66, scope: !282)
!825 = !DILocation(line: 684, column: 12, scope: !282)
!826 = !DILocation(line: 678, column: 41, scope: !282)
!827 = !DILocation(line: 678, column: 31, scope: !282)
!828 = !DILocation(line: 679, column: 50, scope: !282)
!829 = !DILocation(line: 679, column: 40, scope: !282)
!830 = !DILocation(line: 679, column: 30, scope: !282)
!831 = !DILocation(line: 751, column: 8, scope: !723)
!832 = !DILocation(line: 757, column: 15, scope: !833)
!833 = distinct !DILexicalBlock(scope: !834, file: !1, line: 756, column: 10)
!834 = distinct !DILexicalBlock(scope: !723, file: !1, line: 754, column: 27)
!835 = !DILocation(line: 754, column: 2, scope: !723)
!836 = !DILocation(line: 756, column: 10, scope: !833)
!837 = !DILocation(line: 756, column: 15, scope: !833)
!838 = !DILocation(line: 757, column: 13, scope: !833)
!839 = !DILocation(line: 756, column: 10, scope: !834)
!840 = !DILocation(line: 757, column: 8, scope: !833)
!841 = !DILocation(line: 684, column: 17, scope: !282)
!842 = !DILocation(line: 757, column: 3, scope: !833)
!843 = !DILocation(line: 759, column: 8, scope: !833)
!844 = !DILocation(line: 760, column: 10, scope: !845)
!845 = distinct !DILexicalBlock(scope: !834, file: !1, line: 760, column: 10)
!846 = !DILocation(line: 760, column: 19, scope: !845)
!847 = !DILocation(line: 764, column: 14, scope: !834)
!848 = !DILocation(line: 679, column: 9, scope: !282)
!849 = !DILocation(line: 765, column: 18, scope: !850)
!850 = distinct !DILexicalBlock(scope: !834, file: !1, line: 765, column: 10)
!851 = !DILocation(line: 765, column: 16, scope: !850)
!852 = !DILocation(line: 765, column: 10, scope: !834)
!853 = !DILocation(line: 765, column: 39, scope: !850)
!854 = !DILocation(line: 765, column: 29, scope: !850)
!855 = !DILocation(line: 766, column: 18, scope: !856)
!856 = distinct !DILexicalBlock(scope: !834, file: !1, line: 766, column: 10)
!857 = !DILocation(line: 766, column: 16, scope: !856)
!858 = !DILocation(line: 766, column: 10, scope: !834)
!859 = !DILocation(line: 766, column: 39, scope: !856)
!860 = !DILocation(line: 766, column: 29, scope: !856)
!861 = !DILocation(line: 767, column: 10, scope: !834)
!862 = !DILocation(line: 767, column: 13, scope: !834)
!863 = !DILocation(line: 768, column: 9, scope: !834)
!864 = !DILocation(line: 769, column: 10, scope: !865)
!865 = distinct !DILexicalBlock(scope: !834, file: !1, line: 769, column: 10)
!866 = !DILocation(line: 769, column: 15, scope: !865)
!867 = !DILocation(line: 770, column: 13, scope: !865)
!868 = !DILocation(line: 769, column: 10, scope: !834)
!869 = !DILocation(line: 770, column: 8, scope: !865)
!870 = !DILocation(line: 770, column: 3, scope: !865)
!871 = !DILocation(line: 772, column: 8, scope: !865)
!872 = !DILocation(line: 773, column: 10, scope: !873)
!873 = distinct !DILexicalBlock(scope: !834, file: !1, line: 773, column: 10)
!874 = !DILocation(line: 773, column: 19, scope: !873)
!875 = !DILocation(line: 773, column: 10, scope: !834)
!876 = !DILocation(line: 777, column: 14, scope: !834)
!877 = !DILocation(line: 679, column: 16, scope: !282)
!878 = !DILocation(line: 778, column: 18, scope: !879)
!879 = distinct !DILexicalBlock(scope: !834, file: !1, line: 778, column: 10)
!880 = !DILocation(line: 778, column: 16, scope: !879)
!881 = !DILocation(line: 778, column: 10, scope: !834)
!882 = !DILocation(line: 778, column: 39, scope: !879)
!883 = !DILocation(line: 778, column: 29, scope: !879)
!884 = !DILocation(line: 779, column: 18, scope: !885)
!885 = distinct !DILexicalBlock(scope: !834, file: !1, line: 779, column: 10)
!886 = !DILocation(line: 779, column: 16, scope: !885)
!887 = !DILocation(line: 779, column: 10, scope: !834)
!888 = !DILocation(line: 779, column: 39, scope: !885)
!889 = !DILocation(line: 779, column: 29, scope: !885)
!890 = !DILocation(line: 780, column: 10, scope: !834)
!891 = !DILocation(line: 780, column: 13, scope: !834)
!892 = !DILocation(line: 781, column: 9, scope: !834)
!893 = !DILocation(line: 782, column: 10, scope: !894)
!894 = distinct !DILexicalBlock(scope: !834, file: !1, line: 782, column: 10)
!895 = !DILocation(line: 782, column: 15, scope: !894)
!896 = !DILocation(line: 783, column: 13, scope: !894)
!897 = !DILocation(line: 782, column: 10, scope: !834)
!898 = !DILocation(line: 783, column: 8, scope: !894)
!899 = !DILocation(line: 783, column: 3, scope: !894)
!900 = !DILocation(line: 785, column: 8, scope: !894)
!901 = !DILocation(line: 786, column: 10, scope: !902)
!902 = distinct !DILexicalBlock(scope: !834, file: !1, line: 786, column: 10)
!903 = !DILocation(line: 786, column: 19, scope: !902)
!904 = !DILocation(line: 786, column: 10, scope: !834)
!905 = !DILocation(line: 790, column: 14, scope: !834)
!906 = !DILocation(line: 679, column: 23, scope: !282)
!907 = !DILocation(line: 791, column: 18, scope: !908)
!908 = distinct !DILexicalBlock(scope: !834, file: !1, line: 791, column: 10)
!909 = !DILocation(line: 791, column: 16, scope: !908)
!910 = !DILocation(line: 791, column: 10, scope: !834)
!911 = !DILocation(line: 791, column: 39, scope: !908)
!912 = !DILocation(line: 791, column: 29, scope: !908)
!913 = !DILocation(line: 792, column: 18, scope: !914)
!914 = distinct !DILexicalBlock(scope: !834, file: !1, line: 792, column: 10)
!915 = !DILocation(line: 792, column: 16, scope: !914)
!916 = !DILocation(line: 792, column: 10, scope: !834)
!917 = !DILocation(line: 792, column: 39, scope: !914)
!918 = !DILocation(line: 792, column: 29, scope: !914)
!919 = !DILocation(line: 793, column: 10, scope: !834)
!920 = !DILocation(line: 793, column: 13, scope: !834)
!921 = !DILocation(line: 794, column: 9, scope: !834)
!922 = !DILocation(line: 795, column: 25, scope: !834)
!923 = !DILocation(line: 795, column: 13, scope: !834)
!924 = !DILocation(line: 795, column: 45, scope: !834)
!925 = !DILocation(line: 795, column: 33, scope: !834)
!926 = !DILocation(line: 795, column: 32, scope: !834)
!927 = !DILocation(line: 795, column: 65, scope: !834)
!928 = !DILocation(line: 795, column: 53, scope: !834)
!929 = !DILocation(line: 795, column: 52, scope: !834)
!930 = !DILocation(line: 678, column: 46, scope: !282)
!931 = !DILocation(line: 796, column: 15, scope: !932)
!932 = distinct !DILexicalBlock(scope: !834, file: !1, line: 796, column: 10)
!933 = !DILocation(line: 796, column: 32, scope: !932)
!934 = !DILocation(line: 796, column: 25, scope: !932)
!935 = !DILocation(line: 754, column: 12, scope: !723)
!936 = !DILocation(line: 802, column: 2, scope: !723)
!937 = !DILocation(line: 803, column: 2, scope: !723)
!938 = !DILocation(line: 804, column: 2, scope: !723)
!939 = !DILocation(line: 806, column: 2, scope: !723)
!940 = !DILocation(line: 807, column: 2, scope: !723)
!941 = !DILocation(line: 808, column: 2, scope: !723)
!942 = !DILocation(line: 810, column: 13, scope: !943)
!943 = distinct !DILexicalBlock(scope: !723, file: !1, line: 810, column: 6)
!944 = !DILocation(line: 810, column: 6, scope: !943)
!945 = !DILocation(line: 810, column: 32, scope: !943)
!946 = !DILocation(line: 810, column: 25, scope: !943)
!947 = !DILocation(line: 810, column: 23, scope: !943)
!948 = !DILocation(line: 810, column: 42, scope: !943)
!949 = !DILocation(line: 811, column: 10, scope: !943)
!950 = !DILocation(line: 810, column: 52, scope: !943)
!951 = !DILocation(line: 819, column: 27, scope: !723)
!952 = !DILocation(line: 811, column: 3, scope: !943)
!953 = !DILocation(line: 811, column: 29, scope: !943)
!954 = !DILocation(line: 811, column: 22, scope: !943)
!955 = !DILocation(line: 811, column: 20, scope: !943)
!956 = !DILocation(line: 811, column: 39, scope: !943)
!957 = !DILocation(line: 811, column: 49, scope: !943)
!958 = !DILocation(line: 812, column: 10, scope: !943)
!959 = !DILocation(line: 812, column: 3, scope: !943)
!960 = !DILocation(line: 812, column: 29, scope: !943)
!961 = !DILocation(line: 812, column: 22, scope: !943)
!962 = !DILocation(line: 812, column: 20, scope: !943)
!963 = !DILocation(line: 812, column: 39, scope: !943)
!964 = !DILocation(line: 810, column: 6, scope: !723)
!965 = !DILocation(line: 820, column: 15, scope: !723)
!966 = !DILocation(line: 820, column: 27, scope: !723)
!967 = !DILocation(line: 817, column: 2, scope: !968)
!968 = distinct !DILexicalBlock(scope: !943, file: !1, line: 812, column: 50)
!969 = !DILocation(line: 818, column: 25, scope: !723)
!970 = !DILocation(line: 818, column: 36, scope: !723)
!971 = !DILocation(line: 818, column: 2, scope: !723)
!972 = !DILocation(line: 818, column: 13, scope: !723)
!973 = !DILocation(line: 819, column: 25, scope: !723)
!974 = !DILocation(line: 819, column: 36, scope: !723)
!975 = !DILocation(line: 819, column: 2, scope: !723)
!976 = !DILocation(line: 819, column: 13, scope: !723)
!977 = !DILocation(line: 820, column: 25, scope: !723)
!978 = !DILocation(line: 820, column: 36, scope: !723)
!979 = !DILocation(line: 820, column: 2, scope: !723)
!980 = !DILocation(line: 820, column: 13, scope: !723)
!981 = !DILocation(line: 823, column: 18, scope: !982)
!982 = distinct !DILexicalBlock(scope: !723, file: !1, line: 823, column: 6)
!983 = !DILocation(line: 823, column: 31, scope: !982)
!984 = !DILocation(line: 823, column: 46, scope: !982)
!985 = !DILocation(line: 823, column: 6, scope: !723)
!986 = !DILocation(line: 451, column: 32, scope: !336, inlinedAt: !987)
!987 = distinct !DILocation(line: 824, column: 22, scope: !988)
!988 = distinct !DILexicalBlock(scope: !982, file: !1, line: 823, column: 58)
!989 = !DILocation(line: 452, column: 18, scope: !336, inlinedAt: !987)
!990 = !DILocation(line: 453, column: 9, scope: !336, inlinedAt: !987)
!991 = !DILocation(line: 455, column: 24, scope: !336, inlinedAt: !987)
!992 = !DILocation(line: 455, column: 5, scope: !336, inlinedAt: !987)
!993 = !DILocation(line: 824, column: 22, scope: !988)
!994 = !DILocation(line: 456, column: 13, scope: !995, inlinedAt: !987)
!995 = distinct !DILexicalBlock(scope: !336, file: !1, line: 455, column: 45)
!996 = !DILocation(line: 457, column: 6, scope: !995, inlinedAt: !987)
!997 = !DILocation(line: 455, column: 39, scope: !336, inlinedAt: !987)
!998 = !DIExpression(DW_OP_bit_piece, 0, 32)
!999 = !DILocation(line: 451, column: 32, scope: !336, inlinedAt: !1000)
!1000 = distinct !DILocation(line: 825, column: 22, scope: !988)
!1001 = !DILocation(line: 452, column: 18, scope: !336, inlinedAt: !1000)
!1002 = !DILocation(line: 453, column: 9, scope: !336, inlinedAt: !1000)
!1003 = !DILocation(line: 455, column: 24, scope: !336, inlinedAt: !1000)
!1004 = !DILocation(line: 455, column: 5, scope: !336, inlinedAt: !1000)
!1005 = !DILocation(line: 825, column: 22, scope: !988)
!1006 = !DILocation(line: 456, column: 13, scope: !995, inlinedAt: !1000)
!1007 = !DILocation(line: 457, column: 6, scope: !995, inlinedAt: !1000)
!1008 = !DILocation(line: 455, column: 39, scope: !336, inlinedAt: !1000)
!1009 = !DIExpression(DW_OP_bit_piece, 32, 32)
!1010 = !DILocation(line: 451, column: 32, scope: !336, inlinedAt: !1011)
!1011 = distinct !DILocation(line: 826, column: 22, scope: !988)
!1012 = !DILocation(line: 452, column: 18, scope: !336, inlinedAt: !1011)
!1013 = !DILocation(line: 453, column: 9, scope: !336, inlinedAt: !1011)
!1014 = !DILocation(line: 455, column: 24, scope: !336, inlinedAt: !1011)
!1015 = !DILocation(line: 455, column: 5, scope: !336, inlinedAt: !1011)
!1016 = !DILocation(line: 826, column: 22, scope: !988)
!1017 = !DILocation(line: 456, column: 13, scope: !995, inlinedAt: !1011)
!1018 = !DILocation(line: 457, column: 6, scope: !995, inlinedAt: !1011)
!1019 = !DILocation(line: 455, column: 39, scope: !336, inlinedAt: !1011)
!1020 = !DILocation(line: 829, column: 16, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !982, file: !1, line: 828, column: 9)
!1022 = !DILocation(line: 689, column: 18, scope: !282)
!1023 = !DILocation(line: 832, column: 26, scope: !723)
!1024 = !DILocation(line: 681, column: 63, scope: !282)
!1025 = !DILocation(line: 679, column: 60, scope: !282)
!1026 = !DILocation(line: 835, column: 14, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !723, file: !1, line: 834, column: 62)
!1028 = !DILocation(line: 834, column: 28, scope: !723)
!1029 = !DILocation(line: 834, column: 18, scope: !723)
!1030 = !DILocation(line: 834, column: 31, scope: !723)
!1031 = !DILocation(line: 834, column: 51, scope: !723)
!1032 = !DILocation(line: 834, column: 2, scope: !723)
!1033 = !DILocation(line: 837, column: 2, scope: !723)
!1034 = !DILocation(line: 838, column: 11, scope: !723)
!1035 = !DILocation(line: 680, column: 17, scope: !282)
!1036 = !DILocation(line: 839, column: 18, scope: !723)
!1037 = !DILocation(line: 680, column: 9, scope: !282)
!1038 = !DILocation(line: 840, column: 22, scope: !723)
!1039 = !DILocation(line: 840, column: 12, scope: !723)
!1040 = !DILocation(line: 840, column: 49, scope: !723)
!1041 = !DILocation(line: 683, column: 19, scope: !282)
!1042 = !DILocation(line: 841, column: 13, scope: !723)
!1043 = !DILocation(line: 841, column: 33, scope: !723)
!1044 = !DILocation(line: 683, column: 9, scope: !282)
!1045 = !DILocation(line: 842, column: 32, scope: !723)
!1046 = !DILocation(line: 842, column: 45, scope: !723)
!1047 = !DILocation(line: 842, column: 17, scope: !723)
!1048 = !DILocation(line: 842, column: 30, scope: !723)
!1049 = !DILocation(line: 842, column: 2, scope: !723)
!1050 = !DILocation(line: 842, column: 15, scope: !723)
!1051 = !DILocation(line: 843, column: 11, scope: !723)
!1052 = !DILocation(line: 843, column: 29, scope: !723)
!1053 = !DILocation(line: 683, column: 28, scope: !282)
!1054 = !DILocation(line: 683, column: 36, scope: !282)
!1055 = !DILocation(line: 875, column: 6, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !723, file: !1, line: 845, column: 20)
!1057 = !DILocation(line: 876, column: 6, scope: !1056)
!1058 = !DILocation(line: 877, column: 6, scope: !1056)
!1059 = !DILocation(line: 878, column: 18, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1056, file: !1, line: 878, column: 10)
!1061 = !DILocation(line: 845, column: 2, scope: !723)
!1062 = !DILocation(line: 898, column: 48, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1064, file: !1, line: 895, column: 7)
!1064 = distinct !DILexicalBlock(scope: !1056, file: !1, line: 894, column: 36)
!1065 = !DILocation(line: 845, column: 13, scope: !723)
!1066 = !DILocation(line: 845, column: 11, scope: !723)
!1067 = !DILocation(line: 683, column: 39, scope: !282)
!1068 = !DILocation(line: 847, column: 36, scope: !1056)
!1069 = !DILocation(line: 847, column: 32, scope: !1056)
!1070 = !DILocation(line: 685, column: 15, scope: !282)
!1071 = !DILocation(line: 848, column: 10, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1056, file: !1, line: 848, column: 10)
!1073 = !DILocation(line: 848, column: 19, scope: !1072)
!1074 = !DILocation(line: 848, column: 33, scope: !1072)
!1075 = !DILocation(line: 848, column: 28, scope: !1072)
!1076 = !DILocation(line: 849, column: 11, scope: !1072)
!1077 = !DILocation(line: 849, column: 24, scope: !1072)
!1078 = !DILocation(line: 849, column: 7, scope: !1072)
!1079 = !DILocation(line: 849, column: 40, scope: !1072)
!1080 = !DILocation(line: 849, column: 49, scope: !1072)
!1081 = !DILocation(line: 850, column: 11, scope: !1072)
!1082 = !DILocation(line: 850, column: 24, scope: !1072)
!1083 = !DILocation(line: 850, column: 7, scope: !1072)
!1084 = !DILocation(line: 850, column: 40, scope: !1072)
!1085 = !DILocation(line: 850, column: 49, scope: !1072)
!1086 = !DILocation(line: 851, column: 11, scope: !1072)
!1087 = !DILocation(line: 851, column: 24, scope: !1072)
!1088 = !DILocation(line: 851, column: 7, scope: !1072)
!1089 = !DILocation(line: 851, column: 40, scope: !1072)
!1090 = !DILocation(line: 848, column: 10, scope: !1056)
!1091 = !DILocation(line: 853, column: 26, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1072, file: !1, line: 853, column: 17)
!1093 = !DILocation(line: 855, column: 6, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !1092, file: !1, line: 853, column: 36)
!1095 = !DILocation(line: 858, column: 12, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1056, file: !1, line: 858, column: 10)
!1097 = !DILocation(line: 858, column: 16, scope: !1096)
!1098 = !DILocation(line: 859, column: 11, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1100, file: !1, line: 859, column: 7)
!1100 = distinct !DILexicalBlock(scope: !1096, file: !1, line: 858, column: 25)
!1101 = !DILocation(line: 858, column: 10, scope: !1056)
!1102 = !DILocation(line: 859, column: 26, scope: !1099)
!1103 = !DILocation(line: 859, column: 24, scope: !1099)
!1104 = !DILocation(line: 859, column: 7, scope: !1099)
!1105 = !DILocation(line: 859, column: 40, scope: !1099)
!1106 = !DILocation(line: 859, column: 51, scope: !1099)
!1107 = !DILocation(line: 860, column: 8, scope: !1099)
!1108 = !DILocation(line: 860, column: 23, scope: !1099)
!1109 = !DILocation(line: 860, column: 21, scope: !1099)
!1110 = !DILocation(line: 860, column: 4, scope: !1099)
!1111 = !DILocation(line: 860, column: 37, scope: !1099)
!1112 = !DILocation(line: 860, column: 48, scope: !1099)
!1113 = !DILocation(line: 861, column: 8, scope: !1099)
!1114 = !DILocation(line: 861, column: 23, scope: !1099)
!1115 = !DILocation(line: 861, column: 21, scope: !1099)
!1116 = !DILocation(line: 861, column: 4, scope: !1099)
!1117 = !DILocation(line: 861, column: 37, scope: !1099)
!1118 = !DILocation(line: 859, column: 7, scope: !1100)
!1119 = !DILocation(line: 685, column: 9, scope: !282)
!1120 = !DILocation(line: 865, column: 40, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1099, file: !1, line: 861, column: 49)
!1122 = !DILocation(line: 866, column: 17, scope: !1121)
!1123 = !DILocation(line: 867, column: 40, scope: !1121)
!1124 = !DILocation(line: 868, column: 17, scope: !1121)
!1125 = !DILocation(line: 869, column: 40, scope: !1121)
!1126 = !DILocation(line: 870, column: 17, scope: !1121)
!1127 = !DILocation(line: 872, column: 3, scope: !1121)
!1128 = !DILocation(line: 875, column: 35, scope: !1056)
!1129 = !DILocation(line: 875, column: 33, scope: !1056)
!1130 = !DILocation(line: 875, column: 18, scope: !1056)
!1131 = !DILocation(line: 876, column: 20, scope: !1056)
!1132 = !DILocation(line: 876, column: 35, scope: !1056)
!1133 = !DILocation(line: 876, column: 33, scope: !1056)
!1134 = !DILocation(line: 876, column: 18, scope: !1056)
!1135 = !DILocation(line: 877, column: 20, scope: !1056)
!1136 = !DILocation(line: 877, column: 35, scope: !1056)
!1137 = !DILocation(line: 877, column: 33, scope: !1056)
!1138 = !DILocation(line: 877, column: 18, scope: !1056)
!1139 = !DILocation(line: 879, column: 12, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1060, file: !1, line: 878, column: 24)
!1141 = !DILocation(line: 878, column: 10, scope: !1056)
!1142 = !DILocation(line: 879, column: 3, scope: !1140)
!1143 = !DILocation(line: 880, column: 12, scope: !1140)
!1144 = !DILocation(line: 880, column: 3, scope: !1140)
!1145 = !DILocation(line: 881, column: 12, scope: !1140)
!1146 = !DILocation(line: 881, column: 3, scope: !1140)
!1147 = !DILocation(line: 882, column: 6, scope: !1140)
!1148 = !DILocation(line: 883, column: 3, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1060, file: !1, line: 882, column: 13)
!1150 = !DILocation(line: 885, column: 21, scope: !1056)
!1151 = !DILocation(line: 886, column: 21, scope: !1056)
!1152 = !DILocation(line: 887, column: 21, scope: !1056)
!1153 = !DIExpression(DW_OP_bit_piece, 64, 32)
!1154 = !DILocation(line: 683, column: 61, scope: !282)
!1155 = !DILocation(line: 892, column: 19, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1056, file: !1, line: 892, column: 10)
!1157 = !DILocation(line: 892, column: 38, scope: !1156)
!1158 = !DILocation(line: 892, column: 24, scope: !1156)
!1159 = !DILocation(line: 683, column: 49, scope: !282)
!1160 = !DILocation(line: 894, column: 22, scope: !1056)
!1161 = !DILocation(line: 888, column: 28, scope: !1056)
!1162 = !DILocation(line: 895, column: 18, scope: !1063)
!1163 = !DILocation(line: 896, column: 4, scope: !1063)
!1164 = !DILocation(line: 895, column: 24, scope: !1063)
!1165 = !DILocation(line: 903, column: 21, scope: !1064)
!1166 = !DILocation(line: 904, column: 21, scope: !1064)
!1167 = !DILocation(line: 897, column: 4, scope: !1063)
!1168 = !DILocation(line: 896, column: 37, scope: !1063)
!1169 = !DILocation(line: 898, column: 4, scope: !1063)
!1170 = !DILocation(line: 897, column: 37, scope: !1063)
!1171 = !DILocation(line: 898, column: 37, scope: !1063)
!1172 = !DILocation(line: 895, column: 7, scope: !1064)
!1173 = !DILocation(line: 902, column: 34, scope: !1064)
!1174 = !DILocation(line: 902, column: 49, scope: !1064)
!1175 = !DILocation(line: 902, column: 15, scope: !1064)
!1176 = !DILocation(line: 902, column: 3, scope: !1064)
!1177 = !DILocation(line: 902, column: 19, scope: !1064)
!1178 = !DILocation(line: 903, column: 34, scope: !1064)
!1179 = !DILocation(line: 903, column: 49, scope: !1064)
!1180 = !DILocation(line: 903, column: 15, scope: !1064)
!1181 = !DILocation(line: 903, column: 3, scope: !1064)
!1182 = !DILocation(line: 903, column: 19, scope: !1064)
!1183 = !DILocation(line: 904, column: 34, scope: !1064)
!1184 = !DILocation(line: 904, column: 49, scope: !1064)
!1185 = !DILocation(line: 904, column: 3, scope: !1064)
!1186 = !DILocation(line: 904, column: 19, scope: !1064)
!1187 = !DILocation(line: 906, column: 18, scope: !1064)
!1188 = !DILocation(line: 907, column: 18, scope: !1064)
!1189 = !DILocation(line: 908, column: 18, scope: !1064)
!1190 = !DILocation(line: 910, column: 4, scope: !1064)
!1191 = !DILocation(line: 911, column: 25, scope: !1064)
!1192 = !DILocation(line: 913, column: 11, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1064, file: !1, line: 913, column: 7)
!1194 = !DILocation(line: 913, column: 9, scope: !1193)
!1195 = !DILocation(line: 913, column: 17, scope: !1193)
!1196 = !DILocation(line: 914, column: 8, scope: !1193)
!1197 = !DILocation(line: 914, column: 21, scope: !1193)
!1198 = !DILocation(line: 914, column: 4, scope: !1193)
!1199 = !DILocation(line: 914, column: 37, scope: !1193)
!1200 = !DILocation(line: 914, column: 48, scope: !1193)
!1201 = !DILocation(line: 915, column: 8, scope: !1193)
!1202 = !DILocation(line: 915, column: 21, scope: !1193)
!1203 = !DILocation(line: 915, column: 4, scope: !1193)
!1204 = !DILocation(line: 915, column: 37, scope: !1193)
!1205 = !DILocation(line: 915, column: 48, scope: !1193)
!1206 = !DILocation(line: 916, column: 8, scope: !1193)
!1207 = !DILocation(line: 916, column: 21, scope: !1193)
!1208 = !DILocation(line: 916, column: 4, scope: !1193)
!1209 = !DILocation(line: 916, column: 37, scope: !1193)
!1210 = !DILocation(line: 894, column: 29, scope: !1056)
!1211 = !DILocation(line: 920, column: 14, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1056, file: !1, line: 920, column: 10)
!1213 = !DILocation(line: 920, column: 39, scope: !1212)
!1214 = !DILocation(line: 920, column: 25, scope: !1212)
!1215 = !DILocation(line: 922, column: 12, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1212, file: !1, line: 920, column: 45)
!1217 = !DILocation(line: 922, column: 3, scope: !1216)
!1218 = !DILocation(line: 923, column: 12, scope: !1216)
!1219 = !DILocation(line: 923, column: 23, scope: !1216)
!1220 = !DILocation(line: 923, column: 34, scope: !1216)
!1221 = !DILocation(line: 923, column: 3, scope: !1216)
!1222 = !DILocation(line: 924, column: 6, scope: !1216)
!1223 = !DILocation(line: 925, column: 3, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1212, file: !1, line: 924, column: 13)
!1225 = !DILocation(line: 682, column: 15, scope: !282)
!1226 = !DILocation(line: 927, column: 18, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1228, file: !1, line: 927, column: 6)
!1228 = distinct !DILexicalBlock(scope: !1056, file: !1, line: 927, column: 6)
!1229 = !DILocation(line: 927, column: 6, scope: !1228)
!1230 = !DILocation(line: 928, column: 12, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1227, file: !1, line: 927, column: 31)
!1232 = !DILocation(line: 928, column: 20, scope: !1231)
!1233 = !DILocation(line: 928, column: 42, scope: !1231)
!1234 = !DILocation(line: 928, column: 3, scope: !1231)
!1235 = !DILocation(line: 930, column: 10, scope: !1056)
!1236 = !DILocation(line: 931, column: 12, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1238, file: !1, line: 930, column: 27)
!1238 = distinct !DILexicalBlock(scope: !1056, file: !1, line: 930, column: 10)
!1239 = !DILocation(line: 932, column: 18, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1237, file: !1, line: 932, column: 7)
!1241 = !DILocation(line: 932, column: 7, scope: !1237)
!1242 = !DILocation(line: 934, column: 35, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1240, file: !1, line: 932, column: 23)
!1244 = !DILocation(line: 934, column: 17, scope: !1243)
!1245 = !DILocation(line: 934, column: 39, scope: !1243)
!1246 = !DILocation(line: 939, column: 48, scope: !1237)
!1247 = !DILocation(line: 935, column: 3, scope: !1243)
!1248 = !DILocation(line: 937, column: 18, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1240, file: !1, line: 935, column: 10)
!1250 = !DILocation(line: 937, column: 38, scope: !1249)
!1251 = !DILocation(line: 939, column: 46, scope: !1237)
!1252 = !DILocation(line: 939, column: 31, scope: !1237)
!1253 = !DILocation(line: 939, column: 16, scope: !1237)
!1254 = !DILocation(line: 940, column: 6, scope: !1237)
!1255 = !DILocation(line: 942, column: 6, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !723, file: !1, line: 942, column: 6)
!1257 = !DILocation(line: 942, column: 13, scope: !1256)
!1258 = !DILocation(line: 942, column: 6, scope: !723)
!1259 = !DILocation(line: 942, column: 25, scope: !1256)
!1260 = !DILocation(line: 942, column: 19, scope: !1256)
!1261 = !DILocation(line: 943, column: 2, scope: !723)
!1262 = !DILocation(line: 944, column: 53, scope: !723)
!1263 = !DILocation(line: 944, column: 43, scope: !723)
!1264 = !DILocation(line: 944, column: 76, scope: !723)
!1265 = !DILocation(line: 944, column: 26, scope: !723)
!1266 = !DILocation(line: 944, column: 23, scope: !723)
!1267 = !DILocation(line: 944, column: 9, scope: !723)
!1268 = !DILocation(line: 688, column: 25, scope: !282)
!1269 = !DILocation(line: 949, column: 6, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1271, file: !1, line: 949, column: 6)
!1271 = distinct !DILexicalBlock(scope: !719, file: !1, line: 945, column: 12)
!1272 = !DILocation(line: 949, column: 28, scope: !1270)
!1273 = !DILocation(line: 949, column: 6, scope: !1271)
!1274 = !DILocation(line: 951, column: 6, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1271, file: !1, line: 951, column: 6)
!1276 = !DILocation(line: 951, column: 12, scope: !1275)
!1277 = !DILocation(line: 951, column: 17, scope: !1275)
!1278 = !DILocation(line: 951, column: 20, scope: !1275)
!1279 = !DILocation(line: 951, column: 26, scope: !1275)
!1280 = !DILocation(line: 951, column: 6, scope: !1271)
!1281 = !DILocation(line: 952, column: 14, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1275, file: !1, line: 951, column: 36)
!1283 = !DILocation(line: 952, column: 6, scope: !1282)
!1284 = !DILocation(line: 954, column: 2, scope: !1282)
!1285 = !DILocation(line: 955, column: 10, scope: !1271)
!1286 = !DILocation(line: 955, column: 8, scope: !1271)
!1287 = !DILocation(line: 956, column: 16, scope: !1271)
!1288 = !DILocation(line: 957, column: 12, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1271, file: !1, line: 957, column: 6)
!1290 = !DILocation(line: 957, column: 6, scope: !1271)
!1291 = !DILocation(line: 958, column: 38, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1289, file: !1, line: 957, column: 18)
!1293 = !DILocation(line: 958, column: 21, scope: !1292)
!1294 = !DILocation(line: 958, column: 13, scope: !1292)
!1295 = !DILocation(line: 961, column: 2, scope: !1271)
!1296 = !DILocation(line: 962, column: 6, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1271, file: !1, line: 962, column: 6)
!1298 = !DILocation(line: 962, column: 9, scope: !1297)
!1299 = !DILocation(line: 962, column: 6, scope: !1271)
!1300 = !DILocation(line: 963, column: 34, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1297, file: !1, line: 962, column: 18)
!1302 = !DILocation(line: 963, column: 40, scope: !1301)
!1303 = !DILocation(line: 963, column: 18, scope: !1301)
!1304 = !DILocation(line: 963, column: 9, scope: !1301)
!1305 = !DILocation(line: 964, column: 13, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1301, file: !1, line: 964, column: 10)
!1307 = !DILocation(line: 964, column: 10, scope: !1301)
!1308 = !DILocation(line: 965, column: 11, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1306, file: !1, line: 964, column: 22)
!1310 = !DILocation(line: 965, column: 3, scope: !1309)
!1311 = !DILocation(line: 966, column: 3, scope: !1309)
!1312 = !DILocation(line: 968, column: 16, scope: !1301)
!1313 = !DILocation(line: 968, column: 22, scope: !1301)
!1314 = !DILocation(line: 969, column: 35, scope: !1301)
!1315 = !DILocation(line: 969, column: 43, scope: !1301)
!1316 = !DILocation(line: 969, column: 19, scope: !1301)
!1317 = !DILocation(line: 969, column: 10, scope: !1301)
!1318 = !DILocation(line: 970, column: 14, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1301, file: !1, line: 970, column: 10)
!1320 = !DILocation(line: 970, column: 10, scope: !1301)
!1321 = !DILocation(line: 971, column: 11, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1319, file: !1, line: 970, column: 23)
!1323 = !DILocation(line: 971, column: 3, scope: !1322)
!1324 = !DILocation(line: 972, column: 3, scope: !1322)
!1325 = !DILocation(line: 974, column: 16, scope: !1301)
!1326 = !DILocation(line: 974, column: 14, scope: !1301)
!1327 = !DILocation(line: 975, column: 2, scope: !1301)
!1328 = !DILocation(line: 975, column: 13, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1297, file: !1, line: 975, column: 13)
!1330 = !DILocation(line: 975, column: 21, scope: !1329)
!1331 = !DILocation(line: 975, column: 19, scope: !1329)
!1332 = !DILocation(line: 975, column: 13, scope: !1297)
!1333 = !DILocation(line: 989, column: 20, scope: !1271)
!1334 = !DILocation(line: 976, column: 26, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1329, file: !1, line: 975, column: 30)
!1336 = !DILocation(line: 976, column: 39, scope: !1335)
!1337 = !DILocation(line: 976, column: 45, scope: !1335)
!1338 = !DILocation(line: 976, column: 18, scope: !1335)
!1339 = !DILocation(line: 976, column: 9, scope: !1335)
!1340 = !DILocation(line: 977, column: 13, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1335, file: !1, line: 977, column: 10)
!1342 = !DILocation(line: 977, column: 10, scope: !1335)
!1343 = !DILocation(line: 978, column: 11, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1341, file: !1, line: 977, column: 22)
!1345 = !DILocation(line: 978, column: 3, scope: !1344)
!1346 = !DILocation(line: 979, column: 3, scope: !1344)
!1347 = !DILocation(line: 981, column: 16, scope: !1335)
!1348 = !DILocation(line: 981, column: 22, scope: !1335)
!1349 = !DILocation(line: 982, column: 27, scope: !1335)
!1350 = !DILocation(line: 982, column: 41, scope: !1335)
!1351 = !DILocation(line: 982, column: 49, scope: !1335)
!1352 = !DILocation(line: 982, column: 19, scope: !1335)
!1353 = !DILocation(line: 982, column: 10, scope: !1335)
!1354 = !DILocation(line: 983, column: 14, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1335, file: !1, line: 983, column: 10)
!1356 = !DILocation(line: 983, column: 10, scope: !1335)
!1357 = !DILocation(line: 984, column: 11, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1355, file: !1, line: 983, column: 23)
!1359 = !DILocation(line: 984, column: 3, scope: !1358)
!1360 = !DILocation(line: 985, column: 3, scope: !1358)
!1361 = !DILocation(line: 987, column: 16, scope: !1335)
!1362 = !DILocation(line: 987, column: 14, scope: !1335)
!1363 = !DILocation(line: 988, column: 2, scope: !1335)
!1364 = !DILocation(line: 989, column: 27, scope: !1271)
!1365 = !DILocation(line: 989, column: 11, scope: !1271)
!1366 = !DILocation(line: 989, column: 18, scope: !1271)
!1367 = !DILocation(line: 989, column: 9, scope: !1271)
!1368 = !DILocation(line: 991, column: 18, scope: !1271)
!1369 = !DILocation(line: 991, column: 2, scope: !1271)
!1370 = !DILocation(line: 992, column: 18, scope: !1271)
!1371 = !DILocation(line: 992, column: 2, scope: !1271)
!1372 = !DILocation(line: 993, column: 18, scope: !1271)
!1373 = !DILocation(line: 993, column: 2, scope: !1271)
!1374 = !DILocation(line: 995, column: 18, scope: !1271)
!1375 = !DILocation(line: 995, column: 2, scope: !1271)
!1376 = !DILocation(line: 996, column: 18, scope: !1271)
!1377 = !DILocation(line: 996, column: 2, scope: !1271)
!1378 = !DILocation(line: 997, column: 18, scope: !1271)
!1379 = !DILocation(line: 997, column: 2, scope: !1271)
!1380 = !DILocation(line: 999, column: 15, scope: !1271)
!1381 = !DILocation(line: 999, column: 27, scope: !1271)
!1382 = !DILocation(line: 999, column: 25, scope: !1271)
!1383 = !DILocation(line: 999, column: 36, scope: !1271)
!1384 = !DILocation(line: 999, column: 2, scope: !1271)
!1385 = !DILocation(line: 999, column: 13, scope: !1271)
!1386 = !DILocation(line: 1000, column: 15, scope: !1271)
!1387 = !DILocation(line: 1000, column: 27, scope: !1271)
!1388 = !DILocation(line: 1000, column: 25, scope: !1271)
!1389 = !DILocation(line: 1000, column: 36, scope: !1271)
!1390 = !DILocation(line: 1000, column: 2, scope: !1271)
!1391 = !DILocation(line: 1000, column: 13, scope: !1271)
!1392 = !DILocation(line: 1001, column: 15, scope: !1271)
!1393 = !DILocation(line: 1001, column: 27, scope: !1271)
!1394 = !DILocation(line: 1001, column: 25, scope: !1271)
!1395 = !DILocation(line: 1001, column: 36, scope: !1271)
!1396 = !DILocation(line: 1001, column: 2, scope: !1271)
!1397 = !DILocation(line: 1001, column: 13, scope: !1271)
!1398 = !DILocation(line: 1004, column: 18, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1271, file: !1, line: 1004, column: 6)
!1400 = !DILocation(line: 1004, column: 31, scope: !1399)
!1401 = !DILocation(line: 1004, column: 46, scope: !1399)
!1402 = !DILocation(line: 1004, column: 6, scope: !1271)
!1403 = !DILocation(line: 451, column: 32, scope: !336, inlinedAt: !1404)
!1404 = distinct !DILocation(line: 1005, column: 22, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1399, file: !1, line: 1004, column: 58)
!1406 = !DILocation(line: 452, column: 18, scope: !336, inlinedAt: !1404)
!1407 = !DILocation(line: 453, column: 9, scope: !336, inlinedAt: !1404)
!1408 = !DILocation(line: 455, column: 24, scope: !336, inlinedAt: !1404)
!1409 = !DILocation(line: 455, column: 5, scope: !336, inlinedAt: !1404)
!1410 = !DILocation(line: 1005, column: 22, scope: !1405)
!1411 = !DILocation(line: 456, column: 13, scope: !995, inlinedAt: !1404)
!1412 = !DILocation(line: 457, column: 6, scope: !995, inlinedAt: !1404)
!1413 = !DILocation(line: 455, column: 39, scope: !336, inlinedAt: !1404)
!1414 = !DILocation(line: 451, column: 32, scope: !336, inlinedAt: !1415)
!1415 = distinct !DILocation(line: 1006, column: 22, scope: !1405)
!1416 = !DILocation(line: 452, column: 18, scope: !336, inlinedAt: !1415)
!1417 = !DILocation(line: 453, column: 9, scope: !336, inlinedAt: !1415)
!1418 = !DILocation(line: 455, column: 24, scope: !336, inlinedAt: !1415)
!1419 = !DILocation(line: 455, column: 5, scope: !336, inlinedAt: !1415)
!1420 = !DILocation(line: 1006, column: 22, scope: !1405)
!1421 = !DILocation(line: 456, column: 13, scope: !995, inlinedAt: !1415)
!1422 = !DILocation(line: 457, column: 6, scope: !995, inlinedAt: !1415)
!1423 = !DILocation(line: 455, column: 39, scope: !336, inlinedAt: !1415)
!1424 = !DILocation(line: 451, column: 32, scope: !336, inlinedAt: !1425)
!1425 = distinct !DILocation(line: 1007, column: 22, scope: !1405)
!1426 = !DILocation(line: 452, column: 18, scope: !336, inlinedAt: !1425)
!1427 = !DILocation(line: 453, column: 9, scope: !336, inlinedAt: !1425)
!1428 = !DILocation(line: 455, column: 24, scope: !336, inlinedAt: !1425)
!1429 = !DILocation(line: 455, column: 5, scope: !336, inlinedAt: !1425)
!1430 = !DILocation(line: 1007, column: 22, scope: !1405)
!1431 = !DILocation(line: 456, column: 13, scope: !995, inlinedAt: !1425)
!1432 = !DILocation(line: 457, column: 6, scope: !995, inlinedAt: !1425)
!1433 = !DILocation(line: 455, column: 39, scope: !336, inlinedAt: !1425)
!1434 = !DILocation(line: 1010, column: 16, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1399, file: !1, line: 1009, column: 9)
!1436 = !DILocation(line: 1013, column: 6, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1271, file: !1, line: 1013, column: 6)
!1438 = !DILocation(line: 1013, column: 31, scope: !1437)
!1439 = !DILocation(line: 1013, column: 6, scope: !1271)
!1440 = !DILocation(line: 1015, column: 11, scope: !1271)
!1441 = !DILocation(line: 1017, column: 22, scope: !1271)
!1442 = !DILocation(line: 1017, column: 12, scope: !1271)
!1443 = !DILocation(line: 1017, column: 49, scope: !1271)
!1444 = !DILocation(line: 1018, column: 13, scope: !1271)
!1445 = !DILocation(line: 1018, column: 33, scope: !1271)
!1446 = !DILocation(line: 1019, column: 32, scope: !1271)
!1447 = !DILocation(line: 1019, column: 45, scope: !1271)
!1448 = !DILocation(line: 1019, column: 17, scope: !1271)
!1449 = !DILocation(line: 1019, column: 30, scope: !1271)
!1450 = !DILocation(line: 1019, column: 2, scope: !1271)
!1451 = !DILocation(line: 1019, column: 15, scope: !1271)
!1452 = !DILocation(line: 1024, column: 22, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !1271, file: !1, line: 1024, column: 6)
!1454 = !DILocation(line: 1024, column: 6, scope: !1453)
!1455 = !DILocation(line: 1024, column: 31, scope: !1453)
!1456 = !DILocation(line: 1024, column: 6, scope: !1271)
!1457 = !DILocation(line: 1026, column: 40, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1271, file: !1, line: 1026, column: 13)
!1459 = !DILocation(line: 1026, column: 30, scope: !1458)
!1460 = !DILocation(line: 1026, column: 63, scope: !1458)
!1461 = !DILocation(line: 1026, column: 13, scope: !1458)
!1462 = !DILocation(line: 1026, column: 71, scope: !1458)
!1463 = !DILocation(line: 1026, column: 13, scope: !1271)
!1464 = !DILocation(line: 1028, column: 20, scope: !1271)
!1465 = !DILocation(line: 1028, column: 27, scope: !1271)
!1466 = !DILocation(line: 1028, column: 11, scope: !1271)
!1467 = !DILocation(line: 1028, column: 18, scope: !1271)
!1468 = !DILocation(line: 1028, column: 9, scope: !1271)
!1469 = !DILocation(line: 1031, column: 24, scope: !1271)
!1470 = !DILocation(line: 1031, column: 18, scope: !1271)
!1471 = !DILocation(line: 690, column: 11, scope: !282)
!1472 = !DILocation(line: 1034, column: 8, scope: !1271)
!1473 = !DILocation(line: 1035, column: 14, scope: !1271)
!1474 = !DILocation(line: 1035, column: 12, scope: !1271)
!1475 = !DILocation(line: 1035, column: 2, scope: !1271)
!1476 = !DILocation(line: 1038, column: 18, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1478, file: !1, line: 1038, column: 10)
!1478 = distinct !DILexicalBlock(scope: !1271, file: !1, line: 1035, column: 22)
!1479 = !DILocation(line: 1036, column: 35, scope: !1478)
!1480 = !DILocation(line: 1036, column: 31, scope: !1478)
!1481 = !DILocation(line: 1038, column: 10, scope: !1478)
!1482 = !DILocation(line: 1039, column: 18, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1477, file: !1, line: 1038, column: 24)
!1484 = !DILocation(line: 1039, column: 16, scope: !1483)
!1485 = !DILocation(line: 1040, column: 30, scope: !1483)
!1486 = !DILocation(line: 1040, column: 18, scope: !1483)
!1487 = !DILocation(line: 1040, column: 3, scope: !1483)
!1488 = !DILocation(line: 1040, column: 16, scope: !1483)
!1489 = !DILocation(line: 1041, column: 30, scope: !1483)
!1490 = !DILocation(line: 1041, column: 18, scope: !1483)
!1491 = !DILocation(line: 1041, column: 3, scope: !1483)
!1492 = !DILocation(line: 1041, column: 16, scope: !1483)
!1493 = !DILocation(line: 1042, column: 6, scope: !1483)
!1494 = !DILocation(line: 1043, column: 3, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1477, file: !1, line: 1042, column: 13)
!1496 = !DILocation(line: 1048, column: 6, scope: !1478)
!1497 = !DILocation(line: 1049, column: 6, scope: !1478)
!1498 = !DILocation(line: 1046, column: 7, scope: !1478)
!1499 = !DILocation(line: 1047, column: 22, scope: !1478)
!1500 = !DILocation(line: 1047, column: 19, scope: !1478)
!1501 = !DILocation(line: 1048, column: 22, scope: !1478)
!1502 = !DILocation(line: 1048, column: 19, scope: !1478)
!1503 = !DILocation(line: 1049, column: 22, scope: !1478)
!1504 = !DILocation(line: 1049, column: 19, scope: !1478)
!1505 = !DILocation(line: 1051, column: 21, scope: !1478)
!1506 = !DILocation(line: 1052, column: 21, scope: !1478)
!1507 = !DILocation(line: 1056, column: 25, scope: !1478)
!1508 = !DILocation(line: 1056, column: 13, scope: !1478)
!1509 = !DILocation(line: 682, column: 9, scope: !282)
!1510 = !DILocation(line: 1058, column: 15, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1478, file: !1, line: 1058, column: 10)
!1512 = !DILocation(line: 1058, column: 10, scope: !1478)
!1513 = !DILocation(line: 1059, column: 21, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1511, file: !1, line: 1058, column: 21)
!1515 = !DILocation(line: 1059, column: 9, scope: !1514)
!1516 = !DILocation(line: 1060, column: 20, scope: !1514)
!1517 = !DILocation(line: 1061, column: 7, scope: !1514)
!1518 = !DILocation(line: 1062, column: 13, scope: !1514)
!1519 = !DILocation(line: 1063, column: 6, scope: !1514)
!1520 = !DILocation(line: 1064, column: 14, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1478, file: !1, line: 1064, column: 10)
!1522 = !DILocation(line: 1064, column: 10, scope: !1478)
!1523 = !DILocation(line: 1065, column: 13, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1521, file: !1, line: 1064, column: 19)
!1525 = !DILocation(line: 1070, column: 7, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1527, file: !1, line: 1066, column: 30)
!1527 = distinct !DILexicalBlock(scope: !1528, file: !1, line: 1066, column: 3)
!1528 = distinct !DILexicalBlock(scope: !1524, file: !1, line: 1066, column: 3)
!1529 = !DILocation(line: 1071, column: 7, scope: !1526)
!1530 = !DILocation(line: 1066, column: 3, scope: !1528)
!1531 = !DILocation(line: 1067, column: 19, scope: !1526)
!1532 = !DILocation(line: 1067, column: 27, scope: !1526)
!1533 = !DILocation(line: 1067, column: 7, scope: !1526)
!1534 = !DILocation(line: 1069, column: 36, scope: !1526)
!1535 = !DILocation(line: 1069, column: 20, scope: !1526)
!1536 = !DILocation(line: 1070, column: 36, scope: !1526)
!1537 = !DILocation(line: 1070, column: 20, scope: !1526)
!1538 = !DILocation(line: 1071, column: 36, scope: !1526)
!1539 = !DILocation(line: 1071, column: 20, scope: !1526)
!1540 = !DILocation(line: 1072, column: 13, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1526, file: !1, line: 1072, column: 11)
!1542 = !DILocation(line: 1072, column: 11, scope: !1526)
!1543 = !DILocation(line: 1076, column: 37, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1541, file: !1, line: 1072, column: 19)
!1545 = !DILocation(line: 1078, column: 37, scope: !1544)
!1546 = !DILocation(line: 1080, column: 37, scope: !1544)
!1547 = !DILocation(line: 1082, column: 13, scope: !1544)
!1548 = !DILocation(line: 1082, column: 26, scope: !1544)
!1549 = !DILocation(line: 1082, column: 8, scope: !1544)
!1550 = !DILocation(line: 1082, column: 11, scope: !1544)
!1551 = !DILocation(line: 1083, column: 13, scope: !1544)
!1552 = !DILocation(line: 1083, column: 26, scope: !1544)
!1553 = !DILocation(line: 1083, column: 8, scope: !1544)
!1554 = !DILocation(line: 1083, column: 11, scope: !1544)
!1555 = !DILocation(line: 1084, column: 13, scope: !1544)
!1556 = !DILocation(line: 1084, column: 26, scope: !1544)
!1557 = !DILocation(line: 1084, column: 8, scope: !1544)
!1558 = !DILocation(line: 1084, column: 11, scope: !1544)
!1559 = !DILocation(line: 1085, column: 7, scope: !1544)
!1560 = !DILocation(line: 1090, column: 16, scope: !1526)
!1561 = !DILocation(line: 1090, column: 29, scope: !1526)
!1562 = !DILocation(line: 1090, column: 11, scope: !1526)
!1563 = !DILocation(line: 1090, column: 14, scope: !1526)
!1564 = !DILocation(line: 1091, column: 16, scope: !1526)
!1565 = !DILocation(line: 1091, column: 29, scope: !1526)
!1566 = !DILocation(line: 1091, column: 11, scope: !1526)
!1567 = !DILocation(line: 1091, column: 14, scope: !1526)
!1568 = !DILocation(line: 1092, column: 16, scope: !1526)
!1569 = !DILocation(line: 1092, column: 29, scope: !1526)
!1570 = !DILocation(line: 1092, column: 11, scope: !1526)
!1571 = !DILocation(line: 1092, column: 14, scope: !1526)
!1572 = !DILocation(line: 1066, column: 25, scope: !1527)
!1573 = !DILocation(line: 1066, column: 17, scope: !1527)
!1574 = !DILocation(line: 1095, column: 12, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1521, file: !1, line: 1094, column: 13)
!1576 = !DILocation(line: 1095, column: 25, scope: !1575)
!1577 = !DILocation(line: 1095, column: 7, scope: !1575)
!1578 = !DILocation(line: 1095, column: 10, scope: !1575)
!1579 = !DILocation(line: 1096, column: 12, scope: !1575)
!1580 = !DILocation(line: 1096, column: 25, scope: !1575)
!1581 = !DILocation(line: 1096, column: 7, scope: !1575)
!1582 = !DILocation(line: 1096, column: 10, scope: !1575)
!1583 = !DILocation(line: 1097, column: 12, scope: !1575)
!1584 = !DILocation(line: 1097, column: 25, scope: !1575)
!1585 = !DILocation(line: 1097, column: 7, scope: !1575)
!1586 = !DILocation(line: 1097, column: 10, scope: !1575)
!1587 = !DILocation(line: 1099, column: 15, scope: !1478)
!1588 = !DILocation(line: 1100, column: 21, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1478, file: !1, line: 1100, column: 10)
!1590 = !DILocation(line: 1100, column: 10, scope: !1478)
!1591 = !DILocation(line: 1102, column: 16, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1593, file: !1, line: 1102, column: 7)
!1593 = distinct !DILexicalBlock(scope: !1589, file: !1, line: 1100, column: 26)
!1594 = !DILocation(line: 1102, column: 7, scope: !1593)
!1595 = !DILocation(line: 1103, column: 36, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1592, file: !1, line: 1102, column: 28)
!1597 = !DILocation(line: 1103, column: 17, scope: !1596)
!1598 = !DILocation(line: 1103, column: 41, scope: !1596)
!1599 = !DILocation(line: 1104, column: 3, scope: !1596)
!1600 = !DILocation(line: 1107, column: 28, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1589, file: !1, line: 1107, column: 17)
!1602 = !DILocation(line: 1107, column: 17, scope: !1589)
!1603 = !DILocation(line: 1109, column: 14, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1601, file: !1, line: 1107, column: 33)
!1605 = !DILocation(line: 1109, column: 34, scope: !1604)
!1606 = !DILocation(line: 1110, column: 6, scope: !1604)
!1607 = !DILocation(line: 1111, column: 51, scope: !1478)
!1608 = !DILocation(line: 1111, column: 49, scope: !1478)
!1609 = !DILocation(line: 1111, column: 34, scope: !1478)
!1610 = !DILocation(line: 1111, column: 19, scope: !1478)
!1611 = !DILocation(line: 1039, column: 30, scope: !1483)
!1612 = !DILocation(line: 1115, column: 1, scope: !282)
!1613 = !DILocation(line: 474, column: 34, scope: !344)
!1614 = !DILocation(line: 476, column: 5, scope: !344)
!1615 = !DILocation(line: 476, column: 45, scope: !344)
!1616 = !DILocation(line: 476, column: 18, scope: !344)
!1617 = !DILocation(line: 478, column: 5, scope: !344)
!1618 = !DILocation(line: 478, column: 14, scope: !344)
!1619 = !DILocation(line: 476, column: 32, scope: !344)
!1620 = !DILocation(line: 475, column: 9, scope: !344)
!1621 = !DILocation(line: 480, column: 5, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !344, file: !1, line: 480, column: 5)
!1623 = !DILocation(line: 482, column: 28, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1625, file: !1, line: 482, column: 2)
!1625 = distinct !DILexicalBlock(scope: !1626, file: !1, line: 482, column: 2)
!1626 = distinct !DILexicalBlock(scope: !1627, file: !1, line: 480, column: 37)
!1627 = distinct !DILexicalBlock(scope: !1622, file: !1, line: 480, column: 5)
!1628 = !DILocation(line: 482, column: 2, scope: !1625)
!1629 = !DILocation(line: 483, column: 29, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1624, file: !1, line: 482, column: 55)
!1631 = !DILocation(line: 487, column: 13, scope: !1626)
!1632 = !DILocation(line: 487, column: 2, scope: !1626)
!1633 = !DILocation(line: 483, column: 12, scope: !1630)
!1634 = !DILocation(line: 483, column: 27, scope: !1630)
!1635 = !DILocation(line: 483, column: 38, scope: !1630)
!1636 = !DILocation(line: 476, column: 65, scope: !344)
!1637 = !DILocation(line: 484, column: 27, scope: !1630)
!1638 = !DILocation(line: 484, column: 21, scope: !1630)
!1639 = !DILocation(line: 485, column: 10, scope: !1630)
!1640 = !DILocation(line: 488, column: 29, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1626, file: !1, line: 487, column: 19)
!1642 = !DILocation(line: 488, column: 19, scope: !1641)
!1643 = !DILocation(line: 476, column: 56, scope: !344)
!1644 = !DILocation(line: 488, column: 6, scope: !1641)
!1645 = !DILocation(line: 488, column: 23, scope: !1641)
!1646 = !DILocation(line: 489, column: 10, scope: !1641)
!1647 = !DILocation(line: 475, column: 12, scope: !344)
!1648 = !DILocation(line: 494, column: 17, scope: !344)
!1649 = !DILocation(line: 495, column: 12, scope: !344)
!1650 = !DILocation(line: 495, column: 32, scope: !344)
!1651 = !DILocation(line: 495, column: 5, scope: !344)
!1652 = !DILocation(line: 496, column: 13, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !344, file: !1, line: 495, column: 40)
!1654 = !DILocation(line: 497, column: 6, scope: !1653)
!1655 = !DILocation(line: 499, column: 39, scope: !344)
!1656 = !DILocation(line: 499, column: 24, scope: !344)
!1657 = !DILocation(line: 501, column: 1, scope: !344)
!1658 = !DILocation(line: 412, column: 26, scope: !360)
!1659 = !DILocation(line: 412, column: 37, scope: !360)
!1660 = !DILocation(line: 412, column: 54, scope: !360)
!1661 = !DILocation(line: 418, column: 35, scope: !360)
!1662 = !DILocation(line: 416, column: 21, scope: !360)
!1663 = !DILocation(line: 419, column: 26, scope: !360)
!1664 = !DILocation(line: 414, column: 18, scope: !360)
!1665 = !DILocation(line: 420, column: 16, scope: !360)
!1666 = !DILocation(line: 415, column: 9, scope: !360)
!1667 = !DILocation(line: 421, column: 30, scope: !360)
!1668 = !DILocation(line: 414, column: 23, scope: !360)
!1669 = !DILocation(line: 422, column: 24, scope: !360)
!1670 = !DILocation(line: 422, column: 5, scope: !360)
!1671 = !DILocation(line: 423, column: 23, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !360, file: !1, line: 422, column: 30)
!1673 = !DILocation(line: 423, column: 53, scope: !1672)
!1674 = !DILocation(line: 423, column: 37, scope: !1672)
!1675 = !DILocation(line: 423, column: 29, scope: !1672)
!1676 = !DILocation(line: 424, column: 25, scope: !1672)
!1677 = !DILocation(line: 424, column: 16, scope: !1672)
!1678 = !DILocation(line: 424, column: 10, scope: !1672)
!1679 = !DILocation(line: 424, column: 2, scope: !1672)
!1680 = !DILocation(line: 424, column: 14, scope: !1672)
!1681 = !DILocation(line: 427, column: 21, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !360, file: !1, line: 427, column: 9)
!1683 = !DILocation(line: 427, column: 9, scope: !360)
!1684 = !DILocation(line: 428, column: 23, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1682, file: !1, line: 427, column: 26)
!1686 = !DILocation(line: 428, column: 39, scope: !1685)
!1687 = !DILocation(line: 429, column: 11, scope: !1685)
!1688 = !DILocation(line: 430, column: 15, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1685, file: !1, line: 430, column: 6)
!1690 = !DILocation(line: 430, column: 6, scope: !1685)
!1691 = !DILocation(line: 431, column: 15, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1689, file: !1, line: 430, column: 21)
!1693 = !DILocation(line: 432, column: 29, scope: !1692)
!1694 = !DILocation(line: 432, column: 20, scope: !1692)
!1695 = !DILocation(line: 432, column: 14, scope: !1692)
!1696 = !DILocation(line: 432, column: 6, scope: !1692)
!1697 = !DILocation(line: 432, column: 18, scope: !1692)
!1698 = !DILocation(line: 433, column: 2, scope: !1692)
!1699 = !DILocation(line: 435, column: 12, scope: !360)
!1700 = !DILocation(line: 436, column: 12, scope: !360)
!1701 = !DILocation(line: 437, column: 12, scope: !360)
!1702 = !DILocation(line: 438, column: 17, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !360, file: !1, line: 438, column: 9)
!1704 = !DILocation(line: 438, column: 9, scope: !360)
!1705 = !DILocation(line: 439, column: 29, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1703, file: !1, line: 438, column: 21)
!1707 = !DILocation(line: 439, column: 23, scope: !1706)
!1708 = !DILocation(line: 439, column: 14, scope: !1706)
!1709 = !DILocation(line: 439, column: 2, scope: !1706)
!1710 = !DILocation(line: 439, column: 12, scope: !1706)
!1711 = !DILocation(line: 440, column: 5, scope: !1706)
!1712 = !DILocation(line: 441, column: 1, scope: !360)
!1713 = !DILocation(line: 518, column: 43, scope: !371)
!1714 = !DILocation(line: 522, column: 5, scope: !371)
!1715 = !DILocation(line: 522, column: 18, scope: !371)
!1716 = !DILocation(line: 524, column: 11, scope: !371)
!1717 = !DILocation(line: 522, column: 52, scope: !371)
!1718 = !DILocation(line: 522, column: 29, scope: !371)
!1719 = !DILocation(line: 526, column: 5, scope: !371)
!1720 = !DILocation(line: 527, column: 30, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !371, file: !1, line: 526, column: 8)
!1722 = !DILocation(line: 527, column: 20, scope: !1721)
!1723 = !DILocation(line: 527, column: 2, scope: !1721)
!1724 = !DILocation(line: 527, column: 24, scope: !1721)
!1725 = !DILocation(line: 528, column: 6, scope: !1721)
!1726 = !DILocation(line: 529, column: 18, scope: !371)
!1727 = !DILocation(line: 529, column: 5, scope: !1721)
!1728 = !DILocation(line: 532, column: 6, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1730, file: !1, line: 532, column: 6)
!1730 = distinct !DILexicalBlock(scope: !1731, file: !1, line: 531, column: 39)
!1731 = distinct !DILexicalBlock(scope: !1732, file: !1, line: 531, column: 5)
!1732 = distinct !DILexicalBlock(scope: !371, file: !1, line: 531, column: 5)
!1733 = !DILocation(line: 532, column: 17, scope: !1729)
!1734 = !DILocation(line: 532, column: 14, scope: !1729)
!1735 = !DILocation(line: 532, column: 6, scope: !1730)
!1736 = !DILocation(line: 539, column: 28, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1738, file: !1, line: 539, column: 2)
!1738 = distinct !DILexicalBlock(scope: !1730, file: !1, line: 539, column: 2)
!1739 = !DILocation(line: 539, column: 2, scope: !1738)
!1740 = !DILocation(line: 533, column: 14, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1729, file: !1, line: 532, column: 27)
!1742 = !DILocation(line: 533, column: 6, scope: !1741)
!1743 = !DILocation(line: 535, column: 6, scope: !1741)
!1744 = !DILocation(line: 544, column: 13, scope: !1730)
!1745 = !DILocation(line: 544, column: 2, scope: !1730)
!1746 = !DILocation(line: 540, column: 12, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1737, file: !1, line: 539, column: 55)
!1748 = !DILocation(line: 540, column: 27, scope: !1747)
!1749 = !DILocation(line: 540, column: 38, scope: !1747)
!1750 = !DILocation(line: 541, column: 27, scope: !1747)
!1751 = !DILocation(line: 541, column: 21, scope: !1747)
!1752 = !DILocation(line: 542, column: 10, scope: !1747)
!1753 = !DILocation(line: 545, column: 29, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1730, file: !1, line: 544, column: 19)
!1755 = !DILocation(line: 545, column: 19, scope: !1754)
!1756 = !DILocation(line: 522, column: 43, scope: !371)
!1757 = !DILocation(line: 545, column: 6, scope: !1754)
!1758 = !DILocation(line: 545, column: 23, scope: !1754)
!1759 = !DILocation(line: 546, column: 10, scope: !1754)
!1760 = !DILocation(line: 531, column: 5, scope: !1732)
!1761 = !DILocation(line: 531, column: 19, scope: !1731)
!1762 = !DILocation(line: 550, column: 37, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !371, file: !1, line: 550, column: 9)
!1764 = !DILocation(line: 550, column: 21, scope: !1763)
!1765 = !DILocation(line: 521, column: 9, scope: !371)
!1766 = !DILocation(line: 550, column: 9, scope: !371)
!1767 = !DILocation(line: 551, column: 16, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1769, file: !1, line: 551, column: 2)
!1769 = distinct !DILexicalBlock(scope: !1770, file: !1, line: 551, column: 2)
!1770 = distinct !DILexicalBlock(scope: !1763, file: !1, line: 550, column: 42)
!1771 = !DILocation(line: 551, column: 2, scope: !1769)
!1772 = !DILocation(line: 556, column: 30, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1774, file: !1, line: 556, column: 2)
!1774 = distinct !DILexicalBlock(scope: !1775, file: !1, line: 556, column: 2)
!1775 = distinct !DILexicalBlock(scope: !1763, file: !1, line: 555, column: 12)
!1776 = !DILocation(line: 556, column: 16, scope: !1773)
!1777 = !DILocation(line: 556, column: 2, scope: !1774)
!1778 = !DILocation(line: 552, column: 23, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1768, file: !1, line: 551, column: 37)
!1780 = !DILocation(line: 552, column: 6, scope: !1779)
!1781 = !DILocation(line: 554, column: 28, scope: !1770)
!1782 = !DILocation(line: 554, column: 2, scope: !1770)
!1783 = !DILocation(line: 555, column: 5, scope: !1770)
!1784 = !DILocation(line: 557, column: 23, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1773, file: !1, line: 556, column: 39)
!1786 = !DILocation(line: 557, column: 6, scope: !1785)
!1787 = !DILocation(line: 559, column: 47, scope: !1775)
!1788 = !DILocation(line: 559, column: 27, scope: !1775)
!1789 = !DILocation(line: 559, column: 52, scope: !1775)
!1790 = !DILocation(line: 559, column: 2, scope: !1775)
!1791 = !DILocation(line: 561, column: 1, scope: !371)
!1792 = !DILocation(line: 573, column: 28, scope: !385)
!1793 = !DILocation(line: 573, column: 39, scope: !385)
!1794 = !DILocation(line: 578, column: 19, scope: !385)
!1795 = !DILocation(line: 578, column: 35, scope: !385)
!1796 = !DILocation(line: 578, column: 9, scope: !385)
!1797 = !DILocation(line: 580, column: 35, scope: !385)
!1798 = !DILocation(line: 577, column: 21, scope: !385)
!1799 = !DILocation(line: 581, column: 11, scope: !385)
!1800 = !DILocation(line: 575, column: 9, scope: !385)
!1801 = !DILocation(line: 582, column: 31, scope: !385)
!1802 = !DILocation(line: 576, column: 18, scope: !385)
!1803 = !DILocation(line: 583, column: 31, scope: !385)
!1804 = !DILocation(line: 576, column: 28, scope: !385)
!1805 = !DILocation(line: 575, column: 14, scope: !385)
!1806 = !DILocation(line: 586, column: 24, scope: !385)
!1807 = !DILocation(line: 586, column: 5, scope: !385)
!1808 = !DILocation(line: 587, column: 24, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !385, file: !1, line: 586, column: 30)
!1810 = !DILocation(line: 587, column: 33, scope: !1809)
!1811 = !DILocation(line: 587, column: 31, scope: !1809)
!1812 = !DILocation(line: 588, column: 20, scope: !1809)
!1813 = !DILocation(line: 588, column: 49, scope: !1809)
!1814 = !DILocation(line: 588, column: 33, scope: !1809)
!1815 = !DILocation(line: 588, column: 6, scope: !1809)
!1816 = !DILocation(line: 591, column: 21, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !385, file: !1, line: 591, column: 9)
!1818 = !DILocation(line: 591, column: 9, scope: !385)
!1819 = !DILocation(line: 592, column: 15, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1821, file: !1, line: 592, column: 6)
!1821 = distinct !DILexicalBlock(scope: !1817, file: !1, line: 591, column: 26)
!1822 = !DILocation(line: 592, column: 6, scope: !1821)
!1823 = !DILocation(line: 593, column: 15, scope: !1824)
!1824 = distinct !DILexicalBlock(scope: !1820, file: !1, line: 592, column: 30)
!1825 = !DILocation(line: 594, column: 27, scope: !1824)
!1826 = !DILocation(line: 594, column: 43, scope: !1824)
!1827 = !DILocation(line: 594, column: 35, scope: !1824)
!1828 = !DILocation(line: 594, column: 33, scope: !1824)
!1829 = !DILocation(line: 595, column: 2, scope: !1824)
!1830 = !DILocation(line: 596, column: 11, scope: !1821)
!1831 = !DILocation(line: 597, column: 19, scope: !1821)
!1832 = !DILocation(line: 597, column: 38, scope: !1821)
!1833 = !DILocation(line: 597, column: 54, scope: !1821)
!1834 = !DILocation(line: 597, column: 32, scope: !1821)
!1835 = !DILocation(line: 597, column: 6, scope: !1821)
!1836 = !DILocation(line: 598, column: 5, scope: !1821)
!1837 = !DILocation(line: 599, column: 9, scope: !385)
!1838 = !DILocation(line: 600, column: 12, scope: !385)
!1839 = !DILocation(line: 601, column: 12, scope: !385)
!1840 = !DILocation(line: 602, column: 12, scope: !385)
!1841 = !DILocation(line: 603, column: 5, scope: !385)
!1842 = !DILocation(line: 617, column: 46, scope: !397)
!1843 = !DILocation(line: 619, column: 5, scope: !397)
!1844 = !DILocation(line: 619, column: 9, scope: !397)
!1845 = !DILocation(line: 622, column: 27, scope: !397)
!1846 = !DILocation(line: 622, column: 36, scope: !397)
!1847 = !DILocation(line: 622, column: 16, scope: !397)
!1848 = !DILocation(line: 622, column: 25, scope: !397)
!1849 = !DILocation(line: 622, column: 5, scope: !397)
!1850 = !DILocation(line: 622, column: 14, scope: !397)
!1851 = !DILocation(line: 620, column: 15, scope: !397)
!1852 = !DILocation(line: 624, column: 24, scope: !397)
!1853 = !DILocation(line: 624, column: 5, scope: !397)
!1854 = !DILocation(line: 625, column: 26, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !397, file: !1, line: 624, column: 29)
!1856 = !DILocation(line: 625, column: 2, scope: !1855)
!1857 = !DILocation(line: 625, column: 24, scope: !1855)
!1858 = !DILocation(line: 626, column: 14, scope: !1855)
!1859 = !DILocation(line: 617, column: 63, scope: !397)
!1860 = !DILocation(line: 628, column: 21, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !397, file: !1, line: 628, column: 9)
!1862 = !DILocation(line: 628, column: 9, scope: !397)
!1863 = !DILocation(line: 629, column: 26, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1861, file: !1, line: 628, column: 26)
!1865 = !DILocation(line: 629, column: 20, scope: !1864)
!1866 = !DILocation(line: 629, column: 2, scope: !1864)
!1867 = !DILocation(line: 629, column: 24, scope: !1864)
!1868 = !DILocation(line: 630, column: 5, scope: !1864)
!1869 = !DILocation(line: 620, column: 9, scope: !397)
!1870 = !DILocation(line: 633, column: 29, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1872, file: !1, line: 633, column: 2)
!1872 = distinct !DILexicalBlock(scope: !1873, file: !1, line: 633, column: 2)
!1873 = distinct !DILexicalBlock(scope: !1874, file: !1, line: 631, column: 41)
!1874 = distinct !DILexicalBlock(scope: !1875, file: !1, line: 631, column: 5)
!1875 = distinct !DILexicalBlock(scope: !397, file: !1, line: 631, column: 5)
!1876 = !DILocation(line: 631, column: 5, scope: !1875)
!1877 = !DILocation(line: 633, column: 2, scope: !1872)
!1878 = !DILocation(line: 635, column: 16, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1871, file: !1, line: 633, column: 39)
!1880 = !DILocation(line: 634, column: 17, scope: !1879)
!1881 = !DILocation(line: 634, column: 25, scope: !1879)
!1882 = !DILocation(line: 634, column: 23, scope: !1879)
!1883 = !DILocation(line: 620, column: 32, scope: !397)
!1884 = !DILocation(line: 635, column: 14, scope: !1879)
!1885 = !DILocation(line: 620, column: 29, scope: !397)
!1886 = !DILocation(line: 636, column: 15, scope: !1879)
!1887 = !DILocation(line: 637, column: 20, scope: !1879)
!1888 = !DILocation(line: 637, column: 16, scope: !1879)
!1889 = !DILocation(line: 639, column: 2, scope: !1873)
!1890 = !DILocation(line: 639, column: 10, scope: !1873)
!1891 = !DILocation(line: 631, column: 31, scope: !1874)
!1892 = !DILocation(line: 641, column: 15, scope: !397)
!1893 = !DILocation(line: 641, column: 36, scope: !397)
!1894 = !DILocation(line: 641, column: 24, scope: !397)
!1895 = !DILocation(line: 641, column: 45, scope: !397)
!1896 = !DILocation(line: 641, column: 54, scope: !397)
!1897 = !DILocation(line: 641, column: 42, scope: !397)
!1898 = !DILocation(line: 641, column: 73, scope: !397)
!1899 = !DILocation(line: 641, column: 61, scope: !397)
!1900 = !DILocation(line: 641, column: 13, scope: !397)
!1901 = !DILocation(line: 642, column: 1, scope: !397)
