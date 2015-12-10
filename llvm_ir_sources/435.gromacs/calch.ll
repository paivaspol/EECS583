; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/calch.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@gen_waterhydrogen.matrix1 = internal unnamed_addr constant [6 x [3 x float]] [[3 x float] [float 0x3FB4E6F2E0000000, float 0.000000e+00, float 0x3FAD8F7120000000], [3 x float] [float 0x3FB4E6F2E0000000, float 0.000000e+00, float 0x3FAD8F7120000000], [3 x float] [float 0x3FB4E6F2E0000000, float 0.000000e+00, float 0x3FAD8F7120000000], [3 x float] [float 0xBFB4E6F2E0000000, float 0.000000e+00, float 0x3FAD8F7120000000], [3 x float] [float 0xBFB4E6F2E0000000, float 0.000000e+00, float 0x3FAD8F7120000000], [3 x float] [float 0.000000e+00, float 0x3FB4E6F2E0000000, float 0xBFAD8F7120000000]], align 16
@gen_waterhydrogen.matrix2 = internal unnamed_addr constant [6 x [3 x float]] [[3 x float] [float 0xBFB4E6F2E0000000, float 0.000000e+00, float 0x3FAD8F7120000000], [3 x float] [float 0.000000e+00, float 0x3FB4E6F2E0000000, float 0xBFAD8F7120000000], [3 x float] [float 0.000000e+00, float 0xBFB4E6F2E0000000, float 0xBFAD8F7120000000], [3 x float] [float 0.000000e+00, float 0x3FB4E6F2E0000000, float 0xBFAD8F7120000000], [3 x float] [float 0.000000e+00, float 0xBFB4E6F2E0000000, float 0xBFAD8F7120000000], [3 x float] [float 0.000000e+00, float 0xBFB4E6F2E0000000, float 0xBFAD8F7120000000]], align 16
@gen_waterhydrogen.l = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Invalid argument (%d) for nht in routine genh\0A\00", align 1

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
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #6
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
  %3 = tail call float @llvm.fabs.f32(float %__x) #7
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
  %3 = tail call double @llvm.fabs.f64(double %__x) #7
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
  %3 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #7
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
  %1 = tail call float @llvm.fabs.f32(float %__x) #7
  %2 = fcmp oeq float %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfd(double %__x) #2 {
  %1 = tail call double @llvm.fabs.f64(double %__x) #7
  %2 = fcmp oeq double %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfl(x86_fp80 %__x) #2 {
  %1 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #7
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
  %1 = tail call <2 x float> @__sincosf_stret(float %__x) #6
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
  %1 = tail call { double, double } @__sincos_stret(double %__x) #6
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
  %1 = tail call <2 x float> @__sincospif_stret(float %__x) #6
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
  %1 = tail call { double, double } @__sincospi_stret(double %__x) #6
  %2 = extractvalue { double, double } %1, 0
  %3 = extractvalue { double, double } %1, 1
  store double %2, double* %__sinp, align 8, !tbaa !16
  store double %3, double* %__cosp, align 8, !tbaa !16
  ret void
}

; Function Attrs: optsize
declare { double, double } @__sincospi_stret(double) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @gen_waterhydrogen([3 x float]* nocapture readonly %xa, [3 x float]* nocapture %xh) #4 {
  %1 = load i32* @gen_waterhydrogen.l, align 4, !tbaa !18
  %2 = sext i32 %1 to i64
  br label %3

; <label>:3                                       ; preds = %3, %0
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next, %3 ]
  %4 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 %indvars.iv
  %5 = load float* %4, align 4, !tbaa !14
  %6 = getelementptr inbounds [6 x [3 x float]]* @gen_waterhydrogen.matrix1, i64 0, i64 %2, i64 %indvars.iv
  %7 = load float* %6, align 4, !tbaa !14
  %8 = fadd float %5, %7
  %9 = getelementptr inbounds [3 x float]* %xh, i64 0, i64 %indvars.iv
  store float %8, float* %9, align 4, !tbaa !14
  %10 = load float* %4, align 4, !tbaa !14
  %11 = getelementptr inbounds [6 x [3 x float]]* @gen_waterhydrogen.matrix2, i64 0, i64 %2, i64 %indvars.iv
  %12 = load float* %11, align 4, !tbaa !14
  %13 = fadd float %10, %12
  %14 = getelementptr inbounds [3 x float]* %xh, i64 1, i64 %indvars.iv
  store float %13, float* %14, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %15, label %3

; <label>:15                                      ; preds = %3
  %16 = add nsw i32 %1, 1
  %17 = srem i32 %16, 6
  store i32 %17, i32* @gen_waterhydrogen.l, align 4, !tbaa !18
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @calc_h_pos(i32 %nht, [3 x float]* %xa, [3 x float]* nocapture %xh) #4 {
  %sa = alloca [3 x float], align 4
  %sb = alloca [3 x float], align 4
  %sij = alloca [3 x float], align 4
  %dxc = alloca [3 x float], align 4
  %rBB = alloca [3 x float], align 4
  %rNN = alloca [3 x float], align 4
  %xa2 = alloca [4 x [3 x float]], align 16
  %switch.tableidx = add i32 %nht, -2
  %1 = icmp ult i32 %switch.tableidx, 8
  br i1 %1, label %switch.hole_check, label %70

switch.hole_check:                                ; preds = %0
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -57, %switch.maskindex
  %2 = and i8 %switch.shifted, 1
  %switch.lobit = icmp eq i8 %2, 0
  br i1 %switch.lobit, label %70, label %switch.lookup

