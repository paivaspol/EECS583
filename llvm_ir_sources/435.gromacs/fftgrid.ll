; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/fftgrid.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_fftgrid = type { float*, float*, float*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }
%struct.t_complex = type { float, float }

@.str = private unnamed_addr constant [5 x i8] c"grid\00", align 1
@.str1 = private unnamed_addr constant [67 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/fftgrid.c\00", align 1
@.str2 = private unnamed_addr constant [10 x i8] c"grid->ptr\00", align 1
@.str3 = private unnamed_addr constant [16 x i8] c"grid->workspace\00", align 1
@.str4 = private unnamed_addr constant [57 x i8] c"gmxfft3D called, but GROMACS was compiled without FFTW!\0A\00", align 1
@.str5 = private unnamed_addr constant [5 x i8] c"ptr1\00", align 1
@.str6 = private unnamed_addr constant [5 x i8] c"ptr2\00", align 1
@.str7 = private unnamed_addr constant [5 x i8] c"ptr3\00", align 1
@.str8 = private unnamed_addr constant [11 x i8] c"grid[0][0]\00", align 1
@.str9 = private unnamed_addr constant [8 x i8] c"grid[i]\00", align 1
@.str10 = private unnamed_addr constant [43 x i8] c"Printing all non-zero real elements of %s\0A\00", align 1
@.str11 = private unnamed_addr constant [28 x i8] c"%s[%2d][%2d][%2d] = %12.5e\0A\00", align 1
@.str12 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str13 = private unnamed_addr constant [55 x i8] c"ATOM  %5d  Na   Na     1    %8.3f%8.3f%8.3f%6.2f%6.2f\0A\00", align 1
@.str14 = private unnamed_addr constant [46 x i8] c"Printing all non-zero complex elements of %s\0A\00", align 1
@.str15 = private unnamed_addr constant [39 x i8] c"%s[%2d][%2d][%2d] = %12.5e + i %12.5e\0A\00", align 1

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
define %struct.t_fftgrid* @mk_fftgrid(%struct.__sFILE* nocapture readnone %fp, i32 %bParallel, i32 %nx, i32 %ny, i32 %nz, i32 %bOptFFT) #4 {
  %1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str1, i64 0, i64 0), i32 63, i32 1, i32 64) #7
  %2 = bitcast i8* %1 to %struct.t_fftgrid*
  %3 = getelementptr inbounds i8* %1, i64 24
  %4 = bitcast i8* %3 to i32*
  store i32 %nx, i32* %4, align 4, !tbaa !18
  %5 = getelementptr inbounds i8* %1, i64 28
  %6 = bitcast i8* %5 to i32*
  store i32 %ny, i32* %6, align 4, !tbaa !20
  %7 = getelementptr inbounds i8* %1, i64 32
  %8 = bitcast i8* %7 to i32*
  store i32 %nz, i32* %8, align 4, !tbaa !21
  %9 = mul nsw i32 %ny, %nx
  %10 = mul nsw i32 %9, %nz
  %11 = getelementptr inbounds i8* %1, i64 56
  %12 = bitcast i8* %11 to i32*
  store i32 %10, i32* %12, align 4, !tbaa !22
  %13 = icmp eq i32 %bParallel, 0
  br i1 %13, label %29, label %14

; <label>:14                                      ; preds = %0
  %15 = sdiv i32 %nz, 2
  %16 = shl nsw i32 %15, 1
  %17 = add i32 %16, 2
  %18 = getelementptr inbounds i8* %1, i64 36
  %19 = bitcast i8* %18 to i32*
  store i32 %17, i32* %19, align 4, !tbaa !23
  %20 = add nsw i32 %15, 1
  %21 = getelementptr inbounds i8* %1, i64 40
  %22 = bitcast i8* %21 to i32*
  store i32 %20, i32* %22, align 4, !tbaa !24
  %23 = mul nsw i32 %17, %ny
  %24 = getelementptr inbounds i8* %1, i64 44
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 4, !tbaa !25
  %26 = mul nsw i32 %20, %nx
  %27 = getelementptr inbounds i8* %1, i64 48
  %28 = bitcast i8* %27 to i32*
  store i32 %26, i32* %28, align 4, !tbaa !26
  br label %41

; <label>:29                                      ; preds = %0
  %30 = getelementptr inbounds i8* %1, i64 36
  %31 = bitcast i8* %30 to i32*
  store i32 %nz, i32* %31, align 4, !tbaa !23
  %.pre = sdiv i32 %nz, 2
  %32 = add nsw i32 %.pre, 1
  %33 = getelementptr inbounds i8* %1, i64 40
  %34 = bitcast i8* %33 to i32*
  store i32 %32, i32* %34, align 4, !tbaa !24
  %35 = mul nsw i32 %nz, %ny
  %36 = getelementptr inbounds i8* %1, i64 44
  %37 = bitcast i8* %36 to i32*
  store i32 %35, i32* %37, align 4, !tbaa !25
  %38 = mul nsw i32 %32, %ny
  %39 = getelementptr inbounds i8* %1, i64 48
  %40 = bitcast i8* %39 to i32*
  store i32 %38, i32* %40, align 4, !tbaa !26
  br label %41

; <label>:41                                      ; preds = %29, %14
  %42 = phi i32 [ %32, %29 ], [ %20, %14 ]
  %43 = shl i32 %9, 1
  %44 = mul i32 %43, %42
  %45 = getelementptr inbounds i8* %1, i64 52
  %46 = bitcast i8* %45 to i32*
  store i32 %44, i32* %46, align 4, !tbaa !27
  %47 = tail call i8* @save_calloc(i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str1, i64 0, i64 0), i32 144, i32 %44, i32 4) #7
  %48 = bitcast i8* %1 to i8**
  store i8* %47, i8** %48, align 8, !tbaa !28
  ret %struct.t_fftgrid* %2
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @done_fftgrid(%struct.t_fftgrid* nocapture %grid) #4 {
  %1 = getelementptr inbounds %struct.t_fftgrid* %grid, i64 0, i32 0
  %2 = load float** %1, align 8, !tbaa !28
  %3 = icmp eq float* %2, null
  br i1 %3, label %6, label %4

