; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/maths.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinitef(float %__x) #0 {
  %1 = fcmp ord float %__x, 0.000000e+00
  br i1 %1, label %2, label %5

; <label>:2                                       ; preds = %0
  %3 = tail call float @llvm.fabs.f32(float %__x) #6
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
  %3 = tail call double @llvm.fabs.f64(double %__x) #6
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
  %3 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #6
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
  %1 = tail call float @llvm.fabs.f32(float %__x) #6
  %2 = fcmp oeq float %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfd(double %__x) #0 {
  %1 = tail call double @llvm.fabs.f64(double %__x) #6
  %2 = fcmp oeq double %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfl(x86_fp80 %__x) #0 {
  %1 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #6
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
  %1 = tail call <2 x float> @__sincosf_stret(float %__x) #7
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
  %1 = tail call { double, double } @__sincos_stret(double %__x) #7
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
  %1 = tail call <2 x float> @__sincospif_stret(float %__x) #7
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
  %1 = tail call { double, double } @__sincospi_stret(double %__x) #7
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
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #7
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

; Function Attrs: nounwind optsize readnone ssp uwtable
define i32 @gmx_nint(float %a) #4 {
  %1 = fcmp olt float %a, 0.000000e+00
  br i1 %1, label %2, label %4

; <label>:2                                       ; preds = %0
  %3 = fadd float %a, -5.000000e-01
  br label %6

; <label>:4                                       ; preds = %0
  %5 = fadd float %a, 5.000000e-01
  br label %6

; <label>:6                                       ; preds = %4, %2
  %.sink = phi float [ %3, %2 ], [ %5, %4 ]
  %7 = fptosi float %.sink to i32
  ret i32 %7
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define float @sign(float %x, float %y) #4 {
  %1 = fcmp olt float %y, 0.000000e+00
  %fabsf = tail call float @fabsf(float %x) #5
  br i1 %1, label %2, label %4

; <label>:2                                       ; preds = %0
  %3 = fsub float -0.000000e+00, %fabsf
  br label %4

; <label>:4                                       ; preds = %0, %2
  %.0 = phi float [ %3, %2 ], [ %fabsf, %0 ]
  ret float %.0
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define float @gmx_erf(float %x) #4 {
  %1 = bitcast float %x to i32
  %2 = and i32 %1, 2147483647
  %3 = icmp ugt i32 %2, 2139095039
  br i1 %3, label %4, label %11

; <label>:4                                       ; preds = %0
  %5 = lshr i32 %1, 31
  %6 = shl nuw nsw i32 %5, 1
  %7 = sub nsw i32 1, %6
  %8 = sitofp i32 %7 to float
  %9 = fdiv float 1.000000e+00, %x
  %10 = fadd float %8, %9
  br label %146

; <label>:11                                      ; preds = %0
  %12 = icmp ult i32 %2, 1062731776
  br i1 %12, label %13, label %48

; <label>:13                                      ; preds = %11
  %14 = icmp ult i32 %2, 830472192
  br i1 %14, label %15, label %25

; <label>:15                                      ; preds = %13
  %16 = icmp ult i32 %2, 67108864
  br i1 %16, label %17, label %22

; <label>:17                                      ; preds = %15
  %18 = fmul float %x, 8.000000e+00
  %19 = fmul float %x, 0x3FF06EBA80000000
  %20 = fadd float %18, %19
  %21 = fmul float %20, 1.250000e-01
  br label %146

; <label>:22                                      ; preds = %15
  %23 = fmul float %x, 0x3FC06EBA80000000
  %24 = fadd float %23, %x
  br label %146

