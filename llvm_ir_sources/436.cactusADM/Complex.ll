; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/Complex.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.CCTK_COMPLEX8 = type { float, float }
%struct.CCTK_COMPLEX16 = type { double, double }
%struct.CCTK_COMPLEX32 = type { x86_fp80, x86_fp80 }

@.str = private unnamed_addr constant [83 x i8] c"$Header: /cactus/Cactus/src/main/Complex.c,v 1.11 2001/12/12 13:13:45 tradke Exp $\00", align 1

; Function Attrs: nounwind optsize readnone ssp uwtable
define i8* @CCTKi_version_main_Complex_c() #0 {
  ret i8* getelementptr inbounds ([83 x i8]* @.str, i64 0, i64 0), !dbg !242
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define <2 x float> @CCTK_Cmplx8(float %Re, float %Im) #0 {
  tail call void @llvm.dbg.value(metadata float %Re, i64 0, metadata !21, metadata !243), !dbg !244
  tail call void @llvm.dbg.value(metadata float %Im, i64 0, metadata !22, metadata !243), !dbg !244
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX8* undef, metadata !23, metadata !243), !dbg !244
  tail call void @llvm.dbg.value(metadata float %Re, i64 0, metadata !23, metadata !245), !dbg !244
  tail call void @llvm.dbg.value(metadata float %Im, i64 0, metadata !23, metadata !246), !dbg !244
  %1 = insertelement <2 x float> undef, float %Re, i32 0, !dbg !244
  %2 = insertelement <2 x float> %1, float %Im, i32 1, !dbg !244
  ret <2 x float> %2, !dbg !244
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind optsize readnone ssp uwtable
define float @CCTK_Cmplx8Real(<2 x float> %complex_number.coerce) #0 {
  tail call void @llvm.dbg.value(metadata <2 x float> %complex_number.coerce, i64 0, metadata !28, metadata !243), !dbg !247
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX8* undef, metadata !28, metadata !243), !dbg !247
  %1 = extractelement <2 x float> %complex_number.coerce, i32 0, !dbg !247
  ret float %1, !dbg !247
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define float @CCTK_Cmplx8Imag(<2 x float> %complex_number.coerce) #0 {
  tail call void @llvm.dbg.value(metadata <2 x float> %complex_number.coerce, i64 0, metadata !31, metadata !243), !dbg !248
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX8* undef, metadata !31, metadata !243), !dbg !248
  %1 = extractelement <2 x float> %complex_number.coerce, i32 1, !dbg !248
  ret float %1, !dbg !248
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define <2 x float> @CCTK_Cmplx8Conjg(<2 x float> %complex_number.coerce) #0 {
  tail call void @llvm.dbg.value(metadata <2 x float> %complex_number.coerce, i64 0, metadata !36, metadata !243), !dbg !249
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX8* undef, metadata !36, metadata !243), !dbg !249
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX8* undef, metadata !37, metadata !243), !dbg !249
  %1 = extractelement <2 x float> %complex_number.coerce, i32 0, !dbg !249
  tail call void @llvm.dbg.value(metadata float %1, i64 0, metadata !37, metadata !245), !dbg !249
  %2 = extractelement <2 x float> %complex_number.coerce, i32 1, !dbg !249
  %3 = fsub float -0.000000e+00, %2, !dbg !249
  tail call void @llvm.dbg.value(metadata float %3, i64 0, metadata !37, metadata !246), !dbg !249
  %4 = insertelement <2 x float> undef, float %1, i32 0, !dbg !249
  %5 = insertelement <2 x float> %4, float %3, i32 1, !dbg !249
  ret <2 x float> %5, !dbg !249
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define float @CCTK_Cmplx8Abs(<2 x float> %complex_number.coerce) #0 {
  tail call void @llvm.dbg.value(metadata <2 x float> %complex_number.coerce, i64 0, metadata !40, metadata !243), !dbg !250
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX8* undef, metadata !40, metadata !243), !dbg !250
  %1 = extractelement <2 x float> %complex_number.coerce, i32 0, !dbg !250
  %2 = fpext float %1 to double, !dbg !250
  %3 = extractelement <2 x float> %complex_number.coerce, i32 1, !dbg !250
  %4 = fpext float %3 to double, !dbg !250
  %5 = tail call double @hypot(double %2, double %4) #6, !dbg !250
  %6 = fptrunc double %5 to float, !dbg !250
  ret float %6, !dbg !250
}

; Function Attrs: nounwind optsize readnone
declare double @hypot(double, double) #3

; Function Attrs: nounwind optsize readnone ssp uwtable
define <2 x float> @CCTK_Cmplx8Add(<2 x float> %a.coerce, <2 x float> %b.coerce) #0 {
  tail call void @llvm.dbg.value(metadata <2 x float> %a.coerce, i64 0, metadata !45, metadata !243), !dbg !251
  tail call void @llvm.dbg.value(metadata <2 x float> %b.coerce, i64 0, metadata !46, metadata !243), !dbg !251
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX8* undef, metadata !45, metadata !243), !dbg !251
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX8* undef, metadata !46, metadata !243), !dbg !251
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX8* undef, metadata !47, metadata !243), !dbg !251
  tail call void @llvm.dbg.value(metadata float undef, i64 0, metadata !47, metadata !245), !dbg !251
  %1 = fadd <2 x float> %a.coerce, %b.coerce, !dbg !251
  tail call void @llvm.dbg.value(metadata float undef, i64 0, metadata !47, metadata !246), !dbg !251
  ret <2 x float> %1, !dbg !251
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define <2 x float> @CCTK_Cmplx8Sub(<2 x float> %a.coerce, <2 x float> %b.coerce) #0 {
  tail call void @llvm.dbg.value(metadata <2 x float> %a.coerce, i64 0, metadata !50, metadata !243), !dbg !252
  tail call void @llvm.dbg.value(metadata <2 x float> %b.coerce, i64 0, metadata !51, metadata !243), !dbg !252
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX8* undef, metadata !50, metadata !243), !dbg !252
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX8* undef, metadata !51, metadata !243), !dbg !252
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX8* undef, metadata !52, metadata !243), !dbg !252
  tail call void @llvm.dbg.value(metadata float undef, i64 0, metadata !52, metadata !245), !dbg !252
  %1 = fsub <2 x float> %a.coerce, %b.coerce, !dbg !252
  tail call void @llvm.dbg.value(metadata float undef, i64 0, metadata !52, metadata !246), !dbg !252
  ret <2 x float> %1, !dbg !252
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define <2 x float> @CCTK_Cmplx8Mul(<2 x float> %a.coerce, <2 x float> %b.coerce) #0 {
  tail call void @llvm.dbg.value(metadata <2 x float> %a.coerce, i64 0, metadata !55, metadata !243), !dbg !253
  tail call void @llvm.dbg.value(metadata <2 x float> %b.coerce, i64 0, metadata !56, metadata !243), !dbg !253
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX8* undef, metadata !55, metadata !243), !dbg !253
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX8* undef, metadata !56, metadata !243), !dbg !253
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX8* undef, metadata !57, metadata !243), !dbg !253
  %1 = extractelement <2 x float> %a.coerce, i32 0, !dbg !253
  %2 = extractelement <2 x float> %b.coerce, i32 0, !dbg !253
  %3 = fmul float %1, %2, !dbg !253
  %4 = extractelement <2 x float> %a.coerce, i32 1, !dbg !253
  %5 = extractelement <2 x float> %b.coerce, i32 1, !dbg !253
  %6 = fmul float %4, %5, !dbg !253
  %7 = fsub float %3, %6, !dbg !253
  tail call void @llvm.dbg.value(metadata float %7, i64 0, metadata !57, metadata !245), !dbg !253
  %8 = fmul float %4, %2, !dbg !253
  %9 = fmul float %1, %5, !dbg !253
  %10 = fadd float %8, %9, !dbg !253
  tail call void @llvm.dbg.value(metadata float %10, i64 0, metadata !57, metadata !246), !dbg !253
  %11 = insertelement <2 x float> undef, float %7, i32 0, !dbg !253
  %12 = insertelement <2 x float> %11, float %10, i32 1, !dbg !253
  ret <2 x float> %12, !dbg !253
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define <2 x float> @CCTK_Cmplx8Div(<2 x float> %a.coerce, <2 x float> %b.coerce) #0 {
  tail call void @llvm.dbg.value(metadata <2 x float> %a.coerce, i64 0, metadata !60, metadata !243), !dbg !254
  tail call void @llvm.dbg.value(metadata <2 x float> %b.coerce, i64 0, metadata !61, metadata !243), !dbg !254
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX8* undef, metadata !60, metadata !243), !dbg !254
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX8* undef, metadata !61, metadata !243), !dbg !254
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX8* undef, metadata !63, metadata !243), !dbg !254
  %1 = extractelement <2 x float> %b.coerce, i32 0, !dbg !254
  %2 = fmul float %1, %1, !dbg !254
  %3 = extractelement <2 x float> %b.coerce, i32 1, !dbg !254
  %4 = fmul float %3, %3, !dbg !254
  %5 = fadd float %2, %4, !dbg !254
  tail call void @llvm.dbg.value(metadata float %5, i64 0, metadata !62, metadata !243), !dbg !254
  %6 = extractelement <2 x float> %a.coerce, i32 0, !dbg !254
  %7 = fmul float %6, %1, !dbg !254
  %8 = extractelement <2 x float> %a.coerce, i32 1, !dbg !254
  %9 = fmul float %8, %3, !dbg !254
  %10 = fadd float %7, %9, !dbg !254
  %11 = fdiv float %10, %5, !dbg !254
  tail call void @llvm.dbg.value(metadata float %11, i64 0, metadata !63, metadata !245), !dbg !254
  %12 = fmul float %8, %1, !dbg !254
  %13 = fmul float %6, %3, !dbg !254
  %14 = fsub float %12, %13, !dbg !254
  %15 = fdiv float %14, %5, !dbg !254
  tail call void @llvm.dbg.value(metadata float %15, i64 0, metadata !63, metadata !246), !dbg !254
  %16 = insertelement <2 x float> undef, float %11, i32 0, !dbg !254
  %17 = insertelement <2 x float> %16, float %15, i32 1, !dbg !254
  ret <2 x float> %17, !dbg !254
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define <2 x float> @CCTK_Cmplx8Sin(<2 x float> %complex_number.coerce) #0 {
  tail call void @llvm.dbg.value(metadata <2 x float> %complex_number.coerce, i64 0, metadata !66, metadata !243), !dbg !255
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX8* undef, metadata !66, metadata !243), !dbg !255
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX8* undef, metadata !67, metadata !243), !dbg !255
  %1 = extractelement <2 x float> %complex_number.coerce, i32 1, !dbg !256
  %2 = fpext float %1 to double, !dbg !256
  %3 = fcmp oeq float %1, 0.000000e+00, !dbg !256
  %4 = extractelement <2 x float> %complex_number.coerce, i32 0, !dbg !258
  %5 = fpext float %4 to double, !dbg !258
  %6 = tail call double @sin(double %5) #6, !dbg !258
  br i1 %3, label %14, label %7, !dbg !255

; <label>:7                                       ; preds = %0
  %8 = tail call double @cosh(double %2) #6, !dbg !260
  %9 = fmul double %6, %8, !dbg !260
  %10 = tail call double @cos(double %5) #6, !dbg !260
  %11 = tail call double @sinh(double %2) #6, !dbg !260
  %12 = fmul double %10, %11, !dbg !260
  %13 = fptrunc double %12 to float, !dbg !260
  tail call void @llvm.dbg.value(metadata float %13, i64 0, metadata !67, metadata !246), !dbg !255
  br label %14

; <label>:14                                      ; preds = %0, %7
  %result.sroa.3.0 = phi float [ %13, %7 ], [ 0.000000e+00, %0 ]
  %result.sroa.0.0.in = phi double [ %9, %7 ], [ %6, %0 ]
  %result.sroa.0.0 = fptrunc double %result.sroa.0.0.in to float, !dbg !258
  %15 = insertelement <2 x float> undef, float %result.sroa.0.0, i32 0, !dbg !255
  %16 = insertelement <2 x float> %15, float %result.sroa.3.0, i32 1, !dbg !255
  ret <2 x float> %16, !dbg !255
}

; Function Attrs: nounwind optsize readnone
declare double @sin(double) #3

; Function Attrs: nounwind optsize readnone
declare double @cosh(double) #3

; Function Attrs: nounwind optsize readnone
declare double @cos(double) #3

; Function Attrs: nounwind optsize readnone
declare double @sinh(double) #3

; Function Attrs: nounwind optsize readnone ssp uwtable
define <2 x float> @CCTK_Cmplx8Cos(<2 x float> %complex_number.coerce) #0 {
  tail call void @llvm.dbg.value(metadata <2 x float> %complex_number.coerce, i64 0, metadata !70, metadata !243), !dbg !262
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX8* undef, metadata !70, metadata !243), !dbg !262
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX8* undef, metadata !71, metadata !243), !dbg !262
  %1 = extractelement <2 x float> %complex_number.coerce, i32 1, !dbg !263
  %2 = fpext float %1 to double, !dbg !263
  %3 = fcmp oeq float %1, 0.000000e+00, !dbg !263
  %4 = extractelement <2 x float> %complex_number.coerce, i32 0, !dbg !265
  %5 = fpext float %4 to double, !dbg !265
  %6 = tail call double @cos(double %5) #6, !dbg !265
  br i1 %3, label %14, label %7, !dbg !262

; <label>:7                                       ; preds = %0
  %8 = tail call double @cosh(double %2) #6, !dbg !267
  %9 = fmul double %6, %8, !dbg !267
  %10 = tail call double @sin(double %5) #6, !dbg !267
  %11 = tail call double @sinh(double %2) #6, !dbg !267
  %12 = fmul double %10, %11, !dbg !267
  %13 = fptrunc double %12 to float, !dbg !267
  tail call void @llvm.dbg.value(metadata float %13, i64 0, metadata !71, metadata !246), !dbg !262
  br label %14

