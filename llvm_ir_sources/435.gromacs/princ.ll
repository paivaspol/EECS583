; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/princ.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_atom = type { float, float, float, float, i16, i16, i32, i32, [9 x i8], i8 }
%struct.t_atoms = type { i32, %struct.t_atom*, i8***, i8***, i8***, i32, i8***, i32, i8***, %struct.t_block, [9 x %struct.t_grps], %struct.t_pdbinfo* }
%struct.t_block = type { [256 x i32], i32, i32*, i32, i32* }
%struct.t_grps = type { i32, i32* }
%struct.t_pdbinfo = type { i32, i32, i8, [6 x i8], float, float, i32, [6 x i32] }

@.str = private unnamed_addr constant [6 x i8] c"inten\00", align 1
@.str1 = private unnamed_addr constant [65 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/princ.c\00", align 1
@.str2 = private unnamed_addr constant [3 x i8] c"ev\00", align 1
@.str3 = private unnamed_addr constant [9 x i8] c"inten[i]\00", align 1
@.str4 = private unnamed_addr constant [6 x i8] c"ev[i]\00", align 1

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
define void @principal_comp(i32 %n, i32* nocapture readonly %index, %struct.t_atom* nocapture readonly %atom, [3 x float]* nocapture readonly %x, [3 x float]* nocapture %trans, float* nocapture %d) #4 {
  %nrot = alloca i32, align 4
  %dd = alloca [4 x double], align 16
  %tvec = alloca [4 x double], align 16
  %1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 96, i32 4, i32 8) #7
  %2 = bitcast i8* %1 to double**
  %3 = tail call i8* @save_calloc(i8* getelementptr inbounds ([3 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 97, i32 4, i32 8) #7
  %4 = bitcast i8* %3 to double**
  br label %5

; <label>:5                                       ; preds = %5, %0
  %indvars.iv73 = phi i64 [ 0, %0 ], [ %indvars.iv.next74, %5 ]
  %6 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 99, i32 4, i32 8) #7
  %7 = getelementptr inbounds double** %2, i64 %indvars.iv73
  %8 = bitcast double** %7 to i8**
  store i8* %6, i8** %8, align 8, !tbaa !18
  %9 = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 100, i32 4, i32 8) #7
  %10 = getelementptr inbounds double** %4, i64 %indvars.iv73
  %11 = bitcast double** %10 to i8**
  store i8* %9, i8** %11, align 8, !tbaa !18
  %12 = getelementptr inbounds [4 x double]* %dd, i64 0, i64 %indvars.iv73
  store double 0.000000e+00, double* %12, align 8, !tbaa !16
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1
  %exitcond75 = icmp eq i64 %indvars.iv.next74, 4
  br i1 %exitcond75, label %.preheader5, label %5

.preheader5:                                      ; preds = %5, %.preheader5
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %.preheader5 ], [ 0, %5 ]
  %13 = getelementptr inbounds double** %2, i64 %indvars.iv70
  %14 = bitcast double** %13 to i8**
  %15 = load i8** %14, align 8, !tbaa !18
  call void @llvm.memset.p0i8.i64(i8* %15, i8 0, i64 32, i32 8, i1 false)
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1
  %exitcond72 = icmp eq i64 %indvars.iv.next71, 4
  br i1 %exitcond72, label %.preheader4, label %.preheader5

.preheader4:                                      ; preds = %.preheader5
  %16 = icmp sgt i32 %n, 0
  br i1 %16, label %.lr.ph, label %.preheader4._crit_edge

.preheader4._crit_edge:                           ; preds = %.preheader4
  %.phi.trans.insert = getelementptr inbounds i8* %1, i64 8
  %.phi.trans.insert77 = bitcast i8* %.phi.trans.insert to i64**
  %.pre = load i64** %.phi.trans.insert77, align 8, !tbaa !18
  %.pre78 = load double** %2, align 8, !tbaa !18
  %.phi.trans.insert79 = getelementptr inbounds i8* %1, i64 16
  %.phi.trans.insert80 = bitcast i8* %.phi.trans.insert79 to i64**
  %.pre81 = load i64** %.phi.trans.insert80, align 8, !tbaa !18
  %17 = bitcast i64* %.pre81 to double*
  %18 = bitcast i64* %.pre to double*
  br label %._crit_edge

.lr.ph:                                           ; preds = %.preheader4
  %19 = load double** %2, align 8, !tbaa !18
  %20 = getelementptr inbounds i8* %1, i64 8
  %21 = bitcast i8* %20 to double**
  %22 = load double** %21, align 8, !tbaa !18
  %23 = getelementptr inbounds double* %22, i64 1
  %24 = getelementptr inbounds i8* %1, i64 16
  %25 = bitcast i8* %24 to double**
  %26 = load double** %25, align 8, !tbaa !18
  %27 = getelementptr inbounds double* %26, i64 2
  %28 = add i32 %n, -1
  %29 = bitcast double* %22 to i64*
  %30 = bitcast double* %26 to i64*
  br label %31

