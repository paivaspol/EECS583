; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/tgroup.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.t_bin = type { i32, i32, double* }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_mdatoms = type { float, i32, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, i32*, i32*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16* }
%struct.t_grpopts = type { i32, i32, i32, i32, float*, float*, float*, [3 x float]*, [3 x i32]*, i32* }
%struct.t_groups = type { %struct.t_grp_ener, %struct.t_grp_tcstat*, %struct.t_grp_acc*, %struct.t_cos_acc }
%struct.t_grp_ener = type { i32, [7 x float*] }
%struct.t_grp_tcstat = type { float, float, [3 x [3 x float]], float, float }
%struct.t_grp_acc = type { i32, i32*, float, [3 x float], [3 x float], [3 x float] }
%struct.t_cos_acc = type { float, float, float }
%struct.t_energy = type { float, double, double, float }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"grps->tcstat\00", align 1
@.str1 = private unnamed_addr constant [66 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/tgroup.c\00", align 1
@.str2 = private unnamed_addr constant [14 x i8] c"grps->grpstat\00", align 1
@.str3 = private unnamed_addr constant [8 x i8] c"%12.5e\0A\00", align 1
@accumulate_u.rb = internal unnamed_addr global %struct.t_bin* null, align 8
@stdlog = external global %struct.__sFILE*
@.str4 = private unnamed_addr constant [13 x i8] c"gstat[i].aid\00", align 1
@.str5 = private unnamed_addr constant [13 x i8] c"estat->ee[i]\00", align 1

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

; Function Attrs: nounwind optsize ssp uwtable
define void @init_groups(%struct.__sFILE* nocapture readnone %log, %struct.t_mdatoms* nocapture readonly %md, %struct.t_grpopts* nocapture readonly %opts, %struct.t_groups* nocapture %grps) #3 {
  %1 = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 0
  %2 = load i32* %1, align 4, !tbaa !14
  %3 = tail call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 113, i32 %2, i32 52) #8
  %4 = bitcast i8* %3 to %struct.t_grp_tcstat*
  %5 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 1
  %6 = bitcast %struct.t_grp_tcstat** %5 to i8**
  store i8* %3, i8** %6, align 8, !tbaa !16
  %7 = load i32* %1, align 4, !tbaa !14
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %.lr.ph.i, label %init_grptcstat.exit

.lr.ph.i:                                         ; preds = %0
  %9 = add i32 %7, -1
  br label %10

; <label>:10                                      ; preds = %10, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %10 ]
  %11 = getelementptr inbounds %struct.t_grp_tcstat* %4, i64 %indvars.iv.i, i32 0
  store float 0.000000e+00, float* %11, align 4, !tbaa !21
  %12 = getelementptr inbounds %struct.t_grp_tcstat* %4, i64 %indvars.iv.i, i32 1
  store float 1.000000e+00, float* %12, align 4, !tbaa !23
  %13 = getelementptr inbounds %struct.t_grp_tcstat* %4, i64 %indvars.iv.i, i32 2, i64 0
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %14 = bitcast [3 x float]* %13 to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %14, i8 0, i64 40, i32 4, i1 false) #7
  %lftr.wideiv10 = trunc i64 %indvars.iv.i to i32
  %exitcond11 = icmp eq i32 %lftr.wideiv10, %9
  br i1 %exitcond11, label %init_grptcstat.exit, label %10

