; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/pullutil.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_mdatoms = type { float, i32, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, i32*, i32*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16* }
%struct.t_pull = type { %struct.t_pullgrps, %struct.t_pullgrps, %struct.t_pullgrps, i32, i32, [3 x float], [3 x float], float, float, [3 x i32], float, float, i32, float, float, float, i32, i32, i32, %struct.__sFILE*, float, float, float, i32, i32, i32 }
%struct.t_pullgrps = type { i32, i32**, float**, i32*, i8**, float*, [3 x float]**, [3 x float]**, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, float*, [3 x float]*, [3 x float]** }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [38 x i8] c"Jumped +box: nr %d dir: %d old:%8.3f\0A\00", align 1
@.str1 = private unnamed_addr constant [38 x i8] c"Jumped -box: nr %d dir: %d old:%8.3f\0A\00", align 1
@.str2 = private unnamed_addr constant [54 x i8] c"correct_t0: Group %s: mass:%8.3f com:%8.3f%8.3f%8.3f\0A\00", align 1
@.str3 = private unnamed_addr constant [7 x i8] c"%f%f%f\00", align 1
@.str4 = private unnamed_addr constant [40 x i8] c"Expected three numbers at input line %s\00", align 1
@make_refgrps.bFirst = internal unnamed_addr global i1 false
@.str5 = private unnamed_addr constant [15 x i8] c"pull->dyna.ngx\00", align 1
@.str6 = private unnamed_addr constant [68 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/pullutil.c\00", align 1
@.str7 = private unnamed_addr constant [15 x i8] c"pull->dyna.idx\00", align 1
@.str8 = private unnamed_addr constant [19 x i8] c"pull->dyna.weights\00", align 1
@.str9 = private unnamed_addr constant [18 x i8] c"pull->dyna.idx[i]\00", align 1
@.str10 = private unnamed_addr constant [22 x i8] c"pull->dyna.weights[i]\00", align 1
@.str11 = private unnamed_addr constant [48 x i8] c"Made group %d:%8.3f%8.3f%8.3f wm:%8.3f m:%8.3f\0A\00", align 1

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
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #7
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
  %3 = tail call float @llvm.fabs.f32(float %__x) #8
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
  %3 = tail call double @llvm.fabs.f64(double %__x) #8
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
  %3 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #8
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
  %1 = tail call float @llvm.fabs.f32(float %__x) #8
  %2 = fcmp oeq float %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfd(double %__x) #2 {
  %1 = tail call double @llvm.fabs.f64(double %__x) #8
  %2 = fcmp oeq double %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfl(x86_fp80 %__x) #2 {
  %1 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #8
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
  %1 = tail call <2 x float> @__sincosf_stret(float %__x) #7
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
  %1 = tail call { double, double } @__sincos_stret(double %__x) #7
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
  %1 = tail call <2 x float> @__sincospif_stret(float %__x) #7
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
  %1 = tail call { double, double } @__sincospi_stret(double %__x) #7
  %2 = extractvalue { double, double } %1, 0
  %3 = extractvalue { double, double } %1, 1
  store double %2, double* %__sinp, align 8, !tbaa !16
  store double %3, double* %__cosp, align 8, !tbaa !16
  ret void
}

; Function Attrs: optsize
declare { double, double } @__sincospi_stret(double) #1

; Function Attrs: nounwind optsize ssp uwtable
define float @calc_com([3 x float]* nocapture readonly %x, i32 %gnx, i32* nocapture readonly %index, %struct.t_mdatoms* nocapture readonly %md, float* nocapture %com, [3 x float]* nocapture readonly %box) #4 {
  store float 0.000000e+00, float* %com, align 4, !tbaa !14
  %1 = getelementptr inbounds float* %com, i64 1
  store float 0.000000e+00, float* %1, align 4, !tbaa !14
  %2 = getelementptr inbounds float* %com, i64 2
  store float 0.000000e+00, float* %2, align 4, !tbaa !14
  %3 = icmp sgt i32 %gnx, 0
  br i1 %3, label %.lr.ph, label %22

.lr.ph:                                           ; preds = %0
  %4 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 4
  %5 = load float** %4, align 8, !tbaa !18
  %6 = add i32 %gnx, -1
  br label %7

; <label>:7                                       ; preds = %20, %.lr.ph
  %indvars.iv7 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next8, %20 ]
  %tm.04 = phi float [ 0.000000e+00, %.lr.ph ], [ %21, %20 ]
  %8 = getelementptr inbounds i32* %index, i64 %indvars.iv7
  %9 = load i32* %8, align 4, !tbaa !20
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds float* %5, i64 %10
  %12 = load float* %11, align 4, !tbaa !14
  br label %13

; <label>:13                                      ; preds = %13, %7
  %indvars.iv5 = phi i64 [ 0, %7 ], [ %indvars.iv.next6, %13 ]
  %14 = getelementptr inbounds [3 x float]* %x, i64 %10, i64 %indvars.iv5
  %15 = load float* %14, align 4, !tbaa !14
  %16 = fmul float %12, %15
  %17 = getelementptr inbounds float* %com, i64 %indvars.iv5
  %18 = load float* %17, align 4, !tbaa !14
  %19 = fadd float %18, %16
  store float %19, float* %17, align 4, !tbaa !14
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1
  %exitcond = icmp eq i64 %indvars.iv.next6, 3
  br i1 %exitcond, label %20, label %13

; <label>:20                                      ; preds = %13
  %21 = fadd float %tm.04, %12
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  %lftr.wideiv = trunc i64 %indvars.iv7 to i32
  %exitcond9 = icmp eq i32 %lftr.wideiv, %6
  br i1 %exitcond9, label %._crit_edge, label %7

._crit_edge:                                      ; preds = %20
  %.pre = load float* %com, align 4, !tbaa !14
  %.pre10 = load float* %1, align 4, !tbaa !14
  %.pre11 = load float* %2, align 4, !tbaa !14
  br label %22

; <label>:22                                      ; preds = %._crit_edge, %0
  %23 = phi float [ %.pre11, %._crit_edge ], [ 0.000000e+00, %0 ]
  %24 = phi float [ %.pre10, %._crit_edge ], [ 0.000000e+00, %0 ]
  %25 = phi float [ %.pre, %._crit_edge ], [ 0.000000e+00, %0 ]
  %tm.0.lcssa = phi float [ %21, %._crit_edge ], [ 0.000000e+00, %0 ]
  %26 = fdiv float 1.000000e+00, %tm.0.lcssa
  %27 = fmul float %26, %25
  store float %27, float* %com, align 4, !tbaa !14
  %28 = fmul float %26, %24
  store float %28, float* %1, align 4, !tbaa !14
  %29 = fmul float %26, %23
  store float %29, float* %2, align 4, !tbaa !14
  br label %30

; <label>:30                                      ; preds = %._crit_edge12, %22
  %31 = phi float [ %29, %22 ], [ %66, %._crit_edge12 ]
  %32 = phi float [ %28, %22 ], [ %67, %._crit_edge12 ]
  %33 = phi float [ %27, %22 ], [ %68, %._crit_edge12 ]
  %34 = phi float [ %29, %22 ], [ %.pre13, %._crit_edge12 ]
  %indvars.iv = phi i64 [ 2, %22 ], [ %indvars.iv.next, %._crit_edge12 ]
  %35 = fcmp olt float %34, 0.000000e+00
  br i1 %35, label %36, label %47

