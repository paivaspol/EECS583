; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/poisson.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.t_PSgrid = type { i32, i32, i32, float*** }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_inputrec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, float, [3 x [3 x float]], [3 x [3 x float]], i32, float, float, i32, float, float, i32, float, float, float, i32, float, float, i32, float, float, float, float, float, i32, i32, i32, float, float, float, i32, float, float, i32, i32, i32, i32, i32, float, i32, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, %struct.t_grpopts, [3 x %struct.t_cosines], [3 x %struct.t_cosines] }
%struct.t_grpopts = type { i32, i32, i32, i32, float*, float*, float*, [3 x float]*, [3 x i32]*, i32* }
%struct.t_cosines = type { i32, float*, float* }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }
%struct.t_nrnb = type { [129 x double] }

@.str = private unnamed_addr constant [3 x i8] c"ps\00", align 1
@.str1 = private unnamed_addr constant [67 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/poisson.c\00", align 1
@.str2 = private unnamed_addr constant [8 x i8] c"ps->ptr\00", align 1
@.str3 = private unnamed_addr constant [11 x i8] c"ps->ptr[i]\00", align 1
@.str4 = private unnamed_addr constant [14 x i8] c"ps->ptr[i][j]\00", align 1
@.str5 = private unnamed_addr constant [71 x i8] c"Symmetrize_PSgrid: sum = %g, ming = %g(%d,%d,%d), maxg = %g(%d,%d,%d)\0A\00", align 1
@.str6 = private unnamed_addr constant [5 x i8] c"*nnx\00", align 1
@.str7 = private unnamed_addr constant [5 x i8] c"*nny\00", align 1
@.str8 = private unnamed_addr constant [5 x i8] c"*nnz\00", align 1
@do_poisson.bFirst = internal unnamed_addr global i1 false
@do_poisson.pot = internal unnamed_addr global %struct.t_PSgrid* null, align 8
@do_poisson.rho = internal unnamed_addr global %struct.t_PSgrid* null, align 8
@do_poisson.maxnit = internal unnamed_addr global i32 0, align 4
@do_poisson.r1 = internal unnamed_addr global float 0.000000e+00, align 4
@do_poisson.rc = internal unnamed_addr global float 0.000000e+00, align 4
@do_poisson.beta = internal global [3 x float] zeroinitializer, align 4
@.str9 = private unnamed_addr constant [55 x i8] c"Will use Poisson Solver for long-range electrostatics\0A\00", align 1
@.str10 = private unnamed_addr constant [27 x i8] c"Grid size is %d x %d x %d\0A\00", align 1
@.str11 = private unnamed_addr constant [49 x i8] c"Grid must be at least 4 points in all directions\00", align 1
@debug = external global %struct.__sFILE*
@do_optimize_poisson.bFirst = internal unnamed_addr global i1 false
@do_optimize_poisson.pot = internal unnamed_addr global %struct.t_PSgrid* null, align 8
@do_optimize_poisson.rho = internal unnamed_addr global %struct.t_PSgrid* null, align 8
@do_optimize_poisson.maxnit = internal unnamed_addr global i32 0, align 4
@do_optimize_poisson.r1 = internal unnamed_addr global float 0.000000e+00, align 4
@do_optimize_poisson.rc = internal unnamed_addr global float 0.000000e+00, align 4
@.str12 = private unnamed_addr constant [20 x i8] c"Poisson, beta = %g\0A\00", align 1
@.str13 = private unnamed_addr constant [40 x i8] c"Beta: %6.3f  %6.3f  %6.3f  RMSF: %8.3f\0A\00", align 1
@.str14 = private unnamed_addr constant [50 x i8] c"Minimum RMSF %8.3f at Beta = %6.3f  %6.3f  %6.3f\0A\00", align 1
@.memset_pattern = internal unnamed_addr constant [4 x float] [float 0x3FFD9999A0000000, float 0x3FFD9999A0000000, float 0x3FFD9999A0000000, float 0x3FFD9999A0000000], align 16
@.memset_pattern15 = internal unnamed_addr constant [4 x float] [float 0x3FF5555560000000, float 0x3FF5555560000000, float 0x3FF5555560000000, float 0x3FF5555560000000], align 16

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define i32 @__sputc(i32 %_c, %struct.__sFILE* %_p) #0 {
  tail call void @llvm.dbg.value(metadata i32 %_c, i64 0, metadata !73, metadata !394), !dbg !395
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %_p, i64 0, metadata !74, metadata !394), !dbg !396
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2, !dbg !397
  %2 = load i32* %1, align 4, !dbg !399, !tbaa !400
  %3 = add nsw i32 %2, -1, !dbg !399
  store i32 %3, i32* %1, align 4, !dbg !399, !tbaa !400
  %4 = icmp sgt i32 %2, 0, !dbg !409
  br i1 %4, label %._crit_edge, label %5, !dbg !410

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255, !dbg !411
  br label %10, !dbg !410

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6, !dbg !412
  %7 = load i32* %6, align 4, !dbg !412, !tbaa !413
  %8 = icmp sle i32 %2, %7, !dbg !414
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10, !dbg !415
  %or.cond = or i1 %9, %8, !dbg !416
  br i1 %or.cond, label %15, label %10, !dbg !416

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ], !dbg !411
  %11 = trunc i32 %_c to i8, !dbg !417
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0, !dbg !418
  %13 = load i8** %12, align 8, !dbg !419, !tbaa !420
  %14 = getelementptr inbounds i8* %13, i64 1, !dbg !419
  store i8* %14, i8** %12, align 8, !dbg !419, !tbaa !420
  store i8 %11, i8* %13, align 1, !dbg !421, !tbaa !422
  br label %17, !dbg !423

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #7, !dbg !424
  br label %17, !dbg !425

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0, !dbg !426
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #2

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #3 {
  tail call void @llvm.dbg.value(metadata i32 %__signo, i64 0, metadata !80, metadata !394), !dbg !427
  %1 = icmp sgt i32 %__signo, 32, !dbg !428
  br i1 %1, label %5, label %2, !dbg !429

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1, !dbg !430
  %4 = shl i32 1, %3, !dbg !431
  br label %5, !dbg !429

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ], !dbg !429
  ret i32 %6, !dbg !432
}

; Function Attrs: nounwind optsize ssp uwtable
define %struct.t_PSgrid* @mk_PSgrid(i32 %nx, i32 %ny, i32 %nz) #4 {
  tail call void @llvm.dbg.value(metadata i32 %nx, i64 0, metadata !100, metadata !394), !dbg !433
  tail call void @llvm.dbg.value(metadata i32 %ny, i64 0, metadata !101, metadata !394), !dbg !434
  tail call void @llvm.dbg.value(metadata i32 %nz, i64 0, metadata !102, metadata !394), !dbg !435
  %1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str1, i64 0, i64 0), i32 49, i32 1, i32 24) #7, !dbg !436
  %2 = bitcast i8* %1 to %struct.t_PSgrid*, !dbg !436
  tail call void @llvm.dbg.value(metadata %struct.t_PSgrid* %2, i64 0, metadata !103, metadata !394), !dbg !437
  %3 = bitcast i8* %1 to i32*, !dbg !438
  store i32 %nx, i32* %3, align 4, !dbg !439, !tbaa !440
  %4 = getelementptr inbounds i8* %1, i64 4, !dbg !442
  %5 = bitcast i8* %4 to i32*, !dbg !442
  store i32 %ny, i32* %5, align 4, !dbg !443, !tbaa !444
  %6 = getelementptr inbounds i8* %1, i64 8, !dbg !445
  %7 = bitcast i8* %6 to i32*, !dbg !445
  store i32 %nz, i32* %7, align 4, !dbg !446, !tbaa !447
  %8 = tail call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str1, i64 0, i64 0), i32 53, i32 %nx, i32 8) #7, !dbg !448
  %9 = getelementptr inbounds i8* %1, i64 16, !dbg !448
  %10 = bitcast i8* %9 to float****, !dbg !448
  %11 = bitcast i8* %9 to i8**, !dbg !448
  store i8* %8, i8** %11, align 8, !dbg !448, !tbaa !449
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !104, metadata !394), !dbg !450
  %12 = icmp sgt i32 %nx, 0, !dbg !451
  br i1 %12, label %.lr.ph4, label %._crit_edge5, !dbg !454

.lr.ph4:                                          ; preds = %0
  %13 = icmp sgt i32 %ny, 0, !dbg !455
  %14 = add i32 %ny, -1, !dbg !454
  %15 = add i32 %nx, -1, !dbg !454
  br label %16, !dbg !454

; <label>:16                                      ; preds = %._crit_edge, %.lr.ph4
  %indvars.iv6 = phi i64 [ 0, %.lr.ph4 ], [ %indvars.iv.next7, %._crit_edge ]
  %17 = tail call i8* @save_calloc(i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str1, i64 0, i64 0), i32 55, i32 %ny, i32 8) #7, !dbg !459
  %18 = load float**** %10, align 8, !dbg !459, !tbaa !449
  %19 = getelementptr inbounds float*** %18, i64 %indvars.iv6, !dbg !459
  %20 = bitcast float*** %19 to i8**, !dbg !459
  store i8* %17, i8** %20, align 8, !dbg !459, !tbaa !460
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !105, metadata !394), !dbg !461
  br i1 %13, label %.lr.ph, label %._crit_edge, !dbg !462

.lr.ph:                                           ; preds = %16, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %16 ]
  %21 = tail call i8* @save_calloc(i8* getelementptr inbounds ([14 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str1, i64 0, i64 0), i32 57, i32 %nz, i32 4) #7, !dbg !463
  %22 = load float**** %10, align 8, !dbg !463, !tbaa !449
  %23 = getelementptr inbounds float*** %22, i64 %indvars.iv6, !dbg !463
  %24 = load float*** %23, align 8, !dbg !463, !tbaa !460
  %25 = getelementptr inbounds float** %24, i64 %indvars.iv, !dbg !463
  %26 = bitcast float** %25 to i8**, !dbg !463
  store i8* %21, i8** %26, align 8, !dbg !463, !tbaa !460
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !462
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !462
  %exitcond = icmp eq i32 %lftr.wideiv, %14, !dbg !462
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !dbg !462

._crit_edge:                                      ; preds = %.lr.ph, %16
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1, !dbg !454
  %lftr.wideiv8 = trunc i64 %indvars.iv6 to i32, !dbg !454
  %exitcond9 = icmp eq i32 %lftr.wideiv8, %15, !dbg !454
  br i1 %exitcond9, label %._crit_edge5, label %16, !dbg !454

._crit_edge5:                                     ; preds = %._crit_edge, %0
  ret %struct.t_PSgrid* %2, !dbg !464
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @unpack_PSgrid(%struct.t_PSgrid* nocapture readonly %grid, i32* nocapture %nx, i32* nocapture %ny, i32* nocapture %nz, float**** nocapture %ptr) #4 {
  tail call void @llvm.dbg.value(metadata %struct.t_PSgrid* %grid, i64 0, metadata !112, metadata !394), !dbg !465
  tail call void @llvm.dbg.value(metadata i32* %nx, i64 0, metadata !113, metadata !394), !dbg !466
  tail call void @llvm.dbg.value(metadata i32* %ny, i64 0, metadata !114, metadata !394), !dbg !467
  tail call void @llvm.dbg.value(metadata i32* %nz, i64 0, metadata !115, metadata !394), !dbg !468
  tail call void @llvm.dbg.value(metadata float**** %ptr, i64 0, metadata !116, metadata !394), !dbg !469
  %1 = getelementptr inbounds %struct.t_PSgrid* %grid, i64 0, i32 0, !dbg !470
  %2 = load i32* %1, align 4, !dbg !470, !tbaa !440
  store i32 %2, i32* %nx, align 4, !dbg !471, !tbaa !472
  %3 = getelementptr inbounds %struct.t_PSgrid* %grid, i64 0, i32 1, !dbg !473
  %4 = load i32* %3, align 4, !dbg !473, !tbaa !444
  store i32 %4, i32* %ny, align 4, !dbg !474, !tbaa !472
  %5 = getelementptr inbounds %struct.t_PSgrid* %grid, i64 0, i32 2, !dbg !475
  %6 = load i32* %5, align 4, !dbg !475, !tbaa !447
  store i32 %6, i32* %nz, align 4, !dbg !476, !tbaa !472
  %7 = getelementptr inbounds %struct.t_PSgrid* %grid, i64 0, i32 3, !dbg !477
  %8 = bitcast float**** %7 to i64*, !dbg !477
  %9 = load i64* %8, align 8, !dbg !477, !tbaa !449
  %10 = bitcast float**** %ptr to i64*, !dbg !478
  store i64 %9, i64* %10, align 8, !dbg !478, !tbaa !460
  ret void, !dbg !479
}

; Function Attrs: nounwind optsize ssp uwtable
define void @copy_PSgrid(%struct.t_PSgrid* nocapture readonly %dest, %struct.t_PSgrid* nocapture readonly %src) #4 {
  tail call void @llvm.dbg.value(metadata %struct.t_PSgrid* %dest, i64 0, metadata !121, metadata !394), !dbg !480
  tail call void @llvm.dbg.value(metadata %struct.t_PSgrid* %src, i64 0, metadata !122, metadata !394), !dbg !481
  tail call void @llvm.dbg.value(metadata float**** undef, i64 0, metadata !130, metadata !394), !dbg !482
  tail call void @llvm.dbg.value(metadata %struct.t_PSgrid* %dest, i64 0, metadata !112, metadata !394), !dbg !483
  tail call void @llvm.dbg.value(metadata float**** undef, i64 0, metadata !116, metadata !394), !dbg !485
  tail call void @llvm.dbg.value(metadata float**** undef, i64 0, metadata !129, metadata !394), !dbg !486
  tail call void @llvm.dbg.value(metadata %struct.t_PSgrid* %src, i64 0, metadata !112, metadata !394), !dbg !487
  tail call void @llvm.dbg.value(metadata float**** undef, i64 0, metadata !116, metadata !394), !dbg !489
  %1 = getelementptr inbounds %struct.t_PSgrid* %src, i64 0, i32 0, !dbg !490
  %2 = load i32* %1, align 4, !dbg !490, !tbaa !440
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !113, metadata !394), !dbg !491
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !113, metadata !394), !dbg !492
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !126, metadata !394), !dbg !493
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !126, metadata !394), !dbg !493
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !126, metadata !394), !dbg !493
  %3 = getelementptr inbounds %struct.t_PSgrid* %src, i64 0, i32 1, !dbg !494
  %4 = load i32* %3, align 4, !dbg !494, !tbaa !444
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !114, metadata !394), !dbg !495
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !114, metadata !394), !dbg !496
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !127, metadata !394), !dbg !497
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !127, metadata !394), !dbg !497
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !127, metadata !394), !dbg !497
  %5 = getelementptr inbounds %struct.t_PSgrid* %src, i64 0, i32 2, !dbg !498
  %6 = load i32* %5, align 4, !dbg !498, !tbaa !447
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !115, metadata !394), !dbg !499
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !115, metadata !394), !dbg !500
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !128, metadata !394), !dbg !501
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !128, metadata !394), !dbg !501
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !128, metadata !394), !dbg !501
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !123, metadata !394), !dbg !502
  %7 = icmp sgt i32 %2, 0, !dbg !503
  br i1 %7, label %.preheader1.lr.ph, label %._crit_edge6, !dbg !506

.preheader1.lr.ph:                                ; preds = %0
  %8 = getelementptr inbounds %struct.t_PSgrid* %src, i64 0, i32 3, !dbg !507
  %9 = bitcast float**** %8 to i64*, !dbg !507
  %10 = load i64* %9, align 8, !dbg !507, !tbaa !449
  %11 = getelementptr inbounds %struct.t_PSgrid* %dest, i64 0, i32 3, !dbg !508
  %12 = bitcast float**** %11 to i64*, !dbg !508
  %13 = load i64* %12, align 8, !dbg !508, !tbaa !449
  %14 = icmp sgt i32 %4, 0, !dbg !509
  %15 = icmp sgt i32 %6, 0, !dbg !512
  %16 = inttoptr i64 %10 to float***, !dbg !515
  %17 = inttoptr i64 %13 to float***, !dbg !516
  %18 = add i32 %6, -1, !dbg !506
  %19 = add i32 %4, -1, !dbg !506
  %20 = add i32 %2, -1, !dbg !506
  br label %.preheader1, !dbg !506

.preheader1:                                      ; preds = %._crit_edge4, %.preheader1.lr.ph
  %indvars.iv11 = phi i64 [ 0, %.preheader1.lr.ph ], [ %indvars.iv.next12, %._crit_edge4 ]
  br i1 %14, label %.preheader.lr.ph, label %._crit_edge4, !dbg !517

.preheader.lr.ph:                                 ; preds = %.preheader1
  %21 = getelementptr inbounds float*** %16, i64 %indvars.iv11, !dbg !515
  %22 = getelementptr inbounds float*** %17, i64 %indvars.iv11, !dbg !516
  br label %.preheader, !dbg !517

.preheader:                                       ; preds = %._crit_edge, %.preheader.lr.ph
  %indvars.iv7 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next8, %._crit_edge ]
  br i1 %15, label %.lr.ph, label %._crit_edge, !dbg !518

.lr.ph:                                           ; preds = %.preheader
  %23 = load float*** %21, align 8, !dbg !515, !tbaa !460
  %24 = getelementptr inbounds float** %23, i64 %indvars.iv7, !dbg !515
  %25 = load float** %24, align 8, !dbg !515, !tbaa !460
  %26 = load float*** %22, align 8, !dbg !516, !tbaa !460
  %27 = getelementptr inbounds float** %26, i64 %indvars.iv7, !dbg !516
  %28 = load float** %27, align 8, !dbg !516, !tbaa !460
  br label %29, !dbg !518

; <label>:29                                      ; preds = %29, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %29 ]
  tail call void @llvm.dbg.value(metadata float**** undef, i64 0, metadata !129, metadata !394), !dbg !486
  %30 = getelementptr inbounds float* %25, i64 %indvars.iv, !dbg !515
  %31 = bitcast float* %30 to i32*, !dbg !515
  %32 = load i32* %31, align 4, !dbg !515, !tbaa !519
  tail call void @llvm.dbg.value(metadata float**** undef, i64 0, metadata !130, metadata !394), !dbg !482
  %33 = getelementptr inbounds float* %28, i64 %indvars.iv, !dbg !516
  %34 = bitcast float* %33 to i32*, !dbg !521
  store i32 %32, i32* %34, align 4, !dbg !521, !tbaa !519
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !518
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !518
  %exitcond = icmp eq i32 %lftr.wideiv, %18, !dbg !518
  br i1 %exitcond, label %._crit_edge, label %29, !dbg !518

._crit_edge:                                      ; preds = %29, %.preheader
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1, !dbg !517
  %lftr.wideiv9 = trunc i64 %indvars.iv7 to i32, !dbg !517
  %exitcond10 = icmp eq i32 %lftr.wideiv9, %19, !dbg !517
  br i1 %exitcond10, label %._crit_edge4, label %.preheader, !dbg !517

._crit_edge4:                                     ; preds = %._crit_edge, %.preheader1
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1, !dbg !506
  %lftr.wideiv13 = trunc i64 %indvars.iv11 to i32, !dbg !506
  %exitcond14 = icmp eq i32 %lftr.wideiv13, %20, !dbg !506
  br i1 %exitcond14, label %._crit_edge6, label %.preheader1, !dbg !506

._crit_edge6:                                     ; preds = %._crit_edge4, %0
  ret void, !dbg !522
}

