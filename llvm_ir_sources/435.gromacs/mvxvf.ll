; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/mvxvf.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_nsborder = type { i32, i32, i32, i32, i32, i32, i32, [256 x i32], [256 x i32], [256 x i32], [256 x i32] }
%struct.t_nrnb = type { [129 x double] }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [65 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/mvxvf.c\00", align 1

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
define void @move_rvecs(%struct.__sFILE* nocapture readnone %log, i32 %bForward, i32 %bSum, i32 %left, i32 %right, [3 x float]* %vecs, [3 x float]* %buf, i32 %shift, %struct.t_nsborder* %nsb, %struct.t_nrnb* nocapture %nrnb) #4 {
  %1 = icmp ne i32 %bSum, 0
  %2 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 0
  %3 = load i32* %2, align 4, !tbaa !18
  br i1 %1, label %4, label %.preheader1

; <label>:4                                       ; preds = %0
  %5 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 5
  %6 = load i32* %5, align 4, !tbaa !20
  %7 = add nsw i32 %6, %3
  %8 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 1
  %9 = load i32* %8, align 4, !tbaa !21
  %10 = srem i32 %7, %9
  br label %.preheader1

.preheader1:                                      ; preds = %0, %4
  %cur.1.ph = phi i32 [ %10, %4 ], [ %3, %0 ]
  %11 = icmp sgt i32 %shift, 0
  br i1 %11, label %.lr.ph10, label %._crit_edge11.thread

.lr.ph10:                                         ; preds = %.preheader1
  %12 = icmp eq i32 %bForward, 0
  %13 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 1
  %14 = icmp ne i32 %bForward, 0
  %15 = add i32 %shift, -1
  br label %16

; <label>:16                                      ; preds = %122, %.lr.ph10
  %nsum.09 = phi i32 [ 0, %.lr.ph10 ], [ %nsum.1, %122 ]
  %cur.18 = phi i32 [ %cur.1.ph, %.lr.ph10 ], [ %cur.2, %122 ]
  %j1.07 = phi i32 [ 391, %.lr.ph10 ], [ %j1.2, %122 ]
  %j0.06 = phi i32 [ 137, %.lr.ph10 ], [ %j0.2, %122 ]
  %i.05 = phi i32 [ 0, %.lr.ph10 ], [ %123, %122 ]
  br i1 %1, label %17, label %.loopexit

; <label>:17                                      ; preds = %16
  br i1 %12, label %29, label %18

; <label>:18                                      ; preds = %17
  %19 = add nsw i32 %cur.18, -1
  %20 = load i32* %13, align 4, !tbaa !21
  %21 = add nsw i32 %19, %20
  %22 = srem i32 %21, %20
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %23
  %25 = load i32* %24, align 4, !tbaa !22
  %26 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %23
  %27 = load i32* %26, align 4, !tbaa !22
  %28 = add nsw i32 %27, %25
  br label %39

; <label>:29                                      ; preds = %17
  %30 = add nsw i32 %cur.18, 1
  %31 = load i32* %13, align 4, !tbaa !21
  %32 = srem i32 %30, %31
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %33
  %35 = load i32* %34, align 4, !tbaa !22
  %36 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %33
  %37 = load i32* %36, align 4, !tbaa !22
  %38 = add nsw i32 %37, %35
  br label %39

; <label>:39                                      ; preds = %29, %18
  %j0.1 = phi i32 [ %25, %18 ], [ %35, %29 ]
  %j1.1 = phi i32 [ %28, %18 ], [ %38, %29 ]
  %40 = icmp slt i32 %j0.1, %j1.1
  br i1 %40, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %39
  %41 = sext i32 %j0.1 to i64
  %42 = add i32 %j1.1, -1
  br label %43

; <label>:43                                      ; preds = %43, %.lr.ph
  %indvars.iv = phi i64 [ %41, %.lr.ph ], [ %indvars.iv.next, %43 ]
  %44 = getelementptr inbounds [3 x float]* %buf, i64 %indvars.iv, i64 0
  store float 0.000000e+00, float* %44, align 4, !tbaa !14
  %45 = getelementptr inbounds [3 x float]* %buf, i64 %indvars.iv, i64 1
  store float 0.000000e+00, float* %45, align 4, !tbaa !14
  %46 = getelementptr inbounds [3 x float]* %buf, i64 %indvars.iv, i64 2
  store float 0.000000e+00, float* %46, align 4, !tbaa !14
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %42
  br i1 %exitcond, label %.loopexit, label %43

.loopexit:                                        ; preds = %43, %39, %16
  %j0.2 = phi i32 [ %j0.06, %16 ], [ %j0.1, %39 ], [ %j0.1, %43 ]
  %j1.2 = phi i32 [ %j1.07, %16 ], [ %j1.1, %39 ], [ %j1.1, %43 ]
  %47 = sext i32 %cur.18 to i64
  %48 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %47
  %49 = load i32* %48, align 4, !tbaa !22
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [3 x float]* %vecs, i64 %50, i64 0
  %52 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %47
  %53 = load i32* %52, align 4, !tbaa !22
  %54 = mul nsw i32 %53, 3
  br i1 %14, label %55, label %73

; <label>:55                                      ; preds = %.loopexit
  %56 = add nsw i32 %cur.18, -1
  %57 = load i32* %13, align 4, !tbaa !21
  %58 = add nsw i32 %56, %57
  %59 = srem i32 %58, %57
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %60
  %62 = load i32* %61, align 4, !tbaa !22
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %60
  %65 = load i32* %64, align 4
  br i1 %1, label %66, label %69

; <label>:66                                      ; preds = %55
  %67 = getelementptr inbounds [3 x float]* %buf, i64 %63, i64 0
  %68 = mul nsw i32 %65, 3
  tail call void @gmx_tx_rx_real(i32 %right, float* %51, i32 %54, i32 %left, float* %67, i32 %68) #5
  br label %72

; <label>:69                                      ; preds = %55
  %70 = getelementptr inbounds [3 x float]* %vecs, i64 %63, i64 0
  %71 = mul nsw i32 %65, 3
  tail call void @gmx_tx_rx_real(i32 %right, float* %51, i32 %54, i32 %left, float* %70, i32 %71) #5
  br label %72

; <label>:72                                      ; preds = %69, %66
  tail call void @gmx_wait(i32 %right, i32 %left) #5
  br label %90

; <label>:73                                      ; preds = %.loopexit
  %74 = add nsw i32 %cur.18, 1
  %75 = load i32* %13, align 4, !tbaa !21
  %76 = srem i32 %74, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %77
  %79 = load i32* %78, align 4, !tbaa !22
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %77
  %82 = load i32* %81, align 4
  br i1 %1, label %83, label %86

; <label>:83                                      ; preds = %73
  %84 = getelementptr inbounds [3 x float]* %buf, i64 %80, i64 0
  %85 = mul nsw i32 %82, 3
  tail call void @gmx_tx_rx_real(i32 %left, float* %51, i32 %54, i32 %right, float* %84, i32 %85) #5
  br label %89

; <label>:86                                      ; preds = %73
  %87 = getelementptr inbounds [3 x float]* %vecs, i64 %80, i64 0
  %88 = mul nsw i32 %82, 3
  tail call void @gmx_tx_rx_real(i32 %left, float* %51, i32 %54, i32 %right, float* %87, i32 %88) #5
  br label %89

; <label>:89                                      ; preds = %86, %83
  tail call void @gmx_wait(i32 %left, i32 %right) #5
  br label %90

; <label>:90                                      ; preds = %89, %72
  br i1 %1, label %.preheader, label %112

.preheader:                                       ; preds = %90
  %91 = icmp slt i32 %j0.2, %j1.2
  br i1 %91, label %.lr.ph4, label %._crit_edge

.lr.ph4:                                          ; preds = %.preheader
  %92 = sext i32 %j0.2 to i64
  %93 = add i32 %j1.2, -1
  br label %94

; <label>:94                                      ; preds = %94, %.lr.ph4
  %indvars.iv12 = phi i64 [ %92, %.lr.ph4 ], [ %indvars.iv.next13, %94 ]
  %95 = getelementptr inbounds [3 x float]* %vecs, i64 %indvars.iv12, i64 0
  %96 = getelementptr inbounds [3 x float]* %buf, i64 %indvars.iv12, i64 0
  %97 = load float* %95, align 4, !tbaa !14
  %98 = load float* %96, align 4, !tbaa !14
  %99 = fadd float %97, %98
  %100 = getelementptr inbounds [3 x float]* %vecs, i64 %indvars.iv12, i64 1
  %101 = load float* %100, align 4, !tbaa !14
  %102 = getelementptr inbounds [3 x float]* %buf, i64 %indvars.iv12, i64 1
  %103 = load float* %102, align 4, !tbaa !14
  %104 = fadd float %101, %103
  %105 = getelementptr inbounds [3 x float]* %vecs, i64 %indvars.iv12, i64 2
  %106 = load float* %105, align 4, !tbaa !14
  %107 = getelementptr inbounds [3 x float]* %buf, i64 %indvars.iv12, i64 2
  %108 = load float* %107, align 4, !tbaa !14
  %109 = fadd float %106, %108
  store float %99, float* %95, align 4, !tbaa !14
  store float %104, float* %100, align 4, !tbaa !14
  store float %109, float* %105, align 4, !tbaa !14
  %indvars.iv.next13 = add nsw i64 %indvars.iv12, 1
  %lftr.wideiv14 = trunc i64 %indvars.iv12 to i32
  %exitcond15 = icmp eq i32 %lftr.wideiv14, %93
  br i1 %exitcond15, label %._crit_edge, label %94

._crit_edge:                                      ; preds = %94, %.preheader
  %110 = sub i32 %nsum.09, %j0.2
  %111 = add i32 %110, %j1.2
  br label %112

; <label>:112                                     ; preds = %._crit_edge, %90
  %nsum.1 = phi i32 [ %111, %._crit_edge ], [ %nsum.09, %90 ]
  br i1 %14, label %113, label %118

; <label>:113                                     ; preds = %112
  %114 = add nsw i32 %cur.18, -1
  %115 = load i32* %13, align 4, !tbaa !21
  %116 = add nsw i32 %114, %115
  %117 = srem i32 %116, %115
  br label %122

; <label>:118                                     ; preds = %112
  %119 = add nsw i32 %cur.18, 1
  %120 = load i32* %13, align 4, !tbaa !21
  %121 = srem i32 %119, %120
  br label %122

; <label>:122                                     ; preds = %113, %118
  %cur.2 = phi i32 [ %117, %113 ], [ %121, %118 ]
  %123 = add nuw nsw i32 %i.05, 1
  %exitcond16 = icmp eq i32 %i.05, %15
  br i1 %exitcond16, label %._crit_edge11, label %16

._crit_edge11:                                    ; preds = %122
  %124 = icmp sgt i32 %nsum.1, 0
  br i1 %124, label %125, label %._crit_edge11.thread

; <label>:125                                     ; preds = %._crit_edge11
  %126 = sitofp i32 %nsum.1 to double
  %127 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 91
  %128 = load double* %127, align 8, !tbaa !16
  %129 = fadd double %126, %128
  store double %129, double* %127, align 8, !tbaa !16
  br label %._crit_edge11.thread

._crit_edge11.thread:                             ; preds = %.preheader1, %125, %._crit_edge11
  ret void
}

