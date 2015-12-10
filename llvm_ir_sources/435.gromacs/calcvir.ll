; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/calcvir.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_graph = type { i32, i32, i32, i32, i32, i32*, i32**, [3 x i32]* }

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
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #5
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
  %3 = tail call float @llvm.fabs.f32(float %__x) #6
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
  %3 = tail call double @llvm.fabs.f64(double %__x) #6
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
  %3 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #6
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
  %1 = tail call float @llvm.fabs.f32(float %__x) #6
  %2 = fcmp oeq float %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfd(double %__x) #2 {
  %1 = tail call double @llvm.fabs.f64(double %__x) #6
  %2 = fcmp oeq double %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfl(x86_fp80 %__x) #2 {
  %1 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #6
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
  %1 = tail call <2 x float> @__sincosf_stret(float %__x) #5
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
  %1 = tail call { double, double } @__sincos_stret(double %__x) #5
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
  %1 = tail call <2 x float> @__sincospif_stret(float %__x) #5
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
  %1 = tail call { double, double } @__sincospi_stret(double %__x) #5
  %2 = extractvalue { double, double } %1, 0
  %3 = extractvalue { double, double } %1, 1
  store double %2, double* %__sinp, align 8, !tbaa !16
  store double %3, double* %__cosp, align 8, !tbaa !16
  ret void
}

; Function Attrs: optsize
declare { double, double } @__sincospi_stret(double) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @calc_vir(%struct.__sFILE* nocapture readnone %log, i32 %nxf, [3 x float]* nocapture readonly %x, [3 x float]* nocapture readonly %f, [3 x float]* nocapture %vir) #4 {
  %1 = icmp sgt i32 %nxf, 0
  br i1 %1, label %.lr.ph, label %51

.lr.ph:                                           ; preds = %0
  %2 = add i32 %nxf, -1
  br label %3

; <label>:3                                       ; preds = %3, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %3 ]
  %dvxx.02 = phi float [ 0.000000e+00, %.lr.ph ], [ %13, %3 ]
  %4 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %42, %3 ]
  %5 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %39, %3 ]
  %6 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %31, %3 ]
  %7 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %23, %3 ]
  %8 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 0
  %9 = load float* %8, align 4, !tbaa !14
  %10 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv, i64 0
  %11 = load float* %10, align 4, !tbaa !14
  %12 = fmul float %9, %11
  %13 = fadd float %dvxx.02, %12
  %14 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv, i64 1
  %15 = load float* %14, align 4, !tbaa !14
  %16 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv, i64 2
  %17 = load float* %16, align 4, !tbaa !14
  %18 = insertelement <2 x float> undef, float %9, i32 0
  %19 = insertelement <2 x float> %18, float %9, i32 1
  %20 = insertelement <2 x float> undef, float %17, i32 0
  %21 = insertelement <2 x float> %20, float %15, i32 1
  %22 = fmul <2 x float> %19, %21
  %23 = fadd <2 x float> %7, %22
  %24 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 1
  %25 = load float* %24, align 4, !tbaa !14
  %26 = insertelement <2 x float> undef, float %15, i32 0
  %27 = insertelement <2 x float> %26, float %11, i32 1
  %28 = insertelement <2 x float> undef, float %25, i32 0
  %29 = insertelement <2 x float> %28, float %25, i32 1
  %30 = fmul <2 x float> %27, %29
  %31 = fadd <2 x float> %6, %30
  %32 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 2
  %33 = load float* %32, align 4, !tbaa !14
  %34 = insertelement <2 x float> undef, float %11, i32 0
  %35 = insertelement <2 x float> %34, float %17, i32 1
  %36 = insertelement <2 x float> undef, float %33, i32 0
  %37 = insertelement <2 x float> %36, float %25, i32 1
  %38 = fmul <2 x float> %35, %37
  %39 = fadd <2 x float> %5, %38
  %40 = insertelement <2 x float> %36, float %33, i32 1
  %41 = fmul <2 x float> %21, %40
  %42 = fadd <2 x float> %4, %41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %2
  br i1 %exitcond, label %._crit_edge, label %3