; <label>:31                                      ; preds = %31, %.lr.ph
  %indvars.iv64 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next65, %31 ]
  %32 = getelementptr inbounds i32* %index, i64 %indvars.iv64
  %33 = load i32* %32, align 4, !tbaa !19
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.t_atom* %atom, i64 %34, i32 0
  %36 = load float* %35, align 4, !tbaa !20
  %37 = getelementptr inbounds [3 x float]* %x, i64 %34, i64 0
  %38 = bitcast float* %37 to <2 x float>*
  %39 = load <2 x float>* %38, align 4, !tbaa !14
  %40 = getelementptr inbounds [3 x float]* %x, i64 %34, i64 2
  %41 = load float* %40, align 4, !tbaa !14
  %42 = extractelement <2 x float> %39, i32 1
  %43 = fmul float %42, %42
  %44 = fmul float %41, %41
  %45 = fadd float %43, %44
  %46 = fmul float %36, %45
  %47 = fpext float %46 to double
  %48 = load double* %19, align 8, !tbaa !16
  %49 = fadd double %48, %47
  store double %49, double* %19, align 8, !tbaa !16
  %50 = extractelement <2 x float> %39, i32 0
  %51 = fmul float %50, %50
  %52 = fadd float %51, %44
  %53 = fmul float %36, %52
  %54 = fpext float %53 to double
  %55 = load double* %23, align 8, !tbaa !16
  %56 = fadd double %55, %54
  store double %56, double* %23, align 8, !tbaa !16
  %57 = fadd float %51, %43
  %58 = fmul float %36, %57
  %59 = fpext float %58 to double
  %60 = load double* %27, align 8, !tbaa !16
  %61 = fadd double %59, %60
  store double %61, double* %27, align 8, !tbaa !16
  %62 = fmul float %50, %42
  %63 = fmul float %36, %62
  %64 = fpext float %63 to double
  %65 = load double* %22, align 8, !tbaa !16
  %66 = fsub double %65, %64
  store double %66, double* %22, align 8, !tbaa !16
  %67 = insertelement <2 x float> undef, float %41, i32 0
  %68 = insertelement <2 x float> %67, float %41, i32 1
  %69 = fmul <2 x float> %39, %68
  %70 = insertelement <2 x float> undef, float %36, i32 0
  %71 = insertelement <2 x float> %70, float %36, i32 1
  %72 = fmul <2 x float> %69, %71
  %73 = fpext <2 x float> %72 to <2 x double>
  %74 = bitcast double* %26 to <2 x double>*
  %75 = load <2 x double>* %74, align 8, !tbaa !16
  %76 = fsub <2 x double> %75, %73
  %77 = bitcast double* %26 to <2 x double>*
  store <2 x double> %76, <2 x double>* %77, align 8, !tbaa !16
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1
  %lftr.wideiv = trunc i64 %indvars.iv64 to i32
  %exitcond66 = icmp eq i32 %lftr.wideiv, %28
  br i1 %exitcond66, label %._crit_edge, label %31

._crit_edge:                                      ; preds = %31, %.preheader4._crit_edge
  %78 = phi double* [ %18, %.preheader4._crit_edge ], [ %22, %31 ]
  %79 = phi double* [ %17, %.preheader4._crit_edge ], [ %26, %31 ]
  %80 = phi i64* [ %.pre81, %.preheader4._crit_edge ], [ %30, %31 ]
  %81 = phi double* [ %.pre78, %.preheader4._crit_edge ], [ %19, %31 ]
  %82 = phi i64* [ %.pre, %.preheader4._crit_edge ], [ %29, %31 ]
  %83 = load i64* %82, align 8, !tbaa !16
  %84 = getelementptr inbounds double* %81, i64 1
  %85 = bitcast double* %84 to i64*
  store i64 %83, i64* %85, align 8, !tbaa !16
  %86 = load i64* %80, align 8, !tbaa !16
  %87 = getelementptr inbounds double* %81, i64 2
  %88 = bitcast double* %87 to i64*
  store i64 %86, i64* %88, align 8, !tbaa !16
  %89 = getelementptr inbounds double* %79, i64 1
  %90 = bitcast double* %89 to i64*
  %91 = load i64* %90, align 8, !tbaa !16
  %92 = getelementptr inbounds double* %78, i64 2
  %93 = bitcast double* %92 to i64*
  store i64 %91, i64* %93, align 8, !tbaa !16
  br label %.preheader3

.preheader3:                                      ; preds = %..preheader3_crit_edge, %._crit_edge
  %94 = phi double* [ %81, %._crit_edge ], [ %.pre83, %..preheader3_crit_edge ]
  %indvars.iv61 = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next62, %..preheader3_crit_edge ]
  br label %95

; <label>:95                                      ; preds = %95, %.preheader3
  %indvars.iv58 = phi i64 [ 0, %.preheader3 ], [ %indvars.iv.next59, %95 ]
  %96 = getelementptr inbounds double* %94, i64 %indvars.iv58
  %97 = load double* %96, align 8, !tbaa !16
  %98 = fptrunc double %97 to float
  %99 = getelementptr inbounds [3 x float]* %trans, i64 %indvars.iv61, i64 %indvars.iv58
  store float %98, float* %99, align 4, !tbaa !14
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  %exitcond60 = icmp eq i64 %indvars.iv.next59, 3
  br i1 %exitcond60, label %100, label %95

