; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/Complex.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.CCTK_COMPLEX32 = type { x86_fp80, x86_fp80 }

@.str = private unnamed_addr constant [83 x i8] c"$Header: /cactus/Cactus/src/main/Complex.c,v 1.11 2001/12/12 13:13:45 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_main_Complex_c() #0 {
  ret i8* getelementptr inbounds ([83 x i8]* @.str, i64 0, i64 0)
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define <2 x float> @CCTK_Cmplx8(float %Re, float %Im) #0 {
  %1 = insertelement <2 x float> undef, float %Re, i32 0
  %2 = insertelement <2 x float> %1, float %Im, i32 1
  ret <2 x float> %2
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind optsize readnone ssp uwtable
define float @CCTK_Cmplx8Real(<2 x float> %complex_number.coerce) #0 {
  %1 = extractelement <2 x float> %complex_number.coerce, i32 0
  ret float %1
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define float @CCTK_Cmplx8Imag(<2 x float> %complex_number.coerce) #0 {
  %1 = extractelement <2 x float> %complex_number.coerce, i32 1
  ret float %1
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define <2 x float> @CCTK_Cmplx8Conjg(<2 x float> %complex_number.coerce) #0 {
  %1 = extractelement <2 x float> %complex_number.coerce, i32 0
  %2 = extractelement <2 x float> %complex_number.coerce, i32 1
  %3 = fsub float -0.000000e+00, %2
  %4 = insertelement <2 x float> undef, float %1, i32 0
  %5 = insertelement <2 x float> %4, float %3, i32 1
  ret <2 x float> %5
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define float @CCTK_Cmplx8Abs(<2 x float> %complex_number.coerce) #0 {
  %1 = extractelement <2 x float> %complex_number.coerce, i32 0
  %2 = fpext float %1 to double
  %3 = extractelement <2 x float> %complex_number.coerce, i32 1
  %4 = fpext float %3 to double
  %5 = tail call double @hypot(double %2, double %4) #5
  %6 = fptrunc double %5 to float
  ret float %6
}

; Function Attrs: nounwind optsize readnone
declare double @hypot(double, double) #2

; Function Attrs: nounwind optsize readnone ssp uwtable
define <2 x float> @CCTK_Cmplx8Add(<2 x float> %a.coerce, <2 x float> %b.coerce) #0 {
  %1 = fadd <2 x float> %a.coerce, %b.coerce
  ret <2 x float> %1
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define <2 x float> @CCTK_Cmplx8Sub(<2 x float> %a.coerce, <2 x float> %b.coerce) #0 {
  %1 = fsub <2 x float> %a.coerce, %b.coerce
  ret <2 x float> %1
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define <2 x float> @CCTK_Cmplx8Mul(<2 x float> %a.coerce, <2 x float> %b.coerce) #0 {
  %1 = extractelement <2 x float> %a.coerce, i32 0
  %2 = extractelement <2 x float> %b.coerce, i32 0
  %3 = fmul float %1, %2
  %4 = extractelement <2 x float> %a.coerce, i32 1
  %5 = extractelement <2 x float> %b.coerce, i32 1
  %6 = fmul float %4, %5
  %7 = fsub float %3, %6
  %8 = fmul float %4, %2
  %9 = fmul float %1, %5
  %10 = fadd float %8, %9
  %11 = insertelement <2 x float> undef, float %7, i32 0
  %12 = insertelement <2 x float> %11, float %10, i32 1
  ret <2 x float> %12
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define <2 x float> @CCTK_Cmplx8Div(<2 x float> %a.coerce, <2 x float> %b.coerce) #0 {
  %1 = extractelement <2 x float> %b.coerce, i32 0
  %2 = fmul float %1, %1
  %3 = extractelement <2 x float> %b.coerce, i32 1
  %4 = fmul float %3, %3
  %5 = fadd float %2, %4
  %6 = extractelement <2 x float> %a.coerce, i32 0
  %7 = fmul float %6, %1
  %8 = extractelement <2 x float> %a.coerce, i32 1
  %9 = fmul float %8, %3
  %10 = fadd float %7, %9
  %11 = fdiv float %10, %5
  %12 = fmul float %8, %1
  %13 = fmul float %6, %3
  %14 = fsub float %12, %13
  %15 = fdiv float %14, %5
  %16 = insertelement <2 x float> undef, float %11, i32 0
  %17 = insertelement <2 x float> %16, float %15, i32 1
  ret <2 x float> %17
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define <2 x float> @CCTK_Cmplx8Sin(<2 x float> %complex_number.coerce) #0 {
  %1 = extractelement <2 x float> %complex_number.coerce, i32 1
  %2 = fpext float %1 to double
  %3 = fcmp oeq float %1, 0.000000e+00
  %4 = extractelement <2 x float> %complex_number.coerce, i32 0
  %5 = fpext float %4 to double
  %6 = tail call double @sin(double %5) #5
  br i1 %3, label %14, label %7

; <label>:7                                       ; preds = %0
  %8 = tail call double @cosh(double %2) #5
  %9 = fmul double %6, %8
  %10 = tail call double @cos(double %5) #5
  %11 = tail call double @sinh(double %2) #5
  %12 = fmul double %10, %11
  %13 = fptrunc double %12 to float
  br label %14