init_grptcstat.exit:                              ; preds = %10, %0
  %15 = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 1
  %16 = load i32* %15, align 4, !tbaa !24
  %17 = tail call i8* @save_calloc(i8* getelementptr inbounds ([14 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 116, i32 %16, i32 56) #8
  %18 = bitcast i8* %17 to %struct.t_grp_acc*
  %19 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 2
  %20 = bitcast %struct.t_grp_acc** %19 to i8**
  store i8* %17, i8** %20, align 8, !tbaa !25
  %21 = load i32* %15, align 4, !tbaa !24
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %.preheader2.i, label %init_grpstat.exit

.preheader2.i:                                    ; preds = %init_grptcstat.exit
  %23 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 1
  %24 = load i32* %23, align 4, !tbaa !26
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %.lr.ph7.i, label %.lr.ph5.i

.lr.ph7.i:                                        ; preds = %.preheader2.i
  %26 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 16
  %27 = load i16** %26, align 8, !tbaa !28
  %28 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 4
  %29 = load float** %28, align 8, !tbaa !29
  %30 = sext i32 %24 to i64
  %31 = add nsw i64 %30, -1
  br label %33

.lr.ph5.i:                                        ; preds = %33, %.preheader2.i
  %32 = add i32 %21, -1
  br label %47

; <label>:33                                      ; preds = %33, %.lr.ph7.i
  %indvars.iv10.i = phi i64 [ 0, %.lr.ph7.i ], [ %indvars.iv.next11.i, %33 ]
  %34 = getelementptr inbounds i16* %27, i64 %indvars.iv10.i
  %35 = load i16* %34, align 2, !tbaa !30
  %36 = zext i16 %35 to i64
  %37 = getelementptr inbounds %struct.t_grp_acc* %18, i64 %36, i32 0
  %38 = load i32* %37, align 4, !tbaa !31
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4, !tbaa !31
  %40 = getelementptr inbounds float* %29, i64 %indvars.iv10.i
  %41 = load float* %40, align 4, !tbaa !33
  %42 = getelementptr inbounds %struct.t_grp_acc* %18, i64 %36, i32 2
  %43 = load float* %42, align 4, !tbaa !34
  %44 = fadd float %41, %43
  store float %44, float* %42, align 4, !tbaa !34
  %indvars.iv.next11.i = add nuw nsw i64 %indvars.iv10.i, 1
  %exitcond9 = icmp eq i64 %indvars.iv10.i, %31
  br i1 %exitcond9, label %.lr.ph5.i, label %33

.preheader.i:                                     ; preds = %47
  %.pre.i = load i32* %23, align 4, !tbaa !26
  %45 = icmp sgt i32 %.pre.i, 0
  br i1 %45, label %.lr.ph.i4, label %init_grpstat.exit

.lr.ph.i4:                                        ; preds = %.preheader.i
  %46 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 16
  %.pre12.i = load i16** %46, align 8, !tbaa !28
  br label %53

; <label>:47                                      ; preds = %47, %.lr.ph5.i
  %indvars.iv8.i = phi i64 [ 0, %.lr.ph5.i ], [ %indvars.iv.next9.i, %47 ]
  %48 = getelementptr inbounds %struct.t_grp_acc* %18, i64 %indvars.iv8.i, i32 0
  %49 = load i32* %48, align 4, !tbaa !31
  %50 = tail call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 78, i32 %49, i32 4) #8
  %51 = getelementptr inbounds %struct.t_grp_acc* %18, i64 %indvars.iv8.i, i32 1
  %52 = bitcast i32** %51 to i8**
  store i8* %50, i8** %52, align 8, !tbaa !35
  store i32 0, i32* %48, align 4, !tbaa !31
  %indvars.iv.next9.i = add nuw nsw i64 %indvars.iv8.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv8.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %32
  br i1 %exitcond, label %.preheader.i, label %47

; <label>:53                                      ; preds = %53, %.lr.ph.i4
  %indvars.iv.i7 = phi i64 [ 0, %.lr.ph.i4 ], [ %indvars.iv.next.i8, %53 ]
  %54 = getelementptr inbounds i16* %.pre12.i, i64 %indvars.iv.i7
  %55 = load i16* %54, align 2, !tbaa !30
  %56 = zext i16 %55 to i64
  %57 = getelementptr inbounds %struct.t_grp_acc* %18, i64 %56, i32 0
  %58 = load i32* %57, align 4, !tbaa !31
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4, !tbaa !31
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds %struct.t_grp_acc* %18, i64 %56, i32 1
  %62 = load i32** %61, align 8, !tbaa !35
  %63 = getelementptr inbounds i32* %62, i64 %60
  %64 = trunc i64 %indvars.iv.i7 to i32
  store i32 %64, i32* %63, align 4, !tbaa !36
  %indvars.iv.next.i8 = add nuw nsw i64 %indvars.iv.i7, 1
  %65 = load i32* %23, align 4, !tbaa !26
  %66 = sext i32 %65 to i64
  %67 = icmp slt i64 %indvars.iv.next.i8, %66
  br i1 %67, label %53, label %init_grpstat.exit

init_grpstat.exit:                                ; preds = %53, %init_grptcstat.exit, %.preheader.i
  %68 = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 3
  %69 = load i32* %68, align 4, !tbaa !37
  %70 = mul nsw i32 %69, %69
  %71 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 0
  store i32 %70, i32* %71, align 4, !tbaa !38
  br label %72

; <label>:72                                      ; preds = %72, %init_grpstat.exit
  %indvars.iv.i1 = phi i64 [ 0, %init_grpstat.exit ], [ %indvars.iv.next.i2, %72 ]
  %73 = tail call i8* @save_calloc(i8* getelementptr inbounds ([13 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([66 x i8]* @.str1, i64 0, i64 0), i32 102, i32 %70, i32 4) #8
  %74 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 %indvars.iv.i1
  %75 = bitcast float** %74 to i8**
  store i8* %73, i8** %75, align 8, !tbaa !39
  %indvars.iv.next.i2 = add nuw nsw i64 %indvars.iv.i1, 1
  %exitcond.i3 = icmp eq i64 %indvars.iv.next.i2, 7
  br i1 %exitcond.i3, label %init_grpener.exit, label %72

init_grpener.exit:                                ; preds = %72
  ret void
}

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @dump_estat(%struct.__sFILE* %log, %struct.t_grp_ener* nocapture readonly %estat) #3 {
  %1 = icmp eq %struct.__sFILE* %log, null
  br i1 %1, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %0
  %2 = getelementptr inbounds %struct.t_grp_ener* %estat, i64 0, i32 0
  %3 = load i32* %2, align 4, !tbaa !38
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %5 = getelementptr inbounds %struct.t_grp_ener* %estat, i64 0, i32 1, i64 1
  br label %6

; <label>:6                                       ; preds = %.lr.ph, %6
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %6 ]
  %7 = load float** %5, align 8, !tbaa !39
  %8 = getelementptr inbounds float* %7, i64 %indvars.iv
  %9 = load float* %8, align 4, !tbaa !33
  %10 = fpext float %9 to double
  %11 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), double %10) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %12 = load i32* %2, align 4, !tbaa !38
  %13 = sext i32 %12 to i64
  %14 = icmp slt i64 %indvars.iv.next, %13
  br i1 %14, label %6, label %.loopexit

.loopexit:                                        ; preds = %6, %.preheader, %0
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #4

; Function Attrs: nounwind optsize readonly ssp uwtable
define float @rms_ener(%struct.t_energy* nocapture readonly %e, i32 %nsteps) #5 {
  %1 = getelementptr inbounds %struct.t_energy* %e, i64 0, i32 3
  %2 = load float* %1, align 4, !tbaa !40
  %3 = sitofp i32 %nsteps to float
  %4 = fmul float %3, %2
  %5 = fpext float %4 to double
  %6 = getelementptr inbounds %struct.t_energy* %e, i64 0, i32 2
  %7 = load double* %6, align 8, !tbaa !43
  %8 = fmul double %7, %7
  %9 = fsub double %5, %8
  %10 = fptrunc double %9 to float
  %11 = fcmp ugt float %10, 0.000000e+00
  br i1 %11, label %12, label %18

