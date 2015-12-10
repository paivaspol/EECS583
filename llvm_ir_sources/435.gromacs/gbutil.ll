; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/gbutil.c'
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
@.str = private unnamed_addr constant [26 x i8] c"Generating configuration\0A\00", align 1

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

; Function Attrs: nounwind optsize readonly ssp uwtable
define float @distance_to_z(float* nocapture readonly %x) #3 {
  %1 = bitcast float* %x to <2 x float>*
  %2 = load <2 x float>* %1, align 4, !tbaa !14
  %3 = fmul <2 x float> %2, %2
  %4 = extractelement <2 x float> %3, i32 0
  %5 = extractelement <2 x float> %3, i32 1
  %6 = fadd float %4, %5
  ret float %6
}

; Function Attrs: nounwind optsize ssp uwtable
define void @rotate_conf(i32 %natom, [3 x float]* %x, [3 x float]* %v, float %alfa, float %beta, float %gamma) #4 {
  %1 = icmp eq [3 x float]* %x, null
  br i1 %1, label %3, label %2

; <label>:2                                       ; preds = %0
  tail call fastcc void @low_rotate_conf(i32 %natom, [3 x float]* %x, float %alfa, float %beta, float %gamma) #8
  br label %3

; <label>:3                                       ; preds = %0, %2
  %4 = icmp eq [3 x float]* %v, null
  br i1 %4, label %6, label %5

; <label>:5                                       ; preds = %3
  tail call fastcc void @low_rotate_conf(i32 %natom, [3 x float]* %v, float %alfa, float %beta, float %gamma) #8
  br label %6

; <label>:6                                       ; preds = %3, %5
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @low_rotate_conf(i32 %natom, [3 x float]* nocapture %x, float %alfa, float %beta, float %gamma) #4 {
  %1 = icmp sgt i32 %natom, 0
  br i1 %1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %2 = fpext float %alfa to double
  %3 = tail call double @cos(double %2) #9
  %4 = tail call double @sin(double %2) #9
  %5 = fpext float %beta to double
  %6 = tail call double @cos(double %5) #9
  %7 = tail call double @sin(double %5) #9
  %8 = fpext float %gamma to double
  %9 = tail call double @cos(double %8) #9
  %10 = tail call double @sin(double %8) #9
  %11 = add i32 %natom, -1
  br label %12

; <label>:12                                      ; preds = %12, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %12 ]
  %13 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv
  %14 = getelementptr inbounds [3 x float]* %13, i64 0, i64 0
  %15 = getelementptr inbounds [3 x float]* %13, i64 0, i64 0
  %16 = load float* %15, align 4, !tbaa !14
  %17 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 1
  %18 = load float* %17, align 4, !tbaa !14
  %19 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 2
  %20 = load float* %19, align 4, !tbaa !14
  %21 = fpext float %18 to double
  %22 = fmul double %21, %3
  %23 = fpext float %20 to double
  %24 = fmul double %23, %4
  %25 = fadd double %22, %24
  %26 = fptrunc double %25 to float
  %27 = fmul double %23, %3
  %28 = fmul double %21, %4
  %29 = fsub double %27, %28
  %30 = fptrunc double %29 to float
  %31 = fpext float %16 to double
  %32 = fmul double %31, %6
  %33 = fpext float %30 to double
  %34 = fmul double %33, %7
  %35 = fsub double %32, %34
  %36 = fptrunc double %35 to float
  %37 = fmul double %6, %33
  %38 = fmul double %31, %7
  %39 = fadd double %37, %38
  %40 = fptrunc double %39 to float
  %41 = fpext float %36 to double
  %42 = fmul double %41, %9
  %43 = fpext float %26 to double
  %44 = fmul double %43, %10
  %45 = fadd double %42, %44
  %46 = fptrunc double %45 to float
  store float %46, float* %14, align 4, !tbaa !14
  %47 = fmul double %43, %9
  %48 = fmul double %41, %10
  %49 = fsub double %47, %48
  %50 = fptrunc double %49 to float
  store float %50, float* %17, align 4, !tbaa !14
  store float %40, float* %19, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %11
  br i1 %exitcond, label %._crit_edge, label %12