; <label>:100                                     ; preds = %95
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1
  %exitcond63 = icmp eq i64 %indvars.iv.next62, 3
  br i1 %exitcond63, label %101, label %..preheader3_crit_edge

..preheader3_crit_edge:                           ; preds = %100
  %.phi.trans.insert82 = getelementptr inbounds double** %2, i64 %indvars.iv.next62
  %.pre83 = load double** %.phi.trans.insert82, align 8, !tbaa !18
  br label %.preheader3

; <label>:101                                     ; preds = %100
  %102 = getelementptr inbounds [4 x double]* %dd, i64 0, i64 0
  call void @jacobi(double** %2, i32 3, double* %102, double** %4, i32* %nrot) #7
  %103 = getelementptr inbounds [4 x double]* %dd, i64 0, i64 1
  %104 = bitcast [4 x double]* %dd to <2 x double>*
  %105 = load <2 x double>* %104, align 16, !tbaa !16
  %106 = call <2 x double> @llvm.fabs.v2f64(<2 x double> %105)
  %107 = extractelement <2 x double> %106, i32 0
  %108 = extractelement <2 x double> %106, i32 1
  %109 = fcmp ogt double %108, %107
  %110 = extractelement <2 x double> %105, i32 1
  br i1 %109, label %.preheader98, label %138

.preheader98:                                     ; preds = %101, %.preheader98
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %.preheader98 ], [ 0, %101 ]
  %111 = getelementptr inbounds double** %4, i64 %indvars.iv55
  %112 = bitcast double** %111 to i64**
  %113 = load i64** %112, align 8, !tbaa !18
  %114 = load i64* %113, align 8, !tbaa !16
  %115 = getelementptr inbounds [4 x double]* %tvec, i64 0, i64 %indvars.iv55
  %116 = bitcast double* %115 to i64*
  store i64 %114, i64* %116, align 8, !tbaa !16
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1
  %exitcond57 = icmp eq i64 %indvars.iv.next56, 4
  br i1 %exitcond57, label %117, label %.preheader98

; <label>:117                                     ; preds = %.preheader98
  %118 = extractelement <2 x double> %105, i32 0
  %119 = fptrunc double %118 to float
  %120 = getelementptr inbounds [4 x double]* %dd, i64 0, i64 0
  store double %110, double* %120, align 16, !tbaa !16
  br label %121

; <label>:121                                     ; preds = %121, %117
  %indvars.iv52 = phi i64 [ 0, %117 ], [ %indvars.iv.next53, %121 ]
  %122 = getelementptr inbounds double** %4, i64 %indvars.iv52
  %123 = load double** %122, align 8, !tbaa !18
  %124 = getelementptr inbounds double* %123, i64 1
  %125 = bitcast double* %124 to i64*
  %126 = load i64* %125, align 8, !tbaa !16
  %127 = bitcast double* %123 to i64*
  store i64 %126, i64* %127, align 8, !tbaa !16
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
  %exitcond54 = icmp eq i64 %indvars.iv.next53, 4
  br i1 %exitcond54, label %128, label %121

; <label>:128                                     ; preds = %121
  %129 = fpext float %119 to double
  store double %129, double* %103, align 8, !tbaa !16
  br label %130

; <label>:130                                     ; preds = %130, %128
  %indvars.iv49 = phi i64 [ 0, %128 ], [ %indvars.iv.next50, %130 ]
  %131 = getelementptr inbounds [4 x double]* %tvec, i64 0, i64 %indvars.iv49
  %132 = bitcast double* %131 to i64*
  %133 = load i64* %132, align 8, !tbaa !16
  %134 = getelementptr inbounds double** %4, i64 %indvars.iv49
  %135 = load double** %134, align 8, !tbaa !18
  %136 = getelementptr inbounds double* %135, i64 1
  %137 = bitcast double* %136 to i64*
  store i64 %133, i64* %137, align 8, !tbaa !16
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  %exitcond51 = icmp eq i64 %indvars.iv.next50, 4
  br i1 %exitcond51, label %.loopexit2, label %130

.loopexit2:                                       ; preds = %130
  %.pre84 = load double* %103, align 8, !tbaa !16
  br label %138

; <label>:138                                     ; preds = %.loopexit2, %101
  %.in = phi double [ %.pre84, %.loopexit2 ], [ %110, %101 ]
  %139 = getelementptr inbounds [4 x double]* %dd, i64 0, i64 2
  %140 = load double* %139, align 16, !tbaa !16
  %141 = call double @fabs(double %140) #9
  %142 = call double @fabs(double %.in) #9
  %143 = fcmp ogt double %141, %142
  br i1 %143, label %.preheader97, label %171

.preheader97:                                     ; preds = %138, %.preheader97
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %.preheader97 ], [ 0, %138 ]
  %144 = getelementptr inbounds double** %4, i64 %indvars.iv46
  %145 = load double** %144, align 8, !tbaa !18
  %146 = getelementptr inbounds double* %145, i64 1
  %147 = bitcast double* %146 to i64*
  %148 = load i64* %147, align 8, !tbaa !16
  %149 = getelementptr inbounds [4 x double]* %tvec, i64 0, i64 %indvars.iv46
  %150 = bitcast double* %149 to i64*
  store i64 %148, i64* %150, align 8, !tbaa !16
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  %exitcond48 = icmp eq i64 %indvars.iv.next47, 4
  br i1 %exitcond48, label %151, label %.preheader97