; <label>:14                                      ; preds = %0, %7
  %result.sroa.3.0 = phi float [ %13, %7 ], [ 0.000000e+00, %0 ]
  %result.sroa.0.0.in = phi double [ %9, %7 ], [ %6, %0 ]
  %result.sroa.0.0 = fptrunc double %result.sroa.0.0.in to float
  %15 = insertelement <2 x float> undef, float %result.sroa.0.0, i32 0
  %16 = insertelement <2 x float> %15, float %result.sroa.3.0, i32 1
  ret <2 x float> %16
}

; Function Attrs: nounwind optsize readnone
declare double @sin(double) #2

; Function Attrs: nounwind optsize readnone
declare double @cosh(double) #2

; Function Attrs: nounwind optsize readnone
declare double @cos(double) #2

; Function Attrs: nounwind optsize readnone
declare double @sinh(double) #2

; Function Attrs: nounwind optsize readnone ssp uwtable
define <2 x float> @CCTK_Cmplx8Cos(<2 x float> %complex_number.coerce) #0 {
  %1 = extractelement <2 x float> %complex_number.coerce, i32 1
  %2 = fpext float %1 to double
  %3 = fcmp oeq float %1, 0.000000e+00
  %4 = extractelement <2 x float> %complex_number.coerce, i32 0
  %5 = fpext float %4 to double
  %6 = tail call double @cos(double %5) #5
  br i1 %3, label %14, label %7

; <label>:7                                       ; preds = %0
  %8 = tail call double @cosh(double %2) #5
  %9 = fmul double %6, %8
  %10 = tail call double @sin(double %5) #5
  %11 = tail call double @sinh(double %2) #5
  %12 = fmul double %10, %11
  %13 = fptrunc double %12 to float
  br label %14

; <label>:14                                      ; preds = %0, %7
  %result.sroa.3.0 = phi float [ %13, %7 ], [ 0.000000e+00, %0 ]
  %result.sroa.0.0.in = phi double [ %9, %7 ], [ %6, %0 ]
  %result.sroa.0.0 = fptrunc double %result.sroa.0.0.in to float
  %15 = insertelement <2 x float> undef, float %result.sroa.0.0, i32 0
  %16 = insertelement <2 x float> %15, float %result.sroa.3.0, i32 1
  ret <2 x float> %16
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define <2 x float> @CCTK_Cmplx8Exp(<2 x float> %complex_number.coerce) #0 {
  %1 = extractelement <2 x float> %complex_number.coerce, i32 0
  %2 = fpext float %1 to double
  %3 = tail call double @exp(double %2) #5
  %4 = fptrunc double %3 to float
  %5 = extractelement <2 x float> %complex_number.coerce, i32 1
  %6 = fpext float %4 to double
  %7 = fpext float %5 to double
  %8 = tail call double @cos(double %7) #5
  %9 = tail call double @sin(double %7) #5
  %10 = insertelement <2 x double> undef, double %6, i32 0
  %11 = insertelement <2 x double> %10, double %6, i32 1
  %12 = insertelement <2 x double> undef, double %8, i32 0
  %13 = insertelement <2 x double> %12, double %9, i32 1
  %14 = fmul <2 x double> %11, %13
  %15 = fptrunc <2 x double> %14 to <2 x float>
  ret <2 x float> %15
}

; Function Attrs: nounwind optsize readnone
declare double @exp(double) #2

; Function Attrs: nounwind optsize readnone ssp uwtable
define <2 x float> @CCTK_Cmplx8Sqrt(<2 x float> %complex_number.coerce) #0 {
  %1 = extractelement <2 x float> %complex_number.coerce, i32 0
  %2 = fcmp oeq float %1, 0.000000e+00
  %3 = extractelement <2 x float> %complex_number.coerce, i32 1
  %4 = fcmp oeq float %3, 0.000000e+00
  %or.cond = and i1 %2, %4
  br i1 %or.cond, label %47, label %5

; <label>:5                                       ; preds = %0
  %fabsf = tail call float @fabsf(float %1) #2
  %6 = fpext float %3 to double
  %fabsf1 = tail call float @fabsf(float %3) #2
  %7 = fcmp ult float %fabsf, %fabsf1
  br i1 %7, label %19, label %8

; <label>:8                                       ; preds = %5
  %9 = fdiv float %fabsf1, %fabsf
  %10 = fpext float %fabsf to double
  %11 = tail call double @sqrt(double %10) #5
  %12 = fpext float %9 to double
  %13 = fmul double %12, %12
  %14 = tail call double @sqrt(double %13) #5
  %15 = fadd double %14, 1.000000e+00
  %16 = fmul double %15, 5.000000e-01
  %17 = tail call double @sqrt(double %16) #5
  %18 = fmul double %11, %17
  br label %30

; <label>:19                                      ; preds = %5
  %20 = fdiv float %fabsf, %fabsf1
  %21 = fpext float %fabsf1 to double
  %22 = tail call double @sqrt(double %21) #5
  %23 = fpext float %20 to double
  %24 = fmul double %23, %23
  %25 = tail call double @sqrt(double %24) #5
  %26 = fadd double %23, %25
  %27 = fmul double %26, 5.000000e-01
  %28 = tail call double @sqrt(double %27) #5
  %29 = fmul double %22, %28
  br label %30

; <label>:30                                      ; preds = %19, %8
  %w.0.in = phi double [ %18, %8 ], [ %29, %19 ]
  %w.0 = fptrunc double %w.0.in to float
  %31 = fcmp ult float %1, 0.000000e+00
  br i1 %31, label %37, label %32