; <label>:14                                      ; preds = %0, %7
  %result.sroa.3.0 = phi float [ %13, %7 ], [ 0.000000e+00, %0 ]
  %result.sroa.0.0.in = phi double [ %9, %7 ], [ %6, %0 ]
  %result.sroa.0.0 = fptrunc double %result.sroa.0.0.in to float, !dbg !265
  %15 = insertelement <2 x float> undef, float %result.sroa.0.0, i32 0, !dbg !262
  %16 = insertelement <2 x float> %15, float %result.sroa.3.0, i32 1, !dbg !262
  ret <2 x float> %16, !dbg !262
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define <2 x float> @CCTK_Cmplx8Exp(<2 x float> %complex_number.coerce) #0 {
  tail call void @llvm.dbg.value(metadata <2 x float> %complex_number.coerce, i64 0, metadata !74, metadata !243), !dbg !269
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX8* undef, metadata !74, metadata !243), !dbg !269
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX8* undef, metadata !77, metadata !243), !dbg !269
  %1 = extractelement <2 x float> %complex_number.coerce, i32 0, !dbg !269
  %2 = fpext float %1 to double, !dbg !269
  %3 = tail call double @exp(double %2) #6, !dbg !269
  %4 = fptrunc double %3 to float, !dbg !269
  tail call void @llvm.dbg.value(metadata float %4, i64 0, metadata !75, metadata !243), !dbg !269
  %5 = extractelement <2 x float> %complex_number.coerce, i32 1, !dbg !269
  tail call void @llvm.dbg.value(metadata float %5, i64 0, metadata !76, metadata !243), !dbg !269
  %6 = fpext float %4 to double, !dbg !269
  %7 = fpext float %5 to double, !dbg !269
  %8 = tail call double @cos(double %7) #6, !dbg !269
  tail call void @llvm.dbg.value(metadata float undef, i64 0, metadata !77, metadata !245), !dbg !269
  %9 = tail call double @sin(double %7) #6, !dbg !269
  %10 = insertelement <2 x double> undef, double %6, i32 0, !dbg !269
  %11 = insertelement <2 x double> %10, double %6, i32 1, !dbg !269
  %12 = insertelement <2 x double> undef, double %8, i32 0, !dbg !269
  %13 = insertelement <2 x double> %12, double %9, i32 1, !dbg !269
  %14 = fmul <2 x double> %11, %13, !dbg !269
  %15 = fptrunc <2 x double> %14 to <2 x float>, !dbg !269
  tail call void @llvm.dbg.value(metadata float undef, i64 0, metadata !77, metadata !246), !dbg !269
  ret <2 x float> %15, !dbg !269
}

; Function Attrs: nounwind optsize readnone
declare double @exp(double) #3

; Function Attrs: nounwind optsize readnone ssp uwtable
define <2 x float> @CCTK_Cmplx8Sqrt(<2 x float> %complex_number.coerce) #0 {
  tail call void @llvm.dbg.value(metadata <2 x float> %complex_number.coerce, i64 0, metadata !80, metadata !243), !dbg !270
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX8* undef, metadata !80, metadata !243), !dbg !270
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX8* undef, metadata !85, metadata !243), !dbg !270
  %1 = extractelement <2 x float> %complex_number.coerce, i32 0, !dbg !271
  %2 = fcmp oeq float %1, 0.000000e+00, !dbg !271
  %3 = extractelement <2 x float> %complex_number.coerce, i32 1
  %4 = fcmp oeq float %3, 0.000000e+00, !dbg !271
  %or.cond = and i1 %2, %4, !dbg !271
  br i1 %or.cond, label %47, label %5, !dbg !271

; <label>:5                                       ; preds = %0
  %fabsf = tail call float @fabsf(float %1) #3, !dbg !273
  tail call void @llvm.dbg.value(metadata float %fabsf, i64 0, metadata !81, metadata !243), !dbg !270
  %6 = fpext float %3 to double, !dbg !273
  %fabsf1 = tail call float @fabsf(float %3) #3, !dbg !273
  tail call void @llvm.dbg.value(metadata float %fabsf1, i64 0, metadata !82, metadata !243), !dbg !270
  %7 = fcmp ult float %fabsf, %fabsf1, !dbg !275
  br i1 %7, label %19, label %8, !dbg !273

; <label>:8                                       ; preds = %5
  %9 = fdiv float %fabsf1, %fabsf, !dbg !277
  tail call void @llvm.dbg.value(metadata float %9, i64 0, metadata !84, metadata !243), !dbg !270
  %10 = fpext float %fabsf to double, !dbg !277
  %11 = tail call double @sqrt(double %10) #6, !dbg !277
  %12 = fpext float %9 to double, !dbg !277
  %13 = fmul double %12, %12, !dbg !277
  %14 = tail call double @sqrt(double %13) #6, !dbg !277
  %15 = fadd double %14, 1.000000e+00, !dbg !277
  %16 = fmul double %15, 5.000000e-01, !dbg !277
  %17 = tail call double @sqrt(double %16) #6, !dbg !277
  %18 = fmul double %11, %17, !dbg !277
  br label %30, !dbg !277

; <label>:19                                      ; preds = %5
  %20 = fdiv float %fabsf, %fabsf1, !dbg !279
  tail call void @llvm.dbg.value(metadata float %20, i64 0, metadata !84, metadata !243), !dbg !270
  %21 = fpext float %fabsf1 to double, !dbg !279
  %22 = tail call double @sqrt(double %21) #6, !dbg !279
  %23 = fpext float %20 to double, !dbg !279
  %24 = fmul double %23, %23, !dbg !279
  %25 = tail call double @sqrt(double %24) #6, !dbg !279
  %26 = fadd double %23, %25, !dbg !279
  %27 = fmul double %26, 5.000000e-01, !dbg !279
  %28 = tail call double @sqrt(double %27) #6, !dbg !279
  %29 = fmul double %22, %28, !dbg !279
  br label %30

; <label>:30                                      ; preds = %19, %8
  %w.0.in = phi double [ %18, %8 ], [ %29, %19 ]
  %w.0 = fptrunc double %w.0.in to float, !dbg !277
  %31 = fcmp ult float %1, 0.000000e+00, !dbg !281
  br i1 %31, label %37, label %32, !dbg !273

; <label>:32                                      ; preds = %30
  tail call void @llvm.dbg.value(metadata float %w.0, i64 0, metadata !85, metadata !245), !dbg !270
  %33 = fpext float %w.0 to double, !dbg !283
  %34 = fmul double %33, 2.000000e+00, !dbg !283
  %35 = fdiv double %6, %34, !dbg !283
  %36 = fptrunc double %35 to float, !dbg !283
  tail call void @llvm.dbg.value(metadata float %36, i64 0, metadata !85, metadata !246), !dbg !270
  br label %47, !dbg !283

; <label>:37                                      ; preds = %30
  %38 = fcmp ult float %3, 0.000000e+00, !dbg !285
  br i1 %38, label %39, label %41, !dbg !285

; <label>:39                                      ; preds = %37
  %40 = fsub float -0.000000e+00, %w.0, !dbg !285
  br label %41, !dbg !285

; <label>:41                                      ; preds = %37, %39
  %42 = phi float [ %40, %39 ], [ %w.0, %37 ], !dbg !285
  tail call void @llvm.dbg.value(metadata float %42, i64 0, metadata !81, metadata !243), !dbg !270
  %43 = fpext float %42 to double, !dbg !285
  %44 = fmul double %43, 2.000000e+00, !dbg !285
  %45 = fdiv double %6, %44, !dbg !285
  %46 = fptrunc double %45 to float, !dbg !285
  tail call void @llvm.dbg.value(metadata float %46, i64 0, metadata !85, metadata !245), !dbg !270
  tail call void @llvm.dbg.value(metadata float %42, i64 0, metadata !85, metadata !246), !dbg !270
  br label %47

; <label>:47                                      ; preds = %0, %32, %41
  %result.sroa.4.0 = phi float [ %36, %32 ], [ %42, %41 ], [ 0.000000e+00, %0 ]
  %result.sroa.0.0 = phi float [ %w.0, %32 ], [ %46, %41 ], [ 0.000000e+00, %0 ]
  %48 = insertelement <2 x float> undef, float %result.sroa.0.0, i32 0, !dbg !270
  %49 = insertelement <2 x float> %48, float %result.sroa.4.0, i32 1, !dbg !270
  ret <2 x float> %49, !dbg !270
}

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #3

; Function Attrs: nounwind optsize readnone
declare double @sqrt(double) #3

