; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/rmpbc.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.multi_graph = type { i32, %struct.t_graph* }
%struct.t_graph = type { i32, i32, i32, i32, i32, i32*, i32**, [3 x i32]* }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%union.anon = type { float }
%union.anon.0 = type { double }
%union.anon.1 = type { x86_fp80 }
%struct.__float2 = type { float, float }
%struct.__double2 = type { double, double }
%struct.t_idef = type { i32, i32, i32, i32*, %union.t_iparams*, [44 x %struct.t_ilist] }
%union.t_iparams = type { %struct.anon.5 }
%struct.anon.5 = type { float, float, float, float, float, float }
%struct.t_ilist = type { i32, [256 x i32], i32* }

@rm_pbc.ngraph = internal unnamed_addr global i32 0, align 4
@rm_pbc.mgraph = internal unnamed_addr global %struct.multi_graph* null, align 8
@rm_pbc.bFirst = internal unnamed_addr global i1 false
@.str = private unnamed_addr constant [7 x i8] c"mgraph\00", align 1
@.str1 = private unnamed_addr constant [65 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/rmpbc.c\00", align 1
@__stdoutp = external global %struct.__sFILE*
@__stderrp = external global %struct.__sFILE*
@.str2 = private unnamed_addr constant [133 x i8] c"\0AWarning: can not make broken molecules whole without a run input file,\0A         don't worry, mdrun doesn't write broken molecules\0A\0A\00", align 1

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define i32 @__sputc(i32 %_c, %struct.__sFILE* %_p) #0 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !73, metadata !403), !dbg !404
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %_p, i64 0, metadata !74, metadata !403), !dbg !405
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2, !dbg !406
  %2 = load i32* %1, align 4, !dbg !408, !tbaa !409
  %3 = add nsw i32 %2, -1, !dbg !408
  store i32 %3, i32* %1, align 4, !dbg !408, !tbaa !409
  %4 = icmp sgt i32 %2, 0, !dbg !418
  br i1 %4, label %._crit_edge, label %5, !dbg !419

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255, !dbg !420
  br label %10, !dbg !419

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6, !dbg !421
  %7 = load i32* %6, align 4, !dbg !421, !tbaa !422
  %8 = icmp sle i32 %2, %7, !dbg !423
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10, !dbg !424
  %or.cond = or i1 %9, %8, !dbg !425
  br i1 %or.cond, label %15, label %10, !dbg !425

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ], !dbg !420
  %11 = trunc i32 %_c to i8, !dbg !426
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0, !dbg !427
  %13 = load i8** %12, align 8, !dbg !428, !tbaa !429
  %14 = getelementptr inbounds i8* %13, i64 1, !dbg !428
  store i8* %14, i8** %12, align 8, !dbg !428, !tbaa !429
  store i8 %11, i8* %13, align 1, !dbg !430, !tbaa !431
  br label %17, !dbg !432

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #6, !dbg !433
  br label %17, !dbg !434

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0, !dbg !435
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #2

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #3 {
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !80, metadata !403), !dbg !436
  %1 = icmp sgt i32 %__signo, 32, !dbg !437
  br i1 %1, label %5, label %2, !dbg !438

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !439
  %4 = shl i32 1, %3, !dbg !440
  br label %5, !dbg !438

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !438
  ret i32 %6, !dbg !441
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinitef(float %__x) #3 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !87, metadata !403), !dbg !442
  %1 = fcmp ord float %__x, 0.000000e+00, !dbg !443
  br i1 %1, label %2, label %5, !dbg !444

; <label>:2                                       ; preds = %0
  %3 = tail call float @llvm.fabs.f32(float %__x) #7, !dbg !445
  %4 = fcmp une float %3, 0x7FF0000000000000, !dbg !446
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32, !dbg !444
  ret i32 %7, !dbg !447
}

; Function Attrs: nounwind readnone
declare float @llvm.fabs.f32(float) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinited(double %__x) #3 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !93, metadata !403), !dbg !448
  %1 = fcmp ord double %__x, 0.000000e+00, !dbg !449
  br i1 %1, label %2, label %5, !dbg !450

; <label>:2                                       ; preds = %0
  %3 = tail call double @llvm.fabs.f64(double %__x) #7, !dbg !451
  %4 = fcmp une double %3, 0x7FF0000000000000, !dbg !452
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32, !dbg !450
  ret i32 %7, !dbg !453
}

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinitel(x86_fp80 %__x) #3 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !99, metadata !403), !dbg !454
  %1 = fcmp ord x86_fp80 %__x, 0xK00000000000000000000, !dbg !455
  br i1 %1, label %2, label %5, !dbg !456

; <label>:2                                       ; preds = %0
  %3 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #7, !dbg !457
  %4 = fcmp une x86_fp80 %3, 0xK7FFF8000000000000000, !dbg !458
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32, !dbg !456
  ret i32 %7, !dbg !459
}

; Function Attrs: nounwind readnone
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinff(float %__x) #3 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !102, metadata !403), !dbg !460
  %1 = tail call float @llvm.fabs.f32(float %__x) #7, !dbg !461
  %2 = fcmp oeq float %1, 0x7FF0000000000000, !dbg !462
  %3 = zext i1 %2 to i32, !dbg !462
  ret i32 %3, !dbg !463
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfd(double %__x) #3 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !105, metadata !403), !dbg !464
  %1 = tail call double @llvm.fabs.f64(double %__x) #7, !dbg !465
  %2 = fcmp oeq double %1, 0x7FF0000000000000, !dbg !466
  %3 = zext i1 %2 to i32, !dbg !466
  ret i32 %3, !dbg !467
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfl(x86_fp80 %__x) #3 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !108, metadata !403), !dbg !468
  %1 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #7, !dbg !469
  %2 = fcmp oeq x86_fp80 %1, 0xK7FFF8000000000000000, !dbg !470
  %3 = zext i1 %2 to i32, !dbg !470
  ret i32 %3, !dbg !471
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnanf(float %__x) #3 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !111, metadata !403), !dbg !472
  %1 = fcmp uno float %__x, 0.000000e+00, !dbg !473
  %2 = zext i1 %1 to i32, !dbg !473
  ret i32 %2, !dbg !474
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnand(double %__x) #3 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !114, metadata !403), !dbg !475
  %1 = fcmp uno double %__x, 0.000000e+00, !dbg !476
  %2 = zext i1 %1 to i32, !dbg !476
  ret i32 %2, !dbg !477
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnanl(x86_fp80 %__x) #3 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !117, metadata !403), !dbg !478
  %1 = fcmp uno x86_fp80 %__x, 0xK00000000000000000000, !dbg !479
  %2 = zext i1 %1 to i32, !dbg !479
  ret i32 %2, !dbg !480
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitf(float %__x) #3 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !120, metadata !403), !dbg !481
  tail call void @llvm.dbg.declare(metadata %union.anon* undef, metadata !121, metadata !403), !dbg !482
  %1 = bitcast float %__x to i32, !dbg !483
  tail call void @llvm.dbg.value(metadata i32 %1, i64 0, metadata !121, metadata !403), !dbg !482
  %2 = lshr i32 %1, 31, !dbg !484
  ret i32 %2, !dbg !485
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitd(double %__x) #3 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !129, metadata !403), !dbg !486
  tail call void @llvm.dbg.declare(metadata %union.anon.0* undef, metadata !130, metadata !403), !dbg !487
  %1 = bitcast double %__x to i64, !dbg !488
  tail call void @llvm.dbg.value(metadata i64 %1, i64 0, metadata !130, metadata !403), !dbg !487
  %2 = lshr i64 %1, 63, !dbg !489
  %3 = trunc i64 %2 to i32, !dbg !490
  ret i32 %3, !dbg !491
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitl(x86_fp80 %__x) #3 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !138, metadata !403), !dbg !492
  tail call void @llvm.dbg.declare(metadata %union.anon.1* undef, metadata !139, metadata !403), !dbg !493
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !139, metadata !403), !dbg !493
  %1 = bitcast x86_fp80 %__x to i80, !dbg !494
  %2 = lshr i80 %1, 79, !dbg !494
  %3 = trunc i80 %2 to i32, !dbg !495
  ret i32 %3, !dbg !496
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormalf(float %__x) #3 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !151, metadata !403), !dbg !497
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !87, metadata !403) #5, !dbg !498
  %1 = fcmp ord float %__x, 0.000000e+00, !dbg !500
  %2 = tail call float @llvm.fabs.f32(float %__x) #1
  %3 = fcmp une float %2, 0x7FF0000000000000, !dbg !501
  %or.cond = and i1 %1, %3, !dbg !502
  br i1 %or.cond, label %4, label %.critedge, !dbg !502