; <label>:32                                      ; preds = %30
  %33 = fpext float %w.0 to double
  %34 = fmul double %33, 2.000000e+00
  %35 = fdiv double %6, %34
  %36 = fptrunc double %35 to float
  br label %47

; <label>:37                                      ; preds = %30
  %38 = fcmp ult float %3, 0.000000e+00
  br i1 %38, label %39, label %41

; <label>:39                                      ; preds = %37
  %40 = fsub float -0.000000e+00, %w.0
  br label %41

; <label>:41                                      ; preds = %37, %39
  %42 = phi float [ %40, %39 ], [ %w.0, %37 ]
  %43 = fpext float %42 to double
  %44 = fmul double %43, 2.000000e+00
  %45 = fdiv double %6, %44
  %46 = fptrunc double %45 to float
  br label %47

; <label>:47                                      ; preds = %0, %32, %41
  %result.sroa.4.0 = phi float [ %36, %32 ], [ %42, %41 ], [ 0.000000e+00, %0 ]
  %result.sroa.0.0 = phi float [ %w.0, %32 ], [ %46, %41 ], [ 0.000000e+00, %0 ]
  %48 = insertelement <2 x float> undef, float %result.sroa.0.0, i32 0
  %49 = insertelement <2 x float> %48, float %result.sroa.4.0, i32 1
  ret <2 x float> %49
}

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #2

; Function Attrs: nounwind optsize readnone
declare double @sqrt(double) #2

; Function Attrs: nounwind optsize readnone ssp uwtable
define { double, double } @CCTK_Cmplx16(double %Re, double %Im) #0 {
  %1 = insertvalue { double, double } undef, double %Re, 0
  %2 = insertvalue { double, double } %1, double %Im, 1
  ret { double, double } %2
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define double @CCTK_Cmplx16Real(double %complex_number.coerce0, double %complex_number.coerce1) #0 {
  ret double %complex_number.coerce0
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define double @CCTK_Cmplx16Imag(double %complex_number.coerce0, double %complex_number.coerce1) #0 {
  ret double %complex_number.coerce1
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define { double, double } @CCTK_Cmplx16Conjg(double %complex_number.coerce0, double %complex_number.coerce1) #0 {
  %1 = fsub double -0.000000e+00, %complex_number.coerce1
  %2 = insertvalue { double, double } undef, double %complex_number.coerce0, 0
  %3 = insertvalue { double, double } %2, double %1, 1
  ret { double, double } %3
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define double @CCTK_Cmplx16Abs(double %complex_number.coerce0, double %complex_number.coerce1) #0 {
  %1 = tail call double @hypot(double %complex_number.coerce0, double %complex_number.coerce1) #5
  ret double %1
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define { double, double } @CCTK_Cmplx16Add(double %a.coerce0, double %a.coerce1, double %b.coerce0, double %b.coerce1) #0 {
  %1 = fadd double %a.coerce0, %b.coerce0
  %2 = fadd double %a.coerce1, %b.coerce1
  %3 = insertvalue { double, double } undef, double %1, 0
  %4 = insertvalue { double, double } %3, double %2, 1
  ret { double, double } %4
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define { double, double } @CCTK_Cmplx16Sub(double %a.coerce0, double %a.coerce1, double %b.coerce0, double %b.coerce1) #0 {
  %1 = fsub double %a.coerce0, %b.coerce0
  %2 = fsub double %a.coerce1, %b.coerce1
  %3 = insertvalue { double, double } undef, double %1, 0
  %4 = insertvalue { double, double } %3, double %2, 1
  ret { double, double } %4
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define { double, double } @CCTK_Cmplx16Mul(double %a.coerce0, double %a.coerce1, double %b.coerce0, double %b.coerce1) #0 {
  %1 = fmul double %a.coerce0, %b.coerce0
  %2 = fmul double %a.coerce1, %b.coerce1
  %3 = fsub double %1, %2
  %4 = fmul double %a.coerce1, %b.coerce0
  %5 = fmul double %a.coerce0, %b.coerce1
  %6 = fadd double %4, %5
  %7 = insertvalue { double, double } undef, double %3, 0
  %8 = insertvalue { double, double } %7, double %6, 1
  ret { double, double } %8
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define { double, double } @CCTK_Cmplx16Div(double %a.coerce0, double %a.coerce1, double %b.coerce0, double %b.coerce1) #0 {
  %1 = fmul double %b.coerce0, %b.coerce0
  %2 = fmul double %b.coerce1, %b.coerce1
  %3 = fadd double %1, %2
  %4 = fmul double %a.coerce0, %b.coerce0
  %5 = fmul double %a.coerce1, %b.coerce1
  %6 = fadd double %4, %5
  %7 = fdiv double %6, %3
  %8 = fmul double %a.coerce1, %b.coerce0
  %9 = fmul double %a.coerce0, %b.coerce1
  %10 = fsub double %8, %9
  %11 = fdiv double %10, %3
  %12 = insertvalue { double, double } undef, double %7, 0
  %13 = insertvalue { double, double } %12, double %11, 1
  ret { double, double } %13
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define { double, double } @CCTK_Cmplx16Sin(double %complex_number.coerce0, double %complex_number.coerce1) #0 {
  %1 = fcmp oeq double %complex_number.coerce1, 0.000000e+00
  %2 = tail call double @sin(double %complex_number.coerce0) #5
  br i1 %1, label %9, label %3

