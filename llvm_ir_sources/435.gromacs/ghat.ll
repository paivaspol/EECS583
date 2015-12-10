; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/ghat.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str1 = private unnamed_addr constant [41 x i8] c"%8d  %8d  %8d  %15.10e  %15.10e %15.10e\0A\00", align 1
@.str2 = private unnamed_addr constant [47 x i8] c"%8d  %8d  %8d  %8d  %15.10e  %15.10e  %15.10e\0A\00", align 1
@.str3 = private unnamed_addr constant [36 x i8] c"%10g  %10g  %10g  %10g  %10g  %10g\0A\00", align 1
@.str4 = private unnamed_addr constant [9 x i8] c"  %12.5e\00", align 1
@.str6 = private unnamed_addr constant [9 x i8] c"ghat.xvg\00", align 1
@.str7 = private unnamed_addr constant [6 x i8] c"G-Hat\00", align 1
@.str8 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@.str9 = private unnamed_addr constant [3 x i8] c"gk\00", align 1
@.str10 = private unnamed_addr constant [12 x i8] c"%10g  %10g\0A\00", align 1
@.str11 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str12 = private unnamed_addr constant [16 x i8] c"%d%d%d%lf%lf%lf\00", align 1
@.str13 = private unnamed_addr constant [18 x i8] c"%d%d%d%d%lf%lf%lf\00", align 1
@.str14 = private unnamed_addr constant [19 x i8] c"%lf%lf%lf%lf%lf%lf\00", align 1
@.str15 = private unnamed_addr constant [38 x i8] c"\0AOpened %s for reading ghat function\0A\00", align 1
@.str16 = private unnamed_addr constant [26 x i8] c"gridsize: %10d %10d %10d\0A\00", align 1
@.str17 = private unnamed_addr constant [26 x i8] c"spacing:  %10g %10g %10g\0A\00", align 1
@.str18 = private unnamed_addr constant [86 x i8] c"    nalias    porder     niter      bSym      beta[X-Z]\0A%10d%10d%10d%10d%10g%10g%10g\0A\00", align 1
@.str19 = private unnamed_addr constant [87 x i8] c"      acut        r1      pval      zval      eref      qopt\0A%10g%10g%10g%10g%10g%10g\0A\00", align 1
@.str20 = private unnamed_addr constant [26 x i8] c"Reading ghat of %d %d %d\0A\00", align 1
@.str21 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str22 = private unnamed_addr constant [11 x i8] c"output.hat\00", align 1
@.str23 = private unnamed_addr constant [35 x i8] c"\0ASuccessfully read ghat function!\0A\00", align 1

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

; Function Attrs: nounwind optsize ssp uwtable
define void @symmetrize_ghat(i32 %nx, i32 %ny, i32 %nz, float*** nocapture readonly %ghat) #4 {
  %1 = icmp slt i32 %nx, -1
  br i1 %1, label %._crit_edge9, label %.lr.ph8

.lr.ph8:                                          ; preds = %0
  %2 = sdiv i32 %nx, 2
  %3 = sdiv i32 %ny, 2
  %4 = icmp slt i32 %ny, -1
  %5 = sdiv i32 %nz, 2
  %6 = icmp slt i32 %nz, -1
  %7 = zext i32 %nz to i64
  %8 = sext i32 %5 to i64
  %9 = zext i32 %ny to i64
  %10 = sext i32 %3 to i64
  %11 = zext i32 %nx to i64
  %12 = sext i32 %2 to i64
  br label %13

; <label>:13                                      ; preds = %._crit_edge5, %.lr.ph8
  %indvars.iv12 = phi i64 [ %indvars.iv.next13, %._crit_edge5 ], [ 0, %.lr.ph8 ]
  br i1 %4, label %._crit_edge5, label %.lr.ph4

.lr.ph4:                                          ; preds = %13
  %14 = sub i64 %11, %indvars.iv12
  %15 = trunc i64 %14 to i32
  %16 = srem i32 %15, %nx
  %17 = getelementptr inbounds float*** %ghat, i64 %indvars.iv12
  %18 = sext i32 %16 to i64
  %19 = getelementptr inbounds float*** %ghat, i64 %18
  br label %20

; <label>:20                                      ; preds = %._crit_edge, %.lr.ph4
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %._crit_edge ], [ 0, %.lr.ph4 ]
  br i1 %6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %20
  %21 = sub i64 %9, %indvars.iv10
  %22 = trunc i64 %21 to i32
  %23 = srem i32 %22, %ny
  %24 = load float*** %17, align 8, !tbaa !8
  %25 = getelementptr inbounds float** %24, i64 %indvars.iv10
  %26 = load float** %25, align 8, !tbaa !8
  %27 = sext i32 %23 to i64
  %28 = getelementptr inbounds float** %24, i64 %27
  %29 = load float** %28, align 8, !tbaa !8
  %30 = load float*** %19, align 8, !tbaa !8
  %31 = getelementptr inbounds float** %30, i64 %indvars.iv10
  %32 = load float** %31, align 8, !tbaa !8
  %33 = getelementptr inbounds float** %30, i64 %27
  %34 = load float** %33, align 8, !tbaa !8
  br label %35

