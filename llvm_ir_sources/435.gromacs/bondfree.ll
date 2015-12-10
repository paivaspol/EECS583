; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/bondfree.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.t_interaction_function = type { i8*, i8*, i32, i32, i32, i64, i32, float (i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*)* }
%union.t_iparams = type { %struct.anon.2 }
%struct.anon.2 = type { float, float, float, float, float, float }
%struct.t_forcerec = type { i32, float, float, float, float, float, float, i32, float, float, float, float, float, i32, i32, float, i32, float, float*, float*, float*, float*, float, float, float*, float, float, float, float, i32, float, float, i32, i32, i32, i32, i32, i32, i32, i32, [3 x float], i32, i32, i32, i32, i32*, i32*, [3 x float]*, [3 x float]*, [13 x %struct.t_nblist], [13 x %struct.t_nblist], i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, i32, float, [3 x float]*, i32, i32*, float*, i32, i32, i32, float*, i32*, float }
%struct.t_nblist = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32* }
%struct.t_graph = type { i32, i32, i32, i32, i32, i32*, i32**, [3 x i32]* }
%struct.t_mdatoms = type { float, i32, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, i32*, i32*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16* }
%struct.t_fcdata = type { %struct.t_disresdata, %struct.t_oriresdata }
%struct.t_disresdata = type { i32, i32, float, float, float, float, float, i32, i32, float, float*, float*, float*, float*, float* }
%struct.t_oriresdata = type { float, float, float, float, i32, i32, i32, float, float*, [3 x float]*, [3 x float]*, [3 x [3 x float]], [3 x [3 x float]]*, [5 x float]*, [5 x float]*, [5 x float]*, float*, float*, float*, float, [5 x float]*, float*** }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }
%struct.t_idef = type { i32, i32, i32, i32*, %union.t_iparams*, [44 x %struct.t_ilist] }
%struct.t_ilist = type { i32, [256 x i32], i32* }
%struct.t_nrnb = type { [129 x double] }

@calc_bonds.bFirst = internal unnamed_addr global i1 false
@.str = private unnamed_addr constant [41 x i8] c"Step %d: bonded V and dVdl for node %d:\0A\00", align 1
@interaction_function = external global [44 x %struct.t_interaction_function]
@.str1 = private unnamed_addr constant [37 x i8] c"  %-15s #%4d  V %12.5e  dVdl %12.5e\0A\00", align 1
@debug = external global %struct.__sFILE*
@.str2 = private unnamed_addr constant [48 x i8] c"WPOL: kk  = %10.3f        %10.3f        %10.3f\0A\00", align 1
@.str3 = private unnamed_addr constant [48 x i8] c"WPOL: rOH = %10.3f  rHH = %10.3f  rOD = %10.3f\0A\00", align 1
@.str4 = private unnamed_addr constant [45 x i8] c"*** you are using a not implemented function\00", align 1

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
  %16 = tail call i32 @__swbuf(i32 %_c, %struct.__sFILE* %_p) #9
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
define void @pbc_rvec_sub(float* nocapture readonly %xi, float* nocapture readonly %xj, float* nocapture %dx) #3 {
  %1 = load float* %xi, align 4, !tbaa !14
  %2 = load float* %xj, align 4, !tbaa !14
  %3 = fsub float %1, %2
  %4 = getelementptr inbounds float* %xi, i64 1
  %5 = load float* %4, align 4, !tbaa !14
  %6 = getelementptr inbounds float* %xj, i64 1
  %7 = load float* %6, align 4, !tbaa !14
  %8 = fsub float %5, %7
  %9 = getelementptr inbounds float* %xi, i64 2
  %10 = load float* %9, align 4, !tbaa !14
  %11 = getelementptr inbounds float* %xj, i64 2
  %12 = load float* %11, align 4, !tbaa !14
  %13 = fsub float %10, %12
  store float %3, float* %dx, align 4, !tbaa !14
  %14 = getelementptr inbounds float* %dx, i64 1
  store float %8, float* %14, align 4, !tbaa !14
  %15 = getelementptr inbounds float* %dx, i64 2
  store float %13, float* %15, align 4, !tbaa !14
  ret void
}

; Function Attrs: optsize
declare void @pbc_dx(float*, float*, float*) #1

; Function Attrs: nounwind optsize readnone ssp uwtable
define void @set_gmx_full_pbc(%struct.__sFILE* nocapture %fp) #4 {
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define void @calc_bonds(%struct.__sFILE* %log, %struct.t_commrec* nocapture readonly %cr, %struct.t_commrec* %mcr, %struct.t_idef* nocapture readonly %idef, [3 x float]* %x_s, [3 x float]* %f, %struct.t_forcerec* %fr, %struct.t_graph* %g, float* nocapture %epot, %struct.t_nrnb* nocapture %nrnb, [3 x float]* %box, float %lambda, %struct.t_mdatoms* %md, i32 %ngrp, float* %egnb, float* %egcoul, %struct.t_fcdata* %fcd, i32 %step, i32 %bSepDVDL) #3 {
  %dvdl = alloca float, align 4
  %1 = icmp ne i32 %bSepDVDL, 0
  %2 = icmp ne %struct.__sFILE* %log, null
  %or.cond = and i1 %2, %1
  br i1 %or.cond, label %3, label %7

; <label>:3                                       ; preds = %0
  %4 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %5 = load i32* %4, align 4, !tbaa !16
  %6 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([41 x i8]* @.str, i64 0, i64 0), i32 %step, i32 %5) #9
  br label %7

; <label>:7                                       ; preds = %3, %0
  %.b = load i1* @calc_bonds.bFirst, align 1
  br i1 %.b, label %9, label %8

; <label>:8                                       ; preds = %7
  store i1 true, i1* @calc_bonds.bFirst, align 1
  br label %9

; <label>:9                                       ; preds = %7, %8
  %10 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 23, i32 0
  %11 = load i32* %10, align 4, !tbaa !18
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %20, label %13

; <label>:13                                      ; preds = %9
  %14 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 23, i32 2
  %15 = load i32** %14, align 8, !tbaa !20
  %16 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 4
  %17 = load %union.t_iparams** %16, align 8, !tbaa !21
  %18 = tail call float @calc_orires_dev(%struct.t_commrec* %mcr, i32 %11, i32* %15, %union.t_iparams* %17, %struct.t_mdatoms* %md, [3 x float]* %x_s, %struct.t_fcdata* %fcd) #9
  %19 = getelementptr inbounds float* %epot, i64 24
  store float %18, float* %19, align 4, !tbaa !14
  br label %20

; <label>:20                                      ; preds = %9, %13
  %21 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 21, i32 0
  %22 = load i32* %21, align 4, !tbaa !18
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %..preheader_crit_edge, label %24

..preheader_crit_edge:                            ; preds = %20
  %.pre = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 4
  br label %.preheader

; <label>:24                                      ; preds = %20
  %25 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 21, i32 2
  %26 = load i32** %25, align 8, !tbaa !20
  %27 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 4
  %28 = load %union.t_iparams** %27, align 8, !tbaa !21
  tail call void @calc_disres_R_6(%struct.t_commrec* %mcr, i32 %22, i32* %26, %union.t_iparams* %28, [3 x float]* %x_s, %struct.t_fcdata* %fcd) #9
  br label %.preheader

.preheader:                                       ; preds = %..preheader_crit_edge, %24
  %.pre-phi = phi %union.t_iparams** [ %.pre, %..preheader_crit_edge ], [ %27, %24 ]
  %29 = getelementptr inbounds float* %epot, i64 42
  br label %30

; <label>:30                                      ; preds = %75, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %75 ]
  %31 = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %indvars.iv, i32 5
  %32 = load i64* %31, align 8, !tbaa !23
  %33 = and i64 %32, 1
  %34 = icmp ne i64 %33, 0
  %35 = trunc i64 %indvars.iv to i32
  %36 = icmp ne i32 %35, 4
  %or.cond3 = and i1 %36, %34
  br i1 %or.cond3, label %37, label %75

; <label>:37                                      ; preds = %30
  %38 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 %indvars.iv, i32 0
  %39 = load i32* %38, align 4, !tbaa !18
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %75

; <label>:41                                      ; preds = %37
  store float 0.000000e+00, float* %dvdl, align 4, !tbaa !14
  %42 = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %indvars.iv, i32 7
  %43 = load float (i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*)** %42, align 8, !tbaa !26
  %44 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 %indvars.iv, i32 2
  %45 = load i32** %44, align 8, !tbaa !20
  %46 = load %union.t_iparams** %.pre-phi, align 8, !tbaa !21
  %47 = call float %43(i32 %39, i32* %45, %union.t_iparams* %46, [3 x float]* %x_s, [3 x float]* %f, %struct.t_forcerec* %fr, %struct.t_graph* %g, [3 x float]* %box, float %lambda, float* %dvdl, %struct.t_mdatoms* %md, i32 %ngrp, float* %egnb, float* %egcoul, %struct.t_fcdata* %fcd) #9
  %48 = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %indvars.iv, i32 6
  %49 = load i32* %48, align 8, !tbaa !27
  %50 = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %indvars.iv, i32 2
  %51 = load i32* %50, align 8, !tbaa !28
  %52 = add nsw i32 %51, 1
  %53 = icmp eq i32 %49, -1
  br i1 %53, label %61, label %54

; <label>:54                                      ; preds = %41
  %55 = sdiv i32 %39, %52
  %56 = sitofp i32 %55 to double
  %57 = sext i32 %49 to i64
  %58 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 %57
  %59 = load double* %58, align 8, !tbaa !29
  %60 = fadd double %59, %56
  store double %60, double* %58, align 8, !tbaa !29
  br label %61

; <label>:61                                      ; preds = %41, %54
  %62 = getelementptr inbounds float* %epot, i64 %indvars.iv
  %63 = load float* %62, align 4, !tbaa !14
  %64 = fadd float %47, %63
  store float %64, float* %62, align 4, !tbaa !14
  %65 = load float* %dvdl, align 4, !tbaa !14
  %66 = load float* %29, align 4, !tbaa !14
  %67 = fadd float %65, %66
  store float %67, float* %29, align 4, !tbaa !14
  br i1 %or.cond, label %68, label %75

; <label>:68                                      ; preds = %61
  %69 = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %indvars.iv, i32 1
  %70 = load i8** %69, align 8, !tbaa !31
  %71 = sdiv i32 %39, %52
  %72 = fpext float %47 to double
  %73 = fpext float %65 to double
  %74 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([37 x i8]* @.str1, i64 0, i64 0), i8* %70, i32 %71, double %72, double %73) #9
  br label %75

; <label>:75                                      ; preds = %30, %61, %68, %37
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 44
  br i1 %exitcond, label %76, label %30

; <label>:76                                      ; preds = %75
  %77 = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 9
  %78 = bitcast float* %77 to i32*
  %79 = load i32* %78, align 4, !tbaa !32
  %80 = getelementptr inbounds float* %epot, i64 22
  %81 = bitcast float* %80 to i32*
  store i32 %79, i32* %81, align 4, !tbaa !14
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #5

; Function Attrs: optsize
declare float @calc_orires_dev(%struct.t_commrec*, i32, i32*, %union.t_iparams*, %struct.t_mdatoms*, [3 x float]*, %struct.t_fcdata*) #1

; Function Attrs: optsize
declare void @calc_disres_R_6(%struct.t_commrec*, i32, i32*, %union.t_iparams*, [3 x float]*, %struct.t_fcdata*) #1

; Function Attrs: nounwind optsize ssp uwtable
define float @morsebonds(i32 %nbonds, i32* nocapture readonly %forceatoms, %union.t_iparams* nocapture readonly %forceparams, [3 x float]* nocapture readonly %x, [3 x float]* nocapture %f, %struct.t_forcerec* nocapture readonly %fr, %struct.t_graph* nocapture readonly %g, [3 x float]* nocapture readnone %box, float %lambda, float* nocapture readnone %dvdl, %struct.t_mdatoms* nocapture readnone %md, i32 %ngrp, float* nocapture readnone %egnb, float* nocapture readnone %egcoul, %struct.t_fcdata* nocapture readnone %fcd) #3 {
  %dx = alloca [3 x float], align 4
  %1 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 0
  %2 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 1
  %3 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 2
  %4 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 3
  %5 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 7
  %6 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 58
  %7 = sext i32 %nbonds to i64
  br label %.outer

.loopexit:                                        ; preds = %103
  %8 = fmul float %65, %66
  %9 = fadd float %vtot.0.ph, %8
  br label %.outer

.outer:                                           ; preds = %.loopexit, %0
  %i.0.ph = phi i32 [ %20, %.loopexit ], [ 0, %0 ]
  %vtot.0.ph = phi float [ %9, %.loopexit ], [ 0.000000e+00, %0 ]
  %10 = sext i32 %i.0.ph to i64
  br label %11

; <label>:11                                      ; preds = %.outer, %13
  %indvars.iv = phi i64 [ %10, %.outer ], [ %indvars.iv.next, %13 ]
  %i.0 = phi i32 [ %i.0.ph, %.outer ], [ %20, %13 ]
  %12 = icmp slt i64 %indvars.iv, %7
  br i1 %12, label %13, label %118

; <label>:13                                      ; preds = %11
  %14 = add nsw i64 %indvars.iv, 1
  %15 = getelementptr inbounds i32* %forceatoms, i64 %indvars.iv
  %16 = load i32* %15, align 4, !tbaa !36
  %17 = add nsw i64 %indvars.iv, 2
  %18 = getelementptr inbounds i32* %forceatoms, i64 %14
  %19 = load i32* %18, align 4, !tbaa !36
  %20 = add nsw i32 %i.0, 3
  %21 = getelementptr inbounds i32* %forceatoms, i64 %17
  %22 = load i32* %21, align 4, !tbaa !36
  %23 = sext i32 %16 to i64
  %24 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %23, i32 0, i32 0
  %25 = load float* %24, align 4, !tbaa !37
  %26 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %23, i32 0, i32 2
  %27 = load float* %26, align 4, !tbaa !39
  %28 = sext i32 %19 to i64
  %29 = getelementptr inbounds [3 x float]* %x, i64 %28, i64 0
  %30 = sext i32 %22 to i64
  %31 = getelementptr inbounds [3 x float]* %x, i64 %30, i64 0
  %32 = load float* %29, align 4, !tbaa !14
  %33 = load float* %31, align 4, !tbaa !14
  %34 = fsub float %32, %33
  %35 = getelementptr inbounds [3 x float]* %x, i64 %28, i64 1
  %36 = load float* %35, align 4, !tbaa !14
  %37 = getelementptr inbounds [3 x float]* %x, i64 %30, i64 1
  %38 = load float* %37, align 4, !tbaa !14
  %39 = fsub float %36, %38
  %40 = getelementptr inbounds [3 x float]* %x, i64 %28, i64 2
  %41 = load float* %40, align 4, !tbaa !14
  %42 = getelementptr inbounds [3 x float]* %x, i64 %30, i64 2
  %43 = load float* %42, align 4, !tbaa !14
  %44 = fsub float %41, %43
  store float %34, float* %1, align 4, !tbaa !14
  store float %39, float* %2, align 4, !tbaa !14
  store float %44, float* %3, align 4, !tbaa !14
  %45 = fmul float %34, %34
  %46 = fmul float %39, %39
  %47 = fadd float %45, %46
  %48 = fmul float %44, %44
  %49 = fadd float %48, %47
  %50 = fpext float %49 to double
  %51 = tail call double @sqrt(double %50) #10
  %52 = fptrunc double %51 to float
  %53 = fsub float %52, %25
  %54 = fmul float %27, %53
  %55 = fsub float -0.000000e+00, %54
  %56 = fpext float %55 to double
  %57 = tail call double @exp(double %56) #10
  %58 = fptrunc double %57 to float
  %59 = fadd float %58, -1.000000e+00
  %fabsf = tail call float @fabsf(float %59) #6
  %60 = fpext float %fabsf to double
  %61 = fcmp olt double %60, 1.200000e-38
  %indvars.iv.next = add i64 %indvars.iv, 3
  br i1 %61, label %11, label %62

; <label>:62                                      ; preds = %13
  %63 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %23, i32 0, i32 1
  %64 = load float* %63, align 4, !tbaa !40
  %65 = fsub float 1.000000e+00, %58
  %66 = fmul float %64, %65
  %67 = fmul float %27, -2.000000e+00
  %68 = fmul float %67, %58
  %69 = fmul float %68, %66
  %70 = fpext float %69 to double
  %71 = fdiv double 1.000000e+00, %51
  %72 = fmul double %70, %71
  %73 = fptrunc double %72 to float
  %74 = load i32* %4, align 4, !tbaa !41
  %75 = sub nsw i32 %19, %74
  %76 = sext i32 %75 to i64
  %77 = load [3 x i32]** %5, align 8, !tbaa !43
  %78 = getelementptr inbounds [3 x i32]* %77, i64 %76, i64 0
  %79 = sub nsw i32 %22, %74
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [3 x i32]* %77, i64 %80, i64 0
  %82 = load i32* %78, align 4, !tbaa !36
  %83 = load i32* %81, align 4, !tbaa !36
  %84 = getelementptr inbounds [3 x i32]* %77, i64 %76, i64 1
  %85 = load i32* %84, align 4, !tbaa !36
  %86 = getelementptr inbounds [3 x i32]* %77, i64 %80, i64 1
  %87 = load i32* %86, align 4, !tbaa !36
  %88 = getelementptr inbounds [3 x i32]* %77, i64 %76, i64 2
  %89 = load i32* %88, align 4, !tbaa !36
  %90 = getelementptr inbounds [3 x i32]* %77, i64 %80, i64 2
  %91 = load i32* %90, align 4, !tbaa !36
  %92 = sub nsw i32 %89, %91
  %93 = mul i32 %92, 3
  %94 = add i32 %85, 3
  %95 = sub i32 %94, %87
  %96 = add i32 %95, %93
  %97 = mul i32 %96, 3
  %98 = add i32 %82, 4
  %99 = sub i32 %98, %83
  %100 = add i32 %99, %97
  %101 = sext i32 %100 to i64
  %102 = load [3 x float]** %6, align 8, !tbaa !44
  br label %103

; <label>:103                                     ; preds = %._crit_edge, %62
  %104 = phi float [ %34, %62 ], [ %.pre, %._crit_edge ]
  %indvars.iv21 = phi i64 [ 0, %62 ], [ %indvars.iv.next22, %._crit_edge ]
  %105 = fmul float %73, %104
  %106 = getelementptr inbounds [3 x float]* %f, i64 %28, i64 %indvars.iv21
  %107 = load float* %106, align 4, !tbaa !14
  %108 = fadd float %107, %105
  store float %108, float* %106, align 4, !tbaa !14
  %109 = getelementptr inbounds [3 x float]* %f, i64 %30, i64 %indvars.iv21
  %110 = load float* %109, align 4, !tbaa !14
  %111 = fsub float %110, %105
  store float %111, float* %109, align 4, !tbaa !14
  %112 = getelementptr inbounds [3 x float]* %102, i64 %101, i64 %indvars.iv21
  %113 = load float* %112, align 4, !tbaa !14
  %114 = fadd float %105, %113
  store float %114, float* %112, align 4, !tbaa !14
  %115 = getelementptr inbounds [3 x float]* %102, i64 13, i64 %indvars.iv21
  %116 = load float* %115, align 4, !tbaa !14
  %117 = fsub float %116, %105
  store float %117, float* %115, align 4, !tbaa !14
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  %exitcond = icmp eq i64 %indvars.iv.next22, 3
  br i1 %exitcond, label %.loopexit, label %._crit_edge

._crit_edge:                                      ; preds = %103
  %.phi.trans.insert = getelementptr inbounds [3 x float]* %dx, i64 0, i64 %indvars.iv.next22
  %.pre = load float* %.phi.trans.insert, align 4, !tbaa !14
  br label %103

; <label>:118                                     ; preds = %11
  ret float %vtot.0.ph
}

; Function Attrs: nounwind optsize readnone
declare double @sqrt(double) #6

; Function Attrs: nounwind optsize readnone
declare double @exp(double) #6

; Function Attrs: nounwind optsize ssp uwtable
define float @cubicbonds(i32 %nbonds, i32* nocapture readonly %forceatoms, %union.t_iparams* nocapture readonly %forceparams, [3 x float]* nocapture readonly %x, [3 x float]* nocapture %f, %struct.t_forcerec* nocapture readonly %fr, %struct.t_graph* nocapture readonly %g, [3 x float]* nocapture readnone %box, float %lambda, float* nocapture readnone %dvdl, %struct.t_mdatoms* nocapture readnone %md, i32 %ngrp, float* nocapture readnone %egnb, float* nocapture readnone %egcoul, %struct.t_fcdata* nocapture readnone %fcd) #3 {
  %dx = alloca [3 x float], align 4
  %1 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 0
  %2 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 1
  %3 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 2
  %4 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 3
  %5 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 7
  %6 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 58
  %7 = sext i32 %nbonds to i64
  br label %.outer

.loopexit:                                        ; preds = %96
  %8 = fadd float %58, %60
  %9 = fadd float %vtot.0.ph, %8
  br label %.outer

.outer:                                           ; preds = %.loopexit, %0
  %i.0.ph = phi i32 [ %18, %.loopexit ], [ 0, %0 ]
  %vtot.0.ph = phi float [ %9, %.loopexit ], [ 0.000000e+00, %0 ]
  %10 = sext i32 %i.0.ph to i64
  br label %11