; <label>:3                                       ; preds = %0
  %4 = tail call double @cosh(double %complex_number.coerce1) #5
  %5 = fmul double %2, %4
  %6 = tail call double @cos(double %complex_number.coerce0) #5
  %7 = tail call double @sinh(double %complex_number.coerce1) #5
  %8 = fmul double %6, %7
  br label %9

; <label>:9                                       ; preds = %0, %3
  %result.sroa.3.0 = phi double [ %8, %3 ], [ 0.000000e+00, %0 ]
  %result.sroa.0.0 = phi double [ %5, %3 ], [ %2, %0 ]
  %10 = insertvalue { double, double } undef, double %result.sroa.0.0, 0
  %11 = insertvalue { double, double } %10, double %result.sroa.3.0, 1
  ret { double, double } %11
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define { double, double } @CCTK_Cmplx16Cos(double %complex_number.coerce0, double %complex_number.coerce1) #0 {
  %1 = fcmp oeq double %complex_number.coerce1, 0.000000e+00
  %2 = tail call double @cos(double %complex_number.coerce0) #5
  br i1 %1, label %9, label %3

; <label>:3                                       ; preds = %0
  %4 = tail call double @cosh(double %complex_number.coerce1) #5
  %5 = fmul double %2, %4
  %6 = tail call double @sin(double %complex_number.coerce0) #5
  %7 = tail call double @sinh(double %complex_number.coerce1) #5
  %8 = fmul double %6, %7
  br label %9

; <label>:9                                       ; preds = %0, %3
  %result.sroa.3.0 = phi double [ %8, %3 ], [ 0.000000e+00, %0 ]
  %result.sroa.0.0 = phi double [ %5, %3 ], [ %2, %0 ]
  %10 = insertvalue { double, double } undef, double %result.sroa.0.0, 0
  %11 = insertvalue { double, double } %10, double %result.sroa.3.0, 1
  ret { double, double } %11
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define { double, double } @CCTK_Cmplx16Exp(double %complex_number.coerce0, double %complex_number.coerce1) #0 {
  %1 = tail call double @exp(double %complex_number.coerce0) #5
  %2 = tail call double @cos(double %complex_number.coerce1) #5
  %3 = fmul double %1, %2
  %4 = tail call double @sin(double %complex_number.coerce1) #5
  %5 = fmul double %1, %4
  %6 = insertvalue { double, double } undef, double %3, 0
  %7 = insertvalue { double, double } %6, double %5, 1
  ret { double, double } %7
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define { double, double } @CCTK_Cmplx16Sqrt(double %complex_number.coerce0, double %complex_number.coerce1) #0 {
  %1 = fcmp oeq double %complex_number.coerce0, 0.000000e+00
  %2 = fcmp oeq double %complex_number.coerce1, 0.000000e+00
  %or.cond = and i1 %1, %2
  br i1 %or.cond, label %38, label %3

; <label>:3                                       ; preds = %0
  %4 = tail call double @fabs(double %complex_number.coerce0) #5
  %5 = tail call double @fabs(double %complex_number.coerce1) #5
  %6 = fcmp ult double %4, %5
  br i1 %6, label %16, label %7

; <label>:7                                       ; preds = %3
  %8 = fdiv double %5, %4
  %9 = tail call double @sqrt(double %4) #5
  %10 = fmul double %8, %8
  %11 = tail call double @sqrt(double %10) #5
  %12 = fadd double %11, 1.000000e+00
  %13 = fmul double %12, 5.000000e-01
  %14 = tail call double @sqrt(double %13) #5
  %15 = fmul double %9, %14
  br label %25

; <label>:16                                      ; preds = %3
  %17 = fdiv double %4, %5
  %18 = tail call double @sqrt(double %5) #5
  %19 = fmul double %17, %17
  %20 = tail call double @sqrt(double %19) #5
  %21 = fadd double %17, %20
  %22 = fmul double %21, 5.000000e-01
  %23 = tail call double @sqrt(double %22) #5
  %24 = fmul double %18, %23
  br label %25

; <label>:25                                      ; preds = %16, %7
  %w.0 = phi double [ %15, %7 ], [ %24, %16 ]
  %26 = fcmp ult double %complex_number.coerce0, 0.000000e+00
  br i1 %26, label %30, label %27

; <label>:27                                      ; preds = %25
  %28 = fmul double %w.0, 2.000000e+00
  %29 = fdiv double %complex_number.coerce1, %28
  br label %38

; <label>:30                                      ; preds = %25
  %31 = fcmp ult double %complex_number.coerce1, 0.000000e+00
  br i1 %31, label %32, label %34

; <label>:32                                      ; preds = %30
  %33 = fsub double -0.000000e+00, %w.0
  br label %34

; <label>:34                                      ; preds = %30, %32
  %35 = phi double [ %33, %32 ], [ %w.0, %30 ]
  %36 = fmul double %35, 2.000000e+00
  %37 = fdiv double %complex_number.coerce1, %36
  br label %38