; <label>:35                                      ; preds = %35, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %35 ], [ 0, %.lr.ph ]
  %36 = sub i64 %7, %indvars.iv
  %37 = trunc i64 %36 to i32
  %38 = srem i32 %37, %nz
  %39 = getelementptr inbounds float* %26, i64 %indvars.iv
  %40 = bitcast float* %39 to i32*
  %41 = load i32* %40, align 4, !tbaa !2
  %42 = getelementptr inbounds float* %29, i64 %indvars.iv
  %43 = bitcast float* %42 to i32*
  store i32 %41, i32* %43, align 4, !tbaa !2
  %44 = sext i32 %38 to i64
  %45 = getelementptr inbounds float* %26, i64 %44
  %46 = bitcast float* %45 to i32*
  store i32 %41, i32* %46, align 4, !tbaa !2
  %47 = getelementptr inbounds float* %29, i64 %44
  %48 = bitcast float* %47 to i32*
  store i32 %41, i32* %48, align 4, !tbaa !2
  %49 = getelementptr inbounds float* %32, i64 %indvars.iv
  %50 = bitcast float* %49 to i32*
  store i32 %41, i32* %50, align 4, !tbaa !2
  %51 = getelementptr inbounds float* %34, i64 %indvars.iv
  %52 = bitcast float* %51 to i32*
  store i32 %41, i32* %52, align 4, !tbaa !2
  %53 = getelementptr inbounds float* %32, i64 %44
  %54 = bitcast float* %53 to i32*
  store i32 %41, i32* %54, align 4, !tbaa !2
  %55 = getelementptr inbounds float* %34, i64 %44
  %56 = bitcast float* %55 to i32*
  store i32 %41, i32* %56, align 4, !tbaa !2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %57 = icmp slt i64 %indvars.iv, %8
  br i1 %57, label %35, label %._crit_edge

._crit_edge:                                      ; preds = %35, %20
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  %58 = icmp slt i64 %indvars.iv10, %10
  br i1 %58, label %20, label %._crit_edge5

._crit_edge5:                                     ; preds = %._crit_edge, %13
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  %59 = icmp slt i64 %indvars.iv12, %12
  br i1 %59, label %13, label %._crit_edge9

._crit_edge9:                                     ; preds = %._crit_edge5, %0
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @mk_ghat(%struct.__sFILE* nocapture readnone %fp, i32 %nx, i32 %ny, i32 %nz, float*** nocapture readonly %ghat, float* nocapture readonly %box, float %r1, float %rc, i32 %bSym, i32 %bOld) #4 {
  %k = alloca [3 x float], align 4
  %lll = alloca [3 x float], align 4
  %1 = getelementptr inbounds [3 x float]* %lll, i64 0, i64 0
  %2 = load float* %box, align 4, !tbaa !2
  %3 = fpext float %2 to double
  %4 = fdiv double 0x401921FB54442D18, %3
  %5 = fptrunc double %4 to float
  store float %5, float* %1, align 4, !tbaa !2
  %6 = getelementptr inbounds float* %box, i64 1
  %7 = load float* %6, align 4, !tbaa !2
  %8 = fpext float %7 to double
  %9 = fdiv double 0x401921FB54442D18, %8
  %10 = fptrunc double %9 to float
  %11 = getelementptr inbounds [3 x float]* %lll, i64 0, i64 1
  store float %10, float* %11, align 4, !tbaa !2
  %12 = getelementptr inbounds float* %box, i64 2
  %13 = load float* %12, align 4, !tbaa !2
  %14 = fpext float %13 to double
  %15 = fdiv double 0x401921FB54442D18, %14
  %16 = fptrunc double %15 to float
  %17 = getelementptr inbounds [3 x float]* %lll, i64 0, i64 2
  store float %16, float* %17, align 4, !tbaa !2
  %18 = icmp ne i32 %bSym, 0
  br i1 %18, label %19, label %26

; <label>:19                                      ; preds = %0
  %20 = sdiv i32 %nx, 2
  %21 = add nsw i32 %20, 1
  %22 = sdiv i32 %ny, 2
  %23 = add nsw i32 %22, 1
  %24 = sdiv i32 %nz, 2
  %25 = add nsw i32 %24, 1
  br label %26

; <label>:26                                      ; preds = %0, %19
  %ixmax.0 = phi i32 [ %21, %19 ], [ %nx, %0 ]
  %iymax.0 = phi i32 [ %23, %19 ], [ %ny, %0 ]
  %izmax.0 = phi i32 [ %25, %19 ], [ %nz, %0 ]
  %27 = icmp sgt i32 %ixmax.0, 0
  br i1 %27, label %.preheader4.lr.ph, label %._crit_edge10

.preheader4.lr.ph:                                ; preds = %26
  %28 = icmp sgt i32 %iymax.0, 0
  %29 = icmp sgt i32 %izmax.0, 0
  %30 = getelementptr inbounds [3 x float]* %k, i64 0, i64 0
  %31 = getelementptr inbounds [3 x float]* %k, i64 0, i64 1
  %32 = getelementptr inbounds [3 x float]* %k, i64 0, i64 2
  %33 = icmp eq i32 %bOld, 0
  %34 = add i32 %izmax.0, -1
  %35 = add i32 %iymax.0, -1
  %36 = add i32 %ixmax.0, -1
  br label %.preheader4

.preheader4:                                      ; preds = %._crit_edge7, %.preheader4.lr.ph
  %indvars.iv15 = phi i64 [ 0, %.preheader4.lr.ph ], [ %indvars.iv.next16, %._crit_edge7 ]
  br i1 %28, label %.preheader.lr.ph, label %._crit_edge7

.preheader.lr.ph:                                 ; preds = %.preheader4
  %37 = getelementptr inbounds float*** %ghat, i64 %indvars.iv15
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge, %.preheader.lr.ph
  %indvars.iv11 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next12, %._crit_edge ]
  %38 = trunc i64 %indvars.iv11 to i32
  br i1 %29, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %39 = trunc i64 %indvars.iv15 to i32
  %40 = or i64 %indvars.iv11, %indvars.iv15
  br label %41

