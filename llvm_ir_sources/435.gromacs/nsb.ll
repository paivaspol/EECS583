; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/nsb.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_nsborder = type { i32, i32, i32, i32, i32, i32, i32, [256 x i32], [256 x i32], [256 x i32], [256 x i32] }
%struct.t_block = type { [256 x i32], i32, i32*, i32, i32* }

@.str = private unnamed_addr constant [48 x i8] c"CPU=%3d, lastcg=%5d, targetcg=%5d, myshift=%5d\0A\00", align 1
@.str1 = private unnamed_addr constant [35 x i8] c"nsb->shift = %3d, nsb->bshift=%3d\0A\00", align 1
@.str2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str3 = private unnamed_addr constant [22 x i8] c"nsb->nodeid:     %5d\0A\00", align 1
@.str4 = private unnamed_addr constant [19 x i8] c"nsb->nnodes:  %5d\0A\00", align 1
@.str5 = private unnamed_addr constant [19 x i8] c"nsb->cgtotal: %5d\0A\00", align 1
@.str6 = private unnamed_addr constant [19 x i8] c"nsb->natoms:  %5d\0A\00", align 1
@.str7 = private unnamed_addr constant [19 x i8] c"nsb->shift:   %5d\0A\00", align 1
@.str8 = private unnamed_addr constant [19 x i8] c"nsb->bshift:  %5d\0A\00", align 1
@.str9 = private unnamed_addr constant [42 x i8] c"Nodeid   index  homenr  cgload  workload\0A\00", align 1
@.str10 = private unnamed_addr constant [18 x i8] c"%6d%8d%8d%8d%10d\0A\00", align 1

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
define void @calc_nsbshift(%struct.__sFILE* %fp, %struct.t_nsborder* nocapture %nsb) #4 {
  %1 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 6
  store i32 0, i32* %1, align 4, !tbaa !18
  %2 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 1
  %3 = load i32* %2, align 4, !tbaa !20
  %4 = icmp sgt i32 %3, 1
  br i1 %4, label %.lr.ph11, label %._crit_edge12

.lr.ph11:                                         ; preds = %0, %.critedge
  %5 = phi i32 [ %., %.critedge ], [ 0, %0 ]
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %.critedge ], [ 1, %0 ]
  %6 = add nsw i64 %indvars.iv23, -1
  %7 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 10, i64 %6
  %8 = load i32* %7, align 4, !tbaa !21
  %9 = trunc i64 %indvars.iv23 to i32
  br label %10

; <label>:10                                      ; preds = %13, %.lr.ph11
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %13 ], [ %indvars.iv23, %.lr.ph11 ]
  %nshift.0 = phi i32 [ %14, %13 ], [ %9, %.lr.ph11 ]
  %11 = icmp sgt i64 %indvars.iv21, 0
  %12 = trunc i64 %indvars.iv21 to i32
  br i1 %11, label %13, label %.critedge

; <label>:13                                      ; preds = %10
  %14 = add nsw i32 %nshift.0, -1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 9, i64 %15
  %17 = load i32* %16, align 4, !tbaa !21
  %18 = icmp sgt i32 %17, %8
  %indvars.iv.next22 = add nsw i64 %indvars.iv21, -1
  br i1 %18, label %10, label %.critedge

.critedge:                                        ; preds = %10, %13
  %19 = sub nsw i32 %9, %12
  %20 = icmp sgt i32 %5, %19
  %. = select i1 %20, i32 %5, i32 %19
  store i32 %., i32* %1, align 4, !tbaa !18
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  %21 = sext i32 %3 to i64
  %22 = icmp slt i64 %indvars.iv.next24, %21
  br i1 %22, label %.lr.ph11, label %._crit_edge12

._crit_edge12:                                    ; preds = %.critedge, %0
  %23 = add nsw i32 %3, 1
  %24 = sdiv i32 %23, 2
  %25 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 5
  store i32 %24, i32* %25, align 4, !tbaa !22
  %26 = icmp sgt i32 %3, 0
  br i1 %26, label %.lr.ph8, label %._crit_edge

.lr.ph8:                                          ; preds = %._crit_edge12
  %27 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 2
  %28 = icmp eq %struct.__sFILE* %fp, null
  br label %29

; <label>:29                                      ; preds = %.lr.ph8, %54
  %indvars.iv17 = phi i64 [ 0, %.lr.ph8 ], [ %indvars.iv.next18, %54 ]
  %30 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 9, i64 %indvars.iv17
  %31 = load i32* %30, align 4, !tbaa !21
  %32 = add nsw i32 %31, -1
  %33 = load i32* %27, align 4, !tbaa !23
  %34 = tail call i32 @calc_naaj(i32 %32, i32 %33) #7
  %35 = add nsw i32 %34, %32
  %36 = load i32* %27, align 4, !tbaa !23
  %37 = srem i32 %35, %36
  %38 = load i32* %2, align 4, !tbaa !20
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %.lr.ph, label %.critedge1