switch.lookup:                                    ; preds = %switch.hole_check, %switch.lookup
  %indvars.iv84 = phi i64 [ %indvars.iv.next85, %switch.lookup ], [ 0, %switch.hole_check ]
  %rij.040 = phi float [ %14, %switch.lookup ], [ 0.000000e+00, %switch.hole_check ]
  %3 = getelementptr inbounds [3 x float]* %xa, i64 1, i64 %indvars.iv84
  %4 = load float* %3, align 4, !tbaa !14
  %5 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 %indvars.iv84
  %6 = load float* %5, align 4, !tbaa !14
  %7 = fsub float %6, %4
  %8 = getelementptr inbounds [3 x float]* %sij, i64 0, i64 %indvars.iv84
  store float %7, float* %8, align 4, !tbaa !14
  %9 = getelementptr inbounds [3 x float]* %xa, i64 2, i64 %indvars.iv84
  %10 = load float* %9, align 4, !tbaa !14
  %11 = fsub float %4, %10
  %12 = getelementptr inbounds [3 x float]* %sb, i64 0, i64 %indvars.iv84
  store float %11, float* %12, align 4, !tbaa !14
  %13 = fmul float %7, %7
  %14 = fadd float %rij.040, %13
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1
  %exitcond86 = icmp eq i64 %indvars.iv.next85, 3
  br i1 %exitcond86, label %15, label %switch.lookup

; <label>:15                                      ; preds = %switch.lookup
  %sqrtf = tail call float @sqrtf(float %14) #8
  %16 = getelementptr inbounds [3 x float]* %sij, i64 0, i64 1
  %17 = load float* %16, align 4, !tbaa !14
  %18 = getelementptr inbounds [3 x float]* %sb, i64 0, i64 2
  %19 = load float* %18, align 4, !tbaa !14
  %20 = fmul float %17, %19
  %21 = getelementptr inbounds [3 x float]* %sij, i64 0, i64 2
  %22 = load float* %21, align 4, !tbaa !14
  %23 = getelementptr inbounds [3 x float]* %sb, i64 0, i64 1
  %24 = load float* %23, align 4, !tbaa !14
  %25 = fmul float %22, %24
  %26 = fsub float %20, %25
  %27 = getelementptr inbounds [3 x float]* %sa, i64 0, i64 0
  store float %26, float* %27, align 4, !tbaa !14
  %28 = getelementptr inbounds [3 x float]* %sb, i64 0, i64 0
  %29 = load float* %28, align 4, !tbaa !14
  %30 = fmul float %22, %29
  %31 = getelementptr inbounds [3 x float]* %sij, i64 0, i64 0
  %32 = load float* %31, align 4, !tbaa !14
  %33 = fmul float %32, %19
  %34 = fsub float %30, %33
  %35 = getelementptr inbounds [3 x float]* %sa, i64 0, i64 1
  store float %34, float* %35, align 4, !tbaa !14
  %36 = fmul float %32, %24
  %37 = fmul float %17, %29
  %38 = fsub float %36, %37
  %39 = getelementptr inbounds [3 x float]* %sa, i64 0, i64 2
  store float %38, float* %39, align 4, !tbaa !14
  %40 = getelementptr inbounds [3 x float]* %sij, i64 0, i64 0
  %41 = fdiv float %32, %sqrtf
  store float %41, float* %40, align 4, !tbaa !14
  %42 = fmul float %26, %26
  %43 = fadd float %42, 0.000000e+00
  br label %._crit_edge

._crit_edge:                                      ; preds = %15, %._crit_edge
  %indvars.iv.next82142 = phi i64 [ 1, %15 ], [ %indvars.iv.next82, %._crit_edge ]
  %44 = phi float [ %43, %15 ], [ %48, %._crit_edge ]
  %.phi.trans.insert = getelementptr inbounds [3 x float]* %sij, i64 0, i64 %indvars.iv.next82142
  %.pre = load float* %.phi.trans.insert, align 4, !tbaa !14
  %.phi.trans.insert87 = getelementptr inbounds [3 x float]* %sa, i64 0, i64 %indvars.iv.next82142
  %.pre88 = load float* %.phi.trans.insert87, align 4, !tbaa !14
  %45 = getelementptr inbounds [3 x float]* %sij, i64 0, i64 %indvars.iv.next82142
  %46 = fdiv float %.pre, %sqrtf
  store float %46, float* %45, align 4, !tbaa !14
  %47 = fmul float %.pre88, %.pre88
  %48 = fadd float %44, %47
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv.next82142, 1
  %exitcond83 = icmp eq i64 %indvars.iv.next82, 3
  br i1 %exitcond83, label %49, label %._crit_edge

; <label>:49                                      ; preds = %._crit_edge
  %sqrtf1 = tail call float @sqrtf(float %48) #8
  %50 = getelementptr inbounds [3 x float]* %sa, i64 0, i64 0
  %51 = fdiv float %26, %sqrtf1
  store float %51, float* %50, align 4, !tbaa !14
  br label %._crit_edge89

._crit_edge89:                                    ; preds = %49, %._crit_edge89
  %indvars.iv.next79141 = phi i64 [ 1, %49 ], [ %indvars.iv.next79, %._crit_edge89 ]
  %.phi.trans.insert90 = getelementptr inbounds [3 x float]* %sa, i64 0, i64 %indvars.iv.next79141
  %.pre91 = load float* %.phi.trans.insert90, align 4, !tbaa !14
  %52 = getelementptr inbounds [3 x float]* %sa, i64 0, i64 %indvars.iv.next79141
  %53 = fdiv float %.pre91, %sqrtf1
  store float %53, float* %52, align 4, !tbaa !14
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv.next79141, 1
  %exitcond80 = icmp eq i64 %indvars.iv.next79, 3
  br i1 %exitcond80, label %54, label %._crit_edge89