._crit_edge:                                      ; preds = %3
  %phitmp = fpext float %13 to double
  %phitmp19 = fmul double %phitmp, 5.000000e-01
  %43 = fpext <2 x float> %23 to <2 x double>
  %44 = fmul <2 x double> %43, <double 5.000000e-01, double 5.000000e-01>
  %45 = fpext <2 x float> %31 to <2 x double>
  %46 = fmul <2 x double> %45, <double 5.000000e-01, double 5.000000e-01>
  %47 = fpext <2 x float> %39 to <2 x double>
  %48 = fmul <2 x double> %47, <double 5.000000e-01, double 5.000000e-01>
  %49 = fpext <2 x float> %42 to <2 x double>
  %50 = fmul <2 x double> %49, <double 5.000000e-01, double 5.000000e-01>
  br label %51

; <label>:51                                      ; preds = %._crit_edge, %0
  %dvxx.0.lcssa = phi double [ %phitmp19, %._crit_edge ], [ 0.000000e+00, %0 ]
  %52 = phi <2 x double> [ %50, %._crit_edge ], [ zeroinitializer, %0 ]
  %53 = phi <2 x double> [ %48, %._crit_edge ], [ zeroinitializer, %0 ]
  %54 = phi <2 x double> [ %46, %._crit_edge ], [ zeroinitializer, %0 ]
  %55 = phi <2 x double> [ %44, %._crit_edge ], [ zeroinitializer, %0 ]
  %56 = getelementptr inbounds [3 x float]* %vir, i64 0, i64 0
  %57 = load float* %56, align 4, !tbaa !14
  %58 = fpext float %57 to double
  %59 = fsub double %58, %dvxx.0.lcssa
  %60 = fptrunc double %59 to float
  store float %60, float* %56, align 4, !tbaa !14
  %61 = getelementptr inbounds [3 x float]* %vir, i64 0, i64 1
  %62 = load float* %61, align 4, !tbaa !14
  %63 = fpext float %62 to double
  %64 = extractelement <2 x double> %55, i32 1
  %65 = fsub double %63, %64
  %66 = fptrunc double %65 to float
  store float %66, float* %61, align 4, !tbaa !14
  %67 = getelementptr inbounds [3 x float]* %vir, i64 0, i64 2
  %68 = load float* %67, align 4, !tbaa !14
  %69 = fpext float %68 to double
  %70 = extractelement <2 x double> %55, i32 0
  %71 = fsub double %69, %70
  %72 = fptrunc double %71 to float
  store float %72, float* %67, align 4, !tbaa !14
  %73 = getelementptr inbounds [3 x float]* %vir, i64 1, i64 0
  %74 = load float* %73, align 4, !tbaa !14
  %75 = fpext float %74 to double
  %76 = extractelement <2 x double> %54, i32 1
  %77 = fsub double %75, %76
  %78 = fptrunc double %77 to float
  store float %78, float* %73, align 4, !tbaa !14
  %79 = getelementptr inbounds [3 x float]* %vir, i64 1, i64 1
  %80 = load float* %79, align 4, !tbaa !14
  %81 = fpext float %80 to double
  %82 = extractelement <2 x double> %54, i32 0
  %83 = fsub double %81, %82
  %84 = fptrunc double %83 to float
  store float %84, float* %79, align 4, !tbaa !14
  %85 = getelementptr inbounds [3 x float]* %vir, i64 1, i64 2
  %86 = load float* %85, align 4, !tbaa !14
  %87 = fpext float %86 to double
  %88 = extractelement <2 x double> %53, i32 1
  %89 = fsub double %87, %88
  %90 = fptrunc double %89 to float
  store float %90, float* %85, align 4, !tbaa !14
  %91 = getelementptr inbounds [3 x float]* %vir, i64 2, i64 0
  %92 = load float* %91, align 4, !tbaa !14
  %93 = fpext float %92 to double
  %94 = extractelement <2 x double> %53, i32 0
  %95 = fsub double %93, %94
  %96 = fptrunc double %95 to float
  store float %96, float* %91, align 4, !tbaa !14
  %97 = getelementptr inbounds [3 x float]* %vir, i64 2, i64 1
  %98 = load float* %97, align 4, !tbaa !14
  %99 = fpext float %98 to double
  %100 = extractelement <2 x double> %52, i32 1
  %101 = fsub double %99, %100
  %102 = fptrunc double %101 to float
  store float %102, float* %97, align 4, !tbaa !14
  %103 = getelementptr inbounds [3 x float]* %vir, i64 2, i64 2
  %104 = load float* %103, align 4, !tbaa !14
  %105 = fpext float %104 to double
  %106 = extractelement <2 x double> %52, i32 0
  %107 = fsub double %105, %106
  %108 = fptrunc double %107 to float
  store float %108, float* %103, align 4, !tbaa !14
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @f_calc_vir(%struct.__sFILE* nocapture readnone %log, i32 %i0, i32 %i1, [3 x float]* nocapture readonly %x, [3 x float]* nocapture readonly %f, [3 x float]* nocapture %vir, %struct.t_graph* nocapture readonly %g, [3 x float]* nocapture readonly %box) #4 {
  %1 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 1
  %2 = load i32* %1, align 4, !tbaa !18
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %215

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 3
  %6 = load i32* %5, align 4, !tbaa !20
  %7 = icmp slt i32 %6, %i0
  %i0. = select i1 %7, i32 %i0, i32 %6
  %8 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 4
  %9 = load i32* %8, align 4, !tbaa !21
  %10 = icmp slt i32 %9, %i1
  %11 = add nsw i32 %9, 1
  %12 = select i1 %10, i32 %11, i32 %i1
  %13 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 7
  %14 = load [3 x i32]** %13, align 8, !tbaa !22
  %15 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %16 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %17 = load float* %16, align 4, !tbaa !14
  %fabsf = tail call float @fabsf(float %17) #7
  %18 = fpext float %fabsf to double
  %19 = fcmp ogt double %18, 1.200000e-38
  br i1 %19, label %.thread, label %20