; <label>:36                                      ; preds = %30
  %37 = getelementptr inbounds float* %com, i64 %indvars.iv
  %38 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 0
  %39 = load float* %38, align 4, !tbaa !14
  %40 = fadd float %33, %39
  %41 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 1
  %42 = load float* %41, align 4, !tbaa !14
  %43 = fadd float %32, %42
  %44 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 2
  %45 = load float* %44, align 4, !tbaa !14
  %46 = fadd float %31, %45
  store float %40, float* %com, align 4, !tbaa !14
  store float %43, float* %1, align 4, !tbaa !14
  store float %46, float* %2, align 4, !tbaa !14
  %.pre14 = load float* %37, align 4, !tbaa !14
  br label %47

; <label>:47                                      ; preds = %36, %30
  %48 = phi float [ %.pre14, %36 ], [ %34, %30 ]
  %49 = phi float [ %46, %36 ], [ %31, %30 ]
  %50 = phi float [ %43, %36 ], [ %32, %30 ]
  %51 = phi float [ %40, %36 ], [ %33, %30 ]
  %52 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 %indvars.iv
  %53 = load float* %52, align 4, !tbaa !14
  %54 = fcmp ogt float %48, %53
  br i1 %54, label %55, label %65

; <label>:55                                      ; preds = %47
  %56 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 0
  %57 = load float* %56, align 4, !tbaa !14
  %58 = fsub float %51, %57
  %59 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 1
  %60 = load float* %59, align 4, !tbaa !14
  %61 = fsub float %50, %60
  %62 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 2
  %63 = load float* %62, align 4, !tbaa !14
  %64 = fsub float %49, %63
  store float %58, float* %com, align 4, !tbaa !14
  store float %61, float* %1, align 4, !tbaa !14
  store float %64, float* %2, align 4, !tbaa !14
  br label %65

; <label>:65                                      ; preds = %47, %55
  %66 = phi float [ %49, %47 ], [ %64, %55 ]
  %67 = phi float [ %50, %47 ], [ %61, %55 ]
  %68 = phi float [ %51, %47 ], [ %58, %55 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %69 = icmp sgt i64 %indvars.iv, 0
  br i1 %69, label %._crit_edge12, label %70

._crit_edge12:                                    ; preds = %65
  %.phi.trans.insert = getelementptr inbounds float* %com, i64 %indvars.iv.next
  %.pre13 = load float* %.phi.trans.insert, align 4, !tbaa !14
  br label %30

; <label>:70                                      ; preds = %65
  ret float %tm.0.lcssa
}

; Function Attrs: nounwind optsize ssp uwtable
define float @calc_com2([3 x float]* nocapture readonly %x, i32 %gnx, i32* nocapture readonly %index, %struct.t_mdatoms* nocapture readonly %md, float* nocapture %com, [3 x float]* nocapture readonly %box) #4 {
  store float 0.000000e+00, float* %com, align 4, !tbaa !14
  %1 = getelementptr inbounds float* %com, i64 1
  store float 0.000000e+00, float* %1, align 4, !tbaa !14
  %2 = getelementptr inbounds float* %com, i64 2
  store float 0.000000e+00, float* %2, align 4, !tbaa !14
  %3 = icmp sgt i32 %gnx, 0
  br i1 %3, label %.lr.ph, label %22

.lr.ph:                                           ; preds = %0
  %4 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 4
  %5 = load float** %4, align 8, !tbaa !18
  %6 = add i32 %gnx, -1
  br label %7

; <label>:7                                       ; preds = %20, %.lr.ph
  %indvars.iv7 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next8, %20 ]
  %tm.04 = phi float [ 0.000000e+00, %.lr.ph ], [ %21, %20 ]
  %8 = getelementptr inbounds i32* %index, i64 %indvars.iv7
  %9 = load i32* %8, align 4, !tbaa !20
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds float* %5, i64 %10
  %12 = load float* %11, align 4, !tbaa !14
  br label %13

; <label>:13                                      ; preds = %13, %7
  %indvars.iv5 = phi i64 [ 0, %7 ], [ %indvars.iv.next6, %13 ]
  %14 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv7, i64 %indvars.iv5
  %15 = load float* %14, align 4, !tbaa !14
  %16 = fmul float %12, %15
  %17 = getelementptr inbounds float* %com, i64 %indvars.iv5
  %18 = load float* %17, align 4, !tbaa !14
  %19 = fadd float %18, %16
  store float %19, float* %17, align 4, !tbaa !14
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1
  %exitcond = icmp eq i64 %indvars.iv.next6, 3
  br i1 %exitcond, label %20, label %13

; <label>:20                                      ; preds = %13
  %21 = fadd float %tm.04, %12
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  %lftr.wideiv = trunc i64 %indvars.iv7 to i32
  %exitcond9 = icmp eq i32 %lftr.wideiv, %6
  br i1 %exitcond9, label %._crit_edge, label %7

._crit_edge:                                      ; preds = %20
  %.pre = load float* %com, align 4, !tbaa !14
  %.pre10 = load float* %1, align 4, !tbaa !14
  %.pre11 = load float* %2, align 4, !tbaa !14
  br label %22

; <label>:22                                      ; preds = %._crit_edge, %0
  %23 = phi float [ %.pre11, %._crit_edge ], [ 0.000000e+00, %0 ]
  %24 = phi float [ %.pre10, %._crit_edge ], [ 0.000000e+00, %0 ]
  %25 = phi float [ %.pre, %._crit_edge ], [ 0.000000e+00, %0 ]
  %tm.0.lcssa = phi float [ %21, %._crit_edge ], [ 0.000000e+00, %0 ]
  %26 = fdiv float 1.000000e+00, %tm.0.lcssa
  %27 = fmul float %26, %25
  store float %27, float* %com, align 4, !tbaa !14
  %28 = fmul float %26, %24
  store float %28, float* %1, align 4, !tbaa !14
  %29 = fmul float %26, %23
  store float %29, float* %2, align 4, !tbaa !14
  br label %30

; <label>:30                                      ; preds = %._crit_edge12, %22
  %31 = phi float [ %29, %22 ], [ %66, %._crit_edge12 ]
  %32 = phi float [ %28, %22 ], [ %67, %._crit_edge12 ]
  %33 = phi float [ %27, %22 ], [ %68, %._crit_edge12 ]
  %34 = phi float [ %29, %22 ], [ %.pre13, %._crit_edge12 ]
  %indvars.iv = phi i64 [ 2, %22 ], [ %indvars.iv.next, %._crit_edge12 ]
  %35 = fcmp olt float %34, 0.000000e+00
  br i1 %35, label %36, label %47

; <label>:36                                      ; preds = %30
  %37 = getelementptr inbounds float* %com, i64 %indvars.iv
  %38 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 0
  %39 = load float* %38, align 4, !tbaa !14
  %40 = fadd float %33, %39
  %41 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 1
  %42 = load float* %41, align 4, !tbaa !14
  %43 = fadd float %32, %42
  %44 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 2
  %45 = load float* %44, align 4, !tbaa !14
  %46 = fadd float %31, %45
  store float %40, float* %com, align 4, !tbaa !14
  store float %43, float* %1, align 4, !tbaa !14
  store float %46, float* %2, align 4, !tbaa !14
  %.pre14 = load float* %37, align 4, !tbaa !14
  br label %47

; <label>:47                                      ; preds = %36, %30
  %48 = phi float [ %.pre14, %36 ], [ %34, %30 ]
  %49 = phi float [ %46, %36 ], [ %31, %30 ]
  %50 = phi float [ %43, %36 ], [ %32, %30 ]
  %51 = phi float [ %40, %36 ], [ %33, %30 ]
  %52 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 %indvars.iv
  %53 = load float* %52, align 4, !tbaa !14
  %54 = fcmp ogt float %48, %53
  br i1 %54, label %55, label %65