; <label>:41                                      ; preds = %68, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %68 ]
  %42 = trunc i64 %indvars.iv to i32
  call fastcc void @calc_k(float* %1, i32 %39, i32 %38, i32 %42, i32 %nx, i32 %ny, i32 %nz, float* %30) #10
  %43 = load float* %30, align 4, !tbaa !2
  %44 = fmul float %43, %43
  %45 = load float* %31, align 4, !tbaa !2
  %46 = fmul float %45, %45
  %47 = fadd float %44, %46
  %48 = load float* %32, align 4, !tbaa !2
  %49 = fmul float %48, %48
  %50 = fadd float %47, %49
  %51 = or i64 %40, %indvars.iv
  %52 = trunc i64 %51 to i32
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %68, label %54

; <label>:54                                      ; preds = %41
  %55 = fpext float %50 to double
  %sqrtf = tail call float @sqrtf(float %50) #5
  br i1 %33, label %62, label %56

; <label>:56                                      ; preds = %54
  %57 = tail call float @gk(float %sqrtf, float %rc, float %r1) #9
  %58 = fpext float %57 to double
  %59 = fmul double %55, 5.727650e-04
  %60 = fdiv double %58, %59
  %61 = fptrunc double %60 to float
  br label %68

; <label>:62                                      ; preds = %54
  %63 = tail call float @gknew(float %sqrtf, float %rc, float %r1) #9
  %64 = fpext float %63 to double
  %65 = fmul double %55, 5.727650e-04
  %66 = fdiv double %64, %65
  %67 = fptrunc double %66 to float
  br label %68

; <label>:68                                      ; preds = %41, %56, %62
  %ggg.0 = phi float [ %61, %56 ], [ %67, %62 ], [ 0.000000e+00, %41 ]
  %69 = load float*** %37, align 8, !tbaa !8
  %70 = getelementptr inbounds float** %69, i64 %indvars.iv11
  %71 = load float** %70, align 8, !tbaa !8
  %72 = getelementptr inbounds float* %71, i64 %indvars.iv
  store float %ggg.0, float* %72, align 4, !tbaa !2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i32 %42, %34
  br i1 %exitcond, label %._crit_edge, label %41

._crit_edge:                                      ; preds = %68, %.preheader
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  %exitcond14 = icmp eq i32 %38, %35
  br i1 %exitcond14, label %._crit_edge7, label %.preheader

._crit_edge7:                                     ; preds = %._crit_edge, %.preheader4
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  %lftr.wideiv17 = trunc i64 %indvars.iv15 to i32
  %exitcond18 = icmp eq i32 %lftr.wideiv17, %36
  br i1 %exitcond18, label %._crit_edge10, label %.preheader4

._crit_edge10:                                    ; preds = %._crit_edge7, %26
  br i1 %18, label %73, label %74

; <label>:73                                      ; preds = %._crit_edge10
  tail call void @symmetrize_ghat(i32 %nx, i32 %ny, i32 %nz, float*** %ghat) #10
  br label %74

; <label>:74                                      ; preds = %73, %._crit_edge10
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @calc_k(float* nocapture readonly %lll, i32 %ix, i32 %iy, i32 %iz, i32 %nx, i32 %ny, i32 %nz, float* nocapture %k) #4 {
  %1 = sdiv i32 %nx, 2
  %2 = icmp slt i32 %1, %ix
  br i1 %2, label %7, label %3

; <label>:3                                       ; preds = %0
  %4 = sitofp i32 %ix to float
  %5 = load float* %lll, align 4, !tbaa !2
  %6 = fmul float %4, %5
  br label %12

; <label>:7                                       ; preds = %0
  %8 = sub nsw i32 %ix, %nx
  %9 = sitofp i32 %8 to float
  %10 = load float* %lll, align 4, !tbaa !2
  %11 = fmul float %9, %10
  br label %12

; <label>:12                                      ; preds = %7, %3
  %13 = phi float [ %6, %3 ], [ %11, %7 ]
  store float %13, float* %k, align 4, !tbaa !2
  %14 = sdiv i32 %ny, 2
  %15 = icmp slt i32 %14, %iy
  %16 = getelementptr inbounds float* %lll, i64 1
  %17 = load float* %16, align 4
  %18 = select i1 %15, i32 %ny, i32 0
  %.iy = sub nsw i32 %iy, %18
  %.pn = sitofp i32 %.iy to float
  %19 = fmul float %.pn, %17
  %20 = getelementptr inbounds float* %k, i64 1
  store float %19, float* %20, align 4, !tbaa !2
  %21 = sdiv i32 %nz, 2
  %22 = icmp slt i32 %21, %iz
  %23 = getelementptr inbounds float* %lll, i64 2
  %24 = load float* %23, align 4
  %25 = select i1 %22, i32 %nz, i32 0
  %.pn1.in = sub nsw i32 %iz, %25
  %.pn1 = sitofp i32 %.pn1.in to float
  %26 = fmul float %.pn1, %24
  %27 = getelementptr inbounds float* %k, i64 2
  store float %26, float* %27, align 4, !tbaa !2
  ret void
}

; Function Attrs: optsize
declare float @gk(float, float, float) #3

; Function Attrs: nounwind optsize readnone
declare double @sqrt(double) #5