; Function Attrs: optsize
declare void @gmx_tx_rx_real(i32, float*, i32, i32, float*, i32) #1

; Function Attrs: optsize
declare void @gmx_wait(i32, i32) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @move_x(%struct.__sFILE* nocapture readnone %log, i32 %left, i32 %right, [3 x float]* %x, %struct.t_nsborder* %nsb, %struct.t_nrnb* nocapture %nrnb) #4 {
  %1 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 5
  %2 = load i32* %1, align 4, !tbaa !20
  tail call void @move_rvecs(%struct.__sFILE* undef, i32 0, i32 0, i32 %left, i32 %right, [3 x float]* %x, [3 x float]* null, i32 %2, %struct.t_nsborder* %nsb, %struct.t_nrnb* %nrnb) #7
  %3 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 6
  %4 = load i32* %3, align 4, !tbaa !23
  tail call void @move_rvecs(%struct.__sFILE* undef, i32 1, i32 0, i32 %left, i32 %right, [3 x float]* %x, [3 x float]* null, i32 %4, %struct.t_nsborder* %nsb, %struct.t_nrnb* %nrnb) #7
  tail call void @_where(i8* getelementptr inbounds ([65 x i8]* @.str, i64 0, i64 0), i32 128) #5
  ret void
}

; Function Attrs: optsize
declare void @_where(i8*, i32) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @move_f(%struct.__sFILE* nocapture readnone %log, i32 %left, i32 %right, [3 x float]* %f, [3 x float]* %fadd, %struct.t_nsborder* %nsb, %struct.t_nrnb* nocapture %nrnb) #4 {
  %1 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 5
  %2 = load i32* %1, align 4, !tbaa !20
  tail call void @move_rvecs(%struct.__sFILE* undef, i32 1, i32 1, i32 %left, i32 %right, [3 x float]* %f, [3 x float]* %fadd, i32 %2, %struct.t_nsborder* %nsb, %struct.t_nrnb* %nrnb) #7
  %3 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 6
  %4 = load i32* %3, align 4, !tbaa !23
  tail call void @move_rvecs(%struct.__sFILE* undef, i32 0, i32 1, i32 %left, i32 %right, [3 x float]* %f, [3 x float]* %fadd, i32 %4, %struct.t_nsborder* %nsb, %struct.t_nrnb* %nrnb) #7
  tail call void @_where(i8* getelementptr inbounds ([65 x i8]* @.str, i64 0, i64 0), i32 138) #5
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @move_cgcm(%struct.__sFILE* nocapture readnone %log, %struct.t_commrec* nocapture readonly %cr, [3 x float]* %cg_cm, i32* nocapture readonly %nload) #4 {
  %1 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %2 = load i32* %1, align 4, !tbaa !24
  %3 = icmp sgt i32 %2, 1
  br i1 %3, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %4 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %5 = load i32* %4, align 4, !tbaa !26
  %6 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 2
  %7 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 3
  br label %8