; <label>:54                                      ; preds = %._crit_edge89
  %55 = load float* %35, align 4, !tbaa !14
  %56 = load float* %21, align 4, !tbaa !14
  %57 = fmul float %55, %56
  %58 = load float* %39, align 4, !tbaa !14
  %59 = load float* %16, align 4, !tbaa !14
  %60 = fmul float %58, %59
  %61 = fsub float %57, %60
  store float %61, float* %28, align 4, !tbaa !14
  %62 = load float* %31, align 4, !tbaa !14
  %63 = fmul float %58, %62
  %64 = load float* %27, align 4, !tbaa !14
  %65 = fmul float %64, %56
  %66 = fsub float %63, %65
  store float %66, float* %23, align 4, !tbaa !14
  %67 = fmul float %64, %59
  %68 = fmul float %55, %62
  %69 = fsub float %67, %68
  store float %69, float* %18, align 4, !tbaa !14
  br label %70

; <label>:70                                      ; preds = %switch.hole_check, %0, %54
  %71 = phi float [ undef, %switch.hole_check ], [ undef, %0 ], [ %64, %54 ]
  %72 = phi float [ undef, %switch.hole_check ], [ undef, %0 ], [ %62, %54 ]
  %73 = phi float [ undef, %switch.hole_check ], [ undef, %0 ], [ %61, %54 ]
  switch i32 %nht, label %423 [
    i32 1, label %.preheader
    i32 2, label %.preheader9.preheader
    i32 3, label %.preheader11
    i32 4, label %.preheader13
    i32 5, label %.preheader16
    i32 6, label %.preheader18
    i32 7, label %348
    i32 8, label %.preheader19
    i32 9, label %368
  ]

.preheader9.preheader:                            ; preds = %70
  %74 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 0
  %75 = load float* %74, align 4, !tbaa !14
  %76 = fpext float %75 to double
  %77 = fpext float %73 to double
  %78 = fmul double %77, 0x3FB821B1FD9BFEE5
  %79 = fadd double %76, %78
  %80 = fpext float %72 to double
  %81 = fmul double %80, 0x3FA11745F4B7C896
  %82 = fadd double %79, %81
  %83 = fptrunc double %82 to float
  %84 = getelementptr inbounds [3 x float]* %xh, i64 0, i64 0
  store float %83, float* %84, align 4, !tbaa !14
  br label %._crit_edge124

.preheader13:                                     ; preds = %70
  %85 = getelementptr inbounds [3 x float]* %xh, i64 2, i64 0
  %86 = getelementptr inbounds [3 x float]* %xh, i64 2, i64 1
  %87 = getelementptr inbounds [3 x float]* %xh, i64 2, i64 2
  br label %164

.preheader:                                       ; preds = %70, %.preheader
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %.preheader ], [ 0, %70 ]
  %88 = phi <2 x float> [ %105, %.preheader ], [ zeroinitializer, %70 ]
  %89 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 %indvars.iv48
  %90 = load float* %89, align 4, !tbaa !14
  %91 = getelementptr inbounds [3 x float]* %xa, i64 1, i64 %indvars.iv48
  %92 = load float* %91, align 4, !tbaa !14
  %93 = getelementptr inbounds [3 x float]* %sij, i64 0, i64 %indvars.iv48
  %94 = getelementptr inbounds [3 x float]* %xa, i64 2, i64 %indvars.iv48
  %95 = load float* %94, align 4, !tbaa !14
  %96 = insertelement <2 x float> undef, float %90, i32 0
  %97 = insertelement <2 x float> %96, float %90, i32 1
  %98 = insertelement <2 x float> undef, float %92, i32 0
  %99 = insertelement <2 x float> %98, float %95, i32 1
  %100 = fsub <2 x float> %97, %99
  %101 = extractelement <2 x float> %100, i32 0
  store float %101, float* %93, align 4, !tbaa !14
  %102 = getelementptr inbounds [3 x float]* %sb, i64 0, i64 %indvars.iv48
  %103 = extractelement <2 x float> %100, i32 1
  store float %103, float* %102, align 4, !tbaa !14
  %104 = fmul <2 x float> %100, %100
  %105 = fadd <2 x float> %88, %104
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
  %exitcond50 = icmp eq i64 %indvars.iv.next49, 3
  br i1 %exitcond50, label %106, label %.preheader

; <label>:106                                     ; preds = %.preheader
  %107 = extractelement <2 x float> %105, i32 0
  %sqrtf4 = tail call float @sqrtf(float %107) #8
  %108 = extractelement <2 x float> %105, i32 1
  %sqrtf5 = tail call float @sqrtf(float %108) #8
  br label %109

; <label>:109                                     ; preds = %109, %106
  %indvars.iv45 = phi i64 [ 0, %106 ], [ %indvars.iv.next46, %109 ]
  %ra.123 = phi float [ 0.000000e+00, %106 ], [ %119, %109 ]
  %110 = getelementptr inbounds [3 x float]* %sij, i64 0, i64 %indvars.iv45
  %111 = load float* %110, align 4, !tbaa !14
  %112 = fdiv float %111, %sqrtf4
  %113 = getelementptr inbounds [3 x float]* %sb, i64 0, i64 %indvars.iv45
  %114 = load float* %113, align 4, !tbaa !14
  %115 = fdiv float %114, %sqrtf5
  %116 = fadd float %112, %115
  %117 = getelementptr inbounds [3 x float]* %sa, i64 0, i64 %indvars.iv45
  store float %116, float* %117, align 4, !tbaa !14
  %118 = fmul float %116, %116
  %119 = fadd float %ra.123, %118
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  %exitcond47 = icmp eq i64 %indvars.iv.next46, 3
  br i1 %exitcond47, label %120, label %109

