; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/3dview.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_3dview = type { [3 x [3 x float]], [4 x float], [4 x float], [4 x [4 x float]], [4 x [4 x float]], float, float }

@.str = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str2 = private unnamed_addr constant [7 x i8] c"%10.5f\00", align 1
@.str4 = private unnamed_addr constant [24 x i8] c"Error: invalid axis: %d\00", align 1
@.str5 = private unnamed_addr constant [46 x i8] c"Error: Zero Length Vector - No View Specified\00", align 1
@rotate_3d.RotP = internal global [3 x [4 x [4 x float]]] zeroinitializer, align 16
@rotate_3d.RotM = internal global [3 x [4 x [4 x float]]] zeroinitializer, align 16
@.str6 = private unnamed_addr constant [5 x i8] c"view\00", align 1
@.str7 = private unnamed_addr constant [66 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/3dview.c\00", align 1

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

; Function Attrs: nounwind optsize ssp uwtable
define void @m4_op([4 x float]* nocapture readonly %m, float* nocapture readonly %x, float* nocapture %v) #3 {
  %1 = getelementptr inbounds float* %x, i64 1
  %2 = getelementptr inbounds float* %x, i64 2
  br label %3

; <label>:3                                       ; preds = %3, %0
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next, %3 ]
  %4 = getelementptr inbounds [4 x float]* %m, i64 0, i64 %indvars.iv
  %5 = load float* %4, align 4, !tbaa !14
  %6 = load float* %x, align 4, !tbaa !14
  %7 = fmul float %5, %6
  %8 = getelementptr inbounds [4 x float]* %m, i64 1, i64 %indvars.iv
  %9 = load float* %8, align 4, !tbaa !14
  %10 = load float* %1, align 4, !tbaa !14
  %11 = fmul float %9, %10
  %12 = fadd float %7, %11
  %13 = getelementptr inbounds [4 x float]* %m, i64 2, i64 %indvars.iv
  %14 = load float* %13, align 4, !tbaa !14
  %15 = load float* %2, align 4, !tbaa !14
  %16 = fmul float %14, %15
  %17 = fadd float %12, %16
  %18 = getelementptr inbounds [4 x float]* %m, i64 3, i64 %indvars.iv
  %19 = load float* %18, align 4, !tbaa !14
  %20 = fadd float %19, %17
  %21 = getelementptr inbounds float* %v, i64 %indvars.iv
  store float %20, float* %21, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond, label %22, label %3

; <label>:22                                      ; preds = %3
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @unity_m4([4 x float]* nocapture %m) #3 {
  br label %.preheader

.preheader:                                       ; preds = %6, %0
  %indvars.iv3 = phi i64 [ 0, %0 ], [ %indvars.iv.next4, %6 ]
  br label %1

; <label>:1                                       ; preds = %1, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %1 ]
  %2 = trunc i64 %indvars.iv to i32
  %3 = trunc i64 %indvars.iv3 to i32
  %4 = icmp eq i32 %3, %2
  %5 = getelementptr inbounds [4 x float]* %m, i64 %indvars.iv3, i64 %indvars.iv
  %. = select i1 %4, float 1.000000e+00, float 0.000000e+00
  store float %., float* %5, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond, label %6, label %1

; <label>:6                                       ; preds = %1
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1
  %exitcond5 = icmp eq i64 %indvars.iv.next4, 4
  br i1 %exitcond5, label %7, label %.preheader

; <label>:7                                       ; preds = %6
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @print_m4(%struct.__sFILE* %fp, i8* %s, [4 x float]* nocapture readonly %A) #3 {
  %1 = icmp eq %struct.__sFILE* %fp, null
  br i1 %1, label %.loopexit, label %2

; <label>:2                                       ; preds = %0
  %3 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0), i8* %s) #7
  br label %4

; <label>:4                                       ; preds = %10, %2
  %indvars.iv6 = phi i64 [ 0, %2 ], [ %indvars.iv.next7, %10 ]
  %fputc = tail call i32 @fputc(i32 9, %struct.__sFILE* %fp)
  br label %5

; <label>:5                                       ; preds = %5, %4
  %indvars.iv = phi i64 [ 0, %4 ], [ %indvars.iv.next, %5 ]
  %6 = getelementptr inbounds [4 x float]* %A, i64 %indvars.iv6, i64 %indvars.iv
  %7 = load float* %6, align 4, !tbaa !14
  %8 = fpext float %7 to double
  %9 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), double %8) #7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond, label %10, label %5

; <label>:10                                      ; preds = %5
  %fputc3 = tail call i32 @fputc(i32 10, %struct.__sFILE* %fp)
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  %exitcond8 = icmp eq i64 %indvars.iv.next7, 4
  br i1 %exitcond8, label %.loopexit, label %4

.loopexit:                                        ; preds = %10, %0
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #4

; Function Attrs: nounwind optsize ssp uwtable
define void @print_v4(%struct.__sFILE* %fp, i8* %s, i32 %dim, float* nocapture readonly %a) #3 {
  %1 = icmp eq %struct.__sFILE* %fp, null
  br i1 %1, label %11, label %2

; <label>:2                                       ; preds = %0
  %3 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([5 x i8]* @.str, i64 0, i64 0), i8* %s) #7
  %4 = icmp sgt i32 %dim, 0
  br i1 %4, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %2
  %5 = add i32 %dim, -1
  br label %6

; <label>:6                                       ; preds = %6, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %6 ]
  %7 = getelementptr inbounds float* %a, i64 %indvars.iv
  %8 = load float* %7, align 4, !tbaa !14
  %9 = fpext float %8 to double
  %10 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([7 x i8]* @.str2, i64 0, i64 0), double %9) #7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %5
  br i1 %exitcond, label %._crit_edge, label %6

._crit_edge:                                      ; preds = %6, %2
  %fputc = tail call i32 @fputc(i32 10, %struct.__sFILE* %fp)
  br label %11