; Function Attrs: nounwind optsize ssp uwtable
define void @clear_PSgrid(%struct.t_PSgrid* nocapture readonly %grid) #4 {
  tail call void @llvm.dbg.value(metadata %struct.t_PSgrid* %grid, i64 0, metadata !135, metadata !394), !dbg !523
  tail call void @llvm.dbg.value(metadata float**** undef, i64 0, metadata !142, metadata !394), !dbg !524
  tail call void @llvm.dbg.value(metadata %struct.t_PSgrid* %grid, i64 0, metadata !112, metadata !394), !dbg !525
  tail call void @llvm.dbg.value(metadata float**** undef, i64 0, metadata !116, metadata !394), !dbg !527
  %1 = getelementptr inbounds %struct.t_PSgrid* %grid, i64 0, i32 0, !dbg !528
  %2 = load i32* %1, align 4, !dbg !528, !tbaa !440
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !113, metadata !394), !dbg !529
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !139, metadata !394), !dbg !530
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !139, metadata !394), !dbg !530
  %3 = getelementptr inbounds %struct.t_PSgrid* %grid, i64 0, i32 1, !dbg !531
  %4 = load i32* %3, align 4, !dbg !531, !tbaa !444
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !114, metadata !394), !dbg !532
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !140, metadata !394), !dbg !533
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !140, metadata !394), !dbg !533
  %5 = getelementptr inbounds %struct.t_PSgrid* %grid, i64 0, i32 2, !dbg !534
  %6 = load i32* %5, align 4, !dbg !534, !tbaa !447
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !115, metadata !394), !dbg !535
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !141, metadata !394), !dbg !536
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !141, metadata !394), !dbg !536
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !136, metadata !394), !dbg !537
  %7 = icmp sgt i32 %2, 0, !dbg !538
  br i1 %7, label %.preheader1.lr.ph, label %._crit_edge6, !dbg !541

.preheader1.lr.ph:                                ; preds = %0
  %8 = getelementptr inbounds %struct.t_PSgrid* %grid, i64 0, i32 3, !dbg !542
  %9 = bitcast float**** %8 to i64*, !dbg !542
  %10 = load i64* %9, align 8, !dbg !542, !tbaa !449
  %11 = icmp sgt i32 %4, 0, !dbg !543
  %12 = icmp sgt i32 %6, 0, !dbg !546
  %13 = inttoptr i64 %10 to float***, !dbg !549
  %14 = add i32 %6, -1, !dbg !541
  %15 = zext i32 %14 to i64
  %16 = shl nuw nsw i64 %15, 2, !dbg !541
  %17 = add nuw nsw i64 %16, 4, !dbg !541
  %18 = add i32 %4, -1, !dbg !541
  %19 = add i32 %2, -1, !dbg !541
  br label %.preheader1, !dbg !541

.preheader1:                                      ; preds = %._crit_edge4, %.preheader1.lr.ph
  %indvars.iv7 = phi i64 [ 0, %.preheader1.lr.ph ], [ %indvars.iv.next8, %._crit_edge4 ]
  br i1 %11, label %.preheader.lr.ph, label %._crit_edge4, !dbg !550

.preheader.lr.ph:                                 ; preds = %.preheader1
  %20 = getelementptr inbounds float*** %13, i64 %indvars.iv7, !dbg !549
  br label %.preheader, !dbg !550

.preheader:                                       ; preds = %25, %.preheader.lr.ph
  %indvars.iv = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next, %25 ]
  br i1 %12, label %.lr.ph, label %25, !dbg !551

.lr.ph:                                           ; preds = %.preheader
  %21 = load float*** %20, align 8, !dbg !549, !tbaa !460
  %22 = getelementptr inbounds float** %21, i64 %indvars.iv, !dbg !549
  %23 = bitcast float** %22 to i8**, !dbg !549
  %24 = load i8** %23, align 8, !dbg !549, !tbaa !460
  call void @llvm.memset.p0i8.i64(i8* %24, i8 0, i64 %17, i32 4, i1 false), !dbg !552
  br label %25, !dbg !551

; <label>:25                                      ; preds = %.lr.ph, %.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !550
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !550
  %exitcond = icmp eq i32 %lftr.wideiv, %18, !dbg !550
  br i1 %exitcond, label %._crit_edge4, label %.preheader, !dbg !550

._crit_edge4:                                     ; preds = %25, %.preheader1
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1, !dbg !541
  %lftr.wideiv9 = trunc i64 %indvars.iv7 to i32, !dbg !541
  %exitcond10 = icmp eq i32 %lftr.wideiv9, %19, !dbg !541
  br i1 %exitcond10, label %._crit_edge6, label %.preheader1, !dbg !541

._crit_edge6:                                     ; preds = %._crit_edge4, %0
  ret void, !dbg !553
}

; Function Attrs: nounwind optsize ssp uwtable
define void @symmetrize_PSgrid(%struct.__sFILE* %fp, %struct.t_PSgrid* nocapture readonly %grid, float %sum) #4 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %fp, i64 0, metadata !147, metadata !394), !dbg !554
  tail call void @llvm.dbg.value(metadata %struct.t_PSgrid* %grid, i64 0, metadata !148, metadata !394), !dbg !555
  tail call void @llvm.dbg.value(metadata float %sum, i64 0, metadata !149, metadata !394), !dbg !556
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !157, metadata !394), !dbg !557
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !158, metadata !394), !dbg !558
  tail call void @llvm.dbg.declare(metadata [3 x i32]* undef, metadata !159, metadata !394), !dbg !559
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !159, metadata !560), !dbg !559
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !159, metadata !561), !dbg !559
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !159, metadata !562), !dbg !559
  tail call void @llvm.dbg.declare(metadata [3 x i32]* undef, metadata !162, metadata !394), !dbg !563
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !162, metadata !560), !dbg !563
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !162, metadata !561), !dbg !563
  tail call void @llvm.dbg.value(metadata i32 -1, i64 0, metadata !162, metadata !562), !dbg !563
  tail call void @llvm.dbg.value(metadata float**** undef, i64 0, metadata !156, metadata !394), !dbg !564
  tail call void @llvm.dbg.value(metadata %struct.t_PSgrid* %grid, i64 0, metadata !112, metadata !394), !dbg !565
  tail call void @llvm.dbg.value(metadata float**** undef, i64 0, metadata !116, metadata !394), !dbg !567
  %1 = getelementptr inbounds %struct.t_PSgrid* %grid, i64 0, i32 0, !dbg !568
  %2 = load i32* %1, align 4, !dbg !568, !tbaa !440
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !113, metadata !394), !dbg !569
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !153, metadata !394), !dbg !570
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !153, metadata !394), !dbg !570
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !153, metadata !394), !dbg !570
  tail call void @llvm.dbg.value(metadata i32 %2, i64 0, metadata !153, metadata !394), !dbg !570
  %3 = getelementptr inbounds %struct.t_PSgrid* %grid, i64 0, i32 1, !dbg !571
  %4 = load i32* %3, align 4, !dbg !571, !tbaa !444
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !114, metadata !394), !dbg !572
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !154, metadata !394), !dbg !573
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !154, metadata !394), !dbg !573
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !154, metadata !394), !dbg !573
  tail call void @llvm.dbg.value(metadata i32 %4, i64 0, metadata !154, metadata !394), !dbg !573
  %5 = getelementptr inbounds %struct.t_PSgrid* %grid, i64 0, i32 2, !dbg !574
  %6 = load i32* %5, align 4, !dbg !574, !tbaa !447
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !115, metadata !394), !dbg !575
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !155, metadata !394), !dbg !576
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !155, metadata !394), !dbg !576
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !155, metadata !394), !dbg !576
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !155, metadata !394), !dbg !576
  %7 = getelementptr inbounds %struct.t_PSgrid* %grid, i64 0, i32 3, !dbg !577
  %8 = bitcast float**** %7 to i64*, !dbg !577
  %9 = load i64* %8, align 8, !dbg !577, !tbaa !449
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !158, metadata !394), !dbg !558
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !157, metadata !394), !dbg !557
  %fabsf = tail call float @fabsf(float %sum) #8, !dbg !578
  %10 = fpext float %fabsf to double, !dbg !578
  %11 = fcmp olt double %10, 1.200000e-38, !dbg !580
  br i1 %11, label %12, label %.loopexit, !dbg !581

; <label>:12                                      ; preds = %0
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !149, metadata !394), !dbg !556
  tail call void @llvm.dbg.value(metadata float**** undef, i64 0, metadata !156, metadata !394), !dbg !564
  %13 = inttoptr i64 %9 to float***, !dbg !582
  %14 = load float*** %13, align 8, !dbg !582, !tbaa !460
  %15 = load float** %14, align 8, !dbg !582, !tbaa !460
  %16 = load float* %15, align 4, !dbg !582, !tbaa !519
  tail call void @llvm.dbg.value(metadata float %16, i64 0, metadata !158, metadata !394), !dbg !558
  tail call void @llvm.dbg.value(metadata float %16, i64 0, metadata !157, metadata !394), !dbg !557
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !150, metadata !394), !dbg !584
  %17 = icmp sgt i32 %2, 0, !dbg !585
  br i1 %17, label %.preheader3.lr.ph, label %.loopexit.thread, !dbg !588

.loopexit.thread:                                 ; preds = %12
  %18 = mul nsw i32 %4, %2, !dbg !589
  %19 = mul nsw i32 %18, %6, !dbg !590
  %20 = sitofp i32 %19 to float, !dbg !591
  %21 = fdiv float 0.000000e+00, %20, !dbg !592
  tail call void @llvm.dbg.value(metadata float %46, i64 0, metadata !149, metadata !394), !dbg !556
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !150, metadata !394), !dbg !584
  br label %._crit_edge8, !dbg !593

.preheader3.lr.ph:                                ; preds = %12
  %22 = icmp sgt i32 %4, 0, !dbg !595
  %23 = icmp sgt i32 %6, 0, !dbg !598
  %24 = add i32 %6, -1, !dbg !588
  %25 = add i32 %4, -1, !dbg !588
  %26 = add i32 %2, -1, !dbg !588
  br label %.preheader3, !dbg !588

.preheader3:                                      ; preds = %._crit_edge40, %.preheader3.lr.ph
  %indvars.iv86 = phi i64 [ 0, %.preheader3.lr.ph ], [ %indvars.iv.next87, %._crit_edge40 ]
  %imax.sroa.0.060 = phi i32 [ -1, %.preheader3.lr.ph ], [ %imax.sroa.0.1.lcssa, %._crit_edge40 ]
  %imax.sroa.3.059 = phi i32 [ -1, %.preheader3.lr.ph ], [ %imax.sroa.3.1.lcssa, %._crit_edge40 ]
  %imax.sroa.5.058 = phi i32 [ -1, %.preheader3.lr.ph ], [ %imax.sroa.5.1.lcssa, %._crit_edge40 ]
  %imin.sroa.0.057 = phi i32 [ -1, %.preheader3.lr.ph ], [ %imin.sroa.0.1.lcssa, %._crit_edge40 ]
  %imin.sroa.3.056 = phi i32 [ -1, %.preheader3.lr.ph ], [ %imin.sroa.3.1.lcssa, %._crit_edge40 ]
  %imin.sroa.5.055 = phi i32 [ -1, %.preheader3.lr.ph ], [ %imin.sroa.5.1.lcssa, %._crit_edge40 ]
  %maxg.054 = phi float [ %16, %.preheader3.lr.ph ], [ %maxg.1.lcssa, %._crit_edge40 ]
  %ming.053 = phi float [ %16, %.preheader3.lr.ph ], [ %ming.1.lcssa, %._crit_edge40 ]
  %.050 = phi float [ 0.000000e+00, %.preheader3.lr.ph ], [ %.1.lcssa, %._crit_edge40 ]
  br i1 %22, label %.preheader2.lr.ph, label %._crit_edge40, !dbg !601

.preheader2.lr.ph:                                ; preds = %.preheader3
  %27 = getelementptr inbounds float*** %13, i64 %indvars.iv86, !dbg !602
  br label %.preheader2, !dbg !601

.preheader2:                                      ; preds = %._crit_edge20, %.preheader2.lr.ph
  %indvars.iv82 = phi i64 [ 0, %.preheader2.lr.ph ], [ %indvars.iv.next83, %._crit_edge20 ]
  %imax.sroa.0.139 = phi i32 [ %imax.sroa.0.060, %.preheader2.lr.ph ], [ %imax.sroa.0.2.lcssa, %._crit_edge20 ]
  %imax.sroa.3.138 = phi i32 [ %imax.sroa.3.059, %.preheader2.lr.ph ], [ %imax.sroa.3.2.lcssa, %._crit_edge20 ]
  %imax.sroa.5.137 = phi i32 [ %imax.sroa.5.058, %.preheader2.lr.ph ], [ %imax.sroa.5.2.lcssa, %._crit_edge20 ]
  %imin.sroa.0.136 = phi i32 [ %imin.sroa.0.057, %.preheader2.lr.ph ], [ %imin.sroa.0.2.lcssa, %._crit_edge20 ]
  %imin.sroa.3.135 = phi i32 [ %imin.sroa.3.056, %.preheader2.lr.ph ], [ %imin.sroa.3.2.lcssa, %._crit_edge20 ]
  %imin.sroa.5.134 = phi i32 [ %imin.sroa.5.055, %.preheader2.lr.ph ], [ %imin.sroa.5.2.lcssa, %._crit_edge20 ]
  %maxg.133 = phi float [ %maxg.054, %.preheader2.lr.ph ], [ %maxg.2.lcssa, %._crit_edge20 ]
  %ming.132 = phi float [ %ming.053, %.preheader2.lr.ph ], [ %ming.2.lcssa, %._crit_edge20 ]
  %.129 = phi float [ %.050, %.preheader2.lr.ph ], [ %.2.lcssa, %._crit_edge20 ]
  br i1 %23, label %.lr.ph19, label %.preheader2._crit_edge, !dbg !604

.preheader2._crit_edge:                           ; preds = %.preheader2
  %.pre = trunc i64 %indvars.iv82 to i32, !dbg !601
  br label %._crit_edge20, !dbg !604

.lr.ph19:                                         ; preds = %.preheader2
  %28 = load float*** %27, align 8, !dbg !602, !tbaa !460
  %29 = getelementptr inbounds float** %28, i64 %indvars.iv82, !dbg !602
  %30 = load float** %29, align 8, !dbg !602, !tbaa !460
  br label %31, !dbg !604

; <label>:31                                      ; preds = %42, %.lr.ph19
  %indvars.iv78 = phi i64 [ 0, %.lr.ph19 ], [ %indvars.iv.next79, %42 ]
  %imax.sroa.0.218 = phi i32 [ %imax.sroa.0.139, %.lr.ph19 ], [ %imax.sroa.0.3, %42 ]
  %imax.sroa.3.217 = phi i32 [ %imax.sroa.3.138, %.lr.ph19 ], [ %imax.sroa.3.3, %42 ]
  %imax.sroa.5.216 = phi i32 [ %imax.sroa.5.137, %.lr.ph19 ], [ %imax.sroa.5.3, %42 ]
  %imin.sroa.0.215 = phi i32 [ %imin.sroa.0.136, %.lr.ph19 ], [ %imin.sroa.0.3, %42 ]
  %imin.sroa.3.214 = phi i32 [ %imin.sroa.3.135, %.lr.ph19 ], [ %imin.sroa.3.3, %42 ]
  %imin.sroa.5.213 = phi i32 [ %imin.sroa.5.134, %.lr.ph19 ], [ %imin.sroa.5.3, %42 ]
  %maxg.212 = phi float [ %maxg.133, %.lr.ph19 ], [ %maxg.3, %42 ]
  %ming.211 = phi float [ %ming.132, %.lr.ph19 ], [ %ming.3, %42 ]
  %.29 = phi float [ %.129, %.lr.ph19 ], [ %34, %42 ]
  tail call void @llvm.dbg.value(metadata float**** undef, i64 0, metadata !156, metadata !394), !dbg !564
  %32 = getelementptr inbounds float* %30, i64 %indvars.iv78, !dbg !602
  %33 = load float* %32, align 4, !dbg !602, !tbaa !519
  %34 = fadd float %.29, %33, !dbg !605
  tail call void @llvm.dbg.value(metadata float %34, i64 0, metadata !149, metadata !394), !dbg !556
  %35 = fcmp olt float %33, %ming.211, !dbg !606
  %36 = trunc i64 %indvars.iv78 to i32, !dbg !608
  %37 = trunc i64 %indvars.iv82 to i32, !dbg !608
  %38 = trunc i64 %indvars.iv86 to i32, !dbg !608
  br i1 %35, label %42, label %39, !dbg !608

; <label>:39                                      ; preds = %31
  %40 = fcmp ogt float %33, %maxg.212, !dbg !609
  br i1 %40, label %41, label %42, !dbg !611

; <label>:41                                      ; preds = %39
  tail call void @llvm.dbg.value(metadata float %33, i64 0, metadata !158, metadata !394), !dbg !558
  br label %42, !dbg !612

; <label>:42                                      ; preds = %31, %41, %39
  %ming.3 = phi float [ %ming.211, %41 ], [ %ming.211, %39 ], [ %33, %31 ]
  %maxg.3 = phi float [ %33, %41 ], [ %maxg.212, %39 ], [ %maxg.212, %31 ]
  %imin.sroa.5.3 = phi i32 [ %imin.sroa.5.213, %41 ], [ %imin.sroa.5.213, %39 ], [ %36, %31 ]
  %imin.sroa.3.3 = phi i32 [ %imin.sroa.3.214, %41 ], [ %imin.sroa.3.214, %39 ], [ %37, %31 ]
  %imin.sroa.0.3 = phi i32 [ %imin.sroa.0.215, %41 ], [ %imin.sroa.0.215, %39 ], [ %38, %31 ]
  %imax.sroa.5.3 = phi i32 [ %36, %41 ], [ %imax.sroa.5.216, %39 ], [ %imax.sroa.5.216, %31 ]
  %imax.sroa.3.3 = phi i32 [ %37, %41 ], [ %imax.sroa.3.217, %39 ], [ %imax.sroa.3.217, %31 ]
  %imax.sroa.0.3 = phi i32 [ %38, %41 ], [ %imax.sroa.0.218, %39 ], [ %imax.sroa.0.218, %31 ]
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1, !dbg !604
  %exitcond81 = icmp eq i32 %36, %24, !dbg !604
  br i1 %exitcond81, label %._crit_edge20, label %31, !dbg !604

._crit_edge20:                                    ; preds = %42, %.preheader2._crit_edge
  %lftr.wideiv84.pre-phi = phi i32 [ %.pre, %.preheader2._crit_edge ], [ %37, %42 ], !dbg !601
  %imax.sroa.0.2.lcssa = phi i32 [ %imax.sroa.0.139, %.preheader2._crit_edge ], [ %imax.sroa.0.3, %42 ]
  %imax.sroa.3.2.lcssa = phi i32 [ %imax.sroa.3.138, %.preheader2._crit_edge ], [ %imax.sroa.3.3, %42 ]
  %imax.sroa.5.2.lcssa = phi i32 [ %imax.sroa.5.137, %.preheader2._crit_edge ], [ %imax.sroa.5.3, %42 ]
  %imin.sroa.0.2.lcssa = phi i32 [ %imin.sroa.0.136, %.preheader2._crit_edge ], [ %imin.sroa.0.3, %42 ]
  %imin.sroa.3.2.lcssa = phi i32 [ %imin.sroa.3.135, %.preheader2._crit_edge ], [ %imin.sroa.3.3, %42 ]
  %imin.sroa.5.2.lcssa = phi i32 [ %imin.sroa.5.134, %.preheader2._crit_edge ], [ %imin.sroa.5.3, %42 ]
  %maxg.2.lcssa = phi float [ %maxg.133, %.preheader2._crit_edge ], [ %maxg.3, %42 ]
  %ming.2.lcssa = phi float [ %ming.132, %.preheader2._crit_edge ], [ %ming.3, %42 ]
  %.2.lcssa = phi float [ %.129, %.preheader2._crit_edge ], [ %34, %42 ]
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1, !dbg !601
  %exitcond85 = icmp eq i32 %lftr.wideiv84.pre-phi, %25, !dbg !601
  br i1 %exitcond85, label %._crit_edge40, label %.preheader2, !dbg !601