; <label>:4                                       ; preds = %0
  %5 = fcmp oge float %2, 0x3810000000000000, !dbg !503
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32, !dbg !504
  ret i32 %7, !dbg !505
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormald(double %__x) #3 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !154, metadata !403), !dbg !506
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !93, metadata !403) #5, !dbg !507
  %1 = fcmp ord double %__x, 0.000000e+00, !dbg !509
  %2 = tail call double @llvm.fabs.f64(double %__x) #1
  %3 = fcmp une double %2, 0x7FF0000000000000, !dbg !510
  %or.cond = and i1 %1, %3, !dbg !511
  br i1 %or.cond, label %4, label %.critedge, !dbg !511

; <label>:4                                       ; preds = %0
  %5 = fcmp oge double %2, 0x10000000000000, !dbg !512
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32, !dbg !513
  ret i32 %7, !dbg !514
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormall(x86_fp80 %__x) #3 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !157, metadata !403), !dbg !515
  tail call void @llvm.dbg.value(metadata x86_fp80 %__x, i64 0, metadata !99, metadata !403) #5, !dbg !516
  %1 = fcmp ord x86_fp80 %__x, 0xK00000000000000000000, !dbg !518
  %2 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #1
  %3 = fcmp une x86_fp80 %2, 0xK7FFF8000000000000000, !dbg !519
  %or.cond = and i1 %1, %3, !dbg !520
  br i1 %or.cond, label %4, label %.critedge, !dbg !520

; <label>:4                                       ; preds = %0
  %5 = fcmp oge x86_fp80 %2, 0xK00018000000000000000, !dbg !521
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32, !dbg !522
  ret i32 %7, !dbg !523
}

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincosf(float %__x, float* nocapture %__sinp, float* nocapture %__cosp) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !163, metadata !403), !dbg !524
  tail call void @llvm.dbg.value(metadata float* %__sinp, i64 0, metadata !164, metadata !403), !dbg !525
  tail call void @llvm.dbg.value(metadata float* %__cosp, i64 0, metadata !165, metadata !403), !dbg !526
  tail call void @llvm.dbg.declare(metadata %struct.__float2* undef, metadata !166, metadata !403), !dbg !527
  %1 = tail call <2 x float> @__sincosf_stret(float %__x) #6, !dbg !528
  tail call void @llvm.dbg.value(metadata <2 x float> %1, i64 0, metadata !166, metadata !403), !dbg !527
  %2 = extractelement <2 x float> %1, i32 0, !dbg !529
  store float %2, float* %__sinp, align 4, !dbg !530, !tbaa !531
  %3 = extractelement <2 x float> %1, i32 1, !dbg !533
  store float %3, float* %__cosp, align 4, !dbg !534, !tbaa !531
  ret void, !dbg !535
}

; Function Attrs: optsize
declare <2 x float> @__sincosf_stret(float) #2

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincos(double %__x, double* nocapture %__sinp, double* nocapture %__cosp) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !177, metadata !403), !dbg !536
  tail call void @llvm.dbg.value(metadata double* %__sinp, i64 0, metadata !178, metadata !403), !dbg !537
  tail call void @llvm.dbg.value(metadata double* %__cosp, i64 0, metadata !179, metadata !403), !dbg !538
  tail call void @llvm.dbg.declare(metadata %struct.__double2* undef, metadata !180, metadata !403), !dbg !539
  %1 = tail call { double, double } @__sincos_stret(double %__x) #6, !dbg !540
  %2 = extractvalue { double, double } %1, 0, !dbg !540
  tail call void @llvm.dbg.value(metadata double %2, i64 0, metadata !180, metadata !541), !dbg !539
  %3 = extractvalue { double, double } %1, 1, !dbg !540
  tail call void @llvm.dbg.value(metadata double %3, i64 0, metadata !180, metadata !542), !dbg !539
  store double %2, double* %__sinp, align 8, !dbg !543, !tbaa !544
  store double %3, double* %__cosp, align 8, !dbg !546, !tbaa !544
  ret void, !dbg !547
}

; Function Attrs: optsize
declare { double, double } @__sincos_stret(double) #2

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincospif(float %__x, float* nocapture %__sinp, float* nocapture %__cosp) #0 {
  tail call void @llvm.dbg.value(metadata float %__x, i64 0, metadata !188, metadata !403), !dbg !548
  tail call void @llvm.dbg.value(metadata float* %__sinp, i64 0, metadata !189, metadata !403), !dbg !549
  tail call void @llvm.dbg.value(metadata float* %__cosp, i64 0, metadata !190, metadata !403), !dbg !550
  tail call void @llvm.dbg.declare(metadata %struct.__float2* undef, metadata !191, metadata !403), !dbg !551
  %1 = tail call <2 x float> @__sincospif_stret(float %__x) #6, !dbg !552
  tail call void @llvm.dbg.value(metadata <2 x float> %1, i64 0, metadata !191, metadata !403), !dbg !551
  %2 = extractelement <2 x float> %1, i32 0, !dbg !553
  store float %2, float* %__sinp, align 4, !dbg !554, !tbaa !531
  %3 = extractelement <2 x float> %1, i32 1, !dbg !555
  store float %3, float* %__cosp, align 4, !dbg !556, !tbaa !531
  ret void, !dbg !557
}

; Function Attrs: optsize
declare <2 x float> @__sincospif_stret(float) #2

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincospi(double %__x, double* nocapture %__sinp, double* nocapture %__cosp) #0 {
  tail call void @llvm.dbg.value(metadata double %__x, i64 0, metadata !194, metadata !403), !dbg !558
  tail call void @llvm.dbg.value(metadata double* %__sinp, i64 0, metadata !195, metadata !403), !dbg !559
  tail call void @llvm.dbg.value(metadata double* %__cosp, i64 0, metadata !196, metadata !403), !dbg !560
  tail call void @llvm.dbg.declare(metadata %struct.__double2* undef, metadata !197, metadata !403), !dbg !561
  %1 = tail call { double, double } @__sincospi_stret(double %__x) #6, !dbg !562
  %2 = extractvalue { double, double } %1, 0, !dbg !562
  tail call void @llvm.dbg.value(metadata double %2, i64 0, metadata !197, metadata !541), !dbg !561
  %3 = extractvalue { double, double } %1, 1, !dbg !562
  tail call void @llvm.dbg.value(metadata double %3, i64 0, metadata !197, metadata !542), !dbg !561
  store double %2, double* %__sinp, align 8, !dbg !563, !tbaa !544
  store double %3, double* %__cosp, align 8, !dbg !564, !tbaa !544
  ret void, !dbg !565
}

; Function Attrs: optsize
declare { double, double } @__sincospi_stret(double) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @rm_pbc(%struct.t_idef* %idef, i32 %natoms, [3 x float]* %box, [3 x float]* %x, [3 x float]* %x_s) #4 {
  %sv = alloca [27 x [3 x float]], align 16
  %box_size = alloca [3 x float], align 4
  tail call void @llvm.dbg.value(metadata %struct.t_idef* %idef, i64 0, metadata !347, metadata !403), !dbg !566
  tail call void @llvm.dbg.value(metadata i32 %natoms, i64 0, metadata !348, metadata !403), !dbg !567
  tail call void @llvm.dbg.value(metadata [3 x float]* %box, i64 0, metadata !349, metadata !403), !dbg !568
  tail call void @llvm.dbg.value(metadata [3 x float]* %x, i64 0, metadata !350, metadata !403), !dbg !569
  tail call void @llvm.dbg.value(metadata [3 x float]* %x_s, i64 0, metadata !351, metadata !403), !dbg !570
  %1 = bitcast [27 x [3 x float]]* %sv to i8*, !dbg !571
  call void @llvm.lifetime.start(i64 324, i8* %1) #5, !dbg !571
  tail call void @llvm.dbg.declare(metadata [27 x [3 x float]]* %sv, metadata !352, metadata !403), !dbg !572
  tail call void @llvm.dbg.declare(metadata [3 x float]* %box_size, metadata !356, metadata !403), !dbg !573
  %2 = icmp ne [3 x float]* %x, %x_s, !dbg !574
  %3 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0, !dbg !575
  %4 = load float* %3, align 4, !dbg !575, !tbaa !531
  %fabsf = tail call float @fabsf(float %4) #8, !dbg !577
  %5 = fpext float %fabsf to double, !dbg !577
  %6 = fcmp ogt double %5, 1.200000e-38, !dbg !578
  br i1 %6, label %7, label %46, !dbg !579