; <label>:151                                     ; preds = %.preheader97
  %152 = fptrunc double %.in to float
  store double %140, double* %103, align 8, !tbaa !16
  br label %153

; <label>:153                                     ; preds = %153, %151
  %indvars.iv43 = phi i64 [ 0, %151 ], [ %indvars.iv.next44, %153 ]
  %154 = getelementptr inbounds double** %4, i64 %indvars.iv43
  %155 = load double** %154, align 8, !tbaa !18
  %156 = getelementptr inbounds double* %155, i64 2
  %157 = bitcast double* %156 to i64*
  %158 = load i64* %157, align 8, !tbaa !16
  %159 = getelementptr inbounds double* %155, i64 1
  %160 = bitcast double* %159 to i64*
  store i64 %158, i64* %160, align 8, !tbaa !16
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1
  %exitcond45 = icmp eq i64 %indvars.iv.next44, 4
  br i1 %exitcond45, label %161, label %153

; <label>:161                                     ; preds = %153
  %162 = fpext float %152 to double
  store double %162, double* %139, align 16, !tbaa !16
  br label %163

; <label>:163                                     ; preds = %163, %161
  %indvars.iv40 = phi i64 [ 0, %161 ], [ %indvars.iv.next41, %163 ]
  %164 = getelementptr inbounds [4 x double]* %tvec, i64 0, i64 %indvars.iv40
  %165 = bitcast double* %164 to i64*
  %166 = load i64* %165, align 8, !tbaa !16
  %167 = getelementptr inbounds double** %4, i64 %indvars.iv40
  %168 = load double** %167, align 8, !tbaa !18
  %169 = getelementptr inbounds double* %168, i64 2
  %170 = bitcast double* %169 to i64*
  store i64 %166, i64* %170, align 8, !tbaa !16
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  %exitcond42 = icmp eq i64 %indvars.iv.next41, 4
  br i1 %exitcond42, label %.loopexit, label %163

.loopexit:                                        ; preds = %163
  %.pre85 = load double* %103, align 8, !tbaa !16
  br label %171

; <label>:171                                     ; preds = %.loopexit, %138
  %.in95 = phi double [ %.pre85, %.loopexit ], [ %.in, %138 ]
  %172 = call double @fabs(double %.in95) #9
  %173 = load double* %102, align 16, !tbaa !16
  %174 = call double @fabs(double %173) #9
  %175 = fcmp ogt double %172, %174
  br i1 %175, label %.preheader96, label %.preheader1

.preheader96:                                     ; preds = %171, %.preheader96
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %.preheader96 ], [ 0, %171 ]
  %176 = getelementptr inbounds double** %4, i64 %indvars.iv37
  %177 = bitcast double** %176 to i64**
  %178 = load i64** %177, align 8, !tbaa !18
  %179 = load i64* %178, align 8, !tbaa !16
  %180 = getelementptr inbounds [4 x double]* %tvec, i64 0, i64 %indvars.iv37
  %181 = bitcast double* %180 to i64*
  store i64 %179, i64* %181, align 8, !tbaa !16
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  %exitcond39 = icmp eq i64 %indvars.iv.next38, 4
  br i1 %exitcond39, label %182, label %.preheader96

; <label>:182                                     ; preds = %.preheader96
  %183 = fptrunc double %173 to float
  %184 = getelementptr inbounds [4 x double]* %dd, i64 0, i64 0
  store double %.in95, double* %184, align 16, !tbaa !16
  br label %185

; <label>:185                                     ; preds = %185, %182
  %indvars.iv34 = phi i64 [ 0, %182 ], [ %indvars.iv.next35, %185 ]
  %186 = getelementptr inbounds double** %4, i64 %indvars.iv34
  %187 = load double** %186, align 8, !tbaa !18
  %188 = getelementptr inbounds double* %187, i64 1
  %189 = bitcast double* %188 to i64*
  %190 = load i64* %189, align 8, !tbaa !16
  %191 = bitcast double* %187 to i64*
  store i64 %190, i64* %191, align 8, !tbaa !16
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  %exitcond36 = icmp eq i64 %indvars.iv.next35, 4
  br i1 %exitcond36, label %192, label %185

; <label>:192                                     ; preds = %185
  %193 = fpext float %183 to double
  store double %193, double* %103, align 8, !tbaa !16
  br label %194

; <label>:194                                     ; preds = %194, %192
  %indvars.iv31 = phi i64 [ 0, %192 ], [ %indvars.iv.next32, %194 ]
  %195 = getelementptr inbounds [4 x double]* %tvec, i64 0, i64 %indvars.iv31
  %196 = bitcast double* %195 to i64*
  %197 = load i64* %196, align 8, !tbaa !16
  %198 = getelementptr inbounds double** %4, i64 %indvars.iv31
  %199 = load double** %198, align 8, !tbaa !18
  %200 = getelementptr inbounds double* %199, i64 1
  %201 = bitcast double* %200 to i64*
  store i64 %197, i64* %201, align 8, !tbaa !16
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  %exitcond33 = icmp eq i64 %indvars.iv.next32, 4
  br i1 %exitcond33, label %.preheader1, label %194