; <label>:12                                      ; preds = %0
  %13 = fpext float %10 to double
  %14 = tail call double @sqrt(double %13) #9
  %15 = sitofp i32 %nsteps to double
  %16 = fdiv double %14, %15
  %17 = fptrunc double %16 to float
  br label %18

; <label>:18                                      ; preds = %0, %12
  %.0 = phi float [ %17, %12 ], [ 0.000000e+00, %0 ]
  ret float %.0
}

; Function Attrs: nounwind optsize readnone
declare double @sqrt(double) #6

; Function Attrs: nounwind optsize ssp uwtable
define void @accumulate_u(%struct.t_commrec* %cr, %struct.t_grpopts* nocapture readonly %opts, %struct.t_groups* nocapture readonly %grps) #3 {
  %1 = load %struct.t_bin** @accumulate_u.rb, align 8, !tbaa !39
  %2 = icmp eq %struct.t_bin* %1, null
  br i1 %2, label %3, label %5

; <label>:3                                       ; preds = %0
  %4 = tail call %struct.t_bin* @mk_bin() #8
  store %struct.t_bin* %4, %struct.t_bin** @accumulate_u.rb, align 8, !tbaa !39
  br label %.preheader

; <label>:5                                       ; preds = %0
  tail call void @reset_bin(%struct.t_bin* %1) #8
  br label %.preheader

.preheader:                                       ; preds = %5, %3
  %6 = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 1
  %7 = load i32* %6, align 4, !tbaa !24
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %.lr.ph3, label %._crit_edge4

.lr.ph3:                                          ; preds = %.preheader
  %9 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 2
  br label %10

; <label>:10                                      ; preds = %.lr.ph3, %10
  %indvars.iv5 = phi i64 [ 0, %.lr.ph3 ], [ %indvars.iv.next6, %10 ]
  %11 = load %struct.__sFILE** @stdlog, align 8, !tbaa !39
  %12 = load %struct.t_bin** @accumulate_u.rb, align 8, !tbaa !39
  %13 = load %struct.t_grp_acc** %9, align 8, !tbaa !25
  %14 = getelementptr inbounds %struct.t_grp_acc* %13, i64 %indvars.iv5, i32 3, i64 0
  %15 = tail call i32 @add_binr(%struct.__sFILE* %11, %struct.t_bin* %12, i32 3, float* %14) #8
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1
  %16 = load i32* %6, align 4, !tbaa !24
  %17 = sext i32 %16 to i64
  %18 = icmp slt i64 %indvars.iv.next6, %17
  br i1 %18, label %10, label %._crit_edge4

._crit_edge4:                                     ; preds = %10, %.preheader
  %19 = load %struct.t_bin** @accumulate_u.rb, align 8, !tbaa !39
  tail call void @sum_bin(%struct.t_bin* %19, %struct.t_commrec* %cr) #8
  %20 = load i32* %6, align 4, !tbaa !24
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %._crit_edge4
  %22 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 2
  br label %23

; <label>:23                                      ; preds = %.lr.ph, %23
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %23 ]
  %24 = load %struct.t_bin** @accumulate_u.rb, align 8, !tbaa !39
  %25 = mul nsw i64 %indvars.iv, 3
  %26 = load %struct.t_grp_acc** %22, align 8, !tbaa !25
  %27 = getelementptr inbounds %struct.t_grp_acc* %26, i64 %indvars.iv, i32 3, i64 0
  %28 = trunc i64 %25 to i32
  tail call void @extract_binr(%struct.t_bin* %24, i32 %28, i32 3, float* %27) #8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %29 = load i32* %6, align 4, !tbaa !24
  %30 = sext i32 %29 to i64
  %31 = icmp slt i64 %indvars.iv.next, %30
  br i1 %31, label %23, label %._crit_edge

._crit_edge:                                      ; preds = %23, %._crit_edge4
  ret void
}

; Function Attrs: optsize
declare %struct.t_bin* @mk_bin() #1

; Function Attrs: optsize
declare void @reset_bin(%struct.t_bin*) #1

; Function Attrs: optsize
declare i32 @add_binr(%struct.__sFILE*, %struct.t_bin*, i32, float*) #1

; Function Attrs: optsize
declare void @sum_bin(%struct.t_bin*, %struct.t_commrec*) #1

; Function Attrs: optsize
declare void @extract_binr(%struct.t_bin*, i32, i32, float*) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @update_grps(i32 %start, i32 %homenr, %struct.t_groups* nocapture readonly %grps, %struct.t_grpopts* nocapture readonly %opts, [3 x float]* nocapture readonly %v, %struct.t_mdatoms* nocapture readonly %md, i32 %bNEMD) #3 {
  %1 = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 0
  %2 = load i32* %1, align 4, !tbaa !14
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %.lr.ph11, label %._crit_edge

.lr.ph11:                                         ; preds = %0
  %4 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 1
  %5 = load %struct.t_grp_tcstat** %4, align 8, !tbaa !16
  %6 = sext i32 %2 to i64
  br label %7

; <label>:7                                       ; preds = %.lr.ph11, %7
  %indvars.iv21 = phi i64 [ 0, %.lr.ph11 ], [ %indvars.iv.next22, %7 ]
  %8 = getelementptr inbounds %struct.t_grp_tcstat* %5, i64 %indvars.iv21, i32 0
  store float 0.000000e+00, float* %8, align 4, !tbaa !21
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  %9 = icmp slt i64 %indvars.iv.next22, %6
  br i1 %9, label %7, label %._crit_edge

