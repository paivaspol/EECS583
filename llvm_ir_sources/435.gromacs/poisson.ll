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
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2
  %2 = load i32* %1, align 4, !tbaa !2
  %3 = add nsw i32 %2, -1
  store i32 %3, i32* %1, align 4, !tbaa !2
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %._crit_edge, label %5

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255
  br label %10

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6
  %7 = load i32* %6, align 4, !tbaa !11
  %8 = icmp sle i32 %2, %7
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10
  %or.cond = or i1 %9, %8
  br i1 %or.cond, label %15, label %10

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ]
  %11 = trunc i32 %_c to i8
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0
  %13 = load i8** %12, align 8, !tbaa !12
  %14 = getelementptr inbounds i8* %13, i64 1
  store i8* %14, i8** %12, align 8, !tbaa !12
  store i8 %11, i8* %13, align 1, !tbaa !13
  br label %17

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #6
  br label %17

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #2 {
  %1 = icmp sgt i32 %__signo, 32
  br i1 %1, label %5, label %2

; <label>:2                                       ; preds = %0
  %3 = add nsw i32 %__signo, -1
  %4 = shl i32 1, %3
  br label %5

; <label>:5                                       ; preds = %0, %2
  %6 = phi i32 [ %4, %2 ], [ 0, %0 ]
  ret i32 %6
}

; Function Attrs: nounwind optsize ssp uwtable
define %struct.t_PSgrid* @mk_PSgrid(i32 %nx, i32 %ny, i32 %nz) #3 {
  %1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str1, i64 0, i64 0), i32 49, i32 1, i32 24) #6
  %2 = bitcast i8* %1 to %struct.t_PSgrid*
  %3 = bitcast i8* %1 to i32*
  store i32 %nx, i32* %3, align 4, !tbaa !14
  %4 = getelementptr inbounds i8* %1, i64 4
  %5 = bitcast i8* %4 to i32*
  store i32 %ny, i32* %5, align 4, !tbaa !16
  %6 = getelementptr inbounds i8* %1, i64 8
  %7 = bitcast i8* %6 to i32*
  store i32 %nz, i32* %7, align 4, !tbaa !17
  %8 = tail call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str1, i64 0, i64 0), i32 53, i32 %nx, i32 8) #6
  %9 = getelementptr inbounds i8* %1, i64 16
  %10 = bitcast i8* %9 to float****
  %11 = bitcast i8* %9 to i8**
  store i8* %8, i8** %11, align 8, !tbaa !18
  %12 = icmp sgt i32 %nx, 0
  br i1 %12, label %.lr.ph4, label %._crit_edge5

.lr.ph4:                                          ; preds = %0
  %13 = icmp sgt i32 %ny, 0
  %14 = add i32 %ny, -1
  %15 = add i32 %nx, -1
  br label %16

; <label>:16                                      ; preds = %._crit_edge, %.lr.ph4
  %indvars.iv6 = phi i64 [ 0, %.lr.ph4 ], [ %indvars.iv.next7, %._crit_edge ]
  %17 = tail call i8* @save_calloc(i8* getelementptr inbounds ([11 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str1, i64 0, i64 0), i32 55, i32 %ny, i32 8) #6
  %18 = load float**** %10, align 8, !tbaa !18
  %19 = getelementptr inbounds float*** %18, i64 %indvars.iv6
  %20 = bitcast float*** %19 to i8**
  store i8* %17, i8** %20, align 8, !tbaa !19
  br i1 %13, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %16, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %16 ]
  %21 = tail call i8* @save_calloc(i8* getelementptr inbounds ([14 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str1, i64 0, i64 0), i32 57, i32 %nz, i32 4) #6
  %22 = load float**** %10, align 8, !tbaa !18
  %23 = getelementptr inbounds float*** %22, i64 %indvars.iv6
  %24 = load float*** %23, align 8, !tbaa !19
  %25 = getelementptr inbounds float** %24, i64 %indvars.iv
  %26 = bitcast float** %25 to i8**
  store i8* %21, i8** %26, align 8, !tbaa !19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %14
  br i1 %exitcond, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %16
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  %lftr.wideiv8 = trunc i64 %indvars.iv6 to i32
  %exitcond9 = icmp eq i32 %lftr.wideiv8, %15
  br i1 %exitcond9, label %._crit_edge5, label %16

._crit_edge5:                                     ; preds = %._crit_edge, %0
  ret %struct.t_PSgrid* %2
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @unpack_PSgrid(%struct.t_PSgrid* nocapture readonly %grid, i32* nocapture %nx, i32* nocapture %ny, i32* nocapture %nz, float**** nocapture %ptr) #3 {
  %1 = getelementptr inbounds %struct.t_PSgrid* %grid, i64 0, i32 0
  %2 = load i32* %1, align 4, !tbaa !14
  store i32 %2, i32* %nx, align 4, !tbaa !20
  %3 = getelementptr inbounds %struct.t_PSgrid* %grid, i64 0, i32 1
  %4 = load i32* %3, align 4, !tbaa !16
  store i32 %4, i32* %ny, align 4, !tbaa !20
  %5 = getelementptr inbounds %struct.t_PSgrid* %grid, i64 0, i32 2
  %6 = load i32* %5, align 4, !tbaa !17
  store i32 %6, i32* %nz, align 4, !tbaa !20
  %7 = getelementptr inbounds %struct.t_PSgrid* %grid, i64 0, i32 3
  %8 = bitcast float**** %7 to i64*
  %9 = load i64* %8, align 8, !tbaa !18
  %10 = bitcast float**** %ptr to i64*
  store i64 %9, i64* %10, align 8, !tbaa !19
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @copy_PSgrid(%struct.t_PSgrid* nocapture readonly %dest, %struct.t_PSgrid* nocapture readonly %src) #3 {
  %1 = getelementptr inbounds %struct.t_PSgrid* %src, i64 0, i32 0
  %2 = load i32* %1, align 4, !tbaa !14
  %3 = getelementptr inbounds %struct.t_PSgrid* %src, i64 0, i32 1
  %4 = load i32* %3, align 4, !tbaa !16
  %5 = getelementptr inbounds %struct.t_PSgrid* %src, i64 0, i32 2
  %6 = load i32* %5, align 4, !tbaa !17
  %7 = icmp sgt i32 %2, 0
  br i1 %7, label %.preheader1.lr.ph, label %._crit_edge6

.preheader1.lr.ph:                                ; preds = %0
  %8 = getelementptr inbounds %struct.t_PSgrid* %src, i64 0, i32 3
  %9 = bitcast float**** %8 to i64*
  %10 = load i64* %9, align 8, !tbaa !18
  %11 = getelementptr inbounds %struct.t_PSgrid* %dest, i64 0, i32 3
  %12 = bitcast float**** %11 to i64*
  %13 = load i64* %12, align 8, !tbaa !18
  %14 = icmp sgt i32 %4, 0
  %15 = icmp sgt i32 %6, 0
  %16 = inttoptr i64 %10 to float***
  %17 = inttoptr i64 %13 to float***
  %18 = add i32 %6, -1
  %19 = add i32 %4, -1
  %20 = add i32 %2, -1
  br label %.preheader1

.preheader1:                                      ; preds = %._crit_edge4, %.preheader1.lr.ph
  %indvars.iv11 = phi i64 [ 0, %.preheader1.lr.ph ], [ %indvars.iv.next12, %._crit_edge4 ]
  br i1 %14, label %.preheader.lr.ph, label %._crit_edge4

.preheader.lr.ph:                                 ; preds = %.preheader1
  %21 = getelementptr inbounds float*** %16, i64 %indvars.iv11
  %22 = getelementptr inbounds float*** %17, i64 %indvars.iv11
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge, %.preheader.lr.ph
  %indvars.iv7 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next8, %._crit_edge ]
  br i1 %15, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %23 = load float*** %21, align 8, !tbaa !19
  %24 = getelementptr inbounds float** %23, i64 %indvars.iv7
  %25 = load float** %24, align 8, !tbaa !19
  %26 = load float*** %22, align 8, !tbaa !19
  %27 = getelementptr inbounds float** %26, i64 %indvars.iv7
  %28 = load float** %27, align 8, !tbaa !19
  br label %29

