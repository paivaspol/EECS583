; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/random.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_atoms = type { i32, %struct.t_atom*, i8***, i8***, i8***, i32, i8***, i32, i8***, %struct.t_block, [9 x %struct.t_grps], %struct.t_pdbinfo* }
%struct.t_atom = type { float, float, float, float, i16, i16, i32, i32, [9 x i8], i8 }
%struct.t_block = type { [256 x i32], i32, i32*, i32, i32* }
%struct.t_grps = type { i32, i32* }
%struct.t_pdbinfo = type { i32, i32, i8, [6 x i8], float, float, i32, [6 x i32] }

@__stderrp = external global %struct.__sFILE*
@.str = private unnamed_addr constant [59 x i8] c"Velocities were taken from a Maxwell distribution at %g K\0A\00", align 1
@debug = external global %struct.__sFILE*
@.str1 = private unnamed_addr constant [109 x i8] c"Velocities were taken from a Maxwell distribution\0AInitial generated temperature: %12.5e (scaled to: %12.5e)\0A\00", align 1
@.str2 = private unnamed_addr constant [48 x i8] c"Using random seed %d for generating velocities\0A\00", align 1
@.str3 = private unnamed_addr constant [6 x i8] c"dummy\00", align 1
@.str4 = private unnamed_addr constant [66 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/random.c\00", align 1

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

; Function Attrs: nounwind optsize ssp uwtable
define float @gauss(float %am, float %sd, i32* %ig) #3 {
  br label %1

; <label>:1                                       ; preds = %1, %0
  %a.02 = phi float [ 0.000000e+00, %0 ], [ %3, %1 ]
  %i.01 = phi i32 [ 0, %0 ], [ %4, %1 ]
  %2 = tail call float @rando(i32* %ig) #6
  %3 = fadd float %a.02, %2
  %4 = add nuw nsw i32 %i.01, 1
  %exitcond = icmp eq i32 %4, 12
  br i1 %exitcond, label %5, label %1

; <label>:5                                       ; preds = %1
  %6 = fpext float %3 to double
  %7 = fadd double %6, -6.000000e+00
  %8 = fpext float %sd to double
  %9 = fmul double %8, %7
  %10 = fpext float %am to double
  %11 = fadd double %10, %9
  %12 = fptrunc double %11 to float
  ret float %12
}

; Function Attrs: optsize
declare float @rando(i32*) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @low_mspeed(float %tempi, i32 %nrdf, i32 %seed, i32 %nat, i32* nocapture readonly %a, %struct.t_atoms* nocapture readonly %atoms, [3 x float]* nocapture %v) #3 {
  %ig = alloca i32, align 4
  store i32 %seed, i32* %ig, align 4, !tbaa !14
  %1 = fpext float %tempi to double
  %2 = fmul double %1, 0x3F810732CDE67DC4
  %3 = fptrunc double %2 to float
  %4 = icmp sgt i32 %nat, 0
  br i1 %4, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %5 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1
  %6 = add i32 %nat, -1
  br label %7

; <label>:7                                       ; preds = %.loopexit3, %.lr.ph
  %indvars.iv17 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next18, %.loopexit3 ]
  %ekin.08 = phi float [ 0.000000e+00, %.lr.ph ], [ %ekin.2, %.loopexit3 ]
  %8 = getelementptr inbounds i32* %a, i64 %indvars.iv17
  %9 = load i32* %8, align 4, !tbaa !14
  %10 = sext i32 %9 to i64
  %11 = load %struct.t_atom** %5, align 8, !tbaa !15
  %12 = getelementptr inbounds %struct.t_atom* %11, i64 %10, i32 0
  %13 = load float* %12, align 4, !tbaa !18
  %14 = fcmp ogt float %13, 0.000000e+00
  br i1 %14, label %15, label %.loopexit3

; <label>:15                                      ; preds = %7
  %16 = fdiv float %3, %13
  %sqrtf1 = call float @sqrtf(float %16) #7
  %17 = fpext float %sqrtf1 to double
  %18 = fpext float %13 to double
  %19 = fmul double %18, 5.000000e-01
  br label %.preheader2