._crit_edge:                                      ; preds = %7, %0
  %10 = icmp eq i32 %bNEMD, 0
  br i1 %10, label %.loopexit, label %.preheader3

.preheader3:                                      ; preds = %._crit_edge
  %11 = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 1
  %12 = load i32* %11, align 4, !tbaa !24
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %.lr.ph9, label %.preheader2

.lr.ph9:                                          ; preds = %.preheader3
  %14 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 2
  %15 = load %struct.t_grp_acc** %14, align 8, !tbaa !25
  %16 = sext i32 %12 to i64
  br label %27

.preheader2:                                      ; preds = %27, %.preheader3
  %17 = icmp sgt i32 %homenr, 0
  br i1 %17, label %.lr.ph, label %.preheader1

.lr.ph:                                           ; preds = %.preheader2
  %18 = add nsw i32 %homenr, %start
  %19 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 16
  %20 = load i16** %19, align 8, !tbaa !28
  %21 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 4
  %22 = load float** %21, align 8, !tbaa !29
  %23 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 2
  %24 = load %struct.t_grp_acc** %23, align 8, !tbaa !25
  %25 = sext i32 %start to i64
  %26 = sext i32 %18 to i64
  br label %35

; <label>:27                                      ; preds = %.lr.ph9, %27
  %indvars.iv19 = phi i64 [ 0, %.lr.ph9 ], [ %indvars.iv.next20, %27 ]
  %28 = getelementptr inbounds %struct.t_grp_acc* %15, i64 %indvars.iv19, i32 3, i64 0
  store float 0.000000e+00, float* %28, align 4, !tbaa !33
  %29 = getelementptr inbounds %struct.t_grp_acc* %15, i64 %indvars.iv19, i32 3, i64 1
  store float 0.000000e+00, float* %29, align 4, !tbaa !33
  %30 = getelementptr inbounds %struct.t_grp_acc* %15, i64 %indvars.iv19, i32 3, i64 2
  store float 0.000000e+00, float* %30, align 4, !tbaa !33
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  %31 = icmp slt i64 %indvars.iv.next20, %16
  br i1 %31, label %27, label %.preheader2

.preheader1:                                      ; preds = %48, %.preheader2
  br i1 %13, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader1
  %32 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 2
  %33 = load %struct.t_grp_acc** %32, align 8, !tbaa !25
  %34 = sext i32 %12 to i64
  br label %.preheader

; <label>:35                                      ; preds = %.lr.ph, %48
  %indvars.iv17 = phi i64 [ %25, %.lr.ph ], [ %indvars.iv.next18, %48 ]
  %36 = getelementptr inbounds i16* %20, i64 %indvars.iv17
  %37 = load i16* %36, align 2, !tbaa !30
  %38 = getelementptr inbounds float* %22, i64 %indvars.iv17
  %39 = zext i16 %37 to i64
  br label %40

; <label>:40                                      ; preds = %40, %35
  %indvars.iv14 = phi i64 [ 0, %35 ], [ %indvars.iv.next15, %40 ]
  %41 = load float* %38, align 4, !tbaa !33
  %42 = getelementptr inbounds [3 x float]* %v, i64 %indvars.iv17, i64 %indvars.iv14
  %43 = load float* %42, align 4, !tbaa !33
  %44 = fmul float %41, %43
  %45 = getelementptr inbounds %struct.t_grp_acc* %24, i64 %39, i32 3, i64 %indvars.iv14
  %46 = load float* %45, align 4, !tbaa !33
  %47 = fadd float %44, %46
  store float %47, float* %45, align 4, !tbaa !33
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  %exitcond16 = icmp eq i64 %indvars.iv.next15, 3
  br i1 %exitcond16, label %48, label %40

; <label>:48                                      ; preds = %40
  %indvars.iv.next18 = add nsw i64 %indvars.iv17, 1
  %49 = icmp slt i64 %indvars.iv.next18, %26
  br i1 %49, label %35, label %.preheader1

.preheader:                                       ; preds = %.preheader.lr.ph, %56
  %indvars.iv12 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next13, %56 ]
  %50 = getelementptr inbounds %struct.t_grp_acc* %33, i64 %indvars.iv12, i32 2
  br label %51

; <label>:51                                      ; preds = %51, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %51 ]
  %52 = load float* %50, align 4, !tbaa !34
  %53 = getelementptr inbounds %struct.t_grp_acc* %33, i64 %indvars.iv12, i32 3, i64 %indvars.iv
  %54 = load float* %53, align 4, !tbaa !33
  %55 = fdiv float %54, %52
  store float %55, float* %53, align 4, !tbaa !33
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %56, label %51

; <label>:56                                      ; preds = %51
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  %57 = icmp slt i64 %indvars.iv.next13, %34
  br i1 %57, label %.preheader, label %.loopexit