.preheader1:                                      ; preds = %171, %194, %213
  %indvars.iv28 = phi i64 [ %indvars.iv.next29, %213 ], [ 0, %194 ], [ 0, %171 ]
  %202 = getelementptr inbounds [4 x double]* %dd, i64 0, i64 %indvars.iv28
  %203 = load double* %202, align 8, !tbaa !16
  %204 = fptrunc double %203 to float
  %205 = getelementptr inbounds float* %d, i64 %indvars.iv28
  store float %204, float* %205, align 4, !tbaa !14
  br label %206

; <label>:206                                     ; preds = %206, %.preheader1
  %indvars.iv25 = phi i64 [ 0, %.preheader1 ], [ %indvars.iv.next26, %206 ]
  %207 = getelementptr inbounds double** %4, i64 %indvars.iv25
  %208 = load double** %207, align 8, !tbaa !18
  %209 = getelementptr inbounds double* %208, i64 %indvars.iv28
  %210 = load double* %209, align 8, !tbaa !16
  %211 = fptrunc double %210 to float
  %212 = getelementptr inbounds [3 x float]* %trans, i64 %indvars.iv28, i64 %indvars.iv25
  store float %211, float* %212, align 4, !tbaa !14
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  %exitcond27 = icmp eq i64 %indvars.iv.next26, 3
  br i1 %exitcond27, label %213, label %206

; <label>:213                                     ; preds = %206
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  %exitcond30 = icmp eq i64 %indvars.iv.next29, 3
  br i1 %exitcond30, label %.preheader, label %.preheader1

.preheader:                                       ; preds = %213, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ 0, %213 ]
  %214 = getelementptr inbounds double** %2, i64 %indvars.iv
  %215 = bitcast double** %214 to i8**
  %216 = load i8** %215, align 8, !tbaa !18
  call void @save_free(i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 166, i8* %216) #7
  %217 = getelementptr inbounds double** %4, i64 %indvars.iv
  %218 = bitcast double** %217 to i8**
  %219 = load i8** %218, align 8, !tbaa !18
  call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 167, i8* %219) #7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond, label %220, label %.preheader

; <label>:220                                     ; preds = %.preheader
  call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 169, i8* %1) #7
  call void @save_free(i8* getelementptr inbounds ([3 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([65 x i8]* @.str1, i64 0, i64 0), i32 170, i8* %3) #7
  ret void
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: optsize
declare void @jacobi(double**, i32, double*, double**, i32*) #1

; Function Attrs: nounwind optsize readnone
declare double @fabs(double) #5

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @rotate_atoms(i32 %gnx, i32* readonly %index, [3 x float]* nocapture %x, [3 x float]* nocapture readonly %trans) #4 {
  %1 = icmp sgt i32 %gnx, 0
  br i1 %1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %2 = icmp eq i32* %index, null
  %3 = getelementptr inbounds [3 x float]* %trans, i64 0, i64 0
  %4 = getelementptr inbounds [3 x float]* %trans, i64 0, i64 1
  %5 = getelementptr inbounds [3 x float]* %trans, i64 0, i64 2
  %6 = getelementptr inbounds [3 x float]* %trans, i64 1, i64 0
  %7 = getelementptr inbounds [3 x float]* %trans, i64 1, i64 1
  %8 = getelementptr inbounds [3 x float]* %trans, i64 1, i64 2
  %9 = getelementptr inbounds [3 x float]* %trans, i64 2, i64 0
  %10 = getelementptr inbounds [3 x float]* %trans, i64 2, i64 1
  %11 = getelementptr inbounds [3 x float]* %trans, i64 2, i64 2
  %12 = add i32 %gnx, -1
  br label %13

; <label>:13                                      ; preds = %18, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %18 ]
  %14 = trunc i64 %indvars.iv to i32
  br i1 %2, label %18, label %15

; <label>:15                                      ; preds = %13
  %16 = getelementptr inbounds i32* %index, i64 %indvars.iv
  %17 = load i32* %16, align 4, !tbaa !19
  br label %18

; <label>:18                                      ; preds = %13, %15
  %19 = phi i32 [ %17, %15 ], [ %14, %13 ]
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [3 x float]* %x, i64 %20, i64 0
  %22 = load float* %21, align 4, !tbaa !14
  %23 = getelementptr inbounds [3 x float]* %x, i64 %20, i64 1
  %24 = load float* %23, align 4, !tbaa !14
  %25 = getelementptr inbounds [3 x float]* %x, i64 %20, i64 2
  %26 = load float* %25, align 4, !tbaa !14
  %27 = load float* %3, align 4, !tbaa !14
  %28 = fmul float %22, %27
  %29 = load float* %4, align 4, !tbaa !14
  %30 = fmul float %24, %29
  %31 = fadd float %28, %30
  %32 = load float* %5, align 4, !tbaa !14
  %33 = fmul float %26, %32
  %34 = fadd float %31, %33
  store float %34, float* %21, align 4, !tbaa !14
  %35 = load float* %6, align 4, !tbaa !14
  %36 = fmul float %22, %35
  %37 = load float* %7, align 4, !tbaa !14
  %38 = fmul float %24, %37
  %39 = fadd float %36, %38
  %40 = load float* %8, align 4, !tbaa !14
  %41 = fmul float %26, %40
  %42 = fadd float %39, %41
  store float %42, float* %23, align 4, !tbaa !14
  %43 = load float* %9, align 4, !tbaa !14
  %44 = fmul float %22, %43
  %45 = load float* %10, align 4, !tbaa !14
  %46 = fmul float %24, %45
  %47 = fadd float %44, %46
  %48 = load float* %11, align 4, !tbaa !14
  %49 = fmul float %26, %48
  %50 = fadd float %47, %49
  store float %50, float* %25, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i32 %14, %12
  br i1 %exitcond, label %._crit_edge, label %13

._crit_edge:                                      ; preds = %18, %0
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define float @calc_xcm([3 x float]* nocapture readonly %x, i32 %gnx, i32* readonly %index, %struct.t_atom* readonly %atom, float* nocapture %xcm, i32 %bQ) #4 {
  store float 0.000000e+00, float* %xcm, align 4, !tbaa !14
  %1 = getelementptr inbounds float* %xcm, i64 1
  store float 0.000000e+00, float* %1, align 4, !tbaa !14
  %2 = getelementptr inbounds float* %xcm, i64 2
  store float 0.000000e+00, float* %2, align 4, !tbaa !14
  %3 = icmp sgt i32 %gnx, 0
  br i1 %3, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %0
  %4 = icmp eq i32* %index, null
  %5 = icmp eq %struct.t_atom* %atom, null
  %6 = icmp eq i32 %bQ, 0
  %7 = add i32 %gnx, -1
  br label %8

.preheader:                                       ; preds = %29, %0
  %tm.0.lcssa = phi float [ 0.000000e+00, %0 ], [ %30, %29 ]
  br label %31

; <label>:8                                       ; preds = %29, %.lr.ph
  %indvars.iv8 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next9, %29 ]
  %tm.04 = phi float [ 0.000000e+00, %.lr.ph ], [ %30, %29 ]
  %9 = trunc i64 %indvars.iv8 to i32
  br i1 %4, label %13, label %10