; <label>:4                                       ; preds = %0
  %5 = bitcast float* %2 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str1, i64 0, i64 0), i32 152, i8* %5) #7
  store float* null, float** %1, align 8, !tbaa !28
  br label %6

; <label>:6                                       ; preds = %0, %4
  %7 = getelementptr inbounds %struct.t_fftgrid* %grid, i64 0, i32 1
  store float* null, float** %7, align 8, !tbaa !29
  %8 = getelementptr inbounds %struct.t_fftgrid* %grid, i64 0, i32 2
  %9 = load float** %8, align 8, !tbaa !30
  %10 = icmp eq float* %9, null
  br i1 %10, label %13, label %11

; <label>:11                                      ; preds = %6
  %12 = bitcast float* %9 to i8*
  tail call void @save_free(i8* getelementptr inbounds ([16 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str1, i64 0, i64 0), i32 158, i8* %12) #7
  store float* null, float** %8, align 8, !tbaa !30
  br label %13

; <label>:13                                      ; preds = %6, %11
  ret void
}

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @gmxfft3D(%struct.t_fftgrid* nocapture readnone %grid, i32 %dir, %struct.t_commrec* nocapture readnone %cr) #4 {
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([57 x i8]* @.str4, i64 0, i64 0)) #7
  ret void
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @clear_fftgrid(%struct.t_fftgrid* nocapture readonly %grid) #4 {
  %1 = getelementptr inbounds %struct.t_fftgrid* %grid, i64 0, i32 10
  %2 = load i32* %1, align 4, !tbaa !27
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %.lr.ph, label %10

.lr.ph:                                           ; preds = %0
  %4 = bitcast %struct.t_fftgrid* %grid to i8**
  %5 = load i8** %4, align 8, !tbaa !28
  %6 = add i32 %2, -1
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 2
  %9 = add nuw nsw i64 %8, 4
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 %9, i32 4, i1 false)
  br label %10

; <label>:10                                      ; preds = %.lr.ph, %0
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @unpack_fftgrid(%struct.t_fftgrid* nocapture readonly %grid, i32* nocapture %nx, i32* nocapture %ny, i32* nocapture %nz, i32* nocapture %la2, i32* nocapture %la12, i32 %bReal, float** nocapture %ptr) #4 {
  %1 = getelementptr inbounds %struct.t_fftgrid* %grid, i64 0, i32 3
  %2 = load i32* %1, align 4, !tbaa !18
  store i32 %2, i32* %nx, align 4, !tbaa !31
  %3 = getelementptr inbounds %struct.t_fftgrid* %grid, i64 0, i32 4
  %4 = load i32* %3, align 4, !tbaa !20
  store i32 %4, i32* %ny, align 4, !tbaa !31
  %5 = getelementptr inbounds %struct.t_fftgrid* %grid, i64 0, i32 5
  %6 = load i32* %5, align 4, !tbaa !21
  store i32 %6, i32* %nz, align 4, !tbaa !31
  %7 = icmp eq i32 %bReal, 0
  br i1 %7, label %12, label %8

; <label>:8                                       ; preds = %0
  %9 = getelementptr inbounds %struct.t_fftgrid* %grid, i64 0, i32 6
  %10 = load i32* %9, align 4, !tbaa !23
  store i32 %10, i32* %la2, align 4, !tbaa !31
  %11 = getelementptr inbounds %struct.t_fftgrid* %grid, i64 0, i32 8
  br label %16

; <label>:12                                      ; preds = %0
  %13 = getelementptr inbounds %struct.t_fftgrid* %grid, i64 0, i32 7
  %14 = load i32* %13, align 4, !tbaa !24
  store i32 %14, i32* %la2, align 4, !tbaa !31
  %15 = getelementptr inbounds %struct.t_fftgrid* %grid, i64 0, i32 9
  br label %16

; <label>:16                                      ; preds = %12, %8
  %storemerge.in = phi i32* [ %15, %12 ], [ %11, %8 ]
  %storemerge = load i32* %storemerge.in, align 4
  store i32 %storemerge, i32* %la12, align 4, !tbaa !31
  %17 = bitcast %struct.t_fftgrid* %grid to i64*
  %18 = load i64* %17, align 8, !tbaa !28
  %19 = bitcast float** %ptr to i64*
  store i64 %18, i64* %19, align 8, !tbaa !32
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define float*** @mk_rgrid(i32 %nx, i32 %ny, i32 %nz) #4 {
  %1 = mul nsw i32 %ny, %nx
  %2 = mul nsw i32 %1, %nz
  %3 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str1, i64 0, i64 0), i32 252, i32 %2, i32 4) #7
  %4 = bitcast i8* %3 to float*
  %5 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str1, i64 0, i64 0), i32 253, i32 %1, i32 8) #7
  %6 = bitcast i8* %5 to float**
  %7 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str1, i64 0, i64 0), i32 254, i32 %nx, i32 8) #7
  %8 = bitcast i8* %7 to float***
  %9 = icmp sgt i32 %nx, 0
  br i1 %9, label %.lr.ph9, label %._crit_edge10

.lr.ph9:                                          ; preds = %0
  %10 = icmp sgt i32 %ny, 0
  %11 = sext i32 %nz to i64
  %12 = add i32 %ny, -1
  %13 = zext i32 %12 to i64
  %14 = add nuw nsw i64 %13, 1
  %15 = mul i64 %14, %11
  %16 = add i32 %nx, -1
  br label %17