; <label>:55                                      ; preds = %47
  %56 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 0
  %57 = load float* %56, align 4, !tbaa !14
  %58 = fsub float %51, %57
  %59 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 1
  %60 = load float* %59, align 4, !tbaa !14
  %61 = fsub float %50, %60
  %62 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 2
  %63 = load float* %62, align 4, !tbaa !14
  %64 = fsub float %49, %63
  store float %58, float* %com, align 4, !tbaa !14
  store float %61, float* %1, align 4, !tbaa !14
  store float %64, float* %2, align 4, !tbaa !14
  br label %65

; <label>:65                                      ; preds = %47, %55
  %66 = phi float [ %49, %47 ], [ %64, %55 ]
  %67 = phi float [ %50, %47 ], [ %61, %55 ]
  %68 = phi float [ %51, %47 ], [ %58, %55 ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %69 = icmp sgt i64 %indvars.iv, 0
  br i1 %69, label %._crit_edge12, label %70

._crit_edge12:                                    ; preds = %65
  %.phi.trans.insert = getelementptr inbounds float* %com, i64 %indvars.iv.next
  %.pre13 = load float* %.phi.trans.insert, align 4, !tbaa !14
  br label %30

; <label>:70                                      ; preds = %65
  ret float %tm.0.lcssa
}

; Function Attrs: nounwind optsize ssp uwtable
define void @calc_running_com(%struct.t_pull* nocapture readonly %pull) #4 {
  %1 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 17
  %2 = load i32* %1, align 4, !tbaa !21
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %.preheader, label %.preheader2

.preheader2:                                      ; preds = %0
  %4 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 0
  %5 = load i32* %4, align 4, !tbaa !24
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %.preheader1.lr.ph, label %.loopexit

.preheader1.lr.ph:                                ; preds = %.preheader2
  %7 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 24
  %8 = load i32* %7, align 4, !tbaa !25
  %9 = icmp sgt i32 %8, 1
  %10 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 9
  %11 = load [3 x float]** %10, align 8, !tbaa !26
  %12 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 17
  %13 = load [3 x float]*** %12, align 8, !tbaa !27
  %14 = sext i32 %5 to i64
  br label %.preheader1

.preheader:                                       ; preds = %0
  %15 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 24
  %16 = load i32* %15, align 4, !tbaa !25
  %17 = icmp sgt i32 %16, 1
  %18 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 17
  %19 = load [3 x float]*** %18, align 8, !tbaa !28
  %20 = load [3 x float]** %19, align 8, !tbaa !29
  br i1 %17, label %.lr.ph, label %.preheader._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %21 = add nsw i32 %16, -1
  %22 = sext i32 %21 to i64
  %23 = icmp sgt i32 %21, 1
  br label %95

.preheader1:                                      ; preds = %.preheader1.lr.ph, %.preheader1._crit_edge
  %indvars.iv35 = phi i64 [ 0, %.preheader1.lr.ph ], [ %indvars.iv.next36, %.preheader1._crit_edge ]
  %24 = getelementptr inbounds [3 x float]** %13, i64 %indvars.iv35
  %25 = load [3 x float]** %24, align 8, !tbaa !29
  br i1 %9, label %.lr.ph16, label %.preheader1._crit_edge

.lr.ph16:                                         ; preds = %.preheader1
  %26 = add nsw i32 %8, -1
  %27 = sext i32 %26 to i64
  %28 = icmp sgt i32 %26, 1
  %.op = add i32 %8, -2
  %29 = zext i32 %.op to i64
  br label %30

; <label>:30                                      ; preds = %.lr.ph16, %30
  %indvars.iv32 = phi i64 [ 0, %.lr.ph16 ], [ %indvars.iv.next33, %30 ]
  %31 = phi i32 [ 0, %.lr.ph16 ], [ %58, %30 ]
  %32 = phi i32 [ 0, %.lr.ph16 ], [ %59, %30 ]
  %33 = phi i32 [ 0, %.lr.ph16 ], [ %60, %30 ]
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  %34 = getelementptr inbounds [3 x float]* %25, i64 %indvars.iv.next33, i64 0
  %35 = getelementptr inbounds [3 x float]* %25, i64 %indvars.iv32, i64 0
  %36 = bitcast float* %34 to i32*
  %37 = load i32* %36, align 4, !tbaa !14
  %38 = bitcast float* %35 to i32*
  store i32 %37, i32* %38, align 4, !tbaa !14
  %39 = getelementptr inbounds [3 x float]* %25, i64 %indvars.iv.next33, i64 1
  %40 = bitcast float* %39 to i32*
  %41 = load i32* %40, align 4, !tbaa !14
  %42 = getelementptr inbounds [3 x float]* %25, i64 %indvars.iv32, i64 1
  %43 = bitcast float* %42 to i32*
  store i32 %41, i32* %43, align 4, !tbaa !14
  %44 = getelementptr inbounds [3 x float]* %25, i64 %indvars.iv.next33, i64 2
  %45 = bitcast float* %44 to i32*
  %46 = load i32* %45, align 4, !tbaa !14
  %47 = getelementptr inbounds [3 x float]* %25, i64 %indvars.iv32, i64 2
  %48 = bitcast float* %47 to i32*
  store i32 %46, i32* %48, align 4, !tbaa !14
  %49 = bitcast i32 %31 to float
  %50 = bitcast i32 %37 to float
  %51 = fadd float %49, %50
  %52 = bitcast i32 %32 to float
  %53 = bitcast i32 %41 to float
  %54 = fadd float %52, %53
  %55 = bitcast i32 %33 to float
  %56 = bitcast i32 %46 to float
  %57 = fadd float %55, %56
  %58 = bitcast float %51 to i32
  %59 = bitcast float %54 to i32
  %60 = bitcast float %57 to i32
  %61 = icmp slt i64 %indvars.iv.next33, %27
  br i1 %61, label %30, label %._crit_edge17

._crit_edge17:                                    ; preds = %30
  %.op41 = add nuw nsw i64 %29, 1
  %62 = select i1 %28, i64 %.op41, i64 1
  br label %.preheader1._crit_edge

.preheader1._crit_edge:                           ; preds = %.preheader1, %._crit_edge17
  %j.0.lcssa = phi i64 [ %62, %._crit_edge17 ], [ 0, %.preheader1 ]
  %.lcssa8 = phi i32 [ %58, %._crit_edge17 ], [ 0, %.preheader1 ]
  %.lcssa7 = phi i32 [ %59, %._crit_edge17 ], [ 0, %.preheader1 ]
  %.lcssa6 = phi i32 [ %60, %._crit_edge17 ], [ 0, %.preheader1 ]
  %63 = getelementptr inbounds [3 x float]* %11, i64 %indvars.iv35, i64 0
  %sext = shl i64 %j.0.lcssa, 32
  %64 = ashr exact i64 %sext, 32
  %65 = getelementptr inbounds [3 x float]* %25, i64 %64, i64 0
  %66 = bitcast float* %63 to i32*
  %67 = load i32* %66, align 4, !tbaa !14
  %68 = bitcast float* %65 to i32*
  store i32 %67, i32* %68, align 4, !tbaa !14
  %69 = getelementptr inbounds [3 x float]* %11, i64 %indvars.iv35, i64 1
  %70 = bitcast float* %69 to i32*
  %71 = load i32* %70, align 4, !tbaa !14
  %72 = getelementptr inbounds [3 x float]* %25, i64 %64, i64 1
  %73 = bitcast float* %72 to i32*
  store i32 %71, i32* %73, align 4, !tbaa !14
  %74 = getelementptr inbounds [3 x float]* %11, i64 %indvars.iv35, i64 2
  %75 = bitcast float* %74 to i32*
  %76 = load i32* %75, align 4, !tbaa !14
  %77 = getelementptr inbounds [3 x float]* %25, i64 %64, i64 2
  %78 = bitcast float* %77 to i32*
  store i32 %76, i32* %78, align 4, !tbaa !14
  %79 = bitcast i32 %.lcssa8 to float
  %80 = load float* %63, align 4, !tbaa !14
  %81 = fadd float %79, %80
  %82 = bitcast i32 %.lcssa7 to float
  %83 = load float* %69, align 4, !tbaa !14
  %84 = fadd float %82, %83
  %85 = bitcast i32 %.lcssa6 to float
  %86 = load float* %74, align 4, !tbaa !14
  %87 = fadd float %85, %86
  %88 = sitofp i32 %8 to double
  %89 = fdiv double 1.000000e+00, %88
  %90 = fptrunc double %89 to float
  %91 = fmul float %81, %90
  %92 = fmul float %84, %90
  %93 = fmul float %87, %90
  store float %91, float* %63, align 4, !tbaa !14
  store float %92, float* %69, align 4, !tbaa !14
  store float %93, float* %74, align 4, !tbaa !14
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  %94 = icmp slt i64 %indvars.iv.next36, %14
  br i1 %94, label %.preheader1, label %.loopexit

