; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/pppm.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_fftgrid = type { float*, float*, float*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.t_nrnb = type { [129 x double] }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }
%struct.t_fft_c = type { float, float }
%struct.t_nsborder = type { i32, i32, i32, i32, i32, i32, i32, [256 x i32], [256 x i32], [256 x i32], [256 x i32] }
%struct.t_inputrec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, float, [3 x [3 x float]], [3 x [3 x float]], i32, float, float, i32, float, float, i32, float, float, float, i32, float, float, i32, float, float, float, float, float, i32, i32, i32, float, float, float, i32, float, float, i32, i32, i32, i32, i32, float, i32, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, %struct.t_grpopts, [3 x %struct.t_cosines], [3 x %struct.t_cosines] }
%struct.t_grpopts = type { i32, i32, i32, i32, float*, float*, float*, [3 x float]*, [3 x i32]*, i32* }
%struct.t_cosines = type { i32, float*, float* }

@.str = private unnamed_addr constant [34 x i8] c"iatom = %d, it = %d, x=%f, ttt=%f\00", align 1
@spread_q.bFirst = internal unnamed_addr global i1 false
@spread_q.nnx = internal global i32* null, align 8
@spread_q.nny = internal global i32* null, align 8
@spread_q.nnz = internal global i32* null, align 8
@.str1 = private unnamed_addr constant [58 x i8] c"Spreading Charges using Triangle Shaped on %dx%dx%d grid\0A\00", align 1
@.str2 = private unnamed_addr constant [23 x i8] c"invh = %10g,%10g,%10g\0A\00", align 1
@.str3 = private unnamed_addr constant [6 x i8] c"nTest\00", align 1
@.str4 = private unnamed_addr constant [64 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/pppm.c\00", align 1
@.str5 = private unnamed_addr constant [59 x i8] c"PPPM used, but GROMACS was compiled without FFTW support!\0A\00", align 1
@.str6 = private unnamed_addr constant [29 x i8] c"Initializing parallel PPPM.\0A\00", align 1
@.str7 = private unnamed_addr constant [59 x i8] c"Will use the PPPM algorithm for long-range electrostatics\0A\00", align 1
@beta = internal global [3 x float] zeroinitializer, align 4
@.str8 = private unnamed_addr constant [26 x i8] c"Generating Ghat function\0A\00", align 1
@.str9 = private unnamed_addr constant [27 x i8] c"Grid size is %d x %d x %d\0A\00", align 1
@.str10 = private unnamed_addr constant [49 x i8] c"Grid must be at least 4 points in all directions\00", align 1
@ghat = internal unnamed_addr global float*** null, align 8
@.str11 = private unnamed_addr constant [14 x i8] c"generghat.xvg\00", align 1
@__stderrp = external global %struct.__sFILE*
@.str12 = private unnamed_addr constant [31 x i8] c"Reading Ghat function from %s\0A\00", align 1
@.str13 = private unnamed_addr constant [71 x i8] c"rcoulomb_switch = %10.3e  rcoulomb = %10.3e  r1 = %10.3e  rc = %10.3e\0A\00", align 1
@.str14 = private unnamed_addr constant [79 x i8] c"Cut-off lengths in tpb file and Ghat file %s do not match\0ACheck your log file!\00", align 1
@.str15 = private unnamed_addr constant [4 x i8] c"box\00", align 1
@.str16 = private unnamed_addr constant [13 x i8] c"grid-spacing\00", align 1
@.str17 = private unnamed_addr constant [10 x i8] c"grid size\00", align 1
@.str18 = private unnamed_addr constant [73 x i8] c"Box sizes in tpb file and Ghat file %s do not match\0ACheck your log file!\00", align 1
@.str19 = private unnamed_addr constant [31 x i8] c"porder = %d, should be 2 in %s\00", align 1
@.str20 = private unnamed_addr constant [14 x i8] c"optimghat.xvg\00", align 1
@grid = internal unnamed_addr global %struct.t_fftgrid* null, align 8
@.str21 = private unnamed_addr constant [5 x i8] c"*nnx\00", align 1
@.str22 = private unnamed_addr constant [5 x i8] c"*nny\00", align 1
@.str23 = private unnamed_addr constant [5 x i8] c"*nnz\00", align 1
@gather_f.bFirst = internal unnamed_addr global i1 false
@gather_f.nnx = internal global i32* null, align 8
@gather_f.nny = internal global i32* null, align 8
@gather_f.nnz = internal global i32* null, align 8
@gather_f.JCXYZ = internal global [81 x i32] zeroinitializer, align 16
@.str24 = private unnamed_addr constant [57 x i8] c"Gathering Forces using Triangle Shaped on %dx%dx%d grid\0A\00", align 1
@.str25 = private unnamed_addr constant [23 x i8] c"beta = %10g,%10g,%10g\0A\00", align 1
@.str26 = private unnamed_addr constant [23 x i8] c"c1   = %10g,%10g,%10g\0A\00", align 1
@.str27 = private unnamed_addr constant [23 x i8] c"c2   = %10g,%10g,%10g\0A\00", align 1

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
define void @calc_invh(float* nocapture readonly %box, i32 %nx, i32 %ny, i32 %nz, float* nocapture %invh) #1 {
  %1 = sitofp i32 %nx to float
  %2 = load float* %box, align 4, !tbaa !2
  %3 = fdiv float %1, %2
  store float %3, float* %invh, align 4, !tbaa !2
  %4 = sitofp i32 %ny to float
  %5 = getelementptr inbounds float* %box, i64 1
  %6 = load float* %5, align 4, !tbaa !2
  %7 = fdiv float %4, %6
  %8 = getelementptr inbounds float* %invh, i64 1
  store float %7, float* %8, align 4, !tbaa !2
  %9 = sitofp i32 %nz to float
  %10 = getelementptr inbounds float* %box, i64 2
  %11 = load float* %10, align 4, !tbaa !2
  %12 = fdiv float %9, %11
  %13 = getelementptr inbounds float* %invh, i64 2
  store float %12, float* %13, align 4, !tbaa !2
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @calc_weights(i32 %iatom, i32 %nx, i32 %ny, i32 %nz, float* nocapture readonly %x, float* nocapture readnone %box, float* nocapture readonly %invh, i32* nocapture %ixyz, float* nocapture %WXYZ) #1 {
  %wxyz = alloca [3 x [3 x float]], align 16
  %nxyz = alloca [3 x i32], align 4
  %1 = bitcast [3 x [3 x float]]* %wxyz to i8*
  call void @llvm.lifetime.start(i64 36, i8* %1) #2
  %2 = getelementptr inbounds [3 x i32]* %nxyz, i64 0, i64 0
  store i32 %nx, i32* %2, align 4, !tbaa !6
  %3 = getelementptr inbounds [3 x i32]* %nxyz, i64 0, i64 1
  store i32 %ny, i32* %3, align 4, !tbaa !6
  %4 = getelementptr inbounds [3 x i32]* %nxyz, i64 0, i64 2
  store i32 %nz, i32* %4, align 4, !tbaa !6
  br label %5

; <label>:5                                       ; preds = %._crit_edge, %0
  %6 = phi i32 [ %nx, %0 ], [ %.pre, %._crit_edge ]
  %indvars.iv19 = phi i64 [ 0, %0 ], [ %indvars.iv.next20, %._crit_edge ]
  %7 = getelementptr inbounds float* %x, i64 %indvars.iv19
  %8 = load float* %7, align 4, !tbaa !2
  %9 = getelementptr inbounds float* %invh, i64 %indvars.iv19
  %10 = load float* %9, align 4, !tbaa !2
  %11 = fmul float %8, %10
  %12 = fpext float %11 to double
  %13 = fadd double %12, 5.000000e-01
  %14 = fptosi double %13 to i32
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %20

; <label>:16                                      ; preds = %5
  %17 = sitofp i32 %6 to float
  %18 = fadd float %11, %17
  %19 = add nsw i32 %14, %6
  br label %26

; <label>:20                                      ; preds = %5
  %21 = icmp slt i32 %14, %6
  br i1 %21, label %.thread, label %22

; <label>:22                                      ; preds = %20
  %23 = sitofp i32 %6 to float
  %24 = fsub float %11, %23
  %25 = sub nsw i32 %14, %6
  br label %26

; <label>:26                                      ; preds = %22, %16
  %it.0 = phi i32 [ %19, %16 ], [ %25, %22 ]
  %ttt.0 = phi float [ %18, %16 ], [ %24, %22 ]
  %27 = icmp slt i32 %it.0, 0
  br i1 %27, label %29, label %.thread

.thread:                                          ; preds = %20, %26
  %ttt.04 = phi float [ %ttt.0, %26 ], [ %11, %20 ]
  %it.01 = phi i32 [ %it.0, %26 ], [ %14, %20 ]
  %28 = icmp slt i32 %it.01, %6
  br i1 %28, label %32, label %29

; <label>:29                                      ; preds = %.thread, %26
  %ttt.05 = phi float [ %ttt.04, %.thread ], [ %ttt.0, %26 ]
  %it.02 = phi i32 [ %it.01, %.thread ], [ %it.0, %26 ]
  %30 = fpext float %8 to double
  %31 = fpext float %ttt.05 to double
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([34 x i8]* @.str, i64 0, i64 0), i32 %iatom, i32 %it.02, double %30, double %31) #6
  br label %32