._crit_edge40:                                    ; preds = %._crit_edge20, %.preheader3
  %imax.sroa.0.1.lcssa = phi i32 [ %imax.sroa.0.060, %.preheader3 ], [ %imax.sroa.0.2.lcssa, %._crit_edge20 ]
  %imax.sroa.3.1.lcssa = phi i32 [ %imax.sroa.3.059, %.preheader3 ], [ %imax.sroa.3.2.lcssa, %._crit_edge20 ]
  %imax.sroa.5.1.lcssa = phi i32 [ %imax.sroa.5.058, %.preheader3 ], [ %imax.sroa.5.2.lcssa, %._crit_edge20 ]
  %imin.sroa.0.1.lcssa = phi i32 [ %imin.sroa.0.057, %.preheader3 ], [ %imin.sroa.0.2.lcssa, %._crit_edge20 ]
  %imin.sroa.3.1.lcssa = phi i32 [ %imin.sroa.3.056, %.preheader3 ], [ %imin.sroa.3.2.lcssa, %._crit_edge20 ]
  %imin.sroa.5.1.lcssa = phi i32 [ %imin.sroa.5.055, %.preheader3 ], [ %imin.sroa.5.2.lcssa, %._crit_edge20 ]
  %maxg.1.lcssa = phi float [ %maxg.054, %.preheader3 ], [ %maxg.2.lcssa, %._crit_edge20 ]
  %ming.1.lcssa = phi float [ %ming.053, %.preheader3 ], [ %ming.2.lcssa, %._crit_edge20 ]
  %.1.lcssa = phi float [ %.050, %.preheader3 ], [ %.2.lcssa, %._crit_edge20 ]
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1, !dbg !588
  %lftr.wideiv88 = trunc i64 %indvars.iv86 to i32, !dbg !588
  %exitcond89 = icmp eq i32 %lftr.wideiv88, %26, !dbg !588
  br i1 %exitcond89, label %.loopexit, label %.preheader3, !dbg !588

.loopexit:                                        ; preds = %._crit_edge40, %0
  %.3 = phi float [ %sum, %0 ], [ %.1.lcssa, %._crit_edge40 ]
  %ming.4 = phi float [ 0.000000e+00, %0 ], [ %ming.1.lcssa, %._crit_edge40 ]
  %maxg.4 = phi float [ 0.000000e+00, %0 ], [ %maxg.1.lcssa, %._crit_edge40 ]
  %imin.sroa.5.4 = phi i32 [ -1, %0 ], [ %imin.sroa.5.1.lcssa, %._crit_edge40 ]
  %imin.sroa.3.4 = phi i32 [ -1, %0 ], [ %imin.sroa.3.1.lcssa, %._crit_edge40 ]
  %imin.sroa.0.4 = phi i32 [ -1, %0 ], [ %imin.sroa.0.1.lcssa, %._crit_edge40 ]
  %imax.sroa.5.4 = phi i32 [ -1, %0 ], [ %imax.sroa.5.1.lcssa, %._crit_edge40 ]
  %imax.sroa.3.4 = phi i32 [ -1, %0 ], [ %imax.sroa.3.1.lcssa, %._crit_edge40 ]
  %imax.sroa.0.4 = phi i32 [ -1, %0 ], [ %imax.sroa.0.1.lcssa, %._crit_edge40 ]
  %43 = mul nsw i32 %4, %2, !dbg !589
  %44 = mul nsw i32 %43, %6, !dbg !590
  %45 = sitofp i32 %44 to float, !dbg !591
  %46 = fdiv float %.3, %45, !dbg !592
  tail call void @llvm.dbg.value(metadata float %46, i64 0, metadata !149, metadata !394), !dbg !556
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !150, metadata !394), !dbg !584
  %47 = icmp sgt i32 %2, 0, !dbg !614
  br i1 %47, label %.preheader1.lr.ph, label %._crit_edge8, !dbg !593

.preheader1.lr.ph:                                ; preds = %.loopexit
  %48 = icmp sgt i32 %4, 0, !dbg !616
  %49 = icmp sgt i32 %6, 0, !dbg !619
  %50 = inttoptr i64 %9 to float***, !dbg !622
  %51 = add i32 %6, -1, !dbg !593
  %52 = add i32 %4, -1, !dbg !593
  %53 = add i32 %2, -1, !dbg !593
  br label %.preheader1, !dbg !593

.preheader1:                                      ; preds = %._crit_edge6, %.preheader1.lr.ph
  %indvars.iv74 = phi i64 [ 0, %.preheader1.lr.ph ], [ %indvars.iv.next75, %._crit_edge6 ]
  br i1 %48, label %.preheader.lr.ph, label %._crit_edge6, !dbg !623

.preheader.lr.ph:                                 ; preds = %.preheader1
  %54 = getelementptr inbounds float*** %50, i64 %indvars.iv74, !dbg !622
  br label %.preheader, !dbg !623

.preheader:                                       ; preds = %._crit_edge, %.preheader.lr.ph
  %indvars.iv70 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next71, %._crit_edge ]
  br i1 %49, label %.lr.ph, label %._crit_edge, !dbg !624

.lr.ph:                                           ; preds = %.preheader
  %55 = load float*** %54, align 8, !dbg !622, !tbaa !460
  %56 = getelementptr inbounds float** %55, i64 %indvars.iv70, !dbg !622
  %57 = load float** %56, align 8, !dbg !622, !tbaa !460
  br label %58, !dbg !624

; <label>:58                                      ; preds = %58, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %58 ]
  tail call void @llvm.dbg.value(metadata float**** undef, i64 0, metadata !156, metadata !394), !dbg !564
  %59 = getelementptr inbounds float* %57, i64 %indvars.iv, !dbg !622
  %60 = load float* %59, align 4, !dbg !625, !tbaa !519
  %61 = fsub float %60, %46, !dbg !625
  store float %61, float* %59, align 4, !dbg !625, !tbaa !519
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !624
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !624
  %exitcond = icmp eq i32 %lftr.wideiv, %51, !dbg !624
  br i1 %exitcond, label %._crit_edge, label %58, !dbg !624

._crit_edge:                                      ; preds = %58, %.preheader
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1, !dbg !623
  %lftr.wideiv72 = trunc i64 %indvars.iv70 to i32, !dbg !623
  %exitcond73 = icmp eq i32 %lftr.wideiv72, %52, !dbg !623
  br i1 %exitcond73, label %._crit_edge6, label %.preheader, !dbg !623

._crit_edge6:                                     ; preds = %._crit_edge, %.preheader1
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1, !dbg !593
  %lftr.wideiv76 = trunc i64 %indvars.iv74 to i32, !dbg !593
  %exitcond77 = icmp eq i32 %lftr.wideiv76, %53, !dbg !593
  br i1 %exitcond77, label %._crit_edge8, label %.preheader1, !dbg !593

._crit_edge8:                                     ; preds = %._crit_edge6, %.loopexit.thread, %.loopexit
  %62 = phi float [ %21, %.loopexit.thread ], [ %46, %.loopexit ], [ %46, %._crit_edge6 ]
  %imax.sroa.0.497 = phi i32 [ -1, %.loopexit.thread ], [ %imax.sroa.0.4, %.loopexit ], [ %imax.sroa.0.4, %._crit_edge6 ]
  %imax.sroa.3.496 = phi i32 [ -1, %.loopexit.thread ], [ %imax.sroa.3.4, %.loopexit ], [ %imax.sroa.3.4, %._crit_edge6 ]
  %imax.sroa.5.495 = phi i32 [ -1, %.loopexit.thread ], [ %imax.sroa.5.4, %.loopexit ], [ %imax.sroa.5.4, %._crit_edge6 ]
  %imin.sroa.0.494 = phi i32 [ -1, %.loopexit.thread ], [ %imin.sroa.0.4, %.loopexit ], [ %imin.sroa.0.4, %._crit_edge6 ]
  %imin.sroa.3.493 = phi i32 [ -1, %.loopexit.thread ], [ %imin.sroa.3.4, %.loopexit ], [ %imin.sroa.3.4, %._crit_edge6 ]
  %imin.sroa.5.492 = phi i32 [ -1, %.loopexit.thread ], [ %imin.sroa.5.4, %.loopexit ], [ %imin.sroa.5.4, %._crit_edge6 ]
  %maxg.491 = phi float [ %16, %.loopexit.thread ], [ %maxg.4, %.loopexit ], [ %maxg.4, %._crit_edge6 ]
  %ming.490 = phi float [ %16, %.loopexit.thread ], [ %ming.4, %.loopexit ], [ %ming.4, %._crit_edge6 ]
  %63 = icmp eq %struct.__sFILE* %fp, null, !dbg !626
  br i1 %63, label %69, label %64, !dbg !628

; <label>:64                                      ; preds = %._crit_edge8
  %65 = fpext float %62 to double, !dbg !629
  %66 = fpext float %ming.490 to double, !dbg !630
  %67 = fpext float %maxg.491 to double, !dbg !631
  %68 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([71 x i8]* @.str5, i64 0, i64 0), double %65, double %66, i32 %imin.sroa.0.494, i32 %imin.sroa.3.493, i32 %imin.sroa.5.492, double %67, i32 %imax.sroa.0.497, i32 %imax.sroa.3.496, i32 %imax.sroa.5.495) #7, !dbg !632
  br label %69, !dbg !632

; <label>:69                                      ; preds = %._crit_edge8, %64
  ret void, !dbg !633
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #5

; Function Attrs: nounwind optsize ssp uwtable
define void @calc_nxyz(i32 %nx, i32 %ny, i32 %nz, i32** nocapture %nnx, i32** nocapture %nny, i32** nocapture %nnz) #4 {
  tail call void @llvm.dbg.value(metadata i32 %nx, i64 0, metadata !168, metadata !394), !dbg !634
  tail call void @llvm.dbg.value(metadata i32 %ny, i64 0, metadata !169, metadata !394), !dbg !635
  tail call void @llvm.dbg.value(metadata i32 %nz, i64 0, metadata !170, metadata !394), !dbg !636
  tail call void @llvm.dbg.value(metadata i32** %nnx, i64 0, metadata !171, metadata !394), !dbg !637
  tail call void @llvm.dbg.value(metadata i32** %nny, i64 0, metadata !172, metadata !394), !dbg !638
  tail call void @llvm.dbg.value(metadata i32** %nnz, i64 0, metadata !173, metadata !394), !dbg !639
  %1 = mul nsw i32 %nx, 3, !dbg !640
  %2 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str1, i64 0, i64 0), i32 148, i32 %1, i32 4) #7, !dbg !640
  %3 = bitcast i32** %nnx to i8**, !dbg !640
  store i8* %2, i8** %3, align 8, !dbg !640, !tbaa !460
  %4 = mul nsw i32 %ny, 3, !dbg !641
  %5 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str1, i64 0, i64 0), i32 149, i32 %4, i32 4) #7, !dbg !641
  %6 = bitcast i32** %nny to i8**, !dbg !641
  store i8* %5, i8** %6, align 8, !dbg !641, !tbaa !460
  %7 = mul nsw i32 %nz, 3, !dbg !642
  %8 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str1, i64 0, i64 0), i32 150, i32 %7, i32 4) #7, !dbg !642
  %9 = bitcast i32** %nnz to i8**, !dbg !642
  store i8* %8, i8** %9, align 8, !dbg !642, !tbaa !460
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !174, metadata !394), !dbg !643
  %10 = icmp sgt i32 %nx, 0, !dbg !644
  %11 = bitcast i8* %8 to i32*
  br i1 %10, label %.lr.ph7, label %.preheader1, !dbg !647

.lr.ph7:                                          ; preds = %0
  %12 = load i32** %nnx, align 8, !dbg !648, !tbaa !460
  %13 = sext i32 %1 to i64, !dbg !647
  br label %17, !dbg !647

.preheader1:                                      ; preds = %17, %0
  %14 = icmp sgt i32 %ny, 0, !dbg !649
  br i1 %14, label %.lr.ph4, label %.preheader, !dbg !652

.lr.ph4:                                          ; preds = %.preheader1
  %15 = load i32** %nny, align 8, !dbg !653, !tbaa !460
  %16 = sext i32 %4 to i64, !dbg !652
  br label %24, !dbg !652

; <label>:17                                      ; preds = %.lr.ph7, %17
  %indvars.iv10 = phi i64 [ 0, %.lr.ph7 ], [ %indvars.iv.next11, %17 ]
  %18 = trunc i64 %indvars.iv10 to i32, !dbg !654
  %19 = srem i32 %18, %nx, !dbg !654
  %20 = getelementptr inbounds i32* %12, i64 %indvars.iv10, !dbg !655
  store i32 %19, i32* %20, align 4, !dbg !656, !tbaa !472
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1, !dbg !647
  %21 = icmp slt i64 %indvars.iv.next11, %13, !dbg !644
  br i1 %21, label %17, label %.preheader1, !dbg !647

.preheader:                                       ; preds = %24, %.preheader1
  %22 = icmp sgt i32 %nz, 0, !dbg !657
  br i1 %22, label %.lr.ph, label %._crit_edge, !dbg !660

.lr.ph:                                           ; preds = %.preheader
  %23 = sext i32 %7 to i64, !dbg !660
  br label %29, !dbg !660

; <label>:24                                      ; preds = %.lr.ph4, %24
  %indvars.iv8 = phi i64 [ 0, %.lr.ph4 ], [ %indvars.iv.next9, %24 ]
  %25 = trunc i64 %indvars.iv8 to i32, !dbg !661
  %26 = srem i32 %25, %ny, !dbg !661
  %27 = getelementptr inbounds i32* %15, i64 %indvars.iv8, !dbg !662
  store i32 %26, i32* %27, align 4, !dbg !663, !tbaa !472
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1, !dbg !652
  %28 = icmp slt i64 %indvars.iv.next9, %16, !dbg !649
  br i1 %28, label %24, label %.preheader, !dbg !652

; <label>:29                                      ; preds = %.lr.ph, %29
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %29 ]
  %30 = trunc i64 %indvars.iv to i32, !dbg !664
  %31 = srem i32 %30, %nz, !dbg !664
  %32 = getelementptr inbounds i32* %11, i64 %indvars.iv, !dbg !665
  store i32 %31, i32* %32, align 4, !dbg !666, !tbaa !472
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !660
  %33 = icmp slt i64 %indvars.iv.next, %23, !dbg !657
  br i1 %33, label %29, label %._crit_edge, !dbg !660

._crit_edge:                                      ; preds = %29, %.preheader
  ret void, !dbg !667
}

; Function Attrs: nounwind optsize ssp uwtable
define float @do_poisson(%struct.__sFILE* %log, i32 %bVerbose, %struct.t_inputrec* nocapture readonly %ir, i32 %natoms, [3 x float]* %x, [3 x float]* %f, float* %charge, float* %box, float* %phi, %struct.t_commrec* nocapture readnone %cr, %struct.t_nrnb* %nrnb, i32* nocapture %nit, i32 %bOld) #4 {
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %log, i64 0, metadata !315, metadata !394), !dbg !668
  tail call void @llvm.dbg.value(metadata i32 %bVerbose, i64 0, metadata !316, metadata !394), !dbg !669
  tail call void @llvm.dbg.value(metadata %struct.t_inputrec* %ir, i64 0, metadata !317, metadata !394), !dbg !670
  tail call void @llvm.dbg.value(metadata i32 %natoms, i64 0, metadata !318, metadata !394), !dbg !671
  tail call void @llvm.dbg.value(metadata [3 x float]* %x, i64 0, metadata !319, metadata !394), !dbg !672
  tail call void @llvm.dbg.value(metadata [3 x float]* %f, i64 0, metadata !320, metadata !394), !dbg !673
  tail call void @llvm.dbg.value(metadata float* %charge, i64 0, metadata !321, metadata !394), !dbg !674
  tail call void @llvm.dbg.value(metadata float* %box, i64 0, metadata !322, metadata !394), !dbg !675
  tail call void @llvm.dbg.value(metadata float* %phi, i64 0, metadata !323, metadata !394), !dbg !676
  tail call void @llvm.dbg.value(metadata %struct.t_commrec* %cr, i64 0, metadata !324, metadata !394), !dbg !677
  tail call void @llvm.dbg.value(metadata %struct.t_nrnb* %nrnb, i64 0, metadata !325, metadata !394), !dbg !678
  tail call void @llvm.dbg.value(metadata i32* %nit, i64 0, metadata !326, metadata !394), !dbg !679
  tail call void @llvm.dbg.value(metadata i32 %bOld, i64 0, metadata !327, metadata !394), !dbg !680
  tail call void @llvm.dbg.value(metadata float 0x3F847AE140000000, i64 0, metadata !328, metadata !394), !dbg !681
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !331, metadata !394), !dbg !682
  %.b1 = load i1* @do_poisson.bFirst, align 1
  br i1 %.b1, label %._crit_edge, label %1, !dbg !683

._crit_edge:                                      ; preds = %0
  %.pre5 = load %struct.t_PSgrid** @do_poisson.rho, align 8, !dbg !684, !tbaa !460
  br label %35, !dbg !683

; <label>:1                                       ; preds = %0
  %2 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 72, !dbg !685
  %3 = load i32* %2, align 4, !dbg !685, !tbaa !688
  store i32 %3, i32* @do_poisson.maxnit, align 4, !dbg !691, !tbaa !472
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([55 x i8]* @.str9, i64 0, i64 0), i64 54, i64 1, %struct.__sFILE* %log), !dbg !692
  %5 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 17, !dbg !693
  %6 = load i32* %5, align 4, !dbg !693, !tbaa !694
  %7 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 18, !dbg !695
  %8 = load i32* %7, align 4, !dbg !695, !tbaa !696
  %9 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 19, !dbg !697
  %10 = load i32* %9, align 4, !dbg !697, !tbaa !698
  %11 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([27 x i8]* @.str10, i64 0, i64 0), i32 %6, i32 %8, i32 %10) #7, !dbg !699
  %12 = load i32* %5, align 4, !dbg !700, !tbaa !694
  %13 = icmp slt i32 %12, 4, !dbg !702
  br i1 %13, label %20, label %14, !dbg !703

; <label>:14                                      ; preds = %1
  %15 = load i32* %7, align 4, !dbg !704, !tbaa !696
  %16 = icmp slt i32 %15, 4, !dbg !705
  br i1 %16, label %20, label %17, !dbg !706

; <label>:17                                      ; preds = %14
  %18 = load i32* %9, align 4, !dbg !707, !tbaa !698
  %19 = icmp slt i32 %18, 4, !dbg !708
  br i1 %19, label %20, label %.loopexit, !dbg !709

; <label>:20                                      ; preds = %17, %14, %1
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([49 x i8]* @.str11, i64 0, i64 0)) #7, !dbg !710
  %.pre = load i32* %5, align 4, !dbg !711, !tbaa !694
  %.pre3 = load i32* %7, align 4, !dbg !712, !tbaa !696
  %.pre4 = load i32* %9, align 4, !dbg !713, !tbaa !698
  br label %.loopexit, !dbg !710

.loopexit:                                        ; preds = %20, %17
  %21 = phi i32 [ %.pre4, %20 ], [ %18, %17 ]
  %22 = phi i32 [ %.pre3, %20 ], [ %15, %17 ]
  %23 = phi i32 [ %.pre, %20 ], [ %12, %17 ]
  %24 = tail call %struct.t_PSgrid* @mk_PSgrid(i32 %23, i32 %22, i32 %21) #9, !dbg !714
  store %struct.t_PSgrid* %24, %struct.t_PSgrid** @do_poisson.pot, align 8, !dbg !715, !tbaa !460
  %25 = load i32* %5, align 4, !dbg !716, !tbaa !694
  %26 = load i32* %7, align 4, !dbg !717, !tbaa !696
  %27 = load i32* %9, align 4, !dbg !718, !tbaa !698
  %28 = tail call %struct.t_PSgrid* @mk_PSgrid(i32 %25, i32 %26, i32 %27) #9, !dbg !719
  store %struct.t_PSgrid* %28, %struct.t_PSgrid** @do_poisson.rho, align 8, !dbg !720, !tbaa !460
  %29 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 37, !dbg !721
  %30 = bitcast float* %29 to i32*, !dbg !721
  %31 = load i32* %30, align 4, !dbg !721, !tbaa !722
  store i32 %31, i32* bitcast (float* @do_poisson.r1 to i32*), align 4, !dbg !723, !tbaa !519
  %32 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 38, !dbg !724
  %33 = bitcast float* %32 to i32*, !dbg !724
  %34 = load i32* %33, align 4, !dbg !724, !tbaa !725
  store i32 %34, i32* bitcast (float* @do_poisson.rc to i32*), align 4, !dbg !726, !tbaa !519
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !330, metadata !394), !dbg !727
  call void @memset_pattern16(i8* bitcast ([3 x float]* @do_poisson.beta to i8*), i8* bitcast ([4 x float]* @.memset_pattern to i8*), i64 12) #6, !dbg !728
  br label %35

