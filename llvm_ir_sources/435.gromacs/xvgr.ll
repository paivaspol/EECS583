; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/xvgr.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct._RuneLocale = type { [8 x i8], [32 x i8], i32 (i8*, i64, i8**)*, i32 (i32, i8*, i64, i8**)*, i32, [256 x i32], [256 x i32], [256 x i32], %struct._RuneRange, %struct._RuneRange, %struct._RuneRange, i8*, i32, i32, %struct._RuneCharClass* }
%struct._RuneRange = type { i32, %struct._RuneEntry* }
%struct._RuneEntry = type { i32, i32, i32, i32* }
%struct._RuneCharClass = type { [14 x i8], i32 }
%union.anon = type { float }
%union.anon.0 = type { double }
%union.anon.1 = type { x86_fp80 }
%struct.__float2 = type { float, float }
%struct.__double2 = type { double, double }

@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str1 = private unnamed_addr constant [31 x i8] c"# This file was created by %s\0A\00", align 1
@.str2 = private unnamed_addr constant [35 x i8] c"# which is part of G R O M A C S:\0A\00", align 1
@.str3 = private unnamed_addr constant [6 x i8] c"# %s\0A\00", align 1
@.str4 = private unnamed_addr constant [27 x i8] c"# All this happened at: %s\00", align 1
@.str5 = private unnamed_addr constant [3 x i8] c"#\0A\00", align 1
@.str6 = private unnamed_addr constant [17 x i8] c"@    title \22%s\22\0A\00", align 1
@.str7 = private unnamed_addr constant [24 x i8] c"@    xaxis  label \22%s\22\0A\00", align 1
@.str8 = private unnamed_addr constant [24 x i8] c"@    yaxis  label \22%s\22\0A\00", align 1
@.str10 = private unnamed_addr constant [10 x i8] c"@TYPE xy\0A\00", align 1
@.str11 = private unnamed_addr constant [23 x i8] c"@ view %g, %g, %g, %g\0A\00", align 1
@.str12 = private unnamed_addr constant [65 x i8] c"@ world xmin %g\0A@ world ymin %g\0A@ world xmax %g\0A@ world ymax %g\0A\00", align 1
@.str13 = private unnamed_addr constant [13 x i8] c"@ legend on\0A\00", align 1
@.str14 = private unnamed_addr constant [17 x i8] c"@ legend box on\0A\00", align 1
@.str15 = private unnamed_addr constant [23 x i8] c"@ legend loctype view\0A\00", align 1
@.str16 = private unnamed_addr constant [17 x i8] c"@ legend %g, %g\0A\00", align 1
@.str17 = private unnamed_addr constant [20 x i8] c"@ legend length %d\0A\00", align 1
@.str19 = private unnamed_addr constant [19 x i8] c"@ s%d legend \22%s\22\0A\00", align 1
@.str20 = private unnamed_addr constant [14 x i8] c"@    with g0\0A\00", align 1
@.str21 = private unnamed_addr constant [23 x i8] c"@    s%d linestyle %d\0A\00", align 1
@.str22 = private unnamed_addr constant [19 x i8] c"@    s%d color %d\0A\00", align 1
@.str23 = private unnamed_addr constant [11 x i8] c"@with box\0A\00", align 1
@.str24 = private unnamed_addr constant [13 x i8] c"@    box on\0A\00", align 1
@.str25 = private unnamed_addr constant [21 x i8] c"@    box loctype %s\0A\00", align 1
@LocTypeStr = internal unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([5 x i8]* @.str48, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str49, i32 0, i32 0)], align 16
@.str26 = private unnamed_addr constant [25 x i8] c"@    box %g, %g, %g, %g\0A\00", align 1
@.str27 = private unnamed_addr constant [23 x i8] c"@    box linestyle %d\0A\00", align 1
@.str28 = private unnamed_addr constant [23 x i8] c"@    box linewidth %d\0A\00", align 1
@.str29 = private unnamed_addr constant [19 x i8] c"@    box color %d\0A\00", align 1
@.str30 = private unnamed_addr constant [18 x i8] c"@    box fill %s\0A\00", align 1
@BoxFillStr = internal unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([5 x i8]* @.str50, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8]* @.str51, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8]* @.str52, i32 0, i32 0)], align 16
@.str31 = private unnamed_addr constant [24 x i8] c"@    box fill color %d\0A\00", align 1
@.str32 = private unnamed_addr constant [26 x i8] c"@    box fill pattern %d\0A\00", align 1
@.str33 = private unnamed_addr constant [10 x i8] c"@box def\0A\00", align 1
@.str34 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str35 = private unnamed_addr constant [3 x i8] c"yy\00", align 1
@.str36 = private unnamed_addr constant [64 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/xvgr.c\00", align 1
@.str37 = private unnamed_addr constant [4 x i8] c"fmt\00", align 1
@.str38 = private unnamed_addr constant [5 x i8] c"base\00", align 1
@.str39 = private unnamed_addr constant [6 x i8] c"yy[k]\00", align 1
@.str40 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str41 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@__stderrp = external global %struct.__sFILE*
@.str42 = private unnamed_addr constant [39 x i8] c"Only %d columns on line %d in file %s\0A\00", align 1
@.str43 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str44 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str45 = private unnamed_addr constant [9 x i8] c"  %12.5e\00", align 1
@.str48 = private unnamed_addr constant [5 x i8] c"view\00", align 1
@.str49 = private unnamed_addr constant [6 x i8] c"world\00", align 1
@.str50 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str51 = private unnamed_addr constant [6 x i8] c"color\00", align 1
@.str52 = private unnamed_addr constant [8 x i8] c"pattern\00", align 1
@fgets3.ptr = internal unnamed_addr global i8* null, align 8
@fgets3.len = internal unnamed_addr global i32 4096, align 4
@.str53 = private unnamed_addr constant [4 x i8] c"ptr\00", align 1
@_DefaultRuneLocale = external global %struct._RuneLocale

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define i32 @__sputc(i32 %_c, %struct.__sFILE* %_p) #0 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !73, metadata !382), !dbg !383
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %_p, i64 0, metadata !74, metadata !382), !dbg !384
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2, !dbg !385
  %2 = load i32* %1, align 4, !dbg !387, !tbaa !388
  %3 = add nsw i32 %2, -1, !dbg !387
  store i32 %3, i32* %1, align 4, !dbg !387, !tbaa !388
  %4 = icmp sgt i32 %2, 0, !dbg !397
  br i1 %4, label %._crit_edge, label %5, !dbg !398

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255, !dbg !399
  br label %10, !dbg !398

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6, !dbg !400
  %7 = load i32* %6, align 4, !dbg !400, !tbaa !401
  %8 = icmp sle i32 %2, %7, !dbg !402
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10, !dbg !403
  %or.cond = or i1 %9, %8, !dbg !404
  br i1 %or.cond, label %15, label %10, !dbg !404

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ], !dbg !399
  %11 = trunc i32 %_c to i8, !dbg !405
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0, !dbg !406
  %13 = load i8** %12, align 8, !dbg !407, !tbaa !408
  %14 = getelementptr inbounds i8* %13, i64 1, !dbg !407
  store i8* %14, i8** %12, align 8, !dbg !407, !tbaa !408
  store i8 %11, i8* %13, align 1, !dbg !409, !tbaa !410
  br label %17, !dbg !411

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #9, !dbg !412
  br label %17, !dbg !413

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0, !dbg !414
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #2

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #3 {
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !80, metadata !382), !dbg !415
  %1 = icmp sgt i32 %__signo, 32, !dbg !416
  br i1 %1, label %5, label %2, !dbg !417

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !418
  %4 = shl i32 1, %3, !dbg !419
  br label %5, !dbg !417

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !417
  ret i32 %6, !dbg !420
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinitef(float %__x) #3 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !87, metadata !382), !dbg !421
  %1 = fcmp ord float %__x, 0.000000e+00, !dbg !422
  br i1 %1, label %2, label %5, !dbg !423

; <label>:2                                       ; preds = %0
  %3 = tail call float @llvm.fabs.f32(float %__x) #10, !dbg !424
  %4 = fcmp une float %3, 0x7FF0000000000000, !dbg !425
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32, !dbg !423
  ret i32 %7, !dbg !426
}

; Function Attrs: nounwind readnone
declare float @llvm.fabs.f32(float) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinited(double %__x) #3 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !93, metadata !382), !dbg !427
  %1 = fcmp ord double %__x, 0.000000e+00, !dbg !428
  br i1 %1, label %2, label %5, !dbg !429

; <label>:2                                       ; preds = %0
  %3 = tail call double @llvm.fabs.f64(double %__x) #10, !dbg !430
  %4 = fcmp une double %3, 0x7FF0000000000000, !dbg !431
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32, !dbg !429
  ret i32 %7, !dbg !432
}

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinitel(x86_fp80 %__x) #3 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !99, metadata !382), !dbg !433
  %1 = fcmp ord x86_fp80 %__x, 0xK00000000000000000000, !dbg !434
  br i1 %1, label %2, label %5, !dbg !435

; <label>:2                                       ; preds = %0
  %3 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #10, !dbg !436
  %4 = fcmp une x86_fp80 %3, 0xK7FFF8000000000000000, !dbg !437
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32, !dbg !435
  ret i32 %7, !dbg !438
}

; Function Attrs: nounwind readnone
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinff(float %__x) #3 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !102, metadata !382), !dbg !439
  %1 = tail call float @llvm.fabs.f32(float %__x) #10, !dbg !440
  %2 = fcmp oeq float %1, 0x7FF0000000000000, !dbg !441
  %3 = zext i1 %2 to i32, !dbg !441
  ret i32 %3, !dbg !442
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfd(double %__x) #3 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !105, metadata !382), !dbg !443
  %1 = tail call double @llvm.fabs.f64(double %__x) #10, !dbg !444
  %2 = fcmp oeq double %1, 0x7FF0000000000000, !dbg !445
  %3 = zext i1 %2 to i32, !dbg !445
  ret i32 %3, !dbg !446
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfl(x86_fp80 %__x) #3 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !108, metadata !382), !dbg !447
  %1 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #10, !dbg !448
  %2 = fcmp oeq x86_fp80 %1, 0xK7FFF8000000000000000, !dbg !449
  %3 = zext i1 %2 to i32, !dbg !449
  ret i32 %3, !dbg !450
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnanf(float %__x) #3 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !111, metadata !382), !dbg !451
  %1 = fcmp uno float %__x, 0.000000e+00, !dbg !452
  %2 = zext i1 %1 to i32, !dbg !452
  ret i32 %2, !dbg !453
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnand(double %__x) #3 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !114, metadata !382), !dbg !454
  %1 = fcmp uno double %__x, 0.000000e+00, !dbg !455
  %2 = zext i1 %1 to i32, !dbg !455
  ret i32 %2, !dbg !456
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnanl(x86_fp80 %__x) #3 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !117, metadata !382), !dbg !457
  %1 = fcmp uno x86_fp80 %__x, 0xK00000000000000000000, !dbg !458
  %2 = zext i1 %1 to i32, !dbg !458
  ret i32 %2, !dbg !459
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitf(float %__x) #3 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !120, metadata !382), !dbg !460
  tail call void @llvm.dbg.declare(metadata %union.anon* undef, metadata !121, metadata !382), !dbg !461
  %1 = bitcast float %__x to i32, !dbg !462
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !121, metadata !382), !dbg !461
  %2 = lshr i32 %1, 31, !dbg !463
  ret i32 %2, !dbg !464
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitd(double %__x) #3 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !129, metadata !382), !dbg !465
  tail call void @llvm.dbg.declare(metadata %union.anon.0* undef, metadata !130, metadata !382), !dbg !466
  %1 = bitcast double %__x to i64, !dbg !467
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !130, metadata !382), !dbg !466
  %2 = lshr i64 %1, 63, !dbg !468
  %3 = trunc i64 %2 to i32, !dbg !469
  ret i32 %3, !dbg !470
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitl(x86_fp80 %__x) #3 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !138, metadata !382), !dbg !471
  tail call void @llvm.dbg.declare(metadata %union.anon.1* undef, metadata !139, metadata !382), !dbg !472
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !139, metadata !382), !dbg !472
  %1 = bitcast x86_fp80 %__x to i80, !dbg !473
  %2 = lshr i80 %1, 79, !dbg !473
  %3 = trunc i80 %2 to i32, !dbg !474
  ret i32 %3, !dbg !475
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormalf(float %__x) #3 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !151, metadata !382), !dbg !476
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !87, metadata !382) #8, !dbg !477
  %1 = fcmp ord float %__x, 0.000000e+00, !dbg !479
  %2 = tail call float @llvm.fabs.f32(float %__x) #1
  %3 = fcmp une float %2, 0x7FF0000000000000, !dbg !480
  %or.cond = and i1 %1, %3, !dbg !481
  br i1 %or.cond, label %4, label %.critedge, !dbg !481

; <label>:4                                       ; preds = %0
  %5 = fcmp oge float %2, 0x3810000000000000, !dbg !482
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32, !dbg !483
  ret i32 %7, !dbg !484
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormald(double %__x) #3 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !154, metadata !382), !dbg !485
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !93, metadata !382) #8, !dbg !486
  %1 = fcmp ord double %__x, 0.000000e+00, !dbg !488
  %2 = tail call double @llvm.fabs.f64(double %__x) #1
  %3 = fcmp une double %2, 0x7FF0000000000000, !dbg !489
  %or.cond = and i1 %1, %3, !dbg !490
  br i1 %or.cond, label %4, label %.critedge, !dbg !490

; <label>:4                                       ; preds = %0
  %5 = fcmp oge double %2, 0x10000000000000, !dbg !491
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32, !dbg !492
  ret i32 %7, !dbg !493
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormall(x86_fp80 %__x) #3 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !157, metadata !382), !dbg !494
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !99, metadata !382) #8, !dbg !495
  %1 = fcmp ord x86_fp80 %__x, 0xK00000000000000000000, !dbg !497
  %2 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #1
  %3 = fcmp une x86_fp80 %2, 0xK7FFF8000000000000000, !dbg !498
  %or.cond = and i1 %1, %3, !dbg !499
  br i1 %or.cond, label %4, label %.critedge, !dbg !499

; <label>:4                                       ; preds = %0
  %5 = fcmp oge x86_fp80 %2, 0xK00018000000000000000, !dbg !500
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32, !dbg !501
  ret i32 %7, !dbg !502
}

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincosf(float %__x, float* nocapture %__sinp, float* nocapture %__cosp) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !163, metadata !382), !dbg !503
  tail call void @llvm.dbg.value(metadata float* %__sinp, i64 0, metadata !164, metadata !382), !dbg !504
  tail call void @llvm.dbg.value(metadata float* %__cosp, i64 0, metadata !165, metadata !382), !dbg !505
  tail call void @llvm.dbg.declare(metadata %struct.__float2* undef, metadata !166, metadata !382), !dbg !506
  %1 = tail call <2 x float> @__sincosf_stret(float %__x) #9, !dbg !507
  tail call void @llvm.dbg.value(metadata <2 x float> %1, i64 0, metadata !166, metadata !382), !dbg !506
  %2 = extractelement <2 x float> %1, i32 0, !dbg !508
  store float %2, float* %__sinp, align 4, !dbg !509, !tbaa !510
  %3 = extractelement <2 x float> %1, i32 1, !dbg !512
  store float %3, float* %__cosp, align 4, !dbg !513, !tbaa !510
  ret void, !dbg !514
}

; Function Attrs: optsize
declare <2 x float> @__sincosf_stret(float) #2

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincos(double %__x, double* nocapture %__sinp, double* nocapture %__cosp) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !177, metadata !382), !dbg !515
  tail call void @llvm.dbg.value(metadata double* %__sinp, i64 0, metadata !178, metadata !382), !dbg !516
  tail call void @llvm.dbg.value(metadata double* %__cosp, i64 0, metadata !179, metadata !382), !dbg !517
  tail call void @llvm.dbg.declare(metadata %struct.__double2* undef, metadata !180, metadata !382), !dbg !518
  %1 = tail call { double, double } @__sincos_stret(double %__x) #9, !dbg !519
  %2 = extractvalue { double, double } %1, 0, !dbg !519
  tail call void @llvm.dbg.value(metadata double %2, i64 0, metadata !180, metadata !520), !dbg !518
  %3 = extractvalue { double, double } %1, 1, !dbg !519
  tail call void @llvm.dbg.value(metadata double %3, i64 0, metadata !180, metadata !521), !dbg !518
  store double %2, double* %__sinp, align 8, !dbg !522, !tbaa !523
  store double %3, double* %__cosp, align 8, !dbg !525, !tbaa !523
  ret void, !dbg !526
}

; Function Attrs: optsize
declare { double, double } @__sincos_stret(double) #2

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincospif(float %__x, float* nocapture %__sinp, float* nocapture %__cosp) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !188, metadata !382), !dbg !527
  tail call void @llvm.dbg.value(metadata float* %__sinp, i64 0, metadata !189, metadata !382), !dbg !528
  tail call void @llvm.dbg.value(metadata float* %__cosp, i64 0, metadata !190, metadata !382), !dbg !529
  tail call void @llvm.dbg.declare(metadata %struct.__float2* undef, metadata !191, metadata !382), !dbg !530
  %1 = tail call <2 x float> @__sincospif_stret(float %__x) #9, !dbg !531
  tail call void @llvm.dbg.value(metadata <2 x float> %1, i64 0, metadata !191, metadata !382), !dbg !530
  %2 = extractelement <2 x float> %1, i32 0, !dbg !532
  store float %2, float* %__sinp, align 4, !dbg !533, !tbaa !510
  %3 = extractelement <2 x float> %1, i32 1, !dbg !534
  store float %3, float* %__cosp, align 4, !dbg !535, !tbaa !510
  ret void, !dbg !536
}