; <label>:7                                       ; preds = %0
  %8 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 0, !dbg !580
  %9 = load i32* %8, align 4, !dbg !580, !tbaa !583
  %10 = icmp eq i32 %9, -1, !dbg !585
  br i1 %10, label %42, label %.preheader1, !dbg !586

.preheader1:                                      ; preds = %7
  %11 = load i32* @rm_pbc.ngraph, align 4, !dbg !587, !tbaa !591
  %12 = icmp sgt i32 %11, 0, !dbg !592
  br i1 %12, label %.lr.ph5, label %._crit_edge.thread, !dbg !593

.lr.ph5:                                          ; preds = %.preheader1
  %13 = load %struct.multi_graph** @rm_pbc.mgraph, align 8, !dbg !594, !tbaa !596
  %14 = sext i32 %11 to i64, !dbg !593
  br label %15, !dbg !593

; <label>:15                                      ; preds = %.lr.ph5, %15
  %indvars.iv7 = phi i64 [ 0, %.lr.ph5 ], [ %indvars.iv.next8, %15 ]
  %n.03 = phi i32 [ -1, %.lr.ph5 ], [ %i.0.n.0, %15 ]
  %16 = getelementptr inbounds %struct.multi_graph* %13, i64 %indvars.iv7, i32 0, !dbg !597
  %17 = load i32* %16, align 4, !dbg !597, !tbaa !598
  %18 = icmp eq i32 %17, %natoms, !dbg !600
  %19 = trunc i64 %indvars.iv7 to i32, !dbg !601
  %i.0.n.0 = select i1 %18, i32 %19, i32 %n.03, !dbg !601
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1, !dbg !593
  %20 = icmp slt i64 %indvars.iv.next8, %14, !dbg !592
  br i1 %20, label %15, label %._crit_edge, !dbg !593

._crit_edge:                                      ; preds = %15
  %21 = icmp eq i32 %i.0.n.0, -1, !dbg !602
  br i1 %21, label %._crit_edge.thread, label %.thread, !dbg !604

._crit_edge.thread:                               ; preds = %.preheader1, %._crit_edge
  tail call void @llvm.dbg.value(metadata i32 %11, i64 0, metadata !357, metadata !403), !dbg !605
  %22 = add nsw i32 %11, 1, !dbg !606
  store i32 %22, i32* @rm_pbc.ngraph, align 4, !dbg !606, !tbaa !591
  %23 = load i8** bitcast (%struct.multi_graph** @rm_pbc.mgraph to i8**), align 8, !dbg !608, !tbaa !596
  %24 = shl i32 %22, 4, !dbg !608
  %25 = tail call i8* @save_realloc(i8* getelementptr inbounds ([7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 68, i8* %23, i32 %24) #6, !dbg !608
  %26 = bitcast i8* %25 to %struct.multi_graph*, !dbg !608
  store i8* %25, i8** bitcast (%struct.multi_graph** @rm_pbc.mgraph to i8**), align 8, !dbg !608, !tbaa !596
  %27 = sext i32 %11 to i64, !dbg !609
  %28 = getelementptr inbounds %struct.multi_graph* %26, i64 %27, i32 0, !dbg !610
  store i32 %natoms, i32* %28, align 4, !dbg !611, !tbaa !598
  %29 = tail call %struct.t_graph* @mk_graph(%struct.t_idef* %idef, i32 %natoms, i32 0, i32 0) #6, !dbg !612
  %30 = load %struct.multi_graph** @rm_pbc.mgraph, align 8, !dbg !613, !tbaa !596
  %31 = getelementptr inbounds %struct.multi_graph* %30, i64 %27, i32 1, !dbg !614
  store %struct.t_graph* %29, %struct.t_graph** %31, align 8, !dbg !615, !tbaa !616
  br label %.thread, !dbg !617

.thread:                                          ; preds = %._crit_edge, %._crit_edge.thread
  %n.2 = phi i32 [ %11, %._crit_edge.thread ], [ %i.0.n.0, %._crit_edge ]
  %32 = load %struct.__sFILE** @__stdoutp, align 8, !dbg !618, !tbaa !596
  %33 = sext i32 %n.2 to i64, !dbg !619
  %34 = load %struct.multi_graph** @rm_pbc.mgraph, align 8, !dbg !619, !tbaa !596
  %35 = getelementptr inbounds %struct.multi_graph* %34, i64 %33, i32 1, !dbg !620
  %36 = load %struct.t_graph** %35, align 8, !dbg !620, !tbaa !616
  tail call void @mk_mshift(%struct.__sFILE* %32, %struct.t_graph* %36, [3 x float]* %box, [3 x float]* %x) #6, !dbg !621
  %37 = getelementptr inbounds [3 x float]* %box_size, i64 0, i64 0, !dbg !622
  %38 = getelementptr inbounds [27 x [3 x float]]* %sv, i64 0, i64 0, !dbg !623
  call void @calc_shifts([3 x float]* %box, float* %37, [3 x float]* %38) #6, !dbg !624
  %39 = load %struct.multi_graph** @rm_pbc.mgraph, align 8, !dbg !625, !tbaa !596
  %40 = getelementptr inbounds %struct.multi_graph* %39, i64 %33, i32 1, !dbg !626
  %41 = load %struct.t_graph** %40, align 8, !dbg !626, !tbaa !616
  call void @shift_x(%struct.t_graph* %41, [3 x float]* %box, [3 x float]* %x, [3 x float]* %x_s) #6, !dbg !627
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !359, metadata !403), !dbg !628
  br label %.loopexit, !dbg !629

; <label>:42                                      ; preds = %7
  %.b = load i1* @rm_pbc.bFirst, align 1
  br i1 %.b, label %46, label %43, !dbg !630

; <label>:43                                      ; preds = %42
  %44 = load %struct.__sFILE** @__stderrp, align 8, !dbg !631, !tbaa !596
  %45 = tail call i64 @fwrite(i8* getelementptr inbounds ([133 x i8]* @.str2, i64 0, i64 0), i64 132, i64 1, %struct.__sFILE* %44), !dbg !634
  store i1 true, i1* @rm_pbc.bFirst, align 1
  br label %46, !dbg !635

; <label>:46                                      ; preds = %42, %43, %0
  %47 = icmp sgt i32 %natoms, 0, !dbg !636
  %or.cond = and i1 %2, %47, !dbg !629
  br i1 %or.cond, label %.lr.ph, label %.loopexit, !dbg !629

.lr.ph:                                           ; preds = %46
  %48 = add i32 %natoms, -1, !dbg !640
  br label %49, !dbg !640

; <label>:49                                      ; preds = %49, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %49 ]
  %50 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 0, !dbg !641
  %51 = getelementptr inbounds [3 x float]* %x_s, i64 %indvars.iv, i64 0, !dbg !642
  tail call void @llvm.dbg.value(metadata float* %50, i64 0, metadata !368, metadata !403), !dbg !643
  tail call void @llvm.dbg.value(metadata float* %51, i64 0, metadata !369, metadata !403), !dbg !645
  %52 = bitcast float* %50 to i32*, !dbg !646
  %53 = load i32* %52, align 4, !dbg !646, !tbaa !531
  %54 = bitcast float* %51 to i32*, !dbg !647
  store i32 %53, i32* %54, align 4, !dbg !647, !tbaa !531
  %55 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 1, !dbg !648
  %56 = bitcast float* %55 to i32*, !dbg !648
  %57 = load i32* %56, align 4, !dbg !648, !tbaa !531
  %58 = getelementptr inbounds [3 x float]* %x_s, i64 %indvars.iv, i64 1, !dbg !649
  %59 = bitcast float* %58 to i32*, !dbg !650
  store i32 %57, i32* %59, align 4, !dbg !650, !tbaa !531
  %60 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 2, !dbg !651
  %61 = bitcast float* %60 to i32*, !dbg !651
  %62 = load i32* %61, align 4, !dbg !651, !tbaa !531
  %63 = getelementptr inbounds [3 x float]* %x_s, i64 %indvars.iv, i64 2, !dbg !652
  %64 = bitcast float* %63 to i32*, !dbg !653
  store i32 %62, i32* %64, align 4, !dbg !653, !tbaa !531
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !640
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !640
  %exitcond = icmp eq i32 %lftr.wideiv, %48, !dbg !640
  br i1 %exitcond, label %.loopexit, label %49, !dbg !640