; <label>:32                                      ; preds = %.thread, %29
  %ttt.06 = phi float [ %ttt.04, %.thread ], [ %ttt.05, %29 ]
  %it.03 = phi i32 [ %it.01, %.thread ], [ %it.02, %29 ]
  %33 = getelementptr inbounds i32* %ixyz, i64 %indvars.iv19
  store i32 %it.03, i32* %33, align 4, !tbaa !6
  %34 = sitofp i32 %it.03 to float
  %35 = fsub float %ttt.06, %34
  %36 = fsub float 5.000000e-01, %35
  %37 = fmul float %36, %36
  %38 = getelementptr inbounds [3 x [3 x float]]* %wxyz, i64 0, i64 %indvars.iv19, i64 0
  store float %37, float* %38, align 4, !tbaa !2
  %39 = fmul float %35, %35
  %40 = fpext float %39 to double
  %41 = fmul double %40, 2.000000e+00
  %42 = fsub double 1.500000e+00, %41
  %43 = fptrunc double %42 to float
  %44 = getelementptr inbounds [3 x [3 x float]]* %wxyz, i64 0, i64 %indvars.iv19, i64 1
  store float %43, float* %44, align 4, !tbaa !2
  %45 = fadd float %35, 5.000000e-01
  %46 = fmul float %45, %45
  %47 = getelementptr inbounds [3 x [3 x float]]* %wxyz, i64 0, i64 %indvars.iv19, i64 2
  store float %46, float* %47, align 4, !tbaa !2
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  %exitcond21 = icmp eq i64 %indvars.iv.next20, 3
  br i1 %exitcond21, label %48, label %._crit_edge

._crit_edge:                                      ; preds = %32
  %.phi.trans.insert = getelementptr inbounds [3 x i32]* %nxyz, i64 0, i64 %indvars.iv.next20
  %.pre = load i32* %.phi.trans.insert, align 4, !tbaa !6
  br label %5

; <label>:48                                      ; preds = %32
  %49 = getelementptr inbounds [3 x [3 x float]]* %wxyz, i64 0, i64 2, i64 0
  %50 = load float* %49, align 8, !tbaa !2
  %51 = getelementptr inbounds [3 x [3 x float]]* %wxyz, i64 0, i64 2, i64 1
  %52 = load float* %51, align 4, !tbaa !2
  %53 = getelementptr inbounds [3 x [3 x float]]* %wxyz, i64 0, i64 2, i64 2
  %54 = load float* %53, align 8, !tbaa !2
  br label %55

; <label>:55                                      ; preds = %71, %48
  %indvars.iv16 = phi i64 [ 0, %48 ], [ %indvars.iv.next17, %71 ]
  %indvars.iv14 = phi i64 [ 0, %48 ], [ %indvars.iv.next15, %71 ]
  %56 = getelementptr inbounds [3 x [3 x float]]* %wxyz, i64 0, i64 0, i64 %indvars.iv14
  %57 = load float* %56, align 4, !tbaa !2
  %58 = fmul float %57, 1.250000e-01
  br label %59

; <label>:59                                      ; preds = %59, %55
  %indvars.iv12 = phi i64 [ %indvars.iv16, %55 ], [ %indvars.iv.next13, %59 ]
  %indvars.iv = phi i64 [ 0, %55 ], [ %indvars.iv.next, %59 ]
  %60 = getelementptr inbounds [3 x [3 x float]]* %wxyz, i64 0, i64 1, i64 %indvars.iv
  %61 = load float* %60, align 4, !tbaa !2
  %62 = fmul float %58, %61
  %63 = fmul float %50, %62
  %64 = getelementptr inbounds float* %WXYZ, i64 %indvars.iv12
  store float %63, float* %64, align 4, !tbaa !2
  %65 = fmul float %52, %62
  %66 = add nsw i64 %indvars.iv12, 1
  %67 = getelementptr inbounds float* %WXYZ, i64 %66
  store float %65, float* %67, align 4, !tbaa !2
  %68 = fmul float %54, %62
  %69 = add nsw i64 %indvars.iv12, 2
  %70 = getelementptr inbounds float* %WXYZ, i64 %69
  store float %68, float* %70, align 4, !tbaa !2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next13 = add nsw i64 %indvars.iv12, 3
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %71, label %59

; <label>:71                                      ; preds = %59
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 9
  %exitcond18 = icmp eq i64 %indvars.iv.next15, 3
  br i1 %exitcond18, label %72, label %55

; <label>:72                                      ; preds = %71
  call void @llvm.lifetime.end(i64 36, i8* %1) #2
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind optsize ssp uwtable
define void @spread_q(%struct.__sFILE* nocapture %log, i32 %bVerbose, i32 %start, i32 %nr, [3 x float]* nocapture readonly %x, float* nocapture readonly %charge, float* nocapture readonly %box, %struct.t_fftgrid* %grid, %struct.t_nrnb* nocapture %nrnb) #1 {
  %invh = alloca [3 x float], align 4
  %WXYZ = alloca [27 x float], align 16
  %ixyz = alloca [3 x i32], align 4
  %nx = alloca i32, align 4
  %ny = alloca i32, align 4
  %nz = alloca i32, align 4
  %la2 = alloca i32, align 4
  %la12 = alloca i32, align 4
  %ptr = alloca float*, align 8
  %1 = bitcast [27 x float]* %WXYZ to i8*
  call void @llvm.lifetime.start(i64 108, i8* %1) #2
  call void @unpack_fftgrid(%struct.t_fftgrid* %grid, i32* %nx, i32* %ny, i32* %nz, i32* %la2, i32* %la12, i32 1, float** %ptr) #6
  %2 = load i32* %nx, align 4, !tbaa !6
  %3 = load i32* %ny, align 4, !tbaa !6
  %4 = load i32* %nz, align 4, !tbaa !6
  %5 = getelementptr inbounds [3 x float]* %invh, i64 0, i64 0
  %6 = sitofp i32 %2 to float
  %7 = load float* %box, align 4, !tbaa !2
  %8 = fdiv float %6, %7
  store float %8, float* %5, align 4, !tbaa !2
  %9 = sitofp i32 %3 to float
  %10 = getelementptr inbounds float* %box, i64 1
  %11 = load float* %10, align 4, !tbaa !2
  %12 = fdiv float %9, %11
  %13 = getelementptr inbounds [3 x float]* %invh, i64 0, i64 1
  store float %12, float* %13, align 4, !tbaa !2
  %14 = sitofp i32 %4 to float
  %15 = getelementptr inbounds float* %box, i64 2
  %16 = load float* %15, align 4, !tbaa !2
  %17 = fdiv float %14, %16
  %18 = getelementptr inbounds [3 x float]* %invh, i64 0, i64 2
  store float %17, float* %18, align 4, !tbaa !2
  %.b = load i1* @spread_q.bFirst, align 1
  br i1 %.b, label %.preheader, label %19

; <label>:19                                      ; preds = %0
  %20 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([58 x i8]* @.str1, i64 0, i64 0), i32 %2, i32 %3, i32 %4) #6
  %21 = fpext float %8 to double
  %22 = fpext float %12 to double
  %23 = fpext float %17 to double
  %24 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([23 x i8]* @.str2, i64 0, i64 0), double %21, double %22, double %23) #6
  %25 = load i32* %nx, align 4, !tbaa !6
  %26 = load i32* %ny, align 4, !tbaa !6
  %27 = load i32* %nz, align 4, !tbaa !6
  call fastcc void @calc_nxyz(i32 %25, i32 %26, i32 %27, i32** @spread_q.nnx, i32** @spread_q.nny, i32** @spread_q.nnz) #7
  store i1 true, i1* @spread_q.bFirst, align 1
  br label %.preheader

.preheader:                                       ; preds = %0, %19
  %28 = icmp sgt i32 %nr, 0
  br i1 %28, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %29 = add nsw i32 %nr, %start
  %30 = getelementptr inbounds [3 x i32]* %ixyz, i64 0, i64 0
  %31 = getelementptr inbounds [27 x float]* %WXYZ, i64 0, i64 0
  %32 = getelementptr inbounds [3 x i32]* %ixyz, i64 0, i64 1
  %33 = getelementptr inbounds [3 x i32]* %ixyz, i64 0, i64 2
  %34 = getelementptr inbounds %struct.t_fftgrid* %grid, i64 0, i32 0
  %35 = sext i32 %start to i64
  %36 = sext i32 %29 to i64
  br label %37

; <label>:37                                      ; preds = %.lr.ph, %.loopexit
  %indvars.iv16 = phi i64 [ %35, %.lr.ph ], [ %indvars.iv.next17, %.loopexit ]
  %38 = getelementptr inbounds float* %charge, i64 %indvars.iv16
  %39 = load float* %38, align 4, !tbaa !2
  %fabsf = call float @fabsf(float %39) #5
  %40 = fpext float %fabsf to double
  %41 = fcmp ogt double %40, 1.200000e-38
  br i1 %41, label %42, label %.loopexit

; <label>:42                                      ; preds = %37
  %43 = load i32* %nx, align 4, !tbaa !6
  %44 = load i32* %ny, align 4, !tbaa !6
  %45 = load i32* %nz, align 4, !tbaa !6
  %46 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv16, i64 0
  %47 = trunc i64 %indvars.iv16 to i32
  call void @calc_weights(i32 %47, i32 %43, i32 %44, i32 %45, float* %46, float* undef, float* %5, i32* %30, float* %31) #7
  %48 = load i32* %30, align 4, !tbaa !6
  %49 = load i32* %nx, align 4, !tbaa !6
  %50 = add nsw i32 %49, %48
  %51 = load i32* %32, align 4, !tbaa !6
  %52 = load i32* %ny, align 4, !tbaa !6
  %53 = add nsw i32 %52, %51
  %54 = load i32* %33, align 4, !tbaa !6
  %55 = load i32* %nz, align 4, !tbaa !6
  %56 = add nsw i32 %55, %54
  %57 = load i32** @spread_q.nnx, align 8, !tbaa !8
  %58 = load i32** @spread_q.nny, align 8, !tbaa !8
  %59 = load i32** @spread_q.nnz, align 8, !tbaa !8
  %60 = load i32* %la12, align 4, !tbaa !6
  %61 = load i32* %la2, align 4, !tbaa !6
  %62 = load float** %34, align 8, !tbaa !10
  %63 = sext i32 %56 to i64
  %64 = sext i32 %53 to i64
  %65 = sext i32 %50 to i64
  br label %66