; <label>:25                                      ; preds = %13
  %26 = fmul float %x, %x
  %27 = fmul float %26, 0x3EF8EAD620000000
  %28 = fsub float 0xBF77A29120000000, %27
  %29 = fmul float %26, %28
  %30 = fadd float %29, 0xBF9D2A51E0000000
  %31 = fmul float %26, %30
  %32 = fadd float %31, 0xBFD4CD7D60000000
  %33 = fmul float %26, %32
  %34 = fadd float %33, 0x3FC06EBA80000000
  %35 = fmul float %26, 0x3ED09C4340000000
  %36 = fsub float 0x3F215DC920000000, %35
  %37 = fmul float %26, %36
  %38 = fadd float %37, 0x3F74D022C0000000
  %39 = fmul float %26, %38
  %40 = fadd float %39, 0x3FB0A54C60000000
  %41 = fmul float %26, %40
  %42 = fadd float %41, 0x3FD97779C0000000
  %43 = fmul float %26, %42
  %44 = fadd float %43, 1.000000e+00
  %45 = fdiv float %34, %44
  %46 = fmul float %45, %x
  %47 = fadd float %46, %x
  br label %146

; <label>:48                                      ; preds = %11
  %49 = icmp ult i32 %2, 1067450368
  br i1 %49, label %50, label %82

; <label>:50                                      ; preds = %48
  %fabsf1 = tail call float @fabsf(float %x) #5
  %51 = fadd float %fabsf1, -1.000000e+00
  %52 = fmul float %51, 0x3F61BF3800000000
  %53 = fsub float 0x3FA22A3660000000, %52
  %54 = fmul float %51, %53
  %55 = fadd float %54, 0xBFBC639840000000
  %56 = fmul float %51, %55
  %57 = fadd float %56, 0x3FD45FCA80000000
  %58 = fmul float %51, %57
  %59 = fadd float %58, 0xBFD7D24100000000
  %60 = fmul float %51, %59
  %61 = fadd float %60, 0x3FDA8D00A0000000
  %62 = fmul float %51, %61
  %63 = fadd float %62, 0xBF6359B8C0000000
  %64 = fmul float %51, 0x3F888B5460000000
  %65 = fadd float %64, 0x3F8BEDC260000000
  %66 = fmul float %51, %65
  %67 = fadd float %66, 0x3FC02660E0000000
  %68 = fmul float %51, %67
  %69 = fadd float %68, 0x3FB2635CE0000000
  %70 = fmul float %51, %69
  %71 = fadd float %70, 0x3FE14AF0A0000000
  %72 = fmul float %51, %71
  %73 = fadd float %72, 0x3FBB3E6620000000
  %74 = fmul float %51, %73
  %75 = fadd float %74, 1.000000e+00
  %76 = icmp sgt i32 %1, -1
  %77 = fdiv float %63, %75
  br i1 %76, label %78, label %80

; <label>:78                                      ; preds = %50
  %79 = fadd float %77, 0x3FEB0AC160000000
  br label %146

; <label>:80                                      ; preds = %50
  %81 = fsub float 0xBFEB0AC160000000, %77
  br label %146

; <label>:82                                      ; preds = %48
  %83 = icmp ugt i32 %2, 1086324735
  br i1 %83, label %84, label %86

; <label>:84                                      ; preds = %82
  %85 = icmp sgt i32 %1, -1
  %. = select i1 %85, float 1.000000e+00, float -1.000000e+00
  br label %146

; <label>:86                                      ; preds = %82
  %fabsf = tail call float @fabsf(float %x) #5
  %87 = fmul float %fabsf, %fabsf
  %88 = fdiv float 1.000000e+00, %87
  %89 = icmp ult i32 %2, 1077336942
  %90 = insertelement <2 x float> undef, float %88, i32 0
  %91 = insertelement <2 x float> %90, float %88, i32 1
  br i1 %89, label %92, label %107

; <label>:92                                      ; preds = %86
  %93 = fmul <2 x float> %91, <float 0x3FAEEFF2E0000000, float 0x4023A0EFC0000000>
  %94 = fsub <2 x float> <float 0x401A47EF80000000, float 0xC054526560000000>, %93
  %95 = fmul <2 x float> %94, %91
  %96 = fadd <2 x float> %95, <float 0x405B28A3E0000000, float 0xC067135CE0000000>
  %97 = fmul <2 x float> %96, %91
  %98 = fadd <2 x float> %97, <float 0x407AD02160000000, float 0xC0644CB180000000>
  %99 = fmul <2 x float> %98, %91
  %100 = fadd <2 x float> %99, <float 0x40842B1920000000, float 0xC04F300AE0000000>
  %101 = fmul <2 x float> %100, %91
  %102 = fadd <2 x float> %101, <float 0x407B290DE0000000, float 0xC0251E0440000000>
  %103 = fmul <2 x float> %102, %91
  %104 = fadd <2 x float> %103, <float 0x4061350C60000000, float 0xBFE63416E0000000>
  %105 = fmul <2 x float> %104, %91
  %106 = fadd <2 x float> %105, <float 0x4033A6B9C0000000, float 0xBF84341260000000>
  br label %120