; <label>:95                                      ; preds = %.lr.ph, %95
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %95 ]
  %96 = phi float [ 0.000000e+00, %.lr.ph ], [ %115, %95 ]
  %97 = phi float [ 0.000000e+00, %.lr.ph ], [ %117, %95 ]
  %98 = phi float [ 0.000000e+00, %.lr.ph ], [ %119, %95 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %99 = getelementptr inbounds [3 x float]* %20, i64 %indvars.iv.next, i64 0
  %100 = getelementptr inbounds [3 x float]* %20, i64 %indvars.iv, i64 0
  %101 = bitcast float* %99 to i32*
  %102 = load i32* %101, align 4, !tbaa !14
  %103 = bitcast float* %100 to i32*
  store i32 %102, i32* %103, align 4, !tbaa !14
  %104 = getelementptr inbounds [3 x float]* %20, i64 %indvars.iv.next, i64 1
  %105 = bitcast float* %104 to i32*
  %106 = load i32* %105, align 4, !tbaa !14
  %107 = getelementptr inbounds [3 x float]* %20, i64 %indvars.iv, i64 1
  %108 = bitcast float* %107 to i32*
  store i32 %106, i32* %108, align 4, !tbaa !14
  %109 = getelementptr inbounds [3 x float]* %20, i64 %indvars.iv.next, i64 2
  %110 = bitcast float* %109 to i32*
  %111 = load i32* %110, align 4, !tbaa !14
  %112 = getelementptr inbounds [3 x float]* %20, i64 %indvars.iv, i64 2
  %113 = bitcast float* %112 to i32*
  store i32 %111, i32* %113, align 4, !tbaa !14
  %114 = bitcast i32 %102 to float
  %115 = fadd float %96, %114
  %116 = bitcast i32 %106 to float
  %117 = fadd float %97, %116
  %118 = bitcast i32 %111 to float
  %119 = fadd float %98, %118
  %120 = icmp slt i64 %indvars.iv.next, %22
  br i1 %120, label %95, label %._crit_edge

._crit_edge:                                      ; preds = %95
  %.op43 = add i32 %16, -1
  %121 = sext i32 %.op43 to i64
  %phitmp = select i1 %23, i64 %121, i64 1
  br label %.preheader._crit_edge

.preheader._crit_edge:                            ; preds = %.preheader, %._crit_edge
  %j.1.lcssa = phi i64 [ %phitmp, %._crit_edge ], [ 0, %.preheader ]
  %.lcssa4 = phi float [ %115, %._crit_edge ], [ 0.000000e+00, %.preheader ]
  %.lcssa3 = phi float [ %117, %._crit_edge ], [ 0.000000e+00, %.preheader ]
  %.lcssa = phi float [ %119, %._crit_edge ], [ 0.000000e+00, %.preheader ]
  %122 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 9
  %123 = load [3 x float]** %122, align 8, !tbaa !30
  %124 = getelementptr inbounds [3 x float]* %20, i64 %j.1.lcssa, i64 0
  %125 = bitcast [3 x float]* %123 to i32*
  %126 = load i32* %125, align 4, !tbaa !14
  %127 = bitcast float* %124 to i32*
  store i32 %126, i32* %127, align 4, !tbaa !14
  %128 = getelementptr inbounds [3 x float]* %123, i64 0, i64 1
  %129 = bitcast float* %128 to i32*
  %130 = load i32* %129, align 4, !tbaa !14
  %131 = getelementptr inbounds [3 x float]* %20, i64 %j.1.lcssa, i64 1
  %132 = bitcast float* %131 to i32*
  store i32 %130, i32* %132, align 4, !tbaa !14
  %133 = getelementptr inbounds [3 x float]* %123, i64 0, i64 2
  %134 = bitcast float* %133 to i32*
  %135 = load i32* %134, align 4, !tbaa !14
  %136 = getelementptr inbounds [3 x float]* %20, i64 %j.1.lcssa, i64 2
  %137 = bitcast float* %136 to i32*
  store i32 %135, i32* %137, align 4, !tbaa !14
  %138 = getelementptr inbounds [3 x float]* %123, i64 0, i64 0
  %139 = load float* %138, align 4, !tbaa !14
  %140 = fadd float %.lcssa4, %139
  %141 = load float* %128, align 4, !tbaa !14
  %142 = fadd float %.lcssa3, %141
  %143 = load float* %133, align 4, !tbaa !14
  %144 = fadd float %.lcssa, %143
  %145 = sitofp i32 %16 to double
  %146 = fdiv double 1.000000e+00, %145
  %147 = fptrunc double %146 to float
  %148 = fmul float %140, %147
  %149 = fmul float %142, %147
  %150 = fmul float %144, %147
  store float %148, float* %138, align 4, !tbaa !14
  store float %149, float* %128, align 4, !tbaa !14
  store float %150, float* %133, align 4, !tbaa !14
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader1._crit_edge, %.preheader2, %.preheader._crit_edge
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @correct_t0_pbc(%struct.t_pull* nocapture readonly %pull, [3 x float]* nocapture readonly %x, %struct.t_mdatoms* nocapture readonly %md, [3 x float]* nocapture readonly %box) #4 {
  %com = alloca [3 x float], align 4
  %dx = alloca [3 x float], align 4
  %1 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 3
  %2 = load i32** %1, align 8, !tbaa !31
  %3 = load i32* %2, align 4, !tbaa !20
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %.lr.ph, label %._crit_edge11

._crit_edge11:                                    ; preds = %0
  %.phi.trans.insert12 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 6
  %.pre13 = load [3 x float]*** %.phi.trans.insert12, align 8, !tbaa !32
  %.pre14 = load [3 x float]** %.pre13, align 8, !tbaa !29
  %.pre15 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 1
  %.pre17 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 25
  br label %._crit_edge

.lr.ph:                                           ; preds = %0
  %5 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 1
  %6 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 7
  %7 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 0
  %8 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 1
  %9 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 2
  %10 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 25
  %11 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 6
  %.pre = load [3 x float]*** %6, align 8, !tbaa !33
  %.pre7 = load [3 x float]** %.pre, align 8, !tbaa !29
  br label %12

; <label>:12                                      ; preds = %.lr.ph, %127
  %13 = phi [3 x float]* [ %.pre7, %.lr.ph ], [ %123, %127 ]
  %indvars.iv5 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next6, %127 ]
  %14 = load i32*** %5, align 8, !tbaa !34
  %15 = load i32** %14, align 8, !tbaa !29
  %16 = getelementptr inbounds i32* %15, i64 %indvars.iv5
  %17 = load i32* %16, align 4, !tbaa !20
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [3 x float]* %x, i64 %18, i64 0
  %20 = getelementptr inbounds [3 x float]* %13, i64 %indvars.iv5, i64 0
  %21 = load float* %19, align 4, !tbaa !14
  %22 = load float* %20, align 4, !tbaa !14
  %23 = fsub float %21, %22
  %24 = getelementptr inbounds [3 x float]* %x, i64 %18, i64 1
  %25 = load float* %24, align 4, !tbaa !14
  %26 = getelementptr inbounds [3 x float]* %13, i64 %indvars.iv5, i64 1
  %27 = load float* %26, align 4, !tbaa !14
  %28 = fsub float %25, %27
  %29 = getelementptr inbounds [3 x float]* %x, i64 %18, i64 2
  %30 = load float* %29, align 4, !tbaa !14
  %31 = getelementptr inbounds [3 x float]* %13, i64 %indvars.iv5, i64 2
  %32 = load float* %31, align 4, !tbaa !14
  %33 = fsub float %30, %32
  store float %23, float* %7, align 4, !tbaa !14
  store float %28, float* %8, align 4, !tbaa !14
  store float %33, float* %9, align 4, !tbaa !14
  br label %34

