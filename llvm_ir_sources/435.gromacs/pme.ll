; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/pme.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_fftgrid = type { float*, float*, float*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }
%struct.t_nsborder = type { i32, i32, i32, i32, i32, i32, i32, [256 x i32], [256 x i32], [256 x i32], [256 x i32] }
%struct.t_fft_c = type { float, float }
%struct.t_inputrec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, float, [3 x [3 x float]], [3 x [3 x float]], i32, float, float, i32, float, float, i32, float, float, float, i32, float, float, i32, float, float, float, float, float, i32, i32, i32, float, float, float, i32, float, float, i32, i32, i32, i32, i32, float, i32, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, %struct.t_grpopts, [3 x %struct.t_cosines], [3 x %struct.t_cosines] }
%struct.t_grpopts = type { i32, i32, i32, i32, float*, float*, float*, [3 x float]*, [3 x i32]*, i32* }
%struct.t_cosines = type { i32, float*, float* }
%struct.t_nrnb = type { [129 x double] }

@stdlog = external global %struct.__sFILE*
@.str = private unnamed_addr constant [49 x i8] c"%s = %d should be in 0 .. %d [FILE %s, LINE %d]\0A\00", align 1
@.str1 = private unnamed_addr constant [48 x i8] c"Parallel grid summation requires MPI and FFTW.\0A\00", align 1
@.str2 = private unnamed_addr constant [44 x i8] c"Parallel PME attempted without MPI and FFTW\00", align 1
@.str3 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str4 = private unnamed_addr constant [63 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/pme.c\00", align 1
@.str5 = private unnamed_addr constant [6 x i8] c"ddata\00", align 1
@.str6 = private unnamed_addr constant [9 x i8] c"bsp_data\00", align 1
@.str7 = private unnamed_addr constant [58 x i8] c"PME used, but GROMACS was compiled without FFTW support!\0A\00", align 1
@.str8 = private unnamed_addr constant [38 x i8] c"Will do PME sum in reciprocal space.\0A\00", align 1
@.str9 = private unnamed_addr constant [10 x i8] c"Essman95a\00", align 1
@.str10 = private unnamed_addr constant [65 x i8] c"Using the Ewald3DC correction for systems with a slab geometry.\0A\00", align 1
@.str11 = private unnamed_addr constant [11 x i8] c"In-Chul99a\00", align 1
@.str12 = private unnamed_addr constant [28 x i8] c"Parallelized PME sum used.\0A\00", align 1
@.str13 = private unnamed_addr constant [69 x i8] c"Warning: For load balance, fourier_nx should be divisible by NNODES\0A\00", align 1
@.str14 = private unnamed_addr constant [12 x i8] c"bsp_mod[XX]\00", align 1
@bsp_mod = internal global [3 x float*] zeroinitializer, align 16
@.str15 = private unnamed_addr constant [12 x i8] c"bsp_mod[YY]\00", align 1
@.str16 = private unnamed_addr constant [12 x i8] c"bsp_mod[ZZ]\00", align 1
@.str17 = private unnamed_addr constant [9 x i8] c"theta[i]\00", align 1
@theta = internal global [3 x float*] zeroinitializer, align 16
@.str18 = private unnamed_addr constant [10 x i8] c"dtheta[i]\00", align 1
@dtheta = internal global [3 x float*] zeroinitializer, align 16
@.str19 = private unnamed_addr constant [7 x i8] c"fractx\00", align 1
@fractx = internal unnamed_addr global [3 x float]* null, align 8
@.str20 = private unnamed_addr constant [4 x i8] c"idx\00", align 1
@idx = internal unnamed_addr global [3 x i32]* null, align 8
@.str21 = private unnamed_addr constant [4 x i8] c"nnx\00", align 1
@nnx = internal unnamed_addr global i32* null, align 8
@.str22 = private unnamed_addr constant [4 x i8] c"nny\00", align 1
@nny = internal unnamed_addr global i32* null, align 8
@.str23 = private unnamed_addr constant [4 x i8] c"nnz\00", align 1
@nnz = internal unnamed_addr global i32* null, align 8
@grid = internal unnamed_addr global %struct.t_fftgrid* null, align 8
@recipbox = internal global [3 x [3 x float]] zeroinitializer, align 16
@do_pme.energy = internal unnamed_addr global float 0.000000e+00, align 4

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__sigbits(i32 %__signo) #0 {
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
define void @my_range_check(i8* %s, i32 %i, i32 %nr, i8* %file, i32 %line) #1 {
  %1 = icmp sgt i32 %i, -1
  %2 = icmp slt i32 %i, %nr
  %or.cond = and i1 %1, %2
  br i1 %or.cond, label %7, label %3

; <label>:3                                       ; preds = %0
  %4 = load %struct.__sFILE** @stdlog, align 8, !tbaa !2
  %5 = add nsw i32 %nr, -1
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([49 x i8]* @.str, i64 0, i64 0), i8* %s, i32 %i, i32 %5, i8* %file, i32 %line) #6
  br label %7

; <label>:7                                       ; preds = %0, %3
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @calc_recipbox([3 x float]* nocapture readonly %box, [3 x float]* nocapture %recipbox) #1 {
  %1 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %2 = load float* %1, align 4, !tbaa !6
  %3 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %4 = load float* %3, align 4, !tbaa !6
  %5 = fmul float %2, %4
  %6 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %7 = load float* %6, align 4, !tbaa !6
  %8 = fmul float %5, %7
  %9 = fdiv float 1.000000e+00, %8
  %10 = fmul float %4, %7
  %11 = fmul float %10, %9
  %12 = getelementptr inbounds [3 x float]* %recipbox, i64 0, i64 0
  store float %11, float* %12, align 4, !tbaa !6
  %13 = getelementptr inbounds [3 x float]* %recipbox, i64 0, i64 1
  store float 0.000000e+00, float* %13, align 4, !tbaa !6
  %14 = getelementptr inbounds [3 x float]* %recipbox, i64 0, i64 2
  store float 0.000000e+00, float* %14, align 4, !tbaa !6
  %15 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %16 = load float* %15, align 4, !tbaa !6
  %17 = load float* %6, align 4, !tbaa !6
  %18 = fmul float %16, %17
  %19 = fmul float %9, %18
  %20 = fsub float -0.000000e+00, %19
  %21 = getelementptr inbounds [3 x float]* %recipbox, i64 1, i64 0
  store float %20, float* %21, align 4, !tbaa !6
  %22 = load float* %1, align 4, !tbaa !6
  %23 = load float* %6, align 4, !tbaa !6
  %24 = fmul float %22, %23
  %25 = fmul float %9, %24
  %26 = getelementptr inbounds [3 x float]* %recipbox, i64 1, i64 1
  store float %25, float* %26, align 4, !tbaa !6
  %27 = getelementptr inbounds [3 x float]* %recipbox, i64 1, i64 2
  store float 0.000000e+00, float* %27, align 4, !tbaa !6
  %28 = load float* %15, align 4, !tbaa !6
  %29 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %30 = load float* %29, align 4, !tbaa !6
  %31 = fmul float %28, %30
  %32 = load float* %3, align 4, !tbaa !6
  %33 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %34 = load float* %33, align 4, !tbaa !6
  %35 = fmul float %32, %34
  %36 = fsub float %31, %35
  %37 = fmul float %9, %36
  %38 = getelementptr inbounds [3 x float]* %recipbox, i64 2, i64 0
  store float %37, float* %38, align 4, !tbaa !6
  %39 = load float* %29, align 4, !tbaa !6
  %40 = load float* %1, align 4, !tbaa !6
  %41 = fmul float %39, %40
  %42 = fmul float %9, %41
  %43 = fsub float -0.000000e+00, %42
  %44 = getelementptr inbounds [3 x float]* %recipbox, i64 2, i64 1
  store float %43, float* %44, align 4, !tbaa !6
  %45 = load float* %1, align 4, !tbaa !6
  %46 = load float* %3, align 4, !tbaa !6
  %47 = fmul float %45, %46
  %48 = fmul float %9, %47
  %49 = getelementptr inbounds [3 x float]* %recipbox, i64 2, i64 2
  store float %48, float* %49, align 4, !tbaa !6
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @calc_idx(i32 %natoms, [3 x float]* nocapture readonly %recipbox, [3 x float]* nocapture readonly %x, [3 x float]* nocapture %fractx, [3 x i32]* nocapture %idx, i32 %nx, i32 %ny, i32 %nz, i32* nocapture readonly %nnx, i32* nocapture readonly %nny, i32* nocapture readonly %nnz) #1 {
  %1 = getelementptr inbounds [3 x float]* %recipbox, i64 0, i64 0
  %2 = load float* %1, align 4, !tbaa !6
  %3 = getelementptr inbounds [3 x float]* %recipbox, i64 1, i64 0
  %4 = load float* %3, align 4, !tbaa !6
  %5 = getelementptr inbounds [3 x float]* %recipbox, i64 1, i64 1
  %6 = load float* %5, align 4, !tbaa !6
  %7 = getelementptr inbounds [3 x float]* %recipbox, i64 2, i64 0
  %8 = load float* %7, align 4, !tbaa !6
  %9 = getelementptr inbounds [3 x float]* %recipbox, i64 2, i64 1
  %10 = load float* %9, align 4, !tbaa !6
  %11 = getelementptr inbounds [3 x float]* %recipbox, i64 2, i64 2
  %12 = load float* %11, align 4, !tbaa !6
  %13 = icmp sgt i32 %natoms, 0
  br i1 %13, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %14 = sitofp i32 %nx to float
  %15 = sitofp i32 %ny to float
  %16 = sitofp i32 %nz to float
  %17 = add i32 %natoms, -1
  br label %18

; <label>:18                                      ; preds = %18, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %18 ]
  %19 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 0
  %20 = getelementptr inbounds [3 x i32]* %idx, i64 %indvars.iv, i64 0
  %21 = load float* %19, align 4, !tbaa !6
  %22 = fmul float %2, %21
  %23 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 1
  %24 = load float* %23, align 4, !tbaa !6
  %25 = fmul float %4, %24
  %26 = fadd float %22, %25
  %27 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 2
  %28 = load float* %27, align 4, !tbaa !6
  %29 = fmul float %8, %28
  %30 = fadd float %26, %29
  %31 = fmul float %14, %30
  %32 = fadd float %14, %31
  %33 = fmul float %6, %24
  %34 = fmul float %10, %28
  %35 = fadd float %33, %34
  %36 = fmul float %15, %35
  %37 = fadd float %15, %36
  %38 = fmul float %12, %28
  %39 = fmul float %16, %38
  %40 = fadd float %16, %39
  %41 = fptosi float %32 to i32
  %42 = fptosi float %37 to i32
  %43 = fptosi float %40 to i32
  %44 = sitofp i32 %41 to float
  %45 = fsub float %32, %44
  %46 = getelementptr inbounds [3 x float]* %fractx, i64 %indvars.iv, i64 0
  store float %45, float* %46, align 4, !tbaa !6
  %47 = sitofp i32 %42 to float
  %48 = fsub float %37, %47
  %49 = getelementptr inbounds [3 x float]* %fractx, i64 %indvars.iv, i64 1
  store float %48, float* %49, align 4, !tbaa !6
  %50 = sitofp i32 %43 to float
  %51 = fsub float %40, %50
  %52 = getelementptr inbounds [3 x float]* %fractx, i64 %indvars.iv, i64 2
  store float %51, float* %52, align 4, !tbaa !6
  %53 = sext i32 %41 to i64
  %54 = getelementptr inbounds i32* %nnx, i64 %53
  %55 = load i32* %54, align 4, !tbaa !8
  store i32 %55, i32* %20, align 4, !tbaa !8
  %56 = sext i32 %42 to i64
  %57 = getelementptr inbounds i32* %nny, i64 %56
  %58 = load i32* %57, align 4, !tbaa !8
  %59 = getelementptr inbounds [3 x i32]* %idx, i64 %indvars.iv, i64 1
  store i32 %58, i32* %59, align 4, !tbaa !8
  %60 = sext i32 %43 to i64
  %61 = getelementptr inbounds i32* %nnz, i64 %60
  %62 = load i32* %61, align 4, !tbaa !8
  %63 = getelementptr inbounds [3 x i32]* %idx, i64 %indvars.iv, i64 2
  store i32 %62, i32* %63, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %17
  br i1 %exitcond, label %._crit_edge, label %18

