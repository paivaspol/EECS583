; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/do_fit.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

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
  %1 = fcmp ord float %__x, 0.000000e+00
  br i1 %1, label %2, label %5

; <label>:2                                       ; preds = %0
  %3 = tail call float @llvm.fabs.f32(float %__x) #8
  %4 = fcmp une float %3, 0x7FF0000000000000
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: nounwind readnone
declare float @llvm.fabs.f32(float) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinited(double %__x) #0 {
  %1 = fcmp ord double %__x, 0.000000e+00
  br i1 %1, label %2, label %5

; <label>:2                                       ; preds = %0
  %3 = tail call double @llvm.fabs.f64(double %__x) #8
  %4 = fcmp une double %3, 0x7FF0000000000000
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: nounwind readnone
declare double @llvm.fabs.f64(double) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinitel(x86_fp80 %__x) #0 {
  %1 = fcmp ord x86_fp80 %__x, 0xK00000000000000000000
  br i1 %1, label %2, label %5

; <label>:2                                       ; preds = %0
  %3 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #8
  %4 = fcmp une x86_fp80 %3, 0xK7FFF8000000000000000
  br label %5

; <label>:5                                       ; preds = %2, %0
  %6 = phi i1 [ false, %0 ], [ %4, %2 ]
  %7 = zext i1 %6 to i32
  ret i32 %7
}

; Function Attrs: nounwind readnone
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #1

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinff(float %__x) #0 {
  %1 = tail call float @llvm.fabs.f32(float %__x) #8
  %2 = fcmp oeq float %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfd(double %__x) #0 {
  %1 = tail call double @llvm.fabs.f64(double %__x) #8
  %2 = fcmp oeq double %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfl(x86_fp80 %__x) #0 {
  %1 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #8
  %2 = fcmp oeq x86_fp80 %1, 0xK7FFF8000000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnanf(float %__x) #0 {
  %1 = fcmp uno float %__x, 0.000000e+00
  %2 = zext i1 %1 to i32
  ret i32 %2
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnand(double %__x) #0 {
  %1 = fcmp uno double %__x, 0.000000e+00
  %2 = zext i1 %1 to i32
  ret i32 %2
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnanl(x86_fp80 %__x) #0 {
  %1 = fcmp uno x86_fp80 %__x, 0xK00000000000000000000
  %2 = zext i1 %1 to i32
  ret i32 %2
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitf(float %__x) #0 {
  %1 = bitcast float %__x to i32
  %2 = lshr i32 %1, 31
  ret i32 %2
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitd(double %__x) #0 {
  %1 = bitcast double %__x to i64
  %2 = lshr i64 %1, 63
  %3 = trunc i64 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_signbitl(x86_fp80 %__x) #0 {
  %1 = bitcast x86_fp80 %__x to i80
  %2 = lshr i80 %1, 79
  %3 = trunc i80 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isnormalf(float %__x) #0 {
  %1 = fcmp ord float %__x, 0.000000e+00
  %2 = tail call float @llvm.fabs.f32(float %__x) #1
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
define i32 @__inline_isnormald(double %__x) #0 {
  %1 = fcmp ord double %__x, 0.000000e+00
  %2 = tail call double @llvm.fabs.f64(double %__x) #1
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
define i32 @__inline_isnormall(x86_fp80 %__x) #0 {
  %1 = fcmp ord x86_fp80 %__x, 0xK00000000000000000000
  %2 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #1
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
define void @__sincosf(float %__x, float* nocapture %__sinp, float* nocapture %__cosp) #2 {
  %1 = tail call <2 x float> @__sincosf_stret(float %__x) #9
  %2 = extractelement <2 x float> %1, i32 0
  store float %2, float* %__sinp, align 4, !tbaa !2
  %3 = extractelement <2 x float> %1, i32 1
  store float %3, float* %__cosp, align 4, !tbaa !2
  ret void
}

; Function Attrs: optsize
declare <2 x float> @__sincosf_stret(float) #3

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincos(double %__x, double* nocapture %__sinp, double* nocapture %__cosp) #2 {
  %1 = tail call { double, double } @__sincos_stret(double %__x) #9
  %2 = extractvalue { double, double } %1, 0
  %3 = extractvalue { double, double } %1, 1
  store double %2, double* %__sinp, align 8, !tbaa !6
  store double %3, double* %__cosp, align 8, !tbaa !6
  ret void
}

; Function Attrs: optsize
declare { double, double } @__sincos_stret(double) #3

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincospif(float %__x, float* nocapture %__sinp, float* nocapture %__cosp) #2 {
  %1 = tail call <2 x float> @__sincospif_stret(float %__x) #9
  %2 = extractelement <2 x float> %1, i32 0
  store float %2, float* %__sinp, align 4, !tbaa !2
  %3 = extractelement <2 x float> %1, i32 1
  store float %3, float* %__cosp, align 4, !tbaa !2
  ret void
}

; Function Attrs: optsize
declare <2 x float> @__sincospif_stret(float) #3

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define void @__sincospi(double %__x, double* nocapture %__sinp, double* nocapture %__cosp) #2 {
  %1 = tail call { double, double } @__sincospi_stret(double %__x) #9
  %2 = extractvalue { double, double } %1, 0
  %3 = extractvalue { double, double } %1, 1
  store double %2, double* %__sinp, align 8, !tbaa !6
  store double %3, double* %__cosp, align 8, !tbaa !6
  ret void
}