._crit_edge:                                      ; preds = %12, %0
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @orient(i32 %natom, [3 x float]* %x, [3 x float]* %v, float* nocapture %angle, [3 x float]* nocapture readnone %box) #4 {
  %dx.i = alloca [3 x float], align 4
  %origin = alloca [3 x float], align 4
  %origin38 = bitcast [3 x float]* %origin to i8*
  %1 = getelementptr inbounds [3 x float]* %x, i64 0, i64 0
  %2 = getelementptr inbounds [3 x float]* %x, i64 1, i64 0
  %3 = bitcast [3 x float]* %dx.i to i8*
  call void @llvm.lifetime.start(i64 12, i8* %3)
  %4 = getelementptr inbounds [3 x float]* %dx.i, i64 0, i64 0
  call void @pbc_dx(float* %1, float* %2, float* %4) #7
  %5 = load float* %4, align 4, !tbaa !14
  %6 = getelementptr inbounds [3 x float]* %dx.i, i64 0, i64 1
  %7 = load float* %6, align 4, !tbaa !14
  %8 = getelementptr inbounds [3 x float]* %dx.i, i64 0, i64 2
  %9 = load float* %8, align 4, !tbaa !14
  call void @llvm.lifetime.end(i64 12, i8* %3)
  %10 = icmp sgt i32 %natom, 0
  br i1 %10, label %.preheader3.lr.ph, label %.preheader2

.preheader3.lr.ph:                                ; preds = %0
  %11 = fmul float %5, %5
  %12 = fmul float %7, %7
  %13 = fadd float %11, %12
  %14 = fmul float %9, %9
  %15 = fadd float %13, %14
  %16 = add i32 %natom, -1
  br label %.lr.ph15

.lr.ph15:                                         ; preds = %.preheader3.lr.ph, %._crit_edge16
  %indvars.iv44 = phi i64 [ 0, %.preheader3.lr.ph ], [ %indvars.iv.next45, %._crit_edge16 ]
  %longest.024 = phi float [ %15, %.preheader3.lr.ph ], [ %longest.2, %._crit_edge16 ]
  %max_j.023 = phi i32 [ 0, %.preheader3.lr.ph ], [ %max_j.2, %._crit_edge16 ]
  %max_i.022 = phi i32 [ 0, %.preheader3.lr.ph ], [ %max_i.2, %._crit_edge16 ]
  %17 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv44, i64 0
  br label %18

; <label>:18                                      ; preds = %18, %.lr.ph15
  %indvars.iv40 = phi i64 [ 0, %.lr.ph15 ], [ %indvars.iv.next41, %18 ]
  %longest.114 = phi float [ %longest.024, %.lr.ph15 ], [ %longest.2, %18 ]
  %max_j.113 = phi i32 [ %max_j.023, %.lr.ph15 ], [ %max_j.2, %18 ]
  %max_i.112 = phi i32 [ %max_i.022, %.lr.ph15 ], [ %max_i.2, %18 ]
  %19 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv40, i64 0
  call void @llvm.lifetime.start(i64 12, i8* %3)
  call void @pbc_dx(float* %17, float* %19, float* %4) #7
  %20 = load float* %4, align 4, !tbaa !14
  %21 = fmul float %20, %20
  %22 = load float* %6, align 4, !tbaa !14
  %23 = fmul float %22, %22
  %24 = fadd float %21, %23
  %25 = load float* %8, align 4, !tbaa !14
  %26 = fmul float %25, %25
  %27 = fadd float %24, %26
  call void @llvm.lifetime.end(i64 12, i8* %3)
  %28 = fcmp ogt float %27, %longest.114
  %29 = trunc i64 %indvars.iv44 to i32
  %max_i.2 = select i1 %28, i32 %29, i32 %max_i.112
  %30 = trunc i64 %indvars.iv40 to i32
  %max_j.2 = select i1 %28, i32 %30, i32 %max_j.113
  %longest.2 = select i1 %28, float %27, float %longest.114
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  %exitcond43 = icmp eq i32 %30, %16
  br i1 %exitcond43, label %._crit_edge16, label %18

._crit_edge16:                                    ; preds = %18
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  %exitcond47 = icmp eq i32 %29, %16
  br i1 %exitcond47, label %.preheader2, label %.lr.ph15