; <label>:35                                      ; preds = %._crit_edge, %.loopexit
  %36 = phi %struct.t_PSgrid* [ %.pre5, %._crit_edge ], [ %28, %.loopexit ]
  tail call void @clear_PSgrid(%struct.t_PSgrid* %36) #9, !dbg !731
  %37 = load float* @do_poisson.rc, align 4, !dbg !732, !tbaa !519
  %38 = load %struct.t_PSgrid** @do_poisson.rho, align 8, !dbg !733, !tbaa !460
  %39 = load float* @do_poisson.r1, align 4, !dbg !734, !tbaa !519
  tail call void @spread_q_poisson(%struct.__sFILE* %log, i32 %bVerbose, i32 1, i32 %natoms, [3 x float]* %x, float* %charge, float* %box, float %37, %struct.t_PSgrid* %38, %struct.t_nrnb* %nrnb, i32 %bOld, float %39) #7, !dbg !735
  %40 = load %struct.__sFILE** @debug, align 8, !dbg !736, !tbaa !460
  %41 = load %struct.t_PSgrid** @do_poisson.rho, align 8, !dbg !737, !tbaa !460
  tail call void @symmetrize_PSgrid(%struct.__sFILE* %40, %struct.t_PSgrid* %41, float 0.000000e+00) #9, !dbg !738
  %.b = load i1* @do_poisson.bFirst, align 1
  br i1 %.b, label %45, label %42, !dbg !739

; <label>:42                                      ; preds = %35
  %43 = load %struct.t_PSgrid** @do_poisson.pot, align 8, !dbg !740, !tbaa !460
  %44 = load %struct.t_PSgrid** @do_poisson.rho, align 8, !dbg !742, !tbaa !460
  tail call void @copy_PSgrid(%struct.t_PSgrid* %43, %struct.t_PSgrid* %44) #9, !dbg !743
  br label %45, !dbg !743

; <label>:45                                      ; preds = %35, %42
  %46 = load %struct.t_PSgrid** @do_poisson.pot, align 8, !dbg !744, !tbaa !460
  %47 = load %struct.t_PSgrid** @do_poisson.rho, align 8, !dbg !745, !tbaa !460
  %48 = load i32* @do_poisson.maxnit, align 4, !dbg !746, !tbaa !472
  %49 = tail call i32 @solve_poisson(%struct.__sFILE* %log, %struct.t_PSgrid* %46, %struct.t_PSgrid* %47, i32 %bVerbose, %struct.t_nrnb* %nrnb, i32 %48, float 0x3F847AE140000000, float* %box) #7, !dbg !747
  store i32 %49, i32* %nit, align 4, !dbg !748, !tbaa !472
  %50 = load %struct.__sFILE** @debug, align 8, !dbg !749, !tbaa !460
  %51 = load %struct.t_PSgrid** @do_poisson.pot, align 8, !dbg !750, !tbaa !460
  tail call void @symmetrize_PSgrid(%struct.__sFILE* %50, %struct.t_PSgrid* %51, float 0.000000e+00) #9, !dbg !751
  %52 = load %struct.t_PSgrid** @do_poisson.pot, align 8, !dbg !752, !tbaa !460
  %53 = tail call float @ps_gather_f(%struct.__sFILE* %log, i32 %bVerbose, i32 %natoms, [3 x float]* %x, [3 x float]* %f, float* %charge, float* %box, float* %phi, %struct.t_PSgrid* %52, float* getelementptr inbounds ([3 x float]* @do_poisson.beta, i64 0, i64 0), %struct.t_nrnb* %nrnb) #7, !dbg !753
  tail call void @llvm.dbg.value(metadata float %53, i64 0, metadata !331, metadata !394), !dbg !682
  store i1 true, i1* @do_poisson.bFirst, align 1
  ret float %53, !dbg !754
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: optsize
declare void @spread_q_poisson(%struct.__sFILE*, i32, i32, i32, [3 x float]*, float*, float*, float, %struct.t_PSgrid*, %struct.t_nrnb*, i32, float) #2

; Function Attrs: optsize
declare i32 @solve_poisson(%struct.__sFILE*, %struct.t_PSgrid*, %struct.t_PSgrid*, i32, %struct.t_nrnb*, i32, float, float*) #2

; Function Attrs: optsize
declare float @ps_gather_f(%struct.__sFILE*, i32, i32, [3 x float]*, [3 x float]*, float*, float*, float*, %struct.t_PSgrid*, float*, %struct.t_nrnb*) #2

; Function Attrs: nounwind optsize ssp uwtable
define float @do_optimize_poisson(%struct.__sFILE* %log, i32 %bVerbose, %struct.t_inputrec* nocapture readonly %ir, i32 %natoms, [3 x float]* %x, [3 x float]* %f, float* %charge, float* %box, float* %phi, %struct.t_commrec* nocapture readnone %cr, %struct.t_nrnb* %nrnb, [3 x float]* %f_ref, float* %phi_ref, float* %beta, i32 %bOld) #4 {
  %beta52 = bitcast float* %beta to i8*
  %rmsf = alloca [21 x [21 x [21 x float]]], align 16
  %buf = alloca [128 x i8], align 16
  tail call void @llvm.dbg.value(metadata %struct.__sFILE* %log, i64 0, metadata !336, metadata !394), !dbg !755
  tail call void @llvm.dbg.value(metadata i32 %bVerbose, i64 0, metadata !337, metadata !394), !dbg !756
  tail call void @llvm.dbg.value(metadata %struct.t_inputrec* %ir, i64 0, metadata !338, metadata !394), !dbg !757
  tail call void @llvm.dbg.value(metadata i32 %natoms, i64 0, metadata !339, metadata !394), !dbg !758
  tail call void @llvm.dbg.value(metadata [3 x float]* %x, i64 0, metadata !340, metadata !394), !dbg !759
  tail call void @llvm.dbg.value(metadata [3 x float]* %f, i64 0, metadata !341, metadata !394), !dbg !760
  tail call void @llvm.dbg.value(metadata float* %charge, i64 0, metadata !342, metadata !394), !dbg !761
  tail call void @llvm.dbg.value(metadata float* %box, i64 0, metadata !343, metadata !394), !dbg !762
  tail call void @llvm.dbg.value(metadata float* %phi, i64 0, metadata !344, metadata !394), !dbg !763
  tail call void @llvm.dbg.value(metadata %struct.t_commrec* %cr, i64 0, metadata !345, metadata !394), !dbg !764
  tail call void @llvm.dbg.value(metadata %struct.t_nrnb* %nrnb, i64 0, metadata !346, metadata !394), !dbg !765
  tail call void @llvm.dbg.value(metadata [3 x float]* %f_ref, i64 0, metadata !347, metadata !394), !dbg !766
  tail call void @llvm.dbg.value(metadata float* %phi_ref, i64 0, metadata !348, metadata !394), !dbg !767
  tail call void @llvm.dbg.value(metadata float* %beta, i64 0, metadata !349, metadata !394), !dbg !768
  tail call void @llvm.dbg.value(metadata i32 %bOld, i64 0, metadata !350, metadata !394), !dbg !769
  %1 = bitcast [21 x [21 x [21 x float]]]* %rmsf to i8*, !dbg !770
  call void @llvm.lifetime.start(i64 37044, i8* %1) #6, !dbg !770
  tail call void @llvm.dbg.declare(metadata [21 x [21 x [21 x float]]]* %rmsf, metadata !351, metadata !394), !dbg !771
  tail call void @llvm.dbg.declare(metadata [3 x i32]* undef, metadata !357, metadata !394), !dbg !772
  tail call void @llvm.dbg.value(metadata float 0x3F847AE140000000, i64 0, metadata !358, metadata !394), !dbg !773
  %2 = getelementptr inbounds [128 x i8]* %buf, i64 0, i64 0, !dbg !774
  call void @llvm.lifetime.start(i64 128, i8* %2) #6, !dbg !774
  tail call void @llvm.dbg.declare(metadata [128 x i8]* %buf, metadata !364, metadata !394), !dbg !775
  tail call void @llvm.dbg.value(metadata float 0.000000e+00, i64 0, metadata !368, metadata !394), !dbg !776
  %.b = load i1* @do_optimize_poisson.bFirst, align 1
  br i1 %.b, label %._crit_edge55, label %3, !dbg !777

._crit_edge55:                                    ; preds = %0
  %.pre56 = load %struct.t_PSgrid** @do_optimize_poisson.rho, align 8, !dbg !778, !tbaa !460
  br label %38, !dbg !777

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 72, !dbg !779
  %5 = load i32* %4, align 4, !dbg !779, !tbaa !688
  store i32 %5, i32* @do_optimize_poisson.maxnit, align 4, !dbg !782, !tbaa !472
  %6 = tail call i64 @fwrite(i8* getelementptr inbounds ([55 x i8]* @.str9, i64 0, i64 0), i64 54, i64 1, %struct.__sFILE* %log), !dbg !783
  %7 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 17, !dbg !784
  %8 = load i32* %7, align 4, !dbg !784, !tbaa !694
  %9 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 18, !dbg !785
  %10 = load i32* %9, align 4, !dbg !785, !tbaa !696
  %11 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 19, !dbg !786
  %12 = load i32* %11, align 4, !dbg !786, !tbaa !698
  %13 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([27 x i8]* @.str10, i64 0, i64 0), i32 %8, i32 %10, i32 %12) #7, !dbg !787
  %14 = load i32* %7, align 4, !dbg !788, !tbaa !694
  %15 = icmp slt i32 %14, 4, !dbg !790
  br i1 %15, label %22, label %16, !dbg !791

; <label>:16                                      ; preds = %3
  %17 = load i32* %9, align 4, !dbg !792, !tbaa !696
  %18 = icmp slt i32 %17, 4, !dbg !793
  br i1 %18, label %22, label %19, !dbg !794

; <label>:19                                      ; preds = %16
  %20 = load i32* %11, align 4, !dbg !795, !tbaa !698
  %21 = icmp slt i32 %20, 4, !dbg !796
  br i1 %21, label %22, label %23, !dbg !797

; <label>:22                                      ; preds = %19, %16, %3
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([49 x i8]* @.str11, i64 0, i64 0)) #7, !dbg !798
  %.pre = load i32* %7, align 4, !dbg !799, !tbaa !694
  %.pre53 = load i32* %9, align 4, !dbg !800, !tbaa !696
  %.pre54 = load i32* %11, align 4, !dbg !801, !tbaa !698
  br label %23, !dbg !798

; <label>:23                                      ; preds = %22, %19
  %24 = phi i32 [ %.pre54, %22 ], [ %20, %19 ]
  %25 = phi i32 [ %.pre53, %22 ], [ %17, %19 ]
  %26 = phi i32 [ %.pre, %22 ], [ %14, %19 ]
  %27 = tail call %struct.t_PSgrid* @mk_PSgrid(i32 %26, i32 %25, i32 %24) #9, !dbg !802
  store %struct.t_PSgrid* %27, %struct.t_PSgrid** @do_optimize_poisson.pot, align 8, !dbg !803, !tbaa !460
  %28 = load i32* %7, align 4, !dbg !804, !tbaa !694
  %29 = load i32* %9, align 4, !dbg !805, !tbaa !696
  %30 = load i32* %11, align 4, !dbg !806, !tbaa !698
  %31 = tail call %struct.t_PSgrid* @mk_PSgrid(i32 %28, i32 %29, i32 %30) #9, !dbg !807
  store %struct.t_PSgrid* %31, %struct.t_PSgrid** @do_optimize_poisson.rho, align 8, !dbg !808, !tbaa !460
  %32 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 37, !dbg !809
  %33 = bitcast float* %32 to i32*, !dbg !809
  %34 = load i32* %33, align 4, !dbg !809, !tbaa !722
  store i32 %34, i32* bitcast (float* @do_optimize_poisson.r1 to i32*), align 4, !dbg !810, !tbaa !519
  %35 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 38, !dbg !811
  %36 = bitcast float* %35 to i32*, !dbg !811
  %37 = load i32* %36, align 4, !dbg !811, !tbaa !725
  store i32 %37, i32* bitcast (float* @do_optimize_poisson.rc to i32*), align 4, !dbg !812, !tbaa !519
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !360, metadata !394), !dbg !813
  call void @memset_pattern16(i8* %beta52, i8* bitcast ([4 x float]* @.memset_pattern15 to i8*), i64 12) #6, !dbg !814
  store i1 true, i1* @do_optimize_poisson.bFirst, align 1
  br label %38, !dbg !817

; <label>:38                                      ; preds = %._crit_edge55, %23
  %39 = phi %struct.t_PSgrid* [ %.pre56, %._crit_edge55 ], [ %31, %23 ]
  tail call void @clear_PSgrid(%struct.t_PSgrid* %39) #9, !dbg !818
  %40 = load float* @do_optimize_poisson.rc, align 4, !dbg !819, !tbaa !519
  %41 = load %struct.t_PSgrid** @do_optimize_poisson.rho, align 8, !dbg !820, !tbaa !460
  %42 = load float* @do_optimize_poisson.r1, align 4, !dbg !821, !tbaa !519
  tail call void @spread_q_poisson(%struct.__sFILE* %log, i32 %bVerbose, i32 1, i32 %natoms, [3 x float]* %x, float* %charge, float* %box, float %40, %struct.t_PSgrid* %41, %struct.t_nrnb* %nrnb, i32 %bOld, float %42) #7, !dbg !822
  %43 = load %struct.t_PSgrid** @do_optimize_poisson.rho, align 8, !dbg !823, !tbaa !460
  tail call void @symmetrize_PSgrid(%struct.__sFILE* %log, %struct.t_PSgrid* %43, float 0.000000e+00) #9, !dbg !824
  %44 = load %struct.t_PSgrid** @do_optimize_poisson.pot, align 8, !dbg !825, !tbaa !460
  %45 = load %struct.t_PSgrid** @do_optimize_poisson.rho, align 8, !dbg !827, !tbaa !460
  tail call void @copy_PSgrid(%struct.t_PSgrid* %44, %struct.t_PSgrid* %45) #9, !dbg !828
  %46 = load %struct.t_PSgrid** @do_optimize_poisson.pot, align 8, !dbg !829, !tbaa !460
  %47 = load %struct.t_PSgrid** @do_optimize_poisson.rho, align 8, !dbg !830, !tbaa !460
  %48 = load i32* @do_optimize_poisson.maxnit, align 4, !dbg !831, !tbaa !472
  %49 = tail call i32 @solve_poisson(%struct.__sFILE* %log, %struct.t_PSgrid* %46, %struct.t_PSgrid* %47, i32 %bVerbose, %struct.t_nrnb* %nrnb, i32 %48, float 0x3F847AE140000000, float* %box) #7, !dbg !832
  %50 = load %struct.t_PSgrid** @do_optimize_poisson.pot, align 8, !dbg !833, !tbaa !460
  tail call void @symmetrize_PSgrid(%struct.__sFILE* %log, %struct.t_PSgrid* %50, float 0.000000e+00) #9, !dbg !834
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !361, metadata !394), !dbg !835
  %51 = getelementptr inbounds float* %beta, i64 1, !dbg !836
  %52 = getelementptr inbounds float* %beta, i64 2, !dbg !843
  %53 = icmp sgt i32 %natoms, 0, !dbg !847
  %54 = add i32 %natoms, -1, !dbg !850
  br label %55, !dbg !850

; <label>:55                                      ; preds = %85, %38
  %indvars.iv46 = phi i64 [ 0, %38 ], [ %indvars.iv.next47, %85 ]
  %56 = trunc i64 %indvars.iv46 to i32, !dbg !851
  %57 = sitofp i32 %56 to double, !dbg !851
  %58 = fmul double %57, 2.500000e-02, !dbg !851
  %59 = fadd double %58, 1.600000e+00, !dbg !851
  %60 = fptrunc double %59 to float, !dbg !851
  store float %60, float* %beta, align 4, !dbg !852, !tbaa !519
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !362, metadata !394), !dbg !853
  br label %61, !dbg !854

; <label>:61                                      ; preds = %84, %55
  %indvars.iv43 = phi i64 [ 0, %55 ], [ %indvars.iv.next44, %84 ]
  %62 = trunc i64 %indvars.iv43 to i32, !dbg !855
  %63 = sitofp i32 %62 to double, !dbg !855
  %64 = fmul double %63, 2.500000e-02, !dbg !855
  %65 = fadd double %64, 1.600000e+00, !dbg !855
  %66 = fptrunc double %65 to float, !dbg !855
  store float %66, float* %51, align 4, !dbg !856, !tbaa !519
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !363, metadata !394), !dbg !857
  br label %67, !dbg !858

; <label>:67                                      ; preds = %._crit_edge20, %61
  %indvars.iv40 = phi i64 [ 0, %61 ], [ %indvars.iv.next41, %._crit_edge20 ]
  %68 = trunc i64 %indvars.iv40 to i32, !dbg !859
  %69 = sitofp i32 %68 to double, !dbg !859
  %70 = fmul double %69, 2.500000e-02, !dbg !859
  %71 = fadd double %70, 1.600000e+00, !dbg !859
  %72 = fptrunc double %71 to float, !dbg !859
  store float %72, float* %52, align 4, !dbg !860, !tbaa !519
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !359, metadata !394), !dbg !861
  br i1 %53, label %.lr.ph19, label %._crit_edge20, !dbg !862

.lr.ph19:                                         ; preds = %67, %.lr.ph19
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %.lr.ph19 ], [ 0, %67 ]
  %73 = getelementptr inbounds float* %phi, i64 %indvars.iv35, !dbg !863
  store float 0.000000e+00, float* %73, align 4, !dbg !865, !tbaa !519
  %74 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv35, i64 0, !dbg !866
  tail call void @llvm.dbg.value(metadata float* %74, i64 0, metadata !374, metadata !394), !dbg !867
  store float 0.000000e+00, float* %74, align 4, !dbg !869, !tbaa !519
  %75 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv35, i64 1, !dbg !870
  store float 0.000000e+00, float* %75, align 4, !dbg !871, !tbaa !519
  %76 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv35, i64 2, !dbg !872
  store float 0.000000e+00, float* %76, align 4, !dbg !873, !tbaa !519
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1, !dbg !862
  %lftr.wideiv37 = trunc i64 %indvars.iv35 to i32, !dbg !862
  %exitcond38 = icmp eq i32 %lftr.wideiv37, %54, !dbg !862
  br i1 %exitcond38, label %._crit_edge20, label %.lr.ph19, !dbg !862

._crit_edge20:                                    ; preds = %.lr.ph19, %67
  %77 = load %struct.t_PSgrid** @do_optimize_poisson.pot, align 8, !dbg !874, !tbaa !460
  %78 = call float @ps_gather_f(%struct.__sFILE* %log, i32 %bVerbose, i32 %natoms, [3 x float]* %x, [3 x float]* %f, float* %charge, float* %box, float* %phi, %struct.t_PSgrid* %77, float* %beta, %struct.t_nrnb* %nrnb) #7, !dbg !875
  call void @llvm.dbg.value(metadata float %78, i64 0, metadata !368, metadata !394), !dbg !776
  %79 = load float* %beta, align 4, !dbg !876, !tbaa !519
  %80 = fpext float %79 to double, !dbg !876
  %81 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %2, i32 0, i64 128, i8* getelementptr inbounds ([20 x i8]* @.str12, i64 0, i64 0), double %80) #7, !dbg !876
  %82 = call float @analyse_diff(%struct.__sFILE* %log, i8* %2, i32 %natoms, [3 x float]* %f_ref, [3 x float]* %f, float* %phi_ref, float* %phi, float* null, i8* null, i8* null, i8* null, i8* null) #7, !dbg !877
  %83 = getelementptr inbounds [21 x [21 x [21 x float]]]* %rmsf, i64 0, i64 %indvars.iv46, i64 %indvars.iv43, i64 %indvars.iv40, !dbg !878
  store float %82, float* %83, align 4, !dbg !879, !tbaa !519
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1, !dbg !858
  %exitcond42 = icmp eq i64 %indvars.iv.next41, 21, !dbg !858
  br i1 %exitcond42, label %84, label %67, !dbg !858