; Function Attrs: optsize
declare { double, double } @__sincospi_stret(double) #3

; Function Attrs: alwaysinline nounwind optsize ssp uwtable
define i32 @__sputc(i32 %_c, %struct.__sFILE* %_p) #2 {
  %1 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 2
  %2 = load i32* %1, align 4, !tbaa !8
  %3 = add nsw i32 %2, -1
  store i32 %3, i32* %1, align 4, !tbaa !8
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %._crit_edge, label %5

._crit_edge:                                      ; preds = %0
  %.pre = and i32 %_c, 255
  br label %10

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 6
  %7 = load i32* %6, align 4, !tbaa !15
  %8 = icmp sle i32 %2, %7
  %sext.mask = and i32 %_c, 255
  %9 = icmp eq i32 %sext.mask, 10
  %or.cond = or i1 %9, %8
  br i1 %or.cond, label %15, label %10

; <label>:10                                      ; preds = %._crit_edge, %5
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %sext.mask, %5 ]
  %11 = trunc i32 %_c to i8
  %12 = getelementptr inbounds %struct.__sFILE* %_p, i64 0, i32 0
  %13 = load i8** %12, align 8, !tbaa !16
  %14 = getelementptr inbounds i8* %13, i64 1
  store i8* %14, i8** %12, align 8, !tbaa !16
  store i8 %11, i8* %13, align 1, !tbaa !17
  br label %17

; <label>:15                                      ; preds = %5
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #9
  br label %17

; <label>:17                                      ; preds = %15, %10
  %.0 = phi i32 [ %.pre-phi, %10 ], [ %16, %15 ]
  ret i32 %.0
}

; Function Attrs: optsize
declare i32 @__swbuf(i32, %struct.__sFILE*) #3

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

; Function Attrs: nounwind optsize readonly ssp uwtable
define float @calc_similar_ind(i32 %bRho, i32 %nind, i32* readonly %index, float* nocapture readonly %mass, [3 x float]* nocapture readonly %x, [3 x float]* nocapture readonly %xp) #4 {
  %1 = icmp sgt i32 %nind, 0
  br i1 %1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %2 = icmp eq i32* %index, null
  %3 = icmp eq i32 %bRho, 0
  %4 = add i32 %nind, -1
  br label %5

; <label>:5                                       ; preds = %29, %.lr.ph
  %indvars.iv11 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next12, %29 ]
  %rd.07 = phi float [ 0.000000e+00, %.lr.ph ], [ %22, %29 ]
  %rs.06 = phi float [ 0.000000e+00, %.lr.ph ], [ %rs.2, %29 ]
  %tm.05 = phi float [ 0.000000e+00, %.lr.ph ], [ %30, %29 ]
  %6 = trunc i64 %indvars.iv11 to i32
  br i1 %2, label %10, label %7

; <label>:7                                       ; preds = %5
  %8 = getelementptr inbounds i32* %index, i64 %indvars.iv11
  %9 = load i32* %8, align 4, !tbaa !18
  br label %10

; <label>:10                                      ; preds = %5, %7
  %i.0 = phi i32 [ %9, %7 ], [ %6, %5 ]
  %11 = sext i32 %i.0 to i64
  %12 = getelementptr inbounds float* %mass, i64 %11
  %13 = load float* %12, align 4, !tbaa !2
  br label %14

; <label>:14                                      ; preds = %28, %10
  %indvars.iv = phi i64 [ 0, %10 ], [ %indvars.iv.next, %28 ]
  %rd.13 = phi float [ %rd.07, %10 ], [ %22, %28 ]
  %rs.12 = phi float [ %rs.06, %10 ], [ %rs.2, %28 ]
  %15 = getelementptr inbounds [3 x float]* %x, i64 %11, i64 %indvars.iv
  %16 = load float* %15, align 4, !tbaa !2
  %17 = getelementptr inbounds [3 x float]* %xp, i64 %11, i64 %indvars.iv
  %18 = load float* %17, align 4, !tbaa !2
  %19 = fsub float %16, %18
  %20 = fmul float %19, %19
  %21 = fmul float %13, %20
  %22 = fadd float %rd.13, %21
  br i1 %3, label %28, label %23

; <label>:23                                      ; preds = %14
  %24 = fadd float %16, %18
  %25 = fmul float %24, %24
  %26 = fmul float %13, %25
  %27 = fadd float %rs.12, %26
  br label %28