; <label>:8                                       ; preds = %.lr.ph, %35
  %cur.02 = phi i32 [ %5, %.lr.ph ], [ %49, %35 ]
  %i.01 = phi i32 [ 0, %.lr.ph ], [ %50, %35 ]
  %9 = icmp eq i32 %cur.02, 0
  br i1 %9, label %15, label %10

; <label>:10                                      ; preds = %8
  %11 = add nsw i32 %cur.02, -1
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32* %nload, i64 %12
  %14 = load i32* %13, align 4, !tbaa !22
  br label %15

; <label>:15                                      ; preds = %8, %10
  %16 = phi i32 [ %14, %10 ], [ 0, %8 ]
  %17 = sext i32 %cur.02 to i64
  %18 = getelementptr inbounds i32* %nload, i64 %17
  %19 = load i32* %18, align 4, !tbaa !22
  %20 = sub nsw i32 %19, %16
  %21 = load i32* %6, align 4, !tbaa !27
  %22 = sext i32 %16 to i64
  %23 = getelementptr inbounds [3 x float]* %cg_cm, i64 %22, i64 0
  %24 = bitcast float* %23 to i8*
  %25 = mul i32 %20, 12
  tail call void @gmx_tx(i32 %21, i8* %24, i32 %25) #5
  %26 = add nsw i32 %cur.02, 1
  %27 = load i32* %1, align 4, !tbaa !24
  %28 = srem i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %35, label %30