; <label>:11                                      ; preds = %0, %._crit_edge
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @mult_matrix([4 x float]* nocapture %A, [4 x float]* nocapture readonly %B, [4 x float]* nocapture readonly %C) #3 {
  br label %.preheader

.preheader:                                       ; preds = %12, %0
  %indvars.iv8 = phi i64 [ 0, %0 ], [ %indvars.iv.next9, %12 ]
  br label %1

; <label>:1                                       ; preds = %11, %.preheader
  %indvars.iv4 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next5, %11 ]
  %2 = getelementptr inbounds [4 x float]* %A, i64 %indvars.iv8, i64 %indvars.iv4
  store float 0.000000e+00, float* %2, align 4, !tbaa !14
  br label %3

; <label>:3                                       ; preds = %3, %1
  %4 = phi float [ 0.000000e+00, %1 ], [ %10, %3 ]
  %indvars.iv = phi i64 [ 0, %1 ], [ %indvars.iv.next, %3 ]
  %5 = getelementptr inbounds [4 x float]* %B, i64 %indvars.iv8, i64 %indvars.iv
  %6 = load float* %5, align 4, !tbaa !14
  %7 = getelementptr inbounds [4 x float]* %C, i64 %indvars.iv, i64 %indvars.iv4
  %8 = load float* %7, align 4, !tbaa !14
  %9 = fmul float %6, %8
  %10 = fadd float %4, %9
  store float %10, float* %2, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond, label %11, label %3

; <label>:11                                      ; preds = %3
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1
  %exitcond6 = icmp eq i64 %indvars.iv.next5, 4
  br i1 %exitcond6, label %12, label %1

; <label>:12                                      ; preds = %11
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1
  %exitcond10 = icmp eq i64 %indvars.iv.next9, 4
  br i1 %exitcond10, label %13, label %.preheader

; <label>:13                                      ; preds = %12
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @rotate(i32 %axis, float %angle, [4 x float]* nocapture %A) #3 {
  br label %.preheader.i

.preheader.i:                                     ; preds = %6, %0
  %indvars.iv3.i = phi i64 [ 0, %0 ], [ %indvars.iv.next4.i, %6 ]
  %1 = trunc i64 %indvars.iv3.i to i32
  br label %2

; <label>:2                                       ; preds = %2, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %2 ]
  %3 = trunc i64 %indvars.iv.i to i32
  %4 = icmp eq i32 %1, %3
  %5 = getelementptr inbounds [4 x float]* %A, i64 %indvars.iv3.i, i64 %indvars.iv.i
  %..i = select i1 %4, float 1.000000e+00, float 0.000000e+00
  store float %..i, float* %5, align 4, !tbaa !14
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, 4
  br i1 %exitcond.i, label %6, label %2

; <label>:6                                       ; preds = %2
  %indvars.iv.next4.i = add nuw nsw i64 %indvars.iv3.i, 1
  %exitcond5.i = icmp eq i64 %indvars.iv.next4.i, 4
  br i1 %exitcond5.i, label %unity_m4.exit, label %.preheader.i

unity_m4.exit:                                    ; preds = %6
  switch i32 %axis, label %40 [
    i32 0, label %7
    i32 1, label %18
    i32 2, label %29
  ]

; <label>:7                                       ; preds = %unity_m4.exit
  %8 = fpext float %angle to double
  %9 = tail call double @cos(double %8) #8
  %10 = fptrunc double %9 to float
  %11 = getelementptr inbounds [4 x float]* %A, i64 1, i64 1
  store float %10, float* %11, align 4, !tbaa !14
  %12 = tail call double @sin(double %8) #8
  %13 = fptrunc double %12 to float
  %14 = fsub float -0.000000e+00, %13
  %15 = getelementptr inbounds [4 x float]* %A, i64 1, i64 2
  store float %14, float* %15, align 4, !tbaa !14
  %16 = getelementptr inbounds [4 x float]* %A, i64 2, i64 1
  store float %13, float* %16, align 4, !tbaa !14
  %17 = getelementptr inbounds [4 x float]* %A, i64 2, i64 2
  store float %10, float* %17, align 4, !tbaa !14
  br label %41

; <label>:18                                      ; preds = %unity_m4.exit
  %19 = fpext float %angle to double
  %20 = tail call double @cos(double %19) #8
  %21 = fptrunc double %20 to float
  %22 = getelementptr inbounds [4 x float]* %A, i64 0, i64 0
  store float %21, float* %22, align 4, !tbaa !14
  %23 = tail call double @sin(double %19) #8
  %24 = fptrunc double %23 to float
  %25 = getelementptr inbounds [4 x float]* %A, i64 0, i64 2
  store float %24, float* %25, align 4, !tbaa !14
  %26 = fsub float -0.000000e+00, %24
  %27 = getelementptr inbounds [4 x float]* %A, i64 2, i64 0
  store float %26, float* %27, align 4, !tbaa !14
  %28 = getelementptr inbounds [4 x float]* %A, i64 2, i64 2
  store float %21, float* %28, align 4, !tbaa !14
  br label %41

; <label>:29                                      ; preds = %unity_m4.exit
  %30 = fpext float %angle to double
  %31 = tail call double @cos(double %30) #8
  %32 = fptrunc double %31 to float
  %33 = getelementptr inbounds [4 x float]* %A, i64 0, i64 0
  store float %32, float* %33, align 4, !tbaa !14
  %34 = tail call double @sin(double %30) #8
  %35 = fptrunc double %34 to float
  %36 = fsub float -0.000000e+00, %35
  %37 = getelementptr inbounds [4 x float]* %A, i64 0, i64 1
  store float %36, float* %37, align 4, !tbaa !14
  %38 = getelementptr inbounds [4 x float]* %A, i64 1, i64 0
  store float %35, float* %38, align 4, !tbaa !14
  %39 = getelementptr inbounds [4 x float]* %A, i64 1, i64 1
  store float %32, float* %39, align 4, !tbaa !14
  br label %41