; Function Attrs: nounwind optsize readnone ssp uwtable
define { double, double } @CCTK_Cmplx16(double %Re, double %Im) #0 {
  tail call void @llvm.dbg.value(metadata double %Re, i64 0, metadata !96, metadata !243), !dbg !287
  tail call void @llvm.dbg.value(metadata double %Im, i64 0, metadata !97, metadata !243), !dbg !287
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX16* undef, metadata !98, metadata !243), !dbg !287
  tail call void @llvm.dbg.value(metadata double %Re, i64 0, metadata !98, metadata !288), !dbg !287
  tail call void @llvm.dbg.value(metadata double %Im, i64 0, metadata !98, metadata !289), !dbg !287
  %1 = insertvalue { double, double } undef, double %Re, 0, !dbg !287
  %2 = insertvalue { double, double } %1, double %Im, 1, !dbg !287
  ret { double, double } %2, !dbg !287
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define double @CCTK_Cmplx16Real(double %complex_number.coerce0, double %complex_number.coerce1) #0 {
  tail call void @llvm.dbg.value(metadata double %complex_number.coerce0, i64 0, metadata !103, metadata !288), !dbg !290
  tail call void @llvm.dbg.value(metadata double %complex_number.coerce1, i64 0, metadata !103, metadata !289), !dbg !290
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX16* undef, metadata !103, metadata !243), !dbg !290
  ret double %complex_number.coerce0, !dbg !290
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define double @CCTK_Cmplx16Imag(double %complex_number.coerce0, double %complex_number.coerce1) #0 {
  tail call void @llvm.dbg.value(metadata double %complex_number.coerce0, i64 0, metadata !106, metadata !288), !dbg !291
  tail call void @llvm.dbg.value(metadata double %complex_number.coerce1, i64 0, metadata !106, metadata !289), !dbg !291
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX16* undef, metadata !106, metadata !243), !dbg !291
  ret double %complex_number.coerce1, !dbg !291
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define { double, double } @CCTK_Cmplx16Conjg(double %complex_number.coerce0, double %complex_number.coerce1) #0 {
  tail call void @llvm.dbg.value(metadata double %complex_number.coerce0, i64 0, metadata !111, metadata !288), !dbg !292
  tail call void @llvm.dbg.value(metadata double %complex_number.coerce1, i64 0, metadata !111, metadata !289), !dbg !292
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX16* undef, metadata !111, metadata !243), !dbg !292
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX16* undef, metadata !112, metadata !243), !dbg !292
  tail call void @llvm.dbg.value(metadata double %complex_number.coerce0, i64 0, metadata !112, metadata !288), !dbg !292
  %1 = fsub double -0.000000e+00, %complex_number.coerce1, !dbg !292
  tail call void @llvm.dbg.value(metadata double %1, i64 0, metadata !112, metadata !289), !dbg !292
  %2 = insertvalue { double, double } undef, double %complex_number.coerce0, 0, !dbg !292
  %3 = insertvalue { double, double } %2, double %1, 1, !dbg !292
  ret { double, double } %3, !dbg !292
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define double @CCTK_Cmplx16Abs(double %complex_number.coerce0, double %complex_number.coerce1) #0 {
  tail call void @llvm.dbg.value(metadata double %complex_number.coerce0, i64 0, metadata !115, metadata !288), !dbg !293
  tail call void @llvm.dbg.value(metadata double %complex_number.coerce1, i64 0, metadata !115, metadata !289), !dbg !293
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX16* undef, metadata !115, metadata !243), !dbg !293
  %1 = tail call double @hypot(double %complex_number.coerce0, double %complex_number.coerce1) #6, !dbg !293
  ret double %1, !dbg !293
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define { double, double } @CCTK_Cmplx16Add(double %a.coerce0, double %a.coerce1, double %b.coerce0, double %b.coerce1) #0 {
  tail call void @llvm.dbg.value(metadata double %a.coerce0, i64 0, metadata !120, metadata !288), !dbg !294
  tail call void @llvm.dbg.value(metadata double %a.coerce1, i64 0, metadata !120, metadata !289), !dbg !294
  tail call void @llvm.dbg.value(metadata double %b.coerce0, i64 0, metadata !121, metadata !288), !dbg !294
  tail call void @llvm.dbg.value(metadata double %b.coerce1, i64 0, metadata !121, metadata !289), !dbg !294
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX16* undef, metadata !120, metadata !243), !dbg !294
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX16* undef, metadata !121, metadata !243), !dbg !294
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX16* undef, metadata !122, metadata !243), !dbg !294
  %1 = fadd double %a.coerce0, %b.coerce0, !dbg !294
  tail call void @llvm.dbg.value(metadata double %1, i64 0, metadata !122, metadata !288), !dbg !294
  %2 = fadd double %a.coerce1, %b.coerce1, !dbg !294
  tail call void @llvm.dbg.value(metadata double %2, i64 0, metadata !122, metadata !289), !dbg !294
  %3 = insertvalue { double, double } undef, double %1, 0, !dbg !294
  %4 = insertvalue { double, double } %3, double %2, 1, !dbg !294
  ret { double, double } %4, !dbg !294
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define { double, double } @CCTK_Cmplx16Sub(double %a.coerce0, double %a.coerce1, double %b.coerce0, double %b.coerce1) #0 {
  tail call void @llvm.dbg.value(metadata double %a.coerce0, i64 0, metadata !125, metadata !288), !dbg !295
  tail call void @llvm.dbg.value(metadata double %a.coerce1, i64 0, metadata !125, metadata !289), !dbg !295
  tail call void @llvm.dbg.value(metadata double %b.coerce0, i64 0, metadata !126, metadata !288), !dbg !295
  tail call void @llvm.dbg.value(metadata double %b.coerce1, i64 0, metadata !126, metadata !289), !dbg !295
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX16* undef, metadata !125, metadata !243), !dbg !295
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX16* undef, metadata !126, metadata !243), !dbg !295
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX16* undef, metadata !127, metadata !243), !dbg !295
  %1 = fsub double %a.coerce0, %b.coerce0, !dbg !295
  tail call void @llvm.dbg.value(metadata double %1, i64 0, metadata !127, metadata !288), !dbg !295
  %2 = fsub double %a.coerce1, %b.coerce1, !dbg !295
  tail call void @llvm.dbg.value(metadata double %2, i64 0, metadata !127, metadata !289), !dbg !295
  %3 = insertvalue { double, double } undef, double %1, 0, !dbg !295
  %4 = insertvalue { double, double } %3, double %2, 1, !dbg !295
  ret { double, double } %4, !dbg !295
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define { double, double } @CCTK_Cmplx16Mul(double %a.coerce0, double %a.coerce1, double %b.coerce0, double %b.coerce1) #0 {
  tail call void @llvm.dbg.value(metadata double %a.coerce0, i64 0, metadata !130, metadata !288), !dbg !296
  tail call void @llvm.dbg.value(metadata double %a.coerce1, i64 0, metadata !130, metadata !289), !dbg !296
  tail call void @llvm.dbg.value(metadata double %b.coerce0, i64 0, metadata !131, metadata !288), !dbg !296
  tail call void @llvm.dbg.value(metadata double %b.coerce1, i64 0, metadata !131, metadata !289), !dbg !296
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX16* undef, metadata !130, metadata !243), !dbg !296
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX16* undef, metadata !131, metadata !243), !dbg !296
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX16* undef, metadata !132, metadata !243), !dbg !296
  %1 = fmul double %a.coerce0, %b.coerce0, !dbg !296
  %2 = fmul double %a.coerce1, %b.coerce1, !dbg !296
  %3 = fsub double %1, %2, !dbg !296
  tail call void @llvm.dbg.value(metadata double %3, i64 0, metadata !132, metadata !288), !dbg !296
  %4 = fmul double %a.coerce1, %b.coerce0, !dbg !296
  %5 = fmul double %a.coerce0, %b.coerce1, !dbg !296
  %6 = fadd double %4, %5, !dbg !296
  tail call void @llvm.dbg.value(metadata double %6, i64 0, metadata !132, metadata !289), !dbg !296
  %7 = insertvalue { double, double } undef, double %3, 0, !dbg !296
  %8 = insertvalue { double, double } %7, double %6, 1, !dbg !296
  ret { double, double } %8, !dbg !296
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define { double, double } @CCTK_Cmplx16Div(double %a.coerce0, double %a.coerce1, double %b.coerce0, double %b.coerce1) #0 {
  tail call void @llvm.dbg.value(metadata double %a.coerce0, i64 0, metadata !135, metadata !288), !dbg !297
  tail call void @llvm.dbg.value(metadata double %a.coerce1, i64 0, metadata !135, metadata !289), !dbg !297
  tail call void @llvm.dbg.value(metadata double %b.coerce0, i64 0, metadata !136, metadata !288), !dbg !297
  tail call void @llvm.dbg.value(metadata double %b.coerce1, i64 0, metadata !136, metadata !289), !dbg !297
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX16* undef, metadata !135, metadata !243), !dbg !297
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX16* undef, metadata !136, metadata !243), !dbg !297
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX16* undef, metadata !138, metadata !243), !dbg !297
  %1 = fmul double %b.coerce0, %b.coerce0, !dbg !297
  %2 = fmul double %b.coerce1, %b.coerce1, !dbg !297
  %3 = fadd double %1, %2, !dbg !297
  tail call void @llvm.dbg.value(metadata double %3, i64 0, metadata !137, metadata !243), !dbg !297
  %4 = fmul double %a.coerce0, %b.coerce0, !dbg !297
  %5 = fmul double %a.coerce1, %b.coerce1, !dbg !297
  %6 = fadd double %4, %5, !dbg !297
  %7 = fdiv double %6, %3, !dbg !297
  tail call void @llvm.dbg.value(metadata double %7, i64 0, metadata !138, metadata !288), !dbg !297
  %8 = fmul double %a.coerce1, %b.coerce0, !dbg !297
  %9 = fmul double %a.coerce0, %b.coerce1, !dbg !297
  %10 = fsub double %8, %9, !dbg !297
  %11 = fdiv double %10, %3, !dbg !297
  tail call void @llvm.dbg.value(metadata double %11, i64 0, metadata !138, metadata !289), !dbg !297
  %12 = insertvalue { double, double } undef, double %7, 0, !dbg !297
  %13 = insertvalue { double, double } %12, double %11, 1, !dbg !297
  ret { double, double } %13, !dbg !297
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define { double, double } @CCTK_Cmplx16Sin(double %complex_number.coerce0, double %complex_number.coerce1) #0 {
  tail call void @llvm.dbg.value(metadata double %complex_number.coerce0, i64 0, metadata !141, metadata !288), !dbg !298
  tail call void @llvm.dbg.value(metadata double %complex_number.coerce1, i64 0, metadata !141, metadata !289), !dbg !298
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX16* undef, metadata !141, metadata !243), !dbg !298
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX16* undef, metadata !142, metadata !243), !dbg !298
  %1 = fcmp oeq double %complex_number.coerce1, 0.000000e+00, !dbg !299
  %2 = tail call double @sin(double %complex_number.coerce0) #6, !dbg !301
  br i1 %1, label %9, label %3, !dbg !298

; <label>:3                                       ; preds = %0
  %4 = tail call double @cosh(double %complex_number.coerce1) #6, !dbg !303
  %5 = fmul double %2, %4, !dbg !303
  tail call void @llvm.dbg.value(metadata double %5, i64 0, metadata !142, metadata !288), !dbg !298
  %6 = tail call double @cos(double %complex_number.coerce0) #6, !dbg !303
  %7 = tail call double @sinh(double %complex_number.coerce1) #6, !dbg !303
  %8 = fmul double %6, %7, !dbg !303
  tail call void @llvm.dbg.value(metadata double %8, i64 0, metadata !142, metadata !289), !dbg !298
  br label %9

; <label>:9                                       ; preds = %0, %3
  %result.sroa.3.0 = phi double [ %8, %3 ], [ 0.000000e+00, %0 ]
  %result.sroa.0.0 = phi double [ %5, %3 ], [ %2, %0 ]
  %10 = insertvalue { double, double } undef, double %result.sroa.0.0, 0, !dbg !298
  %11 = insertvalue { double, double } %10, double %result.sroa.3.0, 1, !dbg !298
  ret { double, double } %11, !dbg !298
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define { double, double } @CCTK_Cmplx16Cos(double %complex_number.coerce0, double %complex_number.coerce1) #0 {
  tail call void @llvm.dbg.value(metadata double %complex_number.coerce0, i64 0, metadata !145, metadata !288), !dbg !305
  tail call void @llvm.dbg.value(metadata double %complex_number.coerce1, i64 0, metadata !145, metadata !289), !dbg !305
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX16* undef, metadata !145, metadata !243), !dbg !305
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX16* undef, metadata !146, metadata !243), !dbg !305
  %1 = fcmp oeq double %complex_number.coerce1, 0.000000e+00, !dbg !306
  %2 = tail call double @cos(double %complex_number.coerce0) #6, !dbg !308
  br i1 %1, label %9, label %3, !dbg !305

; <label>:3                                       ; preds = %0
  %4 = tail call double @cosh(double %complex_number.coerce1) #6, !dbg !310
  %5 = fmul double %2, %4, !dbg !310
  tail call void @llvm.dbg.value(metadata double %5, i64 0, metadata !146, metadata !288), !dbg !305
  %6 = tail call double @sin(double %complex_number.coerce0) #6, !dbg !310
  %7 = tail call double @sinh(double %complex_number.coerce1) #6, !dbg !310
  %8 = fmul double %6, %7, !dbg !310
  tail call void @llvm.dbg.value(metadata double %8, i64 0, metadata !146, metadata !289), !dbg !305
  br label %9

; <label>:9                                       ; preds = %0, %3
  %result.sroa.3.0 = phi double [ %8, %3 ], [ 0.000000e+00, %0 ]
  %result.sroa.0.0 = phi double [ %5, %3 ], [ %2, %0 ]
  %10 = insertvalue { double, double } undef, double %result.sroa.0.0, 0, !dbg !305
  %11 = insertvalue { double, double } %10, double %result.sroa.3.0, 1, !dbg !305
  ret { double, double } %11, !dbg !305
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define { double, double } @CCTK_Cmplx16Exp(double %complex_number.coerce0, double %complex_number.coerce1) #0 {
  tail call void @llvm.dbg.value(metadata double %complex_number.coerce0, i64 0, metadata !149, metadata !288), !dbg !312
  tail call void @llvm.dbg.value(metadata double %complex_number.coerce1, i64 0, metadata !149, metadata !289), !dbg !312
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX16* undef, metadata !149, metadata !243), !dbg !312
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX16* undef, metadata !152, metadata !243), !dbg !312
  %1 = tail call double @exp(double %complex_number.coerce0) #6, !dbg !312
  tail call void @llvm.dbg.value(metadata double %1, i64 0, metadata !150, metadata !243), !dbg !312
  tail call void @llvm.dbg.value(metadata double %complex_number.coerce1, i64 0, metadata !151, metadata !243), !dbg !312
  %2 = tail call double @cos(double %complex_number.coerce1) #6, !dbg !312
  %3 = fmul double %1, %2, !dbg !312
  tail call void @llvm.dbg.value(metadata double %3, i64 0, metadata !152, metadata !288), !dbg !312
  %4 = tail call double @sin(double %complex_number.coerce1) #6, !dbg !312
  %5 = fmul double %1, %4, !dbg !312
  tail call void @llvm.dbg.value(metadata double %5, i64 0, metadata !152, metadata !289), !dbg !312
  %6 = insertvalue { double, double } undef, double %3, 0, !dbg !312
  %7 = insertvalue { double, double } %6, double %5, 1, !dbg !312
  ret { double, double } %7, !dbg !312
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define { double, double } @CCTK_Cmplx16Sqrt(double %complex_number.coerce0, double %complex_number.coerce1) #0 {
  tail call void @llvm.dbg.value(metadata double %complex_number.coerce0, i64 0, metadata !155, metadata !288), !dbg !313
  tail call void @llvm.dbg.value(metadata double %complex_number.coerce1, i64 0, metadata !155, metadata !289), !dbg !313
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX16* undef, metadata !155, metadata !243), !dbg !313
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX16* undef, metadata !160, metadata !243), !dbg !313
  %1 = fcmp oeq double %complex_number.coerce0, 0.000000e+00, !dbg !314
  %2 = fcmp oeq double %complex_number.coerce1, 0.000000e+00, !dbg !314
  %or.cond = and i1 %1, %2, !dbg !314
  br i1 %or.cond, label %38, label %3, !dbg !314

; <label>:3                                       ; preds = %0
  %4 = tail call double @fabs(double %complex_number.coerce0) #6, !dbg !316
  tail call void @llvm.dbg.value(metadata double %4, i64 0, metadata !156, metadata !243), !dbg !313
  %5 = tail call double @fabs(double %complex_number.coerce1) #6, !dbg !316
  tail call void @llvm.dbg.value(metadata double %5, i64 0, metadata !157, metadata !243), !dbg !313
  %6 = fcmp ult double %4, %5, !dbg !318
  br i1 %6, label %16, label %7, !dbg !316

; <label>:7                                       ; preds = %3
  %8 = fdiv double %5, %4, !dbg !320
  tail call void @llvm.dbg.value(metadata double %8, i64 0, metadata !159, metadata !243), !dbg !313
  %9 = tail call double @sqrt(double %4) #6, !dbg !320
  %10 = fmul double %8, %8, !dbg !320
  %11 = tail call double @sqrt(double %10) #6, !dbg !320
  %12 = fadd double %11, 1.000000e+00, !dbg !320
  %13 = fmul double %12, 5.000000e-01, !dbg !320
  %14 = tail call double @sqrt(double %13) #6, !dbg !320
  %15 = fmul double %9, %14, !dbg !320
  tail call void @llvm.dbg.value(metadata double %15, i64 0, metadata !158, metadata !243), !dbg !313
  br label %25, !dbg !320

; <label>:16                                      ; preds = %3
  %17 = fdiv double %4, %5, !dbg !322
  tail call void @llvm.dbg.value(metadata double %17, i64 0, metadata !159, metadata !243), !dbg !313
  %18 = tail call double @sqrt(double %5) #6, !dbg !322
  %19 = fmul double %17, %17, !dbg !322
  %20 = tail call double @sqrt(double %19) #6, !dbg !322
  %21 = fadd double %17, %20, !dbg !322
  %22 = fmul double %21, 5.000000e-01, !dbg !322
  %23 = tail call double @sqrt(double %22) #6, !dbg !322
  %24 = fmul double %18, %23, !dbg !322
  tail call void @llvm.dbg.value(metadata double %24, i64 0, metadata !158, metadata !243), !dbg !313
  br label %25

; <label>:25                                      ; preds = %16, %7
  %w.0 = phi double [ %15, %7 ], [ %24, %16 ]
  %26 = fcmp ult double %complex_number.coerce0, 0.000000e+00, !dbg !324
  br i1 %26, label %30, label %27, !dbg !316

; <label>:27                                      ; preds = %25
  tail call void @llvm.dbg.value(metadata double %w.0, i64 0, metadata !160, metadata !288), !dbg !313
  %28 = fmul double %w.0, 2.000000e+00, !dbg !326
  %29 = fdiv double %complex_number.coerce1, %28, !dbg !326
  tail call void @llvm.dbg.value(metadata double %29, i64 0, metadata !160, metadata !289), !dbg !313
  br label %38, !dbg !326