; <label>:11                                      ; preds = %.outer, %13
  %indvars.iv = phi i64 [ %10, %.outer ], [ %indvars.iv.next, %13 ]
  %i.0 = phi i32 [ %i.0.ph, %.outer ], [ %18, %13 ]
  %12 = icmp slt i64 %indvars.iv, %7
  br i1 %12, label %13, label %111

; <label>:13                                      ; preds = %11
  %14 = add nsw i64 %indvars.iv, 1
  %15 = add nsw i64 %indvars.iv, 2
  %16 = getelementptr inbounds i32* %forceatoms, i64 %14
  %17 = load i32* %16, align 4, !tbaa !36
  %18 = add nsw i32 %i.0, 3
  %19 = getelementptr inbounds i32* %forceatoms, i64 %15
  %20 = load i32* %19, align 4, !tbaa !36
  %21 = sext i32 %17 to i64
  %22 = getelementptr inbounds [3 x float]* %x, i64 %21, i64 0
  %23 = sext i32 %20 to i64
  %24 = getelementptr inbounds [3 x float]* %x, i64 %23, i64 0
  %25 = load float* %22, align 4, !tbaa !14
  %26 = load float* %24, align 4, !tbaa !14
  %27 = fsub float %25, %26
  %28 = getelementptr inbounds [3 x float]* %x, i64 %21, i64 1
  %29 = load float* %28, align 4, !tbaa !14
  %30 = getelementptr inbounds [3 x float]* %x, i64 %23, i64 1
  %31 = load float* %30, align 4, !tbaa !14
  %32 = fsub float %29, %31
  %33 = getelementptr inbounds [3 x float]* %x, i64 %21, i64 2
  %34 = load float* %33, align 4, !tbaa !14
  %35 = getelementptr inbounds [3 x float]* %x, i64 %23, i64 2
  %36 = load float* %35, align 4, !tbaa !14
  %37 = fsub float %34, %36
  store float %27, float* %1, align 4, !tbaa !14
  store float %32, float* %2, align 4, !tbaa !14
  store float %37, float* %3, align 4, !tbaa !14
  %38 = fmul float %27, %27
  %39 = fmul float %32, %32
  %40 = fadd float %38, %39
  %41 = fmul float %37, %37
  %42 = fadd float %41, %40
  %43 = fpext float %42 to double
  %44 = fcmp olt double %43, 1.200000e-38
  %indvars.iv.next = add i64 %indvars.iv, 3
  br i1 %44, label %11, label %45

; <label>:45                                      ; preds = %13
  %sext = shl i64 %indvars.iv, 32
  %46 = ashr exact i64 %sext, 32
  %47 = getelementptr inbounds i32* %forceatoms, i64 %46
  %48 = load i32* %47, align 4, !tbaa !36
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %49, i32 0, i32 0
  %51 = load float* %50, align 4, !tbaa !37
  %52 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %49, i32 0, i32 1
  %53 = load float* %52, align 4, !tbaa !40
  %54 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %49, i32 0, i32 2
  %55 = load float* %54, align 4, !tbaa !39
  %sqrtf = tail call float @sqrtf(float %42) #6
  %56 = fsub float %sqrtf, %51
  %57 = fmul float %53, %56
  %58 = fmul float %56, %57
  %59 = fmul float %55, %58
  %60 = fmul float %56, %59
  %61 = fmul float %57, 2.000000e+00
  %62 = fmul float %58, 3.000000e+00
  %63 = fmul float %55, %62
  %64 = fadd float %61, %63
  %65 = fsub float -0.000000e+00, %64
  %66 = fdiv float %65, %sqrtf
  %67 = load i32* %4, align 4, !tbaa !41
  %68 = sub nsw i32 %17, %67
  %69 = sext i32 %68 to i64
  %70 = load [3 x i32]** %5, align 8, !tbaa !43
  %71 = getelementptr inbounds [3 x i32]* %70, i64 %69, i64 0
  %72 = sub nsw i32 %20, %67
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [3 x i32]* %70, i64 %73, i64 0
  %75 = load i32* %71, align 4, !tbaa !36
  %76 = load i32* %74, align 4, !tbaa !36
  %77 = getelementptr inbounds [3 x i32]* %70, i64 %69, i64 1
  %78 = load i32* %77, align 4, !tbaa !36
  %79 = getelementptr inbounds [3 x i32]* %70, i64 %73, i64 1
  %80 = load i32* %79, align 4, !tbaa !36
  %81 = getelementptr inbounds [3 x i32]* %70, i64 %69, i64 2
  %82 = load i32* %81, align 4, !tbaa !36
  %83 = getelementptr inbounds [3 x i32]* %70, i64 %73, i64 2
  %84 = load i32* %83, align 4, !tbaa !36
  %85 = sub nsw i32 %82, %84
  %86 = mul i32 %85, 3
  %87 = add i32 %78, 3
  %88 = sub i32 %87, %80
  %89 = add i32 %88, %86
  %90 = mul i32 %89, 3
  %91 = add i32 %75, 4
  %92 = sub i32 %91, %76
  %93 = add i32 %92, %90
  %94 = sext i32 %93 to i64
  %95 = load [3 x float]** %6, align 8, !tbaa !44
  br label %96

; <label>:96                                      ; preds = %._crit_edge, %45
  %97 = phi float [ %27, %45 ], [ %.pre, %._crit_edge ]
  %indvars.iv26 = phi i64 [ 0, %45 ], [ %indvars.iv.next27, %._crit_edge ]
  %98 = fmul float %66, %97
  %99 = getelementptr inbounds [3 x float]* %f, i64 %21, i64 %indvars.iv26
  %100 = load float* %99, align 4, !tbaa !14
  %101 = fadd float %100, %98
  store float %101, float* %99, align 4, !tbaa !14
  %102 = getelementptr inbounds [3 x float]* %f, i64 %23, i64 %indvars.iv26
  %103 = load float* %102, align 4, !tbaa !14
  %104 = fsub float %103, %98
  store float %104, float* %102, align 4, !tbaa !14
  %105 = getelementptr inbounds [3 x float]* %95, i64 %94, i64 %indvars.iv26
  %106 = load float* %105, align 4, !tbaa !14
  %107 = fadd float %98, %106
  store float %107, float* %105, align 4, !tbaa !14
  %108 = getelementptr inbounds [3 x float]* %95, i64 13, i64 %indvars.iv26
  %109 = load float* %108, align 4, !tbaa !14
  %110 = fsub float %109, %98
  store float %110, float* %108, align 4, !tbaa !14
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  %exitcond = icmp eq i64 %indvars.iv.next27, 3
  br i1 %exitcond, label %.loopexit, label %._crit_edge

._crit_edge:                                      ; preds = %96
  %.phi.trans.insert = getelementptr inbounds [3 x float]* %dx, i64 0, i64 %indvars.iv.next27
  %.pre = load float* %.phi.trans.insert, align 4, !tbaa !14
  br label %96

; <label>:111                                     ; preds = %11
  ret float %vtot.0.ph
}

; Function Attrs: nounwind optsize ssp uwtable
define float @harmonic(float %kA, float %kB, float %xA, float %xB, float %x, float %lambda, float* nocapture %V, float* nocapture %F) #3 {
  %1 = fsub float 1.000000e+00, %lambda
  %2 = fmul float %1, %kA
  %3 = fmul float %kB, %lambda
  %4 = fadd float %3, %2
  %5 = fmul float %1, %xA
  %6 = fmul float %xB, %lambda
  %7 = fadd float %6, %5
  %8 = fsub float %x, %7
  %9 = fmul float %8, %8
  %10 = fmul float %4, %8
  %11 = fsub float -0.000000e+00, %10
  %12 = fmul float %4, 5.000000e-01
  %13 = fmul float %12, %9
  %14 = insertelement <2 x float> undef, float %xA, i32 0
  %15 = insertelement <2 x float> %14, float %kB, i32 1
  %16 = insertelement <2 x float> undef, float %xB, i32 0
  %17 = insertelement <2 x float> %16, float %kA, i32 1
  %18 = fsub <2 x float> %15, %17
  %19 = insertelement <2 x float> undef, float %4, i32 0
  %20 = insertelement <2 x float> %19, float 5.000000e-01, i32 1
  %21 = fmul <2 x float> %18, %20
  %22 = insertelement <2 x float> undef, float %8, i32 0
  %23 = insertelement <2 x float> %22, float %9, i32 1
  %24 = fmul <2 x float> %21, %23
  %25 = extractelement <2 x float> %24, i32 0
  %26 = extractelement <2 x float> %24, i32 1
  %27 = fadd float %25, %26
  store float %11, float* %F, align 4, !tbaa !14
  store float %13, float* %V, align 4, !tbaa !14
  ret float %27
}

; Function Attrs: nounwind optsize ssp uwtable
define float @bonds(i32 %nbonds, i32* nocapture readonly %forceatoms, %union.t_iparams* nocapture readonly %forceparams, [3 x float]* nocapture readonly %x, [3 x float]* nocapture %f, %struct.t_forcerec* nocapture readonly %fr, %struct.t_graph* nocapture readonly %g, [3 x float]* nocapture readnone %box, float %lambda, float* nocapture %dvdlambda, %struct.t_mdatoms* nocapture readnone %md, i32 %ngrp, float* nocapture readnone %egnb, float* nocapture readnone %egcoul, %struct.t_fcdata* nocapture readnone %fcd) #3 {
  %dx = alloca [3 x float], align 4
  %1 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 0
  %2 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 1
  %3 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 2
  %4 = fsub float 1.000000e+00, %lambda
  %5 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 3
  %6 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 7
  %7 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 58
  %8 = sext i32 %nbonds to i64
  br label %.outer

.loopexit:                                        ; preds = %113
  %9 = fmul float %77, %65
  %10 = fadd float %vtot.0.ph, %9
  br label %.outer

.outer:                                           ; preds = %.loopexit, %0
  %i.0.ph = phi i32 [ %21, %.loopexit ], [ 0, %0 ]
  %vtot.0.ph = phi float [ %10, %.loopexit ], [ 0.000000e+00, %0 ]
  %11 = sext i32 %i.0.ph to i64
  br label %12

; <label>:12                                      ; preds = %.outer, %14
  %indvars.iv = phi i64 [ %11, %.outer ], [ %indvars.iv.next, %14 ]
  %i.0 = phi i32 [ %i.0.ph, %.outer ], [ %21, %14 ]
  %13 = icmp slt i64 %indvars.iv, %8
  br i1 %13, label %14, label %128

; <label>:14                                      ; preds = %12
  %15 = add nsw i64 %indvars.iv, 1
  %16 = getelementptr inbounds i32* %forceatoms, i64 %indvars.iv
  %17 = load i32* %16, align 4, !tbaa !36
  %18 = add nsw i64 %indvars.iv, 2
  %19 = getelementptr inbounds i32* %forceatoms, i64 %15
  %20 = load i32* %19, align 4, !tbaa !36
  %21 = add nsw i32 %i.0, 3
  %22 = getelementptr inbounds i32* %forceatoms, i64 %18
  %23 = load i32* %22, align 4, !tbaa !36
  %24 = sext i32 %20 to i64
  %25 = getelementptr inbounds [3 x float]* %x, i64 %24, i64 0
  %26 = sext i32 %23 to i64
  %27 = getelementptr inbounds [3 x float]* %x, i64 %26, i64 0
  %28 = load float* %25, align 4, !tbaa !14
  %29 = load float* %27, align 4, !tbaa !14
  %30 = fsub float %28, %29
  %31 = getelementptr inbounds [3 x float]* %x, i64 %24, i64 1
  %32 = load float* %31, align 4, !tbaa !14
  %33 = getelementptr inbounds [3 x float]* %x, i64 %26, i64 1
  %34 = load float* %33, align 4, !tbaa !14
  %35 = fsub float %32, %34
  %36 = getelementptr inbounds [3 x float]* %x, i64 %24, i64 2
  %37 = load float* %36, align 4, !tbaa !14
  %38 = getelementptr inbounds [3 x float]* %x, i64 %26, i64 2
  %39 = load float* %38, align 4, !tbaa !14
  %40 = fsub float %37, %39
  store float %30, float* %1, align 4, !tbaa !14
  store float %35, float* %2, align 4, !tbaa !14
  store float %40, float* %3, align 4, !tbaa !14
  %41 = fmul float %30, %30
  %42 = fmul float %35, %35
  %43 = fadd float %41, %42
  %44 = fmul float %40, %40
  %45 = fadd float %44, %43
  %46 = fpext float %45 to double
  %47 = tail call double @sqrt(double %46) #10
  %48 = fptrunc double %47 to float
  %49 = sext i32 %17 to i64
  %50 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %49, i32 0, i32 1
  %51 = load float* %50, align 4, !tbaa !46
  %52 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %49, i32 0, i32 3
  %53 = load float* %52, align 4, !tbaa !48
  %54 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %49, i32 0, i32 0
  %55 = load float* %54, align 4, !tbaa !49
  %56 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %49, i32 0, i32 2
  %57 = load float* %56, align 4, !tbaa !50
  %58 = fmul float %4, %51
  %59 = fmul float %53, %lambda
  %60 = fadd float %58, %59
  %61 = fmul float %4, %55
  %62 = fmul float %57, %lambda
  %63 = fadd float %61, %62
  %64 = fsub float %48, %63
  %65 = fmul float %64, %64
  %66 = fsub float %53, %51
  %67 = fmul float %66, 5.000000e-01
  %68 = fmul float %67, %65
  %69 = fsub float %55, %57
  %70 = fmul float %60, %69
  %71 = fmul float %70, %64
  %72 = fadd float %71, %68
  %73 = load float* %dvdlambda, align 4, !tbaa !14
  %74 = fadd float %73, %72
  store float %74, float* %dvdlambda, align 4, !tbaa !14
  %75 = fcmp olt double %46, 1.200000e-38
  %indvars.iv.next = add i64 %indvars.iv, 3
  br i1 %75, label %12, label %76

; <label>:76                                      ; preds = %14
  %77 = fmul float %60, 5.000000e-01
  %78 = fmul float %60, %64
  %79 = fsub float -0.000000e+00, %78
  %80 = fdiv double 1.000000e+00, %47
  %81 = fpext float %79 to double
  %82 = fmul double %81, %80
  %83 = fptrunc double %82 to float
  %84 = load i32* %5, align 4, !tbaa !41
  %85 = sub nsw i32 %20, %84
  %86 = sext i32 %85 to i64
  %87 = load [3 x i32]** %6, align 8, !tbaa !43
  %88 = getelementptr inbounds [3 x i32]* %87, i64 %86, i64 0
  %89 = sub nsw i32 %23, %84
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [3 x i32]* %87, i64 %90, i64 0
  %92 = load i32* %88, align 4, !tbaa !36
  %93 = load i32* %91, align 4, !tbaa !36
  %94 = getelementptr inbounds [3 x i32]* %87, i64 %86, i64 1
  %95 = load i32* %94, align 4, !tbaa !36
  %96 = getelementptr inbounds [3 x i32]* %87, i64 %90, i64 1
  %97 = load i32* %96, align 4, !tbaa !36
  %98 = getelementptr inbounds [3 x i32]* %87, i64 %86, i64 2
  %99 = load i32* %98, align 4, !tbaa !36
  %100 = getelementptr inbounds [3 x i32]* %87, i64 %90, i64 2
  %101 = load i32* %100, align 4, !tbaa !36
  %102 = sub nsw i32 %99, %101
  %103 = mul i32 %102, 3
  %104 = add i32 %95, 3
  %105 = sub i32 %104, %97
  %106 = add i32 %105, %103
  %107 = mul i32 %106, 3
  %108 = add i32 %92, 4
  %109 = sub i32 %108, %93
  %110 = add i32 %109, %107
  %111 = sext i32 %110 to i64
  %112 = load [3 x float]** %7, align 8, !tbaa !44
  br label %113

; <label>:113                                     ; preds = %._crit_edge, %76
  %114 = phi float [ %30, %76 ], [ %.pre, %._crit_edge ]
  %indvars.iv19 = phi i64 [ 0, %76 ], [ %indvars.iv.next20, %._crit_edge ]
  %115 = fmul float %83, %114
  %116 = getelementptr inbounds [3 x float]* %f, i64 %24, i64 %indvars.iv19
  %117 = load float* %116, align 4, !tbaa !14
  %118 = fadd float %117, %115
  store float %118, float* %116, align 4, !tbaa !14
  %119 = getelementptr inbounds [3 x float]* %f, i64 %26, i64 %indvars.iv19
  %120 = load float* %119, align 4, !tbaa !14
  %121 = fsub float %120, %115
  store float %121, float* %119, align 4, !tbaa !14
  %122 = getelementptr inbounds [3 x float]* %112, i64 %111, i64 %indvars.iv19
  %123 = load float* %122, align 4, !tbaa !14
  %124 = fadd float %115, %123
  store float %124, float* %122, align 4, !tbaa !14
  %125 = getelementptr inbounds [3 x float]* %112, i64 13, i64 %indvars.iv19
  %126 = load float* %125, align 4, !tbaa !14
  %127 = fsub float %126, %115
  store float %127, float* %125, align 4, !tbaa !14
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  %exitcond = icmp eq i64 %indvars.iv.next20, 3
  br i1 %exitcond, label %.loopexit, label %._crit_edge

._crit_edge:                                      ; preds = %113
  %.phi.trans.insert = getelementptr inbounds [3 x float]* %dx, i64 0, i64 %indvars.iv.next20
  %.pre = load float* %.phi.trans.insert, align 4, !tbaa !14
  br label %113

; <label>:128                                     ; preds = %12
  ret float %vtot.0.ph
}

; Function Attrs: nounwind optsize ssp uwtable
define float @water_pol(i32 %nbonds, i32* nocapture readonly %forceatoms, %union.t_iparams* nocapture readonly %forceparams, [3 x float]* nocapture readonly %x, [3 x float]* nocapture %f, %struct.t_forcerec* nocapture readnone %fr, %struct.t_graph* nocapture readnone %g, [3 x float]* nocapture readnone %box, float %lambda, float* nocapture readnone %dvdlambda, %struct.t_mdatoms* nocapture readnone %md, i32 %ngrp, float* nocapture readnone %egnb, float* nocapture readnone %egcoul, %struct.t_fcdata* nocapture readnone %fcd) #3 {
  %dHH = alloca [3 x float], align 4
  %dOD = alloca [3 x float], align 4
  %dDS = alloca [3 x float], align 4
  %nW = alloca [3 x float], align 4
  %proj = alloca [3 x float], align 4
  %1 = icmp sgt i32 %nbonds, 0
  br i1 %1, label %2, label %.loopexit1

; <label>:2                                       ; preds = %0
  %3 = load i32* %forceatoms, align 4, !tbaa !36
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %4, i32 0, i32 0
  %6 = load float* %5, align 4, !tbaa !51
  %7 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %4, i32 0, i32 1
  %8 = load float* %7, align 4, !tbaa !53
  %9 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %4, i32 0, i32 2
  %10 = load float* %9, align 4, !tbaa !54
  %11 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %4, i32 0, i32 4
  %12 = load float* %11, align 4, !tbaa !55
  %13 = fdiv float 1.000000e+00, %12
  %14 = load %struct.__sFILE** @debug, align 8, !tbaa !56
  %15 = icmp eq %struct.__sFILE* %14, null
  br i1 %15, label %.lr.ph, label %16

; <label>:16                                      ; preds = %2
  %17 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %4, i32 0, i32 5
  %18 = fpext float %6 to double
  %19 = fpext float %8 to double
  %20 = fpext float %10 to double
  %21 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %14, i8* getelementptr inbounds ([48 x i8]* @.str2, i64 0, i64 0), double %18, double %19, double %20) #9
  %22 = load %struct.__sFILE** @debug, align 8, !tbaa !56
  %23 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %4, i32 0, i32 3
  %24 = load float* %23, align 4, !tbaa !57
  %25 = fpext float %24 to double
  %26 = load float* %11, align 4, !tbaa !55
  %27 = fpext float %26 to double
  %28 = load float* %17, align 4, !tbaa !58
  %29 = fpext float %28 to double
  %30 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %22, i8* getelementptr inbounds ([48 x i8]* @.str3, i64 0, i64 0), double %25, double %27, double %29) #9
  br label %.lr.ph

.lr.ph:                                           ; preds = %16, %2
  %31 = getelementptr inbounds [3 x float]* %dHH, i64 0, i64 0
  %32 = getelementptr inbounds [3 x float]* %dHH, i64 0, i64 1
  %33 = getelementptr inbounds [3 x float]* %dHH, i64 0, i64 2
  %34 = getelementptr inbounds [3 x float]* %dOD, i64 0, i64 0
  %35 = getelementptr inbounds [3 x float]* %dOD, i64 0, i64 1
  %36 = getelementptr inbounds [3 x float]* %dOD, i64 0, i64 2
  %37 = getelementptr inbounds [3 x float]* %dDS, i64 0, i64 0
  %38 = getelementptr inbounds [3 x float]* %dDS, i64 0, i64 1
  %39 = getelementptr inbounds [3 x float]* %dDS, i64 0, i64 2
  %40 = getelementptr inbounds [3 x float]* %nW, i64 0, i64 0
  %41 = getelementptr inbounds [3 x float]* %nW, i64 0, i64 1
  %42 = getelementptr inbounds [3 x float]* %nW, i64 0, i64 2
  %43 = getelementptr inbounds [3 x float]* %proj, i64 0, i64 0
  %44 = getelementptr inbounds [3 x float]* %proj, i64 0, i64 1
  %45 = getelementptr inbounds [3 x float]* %proj, i64 0, i64 2
  %46 = sext i32 %nbonds to i64
  br label %49