._crit_edge:                                      ; preds = %18, %0
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @sum_qgrid(%struct.t_commrec* nocapture readnone %cr, %struct.t_nsborder* nocapture readnone %nsb, %struct.t_fftgrid* nocapture readnone %grid, i32 %bForward) #1 {
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([48 x i8]* @.str1, i64 0, i64 0)) #6
  ret void
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @spread_q_bsplines(%struct.t_fftgrid* %grid, [3 x i32]* nocapture readonly %idx, float* nocapture readonly %charge, float** nocapture readonly %theta, i32 %nr, i32 %order, i32* nocapture readonly %nnx, i32* nocapture readonly %nny, i32* nocapture readonly %nnz) #1 {
  %ptr = alloca float*, align 8
  %nx = alloca i32, align 4
  %ny = alloca i32, align 4
  %nz = alloca i32, align 4
  %la2 = alloca i32, align 4
  %la12 = alloca i32, align 4
  tail call void @clear_fftgrid(%struct.t_fftgrid* %grid) #6
  call void @unpack_fftgrid(%struct.t_fftgrid* %grid, i32* %nx, i32* %ny, i32* %nz, i32* %la2, i32* %la12, i32 1, float** %ptr) #6
  %1 = sext i32 %order to i64
  %2 = load float** %theta, align 8, !tbaa !2
  %3 = getelementptr inbounds float** %theta, i64 1
  %4 = load float** %3, align 8, !tbaa !2
  %5 = getelementptr inbounds float** %theta, i64 2
  %6 = load float** %5, align 8, !tbaa !2
  %7 = icmp sgt i32 %nr, 0
  br i1 %7, label %.lr.ph22, label %._crit_edge23

.lr.ph22:                                         ; preds = %0
  %8 = load i32* %nz, align 4, !tbaa !8
  %9 = sext i32 %8 to i64
  %10 = load i32* %ny, align 4, !tbaa !8
  %11 = sext i32 %10 to i64
  %12 = load i32* %nx, align 4, !tbaa !8
  %13 = sext i32 %12 to i64
  %.sum = sub nsw i64 1, %1
  %.sum1 = add nsw i64 %.sum, %13
  %.sum3 = add nsw i64 %.sum, %11
  %.sum5 = add nsw i64 %.sum, %9
  %14 = load i32* %la12, align 4, !tbaa !8
  %15 = load i32* %la2, align 4, !tbaa !8
  %16 = load float** %ptr, align 8, !tbaa !2
  %17 = add i32 %nr, -1
  br label %18

; <label>:18                                      ; preds = %.loopexit, %.lr.ph22
  %indvars.iv34 = phi i64 [ 0, %.lr.ph22 ], [ %indvars.iv.next35, %.loopexit ]
  %indvars.iv30 = phi i32 [ 0, %.lr.ph22 ], [ %indvars.iv.next31, %.loopexit ]
  %19 = sext i32 %indvars.iv30 to i64
  %20 = getelementptr inbounds float* %charge, i64 %indvars.iv34
  %21 = load float* %20, align 4, !tbaa !6
  %fabsf = call float @fabsf(float %21) #4
  %22 = fpext float %fabsf to double
  %23 = fcmp ogt double %22, 1.200000e-38
  br i1 %23, label %24, label %.loopexit

; <label>:24                                      ; preds = %18
  %25 = mul nsw i64 %indvars.iv34, %1
  %26 = add nsw i64 %25, %1
  %27 = icmp sgt i32 %order, 0
  br i1 %27, label %.lr.ph19, label %.loopexit

.lr.ph19:                                         ; preds = %24
  %28 = getelementptr inbounds [3 x i32]* %idx, i64 %indvars.iv34, i64 0
  %29 = load i32* %28, align 4, !tbaa !8
  %30 = sext i32 %29 to i64
  %.sum6 = add nsw i64 %.sum1, %30
  %31 = getelementptr inbounds i32* %nnx, i64 %.sum6
  %32 = getelementptr inbounds [3 x i32]* %idx, i64 %indvars.iv34, i64 2
  %33 = load i32* %32, align 4, !tbaa !8
  %34 = getelementptr inbounds [3 x i32]* %idx, i64 %indvars.iv34, i64 1
  %35 = load i32* %34, align 4, !tbaa !8
  %36 = sext i32 %35 to i64
  %.sum7 = add nsw i64 %.sum3, %36
  %37 = getelementptr inbounds i32* %nny, i64 %.sum7
  %38 = sext i32 %33 to i64
  %.sum8 = add nsw i64 %.sum5, %38
  %39 = getelementptr inbounds i32* %nnz, i64 %.sum8
  %40 = trunc i64 %25 to i32
  br label %.lr.ph14

.lr.ph14:                                         ; preds = %._crit_edge15, %.lr.ph19
  %indvars.iv32 = phi i64 [ %19, %.lr.ph19 ], [ %indvars.iv.next33, %._crit_edge15 ]
  %i0.017 = phi i32* [ %31, %.lr.ph19 ], [ %71, %._crit_edge15 ]
  %ithx.016 = phi i32 [ %40, %.lr.ph19 ], [ %70, %._crit_edge15 ]
  %41 = getelementptr inbounds float* %2, i64 %indvars.iv32
  %42 = load float* %41, align 4, !tbaa !6
  %43 = fmul float %21, %42
  %44 = load i32* %i0.017, align 4, !tbaa !8
  %45 = mul nsw i32 %14, %44
  br label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge, %.lr.ph14
  %indvars.iv28 = phi i64 [ %19, %.lr.ph14 ], [ %indvars.iv.next29, %._crit_edge ]
  %j0.012 = phi i32* [ %37, %.lr.ph14 ], [ %67, %._crit_edge ]
  %ithy.011 = phi i32 [ %40, %.lr.ph14 ], [ %66, %._crit_edge ]
  %46 = load i32* %j0.012, align 4, !tbaa !8
  %47 = getelementptr inbounds float* %4, i64 %indvars.iv28
  %48 = load float* %47, align 4, !tbaa !6
  %49 = fmul float %43, %48
  %50 = mul nsw i32 %15, %46
  %51 = add nsw i32 %50, %45
  br label %52

; <label>:52                                      ; preds = %.lr.ph, %52
  %indvars.iv24 = phi i64 [ %19, %.lr.ph ], [ %indvars.iv.next25, %52 ]
  %k0.010 = phi i32* [ %39, %.lr.ph ], [ %63, %52 ]
  %ithz.09 = phi i32 [ %40, %.lr.ph ], [ %62, %52 ]
  %53 = load i32* %k0.010, align 4, !tbaa !8
  %54 = getelementptr inbounds float* %6, i64 %indvars.iv24
  %55 = load float* %54, align 4, !tbaa !6
  %56 = fmul float %49, %55
  %57 = add nsw i32 %51, %53
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds float* %16, i64 %58
  %60 = load float* %59, align 4, !tbaa !6
  %61 = fadd float %56, %60
  store float %61, float* %59, align 4, !tbaa !6
  %62 = add nsw i32 %ithz.09, 1
  %63 = getelementptr inbounds i32* %k0.010, i64 1
  %64 = sext i32 %62 to i64
  %65 = icmp slt i64 %64, %26
  %indvars.iv.next25 = add nsw i64 %indvars.iv24, 1
  br i1 %65, label %52, label %._crit_edge

._crit_edge:                                      ; preds = %52
  %66 = add nsw i32 %ithy.011, 1
  %67 = getelementptr inbounds i32* %j0.012, i64 1
  %68 = sext i32 %66 to i64
  %69 = icmp slt i64 %68, %26
  %indvars.iv.next29 = add nsw i64 %indvars.iv28, 1
  br i1 %69, label %.lr.ph, label %._crit_edge15

._crit_edge15:                                    ; preds = %._crit_edge
  %70 = add nsw i32 %ithx.016, 1
  %71 = getelementptr inbounds i32* %i0.017, i64 1
  %72 = sext i32 %70 to i64
  %73 = icmp slt i64 %72, %26
  %indvars.iv.next33 = add nsw i64 %indvars.iv32, 1
  br i1 %73, label %.lr.ph14, label %.loopexit

.loopexit:                                        ; preds = %._crit_edge15, %24, %18
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  %indvars.iv.next31 = add i32 %indvars.iv30, %order
  %lftr.wideiv = trunc i64 %indvars.iv34 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %17
  br i1 %exitcond, label %._crit_edge23, label %18

._crit_edge23:                                    ; preds = %.loopexit, %0
  ret void
}

; Function Attrs: optsize
declare void @clear_fftgrid(%struct.t_fftgrid*) #3

; Function Attrs: optsize
declare void @unpack_fftgrid(%struct.t_fftgrid*, i32*, i32*, i32*, i32*, i32*, i32, float**) #3

; Function Attrs: nounwind optsize ssp uwtable
define float @solve_pme(%struct.t_fftgrid* %grid, float %ewaldcoeff, float %vol, float** nocapture readonly %bsp_mod, [3 x float]* nocapture readonly %recipbox, [3 x float]* nocapture %vir, %struct.t_commrec* nocapture readonly %cr) #1 {
  %ptr = alloca %struct.t_fft_c*, align 8
  %nx = alloca i32, align 4
  %ny = alloca i32, align 4
  %nz = alloca i32, align 4
  %la2 = alloca i32, align 4
  %la12 = alloca i32, align 4
  %1 = fmul float %ewaldcoeff, %ewaldcoeff
  %2 = fpext float %1 to double
  %3 = fdiv double 0x4023BD3CC9BE45DE, %2
  %4 = fptrunc double %3 to float
  %5 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %6 = load i32* %5, align 4, !tbaa !10
  %7 = icmp sgt i32 %6, 1
  br i1 %7, label %12, label %8

; <label>:8                                       ; preds = %0
  %9 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %10 = load i32* %9, align 4, !tbaa !12
  %11 = icmp sgt i32 %10, 1
  br label %12

; <label>:12                                      ; preds = %8, %0
  %13 = phi i1 [ true, %0 ], [ %11, %8 ]
  %14 = bitcast %struct.t_fft_c** %ptr to float**
  call void @unpack_fftgrid(%struct.t_fftgrid* %grid, i32* %nx, i32* %ny, i32* %nz, i32* %la2, i32* %la12, i32 0, float** %14) #6
  %15 = getelementptr inbounds [3 x float]* %recipbox, i64 0, i64 0
  %16 = load float* %15, align 4, !tbaa !6
  %17 = getelementptr inbounds [3 x float]* %recipbox, i64 1, i64 0
  %18 = load float* %17, align 4, !tbaa !6
  %19 = getelementptr inbounds [3 x float]* %recipbox, i64 1, i64 1
  %20 = load float* %19, align 4, !tbaa !6
  %21 = getelementptr inbounds [3 x float]* %recipbox, i64 2, i64 0
  %22 = load float* %21, align 4, !tbaa !6
  %23 = getelementptr inbounds [3 x float]* %recipbox, i64 2, i64 1
  %24 = load float* %23, align 4, !tbaa !6
  %25 = getelementptr inbounds [3 x float]* %recipbox, i64 2, i64 2
  %26 = load float* %25, align 4, !tbaa !6
  %27 = load i32* %nx, align 4, !tbaa !8
  %28 = add nsw i32 %27, 1
  %29 = sdiv i32 %28, 2
  %30 = load i32* %ny, align 4, !tbaa !8
  %31 = add nsw i32 %30, 1
  %32 = sdiv i32 %31, 2
  %33 = load i32* %nz, align 4, !tbaa !8
  %34 = sdiv i32 %33, 2
  br i1 %13, label %.thread, label %35

.thread:                                          ; preds = %12
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([44 x i8]* @.str2, i64 0, i64 0)) #6
  br label %._crit_edge48

; <label>:35                                      ; preds = %12
  %36 = icmp sgt i32 %30, 0
  br i1 %36, label %.lr.ph47, label %._crit_edge48

.lr.ph47:                                         ; preds = %35
  %37 = fpext float %vol to double
  %38 = fmul double %37, 0x400921FB54442D18
  %39 = getelementptr inbounds float** %bsp_mod, i64 1
  %40 = load float** %39, align 8, !tbaa !2
  %41 = load i32* %nx, align 4, !tbaa !8
  %42 = icmp sgt i32 %41, 0
  %43 = load %struct.t_fft_c** %ptr, align 8, !tbaa !2
  %44 = load i32* %la12, align 4, !tbaa !8
  %45 = load i32* %la2, align 4, !tbaa !8
  %46 = icmp sgt i32 %33, -2
  %47 = getelementptr inbounds float** %bsp_mod, i64 2
  %48 = load i32* %nz, align 4, !tbaa !8
  %49 = add nsw i32 %48, 1
  %50 = sdiv i32 %49, 2
  %51 = load i32* %ny, align 4, !tbaa !8
  %52 = sext i32 %50 to i64
  %53 = sext i32 %34 to i64
  %54 = sext i32 %44 to i64
  %55 = sext i32 %45 to i64
  %56 = sext i32 %29 to i64
  %57 = add i32 %41, -1
  %58 = sext i32 %32 to i64
  %59 = add i32 %30, -1
  br label %60