.preheader2:                                      ; preds = %gauss.exit, %15
  %indvars.iv14 = phi i64 [ 0, %15 ], [ %indvars.iv.next15, %gauss.exit ]
  %ekin.16 = phi float [ %ekin.08, %15 ], [ %35, %gauss.exit ]
  br label %20

; <label>:20                                      ; preds = %.preheader2, %20
  %a.02.i = phi float [ %22, %20 ], [ 0.000000e+00, %.preheader2 ]
  %i.01.i = phi i32 [ %23, %20 ], [ 0, %.preheader2 ]
  %21 = call float @rando(i32* %ig) #6
  %22 = fadd float %a.02.i, %21
  %23 = add nuw nsw i32 %i.01.i, 1
  %exitcond.i = icmp eq i32 %23, 12
  br i1 %exitcond.i, label %gauss.exit, label %20

gauss.exit:                                       ; preds = %20
  %24 = fpext float %22 to double
  %25 = fadd double %24, -6.000000e+00
  %26 = fmul double %17, %25
  %27 = fadd double %26, 0.000000e+00
  %28 = fptrunc double %27 to float
  %29 = getelementptr inbounds [3 x float]* %v, i64 %10, i64 %indvars.iv14
  store float %28, float* %29, align 4, !tbaa !21
  %30 = fpext float %28 to double
  %31 = fmul double %19, %30
  %32 = fmul double %30, %31
  %33 = fpext float %ekin.16 to double
  %34 = fadd double %33, %32
  %35 = fptrunc double %34 to float
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  %exitcond16 = icmp eq i64 %indvars.iv.next15, 3
  br i1 %exitcond16, label %.loopexit3, label %.preheader2

.loopexit3:                                       ; preds = %gauss.exit, %7
  %ekin.2 = phi float [ %ekin.08, %7 ], [ %35, %gauss.exit ]
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1
  %lftr.wideiv19 = trunc i64 %indvars.iv17 to i32
  %exitcond20 = icmp eq i32 %lftr.wideiv19, %6
  br i1 %exitcond20, label %._crit_edge, label %7

._crit_edge:                                      ; preds = %.loopexit3, %0
  %ekin.0.lcssa = phi float [ 0.000000e+00, %0 ], [ %ekin.2, %.loopexit3 ]
  %36 = fpext float %ekin.0.lcssa to double
  %37 = fmul double %36, 2.000000e+00
  %38 = sitofp i32 %nrdf to double
  %39 = fmul double %38, 0x3F810732CDE67DC4
  %40 = fdiv double %37, %39
  %41 = fptrunc double %40 to float
  %42 = fcmp ogt float %41, 0.000000e+00
  br i1 %42, label %43, label %.loopexit

; <label>:43                                      ; preds = %._crit_edge
  %44 = fdiv float %tempi, %41
  %sqrtf = call float @sqrtf(float %44) #7
  br i1 %4, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %43
  %45 = add i32 %nat, -1
  br label %.preheader

.preheader:                                       ; preds = %53, %.preheader.lr.ph
  %indvars.iv11 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next12, %53 ]
  %46 = getelementptr inbounds i32* %a, i64 %indvars.iv11
  %47 = load i32* %46, align 4, !tbaa !14
  %48 = sext i32 %47 to i64
  br label %49

; <label>:49                                      ; preds = %49, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %49 ]
  %50 = getelementptr inbounds [3 x float]* %v, i64 %48, i64 %indvars.iv
  %51 = load float* %50, align 4, !tbaa !21
  %52 = fmul float %sqrtf, %51
  store float %52, float* %50, align 4, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %53, label %49

; <label>:53                                      ; preds = %49
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  %lftr.wideiv = trunc i64 %indvars.iv11 to i32
  %exitcond13 = icmp eq i32 %lftr.wideiv, %45
  br i1 %exitcond13, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %53, %43, %._crit_edge
  %54 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !22
  %55 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %54, i8* getelementptr inbounds ([59 x i8]* @.str, i64 0, i64 0), double %1) #6
  %56 = load %struct.__sFILE** @debug, align 8, !tbaa !22
  %57 = icmp eq %struct.__sFILE* %56, null
  br i1 %57, label %61, label %58

