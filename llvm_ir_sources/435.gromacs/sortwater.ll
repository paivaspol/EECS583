; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/sortwater.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }

@.str = private unnamed_addr constant [4 x i8] c"tab\00", align 1
@.str1 = private unnamed_addr constant [69 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/sortwater.c\00", align 1
@NBOX = internal global [3 x i32] zeroinitializer, align 4
@box_1 = internal unnamed_addr global [3 x float] zeroinitializer, align 4
@.str2 = private unnamed_addr constant [8 x i8] c"rvindex\00", align 1
@xptr = internal unnamed_addr global [3 x float]* null, align 8
@nwat = internal unnamed_addr global i32 0, align 4
@debug = external global %struct.__sFILE*
@.str3 = private unnamed_addr constant [46 x i8] c"rvindex[%5d] = %5d (x = %8.3f  %8.3f  %8.3f)\0A\00", align 1
@.str4 = private unnamed_addr constant [4 x i8] c"tmp\00", align 1
@.str5 = private unnamed_addr constant [3 x i8] c"BB\00", align 1
@.str6 = private unnamed_addr constant [3 x i8] c"fx\00", align 1
@.str7 = private unnamed_addr constant [3 x i8] c"fy\00", align 1
@BOX = internal global [3 x [3 x float]] zeroinitializer, align 16
@__stderrp = external global %struct.__sFILE*
@.str8 = private unnamed_addr constant [54 x i8] c"nbox = %2d %2d %2d [ prod %3d ] area = %12.5f (nm^2)\0A\00", align 1
@.str9 = private unnamed_addr constant [29 x i8] c"Factorizing %d into primes:\0A\00", align 1
@.str10 = private unnamed_addr constant [9 x i8] c"%d ^ %d\0A\00", align 1

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
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #8
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
  %3 = tail call float @llvm.fabs.f32(float %__x) #9
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
  %3 = tail call double @llvm.fabs.f64(double %__x) #9
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
  %3 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #9
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
  %1 = tail call float @llvm.fabs.f32(float %__x) #9
  %2 = fcmp oeq float %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfd(double %__x) #2 {
  %1 = tail call double @llvm.fabs.f64(double %__x) #9
  %2 = fcmp oeq double %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfl(x86_fp80 %__x) #2 {
  %1 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #9
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
  %1 = tail call <2 x float> @__sincosf_stret(float %__x) #8
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
  %1 = tail call { double, double } @__sincos_stret(double %__x) #8
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
  %1 = tail call <2 x float> @__sincospif_stret(float %__x) #8
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
  %1 = tail call { double, double } @__sincospi_stret(double %__x) #8
  %2 = extractvalue { double, double } %1, 0
  %3 = extractvalue { double, double } %1, 1
  store double %2, double* %__sinp, align 8, !tbaa !16
  store double %3, double* %__cosp, align 8, !tbaa !16
  ret void
}

; Function Attrs: optsize
declare { double, double } @__sincospi_stret(double) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @randwater(i32 %astart, i32 %nwater, i32 %nwatom, [3 x float]* nocapture %x, [3 x float]* %v, i32* %seed) #4 {
  %1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([69 x i8]* @.str1, i64 0, i64 0), i32 49, i32 %nwater, i32 4) #8
  %2 = bitcast i8* %1 to i32*
  %3 = icmp sgt i32 %nwater, 0
  br i1 %3, label %.lr.ph7, label %._crit_edge4

.lr.ph7:                                          ; preds = %0
  %4 = add i32 %nwater, -1
  br label %10

.preheader:                                       ; preds = %10
  %5 = mul nsw i32 %nwater, 23
  br i1 %3, label %.lr.ph3, label %._crit_edge4

.lr.ph3:                                          ; preds = %.preheader
  %6 = sitofp i32 %nwater to float
  %7 = icmp sgt i32 %nwatom, 0
  %8 = icmp eq [3 x float]* %v, null
  %9 = add i32 %nwatom, -1
  br label %13

; <label>:10                                      ; preds = %10, %.lr.ph7
  %indvars.iv8 = phi i64 [ 0, %.lr.ph7 ], [ %indvars.iv.next9, %10 ]
  %11 = getelementptr inbounds i32* %2, i64 %indvars.iv8
  %12 = trunc i64 %indvars.iv8 to i32
  store i32 %12, i32* %11, align 4, !tbaa !18
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1
  %exitcond11 = icmp eq i32 %12, %4
  br i1 %exitcond11, label %.preheader, label %10

; <label>:13                                      ; preds = %.lr.ph3, %._crit_edge
  %j.02 = phi i32 [ 0, %.lr.ph3 ], [ %72, %._crit_edge ]
  %14 = tail call float @rando(i32* %seed) #8
  %15 = fmul float %6, %14
  %16 = fptosi float %15 to i32
  %17 = srem i32 %16, %nwater
  br label %18

; <label>:18                                      ; preds = %18, %13
  %19 = tail call float @rando(i32* %seed) #8
  %20 = fmul float %6, %19
  %21 = fptosi float %20 to i32
  %22 = srem i32 %21, %nwater
  %23 = icmp eq i32 %17, %22
  br i1 %23, label %18, label %24

; <label>:24                                      ; preds = %18
  br i1 %7, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %24
  %25 = mul nsw i32 %22, %nwatom
  %26 = add nsw i32 %25, %astart
  %27 = mul nsw i32 %17, %nwatom
  %28 = add nsw i32 %27, %astart
  %29 = sext i32 %26 to i64
  %30 = sext i32 %28 to i64
  br label %31

; <label>:31                                      ; preds = %71, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %71 ]
  %32 = add nsw i64 %30, %indvars.iv
  %33 = getelementptr inbounds [3 x float]* %x, i64 %32, i64 0
  %34 = bitcast float* %33 to i32*
  %35 = load i32* %34, align 4, !tbaa !14
  %36 = getelementptr inbounds [3 x float]* %x, i64 %32, i64 1
  %37 = bitcast float* %36 to i32*
  %38 = load i32* %37, align 4, !tbaa !14
  %39 = getelementptr inbounds [3 x float]* %x, i64 %32, i64 2
  %40 = bitcast float* %39 to i32*
  %41 = load i32* %40, align 4, !tbaa !14
  %42 = add nsw i64 %29, %indvars.iv
  %43 = getelementptr inbounds [3 x float]* %x, i64 %42, i64 0
  %44 = bitcast float* %43 to i32*
  %45 = load i32* %44, align 4, !tbaa !14
  store i32 %45, i32* %34, align 4, !tbaa !14
  %46 = getelementptr inbounds [3 x float]* %x, i64 %42, i64 1
  %47 = bitcast float* %46 to i32*
  %48 = load i32* %47, align 4, !tbaa !14
  store i32 %48, i32* %37, align 4, !tbaa !14
  %49 = getelementptr inbounds [3 x float]* %x, i64 %42, i64 2
  %50 = bitcast float* %49 to i32*
  %51 = load i32* %50, align 4, !tbaa !14
  store i32 %51, i32* %40, align 4, !tbaa !14
  store i32 %35, i32* %44, align 4, !tbaa !14
  store i32 %38, i32* %47, align 4, !tbaa !14
  store i32 %41, i32* %50, align 4, !tbaa !14
  br i1 %8, label %71, label %52