; <label>:29                                      ; preds = %29, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %29 ]
  %30 = getelementptr inbounds float* %25, i64 %indvars.iv
  %31 = bitcast float* %30 to i32*
  %32 = load i32* %31, align 4, !tbaa !21
  %33 = getelementptr inbounds float* %28, i64 %indvars.iv
  %34 = bitcast float* %33 to i32*
  store i32 %32, i32* %34, align 4, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %18
  br i1 %exitcond, label %._crit_edge, label %29

._crit_edge:                                      ; preds = %29, %.preheader
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  %lftr.wideiv9 = trunc i64 %indvars.iv7 to i32
  %exitcond10 = icmp eq i32 %lftr.wideiv9, %19
  br i1 %exitcond10, label %._crit_edge4, label %.preheader

._crit_edge4:                                     ; preds = %._crit_edge, %.preheader1
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  %lftr.wideiv13 = trunc i64 %indvars.iv11 to i32
  %exitcond14 = icmp eq i32 %lftr.wideiv13, %20
  br i1 %exitcond14, label %._crit_edge6, label %.preheader1

._crit_edge6:                                     ; preds = %._crit_edge4, %0
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @clear_PSgrid(%struct.t_PSgrid* nocapture readonly %grid) #3 {
  %1 = getelementptr inbounds %struct.t_PSgrid* %grid, i64 0, i32 0
  %2 = load i32* %1, align 4, !tbaa !14
  %3 = getelementptr inbounds %struct.t_PSgrid* %grid, i64 0, i32 1
  %4 = load i32* %3, align 4, !tbaa !16
  %5 = getelementptr inbounds %struct.t_PSgrid* %grid, i64 0, i32 2
  %6 = load i32* %5, align 4, !tbaa !17
  %7 = icmp sgt i32 %2, 0
  br i1 %7, label %.preheader1.lr.ph, label %._crit_edge6

.preheader1.lr.ph:                                ; preds = %0
  %8 = getelementptr inbounds %struct.t_PSgrid* %grid, i64 0, i32 3
  %9 = bitcast float**** %8 to i64*
  %10 = load i64* %9, align 8, !tbaa !18
  %11 = icmp sgt i32 %4, 0
  %12 = icmp sgt i32 %6, 0
  %13 = inttoptr i64 %10 to float***
  %14 = add i32 %6, -1
  %15 = zext i32 %14 to i64
  %16 = shl nuw nsw i64 %15, 2
  %17 = add nuw nsw i64 %16, 4
  %18 = add i32 %4, -1
  %19 = add i32 %2, -1
  br label %.preheader1

.preheader1:                                      ; preds = %._crit_edge4, %.preheader1.lr.ph
  %indvars.iv7 = phi i64 [ 0, %.preheader1.lr.ph ], [ %indvars.iv.next8, %._crit_edge4 ]
  br i1 %11, label %.preheader.lr.ph, label %._crit_edge4

.preheader.lr.ph:                                 ; preds = %.preheader1
  %20 = getelementptr inbounds float*** %13, i64 %indvars.iv7
  br label %.preheader

.preheader:                                       ; preds = %25, %.preheader.lr.ph
  %indvars.iv = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next, %25 ]
  br i1 %12, label %.lr.ph, label %25

.lr.ph:                                           ; preds = %.preheader
  %21 = load float*** %20, align 8, !tbaa !19
  %22 = getelementptr inbounds float** %21, i64 %indvars.iv
  %23 = bitcast float** %22 to i8**
  %24 = load i8** %23, align 8, !tbaa !19
  call void @llvm.memset.p0i8.i64(i8* %24, i8 0, i64 %17, i32 4, i1 false)
  br label %25

; <label>:25                                      ; preds = %.lr.ph, %.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %18
  br i1 %exitcond, label %._crit_edge4, label %.preheader

._crit_edge4:                                     ; preds = %25, %.preheader1
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  %lftr.wideiv9 = trunc i64 %indvars.iv7 to i32
  %exitcond10 = icmp eq i32 %lftr.wideiv9, %19
  br i1 %exitcond10, label %._crit_edge6, label %.preheader1

._crit_edge6:                                     ; preds = %._crit_edge4, %0
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @symmetrize_PSgrid(%struct.__sFILE* %fp, %struct.t_PSgrid* nocapture readonly %grid, float %sum) #3 {
  %1 = getelementptr inbounds %struct.t_PSgrid* %grid, i64 0, i32 0
  %2 = load i32* %1, align 4, !tbaa !14
  %3 = getelementptr inbounds %struct.t_PSgrid* %grid, i64 0, i32 1
  %4 = load i32* %3, align 4, !tbaa !16
  %5 = getelementptr inbounds %struct.t_PSgrid* %grid, i64 0, i32 2
  %6 = load i32* %5, align 4, !tbaa !17
  %7 = getelementptr inbounds %struct.t_PSgrid* %grid, i64 0, i32 3
  %8 = bitcast float**** %7 to i64*
  %9 = load i64* %8, align 8, !tbaa !18
  %fabsf = tail call float @fabsf(float %sum) #7
  %10 = fpext float %fabsf to double
  %11 = fcmp olt double %10, 1.200000e-38
  br i1 %11, label %12, label %.loopexit

; <label>:12                                      ; preds = %0
  %13 = inttoptr i64 %9 to float***
  %14 = load float*** %13, align 8, !tbaa !19
  %15 = load float** %14, align 8, !tbaa !19
  %16 = load float* %15, align 4, !tbaa !21
  %17 = icmp sgt i32 %2, 0
  br i1 %17, label %.preheader3.lr.ph, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %12
  %18 = mul nsw i32 %4, %2
  %19 = mul nsw i32 %18, %6
  %20 = sitofp i32 %19 to float
  %21 = fdiv float 0.000000e+00, %20
  br label %._crit_edge8