; <label>:58                                      ; preds = %.loopexit
  %59 = fpext float %41 to double
  %60 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %56, i8* getelementptr inbounds ([109 x i8]* @.str1, i64 0, i64 0), double %59, double %1) #6
  br label %61

; <label>:61                                      ; preds = %.loopexit, %58
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #4

; Function Attrs: nounwind optsize ssp uwtable
define void @grp_maxwell(%struct.t_block* nocapture readonly %grp, float* nocapture readonly %tempi, i32* nocapture readonly %nrdf, i32 %seed, %struct.t_atoms* nocapture readonly %atoms, [3 x float]* nocapture %v) #3 {
  %1 = getelementptr inbounds %struct.t_block* %grp, i64 0, i32 1
  %2 = load i32* %1, align 4, !tbaa !23
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %4 = getelementptr inbounds %struct.t_block* %grp, i64 0, i32 2
  %5 = getelementptr inbounds %struct.t_block* %grp, i64 0, i32 4
  br label %6

; <label>:6                                       ; preds = %.lr.ph, %6
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %6 ]
  %7 = load i32** %4, align 8, !tbaa !24
  %8 = getelementptr inbounds i32* %7, i64 %indvars.iv
  %9 = load i32* %8, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %10 = getelementptr inbounds i32* %7, i64 %indvars.iv.next
  %11 = load i32* %10, align 4, !tbaa !14
  %12 = sub nsw i32 %11, %9
  %13 = getelementptr inbounds float* %tempi, i64 %indvars.iv
  %14 = load float* %13, align 4, !tbaa !21
  %15 = getelementptr inbounds i32* %nrdf, i64 %indvars.iv
  %16 = load i32* %15, align 4, !tbaa !14
  %17 = sext i32 %9 to i64
  %18 = load i32** %5, align 8, !tbaa !25
  %19 = getelementptr inbounds i32* %18, i64 %17
  tail call void @low_mspeed(float %14, i32 %16, i32 %seed, i32 %12, i32* %19, %struct.t_atoms* %atoms, [3 x float]* %v) #8
  %20 = load i32* %1, align 4, !tbaa !23
  %21 = sext i32 %20 to i64
  %22 = icmp slt i64 %indvars.iv.next, %21
  br i1 %22, label %6, label %._crit_edge

._crit_edge:                                      ; preds = %6, %0
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @maxwell_speed(float %tempi, i32 %nrdf, i32 %seed, %struct.t_atoms* nocapture readonly %atoms, [3 x float]* nocapture %v) #3 {
  %1 = icmp eq i32 %seed, -1
  br i1 %1, label %2, label %6

; <label>:2                                       ; preds = %0
  %3 = tail call i32 @make_seed() #6
  %4 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !22
  %5 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %4, i8* getelementptr inbounds ([48 x i8]* @.str2, i64 0, i64 0), i32 %3) #6
  br label %6

; <label>:6                                       ; preds = %2, %0
  %.0 = phi i32 [ %3, %2 ], [ %seed, %0 ]
  %7 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0
  %8 = load i32* %7, align 4, !tbaa !26
  %9 = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 143, i32 %8, i32 4) #6
  %10 = bitcast i8* %9 to i32*
  %11 = load i32* %7, align 4, !tbaa !26
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %6, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %6 ]
  %13 = getelementptr inbounds i32* %10, i64 %indvars.iv
  %14 = trunc i64 %indvars.iv to i32
  store i32 %14, i32* %13, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %15 = load i32* %7, align 4, !tbaa !26
  %16 = sext i32 %15 to i64
  %17 = icmp slt i64 %indvars.iv.next, %16
  br i1 %17, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %6
  %.lcssa = phi i32 [ %11, %6 ], [ %15, %.lr.ph ]
  tail call void @low_mspeed(float %tempi, i32 %nrdf, i32 %.0, i32 %.lcssa, i32* %10, %struct.t_atoms* %atoms, [3 x float]* %v) #8
  tail call void @save_free(i8* getelementptr inbounds ([6 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str4, i64 0, i64 0), i32 147, i8* %9) #6
  ret void
}

; Function Attrs: optsize
declare i32 @make_seed() #1

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: optsize
declare void @save_free(i8*, i8*, i32, i8*) #1

