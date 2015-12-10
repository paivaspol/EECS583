; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/pssolve.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_PSgrid = type { i32, i32, i32, float*** }
%struct.t_nrnb = type { [129 x double] }

@solve_poisson.bFirst = internal unnamed_addr global i1 false
@solve_poisson.nnx = internal global i32* null, align 8
@solve_poisson.nny = internal global i32* null, align 8
@solve_poisson.nnz = internal global i32* null, align 8
@solve_poisson.fac = internal unnamed_addr global float 0.000000e+00, align 4
@solve_poisson.dx_2 = internal unnamed_addr global float 0.000000e+00, align 4
@solve_poisson.dy_2 = internal unnamed_addr global float 0.000000e+00, align 4
@solve_poisson.dz_2 = internal unnamed_addr global float 0.000000e+00, align 4
@solve_poisson.fac_1 = internal unnamed_addr global float 0.000000e+00, align 4
@solve_poisson.omega = internal unnamed_addr global float 0.000000e+00, align 4
@.str = private unnamed_addr constant [43 x i8] c"Solving Poisson Equation on %dx%dx%d grid\0A\00", align 1
@.str1 = private unnamed_addr constant [21 x i8] c"xi = %g, omega = %g\0A\00", align 1
@__stderrp = external global %struct.__sFILE*
@.str2 = private unnamed_addr constant [35 x i8] c"\0Dnit: %5d  dev: %8.3f  sum: %8.3f\0A\00", align 1
@.str4 = private unnamed_addr constant [52 x i8] c"Poisson Solver did *not* converge in %d iterations\0A\00", align 1

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
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #8
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

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinitef(float %__x) #2 {
  %1 = fcmp ord float %__x, 0.000000e+00
  br i1 %1, label %2, label %5

; <label>:2                                       ; preds = %0
  %3 = tail call float @llvm.fabs.f32(float %__x) #9
  %4 = fcmp une float %3, 0x7FF0000000000000
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: nounwind readnone
declare float @llvm.fabs.f32(float) #3

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinited(double %__x) #2 {
  %1 = fcmp ord double %__x, 0.000000e+00
  br i1 %1, label %2, label %5

; <label>:2                                       ; preds = %0
  %3 = tail call double @llvm.fabs.f64(double %__x) #9
  %4 = fcmp une double %3, 0x7FF0000000000000
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #3

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinitel(x86_fp80 %__x) #2 {
  %1 = fcmp ord x86_fp80 %__x, 0xK00000000000000000000
  br i1 %1, label %2, label %5

; <label>:2                                       ; preds = %0
  %3 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #9
  %4 = fcmp une x86_fp80 %3, 0xK7FFF8000000000000000
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: nounwind readnone
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #3

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinff(float %__x) #2 {
  %1 = tail call float @llvm.fabs.f32(float %__x) #9
  %2 = fcmp oeq float %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfd(double %__x) #2 {
  %1 = tail call double @llvm.fabs.f64(double %__x) #9
  %2 = fcmp oeq double %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfl(x86_fp80 %__x) #2 {
  %1 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #9
  %2 = fcmp oeq x86_fp80 %1, 0xK7FFF8000000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnanf(float %__x) #2 {
  %1 = fcmp uno float %__x, 0.000000e+00
  %2 = zext i1 %1 to i32
  ret i32 %2
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnand(double %__x) #2 {
  %1 = fcmp uno double %__x, 0.000000e+00
  %2 = zext i1 %1 to i32
  ret i32 %2
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnanl(x86_fp80 %__x) #2 {
  %1 = fcmp uno x86_fp80 %__x, 0xK00000000000000000000
  %2 = zext i1 %1 to i32
  ret i32 %2
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitf(float %__x) #2 {
  %1 = bitcast float %__x to i32
  %2 = lshr i32 %1, 31
  ret i32 %2
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitd(double %__x) #2 {
  %1 = bitcast double %__x to i64
  %2 = lshr i64 %1, 63
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitl(x86_fp80 %__x) #2 {
  %1 = bitcast x86_fp80 %__x to i80
  %2 = lshr i80 %1, 79
  %3 = trunc i80 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormalf(float %__x) #2 {
  %1 = fcmp ord float %__x, 0.000000e+00
  %2 = tail call float @llvm.fabs.f32(float %__x) #3
  %3 = fcmp une float %2, 0x7FF0000000000000
  %or.cond = and i1 %1, %3
  br i1 %or.cond, label %4, label %.critedge

