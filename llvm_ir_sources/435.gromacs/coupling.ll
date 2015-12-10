; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/coupling.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_inputrec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, float, [3 x [3 x float]], [3 x [3 x float]], i32, float, float, i32, float, float, i32, float, float, float, i32, float, float, i32, float, float, float, float, float, i32, i32, i32, float, float, float, i32, float, float, i32, i32, i32, i32, i32, float, i32, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, %struct.t_grpopts, [3 x %struct.t_cosines], [3 x %struct.t_cosines] }
%struct.t_grpopts = type { i32, i32, i32, i32, float*, float*, float*, [3 x float]*, [3 x i32]*, i32* }
%struct.t_cosines = type { i32, float*, float* }
%struct.t_nrnb = type { [129 x double] }
%struct.t_groups = type { %struct.t_grp_ener, %struct.t_grp_tcstat*, %struct.t_grp_acc*, %struct.t_cos_acc }
%struct.t_grp_ener = type { i32, [7 x float*] }
%struct.t_grp_tcstat = type { float, float, [3 x [3 x float]], float, float }
%struct.t_grp_acc = type { i32, i32*, float, [3 x float], [3 x float], [3 x float] }
%struct.t_cos_acc = type { float, float, float }

@debug = external global %struct.__sFILE*
@.str = private unnamed_addr constant [9 x i8] c"PC: pres\00", align 1
@.str1 = private unnamed_addr constant [9 x i8] c"PC: ekin\00", align 1
@.str2 = private unnamed_addr constant [9 x i8] c"PC: vir \00", align 1
@.str3 = private unnamed_addr constant [9 x i8] c"PC: box \00", align 1
@parrinellorahman_pcoupl.winv = internal unnamed_addr global [3 x [3 x float]] zeroinitializer, align 16
@parrinellorahman_pcoupl.bFirst = internal unnamed_addr global i1 false
@.str4 = private unnamed_addr constant [63 x i8] c"Parrinello-Rahman pressure coupling type %s not supported yet\0A\00", align 1
@.str5 = private unnamed_addr constant [10 x i8] c"UNDEFINED\00", align 1
@epcoupltype_names = external global [5 x i8*]
@stdlog = external global %struct.__sFILE*
@.str6 = private unnamed_addr constant [52 x i8] c"\0AStep %d  Warning: Pressure scaling more than 1%%.\0A\00", align 1
@.str7 = private unnamed_addr constant [55 x i8] c"Berendsen pressure coupling type %s not supported yet\0A\00", align 1
@.str8 = private unnamed_addr constant [10 x i8] c"PC: pres \00", align 1
@.str9 = private unnamed_addr constant [10 x i8] c"PC: mu   \00", align 1
@.str10 = private unnamed_addr constant [65 x i8] c"\0AStep %d  Warning: pressure scaling more than 1%%, mu: %g %g %g\0A\00", align 1
@__stderrp = external global %struct.__sFILE*
@.str12 = private unnamed_addr constant [33 x i8] c"TC: group %d: T: %g, Lambda: %g\0A\00", align 1
@nosehoover_tcoupl.Qinv = internal unnamed_addr global float* null, align 8
@.str13 = private unnamed_addr constant [5 x i8] c"Qinv\00", align 1
@.str14 = private unnamed_addr constant [68 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/coupling.c\00", align 1
@.str15 = private unnamed_addr constant [17 x i8] c"Determinant = %f\00", align 1

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
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #9
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
  %3 = tail call float @llvm.fabs.f32(float %__x) #10
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
  %3 = tail call double @llvm.fabs.f64(double %__x) #10
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
  %3 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #10
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
  %1 = tail call float @llvm.fabs.f32(float %__x) #10
  %2 = fcmp oeq float %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfd(double %__x) #2 {
  %1 = tail call double @llvm.fabs.f64(double %__x) #10
  %2 = fcmp oeq double %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfl(x86_fp80 %__x) #2 {
  %1 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #10
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
  %1 = tail call <2 x float> @__sincosf_stret(float %__x) #9
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
  %1 = tail call { double, double } @__sincos_stret(double %__x) #9
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
  %1 = tail call <2 x float> @__sincospif_stret(float %__x) #9
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
  %1 = tail call { double, double } @__sincospi_stret(double %__x) #9
  %2 = extractvalue { double, double } %1, 0
  %3 = extractvalue { double, double } %1, 1
  store double %2, double* %__sinp, align 8, !tbaa !16
  store double %3, double* %__cosp, align 8, !tbaa !16
  ret void
}

; Function Attrs: optsize
declare { double, double } @__sincospi_stret(double) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @calc_pres(i32 %ePBC, [3 x float]* %box, [3 x float]* %ekin, [3 x float]* %vir, [3 x float]* %pres, float %Elr) #4 {
  %1 = icmp eq i32 %ePBC, 1
  br i1 %1, label %2, label %4

; <label>:2                                       ; preds = %0
  %3 = bitcast [3 x float]* %pres to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 36, i32 4, i1 false) #6
  br label %58

; <label>:4                                       ; preds = %0
  %5 = fdiv float %Elr, 6.000000e+00
  %6 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %7 = load float* %6, align 4, !tbaa !14
  %8 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %9 = load float* %8, align 4, !tbaa !14
  %10 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %11 = load float* %10, align 4, !tbaa !14
  %12 = fmul float %9, %11
  %13 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %14 = load float* %13, align 4, !tbaa !14
  %15 = getelementptr inbounds [3 x float]* %box, i64 1, i64 2
  %16 = load float* %15, align 4, !tbaa !14
  %17 = fmul float %14, %16
  %18 = fsub float %12, %17
  %19 = fmul float %7, %18
  %20 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %21 = load float* %20, align 4, !tbaa !14
  %22 = getelementptr inbounds [3 x float]* %box, i64 0, i64 1
  %23 = load float* %22, align 4, !tbaa !14
  %24 = fmul float %11, %23
  %25 = getelementptr inbounds [3 x float]* %box, i64 0, i64 2
  %26 = load float* %25, align 4, !tbaa !14
  %27 = fmul float %14, %26
  %28 = fsub float %24, %27
  %29 = fmul float %21, %28
  %30 = fsub float %19, %29
  %31 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %32 = load float* %31, align 4, !tbaa !14
  %33 = fmul float %16, %23
  %34 = fmul float %9, %26
  %35 = fsub float %33, %34
  %36 = fmul float %32, %35
  %37 = fadd float %36, %30
  %38 = fpext float %37 to double
  %39 = fdiv double 3.321080e+01, %38
  %40 = fptrunc double %39 to float
  br label %.preheader

.preheader:                                       ; preds = %50, %4
  %indvars.iv3 = phi i64 [ 0, %4 ], [ %indvars.iv.next4, %50 ]
  br label %41

; <label>:41                                      ; preds = %41, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %41 ]
  %42 = getelementptr inbounds [3 x float]* %ekin, i64 %indvars.iv3, i64 %indvars.iv
  %43 = load float* %42, align 4, !tbaa !14
  %44 = getelementptr inbounds [3 x float]* %vir, i64 %indvars.iv3, i64 %indvars.iv
  %45 = load float* %44, align 4, !tbaa !14
  %46 = fsub float %43, %45
  %47 = fadd float %5, %46
  %48 = fmul float %40, %47
  %49 = getelementptr inbounds [3 x float]* %pres, i64 %indvars.iv3, i64 %indvars.iv
  store float %48, float* %49, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %50, label %41

; <label>:50                                      ; preds = %41
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1
  %exitcond5 = icmp eq i64 %indvars.iv.next4, 3
  br i1 %exitcond5, label %51, label %.preheader

; <label>:51                                      ; preds = %50
  %52 = load %struct.__sFILE** @debug, align 8, !tbaa !18
  %53 = icmp eq %struct.__sFILE* %52, null
  br i1 %53, label %58, label %54

; <label>:54                                      ; preds = %51
  tail call void @pr_rvecs(%struct.__sFILE* %52, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str, i64 0, i64 0), [3 x float]* %pres, i32 3) #9
  %55 = load %struct.__sFILE** @debug, align 8, !tbaa !18
  tail call void @pr_rvecs(%struct.__sFILE* %55, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str1, i64 0, i64 0), [3 x float]* %ekin, i32 3) #9
  %56 = load %struct.__sFILE** @debug, align 8, !tbaa !18
  tail call void @pr_rvecs(%struct.__sFILE* %56, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str2, i64 0, i64 0), [3 x float]* %vir, i32 3) #9
  %57 = load %struct.__sFILE** @debug, align 8, !tbaa !18
  tail call void @pr_rvecs(%struct.__sFILE* %57, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0), [3 x float]* %box, i32 3) #9
  br label %58

; <label>:58                                      ; preds = %51, %54, %2
  ret void
}

; Function Attrs: optsize
declare void @pr_rvecs(%struct.__sFILE*, i32, i8*, [3 x float]*, i32) #1

; Function Attrs: nounwind optsize readnone ssp uwtable
define float @calc_temp(float %ekin, float %nrdf) #5 {
  %1 = fcmp ogt float %nrdf, 0.000000e+00
  br i1 %1, label %2, label %9

; <label>:2                                       ; preds = %0
  %3 = fpext float %ekin to double
  %4 = fmul double %3, 2.000000e+00
  %5 = fpext float %nrdf to double
  %6 = fmul double %5, 0x3F810732CDE67DC4
  %7 = fdiv double %4, %6
  %8 = fptrunc double %7 to float
  br label %9

; <label>:9                                       ; preds = %0, %2
  %.0 = phi float [ %8, %2 ], [ 0.000000e+00, %0 ]
  ret float %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @parrinellorahman_pcoupl(%struct.t_inputrec* nocapture readonly %ir, i32 %step, [3 x float]* nocapture readonly %pres, [3 x float]* nocapture readonly %box, [3 x float]* nocapture %boxv, [3 x float]* nocapture %M) #4 {
  %invbox = alloca [3 x [3 x float]], align 16
  %pdiff = alloca [3 x [3 x float]], align 16
  %t1 = alloca [3 x [3 x float]], align 16
  %t2 = alloca [3 x [3 x float]], align 16
  %1 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %2 = load float* %1, align 4, !tbaa !14
  %3 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %4 = load float* %3, align 4, !tbaa !14
  %5 = fmul float %2, %4
  %6 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %7 = load float* %6, align 4, !tbaa !14
  %8 = fmul float %5, %7
  %9 = fpext float %8 to double
  %10 = fdiv double %9, 1.660540e+01
  %11 = fptrunc double %10 to float
  %12 = bitcast [3 x [3 x float]]* %invbox to i8*
  call void @llvm.lifetime.start(i64 36, i8* %12) #6
  %13 = bitcast [3 x [3 x float]]* %pdiff to i8*
  call void @llvm.lifetime.start(i64 36, i8* %13) #6
  %14 = bitcast [3 x [3 x float]]* %t1 to i8*
  call void @llvm.lifetime.start(i64 36, i8* %14) #6
  %15 = bitcast [3 x [3 x float]]* %t2 to i8*
  call void @llvm.lifetime.start(i64 36, i8* %15) #6
  %.b = load i1* @parrinellorahman_pcoupl.bFirst, align 1
  br i1 %.b, label %36, label %16

; <label>:16                                      ; preds = %0
  %17 = fcmp ogt float %2, %4
  %. = select i1 %17, float %2, float %4
  %18 = fcmp ogt float %., %7
  %19 = select i1 %18, float %., float %7
  %20 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 30
  br label %.preheader12