; Function Attrs: nounwind optsize ssp uwtable
define float @calc_cm(%struct.__sFILE* nocapture readnone %log, i32 %natoms, float* nocapture readonly %mass, [3 x float]* nocapture readonly %x, [3 x float]* nocapture readonly %v, float* nocapture %xcm, float* nocapture %vcm, float* nocapture %acm, [3 x float]* nocapture %L) #3 {
  %dx = alloca [3 x float], align 4
  %a0 = alloca [3 x float], align 4
  store float 0.000000e+00, float* %xcm, align 4, !tbaa !21
  %1 = getelementptr inbounds float* %xcm, i64 1
  store float 0.000000e+00, float* %1, align 4, !tbaa !21
  %2 = getelementptr inbounds float* %xcm, i64 2
  store float 0.000000e+00, float* %2, align 4, !tbaa !21
  store float 0.000000e+00, float* %vcm, align 4, !tbaa !21
  %3 = getelementptr inbounds float* %vcm, i64 1
  store float 0.000000e+00, float* %3, align 4, !tbaa !21
  %4 = getelementptr inbounds float* %vcm, i64 2
  store float 0.000000e+00, float* %4, align 4, !tbaa !21
  store float 0.000000e+00, float* %acm, align 4, !tbaa !21
  %5 = getelementptr inbounds float* %acm, i64 1
  store float 0.000000e+00, float* %5, align 4, !tbaa !21
  %6 = getelementptr inbounds float* %acm, i64 2
  store float 0.000000e+00, float* %6, align 4, !tbaa !21
  %7 = icmp sgt i32 %natoms, 0
  %8 = getelementptr inbounds [3 x float]* %a0, i64 0, i64 0
  %9 = getelementptr inbounds [3 x float]* %a0, i64 0, i64 1
  %10 = getelementptr inbounds [3 x float]* %a0, i64 0, i64 2
  br i1 %7, label %.lr.ph8, label %._crit_edge9

.lr.ph8:                                          ; preds = %0
  %11 = add i32 %natoms, -1
  br label %12

; <label>:12                                      ; preds = %53, %.lr.ph8
  %indvars.iv19 = phi i64 [ 0, %.lr.ph8 ], [ %indvars.iv.next20, %53 ]
  %tm.05 = phi float [ 0.000000e+00, %.lr.ph8 ], [ %54, %53 ]
  %13 = getelementptr inbounds float* %mass, i64 %indvars.iv19
  %14 = load float* %13, align 4, !tbaa !21
  %15 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv19, i64 0
  %16 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv19, i64 0
  %17 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv19, i64 1
  %18 = load float* %17, align 4, !tbaa !21
  %19 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv19, i64 2
  %20 = load float* %19, align 4, !tbaa !21
  %21 = fmul float %18, %20
  %22 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv19, i64 2
  %23 = load float* %22, align 4, !tbaa !21
  %24 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv19, i64 1
  %25 = load float* %24, align 4, !tbaa !21
  %26 = fmul float %23, %25
  %27 = fsub float %21, %26
  store float %27, float* %8, align 4, !tbaa !21
  %28 = load float* %16, align 4, !tbaa !21
  %29 = fmul float %23, %28
  %30 = load float* %15, align 4, !tbaa !21
  %31 = fmul float %30, %20
  %32 = fsub float %29, %31
  store float %32, float* %9, align 4, !tbaa !21
  %33 = fmul float %30, %25
  %34 = fmul float %18, %28
  %35 = fsub float %33, %34
  store float %35, float* %10, align 4, !tbaa !21
  br label %36