; <label>:120                                     ; preds = %109
  %sqrtf6 = tail call float @sqrtf(float %119) #8
  %121 = fpext float %sqrtf6 to double
  br label %122

; <label>:122                                     ; preds = %122, %120
  %indvars.iv = phi i64 [ 0, %120 ], [ %indvars.iv.next, %122 ]
  %123 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 %indvars.iv
  %124 = load float* %123, align 4, !tbaa !14
  %125 = fpext float %124 to double
  %126 = getelementptr inbounds [3 x float]* %sa, i64 0, i64 %indvars.iv
  %127 = load float* %126, align 4, !tbaa !14
  %128 = fpext float %127 to double
  %129 = fmul double %128, 1.000000e-01
  %130 = fdiv double %129, %121
  %131 = fadd double %125, %130
  %132 = fptrunc double %131 to float
  %133 = getelementptr inbounds [3 x float]* %xh, i64 0, i64 %indvars.iv
  store float %132, float* %133, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %.loopexit, label %122

._crit_edge124:                                   ; preds = %.preheader9.preheader, %._crit_edge124
  %indvars.iv.next52139 = phi i64 [ 1, %.preheader9.preheader ], [ %indvars.iv.next52, %._crit_edge124 ]
  %.phi.trans.insert125 = getelementptr inbounds [3 x float]* %sb, i64 0, i64 %indvars.iv.next52139
  %.pre126 = load float* %.phi.trans.insert125, align 4, !tbaa !14
  %.phi.trans.insert127 = getelementptr inbounds [3 x float]* %sij, i64 0, i64 %indvars.iv.next52139
  %.pre128 = load float* %.phi.trans.insert127, align 4, !tbaa !14
  %134 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 %indvars.iv.next52139
  %135 = load float* %134, align 4, !tbaa !14
  %136 = fpext float %135 to double
  %137 = fpext float %.pre126 to double
  %138 = fmul double %137, 0x3FB821B1FD9BFEE5
  %139 = fadd double %136, %138
  %140 = fpext float %.pre128 to double
  %141 = fmul double %140, 0x3FA11745F4B7C896
  %142 = fadd double %139, %141
  %143 = fptrunc double %142 to float
  %144 = getelementptr inbounds [3 x float]* %xh, i64 0, i64 %indvars.iv.next52139
  store float %143, float* %144, align 4, !tbaa !14
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv.next52139, 1
  %exitcond53 = icmp eq i64 %indvars.iv.next52, 3
  br i1 %exitcond53, label %.loopexit, label %._crit_edge124

.preheader11:                                     ; preds = %70, %._crit_edge119
  %145 = phi float [ %.pre123, %._crit_edge119 ], [ %72, %70 ]
  %146 = phi float [ %.pre121, %._crit_edge119 ], [ %73, %70 ]
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %._crit_edge119 ], [ 0, %70 ]
  %147 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 %indvars.iv54
  %148 = load float* %147, align 4, !tbaa !14
  %149 = fpext float %148 to double
  %150 = fpext float %146 to double
  %151 = fmul double %150, 0x3FB821B1FD9BFEE5
  %152 = fsub double %149, %151
  %153 = fpext float %145 to double
  %154 = fmul double %153, 0x3FA11745F4B7C896
  %155 = fadd double %152, %154
  %156 = fptrunc double %155 to float
  %157 = getelementptr inbounds [3 x float]* %xh, i64 0, i64 %indvars.iv54
  store float %156, float* %157, align 4, !tbaa !14
  %158 = load float* %147, align 4, !tbaa !14
  %159 = fpext float %158 to double
  %160 = fadd double %159, %151
  %161 = fadd double %160, %154
  %162 = fptrunc double %161 to float
  %163 = getelementptr inbounds [3 x float]* %xh, i64 1, i64 %indvars.iv54
  store float %162, float* %163, align 4, !tbaa !14
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  %exitcond56 = icmp eq i64 %indvars.iv.next55, 3
  br i1 %exitcond56, label %.loopexit, label %._crit_edge119

._crit_edge119:                                   ; preds = %.preheader11
  %.phi.trans.insert120 = getelementptr inbounds [3 x float]* %sb, i64 0, i64 %indvars.iv.next55
  %.pre121 = load float* %.phi.trans.insert120, align 4, !tbaa !14
  %.phi.trans.insert122 = getelementptr inbounds [3 x float]* %sij, i64 0, i64 %indvars.iv.next55
  %.pre123 = load float* %.phi.trans.insert122, align 4, !tbaa !14
  br label %.preheader11