; <label>:66                                      ; preds = %92, %42
  %indvars.iv13 = phi i64 [ -1, %42 ], [ %indvars.iv.next14, %92 ]
  %nxyz.06 = phi i32 [ 0, %42 ], [ %93, %92 ]
  %67 = add nsw i64 %65, %indvars.iv13
  %68 = getelementptr inbounds i32* %57, i64 %67
  %69 = load i32* %68, align 4, !tbaa !6
  %70 = mul nsw i32 %60, %69
  br label %71

; <label>:71                                      ; preds = %90, %66
  %indvars.iv10 = phi i64 [ -1, %66 ], [ %indvars.iv.next11, %90 ]
  %nxyz.14 = phi i32 [ %nxyz.06, %66 ], [ %91, %90 ]
  %72 = add nsw i64 %64, %indvars.iv10
  %73 = getelementptr inbounds i32* %58, i64 %72
  %74 = load i32* %73, align 4, !tbaa !6
  %75 = mul nsw i32 %61, %74
  %76 = sext i32 %nxyz.14 to i64
  br label %77

; <label>:77                                      ; preds = %77, %71
  %indvars.iv8 = phi i64 [ -1, %71 ], [ %indvars.iv.next9, %77 ]
  %indvars.iv = phi i64 [ %76, %71 ], [ %indvars.iv.next, %77 ]
  %78 = add nsw i64 %63, %indvars.iv8
  %79 = getelementptr inbounds i32* %59, i64 %78
  %80 = load i32* %79, align 4, !tbaa !6
  %81 = add i32 %70, %80
  %82 = add i32 %81, %75
  %83 = getelementptr inbounds [27 x float]* %WXYZ, i64 0, i64 %indvars.iv
  %84 = load float* %83, align 4, !tbaa !2
  %85 = fmul float %39, %84
  %86 = sext i32 %82 to i64
  %87 = getelementptr inbounds float* %62, i64 %86
  %88 = load float* %87, align 4, !tbaa !2
  %89 = fadd float %85, %88
  store float %89, float* %87, align 4, !tbaa !2
  %indvars.iv.next9 = add nsw i64 %indvars.iv8, 1
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next9, 2
  br i1 %exitcond, label %90, label %77

; <label>:90                                      ; preds = %77
  %91 = add i32 %nxyz.14, 3
  %indvars.iv.next11 = add nsw i64 %indvars.iv10, 1
  %exitcond12 = icmp eq i64 %indvars.iv.next11, 2
  br i1 %exitcond12, label %92, label %71

; <label>:92                                      ; preds = %90
  %93 = add nuw nsw i32 %nxyz.06, 9
  %indvars.iv.next14 = add nsw i64 %indvars.iv13, 1
  %exitcond15 = icmp eq i64 %indvars.iv.next14, 2
  br i1 %exitcond15, label %.loopexit, label %66

.loopexit:                                        ; preds = %92, %37
  %indvars.iv.next17 = add nsw i64 %indvars.iv16, 1
  %94 = icmp slt i64 %indvars.iv.next17, %36
  br i1 %94, label %37, label %._crit_edge

._crit_edge:                                      ; preds = %.loopexit, %.preheader
  %95 = mul nsw i32 %nr, 9
  %96 = sitofp i32 %95 to double
  %97 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 80
  %98 = load double* %97, align 8, !tbaa !12
  %99 = fadd double %96, %98
  store double %99, double* %97, align 8, !tbaa !12
  %100 = mul nsw i32 %nr, 3
  %101 = sitofp i32 %100 to double
  %102 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 79
  %103 = load double* %102, align 8, !tbaa !12
  %104 = fadd double %101, %103
  store double %104, double* %102, align 8, !tbaa !12
  call void @llvm.lifetime.end(i64 108, i8* %1) #2
  ret void
}

; Function Attrs: optsize
declare void @unpack_fftgrid(%struct.t_fftgrid*, i32*, i32*, i32*, i32*, i32*, i32, float**) #3

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #4

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @calc_nxyz(i32 %nx, i32 %ny, i32 %nz, i32** nocapture %nnx, i32** nocapture %nny, i32** nocapture %nnz) #1 {
  %1 = mul nsw i32 %nx, 3
  %2 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str4, i64 0, i64 0), i32 138, i32 %1, i32 4) #6
  %3 = bitcast i32** %nnx to i8**
  store i8* %2, i8** %3, align 8, !tbaa !8
  %4 = mul nsw i32 %ny, 3
  %5 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str4, i64 0, i64 0), i32 139, i32 %4, i32 4) #6
  %6 = bitcast i32** %nny to i8**
  store i8* %5, i8** %6, align 8, !tbaa !8
  %7 = mul nsw i32 %nz, 3
  %8 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str23, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str4, i64 0, i64 0), i32 140, i32 %7, i32 4) #6
  %9 = bitcast i32** %nnz to i8**
  store i8* %8, i8** %9, align 8, !tbaa !8
  %10 = icmp sgt i32 %nx, 0
  %11 = bitcast i8* %8 to i32*
  br i1 %10, label %.lr.ph7, label %.preheader1

.lr.ph7:                                          ; preds = %0
  %12 = load i32** %nnx, align 8, !tbaa !8
  %13 = sext i32 %1 to i64
  br label %17

.preheader1:                                      ; preds = %17, %0
  %14 = icmp sgt i32 %ny, 0
  br i1 %14, label %.lr.ph4, label %.preheader

.lr.ph4:                                          ; preds = %.preheader1
  %15 = load i32** %nny, align 8, !tbaa !8
  %16 = sext i32 %4 to i64
  br label %24

; <label>:17                                      ; preds = %.lr.ph7, %17
  %indvars.iv10 = phi i64 [ 0, %.lr.ph7 ], [ %indvars.iv.next11, %17 ]
  %18 = trunc i64 %indvars.iv10 to i32
  %19 = srem i32 %18, %nx
  %20 = getelementptr inbounds i32* %12, i64 %indvars.iv10
  store i32 %19, i32* %20, align 4, !tbaa !6
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
  store i32 %26, i32* %27, align 4, !tbaa !6
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1
  %28 = icmp slt i64 %indvars.iv.next9, %16
  br i1 %28, label %24, label %.preheader

; <label>:29                                      ; preds = %.lr.ph, %29
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %29 ]
  %30 = trunc i64 %indvars.iv to i32
  %31 = srem i32 %30, %nz
  %32 = getelementptr inbounds i32* %11, i64 %indvars.iv
  store i32 %31, i32* %32, align 4, !tbaa !6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %33 = icmp slt i64 %indvars.iv.next, %23
  br i1 %33, label %29, label %._crit_edge

._crit_edge:                                      ; preds = %29, %.preheader
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define float @gather_inner(i32* nocapture readonly %JCXYZ, float* nocapture readonly %WXYZ, i32* nocapture readonly %ixw, i32* nocapture readonly %iyw, i32* nocapture readonly %izw, i32 %la2, i32 %la12, float %c1x, float %c1y, float %c1z, float %c2x, float %c2y, float %c2z, float %qi, float* nocapture %f, float* nocapture readonly %ptr) #1 {
  br label %1