; <label>:107                                     ; preds = %86
  %108 = fmul <2 x float> %91, <float 0x403670E240000000, float 0x407E384EA0000000>
  %109 = fsub <2 x float> <float 0x407DA874E0000000, float 0xC090046160000000>, %108
  %110 = fmul <2 x float> %109, %91
  %111 = fadd <2 x float> %110, <float 0x40A3F219C0000000, float 0xC083EC8820000000>
  %112 = fmul <2 x float> %111, %91
  %113 = fadd <2 x float> %112, <float 0x40A8FFB760000000, float 0xC064145D40000000>
  %114 = fmul <2 x float> %113, %91
  %115 = fadd <2 x float> %114, <float 0x409802EB20000000, float 0xC031C20960000000>
  %116 = fmul <2 x float> %115, %91
  %117 = fadd <2 x float> %116, <float 0x40745CAE20000000, float 0xBFE993BA80000000>
  %118 = fmul <2 x float> %117, %91
  %119 = fadd <2 x float> %118, <float 0x403E568B20000000, float 0xBF84341240000000>
  br label %120

; <label>:120                                     ; preds = %107, %92
  %121 = phi <2 x float> [ %106, %92 ], [ %119, %107 ]
  %122 = extractelement <2 x float> %121, i32 0
  %S.0.in = fmul float %88, %122
  %S.0 = fadd float %S.0.in, 1.000000e+00
  %123 = bitcast float %fabsf to i32
  %124 = and i32 %123, -4096
  %125 = bitcast i32 %124 to float
  %126 = fmul float %125, %125
  %127 = fsub float -5.625000e-01, %126
  %128 = fpext float %127 to double
  %129 = tail call double @exp(double %128) #8
  %130 = fsub float %125, %fabsf
  %131 = fadd float %fabsf, %125
  %132 = fmul float %130, %131
  %133 = extractelement <2 x float> %121, i32 1
  %134 = fdiv float %133, %S.0
  %135 = fadd float %132, %134
  %136 = fpext float %135 to double
  %137 = tail call double @exp(double %136) #8
  %138 = fmul double %129, %137
  %139 = fptrunc double %138 to float
  %140 = icmp sgt i32 %1, -1
  %141 = fdiv float %139, %fabsf
  br i1 %140, label %142, label %144

; <label>:142                                     ; preds = %120
  %143 = fsub float 1.000000e+00, %141
  br label %146

; <label>:144                                     ; preds = %120
  %145 = fadd float %141, -1.000000e+00
  br label %146

; <label>:146                                     ; preds = %84, %144, %142, %80, %78, %25, %22, %17, %4
  %.0 = phi float [ %10, %4 ], [ %21, %17 ], [ %24, %22 ], [ %47, %25 ], [ %79, %78 ], [ %81, %80 ], [ %143, %142 ], [ %145, %144 ], [ %., %84 ]
  ret float %.0
}

; Function Attrs: nounwind optsize readnone
declare double @exp(double) #5

; Function Attrs: nounwind optsize readnone ssp uwtable
define float @gmx_erfc(float %x) #4 {
  %1 = bitcast float %x to i32
  %2 = and i32 %1, 2147483647
  %3 = icmp ugt i32 %2, 2139095039
  br i1 %3, label %4, label %10

; <label>:4                                       ; preds = %0
  %5 = lshr i32 %1, 31
  %6 = shl nuw nsw i32 %5, 1
  %7 = uitofp i32 %6 to float
  %8 = fdiv float 1.000000e+00, %x
  %9 = fadd float %7, %8
  br label %148

; <label>:10                                      ; preds = %0
  %11 = icmp ult i32 %2, 1062731776
  br i1 %11, label %12, label %46