; <label>:4                                       ; preds = %0
  %5 = fcmp oge float %2, 0x3810000000000000
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormald(double %__x) #2 {
  %1 = fcmp ord double %__x, 0.000000e+00
  %2 = tail call double @llvm.fabs.f64(double %__x) #3
  %3 = fcmp une double %2, 0x7FF0000000000000
  %or.cond = and i1 %1, %3
  br i1 %or.cond, label %4, label %.critedge

; <label>:4                                       ; preds = %0
  %5 = fcmp oge double %2, 0x10000000000000
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormall(x86_fp80 %__x) #2 {
  %1 = fcmp ord x86_fp80 %__x, 0xK00000000000000000000
  %2 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #3
  %3 = fcmp une x86_fp80 %2, 0xK7FFF8000000000000000
  %or.cond = and i1 %1, %3
  br i1 %or.cond, label %4, label %.critedge

; <label>:4                                       ; preds = %0
  %5 = fcmp oge x86_fp80 %2, 0xK00018000000000000000
  br label %.critedge

.critedge:                                        ; preds = %0, %4
  %6 = phi i1 [ %5, %4 ], [ false, %0 ]
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincosf(float %__x, float* nocapture %__sinp, float* nocapture %__cosp) #0 {
  %1 = tail call <2 x float> @__sincosf_stret(float %__x) #8
  %2 = extractelement <2 x float> %1, i32 0
  store float %2, float* %__sinp, align 4, !tbaa !14
  %3 = extractelement <2 x float> %1, i32 1
  store float %3, float* %__cosp, align 4, !tbaa !14
  ret void
}

; Function Attrs: optsize
declare <2 x float> @__sincosf_stret(float) #1

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincos(double %__x, double* nocapture %__sinp, double* nocapture %__cosp) #0 {
  %1 = tail call { double, double } @__sincos_stret(double %__x) #8
  %2 = extractvalue { double, double } %1, 0
  %3 = extractvalue { double, double } %1, 1
  store double %2, double* %__sinp, align 8, !tbaa !16
  store double %3, double* %__cosp, align 8, !tbaa !16
  ret void
}

; Function Attrs: optsize
declare { double, double } @__sincos_stret(double) #1

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincospif(float %__x, float* nocapture %__sinp, float* nocapture %__cosp) #0 {
  %1 = tail call <2 x float> @__sincospif_stret(float %__x) #8
  %2 = extractelement <2 x float> %1, i32 0
  store float %2, float* %__sinp, align 4, !tbaa !14
  %3 = extractelement <2 x float> %1, i32 1
  store float %3, float* %__cosp, align 4, !tbaa !14
  ret void
}

; Function Attrs: optsize
declare <2 x float> @__sincospif_stret(float) #1

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincospi(double %__x, double* nocapture %__sinp, double* nocapture %__cosp) #0 {
  %1 = tail call { double, double } @__sincospi_stret(double %__x) #8
  %2 = extractvalue { double, double } %1, 0
  %3 = extractvalue { double, double } %1, 1
  store double %2, double* %__sinp, align 8, !tbaa !16
  store double %3, double* %__cosp, align 8, !tbaa !16
  ret void
}