; <label>:34                                      ; preds = %._crit_edge8, %12
  %35 = phi float [ %33, %12 ], [ %110, %._crit_edge8 ]
  %36 = phi float [ %28, %12 ], [ %111, %._crit_edge8 ]
  %37 = phi float [ %23, %12 ], [ %112, %._crit_edge8 ]
  %38 = phi float [ %33, %12 ], [ %.pre9, %._crit_edge8 ]
  %indvars.iv = phi i64 [ 2, %12 ], [ %indvars.iv.next, %._crit_edge8 ]
  %39 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 %indvars.iv
  %40 = fpext float %38 to double
  %41 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv
  %42 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 %indvars.iv
  %43 = load float* %42, align 4, !tbaa !14
  %44 = fpext float %43 to double
  %45 = fmul double %44, -5.000000e-01
  %46 = fcmp olt double %40, %45
  br i1 %46, label %47, label %73

; <label>:47                                      ; preds = %34
  %48 = getelementptr inbounds [3 x float]* %41, i64 0, i64 0
  %49 = load float* %48, align 4, !tbaa !14
  %50 = fadd float %37, %49
  %51 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 1
  %52 = load float* %51, align 4, !tbaa !14
  %53 = fadd float %36, %52
  %54 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 2
  %55 = load float* %54, align 4, !tbaa !14
  %56 = fadd float %35, %55
  store float %50, float* %7, align 4, !tbaa !14
  store float %53, float* %8, align 4, !tbaa !14
  store float %56, float* %9, align 4, !tbaa !14
  %57 = load i32* %10, align 4, !tbaa !35
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %73, label %59

; <label>:59                                      ; preds = %47
  %60 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 5, i64 %indvars.iv
  %61 = load float* %60, align 4, !tbaa !14
  %fabsf1 = tail call float @fabsf(float %61) #9
  %62 = fpext float %fabsf1 to double
  %63 = fcmp ogt double %62, 1.200000e-38
  br i1 %63, label %64, label %73

; <label>:64                                      ; preds = %59
  %65 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !29
  %66 = load [3 x float]*** %11, align 8, !tbaa !32
  %67 = load [3 x float]** %66, align 8, !tbaa !29
  %68 = getelementptr inbounds [3 x float]* %67, i64 %indvars.iv5, i64 %indvars.iv
  %69 = load float* %68, align 4, !tbaa !14
  %70 = fpext float %69 to double
  %71 = trunc i64 %indvars.iv to i32
  %72 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %65, i8* getelementptr inbounds ([38 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %71, double %70) #7
  %.pre10 = load float* %42, align 4, !tbaa !14
  br label %73

; <label>:73                                      ; preds = %47, %59, %64, %34
  %74 = phi float [ %43, %47 ], [ %43, %59 ], [ %.pre10, %64 ], [ %43, %34 ]
  %75 = phi float [ %56, %47 ], [ %56, %59 ], [ %56, %64 ], [ %35, %34 ]
  %76 = phi float [ %53, %47 ], [ %53, %59 ], [ %53, %64 ], [ %36, %34 ]
  %77 = phi float [ %50, %47 ], [ %50, %59 ], [ %50, %64 ], [ %37, %34 ]
  %78 = load float* %39, align 4, !tbaa !14
  %79 = fpext float %78 to double
  %80 = fpext float %74 to double
  %81 = fmul double %80, 5.000000e-01
  %82 = fcmp ogt double %79, %81
  br i1 %82, label %83, label %109

; <label>:83                                      ; preds = %73
  %84 = getelementptr inbounds [3 x float]* %41, i64 0, i64 0
  %85 = load float* %84, align 4, !tbaa !14
  %86 = fsub float %77, %85
  %87 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 1
  %88 = load float* %87, align 4, !tbaa !14
  %89 = fsub float %76, %88
  %90 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 2
  %91 = load float* %90, align 4, !tbaa !14
  %92 = fsub float %75, %91
  store float %86, float* %7, align 4, !tbaa !14
  store float %89, float* %8, align 4, !tbaa !14
  store float %92, float* %9, align 4, !tbaa !14
  %93 = load i32* %10, align 4, !tbaa !35
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %109, label %95

; <label>:95                                      ; preds = %83
  %96 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 5, i64 %indvars.iv
  %97 = load float* %96, align 4, !tbaa !14
  %fabsf = tail call float @fabsf(float %97) #9
  %98 = fpext float %fabsf to double
  %99 = fcmp ogt double %98, 1.200000e-38
  br i1 %99, label %100, label %109

; <label>:100                                     ; preds = %95
  %101 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !29
  %102 = load [3 x float]*** %11, align 8, !tbaa !32
  %103 = load [3 x float]** %102, align 8, !tbaa !29
  %104 = getelementptr inbounds [3 x float]* %103, i64 %indvars.iv5, i64 %indvars.iv
  %105 = load float* %104, align 4, !tbaa !14
  %106 = fpext float %105 to double
  %107 = trunc i64 %indvars.iv to i32
  %108 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %101, i8* getelementptr inbounds ([38 x i8]* @.str1, i64 0, i64 0), i32 %17, i32 %107, double %106) #7
  br label %109

; <label>:109                                     ; preds = %83, %95, %100, %73
  %110 = phi float [ %92, %83 ], [ %92, %95 ], [ %92, %100 ], [ %75, %73 ]
  %111 = phi float [ %89, %83 ], [ %89, %95 ], [ %89, %100 ], [ %76, %73 ]
  %112 = phi float [ %86, %83 ], [ %86, %95 ], [ %86, %100 ], [ %77, %73 ]
  %113 = load float* %39, align 4, !tbaa !14
  %114 = load [3 x float]*** %11, align 8, !tbaa !32
  %115 = load [3 x float]** %114, align 8, !tbaa !29
  %116 = getelementptr inbounds [3 x float]* %115, i64 %indvars.iv5, i64 %indvars.iv
  %117 = load float* %116, align 4, !tbaa !14
  %118 = fadd float %113, %117
  store float %118, float* %116, align 4, !tbaa !14
  %119 = getelementptr inbounds [3 x float]* %x, i64 %18, i64 %indvars.iv
  %120 = bitcast float* %119 to i32*
  %121 = load i32* %120, align 4, !tbaa !14
  %122 = load [3 x float]*** %6, align 8, !tbaa !33
  %123 = load [3 x float]** %122, align 8, !tbaa !29
  %124 = getelementptr inbounds [3 x float]* %123, i64 %indvars.iv5, i64 %indvars.iv
  %125 = bitcast float* %124 to i32*
  store i32 %121, i32* %125, align 4, !tbaa !14
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %126 = icmp sgt i64 %indvars.iv, 0
  br i1 %126, label %._crit_edge8, label %127