; <label>:36                                      ; preds = %._crit_edge23, %12
  %37 = phi float [ %27, %12 ], [ %.pre25, %._crit_edge23 ]
  %38 = phi float [ %30, %12 ], [ %.pre, %._crit_edge23 ]
  %indvars.iv16 = phi i64 [ 0, %12 ], [ %indvars.iv.next17, %._crit_edge23 ]
  %39 = fmul float %14, %38
  %40 = getelementptr inbounds float* %xcm, i64 %indvars.iv16
  %41 = load float* %40, align 4, !tbaa !21
  %42 = fadd float %41, %39
  store float %42, float* %40, align 4, !tbaa !21
  %43 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv19, i64 %indvars.iv16
  %44 = load float* %43, align 4, !tbaa !21
  %45 = fmul float %14, %44
  %46 = getelementptr inbounds float* %vcm, i64 %indvars.iv16
  %47 = load float* %46, align 4, !tbaa !21
  %48 = fadd float %47, %45
  store float %48, float* %46, align 4, !tbaa !21
  %49 = fmul float %14, %37
  %50 = getelementptr inbounds float* %acm, i64 %indvars.iv16
  %51 = load float* %50, align 4, !tbaa !21
  %52 = fadd float %51, %49
  store float %52, float* %50, align 4, !tbaa !21
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  %exitcond18 = icmp eq i64 %indvars.iv.next17, 3
  br i1 %exitcond18, label %53, label %._crit_edge23

._crit_edge23:                                    ; preds = %36
  %.phi.trans.insert = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv19, i64 %indvars.iv.next17
  %.pre = load float* %.phi.trans.insert, align 4, !tbaa !21
  %.phi.trans.insert24 = getelementptr inbounds [3 x float]* %a0, i64 0, i64 %indvars.iv.next17
  %.pre25 = load float* %.phi.trans.insert24, align 4, !tbaa !21
  br label %36

; <label>:53                                      ; preds = %36
  %54 = fadd float %tm.05, %14
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  %lftr.wideiv21 = trunc i64 %indvars.iv19 to i32
  %exitcond22 = icmp eq i32 %lftr.wideiv21, %11
  br i1 %exitcond22, label %._crit_edge9, label %12

._crit_edge9:                                     ; preds = %53, %0
  %tm.0.lcssa = phi float [ 0.000000e+00, %0 ], [ %54, %53 ]
  %55 = load float* %1, align 4, !tbaa !21
  %56 = load float* %4, align 4, !tbaa !21
  %57 = fmul float %55, %56
  %58 = load float* %2, align 4, !tbaa !21
  %59 = load float* %3, align 4, !tbaa !21
  %60 = fmul float %58, %59
  %61 = fsub float %57, %60
  store float %61, float* %8, align 4, !tbaa !21
  %62 = load float* %vcm, align 4, !tbaa !21
  %63 = fmul float %58, %62
  %64 = load float* %xcm, align 4, !tbaa !21
  %65 = fmul float %64, %56
  %66 = fsub float %63, %65
  store float %66, float* %9, align 4, !tbaa !21
  %67 = fmul float %64, %59
  %68 = fmul float %55, %62
  %69 = fsub float %67, %68
  store float %69, float* %10, align 4, !tbaa !21
  %70 = fdiv float %64, %tm.0.lcssa
  store float %70, float* %xcm, align 4, !tbaa !21
  %71 = load float* %vcm, align 4, !tbaa !21
  %72 = fdiv float %71, %tm.0.lcssa
  store float %72, float* %vcm, align 4, !tbaa !21
  %73 = fdiv float %61, %tm.0.lcssa
  %74 = load float* %acm, align 4, !tbaa !21
  %75 = fsub float %74, %73
  store float %75, float* %acm, align 4, !tbaa !21
  br label %._crit_edge26

._crit_edge26:                                    ; preds = %._crit_edge9, %._crit_edge26
  %indvars.iv.next1437 = phi i64 [ 1, %._crit_edge9 ], [ %indvars.iv.next14, %._crit_edge26 ]
  %.phi.trans.insert27 = getelementptr inbounds float* %xcm, i64 %indvars.iv.next1437
  %.pre28 = load float* %.phi.trans.insert27, align 4, !tbaa !21
  %.phi.trans.insert29 = getelementptr inbounds [3 x float]* %a0, i64 0, i64 %indvars.iv.next1437
  %.pre30 = load float* %.phi.trans.insert29, align 4, !tbaa !21
  %76 = getelementptr inbounds float* %xcm, i64 %indvars.iv.next1437
  %77 = fdiv float %.pre28, %tm.0.lcssa
  store float %77, float* %76, align 4, !tbaa !21
  %78 = getelementptr inbounds float* %vcm, i64 %indvars.iv.next1437
  %79 = load float* %78, align 4, !tbaa !21
  %80 = fdiv float %79, %tm.0.lcssa
  store float %80, float* %78, align 4, !tbaa !21
  %81 = fdiv float %.pre30, %tm.0.lcssa
  %82 = getelementptr inbounds float* %acm, i64 %indvars.iv.next1437
  %83 = load float* %82, align 4, !tbaa !21
  %84 = fsub float %83, %81
  store float %84, float* %82, align 4, !tbaa !21
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv.next1437, 1
  %exitcond15 = icmp eq i64 %indvars.iv.next14, 3
  br i1 %exitcond15, label %85, label %._crit_edge26