; <label>:1                                       ; preds = %1, %0
  %indvars.iv10 = phi i64 [ 0, %0 ], [ %indvars.iv.next11, %1 ]
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next, %1 ]
  %2 = phi <4 x float> [ zeroinitializer, %0 ], [ %159, %1 ]
  %3 = getelementptr inbounds i32* %JCXYZ, i64 %indvars.iv10
  %4 = load i32* %3, align 4, !tbaa !6
  %5 = add nuw nsw i64 %indvars.iv10, 1
  %6 = getelementptr inbounds i32* %JCXYZ, i64 %5
  %7 = load i32* %6, align 4, !tbaa !6
  %8 = add nuw nsw i64 %indvars.iv10, 2
  %9 = getelementptr inbounds i32* %JCXYZ, i64 %8
  %10 = load i32* %9, align 4, !tbaa !6
  %11 = getelementptr inbounds float* %WXYZ, i64 %indvars.iv
  %12 = load float* %11, align 4, !tbaa !2
  %13 = sext i32 %4 to i64
  %14 = getelementptr inbounds i32* %ixw, i64 %13
  %15 = load i32* %14, align 4, !tbaa !6
  %16 = sext i32 %7 to i64
  %17 = getelementptr inbounds i32* %iyw, i64 %16
  %18 = load i32* %17, align 4, !tbaa !6
  %19 = sext i32 %10 to i64
  %20 = getelementptr inbounds i32* %izw, i64 %19
  %21 = load i32* %20, align 4, !tbaa !6
  %22 = mul nsw i32 %15, %la12
  %23 = mul nsw i32 %18, %la2
  %24 = add nsw i32 %23, %22
  %25 = add nsw i32 %24, %21
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds float* %ptr, i64 %26
  %28 = load float* %27, align 4, !tbaa !2
  %29 = add nsw i32 %4, -1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32* %ixw, i64 %30
  %32 = load i32* %31, align 4, !tbaa !6
  %33 = mul nsw i32 %32, %la12
  %34 = add i32 %21, %23
  %35 = add i32 %34, %33
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds float* %ptr, i64 %36
  %38 = load float* %37, align 4, !tbaa !2
  %39 = add nsw i32 %4, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32* %ixw, i64 %40
  %42 = load i32* %41, align 4, !tbaa !6
  %43 = mul nsw i32 %42, %la12
  %44 = add i32 %34, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds float* %ptr, i64 %45
  %47 = load float* %46, align 4, !tbaa !2
  %48 = fsub float %38, %47
  %49 = fmul float %48, %c1x
  %50 = add nsw i32 %4, -2
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32* %ixw, i64 %51
  %53 = load i32* %52, align 4, !tbaa !6
  %54 = mul nsw i32 %53, %la12
  %55 = add i32 %34, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds float* %ptr, i64 %56
  %58 = load float* %57, align 4, !tbaa !2
  %59 = add nsw i32 %4, 2
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32* %ixw, i64 %60
  %62 = load i32* %61, align 4, !tbaa !6
  %63 = mul nsw i32 %62, %la12
  %64 = add i32 %34, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds float* %ptr, i64 %65
  %67 = load float* %66, align 4, !tbaa !2
  %68 = fsub float %58, %67
  %69 = fmul float %68, %c2x
  %70 = fadd float %49, %69
  %71 = add nsw i32 %7, -1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32* %iyw, i64 %72
  %74 = load i32* %73, align 4, !tbaa !6
  %75 = mul nsw i32 %74, %la2
  %76 = add i32 %21, %22
  %77 = add i32 %76, %75
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds float* %ptr, i64 %78
  %80 = load float* %79, align 4, !tbaa !2
  %81 = add nsw i32 %7, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32* %iyw, i64 %82
  %84 = load i32* %83, align 4, !tbaa !6
  %85 = mul nsw i32 %84, %la2
  %86 = add i32 %76, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds float* %ptr, i64 %87
  %89 = load float* %88, align 4, !tbaa !2
  %90 = fsub float %80, %89
  %91 = fmul float %90, %c1y
  %92 = add nsw i32 %7, -2
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32* %iyw, i64 %93
  %95 = load i32* %94, align 4, !tbaa !6
  %96 = mul nsw i32 %95, %la2
  %97 = add i32 %76, %96
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds float* %ptr, i64 %98
  %100 = load float* %99, align 4, !tbaa !2
  %101 = add nsw i32 %7, 2
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32* %iyw, i64 %102
  %104 = load i32* %103, align 4, !tbaa !6
  %105 = mul nsw i32 %104, %la2
  %106 = add i32 %76, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds float* %ptr, i64 %107
  %109 = load float* %108, align 4, !tbaa !2
  %110 = fsub float %100, %109
  %111 = fmul float %110, %c2y
  %112 = fadd float %91, %111
  %113 = add nsw i32 %10, -1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32* %izw, i64 %114
  %116 = load i32* %115, align 4, !tbaa !6
  %117 = add nsw i32 %116, %24
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds float* %ptr, i64 %118
  %120 = load float* %119, align 4, !tbaa !2
  %121 = add nsw i32 %10, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32* %izw, i64 %122
  %124 = load i32* %123, align 4, !tbaa !6
  %125 = add nsw i32 %124, %24
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds float* %ptr, i64 %126
  %128 = load float* %127, align 4, !tbaa !2
  %129 = fsub float %120, %128
  %130 = fmul float %129, %c1z
  %131 = add nsw i32 %10, -2
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32* %izw, i64 %132
  %134 = load i32* %133, align 4, !tbaa !6
  %135 = add nsw i32 %134, %24
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds float* %ptr, i64 %136
  %138 = load float* %137, align 4, !tbaa !2
  %139 = add nsw i32 %10, 2
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32* %izw, i64 %140
  %142 = load i32* %141, align 4, !tbaa !6
  %143 = add nsw i32 %142, %24
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds float* %ptr, i64 %144
  %146 = load float* %145, align 4, !tbaa !2
  %147 = fsub float %138, %146
  %148 = fmul float %147, %c2z
  %149 = fadd float %130, %148
  %150 = insertelement <4 x float> undef, float %12, i32 0
  %151 = insertelement <4 x float> %150, float %12, i32 1
  %152 = insertelement <4 x float> %151, float %12, i32 2
  %153 = insertelement <4 x float> %152, float %12, i32 3
  %154 = insertelement <4 x float> undef, float %28, i32 0
  %155 = insertelement <4 x float> %154, float %70, i32 1
  %156 = insertelement <4 x float> %155, float %112, i32 2
  %157 = insertelement <4 x float> %156, float %149, i32 3
  %158 = fmul <4 x float> %153, %157
  %159 = fadd <4 x float> %2, %158
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 3
  %exitcond = icmp eq i64 %indvars.iv.next, 27
  br i1 %exitcond, label %160, label %1

; <label>:160                                     ; preds = %1
  %161 = extractelement <4 x float> %159, i32 1
  %162 = fmul float %161, %qi
  %163 = load float* %f, align 4, !tbaa !2
  %164 = fadd float %162, %163
  store float %164, float* %f, align 4, !tbaa !2
  %165 = extractelement <4 x float> %159, i32 2
  %166 = fmul float %165, %qi
  %167 = getelementptr inbounds float* %f, i64 1
  %168 = load float* %167, align 4, !tbaa !2
  %169 = fadd float %166, %168
  store float %169, float* %167, align 4, !tbaa !2
  %170 = extractelement <4 x float> %159, i32 3
  %171 = fmul float %170, %qi
  %172 = getelementptr inbounds float* %f, i64 2
  %173 = load float* %172, align 4, !tbaa !2
  %174 = fadd float %171, %173
  store float %174, float* %172, align 4, !tbaa !2
  %175 = extractelement <4 x float> %159, i32 0
  ret float %175
}

; Function Attrs: nounwind optsize ssp uwtable
define void @convolution(%struct.__sFILE* nocapture readnone %fp, i32 %bVerbose, %struct.t_fftgrid* %grid, float*** nocapture readonly %ghat, %struct.t_commrec* nocapture readonly %cr) #1 {
  %nx = alloca i32, align 4
  %ny = alloca i32, align 4
  %nz = alloca i32, align 4
  %la2 = alloca i32, align 4
  %la12 = alloca i32, align 4
  %ptr = alloca %struct.t_fft_c*, align 8
  %1 = bitcast %struct.t_fft_c** %ptr to float**
  call void @unpack_fftgrid(%struct.t_fftgrid* %grid, i32* %nx, i32* %ny, i32* %nz, i32* %la2, i32* %la12, i32 0, float** %1) #6
  %2 = getelementptr inbounds %struct.t_fftgrid* %grid, i64 0, i32 10
  %3 = load i32* %2, align 4, !tbaa !14
  %4 = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str4, i64 0, i64 0), i32 373, i32 %3, i32 4) #6
  %5 = bitcast i8* %4 to i32*
  %6 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %7 = load i32* %6, align 4, !tbaa !15
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %.loopexit, label %9

; <label>:9                                       ; preds = %0
  %10 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %11 = load i32* %10, align 4, !tbaa !17
  %12 = icmp sgt i32 %11, 1
  br i1 %12, label %.loopexit, label %.preheader2

.preheader2:                                      ; preds = %9
  %13 = load i32* %nx, align 4, !tbaa !6
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %.preheader1.lr.ph, label %.loopexit

.preheader1.lr.ph:                                ; preds = %.preheader2
  %15 = load %struct.t_fft_c** %ptr, align 8, !tbaa !8
  %.pre = load i32* %ny, align 4, !tbaa !6
  br label %.preheader1

.preheader1:                                      ; preds = %.preheader1.lr.ph, %57
  %16 = phi i32 [ %13, %.preheader1.lr.ph ], [ %58, %57 ]
  %17 = phi i32 [ %.pre, %.preheader1.lr.ph ], [ %59, %57 ]
  %indvars.iv11 = phi i64 [ 0, %.preheader1.lr.ph ], [ %indvars.iv.next12, %57 ]
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %.preheader.lr.ph, label %57

.preheader.lr.ph:                                 ; preds = %.preheader1
  %19 = getelementptr inbounds float*** %ghat, i64 %indvars.iv11
  %.pre13 = load i32* %nz, align 4, !tbaa !6
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %52
  %20 = phi i32 [ %17, %.preheader.lr.ph ], [ %53, %52 ]
  %21 = phi i32 [ %.pre13, %.preheader.lr.ph ], [ %54, %52 ]
  %indvars.iv9 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next10, %52 ]
  %22 = icmp sgt i32 %21, -2
  br i1 %22, label %.lr.ph, label %52

.lr.ph:                                           ; preds = %.preheader
  %23 = load float*** %19, align 8, !tbaa !8
  %24 = getelementptr inbounds float** %23, i64 %indvars.iv9
  %25 = load float** %24, align 8, !tbaa !8
  br label %26