; Function Attrs: optsize
declare { double, double } @__sincospi_stret(double) #1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @solve_poisson(%struct.__sFILE* nocapture %log, %struct.t_PSgrid* %pot, %struct.t_PSgrid* %rho, i32 %bVerbose, %struct.t_nrnb* nocapture readnone %nrnb, i32 %maxnit, float %tol, float* nocapture readonly %box) #4 {
  %nx = alloca i32, align 4
  %ny = alloca i32, align 4
  %nz = alloca i32, align 4
  %pot_ptr = alloca float***, align 8
  %rho_ptr = alloca float***, align 8
  call void @unpack_PSgrid(%struct.t_PSgrid* %pot, i32* %nx, i32* %ny, i32* %nz, float**** %pot_ptr) #8
  call void @unpack_PSgrid(%struct.t_PSgrid* %rho, i32* %nx, i32* %ny, i32* %nz, float**** %rho_ptr) #8
  %.b = load i1* @solve_poisson.bFirst, align 1
  br i1 %.b, label %.preheader, label %1

; <label>:1                                       ; preds = %0
  %2 = load i32* %nx, align 4, !tbaa !18
  %3 = load i32* %ny, align 4, !tbaa !18
  %4 = load i32* %nz, align 4, !tbaa !18
  %5 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([43 x i8]* @.str, i64 0, i64 0), i32 %2, i32 %3, i32 %4) #8
  %6 = load i32* %nx, align 4, !tbaa !18
  %7 = load i32* %ny, align 4, !tbaa !18
  %8 = load i32* %nz, align 4, !tbaa !18
  call void @calc_nxyz(i32 %6, i32 %7, i32 %8, i32** @solve_poisson.nnx, i32** @solve_poisson.nny, i32** @solve_poisson.nnz) #8
  %9 = load float* %box, align 4, !tbaa !14
  %10 = load i32* %nx, align 4, !tbaa !18
  %11 = sitofp i32 %10 to float
  %12 = fdiv float %9, %11
  %13 = fmul float %12, %12
  %14 = getelementptr inbounds float* %box, i64 1
  %15 = load float* %14, align 4, !tbaa !14
  %16 = load i32* %ny, align 4, !tbaa !18
  %17 = sitofp i32 %16 to float
  %18 = fdiv float %15, %17
  %19 = fmul float %18, %18
  %20 = getelementptr inbounds float* %box, i64 2
  %21 = load float* %20, align 4, !tbaa !14
  %22 = load i32* %nz, align 4, !tbaa !18
  %23 = sitofp i32 %22 to float
  %24 = fdiv float %21, %23
  %25 = fmul float %24, %24
  %26 = fdiv float 1.000000e+00, %13
  store float %26, float* @solve_poisson.dx_2, align 4, !tbaa !14
  %27 = fdiv float 1.000000e+00, %19
  store float %27, float* @solve_poisson.dy_2, align 4, !tbaa !14
  %28 = fdiv float 1.000000e+00, %25
  store float %28, float* @solve_poisson.dz_2, align 4, !tbaa !14
  %29 = fadd float %26, %27
  %30 = fadd float %29, %28
  %31 = fmul float %30, 2.000000e+00
  store float %31, float* @solve_poisson.fac_1, align 4, !tbaa !14
  %32 = fdiv float 1.000000e+00, %31
  store float %32, float* @solve_poisson.fac, align 4, !tbaa !14
  %33 = shl nsw i32 %10, 1
  %34 = sitofp i32 %33 to double
  %35 = fdiv double 0x400921FB54442D18, %34
  %36 = call double @sin(double %35) #10
  %37 = fptrunc double %36 to float
  %38 = fmul float %37, %37
  %39 = fmul float %38, 2.000000e+00
  %40 = fsub float 1.000000e+00, %39
  %41 = fmul float %40, %40
  %42 = fsub float 1.000000e+00, %41
  %43 = fpext float %42 to double
  %44 = call double @sqrt(double %43) #10
  %45 = fadd double %44, 1.000000e+00
  %46 = fdiv double 2.000000e+00, %45
  %47 = fptrunc double %46 to float
  store float %47, float* @solve_poisson.omega, align 4, !tbaa !14
  %48 = fpext float %40 to double
  %49 = fpext float %47 to double
  %50 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([21 x i8]* @.str1, i64 0, i64 0), double %48, double %49) #8
  store i1 true, i1* @solve_poisson.bFirst, align 1
  br label %.preheader