; <label>:12                                      ; preds = %10
  %13 = icmp ult i32 %2, 595591168
  br i1 %13, label %14, label %16

; <label>:14                                      ; preds = %12
  %15 = fsub float 1.000000e+00, %x
  br label %148

; <label>:16                                      ; preds = %12
  %17 = fmul float %x, %x
  %18 = fmul float %17, 0x3EF8EAD620000000
  %19 = fsub float 0xBF77A29120000000, %18
  %20 = fmul float %17, %19
  %21 = fadd float %20, 0xBF9D2A51E0000000
  %22 = fmul float %17, %21
  %23 = fadd float %22, 0xBFD4CD7D60000000
  %24 = fmul float %17, %23
  %25 = fadd float %24, 0x3FC06EBA80000000
  %26 = fmul float %17, 0x3ED09C4340000000
  %27 = fsub float 0x3F215DC920000000, %26
  %28 = fmul float %17, %27
  %29 = fadd float %28, 0x3F74D022C0000000
  %30 = fmul float %17, %29
  %31 = fadd float %30, 0x3FB0A54C60000000
  %32 = fmul float %17, %31
  %33 = fadd float %32, 0x3FD97779C0000000
  %34 = fmul float %17, %33
  %35 = fadd float %34, 1.000000e+00
  %36 = fdiv float %25, %35
  %37 = icmp slt i32 %1, 1048576000
  %38 = fmul float %36, %x
  br i1 %37, label %39, label %42

; <label>:39                                      ; preds = %16
  %40 = fadd float %38, %x
  %41 = fsub float 1.000000e+00, %40
  br label %148

; <label>:42                                      ; preds = %16
  %43 = fadd float %x, -5.000000e-01
  %44 = fadd float %43, %38
  %45 = fsub float 5.000000e-01, %44
  br label %148

; <label>:46                                      ; preds = %10
  %47 = icmp ult i32 %2, 1067450368
  br i1 %47, label %48, label %81

; <label>:48                                      ; preds = %46
  %fabsf2 = tail call float @fabsf(float %x) #5
  %49 = fadd float %fabsf2, -1.000000e+00
  %50 = fmul float %49, 0x3F61BF3800000000
  %51 = fsub float 0x3FA22A3660000000, %50
  %52 = fmul float %49, %51
  %53 = fadd float %52, 0xBFBC639840000000
  %54 = fmul float %49, %53
  %55 = fadd float %54, 0x3FD45FCA80000000
  %56 = fmul float %49, %55
  %57 = fadd float %56, 0xBFD7D24100000000
  %58 = fmul float %49, %57
  %59 = fadd float %58, 0x3FDA8D00A0000000
  %60 = fmul float %49, %59
  %61 = fadd float %60, 0xBF6359B8C0000000
  %62 = fmul float %49, 0x3F888B5460000000
  %63 = fadd float %62, 0x3F8BEDC260000000
  %64 = fmul float %49, %63
  %65 = fadd float %64, 0x3FC02660E0000000
  %66 = fmul float %49, %65
  %67 = fadd float %66, 0x3FB2635CE0000000
  %68 = fmul float %49, %67
  %69 = fadd float %68, 0x3FE14AF0A0000000
  %70 = fmul float %49, %69
  %71 = fadd float %70, 0x3FBB3E6620000000
  %72 = fmul float %49, %71
  %73 = fadd float %72, 1.000000e+00
  %74 = icmp sgt i32 %1, -1
  %75 = fdiv float %61, %73
  br i1 %74, label %76, label %78

; <label>:76                                      ; preds = %48
  %77 = fsub float 0x3FC3D4FA80000000, %75
  br label %148

; <label>:78                                      ; preds = %48
  %79 = fadd float %75, 0x3FEB0AC160000000
  %80 = fadd float %79, 1.000000e+00
  br label %148

; <label>:81                                      ; preds = %46
  %82 = icmp ult i32 %2, 1105199104
  br i1 %82, label %83, label %146

; <label>:83                                      ; preds = %81
  %fabsf = tail call float @fabsf(float %x) #5
  %84 = fmul float %fabsf, %fabsf
  %85 = fdiv float 1.000000e+00, %84
  %86 = icmp ult i32 %2, 1077336941
  br i1 %86, label %87, label %104