; <label>:60                                      ; preds = %._crit_edge29, %.lr.ph47
  %indvars.iv58 = phi i64 [ 0, %.lr.ph47 ], [ %indvars.iv.next59, %._crit_edge29 ]
  %ky.044 = phi i32 [ 0, %.lr.ph47 ], [ %175, %._crit_edge29 ]
  %virzz.043 = phi float [ 0.000000e+00, %.lr.ph47 ], [ %virzz.1.lcssa, %._crit_edge29 ]
  %virxx.038 = phi float [ 0.000000e+00, %.lr.ph47 ], [ %virxx.1.lcssa, %._crit_edge29 ]
  %energy.037 = phi float [ 0.000000e+00, %.lr.ph47 ], [ %energy.1.lcssa, %._crit_edge29 ]
  %61 = phi <4 x float> [ zeroinitializer, %.lr.ph47 ], [ %174, %._crit_edge29 ]
  %62 = icmp slt i64 %indvars.iv58, %58
  %63 = trunc i64 %indvars.iv58 to i32
  %64 = sub nsw i32 %ky.044, %51
  %. = select i1 %62, i32 %63, i32 %64
  %my.0 = sitofp i32 %. to float
  %65 = getelementptr inbounds float* %40, i64 %indvars.iv58
  %66 = load float* %65, align 4, !tbaa !6
  %67 = fpext float %66 to double
  %68 = fmul double %38, %67
  %69 = fptrunc double %68 to float
  br i1 %42, label %.lr.ph28, label %._crit_edge29

.lr.ph28:                                         ; preds = %60
  %70 = fmul float %20, %my.0
  %71 = load float** %bsp_mod, align 8, !tbaa !2
  %72 = mul nsw i64 %54, %indvars.iv58
  %73 = fmul float %24, %my.0
  %74 = mul nsw i64 %55, %indvars.iv58
  br label %75

; <label>:75                                      ; preds = %._crit_edge, %.lr.ph28
  %indvars.iv56 = phi i64 [ 0, %.lr.ph28 ], [ %indvars.iv.next57, %._crit_edge ]
  %kx.026 = phi i32 [ 0, %.lr.ph28 ], [ %173, %._crit_edge ]
  %virzz.125 = phi float [ %virzz.043, %.lr.ph28 ], [ %virzz.2.lcssa, %._crit_edge ]
  %virxx.120 = phi float [ %virxx.038, %.lr.ph28 ], [ %virxx.2.lcssa, %._crit_edge ]
  %energy.119 = phi float [ %energy.037, %.lr.ph28 ], [ %energy.2.lcssa, %._crit_edge ]
  %76 = phi <4 x float> [ %61, %.lr.ph28 ], [ %172, %._crit_edge ]
  %77 = icmp slt i64 %indvars.iv56, %56
  %78 = select i1 %77, i32 0, i32 %41
  %79 = trunc i64 %indvars.iv56 to i32
  %mx.0.in = sub nsw i32 %79, %78
  %mx.0 = sitofp i32 %mx.0.in to float
  %80 = fmul float %16, %mx.0
  %81 = fmul float %18, %mx.0
  %82 = fadd float %70, %81
  %83 = getelementptr inbounds float* %71, i64 %indvars.iv56
  %84 = load float* %83, align 4, !tbaa !6
  br i1 %13, label %85, label %89

; <label>:85                                      ; preds = %75
  %86 = mul nsw i32 %45, %kx.026
  %87 = trunc i64 %72 to i32
  %88 = add nsw i32 %86, %87
  br label %93

; <label>:89                                      ; preds = %75
  %90 = mul nsw i64 %54, %indvars.iv56
  %91 = add nsw i64 %74, %90
  %92 = trunc i64 %91 to i32
  br label %93

; <label>:93                                      ; preds = %89, %85
  %.pn.in = phi i32 [ %88, %85 ], [ %92, %89 ]
  br i1 %46, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %93
  %.pn = sext i32 %.pn.in to i64
  %p0.0 = getelementptr inbounds %struct.t_fft_c* %43, i64 %.pn
  %94 = or i64 %indvars.iv56, %indvars.iv58
  %95 = fmul float %22, %mx.0
  %96 = fadd float %73, %95
  %97 = fmul float %80, %80
  %98 = fmul float %82, %82
  %99 = fadd float %97, %98
  br label %100

; <label>:100                                     ; preds = %.lr.ph, %168
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %168 ]
  %p0.112 = phi %struct.t_fft_c* [ %p0.0, %.lr.ph ], [ %170, %168 ]
  %virzz.210 = phi float [ %virzz.125, %.lr.ph ], [ %virzz.3, %168 ]
  %virxx.25 = phi float [ %virxx.120, %.lr.ph ], [ %virxx.3, %168 ]
  %energy.24 = phi float [ %energy.119, %.lr.ph ], [ %energy.3, %168 ]
  %101 = phi <4 x float> [ %76, %.lr.ph ], [ %169, %168 ]
  %102 = or i64 %94, %indvars.iv
  %103 = trunc i64 %102 to i32
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %168, label %105

; <label>:105                                     ; preds = %100
  %106 = trunc i64 %indvars.iv to i32
  %107 = getelementptr inbounds %struct.t_fft_c* %p0.112, i64 0, i32 0
  %108 = load float* %107, align 4, !tbaa !13
  %109 = getelementptr inbounds %struct.t_fft_c* %p0.112, i64 0, i32 1
  %110 = load float* %109, align 4, !tbaa !15
  %111 = sitofp i32 %106 to float
  %112 = fmul float %26, %111
  %113 = fadd float %96, %112
  %114 = fmul float %113, %113
  %115 = fadd float %99, %114
  %116 = fmul float %84, %115
  %117 = fmul float %69, %116
  %118 = load float** %47, align 8, !tbaa !2
  %119 = getelementptr inbounds float* %118, i64 %indvars.iv
  %120 = load float* %119, align 4, !tbaa !6
  %121 = fmul float %117, %120
  %122 = fmul float %4, %115
  %123 = fsub float -0.000000e+00, %122
  %124 = fpext float %123 to double
  %125 = call double @exp(double %124) #7
  %126 = fmul double %125, 0x40615DEEE174A498
  %127 = fpext float %121 to double
  %128 = fdiv double %126, %127
  %129 = fptrunc double %128 to float
  %130 = fmul float %108, %129
  store float %130, float* %107, align 4, !tbaa !13
  %131 = fmul float %110, %129
  store float %131, float* %109, align 4, !tbaa !15
  %132 = fmul float %108, %108
  %133 = fmul float %110, %110
  %134 = fadd float %132, %133
  %135 = icmp sgt i64 %indvars.iv, 0
  %136 = icmp slt i64 %indvars.iv, %52
  %or.cond = and i1 %135, %136
  br i1 %or.cond, label %137, label %139

; <label>:137                                     ; preds = %105
  %138 = fmul float %134, 2.000000e+00
  br label %139

; <label>:139                                     ; preds = %137, %105
  %struct2.0 = phi float [ %138, %137 ], [ %134, %105 ]
  %140 = fmul float %129, %struct2.0
  %141 = fadd float %122, 1.000000e+00
  %142 = fpext float %141 to double
  %143 = fmul double %142, 2.000000e+00
  %144 = fpext float %115 to double
  %145 = fdiv double %143, %144
  %146 = fptrunc double %145 to float
  %147 = fadd float %energy.24, %140
  %148 = fmul float %140, %146
  %149 = fmul float %80, %148
  %150 = fmul float %80, %149
  %151 = fsub float %150, %140
  %152 = fadd float %virxx.25, %151
  %153 = fmul float %82, %149
  %154 = fmul float %113, %149
  %155 = fmul float %82, %148
  %156 = fmul float %82, %155
  %157 = fsub float %156, %140
  %158 = fmul float %113, %155
  %159 = insertelement <4 x float> undef, float %154, i32 0
  %160 = insertelement <4 x float> %159, float %153, i32 1
  %161 = insertelement <4 x float> %160, float %157, i32 2
  %162 = insertelement <4 x float> %161, float %158, i32 3
  %163 = fadd <4 x float> %101, %162
  %164 = fmul float %113, %148
  %165 = fmul float %113, %164
  %166 = fsub float %165, %140
  %167 = fadd float %virzz.210, %166
  br label %168

; <label>:168                                     ; preds = %100, %139
  %energy.3 = phi float [ %energy.24, %100 ], [ %147, %139 ]
  %virxx.3 = phi float [ %virxx.25, %100 ], [ %152, %139 ]
  %virzz.3 = phi float [ %virzz.210, %100 ], [ %167, %139 ]
  %169 = phi <4 x float> [ %101, %100 ], [ %163, %139 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %170 = getelementptr inbounds %struct.t_fft_c* %p0.112, i64 1
  %171 = icmp slt i64 %indvars.iv, %53
  br i1 %171, label %100, label %._crit_edge

._crit_edge:                                      ; preds = %168, %93
  %virzz.2.lcssa = phi float [ %virzz.125, %93 ], [ %virzz.3, %168 ]
  %virxx.2.lcssa = phi float [ %virxx.120, %93 ], [ %virxx.3, %168 ]
  %energy.2.lcssa = phi float [ %energy.119, %93 ], [ %energy.3, %168 ]
  %172 = phi <4 x float> [ %76, %93 ], [ %169, %168 ]
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1
  %173 = add nuw nsw i32 %kx.026, 1
  %exitcond = icmp eq i32 %79, %57
  br i1 %exitcond, label %._crit_edge29, label %75

._crit_edge29:                                    ; preds = %._crit_edge, %60
  %virzz.1.lcssa = phi float [ %virzz.043, %60 ], [ %virzz.2.lcssa, %._crit_edge ]
  %virxx.1.lcssa = phi float [ %virxx.038, %60 ], [ %virxx.2.lcssa, %._crit_edge ]
  %energy.1.lcssa = phi float [ %energy.037, %60 ], [ %energy.2.lcssa, %._crit_edge ]
  %174 = phi <4 x float> [ %61, %60 ], [ %172, %._crit_edge ]
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  %175 = add nuw nsw i32 %ky.044, 1
  %exitcond61 = icmp eq i32 %63, %59
  br i1 %exitcond61, label %._crit_edge48, label %60

._crit_edge48:                                    ; preds = %._crit_edge29, %.thread, %35
  %virzz.0.lcssa = phi float [ 0.000000e+00, %35 ], [ 0.000000e+00, %.thread ], [ %virzz.1.lcssa, %._crit_edge29 ]
  %virxx.0.lcssa = phi float [ 0.000000e+00, %35 ], [ 0.000000e+00, %.thread ], [ %virxx.1.lcssa, %._crit_edge29 ]
  %energy.0.lcssa = phi float [ 0.000000e+00, %35 ], [ 0.000000e+00, %.thread ], [ %energy.1.lcssa, %._crit_edge29 ]
  %176 = phi <4 x float> [ zeroinitializer, %35 ], [ zeroinitializer, %.thread ], [ %174, %._crit_edge29 ]
  %177 = fmul float %virxx.0.lcssa, 2.500000e-01
  %178 = getelementptr inbounds [3 x float]* %vir, i64 0, i64 0
  store float %177, float* %178, align 4, !tbaa !6
  %179 = fmul float %virzz.0.lcssa, 2.500000e-01
  %180 = getelementptr inbounds [3 x float]* %vir, i64 2, i64 2
  store float %179, float* %180, align 4, !tbaa !6
  %181 = getelementptr inbounds [3 x float]* %vir, i64 0, i64 1
  %182 = fmul <4 x float> %176, <float 2.500000e-01, float 2.500000e-01, float 2.500000e-01, float 2.500000e-01>
  %183 = extractelement <4 x float> %182, i32 1
  store float %183, float* %181, align 4, !tbaa !6
  %184 = getelementptr inbounds [3 x float]* %vir, i64 2, i64 0
  %185 = extractelement <4 x float> %182, i32 0
  store float %185, float* %184, align 4, !tbaa !6
  %186 = getelementptr inbounds [3 x float]* %vir, i64 0, i64 2
  %187 = getelementptr inbounds [3 x float]* %vir, i64 2, i64 1
  %188 = extractelement <4 x float> %182, i32 3
  store float %188, float* %187, align 4, !tbaa !6
  %189 = bitcast float* %186 to <4 x float>*
  store <4 x float> %182, <4 x float>* %189, align 4, !tbaa !6
  %190 = fmul float %energy.0.lcssa, 5.000000e-01
  ret float %190
}

; Function Attrs: nounwind optsize readnone
declare double @exp(double) #4