; <label>:26                                      ; preds = %.lr.ph, %26
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %26 ]
  %27 = getelementptr inbounds float* %25, i64 %indvars.iv
  %28 = load float* %27, align 4, !tbaa !2
  %29 = load i32* %la12, align 4, !tbaa !6
  %30 = trunc i64 %indvars.iv11 to i32
  %31 = mul nsw i32 %29, %30
  %32 = load i32* %la2, align 4, !tbaa !6
  %33 = trunc i64 %indvars.iv9 to i32
  %34 = mul nsw i32 %32, %33
  %35 = trunc i64 %indvars.iv to i32
  %36 = add i32 %31, %35
  %37 = add i32 %36, %34
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.t_fft_c* %15, i64 %38, i32 0
  %40 = load float* %39, align 4, !tbaa !18
  %41 = fmul float %28, %40
  store float %41, float* %39, align 4, !tbaa !18
  %42 = getelementptr inbounds %struct.t_fft_c* %15, i64 %38, i32 1
  %43 = load float* %42, align 4, !tbaa !20
  %44 = fmul float %28, %43
  store float %44, float* %42, align 4, !tbaa !20
  %45 = getelementptr inbounds i32* %5, i64 %38
  %46 = load i32* %45, align 4, !tbaa !6
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4, !tbaa !6
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  %48 = load i32* %nz, align 4, !tbaa !6
  %49 = sdiv i32 %48, 2
  %50 = sext i32 %49 to i64
  %51 = icmp slt i64 %indvars.iv, %50
  br i1 %51, label %26, label %._crit_edge

._crit_edge:                                      ; preds = %26
  %.pre14 = load i32* %ny, align 4, !tbaa !6
  br label %52

; <label>:52                                      ; preds = %._crit_edge, %.preheader
  %53 = phi i32 [ %.pre14, %._crit_edge ], [ %20, %.preheader ]
  %54 = phi i32 [ %48, %._crit_edge ], [ %21, %.preheader ]
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1
  %55 = sext i32 %53 to i64
  %56 = icmp slt i64 %indvars.iv.next10, %55
  br i1 %56, label %.preheader, label %._crit_edge6

._crit_edge6:                                     ; preds = %52
  %.pre15 = load i32* %nx, align 4, !tbaa !6
  br label %57

; <label>:57                                      ; preds = %._crit_edge6, %.preheader1
  %58 = phi i32 [ %.pre15, %._crit_edge6 ], [ %16, %.preheader1 ]
  %59 = phi i32 [ %53, %._crit_edge6 ], [ %17, %.preheader1 ]
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  %60 = sext i32 %58 to i64
  %61 = icmp slt i64 %indvars.iv.next12, %60
  br i1 %61, label %.preheader1, label %.loopexit

.loopexit:                                        ; preds = %57, %.preheader2, %0, %9
  call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([64 x i8]* @.str4, i64 0, i64 0), i32 427, i8* %4) #6
  ret void
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #3

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @solve_pppm(%struct.__sFILE* nocapture readnone %fp, %struct.t_commrec* %cr, %struct.t_fftgrid* %grid, float*** nocapture readonly %ghat, float* nocapture readnone %box, i32 %bVerbose, %struct.t_nrnb* nocapture %nrnb) #1 {
  tail call void @gmxfft3D(%struct.t_fftgrid* %grid, i32 -1, %struct.t_commrec* %cr) #6
  tail call void @convolution(%struct.__sFILE* undef, i32 undef, %struct.t_fftgrid* %grid, float*** %ghat, %struct.t_commrec* %cr) #7
  %1 = icmp eq i32 %bVerbose, 0
  br i1 %1, label %3, label %2

; <label>:2                                       ; preds = %0
  tail call void @gmxfft3D(%struct.t_fftgrid* %grid, i32 1, %struct.t_commrec* %cr) #6
  br label %3

; <label>:3                                       ; preds = %0, %2
  %4 = getelementptr inbounds %struct.t_fftgrid* %grid, i64 0, i32 11
  %5 = load i32* %4, align 4, !tbaa !21
  %6 = sitofp i32 %5 to double
  %7 = sitofp i32 %5 to float
  %8 = fpext float %7 to double
  %9 = tail call double @log(double %8) #8
  %10 = fmul double %6, %9
  %11 = fdiv double %10, 0x3FE62E42FEFA39EF
  %12 = fptosi double %11 to i32
  %13 = shl nsw i32 %12, 1
  %14 = sitofp i32 %13 to double
  %15 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 84
  %16 = bitcast double* %15 to <2 x double>*
  %17 = load <2 x double>* %16, align 8, !tbaa !12
  %18 = insertelement <2 x double> undef, double %14, i32 0
  %19 = insertelement <2 x double> %18, double %6, i32 1
  %20 = fadd <2 x double> %17, %19
  %21 = bitcast double* %15 to <2 x double>*
  store <2 x double> %20, <2 x double>* %21, align 8, !tbaa !12
  ret void
}

; Function Attrs: optsize
declare void @gmxfft3D(%struct.t_fftgrid*, i32, %struct.t_commrec*) #3

; Function Attrs: nounwind optsize readnone
declare double @log(double) #5

; Function Attrs: nounwind optsize ssp uwtable
define void @init_pppm(%struct.__sFILE* %log, %struct.t_commrec* readonly %cr, %struct.t_nsborder* nocapture readnone %nsb, i32 %bVerbose, i32 %bOld, float* %box, i8* %ghatfn, %struct.t_inputrec* nocapture readonly %ir) #1 {
  %porder = alloca i32, align 4
  %grids = alloca [3 x i32], align 4
  %r1 = alloca float, align 4
  %rc = alloca float, align 4
  %spacing = alloca [3 x float], align 4
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([59 x i8]* @.str5, i64 0, i64 0)) #6
  %1 = icmp eq %struct.t_commrec* %cr, null
  br i1 %1, label %8, label %2

; <label>:2                                       ; preds = %0
  %3 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %4 = load i32* %3, align 4, !tbaa !15
  %5 = icmp sgt i32 %4, 1
  br i1 %5, label %6, label %8

; <label>:6                                       ; preds = %2
  %7 = tail call i64 @fwrite(i8* getelementptr inbounds ([29 x i8]* @.str6, i64 0, i64 0), i64 28, i64 1, %struct.__sFILE* %log)
  br label %8

; <label>:8                                       ; preds = %0, %2, %6
  %9 = tail call i64 @fwrite(i8* getelementptr inbounds ([59 x i8]* @.str7, i64 0, i64 0), i64 58, i64 1, %struct.__sFILE* %log)
  %10 = tail call i32 @fexist(i8* %ghatfn) #6
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %34

; <label>:12                                      ; preds = %8
  store float 0x3FFD9999A0000000, float* getelementptr inbounds ([3 x float]* @beta, i64 0, i64 2), align 4, !tbaa !2
  store float 0x3FFD9999A0000000, float* getelementptr inbounds ([3 x float]* @beta, i64 0, i64 1), align 4, !tbaa !2
  store float 0x3FFD9999A0000000, float* getelementptr inbounds ([3 x float]* @beta, i64 0, i64 0), align 4, !tbaa !2
  %13 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 17
  %14 = load i32* %13, align 4, !tbaa !22
  %15 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 18
  %16 = load i32* %15, align 4, !tbaa !25
  %17 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 19
  %18 = load i32* %17, align 4, !tbaa !26
  %19 = tail call i64 @fwrite(i8* getelementptr inbounds ([26 x i8]* @.str8, i64 0, i64 0), i64 25, i64 1, %struct.__sFILE* %log)
  %20 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([27 x i8]* @.str9, i64 0, i64 0), i32 %14, i32 %16, i32 %18) #6
  %21 = icmp slt i32 %14, 4
  %22 = icmp slt i32 %16, 4
  %or.cond = or i1 %21, %22
  %23 = icmp slt i32 %18, 4
  %or.cond3 = or i1 %or.cond, %23
  br i1 %or.cond3, label %24, label %25

; <label>:24                                      ; preds = %12
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([49 x i8]* @.str10, i64 0, i64 0)) #6
  br label %25

; <label>:25                                      ; preds = %12, %24
  %26 = tail call float*** @mk_rgrid(i32 %14, i32 %16, i32 %18) #6
  store float*** %26, float**** @ghat, align 8, !tbaa !8
  %27 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 37
  %28 = load float* %27, align 4, !tbaa !27
  %29 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 38
  %30 = load float* %29, align 4, !tbaa !28
  tail call void @mk_ghat(%struct.__sFILE* null, i32 %14, i32 %16, i32 %18, float*** %26, float* %box, float %28, float %30, i32 1, i32 %bOld) #6
  %31 = icmp eq i32 %bVerbose, 0
  br i1 %31, label %86, label %32

; <label>:32                                      ; preds = %25
  %33 = load float**** @ghat, align 8, !tbaa !8
  tail call void @pr_scalar_gk(i8* getelementptr inbounds ([14 x i8]* @.str11, i64 0, i64 0), i32 %14, i32 %16, i32 %18, float* %box, float*** %33) #6
  br label %86

; <label>:34                                      ; preds = %8
  %35 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !8
  %36 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %35, i8* getelementptr inbounds ([31 x i8]* @.str12, i64 0, i64 0), i8* %ghatfn) #6
  %37 = getelementptr inbounds [3 x i32]* %grids, i64 0, i64 0
  %38 = getelementptr inbounds [3 x float]* %spacing, i64 0, i64 0
  %39 = call float*** @rd_ghat(%struct.__sFILE* %log, i8* %ghatfn, i32* %37, float* %38, float* getelementptr inbounds ([3 x float]* @beta, i64 0, i64 0), i32* %porder, float* %r1, float* %rc) #6
  store float*** %39, float**** @ghat, align 8, !tbaa !8
  %40 = load float* %r1, align 4, !tbaa !2
  %41 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 37
  %42 = load float* %41, align 4, !tbaa !27
  %43 = fsub float %40, %42
  %fabsf = call float @fabsf(float %43) #5
  %44 = fcmp ogt float %fabsf, 0x3EE4F8B580000000
  br i1 %44, label %._crit_edge, label %45

._crit_edge:                                      ; preds = %34
  %.phi.trans.insert = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 38
  %.pre = load float* %.phi.trans.insert, align 4, !tbaa !28
  %.pre7 = load float* %rc, align 4, !tbaa !2
  br label %51