.loopexit:                                        ; preds = %56, %.preheader1, %._crit_edge
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define float @sum_ekin(%struct.t_grpopts* nocapture readonly %opts, %struct.t_groups* nocapture readonly %grps, [3 x float]* nocapture %ekin, i32 %bTYZ) #3 {
  %tfac = alloca [3 x float], align 4
  %1 = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 0
  %2 = load i32* %1, align 4, !tbaa !14
  %3 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 1
  %4 = load %struct.t_grp_tcstat** %3, align 8, !tbaa !16
  %5 = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 4
  %6 = load float** %5, align 8, !tbaa !44
  %7 = bitcast [3 x float]* %ekin to i8*
  tail call void @llvm.memset.p0i8.i64(i8* %7, i8 0, i64 36, i32 4, i1 false) #7
  %8 = icmp eq i32 %bTYZ, 0
  %. = select i1 %8, float 1.000000e+00, float 0.000000e+00
  %.12 = select i1 %8, float 1.000000e+00, float 0x3FE5555560000000
  %9 = getelementptr inbounds [3 x float]* %tfac, i64 0, i64 2
  store float 1.000000e+00, float* %9, align 4
  %10 = getelementptr inbounds [3 x float]* %tfac, i64 0, i64 1
  store float 1.000000e+00, float* %10, align 4
  %11 = getelementptr inbounds [3 x float]* %tfac, i64 0, i64 0
  store float %., float* %11, align 4
  %12 = icmp sgt i32 %2, 0
  br i1 %12, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %0
  %13 = getelementptr inbounds [3 x float]* %ekin, i64 0, i64 0
  %14 = getelementptr inbounds [3 x float]* %ekin, i64 0, i64 1
  %15 = getelementptr inbounds [3 x float]* %ekin, i64 0, i64 2
  %16 = getelementptr inbounds [3 x float]* %ekin, i64 1, i64 0
  %17 = getelementptr inbounds [3 x float]* %ekin, i64 1, i64 1
  %18 = getelementptr inbounds [3 x float]* %ekin, i64 1, i64 2
  %19 = getelementptr inbounds [3 x float]* %ekin, i64 2, i64 0
  %20 = getelementptr inbounds [3 x float]* %ekin, i64 2, i64 1
  %21 = getelementptr inbounds [3 x float]* %ekin, i64 2, i64 2
  %22 = add i32 %2, -1
  br label %23

; <label>:23                                      ; preds = %78, %.lr.ph
  %indvars.iv9 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next10, %78 ]
  %nrdf.04 = phi float [ 0.000000e+00, %.lr.ph ], [ %82, %78 ]
  %T.03 = phi float [ 0.000000e+00, %.lr.ph ], [ %81, %78 ]
  %24 = getelementptr inbounds float* %6, i64 %indvars.iv9
  %25 = load float* %24, align 4, !tbaa !33
  %26 = fmul float %.12, %25
  %27 = fcmp ogt float %26, 0.000000e+00
  %28 = getelementptr inbounds %struct.t_grp_tcstat* %4, i64 %indvars.iv9
  br i1 %27, label %29, label %76

; <label>:29                                      ; preds = %23
  %30 = getelementptr inbounds %struct.t_grp_tcstat* %4, i64 %indvars.iv9, i32 2, i64 0, i64 0
  %31 = load float* %30, align 4, !tbaa !33
  %32 = load float* %13, align 4, !tbaa !33
  %33 = fadd float %31, %32
  store float %33, float* %13, align 4, !tbaa !33
  %34 = getelementptr inbounds %struct.t_grp_tcstat* %4, i64 %indvars.iv9, i32 2, i64 0, i64 1
  %35 = load float* %34, align 4, !tbaa !33
  %36 = load float* %14, align 4, !tbaa !33
  %37 = fadd float %35, %36
  store float %37, float* %14, align 4, !tbaa !33
  %38 = getelementptr inbounds %struct.t_grp_tcstat* %4, i64 %indvars.iv9, i32 2, i64 0, i64 2
  %39 = load float* %38, align 4, !tbaa !33
  %40 = load float* %15, align 4, !tbaa !33
  %41 = fadd float %39, %40
  store float %41, float* %15, align 4, !tbaa !33
  %42 = getelementptr inbounds %struct.t_grp_tcstat* %4, i64 %indvars.iv9, i32 2, i64 1, i64 0
  %43 = load float* %42, align 4, !tbaa !33
  %44 = load float* %16, align 4, !tbaa !33
  %45 = fadd float %43, %44
  store float %45, float* %16, align 4, !tbaa !33
  %46 = getelementptr inbounds %struct.t_grp_tcstat* %4, i64 %indvars.iv9, i32 2, i64 1, i64 1
  %47 = load float* %46, align 4, !tbaa !33
  %48 = load float* %17, align 4, !tbaa !33
  %49 = fadd float %47, %48
  store float %49, float* %17, align 4, !tbaa !33
  %50 = getelementptr inbounds %struct.t_grp_tcstat* %4, i64 %indvars.iv9, i32 2, i64 1, i64 2
  %51 = load float* %50, align 4, !tbaa !33
  %52 = load float* %18, align 4, !tbaa !33
  %53 = fadd float %51, %52
  store float %53, float* %18, align 4, !tbaa !33
  %54 = getelementptr inbounds %struct.t_grp_tcstat* %4, i64 %indvars.iv9, i32 2, i64 2, i64 0
  %55 = load float* %54, align 4, !tbaa !33
  %56 = load float* %19, align 4, !tbaa !33
  %57 = fadd float %55, %56
  store float %57, float* %19, align 4, !tbaa !33
  %58 = getelementptr inbounds %struct.t_grp_tcstat* %4, i64 %indvars.iv9, i32 2, i64 2, i64 1
  %59 = load float* %58, align 4, !tbaa !33
  %60 = load float* %20, align 4, !tbaa !33
  %61 = fadd float %59, %60
  store float %61, float* %20, align 4, !tbaa !33
  %62 = getelementptr inbounds %struct.t_grp_tcstat* %4, i64 %indvars.iv9, i32 2, i64 2, i64 2
  %63 = load float* %62, align 4, !tbaa !33
  %64 = load float* %21, align 4, !tbaa !33
  %65 = fadd float %63, %64
  store float %65, float* %21, align 4, !tbaa !33
  br label %66