.loopexit:                                        ; preds = %186
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 2
  %47 = fadd float %vtot.05, %185
  %48 = icmp slt i64 %indvars.iv.next14, %46
  br i1 %48, label %49, label %.loopexit1.loopexit

; <label>:49                                      ; preds = %.lr.ph, %.loopexit
  %indvars.iv13 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next14, %.loopexit ]
  %vtot.05 = phi float [ 0.000000e+00, %.lr.ph ], [ %47, %.loopexit ]
  %50 = or i64 %indvars.iv13, 1
  %51 = getelementptr inbounds i32* %forceatoms, i64 %50
  %52 = load i32* %51, align 4, !tbaa !36
  %53 = add nsw i32 %52, 1
  %54 = add nsw i32 %52, 2
  %55 = add nsw i32 %52, 3
  %56 = add nsw i32 %52, 4
  %57 = sext i32 %53 to i64
  %58 = getelementptr inbounds [3 x float]* %x, i64 %57, i64 0
  %59 = sext i32 %52 to i64
  %60 = getelementptr inbounds [3 x float]* %x, i64 %59, i64 0
  %61 = load float* %58, align 4, !tbaa !14
  %62 = load float* %60, align 4, !tbaa !14
  %63 = fsub float %61, %62
  %64 = getelementptr inbounds [3 x float]* %x, i64 %57, i64 1
  %65 = load float* %64, align 4, !tbaa !14
  %66 = getelementptr inbounds [3 x float]* %x, i64 %59, i64 1
  %67 = load float* %66, align 4, !tbaa !14
  %68 = fsub float %65, %67
  %69 = getelementptr inbounds [3 x float]* %x, i64 %57, i64 2
  %70 = load float* %69, align 4, !tbaa !14
  %71 = getelementptr inbounds [3 x float]* %x, i64 %59, i64 2
  %72 = load float* %71, align 4, !tbaa !14
  %73 = fsub float %70, %72
  %74 = sext i32 %54 to i64
  %75 = getelementptr inbounds [3 x float]* %x, i64 %74, i64 0
  %76 = load float* %75, align 4, !tbaa !14
  %77 = fsub float %76, %62
  %78 = getelementptr inbounds [3 x float]* %x, i64 %74, i64 1
  %79 = load float* %78, align 4, !tbaa !14
  %80 = fsub float %79, %67
  %81 = getelementptr inbounds [3 x float]* %x, i64 %74, i64 2
  %82 = load float* %81, align 4, !tbaa !14
  %83 = fsub float %82, %72
  %84 = fsub float %76, %61
  %85 = fsub float %79, %65
  %86 = fsub float %82, %70
  %87 = sext i32 %55 to i64
  %88 = getelementptr inbounds [3 x float]* %x, i64 %87, i64 0
  %89 = load float* %88, align 4, !tbaa !14
  %90 = fsub float %89, %62
  %91 = getelementptr inbounds [3 x float]* %x, i64 %87, i64 1
  %92 = load float* %91, align 4, !tbaa !14
  %93 = fsub float %92, %67
  %94 = getelementptr inbounds [3 x float]* %x, i64 %87, i64 2
  %95 = load float* %94, align 4, !tbaa !14
  %96 = fsub float %95, %72
  %97 = sext i32 %56 to i64
  %98 = getelementptr inbounds [3 x float]* %x, i64 %97, i64 0
  %99 = load float* %98, align 4, !tbaa !14
  %100 = fsub float %99, %89
  %101 = getelementptr inbounds [3 x float]* %x, i64 %97, i64 1
  %102 = load float* %101, align 4, !tbaa !14
  %103 = fsub float %102, %92
  %104 = getelementptr inbounds [3 x float]* %x, i64 %97, i64 2
  %105 = load float* %104, align 4, !tbaa !14
  %106 = fsub float %105, %95
  store float %100, float* %37, align 4, !tbaa !14
  store float %103, float* %38, align 4, !tbaa !14
  store float %106, float* %39, align 4, !tbaa !14
  %107 = fmul float %68, %83
  %108 = fmul float %73, %80
  %109 = fsub float %107, %108
  %110 = fmul float %73, %77
  %111 = fmul float %63, %83
  %112 = fsub float %110, %111
  %113 = fmul float %63, %80
  %114 = fmul float %68, %77
  %115 = fsub float %113, %114
  %116 = fmul float %109, %109
  %117 = fmul float %112, %112
  %118 = fadd float %116, %117
  %119 = fmul float %115, %115
  %120 = fadd float %119, %118
  %121 = fpext float %120 to double
  %122 = tail call double @sqrt(double %121) #10
  %123 = fdiv double 1.000000e+00, %122
  %124 = fptrunc double %123 to float
  %125 = fmul float %90, %90
  %126 = fmul float %93, %93
  %127 = fadd float %125, %126
  %128 = fmul float %96, %96
  %129 = fadd float %127, %128
  %130 = fpext float %129 to double
  %131 = tail call double @sqrt(double %130) #10
  %132 = fdiv double 1.000000e+00, %131
  %133 = fptrunc double %132 to float
  %134 = fmul float %109, %124
  store float %134, float* %40, align 4, !tbaa !14
  %135 = fmul float %124, %112
  store float %135, float* %41, align 4, !tbaa !14
  %136 = fmul float %124, %115
  store float %136, float* %42, align 4, !tbaa !14
  %137 = fmul float %13, %84
  store float %137, float* %31, align 4, !tbaa !14
  %138 = fmul float %13, %85
  store float %138, float* %32, align 4, !tbaa !14
  %139 = fmul float %13, %86
  store float %139, float* %33, align 4, !tbaa !14
  %140 = fmul float %133, %90
  store float %140, float* %34, align 4, !tbaa !14
  %141 = fmul float %133, %93
  store float %141, float* %35, align 4, !tbaa !14
  %142 = fmul float %133, %96
  store float %142, float* %36, align 4, !tbaa !14
  %143 = fmul float %100, %140
  %144 = fmul float %103, %141
  %145 = fadd float %143, %144
  %146 = fmul float %142, %106
  %147 = fadd float %145, %146
  %148 = fmul float %147, %140
  %149 = fsub float %100, %148
  %150 = getelementptr inbounds [3 x float]* %proj, i64 0, i64 0
  store float %149, float* %150, align 4, !tbaa !14
  br label %._crit_edge

._crit_edge:                                      ; preds = %49, %._crit_edge
  %indvars.iv.next29 = phi i64 [ 1, %49 ], [ %indvars.iv.next, %._crit_edge ]
  %.phi.trans.insert = getelementptr inbounds [3 x float]* %dDS, i64 0, i64 %indvars.iv.next29
  %.pre = load float* %.phi.trans.insert, align 4, !tbaa !14
  %.phi.trans.insert15 = getelementptr inbounds [3 x float]* %dOD, i64 0, i64 %indvars.iv.next29
  %.pre16 = load float* %.phi.trans.insert15, align 4, !tbaa !14
  %151 = fmul float %147, %.pre16
  %152 = fsub float %.pre, %151
  %153 = getelementptr inbounds [3 x float]* %proj, i64 0, i64 %indvars.iv.next29
  store float %152, float* %153, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.next29, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %154, label %._crit_edge

; <label>:154                                     ; preds = %._crit_edge
  %155 = load float* %43, align 4, !tbaa !14
  %156 = fmul float %155, %134
  %157 = load float* %44, align 4, !tbaa !14
  %158 = fmul float %157, %135
  %159 = fadd float %156, %158
  %160 = load float* %45, align 4, !tbaa !14
  %161 = fmul float %160, %136
  %162 = fadd float %159, %161
  %163 = fmul float %162, %134
  %164 = getelementptr inbounds [3 x float]* %proj, i64 0, i64 0
  %165 = fsub float %155, %163
  store float %165, float* %164, align 4, !tbaa !14
  br label %._crit_edge17

._crit_edge17:                                    ; preds = %154, %._crit_edge17
  %indvars.iv.next830 = phi i64 [ 1, %154 ], [ %indvars.iv.next8, %._crit_edge17 ]
  %.phi.trans.insert18 = getelementptr inbounds [3 x float]* %nW, i64 0, i64 %indvars.iv.next830
  %.pre19 = load float* %.phi.trans.insert18, align 4, !tbaa !14
  %.phi.trans.insert20 = getelementptr inbounds [3 x float]* %proj, i64 0, i64 %indvars.iv.next830
  %.pre21 = load float* %.phi.trans.insert20, align 4, !tbaa !14
  %166 = fmul float %162, %.pre19
  %167 = getelementptr inbounds [3 x float]* %proj, i64 0, i64 %indvars.iv.next830
  %168 = fsub float %.pre21, %166
  store float %168, float* %167, align 4, !tbaa !14
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv.next830, 1
  %exitcond9 = icmp eq i64 %indvars.iv.next8, 3
  br i1 %exitcond9, label %169, label %._crit_edge17

; <label>:169                                     ; preds = %._crit_edge17
  %170 = load float* %43, align 4, !tbaa !14
  %171 = fmul float %170, %137
  %172 = load float* %44, align 4, !tbaa !14
  %173 = fmul float %172, %138
  %174 = fadd float %171, %173
  %175 = load float* %45, align 4, !tbaa !14
  %176 = fmul float %175, %139
  %177 = fadd float %174, %176
  %178 = fmul float %6, %162
  %179 = fmul float %8, %177
  %180 = fmul float %10, %147
  %181 = fmul float %162, %178
  %182 = fmul float %177, %179
  %183 = fadd float %181, %182
  %184 = fmul float %147, %180
  %185 = fadd float %184, %183
  br label %186

; <label>:186                                     ; preds = %._crit_edge22, %169
  %187 = phi float [ %140, %169 ], [ %.pre28, %._crit_edge22 ]
  %188 = phi float [ %137, %169 ], [ %.pre26, %._crit_edge22 ]
  %189 = phi float [ %134, %169 ], [ %.pre24, %._crit_edge22 ]
  %indvars.iv10 = phi i64 [ 0, %169 ], [ %indvars.iv.next11, %._crit_edge22 ]
  %190 = fmul float %178, %189
  %191 = fmul float %179, %188
  %192 = fmul float %180, %187
  %193 = fsub float -0.000000e+00, %190
  %194 = fsub float %193, %191
  %195 = fsub float %194, %192
  %196 = getelementptr inbounds [3 x float]* %f, i64 %97, i64 %indvars.iv10
  %197 = load float* %196, align 4, !tbaa !14
  %198 = fadd float %197, %195
  store float %198, float* %196, align 4, !tbaa !14
  %199 = getelementptr inbounds [3 x float]* %f, i64 %87, i64 %indvars.iv10
  %200 = load float* %199, align 4, !tbaa !14
  %201 = fsub float %200, %195
  store float %201, float* %199, align 4, !tbaa !14
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  %exitcond12 = icmp eq i64 %indvars.iv.next11, 3
  br i1 %exitcond12, label %.loopexit, label %._crit_edge22

._crit_edge22:                                    ; preds = %186
  %.phi.trans.insert23 = getelementptr inbounds [3 x float]* %nW, i64 0, i64 %indvars.iv.next11
  %.pre24 = load float* %.phi.trans.insert23, align 4, !tbaa !14
  %.phi.trans.insert25 = getelementptr inbounds [3 x float]* %dHH, i64 0, i64 %indvars.iv.next11
  %.pre26 = load float* %.phi.trans.insert25, align 4, !tbaa !14
  %.phi.trans.insert27 = getelementptr inbounds [3 x float]* %dOD, i64 0, i64 %indvars.iv.next11
  %.pre28 = load float* %.phi.trans.insert27, align 4, !tbaa !14
  br label %186

.loopexit1.loopexit:                              ; preds = %.loopexit
  %phitmp = fmul float %47, 5.000000e-01
  br label %.loopexit1

.loopexit1:                                       ; preds = %.loopexit1.loopexit, %0
  %vtot.1 = phi float [ 0.000000e+00, %0 ], [ %phitmp, %.loopexit1.loopexit ]
  ret float %vtot.1
}

; Function Attrs: nounwind optsize ssp uwtable
define float @bond_angle([3 x float]* nocapture readnone %box, float* nocapture readonly %xi, float* nocapture readonly %xj, float* nocapture readonly %xk, float* nocapture %r_ij, float* nocapture %r_kj, float* nocapture %costh) #3 {
  %1 = load float* %xi, align 4, !tbaa !14
  %2 = load float* %xj, align 4, !tbaa !14
  %3 = fsub float %1, %2
  %4 = getelementptr inbounds float* %xi, i64 1
  %5 = load float* %4, align 4, !tbaa !14
  %6 = getelementptr inbounds float* %xj, i64 1
  %7 = load float* %6, align 4, !tbaa !14
  %8 = fsub float %5, %7
  %9 = getelementptr inbounds float* %xi, i64 2
  %10 = load float* %9, align 4, !tbaa !14
  %11 = getelementptr inbounds float* %xj, i64 2
  %12 = load float* %11, align 4, !tbaa !14
  %13 = fsub float %10, %12
  store float %3, float* %r_ij, align 4, !tbaa !14
  %14 = getelementptr inbounds float* %r_ij, i64 1
  store float %8, float* %14, align 4, !tbaa !14
  %15 = getelementptr inbounds float* %r_ij, i64 2
  store float %13, float* %15, align 4, !tbaa !14
  %16 = load float* %xk, align 4, !tbaa !14
  %17 = load float* %xj, align 4, !tbaa !14
  %18 = fsub float %16, %17
  %19 = getelementptr inbounds float* %xk, i64 1
  %20 = load float* %19, align 4, !tbaa !14
  %21 = load float* %6, align 4, !tbaa !14
  %22 = fsub float %20, %21
  %23 = getelementptr inbounds float* %xk, i64 2
  %24 = load float* %23, align 4, !tbaa !14
  %25 = load float* %11, align 4, !tbaa !14
  %26 = fsub float %24, %25
  store float %18, float* %r_kj, align 4, !tbaa !14
  %27 = getelementptr inbounds float* %r_kj, i64 1
  store float %22, float* %27, align 4, !tbaa !14
  %28 = getelementptr inbounds float* %r_kj, i64 2
  store float %26, float* %28, align 4, !tbaa !14
  %29 = tail call fastcc float @cos_angle(float* %r_ij, float* %r_kj) #11
  store float %29, float* %costh, align 4, !tbaa !14
  %30 = fpext float %29 to double
  %31 = tail call double @acos(double %30) #10
  %32 = fptrunc double %31 to float
  ret float %32
}

; Function Attrs: nounwind optsize readonly ssp uwtable
define internal fastcc float @cos_angle(float* nocapture readonly %a, float* nocapture readonly %b) #7 {
  br label %1

; <label>:1                                       ; preds = %1, %0
  %indvars.iv = phi i64 [ 0, %0 ], [ %indvars.iv.next, %1 ]
  %ip.02 = phi double [ 0.000000e+00, %0 ], [ %13, %1 ]
  %2 = phi <2 x double> [ zeroinitializer, %0 ], [ %15, %1 ]
  %3 = getelementptr inbounds float* %a, i64 %indvars.iv
  %4 = load float* %3, align 4, !tbaa !14
  %5 = getelementptr inbounds float* %b, i64 %indvars.iv
  %6 = load float* %5, align 4, !tbaa !14
  %7 = insertelement <2 x float> undef, float %6, i32 0
  %8 = insertelement <2 x float> %7, float %4, i32 1
  %9 = fpext <2 x float> %8 to <2 x double>
  %10 = extractelement <2 x double> %9, i32 0
  %11 = extractelement <2 x double> %9, i32 1
  %12 = fmul double %11, %10
  %13 = fadd double %ip.02, %12
  %14 = fmul <2 x double> %9, %9
  %15 = fadd <2 x double> %2, %14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %16, label %1

; <label>:16                                      ; preds = %1
  %17 = extractelement <2 x double> %15, i32 0
  %18 = extractelement <2 x double> %15, i32 1
  %19 = fmul double %18, %17
  %20 = tail call double @sqrt(double %19) #10
  %21 = fdiv double 1.000000e+00, %20
  %22 = fmul double %13, %21
  %23 = fptrunc double %22 to float
  %24 = fcmp ogt float %23, 1.000000e+00
  br i1 %24, label %27, label %25

; <label>:25                                      ; preds = %16
  %26 = fcmp olt float %23, -1.000000e+00
  %. = select i1 %26, float -1.000000e+00, float %23
  br label %27

; <label>:27                                      ; preds = %25, %16
  %.0 = phi float [ 1.000000e+00, %16 ], [ %., %25 ]
  ret float %.0
}

; Function Attrs: nounwind optsize readnone
declare double @acos(double) #6

; Function Attrs: nounwind optsize ssp uwtable
define float @angles(i32 %nbonds, i32* nocapture readonly %forceatoms, %union.t_iparams* nocapture readonly %forceparams, [3 x float]* nocapture readonly %x, [3 x float]* nocapture %f, %struct.t_forcerec* nocapture readonly %fr, %struct.t_graph* nocapture readonly %g, [3 x float]* nocapture readnone %box, float %lambda, float* nocapture %dvdlambda, %struct.t_mdatoms* nocapture readnone %md, i32 %ngrp, float* nocapture readnone %egnb, float* nocapture readnone %egcoul, %struct.t_fcdata* nocapture readnone %fcd) #3 {
  %r_ij = alloca [3 x float], align 4
  %r_kj = alloca [3 x float], align 4
  %cos_theta = alloca float, align 4
  %f_i = alloca [3 x float], align 4
  %f_j = alloca [3 x float], align 4
  %f_k = alloca [3 x float], align 4
  %1 = icmp sgt i32 %nbonds, 0
  br i1 %1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %2 = getelementptr inbounds [3 x float]* %r_ij, i64 0, i64 0
  %3 = getelementptr inbounds [3 x float]* %r_kj, i64 0, i64 0
  %4 = fsub float 1.000000e+00, %lambda
  %5 = getelementptr inbounds [3 x float]* %r_kj, i64 0, i64 1
  %6 = getelementptr inbounds [3 x float]* %r_kj, i64 0, i64 2
  %7 = getelementptr inbounds [3 x float]* %r_ij, i64 0, i64 1
  %8 = getelementptr inbounds [3 x float]* %r_ij, i64 0, i64 2
  %9 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 3
  %10 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 7
  %11 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 58
  %12 = getelementptr inbounds [3 x float]* %f_i, i64 0, i64 0
  %13 = getelementptr inbounds [3 x float]* %f_i, i64 0, i64 1
  %14 = getelementptr inbounds [3 x float]* %f_i, i64 0, i64 2
  %15 = getelementptr inbounds [3 x float]* %f_j, i64 0, i64 0
  %16 = getelementptr inbounds [3 x float]* %f_j, i64 0, i64 1
  %17 = getelementptr inbounds [3 x float]* %f_j, i64 0, i64 2
  %18 = getelementptr inbounds [3 x float]* %f_k, i64 0, i64 0
  %19 = getelementptr inbounds [3 x float]* %f_k, i64 0, i64 1
  %20 = getelementptr inbounds [3 x float]* %f_k, i64 0, i64 2
  %21 = sext i32 %nbonds to i64
  br label %22