.preheader3.lr.ph:                                ; preds = %12
  %22 = icmp sgt i32 %4, 0
  %23 = icmp sgt i32 %6, 0
  %24 = add i32 %6, -1
  %25 = add i32 %4, -1
  %26 = add i32 %2, -1
  br label %.preheader3

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
  br i1 %22, label %.preheader2.lr.ph, label %._crit_edge40

.preheader2.lr.ph:                                ; preds = %.preheader3
  %27 = getelementptr inbounds float*** %13, i64 %indvars.iv86
  br label %.preheader2

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
  br i1 %23, label %.lr.ph19, label %.preheader2._crit_edge

.preheader2._crit_edge:                           ; preds = %.preheader2
  %.pre = trunc i64 %indvars.iv82 to i32
  br label %._crit_edge20

.lr.ph19:                                         ; preds = %.preheader2
  %28 = load float*** %27, align 8, !tbaa !19
  %29 = getelementptr inbounds float** %28, i64 %indvars.iv82
  %30 = load float** %29, align 8, !tbaa !19
  br label %31

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
  %32 = getelementptr inbounds float* %30, i64 %indvars.iv78
  %33 = load float* %32, align 4, !tbaa !21
  %34 = fadd float %.29, %33
  %35 = fcmp olt float %33, %ming.211
  %36 = trunc i64 %indvars.iv78 to i32
  %37 = trunc i64 %indvars.iv82 to i32
  %38 = trunc i64 %indvars.iv86 to i32
  br i1 %35, label %42, label %39

; <label>:39                                      ; preds = %31
  %40 = fcmp ogt float %33, %maxg.212
  br i1 %40, label %41, label %42

; <label>:41                                      ; preds = %39
  br label %42

; <label>:42                                      ; preds = %31, %41, %39
  %ming.3 = phi float [ %ming.211, %41 ], [ %ming.211, %39 ], [ %33, %31 ]
  %maxg.3 = phi float [ %33, %41 ], [ %maxg.212, %39 ], [ %maxg.212, %31 ]
  %imin.sroa.5.3 = phi i32 [ %imin.sroa.5.213, %41 ], [ %imin.sroa.5.213, %39 ], [ %36, %31 ]
  %imin.sroa.3.3 = phi i32 [ %imin.sroa.3.214, %41 ], [ %imin.sroa.3.214, %39 ], [ %37, %31 ]
  %imin.sroa.0.3 = phi i32 [ %imin.sroa.0.215, %41 ], [ %imin.sroa.0.215, %39 ], [ %38, %31 ]
  %imax.sroa.5.3 = phi i32 [ %36, %41 ], [ %imax.sroa.5.216, %39 ], [ %imax.sroa.5.216, %31 ]
  %imax.sroa.3.3 = phi i32 [ %37, %41 ], [ %imax.sroa.3.217, %39 ], [ %imax.sroa.3.217, %31 ]
  %imax.sroa.0.3 = phi i32 [ %38, %41 ], [ %imax.sroa.0.218, %39 ], [ %imax.sroa.0.218, %31 ]
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1
  %exitcond81 = icmp eq i32 %36, %24
  br i1 %exitcond81, label %._crit_edge20, label %31

._crit_edge20:                                    ; preds = %42, %.preheader2._crit_edge
  %lftr.wideiv84.pre-phi = phi i32 [ %.pre, %.preheader2._crit_edge ], [ %37, %42 ]
  %imax.sroa.0.2.lcssa = phi i32 [ %imax.sroa.0.139, %.preheader2._crit_edge ], [ %imax.sroa.0.3, %42 ]
  %imax.sroa.3.2.lcssa = phi i32 [ %imax.sroa.3.138, %.preheader2._crit_edge ], [ %imax.sroa.3.3, %42 ]
  %imax.sroa.5.2.lcssa = phi i32 [ %imax.sroa.5.137, %.preheader2._crit_edge ], [ %imax.sroa.5.3, %42 ]
  %imin.sroa.0.2.lcssa = phi i32 [ %imin.sroa.0.136, %.preheader2._crit_edge ], [ %imin.sroa.0.3, %42 ]
  %imin.sroa.3.2.lcssa = phi i32 [ %imin.sroa.3.135, %.preheader2._crit_edge ], [ %imin.sroa.3.3, %42 ]
  %imin.sroa.5.2.lcssa = phi i32 [ %imin.sroa.5.134, %.preheader2._crit_edge ], [ %imin.sroa.5.3, %42 ]
  %maxg.2.lcssa = phi float [ %maxg.133, %.preheader2._crit_edge ], [ %maxg.3, %42 ]
  %ming.2.lcssa = phi float [ %ming.132, %.preheader2._crit_edge ], [ %ming.3, %42 ]
  %.2.lcssa = phi float [ %.129, %.preheader2._crit_edge ], [ %34, %42 ]
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1
  %exitcond85 = icmp eq i32 %lftr.wideiv84.pre-phi, %25
  br i1 %exitcond85, label %._crit_edge40, label %.preheader2

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
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1
  %lftr.wideiv88 = trunc i64 %indvars.iv86 to i32
  %exitcond89 = icmp eq i32 %lftr.wideiv88, %26
  br i1 %exitcond89, label %.loopexit, label %.preheader3

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
  %43 = mul nsw i32 %4, %2
  %44 = mul nsw i32 %43, %6
  %45 = sitofp i32 %44 to float
  %46 = fdiv float %.3, %45
  %47 = icmp sgt i32 %2, 0
  br i1 %47, label %.preheader1.lr.ph, label %._crit_edge8

.preheader1.lr.ph:                                ; preds = %.loopexit
  %48 = icmp sgt i32 %4, 0
  %49 = icmp sgt i32 %6, 0
  %50 = inttoptr i64 %9 to float***
  %51 = add i32 %6, -1
  %52 = add i32 %4, -1
  %53 = add i32 %2, -1
  br label %.preheader1

.preheader1:                                      ; preds = %._crit_edge6, %.preheader1.lr.ph
  %indvars.iv74 = phi i64 [ 0, %.preheader1.lr.ph ], [ %indvars.iv.next75, %._crit_edge6 ]
  br i1 %48, label %.preheader.lr.ph, label %._crit_edge6

.preheader.lr.ph:                                 ; preds = %.preheader1
  %54 = getelementptr inbounds float*** %50, i64 %indvars.iv74
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge, %.preheader.lr.ph
  %indvars.iv70 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next71, %._crit_edge ]
  br i1 %49, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %55 = load float*** %54, align 8, !tbaa !19
  %56 = getelementptr inbounds float** %55, i64 %indvars.iv70
  %57 = load float** %56, align 8, !tbaa !19
  br label %58