; <label>:38                                      ; preds = %0, %27, %34
  %result.sroa.4.0 = phi double [ %29, %27 ], [ %35, %34 ], [ 0.000000e+00, %0 ]
  %result.sroa.0.0 = phi double [ %w.0, %27 ], [ %37, %34 ], [ 0.000000e+00, %0 ]
  %39 = insertvalue { double, double } undef, double %result.sroa.0.0, 0
  %40 = insertvalue { double, double } %39, double %result.sroa.4.0, 1
  ret { double, double } %40
}

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTK_Cmplx32(%struct.CCTK_COMPLEX32* noalias nocapture sret %agg.result, x86_fp80 %Re, x86_fp80 %Im) #3 {
  %1 = getelementptr inbounds %struct.CCTK_COMPLEX32* %agg.result, i64 0, i32 0
  store x86_fp80 %Re, x86_fp80* %1, align 16
  %2 = getelementptr inbounds %struct.CCTK_COMPLEX32* %agg.result, i64 0, i32 1
  store x86_fp80 %Im, x86_fp80* %2, align 16
  ret void
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define x86_fp80 @CCTK_Cmplx32Real(%struct.CCTK_COMPLEX32* byval nocapture readonly align 16 %complex_number) #4 {
  %1 = getelementptr inbounds %struct.CCTK_COMPLEX32* %complex_number, i64 0, i32 0
  %2 = load x86_fp80* %1, align 16, !tbaa !2
  ret x86_fp80 %2
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define x86_fp80 @CCTK_Cmplx32Imag(%struct.CCTK_COMPLEX32* byval nocapture readonly align 16 %complex_number) #4 {
  %1 = getelementptr inbounds %struct.CCTK_COMPLEX32* %complex_number, i64 0, i32 1
  %2 = load x86_fp80* %1, align 16, !tbaa !7
  ret x86_fp80 %2
}

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTK_Cmplx32Conjg(%struct.CCTK_COMPLEX32* noalias nocapture sret %agg.result, %struct.CCTK_COMPLEX32* byval nocapture readonly align 16 %complex_number) #3 {
  %1 = getelementptr inbounds %struct.CCTK_COMPLEX32* %complex_number, i64 0, i32 0
  %2 = load x86_fp80* %1, align 16, !tbaa !2
  %3 = getelementptr inbounds %struct.CCTK_COMPLEX32* %complex_number, i64 0, i32 1
  %4 = load x86_fp80* %3, align 16, !tbaa !7
  %5 = fsub x86_fp80 0xK80000000000000000000, %4
  %6 = getelementptr inbounds %struct.CCTK_COMPLEX32* %agg.result, i64 0, i32 0
  store x86_fp80 %2, x86_fp80* %6, align 16
  %7 = getelementptr inbounds %struct.CCTK_COMPLEX32* %agg.result, i64 0, i32 1
  store x86_fp80 %5, x86_fp80* %7, align 16
  ret void
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define x86_fp80 @CCTK_Cmplx32Abs(%struct.CCTK_COMPLEX32* byval nocapture readonly align 16 %complex_number) #4 {
  %1 = getelementptr inbounds %struct.CCTK_COMPLEX32* %complex_number, i64 0, i32 0
  %2 = load x86_fp80* %1, align 16, !tbaa !2
  %3 = fptrunc x86_fp80 %2 to double
  %4 = getelementptr inbounds %struct.CCTK_COMPLEX32* %complex_number, i64 0, i32 1
  %5 = load x86_fp80* %4, align 16, !tbaa !7
  %6 = fptrunc x86_fp80 %5 to double
  %7 = tail call double @hypot(double %3, double %6) #5
  %8 = fpext double %7 to x86_fp80
  ret x86_fp80 %8
}

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTK_Cmplx32Add(%struct.CCTK_COMPLEX32* noalias nocapture sret %agg.result, %struct.CCTK_COMPLEX32* byval nocapture readonly align 16 %a, %struct.CCTK_COMPLEX32* byval nocapture readonly align 16 %b) #3 {
  %1 = getelementptr inbounds %struct.CCTK_COMPLEX32* %a, i64 0, i32 0
  %2 = load x86_fp80* %1, align 16, !tbaa !2
  %3 = getelementptr inbounds %struct.CCTK_COMPLEX32* %b, i64 0, i32 0
  %4 = load x86_fp80* %3, align 16, !tbaa !2
  %5 = fadd x86_fp80 %2, %4
  %6 = getelementptr inbounds %struct.CCTK_COMPLEX32* %a, i64 0, i32 1
  %7 = load x86_fp80* %6, align 16, !tbaa !7
  %8 = getelementptr inbounds %struct.CCTK_COMPLEX32* %b, i64 0, i32 1
  %9 = load x86_fp80* %8, align 16, !tbaa !7
  %10 = fadd x86_fp80 %7, %9
  %11 = getelementptr inbounds %struct.CCTK_COMPLEX32* %agg.result, i64 0, i32 0
  store x86_fp80 %5, x86_fp80* %11, align 16
  %12 = getelementptr inbounds %struct.CCTK_COMPLEX32* %agg.result, i64 0, i32 1
  store x86_fp80 %10, x86_fp80* %12, align 16
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTK_Cmplx32Sub(%struct.CCTK_COMPLEX32* noalias nocapture sret %agg.result, %struct.CCTK_COMPLEX32* byval nocapture readonly align 16 %a, %struct.CCTK_COMPLEX32* byval nocapture readonly align 16 %b) #3 {
  %1 = getelementptr inbounds %struct.CCTK_COMPLEX32* %a, i64 0, i32 0
  %2 = load x86_fp80* %1, align 16, !tbaa !2
  %3 = getelementptr inbounds %struct.CCTK_COMPLEX32* %b, i64 0, i32 0
  %4 = load x86_fp80* %3, align 16, !tbaa !2
  %5 = fsub x86_fp80 %2, %4
  %6 = getelementptr inbounds %struct.CCTK_COMPLEX32* %a, i64 0, i32 1
  %7 = load x86_fp80* %6, align 16, !tbaa !7
  %8 = getelementptr inbounds %struct.CCTK_COMPLEX32* %b, i64 0, i32 1
  %9 = load x86_fp80* %8, align 16, !tbaa !7
  %10 = fsub x86_fp80 %7, %9
  %11 = getelementptr inbounds %struct.CCTK_COMPLEX32* %agg.result, i64 0, i32 0
  store x86_fp80 %5, x86_fp80* %11, align 16
  %12 = getelementptr inbounds %struct.CCTK_COMPLEX32* %agg.result, i64 0, i32 1
  store x86_fp80 %10, x86_fp80* %12, align 16
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTK_Cmplx32Mul(%struct.CCTK_COMPLEX32* noalias nocapture sret %agg.result, %struct.CCTK_COMPLEX32* byval nocapture readonly align 16 %a, %struct.CCTK_COMPLEX32* byval nocapture readonly align 16 %b) #3 {
  %1 = getelementptr inbounds %struct.CCTK_COMPLEX32* %a, i64 0, i32 0
  %2 = load x86_fp80* %1, align 16, !tbaa !2
  %3 = getelementptr inbounds %struct.CCTK_COMPLEX32* %b, i64 0, i32 0
  %4 = load x86_fp80* %3, align 16, !tbaa !2
  %5 = fmul x86_fp80 %2, %4
  %6 = getelementptr inbounds %struct.CCTK_COMPLEX32* %a, i64 0, i32 1
  %7 = load x86_fp80* %6, align 16, !tbaa !7
  %8 = getelementptr inbounds %struct.CCTK_COMPLEX32* %b, i64 0, i32 1
  %9 = load x86_fp80* %8, align 16, !tbaa !7
  %10 = fmul x86_fp80 %7, %9
  %11 = fsub x86_fp80 %5, %10
  %12 = fmul x86_fp80 %4, %7
  %13 = fmul x86_fp80 %2, %9
  %14 = fadd x86_fp80 %12, %13
  %15 = getelementptr inbounds %struct.CCTK_COMPLEX32* %agg.result, i64 0, i32 0
  store x86_fp80 %11, x86_fp80* %15, align 16
  %16 = getelementptr inbounds %struct.CCTK_COMPLEX32* %agg.result, i64 0, i32 1
  store x86_fp80 %14, x86_fp80* %16, align 16
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTK_Cmplx32Div(%struct.CCTK_COMPLEX32* noalias nocapture sret %agg.result, %struct.CCTK_COMPLEX32* byval nocapture readonly align 16 %a, %struct.CCTK_COMPLEX32* byval nocapture readonly align 16 %b) #3 {
  %1 = getelementptr inbounds %struct.CCTK_COMPLEX32* %b, i64 0, i32 0
  %2 = load x86_fp80* %1, align 16, !tbaa !2
  %3 = fmul x86_fp80 %2, %2
  %4 = getelementptr inbounds %struct.CCTK_COMPLEX32* %b, i64 0, i32 1
  %5 = load x86_fp80* %4, align 16, !tbaa !7
  %6 = fmul x86_fp80 %5, %5
  %7 = fadd x86_fp80 %3, %6
  %8 = getelementptr inbounds %struct.CCTK_COMPLEX32* %a, i64 0, i32 0
  %9 = load x86_fp80* %8, align 16, !tbaa !2
  %10 = fmul x86_fp80 %2, %9
  %11 = getelementptr inbounds %struct.CCTK_COMPLEX32* %a, i64 0, i32 1
  %12 = load x86_fp80* %11, align 16, !tbaa !7
  %13 = fmul x86_fp80 %5, %12
  %14 = fadd x86_fp80 %10, %13
  %15 = fdiv x86_fp80 %14, %7
  %16 = fmul x86_fp80 %2, %12
  %17 = fmul x86_fp80 %5, %9
  %18 = fsub x86_fp80 %16, %17
  %19 = fdiv x86_fp80 %18, %7
  %20 = getelementptr inbounds %struct.CCTK_COMPLEX32* %agg.result, i64 0, i32 0
  store x86_fp80 %15, x86_fp80* %20, align 16
  %21 = getelementptr inbounds %struct.CCTK_COMPLEX32* %agg.result, i64 0, i32 1
  store x86_fp80 %19, x86_fp80* %21, align 16
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTK_Cmplx32Sin(%struct.CCTK_COMPLEX32* noalias nocapture sret %agg.result, %struct.CCTK_COMPLEX32* byval nocapture readonly align 16 %complex_number) #3 {
  %result.sroa.3 = alloca [6 x i8], align 2
  %result.sroa.5 = alloca [6 x i8], align 2
  %1 = getelementptr inbounds %struct.CCTK_COMPLEX32* %complex_number, i64 0, i32 1
  %2 = load x86_fp80* %1, align 16, !tbaa !7
  %3 = fcmp oeq x86_fp80 %2, 0xK00000000000000000000
  %4 = getelementptr inbounds %struct.CCTK_COMPLEX32* %complex_number, i64 0, i32 0
  %5 = load x86_fp80* %4, align 16, !tbaa !2
  %6 = fptrunc x86_fp80 %5 to double
  %7 = tail call double @sin(double %6) #5
  br i1 %3, label %16, label %8