; <label>:22                                      ; preds = %.lr.ph, %133
  %indvars.iv5 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next6, %133 ]
  %vtot.03 = phi float [ 0.000000e+00, %.lr.ph ], [ %135, %133 ]
  %23 = or i64 %indvars.iv5, 1
  %24 = getelementptr inbounds i32* %forceatoms, i64 %indvars.iv5
  %25 = load i32* %24, align 4, !tbaa !36
  %26 = or i64 %indvars.iv5, 2
  %27 = getelementptr inbounds i32* %forceatoms, i64 %23
  %28 = load i32* %27, align 4, !tbaa !36
  %29 = or i64 %indvars.iv5, 3
  %30 = getelementptr inbounds i32* %forceatoms, i64 %26
  %31 = load i32* %30, align 4, !tbaa !36
  %32 = getelementptr inbounds i32* %forceatoms, i64 %29
  %33 = load i32* %32, align 4, !tbaa !36
  %34 = sext i32 %28 to i64
  %35 = getelementptr inbounds [3 x float]* %x, i64 %34, i64 0
  %36 = sext i32 %31 to i64
  %37 = getelementptr inbounds [3 x float]* %x, i64 %36, i64 0
  %38 = sext i32 %33 to i64
  %39 = getelementptr inbounds [3 x float]* %x, i64 %38, i64 0
  %40 = call float @bond_angle([3 x float]* undef, float* %35, float* %37, float* %39, float* %2, float* %3, float* %cos_theta) #11
  %41 = sext i32 %25 to i64
  %42 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %41, i32 0, i32 1
  %43 = load float* %42, align 4, !tbaa !46
  %44 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %41, i32 0, i32 3
  %45 = load float* %44, align 4, !tbaa !48
  %46 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %41, i32 0, i32 0
  %47 = load float* %46, align 4, !tbaa !49
  %48 = fpext float %47 to double
  %49 = fmul double %48, 0x3F91DF46A2529D39
  %50 = fptrunc double %49 to float
  %51 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %41, i32 0, i32 2
  %52 = load float* %51, align 4, !tbaa !50
  %53 = fpext float %52 to double
  %54 = fmul double %53, 0x3F91DF46A2529D39
  %55 = fptrunc double %54 to float
  %56 = fmul float %4, %43
  %57 = fmul float %45, %lambda
  %58 = fadd float %56, %57
  %59 = fmul float %4, %50
  %60 = fmul float %55, %lambda
  %61 = fadd float %59, %60
  %62 = fsub float %40, %61
  %63 = fmul float %62, %62
  %64 = fmul float %58, %62
  %65 = fsub float -0.000000e+00, %64
  %66 = fmul float %58, 5.000000e-01
  %67 = fsub float %45, %43
  %68 = fmul float %67, 5.000000e-01
  %69 = fmul float %68, %63
  %70 = fsub float %50, %55
  %71 = fmul float %58, %70
  %72 = fmul float %71, %62
  %73 = fadd float %72, %69
  %74 = load float* %dvdlambda, align 4, !tbaa !14
  %75 = fadd float %74, %73
  store float %75, float* %dvdlambda, align 4, !tbaa !14
  %76 = fpext float %40 to double
  %77 = tail call double @sin(double %76) #10
  %78 = fptrunc double %77 to float
  %fabsf = tail call float @fabsf(float %78) #6
  %79 = fpext float %fabsf to double
  %80 = fcmp olt double %79, 1.000000e-12
  %snt.0 = select i1 %80, float 0x3D71979980000000, float %78
  %81 = fdiv float %65, %snt.0
  %82 = load float* %cos_theta, align 4, !tbaa !14
  %83 = fmul float %81, %82
  %84 = load float* %3, align 4, !tbaa !14
  %85 = fmul float %84, %84
  %86 = load float* %5, align 4, !tbaa !14
  %87 = fmul float %86, %86
  %88 = fadd float %85, %87
  %89 = load float* %6, align 4, !tbaa !14
  %90 = fmul float %89, %89
  %91 = fadd float %88, %90
  %92 = load float* %2, align 4, !tbaa !14
  %93 = fmul float %92, %92
  %94 = load float* %7, align 4, !tbaa !14
  %95 = fmul float %94, %94
  %96 = fadd float %93, %95
  %97 = load float* %8, align 4, !tbaa !14
  %98 = fmul float %97, %97
  %99 = fadd float %96, %98
  %100 = fpext float %81 to double
  %101 = fmul float %91, %99
  %102 = fpext float %101 to double
  %103 = tail call double @sqrt(double %102) #10
  %104 = fdiv double 1.000000e+00, %103
  %105 = fmul double %100, %104
  %106 = fptrunc double %105 to float
  %107 = fdiv float %83, %99
  %108 = fdiv float %83, %91
  br label %109

; <label>:109                                     ; preds = %._crit_edge7, %22
  %110 = phi float [ %92, %22 ], [ %.pre9, %._crit_edge7 ]
  %111 = phi float [ %84, %22 ], [ %.pre, %._crit_edge7 ]
  %indvars.iv = phi i64 [ 0, %22 ], [ %indvars.iv.next, %._crit_edge7 ]
  %112 = fmul float %106, %111
  %113 = fmul float %107, %110
  %114 = fsub float %112, %113
  %115 = fsub float -0.000000e+00, %114
  %116 = getelementptr inbounds [3 x float]* %f_i, i64 0, i64 %indvars.iv
  store float %115, float* %116, align 4, !tbaa !14
  %117 = fmul float %106, %110
  %118 = fmul float %108, %111
  %119 = fsub float %117, %118
  %120 = fsub float -0.000000e+00, %119
  %121 = getelementptr inbounds [3 x float]* %f_k, i64 0, i64 %indvars.iv
  store float %120, float* %121, align 4, !tbaa !14
  %122 = fadd float %119, %114
  %123 = getelementptr inbounds [3 x float]* %f_j, i64 0, i64 %indvars.iv
  store float %122, float* %123, align 4, !tbaa !14
  %124 = getelementptr inbounds [3 x float]* %f, i64 %34, i64 %indvars.iv
  %125 = load float* %124, align 4, !tbaa !14
  %126 = fsub float %125, %114
  store float %126, float* %124, align 4, !tbaa !14
  %127 = getelementptr inbounds [3 x float]* %f, i64 %36, i64 %indvars.iv
  %128 = load float* %127, align 4, !tbaa !14
  %129 = fadd float %122, %128
  store float %129, float* %127, align 4, !tbaa !14
  %130 = getelementptr inbounds [3 x float]* %f, i64 %38, i64 %indvars.iv
  %131 = load float* %130, align 4, !tbaa !14
  %132 = fsub float %131, %119
  store float %132, float* %130, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %133, label %._crit_edge7

._crit_edge7:                                     ; preds = %109
  %.phi.trans.insert = getelementptr inbounds [3 x float]* %r_kj, i64 0, i64 %indvars.iv.next
  %.pre = load float* %.phi.trans.insert, align 4, !tbaa !14
  %.phi.trans.insert8 = getelementptr inbounds [3 x float]* %r_ij, i64 0, i64 %indvars.iv.next
  %.pre9 = load float* %.phi.trans.insert8, align 4, !tbaa !14
  br label %109

; <label>:133                                     ; preds = %109
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 4
  %134 = fmul float %66, %63
  %135 = fadd float %vtot.03, %134
  %136 = load i32* %9, align 4, !tbaa !41
  %137 = sub nsw i32 %31, %136
  %138 = sext i32 %137 to i64
  %139 = load [3 x i32]** %10, align 8, !tbaa !43
  %140 = getelementptr inbounds [3 x i32]* %139, i64 %138, i64 0
  %141 = load i32* %140, align 4, !tbaa !36
  %142 = getelementptr inbounds [3 x i32]* %139, i64 %138, i64 1
  %143 = load i32* %142, align 4, !tbaa !36
  %144 = getelementptr inbounds [3 x i32]* %139, i64 %138, i64 2
  %145 = load i32* %144, align 4, !tbaa !36
  %146 = sub nsw i32 %28, %136
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [3 x i32]* %139, i64 %147, i64 0
  %149 = load i32* %148, align 4, !tbaa !36
  %150 = getelementptr inbounds [3 x i32]* %139, i64 %147, i64 1
  %151 = load i32* %150, align 4, !tbaa !36
  %152 = getelementptr inbounds [3 x i32]* %139, i64 %147, i64 2
  %153 = load i32* %152, align 4, !tbaa !36
  %154 = sub nsw i32 %153, %145
  %155 = sub nsw i32 %33, %136
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [3 x i32]* %139, i64 %156, i64 0
  %158 = load i32* %157, align 4, !tbaa !36
  %159 = getelementptr inbounds [3 x i32]* %139, i64 %156, i64 1
  %160 = load i32* %159, align 4, !tbaa !36
  %161 = getelementptr inbounds [3 x i32]* %139, i64 %156, i64 2
  %162 = load i32* %161, align 4, !tbaa !36
  %163 = sub nsw i32 %162, %145
  %164 = mul i32 %154, 3
  %165 = sub i32 3, %143
  %166 = add i32 %165, %151
  %167 = add i32 %166, %164
  %168 = mul i32 %167, 3
  %169 = sub i32 4, %141
  %170 = add i32 %169, %149
  %171 = add i32 %170, %168
  %172 = mul i32 %163, 3
  %173 = add i32 %165, %160
  %174 = add i32 %173, %172
  %175 = mul i32 %174, 3
  %176 = add i32 %169, %158
  %177 = add i32 %176, %175
  %178 = sext i32 %171 to i64
  %179 = load [3 x float]** %11, align 8, !tbaa !44
  %180 = getelementptr inbounds [3 x float]* %179, i64 %178, i64 0
  %181 = load float* %180, align 4, !tbaa !14
  %182 = load float* %12, align 4, !tbaa !14
  %183 = fadd float %181, %182
  %184 = getelementptr inbounds [3 x float]* %179, i64 %178, i64 1
  %185 = load float* %184, align 4, !tbaa !14
  %186 = load float* %13, align 4, !tbaa !14
  %187 = fadd float %185, %186
  %188 = getelementptr inbounds [3 x float]* %179, i64 %178, i64 2
  %189 = load float* %188, align 4, !tbaa !14
  %190 = load float* %14, align 4, !tbaa !14
  %191 = fadd float %189, %190
  store float %183, float* %180, align 4, !tbaa !14
  store float %187, float* %184, align 4, !tbaa !14
  store float %191, float* %188, align 4, !tbaa !14
  %192 = getelementptr inbounds [3 x float]* %179, i64 13, i64 0
  %193 = load float* %192, align 4, !tbaa !14
  %194 = load float* %15, align 4, !tbaa !14
  %195 = fadd float %193, %194
  %196 = getelementptr inbounds [3 x float]* %179, i64 13, i64 1
  %197 = load float* %196, align 4, !tbaa !14
  %198 = load float* %16, align 4, !tbaa !14
  %199 = fadd float %197, %198
  %200 = getelementptr inbounds [3 x float]* %179, i64 13, i64 2
  %201 = load float* %200, align 4, !tbaa !14
  %202 = load float* %17, align 4, !tbaa !14
  %203 = fadd float %201, %202
  store float %195, float* %192, align 4, !tbaa !14
  store float %199, float* %196, align 4, !tbaa !14
  store float %203, float* %200, align 4, !tbaa !14
  %204 = sext i32 %177 to i64
  %205 = getelementptr inbounds [3 x float]* %179, i64 %204, i64 0
  %206 = load float* %205, align 4, !tbaa !14
  %207 = load float* %18, align 4, !tbaa !14
  %208 = fadd float %206, %207
  %209 = getelementptr inbounds [3 x float]* %179, i64 %204, i64 1
  %210 = load float* %209, align 4, !tbaa !14
  %211 = load float* %19, align 4, !tbaa !14
  %212 = fadd float %210, %211
  %213 = getelementptr inbounds [3 x float]* %179, i64 %204, i64 2
  %214 = load float* %213, align 4, !tbaa !14
  %215 = load float* %20, align 4, !tbaa !14
  %216 = fadd float %214, %215
  store float %208, float* %205, align 4, !tbaa !14
  store float %212, float* %209, align 4, !tbaa !14
  store float %216, float* %213, align 4, !tbaa !14
  %217 = icmp slt i64 %indvars.iv.next6, %21
  br i1 %217, label %22, label %._crit_edge

._crit_edge:                                      ; preds = %133, %0
  %vtot.0.lcssa = phi float [ 0.000000e+00, %0 ], [ %135, %133 ]
  ret float %vtot.0.lcssa
}

; Function Attrs: nounwind optsize readnone
declare double @sin(double) #6

; Function Attrs: nounwind optsize ssp uwtable
define float @dih_angle([3 x float]* nocapture readnone %box, float* nocapture readonly %xi, float* nocapture readonly %xj, float* nocapture readonly %xk, float* nocapture readonly %xl, float* nocapture %r_ij, float* nocapture %r_kj, float* nocapture %r_kl, float* nocapture %m, float* nocapture %n, float* nocapture %cos_phi, float* nocapture %sign) #3 {
  %1 = load float* %xi, align 4, !tbaa !14
  %2 = load float* %xj, align 4, !tbaa !14
  %3 = fsub float %1, %2
  %4 = getelementptr inbounds float* %xi, i64 1
  %5 = load float* %4, align 4, !tbaa !14
  %6 = getelementptr inbounds float* %xj, i64 1
  %7 = load float* %6, align 4, !tbaa !14
  %8 = fsub float %5, %7
  %9 = getelementptr inbounds float* %xi, i64 2
  %10 = load float* %9, align 4, !tbaa !14
  %11 = getelementptr inbounds float* %xj, i64 2
  %12 = load float* %11, align 4, !tbaa !14
  %13 = fsub float %10, %12
  store float %3, float* %r_ij, align 4, !tbaa !14
  %14 = getelementptr inbounds float* %r_ij, i64 1
  store float %8, float* %14, align 4, !tbaa !14
  %15 = getelementptr inbounds float* %r_ij, i64 2
  store float %13, float* %15, align 4, !tbaa !14
  %16 = load float* %xk, align 4, !tbaa !14
  %17 = load float* %xj, align 4, !tbaa !14
  %18 = fsub float %16, %17
  %19 = getelementptr inbounds float* %xk, i64 1
  %20 = load float* %19, align 4, !tbaa !14
  %21 = load float* %6, align 4, !tbaa !14
  %22 = fsub float %20, %21
  %23 = getelementptr inbounds float* %xk, i64 2
  %24 = load float* %23, align 4, !tbaa !14
  %25 = load float* %11, align 4, !tbaa !14
  %26 = fsub float %24, %25
  store float %18, float* %r_kj, align 4, !tbaa !14
  %27 = getelementptr inbounds float* %r_kj, i64 1
  store float %22, float* %27, align 4, !tbaa !14
  %28 = getelementptr inbounds float* %r_kj, i64 2
  store float %26, float* %28, align 4, !tbaa !14
  %29 = load float* %xk, align 4, !tbaa !14
  %30 = load float* %xl, align 4, !tbaa !14
  %31 = fsub float %29, %30
  %32 = load float* %19, align 4, !tbaa !14
  %33 = getelementptr inbounds float* %xl, i64 1
  %34 = load float* %33, align 4, !tbaa !14
  %35 = fsub float %32, %34
  %36 = load float* %23, align 4, !tbaa !14
  %37 = getelementptr inbounds float* %xl, i64 2
  %38 = load float* %37, align 4, !tbaa !14
  %39 = fsub float %36, %38
  store float %31, float* %r_kl, align 4, !tbaa !14
  %40 = getelementptr inbounds float* %r_kl, i64 1
  store float %35, float* %40, align 4, !tbaa !14
  %41 = getelementptr inbounds float* %r_kl, i64 2
  store float %39, float* %41, align 4, !tbaa !14
  %42 = load float* %14, align 4, !tbaa !14
  %43 = load float* %28, align 4, !tbaa !14
  %44 = fmul float %42, %43
  %45 = load float* %15, align 4, !tbaa !14
  %46 = load float* %27, align 4, !tbaa !14
  %47 = fmul float %45, %46
  %48 = fsub float %44, %47
  store float %48, float* %m, align 4, !tbaa !14
  %49 = load float* %15, align 4, !tbaa !14
  %50 = load float* %r_kj, align 4, !tbaa !14
  %51 = fmul float %49, %50
  %52 = load float* %r_ij, align 4, !tbaa !14
  %53 = load float* %28, align 4, !tbaa !14
  %54 = fmul float %52, %53
  %55 = fsub float %51, %54
  %56 = getelementptr inbounds float* %m, i64 1
  store float %55, float* %56, align 4, !tbaa !14
  %57 = load float* %r_ij, align 4, !tbaa !14
  %58 = load float* %27, align 4, !tbaa !14
  %59 = fmul float %57, %58
  %60 = load float* %14, align 4, !tbaa !14
  %61 = load float* %r_kj, align 4, !tbaa !14
  %62 = fmul float %60, %61
  %63 = fsub float %59, %62
  %64 = getelementptr inbounds float* %m, i64 2
  store float %63, float* %64, align 4, !tbaa !14
  %65 = load float* %27, align 4, !tbaa !14
  %66 = load float* %41, align 4, !tbaa !14
  %67 = fmul float %65, %66
  %68 = load float* %28, align 4, !tbaa !14
  %69 = load float* %40, align 4, !tbaa !14
  %70 = fmul float %68, %69
  %71 = fsub float %67, %70
  store float %71, float* %n, align 4, !tbaa !14
  %72 = load float* %28, align 4, !tbaa !14
  %73 = load float* %r_kl, align 4, !tbaa !14
  %74 = fmul float %72, %73
  %75 = load float* %r_kj, align 4, !tbaa !14
  %76 = load float* %41, align 4, !tbaa !14
  %77 = fmul float %75, %76
  %78 = fsub float %74, %77
  %79 = getelementptr inbounds float* %n, i64 1
  store float %78, float* %79, align 4, !tbaa !14
  %80 = load float* %r_kj, align 4, !tbaa !14
  %81 = load float* %40, align 4, !tbaa !14
  %82 = fmul float %80, %81
  %83 = load float* %27, align 4, !tbaa !14
  %84 = load float* %r_kl, align 4, !tbaa !14
  %85 = fmul float %83, %84
  %86 = fsub float %82, %85
  %87 = getelementptr inbounds float* %n, i64 2
  store float %86, float* %87, align 4, !tbaa !14
  %88 = tail call fastcc float @cos_angle(float* %m, float* %n) #11
  store float %88, float* %cos_phi, align 4, !tbaa !14
  %89 = fpext float %88 to double
  %90 = tail call double @acos(double %89) #10
  %91 = fptrunc double %90 to float
  %92 = load float* %r_ij, align 4, !tbaa !14
  %93 = load float* %n, align 4, !tbaa !14
  %94 = fmul float %92, %93
  %95 = load float* %14, align 4, !tbaa !14
  %96 = load float* %79, align 4, !tbaa !14
  %97 = fmul float %95, %96
  %98 = fadd float %94, %97
  %99 = load float* %15, align 4, !tbaa !14
  %100 = load float* %87, align 4, !tbaa !14
  %101 = fmul float %99, %100
  %102 = fadd float %98, %101
  %103 = fcmp olt float %102, 0.000000e+00
  %104 = select i1 %103, float -1.000000e+00, float 1.000000e+00
  store float %104, float* %sign, align 4, !tbaa !14
  %105 = fmul float %91, %104
  ret float %105
}