; <label>:58                                      ; preds = %58, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %58 ]
  %59 = getelementptr inbounds float* %57, i64 %indvars.iv
  %60 = load float* %59, align 4, !tbaa !21
  %61 = fsub float %60, %46
  store float %61, float* %59, align 4, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %51
  br i1 %exitcond, label %._crit_edge, label %58

._crit_edge:                                      ; preds = %58, %.preheader
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1
  %lftr.wideiv72 = trunc i64 %indvars.iv70 to i32
  %exitcond73 = icmp eq i32 %lftr.wideiv72, %52
  br i1 %exitcond73, label %._crit_edge6, label %.preheader

._crit_edge6:                                     ; preds = %._crit_edge, %.preheader1
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  %lftr.wideiv76 = trunc i64 %indvars.iv74 to i32
  %exitcond77 = icmp eq i32 %lftr.wideiv76, %53
  br i1 %exitcond77, label %._crit_edge8, label %.preheader1

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
  %63 = icmp eq %struct.__sFILE* %fp, null
  br i1 %63, label %69, label %64

; <label>:64                                      ; preds = %._crit_edge8
  %65 = fpext float %62 to double
  %66 = fpext float %ming.490 to double
  %67 = fpext float %maxg.491 to double
  %68 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([71 x i8]* @.str5, i64 0, i64 0), double %65, double %66, i32 %imin.sroa.0.494, i32 %imin.sroa.3.493, i32 %imin.sroa.5.492, double %67, i32 %imax.sroa.0.497, i32 %imax.sroa.3.496, i32 %imax.sroa.5.495) #6
  br label %69

; <label>:69                                      ; preds = %._crit_edge8, %64
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #4

; Function Attrs: nounwind optsize ssp uwtable
define void @calc_nxyz(i32 %nx, i32 %ny, i32 %nz, i32** nocapture %nnx, i32** nocapture %nny, i32** nocapture %nnz) #3 {
  %1 = mul nsw i32 %nx, 3
  %2 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str1, i64 0, i64 0), i32 148, i32 %1, i32 4) #6
  %3 = bitcast i32** %nnx to i8**
  store i8* %2, i8** %3, align 8, !tbaa !19
  %4 = mul nsw i32 %ny, 3
  %5 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str1, i64 0, i64 0), i32 149, i32 %4, i32 4) #6
  %6 = bitcast i32** %nny to i8**
  store i8* %5, i8** %6, align 8, !tbaa !19
  %7 = mul nsw i32 %nz, 3
  %8 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str1, i64 0, i64 0), i32 150, i32 %7, i32 4) #6
  %9 = bitcast i32** %nnz to i8**
  store i8* %8, i8** %9, align 8, !tbaa !19
  %10 = icmp sgt i32 %nx, 0
  %11 = bitcast i8* %8 to i32*
  br i1 %10, label %.lr.ph7, label %.preheader1

.lr.ph7:                                          ; preds = %0
  %12 = load i32** %nnx, align 8, !tbaa !19
  %13 = sext i32 %1 to i64
  br label %17

.preheader1:                                      ; preds = %17, %0
  %14 = icmp sgt i32 %ny, 0
  br i1 %14, label %.lr.ph4, label %.preheader

.lr.ph4:                                          ; preds = %.preheader1
  %15 = load i32** %nny, align 8, !tbaa !19
  %16 = sext i32 %4 to i64
  br label %24

; <label>:17                                      ; preds = %.lr.ph7, %17
  %indvars.iv10 = phi i64 [ 0, %.lr.ph7 ], [ %indvars.iv.next11, %17 ]
  %18 = trunc i64 %indvars.iv10 to i32
  %19 = srem i32 %18, %nx
  %20 = getelementptr inbounds i32* %12, i64 %indvars.iv10
  store i32 %19, i32* %20, align 4, !tbaa !20
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  %21 = icmp slt i64 %indvars.iv.next11, %13
  br i1 %21, label %17, label %.preheader1

.preheader:                                       ; preds = %24, %.preheader1
  %22 = icmp sgt i32 %nz, 0
  br i1 %22, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %23 = sext i32 %7 to i64
  br label %29

; <label>:24                                      ; preds = %.lr.ph4, %24
  %indvars.iv8 = phi i64 [ 0, %.lr.ph4 ], [ %indvars.iv.next9, %24 ]
  %25 = trunc i64 %indvars.iv8 to i32
  %26 = srem i32 %25, %ny
  %27 = getelementptr inbounds i32* %15, i64 %indvars.iv8
  store i32 %26, i32* %27, align 4, !tbaa !20
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1
  %28 = icmp slt i64 %indvars.iv.next9, %16
  br i1 %28, label %24, label %.preheader

; <label>:29                                      ; preds = %.lr.ph, %29
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %29 ]
  %30 = trunc i64 %indvars.iv to i32
  %31 = srem i32 %30, %nz
  %32 = getelementptr inbounds i32* %11, i64 %indvars.iv
  store i32 %31, i32* %32, align 4, !tbaa !20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %33 = icmp slt i64 %indvars.iv.next, %23
  br i1 %33, label %29, label %._crit_edge

._crit_edge:                                      ; preds = %29, %.preheader
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define float @do_poisson(%struct.__sFILE* %log, i32 %bVerbose, %struct.t_inputrec* nocapture readonly %ir, i32 %natoms, [3 x float]* %x, [3 x float]* %f, float* %charge, float* %box, float* %phi, %struct.t_commrec* nocapture readnone %cr, %struct.t_nrnb* %nrnb, i32* nocapture %nit, i32 %bOld) #3 {
  %.b1 = load i1* @do_poisson.bFirst, align 1
  br i1 %.b1, label %._crit_edge, label %1

._crit_edge:                                      ; preds = %0
  %.pre5 = load %struct.t_PSgrid** @do_poisson.rho, align 8, !tbaa !19
  br label %35

; <label>:1                                       ; preds = %0
  %2 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 72
  %3 = load i32* %2, align 4, !tbaa !23
  store i32 %3, i32* @do_poisson.maxnit, align 4, !tbaa !20
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([55 x i8]* @.str9, i64 0, i64 0), i64 54, i64 1, %struct.__sFILE* %log)
  %5 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 17
  %6 = load i32* %5, align 4, !tbaa !26
  %7 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 18
  %8 = load i32* %7, align 4, !tbaa !27
  %9 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 19
  %10 = load i32* %9, align 4, !tbaa !28
  %11 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([27 x i8]* @.str10, i64 0, i64 0), i32 %6, i32 %8, i32 %10) #6
  %12 = load i32* %5, align 4, !tbaa !26
  %13 = icmp slt i32 %12, 4
  br i1 %13, label %20, label %14

; <label>:14                                      ; preds = %1
  %15 = load i32* %7, align 4, !tbaa !27
  %16 = icmp slt i32 %15, 4
  br i1 %16, label %20, label %17

; <label>:17                                      ; preds = %14
  %18 = load i32* %9, align 4, !tbaa !28
  %19 = icmp slt i32 %18, 4
  br i1 %19, label %20, label %.loopexit