; <label>:8                                       ; preds = %0
  %9 = fptrunc x86_fp80 %2 to double
  %10 = tail call double @cosh(double %9) #5
  %11 = fmul double %7, %10
  %12 = tail call double @cos(double %6) #5
  %13 = tail call double @sinh(double %9) #5
  %14 = fmul double %12, %13
  %15 = fpext double %14 to x86_fp80
  br label %16

; <label>:16                                      ; preds = %0, %8
  %result.sroa.31.0 = phi x86_fp80 [ %15, %8 ], [ 0xK00000000000000000000, %0 ]
  %result.sroa.0.0.in = phi double [ %11, %8 ], [ %7, %0 ]
  %result.sroa.0.0 = fpext double %result.sroa.0.0.in to x86_fp80
  %17 = getelementptr inbounds %struct.CCTK_COMPLEX32* %agg.result, i64 0, i32 0
  store x86_fp80 %result.sroa.0.0, x86_fp80* %17, align 16
  %18 = bitcast %struct.CCTK_COMPLEX32* %agg.result to i8*
  %19 = getelementptr inbounds i8* %18, i64 10
  %20 = getelementptr inbounds [6 x i8]* %result.sroa.3, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 6, i32 2, i1 false)
  %21 = getelementptr inbounds %struct.CCTK_COMPLEX32* %agg.result, i64 0, i32 1
  store x86_fp80 %result.sroa.31.0, x86_fp80* %21, align 16
  %22 = getelementptr inbounds i8* %18, i64 26
  %23 = getelementptr inbounds [6 x i8]* %result.sroa.5, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 6, i32 2, i1 false)
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTK_Cmplx32Cos(%struct.CCTK_COMPLEX32* noalias nocapture sret %agg.result, %struct.CCTK_COMPLEX32* byval nocapture readonly align 16 %complex_number) #3 {
  %result.sroa.3 = alloca [6 x i8], align 2
  %result.sroa.5 = alloca [6 x i8], align 2
  %1 = getelementptr inbounds %struct.CCTK_COMPLEX32* %complex_number, i64 0, i32 1
  %2 = load x86_fp80* %1, align 16, !tbaa !7
  %3 = fcmp oeq x86_fp80 %2, 0xK00000000000000000000
  %4 = getelementptr inbounds %struct.CCTK_COMPLEX32* %complex_number, i64 0, i32 0
  %5 = load x86_fp80* %4, align 16, !tbaa !2
  %6 = fptrunc x86_fp80 %5 to double
  %7 = tail call double @cos(double %6) #5
  br i1 %3, label %16, label %8