; <label>:28                                      ; preds = %14, %23
  %rs.2 = phi float [ %27, %23 ], [ %rs.12, %14 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %29, label %14

; <label>:29                                      ; preds = %28
  %30 = fadd float %tm.05, %13
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  %exitcond13 = icmp eq i32 %6, %4
  br i1 %exitcond13, label %._crit_edge, label %5

._crit_edge:                                      ; preds = %29, %0
  %rd.0.lcssa = phi float [ 0.000000e+00, %0 ], [ %22, %29 ]
  %rs.0.lcssa = phi float [ 0.000000e+00, %0 ], [ %rs.2, %29 ]
  %tm.0.lcssa = phi float [ 0.000000e+00, %0 ], [ %30, %29 ]
  %31 = icmp eq i32 %bRho, 0
  br i1 %31, label %38, label %32

; <label>:32                                      ; preds = %._crit_edge
  %33 = fdiv float %rd.0.lcssa, %rs.0.lcssa
  %34 = fpext float %33 to double
  %35 = tail call double @sqrt(double %34) #10
  %36 = fmul double %35, 2.000000e+00
  %37 = fptrunc double %36 to float
  br label %40

; <label>:38                                      ; preds = %._crit_edge
  %39 = fdiv float %rd.0.lcssa, %tm.0.lcssa
  %sqrtf = tail call float @sqrtf(float %39) #5
  br label %40

; <label>:40                                      ; preds = %38, %32
  %.0 = phi float [ %37, %32 ], [ %sqrtf, %38 ]
  ret float %.0
}

; Function Attrs: nounwind optsize readnone
declare double @sqrt(double) #5

; Function Attrs: nounwind optsize readonly ssp uwtable
define float @rmsdev_ind(i32 %nind, i32* readonly %index, float* nocapture readonly %mass, [3 x float]* nocapture readonly %x, [3 x float]* nocapture readonly %xp) #4 {
  %1 = tail call float @calc_similar_ind(i32 0, i32 %nind, i32* %index, float* %mass, [3 x float]* %x, [3 x float]* %xp) #11
  ret float %1
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define float @rmsdev(i32 %natoms, float* nocapture readonly %mass, [3 x float]* nocapture readonly %x, [3 x float]* nocapture readonly %xp) #4 {
  %1 = tail call float @calc_similar_ind(i32 0, i32 %natoms, i32* null, float* %mass, [3 x float]* %x, [3 x float]* %xp) #11
  ret float %1
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define float @rhodev_ind(i32 %nind, i32* readonly %index, float* nocapture readonly %mass, [3 x float]* nocapture readonly %x, [3 x float]* nocapture readonly %xp) #4 {
  %1 = tail call float @calc_similar_ind(i32 1, i32 %nind, i32* %index, float* %mass, [3 x float]* %x, [3 x float]* %xp) #11
  ret float %1
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define float @rhodev(i32 %natoms, float* nocapture readonly %mass, [3 x float]* nocapture readonly %x, [3 x float]* nocapture readonly %xp) #4 {
  %1 = tail call float @calc_similar_ind(i32 1, i32 %natoms, i32* null, float* %mass, [3 x float]* %x, [3 x float]* %xp) #11
  ret float %1
}

; Function Attrs: nounwind optsize ssp uwtable
define void @calc_fit_R(i32 %natoms, float* nocapture readonly %w_rls, [3 x float]* nocapture readonly %xp, [3 x float]* nocapture readonly %x, [3 x float]* nocapture %R) #6 {
  %irot = alloca i32, align 4
  %d = alloca [6 x double], align 16
  %1 = bitcast [6 x double]* %d to i8*
  %vh = alloca [3 x [3 x float]], align 16
  %vk = alloca [3 x [3 x float]], align 16
  %u = alloca [3 x [3 x float]], align 16
  call void @llvm.lifetime.start(i64 48, i8* %1) #7
  %2 = bitcast [3 x [3 x float]]* %vh to i8*
  call void @llvm.lifetime.start(i64 36, i8* %2) #7
  %3 = bitcast [3 x [3 x float]]* %vk to i8*
  call void @llvm.lifetime.start(i64 36, i8* %3) #7
  %4 = bitcast [3 x [3 x float]]* %u to i8*
  call void @llvm.lifetime.start(i64 36, i8* %4) #7
  %5 = load double*** @calc_fit_R.omega, align 8, !tbaa !19
  %6 = icmp eq double** %5, null
  br i1 %6, label %9, label %.preheader9

.preheader9.loopexit:                             ; preds = %12
  %.pre = load double*** @calc_fit_R.omega, align 8, !tbaa !19
  br label %.preheader9

.preheader9:                                      ; preds = %.preheader9.loopexit, %0
  %7 = phi double** [ %.pre, %.preheader9.loopexit ], [ %5, %0 ]
  %8 = load double*** @calc_fit_R.om, align 8, !tbaa !19
  br label %21

; <label>:9                                       ; preds = %0
  %10 = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 105, i32 6, i32 8) #9
  store i8* %10, i8** bitcast (double*** @calc_fit_R.omega to i8**), align 8, !tbaa !19
  %11 = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 106, i32 6, i32 8) #9
  store i8* %11, i8** bitcast (double*** @calc_fit_R.om to i8**), align 8, !tbaa !19
  br label %12

; <label>:12                                      ; preds = %12, %9
  %indvars.iv64 = phi i64 [ 0, %9 ], [ %indvars.iv.next65, %12 ]
  %13 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 108, i32 6, i32 8) #9
  %14 = load double*** @calc_fit_R.omega, align 8, !tbaa !19
  %15 = getelementptr inbounds double** %14, i64 %indvars.iv64
  %16 = bitcast double** %15 to i8**
  store i8* %13, i8** %16, align 8, !tbaa !19
  %17 = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 109, i32 6, i32 8) #9
  %18 = load double*** @calc_fit_R.om, align 8, !tbaa !19
  %19 = getelementptr inbounds double** %18, i64 %indvars.iv64
  %20 = bitcast double** %19 to i8**
  store i8* %17, i8** %20, align 8, !tbaa !19
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1
  %exitcond66 = icmp eq i64 %indvars.iv.next65, 6
  br i1 %exitcond66, label %.preheader9.loopexit, label %12