; <label>:164                                     ; preds = %._crit_edge112, %.preheader13
  %165 = phi float [ %71, %.preheader13 ], [ %.pre118, %._crit_edge112 ]
  %166 = phi float [ %72, %.preheader13 ], [ %.pre116, %._crit_edge112 ]
  %167 = phi float [ %73, %.preheader13 ], [ %.pre114, %._crit_edge112 ]
  %indvars.iv57 = phi i64 [ 0, %.preheader13 ], [ %indvars.iv.next58, %._crit_edge112 ]
  %168 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 %indvars.iv57
  %169 = load float* %168, align 4, !tbaa !14
  %170 = fpext float %169 to double
  %171 = fpext float %167 to double
  %172 = fmul double %171, 0x3FB821B1FD9BFEE5
  %173 = fadd double %170, %172
  %174 = fpext float %166 to double
  %175 = fmul double %174, 0x3FA11745F4B7C896
  %176 = fadd double %173, %175
  %177 = fptrunc double %176 to float
  %178 = getelementptr inbounds [3 x float]* %xh, i64 0, i64 %indvars.iv57
  store float %177, float* %178, align 4, !tbaa !14
  %179 = load float* %168, align 4, !tbaa !14
  %180 = fpext float %179 to double
  %181 = fmul double %171, 0x3FA821B1FD9BFEE5
  %182 = fsub double %180, %181
  %183 = fpext float %165 to double
  %184 = fmul double %183, 0x3FB4E60A7BB07B1D
  %185 = fadd double %182, %184
  %186 = fadd double %185, %175
  %187 = fptrunc double %186 to float
  %188 = getelementptr inbounds [3 x float]* %xh, i64 1, i64 %indvars.iv57
  store float %187, float* %188, align 4, !tbaa !14
  %189 = load float* %85, align 4, !tbaa !14
  %190 = fadd float %189, 1.234500e+04
  %fabsf = tail call float @fabsf(float %190) #8
  %191 = fpext float %fabsf to double
  %192 = fcmp ogt double %191, 1.200000e-38
  br i1 %192, label %193, label %211

; <label>:193                                     ; preds = %164
  %194 = load float* %86, align 4, !tbaa !14
  %195 = fadd float %194, 1.234500e+04
  %fabsf2 = tail call float @fabsf(float %195) #8
  %196 = fpext float %fabsf2 to double
  %197 = fcmp ogt double %196, 1.200000e-38
  br i1 %197, label %198, label %211

; <label>:198                                     ; preds = %193
  %199 = load float* %87, align 4, !tbaa !14
  %200 = fadd float %199, 1.234500e+04
  %fabsf3 = tail call float @fabsf(float %200) #8
  %201 = fpext float %fabsf3 to double
  %202 = fcmp ogt double %201, 1.200000e-38
  br i1 %202, label %203, label %211

; <label>:203                                     ; preds = %198
  %204 = load float* %168, align 4, !tbaa !14
  %205 = fpext float %204 to double
  %206 = fsub double %205, %181
  %207 = fsub double %206, %184
  %208 = fadd double %207, %175
  %209 = fptrunc double %208 to float
  %210 = getelementptr inbounds [3 x float]* %xh, i64 2, i64 %indvars.iv57
  store float %209, float* %210, align 4, !tbaa !14
  br label %211

; <label>:211                                     ; preds = %164, %193, %198, %203
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  %exitcond59 = icmp eq i64 %indvars.iv.next58, 3
  br i1 %exitcond59, label %.loopexit, label %._crit_edge112

._crit_edge112:                                   ; preds = %211
  %.phi.trans.insert113 = getelementptr inbounds [3 x float]* %sb, i64 0, i64 %indvars.iv.next58
  %.pre114 = load float* %.phi.trans.insert113, align 4, !tbaa !14
  %.phi.trans.insert115 = getelementptr inbounds [3 x float]* %sij, i64 0, i64 %indvars.iv.next58
  %.pre116 = load float* %.phi.trans.insert115, align 4, !tbaa !14
  %.phi.trans.insert117 = getelementptr inbounds [3 x float]* %sa, i64 0, i64 %indvars.iv.next58
  %.pre118 = load float* %.phi.trans.insert117, align 4, !tbaa !14
  br label %164

.preheader16:                                     ; preds = %70, %.preheader16
  %indvars.iv63 = phi i64 [ %indvars.iv.next64, %.preheader16 ], [ 0, %70 ]
  %212 = getelementptr inbounds [3 x float]* %xa, i64 1, i64 %indvars.iv63
  %213 = load float* %212, align 4, !tbaa !14
  %214 = getelementptr inbounds [3 x float]* %xa, i64 2, i64 %indvars.iv63
  %215 = load float* %214, align 4, !tbaa !14
  %216 = fadd float %213, %215
  %217 = getelementptr inbounds [3 x float]* %xa, i64 3, i64 %indvars.iv63
  %218 = load float* %217, align 4, !tbaa !14
  %219 = fadd float %216, %218
  %220 = fdiv float %219, 3.000000e+00
  %221 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 %indvars.iv63
  %222 = load float* %221, align 4, !tbaa !14
  %223 = fsub float %222, %220
  %224 = getelementptr inbounds [3 x float]* %dxc, i64 0, i64 %indvars.iv63
  store float %223, float* %224, align 4, !tbaa !14
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1
  %exitcond65 = icmp eq i64 %indvars.iv.next64, 3
  br i1 %exitcond65, label %225, label %.preheader16