; <label>:85                                      ; preds = %._crit_edge26
  %86 = bitcast [3 x float]* %L to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %86, i8 0, i64 36, i32 4, i1 false) #5
  br i1 %7, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %85
  %87 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 0
  %88 = getelementptr inbounds [3 x float]* %L, i64 0, i64 0
  %89 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 1
  %90 = getelementptr inbounds [3 x float]* %L, i64 0, i64 1
  %91 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 2
  %92 = getelementptr inbounds [3 x float]* %L, i64 0, i64 2
  %93 = getelementptr inbounds [3 x float]* %L, i64 1, i64 1
  %94 = getelementptr inbounds [3 x float]* %L, i64 1, i64 2
  %95 = getelementptr inbounds [3 x float]* %L, i64 2, i64 2
  %96 = add i32 %natoms, -1
  br label %97

; <label>:97                                      ; preds = %109, %.lr.ph
  %indvars.iv10 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next11, %109 ]
  %98 = phi <4 x float> [ zeroinitializer, %.lr.ph ], [ %137, %109 ]
  %99 = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %120, %109 ]
  %100 = getelementptr inbounds float* %mass, i64 %indvars.iv10
  %101 = load float* %100, align 4, !tbaa !21
  br label %102

; <label>:102                                     ; preds = %102, %97
  %indvars.iv = phi i64 [ 0, %97 ], [ %indvars.iv.next, %102 ]
  %103 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv10, i64 %indvars.iv
  %104 = load float* %103, align 4, !tbaa !21
  %105 = getelementptr inbounds float* %xcm, i64 %indvars.iv
  %106 = load float* %105, align 4, !tbaa !21
  %107 = fsub float %104, %106
  %108 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 %indvars.iv
  store float %107, float* %108, align 4, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %109, label %102

; <label>:109                                     ; preds = %102
  %110 = load float* %87, align 4, !tbaa !21
  %111 = load float* %89, align 4, !tbaa !21
  %112 = insertelement <2 x float> undef, float %110, i32 0
  %113 = insertelement <2 x float> %112, float %110, i32 1
  %114 = insertelement <2 x float> undef, float %111, i32 0
  %115 = insertelement <2 x float> %114, float %110, i32 1
  %116 = fmul <2 x float> %113, %115
  %117 = insertelement <2 x float> undef, float %101, i32 0
  %118 = insertelement <2 x float> %117, float %101, i32 1
  %119 = fmul <2 x float> %116, %118
  %120 = fadd <2 x float> %99, %119
  %121 = extractelement <2 x float> %120, i32 1
  store float %121, float* %88, align 4, !tbaa !21
  %122 = extractelement <2 x float> %120, i32 0
  store float %122, float* %90, align 4, !tbaa !21
  %123 = load float* %91, align 4, !tbaa !21
  %124 = insertelement <4 x float> undef, float %123, i32 0
  %125 = insertelement <4 x float> %124, float %111, i32 1
  %126 = insertelement <4 x float> %125, float %111, i32 2
  %127 = insertelement <4 x float> %126, float %123, i32 3
  %128 = insertelement <4 x float> %124, float %123, i32 1
  %129 = insertelement <4 x float> %128, float %111, i32 2
  %130 = insertelement <4 x float> %129, float %110, i32 3
  %131 = fmul <4 x float> %127, %130
  %132 = insertelement <4 x float> undef, float %101, i32 0
  %133 = insertelement <4 x float> %132, float %101, i32 1
  %134 = insertelement <4 x float> %133, float %101, i32 2
  %135 = insertelement <4 x float> %134, float %101, i32 3
  %136 = fmul <4 x float> %131, %135
  %137 = fadd <4 x float> %98, %136
  %138 = extractelement <4 x float> %137, i32 3
  store float %138, float* %92, align 4, !tbaa !21
  %139 = extractelement <4 x float> %137, i32 2
  store float %139, float* %93, align 4, !tbaa !21
  %140 = extractelement <4 x float> %137, i32 1
  store float %140, float* %94, align 4, !tbaa !21
  %141 = extractelement <4 x float> %137, i32 0
  store float %141, float* %95, align 4, !tbaa !21
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  %lftr.wideiv = trunc i64 %indvars.iv10 to i32
  %exitcond12 = icmp eq i32 %lftr.wideiv, %96
  br i1 %exitcond12, label %._crit_edge, label %97