; <label>:45                                      ; preds = %34
  %46 = load float* %rc, align 4, !tbaa !2
  %47 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 38
  %48 = load float* %47, align 4, !tbaa !28
  %49 = fsub float %46, %48
  %fabsf4 = call float @fabsf(float %49) #5
  %50 = fcmp ogt float %fabsf4, 0x3EE4F8B580000000
  br i1 %50, label %51, label %.preheader

; <label>:51                                      ; preds = %._crit_edge, %45
  %52 = phi float [ %.pre7, %._crit_edge ], [ %46, %45 ]
  %53 = phi float [ %.pre, %._crit_edge ], [ %48, %45 ]
  %54 = fpext float %42 to double
  %55 = fpext float %53 to double
  %56 = fpext float %40 to double
  %57 = fpext float %52 to double
  %58 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([71 x i8]* @.str13, i64 0, i64 0), double %54, double %55, double %56, double %57) #6
  %59 = call i32 @fflush(%struct.__sFILE* %log) #6
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([79 x i8]* @.str14, i64 0, i64 0), i8* %ghatfn) #6
  br label %.preheader

.preheader:                                       ; preds = %45, %51, %72
  %indvars.iv = phi i64 [ %indvars.iv.next, %72 ], [ 0, %51 ], [ 0, %45 ]
  %60 = getelementptr inbounds float* %box, i64 %indvars.iv
  %61 = load float* %60, align 4, !tbaa !2
  %62 = getelementptr inbounds [3 x i32]* %grids, i64 0, i64 %indvars.iv
  %63 = load i32* %62, align 4, !tbaa !6
  %64 = sitofp i32 %63 to float
  %65 = getelementptr inbounds [3 x float]* %spacing, i64 0, i64 %indvars.iv
  %66 = load float* %65, align 4, !tbaa !2
  %67 = fmul float %64, %66
  %68 = fsub float %61, %67
  %fabsf5 = call float @fabsf(float %68) #5
  %69 = fcmp ogt float %fabsf5, 0x3EE4F8B580000000
  br i1 %69, label %70, label %72

; <label>:70                                      ; preds = %.preheader
  call void @pr_rvec(%struct.__sFILE* %log, i32 0, i8* getelementptr inbounds ([4 x i8]* @.str15, i64 0, i64 0), float* %box, i32 3) #6
  call void @pr_rvec(%struct.__sFILE* %log, i32 0, i8* getelementptr inbounds ([13 x i8]* @.str16, i64 0, i64 0), float* %38, i32 3) #6
  call void @pr_ivec(%struct.__sFILE* %log, i32 0, i8* getelementptr inbounds ([10 x i8]* @.str17, i64 0, i64 0), i32* %37, i32 3) #6
  %71 = call i32 @fflush(%struct.__sFILE* %log) #6
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([73 x i8]* @.str18, i64 0, i64 0), i8* %ghatfn) #6
  br label %72

; <label>:72                                      ; preds = %.preheader, %70
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %73, label %.preheader

; <label>:73                                      ; preds = %72
  %74 = load i32* %porder, align 4, !tbaa !6
  %75 = icmp eq i32 %74, 2
  br i1 %75, label %77, label %76

; <label>:76                                      ; preds = %73
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([31 x i8]* @.str19, i64 0, i64 0), i32 %74, i8* %ghatfn) #6
  br label %77

; <label>:77                                      ; preds = %73, %76
  %78 = load i32* %37, align 4, !tbaa !6
  %79 = getelementptr inbounds [3 x i32]* %grids, i64 0, i64 1
  %80 = load i32* %79, align 4, !tbaa !6
  %81 = getelementptr inbounds [3 x i32]* %grids, i64 0, i64 2
  %82 = load i32* %81, align 4, !tbaa !6
  %83 = icmp eq i32 %bVerbose, 0
  br i1 %83, label %86, label %84

; <label>:84                                      ; preds = %77
  %85 = load float**** @ghat, align 8, !tbaa !8
  call void @pr_scalar_gk(i8* getelementptr inbounds ([14 x i8]* @.str20, i64 0, i64 0), i32 %78, i32 %80, i32 %82, float* %box, float*** %85) #6
  br label %86

; <label>:86                                      ; preds = %77, %25, %84, %32
  %ny.0 = phi i32 [ %80, %84 ], [ %80, %77 ], [ %16, %32 ], [ %16, %25 ]
  %nz.0 = phi i32 [ %82, %84 ], [ %82, %77 ], [ %18, %32 ], [ %18, %25 ]
  %nx.0 = phi i32 [ %78, %84 ], [ %78, %77 ], [ %14, %32 ], [ %14, %25 ]
  %87 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %88 = load i32* %87, align 4, !tbaa !15
  %89 = icmp sgt i32 %88, 1
  br i1 %89, label %94, label %90

; <label>:90                                      ; preds = %86
  %91 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %92 = load i32* %91, align 4, !tbaa !17
  %93 = icmp sgt i32 %92, 1
  br label %94

; <label>:94                                      ; preds = %90, %86
  %95 = phi i1 [ true, %86 ], [ %93, %90 ]
  %96 = zext i1 %95 to i32
  %97 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 24
  %98 = load i32* %97, align 4, !tbaa !29
  %99 = call %struct.t_fftgrid* @mk_fftgrid(%struct.__sFILE* %log, i32 %96, i32 %nx.0, i32 %ny.0, i32 %nz.0, i32 %98) #6
  store %struct.t_fftgrid* %99, %struct.t_fftgrid** @grid, align 8, !tbaa !8
  ret void
}

; Function Attrs: optsize
declare i32 @fexist(i8*) #3

; Function Attrs: optsize
declare float*** @mk_rgrid(i32, i32, i32) #3

; Function Attrs: optsize
declare void @mk_ghat(%struct.__sFILE*, i32, i32, i32, float***, float*, float, float, i32, i32) #3

; Function Attrs: optsize
declare void @pr_scalar_gk(i8*, i32, i32, i32, float*, float***) #3

; Function Attrs: optsize
declare float*** @rd_ghat(%struct.__sFILE*, i8*, i32*, float*, float*, i32*, float*, float*) #3

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct.__sFILE* nocapture) #4

; Function Attrs: optsize
declare void @pr_rvec(%struct.__sFILE*, i32, i8*, float*, i32) #3

; Function Attrs: optsize
declare void @pr_ivec(%struct.__sFILE*, i32, i8*, i32*, i32) #3

; Function Attrs: optsize
declare %struct.t_fftgrid* @mk_fftgrid(%struct.__sFILE*, i32, i32, i32, i32, i32) #3

; Function Attrs: nounwind optsize ssp uwtable
define float @do_pppm(%struct.__sFILE* nocapture %log, i32 %bVerbose, [3 x float]* nocapture readonly %x, [3 x float]* nocapture %f, float* nocapture readonly %charge, float* nocapture readonly %box, float* nocapture %phi, %struct.t_commrec* %cr, %struct.t_nsborder* %nsb, %struct.t_nrnb* nocapture %nrnb) #1 {
  %1 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 0
  %2 = load i32* %1, align 4, !tbaa !30
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %3
  %5 = load i32* %4, align 4, !tbaa !6
  %6 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %3
  %7 = load i32* %6, align 4, !tbaa !6
  %8 = load %struct.t_fftgrid** @grid, align 8, !tbaa !8
  tail call void @clear_fftgrid(%struct.t_fftgrid* %8) #6
  %9 = load %struct.t_fftgrid** @grid, align 8, !tbaa !8
  tail call void @spread_q(%struct.__sFILE* %log, i32 undef, i32 %5, i32 %7, [3 x float]* %x, float* %charge, float* %box, %struct.t_fftgrid* %9, %struct.t_nrnb* %nrnb) #7
  %10 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %11 = load i32* %10, align 4, !tbaa !15
  %12 = icmp sgt i32 %11, 1
  br i1 %12, label %17, label %13

; <label>:13                                      ; preds = %0
  %14 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %15 = load i32* %14, align 4, !tbaa !17
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %19

; <label>:17                                      ; preds = %13, %0
  %18 = load %struct.t_fftgrid** @grid, align 8, !tbaa !8
  tail call void @sum_qgrid(%struct.t_commrec* %cr, %struct.t_nsborder* %nsb, %struct.t_fftgrid* %18, i32 1) #6
  br label %19

; <label>:19                                      ; preds = %17, %13
  %20 = load %struct.t_fftgrid** @grid, align 8, !tbaa !8
  %21 = load float**** @ghat, align 8, !tbaa !8
  tail call void @solve_pppm(%struct.__sFILE* undef, %struct.t_commrec* %cr, %struct.t_fftgrid* %20, float*** %21, float* undef, i32 %bVerbose, %struct.t_nrnb* %nrnb) #7
  %22 = load i32* %10, align 4, !tbaa !15
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %28, label %24

; <label>:24                                      ; preds = %19
  %25 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %26 = load i32* %25, align 4, !tbaa !17
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %30

; <label>:28                                      ; preds = %24, %19
  %29 = load %struct.t_fftgrid** @grid, align 8, !tbaa !8
  tail call void @sum_qgrid(%struct.t_commrec* %cr, %struct.t_nsborder* %nsb, %struct.t_fftgrid* %29, i32 0) #6
  br label %30

; <label>:30                                      ; preds = %28, %24
  %31 = load %struct.t_fftgrid** @grid, align 8, !tbaa !8
  %32 = tail call fastcc float @gather_f(%struct.__sFILE* %log, i32 %5, i32 %7, [3 x float]* %x, [3 x float]* %f, float* %charge, float* %box, float* %phi, %struct.t_fftgrid* %31, float* getelementptr inbounds ([3 x float]* @beta, i64 0, i64 0), %struct.t_nrnb* %nrnb) #7
  ret float %32
}