; <label>:10                                      ; preds = %8
  %11 = getelementptr inbounds i32* %index, i64 %indvars.iv8
  %12 = load i32* %11, align 4, !tbaa !19
  br label %13

; <label>:13                                      ; preds = %8, %10
  %14 = phi i32 [ %12, %10 ], [ %9, %8 ]
  %.pre = sext i32 %14 to i64
  br i1 %5, label %._crit_edge, label %15

; <label>:15                                      ; preds = %13
  br i1 %6, label %19, label %16

; <label>:16                                      ; preds = %15
  %17 = getelementptr inbounds %struct.t_atom* %atom, i64 %.pre, i32 1
  %18 = load float* %17, align 4, !tbaa !22
  %fabsf = tail call float @fabsf(float %18) #5
  br label %._crit_edge

; <label>:19                                      ; preds = %15
  %20 = getelementptr inbounds %struct.t_atom* %atom, i64 %.pre, i32 0
  %21 = load float* %20, align 4, !tbaa !20
  br label %._crit_edge

._crit_edge:                                      ; preds = %13, %16, %19
  %m0.0 = phi float [ %fabsf, %16 ], [ %21, %19 ], [ 1.000000e+00, %13 ]
  br label %22

; <label>:22                                      ; preds = %22, %._crit_edge
  %indvars.iv5 = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next6, %22 ]
  %23 = getelementptr inbounds [3 x float]* %x, i64 %.pre, i64 %indvars.iv5
  %24 = load float* %23, align 4, !tbaa !14
  %25 = fmul float %m0.0, %24
  %26 = getelementptr inbounds float* %xcm, i64 %indvars.iv5
  %27 = load float* %26, align 4, !tbaa !14
  %28 = fadd float %27, %25
  store float %28, float* %26, align 4, !tbaa !14
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 3
  br i1 %exitcond7, label %29, label %22

; <label>:29                                      ; preds = %22
  %30 = fadd float %tm.04, %m0.0
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1
  %exitcond10 = icmp eq i32 %9, %7
  br i1 %exitcond10, label %.preheader, label %8

; <label>:31                                      ; preds = %31, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %31 ]
  %32 = getelementptr inbounds float* %xcm, i64 %indvars.iv
  %33 = load float* %32, align 4, !tbaa !14
  %34 = fdiv float %33, %tm.0.lcssa
  store float %34, float* %32, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %35, label %31

; <label>:35                                      ; preds = %31
  ret float %tm.0.lcssa
}

; Function Attrs: nounwind optsize ssp uwtable
define float @sub_xcm([3 x float]* nocapture %x, i32 %gnx, i32* readonly %index, %struct.t_atom* readonly %atom, float* nocapture %xcm, i32 %bQ) #4 {
  %1 = tail call float @calc_xcm([3 x float]* %x, i32 %gnx, i32* %index, %struct.t_atom* %atom, float* %xcm, i32 %bQ) #10
  %2 = icmp sgt i32 %gnx, 0
  br i1 %2, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %3 = icmp eq i32* %index, null
  %4 = getelementptr inbounds float* %xcm, i64 1
  %5 = getelementptr inbounds float* %xcm, i64 2
  %6 = add i32 %gnx, -1
  br label %7