; <label>:40                                      ; preds = %unity_m4.exit
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([24 x i8]* @.str4, i64 0, i64 0), i32 %axis) #7
  br label %41

; <label>:41                                      ; preds = %40, %29, %18, %7
  ret void
}

; Function Attrs: nounwind optsize readnone
declare double @cos(double) #5

; Function Attrs: nounwind optsize readnone
declare double @sin(double) #5

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @translate(float %tx, float %ty, float %tz, [4 x float]* nocapture %A) #3 {
  br label %.preheader.i

.preheader.i:                                     ; preds = %6, %0
  %indvars.iv3.i = phi i64 [ 0, %0 ], [ %indvars.iv.next4.i, %6 ]
  %1 = trunc i64 %indvars.iv3.i to i32
  br label %2

; <label>:2                                       ; preds = %2, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %2 ]
  %3 = trunc i64 %indvars.iv.i to i32
  %4 = icmp eq i32 %1, %3
  %5 = getelementptr inbounds [4 x float]* %A, i64 %indvars.iv3.i, i64 %indvars.iv.i
  %..i = select i1 %4, float 1.000000e+00, float 0.000000e+00
  store float %..i, float* %5, align 4, !tbaa !14
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, 4
  br i1 %exitcond.i, label %6, label %2

; <label>:6                                       ; preds = %2
  %indvars.iv.next4.i = add nuw nsw i64 %indvars.iv3.i, 1
  %exitcond5.i = icmp eq i64 %indvars.iv.next4.i, 4
  br i1 %exitcond5.i, label %unity_m4.exit, label %.preheader.i

unity_m4.exit:                                    ; preds = %6
  %7 = getelementptr inbounds [4 x float]* %A, i64 3, i64 0
  store float %tx, float* %7, align 4, !tbaa !14
  %8 = getelementptr inbounds [4 x float]* %A, i64 3, i64 1
  store float %ty, float* %8, align 4, !tbaa !14
  %9 = getelementptr inbounds [4 x float]* %A, i64 3, i64 2
  store float %tz, float* %9, align 4, !tbaa !14
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @calculate_view(%struct.t_3dview* nocapture %view) #3 {
  %To = alloca [4 x [4 x float]], align 16
  %Te = alloca [4 x [4 x float]], align 16
  %T1 = alloca [4 x [4 x float]], align 16
  %T2 = alloca [4 x [4 x float]], align 16
  %T3 = alloca [4 x [4 x float]], align 16
  %T4 = alloca [4 x [4 x float]], align 16
  %T5 = alloca [4 x [4 x float]], align 16
  %N1 = alloca [4 x [4 x float]], align 16
  %D1 = alloca [4 x [4 x float]], align 16
  %D2 = alloca [4 x [4 x float]], align 16
  %D3 = alloca [4 x [4 x float]], align 16
  %D4 = alloca [4 x [4 x float]], align 16
  %D5 = alloca [4 x [4 x float]], align 16
  %1 = bitcast [4 x [4 x float]]* %To to i8*
  call void @llvm.lifetime.start(i64 64, i8* %1) #6
  %2 = bitcast [4 x [4 x float]]* %Te to i8*
  call void @llvm.lifetime.start(i64 64, i8* %2) #6
  %3 = bitcast [4 x [4 x float]]* %T1 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %3) #6
  %4 = bitcast [4 x [4 x float]]* %T2 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %4) #6
  %5 = bitcast [4 x [4 x float]]* %T3 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %5) #6
  %6 = bitcast [4 x [4 x float]]* %T4 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %6) #6
  %7 = bitcast [4 x [4 x float]]* %T5 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %7) #6
  %8 = bitcast [4 x [4 x float]]* %N1 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %8) #6
  %9 = bitcast [4 x [4 x float]]* %D1 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %9) #6
  %10 = bitcast [4 x [4 x float]]* %D2 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %10) #6
  %11 = bitcast [4 x [4 x float]]* %D3 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %11) #6
  %12 = bitcast [4 x [4 x float]]* %D4 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %12) #6
  %13 = bitcast [4 x [4 x float]]* %D5 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %13) #6
  %14 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 1, i64 0
  %15 = load float* %14, align 4, !tbaa !14
  %16 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 1, i64 1
  %17 = load float* %16, align 4, !tbaa !14
  %18 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 1, i64 2
  %19 = load float* %18, align 4, !tbaa !14
  %20 = fmul float %15, %15
  %21 = fmul float %17, %17
  %22 = fadd float %20, %21
  %23 = fmul float %19, %19
  %24 = fadd float %22, %23
  %sqrtf = tail call float @sqrtf(float %24) #5
  %sqrtf1 = tail call float @sqrtf(float %22) #5
  %25 = fpext float %sqrtf to double
  %26 = fcmp olt double %25, 1.000000e-06
  br i1 %26, label %27, label %28

; <label>:27                                      ; preds = %0
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([46 x i8]* @.str5, i64 0, i64 0)) #7
  br label %28

; <label>:28                                      ; preds = %27, %0
  %29 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 2, i64 0
  %30 = load float* %29, align 4, !tbaa !14
  %31 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 2, i64 1
  %32 = load float* %31, align 4, !tbaa !14
  %33 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 2, i64 2
  %34 = load float* %33, align 4, !tbaa !14
  %35 = fsub float -0.000000e+00, %34
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %41, %28
  %indvars.iv3.i.i = phi i64 [ 0, %28 ], [ %indvars.iv.next4.i.i, %41 ]
  %36 = trunc i64 %indvars.iv3.i.i to i32
  br label %37

; <label>:37                                      ; preds = %37, %.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader.i.i ], [ %indvars.iv.next.i.i, %37 ]
  %38 = trunc i64 %indvars.iv.i.i to i32
  %39 = icmp eq i32 %36, %38
  %40 = getelementptr inbounds [4 x [4 x float]]* %To, i64 0, i64 %indvars.iv3.i.i, i64 %indvars.iv.i.i
  %..i.i = select i1 %39, float 1.000000e+00, float 0.000000e+00
  store float %..i.i, float* %40, align 4, !tbaa !14
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond.i.i = icmp eq i64 %indvars.iv.next.i.i, 4
  br i1 %exitcond.i.i, label %41, label %37