.preheader12:                                     ; preds = %34, %16
  %indvars.iv82 = phi i64 [ 0, %16 ], [ %indvars.iv.next83, %34 ]
  br label %21

; <label>:21                                      ; preds = %21, %.preheader12
  %indvars.iv79 = phi i64 [ 0, %.preheader12 ], [ %indvars.iv.next80, %21 ]
  %22 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 32, i64 %indvars.iv82, i64 %indvars.iv79
  %23 = load float* %22, align 4, !tbaa !14
  %24 = fpext float %23 to double
  %25 = fmul double %24, 0x4043BD3CC9BE45DE
  %26 = load float* %20, align 4, !tbaa !19
  %27 = fmul float %26, 3.000000e+00
  %28 = fmul float %26, %27
  %29 = fmul float %19, %28
  %30 = fpext float %29 to double
  %31 = fdiv double %25, %30
  %32 = fptrunc double %31 to float
  %33 = getelementptr inbounds [3 x [3 x float]]* @parrinellorahman_pcoupl.winv, i64 0, i64 %indvars.iv82, i64 %indvars.iv79
  store float %32, float* %33, align 4, !tbaa !14
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1
  %exitcond81 = icmp eq i64 %indvars.iv.next80, 3
  br i1 %exitcond81, label %34, label %21

; <label>:34                                      ; preds = %21
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1
  %exitcond84 = icmp eq i64 %indvars.iv.next83, 3
  br i1 %exitcond84, label %35, label %.preheader12

; <label>:35                                      ; preds = %34
  store i1 true, i1* @parrinellorahman_pcoupl.bFirst, align 1
  %.pre = load float* %1, align 4, !tbaa !14
  %.pre85 = load float* %3, align 4, !tbaa !14
  %.pre86 = load float* %6, align 4, !tbaa !14
  br label %36

; <label>:36                                      ; preds = %0, %35
  %37 = phi float [ %7, %0 ], [ %.pre86, %35 ]
  %38 = phi float [ %4, %0 ], [ %.pre85, %35 ]
  %39 = phi float [ %2, %0 ], [ %.pre, %35 ]
  %40 = getelementptr inbounds [3 x [3 x float]]* %invbox, i64 0, i64 0
  %41 = fmul float %38, %37
  %42 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %43 = load float* %42, align 4, !tbaa !14
  %44 = getelementptr inbounds [3 x float]* %box, i64 1, i64 2
  %45 = load float* %44, align 4, !tbaa !14
  %46 = fmul float %43, %45
  %47 = fsub float %41, %46
  %48 = fmul float %39, %47
  %49 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %50 = load float* %49, align 4, !tbaa !14
  %51 = getelementptr inbounds [3 x float]* %box, i64 0, i64 1
  %52 = load float* %51, align 4, !tbaa !14
  %53 = fmul float %37, %52
  %54 = getelementptr inbounds [3 x float]* %box, i64 0, i64 2
  %55 = load float* %54, align 4, !tbaa !14
  %56 = fmul float %43, %55
  %57 = fsub float %53, %56
  %58 = fmul float %50, %57
  %59 = fsub float %48, %58
  %60 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %61 = load float* %60, align 4, !tbaa !14
  %62 = fmul float %45, %52
  %63 = fmul float %38, %55
  %64 = fsub float %62, %63
  %65 = fmul float %61, %64
  %66 = fadd float %65, %59
  %67 = fdiv float 1.000000e+00, %66
  %fabsf.i = tail call float @fabsf(float %67) #8
  %68 = fcmp ole float %fabsf.i, 0x3C32725DE0000000
  %69 = fcmp oge float %fabsf.i, 0x43ABC16D60000000
  %or.cond.i = or i1 %68, %69
  br i1 %or.cond.i, label %70, label %m_inv.exit

; <label>:70                                      ; preds = %36
  %71 = fpext float %67 to double
  %72 = fdiv double 1.000000e+00, %71
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([17 x i8]* @.str15, i64 0, i64 0), double %72) #9
  %.pre.i = load float* %3, align 4, !tbaa !14
  %.pre2.i = load float* %6, align 4, !tbaa !14
  %.pre3.i = load float* %42, align 4, !tbaa !14
  %.pre4.i = load float* %44, align 4, !tbaa !14
  %.pre87 = load float* %51, align 4, !tbaa !14
  %.pre88 = load float* %54, align 4, !tbaa !14
  %.pre89 = load float* %49, align 4, !tbaa !14
  %.pre90 = load float* %60, align 4, !tbaa !14
  %.pre91 = load float* %1, align 4, !tbaa !14
  br label %m_inv.exit

m_inv.exit:                                       ; preds = %36, %70
  %73 = phi float [ %39, %36 ], [ %.pre91, %70 ]
  %74 = phi float [ %61, %36 ], [ %.pre90, %70 ]
  %75 = phi float [ %50, %36 ], [ %.pre89, %70 ]
  %76 = phi float [ %55, %36 ], [ %.pre88, %70 ]
  %77 = phi float [ %52, %36 ], [ %.pre87, %70 ]
  %78 = phi float [ %45, %36 ], [ %.pre4.i, %70 ]
  %79 = phi float [ %43, %36 ], [ %.pre3.i, %70 ]
  %80 = phi float [ %37, %36 ], [ %.pre2.i, %70 ]
  %81 = phi float [ %38, %36 ], [ %.pre.i, %70 ]
  %82 = fmul float %80, %81
  %83 = fmul float %78, %79
  %84 = fsub float %82, %83
  %85 = getelementptr inbounds [3 x [3 x float]]* %invbox, i64 0, i64 0, i64 0
  %86 = fsub float -0.000000e+00, %67
  %87 = fmul float %77, %80
  %88 = fmul float %79, %76
  %89 = fsub float %87, %88
  %90 = getelementptr inbounds [3 x [3 x float]]* %invbox, i64 0, i64 0, i64 1
  %91 = fmul float %77, %78
  %92 = fmul float %81, %76
  %93 = fsub float %91, %92
  %94 = getelementptr inbounds [3 x [3 x float]]* %invbox, i64 0, i64 0, i64 2
  %95 = fmul float %75, %80
  %96 = fmul float %74, %78
  %97 = fsub float %95, %96
  %98 = insertelement <4 x float> undef, float %67, i32 0
  %99 = insertelement <4 x float> %98, float %89, i32 1
  %100 = insertelement <4 x float> %99, float %67, i32 2
  %101 = insertelement <4 x float> %100, float %97, i32 3
  %102 = insertelement <4 x float> undef, float %84, i32 0
  %103 = insertelement <4 x float> %102, float %86, i32 1
  %104 = insertelement <4 x float> %103, float %93, i32 2
  %105 = insertelement <4 x float> %104, float %86, i32 3
  %106 = fmul <4 x float> %101, %105
  %107 = bitcast [3 x [3 x float]]* %invbox to <4 x float>*
  store <4 x float> %106, <4 x float>* %107, align 16, !tbaa !14
  %108 = fmul float %73, %80
  %109 = fmul float %74, %76
  %110 = fsub float %108, %109
  %111 = fmul float %67, %110
  %112 = getelementptr inbounds [3 x [3 x float]]* %invbox, i64 0, i64 1, i64 1
  store float %111, float* %112, align 4, !tbaa !14
  %113 = fmul float %73, %78
  %114 = fmul float %75, %76
  %115 = fsub float %113, %114
  %116 = fmul float %115, %86
  %117 = getelementptr inbounds [3 x [3 x float]]* %invbox, i64 0, i64 1, i64 2
  store float %116, float* %117, align 4, !tbaa !14
  %118 = fmul float %75, %79
  %119 = fmul float %74, %81
  %120 = fsub float %118, %119
  %121 = fmul float %67, %120
  %122 = getelementptr inbounds [3 x [3 x float]]* %invbox, i64 0, i64 2, i64 0
  store float %121, float* %122, align 8, !tbaa !14
  %123 = fmul float %73, %79
  %124 = fmul float %74, %77
  %125 = fsub float %123, %124
  %126 = fmul float %125, %86
  %127 = getelementptr inbounds [3 x [3 x float]]* %invbox, i64 0, i64 2, i64 1
  store float %126, float* %127, align 4, !tbaa !14
  %128 = fmul float %73, %81
  %129 = fmul float %75, %77
  %130 = fsub float %128, %129
  %131 = fmul float %67, %130
  %132 = getelementptr inbounds [3 x [3 x float]]* %invbox, i64 0, i64 2, i64 2
  store float %131, float* %132, align 8, !tbaa !14
  %133 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 0, i64 0
  %134 = getelementptr inbounds [3 x [3 x float]]* %pdiff, i64 0, i64 0, i64 0
  %135 = bitcast [3 x float]* %pres to <4 x float>*
  %136 = load <4 x float>* %135, align 4, !tbaa !14
  %137 = bitcast float* %133 to <4 x float>*
  %138 = load <4 x float>* %137, align 4, !tbaa !14
  %139 = fsub <4 x float> %136, %138
  %140 = bitcast [3 x [3 x float]]* %pdiff to <4 x float>*
  store <4 x float> %139, <4 x float>* %140, align 16, !tbaa !14
  %141 = getelementptr inbounds [3 x float]* %pres, i64 1, i64 1
  %142 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 1, i64 1
  %143 = getelementptr inbounds [3 x [3 x float]]* %pdiff, i64 0, i64 1, i64 1
  %144 = bitcast float* %141 to <4 x float>*
  %145 = load <4 x float>* %144, align 4, !tbaa !14
  %146 = bitcast float* %142 to <4 x float>*
  %147 = load <4 x float>* %146, align 4, !tbaa !14
  %148 = fsub <4 x float> %145, %147
  %149 = bitcast float* %143 to <4 x float>*
  store <4 x float> %148, <4 x float>* %149, align 4, !tbaa !14
  %150 = getelementptr inbounds [3 x float]* %pres, i64 2, i64 2
  %151 = load float* %150, align 4, !tbaa !14
  %152 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 2, i64 2
  %153 = load float* %152, align 4, !tbaa !14
  %154 = fsub float %151, %153
  %155 = getelementptr inbounds [3 x [3 x float]]* %pdiff, i64 0, i64 2, i64 2
  store float %154, float* %155, align 8, !tbaa !14
  %156 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 29
  %157 = load i32* %156, align 4, !tbaa !22
  %158 = icmp eq i32 %157, 3
  %159 = extractelement <4 x float> %139, i32 0
  %160 = extractelement <4 x float> %148, i32 0
  br i1 %158, label %161, label %179

; <label>:161                                     ; preds = %m_inv.exit
  %162 = extractelement <4 x float> %136, i32 0
  %163 = extractelement <4 x float> %145, i32 0
  %164 = fadd float %162, %163
  %165 = fmul float %164, 5.000000e-01
  %166 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %167 = load float* %166, align 4, !tbaa !14
  %168 = extractelement <4 x float> %138, i32 0
  %169 = fdiv float %168, %167
  %170 = fsub float %151, %169
  %171 = fsub float %165, %170
  %172 = getelementptr inbounds [3 x [3 x float]]* %pdiff, i64 0, i64 0, i64 0
  store float %171, float* %172, align 16, !tbaa !14
  br label %._crit_edge92