; <label>:17                                      ; preds = %30, %.lr.ph9
  %indvars.iv14 = phi i64 [ 0, %.lr.ph9 ], [ %indvars.iv.next15, %30 ]
  %n3.07 = phi i32 [ 0, %.lr.ph9 ], [ %n3.1.lcssa, %30 ]
  %n2.06 = phi i32 [ 0, %.lr.ph9 ], [ %n2.1.lcssa, %30 ]
  %18 = sext i32 %n2.06 to i64
  %19 = getelementptr inbounds float** %6, i64 %18
  %20 = getelementptr inbounds float*** %8, i64 %indvars.iv14
  store float** %19, float*** %20, align 8, !tbaa !32
  br i1 %10, label %.lr.ph, label %30

.lr.ph:                                           ; preds = %17
  %21 = sext i32 %n3.07 to i64
  %22 = add nsw i64 %14, %18
  br label %23

; <label>:23                                      ; preds = %23, %.lr.ph
  %indvars.iv12 = phi i64 [ %18, %.lr.ph ], [ %indvars.iv.next13, %23 ]
  %indvars.iv = phi i64 [ %21, %.lr.ph ], [ %indvars.iv.next, %23 ]
  %j.01 = phi i32 [ 0, %.lr.ph ], [ %26, %23 ]
  %24 = getelementptr inbounds float* %4, i64 %indvars.iv
  %25 = getelementptr inbounds float** %6, i64 %indvars.iv12
  store float* %24, float** %25, align 8, !tbaa !32
  %indvars.iv.next = add i64 %indvars.iv, %11
  %26 = add nuw nsw i32 %j.01, 1
  %indvars.iv.next13 = add nsw i64 %indvars.iv12, 1
  %exitcond = icmp eq i32 %j.01, %12
  br i1 %exitcond, label %._crit_edge, label %23

._crit_edge:                                      ; preds = %23
  %27 = add i64 %15, %21
  %28 = trunc i64 %22 to i32
  %29 = trunc i64 %27 to i32
  br label %30

; <label>:30                                      ; preds = %._crit_edge, %17
  %n3.1.lcssa = phi i32 [ %29, %._crit_edge ], [ %n3.07, %17 ]
  %n2.1.lcssa = phi i32 [ %28, %._crit_edge ], [ %n2.06, %17 ]
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  %lftr.wideiv = trunc i64 %indvars.iv14 to i32
  %exitcond16 = icmp eq i32 %lftr.wideiv, %16
  br i1 %exitcond16, label %._crit_edge10, label %17

._crit_edge10:                                    ; preds = %30, %0
  ret float*** %8
}

; Function Attrs: nounwind optsize ssp uwtable
define void @free_rgrid(float*** %grid, i32 %nx, i32 %ny) #4 {
  %1 = bitcast float*** %grid to i8***
  %2 = load i8*** %1, align 8, !tbaa !32
  %3 = load i8** %2, align 8, !tbaa !32
  tail call void @save_free(i8* getelementptr inbounds ([11 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str1, i64 0, i64 0), i32 271, i8* %3) #7
  %4 = icmp sgt i32 %nx, 0
  br i1 %4, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %5 = add i32 %nx, -1
  br label %6

; <label>:6                                       ; preds = %6, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %6 ]
  %7 = getelementptr inbounds float*** %grid, i64 %indvars.iv
  %8 = bitcast float*** %7 to i8**
  %9 = load i8** %8, align 8, !tbaa !32
  tail call void @save_free(i8* getelementptr inbounds ([8 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str1, i64 0, i64 0), i32 273, i8* %9) #7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %5
  br i1 %exitcond, label %._crit_edge, label %6

._crit_edge:                                      ; preds = %6, %0
  %10 = bitcast float*** %grid to i8*
  tail call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str1, i64 0, i64 0), i32 275, i8* %10) #7
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define float @print_rgrid(%struct.__sFILE* %fp, i8* %title, i32 %nx, i32 %ny, i32 %nz, float*** nocapture readonly %grid) #4 {
  %1 = icmp ne %struct.__sFILE* %fp, null
  br i1 %1, label %2, label %.preheader2

; <label>:2                                       ; preds = %0
  %3 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([43 x i8]* @.str10, i64 0, i64 0), i8* %title) #7
  br label %.preheader2

.preheader2:                                      ; preds = %2, %0
  %4 = icmp sgt i32 %nx, 0
  br i1 %4, label %.preheader1.lr.ph, label %._crit_edge11

.preheader1.lr.ph:                                ; preds = %.preheader2
  %5 = icmp sgt i32 %ny, 0
  %6 = icmp sgt i32 %nz, 0
  %7 = add i32 %nz, -1
  %8 = add i32 %ny, -1
  %9 = add i32 %nx, -1
  br label %.preheader1

.preheader1:                                      ; preds = %._crit_edge7, %.preheader1.lr.ph
  %indvars.iv17 = phi i64 [ 0, %.preheader1.lr.ph ], [ %indvars.iv.next18, %._crit_edge7 ]
  %gtot.010 = phi float [ 0.000000e+00, %.preheader1.lr.ph ], [ %gtot.1.lcssa, %._crit_edge7 ]
  br i1 %5, label %.preheader.lr.ph, label %._crit_edge7

.preheader.lr.ph:                                 ; preds = %.preheader1
  %10 = getelementptr inbounds float*** %grid, i64 %indvars.iv17
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge, %.preheader.lr.ph
  %indvars.iv13 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next14, %._crit_edge ]
  %gtot.16 = phi float [ %gtot.010, %.preheader.lr.ph ], [ %gtot.2.lcssa, %._crit_edge ]
  br i1 %6, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %25
  %indvars.iv = phi i64 [ %indvars.iv.next, %25 ], [ 0, %.preheader ]
  %gtot.24 = phi float [ %26, %25 ], [ %gtot.16, %.preheader ]
  %11 = load float*** %10, align 8, !tbaa !32
  %12 = getelementptr inbounds float** %11, i64 %indvars.iv13
  %13 = load float** %12, align 8, !tbaa !32
  %14 = getelementptr inbounds float* %13, i64 %indvars.iv
  %15 = load float* %14, align 4, !tbaa !14
  br i1 %1, label %16, label %25