; <label>:20                                      ; preds = %4
  %21 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %22 = load float* %21, align 4, !tbaa !14
  %fabsf1 = tail call float @fabsf(float %22) #7
  %23 = fpext float %fabsf1 to double
  %24 = fcmp ogt double %23, 1.200000e-38
  br i1 %24, label %.thread, label %26

.thread:                                          ; preds = %20, %4
  %25 = icmp slt i32 %i0., %12
  br i1 %25, label %.lr.ph33.i, label %lo_fcv.exit

; <label>:26                                      ; preds = %20
  %27 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %28 = load float* %27, align 4, !tbaa !14
  %fabsf2 = tail call float @fabsf(float %28) #7
  %29 = fpext float %fabsf2 to double
  %30 = fcmp ogt double %29, 1.200000e-38
  %31 = icmp slt i32 %i0., %12
  br i1 %30, label %.preheader1.i, label %.preheader.i

.preheader1.i:                                    ; preds = %26
  br i1 %31, label %.lr.ph33.i, label %lo_fcv.exit

.lr.ph33.i:                                       ; preds = %.thread, %.preheader1.i
  %32 = load float* %15, align 4, !tbaa !14
  %33 = getelementptr inbounds [3 x float]* %box, i64 0, i64 6
  %34 = load float* %33, align 4, !tbaa !14
  %35 = getelementptr inbounds [3 x float]* %box, i64 0, i64 4
  %36 = load float* %35, align 4, !tbaa !14
  %37 = getelementptr inbounds [3 x float]* %box, i64 0, i64 7
  %38 = load float* %37, align 4, !tbaa !14
  %39 = getelementptr inbounds [3 x float]* %box, i64 0, i64 8
  %40 = load float* %39, align 4, !tbaa !14
  %41 = sext i32 %i0. to i64
  %42 = add i32 %12, -1
  %43 = icmp sgt i32 %6, %i0
  %smax = select i1 %43, i32 %6, i32 %i0
  %44 = sub i32 %42, %smax
  br label %54

.preheader.i:                                     ; preds = %26
  br i1 %31, label %.lr.ph.i, label %lo_fcv.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %45 = load float* %15, align 4, !tbaa !14
  %46 = getelementptr inbounds [3 x float]* %box, i64 0, i64 4
  %47 = load float* %46, align 4, !tbaa !14
  %48 = getelementptr inbounds [3 x float]* %box, i64 0, i64 8
  %49 = load float* %48, align 4, !tbaa !14
  %50 = sext i32 %i0. to i64
  %51 = add i32 %12, -1
  %52 = icmp sgt i32 %6, %i0
  %smax38 = select i1 %52, i32 %6, i32 %i0
  %53 = sub i32 %51, %smax38
  br label %118