; <label>:30                                      ; preds = %25
  %31 = fcmp ult double %complex_number.coerce1, 0.000000e+00, !dbg !328
  br i1 %31, label %32, label %34, !dbg !328

; <label>:32                                      ; preds = %30
  %33 = fsub double -0.000000e+00, %w.0, !dbg !328
  br label %34, !dbg !328

; <label>:34                                      ; preds = %30, %32
  %35 = phi double [ %33, %32 ], [ %w.0, %30 ], !dbg !328
  tail call void @llvm.dbg.value(metadata double %35, i64 0, metadata !156, metadata !243), !dbg !313
  %36 = fmul double %35, 2.000000e+00, !dbg !328
  %37 = fdiv double %complex_number.coerce1, %36, !dbg !328
  tail call void @llvm.dbg.value(metadata double %37, i64 0, metadata !160, metadata !288), !dbg !313
  tail call void @llvm.dbg.value(metadata double %35, i64 0, metadata !160, metadata !289), !dbg !313
  br label %38

; <label>:38                                      ; preds = %0, %27, %34
  %result.sroa.4.0 = phi double [ %29, %27 ], [ %35, %34 ], [ 0.000000e+00, %0 ]
  %result.sroa.0.0 = phi double [ %w.0, %27 ], [ %37, %34 ], [ 0.000000e+00, %0 ]
  %39 = insertvalue { double, double } undef, double %result.sroa.0.0, 0, !dbg !313
  %40 = insertvalue { double, double } %39, double %result.sroa.4.0, 1, !dbg !313
  ret { double, double } %40, !dbg !313
}

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTK_Cmplx32(%struct.CCTK_COMPLEX32* noalias nocapture sret %agg.result, x86_fp80 %Re, x86_fp80 %Im) #4 {
  tail call void @llvm.dbg.value(metadata x86_fp80 %Re, i64 0, metadata !171, metadata !243), !dbg !330
  tail call void @llvm.dbg.value(metadata x86_fp80 %Im, i64 0, metadata !172, metadata !243), !dbg !330
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX32* undef, metadata !173, metadata !243), !dbg !330
  tail call void @llvm.dbg.value(metadata x86_fp80 %Re, i64 0, metadata !173, metadata !331), !dbg !330
  tail call void @llvm.dbg.value(metadata x86_fp80 %Im, i64 0, metadata !173, metadata !332), !dbg !330
  %1 = getelementptr inbounds %struct.CCTK_COMPLEX32* %agg.result, i64 0, i32 0, !dbg !330
  store x86_fp80 %Re, x86_fp80* %1, align 16, !dbg !330
  %2 = getelementptr inbounds %struct.CCTK_COMPLEX32* %agg.result, i64 0, i32 1, !dbg !330
  store x86_fp80 %Im, x86_fp80* %2, align 16, !dbg !330
  ret void, !dbg !330
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define x86_fp80 @CCTK_Cmplx32Real(%struct.CCTK_COMPLEX32* byval nocapture readonly align 16 %complex_number) #5 {
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX32* %complex_number, metadata !178, metadata !243), !dbg !333
  %1 = getelementptr inbounds %struct.CCTK_COMPLEX32* %complex_number, i64 0, i32 0, !dbg !333
  %2 = load x86_fp80* %1, align 16, !dbg !333, !tbaa !334
  ret x86_fp80 %2, !dbg !333
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define x86_fp80 @CCTK_Cmplx32Imag(%struct.CCTK_COMPLEX32* byval nocapture readonly align 16 %complex_number) #5 {
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX32* %complex_number, metadata !181, metadata !243), !dbg !339
  %1 = getelementptr inbounds %struct.CCTK_COMPLEX32* %complex_number, i64 0, i32 1, !dbg !339
  %2 = load x86_fp80* %1, align 16, !dbg !339, !tbaa !340
  ret x86_fp80 %2, !dbg !339
}

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTK_Cmplx32Conjg(%struct.CCTK_COMPLEX32* noalias nocapture sret %agg.result, %struct.CCTK_COMPLEX32* byval nocapture readonly align 16 %complex_number) #4 {
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX32* %complex_number, metadata !186, metadata !243), !dbg !341
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX32* undef, metadata !187, metadata !243), !dbg !341
  %1 = getelementptr inbounds %struct.CCTK_COMPLEX32* %complex_number, i64 0, i32 0, !dbg !341
  %2 = load x86_fp80* %1, align 16, !dbg !341, !tbaa !334
  tail call void @llvm.dbg.value(metadata x86_fp80 %2, i64 0, metadata !187, metadata !331), !dbg !341
  %3 = getelementptr inbounds %struct.CCTK_COMPLEX32* %complex_number, i64 0, i32 1, !dbg !341
  %4 = load x86_fp80* %3, align 16, !dbg !341, !tbaa !340
  %5 = fsub x86_fp80 0xK80000000000000000000, %4, !dbg !341
  tail call void @llvm.dbg.value(metadata x86_fp80 %5, i64 0, metadata !187, metadata !332), !dbg !341
  %6 = getelementptr inbounds %struct.CCTK_COMPLEX32* %agg.result, i64 0, i32 0, !dbg !341
  store x86_fp80 %2, x86_fp80* %6, align 16, !dbg !341
  %7 = getelementptr inbounds %struct.CCTK_COMPLEX32* %agg.result, i64 0, i32 1, !dbg !341
  store x86_fp80 %5, x86_fp80* %7, align 16, !dbg !341
  ret void, !dbg !341
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define x86_fp80 @CCTK_Cmplx32Abs(%struct.CCTK_COMPLEX32* byval nocapture readonly align 16 %complex_number) #5 {
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX32* %complex_number, metadata !190, metadata !243), !dbg !342
  %1 = getelementptr inbounds %struct.CCTK_COMPLEX32* %complex_number, i64 0, i32 0, !dbg !342
  %2 = load x86_fp80* %1, align 16, !dbg !342, !tbaa !334
  %3 = fptrunc x86_fp80 %2 to double, !dbg !342
  %4 = getelementptr inbounds %struct.CCTK_COMPLEX32* %complex_number, i64 0, i32 1, !dbg !342
  %5 = load x86_fp80* %4, align 16, !dbg !342, !tbaa !340
  %6 = fptrunc x86_fp80 %5 to double, !dbg !342
  %7 = tail call double @hypot(double %3, double %6) #6, !dbg !342
  %8 = fpext double %7 to x86_fp80, !dbg !342
  ret x86_fp80 %8, !dbg !342
}

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTK_Cmplx32Add(%struct.CCTK_COMPLEX32* noalias nocapture sret %agg.result, %struct.CCTK_COMPLEX32* byval nocapture readonly align 16 %a, %struct.CCTK_COMPLEX32* byval nocapture readonly align 16 %b) #4 {
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX32* %a, metadata !195, metadata !243), !dbg !343
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX32* %b, metadata !196, metadata !243), !dbg !343
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX32* undef, metadata !197, metadata !243), !dbg !343
  %1 = getelementptr inbounds %struct.CCTK_COMPLEX32* %a, i64 0, i32 0, !dbg !343
  %2 = load x86_fp80* %1, align 16, !dbg !343, !tbaa !334
  %3 = getelementptr inbounds %struct.CCTK_COMPLEX32* %b, i64 0, i32 0, !dbg !343
  %4 = load x86_fp80* %3, align 16, !dbg !343, !tbaa !334
  %5 = fadd x86_fp80 %2, %4, !dbg !343
  tail call void @llvm.dbg.value(metadata x86_fp80 %5, i64 0, metadata !197, metadata !331), !dbg !343
  %6 = getelementptr inbounds %struct.CCTK_COMPLEX32* %a, i64 0, i32 1, !dbg !343
  %7 = load x86_fp80* %6, align 16, !dbg !343, !tbaa !340
  %8 = getelementptr inbounds %struct.CCTK_COMPLEX32* %b, i64 0, i32 1, !dbg !343
  %9 = load x86_fp80* %8, align 16, !dbg !343, !tbaa !340
  %10 = fadd x86_fp80 %7, %9, !dbg !343
  tail call void @llvm.dbg.value(metadata x86_fp80 %10, i64 0, metadata !197, metadata !332), !dbg !343
  %11 = getelementptr inbounds %struct.CCTK_COMPLEX32* %agg.result, i64 0, i32 0, !dbg !343
  store x86_fp80 %5, x86_fp80* %11, align 16, !dbg !343
  %12 = getelementptr inbounds %struct.CCTK_COMPLEX32* %agg.result, i64 0, i32 1, !dbg !343
  store x86_fp80 %10, x86_fp80* %12, align 16, !dbg !343
  ret void, !dbg !343
}

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTK_Cmplx32Sub(%struct.CCTK_COMPLEX32* noalias nocapture sret %agg.result, %struct.CCTK_COMPLEX32* byval nocapture readonly align 16 %a, %struct.CCTK_COMPLEX32* byval nocapture readonly align 16 %b) #4 {
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX32* %a, metadata !200, metadata !243), !dbg !344
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX32* %b, metadata !201, metadata !243), !dbg !344
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX32* undef, metadata !202, metadata !243), !dbg !344
  %1 = getelementptr inbounds %struct.CCTK_COMPLEX32* %a, i64 0, i32 0, !dbg !344
  %2 = load x86_fp80* %1, align 16, !dbg !344, !tbaa !334
  %3 = getelementptr inbounds %struct.CCTK_COMPLEX32* %b, i64 0, i32 0, !dbg !344
  %4 = load x86_fp80* %3, align 16, !dbg !344, !tbaa !334
  %5 = fsub x86_fp80 %2, %4, !dbg !344
  tail call void @llvm.dbg.value(metadata x86_fp80 %5, i64 0, metadata !202, metadata !331), !dbg !344
  %6 = getelementptr inbounds %struct.CCTK_COMPLEX32* %a, i64 0, i32 1, !dbg !344
  %7 = load x86_fp80* %6, align 16, !dbg !344, !tbaa !340
  %8 = getelementptr inbounds %struct.CCTK_COMPLEX32* %b, i64 0, i32 1, !dbg !344
  %9 = load x86_fp80* %8, align 16, !dbg !344, !tbaa !340
  %10 = fsub x86_fp80 %7, %9, !dbg !344
  tail call void @llvm.dbg.value(metadata x86_fp80 %10, i64 0, metadata !202, metadata !332), !dbg !344
  %11 = getelementptr inbounds %struct.CCTK_COMPLEX32* %agg.result, i64 0, i32 0, !dbg !344
  store x86_fp80 %5, x86_fp80* %11, align 16, !dbg !344
  %12 = getelementptr inbounds %struct.CCTK_COMPLEX32* %agg.result, i64 0, i32 1, !dbg !344
  store x86_fp80 %10, x86_fp80* %12, align 16, !dbg !344
  ret void, !dbg !344
}

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTK_Cmplx32Mul(%struct.CCTK_COMPLEX32* noalias nocapture sret %agg.result, %struct.CCTK_COMPLEX32* byval nocapture readonly align 16 %a, %struct.CCTK_COMPLEX32* byval nocapture readonly align 16 %b) #4 {
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX32* %a, metadata !205, metadata !243), !dbg !345
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX32* %b, metadata !206, metadata !243), !dbg !345
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX32* undef, metadata !207, metadata !243), !dbg !345
  %1 = getelementptr inbounds %struct.CCTK_COMPLEX32* %a, i64 0, i32 0, !dbg !345
  %2 = load x86_fp80* %1, align 16, !dbg !345, !tbaa !334
  %3 = getelementptr inbounds %struct.CCTK_COMPLEX32* %b, i64 0, i32 0, !dbg !345
  %4 = load x86_fp80* %3, align 16, !dbg !345, !tbaa !334
  %5 = fmul x86_fp80 %2, %4, !dbg !345
  %6 = getelementptr inbounds %struct.CCTK_COMPLEX32* %a, i64 0, i32 1, !dbg !345
  %7 = load x86_fp80* %6, align 16, !dbg !345, !tbaa !340
  %8 = getelementptr inbounds %struct.CCTK_COMPLEX32* %b, i64 0, i32 1, !dbg !345
  %9 = load x86_fp80* %8, align 16, !dbg !345, !tbaa !340
  %10 = fmul x86_fp80 %7, %9, !dbg !345
  %11 = fsub x86_fp80 %5, %10, !dbg !345
  tail call void @llvm.dbg.value(metadata x86_fp80 %11, i64 0, metadata !207, metadata !331), !dbg !345
  %12 = fmul x86_fp80 %4, %7, !dbg !345
  %13 = fmul x86_fp80 %2, %9, !dbg !345
  %14 = fadd x86_fp80 %12, %13, !dbg !345
  tail call void @llvm.dbg.value(metadata x86_fp80 %14, i64 0, metadata !207, metadata !332), !dbg !345
  %15 = getelementptr inbounds %struct.CCTK_COMPLEX32* %agg.result, i64 0, i32 0, !dbg !345
  store x86_fp80 %11, x86_fp80* %15, align 16, !dbg !345
  %16 = getelementptr inbounds %struct.CCTK_COMPLEX32* %agg.result, i64 0, i32 1, !dbg !345
  store x86_fp80 %14, x86_fp80* %16, align 16, !dbg !345
  ret void, !dbg !345
}

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTK_Cmplx32Div(%struct.CCTK_COMPLEX32* noalias nocapture sret %agg.result, %struct.CCTK_COMPLEX32* byval nocapture readonly align 16 %a, %struct.CCTK_COMPLEX32* byval nocapture readonly align 16 %b) #4 {
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX32* %a, metadata !210, metadata !243), !dbg !346
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX32* %b, metadata !211, metadata !243), !dbg !346
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX32* undef, metadata !213, metadata !243), !dbg !346
  %1 = getelementptr inbounds %struct.CCTK_COMPLEX32* %b, i64 0, i32 0, !dbg !346
  %2 = load x86_fp80* %1, align 16, !dbg !346, !tbaa !334
  %3 = fmul x86_fp80 %2, %2, !dbg !346
  %4 = getelementptr inbounds %struct.CCTK_COMPLEX32* %b, i64 0, i32 1, !dbg !346
  %5 = load x86_fp80* %4, align 16, !dbg !346, !tbaa !340
  %6 = fmul x86_fp80 %5, %5, !dbg !346
  %7 = fadd x86_fp80 %3, %6, !dbg !346
  tail call void @llvm.dbg.value(metadata x86_fp80 %7, i64 0, metadata !212, metadata !243), !dbg !346
  %8 = getelementptr inbounds %struct.CCTK_COMPLEX32* %a, i64 0, i32 0, !dbg !346
  %9 = load x86_fp80* %8, align 16, !dbg !346, !tbaa !334
  %10 = fmul x86_fp80 %2, %9, !dbg !346
  %11 = getelementptr inbounds %struct.CCTK_COMPLEX32* %a, i64 0, i32 1, !dbg !346
  %12 = load x86_fp80* %11, align 16, !dbg !346, !tbaa !340
  %13 = fmul x86_fp80 %5, %12, !dbg !346
  %14 = fadd x86_fp80 %10, %13, !dbg !346
  %15 = fdiv x86_fp80 %14, %7, !dbg !346
  tail call void @llvm.dbg.value(metadata x86_fp80 %15, i64 0, metadata !213, metadata !331), !dbg !346
  %16 = fmul x86_fp80 %2, %12, !dbg !346
  %17 = fmul x86_fp80 %5, %9, !dbg !346
  %18 = fsub x86_fp80 %16, %17, !dbg !346
  %19 = fdiv x86_fp80 %18, %7, !dbg !346
  tail call void @llvm.dbg.value(metadata x86_fp80 %19, i64 0, metadata !213, metadata !332), !dbg !346
  %20 = getelementptr inbounds %struct.CCTK_COMPLEX32* %agg.result, i64 0, i32 0, !dbg !346
  store x86_fp80 %15, x86_fp80* %20, align 16, !dbg !346
  %21 = getelementptr inbounds %struct.CCTK_COMPLEX32* %agg.result, i64 0, i32 1, !dbg !346
  store x86_fp80 %19, x86_fp80* %21, align 16, !dbg !346
  ret void, !dbg !346
}

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTK_Cmplx32Sin(%struct.CCTK_COMPLEX32* noalias nocapture sret %agg.result, %struct.CCTK_COMPLEX32* byval nocapture readonly align 16 %complex_number) #4 {
  %result.sroa.3 = alloca [6 x i8], align 2
  %result.sroa.5 = alloca [6 x i8], align 2
  tail call void @llvm.dbg.declare(metadata [6 x i8]* %result.sroa.3, metadata !217, metadata !347), !dbg !348
  tail call void @llvm.dbg.declare(metadata [6 x i8]* %result.sroa.5, metadata !217, metadata !349), !dbg !348
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX32* %complex_number, metadata !216, metadata !243), !dbg !348
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX32* undef, metadata !217, metadata !243), !dbg !348
  %1 = getelementptr inbounds %struct.CCTK_COMPLEX32* %complex_number, i64 0, i32 1, !dbg !350
  %2 = load x86_fp80* %1, align 16, !dbg !350, !tbaa !340
  %3 = fcmp oeq x86_fp80 %2, 0xK00000000000000000000, !dbg !350
  %4 = getelementptr inbounds %struct.CCTK_COMPLEX32* %complex_number, i64 0, i32 0, !dbg !352
  %5 = load x86_fp80* %4, align 16, !dbg !352, !tbaa !334
  %6 = fptrunc x86_fp80 %5 to double, !dbg !352
  %7 = tail call double @sin(double %6) #6, !dbg !352
  br i1 %3, label %16, label %8, !dbg !348