.preheader2:                                      ; preds = %._crit_edge16, %0
  %max_j.0.lcssa = phi i32 [ 0, %0 ], [ %max_j.2, %._crit_edge16 ]
  %max_i.0.lcssa = phi i32 [ 0, %0 ], [ %max_i.2, %._crit_edge16 ]
  %31 = sext i32 %max_i.0.lcssa to i64
  %32 = getelementptr inbounds [3 x float]* %x, i64 %31, i64 2
  %33 = load float* %32, align 4, !tbaa !14
  %34 = sext i32 %max_j.0.lcssa to i64
  %35 = getelementptr inbounds [3 x float]* %x, i64 %34, i64 2
  %36 = load float* %35, align 4, !tbaa !14
  %37 = fcmp ogt float %33, %36
  %max_i.3 = select i1 %37, i32 %max_j.0.lcssa, i32 %max_i.0.lcssa
  %38 = sext i32 %max_i.3 to i64
  %scevgep = getelementptr [3 x float]* %x, i64 %38, i64 0
  %scevgep39 = bitcast float* %scevgep to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %origin38, i8* %scevgep39, i64 12, i32 4, i1 false)
  %max_j.3 = select i1 %37, i32 %max_i.0.lcssa, i32 %max_j.0.lcssa
  br i1 %10, label %.preheader.lr.ph, label %._crit_edge9

.preheader.lr.ph:                                 ; preds = %.preheader2
  %39 = add i32 %natom, -1
  br label %.preheader

.preheader:                                       ; preds = %46, %.preheader.lr.ph
  %indvars.iv31 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next32, %46 ]
  br label %40

; <label>:40                                      ; preds = %40, %.preheader
  %indvars.iv28 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next29, %40 ]
  %41 = getelementptr inbounds [3 x float]* %origin, i64 0, i64 %indvars.iv28
  %42 = load float* %41, align 4, !tbaa !14
  %43 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv31, i64 %indvars.iv28
  %44 = load float* %43, align 4, !tbaa !14
  %45 = fsub float %44, %42
  store float %45, float* %43, align 4, !tbaa !14
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  %exitcond30 = icmp eq i64 %indvars.iv.next29, 3
  br i1 %exitcond30, label %46, label %40

; <label>:46                                      ; preds = %40
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  %lftr.wideiv33 = trunc i64 %indvars.iv31 to i32
  %exitcond34 = icmp eq i32 %lftr.wideiv33, %39
  br i1 %exitcond34, label %._crit_edge9, label %.preheader

._crit_edge9:                                     ; preds = %46, %.preheader2
  %47 = sext i32 %max_j.3 to i64
  %48 = getelementptr inbounds [3 x float]* %x, i64 %47, i64 2
  %49 = load float* %48, align 4, !tbaa !14
  %50 = getelementptr inbounds [3 x float]* %x, i64 %47, i64 1
  %51 = load float* %50, align 4, !tbaa !14
  %52 = fdiv float %49, %51
  %53 = fpext float %52 to double
  %54 = call double @atan(double %53) #9
  %55 = fadd double %54, 0xBFF921FB54442D18
  %56 = fptrunc double %55 to float
  %57 = getelementptr inbounds [3 x float]* %x, i64 %47, i64 0
  %58 = load float* %57, align 4, !tbaa !14
  %59 = fdiv float %49, %58
  %60 = fpext float %59 to double
  %61 = call double @atan(double %60) #9
  %62 = fsub double 0x3FF921FB54442D18, %61
  %63 = fptrunc double %62 to float
  call void @rotate_conf(i32 %natom, [3 x float]* %x, [3 x float]* %v, float %56, float %63, float 0.000000e+00) #8
  %64 = load float* %1, align 4, !tbaa !14
  %65 = getelementptr inbounds [3 x float]* %x, i64 0, i64 1
  %66 = load float* %65, align 4, !tbaa !14
  %67 = icmp sgt i32 %natom, 1
  br i1 %67, label %.lr.ph, label %82

.lr.ph:                                           ; preds = %._crit_edge9
  %68 = fmul float %64, %64
  %69 = fmul float %66, %66
  %70 = fadd float %68, %69
  %71 = add i32 %natom, -1
  br label %72

; <label>:72                                      ; preds = %72, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %72 ]
  %longest.36 = phi float [ %70, %.lr.ph ], [ %longest.4, %72 ]
  %max_i.45 = phi i32 [ 0, %.lr.ph ], [ %max_i.5, %72 ]
  %73 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 0
  %74 = bitcast float* %73 to <2 x float>*
  %75 = load <2 x float>* %74, align 4, !tbaa !14
  %76 = fmul <2 x float> %75, %75
  %77 = extractelement <2 x float> %76, i32 0
  %78 = extractelement <2 x float> %76, i32 1
  %79 = fadd float %77, %78
  %80 = fcmp ogt float %79, %longest.36
  %81 = trunc i64 %indvars.iv to i32
  %max_i.5 = select i1 %80, i32 %81, i32 %max_i.45
  %longest.4 = select i1 %80, float %79, float %longest.36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i32 %81, %71
  br i1 %exitcond, label %._crit_edge, label %72