; Function Attrs: nounwind optsize ssp uwtable
define void @do_dih_fup(i32 %i, i32 %j, i32 %k, i32 %l, float %ddphi, float* nocapture readonly %r_ij, float* nocapture readonly %r_kj, float* nocapture readonly %r_kl, float* nocapture readonly %m, float* nocapture readonly %n, [3 x float]* nocapture %f, %struct.t_forcerec* nocapture readonly %fr, %struct.t_graph* nocapture readonly %g, [3 x float]* nocapture readnone %x) #3 {
  %1 = load float* %m, align 4, !tbaa !14
  %2 = fmul float %1, %1
  %3 = getelementptr inbounds float* %m, i64 1
  %4 = load float* %3, align 4, !tbaa !14
  %5 = fmul float %4, %4
  %6 = fadd float %2, %5
  %7 = getelementptr inbounds float* %m, i64 2
  %8 = load float* %7, align 4, !tbaa !14
  %9 = fmul float %8, %8
  %10 = fadd float %6, %9
  %11 = load float* %r_kj, align 4, !tbaa !14
  %12 = fmul float %11, %11
  %13 = getelementptr inbounds float* %r_kj, i64 1
  %14 = load float* %13, align 4, !tbaa !14
  %15 = fmul float %14, %14
  %16 = fadd float %12, %15
  %17 = getelementptr inbounds float* %r_kj, i64 2
  %18 = load float* %17, align 4, !tbaa !14
  %19 = fmul float %18, %18
  %20 = fadd float %16, %19
  %sqrtf = tail call float @sqrtf(float %20) #6
  %21 = fmul float %sqrtf, %ddphi
  %22 = fsub float -0.000000e+00, %21
  %23 = fdiv float %22, %10
  %24 = fmul float %1, %23
  %25 = fmul float %4, %23
  %26 = fmul float %8, %23
  %27 = load float* %n, align 4, !tbaa !14
  %28 = fmul float %27, %27
  %29 = getelementptr inbounds float* %n, i64 1
  %30 = load float* %29, align 4, !tbaa !14
  %31 = fmul float %30, %30
  %32 = fadd float %28, %31
  %33 = getelementptr inbounds float* %n, i64 2
  %34 = load float* %33, align 4, !tbaa !14
  %35 = fmul float %34, %34
  %36 = fadd float %32, %35
  %37 = fdiv float %21, %36
  %38 = fmul float %27, %37
  %39 = fmul float %30, %37
  %40 = fmul float %34, %37
  %41 = load float* %r_ij, align 4, !tbaa !14
  %42 = fmul float %11, %41
  %43 = getelementptr inbounds float* %r_ij, i64 1
  %44 = load float* %43, align 4, !tbaa !14
  %45 = fmul float %14, %44
  %46 = fadd float %42, %45
  %47 = getelementptr inbounds float* %r_ij, i64 2
  %48 = load float* %47, align 4, !tbaa !14
  %49 = fmul float %18, %48
  %50 = fadd float %46, %49
  %51 = fdiv float %50, %20
  %52 = load float* %r_kl, align 4, !tbaa !14
  %53 = fmul float %11, %52
  %54 = getelementptr inbounds float* %r_kl, i64 1
  %55 = load float* %54, align 4, !tbaa !14
  %56 = fmul float %14, %55
  %57 = fadd float %53, %56
  %58 = getelementptr inbounds float* %r_kl, i64 2
  %59 = load float* %58, align 4, !tbaa !14
  %60 = fmul float %18, %59
  %61 = fadd float %57, %60
  %62 = fdiv float %61, %20
  %63 = fmul float %24, %51
  %64 = fmul float %25, %51
  %65 = fmul float %26, %51
  %66 = fmul float %38, %62
  %67 = fmul float %39, %62
  %68 = fmul float %40, %62
  %69 = fsub float %63, %66
  %70 = fsub float %64, %67
  %71 = fsub float %65, %68
  %72 = fsub float %24, %69
  %73 = fsub float %25, %70
  %74 = fsub float %26, %71
  %75 = fadd float %38, %69
  %76 = fadd float %39, %70
  %77 = fadd float %40, %71
  %78 = sext i32 %i to i64
  %79 = getelementptr inbounds [3 x float]* %f, i64 %78, i64 0
  %80 = load float* %79, align 4, !tbaa !14
  %81 = fadd float %24, %80
  %82 = getelementptr inbounds [3 x float]* %f, i64 %78, i64 1
  %83 = load float* %82, align 4, !tbaa !14
  %84 = fadd float %25, %83
  %85 = getelementptr inbounds [3 x float]* %f, i64 %78, i64 2
  %86 = load float* %85, align 4, !tbaa !14
  %87 = fadd float %26, %86
  store float %81, float* %79, align 4, !tbaa !14
  store float %84, float* %82, align 4, !tbaa !14
  store float %87, float* %85, align 4, !tbaa !14
  %88 = sext i32 %j to i64
  %89 = getelementptr inbounds [3 x float]* %f, i64 %88, i64 0
  %90 = load float* %89, align 4, !tbaa !14
  %91 = fsub float %90, %72
  %92 = getelementptr inbounds [3 x float]* %f, i64 %88, i64 1
  %93 = load float* %92, align 4, !tbaa !14
  %94 = fsub float %93, %73
  %95 = getelementptr inbounds [3 x float]* %f, i64 %88, i64 2
  %96 = load float* %95, align 4, !tbaa !14
  %97 = fsub float %96, %74
  store float %91, float* %89, align 4, !tbaa !14
  store float %94, float* %92, align 4, !tbaa !14
  store float %97, float* %95, align 4, !tbaa !14
  %98 = sext i32 %k to i64
  %99 = getelementptr inbounds [3 x float]* %f, i64 %98, i64 0
  %100 = load float* %99, align 4, !tbaa !14
  %101 = fsub float %100, %75
  %102 = getelementptr inbounds [3 x float]* %f, i64 %98, i64 1
  %103 = load float* %102, align 4, !tbaa !14
  %104 = fsub float %103, %76
  %105 = getelementptr inbounds [3 x float]* %f, i64 %98, i64 2
  %106 = load float* %105, align 4, !tbaa !14
  %107 = fsub float %106, %77
  store float %101, float* %99, align 4, !tbaa !14
  store float %104, float* %102, align 4, !tbaa !14
  store float %107, float* %105, align 4, !tbaa !14
  %108 = sext i32 %l to i64
  %109 = getelementptr inbounds [3 x float]* %f, i64 %108, i64 0
  %110 = load float* %109, align 4, !tbaa !14
  %111 = fadd float %38, %110
  %112 = getelementptr inbounds [3 x float]* %f, i64 %108, i64 1
  %113 = load float* %112, align 4, !tbaa !14
  %114 = fadd float %39, %113
  %115 = getelementptr inbounds [3 x float]* %f, i64 %108, i64 2
  %116 = load float* %115, align 4, !tbaa !14
  %117 = fadd float %40, %116
  store float %111, float* %109, align 4, !tbaa !14
  store float %114, float* %112, align 4, !tbaa !14
  store float %117, float* %115, align 4, !tbaa !14
  %118 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 3
  %119 = load i32* %118, align 4, !tbaa !41
  %120 = sub nsw i32 %j, %119
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 7
  %123 = load [3 x i32]** %122, align 8, !tbaa !43
  %124 = getelementptr inbounds [3 x i32]* %123, i64 %121, i64 0
  %125 = load i32* %124, align 4, !tbaa !36
  %126 = getelementptr inbounds [3 x i32]* %123, i64 %121, i64 1
  %127 = load i32* %126, align 4, !tbaa !36
  %128 = getelementptr inbounds [3 x i32]* %123, i64 %121, i64 2
  %129 = load i32* %128, align 4, !tbaa !36
  %130 = sub nsw i32 %i, %119
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [3 x i32]* %123, i64 %131, i64 0
  %133 = load i32* %132, align 4, !tbaa !36
  %134 = getelementptr inbounds [3 x i32]* %123, i64 %131, i64 1
  %135 = load i32* %134, align 4, !tbaa !36
  %136 = getelementptr inbounds [3 x i32]* %123, i64 %131, i64 2
  %137 = load i32* %136, align 4, !tbaa !36
  %138 = sub nsw i32 %137, %129
  %139 = sub nsw i32 %k, %119
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [3 x i32]* %123, i64 %140, i64 0
  %142 = load i32* %141, align 4, !tbaa !36
  %143 = getelementptr inbounds [3 x i32]* %123, i64 %140, i64 1
  %144 = load i32* %143, align 4, !tbaa !36
  %145 = getelementptr inbounds [3 x i32]* %123, i64 %140, i64 2
  %146 = load i32* %145, align 4, !tbaa !36
  %147 = sub nsw i32 %146, %129
  %148 = sub nsw i32 %l, %119
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [3 x i32]* %123, i64 %149, i64 0
  %151 = load i32* %150, align 4, !tbaa !36
  %152 = getelementptr inbounds [3 x i32]* %123, i64 %149, i64 1
  %153 = load i32* %152, align 4, !tbaa !36
  %154 = getelementptr inbounds [3 x i32]* %123, i64 %149, i64 2
  %155 = load i32* %154, align 4, !tbaa !36
  %156 = sub nsw i32 %155, %129
  %157 = mul i32 %138, 3
  %158 = sub i32 3, %127
  %159 = add i32 %158, %135
  %160 = add i32 %159, %157
  %161 = mul i32 %160, 3
  %162 = sub i32 4, %125
  %163 = add i32 %162, %133
  %164 = add i32 %163, %161
  %165 = mul i32 %147, 3
  %166 = add i32 %158, %144
  %167 = add i32 %166, %165
  %168 = mul i32 %167, 3
  %169 = add i32 %162, %142
  %170 = add i32 %169, %168
  %171 = mul i32 %156, 3
  %172 = add i32 %158, %153
  %173 = add i32 %172, %171
  %174 = mul i32 %173, 3
  %175 = add i32 %162, %151
  %176 = add i32 %175, %174
  %177 = sext i32 %164 to i64
  %178 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 58
  %179 = load [3 x float]** %178, align 8, !tbaa !44
  %180 = getelementptr inbounds [3 x float]* %179, i64 %177, i64 0
  %181 = load float* %180, align 4, !tbaa !14
  %182 = fadd float %24, %181
  %183 = getelementptr inbounds [3 x float]* %179, i64 %177, i64 1
  %184 = load float* %183, align 4, !tbaa !14
  %185 = fadd float %25, %184
  %186 = getelementptr inbounds [3 x float]* %179, i64 %177, i64 2
  %187 = load float* %186, align 4, !tbaa !14
  %188 = fadd float %26, %187
  store float %182, float* %180, align 4, !tbaa !14
  store float %185, float* %183, align 4, !tbaa !14
  store float %188, float* %186, align 4, !tbaa !14
  %189 = getelementptr inbounds [3 x float]* %179, i64 13, i64 0
  %190 = load float* %189, align 4, !tbaa !14
  %191 = fsub float %190, %72
  %192 = getelementptr inbounds [3 x float]* %179, i64 13, i64 1
  %193 = load float* %192, align 4, !tbaa !14
  %194 = fsub float %193, %73
  %195 = getelementptr inbounds [3 x float]* %179, i64 13, i64 2
  %196 = load float* %195, align 4, !tbaa !14
  %197 = fsub float %196, %74
  store float %191, float* %189, align 4, !tbaa !14
  store float %194, float* %192, align 4, !tbaa !14
  store float %197, float* %195, align 4, !tbaa !14
  %198 = sext i32 %170 to i64
  %199 = getelementptr inbounds [3 x float]* %179, i64 %198, i64 0
  %200 = load float* %199, align 4, !tbaa !14
  %201 = fsub float %200, %75
  %202 = getelementptr inbounds [3 x float]* %179, i64 %198, i64 1
  %203 = load float* %202, align 4, !tbaa !14
  %204 = fsub float %203, %76
  %205 = getelementptr inbounds [3 x float]* %179, i64 %198, i64 2
  %206 = load float* %205, align 4, !tbaa !14
  %207 = fsub float %206, %77
  store float %201, float* %199, align 4, !tbaa !14
  store float %204, float* %202, align 4, !tbaa !14
  store float %207, float* %205, align 4, !tbaa !14
  %208 = sext i32 %176 to i64
  %209 = getelementptr inbounds [3 x float]* %179, i64 %208, i64 0
  %210 = load float* %209, align 4, !tbaa !14
  %211 = fadd float %38, %210
  %212 = getelementptr inbounds [3 x float]* %179, i64 %208, i64 1
  %213 = load float* %212, align 4, !tbaa !14
  %214 = fadd float %39, %213
  %215 = getelementptr inbounds [3 x float]* %179, i64 %208, i64 2
  %216 = load float* %215, align 4, !tbaa !14
  %217 = fadd float %40, %216
  store float %211, float* %209, align 4, !tbaa !14
  store float %214, float* %212, align 4, !tbaa !14
  store float %217, float* %215, align 4, !tbaa !14
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define float @dopdihs(float %cpA, float %cpB, float %phiA, float %phiB, i32 %mult, float %phi, float %lambda, float* nocapture %V, float* nocapture %F) #3 {
  %1 = fsub float 1.000000e+00, %lambda
  %2 = fmul float %1, %phiA
  %3 = fmul float %phiB, %lambda
  %4 = fadd float %3, %2
  %5 = fpext float %4 to double
  %6 = fmul double %5, 0x3F91DF46A2529D39
  %7 = fptrunc double %6 to float
  %8 = fmul float %1, %cpA
  %9 = fmul float %cpB, %lambda
  %10 = fadd float %9, %8
  %11 = sitofp i32 %mult to float
  %12 = fmul float %11, %phi
  %13 = fsub float %12, %7
  %14 = fpext float %13 to double
  %15 = tail call double @sin(double %14) #10
  %16 = fptrunc double %15 to float
  %17 = fmul float %11, %10
  %18 = fmul float %17, %16
  %19 = fsub float -0.000000e+00, %18
  %20 = tail call double @cos(double %14) #10
  %21 = fadd double %20, 1.000000e+00
  %22 = fptrunc double %21 to float
  %23 = fmul float %10, %22
  %24 = fsub float %cpB, %cpA
  %25 = fmul float %24, %22
  %26 = fsub float %phiA, %phiB
  %27 = fmul float %26, %10
  %28 = fmul float %27, %16
  %29 = fsub float %25, %28
  store float %23, float* %V, align 4, !tbaa !14
  store float %19, float* %F, align 4, !tbaa !14
  ret float %29
}

; Function Attrs: nounwind optsize readnone
declare double @cos(double) #6

; Function Attrs: nounwind optsize ssp uwtable
define float @pdihs(i32 %nbonds, i32* nocapture readonly %forceatoms, %union.t_iparams* nocapture readonly %forceparams, [3 x float]* nocapture readonly %x, [3 x float]* nocapture %f, %struct.t_forcerec* nocapture readonly %fr, %struct.t_graph* nocapture readonly %g, [3 x float]* nocapture readnone %box, float %lambda, float* nocapture %dvdlambda, %struct.t_mdatoms* nocapture readnone %md, i32 %ngrp, float* nocapture readnone %egnb, float* nocapture readnone %egcoul, %struct.t_fcdata* nocapture readnone %fcd) #3 {
  %r_ij = alloca [3 x float], align 4
  %r_kj = alloca [3 x float], align 4
  %r_kl = alloca [3 x float], align 4
  %m = alloca [3 x float], align 4
  %n = alloca [3 x float], align 4
  %cos_phi = alloca float, align 4
  %sign = alloca float, align 4
  %1 = icmp sgt i32 %nbonds, 0
  br i1 %1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %2 = getelementptr inbounds [3 x float]* %r_ij, i64 0, i64 0
  %3 = getelementptr inbounds [3 x float]* %r_kj, i64 0, i64 0
  %4 = getelementptr inbounds [3 x float]* %r_kl, i64 0, i64 0
  %5 = getelementptr inbounds [3 x float]* %m, i64 0, i64 0
  %6 = getelementptr inbounds [3 x float]* %n, i64 0, i64 0
  %7 = fsub float 1.000000e+00, %lambda
  %8 = sext i32 %nbonds to i64
  br label %9

; <label>:9                                       ; preds = %.lr.ph, %9
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %9 ]
  %vtot.02 = phi float [ 0.000000e+00, %.lr.ph ], [ %75, %9 ]
  %10 = add nuw nsw i64 %indvars.iv, 1
  %11 = getelementptr inbounds i32* %forceatoms, i64 %indvars.iv
  %12 = load i32* %11, align 4, !tbaa !36
  %13 = add nuw nsw i64 %indvars.iv, 2
  %14 = getelementptr inbounds i32* %forceatoms, i64 %10
  %15 = load i32* %14, align 4, !tbaa !36
  %16 = add nuw nsw i64 %indvars.iv, 3
  %17 = getelementptr inbounds i32* %forceatoms, i64 %13
  %18 = load i32* %17, align 4, !tbaa !36
  %19 = add nuw nsw i64 %indvars.iv, 4
  %20 = getelementptr inbounds i32* %forceatoms, i64 %16
  %21 = load i32* %20, align 4, !tbaa !36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 5
  %22 = getelementptr inbounds i32* %forceatoms, i64 %19
  %23 = load i32* %22, align 4, !tbaa !36
  %24 = sext i32 %15 to i64
  %25 = getelementptr inbounds [3 x float]* %x, i64 %24, i64 0
  %26 = sext i32 %18 to i64
  %27 = getelementptr inbounds [3 x float]* %x, i64 %26, i64 0
  %28 = sext i32 %21 to i64
  %29 = getelementptr inbounds [3 x float]* %x, i64 %28, i64 0
  %30 = sext i32 %23 to i64
  %31 = getelementptr inbounds [3 x float]* %x, i64 %30, i64 0
  %32 = call float @dih_angle([3 x float]* undef, float* %25, float* %27, float* %29, float* %31, float* %2, float* %3, float* %4, float* %5, float* %6, float* %cos_phi, float* %sign) #11
  %33 = sext i32 %12 to i64
  %34 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %33, i32 0, i32 1
  %35 = load float* %34, align 4, !tbaa !59
  %36 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %33, i32 0, i32 4
  %37 = load float* %36, align 4, !tbaa !61
  %38 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %33, i32 0, i32 0
  %39 = load float* %38, align 4, !tbaa !62
  %40 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %33, i32 0, i32 3
  %41 = load float* %40, align 4, !tbaa !63
  %42 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %33, i32 0, i32 2
  %43 = bitcast float* %42 to i32*
  %44 = load i32* %43, align 4, !tbaa !64
  %45 = fmul float %7, %39
  %46 = fmul float %41, %lambda
  %47 = fadd float %45, %46
  %48 = fpext float %47 to double
  %49 = fmul double %48, 0x3F91DF46A2529D39
  %50 = fptrunc double %49 to float
  %51 = fmul float %7, %35
  %52 = fmul float %37, %lambda
  %53 = fadd float %51, %52
  %54 = sitofp i32 %44 to float
  %55 = fmul float %32, %54
  %56 = fsub float %55, %50
  %57 = fpext float %56 to double
  %58 = tail call double @sin(double %57) #10
  %59 = fptrunc double %58 to float
  %60 = fmul float %53, %54
  %61 = fmul float %60, %59
  %62 = fsub float -0.000000e+00, %61
  %63 = tail call double @cos(double %57) #10
  %64 = fadd double %63, 1.000000e+00
  %65 = fptrunc double %64 to float
  %66 = fmul float %53, %65
  %67 = fsub float %37, %35
  %68 = fmul float %67, %65
  %69 = fsub float %39, %41
  %70 = fmul float %53, %69
  %71 = fmul float %70, %59
  %72 = fsub float %68, %71
  %73 = load float* %dvdlambda, align 4, !tbaa !14
  %74 = fadd float %73, %72
  store float %74, float* %dvdlambda, align 4, !tbaa !14
  %75 = fadd float %vtot.02, %66
  call void @do_dih_fup(i32 %15, i32 %18, i32 %21, i32 %23, float %62, float* %2, float* %3, float* %4, float* %5, float* %6, [3 x float]* %f, %struct.t_forcerec* %fr, %struct.t_graph* %g, [3 x float]* undef) #11
  %76 = icmp slt i64 %indvars.iv.next, %8
  br i1 %76, label %9, label %._crit_edge

._crit_edge:                                      ; preds = %9, %0
  %vtot.0.lcssa = phi float [ 0.000000e+00, %0 ], [ %75, %9 ]
  ret float %vtot.0.lcssa
}

; Function Attrs: nounwind optsize ssp uwtable
define float @idihs(i32 %nbonds, i32* nocapture readonly %forceatoms, %union.t_iparams* nocapture readonly %forceparams, [3 x float]* nocapture readonly %x, [3 x float]* nocapture %f, %struct.t_forcerec* nocapture readonly %fr, %struct.t_graph* nocapture readonly %g, [3 x float]* nocapture readnone %box, float %lambda, float* nocapture %dvdlambda, %struct.t_mdatoms* nocapture readnone %md, i32 %ngrp, float* nocapture readnone %egnb, float* nocapture readnone %egcoul, %struct.t_fcdata* nocapture readnone %fcd) #3 {
  %cos_phi = alloca float, align 4
  %sign = alloca float, align 4
  %r_ij = alloca [3 x float], align 4
  %r_kj = alloca [3 x float], align 4
  %r_kl = alloca [3 x float], align 4
  %m = alloca [3 x float], align 4
  %n = alloca [3 x float], align 4
  %1 = icmp sgt i32 %nbonds, 0
  br i1 %1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %2 = getelementptr inbounds [3 x float]* %r_ij, i64 0, i64 0
  %3 = getelementptr inbounds [3 x float]* %r_kj, i64 0, i64 0
  %4 = getelementptr inbounds [3 x float]* %r_kl, i64 0, i64 0
  %5 = getelementptr inbounds [3 x float]* %m, i64 0, i64 0
  %6 = getelementptr inbounds [3 x float]* %n, i64 0, i64 0
  %7 = fsub float 1.000000e+00, %lambda
  %8 = sext i32 %nbonds to i64
  br label %9

; <label>:9                                       ; preds = %.lr.ph, %9
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %9 ]
  %vtot.02 = phi float [ 0.000000e+00, %.lr.ph ], [ %68, %9 ]
  %10 = add nuw nsw i64 %indvars.iv, 1
  %11 = getelementptr inbounds i32* %forceatoms, i64 %indvars.iv
  %12 = load i32* %11, align 4, !tbaa !36
  %13 = add nuw nsw i64 %indvars.iv, 2
  %14 = getelementptr inbounds i32* %forceatoms, i64 %10
  %15 = load i32* %14, align 4, !tbaa !36
  %16 = add nuw nsw i64 %indvars.iv, 3
  %17 = getelementptr inbounds i32* %forceatoms, i64 %13
  %18 = load i32* %17, align 4, !tbaa !36
  %19 = add nuw nsw i64 %indvars.iv, 4
  %20 = getelementptr inbounds i32* %forceatoms, i64 %16
  %21 = load i32* %20, align 4, !tbaa !36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 5
  %22 = getelementptr inbounds i32* %forceatoms, i64 %19
  %23 = load i32* %22, align 4, !tbaa !36
  %24 = sext i32 %15 to i64
  %25 = getelementptr inbounds [3 x float]* %x, i64 %24, i64 0
  %26 = sext i32 %18 to i64
  %27 = getelementptr inbounds [3 x float]* %x, i64 %26, i64 0
  %28 = sext i32 %21 to i64
  %29 = getelementptr inbounds [3 x float]* %x, i64 %28, i64 0
  %30 = sext i32 %23 to i64
  %31 = getelementptr inbounds [3 x float]* %x, i64 %30, i64 0
  %32 = call float @dih_angle([3 x float]* undef, float* %25, float* %27, float* %29, float* %31, float* %2, float* %3, float* %4, float* %5, float* %6, float* %cos_phi, float* %sign) #11
  %33 = sext i32 %12 to i64
  %34 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %33, i32 0, i32 1
  %35 = load float* %34, align 4, !tbaa !46
  %36 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %33, i32 0, i32 3
  %37 = load float* %36, align 4, !tbaa !48
  %38 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %33, i32 0, i32 0
  %39 = load float* %38, align 4, !tbaa !49
  %40 = fpext float %39 to double
  %41 = fmul double %40, 0x3F91DF46A2529D39
  %42 = fptrunc double %41 to float
  %43 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %33, i32 0, i32 2
  %44 = load float* %43, align 4, !tbaa !50
  %45 = fpext float %44 to double
  %46 = fmul double %45, 0x3F91DF46A2529D39
  %47 = fptrunc double %46 to float
  %48 = fmul float %7, %35
  %49 = fmul float %37, %lambda
  %50 = fadd float %48, %49
  %51 = fmul float %7, %42
  %52 = fmul float %47, %lambda
  %53 = fadd float %51, %52
  %54 = fsub float %32, %53
  %55 = fmul float %54, %54
  %56 = fmul float %50, %54
  %57 = fmul float %50, 5.000000e-01
  %58 = fmul float %57, %55
  %59 = fsub float %37, %35
  %60 = fmul float %59, 5.000000e-01
  %61 = fmul float %60, %55
  %62 = fsub float %42, %47
  %63 = fmul float %50, %62
  %64 = fmul float %63, %54
  %65 = fadd float %64, %61
  %66 = load float* %dvdlambda, align 4, !tbaa !14
  %67 = fadd float %66, %65
  store float %67, float* %dvdlambda, align 4, !tbaa !14
  %68 = fadd float %vtot.02, %58
  call void @do_dih_fup(i32 %15, i32 %18, i32 %21, i32 %23, float %56, float* %2, float* %3, float* %4, float* %5, float* %6, [3 x float]* %f, %struct.t_forcerec* %fr, %struct.t_graph* %g, [3 x float]* undef) #11
  %69 = icmp slt i64 %indvars.iv.next, %8
  br i1 %69, label %9, label %._crit_edge