; <label>:52                                      ; preds = %31
  %53 = getelementptr inbounds [3 x float]* %v, i64 %32, i64 0
  %54 = bitcast float* %53 to i32*
  %55 = load i32* %54, align 4, !tbaa !14
  %56 = getelementptr inbounds [3 x float]* %v, i64 %32, i64 1
  %57 = bitcast float* %56 to i32*
  %58 = load i32* %57, align 4, !tbaa !14
  %59 = getelementptr inbounds [3 x float]* %v, i64 %32, i64 2
  %60 = bitcast float* %59 to i32*
  %61 = load i32* %60, align 4, !tbaa !14
  %62 = getelementptr inbounds [3 x float]* %v, i64 %42, i64 0
  %63 = bitcast float* %62 to i32*
  %64 = load i32* %63, align 4, !tbaa !14
  store i32 %64, i32* %54, align 4, !tbaa !14
  %65 = getelementptr inbounds [3 x float]* %v, i64 %42, i64 1
  %66 = bitcast float* %65 to i32*
  %67 = load i32* %66, align 4, !tbaa !14
  store i32 %67, i32* %57, align 4, !tbaa !14
  %68 = getelementptr inbounds [3 x float]* %v, i64 %42, i64 2
  %69 = bitcast float* %68 to i32*
  %70 = load i32* %69, align 4, !tbaa !14
  store i32 %70, i32* %60, align 4, !tbaa !14
  store i32 %55, i32* %63, align 4, !tbaa !14
  store i32 %58, i32* %66, align 4, !tbaa !14
  store i32 %61, i32* %69, align 4, !tbaa !14
  br label %71

; <label>:71                                      ; preds = %31, %52
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %9
  br i1 %exitcond, label %._crit_edge, label %31

._crit_edge:                                      ; preds = %71, %24
  %72 = add nuw nsw i32 %j.02, 1
  %73 = icmp slt i32 %72, %5
  br i1 %73, label %13, label %._crit_edge4

._crit_edge4:                                     ; preds = %._crit_edge, %0, %.preheader
  tail call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([69 x i8]* @.str1, i64 0, i64 0), i32 71, i8* %1) #8
  ret void
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: optsize
declare float @rando(i32*) #1

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @sortwater(i32 %astart, i32 %nwater, i32 %nwatom, [3 x float]* %x, [3 x float]* nocapture %v) #4 {
  tail call fastcc void @lo_sortwater(i32 %astart, i32 %nwater, i32 %nwatom, [3 x float]* %x, [3 x float]* %v, i32 0) #10
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @lo_sortwater(i32 %astart, i32 %nwater, i32 %nwatom, [3 x float]* %x, [3 x float]* nocapture %v, i32 %bBlock) #4 {
  %1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([69 x i8]* @.str1, i64 0, i64 0), i32 128, i32 %nwater, i32 4) #8
  %2 = bitcast i8* %1 to i32*
  %3 = icmp sgt i32 %nwater, 0
  br i1 %3, label %.lr.ph24, label %._crit_edge25

.lr.ph24:                                         ; preds = %0
  %4 = add i32 %nwater, -1
  br label %5

; <label>:5                                       ; preds = %5, %.lr.ph24
  %indvars.iv50 = phi i64 [ 0, %.lr.ph24 ], [ %indvars.iv.next51, %5 ]
  %6 = getelementptr inbounds i32* %2, i64 %indvars.iv50
  %7 = trunc i64 %indvars.iv50 to i32
  store i32 %7, i32* %6, align 4, !tbaa !18
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1
  %exitcond53 = icmp eq i32 %7, %4
  br i1 %exitcond53, label %._crit_edge25, label %5

._crit_edge25:                                    ; preds = %5, %0
  %8 = sext i32 %astart to i64
  %9 = getelementptr inbounds [3 x float]* %x, i64 %8
  store [3 x float]* %9, [3 x float]** @xptr, align 8, !tbaa !19
  store i32 %nwatom, i32* @nwat, align 4, !tbaa !18
  %10 = sext i32 %nwater to i64
  %11 = icmp ne i32 %bBlock, 0
  %12 = select i1 %11, i32 (i8*, i8*)* @blockcomp, i32 (i8*, i8*)* @rvcomp
  tail call void @qsort(i8* %1, i64 %10, i64 4, i32 (i8*, i8*)* %12) #8
  %13 = load %struct.__sFILE** @debug, align 8, !tbaa !19
  %14 = icmp eq %struct.__sFILE* %13, null
  br i1 %14, label %.loopexit, label %.preheader3

.preheader3:                                      ; preds = %._crit_edge25
  br i1 %3, label %.lr.ph21, label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.preheader3
  %15 = mul i32 %nwatom, %nwater
  %16 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([69 x i8]* @.str1, i64 0, i64 0), i32 141, i32 %15, i32 12) #8
  %17 = bitcast i8* %16 to [3 x float]*
  br label %.preheader2

.lr.ph21:                                         ; preds = %.preheader3
  %18 = add i32 %nwater, -1
  br label %19

; <label>:19                                      ; preds = %._crit_edge54, %.lr.ph21
  %20 = phi %struct.__sFILE* [ %13, %.lr.ph21 ], [ %.pre, %._crit_edge54 ]
  %indvars.iv46 = phi i64 [ 0, %.lr.ph21 ], [ %indvars.iv.next47, %._crit_edge54 ]
  %21 = getelementptr inbounds i32* %2, i64 %indvars.iv46
  %22 = load i32* %21, align 4, !tbaa !18
  %23 = mul nsw i32 %22, %nwatom
  %24 = add nsw i32 %23, %astart
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [3 x float]* %x, i64 %25, i64 0
  %27 = load float* %26, align 4, !tbaa !14
  %28 = fpext float %27 to double
  %29 = getelementptr inbounds [3 x float]* %x, i64 %25, i64 1
  %30 = load float* %29, align 4, !tbaa !14
  %31 = fpext float %30 to double
  %32 = getelementptr inbounds [3 x float]* %x, i64 %25, i64 2
  %33 = load float* %32, align 4, !tbaa !14
  %34 = fpext float %33 to double
  %35 = trunc i64 %indvars.iv46 to i32
  %36 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %20, i8* getelementptr inbounds ([46 x i8]* @.str3, i64 0, i64 0), i32 %35, i32 %23, double %28, double %31, double %34) #8
  %exitcond49 = icmp eq i32 %35, %18
  br i1 %exitcond49, label %.loopexit, label %._crit_edge54

._crit_edge54:                                    ; preds = %19
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  %.pre = load %struct.__sFILE** @debug, align 8, !tbaa !19
  br label %19

.loopexit:                                        ; preds = %19, %._crit_edge25
  %37 = mul i32 %nwatom, %nwater
  %38 = tail call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([69 x i8]* @.str1, i64 0, i64 0), i32 141, i32 %37, i32 12) #8
  %39 = bitcast i8* %38 to [3 x float]*
  br i1 %3, label %.lr.ph19, label %.preheader2

.lr.ph19:                                         ; preds = %.loopexit
  %40 = icmp sgt i32 %nwatom, 0
  %41 = add i32 %nwatom, -1
  %42 = sext i32 %nwatom to i64
  %43 = add i32 %nwater, -1
  br label %49

.preheader2:                                      ; preds = %._crit_edge16, %.loopexit.thread, %.loopexit
  %44 = phi [3 x float]* [ %17, %.loopexit.thread ], [ %39, %.loopexit ], [ %39, %._crit_edge16 ]
  %45 = phi i8* [ %16, %.loopexit.thread ], [ %38, %.loopexit ], [ %38, %._crit_edge16 ]
  %46 = phi i32 [ %15, %.loopexit.thread ], [ %37, %.loopexit ], [ %37, %._crit_edge16 ]
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %.lr.ph12, label %.preheader1

.lr.ph12:                                         ; preds = %.preheader2
  %48 = add i32 %46, -1
  br label %78

; <label>:49                                      ; preds = %._crit_edge16, %.lr.ph19
  %indvars.iv42 = phi i64 [ 0, %.lr.ph19 ], [ %indvars.iv.next43, %._crit_edge16 ]
  br i1 %40, label %.lr.ph15, label %._crit_edge16

.lr.ph15:                                         ; preds = %49
  %50 = getelementptr inbounds i32* %2, i64 %indvars.iv42
  %51 = load i32* %50, align 4, !tbaa !18
  %52 = mul nsw i32 %51, %nwatom
  %53 = add nsw i32 %52, %astart
  %54 = mul nsw i64 %indvars.iv42, %42
  %55 = sext i32 %53 to i64
  br label %56