.preheader:                                       ; preds = %0, %1
  %51 = icmp ne i32 %bVerbose, 0
  br label %52

; <label>:52                                      ; preds = %.preheader, %174
  %nit.0 = phi i32 [ %175, %174 ], [ 0, %.preheader ]
  %53 = load i32* %nx, align 4, !tbaa !18
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %.lr.ph16, label %._crit_edge

.lr.ph16:                                         ; preds = %52
  %55 = load i32** @solve_poisson.nnx, align 8, !tbaa !19
  %56 = load i32* %ny, align 4, !tbaa !18
  %57 = icmp sgt i32 %56, 0
  %58 = load i32** @solve_poisson.nny, align 8, !tbaa !19
  %59 = load i32* %nz, align 4, !tbaa !18
  %60 = icmp sgt i32 %59, 0
  %61 = load i32** @solve_poisson.nnz, align 8, !tbaa !19
  %62 = load float**** %rho_ptr, align 8, !tbaa !19
  %63 = load float**** %pot_ptr, align 8, !tbaa !19
  %64 = sext i32 %59 to i64
  %65 = add i32 %59, -1
  %66 = sext i32 %56 to i64
  %67 = add i32 %56, -1
  %68 = sext i32 %53 to i64
  br label %70

.loopexit1:                                       ; preds = %.loopexit, %70
  %deviation.1.lcssa = phi float [ %deviation.015, %70 ], [ %deviation.2.lcssa, %.loopexit ]
  %sum.1.lcssa = phi float [ %sum.014, %70 ], [ %sum.2.lcssa, %.loopexit ]
  %69 = icmp slt i64 %indvars.iv.next26, %68
  br i1 %69, label %70, label %._crit_edge

; <label>:70                                      ; preds = %.lr.ph16, %.loopexit1
  %indvars.iv25 = phi i64 [ 0, %.lr.ph16 ], [ %indvars.iv.next26, %.loopexit1 ]
  %deviation.015 = phi float [ 0.000000e+00, %.lr.ph16 ], [ %deviation.1.lcssa, %.loopexit1 ]
  %sum.014 = phi float [ 0.000000e+00, %.lr.ph16 ], [ %sum.1.lcssa, %.loopexit1 ]
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  br i1 %57, label %.lr.ph10, label %.loopexit1

.lr.ph10:                                         ; preds = %70
  %71 = trunc i64 %indvars.iv.next26 to i32
  %72 = add nsw i32 %53, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32* %55, i64 %73
  %75 = load i32* %74, align 4, !tbaa !18
  %76 = add i64 %indvars.iv25, 4294967295
  %77 = trunc i64 %76 to i32
  %78 = add nsw i32 %77, %53
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32* %55, i64 %79
  %81 = load i32* %80, align 4, !tbaa !18
  %82 = getelementptr inbounds float*** %62, i64 %indvars.iv25
  %83 = getelementptr inbounds float*** %63, i64 %indvars.iv25
  %84 = sext i32 %81 to i64
  %85 = getelementptr inbounds float*** %63, i64 %84
  %86 = sext i32 %75 to i64
  %87 = getelementptr inbounds float*** %63, i64 %86
  br label %88

.loopexit:                                        ; preds = %114, %88
  %deviation.2.lcssa = phi float [ %deviation.19, %88 ], [ %155, %114 ]
  %sum.2.lcssa = phi float [ %sum.18, %88 ], [ %161, %114 ]
  %lftr.wideiv23 = trunc i64 %indvars.iv21 to i32
  %exitcond24 = icmp eq i32 %lftr.wideiv23, %67
  br i1 %exitcond24, label %.loopexit1, label %88