; <label>:8                                       ; preds = %0
  %9 = fptrunc x86_fp80 %2 to double, !dbg !354
  %10 = tail call double @cosh(double %9) #6, !dbg !354
  %11 = fmul double %7, %10, !dbg !354
  %12 = tail call double @cos(double %6) #6, !dbg !354
  %13 = tail call double @sinh(double %9) #6, !dbg !354
  %14 = fmul double %12, %13, !dbg !354
  %15 = fpext double %14 to x86_fp80, !dbg !354
  tail call void @llvm.dbg.value(metadata x86_fp80 %15, i64 0, metadata !217, metadata !332), !dbg !348
  br label %16

; <label>:16                                      ; preds = %0, %8
  %result.sroa.31.0 = phi x86_fp80 [ %15, %8 ], [ 0xK00000000000000000000, %0 ]
  %result.sroa.0.0.in = phi double [ %11, %8 ], [ %7, %0 ]
  %result.sroa.0.0 = fpext double %result.sroa.0.0.in to x86_fp80, !dbg !352
  %17 = getelementptr inbounds %struct.CCTK_COMPLEX32* %agg.result, i64 0, i32 0, !dbg !348
  store x86_fp80 %result.sroa.0.0, x86_fp80* %17, align 16, !dbg !348
  %18 = bitcast %struct.CCTK_COMPLEX32* %agg.result to i8*, !dbg !348
  %19 = getelementptr inbounds i8* %18, i64 10, !dbg !348
  %20 = getelementptr inbounds [6 x i8]* %result.sroa.3, i64 0, i64 0, !dbg !348
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 6, i32 2, i1 false), !dbg !348
  %21 = getelementptr inbounds %struct.CCTK_COMPLEX32* %agg.result, i64 0, i32 1, !dbg !348
  store x86_fp80 %result.sroa.31.0, x86_fp80* %21, align 16, !dbg !348
  %22 = getelementptr inbounds i8* %18, i64 26, !dbg !348
  %23 = getelementptr inbounds [6 x i8]* %result.sroa.5, i64 0, i64 0, !dbg !348
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 6, i32 2, i1 false), !dbg !348
  ret void, !dbg !348
}

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTK_Cmplx32Cos(%struct.CCTK_COMPLEX32* noalias nocapture sret %agg.result, %struct.CCTK_COMPLEX32* byval nocapture readonly align 16 %complex_number) #4 {
  %result.sroa.3 = alloca [6 x i8], align 2
  %result.sroa.5 = alloca [6 x i8], align 2
  tail call void @llvm.dbg.declare(metadata [6 x i8]* %result.sroa.3, metadata !221, metadata !347), !dbg !356
  tail call void @llvm.dbg.declare(metadata [6 x i8]* %result.sroa.5, metadata !221, metadata !349), !dbg !356
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX32* %complex_number, metadata !220, metadata !243), !dbg !356
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX32* undef, metadata !221, metadata !243), !dbg !356
  %1 = getelementptr inbounds %struct.CCTK_COMPLEX32* %complex_number, i64 0, i32 1, !dbg !357
  %2 = load x86_fp80* %1, align 16, !dbg !357, !tbaa !340
  %3 = fcmp oeq x86_fp80 %2, 0xK00000000000000000000, !dbg !357
  %4 = getelementptr inbounds %struct.CCTK_COMPLEX32* %complex_number, i64 0, i32 0, !dbg !359
  %5 = load x86_fp80* %4, align 16, !dbg !359, !tbaa !334
  %6 = fptrunc x86_fp80 %5 to double, !dbg !359
  %7 = tail call double @cos(double %6) #6, !dbg !359
  br i1 %3, label %16, label %8, !dbg !356

; <label>:8                                       ; preds = %0
  %9 = fptrunc x86_fp80 %2 to double, !dbg !361
  %10 = tail call double @cosh(double %9) #6, !dbg !361
  %11 = fmul double %7, %10, !dbg !361
  %12 = tail call double @sin(double %6) #6, !dbg !361
  %13 = tail call double @sinh(double %9) #6, !dbg !361
  %14 = fmul double %12, %13, !dbg !361
  %15 = fpext double %14 to x86_fp80, !dbg !361
  tail call void @llvm.dbg.value(metadata x86_fp80 %15, i64 0, metadata !221, metadata !332), !dbg !356
  br label %16

; <label>:16                                      ; preds = %0, %8
  %result.sroa.31.0 = phi x86_fp80 [ %15, %8 ], [ 0xK00000000000000000000, %0 ]
  %result.sroa.0.0.in = phi double [ %11, %8 ], [ %7, %0 ]
  %result.sroa.0.0 = fpext double %result.sroa.0.0.in to x86_fp80, !dbg !359
  %17 = getelementptr inbounds %struct.CCTK_COMPLEX32* %agg.result, i64 0, i32 0, !dbg !356
  store x86_fp80 %result.sroa.0.0, x86_fp80* %17, align 16, !dbg !356
  %18 = bitcast %struct.CCTK_COMPLEX32* %agg.result to i8*, !dbg !356
  %19 = getelementptr inbounds i8* %18, i64 10, !dbg !356
  %20 = getelementptr inbounds [6 x i8]* %result.sroa.3, i64 0, i64 0, !dbg !356
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 6, i32 2, i1 false), !dbg !356
  %21 = getelementptr inbounds %struct.CCTK_COMPLEX32* %agg.result, i64 0, i32 1, !dbg !356
  store x86_fp80 %result.sroa.31.0, x86_fp80* %21, align 16, !dbg !356
  %22 = getelementptr inbounds i8* %18, i64 26, !dbg !356
  %23 = getelementptr inbounds [6 x i8]* %result.sroa.5, i64 0, i64 0, !dbg !356
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %22, i8* %23, i64 6, i32 2, i1 false), !dbg !356
  ret void, !dbg !356
}

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTK_Cmplx32Exp(%struct.CCTK_COMPLEX32* noalias nocapture sret %agg.result, %struct.CCTK_COMPLEX32* byval nocapture readonly align 16 %complex_number) #4 {
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX32* %complex_number, metadata !224, metadata !243), !dbg !363
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX32* undef, metadata !227, metadata !243), !dbg !363
  %1 = getelementptr inbounds %struct.CCTK_COMPLEX32* %complex_number, i64 0, i32 0, !dbg !363
  %2 = load x86_fp80* %1, align 16, !dbg !363, !tbaa !334
  %3 = fptrunc x86_fp80 %2 to double, !dbg !363
  %4 = tail call double @exp(double %3) #6, !dbg !363
  %5 = fpext double %4 to x86_fp80, !dbg !363
  tail call void @llvm.dbg.value(metadata x86_fp80 %5, i64 0, metadata !225, metadata !243), !dbg !363
  %6 = getelementptr inbounds %struct.CCTK_COMPLEX32* %complex_number, i64 0, i32 1, !dbg !363
  %7 = load x86_fp80* %6, align 16, !dbg !363, !tbaa !340
  tail call void @llvm.dbg.value(metadata x86_fp80 %7, i64 0, metadata !226, metadata !243), !dbg !363
  %8 = fptrunc x86_fp80 %7 to double, !dbg !363
  %9 = tail call double @cos(double %8) #6, !dbg !363
  %10 = fpext double %9 to x86_fp80, !dbg !363
  %11 = fmul x86_fp80 %5, %10, !dbg !363
  tail call void @llvm.dbg.value(metadata x86_fp80 %11, i64 0, metadata !227, metadata !331), !dbg !363
  %12 = tail call double @sin(double %8) #6, !dbg !363
  %13 = fpext double %12 to x86_fp80, !dbg !363
  %14 = fmul x86_fp80 %5, %13, !dbg !363
  tail call void @llvm.dbg.value(metadata x86_fp80 %14, i64 0, metadata !227, metadata !332), !dbg !363
  %15 = getelementptr inbounds %struct.CCTK_COMPLEX32* %agg.result, i64 0, i32 0, !dbg !363
  store x86_fp80 %11, x86_fp80* %15, align 16, !dbg !363
  %16 = getelementptr inbounds %struct.CCTK_COMPLEX32* %agg.result, i64 0, i32 1, !dbg !363
  store x86_fp80 %14, x86_fp80* %16, align 16, !dbg !363
  ret void, !dbg !363
}

; Function Attrs: nounwind optsize ssp uwtable
define void @CCTK_Cmplx32Sqrt(%struct.CCTK_COMPLEX32* noalias nocapture sret %agg.result, %struct.CCTK_COMPLEX32* byval nocapture readonly align 16 %complex_number) #4 {
  %result.sroa.4 = alloca [6 x i8], align 2
  %result.sroa.7 = alloca [6 x i8], align 2
  tail call void @llvm.dbg.declare(metadata [6 x i8]* %result.sroa.4, metadata !235, metadata !347), !dbg !364
  tail call void @llvm.dbg.declare(metadata [6 x i8]* %result.sroa.7, metadata !235, metadata !349), !dbg !364
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX32* %complex_number, metadata !230, metadata !243), !dbg !364
  tail call void @llvm.dbg.declare(metadata %struct.CCTK_COMPLEX32* undef, metadata !235, metadata !243), !dbg !364
  %1 = getelementptr inbounds %struct.CCTK_COMPLEX32* %complex_number, i64 0, i32 0, !dbg !365
  %2 = load x86_fp80* %1, align 16, !dbg !365, !tbaa !334
  %3 = fcmp oeq x86_fp80 %2, 0xK00000000000000000000, !dbg !365
  %4 = getelementptr inbounds %struct.CCTK_COMPLEX32* %complex_number, i64 0, i32 1, !dbg !365
  %5 = load x86_fp80* %4, align 16, !dbg !365, !tbaa !340
  %6 = fcmp oeq x86_fp80 %5, 0xK00000000000000000000, !dbg !365
  %or.cond = and i1 %3, %6, !dbg !365
  br i1 %or.cond, label %49, label %._crit_edge, !dbg !365

._crit_edge:                                      ; preds = %0
  %7 = fptrunc x86_fp80 %2 to double, !dbg !367
  %8 = tail call double @fabs(double %7) #6, !dbg !367
  %9 = fpext double %8 to x86_fp80, !dbg !367
  tail call void @llvm.dbg.value(metadata x86_fp80 %9, i64 0, metadata !231, metadata !243), !dbg !364
  %10 = fptrunc x86_fp80 %5 to double, !dbg !367
  %11 = tail call double @fabs(double %10) #6, !dbg !367
  %12 = fpext double %11 to x86_fp80, !dbg !367
  tail call void @llvm.dbg.value(metadata x86_fp80 %12, i64 0, metadata !232, metadata !243), !dbg !364
  %13 = fcmp ult double %8, %11, !dbg !369
  br i1 %13, label %24, label %14, !dbg !367