; Function Attrs: optsize
declare <2 x float> @__sincospif_stret(float) #2

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincospi(double %__x, double* nocapture %__sinp, double* nocapture %__cosp) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !194, metadata !382), !dbg !537
  tail call void @llvm.dbg.value(metadata double* %__sinp, i64 0, metadata !195, metadata !382), !dbg !538
  tail call void @llvm.dbg.value(metadata double* %__cosp, i64 0, metadata !196, metadata !382), !dbg !539
  tail call void @llvm.dbg.declare(metadata %struct.__double2* undef, metadata !197, metadata !382), !dbg !540
  %1 = tail call { double, double } @__sincospi_stret(double %__x) #9, !dbg !541
  %2 = extractvalue { double, double } %1, 0, !dbg !541
  tail call void @llvm.dbg.value(metadata double %2, i64 0, metadata !197, metadata !520), !dbg !540
  %3 = extractvalue { double, double } %1, 1, !dbg !541
  tail call void @llvm.dbg.value(metadata double %3, i64 0, metadata !197, metadata !521), !dbg !540
  store double %2, double* %__sinp, align 8, !dbg !542, !tbaa !523
  store double %3, double* %__cosp, align 8, !dbg !543, !tbaa !523
  ret void, !dbg !544
}

; Function Attrs: optsize
declare { double, double } @__sincospi_stret(double) #2

; Function Attrs: nounwind optsize ssp uwtable
define %struct.__sFILE* @xvgropen(i8* %fn, i8* %title, i8* %xaxis, i8* %yaxis) #4 {
  %t = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata i8* %fn, i64 0, metadata !202, metadata !382), !dbg !545
  tail call void @llvm.dbg.value(metadata i8* %title, i64 0, metadata !203, metadata !382), !dbg !546
  tail call void @llvm.dbg.value(metadata i8* %xaxis, i64 0, metadata !204, metadata !382), !dbg !547
  tail call void @llvm.dbg.value(metadata i8* %yaxis, i64 0, metadata !205, metadata !382), !dbg !548
  %1 = tail call %struct.__sFILE* @ffopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0)) #9, !dbg !549
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %1, i64 0, metadata !206, metadata !382), !dbg !550
  %2 = tail call i8* @Program() #9, !dbg !551
  %3 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([31 x i8]* @.str1, i64 0, i64 0), i8* %2) #9, !dbg !552
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([35 x i8]* @.str2, i64 0, i64 0), i64 34, i64 1, %struct.__sFILE* %1), !dbg !553
  %5 = tail call i8* @bromacs() #9, !dbg !554
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* %5) #9, !dbg !555
  tail call void @llvm.dbg.value(metadata i64* %t, i64 0, metadata !207, metadata !382), !dbg !556
  %7 = call i64 @time(i64* %t) #9, !dbg !557
  call void @llvm.dbg.value(metadata i64* %t, i64 0, metadata !207, metadata !382), !dbg !556
  %8 = call i8* @ctime(i64* %t) #9, !dbg !558
  %9 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([27 x i8]* @.str4, i64 0, i64 0), i8* %8) #9, !dbg !559
  %10 = call i64 @fwrite(i8* getelementptr inbounds ([3 x i8]* @.str5, i64 0, i64 0), i64 2, i64 1, %struct.__sFILE* %1), !dbg !560
  %11 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([17 x i8]* @.str6, i64 0, i64 0), i8* %title) #9, !dbg !561
  %12 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([24 x i8]* @.str7, i64 0, i64 0), i8* %xaxis) #9, !dbg !562
  %13 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([24 x i8]* @.str8, i64 0, i64 0), i8* %yaxis) #9, !dbg !563
  %14 = call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str10, i64 0, i64 0), i64 9, i64 1, %struct.__sFILE* %1), !dbg !564
  ret %struct.__sFILE* %1, !dbg !566
}

; Function Attrs: optsize
declare %struct.__sFILE* @ffopen(i8*, i8*) #2

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #5

; Function Attrs: optsize
declare i8* @Program() #2

; Function Attrs: optsize
declare i8* @bromacs() #2

; Function Attrs: optsize
declare i64 @time(i64*) #2

; Function Attrs: optsize
declare i8* @ctime(i64*) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @xvgr_view(%struct.__sFILE* nocapture %out, float %xmin, float %ymin, float %xmax, float %ymax) #4 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %out, i64 0, metadata !218, metadata !382), !dbg !567
  tail call void @llvm.dbg.value(metadata float %xmin, i64 0, metadata !219, metadata !382), !dbg !568
  tail call void @llvm.dbg.value(metadata float %ymin, i64 0, metadata !220, metadata !382), !dbg !569
  tail call void @llvm.dbg.value(metadata float %xmax, i64 0, metadata !221, metadata !382), !dbg !570
  tail call void @llvm.dbg.value(metadata float %ymax, i64 0, metadata !222, metadata !382), !dbg !571
  %1 = fpext float %xmin to double, !dbg !572
  %2 = fpext float %ymin to double, !dbg !573
  %3 = fpext float %xmax to double, !dbg !574
  %4 = fpext float %ymax to double, !dbg !575
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([23 x i8]* @.str11, i64 0, i64 0), double %1, double %2, double %3, double %4) #9, !dbg !576
  ret void, !dbg !577
}

; Function Attrs: nounwind optsize ssp uwtable
define void @xvgr_world(%struct.__sFILE* nocapture %out, float %xmin, float %ymin, float %xmax, float %ymax) #4 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %out, i64 0, metadata !225, metadata !382), !dbg !578
  tail call void @llvm.dbg.value(metadata float %xmin, i64 0, metadata !226, metadata !382), !dbg !579
  tail call void @llvm.dbg.value(metadata float %ymin, i64 0, metadata !227, metadata !382), !dbg !580
  tail call void @llvm.dbg.value(metadata float %xmax, i64 0, metadata !228, metadata !382), !dbg !581
  tail call void @llvm.dbg.value(metadata float %ymax, i64 0, metadata !229, metadata !382), !dbg !582
  %1 = fpext float %xmin to double, !dbg !583
  %2 = fpext float %ymin to double, !dbg !584
  %3 = fpext float %xmax to double, !dbg !585
  %4 = fpext float %ymax to double, !dbg !586
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([65 x i8]* @.str12, i64 0, i64 0), double %1, double %2, double %3, double %4) #9, !dbg !587
  ret void, !dbg !588
}

; Function Attrs: nounwind optsize ssp uwtable
define void @xvgr_legend(%struct.__sFILE* nocapture %out, i32 %nsets, i8** nocapture readonly %setname) #4 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %out, i64 0, metadata !235, metadata !382), !dbg !589
  tail call void @llvm.dbg.value(metadata i32 %nsets, i64 0, metadata !236, metadata !382), !dbg !590
  tail call void @llvm.dbg.value(metadata i8** %setname, i64 0, metadata !237, metadata !382), !dbg !591
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %out, i64 0, metadata !218, metadata !382) #8, !dbg !592
  tail call void @llvm.dbg.value(metadata float 0x3FC3333340000000, i64 0, metadata !219, metadata !382) #8, !dbg !594
  tail call void @llvm.dbg.value(metadata float 0x3FC3333340000000, i64 0, metadata !220, metadata !382) #8, !dbg !595
  tail call void @llvm.dbg.value(metadata float 7.500000e-01, i64 0, metadata !221, metadata !382) #8, !dbg !596
  tail call void @llvm.dbg.value(metadata float 0x3FEB333340000000, i64 0, metadata !222, metadata !382) #8, !dbg !597
  %1 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([23 x i8]* @.str11, i64 0, i64 0), double 0x3FC3333340000000, double 0x3FC3333340000000, double 7.500000e-01, double 0x3FEB333340000000) #9, !dbg !598
  %2 = tail call i64 @fwrite(i8* getelementptr inbounds ([13 x i8]* @.str13, i64 0, i64 0), i64 12, i64 1, %struct.__sFILE* %out), !dbg !599
  %3 = tail call i64 @fwrite(i8* getelementptr inbounds ([17 x i8]* @.str14, i64 0, i64 0), i64 16, i64 1, %struct.__sFILE* %out), !dbg !600
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([23 x i8]* @.str15, i64 0, i64 0), i64 22, i64 1, %struct.__sFILE* %out), !dbg !601
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([17 x i8]* @.str16, i64 0, i64 0), double 7.800000e-01, double 8.000000e-01) #9, !dbg !602
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([20 x i8]* @.str17, i64 0, i64 0), i32 2) #9, !dbg !603
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !238, metadata !382), !dbg !604
  %7 = icmp sgt i32 %nsets, 0, !dbg !605
  br i1 %7, label %.lr.ph, label %._crit_edge, !dbg !608

.lr.ph:                                           ; preds = %0
  %8 = add i32 %nsets, -1, !dbg !608
  br label %9, !dbg !608

; <label>:9                                       ; preds = %._crit_edge2, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %._crit_edge2 ]
  %10 = getelementptr inbounds i8** %setname, i64 %indvars.iv, !dbg !609
  %11 = load i8** %10, align 8, !dbg !609, !tbaa !611
  %12 = icmp eq i8* %11, null, !dbg !609
  %.pre = trunc i64 %indvars.iv to i32, !dbg !608
  br i1 %12, label %._crit_edge2, label %13, !dbg !612

; <label>:13                                      ; preds = %9
  %14 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([19 x i8]* @.str19, i64 0, i64 0), i32 %.pre, i8* %11) #9, !dbg !613
  br label %._crit_edge2

._crit_edge2:                                     ; preds = %9, %13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !608
  %exitcond = icmp eq i32 %.pre, %8, !dbg !608
  br i1 %exitcond, label %._crit_edge, label %9, !dbg !608

._crit_edge:                                      ; preds = %._crit_edge2, %0
  ret void, !dbg !616
}

; Function Attrs: nounwind optsize ssp uwtable
define void @xvgr_line_props(%struct.__sFILE* nocapture %out, i32 %NrSet, i32 %LineStyle, i32 %LineColor) #4 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %out, i64 0, metadata !243, metadata !382), !dbg !617
  tail call void @llvm.dbg.value(metadata i32 %NrSet, i64 0, metadata !244, metadata !382), !dbg !618
  tail call void @llvm.dbg.value(metadata i32 %LineStyle, i64 0, metadata !245, metadata !382), !dbg !619
  tail call void @llvm.dbg.value(metadata i32 %LineColor, i64 0, metadata !246, metadata !382), !dbg !620
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([14 x i8]* @.str20, i64 0, i64 0), i64 13, i64 1, %struct.__sFILE* %out), !dbg !621
  %2 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([23 x i8]* @.str21, i64 0, i64 0), i32 %NrSet, i32 %LineStyle) #9, !dbg !622
  %3 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([19 x i8]* @.str22, i64 0, i64 0), i32 %NrSet, i32 %LineColor) #9, !dbg !623
  ret void, !dbg !624
}

; Function Attrs: nounwind optsize ssp uwtable
define void @xvgr_box(%struct.__sFILE* nocapture %out, i32 %LocType, float %xmin, float %ymin, float %xmax, float %ymax, i32 %LineStyle, i32 %LineWidth, i32 %LineColor, i32 %BoxFill, i32 %BoxColor, i32 %BoxPattern) #4 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %out, i64 0, metadata !251, metadata !382), !dbg !625
  tail call void @llvm.dbg.value(metadata i32 %LocType, i64 0, metadata !252, metadata !382), !dbg !626
  tail call void @llvm.dbg.value(metadata float %xmin, i64 0, metadata !253, metadata !382), !dbg !627
  tail call void @llvm.dbg.value(metadata float %ymin, i64 0, metadata !254, metadata !382), !dbg !628
  tail call void @llvm.dbg.value(metadata float %xmax, i64 0, metadata !255, metadata !382), !dbg !629
  tail call void @llvm.dbg.value(metadata float %ymax, i64 0, metadata !256, metadata !382), !dbg !630
  tail call void @llvm.dbg.value(metadata i32 %LineStyle, i64 0, metadata !257, metadata !382), !dbg !631
  tail call void @llvm.dbg.value(metadata i32 %LineWidth, i64 0, metadata !258, metadata !382), !dbg !632
  tail call void @llvm.dbg.value(metadata i32 %LineColor, i64 0, metadata !259, metadata !382), !dbg !633
  tail call void @llvm.dbg.value(metadata i32 %BoxFill, i64 0, metadata !260, metadata !382), !dbg !634
  tail call void @llvm.dbg.value(metadata i32 %BoxColor, i64 0, metadata !261, metadata !382), !dbg !635
  tail call void @llvm.dbg.value(metadata i32 %BoxPattern, i64 0, metadata !262, metadata !382), !dbg !636
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([11 x i8]* @.str23, i64 0, i64 0), i64 10, i64 1, %struct.__sFILE* %out), !dbg !637
  %2 = tail call i64 @fwrite(i8* getelementptr inbounds ([13 x i8]* @.str24, i64 0, i64 0), i64 12, i64 1, %struct.__sFILE* %out), !dbg !638
  %3 = sext i32 %LocType to i64, !dbg !639
  %4 = getelementptr inbounds [2 x i8*]* @LocTypeStr, i64 0, i64 %3, !dbg !639
  %5 = load i8** %4, align 8, !dbg !639, !tbaa !611
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([21 x i8]* @.str25, i64 0, i64 0), i8* %5) #9, !dbg !640
  %7 = fpext float %xmin to double, !dbg !641
  %8 = fpext float %ymin to double, !dbg !642
  %9 = fpext float %xmax to double, !dbg !643
  %10 = fpext float %ymax to double, !dbg !644
  %11 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([25 x i8]* @.str26, i64 0, i64 0), double %7, double %8, double %9, double %10) #9, !dbg !645
  %12 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([23 x i8]* @.str27, i64 0, i64 0), i32 %LineStyle) #9, !dbg !646
  %13 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([23 x i8]* @.str28, i64 0, i64 0), i32 %LineWidth) #9, !dbg !647
  %14 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([19 x i8]* @.str29, i64 0, i64 0), i32 %LineColor) #9, !dbg !648
  %15 = sext i32 %BoxFill to i64, !dbg !649
  %16 = getelementptr inbounds [3 x i8*]* @BoxFillStr, i64 0, i64 %15, !dbg !649
  %17 = load i8** %16, align 8, !dbg !649, !tbaa !611
  %18 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([18 x i8]* @.str30, i64 0, i64 0), i8* %17) #9, !dbg !650
  %19 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([24 x i8]* @.str31, i64 0, i64 0), i32 %BoxColor) #9, !dbg !651
  %20 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([26 x i8]* @.str32, i64 0, i64 0), i32 %BoxPattern) #9, !dbg !652
  %21 = tail call i64 @fwrite(i8* getelementptr inbounds ([10 x i8]* @.str33, i64 0, i64 0), i64 9, i64 1, %struct.__sFILE* %out), !dbg !653
  ret void, !dbg !654
}

; Function Attrs: nounwind optsize ssp uwtable
define void @lsq_y_ax(i32 %n, float* nocapture readonly %x, float* nocapture readonly %y, float* nocapture %a) #4 {
  tail call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !268, metadata !382), !dbg !655
  tail call void @llvm.dbg.value(metadata float* %x, i64 0, metadata !269, metadata !382), !dbg !656
  tail call void @llvm.dbg.value(metadata float* %y, i64 0, metadata !270, metadata !382), !dbg !657
  tail call void @llvm.dbg.value(metadata float* %a, i64 0, metadata !271, metadata !382), !dbg !658
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !273, metadata !382), !dbg !659
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !274, metadata !382), !dbg !660
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !272, metadata !382), !dbg !661
  %1 = icmp sgt i32 %n, 0, !dbg !662
  br i1 %1, label %.lr.ph, label %._crit_edge, !dbg !665

.lr.ph:                                           ; preds = %0
  %2 = add i32 %n, -1, !dbg !665
  br label %3, !dbg !665

; <label>:3                                       ; preds = %3, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %3 ]
  %4 = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %15, %3 ]
  %5 = getelementptr inbounds float* %y, i64 %indvars.iv, !dbg !666
  %6 = load float* %5, align 4, !dbg !666, !tbaa !510
  %7 = getelementptr inbounds float* %x, i64 %indvars.iv, !dbg !668
  %8 = load float* %7, align 4, !dbg !668, !tbaa !510
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !274, metadata !382), !dbg !660
  %9 = insertelement <2 x float> undef, float %6, i32 0, !dbg !669
  %10 = insertelement <2 x float> %9, float %8, i32 1, !dbg !669
  %11 = insertelement <2 x float> undef, float %8, i32 0, !dbg !669
  %12 = insertelement <2 x float> %11, float %8, i32 1, !dbg !669
  %13 = fmul <2 x float> %10, %12, !dbg !669
  %14 = fpext <2 x float> %13 to <2 x double>, !dbg !666
  %15 = fadd <2 x double> %4, %14, !dbg !670
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !273, metadata !382), !dbg !659
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !665
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !665
  %exitcond = icmp eq i32 %lftr.wideiv, %2, !dbg !665
  br i1 %exitcond, label %._crit_edge, label %3, !dbg !665

._crit_edge:                                      ; preds = %3, %0
  %16 = phi <2 x double> [ zeroinitializer, %0 ], [ %15, %3 ]
  %17 = extractelement <2 x double> %16, i32 0, !dbg !671
  %18 = extractelement <2 x double> %16, i32 1, !dbg !671
  %19 = fdiv double %17, %18, !dbg !671
  %20 = fptrunc double %19 to float, !dbg !672
  store float %20, float* %a, align 4, !dbg !673, !tbaa !510
  ret void, !dbg !674
}