; Function Attrs: nounwind optsize ssp uwtable
define void @gather_f_bsplines(%struct.t_fftgrid* %grid, [3 x float]* nocapture readonly %recipbox, [3 x i32]* nocapture readonly %idx, [3 x float]* nocapture %f, float* nocapture readonly %charge, float** nocapture readonly %theta, float** nocapture readonly %dtheta, i32 %nr, i32 %order, i32* nocapture readonly %nnx, i32* nocapture readonly %nny, i32* nocapture readonly %nnz) #1 {
  %nx = alloca i32, align 4
  %ny = alloca i32, align 4
  %nz = alloca i32, align 4
  %la2 = alloca i32, align 4
  %la12 = alloca i32, align 4
  %ptr = alloca float*, align 8
  call void @unpack_fftgrid(%struct.t_fftgrid* %grid, i32* %nx, i32* %ny, i32* %nz, i32* %la2, i32* %la12, i32 1, float** %ptr) #6
  %1 = load float** %theta, align 8, !tbaa !2
  %2 = getelementptr inbounds float** %theta, i64 1
  %3 = load float** %2, align 8, !tbaa !2
  %4 = getelementptr inbounds float** %theta, i64 2
  %5 = load float** %4, align 8, !tbaa !2
  %6 = load float** %dtheta, align 8, !tbaa !2
  %7 = getelementptr inbounds float** %dtheta, i64 1
  %8 = load float** %7, align 8, !tbaa !2
  %9 = getelementptr inbounds float** %dtheta, i64 2
  %10 = load float** %9, align 8, !tbaa !2
  %11 = sext i32 %order to i64
  %12 = load i32* %nz, align 4, !tbaa !8
  %13 = sext i32 %12 to i64
  %.sum4 = sub nsw i64 1, %11
  %.sum5 = add nsw i64 %.sum4, %13
  %14 = getelementptr inbounds [3 x float]* %recipbox, i64 0, i64 0
  %15 = load float* %14, align 4, !tbaa !6
  %16 = getelementptr inbounds [3 x float]* %recipbox, i64 1, i64 0
  %17 = load float* %16, align 4, !tbaa !6
  %18 = getelementptr inbounds [3 x float]* %recipbox, i64 1, i64 1
  %19 = load float* %18, align 4, !tbaa !6
  %20 = getelementptr inbounds [3 x float]* %recipbox, i64 2, i64 0
  %21 = load float* %20, align 4, !tbaa !6
  %22 = getelementptr inbounds [3 x float]* %recipbox, i64 2, i64 1
  %23 = load float* %22, align 4, !tbaa !6
  %24 = getelementptr inbounds [3 x float]* %recipbox, i64 2, i64 2
  %25 = load float* %24, align 4, !tbaa !6
  %26 = icmp sgt i32 %nr, 0
  br i1 %26, label %.lr.ph51, label %._crit_edge52

.lr.ph51:                                         ; preds = %0
  %27 = load i32* %ny, align 4, !tbaa !8
  %28 = sext i32 %27 to i64
  %29 = load i32* %nx, align 4, !tbaa !8
  %30 = sext i32 %29 to i64
  %.sum1 = add nsw i64 %.sum4, %30
  %31 = sitofp i32 %29 to float
  %32 = sitofp i32 %27 to float
  %33 = sitofp i32 %12 to float
  %.sum3 = add nsw i64 %.sum4, %28
  %34 = icmp eq i32 %order, 4
  %35 = load i32* %la12, align 4, !tbaa !8
  %36 = load i32* %la2, align 4, !tbaa !8
  %37 = load float** %ptr, align 8, !tbaa !2
  %38 = add i32 %nr, -1
  br label %39

; <label>:39                                      ; preds = %217, %.lr.ph51
  %indvars.iv74 = phi i64 [ 0, %.lr.ph51 ], [ %indvars.iv.next75, %217 ]
  %indvars.iv70 = phi i32 [ 0, %.lr.ph51 ], [ %indvars.iv.next71, %217 ]
  %40 = sext i32 %indvars.iv70 to i64
  %41 = getelementptr inbounds float* %charge, i64 %indvars.iv74
  %42 = load float* %41, align 4, !tbaa !6
  %fabsf = call float @fabsf(float %42) #4
  %43 = fpext float %fabsf to double
  %44 = fcmp ogt double %43, 1.200000e-38
  br i1 %44, label %45, label %217

; <label>:45                                      ; preds = %39
  %46 = mul nsw i64 %indvars.iv74, %11
  %47 = add nsw i64 %46, %11
  %48 = icmp sgt i32 %order, 0
  br i1 %48, label %.lr.ph44, label %._crit_edge45

.lr.ph44:                                         ; preds = %45
  %49 = getelementptr inbounds [3 x i32]* %idx, i64 %indvars.iv74, i64 2
  %50 = load i32* %49, align 4, !tbaa !8
  %51 = getelementptr inbounds [3 x i32]* %idx, i64 %indvars.iv74, i64 0
  %52 = load i32* %51, align 4, !tbaa !8
  %53 = sext i32 %52 to i64
  %.sum6 = add nsw i64 %.sum1, %53
  %54 = getelementptr inbounds i32* %nnx, i64 %.sum6
  %55 = getelementptr inbounds [3 x i32]* %idx, i64 %indvars.iv74, i64 1
  %56 = load i32* %55, align 4, !tbaa !8
  %57 = sext i32 %56 to i64
  %.sum7 = add nsw i64 %.sum3, %57
  %58 = getelementptr inbounds i32* %nny, i64 %.sum7
  %59 = sext i32 %50 to i64
  %.sum9 = add nsw i64 %59, %.sum5
  %60 = getelementptr inbounds i32* %nnz, i64 %.sum9
  %.sum10 = add nsw i64 %.sum9, 1
  %61 = getelementptr inbounds i32* %nnz, i64 %.sum10
  %.sum11 = add nsw i64 %.sum9, 2
  %62 = getelementptr inbounds i32* %nnz, i64 %.sum11
  %.sum12 = add nsw i64 %.sum9, 3
  %63 = getelementptr inbounds i32* %nnz, i64 %.sum12
  %64 = getelementptr inbounds float* %5, i64 %46
  %65 = getelementptr inbounds float* %10, i64 %46
  %66 = add nsw i64 %46, 1
  %67 = getelementptr inbounds float* %5, i64 %66
  %68 = getelementptr inbounds float* %10, i64 %66
  %69 = add nsw i64 %46, 2
  %70 = getelementptr inbounds float* %5, i64 %69
  %71 = getelementptr inbounds float* %10, i64 %69
  %72 = add nsw i64 %46, 3
  %73 = getelementptr inbounds float* %5, i64 %72
  %74 = getelementptr inbounds float* %10, i64 %72
  %75 = trunc i64 %46 to i32
  br label %76

; <label>:76                                      ; preds = %.lr.ph44, %.loopexit
  %indvars.iv72 = phi i64 [ %40, %.lr.ph44 ], [ %indvars.iv.next73, %.loopexit ]
  %i0.042 = phi i32* [ %54, %.lr.ph44 ], [ %190, %.loopexit ]
  %ithx.041 = phi i32 [ %75, %.lr.ph44 ], [ %189, %.loopexit ]
  %fx.040 = phi float [ 0.000000e+00, %.lr.ph44 ], [ %fx.3, %.loopexit ]
  %fy.039 = phi float [ 0.000000e+00, %.lr.ph44 ], [ %fy.3, %.loopexit ]
  %fz.038 = phi float [ 0.000000e+00, %.lr.ph44 ], [ %fz.3, %.loopexit ]
  %77 = load i32* %i0.042, align 4, !tbaa !8
  %78 = getelementptr inbounds float* %1, i64 %indvars.iv72
  %79 = load float* %78, align 4, !tbaa !6
  %80 = getelementptr inbounds float* %6, i64 %indvars.iv72
  %81 = load float* %80, align 4, !tbaa !6
  %82 = mul nsw i32 %35, %77
  br i1 %34, label %.lr.ph34, label %.lr.ph

.lr.ph34:                                         ; preds = %76
  %83 = load i32* %60, align 4, !tbaa !8
  %84 = load i32* %61, align 4, !tbaa !8
  %85 = load i32* %62, align 4, !tbaa !8
  %86 = load i32* %63, align 4, !tbaa !8
  %87 = load float* %64, align 4, !tbaa !6
  %88 = load float* %65, align 4, !tbaa !6
  %89 = load float* %67, align 4, !tbaa !6
  %90 = load float* %68, align 4, !tbaa !6
  %91 = load float* %70, align 4, !tbaa !6
  %92 = load float* %71, align 4, !tbaa !6
  %93 = load float* %73, align 4, !tbaa !6
  %94 = load float* %74, align 4, !tbaa !6
  br label %95

; <label>:95                                      ; preds = %.lr.ph34, %95
  %indvars.iv68 = phi i64 [ %40, %.lr.ph34 ], [ %indvars.iv.next69, %95 ]
  %j0.033 = phi i32* [ %58, %.lr.ph34 ], [ %143, %95 ]
  %ithy.032 = phi i32 [ %75, %.lr.ph34 ], [ %142, %95 ]
  %fx.131 = phi float [ %fx.040, %.lr.ph34 ], [ %135, %95 ]
  %fy.130 = phi float [ %fy.039, %.lr.ph34 ], [ %138, %95 ]
  %fz.129 = phi float [ %fz.038, %.lr.ph34 ], [ %141, %95 ]
  %96 = load i32* %j0.033, align 4, !tbaa !8
  %97 = getelementptr inbounds float* %3, i64 %indvars.iv68
  %98 = load float* %97, align 4, !tbaa !6
  %99 = getelementptr inbounds float* %8, i64 %indvars.iv68
  %100 = load float* %99, align 4, !tbaa !6
  %101 = mul nsw i32 %36, %96
  %102 = add nsw i32 %101, %82
  %103 = add nsw i32 %102, %83
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds float* %37, i64 %104
  %106 = load float* %105, align 4, !tbaa !6
  %107 = add nsw i32 %84, %102
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds float* %37, i64 %108
  %110 = load float* %109, align 4, !tbaa !6
  %111 = add nsw i32 %85, %102
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds float* %37, i64 %112
  %114 = load float* %113, align 4, !tbaa !6
  %115 = add nsw i32 %86, %102
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds float* %37, i64 %116
  %118 = load float* %117, align 4, !tbaa !6
  %119 = fmul float %106, %87
  %120 = fmul float %106, %88
  %121 = fmul float %110, %89
  %122 = fadd float %119, %121
  %123 = fmul float %110, %90
  %124 = fadd float %120, %123
  %125 = fmul float %114, %91
  %126 = fadd float %122, %125
  %127 = fmul float %114, %92
  %128 = fadd float %124, %127
  %129 = fmul float %118, %93
  %130 = fadd float %126, %129
  %131 = fmul float %118, %94
  %132 = fadd float %128, %131
  %133 = fmul float %81, %98
  %134 = fmul float %133, %130
  %135 = fadd float %fx.131, %134
  %136 = fmul float %79, %100
  %137 = fmul float %136, %130
  %138 = fadd float %fy.130, %137
  %139 = fmul float %79, %98
  %140 = fmul float %139, %132
  %141 = fadd float %fz.129, %140
  %142 = add nsw i32 %ithy.032, 1
  %143 = getelementptr inbounds i32* %j0.033, i64 1
  %144 = sext i32 %142 to i64
  %145 = icmp slt i64 %144, %47
  %indvars.iv.next69 = add nsw i64 %indvars.iv68, 1
  br i1 %145, label %95, label %.loopexit

.lr.ph:                                           ; preds = %76, %._crit_edge
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %._crit_edge ], [ %40, %76 ]
  %j0.124 = phi i32* [ %186, %._crit_edge ], [ %58, %76 ]
  %ithy.123 = phi i32 [ %185, %._crit_edge ], [ %75, %76 ]
  %fx.222 = phi float [ %177, %._crit_edge ], [ %fx.040, %76 ]
  %fy.221 = phi float [ %180, %._crit_edge ], [ %fy.039, %76 ]
  %fz.220 = phi float [ %184, %._crit_edge ], [ %fz.038, %76 ]
  %146 = load i32* %j0.124, align 4, !tbaa !8
  %147 = getelementptr inbounds float* %3, i64 %indvars.iv64
  %148 = load float* %147, align 4, !tbaa !6
  %149 = getelementptr inbounds float* %8, i64 %indvars.iv64
  %150 = load float* %149, align 4, !tbaa !6
  %151 = mul nsw i32 %36, %146
  %152 = add nsw i32 %151, %82
  br label %153