._crit_edge:                                      ; preds = %72
  %phitmp = sext i32 %max_i.5 to i64
  %.phi.trans.insert = getelementptr inbounds [3 x float]* %x, i64 %phitmp, i64 1
  %.pre = load float* %.phi.trans.insert, align 4, !tbaa !14
  %.phi.trans.insert48 = getelementptr inbounds [3 x float]* %x, i64 %phitmp, i64 0
  %.pre49 = load float* %.phi.trans.insert48, align 4, !tbaa !14
  br label %82

; <label>:82                                      ; preds = %._crit_edge, %._crit_edge9
  %83 = phi float [ %.pre49, %._crit_edge ], [ %64, %._crit_edge9 ]
  %84 = phi float [ %.pre, %._crit_edge ], [ %66, %._crit_edge9 ]
  %85 = fdiv float %84, %83
  %86 = fpext float %85 to double
  %87 = call double @atan(double %86) #9
  %88 = fadd double %87, 0xBFF921FB54442D18
  %89 = fptrunc double %88 to float
  call void @rotate_conf(i32 %natom, [3 x float]* %x, [3 x float]* %v, float 0.000000e+00, float 0.000000e+00, float %89) #8
  store float %56, float* %angle, align 4, !tbaa !14
  %90 = getelementptr inbounds float* %angle, i64 1
  store float %63, float* %90, align 4, !tbaa !14
  %91 = getelementptr inbounds float* %angle, i64 2
  store float %89, float* %91, align 4, !tbaa !14
  ret void
}

; Function Attrs: nounwind optsize readnone
declare double @atan(double) #5

; Function Attrs: nounwind optsize ssp uwtable
define void @genconf(%struct.t_atoms* nocapture %atoms, [3 x float]* nocapture %x, [3 x float]* %v, float* nocapture %r, [3 x float]* nocapture %box, i32* nocapture readonly %n_box) #4 {
  %delta = alloca [3 x float], align 4
  %1 = load i32* %n_box, align 4, !tbaa !16
  %2 = getelementptr inbounds i32* %n_box, i64 1
  %3 = load i32* %2, align 4, !tbaa !16
  %4 = mul i32 %3, %1
  %5 = getelementptr inbounds i32* %n_box, i64 2
  %6 = load i32* %5, align 4, !tbaa !16
  %7 = mul i32 %4, %6
  %8 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !17
  %9 = tail call i64 @fwrite(i8* getelementptr inbounds ([26 x i8]* @.str, i64 0, i64 0), i64 25, i64 1, %struct.__sFILE* %8)
  %10 = load i32* %n_box, align 4, !tbaa !16
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %.lr.ph31, label %..preheader1_crit_edge50

..preheader1_crit_edge50:                         ; preds = %0
  %.pre51 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0
  br label %.preheader1

.lr.ph31:                                         ; preds = %0
  %12 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %13 = getelementptr inbounds [3 x float]* %delta, i64 0, i64 0
  %14 = load i32* %2, align 4, !tbaa !16
  %15 = icmp sgt i32 %14, 0
  %16 = getelementptr inbounds [3 x float]* %box, i64 1, i64 1
  %17 = getelementptr inbounds [3 x float]* %delta, i64 0, i64 1
  %18 = getelementptr inbounds [3 x float]* %box, i64 2, i64 2
  %19 = getelementptr inbounds [3 x float]* %delta, i64 0, i64 2
  %20 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 0
  %21 = icmp eq [3 x float]* %v, null
  br label %31

.preheader1:                                      ; preds = %._crit_edge26, %..preheader1_crit_edge50
  %.pre-phi52 = phi i32* [ %.pre51, %..preheader1_crit_edge50 ], [ %20, %._crit_edge26 ]
  %22 = icmp sgt i32 %7, 1
  %23 = load i32* %.pre-phi52, align 4, !tbaa !18
  %24 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 5
  %25 = load i32* %24, align 4, !tbaa !21
  br i1 %22, label %.lr.ph9, label %._crit_edge10

.lr.ph9:                                          ; preds = %.preheader1
  %26 = icmp sgt i32 %23, 0
  %27 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 2
  %28 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 1
  %29 = getelementptr inbounds %struct.t_atoms* %atoms, i64 0, i32 6
  %30 = add i32 %7, -1
  br label %81