; <label>:87                                      ; preds = %83
  %88 = insertelement <2 x float> undef, float %85, i32 0
  %89 = insertelement <2 x float> %88, float %85, i32 1
  %90 = fmul <2 x float> %89, <float 0x3FAEEFF2E0000000, float 0x4023A0EFC0000000>
  %91 = fsub <2 x float> <float 0x401A47EF80000000, float 0xC054526560000000>, %90
  %92 = fmul <2 x float> %91, %89
  %93 = fadd <2 x float> %92, <float 0x405B28A3E0000000, float 0xC067135CE0000000>
  %94 = fmul <2 x float> %93, %89
  %95 = fadd <2 x float> %94, <float 0x407AD02160000000, float 0xC0644CB180000000>
  %96 = fmul <2 x float> %95, %89
  %97 = fadd <2 x float> %96, <float 0x40842B1920000000, float 0xC04F300AE0000000>
  %98 = fmul <2 x float> %97, %89
  %99 = fadd <2 x float> %98, <float 0x407B290DE0000000, float 0xC0251E0440000000>
  %100 = fmul <2 x float> %99, %89
  %101 = fadd <2 x float> %100, <float 0x4061350C60000000, float 0xBFE63416E0000000>
  %102 = fmul <2 x float> %101, %89
  %103 = fadd <2 x float> %102, <float 0x4033A6B9C0000000, float 0xBF84341260000000>
  br label %122

; <label>:104                                     ; preds = %83
  %105 = icmp slt i32 %1, 0
  %106 = icmp ugt i32 %2, 1086324735
  %or.cond = and i1 %105, %106
  br i1 %or.cond, label %148, label %107

; <label>:107                                     ; preds = %104
  %108 = insertelement <2 x float> undef, float %85, i32 0
  %109 = insertelement <2 x float> %108, float %85, i32 1
  %110 = fmul <2 x float> %109, <float 0x403670E240000000, float 0x407E384EA0000000>
  %111 = fsub <2 x float> <float 0x407DA874E0000000, float 0xC090046160000000>, %110
  %112 = fmul <2 x float> %111, %109
  %113 = fadd <2 x float> %112, <float 0x40A3F219C0000000, float 0xC083EC8820000000>
  %114 = fmul <2 x float> %113, %109
  %115 = fadd <2 x float> %114, <float 0x40A8FFB760000000, float 0xC064145D40000000>
  %116 = fmul <2 x float> %115, %109
  %117 = fadd <2 x float> %116, <float 0x409802EB20000000, float 0xC031C20960000000>
  %118 = fmul <2 x float> %117, %109
  %119 = fadd <2 x float> %118, <float 0x40745CAE20000000, float 0xBFE993BA80000000>
  %120 = fmul <2 x float> %119, %109
  %121 = fadd <2 x float> %120, <float 0x403E568B20000000, float 0xBF84341240000000>
  br label %122

; <label>:122                                     ; preds = %107, %87
  %123 = phi <2 x float> [ %103, %87 ], [ %121, %107 ]
  %124 = extractelement <2 x float> %123, i32 0
  %S.0.in = fmul float %85, %124
  %S.0 = fadd float %S.0.in, 1.000000e+00
  %125 = bitcast float %fabsf to i32
  %126 = and i32 %125, -4096
  %127 = bitcast i32 %126 to float
  %128 = fmul float %127, %127
  %129 = fsub float -5.625000e-01, %128
  %130 = fpext float %129 to double
  %131 = tail call double @exp(double %130) #8
  %132 = fsub float %127, %fabsf
  %133 = fadd float %fabsf, %127
  %134 = fmul float %132, %133
  %135 = extractelement <2 x float> %123, i32 1
  %136 = fdiv float %135, %S.0
  %137 = fadd float %134, %136
  %138 = fpext float %137 to double
  %139 = tail call double @exp(double %138) #8
  %140 = fmul double %131, %139
  %141 = fptrunc double %140 to float
  %142 = icmp sgt i32 %1, 0
  %143 = fdiv float %141, %fabsf
  br i1 %142, label %148, label %144