; Function Attrs: optsize
declare float @gknew(float, float, float) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @wr_ghat(i8* %fn, i32 %n1max, i32 %n2max, i32 %n3max, float %h1, float %h2, float %h3, float*** nocapture readonly %ghat, i32 %nalias, i32 %porder, i32 %niter, i32 %bSym, float* nocapture readonly %beta, float %r1, float %rc, float %pval, float %zval, float %eref, float %qopt) #4 {
  %1 = tail call %struct.__sFILE* @ffopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str, i64 0, i64 0)) #9
  %2 = fpext float %h1 to double
  %3 = fpext float %h2 to double
  %4 = fpext float %h3 to double
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([41 x i8]* @.str1, i64 0, i64 0), i32 %n1max, i32 %n2max, i32 %n3max, double %2, double %3, double %4) #9
  %6 = load float* %beta, align 4, !tbaa !2
  %7 = fpext float %6 to double
  %8 = getelementptr inbounds float* %beta, i64 1
  %9 = load float* %8, align 4, !tbaa !2
  %10 = fpext float %9 to double
  %11 = getelementptr inbounds float* %beta, i64 2
  %12 = load float* %11, align 4, !tbaa !2
  %13 = fpext float %12 to double
  %14 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([47 x i8]* @.str2, i64 0, i64 0), i32 %nalias, i32 %porder, i32 %niter, i32 %bSym, double %7, double %10, double %13) #9
  %15 = fpext float %rc to double
  %16 = fpext float %r1 to double
  %17 = fpext float %pval to double
  %18 = fpext float %zval to double
  %19 = fpext float %eref to double
  %20 = fpext float %qopt to double
  %21 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([36 x i8]* @.str3, i64 0, i64 0), double %15, double %16, double %17, double %18, double %19, double %20) #9
  %22 = icmp eq i32 %bSym, 0
  br i1 %22, label %30, label %23

; <label>:23                                      ; preds = %0
  %24 = sdiv i32 %n1max, 2
  %25 = add nsw i32 %24, 1
  %26 = sdiv i32 %n2max, 2
  %27 = add nsw i32 %26, 1
  %28 = sdiv i32 %n3max, 2
  %29 = add nsw i32 %28, 1
  br label %30

; <label>:30                                      ; preds = %0, %23
  %N3MAX.0 = phi i32 [ %29, %23 ], [ %n3max, %0 ]
  %N2MAX.0 = phi i32 [ %27, %23 ], [ %n2max, %0 ]
  %N1MAX.0 = phi i32 [ %25, %23 ], [ %n1max, %0 ]
  %31 = icmp sgt i32 %N1MAX.0, 0
  br i1 %31, label %.preheader4.lr.ph, label %._crit_edge24

.preheader4.lr.ph:                                ; preds = %30
  %32 = icmp sgt i32 %N2MAX.0, 0
  %33 = icmp sgt i32 %N3MAX.0, 0
  %34 = add i32 %N3MAX.0, -1
  %35 = add i32 %N2MAX.0, -1
  %36 = add i32 %N1MAX.0, -1
  br label %.preheader4

.preheader4:                                      ; preds = %._crit_edge20, %.preheader4.lr.ph
  %indvars.iv41 = phi i64 [ 0, %.preheader4.lr.ph ], [ %indvars.iv.next42, %._crit_edge20 ]
  %bNL.022 = phi i32 [ 0, %.preheader4.lr.ph ], [ %bNL.1.lcssa, %._crit_edge20 ]
  br i1 %32, label %.preheader.lr.ph, label %._crit_edge20

.preheader.lr.ph:                                 ; preds = %.preheader4
  %37 = getelementptr inbounds float*** %ghat, i64 %indvars.iv41
  br label %.preheader

.preheader:                                       ; preds = %52, %.preheader.lr.ph
  %indvars.iv37 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next38, %52 ]
  %bNL.118 = phi i32 [ %bNL.022, %.preheader.lr.ph ], [ %bNL.2.lcssa, %52 ]
  br i1 %33, label %.lr.ph16, label %._crit_edge17

.lr.ph16:                                         ; preds = %.preheader, %48
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %48 ], [ 0, %.preheader ]
  %nn.015 = phi i32 [ %49, %48 ], [ 1, %.preheader ]
  %38 = load float*** %37, align 8, !tbaa !8
  %39 = getelementptr inbounds float** %38, i64 %indvars.iv37
  %40 = load float** %39, align 8, !tbaa !8
  %41 = getelementptr inbounds float* %40, i64 %indvars.iv33
  %42 = load float* %41, align 4, !tbaa !2
  %43 = fpext float %42 to double
  %44 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([9 x i8]* @.str4, i64 0, i64 0), double %43) #9
  %45 = srem i32 %nn.015, 6
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

; <label>:47                                      ; preds = %.lr.ph16
  %fputc3 = tail call i32 @fputc(i32 10, %struct.__sFILE* %1)
  br label %48

; <label>:48                                      ; preds = %.lr.ph16, %47
  %bNL.3 = phi i32 [ 1, %47 ], [ 0, %.lr.ph16 ]
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  %49 = add nuw nsw i32 %nn.015, 1
  %lftr.wideiv35 = trunc i64 %indvars.iv33 to i32
  %exitcond36 = icmp eq i32 %lftr.wideiv35, %34
  br i1 %exitcond36, label %._crit_edge17, label %.lr.ph16

._crit_edge17:                                    ; preds = %48, %.preheader
  %bNL.2.lcssa = phi i32 [ %bNL.118, %.preheader ], [ %bNL.3, %48 ]
  %50 = icmp eq i32 %bNL.2.lcssa, 0
  br i1 %50, label %51, label %52

; <label>:51                                      ; preds = %._crit_edge17
  %fputc = tail call i32 @fputc(i32 10, %struct.__sFILE* %1)
  br label %52

; <label>:52                                      ; preds = %._crit_edge17, %51
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  %lftr.wideiv39 = trunc i64 %indvars.iv37 to i32
  %exitcond40 = icmp eq i32 %lftr.wideiv39, %35
  br i1 %exitcond40, label %._crit_edge20, label %.preheader