; <label>:14                                      ; preds = %._crit_edge
  %15 = fdiv x86_fp80 %12, %9, !dbg !371
  tail call void @llvm.dbg.value(metadata x86_fp80 %15, i64 0, metadata !234, metadata !243), !dbg !364
  %16 = tail call double @sqrt(double %8) #6, !dbg !371
  %17 = fmul x86_fp80 %15, %15, !dbg !371
  %18 = fptrunc x86_fp80 %17 to double, !dbg !371
  %19 = tail call double @sqrt(double %18) #6, !dbg !371
  %20 = fadd double %19, 1.000000e+00, !dbg !371
  %21 = fmul double %20, 5.000000e-01, !dbg !371
  %22 = tail call double @sqrt(double %21) #6, !dbg !371
  %23 = fmul double %16, %22, !dbg !371
  br label %36, !dbg !371

; <label>:24                                      ; preds = %._crit_edge
  %25 = fdiv x86_fp80 %9, %12, !dbg !373
  tail call void @llvm.dbg.value(metadata x86_fp80 %25, i64 0, metadata !234, metadata !243), !dbg !364
  %26 = tail call double @sqrt(double %11) #6, !dbg !373
  %27 = fmul x86_fp80 %25, %25, !dbg !373
  %28 = fptrunc x86_fp80 %27 to double, !dbg !373
  %29 = tail call double @sqrt(double %28) #6, !dbg !373
  %30 = fpext double %29 to x86_fp80, !dbg !373
  %31 = fadd x86_fp80 %25, %30, !dbg !373
  %32 = fmul x86_fp80 %31, 0xK3FFE8000000000000000, !dbg !373
  %33 = fptrunc x86_fp80 %32 to double, !dbg !373
  %34 = tail call double @sqrt(double %33) #6, !dbg !373
  %35 = fmul double %26, %34, !dbg !373
  br label %36

; <label>:36                                      ; preds = %24, %14
  %w.0.in = phi double [ %23, %14 ], [ %35, %24 ]
  %w.0 = fpext double %w.0.in to x86_fp80, !dbg !371
  %37 = fcmp ult x86_fp80 %2, 0xK00000000000000000000, !dbg !375
  br i1 %37, label %41, label %38, !dbg !367

; <label>:38                                      ; preds = %36
  tail call void @llvm.dbg.value(metadata x86_fp80 %w.0, i64 0, metadata !235, metadata !331), !dbg !364
  %39 = fmul x86_fp80 %w.0, 0xK40008000000000000000, !dbg !377
  %40 = fdiv x86_fp80 %5, %39, !dbg !377
  tail call void @llvm.dbg.value(metadata x86_fp80 %40, i64 0, metadata !235, metadata !332), !dbg !364
  br label %49, !dbg !377

; <label>:41                                      ; preds = %36
  %42 = fcmp ult x86_fp80 %5, 0xK00000000000000000000, !dbg !379
  br i1 %42, label %43, label %45, !dbg !379

; <label>:43                                      ; preds = %41
  %44 = fsub x86_fp80 0xK80000000000000000000, %w.0, !dbg !379
  br label %45, !dbg !379

; <label>:45                                      ; preds = %41, %43
  %46 = phi x86_fp80 [ %44, %43 ], [ %w.0, %41 ], !dbg !379
  tail call void @llvm.dbg.value(metadata x86_fp80 %46, i64 0, metadata !231, metadata !243), !dbg !364
  %47 = fmul x86_fp80 %46, 0xK40008000000000000000, !dbg !379
  %48 = fdiv x86_fp80 %5, %47, !dbg !379
  tail call void @llvm.dbg.value(metadata x86_fp80 %48, i64 0, metadata !235, metadata !331), !dbg !364
  tail call void @llvm.dbg.value(metadata x86_fp80 %46, i64 0, metadata !235, metadata !332), !dbg !364
  br label %49

; <label>:49                                      ; preds = %0, %38, %45
  %result.sroa.41.0 = phi x86_fp80 [ %40, %38 ], [ %46, %45 ], [ 0xK00000000000000000000, %0 ]
  %result.sroa.0.0 = phi x86_fp80 [ %w.0, %38 ], [ %48, %45 ], [ 0xK00000000000000000000, %0 ]
  %50 = getelementptr inbounds %struct.CCTK_COMPLEX32* %agg.result, i64 0, i32 0, !dbg !364
  store x86_fp80 %result.sroa.0.0, x86_fp80* %50, align 16, !dbg !364
  %51 = bitcast %struct.CCTK_COMPLEX32* %agg.result to i8*, !dbg !364
  %52 = getelementptr inbounds i8* %51, i64 10, !dbg !364
  %53 = getelementptr inbounds [6 x i8]* %result.sroa.4, i64 0, i64 0, !dbg !364
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %52, i8* %53, i64 6, i32 2, i1 false), !dbg !364
  %54 = getelementptr inbounds %struct.CCTK_COMPLEX32* %agg.result, i64 0, i32 1, !dbg !364
  store x86_fp80 %result.sroa.41.0, x86_fp80* %54, align 16, !dbg !364
  %55 = getelementptr inbounds i8* %51, i64 26, !dbg !364
  %56 = getelementptr inbounds [6 x i8]* %result.sroa.7, i64 0, i64 0, !dbg !364
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %55, i8* %56, i64 6, i32 2, i1 false), !dbg !364
  ret void, !dbg !364
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #1

declare float @fabsf(float)