._crit_edge:                                      ; preds = %9, %0
  %vtot.0.lcssa = phi float [ 0.000000e+00, %0 ], [ %68, %9 ]
  ret float %vtot.0.lcssa
}

; Function Attrs: nounwind optsize ssp uwtable
define float @posres(i32 %nbonds, i32* nocapture readonly %forceatoms, %union.t_iparams* %forceparams, [3 x float]* %x, [3 x float]* nocapture %f, %struct.t_forcerec* nocapture readonly %fr, %struct.t_graph* nocapture readnone %g, [3 x float]* nocapture readnone %box, float %lambda, float* nocapture readnone %dvdlambda, %struct.t_mdatoms* nocapture readnone %md, i32 %ngrp, float* nocapture readnone %egnb, float* nocapture readnone %egcoul, %struct.t_fcdata* nocapture readnone %fcd) #3 {
  %dx = alloca [3 x float], align 4
  %1 = icmp sgt i32 %nbonds, 0
  br i1 %1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %2 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 0
  %3 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 0
  %4 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 1
  %5 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 2
  %6 = sext i32 %nbonds to i64
  br label %7

; <label>:7                                       ; preds = %.lr.ph, %51
  %indvars.iv6 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next7, %51 ]
  %vtot.03 = phi float [ 0.000000e+00, %.lr.ph ], [ %52, %51 ]
  %8 = or i64 %indvars.iv6, 1
  %9 = getelementptr inbounds i32* %forceatoms, i64 %indvars.iv6
  %10 = load i32* %9, align 4, !tbaa !36
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 2
  %11 = getelementptr inbounds i32* %forceatoms, i64 %8
  %12 = load i32* %11, align 4, !tbaa !36
  %13 = sext i32 %10 to i64
  %14 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %13, i32 0, i32 3
  %15 = load i32* %2, align 4, !tbaa !65
  %16 = icmp eq i32 %15, 1
  %17 = sext i32 %12 to i64
  %18 = getelementptr inbounds [3 x float]* %x, i64 %17, i64 0
  %19 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %13, i32 0, i32 0
  br i1 %16, label %20, label %34

; <label>:20                                      ; preds = %7
  %21 = load float* %18, align 4, !tbaa !14
  %22 = load float* %19, align 4, !tbaa !14
  %23 = fsub float %21, %22
  %24 = getelementptr inbounds [3 x float]* %x, i64 %17, i64 1
  %25 = load float* %24, align 4, !tbaa !14
  %26 = getelementptr inbounds float* %19, i64 1
  %27 = load float* %26, align 4, !tbaa !14
  %28 = fsub float %25, %27
  %29 = getelementptr inbounds [3 x float]* %x, i64 %17, i64 2
  %30 = load float* %29, align 4, !tbaa !14
  %31 = getelementptr inbounds float* %19, i64 2
  %32 = load float* %31, align 4, !tbaa !14
  %33 = fsub float %30, %32
  store float %23, float* %3, align 4, !tbaa !14
  store float %28, float* %4, align 4, !tbaa !14
  store float %33, float* %5, align 4, !tbaa !14
  br label %.preheader

; <label>:34                                      ; preds = %7
  call void @pbc_dx(float* %18, float* %19, float* %3) #9
  br label %.preheader

.preheader:                                       ; preds = %20, %34, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ 0, %34 ], [ 0, %20 ]
  %v.01 = phi float [ %50, %.preheader ], [ 0.000000e+00, %34 ], [ 0.000000e+00, %20 ]
  %35 = getelementptr inbounds [3 x float]* %f, i64 %17, i64 %indvars.iv
  %36 = load float* %35, align 4, !tbaa !14
  %37 = getelementptr inbounds float* %14, i64 %indvars.iv
  %38 = load float* %37, align 4, !tbaa !14
  %39 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 %indvars.iv
  %40 = load float* %39, align 4, !tbaa !14
  %41 = fmul float %38, %40
  %42 = fsub float %36, %41
  %43 = fpext float %38 to double
  %44 = fmul double %43, 5.000000e-01
  %45 = fpext float %40 to double
  %46 = fmul double %44, %45
  %47 = fmul double %45, %46
  %48 = fpext float %v.01 to double
  %49 = fadd double %48, %47
  %50 = fptrunc double %49 to float
  store float %42, float* %35, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %51, label %.preheader

; <label>:51                                      ; preds = %.preheader
  %52 = fadd float %vtot.03, %50
  %53 = icmp slt i64 %indvars.iv.next7, %6
  br i1 %53, label %7, label %._crit_edge

._crit_edge:                                      ; preds = %51, %0
  %vtot.0.lcssa = phi float [ 0.000000e+00, %0 ], [ %52, %51 ]
  ret float %vtot.0.lcssa
}

; Function Attrs: nounwind optsize ssp uwtable
define float @angres(i32 %nbonds, i32* nocapture readonly %forceatoms, %union.t_iparams* nocapture readonly %forceparams, [3 x float]* nocapture readonly %x, [3 x float]* nocapture %f, %struct.t_forcerec* nocapture readonly %fr, %struct.t_graph* nocapture readonly %g, [3 x float]* nocapture readnone %box, float %lambda, float* nocapture %dvdlambda, %struct.t_mdatoms* nocapture readnone %md, i32 %ngrp, float* nocapture readnone %egnb, float* nocapture readnone %egcoul, %struct.t_fcdata* nocapture readnone %fcd) #3 {
  %1 = tail call fastcc float @low_angres(i32 %nbonds, i32* %forceatoms, %union.t_iparams* %forceparams, [3 x float]* %x, [3 x float]* %f, %struct.t_forcerec* %fr, %struct.t_graph* %g, float %lambda, float* %dvdlambda, i32 0) #11
  ret float %1
}

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc float @low_angres(i32 %nbonds, i32* nocapture readonly %forceatoms, %union.t_iparams* nocapture readonly %forceparams, [3 x float]* nocapture readonly %x, [3 x float]* nocapture %f, %struct.t_forcerec* nocapture readonly %fr, %struct.t_graph* nocapture readonly %g, float %lambda, float* nocapture %dvdlambda, i32 %bZAxis) #3 {
  %r_ij = alloca [3 x float], align 4
  %r_kl = alloca [3 x float], align 4
  %f_i = alloca [3 x float], align 4
  %f_k = alloca [3 x float], align 4
  %1 = icmp sgt i32 %nbonds, 0
  br i1 %1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %2 = getelementptr inbounds [3 x float]* %r_ij, i64 0, i64 0
  %3 = getelementptr inbounds [3 x float]* %r_ij, i64 0, i64 1
  %4 = getelementptr inbounds [3 x float]* %r_ij, i64 0, i64 2
  %5 = icmp ne i32 %bZAxis, 0
  %6 = getelementptr inbounds [3 x float]* %r_kl, i64 0, i64 0
  %7 = getelementptr inbounds [3 x float]* %r_kl, i64 0, i64 1
  %8 = getelementptr inbounds [3 x float]* %r_kl, i64 0, i64 2
  %9 = fsub float 1.000000e+00, %lambda
  %10 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 3
  %11 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 7
  %12 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 58
  %13 = getelementptr inbounds [3 x float]* %f_i, i64 0, i64 0
  %14 = getelementptr inbounds [3 x float]* %f_i, i64 0, i64 1
  %15 = getelementptr inbounds [3 x float]* %f_i, i64 0, i64 2
  %16 = getelementptr inbounds [3 x float]* %f_k, i64 0, i64 0
  %17 = getelementptr inbounds [3 x float]* %f_k, i64 0, i64 1
  %18 = getelementptr inbounds [3 x float]* %f_k, i64 0, i64 2
  br label %19

; <label>:19                                      ; preds = %.lr.ph, %.backedge
  %i.06 = phi i32 [ 0, %.lr.ph ], [ %i.1, %.backedge ]
  %ak.05 = phi i32 [ 0, %.lr.ph ], [ %ak.1, %.backedge ]
  %al.04 = phi i32 [ 0, %.lr.ph ], [ %al.1, %.backedge ]
  %vtot.03 = phi float [ 0.000000e+00, %.lr.ph ], [ %176, %.backedge ]
  %20 = add nsw i32 %i.06, 1
  %21 = sext i32 %i.06 to i64
  %22 = getelementptr inbounds i32* %forceatoms, i64 %21
  %23 = load i32* %22, align 4, !tbaa !36
  %24 = add nsw i32 %i.06, 2
  %25 = sext i32 %20 to i64
  %26 = getelementptr inbounds i32* %forceatoms, i64 %25
  %27 = load i32* %26, align 4, !tbaa !36
  %28 = add nsw i32 %i.06, 3
  %29 = sext i32 %24 to i64
  %30 = getelementptr inbounds i32* %forceatoms, i64 %29
  %31 = load i32* %30, align 4, !tbaa !36
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [3 x float]* %x, i64 %32, i64 0
  %34 = sext i32 %27 to i64
  %35 = getelementptr inbounds [3 x float]* %x, i64 %34, i64 0
  %36 = load float* %33, align 4, !tbaa !14
  %37 = load float* %35, align 4, !tbaa !14
  %38 = fsub float %36, %37
  %39 = getelementptr inbounds [3 x float]* %x, i64 %32, i64 1
  %40 = load float* %39, align 4, !tbaa !14
  %41 = getelementptr inbounds [3 x float]* %x, i64 %34, i64 1
  %42 = load float* %41, align 4, !tbaa !14
  %43 = fsub float %40, %42
  %44 = getelementptr inbounds [3 x float]* %x, i64 %32, i64 2
  %45 = load float* %44, align 4, !tbaa !14
  %46 = getelementptr inbounds [3 x float]* %x, i64 %34, i64 2
  %47 = load float* %46, align 4, !tbaa !14
  %48 = fsub float %45, %47
  store float %38, float* %2, align 4, !tbaa !14
  store float %43, float* %3, align 4, !tbaa !14
  store float %48, float* %4, align 4, !tbaa !14
  br i1 %5, label %75, label %49

; <label>:49                                      ; preds = %19
  %50 = add nsw i32 %i.06, 4
  %51 = sext i32 %28 to i64
  %52 = getelementptr inbounds i32* %forceatoms, i64 %51
  %53 = load i32* %52, align 4, !tbaa !36
  %54 = add nsw i32 %i.06, 5
  %55 = sext i32 %50 to i64
  %56 = getelementptr inbounds i32* %forceatoms, i64 %55
  %57 = load i32* %56, align 4, !tbaa !36
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [3 x float]* %x, i64 %58, i64 0
  %60 = sext i32 %53 to i64
  %61 = getelementptr inbounds [3 x float]* %x, i64 %60, i64 0
  %62 = load float* %59, align 4, !tbaa !14
  %63 = load float* %61, align 4, !tbaa !14
  %64 = fsub float %62, %63
  %65 = getelementptr inbounds [3 x float]* %x, i64 %58, i64 1
  %66 = load float* %65, align 4, !tbaa !14
  %67 = getelementptr inbounds [3 x float]* %x, i64 %60, i64 1
  %68 = load float* %67, align 4, !tbaa !14
  %69 = fsub float %66, %68
  %70 = getelementptr inbounds [3 x float]* %x, i64 %58, i64 2
  %71 = load float* %70, align 4, !tbaa !14
  %72 = getelementptr inbounds [3 x float]* %x, i64 %60, i64 2
  %73 = load float* %72, align 4, !tbaa !14
  %74 = fsub float %71, %73
  br label %75

; <label>:75                                      ; preds = %19, %49
  %storemerge11 = phi float [ %64, %49 ], [ 0.000000e+00, %19 ]
  %storemerge10 = phi float [ %69, %49 ], [ 0.000000e+00, %19 ]
  %storemerge = phi float [ %74, %49 ], [ 1.000000e+00, %19 ]
  %al.1 = phi i32 [ %57, %49 ], [ %al.04, %19 ]
  %ak.1 = phi i32 [ %53, %49 ], [ %ak.05, %19 ]
  %i.1 = phi i32 [ %54, %49 ], [ %28, %19 ]
  store float %storemerge11, float* %6, align 4, !tbaa !14
  store float %storemerge10, float* %7, align 4, !tbaa !14
  store float %storemerge, float* %8, align 4, !tbaa !14
  %76 = call fastcc float @cos_angle(float* %2, float* %6) #11
  %77 = fpext float %76 to double
  %78 = tail call double @acos(double %77) #10
  %79 = fptrunc double %78 to float
  %80 = sext i32 %23 to i64
  %81 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %80, i32 0, i32 1
  %82 = load float* %81, align 4, !tbaa !59
  %83 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %80, i32 0, i32 4
  %84 = load float* %83, align 4, !tbaa !61
  %85 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %80, i32 0, i32 0
  %86 = load float* %85, align 4, !tbaa !62
  %87 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %80, i32 0, i32 3
  %88 = load float* %87, align 4, !tbaa !63
  %89 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %80, i32 0, i32 2
  %90 = bitcast float* %89 to i32*
  %91 = load i32* %90, align 4, !tbaa !64
  %92 = fmul float %9, %86
  %93 = fmul float %88, %lambda
  %94 = fadd float %92, %93
  %95 = fpext float %94 to double
  %96 = fmul double %95, 0x3F91DF46A2529D39
  %97 = fptrunc double %96 to float
  %98 = fmul float %9, %82
  %99 = fmul float %84, %lambda
  %100 = fadd float %98, %99
  %101 = sitofp i32 %91 to float
  %102 = fsub float %79, %97
  %103 = fmul float %101, %102
  %104 = fpext float %103 to double
  %105 = tail call double @sin(double %104) #10
  %106 = fptrunc double %105 to float
  %107 = fmul float %100, %101
  %108 = fmul float %107, %106
  %109 = tail call double @cos(double %104) #10
  %110 = fsub double 1.000000e+00, %109
  %111 = fptrunc double %110 to float
  %112 = fsub float %84, %82
  %113 = fmul float %112, %111
  %114 = fsub float %86, %88
  %115 = fmul float %100, %114
  %116 = fmul float %115, %106
  %117 = fsub float %113, %116
  %118 = load float* %dvdlambda, align 4, !tbaa !14
  %119 = fadd float %118, %117
  store float %119, float* %dvdlambda, align 4, !tbaa !14
  %120 = fpext float %79 to double
  %121 = tail call double @sin(double %120) #10
  %122 = fptrunc double %121 to float
  %fabsf = tail call float @fabsf(float %122) #6
  %123 = fpext float %fabsf to double
  %124 = fcmp olt double %123, 1.000000e-12
  %sin_phi.0 = select i1 %124, float 0x3D71979980000000, float %122
  %125 = fsub float -0.000000e+00, %108
  %126 = fdiv float %125, %sin_phi.0
  %127 = fmul float %76, %126
  %128 = fmul float %38, %38
  %129 = fmul float %43, %43
  %130 = fadd float %128, %129
  %131 = fmul float %48, %48
  %132 = fadd float %130, %131
  %133 = fmul float %storemerge11, %storemerge11
  %134 = fmul float %storemerge10, %storemerge10
  %135 = fadd float %133, %134
  %136 = fmul float %storemerge, %storemerge
  %137 = fadd float %135, %136
  %138 = fpext float %126 to double
  %139 = fmul float %132, %137
  %140 = fpext float %139 to double
  %141 = tail call double @sqrt(double %140) #10
  %142 = fdiv double 1.000000e+00, %141
  %143 = fmul double %138, %142
  %144 = fptrunc double %143 to float
  %145 = fdiv float %127, %132
  %146 = fdiv float %127, %137
  %147 = sext i32 %ak.1 to i64
  %148 = sext i32 %al.1 to i64
  br label %149

; <label>:149                                     ; preds = %._crit_edge7, %75
  %150 = phi float [ %38, %75 ], [ %.pre9, %._crit_edge7 ]
  %151 = phi float [ %storemerge11, %75 ], [ %.pre, %._crit_edge7 ]
  %indvars.iv = phi i64 [ 0, %75 ], [ %indvars.iv.next, %._crit_edge7 ]
  %152 = fmul float %144, %151
  %153 = fmul float %145, %150
  %154 = fsub float %152, %153
  %155 = getelementptr inbounds [3 x float]* %f_i, i64 0, i64 %indvars.iv
  store float %154, float* %155, align 4, !tbaa !14
  %156 = getelementptr inbounds [3 x float]* %f, i64 %34, i64 %indvars.iv
  %157 = load float* %156, align 4, !tbaa !14
  %158 = fadd float %157, %154
  store float %158, float* %156, align 4, !tbaa !14
  %159 = getelementptr inbounds [3 x float]* %f, i64 %32, i64 %indvars.iv
  %160 = load float* %159, align 4, !tbaa !14
  %161 = fsub float %160, %154
  store float %161, float* %159, align 4, !tbaa !14
  br i1 %5, label %173, label %162

; <label>:162                                     ; preds = %149
  %163 = fmul float %144, %150
  %164 = fmul float %146, %151
  %165 = fsub float %163, %164
  %166 = getelementptr inbounds [3 x float]* %f_k, i64 0, i64 %indvars.iv
  store float %165, float* %166, align 4, !tbaa !14
  %167 = getelementptr inbounds [3 x float]* %f, i64 %147, i64 %indvars.iv
  %168 = load float* %167, align 4, !tbaa !14
  %169 = fadd float %168, %165
  store float %169, float* %167, align 4, !tbaa !14
  %170 = getelementptr inbounds [3 x float]* %f, i64 %148, i64 %indvars.iv
  %171 = load float* %170, align 4, !tbaa !14
  %172 = fsub float %171, %165
  store float %172, float* %170, align 4, !tbaa !14
  br label %173

; <label>:173                                     ; preds = %149, %162
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %174, label %._crit_edge7

._crit_edge7:                                     ; preds = %173
  %.phi.trans.insert = getelementptr inbounds [3 x float]* %r_kl, i64 0, i64 %indvars.iv.next
  %.pre = load float* %.phi.trans.insert, align 4, !tbaa !14
  %.phi.trans.insert8 = getelementptr inbounds [3 x float]* %r_ij, i64 0, i64 %indvars.iv.next
  %.pre9 = load float* %.phi.trans.insert8, align 4, !tbaa !14
  br label %149

; <label>:174                                     ; preds = %173
  %175 = fmul float %100, %111
  %176 = fadd float %vtot.03, %175
  %177 = load i32* %10, align 4, !tbaa !41
  %178 = sub nsw i32 %27, %177
  %179 = sext i32 %178 to i64
  %180 = load [3 x i32]** %11, align 8, !tbaa !43
  %181 = getelementptr inbounds [3 x i32]* %180, i64 %179, i64 0
  %182 = sub nsw i32 %31, %177
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [3 x i32]* %180, i64 %183, i64 0
  %185 = load i32* %181, align 4, !tbaa !36
  %186 = load i32* %184, align 4, !tbaa !36
  %187 = getelementptr inbounds [3 x i32]* %180, i64 %179, i64 1
  %188 = load i32* %187, align 4, !tbaa !36
  %189 = getelementptr inbounds [3 x i32]* %180, i64 %183, i64 1
  %190 = load i32* %189, align 4, !tbaa !36
  %191 = getelementptr inbounds [3 x i32]* %180, i64 %179, i64 2
  %192 = load i32* %191, align 4, !tbaa !36
  %193 = getelementptr inbounds [3 x i32]* %180, i64 %183, i64 2
  %194 = load i32* %193, align 4, !tbaa !36
  %195 = sub nsw i32 %192, %194
  %196 = mul i32 %195, 3
  %197 = add i32 %188, 3
  %198 = sub i32 %197, %190
  %199 = add i32 %198, %196
  %200 = mul i32 %199, 3
  %201 = add i32 %185, 4
  %202 = sub i32 %201, %186
  %203 = add i32 %202, %200
  %204 = sext i32 %203 to i64
  %205 = load [3 x float]** %12, align 8, !tbaa !44
  %206 = getelementptr inbounds [3 x float]* %205, i64 %204, i64 0
  %207 = load float* %206, align 4, !tbaa !14
  %208 = load float* %13, align 4, !tbaa !14
  %209 = fadd float %207, %208
  %210 = getelementptr inbounds [3 x float]* %205, i64 %204, i64 1
  %211 = load float* %210, align 4, !tbaa !14
  %212 = load float* %14, align 4, !tbaa !14
  %213 = fadd float %211, %212
  %214 = getelementptr inbounds [3 x float]* %205, i64 %204, i64 2
  %215 = load float* %214, align 4, !tbaa !14
  %216 = load float* %15, align 4, !tbaa !14
  %217 = fadd float %215, %216
  store float %209, float* %206, align 4, !tbaa !14
  store float %213, float* %210, align 4, !tbaa !14
  store float %217, float* %214, align 4, !tbaa !14
  %218 = getelementptr inbounds [3 x float]* %205, i64 13, i64 0
  %219 = load float* %218, align 4, !tbaa !14
  %220 = fsub float %219, %208
  %221 = getelementptr inbounds [3 x float]* %205, i64 13, i64 1
  %222 = load float* %221, align 4, !tbaa !14
  %223 = fsub float %222, %212
  %224 = getelementptr inbounds [3 x float]* %205, i64 13, i64 2
  %225 = load float* %224, align 4, !tbaa !14
  %226 = fsub float %225, %216
  store float %220, float* %218, align 4, !tbaa !14
  store float %223, float* %221, align 4, !tbaa !14
  store float %226, float* %224, align 4, !tbaa !14
  br i1 %5, label %.backedge, label %227