._crit_edge92:                                    ; preds = %161, %._crit_edge92
  %indvars.iv.next77100 = phi i64 [ 1, %161 ], [ %indvars.iv.next77, %._crit_edge92 ]
  %.phi.trans.insert = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 %indvars.iv.next77100, i64 %indvars.iv.next77100
  %.pre93 = load float* %.phi.trans.insert, align 4, !tbaa !14
  %173 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv.next77100, i64 %indvars.iv.next77100
  %174 = load float* %173, align 4, !tbaa !14
  %175 = fdiv float %.pre93, %174
  %176 = fsub float %151, %175
  %177 = fsub float %165, %176
  %178 = getelementptr inbounds [3 x [3 x float]]* %pdiff, i64 0, i64 %indvars.iv.next77100, i64 %indvars.iv.next77100
  store float %177, float* %178, align 4, !tbaa !14
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv.next77100, 1
  %exitcond78 = icmp eq i64 %indvars.iv.next77, 2
  br i1 %exitcond78, label %.loopexit, label %._crit_edge92

.loopexit:                                        ; preds = %._crit_edge92
  %.pre94 = load float* %134, align 16, !tbaa !14
  %.pre95 = load float* %143, align 4, !tbaa !14
  %.pre96 = load float* %155, align 8, !tbaa !14
  br label %179

; <label>:179                                     ; preds = %.loopexit, %m_inv.exit
  %180 = phi float [ %.pre96, %.loopexit ], [ %154, %m_inv.exit ]
  %181 = phi float [ %.pre95, %.loopexit ], [ %160, %m_inv.exit ]
  %182 = phi float [ %.pre94, %.loopexit ], [ %159, %m_inv.exit ]
  %183 = getelementptr inbounds [3 x [3 x float]]* %t1, i64 0, i64 0
  %184 = load float* %85, align 16, !tbaa !14
  %185 = getelementptr inbounds [3 x [3 x float]]* %t1, i64 0, i64 0, i64 0
  %186 = getelementptr inbounds [3 x [3 x float]]* %t1, i64 0, i64 0, i64 1
  %187 = getelementptr inbounds [3 x [3 x float]]* %t1, i64 0, i64 0, i64 2
  %188 = load float* %90, align 4, !tbaa !14
  %189 = insertelement <4 x float> undef, float %184, i32 0
  %190 = insertelement <4 x float> %189, float %184, i32 1
  %191 = insertelement <4 x float> %190, float %184, i32 2
  %192 = insertelement <4 x float> %191, float %188, i32 3
  %193 = insertelement <4 x float> undef, float %182, i32 0
  %194 = extractelement <4 x float> %139, i32 1
  %195 = insertelement <4 x float> %193, float %194, i32 1
  %196 = extractelement <4 x float> %139, i32 2
  %197 = insertelement <4 x float> %195, float %196, i32 2
  %198 = insertelement <4 x float> %197, float %182, i32 3
  %199 = fmul <4 x float> %192, %198
  %200 = extractelement <4 x float> %106, i32 3
  %201 = shufflevector <4 x float> %106, <4 x float> undef, <4 x i32> <i32 3, i32 3, i32 undef, i32 undef>
  %202 = insertelement <4 x float> %201, float %200, i32 2
  %203 = insertelement <4 x float> %202, float %111, i32 3
  %204 = extractelement <4 x float> %139, i32 3
  %205 = insertelement <4 x float> undef, float %204, i32 0
  %206 = insertelement <4 x float> %205, float %181, i32 1
  %207 = extractelement <4 x float> %148, i32 1
  %208 = shufflevector <4 x float> %206, <4 x float> %148, <4 x i32> <i32 0, i32 1, i32 5, i32 undef>
  %209 = shufflevector <4 x float> %208, <4 x float> %139, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %210 = fmul <4 x float> %203, %209
  %211 = fadd <4 x float> %199, %210
  %212 = insertelement <4 x float> undef, float %121, i32 0
  %213 = insertelement <4 x float> %212, float %121, i32 1
  %214 = insertelement <4 x float> %213, float %121, i32 2
  %215 = insertelement <4 x float> %214, float %126, i32 3
  %216 = extractelement <4 x float> %148, i32 2
  %217 = insertelement <4 x float> undef, float %216, i32 0
  %218 = extractelement <4 x float> %148, i32 3
  %219 = insertelement <4 x float> %217, float %218, i32 1
  %220 = insertelement <4 x float> %219, float %180, i32 2
  %221 = shufflevector <4 x float> %220, <4 x float> %148, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %222 = fmul <4 x float> %215, %221
  %223 = fadd <4 x float> %211, %222
  %224 = getelementptr inbounds [3 x [3 x float]]* %t1, i64 0, i64 1, i64 0
  %225 = bitcast [3 x [3 x float]]* %t1 to <4 x float>*
  store <4 x float> %223, <4 x float>* %225, align 16, !tbaa !14
  %226 = getelementptr inbounds [3 x [3 x float]]* %t1, i64 0, i64 1, i64 1
  %227 = getelementptr inbounds [3 x [3 x float]]* %t1, i64 0, i64 1, i64 2
  %228 = load float* %94, align 8, !tbaa !14
  %229 = getelementptr inbounds [3 x [3 x float]]* %t1, i64 0, i64 2, i64 0
  %230 = insertelement <4 x float> undef, float %188, i32 0
  %231 = insertelement <4 x float> %230, float %188, i32 1
  %232 = insertelement <4 x float> %231, float %228, i32 2
  %233 = insertelement <4 x float> %232, float %228, i32 3
  %234 = insertelement <4 x float> undef, float %194, i32 0
  %235 = insertelement <4 x float> %234, float %196, i32 1
  %236 = insertelement <4 x float> %235, float %182, i32 2
  %237 = shufflevector <4 x float> %236, <4 x float> %139, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %238 = fmul <4 x float> %233, %237
  %239 = insertelement <4 x float> undef, float %111, i32 0
  %240 = insertelement <4 x float> %239, float %111, i32 1
  %241 = insertelement <4 x float> %240, float %116, i32 2
  %242 = insertelement <4 x float> %241, float %116, i32 3
  %243 = insertelement <4 x float> undef, float %181, i32 0
  %244 = insertelement <4 x float> %243, float %207, i32 1
  %245 = insertelement <4 x float> %244, float %204, i32 2
  %246 = insertelement <4 x float> %245, float %181, i32 3
  %247 = fmul <4 x float> %242, %246
  %248 = fadd <4 x float> %238, %247
  %249 = insertelement <4 x float> undef, float %126, i32 0
  %250 = insertelement <4 x float> %249, float %126, i32 1
  %251 = insertelement <4 x float> %250, float %131, i32 2
  %252 = insertelement <4 x float> %251, float %131, i32 3
  %253 = insertelement <4 x float> undef, float %218, i32 0
  %254 = insertelement <4 x float> %253, float %180, i32 1
  %255 = shufflevector <4 x float> %254, <4 x float> %148, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %256 = fmul <4 x float> %252, %255
  %257 = fadd <4 x float> %248, %256
  %258 = getelementptr inbounds [3 x [3 x float]]* %t1, i64 0, i64 2, i64 1
  %259 = bitcast float* %226 to <4 x float>*
  store <4 x float> %257, <4 x float>* %259, align 4, !tbaa !14
  %260 = fmul float %228, %196
  %261 = fmul float %116, %207
  %262 = fadd float %260, %261
  %263 = fmul float %131, %180
  %264 = fadd float %262, %263
  %265 = getelementptr inbounds [3 x [3 x float]]* %t1, i64 0, i64 2, i64 2
  store float %264, float* %265, align 8, !tbaa !14
  switch i32 %157, label %324 [
    i32 2, label %.lr.ph20
    i32 0, label %273
    i32 1, label %298
    i32 3, label %298
  ]

.lr.ph20:                                         ; preds = %179, %._crit_edge21
  %indvars.iv52 = phi i64 [ %indvars.iv.next53, %._crit_edge21 ], [ 0, %179 ]
  %indvars.iv48 = phi i32 [ %indvars.iv.next49, %._crit_edge21 ], [ 1, %179 ]
  br label %266

; <label>:266                                     ; preds = %266, %.lr.ph20
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %266 ], [ 0, %.lr.ph20 ]
  %267 = getelementptr inbounds [3 x [3 x float]]* @parrinellorahman_pcoupl.winv, i64 0, i64 %indvars.iv52, i64 %indvars.iv46
  %268 = load float* %267, align 4, !tbaa !14
  %269 = fmul float %11, %268
  %270 = getelementptr inbounds [3 x [3 x float]]* %t1, i64 0, i64 %indvars.iv52, i64 %indvars.iv46
  %271 = load float* %270, align 4, !tbaa !14
  %272 = fmul float %271, %269
  store float %272, float* %270, align 4, !tbaa !14
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  %lftr.wideiv50 = trunc i64 %indvars.iv.next47 to i32
  %exitcond51 = icmp eq i32 %lftr.wideiv50, %indvars.iv48
  br i1 %exitcond51, label %._crit_edge21, label %266

._crit_edge21:                                    ; preds = %266
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
  %indvars.iv.next49 = add nuw nsw i32 %indvars.iv48, 1
  %exitcond54 = icmp eq i64 %indvars.iv.next53, 3
  br i1 %exitcond54, label %.preheader4, label %.lr.ph20

; <label>:273                                     ; preds = %179
  %274 = load float* %1, align 4, !tbaa !14
  %275 = load float* %3, align 4, !tbaa !14
  %276 = fmul float %274, %275
  %277 = fmul float %276, %264
  %278 = extractelement <4 x float> %257, i32 0
  %279 = fmul float %274, %278
  %280 = load float* %6, align 4, !tbaa !14
  %281 = fmul float %279, %280
  %282 = fadd float %277, %281
  %283 = extractelement <4 x float> %223, i32 0
  %284 = fmul float %275, %283
  %285 = fmul float %280, %284
  %286 = fadd float %282, %285
  %287 = fmul float %8, 3.000000e+00
  %288 = fdiv float %286, %287
  br label %.lr.ph24

.lr.ph24:                                         ; preds = %273, %._crit_edge25
  %indvars.iv61 = phi i64 [ 0, %273 ], [ %indvars.iv.next62, %._crit_edge25 ]
  %indvars.iv57 = phi i32 [ 1, %273 ], [ %indvars.iv.next58, %._crit_edge25 ]
  br label %289

; <label>:289                                     ; preds = %289, %.lr.ph24
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %289 ], [ 0, %.lr.ph24 ]
  %290 = getelementptr inbounds [3 x [3 x float]]* @parrinellorahman_pcoupl.winv, i64 0, i64 %indvars.iv61, i64 %indvars.iv55
  %291 = load float* %290, align 4, !tbaa !14
  %292 = fmul float %11, %291
  %293 = fmul float %288, %292
  %294 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv61, i64 %indvars.iv55
  %295 = load float* %294, align 4, !tbaa !14
  %296 = fmul float %295, %293
  %297 = getelementptr inbounds [3 x [3 x float]]* %t1, i64 0, i64 %indvars.iv61, i64 %indvars.iv55
  store float %296, float* %297, align 4, !tbaa !14
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1
  %lftr.wideiv59 = trunc i64 %indvars.iv.next56 to i32
  %exitcond60 = icmp eq i32 %lftr.wideiv59, %indvars.iv57
  br i1 %exitcond60, label %._crit_edge25, label %289