.lr.ph:                                           ; preds = %29, %43
  %indvars.iv = phi i64 [ %indvars.iv.next, %43 ], [ 0, %29 ]
  %40 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 9, i64 %indvars.iv
  %41 = load i32* %40, align 4, !tbaa !21
  %42 = icmp sgt i32 %37, %41
  br i1 %42, label %43, label %..critedge1_crit_edge5

; <label>:43                                      ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %44 = sext i32 %38 to i64
  %45 = icmp slt i64 %indvars.iv.next, %44
  br i1 %45, label %.lr.ph, label %..critedge1_crit_edge

..critedge1_crit_edge:                            ; preds = %43
  %46 = trunc i64 %indvars.iv.next to i32
  br label %.critedge1

..critedge1_crit_edge5:                           ; preds = %.lr.ph
  %47 = trunc i64 %indvars.iv to i32
  br label %.critedge1

.critedge1:                                       ; preds = %..critedge1_crit_edge5, %..critedge1_crit_edge, %29
  %nshift.1.lcssa = phi i32 [ %46, %..critedge1_crit_edge ], [ %47, %..critedge1_crit_edge5 ], [ 0, %29 ]
  %48 = trunc i64 %indvars.iv17 to i32
  %49 = sub i32 %nshift.1.lcssa, %48
  %50 = add nsw i32 %49, %38
  %51 = srem i32 %50, %38
  br i1 %28, label %54, label %52

; <label>:52                                      ; preds = %.critedge1
  %53 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([48 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %32, i32 %37, i32 %51) #7
  %.pre = load i32* %2, align 4, !tbaa !20
  br label %54

; <label>:54                                      ; preds = %.critedge1, %52
  %55 = phi i32 [ %38, %.critedge1 ], [ %.pre, %52 ]
  %56 = load i32* %25, align 4, !tbaa !22
  %57 = icmp sgt i32 %51, %56
  %.2 = select i1 %57, i32 %51, i32 %56
  store i32 %.2, i32* %25, align 4, !tbaa !22
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1
  %58 = sext i32 %55 to i64
  %59 = icmp slt i64 %indvars.iv.next18, %58
  br i1 %59, label %29, label %._crit_edge

._crit_edge:                                      ; preds = %54, %._crit_edge12
  %60 = phi i32 [ %24, %._crit_edge12 ], [ %.2, %54 ]
  %61 = icmp eq %struct.__sFILE* %fp, null
  br i1 %61, label %65, label %62

; <label>:62                                      ; preds = %._crit_edge
  %63 = load i32* %1, align 4, !tbaa !18
  %64 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([35 x i8]* @.str1, i64 0, i64 0), i32 %60, i32 %63) #7
  br label %65

; <label>:65                                      ; preds = %._crit_edge, %62
  ret void
}

; Function Attrs: optsize
declare i32 @calc_naaj(i32, i32) #1

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #5

; Function Attrs: nounwind optsize ssp uwtable
define void @calc_nsb(%struct.__sFILE* %fp, %struct.t_block* nocapture readonly %cgs, i32 %nnodes, %struct.t_nsborder* nocapture %nsb, i32 %nstDlb) #4 {
overflow.checked:
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %overflow.checked
  %index = phi i64 [ 0, %overflow.checked ], [ %index.next, %vector.body ]
  %0 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 10, i64 %index
  %1 = bitcast i32* %0 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %1, align 4, !tbaa !21
  %2 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 9, i64 %index
  %3 = bitcast i32* %2 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %3, align 4, !tbaa !21
  %4 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %index
  %5 = bitcast i32* %4 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %5, align 4, !tbaa !21
  %6 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %index
  %7 = bitcast i32* %6 to <4 x i32>*
  store <4 x i32> zeroinitializer, <4 x i32>* %7, align 4, !tbaa !21
  %index.next = add i64 %index, 4
  %8 = icmp eq i64 %index.next, 256
  br i1 %8, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  %9 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 1
  store i32 %nnodes, i32* %9, align 4, !tbaa !20
  %10 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 4
  store i32 %nstDlb, i32* %10, align 4, !tbaa !27
  %11 = getelementptr inbounds %struct.t_block* %cgs, i64 0, i32 1
  %12 = load i32* %11, align 4, !tbaa !28
  %13 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 2
  store i32 %12, i32* %13, align 4, !tbaa !23
  %14 = getelementptr inbounds %struct.t_block* %cgs, i64 0, i32 3
  %15 = load i32* %14, align 4, !tbaa !30
  %16 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 3
  store i32 %15, i32* %16, align 4, !tbaa !31
  %17 = icmp sgt i32 %nnodes, 0
  br i1 %17, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %middle.block
  %18 = getelementptr inbounds %struct.t_block* %cgs, i64 0, i32 2
  %19 = add i32 %nnodes, -1
  br label %20

; <label>:20                                      ; preds = %26, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %26 ]
  %21 = icmp sgt i64 %indvars.iv, 0
  br i1 %21, label %22, label %26

; <label>:22                                      ; preds = %20
  %23 = add nsw i64 %indvars.iv, -1
  %24 = getelementptr inbounds %struct.t_block* %cgs, i64 0, i32 0, i64 %23
  %25 = load i32* %24, align 4, !tbaa !21
  br label %26