; <label>:225                                     ; preds = %.preheader16
  %226 = getelementptr inbounds [3 x float]* %dxc, i64 0, i64 0
  %227 = load float* %226, align 4, !tbaa !14
  %228 = fmul float %227, %227
  %229 = getelementptr inbounds [3 x float]* %dxc, i64 0, i64 1
  %230 = load float* %229, align 4, !tbaa !14
  %231 = fmul float %230, %230
  %232 = fadd float %228, %231
  %233 = getelementptr inbounds [3 x float]* %dxc, i64 0, i64 2
  %234 = load float* %233, align 4, !tbaa !14
  %235 = fmul float %234, %234
  %236 = fadd float %232, %235
  %sqrtf.i8 = tail call float @sqrtf(float %236) #8
  %237 = fpext float %sqrtf.i8 to double
  %238 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 0
  %239 = load float* %238, align 4, !tbaa !14
  %240 = fpext float %239 to double
  %241 = fpext float %227 to double
  %242 = fmul double %241, 1.000000e-01
  %243 = fdiv double %242, %237
  %244 = fadd double %240, %243
  %245 = fptrunc double %244 to float
  %246 = getelementptr inbounds [3 x float]* %xh, i64 0, i64 0
  store float %245, float* %246, align 4, !tbaa !14
  br label %._crit_edge109

._crit_edge109:                                   ; preds = %225, %._crit_edge109
  %indvars.iv.next61140 = phi i64 [ 1, %225 ], [ %indvars.iv.next61, %._crit_edge109 ]
  %.phi.trans.insert110 = getelementptr inbounds [3 x float]* %dxc, i64 0, i64 %indvars.iv.next61140
  %.pre111 = load float* %.phi.trans.insert110, align 4, !tbaa !14
  %247 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 %indvars.iv.next61140
  %248 = load float* %247, align 4, !tbaa !14
  %249 = fpext float %248 to double
  %250 = fpext float %.pre111 to double
  %251 = fmul double %250, 1.000000e-01
  %252 = fdiv double %251, %237
  %253 = fadd double %249, %252
  %254 = fptrunc double %253 to float
  %255 = getelementptr inbounds [3 x float]* %xh, i64 0, i64 %indvars.iv.next61140
  store float %254, float* %255, align 4, !tbaa !14
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv.next61140, 1
  %exitcond62 = icmp eq i64 %indvars.iv.next61, 3
  br i1 %exitcond62, label %.loopexit, label %._crit_edge109

.preheader18:                                     ; preds = %70, %.preheader18
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %.preheader18 ], [ 0, %70 ]
  %256 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 %indvars.iv69
  %257 = load float* %256, align 4, !tbaa !14
  %258 = fpext float %257 to double
  %259 = getelementptr inbounds [3 x float]* %xa, i64 1, i64 %indvars.iv69
  %260 = load float* %259, align 4, !tbaa !14
  %261 = getelementptr inbounds [3 x float]* %xa, i64 2, i64 %indvars.iv69
  %262 = load float* %261, align 4, !tbaa !14
  %263 = fadd float %260, %262
  %264 = fpext float %263 to double
  %265 = fmul double %264, 5.000000e-01
  %266 = fsub double %258, %265
  %267 = fptrunc double %266 to float
  %268 = getelementptr inbounds [3 x float]* %rBB, i64 0, i64 %indvars.iv69
  store float %267, float* %268, align 4, !tbaa !14
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1
  %exitcond71 = icmp eq i64 %indvars.iv.next70, 3
  br i1 %exitcond71, label %269, label %.preheader18

; <label>:269                                     ; preds = %.preheader18
  %270 = getelementptr inbounds [3 x float]* %rBB, i64 0, i64 0
  %271 = load float* %270, align 4, !tbaa !14
  %272 = fmul float %271, %271
  %273 = getelementptr inbounds [3 x float]* %rBB, i64 0, i64 1
  %274 = load float* %273, align 4, !tbaa !14
  %275 = fmul float %274, %274
  %276 = fadd float %272, %275
  %277 = getelementptr inbounds [3 x float]* %rBB, i64 0, i64 2
  %278 = load float* %277, align 4, !tbaa !14
  %279 = fmul float %278, %278
  %280 = fadd float %276, %279
  %sqrtf.i7 = tail call float @sqrtf(float %280) #8
  %281 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 0
  %282 = getelementptr inbounds [3 x float]* %xa, i64 1, i64 0
  %283 = load float* %281, align 4, !tbaa !14
  %284 = load float* %282, align 4, !tbaa !14
  %285 = fsub float %283, %284
  %286 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 1
  %287 = load float* %286, align 4, !tbaa !14
  %288 = getelementptr inbounds [3 x float]* %xa, i64 1, i64 1
  %289 = load float* %288, align 4, !tbaa !14
  %290 = fsub float %287, %289
  %291 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 2
  %292 = load float* %291, align 4, !tbaa !14
  %293 = getelementptr inbounds [3 x float]* %xa, i64 1, i64 2
  %294 = load float* %293, align 4, !tbaa !14
  %295 = fsub float %292, %294
  %296 = getelementptr inbounds [3 x float]* %xa, i64 2, i64 0
  %297 = load float* %296, align 4, !tbaa !14
  %298 = fsub float %283, %297
  %299 = getelementptr inbounds [3 x float]* %xa, i64 2, i64 1
  %300 = load float* %299, align 4, !tbaa !14
  %301 = fsub float %287, %300
  %302 = getelementptr inbounds [3 x float]* %xa, i64 2, i64 2
  %303 = load float* %302, align 4, !tbaa !14
  %304 = fsub float %292, %303
  %305 = getelementptr inbounds [3 x float]* %rNN, i64 0, i64 0
  %306 = fmul float %290, %304
  %307 = fmul float %295, %301
  %308 = fsub float %306, %307
  store float %308, float* %305, align 4, !tbaa !14
  %309 = fmul float %295, %298
  %310 = fmul float %285, %304
  %311 = fsub float %309, %310
  %312 = getelementptr inbounds [3 x float]* %rNN, i64 0, i64 1
  store float %311, float* %312, align 4, !tbaa !14
  %313 = fmul float %285, %301
  %314 = fmul float %290, %298
  %315 = fsub float %313, %314
  %316 = getelementptr inbounds [3 x float]* %rNN, i64 0, i64 2
  store float %315, float* %316, align 4, !tbaa !14
  %317 = fmul float %308, %308
  %318 = fmul float %311, %311
  %319 = fadd float %317, %318
  %320 = fmul float %315, %315
  %321 = fadd float %320, %319
  %sqrtf.i = tail call float @sqrtf(float %321) #8
  %322 = fpext float %sqrtf.i7 to double
  %323 = fpext float %sqrtf.i to double
  br label %324