; <label>:16                                      ; preds = %.lr.ph
  %fabsf = tail call float @fabsf(float %15) #9
  %17 = fpext float %fabsf to double
  %18 = fcmp ogt double %17, 1.200000e-38
  br i1 %18, label %19, label %25

; <label>:19                                      ; preds = %16
  %20 = fpext float %15 to double
  %21 = trunc i64 %indvars.iv to i32
  %22 = trunc i64 %indvars.iv13 to i32
  %23 = trunc i64 %indvars.iv17 to i32
  %24 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([28 x i8]* @.str11, i64 0, i64 0), i8* %title, i32 %23, i32 %22, i32 %21, double %20) #7
  br label %25

; <label>:25                                      ; preds = %19, %16, %.lr.ph
  %26 = fadd float %gtot.24, %15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %7
  br i1 %exitcond, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %25, %.preheader
  %gtot.2.lcssa = phi float [ %gtot.16, %.preheader ], [ %26, %25 ]
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  %lftr.wideiv15 = trunc i64 %indvars.iv13 to i32
  %exitcond16 = icmp eq i32 %lftr.wideiv15, %8
  br i1 %exitcond16, label %._crit_edge7, label %.preheader

._crit_edge7:                                     ; preds = %._crit_edge, %.preheader1
  %gtot.1.lcssa = phi float [ %gtot.010, %.preheader1 ], [ %gtot.2.lcssa, %._crit_edge ]
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1
  %lftr.wideiv19 = trunc i64 %indvars.iv17 to i32
  %exitcond20 = icmp eq i32 %lftr.wideiv19, %9
  br i1 %exitcond20, label %._crit_edge11, label %.preheader1

._crit_edge11:                                    ; preds = %._crit_edge7, %.preheader2
  %gtot.0.lcssa = phi float [ 0.000000e+00, %.preheader2 ], [ %gtot.1.lcssa, %._crit_edge7 ]
  ret float %gtot.0.lcssa
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #5

; Function Attrs: nounwind optsize ssp uwtable
define void @print_rgrid_pdb(i8* %fn, i32 %nx, i32 %ny, i32 %nz, float*** nocapture readonly %grid) #4 {
  %1 = tail call %struct.__sFILE* @ffopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str12, i64 0, i64 0)) #7
  %2 = icmp sgt i32 %nx, 0
  br i1 %2, label %.preheader1.lr.ph, label %._crit_edge10

.preheader1.lr.ph:                                ; preds = %0
  %3 = icmp sgt i32 %ny, 0
  %4 = icmp sgt i32 %nz, 0
  %5 = add i32 %nz, -1
  %6 = add i32 %ny, -1
  %7 = add i32 %nx, -1
  br label %.preheader1

.preheader1:                                      ; preds = %._crit_edge6, %.preheader1.lr.ph
  %indvars.iv15 = phi i64 [ 0, %.preheader1.lr.ph ], [ %indvars.iv.next16, %._crit_edge6 ]
  %n.08 = phi i32 [ 1, %.preheader1.lr.ph ], [ %n.1.lcssa, %._crit_edge6 ]
  br i1 %3, label %.preheader.lr.ph, label %.preheader1._crit_edge

.preheader1._crit_edge:                           ; preds = %.preheader1
  %.pre19 = trunc i64 %indvars.iv15 to i32
  br label %._crit_edge6

.preheader.lr.ph:                                 ; preds = %.preheader1
  %8 = getelementptr inbounds float*** %grid, i64 %indvars.iv15
  %9 = trunc i64 %indvars.iv15 to i32
  %10 = shl nsw i32 %9, 2
  %11 = sitofp i32 %10 to float
  %12 = fpext float %11 to double
  br label %.preheader

.preheader:                                       ; preds = %.preheader._crit_edge, %.preheader.lr.ph
  %indvars.iv11 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next12, %.preheader._crit_edge ]
  %n.14 = phi i32 [ %n.08, %.preheader.lr.ph ], [ %n.2.lcssa, %.preheader._crit_edge ]
  %13 = trunc i64 %indvars.iv11 to i32
  br i1 %4, label %.lr.ph, label %.preheader._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %14 = shl nsw i32 %13, 2
  %15 = sitofp i32 %14 to float
  %16 = fpext float %15 to double
  br label %17

; <label>:17                                      ; preds = %17, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %17 ]
  %n.22 = phi i32 [ %n.14, %.lr.ph ], [ %26, %17 ]
  %18 = load float*** %8, align 8, !tbaa !32
  %19 = getelementptr inbounds float** %18, i64 %indvars.iv11
  %20 = load float** %19, align 8, !tbaa !32
  %21 = getelementptr inbounds float* %20, i64 %indvars.iv
  %22 = load float* %21, align 4, !tbaa !14
  %23 = trunc i64 %indvars.iv to i32
  %24 = shl nsw i32 %23, 2
  %25 = sitofp i32 %24 to float
  %26 = add nsw i32 %n.22, 1
  %27 = fpext float %25 to double
  %28 = fpext float %22 to double
  %29 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([55 x i8]* @.str13, i64 0, i64 0), i32 %n.22, double %12, double %16, double %27, double 0.000000e+00, double %28) #7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i32 %23, %5
  br i1 %exitcond, label %._crit_edge, label %17

._crit_edge:                                      ; preds = %17
  %30 = add i32 %n.14, %nz
  br label %.preheader._crit_edge