; <label>:84                                      ; preds = %._crit_edge20
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1, !dbg !854
  %exitcond45 = icmp eq i64 %indvars.iv.next44, 21, !dbg !854
  br i1 %exitcond45, label %85, label %61, !dbg !854

; <label>:85                                      ; preds = %84
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1, !dbg !850
  %exitcond48 = icmp eq i64 %indvars.iv.next47, 21, !dbg !850
  br i1 %exitcond48, label %86, label %55, !dbg !850

; <label>:86                                      ; preds = %85
  %87 = getelementptr inbounds [21 x [21 x [21 x float]]]* %rmsf, i64 0, i64 0, i64 0, i64 0, !dbg !880
  %88 = load float* %87, align 16, !dbg !880, !tbaa !519
  call void @llvm.dbg.value(metadata float %88, i64 0, metadata !355, metadata !394), !dbg !881
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !357, metadata !562), !dbg !772
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !361, metadata !394), !dbg !835
  br label %89, !dbg !882

; <label>:89                                      ; preds = %120, %86
  %indvars.iv32 = phi i64 [ 0, %86 ], [ %indvars.iv.next33, %120 ]
  %rmsf_min.016 = phi float [ %88, %86 ], [ %rmsf_min.3, %120 ]
  %minimum.sroa.6.014 = phi i32 [ 0, %86 ], [ %minimum.sroa.6.3, %120 ]
  %minimum.sroa.0.013 = phi i32 [ 0, %86 ], [ %minimum.sroa.0.3, %120 ]
  %minimum.sroa.3.012 = phi i32 [ 0, %86 ], [ %minimum.sroa.3.3, %120 ]
  %90 = trunc i64 %indvars.iv32 to i32, !dbg !884
  %91 = sitofp i32 %90 to double, !dbg !884
  %92 = fmul double %91, 2.500000e-02, !dbg !884
  %93 = fadd double %92, 1.600000e+00, !dbg !884
  %94 = fptrunc double %93 to float, !dbg !884
  store float %94, float* %beta, align 4, !dbg !887, !tbaa !519
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !362, metadata !394), !dbg !853
  br label %95, !dbg !888

; <label>:95                                      ; preds = %119, %89
  %indvars.iv29 = phi i64 [ 0, %89 ], [ %indvars.iv.next30, %119 ]
  %rmsf_min.111 = phi float [ %rmsf_min.016, %89 ], [ %rmsf_min.3, %119 ]
  %minimum.sroa.6.19 = phi i32 [ %minimum.sroa.6.014, %89 ], [ %minimum.sroa.6.3, %119 ]
  %minimum.sroa.0.18 = phi i32 [ %minimum.sroa.0.013, %89 ], [ %minimum.sroa.0.3, %119 ]
  %minimum.sroa.3.17 = phi i32 [ %minimum.sroa.3.012, %89 ], [ %minimum.sroa.3.3, %119 ]
  %96 = trunc i64 %indvars.iv29 to i32, !dbg !890
  %97 = sitofp i32 %96 to double, !dbg !890
  %98 = fmul double %97, 2.500000e-02, !dbg !890
  %99 = fadd double %98, 1.600000e+00, !dbg !890
  %100 = fptrunc double %99 to float, !dbg !890
  store float %100, float* %51, align 4, !dbg !893, !tbaa !519
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !363, metadata !394), !dbg !857
  br label %101, !dbg !894

; <label>:101                                     ; preds = %._crit_edge57, %95
  %102 = phi float [ %100, %95 ], [ %.pre58, %._crit_edge57 ]
  %indvars.iv26 = phi i64 [ 0, %95 ], [ %indvars.iv.next27, %._crit_edge57 ]
  %rmsf_min.26 = phi float [ %rmsf_min.111, %95 ], [ %rmsf_min.3, %._crit_edge57 ]
  %minimum.sroa.6.24 = phi i32 [ %minimum.sroa.6.19, %95 ], [ %minimum.sroa.6.3, %._crit_edge57 ]
  %minimum.sroa.0.23 = phi i32 [ %minimum.sroa.0.18, %95 ], [ %minimum.sroa.0.3, %._crit_edge57 ]
  %minimum.sroa.3.22 = phi i32 [ %minimum.sroa.3.17, %95 ], [ %minimum.sroa.3.3, %._crit_edge57 ]
  %103 = trunc i64 %indvars.iv26 to i32, !dbg !896
  %104 = sitofp i32 %103 to double, !dbg !896
  %105 = fmul double %104, 2.500000e-02, !dbg !896
  %106 = fadd double %105, 1.600000e+00, !dbg !896
  %107 = fptrunc double %106 to float, !dbg !896
  store float %107, float* %52, align 4, !dbg !899, !tbaa !519
  %108 = getelementptr inbounds [21 x [21 x [21 x float]]]* %rmsf, i64 0, i64 %indvars.iv32, i64 %indvars.iv29, i64 %indvars.iv26, !dbg !900
  %109 = load float* %108, align 4, !dbg !900, !tbaa !519
  call void @llvm.dbg.value(metadata float %109, i64 0, metadata !356, metadata !394), !dbg !901
  %110 = load float* %beta, align 4, !dbg !902, !tbaa !519
  %111 = fpext float %110 to double, !dbg !902
  %112 = fpext float %102 to double, !dbg !903
  %113 = fpext float %107 to double, !dbg !904
  %114 = fpext float %109 to double, !dbg !905
  %115 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([40 x i8]* @.str13, i64 0, i64 0), double %111, double %112, double %113, double %114) #7, !dbg !906
  %116 = fcmp olt float %109, %rmsf_min.26, !dbg !907
  br i1 %116, label %117, label %118, !dbg !909

; <label>:117                                     ; preds = %101
  call void @llvm.dbg.value(metadata float %109, i64 0, metadata !355, metadata !394), !dbg !881
  br label %118, !dbg !910

; <label>:118                                     ; preds = %101, %117
  %minimum.sroa.3.3 = phi i32 [ %96, %117 ], [ %minimum.sroa.3.22, %101 ]
  %minimum.sroa.0.3 = phi i32 [ %90, %117 ], [ %minimum.sroa.0.23, %101 ]
  %minimum.sroa.6.3 = phi i32 [ %103, %117 ], [ %minimum.sroa.6.24, %101 ]
  %rmsf_min.3 = phi float [ %109, %117 ], [ %rmsf_min.26, %101 ]
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1, !dbg !894
  %exitcond28 = icmp eq i64 %indvars.iv.next27, 21, !dbg !894
  br i1 %exitcond28, label %119, label %._crit_edge57, !dbg !894

._crit_edge57:                                    ; preds = %118
  %.pre58 = load float* %51, align 4, !dbg !903, !tbaa !519
  br label %101, !dbg !894

; <label>:119                                     ; preds = %118
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1, !dbg !888
  %exitcond31 = icmp eq i64 %indvars.iv.next30, 21, !dbg !888
  br i1 %exitcond31, label %120, label %95, !dbg !888

; <label>:120                                     ; preds = %119
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1, !dbg !882
  %exitcond34 = icmp eq i64 %indvars.iv.next33, 21, !dbg !882
  br i1 %exitcond34, label %121, label %89, !dbg !882

; <label>:121                                     ; preds = %120
  %122 = sitofp i32 %minimum.sroa.0.3 to double, !dbg !912
  %123 = fmul double %122, 2.500000e-02, !dbg !912
  %124 = fadd double %123, 1.600000e+00, !dbg !912
  %125 = fptrunc double %124 to float, !dbg !912
  store float %125, float* %beta, align 4, !dbg !913, !tbaa !519
  %126 = sitofp i32 %minimum.sroa.3.3 to double, !dbg !914
  %127 = fmul double %126, 2.500000e-02, !dbg !914
  %128 = fadd double %127, 1.600000e+00, !dbg !914
  %129 = fptrunc double %128 to float, !dbg !914
  store float %129, float* %51, align 4, !dbg !915, !tbaa !519
  %130 = sitofp i32 %minimum.sroa.6.3 to double, !dbg !916
  %131 = fmul double %130, 2.500000e-02, !dbg !916
  %132 = fadd double %131, 1.600000e+00, !dbg !916
  %133 = fptrunc double %132 to float, !dbg !916
  store float %133, float* %52, align 4, !dbg !917, !tbaa !519
  %134 = fpext float %rmsf_min.3 to double, !dbg !918
  %135 = fpext float %125 to double, !dbg !919
  %136 = fpext float %129 to double, !dbg !920
  %137 = fpext float %133 to double, !dbg !921
  %138 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([50 x i8]* @.str14, i64 0, i64 0), double %134, double %135, double %136, double %137) #7, !dbg !922
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !359, metadata !394), !dbg !861
  br i1 %53, label %.lr.ph, label %._crit_edge, !dbg !923

.lr.ph:                                           ; preds = %121, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %121 ]
  %139 = getelementptr inbounds float* %phi, i64 %indvars.iv, !dbg !925
  store float 0.000000e+00, float* %139, align 4, !dbg !928, !tbaa !519
  %140 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv, i64 0, !dbg !929
  tail call void @llvm.dbg.value(metadata float* %140, i64 0, metadata !374, metadata !394), !dbg !930
  store float 0.000000e+00, float* %140, align 4, !dbg !932, !tbaa !519
  %141 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv, i64 1, !dbg !933
  store float 0.000000e+00, float* %141, align 4, !dbg !934, !tbaa !519
  %142 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv, i64 2, !dbg !935
  store float 0.000000e+00, float* %142, align 4, !dbg !936, !tbaa !519
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !923
  %lftr.wideiv = trunc i64 %indvars.iv to i32, !dbg !923
  %exitcond = icmp eq i32 %lftr.wideiv, %54, !dbg !923
  br i1 %exitcond, label %._crit_edge, label %.lr.ph, !dbg !923

._crit_edge:                                      ; preds = %.lr.ph, %121
  %143 = load %struct.t_PSgrid** @do_optimize_poisson.pot, align 8, !dbg !937, !tbaa !460
  %144 = call float @ps_gather_f(%struct.__sFILE* %log, i32 %bVerbose, i32 %natoms, [3 x float]* %x, [3 x float]* %f, float* %charge, float* %box, float* %phi, %struct.t_PSgrid* %143, float* %beta, %struct.t_nrnb* %nrnb) #7, !dbg !938
  call void @llvm.dbg.value(metadata float %144, i64 0, metadata !368, metadata !394), !dbg !776
  call void @llvm.lifetime.end(i64 128, i8* %2) #6, !dbg !939
  call void @llvm.lifetime.end(i64 37044, i8* %1) #6, !dbg !939
  ret float %144, !dbg !939
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #6

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #2