._crit_edge20:                                    ; preds = %52, %.preheader4
  %bNL.1.lcssa = phi i32 [ %bNL.022, %.preheader4 ], [ %bNL.2.lcssa, %52 ]
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  %lftr.wideiv43 = trunc i64 %indvars.iv41 to i32
  %exitcond44 = icmp eq i32 %lftr.wideiv43, %36
  br i1 %exitcond44, label %._crit_edge24, label %.preheader4

._crit_edge24:                                    ; preds = %._crit_edge20, %30
  tail call void @ffclose(%struct.__sFILE* %1) #9
  %53 = tail call %struct.__sFILE* @xvgropen(i8* getelementptr inbounds ([9 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str9, i64 0, i64 0)) #9
  br i1 %31, label %.lr.ph12, label %._crit_edge13

.lr.ph12:                                         ; preds = %._crit_edge24
  %54 = icmp sgt i32 %N2MAX.0, 0
  %55 = icmp sgt i32 %N3MAX.0, 0
  %56 = add i32 %N3MAX.0, -1
  %57 = add i32 %N2MAX.0, -1
  %58 = add i32 %N1MAX.0, -1
  br label %59

; <label>:59                                      ; preds = %._crit_edge9, %.lr.ph12
  %indvars.iv29 = phi i64 [ 0, %.lr.ph12 ], [ %indvars.iv.next30, %._crit_edge9 ]
  %60 = trunc i64 %indvars.iv29 to i32
  %61 = sitofp i32 %60 to float
  %62 = fmul float %61, %h1
  %63 = fmul float %62, %62
  br i1 %54, label %.lr.ph8, label %._crit_edge9

.lr.ph8:                                          ; preds = %59
  %64 = getelementptr inbounds float*** %ghat, i64 %indvars.iv29
  br label %65

; <label>:65                                      ; preds = %._crit_edge, %.lr.ph8
  %indvars.iv25 = phi i64 [ 0, %.lr.ph8 ], [ %indvars.iv.next26, %._crit_edge ]
  %66 = trunc i64 %indvars.iv25 to i32
  %67 = sitofp i32 %66 to float
  %68 = fmul float %67, %h2
  %69 = fmul float %68, %68
  %70 = fadd float %63, %69
  br i1 %55, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %65, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %65 ]
  %71 = trunc i64 %indvars.iv to i32
  %72 = sitofp i32 %71 to float
  %73 = fmul float %72, %h3
  %74 = fmul float %73, %73
  %75 = fadd float %70, %74
  %76 = fpext float %75 to double
  %77 = tail call double @sqrt(double %76) #11
  %78 = load float*** %64, align 8, !tbaa !8
  %79 = getelementptr inbounds float** %78, i64 %indvars.iv25
  %80 = load float** %79, align 8, !tbaa !8
  %81 = getelementptr inbounds float* %80, i64 %indvars.iv
  %82 = load float* %81, align 4, !tbaa !2
  %83 = fpext float %82 to double
  %84 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %53, i8* getelementptr inbounds ([12 x i8]* @.str10, i64 0, i64 0), double %77, double %83) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i32 %71, %56
  br i1 %exitcond, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %65
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  %exitcond28 = icmp eq i32 %66, %57
  br i1 %exitcond28, label %._crit_edge9, label %65

._crit_edge9:                                     ; preds = %._crit_edge, %59
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  %exitcond32 = icmp eq i32 %60, %58
  br i1 %exitcond32, label %._crit_edge13, label %59

._crit_edge13:                                    ; preds = %._crit_edge9, %._crit_edge24
  tail call void @ffclose(%struct.__sFILE* %53) #9
  ret void
}

; Function Attrs: optsize
declare %struct.__sFILE* @ffopen(i8*, i8*) #3

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #6

; Function Attrs: optsize
declare void @ffclose(%struct.__sFILE*) #3

; Function Attrs: optsize
declare %struct.__sFILE* @xvgropen(i8*, i8*, i8*, i8*) #3

; Function Attrs: nounwind optsize ssp uwtable
define void @pr_scalar_gk(i8* %fn, i32 %nx, i32 %ny, i32 %nz, float* nocapture readonly %box, float*** nocapture readonly %ghat) #4 {
  %k = alloca [3 x float], align 4
  %lll = alloca [3 x float], align 4
  %1 = getelementptr inbounds [3 x float]* %lll, i64 0, i64 0
  %2 = load float* %box, align 4, !tbaa !2
  %3 = fpext float %2 to double
  %4 = fdiv double 0x401921FB54442D18, %3
  %5 = fptrunc double %4 to float
  store float %5, float* %1, align 4, !tbaa !2
  %6 = getelementptr inbounds float* %box, i64 1
  %7 = load float* %6, align 4, !tbaa !2
  %8 = fpext float %7 to double
  %9 = fdiv double 0x401921FB54442D18, %8
  %10 = fptrunc double %9 to float
  %11 = getelementptr inbounds [3 x float]* %lll, i64 0, i64 1
  store float %10, float* %11, align 4, !tbaa !2
  %12 = getelementptr inbounds float* %box, i64 2
  %13 = load float* %12, align 4, !tbaa !2
  %14 = fpext float %13 to double
  %15 = fdiv double 0x401921FB54442D18, %14
  %16 = fptrunc double %15 to float
  %17 = getelementptr inbounds [3 x float]* %lll, i64 0, i64 2
  store float %16, float* %17, align 4, !tbaa !2
  %18 = tail call %struct.__sFILE* @xvgropen(i8* %fn, i8* getelementptr inbounds ([6 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8]* @.str9, i64 0, i64 0)) #9
  %19 = icmp sgt i32 %nx, 0
  br i1 %19, label %.preheader1.lr.ph, label %._crit_edge6