; <label>:31                                      ; preds = %.lr.ph31, %._crit_edge26
  %ix.029 = phi i32 [ 0, %.lr.ph31 ], [ %79, %._crit_edge26 ]
  %imol.028 = phi i32 [ 0, %.lr.ph31 ], [ %imol.1.lcssa, %._crit_edge26 ]
  %32 = sitofp i32 %ix.029 to float
  %33 = load float* %12, align 4, !tbaa !14
  %34 = fmul float %32, %33
  store float %34, float* %13, align 4, !tbaa !14
  br i1 %15, label %.lr.ph25, label %._crit_edge26

.lr.ph25:                                         ; preds = %31
  %35 = load i32* %5, align 4, !tbaa !16
  %36 = icmp sgt i32 %35, 0
  br label %37

; <label>:37                                      ; preds = %.lr.ph25, %76
  %iy.023 = phi i32 [ 0, %.lr.ph25 ], [ %77, %76 ]
  %imol.122 = phi i32 [ %imol.028, %.lr.ph25 ], [ %imol.2.lcssa, %76 ]
  %38 = sitofp i32 %iy.023 to float
  %39 = load float* %16, align 4, !tbaa !14
  %40 = fmul float %38, %39
  store float %40, float* %17, align 4, !tbaa !14
  br i1 %36, label %.lr.ph19, label %76

.lr.ph19:                                         ; preds = %37
  %41 = load i32* %20, align 4, !tbaa !18
  %42 = icmp sgt i32 %41, 0
  %43 = sext i32 %imol.122 to i64
  %44 = sext i32 %41 to i64
  %45 = icmp sgt i32 %35, 1
  %.op = add i32 %35, -1
  %46 = select i1 %45, i32 %.op, i32 0
  br label %47

; <label>:47                                      ; preds = %.lr.ph19, %._crit_edge15
  %indvars.iv48 = phi i64 [ %43, %.lr.ph19 ], [ %indvars.iv.next49, %._crit_edge15 ]
  %iz.017 = phi i32 [ 0, %.lr.ph19 ], [ %72, %._crit_edge15 ]
  %48 = sitofp i32 %iz.017 to float
  %49 = load float* %18, align 4, !tbaa !14
  %50 = fmul float %48, %49
  store float %50, float* %19, align 4, !tbaa !14
  %51 = mul nsw i64 %44, %indvars.iv48
  br i1 %42, label %.preheader3, label %._crit_edge15

.preheader3:                                      ; preds = %47, %.loopexit
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %.loopexit ], [ 0, %47 ]
  %52 = add nsw i64 %indvars.iv45, %51
  br label %53

; <label>:53                                      ; preds = %53, %.preheader3
  %indvars.iv38 = phi i64 [ 0, %.preheader3 ], [ %indvars.iv.next39, %53 ]
  %54 = getelementptr inbounds [3 x float]* %delta, i64 0, i64 %indvars.iv38
  %55 = load float* %54, align 4, !tbaa !14
  %56 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv45, i64 %indvars.iv38
  %57 = load float* %56, align 4, !tbaa !14
  %58 = fadd float %55, %57
  %59 = getelementptr inbounds [3 x float]* %x, i64 %52, i64 %indvars.iv38
  store float %58, float* %59, align 4, !tbaa !14
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  %exitcond40 = icmp eq i64 %indvars.iv.next39, 3
  br i1 %exitcond40, label %60, label %53

; <label>:60                                      ; preds = %53
  br i1 %21, label %.loopexit, label %.preheader2

.preheader2:                                      ; preds = %60, %.preheader2
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %.preheader2 ], [ 0, %60 ]
  %61 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv45, i64 %indvars.iv41
  %62 = bitcast float* %61 to i32*
  %63 = load i32* %62, align 4, !tbaa !14
  %64 = getelementptr inbounds [3 x float]* %v, i64 %52, i64 %indvars.iv41
  %65 = bitcast float* %64 to i32*
  store i32 %63, i32* %65, align 4, !tbaa !14
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  %exitcond43 = icmp eq i64 %indvars.iv.next42, 3
  br i1 %exitcond43, label %.loopexit, label %.preheader2