; <label>:21                                      ; preds = %30, %.preheader9
  %indvars.iv61 = phi i64 [ 0, %.preheader9 ], [ %indvars.iv.next62, %30 ]
  %22 = getelementptr inbounds [6 x double]* %d, i64 0, i64 %indvars.iv61
  store double 0.000000e+00, double* %22, align 8, !tbaa !6
  %23 = getelementptr inbounds double** %7, i64 %indvars.iv61
  %24 = load double** %23, align 8, !tbaa !19
  %25 = getelementptr inbounds double** %8, i64 %indvars.iv61
  %26 = load double** %25, align 8, !tbaa !19
  br label %27

; <label>:27                                      ; preds = %27, %21
  %indvars.iv58 = phi i64 [ 0, %21 ], [ %indvars.iv.next59, %27 ]
  %28 = getelementptr inbounds double* %24, i64 %indvars.iv58
  store double 0.000000e+00, double* %28, align 8, !tbaa !6
  %29 = getelementptr inbounds double* %26, i64 %indvars.iv58
  store double 0.000000e+00, double* %29, align 8, !tbaa !6
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  %exitcond60 = icmp eq i64 %indvars.iv.next59, 6
  br i1 %exitcond60, label %30, label %27

; <label>:30                                      ; preds = %27
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1
  %exitcond63 = icmp eq i64 %indvars.iv.next62, 6
  br i1 %exitcond63, label %31, label %21

; <label>:31                                      ; preds = %30
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 36, i32 16, i1 false) #7
  %32 = icmp sgt i32 %natoms, 0
  br i1 %32, label %.lr.ph24, label %.lr.ph

.lr.ph24:                                         ; preds = %31
  %33 = add i32 %natoms, -1
  br label %34

; <label>:34                                      ; preds = %.loopexit, %.lr.ph24
  %indvars.iv54 = phi i64 [ 0, %.lr.ph24 ], [ %indvars.iv.next55, %.loopexit ]
  %35 = getelementptr inbounds float* %w_rls, i64 %indvars.iv54
  %36 = load float* %35, align 4, !tbaa !2
  %37 = fpext float %36 to double
  %fabsf = tail call float @fabsf(float %36) #5
  %38 = fpext float %fabsf to double
  %39 = fcmp ogt double %38, 1.200000e-38
  br i1 %39, label %.preheader8, label %.loopexit

.preheader8:                                      ; preds = %34, %54
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %54 ], [ 0, %34 ]
  %40 = getelementptr inbounds [3 x float]* %xp, i64 %indvars.iv54, i64 %indvars.iv51
  %41 = load float* %40, align 4, !tbaa !2
  %42 = fpext float %41 to double
  br label %43

; <label>:43                                      ; preds = %43, %.preheader8
  %indvars.iv48 = phi i64 [ 0, %.preheader8 ], [ %indvars.iv.next49, %43 ]
  %44 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv54, i64 %indvars.iv48
  %45 = load float* %44, align 4, !tbaa !2
  %46 = fpext float %45 to double
  %47 = fmul double %37, %46
  %48 = fmul double %42, %47
  %49 = getelementptr inbounds [3 x [3 x float]]* %u, i64 0, i64 %indvars.iv51, i64 %indvars.iv48
  %50 = load float* %49, align 4, !tbaa !2
  %51 = fpext float %50 to double
  %52 = fadd double %51, %48
  %53 = fptrunc double %52 to float
  store float %53, float* %49, align 4, !tbaa !2
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
  %exitcond50 = icmp eq i64 %indvars.iv.next49, 3
  br i1 %exitcond50, label %54, label %43

; <label>:54                                      ; preds = %43
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  %exitcond53 = icmp eq i64 %indvars.iv.next52, 3
  br i1 %exitcond53, label %.loopexit, label %.preheader8

.loopexit:                                        ; preds = %54, %34
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  %lftr.wideiv56 = trunc i64 %indvars.iv54 to i32
  %exitcond57 = icmp eq i32 %lftr.wideiv56, %33
  br i1 %exitcond57, label %.lr.ph, label %34

.lr.ph:                                           ; preds = %31, %.loopexit, %._crit_edge
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %._crit_edge ], [ 0, %.loopexit ], [ 0, %31 ]
  %indvars.iv42 = phi i32 [ %indvars.iv.next43, %._crit_edge ], [ 1, %.loopexit ], [ 1, %31 ]
  %55 = icmp sgt i64 %indvars.iv45, 2
  %56 = add nsw i64 %indvars.iv45, -3
  %57 = getelementptr inbounds double** %7, i64 %indvars.iv45
  br label %58

; <label>:58                                      ; preds = %75, %.lr.ph
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %75 ], [ 0, %.lr.ph ]
  %59 = icmp slt i64 %indvars.iv40, 3
  %or.cond = and i1 %55, %59
  br i1 %or.cond, label %60, label %69