; Function Attrs: nounwind optsize ssp uwtable
define float @lsq_y_ax_b(i32 %n, float* nocapture readonly %x, float* nocapture readonly %y, float* nocapture %a, float* nocapture %b) #4 {
  tail call void @llvm.dbg.value(metadata i32 %n, i64 0, metadata !279, metadata !382), !dbg !675
  tail call void @llvm.dbg.value(metadata float* %x, i64 0, metadata !280, metadata !382), !dbg !676
  tail call void @llvm.dbg.value(metadata float* %y, i64 0, metadata !281, metadata !382), !dbg !677
  tail call void @llvm.dbg.value(metadata float* %a, i64 0, metadata !282, metadata !382), !dbg !678
  tail call void @llvm.dbg.value(metadata float* %b, i64 0, metadata !283, metadata !382), !dbg !679
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !288, metadata !382), !dbg !680
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !287, metadata !382), !dbg !681
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !286, metadata !382), !dbg !682
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !285, metadata !382), !dbg !683
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !284, metadata !382), !dbg !684
  %1 = icmp sgt i32 %n, 0, !dbg !685
  br i1 %1, label %.lr.ph9, label %._crit_edge10, !dbg !688

.lr.ph9:                                          ; preds = %0
  %2 = add i32 %n, -1, !dbg !688
  br label %3, !dbg !688

; <label>:3                                       ; preds = %3, %.lr.ph9
  %indvars.iv19 = phi i64 [ 0, %.lr.ph9 ], [ %indvars.iv.next20, %3 ]
  %4 = phi <2 x double> [ zeroinitializer, %.lr.ph9 ], [ %19, %3 ]
  %5 = phi <2 x double> [ zeroinitializer, %.lr.ph9 ], [ %15, %3 ]
  %6 = getelementptr inbounds float* %y, i64 %indvars.iv19, !dbg !689
  %7 = load float* %6, align 4, !dbg !689, !tbaa !510
  %8 = getelementptr inbounds float* %x, i64 %indvars.iv19, !dbg !691
  %9 = load float* %8, align 4, !dbg !691, !tbaa !510
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !285, metadata !382), !dbg !683
  %10 = insertelement <2 x float> undef, float %9, i32 0, !dbg !692
  %11 = insertelement <2 x float> %10, float %9, i32 1, !dbg !692
  %12 = insertelement <2 x float> %10, float %7, i32 1, !dbg !692
  %13 = fmul <2 x float> %11, %12, !dbg !692
  %14 = fpext <2 x float> %13 to <2 x double>, !dbg !693
  %15 = fadd <2 x double> %5, %14, !dbg !694
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !286, metadata !382), !dbg !682
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !287, metadata !382), !dbg !681
  %16 = insertelement <2 x float> undef, float %7, i32 0, !dbg !695
  %17 = insertelement <2 x float> %16, float %9, i32 1, !dbg !695
  %18 = fpext <2 x float> %17 to <2 x double>, !dbg !695
  %19 = fadd <2 x double> %4, %18, !dbg !696
  tail call void @llvm.dbg.value(metadata double undef, i64 0, metadata !288, metadata !382), !dbg !680
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1, !dbg !688
  %lftr.wideiv21 = trunc i64 %indvars.iv19 to i32, !dbg !688
  %exitcond22 = icmp eq i32 %lftr.wideiv21, %2, !dbg !688
  br i1 %exitcond22, label %._crit_edge10, label %3, !dbg !688

._crit_edge10:                                    ; preds = %3, %0
  %20 = phi <2 x double> [ zeroinitializer, %0 ], [ %19, %3 ]
  %21 = phi <2 x double> [ zeroinitializer, %0 ], [ %15, %3 ]
  %22 = sitofp i32 %n to double, !dbg !697
  %23 = extractelement <2 x double> %21, i32 1, !dbg !698
  %24 = fmul double %22, %23, !dbg !698
  %25 = extractelement <2 x double> %20, i32 0, !dbg !699
  %26 = extractelement <2 x double> %20, i32 1, !dbg !699
  %27 = fmul double %26, %25, !dbg !699
  %28 = fsub double %24, %27, !dbg !700
  %29 = extractelement <2 x double> %21, i32 0, !dbg !701
  %30 = fmul double %22, %29, !dbg !701
  %31 = fmul double %26, %26, !dbg !702
  %32 = fsub double %30, %31, !dbg !703
  %33 = fdiv double %28, %32, !dbg !704
  %34 = fptrunc double %33 to float, !dbg !705
  store float %34, float* %a, align 4, !dbg !706, !tbaa !510
  %35 = fpext float %34 to double, !dbg !707
  %36 = fmul double %26, %35, !dbg !708
  %37 = fsub double %25, %36, !dbg !709
  %38 = fdiv double %37, %22, !dbg !710
  %39 = fptrunc double %38 to float, !dbg !711
  store float %39, float* %b, align 4, !dbg !712, !tbaa !510
  tail call void @llvm.dbg.value(metadata double 0.000000e+00, i64 0, metadata !289, metadata !382), !dbg !713
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !284, metadata !382), !dbg !684
  br i1 %1, label %.lr.ph, label %._crit_edge.thread, !dbg !714

.lr.ph:                                           ; preds = %._crit_edge10
  %40 = load float* %a, align 4, !dbg !716, !tbaa !510
  %41 = add i32 %n, -1, !dbg !714
  br label %42, !dbg !714

; <label>:42                                      ; preds = %42, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %42 ]
  %chi2.02 = phi double [ 0.000000e+00, %.lr.ph ], [ %52, %42 ]
  %43 = getelementptr inbounds float* %y, i64 %indvars.iv, !dbg !718
  %44 = load float* %43, align 4, !dbg !718, !tbaa !510
  %45 = getelementptr inbounds float* %x, i64 %indvars.iv, !dbg !719
  %46 = load float* %45, align 4, !dbg !719, !tbaa !510
  %47 = fmul float %40, %46, !dbg !720
  %48 = fadd float %47, %39, !dbg !721
  %49 = fsub float %44, %48, !dbg !722
  tail call void @llvm.dbg.value(metadata float %49, i64 0, metadata !336, metadata !382), !dbg !723
  %50 = fmul float %49, %49, !dbg !725
  %51 = fpext float %50 to double, !dbg !726
  %52 = fadd double %chi2.02, %51, !dbg !727
  tail call void @llvm.dbg.value(metadata double %52, i64 0, metadata !289, metadata !382), !dbg !713
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !714
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !714
  %exitcond = icmp eq i32 %lftr.wideiv, %41, !dbg !714
  br i1 %exitcond, label %._crit_edge, label %42, !dbg !714

._crit_edge:                                      ; preds = %42
  %53 = icmp sgt i32 %n, 2, !dbg !728
  br i1 %53, label %54, label %._crit_edge.thread, !dbg !730

; <label>:54                                      ; preds = %._crit_edge
  %55 = add nsw i32 %n, -2, !dbg !731
  %56 = sitofp i32 %55 to double, !dbg !732
  %57 = fdiv double %52, %56, !dbg !733
  %58 = tail call double @sqrt(double %57) #11, !dbg !734
  %59 = fptrunc double %58 to float, !dbg !734
  br label %._crit_edge.thread, !dbg !735

._crit_edge.thread:                               ; preds = %._crit_edge10, %._crit_edge, %54
  %.0 = phi float [ %59, %54 ], [ 0.000000e+00, %._crit_edge ], [ 0.000000e+00, %._crit_edge10 ]
  ret float %.0, !dbg !736
}

; Function Attrs: nounwind optsize readnone
declare double @sqrt(double) #6

; Function Attrs: nounwind optsize ssp uwtable
define i32 @read_xvg(i8* %fn, float*** nocapture %y, i32* nocapture %ny) #4 {
  %is.i = alloca [2 x i32], align 4
  %lf = alloca double, align 8
  tail call void @llvm.dbg.value(metadata i8* %fn, i64 0, metadata !297, metadata !382), !dbg !737
  tail call void @llvm.dbg.value(metadata float*** %y, i64 0, metadata !298, metadata !382), !dbg !738
  tail call void @llvm.dbg.value(metadata i32* %ny, i64 0, metadata !299, metadata !382), !dbg !739
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !302, metadata !382), !dbg !740
  tail call void @llvm.dbg.value(metadata i8* null, i64 0, metadata !303, metadata !382), !dbg !741
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !305, metadata !382), !dbg !742
  tail call void @llvm.dbg.value(metadata float** null, i64 0, metadata !311, metadata !382), !dbg !743
  store i32 0, i32* %ny, align 4, !dbg !744, !tbaa !745
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !306, metadata !382), !dbg !746
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !307, metadata !382), !dbg !747
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !308, metadata !382), !dbg !748
  %1 = tail call %struct.__sFILE* @ffopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str34, i64 0, i64 0)) #9, !dbg !749
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %1, i64 0, metadata !300, metadata !382), !dbg !750
  tail call void @llvm.dbg.declare(metadata [2 x i32]* %is.i, metadata !351, metadata !382), !dbg !751
  %2 = bitcast [2 x i32]* %is.i to i8*, !dbg !758
  br label %.outer, !dbg !759

.outer:                                           ; preds = %.loopexit, %0
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %.loopexit ], [ 0, %0 ]
  %base.0.ph = phi i8* [ %base.2.lcssa, %.loopexit ], [ null, %0 ]
  %fmt.0.ph = phi i8* [ %fmt.2.lcssa, %.loopexit ], [ null, %0 ]
  %line.0.ph = phi i32 [ %42, %.loopexit ], [ 0, %0 ]
  %nny.0.ph = phi i32 [ %nny.1, %.loopexit ], [ 0, %0 ]
  %maxx.0.ph = phi i32 [ %maxx.156, %.loopexit ], [ 0, %0 ]
  %yy.0.ph = phi float** [ %yy.1, %.loopexit ], [ null, %0 ]
  br label %.backedge

.backedge:                                        ; preds = %41, %41, %.outer
  %line.0 = phi i32 [ %line.0.ph, %.outer ], [ %42, %41 ], [ %42, %41 ]
  call void @llvm.dbg.value(metadata %struct.__sFILE* %1, i64 0, metadata !341, metadata !382) #8, !dbg !760
  %3 = load i8** @fgets3.ptr, align 8, !dbg !762, !tbaa !611
  %4 = icmp eq i8* %3, null, !dbg !764
  br i1 %4, label %5, label %8, !dbg !765

; <label>:5                                       ; preds = %.backedge
  %6 = load i32* @fgets3.len, align 4, !dbg !766, !tbaa !745
  %7 = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str53, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str36, i64 0, i64 0), i32 187, i32 %6, i32 1) #9, !dbg !766
  store i8* %7, i8** @fgets3.ptr, align 8, !dbg !766, !tbaa !611
  br label %8, !dbg !766

; <label>:8                                       ; preds = %5, %.backedge
  %9 = phi i8* [ %7, %5 ], [ %3, %.backedge ], !dbg !767
  %10 = load i32* @fgets3.len, align 4, !dbg !768, !tbaa !745
  %11 = add nsw i32 %10, -1, !dbg !770
  %12 = call i8* @fgets(i8* %9, i32 %11, %struct.__sFILE* %1) #9, !dbg !771
  %13 = icmp eq i8* %12, null, !dbg !772
  %14 = trunc i64 %indvars.iv54 to i32, !dbg !773
  br i1 %13, label %fgets3.exit.thread, label %15, !dbg !773

; <label>:15                                      ; preds = %8
  %16 = load i8** @fgets3.ptr, align 8, !dbg !774, !tbaa !611
  call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !342, metadata !382) #8, !dbg !775
  %17 = call i8* @strchr(i8* %16, i32 10) #9, !dbg !776
  %18 = icmp eq i8* %17, null, !dbg !777
  br i1 %18, label %.lr.ph, label %.critedge.i, !dbg !778

.lr.ph:                                           ; preds = %15, %._crit_edge.i
  %p.0.i13 = phi i8* [ %29, %._crit_edge.i ], [ %16, %15 ]
  %19 = call i32 @feof(%struct.__sFILE* %1) #9, !dbg !779
  %20 = icmp eq i32 %19, 0, !dbg !780
  br i1 %20, label %21, label %.critedge.i, !dbg !781

; <label>:21                                      ; preds = %.lr.ph
  %22 = load i32* @fgets3.len, align 4, !dbg !782, !tbaa !745
  %23 = add nsw i32 %22, 4096, !dbg !782
  store i32 %23, i32* @fgets3.len, align 4, !dbg !782, !tbaa !745
  %24 = load i8** @fgets3.ptr, align 8, !dbg !784, !tbaa !611
  %25 = call i8* @save_realloc(i8* getelementptr inbounds ([4 x i8]* @.str53, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str36, i64 0, i64 0), i32 196, i8* %24, i32 %23) #9, !dbg !784
  store i8* %25, i8** @fgets3.ptr, align 8, !dbg !784, !tbaa !611
  %26 = getelementptr inbounds i8* %p.0.i13, i64 4095, !dbg !785
  %27 = call i8* @fgets(i8* %26, i32 4096, %struct.__sFILE* %1) #9, !dbg !787
  %28 = icmp eq i8* %27, null, !dbg !788
  br i1 %28, label %.critedge.i, label %._crit_edge.i, !dbg !789

._crit_edge.i:                                    ; preds = %21
  %29 = getelementptr inbounds i8* %p.0.i13, i64 4096, !dbg !790
  %.pre.i = load i8** @fgets3.ptr, align 8, !dbg !791, !tbaa !611
  %30 = call i8* @strchr(i8* %.pre.i, i32 10) #9, !dbg !776
  %31 = icmp eq i8* %30, null, !dbg !777
  br i1 %31, label %.lr.ph, label %.critedge.i, !dbg !778

.critedge.i:                                      ; preds = %._crit_edge.i, %.lr.ph, %21, %15
  %32 = load i8** @fgets3.ptr, align 8, !dbg !792, !tbaa !611
  %33 = call i64 @strlen(i8* %32) #9, !dbg !793
  %34 = shl i64 %33, 32, !dbg !794
  %sext.i = add i64 %34, -4294967296, !dbg !794
  %35 = ashr exact i64 %sext.i, 32, !dbg !794
  %36 = getelementptr inbounds i8* %32, i64 %35, !dbg !794
  %37 = load i8* %36, align 1, !dbg !794, !tbaa !410
  %38 = icmp eq i8 %37, 10, !dbg !796
  br i1 %38, label %39, label %fgets3.exit, !dbg !797

; <label>:39                                      ; preds = %.critedge.i
  store i8 0, i8* %36, align 1, !dbg !798, !tbaa !410
  %.pre1.i = load i8** @fgets3.ptr, align 8, !dbg !799, !tbaa !611
  br label %fgets3.exit, !dbg !800

fgets3.exit:                                      ; preds = %.critedge.i, %39
  %.0.i = phi i8* [ %.pre1.i, %39 ], [ %32, %.critedge.i ], !dbg !767
  call void @llvm.dbg.value(metadata i8* %.0.i, i64 0, metadata !301, metadata !382), !dbg !801
  %40 = icmp eq i8* %.0.i, null, !dbg !802
  br i1 %40, label %fgets3.exit.thread, label %41, !dbg !759

; <label>:41                                      ; preds = %fgets3.exit
  %42 = add nsw i32 %line.0, 1, !dbg !803
  call void @llvm.dbg.value(metadata i32 %42, i64 0, metadata !305, metadata !382), !dbg !742
  call void @trim(i8* %.0.i) #9, !dbg !804
  %43 = load i8* %.0.i, align 1, !dbg !805, !tbaa !410
  switch i8 %43, label %44 [
    i8 64, label %.backedge
    i8 35, label %.backedge
  ], !dbg !806

; <label>:44                                      ; preds = %41
  %45 = icmp eq i32 %nny.0.ph, 0, !dbg !807
  br i1 %45, label %46, label %79, !dbg !808

; <label>:46                                      ; preds = %44
  call void @llvm.lifetime.start(i64 8, i8* %2), !dbg !758
  call void @llvm.dbg.value(metadata i8* %.0.i, i64 0, metadata !348, metadata !382) #8, !dbg !758
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !355, metadata !382) #8, !dbg !809
  %47 = icmp eq i8 %43, 0, !dbg !810
  br i1 %47, label %wordcount.exit.thread, label %.lr.ph.i, !dbg !812

wordcount.exit.thread:                            ; preds = %46
  call void @llvm.lifetime.end(i64 8, i8* %2), !dbg !813
  call void @llvm.dbg.value(metadata i32 %n.1.i, i64 0, metadata !306, metadata !382), !dbg !746
  store i32 0, i32* %ny, align 4, !dbg !814, !tbaa !745
  br label %.loopexit5, !dbg !815

.lr.ph.i:                                         ; preds = %46, %isspace.exit._crit_edge.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %isspace.exit._crit_edge.i ], [ 0, %46 ], !dbg !816
  %48 = phi i8 [ %69, %isspace.exit._crit_edge.i ], [ %43, %46 ], !dbg !816
  %cur.04.i = phi i32 [ %.pre.i2, %isspace.exit._crit_edge.i ], [ 0, %46 ], !dbg !816
  %n.03.i = phi i32 [ %n.1.i, %isspace.exit._crit_edge.i ], [ 1, %46 ], !dbg !816
  call void @llvm.dbg.value(metadata i64 16384, i64 0, metadata !367, metadata !382) #8, !dbg !817
  %isascii.i.i1.i = icmp sgt i8 %48, -1, !dbg !823
  br i1 %isascii.i.i1.i, label %49, label %54, !dbg !823