.loopexit:                                        ; preds = %.preheader2, %60
  %66 = getelementptr inbounds float* %r, i64 %indvars.iv45
  %67 = bitcast float* %66 to i32*
  %68 = load i32* %67, align 4, !tbaa !14
  %69 = getelementptr inbounds float* %r, i64 %52
  %70 = bitcast float* %69 to i32*
  store i32 %68, i32* %70, align 4, !tbaa !14
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  %71 = icmp slt i64 %indvars.iv.next46, %44
  br i1 %71, label %.preheader3, label %._crit_edge15

._crit_edge15:                                    ; preds = %.loopexit, %47
  %indvars.iv.next49 = add nsw i64 %indvars.iv48, 1
  %72 = add nuw nsw i32 %iz.017, 1
  %73 = icmp slt i32 %72, %35
  br i1 %73, label %47, label %._crit_edge20

._crit_edge20:                                    ; preds = %._crit_edge15
  %74 = add i32 %imol.122, 1
  %75 = add i32 %74, %46
  br label %76

; <label>:76                                      ; preds = %._crit_edge20, %37
  %imol.2.lcssa = phi i32 [ %75, %._crit_edge20 ], [ %imol.122, %37 ]
  %77 = add nuw nsw i32 %iy.023, 1
  %78 = icmp slt i32 %77, %14
  br i1 %78, label %37, label %._crit_edge26

._crit_edge26:                                    ; preds = %76, %31
  %imol.1.lcssa = phi i32 [ %imol.028, %31 ], [ %imol.2.lcssa, %76 ]
  %79 = add nuw nsw i32 %ix.029, 1
  %80 = icmp slt i32 %79, %10
  br i1 %80, label %31, label %.preheader1

; <label>:81                                      ; preds = %._crit_edge, %.lr.ph9
  %i.18 = phi i32 [ 1, %.lr.ph9 ], [ %109, %._crit_edge ]
  %82 = mul nsw i32 %25, %i.18
  br i1 %26, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %81
  %83 = mul nsw i32 %23, %i.18
  %84 = sext i32 %83 to i64
  %85 = sext i32 %23 to i64
  br label %86

; <label>:86                                      ; preds = %.lr.ph, %86
  %indvars.iv35 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next36, %86 ]
  %87 = load i8**** %27, align 8, !tbaa !22
  %88 = getelementptr inbounds i8*** %87, i64 %indvars.iv35
  %89 = bitcast i8*** %88 to i64*
  %90 = load i64* %89, align 8, !tbaa !17
  %91 = add nsw i64 %indvars.iv35, %84
  %92 = getelementptr inbounds i8*** %87, i64 %91
  %93 = bitcast i8*** %92 to i64*
  store i64 %90, i64* %93, align 8, !tbaa !17
  %94 = load %struct.t_atom** %28, align 8, !tbaa !23
  %95 = getelementptr inbounds %struct.t_atom* %94, i64 %indvars.iv35, i32 7
  %96 = load i32* %95, align 4, !tbaa !24
  %97 = add nsw i32 %96, %82
  %98 = getelementptr inbounds %struct.t_atom* %94, i64 %91, i32 7
  store i32 %97, i32* %98, align 4, !tbaa !24
  %99 = load i32* %95, align 4, !tbaa !24
  %100 = sext i32 %99 to i64
  %101 = load i8**** %29, align 8, !tbaa !26
  %102 = getelementptr inbounds i8*** %101, i64 %100
  %103 = bitcast i8*** %102 to i64*
  %104 = load i64* %103, align 8, !tbaa !17
  %105 = sext i32 %97 to i64
  %106 = getelementptr inbounds i8*** %101, i64 %105
  %107 = bitcast i8*** %106 to i64*
  store i64 %104, i64* %107, align 8, !tbaa !17
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  %108 = icmp slt i64 %indvars.iv.next36, %85
  br i1 %108, label %86, label %._crit_edge

._crit_edge:                                      ; preds = %86, %81
  %109 = add nuw nsw i32 %i.18, 1
  %exitcond37 = icmp eq i32 %i.18, %30
  br i1 %exitcond37, label %._crit_edge10, label %81

._crit_edge10:                                    ; preds = %._crit_edge, %.preheader1
  %110 = mul nsw i32 %23, %7
  store i32 %110, i32* %.pre-phi52, align 4, !tbaa !18
  %111 = mul nsw i32 %25, %7
  store i32 %111, i32* %24, align 4, !tbaa !21
  br label %.preheader

.preheader:                                       ; preds = %119, %._crit_edge10
  %indvars.iv32 = phi i64 [ 0, %._crit_edge10 ], [ %indvars.iv.next33, %119 ]
  br label %112