; <label>:8                                       ; preds = %0
  %9 = fptrunc x86_fp80 %2 to double
  %10 = tail call double @cosh(double %9) #5
  %11 = fmul double %7, %10
  %12 = tail call double @sin(double %6) #5
  %13 = tail call double @sinh(double %9) #5
  %14 = fmul double %12, %13
  %15 = fpext double %14 to x86_fp80
  br label %16

; <label>:16                                      ; preds = %0, %8
  %result.sroa.31.0 = phi x86_fp80 [ %15, %8 ], [ 0xK00000000000000000000, %0 ]
  %result.sroa.0.0.in = phi double [ %11, %8 ], [ %7, %0 ]
  %result.sroa.0.0 = fpext double %result.sroa.0.0.in to x86_fp80
  %17 = getelementptr inbounds %struct.CCTK_COMPLEX32* %agg.result, i64 0, i32 0
  store x86_fp80 %result.sroa.0.0, x86_fp80* %17, align 16
  %18 = bitcast %struct.CCTK_COMPLEX32* %agg.result to i8*
  %19 = getelementptr inbounds i8* %18, i64 10
  %20 = getelementptr inbounds [6 x i8]* %result.sroa.3, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 6, i32 2, i1 false)
  %21 = getelementptr inbounds %struct.CCTK_COMPLEX32* %agg.result, i64 0, i32 1
  store x86_fp80 %result.sroa.31.0, x86_fp80* %21, align 16
  %22 = getelementptr inbounds i8* %18, i64 26
  %23 = getelementptr inbounds [6 x i8]* %result.sroa.5, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 6, i32 2, i1 false)
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTK_Cmplx32Exp(%struct.CCTK_COMPLEX32* noalias nocapture sret %agg.result, %struct.CCTK_COMPLEX32* byval nocapture readonly align 16 %complex_number) #3 {
  %1 = getelementptr inbounds %struct.CCTK_COMPLEX32* %complex_number, i64 0, i32 0
  %2 = load x86_fp80* %1, align 16, !tbaa !2
  %3 = fptrunc x86_fp80 %2 to double
  %4 = tail call double @exp(double %3) #5
  %5 = fpext double %4 to x86_fp80
  %6 = getelementptr inbounds %struct.CCTK_COMPLEX32* %complex_number, i64 0, i32 1
  %7 = load x86_fp80* %6, align 16, !tbaa !7
  %8 = fptrunc x86_fp80 %7 to double
  %9 = tail call double @cos(double %8) #5
  %10 = fpext double %9 to x86_fp80
  %11 = fmul x86_fp80 %5, %10
  %12 = tail call double @sin(double %8) #5
  %13 = fpext double %12 to x86_fp80
  %14 = fmul x86_fp80 %5, %13
  %15 = getelementptr inbounds %struct.CCTK_COMPLEX32* %agg.result, i64 0, i32 0
  store x86_fp80 %11, x86_fp80* %15, align 16
  %16 = getelementptr inbounds %struct.CCTK_COMPLEX32* %agg.result, i64 0, i32 1
  store x86_fp80 %14, x86_fp80* %16, align 16
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTK_Cmplx32Sqrt(%struct.CCTK_COMPLEX32* noalias nocapture sret %agg.result, %struct.CCTK_COMPLEX32* byval nocapture readonly align 16 %complex_number) #3 {
  %result.sroa.4 = alloca [6 x i8], align 2
  %result.sroa.7 = alloca [6 x i8], align 2
  %1 = getelementptr inbounds %struct.CCTK_COMPLEX32* %complex_number, i64 0, i32 0
  %2 = load x86_fp80* %1, align 16, !tbaa !2
  %3 = fcmp oeq x86_fp80 %2, 0xK00000000000000000000
  %4 = getelementptr inbounds %struct.CCTK_COMPLEX32* %complex_number, i64 0, i32 1
  %5 = load x86_fp80* %4, align 16, !tbaa !7
  %6 = fcmp oeq x86_fp80 %5, 0xK00000000000000000000
  %or.cond = and i1 %3, %6
  br i1 %or.cond, label %49, label %._crit_edge