._crit_edge25:                                    ; preds = %289
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1
  %indvars.iv.next58 = add nuw nsw i32 %indvars.iv57, 1
  %exitcond63 = icmp eq i64 %indvars.iv.next62, 3
  br i1 %exitcond63, label %.preheader4, label %.lr.ph24

; <label>:298                                     ; preds = %179, %179
  %299 = load float* %1, align 4, !tbaa !14
  %300 = extractelement <4 x float> %257, i32 0
  %301 = fmul float %299, %300
  %302 = load float* %3, align 4, !tbaa !14
  %303 = extractelement <4 x float> %223, i32 0
  %304 = fmul float %303, %302
  %305 = fadd float %301, %304
  %306 = fmul float %299, 2.000000e+00
  %307 = fmul float %306, %302
  %308 = fdiv float %305, %307
  br label %.lr.ph29

.lr.ph29:                                         ; preds = %298, %._crit_edge30
  %indvars.iv73 = phi i64 [ 0, %298 ], [ %indvars.iv.next74, %._crit_edge30 ]
  %indvars.iv69 = phi i32 [ 1, %298 ], [ %indvars.iv.next70, %._crit_edge30 ]
  br label %309

; <label>:309                                     ; preds = %309, %.lr.ph29
  %indvars.iv67 = phi i64 [ %indvars.iv.next68, %309 ], [ 0, %.lr.ph29 ]
  %310 = getelementptr inbounds [3 x [3 x float]]* @parrinellorahman_pcoupl.winv, i64 0, i64 %indvars.iv73, i64 %indvars.iv67
  %311 = load float* %310, align 4, !tbaa !14
  %312 = fmul float %11, %311
  %313 = fmul float %308, %312
  %314 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv73, i64 %indvars.iv67
  %315 = load float* %314, align 4, !tbaa !14
  %316 = fmul float %315, %313
  %317 = getelementptr inbounds [3 x [3 x float]]* %t1, i64 0, i64 %indvars.iv73, i64 %indvars.iv67
  store float %316, float* %317, align 4, !tbaa !14
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1
  %lftr.wideiv71 = trunc i64 %indvars.iv.next68 to i32
  %exitcond72 = icmp eq i32 %lftr.wideiv71, %indvars.iv69
  br i1 %exitcond72, label %._crit_edge30, label %309

._crit_edge30:                                    ; preds = %309
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1
  %indvars.iv.next70 = add nuw nsw i32 %indvars.iv69, 1
  %exitcond75 = icmp eq i64 %indvars.iv.next74, 2
  br i1 %exitcond75, label %.preheader9, label %.lr.ph29

.preheader9:                                      ; preds = %._crit_edge30, %.preheader9
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %.preheader9 ], [ 0, %._crit_edge30 ]
  %318 = getelementptr inbounds [3 x [3 x float]]* @parrinellorahman_pcoupl.winv, i64 0, i64 2, i64 %indvars.iv64
  %319 = load float* %318, align 4, !tbaa !14
  %320 = fmul float %11, %319
  %321 = getelementptr inbounds [3 x [3 x float]]* %t1, i64 0, i64 2, i64 %indvars.iv64
  %322 = load float* %321, align 4, !tbaa !14
  %323 = fmul float %322, %320
  store float %323, float* %321, align 4, !tbaa !14
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1
  %exitcond66 = icmp eq i64 %indvars.iv.next65, 3
  br i1 %exitcond66, label %.preheader4, label %.preheader9

; <label>:324                                     ; preds = %179
  %325 = icmp ugt i32 %157, 3
  br i1 %325, label %330, label %326

; <label>:326                                     ; preds = %324
  %327 = sext i32 %157 to i64
  %328 = getelementptr inbounds [5 x i8*]* @epcoupltype_names, i64 0, i64 %327
  %329 = load i8** %328, align 8, !tbaa !18
  br label %330

; <label>:330                                     ; preds = %324, %326
  %331 = phi i8* [ %329, %326 ], [ getelementptr inbounds ([10 x i8]* @.str5, i64 0, i64 0), %324 ]
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([63 x i8]* @.str4, i64 0, i64 0), i8* %331) #9
  br label %.preheader4

.preheader4:                                      ; preds = %.preheader9, %._crit_edge25, %._crit_edge21, %330
  %332 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 15
  br label %.lr.ph

.lr.ph:                                           ; preds = %.preheader4, %._crit_edge
  %indvars.iv43 = phi i64 [ 0, %.preheader4 ], [ %indvars.iv.next44, %._crit_edge ]
  %indvars.iv40 = phi i32 [ 1, %.preheader4 ], [ %indvars.iv.next41, %._crit_edge ]
  %maxchange.017 = phi float [ 0.000000e+00, %.preheader4 ], [ %maxchange.2, %._crit_edge ]
  %333 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv43, i64 %indvars.iv43
  %.pre97 = load float* %332, align 4, !tbaa !23
  br label %334

; <label>:334                                     ; preds = %334, %.lr.ph
  %335 = phi float [ %342, %334 ], [ %.pre97, %.lr.ph ]
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %334 ], [ 0, %.lr.ph ]
  %maxchange.116 = phi float [ %maxchange.2, %334 ], [ %maxchange.017, %.lr.ph ]
  %336 = getelementptr inbounds [3 x [3 x float]]* %t1, i64 0, i64 %indvars.iv43, i64 %indvars.iv38
  %337 = load float* %336, align 4, !tbaa !14
  %338 = fmul float %335, %337
  %339 = getelementptr inbounds [3 x float]* %boxv, i64 %indvars.iv43, i64 %indvars.iv38
  %340 = load float* %339, align 4, !tbaa !14
  %341 = fadd float %340, %338
  store float %341, float* %339, align 4, !tbaa !14
  %342 = load float* %332, align 4, !tbaa !23
  %343 = fmul float %342, %341
  %344 = load float* %333, align 4, !tbaa !14
  %345 = fdiv float %343, %344
  %fabsf = tail call float @fabsf(float %345) #8
  %346 = fcmp ogt float %fabsf, %maxchange.116
  %maxchange.2 = select i1 %346, float %fabsf, float %maxchange.116
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next39 to i32
  %exitcond42 = icmp eq i32 %lftr.wideiv, %indvars.iv40
  br i1 %exitcond42, label %._crit_edge, label %334

._crit_edge:                                      ; preds = %334
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1
  %indvars.iv.next41 = add nuw nsw i32 %indvars.iv40, 1
  %exitcond45 = icmp eq i64 %indvars.iv.next44, 3
  br i1 %exitcond45, label %347, label %.lr.ph

; <label>:347                                     ; preds = %._crit_edge
  %348 = fpext float %maxchange.2 to double
  %349 = fcmp ogt double %348, 1.010000e+00
  %350 = load %struct.__sFILE** @stdlog, align 8
  %351 = icmp ne %struct.__sFILE* %350, null
  %or.cond = and i1 %349, %351
  br i1 %or.cond, label %352, label %354

; <label>:352                                     ; preds = %347
  %353 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %350, i8* getelementptr inbounds ([52 x i8]* @.str6, i64 0, i64 0), i32 %step) #9
  br label %354

; <label>:354                                     ; preds = %352, %347
  call fastcc void @mtmul([3 x float]* %boxv, [3 x float]* %box, [3 x float]* %183) #11
  br label %.preheader

.preheader:                                       ; preds = %361, %354
  %indvars.iv35 = phi i64 [ 0, %354 ], [ %indvars.iv.next36, %361 ]
  br label %355

; <label>:355                                     ; preds = %355, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %355 ]
  %356 = getelementptr inbounds [3 x [3 x float]]* %t1, i64 0, i64 %indvars.iv, i64 %indvars.iv35
  %357 = load float* %356, align 4, !tbaa !14
  %358 = getelementptr inbounds [3 x [3 x float]]* %t1, i64 0, i64 %indvars.iv35, i64 %indvars.iv
  %359 = load float* %358, align 4, !tbaa !14
  %360 = fadd float %357, %359
  store float %360, float* %358, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %361, label %355

; <label>:361                                     ; preds = %355
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  %exitcond37 = icmp eq i64 %indvars.iv.next36, 3
  br i1 %exitcond37, label %362, label %.preheader