; <label>:56                                      ; preds = %56, %.lr.ph15
  %indvars.iv38 = phi i64 [ 0, %.lr.ph15 ], [ %indvars.iv.next39, %56 ]
  %57 = add nsw i64 %55, %indvars.iv38
  %58 = getelementptr inbounds [3 x float]* %x, i64 %57, i64 0
  %59 = add nsw i64 %indvars.iv38, %54
  %60 = getelementptr inbounds [3 x float]* %39, i64 %59, i64 0
  %61 = bitcast float* %58 to i32*
  %62 = load i32* %61, align 4, !tbaa !14
  %63 = bitcast float* %60 to i32*
  store i32 %62, i32* %63, align 4, !tbaa !14
  %64 = getelementptr inbounds [3 x float]* %x, i64 %57, i64 1
  %65 = bitcast float* %64 to i32*
  %66 = load i32* %65, align 4, !tbaa !14
  %67 = getelementptr inbounds [3 x float]* %39, i64 %59, i64 1
  %68 = bitcast float* %67 to i32*
  store i32 %66, i32* %68, align 4, !tbaa !14
  %69 = getelementptr inbounds [3 x float]* %x, i64 %57, i64 2
  %70 = bitcast float* %69 to i32*
  %71 = load i32* %70, align 4, !tbaa !14
  %72 = getelementptr inbounds [3 x float]* %39, i64 %59, i64 2
  %73 = bitcast float* %72 to i32*
  store i32 %71, i32* %73, align 4, !tbaa !14
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  %lftr.wideiv40 = trunc i64 %indvars.iv38 to i32
  %exitcond41 = icmp eq i32 %lftr.wideiv40, %41
  br i1 %exitcond41, label %._crit_edge16, label %56

._crit_edge16:                                    ; preds = %56, %49
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  %lftr.wideiv44 = trunc i64 %indvars.iv42 to i32
  %exitcond45 = icmp eq i32 %lftr.wideiv44, %43
  br i1 %exitcond45, label %.preheader2, label %49

.preheader1:                                      ; preds = %78, %.preheader2
  br i1 %3, label %.lr.ph10, label %.preheader

.lr.ph10:                                         ; preds = %.preheader1
  %74 = icmp sgt i32 %nwatom, 0
  %75 = add i32 %nwatom, -1
  %76 = sext i32 %nwatom to i64
  %77 = add i32 %nwater, -1
  br label %96

; <label>:78                                      ; preds = %78, %.lr.ph12
  %indvars.iv34 = phi i64 [ 0, %.lr.ph12 ], [ %indvars.iv.next35, %78 ]
  %79 = getelementptr inbounds [3 x float]* %44, i64 %indvars.iv34, i64 0
  %80 = add nsw i64 %indvars.iv34, %8
  %81 = getelementptr inbounds [3 x float]* %x, i64 %80, i64 0
  %82 = bitcast float* %79 to i32*
  %83 = load i32* %82, align 4, !tbaa !14
  %84 = bitcast float* %81 to i32*
  store i32 %83, i32* %84, align 4, !tbaa !14
  %85 = getelementptr inbounds [3 x float]* %44, i64 %indvars.iv34, i64 1
  %86 = bitcast float* %85 to i32*
  %87 = load i32* %86, align 4, !tbaa !14
  %88 = getelementptr inbounds [3 x float]* %x, i64 %80, i64 1
  %89 = bitcast float* %88 to i32*
  store i32 %87, i32* %89, align 4, !tbaa !14
  %90 = getelementptr inbounds [3 x float]* %44, i64 %indvars.iv34, i64 2
  %91 = bitcast float* %90 to i32*
  %92 = load i32* %91, align 4, !tbaa !14
  %93 = getelementptr inbounds [3 x float]* %x, i64 %80, i64 2
  %94 = bitcast float* %93 to i32*
  store i32 %92, i32* %94, align 4, !tbaa !14
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  %lftr.wideiv36 = trunc i64 %indvars.iv34 to i32
  %exitcond37 = icmp eq i32 %lftr.wideiv36, %48
  br i1 %exitcond37, label %.preheader1, label %78

.preheader:                                       ; preds = %._crit_edge8, %.preheader1
  br i1 %47, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %95 = add i32 %46, -1
  br label %121

; <label>:96                                      ; preds = %._crit_edge8, %.lr.ph10
  %indvars.iv30 = phi i64 [ 0, %.lr.ph10 ], [ %indvars.iv.next31, %._crit_edge8 ]
  br i1 %74, label %.lr.ph7, label %._crit_edge8

.lr.ph7:                                          ; preds = %96
  %97 = getelementptr inbounds i32* %2, i64 %indvars.iv30
  %98 = load i32* %97, align 4, !tbaa !18
  %99 = mul nsw i32 %98, %nwatom
  %100 = add nsw i32 %99, %astart
  %101 = mul nsw i64 %indvars.iv30, %76
  %102 = sext i32 %100 to i64
  br label %103

; <label>:103                                     ; preds = %103, %.lr.ph7
  %indvars.iv26 = phi i64 [ 0, %.lr.ph7 ], [ %indvars.iv.next27, %103 ]
  %104 = add nsw i64 %102, %indvars.iv26
  %105 = getelementptr inbounds [3 x float]* %v, i64 %104, i64 0
  %106 = add nsw i64 %indvars.iv26, %101
  %107 = getelementptr inbounds [3 x float]* %44, i64 %106, i64 0
  %108 = bitcast float* %105 to i32*
  %109 = load i32* %108, align 4, !tbaa !14
  %110 = bitcast float* %107 to i32*
  store i32 %109, i32* %110, align 4, !tbaa !14
  %111 = getelementptr inbounds [3 x float]* %v, i64 %104, i64 1
  %112 = bitcast float* %111 to i32*
  %113 = load i32* %112, align 4, !tbaa !14
  %114 = getelementptr inbounds [3 x float]* %44, i64 %106, i64 1
  %115 = bitcast float* %114 to i32*
  store i32 %113, i32* %115, align 4, !tbaa !14
  %116 = getelementptr inbounds [3 x float]* %v, i64 %104, i64 2
  %117 = bitcast float* %116 to i32*
  %118 = load i32* %117, align 4, !tbaa !14
  %119 = getelementptr inbounds [3 x float]* %44, i64 %106, i64 2
  %120 = bitcast float* %119 to i32*
  store i32 %118, i32* %120, align 4, !tbaa !14
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  %lftr.wideiv28 = trunc i64 %indvars.iv26 to i32
  %exitcond29 = icmp eq i32 %lftr.wideiv28, %75
  br i1 %exitcond29, label %._crit_edge8, label %103

._crit_edge8:                                     ; preds = %103, %96
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  %lftr.wideiv32 = trunc i64 %indvars.iv30 to i32
  %exitcond33 = icmp eq i32 %lftr.wideiv32, %77
  br i1 %exitcond33, label %.preheader, label %96

; <label>:121                                     ; preds = %121, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %121 ]
  %122 = getelementptr inbounds [3 x float]* %44, i64 %indvars.iv, i64 0
  %123 = add nsw i64 %indvars.iv, %8
  %124 = getelementptr inbounds [3 x float]* %v, i64 %123, i64 0
  %125 = bitcast float* %122 to i32*
  %126 = load i32* %125, align 4, !tbaa !14
  %127 = bitcast float* %124 to i32*
  store i32 %126, i32* %127, align 4, !tbaa !14
  %128 = getelementptr inbounds [3 x float]* %44, i64 %indvars.iv, i64 1
  %129 = bitcast float* %128 to i32*
  %130 = load i32* %129, align 4, !tbaa !14
  %131 = getelementptr inbounds [3 x float]* %v, i64 %123, i64 1
  %132 = bitcast float* %131 to i32*
  store i32 %130, i32* %132, align 4, !tbaa !14
  %133 = getelementptr inbounds [3 x float]* %44, i64 %indvars.iv, i64 2
  %134 = bitcast float* %133 to i32*
  %135 = load i32* %134, align 4, !tbaa !14
  %136 = getelementptr inbounds [3 x float]* %v, i64 %123, i64 2
  %137 = bitcast float* %136 to i32*
  store i32 %135, i32* %137, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %95
  br i1 %exitcond, label %._crit_edge, label %121