; <label>:153                                     ; preds = %.lr.ph, %153
  %indvars.iv60 = phi i64 [ %40, %.lr.ph ], [ %indvars.iv.next61, %153 ]
  %k0.018 = phi i32* [ %60, %.lr.ph ], [ %171, %153 ]
  %ithz.017 = phi i32 [ %75, %.lr.ph ], [ %170, %153 ]
  %154 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %169, %153 ]
  %155 = load i32* %k0.018, align 4, !tbaa !8
  %156 = add nsw i32 %152, %155
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds float* %37, i64 %157
  %159 = load float* %158, align 4, !tbaa !6
  %160 = getelementptr inbounds float* %5, i64 %indvars.iv60
  %161 = load float* %160, align 4, !tbaa !6
  %162 = getelementptr inbounds float* %10, i64 %indvars.iv60
  %163 = load float* %162, align 4, !tbaa !6
  %164 = insertelement <2 x float> undef, float %159, i32 0
  %165 = insertelement <2 x float> %164, float %159, i32 1
  %166 = insertelement <2 x float> undef, float %161, i32 0
  %167 = insertelement <2 x float> %166, float %163, i32 1
  %168 = fmul <2 x float> %165, %167
  %169 = fadd <2 x float> %154, %168
  %170 = add nsw i32 %ithz.017, 1
  %171 = getelementptr inbounds i32* %k0.018, i64 1
  %172 = sext i32 %170 to i64
  %173 = icmp slt i64 %172, %47
  %indvars.iv.next61 = add nsw i64 %indvars.iv60, 1
  br i1 %173, label %153, label %._crit_edge

._crit_edge:                                      ; preds = %153
  %174 = fmul float %81, %148
  %175 = extractelement <2 x float> %169, i32 0
  %176 = fmul float %174, %175
  %177 = fadd float %fx.222, %176
  %178 = fmul float %79, %150
  %179 = fmul float %178, %175
  %180 = fadd float %fy.221, %179
  %181 = fmul float %79, %148
  %182 = extractelement <2 x float> %169, i32 1
  %183 = fmul float %181, %182
  %184 = fadd float %fz.220, %183
  %185 = add nsw i32 %ithy.123, 1
  %186 = getelementptr inbounds i32* %j0.124, i64 1
  %187 = sext i32 %185 to i64
  %188 = icmp slt i64 %187, %47
  %indvars.iv.next65 = add nsw i64 %indvars.iv64, 1
  br i1 %188, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %95
  %fz.3 = phi float [ %141, %95 ], [ %184, %._crit_edge ]
  %fy.3 = phi float [ %138, %95 ], [ %180, %._crit_edge ]
  %fx.3 = phi float [ %135, %95 ], [ %177, %._crit_edge ]
  %189 = add nsw i32 %ithx.041, 1
  %190 = getelementptr inbounds i32* %i0.042, i64 1
  %191 = sext i32 %189 to i64
  %192 = icmp slt i64 %191, %47
  %indvars.iv.next73 = add nsw i64 %indvars.iv72, 1
  br i1 %192, label %76, label %._crit_edge45

._crit_edge45:                                    ; preds = %.loopexit, %45
  %fx.0.lcssa = phi float [ 0.000000e+00, %45 ], [ %fx.3, %.loopexit ]
  %fy.0.lcssa = phi float [ 0.000000e+00, %45 ], [ %fy.3, %.loopexit ]
  %fz.0.lcssa = phi float [ 0.000000e+00, %45 ], [ %fz.3, %.loopexit ]
  %193 = fmul float %fx.0.lcssa, %31
  %194 = fmul float %15, %193
  %195 = fmul float %42, %194
  %196 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv74, i64 0
  %197 = load float* %196, align 4, !tbaa !6
  %198 = fsub float %197, %195
  store float %198, float* %196, align 4, !tbaa !6
  %199 = fmul float %17, %193
  %200 = fmul float %fy.0.lcssa, %32
  %201 = fmul float %19, %200
  %202 = fadd float %199, %201
  %203 = fmul float %42, %202
  %204 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv74, i64 1
  %205 = load float* %204, align 4, !tbaa !6
  %206 = fsub float %205, %203
  store float %206, float* %204, align 4, !tbaa !6
  %207 = fmul float %21, %193
  %208 = fmul float %23, %200
  %209 = fadd float %207, %208
  %210 = fmul float %fz.0.lcssa, %33
  %211 = fmul float %25, %210
  %212 = fadd float %209, %211
  %213 = fmul float %42, %212
  %214 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv74, i64 2
  %215 = load float* %214, align 4, !tbaa !6
  %216 = fsub float %215, %213
  store float %216, float* %214, align 4, !tbaa !6
  br label %217

; <label>:217                                     ; preds = %39, %._crit_edge45
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  %indvars.iv.next71 = add i32 %indvars.iv70, %order
  %lftr.wideiv = trunc i64 %indvars.iv74 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %38
  br i1 %exitcond, label %._crit_edge52, label %39

._crit_edge52:                                    ; preds = %217, %0
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @make_bsplines(float** nocapture readonly %theta, float** nocapture readonly %dtheta, i32 %order, i32 %nx, i32 %ny, i32 %nz, [3 x float]* nocapture readonly %fractx, [3 x i32]* nocapture readnone %idx, float* nocapture readonly %charge, i32 %nr) #1 {
  %1 = icmp sgt i32 %nr, 0
  br i1 %1, label %.lr.ph28, label %._crit_edge29

.lr.ph28:                                         ; preds = %0
  %2 = add i32 %order, -1
  %3 = sext i32 %2 to i64
  %4 = icmp sgt i32 %order, 3
  %5 = icmp sgt i32 %order, 1
  %6 = sitofp i32 %2 to double
  %7 = fdiv double 1.000000e+00, %6
  %8 = fptrunc double %7 to float
  %9 = add nsw i32 %order, -2
  %10 = sext i32 %9 to i64
  %11 = icmp sgt i32 %2, 1
  %12 = sext i32 %order to i64
  %13 = add i32 %nr, -1
  br label %14

; <label>:14                                      ; preds = %.loopexit, %.lr.ph28
  %indvars.iv47 = phi i64 [ 0, %.lr.ph28 ], [ %indvars.iv.next48, %.loopexit ]
  %15 = getelementptr inbounds float* %charge, i64 %indvars.iv47
  %16 = load float* %15, align 4, !tbaa !6
  %fabsf = tail call float @fabsf(float %16) #4
  %17 = fpext float %fabsf to double
  %18 = fcmp ogt double %17, 1.200000e-38
  br i1 %18, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %14
  %19 = mul nsw i64 %indvars.iv47, %12
  %.sum = add nsw i64 %19, %3
  %.sum1 = add nsw i64 %19, 1
  %.sum2 = add nsw i64 %19, %10
  br label %20

; <label>:20                                      ; preds = %._crit_edge24, %.preheader
  %indvars.iv44 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next45, %._crit_edge24 ]
  %21 = getelementptr inbounds [3 x float]* %fractx, i64 %indvars.iv47, i64 %indvars.iv44
  %22 = load float* %21, align 4, !tbaa !6
  %23 = getelementptr inbounds float** %theta, i64 %indvars.iv44
  %24 = load float** %23, align 8, !tbaa !2
  %25 = getelementptr inbounds float* %24, i64 %19
  %26 = getelementptr inbounds float* %24, i64 %.sum
  store float 0.000000e+00, float* %26, align 4, !tbaa !6
  %27 = getelementptr inbounds float* %24, i64 %.sum1
  store float %22, float* %27, align 4, !tbaa !6
  %28 = fsub float 1.000000e+00, %22
  store float %28, float* %25, align 4, !tbaa !6
  br i1 %4, label %.lr.ph, label %._crit_edge16

.lr.ph:                                           ; preds = %20, %._crit_edge
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %._crit_edge ], [ 3, %20 ]
  %indvars.iv30 = phi i32 [ %indvars.iv.next31, %._crit_edge ], [ 2, %20 ]
  %29 = trunc i64 %indvars.iv32 to i32
  %30 = sitofp i32 %29 to double
  %31 = fadd double %30, -1.000000e+00
  %32 = fdiv double 1.000000e+00, %31
  %33 = fptrunc double %32 to float
  %34 = fmul float %22, %33
  %35 = add nsw i64 %indvars.iv32, -2
  %.sum8 = add nsw i64 %35, %19
  %36 = getelementptr inbounds float* %24, i64 %.sum8
  %37 = load float* %36, align 4, !tbaa !6
  %38 = fmul float %37, %34
  %39 = add nsw i64 %indvars.iv32, -1
  %.sum9 = add nsw i64 %39, %19
  %40 = getelementptr inbounds float* %24, i64 %.sum9
  store float %38, float* %40, align 4, !tbaa !6
  br label %41

; <label>:41                                      ; preds = %41, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %41 ]
  %42 = trunc i64 %indvars.iv to i32
  %43 = sitofp i32 %42 to float
  %44 = fadd float %22, %43
  %45 = sub nsw i64 %indvars.iv32, %indvars.iv
  %46 = add nsw i64 %45, -2
  %.sum10 = add nsw i64 %46, %19
  %47 = getelementptr inbounds float* %24, i64 %.sum10
  %48 = load float* %47, align 4, !tbaa !6
  %49 = fmul float %44, %48
  %50 = trunc i64 %45 to i32
  %51 = sitofp i32 %50 to float
  %52 = fsub float %51, %22
  %53 = add nsw i64 %45, -1
  %.sum11 = add nsw i64 %53, %19
  %54 = getelementptr inbounds float* %24, i64 %.sum11
  %55 = load float* %54, align 4, !tbaa !6
  %56 = fmul float %52, %55
  %57 = fadd float %49, %56
  %58 = fmul float %33, %57
  store float %58, float* %54, align 4, !tbaa !6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %indvars.iv30
  br i1 %exitcond, label %._crit_edge, label %41

._crit_edge:                                      ; preds = %41
  %59 = fmul float %28, %33
  %60 = load float* %25, align 4, !tbaa !6
  %61 = fmul float %59, %60
  store float %61, float* %25, align 4, !tbaa !6
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  %indvars.iv.next31 = add nuw nsw i32 %indvars.iv30, 1
  %exitcond35 = icmp eq i32 %29, %2
  br i1 %exitcond35, label %._crit_edge16, label %.lr.ph

._crit_edge16:                                    ; preds = %._crit_edge, %20
  %62 = phi float [ %28, %20 ], [ %61, %._crit_edge ]
  %63 = getelementptr inbounds float** %dtheta, i64 %indvars.iv44
  %64 = load float** %63, align 8, !tbaa !2
  %65 = getelementptr inbounds float* %64, i64 %19
  %66 = fsub float -0.000000e+00, %62
  store float %66, float* %65, align 4, !tbaa !6
  br i1 %5, label %.lr.ph19, label %._crit_edge20

.lr.ph19:                                         ; preds = %._crit_edge16, %.lr.ph19
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %.lr.ph19 ], [ 1, %._crit_edge16 ]
  %67 = add nsw i64 %indvars.iv36, -1
  %.sum5 = add nsw i64 %67, %19
  %68 = getelementptr inbounds float* %24, i64 %.sum5
  %69 = load float* %68, align 4, !tbaa !6
  %.sum6 = add nsw i64 %indvars.iv36, %19
  %70 = getelementptr inbounds float* %24, i64 %.sum6
  %71 = load float* %70, align 4, !tbaa !6
  %72 = fsub float %69, %71
  %73 = getelementptr inbounds float* %64, i64 %.sum6
  store float %72, float* %73, align 4, !tbaa !6
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  %lftr.wideiv38 = trunc i64 %indvars.iv36 to i32
  %exitcond39 = icmp eq i32 %lftr.wideiv38, %2
  br i1 %exitcond39, label %._crit_edge20, label %.lr.ph19

._crit_edge20:                                    ; preds = %.lr.ph19, %._crit_edge16
  %74 = fmul float %22, %8
  %75 = getelementptr inbounds float* %24, i64 %.sum2
  %76 = load float* %75, align 4, !tbaa !6
  %77 = fmul float %76, %74
  store float %77, float* %26, align 4, !tbaa !6
  br i1 %11, label %.lr.ph23, label %._crit_edge24

.lr.ph23:                                         ; preds = %._crit_edge20, %.lr.ph23
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %.lr.ph23 ], [ 1, %._crit_edge20 ]
  %78 = trunc i64 %indvars.iv40 to i32
  %79 = sitofp i32 %78 to float
  %80 = fadd float %22, %79
  %81 = sub nsw i64 %12, %indvars.iv40
  %82 = add nsw i64 %81, -2
  %.sum3 = add nsw i64 %82, %19
  %83 = getelementptr inbounds float* %24, i64 %.sum3
  %84 = load float* %83, align 4, !tbaa !6
  %85 = fmul float %80, %84
  %86 = trunc i64 %81 to i32
  %87 = sitofp i32 %86 to float
  %88 = fsub float %87, %22
  %89 = add nsw i64 %81, -1
  %.sum4 = add nsw i64 %89, %19
  %90 = getelementptr inbounds float* %24, i64 %.sum4
  %91 = load float* %90, align 4, !tbaa !6
  %92 = fmul float %88, %91
  %93 = fadd float %85, %92
  %94 = fmul float %8, %93
  store float %94, float* %90, align 4, !tbaa !6
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  %exitcond43 = icmp eq i32 %78, %9
  br i1 %exitcond43, label %._crit_edge24, label %.lr.ph23