; <label>:26                                      ; preds = %20, %22
  %27 = phi i32 [ %25, %22 ], [ 0, %20 ]
  %28 = getelementptr inbounds %struct.t_block* %cgs, i64 0, i32 0, i64 %indvars.iv
  %29 = load i32* %28, align 4, !tbaa !21
  %30 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 9, i64 %indvars.iv
  store i32 %29, i32* %30, align 4, !tbaa !21
  %31 = load i32* %28, align 4, !tbaa !21
  %32 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 10, i64 %indvars.iv
  store i32 %31, i32* %32, align 4, !tbaa !21
  %33 = sext i32 %27 to i64
  %34 = load i32** %18, align 8, !tbaa !32
  %35 = getelementptr inbounds i32* %34, i64 %33
  %36 = load i32* %35, align 4, !tbaa !21
  %37 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %indvars.iv
  store i32 %36, i32* %37, align 4, !tbaa !21
  %38 = load i32* %28, align 4, !tbaa !21
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32* %34, i64 %39
  %41 = load i32* %40, align 4, !tbaa !21
  %42 = sub nsw i32 %41, %36
  %43 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %indvars.iv
  store i32 %42, i32* %43, align 4, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %19
  br i1 %exitcond, label %._crit_edge, label %20

._crit_edge:                                      ; preds = %26, %middle.block
  tail call void @calc_nsbshift(%struct.__sFILE* %fp, %struct.t_nsborder* %nsb) #9
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @print_nsb(%struct.__sFILE* %fp, i8* %title, %struct.t_nsborder* nocapture readonly %nsb) #4 {
  %1 = icmp eq %struct.__sFILE* %fp, null
  br i1 %1, label %38, label %2

; <label>:2                                       ; preds = %0
  %3 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([4 x i8]* @.str2, i64 0, i64 0), i8* %title) #7
  %4 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 0
  %5 = load i32* %4, align 4, !tbaa !33
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([22 x i8]* @.str3, i64 0, i64 0), i32 %5) #7
  %7 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 1
  %8 = load i32* %7, align 4, !tbaa !20
  %9 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str4, i64 0, i64 0), i32 %8) #7
  %10 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 2
  %11 = load i32* %10, align 4, !tbaa !23
  %12 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str5, i64 0, i64 0), i32 %11) #7
  %13 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 3
  %14 = load i32* %13, align 4, !tbaa !31
  %15 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str6, i64 0, i64 0), i32 %14) #7
  %16 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 5
  %17 = load i32* %16, align 4, !tbaa !22
  %18 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str7, i64 0, i64 0), i32 %17) #7
  %19 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 6
  %20 = load i32* %19, align 4, !tbaa !18
  %21 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([19 x i8]* @.str8, i64 0, i64 0), i32 %20) #7
  %22 = tail call i64 @fwrite(i8* getelementptr inbounds ([42 x i8]* @.str9, i64 0, i64 0), i64 41, i64 1, %struct.__sFILE* %fp)
  %23 = load i32* %7, align 4, !tbaa !20
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %2, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %2 ]
  %25 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %indvars.iv
  %26 = load i32* %25, align 4, !tbaa !21
  %27 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %indvars.iv
  %28 = load i32* %27, align 4, !tbaa !21
  %29 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 9, i64 %indvars.iv
  %30 = load i32* %29, align 4, !tbaa !21
  %31 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 10, i64 %indvars.iv
  %32 = load i32* %31, align 4, !tbaa !21
  %33 = trunc i64 %indvars.iv to i32
  %34 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([18 x i8]* @.str10, i64 0, i64 0), i32 %33, i32 %26, i32 %28, i32 %30, i32 %32) #7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %35 = load i32* %7, align 4, !tbaa !20
  %36 = sext i32 %35 to i64
  %37 = icmp slt i64 %indvars.iv.next, %36
  br i1 %37, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %2
  %fputc = tail call i32 @fputc(i32 10, %struct.__sFILE* %fp)
  br label %38

; <label>:38                                      ; preds = %0, %._crit_edge
  ret void
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #6

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct.__sFILE* nocapture) #6

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { readnone }
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
!18 = !{!19, !7, i64 24}
!19 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !5, i64 28, !5, i64 1052, !5, i64 2076, !5, i64 3100}
!20 = !{!19, !7, i64 4}
!21 = !{!7, !7, i64 0}
!22 = !{!19, !7, i64 20}
!23 = !{!19, !7, i64 8}
!24 = distinct !{!24, !25, !26}
!25 = !{!"llvm.loop.vectorize.width", i32 1}
!26 = !{!"llvm.loop.interleave.count", i32 1}
!27 = !{!19, !7, i64 16}
!28 = !{!29, !7, i64 1024}
!29 = !{!"", !5, i64 0, !7, i64 1024, !4, i64 1032, !7, i64 1040, !4, i64 1048}
!30 = !{!29, !7, i64 1040}
!31 = !{!19, !7, i64 12}
!32 = !{!29, !4, i64 1032}
!33 = !{!19, !7, i64 0}