; <label>:88                                      ; preds = %.loopexit, %.lr.ph10
  %indvars.iv21 = phi i64 [ 0, %.lr.ph10 ], [ %indvars.iv.next22, %.loopexit ]
  %deviation.19 = phi float [ %deviation.015, %.lr.ph10 ], [ %deviation.2.lcssa, %.loopexit ]
  %sum.18 = phi float [ %sum.014, %.lr.ph10 ], [ %sum.2.lcssa, %.loopexit ]
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  br i1 %60, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %88
  %89 = add nsw i64 %66, %indvars.iv.next22
  %90 = getelementptr inbounds i32* %58, i64 %89
  %91 = load i32* %90, align 4, !tbaa !18
  %92 = add nsw i64 %indvars.iv21, -1
  %93 = add nsw i64 %92, %66
  %94 = getelementptr inbounds i32* %58, i64 %93
  %95 = load i32* %94, align 4, !tbaa !18
  %96 = load float*** %82, align 8, !tbaa !19
  %97 = getelementptr inbounds float** %96, i64 %indvars.iv21
  %98 = load float** %97, align 8, !tbaa !19
  %99 = load float*** %83, align 8, !tbaa !19
  %100 = getelementptr inbounds float** %99, i64 %indvars.iv21
  %101 = load float** %100, align 8, !tbaa !19
  %102 = load float*** %85, align 8, !tbaa !19
  %103 = getelementptr inbounds float** %102, i64 %indvars.iv21
  %104 = load float** %103, align 8, !tbaa !19
  %105 = load float*** %87, align 8, !tbaa !19
  %106 = getelementptr inbounds float** %105, i64 %indvars.iv21
  %107 = load float** %106, align 8, !tbaa !19
  %108 = sext i32 %95 to i64
  %109 = getelementptr inbounds float** %99, i64 %108
  %110 = load float** %109, align 8, !tbaa !19
  %111 = sext i32 %91 to i64
  %112 = getelementptr inbounds float** %99, i64 %111
  %113 = load float** %112, align 8, !tbaa !19
  br label %114

; <label>:114                                     ; preds = %114, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %114 ]
  %deviation.25 = phi float [ %deviation.19, %.lr.ph ], [ %155, %114 ]
  %sum.24 = phi float [ %sum.18, %.lr.ph ], [ %161, %114 ]
  %115 = add nsw i64 %indvars.iv, -1
  %116 = add nsw i64 %115, %64
  %117 = getelementptr inbounds i32* %61, i64 %116
  %118 = load i32* %117, align 4, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %119 = add nsw i64 %64, %indvars.iv.next
  %120 = getelementptr inbounds i32* %61, i64 %119
  %121 = load i32* %120, align 4, !tbaa !18
  %122 = getelementptr inbounds float* %98, i64 %indvars.iv
  %123 = load float* %122, align 4, !tbaa !14
  %124 = getelementptr inbounds float* %101, i64 %indvars.iv
  %125 = load float* %124, align 4, !tbaa !14
  %126 = load float* @solve_poisson.dx_2, align 4, !tbaa !14
  %127 = getelementptr inbounds float* %104, i64 %indvars.iv
  %128 = load float* %127, align 4, !tbaa !14
  %129 = getelementptr inbounds float* %107, i64 %indvars.iv
  %130 = load float* %129, align 4, !tbaa !14
  %131 = fadd float %128, %130
  %132 = fmul float %126, %131
  %133 = load float* @solve_poisson.dy_2, align 4, !tbaa !14
  %134 = getelementptr inbounds float* %110, i64 %indvars.iv
  %135 = load float* %134, align 4, !tbaa !14
  %136 = getelementptr inbounds float* %113, i64 %indvars.iv
  %137 = load float* %136, align 4, !tbaa !14
  %138 = fadd float %135, %137
  %139 = fmul float %133, %138
  %140 = fadd float %132, %139
  %141 = load float* @solve_poisson.dz_2, align 4, !tbaa !14
  %142 = sext i32 %118 to i64
  %143 = getelementptr inbounds float* %101, i64 %142
  %144 = load float* %143, align 4, !tbaa !14
  %145 = sext i32 %121 to i64
  %146 = getelementptr inbounds float* %101, i64 %145
  %147 = load float* %146, align 4, !tbaa !14
  %148 = fadd float %144, %147
  %149 = fmul float %141, %148
  %150 = fadd float %140, %149
  %151 = load float* @solve_poisson.fac_1, align 4, !tbaa !14
  %152 = fmul float %125, %151
  %153 = fsub float %150, %152
  %154 = fadd float %123, %153
  %fabsf = call float @fabsf(float %154) #6
  %155 = fadd float %deviation.25, %fabsf
  %156 = load float* @solve_poisson.omega, align 4, !tbaa !14
  %157 = load float* @solve_poisson.fac, align 4, !tbaa !14
  %158 = fmul float %156, %157
  %159 = fmul float %158, %154
  %160 = fadd float %125, %159
  store float %160, float* %124, align 4, !tbaa !14
  %161 = fadd float %sum.24, %160
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %65
  br i1 %exitcond, label %.loopexit, label %114