; <label>:112                                     ; preds = %112, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %112 ]
  %113 = getelementptr inbounds i32* %n_box, i64 %indvars.iv
  %114 = load i32* %113, align 4, !tbaa !16
  %115 = sitofp i32 %114 to float
  %116 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 %indvars.iv32
  %117 = load float* %116, align 4, !tbaa !14
  %118 = fmul float %117, %115
  store float %118, float* %116, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %119, label %112

; <label>:119                                     ; preds = %112
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  %exitcond34 = icmp eq i64 %indvars.iv.next33, 3
  br i1 %exitcond34, label %120, label %.preheader

; <label>:120                                     ; preds = %119
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @gen_box(i32 %NTB, i32 %natoms, [3 x float]* nocapture %x, [3 x float]* nocapture %box, float* nocapture readonly %box_space, i32 %bCenter) #4 {
.preheader6:
  %x39 = bitcast [3 x float]* %x to i8*
  %xmin = alloca [3 x float], align 4
  %xmin40 = bitcast [3 x float]* %xmin to i8*
  %xmax = alloca [3 x float], align 4
  %xmax38 = bitcast [3 x float]* %xmax to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %xmax38, i8* %x39, i64 12, i32 4, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %xmin40, i8* %x39, i64 12, i32 4, i1 false)
  %0 = icmp sgt i32 %natoms, 1
  br i1 %0, label %.preheader5.lr.ph, label %.preheader4

.preheader5.lr.ph:                                ; preds = %.preheader6
  %1 = add i32 %natoms, -1
  br label %.preheader5

.preheader5:                                      ; preds = %12, %.preheader5.lr.ph
  %indvars.iv31 = phi i64 [ 1, %.preheader5.lr.ph ], [ %indvars.iv.next32, %12 ]
  br label %2

; <label>:2                                       ; preds = %2, %.preheader5
  %indvars.iv28 = phi i64 [ 0, %.preheader5 ], [ %indvars.iv.next29, %2 ]
  %3 = getelementptr inbounds [3 x float]* %xmin, i64 0, i64 %indvars.iv28
  %4 = load float* %3, align 4, !tbaa !14
  %5 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv31, i64 %indvars.iv28
  %6 = load float* %5, align 4, !tbaa !14
  %7 = fcmp olt float %4, %6
  %. = select i1 %7, float %4, float %6
  store float %., float* %3, align 4, !tbaa !14
  %8 = getelementptr inbounds [3 x float]* %xmax, i64 0, i64 %indvars.iv28
  %9 = load float* %8, align 4, !tbaa !14
  %10 = fcmp ogt float %9, %6
  %11 = select i1 %10, float %9, float %6
  store float %11, float* %8, align 4, !tbaa !14
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  %exitcond30 = icmp eq i64 %indvars.iv.next29, 3
  br i1 %exitcond30, label %12, label %2

; <label>:12                                      ; preds = %2
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  %lftr.wideiv33 = trunc i64 %indvars.iv31 to i32
  %exitcond34 = icmp eq i32 %lftr.wideiv33, %1
  br i1 %exitcond34, label %.preheader4, label %.preheader5

.preheader4:                                      ; preds = %.preheader6, %12, %.preheader4
  %indvars.iv25 = phi i64 [ %indvars.iv.next26, %.preheader4 ], [ 0, %12 ], [ 0, %.preheader6 ]
  %13 = getelementptr inbounds [3 x float]* %xmax, i64 0, i64 %indvars.iv25
  %14 = load float* %13, align 4, !tbaa !14
  %15 = getelementptr inbounds [3 x float]* %xmin, i64 0, i64 %indvars.iv25
  %16 = load float* %15, align 4, !tbaa !14
  %17 = fsub float %14, %16
  %18 = getelementptr inbounds float* %box_space, i64 %indvars.iv25
  %19 = load float* %18, align 4, !tbaa !14
  %20 = fmul float %19, 2.000000e+00
  %21 = fadd float %17, %20
  %22 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv25, i64 %indvars.iv25
  store float %21, float* %22, align 4, !tbaa !14
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  %exitcond27 = icmp eq i64 %indvars.iv.next26, 3
  br i1 %exitcond27, label %23, label %.preheader4

; <label>:23                                      ; preds = %.preheader4
  %24 = icmp eq i32 %NTB, 1
  br i1 %24, label %25, label %.loopexit3