._crit_edge24:                                    ; preds = %.lr.ph23, %._crit_edge20
  %95 = fmul float %28, %8
  %96 = load float* %25, align 4, !tbaa !6
  %97 = fmul float %95, %96
  store float %97, float* %25, align 4, !tbaa !6
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  %exitcond46 = icmp eq i64 %indvars.iv.next45, 3
  br i1 %exitcond46, label %.loopexit, label %20

.loopexit:                                        ; preds = %._crit_edge24, %14
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  %lftr.wideiv49 = trunc i64 %indvars.iv47 to i32
  %exitcond50 = icmp eq i32 %lftr.wideiv49, %13
  br i1 %exitcond50, label %._crit_edge29, label %14

._crit_edge29:                                    ; preds = %.loopexit, %0
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @make_dft_mod(float* nocapture %mod, float* nocapture readonly %data, i32 %ndata) #1 {
  %1 = icmp sgt i32 %ndata, 0
  br i1 %1, label %.preheader1.lr.ph, label %._crit_edge

.preheader1.lr.ph:                                ; preds = %0
  %2 = sitofp i32 %ndata to double
  %3 = add i32 %ndata, -1
  br label %.lr.ph6

.lr.ph6:                                          ; preds = %.preheader1.lr.ph, %._crit_edge7
  %indvars.iv15 = phi i64 [ 0, %.preheader1.lr.ph ], [ %indvars.iv.next16, %._crit_edge7 ]
  %4 = trunc i64 %indvars.iv15 to i32
  %5 = sitofp i32 %4 to double
  %6 = fmul double %5, 0x401921FB54442D18
  br label %8

.preheader:                                       ; preds = %._crit_edge7
  br i1 %1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %7 = add i32 %ndata, -1
  br label %35

; <label>:8                                       ; preds = %8, %.lr.ph6
  %indvars.iv11 = phi i64 [ 0, %.lr.ph6 ], [ %indvars.iv.next12, %8 ]
  %9 = phi <2 x float> [ zeroinitializer, %.lr.ph6 ], [ %28, %8 ]
  %10 = trunc i64 %indvars.iv11 to i32
  %11 = sitofp i32 %10 to double
  %12 = fmul double %6, %11
  %13 = fdiv double %12, %2
  %14 = fptrunc double %13 to float
  %15 = getelementptr inbounds float* %data, i64 %indvars.iv11
  %16 = load float* %15, align 4, !tbaa !6
  %17 = fpext float %16 to double
  %18 = fpext float %14 to double
  %19 = tail call double @cos(double %18) #7
  %20 = tail call double @sin(double %18) #7
  %21 = insertelement <2 x double> undef, double %17, i32 0
  %22 = insertelement <2 x double> %21, double %17, i32 1
  %23 = insertelement <2 x double> undef, double %20, i32 0
  %24 = insertelement <2 x double> %23, double %19, i32 1
  %25 = fmul <2 x double> %22, %24
  %26 = fpext <2 x float> %9 to <2 x double>
  %27 = fadd <2 x double> %26, %25
  %28 = fptrunc <2 x double> %27 to <2 x float>
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  %exitcond14 = icmp eq i32 %10, %3
  br i1 %exitcond14, label %._crit_edge7, label %8

._crit_edge7:                                     ; preds = %8
  %29 = extractelement <2 x float> %28, i32 1
  %30 = fmul float %29, %29
  %31 = extractelement <2 x float> %28, i32 0
  %32 = fmul float %31, %31
  %33 = fadd float %30, %32
  %34 = getelementptr inbounds float* %mod, i64 %indvars.iv15
  store float %33, float* %34, align 4, !tbaa !6
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  %exitcond18 = icmp eq i32 %4, %3
  br i1 %exitcond18, label %.preheader, label %.lr.ph6

; <label>:35                                      ; preds = %49, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.pre-phi, %49 ]
  %36 = getelementptr inbounds float* %mod, i64 %indvars.iv
  %37 = load float* %36, align 4, !tbaa !6
  %38 = fpext float %37 to double
  %39 = fcmp olt double %38, 1.000000e-07
  br i1 %39, label %40, label %._crit_edge19

._crit_edge19:                                    ; preds = %35
  %.pre20 = add nuw nsw i64 %indvars.iv, 1
  br label %49

; <label>:40                                      ; preds = %35
  %41 = add nsw i64 %indvars.iv, -1
  %42 = getelementptr inbounds float* %mod, i64 %41
  %43 = load float* %42, align 4, !tbaa !6
  %44 = add nuw nsw i64 %indvars.iv, 1
  %45 = getelementptr inbounds float* %mod, i64 %44
  %46 = load float* %45, align 4, !tbaa !6
  %47 = fadd float %43, %46
  %48 = fmul float %47, 5.000000e-01
  store float %48, float* %36, align 4, !tbaa !6
  br label %49

; <label>:49                                      ; preds = %._crit_edge19, %40
  %indvars.iv.next.pre-phi = phi i64 [ %.pre20, %._crit_edge19 ], [ %44, %40 ]
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %7
  br i1 %exitcond, label %._crit_edge, label %35

._crit_edge:                                      ; preds = %49, %0, %.preheader
  ret void
}

; Function Attrs: nounwind optsize readnone
declare double @cos(double) #4

; Function Attrs: nounwind optsize readnone
declare double @sin(double) #4

; Function Attrs: nounwind optsize ssp uwtable
define void @make_bspline_moduli(float** nocapture readonly %bsp_mod, i32 %nx, i32 %ny, i32 %nz, i32 %order) #1 {
  %1 = icmp sgt i32 %ny, %nz
  %2 = select i1 %1, i32 %ny, i32 %nz
  %3 = icmp slt i32 %2, %nx
  %nx. = select i1 %3, i32 %nx, i32 %2
  %4 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str4, i64 0, i64 0), i32 614, i32 %order, i32 4) #6
  %5 = bitcast i8* %4 to float*
  %6 = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str4, i64 0, i64 0), i32 615, i32 %order, i32 4) #6
  %7 = bitcast i8* %6 to float*
  %8 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str4, i64 0, i64 0), i32 616, i32 %nx., i32 4) #6
  %9 = bitcast i8* %8 to float*
  %10 = add i32 %order, -1
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds float* %5, i64 %11
  store float 0.000000e+00, float* %12, align 4, !tbaa !6
  %13 = getelementptr inbounds i8* %4, i64 4
  %14 = bitcast i8* %13 to float*
  store float 0.000000e+00, float* %14, align 4, !tbaa !6
  store float 1.000000e+00, float* %5, align 4, !tbaa !6
  %15 = icmp sgt i32 %order, 3
  br i1 %15, label %.lr.ph15, label %._crit_edge20

.lr.ph15:                                         ; preds = %0, %._crit_edge16
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %._crit_edge16 ], [ 3, %0 ]
  %indvars.iv34 = phi i32 [ %indvars.iv.next35, %._crit_edge16 ], [ 2, %0 ]
  %16 = trunc i64 %indvars.iv38 to i32
  %17 = sitofp i32 %16 to double
  %18 = fadd double %17, -1.000000e+00
  %19 = fdiv double 1.000000e+00, %18
  %20 = fptrunc double %19 to float
  %21 = add nsw i64 %indvars.iv38, -1
  %22 = getelementptr inbounds float* %5, i64 %21
  store float 0.000000e+00, float* %22, align 4, !tbaa !6
  br label %23

; <label>:23                                      ; preds = %23, %.lr.ph15
  %indvars.iv32 = phi i64 [ 1, %.lr.ph15 ], [ %indvars.iv.next33, %23 ]
  %24 = trunc i64 %indvars.iv32 to i32
  %25 = sitofp i32 %24 to float
  %26 = sub nsw i64 %indvars.iv38, %indvars.iv32
  %27 = add nsw i64 %26, -2
  %28 = getelementptr inbounds float* %5, i64 %27
  %29 = load float* %28, align 4, !tbaa !6
  %30 = fmul float %25, %29
  %31 = trunc i64 %26 to i32
  %32 = sitofp i32 %31 to float
  %33 = add nsw i64 %26, -1
  %34 = getelementptr inbounds float* %5, i64 %33
  %35 = load float* %34, align 4, !tbaa !6
  %36 = fmul float %32, %35
  %37 = fadd float %30, %36
  %38 = fmul float %20, %37
  store float %38, float* %34, align 4, !tbaa !6
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  %lftr.wideiv36 = trunc i64 %indvars.iv.next33 to i32
  %exitcond37 = icmp eq i32 %lftr.wideiv36, %indvars.iv34
  br i1 %exitcond37, label %._crit_edge16, label %23

._crit_edge16:                                    ; preds = %23
  %39 = load float* %5, align 4, !tbaa !6
  %40 = fmul float %20, %39
  store float %40, float* %5, align 4, !tbaa !6
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  %indvars.iv.next35 = add nuw nsw i32 %indvars.iv34, 1
  %exitcond41 = icmp eq i32 %16, %10
  br i1 %exitcond41, label %._crit_edge20, label %.lr.ph15

._crit_edge20:                                    ; preds = %._crit_edge16, %0
  %41 = phi float [ 1.000000e+00, %0 ], [ %40, %._crit_edge16 ]
  %42 = fsub float -0.000000e+00, %41
  store float %42, float* %7, align 4, !tbaa !6
  %43 = icmp sgt i32 %order, 1
  br i1 %43, label %.lr.ph11, label %._crit_edge12

.lr.ph11:                                         ; preds = %._crit_edge20, %.lr.ph11
  %indvars.iv28 = phi i64 [ %indvars.iv.next29, %.lr.ph11 ], [ 1, %._crit_edge20 ]
  %44 = add nsw i64 %indvars.iv28, -1
  %45 = getelementptr inbounds float* %5, i64 %44
  %46 = load float* %45, align 4, !tbaa !6
  %47 = getelementptr inbounds float* %5, i64 %indvars.iv28
  %48 = load float* %47, align 4, !tbaa !6
  %49 = fsub float %46, %48
  %50 = getelementptr inbounds float* %7, i64 %indvars.iv28
  store float %49, float* %50, align 4, !tbaa !6
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  %lftr.wideiv30 = trunc i64 %indvars.iv28 to i32
  %exitcond31 = icmp eq i32 %lftr.wideiv30, %10
  br i1 %exitcond31, label %._crit_edge12, label %.lr.ph11

._crit_edge12:                                    ; preds = %.lr.ph11, %._crit_edge20
  %51 = sitofp i32 %10 to double
  %52 = fdiv double 1.000000e+00, %51
  %53 = fptrunc double %52 to float
  store float 0.000000e+00, float* %12, align 4, !tbaa !6
  %54 = icmp sgt i32 %10, 1
  br i1 %54, label %.lr.ph7, label %._crit_edge8

.lr.ph7:                                          ; preds = %._crit_edge12
  %55 = sext i32 %order to i64
  %56 = add i32 %order, -2
  br label %57

; <label>:57                                      ; preds = %57, %.lr.ph7
  %indvars.iv24 = phi i64 [ 1, %.lr.ph7 ], [ %indvars.iv.next25, %57 ]
  %58 = trunc i64 %indvars.iv24 to i32
  %59 = sitofp i32 %58 to float
  %60 = sub nsw i64 %55, %indvars.iv24
  %61 = add nsw i64 %60, -2
  %62 = getelementptr inbounds float* %5, i64 %61
  %63 = load float* %62, align 4, !tbaa !6
  %64 = fmul float %59, %63
  %65 = trunc i64 %60 to i32
  %66 = sitofp i32 %65 to float
  %67 = add nsw i64 %60, -1
  %68 = getelementptr inbounds float* %5, i64 %67
  %69 = load float* %68, align 4, !tbaa !6
  %70 = fmul float %66, %69
  %71 = fadd float %64, %70
  %72 = fmul float %53, %71
  store float %72, float* %68, align 4, !tbaa !6
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1
  %exitcond27 = icmp eq i32 %58, %56
  br i1 %exitcond27, label %._crit_edge8, label %57

._crit_edge8:                                     ; preds = %57, %._crit_edge12
  %73 = load float* %5, align 4, !tbaa !6
  %74 = fmul float %53, %73
  store float %74, float* %5, align 4, !tbaa !6
  %75 = icmp sgt i32 %nx., 0
  br i1 %75, label %.lr.ph4, label %.preheader