; <label>:227                                     ; preds = %174
  %228 = getelementptr inbounds [3 x float]* %205, i64 0, i64 0
  %229 = load float* %228, align 4, !tbaa !14
  %230 = load float* %16, align 4, !tbaa !14
  %231 = fadd float %229, %230
  %232 = getelementptr inbounds [3 x float]* %205, i64 0, i64 1
  %233 = load float* %232, align 4, !tbaa !14
  %234 = load float* %17, align 4, !tbaa !14
  %235 = fadd float %233, %234
  %236 = getelementptr inbounds [3 x float]* %205, i64 0, i64 2
  %237 = load float* %236, align 4, !tbaa !14
  %238 = load float* %18, align 4, !tbaa !14
  %239 = fadd float %237, %238
  store float %231, float* %228, align 4, !tbaa !14
  store float %235, float* %232, align 4, !tbaa !14
  store float %239, float* %236, align 4, !tbaa !14
  %240 = fsub float %220, %230
  %241 = fsub float %223, %234
  %242 = fsub float %226, %238
  store float %240, float* %218, align 4, !tbaa !14
  store float %241, float* %221, align 4, !tbaa !14
  store float %242, float* %224, align 4, !tbaa !14
  br label %.backedge

.backedge:                                        ; preds = %227, %174
  %243 = icmp slt i32 %i.1, %nbonds
  br i1 %243, label %19, label %._crit_edge

._crit_edge:                                      ; preds = %.backedge, %0
  %vtot.0.lcssa = phi float [ 0.000000e+00, %0 ], [ %176, %.backedge ]
  ret float %vtot.0.lcssa
}

; Function Attrs: nounwind optsize ssp uwtable
define float @angresz(i32 %nbonds, i32* nocapture readonly %forceatoms, %union.t_iparams* nocapture readonly %forceparams, [3 x float]* nocapture readonly %x, [3 x float]* nocapture %f, %struct.t_forcerec* nocapture readonly %fr, %struct.t_graph* nocapture readonly %g, [3 x float]* nocapture readnone %box, float %lambda, float* nocapture %dvdlambda, %struct.t_mdatoms* nocapture readnone %md, i32 %ngrp, float* nocapture readnone %egnb, float* nocapture readnone %egcoul, %struct.t_fcdata* nocapture readnone %fcd) #3 {
  %1 = tail call fastcc float @low_angres(i32 %nbonds, i32* %forceatoms, %union.t_iparams* %forceparams, [3 x float]* %x, [3 x float]* %f, %struct.t_forcerec* %fr, %struct.t_graph* %g, float %lambda, float* %dvdlambda, i32 1) #11
  ret float %1
}

; Function Attrs: nounwind optsize ssp uwtable
define float @unimplemented(i32 %nbonds, i32* nocapture readnone %forceatoms, %union.t_iparams* nocapture readnone %forceparams, [3 x float]* nocapture readnone %x, [3 x float]* nocapture readnone %f, %struct.t_forcerec* nocapture readnone %fr, %struct.t_graph* nocapture readnone %g, [3 x float]* nocapture readnone %box, float %lambda, float* nocapture readnone %dvdlambda, %struct.t_mdatoms* nocapture readnone %md, i32 %ngrp, float* nocapture readnone %egnb, float* nocapture readnone %egcoul, %struct.t_fcdata* nocapture readnone %fcd) #3 {
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([45 x i8]* @.str4, i64 0, i64 0)) #9
  ret float 0.000000e+00
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind optsize ssp uwtable
define float @rbdihs(i32 %nbonds, i32* nocapture readonly %forceatoms, %union.t_iparams* nocapture readonly %forceparams, [3 x float]* nocapture readonly %x, [3 x float]* nocapture %f, %struct.t_forcerec* nocapture readonly %fr, %struct.t_graph* nocapture readonly %g, [3 x float]* nocapture readnone %box, float %lambda, float* nocapture readnone %dvdlambda, %struct.t_mdatoms* nocapture readnone %md, i32 %ngrp, float* nocapture readnone %egnb, float* nocapture readnone %egcoul, %struct.t_fcdata* nocapture readnone %fcd) #3 {
  %r_ij = alloca [3 x float], align 4
  %r_kj = alloca [3 x float], align 4
  %r_kl = alloca [3 x float], align 4
  %m = alloca [3 x float], align 4
  %n = alloca [3 x float], align 4
  %parm = alloca [6 x float], align 16
  %parm4 = bitcast [6 x float]* %parm to i8*
  %cos_phi = alloca float, align 4
  %sign = alloca float, align 4
  %1 = icmp sgt i32 %nbonds, 0
  br i1 %1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %2 = getelementptr inbounds [3 x float]* %r_ij, i64 0, i64 0
  %3 = getelementptr inbounds [3 x float]* %r_kj, i64 0, i64 0
  %4 = getelementptr inbounds [3 x float]* %r_kl, i64 0, i64 0
  %5 = getelementptr inbounds [3 x float]* %m, i64 0, i64 0
  %6 = getelementptr inbounds [3 x float]* %n, i64 0, i64 0
  %7 = getelementptr inbounds [6 x float]* %parm, i64 0, i64 0
  %8 = getelementptr inbounds [6 x float]* %parm, i64 0, i64 1
  %9 = getelementptr inbounds [6 x float]* %parm, i64 0, i64 2
  %10 = getelementptr inbounds [6 x float]* %parm, i64 0, i64 3
  %11 = getelementptr inbounds [6 x float]* %parm, i64 0, i64 4
  %12 = getelementptr inbounds [6 x float]* %parm, i64 0, i64 5
  %13 = sext i32 %nbonds to i64
  br label %14

; <label>:14                                      ; preds = %.lr.ph, %44
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %44 ]
  %vtot.03 = phi float [ 0.000000e+00, %.lr.ph ], [ %86, %44 ]
  %15 = add nuw nsw i64 %indvars.iv, 1
  %16 = getelementptr inbounds i32* %forceatoms, i64 %indvars.iv
  %17 = load i32* %16, align 4, !tbaa !36
  %18 = add nuw nsw i64 %indvars.iv, 2
  %19 = getelementptr inbounds i32* %forceatoms, i64 %15
  %20 = load i32* %19, align 4, !tbaa !36
  %21 = add nuw nsw i64 %indvars.iv, 3
  %22 = getelementptr inbounds i32* %forceatoms, i64 %18
  %23 = load i32* %22, align 4, !tbaa !36
  %24 = add nuw nsw i64 %indvars.iv, 4
  %25 = getelementptr inbounds i32* %forceatoms, i64 %21
  %26 = load i32* %25, align 4, !tbaa !36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 5
  %27 = getelementptr inbounds i32* %forceatoms, i64 %24
  %28 = load i32* %27, align 4, !tbaa !36
  %29 = sext i32 %20 to i64
  %30 = getelementptr inbounds [3 x float]* %x, i64 %29, i64 0
  %31 = sext i32 %23 to i64
  %32 = getelementptr inbounds [3 x float]* %x, i64 %31, i64 0
  %33 = sext i32 %26 to i64
  %34 = getelementptr inbounds [3 x float]* %x, i64 %33, i64 0
  %35 = sext i32 %28 to i64
  %36 = getelementptr inbounds [3 x float]* %x, i64 %35, i64 0
  %37 = call float @dih_angle([3 x float]* undef, float* %30, float* %32, float* %34, float* %36, float* %2, float* %3, float* %4, float* %5, float* %6, float* %cos_phi, float* %sign) #11
  %38 = fcmp olt float %37, 0.000000e+00
  %39 = fpext float %37 to double
  br i1 %38, label %40, label %42

; <label>:40                                      ; preds = %14
  %41 = fadd double %39, 0x400921FB54442D18
  br label %44

; <label>:42                                      ; preds = %14
  %43 = fadd double %39, 0xC00921FB54442D18
  br label %44

; <label>:44                                      ; preds = %42, %40
  %phi.0.in = phi double [ %41, %40 ], [ %43, %42 ]
  %phi.0 = fptrunc double %phi.0.in to float
  %45 = load float* %cos_phi, align 4, !tbaa !14
  %46 = fsub float -0.000000e+00, %45
  store float %46, float* %cos_phi, align 4, !tbaa !14
  %47 = fpext float %phi.0 to double
  %48 = tail call double @sin(double %47) #10
  %49 = sext i32 %17 to i64
  %scevgep = getelementptr %union.t_iparams* %forceparams, i64 %49
  %scevgep5 = bitcast %union.t_iparams* %scevgep to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %parm4, i8* %scevgep5, i64 24, i32 4, i1 false)
  %50 = fptrunc double %48 to float
  %51 = load float* %7, align 16, !tbaa !14
  %52 = load float* %8, align 4, !tbaa !14
  %53 = fadd float %52, 0.000000e+00
  %54 = fmul float %52, %46
  %55 = fadd float %51, %54
  %56 = load float* %9, align 8, !tbaa !14
  %57 = fmul float %56, 2.000000e+00
  %58 = fmul float %57, %46
  %59 = fadd float %53, %58
  %60 = fmul float %45, %45
  %61 = fmul float %60, %56
  %62 = fadd float %55, %61
  %63 = load float* %10, align 4, !tbaa !14
  %64 = fmul float %63, 3.000000e+00
  %65 = fmul float %60, %64
  %66 = fadd float %59, %65
  %67 = fmul float %60, %46
  %68 = fmul float %67, %63
  %69 = fadd float %62, %68
  %70 = load float* %11, align 16, !tbaa !14
  %71 = fmul float %70, 4.000000e+00
  %72 = fmul float %67, %71
  %73 = fadd float %66, %72
  %74 = fmul float %67, %46
  %75 = fmul float %74, %70
  %76 = fadd float %69, %75
  %77 = load float* %12, align 4, !tbaa !14
  %78 = fmul float %77, 5.000000e+00
  %79 = fmul float %74, %78
  %80 = fadd float %73, %79
  %81 = fmul float %74, %46
  %82 = fmul float %81, %77
  %83 = fadd float %76, %82
  %84 = fmul float %50, %80
  %85 = fsub float -0.000000e+00, %84
  call void @do_dih_fup(i32 %20, i32 %23, i32 %26, i32 %28, float %85, float* %2, float* %3, float* %4, float* %5, float* %6, [3 x float]* %f, %struct.t_forcerec* %fr, %struct.t_graph* %g, [3 x float]* undef) #11
  %86 = fadd float %vtot.03, %83
  %87 = icmp slt i64 %indvars.iv.next, %13
  br i1 %87, label %14, label %._crit_edge

._crit_edge:                                      ; preds = %44, %0
  %vtot.0.lcssa = phi float [ 0.000000e+00, %0 ], [ %86, %44 ]
  ret float %vtot.0.lcssa
}

; Function Attrs: nounwind optsize ssp uwtable
define float @g96harmonic(float %kA, float %kB, float %xA, float %xB, float %x, float %lambda, float* nocapture %V, float* nocapture %F) #3 {
  %1 = fsub float 1.000000e+00, %lambda
  %2 = fmul float %1, %kA
  %3 = fmul float %kB, %lambda
  %4 = fadd float %3, %2
  %5 = fmul float %1, %xA
  %6 = fmul float %xB, %lambda
  %7 = fadd float %6, %5
  %8 = fsub float %x, %7
  %9 = fmul float %8, %8
  %10 = fmul float %4, %8
  %11 = fsub float -0.000000e+00, %10
  %12 = fmul float %4, 5.000000e-01
  %13 = fmul float %12, %9
  %14 = insertelement <2 x float> undef, float %xA, i32 0
  %15 = insertelement <2 x float> %14, float %kB, i32 1
  %16 = insertelement <2 x float> undef, float %xB, i32 0
  %17 = insertelement <2 x float> %16, float %kA, i32 1
  %18 = fsub <2 x float> %15, %17
  %19 = insertelement <2 x float> undef, float %4, i32 0
  %20 = insertelement <2 x float> %19, float 5.000000e-01, i32 1
  %21 = fmul <2 x float> %18, %20
  %22 = insertelement <2 x float> undef, float %8, i32 0
  %23 = insertelement <2 x float> %22, float %9, i32 1
  %24 = fmul <2 x float> %21, %23
  %25 = extractelement <2 x float> %24, i32 0
  %26 = extractelement <2 x float> %24, i32 1
  %27 = fadd float %25, %26
  store float %11, float* %F, align 4, !tbaa !14
  store float %13, float* %V, align 4, !tbaa !14
  ret float %27
}

; Function Attrs: nounwind optsize ssp uwtable
define float @g96bonds(i32 %nbonds, i32* nocapture readonly %forceatoms, %union.t_iparams* nocapture readonly %forceparams, [3 x float]* nocapture readonly %x, [3 x float]* nocapture %f, %struct.t_forcerec* nocapture readonly %fr, %struct.t_graph* nocapture readonly %g, [3 x float]* nocapture readnone %box, float %lambda, float* nocapture %dvdlambda, %struct.t_mdatoms* nocapture readnone %md, i32 %ngrp, float* nocapture readnone %egnb, float* nocapture readnone %egcoul, %struct.t_fcdata* nocapture readnone %fcd) #3 {
  %dx = alloca [3 x float], align 4
  %1 = icmp sgt i32 %nbonds, 0
  br i1 %1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %2 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 0
  %3 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 1
  %4 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 2
  %5 = fsub float 1.000000e+00, %lambda
  %6 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 3
  %7 = load i32* %6, align 4, !tbaa !41
  %8 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 7
  %9 = load [3 x i32]** %8, align 8, !tbaa !43
  %10 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 58
  %11 = load [3 x float]** %10, align 8, !tbaa !44
  %12 = sext i32 %nbonds to i64
  br label %15

.loopexit:                                        ; preds = %105
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 3
  %13 = fptrunc double %78 to float
  %14 = icmp slt i64 %indvars.iv.next6, %12
  br i1 %14, label %15, label %._crit_edge

; <label>:15                                      ; preds = %.lr.ph, %.loopexit
  %indvars.iv5 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next6, %.loopexit ]
  %vtot.04 = phi float [ 0.000000e+00, %.lr.ph ], [ %13, %.loopexit ]
  %16 = add nuw nsw i64 %indvars.iv5, 1
  %17 = getelementptr inbounds i32* %forceatoms, i64 %indvars.iv5
  %18 = load i32* %17, align 4, !tbaa !36
  %19 = add nuw nsw i64 %indvars.iv5, 2
  %20 = getelementptr inbounds i32* %forceatoms, i64 %16
  %21 = load i32* %20, align 4, !tbaa !36
  %22 = getelementptr inbounds i32* %forceatoms, i64 %19
  %23 = load i32* %22, align 4, !tbaa !36
  %24 = sext i32 %21 to i64
  %25 = getelementptr inbounds [3 x float]* %x, i64 %24, i64 0
  %26 = sext i32 %23 to i64
  %27 = getelementptr inbounds [3 x float]* %x, i64 %26, i64 0
  %28 = load float* %25, align 4, !tbaa !14
  %29 = load float* %27, align 4, !tbaa !14
  %30 = fsub float %28, %29
  %31 = getelementptr inbounds [3 x float]* %x, i64 %24, i64 1
  %32 = load float* %31, align 4, !tbaa !14
  %33 = getelementptr inbounds [3 x float]* %x, i64 %26, i64 1
  %34 = load float* %33, align 4, !tbaa !14
  %35 = fsub float %32, %34
  %36 = getelementptr inbounds [3 x float]* %x, i64 %24, i64 2
  %37 = load float* %36, align 4, !tbaa !14
  %38 = getelementptr inbounds [3 x float]* %x, i64 %26, i64 2
  %39 = load float* %38, align 4, !tbaa !14
  %40 = fsub float %37, %39
  store float %30, float* %2, align 4, !tbaa !14
  store float %35, float* %3, align 4, !tbaa !14
  store float %40, float* %4, align 4, !tbaa !14
  %41 = fmul float %30, %30
  %42 = fmul float %35, %35
  %43 = fadd float %41, %42
  %44 = fmul float %40, %40
  %45 = fadd float %44, %43
  %46 = sext i32 %18 to i64
  %47 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %46, i32 0, i32 1
  %48 = load float* %47, align 4, !tbaa !46
  %49 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %46, i32 0, i32 3
  %50 = load float* %49, align 4, !tbaa !48
  %51 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %46, i32 0, i32 0
  %52 = load float* %51, align 4, !tbaa !49
  %53 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %46, i32 0, i32 2
  %54 = load float* %53, align 4, !tbaa !50
  %55 = fmul float %5, %48
  %56 = fmul float %50, %lambda
  %57 = fadd float %55, %56
  %58 = fmul float %5, %52
  %59 = fmul float %54, %lambda
  %60 = fadd float %58, %59
  %61 = fsub float %45, %60
  %62 = fmul float %61, %61
  %63 = fmul float %57, %61
  %64 = fmul float %57, 5.000000e-01
  %65 = fmul float %64, %62
  %66 = fsub float %50, %48
  %67 = fmul float %66, 5.000000e-01
  %68 = fmul float %67, %62
  %69 = fsub float %52, %54
  %70 = fmul float %57, %69
  %71 = fmul float %70, %61
  %72 = fadd float %71, %68
  %73 = load float* %dvdlambda, align 4, !tbaa !14
  %74 = fadd float %73, %72
  store float %74, float* %dvdlambda, align 4, !tbaa !14
  %75 = fpext float %65 to double
  %76 = fmul double %75, 5.000000e-01
  %77 = fpext float %vtot.04 to double
  %78 = fadd double %77, %76
  %79 = sub nsw i32 %21, %7
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [3 x i32]* %9, i64 %80, i64 0
  %82 = sub nsw i32 %23, %7
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [3 x i32]* %9, i64 %83, i64 0
  %85 = load i32* %81, align 4, !tbaa !36
  %86 = load i32* %84, align 4, !tbaa !36
  %87 = getelementptr inbounds [3 x i32]* %9, i64 %80, i64 1
  %88 = load i32* %87, align 4, !tbaa !36
  %89 = getelementptr inbounds [3 x i32]* %9, i64 %83, i64 1
  %90 = load i32* %89, align 4, !tbaa !36
  %91 = getelementptr inbounds [3 x i32]* %9, i64 %80, i64 2
  %92 = load i32* %91, align 4, !tbaa !36
  %93 = getelementptr inbounds [3 x i32]* %9, i64 %83, i64 2
  %94 = load i32* %93, align 4, !tbaa !36
  %95 = sub nsw i32 %92, %94
  %96 = mul i32 %95, 3
  %97 = add i32 %88, 3
  %98 = sub i32 %97, %90
  %99 = add i32 %98, %96
  %100 = mul i32 %99, 3
  %101 = add i32 %85, 4
  %102 = sub i32 %101, %86
  %103 = add i32 %102, %100
  %104 = sext i32 %103 to i64
  br label %105

; <label>:105                                     ; preds = %._crit_edge7, %15
  %106 = phi float [ %30, %15 ], [ %.pre, %._crit_edge7 ]
  %indvars.iv = phi i64 [ 0, %15 ], [ %indvars.iv.next, %._crit_edge7 ]
  %107 = fmul float %63, %106
  %108 = getelementptr inbounds [3 x float]* %f, i64 %24, i64 %indvars.iv
  %109 = load float* %108, align 4, !tbaa !14
  %110 = fsub float %109, %107
  store float %110, float* %108, align 4, !tbaa !14
  %111 = getelementptr inbounds [3 x float]* %f, i64 %26, i64 %indvars.iv
  %112 = load float* %111, align 4, !tbaa !14
  %113 = fadd float %107, %112
  store float %113, float* %111, align 4, !tbaa !14
  %114 = getelementptr inbounds [3 x float]* %11, i64 %104, i64 %indvars.iv
  %115 = load float* %114, align 4, !tbaa !14
  %116 = fsub float %115, %107
  store float %116, float* %114, align 4, !tbaa !14
  %117 = getelementptr inbounds [3 x float]* %11, i64 13, i64 %indvars.iv
  %118 = load float* %117, align 4, !tbaa !14
  %119 = fadd float %107, %118
  store float %119, float* %117, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %.loopexit, label %._crit_edge7