; Function Attrs: optsize
declare void @clear_fftgrid(%struct.t_fftgrid*) #3

; Function Attrs: optsize
declare void @sum_qgrid(%struct.t_commrec*, %struct.t_nsborder*, %struct.t_fftgrid*, i32) #3

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc float @gather_f(%struct.__sFILE* nocapture %log, i32 %start, i32 %nr, [3 x float]* nocapture readonly %x, [3 x float]* nocapture %f, float* nocapture readonly %charge, float* nocapture readonly %box, float* nocapture %pot, %struct.t_fftgrid* %grid, float* nocapture readonly %beta, %struct.t_nrnb* nocapture %nrnb) #1 {
  %ixyz = alloca [3 x i32], align 4
  %invh = alloca [3 x float], align 4
  %c1 = alloca [3 x float], align 4
  %c2 = alloca [3 x float], align 4
  %WXYZ = alloca [27 x float], align 16
  %ixw = alloca [7 x i32], align 16
  %iyw = alloca [7 x i32], align 16
  %izw = alloca [7 x i32], align 16
  %nx = alloca i32, align 4
  %ny = alloca i32, align 4
  %nz = alloca i32, align 4
  %la2 = alloca i32, align 4
  %la12 = alloca i32, align 4
  %ptr = alloca float*, align 8
  %1 = bitcast [27 x float]* %WXYZ to i8*
  call void @llvm.lifetime.start(i64 108, i8* %1) #2
  call void @unpack_fftgrid(%struct.t_fftgrid* %grid, i32* %nx, i32* %ny, i32* %nz, i32* %la2, i32* %la12, i32 1, float** %ptr) #6
  %2 = load i32* %nx, align 4, !tbaa !6
  %3 = load i32* %ny, align 4, !tbaa !6
  %4 = load i32* %nz, align 4, !tbaa !6
  %5 = getelementptr inbounds [3 x float]* %invh, i64 0, i64 0
  %6 = sitofp i32 %2 to float
  %7 = load float* %box, align 4, !tbaa !2
  %8 = fdiv float %6, %7
  store float %8, float* %5, align 4, !tbaa !2
  %9 = sitofp i32 %3 to float
  %10 = getelementptr inbounds float* %box, i64 1
  %11 = load float* %10, align 4, !tbaa !2
  %12 = fdiv float %9, %11
  %13 = getelementptr inbounds [3 x float]* %invh, i64 0, i64 1
  store float %12, float* %13, align 4, !tbaa !2
  %14 = sitofp i32 %4 to float
  %15 = getelementptr inbounds float* %box, i64 2
  %16 = load float* %15, align 4, !tbaa !2
  %17 = fdiv float %14, %16
  %18 = getelementptr inbounds [3 x float]* %invh, i64 0, i64 2
  store float %17, float* %18, align 4, !tbaa !2
  br label %19

; <label>:19                                      ; preds = %._crit_edge22, %0
  %20 = phi float [ %8, %0 ], [ %.pre, %._crit_edge22 ]
  %indvars.iv19 = phi i64 [ 0, %0 ], [ %indvars.iv.next20, %._crit_edge22 ]
  %21 = getelementptr inbounds float* %beta, i64 %indvars.iv19
  %22 = load float* %21, align 4, !tbaa !2
  %23 = fpext float %22 to double
  %24 = fmul double %23, 5.000000e-01
  %25 = fpext float %20 to double
  %26 = fmul double %24, %25
  %27 = fptrunc double %26 to float
  %28 = getelementptr inbounds [3 x float]* %c1, i64 0, i64 %indvars.iv19
  store float %27, float* %28, align 4, !tbaa !2
  %29 = fsub double 1.000000e+00, %23
  %30 = fmul double %29, 2.500000e-01
  %31 = fmul double %25, %30
  %32 = fptrunc double %31 to float
  %33 = getelementptr inbounds [3 x float]* %c2, i64 0, i64 %indvars.iv19
  store float %32, float* %33, align 4, !tbaa !2
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  %exitcond21 = icmp eq i64 %indvars.iv.next20, 3
  br i1 %exitcond21, label %34, label %._crit_edge22

._crit_edge22:                                    ; preds = %19
  %.phi.trans.insert = getelementptr inbounds [3 x float]* %invh, i64 0, i64 %indvars.iv.next20
  %.pre = load float* %.phi.trans.insert, align 4, !tbaa !2
  br label %19

; <label>:34                                      ; preds = %19
  %ixw6 = bitcast [7 x i32]* %ixw to i8*
  %iyw9 = bitcast [7 x i32]* %iyw to i8*
  %izw13 = bitcast [7 x i32]* %izw to i8*
  %35 = getelementptr inbounds [3 x float]* %c1, i64 0, i64 0
  %36 = load float* %35, align 4, !tbaa !2
  %37 = getelementptr inbounds [3 x float]* %c1, i64 0, i64 1
  %38 = load float* %37, align 4, !tbaa !2
  %39 = getelementptr inbounds [3 x float]* %c1, i64 0, i64 2
  %40 = load float* %39, align 4, !tbaa !2
  %41 = getelementptr inbounds [3 x float]* %c2, i64 0, i64 0
  %42 = load float* %41, align 4, !tbaa !2
  %43 = getelementptr inbounds [3 x float]* %c2, i64 0, i64 1
  %44 = load float* %43, align 4, !tbaa !2
  %45 = getelementptr inbounds [3 x float]* %c2, i64 0, i64 2
  %46 = load float* %45, align 4, !tbaa !2
  %.b = load i1* @gather_f.bFirst, align 1
  br i1 %.b, label %.preheader, label %47

; <label>:47                                      ; preds = %34
  %48 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([57 x i8]* @.str24, i64 0, i64 0), i32 %2, i32 %3, i32 %4) #6
  %49 = load float* %beta, align 4, !tbaa !2
  %50 = fpext float %49 to double
  %51 = getelementptr inbounds float* %beta, i64 1
  %52 = load float* %51, align 4, !tbaa !2
  %53 = fpext float %52 to double
  %54 = getelementptr inbounds float* %beta, i64 2
  %55 = load float* %54, align 4, !tbaa !2
  %56 = fpext float %55 to double
  %57 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([23 x i8]* @.str25, i64 0, i64 0), double %50, double %53, double %56) #6
  %58 = fpext float %36 to double
  %59 = fpext float %38 to double
  %60 = fpext float %40 to double
  %61 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([23 x i8]* @.str26, i64 0, i64 0), double %58, double %59, double %60) #6
  %62 = fpext float %42 to double
  %63 = fpext float %44 to double
  %64 = fpext float %46 to double
  %65 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([23 x i8]* @.str27, i64 0, i64 0), double %62, double %63, double %64) #6
  %66 = fpext float %8 to double
  %67 = fpext float %12 to double
  %68 = fpext float %17 to double
  %69 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([23 x i8]* @.str2, i64 0, i64 0), double %66, double %67, double %68) #6
  %70 = load i32* %nx, align 4, !tbaa !6
  %71 = load i32* %ny, align 4, !tbaa !6
  %72 = load i32* %nz, align 4, !tbaa !6
  call fastcc void @calc_nxyz(i32 %70, i32 %71, i32 %72, i32** @gather_f.nnx, i32** @gather_f.nny, i32** @gather_f.nnz) #7
  br label %73

; <label>:73                                      ; preds = %73, %47
  %indvars.iv17 = phi i64 [ 0, %47 ], [ %indvars.iv.next18, %73 ]
  %74 = trunc i64 %indvars.iv17 to i32
  %75 = sdiv i32 %74, 9
  %76 = add nsw i32 %75, 2
  %77 = mul nsw i64 %indvars.iv17, 3
  %78 = getelementptr inbounds [81 x i32]* @gather_f.JCXYZ, i64 0, i64 %77
  store i32 %76, i32* %78, align 4, !tbaa !6
  %79 = sdiv i32 %74, 3
  %80 = srem i32 %79, 3
  %81 = add nsw i32 %80, 2
  %82 = add nuw nsw i64 %77, 1
  %83 = getelementptr inbounds [81 x i32]* @gather_f.JCXYZ, i64 0, i64 %82
  store i32 %81, i32* %83, align 4, !tbaa !6
  %84 = srem i32 %74, 3
  %85 = add nsw i32 %84, 2
  %86 = add nuw nsw i64 %77, 2
  %87 = getelementptr inbounds [81 x i32]* @gather_f.JCXYZ, i64 0, i64 %86
  store i32 %85, i32* %87, align 4, !tbaa !6
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1
  %exitcond = icmp eq i64 %indvars.iv.next18, 27
  br i1 %exitcond, label %88, label %73

; <label>:88                                      ; preds = %73
  store i1 true, i1* @gather_f.bFirst, align 1
  br label %.preheader

.preheader:                                       ; preds = %34, %88
  %89 = icmp sgt i32 %nr, 0
  br i1 %89, label %.lr.ph, label %135

.lr.ph:                                           ; preds = %.preheader
  %90 = add nsw i32 %nr, %start
  %91 = getelementptr inbounds [3 x i32]* %ixyz, i64 0, i64 0
  %92 = getelementptr inbounds [27 x float]* %WXYZ, i64 0, i64 0
  %93 = getelementptr inbounds [3 x i32]* %ixyz, i64 0, i64 1
  %94 = getelementptr inbounds [3 x i32]* %ixyz, i64 0, i64 2
  %95 = getelementptr inbounds [7 x i32]* %ixw, i64 0, i64 0
  %96 = getelementptr inbounds [7 x i32]* %iyw, i64 0, i64 0
  %97 = getelementptr inbounds [7 x i32]* %izw, i64 0, i64 0
  %98 = sext i32 %start to i64
  %99 = sext i32 %90 to i64
  br label %100