.lr.ph4:                                          ; preds = %._crit_edge8
  %76 = icmp sgt i32 %nz, %ny
  %smax = select i1 %76, i32 %nz, i32 %ny
  %77 = icmp sgt i32 %smax, %nx
  %smax23 = select i1 %77, i32 %smax, i32 %nx
  %78 = add i32 %smax23, -1
  %79 = zext i32 %78 to i64
  %80 = shl nuw nsw i64 %79, 2
  %81 = add nuw nsw i64 %80, 4
  call void @llvm.memset.p0i8.i64(i8* %8, i8 0, i64 %81, i32 4, i1 false)
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph4, %._crit_edge8
  %82 = icmp slt i32 %order, 1
  br i1 %82, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %.preheader ]
  %83 = add nsw i64 %indvars.iv, -1
  %84 = getelementptr inbounds float* %5, i64 %83
  %85 = bitcast float* %84 to i32*
  %86 = load i32* %85, align 4, !tbaa !6
  %87 = getelementptr inbounds float* %9, i64 %indvars.iv
  %88 = bitcast float* %87 to i32*
  store i32 %86, i32* %88, align 4, !tbaa !6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %order
  br i1 %exitcond, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %89 = load float** %bsp_mod, align 8, !tbaa !2
  tail call void @make_dft_mod(float* %89, float* %9, i32 %nx) #8
  %90 = getelementptr inbounds float** %bsp_mod, i64 1
  %91 = load float** %90, align 8, !tbaa !2
  tail call void @make_dft_mod(float* %91, float* %9, i32 %ny) #8
  %92 = getelementptr inbounds float** %bsp_mod, i64 2
  %93 = load float** %92, align 8, !tbaa !2
  tail call void @make_dft_mod(float* %93, float* %9, i32 %nz) #8
  tail call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str4, i64 0, i64 0), i32 648, i8* %4) #6
  tail call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str4, i64 0, i64 0), i32 649, i8* %6) #6
  tail call void @save_free(i8* getelementptr inbounds ([9 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str4, i64 0, i64 0), i32 650, i8* %8) #6
  ret void
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #3

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @init_pme(%struct.__sFILE* %log, %struct.t_commrec* readonly %cr, i32 %nkx, i32 %nky, i32 %nkz, i32 %pme_order, i32 %homenr, i32 %bOptFFT, i32 %ewald_geometry) #1 {
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([58 x i8]* @.str7, i64 0, i64 0)) #6
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([38 x i8]* @.str8, i64 0, i64 0), i64 37, i64 1, %struct.__sFILE* %log)
  tail call void @please_cite(%struct.__sFILE* %log, i8* getelementptr inbounds ([10 x i8]* @.str9, i64 0, i64 0)) #6
  %2 = icmp eq i32 %ewald_geometry, 1
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = tail call i64 @fwrite(i8* getelementptr inbounds ([65 x i8]* @.str10, i64 0, i64 0), i64 64, i64 1, %struct.__sFILE* %log)
  tail call void @please_cite(%struct.__sFILE* %log, i8* getelementptr inbounds ([11 x i8]* @.str11, i64 0, i64 0)) #6
  br label %5

; <label>:5                                       ; preds = %3, %0
  %6 = icmp eq %struct.t_commrec* %cr, null
  br i1 %6, label %.thread, label %7

; <label>:7                                       ; preds = %5
  %8 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %9 = load i32* %8, align 4, !tbaa !10
  %10 = icmp sgt i32 %9, 1
  %11 = zext i1 %10 to i32
  br i1 %10, label %12, label %.thread

; <label>:12                                      ; preds = %7
  %13 = tail call i64 @fwrite(i8* getelementptr inbounds ([28 x i8]* @.str12, i64 0, i64 0), i64 27, i64 1, %struct.__sFILE* %log)
  %14 = load i32* %8, align 4, !tbaa !10
  %15 = srem i32 %nkx, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %.thread, label %17

; <label>:17                                      ; preds = %12
  %18 = tail call i64 @fwrite(i8* getelementptr inbounds ([69 x i8]* @.str13, i64 0, i64 0), i64 68, i64 1, %struct.__sFILE* %log)
  br label %.thread

.thread:                                          ; preds = %5, %12, %17, %7
  %19 = phi i32 [ %11, %12 ], [ %11, %17 ], [ %11, %7 ], [ 0, %5 ]
  %20 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str14, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str4, i64 0, i64 0), i32 694, i32 %nkx, i32 4) #6
  store i8* %20, i8** bitcast ([3 x float*]* @bsp_mod to i8**), align 16, !tbaa !2
  %21 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str15, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str4, i64 0, i64 0), i32 695, i32 %nky, i32 4) #6
  store i8* %21, i8** bitcast (float** getelementptr inbounds ([3 x float*]* @bsp_mod, i64 0, i64 1) to i8**), align 8, !tbaa !2
  %22 = tail call i8* @save_calloc(i8* getelementptr inbounds ([12 x i8]* @.str16, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str4, i64 0, i64 0), i32 696, i32 %nkz, i32 4) #6
  store i8* %22, i8** bitcast (float** getelementptr inbounds ([3 x float*]* @bsp_mod, i64 0, i64 2) to i8**), align 16, !tbaa !2
  %23 = mul nsw i32 %homenr, %pme_order
  br label %24

; <label>:24                                      ; preds = %24, %.thread
  %indvars.iv13 = phi i64 [ 0, %.thread ], [ %indvars.iv.next14, %24 ]
  %25 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str4, i64 0, i64 0), i32 698, i32 %23, i32 4) #6
  %26 = getelementptr inbounds [3 x float*]* @theta, i64 0, i64 %indvars.iv13
  %27 = bitcast float** %26 to i8**
  store i8* %25, i8** %27, align 8, !tbaa !2
  %28 = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str4, i64 0, i64 0), i32 699, i32 %23, i32 4) #6
  %29 = getelementptr inbounds [3 x float*]* @dtheta, i64 0, i64 %indvars.iv13
  %30 = bitcast float** %29 to i8**
  store i8* %28, i8** %30, align 8, !tbaa !2
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  %exitcond = icmp eq i64 %indvars.iv.next14, 3
  br i1 %exitcond, label %31, label %24

; <label>:31                                      ; preds = %24
  %32 = tail call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str19, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str4, i64 0, i64 0), i32 701, i32 %homenr, i32 12) #6
  store i8* %32, i8** bitcast ([3 x float]** @fractx to i8**), align 8, !tbaa !2
  %33 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str4, i64 0, i64 0), i32 703, i32 %homenr, i32 12) #6
  store i8* %33, i8** bitcast ([3 x i32]** @idx to i8**), align 8, !tbaa !2
  %34 = mul nsw i32 %nkx, 3
  %35 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str4, i64 0, i64 0), i32 704, i32 %34, i32 4) #6
  store i8* %35, i8** bitcast (i32** @nnx to i8**), align 8, !tbaa !2
  %36 = mul nsw i32 %nky, 3
  %37 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str4, i64 0, i64 0), i32 705, i32 %36, i32 4) #6
  store i8* %37, i8** bitcast (i32** @nny to i8**), align 8, !tbaa !2
  %38 = mul nsw i32 %nkz, 3
  %39 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([63 x i8]* @.str4, i64 0, i64 0), i32 706, i32 %38, i32 4) #6
  store i8* %39, i8** bitcast (i32** @nnz to i8**), align 8, !tbaa !2
  %40 = icmp sgt i32 %nkx, 0
  %41 = bitcast i8* %39 to i32*
  br i1 %40, label %.lr.ph7, label %.preheader1

.lr.ph7:                                          ; preds = %31
  %42 = load i32** @nnx, align 8, !tbaa !2
  %43 = sext i32 %34 to i64
  br label %47

.preheader1:                                      ; preds = %47, %31
  %44 = icmp sgt i32 %nky, 0
  br i1 %44, label %.lr.ph4, label %.preheader

.lr.ph4:                                          ; preds = %.preheader1
  %45 = load i32** @nny, align 8, !tbaa !2
  %46 = sext i32 %36 to i64
  br label %54

; <label>:47                                      ; preds = %.lr.ph7, %47
  %indvars.iv11 = phi i64 [ 0, %.lr.ph7 ], [ %indvars.iv.next12, %47 ]
  %48 = trunc i64 %indvars.iv11 to i32
  %49 = srem i32 %48, %nkx
  %50 = getelementptr inbounds i32* %42, i64 %indvars.iv11
  store i32 %49, i32* %50, align 4, !tbaa !8
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  %51 = icmp slt i64 %indvars.iv.next12, %43
  br i1 %51, label %47, label %.preheader1

.preheader:                                       ; preds = %54, %.preheader1
  %52 = icmp sgt i32 %nkz, 0
  br i1 %52, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %53 = sext i32 %38 to i64
  br label %59

; <label>:54                                      ; preds = %.lr.ph4, %54
  %indvars.iv9 = phi i64 [ 0, %.lr.ph4 ], [ %indvars.iv.next10, %54 ]
  %55 = trunc i64 %indvars.iv9 to i32
  %56 = srem i32 %55, %nky
  %57 = getelementptr inbounds i32* %45, i64 %indvars.iv9
  store i32 %56, i32* %57, align 4, !tbaa !8
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1
  %58 = icmp slt i64 %indvars.iv.next10, %46
  br i1 %58, label %54, label %.preheader

; <label>:59                                      ; preds = %.lr.ph, %59
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %59 ]
  %60 = trunc i64 %indvars.iv to i32
  %61 = srem i32 %60, %nkz
  %62 = getelementptr inbounds i32* %41, i64 %indvars.iv
  store i32 %61, i32* %62, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %63 = icmp slt i64 %indvars.iv.next, %53
  br i1 %63, label %59, label %._crit_edge

._crit_edge:                                      ; preds = %59, %.preheader
  %64 = tail call %struct.t_fftgrid* @mk_fftgrid(%struct.__sFILE* %log, i32 %19, i32 %nkx, i32 %nky, i32 %nkz, i32 %bOptFFT) #6
  store %struct.t_fftgrid* %64, %struct.t_fftgrid** @grid, align 8, !tbaa !2
  tail call void @make_bspline_moduli(float** getelementptr inbounds ([3 x float*]* @bsp_mod, i64 0, i64 0), i32 %nkx, i32 %nky, i32 %nkz, i32 %pme_order) #8
  ret void
}

; Function Attrs: optsize
declare void @please_cite(%struct.__sFILE*, i8*) #3

; Function Attrs: optsize
declare %struct.t_fftgrid* @mk_fftgrid(%struct.__sFILE*, i32, i32, i32, i32, i32) #3

; Function Attrs: nounwind optsize ssp uwtable
define %struct.t_fftgrid* @spread_on_grid(%struct.__sFILE* nocapture readnone %logfile, i32 %homenr, i32 %pme_order, [3 x float]* nocapture readonly %x, float* nocapture readonly %charge, [3 x float]* nocapture readonly %box, i32 %bGatherOnly) #1 {
  %nx = alloca i32, align 4
  %ny = alloca i32, align 4
  %nz = alloca i32, align 4
  %la2 = alloca i32, align 4
  %la12 = alloca i32, align 4
  %ptr = alloca float*, align 8
  %1 = load %struct.t_fftgrid** @grid, align 8, !tbaa !2
  call void @unpack_fftgrid(%struct.t_fftgrid* %1, i32* %nx, i32* %ny, i32* %nz, i32* %la2, i32* %la12, i32 1, float** %ptr) #6
  call void @calc_recipbox([3 x float]* %box, [3 x float]* getelementptr inbounds ([3 x [3 x float]]* @recipbox, i64 0, i64 0)) #8
  %2 = icmp eq i32 %bGatherOnly, 0
  br i1 %2, label %3, label %18

; <label>:3                                       ; preds = %0
  %4 = load [3 x float]** @fractx, align 8, !tbaa !2
  %5 = load [3 x i32]** @idx, align 8, !tbaa !2
  %6 = load i32* %nx, align 4, !tbaa !8
  %7 = load i32* %ny, align 4, !tbaa !8
  %8 = load i32* %nz, align 4, !tbaa !8
  %9 = load i32** @nnx, align 8, !tbaa !2
  %10 = load i32** @nny, align 8, !tbaa !2
  %11 = load i32** @nnz, align 8, !tbaa !2
  call void @calc_idx(i32 %homenr, [3 x float]* getelementptr inbounds ([3 x [3 x float]]* @recipbox, i64 0, i64 0), [3 x float]* %x, [3 x float]* %4, [3 x i32]* %5, i32 %6, i32 %7, i32 %8, i32* %9, i32* %10, i32* %11) #8
  %12 = load [3 x float]** @fractx, align 8, !tbaa !2
  call void @make_bsplines(float** getelementptr inbounds ([3 x float*]* @theta, i64 0, i64 0), float** getelementptr inbounds ([3 x float*]* @dtheta, i64 0, i64 0), i32 %pme_order, i32 undef, i32 undef, i32 undef, [3 x float]* %12, [3 x i32]* undef, float* %charge, i32 %homenr) #8
  %13 = load %struct.t_fftgrid** @grid, align 8, !tbaa !2
  %14 = load [3 x i32]** @idx, align 8, !tbaa !2
  %15 = load i32** @nnx, align 8, !tbaa !2
  %16 = load i32** @nny, align 8, !tbaa !2
  %17 = load i32** @nnz, align 8, !tbaa !2
  call void @spread_q_bsplines(%struct.t_fftgrid* %13, [3 x i32]* %14, float* %charge, float** getelementptr inbounds ([3 x float*]* @theta, i64 0, i64 0), i32 %homenr, i32 %pme_order, i32* %15, i32* %16, i32* %17) #8
  br label %18