; <label>:41                                      ; preds = %37
  %indvars.iv.next4.i.i = add nuw nsw i64 %indvars.iv3.i.i, 1
  %exitcond5.i.i = icmp eq i64 %indvars.iv.next4.i.i, 4
  br i1 %exitcond5.i.i, label %translate.exit, label %.preheader.i.i

translate.exit:                                   ; preds = %41
  %42 = fsub float -0.000000e+00, %30
  %43 = fsub float -0.000000e+00, %32
  %44 = getelementptr inbounds [4 x [4 x float]]* %To, i64 0, i64 0
  %45 = getelementptr inbounds [4 x [4 x float]]* %To, i64 0, i64 3, i64 0
  store float %42, float* %45, align 16, !tbaa !14
  %46 = getelementptr inbounds [4 x [4 x float]]* %To, i64 0, i64 3, i64 1
  store float %43, float* %46, align 4, !tbaa !14
  %47 = getelementptr inbounds [4 x [4 x float]]* %To, i64 0, i64 3, i64 2
  store float %35, float* %47, align 8, !tbaa !14
  %48 = load float* %14, align 4, !tbaa !14
  %49 = load float* %16, align 4, !tbaa !14
  %50 = load float* %18, align 4, !tbaa !14
  %51 = fsub float -0.000000e+00, %50
  br label %.preheader.i.i3

.preheader.i.i3:                                  ; preds = %57, %translate.exit
  %indvars.iv3.i.i2 = phi i64 [ 0, %translate.exit ], [ %indvars.iv.next4.i.i8, %57 ]
  %52 = trunc i64 %indvars.iv3.i.i2 to i32
  br label %53

; <label>:53                                      ; preds = %53, %.preheader.i.i3
  %indvars.iv.i.i4 = phi i64 [ 0, %.preheader.i.i3 ], [ %indvars.iv.next.i.i6, %53 ]
  %54 = trunc i64 %indvars.iv.i.i4 to i32
  %55 = icmp eq i32 %52, %54
  %56 = getelementptr inbounds [4 x [4 x float]]* %Te, i64 0, i64 %indvars.iv3.i.i2, i64 %indvars.iv.i.i4
  %..i.i5 = select i1 %55, float 1.000000e+00, float 0.000000e+00
  store float %..i.i5, float* %56, align 4, !tbaa !14
  %indvars.iv.next.i.i6 = add nuw nsw i64 %indvars.iv.i.i4, 1
  %exitcond.i.i7 = icmp eq i64 %indvars.iv.next.i.i6, 4
  br i1 %exitcond.i.i7, label %57, label %53

; <label>:57                                      ; preds = %53
  %indvars.iv.next4.i.i8 = add nuw nsw i64 %indvars.iv3.i.i2, 1
  %exitcond5.i.i9 = icmp eq i64 %indvars.iv.next4.i.i8, 4
  br i1 %exitcond5.i.i9, label %translate.exit10, label %.preheader.i.i3

translate.exit10:                                 ; preds = %57
  %58 = fsub float -0.000000e+00, %48
  %59 = fsub float -0.000000e+00, %49
  %60 = getelementptr inbounds [4 x [4 x float]]* %Te, i64 0, i64 0
  %61 = getelementptr inbounds [4 x [4 x float]]* %Te, i64 0, i64 3, i64 0
  store float %58, float* %61, align 16, !tbaa !14
  %62 = getelementptr inbounds [4 x [4 x float]]* %Te, i64 0, i64 3, i64 1
  store float %59, float* %62, align 4, !tbaa !14
  %63 = getelementptr inbounds [4 x [4 x float]]* %Te, i64 0, i64 3, i64 2
  store float %51, float* %63, align 8, !tbaa !14
  br label %.preheader.i

.preheader.i:                                     ; preds = %69, %translate.exit10
  %indvars.iv3.i = phi i64 [ 0, %translate.exit10 ], [ %indvars.iv.next4.i, %69 ]
  %64 = trunc i64 %indvars.iv3.i to i32
  br label %65

; <label>:65                                      ; preds = %65, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %65 ]
  %66 = trunc i64 %indvars.iv.i to i32
  %67 = icmp eq i32 %64, %66
  %68 = getelementptr inbounds [4 x [4 x float]]* %T2, i64 0, i64 %indvars.iv3.i, i64 %indvars.iv.i
  %..i = select i1 %67, float 1.000000e+00, float 0.000000e+00
  store float %..i, float* %68, align 4, !tbaa !14
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, 4
  br i1 %exitcond.i, label %69, label %65

; <label>:69                                      ; preds = %65
  %indvars.iv.next4.i = add nuw nsw i64 %indvars.iv3.i, 1
  %exitcond5.i = icmp eq i64 %indvars.iv.next4.i, 4
  br i1 %exitcond5.i, label %unity_m4.exit, label %.preheader.i

unity_m4.exit:                                    ; preds = %69
  %70 = getelementptr inbounds [4 x [4 x float]]* %T2, i64 0, i64 0
  %71 = getelementptr inbounds [4 x [4 x float]]* %T2, i64 0, i64 1, i64 1
  store float 0.000000e+00, float* %71, align 4, !tbaa !14
  %72 = getelementptr inbounds [4 x [4 x float]]* %T2, i64 0, i64 1, i64 2
  store float -1.000000e+00, float* %72, align 8, !tbaa !14
  %73 = getelementptr inbounds [4 x [4 x float]]* %T2, i64 0, i64 2, i64 1
  store float 1.000000e+00, float* %73, align 4, !tbaa !14
  %74 = getelementptr inbounds [4 x [4 x float]]* %T2, i64 0, i64 2, i64 2
  store float 0.000000e+00, float* %74, align 8, !tbaa !14
  br label %.preheader.i12