.preheader._crit_edge:                            ; preds = %.preheader, %._crit_edge
  %n.2.lcssa = phi i32 [ %30, %._crit_edge ], [ %n.14, %.preheader ]
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  %exitcond14 = icmp eq i32 %13, %6
  br i1 %exitcond14, label %._crit_edge6, label %.preheader

._crit_edge6:                                     ; preds = %.preheader._crit_edge, %.preheader1._crit_edge
  %lftr.wideiv17.pre-phi = phi i32 [ %.pre19, %.preheader1._crit_edge ], [ %9, %.preheader._crit_edge ]
  %n.1.lcssa = phi i32 [ %n.08, %.preheader1._crit_edge ], [ %n.2.lcssa, %.preheader._crit_edge ]
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  %exitcond18 = icmp eq i32 %lftr.wideiv17.pre-phi, %7
  br i1 %exitcond18, label %._crit_edge10, label %.preheader1

._crit_edge10:                                    ; preds = %._crit_edge6, %0
  tail call void @ffclose(%struct.__sFILE* %1) #7
  ret void
}

; Function Attrs: optsize
declare %struct.__sFILE* @ffopen(i8*, i8*) #1

; Function Attrs: optsize
declare void @ffclose(%struct.__sFILE*) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @clear_rgrid(i32 %nx, i32 %ny, i32 %nz, float*** nocapture readonly %grid) #4 {
  %1 = icmp sgt i32 %nx, 0
  br i1 %1, label %.preheader1.lr.ph, label %._crit_edge6

.preheader1.lr.ph:                                ; preds = %0
  %2 = icmp sgt i32 %ny, 0
  %3 = icmp sgt i32 %nz, 0
  %4 = add i32 %nz, -1
  %5 = zext i32 %4 to i64
  %6 = shl nuw nsw i64 %5, 2
  %7 = add nuw nsw i64 %6, 4
  %8 = add i32 %ny, -1
  %9 = add i32 %nx, -1
  br label %.preheader1

.preheader1:                                      ; preds = %._crit_edge4, %.preheader1.lr.ph
  %indvars.iv7 = phi i64 [ 0, %.preheader1.lr.ph ], [ %indvars.iv.next8, %._crit_edge4 ]
  br i1 %2, label %.preheader.lr.ph, label %._crit_edge4

.preheader.lr.ph:                                 ; preds = %.preheader1
  %10 = getelementptr inbounds float*** %grid, i64 %indvars.iv7
  br label %.preheader

.preheader:                                       ; preds = %15, %.preheader.lr.ph
  %indvars.iv = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next, %15 ]
  br i1 %3, label %.lr.ph, label %15

.lr.ph:                                           ; preds = %.preheader
  %11 = load float*** %10, align 8, !tbaa !32
  %12 = getelementptr inbounds float** %11, i64 %indvars.iv
  %13 = bitcast float** %12 to i8**
  %14 = load i8** %13, align 8, !tbaa !32
  call void @llvm.memset.p0i8.i64(i8* %14, i8 0, i64 %7, i32 4, i1 false)
  br label %15

; <label>:15                                      ; preds = %.lr.ph, %.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %8
  br i1 %exitcond, label %._crit_edge4, label %.preheader

._crit_edge4:                                     ; preds = %15, %.preheader1
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  %lftr.wideiv9 = trunc i64 %indvars.iv7 to i32
  %exitcond10 = icmp eq i32 %lftr.wideiv9, %9
  br i1 %exitcond10, label %._crit_edge6, label %.preheader1

._crit_edge6:                                     ; preds = %._crit_edge4, %0
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @clear_cgrid(i32 %nx, i32 %ny, i32 %nz, %struct.t_complex*** nocapture readonly %grid) #4 {
  %1 = icmp sgt i32 %nx, 0
  br i1 %1, label %.preheader1.lr.ph, label %._crit_edge6

.preheader1.lr.ph:                                ; preds = %0
  %2 = icmp sgt i32 %ny, 0
  %3 = icmp sgt i32 %nz, 0
  %4 = add i32 %nz, -1
  %5 = add i32 %ny, -1
  %6 = add i32 %nx, -1
  br label %.preheader1

.preheader1:                                      ; preds = %._crit_edge4, %.preheader1.lr.ph
  %indvars.iv11 = phi i64 [ 0, %.preheader1.lr.ph ], [ %indvars.iv.next12, %._crit_edge4 ]
  br i1 %2, label %.preheader.lr.ph, label %._crit_edge4

.preheader.lr.ph:                                 ; preds = %.preheader1
  %7 = getelementptr inbounds %struct.t_complex*** %grid, i64 %indvars.iv11
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge, %.preheader.lr.ph
  %indvars.iv7 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next8, %._crit_edge ]
  br i1 %3, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader ]
  %8 = load %struct.t_complex*** %7, align 8, !tbaa !32
  %9 = getelementptr inbounds %struct.t_complex** %8, i64 %indvars.iv7
  %10 = load %struct.t_complex** %9, align 8, !tbaa !32
  %11 = getelementptr inbounds %struct.t_complex* %10, i64 %indvars.iv
  %12 = bitcast %struct.t_complex* %11 to i64*
  store i64 0, i64* %12, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %4
  br i1 %exitcond, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  %lftr.wideiv9 = trunc i64 %indvars.iv7 to i32
  %exitcond10 = icmp eq i32 %lftr.wideiv9, %5
  br i1 %exitcond10, label %._crit_edge4, label %.preheader

._crit_edge4:                                     ; preds = %._crit_edge, %.preheader1
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  %lftr.wideiv13 = trunc i64 %indvars.iv11 to i32
  %exitcond14 = icmp eq i32 %lftr.wideiv13, %6
  br i1 %exitcond14, label %._crit_edge6, label %.preheader1