; <label>:18                                      ; preds = %0, %3
  %19 = load %struct.t_fftgrid** @grid, align 8, !tbaa !2
  ret %struct.t_fftgrid* %19
}

; Function Attrs: nounwind optsize ssp uwtable
define float @do_pme(%struct.__sFILE* nocapture readnone %logfile, i32 %bVerbose, %struct.t_inputrec* nocapture readonly %ir, [3 x float]* nocapture readonly %x, [3 x float]* nocapture %f, float* nocapture readonly %charge, [3 x float]* nocapture readonly %box, %struct.t_commrec* %cr, %struct.t_nsborder* nocapture readonly %nsb, %struct.t_nrnb* nocapture %nrnb, [3 x float]* nocapture %vir, float %ewaldcoeff, i32 %bGatherOnly) #1 {
  %nx = alloca i32, align 4
  %ny = alloca i32, align 4
  %nz = alloca i32, align 4
  %la12 = alloca i32, align 4
  %la2 = alloca i32, align 4
  %ptr = alloca float*, align 8
  %1 = load %struct.t_fftgrid** @grid, align 8, !tbaa !2
  call void @unpack_fftgrid(%struct.t_fftgrid* %1, i32* %nx, i32* %ny, i32* %nz, i32* %la2, i32* %la12, i32 1, float** %ptr) #6
  %2 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 0
  %3 = load i32* %2, align 4, !tbaa !16
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %4
  %6 = load i32* %5, align 4, !tbaa !8
  %7 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 20
  %8 = load i32* %7, align 4, !tbaa !18
  %9 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %4
  %10 = load i32* %9, align 4, !tbaa !8
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [3 x float]* %x, i64 %11
  %13 = getelementptr inbounds float* %charge, i64 %11
  %14 = call %struct.t_fftgrid* @spread_on_grid(%struct.__sFILE* undef, i32 %6, i32 %8, [3 x float]* %12, float* %13, [3 x float]* %box, i32 %bGatherOnly) #8
  %15 = icmp eq i32 %bGatherOnly, 0
  br i1 %15, label %16, label %._crit_edge

._crit_edge:                                      ; preds = %0
  %.pre1 = load %struct.t_fftgrid** @grid, align 8, !tbaa !2
  br label %110

; <label>:16                                      ; preds = %0
  %17 = load i32* %7, align 4, !tbaa !18
  %18 = mul nsw i32 %17, %17
  %19 = mul nsw i32 %18, %17
  %20 = load i32* %2, align 4, !tbaa !16
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %21
  %23 = load i32* %22, align 4, !tbaa !8
  %24 = mul nsw i32 %19, %23
  %25 = sitofp i32 %24 to double
  %26 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 81
  %27 = load double* %26, align 8, !tbaa !21
  %28 = fadd double %27, %25
  store double %28, double* %26, align 8, !tbaa !21
  %29 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %30 = load i32* %29, align 4, !tbaa !10
  %31 = icmp sgt i32 %30, 1
  br i1 %31, label %36, label %32

; <label>:32                                      ; preds = %16
  %33 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %34 = load i32* %33, align 4, !tbaa !12
  %35 = icmp sgt i32 %34, 1
  br i1 %35, label %36, label %37

; <label>:36                                      ; preds = %32, %16
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([48 x i8]* @.str1, i64 0, i64 0)) #6
  br label %37

; <label>:37                                      ; preds = %36, %32
  %38 = load %struct.t_fftgrid** @grid, align 8, !tbaa !2
  call void @gmxfft3D(%struct.t_fftgrid* %38, i32 -1, %struct.t_commrec* %cr) #6
  %39 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %40 = load float* %39, align 4, !tbaa !6
  %41 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %42 = load float* %41, align 4, !tbaa !6
  %43 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %44 = load float* %43, align 4, !tbaa !6
  %45 = fmul float %42, %44
  %46 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %47 = load float* %46, align 4, !tbaa !6
  %48 = getelementptr inbounds [3 x float]* %box, i64 1, i64 2
  %49 = load float* %48, align 4, !tbaa !6
  %50 = fmul float %47, %49
  %51 = fsub float %45, %50
  %52 = fmul float %40, %51
  %53 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %54 = load float* %53, align 4, !tbaa !6
  %55 = getelementptr inbounds [3 x float]* %box, i64 0, i64 1
  %56 = load float* %55, align 4, !tbaa !6
  %57 = fmul float %44, %56
  %58 = getelementptr inbounds [3 x float]* %box, i64 0, i64 2
  %59 = load float* %58, align 4, !tbaa !6
  %60 = fmul float %47, %59
  %61 = fsub float %57, %60
  %62 = fmul float %54, %61
  %63 = fsub float %52, %62
  %64 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %65 = load float* %64, align 4, !tbaa !6
  %66 = fmul float %49, %56
  %67 = fmul float %42, %59
  %68 = fsub float %66, %67
  %69 = fmul float %65, %68
  %70 = fadd float %69, %63
  %71 = load %struct.t_fftgrid** @grid, align 8, !tbaa !2
  %72 = call float @solve_pme(%struct.t_fftgrid* %71, float %ewaldcoeff, float %70, float** getelementptr inbounds ([3 x float*]* @bsp_mod, i64 0, i64 0), [3 x float]* getelementptr inbounds ([3 x [3 x float]]* @recipbox, i64 0, i64 0), [3 x float]* %vir, %struct.t_commrec* %cr) #8
  store float %72, float* @do_pme.energy, align 4, !tbaa !6
  %73 = load i32* %nx, align 4, !tbaa !8
  %74 = load i32* %ny, align 4, !tbaa !8
  %75 = mul nsw i32 %74, %73
  %76 = load i32* %nz, align 4, !tbaa !8
  %77 = mul nsw i32 %75, %76
  %78 = sitofp i32 %77 to double
  %79 = fmul double %78, 5.000000e-01
  %80 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 86
  %81 = load double* %80, align 8, !tbaa !21
  %82 = fadd double %81, %79
  store double %82, double* %80, align 8, !tbaa !21
  %83 = load %struct.t_fftgrid** @grid, align 8, !tbaa !2
  call void @gmxfft3D(%struct.t_fftgrid* %83, i32 1, %struct.t_commrec* %cr) #6
  %84 = load i32* %29, align 4, !tbaa !10
  %85 = icmp sgt i32 %84, 1
  br i1 %85, label %90, label %86

; <label>:86                                      ; preds = %37
  %87 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %88 = load i32* %87, align 4, !tbaa !12
  %89 = icmp sgt i32 %88, 1
  br i1 %89, label %90, label %91

; <label>:90                                      ; preds = %86, %37
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([48 x i8]* @.str1, i64 0, i64 0)) #6
  %.pre = load i32* %29, align 4, !tbaa !10
  br label %91

; <label>:91                                      ; preds = %90, %86
  %92 = phi i32 [ %.pre, %90 ], [ %84, %86 ]
  %93 = load %struct.t_fftgrid** @grid, align 8, !tbaa !2
  %94 = getelementptr inbounds %struct.t_fftgrid* %93, i64 0, i32 11
  %95 = load i32* %94, align 4, !tbaa !23
  %96 = sitofp i32 %95 to double
  %97 = sitofp i32 %95 to float
  %98 = fpext float %97 to double
  %99 = call double @log(double %98) #7
  %100 = fmul double %96, %99
  %101 = sitofp i32 %92 to double
  %102 = fmul double %101, 0x3FE62E42FEFA39EF
  %103 = fdiv double %100, %102
  %104 = fptosi double %103 to i32
  %105 = shl nsw i32 %104, 1
  %106 = sitofp i32 %105 to double
  %107 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 84
  %108 = load double* %107, align 8, !tbaa !21
  %109 = fadd double %108, %106
  store double %109, double* %107, align 8, !tbaa !21
  br label %110

; <label>:110                                     ; preds = %._crit_edge, %91
  %111 = phi %struct.t_fftgrid* [ %.pre1, %._crit_edge ], [ %93, %91 ]
  %112 = load [3 x i32]** @idx, align 8, !tbaa !2
  %113 = load i32* %2, align 4, !tbaa !16
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %114
  %116 = load i32* %115, align 4, !tbaa !8
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [3 x float]* %f, i64 %117
  %119 = getelementptr inbounds float* %charge, i64 %117
  %120 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %114
  %121 = load i32* %120, align 4, !tbaa !8
  %122 = load i32* %7, align 4, !tbaa !18
  %123 = load i32** @nnx, align 8, !tbaa !2
  %124 = load i32** @nny, align 8, !tbaa !2
  %125 = load i32** @nnz, align 8, !tbaa !2
  call void @gather_f_bsplines(%struct.t_fftgrid* %111, [3 x float]* getelementptr inbounds ([3 x [3 x float]]* @recipbox, i64 0, i64 0), [3 x i32]* %112, [3 x float]* %118, float* %119, float** getelementptr inbounds ([3 x float*]* @theta, i64 0, i64 0), float** getelementptr inbounds ([3 x float*]* @dtheta, i64 0, i64 0), i32 %121, i32 %122, i32* %123, i32* %124, i32* %125) #8
  %126 = load i32* %7, align 4, !tbaa !18
  %127 = mul nsw i32 %126, %126
  %128 = mul nsw i32 %127, %126
  %129 = load i32* %2, align 4, !tbaa !16
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %130
  %132 = load i32* %131, align 4, !tbaa !8
  %133 = mul nsw i32 %128, %132
  %134 = sitofp i32 %133 to double
  %135 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 83
  %136 = load double* %135, align 8, !tbaa !21
  %137 = fadd double %136, %134
  store double %137, double* %135, align 8, !tbaa !21
  %138 = load float* @do_pme.energy, align 4, !tbaa !6
  ret float %138
}

; Function Attrs: optsize
declare void @gmxfft3D(%struct.t_fftgrid*, i32, %struct.t_commrec*) #3

; Function Attrs: nounwind optsize readnone
declare double @log(double) #4

declare float @fabsf(float)

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

attributes #0 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { nounwind optsize readnone }
attributes #8 = { optsize }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"any pointer", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"float", !4, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !4, i64 0}
!10 = !{!11, !9, i64 4}
!11 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20}
!12 = !{!11, !9, i64 20}
!13 = !{!14, !7, i64 0}
!14 = !{!"", !7, i64 0, !7, i64 4}
!15 = !{!14, !7, i64 4}
!16 = !{!17, !9, i64 0}
!17 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !4, i64 28, !4, i64 1052, !4, i64 2076, !4, i64 3100}
!18 = !{!19, !9, i64 80}
!19 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !9, i64 80, !7, i64 84, !9, i64 88, !9, i64 92, !9, i64 96, !9, i64 100, !9, i64 104, !9, i64 108, !9, i64 112, !9, i64 116, !7, i64 120, !4, i64 124, !4, i64 160, !9, i64 196, !7, i64 200, !7, i64 204, !9, i64 208, !7, i64 212, !7, i64 216, !9, i64 220, !7, i64 224, !7, i64 228, !7, i64 232, !9, i64 236, !7, i64 240, !7, i64 244, !9, i64 248, !7, i64 252, !7, i64 256, !7, i64 260, !7, i64 264, !7, i64 268, !9, i64 272, !9, i64 276, !9, i64 280, !7, i64 284, !7, i64 288, !7, i64 292, !9, i64 296, !7, i64 300, !7, i64 304, !9, i64 308, !9, i64 312, !9, i64 316, !9, i64 320, !9, i64 324, !7, i64 328, !9, i64 332, !7, i64 336, !7, i64 340, !9, i64 344, !7, i64 348, !9, i64 352, !9, i64 356, !9, i64 360, !9, i64 364, !7, i64 368, !7, i64 372, !7, i64 376, !7, i64 380, !20, i64 384, !4, i64 448, !4, i64 520}
!20 = !{!"", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !3, i64 16, !3, i64 24, !3, i64 32, !3, i64 40, !3, i64 48, !3, i64 56}
!21 = !{!22, !22, i64 0}
!22 = !{!"double", !4, i64 0}
!23 = !{!24, !9, i64 56}
!24 = !{!"", !3, i64 0, !3, i64 8, !3, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56}