; <label>:20                                      ; preds = %17, %14, %1
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([49 x i8]* @.str11, i64 0, i64 0)) #6
  %.pre = load i32* %5, align 4, !tbaa !26
  %.pre3 = load i32* %7, align 4, !tbaa !27
  %.pre4 = load i32* %9, align 4, !tbaa !28
  br label %.loopexit

.loopexit:                                        ; preds = %20, %17
  %21 = phi i32 [ %.pre4, %20 ], [ %18, %17 ]
  %22 = phi i32 [ %.pre3, %20 ], [ %15, %17 ]
  %23 = phi i32 [ %.pre, %20 ], [ %12, %17 ]
  %24 = tail call %struct.t_PSgrid* @mk_PSgrid(i32 %23, i32 %22, i32 %21) #8
  store %struct.t_PSgrid* %24, %struct.t_PSgrid** @do_poisson.pot, align 8, !tbaa !19
  %25 = load i32* %5, align 4, !tbaa !26
  %26 = load i32* %7, align 4, !tbaa !27
  %27 = load i32* %9, align 4, !tbaa !28
  %28 = tail call %struct.t_PSgrid* @mk_PSgrid(i32 %25, i32 %26, i32 %27) #8
  store %struct.t_PSgrid* %28, %struct.t_PSgrid** @do_poisson.rho, align 8, !tbaa !19
  %29 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 37
  %30 = bitcast float* %29 to i32*
  %31 = load i32* %30, align 4, !tbaa !29
  store i32 %31, i32* bitcast (float* @do_poisson.r1 to i32*), align 4, !tbaa !21
  %32 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 38
  %33 = bitcast float* %32 to i32*
  %34 = load i32* %33, align 4, !tbaa !30
  store i32 %34, i32* bitcast (float* @do_poisson.rc to i32*), align 4, !tbaa !21
  call void @memset_pattern16(i8* bitcast ([3 x float]* @do_poisson.beta to i8*), i8* bitcast ([4 x float]* @.memset_pattern to i8*), i64 12) #5
  br label %35

; <label>:35                                      ; preds = %._crit_edge, %.loopexit
  %36 = phi %struct.t_PSgrid* [ %.pre5, %._crit_edge ], [ %28, %.loopexit ]
  tail call void @clear_PSgrid(%struct.t_PSgrid* %36) #8
  %37 = load float* @do_poisson.rc, align 4, !tbaa !21
  %38 = load %struct.t_PSgrid** @do_poisson.rho, align 8, !tbaa !19
  %39 = load float* @do_poisson.r1, align 4, !tbaa !21
  tail call void @spread_q_poisson(%struct.__sFILE* %log, i32 %bVerbose, i32 1, i32 %natoms, [3 x float]* %x, float* %charge, float* %box, float %37, %struct.t_PSgrid* %38, %struct.t_nrnb* %nrnb, i32 %bOld, float %39) #6
  %40 = load %struct.__sFILE** @debug, align 8, !tbaa !19
  %41 = load %struct.t_PSgrid** @do_poisson.rho, align 8, !tbaa !19
  tail call void @symmetrize_PSgrid(%struct.__sFILE* %40, %struct.t_PSgrid* %41, float 0.000000e+00) #8
  %.b = load i1* @do_poisson.bFirst, align 1
  br i1 %.b, label %45, label %42

; <label>:42                                      ; preds = %35
  %43 = load %struct.t_PSgrid** @do_poisson.pot, align 8, !tbaa !19
  %44 = load %struct.t_PSgrid** @do_poisson.rho, align 8, !tbaa !19
  tail call void @copy_PSgrid(%struct.t_PSgrid* %43, %struct.t_PSgrid* %44) #8
  br label %45

; <label>:45                                      ; preds = %35, %42
  %46 = load %struct.t_PSgrid** @do_poisson.pot, align 8, !tbaa !19
  %47 = load %struct.t_PSgrid** @do_poisson.rho, align 8, !tbaa !19
  %48 = load i32* @do_poisson.maxnit, align 4, !tbaa !20
  %49 = tail call i32 @solve_poisson(%struct.__sFILE* %log, %struct.t_PSgrid* %46, %struct.t_PSgrid* %47, i32 %bVerbose, %struct.t_nrnb* %nrnb, i32 %48, float 0x3F847AE140000000, float* %box) #6
  store i32 %49, i32* %nit, align 4, !tbaa !20
  %50 = load %struct.__sFILE** @debug, align 8, !tbaa !19
  %51 = load %struct.t_PSgrid** @do_poisson.pot, align 8, !tbaa !19
  tail call void @symmetrize_PSgrid(%struct.__sFILE* %50, %struct.t_PSgrid* %51, float 0.000000e+00) #8
  %52 = load %struct.t_PSgrid** @do_poisson.pot, align 8, !tbaa !19
  %53 = tail call float @ps_gather_f(%struct.__sFILE* %log, i32 %bVerbose, i32 %natoms, [3 x float]* %x, [3 x float]* %f, float* %charge, float* %box, float* %phi, %struct.t_PSgrid* %52, float* getelementptr inbounds ([3 x float]* @do_poisson.beta, i64 0, i64 0), %struct.t_nrnb* %nrnb) #6
  store i1 true, i1* @do_poisson.bFirst, align 1
  ret float %53
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: optsize
declare void @spread_q_poisson(%struct.__sFILE*, i32, i32, i32, [3 x float]*, float*, float*, float, %struct.t_PSgrid*, %struct.t_nrnb*, i32, float) #1

; Function Attrs: optsize
declare i32 @solve_poisson(%struct.__sFILE*, %struct.t_PSgrid*, %struct.t_PSgrid*, i32, %struct.t_nrnb*, i32, float, float*) #1

; Function Attrs: optsize
declare float @ps_gather_f(%struct.__sFILE*, i32, i32, [3 x float]*, [3 x float]*, float*, float*, float*, %struct.t_PSgrid*, float*, %struct.t_nrnb*) #1

; Function Attrs: nounwind optsize ssp uwtable
define float @do_optimize_poisson(%struct.__sFILE* %log, i32 %bVerbose, %struct.t_inputrec* nocapture readonly %ir, i32 %natoms, [3 x float]* %x, [3 x float]* %f, float* %charge, float* %box, float* %phi, %struct.t_commrec* nocapture readnone %cr, %struct.t_nrnb* %nrnb, [3 x float]* %f_ref, float* %phi_ref, float* %beta, i32 %bOld) #3 {
  %beta52 = bitcast float* %beta to i8*
  %rmsf = alloca [21 x [21 x [21 x float]]], align 16
  %buf = alloca [128 x i8], align 16
  %1 = bitcast [21 x [21 x [21 x float]]]* %rmsf to i8*
  call void @llvm.lifetime.start(i64 37044, i8* %1) #5
  %2 = getelementptr inbounds [128 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 128, i8* %2) #5
  %.b = load i1* @do_optimize_poisson.bFirst, align 1
  br i1 %.b, label %._crit_edge55, label %3