; <label>:49                                      ; preds = %.lr.ph.i
  %50 = sext i8 %48 to i64, !dbg !824
  %51 = getelementptr inbounds %struct._RuneLocale* @_DefaultRuneLocale, i64 0, i32 5, i64 %50, !dbg !824
  %52 = load i32* %51, align 4, !dbg !824, !tbaa !745
  %53 = and i32 %52, 16384, !dbg !825
  br label %isspace.exit.i, !dbg !823

; <label>:54                                      ; preds = %.lr.ph.i
  %55 = sext i8 %48 to i32, !dbg !826
  %56 = call i32 @__maskrune(i32 %55, i64 16384) #9, !dbg !827
  br label %isspace.exit.i, !dbg !823

isspace.exit.i:                                   ; preds = %54, %49
  %.sink.i.in.i.i = phi i32 [ %53, %49 ], [ %56, %54 ], !dbg !828
  %.sink.i.i.i = icmp ne i32 %.sink.i.in.i.i, 0, !dbg !829
  %57 = zext i1 %.sink.i.i.i to i32, !dbg !830
  %58 = sext i32 %cur.04.i to i64, !dbg !831
  %59 = getelementptr inbounds [2 x i32]* %is.i, i64 0, i64 %58, !dbg !831
  store i32 %57, i32* %59, align 4, !dbg !832, !tbaa !745
  %60 = icmp slt i64 %indvars.iv.i, 1, !dbg !833
  %61 = xor i1 %.sink.i.i.i, true, !dbg !835
  %or.cond.i = or i1 %60, %61, !dbg !836
  %.pre.i2 = sub nsw i32 1, %cur.04.i, !dbg !837
  br i1 %or.cond.i, label %isspace.exit._crit_edge.i, label %62, !dbg !836

; <label>:62                                      ; preds = %isspace.exit.i
  %63 = sext i32 %.pre.i2 to i64, !dbg !838
  %64 = getelementptr inbounds [2 x i32]* %is.i, i64 0, i64 %63, !dbg !838
  %65 = load i32* %64, align 4, !dbg !838, !tbaa !745
  %66 = icmp eq i32 %65, 0, !dbg !838
  %67 = zext i1 %66 to i32, !dbg !839
  %.n.0.i = add nsw i32 %67, %n.03.i, !dbg !839
  br label %isspace.exit._crit_edge.i, !dbg !839

isspace.exit._crit_edge.i:                        ; preds = %62, %isspace.exit.i
  %n.1.i = phi i32 [ %.n.0.i, %62 ], [ %n.03.i, %isspace.exit.i ], !dbg !816
  call void @llvm.dbg.value(metadata i32 %.pre.i2, i64 0, metadata !355, metadata !382) #8, !dbg !809
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !840
  %68 = getelementptr inbounds i8* %.0.i, i64 %indvars.iv.next.i, !dbg !826
  %69 = load i8* %68, align 1, !dbg !826, !tbaa !410
  %70 = icmp eq i8 %69, 0, !dbg !841
  br i1 %70, label %wordcount.exit, label %.lr.ph.i, !dbg !840

wordcount.exit:                                   ; preds = %isspace.exit._crit_edge.i
  call void @llvm.lifetime.end(i64 8, i8* %2), !dbg !813
  call void @llvm.dbg.value(metadata i32 %n.1.i, i64 0, metadata !306, metadata !382), !dbg !746
  store i32 %n.1.i, i32* %ny, align 4, !dbg !814, !tbaa !745
  %71 = icmp eq i32 %n.1.i, 0, !dbg !842
  br i1 %71, label %.loopexit5, label %72, !dbg !815

; <label>:72                                      ; preds = %wordcount.exit
  %73 = call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str35, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str36, i64 0, i64 0), i32 249, i32 %n.1.i, i32 8) #9, !dbg !844
  %74 = bitcast i8* %73 to float**, !dbg !844
  call void @llvm.dbg.value(metadata float** %74, i64 0, metadata !311, metadata !382), !dbg !743
  %75 = mul nsw i32 %n.1.i, 3, !dbg !845
  %76 = add nsw i32 %75, 1, !dbg !845
  %77 = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str36, i64 0, i64 0), i32 250, i32 %76, i32 1) #9, !dbg !845
  call void @llvm.dbg.value(metadata i8* %77, i64 0, metadata !303, metadata !382), !dbg !741
  %78 = call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str36, i64 0, i64 0), i32 251, i32 %76, i32 1) #9, !dbg !846
  call void @llvm.dbg.value(metadata i8* %78, i64 0, metadata !302, metadata !382), !dbg !740
  br label %79, !dbg !847

; <label>:79                                      ; preds = %72, %44
  %base.1 = phi i8* [ %78, %72 ], [ %base.0.ph, %44 ]
  %fmt.1 = phi i8* [ %77, %72 ], [ %fmt.0.ph, %44 ]
  %nny.1 = phi i32 [ %n.1.i, %72 ], [ %nny.0.ph, %44 ]
  %yy.1 = phi float** [ %74, %72 ], [ %yy.0.ph, %44 ]
  %80 = sext i32 %maxx.0.ph to i64, !dbg !848
  %81 = icmp slt i64 %indvars.iv54, %80, !dbg !848
  br i1 %81, label %.loopexit4, label %82, !dbg !850

; <label>:82                                      ; preds = %79
  %83 = add nsw i32 %maxx.0.ph, 1024, !dbg !851
  call void @llvm.dbg.value(metadata i32 %83, i64 0, metadata !308, metadata !382), !dbg !748
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !304, metadata !382), !dbg !853
  %84 = icmp sgt i32 %nny.1, 0, !dbg !854
  br i1 %84, label %.lr.ph17, label %.loopexit4.thread, !dbg !857

.loopexit4.thread:                                ; preds = %82
  store i8 0, i8* %fmt.1, align 1, !dbg !858, !tbaa !410
  store i8 0, i8* %base.1, align 1, !dbg !859, !tbaa !410
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !304, metadata !382), !dbg !853
  br label %116, !dbg !860

.lr.ph17:                                         ; preds = %82
  %85 = shl i32 %83, 2, !dbg !862
  %86 = add i32 %nny.1, -1, !dbg !857
  br label %87, !dbg !857

; <label>:87                                      ; preds = %87, %.lr.ph17
  %indvars.iv = phi i64 [ 0, %.lr.ph17 ], [ %indvars.iv.next, %87 ]
  %88 = getelementptr inbounds float** %yy.1, i64 %indvars.iv, !dbg !862
  %89 = bitcast float** %88 to i8**, !dbg !862
  %90 = load i8** %89, align 8, !dbg !862, !tbaa !611
  %91 = call i8* @save_realloc(i8* getelementptr inbounds ([6 x i8]* @.str39, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str36, i64 0, i64 0), i32 257, i8* %90, i32 %85) #9, !dbg !862
  store i8* %91, i8** %89, align 8, !dbg !862, !tbaa !611
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !857
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !857
  %exitcond = icmp eq i32 %lftr.wideiv, %86, !dbg !857
  br i1 %exitcond, label %.loopexit4, label %87, !dbg !857

.loopexit4:                                       ; preds = %87, %79
  %maxx.1 = phi i32 [ %maxx.0.ph, %79 ], [ %83, %87 ]
  store i8 0, i8* %fmt.1, align 1, !dbg !858, !tbaa !410
  store i8 0, i8* %base.1, align 1, !dbg !859, !tbaa !410
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !304, metadata !382), !dbg !853
  %92 = icmp sgt i32 %nny.1, 0, !dbg !863
  br i1 %92, label %.lr.ph21, label %116, !dbg !860

.lr.ph21:                                         ; preds = %.loopexit4
  %93 = mul i32 %nny.1, 3, !dbg !865
  %94 = add i32 %93, 4, !dbg !865
  %95 = add nsw i32 %93, 1, !dbg !867
  %96 = sext i32 %nny.1 to i64, !dbg !860
  br label %97, !dbg !860

; <label>:97                                      ; preds = %.lr.ph21, %102
  %indvars.iv48 = phi i64 [ 0, %.lr.ph21 ], [ %indvars.iv.next49, %102 ]
  %fmt.219 = phi i8* [ %fmt.1, %.lr.ph21 ], [ %108, %102 ]
  %base.218 = phi i8* [ %base.1, %.lr.ph21 ], [ %109, %102 ]
  %98 = call i64 @llvm.objectsize.i64.p0i8(i8* %fmt.219, i1 false), !dbg !868
  %99 = call i8* @__strcpy_chk(i8* %fmt.219, i8* %base.218, i64 %98) #9, !dbg !868
  %100 = call i8* @__strcat_chk(i8* %fmt.219, i8* getelementptr inbounds ([4 x i8]* @.str40, i64 0, i64 0), i64 %98) #9, !dbg !869
  call void @llvm.dbg.value(metadata double* %lf, i64 0, metadata !310, metadata !382), !dbg !870
  %101 = call i32 (i8*, i8*, ...)* @sscanf(i8* %.0.i, i8* %fmt.219, double* %lf) #9, !dbg !871
  call void @llvm.dbg.value(metadata i32 %101, i64 0, metadata !309, metadata !382), !dbg !872
  switch i32 %101, label %102 [
    i32 -1, label %._crit_edge
    i32 0, label %._crit_edge24
  ], !dbg !873

; <label>:102                                     ; preds = %97
  call void @llvm.dbg.value(metadata double* %lf, i64 0, metadata !310, metadata !382), !dbg !870
  %103 = load double* %lf, align 8, !dbg !875, !tbaa !523
  %104 = fptrunc double %103 to float, !dbg !875
  %105 = getelementptr inbounds float** %yy.1, i64 %indvars.iv48, !dbg !876
  %106 = load float** %105, align 8, !dbg !876, !tbaa !611
  %107 = getelementptr inbounds float* %106, i64 %indvars.iv54, !dbg !876
  store float %104, float* %107, align 4, !dbg !877, !tbaa !510
  %108 = call i8* @save_realloc(i8* getelementptr inbounds ([4 x i8]* @.str37, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str36, i64 0, i64 0), i32 272, i8* %fmt.219, i32 %94) #9, !dbg !865
  call void @llvm.dbg.value(metadata i8* %108, i64 0, metadata !303, metadata !382), !dbg !741
  %109 = call i8* @save_realloc(i8* getelementptr inbounds ([5 x i8]* @.str38, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str36, i64 0, i64 0), i32 273, i8* %base.218, i32 %95) #9, !dbg !867
  call void @llvm.dbg.value(metadata i8* %109, i64 0, metadata !302, metadata !382), !dbg !740
  %110 = call i64 @llvm.objectsize.i64.p0i8(i8* %109, i1 false), !dbg !878
  %111 = call i8* @__strcat_chk(i8* %109, i8* getelementptr inbounds ([4 x i8]* @.str41, i64 0, i64 0), i64 %110) #9, !dbg !878
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1, !dbg !860
  %112 = icmp slt i64 %indvars.iv.next49, %96, !dbg !863
  br i1 %112, label %97, label %._crit_edge28, !dbg !860

._crit_edge:                                      ; preds = %97
  %113 = trunc i64 %indvars.iv48 to i32, !dbg !873
  br label %116, !dbg !873

._crit_edge24:                                    ; preds = %97
  %114 = trunc i64 %indvars.iv48 to i32, !dbg !873
  br label %116, !dbg !873

._crit_edge28:                                    ; preds = %102
  %115 = trunc i64 %indvars.iv.next49 to i32, !dbg !860
  br label %116, !dbg !860

; <label>:116                                     ; preds = %.loopexit4.thread, %._crit_edge28, %._crit_edge24, %._crit_edge, %.loopexit4
  %maxx.156 = phi i32 [ %maxx.1, %._crit_edge ], [ %maxx.1, %._crit_edge24 ], [ %maxx.1, %._crit_edge28 ], [ %maxx.1, %.loopexit4 ], [ %83, %.loopexit4.thread ]
  %k.1.lcssa = phi i32 [ %113, %._crit_edge ], [ %114, %._crit_edge24 ], [ %115, %._crit_edge28 ], [ 0, %.loopexit4 ], [ 0, %.loopexit4.thread ]
  %fmt.2.lcssa = phi i8* [ %fmt.219, %._crit_edge ], [ %fmt.219, %._crit_edge24 ], [ %108, %._crit_edge28 ], [ %fmt.1, %.loopexit4 ], [ %fmt.1, %.loopexit4.thread ]
  %base.2.lcssa = phi i8* [ %base.218, %._crit_edge ], [ %base.218, %._crit_edge24 ], [ %109, %._crit_edge28 ], [ %base.1, %.loopexit4 ], [ %base.1, %.loopexit4.thread ]
  %117 = icmp eq i32 %k.1.lcssa, %nny.1, !dbg !879
  br i1 %117, label %.loopexit, label %118, !dbg !881

; <label>:118                                     ; preds = %116
  %119 = load %struct.__sFILE** @__stderrp, align 8, !dbg !882, !tbaa !611
  %120 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %119, i8* getelementptr inbounds ([39 x i8]* @.str42, i64 0, i64 0), i32 %k.1.lcssa, i32 %42, i8* %fn) #9, !dbg !884
  %121 = icmp slt i32 %k.1.lcssa, %nny.1, !dbg !885
  br i1 %121, label %.lr.ph34, label %.loopexit, !dbg !888

.lr.ph34:                                         ; preds = %118
  %122 = sext i32 %k.1.lcssa to i64
  %123 = add i32 %nny.1, -1, !dbg !888
  br label %124, !dbg !888

; <label>:124                                     ; preds = %124, %.lr.ph34
  %indvars.iv50 = phi i64 [ %122, %.lr.ph34 ], [ %indvars.iv.next51, %124 ]
  %125 = getelementptr inbounds float** %yy.1, i64 %indvars.iv50, !dbg !889
  %126 = load float** %125, align 8, !dbg !889, !tbaa !611
  %127 = getelementptr inbounds float* %126, i64 %indvars.iv54, !dbg !889
  store float 0.000000e+00, float* %127, align 4, !dbg !890, !tbaa !510
  %indvars.iv.next51 = add nsw i64 %indvars.iv50, 1, !dbg !888
  %lftr.wideiv52 = trunc i64 %indvars.iv50 to i32, !dbg !888
  %exitcond53 = icmp eq i32 %lftr.wideiv52, %123, !dbg !888
  br i1 %exitcond53, label %.loopexit, label %124, !dbg !888

.loopexit:                                        ; preds = %124, %118, %116
  %indvars.iv.next55 = add nuw i64 %indvars.iv54, 1, !dbg !891
  br label %.outer, !dbg !891

fgets3.exit.thread:                               ; preds = %8, %fgets3.exit
  call void @ffclose(%struct.__sFILE* %1) #9, !dbg !892
  store float** %yy.0.ph, float*** %y, align 8, !dbg !893, !tbaa !611
  br label %.loopexit5, !dbg !894

.loopexit5:                                       ; preds = %wordcount.exit, %wordcount.exit.thread, %fgets3.exit.thread
  %.0 = phi i32 [ %14, %fgets3.exit.thread ], [ 0, %wordcount.exit.thread ], [ 0, %wordcount.exit ]
  ret i32 %.0, !dbg !895
}

; Function Attrs: optsize
declare void @trim(i8*) #2

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #2

; Function Attrs: nounwind optsize
declare i8* @__strcpy_chk(i8*, i8*, i64) #5

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #1

; Function Attrs: nounwind optsize
declare i8* @__strcat_chk(i8*, i8*, i64) #5

; Function Attrs: nounwind optsize
declare i32 @sscanf(i8* nocapture readonly, i8* nocapture readonly, ...) #5

; Function Attrs: optsize
declare void @ffclose(%struct.__sFILE*) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @write_xvg(i8* %fn, i8* %title, i32 %nx, i32 %ny, float** nocapture readonly %y, i8** readonly %leg) #4 {
  tail call void @llvm.dbg.value(metadata i8* %fn, i64 0, metadata !316, metadata !382), !dbg !896
  tail call void @llvm.dbg.value(metadata i8* %title, i64 0, metadata !317, metadata !382), !dbg !897
  tail call void @llvm.dbg.value(metadata i32 %nx, i64 0, metadata !318, metadata !382), !dbg !898
  tail call void @llvm.dbg.value(metadata i32 %ny, i64 0, metadata !319, metadata !382), !dbg !899
  tail call void @llvm.dbg.value(metadata float** %y, i64 0, metadata !320, metadata !382), !dbg !900
  tail call void @llvm.dbg.value(metadata i8** %leg, i64 0, metadata !321, metadata !382), !dbg !901
  %1 = tail call %struct.__sFILE* @xvgropen(i8* %fn, i8* %title, i8* getelementptr inbounds ([2 x i8]* @.str43, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str44, i64 0, i64 0)) #12, !dbg !902
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %1, i64 0, metadata !322, metadata !382), !dbg !903
  %2 = icmp eq i8** %leg, null, !dbg !904
  br i1 %2, label %.preheader1, label %3, !dbg !906

; <label>:3                                       ; preds = %0
  %4 = add nsw i32 %ny, -1, !dbg !907
  tail call void @xvgr_legend(%struct.__sFILE* %1, i32 %4, i8** %leg) #12, !dbg !908
  br label %.preheader1, !dbg !908

.preheader1:                                      ; preds = %0, %3
  %5 = icmp sgt i32 %nx, 0, !dbg !909
  br i1 %5, label %.preheader.lr.ph, label %._crit_edge4, !dbg !912

.preheader.lr.ph:                                 ; preds = %.preheader1
  %6 = icmp sgt i32 %ny, 0, !dbg !913
  %7 = add i32 %ny, -1, !dbg !912
  %8 = add i32 %nx, -1, !dbg !912
  br label %.preheader, !dbg !912