._crit_edge6:                                     ; preds = %._crit_edge4, %0
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define %struct.t_complex*** @mk_cgrid(i32 %nx, i32 %ny, i32 %nz) #4 {
  %1 = mul nsw i32 %ny, %nx
  %2 = mul nsw i32 %1, %nz
  %3 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str1, i64 0, i64 0), i32 350, i32 %2, i32 8) #7
  %4 = bitcast i8* %3 to %struct.t_complex*
  %5 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str1, i64 0, i64 0), i32 351, i32 %1, i32 8) #7
  %6 = bitcast i8* %5 to %struct.t_complex**
  %7 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str7, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str1, i64 0, i64 0), i32 352, i32 %nx, i32 8) #7
  %8 = bitcast i8* %7 to %struct.t_complex***
  %9 = icmp sgt i32 %nx, 0
  br i1 %9, label %.lr.ph9, label %._crit_edge10

.lr.ph9:                                          ; preds = %0
  %10 = icmp sgt i32 %ny, 0
  %11 = sext i32 %nz to i64
  %12 = add i32 %ny, -1
  %13 = zext i32 %12 to i64
  %14 = add nuw nsw i64 %13, 1
  %15 = mul i64 %14, %11
  %16 = add i32 %nx, -1
  br label %17

; <label>:17                                      ; preds = %30, %.lr.ph9
  %indvars.iv14 = phi i64 [ 0, %.lr.ph9 ], [ %indvars.iv.next15, %30 ]
  %n3.07 = phi i32 [ 0, %.lr.ph9 ], [ %n3.1.lcssa, %30 ]
  %n2.06 = phi i32 [ 0, %.lr.ph9 ], [ %n2.1.lcssa, %30 ]
  %18 = sext i32 %n2.06 to i64
  %19 = getelementptr inbounds %struct.t_complex** %6, i64 %18
  %20 = getelementptr inbounds %struct.t_complex*** %8, i64 %indvars.iv14
  store %struct.t_complex** %19, %struct.t_complex*** %20, align 8, !tbaa !32
  br i1 %10, label %.lr.ph, label %30

.lr.ph:                                           ; preds = %17
  %21 = sext i32 %n3.07 to i64
  %22 = add nsw i64 %14, %18
  br label %23

; <label>:23                                      ; preds = %23, %.lr.ph
  %indvars.iv12 = phi i64 [ %18, %.lr.ph ], [ %indvars.iv.next13, %23 ]
  %indvars.iv = phi i64 [ %21, %.lr.ph ], [ %indvars.iv.next, %23 ]
  %j.01 = phi i32 [ 0, %.lr.ph ], [ %26, %23 ]
  %24 = getelementptr inbounds %struct.t_complex* %4, i64 %indvars.iv
  %25 = getelementptr inbounds %struct.t_complex** %6, i64 %indvars.iv12
  store %struct.t_complex* %24, %struct.t_complex** %25, align 8, !tbaa !32
  %indvars.iv.next = add i64 %indvars.iv, %11
  %26 = add nuw nsw i32 %j.01, 1
  %indvars.iv.next13 = add nsw i64 %indvars.iv12, 1
  %exitcond = icmp eq i32 %j.01, %12
  br i1 %exitcond, label %._crit_edge, label %23

._crit_edge:                                      ; preds = %23
  %27 = add i64 %15, %21
  %28 = trunc i64 %22 to i32
  %29 = trunc i64 %27 to i32
  br label %30

; <label>:30                                      ; preds = %._crit_edge, %17
  %n3.1.lcssa = phi i32 [ %29, %._crit_edge ], [ %n3.07, %17 ]
  %n2.1.lcssa = phi i32 [ %28, %._crit_edge ], [ %n2.06, %17 ]
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  %lftr.wideiv = trunc i64 %indvars.iv14 to i32
  %exitcond16 = icmp eq i32 %lftr.wideiv, %16
  br i1 %exitcond16, label %._crit_edge10, label %17

._crit_edge10:                                    ; preds = %30, %0
  ret %struct.t_complex*** %8
}

; Function Attrs: nounwind optsize ssp uwtable
define void @free_cgrid(%struct.t_complex*** %grid, i32 %nx, i32 %ny) #4 {
  %1 = bitcast %struct.t_complex*** %grid to i8***
  %2 = load i8*** %1, align 8, !tbaa !32
  %3 = load i8** %2, align 8, !tbaa !32
  tail call void @save_free(i8* getelementptr inbounds ([11 x i8]* @.str8, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str1, i64 0, i64 0), i32 369, i8* %3) #7
  %4 = icmp sgt i32 %nx, 0
  br i1 %4, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %5 = add i32 %nx, -1
  br label %6

; <label>:6                                       ; preds = %6, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %6 ]
  %7 = getelementptr inbounds %struct.t_complex*** %grid, i64 %indvars.iv
  %8 = bitcast %struct.t_complex*** %7 to i8**
  %9 = load i8** %8, align 8, !tbaa !32
  tail call void @save_free(i8* getelementptr inbounds ([8 x i8]* @.str9, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str1, i64 0, i64 0), i32 371, i8* %9) #7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %5
  br i1 %exitcond, label %._crit_edge, label %6

._crit_edge:                                      ; preds = %6, %0
  %10 = bitcast %struct.t_complex*** %grid to i8*
  tail call void @save_free(i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([67 x i8]* @.str1, i64 0, i64 0), i32 372, i8* %10) #7
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define <2 x float> @print_cgrid(%struct.__sFILE* %fp, i8* %title, i32 %nx, i32 %ny, i32 %nz, %struct.t_complex*** nocapture readonly %grid) #4 {
  %1 = icmp ne %struct.__sFILE* %fp, null
  br i1 %1, label %2, label %.preheader4