._crit_edge7:                                     ; preds = %105
  %.phi.trans.insert = getelementptr inbounds [3 x float]* %dx, i64 0, i64 %indvars.iv.next
  %.pre = load float* %.phi.trans.insert, align 4, !tbaa !14
  br label %105

._crit_edge:                                      ; preds = %.loopexit, %0
  %vtot.0.lcssa = phi float [ 0.000000e+00, %0 ], [ %13, %.loopexit ]
  ret float %vtot.0.lcssa
}

; Function Attrs: nounwind optsize ssp uwtable
define float @g96bond_angle([3 x float]* nocapture readnone %box, float* nocapture readonly %xi, float* nocapture readonly %xj, float* nocapture readonly %xk, float* nocapture %r_ij, float* nocapture %r_kj) #3 {
  %1 = load float* %xi, align 4, !tbaa !14
  %2 = load float* %xj, align 4, !tbaa !14
  %3 = fsub float %1, %2
  %4 = getelementptr inbounds float* %xi, i64 1
  %5 = load float* %4, align 4, !tbaa !14
  %6 = getelementptr inbounds float* %xj, i64 1
  %7 = load float* %6, align 4, !tbaa !14
  %8 = fsub float %5, %7
  %9 = getelementptr inbounds float* %xi, i64 2
  %10 = load float* %9, align 4, !tbaa !14
  %11 = getelementptr inbounds float* %xj, i64 2
  %12 = load float* %11, align 4, !tbaa !14
  %13 = fsub float %10, %12
  store float %3, float* %r_ij, align 4, !tbaa !14
  %14 = getelementptr inbounds float* %r_ij, i64 1
  store float %8, float* %14, align 4, !tbaa !14
  %15 = getelementptr inbounds float* %r_ij, i64 2
  store float %13, float* %15, align 4, !tbaa !14
  %16 = load float* %xk, align 4, !tbaa !14
  %17 = load float* %xj, align 4, !tbaa !14
  %18 = fsub float %16, %17
  %19 = getelementptr inbounds float* %xk, i64 1
  %20 = load float* %19, align 4, !tbaa !14
  %21 = load float* %6, align 4, !tbaa !14
  %22 = fsub float %20, %21
  %23 = getelementptr inbounds float* %xk, i64 2
  %24 = load float* %23, align 4, !tbaa !14
  %25 = load float* %11, align 4, !tbaa !14
  %26 = fsub float %24, %25
  store float %18, float* %r_kj, align 4, !tbaa !14
  %27 = getelementptr inbounds float* %r_kj, i64 1
  store float %22, float* %27, align 4, !tbaa !14
  %28 = getelementptr inbounds float* %r_kj, i64 2
  store float %26, float* %28, align 4, !tbaa !14
  %29 = tail call fastcc float @cos_angle(float* %r_ij, float* %r_kj) #11
  ret float %29
}

; Function Attrs: nounwind optsize ssp uwtable
define float @g96angles(i32 %nbonds, i32* nocapture readonly %forceatoms, %union.t_iparams* nocapture readonly %forceparams, [3 x float]* nocapture readonly %x, [3 x float]* nocapture %f, %struct.t_forcerec* nocapture readonly %fr, %struct.t_graph* nocapture readonly %g, [3 x float]* nocapture readnone %box, float %lambda, float* nocapture %dvdlambda, %struct.t_mdatoms* nocapture readnone %md, i32 %ngrp, float* nocapture readnone %egnb, float* nocapture readnone %egcoul, %struct.t_fcdata* nocapture readnone %fcd) #3 {
  %r_ij = alloca [3 x float], align 4
  %r_kj = alloca [3 x float], align 4
  %f_i = alloca [3 x float], align 4
  %f_j = alloca [3 x float], align 4
  %f_k = alloca [3 x float], align 4
  %1 = icmp sgt i32 %nbonds, 0
  br i1 %1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %2 = getelementptr inbounds [3 x float]* %r_ij, i64 0, i64 0
  %3 = getelementptr inbounds [3 x float]* %r_kj, i64 0, i64 0
  %4 = fsub float 1.000000e+00, %lambda
  %5 = getelementptr inbounds [3 x float]* %r_ij, i64 0, i64 1
  %6 = getelementptr inbounds [3 x float]* %r_ij, i64 0, i64 2
  %7 = getelementptr inbounds [3 x float]* %r_kj, i64 0, i64 1
  %8 = getelementptr inbounds [3 x float]* %r_kj, i64 0, i64 2
  %9 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 3
  %10 = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 7
  %11 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 58
  %12 = getelementptr inbounds [3 x float]* %f_i, i64 0, i64 0
  %13 = getelementptr inbounds [3 x float]* %f_i, i64 0, i64 1
  %14 = getelementptr inbounds [3 x float]* %f_i, i64 0, i64 2
  %15 = getelementptr inbounds [3 x float]* %f_j, i64 0, i64 0
  %16 = getelementptr inbounds [3 x float]* %f_j, i64 0, i64 1
  %17 = getelementptr inbounds [3 x float]* %f_j, i64 0, i64 2
  %18 = getelementptr inbounds [3 x float]* %f_k, i64 0, i64 0
  %19 = getelementptr inbounds [3 x float]* %f_k, i64 0, i64 1
  %20 = getelementptr inbounds [3 x float]* %f_k, i64 0, i64 2
  %21 = sext i32 %nbonds to i64
  br label %22

; <label>:22                                      ; preds = %.lr.ph, %124
  %indvars.iv5 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next6, %124 ]
  %vtot.03 = phi float [ 0.000000e+00, %.lr.ph ], [ %126, %124 ]
  %23 = or i64 %indvars.iv5, 1
  %24 = getelementptr inbounds i32* %forceatoms, i64 %indvars.iv5
  %25 = load i32* %24, align 4, !tbaa !36
  %26 = or i64 %indvars.iv5, 2
  %27 = getelementptr inbounds i32* %forceatoms, i64 %23
  %28 = load i32* %27, align 4, !tbaa !36
  %29 = or i64 %indvars.iv5, 3
  %30 = getelementptr inbounds i32* %forceatoms, i64 %26
  %31 = load i32* %30, align 4, !tbaa !36
  %32 = getelementptr inbounds i32* %forceatoms, i64 %29
  %33 = load i32* %32, align 4, !tbaa !36
  %34 = sext i32 %28 to i64
  %35 = getelementptr inbounds [3 x float]* %x, i64 %34, i64 0
  %36 = sext i32 %31 to i64
  %37 = getelementptr inbounds [3 x float]* %x, i64 %36, i64 0
  %38 = sext i32 %33 to i64
  %39 = getelementptr inbounds [3 x float]* %x, i64 %38, i64 0
  %40 = call float @g96bond_angle([3 x float]* undef, float* %35, float* %37, float* %39, float* %2, float* %3) #11
  %41 = sext i32 %25 to i64
  %42 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %41, i32 0, i32 1
  %43 = load float* %42, align 4, !tbaa !46
  %44 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %41, i32 0, i32 3
  %45 = load float* %44, align 4, !tbaa !48
  %46 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %41, i32 0, i32 0
  %47 = load float* %46, align 4, !tbaa !49
  %48 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %41, i32 0, i32 2
  %49 = load float* %48, align 4, !tbaa !50
  %50 = fmul float %4, %43
  %51 = fmul float %45, %lambda
  %52 = fadd float %50, %51
  %53 = fmul float %4, %47
  %54 = fmul float %49, %lambda
  %55 = fadd float %53, %54
  %56 = fsub float %40, %55
  %57 = fmul float %56, %56
  %58 = fmul float %52, %56
  %59 = fsub float -0.000000e+00, %58
  %60 = fmul float %52, 5.000000e-01
  %61 = fsub float %45, %43
  %62 = fmul float %61, 5.000000e-01
  %63 = fmul float %62, %57
  %64 = fsub float %47, %49
  %65 = fmul float %52, %64
  %66 = fmul float %65, %56
  %67 = fadd float %66, %63
  %68 = load float* %dvdlambda, align 4, !tbaa !14
  %69 = fadd float %68, %67
  store float %69, float* %dvdlambda, align 4, !tbaa !14
  %70 = load float* %2, align 4, !tbaa !14
  %71 = fmul float %70, %70
  %72 = load float* %5, align 4, !tbaa !14
  %73 = fmul float %72, %72
  %74 = fadd float %71, %73
  %75 = load float* %6, align 4, !tbaa !14
  %76 = fmul float %75, %75
  %77 = fadd float %74, %76
  %78 = fpext float %77 to double
  %79 = tail call double @sqrt(double %78) #10
  %80 = fdiv double 1.000000e+00, %79
  %81 = fptrunc double %80 to float
  %82 = load float* %3, align 4, !tbaa !14
  %83 = fmul float %82, %82
  %84 = load float* %7, align 4, !tbaa !14
  %85 = fmul float %84, %84
  %86 = fadd float %83, %85
  %87 = load float* %8, align 4, !tbaa !14
  %88 = fmul float %87, %87
  %89 = fadd float %86, %88
  %90 = fpext float %89 to double
  %91 = tail call double @sqrt(double %90) #10
  %92 = fdiv double 1.000000e+00, %91
  %93 = fptrunc double %92 to float
  %94 = fmul float %81, %81
  %95 = fmul float %93, %93
  %96 = fmul float %81, %93
  br label %97

; <label>:97                                      ; preds = %._crit_edge7, %22
  %98 = phi float [ %70, %22 ], [ %.pre9, %._crit_edge7 ]
  %99 = phi float [ %82, %22 ], [ %.pre, %._crit_edge7 ]
  %indvars.iv = phi i64 [ 0, %22 ], [ %indvars.iv.next, %._crit_edge7 ]
  %100 = fmul float %96, %99
  %101 = fmul float %94, %98
  %102 = fmul float %40, %101
  %103 = fsub float %100, %102
  %104 = fmul float %103, %59
  %105 = getelementptr inbounds [3 x float]* %f_i, i64 0, i64 %indvars.iv
  store float %104, float* %105, align 4, !tbaa !14
  %106 = fmul float %96, %98
  %107 = fmul float %95, %99
  %108 = fmul float %40, %107
  %109 = fsub float %106, %108
  %110 = fmul float %109, %59
  %111 = getelementptr inbounds [3 x float]* %f_k, i64 0, i64 %indvars.iv
  store float %110, float* %111, align 4, !tbaa !14
  %112 = fsub float -0.000000e+00, %104
  %113 = fsub float %112, %110
  %114 = getelementptr inbounds [3 x float]* %f_j, i64 0, i64 %indvars.iv
  store float %113, float* %114, align 4, !tbaa !14
  %115 = getelementptr inbounds [3 x float]* %f, i64 %34, i64 %indvars.iv
  %116 = load float* %115, align 4, !tbaa !14
  %117 = fadd float %104, %116
  store float %117, float* %115, align 4, !tbaa !14
  %118 = getelementptr inbounds [3 x float]* %f, i64 %36, i64 %indvars.iv
  %119 = load float* %118, align 4, !tbaa !14
  %120 = fadd float %113, %119
  store float %120, float* %118, align 4, !tbaa !14
  %121 = getelementptr inbounds [3 x float]* %f, i64 %38, i64 %indvars.iv
  %122 = load float* %121, align 4, !tbaa !14
  %123 = fadd float %110, %122
  store float %123, float* %121, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %124, label %._crit_edge7

._crit_edge7:                                     ; preds = %97
  %.phi.trans.insert = getelementptr inbounds [3 x float]* %r_kj, i64 0, i64 %indvars.iv.next
  %.pre = load float* %.phi.trans.insert, align 4, !tbaa !14
  %.phi.trans.insert8 = getelementptr inbounds [3 x float]* %r_ij, i64 0, i64 %indvars.iv.next
  %.pre9 = load float* %.phi.trans.insert8, align 4, !tbaa !14
  br label %97

; <label>:124                                     ; preds = %97
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 4
  %125 = fmul float %60, %57
  %126 = fadd float %vtot.03, %125
  %127 = load i32* %9, align 4, !tbaa !41
  %128 = sub nsw i32 %31, %127
  %129 = sext i32 %128 to i64
  %130 = load [3 x i32]** %10, align 8, !tbaa !43
  %131 = getelementptr inbounds [3 x i32]* %130, i64 %129, i64 0
  %132 = load i32* %131, align 4, !tbaa !36
  %133 = getelementptr inbounds [3 x i32]* %130, i64 %129, i64 1
  %134 = load i32* %133, align 4, !tbaa !36
  %135 = getelementptr inbounds [3 x i32]* %130, i64 %129, i64 2
  %136 = load i32* %135, align 4, !tbaa !36
  %137 = sub nsw i32 %28, %127
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [3 x i32]* %130, i64 %138, i64 0
  %140 = load i32* %139, align 4, !tbaa !36
  %141 = getelementptr inbounds [3 x i32]* %130, i64 %138, i64 1
  %142 = load i32* %141, align 4, !tbaa !36
  %143 = getelementptr inbounds [3 x i32]* %130, i64 %138, i64 2
  %144 = load i32* %143, align 4, !tbaa !36
  %145 = sub nsw i32 %144, %136
  %146 = sub nsw i32 %33, %127
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [3 x i32]* %130, i64 %147, i64 0
  %149 = load i32* %148, align 4, !tbaa !36
  %150 = getelementptr inbounds [3 x i32]* %130, i64 %147, i64 1
  %151 = load i32* %150, align 4, !tbaa !36
  %152 = getelementptr inbounds [3 x i32]* %130, i64 %147, i64 2
  %153 = load i32* %152, align 4, !tbaa !36
  %154 = sub nsw i32 %153, %136
  %155 = mul i32 %145, 3
  %156 = sub i32 3, %134
  %157 = add i32 %156, %142
  %158 = add i32 %157, %155
  %159 = mul i32 %158, 3
  %160 = sub i32 4, %132
  %161 = add i32 %160, %140
  %162 = add i32 %161, %159
  %163 = mul i32 %154, 3
  %164 = add i32 %156, %151
  %165 = add i32 %164, %163
  %166 = mul i32 %165, 3
  %167 = add i32 %160, %149
  %168 = add i32 %167, %166
  %169 = sext i32 %162 to i64
  %170 = load [3 x float]** %11, align 8, !tbaa !44
  %171 = getelementptr inbounds [3 x float]* %170, i64 %169, i64 0
  %172 = load float* %171, align 4, !tbaa !14
  %173 = load float* %12, align 4, !tbaa !14
  %174 = fadd float %172, %173
  %175 = getelementptr inbounds [3 x float]* %170, i64 %169, i64 1
  %176 = load float* %175, align 4, !tbaa !14
  %177 = load float* %13, align 4, !tbaa !14
  %178 = fadd float %176, %177
  %179 = getelementptr inbounds [3 x float]* %170, i64 %169, i64 2
  %180 = load float* %179, align 4, !tbaa !14
  %181 = load float* %14, align 4, !tbaa !14
  %182 = fadd float %180, %181
  store float %174, float* %171, align 4, !tbaa !14
  store float %178, float* %175, align 4, !tbaa !14
  store float %182, float* %179, align 4, !tbaa !14
  %183 = getelementptr inbounds [3 x float]* %170, i64 13, i64 0
  %184 = load float* %183, align 4, !tbaa !14
  %185 = load float* %15, align 4, !tbaa !14
  %186 = fadd float %184, %185
  %187 = getelementptr inbounds [3 x float]* %170, i64 13, i64 1
  %188 = load float* %187, align 4, !tbaa !14
  %189 = load float* %16, align 4, !tbaa !14
  %190 = fadd float %188, %189
  %191 = getelementptr inbounds [3 x float]* %170, i64 13, i64 2
  %192 = load float* %191, align 4, !tbaa !14
  %193 = load float* %17, align 4, !tbaa !14
  %194 = fadd float %192, %193
  store float %186, float* %183, align 4, !tbaa !14
  store float %190, float* %187, align 4, !tbaa !14
  store float %194, float* %191, align 4, !tbaa !14
  %195 = sext i32 %168 to i64
  %196 = getelementptr inbounds [3 x float]* %170, i64 %195, i64 0
  %197 = load float* %196, align 4, !tbaa !14
  %198 = load float* %18, align 4, !tbaa !14
  %199 = fadd float %197, %198
  %200 = getelementptr inbounds [3 x float]* %170, i64 %195, i64 1
  %201 = load float* %200, align 4, !tbaa !14
  %202 = load float* %19, align 4, !tbaa !14
  %203 = fadd float %201, %202
  %204 = getelementptr inbounds [3 x float]* %170, i64 %195, i64 2
  %205 = load float* %204, align 4, !tbaa !14
  %206 = load float* %20, align 4, !tbaa !14
  %207 = fadd float %205, %206
  store float %199, float* %196, align 4, !tbaa !14
  store float %203, float* %200, align 4, !tbaa !14
  store float %207, float* %204, align 4, !tbaa !14
  %208 = icmp slt i64 %indvars.iv.next6, %21
  br i1 %208, label %22, label %._crit_edge

._crit_edge:                                      ; preds = %124, %0
  %vtot.0.lcssa = phi float [ 0.000000e+00, %0 ], [ %126, %124 ]
  ret float %vtot.0.lcssa
}

declare float @fabsf(float)

declare float @sqrtf(float)

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #8

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { nounwind optsize }
attributes #10 = { nounwind optsize readnone }
attributes #11 = { optsize }

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
!16 = !{!17, !7, i64 0}
!17 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20}
!18 = !{!19, !7, i64 0}
!19 = !{!"", !7, i64 0, !5, i64 4, !4, i64 1032}
!20 = !{!19, !4, i64 1032}
!21 = !{!22, !4, i64 24}
!22 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !4, i64 16, !4, i64 24, !5, i64 32}
!23 = !{!24, !25, i64 32}
!24 = !{!"", !4, i64 0, !4, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !25, i64 32, !7, i64 40, !4, i64 48}
!25 = !{!"long", !5, i64 0}
!26 = !{!24, !4, i64 48}
!27 = !{!24, !7, i64 40}
!28 = !{!24, !7, i64 16}
!29 = !{!30, !30, i64 0}
!30 = !{!"double", !5, i64 0}
!31 = !{!24, !4, i64 8}
!32 = !{!33, !15, i64 36}
!33 = !{!"", !34, i64 0, !35, i64 80}
!34 = !{!"", !7, i64 0, !7, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !7, i64 28, !7, i64 32, !15, i64 36, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72}
!35 = !{!"", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !15, i64 28, !4, i64 32, !4, i64 40, !4, i64 48, !5, i64 56, !4, i64 96, !4, i64 104, !4, i64 112, !4, i64 120, !4, i64 128, !4, i64 136, !4, i64 144, !15, i64 152, !4, i64 160, !4, i64 168}
!36 = !{!7, !7, i64 0}
!37 = !{!38, !15, i64 0}
!38 = !{!"", !15, i64 0, !15, i64 4, !15, i64 8}
!39 = !{!38, !15, i64 8}
!40 = !{!38, !15, i64 4}
!41 = !{!42, !7, i64 12}
!42 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !4, i64 24, !4, i64 32, !4, i64 40}
!43 = !{!42, !4, i64 40}
!44 = !{!45, !4, i64 2776}
!45 = !{!"", !7, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !7, i64 28, !15, i64 32, !15, i64 36, !15, i64 40, !15, i64 44, !15, i64 48, !7, i64 52, !7, i64 56, !15, i64 60, !7, i64 64, !15, i64 68, !4, i64 72, !4, i64 80, !4, i64 88, !4, i64 96, !15, i64 104, !15, i64 108, !4, i64 112, !15, i64 120, !15, i64 124, !15, i64 128, !15, i64 132, !7, i64 136, !15, i64 140, !15, i64 144, !7, i64 148, !7, i64 152, !7, i64 156, !7, i64 160, !7, i64 164, !7, i64 168, !7, i64 172, !7, i64 176, !5, i64 180, !7, i64 192, !7, i64 196, !7, i64 200, !7, i64 204, !4, i64 208, !4, i64 216, !4, i64 224, !4, i64 232, !5, i64 240, !5, i64 1488, !7, i64 2736, !7, i64 2740, !4, i64 2744, !4, i64 2752, !4, i64 2760, !7, i64 2768, !15, i64 2772, !4, i64 2776, !7, i64 2784, !4, i64 2792, !4, i64 2800, !7, i64 2808, !7, i64 2812, !7, i64 2816, !4, i64 2824, !4, i64 2832, !15, i64 2840}
!46 = !{!47, !15, i64 4}
!47 = !{!"", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12}
!48 = !{!47, !15, i64 12}
!49 = !{!47, !15, i64 0}
!50 = !{!47, !15, i64 8}
!51 = !{!52, !15, i64 0}
!52 = !{!"", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20}
!53 = !{!52, !15, i64 4}
!54 = !{!52, !15, i64 8}
!55 = !{!52, !15, i64 16}
!56 = !{!4, !4, i64 0}
!57 = !{!52, !15, i64 12}
!58 = !{!52, !15, i64 20}
!59 = !{!60, !15, i64 4}
!60 = !{!"", !15, i64 0, !15, i64 4, !7, i64 8, !15, i64 12, !15, i64 16}
!61 = !{!60, !15, i64 16}
!62 = !{!60, !15, i64 0}
!63 = !{!60, !15, i64 12}
!64 = !{!60, !7, i64 8}
!65 = !{!45, !7, i64 0}