.preheader1.lr.ph:                                ; preds = %0
  %20 = icmp sgt i32 %ny, 0
  %21 = icmp sgt i32 %nz, 0
  %22 = getelementptr inbounds [3 x float]* %k, i64 0, i64 0
  %23 = getelementptr inbounds [3 x float]* %k, i64 0, i64 1
  %24 = getelementptr inbounds [3 x float]* %k, i64 0, i64 2
  %25 = add i32 %nz, -1
  %26 = add i32 %ny, -1
  %27 = add i32 %nx, -1
  br label %.preheader1

.preheader1:                                      ; preds = %._crit_edge4, %.preheader1.lr.ph
  %indvars.iv11 = phi i64 [ 0, %.preheader1.lr.ph ], [ %indvars.iv.next12, %._crit_edge4 ]
  br i1 %20, label %.preheader.lr.ph, label %._crit_edge4

.preheader.lr.ph:                                 ; preds = %.preheader1
  %28 = getelementptr inbounds float*** %ghat, i64 %indvars.iv11
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge, %.preheader.lr.ph
  %indvars.iv7 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next8, %._crit_edge ]
  br i1 %21, label %.lr.ph, label %.preheader._crit_edge

.preheader._crit_edge:                            ; preds = %.preheader
  %.pre = trunc i64 %indvars.iv7 to i32
  br label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ]
  %29 = trunc i64 %indvars.iv to i32
  %30 = trunc i64 %indvars.iv7 to i32
  %31 = trunc i64 %indvars.iv11 to i32
  call fastcc void @calc_k(float* %1, i32 %31, i32 %30, i32 %29, i32 %nx, i32 %ny, i32 %nz, float* %22) #10
  %32 = load float* %22, align 4, !tbaa !2
  %33 = fmul float %32, %32
  %34 = load float* %23, align 4, !tbaa !2
  %35 = fmul float %34, %34
  %36 = fadd float %33, %35
  %37 = load float* %24, align 4, !tbaa !2
  %38 = fmul float %37, %37
  %39 = fadd float %36, %38
  %sqrtf.i = tail call float @sqrtf(float %39) #5
  %40 = fpext float %sqrtf.i to double
  %41 = load float*** %28, align 8, !tbaa !8
  %42 = getelementptr inbounds float** %41, i64 %indvars.iv7
  %43 = load float** %42, align 8, !tbaa !8
  %44 = getelementptr inbounds float* %43, i64 %indvars.iv
  %45 = load float* %44, align 4, !tbaa !2
  %46 = fpext float %45 to double
  %47 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %18, i8* getelementptr inbounds ([12 x i8]* @.str10, i64 0, i64 0), double %40, double %46) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i32 %29, %25
  br i1 %exitcond, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.preheader._crit_edge
  %lftr.wideiv9.pre-phi = phi i32 [ %.pre, %.preheader._crit_edge ], [ %30, %.lr.ph ]
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  %exitcond10 = icmp eq i32 %lftr.wideiv9.pre-phi, %26
  br i1 %exitcond10, label %._crit_edge4, label %.preheader

._crit_edge4:                                     ; preds = %._crit_edge, %.preheader1
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  %lftr.wideiv13 = trunc i64 %indvars.iv11 to i32
  %exitcond14 = icmp eq i32 %lftr.wideiv13, %27
  br i1 %exitcond14, label %._crit_edge6, label %.preheader1