; <label>:7                                       ; preds = %12, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %12 ]
  %8 = trunc i64 %indvars.iv to i32
  br i1 %3, label %12, label %9

; <label>:9                                       ; preds = %7
  %10 = getelementptr inbounds i32* %index, i64 %indvars.iv
  %11 = load i32* %10, align 4, !tbaa !19
  br label %12

; <label>:12                                      ; preds = %7, %9
  %13 = phi i32 [ %11, %9 ], [ %8, %7 ]
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [3 x float]* %x, i64 %14, i64 0
  %16 = load float* %15, align 4, !tbaa !14
  %17 = load float* %xcm, align 4, !tbaa !14
  %18 = fsub float %16, %17
  %19 = getelementptr inbounds [3 x float]* %x, i64 %14, i64 1
  %20 = load float* %19, align 4, !tbaa !14
  %21 = load float* %4, align 4, !tbaa !14
  %22 = fsub float %20, %21
  %23 = getelementptr inbounds [3 x float]* %x, i64 %14, i64 2
  %24 = load float* %23, align 4, !tbaa !14
  %25 = load float* %5, align 4, !tbaa !14
  %26 = fsub float %24, %25
  store float %18, float* %15, align 4, !tbaa !14
  store float %22, float* %19, align 4, !tbaa !14
  store float %26, float* %23, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i32 %8, %6
  br i1 %exitcond, label %._crit_edge, label %7

._crit_edge:                                      ; preds = %12, %0
  ret float %1
}

; Function Attrs: nounwind optsize ssp uwtable
define void @add_xcm([3 x float]* nocapture %x, i32 %gnx, i32* readonly %index, float* nocapture readonly %xcm) #4 {
  %1 = icmp sgt i32 %gnx, 0
  br i1 %1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %2 = icmp eq i32* %index, null
  %3 = getelementptr inbounds float* %xcm, i64 1
  %4 = getelementptr inbounds float* %xcm, i64 2
  %5 = add i32 %gnx, -1
  br label %6

; <label>:6                                       ; preds = %11, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %11 ]
  %7 = trunc i64 %indvars.iv to i32
  br i1 %2, label %11, label %8

; <label>:8                                       ; preds = %6
  %9 = getelementptr inbounds i32* %index, i64 %indvars.iv
  %10 = load i32* %9, align 4, !tbaa !19
  br label %11

; <label>:11                                      ; preds = %6, %8
  %12 = phi i32 [ %10, %8 ], [ %7, %6 ]
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [3 x float]* %x, i64 %13, i64 0
  %15 = load float* %14, align 4, !tbaa !14
  %16 = load float* %xcm, align 4, !tbaa !14
  %17 = fadd float %15, %16
  %18 = getelementptr inbounds [3 x float]* %x, i64 %13, i64 1
  %19 = load float* %18, align 4, !tbaa !14
  %20 = load float* %3, align 4, !tbaa !14
  %21 = fadd float %19, %20
  %22 = getelementptr inbounds [3 x float]* %x, i64 %13, i64 2
  %23 = load float* %22, align 4, !tbaa !14
  %24 = load float* %4, align 4, !tbaa !14
  %25 = fadd float %23, %24
  store float %17, float* %14, align 4, !tbaa !14
  store float %21, float* %18, align 4, !tbaa !14
  store float %25, float* %22, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i32 %7, %5
  br i1 %exitcond, label %._crit_edge, label %6

._crit_edge:                                      ; preds = %11, %0
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @orient_princ(%struct.t_atoms* nocapture readonly %atoms, i32 %isize, i32* nocapture readonly %index, i32 %natoms, [3 x float]* nocapture %x, [3 x float]* %v, float* %d) #4 {
  %xcm = alloca [3 x float], align 4
  %prcomp = alloca [3 x float], align 4
  %trans = alloca [3 x [3 x float]], align 16
  %1 = bitcast [3 x [3 x float]]* %trans to i8*
  call void @llvm.lifetime.start(i64 36, i8* %1) #6
  %2 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1
  %3 = load %struct.t_atom** %2, align 8, !tbaa !23
  %4 = getelementptr inbounds [3 x [3 x float]]* %trans, i64 0, i64 0
  %5 = getelementptr inbounds [3 x float]* %prcomp, i64 0, i64 0
  call void @principal_comp(i32 %isize, i32* %index, %struct.t_atom* %3, [3 x float]* %x, [3 x float]* %4, float* %5) #10
  %6 = icmp eq float* %d, null
  br i1 %6, label %21, label %7

; <label>:7                                       ; preds = %0
  %8 = bitcast [3 x float]* %prcomp to i32*
  %9 = load i32* %8, align 4, !tbaa !14
  %10 = bitcast float* %d to i32*
  store i32 %9, i32* %10, align 4, !tbaa !14
  %11 = getelementptr inbounds [3 x float]* %prcomp, i64 0, i64 1
  %12 = bitcast float* %11 to i32*
  %13 = load i32* %12, align 4, !tbaa !14
  %14 = getelementptr inbounds float* %d, i64 1
  %15 = bitcast float* %14 to i32*
  store i32 %13, i32* %15, align 4, !tbaa !14
  %16 = getelementptr inbounds [3 x float]* %prcomp, i64 0, i64 2
  %17 = bitcast float* %16 to i32*
  %18 = load i32* %17, align 4, !tbaa !14
  %19 = getelementptr inbounds float* %d, i64 2
  %20 = bitcast float* %19 to i32*
  store i32 %18, i32* %20, align 4, !tbaa !14
  br label %21