.preheader:                                       ; preds = %._crit_edge, %.preheader.lr.ph
  %indvars.iv5 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next6, %._crit_edge ]
  br i1 %6, label %.lr.ph, label %._crit_edge, !dbg !917

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ]
  %9 = getelementptr inbounds float** %y, i64 %indvars.iv, !dbg !918
  %10 = load float** %9, align 8, !dbg !918, !tbaa !611
  %11 = getelementptr inbounds float* %10, i64 %indvars.iv5, !dbg !918
  %12 = load float* %11, align 4, !dbg !918, !tbaa !510
  %13 = fpext float %12 to double, !dbg !918
  %14 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([9 x i8]* @.str45, i64 0, i64 0), double %13) #9, !dbg !920
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !917
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !917
  %exitcond = icmp eq i32 %lftr.wideiv, %7, !dbg !917
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !dbg !917

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %fputc = tail call i32 @fputc(i32 10, %struct.__sFILE* %1), !dbg !921
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1, !dbg !912
  %lftr.wideiv7 = trunc i64 %indvars.iv5 to i32, !dbg !912
  %exitcond8 = icmp eq i32 %lftr.wideiv7, %8, !dbg !912
  br i1 %exitcond8, label %._crit_edge4, label %.preheader, !dbg !912

._crit_edge4:                                     ; preds = %._crit_edge, %.preheader1
  tail call void @ffclose(%struct.__sFILE* %1) #9, !dbg !922
  ret void, !dbg !923
}

; Function Attrs: nounwind optsize
declare i8* @fgets(i8*, i32, %struct.__sFILE* nocapture) #5

; Function Attrs: nounwind optsize readonly
declare i8* @strchr(i8*, i32) #7

; Function Attrs: nounwind optsize
declare i32 @feof(%struct.__sFILE* nocapture) #5

; Function Attrs: nounwind optsize readonly
declare i64 @strlen(i8* nocapture) #7