; <label>:2                                       ; preds = %0
  %3 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([46 x i8]* @.str14, i64 0, i64 0), i8* %title) #7
  br label %.preheader4

.preheader4:                                      ; preds = %2, %0
  %4 = icmp sgt i32 %nx, 0
  br i1 %4, label %.preheader3.lr.ph, label %._crit_edge13

.preheader3.lr.ph:                                ; preds = %.preheader4
  %5 = icmp sgt i32 %ny, 0
  %6 = icmp sgt i32 %nz, 0
  %7 = add i32 %nz, -1
  %8 = add i32 %ny, -1
  %9 = add i32 %nx, -1
  br label %.preheader3

.preheader3:                                      ; preds = %._crit_edge9, %.preheader3.lr.ph
  %indvars.iv19 = phi i64 [ 0, %.preheader3.lr.ph ], [ %indvars.iv.next20, %._crit_edge9 ]
  %gtot.sroa.0.011 = phi <2 x float> [ zeroinitializer, %.preheader3.lr.ph ], [ %gtot.sroa.0.1.lcssa, %._crit_edge9 ]
  br i1 %5, label %.preheader.lr.ph, label %._crit_edge9

.preheader.lr.ph:                                 ; preds = %.preheader3
  %10 = getelementptr inbounds %struct.t_complex*** %grid, i64 %indvars.iv19
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge, %.preheader.lr.ph
  %indvars.iv15 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next16, %._crit_edge ]
  %gtot.sroa.0.18 = phi <2 x float> [ %gtot.sroa.0.011, %.preheader.lr.ph ], [ %gtot.sroa.0.2.lcssa, %._crit_edge ]
  br i1 %6, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %30
  %indvars.iv = phi i64 [ %indvars.iv.next, %30 ], [ 0, %.preheader ]
  %gtot.sroa.0.26 = phi <2 x float> [ %36, %30 ], [ %gtot.sroa.0.18, %.preheader ]
  %11 = load %struct.t_complex*** %10, align 8, !tbaa !32
  %12 = getelementptr inbounds %struct.t_complex** %11, i64 %indvars.iv15
  %13 = load %struct.t_complex** %12, align 8, !tbaa !32
  %14 = getelementptr inbounds %struct.t_complex* %13, i64 %indvars.iv
  %15 = bitcast %struct.t_complex* %14 to <2 x float>*
  %16 = load <2 x float>* %15, align 4
  %17 = extractelement <2 x float> %16, i32 0
  br i1 %1, label %18, label %._crit_edge23

._crit_edge23:                                    ; preds = %.lr.ph
  %.pre27 = extractelement <2 x float> %16, i32 1
  br label %30

; <label>:18                                      ; preds = %.lr.ph
  %19 = fpext float %17 to double
  %fabsf = tail call float @fabsf(float %17) #9
  %20 = fpext float %fabsf to double
  %21 = fcmp ogt double %20, 1.200000e-38
  %.pre = extractelement <2 x float> %16, i32 1
  br i1 %21, label %._crit_edge24, label %22

; <label>:22                                      ; preds = %18
  %fabsf2 = tail call float @fabsf(float %.pre) #9
  %23 = fpext float %fabsf2 to double
  %24 = fcmp ogt double %23, 1.200000e-38
  br i1 %24, label %._crit_edge24, label %30

._crit_edge24:                                    ; preds = %18, %22
  %25 = fpext float %.pre to double
  %26 = trunc i64 %indvars.iv to i32
  %27 = trunc i64 %indvars.iv15 to i32
  %28 = trunc i64 %indvars.iv19 to i32
  %29 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([39 x i8]* @.str15, i64 0, i64 0), i8* %title, i32 %28, i32 %27, i32 %26, double %19, double %25) #7
  br label %30

; <label>:30                                      ; preds = %._crit_edge23, %._crit_edge24, %22
  %.pre-phi28 = phi float [ %.pre27, %._crit_edge23 ], [ %.pre, %._crit_edge24 ], [ %.pre, %22 ]
  %31 = extractelement <2 x float> %gtot.sroa.0.26, i32 0
  %32 = fadd float %31, %17
  %33 = extractelement <2 x float> %gtot.sroa.0.26, i32 1
  %34 = fadd float %33, %.pre-phi28
  %35 = insertelement <2 x float> undef, float %32, i32 0
  %36 = insertelement <2 x float> %35, float %34, i32 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %7
  br i1 %exitcond, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %30, %.preheader
  %gtot.sroa.0.2.lcssa = phi <2 x float> [ %gtot.sroa.0.18, %.preheader ], [ %36, %30 ]
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  %lftr.wideiv17 = trunc i64 %indvars.iv15 to i32
  %exitcond18 = icmp eq i32 %lftr.wideiv17, %8
  br i1 %exitcond18, label %._crit_edge9, label %.preheader

._crit_edge9:                                     ; preds = %._crit_edge, %.preheader3
  %gtot.sroa.0.1.lcssa = phi <2 x float> [ %gtot.sroa.0.011, %.preheader3 ], [ %gtot.sroa.0.2.lcssa, %._crit_edge ]
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  %lftr.wideiv21 = trunc i64 %indvars.iv19 to i32
  %exitcond22 = icmp eq i32 %lftr.wideiv21, %9
  br i1 %exitcond22, label %._crit_edge13, label %.preheader3

._crit_edge13:                                    ; preds = %._crit_edge9, %.preheader4
  %gtot.sroa.0.0.lcssa = phi <2 x float> [ zeroinitializer, %.preheader4 ], [ %gtot.sroa.0.1.lcssa, %._crit_edge9 ]
  ret <2 x float> %gtot.sroa.0.0.lcssa
}