; <label>:100                                     ; preds = %.lr.ph, %100
  %indvars.iv = phi i64 [ %98, %.lr.ph ], [ %indvars.iv.next, %100 ]
  %energy.02 = phi float [ 0.000000e+00, %.lr.ph ], [ %132, %100 ]
  %101 = load i32* %nx, align 4, !tbaa !6
  %102 = load i32* %ny, align 4, !tbaa !6
  %103 = load i32* %nz, align 4, !tbaa !6
  %104 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 0
  %105 = trunc i64 %indvars.iv to i32
  call void @calc_weights(i32 %105, i32 %101, i32 %102, i32 %103, float* %104, float* undef, float* %5, i32* %91, float* %92) #7
  %106 = load i32* %91, align 4, !tbaa !6
  %107 = load i32* %nx, align 4, !tbaa !6
  %108 = load i32** @gather_f.nnx, align 8, !tbaa !8
  %109 = load i32* %93, align 4, !tbaa !6
  %110 = load i32* %ny, align 4, !tbaa !6
  %111 = load i32** @gather_f.nny, align 8, !tbaa !8
  %112 = load i32* %94, align 4, !tbaa !6
  %113 = load i32* %nz, align 4, !tbaa !6
  %114 = load i32** @gather_f.nnz, align 8, !tbaa !8
  %115 = sext i32 %106 to i64
  %116 = sext i32 %107 to i64
  %117 = add nsw i64 %115, %116
  %scevgep.sum = add nsw i64 %117, -3
  %scevgep7 = getelementptr i32* %108, i64 %scevgep.sum
  %scevgep78 = bitcast i32* %scevgep7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %ixw6, i8* %scevgep78, i64 28, i32 4, i1 false)
  %118 = sext i32 %109 to i64
  %119 = sext i32 %110 to i64
  %120 = add nsw i64 %118, %119
  %scevgep10.sum = add nsw i64 %120, -3
  %scevgep11 = getelementptr i32* %111, i64 %scevgep10.sum
  %scevgep1112 = bitcast i32* %scevgep11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %iyw9, i8* %scevgep1112, i64 28, i32 4, i1 false)
  %121 = sext i32 %112 to i64
  %122 = sext i32 %113 to i64
  %123 = add nsw i64 %121, %122
  %scevgep14.sum = add nsw i64 %123, -3
  %scevgep15 = getelementptr i32* %114, i64 %scevgep14.sum
  %scevgep1516 = bitcast i32* %scevgep15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %izw13, i8* %scevgep1516, i64 28, i32 4, i1 false)
  %124 = getelementptr inbounds float* %charge, i64 %indvars.iv
  %125 = load float* %124, align 4, !tbaa !2
  %126 = load i32* %la2, align 4, !tbaa !6
  %127 = load i32* %la12, align 4, !tbaa !6
  %128 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv, i64 0
  %129 = load float** %ptr, align 8, !tbaa !8
  %130 = call float @gather_inner(i32* getelementptr inbounds ([81 x i32]* @gather_f.JCXYZ, i64 0, i64 0), float* %92, i32* %95, i32* %96, i32* %97, i32 %126, i32 %127, float %36, float %38, float %40, float %42, float %44, float %46, float %125, float* %128, float* %129) #7
  %131 = fmul float %125, %130
  %132 = fadd float %energy.02, %131
  %133 = getelementptr inbounds float* %pot, i64 %indvars.iv
  store float %130, float* %133, align 4, !tbaa !2
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %134 = icmp slt i64 %indvars.iv.next, %99
  br i1 %134, label %100, label %._crit_edge

._crit_edge:                                      ; preds = %100
  %phitmp = fmul float %132, 5.000000e-01
  br label %135

; <label>:135                                     ; preds = %._crit_edge, %.preheader
  %energy.0.lcssa = phi float [ %phitmp, %._crit_edge ], [ 0.000000e+00, %.preheader ]
  %136 = mul nsw i32 %nr, 27
  %137 = sitofp i32 %136 to double
  %138 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 82
  %139 = load double* %138, align 8, !tbaa !12
  %140 = fadd double %137, %139
  store double %140, double* %138, align 8, !tbaa !12
  %141 = mul nsw i32 %nr, 3
  %142 = sitofp i32 %141 to double
  %143 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 79
  %144 = load double* %143, align 8, !tbaa !12
  %145 = fadd double %142, %144
  store double %145, double* %143, align 8, !tbaa !12
  call void @llvm.lifetime.end(i64 108, i8* %1) #2
  ret float %energy.0.lcssa
}

; Function Attrs: nounwind optsize ssp uwtable
define float @do_opt_pppm(%struct.__sFILE* nocapture %log, i32 %bVerbose, %struct.t_inputrec* nocapture readonly %ir, i32 %natoms, [3 x float]* nocapture readonly %x, [3 x float]* nocapture %f, float* nocapture readonly %charge, float* %box, float* nocapture %phi, %struct.t_commrec* %cr, %struct.t_nrnb* nocapture %nrnb, float* nocapture readonly %beta, %struct.t_fftgrid* %grid, i32 %bOld) #1 {
  %1 = tail call i64 @fwrite(i8* getelementptr inbounds ([26 x i8]* @.str8, i64 0, i64 0), i64 25, i64 1, %struct.__sFILE* %log)
  %2 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 17
  %3 = load i32* %2, align 4, !tbaa !22
  %4 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 18
  %5 = load i32* %4, align 4, !tbaa !25
  %6 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 19
  %7 = load i32* %6, align 4, !tbaa !26
  %8 = tail call float*** @mk_rgrid(i32 %3, i32 %5, i32 %7) #6
  %9 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 37
  %10 = load float* %9, align 4, !tbaa !27
  %11 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 38
  %12 = load float* %11, align 4, !tbaa !28
  tail call void @mk_ghat(%struct.__sFILE* null, i32 %3, i32 %5, i32 %7, float*** %8, float* %box, float %10, float %12, i32 1, i32 %bOld) #6
  tail call void @clear_fftgrid(%struct.t_fftgrid* %grid) #6
  tail call void @spread_q(%struct.__sFILE* %log, i32 undef, i32 0, i32 %natoms, [3 x float]* %x, float* %charge, float* %box, %struct.t_fftgrid* %grid, %struct.t_nrnb* %nrnb) #7
  tail call void @solve_pppm(%struct.__sFILE* undef, %struct.t_commrec* %cr, %struct.t_fftgrid* %grid, float*** %8, float* undef, i32 %bVerbose, %struct.t_nrnb* %nrnb) #7
  %13 = tail call fastcc float @gather_f(%struct.__sFILE* %log, i32 0, i32 %natoms, [3 x float]* %x, [3 x float]* %f, float* %charge, float* %box, float* %phi, %struct.t_fftgrid* %grid, float* %beta, %struct.t_nrnb* %nrnb) #7
  tail call void @free_rgrid(float*** %8, i32 %3, i32 %5) #6
  ret float %13
}

; Function Attrs: optsize
declare void @free_rgrid(float***, i32, i32) #3

declare float @fabsf(float)

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

attributes #0 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize }
attributes #7 = { optsize }
attributes #8 = { nounwind optsize readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"float", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !4, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!11, !9, i64 0}
!11 = !{!"", !9, i64 0, !9, i64 8, !9, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56}
!12 = !{!13, !13, i64 0}
!13 = !{!"double", !4, i64 0}
!14 = !{!11, !7, i64 52}
!15 = !{!16, !7, i64 4}
!16 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20}
!17 = !{!16, !7, i64 20}
!18 = !{!19, !3, i64 0}
!19 = !{!"", !3, i64 0, !3, i64 4}
!20 = !{!19, !3, i64 4}
!21 = !{!11, !7, i64 56}
!22 = !{!23, !7, i64 68}
!23 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !3, i64 56, !3, i64 60, !3, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !7, i64 80, !3, i64 84, !7, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !3, i64 120, !4, i64 124, !4, i64 160, !7, i64 196, !3, i64 200, !3, i64 204, !7, i64 208, !3, i64 212, !3, i64 216, !7, i64 220, !3, i64 224, !3, i64 228, !3, i64 232, !7, i64 236, !3, i64 240, !3, i64 244, !7, i64 248, !3, i64 252, !3, i64 256, !3, i64 260, !3, i64 264, !3, i64 268, !7, i64 272, !7, i64 276, !7, i64 280, !3, i64 284, !3, i64 288, !3, i64 292, !7, i64 296, !3, i64 300, !3, i64 304, !7, i64 308, !7, i64 312, !7, i64 316, !7, i64 320, !7, i64 324, !3, i64 328, !7, i64 332, !3, i64 336, !3, i64 340, !7, i64 344, !3, i64 348, !7, i64 352, !7, i64 356, !7, i64 360, !7, i64 364, !3, i64 368, !3, i64 372, !3, i64 376, !3, i64 380, !24, i64 384, !4, i64 448, !4, i64 520}
!24 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56}
!25 = !{!23, !7, i64 72}
!26 = !{!23, !7, i64 76}
!27 = !{!23, !3, i64 212}
!28 = !{!23, !3, i64 216}
!29 = !{!23, !7, i64 96}
!30 = !{!31, !7, i64 0}
!31 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !4, i64 28, !4, i64 1052, !4, i64 2076, !4, i64 3100}