._crit_edge:                                      ; preds = %0
  %7 = fptrunc x86_fp80 %2 to double
  %8 = tail call double @fabs(double %7) #5
  %9 = fpext double %8 to x86_fp80
  %10 = fptrunc x86_fp80 %5 to double
  %11 = tail call double @fabs(double %10) #5
  %12 = fpext double %11 to x86_fp80
  %13 = fcmp ult double %8, %11
  br i1 %13, label %24, label %14

; <label>:14                                      ; preds = %._crit_edge
  %15 = fdiv x86_fp80 %12, %9
  %16 = tail call double @sqrt(double %8) #5
  %17 = fmul x86_fp80 %15, %15
  %18 = fptrunc x86_fp80 %17 to double
  %19 = tail call double @sqrt(double %18) #5
  %20 = fadd double %19, 1.000000e+00
  %21 = fmul double %20, 5.000000e-01
  %22 = tail call double @sqrt(double %21) #5
  %23 = fmul double %16, %22
  br label %36

; <label>:24                                      ; preds = %._crit_edge
  %25 = fdiv x86_fp80 %9, %12
  %26 = tail call double @sqrt(double %11) #5
  %27 = fmul x86_fp80 %25, %25
  %28 = fptrunc x86_fp80 %27 to double
  %29 = tail call double @sqrt(double %28) #5
  %30 = fpext double %29 to x86_fp80
  %31 = fadd x86_fp80 %25, %30
  %32 = fmul x86_fp80 %31, 0xK3FFE8000000000000000
  %33 = fptrunc x86_fp80 %32 to double
  %34 = tail call double @sqrt(double %33) #5
  %35 = fmul double %26, %34
  br label %36

; <label>:36                                      ; preds = %24, %14
  %w.0.in = phi double [ %23, %14 ], [ %35, %24 ]
  %w.0 = fpext double %w.0.in to x86_fp80
  %37 = fcmp ult x86_fp80 %2, 0xK00000000000000000000
  br i1 %37, label %41, label %38

; <label>:38                                      ; preds = %36
  %39 = fmul x86_fp80 %w.0, 0xK40008000000000000000
  %40 = fdiv x86_fp80 %5, %39
  br label %49

; <label>:41                                      ; preds = %36
  %42 = fcmp ult x86_fp80 %5, 0xK00000000000000000000
  br i1 %42, label %43, label %45

; <label>:43                                      ; preds = %41
  %44 = fsub x86_fp80 0xK80000000000000000000, %w.0
  br label %45

; <label>:45                                      ; preds = %41, %43
  %46 = phi x86_fp80 [ %44, %43 ], [ %w.0, %41 ]
  %47 = fmul x86_fp80 %46, 0xK40008000000000000000
  %48 = fdiv x86_fp80 %5, %47
  br label %49

; <label>:49                                      ; preds = %0, %38, %45
  %result.sroa.41.0 = phi x86_fp80 [ %40, %38 ], [ %46, %45 ], [ 0xK00000000000000000000, %0 ]
  %result.sroa.0.0 = phi x86_fp80 [ %w.0, %38 ], [ %48, %45 ], [ 0xK00000000000000000000, %0 ]
  %50 = getelementptr inbounds %struct.CCTK_COMPLEX32* %agg.result, i64 0, i32 0
  store x86_fp80 %result.sroa.0.0, x86_fp80* %50, align 16
  %51 = bitcast %struct.CCTK_COMPLEX32* %agg.result to i8*
  %52 = getelementptr inbounds i8* %51, i64 10
  %53 = getelementptr inbounds [6 x i8]* %result.sroa.4, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %52, i8* %53, i64 6, i32 2, i1 false)
  %54 = getelementptr inbounds %struct.CCTK_COMPLEX32* %agg.result, i64 0, i32 1
  store x86_fp80 %result.sroa.41.0, x86_fp80* %54, align 16
  %55 = getelementptr inbounds i8* %51, i64 26
  %56 = getelementptr inbounds [6 x i8]* %result.sroa.7, i64 0, i64 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %55, i8* %56, i64 6, i32 2, i1 false)
  ret void
}

declare float @fabsf(float)

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!2 = !{!3, !4, i64 0}
!3 = !{!"", !4, i64 0, !4, i64 16}
!4 = !{!"long double", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!3, !4, i64 16}