; Function Attrs: optsize
declare float @analyse_diff(%struct.__sFILE*, i8*, i32, [3 x float]*, [3 x float]*, float*, float*, float*, i8*, i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #6

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

declare float @fabsf(float)

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #6

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

declare void @memset_pattern16(i8*, i8*, i64)

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
!llvm.module.flags = !{!390, !391, !392}
!llvm.ident = !{!393}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !3, subprograms: !6, globals: !375, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/poisson.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!5 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!6 = !{!7, !75, !81, !106, !117, !131, !143, !163, !175, !332, !369}
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
!81 = !DISubprogram(name: "mk_PSgrid", scope: !1, file: !1, line: 44, type: !82, isLocal: false, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: true, function: %struct.t_PSgrid* (i32, i32, i32)* @mk_PSgrid, variables: !99)
!82 = !DISubroutineType(types: !83)
!83 = !{!84, !5, !5, !5}
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64, align: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_PSgrid", file: !86, line: 46, baseType: !87)
!86 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/poisson.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!87 = !DICompositeType(tag: DW_TAG_structure_type, file: !86, line: 43, size: 192, align: 64, elements: !88)
!88 = !{!89, !90, !91, !92}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "nx", scope: !87, file: !86, line: 44, baseType: !5, size: 32, align: 32)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "ny", scope: !87, file: !86, line: 44, baseType: !5, size: 32, align: 32, offset: 32)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "nz", scope: !87, file: !86, line: 44, baseType: !5, size: 32, align: 32, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !87, file: !86, line: 45, baseType: !93, size: 64, align: 64, offset: 128)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, align: 64)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64, align: 64)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64, align: 64)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "real", file: !97, line: 87, baseType: !98)
!97 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/simple.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!98 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!99 = !{!100, !101, !102, !103, !104, !105}
!100 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nx", arg: 1, scope: !81, file: !1, line: 44, type: !5)
!101 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ny", arg: 2, scope: !81, file: !1, line: 44, type: !5)
!102 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nz", arg: 3, scope: !81, file: !1, line: 44, type: !5)
!103 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ps", scope: !81, file: !1, line: 46, type: !84)
!104 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !81, file: !1, line: 47, type: !5)
!105 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !81, file: !1, line: 47, type: !5)
!106 = !DISubprogram(name: "unpack_PSgrid", scope: !1, file: !1, line: 62, type: !107, isLocal: false, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.t_PSgrid*, i32*, i32*, i32*, float****)* @unpack_PSgrid, variables: !111)
!107 = !DISubroutineType(types: !108)
!108 = !{null, !84, !109, !109, !109, !110}
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64, align: 64)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64, align: 64)
!111 = !{!112, !113, !114, !115, !116}
!112 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "grid", arg: 1, scope: !106, file: !1, line: 62, type: !84)
!113 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nx", arg: 2, scope: !106, file: !1, line: 62, type: !109)
!114 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ny", arg: 3, scope: !106, file: !1, line: 62, type: !109)
!115 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nz", arg: 4, scope: !106, file: !1, line: 62, type: !109)
!116 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ptr", arg: 5, scope: !106, file: !1, line: 62, type: !110)
!117 = !DISubprogram(name: "copy_PSgrid", scope: !1, file: !1, line: 70, type: !118, isLocal: false, isDefinition: true, scopeLine: 71, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.t_PSgrid*, %struct.t_PSgrid*)* @copy_PSgrid, variables: !120)
!118 = !DISubroutineType(types: !119)
!119 = !{null, !84, !84}
!120 = !{!121, !122, !123, !124, !125, !126, !127, !128, !129, !130}
!121 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dest", arg: 1, scope: !117, file: !1, line: 70, type: !84)
!122 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "src", arg: 2, scope: !117, file: !1, line: 70, type: !84)
!123 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !117, file: !1, line: 72, type: !5)
!124 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !117, file: !1, line: 72, type: !5)
!125 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !117, file: !1, line: 72, type: !5)
!126 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nx", scope: !117, file: !1, line: 73, type: !5)
!127 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ny", scope: !117, file: !1, line: 73, type: !5)
!128 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nz", scope: !117, file: !1, line: 73, type: !5)
!129 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "src_ptr", scope: !117, file: !1, line: 74, type: !93)
!130 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dst_ptr", scope: !117, file: !1, line: 74, type: !93)
!131 = !DISubprogram(name: "clear_PSgrid", scope: !1, file: !1, line: 85, type: !132, isLocal: false, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.t_PSgrid*)* @clear_PSgrid, variables: !134)
!132 = !DISubroutineType(types: !133)
!133 = !{null, !84}
!134 = !{!135, !136, !137, !138, !139, !140, !141, !142}
!135 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "grid", arg: 1, scope: !131, file: !1, line: 85, type: !84)
!136 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !131, file: !1, line: 87, type: !5)
!137 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !131, file: !1, line: 87, type: !5)
!138 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !131, file: !1, line: 87, type: !5)
!139 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nx", scope: !131, file: !1, line: 88, type: !5)
!140 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ny", scope: !131, file: !1, line: 88, type: !5)
!141 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nz", scope: !131, file: !1, line: 88, type: !5)
!142 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptr", scope: !131, file: !1, line: 89, type: !93)
!143 = !DISubprogram(name: "symmetrize_PSgrid", scope: !1, file: !1, line: 99, type: !144, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.__sFILE*, %struct.t_PSgrid*, float)* @symmetrize_PSgrid, variables: !146)
!144 = !DISubroutineType(types: !145)
!145 = !{null, !11, !84, !96}
!146 = !{!147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !162}
!147 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fp", arg: 1, scope: !143, file: !1, line: 99, type: !11)
!148 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "grid", arg: 2, scope: !143, file: !1, line: 99, type: !84)
!149 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "sum", arg: 3, scope: !143, file: !1, line: 99, type: !96)
!150 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !143, file: !1, line: 101, type: !5)
!151 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !143, file: !1, line: 101, type: !5)
!152 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "k", scope: !143, file: !1, line: 101, type: !5)
!153 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nx", scope: !143, file: !1, line: 102, type: !5)
!154 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ny", scope: !143, file: !1, line: 102, type: !5)
!155 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nz", scope: !143, file: !1, line: 102, type: !5)
!156 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ptr", scope: !143, file: !1, line: 103, type: !93)
!157 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ming", scope: !143, file: !1, line: 104, type: !96)
!158 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "maxg", scope: !143, file: !1, line: 104, type: !96)
!159 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "imin", scope: !143, file: !1, line: 105, type: !160)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "ivec", file: !97, line: 107, baseType: !161)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 96, align: 32, elements: !63)
!162 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "imax", scope: !143, file: !1, line: 105, type: !160)
!163 = !DISubprogram(name: "calc_nxyz", scope: !1, file: !1, line: 143, type: !164, isLocal: false, isDefinition: true, scopeLine: 145, flags: DIFlagPrototyped, isOptimized: true, function: void (i32, i32, i32, i32**, i32**, i32**)* @calc_nxyz, variables: !167)
!164 = !DISubroutineType(types: !165)
!165 = !{null, !5, !5, !5, !166, !166, !166}
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64, align: 64)
!167 = !{!168, !169, !170, !171, !172, !173, !174}
!168 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nx", arg: 1, scope: !163, file: !1, line: 143, type: !5)
!169 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ny", arg: 2, scope: !163, file: !1, line: 143, type: !5)
!170 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nz", arg: 3, scope: !163, file: !1, line: 143, type: !5)
!171 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nnx", arg: 4, scope: !163, file: !1, line: 144, type: !166)
!172 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nny", arg: 5, scope: !163, file: !1, line: 144, type: !166)
!173 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nnz", arg: 6, scope: !163, file: !1, line: 144, type: !166)
!174 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !163, file: !1, line: 146, type: !5)
!175 = !DISubprogram(name: "do_poisson", scope: !1, file: !1, line: 159, type: !176, isLocal: false, isDefinition: true, scopeLine: 166, flags: DIFlagPrototyped, isOptimized: true, function: float (%struct.__sFILE*, i32, %struct.t_inputrec*, i32, [3 x float]*, [3 x float]*, float*, float*, float*, %struct.t_commrec*, %struct.t_nrnb*, i32*, i32)* @do_poisson, variables: !314)
!176 = !DISubroutineType(types: !177)
!177 = !{!96, !11, !5, !178, !5, !278, !278, !95, !95, !95, !293, !304, !109, !5}
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64, align: 64)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_inputrec", file: !180, line: 143, baseType: !181)
!180 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/inputrec.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!181 = !DICompositeType(tag: DW_TAG_structure_type, file: !180, line: 55, size: 4736, align: 64, elements: !182)
!182 = !{!183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !284, !292}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "eI", scope: !181, file: !180, line: 56, baseType: !5, size: 32, align: 32)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "nsteps", scope: !181, file: !180, line: 57, baseType: !5, size: 32, align: 32, offset: 32)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !181, file: !180, line: 58, baseType: !5, size: 32, align: 32, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "nstlist", scope: !181, file: !180, line: 59, baseType: !5, size: 32, align: 32, offset: 96)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "ndelta", scope: !181, file: !180, line: 60, baseType: !5, size: 32, align: 32, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "bDomDecomp", scope: !181, file: !180, line: 61, baseType: !5, size: 32, align: 32, offset: 160)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "decomp_dir", scope: !181, file: !180, line: 62, baseType: !5, size: 32, align: 32, offset: 192)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "nstcomm", scope: !181, file: !180, line: 63, baseType: !5, size: 32, align: 32, offset: 224)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "nstlog", scope: !181, file: !180, line: 65, baseType: !5, size: 32, align: 32, offset: 256)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "nstxout", scope: !181, file: !180, line: 66, baseType: !5, size: 32, align: 32, offset: 288)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "nstvout", scope: !181, file: !180, line: 67, baseType: !5, size: 32, align: 32, offset: 320)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "nstfout", scope: !181, file: !180, line: 68, baseType: !5, size: 32, align: 32, offset: 352)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "nstenergy", scope: !181, file: !180, line: 69, baseType: !5, size: 32, align: 32, offset: 384)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "nstxtcout", scope: !181, file: !180, line: 70, baseType: !5, size: 32, align: 32, offset: 416)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "init_t", scope: !181, file: !180, line: 71, baseType: !96, size: 32, align: 32, offset: 448)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "delta_t", scope: !181, file: !180, line: 72, baseType: !96, size: 32, align: 32, offset: 480)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "xtcprec", scope: !181, file: !180, line: 73, baseType: !96, size: 32, align: 32, offset: 512)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "nkx", scope: !181, file: !180, line: 74, baseType: !5, size: 32, align: 32, offset: 544)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "nky", scope: !181, file: !180, line: 74, baseType: !5, size: 32, align: 32, offset: 576)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "nkz", scope: !181, file: !180, line: 74, baseType: !5, size: 32, align: 32, offset: 608)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "pme_order", scope: !181, file: !180, line: 76, baseType: !5, size: 32, align: 32, offset: 640)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "ewald_rtol", scope: !181, file: !180, line: 77, baseType: !96, size: 32, align: 32, offset: 672)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "ewald_geometry", scope: !181, file: !180, line: 79, baseType: !5, size: 32, align: 32, offset: 704)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "epsilon_surface", scope: !181, file: !180, line: 80, baseType: !5, size: 32, align: 32, offset: 736)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "bOptFFT", scope: !181, file: !180, line: 81, baseType: !5, size: 32, align: 32, offset: 768)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "ePBC", scope: !181, file: !180, line: 82, baseType: !5, size: 32, align: 32, offset: 800)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "bUncStart", scope: !181, file: !180, line: 83, baseType: !5, size: 32, align: 32, offset: 832)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "etc", scope: !181, file: !180, line: 84, baseType: !5, size: 32, align: 32, offset: 864)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "epc", scope: !181, file: !180, line: 85, baseType: !5, size: 32, align: 32, offset: 896)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "epct", scope: !181, file: !180, line: 86, baseType: !5, size: 32, align: 32, offset: 928)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "tau_p", scope: !181, file: !180, line: 87, baseType: !96, size: 32, align: 32, offset: 960)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "ref_p", scope: !181, file: !180, line: 88, baseType: !215, size: 288, align: 32, offset: 992)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "tensor", file: !97, line: 105, baseType: !216)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 288, align: 32, elements: !217)
!217 = !{!64, !64}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !181, file: !180, line: 89, baseType: !215, size: 288, align: 32, offset: 1280)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "bSimAnn", scope: !181, file: !180, line: 90, baseType: !5, size: 32, align: 32, offset: 1568)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "zero_temp_time", scope: !181, file: !180, line: 91, baseType: !96, size: 32, align: 32, offset: 1600)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "rlist", scope: !181, file: !180, line: 92, baseType: !96, size: 32, align: 32, offset: 1632)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "coulombtype", scope: !181, file: !180, line: 93, baseType: !5, size: 32, align: 32, offset: 1664)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "rcoulomb_switch", scope: !181, file: !180, line: 94, baseType: !96, size: 32, align: 32, offset: 1696)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "rcoulomb", scope: !181, file: !180, line: 95, baseType: !96, size: 32, align: 32, offset: 1728)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "vdwtype", scope: !181, file: !180, line: 96, baseType: !5, size: 32, align: 32, offset: 1760)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "rvdw_switch", scope: !181, file: !180, line: 97, baseType: !96, size: 32, align: 32, offset: 1792)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "rvdw", scope: !181, file: !180, line: 98, baseType: !96, size: 32, align: 32, offset: 1824)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "epsilon_r", scope: !181, file: !180, line: 99, baseType: !96, size: 32, align: 32, offset: 1856)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "eDispCorr", scope: !181, file: !180, line: 100, baseType: !5, size: 32, align: 32, offset: 1888)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "shake_tol", scope: !181, file: !180, line: 101, baseType: !96, size: 32, align: 32, offset: 1920)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "fudgeQQ", scope: !181, file: !180, line: 102, baseType: !96, size: 32, align: 32, offset: 1952)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "efep", scope: !181, file: !180, line: 103, baseType: !5, size: 32, align: 32, offset: 1984)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "init_lambda", scope: !181, file: !180, line: 104, baseType: !96, size: 32, align: 32, offset: 2016)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "delta_lambda", scope: !181, file: !180, line: 105, baseType: !96, size: 32, align: 32, offset: 2048)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "sc_alpha", scope: !181, file: !180, line: 106, baseType: !96, size: 32, align: 32, offset: 2080)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "sc_sigma", scope: !181, file: !180, line: 107, baseType: !96, size: 32, align: 32, offset: 2112)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "dr_fc", scope: !181, file: !180, line: 108, baseType: !96, size: 32, align: 32, offset: 2144)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "eDisreWeighting", scope: !181, file: !180, line: 109, baseType: !5, size: 32, align: 32, offset: 2176)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "bDisreMixed", scope: !181, file: !180, line: 110, baseType: !5, size: 32, align: 32, offset: 2208)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "nstdisreout", scope: !181, file: !180, line: 111, baseType: !5, size: 32, align: 32, offset: 2240)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "dr_tau", scope: !181, file: !180, line: 112, baseType: !96, size: 32, align: 32, offset: 2272)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "orires_fc", scope: !181, file: !180, line: 113, baseType: !96, size: 32, align: 32, offset: 2304)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "orires_tau", scope: !181, file: !180, line: 114, baseType: !96, size: 32, align: 32, offset: 2336)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "nstorireout", scope: !181, file: !180, line: 115, baseType: !5, size: 32, align: 32, offset: 2368)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "em_stepsize", scope: !181, file: !180, line: 116, baseType: !96, size: 32, align: 32, offset: 2400)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "em_tol", scope: !181, file: !180, line: 117, baseType: !96, size: 32, align: 32, offset: 2432)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "niter", scope: !181, file: !180, line: 118, baseType: !5, size: 32, align: 32, offset: 2464)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "fc_stepsize", scope: !181, file: !180, line: 120, baseType: !5, size: 32, align: 32, offset: 2496)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "nstcgsteep", scope: !181, file: !180, line: 122, baseType: !5, size: 32, align: 32, offset: 2528)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "eConstrAlg", scope: !181, file: !180, line: 124, baseType: !5, size: 32, align: 32, offset: 2560)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "nProjOrder", scope: !181, file: !180, line: 125, baseType: !5, size: 32, align: 32, offset: 2592)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "LincsWarnAngle", scope: !181, file: !180, line: 126, baseType: !96, size: 32, align: 32, offset: 2624)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "bShakeSOR", scope: !181, file: !180, line: 127, baseType: !5, size: 32, align: 32, offset: 2656)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "bd_temp", scope: !181, file: !180, line: 128, baseType: !96, size: 32, align: 32, offset: 2688)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "bd_fric", scope: !181, file: !180, line: 129, baseType: !96, size: 32, align: 32, offset: 2720)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "ld_seed", scope: !181, file: !180, line: 130, baseType: !5, size: 32, align: 32, offset: 2752)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "cos_accel", scope: !181, file: !180, line: 131, baseType: !96, size: 32, align: 32, offset: 2784)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "userint1", scope: !181, file: !180, line: 132, baseType: !5, size: 32, align: 32, offset: 2816)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "userint2", scope: !181, file: !180, line: 133, baseType: !5, size: 32, align: 32, offset: 2848)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "userint3", scope: !181, file: !180, line: 134, baseType: !5, size: 32, align: 32, offset: 2880)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "userint4", scope: !181, file: !180, line: 135, baseType: !5, size: 32, align: 32, offset: 2912)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "userreal1", scope: !181, file: !180, line: 136, baseType: !96, size: 32, align: 32, offset: 2944)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "userreal2", scope: !181, file: !180, line: 137, baseType: !96, size: 32, align: 32, offset: 2976)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "userreal3", scope: !181, file: !180, line: 138, baseType: !96, size: 32, align: 32, offset: 3008)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "userreal4", scope: !181, file: !180, line: 139, baseType: !96, size: 32, align: 32, offset: 3040)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !181, file: !180, line: 140, baseType: !267, size: 512, align: 64, offset: 3072)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_grpopts", file: !180, line: 53, baseType: !268)
!268 = !DICompositeType(tag: DW_TAG_structure_type, file: !180, line: 42, size: 512, align: 64, elements: !269)
!269 = !{!270, !271, !272, !273, !274, !275, !276, !277, !281, !283}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "ngtc", scope: !268, file: !180, line: 43, baseType: !5, size: 32, align: 32)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "ngacc", scope: !268, file: !180, line: 44, baseType: !5, size: 32, align: 32, offset: 32)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "ngfrz", scope: !268, file: !180, line: 45, baseType: !5, size: 32, align: 32, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "ngener", scope: !268, file: !180, line: 46, baseType: !5, size: 32, align: 32, offset: 96)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "nrdf", scope: !268, file: !180, line: 47, baseType: !95, size: 64, align: 64, offset: 128)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "ref_t", scope: !268, file: !180, line: 48, baseType: !95, size: 64, align: 64, offset: 192)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "tau_t", scope: !268, file: !180, line: 49, baseType: !95, size: 64, align: 64, offset: 256)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "acc", scope: !268, file: !180, line: 50, baseType: !278, size: 64, align: 64, offset: 320)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64, align: 64)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "rvec", file: !97, line: 101, baseType: !280)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 96, align: 32, elements: !63)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "nFreeze", scope: !268, file: !180, line: 51, baseType: !282, size: 64, align: 64, offset: 384)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64, align: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "eg_excl", scope: !268, file: !180, line: 52, baseType: !109, size: 64, align: 64, offset: 448)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "ex", scope: !181, file: !180, line: 141, baseType: !285, size: 576, align: 64, offset: 3584)
!285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !286, size: 576, align: 64, elements: !63)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_cosines", file: !180, line: 40, baseType: !287)
!287 = !DICompositeType(tag: DW_TAG_structure_type, file: !180, line: 36, size: 192, align: 64, elements: !288)
!288 = !{!289, !290, !291}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !287, file: !180, line: 37, baseType: !5, size: 32, align: 32)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !287, file: !180, line: 38, baseType: !95, size: 64, align: 64, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "phi", scope: !287, file: !180, line: 39, baseType: !95, size: 64, align: 64, offset: 128)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "et", scope: !181, file: !180, line: 142, baseType: !285, size: 576, align: 64, offset: 4160)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64, align: 64)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_commrec", file: !295, line: 40, baseType: !296)
!295 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/commrec.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!296 = !DICompositeType(tag: DW_TAG_structure_type, file: !295, line: 36, size: 192, align: 32, elements: !297)
!297 = !{!298, !299, !300, !301, !302, !303}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "nodeid", scope: !296, file: !295, line: 37, baseType: !5, size: 32, align: 32)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "nnodes", scope: !296, file: !295, line: 37, baseType: !5, size: 32, align: 32, offset: 32)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !296, file: !295, line: 38, baseType: !5, size: 32, align: 32, offset: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !296, file: !295, line: 38, baseType: !5, size: 32, align: 32, offset: 96)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "threadid", scope: !296, file: !295, line: 39, baseType: !5, size: 32, align: 32, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "nthreads", scope: !296, file: !295, line: 39, baseType: !5, size: 32, align: 32, offset: 160)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64, align: 64)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "t_nrnb", file: !306, line: 95, baseType: !307)
!306 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/types/nrnb.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!307 = !DICompositeType(tag: DW_TAG_structure_type, file: !306, line: 93, size: 8256, align: 64, elements: !308)
!308 = !{!309}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !307, file: !306, line: 94, baseType: !310, size: 8256, align: 64)
!310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 8256, align: 64, elements: !312)
!311 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!312 = !{!313}
!313 = !DISubrange(count: 129)
!314 = !{!315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !330, !331}
!315 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "log", arg: 1, scope: !175, file: !1, line: 159, type: !11)
!316 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bVerbose", arg: 2, scope: !175, file: !1, line: 159, type: !5)
!317 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ir", arg: 3, scope: !175, file: !1, line: 160, type: !178)
!318 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "natoms", arg: 4, scope: !175, file: !1, line: 160, type: !5)
!319 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 5, scope: !175, file: !1, line: 161, type: !278)
!320 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 6, scope: !175, file: !1, line: 161, type: !278)
!321 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "charge", arg: 7, scope: !175, file: !1, line: 162, type: !95)
!322 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "box", arg: 8, scope: !175, file: !1, line: 162, type: !95)
!323 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "phi", arg: 9, scope: !175, file: !1, line: 163, type: !95)
!324 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cr", arg: 10, scope: !175, file: !1, line: 163, type: !293)
!325 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nrnb", arg: 11, scope: !175, file: !1, line: 164, type: !304)
!326 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nit", arg: 12, scope: !175, file: !1, line: 164, type: !109)
!327 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bOld", arg: 13, scope: !175, file: !1, line: 165, type: !5)
!328 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tol", scope: !175, file: !1, line: 173, type: !329)
!329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!330 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !175, file: !1, line: 174, type: !5)
!331 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ener", scope: !175, file: !1, line: 175, type: !96)
!332 = !DISubprogram(name: "do_optimize_poisson", scope: !1, file: !1, line: 231, type: !333, isLocal: false, isDefinition: true, scopeLine: 239, flags: DIFlagPrototyped, isOptimized: true, function: float (%struct.__sFILE*, i32, %struct.t_inputrec*, i32, [3 x float]*, [3 x float]*, float*, float*, float*, %struct.t_commrec*, %struct.t_nrnb*, [3 x float]*, float*, float*, i32)* @do_optimize_poisson, variables: !335)
!333 = !DISubroutineType(types: !334)
!334 = !{!96, !11, !5, !178, !5, !278, !278, !95, !95, !95, !293, !304, !278, !95, !95, !5}
!335 = !{!336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !368}
!336 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "log", arg: 1, scope: !332, file: !1, line: 231, type: !11)
!337 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bVerbose", arg: 2, scope: !332, file: !1, line: 231, type: !5)
!338 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ir", arg: 3, scope: !332, file: !1, line: 232, type: !178)
!339 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "natoms", arg: 4, scope: !332, file: !1, line: 232, type: !5)
!340 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "x", arg: 5, scope: !332, file: !1, line: 233, type: !278)
!341 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f", arg: 6, scope: !332, file: !1, line: 233, type: !278)
!342 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "charge", arg: 7, scope: !332, file: !1, line: 234, type: !95)
!343 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "box", arg: 8, scope: !332, file: !1, line: 234, type: !95)
!344 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "phi", arg: 9, scope: !332, file: !1, line: 235, type: !95)
!345 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cr", arg: 10, scope: !332, file: !1, line: 235, type: !293)
!346 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "nrnb", arg: 11, scope: !332, file: !1, line: 236, type: !304)
!347 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "f_ref", arg: 12, scope: !332, file: !1, line: 236, type: !278)
!348 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "phi_ref", arg: 13, scope: !332, file: !1, line: 237, type: !95)
!349 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "beta", arg: 14, scope: !332, file: !1, line: 237, type: !95)
!350 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "bOld", arg: 15, scope: !332, file: !1, line: 238, type: !5)
!351 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rmsf", scope: !332, file: !1, line: 249, type: !352)
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 296352, align: 32, elements: !353)
!353 = !{!354, !354, !354}
!354 = !DISubrange(count: 21)
!355 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rmsf_min", scope: !332, file: !1, line: 249, type: !96)
!356 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rrmsf", scope: !332, file: !1, line: 249, type: !96)
!357 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "minimum", scope: !332, file: !1, line: 250, type: !160)
!358 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tol", scope: !332, file: !1, line: 251, type: !329)
!359 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !332, file: !1, line: 252, type: !5)
!360 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !332, file: !1, line: 252, type: !5)
!361 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bx", scope: !332, file: !1, line: 252, type: !5)
!362 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "by", scope: !332, file: !1, line: 252, type: !5)
!363 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bz", scope: !332, file: !1, line: 252, type: !5)
!364 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !332, file: !1, line: 253, type: !365)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1024, align: 8, elements: !366)
!366 = !{!367}
!367 = !DISubrange(count: 128)
!368 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ener", scope: !332, file: !1, line: 254, type: !96)
!369 = !DISubprogram(name: "clear_rvec", scope: !370, file: !370, line: 316, type: !371, isLocal: true, isDefinition: true, scopeLine: 317, flags: DIFlagPrototyped, isOptimized: true, variables: !373)
!370 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/vec.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!371 = !DISubroutineType(types: !372)
!372 = !{null, !95}
!373 = !{!374}
!374 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !369, file: !370, line: 316, type: !95)
!375 = !{!376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389}
!376 = !DIGlobalVariable(name: "bFirst", scope: !175, file: !1, line: 167, type: !5, isLocal: true, isDefinition: true)
!377 = !DIGlobalVariable(name: "pot", scope: !175, file: !1, line: 168, type: !84, isLocal: true, isDefinition: true, variable: %struct.t_PSgrid** @do_poisson.pot)
!378 = !DIGlobalVariable(name: "rho", scope: !175, file: !1, line: 168, type: !84, isLocal: true, isDefinition: true, variable: %struct.t_PSgrid** @do_poisson.rho)
!379 = !DIGlobalVariable(name: "maxnit", scope: !175, file: !1, line: 169, type: !5, isLocal: true, isDefinition: true, variable: i32* @do_poisson.maxnit)
!380 = !DIGlobalVariable(name: "r1", scope: !175, file: !1, line: 170, type: !96, isLocal: true, isDefinition: true, variable: float* @do_poisson.r1)
!381 = !DIGlobalVariable(name: "rc", scope: !175, file: !1, line: 170, type: !96, isLocal: true, isDefinition: true, variable: float* @do_poisson.rc)
!382 = !DIGlobalVariable(name: "beta", scope: !175, file: !1, line: 171, type: !279, isLocal: true, isDefinition: true, variable: [3 x float]* @do_poisson.beta)
!383 = !DIGlobalVariable(name: "bFirst", scope: !332, file: !1, line: 243, type: !5, isLocal: true, isDefinition: true)
!384 = !DIGlobalVariable(name: "bSecond", scope: !332, file: !1, line: 244, type: !5, isLocal: true, isDefinition: true)
!385 = !DIGlobalVariable(name: "pot", scope: !332, file: !1, line: 245, type: !84, isLocal: true, isDefinition: true, variable: %struct.t_PSgrid** @do_optimize_poisson.pot)
!386 = !DIGlobalVariable(name: "rho", scope: !332, file: !1, line: 245, type: !84, isLocal: true, isDefinition: true, variable: %struct.t_PSgrid** @do_optimize_poisson.rho)
!387 = !DIGlobalVariable(name: "maxnit", scope: !332, file: !1, line: 246, type: !5, isLocal: true, isDefinition: true, variable: i32* @do_optimize_poisson.maxnit)
!388 = !DIGlobalVariable(name: "r1", scope: !332, file: !1, line: 247, type: !96, isLocal: true, isDefinition: true, variable: float* @do_optimize_poisson.r1)
!389 = !DIGlobalVariable(name: "rc", scope: !332, file: !1, line: 247, type: !96, isLocal: true, isDefinition: true, variable: float* @do_optimize_poisson.rc)
!390 = !{i32 2, !"Dwarf Version", i32 2}
!391 = !{i32 2, !"Debug Info Version", i32 700000003}
!392 = !{i32 1, !"PIC Level", i32 2}
!393 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!394 = !DIExpression()
!395 = !DILocation(line: 348, column: 40, scope: !7)
!396 = !DILocation(line: 348, column: 50, scope: !7)
!397 = !DILocation(line: 349, column: 12, scope: !398)
!398 = distinct !DILexicalBlock(scope: !7, file: !8, line: 349, column: 6)
!399 = !DILocation(line: 349, column: 6, scope: !398)
!400 = !{!401, !405, i64 12}
!401 = !{!"__sFILE", !402, i64 0, !405, i64 8, !405, i64 12, !406, i64 16, !406, i64 18, !407, i64 24, !405, i64 40, !402, i64 48, !402, i64 56, !402, i64 64, !402, i64 72, !402, i64 80, !407, i64 88, !402, i64 104, !405, i64 112, !403, i64 116, !403, i64 119, !407, i64 120, !405, i64 136, !408, i64 144}
!402 = !{!"any pointer", !403, i64 0}
!403 = !{!"omnipotent char", !404, i64 0}
!404 = !{!"Simple C/C++ TBAA"}
!405 = !{!"int", !403, i64 0}
!406 = !{!"short", !403, i64 0}
!407 = !{!"__sbuf", !402, i64 0, !405, i64 8}
!408 = !{!"long long", !403, i64 0}
!409 = !DILocation(line: 349, column: 15, scope: !398)
!410 = !DILocation(line: 349, column: 20, scope: !398)
!411 = !DILocation(line: 350, column: 10, scope: !398)
!412 = !DILocation(line: 349, column: 38, scope: !398)
!413 = !{!401, !405, i64 40}
!414 = !DILocation(line: 349, column: 31, scope: !398)
!415 = !DILocation(line: 349, column: 59, scope: !398)
!416 = !DILocation(line: 349, column: 47, scope: !398)
!417 = !DILocation(line: 350, column: 23, scope: !398)
!418 = !DILocation(line: 350, column: 16, scope: !398)
!419 = !DILocation(line: 350, column: 18, scope: !398)
!420 = !{!401, !402, i64 0}
!421 = !DILocation(line: 350, column: 21, scope: !398)
!422 = !{!403, !403, i64 0}
!423 = !DILocation(line: 350, column: 3, scope: !398)
!424 = !DILocation(line: 352, column: 11, scope: !398)
!425 = !DILocation(line: 352, column: 3, scope: !398)
!426 = !DILocation(line: 353, column: 1, scope: !7)
!427 = !DILocation(line: 114, column: 15, scope: !75)
!428 = !DILocation(line: 116, column: 20, scope: !75)
!429 = !DILocation(line: 116, column: 12, scope: !75)
!430 = !DILocation(line: 116, column: 57, scope: !75)
!431 = !DILocation(line: 116, column: 45, scope: !75)
!432 = !DILocation(line: 116, column: 5, scope: !75)
!433 = !DILocation(line: 44, column: 25, scope: !81)
!434 = !DILocation(line: 44, column: 32, scope: !81)
!435 = !DILocation(line: 44, column: 39, scope: !81)
!436 = !DILocation(line: 49, column: 3, scope: !81)
!437 = !DILocation(line: 46, column: 13, scope: !81)
!438 = !DILocation(line: 50, column: 7, scope: !81)
!439 = !DILocation(line: 50, column: 9, scope: !81)
!440 = !{!441, !405, i64 0}
!441 = !{!"", !405, i64 0, !405, i64 4, !405, i64 8, !402, i64 16}
!442 = !DILocation(line: 51, column: 7, scope: !81)
!443 = !DILocation(line: 51, column: 9, scope: !81)
!444 = !{!441, !405, i64 4}
!445 = !DILocation(line: 52, column: 7, scope: !81)
!446 = !DILocation(line: 52, column: 9, scope: !81)
!447 = !{!441, !405, i64 8}
!448 = !DILocation(line: 53, column: 3, scope: !81)
!449 = !{!441, !402, i64 16}
!450 = !DILocation(line: 47, column: 12, scope: !81)
!451 = !DILocation(line: 54, column: 14, scope: !452)
!452 = distinct !DILexicalBlock(scope: !453, file: !1, line: 54, column: 3)
!453 = distinct !DILexicalBlock(scope: !81, file: !1, line: 54, column: 3)
!454 = !DILocation(line: 54, column: 3, scope: !453)
!455 = !DILocation(line: 56, column: 16, scope: !456)
!456 = distinct !DILexicalBlock(scope: !457, file: !1, line: 56, column: 5)
!457 = distinct !DILexicalBlock(scope: !458, file: !1, line: 56, column: 5)
!458 = distinct !DILexicalBlock(scope: !452, file: !1, line: 54, column: 25)
!459 = !DILocation(line: 55, column: 5, scope: !458)
!460 = !{!402, !402, i64 0}
!461 = !DILocation(line: 47, column: 14, scope: !81)
!462 = !DILocation(line: 56, column: 5, scope: !457)
!463 = !DILocation(line: 57, column: 7, scope: !456)
!464 = !DILocation(line: 59, column: 3, scope: !81)
!465 = !DILocation(line: 62, column: 30, scope: !106)
!466 = !DILocation(line: 62, column: 40, scope: !106)
!467 = !DILocation(line: 62, column: 48, scope: !106)
!468 = !DILocation(line: 62, column: 56, scope: !106)
!469 = !DILocation(line: 62, column: 68, scope: !106)
!470 = !DILocation(line: 64, column: 16, scope: !106)
!471 = !DILocation(line: 64, column: 8, scope: !106)
!472 = !{!405, !405, i64 0}
!473 = !DILocation(line: 65, column: 16, scope: !106)
!474 = !DILocation(line: 65, column: 8, scope: !106)
!475 = !DILocation(line: 66, column: 16, scope: !106)
!476 = !DILocation(line: 66, column: 8, scope: !106)
!477 = !DILocation(line: 67, column: 16, scope: !106)
!478 = !DILocation(line: 67, column: 8, scope: !106)
!479 = !DILocation(line: 68, column: 1, scope: !106)
!480 = !DILocation(line: 70, column: 28, scope: !117)
!481 = !DILocation(line: 70, column: 43, scope: !117)
!482 = !DILocation(line: 74, column: 22, scope: !117)
!483 = !DILocation(line: 62, column: 30, scope: !106, inlinedAt: !484)
!484 = distinct !DILocation(line: 76, column: 3, scope: !117)
!485 = !DILocation(line: 62, column: 68, scope: !106, inlinedAt: !484)
!486 = !DILocation(line: 74, column: 11, scope: !117)
!487 = !DILocation(line: 62, column: 30, scope: !106, inlinedAt: !488)
!488 = distinct !DILocation(line: 77, column: 3, scope: !117)
!489 = !DILocation(line: 62, column: 68, scope: !106, inlinedAt: !488)
!490 = !DILocation(line: 64, column: 16, scope: !106, inlinedAt: !488)
!491 = !DILocation(line: 62, column: 40, scope: !106, inlinedAt: !488)
!492 = !DILocation(line: 62, column: 40, scope: !106, inlinedAt: !484)
!493 = !DILocation(line: 73, column: 8, scope: !117)
!494 = !DILocation(line: 65, column: 16, scope: !106, inlinedAt: !488)
!495 = !DILocation(line: 62, column: 48, scope: !106, inlinedAt: !488)
!496 = !DILocation(line: 62, column: 48, scope: !106, inlinedAt: !484)
!497 = !DILocation(line: 73, column: 11, scope: !117)
!498 = !DILocation(line: 66, column: 16, scope: !106, inlinedAt: !488)
!499 = !DILocation(line: 62, column: 56, scope: !106, inlinedAt: !488)
!500 = !DILocation(line: 62, column: 56, scope: !106, inlinedAt: !484)
!501 = !DILocation(line: 73, column: 14, scope: !117)
!502 = !DILocation(line: 72, column: 8, scope: !117)
!503 = !DILocation(line: 79, column: 14, scope: !504)
!504 = distinct !DILexicalBlock(scope: !505, file: !1, line: 79, column: 3)
!505 = distinct !DILexicalBlock(scope: !117, file: !1, line: 79, column: 3)
!506 = !DILocation(line: 79, column: 3, scope: !505)
!507 = !DILocation(line: 67, column: 16, scope: !106, inlinedAt: !488)
!508 = !DILocation(line: 67, column: 16, scope: !106, inlinedAt: !484)
!509 = !DILocation(line: 80, column: 16, scope: !510)
!510 = distinct !DILexicalBlock(scope: !511, file: !1, line: 80, column: 5)
!511 = distinct !DILexicalBlock(scope: !504, file: !1, line: 80, column: 5)
!512 = !DILocation(line: 81, column: 18, scope: !513)
!513 = distinct !DILexicalBlock(scope: !514, file: !1, line: 81, column: 7)
!514 = distinct !DILexicalBlock(scope: !510, file: !1, line: 81, column: 7)
!515 = !DILocation(line: 82, column: 21, scope: !513)
!516 = !DILocation(line: 82, column: 2, scope: !513)
!517 = !DILocation(line: 80, column: 5, scope: !511)
!518 = !DILocation(line: 81, column: 7, scope: !514)
!519 = !{!520, !520, i64 0}
!520 = !{!"float", !403, i64 0}
!521 = !DILocation(line: 82, column: 19, scope: !513)
!522 = !DILocation(line: 83, column: 1, scope: !117)
!523 = !DILocation(line: 85, column: 29, scope: !131)
!524 = !DILocation(line: 89, column: 11, scope: !131)
!525 = !DILocation(line: 62, column: 30, scope: !106, inlinedAt: !526)
!526 = distinct !DILocation(line: 91, column: 3, scope: !131)
!527 = !DILocation(line: 62, column: 68, scope: !106, inlinedAt: !526)
!528 = !DILocation(line: 64, column: 16, scope: !106, inlinedAt: !526)
!529 = !DILocation(line: 62, column: 40, scope: !106, inlinedAt: !526)
!530 = !DILocation(line: 88, column: 8, scope: !131)
!531 = !DILocation(line: 65, column: 16, scope: !106, inlinedAt: !526)
!532 = !DILocation(line: 62, column: 48, scope: !106, inlinedAt: !526)
!533 = !DILocation(line: 88, column: 11, scope: !131)
!534 = !DILocation(line: 66, column: 16, scope: !106, inlinedAt: !526)
!535 = !DILocation(line: 62, column: 56, scope: !106, inlinedAt: !526)
!536 = !DILocation(line: 88, column: 14, scope: !131)
!537 = !DILocation(line: 87, column: 8, scope: !131)
!538 = !DILocation(line: 93, column: 14, scope: !539)
!539 = distinct !DILexicalBlock(scope: !540, file: !1, line: 93, column: 3)
!540 = distinct !DILexicalBlock(scope: !131, file: !1, line: 93, column: 3)
!541 = !DILocation(line: 93, column: 3, scope: !540)
!542 = !DILocation(line: 67, column: 16, scope: !106, inlinedAt: !526)
!543 = !DILocation(line: 94, column: 16, scope: !544)
!544 = distinct !DILexicalBlock(scope: !545, file: !1, line: 94, column: 5)
!545 = distinct !DILexicalBlock(scope: !539, file: !1, line: 94, column: 5)
!546 = !DILocation(line: 95, column: 18, scope: !547)
!547 = distinct !DILexicalBlock(scope: !548, file: !1, line: 95, column: 7)
!548 = distinct !DILexicalBlock(scope: !544, file: !1, line: 95, column: 7)
!549 = !DILocation(line: 96, column: 2, scope: !547)
!550 = !DILocation(line: 94, column: 5, scope: !545)
!551 = !DILocation(line: 95, column: 7, scope: !548)
!552 = !DILocation(line: 96, column: 15, scope: !547)
!553 = !DILocation(line: 97, column: 1, scope: !131)
!554 = !DILocation(line: 99, column: 30, scope: !143)
!555 = !DILocation(line: 99, column: 43, scope: !143)
!556 = !DILocation(line: 99, column: 53, scope: !143)
!557 = !DILocation(line: 104, column: 8, scope: !143)
!558 = !DILocation(line: 104, column: 15, scope: !143)
!559 = !DILocation(line: 105, column: 8, scope: !143)
!560 = !DIExpression(DW_OP_bit_piece, 0, 32)
!561 = !DIExpression(DW_OP_bit_piece, 32, 32)
!562 = !DIExpression(DW_OP_bit_piece, 64, 32)
!563 = !DILocation(line: 105, column: 24, scope: !143)
!564 = !DILocation(line: 103, column: 11, scope: !143)
!565 = !DILocation(line: 62, column: 30, scope: !106, inlinedAt: !566)
!566 = distinct !DILocation(line: 107, column: 3, scope: !143)
!567 = !DILocation(line: 62, column: 68, scope: !106, inlinedAt: !566)
!568 = !DILocation(line: 64, column: 16, scope: !106, inlinedAt: !566)
!569 = !DILocation(line: 62, column: 40, scope: !106, inlinedAt: !566)
!570 = !DILocation(line: 102, column: 8, scope: !143)
!571 = !DILocation(line: 65, column: 16, scope: !106, inlinedAt: !566)
!572 = !DILocation(line: 62, column: 48, scope: !106, inlinedAt: !566)
!573 = !DILocation(line: 102, column: 11, scope: !143)
!574 = !DILocation(line: 66, column: 16, scope: !106, inlinedAt: !566)
!575 = !DILocation(line: 62, column: 56, scope: !106, inlinedAt: !566)
!576 = !DILocation(line: 102, column: 14, scope: !143)
!577 = !DILocation(line: 67, column: 16, scope: !106, inlinedAt: !566)
!578 = !DILocation(line: 110, column: 7, scope: !579)
!579 = distinct !DILexicalBlock(scope: !143, file: !1, line: 110, column: 7)
!580 = !DILocation(line: 110, column: 17, scope: !579)
!581 = !DILocation(line: 110, column: 7, scope: !143)
!582 = !DILocation(line: 112, column: 19, scope: !583)
!583 = distinct !DILexicalBlock(scope: !579, file: !1, line: 110, column: 33)
!584 = !DILocation(line: 101, column: 8, scope: !143)
!585 = !DILocation(line: 113, column: 16, scope: !586)
!586 = distinct !DILexicalBlock(scope: !587, file: !1, line: 113, column: 5)
!587 = distinct !DILexicalBlock(scope: !583, file: !1, line: 113, column: 5)
!588 = !DILocation(line: 113, column: 5, scope: !587)
!589 = !DILocation(line: 131, column: 13, scope: !143)
!590 = !DILocation(line: 131, column: 16, scope: !143)
!591 = !DILocation(line: 131, column: 10, scope: !143)
!592 = !DILocation(line: 131, column: 7, scope: !143)
!593 = !DILocation(line: 132, column: 3, scope: !594)
!594 = distinct !DILexicalBlock(scope: !143, file: !1, line: 132, column: 3)
!595 = !DILocation(line: 114, column: 18, scope: !596)
!596 = distinct !DILexicalBlock(scope: !597, file: !1, line: 114, column: 7)
!597 = distinct !DILexicalBlock(scope: !586, file: !1, line: 114, column: 7)
!598 = !DILocation(line: 115, column: 13, scope: !599)
!599 = distinct !DILexicalBlock(scope: !600, file: !1, line: 115, column: 2)
!600 = distinct !DILexicalBlock(scope: !596, file: !1, line: 115, column: 2)
!601 = !DILocation(line: 114, column: 7, scope: !597)
!602 = !DILocation(line: 116, column: 11, scope: !603)
!603 = distinct !DILexicalBlock(scope: !599, file: !1, line: 115, column: 24)
!604 = !DILocation(line: 115, column: 2, scope: !600)
!605 = !DILocation(line: 116, column: 8, scope: !603)
!606 = !DILocation(line: 117, column: 21, scope: !607)
!607 = distinct !DILexicalBlock(scope: !603, file: !1, line: 117, column: 8)
!608 = !DILocation(line: 117, column: 8, scope: !603)
!609 = !DILocation(line: 123, column: 26, scope: !610)
!610 = distinct !DILexicalBlock(scope: !607, file: !1, line: 123, column: 13)
!611 = !DILocation(line: 123, column: 13, scope: !607)
!612 = !DILocation(line: 128, column: 4, scope: !613)
!613 = distinct !DILexicalBlock(scope: !610, file: !1, line: 123, column: 34)
!614 = !DILocation(line: 132, column: 14, scope: !615)
!615 = distinct !DILexicalBlock(scope: !594, file: !1, line: 132, column: 3)
!616 = !DILocation(line: 133, column: 16, scope: !617)
!617 = distinct !DILexicalBlock(scope: !618, file: !1, line: 133, column: 5)
!618 = distinct !DILexicalBlock(scope: !615, file: !1, line: 133, column: 5)
!619 = !DILocation(line: 134, column: 18, scope: !620)
!620 = distinct !DILexicalBlock(scope: !621, file: !1, line: 134, column: 7)
!621 = distinct !DILexicalBlock(scope: !617, file: !1, line: 134, column: 7)
!622 = !DILocation(line: 135, column: 2, scope: !620)
!623 = !DILocation(line: 133, column: 5, scope: !618)
!624 = !DILocation(line: 134, column: 7, scope: !621)
!625 = !DILocation(line: 135, column: 15, scope: !620)
!626 = !DILocation(line: 136, column: 7, scope: !627)
!627 = distinct !DILexicalBlock(scope: !143, file: !1, line: 136, column: 7)
!628 = !DILocation(line: 136, column: 7, scope: !143)
!629 = !DILocation(line: 138, column: 6, scope: !627)
!630 = !DILocation(line: 139, column: 6, scope: !627)
!631 = !DILocation(line: 140, column: 6, scope: !627)
!632 = !DILocation(line: 137, column: 5, scope: !627)
!633 = !DILocation(line: 141, column: 1, scope: !143)
!634 = !DILocation(line: 143, column: 20, scope: !163)
!635 = !DILocation(line: 143, column: 27, scope: !163)
!636 = !DILocation(line: 143, column: 34, scope: !163)
!637 = !DILocation(line: 144, column: 15, scope: !163)
!638 = !DILocation(line: 144, column: 25, scope: !163)
!639 = !DILocation(line: 144, column: 35, scope: !163)
!640 = !DILocation(line: 148, column: 3, scope: !163)
!641 = !DILocation(line: 149, column: 3, scope: !163)
!642 = !DILocation(line: 150, column: 3, scope: !163)
!643 = !DILocation(line: 146, column: 7, scope: !163)
!644 = !DILocation(line: 151, column: 14, scope: !645)
!645 = distinct !DILexicalBlock(scope: !646, file: !1, line: 151, column: 3)
!646 = distinct !DILexicalBlock(scope: !163, file: !1, line: 151, column: 3)
!647 = !DILocation(line: 151, column: 3, scope: !646)
!648 = !DILocation(line: 152, column: 6, scope: !645)
!649 = !DILocation(line: 153, column: 14, scope: !650)
!650 = distinct !DILexicalBlock(scope: !651, file: !1, line: 153, column: 3)
!651 = distinct !DILexicalBlock(scope: !163, file: !1, line: 153, column: 3)
!652 = !DILocation(line: 153, column: 3, scope: !651)
!653 = !DILocation(line: 154, column: 6, scope: !650)
!654 = !DILocation(line: 152, column: 19, scope: !645)
!655 = !DILocation(line: 152, column: 5, scope: !645)
!656 = !DILocation(line: 152, column: 15, scope: !645)
!657 = !DILocation(line: 155, column: 14, scope: !658)
!658 = distinct !DILexicalBlock(scope: !659, file: !1, line: 155, column: 3)
!659 = distinct !DILexicalBlock(scope: !163, file: !1, line: 155, column: 3)
!660 = !DILocation(line: 155, column: 3, scope: !659)
!661 = !DILocation(line: 154, column: 19, scope: !650)
!662 = !DILocation(line: 154, column: 5, scope: !650)
!663 = !DILocation(line: 154, column: 15, scope: !650)
!664 = !DILocation(line: 156, column: 19, scope: !658)
!665 = !DILocation(line: 156, column: 5, scope: !658)
!666 = !DILocation(line: 156, column: 15, scope: !658)
!667 = !DILocation(line: 157, column: 1, scope: !163)
!668 = !DILocation(line: 159, column: 23, scope: !175)
!669 = !DILocation(line: 159, column: 39, scope: !175)
!670 = !DILocation(line: 160, column: 15, scope: !175)
!671 = !DILocation(line: 160, column: 24, scope: !175)
!672 = !DILocation(line: 161, column: 8, scope: !175)
!673 = !DILocation(line: 161, column: 25, scope: !175)
!674 = !DILocation(line: 162, column: 8, scope: !175)
!675 = !DILocation(line: 162, column: 25, scope: !175)
!676 = !DILocation(line: 163, column: 8, scope: !175)
!677 = !DILocation(line: 163, column: 31, scope: !175)
!678 = !DILocation(line: 164, column: 11, scope: !175)
!679 = !DILocation(line: 164, column: 25, scope: !175)
!680 = !DILocation(line: 165, column: 8, scope: !175)
!681 = !DILocation(line: 173, column: 18, scope: !175)
!682 = !DILocation(line: 175, column: 13, scope: !175)
!683 = !DILocation(line: 179, column: 7, scope: !175)
!684 = !DILocation(line: 199, column: 16, scope: !175)
!685 = !DILocation(line: 180, column: 18, scope: !686)
!686 = distinct !DILexicalBlock(scope: !687, file: !1, line: 179, column: 15)
!687 = distinct !DILexicalBlock(scope: !175, file: !1, line: 179, column: 7)
!688 = !{!689, !405, i64 352}
!689 = !{!"", !405, i64 0, !405, i64 4, !405, i64 8, !405, i64 12, !405, i64 16, !405, i64 20, !405, i64 24, !405, i64 28, !405, i64 32, !405, i64 36, !405, i64 40, !405, i64 44, !405, i64 48, !405, i64 52, !520, i64 56, !520, i64 60, !520, i64 64, !405, i64 68, !405, i64 72, !405, i64 76, !405, i64 80, !520, i64 84, !405, i64 88, !405, i64 92, !405, i64 96, !405, i64 100, !405, i64 104, !405, i64 108, !405, i64 112, !405, i64 116, !520, i64 120, !403, i64 124, !403, i64 160, !405, i64 196, !520, i64 200, !520, i64 204, !405, i64 208, !520, i64 212, !520, i64 216, !405, i64 220, !520, i64 224, !520, i64 228, !520, i64 232, !405, i64 236, !520, i64 240, !520, i64 244, !405, i64 248, !520, i64 252, !520, i64 256, !520, i64 260, !520, i64 264, !520, i64 268, !405, i64 272, !405, i64 276, !405, i64 280, !520, i64 284, !520, i64 288, !520, i64 292, !405, i64 296, !520, i64 300, !520, i64 304, !405, i64 308, !405, i64 312, !405, i64 316, !405, i64 320, !405, i64 324, !520, i64 328, !405, i64 332, !520, i64 336, !520, i64 340, !405, i64 344, !520, i64 348, !405, i64 352, !405, i64 356, !405, i64 360, !405, i64 364, !520, i64 368, !520, i64 372, !520, i64 376, !520, i64 380, !690, i64 384, !403, i64 448, !403, i64 520}
!690 = !{!"", !405, i64 0, !405, i64 4, !405, i64 8, !405, i64 12, !402, i64 16, !402, i64 24, !402, i64 32, !402, i64 40, !402, i64 48, !402, i64 56}
!691 = !DILocation(line: 180, column: 12, scope: !686)
!692 = !DILocation(line: 182, column: 5, scope: !686)
!693 = !DILocation(line: 183, column: 51, scope: !686)
!694 = !{!689, !405, i64 68}
!695 = !DILocation(line: 183, column: 59, scope: !686)
!696 = !{!689, !405, i64 72}
!697 = !DILocation(line: 183, column: 67, scope: !686)
!698 = !{!689, !405, i64 76}
!699 = !DILocation(line: 183, column: 5, scope: !686)
!700 = !DILocation(line: 185, column: 14, scope: !701)
!701 = distinct !DILexicalBlock(scope: !686, file: !1, line: 185, column: 9)
!702 = !DILocation(line: 185, column: 18, scope: !701)
!703 = !DILocation(line: 185, column: 23, scope: !701)
!704 = !DILocation(line: 185, column: 31, scope: !701)
!705 = !DILocation(line: 185, column: 35, scope: !701)
!706 = !DILocation(line: 185, column: 40, scope: !701)
!707 = !DILocation(line: 185, column: 48, scope: !701)
!708 = !DILocation(line: 185, column: 52, scope: !701)
!709 = !DILocation(line: 185, column: 9, scope: !686)
!710 = !DILocation(line: 186, column: 7, scope: !701)
!711 = !DILocation(line: 188, column: 25, scope: !686)
!712 = !DILocation(line: 188, column: 33, scope: !686)
!713 = !DILocation(line: 188, column: 41, scope: !686)
!714 = !DILocation(line: 188, column: 11, scope: !686)
!715 = !DILocation(line: 188, column: 9, scope: !686)
!716 = !DILocation(line: 189, column: 25, scope: !686)
!717 = !DILocation(line: 189, column: 33, scope: !686)
!718 = !DILocation(line: 189, column: 41, scope: !686)
!719 = !DILocation(line: 189, column: 11, scope: !686)
!720 = !DILocation(line: 189, column: 9, scope: !686)
!721 = !DILocation(line: 191, column: 14, scope: !686)
!722 = !{!689, !520, i64 212}
!723 = !DILocation(line: 191, column: 8, scope: !686)
!724 = !DILocation(line: 192, column: 14, scope: !686)
!725 = !{!689, !520, i64 216}
!726 = !DILocation(line: 192, column: 8, scope: !686)
!727 = !DILocation(line: 174, column: 13, scope: !175)
!728 = !DILocation(line: 194, column: 15, scope: !729)
!729 = distinct !DILexicalBlock(scope: !730, file: !1, line: 193, column: 5)
!730 = distinct !DILexicalBlock(scope: !686, file: !1, line: 193, column: 5)
!731 = !DILocation(line: 199, column: 3, scope: !175)
!732 = !DILocation(line: 200, column: 58, scope: !175)
!733 = !DILocation(line: 200, column: 61, scope: !175)
!734 = !DILocation(line: 200, column: 75, scope: !175)
!735 = !DILocation(line: 200, column: 3, scope: !175)
!736 = !DILocation(line: 207, column: 21, scope: !175)
!737 = !DILocation(line: 207, column: 27, scope: !175)
!738 = !DILocation(line: 207, column: 3, scope: !175)
!739 = !DILocation(line: 213, column: 7, scope: !175)
!740 = !DILocation(line: 214, column: 17, scope: !741)
!741 = distinct !DILexicalBlock(scope: !175, file: !1, line: 213, column: 7)
!742 = !DILocation(line: 214, column: 21, scope: !741)
!743 = !DILocation(line: 214, column: 5, scope: !741)
!744 = !DILocation(line: 217, column: 28, scope: !175)
!745 = !DILocation(line: 217, column: 32, scope: !175)
!746 = !DILocation(line: 217, column: 50, scope: !175)
!747 = !DILocation(line: 217, column: 10, scope: !175)
!748 = !DILocation(line: 217, column: 8, scope: !175)
!749 = !DILocation(line: 219, column: 21, scope: !175)
!750 = !DILocation(line: 219, column: 27, scope: !175)
!751 = !DILocation(line: 219, column: 3, scope: !175)
!752 = !DILocation(line: 224, column: 61, scope: !175)
!753 = !DILocation(line: 224, column: 10, scope: !175)
!754 = !DILocation(line: 228, column: 3, scope: !175)
!755 = !DILocation(line: 231, column: 32, scope: !332)
!756 = !DILocation(line: 231, column: 48, scope: !332)
!757 = !DILocation(line: 232, column: 17, scope: !332)
!758 = !DILocation(line: 232, column: 26, scope: !332)
!759 = !DILocation(line: 233, column: 10, scope: !332)
!760 = !DILocation(line: 233, column: 27, scope: !332)
!761 = !DILocation(line: 234, column: 10, scope: !332)
!762 = !DILocation(line: 234, column: 27, scope: !332)
!763 = !DILocation(line: 235, column: 10, scope: !332)
!764 = !DILocation(line: 235, column: 33, scope: !332)
!765 = !DILocation(line: 236, column: 13, scope: !332)
!766 = !DILocation(line: 236, column: 27, scope: !332)
!767 = !DILocation(line: 237, column: 10, scope: !332)
!768 = !DILocation(line: 237, column: 27, scope: !332)
!769 = !DILocation(line: 238, column: 10, scope: !332)
!770 = !DILocation(line: 249, column: 3, scope: !332)
!771 = !DILocation(line: 249, column: 13, scope: !332)
!772 = !DILocation(line: 250, column: 13, scope: !332)
!773 = !DILocation(line: 251, column: 18, scope: !332)
!774 = !DILocation(line: 253, column: 3, scope: !332)
!775 = !DILocation(line: 253, column: 13, scope: !332)
!776 = !DILocation(line: 254, column: 13, scope: !332)
!777 = !DILocation(line: 258, column: 7, scope: !332)
!778 = !DILocation(line: 279, column: 16, scope: !332)
!779 = !DILocation(line: 259, column: 18, scope: !780)
!780 = distinct !DILexicalBlock(scope: !781, file: !1, line: 258, column: 15)
!781 = distinct !DILexicalBlock(scope: !332, file: !1, line: 258, column: 7)
!782 = !DILocation(line: 259, column: 12, scope: !780)
!783 = !DILocation(line: 261, column: 5, scope: !780)
!784 = !DILocation(line: 262, column: 51, scope: !780)
!785 = !DILocation(line: 262, column: 59, scope: !780)
!786 = !DILocation(line: 262, column: 67, scope: !780)
!787 = !DILocation(line: 262, column: 5, scope: !780)
!788 = !DILocation(line: 264, column: 14, scope: !789)
!789 = distinct !DILexicalBlock(scope: !780, file: !1, line: 264, column: 9)
!790 = !DILocation(line: 264, column: 18, scope: !789)
!791 = !DILocation(line: 264, column: 23, scope: !789)
!792 = !DILocation(line: 264, column: 31, scope: !789)
!793 = !DILocation(line: 264, column: 35, scope: !789)
!794 = !DILocation(line: 264, column: 40, scope: !789)
!795 = !DILocation(line: 264, column: 48, scope: !789)
!796 = !DILocation(line: 264, column: 52, scope: !789)
!797 = !DILocation(line: 264, column: 9, scope: !780)
!798 = !DILocation(line: 265, column: 7, scope: !789)
!799 = !DILocation(line: 267, column: 25, scope: !780)
!800 = !DILocation(line: 267, column: 33, scope: !780)
!801 = !DILocation(line: 267, column: 41, scope: !780)
!802 = !DILocation(line: 267, column: 11, scope: !780)
!803 = !DILocation(line: 267, column: 9, scope: !780)
!804 = !DILocation(line: 268, column: 25, scope: !780)
!805 = !DILocation(line: 268, column: 33, scope: !780)
!806 = !DILocation(line: 268, column: 41, scope: !780)
!807 = !DILocation(line: 268, column: 11, scope: !780)
!808 = !DILocation(line: 268, column: 9, scope: !780)
!809 = !DILocation(line: 270, column: 14, scope: !780)
!810 = !DILocation(line: 270, column: 8, scope: !780)
!811 = !DILocation(line: 271, column: 14, scope: !780)
!812 = !DILocation(line: 271, column: 8, scope: !780)
!813 = !DILocation(line: 252, column: 15, scope: !332)
!814 = !DILocation(line: 273, column: 15, scope: !815)
!815 = distinct !DILexicalBlock(scope: !816, file: !1, line: 272, column: 5)
!816 = distinct !DILexicalBlock(scope: !780, file: !1, line: 272, column: 5)
!817 = !DILocation(line: 276, column: 3, scope: !780)
!818 = !DILocation(line: 279, column: 3, scope: !332)
!819 = !DILocation(line: 280, column: 58, scope: !332)
!820 = !DILocation(line: 280, column: 61, scope: !332)
!821 = !DILocation(line: 281, column: 11, scope: !332)
!822 = !DILocation(line: 280, column: 3, scope: !332)
!823 = !DILocation(line: 283, column: 25, scope: !332)
!824 = !DILocation(line: 283, column: 3, scope: !332)
!825 = !DILocation(line: 285, column: 17, scope: !826)
!826 = distinct !DILexicalBlock(scope: !332, file: !1, line: 284, column: 7)
!827 = !DILocation(line: 285, column: 21, scope: !826)
!828 = !DILocation(line: 285, column: 5, scope: !826)
!829 = !DILocation(line: 288, column: 28, scope: !332)
!830 = !DILocation(line: 288, column: 32, scope: !332)
!831 = !DILocation(line: 288, column: 50, scope: !332)
!832 = !DILocation(line: 288, column: 10, scope: !332)
!833 = !DILocation(line: 290, column: 25, scope: !332)
!834 = !DILocation(line: 290, column: 3, scope: !332)
!835 = !DILocation(line: 252, column: 17, scope: !332)
!836 = !DILocation(line: 299, column: 7, scope: !837)
!837 = distinct !DILexicalBlock(scope: !838, file: !1, line: 298, column: 30)
!838 = distinct !DILexicalBlock(scope: !839, file: !1, line: 298, column: 5)
!839 = distinct !DILexicalBlock(scope: !840, file: !1, line: 298, column: 5)
!840 = distinct !DILexicalBlock(scope: !841, file: !1, line: 296, column: 28)
!841 = distinct !DILexicalBlock(scope: !842, file: !1, line: 296, column: 3)
!842 = distinct !DILexicalBlock(scope: !332, file: !1, line: 296, column: 3)
!843 = !DILocation(line: 301, column: 2, scope: !844)
!844 = distinct !DILexicalBlock(scope: !845, file: !1, line: 300, column: 32)
!845 = distinct !DILexicalBlock(scope: !846, file: !1, line: 300, column: 7)
!846 = distinct !DILexicalBlock(scope: !837, file: !1, line: 300, column: 7)
!847 = !DILocation(line: 303, column: 13, scope: !848)
!848 = distinct !DILexicalBlock(scope: !849, file: !1, line: 303, column: 2)
!849 = distinct !DILexicalBlock(scope: !844, file: !1, line: 303, column: 2)
!850 = !DILocation(line: 296, column: 3, scope: !842)
!851 = !DILocation(line: 297, column: 16, scope: !840)
!852 = !DILocation(line: 297, column: 14, scope: !840)
!853 = !DILocation(line: 252, column: 20, scope: !332)
!854 = !DILocation(line: 298, column: 5, scope: !839)
!855 = !DILocation(line: 299, column: 18, scope: !837)
!856 = !DILocation(line: 299, column: 16, scope: !837)
!857 = !DILocation(line: 252, column: 23, scope: !332)
!858 = !DILocation(line: 300, column: 7, scope: !846)
!859 = !DILocation(line: 301, column: 13, scope: !844)
!860 = !DILocation(line: 301, column: 11, scope: !844)
!861 = !DILocation(line: 252, column: 13, scope: !332)
!862 = !DILocation(line: 303, column: 2, scope: !849)
!863 = !DILocation(line: 304, column: 4, scope: !864)
!864 = distinct !DILexicalBlock(scope: !848, file: !1, line: 303, column: 28)
!865 = !DILocation(line: 304, column: 11, scope: !864)
!866 = !DILocation(line: 305, column: 15, scope: !864)
!867 = !DILocation(line: 316, column: 36, scope: !369, inlinedAt: !868)
!868 = distinct !DILocation(line: 305, column: 4, scope: !864)
!869 = !DILocation(line: 321, column: 8, scope: !369, inlinedAt: !868)
!870 = !DILocation(line: 322, column: 3, scope: !369, inlinedAt: !868)
!871 = !DILocation(line: 322, column: 8, scope: !369, inlinedAt: !868)
!872 = !DILocation(line: 323, column: 3, scope: !369, inlinedAt: !868)
!873 = !DILocation(line: 323, column: 8, scope: !369, inlinedAt: !868)
!874 = !DILocation(line: 308, column: 11, scope: !844)
!875 = !DILocation(line: 307, column: 9, scope: !844)
!876 = !DILocation(line: 309, column: 2, scope: !844)
!877 = !DILocation(line: 311, column: 4, scope: !844)
!878 = !DILocation(line: 310, column: 2, scope: !844)
!879 = !DILocation(line: 310, column: 19, scope: !844)
!880 = !DILocation(line: 316, column: 14, scope: !332)
!881 = !DILocation(line: 249, column: 30, scope: !332)
!882 = !DILocation(line: 318, column: 3, scope: !883)
!883 = distinct !DILexicalBlock(scope: !332, file: !1, line: 318, column: 3)
!884 = !DILocation(line: 319, column: 16, scope: !885)
!885 = distinct !DILexicalBlock(scope: !886, file: !1, line: 318, column: 28)
!886 = distinct !DILexicalBlock(scope: !883, file: !1, line: 318, column: 3)
!887 = !DILocation(line: 319, column: 14, scope: !885)
!888 = !DILocation(line: 320, column: 5, scope: !889)
!889 = distinct !DILexicalBlock(scope: !885, file: !1, line: 320, column: 5)
!890 = !DILocation(line: 321, column: 18, scope: !891)
!891 = distinct !DILexicalBlock(scope: !892, file: !1, line: 320, column: 30)
!892 = distinct !DILexicalBlock(scope: !889, file: !1, line: 320, column: 5)
!893 = !DILocation(line: 321, column: 16, scope: !891)
!894 = !DILocation(line: 322, column: 7, scope: !895)
!895 = distinct !DILexicalBlock(scope: !891, file: !1, line: 322, column: 7)
!896 = !DILocation(line: 323, column: 13, scope: !897)
!897 = distinct !DILexicalBlock(scope: !898, file: !1, line: 322, column: 32)
!898 = distinct !DILexicalBlock(scope: !895, file: !1, line: 322, column: 7)
!899 = !DILocation(line: 323, column: 11, scope: !897)
!900 = !DILocation(line: 324, column: 13, scope: !897)
!901 = !DILocation(line: 249, column: 39, scope: !332)
!902 = !DILocation(line: 327, column: 3, scope: !897)
!903 = !DILocation(line: 327, column: 12, scope: !897)
!904 = !DILocation(line: 327, column: 21, scope: !897)
!905 = !DILocation(line: 327, column: 30, scope: !897)
!906 = !DILocation(line: 326, column: 2, scope: !897)
!907 = !DILocation(line: 328, column: 12, scope: !908)
!908 = distinct !DILexicalBlock(scope: !897, file: !1, line: 328, column: 6)
!909 = !DILocation(line: 328, column: 6, scope: !897)
!910 = !DILocation(line: 333, column: 2, scope: !911)
!911 = distinct !DILexicalBlock(scope: !908, file: !1, line: 328, column: 24)
!912 = !DILocation(line: 337, column: 14, scope: !332)
!913 = !DILocation(line: 337, column: 12, scope: !332)
!914 = !DILocation(line: 338, column: 14, scope: !332)
!915 = !DILocation(line: 338, column: 12, scope: !332)
!916 = !DILocation(line: 339, column: 14, scope: !332)
!917 = !DILocation(line: 339, column: 12, scope: !332)
!918 = !DILocation(line: 341, column: 4, scope: !332)
!919 = !DILocation(line: 341, column: 13, scope: !332)
!920 = !DILocation(line: 341, column: 22, scope: !332)
!921 = !DILocation(line: 341, column: 31, scope: !332)
!922 = !DILocation(line: 340, column: 3, scope: !332)
!923 = !DILocation(line: 343, column: 3, scope: !924)
!924 = distinct !DILexicalBlock(scope: !332, file: !1, line: 343, column: 3)
!925 = !DILocation(line: 344, column: 5, scope: !926)
!926 = distinct !DILexicalBlock(scope: !927, file: !1, line: 343, column: 29)
!927 = distinct !DILexicalBlock(scope: !924, file: !1, line: 343, column: 3)
!928 = !DILocation(line: 344, column: 12, scope: !926)
!929 = !DILocation(line: 345, column: 16, scope: !926)
!930 = !DILocation(line: 316, column: 36, scope: !369, inlinedAt: !931)
!931 = distinct !DILocation(line: 345, column: 5, scope: !926)
!932 = !DILocation(line: 321, column: 8, scope: !369, inlinedAt: !931)
!933 = !DILocation(line: 322, column: 3, scope: !369, inlinedAt: !931)
!934 = !DILocation(line: 322, column: 8, scope: !369, inlinedAt: !931)
!935 = !DILocation(line: 323, column: 3, scope: !369, inlinedAt: !931)
!936 = !DILocation(line: 323, column: 8, scope: !369, inlinedAt: !931)
!937 = !DILocation(line: 347, column: 61, scope: !332)
!938 = !DILocation(line: 347, column: 10, scope: !332)
!939 = !DILocation(line: 350, column: 1, scope: !332)