; <label>:324                                     ; preds = %._crit_edge102, %269
  %325 = phi float [ %308, %269 ], [ %.pre108, %._crit_edge102 ]
  %326 = phi float [ %271, %269 ], [ %.pre106, %._crit_edge102 ]
  %327 = phi float [ %283, %269 ], [ %.pre104, %._crit_edge102 ]
  %indvars.iv66 = phi i64 [ 0, %269 ], [ %indvars.iv.next67, %._crit_edge102 ]
  %328 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 %indvars.iv66
  %329 = fpext float %327 to double
  %330 = fpext float %326 to double
  %331 = fmul double %330, 0x3FE277F930881DAF
  %332 = fdiv double %331, %322
  %333 = fpext float %325 to double
  %334 = fmul double %333, 0x3FEA21ED787F2AEF
  %335 = fdiv double %334, %323
  %336 = fadd double %332, %335
  %337 = fmul double %336, 1.000000e-01
  %338 = fadd double %329, %337
  %339 = fptrunc double %338 to float
  %340 = getelementptr inbounds [3 x float]* %xh, i64 0, i64 %indvars.iv66
  store float %339, float* %340, align 4, !tbaa !14
  %341 = load float* %328, align 4, !tbaa !14
  %342 = fpext float %341 to double
  %343 = fsub double %332, %335
  %344 = fmul double %343, 1.000000e-01
  %345 = fadd double %342, %344
  %346 = fptrunc double %345 to float
  %347 = getelementptr inbounds [3 x float]* %xh, i64 1, i64 %indvars.iv66
  store float %346, float* %347, align 4, !tbaa !14
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  %exitcond68 = icmp eq i64 %indvars.iv.next67, 3
  br i1 %exitcond68, label %.loopexit, label %._crit_edge102

._crit_edge102:                                   ; preds = %324
  %.phi.trans.insert103 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 %indvars.iv.next67
  %.pre104 = load float* %.phi.trans.insert103, align 4, !tbaa !14
  %.phi.trans.insert105 = getelementptr inbounds [3 x float]* %rBB, i64 0, i64 %indvars.iv.next67
  %.pre106 = load float* %.phi.trans.insert105, align 4, !tbaa !14
  %.phi.trans.insert107 = getelementptr inbounds [3 x float]* %rNN, i64 0, i64 %indvars.iv.next67
  %.pre108 = load float* %.phi.trans.insert107, align 4, !tbaa !14
  br label %324

; <label>:348                                     ; preds = %70
  tail call void @gen_waterhydrogen([3 x float]* %xa, [3 x float]* %xh) #9
  br label %.loopexit

.preheader19:                                     ; preds = %70, %._crit_edge97
  %349 = phi float [ %.pre101, %._crit_edge97 ], [ %72, %70 ]
  %350 = phi float [ %.pre99, %._crit_edge97 ], [ %73, %70 ]
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %._crit_edge97 ], [ 0, %70 ]
  %351 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 %indvars.iv72
  %352 = load float* %351, align 4, !tbaa !14
  %353 = fpext float %352 to double
  %354 = fpext float %350 to double
  %355 = fmul double %354, 0x3FBF0572CFF0A307
  %356 = fsub double %353, %355
  %357 = fpext float %349 to double
  %358 = fmul double %357, 0x3FAF9CBD7EF2DD0F
  %359 = fadd double %356, %358
  %360 = fptrunc double %359 to float
  %361 = getelementptr inbounds [3 x float]* %xh, i64 0, i64 %indvars.iv72
  store float %360, float* %361, align 4, !tbaa !14
  %362 = load float* %351, align 4, !tbaa !14
  %363 = fpext float %362 to double
  %364 = fadd double %363, %355
  %365 = fadd double %364, %358
  %366 = fptrunc double %365 to float
  %367 = getelementptr inbounds [3 x float]* %xh, i64 1, i64 %indvars.iv72
  store float %366, float* %367, align 4, !tbaa !14
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1
  %exitcond74 = icmp eq i64 %indvars.iv.next73, 3
  br i1 %exitcond74, label %.loopexit, label %._crit_edge97

._crit_edge97:                                    ; preds = %.preheader19
  %.phi.trans.insert98 = getelementptr inbounds [3 x float]* %sb, i64 0, i64 %indvars.iv.next73
  %.pre99 = load float* %.phi.trans.insert98, align 4, !tbaa !14
  %.phi.trans.insert100 = getelementptr inbounds [3 x float]* %sij, i64 0, i64 %indvars.iv.next73
  %.pre101 = load float* %.phi.trans.insert100, align 4, !tbaa !14
  br label %.preheader19

; <label>:368                                     ; preds = %70
  %369 = bitcast [4 x [3 x float]]* %xa2 to i8*
  call void @llvm.lifetime.start(i64 48, i8* %369) #5
  br label %370