._crit_edge:                                      ; preds = %121, %.preheader
  tail call void @save_free(i8* getelementptr inbounds ([4 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([69 x i8]* @.str1, i64 0, i64 0), i32 159, i8* %45) #8
  tail call void @save_free(i8* getelementptr inbounds ([8 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([69 x i8]* @.str1, i64 0, i64 0), i32 160, i8* %1) #8
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @mkcompact(i32 %astart, i32 %nwater, i32 %nwatom, [3 x float]* %x, [3 x float]* nocapture %v, i32 %nnode, [3 x float]* nocapture readonly %box) #4 {
  %1 = icmp slt i32 %nnode, 2
  br i1 %1, label %159, label %.preheader

.preheader:                                       ; preds = %0, %.preheader
  %ip.02.i.i = phi i32 [ %2, %.preheader ], [ 1, %0 ]
  %i.01.i.i = phi i32 [ %3, %.preheader ], [ 0, %0 ]
  %2 = mul nsw i32 %ip.02.i.i, %nnode
  %3 = add nuw nsw i32 %i.01.i.i, 1
  %exitcond.i.i = icmp eq i32 %i.01.i.i, 2
  br i1 %exitcond.i.i, label %ipow.exit.i, label %.preheader

ipow.exit.i:                                      ; preds = %.preheader
  %4 = mul nsw i32 %2, 6
  %5 = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([69 x i8]* @.str1, i64 0, i64 0), i32 270, i32 %4, i32 12) #8
  %6 = bitcast i8* %5 to [3 x i32]*
  %7 = add nsw i32 %nnode, 1
  %8 = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([69 x i8]* @.str1, i64 0, i64 0), i32 272, i32 %7, i32 4) #8
  %9 = bitcast i8* %8 to i32*
  %10 = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([69 x i8]* @.str1, i64 0, i64 0), i32 273, i32 %7, i32 4) #8
  %11 = bitcast i8* %10 to i32*
  tail call fastcc void @factorize(i32 %nnode, i32* %9) #8
  %12 = icmp slt i32 %nnode, 0
  br i1 %12, label %._crit_edge41.thread.i, label %.preheader14.i

._crit_edge41.thread.i:                           ; preds = %ipow.exit.i
  tail call void @qsort(i8* %5, i64 0, i64 12, i32 (i8*, i8*)* @iv_comp) #8
  br label %._crit_edge22.i

.preheader14.i:                                   ; preds = %ipow.exit.i, %._crit_edge36.i
  %indvars.iv51.i = phi i64 [ %indvars.iv.next52.i, %._crit_edge36.i ], [ 0, %ipow.exit.i ]
  %nbb.040.i = phi i32 [ %nbb.1.lcssa.i, %._crit_edge36.i ], [ 0, %ipow.exit.i ]
  %13 = getelementptr inbounds i32* %9, i64 %indvars.iv51.i
  %14 = load i32* %13, align 4, !tbaa !18
  %15 = icmp slt i32 %14, 1
  %.pre = trunc i64 %indvars.iv51.i to i32
  br i1 %15, label %._crit_edge36.i, label %.lr.ph35.i

.lr.ph35.i:                                       ; preds = %.preheader14.i, %._crit_edge31.i
  %nbb.134.i = phi i32 [ %nbb.2.lcssa.i, %._crit_edge31.i ], [ %nbb.040.i, %.preheader14.i ]
  %m.033.i = phi i32 [ %69, %._crit_edge31.i ], [ 1, %.preheader14.i ]
  %16 = icmp sgt i32 %m.033.i, 0
  br i1 %16, label %.lr.ph.i.i, label %ipow.exit4.i

.lr.ph.i.i:                                       ; preds = %.lr.ph35.i
  %17 = add nsw i32 %m.033.i, -1
  br label %18

; <label>:18                                      ; preds = %18, %.lr.ph.i.i
  %ip.02.i1.i = phi i32 [ 1, %.lr.ph.i.i ], [ %19, %18 ]
  %i.01.i2.i = phi i32 [ 0, %.lr.ph.i.i ], [ %20, %18 ]
  %19 = mul nsw i32 %ip.02.i1.i, %.pre
  %20 = add nuw nsw i32 %i.01.i2.i, 1
  %exitcond.i3.i = icmp eq i32 %i.01.i2.i, %17
  br i1 %exitcond.i3.i, label %ipow.exit4.i, label %18

ipow.exit4.i:                                     ; preds = %18, %.lr.ph35.i
  %ip.0.lcssa.i.i = phi i32 [ 1, %.lr.ph35.i ], [ %19, %18 ]
  %21 = sdiv i32 %nnode, %ip.0.lcssa.i.i
  tail call fastcc void @factorize(i32 %21, i32* %11) #8
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %._crit_edge31.i, label %.preheader.i

.preheader.i:                                     ; preds = %ipow.exit4.i, %._crit_edge26.i
  %indvars.iv47.i = phi i64 [ %indvars.iv.next48.i, %._crit_edge26.i ], [ 0, %ipow.exit4.i ]
  %nbb.230.i = phi i32 [ %nbb.3.lcssa.i, %._crit_edge26.i ], [ %nbb.134.i, %ipow.exit4.i ]
  %23 = getelementptr inbounds i32* %11, i64 %indvars.iv47.i
  %24 = load i32* %23, align 4, !tbaa !18
  %25 = icmp slt i32 %24, 1
  %.pre11 = trunc i64 %indvars.iv47.i to i32
  br i1 %25, label %._crit_edge26.i, label %.lr.ph25.i

.lr.ph25.i:                                       ; preds = %.preheader.i, %65
  %26 = phi i32 [ %66, %65 ], [ %24, %.preheader.i ]
  %nbb.324.i = phi i32 [ %nbb.4.i, %65 ], [ %nbb.230.i, %.preheader.i ]
  %n.023.i = phi i32 [ %67, %65 ], [ 1, %.preheader.i ]
  %27 = icmp sgt i32 %n.023.i, 0
  br i1 %27, label %.lr.ph.i5.i, label %ipow.exit10.i

.lr.ph.i5.i:                                      ; preds = %.lr.ph25.i
  %28 = add nsw i32 %n.023.i, -1
  br label %29

; <label>:29                                      ; preds = %29, %.lr.ph.i5.i
  %ip.02.i6.i = phi i32 [ 1, %.lr.ph.i5.i ], [ %30, %29 ]
  %i.01.i7.i = phi i32 [ 0, %.lr.ph.i5.i ], [ %31, %29 ]
  %30 = mul nsw i32 %ip.02.i6.i, %.pre11
  %31 = add nuw nsw i32 %i.01.i7.i, 1
  %exitcond.i8.i = icmp eq i32 %i.01.i7.i, %28
  br i1 %exitcond.i8.i, label %ipow.exit10.i, label %29

ipow.exit10.i:                                    ; preds = %29, %.lr.ph25.i
  %ip.0.lcssa.i9.i = phi i32 [ 1, %.lr.ph25.i ], [ %30, %29 ]
  %32 = sdiv i32 %21, %ip.0.lcssa.i9.i
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %65

; <label>:34                                      ; preds = %ipow.exit10.i
  %35 = add nsw i32 %nbb.324.i, 1
  %36 = sext i32 %nbb.324.i to i64
  %37 = getelementptr inbounds [3 x i32]* %6, i64 %36, i64 0
  store i32 %ip.0.lcssa.i.i, i32* %37, align 4, !tbaa !18
  %38 = getelementptr inbounds [3 x i32]* %6, i64 %36, i64 1
  store i32 %ip.0.lcssa.i9.i, i32* %38, align 4, !tbaa !18
  %39 = getelementptr inbounds [3 x i32]* %6, i64 %36, i64 2
  store i32 %32, i32* %39, align 4, !tbaa !18
  %40 = add nsw i32 %nbb.324.i, 2
  %41 = sext i32 %35 to i64
  %42 = getelementptr inbounds [3 x i32]* %6, i64 %41, i64 0
  store i32 %ip.0.lcssa.i9.i, i32* %42, align 4, !tbaa !18
  %43 = getelementptr inbounds [3 x i32]* %6, i64 %41, i64 1
  store i32 %ip.0.lcssa.i.i, i32* %43, align 4, !tbaa !18
  %44 = getelementptr inbounds [3 x i32]* %6, i64 %41, i64 2
  store i32 %32, i32* %44, align 4, !tbaa !18
  %45 = add nsw i32 %nbb.324.i, 3
  %46 = sext i32 %40 to i64
  %47 = getelementptr inbounds [3 x i32]* %6, i64 %46, i64 0
  store i32 %32, i32* %47, align 4, !tbaa !18
  %48 = getelementptr inbounds [3 x i32]* %6, i64 %46, i64 1
  store i32 %ip.0.lcssa.i.i, i32* %48, align 4, !tbaa !18
  %49 = getelementptr inbounds [3 x i32]* %6, i64 %46, i64 2
  store i32 %ip.0.lcssa.i9.i, i32* %49, align 4, !tbaa !18
  %50 = add nsw i32 %nbb.324.i, 4
  %51 = sext i32 %45 to i64
  %52 = getelementptr inbounds [3 x i32]* %6, i64 %51, i64 0
  store i32 %ip.0.lcssa.i.i, i32* %52, align 4, !tbaa !18
  %53 = getelementptr inbounds [3 x i32]* %6, i64 %51, i64 1
  store i32 %32, i32* %53, align 4, !tbaa !18
  %54 = getelementptr inbounds [3 x i32]* %6, i64 %51, i64 2
  store i32 %ip.0.lcssa.i9.i, i32* %54, align 4, !tbaa !18
  %55 = add nsw i32 %nbb.324.i, 5
  %56 = sext i32 %50 to i64
  %57 = getelementptr inbounds [3 x i32]* %6, i64 %56, i64 0
  store i32 %ip.0.lcssa.i9.i, i32* %57, align 4, !tbaa !18
  %58 = getelementptr inbounds [3 x i32]* %6, i64 %56, i64 1
  store i32 %32, i32* %58, align 4, !tbaa !18
  %59 = getelementptr inbounds [3 x i32]* %6, i64 %56, i64 2
  store i32 %ip.0.lcssa.i.i, i32* %59, align 4, !tbaa !18
  %60 = add nsw i32 %nbb.324.i, 6
  %61 = sext i32 %55 to i64
  %62 = getelementptr inbounds [3 x i32]* %6, i64 %61, i64 0
  store i32 %32, i32* %62, align 4, !tbaa !18
  %63 = getelementptr inbounds [3 x i32]* %6, i64 %61, i64 1
  store i32 %ip.0.lcssa.i9.i, i32* %63, align 4, !tbaa !18
  %64 = getelementptr inbounds [3 x i32]* %6, i64 %61, i64 2
  store i32 %ip.0.lcssa.i.i, i32* %64, align 4, !tbaa !18
  %.pre.i = load i32* %23, align 4, !tbaa !18
  br label %65

; <label>:65                                      ; preds = %34, %ipow.exit10.i
  %66 = phi i32 [ %.pre.i, %34 ], [ %26, %ipow.exit10.i ]
  %nbb.4.i = phi i32 [ %60, %34 ], [ %nbb.324.i, %ipow.exit10.i ]
  %67 = add nuw nsw i32 %n.023.i, 1
  %68 = icmp slt i32 %n.023.i, %66
  br i1 %68, label %.lr.ph25.i, label %._crit_edge26.i

._crit_edge26.i:                                  ; preds = %65, %.preheader.i
  %nbb.3.lcssa.i = phi i32 [ %nbb.230.i, %.preheader.i ], [ %nbb.4.i, %65 ]
  %indvars.iv.next48.i = add nuw nsw i64 %indvars.iv47.i, 1
  %exitcond8 = icmp eq i32 %.pre11, %21
  br i1 %exitcond8, label %._crit_edge31.i, label %.preheader.i

._crit_edge31.i:                                  ; preds = %._crit_edge26.i, %ipow.exit4.i
  %nbb.2.lcssa.i = phi i32 [ %nbb.134.i, %ipow.exit4.i ], [ %nbb.3.lcssa.i, %._crit_edge26.i ]
  %69 = add nuw nsw i32 %m.033.i, 1
  %70 = load i32* %13, align 4, !tbaa !18
  %71 = icmp slt i32 %m.033.i, %70
  br i1 %71, label %.lr.ph35.i, label %._crit_edge36.i

._crit_edge36.i:                                  ; preds = %._crit_edge31.i, %.preheader14.i
  %nbb.1.lcssa.i = phi i32 [ %nbb.040.i, %.preheader14.i ], [ %nbb.2.lcssa.i, %._crit_edge31.i ]
  %indvars.iv.next52.i = add nuw nsw i64 %indvars.iv51.i, 1
  %exitcond10 = icmp eq i32 %.pre, %nnode
  br i1 %exitcond10, label %._crit_edge41.i, label %.preheader14.i

._crit_edge41.i:                                  ; preds = %._crit_edge36.i
  %72 = sext i32 %nbb.1.lcssa.i to i64
  tail call void @qsort(i8* %5, i64 %72, i64 12, i32 (i8*, i8*)* @iv_comp) #8
  %73 = icmp sgt i32 %nbb.1.lcssa.i, 1
  br i1 %73, label %.lr.ph21.i, label %._crit_edge22.i

.lr.ph21.i:                                       ; preds = %._crit_edge41.i
  %74 = add i32 %nbb.1.lcssa.i, -1
  br label %75

; <label>:75                                      ; preds = %102, %.lr.ph21.i
  %indvars.iv45.i = phi i64 [ 1, %.lr.ph21.i ], [ %indvars.iv.next46.i, %102 ]
  %j.118.i = phi i32 [ 0, %.lr.ph21.i ], [ %j.2.i, %102 ]
  %76 = getelementptr inbounds [3 x i32]* %6, i64 %indvars.iv45.i, i64 0
  %77 = load i32* %76, align 4, !tbaa !18
  %78 = sext i32 %j.118.i to i64
  %79 = getelementptr inbounds [3 x i32]* %6, i64 %78, i64 0
  %80 = load i32* %79, align 4, !tbaa !18
  %81 = icmp eq i32 %77, %80
  %82 = getelementptr inbounds [3 x i32]* %6, i64 %indvars.iv45.i, i64 1
  br i1 %81, label %83, label %._crit_edge55.i

; <label>:83                                      ; preds = %75
  %84 = load i32* %82, align 4, !tbaa !18
  %85 = getelementptr inbounds [3 x i32]* %6, i64 %78, i64 1
  %86 = load i32* %85, align 4, !tbaa !18
  %87 = icmp eq i32 %84, %86
  br i1 %87, label %88, label %._crit_edge55.i

; <label>:88                                      ; preds = %83
  %89 = getelementptr inbounds [3 x i32]* %6, i64 %indvars.iv45.i, i64 2
  %90 = load i32* %89, align 4, !tbaa !18
  %91 = getelementptr inbounds [3 x i32]* %6, i64 %78, i64 2
  %92 = load i32* %91, align 4, !tbaa !18
  %93 = icmp eq i32 %90, %92
  br i1 %93, label %102, label %._crit_edge55.i

._crit_edge55.i:                                  ; preds = %88, %83, %75
  %94 = add nsw i32 %j.118.i, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [3 x i32]* %6, i64 %95, i64 0
  store i32 %77, i32* %96, align 4, !tbaa !18
  %97 = load i32* %82, align 4, !tbaa !18
  %98 = getelementptr inbounds [3 x i32]* %6, i64 %95, i64 1
  store i32 %97, i32* %98, align 4, !tbaa !18
  %99 = getelementptr inbounds [3 x i32]* %6, i64 %indvars.iv45.i, i64 2
  %100 = load i32* %99, align 4, !tbaa !18
  %101 = getelementptr inbounds [3 x i32]* %6, i64 %95, i64 2
  store i32 %100, i32* %101, align 4, !tbaa !18
  br label %102

; <label>:102                                     ; preds = %._crit_edge55.i, %88
  %j.2.i = phi i32 [ %94, %._crit_edge55.i ], [ %j.118.i, %88 ]
  %indvars.iv.next46.i = add nuw nsw i64 %indvars.iv45.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv45.i to i32
  %exitcond6 = icmp eq i32 %lftr.wideiv, %74
  br i1 %exitcond6, label %._crit_edge22.i, label %75

._crit_edge22.i:                                  ; preds = %102, %._crit_edge41.i, %._crit_edge41.thread.i
  %j.1.lcssa.i = phi i32 [ 0, %._crit_edge41.i ], [ 0, %._crit_edge41.thread.i ], [ %j.2.i, %102 ]
  %103 = add nsw i32 %j.1.lcssa.i, 1
  %104 = bitcast [3 x float]* %box to i32*
  %105 = load i32* %104, align 4, !tbaa !14
  store i32 %105, i32* bitcast ([3 x [3 x float]]* @BOX to i32*), align 16, !tbaa !14
  %106 = getelementptr inbounds [3 x float]* %box, i64 0, i64 1
  %107 = bitcast float* %106 to i32*
  %108 = load i32* %107, align 4, !tbaa !14
  store i32 %108, i32* bitcast (float* getelementptr inbounds ([3 x [3 x float]]* @BOX, i64 0, i64 0, i64 1) to i32*), align 4, !tbaa !14
  %109 = getelementptr inbounds [3 x float]* %box, i64 0, i64 2
  %110 = bitcast float* %109 to i32*
  %111 = load i32* %110, align 4, !tbaa !14
  store i32 %111, i32* bitcast (float* getelementptr inbounds ([3 x [3 x float]]* @BOX, i64 0, i64 0, i64 2) to i32*), align 8, !tbaa !14
  %112 = getelementptr inbounds [3 x float]* %box, i64 1, i64 0
  %113 = bitcast float* %112 to i32*
  %114 = load i32* %113, align 4, !tbaa !14
  store i32 %114, i32* bitcast (float* getelementptr inbounds ([3 x [3 x float]]* @BOX, i64 0, i64 1, i64 0) to i32*), align 4, !tbaa !14
  %115 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %116 = bitcast float* %115 to i32*
  %117 = load i32* %116, align 4, !tbaa !14
  store i32 %117, i32* bitcast (float* getelementptr inbounds ([3 x [3 x float]]* @BOX, i64 0, i64 1, i64 1) to i32*), align 4, !tbaa !14
  %118 = getelementptr inbounds [3 x float]* %box, i64 1, i64 2
  %119 = bitcast float* %118 to i32*
  %120 = load i32* %119, align 4, !tbaa !14
  store i32 %120, i32* bitcast (float* getelementptr inbounds ([3 x [3 x float]]* @BOX, i64 0, i64 1, i64 2) to i32*), align 4, !tbaa !14
  %121 = getelementptr inbounds [3 x float]* %box, i64 2, i64 0
  %122 = bitcast float* %121 to i32*
  %123 = load i32* %122, align 4, !tbaa !14
  store i32 %123, i32* bitcast (float* getelementptr inbounds ([3 x [3 x float]]* @BOX, i64 0, i64 2, i64 0) to i32*), align 8, !tbaa !14
  %124 = getelementptr inbounds [3 x float]* %box, i64 2, i64 1
  %125 = bitcast float* %124 to i32*
  %126 = load i32* %125, align 4, !tbaa !14
  store i32 %126, i32* bitcast (float* getelementptr inbounds ([3 x [3 x float]]* @BOX, i64 0, i64 2, i64 1) to i32*), align 4, !tbaa !14
  %127 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %128 = bitcast float* %127 to i32*
  %129 = load i32* %128, align 4, !tbaa !14
  store i32 %129, i32* bitcast (float* getelementptr inbounds ([3 x [3 x float]]* @BOX, i64 0, i64 2, i64 2) to i32*), align 8, !tbaa !14
  %130 = sext i32 %103 to i64
  tail call void @qsort(i8* %5, i64 %130, i64 12, i32 (i8*, i8*)* @w_comp) #8
  %131 = icmp sgt i32 %j.1.lcssa.i, -1
  br i1 %131, label %.lr.ph.i, label %buildbox.exit

.lr.ph.i:                                         ; preds = %._crit_edge22.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %._crit_edge22.i ]
  %132 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !19
  %133 = getelementptr inbounds [3 x i32]* %6, i64 %indvars.iv.i, i64 0
  %134 = load i32* %133, align 4, !tbaa !18
  %135 = getelementptr inbounds [3 x i32]* %6, i64 %indvars.iv.i, i64 1
  %136 = load i32* %135, align 4, !tbaa !18
  %137 = getelementptr inbounds [3 x i32]* %6, i64 %indvars.iv.i, i64 2
  %138 = load i32* %137, align 4, !tbaa !18
  %139 = mul nsw i32 %136, %134
  %140 = mul nsw i32 %139, %138
  %141 = tail call fastcc float @box_weight(i32* %133, [3 x float]* %box) #8
  %142 = fpext float %141 to double
  %143 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %132, i8* getelementptr inbounds ([54 x i8]* @.str8, i64 0, i64 0), i32 %134, i32 %136, i32 %138, i32 %140, double %142) #8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %144 = icmp slt i64 %indvars.iv.next.i, %130
  br i1 %144, label %.lr.ph.i, label %buildbox.exit