._crit_edge:                                      ; preds = %109, %85
  ret float %tm.0.lcssa
}

; Function Attrs: nounwind optsize ssp uwtable
define void @stop_cm(%struct.__sFILE* nocapture readnone %log, i32 %natoms, float* nocapture readonly %mass, [3 x float]* nocapture readonly %x, [3 x float]* nocapture %v) #3 {
  %xcm = alloca [3 x float], align 4
  %vcm = alloca [3 x float], align 4
  %acm = alloca [3 x float], align 4
  %L = alloca [3 x [3 x float]], align 16
  %1 = bitcast [3 x [3 x float]]* %L to i8*
  call void @llvm.lifetime.start(i64 36, i8* %1) #5
  %2 = getelementptr inbounds [3 x float]* %xcm, i64 0, i64 0
  %3 = getelementptr inbounds [3 x float]* %vcm, i64 0, i64 0
  %4 = getelementptr inbounds [3 x float]* %acm, i64 0, i64 0
  %5 = getelementptr inbounds [3 x [3 x float]]* %L, i64 0, i64 0
  %6 = call float @calc_cm(%struct.__sFILE* undef, i32 %natoms, float* %mass, [3 x float]* %x, [3 x float]* %v, float* %2, float* %3, float* %4, [3 x float]* %5) #8
  %7 = icmp sgt i32 %natoms, 0
  br i1 %7, label %.preheader.lr.ph, label %._crit_edge

.preheader.lr.ph:                                 ; preds = %0
  %8 = add i32 %natoms, -1
  br label %.preheader

.preheader:                                       ; preds = %15, %.preheader.lr.ph
  %indvars.iv3 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next4, %15 ]
  br label %9

; <label>:9                                       ; preds = %9, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %9 ]
  %10 = getelementptr inbounds [3 x float]* %vcm, i64 0, i64 %indvars.iv
  %11 = load float* %10, align 4, !tbaa !21
  %12 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv3, i64 %indvars.iv
  %13 = load float* %12, align 4, !tbaa !21
  %14 = fsub float %13, %11
  store float %14, float* %12, align 4, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %15, label %9

; <label>:15                                      ; preds = %9
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1
  %lftr.wideiv = trunc i64 %indvars.iv3 to i32
  %exitcond5 = icmp eq i32 %lftr.wideiv, %8
  br i1 %exitcond5, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %15, %0
  call void @llvm.lifetime.end(i64 36, i8* %1) #5
  ret void
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

declare float @sqrtf(float)

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize }
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
!14 = !{!7, !7, i64 0}
!15 = !{!16, !4, i64 8}
!16 = !{!"", !7, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !7, i64 40, !4, i64 48, !7, i64 56, !4, i64 64, !17, i64 72, !5, i64 1128, !4, i64 1272}
!17 = !{!"", !5, i64 0, !7, i64 1024, !4, i64 1032, !7, i64 1040, !4, i64 1048}
!18 = !{!19, !20, i64 0}
!19 = !{!"", !20, i64 0, !20, i64 4, !20, i64 8, !20, i64 12, !8, i64 16, !8, i64 18, !7, i64 20, !7, i64 24, !5, i64 28, !5, i64 37}
!20 = !{!"float", !5, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!4, !4, i64 0}
!23 = !{!17, !7, i64 1024}
!24 = !{!17, !4, i64 1032}
!25 = !{!17, !4, i64 1048}
!26 = !{!16, !7, i64 0}