; <label>:362                                     ; preds = %361
  %363 = getelementptr inbounds [3 x [3 x float]]* %t2, i64 0, i64 0
  %364 = load float* %185, align 16, !tbaa !14
  %365 = load float* %224, align 4, !tbaa !14
  %366 = load float* %229, align 8, !tbaa !14
  %367 = load float* %186, align 4, !tbaa !14
  %368 = load float* %226, align 4, !tbaa !14
  %369 = load float* %258, align 4, !tbaa !14
  %370 = getelementptr inbounds [3 x [3 x float]]* %t2, i64 0, i64 1, i64 1
  %371 = load float* %187, align 8, !tbaa !14
  %372 = shufflevector <4 x float> %191, <4 x float> %106, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %373 = insertelement <4 x float> undef, float %364, i32 0
  %374 = insertelement <4 x float> %373, float %367, i32 1
  %375 = insertelement <4 x float> %374, float %371, i32 2
  %376 = insertelement <4 x float> %375, float %364, i32 3
  %377 = fmul <4 x float> %372, %376
  %378 = load float* %227, align 4, !tbaa !14
  %379 = insertelement <4 x float> %231, float %188, i32 2
  %380 = insertelement <4 x float> %379, float %111, i32 3
  %381 = insertelement <4 x float> undef, float %365, i32 0
  %382 = insertelement <4 x float> %381, float %368, i32 1
  %383 = insertelement <4 x float> %382, float %378, i32 2
  %384 = insertelement <4 x float> %383, float %365, i32 3
  %385 = fmul <4 x float> %380, %384
  %386 = fadd <4 x float> %377, %385
  %387 = load float* %265, align 8, !tbaa !14
  %388 = insertelement <4 x float> undef, float %228, i32 0
  %389 = insertelement <4 x float> %388, float %228, i32 1
  %390 = insertelement <4 x float> %389, float %228, i32 2
  %391 = insertelement <4 x float> %390, float %116, i32 3
  %392 = insertelement <4 x float> undef, float %366, i32 0
  %393 = insertelement <4 x float> %392, float %369, i32 1
  %394 = insertelement <4 x float> %393, float %387, i32 2
  %395 = insertelement <4 x float> %394, float %366, i32 3
  %396 = fmul <4 x float> %391, %395
  %397 = fadd <4 x float> %386, %396
  %398 = bitcast [3 x [3 x float]]* %t2 to <4 x float>*
  store <4 x float> %397, <4 x float>* %398, align 16, !tbaa !14
  %399 = insertelement <4 x float> %201, float %121, i32 2
  %400 = insertelement <4 x float> %399, float %121, i32 3
  %401 = insertelement <4 x float> undef, float %367, i32 0
  %402 = insertelement <4 x float> %401, float %371, i32 1
  %403 = insertelement <4 x float> %402, float %364, i32 2
  %404 = insertelement <4 x float> %403, float %367, i32 3
  %405 = fmul <4 x float> %400, %404
  %406 = insertelement <4 x float> %240, float %126, i32 2
  %407 = insertelement <4 x float> %406, float %126, i32 3
  %408 = insertelement <4 x float> undef, float %368, i32 0
  %409 = insertelement <4 x float> %408, float %378, i32 1
  %410 = insertelement <4 x float> %409, float %365, i32 2
  %411 = insertelement <4 x float> %410, float %368, i32 3
  %412 = fmul <4 x float> %407, %411
  %413 = fadd <4 x float> %405, %412
  %414 = insertelement <4 x float> undef, float %116, i32 0
  %415 = insertelement <4 x float> %414, float %116, i32 1
  %416 = insertelement <4 x float> %415, float %131, i32 2
  %417 = insertelement <4 x float> %416, float %131, i32 3
  %418 = insertelement <4 x float> undef, float %369, i32 0
  %419 = insertelement <4 x float> %418, float %387, i32 1
  %420 = insertelement <4 x float> %419, float %366, i32 2
  %421 = insertelement <4 x float> %420, float %369, i32 3
  %422 = fmul <4 x float> %417, %421
  %423 = fadd <4 x float> %413, %422
  %424 = bitcast float* %370 to <4 x float>*
  store <4 x float> %423, <4 x float>* %424, align 4, !tbaa !14
  %425 = fmul float %121, %371
  %426 = fmul float %126, %378
  %427 = fadd float %425, %426
  %428 = fmul float %131, %387
  %429 = fadd float %427, %428
  %430 = getelementptr inbounds [3 x [3 x float]]* %t2, i64 0, i64 2, i64 2
  store float %429, float* %430, align 8, !tbaa !14
  call fastcc void @mtmul([3 x float]* %363, [3 x float]* %40, [3 x float]* %M) #11
  call void @llvm.lifetime.end(i64 36, i8* %15) #6
  call void @llvm.lifetime.end(i64 36, i8* %14) #6
  call void @llvm.lifetime.end(i64 36, i8* %13) #6
  call void @llvm.lifetime.end(i64 36, i8* %12) #6
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #6

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #7

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @mtmul([3 x float]* nocapture readonly %a, [3 x float]* nocapture readonly %b, [3 x float]* nocapture %dest) #4 {
  %1 = getelementptr inbounds [3 x float]* %a, i64 0, i64 0
  %2 = load float* %1, align 4, !tbaa !14
  %3 = getelementptr inbounds [3 x float]* %b, i64 0, i64 0
  %4 = load float* %3, align 4, !tbaa !14
  %5 = fmul float %2, %4
  %6 = getelementptr inbounds [3 x float]* %a, i64 0, i64 1
  %7 = load float* %6, align 4, !tbaa !14
  %8 = getelementptr inbounds [3 x float]* %b, i64 0, i64 1
  %9 = load float* %8, align 4, !tbaa !14
  %10 = fmul float %7, %9
  %11 = fadd float %5, %10
  %12 = getelementptr inbounds [3 x float]* %a, i64 0, i64 2
  %13 = load float* %12, align 4, !tbaa !14
  %14 = getelementptr inbounds [3 x float]* %b, i64 0, i64 2
  %15 = load float* %14, align 4, !tbaa !14
  %16 = fmul float %13, %15
  %17 = fadd float %11, %16
  %18 = getelementptr inbounds [3 x float]* %dest, i64 0, i64 0
  store float %17, float* %18, align 4, !tbaa !14
  %19 = load float* %1, align 4, !tbaa !14
  %20 = getelementptr inbounds [3 x float]* %b, i64 1, i64 0
  %21 = load float* %20, align 4, !tbaa !14
  %22 = fmul float %19, %21
  %23 = load float* %6, align 4, !tbaa !14
  %24 = getelementptr inbounds [3 x float]* %b, i64 1, i64 1
  %25 = load float* %24, align 4, !tbaa !14
  %26 = fmul float %23, %25
  %27 = fadd float %22, %26
  %28 = load float* %12, align 4, !tbaa !14
  %29 = getelementptr inbounds [3 x float]* %b, i64 1, i64 2
  %30 = load float* %29, align 4, !tbaa !14
  %31 = fmul float %28, %30
  %32 = fadd float %27, %31
  %33 = getelementptr inbounds [3 x float]* %dest, i64 0, i64 1
  store float %32, float* %33, align 4, !tbaa !14
  %34 = load float* %1, align 4, !tbaa !14
  %35 = getelementptr inbounds [3 x float]* %b, i64 2, i64 0
  %36 = load float* %35, align 4, !tbaa !14
  %37 = fmul float %34, %36
  %38 = load float* %6, align 4, !tbaa !14
  %39 = getelementptr inbounds [3 x float]* %b, i64 2, i64 1
  %40 = load float* %39, align 4, !tbaa !14
  %41 = fmul float %38, %40
  %42 = fadd float %37, %41
  %43 = load float* %12, align 4, !tbaa !14
  %44 = getelementptr inbounds [3 x float]* %b, i64 2, i64 2
  %45 = load float* %44, align 4, !tbaa !14
  %46 = fmul float %43, %45
  %47 = fadd float %42, %46
  %48 = getelementptr inbounds [3 x float]* %dest, i64 0, i64 2
  store float %47, float* %48, align 4, !tbaa !14
  %49 = getelementptr inbounds [3 x float]* %a, i64 1, i64 0
  %50 = load float* %49, align 4, !tbaa !14
  %51 = load float* %3, align 4, !tbaa !14
  %52 = fmul float %50, %51
  %53 = getelementptr inbounds [3 x float]* %a, i64 1, i64 1
  %54 = load float* %53, align 4, !tbaa !14
  %55 = load float* %8, align 4, !tbaa !14
  %56 = fmul float %54, %55
  %57 = fadd float %52, %56
  %58 = getelementptr inbounds [3 x float]* %a, i64 1, i64 2
  %59 = load float* %58, align 4, !tbaa !14
  %60 = load float* %14, align 4, !tbaa !14
  %61 = fmul float %59, %60
  %62 = fadd float %57, %61
  %63 = getelementptr inbounds [3 x float]* %dest, i64 1, i64 0
  store float %62, float* %63, align 4, !tbaa !14
  %64 = load float* %49, align 4, !tbaa !14
  %65 = load float* %20, align 4, !tbaa !14
  %66 = fmul float %64, %65
  %67 = load float* %53, align 4, !tbaa !14
  %68 = load float* %24, align 4, !tbaa !14
  %69 = fmul float %67, %68
  %70 = fadd float %66, %69
  %71 = load float* %58, align 4, !tbaa !14
  %72 = load float* %29, align 4, !tbaa !14
  %73 = fmul float %71, %72
  %74 = fadd float %70, %73
  %75 = getelementptr inbounds [3 x float]* %dest, i64 1, i64 1
  store float %74, float* %75, align 4, !tbaa !14
  %76 = load float* %49, align 4, !tbaa !14
  %77 = load float* %35, align 4, !tbaa !14
  %78 = fmul float %76, %77
  %79 = load float* %53, align 4, !tbaa !14
  %80 = load float* %39, align 4, !tbaa !14
  %81 = fmul float %79, %80
  %82 = fadd float %78, %81
  %83 = load float* %58, align 4, !tbaa !14
  %84 = load float* %44, align 4, !tbaa !14
  %85 = fmul float %83, %84
  %86 = fadd float %82, %85
  %87 = getelementptr inbounds [3 x float]* %dest, i64 1, i64 2
  store float %86, float* %87, align 4, !tbaa !14
  %88 = getelementptr inbounds [3 x float]* %a, i64 2, i64 0
  %89 = load float* %88, align 4, !tbaa !14
  %90 = load float* %3, align 4, !tbaa !14
  %91 = fmul float %89, %90
  %92 = getelementptr inbounds [3 x float]* %a, i64 2, i64 1
  %93 = load float* %92, align 4, !tbaa !14
  %94 = load float* %8, align 4, !tbaa !14
  %95 = fmul float %93, %94
  %96 = fadd float %91, %95
  %97 = getelementptr inbounds [3 x float]* %a, i64 2, i64 2
  %98 = load float* %97, align 4, !tbaa !14
  %99 = load float* %14, align 4, !tbaa !14
  %100 = fmul float %98, %99
  %101 = fadd float %96, %100
  %102 = getelementptr inbounds [3 x float]* %dest, i64 2, i64 0
  store float %101, float* %102, align 4, !tbaa !14
  %103 = load float* %88, align 4, !tbaa !14
  %104 = load float* %20, align 4, !tbaa !14
  %105 = fmul float %103, %104
  %106 = load float* %92, align 4, !tbaa !14
  %107 = load float* %24, align 4, !tbaa !14
  %108 = fmul float %106, %107
  %109 = fadd float %105, %108
  %110 = load float* %97, align 4, !tbaa !14
  %111 = load float* %29, align 4, !tbaa !14
  %112 = fmul float %110, %111
  %113 = fadd float %109, %112
  %114 = getelementptr inbounds [3 x float]* %dest, i64 2, i64 1
  store float %113, float* %114, align 4, !tbaa !14
  %115 = load float* %88, align 4, !tbaa !14
  %116 = load float* %35, align 4, !tbaa !14
  %117 = fmul float %115, %116
  %118 = load float* %92, align 4, !tbaa !14
  %119 = load float* %39, align 4, !tbaa !14
  %120 = fmul float %118, %119
  %121 = fadd float %117, %120
  %122 = load float* %97, align 4, !tbaa !14
  %123 = load float* %44, align 4, !tbaa !14
  %124 = fmul float %122, %123
  %125 = fadd float %121, %124
  %126 = getelementptr inbounds [3 x float]* %dest, i64 2, i64 2
  store float %125, float* %126, align 4, !tbaa !14
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #6

; Function Attrs: nounwind optsize ssp uwtable
define void @berendsen_pcoupl(%struct.t_inputrec* %ir, i32 %step, [3 x float]* %pres, [3 x float]* nocapture %box, i32 %start, i32 %nr_atoms, [3 x float]* nocapture %x, i16* nocapture readonly %cFREEZE, %struct.t_nrnb* nocapture %nrnb, [3 x i32]* nocapture readonly %nFreeze) #4 {
  %mu = alloca [3 x [3 x float]], align 16
  %buf = alloca [4096 x i8], align 16
  %1 = bitcast [3 x [3 x float]]* %mu to i8*
  call void @llvm.lifetime.start(i64 36, i8* %1) #6
  %2 = getelementptr inbounds [4096 x i8]* %buf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 4096, i8* %2) #6
  br label %3

; <label>:3                                       ; preds = %13, %0
  %indvars.iv40 = phi i64 [ 0, %0 ], [ %indvars.iv.next41, %13 ]
  %xy_pressure.022 = phi float [ 0.000000e+00, %0 ], [ %xy_pressure.1, %13 ]
  %scalar_pressure.021 = phi float [ 0.000000e+00, %0 ], [ %7, %13 ]
  %4 = getelementptr inbounds [3 x float]* %pres, i64 %indvars.iv40, i64 %indvars.iv40
  %5 = load float* %4, align 4, !tbaa !14
  %6 = fdiv float %5, 3.000000e+00
  %7 = fadd float %scalar_pressure.021, %6
  %8 = trunc i64 %indvars.iv40 to i32
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %13, label %10

; <label>:10                                      ; preds = %3
  %11 = fmul float %5, 5.000000e-01
  %12 = fadd float %xy_pressure.022, %11
  br label %13

; <label>:13                                      ; preds = %3, %10
  %xy_pressure.1 = phi float [ %12, %10 ], [ %xy_pressure.022, %3 ]
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  %exitcond42 = icmp eq i64 %indvars.iv.next41, 3
  br i1 %exitcond42, label %14, label %3