._crit_edge8:                                     ; preds = %109
  %.phi.trans.insert = getelementptr inbounds [3 x float]* %dx, i64 0, i64 %indvars.iv.next
  %.pre9 = load float* %.phi.trans.insert, align 4, !tbaa !14
  br label %34

; <label>:127                                     ; preds = %109
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1
  %128 = load i32** %1, align 8, !tbaa !31
  %129 = load i32* %128, align 4, !tbaa !20
  %130 = sext i32 %129 to i64
  %131 = icmp slt i64 %indvars.iv.next6, %130
  br i1 %131, label %12, label %._crit_edge

._crit_edge:                                      ; preds = %127, %._crit_edge11
  %.pre-phi18 = phi i32* [ %.pre17, %._crit_edge11 ], [ %10, %127 ]
  %.pre-phi16 = phi i32*** [ %.pre15, %._crit_edge11 ], [ %5, %127 ]
  %132 = phi [3 x float]* [ %.pre14, %._crit_edge11 ], [ %115, %127 ]
  %.lcssa = phi i32 [ %3, %._crit_edge11 ], [ %129, %127 ]
  %133 = load i32*** %.pre-phi16, align 8, !tbaa !34
  %134 = load i32** %133, align 8, !tbaa !29
  %135 = getelementptr inbounds [3 x float]* %com, i64 0, i64 0
  %136 = call float @calc_com2([3 x float]* %132, i32 %.lcssa, i32* %134, %struct.t_mdatoms* %md, float* %135, [3 x float]* %box) #10
  %137 = load i32* %.pre-phi18, align 4, !tbaa !35
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %154, label %139

; <label>:139                                     ; preds = %._crit_edge
  %140 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !29
  %141 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 4
  %142 = load i8*** %141, align 8, !tbaa !36
  %143 = load i8** %142, align 8, !tbaa !29
  %144 = fpext float %136 to double
  %145 = load float* %135, align 4, !tbaa !14
  %146 = fpext float %145 to double
  %147 = getelementptr inbounds [3 x float]* %com, i64 0, i64 1
  %148 = load float* %147, align 4, !tbaa !14
  %149 = fpext float %148 to double
  %150 = getelementptr inbounds [3 x float]* %com, i64 0, i64 2
  %151 = load float* %150, align 4, !tbaa !14
  %152 = fpext float %151 to double
  %153 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %140, i8* getelementptr inbounds ([54 x i8]* @.str2, i64 0, i64 0), i8* %143, double %144, double %146, double %149, double %152) #7
  br label %154

; <label>:154                                     ; preds = %._crit_edge, %139
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #5

; Function Attrs: nounwind optsize ssp uwtable
define void @string2rvec(i8* %buf, float* nocapture %nums) #4 {
  %a = alloca float, align 4
  %b = alloca float, align 4
  %c = alloca float, align 4
  %1 = call i32 (i8*, i8*, ...)* @sscanf(i8* %buf, i8* getelementptr inbounds ([7 x i8]* @.str3, i64 0, i64 0), float* %a, float* %b, float* %c) #7
  %2 = icmp eq i32 %1, 3
  br i1 %2, label %4, label %3

; <label>:3                                       ; preds = %0
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([40 x i8]* @.str4, i64 0, i64 0), i8* %buf) #7
  br label %4

; <label>:4                                       ; preds = %0, %3
  %5 = bitcast float* %a to i32*
  %6 = load i32* %5, align 4, !tbaa !14
  %7 = bitcast float* %nums to i32*
  store i32 %6, i32* %7, align 4, !tbaa !14
  %8 = bitcast float* %b to i32*
  %9 = load i32* %8, align 4, !tbaa !14
  %10 = getelementptr inbounds float* %nums, i64 1
  %11 = bitcast float* %10 to i32*
  store i32 %9, i32* %11, align 4, !tbaa !14
  %12 = bitcast float* %c to i32*
  %13 = load i32* %12, align 4, !tbaa !14
  %14 = getelementptr inbounds float* %nums, i64 2
  %15 = bitcast float* %14 to i32*
  store i32 %13, i32* %15, align 4, !tbaa !14
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @sscanf(i8* nocapture readonly, i8* nocapture readonly, ...) #5

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind optsize readnone ssp uwtable
define float @get_weight(float %x, float %r, float %w) #6 {
  %1 = fcmp olt float %x, %r
  br i1 %1, label %10, label %2

; <label>:2                                       ; preds = %0
  %3 = fcmp ogt float %x, %w
  br i1 %3, label %10, label %4

; <label>:4                                       ; preds = %2
  %5 = fsub float -0.000000e+00, %w
  %6 = fsub float %r, %w
  %7 = fdiv float %5, %6
  %8 = fdiv float %x, %6
  %9 = fadd float %7, %8
  br label %10

; <label>:10                                      ; preds = %2, %0, %4
  %weight.0 = phi float [ %9, %4 ], [ 1.000000e+00, %0 ], [ 0.000000e+00, %2 ]
  ret float %weight.0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @make_refgrps(%struct.t_pull* nocapture %pull, [3 x float]* nocapture readonly %box, %struct.t_mdatoms* nocapture readonly %md) #4 {
  %1 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 0
  %2 = load i32* %1, align 4, !tbaa !24
  %.b = load i1* @make_refgrps.bFirst, align 1
  br i1 %.b, label %.preheader, label %3