.preheader.i12:                                   ; preds = %80, %unity_m4.exit
  %indvars.iv3.i11 = phi i64 [ 0, %unity_m4.exit ], [ %indvars.iv.next4.i17, %80 ]
  %75 = trunc i64 %indvars.iv3.i11 to i32
  br label %76

; <label>:76                                      ; preds = %76, %.preheader.i12
  %indvars.iv.i13 = phi i64 [ 0, %.preheader.i12 ], [ %indvars.iv.next.i15, %76 ]
  %77 = trunc i64 %indvars.iv.i13 to i32
  %78 = icmp eq i32 %75, %77
  %79 = getelementptr inbounds [4 x [4 x float]]* %T3, i64 0, i64 %indvars.iv3.i11, i64 %indvars.iv.i13
  %..i14 = select i1 %78, float 1.000000e+00, float 0.000000e+00
  store float %..i14, float* %79, align 4, !tbaa !14
  %indvars.iv.next.i15 = add nuw nsw i64 %indvars.iv.i13, 1
  %exitcond.i16 = icmp eq i64 %indvars.iv.next.i15, 4
  br i1 %exitcond.i16, label %80, label %76

; <label>:80                                      ; preds = %76
  %indvars.iv.next4.i17 = add nuw nsw i64 %indvars.iv3.i11, 1
  %exitcond5.i18 = icmp eq i64 %indvars.iv.next4.i17, 4
  br i1 %exitcond5.i18, label %unity_m4.exit19, label %.preheader.i12

unity_m4.exit19:                                  ; preds = %80
  %81 = getelementptr inbounds [4 x [4 x float]]* %T3, i64 0, i64 0
  %82 = fcmp ogt float %sqrtf1, 0.000000e+00
  br i1 %82, label %83, label %.preheader.i21

; <label>:83                                      ; preds = %unity_m4.exit19
  %84 = fsub float -0.000000e+00, %17
  %85 = fdiv float %84, %sqrtf1
  %86 = getelementptr inbounds [4 x [4 x float]]* %T3, i64 0, i64 0, i64 0
  store float %85, float* %86, align 16, !tbaa !14
  %87 = fdiv float %15, %sqrtf1
  %88 = getelementptr inbounds [4 x [4 x float]]* %T3, i64 0, i64 0, i64 2
  store float %87, float* %88, align 8, !tbaa !14
  %89 = fsub float -0.000000e+00, %15
  %90 = fdiv float %89, %sqrtf1
  %91 = getelementptr inbounds [4 x [4 x float]]* %T3, i64 0, i64 2, i64 0
  store float %90, float* %91, align 16, !tbaa !14
  %92 = getelementptr inbounds [4 x [4 x float]]* %T3, i64 0, i64 2, i64 2
  store float %85, float* %92, align 8, !tbaa !14
  br label %.preheader.i21

.preheader.i21:                                   ; preds = %unity_m4.exit19, %83, %98
  %indvars.iv3.i20 = phi i64 [ %indvars.iv.next4.i26, %98 ], [ 0, %83 ], [ 0, %unity_m4.exit19 ]
  %93 = trunc i64 %indvars.iv3.i20 to i32
  br label %94

; <label>:94                                      ; preds = %94, %.preheader.i21
  %indvars.iv.i22 = phi i64 [ 0, %.preheader.i21 ], [ %indvars.iv.next.i24, %94 ]
  %95 = trunc i64 %indvars.iv.i22 to i32
  %96 = icmp eq i32 %93, %95
  %97 = getelementptr inbounds [4 x [4 x float]]* %T4, i64 0, i64 %indvars.iv3.i20, i64 %indvars.iv.i22
  %..i23 = select i1 %96, float 1.000000e+00, float 0.000000e+00
  store float %..i23, float* %97, align 4, !tbaa !14
  %indvars.iv.next.i24 = add nuw nsw i64 %indvars.iv.i22, 1
  %exitcond.i25 = icmp eq i64 %indvars.iv.next.i24, 4
  br i1 %exitcond.i25, label %98, label %94

; <label>:98                                      ; preds = %94
  %indvars.iv.next4.i26 = add nuw nsw i64 %indvars.iv3.i20, 1
  %exitcond5.i27 = icmp eq i64 %indvars.iv.next4.i26, 4
  br i1 %exitcond5.i27, label %unity_m4.exit28, label %.preheader.i21

unity_m4.exit28:                                  ; preds = %98
  %99 = getelementptr inbounds [4 x [4 x float]]* %T4, i64 0, i64 0
  %100 = fdiv float %sqrtf1, %sqrtf
  %101 = getelementptr inbounds [4 x [4 x float]]* %T4, i64 0, i64 1, i64 1
  store float %100, float* %101, align 4, !tbaa !14
  %102 = fdiv float %19, %sqrtf
  %103 = getelementptr inbounds [4 x [4 x float]]* %T4, i64 0, i64 1, i64 2
  store float %102, float* %103, align 8, !tbaa !14
  %104 = fsub float -0.000000e+00, %19
  %105 = fdiv float %104, %sqrtf
  %106 = getelementptr inbounds [4 x [4 x float]]* %T4, i64 0, i64 2, i64 1
  store float %105, float* %106, align 4, !tbaa !14
  %107 = getelementptr inbounds [4 x [4 x float]]* %T4, i64 0, i64 2, i64 2
  store float %100, float* %107, align 8, !tbaa !14
  br label %.preheader.i30

.preheader.i30:                                   ; preds = %113, %unity_m4.exit28
  %indvars.iv3.i29 = phi i64 [ 0, %unity_m4.exit28 ], [ %indvars.iv.next4.i35, %113 ]
  %108 = trunc i64 %indvars.iv3.i29 to i32
  br label %109