; <label>:25                                      ; preds = %23
  %26 = getelementptr inbounds [3 x float]* %box, i64 0, i64 0
  %27 = load float* %26, align 4, !tbaa !14
  br label %._crit_edge

._crit_edge:                                      ; preds = %25, %._crit_edge
  %indvars.iv.next2342 = phi i64 [ 1, %25 ], [ %indvars.iv.next23, %._crit_edge ]
  %max_box.0.41 = phi float [ %27, %25 ], [ %max_box.0., %._crit_edge ]
  %.phi.trans.insert = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv.next2342, i64 %indvars.iv.next2342
  %.pre = load float* %.phi.trans.insert, align 4, !tbaa !14
  %28 = fcmp ogt float %max_box.0.41, %.pre
  %max_box.0. = select i1 %28, float %max_box.0.41, float %.pre
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv.next2342, 1
  %exitcond24 = icmp eq i64 %indvars.iv.next23, 3
  br i1 %exitcond24, label %.preheader2, label %._crit_edge

.preheader2:                                      ; preds = %._crit_edge, %.preheader2
  %indvars.iv19 = phi i64 [ %indvars.iv.next20, %.preheader2 ], [ 0, %._crit_edge ]
  %29 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv19, i64 %indvars.iv19
  store float %max_box.0., float* %29, align 4, !tbaa !14
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  %exitcond21 = icmp eq i64 %indvars.iv.next20, 3
  br i1 %exitcond21, label %.loopexit3, label %.preheader2

.loopexit3:                                       ; preds = %.preheader2, %23
  %30 = icmp ne i32 %bCenter, 0
  %31 = icmp sgt i32 %natoms, 0
  %or.cond = and i1 %30, %31
  br i1 %or.cond, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.loopexit3
  %32 = add i32 %natoms, -1
  br label %.preheader

.preheader:                                       ; preds = %49, %.preheader.lr.ph
  %indvars.iv16 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next17, %49 ]
  br label %33

; <label>:33                                      ; preds = %33, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %33 ]
  %34 = getelementptr inbounds [3 x float]* %box, i64 %indvars.iv, i64 %indvars.iv
  %35 = load float* %34, align 4, !tbaa !14
  %36 = getelementptr inbounds [3 x float]* %xmin, i64 0, i64 %indvars.iv
  %37 = load float* %36, align 4, !tbaa !14
  %38 = fsub float %35, %37
  %39 = getelementptr inbounds [3 x float]* %xmax, i64 0, i64 %indvars.iv
  %40 = load float* %39, align 4, !tbaa !14
  %41 = fsub float %38, %40
  %42 = fpext float %41 to double
  %43 = fmul double %42, 5.000000e-01
  %44 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv16, i64 %indvars.iv
  %45 = load float* %44, align 4, !tbaa !14
  %46 = fpext float %45 to double
  %47 = fadd double %46, %43
  %48 = fptrunc double %47 to float
  store float %48, float* %44, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %49, label %33

; <label>:49                                      ; preds = %33
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  %lftr.wideiv = trunc i64 %indvars.iv16 to i32
  %exitcond18 = icmp eq i32 %lftr.wideiv, %32
  br i1 %exitcond18, label %.loopexit, label %.preheader

.loopexit:                                        ; preds = %49, %.loopexit3
  ret void
}

; Function Attrs: nounwind optsize readnone
declare double @cos(double) #5

; Function Attrs: nounwind optsize readnone
declare double @sin(double) #5

; Function Attrs: optsize
declare void @pbc_dx(float*, float*, float*) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #6

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #6

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #6

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #6

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nounwind optsize }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize readnone }

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
!16 = !{!7, !7, i64 0}
!17 = !{!4, !4, i64 0}
!18 = !{!19, !7, i64 0}
!19 = !{!"", !7, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !7, i64 40, !4, i64 48, !7, i64 56, !4, i64 64, !20, i64 72, !5, i64 1128, !4, i64 1272}
!20 = !{!"", !5, i64 0, !7, i64 1024, !4, i64 1032, !7, i64 1040, !4, i64 1048}
!21 = !{!19, !7, i64 40}
!22 = !{!19, !4, i64 16}
!23 = !{!19, !4, i64 8}
!24 = !{!25, !7, i64 24}
!25 = !{!"", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !8, i64 16, !8, i64 18, !7, i64 20, !7, i64 24, !5, i64 28, !5, i64 37}
!26 = !{!19, !4, i64 48}