.loopexit:                                        ; preds = %49, %46, %.thread
  call void @llvm.lifetime.end(i64 324, i8* %1) #5, !dbg !654
  ret void, !dbg !654
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: optsize
declare i8* @save_realloc(i8*, i8*, i32, i8*, i32) #2

; Function Attrs: optsize
declare %struct.t_graph* @mk_graph(%struct.t_idef*, i32, i32, i32) #2

; Function Attrs: optsize
declare void @mk_mshift(%struct.__sFILE*, %struct.t_graph*, [3 x float]*, [3 x float]*) #2

; Function Attrs: optsize
declare void @calc_shifts([3 x float]*, float*, [3 x float]*) #2

; Function Attrs: optsize
declare void @shift_x(%struct.t_graph*, [3 x float]*, [3 x float]*, [3 x float]*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

declare float @fabsf(float)

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #5

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { readnone }
attributes #8 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!399, !400, !401}
!llvm.ident = !{!402}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !6, globals: !370, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/rmpbc.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!5 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!6 = !{!7, !75, !81, !88, !94, !100, !103, !106, !109, !112, !115, !118, !127, !136, !149, !152, !155, !158, !172, !186, !192, !198, !360}
!7 = !DISubprogram(name: "__sputc", scope: !8, file: !8, line: 348, type: !9, isLocal: false, isDefinition: true, scopeLine: 348, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i32, %struct.__sFILE*)* @__sputc, variables: !72)
!8 = !DIFile(filename: "/usr/include/stdio.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!9 = !DISubroutineType(types: !10)
!10 = !{!5, !5, !11}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64, align: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !8, line: 153, baseType: !13)
!13 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !8, line: 122, size: 1216, align: 64, elements: !14)
!14 = !{!15, !18, !19, !20, !22, !23, !28, !29, !31, !35, !40, !50, !56, !57, !60, !61, !65, !69, !70, !71}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !13, file: !8, line: 123, baseType: !16, size: 64, align: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64, align: 64)
!17 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !13, file: !8, line: 124, baseType: !5, size: 32, align: 32, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !13, file: !8, line: 125, baseType: !5, size: 32, align: 32, offset: 96)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !13, file: !8, line: 126, baseType: !21, size: 16, align: 16, offset: 128)
!21 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !13, file: !8, line: 127, baseType: !21, size: 16, align: 16, offset: 144)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !13, file: !8, line: 128, baseType: !24, size: 128, align: 64, offset: 192)
!24 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !8, line: 88, size: 128, align: 64, elements: !25)
!25 = !{!26, !27}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !24, file: !8, line: 89, baseType: !16, size: 64, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !24, file: !8, line: 90, baseType: !5, size: 32, align: 32, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !13, file: !8, line: 129, baseType: !5, size: 32, align: 32, offset: 320)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !13, file: !8, line: 132, baseType: !30, size: 64, align: 64, offset: 384)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !13, file: !8, line: 133, baseType: !32, size: 64, align: 64, offset: 448)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = !DISubroutineType(types: !34)
!34 = !{!5, !30}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !13, file: !8, line: 134, baseType: !36, size: 64, align: 64, offset: 512)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64, align: 64)
!37 = !DISubroutineType(types: !38)
!38 = !{!5, !30, !39, !5}
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64, align: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !13, file: !8, line: 135, baseType: !41, size: 64, align: 64, offset: 576)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64, align: 64)
!42 = !DISubroutineType(types: !43)
!43 = !{!44, !30, !44, !5}
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !8, line: 77, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__darwin_off_t", file: !46, line: 71, baseType: !47)
!46 = !DIFile(filename: "/usr/include/sys/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !48, line: 46, baseType: !49)
!48 = !DIFile(filename: "/usr/include/i386/_types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!49 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !13, file: !8, line: 136, baseType: !51, size: 64, align: 64, offset: 640)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64, align: 64)
!52 = !DISubroutineType(types: !53)
!53 = !{!5, !30, !54, !5}
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !13, file: !8, line: 139, baseType: !24, size: 128, align: 64, offset: 704)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_extra", scope: !13, file: !8, line: 140, baseType: !58, size: 64, align: 64, offset: 832)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!59 = !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILEX", file: !8, line: 94, flags: DIFlagFwdDecl)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !13, file: !8, line: 141, baseType: !5, size: 32, align: 32, offset: 896)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !13, file: !8, line: 144, baseType: !62, size: 24, align: 8, offset: 928)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 24, align: 8, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 3)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !13, file: !8, line: 145, baseType: !66, size: 8, align: 8, offset: 952)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 8, align: 8, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 1)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !13, file: !8, line: 148, baseType: !24, size: 128, align: 64, offset: 960)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !13, file: !8, line: 151, baseType: !5, size: 32, align: 32, offset: 1088)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !13, file: !8, line: 152, baseType: !44, size: 64, align: 64, offset: 1152)
!72 = !{!73, !74}
!73 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_c", arg: 1, scope: !7, file: !8, line: 348, type: !5)
!74 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_p", arg: 2, scope: !7, file: !8, line: 348, type: !11)
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
!198 = !DISubprogram(name: "rm_pbc", scope: !1, file: !1, line: 42, type: !199, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.t_idef*, i32, [3 x float]*, [3 x float]*, [3 x float]*)* @rm_pbc, variables: !346)
!199 = !DISubroutineType(types: !200)
!200 = !{null, !201, !5, !343, !344, !344}
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64, align: 64)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_idef", file: !203, line: 188, baseType: !204)
!203 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/idef.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!204 = !DICompositeType(tag: DW_TAG_structure_type, file: !203, line: 179, size: 366336, align: 64, elements: !205)
!205 = !{!206, !207, !208, !209, !212, !327}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "ntypes", scope: !204, file: !203, line: 181, baseType: !5, size: 32, align: 32)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "nodeid", scope: !204, file: !203, line: 182, baseType: !5, size: 32, align: 32, offset: 32)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "atnr", scope: !204, file: !203, line: 183, baseType: !5, size: 32, align: 32, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "functype", scope: !204, file: !203, line: 184, baseType: !210, size: 64, align: 64, offset: 128)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_functype", file: !203, line: 133, baseType: !5)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "iparams", scope: !204, file: !203, line: 185, baseType: !213, size: 64, align: 64, offset: 192)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64, align: 64)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_iparams", file: !203, line: 131, baseType: !215)
!215 = !DICompositeType(tag: DW_TAG_union_type, file: !203, line: 97, size: 192, align: 32, elements: !216)
!216 = !{!217, !225, !232, !238, !247, !252, !259, !267, !272, !277, !283, !289, !296, !305, !314, !323}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "bham", scope: !215, file: !203, line: 105, baseType: !218, size: 96, align: 32)
!218 = !DICompositeType(tag: DW_TAG_structure_type, scope: !215, file: !203, line: 105, size: 96, align: 32, elements: !219)
!219 = !{!220, !223, !224}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !218, file: !203, line: 105, baseType: !221, size: 32, align: 32)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "real", file: !222, line: 87, baseType: !85)
!222 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/simple.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!223 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !218, file: !203, line: 105, baseType: !221, size: 32, align: 32, offset: 32)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !218, file: !203, line: 105, baseType: !221, size: 32, align: 32, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "harmonic", scope: !215, file: !203, line: 106, baseType: !226, size: 128, align: 32)
!226 = !DICompositeType(tag: DW_TAG_structure_type, scope: !215, file: !203, line: 106, size: 128, align: 32, elements: !227)
!227 = !{!228, !229, !230, !231}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "rA", scope: !226, file: !203, line: 106, baseType: !221, size: 32, align: 32)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "krA", scope: !226, file: !203, line: 106, baseType: !221, size: 32, align: 32, offset: 32)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "rB", scope: !226, file: !203, line: 106, baseType: !221, size: 32, align: 32, offset: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "krB", scope: !226, file: !203, line: 106, baseType: !221, size: 32, align: 32, offset: 96)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "cubic", scope: !215, file: !203, line: 108, baseType: !233, size: 96, align: 32)
!233 = !DICompositeType(tag: DW_TAG_structure_type, scope: !215, file: !203, line: 108, size: 96, align: 32, elements: !234)
!234 = !{!235, !236, !237}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "b0", scope: !233, file: !203, line: 108, baseType: !221, size: 32, align: 32)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "kb", scope: !233, file: !203, line: 108, baseType: !221, size: 32, align: 32, offset: 32)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "kcub", scope: !233, file: !203, line: 108, baseType: !221, size: 32, align: 32, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "wpol", scope: !215, file: !203, line: 110, baseType: !239, size: 192, align: 32)
!239 = !DICompositeType(tag: DW_TAG_structure_type, scope: !215, file: !203, line: 110, size: 192, align: 32, elements: !240)
!240 = !{!241, !242, !243, !244, !245, !246}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "kx", scope: !239, file: !203, line: 110, baseType: !221, size: 32, align: 32)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "ky", scope: !239, file: !203, line: 110, baseType: !221, size: 32, align: 32, offset: 32)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "kz", scope: !239, file: !203, line: 110, baseType: !221, size: 32, align: 32, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "rOH", scope: !239, file: !203, line: 110, baseType: !221, size: 32, align: 32, offset: 96)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "rHH", scope: !239, file: !203, line: 110, baseType: !221, size: 32, align: 32, offset: 128)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "rOD", scope: !239, file: !203, line: 110, baseType: !221, size: 32, align: 32, offset: 160)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "lj", scope: !215, file: !203, line: 111, baseType: !248, size: 64, align: 32)
!248 = !DICompositeType(tag: DW_TAG_structure_type, scope: !215, file: !203, line: 111, size: 64, align: 32, elements: !249)
!249 = !{!250, !251}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "c6", scope: !248, file: !203, line: 111, baseType: !221, size: 32, align: 32)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "c12", scope: !248, file: !203, line: 111, baseType: !221, size: 32, align: 32, offset: 32)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "lj14", scope: !215, file: !203, line: 112, baseType: !253, size: 128, align: 32)
!253 = !DICompositeType(tag: DW_TAG_structure_type, scope: !215, file: !203, line: 112, size: 128, align: 32, elements: !254)
!254 = !{!255, !256, !257, !258}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "c6A", scope: !253, file: !203, line: 112, baseType: !221, size: 32, align: 32)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "c12A", scope: !253, file: !203, line: 112, baseType: !221, size: 32, align: 32, offset: 32)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "c6B", scope: !253, file: !203, line: 112, baseType: !221, size: 32, align: 32, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "c12B", scope: !253, file: !203, line: 112, baseType: !221, size: 32, align: 32, offset: 96)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "pdihs", scope: !215, file: !203, line: 117, baseType: !260, size: 160, align: 32)
!260 = !DICompositeType(tag: DW_TAG_structure_type, scope: !215, file: !203, line: 117, size: 160, align: 32, elements: !261)
!261 = !{!262, !263, !264, !265, !266}
!262 = !DIDerivedType(tag: DW_TAG_member, name: "phiA", scope: !260, file: !203, line: 117, baseType: !221, size: 32, align: 32)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "cpA", scope: !260, file: !203, line: 117, baseType: !221, size: 32, align: 32, offset: 32)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "mult", scope: !260, file: !203, line: 117, baseType: !5, size: 32, align: 32, offset: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "phiB", scope: !260, file: !203, line: 117, baseType: !221, size: 32, align: 32, offset: 96)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "cpB", scope: !260, file: !203, line: 117, baseType: !221, size: 32, align: 32, offset: 128)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "shake", scope: !215, file: !203, line: 118, baseType: !268, size: 64, align: 32)
!268 = !DICompositeType(tag: DW_TAG_structure_type, scope: !215, file: !203, line: 118, size: 64, align: 32, elements: !269)
!269 = !{!270, !271}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "dA", scope: !268, file: !203, line: 118, baseType: !221, size: 32, align: 32)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "dB", scope: !268, file: !203, line: 118, baseType: !221, size: 32, align: 32, offset: 32)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "settle", scope: !215, file: !203, line: 123, baseType: !273, size: 64, align: 32)
!273 = !DICompositeType(tag: DW_TAG_structure_type, scope: !215, file: !203, line: 123, size: 64, align: 32, elements: !274)
!274 = !{!275, !276}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "doh", scope: !273, file: !203, line: 123, baseType: !221, size: 32, align: 32)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "dhh", scope: !273, file: !203, line: 123, baseType: !221, size: 32, align: 32, offset: 32)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "morse", scope: !215, file: !203, line: 124, baseType: !278, size: 96, align: 32)
!278 = !DICompositeType(tag: DW_TAG_structure_type, scope: !215, file: !203, line: 124, size: 96, align: 32, elements: !279)
!279 = !{!280, !281, !282}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "b0", scope: !278, file: !203, line: 124, baseType: !221, size: 32, align: 32)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !278, file: !203, line: 124, baseType: !221, size: 32, align: 32, offset: 32)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "beta", scope: !278, file: !203, line: 124, baseType: !221, size: 32, align: 32, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "posres", scope: !215, file: !203, line: 125, baseType: !284, size: 192, align: 32)
!284 = !DICompositeType(tag: DW_TAG_structure_type, scope: !215, file: !203, line: 125, size: 192, align: 32, elements: !285)
!285 = !{!286, !288}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "pos0", scope: !284, file: !203, line: 125, baseType: !287, size: 96, align: 32)
!287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 96, align: 32, elements: !63)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "fc", scope: !284, file: !203, line: 125, baseType: !287, size: 96, align: 32, offset: 96)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "rbdihs", scope: !215, file: !203, line: 126, baseType: !290, size: 192, align: 32)
!290 = !DICompositeType(tag: DW_TAG_structure_type, scope: !215, file: !203, line: 126, size: 192, align: 32, elements: !291)
!291 = !{!292}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "rbc", scope: !290, file: !203, line: 126, baseType: !293, size: 192, align: 32)
!293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 192, align: 32, elements: !294)
!294 = !{!295}
!295 = !DISubrange(count: 6)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !215, file: !203, line: 127, baseType: !297, size: 192, align: 32)
!297 = !DICompositeType(tag: DW_TAG_structure_type, scope: !215, file: !203, line: 127, size: 192, align: 32, elements: !298)
!298 = !{!299, !300, !301, !302, !303, !304}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !297, file: !203, line: 127, baseType: !221, size: 32, align: 32)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !297, file: !203, line: 127, baseType: !221, size: 32, align: 32, offset: 32)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !297, file: !203, line: 127, baseType: !221, size: 32, align: 32, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !297, file: !203, line: 127, baseType: !221, size: 32, align: 32, offset: 96)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !297, file: !203, line: 127, baseType: !221, size: 32, align: 32, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !297, file: !203, line: 127, baseType: !221, size: 32, align: 32, offset: 160)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "disres", scope: !215, file: !203, line: 128, baseType: !306, size: 192, align: 32)
!306 = !DICompositeType(tag: DW_TAG_structure_type, scope: !215, file: !203, line: 128, size: 192, align: 32, elements: !307)
!307 = !{!308, !309, !310, !311, !312, !313}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !306, file: !203, line: 128, baseType: !221, size: 32, align: 32)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "up1", scope: !306, file: !203, line: 128, baseType: !221, size: 32, align: 32, offset: 32)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "up2", scope: !306, file: !203, line: 128, baseType: !221, size: 32, align: 32, offset: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "kfac", scope: !306, file: !203, line: 128, baseType: !221, size: 32, align: 32, offset: 96)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !306, file: !203, line: 128, baseType: !5, size: 32, align: 32, offset: 128)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !306, file: !203, line: 128, baseType: !5, size: 32, align: 32, offset: 160)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "orires", scope: !215, file: !203, line: 129, baseType: !315, size: 192, align: 32)
!315 = !DICompositeType(tag: DW_TAG_structure_type, scope: !215, file: !203, line: 129, size: 192, align: 32, elements: !316)
!316 = !{!317, !318, !319, !320, !321, !322}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "ex", scope: !315, file: !203, line: 129, baseType: !5, size: 32, align: 32)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "pow", scope: !315, file: !203, line: 129, baseType: !5, size: 32, align: 32, offset: 32)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !315, file: !203, line: 129, baseType: !5, size: 32, align: 32, offset: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !315, file: !203, line: 129, baseType: !221, size: 32, align: 32, offset: 96)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "obs", scope: !315, file: !203, line: 129, baseType: !221, size: 32, align: 32, offset: 128)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "kfac", scope: !315, file: !203, line: 129, baseType: !221, size: 32, align: 32, offset: 160)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "generic", scope: !215, file: !203, line: 130, baseType: !324, size: 192, align: 32)
!324 = !DICompositeType(tag: DW_TAG_structure_type, scope: !215, file: !203, line: 130, size: 192, align: 32, elements: !325)
!325 = !{!326}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !324, file: !203, line: 130, baseType: !293, size: 192, align: 32)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !204, file: !203, line: 187, baseType: !328, size: 366080, align: 64, offset: 256)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, size: 366080, align: 64, elements: !341)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_ilist", file: !203, line: 140, baseType: !330)
!330 = !DICompositeType(tag: DW_TAG_structure_type, file: !203, line: 135, size: 8320, align: 64, elements: !331)
!331 = !{!332, !333, !337}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !330, file: !203, line: 137, baseType: !5, size: 32, align: 32)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "multinr", scope: !330, file: !203, line: 138, baseType: !334, size: 8192, align: 32, offset: 32)
!334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 8192, align: 32, elements: !335)
!335 = !{!336}
!336 = !DISubrange(count: 256)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "iatoms", scope: !330, file: !203, line: 139, baseType: !338, size: 64, align: 64, offset: 8256)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64, align: 64)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_iatom", file: !203, line: 45, baseType: !340)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "atom_id", file: !222, line: 73, baseType: !5)
!341 = !{!342}
!342 = !DISubrange(count: 44)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64, align: 64)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64, align: 64)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "rvec", file: !222, line: 101, baseType: !287)
!346 = !{!347, !348, !349, !350, !351, !352, !356, !357, !358, !359}
!347 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "idef", arg: 1, scope: !198, file: !1, line: 42, type: !201)
!348 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "natoms", arg: 2, scope: !198, file: !1, line: 42, type: !5)
!349 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "box", arg: 3, scope: !198, file: !1, line: 42, type: !343)
!350 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 4, scope: !198, file: !1, line: 42, type: !344)
!351 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x_s", arg: 5, scope: !198, file: !1, line: 42, type: !344)
!352 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sv", scope: !198, file: !1, line: 52, type: !353)
!353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !345, size: 2592, align: 32, elements: !354)
!354 = !{!355}
!355 = !DISubrange(count: 27)
!356 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "box_size", scope: !198, file: !1, line: 52, type: !345)
!357 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !198, file: !1, line: 53, type: !5)
!358 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !198, file: !1, line: 53, type: !5)
!359 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bNeedToCopy", scope: !198, file: !1, line: 54, type: !5)
!360 = !DISubprogram(name: "copy_rvec", scope: !361, file: !361, line: 270, type: !362, isLocal: true, isDefinition: true, scopeLine: 271, flags: DIFlagPrototyped, isOptimized: true, variables: !367)
!361 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/vec.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!362 = !DISubroutineType(types: !363)
!363 = !{null, !364, !366}
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64, align: 64)
!365 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !221)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64, align: 64)
!367 = !{!368, !369}
!368 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !360, file: !361, line: 270, type: !364)
!369 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !360, file: !361, line: 270, type: !366)
!370 = !{!371, !372, !398}
!371 = !DIGlobalVariable(name: "ngraph", scope: !198, file: !1, line: 49, type: !5, isLocal: true, isDefinition: true, variable: i32* @rm_pbc.ngraph)
!372 = !DIGlobalVariable(name: "mgraph", scope: !198, file: !1, line: 50, type: !373, isLocal: true, isDefinition: true, variable: %struct.multi_graph** @rm_pbc.mgraph)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64, align: 64)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "multi_graph", scope: !198, file: !1, line: 47, baseType: !375)
!375 = !DICompositeType(tag: DW_TAG_structure_type, scope: !198, file: !1, line: 44, size: 128, align: 64, elements: !376)
!376 = !{!377, !378}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "natoms", scope: !375, file: !1, line: 45, baseType: !5, size: 32, align: 32)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "gr", scope: !375, file: !1, line: 46, baseType: !379, size: 64, align: 64, offset: 64)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64, align: 64)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_graph", file: !381, line: 47, baseType: !382)
!381 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/graph.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!382 = !DICompositeType(tag: DW_TAG_structure_type, file: !381, line: 38, size: 384, align: 64, elements: !383)
!383 = !{!384, !385, !386, !387, !388, !389, !391, !394}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "maxbond", scope: !382, file: !381, line: 39, baseType: !5, size: 32, align: 32)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "nnodes", scope: !382, file: !381, line: 40, baseType: !5, size: 32, align: 32, offset: 32)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "nbound", scope: !382, file: !381, line: 41, baseType: !5, size: 32, align: 32, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !382, file: !381, line: 42, baseType: !5, size: 32, align: 32, offset: 96)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !382, file: !381, line: 43, baseType: !5, size: 32, align: 32, offset: 128)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "nedge", scope: !382, file: !381, line: 44, baseType: !390, size: 64, align: 64, offset: 192)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "edge", scope: !382, file: !381, line: 45, baseType: !392, size: 64, align: 64, offset: 256)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64, align: 64)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64, align: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "ishift", scope: !382, file: !381, line: 46, baseType: !395, size: 64, align: 64, offset: 320)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64, align: 64)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "ivec", file: !222, line: 107, baseType: !397)
!397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 96, align: 32, elements: !63)
!398 = !DIGlobalVariable(name: "bFirst", scope: !198, file: !1, line: 51, type: !5, isLocal: true, isDefinition: true)
!399 = !{i32 2, !"Dwarf Version", i32 2}
!400 = !{i32 2, !"Debug Info Version", i32 700000003}
!401 = !{i32 1, !"PIC Level", i32 2}
!402 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!403 = !DIExpression()
!404 = !DILocation(line: 348, column: 40, scope: !7)
!405 = !DILocation(line: 348, column: 50, scope: !7)
!406 = !DILocation(line: 349, column: 12, scope: !407)
!407 = distinct !DILexicalBlock(scope: !7, file: !8, line: 349, column: 6)
!408 = !DILocation(line: 349, column: 6, scope: !407)
!409 = !{!410, !414, i64 12}
!410 = !{!"__sFILE", !411, i64 0, !414, i64 8, !414, i64 12, !415, i64 16, !415, i64 18, !416, i64 24, !414, i64 40, !411, i64 48, !411, i64 56, !411, i64 64, !411, i64 72, !411, i64 80, !416, i64 88, !411, i64 104, !414, i64 112, !412, i64 116, !412, i64 119, !416, i64 120, !414, i64 136, !417, i64 144}
!411 = !{!"any pointer", !412, i64 0}
!412 = !{!"omnipotent char", !413, i64 0}
!413 = !{!"Simple C/C++ TBAA"}
!414 = !{!"int", !412, i64 0}
!415 = !{!"short", !412, i64 0}
!416 = !{!"__sbuf", !411, i64 0, !414, i64 8}
!417 = !{!"long long", !412, i64 0}
!418 = !DILocation(line: 349, column: 15, scope: !407)
!419 = !DILocation(line: 349, column: 20, scope: !407)
!420 = !DILocation(line: 350, column: 10, scope: !407)
!421 = !DILocation(line: 349, column: 38, scope: !407)
!422 = !{!410, !414, i64 40}
!423 = !DILocation(line: 349, column: 31, scope: !407)
!424 = !DILocation(line: 349, column: 59, scope: !407)
!425 = !DILocation(line: 349, column: 47, scope: !407)
!426 = !DILocation(line: 350, column: 23, scope: !407)
!427 = !DILocation(line: 350, column: 16, scope: !407)
!428 = !DILocation(line: 350, column: 18, scope: !407)
!429 = !{!410, !411, i64 0}
!430 = !DILocation(line: 350, column: 21, scope: !407)
!431 = !{!412, !412, i64 0}
!432 = !DILocation(line: 350, column: 3, scope: !407)
!433 = !DILocation(line: 352, column: 11, scope: !407)
!434 = !DILocation(line: 352, column: 3, scope: !407)
!435 = !DILocation(line: 353, column: 1, scope: !7)
!436 = !DILocation(line: 114, column: 15, scope: !75)
!437 = !DILocation(line: 116, column: 20, scope: !75)
!438 = !DILocation(line: 116, column: 12, scope: !75)
!439 = !DILocation(line: 116, column: 57, scope: !75)
!440 = !DILocation(line: 116, column: 45, scope: !75)
!441 = !DILocation(line: 116, column: 5, scope: !75)
!442 = !DILocation(line: 204, column: 53, scope: !81)
!443 = !DILocation(line: 205, column: 16, scope: !81)
!444 = !DILocation(line: 205, column: 23, scope: !81)
!445 = !DILocation(line: 205, column: 26, scope: !81)
!446 = !DILocation(line: 205, column: 47, scope: !81)
!447 = !DILocation(line: 205, column: 5, scope: !81)
!448 = !DILocation(line: 207, column: 54, scope: !88)
!449 = !DILocation(line: 208, column: 16, scope: !88)
!450 = !DILocation(line: 208, column: 23, scope: !88)
!451 = !DILocation(line: 208, column: 26, scope: !88)
!452 = !DILocation(line: 208, column: 46, scope: !88)
!453 = !DILocation(line: 208, column: 5, scope: !88)
!454 = !DILocation(line: 210, column: 59, scope: !94)
!455 = !DILocation(line: 211, column: 16, scope: !94)
!456 = !DILocation(line: 211, column: 23, scope: !94)
!457 = !DILocation(line: 211, column: 26, scope: !94)
!458 = !DILocation(line: 211, column: 47, scope: !94)
!459 = !DILocation(line: 211, column: 5, scope: !94)
!460 = !DILocation(line: 213, column: 50, scope: !100)
!461 = !DILocation(line: 214, column: 12, scope: !100)
!462 = !DILocation(line: 214, column: 33, scope: !100)
!463 = !DILocation(line: 214, column: 5, scope: !100)
!464 = !DILocation(line: 216, column: 51, scope: !103)
!465 = !DILocation(line: 217, column: 12, scope: !103)
!466 = !DILocation(line: 217, column: 32, scope: !103)
!467 = !DILocation(line: 217, column: 5, scope: !103)
!468 = !DILocation(line: 219, column: 56, scope: !106)
!469 = !DILocation(line: 220, column: 12, scope: !106)
!470 = !DILocation(line: 220, column: 33, scope: !106)
!471 = !DILocation(line: 220, column: 5, scope: !106)
!472 = !DILocation(line: 222, column: 50, scope: !109)
!473 = !DILocation(line: 223, column: 16, scope: !109)
!474 = !DILocation(line: 223, column: 5, scope: !109)
!475 = !DILocation(line: 225, column: 51, scope: !112)
!476 = !DILocation(line: 226, column: 16, scope: !112)
!477 = !DILocation(line: 226, column: 5, scope: !112)
!478 = !DILocation(line: 228, column: 56, scope: !115)
!479 = !DILocation(line: 229, column: 16, scope: !115)
!480 = !DILocation(line: 229, column: 5, scope: !115)
!481 = !DILocation(line: 231, column: 52, scope: !118)
!482 = !DILocation(line: 232, column: 44, scope: !118)
!483 = !DILocation(line: 233, column: 13, scope: !118)
!484 = !DILocation(line: 234, column: 26, scope: !118)
!485 = !DILocation(line: 234, column: 5, scope: !118)
!486 = !DILocation(line: 236, column: 53, scope: !127)
!487 = !DILocation(line: 237, column: 51, scope: !127)
!488 = !DILocation(line: 238, column: 13, scope: !127)
!489 = !DILocation(line: 239, column: 26, scope: !127)
!490 = !DILocation(line: 239, column: 12, scope: !127)
!491 = !DILocation(line: 239, column: 5, scope: !127)
!492 = !DILocation(line: 242, column: 58, scope: !136)
!493 = !DILocation(line: 246, column: 7, scope: !136)
!494 = !DILocation(line: 248, column: 26, scope: !136)
!495 = !DILocation(line: 248, column: 33, scope: !136)
!496 = !DILocation(line: 248, column: 5, scope: !136)
!497 = !DILocation(line: 257, column: 53, scope: !149)
!498 = !DILocation(line: 204, column: 53, scope: !81, inlinedAt: !499)
!499 = distinct !DILocation(line: 258, column: 12, scope: !149)
!500 = !DILocation(line: 205, column: 16, scope: !81, inlinedAt: !499)
!501 = !DILocation(line: 205, column: 47, scope: !81, inlinedAt: !499)
!502 = !DILocation(line: 205, column: 23, scope: !81, inlinedAt: !499)
!503 = !DILocation(line: 258, column: 60, scope: !149)
!504 = !DILocation(line: 258, column: 36, scope: !149)
!505 = !DILocation(line: 258, column: 5, scope: !149)
!506 = !DILocation(line: 260, column: 54, scope: !152)
!507 = !DILocation(line: 207, column: 54, scope: !88, inlinedAt: !508)
!508 = distinct !DILocation(line: 261, column: 12, scope: !152)
!509 = !DILocation(line: 208, column: 16, scope: !88, inlinedAt: !508)
!510 = !DILocation(line: 208, column: 46, scope: !88, inlinedAt: !508)
!511 = !DILocation(line: 208, column: 23, scope: !88, inlinedAt: !508)
!512 = !DILocation(line: 261, column: 59, scope: !152)
!513 = !DILocation(line: 261, column: 36, scope: !152)
!514 = !DILocation(line: 261, column: 5, scope: !152)
!515 = !DILocation(line: 263, column: 59, scope: !155)
!516 = !DILocation(line: 210, column: 59, scope: !94, inlinedAt: !517)
!517 = distinct !DILocation(line: 264, column: 12, scope: !155)
!518 = !DILocation(line: 211, column: 16, scope: !94, inlinedAt: !517)
!519 = !DILocation(line: 211, column: 47, scope: !94, inlinedAt: !517)
!520 = !DILocation(line: 211, column: 23, scope: !94, inlinedAt: !517)
!521 = !DILocation(line: 264, column: 60, scope: !155)
!522 = !DILocation(line: 264, column: 36, scope: !155)
!523 = !DILocation(line: 264, column: 5, scope: !155)
!524 = !DILocation(line: 642, column: 45, scope: !158)
!525 = !DILocation(line: 642, column: 57, scope: !158)
!526 = !DILocation(line: 642, column: 72, scope: !158)
!527 = !DILocation(line: 643, column: 27, scope: !158)
!528 = !DILocation(line: 643, column: 37, scope: !158)
!529 = !DILocation(line: 644, column: 23, scope: !158)
!530 = !DILocation(line: 644, column: 13, scope: !158)
!531 = !{!532, !532, i64 0}
!532 = !{!"float", !412, i64 0}
!533 = !DILocation(line: 644, column: 51, scope: !158)
!534 = !DILocation(line: 644, column: 41, scope: !158)
!535 = !DILocation(line: 645, column: 1, scope: !158)
!536 = !DILocation(line: 647, column: 45, scope: !172)
!537 = !DILocation(line: 647, column: 58, scope: !172)
!538 = !DILocation(line: 647, column: 74, scope: !172)
!539 = !DILocation(line: 648, column: 28, scope: !172)
!540 = !DILocation(line: 648, column: 38, scope: !172)
!541 = !DIExpression(DW_OP_bit_piece, 0, 64)
!542 = !DIExpression(DW_OP_bit_piece, 64, 64)
!543 = !DILocation(line: 649, column: 13, scope: !172)
!544 = !{!545, !545, i64 0}
!545 = !{!"double", !412, i64 0}
!546 = !DILocation(line: 649, column: 41, scope: !172)
!547 = !DILocation(line: 650, column: 1, scope: !172)
!548 = !DILocation(line: 652, column: 47, scope: !186)
!549 = !DILocation(line: 652, column: 59, scope: !186)
!550 = !DILocation(line: 652, column: 74, scope: !186)
!551 = !DILocation(line: 653, column: 27, scope: !186)
!552 = !DILocation(line: 653, column: 37, scope: !186)
!553 = !DILocation(line: 654, column: 23, scope: !186)
!554 = !DILocation(line: 654, column: 13, scope: !186)
!555 = !DILocation(line: 654, column: 51, scope: !186)
!556 = !DILocation(line: 654, column: 41, scope: !186)
!557 = !DILocation(line: 655, column: 1, scope: !186)
!558 = !DILocation(line: 657, column: 47, scope: !192)
!559 = !DILocation(line: 657, column: 60, scope: !192)
!560 = !DILocation(line: 657, column: 76, scope: !192)
!561 = !DILocation(line: 658, column: 28, scope: !192)
!562 = !DILocation(line: 658, column: 38, scope: !192)
!563 = !DILocation(line: 659, column: 13, scope: !192)
!564 = !DILocation(line: 659, column: 41, scope: !192)
!565 = !DILocation(line: 660, column: 1, scope: !192)
!566 = !DILocation(line: 42, column: 21, scope: !198)
!567 = !DILocation(line: 42, column: 30, scope: !198)
!568 = !DILocation(line: 42, column: 44, scope: !198)
!569 = !DILocation(line: 42, column: 53, scope: !198)
!570 = !DILocation(line: 42, column: 62, scope: !198)
!571 = !DILocation(line: 52, column: 3, scope: !198)
!572 = !DILocation(line: 52, column: 10, scope: !198)
!573 = !DILocation(line: 52, column: 21, scope: !198)
!574 = !DILocation(line: 56, column: 20, scope: !198)
!575 = !DILocation(line: 58, column: 12, scope: !576)
!576 = distinct !DILexicalBlock(scope: !198, file: !1, line: 58, column: 7)
!577 = !DILocation(line: 58, column: 7, scope: !576)
!578 = !DILocation(line: 58, column: 22, scope: !576)
!579 = !DILocation(line: 58, column: 7, scope: !198)
!580 = !DILocation(line: 59, column: 15, scope: !581)
!581 = distinct !DILexicalBlock(scope: !582, file: !1, line: 59, column: 9)
!582 = distinct !DILexicalBlock(scope: !576, file: !1, line: 58, column: 37)
!583 = !{!584, !414, i64 0}
!584 = !{!"", !414, i64 0, !414, i64 4, !414, i64 8, !411, i64 16, !411, i64 24, !412, i64 32}
!585 = !DILocation(line: 59, column: 21, scope: !581)
!586 = !DILocation(line: 59, column: 9, scope: !582)
!587 = !DILocation(line: 61, column: 18, scope: !588)
!588 = distinct !DILexicalBlock(scope: !589, file: !1, line: 61, column: 7)
!589 = distinct !DILexicalBlock(scope: !590, file: !1, line: 61, column: 7)
!590 = distinct !DILexicalBlock(scope: !581, file: !1, line: 59, column: 27)
!591 = !{!414, !414, i64 0}
!592 = !DILocation(line: 61, column: 17, scope: !588)
!593 = !DILocation(line: 61, column: 7, scope: !589)
!594 = !DILocation(line: 62, column: 6, scope: !595)
!595 = distinct !DILexicalBlock(scope: !588, file: !1, line: 62, column: 6)
!596 = !{!411, !411, i64 0}
!597 = !DILocation(line: 62, column: 16, scope: !595)
!598 = !{!599, !414, i64 0}
!599 = !{!"", !414, i64 0, !411, i64 8}
!600 = !DILocation(line: 62, column: 22, scope: !595)
!601 = !DILocation(line: 62, column: 6, scope: !588)
!602 = !DILocation(line: 64, column: 12, scope: !603)
!603 = distinct !DILexicalBlock(scope: !590, file: !1, line: 64, column: 11)
!604 = !DILocation(line: 64, column: 11, scope: !590)
!605 = !DILocation(line: 53, column: 10, scope: !198)
!606 = !DILocation(line: 67, column: 8, scope: !607)
!607 = distinct !DILexicalBlock(scope: !603, file: !1, line: 64, column: 18)
!608 = !DILocation(line: 68, column: 2, scope: !607)
!609 = !DILocation(line: 69, column: 2, scope: !607)
!610 = !DILocation(line: 69, column: 12, scope: !607)
!611 = !DILocation(line: 69, column: 18, scope: !607)
!612 = !DILocation(line: 70, column: 15, scope: !607)
!613 = !DILocation(line: 70, column: 2, scope: !607)
!614 = !DILocation(line: 70, column: 12, scope: !607)
!615 = !DILocation(line: 70, column: 14, scope: !607)
!616 = !{!599, !411, i64 8}
!617 = !DILocation(line: 71, column: 7, scope: !607)
!618 = !DILocation(line: 72, column: 17, scope: !590)
!619 = !DILocation(line: 72, column: 24, scope: !590)
!620 = !DILocation(line: 72, column: 34, scope: !590)
!621 = !DILocation(line: 72, column: 7, scope: !590)
!622 = !DILocation(line: 73, column: 23, scope: !590)
!623 = !DILocation(line: 73, column: 32, scope: !590)
!624 = !DILocation(line: 73, column: 7, scope: !590)
!625 = !DILocation(line: 74, column: 15, scope: !590)
!626 = !DILocation(line: 74, column: 25, scope: !590)
!627 = !DILocation(line: 74, column: 7, scope: !590)
!628 = !DILocation(line: 54, column: 10, scope: !198)
!629 = !DILocation(line: 82, column: 7, scope: !198)
!630 = !DILocation(line: 76, column: 16, scope: !581)
!631 = !DILocation(line: 77, column: 15, scope: !632)
!632 = distinct !DILexicalBlock(scope: !633, file: !1, line: 76, column: 24)
!633 = distinct !DILexicalBlock(scope: !581, file: !1, line: 76, column: 16)
!634 = !DILocation(line: 77, column: 7, scope: !632)
!635 = !DILocation(line: 80, column: 5, scope: !632)
!636 = !DILocation(line: 83, column: 16, scope: !637)
!637 = distinct !DILexicalBlock(scope: !638, file: !1, line: 83, column: 5)
!638 = distinct !DILexicalBlock(scope: !639, file: !1, line: 83, column: 5)
!639 = distinct !DILexicalBlock(scope: !198, file: !1, line: 82, column: 7)
!640 = !DILocation(line: 83, column: 5, scope: !638)
!641 = !DILocation(line: 84, column: 17, scope: !637)
!642 = !DILocation(line: 84, column: 22, scope: !637)
!643 = !DILocation(line: 270, column: 41, scope: !360, inlinedAt: !644)
!644 = distinct !DILocation(line: 84, column: 7, scope: !637)
!645 = !DILocation(line: 270, column: 48, scope: !360, inlinedAt: !644)
!646 = !DILocation(line: 272, column: 9, scope: !360, inlinedAt: !644)
!647 = !DILocation(line: 272, column: 8, scope: !360, inlinedAt: !644)
!648 = !DILocation(line: 273, column: 9, scope: !360, inlinedAt: !644)
!649 = !DILocation(line: 273, column: 3, scope: !360, inlinedAt: !644)
!650 = !DILocation(line: 273, column: 8, scope: !360, inlinedAt: !644)
!651 = !DILocation(line: 274, column: 9, scope: !360, inlinedAt: !644)
!652 = !DILocation(line: 274, column: 3, scope: !360, inlinedAt: !644)
!653 = !DILocation(line: 274, column: 8, scope: !360, inlinedAt: !644)
!654 = !DILocation(line: 85, column: 1, scope: !198)