._crit_edge55:                                    ; preds = %0
  %.pre56 = load %struct.t_PSgrid** @do_optimize_poisson.rho, align 8, !tbaa !19
  br label %38

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 72
  %5 = load i32* %4, align 4, !tbaa !23
  store i32 %5, i32* @do_optimize_poisson.maxnit, align 4, !tbaa !20
  %6 = tail call i64 @fwrite(i8* getelementptr inbounds ([55 x i8]* @.str9, i64 0, i64 0), i64 54, i64 1, %struct.__sFILE* %log)
  %7 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 17
  %8 = load i32* %7, align 4, !tbaa !26
  %9 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 18
  %10 = load i32* %9, align 4, !tbaa !27
  %11 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 19
  %12 = load i32* %11, align 4, !tbaa !28
  %13 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([27 x i8]* @.str10, i64 0, i64 0), i32 %8, i32 %10, i32 %12) #6
  %14 = load i32* %7, align 4, !tbaa !26
  %15 = icmp slt i32 %14, 4
  br i1 %15, label %22, label %16

; <label>:16                                      ; preds = %3
  %17 = load i32* %9, align 4, !tbaa !27
  %18 = icmp slt i32 %17, 4
  br i1 %18, label %22, label %19

; <label>:19                                      ; preds = %16
  %20 = load i32* %11, align 4, !tbaa !28
  %21 = icmp slt i32 %20, 4
  br i1 %21, label %22, label %23

; <label>:22                                      ; preds = %19, %16, %3
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([49 x i8]* @.str11, i64 0, i64 0)) #6
  %.pre = load i32* %7, align 4, !tbaa !26
  %.pre53 = load i32* %9, align 4, !tbaa !27
  %.pre54 = load i32* %11, align 4, !tbaa !28
  br label %23

; <label>:23                                      ; preds = %22, %19
  %24 = phi i32 [ %.pre54, %22 ], [ %20, %19 ]
  %25 = phi i32 [ %.pre53, %22 ], [ %17, %19 ]
  %26 = phi i32 [ %.pre, %22 ], [ %14, %19 ]
  %27 = tail call %struct.t_PSgrid* @mk_PSgrid(i32 %26, i32 %25, i32 %24) #8
  store %struct.t_PSgrid* %27, %struct.t_PSgrid** @do_optimize_poisson.pot, align 8, !tbaa !19
  %28 = load i32* %7, align 4, !tbaa !26
  %29 = load i32* %9, align 4, !tbaa !27
  %30 = load i32* %11, align 4, !tbaa !28
  %31 = tail call %struct.t_PSgrid* @mk_PSgrid(i32 %28, i32 %29, i32 %30) #8
  store %struct.t_PSgrid* %31, %struct.t_PSgrid** @do_optimize_poisson.rho, align 8, !tbaa !19
  %32 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 37
  %33 = bitcast float* %32 to i32*
  %34 = load i32* %33, align 4, !tbaa !29
  store i32 %34, i32* bitcast (float* @do_optimize_poisson.r1 to i32*), align 4, !tbaa !21
  %35 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 38
  %36 = bitcast float* %35 to i32*
  %37 = load i32* %36, align 4, !tbaa !30
  store i32 %37, i32* bitcast (float* @do_optimize_poisson.rc to i32*), align 4, !tbaa !21
  call void @memset_pattern16(i8* %beta52, i8* bitcast ([4 x float]* @.memset_pattern15 to i8*), i64 12) #5
  store i1 true, i1* @do_optimize_poisson.bFirst, align 1
  br label %38

; <label>:38                                      ; preds = %._crit_edge55, %23
  %39 = phi %struct.t_PSgrid* [ %.pre56, %._crit_edge55 ], [ %31, %23 ]
  tail call void @clear_PSgrid(%struct.t_PSgrid* %39) #8
  %40 = load float* @do_optimize_poisson.rc, align 4, !tbaa !21
  %41 = load %struct.t_PSgrid** @do_optimize_poisson.rho, align 8, !tbaa !19
  %42 = load float* @do_optimize_poisson.r1, align 4, !tbaa !21
  tail call void @spread_q_poisson(%struct.__sFILE* %log, i32 %bVerbose, i32 1, i32 %natoms, [3 x float]* %x, float* %charge, float* %box, float %40, %struct.t_PSgrid* %41, %struct.t_nrnb* %nrnb, i32 %bOld, float %42) #6
  %43 = load %struct.t_PSgrid** @do_optimize_poisson.rho, align 8, !tbaa !19
  tail call void @symmetrize_PSgrid(%struct.__sFILE* %log, %struct.t_PSgrid* %43, float 0.000000e+00) #8
  %44 = load %struct.t_PSgrid** @do_optimize_poisson.pot, align 8, !tbaa !19
  %45 = load %struct.t_PSgrid** @do_optimize_poisson.rho, align 8, !tbaa !19
  tail call void @copy_PSgrid(%struct.t_PSgrid* %44, %struct.t_PSgrid* %45) #8
  %46 = load %struct.t_PSgrid** @do_optimize_poisson.pot, align 8, !tbaa !19
  %47 = load %struct.t_PSgrid** @do_optimize_poisson.rho, align 8, !tbaa !19
  %48 = load i32* @do_optimize_poisson.maxnit, align 4, !tbaa !20
  %49 = tail call i32 @solve_poisson(%struct.__sFILE* %log, %struct.t_PSgrid* %46, %struct.t_PSgrid* %47, i32 %bVerbose, %struct.t_nrnb* %nrnb, i32 %48, float 0x3F847AE140000000, float* %box) #6
  %50 = load %struct.t_PSgrid** @do_optimize_poisson.pot, align 8, !tbaa !19
  tail call void @symmetrize_PSgrid(%struct.__sFILE* %log, %struct.t_PSgrid* %50, float 0.000000e+00) #8
  %51 = getelementptr inbounds float* %beta, i64 1
  %52 = getelementptr inbounds float* %beta, i64 2
  %53 = icmp sgt i32 %natoms, 0
  %54 = add i32 %natoms, -1
  br label %55

; <label>:55                                      ; preds = %85, %38
  %indvars.iv46 = phi i64 [ 0, %38 ], [ %indvars.iv.next47, %85 ]
  %56 = trunc i64 %indvars.iv46 to i32
  %57 = sitofp i32 %56 to double
  %58 = fmul double %57, 2.500000e-02
  %59 = fadd double %58, 1.600000e+00
  %60 = fptrunc double %59 to float
  store float %60, float* %beta, align 4, !tbaa !21
  br label %61

; <label>:61                                      ; preds = %84, %55
  %indvars.iv43 = phi i64 [ 0, %55 ], [ %indvars.iv.next44, %84 ]
  %62 = trunc i64 %indvars.iv43 to i32
  %63 = sitofp i32 %62 to double
  %64 = fmul double %63, 2.500000e-02
  %65 = fadd double %64, 1.600000e+00
  %66 = fptrunc double %65 to float
  store float %66, float* %51, align 4, !tbaa !21
  br label %67