attributes #0 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!238, !239, !240}
!llvm.ident = !{!241}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Apple LLVM version 7.0.0 (clang-700.1.76)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !2, subprograms: !3, globals: !236, imports: !2)
!1 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/Complex.c", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!2 = !{}
!3 = !{!4, !10, !24, !29, !32, !38, !41, !48, !53, !58, !64, !68, !72, !78, !86, !99, !104, !107, !113, !116, !123, !128, !133, !139, !143, !147, !153, !161, !174, !179, !182, !188, !191, !198, !203, !208, !214, !218, !222, !228}
!4 = !DISubprogram(name: "CCTKi_version_main_Complex_c", scope: !1, file: !1, line: 21, type: !5, isLocal: false, isDefinition: true, scopeLine: 21, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @CCTKi_version_main_Complex_c, variables: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{!7}
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64, align: 64)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!10 = !DISubprogram(name: "CCTK_Cmplx8", scope: !1, file: !1, line: 532, type: !11, isLocal: false, isDefinition: true, scopeLine: 532, flags: DIFlagPrototyped, isOptimized: true, function: <2 x float> (float, float)* @CCTK_Cmplx8, variables: !20)
!11 = !DISubroutineType(types: !12)
!12 = !{!13, !18, !18}
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "CCTK_COMPLEX8", file: !14, line: 52, baseType: !15)
!14 = !DIFile(filename: "../../SPEC_CPU2006v1.1/benchspec/CPU2006/436.cactusADM/src/Cactus/../include/cctk_Types.h", directory: "/Users/vaspol/Documents/classes/EECS583/ClassProject/source_extraction_scripts")
!15 = !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 48, size: 64, align: 32, elements: !16)
!16 = !{!17, !19}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "Re", scope: !15, file: !14, line: 50, baseType: !18, size: 32, align: 32)
!18 = !DIBasicType(name: "float", size: 32, align: 32, encoding: DW_ATE_float)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "Im", scope: !15, file: !14, line: 51, baseType: !18, size: 32, align: 32, offset: 32)
!20 = !{!21, !22, !23}
!21 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Re", arg: 1, scope: !10, file: !1, line: 532, type: !18)
!22 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Im", arg: 2, scope: !10, file: !1, line: 532, type: !18)
!23 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !10, file: !1, line: 532, type: !13)
!24 = !DISubprogram(name: "CCTK_Cmplx8Real", scope: !1, file: !1, line: 532, type: !25, isLocal: false, isDefinition: true, scopeLine: 532, flags: DIFlagPrototyped, isOptimized: true, function: float (<2 x float>)* @CCTK_Cmplx8Real, variables: !27)
!25 = !DISubroutineType(types: !26)
!26 = !{!18, !13}
!27 = !{!28}
!28 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "complex_number", arg: 1, scope: !24, file: !1, line: 532, type: !13)
!29 = !DISubprogram(name: "CCTK_Cmplx8Imag", scope: !1, file: !1, line: 532, type: !25, isLocal: false, isDefinition: true, scopeLine: 532, flags: DIFlagPrototyped, isOptimized: true, function: float (<2 x float>)* @CCTK_Cmplx8Imag, variables: !30)
!30 = !{!31}
!31 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "complex_number", arg: 1, scope: !29, file: !1, line: 532, type: !13)
!32 = !DISubprogram(name: "CCTK_Cmplx8Conjg", scope: !1, file: !1, line: 532, type: !33, isLocal: false, isDefinition: true, scopeLine: 532, flags: DIFlagPrototyped, isOptimized: true, function: <2 x float> (<2 x float>)* @CCTK_Cmplx8Conjg, variables: !35)
!33 = !DISubroutineType(types: !34)
!34 = !{!13, !13}
!35 = !{!36, !37}
!36 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "complex_number", arg: 1, scope: !32, file: !1, line: 532, type: !13)
!37 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !32, file: !1, line: 532, type: !13)
!38 = !DISubprogram(name: "CCTK_Cmplx8Abs", scope: !1, file: !1, line: 532, type: !25, isLocal: false, isDefinition: true, scopeLine: 532, flags: DIFlagPrototyped, isOptimized: true, function: float (<2 x float>)* @CCTK_Cmplx8Abs, variables: !39)
!39 = !{!40}
!40 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "complex_number", arg: 1, scope: !38, file: !1, line: 532, type: !13)
!41 = !DISubprogram(name: "CCTK_Cmplx8Add", scope: !1, file: !1, line: 532, type: !42, isLocal: false, isDefinition: true, scopeLine: 532, flags: DIFlagPrototyped, isOptimized: true, function: <2 x float> (<2 x float>, <2 x float>)* @CCTK_Cmplx8Add, variables: !44)
!42 = !DISubroutineType(types: !43)
!43 = !{!13, !13, !13}
!44 = !{!45, !46, !47}
!45 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !41, file: !1, line: 532, type: !13)
!46 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !41, file: !1, line: 532, type: !13)
!47 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !41, file: !1, line: 532, type: !13)
!48 = !DISubprogram(name: "CCTK_Cmplx8Sub", scope: !1, file: !1, line: 532, type: !42, isLocal: false, isDefinition: true, scopeLine: 532, flags: DIFlagPrototyped, isOptimized: true, function: <2 x float> (<2 x float>, <2 x float>)* @CCTK_Cmplx8Sub, variables: !49)
!49 = !{!50, !51, !52}
!50 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !48, file: !1, line: 532, type: !13)
!51 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !48, file: !1, line: 532, type: !13)
!52 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !48, file: !1, line: 532, type: !13)
!53 = !DISubprogram(name: "CCTK_Cmplx8Mul", scope: !1, file: !1, line: 532, type: !42, isLocal: false, isDefinition: true, scopeLine: 532, flags: DIFlagPrototyped, isOptimized: true, function: <2 x float> (<2 x float>, <2 x float>)* @CCTK_Cmplx8Mul, variables: !54)
!54 = !{!55, !56, !57}
!55 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !53, file: !1, line: 532, type: !13)
!56 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !53, file: !1, line: 532, type: !13)
!57 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !53, file: !1, line: 532, type: !13)
!58 = !DISubprogram(name: "CCTK_Cmplx8Div", scope: !1, file: !1, line: 532, type: !42, isLocal: false, isDefinition: true, scopeLine: 532, flags: DIFlagPrototyped, isOptimized: true, function: <2 x float> (<2 x float>, <2 x float>)* @CCTK_Cmplx8Div, variables: !59)
!59 = !{!60, !61, !62, !63}
!60 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !58, file: !1, line: 532, type: !13)
!61 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !58, file: !1, line: 532, type: !13)
!62 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "factor", scope: !58, file: !1, line: 532, type: !18)
!63 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !58, file: !1, line: 532, type: !13)
!64 = !DISubprogram(name: "CCTK_Cmplx8Sin", scope: !1, file: !1, line: 532, type: !33, isLocal: false, isDefinition: true, scopeLine: 532, flags: DIFlagPrototyped, isOptimized: true, function: <2 x float> (<2 x float>)* @CCTK_Cmplx8Sin, variables: !65)
!65 = !{!66, !67}
!66 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "complex_number", arg: 1, scope: !64, file: !1, line: 532, type: !13)
!67 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !64, file: !1, line: 532, type: !13)
!68 = !DISubprogram(name: "CCTK_Cmplx8Cos", scope: !1, file: !1, line: 532, type: !33, isLocal: false, isDefinition: true, scopeLine: 532, flags: DIFlagPrototyped, isOptimized: true, function: <2 x float> (<2 x float>)* @CCTK_Cmplx8Cos, variables: !69)
!69 = !{!70, !71}
!70 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "complex_number", arg: 1, scope: !68, file: !1, line: 532, type: !13)
!71 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !68, file: !1, line: 532, type: !13)
!72 = !DISubprogram(name: "CCTK_Cmplx8Exp", scope: !1, file: !1, line: 532, type: !33, isLocal: false, isDefinition: true, scopeLine: 532, flags: DIFlagPrototyped, isOptimized: true, function: <2 x float> (<2 x float>)* @CCTK_Cmplx8Exp, variables: !73)
!73 = !{!74, !75, !76, !77}
!74 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "complex_number", arg: 1, scope: !72, file: !1, line: 532, type: !13)
!75 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rho", scope: !72, file: !1, line: 532, type: !18)
!76 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "theta", scope: !72, file: !1, line: 532, type: !18)
!77 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !72, file: !1, line: 532, type: !13)
!78 = !DISubprogram(name: "CCTK_Cmplx8Sqrt", scope: !1, file: !1, line: 532, type: !33, isLocal: false, isDefinition: true, scopeLine: 532, flags: DIFlagPrototyped, isOptimized: true, function: <2 x float> (<2 x float>)* @CCTK_Cmplx8Sqrt, variables: !79)
!79 = !{!80, !81, !82, !83, !84, !85}
!80 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "complex_number", arg: 1, scope: !78, file: !1, line: 532, type: !13)
!81 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !78, file: !1, line: 532, type: !18)
!82 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !78, file: !1, line: 532, type: !18)
!83 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "w", scope: !78, file: !1, line: 532, type: !18)
!84 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "t", scope: !78, file: !1, line: 532, type: !18)
!85 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !78, file: !1, line: 532, type: !13)
!86 = !DISubprogram(name: "CCTK_Cmplx16", scope: !1, file: !1, line: 536, type: !87, isLocal: false, isDefinition: true, scopeLine: 536, flags: DIFlagPrototyped, isOptimized: true, function: { double, double } (double, double)* @CCTK_Cmplx16, variables: !95)
!87 = !DISubroutineType(types: !88)
!88 = !{!89, !93, !93}
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "CCTK_COMPLEX16", file: !14, line: 44, baseType: !90)
!90 = !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 40, size: 128, align: 64, elements: !91)
!91 = !{!92, !94}
!92 = !DIDerivedType(tag: DW_TAG_member, name: "Re", scope: !90, file: !14, line: 42, baseType: !93, size: 64, align: 64)
!93 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "Im", scope: !90, file: !14, line: 43, baseType: !93, size: 64, align: 64, offset: 64)
!95 = !{!96, !97, !98}
!96 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Re", arg: 1, scope: !86, file: !1, line: 536, type: !93)
!97 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Im", arg: 2, scope: !86, file: !1, line: 536, type: !93)
!98 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !86, file: !1, line: 536, type: !89)
!99 = !DISubprogram(name: "CCTK_Cmplx16Real", scope: !1, file: !1, line: 536, type: !100, isLocal: false, isDefinition: true, scopeLine: 536, flags: DIFlagPrototyped, isOptimized: true, function: double (double, double)* @CCTK_Cmplx16Real, variables: !102)
!100 = !DISubroutineType(types: !101)
!101 = !{!93, !89}
!102 = !{!103}
!103 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "complex_number", arg: 1, scope: !99, file: !1, line: 536, type: !89)
!104 = !DISubprogram(name: "CCTK_Cmplx16Imag", scope: !1, file: !1, line: 536, type: !100, isLocal: false, isDefinition: true, scopeLine: 536, flags: DIFlagPrototyped, isOptimized: true, function: double (double, double)* @CCTK_Cmplx16Imag, variables: !105)
!105 = !{!106}
!106 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "complex_number", arg: 1, scope: !104, file: !1, line: 536, type: !89)
!107 = !DISubprogram(name: "CCTK_Cmplx16Conjg", scope: !1, file: !1, line: 536, type: !108, isLocal: false, isDefinition: true, scopeLine: 536, flags: DIFlagPrototyped, isOptimized: true, function: { double, double } (double, double)* @CCTK_Cmplx16Conjg, variables: !110)
!108 = !DISubroutineType(types: !109)
!109 = !{!89, !89}
!110 = !{!111, !112}
!111 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "complex_number", arg: 1, scope: !107, file: !1, line: 536, type: !89)
!112 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !107, file: !1, line: 536, type: !89)
!113 = !DISubprogram(name: "CCTK_Cmplx16Abs", scope: !1, file: !1, line: 536, type: !100, isLocal: false, isDefinition: true, scopeLine: 536, flags: DIFlagPrototyped, isOptimized: true, function: double (double, double)* @CCTK_Cmplx16Abs, variables: !114)
!114 = !{!115}
!115 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "complex_number", arg: 1, scope: !113, file: !1, line: 536, type: !89)
!116 = !DISubprogram(name: "CCTK_Cmplx16Add", scope: !1, file: !1, line: 536, type: !117, isLocal: false, isDefinition: true, scopeLine: 536, flags: DIFlagPrototyped, isOptimized: true, function: { double, double } (double, double, double, double)* @CCTK_Cmplx16Add, variables: !119)
!117 = !DISubroutineType(types: !118)
!118 = !{!89, !89, !89}
!119 = !{!120, !121, !122}
!120 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !116, file: !1, line: 536, type: !89)
!121 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !116, file: !1, line: 536, type: !89)
!122 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !116, file: !1, line: 536, type: !89)
!123 = !DISubprogram(name: "CCTK_Cmplx16Sub", scope: !1, file: !1, line: 536, type: !117, isLocal: false, isDefinition: true, scopeLine: 536, flags: DIFlagPrototyped, isOptimized: true, function: { double, double } (double, double, double, double)* @CCTK_Cmplx16Sub, variables: !124)
!124 = !{!125, !126, !127}
!125 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !123, file: !1, line: 536, type: !89)
!126 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !123, file: !1, line: 536, type: !89)
!127 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !123, file: !1, line: 536, type: !89)
!128 = !DISubprogram(name: "CCTK_Cmplx16Mul", scope: !1, file: !1, line: 536, type: !117, isLocal: false, isDefinition: true, scopeLine: 536, flags: DIFlagPrototyped, isOptimized: true, function: { double, double } (double, double, double, double)* @CCTK_Cmplx16Mul, variables: !129)
!129 = !{!130, !131, !132}
!130 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !128, file: !1, line: 536, type: !89)
!131 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !128, file: !1, line: 536, type: !89)
!132 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !128, file: !1, line: 536, type: !89)
!133 = !DISubprogram(name: "CCTK_Cmplx16Div", scope: !1, file: !1, line: 536, type: !117, isLocal: false, isDefinition: true, scopeLine: 536, flags: DIFlagPrototyped, isOptimized: true, function: { double, double } (double, double, double, double)* @CCTK_Cmplx16Div, variables: !134)
!134 = !{!135, !136, !137, !138}
!135 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !133, file: !1, line: 536, type: !89)
!136 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !133, file: !1, line: 536, type: !89)
!137 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "factor", scope: !133, file: !1, line: 536, type: !93)
!138 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !133, file: !1, line: 536, type: !89)
!139 = !DISubprogram(name: "CCTK_Cmplx16Sin", scope: !1, file: !1, line: 536, type: !108, isLocal: false, isDefinition: true, scopeLine: 536, flags: DIFlagPrototyped, isOptimized: true, function: { double, double } (double, double)* @CCTK_Cmplx16Sin, variables: !140)
!140 = !{!141, !142}
!141 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "complex_number", arg: 1, scope: !139, file: !1, line: 536, type: !89)
!142 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !139, file: !1, line: 536, type: !89)
!143 = !DISubprogram(name: "CCTK_Cmplx16Cos", scope: !1, file: !1, line: 536, type: !108, isLocal: false, isDefinition: true, scopeLine: 536, flags: DIFlagPrototyped, isOptimized: true, function: { double, double } (double, double)* @CCTK_Cmplx16Cos, variables: !144)
!144 = !{!145, !146}
!145 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "complex_number", arg: 1, scope: !143, file: !1, line: 536, type: !89)
!146 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !143, file: !1, line: 536, type: !89)
!147 = !DISubprogram(name: "CCTK_Cmplx16Exp", scope: !1, file: !1, line: 536, type: !108, isLocal: false, isDefinition: true, scopeLine: 536, flags: DIFlagPrototyped, isOptimized: true, function: { double, double } (double, double)* @CCTK_Cmplx16Exp, variables: !148)
!148 = !{!149, !150, !151, !152}
!149 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "complex_number", arg: 1, scope: !147, file: !1, line: 536, type: !89)
!150 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rho", scope: !147, file: !1, line: 536, type: !93)
!151 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "theta", scope: !147, file: !1, line: 536, type: !93)
!152 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !147, file: !1, line: 536, type: !89)
!153 = !DISubprogram(name: "CCTK_Cmplx16Sqrt", scope: !1, file: !1, line: 536, type: !108, isLocal: false, isDefinition: true, scopeLine: 536, flags: DIFlagPrototyped, isOptimized: true, function: { double, double } (double, double)* @CCTK_Cmplx16Sqrt, variables: !154)
!154 = !{!155, !156, !157, !158, !159, !160}
!155 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "complex_number", arg: 1, scope: !153, file: !1, line: 536, type: !89)
!156 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !153, file: !1, line: 536, type: !93)
!157 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !153, file: !1, line: 536, type: !93)
!158 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "w", scope: !153, file: !1, line: 536, type: !93)
!159 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "t", scope: !153, file: !1, line: 536, type: !93)
!160 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !153, file: !1, line: 536, type: !89)
!161 = !DISubprogram(name: "CCTK_Cmplx32", scope: !1, file: !1, line: 540, type: !162, isLocal: false, isDefinition: true, scopeLine: 540, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.CCTK_COMPLEX32*, x86_fp80, x86_fp80)* @CCTK_Cmplx32, variables: !170)
!162 = !DISubroutineType(types: !163)
!163 = !{!164, !168, !168}
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "CCTK_COMPLEX32", file: !14, line: 36, baseType: !165)
!165 = !DICompositeType(tag: DW_TAG_structure_type, file: !14, line: 32, size: 256, align: 128, elements: !166)
!166 = !{!167, !169}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "Re", scope: !165, file: !14, line: 34, baseType: !168, size: 128, align: 128)
!168 = !DIBasicType(name: "long double", size: 128, align: 128, encoding: DW_ATE_float)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "Im", scope: !165, file: !14, line: 35, baseType: !168, size: 128, align: 128, offset: 128)
!170 = !{!171, !172, !173}
!171 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Re", arg: 1, scope: !161, file: !1, line: 540, type: !168)
!172 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "Im", arg: 2, scope: !161, file: !1, line: 540, type: !168)
!173 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !161, file: !1, line: 540, type: !164)
!174 = !DISubprogram(name: "CCTK_Cmplx32Real", scope: !1, file: !1, line: 540, type: !175, isLocal: false, isDefinition: true, scopeLine: 540, flags: DIFlagPrototyped, isOptimized: true, function: x86_fp80 (%struct.CCTK_COMPLEX32*)* @CCTK_Cmplx32Real, variables: !177)
!175 = !DISubroutineType(types: !176)
!176 = !{!168, !164}
!177 = !{!178}
!178 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "complex_number", arg: 1, scope: !174, file: !1, line: 540, type: !164)
!179 = !DISubprogram(name: "CCTK_Cmplx32Imag", scope: !1, file: !1, line: 540, type: !175, isLocal: false, isDefinition: true, scopeLine: 540, flags: DIFlagPrototyped, isOptimized: true, function: x86_fp80 (%struct.CCTK_COMPLEX32*)* @CCTK_Cmplx32Imag, variables: !180)
!180 = !{!181}
!181 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "complex_number", arg: 1, scope: !179, file: !1, line: 540, type: !164)
!182 = !DISubprogram(name: "CCTK_Cmplx32Conjg", scope: !1, file: !1, line: 540, type: !183, isLocal: false, isDefinition: true, scopeLine: 540, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.CCTK_COMPLEX32*, %struct.CCTK_COMPLEX32*)* @CCTK_Cmplx32Conjg, variables: !185)
!183 = !DISubroutineType(types: !184)
!184 = !{!164, !164}
!185 = !{!186, !187}
!186 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "complex_number", arg: 1, scope: !182, file: !1, line: 540, type: !164)
!187 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !182, file: !1, line: 540, type: !164)
!188 = !DISubprogram(name: "CCTK_Cmplx32Abs", scope: !1, file: !1, line: 540, type: !175, isLocal: false, isDefinition: true, scopeLine: 540, flags: DIFlagPrototyped, isOptimized: true, function: x86_fp80 (%struct.CCTK_COMPLEX32*)* @CCTK_Cmplx32Abs, variables: !189)
!189 = !{!190}
!190 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "complex_number", arg: 1, scope: !188, file: !1, line: 540, type: !164)
!191 = !DISubprogram(name: "CCTK_Cmplx32Add", scope: !1, file: !1, line: 540, type: !192, isLocal: false, isDefinition: true, scopeLine: 540, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.CCTK_COMPLEX32*, %struct.CCTK_COMPLEX32*, %struct.CCTK_COMPLEX32*)* @CCTK_Cmplx32Add, variables: !194)
!192 = !DISubroutineType(types: !193)
!193 = !{!164, !164, !164}
!194 = !{!195, !196, !197}
!195 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !191, file: !1, line: 540, type: !164)
!196 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !191, file: !1, line: 540, type: !164)
!197 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !191, file: !1, line: 540, type: !164)
!198 = !DISubprogram(name: "CCTK_Cmplx32Sub", scope: !1, file: !1, line: 540, type: !192, isLocal: false, isDefinition: true, scopeLine: 540, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.CCTK_COMPLEX32*, %struct.CCTK_COMPLEX32*, %struct.CCTK_COMPLEX32*)* @CCTK_Cmplx32Sub, variables: !199)
!199 = !{!200, !201, !202}
!200 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !198, file: !1, line: 540, type: !164)
!201 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !198, file: !1, line: 540, type: !164)
!202 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !198, file: !1, line: 540, type: !164)
!203 = !DISubprogram(name: "CCTK_Cmplx32Mul", scope: !1, file: !1, line: 540, type: !192, isLocal: false, isDefinition: true, scopeLine: 540, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.CCTK_COMPLEX32*, %struct.CCTK_COMPLEX32*, %struct.CCTK_COMPLEX32*)* @CCTK_Cmplx32Mul, variables: !204)
!204 = !{!205, !206, !207}
!205 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !203, file: !1, line: 540, type: !164)
!206 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !203, file: !1, line: 540, type: !164)
!207 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !203, file: !1, line: 540, type: !164)
!208 = !DISubprogram(name: "CCTK_Cmplx32Div", scope: !1, file: !1, line: 540, type: !192, isLocal: false, isDefinition: true, scopeLine: 540, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.CCTK_COMPLEX32*, %struct.CCTK_COMPLEX32*, %struct.CCTK_COMPLEX32*)* @CCTK_Cmplx32Div, variables: !209)
!209 = !{!210, !211, !212, !213}
!210 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "a", arg: 1, scope: !208, file: !1, line: 540, type: !164)
!211 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "b", arg: 2, scope: !208, file: !1, line: 540, type: !164)
!212 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "factor", scope: !208, file: !1, line: 540, type: !168)
!213 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !208, file: !1, line: 540, type: !164)
!214 = !DISubprogram(name: "CCTK_Cmplx32Sin", scope: !1, file: !1, line: 540, type: !183, isLocal: false, isDefinition: true, scopeLine: 540, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.CCTK_COMPLEX32*, %struct.CCTK_COMPLEX32*)* @CCTK_Cmplx32Sin, variables: !215)
!215 = !{!216, !217}
!216 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "complex_number", arg: 1, scope: !214, file: !1, line: 540, type: !164)
!217 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !214, file: !1, line: 540, type: !164)
!218 = !DISubprogram(name: "CCTK_Cmplx32Cos", scope: !1, file: !1, line: 540, type: !183, isLocal: false, isDefinition: true, scopeLine: 540, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.CCTK_COMPLEX32*, %struct.CCTK_COMPLEX32*)* @CCTK_Cmplx32Cos, variables: !219)
!219 = !{!220, !221}
!220 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "complex_number", arg: 1, scope: !218, file: !1, line: 540, type: !164)
!221 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !218, file: !1, line: 540, type: !164)
!222 = !DISubprogram(name: "CCTK_Cmplx32Exp", scope: !1, file: !1, line: 540, type: !183, isLocal: false, isDefinition: true, scopeLine: 540, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.CCTK_COMPLEX32*, %struct.CCTK_COMPLEX32*)* @CCTK_Cmplx32Exp, variables: !223)
!223 = !{!224, !225, !226, !227}
!224 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "complex_number", arg: 1, scope: !222, file: !1, line: 540, type: !164)
!225 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rho", scope: !222, file: !1, line: 540, type: !168)
!226 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "theta", scope: !222, file: !1, line: 540, type: !168)
!227 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !222, file: !1, line: 540, type: !164)
!228 = !DISubprogram(name: "CCTK_Cmplx32Sqrt", scope: !1, file: !1, line: 540, type: !183, isLocal: false, isDefinition: true, scopeLine: 540, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.CCTK_COMPLEX32*, %struct.CCTK_COMPLEX32*)* @CCTK_Cmplx32Sqrt, variables: !229)
!229 = !{!230, !231, !232, !233, !234, !235}
!230 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "complex_number", arg: 1, scope: !228, file: !1, line: 540, type: !164)
!231 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !228, file: !1, line: 540, type: !168)
!232 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "y", scope: !228, file: !1, line: 540, type: !168)
!233 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "w", scope: !228, file: !1, line: 540, type: !168)
!234 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "t", scope: !228, file: !1, line: 540, type: !168)
!235 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !228, file: !1, line: 540, type: !164)
!236 = !{!237}
!237 = !DIGlobalVariable(name: "rcsid", scope: !0, file: !1, line: 19, type: !7, isLocal: true, isDefinition: true)
!238 = !{i32 2, !"Dwarf Version", i32 2}
!239 = !{i32 2, !"Debug Info Version", i32 700000003}
!240 = !{i32 1, !"PIC Level", i32 2}
!241 = !{!"Apple LLVM version 7.0.0 (clang-700.1.76)"}
!242 = !DILocation(line: 21, column: 1, scope: !4)
!243 = !DIExpression()
!244 = !DILocation(line: 532, column: 3, scope: !10)
!245 = !DIExpression(DW_OP_bit_piece, 0, 32)
!246 = !DIExpression(DW_OP_bit_piece, 32, 32)
!247 = !DILocation(line: 532, column: 3, scope: !24)
!248 = !DILocation(line: 532, column: 3, scope: !29)
!249 = !DILocation(line: 532, column: 3, scope: !32)
!250 = !DILocation(line: 532, column: 3, scope: !38)
!251 = !DILocation(line: 532, column: 3, scope: !41)
!252 = !DILocation(line: 532, column: 3, scope: !48)
!253 = !DILocation(line: 532, column: 3, scope: !53)
!254 = !DILocation(line: 532, column: 3, scope: !58)
!255 = !DILocation(line: 532, column: 3, scope: !64)
!256 = !DILocation(line: 532, column: 3, scope: !257)
!257 = distinct !DILexicalBlock(scope: !64, file: !1, line: 532, column: 3)
!258 = !DILocation(line: 532, column: 3, scope: !259)
!259 = distinct !DILexicalBlock(scope: !257, file: !1, line: 532, column: 3)
!260 = !DILocation(line: 532, column: 3, scope: !261)
!261 = distinct !DILexicalBlock(scope: !257, file: !1, line: 532, column: 3)
!262 = !DILocation(line: 532, column: 3, scope: !68)
!263 = !DILocation(line: 532, column: 3, scope: !264)
!264 = distinct !DILexicalBlock(scope: !68, file: !1, line: 532, column: 3)
!265 = !DILocation(line: 532, column: 3, scope: !266)
!266 = distinct !DILexicalBlock(scope: !264, file: !1, line: 532, column: 3)
!267 = !DILocation(line: 532, column: 3, scope: !268)
!268 = distinct !DILexicalBlock(scope: !264, file: !1, line: 532, column: 3)
!269 = !DILocation(line: 532, column: 3, scope: !72)
!270 = !DILocation(line: 532, column: 3, scope: !78)
!271 = !DILocation(line: 532, column: 3, scope: !272)
!272 = distinct !DILexicalBlock(scope: !78, file: !1, line: 532, column: 3)
!273 = !DILocation(line: 532, column: 3, scope: !274)
!274 = distinct !DILexicalBlock(scope: !272, file: !1, line: 532, column: 3)
!275 = !DILocation(line: 532, column: 3, scope: !276)
!276 = distinct !DILexicalBlock(scope: !274, file: !1, line: 532, column: 3)
!277 = !DILocation(line: 532, column: 3, scope: !278)
!278 = distinct !DILexicalBlock(scope: !276, file: !1, line: 532, column: 3)
!279 = !DILocation(line: 532, column: 3, scope: !280)
!280 = distinct !DILexicalBlock(scope: !276, file: !1, line: 532, column: 3)
!281 = !DILocation(line: 532, column: 3, scope: !282)
!282 = distinct !DILexicalBlock(scope: !274, file: !1, line: 532, column: 3)
!283 = !DILocation(line: 532, column: 3, scope: !284)
!284 = distinct !DILexicalBlock(scope: !282, file: !1, line: 532, column: 3)
!285 = !DILocation(line: 532, column: 3, scope: !286)
!286 = distinct !DILexicalBlock(scope: !282, file: !1, line: 532, column: 3)
!287 = !DILocation(line: 536, column: 3, scope: !86)
!288 = !DIExpression(DW_OP_bit_piece, 0, 64)
!289 = !DIExpression(DW_OP_bit_piece, 64, 64)
!290 = !DILocation(line: 536, column: 3, scope: !99)
!291 = !DILocation(line: 536, column: 3, scope: !104)
!292 = !DILocation(line: 536, column: 3, scope: !107)
!293 = !DILocation(line: 536, column: 3, scope: !113)
!294 = !DILocation(line: 536, column: 3, scope: !116)
!295 = !DILocation(line: 536, column: 3, scope: !123)
!296 = !DILocation(line: 536, column: 3, scope: !128)
!297 = !DILocation(line: 536, column: 3, scope: !133)
!298 = !DILocation(line: 536, column: 3, scope: !139)
!299 = !DILocation(line: 536, column: 3, scope: !300)
!300 = distinct !DILexicalBlock(scope: !139, file: !1, line: 536, column: 3)
!301 = !DILocation(line: 536, column: 3, scope: !302)
!302 = distinct !DILexicalBlock(scope: !300, file: !1, line: 536, column: 3)
!303 = !DILocation(line: 536, column: 3, scope: !304)
!304 = distinct !DILexicalBlock(scope: !300, file: !1, line: 536, column: 3)
!305 = !DILocation(line: 536, column: 3, scope: !143)
!306 = !DILocation(line: 536, column: 3, scope: !307)
!307 = distinct !DILexicalBlock(scope: !143, file: !1, line: 536, column: 3)
!308 = !DILocation(line: 536, column: 3, scope: !309)
!309 = distinct !DILexicalBlock(scope: !307, file: !1, line: 536, column: 3)
!310 = !DILocation(line: 536, column: 3, scope: !311)
!311 = distinct !DILexicalBlock(scope: !307, file: !1, line: 536, column: 3)
!312 = !DILocation(line: 536, column: 3, scope: !147)
!313 = !DILocation(line: 536, column: 3, scope: !153)
!314 = !DILocation(line: 536, column: 3, scope: !315)
!315 = distinct !DILexicalBlock(scope: !153, file: !1, line: 536, column: 3)
!316 = !DILocation(line: 536, column: 3, scope: !317)
!317 = distinct !DILexicalBlock(scope: !315, file: !1, line: 536, column: 3)
!318 = !DILocation(line: 536, column: 3, scope: !319)
!319 = distinct !DILexicalBlock(scope: !317, file: !1, line: 536, column: 3)
!320 = !DILocation(line: 536, column: 3, scope: !321)
!321 = distinct !DILexicalBlock(scope: !319, file: !1, line: 536, column: 3)
!322 = !DILocation(line: 536, column: 3, scope: !323)
!323 = distinct !DILexicalBlock(scope: !319, file: !1, line: 536, column: 3)
!324 = !DILocation(line: 536, column: 3, scope: !325)
!325 = distinct !DILexicalBlock(scope: !317, file: !1, line: 536, column: 3)
!326 = !DILocation(line: 536, column: 3, scope: !327)
!327 = distinct !DILexicalBlock(scope: !325, file: !1, line: 536, column: 3)
!328 = !DILocation(line: 536, column: 3, scope: !329)
!329 = distinct !DILexicalBlock(scope: !325, file: !1, line: 536, column: 3)
!330 = !DILocation(line: 540, column: 3, scope: !161)
!331 = !DIExpression(DW_OP_bit_piece, 0, 80)
!332 = !DIExpression(DW_OP_bit_piece, 128, 80)
!333 = !DILocation(line: 540, column: 3, scope: !174)
!334 = !{!335, !336, i64 0}
!335 = !{!"", !336, i64 0, !336, i64 16}
!336 = !{!"long double", !337, i64 0}
!337 = !{!"omnipotent char", !338, i64 0}
!338 = !{!"Simple C/C++ TBAA"}
!339 = !DILocation(line: 540, column: 3, scope: !179)
!340 = !{!335, !336, i64 16}
!341 = !DILocation(line: 540, column: 3, scope: !182)
!342 = !DILocation(line: 540, column: 3, scope: !188)
!343 = !DILocation(line: 540, column: 3, scope: !191)
!344 = !DILocation(line: 540, column: 3, scope: !198)
!345 = !DILocation(line: 540, column: 3, scope: !203)
!346 = !DILocation(line: 540, column: 3, scope: !208)
!347 = !DIExpression(DW_OP_bit_piece, 80, 48)
!348 = !DILocation(line: 540, column: 3, scope: !214)
!349 = !DIExpression(DW_OP_bit_piece, 208, 48)
!350 = !DILocation(line: 540, column: 3, scope: !351)
!351 = distinct !DILexicalBlock(scope: !214, file: !1, line: 540, column: 3)
!352 = !DILocation(line: 540, column: 3, scope: !353)
!353 = distinct !DILexicalBlock(scope: !351, file: !1, line: 540, column: 3)
!354 = !DILocation(line: 540, column: 3, scope: !355)
!355 = distinct !DILexicalBlock(scope: !351, file: !1, line: 540, column: 3)
!356 = !DILocation(line: 540, column: 3, scope: !218)
!357 = !DILocation(line: 540, column: 3, scope: !358)
!358 = distinct !DILexicalBlock(scope: !218, file: !1, line: 540, column: 3)
!359 = !DILocation(line: 540, column: 3, scope: !360)
!360 = distinct !DILexicalBlock(scope: !358, file: !1, line: 540, column: 3)
!361 = !DILocation(line: 540, column: 3, scope: !362)
!362 = distinct !DILexicalBlock(scope: !358, file: !1, line: 540, column: 3)
!363 = !DILocation(line: 540, column: 3, scope: !222)
!364 = !DILocation(line: 540, column: 3, scope: !228)
!365 = !DILocation(line: 540, column: 3, scope: !366)
!366 = distinct !DILexicalBlock(scope: !228, file: !1, line: 540, column: 3)
!367 = !DILocation(line: 540, column: 3, scope: !368)
!368 = distinct !DILexicalBlock(scope: !366, file: !1, line: 540, column: 3)
!369 = !DILocation(line: 540, column: 3, scope: !370)
!370 = distinct !DILexicalBlock(scope: !368, file: !1, line: 540, column: 3)
!371 = !DILocation(line: 540, column: 3, scope: !372)
!372 = distinct !DILexicalBlock(scope: !370, file: !1, line: 540, column: 3)
!373 = !DILocation(line: 540, column: 3, scope: !374)
!374 = distinct !DILexicalBlock(scope: !370, file: !1, line: 540, column: 3)
!375 = !DILocation(line: 540, column: 3, scope: !376)
!376 = distinct !DILexicalBlock(scope: !368, file: !1, line: 540, column: 3)
!377 = !DILocation(line: 540, column: 3, scope: !378)
!378 = distinct !DILexicalBlock(scope: !376, file: !1, line: 540, column: 3)
!379 = !DILocation(line: 540, column: 3, scope: !380)
!380 = distinct !DILexicalBlock(scope: !376, file: !1, line: 540, column: 3)