; <label>:60                                      ; preds = %58
  %61 = getelementptr inbounds [3 x [3 x float]]* %u, i64 0, i64 %56, i64 %indvars.iv40
  %62 = load float* %61, align 4, !tbaa !2
  %63 = fpext float %62 to double
  %64 = load double** %57, align 8, !tbaa !19
  %65 = getelementptr inbounds double* %64, i64 %indvars.iv40
  store double %63, double* %65, align 8, !tbaa !6
  %66 = getelementptr inbounds double** %7, i64 %indvars.iv40
  %67 = load double** %66, align 8, !tbaa !19
  %68 = getelementptr inbounds double* %67, i64 %indvars.iv45
  store double %63, double* %68, align 8, !tbaa !6
  br label %75

; <label>:69                                      ; preds = %58
  %70 = load double** %57, align 8, !tbaa !19
  %71 = getelementptr inbounds double* %70, i64 %indvars.iv40
  store double 0.000000e+00, double* %71, align 8, !tbaa !6
  %72 = getelementptr inbounds double** %7, i64 %indvars.iv40
  %73 = load double** %72, align 8, !tbaa !19
  %74 = getelementptr inbounds double* %73, i64 %indvars.iv45
  store double 0.000000e+00, double* %74, align 8, !tbaa !6
  br label %75

; <label>:75                                      ; preds = %60, %69
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next41 to i32
  %exitcond44 = icmp eq i32 %lftr.wideiv, %indvars.iv42
  br i1 %exitcond44, label %._crit_edge, label %58

._crit_edge:                                      ; preds = %75
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  %indvars.iv.next43 = add nuw nsw i32 %indvars.iv42, 1
  %exitcond47 = icmp eq i64 %indvars.iv.next46, 6
  br i1 %exitcond47, label %76, label %.lr.ph

; <label>:76                                      ; preds = %._crit_edge
  %77 = getelementptr inbounds [6 x double]* %d, i64 0, i64 0
  call void @jacobi(double** %7, i32 6, double* %77, double** %8, i32* %irot) #9
  %78 = load %struct.__sFILE** @debug, align 8, !tbaa !19
  %79 = icmp ne %struct.__sFILE* %78, null
  %80 = load i32* %irot, align 4
  %81 = icmp eq i32 %80, 0
  %or.cond3 = and i1 %79, %81
  br i1 %or.cond3, label %82, label %.preheader5

; <label>:82                                      ; preds = %76
  %83 = call i64 @fwrite(i8* getelementptr inbounds ([8 x i8]* @.str5, i64 0, i64 0), i64 7, i64 1, %struct.__sFILE* %78)
  br label %.preheader5

.preheader5:                                      ; preds = %82, %76
  %84 = load double*** @calc_fit_R.om, align 8, !tbaa !19
  br label %.preheader4

.preheader4:                                      ; preds = %113, %.preheader5
  %indvars.iv37 = phi i64 [ 0, %.preheader5 ], [ %indvars.iv.next38, %113 ]
  %index.017 = phi i32 [ 0, %.preheader5 ], [ %index.2, %113 ]
  br label %85

; <label>:85                                      ; preds = %93, %.preheader4
  %indvars.iv31 = phi i64 [ 0, %.preheader4 ], [ %indvars.iv.next32, %93 ]
  %max_d.014 = phi float [ -1.000000e+03, %.preheader4 ], [ %max_d.1, %93 ]
  %index.113 = phi i32 [ %index.017, %.preheader4 ], [ %index.2, %93 ]
  %86 = getelementptr inbounds [6 x double]* %d, i64 0, i64 %indvars.iv31
  %87 = load double* %86, align 8, !tbaa !6
  %88 = fpext float %max_d.014 to double
  %89 = fcmp ogt double %87, %88
  br i1 %89, label %90, label %93

; <label>:90                                      ; preds = %85
  %91 = fptrunc double %87 to float
  %92 = trunc i64 %indvars.iv31 to i32
  br label %93

; <label>:93                                      ; preds = %85, %90
  %index.2 = phi i32 [ %92, %90 ], [ %index.113, %85 ]
  %max_d.1 = phi float [ %91, %90 ], [ %max_d.014, %85 ]
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  %exitcond33 = icmp eq i64 %indvars.iv.next32, 6
  br i1 %exitcond33, label %94, label %85

; <label>:94                                      ; preds = %93
  %95 = sext i32 %index.2 to i64
  %96 = getelementptr inbounds [6 x double]* %d, i64 0, i64 %95
  store double -1.000000e+04, double* %96, align 8, !tbaa !6
  br label %97

; <label>:97                                      ; preds = %97, %94
  %indvars.iv34 = phi i64 [ 0, %94 ], [ %indvars.iv.next35, %97 ]
  %98 = getelementptr inbounds double** %84, i64 %indvars.iv34
  %99 = load double** %98, align 8, !tbaa !19
  %100 = getelementptr inbounds double* %99, i64 %95
  %101 = load double* %100, align 8, !tbaa !6
  %102 = fmul double %101, 0x3FF6A09E667F3BCD
  %103 = fptrunc double %102 to float
  %104 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 %indvars.iv37, i64 %indvars.iv34
  store float %103, float* %104, align 4, !tbaa !2
  %105 = add nuw nsw i64 %indvars.iv34, 3
  %106 = getelementptr inbounds double** %84, i64 %105
  %107 = load double** %106, align 8, !tbaa !19
  %108 = getelementptr inbounds double* %107, i64 %95
  %109 = load double* %108, align 8, !tbaa !6
  %110 = fmul double %109, 0x3FF6A09E667F3BCD
  %111 = fptrunc double %110 to float
  %112 = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 %indvars.iv37, i64 %indvars.iv34
  store float %111, float* %112, align 4, !tbaa !2
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  %exitcond36 = icmp eq i64 %indvars.iv.next35, 3
  br i1 %exitcond36, label %113, label %97