; <label>:54                                      ; preds = %54, %.lr.ph33.i
  %indvars.iv64.i = phi i64 [ %41, %.lr.ph33.i ], [ %indvars.iv.next65.i, %54 ]
  %indvars.iv62.i = phi i64 [ 0, %.lr.ph33.i ], [ %indvars.iv.next63.i, %54 ]
  %dvzz.032.i = phi float [ 0.000000e+00, %.lr.ph33.i ], [ %117, %54 ]
  %55 = phi <4 x float> [ zeroinitializer, %.lr.ph33.i ], [ %101, %54 ]
  %56 = phi <4 x float> [ zeroinitializer, %.lr.ph33.i ], [ %115, %54 ]
  %57 = mul nsw i64 %indvars.iv64.i, 3
  %58 = mul nsw i64 %indvars.iv62.i, 3
  %59 = getelementptr inbounds [3 x i32]* %14, i64 0, i64 %58
  %60 = load i32* %59, align 4, !tbaa !23
  %61 = add nuw nsw i64 %58, 1
  %62 = getelementptr inbounds [3 x i32]* %14, i64 0, i64 %61
  %63 = load i32* %62, align 4, !tbaa !23
  %64 = add nuw nsw i64 %58, 2
  %65 = getelementptr inbounds [3 x i32]* %14, i64 0, i64 %64
  %66 = load i32* %65, align 4, !tbaa !23
  %67 = getelementptr inbounds [3 x float]* %x, i64 0, i64 %57
  %68 = load float* %67, align 4, !tbaa !14
  %69 = sitofp i32 %60 to float
  %70 = fmul float %32, %69
  %71 = fsub float %68, %70
  %72 = sitofp i32 %63 to float
  %73 = fmul float %17, %72
  %74 = fsub float %71, %73
  %75 = sitofp i32 %66 to float
  %76 = fmul float %34, %75
  %77 = fsub float %74, %76
  %78 = getelementptr inbounds [3 x float]* %f, i64 0, i64 %57
  %79 = load float* %78, align 4, !tbaa !14
  %80 = add nsw i64 %57, 1
  %81 = getelementptr inbounds [3 x float]* %f, i64 0, i64 %80
  %82 = load float* %81, align 4, !tbaa !14
  %83 = add nsw i64 %57, 2
  %84 = getelementptr inbounds [3 x float]* %f, i64 0, i64 %83
  %85 = load float* %84, align 4, !tbaa !14
  %86 = getelementptr inbounds [3 x float]* %x, i64 0, i64 %80
  %87 = load float* %86, align 4, !tbaa !14
  %88 = fmul float %36, %72
  %89 = fsub float %87, %88
  %90 = fmul float %38, %75
  %91 = fsub float %89, %90
  %92 = insertelement <4 x float> undef, float %77, i32 0
  %93 = insertelement <4 x float> %92, float %77, i32 1
  %94 = insertelement <4 x float> %93, float %77, i32 2
  %95 = insertelement <4 x float> %94, float %91, i32 3
  %96 = insertelement <4 x float> undef, float %79, i32 0
  %97 = insertelement <4 x float> %96, float %82, i32 1
  %98 = insertelement <4 x float> %97, float %85, i32 2
  %99 = insertelement <4 x float> %98, float %79, i32 3
  %100 = fmul <4 x float> %95, %99
  %101 = fadd <4 x float> %55, %100
  %102 = getelementptr inbounds [3 x float]* %x, i64 0, i64 %83
  %103 = load float* %102, align 4, !tbaa !14
  %104 = fmul float %40, %75
  %105 = fsub float %103, %104
  %106 = insertelement <4 x float> undef, float %82, i32 0
  %107 = insertelement <4 x float> %106, float %85, i32 1
  %108 = insertelement <4 x float> %107, float %79, i32 2
  %109 = insertelement <4 x float> %108, float %82, i32 3
  %110 = insertelement <4 x float> undef, float %91, i32 0
  %111 = insertelement <4 x float> %110, float %91, i32 1
  %112 = insertelement <4 x float> %111, float %105, i32 2
  %113 = insertelement <4 x float> %112, float %105, i32 3
  %114 = fmul <4 x float> %109, %113
  %115 = fadd <4 x float> %56, %114
  %116 = fmul float %85, %105
  %117 = fadd float %dvzz.032.i, %116
  %indvars.iv.next65.i = add nsw i64 %indvars.iv64.i, 1
  %indvars.iv.next63.i = add nuw nsw i64 %indvars.iv62.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv62.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %44
  br i1 %exitcond, label %lo_fcv.exit, label %54