; <label>:370                                     ; preds = %._crit_edge92, %368
  %371 = phi float [ %72, %368 ], [ %.pre96, %._crit_edge92 ]
  %372 = phi float [ %73, %368 ], [ %.pre94, %._crit_edge92 ]
  %indvars.iv75 = phi i64 [ 0, %368 ], [ %indvars.iv.next76, %._crit_edge92 ]
  %373 = getelementptr inbounds [3 x float]* %xa, i64 0, i64 %indvars.iv75
  %374 = load float* %373, align 4, !tbaa !14
  %375 = fpext float %374 to double
  %376 = fpext float %372 to double
  %377 = fmul double %376, 0x3FBAFD905B6AC657
  %378 = fsub double %375, %377
  %379 = fpext float %371 to double
  %380 = fmul double %379, 0x3FB037AF519DA642
  %381 = fadd double %378, %380
  %382 = fptrunc double %381 to float
  %383 = getelementptr inbounds [3 x float]* %xh, i64 0, i64 %indvars.iv75
  store float %382, float* %383, align 4, !tbaa !14
  %384 = load float* %373, align 4, !tbaa !14
  %385 = fpext float %384 to double
  %386 = fmul double %376, 0x3FBD0079302DD768
  %387 = fadd double %385, %386
  %388 = fmul double %379, 0x3FAB0C2D77379851
  %389 = fadd double %387, %388
  %390 = fptrunc double %389 to float
  %391 = getelementptr inbounds [3 x float]* %xh, i64 1, i64 %indvars.iv75
  store float %390, float* %391, align 4, !tbaa !14
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1
  %exitcond77 = icmp eq i64 %indvars.iv.next76, 3
  br i1 %exitcond77, label %392, label %._crit_edge92

._crit_edge92:                                    ; preds = %370
  %.phi.trans.insert93 = getelementptr inbounds [3 x float]* %sb, i64 0, i64 %indvars.iv.next76
  %.pre94 = load float* %.phi.trans.insert93, align 4, !tbaa !14
  %.phi.trans.insert95 = getelementptr inbounds [3 x float]* %sij, i64 0, i64 %indvars.iv.next76
  %.pre96 = load float* %.phi.trans.insert95, align 4, !tbaa !14
  br label %370

; <label>:392                                     ; preds = %370
  %393 = getelementptr inbounds [3 x float]* %xh, i64 1, i64 0
  %394 = bitcast float* %393 to i32*
  %395 = load i32* %394, align 4, !tbaa !14
  %396 = bitcast [4 x [3 x float]]* %xa2 to i32*
  store i32 %395, i32* %396, align 16, !tbaa !14
  %397 = getelementptr inbounds [3 x float]* %xh, i64 1, i64 1
  %398 = bitcast float* %397 to i32*
  %399 = load i32* %398, align 4, !tbaa !14
  %400 = getelementptr inbounds [4 x [3 x float]]* %xa2, i64 0, i64 0, i64 1
  %401 = bitcast float* %400 to i32*
  store i32 %399, i32* %401, align 4, !tbaa !14
  %402 = getelementptr inbounds [3 x float]* %xh, i64 1, i64 2
  %403 = bitcast float* %402 to i32*
  %404 = load i32* %403, align 4, !tbaa !14
  %405 = getelementptr inbounds [4 x [3 x float]]* %xa2, i64 0, i64 0, i64 2
  %406 = bitcast float* %405 to i32*
  store i32 %404, i32* %406, align 8, !tbaa !14
  %407 = getelementptr inbounds [4 x [3 x float]]* %xa2, i64 0, i64 1, i64 0
  %408 = bitcast [3 x float]* %xa to <4 x i32>*
  %409 = load <4 x i32>* %408, align 4, !tbaa !14
  %410 = bitcast float* %407 to <4 x i32>*
  store <4 x i32> %409, <4 x i32>* %410, align 4, !tbaa !14
  %411 = getelementptr inbounds [3 x float]* %xa, i64 1, i64 1
  %412 = getelementptr inbounds [4 x [3 x float]]* %xa2, i64 0, i64 2, i64 1
  %413 = bitcast float* %411 to <4 x i32>*
  %414 = load <4 x i32>* %413, align 4, !tbaa !14
  %415 = bitcast float* %412 to <4 x i32>*
  store <4 x i32> %414, <4 x i32>* %415, align 4, !tbaa !14
  %416 = getelementptr inbounds [3 x float]* %xa, i64 2, i64 2
  %417 = bitcast float* %416 to i32*
  %418 = load i32* %417, align 4, !tbaa !14
  %419 = getelementptr inbounds [4 x [3 x float]]* %xa2, i64 0, i64 3, i64 2
  %420 = bitcast float* %419 to i32*
  store i32 %418, i32* %420, align 4, !tbaa !14
  %421 = getelementptr inbounds [4 x [3 x float]]* %xa2, i64 0, i64 0
  %422 = getelementptr inbounds [3 x float]* %xh, i64 2
  call void @calc_h_pos(i32 2, [3 x float]* %421, [3 x float]* %422) #9
  call void @llvm.lifetime.end(i64 48, i8* %369) #5
  br label %.loopexit

; <label>:423                                     ; preds = %70
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([47 x i8]* @.str, i64 0, i64 0), i32 %nht) #6
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader19, %324, %._crit_edge109, %211, %.preheader11, %._crit_edge124, %122, %423, %392, %348
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

declare float @sqrtf(float)

declare float @fabsf(float)

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
attributes #7 = { readnone }
attributes #8 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { optsize }

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