; <label>:14                                      ; preds = %13
  %fabsf = tail call float @fabsf(float %7) #8
  %15 = fpext float %fabsf to double
  %16 = fcmp ogt double %15, 1.200000e-38
  br i1 %16, label %17, label %256

; <label>:17                                      ; preds = %14
  %18 = getelementptr inbounds [3 x [3 x float]]* %mu, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 36, i32 16, i1 false) #6
  %19 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 29
  %20 = load i32* %19, align 4, !tbaa !22
  switch i32 %20, label %133 [
    i32 0, label %.preheader7
    i32 1, label %.preheader8
    i32 2, label %.preheader10
    i32 3, label %92
  ]

.preheader10:                                     ; preds = %17
  %21 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 15
  %22 = load float* %21, align 4, !tbaa !23
  %23 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 30
  %24 = load float* %23, align 4, !tbaa !19
  br label %.preheader9

.preheader8:                                      ; preds = %17
  %25 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 15
  %26 = load float* %25, align 4, !tbaa !23
  %27 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 30
  %28 = load float* %27, align 4, !tbaa !19
  br label %45

.preheader7:                                      ; preds = %17
  %29 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 15
  %30 = load float* %29, align 4, !tbaa !23
  %31 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 30
  %32 = load float* %31, align 4, !tbaa !19
  br label %33

; <label>:33                                      ; preds = %33, %.preheader7
  %indvars.iv25 = phi i64 [ 0, %.preheader7 ], [ %indvars.iv.next26, %33 ]
  %34 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 32, i64 %indvars.iv25, i64 %indvars.iv25
  %35 = load float* %34, align 4, !tbaa !14
  %36 = fmul float %35, %30
  %37 = fdiv float %36, %32
  %38 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 %indvars.iv25, i64 %indvars.iv25
  %39 = load float* %38, align 4, !tbaa !14
  %40 = fsub float %39, %7
  %41 = fmul float %37, %40
  %42 = fdiv float %41, 3.000000e+00
  %43 = fsub float 1.000000e+00, %42
  %44 = getelementptr inbounds [3 x [3 x float]]* %mu, i64 0, i64 %indvars.iv25, i64 %indvars.iv25
  store float %43, float* %44, align 4, !tbaa !14
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  %exitcond27 = icmp eq i64 %indvars.iv.next26, 3
  br i1 %exitcond27, label %.loopexit, label %33

; <label>:45                                      ; preds = %45, %.preheader8
  %indvars.iv28 = phi i64 [ 0, %.preheader8 ], [ %indvars.iv.next29, %45 ]
  %46 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 32, i64 %indvars.iv28, i64 %indvars.iv28
  %47 = load float* %46, align 4, !tbaa !14
  %48 = fmul float %47, %26
  %49 = fdiv float %48, %28
  %50 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 %indvars.iv28, i64 %indvars.iv28
  %51 = load float* %50, align 4, !tbaa !14
  %52 = fsub float %51, %xy_pressure.1
  %53 = fmul float %49, %52
  %54 = fdiv float %53, 3.000000e+00
  %55 = fsub float 1.000000e+00, %54
  %56 = getelementptr inbounds [3 x [3 x float]]* %mu, i64 0, i64 %indvars.iv28, i64 %indvars.iv28
  store float %55, float* %56, align 4, !tbaa !14
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  %exitcond30 = icmp eq i64 %indvars.iv.next29, 2
  br i1 %exitcond30, label %57, label %45

; <label>:57                                      ; preds = %45
  %58 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 32, i64 2, i64 2
  %59 = load float* %58, align 4, !tbaa !14
  %60 = fmul float %59, %26
  %61 = fdiv float %60, %28
  %62 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 2, i64 2
  %63 = load float* %62, align 4, !tbaa !14
  %64 = getelementptr inbounds [3 x float]* %pres, i64 2, i64 2
  %65 = load float* %64, align 4, !tbaa !14
  %66 = fsub float %63, %65
  %67 = fmul float %61, %66
  %68 = fdiv float %67, 3.000000e+00
  %69 = fsub float 1.000000e+00, %68
  %70 = getelementptr inbounds [3 x [3 x float]]* %mu, i64 0, i64 2, i64 2
  store float %69, float* %70, align 8, !tbaa !14
  br label %.loopexit

.preheader9:                                      ; preds = %91, %.preheader10
  %indvars.iv34 = phi i64 [ 0, %.preheader10 ], [ %indvars.iv.next35, %91 ]
  br label %71

; <label>:71                                      ; preds = %71, %.preheader9
  %indvars.iv31 = phi i64 [ 0, %.preheader9 ], [ %indvars.iv.next32, %71 ]
  %72 = trunc i64 %indvars.iv31 to i32
  %73 = trunc i64 %indvars.iv34 to i32
  %74 = icmp eq i32 %73, %72
  %75 = select i1 %74, double 1.000000e+00, double 0.000000e+00
  %76 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 32, i64 %indvars.iv34, i64 %indvars.iv31
  %77 = load float* %76, align 4, !tbaa !14
  %78 = fmul float %77, %22
  %79 = fdiv float %78, %24
  %80 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 %indvars.iv34, i64 %indvars.iv31
  %81 = load float* %80, align 4, !tbaa !14
  %82 = getelementptr inbounds [3 x float]* %pres, i64 %indvars.iv34, i64 %indvars.iv31
  %83 = load float* %82, align 4, !tbaa !14
  %84 = fsub float %81, %83
  %85 = fmul float %79, %84
  %86 = fdiv float %85, 3.000000e+00
  %87 = fpext float %86 to double
  %88 = fsub double %75, %87
  %89 = fptrunc double %88 to float
  %90 = getelementptr inbounds [3 x [3 x float]]* %mu, i64 0, i64 %indvars.iv34, i64 %indvars.iv31
  store float %89, float* %90, align 4, !tbaa !14
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  %exitcond33 = icmp eq i64 %indvars.iv.next32, 3
  br i1 %exitcond33, label %91, label %71

; <label>:91                                      ; preds = %71
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  %exitcond36 = icmp eq i64 %indvars.iv.next35, 3
  br i1 %exitcond36, label %.loopexit11, label %.preheader9

; <label>:92                                      ; preds = %17
  %93 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 32, i64 2, i64 2
  %94 = load float* %93, align 4, !tbaa !14
  %fabsf1 = tail call float @fabsf(float %94) #8
  %95 = fpext float %fabsf1 to double
  %96 = fcmp ogt double %95, 1.200000e-38
  %97 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 15
  %98 = load float* %97, align 4, !tbaa !23
  %99 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 30
  %100 = load float* %99, align 4, !tbaa !19
  br i1 %96, label %101, label %._crit_edge

._crit_edge:                                      ; preds = %92
  %.phi.trans.insert45 = getelementptr inbounds [3 x float]* %pres, i64 2, i64 2
  %.pre46 = load float* %.phi.trans.insert45, align 4, !tbaa !14
  br label %109

; <label>:101                                     ; preds = %92
  %102 = fdiv float %98, %100
  %103 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 2, i64 2
  %104 = load float* %103, align 4, !tbaa !14
  %105 = getelementptr inbounds [3 x float]* %pres, i64 2, i64 2
  %106 = load float* %105, align 4, !tbaa !14
  %107 = fsub float %104, %106
  %108 = fmul float %102, %107
  br label %109

; <label>:109                                     ; preds = %._crit_edge, %101
  %110 = phi float [ %106, %101 ], [ %.pre46, %._crit_edge ]
  %p_corr_z.0 = phi float [ %108, %101 ], [ 0.000000e+00, %._crit_edge ]
  %111 = fmul float %p_corr_z.0, %94
  %112 = fsub float 1.000000e+00, %111
  %113 = getelementptr inbounds [3 x [3 x float]]* %mu, i64 0, i64 2, i64 2
  store float %112, float* %113, align 8, !tbaa !14
  %114 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %115 = load float* %114, align 4, !tbaa !14
  %116 = fadd float %p_corr_z.0, %110
  %117 = fsub float %116, %xy_pressure.1
  br label %118

; <label>:118                                     ; preds = %._crit_edge47, %109
  %119 = phi float [ %112, %109 ], [ %.pre48, %._crit_edge47 ]
  %indvars.iv37 = phi i64 [ 0, %109 ], [ %indvars.iv.next38, %._crit_edge47 ]
  %120 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 32, i64 %indvars.iv37, i64 %indvars.iv37
  %121 = load float* %120, align 4, !tbaa !14
  %122 = fmul float %121, %98
  %123 = fdiv float %122, %100
  %124 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 31, i64 %indvars.iv37, i64 %indvars.iv37
  %125 = load float* %124, align 4, !tbaa !14
  %126 = fmul float %119, %115
  %127 = fdiv float %125, %126
  %128 = fsub float %127, %117
  %129 = fmul float %123, %128
  %130 = fmul float %129, 5.000000e-01
  %131 = fadd float %130, 1.000000e+00
  %132 = getelementptr inbounds [3 x [3 x float]]* %mu, i64 0, i64 %indvars.iv37, i64 %indvars.iv37
  store float %131, float* %132, align 4, !tbaa !14
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  %exitcond39 = icmp eq i64 %indvars.iv.next38, 2
  br i1 %exitcond39, label %.loopexit, label %._crit_edge47

._crit_edge47:                                    ; preds = %118
  %.pre48 = load float* %113, align 8, !tbaa !14
  br label %118

; <label>:133                                     ; preds = %17
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([55 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @.str5, i64 0, i64 0)) #9
  br label %.loopexit

.loopexit11:                                      ; preds = %91
  %.phi.trans.insert49 = getelementptr inbounds [3 x [3 x float]]* %mu, i64 0, i64 1, i64 0
  %.pre50 = load float* %.phi.trans.insert49, align 4, !tbaa !14
  %.phi.trans.insert51 = getelementptr inbounds [3 x [3 x float]]* %mu, i64 0, i64 0, i64 1
  %.pre52 = load float* %.phi.trans.insert51, align 4, !tbaa !14
  %.phi.trans.insert53 = getelementptr inbounds [3 x [3 x float]]* %mu, i64 0, i64 2, i64 0
  %.pre54 = load float* %.phi.trans.insert53, align 8, !tbaa !14
  %.phi.trans.insert55 = getelementptr inbounds [3 x [3 x float]]* %mu, i64 0, i64 0, i64 2
  %.pre56 = load float* %.phi.trans.insert55, align 8, !tbaa !14
  %.phi.trans.insert57 = getelementptr inbounds [3 x [3 x float]]* %mu, i64 0, i64 2, i64 1
  %.pre58 = load float* %.phi.trans.insert57, align 4, !tbaa !14
  %.phi.trans.insert59 = getelementptr inbounds [3 x [3 x float]]* %mu, i64 0, i64 1, i64 2
  %.pre60 = load float* %.phi.trans.insert59, align 4, !tbaa !14
  br label %.loopexit