; <label>:144                                     ; preds = %122
  %145 = fsub float 2.000000e+00, %143
  br label %148

; <label>:146                                     ; preds = %81
  %147 = icmp sgt i32 %1, 0
  %. = select i1 %147, float 0.000000e+00, float 2.000000e+00
  br label %148

; <label>:148                                     ; preds = %146, %122, %104, %144, %78, %76, %42, %39, %14, %4
  %.0 = phi float [ %9, %4 ], [ %15, %14 ], [ %41, %39 ], [ %45, %42 ], [ %77, %76 ], [ %80, %78 ], [ %145, %144 ], [ 2.000000e+00, %104 ], [ %143, %122 ], [ %., %146 ]
  ret float %.0
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define float @fast_float_erf(float %x) #4 {
  %1 = fpext float %x to double
  %2 = fmul double %1, 5.000000e-01
  %3 = fadd double %2, 1.000000e+00
  %4 = fdiv double 1.000000e+00, %3
  %5 = fptrunc double %4 to float
  %6 = fpext float %5 to double
  %7 = fmul float %x, %x
  %8 = fsub float -0.000000e+00, %7
  %9 = fpext float %8 to double
  %10 = fadd double %9, 0xBFF43F89C0889BC5
  %11 = fmul double %6, 0x3FC5DF28AF76A5A4
  %12 = fadd double %11, 0xBFEA4F123185DEFD
  %13 = fmul double %6, %12
  %14 = fadd double %13, 0x3FF7D0F60453A1BE
  %15 = fmul double %6, %14
  %16 = fadd double %15, 0xBFF229CBA6063980
  %17 = fmul double %6, %16
  %18 = fadd double %17, 0x3FD1D8F976231CE6
  %19 = fmul double %6, %18
  %20 = fadd double %19, 0xBFC7D84982AAEAA5
  %21 = fmul double %6, %20
  %22 = fadd double %21, 9.678418e-02
  %23 = fmul double %6, %22
  %24 = fadd double %23, 0x3FD7F11F677960EA
  %25 = fmul double %6, %24
  %26 = fadd double %25, 0x3FF00018D48D3588
  %27 = fmul double %6, %26
  %28 = fadd double %10, %27
  %29 = tail call double @exp(double %28) #8
  %30 = fmul double %29, %6
  %31 = fptrunc double %30 to float
  %32 = fsub float 1.000000e+00, %31
  ret float %32
}

; Function Attrs: nounwind optsize readnone ssp uwtable
define float @fast_float_erfc(float %x) #4 {
  %1 = fpext float %x to double
  %2 = fmul double %1, 5.000000e-01
  %3 = fadd double %2, 1.000000e+00
  %4 = fdiv double 1.000000e+00, %3
  %5 = fptrunc double %4 to float
  %6 = fpext float %5 to double
  %7 = fmul float %x, %x
  %8 = fsub float -0.000000e+00, %7
  %9 = fpext float %8 to double
  %10 = fadd double %9, 0xBFF43F89C0889BC5
  %11 = fmul double %6, 0x3FC5DF28AF76A5A4
  %12 = fadd double %11, 0xBFEA4F123185DEFD
  %13 = fmul double %6, %12
  %14 = fadd double %13, 0x3FF7D0F60453A1BE
  %15 = fmul double %6, %14
  %16 = fadd double %15, 0xBFF229CBA6063980
  %17 = fmul double %6, %16
  %18 = fadd double %17, 0x3FD1D8F976231CE6
  %19 = fmul double %6, %18
  %20 = fadd double %19, 0xBFC7D84982AAEAA5
  %21 = fmul double %6, %20
  %22 = fadd double %21, 9.678418e-02
  %23 = fmul double %6, %22
  %24 = fadd double %23, 0x3FD7F11F677960EA
  %25 = fmul double %6, %24
  %26 = fadd double %25, 0x3FF00018D48D3588
  %27 = fmul double %6, %26
  %28 = fadd double %10, %27
  %29 = tail call double @exp(double %28) #8
  %30 = fmul double %29, %6
  %31 = fptrunc double %30 to float
  ret float %31
}

declare float @fabsf(float)

attributes #0 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { readnone }
attributes #7 = { nounwind optsize }
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