._crit_edge:                                      ; preds = %.loopexit1, %52
  %deviation.0.lcssa = phi float [ 0.000000e+00, %52 ], [ %deviation.1.lcssa, %.loopexit1 ]
  %sum.0.lcssa = phi float [ 0.000000e+00, %52 ], [ %sum.1.lcssa, %.loopexit1 ]
  call void @symmetrize_PSgrid(%struct.__sFILE* null, %struct.t_PSgrid* %pot, float %sum.0.lcssa) #8
  %162 = load i32* %nx, align 4, !tbaa !18
  %163 = load i32* %ny, align 4, !tbaa !18
  %164 = mul nsw i32 %163, %162
  %165 = load i32* %nz, align 4, !tbaa !18
  %166 = mul nsw i32 %164, %165
  %167 = sitofp i32 %166 to float
  %168 = fdiv float %deviation.0.lcssa, %167
  br i1 %51, label %169, label %174

; <label>:169                                     ; preds = %._crit_edge
  %170 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !19
  %171 = fpext float %168 to double
  %172 = fpext float %sum.0.lcssa to double
  %173 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %170, i8* getelementptr inbounds ([35 x i8]* @.str2, i64 0, i64 0), i32 %nit.0, double %171, double %172) #8
  br label %174

; <label>:174                                     ; preds = %169, %._crit_edge
  %175 = add nuw nsw i32 %nit.0, 1
  %176 = icmp slt i32 %175, %maxnit
  %177 = fcmp ogt float %168, %tol
  %or.cond = and i1 %176, %177
  br i1 %or.cond, label %52, label %.critedge

.critedge:                                        ; preds = %174
  br i1 %51, label %178, label %180

; <label>:178                                     ; preds = %.critedge
  %179 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !19
  %fputc = call i32 @fputc(i32 10, %struct.__sFILE* %179)
  br label %180

; <label>:180                                     ; preds = %178, %.critedge
  %181 = icmp eq i32 %175, %maxnit
  br i1 %181, label %182, label %183

; <label>:182                                     ; preds = %180
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([52 x i8]* @.str4, i64 0, i64 0), i32 %maxnit) #8
  br label %183

; <label>:183                                     ; preds = %182, %180
  ret i32 %175
}

; Function Attrs: optsize
declare void @unpack_PSgrid(%struct.t_PSgrid*, i32*, i32*, i32*, float****) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #5

; Function Attrs: optsize
declare void @calc_nxyz(i32, i32, i32, i32**, i32**, i32**) #1

; Function Attrs: nounwind optsize readnone
declare double @sin(double) #6

; Function Attrs: nounwind optsize readnone
declare double @sqrt(double) #6

; Function Attrs: optsize
declare void @symmetrize_PSgrid(%struct.__sFILE*, %struct.t_PSgrid*, float) #1

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

declare float @fabsf(float)

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct.__sFILE* nocapture) #7

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind optsize }
attributes #9 = { readnone }
attributes #10 = { nounwind optsize readnone }

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
!14 = !{!15, !15, i64 0}
!15 = !{!"float", !5, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"double", !5, i64 0}
!18 = !{!7, !7, i64 0}
!19 = !{!4, !4, i64 0}