.loopexit:                                        ; preds = %118, %33, %.loopexit11, %133, %57
  %134 = phi float [ %.pre60, %.loopexit11 ], [ 0.000000e+00, %133 ], [ 0.000000e+00, %57 ], [ 0.000000e+00, %33 ], [ 0.000000e+00, %118 ]
  %135 = phi float [ %.pre58, %.loopexit11 ], [ 0.000000e+00, %133 ], [ 0.000000e+00, %57 ], [ 0.000000e+00, %33 ], [ 0.000000e+00, %118 ]
  %136 = phi float [ %.pre56, %.loopexit11 ], [ 0.000000e+00, %133 ], [ 0.000000e+00, %57 ], [ 0.000000e+00, %33 ], [ 0.000000e+00, %118 ]
  %137 = phi float [ %.pre54, %.loopexit11 ], [ 0.000000e+00, %133 ], [ 0.000000e+00, %57 ], [ 0.000000e+00, %33 ], [ 0.000000e+00, %118 ]
  %138 = phi float [ %.pre52, %.loopexit11 ], [ 0.000000e+00, %133 ], [ 0.000000e+00, %57 ], [ 0.000000e+00, %33 ], [ 0.000000e+00, %118 ]
  %139 = phi float [ %.pre50, %.loopexit11 ], [ 0.000000e+00, %133 ], [ 0.000000e+00, %57 ], [ 0.000000e+00, %33 ], [ 0.000000e+00, %118 ]
  %140 = getelementptr inbounds [3 x [3 x float]]* %mu, i64 0, i64 0, i64 1
  %141 = fadd float %139, %138
  store float %141, float* %140, align 4, !tbaa !14
  %142 = getelementptr inbounds [3 x [3 x float]]* %mu, i64 0, i64 0, i64 2
  %143 = fadd float %137, %136
  store float %143, float* %142, align 8, !tbaa !14
  %144 = getelementptr inbounds [3 x [3 x float]]* %mu, i64 0, i64 1, i64 2
  %145 = fadd float %135, %134
  store float %145, float* %144, align 4, !tbaa !14
  %146 = load %struct.__sFILE** @debug, align 8, !tbaa !18
  %147 = icmp eq %struct.__sFILE* %146, null
  br i1 %147, label %150, label %148

; <label>:148                                     ; preds = %.loopexit
  tail call void @pr_rvecs(%struct.__sFILE* %146, i32 0, i8* getelementptr inbounds ([10 x i8]* @.str8, i64 0, i64 0), [3 x float]* %pres, i32 3) #9
  %149 = load %struct.__sFILE** @debug, align 8, !tbaa !18
  call void @pr_rvecs(%struct.__sFILE* %149, i32 0, i8* getelementptr inbounds ([10 x i8]* @.str9, i64 0, i64 0), [3 x float]* %18, i32 3) #9
  br label %150

; <label>:150                                     ; preds = %.loopexit, %148
  %151 = getelementptr inbounds [3 x [3 x float]]* %mu, i64 0, i64 0, i64 0
  %152 = load float* %151, align 16, !tbaa !14
  %153 = fpext float %152 to double
  %154 = fcmp olt double %153, 9.900000e-01
  %155 = fcmp ogt double %153, 1.010000e+00
  %or.cond3 = or i1 %154, %155
  %.phi.trans.insert62 = getelementptr inbounds [3 x [3 x float]]* %mu, i64 0, i64 1, i64 1
  %.pre63 = load float* %.phi.trans.insert62, align 4, !tbaa !14
  br i1 %or.cond3, label %._crit_edge61, label %156

; <label>:156                                     ; preds = %150
  %157 = fpext float %.pre63 to double
  %158 = fcmp olt double %157, 9.900000e-01
  %159 = fcmp ogt double %157, 1.010000e+00
  %or.cond4 = or i1 %158, %159
  br i1 %or.cond4, label %._crit_edge61, label %160

; <label>:160                                     ; preds = %156
  %161 = getelementptr inbounds [3 x [3 x float]]* %mu, i64 0, i64 2, i64 2
  %162 = load float* %161, align 8, !tbaa !14
  %163 = fpext float %162 to double
  %164 = fcmp olt double %163, 9.900000e-01
  %165 = fcmp ogt double %163, 1.010000e+00
  %or.cond5 = or i1 %164, %165
  br i1 %or.cond5, label %._crit_edge61, label %.preheader6

._crit_edge61:                                    ; preds = %150, %160, %156
  %166 = fpext float %.pre63 to double
  %167 = getelementptr inbounds [3 x [3 x float]]* %mu, i64 0, i64 2, i64 2
  %168 = load float* %167, align 8, !tbaa !14
  %169 = fpext float %168 to double
  %170 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %2, i32 0, i64 4096, i8* getelementptr inbounds ([65 x i8]* @.str10, i64 0, i64 0), i32 %step, double %153, double %166, double %169) #9
  %171 = load %struct.__sFILE** @stdlog, align 8, !tbaa !18
  %172 = icmp eq %struct.__sFILE* %171, null
  br i1 %172, label %174, label %173

; <label>:173                                     ; preds = %._crit_edge61
  %fputs2 = call i32 @fputs(i8* %2, %struct.__sFILE* %171)
  br label %174

; <label>:174                                     ; preds = %._crit_edge61, %173
  %175 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !18
  %fputs = call i32 @fputs(i8* %2, %struct.__sFILE* %175)
  br label %.preheader6

.preheader6:                                      ; preds = %160, %174
  %176 = icmp sgt i32 %nr_atoms, 0
  br i1 %176, label %.lr.ph, label %.preheader6..preheader_crit_edge

.preheader6..preheader_crit_edge:                 ; preds = %.preheader6
  %.pre64 = load float* %151, align 16, !tbaa !14
  %.pre65 = load float* %140, align 4, !tbaa !14
  %.pre66 = load float* %142, align 8, !tbaa !14
  %.phi.trans.insert67 = getelementptr inbounds [3 x [3 x float]]* %mu, i64 0, i64 1, i64 1
  %.pre68 = load float* %.phi.trans.insert67, align 4, !tbaa !14
  %.pre69 = load float* %144, align 4, !tbaa !14
  %.phi.trans.insert70 = getelementptr inbounds [3 x [3 x float]]* %mu, i64 0, i64 2, i64 2
  %.pre71 = load float* %.phi.trans.insert70, align 8, !tbaa !14
  br label %.preheader

.lr.ph:                                           ; preds = %.preheader6
  %177 = add nsw i32 %nr_atoms, %start
  %178 = load float* %151, align 16, !tbaa !14
  %179 = load float* %140, align 4, !tbaa !14
  %180 = load float* %142, align 8, !tbaa !14
  %181 = getelementptr inbounds [3 x [3 x float]]* %mu, i64 0, i64 1, i64 1
  %182 = load float* %181, align 4, !tbaa !14
  %183 = load float* %144, align 4, !tbaa !14
  %184 = getelementptr inbounds [3 x [3 x float]]* %mu, i64 0, i64 2, i64 2
  %185 = load float* %184, align 8, !tbaa !14
  %186 = sext i32 %start to i64
  %187 = sext i32 %177 to i64
  br label %194

.preheader:                                       ; preds = %233, %.preheader6..preheader_crit_edge
  %188 = phi float [ %.pre71, %.preheader6..preheader_crit_edge ], [ %185, %233 ]
  %189 = phi float [ %.pre69, %.preheader6..preheader_crit_edge ], [ %183, %233 ]
  %190 = phi float [ %.pre68, %.preheader6..preheader_crit_edge ], [ %182, %233 ]
  %191 = phi float [ %.pre66, %.preheader6..preheader_crit_edge ], [ %180, %233 ]
  %192 = phi float [ %.pre65, %.preheader6..preheader_crit_edge ], [ %179, %233 ]
  %193 = phi float [ %.pre64, %.preheader6..preheader_crit_edge ], [ %178, %233 ]
  br label %235

; <label>:194                                     ; preds = %.lr.ph, %233
  %indvars.iv23 = phi i64 [ %186, %.lr.ph ], [ %indvars.iv.next24, %233 ]
  %195 = getelementptr inbounds i16* %cFREEZE, i64 %indvars.iv23
  %196 = load i16* %195, align 2, !tbaa !24
  %197 = zext i16 %196 to i64
  %198 = getelementptr inbounds [3 x i32]* %nFreeze, i64 %197, i64 0
  %199 = load i32* %198, align 4, !tbaa !25
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %213

; <label>:201                                     ; preds = %194
  %202 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv23, i64 0
  %203 = load float* %202, align 4, !tbaa !14
  %204 = fmul float %178, %203
  %205 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv23, i64 1
  %206 = load float* %205, align 4, !tbaa !14
  %207 = fmul float %179, %206
  %208 = fadd float %204, %207
  %209 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv23, i64 2
  %210 = load float* %209, align 4, !tbaa !14
  %211 = fmul float %180, %210
  %212 = fadd float %208, %211
  store float %212, float* %202, align 4, !tbaa !14
  br label %213

; <label>:213                                     ; preds = %194, %201
  %214 = getelementptr inbounds [3 x i32]* %nFreeze, i64 %197, i64 1
  %215 = load i32* %214, align 4, !tbaa !25
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %225

; <label>:217                                     ; preds = %213
  %218 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv23, i64 1
  %219 = load float* %218, align 4, !tbaa !14
  %220 = fmul float %182, %219
  %221 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv23, i64 2
  %222 = load float* %221, align 4, !tbaa !14
  %223 = fmul float %183, %222
  %224 = fadd float %220, %223
  store float %224, float* %218, align 4, !tbaa !14
  br label %225

; <label>:225                                     ; preds = %213, %217
  %226 = getelementptr inbounds [3 x i32]* %nFreeze, i64 %197, i64 2
  %227 = load i32* %226, align 4, !tbaa !25
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %233

; <label>:229                                     ; preds = %225
  %230 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv23, i64 2
  %231 = load float* %230, align 4, !tbaa !14
  %232 = fmul float %185, %231
  store float %232, float* %230, align 4, !tbaa !14
  br label %233

; <label>:233                                     ; preds = %225, %229
  %indvars.iv.next24 = add nsw i64 %indvars.iv23, 1
  %234 = icmp slt i64 %indvars.iv.next24, %187
  br i1 %234, label %194, label %.preheader

; <label>:235                                     ; preds = %235, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %235 ]
  %236 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 0
  %237 = load float* %236, align 4, !tbaa !14
  %238 = fmul float %193, %237
  %239 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 1
  %240 = load float* %239, align 4, !tbaa !14
  %241 = fmul float %192, %240
  %242 = fadd float %238, %241
  %243 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 2
  %244 = load float* %243, align 4, !tbaa !14
  %245 = fmul float %191, %244
  %246 = fadd float %242, %245
  store float %246, float* %236, align 4, !tbaa !14
  %247 = fmul float %190, %240
  %248 = fmul float %189, %244
  %249 = fadd float %247, %248
  store float %249, float* %239, align 4, !tbaa !14
  %250 = fmul float %188, %244
  store float %250, float* %243, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %251, label %235

; <label>:251                                     ; preds = %235
  %252 = sitofp i32 %nr_atoms to double
  %253 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 111
  %254 = load double* %253, align 8, !tbaa !16
  %255 = fadd double %252, %254
  store double %255, double* %253, align 8, !tbaa !16
  br label %256

; <label>:256                                     ; preds = %251, %14
  call void @llvm.lifetime.end(i64 4096, i8* %2) #6
  call void @llvm.lifetime.end(i64 36, i8* %1) #6
  ret void
}

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @berendsen_tcoupl(%struct.t_grpopts* nocapture readonly %opts, %struct.t_groups* nocapture readonly %grps, float %dt, float %SAfactor) #4 {
  %1 = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 0
  %2 = load i32* %1, align 4, !tbaa !26
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %4 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 1
  %5 = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 6
  %6 = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 5
  br label %7