; <label>:66                                      ; preds = %66, %29
  %indvars.iv = phi i64 [ 0, %29 ], [ %indvars.iv.next, %66 ]
  %ek.01 = phi float [ 0.000000e+00, %29 ], [ %72, %66 ]
  %67 = getelementptr inbounds [3 x float]* %tfac, i64 0, i64 %indvars.iv
  %68 = load float* %67, align 4, !tbaa !33
  %69 = getelementptr inbounds %struct.t_grp_tcstat* %4, i64 %indvars.iv9, i32 2, i64 %indvars.iv, i64 %indvars.iv
  %70 = load float* %69, align 4, !tbaa !33
  %71 = fmul float %68, %70
  %72 = fadd float %ek.01, %71
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %73, label %66

; <label>:73                                      ; preds = %66
  %74 = tail call float @calc_temp(float %72, float %26) #8
  %75 = getelementptr inbounds %struct.t_grp_tcstat* %28, i64 0, i32 0
  store float %74, float* %75, align 4, !tbaa !21
  br label %78

; <label>:76                                      ; preds = %23
  %77 = getelementptr inbounds %struct.t_grp_tcstat* %28, i64 0, i32 0
  store float 0.000000e+00, float* %77, align 4, !tbaa !21
  br label %78

; <label>:78                                      ; preds = %76, %73
  %79 = phi float [ 0.000000e+00, %76 ], [ %74, %73 ]
  %80 = fmul float %26, %79
  %81 = fadd float %T.03, %80
  %82 = fadd float %nrdf.04, %26
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1
  %lftr.wideiv = trunc i64 %indvars.iv9 to i32
  %exitcond11 = icmp eq i32 %lftr.wideiv, %22
  br i1 %exitcond11, label %._crit_edge, label %23

._crit_edge:                                      ; preds = %78
  %83 = fcmp ogt float %82, 0.000000e+00
  br i1 %83, label %84, label %._crit_edge.thread

; <label>:84                                      ; preds = %._crit_edge
  %85 = fdiv float %81, %82
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %0, %84, %._crit_edge
  %T.1 = phi float [ %85, %84 ], [ %81, %._crit_edge ], [ 0.000000e+00, %0 ]
  ret float %T.1
}

; Function Attrs: optsize
declare float @calc_temp(float, float) #1

; Function Attrs: nounwind optsize ssp uwtable
define void @sum_epot(%struct.t_grpopts* nocapture readnone %opts, %struct.t_groups* nocapture readonly %grps, float* nocapture %epot) #3 {
  %1 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 0
  %2 = load i32* %1, align 4, !tbaa !45
  %3 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 0
  %4 = load float** %3, align 8, !tbaa !39
  %5 = icmp sgt i32 %2, 0
  br i1 %5, label %.lr.ph.i, label %sum_v.exit.thread

sum_v.exit.thread:                                ; preds = %0
  %6 = getelementptr inbounds float* %epot, i64 17
  store float 0.000000e+00, float* %6, align 4, !tbaa !33
  br label %sum_v.exit56.thread

.lr.ph.i:                                         ; preds = %0
  %7 = add i32 %2, -1
  br label %8

; <label>:8                                       ; preds = %8, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %8 ]
  %t.01.i = phi float [ 0.000000e+00, %.lr.ph.i ], [ %11, %8 ]
  %9 = getelementptr inbounds float* %4, i64 %indvars.iv.i
  %10 = load float* %9, align 4, !tbaa !33
  %11 = fadd float %t.01.i, %10
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %lftr.wideiv82 = trunc i64 %indvars.iv.i to i32
  %exitcond83 = icmp eq i32 %lftr.wideiv82, %7
  br i1 %exitcond83, label %sum_v.exit, label %8

sum_v.exit:                                       ; preds = %8
  %12 = getelementptr inbounds float* %epot, i64 17
  store float %11, float* %12, align 4, !tbaa !33
  %13 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 1
  %14 = load float** %13, align 8, !tbaa !39
  br i1 %5, label %.lr.ph.i49, label %sum_v.exit56.thread

.lr.ph.i49:                                       ; preds = %sum_v.exit
  %15 = add i32 %2, -1
  br label %16

; <label>:16                                      ; preds = %16, %.lr.ph.i49
  %indvars.iv.i50 = phi i64 [ 0, %.lr.ph.i49 ], [ %indvars.iv.next.i52, %16 ]
  %t.01.i51 = phi float [ 0.000000e+00, %.lr.ph.i49 ], [ %19, %16 ]
  %17 = getelementptr inbounds float* %14, i64 %indvars.iv.i50
  %18 = load float* %17, align 4, !tbaa !33
  %19 = fadd float %t.01.i51, %18
  %indvars.iv.next.i52 = add nuw nsw i64 %indvars.iv.i50, 1
  %lftr.wideiv80 = trunc i64 %indvars.iv.i50 to i32
  %exitcond81 = icmp eq i32 %lftr.wideiv80, %15
  br i1 %exitcond81, label %sum_v.exit56, label %16

sum_v.exit56.thread:                              ; preds = %sum_v.exit.thread, %sum_v.exit
  %20 = getelementptr inbounds float* %epot, i64 13
  store float 0.000000e+00, float* %20, align 4, !tbaa !33
  br label %sum_v.exit48.thread

sum_v.exit56:                                     ; preds = %16
  %21 = getelementptr inbounds float* %epot, i64 13
  store float %19, float* %21, align 4, !tbaa !33
  %22 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 6
  %23 = load float** %22, align 8, !tbaa !39
  br i1 %5, label %.lr.ph.i41, label %sum_v.exit48.thread