; <label>:21                                      ; preds = %0, %7
  %22 = getelementptr inbounds [3 x [3 x float]]* %trans, i64 0, i64 0, i64 0
  %23 = load float* %22, align 16, !tbaa !14
  %24 = getelementptr inbounds [3 x [3 x float]]* %trans, i64 0, i64 1, i64 1
  %25 = load float* %24, align 4, !tbaa !14
  %26 = getelementptr inbounds [3 x [3 x float]]* %trans, i64 0, i64 2, i64 2
  %27 = load float* %26, align 8, !tbaa !14
  %28 = fmul float %25, %27
  %29 = getelementptr inbounds [3 x [3 x float]]* %trans, i64 0, i64 2, i64 1
  %30 = load float* %29, align 4, !tbaa !14
  %31 = getelementptr inbounds [3 x [3 x float]]* %trans, i64 0, i64 1, i64 2
  %32 = load float* %31, align 4, !tbaa !14
  %33 = fmul float %30, %32
  %34 = fsub float %28, %33
  %35 = fmul float %23, %34
  %36 = getelementptr inbounds [3 x [3 x float]]* %trans, i64 0, i64 1, i64 0
  %37 = load float* %36, align 4, !tbaa !14
  %38 = getelementptr inbounds [3 x [3 x float]]* %trans, i64 0, i64 0, i64 1
  %39 = load float* %38, align 4, !tbaa !14
  %40 = fmul float %27, %39
  %41 = getelementptr inbounds [3 x [3 x float]]* %trans, i64 0, i64 0, i64 2
  %42 = load float* %41, align 8, !tbaa !14
  %43 = fmul float %30, %42
  %44 = fsub float %40, %43
  %45 = fmul float %37, %44
  %46 = fsub float %35, %45
  %47 = getelementptr inbounds [3 x [3 x float]]* %trans, i64 0, i64 2, i64 0
  %48 = load float* %47, align 8, !tbaa !14
  %49 = fmul float %32, %39
  %50 = fmul float %25, %42
  %51 = fsub float %49, %50
  %52 = fmul float %48, %51
  %53 = fadd float %52, %46
  %54 = fcmp olt float %53, 0.000000e+00
  br i1 %54, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %21
  %55 = getelementptr inbounds [3 x [3 x float]]* %trans, i64 0, i64 2, i64 0
  %56 = fsub float -0.000000e+00, %48
  store float %56, float* %55, align 8, !tbaa !14
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv.next2 = phi i64 [ 1, %.preheader.preheader ], [ %indvars.iv.next, %._crit_edge ]
  %.phi.trans.insert = getelementptr inbounds [3 x [3 x float]]* %trans, i64 0, i64 2, i64 %indvars.iv.next2
  %.pre = load float* %.phi.trans.insert, align 4, !tbaa !14
  %57 = getelementptr inbounds [3 x [3 x float]]* %trans, i64 0, i64 2, i64 %indvars.iv.next2
  %58 = fsub float -0.000000e+00, %.pre
  store float %58, float* %57, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.next2, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %.loopexit, label %._crit_edge

.loopexit:                                        ; preds = %._crit_edge, %21
  call void @rotate_atoms(i32 %natoms, i32* null, [3 x float]* %x, [3 x float]* %4) #10
  %59 = icmp eq [3 x float]* %v, null
  br i1 %59, label %61, label %60

; <label>:60                                      ; preds = %.loopexit
  call void @rotate_atoms(i32 %natoms, i32* null, [3 x float]* %v, [3 x float]* %4) #10
  br label %61

; <label>:61                                      ; preds = %.loopexit, %60
  %62 = getelementptr inbounds [3 x float]* %xcm, i64 0, i64 0
  call void @add_xcm([3 x float]* %x, i32 %natoms, i32* null, float* %62) #10
  call void @llvm.lifetime.end(i64 36, i8* %1) #6
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #6

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #6

declare float @fabsf(float)

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

; Function Attrs: nounwind readnone
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #3

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { readnone }
attributes #9 = { nounwind optsize readnone }
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
!18 = !{!4, !4, i64 0}
!19 = !{!7, !7, i64 0}
!20 = !{!21, !15, i64 0}
!21 = !{!"", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !8, i64 16, !8, i64 18, !7, i64 20, !7, i64 24, !5, i64 28, !5, i64 37}
!22 = !{!21, !15, i64 4}
!23 = !{!24, !4, i64 8}
!24 = !{!"", !7, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !7, i64 40, !4, i64 48, !7, i64 56, !4, i64 64, !25, i64 72, !5, i64 1128, !4, i64 1272}
!25 = !{!"", !5, i64 0, !7, i64 1024, !4, i64 1032, !7, i64 1040, !4, i64 1048}