; <label>:3                                       ; preds = %0
  %4 = tail call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str6, i64 0, i64 0), i32 267, i32 %2, i32 4) #7
  %5 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 3
  %6 = bitcast i32** %5 to i8**
  store i8* %4, i8** %6, align 8, !tbaa !37
  %7 = tail call i8* @save_calloc(i8* getelementptr inbounds ([15 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str6, i64 0, i64 0), i32 268, i32 %2, i32 8) #7
  %8 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 1
  %9 = bitcast i32*** %8 to i8**
  store i8* %7, i8** %9, align 8, !tbaa !38
  %10 = tail call i8* @save_calloc(i8* getelementptr inbounds ([19 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str6, i64 0, i64 0), i32 269, i32 %2, i32 8) #7
  %11 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 2
  %12 = bitcast float*** %11 to i8**
  store i8* %10, i8** %12, align 8, !tbaa !39
  %13 = icmp sgt i32 %2, 0
  br i1 %13, label %.lr.ph12, label %._crit_edge13

.lr.ph12:                                         ; preds = %3
  %14 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 3
  %15 = add i32 %2, -1
  br label %16

; <label>:16                                      ; preds = %16, %.lr.ph12
  %indvars.iv21 = phi i64 [ 0, %.lr.ph12 ], [ %indvars.iv.next22, %16 ]
  %17 = load i32** %14, align 8, !tbaa !31
  %18 = load i32* %17, align 4, !tbaa !20
  %19 = tail call i8* @save_calloc(i8* getelementptr inbounds ([18 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str6, i64 0, i64 0), i32 271, i32 %18, i32 4) #7
  %20 = load i32*** %8, align 8, !tbaa !38
  %21 = getelementptr inbounds i32** %20, i64 %indvars.iv21
  %22 = bitcast i32** %21 to i8**
  store i8* %19, i8** %22, align 8, !tbaa !29
  %23 = load i32** %14, align 8, !tbaa !31
  %24 = load i32* %23, align 4, !tbaa !20
  %25 = tail call i8* @save_calloc(i8* getelementptr inbounds ([22 x i8]* @.str10, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str6, i64 0, i64 0), i32 272, i32 %24, i32 4) #7
  %26 = load float*** %11, align 8, !tbaa !39
  %27 = getelementptr inbounds float** %26, i64 %indvars.iv21
  %28 = bitcast float** %27 to i8**
  store i8* %25, i8** %28, align 8, !tbaa !29
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  %lftr.wideiv23 = trunc i64 %indvars.iv21 to i32
  %exitcond24 = icmp eq i32 %lftr.wideiv23, %15
  br i1 %exitcond24, label %._crit_edge13, label %16

._crit_edge13:                                    ; preds = %16, %3
  store i1 true, i1* @make_refgrps.bFirst, align 1
  br label %.preheader

.preheader:                                       ; preds = %0, %._crit_edge13
  %29 = icmp sgt i32 %2, 0
  br i1 %29, label %.lr.ph8, label %._crit_edge9

.lr.ph8:                                          ; preds = %.preheader
  %30 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 5
  %31 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 3
  %32 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 3
  %33 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 9
  %34 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 25
  %35 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 1
  %36 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 2, i32 6
  %37 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 1, i32 9
  %38 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %39 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %40 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 8
  %41 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 4
  %42 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 7
  %43 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 2
  %44 = getelementptr inbounds %struct.t_pull* %pull, i64 0, i32 0, i32 1
  %45 = add i32 %2, -1
  br label %46

; <label>:46                                      ; preds = %167, %.lr.ph8
  %indvars.iv18 = phi i64 [ 0, %.lr.ph8 ], [ %indvars.iv.next19, %167 ]
  %47 = load float** %30, align 8, !tbaa !40
  %48 = getelementptr inbounds float* %47, i64 %indvars.iv18
  store float 0.000000e+00, float* %48, align 4, !tbaa !14
  %49 = load i32** %31, align 8, !tbaa !37
  %50 = getelementptr inbounds i32* %49, i64 %indvars.iv18
  store i32 0, i32* %50, align 4, !tbaa !20
  %51 = load i32** %32, align 8, !tbaa !31
  %52 = load i32* %51, align 4, !tbaa !20
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %46
  %54 = load i32*** %35, align 8, !tbaa !34
  %55 = load i32** %54, align 8, !tbaa !29
  %56 = load [3 x float]*** %36, align 8, !tbaa !32
  %57 = load [3 x float]** %56, align 8, !tbaa !29
  %58 = load [3 x float]** %37, align 8, !tbaa !41
  %59 = getelementptr inbounds [3 x float]* %58, i64 %indvars.iv18, i64 0
  %60 = getelementptr inbounds [3 x float]* %58, i64 %indvars.iv18, i64 1
  br label %61

; <label>:61                                      ; preds = %.lr.ph, %138
  %62 = phi float [ 0.000000e+00, %.lr.ph ], [ %139, %138 ]
  %63 = phi i32 [ %52, %.lr.ph ], [ %140, %138 ]
  %indvars.iv16 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next17, %138 ]
  %truemass.06 = phi float [ 0.000000e+00, %.lr.ph ], [ %truemass.1, %138 ]
  %k.04 = phi i32 [ 0, %.lr.ph ], [ %k.1, %138 ]
  %64 = getelementptr inbounds i32* %55, i64 %indvars.iv16
  %65 = load i32* %64, align 4, !tbaa !20
  %66 = getelementptr inbounds [3 x float]* %57, i64 %indvars.iv16, i64 0
  %67 = load float* %38, align 4, !tbaa !14
  %68 = load float* %39, align 4, !tbaa !14
  %69 = load float* %66, align 4, !tbaa !14
  %70 = load float* %59, align 4, !tbaa !14
  %71 = fsub float %69, %70
  %fabsf.i = tail call float @fabsf(float %71) #9
  %72 = fpext float %fabsf.i to double
  %73 = fpext float %67 to double
  %74 = fmul double %73, 5.000000e-01
  %75 = fcmp ogt double %72, %74
  br i1 %75, label %.lr.ph5.i, label %._crit_edge6.i

.lr.ph5.i:                                        ; preds = %61, %.lr.ph5.i
  %dx.03.i = phi float [ %76, %.lr.ph5.i ], [ %fabsf.i, %61 ]
  %76 = fsub float %dx.03.i, %67
  %77 = fpext float %76 to double
  %78 = fcmp ogt double %77, %74
  br i1 %78, label %.lr.ph5.i, label %._crit_edge6.i

._crit_edge6.i:                                   ; preds = %.lr.ph5.i, %61
  %dx.0.lcssa.i = phi float [ %fabsf.i, %61 ], [ %76, %.lr.ph5.i ]
  %79 = getelementptr inbounds [3 x float]* %57, i64 %indvars.iv16, i64 1
  %80 = load float* %79, align 4, !tbaa !14
  %81 = load float* %60, align 4, !tbaa !14
  %82 = fsub float %80, %81
  %fabsf1.i = tail call float @fabsf(float %82) #9
  %83 = fpext float %fabsf1.i to double
  %84 = fpext float %68 to double
  %85 = fmul double %84, 5.000000e-01
  %86 = fcmp ogt double %83, %85
  br i1 %86, label %.lr.ph.i, label %get_cylinder_distance.exit

.lr.ph.i:                                         ; preds = %._crit_edge6.i, %.lr.ph.i
  %dy.02.i = phi float [ %87, %.lr.ph.i ], [ %fabsf1.i, %._crit_edge6.i ]
  %87 = fsub float %dy.02.i, %68
  %88 = fpext float %87 to double
  %89 = fcmp ogt double %88, %85
  br i1 %89, label %.lr.ph.i, label %get_cylinder_distance.exit

get_cylinder_distance.exit:                       ; preds = %.lr.ph.i, %._crit_edge6.i
  %dy.0.lcssa.i = phi float [ %fabsf1.i, %._crit_edge6.i ], [ %87, %.lr.ph.i ]
  %90 = fmul float %dx.0.lcssa.i, %dx.0.lcssa.i
  %91 = fmul float %dy.0.lcssa.i, %dy.0.lcssa.i
  %92 = fadd float %90, %91
  %sqrtf.i = tail call float @sqrtf(float %92) #9
  %93 = load float* %40, align 4, !tbaa !42
  %94 = fcmp olt float %sqrtf.i, %93
  br i1 %94, label %95, label %138

; <label>:95                                      ; preds = %get_cylinder_distance.exit
  %96 = sext i32 %65 to i64
  %97 = load float** %41, align 8, !tbaa !18
  %98 = getelementptr inbounds float* %97, i64 %96
  %99 = load float* %98, align 4, !tbaa !14
  %100 = fadd float %truemass.06, %99
  %101 = load i32* %50, align 4, !tbaa !20
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %50, align 4, !tbaa !20
  %103 = load float* %42, align 4, !tbaa !43
  %104 = fcmp olt float %sqrtf.i, %103
  br i1 %104, label %get_weight.exit, label %105

; <label>:105                                     ; preds = %95
  %106 = fcmp ogt float %sqrtf.i, %93
  br i1 %106, label %get_weight.exit, label %107

; <label>:107                                     ; preds = %105
  %108 = fsub float -0.000000e+00, %93
  %109 = fsub float %103, %93
  %110 = fdiv float %108, %109
  %111 = fdiv float %sqrtf.i, %109
  %112 = fadd float %110, %111
  br label %get_weight.exit

get_weight.exit:                                  ; preds = %95, %105, %107
  %weight.0.i = phi float [ %112, %107 ], [ 1.000000e+00, %95 ], [ 0.000000e+00, %105 ]
  %113 = sext i32 %k.04 to i64
  %114 = load float*** %43, align 8, !tbaa !39
  %115 = getelementptr inbounds float** %114, i64 %indvars.iv18
  %116 = load float** %115, align 8, !tbaa !29
  %117 = getelementptr inbounds float* %116, i64 %113
  store float %weight.0.i, float* %117, align 4, !tbaa !14
  %118 = load i32*** %44, align 8, !tbaa !38
  %119 = getelementptr inbounds i32** %118, i64 %indvars.iv18
  %120 = load i32** %119, align 8, !tbaa !29
  %121 = getelementptr inbounds i32* %120, i64 %113
  store i32 %65, i32* %121, align 4, !tbaa !20
  %122 = fmul float %99, %weight.0.i
  %123 = load [3 x float]** %33, align 8, !tbaa !26
  br label %124

; <label>:124                                     ; preds = %124, %get_weight.exit
  %indvars.iv = phi i64 [ 0, %get_weight.exit ], [ %indvars.iv.next, %124 ]
  %125 = phi float [ %122, %get_weight.exit ], [ %133, %124 ]
  %126 = getelementptr inbounds [3 x float]* %57, i64 %indvars.iv16, i64 %indvars.iv
  %127 = load float* %126, align 4, !tbaa !14
  %128 = fmul float %125, %127
  %129 = getelementptr inbounds [3 x float]* %123, i64 %indvars.iv18, i64 %indvars.iv
  %130 = load float* %129, align 4, !tbaa !14
  %131 = fadd float %128, %130
  store float %131, float* %129, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %132 = load float* %117, align 4, !tbaa !14
  %133 = fmul float %99, %132
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %134, label %124

; <label>:134                                     ; preds = %124
  %135 = load float* %48, align 4, !tbaa !14
  %136 = fadd float %133, %135
  store float %136, float* %48, align 4, !tbaa !14
  %137 = add nsw i32 %k.04, 1
  %.pre = load i32* %51, align 4, !tbaa !20
  br label %138

; <label>:138                                     ; preds = %get_cylinder_distance.exit, %134
  %139 = phi float [ %136, %134 ], [ %62, %get_cylinder_distance.exit ]
  %140 = phi i32 [ %.pre, %134 ], [ %63, %get_cylinder_distance.exit ]
  %k.1 = phi i32 [ %137, %134 ], [ %k.04, %get_cylinder_distance.exit ]
  %truemass.1 = phi float [ %100, %134 ], [ %truemass.06, %get_cylinder_distance.exit ]
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  %141 = sext i32 %140 to i64
  %142 = icmp slt i64 %indvars.iv.next17, %141
  br i1 %142, label %61, label %._crit_edge

._crit_edge:                                      ; preds = %138, %46
  %143 = phi float [ 0.000000e+00, %46 ], [ %139, %138 ]
  %truemass.0.lcssa = phi float [ 0.000000e+00, %46 ], [ %truemass.1, %138 ]
  %144 = fdiv float 1.000000e+00, %143
  %145 = load [3 x float]** %33, align 8, !tbaa !26
  %146 = getelementptr inbounds [3 x float]* %145, i64 %indvars.iv18, i64 0
  %147 = load float* %146, align 4, !tbaa !14
  %148 = fmul float %144, %147
  store float %148, float* %146, align 4, !tbaa !14
  %149 = getelementptr inbounds [3 x float]* %145, i64 %indvars.iv18, i64 1
  %150 = load float* %149, align 4, !tbaa !14
  %151 = fmul float %144, %150
  store float %151, float* %149, align 4, !tbaa !14
  %152 = getelementptr inbounds [3 x float]* %145, i64 %indvars.iv18, i64 2
  %153 = load float* %152, align 4, !tbaa !14
  %154 = fmul float %144, %153
  store float %154, float* %152, align 4, !tbaa !14
  %155 = load i32* %34, align 4, !tbaa !35
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %._crit_edge25, label %157

._crit_edge25:                                    ; preds = %._crit_edge
  %.pre26 = trunc i64 %indvars.iv18 to i32
  br label %167

; <label>:157                                     ; preds = %._crit_edge
  %158 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !29
  %159 = fpext float %148 to double
  %160 = fpext float %151 to double
  %161 = fpext float %154 to double
  %162 = load float* %48, align 4, !tbaa !14
  %163 = fpext float %162 to double
  %164 = fpext float %truemass.0.lcssa to double
  %165 = trunc i64 %indvars.iv18 to i32
  %166 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %158, i8* getelementptr inbounds ([48 x i8]* @.str11, i64 0, i64 0), i32 %165, double %159, double %160, double %161, double %163, double %164) #7
  br label %167

; <label>:167                                     ; preds = %._crit_edge25, %157
  %lftr.wideiv.pre-phi = phi i32 [ %.pre26, %._crit_edge25 ], [ %165, %157 ]
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  %exitcond20 = icmp eq i32 %lftr.wideiv.pre-phi, %45
  br i1 %exitcond20, label %._crit_edge9, label %46

._crit_edge9:                                     ; preds = %167, %.preheader
  ret void
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

declare float @fabsf(float)

declare float @sqrtf(float)

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize }
attributes #8 = { readnone }
attributes #9 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { optsize }

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
!18 = !{!19, !4, i64 24}
!19 = !{!"", !15, i64 0, !7, i64 4, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !4, i64 88, !4, i64 96, !4, i64 104, !4, i64 112, !4, i64 120, !4, i64 128, !4, i64 136, !4, i64 144, !4, i64 152, !4, i64 160, !4, i64 168}
!20 = !{!7, !7, i64 0}
!21 = !{!22, !7, i64 512}
!22 = !{!"", !23, i64 0, !23, i64 144, !23, i64 288, !5, i64 432, !5, i64 436, !5, i64 440, !5, i64 452, !15, i64 464, !15, i64 468, !5, i64 472, !15, i64 484, !15, i64 488, !7, i64 492, !15, i64 496, !15, i64 500, !15, i64 504, !7, i64 508, !7, i64 512, !7, i64 516, !4, i64 520, !15, i64 528, !15, i64 532, !15, i64 536, !7, i64 540, !7, i64 544, !7, i64 548}
!23 = !{!"", !7, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !4, i64 88, !4, i64 96, !4, i64 104, !4, i64 112, !4, i64 120, !4, i64 128, !4, i64 136}
!24 = !{!22, !7, i64 144}
!25 = !{!22, !7, i64 544}
!26 = !{!22, !4, i64 72}
!27 = !{!22, !4, i64 136}
!28 = !{!22, !4, i64 424}
!29 = !{!4, !4, i64 0}
!30 = !{!22, !4, i64 360}
!31 = !{!22, !4, i64 312}
!32 = !{!22, !4, i64 336}
!33 = !{!22, !4, i64 344}
!34 = !{!22, !4, i64 296}
!35 = !{!22, !7, i64 548}
!36 = !{!22, !4, i64 320}
!37 = !{!22, !4, i64 24}
!38 = !{!22, !4, i64 8}
!39 = !{!22, !4, i64 16}
!40 = !{!22, !4, i64 40}
!41 = !{!22, !4, i64 216}
!42 = !{!22, !15, i64 468}
!43 = !{!22, !15, i64 464}