; <label>:7                                       ; preds = %.lr.ph, %54
  %8 = phi i32 [ %2, %.lr.ph ], [ %55, %54 ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %54 ]
  %9 = load %struct.t_grp_tcstat** %4, align 8, !tbaa !27
  %10 = getelementptr inbounds %struct.t_grp_tcstat* %9, i64 %indvars.iv, i32 0
  %11 = load float* %10, align 4, !tbaa !31
  %12 = load float** %5, align 8, !tbaa !33
  %13 = getelementptr inbounds float* %12, i64 %indvars.iv
  %14 = load float* %13, align 4, !tbaa !14
  %15 = fcmp ogt float %14, 0.000000e+00
  %16 = fcmp ogt float %11, 0.000000e+00
  %or.cond = and i1 %16, %15
  br i1 %or.cond, label %17, label %43

; <label>:17                                      ; preds = %7
  %18 = load float** %6, align 8, !tbaa !34
  %19 = getelementptr inbounds float* %18, i64 %indvars.iv
  %20 = load float* %19, align 4, !tbaa !14
  %21 = fmul float %20, %SAfactor
  %22 = fcmp olt float %21, 0.000000e+00
  br i1 %22, label %25, label %23

; <label>:23                                      ; preds = %17
  %24 = fpext float %21 to double
  br label %25

; <label>:25                                      ; preds = %17, %23
  %26 = phi double [ %24, %23 ], [ 0.000000e+00, %17 ]
  %27 = fptrunc double %26 to float
  %28 = fdiv float %dt, %14
  %29 = fpext float %28 to double
  %30 = fdiv float %27, %11
  %31 = fpext float %30 to double
  %32 = fadd double %31, -1.000000e+00
  %33 = fmul double %29, %32
  %34 = fadd double %33, 1.000000e+00
  %35 = tail call double @sqrt(double %34) #12
  %36 = fptrunc double %35 to float
  %37 = fpext float %36 to double
  %38 = fcmp olt float %36, 1.250000e+00
  %39 = select i1 %38, double %37, double 1.250000e+00
  %.not = fcmp ule double %39, 8.000000e-01
  %.not1 = xor i1 %38, true
  %brmerge = or i1 %.not, %.not1
  %.mux = select i1 %.not, double 8.000000e-01, double 1.250000e+00
  %40 = select i1 %brmerge, double %.mux, double %37
  %41 = fptrunc double %40 to float
  %42 = getelementptr inbounds %struct.t_grp_tcstat* %9, i64 %indvars.iv, i32 1
  store float %41, float* %42, align 4, !tbaa !35
  br label %45

; <label>:43                                      ; preds = %7
  %44 = getelementptr inbounds %struct.t_grp_tcstat* %9, i64 %indvars.iv, i32 1
  store float 1.000000e+00, float* %44, align 4, !tbaa !35
  br label %45

; <label>:45                                      ; preds = %43, %25
  %46 = phi float [ 1.000000e+00, %43 ], [ %41, %25 ]
  %47 = load %struct.__sFILE** @debug, align 8, !tbaa !18
  %48 = icmp eq %struct.__sFILE* %47, null
  br i1 %48, label %54, label %49

; <label>:49                                      ; preds = %45
  %50 = fpext float %11 to double
  %51 = fpext float %46 to double
  %52 = trunc i64 %indvars.iv to i32
  %53 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %47, i8* getelementptr inbounds ([33 x i8]* @.str12, i64 0, i64 0), i32 %52, double %50, double %51) #9
  %.pre = load i32* %1, align 4, !tbaa !26
  br label %54

; <label>:54                                      ; preds = %45, %49
  %55 = phi i32 [ %8, %45 ], [ %.pre, %49 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %56 = sext i32 %55 to i64
  %57 = icmp slt i64 %indvars.iv.next, %56
  br i1 %57, label %7, label %._crit_edge

._crit_edge:                                      ; preds = %54, %0
  ret void
}

; Function Attrs: nounwind optsize readnone
declare double @sqrt(double) #8

; Function Attrs: nounwind optsize ssp uwtable
define void @nosehoover_tcoupl(%struct.t_grpopts* nocapture readonly %opts, %struct.t_groups* nocapture readonly %grps, float %dt, float %SAfactor) #4 {
  %1 = load float** @nosehoover_tcoupl.Qinv, align 8, !tbaa !18
  %2 = icmp eq float* %1, null
  %3 = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 0
  %4 = load i32* %3, align 4, !tbaa !26
  br i1 %2, label %13, label %.preheader

.preheader:                                       ; preds = %41, %0
  %5 = phi float* [ %1, %0 ], [ %17, %41 ]
  %6 = phi i32 [ %4, %0 ], [ %15, %41 ]
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %.lr.ph, label %.preheader.thread

.lr.ph:                                           ; preds = %.preheader
  %8 = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 5
  %9 = load float** %8, align 8, !tbaa !34
  %10 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 1
  %11 = load %struct.t_grp_tcstat** %10, align 8, !tbaa !27
  %12 = sext i32 %6 to i64
  br label %43

; <label>:13                                      ; preds = %0
  %14 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str13, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str14, i64 0, i64 0), i32 372, i32 %4, i32 4) #9
  store i8* %14, i8** bitcast (float** @nosehoover_tcoupl.Qinv to i8**), align 8, !tbaa !18
  %15 = load i32* %3, align 4, !tbaa !26
  %16 = icmp sgt i32 %15, 0
  %17 = bitcast i8* %14 to float*
  br i1 %16, label %.lr.ph4, label %.preheader.thread

.lr.ph4:                                          ; preds = %13
  %18 = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 6
  %19 = load float** %18, align 8, !tbaa !33
  %20 = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 5
  %21 = sext i32 %15 to i64
  br label %22

; <label>:22                                      ; preds = %.lr.ph4, %41
  %indvars.iv5 = phi i64 [ 0, %.lr.ph4 ], [ %indvars.iv.next6, %41 ]
  %23 = getelementptr inbounds float* %19, i64 %indvars.iv5
  %24 = load float* %23, align 4, !tbaa !14
  %25 = fcmp ogt float %24, 0.000000e+00
  br i1 %25, label %26, label %39

; <label>:26                                      ; preds = %22
  %27 = load float** %20, align 8, !tbaa !34
  %28 = getelementptr inbounds float* %27, i64 %indvars.iv5
  %29 = load float* %28, align 4, !tbaa !14
  %30 = fcmp ogt float %29, 0.000000e+00
  br i1 %30, label %31, label %39

; <label>:31                                      ; preds = %26
  %32 = fmul float %24, %24
  %33 = fmul float %32, %29
  %34 = fpext float %33 to double
  %35 = fdiv double 1.000000e+00, %34
  %36 = fdiv double %35, 0x4043BD3CC9BE45DE
  %37 = fptrunc double %36 to float
  %38 = getelementptr inbounds float* %17, i64 %indvars.iv5
  store float %37, float* %38, align 4, !tbaa !14
  br label %41

; <label>:39                                      ; preds = %26, %22
  %40 = getelementptr inbounds float* %17, i64 %indvars.iv5
  store float 0.000000e+00, float* %40, align 4, !tbaa !14
  br label %41

; <label>:41                                      ; preds = %31, %39
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1
  %42 = icmp slt i64 %indvars.iv.next6, %21
  br i1 %42, label %22, label %.preheader

; <label>:43                                      ; preds = %.lr.ph, %50
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %50 ]
  %44 = getelementptr inbounds float* %9, i64 %indvars.iv
  %45 = load float* %44, align 4, !tbaa !14
  %46 = fmul float %45, %SAfactor
  %47 = fcmp olt float %46, 0.000000e+00
  br i1 %47, label %50, label %48

; <label>:48                                      ; preds = %43
  %49 = fpext float %46 to double
  br label %50

; <label>:50                                      ; preds = %43, %48
  %51 = phi double [ %49, %48 ], [ 0.000000e+00, %43 ]
  %52 = fptrunc double %51 to float
  %53 = getelementptr inbounds float* %5, i64 %indvars.iv
  %54 = load float* %53, align 4, !tbaa !14
  %55 = fmul float %54, %dt
  %56 = getelementptr inbounds %struct.t_grp_tcstat* %11, i64 %indvars.iv, i32 0
  %57 = load float* %56, align 4, !tbaa !31
  %58 = fsub float %57, %52
  %59 = fmul float %55, %58
  %60 = getelementptr inbounds %struct.t_grp_tcstat* %11, i64 %indvars.iv, i32 3
  %61 = load float* %60, align 4, !tbaa !36
  %62 = fadd float %61, %59
  store float %62, float* %60, align 4, !tbaa !36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %63 = icmp slt i64 %indvars.iv.next, %12
  br i1 %63, label %43, label %.preheader.thread

.preheader.thread:                                ; preds = %50, %13, %.preheader
  ret void
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

declare float @fabsf(float)

; Function Attrs: nounwind
declare i32 @fputs(i8* nocapture readonly, %struct.__sFILE* nocapture) #6

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind optsize }
attributes #10 = { readnone }
attributes #11 = { optsize }
attributes #12 = { nounwind optsize readnone }

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
!18 = !{!4, !4, i64 0}
!19 = !{!20, !15, i64 120}
!20 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !15, i64 56, !15, i64 60, !15, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !7, i64 80, !15, i64 84, !7, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !15, i64 120, !5, i64 124, !5, i64 160, !7, i64 196, !15, i64 200, !15, i64 204, !7, i64 208, !15, i64 212, !15, i64 216, !7, i64 220, !15, i64 224, !15, i64 228, !15, i64 232, !7, i64 236, !15, i64 240, !15, i64 244, !7, i64 248, !15, i64 252, !15, i64 256, !15, i64 260, !15, i64 264, !15, i64 268, !7, i64 272, !7, i64 276, !7, i64 280, !15, i64 284, !15, i64 288, !15, i64 292, !7, i64 296, !15, i64 300, !15, i64 304, !7, i64 308, !7, i64 312, !7, i64 316, !7, i64 320, !7, i64 324, !15, i64 328, !7, i64 332, !15, i64 336, !15, i64 340, !7, i64 344, !15, i64 348, !7, i64 352, !7, i64 356, !7, i64 360, !7, i64 364, !15, i64 368, !15, i64 372, !15, i64 376, !15, i64 380, !21, i64 384, !5, i64 448, !5, i64 520}
!21 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56}
!22 = !{!20, !7, i64 116}
!23 = !{!20, !15, i64 60}
!24 = !{!8, !8, i64 0}
!25 = !{!7, !7, i64 0}
!26 = !{!21, !7, i64 0}
!27 = !{!28, !4, i64 64}
!28 = !{!"", !29, i64 0, !4, i64 64, !4, i64 72, !30, i64 80}
!29 = !{!"", !7, i64 0, !5, i64 8}
!30 = !{!"", !15, i64 0, !15, i64 4, !15, i64 8}
!31 = !{!32, !15, i64 0}
!32 = !{!"", !15, i64 0, !15, i64 4, !5, i64 8, !15, i64 44, !15, i64 48}
!33 = !{!21, !4, i64 32}
!34 = !{!21, !4, i64 24}
!35 = !{!32, !15, i64 4}
!36 = !{!32, !15, i64 44}