; <label>:67                                      ; preds = %._crit_edge20, %61
  %indvars.iv40 = phi i64 [ 0, %61 ], [ %indvars.iv.next41, %._crit_edge20 ]
  %68 = trunc i64 %indvars.iv40 to i32
  %69 = sitofp i32 %68 to double
  %70 = fmul double %69, 2.500000e-02
  %71 = fadd double %70, 1.600000e+00
  %72 = fptrunc double %71 to float
  store float %72, float* %52, align 4, !tbaa !21
  br i1 %53, label %.lr.ph19, label %._crit_edge20

.lr.ph19:                                         ; preds = %67, %.lr.ph19
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %.lr.ph19 ], [ 0, %67 ]
  %73 = getelementptr inbounds float* %phi, i64 %indvars.iv35
  store float 0.000000e+00, float* %73, align 4, !tbaa !21
  %74 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv35, i64 0
  store float 0.000000e+00, float* %74, align 4, !tbaa !21
  %75 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv35, i64 1
  store float 0.000000e+00, float* %75, align 4, !tbaa !21
  %76 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv35, i64 2
  store float 0.000000e+00, float* %76, align 4, !tbaa !21
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  %lftr.wideiv37 = trunc i64 %indvars.iv35 to i32
  %exitcond38 = icmp eq i32 %lftr.wideiv37, %54
  br i1 %exitcond38, label %._crit_edge20, label %.lr.ph19

._crit_edge20:                                    ; preds = %.lr.ph19, %67
  %77 = load %struct.t_PSgrid** @do_optimize_poisson.pot, align 8, !tbaa !19
  %78 = call float @ps_gather_f(%struct.__sFILE* %log, i32 %bVerbose, i32 %natoms, [3 x float]* %x, [3 x float]* %f, float* %charge, float* %box, float* %phi, %struct.t_PSgrid* %77, float* %beta, %struct.t_nrnb* %nrnb) #6
  %79 = load float* %beta, align 4, !tbaa !21
  %80 = fpext float %79 to double
  %81 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %2, i32 0, i64 128, i8* getelementptr inbounds ([20 x i8]* @.str12, i64 0, i64 0), double %80) #6
  %82 = call float @analyse_diff(%struct.__sFILE* %log, i8* %2, i32 %natoms, [3 x float]* %f_ref, [3 x float]* %f, float* %phi_ref, float* %phi, float* null, i8* null, i8* null, i8* null, i8* null) #6
  %83 = getelementptr inbounds [21 x [21 x [21 x float]]]* %rmsf, i64 0, i64 %indvars.iv46, i64 %indvars.iv43, i64 %indvars.iv40
  store float %82, float* %83, align 4, !tbaa !21
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  %exitcond42 = icmp eq i64 %indvars.iv.next41, 21
  br i1 %exitcond42, label %84, label %67

; <label>:84                                      ; preds = %._crit_edge20
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1
  %exitcond45 = icmp eq i64 %indvars.iv.next44, 21
  br i1 %exitcond45, label %85, label %61

; <label>:85                                      ; preds = %84
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  %exitcond48 = icmp eq i64 %indvars.iv.next47, 21
  br i1 %exitcond48, label %86, label %55

; <label>:86                                      ; preds = %85
  %87 = getelementptr inbounds [21 x [21 x [21 x float]]]* %rmsf, i64 0, i64 0, i64 0, i64 0
  %88 = load float* %87, align 16, !tbaa !21
  br label %89

; <label>:89                                      ; preds = %120, %86
  %indvars.iv32 = phi i64 [ 0, %86 ], [ %indvars.iv.next33, %120 ]
  %rmsf_min.016 = phi float [ %88, %86 ], [ %rmsf_min.3, %120 ]
  %minimum.sroa.6.014 = phi i32 [ 0, %86 ], [ %minimum.sroa.6.3, %120 ]
  %minimum.sroa.0.013 = phi i32 [ 0, %86 ], [ %minimum.sroa.0.3, %120 ]
  %minimum.sroa.3.012 = phi i32 [ 0, %86 ], [ %minimum.sroa.3.3, %120 ]
  %90 = trunc i64 %indvars.iv32 to i32
  %91 = sitofp i32 %90 to double
  %92 = fmul double %91, 2.500000e-02
  %93 = fadd double %92, 1.600000e+00
  %94 = fptrunc double %93 to float
  store float %94, float* %beta, align 4, !tbaa !21
  br label %95

; <label>:95                                      ; preds = %119, %89
  %indvars.iv29 = phi i64 [ 0, %89 ], [ %indvars.iv.next30, %119 ]
  %rmsf_min.111 = phi float [ %rmsf_min.016, %89 ], [ %rmsf_min.3, %119 ]
  %minimum.sroa.6.19 = phi i32 [ %minimum.sroa.6.014, %89 ], [ %minimum.sroa.6.3, %119 ]
  %minimum.sroa.0.18 = phi i32 [ %minimum.sroa.0.013, %89 ], [ %minimum.sroa.0.3, %119 ]
  %minimum.sroa.3.17 = phi i32 [ %minimum.sroa.3.012, %89 ], [ %minimum.sroa.3.3, %119 ]
  %96 = trunc i64 %indvars.iv29 to i32
  %97 = sitofp i32 %96 to double
  %98 = fmul double %97, 2.500000e-02
  %99 = fadd double %98, 1.600000e+00
  %100 = fptrunc double %99 to float
  store float %100, float* %51, align 4, !tbaa !21
  br label %101

; <label>:101                                     ; preds = %._crit_edge57, %95
  %102 = phi float [ %100, %95 ], [ %.pre58, %._crit_edge57 ]
  %indvars.iv26 = phi i64 [ 0, %95 ], [ %indvars.iv.next27, %._crit_edge57 ]
  %rmsf_min.26 = phi float [ %rmsf_min.111, %95 ], [ %rmsf_min.3, %._crit_edge57 ]
  %minimum.sroa.6.24 = phi i32 [ %minimum.sroa.6.19, %95 ], [ %minimum.sroa.6.3, %._crit_edge57 ]
  %minimum.sroa.0.23 = phi i32 [ %minimum.sroa.0.18, %95 ], [ %minimum.sroa.0.3, %._crit_edge57 ]
  %minimum.sroa.3.22 = phi i32 [ %minimum.sroa.3.17, %95 ], [ %minimum.sroa.3.3, %._crit_edge57 ]
  %103 = trunc i64 %indvars.iv26 to i32
  %104 = sitofp i32 %103 to double
  %105 = fmul double %104, 2.500000e-02
  %106 = fadd double %105, 1.600000e+00
  %107 = fptrunc double %106 to float
  store float %107, float* %52, align 4, !tbaa !21
  %108 = getelementptr inbounds [21 x [21 x [21 x float]]]* %rmsf, i64 0, i64 %indvars.iv32, i64 %indvars.iv29, i64 %indvars.iv26
  %109 = load float* %108, align 4, !tbaa !21
  %110 = load float* %beta, align 4, !tbaa !21
  %111 = fpext float %110 to double
  %112 = fpext float %102 to double
  %113 = fpext float %107 to double
  %114 = fpext float %109 to double
  %115 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([40 x i8]* @.str13, i64 0, i64 0), double %111, double %112, double %113, double %114) #6
  %116 = fcmp olt float %109, %rmsf_min.26
  br i1 %116, label %117, label %118