.lr.ph.i41:                                       ; preds = %sum_v.exit56
  %24 = add i32 %2, -1
  br label %25

; <label>:25                                      ; preds = %25, %.lr.ph.i41
  %indvars.iv.i42 = phi i64 [ 0, %.lr.ph.i41 ], [ %indvars.iv.next.i44, %25 ]
  %t.01.i43 = phi float [ 0.000000e+00, %.lr.ph.i41 ], [ %28, %25 ]
  %26 = getelementptr inbounds float* %23, i64 %indvars.iv.i42
  %27 = load float* %26, align 4, !tbaa !33
  %28 = fadd float %t.01.i43, %27
  %indvars.iv.next.i44 = add nuw nsw i64 %indvars.iv.i42, 1
  %lftr.wideiv78 = trunc i64 %indvars.iv.i42 to i32
  %exitcond79 = icmp eq i32 %lftr.wideiv78, %24
  br i1 %exitcond79, label %sum_v.exit48, label %25

sum_v.exit48.thread:                              ; preds = %sum_v.exit56.thread, %sum_v.exit56
  %29 = getelementptr inbounds float* %epot, i64 11
  store float 0.000000e+00, float* %29, align 4, !tbaa !33
  br label %sum_v.exit40.thread

sum_v.exit48:                                     ; preds = %25
  %30 = getelementptr inbounds float* %epot, i64 11
  store float %28, float* %30, align 4, !tbaa !33
  %31 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 5
  %32 = load float** %31, align 8, !tbaa !39
  br i1 %5, label %.lr.ph.i33, label %sum_v.exit40.thread

.lr.ph.i33:                                       ; preds = %sum_v.exit48
  %33 = add i32 %2, -1
  br label %34

; <label>:34                                      ; preds = %34, %.lr.ph.i33
  %indvars.iv.i34 = phi i64 [ 0, %.lr.ph.i33 ], [ %indvars.iv.next.i36, %34 ]
  %t.01.i35 = phi float [ 0.000000e+00, %.lr.ph.i33 ], [ %37, %34 ]
  %35 = getelementptr inbounds float* %32, i64 %indvars.iv.i34
  %36 = load float* %35, align 4, !tbaa !33
  %37 = fadd float %t.01.i35, %36
  %indvars.iv.next.i36 = add nuw nsw i64 %indvars.iv.i34, 1
  %lftr.wideiv76 = trunc i64 %indvars.iv.i34 to i32
  %exitcond77 = icmp eq i32 %lftr.wideiv76, %33
  br i1 %exitcond77, label %sum_v.exit40, label %34

sum_v.exit40.thread:                              ; preds = %sum_v.exit48.thread, %sum_v.exit48
  %38 = getelementptr inbounds float* %epot, i64 12
  store float 0.000000e+00, float* %38, align 4, !tbaa !33
  br label %sum_v.exit32.thread

sum_v.exit40:                                     ; preds = %34
  %39 = getelementptr inbounds float* %epot, i64 12
  store float %37, float* %39, align 4, !tbaa !33
  %40 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 3
  %41 = load float** %40, align 8, !tbaa !39
  br i1 %5, label %.lr.ph.i25, label %sum_v.exit32.thread

.lr.ph.i25:                                       ; preds = %sum_v.exit40
  %42 = add i32 %2, -1
  br label %43

; <label>:43                                      ; preds = %43, %.lr.ph.i25
  %indvars.iv.i26 = phi i64 [ 0, %.lr.ph.i25 ], [ %indvars.iv.next.i28, %43 ]
  %t.01.i27 = phi float [ 0.000000e+00, %.lr.ph.i25 ], [ %46, %43 ]
  %44 = getelementptr inbounds float* %41, i64 %indvars.iv.i26
  %45 = load float* %44, align 4, !tbaa !33
  %46 = fadd float %t.01.i27, %45
  %indvars.iv.next.i28 = add nuw nsw i64 %indvars.iv.i26, 1
  %lftr.wideiv74 = trunc i64 %indvars.iv.i26 to i32
  %exitcond75 = icmp eq i32 %lftr.wideiv74, %42
  br i1 %exitcond75, label %sum_v.exit32, label %43

sum_v.exit32.thread:                              ; preds = %sum_v.exit40.thread, %sum_v.exit40
  %47 = getelementptr inbounds float* %epot, i64 18
  %48 = load float* %47, align 4, !tbaa !33
  %49 = fadd float %48, 0.000000e+00
  store float %49, float* %47, align 4, !tbaa !33
  br label %sum_v.exit24.thread

sum_v.exit32:                                     ; preds = %43
  %50 = getelementptr inbounds float* %epot, i64 18
  %51 = load float* %50, align 4, !tbaa !33
  %52 = fadd float %46, %51
  store float %52, float* %50, align 4, !tbaa !33
  %53 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 4
  %54 = load float** %53, align 8, !tbaa !39
  br i1 %5, label %.lr.ph.i17, label %sum_v.exit24.thread

.lr.ph.i17:                                       ; preds = %sum_v.exit32
  %55 = add i32 %2, -1
  br label %56

; <label>:56                                      ; preds = %56, %.lr.ph.i17
  %indvars.iv.i18 = phi i64 [ 0, %.lr.ph.i17 ], [ %indvars.iv.next.i20, %56 ]
  %t.01.i19 = phi float [ 0.000000e+00, %.lr.ph.i17 ], [ %59, %56 ]
  %57 = getelementptr inbounds float* %54, i64 %indvars.iv.i18
  %58 = load float* %57, align 4, !tbaa !33
  %59 = fadd float %t.01.i19, %58
  %indvars.iv.next.i20 = add nuw nsw i64 %indvars.iv.i18, 1
  %lftr.wideiv72 = trunc i64 %indvars.iv.i18 to i32
  %exitcond73 = icmp eq i32 %lftr.wideiv72, %55
  br i1 %exitcond73, label %sum_v.exit24, label %56