._crit_edge6:                                     ; preds = %._crit_edge4, %0
  tail call void @ffclose(%struct.__sFILE* %18) #9
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define float*** @rd_ghat(%struct.__sFILE* nocapture %log, i8* %fn, i32* nocapture %igrid, float* nocapture %gridspace, float* nocapture %beta, i32* %porder, float* nocapture %r1, float* nocapture %rc) #4 {
  %gx = alloca double, align 8
  %gy = alloca double, align 8
  %gz = alloca double, align 8
  %alX = alloca double, align 8
  %alY = alloca double, align 8
  %alZ = alloca double, align 8
  %ddd = alloca double, align 8
  %acut = alloca double, align 8
  %pval = alloca double, align 8
  %zval = alloca double, align 8
  %eref = alloca double, align 8
  %qopt = alloca double, align 8
  %r11 = alloca double, align 8
  %nalias = alloca i32, align 4
  %niter = alloca i32, align 4
  %bSym = alloca i32, align 4
  %ix = alloca i32, align 4
  %iy = alloca i32, align 4
  %iz = alloca i32, align 4
  %1 = tail call %struct.__sFILE* @ffopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str11, i64 0, i64 0)) #9
  %2 = call i32 (%struct.__sFILE*, i8*, ...)* @fscanf(%struct.__sFILE* %1, i8* getelementptr inbounds ([16 x i8]* @.str12, i64 0, i64 0), i32* %ix, i32* %iy, i32* %iz, double* %gx, double* %gy, double* %gz) #9
  %3 = load i32* %ix, align 4, !tbaa !10
  store i32 %3, i32* %igrid, align 4, !tbaa !10
  %4 = load i32* %iy, align 4, !tbaa !10
  %5 = getelementptr inbounds i32* %igrid, i64 1
  store i32 %4, i32* %5, align 4, !tbaa !10
  %6 = load i32* %iz, align 4, !tbaa !10
  %7 = getelementptr inbounds i32* %igrid, i64 2
  store i32 %6, i32* %7, align 4, !tbaa !10
  %8 = load double* %gx, align 8, !tbaa !6
  %9 = fptrunc double %8 to float
  store float %9, float* %gridspace, align 4, !tbaa !2
  %10 = load double* %gy, align 8, !tbaa !6
  %11 = fptrunc double %10 to float
  %12 = getelementptr inbounds float* %gridspace, i64 1
  store float %11, float* %12, align 4, !tbaa !2
  %13 = load double* %gz, align 8, !tbaa !6
  %14 = fptrunc double %13 to float
  %15 = getelementptr inbounds float* %gridspace, i64 2
  store float %14, float* %15, align 4, !tbaa !2
  %16 = call i32 (%struct.__sFILE*, i8*, ...)* @fscanf(%struct.__sFILE* %1, i8* getelementptr inbounds ([18 x i8]* @.str13, i64 0, i64 0), i32* %nalias, i32* %porder, i32* %niter, i32* %bSym, double* %alX, double* %alY, double* %alZ) #9
  %17 = call i32 (%struct.__sFILE*, i8*, ...)* @fscanf(%struct.__sFILE* %1, i8* getelementptr inbounds ([19 x i8]* @.str14, i64 0, i64 0), double* %acut, double* %r11, double* %pval, double* %zval, double* %eref, double* %qopt) #9
  %18 = load double* %r11, align 8, !tbaa !6
  %19 = fptrunc double %18 to float
  store float %19, float* %r1, align 4, !tbaa !2
  %20 = load double* %acut, align 8, !tbaa !6
  %21 = fptrunc double %20 to float
  store float %21, float* %rc, align 4, !tbaa !2
  %22 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([38 x i8]* @.str15, i64 0, i64 0), i8* %fn) #9
  %23 = load i32* %ix, align 4, !tbaa !10
  %24 = load i32* %iy, align 4, !tbaa !10
  %25 = load i32* %iz, align 4, !tbaa !10
  %26 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([26 x i8]* @.str16, i64 0, i64 0), i32 %23, i32 %24, i32 %25) #9
  %27 = load double* %gx, align 8, !tbaa !6
  %28 = load double* %gy, align 8, !tbaa !6
  %29 = load double* %gz, align 8, !tbaa !6
  %30 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([26 x i8]* @.str17, i64 0, i64 0), double %27, double %28, double %29) #9
  %31 = load i32* %nalias, align 4, !tbaa !10
  %32 = load i32* %porder, align 4, !tbaa !10
  %33 = load i32* %niter, align 4, !tbaa !10
  %34 = load i32* %bSym, align 4, !tbaa !10
  %35 = load double* %alX, align 8, !tbaa !6
  %36 = load double* %alY, align 8, !tbaa !6
  %37 = load double* %alZ, align 8, !tbaa !6
  %38 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([86 x i8]* @.str18, i64 0, i64 0), i32 %31, i32 %32, i32 %33, i32 %34, double %35, double %36, double %37) #9
  %39 = load double* %acut, align 8, !tbaa !6
  %40 = load float* %r1, align 4, !tbaa !2
  %41 = fpext float %40 to double
  %42 = load double* %pval, align 8, !tbaa !6
  %43 = load double* %zval, align 8, !tbaa !6
  %44 = load double* %eref, align 8, !tbaa !6
  %45 = load double* %qopt, align 8, !tbaa !6
  %46 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([87 x i8]* @.str19, i64 0, i64 0), double %39, double %41, double %42, double %43, double %44, double %45) #9
  %47 = call i32 @fflush(%struct.__sFILE* %log) #9
  %48 = load double* %alX, align 8, !tbaa !6
  %49 = fptrunc double %48 to float
  store float %49, float* %beta, align 4, !tbaa !2
  %50 = load double* %alY, align 8, !tbaa !6
  %51 = fptrunc double %50 to float
  %52 = getelementptr inbounds float* %beta, i64 1
  store float %51, float* %52, align 4, !tbaa !2
  %53 = load double* %alZ, align 8, !tbaa !6
  %54 = fptrunc double %53 to float
  %55 = getelementptr inbounds float* %beta, i64 2
  store float %54, float* %55, align 4, !tbaa !2
  %56 = load i32* %ix, align 4, !tbaa !10
  %57 = load i32* %iy, align 4, !tbaa !10
  %58 = load i32* %iz, align 4, !tbaa !10
  %59 = call float*** @mk_rgrid(i32 %56, i32 %57, i32 %58) #9
  %60 = load i32* %bSym, align 4, !tbaa !10
  %61 = icmp eq i32 %60, 0
  %62 = load i32* %igrid, align 4, !tbaa !10
  br i1 %61, label %72, label %63

; <label>:63                                      ; preds = %0
  %64 = sdiv i32 %62, 2
  %65 = add nsw i32 %64, 1
  %66 = load i32* %5, align 4, !tbaa !10
  %67 = sdiv i32 %66, 2
  %68 = add nsw i32 %67, 1
  %69 = load i32* %7, align 4, !tbaa !10
  %70 = sdiv i32 %69, 2
  %71 = add nsw i32 %70, 1
  br label %75

; <label>:72                                      ; preds = %0
  %73 = load i32* %5, align 4, !tbaa !10
  %74 = load i32* %7, align 4, !tbaa !10
  br label %75

; <label>:75                                      ; preds = %72, %63
  %ixmax.0 = phi i32 [ %65, %63 ], [ %62, %72 ]
  %iymax.0 = phi i32 [ %68, %63 ], [ %73, %72 ]
  %izmax.0 = phi i32 [ %71, %63 ], [ %74, %72 ]
  %76 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([26 x i8]* @.str20, i64 0, i64 0), i32 %ixmax.0, i32 %iymax.0, i32 %izmax.0) #9
  store i32 0, i32* %ix, align 4, !tbaa !10
  %77 = icmp sgt i32 %ixmax.0, 0
  br i1 %77, label %.preheader3.lr.ph, label %._crit_edge5