; <label>:109                                     ; preds = %109, %.preheader.i30
  %indvars.iv.i31 = phi i64 [ 0, %.preheader.i30 ], [ %indvars.iv.next.i33, %109 ]
  %110 = trunc i64 %indvars.iv.i31 to i32
  %111 = icmp eq i32 %108, %110
  %112 = getelementptr inbounds [4 x [4 x float]]* %T5, i64 0, i64 %indvars.iv3.i29, i64 %indvars.iv.i31
  %..i32 = select i1 %111, float 1.000000e+00, float 0.000000e+00
  store float %..i32, float* %112, align 4, !tbaa !14
  %indvars.iv.next.i33 = add nuw nsw i64 %indvars.iv.i31, 1
  %exitcond.i34 = icmp eq i64 %indvars.iv.next.i33, 4
  br i1 %exitcond.i34, label %113, label %109

; <label>:113                                     ; preds = %109
  %indvars.iv.next4.i35 = add nuw nsw i64 %indvars.iv3.i29, 1
  %exitcond5.i36 = icmp eq i64 %indvars.iv.next4.i35, 4
  br i1 %exitcond5.i36, label %unity_m4.exit37, label %.preheader.i30

unity_m4.exit37:                                  ; preds = %113
  %114 = getelementptr inbounds [4 x [4 x float]]* %T5, i64 0, i64 0
  %115 = getelementptr inbounds [4 x [4 x float]]* %T5, i64 0, i64 2, i64 2
  store float -1.000000e+00, float* %115, align 8, !tbaa !14
  br label %.preheader.i39

.preheader.i39:                                   ; preds = %121, %unity_m4.exit37
  %indvars.iv3.i38 = phi i64 [ 0, %unity_m4.exit37 ], [ %indvars.iv.next4.i44, %121 ]
  %116 = trunc i64 %indvars.iv3.i38 to i32
  br label %117

; <label>:117                                     ; preds = %117, %.preheader.i39
  %indvars.iv.i40 = phi i64 [ 0, %.preheader.i39 ], [ %indvars.iv.next.i42, %117 ]
  %118 = trunc i64 %indvars.iv.i40 to i32
  %119 = icmp eq i32 %116, %118
  %120 = getelementptr inbounds [4 x [4 x float]]* %N1, i64 0, i64 %indvars.iv3.i38, i64 %indvars.iv.i40
  %..i41 = select i1 %119, float 1.000000e+00, float 0.000000e+00
  store float %..i41, float* %120, align 4, !tbaa !14
  %indvars.iv.next.i42 = add nuw nsw i64 %indvars.iv.i40, 1
  %exitcond.i43 = icmp eq i64 %indvars.iv.next.i42, 4
  br i1 %exitcond.i43, label %121, label %117

; <label>:121                                     ; preds = %117
  %indvars.iv.next4.i44 = add nuw nsw i64 %indvars.iv3.i38, 1
  %exitcond5.i45 = icmp eq i64 %indvars.iv.next4.i44, 4
  br i1 %exitcond5.i45, label %unity_m4.exit46, label %.preheader.i39

unity_m4.exit46:                                  ; preds = %121
  %122 = getelementptr inbounds [4 x [4 x float]]* %N1, i64 0, i64 0
  %123 = getelementptr inbounds [4 x [4 x float]]* %T1, i64 0, i64 0
  %124 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 4, i64 0
  call void @mult_matrix([4 x float]* %123, [4 x float]* %44, [4 x float]* %124) #9
  %125 = getelementptr inbounds [4 x [4 x float]]* %D1, i64 0, i64 0
  call void @mult_matrix([4 x float]* %125, [4 x float]* %60, [4 x float]* %70) #9
  %126 = getelementptr inbounds [4 x [4 x float]]* %D2, i64 0, i64 0
  call void @mult_matrix([4 x float]* %126, [4 x float]* %81, [4 x float]* %99) #9
  %127 = getelementptr inbounds [4 x [4 x float]]* %D3, i64 0, i64 0
  call void @mult_matrix([4 x float]* %127, [4 x float]* %114, [4 x float]* %122) #9
  %128 = getelementptr inbounds [4 x [4 x float]]* %D4, i64 0, i64 0
  call void @mult_matrix([4 x float]* %128, [4 x float]* %123, [4 x float]* %125) #9
  %129 = getelementptr inbounds [4 x [4 x float]]* %D5, i64 0, i64 0
  call void @mult_matrix([4 x float]* %129, [4 x float]* %126, [4 x float]* %127) #9
  %130 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 3, i64 0
  call void @mult_matrix([4 x float]* %130, [4 x float]* %128, [4 x float]* %129) #9
  call void @llvm.lifetime.end(i64 64, i8* %13) #6
  call void @llvm.lifetime.end(i64 64, i8* %12) #6
  call void @llvm.lifetime.end(i64 64, i8* %11) #6
  call void @llvm.lifetime.end(i64 64, i8* %10) #6
  call void @llvm.lifetime.end(i64 64, i8* %9) #6
  call void @llvm.lifetime.end(i64 64, i8* %8) #6
  call void @llvm.lifetime.end(i64 64, i8* %7) #6
  call void @llvm.lifetime.end(i64 64, i8* %6) #6
  call void @llvm.lifetime.end(i64 64, i8* %5) #6
  call void @llvm.lifetime.end(i64 64, i8* %4) #6
  call void @llvm.lifetime.end(i64 64, i8* %3) #6
  call void @llvm.lifetime.end(i64 64, i8* %2) #6
  call void @llvm.lifetime.end(i64 64, i8* %1) #6
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #6

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #6

; Function Attrs: nounwind optsize ssp uwtable
define i32 @zoom_3d(%struct.t_3dview* nocapture %view, float %fac) #3 {
  br label %1

; <label>:1                                       ; preds = %1, %0
  %indvars.iv13 = phi i64 [ 0, %0 ], [ %indvars.iv.next14, %1 ]
  %dr2.011 = phi float [ 0.000000e+00, %0 ], [ %5, %1 ]
  %2 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 1, i64 %indvars.iv13
  %3 = load float* %2, align 4, !tbaa !14
  %4 = fmul float %3, %3
  %5 = fadd float %dr2.011, %4
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  %exitcond15 = icmp eq i64 %indvars.iv.next14, 3
  br i1 %exitcond15, label %6, label %1