; Function Attrs: optsize
declare i32 @__maskrune(i32, i64) #2

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #8

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct.__sFILE* nocapture) #8

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #8

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #8

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize readonly "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { nounwind optsize }
attributes #10 = { readnone }
attributes #11 = { nounwind optsize readnone }
attributes #12 = { optsize }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!378, !379, !380}
!llvm.ident = !{!381}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !68, globals: !371, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/xvgr.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5, !6, !26}
!4 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!5 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64, align: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !8, line: 153, baseType: !9)
!8 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!9 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !8, line: 122, size: 1216, align: 64, elements: !10)
!10 = !{!11, !14, !15, !16, !18, !19, !24, !25, !27, !31, !36, !46, !52, !53, !56, !57, !61, !65, !66, !67}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !9, file: !8, line: 123, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!13 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !9, file: !8, line: 124, baseType: !5, size: 32, align: 32, offset: 64)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !9, file: !8, line: 125, baseType: !5, size: 32, align: 32, offset: 96)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !9, file: !8, line: 126, baseType: !17, size: 16, align: 16, offset: 128)
!17 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !9, file: !8, line: 127, baseType: !17, size: 16, align: 16, offset: 144)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !9, file: !8, line: 128, baseType: !20, size: 128, align: 64, offset: 192)
!20 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !8, line: 88, size: 128, align: 64, elements: !21)
!21 = !{!22, !23}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !20, file: !8, line: 89, baseType: !12, size: 64, align: 64)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !20, file: !8, line: 90, baseType: !5, size: 32, align: 32, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !9, file: !8, line: 129, baseType: !5, size: 32, align: 32, offset: 320)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !9, file: !8, line: 132, baseType: !26, size: 64, align: 64, offset: 384)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !9, file: !8, line: 133, baseType: !28, size: 64, align: 64, offset: 448)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64, align: 64)
!29 = !DISubroutineType(types: !30)
!30 = !{!5, !26}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !9, file: !8, line: 134, baseType: !32, size: 64, align: 64, offset: 512)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = !DISubroutineType(types: !34)
!34 = !{!5, !26, !35, !5}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !9, file: !8, line: 135, baseType: !37, size: 64, align: 64, offset: 576)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!38 = !DISubroutineType(types: !39)
!39 = !{!40, !26, !40, !5}
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !8, line: 77, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !42, line: 71, baseType: !43)
!42 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !44, line: 46, baseType: !45)
!44 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!45 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !9, file: !8, line: 136, baseType: !47, size: 64, align: 64, offset: 640)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!48 = !DISubroutineType(types: !49)
!49 = !{!5, !26, !50, !5}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !9, file: !8, line: 139, baseType: !20, size: 128, align: 64, offset: 704)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !9, file: !8, line: 140, baseType: !54, size: 64, align: 64, offset: 832)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!55 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !8, line: 94, flags: DIFlagFwdDecl)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !9, file: !8, line: 141, baseType: !5, size: 32, align: 32, offset: 896)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !9, file: !8, line: 144, baseType: !58, size: 24, align: 8, offset: 928)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 24, align: 8, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 3)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !9, file: !8, line: 145, baseType: !62, size: 8, align: 8, offset: 952)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 8, align: 8, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 1)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !9, file: !8, line: 148, baseType: !20, size: 128, align: 64, offset: 960)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !9, file: !8, line: 151, baseType: !5, size: 32, align: 32, offset: 1088)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !9, file: !8, line: 152, baseType: !40, size: 64, align: 64, offset: 1152)
!68 = !{!69, !75, !81, !88, !94, !100, !103, !106, !109, !112, !115, !118, !127, !136, !149, !152, !155, !158, !172, !186, !192, !198, !212, !223, !230, !239, !247, !263, !275, !290, !312, !325, !331, !337, !344, !356, !360, !368}
!69 = !DISubprogram(name: "__sputc", scope: !8, file: !8, line: 348, type: !70, isLocal: false, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, %struct.__sFILE*)* @__sputc, variables: !72)
!70 = !DISubroutineType(types: !71)
!71 = !{!5, !5, !6}
!72 = !{!73, !74}
!73 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !69, file: !8, line: 348, type: !5)
!74 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_p", arg: 2, scope: !69, file: !8, line: 348, type: !6)
!75 = !DISubprogram(name: "__sigbits", scope: !76, file: !76, line: 114, type: !77, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32)* @__sigbits, variables: !79)
!76 = !DIFile(filename: "/usr/include/signal.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!77 = !DISubroutineType(types: !78)
!78 = !{!5, !5}
!79 = !{!80}
!80 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__signo", arg: 1, scope: !75, file: !76, line: 114, type: !5)
!81 = !DISubprogram(name: "__inline_isfinitef", scope: !82, file: !82, line: 204, type: !83, isLocal: false, isDefinition: true, scopeLine: 204, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isfinitef, variables: !86)
!82 = !DIFile(filename: "/usr/include/math.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!83 = !DISubroutineType(types: !84)
!84 = !{!5, !85}
!85 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!86 = !{!87}
!87 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !81, file: !82, line: 204, type: !85)
!88 = !DISubprogram(name: "__inline_isfinited", scope: !82, file: !82, line: 207, type: !89, isLocal: false, isDefinition: true, scopeLine: 207, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isfinited, variables: !92)
!89 = !DISubroutineType(types: !90)
!90 = !{!5, !91}
!91 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!92 = !{!93}
!93 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !88, file: !82, line: 207, type: !91)
!94 = !DISubprogram(name: "__inline_isfinitel", scope: !82, file: !82, line: 210, type: !95, isLocal: false, isDefinition: true, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isfinitel, variables: !98)
!95 = !DISubroutineType(types: !96)
!96 = !{!5, !97}
!97 = !DIBasicType(name: "long double", size: 128, align: 128, encoding: DW_ATE_float)
!98 = !{!99}
!99 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !94, file: !82, line: 210, type: !97)
!100 = !DISubprogram(name: "__inline_isinff", scope: !82, file: !82, line: 213, type: !83, isLocal: false, isDefinition: true, scopeLine: 213, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isinff, variables: !101)
!101 = !{!102}
!102 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !100, file: !82, line: 213, type: !85)
!103 = !DISubprogram(name: "__inline_isinfd", scope: !82, file: !82, line: 216, type: !89, isLocal: false, isDefinition: true, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isinfd, variables: !104)
!104 = !{!105}
!105 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !103, file: !82, line: 216, type: !91)
!106 = !DISubprogram(name: "__inline_isinfl", scope: !82, file: !82, line: 219, type: !95, isLocal: false, isDefinition: true, scopeLine: 219, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isinfl, variables: !107)
!107 = !{!108}
!108 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !106, file: !82, line: 219, type: !97)
!109 = !DISubprogram(name: "__inline_isnanf", scope: !82, file: !82, line: 222, type: !83, isLocal: false, isDefinition: true, scopeLine: 222, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isnanf, variables: !110)
!110 = !{!111}
!111 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !109, file: !82, line: 222, type: !85)
!112 = !DISubprogram(name: "__inline_isnand", scope: !82, file: !82, line: 225, type: !89, isLocal: false, isDefinition: true, scopeLine: 225, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isnand, variables: !113)
!113 = !{!114}
!114 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !112, file: !82, line: 225, type: !91)
!115 = !DISubprogram(name: "__inline_isnanl", scope: !82, file: !82, line: 228, type: !95, isLocal: false, isDefinition: true, scopeLine: 228, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isnanl, variables: !116)
!116 = !{!117}
!117 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !115, file: !82, line: 228, type: !97)
!118 = !DISubprogram(name: "__inline_signbitf", scope: !82, file: !82, line: 231, type: !83, isLocal: false, isDefinition: true, scopeLine: 231, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_signbitf, variables: !119)
!119 = !{!120, !121}
!120 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !118, file: !82, line: 231, type: !85)
!121 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__u", scope: !118, file: !82, line: 232, type: !122)
!122 = !DICompositeType(tag: DW_TAG_union_type, scope: !118, file: !82, line: 232, size: 32, align: 32, elements: !123)
!123 = !{!124, !125}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "__f", scope: !122, file: !82, line: 232, baseType: !85, size: 32, align: 32)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "__u", scope: !122, file: !82, line: 232, baseType: !126, size: 32, align: 32)
!126 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!127 = !DISubprogram(name: "__inline_signbitd", scope: !82, file: !82, line: 236, type: !89, isLocal: false, isDefinition: true, scopeLine: 236, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_signbitd, variables: !128)
!128 = !{!129, !130}
!129 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !127, file: !82, line: 236, type: !91)
!130 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__u", scope: !127, file: !82, line: 237, type: !131)
!131 = !DICompositeType(tag: DW_TAG_union_type, scope: !127, file: !82, line: 237, size: 64, align: 64, elements: !132)
!132 = !{!133, !134}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "__f", scope: !131, file: !82, line: 237, baseType: !91, size: 64, align: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "__u", scope: !131, file: !82, line: 237, baseType: !135, size: 64, align: 64)
!135 = !DIBasicType(name: "long long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!136 = !DISubprogram(name: "__inline_signbitl", scope: !82, file: !82, line: 242, type: !95, isLocal: false, isDefinition: true, scopeLine: 242, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_signbitl, variables: !137)
!137 = !{!138, !139}
!138 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !136, file: !82, line: 242, type: !97)
!139 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__u", scope: !136, file: !82, line: 246, type: !140)
!140 = !DICompositeType(tag: DW_TAG_union_type, scope: !136, file: !82, line: 243, size: 128, align: 128, elements: !141)
!141 = !{!142, !143}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "__ld", scope: !140, file: !82, line: 244, baseType: !97, size: 128, align: 128)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "__p", scope: !140, file: !82, line: 245, baseType: !144, size: 128, align: 64)
!144 = !DICompositeType(tag: DW_TAG_structure_type, scope: !140, file: !82, line: 245, size: 128, align: 64, elements: !145)
!145 = !{!146, !147}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "__m", scope: !144, file: !82, line: 245, baseType: !135, size: 64, align: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "__sexp", scope: !144, file: !82, line: 245, baseType: !148, size: 16, align: 16, offset: 64)
!148 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!149 = !DISubprogram(name: "__inline_isnormalf", scope: !82, file: !82, line: 257, type: !83, isLocal: false, isDefinition: true, scopeLine: 257, flags: DIFlagPrototyped, isOptimized: true, function: i32 (float)* @__inline_isnormalf, variables: !150)
!150 = !{!151}
!151 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !149, file: !82, line: 257, type: !85)
!152 = !DISubprogram(name: "__inline_isnormald", scope: !82, file: !82, line: 260, type: !89, isLocal: false, isDefinition: true, scopeLine: 260, flags: DIFlagPrototyped, isOptimized: true, function: i32 (double)* @__inline_isnormald, variables: !153)
!153 = !{!154}
!154 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !152, file: !82, line: 260, type: !91)
!155 = !DISubprogram(name: "__inline_isnormall", scope: !82, file: !82, line: 263, type: !95, isLocal: false, isDefinition: true, scopeLine: 263, flags: DIFlagPrototyped, isOptimized: true, function: i32 (x86_fp80)* @__inline_isnormall, variables: !156)
!156 = !{!157}
!157 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !155, file: !82, line: 263, type: !97)
!158 = !DISubprogram(name: "__sincosf", scope: !82, file: !82, line: 642, type: !159, isLocal: false, isDefinition: true, scopeLine: 642, flags: DIFlagPrototyped, isOptimized: true, function: void (float, float*, float*)* @__sincosf, variables: !162)
!159 = !DISubroutineType(types: !160)
!160 = !{null, !85, !161, !161}
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, align: 64)
!162 = !{!163, !164, !165, !166}
!163 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !158, file: !82, line: 642, type: !85)
!164 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !158, file: !82, line: 642, type: !161)
!165 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !158, file: !82, line: 642, type: !161)
!166 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !158, file: !82, line: 643, type: !167)
!167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!168 = !DICompositeType(tag: DW_TAG_structure_type, name: "__float2", file: !82, line: 634, size: 64, align: 32, elements: !169)
!169 = !{!170, !171}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "__sinval", scope: !168, file: !82, line: 634, baseType: !85, size: 32, align: 32)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "__cosval", scope: !168, file: !82, line: 634, baseType: !85, size: 32, align: 32, offset: 32)
!172 = !DISubprogram(name: "__sincos", scope: !82, file: !82, line: 647, type: !173, isLocal: false, isDefinition: true, scopeLine: 647, flags: DIFlagPrototyped, isOptimized: true, function: void (double, double*, double*)* @__sincos, variables: !176)
!173 = !DISubroutineType(types: !174)
!174 = !{null, !91, !175, !175}
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64, align: 64)
!176 = !{!177, !178, !179, !180}
!177 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !172, file: !82, line: 647, type: !91)
!178 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !172, file: !82, line: 647, type: !175)
!179 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !172, file: !82, line: 647, type: !175)
!180 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !172, file: !82, line: 648, type: !181)
!181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !182)
!182 = !DICompositeType(tag: DW_TAG_structure_type, name: "__double2", file: !82, line: 635, size: 128, align: 64, elements: !183)
!183 = !{!184, !185}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "__sinval", scope: !182, file: !82, line: 635, baseType: !91, size: 64, align: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "__cosval", scope: !182, file: !82, line: 635, baseType: !91, size: 64, align: 64, offset: 64)
!186 = !DISubprogram(name: "__sincospif", scope: !82, file: !82, line: 652, type: !159, isLocal: false, isDefinition: true, scopeLine: 652, flags: DIFlagPrototyped, isOptimized: true, function: void (float, float*, float*)* @__sincospif, variables: !187)
!187 = !{!188, !189, !190, !191}
!188 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !186, file: !82, line: 652, type: !85)
!189 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !186, file: !82, line: 652, type: !161)
!190 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !186, file: !82, line: 652, type: !161)
!191 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !186, file: !82, line: 653, type: !167)
!192 = !DISubprogram(name: "__sincospi", scope: !82, file: !82, line: 657, type: !173, isLocal: false, isDefinition: true, scopeLine: 657, flags: DIFlagPrototyped, isOptimized: true, function: void (double, double*, double*)* @__sincospi, variables: !193)
!193 = !{!194, !195, !196, !197}
!194 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__x", arg: 1, scope: !192, file: !82, line: 657, type: !91)
!195 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__sinp", arg: 2, scope: !192, file: !82, line: 657, type: !175)
!196 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "__cosp", arg: 3, scope: !192, file: !82, line: 657, type: !175)
!197 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "__stret", scope: !192, file: !82, line: 658, type: !181)
!198 = !DISubprogram(name: "xvgropen", scope: !1, file: !1, line: 57, type: !199, isLocal: false, isDefinition: true, scopeLine: 58, flags: DIFlagPrototyped, isOptimized: true, function: %struct.__sFILE* (i8*, i8*, i8*, i8*)* @xvgropen, variables: !201)
!199 = !DISubroutineType(types: !200)
!200 = !{!6, !35, !35, !35, !35}
!201 = !{!202, !203, !204, !205, !206, !207}
!202 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fn", arg: 1, scope: !198, file: !1, line: 57, type: !35)
!203 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "title", arg: 2, scope: !198, file: !1, line: 57, type: !35)
!204 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xaxis", arg: 3, scope: !198, file: !1, line: 57, type: !35)
!205 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "yaxis", arg: 4, scope: !198, file: !1, line: 57, type: !35)
!206 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xvgr", scope: !198, file: !1, line: 59, type: !6)
!207 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "t", scope: !198, file: !1, line: 60, type: !208)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !209, line: 30, baseType: !210)
!209 = !DIFile(filename: "/usr/include/sys/_types/_time_t.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_time_t", file: !44, line: 120, baseType: !211)
!211 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!212 = !DISubprogram(name: "xvgr_view", scope: !1, file: !1, line: 80, type: !213, isLocal: false, isDefinition: true, scopeLine: 81, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, float, float, float, float)* @xvgr_view, variables: !217)
!213 = !DISubroutineType(types: !214)
!214 = !{null, !6, !215, !215, !215, !215}
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "real", file: !216, line: 87, baseType: !85)
!216 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/simple.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!217 = !{!218, !219, !220, !221, !222}
!218 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "out", arg: 1, scope: !212, file: !1, line: 80, type: !6)
!219 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xmin", arg: 2, scope: !212, file: !1, line: 80, type: !215)
!220 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ymin", arg: 3, scope: !212, file: !1, line: 80, type: !215)
!221 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xmax", arg: 4, scope: !212, file: !1, line: 80, type: !215)
!222 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ymax", arg: 5, scope: !212, file: !1, line: 80, type: !215)
!223 = !DISubprogram(name: "xvgr_world", scope: !1, file: !1, line: 85, type: !213, isLocal: false, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, float, float, float, float)* @xvgr_world, variables: !224)
!224 = !{!225, !226, !227, !228, !229}
!225 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "out", arg: 1, scope: !223, file: !1, line: 85, type: !6)
!226 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xmin", arg: 2, scope: !223, file: !1, line: 85, type: !215)
!227 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ymin", arg: 3, scope: !223, file: !1, line: 85, type: !215)
!228 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xmax", arg: 4, scope: !223, file: !1, line: 85, type: !215)
!229 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ymax", arg: 5, scope: !223, file: !1, line: 85, type: !215)
!230 = !DISubprogram(name: "xvgr_legend", scope: !1, file: !1, line: 93, type: !231, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, i32, i8**)* @xvgr_legend, variables: !234)
!231 = !DISubroutineType(types: !232)
!232 = !{null, !6, !5, !233}
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!234 = !{!235, !236, !237, !238}
!235 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "out", arg: 1, scope: !230, file: !1, line: 93, type: !6)
!236 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nsets", arg: 2, scope: !230, file: !1, line: 93, type: !5)
!237 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "setname", arg: 3, scope: !230, file: !1, line: 93, type: !233)
!238 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !230, file: !1, line: 95, type: !5)
!239 = !DISubprogram(name: "xvgr_line_props", scope: !1, file: !1, line: 112, type: !240, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, i32, i32, i32)* @xvgr_line_props, variables: !242)
!240 = !DISubroutineType(types: !241)
!241 = !{null, !6, !5, !5, !5}
!242 = !{!243, !244, !245, !246}
!243 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "out", arg: 1, scope: !239, file: !1, line: 112, type: !6)
!244 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "NrSet", arg: 2, scope: !239, file: !1, line: 112, type: !5)
!245 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "LineStyle", arg: 3, scope: !239, file: !1, line: 112, type: !5)
!246 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "LineColor", arg: 4, scope: !239, file: !1, line: 112, type: !5)
!247 = !DISubprogram(name: "xvgr_box", scope: !1, file: !1, line: 122, type: !248, isLocal: false, isDefinition: true, scopeLine: 127, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, i32, float, float, float, float, i32, i32, i32, i32, i32, i32)* @xvgr_box, variables: !250)
!248 = !DISubroutineType(types: !249)
!249 = !{null, !6, !5, !215, !215, !215, !215, !5, !5, !5, !5, !5, !5}
!250 = !{!251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262}
!251 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "out", arg: 1, scope: !247, file: !1, line: 122, type: !6)
!252 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "LocType", arg: 2, scope: !247, file: !1, line: 123, type: !5)
!253 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xmin", arg: 3, scope: !247, file: !1, line: 124, type: !215)
!254 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ymin", arg: 4, scope: !247, file: !1, line: 124, type: !215)
!255 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "xmax", arg: 5, scope: !247, file: !1, line: 124, type: !215)
!256 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ymax", arg: 6, scope: !247, file: !1, line: 124, type: !215)
!257 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "LineStyle", arg: 7, scope: !247, file: !1, line: 125, type: !5)
!258 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "LineWidth", arg: 8, scope: !247, file: !1, line: 125, type: !5)
!259 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "LineColor", arg: 9, scope: !247, file: !1, line: 125, type: !5)
!260 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "BoxFill", arg: 10, scope: !247, file: !1, line: 126, type: !5)
!261 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "BoxColor", arg: 11, scope: !247, file: !1, line: 126, type: !5)
!262 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "BoxPattern", arg: 12, scope: !247, file: !1, line: 126, type: !5)
!263 = !DISubprogram(name: "lsq_y_ax", scope: !1, file: !1, line: 141, type: !264, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, float*, float*, float*)* @lsq_y_ax, variables: !267)
!264 = !DISubroutineType(types: !265)
!265 = !{null, !5, !266, !266, !266}
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64, align: 64)
!267 = !{!268, !269, !270, !271, !272, !273, !274}
!268 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 1, scope: !263, file: !1, line: 141, type: !5)
!269 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 2, scope: !263, file: !1, line: 141, type: !266)
!270 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 3, scope: !263, file: !1, line: 141, type: !266)
!271 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 4, scope: !263, file: !1, line: 141, type: !266)
!272 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !263, file: !1, line: 143, type: !5)
!273 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xx", scope: !263, file: !1, line: 144, type: !91)
!274 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "yx", scope: !263, file: !1, line: 144, type: !91)
!275 = !DISubprogram(name: "lsq_y_ax_b", scope: !1, file: !1, line: 154, type: !276, isLocal: false, isDefinition: true, scopeLine: 155, flags: DIFlagPrototyped, isOptimized: true, function: float (i32, float*, float*, float*, float*)* @lsq_y_ax_b, variables: !278)
!276 = !DISubroutineType(types: !277)
!277 = !{!215, !5, !266, !266, !266, !266}
!278 = !{!279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289}
!279 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "n", arg: 1, scope: !275, file: !1, line: 154, type: !5)
!280 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 2, scope: !275, file: !1, line: 154, type: !266)
!281 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 3, scope: !275, file: !1, line: 154, type: !266)
!282 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 4, scope: !275, file: !1, line: 154, type: !266)
!283 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 5, scope: !275, file: !1, line: 154, type: !266)
!284 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !275, file: !1, line: 156, type: !5)
!285 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "yx", scope: !275, file: !1, line: 157, type: !91)
!286 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "xx", scope: !275, file: !1, line: 157, type: !91)
!287 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sx", scope: !275, file: !1, line: 157, type: !91)
!288 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sy", scope: !275, file: !1, line: 157, type: !91)
!289 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "chi2", scope: !275, file: !1, line: 157, type: !91)
!290 = !DISubprogram(name: "read_xvg", scope: !1, file: !1, line: 225, type: !291, isLocal: false, isDefinition: true, scopeLine: 226, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, float***, i32*)* @read_xvg, variables: !296)
!291 = !DISubroutineType(types: !292)
!292 = !{!5, !35, !293, !295}
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64, align: 64)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64, align: 64)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!296 = !{!297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311}
!297 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fn", arg: 1, scope: !290, file: !1, line: 225, type: !35)
!298 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 2, scope: !290, file: !1, line: 225, type: !293)
!299 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ny", arg: 3, scope: !290, file: !1, line: 225, type: !295)
!300 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fp", scope: !290, file: !1, line: 227, type: !6)
!301 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptr", scope: !290, file: !1, line: 228, type: !35)
!302 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "base", scope: !290, file: !1, line: 229, type: !35)
!303 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fmt", scope: !290, file: !1, line: 230, type: !35)
!304 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !290, file: !1, line: 231, type: !5)
!305 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "line", scope: !290, file: !1, line: 231, type: !5)
!306 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nny", scope: !290, file: !1, line: 231, type: !5)
!307 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nx", scope: !290, file: !1, line: 231, type: !5)
!308 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "maxx", scope: !290, file: !1, line: 231, type: !5)
!309 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rval", scope: !290, file: !1, line: 231, type: !5)
!310 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lf", scope: !290, file: !1, line: 232, type: !91)
!311 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "yy", scope: !290, file: !1, line: 233, type: !294)
!312 = !DISubprogram(name: "write_xvg", scope: !1, file: !1, line: 292, type: !313, isLocal: false, isDefinition: true, scopeLine: 293, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i8*, i32, i32, float**, i8**)* @write_xvg, variables: !315)
!313 = !DISubroutineType(types: !314)
!314 = !{null, !35, !35, !5, !5, !294, !233}
!315 = !{!316, !317, !318, !319, !320, !321, !322, !323, !324}
!316 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fn", arg: 1, scope: !312, file: !1, line: 292, type: !35)
!317 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "title", arg: 2, scope: !312, file: !1, line: 292, type: !35)
!318 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nx", arg: 3, scope: !312, file: !1, line: 292, type: !5)
!319 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ny", arg: 4, scope: !312, file: !1, line: 292, type: !5)
!320 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "y", arg: 5, scope: !312, file: !1, line: 292, type: !294)
!321 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "leg", arg: 6, scope: !312, file: !1, line: 292, type: !233)
!322 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fp", scope: !312, file: !1, line: 294, type: !6)
!323 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !312, file: !1, line: 295, type: !5)
!324 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !312, file: !1, line: 295, type: !5)
!325 = !DISubprogram(name: "use_xmgr", scope: !1, file: !1, line: 45, type: !326, isLocal: true, isDefinition: true, scopeLine: 46, isOptimized: true, variables: !328)
!326 = !DISubroutineType(types: !327)
!327 = !{!5}
!328 = !{!329, !330}
!329 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "env", scope: !325, file: !1, line: 47, type: !35)
!330 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bXMGR", scope: !325, file: !1, line: 48, type: !5)
!331 = !DISubprogram(name: "sqr", scope: !332, file: !332, line: 197, type: !333, isLocal: true, isDefinition: true, scopeLine: 198, flags: DIFlagPrototyped, isOptimized: true, variables: !335)
!332 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/vec.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!333 = !DISubroutineType(types: !334)
!334 = !{!215, !215}
!335 = !{!336}
!336 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 1, scope: !331, file: !332, line: 197, type: !215)
!337 = !DISubprogram(name: "fgets3", scope: !1, file: !1, line: 179, type: !338, isLocal: true, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: true, variables: !340)
!338 = !DISubroutineType(types: !339)
!339 = !{!35, !6}
!340 = !{!341, !342, !343}
!341 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !337, file: !1, line: 179, type: !6)
!342 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !337, file: !1, line: 183, type: !35)
!343 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "slen", scope: !337, file: !1, line: 184, type: !5)
!344 = !DISubprogram(name: "wordcount", scope: !1, file: !1, line: 206, type: !345, isLocal: true, isDefinition: true, scopeLine: 207, flags: DIFlagPrototyped, isOptimized: true, variables: !347)
!345 = !DISubroutineType(types: !346)
!346 = !{!5, !35}
!347 = !{!348, !349, !350, !351, !355}
!348 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 1, scope: !344, file: !1, line: 206, type: !35)
!349 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !344, file: !1, line: 208, type: !5)
!350 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !344, file: !1, line: 208, type: !5)
!351 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "is", scope: !344, file: !1, line: 208, type: !352)
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 64, align: 32, elements: !353)
!353 = !{!354}
!354 = !DISubrange(count: 2)
!355 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cur", scope: !344, file: !1, line: 209, type: !5)
!356 = !DISubprogram(name: "isspace", scope: !357, file: !357, line: 267, type: !77, isLocal: false, isDefinition: true, scopeLine: 268, flags: DIFlagPrototyped, isOptimized: true, variables: !358)
!357 = !DIFile(filename: "/usr/include/ctype.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!358 = !{!359}
!359 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !356, file: !357, line: 267, type: !5)
!360 = !DISubprogram(name: "__istype", scope: !357, file: !357, line: 153, type: !361, isLocal: false, isDefinition: true, scopeLine: 154, flags: DIFlagPrototyped, isOptimized: true, variables: !365)
!361 = !DISubroutineType(types: !362)
!362 = !{!5, !363, !364}
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_ct_rune_t", file: !44, line: 70, baseType: !5)
!364 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!365 = !{!366, !367}
!366 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !360, file: !357, line: 153, type: !363)
!367 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_f", arg: 2, scope: !360, file: !357, line: 153, type: !364)
!368 = !DISubprogram(name: "isascii", scope: !357, file: !357, line: 135, type: !77, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, variables: !369)
!369 = !{!370}
!370 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !368, file: !357, line: 135, type: !5)
!371 = !{!372, !374, !376, !377}
!372 = !DIGlobalVariable(name: "LocTypeStr", scope: !0, file: !1, line: 119, type: !373, isLocal: true, isDefinition: true, variable: [2 x i8*]* @LocTypeStr)
!373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 128, align: 64, elements: !353)
!374 = !DIGlobalVariable(name: "BoxFillStr", scope: !0, file: !1, line: 120, type: !375, isLocal: true, isDefinition: true, variable: [3 x i8*]* @BoxFillStr)
!375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 192, align: 64, elements: !59)
!376 = !DIGlobalVariable(name: "ptr", scope: !337, file: !1, line: 181, type: !35, isLocal: true, isDefinition: true, variable: i8** @fgets3.ptr)
!377 = !DIGlobalVariable(name: "len", scope: !337, file: !1, line: 182, type: !5, isLocal: true, isDefinition: true, variable: i32* @fgets3.len)
!378 = !{i32 2, !"Dwarf Version", i32 2}
!379 = !{i32 2, !"Debug Info Version", i32 700000003}
!380 = !{i32 1, !"PIC Level", i32 2}
!381 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!382 = !DIExpression()
!383 = !DILocation(line: 348, column: 40, scope: !69)
!384 = !DILocation(line: 348, column: 50, scope: !69)
!385 = !DILocation(line: 349, column: 12, scope: !386)
!386 = distinct !DILexicalBlock(scope: !69, file: !8, line: 349, column: 6)
!387 = !DILocation(line: 349, column: 6, scope: !386)
!388 = !{!389, !393, i64 12}
!389 = !{!"__sFILE", !390, i64 0, !393, i64 8, !393, i64 12, !394, i64 16, !394, i64 18, !395, i64 24, !393, i64 40, !390, i64 48, !390, i64 56, !390, i64 64, !390, i64 72, !390, i64 80, !395, i64 88, !390, i64 104, !393, i64 112, !391, i64 116, !391, i64 119, !395, i64 120, !393, i64 136, !396, i64 144}
!390 = !{!"any pointer", !391, i64 0}
!391 = !{!"omnipotent char", !392, i64 0}
!392 = !{!"Simple C/C++ TBAA"}
!393 = !{!"int", !391, i64 0}
!394 = !{!"short", !391, i64 0}
!395 = !{!"__sbuf", !390, i64 0, !393, i64 8}
!396 = !{!"long long", !391, i64 0}
!397 = !DILocation(line: 349, column: 15, scope: !386)
!398 = !DILocation(line: 349, column: 20, scope: !386)
!399 = !DILocation(line: 350, column: 10, scope: !386)
!400 = !DILocation(line: 349, column: 38, scope: !386)
!401 = !{!389, !393, i64 40}
!402 = !DILocation(line: 349, column: 31, scope: !386)
!403 = !DILocation(line: 349, column: 59, scope: !386)
!404 = !DILocation(line: 349, column: 47, scope: !386)
!405 = !DILocation(line: 350, column: 23, scope: !386)
!406 = !DILocation(line: 350, column: 16, scope: !386)
!407 = !DILocation(line: 350, column: 18, scope: !386)
!408 = !{!389, !390, i64 0}
!409 = !DILocation(line: 350, column: 21, scope: !386)
!410 = !{!391, !391, i64 0}
!411 = !DILocation(line: 350, column: 3, scope: !386)
!412 = !DILocation(line: 352, column: 11, scope: !386)
!413 = !DILocation(line: 352, column: 3, scope: !386)
!414 = !DILocation(line: 353, column: 1, scope: !69)
!415 = !DILocation(line: 114, column: 15, scope: !75)
!416 = !DILocation(line: 116, column: 20, scope: !75)
!417 = !DILocation(line: 116, column: 12, scope: !75)
!418 = !DILocation(line: 116, column: 57, scope: !75)
!419 = !DILocation(line: 116, column: 45, scope: !75)
!420 = !DILocation(line: 116, column: 5, scope: !75)
!421 = !DILocation(line: 204, column: 53, scope: !81)
!422 = !DILocation(line: 205, column: 16, scope: !81)
!423 = !DILocation(line: 205, column: 23, scope: !81)
!424 = !DILocation(line: 205, column: 26, scope: !81)
!425 = !DILocation(line: 205, column: 47, scope: !81)
!426 = !DILocation(line: 205, column: 5, scope: !81)
!427 = !DILocation(line: 207, column: 54, scope: !88)
!428 = !DILocation(line: 208, column: 16, scope: !88)
!429 = !DILocation(line: 208, column: 23, scope: !88)
!430 = !DILocation(line: 208, column: 26, scope: !88)
!431 = !DILocation(line: 208, column: 46, scope: !88)
!432 = !DILocation(line: 208, column: 5, scope: !88)
!433 = !DILocation(line: 210, column: 59, scope: !94)
!434 = !DILocation(line: 211, column: 16, scope: !94)
!435 = !DILocation(line: 211, column: 23, scope: !94)
!436 = !DILocation(line: 211, column: 26, scope: !94)
!437 = !DILocation(line: 211, column: 47, scope: !94)
!438 = !DILocation(line: 211, column: 5, scope: !94)
!439 = !DILocation(line: 213, column: 50, scope: !100)
!440 = !DILocation(line: 214, column: 12, scope: !100)
!441 = !DILocation(line: 214, column: 33, scope: !100)
!442 = !DILocation(line: 214, column: 5, scope: !100)
!443 = !DILocation(line: 216, column: 51, scope: !103)
!444 = !DILocation(line: 217, column: 12, scope: !103)
!445 = !DILocation(line: 217, column: 32, scope: !103)
!446 = !DILocation(line: 217, column: 5, scope: !103)
!447 = !DILocation(line: 219, column: 56, scope: !106)
!448 = !DILocation(line: 220, column: 12, scope: !106)
!449 = !DILocation(line: 220, column: 33, scope: !106)
!450 = !DILocation(line: 220, column: 5, scope: !106)
!451 = !DILocation(line: 222, column: 50, scope: !109)
!452 = !DILocation(line: 223, column: 16, scope: !109)
!453 = !DILocation(line: 223, column: 5, scope: !109)
!454 = !DILocation(line: 225, column: 51, scope: !112)
!455 = !DILocation(line: 226, column: 16, scope: !112)
!456 = !DILocation(line: 226, column: 5, scope: !112)
!457 = !DILocation(line: 228, column: 56, scope: !115)
!458 = !DILocation(line: 229, column: 16, scope: !115)
!459 = !DILocation(line: 229, column: 5, scope: !115)
!460 = !DILocation(line: 231, column: 52, scope: !118)
!461 = !DILocation(line: 232, column: 44, scope: !118)
!462 = !DILocation(line: 233, column: 13, scope: !118)
!463 = !DILocation(line: 234, column: 26, scope: !118)
!464 = !DILocation(line: 234, column: 5, scope: !118)
!465 = !DILocation(line: 236, column: 53, scope: !127)
!466 = !DILocation(line: 237, column: 51, scope: !127)
!467 = !DILocation(line: 238, column: 13, scope: !127)
!468 = !DILocation(line: 239, column: 26, scope: !127)
!469 = !DILocation(line: 239, column: 12, scope: !127)
!470 = !DILocation(line: 239, column: 5, scope: !127)
!471 = !DILocation(line: 242, column: 58, scope: !136)
!472 = !DILocation(line: 246, column: 7, scope: !136)
!473 = !DILocation(line: 248, column: 26, scope: !136)
!474 = !DILocation(line: 248, column: 33, scope: !136)
!475 = !DILocation(line: 248, column: 5, scope: !136)
!476 = !DILocation(line: 257, column: 53, scope: !149)
!477 = !DILocation(line: 204, column: 53, scope: !81, inlinedAt: !478)
!478 = distinct !DILocation(line: 258, column: 12, scope: !149)
!479 = !DILocation(line: 205, column: 16, scope: !81, inlinedAt: !478)
!480 = !DILocation(line: 205, column: 47, scope: !81, inlinedAt: !478)
!481 = !DILocation(line: 205, column: 23, scope: !81, inlinedAt: !478)
!482 = !DILocation(line: 258, column: 60, scope: !149)
!483 = !DILocation(line: 258, column: 36, scope: !149)
!484 = !DILocation(line: 258, column: 5, scope: !149)
!485 = !DILocation(line: 260, column: 54, scope: !152)
!486 = !DILocation(line: 207, column: 54, scope: !88, inlinedAt: !487)
!487 = distinct !DILocation(line: 261, column: 12, scope: !152)
!488 = !DILocation(line: 208, column: 16, scope: !88, inlinedAt: !487)
!489 = !DILocation(line: 208, column: 46, scope: !88, inlinedAt: !487)
!490 = !DILocation(line: 208, column: 23, scope: !88, inlinedAt: !487)
!491 = !DILocation(line: 261, column: 59, scope: !152)
!492 = !DILocation(line: 261, column: 36, scope: !152)
!493 = !DILocation(line: 261, column: 5, scope: !152)
!494 = !DILocation(line: 263, column: 59, scope: !155)
!495 = !DILocation(line: 210, column: 59, scope: !94, inlinedAt: !496)
!496 = distinct !DILocation(line: 264, column: 12, scope: !155)
!497 = !DILocation(line: 211, column: 16, scope: !94, inlinedAt: !496)
!498 = !DILocation(line: 211, column: 47, scope: !94, inlinedAt: !496)
!499 = !DILocation(line: 211, column: 23, scope: !94, inlinedAt: !496)
!500 = !DILocation(line: 264, column: 60, scope: !155)
!501 = !DILocation(line: 264, column: 36, scope: !155)
!502 = !DILocation(line: 264, column: 5, scope: !155)
!503 = !DILocation(line: 642, column: 45, scope: !158)
!504 = !DILocation(line: 642, column: 57, scope: !158)
!505 = !DILocation(line: 642, column: 72, scope: !158)
!506 = !DILocation(line: 643, column: 27, scope: !158)
!507 = !DILocation(line: 643, column: 37, scope: !158)
!508 = !DILocation(line: 644, column: 23, scope: !158)
!509 = !DILocation(line: 644, column: 13, scope: !158)
!510 = !{!511, !511, i64 0}
!511 = !{!"float", !391, i64 0}
!512 = !DILocation(line: 644, column: 51, scope: !158)
!513 = !DILocation(line: 644, column: 41, scope: !158)
!514 = !DILocation(line: 645, column: 1, scope: !158)
!515 = !DILocation(line: 647, column: 45, scope: !172)
!516 = !DILocation(line: 647, column: 58, scope: !172)
!517 = !DILocation(line: 647, column: 74, scope: !172)
!518 = !DILocation(line: 648, column: 28, scope: !172)
!519 = !DILocation(line: 648, column: 38, scope: !172)
!520 = !DIExpression(DW_OP_bit_piece, 0, 64)
!521 = !DIExpression(DW_OP_bit_piece, 64, 64)
!522 = !DILocation(line: 649, column: 13, scope: !172)
!523 = !{!524, !524, i64 0}
!524 = !{!"double", !391, i64 0}
!525 = !DILocation(line: 649, column: 41, scope: !172)
!526 = !DILocation(line: 650, column: 1, scope: !172)
!527 = !DILocation(line: 652, column: 47, scope: !186)
!528 = !DILocation(line: 652, column: 59, scope: !186)
!529 = !DILocation(line: 652, column: 74, scope: !186)
!530 = !DILocation(line: 653, column: 27, scope: !186)
!531 = !DILocation(line: 653, column: 37, scope: !186)
!532 = !DILocation(line: 654, column: 23, scope: !186)
!533 = !DILocation(line: 654, column: 13, scope: !186)
!534 = !DILocation(line: 654, column: 51, scope: !186)
!535 = !DILocation(line: 654, column: 41, scope: !186)
!536 = !DILocation(line: 655, column: 1, scope: !186)
!537 = !DILocation(line: 657, column: 47, scope: !192)
!538 = !DILocation(line: 657, column: 60, scope: !192)
!539 = !DILocation(line: 657, column: 76, scope: !192)
!540 = !DILocation(line: 658, column: 28, scope: !192)
!541 = !DILocation(line: 658, column: 38, scope: !192)
!542 = !DILocation(line: 659, column: 13, scope: !192)
!543 = !DILocation(line: 659, column: 41, scope: !192)
!544 = !DILocation(line: 660, column: 1, scope: !192)
!545 = !DILocation(line: 57, column: 22, scope: !198)
!546 = !DILocation(line: 57, column: 31, scope: !198)
!547 = !DILocation(line: 57, column: 43, scope: !198)
!548 = !DILocation(line: 57, column: 55, scope: !198)
!549 = !DILocation(line: 62, column: 16, scope: !198)
!550 = !DILocation(line: 59, column: 9, scope: !198)
!551 = !DILocation(line: 63, column: 50, scope: !198)
!552 = !DILocation(line: 63, column: 3, scope: !198)
!553 = !DILocation(line: 64, column: 3, scope: !198)
!554 = !DILocation(line: 65, column: 25, scope: !198)
!555 = !DILocation(line: 65, column: 3, scope: !198)
!556 = !DILocation(line: 60, column: 10, scope: !198)
!557 = !DILocation(line: 66, column: 3, scope: !198)
!558 = !DILocation(line: 67, column: 45, scope: !198)
!559 = !DILocation(line: 67, column: 3, scope: !198)
!560 = !DILocation(line: 68, column: 3, scope: !198)
!561 = !DILocation(line: 69, column: 3, scope: !198)
!562 = !DILocation(line: 70, column: 3, scope: !198)
!563 = !DILocation(line: 71, column: 3, scope: !198)
!564 = !DILocation(line: 75, column: 5, scope: !565)
!565 = distinct !DILexicalBlock(scope: !198, file: !1, line: 72, column: 7)
!566 = !DILocation(line: 77, column: 3, scope: !198)
!567 = !DILocation(line: 80, column: 22, scope: !212)
!568 = !DILocation(line: 80, column: 31, scope: !212)
!569 = !DILocation(line: 80, column: 41, scope: !212)
!570 = !DILocation(line: 80, column: 51, scope: !212)
!571 = !DILocation(line: 80, column: 61, scope: !212)
!572 = !DILocation(line: 82, column: 41, scope: !212)
!573 = !DILocation(line: 82, column: 46, scope: !212)
!574 = !DILocation(line: 82, column: 51, scope: !212)
!575 = !DILocation(line: 82, column: 56, scope: !212)
!576 = !DILocation(line: 82, column: 3, scope: !212)
!577 = !DILocation(line: 83, column: 1, scope: !212)
!578 = !DILocation(line: 85, column: 23, scope: !223)
!579 = !DILocation(line: 85, column: 32, scope: !223)
!580 = !DILocation(line: 85, column: 42, scope: !223)
!581 = !DILocation(line: 85, column: 52, scope: !223)
!582 = !DILocation(line: 85, column: 62, scope: !223)
!583 = !DILocation(line: 90, column: 24, scope: !223)
!584 = !DILocation(line: 90, column: 29, scope: !223)
!585 = !DILocation(line: 90, column: 34, scope: !223)
!586 = !DILocation(line: 90, column: 39, scope: !223)
!587 = !DILocation(line: 87, column: 3, scope: !223)
!588 = !DILocation(line: 91, column: 1, scope: !223)
!589 = !DILocation(line: 93, column: 24, scope: !230)
!590 = !DILocation(line: 93, column: 32, scope: !230)
!591 = !DILocation(line: 93, column: 44, scope: !230)
!592 = !DILocation(line: 80, column: 22, scope: !212, inlinedAt: !593)
!593 = distinct !DILocation(line: 97, column: 3, scope: !230)
!594 = !DILocation(line: 80, column: 31, scope: !212, inlinedAt: !593)
!595 = !DILocation(line: 80, column: 41, scope: !212, inlinedAt: !593)
!596 = !DILocation(line: 80, column: 51, scope: !212, inlinedAt: !593)
!597 = !DILocation(line: 80, column: 61, scope: !212, inlinedAt: !593)
!598 = !DILocation(line: 82, column: 3, scope: !212, inlinedAt: !593)
!599 = !DILocation(line: 98, column: 3, scope: !230)
!600 = !DILocation(line: 99, column: 3, scope: !230)
!601 = !DILocation(line: 100, column: 3, scope: !230)
!602 = !DILocation(line: 101, column: 3, scope: !230)
!603 = !DILocation(line: 102, column: 3, scope: !230)
!604 = !DILocation(line: 95, column: 7, scope: !230)
!605 = !DILocation(line: 103, column: 14, scope: !606)
!606 = distinct !DILexicalBlock(scope: !607, file: !1, line: 103, column: 3)
!607 = distinct !DILexicalBlock(scope: !230, file: !1, line: 103, column: 3)
!608 = !DILocation(line: 103, column: 3, scope: !607)
!609 = !DILocation(line: 104, column: 9, scope: !610)
!610 = distinct !DILexicalBlock(scope: !606, file: !1, line: 104, column: 9)
!611 = !{!390, !390, i64 0}
!612 = !DILocation(line: 104, column: 9, scope: !606)
!613 = !DILocation(line: 108, column: 2, scope: !614)
!614 = distinct !DILexicalBlock(scope: !615, file: !1, line: 105, column: 11)
!615 = distinct !DILexicalBlock(scope: !610, file: !1, line: 104, column: 21)
!616 = !DILocation(line: 110, column: 1, scope: !230)
!617 = !DILocation(line: 112, column: 28, scope: !239)
!618 = !DILocation(line: 112, column: 37, scope: !239)
!619 = !DILocation(line: 112, column: 48, scope: !239)
!620 = !DILocation(line: 112, column: 63, scope: !239)
!621 = !DILocation(line: 114, column: 3, scope: !239)
!622 = !DILocation(line: 115, column: 3, scope: !239)
!623 = !DILocation(line: 116, column: 3, scope: !239)
!624 = !DILocation(line: 117, column: 1, scope: !239)
!625 = !DILocation(line: 122, column: 21, scope: !247)
!626 = !DILocation(line: 123, column: 12, scope: !247)
!627 = !DILocation(line: 124, column: 13, scope: !247)
!628 = !DILocation(line: 124, column: 23, scope: !247)
!629 = !DILocation(line: 124, column: 33, scope: !247)
!630 = !DILocation(line: 124, column: 43, scope: !247)
!631 = !DILocation(line: 125, column: 12, scope: !247)
!632 = !DILocation(line: 125, column: 26, scope: !247)
!633 = !DILocation(line: 125, column: 40, scope: !247)
!634 = !DILocation(line: 126, column: 12, scope: !247)
!635 = !DILocation(line: 126, column: 24, scope: !247)
!636 = !DILocation(line: 126, column: 37, scope: !247)
!637 = !DILocation(line: 128, column: 3, scope: !247)
!638 = !DILocation(line: 129, column: 3, scope: !247)
!639 = !DILocation(line: 130, column: 39, scope: !247)
!640 = !DILocation(line: 130, column: 3, scope: !247)
!641 = !DILocation(line: 131, column: 43, scope: !247)
!642 = !DILocation(line: 131, column: 48, scope: !247)
!643 = !DILocation(line: 131, column: 53, scope: !247)
!644 = !DILocation(line: 131, column: 58, scope: !247)
!645 = !DILocation(line: 131, column: 3, scope: !247)
!646 = !DILocation(line: 132, column: 3, scope: !247)
!647 = !DILocation(line: 133, column: 3, scope: !247)
!648 = !DILocation(line: 134, column: 3, scope: !247)
!649 = !DILocation(line: 135, column: 36, scope: !247)
!650 = !DILocation(line: 135, column: 3, scope: !247)
!651 = !DILocation(line: 136, column: 3, scope: !247)
!652 = !DILocation(line: 137, column: 3, scope: !247)
!653 = !DILocation(line: 138, column: 3, scope: !247)
!654 = !DILocation(line: 139, column: 1, scope: !247)
!655 = !DILocation(line: 141, column: 19, scope: !263)
!656 = !DILocation(line: 141, column: 27, scope: !263)
!657 = !DILocation(line: 141, column: 37, scope: !263)
!658 = !DILocation(line: 141, column: 48, scope: !263)
!659 = !DILocation(line: 144, column: 10, scope: !263)
!660 = !DILocation(line: 144, column: 13, scope: !263)
!661 = !DILocation(line: 143, column: 10, scope: !263)
!662 = !DILocation(line: 147, column: 14, scope: !663)
!663 = distinct !DILexicalBlock(scope: !664, file: !1, line: 147, column: 3)
!664 = distinct !DILexicalBlock(scope: !263, file: !1, line: 147, column: 3)
!665 = !DILocation(line: 147, column: 3, scope: !664)
!666 = !DILocation(line: 148, column: 9, scope: !667)
!667 = distinct !DILexicalBlock(scope: !663, file: !1, line: 147, column: 23)
!668 = !DILocation(line: 148, column: 14, scope: !667)
!669 = !DILocation(line: 148, column: 13, scope: !667)
!670 = !DILocation(line: 148, column: 7, scope: !667)
!671 = !DILocation(line: 151, column: 8, scope: !263)
!672 = !DILocation(line: 151, column: 6, scope: !263)
!673 = !DILocation(line: 151, column: 5, scope: !263)
!674 = !DILocation(line: 152, column: 1, scope: !263)
!675 = !DILocation(line: 154, column: 21, scope: !275)
!676 = !DILocation(line: 154, column: 29, scope: !275)
!677 = !DILocation(line: 154, column: 39, scope: !275)
!678 = !DILocation(line: 154, column: 50, scope: !275)
!679 = !DILocation(line: 154, column: 59, scope: !275)
!680 = !DILocation(line: 157, column: 19, scope: !275)
!681 = !DILocation(line: 157, column: 16, scope: !275)
!682 = !DILocation(line: 157, column: 13, scope: !275)
!683 = !DILocation(line: 157, column: 10, scope: !275)
!684 = !DILocation(line: 156, column: 10, scope: !275)
!685 = !DILocation(line: 160, column: 14, scope: !686)
!686 = distinct !DILexicalBlock(scope: !687, file: !1, line: 160, column: 3)
!687 = distinct !DILexicalBlock(scope: !275, file: !1, line: 160, column: 3)
!688 = !DILocation(line: 160, column: 3, scope: !687)
!689 = !DILocation(line: 161, column: 9, scope: !690)
!690 = distinct !DILexicalBlock(scope: !686, file: !1, line: 160, column: 23)
!691 = !DILocation(line: 161, column: 14, scope: !690)
!692 = !DILocation(line: 162, column: 13, scope: !690)
!693 = !DILocation(line: 162, column: 9, scope: !690)
!694 = !DILocation(line: 162, column: 7, scope: !690)
!695 = !DILocation(line: 164, column: 9, scope: !690)
!696 = !DILocation(line: 164, column: 7, scope: !690)
!697 = !DILocation(line: 166, column: 7, scope: !275)
!698 = !DILocation(line: 166, column: 8, scope: !275)
!699 = !DILocation(line: 166, column: 14, scope: !275)
!700 = !DILocation(line: 166, column: 11, scope: !275)
!701 = !DILocation(line: 166, column: 21, scope: !275)
!702 = !DILocation(line: 166, column: 27, scope: !275)
!703 = !DILocation(line: 166, column: 24, scope: !275)
!704 = !DILocation(line: 166, column: 18, scope: !275)
!705 = !DILocation(line: 166, column: 6, scope: !275)
!706 = !DILocation(line: 166, column: 5, scope: !275)
!707 = !DILocation(line: 167, column: 10, scope: !275)
!708 = !DILocation(line: 167, column: 14, scope: !275)
!709 = !DILocation(line: 167, column: 9, scope: !275)
!710 = !DILocation(line: 167, column: 18, scope: !275)
!711 = !DILocation(line: 167, column: 6, scope: !275)
!712 = !DILocation(line: 167, column: 5, scope: !275)
!713 = !DILocation(line: 157, column: 22, scope: !275)
!714 = !DILocation(line: 170, column: 3, scope: !715)
!715 = distinct !DILexicalBlock(scope: !275, file: !1, line: 170, column: 3)
!716 = !DILocation(line: 171, column: 22, scope: !717)
!717 = distinct !DILexicalBlock(scope: !715, file: !1, line: 170, column: 3)
!718 = !DILocation(line: 171, column: 15, scope: !717)
!719 = !DILocation(line: 171, column: 26, scope: !717)
!720 = !DILocation(line: 171, column: 25, scope: !717)
!721 = !DILocation(line: 171, column: 30, scope: !717)
!722 = !DILocation(line: 171, column: 19, scope: !717)
!723 = !DILocation(line: 197, column: 29, scope: !331, inlinedAt: !724)
!724 = distinct !DILocation(line: 171, column: 11, scope: !717)
!725 = !DILocation(line: 199, column: 12, scope: !331, inlinedAt: !724)
!726 = !DILocation(line: 171, column: 11, scope: !717)
!727 = !DILocation(line: 171, column: 9, scope: !717)
!728 = !DILocation(line: 173, column: 9, scope: !729)
!729 = distinct !DILexicalBlock(scope: !275, file: !1, line: 173, column: 7)
!730 = !DILocation(line: 173, column: 7, scope: !275)
!731 = !DILocation(line: 174, column: 24, scope: !729)
!732 = !DILocation(line: 174, column: 22, scope: !729)
!733 = !DILocation(line: 174, column: 21, scope: !729)
!734 = !DILocation(line: 174, column: 12, scope: !729)
!735 = !DILocation(line: 174, column: 5, scope: !729)
!736 = !DILocation(line: 177, column: 1, scope: !275)
!737 = !DILocation(line: 225, column: 20, scope: !290)
!738 = !DILocation(line: 225, column: 31, scope: !290)
!739 = !DILocation(line: 225, column: 38, scope: !290)
!740 = !DILocation(line: 229, column: 11, scope: !290)
!741 = !DILocation(line: 230, column: 11, scope: !290)
!742 = !DILocation(line: 231, column: 12, scope: !290)
!743 = !DILocation(line: 233, column: 12, scope: !290)
!744 = !DILocation(line: 235, column: 8, scope: !290)
!745 = !{!393, !393, i64 0}
!746 = !DILocation(line: 231, column: 19, scope: !290)
!747 = !DILocation(line: 231, column: 23, scope: !290)
!748 = !DILocation(line: 231, column: 26, scope: !290)
!749 = !DILocation(line: 239, column: 10, scope: !290)
!750 = !DILocation(line: 227, column: 11, scope: !290)
!751 = !DILocation(line: 208, column: 11, scope: !344, inlinedAt: !752)
!752 = distinct !DILocation(line: 245, column: 16, scope: !753)
!753 = distinct !DILexicalBlock(scope: !754, file: !1, line: 244, column: 21)
!754 = distinct !DILexicalBlock(scope: !755, file: !1, line: 244, column: 11)
!755 = distinct !DILexicalBlock(scope: !756, file: !1, line: 243, column: 45)
!756 = distinct !DILexicalBlock(scope: !757, file: !1, line: 243, column: 9)
!757 = distinct !DILexicalBlock(scope: !290, file: !1, line: 240, column: 38)
!758 = !DILocation(line: 206, column: 28, scope: !344, inlinedAt: !752)
!759 = !DILocation(line: 240, column: 3, scope: !290)
!760 = !DILocation(line: 179, column: 27, scope: !337, inlinedAt: !761)
!761 = distinct !DILocation(line: 240, column: 17, scope: !290)
!762 = !DILocation(line: 186, column: 7, scope: !763, inlinedAt: !761)
!763 = distinct !DILexicalBlock(scope: !337, file: !1, line: 186, column: 7)
!764 = !DILocation(line: 186, column: 10, scope: !763, inlinedAt: !761)
!765 = !DILocation(line: 186, column: 7, scope: !337, inlinedAt: !761)
!766 = !DILocation(line: 187, column: 5, scope: !763, inlinedAt: !761)
!767 = !DILocation(line: 240, column: 17, scope: !290)
!768 = !DILocation(line: 189, column: 17, scope: !769, inlinedAt: !761)
!769 = distinct !DILexicalBlock(scope: !337, file: !1, line: 189, column: 7)
!770 = !DILocation(line: 189, column: 20, scope: !769, inlinedAt: !761)
!771 = !DILocation(line: 189, column: 7, scope: !769, inlinedAt: !761)
!772 = !DILocation(line: 189, column: 27, scope: !769, inlinedAt: !761)
!773 = !DILocation(line: 189, column: 7, scope: !337, inlinedAt: !761)
!774 = !DILocation(line: 191, column: 7, scope: !337, inlinedAt: !761)
!775 = !DILocation(line: 183, column: 9, scope: !337, inlinedAt: !761)
!776 = !DILocation(line: 192, column: 11, scope: !337, inlinedAt: !761)
!777 = !DILocation(line: 192, column: 28, scope: !337, inlinedAt: !761)
!778 = !DILocation(line: 192, column: 37, scope: !337, inlinedAt: !761)
!779 = !DILocation(line: 192, column: 42, scope: !337, inlinedAt: !761)
!780 = !DILocation(line: 192, column: 41, scope: !337, inlinedAt: !761)
!781 = !DILocation(line: 192, column: 3, scope: !337, inlinedAt: !761)
!782 = !DILocation(line: 194, column: 9, scope: !783, inlinedAt: !761)
!783 = distinct !DILexicalBlock(scope: !337, file: !1, line: 192, column: 53)
!784 = !DILocation(line: 196, column: 5, scope: !783, inlinedAt: !761)
!785 = !DILocation(line: 197, column: 16, scope: !786, inlinedAt: !761)
!786 = distinct !DILexicalBlock(scope: !783, file: !1, line: 197, column: 9)
!787 = !DILocation(line: 197, column: 9, scope: !786, inlinedAt: !761)
!788 = !DILocation(line: 197, column: 30, scope: !786, inlinedAt: !761)
!789 = !DILocation(line: 197, column: 9, scope: !783, inlinedAt: !761)
!790 = !DILocation(line: 195, column: 9, scope: !783, inlinedAt: !761)
!791 = !DILocation(line: 192, column: 18, scope: !337, inlinedAt: !761)
!792 = !DILocation(line: 200, column: 17, scope: !337, inlinedAt: !761)
!793 = !DILocation(line: 200, column: 10, scope: !337, inlinedAt: !761)
!794 = !DILocation(line: 201, column: 7, scope: !795, inlinedAt: !761)
!795 = distinct !DILexicalBlock(scope: !337, file: !1, line: 201, column: 7)
!796 = !DILocation(line: 201, column: 19, scope: !795, inlinedAt: !761)
!797 = !DILocation(line: 201, column: 7, scope: !337, inlinedAt: !761)
!798 = !DILocation(line: 202, column: 17, scope: !795, inlinedAt: !761)
!799 = !DILocation(line: 203, column: 10, scope: !337, inlinedAt: !761)
!800 = !DILocation(line: 202, column: 5, scope: !795, inlinedAt: !761)
!801 = !DILocation(line: 228, column: 11, scope: !290)
!802 = !DILocation(line: 240, column: 29, scope: !290)
!803 = !DILocation(line: 241, column: 9, scope: !757)
!804 = !DILocation(line: 242, column: 5, scope: !757)
!805 = !DILocation(line: 243, column: 10, scope: !756)
!806 = !DILocation(line: 243, column: 25, scope: !756)
!807 = !DILocation(line: 244, column: 15, scope: !754)
!808 = !DILocation(line: 244, column: 11, scope: !755)
!809 = !DILocation(line: 209, column: 7, scope: !344, inlinedAt: !752)
!810 = !DILocation(line: 212, column: 19, scope: !811, inlinedAt: !752)
!811 = distinct !DILexicalBlock(scope: !344, file: !1, line: 212, column: 7)
!812 = !DILocation(line: 212, column: 7, scope: !344, inlinedAt: !752)
!813 = !DILocation(line: 223, column: 1, scope: !344, inlinedAt: !752)
!814 = !DILocation(line: 245, column: 8, scope: !753)
!815 = !DILocation(line: 247, column: 6, scope: !753)
!816 = !DILocation(line: 245, column: 16, scope: !753)
!817 = !DILocation(line: 153, column: 47, scope: !360, inlinedAt: !818)
!818 = distinct !DILocation(line: 269, column: 10, scope: !356, inlinedAt: !819)
!819 = distinct !DILocation(line: 217, column: 15, scope: !820, inlinedAt: !752)
!820 = distinct !DILexicalBlock(scope: !821, file: !1, line: 216, column: 35)
!821 = distinct !DILexicalBlock(scope: !822, file: !1, line: 216, column: 3)
!822 = distinct !DILexicalBlock(scope: !344, file: !1, line: 216, column: 3)
!823 = !DILocation(line: 158, column: 10, scope: !360, inlinedAt: !818)
!824 = !DILocation(line: 158, column: 27, scope: !360, inlinedAt: !818)
!825 = !DILocation(line: 158, column: 25, scope: !360, inlinedAt: !818)
!826 = !DILocation(line: 216, column: 13, scope: !821, inlinedAt: !752)
!827 = !DILocation(line: 159, column: 7, scope: !360, inlinedAt: !818)
!828 = !DILocation(line: 217, column: 15, scope: !820, inlinedAt: !752)
!829 = !DILocation(line: 269, column: 10, scope: !356, inlinedAt: !819)
!830 = !DILocation(line: 158, column: 24, scope: !360, inlinedAt: !818)
!831 = !DILocation(line: 217, column: 5, scope: !820, inlinedAt: !752)
!832 = !DILocation(line: 217, column: 13, scope: !820, inlinedAt: !752)
!833 = !DILocation(line: 218, column: 12, scope: !834, inlinedAt: !752)
!834 = distinct !DILexicalBlock(scope: !820, file: !1, line: 218, column: 9)
!835 = !DILocation(line: 218, column: 22, scope: !834, inlinedAt: !752)
!836 = !DILocation(line: 218, column: 18, scope: !834, inlinedAt: !752)
!837 = !DILocation(line: 220, column: 9, scope: !820, inlinedAt: !752)
!838 = !DILocation(line: 218, column: 34, scope: !834, inlinedAt: !752)
!839 = !DILocation(line: 218, column: 9, scope: !820, inlinedAt: !752)
!840 = !DILocation(line: 216, column: 3, scope: !822, inlinedAt: !752)
!841 = !DILocation(line: 216, column: 20, scope: !821, inlinedAt: !752)
!842 = !DILocation(line: 247, column: 10, scope: !843)
!843 = distinct !DILexicalBlock(scope: !753, file: !1, line: 247, column: 6)
!844 = !DILocation(line: 249, column: 2, scope: !753)
!845 = !DILocation(line: 250, column: 2, scope: !753)
!846 = !DILocation(line: 251, column: 2, scope: !753)
!847 = !DILocation(line: 252, column: 7, scope: !753)
!848 = !DILocation(line: 254, column: 14, scope: !849)
!849 = distinct !DILexicalBlock(scope: !755, file: !1, line: 254, column: 11)
!850 = !DILocation(line: 254, column: 11, scope: !755)
!851 = !DILocation(line: 255, column: 6, scope: !852)
!852 = distinct !DILexicalBlock(scope: !849, file: !1, line: 254, column: 23)
!853 = !DILocation(line: 231, column: 10, scope: !290)
!854 = !DILocation(line: 256, column: 13, scope: !855)
!855 = distinct !DILexicalBlock(scope: !856, file: !1, line: 256, column: 2)
!856 = distinct !DILexicalBlock(scope: !852, file: !1, line: 256, column: 2)
!857 = !DILocation(line: 256, column: 2, scope: !856)
!858 = !DILocation(line: 260, column: 15, scope: !755)
!859 = !DILocation(line: 261, column: 15, scope: !755)
!860 = !DILocation(line: 264, column: 7, scope: !861)
!861 = distinct !DILexicalBlock(scope: !755, file: !1, line: 264, column: 7)
!862 = !DILocation(line: 257, column: 4, scope: !855)
!863 = !DILocation(line: 264, column: 18, scope: !864)
!864 = distinct !DILexicalBlock(scope: !861, file: !1, line: 264, column: 7)
!865 = !DILocation(line: 272, column: 2, scope: !866)
!866 = distinct !DILexicalBlock(scope: !864, file: !1, line: 264, column: 30)
!867 = !DILocation(line: 273, column: 2, scope: !866)
!868 = !DILocation(line: 265, column: 2, scope: !866)
!869 = !DILocation(line: 266, column: 2, scope: !866)
!870 = !DILocation(line: 232, column: 10, scope: !290)
!871 = !DILocation(line: 267, column: 9, scope: !866)
!872 = !DILocation(line: 231, column: 31, scope: !290)
!873 = !DILocation(line: 269, column: 20, scope: !874)
!874 = distinct !DILexicalBlock(scope: !866, file: !1, line: 269, column: 6)
!875 = !DILocation(line: 271, column: 14, scope: !866)
!876 = !DILocation(line: 271, column: 2, scope: !866)
!877 = !DILocation(line: 271, column: 12, scope: !866)
!878 = !DILocation(line: 274, column: 2, scope: !866)
!879 = !DILocation(line: 276, column: 13, scope: !880)
!880 = distinct !DILexicalBlock(scope: !755, file: !1, line: 276, column: 11)
!881 = !DILocation(line: 276, column: 11, scope: !755)
!882 = !DILocation(line: 277, column: 10, scope: !883)
!883 = distinct !DILexicalBlock(scope: !880, file: !1, line: 276, column: 21)
!884 = !DILocation(line: 277, column: 2, scope: !883)
!885 = !DILocation(line: 279, column: 11, scope: !886)
!886 = distinct !DILexicalBlock(scope: !887, file: !1, line: 279, column: 2)
!887 = distinct !DILexicalBlock(scope: !883, file: !1, line: 279, column: 2)
!888 = !DILocation(line: 279, column: 2, scope: !887)
!889 = !DILocation(line: 280, column: 4, scope: !886)
!890 = !DILocation(line: 280, column: 14, scope: !886)
!891 = !DILocation(line: 283, column: 5, scope: !755)
!892 = !DILocation(line: 285, column: 3, scope: !290)
!893 = !DILocation(line: 287, column: 6, scope: !290)
!894 = !DILocation(line: 289, column: 3, scope: !290)
!895 = !DILocation(line: 290, column: 1, scope: !290)
!896 = !DILocation(line: 292, column: 22, scope: !312)
!897 = !DILocation(line: 292, column: 31, scope: !312)
!898 = !DILocation(line: 292, column: 41, scope: !312)
!899 = !DILocation(line: 292, column: 48, scope: !312)
!900 = !DILocation(line: 292, column: 58, scope: !312)
!901 = !DILocation(line: 292, column: 67, scope: !312)
!902 = !DILocation(line: 297, column: 6, scope: !312)
!903 = !DILocation(line: 294, column: 9, scope: !312)
!904 = !DILocation(line: 298, column: 7, scope: !905)
!905 = distinct !DILexicalBlock(scope: !312, file: !1, line: 298, column: 7)
!906 = !DILocation(line: 298, column: 7, scope: !312)
!907 = !DILocation(line: 299, column: 22, scope: !905)
!908 = !DILocation(line: 299, column: 5, scope: !905)
!909 = !DILocation(line: 300, column: 14, scope: !910)
!910 = distinct !DILexicalBlock(scope: !911, file: !1, line: 300, column: 3)
!911 = distinct !DILexicalBlock(scope: !312, file: !1, line: 300, column: 3)
!912 = !DILocation(line: 300, column: 3, scope: !911)
!913 = !DILocation(line: 301, column: 16, scope: !914)
!914 = distinct !DILexicalBlock(scope: !915, file: !1, line: 301, column: 5)
!915 = distinct !DILexicalBlock(scope: !916, file: !1, line: 301, column: 5)
!916 = distinct !DILexicalBlock(scope: !910, file: !1, line: 300, column: 25)
!917 = !DILocation(line: 301, column: 5, scope: !915)
!918 = !DILocation(line: 302, column: 29, scope: !919)
!919 = distinct !DILexicalBlock(scope: !914, file: !1, line: 301, column: 27)
!920 = !DILocation(line: 302, column: 7, scope: !919)
!921 = !DILocation(line: 304, column: 5, scope: !916)
!922 = !DILocation(line: 306, column: 3, scope: !312)
!923 = !DILocation(line: 307, column: 1, scope: !312)