; Function Attrs: nounwind optsize ssp uwtable
define void @print_cgrid_pdb(i8* %fn, i32 %nx, i32 %ny, i32 %nz, %struct.t_complex*** nocapture readonly %grid) #4 {
  %1 = tail call %struct.__sFILE* @ffopen(i8* %fn, i8* getelementptr inbounds ([2 x i8]* @.str12, i64 0, i64 0)) #7
  %2 = icmp sgt i32 %nx, 0
  br i1 %2, label %.preheader1.lr.ph, label %._crit_edge10

.preheader1.lr.ph:                                ; preds = %0
  %3 = icmp sgt i32 %ny, 0
  %4 = icmp sgt i32 %nz, 0
  %5 = add i32 %nz, -1
  %6 = add i32 %ny, -1
  %7 = add i32 %nx, -1
  br label %.preheader1

.preheader1:                                      ; preds = %._crit_edge6, %.preheader1.lr.ph
  %indvars.iv15 = phi i64 [ 0, %.preheader1.lr.ph ], [ %indvars.iv.next16, %._crit_edge6 ]
  %n.08 = phi i32 [ 1, %.preheader1.lr.ph ], [ %n.1.lcssa, %._crit_edge6 ]
  br i1 %3, label %.preheader.lr.ph, label %.preheader1._crit_edge

.preheader1._crit_edge:                           ; preds = %.preheader1
  %.pre21 = trunc i64 %indvars.iv15 to i32
  br label %._crit_edge6

.preheader.lr.ph:                                 ; preds = %.preheader1
  %8 = getelementptr inbounds %struct.t_complex*** %grid, i64 %indvars.iv15
  %9 = trunc i64 %indvars.iv15 to i32
  %10 = shl nsw i32 %9, 2
  %11 = sitofp i32 %10 to float
  %12 = fpext float %11 to double
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge, %.preheader.lr.ph
  %indvars.iv11 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next12, %._crit_edge ]
  %n.14 = phi i32 [ %n.08, %.preheader.lr.ph ], [ %n.2.lcssa, %._crit_edge ]
  %13 = trunc i64 %indvars.iv11 to i32
  br i1 %4, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %14 = shl nsw i32 %13, 2
  %15 = sitofp i32 %14 to float
  %16 = fpext float %15 to double
  br label %17

; <label>:17                                      ; preds = %33, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %33 ]
  %n.22 = phi i32 [ %n.14, %.lr.ph ], [ %n.3, %33 ]
  %18 = load %struct.t_complex*** %8, align 8, !tbaa !32
  %19 = getelementptr inbounds %struct.t_complex** %18, i64 %indvars.iv11
  %20 = load %struct.t_complex** %19, align 8, !tbaa !32
  %21 = getelementptr inbounds %struct.t_complex* %20, i64 %indvars.iv, i32 0
  %22 = load float* %21, align 4, !tbaa !33
  %fabsf = tail call float @fabsf(float %22) #9
  %23 = fpext float %fabsf to double
  %24 = fcmp ogt double %23, 1.200000e-38
  br i1 %24, label %25, label %._crit_edge19

._crit_edge19:                                    ; preds = %17
  %.pre = trunc i64 %indvars.iv to i32
  br label %33

; <label>:25                                      ; preds = %17
  %26 = fpext float %22 to double
  %27 = trunc i64 %indvars.iv to i32
  %28 = shl nsw i32 %27, 2
  %29 = sitofp i32 %28 to float
  %30 = add nsw i32 %n.22, 1
  %31 = fpext float %29 to double
  %32 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %1, i8* getelementptr inbounds ([55 x i8]* @.str13, i64 0, i64 0), i32 %n.22, double %12, double %16, double %31, double 0.000000e+00, double %26) #7
  br label %33

; <label>:33                                      ; preds = %._crit_edge19, %25
  %lftr.wideiv.pre-phi = phi i32 [ %.pre, %._crit_edge19 ], [ %27, %25 ]
  %n.3 = phi i32 [ %n.22, %._crit_edge19 ], [ %30, %25 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i32 %lftr.wideiv.pre-phi, %5
  br i1 %exitcond, label %._crit_edge, label %17

._crit_edge:                                      ; preds = %33, %.preheader
  %n.2.lcssa = phi i32 [ %n.14, %.preheader ], [ %n.3, %33 ]
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  %exitcond14 = icmp eq i32 %13, %6
  br i1 %exitcond14, label %._crit_edge6, label %.preheader

._crit_edge6:                                     ; preds = %._crit_edge, %.preheader1._crit_edge
  %lftr.wideiv17.pre-phi = phi i32 [ %.pre21, %.preheader1._crit_edge ], [ %9, %._crit_edge ]
  %n.1.lcssa = phi i32 [ %n.08, %.preheader1._crit_edge ], [ %n.2.lcssa, %._crit_edge ]
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  %exitcond18 = icmp eq i32 %lftr.wideiv17.pre-phi, %7
  br i1 %exitcond18, label %._crit_edge10, label %.preheader1

._crit_edge10:                                    ; preds = %._crit_edge6, %0
  tail call void @ffclose(%struct.__sFILE* %1) #7
  ret void
}

declare float @fabsf(float)

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #6

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { readnone }
attributes #9 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }

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
!19 = !{!"", !4, i64 0, !4, i64 8, !4, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56}
!20 = !{!19, !7, i64 28}
!21 = !{!19, !7, i64 32}
!22 = !{!19, !7, i64 56}
!23 = !{!19, !7, i64 36}
!24 = !{!19, !7, i64 40}
!25 = !{!19, !7, i64 44}
!26 = !{!19, !7, i64 48}
!27 = !{!19, !7, i64 52}
!28 = !{!19, !4, i64 0}
!29 = !{!19, !4, i64 8}
!30 = !{!19, !4, i64 16}
!31 = !{!7, !7, i64 0}
!32 = !{!4, !4, i64 0}
!33 = !{!34, !15, i64 0}
!34 = !{!"", !15, i64 0, !15, i64 4}