sum_v.exit24.thread:                              ; preds = %sum_v.exit32.thread, %sum_v.exit32
  %60 = getelementptr inbounds float* %epot, i64 15
  %61 = load float* %60, align 4, !tbaa !33
  %62 = fadd float %61, 0.000000e+00
  store float %62, float* %60, align 4, !tbaa !33
  br label %sum_v.exit16

sum_v.exit24:                                     ; preds = %56
  %63 = getelementptr inbounds float* %epot, i64 15
  %64 = load float* %63, align 4, !tbaa !33
  %65 = fadd float %59, %64
  store float %65, float* %63, align 4, !tbaa !33
  %66 = getelementptr inbounds %struct.t_groups* %grps, i64 0, i32 0, i32 1, i64 2
  %67 = load float** %66, align 8, !tbaa !39
  br i1 %5, label %.lr.ph.i9, label %sum_v.exit16

.lr.ph.i9:                                        ; preds = %sum_v.exit24
  %68 = add i32 %2, -1
  br label %69

; <label>:69                                      ; preds = %69, %.lr.ph.i9
  %indvars.iv.i10 = phi i64 [ 0, %.lr.ph.i9 ], [ %indvars.iv.next.i12, %69 ]
  %t.01.i11 = phi float [ 0.000000e+00, %.lr.ph.i9 ], [ %72, %69 ]
  %70 = getelementptr inbounds float* %67, i64 %indvars.iv.i10
  %71 = load float* %70, align 4, !tbaa !33
  %72 = fadd float %t.01.i11, %71
  %indvars.iv.next.i12 = add nuw nsw i64 %indvars.iv.i10, 1
  %lftr.wideiv = trunc i64 %indvars.iv.i10 to i32
  %exitcond71 = icmp eq i32 %lftr.wideiv, %68
  br i1 %exitcond71, label %sum_v.exit16, label %69

sum_v.exit16:                                     ; preds = %69, %sum_v.exit24.thread, %sum_v.exit24
  %t.0.lcssa.i15 = phi float [ 0.000000e+00, %sum_v.exit24 ], [ 0.000000e+00, %sum_v.exit24.thread ], [ %72, %69 ]
  %73 = getelementptr inbounds float* %epot, i64 14
  store float %t.0.lcssa.i15, float* %73, align 4, !tbaa !33
  br label %74

; <label>:74                                      ; preds = %74, %sum_v.exit16
  %indvars.iv.i2 = phi i64 [ 0, %sum_v.exit16 ], [ %indvars.iv.next.i4, %74 ]
  %t.01.i3 = phi float [ 0.000000e+00, %sum_v.exit16 ], [ %77, %74 ]
  %75 = getelementptr inbounds float* %epot, i64 %indvars.iv.i2
  %76 = load float* %75, align 4, !tbaa !33
  %77 = fadd float %t.01.i3, %76
  %indvars.iv.next.i4 = add nuw nsw i64 %indvars.iv.i2, 1
  %exitcond = icmp eq i64 %indvars.iv.next.i4, 37
  br i1 %exitcond, label %sum_v.exit8, label %74

sum_v.exit8:                                      ; preds = %74
  %78 = getelementptr inbounds float* %epot, i64 37
  store float %77, float* %78, align 4, !tbaa !33
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #7

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize readonly ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind optsize }
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
!14 = !{!15, !7, i64 0}
!15 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56}
!16 = !{!17, !4, i64 64}
!17 = !{!"", !18, i64 0, !4, i64 64, !4, i64 72, !19, i64 80}
!18 = !{!"", !7, i64 0, !5, i64 8}
!19 = !{!"", !20, i64 0, !20, i64 4, !20, i64 8}
!20 = !{!"float", !5, i64 0}
!21 = !{!22, !20, i64 0}
!22 = !{!"", !20, i64 0, !20, i64 4, !5, i64 8, !20, i64 44, !20, i64 48}
!23 = !{!22, !20, i64 4}
!24 = !{!15, !7, i64 4}
!25 = !{!17, !4, i64 72}
!26 = !{!27, !7, i64 4}
!27 = !{!"", !20, i64 0, !7, i64 4, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !4, i64 88, !4, i64 96, !4, i64 104, !4, i64 112, !4, i64 120, !4, i64 128, !4, i64 136, !4, i64 144, !4, i64 152, !4, i64 160, !4, i64 168}
!28 = !{!27, !4, i64 120}
!29 = !{!27, !4, i64 24}
!30 = !{!8, !8, i64 0}
!31 = !{!32, !7, i64 0}
!32 = !{!"", !7, i64 0, !4, i64 8, !20, i64 16, !5, i64 20, !5, i64 32, !5, i64 44}
!33 = !{!20, !20, i64 0}
!34 = !{!32, !20, i64 16}
!35 = !{!32, !4, i64 8}
!36 = !{!7, !7, i64 0}
!37 = !{!15, !7, i64 12}
!38 = !{!18, !7, i64 0}
!39 = !{!4, !4, i64 0}
!40 = !{!41, !20, i64 24}
!41 = !{!"", !20, i64 0, !42, i64 8, !42, i64 16, !20, i64 24}
!42 = !{!"double", !5, i64 0}
!43 = !{!41, !42, i64 16}
!44 = !{!15, !4, i64 16}
!45 = !{!17, !7, i64 0}