; <label>:113                                     ; preds = %97
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  %exitcond39 = icmp eq i64 %indvars.iv.next38, 2
  br i1 %exitcond39, label %114, label %.preheader4

; <label>:114                                     ; preds = %113
  %115 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 0, i64 0
  %116 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 1, i64 0
  %117 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 2, i64 0
  %118 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 0, i64 1
  %119 = load float* %118, align 4, !tbaa !2
  %120 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 1, i64 2
  %121 = load float* %120, align 4, !tbaa !2
  %122 = fmul float %119, %121
  %123 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 0, i64 2
  %124 = load float* %123, align 8, !tbaa !2
  %125 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 1, i64 1
  %126 = load float* %125, align 4, !tbaa !2
  %127 = fmul float %124, %126
  %128 = fsub float %122, %127
  store float %128, float* %117, align 8, !tbaa !2
  %129 = load float* %116, align 4, !tbaa !2
  %130 = fmul float %124, %129
  %131 = load float* %115, align 16, !tbaa !2
  %132 = fmul float %131, %121
  %133 = fsub float %130, %132
  %134 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 2, i64 1
  store float %133, float* %134, align 4, !tbaa !2
  %135 = fmul float %131, %126
  %136 = fmul float %119, %129
  %137 = fsub float %135, %136
  %138 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 2, i64 2
  store float %137, float* %138, align 8, !tbaa !2
  %139 = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 0, i64 0
  %140 = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 1, i64 0
  %141 = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 2, i64 0
  %142 = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 0, i64 1
  %143 = load float* %142, align 4, !tbaa !2
  %144 = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 1, i64 2
  %145 = load float* %144, align 4, !tbaa !2
  %146 = fmul float %143, %145
  %147 = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 0, i64 2
  %148 = load float* %147, align 8, !tbaa !2
  %149 = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 1, i64 1
  %150 = load float* %149, align 4, !tbaa !2
  %151 = fmul float %148, %150
  %152 = fsub float %146, %151
  store float %152, float* %141, align 8, !tbaa !2
  %153 = load float* %140, align 4, !tbaa !2
  %154 = fmul float %148, %153
  %155 = load float* %139, align 16, !tbaa !2
  %156 = fmul float %155, %145
  %157 = fsub float %154, %156
  %158 = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 2, i64 1
  store float %157, float* %158, align 4, !tbaa !2
  %159 = fmul float %155, %150
  %160 = fmul float %143, %153
  %161 = fsub float %159, %160
  %162 = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 2, i64 2
  store float %161, float* %162, align 8, !tbaa !2
  br label %.preheader

.preheader:                                       ; preds = %..preheader_crit_edge, %114
  %163 = phi float [ %152, %114 ], [ %.pre71, %..preheader_crit_edge ]
  %164 = phi float [ %153, %114 ], [ %.pre69, %..preheader_crit_edge ]
  %165 = phi float [ %155, %114 ], [ %.pre67, %..preheader_crit_edge ]
  %indvars.iv28 = phi i64 [ 0, %114 ], [ %indvars.iv.next29, %..preheader_crit_edge ]
  br label %166

; <label>:166                                     ; preds = %166, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %166 ]
  %167 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 0, i64 %indvars.iv
  %168 = load float* %167, align 4, !tbaa !2
  %169 = fmul float %165, %168
  %170 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 1, i64 %indvars.iv
  %171 = load float* %170, align 4, !tbaa !2
  %172 = fmul float %164, %171
  %173 = fadd float %169, %172
  %174 = getelementptr inbounds [3 x [3 x float]]* %vh, i64 0, i64 2, i64 %indvars.iv
  %175 = load float* %174, align 4, !tbaa !2
  %176 = fmul float %163, %175
  %177 = fadd float %173, %176
  %178 = getelementptr inbounds [3 x float]* %R, i64 %indvars.iv28, i64 %indvars.iv
  store float %177, float* %178, align 4, !tbaa !2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %179, label %166

; <label>:179                                     ; preds = %166
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  %exitcond30 = icmp eq i64 %indvars.iv.next29, 3
  br i1 %exitcond30, label %180, label %..preheader_crit_edge

..preheader_crit_edge:                            ; preds = %179
  %.phi.trans.insert = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 0, i64 %indvars.iv.next29
  %.pre67 = load float* %.phi.trans.insert, align 4, !tbaa !2
  %.phi.trans.insert68 = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 1, i64 %indvars.iv.next29
  %.pre69 = load float* %.phi.trans.insert68, align 4, !tbaa !2
  %.phi.trans.insert70 = getelementptr inbounds [3 x [3 x float]]* %vk, i64 0, i64 2, i64 %indvars.iv.next29
  %.pre71 = load float* %.phi.trans.insert70, align 4, !tbaa !2
  br label %.preheader