; <label>:118                                     ; preds = %118, %.lr.ph.i
  %indvars.iv60.i = phi i64 [ %50, %.lr.ph.i ], [ %indvars.iv.next61.i, %118 ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %118 ]
  %dvzz.113.i = phi float [ 0.000000e+00, %.lr.ph.i ], [ %175, %118 ]
  %119 = phi <4 x float> [ zeroinitializer, %.lr.ph.i ], [ %158, %118 ]
  %120 = phi <4 x float> [ zeroinitializer, %.lr.ph.i ], [ %173, %118 ]
  %121 = mul nsw i64 %indvars.iv60.i, 3
  %122 = mul nsw i64 %indvars.iv.i, 3
  %123 = getelementptr inbounds [3 x i32]* %14, i64 0, i64 %122
  %124 = load i32* %123, align 4, !tbaa !23
  %125 = add nuw nsw i64 %122, 1
  %126 = getelementptr inbounds [3 x i32]* %14, i64 0, i64 %125
  %127 = load i32* %126, align 4, !tbaa !23
  %128 = add nuw nsw i64 %122, 2
  %129 = getelementptr inbounds [3 x i32]* %14, i64 0, i64 %128
  %130 = load i32* %129, align 4, !tbaa !23
  %131 = getelementptr inbounds [3 x float]* %x, i64 0, i64 %121
  %132 = load float* %131, align 4, !tbaa !14
  %133 = sitofp i32 %124 to float
  %134 = fmul float %45, %133
  %135 = fsub float %132, %134
  %136 = getelementptr inbounds [3 x float]* %f, i64 0, i64 %121
  %137 = load float* %136, align 4, !tbaa !14
  %138 = add nsw i64 %121, 1
  %139 = getelementptr inbounds [3 x float]* %f, i64 0, i64 %138
  %140 = load float* %139, align 4, !tbaa !14
  %141 = add nsw i64 %121, 2
  %142 = getelementptr inbounds [3 x float]* %f, i64 0, i64 %141
  %143 = load float* %142, align 4, !tbaa !14
  %144 = getelementptr inbounds [3 x float]* %x, i64 0, i64 %138
  %145 = load float* %144, align 4, !tbaa !14
  %146 = sitofp i32 %127 to float
  %147 = fmul float %47, %146
  %148 = fsub float %145, %147
  %149 = insertelement <4 x float> undef, float %135, i32 0
  %150 = insertelement <4 x float> %149, float %135, i32 1
  %151 = insertelement <4 x float> %150, float %135, i32 2
  %152 = insertelement <4 x float> %151, float %148, i32 3
  %153 = insertelement <4 x float> undef, float %137, i32 0
  %154 = insertelement <4 x float> %153, float %140, i32 1
  %155 = insertelement <4 x float> %154, float %143, i32 2
  %156 = insertelement <4 x float> %155, float %137, i32 3
  %157 = fmul <4 x float> %152, %156
  %158 = fadd <4 x float> %119, %157
  %159 = getelementptr inbounds [3 x float]* %x, i64 0, i64 %141
  %160 = load float* %159, align 4, !tbaa !14
  %161 = sitofp i32 %130 to float
  %162 = fmul float %49, %161
  %163 = fsub float %160, %162
  %164 = insertelement <4 x float> undef, float %140, i32 0
  %165 = insertelement <4 x float> %164, float %143, i32 1
  %166 = insertelement <4 x float> %165, float %137, i32 2
  %167 = insertelement <4 x float> %166, float %140, i32 3
  %168 = insertelement <4 x float> undef, float %148, i32 0
  %169 = insertelement <4 x float> %168, float %148, i32 1
  %170 = insertelement <4 x float> %169, float %163, i32 2
  %171 = insertelement <4 x float> %170, float %163, i32 3
  %172 = fmul <4 x float> %167, %171
  %173 = fadd <4 x float> %120, %172
  %174 = fmul float %143, %163
  %175 = fadd float %dvzz.113.i, %174
  %indvars.iv.next61.i = add nsw i64 %indvars.iv60.i, 1
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %lftr.wideiv39 = trunc i64 %indvars.iv.i to i32
  %exitcond40 = icmp eq i32 %lftr.wideiv39, %53
  br i1 %exitcond40, label %lo_fcv.exit, label %118