; <label>:6                                       ; preds = %1
  %7 = fcmp olt float %fac, 1.000000e+00
  br i1 %7, label %8, label %.preheader

; <label>:8                                       ; preds = %6
  %sqrtf = tail call float @sqrtf(float %5) #5
  %9 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 0, i64 0, i64 0
  %10 = load float* %9, align 4, !tbaa !14
  %11 = fmul float %10, %10
  %12 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 0, i64 0, i64 1
  %13 = load float* %12, align 4, !tbaa !14
  %14 = fmul float %13, %13
  %15 = fadd float %11, %14
  %16 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 0, i64 0, i64 2
  %17 = load float* %16, align 4, !tbaa !14
  %18 = fmul float %17, %17
  %19 = fadd float %15, %18
  %sqrtf.i = tail call float @sqrtf(float %19) #5
  %20 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 0, i64 1, i64 0
  %21 = load float* %20, align 4, !tbaa !14
  %22 = fmul float %21, %21
  %23 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 0, i64 1, i64 1
  %24 = load float* %23, align 4, !tbaa !14
  %25 = fmul float %24, %24
  %26 = fadd float %22, %25
  %27 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 0, i64 1, i64 2
  %28 = load float* %27, align 4, !tbaa !14
  %29 = fmul float %28, %28
  %30 = fadd float %26, %29
  %sqrtf.i1 = tail call float @sqrtf(float %30) #5
  %31 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 0, i64 2, i64 0
  %32 = load float* %31, align 4, !tbaa !14
  %33 = fmul float %32, %32
  %34 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 0, i64 2, i64 1
  %35 = load float* %34, align 4, !tbaa !14
  %36 = fmul float %35, %35
  %37 = fadd float %33, %36
  %38 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 0, i64 2, i64 2
  %39 = load float* %38, align 4, !tbaa !14
  %40 = fmul float %39, %39
  %41 = fadd float %37, %40
  %sqrtf.i2 = tail call float @sqrtf(float %41) #5
  %42 = fcmp ogt float %sqrtf.i1, %sqrtf.i2
  %43 = select i1 %42, float %sqrtf.i1, float %sqrtf.i2
  %44 = fcmp ogt float %sqrtf.i, %43
  %brmerge = or i1 %44, %42
  %sqrtf.i.mux = select i1 %44, float %sqrtf.i, float %sqrtf.i1
  %45 = select i1 %brmerge, float %sqrtf.i.mux, float %sqrtf.i2
  %46 = fmul float %sqrtf, %fac
  %47 = fpext float %46 to double
  %48 = fpext float %45 to double
  %49 = fmul double %48, 1.100000e+00
  %50 = fcmp olt double %47, %49
  br i1 %50, label %55, label %.preheader

.preheader:                                       ; preds = %6, %8, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ 0, %8 ], [ 0, %6 ]
  %51 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 1, i64 %indvars.iv
  %52 = load float* %51, align 4, !tbaa !14
  %53 = fmul float %52, %fac
  store float %53, float* %51, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %54, label %.preheader

; <label>:54                                      ; preds = %.preheader
  tail call void @calculate_view(%struct.t_3dview* %view) #9
  br label %55

; <label>:55                                      ; preds = %8, %54
  %.0 = phi i32 [ 1, %54 ], [ 0, %8 ]
  ret i32 %.0
}

; Function Attrs: nounwind optsize ssp uwtable
define void @rotate_3d(%struct.t_3dview* nocapture %view, i32 %axis, i32 %bPositive) #3 {
  %m4 = alloca [4 x [4 x float]], align 16
  %1 = bitcast [4 x [4 x float]]* %m4 to i8*
  call void @llvm.lifetime.start(i64 64, i8* %1) #6
  br label %2

; <label>:2                                       ; preds = %2, %0
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next, %2 ]
  %3 = getelementptr inbounds [3 x [4 x [4 x float]]]* @rotate_3d.RotP, i64 0, i64 %indvars.iv, i64 0
  %4 = trunc i64 %indvars.iv to i32
  tail call void @rotate(i32 %4, float 0x3FD0C15240000000, [4 x float]* %3) #9
  %5 = getelementptr inbounds [3 x [4 x [4 x float]]]* @rotate_3d.RotM, i64 0, i64 %indvars.iv, i64 0
  tail call void @rotate(i32 %4, float 0xBFD0C15240000000, [4 x float]* %5) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond8 = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond8, label %6, label %2

; <label>:6                                       ; preds = %2
  %7 = icmp eq i32 %bPositive, 0
  %8 = getelementptr inbounds [4 x [4 x float]]* %m4, i64 0, i64 0
  %9 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 4, i64 0
  %10 = sext i32 %axis to i64
  br i1 %7, label %13, label %11

; <label>:11                                      ; preds = %6
  %12 = getelementptr inbounds [3 x [4 x [4 x float]]]* @rotate_3d.RotP, i64 0, i64 %10, i64 0
  call void @mult_matrix([4 x float]* %8, [4 x float]* %9, [4 x float]* %12) #9
  br label %.preheader

; <label>:13                                      ; preds = %6
  %14 = getelementptr inbounds [3 x [4 x [4 x float]]]* @rotate_3d.RotM, i64 0, i64 %10, i64 0
  call void @mult_matrix([4 x float]* %8, [4 x float]* %9, [4 x float]* %14) #9
  br label %.preheader

.preheader:                                       ; preds = %11, %13, %.preheader
  %indvar = phi i64 [ %indvar.next, %.preheader ], [ 0, %13 ], [ 0, %11 ]
  %scevgep = getelementptr %struct.t_3dview* %view, i64 0, i32 4, i64 %indvar, i64 0
  %scevgep5 = bitcast float* %scevgep to i8*
  %scevgep6 = getelementptr [4 x [4 x float]]* %m4, i64 0, i64 %indvar, i64 0
  %scevgep67 = bitcast float* %scevgep6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %scevgep5, i8* %scevgep67, i64 16, i32 4, i1 false)
  %indvar.next = add nuw nsw i64 %indvar, 1
  %exitcond = icmp eq i64 %indvar.next, 4
  br i1 %exitcond, label %15, label %.preheader