; <label>:30                                      ; preds = %15
  %31 = add nsw i32 %28, -1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32* %nload, i64 %32
  %34 = load i32* %33, align 4, !tbaa !22
  br label %35

; <label>:35                                      ; preds = %15, %30
  %36 = phi i32 [ %34, %30 ], [ 0, %15 ]
  %37 = sext i32 %28 to i64
  %38 = getelementptr inbounds i32* %nload, i64 %37
  %39 = load i32* %38, align 4, !tbaa !22
  %40 = sub nsw i32 %39, %36
  %41 = load i32* %7, align 4, !tbaa !28
  %42 = sext i32 %36 to i64
  %43 = getelementptr inbounds [3 x float]* %cg_cm, i64 %42, i64 0
  %44 = bitcast float* %43 to i8*
  %45 = mul i32 %40, 12
  tail call void @gmx_rx(i32 %41, i8* %44, i32 %45) #5
  %46 = load i32* %6, align 4, !tbaa !27
  tail call void @gmx_tx_wait(i32 %46) #5
  %47 = load i32* %7, align 4, !tbaa !28
  tail call void @gmx_rx_wait(i32 %47) #5
  %48 = load i32* %1, align 4, !tbaa !24
  %49 = srem i32 %26, %48
  %50 = add nuw nsw i32 %i.01, 1
  %51 = add nsw i32 %48, -1
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %8, label %._crit_edge

._crit_edge:                                      ; preds = %35, %0
  ret void
}

; Function Attrs: optsize
declare void @gmx_tx(i32, i8*, i32) #1

; Function Attrs: optsize
declare void @gmx_rx(i32, i8*, i32) #1

; Function Attrs: optsize
declare void @gmx_tx_wait(i32) #1

; Function Attrs: optsize
declare void @gmx_rx_wait(i32) #1

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { readnone }
attributes #7 = { optsize }

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
!18 = !{!19, !7, i64 0}
!19 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !5, i64 28, !5, i64 1052, !5, i64 2076, !5, i64 3100}
!20 = !{!19, !7, i64 20}
!21 = !{!19, !7, i64 4}
!22 = !{!7, !7, i64 0}
!23 = !{!19, !7, i64 24}
!24 = !{!25, !7, i64 4}
!25 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20}
!26 = !{!25, !7, i64 0}
!27 = !{!25, !7, i64 8}
!28 = !{!25, !7, i64 12}