; <label>:180                                     ; preds = %179
  call void @llvm.lifetime.end(i64 36, i8* %4) #7
  call void @llvm.lifetime.end(i64 36, i8* %3) #7
  call void @llvm.lifetime.end(i64 36, i8* %2) #7
  call void @llvm.lifetime.end(i64 48, i8* %1) #7
  ret void
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
  %1 = bitcast [3 x [3 x float]]* %R to i8*
  call void @llvm.lifetime.start(i64 36, i8* %1) #7
  %2 = getelementptr inbounds [3 x [3 x float]]* %R, i64 0, i64 0
  call void @calc_fit_R(i32 %natoms, float* %w_rls, [3 x float]* %xp, [3 x float]* %x, [3 x float]* %2) #11
  %3 = icmp sgt i32 %natoms, 0
  br i1 %3, label %.preheader1.lr.ph, label %._crit_edge

.preheader1.lr.ph:                                ; preds = %0
  %4 = add i32 %natoms, -1
  br label %.preheader1

.preheader1:                                      ; preds = %16, %.preheader1.lr.ph
  %indvars.iv13 = phi i64 [ 0, %.preheader1.lr.ph ], [ %indvars.iv.next14, %16 ]
  %scevgep = getelementptr [3 x float]* %x, i64 %indvars.iv13, i64 0
  %scevgep7 = bitcast float* %scevgep to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %x_old6, i8* %scevgep7, i64 12, i32 4, i1 false)
  br label %5

; <label>:5                                       ; preds = %15, %.preheader1
  %indvars.iv8 = phi i64 [ 0, %.preheader1 ], [ %indvars.iv.next9, %15 ]
  %6 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv13, i64 %indvars.iv8
  store float 0.000000e+00, float* %6, align 4, !tbaa !2
  br label %7

; <label>:7                                       ; preds = %7, %5
  %indvars.iv = phi i64 [ 0, %5 ], [ %indvars.iv.next, %7 ]
  %8 = phi float [ 0.000000e+00, %5 ], [ %14, %7 ]
  %9 = getelementptr inbounds [3 x [3 x float]]* %R, i64 0, i64 %indvars.iv8, i64 %indvars.iv
  %10 = load float* %9, align 4, !tbaa !2
  %11 = getelementptr inbounds [3 x float]* %x_old, i64 0, i64 %indvars.iv
  %12 = load float* %11, align 4, !tbaa !2
  %13 = fmul float %10, %12
  %14 = fadd float %8, %13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %15, label %7

; <label>:15                                      ; preds = %7
  store float %14, float* %6, align 4, !tbaa !2
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1
  %exitcond10 = icmp eq i64 %indvars.iv.next9, 3
  br i1 %exitcond10, label %16, label %5

; <label>:16                                      ; preds = %15
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  %lftr.wideiv = trunc i64 %indvars.iv13 to i32
  %exitcond15 = icmp eq i32 %lftr.wideiv, %4
  br i1 %exitcond15, label %._crit_edge, label %.preheader1

._crit_edge:                                      ; preds = %16, %0
  call void @llvm.lifetime.end(i64 36, i8* %1) #7
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @reset_x(i32 %ncm, i32* nocapture readonly %ind_cm, i32 %nreset, i32* readonly %ind_reset, [3 x float]* nocapture %x, float* nocapture readonly %mass) #6 {
  %xcm = alloca [3 x float], align 4
  %1 = getelementptr inbounds [3 x float]* %xcm, i64 0, i64 0
  store float 0.000000e+00, float* %1, align 4, !tbaa !2
  %2 = getelementptr inbounds [3 x float]* %xcm, i64 0, i64 1
  store float 0.000000e+00, float* %2, align 4, !tbaa !2
  %3 = getelementptr inbounds [3 x float]* %xcm, i64 0, i64 2
  store float 0.000000e+00, float* %3, align 4, !tbaa !2
  %4 = icmp sgt i32 %ncm, 0
  br i1 %4, label %.lr.ph11, label %.preheader3

.lr.ph11:                                         ; preds = %0
  %5 = add i32 %ncm, -1
  br label %6

.preheader3:                                      ; preds = %19, %0
  %tm.0.lcssa = phi float [ 0.000000e+00, %0 ], [ %20, %19 ]
  br label %21

; <label>:6                                       ; preds = %19, %.lr.ph11
  %indvars.iv22 = phi i64 [ 0, %.lr.ph11 ], [ %indvars.iv.next23, %19 ]
  %tm.09 = phi float [ 0.000000e+00, %.lr.ph11 ], [ %20, %19 ]
  %7 = getelementptr inbounds i32* %ind_cm, i64 %indvars.iv22
  %8 = load i32* %7, align 4, !tbaa !18
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds float* %mass, i64 %9
  %11 = load float* %10, align 4, !tbaa !2
  br label %12