buildbox.exit:                                    ; preds = %.lr.ph.i, %._crit_edge22.i
  %145 = bitcast i8* %5 to i32*
  %146 = load i32* %145, align 4, !tbaa !18
  store i32 %146, i32* getelementptr inbounds ([3 x i32]* @NBOX, i64 0, i64 0), align 4, !tbaa !18
  %147 = getelementptr inbounds i8* %5, i64 4
  %148 = bitcast i8* %147 to i32*
  %149 = load i32* %148, align 4, !tbaa !18
  store i32 %149, i32* getelementptr inbounds ([3 x i32]* @NBOX, i64 0, i64 1), align 4, !tbaa !18
  %150 = getelementptr inbounds i8* %5, i64 8
  %151 = bitcast i8* %150 to i32*
  %152 = load i32* %151, align 4, !tbaa !18
  store i32 %152, i32* getelementptr inbounds ([3 x i32]* @NBOX, i64 0, i64 2), align 4, !tbaa !18
  tail call void @save_free(i8* getelementptr inbounds ([3 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([69 x i8]* @.str1, i64 0, i64 0), i32 313, i8* %5) #8
  tail call void @save_free(i8* getelementptr inbounds ([3 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([69 x i8]* @.str1, i64 0, i64 0), i32 314, i8* %10) #8
  tail call void @save_free(i8* getelementptr inbounds ([3 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([69 x i8]* @.str1, i64 0, i64 0), i32 315, i8* %8) #8
  br label %153

; <label>:153                                     ; preds = %153, %buildbox.exit
  %indvars.iv = phi i64 [ 0, %buildbox.exit ], [ %indvars.iv.next, %153 ]
  %154 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 %indvars.iv
  %155 = load float* %154, align 4, !tbaa !14
  %156 = fdiv float 1.000000e+00, %155
  %157 = getelementptr inbounds [3 x float]* @box_1, i64 0, i64 %indvars.iv
  store float %156, float* %157, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %158, label %153

; <label>:158                                     ; preds = %153
  tail call fastcc void @lo_sortwater(i32 %astart, i32 %nwater, i32 %nwatom, [3 x float]* %x, [3 x float]* %v, i32 1) #10
  br label %159

; <label>:159                                     ; preds = %0, %158
  ret void
}

; Function Attrs: optsize
declare void @qsort(i8*, i64, i64, i32 (i8*, i8*)* nocapture) #1

; Function Attrs: nounwind optsize readonly ssp uwtable
define internal i32 @blockcomp(i8* nocapture readonly %a, i8* nocapture readonly %b) #5 {
  %1 = load i32* @nwat, align 4, !tbaa !18
  %2 = bitcast i8* %a to i32*
  %3 = load i32* %2, align 4, !tbaa !18
  %4 = mul nsw i32 %3, %1
  %5 = bitcast i8* %b to i32*
  %6 = load i32* %5, align 4, !tbaa !18
  %7 = mul nsw i32 %6, %1
  %8 = sext i32 %4 to i64
  %9 = load [3 x float]** @xptr, align 8, !tbaa !19
  %10 = getelementptr inbounds [3 x float]* %9, i64 %8, i64 0
  %11 = tail call fastcc i32 @block_index(float* %10) #10
  %12 = sext i32 %7 to i64
  %13 = getelementptr inbounds [3 x float]* %9, i64 %12, i64 0
  %14 = tail call fastcc i32 @block_index(float* %13) #10
  %15 = icmp eq i32 %11, %14
  br i1 %15, label %16, label %22

; <label>:16                                      ; preds = %0
  %17 = load float* %10, align 4, !tbaa !14
  %18 = load float* %13, align 4, !tbaa !14
  %19 = fcmp olt float %17, %18
  br i1 %19, label %24, label %20

; <label>:20                                      ; preds = %16
  %21 = fcmp ogt float %17, %18
  %. = zext i1 %21 to i32
  br label %24

; <label>:22                                      ; preds = %0
  %23 = sub nsw i32 %11, %14
  br label %24

; <label>:24                                      ; preds = %20, %16, %22
  %.0 = phi i32 [ %23, %22 ], [ -1, %16 ], [ %., %20 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define internal i32 @rvcomp(i8* nocapture readonly %a, i8* nocapture readonly %b) #5 {
  %1 = load i32* @nwat, align 4, !tbaa !18
  %2 = bitcast i8* %a to i32*
  %3 = load i32* %2, align 4, !tbaa !18
  %4 = mul nsw i32 %3, %1
  %5 = bitcast i8* %b to i32*
  %6 = load i32* %5, align 4, !tbaa !18
  %7 = mul nsw i32 %6, %1
  %8 = sext i32 %4 to i64
  %9 = load [3 x float]** @xptr, align 8, !tbaa !19
  %10 = getelementptr inbounds [3 x float]* %9, i64 %8, i64 0
  %11 = load float* %10, align 4, !tbaa !14
  %12 = sext i32 %7 to i64
  %13 = getelementptr inbounds [3 x float]* %9, i64 %12, i64 0
  %14 = load float* %13, align 4, !tbaa !14
  %15 = fcmp olt float %11, %14
  br i1 %15, label %18, label %16

; <label>:16                                      ; preds = %0
  %17 = fcmp ogt float %11, %14
  %. = zext i1 %17 to i32
  br label %18

; <label>:18                                      ; preds = %16, %0
  %.0 = phi i32 [ -1, %0 ], [ %., %16 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #6

; Function Attrs: nounwind optsize readonly ssp uwtable
define internal fastcc i32 @block_index(float* nocapture readonly %x) #5 {
  %ixyz = alloca [3 x i32], align 4
  br label %1

; <label>:1                                       ; preds = %1, %0
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next, %1 ]
  %2 = getelementptr inbounds float* %x, i64 %indvars.iv
  %3 = load float* %2, align 4, !tbaa !14
  %4 = getelementptr inbounds [3 x float]* @box_1, i64 0, i64 %indvars.iv
  %5 = load float* %4, align 4, !tbaa !14
  %6 = fmul float %3, %5
  %7 = fadd float %6, 1.000000e+00
  %8 = getelementptr inbounds [3 x i32]* @NBOX, i64 0, i64 %indvars.iv
  %9 = load i32* %8, align 4, !tbaa !18
  %10 = sitofp i32 %9 to float
  %11 = fmul float %7, %10
  %12 = fptosi float %11 to i32
  %13 = srem i32 %12, %9
  %14 = getelementptr inbounds [3 x i32]* %ixyz, i64 0, i64 %indvars.iv
  store i32 %13, i32* %14, align 4, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %15, label %1

; <label>:15                                      ; preds = %1
  %16 = getelementptr inbounds [3 x i32]* %ixyz, i64 0, i64 0
  %17 = load i32* %16, align 4, !tbaa !18
  %18 = load i32* getelementptr inbounds ([3 x i32]* @NBOX, i64 0, i64 1), align 4, !tbaa !18
  %19 = mul nsw i32 %18, %17
  %20 = load i32* getelementptr inbounds ([3 x i32]* @NBOX, i64 0, i64 2), align 4, !tbaa !18
  %21 = getelementptr inbounds [3 x i32]* %ixyz, i64 0, i64 1
  %22 = load i32* %21, align 4, !tbaa !18
  %23 = add i32 %22, %19
  %24 = mul nsw i32 %23, %20
  %25 = getelementptr inbounds [3 x i32]* %ixyz, i64 0, i64 2
  %26 = load i32* %25, align 4, !tbaa !18
  %27 = add nsw i32 %24, %26
  ret i32 %27
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @factorize(i32 %nn, i32* nocapture %fac) #4 {
  %1 = icmp slt i32 %nn, 0
  br i1 %1, label %.thread, label %3

.thread:                                          ; preds = %0
  %2 = getelementptr inbounds i32* %fac, i64 1
  store i32 1, i32* %2, align 4, !tbaa !18
  br label %.outer._crit_edge

; <label>:3                                       ; preds = %0
  %fac18 = bitcast i32* %fac to i8*
  %4 = zext i32 %nn to i64
  %5 = shl nuw nsw i64 %4, 2
  %6 = add nuw nsw i64 %5, 4
  call void @llvm.memset.p0i8.i64(i8* %fac18, i8 0, i64 %6, i32 4, i1 false)
  %7 = getelementptr inbounds i32* %fac, i64 1
  store i32 1, i32* %7, align 4, !tbaa !18
  %8 = icmp slt i32 %nn, 2
  br i1 %8, label %.outer._crit_edge, label %.lr.ph4

.lr.ph4:                                          ; preds = %3, %.outer
  %indvars.iv12 = phi i64 [ %indvars.iv.next13, %.outer ], [ 2, %3 ]
  %n.0.ph6 = phi i32 [ %n.03, %.outer ], [ %nn, %3 ]
  %9 = getelementptr inbounds i32* %fac, i64 %indvars.iv12
  br label %10

; <label>:10                                      ; preds = %.lr.ph4, %14
  %n.03 = phi i32 [ %n.0.ph6, %.lr.ph4 ], [ %17, %14 ]
  %11 = trunc i64 %indvars.iv12 to i32
  %12 = srem i32 %n.03, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %.outer

; <label>:14                                      ; preds = %10
  %15 = load i32* %9, align 4, !tbaa !18
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %9, align 4, !tbaa !18
  %17 = sdiv i32 %n.03, %11
  %18 = sext i32 %17 to i64
  %19 = icmp sgt i64 %indvars.iv12, %18
  br i1 %19, label %.outer._crit_edge, label %10

.outer:                                           ; preds = %10
  %indvars.iv.next13 = add nuw i64 %indvars.iv12, 1
  %20 = sext i32 %n.03 to i64
  %21 = icmp slt i64 %indvars.iv12, %20
  br i1 %21, label %.lr.ph4, label %.outer._crit_edge

.outer._crit_edge:                                ; preds = %.outer, %14, %3, %.thread
  %22 = phi i1 [ true, %.thread ], [ true, %3 ], [ %8, %14 ], [ %8, %.outer ]
  %23 = load %struct.__sFILE** @debug, align 8, !tbaa !19
  %24 = icmp eq %struct.__sFILE* %23, null
  br i1 %24, label %.loopexit, label %25

; <label>:25                                      ; preds = %.outer._crit_edge
  %26 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %23, i8* getelementptr inbounds ([29 x i8]* @.str9, i64 0, i64 0), i32 %nn) #8
  br i1 %22, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %25, %34
  %indvars.iv = phi i64 [ %indvars.iv.next, %34 ], [ 2, %25 ]
  %27 = getelementptr inbounds i32* %fac, i64 %indvars.iv
  %28 = load i32* %27, align 4, !tbaa !18
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %._crit_edge19, label %30

._crit_edge19:                                    ; preds = %.lr.ph
  %.pre = trunc i64 %indvars.iv to i32
  br label %34

; <label>:30                                      ; preds = %.lr.ph
  %31 = load %struct.__sFILE** @debug, align 8, !tbaa !19
  %32 = trunc i64 %indvars.iv to i32
  %33 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %31, i8* getelementptr inbounds ([9 x i8]* @.str10, i64 0, i64 0), i32 %32, i32 %28) #8
  br label %34

; <label>:34                                      ; preds = %._crit_edge19, %30
  %lftr.wideiv.pre-phi = phi i32 [ %.pre, %._crit_edge19 ], [ %32, %30 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i32 %lftr.wideiv.pre-phi, %nn
  br i1 %exitcond, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %34, %25, %.outer._crit_edge
  ret void
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define internal i32 @iv_comp(i8* nocapture readonly %a, i8* nocapture readonly %b) #5 {
  %1 = bitcast i8* %a to i32*
  %2 = bitcast i8* %b to i32*
  %3 = load i32* %1, align 4, !tbaa !18
  %4 = load i32* %2, align 4, !tbaa !18
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %8, label %6

; <label>:6                                       ; preds = %0
  %7 = sub nsw i32 %3, %4
  br label %26

; <label>:8                                       ; preds = %0
  %9 = getelementptr inbounds i8* %a, i64 4
  %10 = bitcast i8* %9 to i32*
  %11 = load i32* %10, align 4, !tbaa !18
  %12 = getelementptr inbounds i8* %b, i64 4
  %13 = bitcast i8* %12 to i32*
  %14 = load i32* %13, align 4, !tbaa !18
  %15 = icmp eq i32 %11, %14
  br i1 %15, label %18, label %16

; <label>:16                                      ; preds = %8
  %17 = sub nsw i32 %11, %14
  br label %26

; <label>:18                                      ; preds = %8
  %19 = getelementptr inbounds i8* %a, i64 8
  %20 = bitcast i8* %19 to i32*
  %21 = load i32* %20, align 4, !tbaa !18
  %22 = getelementptr inbounds i8* %b, i64 8
  %23 = bitcast i8* %22 to i32*
  %24 = load i32* %23, align 4, !tbaa !18
  %25 = sub nsw i32 %21, %24
  br label %26

; <label>:26                                      ; preds = %18, %16, %6
  %.0 = phi i32 [ %7, %6 ], [ %17, %16 ], [ %25, %18 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define internal i32 @w_comp(i8* nocapture readonly %a, i8* nocapture readonly %b) #5 {
  %1 = bitcast i8* %a to i32*
  %2 = bitcast i8* %b to i32*
  %3 = tail call fastcc float @box_weight(i32* %1, [3 x float]* getelementptr inbounds ([3 x [3 x float]]* @BOX, i64 0, i64 0)) #10
  %4 = tail call fastcc float @box_weight(i32* %2, [3 x float]* getelementptr inbounds ([3 x [3 x float]]* @BOX, i64 0, i64 0)) #10
  %5 = fsub float %3, %4
  %fabsf = tail call float @fabsf(float %5) #11
  %6 = fpext float %fabsf to double
  %7 = fcmp olt double %6, 1.000000e-04
  br i1 %7, label %8, label %37

; <label>:8                                       ; preds = %0
  %9 = load i32* %1, align 4, !tbaa !18
  %10 = mul nsw i32 %9, %9
  %11 = getelementptr inbounds i8* %a, i64 4
  %12 = bitcast i8* %11 to i32*
  %13 = load i32* %12, align 4, !tbaa !18
  %14 = mul nsw i32 %13, %13
  %15 = add nuw nsw i32 %14, %10
  %16 = getelementptr inbounds i8* %a, i64 8
  %17 = bitcast i8* %16 to i32*
  %18 = load i32* %17, align 4, !tbaa !18
  %19 = mul nsw i32 %18, %18
  %20 = add nuw nsw i32 %15, %19
  %21 = sitofp i32 %20 to float
  %22 = load i32* %2, align 4, !tbaa !18
  %23 = mul nsw i32 %22, %22
  %24 = getelementptr inbounds i8* %b, i64 4
  %25 = bitcast i8* %24 to i32*
  %26 = load i32* %25, align 4, !tbaa !18
  %27 = mul nsw i32 %26, %26
  %28 = add nuw nsw i32 %27, %23
  %29 = getelementptr inbounds i8* %b, i64 8
  %30 = bitcast i8* %29 to i32*
  %31 = load i32* %30, align 4, !tbaa !18
  %32 = mul nsw i32 %31, %31
  %33 = add nuw nsw i32 %28, %32
  %34 = sitofp i32 %33 to float
  %35 = fsub float %21, %34
  %36 = fptosi float %35 to i32
  br label %39

; <label>:37                                      ; preds = %0
  %38 = fcmp olt float %3, %4
  %. = select i1 %38, i32 -1, i32 1
  br label %39

; <label>:39                                      ; preds = %37, %8
  %.0 = phi i32 [ %36, %8 ], [ %., %37 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define internal fastcc float @box_weight(i32* nocapture readonly %nbox, [3 x float]* nocapture readonly %box) #5 {
  %lx = alloca [3 x float], align 4
  br label %1

; <label>:1                                       ; preds = %1, %0
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next, %1 ]
  %2 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 %indvars.iv
  %3 = load float* %2, align 4, !tbaa !14
  %4 = getelementptr inbounds i32* %nbox, i64 %indvars.iv
  %5 = load i32* %4, align 4, !tbaa !18
  %6 = sitofp i32 %5 to float
  %7 = fdiv float %3, %6
  %8 = getelementptr inbounds [3 x float]* %lx, i64 0, i64 %indvars.iv
  store float %7, float* %8, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %9, label %1

; <label>:9                                       ; preds = %1
  %10 = getelementptr inbounds [3 x float]* %lx, i64 0, i64 0
  %11 = load float* %10, align 4, !tbaa !14
  %12 = getelementptr inbounds [3 x float]* %lx, i64 0, i64 1
  %13 = load float* %12, align 4, !tbaa !14
  %14 = fmul float %11, %13
  %15 = getelementptr inbounds [3 x float]* %lx, i64 0, i64 2
  %16 = load float* %15, align 4, !tbaa !14
  %17 = fmul float %11, %16
  %18 = fadd float %14, %17
  %19 = fmul float %13, %16
  %20 = fadd float %19, %18
  %21 = fmul float %20, 2.000000e+00
  ret float %21
}

declare float @fabsf(float)

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #7

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind optsize }
attributes #9 = { readnone }
attributes #10 = { optsize }
attributes #11 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

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
!19 = !{!4, !4, i64 0}