.preheader3.lr.ph:                                ; preds = %75
  %78 = icmp sgt i32 %iymax.0, 0
  %79 = icmp sgt i32 %izmax.0, 0
  br label %.preheader3

.preheader3:                                      ; preds = %.preheader3.lr.ph, %._crit_edge4
  %80 = phi i32 [ 0, %.preheader3.lr.ph ], [ %104, %._crit_edge4 ]
  store i32 0, i32* %iy, align 4, !tbaa !10
  br i1 %78, label %.preheader, label %._crit_edge4

.preheader:                                       ; preds = %.preheader3, %._crit_edge
  %81 = phi i32 [ %99, %._crit_edge ], [ %80, %.preheader3 ]
  %82 = phi i32 [ %101, %._crit_edge ], [ 0, %.preheader3 ]
  store i32 0, i32* %iz, align 4, !tbaa !10
  br i1 %79, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %83 = call i32 (%struct.__sFILE*, i8*, ...)* @fscanf(%struct.__sFILE* %1, i8* getelementptr inbounds ([4 x i8]* @.str21, i64 0, i64 0), double* %ddd) #9
  %84 = load double* %ddd, align 8, !tbaa !6
  %85 = fptrunc double %84 to float
  %86 = load i32* %iz, align 4, !tbaa !10
  %87 = sext i32 %86 to i64
  %88 = load i32* %iy, align 4, !tbaa !10
  %89 = sext i32 %88 to i64
  %90 = load i32* %ix, align 4, !tbaa !10
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds float*** %59, i64 %91
  %93 = load float*** %92, align 8, !tbaa !8
  %94 = getelementptr inbounds float** %93, i64 %89
  %95 = load float** %94, align 8, !tbaa !8
  %96 = getelementptr inbounds float* %95, i64 %87
  store float %85, float* %96, align 4, !tbaa !2
  %97 = add nsw i32 %86, 1
  store i32 %97, i32* %iz, align 4, !tbaa !10
  %98 = icmp slt i32 %97, %izmax.0
  br i1 %98, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %99 = phi i32 [ %81, %.preheader ], [ %90, %.lr.ph ]
  %100 = phi i32 [ %82, %.preheader ], [ %88, %.lr.ph ]
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %iy, align 4, !tbaa !10
  %102 = icmp slt i32 %101, %iymax.0
  br i1 %102, label %.preheader, label %._crit_edge4

._crit_edge4:                                     ; preds = %._crit_edge, %.preheader3
  %103 = phi i32 [ %80, %.preheader3 ], [ %99, %._crit_edge ]
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %ix, align 4, !tbaa !10
  %105 = icmp slt i32 %104, %ixmax.0
  br i1 %105, label %.preheader3, label %._crit_edge5

._crit_edge5:                                     ; preds = %._crit_edge4, %75
  call void @ffclose(%struct.__sFILE* %1) #9
  %106 = load i32* %igrid, align 4, !tbaa !10
  %107 = load i32* %5, align 4, !tbaa !10
  %108 = load i32* %7, align 4, !tbaa !10
  %109 = load double* %gx, align 8, !tbaa !6
  %110 = fptrunc double %109 to float
  %111 = load double* %gy, align 8, !tbaa !6
  %112 = fptrunc double %111 to float
  %113 = load double* %gz, align 8, !tbaa !6
  %114 = fptrunc double %113 to float
  %115 = load i32* %nalias, align 4, !tbaa !10
  %116 = load i32* %porder, align 4, !tbaa !10
  %117 = load i32* %niter, align 4, !tbaa !10
  %118 = load i32* %bSym, align 4, !tbaa !10
  %119 = load float* %r1, align 4, !tbaa !2
  %120 = load float* %rc, align 4, !tbaa !2
  %121 = load double* %pval, align 8, !tbaa !6
  %122 = fptrunc double %121 to float
  %123 = load double* %zval, align 8, !tbaa !6
  %124 = fptrunc double %123 to float
  %125 = load double* %eref, align 8, !tbaa !6
  %126 = fptrunc double %125 to float
  %127 = load double* %qopt, align 8, !tbaa !6
  %128 = fptrunc double %127 to float
  call void @wr_ghat(i8* getelementptr inbounds ([11 x i8]* @.str22, i64 0, i64 0), i32 %106, i32 %107, i32 %108, float %110, float %112, float %114, float*** %59, i32 %115, i32 %116, i32 %117, i32 %118, float* %beta, float %119, float %120, float %122, float %124, float %126, float %128) #10
  %129 = load i32* %bSym, align 4, !tbaa !10
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %135, label %131

; <label>:131                                     ; preds = %._crit_edge5
  %132 = load i32* %igrid, align 4, !tbaa !10
  %133 = load i32* %5, align 4, !tbaa !10
  %134 = load i32* %7, align 4, !tbaa !10
  call void @symmetrize_ghat(i32 %132, i32 %133, i32 %134, float*** %59) #10
  br label %135

; <label>:135                                     ; preds = %._crit_edge5, %131
  %136 = call i64 @fwrite(i8* getelementptr inbounds ([35 x i8]* @.str23, i64 0, i64 0), i64 34, i64 1, %struct.__sFILE* %log)
  ret float*** %59
}

; Function Attrs: nounwind optsize
declare i32 @fscanf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #6

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct.__sFILE* nocapture) #6

; Function Attrs: optsize
declare float*** @mk_rgrid(i32, i32, i32) #3

declare float @sqrtf(float)

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #7

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct.__sFILE* nocapture) #7

attributes #0 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { readnone }
attributes #9 = { nounwind optsize }
attributes #10 = { optsize }
attributes #11 = { nounwind optsize readnone }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !4, i64 0}