; <label>:12                                      ; preds = %12, %6
  %indvars.iv19 = phi i64 [ 0, %6 ], [ %indvars.iv.next20, %12 ]
  %13 = getelementptr inbounds [3 x float]* %x, i64 %9, i64 %indvars.iv19
  %14 = load float* %13, align 4, !tbaa !2
  %15 = fmul float %11, %14
  %16 = getelementptr inbounds [3 x float]* %xcm, i64 0, i64 %indvars.iv19
  %17 = load float* %16, align 4, !tbaa !2
  %18 = fadd float %17, %15
  store float %18, float* %16, align 4, !tbaa !2
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  %exitcond21 = icmp eq i64 %indvars.iv.next20, 3
  br i1 %exitcond21, label %19, label %12

; <label>:19                                      ; preds = %12
  %20 = fadd float %tm.09, %11
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  %lftr.wideiv24 = trunc i64 %indvars.iv22 to i32
  %exitcond25 = icmp eq i32 %lftr.wideiv24, %5
  br i1 %exitcond25, label %.preheader3, label %6

; <label>:21                                      ; preds = %21, %.preheader3
  %indvars.iv16 = phi i64 [ 0, %.preheader3 ], [ %indvars.iv.next17, %21 ]
  %22 = getelementptr inbounds [3 x float]* %xcm, i64 0, i64 %indvars.iv16
  %23 = load float* %22, align 4, !tbaa !2
  %24 = fdiv float %23, %tm.0.lcssa
  store float %24, float* %22, align 4, !tbaa !2
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  %exitcond18 = icmp eq i64 %indvars.iv.next17, 3
  br i1 %exitcond18, label %25, label %21

; <label>:25                                      ; preds = %21
  %26 = icmp eq i32* %ind_reset, null
  %27 = icmp sgt i32 %nreset, 0
  br i1 %26, label %.preheader, label %.preheader1

.preheader1:                                      ; preds = %25
  br i1 %27, label %.lr.ph6, label %.loopexit

.lr.ph6:                                          ; preds = %.preheader1
  %28 = load float* %1, align 4, !tbaa !2
  %29 = load float* %2, align 4, !tbaa !2
  %30 = load float* %3, align 4, !tbaa !2
  %31 = add i32 %nreset, -1
  br label %36

.preheader:                                       ; preds = %25
  br i1 %27, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %32 = load float* %1, align 4, !tbaa !2
  %33 = load float* %2, align 4, !tbaa !2
  %34 = load float* %3, align 4, !tbaa !2
  %35 = add i32 %nreset, -1
  br label %49

; <label>:36                                      ; preds = %36, %.lr.ph6
  %indvars.iv12 = phi i64 [ 0, %.lr.ph6 ], [ %indvars.iv.next13, %36 ]
  %37 = getelementptr inbounds i32* %ind_reset, i64 %indvars.iv12
  %38 = load i32* %37, align 4, !tbaa !18
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [3 x float]* %x, i64 %39, i64 0
  %41 = load float* %40, align 4, !tbaa !2
  %42 = fsub float %41, %28
  %43 = getelementptr inbounds [3 x float]* %x, i64 %39, i64 1
  %44 = load float* %43, align 4, !tbaa !2
  %45 = fsub float %44, %29
  %46 = getelementptr inbounds [3 x float]* %x, i64 %39, i64 2
  %47 = load float* %46, align 4, !tbaa !2
  %48 = fsub float %47, %30
  store float %42, float* %40, align 4, !tbaa !2
  store float %45, float* %43, align 4, !tbaa !2
  store float %48, float* %46, align 4, !tbaa !2
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  %lftr.wideiv14 = trunc i64 %indvars.iv12 to i32
  %exitcond15 = icmp eq i32 %lftr.wideiv14, %31
  br i1 %exitcond15, label %.loopexit, label %36

; <label>:49                                      ; preds = %49, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %49 ]
  %50 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 0
  %51 = load float* %50, align 4, !tbaa !2
  %52 = fsub float %51, %32
  %53 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 1
  %54 = load float* %53, align 4, !tbaa !2
  %55 = fsub float %54, %33
  %56 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 2
  %57 = load float* %56, align 4, !tbaa !2
  %58 = fsub float %57, %34
  store float %52, float* %50, align 4, !tbaa !2
  store float %55, float* %53, align 4, !tbaa !2
  store float %58, float* %56, align 4, !tbaa !2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %35
  br i1 %exitcond, label %.loopexit, label %49

.loopexit:                                        ; preds = %36, %49, %.preheader1, %.preheader
  ret void
}

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

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"float", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!7, !7, i64 0}
!7 = !{!"double", !4, i64 0}
!8 = !{!9, !11, i64 12}
!9 = !{!"__sFILE", !10, i64 0, !11, i64 8, !11, i64 12, !12, i64 16, !12, i64 18, !13, i64 24, !11, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !13, i64 88, !10, i64 104, !11, i64 112, !4, i64 116, !4, i64 119, !13, i64 120, !11, i64 136, !14, i64 144}
!10 = !{!"any pointer", !4, i64 0}
!11 = !{!"int", !4, i64 0}
!12 = !{!"short", !4, i64 0}
!13 = !{!"__sbuf", !10, i64 0, !11, i64 8}
!14 = !{!"long long", !4, i64 0}
!15 = !{!9, !11, i64 40}
!16 = !{!9, !10, i64 0}
!17 = !{!4, !4, i64 0}
!18 = !{!11, !11, i64 0}
!19 = !{!10, !10, i64 0}