; <label>:15                                      ; preds = %.preheader
  tail call void @calculate_view(%struct.t_3dview* %view) #9
  call void @llvm.lifetime.end(i64 64, i8* %1) #6
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @translate_view(%struct.t_3dview* nocapture %view, i32 %axis, i32 %bPositive) #3 {
  %1 = icmp eq i32 %bPositive, 0
  %2 = sext i32 %axis to i64
  %3 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 0, i64 %2, i64 %2
  %4 = load float* %3, align 4, !tbaa !14
  %5 = fmul float %4, 1.250000e-01
  %6 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 2, i64 %2
  %7 = load float* %6, align 4, !tbaa !14
  br i1 %1, label %10, label %8

; <label>:8                                       ; preds = %0
  %9 = fadd float %7, %5
  br label %12

; <label>:10                                      ; preds = %0
  %11 = fsub float %7, %5
  br label %12

; <label>:12                                      ; preds = %10, %8
  %storemerge = phi float [ %11, %10 ], [ %9, %8 ]
  store float %storemerge, float* %6, align 4, !tbaa !14
  tail call void @calculate_view(%struct.t_3dview* %view) #9
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @reset_view(%struct.t_3dview* %view) #3 {
  %1 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 5
  store float 4.000000e+00, float* %1, align 4, !tbaa !16
  %2 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 6
  store float 4.000000e+00, float* %2, align 4, !tbaa !18
  %3 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 1, i64 0
  store float 0.000000e+00, float* %3, align 4, !tbaa !14
  %4 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 1, i64 1
  store float 0.000000e+00, float* %4, align 4, !tbaa !14
  %5 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 1, i64 2
  store float 0.000000e+00, float* %5, align 4, !tbaa !14
  %6 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 0, i64 0
  %7 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 2, i64 0
  tail call void @calc_box_center([3 x float]* %6, float* %7) #7
  %8 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 0, i64 0, i64 0
  %9 = load float* %8, align 4, !tbaa !14
  %10 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 0, i64 1, i64 1
  %11 = load float* %10, align 4, !tbaa !14
  %12 = fcmp ogt float %9, %11
  %. = select i1 %12, float %9, float %11
  %13 = fmul float %., 3.000000e+00
  store float %13, float* %5, align 4, !tbaa !14
  %14 = tail call i32 @zoom_3d(%struct.t_3dview* %view, float 1.000000e+00) #9
  %15 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 2, i64 3
  store float 0.000000e+00, float* %15, align 4, !tbaa !14
  %16 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 1, i64 3
  store float 0.000000e+00, float* %16, align 4, !tbaa !14
  br label %.preheader.i

.preheader.i:                                     ; preds = %22, %0
  %indvars.iv3.i = phi i64 [ 0, %0 ], [ %indvars.iv.next4.i, %22 ]
  %17 = trunc i64 %indvars.iv3.i to i32
  br label %18

; <label>:18                                      ; preds = %18, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %18 ]
  %19 = trunc i64 %indvars.iv.i to i32
  %20 = icmp eq i32 %17, %19
  %21 = getelementptr inbounds %struct.t_3dview* %view, i64 0, i32 4, i64 %indvars.iv3.i, i64 %indvars.iv.i
  %..i = select i1 %20, float 1.000000e+00, float 0.000000e+00
  store float %..i, float* %21, align 4, !tbaa !14
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, 4
  br i1 %exitcond.i, label %22, label %18

; <label>:22                                      ; preds = %18
  %indvars.iv.next4.i = add nuw nsw i64 %indvars.iv3.i, 1
  %exitcond5.i = icmp eq i64 %indvars.iv.next4.i, 4
  br i1 %exitcond5.i, label %unity_m4.exit, label %.preheader.i

unity_m4.exit:                                    ; preds = %22
  tail call void @calculate_view(%struct.t_3dview* %view) #9
  ret void
}

; Function Attrs: optsize
declare void @calc_box_center([3 x float]*, float*) #1

; Function Attrs: nounwind optsize ssp uwtable
define %struct.t_3dview* @init_view([3 x float]* nocapture readonly %box) #3 {
  %1 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str6, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str7, i64 0, i64 0), i32 305, i32 1, i32 204) #7
  %2 = bitcast i8* %1 to [3 x [3 x float]]*
  br label %.preheader

.preheader:                                       ; preds = %9, %0
  %indvars.iv3 = phi i64 [ 0, %0 ], [ %indvars.iv.next4, %9 ]
  br label %3

; <label>:3                                       ; preds = %3, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %3 ]
  %4 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv3, i64 %indvars.iv
  %5 = bitcast float* %4 to i32*
  %6 = load i32* %5, align 4, !tbaa !14
  %7 = getelementptr inbounds [3 x [3 x float]]* %2, i64 0, i64 %indvars.iv3, i64 %indvars.iv
  %8 = bitcast float* %7 to i32*
  store i32 %6, i32* %8, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %9, label %3

; <label>:9                                       ; preds = %3
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1
  %exitcond5 = icmp eq i64 %indvars.iv.next4, 3
  br i1 %exitcond5, label %10, label %.preheader

; <label>:10                                      ; preds = %9
  %11 = bitcast i8* %1 to %struct.t_3dview*
  tail call void @reset_view(%struct.t_3dview* %11) #9
  ret %struct.t_3dview* %11
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct.__sFILE* nocapture) #6

declare float @sqrtf(float)

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #6

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind optsize readnone }
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
!16 = !{!17, !15, i64 196}
!17 = !{!"", !5, i64 0, !5, i64 36, !5, i64 52, !5, i64 68, !5, i64 132, !15, i64 196, !15, i64 200}
!18 = !{!17, !15, i64 200}