; <label>:117                                     ; preds = %101
  br label %118

; <label>:118                                     ; preds = %101, %117
  %minimum.sroa.3.3 = phi i32 [ %96, %117 ], [ %minimum.sroa.3.22, %101 ]
  %minimum.sroa.0.3 = phi i32 [ %90, %117 ], [ %minimum.sroa.0.23, %101 ]
  %minimum.sroa.6.3 = phi i32 [ %103, %117 ], [ %minimum.sroa.6.24, %101 ]
  %rmsf_min.3 = phi float [ %109, %117 ], [ %rmsf_min.26, %101 ]
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  %exitcond28 = icmp eq i64 %indvars.iv.next27, 21
  br i1 %exitcond28, label %119, label %._crit_edge57

._crit_edge57:                                    ; preds = %118
  %.pre58 = load float* %51, align 4, !tbaa !21
  br label %101

; <label>:119                                     ; preds = %118
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  %exitcond31 = icmp eq i64 %indvars.iv.next30, 21
  br i1 %exitcond31, label %120, label %95

; <label>:120                                     ; preds = %119
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  %exitcond34 = icmp eq i64 %indvars.iv.next33, 21
  br i1 %exitcond34, label %121, label %89

; <label>:121                                     ; preds = %120
  %122 = sitofp i32 %minimum.sroa.0.3 to double
  %123 = fmul double %122, 2.500000e-02
  %124 = fadd double %123, 1.600000e+00
  %125 = fptrunc double %124 to float
  store float %125, float* %beta, align 4, !tbaa !21
  %126 = sitofp i32 %minimum.sroa.3.3 to double
  %127 = fmul double %126, 2.500000e-02
  %128 = fadd double %127, 1.600000e+00
  %129 = fptrunc double %128 to float
  store float %129, float* %51, align 4, !tbaa !21
  %130 = sitofp i32 %minimum.sroa.6.3 to double
  %131 = fmul double %130, 2.500000e-02
  %132 = fadd double %131, 1.600000e+00
  %133 = fptrunc double %132 to float
  store float %133, float* %52, align 4, !tbaa !21
  %134 = fpext float %rmsf_min.3 to double
  %135 = fpext float %125 to double
  %136 = fpext float %129 to double
  %137 = fpext float %133 to double
  %138 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([50 x i8]* @.str14, i64 0, i64 0), double %134, double %135, double %136, double %137) #6
  br i1 %53, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %121, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %121 ]
  %139 = getelementptr inbounds float* %phi, i64 %indvars.iv
  store float 0.000000e+00, float* %139, align 4, !tbaa !21
  %140 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv, i64 0
  store float 0.000000e+00, float* %140, align 4, !tbaa !21
  %141 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv, i64 1
  store float 0.000000e+00, float* %141, align 4, !tbaa !21
  %142 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv, i64 2
  store float 0.000000e+00, float* %142, align 4, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %54
  br i1 %exitcond, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %121
  %143 = load %struct.t_PSgrid** @do_optimize_poisson.pot, align 8, !tbaa !19
  %144 = call float @ps_gather_f(%struct.__sFILE* %log, i32 %bVerbose, i32 %natoms, [3 x float]* %x, [3 x float]* %f, float* %charge, float* %box, float* %phi, %struct.t_PSgrid* %143, float* %beta, %struct.t_nrnb* %nrnb) #6
  call void @llvm.lifetime.end(i64 128, i8* %2) #5
  call void @llvm.lifetime.end(i64 37044, i8* %1) #5
  ret float %144
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #1

; Function Attrs: optsize
declare float @analyse_diff(%struct.__sFILE*, i8*, i32, [3 x float]*, [3 x float]*, float*, float*, float*, i8*, i8*, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

declare float @fabsf(float)

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

declare void @memset_pattern16(i8*, i8*, i64)

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !7, i64 12}
!3 = !{!"__sFILE", !4, i64 0, !7, i64 8, !7, i64 12, !8, i64 16, !8, i64 18, !9, i64 24, !7, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !9, i64 88, !4, i64 104, !7, i64 112, !5, i64 116, !5, i64 119, !9, i64 120, !7, i64 136, !10, i64 144}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"int", !5, i64 0}
!8 = !{!"short", !5, i64 0}
!9 = !{!"__sbuf", !4, i64 0, !7, i64 8}
!10 = !{!"long long", !5, i64 0}
!11 = !{!3, !7, i64 40}
!12 = !{!3, !4, i64 0}
!13 = !{!5, !5, i64 0}
!14 = !{!15, !7, i64 0}
!15 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !4, i64 16}
!16 = !{!15, !7, i64 4}
!17 = !{!15, !7, i64 8}
!18 = !{!15, !4, i64 16}
!19 = !{!4, !4, i64 0}
!20 = !{!7, !7, i64 0}
!21 = !{!22, !22, i64 0}
!22 = !{!"float", !5, i64 0}
!23 = !{!24, !7, i64 352}
!24 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !22, i64 56, !22, i64 60, !22, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !7, i64 80, !22, i64 84, !7, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !22, i64 120, !5, i64 124, !5, i64 160, !7, i64 196, !22, i64 200, !22, i64 204, !7, i64 208, !22, i64 212, !22, i64 216, !7, i64 220, !22, i64 224, !22, i64 228, !22, i64 232, !7, i64 236, !22, i64 240, !22, i64 244, !7, i64 248, !22, i64 252, !22, i64 256, !22, i64 260, !22, i64 264, !22, i64 268, !7, i64 272, !7, i64 276, !7, i64 280, !22, i64 284, !22, i64 288, !22, i64 292, !7, i64 296, !22, i64 300, !22, i64 304, !7, i64 308, !7, i64 312, !7, i64 316, !7, i64 320, !7, i64 324, !22, i64 328, !7, i64 332, !22, i64 336, !22, i64 340, !7, i64 344, !22, i64 348, !7, i64 352, !7, i64 356, !7, i64 360, !7, i64 364, !22, i64 368, !22, i64 372, !22, i64 376, !22, i64 380, !25, i64 384, !5, i64 448, !5, i64 520}
!25 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56}
!26 = !{!24, !7, i64 68}
!27 = !{!24, !7, i64 72}
!28 = !{!24, !7, i64 76}
!29 = !{!24, !22, i64 212}
!30 = !{!24, !22, i64 216}