lo_fcv.exit:                                      ; preds = %118, %54, %.thread, %.preheader1.i, %.preheader.i
  %dvzz.2.i = phi float [ 0.000000e+00, %.preheader.i ], [ 0.000000e+00, %.preheader1.i ], [ 0.000000e+00, %.thread ], [ %117, %54 ], [ %175, %118 ]
  %176 = phi <4 x float> [ zeroinitializer, %.preheader.i ], [ zeroinitializer, %.preheader1.i ], [ zeroinitializer, %.thread ], [ %101, %54 ], [ %158, %118 ]
  %177 = phi <4 x float> [ zeroinitializer, %.preheader.i ], [ zeroinitializer, %.preheader1.i ], [ zeroinitializer, %.thread ], [ %115, %54 ], [ %173, %118 ]
  %178 = fpext <4 x float> %176 to <4 x double>
  %179 = fmul <4 x double> %178, <double 5.000000e-01, double 5.000000e-01, double 5.000000e-01, double 5.000000e-01>
  %180 = bitcast [3 x float]* %vir to <4 x float>*
  %181 = load <4 x float>* %180, align 4, !tbaa !14
  %182 = fpext <4 x float> %181 to <4 x double>
  %183 = fsub <4 x double> %182, %179
  %184 = fptrunc <4 x double> %183 to <4 x float>
  %185 = bitcast [3 x float]* %vir to <4 x float>*
  store <4 x float> %184, <4 x float>* %185, align 4, !tbaa !14
  %186 = getelementptr inbounds [3 x float]* %vir, i64 1, i64 1
  %187 = fpext <4 x float> %177 to <4 x double>
  %188 = fmul <4 x double> %187, <double 5.000000e-01, double 5.000000e-01, double 5.000000e-01, double 5.000000e-01>
  %189 = bitcast float* %186 to <4 x float>*
  %190 = load <4 x float>* %189, align 4, !tbaa !14
  %191 = fpext <4 x float> %190 to <4 x double>
  %192 = fsub <4 x double> %191, %188
  %193 = fptrunc <4 x double> %192 to <4 x float>
  %194 = bitcast float* %186 to <4 x float>*
  store <4 x float> %193, <4 x float>* %194, align 4, !tbaa !14
  %195 = fpext float %dvzz.2.i to double
  %196 = fmul double %195, 5.000000e-01
  %197 = getelementptr inbounds [3 x float]* %vir, i64 2, i64 2
  %198 = load float* %197, align 4, !tbaa !14
  %199 = fpext float %198 to double
  %200 = fsub double %199, %196
  %201 = fptrunc double %200 to float
  store float %201, float* %197, align 4, !tbaa !14
  %202 = icmp sgt i32 %i0., %i0
  br i1 %202, label %203, label %208

; <label>:203                                     ; preds = %lo_fcv.exit
  %204 = sub nsw i32 %i0., %i0
  %205 = sext i32 %i0 to i64
  %206 = getelementptr inbounds [3 x float]* %x, i64 %205
  %207 = getelementptr inbounds [3 x float]* %f, i64 %205
  tail call void @calc_vir(%struct.__sFILE* undef, i32 %204, [3 x float]* %206, [3 x float]* %207, [3 x float]* %vir) #8
  br label %208

; <label>:208                                     ; preds = %203, %lo_fcv.exit
  %209 = icmp slt i32 %12, %i1
  br i1 %209, label %210, label %220

; <label>:210                                     ; preds = %208
  %211 = sub nsw i32 %i1, %12
  %212 = sext i32 %12 to i64
  %213 = getelementptr inbounds [3 x float]* %x, i64 %212
  %214 = getelementptr inbounds [3 x float]* %f, i64 %212
  tail call void @calc_vir(%struct.__sFILE* undef, i32 %211, [3 x float]* %213, [3 x float]* %214, [3 x float]* %vir) #8
  br label %220

; <label>:215                                     ; preds = %0
  %216 = sub nsw i32 %i1, %i0
  %217 = sext i32 %i0 to i64
  %218 = getelementptr inbounds [3 x float]* %x, i64 %217
  %219 = getelementptr inbounds [3 x float]* %f, i64 %217
  tail call void @calc_vir(%struct.__sFILE* undef, i32 %216, [3 x float]* %218, [3 x float]* %219, [3 x float]* %vir) #8
  br label %220

; <label>:220                                     ; preds = %208, %210, %215
  ret void
}

declare float @fabsf(float)

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { readnone }
attributes #7 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { optsize }

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
!18 = !{!19, !7, i64 4}
!19 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !4, i64 24, !4, i64 32, !4, i64 40}
!20 = !{!19, !7, i64 12}
!21 = !{!19, !7, i64 16}
!22 = !{!19, !4, i64 40}
!23 = !{!7, !7, i64 0}
