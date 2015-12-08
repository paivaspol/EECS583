; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/bondfree.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }
%struct.t_idef = type { i32, i32, i32, i32*, %union.t_iparams*, [44 x %struct.t_ilist] }
%struct.t_ilist = type { i32, [256 x i32], i32* }
%struct.t_nrnb = type { [129 x double] }

@calc_bonds.bFirst = internal unnamed_addr global i1 false
@.str = private unnamed_addr constant [41 x i8] c"Step %d: bonded V and dVdl for node %d:\0A\00", align 1
@interaction_function = external global [44 x %struct.t_interaction_function]
@.str1 = private unnamed_addr constant [37 x i8] c"  %-15s #%4d  V %12.5e  dVdl %12.5e\0A\00", align 1
@debug = external global %struct._IO_FILE*
@.str2 = private unnamed_addr constant [48 x i8] c"WPOL: kk  = %10.3f        %10.3f        %10.3f\0A\00", align 1
@.str3 = private unnamed_addr constant [48 x i8] c"WPOL: rOH = %10.3f  rHH = %10.3f  rOD = %10.3f\0A\00", align 1
@.str4 = private unnamed_addr constant [45 x i8] c"*** you are using a not implemented function\00", align 1

; Function Attrs: nounwind optsize uwtable
define void @pbc_rvec_sub(float* nocapture %xi, float* nocapture %xj, float* nocapture %dx) #0 {
entry:
  %0 = load float* %xi, align 4, !tbaa !0
  %1 = load float* %xj, align 4, !tbaa !0
  %sub.i = fsub float %0, %1
  %arrayidx2.i = getelementptr inbounds float* %xi, i64 1
  %2 = load float* %arrayidx2.i, align 4, !tbaa !0
  %arrayidx3.i = getelementptr inbounds float* %xj, i64 1
  %3 = load float* %arrayidx3.i, align 4, !tbaa !0
  %sub4.i = fsub float %2, %3
  %arrayidx5.i = getelementptr inbounds float* %xi, i64 2
  %4 = load float* %arrayidx5.i, align 4, !tbaa !0
  %arrayidx6.i = getelementptr inbounds float* %xj, i64 2
  %5 = load float* %arrayidx6.i, align 4, !tbaa !0
  %sub7.i = fsub float %4, %5
  store float %sub.i, float* %dx, align 4, !tbaa !0
  %arrayidx9.i = getelementptr inbounds float* %dx, i64 1
  store float %sub4.i, float* %arrayidx9.i, align 4, !tbaa !0
  %arrayidx10.i = getelementptr inbounds float* %dx, i64 2
  store float %sub7.i, float* %arrayidx10.i, align 4, !tbaa !0
  ret void
}

; Function Attrs: optsize
declare void @pbc_dx(float*, float*, float*) #1

; Function Attrs: nounwind optsize readnone uwtable
define void @set_gmx_full_pbc(%struct._IO_FILE* nocapture %fp) #2 {
entry:
  ret void
}

; Function Attrs: nounwind optsize uwtable
define void @calc_bonds(%struct._IO_FILE* %log, %struct.t_commrec* nocapture %cr, %struct.t_commrec* %mcr, %struct.t_idef* nocapture %idef, [3 x float]* %x_s, [3 x float]* %f, %struct.t_forcerec* %fr, %struct.t_graph* %g, float* nocapture %epot, %struct.t_nrnb* nocapture %nrnb, [3 x float]* %box, float %lambda, %struct.t_mdatoms* %md, i32 %ngrp, float* %egnb, float* %egcoul, %struct.t_fcdata* %fcd, i32 %step, i32 %bSepDVDL) #0 {
entry:
  %dvdl = alloca float, align 4
  %tobool.not = icmp eq i32 %bSepDVDL, 0
  %tobool1 = icmp eq %struct._IO_FILE* %log, null
  %or.cond = or i1 %tobool.not, %tobool1
  br i1 %or.cond, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %nodeid = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %0 = load i32* %nodeid, align 4, !tbaa !3
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([41 x i8]* @.str, i64 0, i64 0), i32 %step, i32 %0) #5
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %.b = load i1* @calc_bonds.bFirst, align 1
  br i1 %.b, label %if.end4, label %if.then3

if.then3:                                         ; preds = %if.end
  store i1 true, i1* @calc_bonds.bFirst, align 1
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then3
  %nr = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 23, i32 0
  %1 = load i32* %nr, align 4, !tbaa !3
  %tobool5 = icmp eq i32 %1, 0
  br i1 %tobool5, label %if.end14, label %if.then6

if.then6:                                         ; preds = %if.end4
  %iatoms = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 23, i32 2
  %2 = load i32** %iatoms, align 8, !tbaa !4
  %iparams = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 4
  %3 = load %union.t_iparams** %iparams, align 8, !tbaa !4
  %call12 = call float @calc_orires_dev(%struct.t_commrec* %mcr, i32 %1, i32* %2, %union.t_iparams* %3, %struct.t_mdatoms* %md, [3 x float]* %x_s, %struct.t_fcdata* %fcd) #5
  %arrayidx13 = getelementptr inbounds float* %epot, i64 24
  store float %call12, float* %arrayidx13, align 4, !tbaa !0
  br label %if.end14

if.end14:                                         ; preds = %if.end4, %if.then6
  %nr17 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 21, i32 0
  %4 = load i32* %nr17, align 4, !tbaa !3
  %tobool18 = icmp eq i32 %4, 0
  br i1 %tobool18, label %if.end14.for.cond.preheader_crit_edge, label %if.then19

if.end14.for.cond.preheader_crit_edge:            ; preds = %if.end14
  %iparams45.pre = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 4
  br label %for.cond.preheader

if.then19:                                        ; preds = %if.end14
  %iatoms25 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 21, i32 2
  %5 = load i32** %iatoms25, align 8, !tbaa !4
  %iparams26 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 4
  %6 = load %union.t_iparams** %iparams26, align 8, !tbaa !4
  call void @calc_disres_R_6(%struct.t_commrec* %mcr, i32 %4, i32* %5, %union.t_iparams* %6, [3 x float]* %x_s, %struct.t_fcdata* %fcd) #5
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end14.for.cond.preheader_crit_edge, %if.then19
  %iparams45.pre-phi = phi %union.t_iparams** [ %iparams45.pre, %if.end14.for.cond.preheader_crit_edge ], [ %iparams26, %if.then19 ]
  %arrayidx60 = getelementptr inbounds float* %epot, i64 42
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.cond.preheader
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.inc ]
  %flags = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %indvars.iv, i32 5
  %7 = load i64* %flags, align 8, !tbaa !5
  %and = and i64 %7, 1
  %tobool29 = icmp eq i64 %and, 0
  %8 = trunc i64 %indvars.iv to i32
  %cmp31 = icmp eq i32 %8, 4
  %or.cond117 = or i1 %tobool29, %cmp31
  br i1 %or.cond117, label %for.inc, label %if.then32

if.then32:                                        ; preds = %for.body
  %nr36 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 %indvars.iv, i32 0
  %9 = load i32* %nr36, align 4, !tbaa !3
  %cmp37 = icmp sgt i32 %9, 0
  br i1 %cmp37, label %if.then38, label %for.inc

if.then38:                                        ; preds = %if.then32
  store float 0.000000e+00, float* %dvdl, align 4, !tbaa !0
  %ifunc = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %indvars.iv, i32 7
  %10 = load float (i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*)** %ifunc, align 8, !tbaa !4
  %iatoms44 = getelementptr inbounds %struct.t_idef* %idef, i64 0, i32 5, i64 %indvars.iv, i32 2
  %11 = load i32** %iatoms44, align 8, !tbaa !4
  %12 = load %union.t_iparams** %iparams45.pre-phi, align 8, !tbaa !4
  %call46 = call float %10(i32 %9, i32* %11, %union.t_iparams* %12, [3 x float]* %x_s, [3 x float]* %f, %struct.t_forcerec* %fr, %struct.t_graph* %g, [3 x float]* %box, float %lambda, float* %dvdl, %struct.t_mdatoms* %md, i32 %ngrp, float* %egnb, float* %egcoul, %struct.t_fcdata* %fcd) #5
  %nrnb_ind = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %indvars.iv, i32 6
  %13 = load i32* %nrnb_ind, align 8, !tbaa !3
  %nratoms = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %indvars.iv, i32 2
  %14 = load i32* %nratoms, align 8, !tbaa !3
  %add = add nsw i32 %14, 1
  %cmp51 = icmp eq i32 %13, -1
  br i1 %cmp51, label %if.end56, label %if.then52

if.then52:                                        ; preds = %if.then38
  %div = sdiv i32 %9, %add
  %conv = sitofp i32 %div to double
  %idxprom53 = sext i32 %13 to i64
  %arrayidx54 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 0, i32 0, i64 %idxprom53
  %15 = load double* %arrayidx54, align 8, !tbaa !6
  %add55 = fadd double %15, %conv
  store double %add55, double* %arrayidx54, align 8, !tbaa !6
  br label %if.end56

if.end56:                                         ; preds = %if.then38, %if.then52
  %arrayidx58 = getelementptr inbounds float* %epot, i64 %indvars.iv
  %16 = load float* %arrayidx58, align 4, !tbaa !0
  %add59 = fadd float %call46, %16
  store float %add59, float* %arrayidx58, align 4, !tbaa !0
  %17 = load float* %dvdl, align 4, !tbaa !0
  %18 = load float* %arrayidx60, align 4, !tbaa !0
  %add61 = fadd float %17, %18
  store float %add61, float* %arrayidx60, align 4, !tbaa !0
  br i1 %or.cond, label %for.inc, label %if.then65

if.then65:                                        ; preds = %if.end56
  %longname = getelementptr inbounds [44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 %indvars.iv, i32 1
  %19 = load i8** %longname, align 8, !tbaa !4
  %div68 = sdiv i32 %9, %add
  %conv69 = fpext float %call46 to double
  %conv70 = fpext float %17 to double
  %call71 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %log, i8* getelementptr inbounds ([37 x i8]* @.str1, i64 0, i64 0), i8* %19, i32 %div68, double %conv69, double %conv70) #5
  br label %for.inc

for.inc:                                          ; preds = %if.end56, %for.body, %if.then65, %if.then32
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 44
  br i1 %exitcond, label %for.end, label %for.body

for.end:                                          ; preds = %for.inc
  %sumviol = getelementptr inbounds %struct.t_fcdata* %fcd, i64 0, i32 0, i32 9
  %20 = load float* %sumviol, align 4, !tbaa !0
  %arrayidx75 = getelementptr inbounds float* %epot, i64 22
  store float %20, float* %arrayidx75, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: optsize
declare float @calc_orires_dev(%struct.t_commrec*, i32, i32*, %union.t_iparams*, %struct.t_mdatoms*, [3 x float]*, %struct.t_fcdata*) #1

; Function Attrs: optsize
declare void @calc_disres_R_6(%struct.t_commrec*, i32, i32*, %union.t_iparams*, [3 x float]*, %struct.t_fcdata*) #1

; Function Attrs: nounwind optsize uwtable
define float @morsebonds(i32 %nbonds, i32* nocapture %forceatoms, %union.t_iparams* nocapture %forceparams, [3 x float]* nocapture %x, [3 x float]* nocapture %f, %struct.t_forcerec* nocapture %fr, %struct.t_graph* nocapture %g, [3 x float]* nocapture %box, float %lambda, float* nocapture %dvdl, %struct.t_mdatoms* nocapture %md, i32 %ngrp, float* nocapture %egnb, float* nocapture %egcoul, %struct.t_fcdata* nocapture %fcd) #0 {
entry:
  %dx = alloca [3 x float], align 4
  %arraydecay22 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 0
  %arrayidx9.i.i = getelementptr inbounds [3 x float]* %dx, i64 0, i64 1
  %arrayidx10.i.i = getelementptr inbounds [3 x float]* %dx, i64 0, i64 2
  %start = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 3
  %ishift = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 7
  %fshift = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 58
  br label %for.cond.outer

for.cond.loopexit:                                ; preds = %for.body71
  %mul38 = fmul float %sub36, %mul37
  %add = fadd float %vtot.0.ph, %mul38
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %for.cond.loopexit, %entry
  %i.0.ph = phi i32 [ 0, %entry ], [ %inc4, %for.cond.loopexit ]
  %vtot.0.ph = phi float [ 0.000000e+00, %entry ], [ %add, %for.cond.loopexit ]
  %0 = sext i32 %i.0.ph to i64
  br label %for.cond

for.cond:                                         ; preds = %for.cond.outer, %for.body
  %indvars.iv = phi i64 [ %0, %for.cond.outer ], [ %indvars.iv.next, %for.body ]
  %i.0 = phi i32 [ %i.0.ph, %for.cond.outer ], [ %inc4, %for.body ]
  %1 = trunc i64 %indvars.iv to i32
  %cmp = icmp slt i32 %1, %nbonds
  br i1 %cmp, label %for.body, label %for.end96

for.body:                                         ; preds = %for.cond
  %2 = add nsw i64 %indvars.iv, 1
  %arrayidx = getelementptr inbounds i32* %forceatoms, i64 %indvars.iv
  %3 = load i32* %arrayidx, align 4, !tbaa !3
  %4 = add nsw i64 %indvars.iv, 2
  %arrayidx3 = getelementptr inbounds i32* %forceatoms, i64 %2
  %5 = load i32* %arrayidx3, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 3
  %inc4 = add nsw i32 %i.0, 3
  %arrayidx6 = getelementptr inbounds i32* %forceatoms, i64 %4
  %6 = load i32* %arrayidx6, align 4, !tbaa !3
  %idxprom7 = sext i32 %3 to i64
  %b09 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %idxprom7, i32 0, i32 0
  %7 = load float* %b09, align 4, !tbaa !0
  %8 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %idxprom7, i32 0, i32 2
  %9 = load float* %8, align 4, !tbaa !0
  %10 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %idxprom7, i32 0, i32 1
  %11 = load float* %10, align 4, !tbaa !0
  %idxprom17 = sext i32 %5 to i64
  %arraydecay = getelementptr inbounds [3 x float]* %x, i64 %idxprom17, i64 0
  %idxprom19 = sext i32 %6 to i64
  %arraydecay21 = getelementptr inbounds [3 x float]* %x, i64 %idxprom19, i64 0
  %12 = load float* %arraydecay, align 4, !tbaa !0
  %13 = load float* %arraydecay21, align 4, !tbaa !0
  %sub.i.i = fsub float %12, %13
  %arrayidx2.i.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom17, i64 1
  %14 = load float* %arrayidx2.i.i, align 4, !tbaa !0
  %arrayidx3.i.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom19, i64 1
  %15 = load float* %arrayidx3.i.i, align 4, !tbaa !0
  %sub4.i.i = fsub float %14, %15
  %arrayidx5.i.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom17, i64 2
  %16 = load float* %arrayidx5.i.i, align 4, !tbaa !0
  %arrayidx6.i.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom19, i64 2
  %17 = load float* %arrayidx6.i.i, align 4, !tbaa !0
  %sub7.i.i = fsub float %16, %17
  store float %sub.i.i, float* %arraydecay22, align 4, !tbaa !0
  store float %sub4.i.i, float* %arrayidx9.i.i, align 4, !tbaa !0
  store float %sub7.i.i, float* %arrayidx10.i.i, align 4, !tbaa !0
  %mul.i = fmul float %sub.i.i, %sub.i.i
  %mul4.i = fmul float %sub4.i.i, %sub4.i.i
  %add.i = fadd float %mul.i, %mul4.i
  %mul7.i = fmul float %sub7.i.i, %sub7.i.i
  %add8.i = fadd float %mul7.i, %add.i
  %conv26 = call float @sqrtf(float %add8.i) #3
  %sub27 = fsub float %conv26, %7
  %18 = fmul float %9, %sub27
  %mul = fsub float -0.000000e+00, %18
  %conv28 = fpext float %mul to double
  %call29 = call double @exp(double %conv28) #5
  %conv30 = fptrunc double %call29 to float
  %sub31 = fadd float %conv30, -1.000000e+00
  %fabsf = call float @fabsf(float %sub31) #6
  %19 = fpext float %fabsf to double
  %cmp34 = fcmp olt double %19, 1.200000e-38
  br i1 %cmp34, label %for.cond, label %if.end

if.end:                                           ; preds = %for.body
  %conv = fpext float %add8.i to double
  %sub36 = fsub float 1.000000e+00, %conv30
  %mul37 = fmul float %11, %sub36
  %mul39 = fmul float %9, -2.000000e+00
  %mul40 = fmul float %mul39, %conv30
  %mul41 = fmul float %mul40, %mul37
  %conv42 = fpext float %mul41 to double
  %call44 = call double @sqrt(double %conv) #5
  %div = fdiv double 1.000000e+00, %call44
  %mul45 = fmul double %conv42, %div
  %conv46 = fptrunc double %mul45 to float
  %20 = load i32* %start, align 4, !tbaa !3
  %sub47 = sub nsw i32 %5, %20
  %idxprom48 = sext i32 %sub47 to i64
  %21 = load [3 x i32]** %ishift, align 8, !tbaa !4
  %arraydecay50 = getelementptr inbounds [3 x i32]* %21, i64 %idxprom48, i64 0
  %sub52 = sub nsw i32 %6, %20
  %idxprom53 = sext i32 %sub52 to i64
  %arraydecay56 = getelementptr inbounds [3 x i32]* %21, i64 %idxprom53, i64 0
  %22 = load i32* %arraydecay50, align 4, !tbaa !3
  %23 = load i32* %arraydecay56, align 4, !tbaa !3
  %arrayidx2.i = getelementptr inbounds [3 x i32]* %21, i64 %idxprom48, i64 1
  %24 = load i32* %arrayidx2.i, align 4, !tbaa !3
  %arrayidx3.i = getelementptr inbounds [3 x i32]* %21, i64 %idxprom53, i64 1
  %25 = load i32* %arrayidx3.i, align 4, !tbaa !3
  %arrayidx5.i = getelementptr inbounds [3 x i32]* %21, i64 %idxprom48, i64 2
  %26 = load i32* %arrayidx5.i, align 4, !tbaa !3
  %arrayidx6.i = getelementptr inbounds [3 x i32]* %21, i64 %idxprom53, i64 2
  %27 = load i32* %arrayidx6.i, align 4, !tbaa !3
  %sub7.i = sub nsw i32 %26, %27
  %28 = mul i32 %sub7.i, 3
  %sub4.i = add i32 %24, 3
  %mul60 = sub i32 %sub4.i, %25
  %add62 = add i32 %mul60, %28
  %29 = mul i32 %add62, 3
  %mul64 = add i32 %22, 4
  %add66 = sub i32 %mul64, %23
  %add67 = add i32 %add66, %29
  %idxprom86 = sext i32 %add67 to i64
  %30 = load [3 x float]** %fshift, align 8, !tbaa !4
  br label %for.body71

for.body71:                                       ; preds = %for.body71.for.body71_crit_edge, %if.end
  %31 = phi float [ %sub.i.i, %if.end ], [ %.pre, %for.body71.for.body71_crit_edge ]
  %indvars.iv146 = phi i64 [ 0, %if.end ], [ %indvars.iv.next147, %for.body71.for.body71_crit_edge ]
  %mul74 = fmul float %conv46, %31
  %arrayidx78 = getelementptr inbounds [3 x float]* %f, i64 %idxprom17, i64 %indvars.iv146
  %32 = load float* %arrayidx78, align 4, !tbaa !0
  %add79 = fadd float %32, %mul74
  store float %add79, float* %arrayidx78, align 4, !tbaa !0
  %arrayidx83 = getelementptr inbounds [3 x float]* %f, i64 %idxprom19, i64 %indvars.iv146
  %33 = load float* %arrayidx83, align 4, !tbaa !0
  %sub84 = fsub float %33, %mul74
  store float %sub84, float* %arrayidx83, align 4, !tbaa !0
  %arrayidx88 = getelementptr inbounds [3 x float]* %30, i64 %idxprom86, i64 %indvars.iv146
  %34 = load float* %arrayidx88, align 4, !tbaa !0
  %add89 = fadd float %mul74, %34
  store float %add89, float* %arrayidx88, align 4, !tbaa !0
  %arrayidx93 = getelementptr inbounds [3 x float]* %30, i64 13, i64 %indvars.iv146
  %35 = load float* %arrayidx93, align 4, !tbaa !0
  %sub94 = fsub float %35, %mul74
  store float %sub94, float* %arrayidx93, align 4, !tbaa !0
  %indvars.iv.next147 = add i64 %indvars.iv146, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next147 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.cond.loopexit, label %for.body71.for.body71_crit_edge

for.body71.for.body71_crit_edge:                  ; preds = %for.body71
  %arrayidx73.phi.trans.insert = getelementptr inbounds [3 x float]* %dx, i64 0, i64 %indvars.iv.next147
  %.pre = load float* %arrayidx73.phi.trans.insert, align 4, !tbaa !0
  br label %for.body71

for.end96:                                        ; preds = %for.cond
  ret float %vtot.0.ph
}

; Function Attrs: nounwind optsize
declare double @sqrt(double) #3

; Function Attrs: nounwind optsize
declare double @exp(double) #3

; Function Attrs: nounwind optsize uwtable
define float @cubicbonds(i32 %nbonds, i32* nocapture %forceatoms, %union.t_iparams* nocapture %forceparams, [3 x float]* nocapture %x, [3 x float]* nocapture %f, %struct.t_forcerec* nocapture %fr, %struct.t_graph* nocapture %g, [3 x float]* nocapture %box, float %lambda, float* nocapture %dvdl, %struct.t_mdatoms* nocapture %md, i32 %ngrp, float* nocapture %egnb, float* nocapture %egcoul, %struct.t_fcdata* nocapture %fcd) #0 {
entry:
  %dx = alloca [3 x float], align 4
  %arraydecay23 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 0
  %arrayidx9.i.i = getelementptr inbounds [3 x float]* %dx, i64 0, i64 1
  %arrayidx10.i.i = getelementptr inbounds [3 x float]* %dx, i64 0, i64 2
  %start = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 3
  %ishift = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 7
  %fshift = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 58
  br label %for.cond.outer

for.cond.loopexit:                                ; preds = %for.body64
  %add = fadd float %mul31, %mul33
  %add39 = fadd float %vtot.0.ph, %add
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %for.cond.loopexit, %entry
  %i.0.ph = phi i32 [ 0, %entry ], [ %inc4, %for.cond.loopexit ]
  %vtot.0.ph = phi float [ 0.000000e+00, %entry ], [ %add39, %for.cond.loopexit ]
  %0 = sext i32 %i.0.ph to i64
  br label %for.cond

for.cond:                                         ; preds = %for.cond.outer, %for.body
  %indvars.iv = phi i64 [ %0, %for.cond.outer ], [ %indvars.iv.next, %for.body ]
  %i.0 = phi i32 [ %i.0.ph, %for.cond.outer ], [ %inc4, %for.body ]
  %1 = trunc i64 %indvars.iv to i32
  %cmp = icmp slt i32 %1, %nbonds
  br i1 %cmp, label %for.body, label %for.end89

for.body:                                         ; preds = %for.cond
  %2 = add nsw i64 %indvars.iv, 1
  %arrayidx = getelementptr inbounds i32* %forceatoms, i64 %indvars.iv
  %3 = load i32* %arrayidx, align 4, !tbaa !3
  %4 = add nsw i64 %indvars.iv, 2
  %arrayidx3 = getelementptr inbounds i32* %forceatoms, i64 %2
  %5 = load i32* %arrayidx3, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 3
  %inc4 = add nsw i32 %i.0, 3
  %arrayidx6 = getelementptr inbounds i32* %forceatoms, i64 %4
  %6 = load i32* %arrayidx6, align 4, !tbaa !3
  %idxprom7 = sext i32 %3 to i64
  %b09 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %idxprom7, i32 0, i32 0
  %7 = load float* %b09, align 4, !tbaa !0
  %8 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %idxprom7, i32 0, i32 1
  %9 = load float* %8, align 4, !tbaa !0
  %10 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %idxprom7, i32 0, i32 2
  %11 = load float* %10, align 4, !tbaa !0
  %idxprom18 = sext i32 %5 to i64
  %arraydecay = getelementptr inbounds [3 x float]* %x, i64 %idxprom18, i64 0
  %idxprom20 = sext i32 %6 to i64
  %arraydecay22 = getelementptr inbounds [3 x float]* %x, i64 %idxprom20, i64 0
  %12 = load float* %arraydecay, align 4, !tbaa !0
  %13 = load float* %arraydecay22, align 4, !tbaa !0
  %sub.i.i = fsub float %12, %13
  %arrayidx2.i.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom18, i64 1
  %14 = load float* %arrayidx2.i.i, align 4, !tbaa !0
  %arrayidx3.i.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom20, i64 1
  %15 = load float* %arrayidx3.i.i, align 4, !tbaa !0
  %sub4.i.i = fsub float %14, %15
  %arrayidx5.i.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom18, i64 2
  %16 = load float* %arrayidx5.i.i, align 4, !tbaa !0
  %arrayidx6.i.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom20, i64 2
  %17 = load float* %arrayidx6.i.i, align 4, !tbaa !0
  %sub7.i.i = fsub float %16, %17
  store float %sub.i.i, float* %arraydecay23, align 4, !tbaa !0
  store float %sub4.i.i, float* %arrayidx9.i.i, align 4, !tbaa !0
  store float %sub7.i.i, float* %arrayidx10.i.i, align 4, !tbaa !0
  %mul.i = fmul float %sub.i.i, %sub.i.i
  %mul4.i = fmul float %sub4.i.i, %sub4.i.i
  %add.i = fadd float %mul.i, %mul4.i
  %mul7.i = fmul float %sub7.i.i, %sub7.i.i
  %add8.i = fadd float %mul7.i, %add.i
  %conv = fpext float %add8.i to double
  %cmp26 = fcmp olt double %conv, 1.200000e-38
  br i1 %cmp26, label %for.cond, label %if.end

if.end:                                           ; preds = %for.body
  %conv30 = call float @sqrtf(float %add8.i) #3
  %sub = fsub float %conv30, %7
  %mul = fmul float %9, %sub
  %mul31 = fmul float %sub, %mul
  %mul32 = fmul float %11, %mul31
  %mul33 = fmul float %sub, %mul32
  %mul34 = fmul float %mul, 2.000000e+00
  %mul35 = fmul float %mul31, 3.000000e+00
  %mul36 = fmul float %11, %mul35
  %add37 = fadd float %mul34, %mul36
  %sub38 = fsub float -0.000000e+00, %add37
  %div = fdiv float %sub38, %conv30
  %18 = load i32* %start, align 4, !tbaa !3
  %sub40 = sub nsw i32 %5, %18
  %idxprom41 = sext i32 %sub40 to i64
  %19 = load [3 x i32]** %ishift, align 8, !tbaa !4
  %arraydecay43 = getelementptr inbounds [3 x i32]* %19, i64 %idxprom41, i64 0
  %sub45 = sub nsw i32 %6, %18
  %idxprom46 = sext i32 %sub45 to i64
  %arraydecay49 = getelementptr inbounds [3 x i32]* %19, i64 %idxprom46, i64 0
  %20 = load i32* %arraydecay43, align 4, !tbaa !3
  %21 = load i32* %arraydecay49, align 4, !tbaa !3
  %arrayidx2.i = getelementptr inbounds [3 x i32]* %19, i64 %idxprom41, i64 1
  %22 = load i32* %arrayidx2.i, align 4, !tbaa !3
  %arrayidx3.i = getelementptr inbounds [3 x i32]* %19, i64 %idxprom46, i64 1
  %23 = load i32* %arrayidx3.i, align 4, !tbaa !3
  %arrayidx5.i = getelementptr inbounds [3 x i32]* %19, i64 %idxprom41, i64 2
  %24 = load i32* %arrayidx5.i, align 4, !tbaa !3
  %arrayidx6.i = getelementptr inbounds [3 x i32]* %19, i64 %idxprom46, i64 2
  %25 = load i32* %arrayidx6.i, align 4, !tbaa !3
  %sub7.i = sub nsw i32 %24, %25
  %26 = mul i32 %sub7.i, 3
  %sub4.i = add i32 %22, 3
  %mul53 = sub i32 %sub4.i, %23
  %add55 = add i32 %mul53, %26
  %27 = mul i32 %add55, 3
  %mul57 = add i32 %20, 4
  %add59 = sub i32 %mul57, %21
  %add60 = add i32 %add59, %27
  %idxprom79 = sext i32 %add60 to i64
  %28 = load [3 x float]** %fshift, align 8, !tbaa !4
  br label %for.body64

for.body64:                                       ; preds = %for.body64.for.body64_crit_edge, %if.end
  %29 = phi float [ %sub.i.i, %if.end ], [ %.pre, %for.body64.for.body64_crit_edge ]
  %indvars.iv143 = phi i64 [ 0, %if.end ], [ %indvars.iv.next144, %for.body64.for.body64_crit_edge ]
  %mul67 = fmul float %div, %29
  %arrayidx71 = getelementptr inbounds [3 x float]* %f, i64 %idxprom18, i64 %indvars.iv143
  %30 = load float* %arrayidx71, align 4, !tbaa !0
  %add72 = fadd float %30, %mul67
  store float %add72, float* %arrayidx71, align 4, !tbaa !0
  %arrayidx76 = getelementptr inbounds [3 x float]* %f, i64 %idxprom20, i64 %indvars.iv143
  %31 = load float* %arrayidx76, align 4, !tbaa !0
  %sub77 = fsub float %31, %mul67
  store float %sub77, float* %arrayidx76, align 4, !tbaa !0
  %arrayidx81 = getelementptr inbounds [3 x float]* %28, i64 %idxprom79, i64 %indvars.iv143
  %32 = load float* %arrayidx81, align 4, !tbaa !0
  %add82 = fadd float %mul67, %32
  store float %add82, float* %arrayidx81, align 4, !tbaa !0
  %arrayidx86 = getelementptr inbounds [3 x float]* %28, i64 13, i64 %indvars.iv143
  %33 = load float* %arrayidx86, align 4, !tbaa !0
  %sub87 = fsub float %33, %mul67
  store float %sub87, float* %arrayidx86, align 4, !tbaa !0
  %indvars.iv.next144 = add i64 %indvars.iv143, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next144 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.cond.loopexit, label %for.body64.for.body64_crit_edge

for.body64.for.body64_crit_edge:                  ; preds = %for.body64
  %arrayidx66.phi.trans.insert = getelementptr inbounds [3 x float]* %dx, i64 0, i64 %indvars.iv.next144
  %.pre = load float* %arrayidx66.phi.trans.insert, align 4, !tbaa !0
  br label %for.body64

for.end89:                                        ; preds = %for.cond
  ret float %vtot.0.ph
}

; Function Attrs: nounwind optsize uwtable
define float @harmonic(float %kA, float %kB, float %xA, float %xB, float %x, float %lambda, float* nocapture %V, float* nocapture %F) #0 {
entry:
  %conv1 = fsub float 1.000000e+00, %lambda
  %mul = fmul float %conv1, %kA
  %mul2 = fmul float %kB, %lambda
  %add = fadd float %mul2, %mul
  %mul3 = fmul float %conv1, %xA
  %mul4 = fmul float %xB, %lambda
  %add5 = fadd float %mul4, %mul3
  %sub6 = fsub float %x, %add5
  %mul7 = fmul float %sub6, %sub6
  %0 = fmul float %add, %sub6
  %mul9 = fsub float -0.000000e+00, %0
  %mul10 = fmul float %add, 5.000000e-01
  %mul11 = fmul float %mul10, %mul7
  %sub12 = fsub float %kB, %kA
  %mul13 = fmul float %sub12, 5.000000e-01
  %mul14 = fmul float %mul13, %mul7
  %sub15 = fsub float %xA, %xB
  %mul16 = fmul float %sub15, %add
  %mul17 = fmul float %mul16, %sub6
  %add18 = fadd float %mul17, %mul14
  store float %mul9, float* %F, align 4, !tbaa !0
  store float %mul11, float* %V, align 4, !tbaa !0
  ret float %add18
}

; Function Attrs: nounwind optsize uwtable
define float @bonds(i32 %nbonds, i32* nocapture %forceatoms, %union.t_iparams* nocapture %forceparams, [3 x float]* nocapture %x, [3 x float]* nocapture %f, %struct.t_forcerec* nocapture %fr, %struct.t_graph* nocapture %g, [3 x float]* nocapture %box, float %lambda, float* nocapture %dvdlambda, %struct.t_mdatoms* nocapture %md, i32 %ngrp, float* nocapture %egnb, float* nocapture %egcoul, %struct.t_fcdata* nocapture %fcd) #0 {
entry:
  %dx = alloca [3 x float], align 4
  %arraydecay12 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 0
  %arrayidx9.i.i = getelementptr inbounds [3 x float]* %dx, i64 0, i64 1
  %arrayidx10.i.i = getelementptr inbounds [3 x float]* %dx, i64 0, i64 2
  %conv1.i = fsub float 1.000000e+00, %lambda
  %start = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 3
  %ishift = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 7
  %fshift = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 58
  br label %for.cond.outer

for.cond.loopexit:                                ; preds = %for.body60
  %mul10.i = fmul float %add.i, 5.000000e-01
  %mul11.i = fmul float %mul10.i, %mul7.i
  %add32 = fadd float %vtot.0.ph, %mul11.i
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %for.cond.loopexit, %entry
  %i.0.ph = phi i32 [ 0, %entry ], [ %inc4, %for.cond.loopexit ]
  %vtot.0.ph = phi float [ 0.000000e+00, %entry ], [ %add32, %for.cond.loopexit ]
  %0 = sext i32 %i.0.ph to i64
  br label %for.cond

for.cond:                                         ; preds = %for.cond.outer, %for.body
  %indvars.iv = phi i64 [ %0, %for.cond.outer ], [ %indvars.iv.next, %for.body ]
  %i.0 = phi i32 [ %i.0.ph, %for.cond.outer ], [ %inc4, %for.body ]
  %1 = trunc i64 %indvars.iv to i32
  %cmp = icmp slt i32 %1, %nbonds
  br i1 %cmp, label %for.body, label %for.end85

for.body:                                         ; preds = %for.cond
  %2 = add nsw i64 %indvars.iv, 1
  %arrayidx = getelementptr inbounds i32* %forceatoms, i64 %indvars.iv
  %3 = load i32* %arrayidx, align 4, !tbaa !3
  %4 = add nsw i64 %indvars.iv, 2
  %arrayidx3 = getelementptr inbounds i32* %forceatoms, i64 %2
  %5 = load i32* %arrayidx3, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 3
  %inc4 = add nsw i32 %i.0, 3
  %arrayidx6 = getelementptr inbounds i32* %forceatoms, i64 %4
  %6 = load i32* %arrayidx6, align 4, !tbaa !3
  %idxprom7 = sext i32 %5 to i64
  %arraydecay = getelementptr inbounds [3 x float]* %x, i64 %idxprom7, i64 0
  %idxprom9 = sext i32 %6 to i64
  %arraydecay11 = getelementptr inbounds [3 x float]* %x, i64 %idxprom9, i64 0
  %7 = load float* %arraydecay, align 4, !tbaa !0
  %8 = load float* %arraydecay11, align 4, !tbaa !0
  %sub.i.i = fsub float %7, %8
  %arrayidx2.i.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom7, i64 1
  %9 = load float* %arrayidx2.i.i, align 4, !tbaa !0
  %arrayidx3.i.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom9, i64 1
  %10 = load float* %arrayidx3.i.i, align 4, !tbaa !0
  %sub4.i.i = fsub float %9, %10
  %arrayidx5.i.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom7, i64 2
  %11 = load float* %arrayidx5.i.i, align 4, !tbaa !0
  %arrayidx6.i.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom9, i64 2
  %12 = load float* %arrayidx6.i.i, align 4, !tbaa !0
  %sub7.i.i = fsub float %11, %12
  store float %sub.i.i, float* %arraydecay12, align 4, !tbaa !0
  store float %sub4.i.i, float* %arrayidx9.i.i, align 4, !tbaa !0
  store float %sub7.i.i, float* %arrayidx10.i.i, align 4, !tbaa !0
  %mul.i119 = fmul float %sub.i.i, %sub.i.i
  %mul4.i122 = fmul float %sub4.i.i, %sub4.i.i
  %add.i123 = fadd float %mul.i119, %mul4.i122
  %mul7.i126 = fmul float %sub7.i.i, %sub7.i.i
  %add8.i = fadd float %mul7.i126, %add.i123
  %conv = fpext float %add8.i to double
  %conv16 = call float @sqrtf(float %add8.i) #3
  %idxprom17 = sext i32 %3 to i64
  %13 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %idxprom17, i32 0, i32 1
  %14 = load float* %13, align 4, !tbaa !0
  %15 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %idxprom17, i32 0, i32 3
  %16 = load float* %15, align 4, !tbaa !0
  %rA = getelementptr inbounds %union.t_iparams* %forceparams, i64 %idxprom17, i32 0, i32 0
  %17 = load float* %rA, align 4, !tbaa !0
  %18 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %idxprom17, i32 0, i32 2
  %19 = load float* %18, align 4, !tbaa !0
  %mul.i = fmul float %conv1.i, %14
  %mul2.i = fmul float %16, %lambda
  %add.i = fadd float %mul.i, %mul2.i
  %mul3.i = fmul float %conv1.i, %17
  %mul4.i = fmul float %19, %lambda
  %add5.i = fadd float %mul3.i, %mul4.i
  %sub6.i = fsub float %conv16, %add5.i
  %mul7.i = fmul float %sub6.i, %sub6.i
  %sub12.i = fsub float %16, %14
  %mul13.i = fmul float %sub12.i, 5.000000e-01
  %mul14.i = fmul float %mul13.i, %mul7.i
  %sub15.i = fsub float %17, %19
  %mul16.i = fmul float %add.i, %sub15.i
  %mul17.i = fmul float %mul16.i, %sub6.i
  %add18.i = fadd float %mul17.i, %mul14.i
  %20 = load float* %dvdlambda, align 4, !tbaa !0
  %add = fadd float %20, %add18.i
  store float %add, float* %dvdlambda, align 4, !tbaa !0
  %cmp30 = fcmp olt double %conv, 1.200000e-38
  br i1 %cmp30, label %for.cond, label %if.end

if.end:                                           ; preds = %for.body
  %21 = fmul float %add.i, %sub6.i
  %mul9.i = fsub float -0.000000e+00, %21
  %call34 = call double @sqrt(double %conv) #5
  %div = fdiv double 1.000000e+00, %call34
  %conv35 = fpext float %mul9.i to double
  %mul = fmul double %conv35, %div
  %conv36 = fptrunc double %mul to float
  %22 = load i32* %start, align 4, !tbaa !3
  %sub = sub nsw i32 %5, %22
  %idxprom37 = sext i32 %sub to i64
  %23 = load [3 x i32]** %ishift, align 8, !tbaa !4
  %arraydecay39 = getelementptr inbounds [3 x i32]* %23, i64 %idxprom37, i64 0
  %sub41 = sub nsw i32 %6, %22
  %idxprom42 = sext i32 %sub41 to i64
  %arraydecay45 = getelementptr inbounds [3 x i32]* %23, i64 %idxprom42, i64 0
  %24 = load i32* %arraydecay39, align 4, !tbaa !3
  %25 = load i32* %arraydecay45, align 4, !tbaa !3
  %arrayidx2.i = getelementptr inbounds [3 x i32]* %23, i64 %idxprom37, i64 1
  %26 = load i32* %arrayidx2.i, align 4, !tbaa !3
  %arrayidx3.i = getelementptr inbounds [3 x i32]* %23, i64 %idxprom42, i64 1
  %27 = load i32* %arrayidx3.i, align 4, !tbaa !3
  %arrayidx5.i = getelementptr inbounds [3 x i32]* %23, i64 %idxprom37, i64 2
  %28 = load i32* %arrayidx5.i, align 4, !tbaa !3
  %arrayidx6.i = getelementptr inbounds [3 x i32]* %23, i64 %idxprom42, i64 2
  %29 = load i32* %arrayidx6.i, align 4, !tbaa !3
  %sub7.i = sub nsw i32 %28, %29
  %30 = mul i32 %sub7.i, 3
  %sub4.i = add i32 %26, 3
  %mul49 = sub i32 %sub4.i, %27
  %add51 = add i32 %mul49, %30
  %31 = mul i32 %add51, 3
  %mul53 = add i32 %24, 4
  %add55 = sub i32 %mul53, %25
  %add56 = add i32 %add55, %31
  %idxprom75 = sext i32 %add56 to i64
  %32 = load [3 x float]** %fshift, align 8, !tbaa !4
  br label %for.body60

for.body60:                                       ; preds = %for.body60.for.body60_crit_edge, %if.end
  %33 = phi float [ %sub.i.i, %if.end ], [ %.pre, %for.body60.for.body60_crit_edge ]
  %indvars.iv134 = phi i64 [ 0, %if.end ], [ %indvars.iv.next135, %for.body60.for.body60_crit_edge ]
  %mul63 = fmul float %conv36, %33
  %arrayidx67 = getelementptr inbounds [3 x float]* %f, i64 %idxprom7, i64 %indvars.iv134
  %34 = load float* %arrayidx67, align 4, !tbaa !0
  %add68 = fadd float %34, %mul63
  store float %add68, float* %arrayidx67, align 4, !tbaa !0
  %arrayidx72 = getelementptr inbounds [3 x float]* %f, i64 %idxprom9, i64 %indvars.iv134
  %35 = load float* %arrayidx72, align 4, !tbaa !0
  %sub73 = fsub float %35, %mul63
  store float %sub73, float* %arrayidx72, align 4, !tbaa !0
  %arrayidx77 = getelementptr inbounds [3 x float]* %32, i64 %idxprom75, i64 %indvars.iv134
  %36 = load float* %arrayidx77, align 4, !tbaa !0
  %add78 = fadd float %mul63, %36
  store float %add78, float* %arrayidx77, align 4, !tbaa !0
  %arrayidx82 = getelementptr inbounds [3 x float]* %32, i64 13, i64 %indvars.iv134
  %37 = load float* %arrayidx82, align 4, !tbaa !0
  %sub83 = fsub float %37, %mul63
  store float %sub83, float* %arrayidx82, align 4, !tbaa !0
  %indvars.iv.next135 = add i64 %indvars.iv134, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next135 to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.cond.loopexit, label %for.body60.for.body60_crit_edge

for.body60.for.body60_crit_edge:                  ; preds = %for.body60
  %arrayidx62.phi.trans.insert = getelementptr inbounds [3 x float]* %dx, i64 0, i64 %indvars.iv.next135
  %.pre = load float* %arrayidx62.phi.trans.insert, align 4, !tbaa !0
  br label %for.body60

for.end85:                                        ; preds = %for.cond
  ret float %vtot.0.ph
}

; Function Attrs: nounwind optsize uwtable
define float @water_pol(i32 %nbonds, i32* nocapture %forceatoms, %union.t_iparams* nocapture %forceparams, [3 x float]* nocapture %x, [3 x float]* nocapture %f, %struct.t_forcerec* nocapture %fr, %struct.t_graph* nocapture %g, [3 x float]* nocapture %box, float %lambda, float* nocapture %dvdlambda, %struct.t_mdatoms* nocapture %md, i32 %ngrp, float* nocapture %egnb, float* nocapture %egcoul, %struct.t_fcdata* nocapture %fcd) #0 {
entry:
  %dHH = alloca [3 x float], align 4
  %dOD = alloca [3 x float], align 4
  %dDS = alloca [3 x float], align 4
  %nW = alloca [3 x float], align 4
  %proj = alloca [3 x float], align 4
  %cmp = icmp sgt i32 %nbonds, 0
  br i1 %cmp, label %if.then, label %if.end197

if.then:                                          ; preds = %entry
  %0 = load i32* %forceatoms, align 4, !tbaa !3
  %idxprom = sext i32 %0 to i64
  %kx = getelementptr inbounds %union.t_iparams* %forceparams, i64 %idxprom, i32 0, i32 0
  %1 = load float* %kx, align 4, !tbaa !0
  %ky = getelementptr inbounds %union.t_iparams* %forceparams, i64 %idxprom, i32 0, i32 1
  %2 = load float* %ky, align 4, !tbaa !0
  %kz = getelementptr inbounds %union.t_iparams* %forceparams, i64 %idxprom, i32 0, i32 2
  %3 = load float* %kz, align 4, !tbaa !0
  %rHH = getelementptr inbounds %union.t_iparams* %forceparams, i64 %idxprom, i32 0, i32 4
  %4 = load float* %rHH, align 4, !tbaa !0
  %conv14 = fdiv float 1.000000e+00, %4
  %5 = load %struct._IO_FILE** @debug, align 8, !tbaa !4
  %tobool = icmp eq %struct._IO_FILE* %5, null
  br i1 %tobool, label %for.body.lr.ph, label %if.then21

if.then21:                                        ; preds = %if.then
  %rOD = getelementptr inbounds %union.t_iparams* %forceparams, i64 %idxprom, i32 0, i32 5
  %conv23 = fpext float %1 to double
  %conv25 = fpext float %2 to double
  %conv27 = fpext float %3 to double
  %call = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([48 x i8]* @.str2, i64 0, i64 0), double %conv23, double %conv25, double %conv27) #5
  %6 = load %struct._IO_FILE** @debug, align 8, !tbaa !4
  %rOH = getelementptr inbounds %union.t_iparams* %forceparams, i64 %idxprom, i32 0, i32 3
  %7 = load float* %rOH, align 4, !tbaa !0
  %conv31 = fpext float %7 to double
  %8 = load float* %rHH, align 4, !tbaa !0
  %conv36 = fpext float %8 to double
  %9 = load float* %rOD, align 4, !tbaa !0
  %conv41 = fpext float %9 to double
  %call42 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([48 x i8]* @.str3, i64 0, i64 0), double %conv31, double %conv36, double %conv41) #5
  br label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.then21, %if.then
  %arraydecay72 = getelementptr inbounds [3 x float]* %dHH, i64 0, i64 0
  %arrayidx9.i358 = getelementptr inbounds [3 x float]* %dHH, i64 0, i64 1
  %arrayidx10.i359 = getelementptr inbounds [3 x float]* %dHH, i64 0, i64 2
  %arraydecay79 = getelementptr inbounds [3 x float]* %dOD, i64 0, i64 0
  %arrayidx9.i349 = getelementptr inbounds [3 x float]* %dOD, i64 0, i64 1
  %arrayidx10.i350 = getelementptr inbounds [3 x float]* %dOD, i64 0, i64 2
  %arraydecay86 = getelementptr inbounds [3 x float]* %dDS, i64 0, i64 0
  %arrayidx9.i340 = getelementptr inbounds [3 x float]* %dDS, i64 0, i64 1
  %arrayidx10.i341 = getelementptr inbounds [3 x float]* %dDS, i64 0, i64 2
  %arraydecay89 = getelementptr inbounds [3 x float]* %nW, i64 0, i64 0
  %arrayidx13.i = getelementptr inbounds [3 x float]* %nW, i64 0, i64 1
  %arrayidx21.i = getelementptr inbounds [3 x float]* %nW, i64 0, i64 2
  %arraydecay126 = getelementptr inbounds [3 x float]* %proj, i64 0, i64 0
  %arrayidx2.i276 = getelementptr inbounds [3 x float]* %proj, i64 0, i64 1
  %arrayidx5.i280 = getelementptr inbounds [3 x float]* %proj, i64 0, i64 2
  br label %for.body

for.cond.loopexit:                                ; preds = %for.body167
  %indvars.iv.next398 = add i64 %indvars.iv397, 2
  %add163 = fadd float %vtot.0387, %add8.i
  %10 = trunc i64 %indvars.iv.next398 to i32
  %cmp43 = icmp slt i32 %10, %nbonds
  br i1 %cmp43, label %for.body, label %if.end197

for.body:                                         ; preds = %for.body.lr.ph, %for.cond.loopexit
  %indvars.iv397 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next398, %for.cond.loopexit ]
  %vtot.0387 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %add163, %for.cond.loopexit ]
  %11 = or i64 %indvars.iv397, 1
  %arrayidx49 = getelementptr inbounds i32* %forceatoms, i64 %11
  %12 = load i32* %arrayidx49, align 4, !tbaa !3
  %add = add nsw i32 %12, 1
  %add50 = add nsw i32 %12, 2
  %add51 = add nsw i32 %12, 3
  %add52 = add nsw i32 %12, 4
  %idxprom53 = sext i32 %add to i64
  %arraydecay = getelementptr inbounds [3 x float]* %x, i64 %idxprom53, i64 0
  %idxprom55 = sext i32 %12 to i64
  %arraydecay57 = getelementptr inbounds [3 x float]* %x, i64 %idxprom55, i64 0
  %13 = load float* %arraydecay, align 4, !tbaa !0
  %14 = load float* %arraydecay57, align 4, !tbaa !0
  %sub.i = fsub float %13, %14
  %arrayidx2.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom53, i64 1
  %15 = load float* %arrayidx2.i, align 4, !tbaa !0
  %arrayidx3.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom55, i64 1
  %16 = load float* %arrayidx3.i, align 4, !tbaa !0
  %sub4.i = fsub float %15, %16
  %arrayidx5.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom53, i64 2
  %17 = load float* %arrayidx5.i, align 4, !tbaa !0
  %arrayidx6.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom55, i64 2
  %18 = load float* %arrayidx6.i, align 4, !tbaa !0
  %sub7.i = fsub float %17, %18
  %idxprom59 = sext i32 %add50 to i64
  %arraydecay61 = getelementptr inbounds [3 x float]* %x, i64 %idxprom59, i64 0
  %19 = load float* %arraydecay61, align 4, !tbaa !0
  %sub.i360 = fsub float %19, %14
  %arrayidx2.i361 = getelementptr inbounds [3 x float]* %x, i64 %idxprom59, i64 1
  %20 = load float* %arrayidx2.i361, align 4, !tbaa !0
  %sub4.i363 = fsub float %20, %16
  %arrayidx5.i364 = getelementptr inbounds [3 x float]* %x, i64 %idxprom59, i64 2
  %21 = load float* %arrayidx5.i364, align 4, !tbaa !0
  %sub7.i366 = fsub float %21, %18
  %sub.i351 = fsub float %19, %13
  %sub4.i354 = fsub float %20, %15
  %sub7.i357 = fsub float %21, %17
  %idxprom73 = sext i32 %add51 to i64
  %arraydecay75 = getelementptr inbounds [3 x float]* %x, i64 %idxprom73, i64 0
  %22 = load float* %arraydecay75, align 4, !tbaa !0
  %sub.i342 = fsub float %22, %14
  %arrayidx2.i343 = getelementptr inbounds [3 x float]* %x, i64 %idxprom73, i64 1
  %23 = load float* %arrayidx2.i343, align 4, !tbaa !0
  %sub4.i345 = fsub float %23, %16
  %arrayidx5.i346 = getelementptr inbounds [3 x float]* %x, i64 %idxprom73, i64 2
  %24 = load float* %arrayidx5.i346, align 4, !tbaa !0
  %sub7.i348 = fsub float %24, %18
  %idxprom80 = sext i32 %add52 to i64
  %arraydecay82 = getelementptr inbounds [3 x float]* %x, i64 %idxprom80, i64 0
  %25 = load float* %arraydecay82, align 4, !tbaa !0
  %sub.i333 = fsub float %25, %22
  %arrayidx2.i334 = getelementptr inbounds [3 x float]* %x, i64 %idxprom80, i64 1
  %26 = load float* %arrayidx2.i334, align 4, !tbaa !0
  %sub4.i336 = fsub float %26, %23
  %arrayidx5.i337 = getelementptr inbounds [3 x float]* %x, i64 %idxprom80, i64 2
  %27 = load float* %arrayidx5.i337, align 4, !tbaa !0
  %sub7.i339 = fsub float %27, %24
  store float %sub.i333, float* %arraydecay86, align 4, !tbaa !0
  store float %sub4.i336, float* %arrayidx9.i340, align 4, !tbaa !0
  store float %sub7.i339, float* %arrayidx10.i341, align 4, !tbaa !0
  %mul.i328 = fmul float %sub4.i, %sub7.i366
  %mul4.i331 = fmul float %sub7.i, %sub4.i363
  %sub.i332 = fsub float %mul.i328, %mul4.i331
  %mul8.i = fmul float %sub7.i, %sub.i360
  %mul11.i = fmul float %sub.i, %sub7.i366
  %sub12.i = fsub float %mul8.i, %mul11.i
  %mul16.i = fmul float %sub.i, %sub4.i363
  %mul19.i = fmul float %sub4.i, %sub.i360
  %sub20.i = fsub float %mul16.i, %mul19.i
  %mul.i319 = fmul float %sub.i332, %sub.i332
  %mul4.i322 = fmul float %sub12.i, %sub12.i
  %add.i323 = fadd float %mul.i319, %mul4.i322
  %mul7.i326 = fmul float %sub20.i, %sub20.i
  %add8.i327 = fadd float %mul7.i326, %add.i323
  %conv93 = fpext float %add8.i327 to double
  %call94 = call double @sqrt(double %conv93) #5
  %div95 = fdiv double 1.000000e+00, %call94
  %conv96 = fptrunc double %div95 to float
  %mul.i310 = fmul float %sub.i342, %sub.i342
  %mul4.i313 = fmul float %sub4.i345, %sub4.i345
  %add.i314 = fadd float %mul.i310, %mul4.i313
  %mul7.i317 = fmul float %sub7.i348, %sub7.i348
  %add8.i318 = fadd float %add.i314, %mul7.i317
  %conv100 = fpext float %add8.i318 to double
  %call101 = call double @sqrt(double %conv100) #5
  %div102 = fdiv double 1.000000e+00, %call101
  %conv103 = fptrunc double %div102 to float
  %mul.i303 = fmul float %conv96, %sub.i332
  store float %mul.i303, float* %arraydecay89, align 4, !tbaa !0
  %mul3.i305 = fmul float %conv96, %sub12.i
  store float %mul3.i305, float* %arrayidx13.i, align 4, !tbaa !0
  %mul6.i308 = fmul float %conv96, %sub20.i
  store float %mul6.i308, float* %arrayidx21.i, align 4, !tbaa !0
  %mul.i296 = fmul float %conv14, %sub.i351
  store float %mul.i296, float* %arraydecay72, align 4, !tbaa !0
  %mul3.i298 = fmul float %conv14, %sub4.i354
  store float %mul3.i298, float* %arrayidx9.i358, align 4, !tbaa !0
  %mul6.i301 = fmul float %conv14, %sub7.i357
  store float %mul6.i301, float* %arrayidx10.i359, align 4, !tbaa !0
  %mul.i293 = fmul float %conv103, %sub.i342
  store float %mul.i293, float* %arraydecay79, align 4, !tbaa !0
  %mul3.i = fmul float %conv103, %sub4.i345
  store float %mul3.i, float* %arrayidx9.i349, align 4, !tbaa !0
  %mul6.i = fmul float %conv103, %sub7.i348
  store float %mul6.i, float* %arrayidx10.i350, align 4, !tbaa !0
  %mul.i284 = fmul float %sub.i333, %mul.i293
  %mul4.i287 = fmul float %sub4.i336, %mul3.i
  %add.i288 = fadd float %mul.i284, %mul4.i287
  %mul7.i291 = fmul float %mul6.i, %sub7.i339
  %add8.i292 = fadd float %add.i288, %mul7.i291
  br label %for.body117

for.body117:                                      ; preds = %for.body117.for.body117_crit_edge, %for.body
  %28 = phi float [ %mul.i293, %for.body ], [ %.pre400, %for.body117.for.body117_crit_edge ]
  %29 = phi float [ %sub.i333, %for.body ], [ %.pre, %for.body117.for.body117_crit_edge ]
  %indvars.iv = phi i64 [ 0, %for.body ], [ %indvars.iv.next, %for.body117.for.body117_crit_edge ]
  %mul = fmul float %add8.i292, %28
  %sub = fsub float %29, %mul
  %arrayidx124 = getelementptr inbounds [3 x float]* %proj, i64 0, i64 %indvars.iv
  store float %sub, float* %arrayidx124, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end, label %for.body117.for.body117_crit_edge

for.body117.for.body117_crit_edge:                ; preds = %for.body117
  %arrayidx119.phi.trans.insert = getelementptr inbounds [3 x float]* %dDS, i64 0, i64 %indvars.iv.next
  %.pre = load float* %arrayidx119.phi.trans.insert, align 4, !tbaa !0
  %arrayidx122.phi.trans.insert = getelementptr inbounds [3 x float]* %dOD, i64 0, i64 %indvars.iv.next
  %.pre400 = load float* %arrayidx122.phi.trans.insert, align 4, !tbaa !0
  br label %for.body117

for.end:                                          ; preds = %for.body117
  %30 = load float* %arraydecay126, align 4, !tbaa !0
  %mul.i275 = fmul float %30, %mul.i303
  %31 = load float* %arrayidx2.i276, align 4, !tbaa !0
  %mul4.i278 = fmul float %31, %mul3.i305
  %add.i279 = fadd float %mul.i275, %mul4.i278
  %32 = load float* %arrayidx5.i280, align 4, !tbaa !0
  %mul7.i282 = fmul float %32, %mul6.i308
  %add8.i283 = fadd float %add.i279, %mul7.i282
  br label %for.body133

for.body133:                                      ; preds = %for.body133.for.body133_crit_edge, %for.end
  %33 = phi float [ %30, %for.end ], [ %.pre402, %for.body133.for.body133_crit_edge ]
  %34 = phi float [ %mul.i303, %for.end ], [ %.pre401, %for.body133.for.body133_crit_edge ]
  %indvars.iv389 = phi i64 [ 0, %for.end ], [ %indvars.iv.next390, %for.body133.for.body133_crit_edge ]
  %mul137 = fmul float %add8.i283, %34
  %arrayidx139 = getelementptr inbounds [3 x float]* %proj, i64 0, i64 %indvars.iv389
  %sub140 = fsub float %33, %mul137
  store float %sub140, float* %arrayidx139, align 4, !tbaa !0
  %indvars.iv.next390 = add i64 %indvars.iv389, 1
  %lftr.wideiv391 = trunc i64 %indvars.iv.next390 to i32
  %exitcond392 = icmp eq i32 %lftr.wideiv391, 3
  br i1 %exitcond392, label %for.end143, label %for.body133.for.body133_crit_edge

for.body133.for.body133_crit_edge:                ; preds = %for.body133
  %arrayidx136.phi.trans.insert = getelementptr inbounds [3 x float]* %nW, i64 0, i64 %indvars.iv.next390
  %.pre401 = load float* %arrayidx136.phi.trans.insert, align 4, !tbaa !0
  %arrayidx139.phi.trans.insert = getelementptr inbounds [3 x float]* %proj, i64 0, i64 %indvars.iv.next390
  %.pre402 = load float* %arrayidx139.phi.trans.insert, align 4, !tbaa !0
  br label %for.body133

for.end143:                                       ; preds = %for.body133
  %35 = load float* %arraydecay126, align 4, !tbaa !0
  %mul.i266 = fmul float %35, %mul.i296
  %36 = load float* %arrayidx2.i276, align 4, !tbaa !0
  %mul4.i269 = fmul float %36, %mul3.i298
  %add.i270 = fadd float %mul.i266, %mul4.i269
  %37 = load float* %arrayidx5.i280, align 4, !tbaa !0
  %mul7.i273 = fmul float %37, %mul6.i301
  %add8.i274 = fadd float %add.i270, %mul7.i273
  %mul150 = fmul float %1, %add8.i283
  %mul154 = fmul float %2, %add8.i274
  %mul158 = fmul float %3, %add8.i292
  %mul.i = fmul float %add8.i283, %mul150
  %mul4.i = fmul float %add8.i274, %mul154
  %add.i = fadd float %mul.i, %mul4.i
  %mul7.i = fmul float %add8.i292, %mul158
  %add8.i = fadd float %mul7.i, %add.i
  br label %for.body167

for.body167:                                      ; preds = %for.body167.for.body167_crit_edge, %for.end143
  %38 = phi float [ %mul.i293, %for.end143 ], [ %.pre405, %for.body167.for.body167_crit_edge ]
  %39 = phi float [ %mul.i296, %for.end143 ], [ %.pre404, %for.body167.for.body167_crit_edge ]
  %40 = phi float [ %mul.i303, %for.end143 ], [ %.pre403, %for.body167.for.body167_crit_edge ]
  %indvars.iv393 = phi i64 [ 0, %for.end143 ], [ %indvars.iv.next394, %for.body167.for.body167_crit_edge ]
  %mul171 = fmul float %mul150, %40
  %mul175 = fmul float %mul154, %39
  %mul179 = fmul float %mul158, %38
  %sub180 = fsub float -0.000000e+00, %mul171
  %sub181 = fsub float %sub180, %mul175
  %sub182 = fsub float %sub181, %mul179
  %arrayidx186 = getelementptr inbounds [3 x float]* %f, i64 %idxprom80, i64 %indvars.iv393
  %41 = load float* %arrayidx186, align 4, !tbaa !0
  %add187 = fadd float %41, %sub182
  store float %add187, float* %arrayidx186, align 4, !tbaa !0
  %arrayidx191 = getelementptr inbounds [3 x float]* %f, i64 %idxprom73, i64 %indvars.iv393
  %42 = load float* %arrayidx191, align 4, !tbaa !0
  %sub192 = fsub float %42, %sub182
  store float %sub192, float* %arrayidx191, align 4, !tbaa !0
  %indvars.iv.next394 = add i64 %indvars.iv393, 1
  %lftr.wideiv395 = trunc i64 %indvars.iv.next394 to i32
  %exitcond396 = icmp eq i32 %lftr.wideiv395, 3
  br i1 %exitcond396, label %for.cond.loopexit, label %for.body167.for.body167_crit_edge

for.body167.for.body167_crit_edge:                ; preds = %for.body167
  %arrayidx169.phi.trans.insert = getelementptr inbounds [3 x float]* %nW, i64 0, i64 %indvars.iv.next394
  %.pre403 = load float* %arrayidx169.phi.trans.insert, align 4, !tbaa !0
  %arrayidx173.phi.trans.insert = getelementptr inbounds [3 x float]* %dHH, i64 0, i64 %indvars.iv.next394
  %.pre404 = load float* %arrayidx173.phi.trans.insert, align 4, !tbaa !0
  %arrayidx177.phi.trans.insert = getelementptr inbounds [3 x float]* %dOD, i64 0, i64 %indvars.iv.next394
  %.pre405 = load float* %arrayidx177.phi.trans.insert, align 4, !tbaa !0
  br label %for.body167

if.end197:                                        ; preds = %for.cond.loopexit, %entry
  %vtot.1 = phi float [ 0.000000e+00, %entry ], [ %add163, %for.cond.loopexit ]
  %conv200 = fmul float %vtot.1, 5.000000e-01
  ret float %conv200
}

; Function Attrs: nounwind optsize uwtable
define float @bond_angle([3 x float]* nocapture %box, float* nocapture %xi, float* nocapture %xj, float* nocapture %xk, float* nocapture %r_ij, float* nocapture %r_kj, float* nocapture %costh) #0 {
entry:
  %0 = load float* %xi, align 4, !tbaa !0
  %1 = load float* %xj, align 4, !tbaa !0
  %sub.i.i = fsub float %0, %1
  %arrayidx2.i.i = getelementptr inbounds float* %xi, i64 1
  %2 = load float* %arrayidx2.i.i, align 4, !tbaa !0
  %arrayidx3.i.i = getelementptr inbounds float* %xj, i64 1
  %3 = load float* %arrayidx3.i.i, align 4, !tbaa !0
  %sub4.i.i = fsub float %2, %3
  %arrayidx5.i.i = getelementptr inbounds float* %xi, i64 2
  %4 = load float* %arrayidx5.i.i, align 4, !tbaa !0
  %arrayidx6.i.i = getelementptr inbounds float* %xj, i64 2
  %5 = load float* %arrayidx6.i.i, align 4, !tbaa !0
  %sub7.i.i = fsub float %4, %5
  store float %sub.i.i, float* %r_ij, align 4, !tbaa !0
  %arrayidx9.i.i = getelementptr inbounds float* %r_ij, i64 1
  store float %sub4.i.i, float* %arrayidx9.i.i, align 4, !tbaa !0
  %arrayidx10.i.i = getelementptr inbounds float* %r_ij, i64 2
  store float %sub7.i.i, float* %arrayidx10.i.i, align 4, !tbaa !0
  %6 = load float* %xk, align 4, !tbaa !0
  %7 = load float* %xj, align 4, !tbaa !0
  %sub.i.i7 = fsub float %6, %7
  %arrayidx2.i.i8 = getelementptr inbounds float* %xk, i64 1
  %8 = load float* %arrayidx2.i.i8, align 4, !tbaa !0
  %9 = load float* %arrayidx3.i.i, align 4, !tbaa !0
  %sub4.i.i10 = fsub float %8, %9
  %arrayidx5.i.i11 = getelementptr inbounds float* %xk, i64 2
  %10 = load float* %arrayidx5.i.i11, align 4, !tbaa !0
  %11 = load float* %arrayidx6.i.i, align 4, !tbaa !0
  %sub7.i.i13 = fsub float %10, %11
  store float %sub.i.i7, float* %r_kj, align 4, !tbaa !0
  %arrayidx9.i.i14 = getelementptr inbounds float* %r_kj, i64 1
  store float %sub4.i.i10, float* %arrayidx9.i.i14, align 4, !tbaa !0
  %arrayidx10.i.i15 = getelementptr inbounds float* %r_kj, i64 2
  store float %sub7.i.i13, float* %arrayidx10.i.i15, align 4, !tbaa !0
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %12 = phi float [ %sub.i.i7, %entry ], [ %.pre, %for.body.i.for.body.i_crit_edge ]
  %indvars.iv.i = phi i64 [ 0, %entry ], [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ]
  %ipb.034.i = phi double [ 0.000000e+00, %entry ], [ %add7.i, %for.body.i.for.body.i_crit_edge ]
  %ipa.033.i = phi double [ 0.000000e+00, %entry ], [ %add5.i, %for.body.i.for.body.i_crit_edge ]
  %ip.032.i = phi double [ 0.000000e+00, %entry ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr inbounds float* %r_ij, i64 %indvars.iv.i
  %13 = load float* %arrayidx.i, align 4, !tbaa !0
  %conv.i = fpext float %13 to double
  %conv3.i = fpext float %12 to double
  %mul.i = fmul double %conv.i, %conv3.i
  %add.i = fadd double %ip.032.i, %mul.i
  %mul4.i = fmul double %conv.i, %conv.i
  %add5.i = fadd double %ipa.033.i, %mul4.i
  %mul6.i = fmul double %conv3.i, %conv3.i
  %add7.i = fadd double %ipb.034.i, %mul6.i
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  %arrayidx2.i.phi.trans.insert = getelementptr inbounds float* %r_kj, i64 %indvars.iv.next.i
  %.pre = load float* %arrayidx2.i.phi.trans.insert, align 4, !tbaa !0
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %mul8.i = fmul double %add5.i, %add7.i
  %call.i = tail call double @sqrt(double %mul8.i) #5
  %div.i = fdiv double 1.000000e+00, %call.i
  %mul9.i = fmul double %add.i, %div.i
  %conv10.i = fptrunc double %mul9.i to float
  %cmp12.i = fcmp ogt float %conv10.i, 1.000000e+00
  br i1 %cmp12.i, label %cos_angle.exit, label %if.end.i

if.end.i:                                         ; preds = %for.end.i
  %cmp15.i = fcmp olt float %conv10.i, -1.000000e+00
  %.conv10.i = select i1 %cmp15.i, float -1.000000e+00, float %conv10.i
  br label %cos_angle.exit

cos_angle.exit:                                   ; preds = %for.end.i, %if.end.i
  %retval.0.i = phi float [ 1.000000e+00, %for.end.i ], [ %.conv10.i, %if.end.i ]
  store float %retval.0.i, float* %costh, align 4, !tbaa !0
  %conv = fpext float %retval.0.i to double
  %call1 = tail call double @acos(double %conv) #5
  %conv2 = fptrunc double %call1 to float
  ret float %conv2
}

; Function Attrs: nounwind optsize
declare double @acos(double) #3

; Function Attrs: nounwind optsize uwtable
define float @angles(i32 %nbonds, i32* nocapture %forceatoms, %union.t_iparams* nocapture %forceparams, [3 x float]* nocapture %x, [3 x float]* nocapture %f, %struct.t_forcerec* nocapture %fr, %struct.t_graph* nocapture %g, [3 x float]* nocapture %box, float %lambda, float* nocapture %dvdlambda, %struct.t_mdatoms* nocapture %md, i32 %ngrp, float* nocapture %egnb, float* nocapture %egcoul, %struct.t_fcdata* nocapture %fcd) #0 {
entry:
  %r_ij = alloca [3 x float], align 4
  %r_kj = alloca [3 x float], align 4
  %cos_theta = alloca float, align 4
  %f_i = alloca [3 x float], align 4
  %f_j = alloca [3 x float], align 4
  %f_k = alloca [3 x float], align 4
  %cmp278 = icmp sgt i32 %nbonds, 0
  br i1 %cmp278, label %for.body.lr.ph, label %for.end167

for.body.lr.ph:                                   ; preds = %entry
  %arraydecay18 = getelementptr inbounds [3 x float]* %r_ij, i64 0, i64 0
  %arraydecay19 = getelementptr inbounds [3 x float]* %r_kj, i64 0, i64 0
  %conv1.i = fsub float 1.000000e+00, %lambda
  %arrayidx2.i265 = getelementptr inbounds [3 x float]* %r_kj, i64 0, i64 1
  %arrayidx5.i269 = getelementptr inbounds [3 x float]* %r_kj, i64 0, i64 2
  %arrayidx2.i257 = getelementptr inbounds [3 x float]* %r_ij, i64 0, i64 1
  %arrayidx5.i261 = getelementptr inbounds [3 x float]* %r_ij, i64 0, i64 2
  %start = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 3
  %ishift = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 7
  %fshift = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 58
  %arraydecay157 = getelementptr inbounds [3 x float]* %f_i, i64 0, i64 0
  %arrayidx3.i235 = getelementptr inbounds [3 x float]* %f_i, i64 0, i64 1
  %arrayidx6.i238 = getelementptr inbounds [3 x float]* %f_i, i64 0, i64 2
  %arraydecay161 = getelementptr inbounds [3 x float]* %f_j, i64 0, i64 0
  %arrayidx3.i228 = getelementptr inbounds [3 x float]* %f_j, i64 0, i64 1
  %arrayidx6.i231 = getelementptr inbounds [3 x float]* %f_j, i64 0, i64 2
  %arraydecay166 = getelementptr inbounds [3 x float]* %f_k, i64 0, i64 0
  %arrayidx3.i = getelementptr inbounds [3 x float]* %f_k, i64 0, i64 1
  %arrayidx6.i = getelementptr inbounds [3 x float]* %f_k, i64 0, i64 2
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.end
  %indvars.iv281 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next282, %for.end ]
  %vtot.0279 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %add36, %for.end ]
  %0 = or i64 %indvars.iv281, 1
  %arrayidx = getelementptr inbounds i32* %forceatoms, i64 %indvars.iv281
  %1 = load i32* %arrayidx, align 4, !tbaa !3
  %2 = or i64 %indvars.iv281, 2
  %arrayidx3 = getelementptr inbounds i32* %forceatoms, i64 %0
  %3 = load i32* %arrayidx3, align 4, !tbaa !3
  %4 = or i64 %indvars.iv281, 3
  %arrayidx6 = getelementptr inbounds i32* %forceatoms, i64 %2
  %5 = load i32* %arrayidx6, align 4, !tbaa !3
  %arrayidx9 = getelementptr inbounds i32* %forceatoms, i64 %4
  %6 = load i32* %arrayidx9, align 4, !tbaa !3
  %idxprom10 = sext i32 %3 to i64
  %arraydecay = getelementptr inbounds [3 x float]* %x, i64 %idxprom10, i64 0
  %idxprom12 = sext i32 %5 to i64
  %arraydecay14 = getelementptr inbounds [3 x float]* %x, i64 %idxprom12, i64 0
  %idxprom15 = sext i32 %6 to i64
  %arraydecay17 = getelementptr inbounds [3 x float]* %x, i64 %idxprom15, i64 0
  %call = call float @bond_angle([3 x float]* undef, float* %arraydecay, float* %arraydecay14, float* %arraydecay17, float* %arraydecay18, float* %arraydecay19, float* %cos_theta) #7
  %idxprom20 = sext i32 %1 to i64
  %7 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %idxprom20, i32 0, i32 1
  %8 = load float* %7, align 4, !tbaa !0
  %9 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %idxprom20, i32 0, i32 3
  %10 = load float* %9, align 4, !tbaa !0
  %rA = getelementptr inbounds %union.t_iparams* %forceparams, i64 %idxprom20, i32 0, i32 0
  %11 = load float* %rA, align 4, !tbaa !0
  %conv = fpext float %11 to double
  %mul = fmul double %conv, 0x3F91DF46A2529D39
  %conv28 = fptrunc double %mul to float
  %12 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %idxprom20, i32 0, i32 2
  %13 = load float* %12, align 4, !tbaa !0
  %conv32 = fpext float %13 to double
  %mul33 = fmul double %conv32, 0x3F91DF46A2529D39
  %conv34 = fptrunc double %mul33 to float
  %mul.i = fmul float %conv1.i, %8
  %mul2.i = fmul float %10, %lambda
  %add.i = fadd float %mul.i, %mul2.i
  %mul3.i = fmul float %conv1.i, %conv28
  %mul4.i = fmul float %conv34, %lambda
  %add5.i = fadd float %mul3.i, %mul4.i
  %sub6.i = fsub float %call, %add5.i
  %mul7.i = fmul float %sub6.i, %sub6.i
  %14 = fmul float %add.i, %sub6.i
  %mul9.i = fsub float -0.000000e+00, %14
  %mul10.i = fmul float %add.i, 5.000000e-01
  %sub12.i = fsub float %10, %8
  %mul13.i = fmul float %sub12.i, 5.000000e-01
  %mul14.i = fmul float %mul13.i, %mul7.i
  %sub15.i = fsub float %conv28, %conv34
  %mul16.i = fmul float %add.i, %sub15.i
  %mul17.i = fmul float %mul16.i, %sub6.i
  %add18.i = fadd float %mul17.i, %mul14.i
  %15 = load float* %dvdlambda, align 4, !tbaa !0
  %add = fadd float %15, %add18.i
  store float %add, float* %dvdlambda, align 4, !tbaa !0
  %conv37 = fpext float %call to double
  %call38 = call double @sin(double %conv37) #5
  %conv39 = fptrunc double %call38 to float
  %fabsf = call float @fabsf(float %conv39) #6
  %16 = fpext float %fabsf to double
  %cmp42 = fcmp olt double %16, 1.000000e-12
  %snt.0 = select i1 %cmp42, float 0x3D71979980000000, float %conv39
  %div = fdiv float %mul9.i, %snt.0
  %17 = load float* %cos_theta, align 4, !tbaa !0
  %mul44 = fmul float %div, %17
  %18 = load float* %arraydecay19, align 4, !tbaa !0
  %mul.i264 = fmul float %18, %18
  %19 = load float* %arrayidx2.i265, align 4, !tbaa !0
  %mul4.i267 = fmul float %19, %19
  %add.i268 = fadd float %mul.i264, %mul4.i267
  %20 = load float* %arrayidx5.i269, align 4, !tbaa !0
  %mul7.i271 = fmul float %20, %20
  %add8.i272 = fadd float %add.i268, %mul7.i271
  %21 = load float* %arraydecay18, align 4, !tbaa !0
  %mul.i256 = fmul float %21, %21
  %22 = load float* %arrayidx2.i257, align 4, !tbaa !0
  %mul4.i259 = fmul float %22, %22
  %add.i260 = fadd float %mul.i256, %mul4.i259
  %23 = load float* %arrayidx5.i261, align 4, !tbaa !0
  %mul7.i263 = fmul float %23, %23
  %add8.i = fadd float %add.i260, %mul7.i263
  %conv51 = fpext float %div to double
  %mul52 = fmul float %add8.i272, %add8.i
  %conv53 = fpext float %mul52 to double
  %call54 = call double @sqrt(double %conv53) #5
  %div55 = fdiv double 1.000000e+00, %call54
  %mul56 = fmul double %conv51, %div55
  %conv57 = fptrunc double %mul56 to float
  %div58 = fdiv float %mul44, %add8.i
  %div59 = fdiv float %mul44, %add8.i272
  br label %for.body63

for.body63:                                       ; preds = %for.body63.for.body63_crit_edge, %for.body
  %24 = phi float [ %21, %for.body ], [ %.pre286, %for.body63.for.body63_crit_edge ]
  %25 = phi float [ %18, %for.body ], [ %.pre, %for.body63.for.body63_crit_edge ]
  %indvars.iv = phi i64 [ 0, %for.body ], [ %indvars.iv.next, %for.body63.for.body63_crit_edge ]
  %mul66 = fmul float %conv57, %25
  %mul69 = fmul float %div58, %24
  %sub = fsub float %mul66, %mul69
  %sub70 = fsub float -0.000000e+00, %sub
  %arrayidx72 = getelementptr inbounds [3 x float]* %f_i, i64 0, i64 %indvars.iv
  store float %sub70, float* %arrayidx72, align 4, !tbaa !0
  %mul75 = fmul float %conv57, %24
  %mul78 = fmul float %div59, %25
  %sub79 = fsub float %mul75, %mul78
  %sub80 = fsub float -0.000000e+00, %sub79
  %arrayidx82 = getelementptr inbounds [3 x float]* %f_k, i64 0, i64 %indvars.iv
  store float %sub80, float* %arrayidx82, align 4, !tbaa !0
  %sub88 = fadd float %sub79, %sub
  %arrayidx90 = getelementptr inbounds [3 x float]* %f_j, i64 0, i64 %indvars.iv
  store float %sub88, float* %arrayidx90, align 4, !tbaa !0
  %arrayidx96 = getelementptr inbounds [3 x float]* %f, i64 %idxprom10, i64 %indvars.iv
  %26 = load float* %arrayidx96, align 4, !tbaa !0
  %add97 = fsub float %26, %sub
  store float %add97, float* %arrayidx96, align 4, !tbaa !0
  %arrayidx103 = getelementptr inbounds [3 x float]* %f, i64 %idxprom12, i64 %indvars.iv
  %27 = load float* %arrayidx103, align 4, !tbaa !0
  %add104 = fadd float %sub88, %27
  store float %add104, float* %arrayidx103, align 4, !tbaa !0
  %arrayidx110 = getelementptr inbounds [3 x float]* %f, i64 %idxprom15, i64 %indvars.iv
  %28 = load float* %arrayidx110, align 4, !tbaa !0
  %add111 = fsub float %28, %sub79
  store float %add111, float* %arrayidx110, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end, label %for.body63.for.body63_crit_edge

for.body63.for.body63_crit_edge:                  ; preds = %for.body63
  %arrayidx65.phi.trans.insert = getelementptr inbounds [3 x float]* %r_kj, i64 0, i64 %indvars.iv.next
  %.pre = load float* %arrayidx65.phi.trans.insert, align 4, !tbaa !0
  %arrayidx68.phi.trans.insert = getelementptr inbounds [3 x float]* %r_ij, i64 0, i64 %indvars.iv.next
  %.pre286 = load float* %arrayidx68.phi.trans.insert, align 4, !tbaa !0
  br label %for.body63

for.end:                                          ; preds = %for.body63
  %indvars.iv.next282 = add i64 %indvars.iv281, 4
  %mul11.i = fmul float %mul10.i, %mul7.i
  %add36 = fadd float %vtot.0279, %mul11.i
  %29 = load i32* %start, align 4, !tbaa !3
  %sub113 = sub nsw i32 %5, %29
  %idxprom114 = sext i32 %sub113 to i64
  %30 = load [3 x i32]** %ishift, align 8, !tbaa !4
  %arraydecay116 = getelementptr inbounds [3 x i32]* %30, i64 %idxprom114, i64 0
  %31 = load i32* %arraydecay116, align 4, !tbaa !3
  %arrayidx2.i253 = getelementptr inbounds [3 x i32]* %30, i64 %idxprom114, i64 1
  %32 = load i32* %arrayidx2.i253, align 4, !tbaa !3
  %arrayidx4.i = getelementptr inbounds [3 x i32]* %30, i64 %idxprom114, i64 2
  %33 = load i32* %arrayidx4.i, align 4, !tbaa !3
  %sub119 = sub nsw i32 %3, %29
  %idxprom120 = sext i32 %sub119 to i64
  %arraydecay123 = getelementptr inbounds [3 x i32]* %30, i64 %idxprom120, i64 0
  %34 = load i32* %arraydecay123, align 4, !tbaa !3
  %arrayidx2.i245 = getelementptr inbounds [3 x i32]* %30, i64 %idxprom120, i64 1
  %35 = load i32* %arrayidx2.i245, align 4, !tbaa !3
  %arrayidx5.i248 = getelementptr inbounds [3 x i32]* %30, i64 %idxprom120, i64 2
  %36 = load i32* %arrayidx5.i248, align 4, !tbaa !3
  %sub7.i250 = sub nsw i32 %36, %33
  %sub127 = sub nsw i32 %6, %29
  %idxprom128 = sext i32 %sub127 to i64
  %arraydecay131 = getelementptr inbounds [3 x i32]* %30, i64 %idxprom128, i64 0
  %37 = load i32* %arraydecay131, align 4, !tbaa !3
  %arrayidx2.i240 = getelementptr inbounds [3 x i32]* %30, i64 %idxprom128, i64 1
  %38 = load i32* %arrayidx2.i240, align 4, !tbaa !3
  %arrayidx5.i242 = getelementptr inbounds [3 x i32]* %30, i64 %idxprom128, i64 2
  %39 = load i32* %arrayidx5.i242, align 4, !tbaa !3
  %sub7.i = sub nsw i32 %39, %33
  %40 = mul i32 %sub7.i250, 3
  %sub4.i247 = sub i32 3, %32
  %mul136 = add i32 %sub4.i247, %35
  %add138 = add i32 %mul136, %40
  %41 = mul i32 %add138, 3
  %mul140 = sub i32 4, %31
  %add142 = add i32 %mul140, %34
  %add143 = add i32 %add142, %41
  %42 = mul i32 %sub7.i, 3
  %mul146 = add i32 %sub4.i247, %38
  %add148 = add i32 %mul146, %42
  %43 = mul i32 %add148, 3
  %add152 = add i32 %mul140, %37
  %add153 = add i32 %add152, %43
  %idxprom154 = sext i32 %add143 to i64
  %44 = load [3 x float]** %fshift, align 8, !tbaa !4
  %arraydecay156 = getelementptr inbounds [3 x float]* %44, i64 %idxprom154, i64 0
  %45 = load float* %arraydecay156, align 4, !tbaa !0
  %46 = load float* %arraydecay157, align 4, !tbaa !0
  %add.i233 = fadd float %45, %46
  %arrayidx2.i234 = getelementptr inbounds [3 x float]* %44, i64 %idxprom154, i64 1
  %47 = load float* %arrayidx2.i234, align 4, !tbaa !0
  %48 = load float* %arrayidx3.i235, align 4, !tbaa !0
  %add4.i236 = fadd float %47, %48
  %arrayidx5.i237 = getelementptr inbounds [3 x float]* %44, i64 %idxprom154, i64 2
  %49 = load float* %arrayidx5.i237, align 4, !tbaa !0
  %50 = load float* %arrayidx6.i238, align 4, !tbaa !0
  %add7.i239 = fadd float %49, %50
  store float %add.i233, float* %arraydecay156, align 4, !tbaa !0
  store float %add4.i236, float* %arrayidx2.i234, align 4, !tbaa !0
  store float %add7.i239, float* %arrayidx5.i237, align 4, !tbaa !0
  %arraydecay160 = getelementptr inbounds [3 x float]* %44, i64 13, i64 0
  %51 = load float* %arraydecay160, align 4, !tbaa !0
  %52 = load float* %arraydecay161, align 4, !tbaa !0
  %add.i226 = fadd float %51, %52
  %arrayidx2.i227 = getelementptr inbounds [3 x float]* %44, i64 13, i64 1
  %53 = load float* %arrayidx2.i227, align 4, !tbaa !0
  %54 = load float* %arrayidx3.i228, align 4, !tbaa !0
  %add4.i229 = fadd float %53, %54
  %arrayidx5.i230 = getelementptr inbounds [3 x float]* %44, i64 13, i64 2
  %55 = load float* %arrayidx5.i230, align 4, !tbaa !0
  %56 = load float* %arrayidx6.i231, align 4, !tbaa !0
  %add7.i232 = fadd float %55, %56
  store float %add.i226, float* %arraydecay160, align 4, !tbaa !0
  store float %add4.i229, float* %arrayidx2.i227, align 4, !tbaa !0
  store float %add7.i232, float* %arrayidx5.i230, align 4, !tbaa !0
  %idxprom162 = sext i32 %add153 to i64
  %arraydecay165 = getelementptr inbounds [3 x float]* %44, i64 %idxprom162, i64 0
  %57 = load float* %arraydecay165, align 4, !tbaa !0
  %58 = load float* %arraydecay166, align 4, !tbaa !0
  %add.i225 = fadd float %57, %58
  %arrayidx2.i = getelementptr inbounds [3 x float]* %44, i64 %idxprom162, i64 1
  %59 = load float* %arrayidx2.i, align 4, !tbaa !0
  %60 = load float* %arrayidx3.i, align 4, !tbaa !0
  %add4.i = fadd float %59, %60
  %arrayidx5.i = getelementptr inbounds [3 x float]* %44, i64 %idxprom162, i64 2
  %61 = load float* %arrayidx5.i, align 4, !tbaa !0
  %62 = load float* %arrayidx6.i, align 4, !tbaa !0
  %add7.i = fadd float %61, %62
  store float %add.i225, float* %arraydecay165, align 4, !tbaa !0
  store float %add4.i, float* %arrayidx2.i, align 4, !tbaa !0
  store float %add7.i, float* %arrayidx5.i, align 4, !tbaa !0
  %63 = trunc i64 %indvars.iv.next282 to i32
  %cmp = icmp slt i32 %63, %nbonds
  br i1 %cmp, label %for.body, label %for.end167

for.end167:                                       ; preds = %for.end, %entry
  %vtot.0.lcssa = phi float [ 0.000000e+00, %entry ], [ %add36, %for.end ]
  ret float %vtot.0.lcssa
}

; Function Attrs: nounwind optsize
declare double @sin(double) #3

; Function Attrs: nounwind optsize uwtable
define float @dih_angle([3 x float]* nocapture %box, float* nocapture %xi, float* nocapture %xj, float* nocapture %xk, float* nocapture %xl, float* nocapture %r_ij, float* nocapture %r_kj, float* nocapture %r_kl, float* nocapture %m, float* nocapture %n, float* nocapture %cos_phi, float* nocapture %sign) #0 {
entry:
  %0 = load float* %xi, align 4, !tbaa !0
  %1 = load float* %xj, align 4, !tbaa !0
  %sub.i.i = fsub float %0, %1
  %arrayidx2.i.i = getelementptr inbounds float* %xi, i64 1
  %2 = load float* %arrayidx2.i.i, align 4, !tbaa !0
  %arrayidx3.i.i = getelementptr inbounds float* %xj, i64 1
  %3 = load float* %arrayidx3.i.i, align 4, !tbaa !0
  %sub4.i.i = fsub float %2, %3
  %arrayidx5.i.i = getelementptr inbounds float* %xi, i64 2
  %4 = load float* %arrayidx5.i.i, align 4, !tbaa !0
  %arrayidx6.i.i = getelementptr inbounds float* %xj, i64 2
  %5 = load float* %arrayidx6.i.i, align 4, !tbaa !0
  %sub7.i.i = fsub float %4, %5
  store float %sub.i.i, float* %r_ij, align 4, !tbaa !0
  %arrayidx9.i.i = getelementptr inbounds float* %r_ij, i64 1
  store float %sub4.i.i, float* %arrayidx9.i.i, align 4, !tbaa !0
  %arrayidx10.i.i = getelementptr inbounds float* %r_ij, i64 2
  store float %sub7.i.i, float* %arrayidx10.i.i, align 4, !tbaa !0
  %6 = load float* %xk, align 4, !tbaa !0
  %7 = load float* %xj, align 4, !tbaa !0
  %sub.i.i24 = fsub float %6, %7
  %arrayidx2.i.i25 = getelementptr inbounds float* %xk, i64 1
  %8 = load float* %arrayidx2.i.i25, align 4, !tbaa !0
  %9 = load float* %arrayidx3.i.i, align 4, !tbaa !0
  %sub4.i.i27 = fsub float %8, %9
  %arrayidx5.i.i28 = getelementptr inbounds float* %xk, i64 2
  %10 = load float* %arrayidx5.i.i28, align 4, !tbaa !0
  %11 = load float* %arrayidx6.i.i, align 4, !tbaa !0
  %sub7.i.i30 = fsub float %10, %11
  store float %sub.i.i24, float* %r_kj, align 4, !tbaa !0
  %arrayidx9.i.i31 = getelementptr inbounds float* %r_kj, i64 1
  store float %sub4.i.i27, float* %arrayidx9.i.i31, align 4, !tbaa !0
  %arrayidx10.i.i32 = getelementptr inbounds float* %r_kj, i64 2
  store float %sub7.i.i30, float* %arrayidx10.i.i32, align 4, !tbaa !0
  %12 = load float* %xk, align 4, !tbaa !0
  %13 = load float* %xl, align 4, !tbaa !0
  %sub.i.i54 = fsub float %12, %13
  %14 = load float* %arrayidx2.i.i25, align 4, !tbaa !0
  %arrayidx3.i.i56 = getelementptr inbounds float* %xl, i64 1
  %15 = load float* %arrayidx3.i.i56, align 4, !tbaa !0
  %sub4.i.i57 = fsub float %14, %15
  %16 = load float* %arrayidx5.i.i28, align 4, !tbaa !0
  %arrayidx6.i.i59 = getelementptr inbounds float* %xl, i64 2
  %17 = load float* %arrayidx6.i.i59, align 4, !tbaa !0
  %sub7.i.i60 = fsub float %16, %17
  store float %sub.i.i54, float* %r_kl, align 4, !tbaa !0
  %arrayidx9.i.i61 = getelementptr inbounds float* %r_kl, i64 1
  store float %sub4.i.i57, float* %arrayidx9.i.i61, align 4, !tbaa !0
  %arrayidx10.i.i62 = getelementptr inbounds float* %r_kl, i64 2
  store float %sub7.i.i60, float* %arrayidx10.i.i62, align 4, !tbaa !0
  %18 = load float* %arrayidx9.i.i, align 4, !tbaa !0
  %19 = load float* %arrayidx10.i.i32, align 4, !tbaa !0
  %mul.i41 = fmul float %18, %19
  %20 = load float* %arrayidx10.i.i, align 4, !tbaa !0
  %21 = load float* %arrayidx9.i.i31, align 4, !tbaa !0
  %mul4.i44 = fmul float %20, %21
  %sub.i45 = fsub float %mul.i41, %mul4.i44
  store float %sub.i45, float* %m, align 4, !tbaa !0
  %22 = load float* %arrayidx10.i.i, align 4, !tbaa !0
  %23 = load float* %r_kj, align 4, !tbaa !0
  %mul8.i46 = fmul float %22, %23
  %24 = load float* %r_ij, align 4, !tbaa !0
  %25 = load float* %arrayidx10.i.i32, align 4, !tbaa !0
  %mul11.i47 = fmul float %24, %25
  %sub12.i48 = fsub float %mul8.i46, %mul11.i47
  %arrayidx13.i49 = getelementptr inbounds float* %m, i64 1
  store float %sub12.i48, float* %arrayidx13.i49, align 4, !tbaa !0
  %26 = load float* %r_ij, align 4, !tbaa !0
  %27 = load float* %arrayidx9.i.i31, align 4, !tbaa !0
  %mul16.i50 = fmul float %26, %27
  %28 = load float* %arrayidx9.i.i, align 4, !tbaa !0
  %29 = load float* %r_kj, align 4, !tbaa !0
  %mul19.i51 = fmul float %28, %29
  %sub20.i52 = fsub float %mul16.i50, %mul19.i51
  %arrayidx21.i53 = getelementptr inbounds float* %m, i64 2
  store float %sub20.i52, float* %arrayidx21.i53, align 4, !tbaa !0
  %30 = load float* %arrayidx9.i.i31, align 4, !tbaa !0
  %31 = load float* %arrayidx10.i.i62, align 4, !tbaa !0
  %mul.i34 = fmul float %30, %31
  %32 = load float* %arrayidx10.i.i32, align 4, !tbaa !0
  %33 = load float* %arrayidx9.i.i61, align 4, !tbaa !0
  %mul4.i37 = fmul float %32, %33
  %sub.i = fsub float %mul.i34, %mul4.i37
  store float %sub.i, float* %n, align 4, !tbaa !0
  %34 = load float* %arrayidx10.i.i32, align 4, !tbaa !0
  %35 = load float* %r_kl, align 4, !tbaa !0
  %mul8.i38 = fmul float %34, %35
  %36 = load float* %r_kj, align 4, !tbaa !0
  %37 = load float* %arrayidx10.i.i62, align 4, !tbaa !0
  %mul11.i = fmul float %36, %37
  %sub12.i = fsub float %mul8.i38, %mul11.i
  %arrayidx13.i = getelementptr inbounds float* %n, i64 1
  store float %sub12.i, float* %arrayidx13.i, align 4, !tbaa !0
  %38 = load float* %r_kj, align 4, !tbaa !0
  %39 = load float* %arrayidx9.i.i61, align 4, !tbaa !0
  %mul16.i = fmul float %38, %39
  %40 = load float* %arrayidx9.i.i31, align 4, !tbaa !0
  %41 = load float* %r_kl, align 4, !tbaa !0
  %mul19.i = fmul float %40, %41
  %sub20.i = fsub float %mul16.i, %mul19.i
  %arrayidx21.i = getelementptr inbounds float* %n, i64 2
  store float %sub20.i, float* %arrayidx21.i, align 4, !tbaa !0
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %42 = phi float [ %sub.i, %entry ], [ %.pre, %for.body.i.for.body.i_crit_edge ]
  %indvars.iv.i = phi i64 [ 0, %entry ], [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ]
  %ipb.034.i = phi double [ 0.000000e+00, %entry ], [ %add7.i, %for.body.i.for.body.i_crit_edge ]
  %ipa.033.i = phi double [ 0.000000e+00, %entry ], [ %add5.i, %for.body.i.for.body.i_crit_edge ]
  %ip.032.i = phi double [ 0.000000e+00, %entry ], [ %add.i22, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr inbounds float* %m, i64 %indvars.iv.i
  %43 = load float* %arrayidx.i, align 4, !tbaa !0
  %conv.i = fpext float %43 to double
  %conv3.i = fpext float %42 to double
  %mul.i21 = fmul double %conv.i, %conv3.i
  %add.i22 = fadd double %ip.032.i, %mul.i21
  %mul4.i23 = fmul double %conv.i, %conv.i
  %add5.i = fadd double %ipa.033.i, %mul4.i23
  %mul6.i = fmul double %conv3.i, %conv3.i
  %add7.i = fadd double %ipb.034.i, %mul6.i
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  %arrayidx2.i20.phi.trans.insert = getelementptr inbounds float* %n, i64 %indvars.iv.next.i
  %.pre = load float* %arrayidx2.i20.phi.trans.insert, align 4, !tbaa !0
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %mul8.i = fmul double %add5.i, %add7.i
  %call.i = tail call double @sqrt(double %mul8.i) #5
  %div.i = fdiv double 1.000000e+00, %call.i
  %mul9.i = fmul double %add.i22, %div.i
  %conv10.i = fptrunc double %mul9.i to float
  %cmp12.i = fcmp ogt float %conv10.i, 1.000000e+00
  br i1 %cmp12.i, label %cos_angle.exit, label %if.end.i

if.end.i:                                         ; preds = %for.end.i
  %cmp15.i = fcmp olt float %conv10.i, -1.000000e+00
  %.conv10.i = select i1 %cmp15.i, float -1.000000e+00, float %conv10.i
  br label %cos_angle.exit

cos_angle.exit:                                   ; preds = %for.end.i, %if.end.i
  %retval.0.i = phi float [ 1.000000e+00, %for.end.i ], [ %.conv10.i, %if.end.i ]
  store float %retval.0.i, float* %cos_phi, align 4, !tbaa !0
  %conv = fpext float %retval.0.i to double
  %call1 = tail call double @acos(double %conv) #5
  %conv2 = fptrunc double %call1 to float
  %44 = load float* %r_ij, align 4, !tbaa !0
  %45 = load float* %n, align 4, !tbaa !0
  %mul.i = fmul float %44, %45
  %46 = load float* %arrayidx9.i.i, align 4, !tbaa !0
  %47 = load float* %arrayidx13.i, align 4, !tbaa !0
  %mul4.i = fmul float %46, %47
  %add.i = fadd float %mul.i, %mul4.i
  %48 = load float* %arrayidx10.i.i, align 4, !tbaa !0
  %49 = load float* %arrayidx21.i, align 4, !tbaa !0
  %mul7.i = fmul float %48, %49
  %add8.i = fadd float %add.i, %mul7.i
  %cmp = fcmp olt float %add8.i, 0.000000e+00
  %conv6 = select i1 %cmp, float -1.000000e+00, float 1.000000e+00
  store float %conv6, float* %sign, align 4, !tbaa !0
  %mul = fmul float %conv2, %conv6
  ret float %mul
}

; Function Attrs: nounwind optsize uwtable
define void @do_dih_fup(i32 %i, i32 %j, i32 %k, i32 %l, float %ddphi, float* nocapture %r_ij, float* nocapture %r_kj, float* nocapture %r_kl, float* nocapture %m, float* nocapture %n, [3 x float]* nocapture %f, %struct.t_forcerec* nocapture %fr, %struct.t_graph* nocapture %g, [3 x float]* nocapture %x) #0 {
entry:
  %0 = load float* %m, align 4, !tbaa !0
  %mul.i = fmul float %0, %0
  %arrayidx2.i = getelementptr inbounds float* %m, i64 1
  %1 = load float* %arrayidx2.i, align 4, !tbaa !0
  %mul4.i = fmul float %1, %1
  %add.i = fadd float %mul.i, %mul4.i
  %arrayidx5.i = getelementptr inbounds float* %m, i64 2
  %2 = load float* %arrayidx5.i, align 4, !tbaa !0
  %mul7.i = fmul float %2, %2
  %add8.i = fadd float %add.i, %mul7.i
  %3 = load float* %r_kj, align 4, !tbaa !0
  %mul.i305 = fmul float %3, %3
  %arrayidx2.i306 = getelementptr inbounds float* %r_kj, i64 1
  %4 = load float* %arrayidx2.i306, align 4, !tbaa !0
  %mul4.i308 = fmul float %4, %4
  %add.i309 = fadd float %mul.i305, %mul4.i308
  %arrayidx5.i310 = getelementptr inbounds float* %r_kj, i64 2
  %5 = load float* %arrayidx5.i310, align 4, !tbaa !0
  %mul7.i312 = fmul float %5, %5
  %add8.i313 = fadd float %add.i309, %mul7.i312
  %conv3 = tail call float @sqrtf(float %add8.i313) #3
  %6 = fmul float %conv3, %ddphi
  %mul = fsub float -0.000000e+00, %6
  %div = fdiv float %mul, %add8.i
  %7 = load float* %m, align 4, !tbaa !0
  %mul.i298 = fmul float %div, %7
  %8 = load float* %arrayidx2.i, align 4, !tbaa !0
  %mul3.i300 = fmul float %div, %8
  %9 = load float* %arrayidx5.i, align 4, !tbaa !0
  %mul6.i303 = fmul float %div, %9
  %10 = load float* %n, align 4, !tbaa !0
  %mul.i289 = fmul float %10, %10
  %arrayidx2.i290 = getelementptr inbounds float* %n, i64 1
  %11 = load float* %arrayidx2.i290, align 4, !tbaa !0
  %mul4.i292 = fmul float %11, %11
  %add.i293 = fadd float %mul.i289, %mul4.i292
  %arrayidx5.i294 = getelementptr inbounds float* %n, i64 2
  %12 = load float* %arrayidx5.i294, align 4, !tbaa !0
  %mul7.i296 = fmul float %12, %12
  %add8.i297 = fadd float %add.i293, %mul7.i296
  %div6 = fdiv float %6, %add8.i297
  %mul.i282 = fmul float %10, %div6
  %mul3.i284 = fmul float %11, %div6
  %mul6.i287 = fmul float %12, %div6
  %13 = load float* %r_ij, align 4, !tbaa !0
  %14 = load float* %r_kj, align 4, !tbaa !0
  %mul.i273 = fmul float %13, %14
  %arrayidx2.i274 = getelementptr inbounds float* %r_ij, i64 1
  %15 = load float* %arrayidx2.i274, align 4, !tbaa !0
  %16 = load float* %arrayidx2.i306, align 4, !tbaa !0
  %mul4.i276 = fmul float %15, %16
  %add.i277 = fadd float %mul.i273, %mul4.i276
  %arrayidx5.i278 = getelementptr inbounds float* %r_ij, i64 2
  %17 = load float* %arrayidx5.i278, align 4, !tbaa !0
  %18 = load float* %arrayidx5.i310, align 4, !tbaa !0
  %mul7.i280 = fmul float %17, %18
  %add8.i281 = fadd float %add.i277, %mul7.i280
  %div9 = fdiv float %add8.i281, %add8.i313
  %19 = load float* %r_kl, align 4, !tbaa !0
  %mul.i264 = fmul float %14, %19
  %arrayidx2.i265 = getelementptr inbounds float* %r_kl, i64 1
  %20 = load float* %arrayidx2.i265, align 4, !tbaa !0
  %mul4.i267 = fmul float %16, %20
  %add.i268 = fadd float %mul.i264, %mul4.i267
  %arrayidx5.i269 = getelementptr inbounds float* %r_kl, i64 2
  %21 = load float* %arrayidx5.i269, align 4, !tbaa !0
  %mul7.i271 = fmul float %18, %21
  %add8.i272 = fadd float %add.i268, %mul7.i271
  %div11 = fdiv float %add8.i272, %add8.i313
  %mul.i257 = fmul float %mul.i298, %div9
  %mul3.i259 = fmul float %mul3.i300, %div9
  %mul6.i262 = fmul float %mul6.i303, %div9
  %mul.i253 = fmul float %mul.i282, %div11
  %mul3.i = fmul float %mul3.i284, %div11
  %mul6.i = fmul float %mul6.i287, %div11
  %sub.i244 = fsub float %mul.i257, %mul.i253
  %sub4.i247 = fsub float %mul3.i259, %mul3.i
  %sub7.i250 = fsub float %mul6.i262, %mul6.i
  %sub.i235 = fsub float %mul.i298, %sub.i244
  %sub4.i238 = fsub float %mul3.i300, %sub4.i247
  %sub7.i241 = fsub float %mul6.i303, %sub7.i250
  %add.i226 = fadd float %mul.i282, %sub.i244
  %add4.i229 = fadd float %mul3.i284, %sub4.i247
  %add7.i232 = fadd float %mul6.i287, %sub7.i250
  %idxprom = sext i32 %i to i64
  %arraydecay25 = getelementptr inbounds [3 x float]* %f, i64 %idxprom, i64 0
  %22 = load float* %arraydecay25, align 4, !tbaa !0
  %add.i219 = fadd float %mul.i298, %22
  %arrayidx2.i220 = getelementptr inbounds [3 x float]* %f, i64 %idxprom, i64 1
  %23 = load float* %arrayidx2.i220, align 4, !tbaa !0
  %add4.i222 = fadd float %mul3.i300, %23
  %arrayidx5.i223 = getelementptr inbounds [3 x float]* %f, i64 %idxprom, i64 2
  %24 = load float* %arrayidx5.i223, align 4, !tbaa !0
  %add7.i225 = fadd float %mul6.i303, %24
  store float %add.i219, float* %arraydecay25, align 4, !tbaa !0
  store float %add4.i222, float* %arrayidx2.i220, align 4, !tbaa !0
  store float %add7.i225, float* %arrayidx5.i223, align 4, !tbaa !0
  %idxprom27 = sext i32 %j to i64
  %arraydecay29 = getelementptr inbounds [3 x float]* %f, i64 %idxprom27, i64 0
  %25 = load float* %arraydecay29, align 4, !tbaa !0
  %sub.i212 = fsub float %25, %sub.i235
  %arrayidx2.i213 = getelementptr inbounds [3 x float]* %f, i64 %idxprom27, i64 1
  %26 = load float* %arrayidx2.i213, align 4, !tbaa !0
  %sub4.i215 = fsub float %26, %sub4.i238
  %arrayidx5.i216 = getelementptr inbounds [3 x float]* %f, i64 %idxprom27, i64 2
  %27 = load float* %arrayidx5.i216, align 4, !tbaa !0
  %sub7.i218 = fsub float %27, %sub7.i241
  store float %sub.i212, float* %arraydecay29, align 4, !tbaa !0
  store float %sub4.i215, float* %arrayidx2.i213, align 4, !tbaa !0
  store float %sub7.i218, float* %arrayidx5.i216, align 4, !tbaa !0
  %idxprom31 = sext i32 %k to i64
  %arraydecay33 = getelementptr inbounds [3 x float]* %f, i64 %idxprom31, i64 0
  %28 = load float* %arraydecay33, align 4, !tbaa !0
  %sub.i205 = fsub float %28, %add.i226
  %arrayidx2.i206 = getelementptr inbounds [3 x float]* %f, i64 %idxprom31, i64 1
  %29 = load float* %arrayidx2.i206, align 4, !tbaa !0
  %sub4.i208 = fsub float %29, %add4.i229
  %arrayidx5.i209 = getelementptr inbounds [3 x float]* %f, i64 %idxprom31, i64 2
  %30 = load float* %arrayidx5.i209, align 4, !tbaa !0
  %sub7.i211 = fsub float %30, %add7.i232
  store float %sub.i205, float* %arraydecay33, align 4, !tbaa !0
  store float %sub4.i208, float* %arrayidx2.i206, align 4, !tbaa !0
  store float %sub7.i211, float* %arrayidx5.i209, align 4, !tbaa !0
  %idxprom35 = sext i32 %l to i64
  %arraydecay37 = getelementptr inbounds [3 x float]* %f, i64 %idxprom35, i64 0
  %31 = load float* %arraydecay37, align 4, !tbaa !0
  %add.i198 = fadd float %mul.i282, %31
  %arrayidx2.i199 = getelementptr inbounds [3 x float]* %f, i64 %idxprom35, i64 1
  %32 = load float* %arrayidx2.i199, align 4, !tbaa !0
  %add4.i201 = fadd float %mul3.i284, %32
  %arrayidx5.i202 = getelementptr inbounds [3 x float]* %f, i64 %idxprom35, i64 2
  %33 = load float* %arrayidx5.i202, align 4, !tbaa !0
  %add7.i204 = fadd float %mul6.i287, %33
  store float %add.i198, float* %arraydecay37, align 4, !tbaa !0
  store float %add4.i201, float* %arrayidx2.i199, align 4, !tbaa !0
  store float %add7.i204, float* %arrayidx5.i202, align 4, !tbaa !0
  %start = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 3
  %34 = load i32* %start, align 4, !tbaa !3
  %sub39 = sub nsw i32 %j, %34
  %idxprom40 = sext i32 %sub39 to i64
  %ishift = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 7
  %35 = load [3 x i32]** %ishift, align 8, !tbaa !4
  %arraydecay42 = getelementptr inbounds [3 x i32]* %35, i64 %idxprom40, i64 0
  %36 = load i32* %arraydecay42, align 4, !tbaa !3
  %arrayidx2.i195 = getelementptr inbounds [3 x i32]* %35, i64 %idxprom40, i64 1
  %37 = load i32* %arrayidx2.i195, align 4, !tbaa !3
  %arrayidx4.i = getelementptr inbounds [3 x i32]* %35, i64 %idxprom40, i64 2
  %38 = load i32* %arrayidx4.i, align 4, !tbaa !3
  %sub45 = sub nsw i32 %i, %34
  %idxprom46 = sext i32 %sub45 to i64
  %arraydecay49 = getelementptr inbounds [3 x i32]* %35, i64 %idxprom46, i64 0
  %39 = load i32* %arraydecay49, align 4, !tbaa !3
  %arrayidx2.i187 = getelementptr inbounds [3 x i32]* %35, i64 %idxprom46, i64 1
  %40 = load i32* %arrayidx2.i187, align 4, !tbaa !3
  %arrayidx5.i190 = getelementptr inbounds [3 x i32]* %35, i64 %idxprom46, i64 2
  %41 = load i32* %arrayidx5.i190, align 4, !tbaa !3
  %sub7.i192 = sub nsw i32 %41, %38
  %sub53 = sub nsw i32 %k, %34
  %idxprom54 = sext i32 %sub53 to i64
  %arraydecay57 = getelementptr inbounds [3 x i32]* %35, i64 %idxprom54, i64 0
  %42 = load i32* %arraydecay57, align 4, !tbaa !3
  %arrayidx2.i178 = getelementptr inbounds [3 x i32]* %35, i64 %idxprom54, i64 1
  %43 = load i32* %arrayidx2.i178, align 4, !tbaa !3
  %arrayidx5.i181 = getelementptr inbounds [3 x i32]* %35, i64 %idxprom54, i64 2
  %44 = load i32* %arrayidx5.i181, align 4, !tbaa !3
  %sub7.i183 = sub nsw i32 %44, %38
  %sub61 = sub nsw i32 %l, %34
  %idxprom62 = sext i32 %sub61 to i64
  %arraydecay65 = getelementptr inbounds [3 x i32]* %35, i64 %idxprom62, i64 0
  %45 = load i32* %arraydecay65, align 4, !tbaa !3
  %arrayidx2.i171 = getelementptr inbounds [3 x i32]* %35, i64 %idxprom62, i64 1
  %46 = load i32* %arrayidx2.i171, align 4, !tbaa !3
  %arrayidx5.i174 = getelementptr inbounds [3 x i32]* %35, i64 %idxprom62, i64 2
  %47 = load i32* %arrayidx5.i174, align 4, !tbaa !3
  %sub7.i176 = sub nsw i32 %47, %38
  %48 = mul i32 %sub7.i192, 3
  %sub4.i189 = sub i32 3, %37
  %mul69 = add i32 %sub4.i189, %40
  %add71 = add i32 %mul69, %48
  %49 = mul i32 %add71, 3
  %mul73 = sub i32 4, %36
  %add75 = add i32 %mul73, %39
  %add76 = add i32 %add75, %49
  %50 = mul i32 %sub7.i183, 3
  %mul79 = add i32 %sub4.i189, %43
  %add81 = add i32 %mul79, %50
  %51 = mul i32 %add81, 3
  %add85 = add i32 %mul73, %42
  %add86 = add i32 %add85, %51
  %52 = mul i32 %sub7.i176, 3
  %mul89 = add i32 %sub4.i189, %46
  %add91 = add i32 %mul89, %52
  %53 = mul i32 %add91, 3
  %add95 = add i32 %mul73, %45
  %add96 = add i32 %add95, %53
  %idxprom97 = sext i32 %add76 to i64
  %fshift = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 58
  %54 = load [3 x float]** %fshift, align 8, !tbaa !4
  %arraydecay99 = getelementptr inbounds [3 x float]* %54, i64 %idxprom97, i64 0
  %55 = load float* %arraydecay99, align 4, !tbaa !0
  %add.i163 = fadd float %mul.i298, %55
  %arrayidx2.i164 = getelementptr inbounds [3 x float]* %54, i64 %idxprom97, i64 1
  %56 = load float* %arrayidx2.i164, align 4, !tbaa !0
  %add4.i166 = fadd float %mul3.i300, %56
  %arrayidx5.i167 = getelementptr inbounds [3 x float]* %54, i64 %idxprom97, i64 2
  %57 = load float* %arrayidx5.i167, align 4, !tbaa !0
  %add7.i169 = fadd float %mul6.i303, %57
  store float %add.i163, float* %arraydecay99, align 4, !tbaa !0
  store float %add4.i166, float* %arrayidx2.i164, align 4, !tbaa !0
  store float %add7.i169, float* %arrayidx5.i167, align 4, !tbaa !0
  %arraydecay103 = getelementptr inbounds [3 x float]* %54, i64 13, i64 0
  %58 = load float* %arraydecay103, align 4, !tbaa !0
  %sub.i156 = fsub float %58, %sub.i235
  %arrayidx2.i157 = getelementptr inbounds [3 x float]* %54, i64 13, i64 1
  %59 = load float* %arrayidx2.i157, align 4, !tbaa !0
  %sub4.i159 = fsub float %59, %sub4.i238
  %arrayidx5.i160 = getelementptr inbounds [3 x float]* %54, i64 13, i64 2
  %60 = load float* %arrayidx5.i160, align 4, !tbaa !0
  %sub7.i162 = fsub float %60, %sub7.i241
  store float %sub.i156, float* %arraydecay103, align 4, !tbaa !0
  store float %sub4.i159, float* %arrayidx2.i157, align 4, !tbaa !0
  store float %sub7.i162, float* %arrayidx5.i160, align 4, !tbaa !0
  %idxprom105 = sext i32 %add86 to i64
  %arraydecay108 = getelementptr inbounds [3 x float]* %54, i64 %idxprom105, i64 0
  %61 = load float* %arraydecay108, align 4, !tbaa !0
  %sub.i = fsub float %61, %add.i226
  %arrayidx2.i152 = getelementptr inbounds [3 x float]* %54, i64 %idxprom105, i64 1
  %62 = load float* %arrayidx2.i152, align 4, !tbaa !0
  %sub4.i = fsub float %62, %add4.i229
  %arrayidx5.i154 = getelementptr inbounds [3 x float]* %54, i64 %idxprom105, i64 2
  %63 = load float* %arrayidx5.i154, align 4, !tbaa !0
  %sub7.i = fsub float %63, %add7.i232
  store float %sub.i, float* %arraydecay108, align 4, !tbaa !0
  store float %sub4.i, float* %arrayidx2.i152, align 4, !tbaa !0
  store float %sub7.i, float* %arrayidx5.i154, align 4, !tbaa !0
  %idxprom110 = sext i32 %add96 to i64
  %arraydecay113 = getelementptr inbounds [3 x float]* %54, i64 %idxprom110, i64 0
  %64 = load float* %arraydecay113, align 4, !tbaa !0
  %add.i147 = fadd float %mul.i282, %64
  %arrayidx2.i148 = getelementptr inbounds [3 x float]* %54, i64 %idxprom110, i64 1
  %65 = load float* %arrayidx2.i148, align 4, !tbaa !0
  %add4.i = fadd float %mul3.i284, %65
  %arrayidx5.i150 = getelementptr inbounds [3 x float]* %54, i64 %idxprom110, i64 2
  %66 = load float* %arrayidx5.i150, align 4, !tbaa !0
  %add7.i = fadd float %mul6.i287, %66
  store float %add.i147, float* %arraydecay113, align 4, !tbaa !0
  store float %add4.i, float* %arrayidx2.i148, align 4, !tbaa !0
  store float %add7.i, float* %arrayidx5.i150, align 4, !tbaa !0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define float @dopdihs(float %cpA, float %cpB, float %phiA, float %phiB, i32 %mult, float %phi, float %lambda, float* nocapture %V, float* nocapture %F) #0 {
entry:
  %conv1 = fsub float 1.000000e+00, %lambda
  %mul = fmul float %conv1, %phiA
  %mul2 = fmul float %phiB, %lambda
  %add = fadd float %mul2, %mul
  %conv3 = fpext float %add to double
  %mul4 = fmul double %conv3, 0x3F91DF46A2529D39
  %conv5 = fptrunc double %mul4 to float
  %mul6 = fmul float %conv1, %cpA
  %mul7 = fmul float %cpB, %lambda
  %add8 = fadd float %mul7, %mul6
  %conv9 = sitofp i32 %mult to float
  %mul10 = fmul float %conv9, %phi
  %sub11 = fsub float %mul10, %conv5
  %conv12 = fpext float %sub11 to double
  %call = tail call double @sin(double %conv12) #5
  %conv13 = fptrunc double %call to float
  %0 = fmul float %conv9, %add8
  %1 = fmul float %0, %conv13
  %mul17 = fsub float -0.000000e+00, %1
  %call19 = tail call double @cos(double %conv12) #5
  %add20 = fadd double %call19, 1.000000e+00
  %conv21 = fptrunc double %add20 to float
  %mul22 = fmul float %add8, %conv21
  %sub23 = fsub float %cpB, %cpA
  %mul24 = fmul float %sub23, %conv21
  %sub25 = fsub float %phiA, %phiB
  %mul26 = fmul float %sub25, %add8
  %mul27 = fmul float %mul26, %conv13
  %sub28 = fsub float %mul24, %mul27
  store float %mul22, float* %V, align 4, !tbaa !0
  store float %mul17, float* %F, align 4, !tbaa !0
  ret float %sub28
}

; Function Attrs: nounwind optsize
declare double @cos(double) #3

; Function Attrs: nounwind optsize uwtable
define float @pdihs(i32 %nbonds, i32* nocapture %forceatoms, %union.t_iparams* nocapture %forceparams, [3 x float]* nocapture %x, [3 x float]* nocapture %f, %struct.t_forcerec* nocapture %fr, %struct.t_graph* nocapture %g, [3 x float]* nocapture %box, float %lambda, float* nocapture %dvdlambda, %struct.t_mdatoms* nocapture %md, i32 %ngrp, float* nocapture %egnb, float* nocapture %egcoul, %struct.t_fcdata* nocapture %fcd) #0 {
entry:
  %r_ij = alloca [3 x float], align 4
  %r_kj = alloca [3 x float], align 4
  %r_kl = alloca [3 x float], align 4
  %m = alloca [3 x float], align 4
  %n = alloca [3 x float], align 4
  %cos_phi = alloca float, align 4
  %sign = alloca float, align 4
  %cmp76 = icmp sgt i32 %nbonds, 0
  br i1 %cmp76, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %arraydecay24 = getelementptr inbounds [3 x float]* %r_ij, i64 0, i64 0
  %arraydecay25 = getelementptr inbounds [3 x float]* %r_kj, i64 0, i64 0
  %arraydecay26 = getelementptr inbounds [3 x float]* %r_kl, i64 0, i64 0
  %arraydecay27 = getelementptr inbounds [3 x float]* %m, i64 0, i64 0
  %arraydecay28 = getelementptr inbounds [3 x float]* %n, i64 0, i64 0
  %conv1.i = fsub float 1.000000e+00, %lambda
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %vtot.078 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %add44, %for.body ]
  %0 = add nsw i64 %indvars.iv, 1
  %arrayidx = getelementptr inbounds i32* %forceatoms, i64 %indvars.iv
  %1 = load i32* %arrayidx, align 4, !tbaa !3
  %2 = add nsw i64 %indvars.iv, 2
  %arrayidx3 = getelementptr inbounds i32* %forceatoms, i64 %0
  %3 = load i32* %arrayidx3, align 4, !tbaa !3
  %4 = add nsw i64 %indvars.iv, 3
  %arrayidx6 = getelementptr inbounds i32* %forceatoms, i64 %2
  %5 = load i32* %arrayidx6, align 4, !tbaa !3
  %6 = add nsw i64 %indvars.iv, 4
  %arrayidx9 = getelementptr inbounds i32* %forceatoms, i64 %4
  %7 = load i32* %arrayidx9, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 5
  %arrayidx12 = getelementptr inbounds i32* %forceatoms, i64 %6
  %8 = load i32* %arrayidx12, align 4, !tbaa !3
  %idxprom13 = sext i32 %3 to i64
  %arraydecay = getelementptr inbounds [3 x float]* %x, i64 %idxprom13, i64 0
  %idxprom15 = sext i32 %5 to i64
  %arraydecay17 = getelementptr inbounds [3 x float]* %x, i64 %idxprom15, i64 0
  %idxprom18 = sext i32 %7 to i64
  %arraydecay20 = getelementptr inbounds [3 x float]* %x, i64 %idxprom18, i64 0
  %idxprom21 = sext i32 %8 to i64
  %arraydecay23 = getelementptr inbounds [3 x float]* %x, i64 %idxprom21, i64 0
  %call = call float @dih_angle([3 x float]* undef, float* %arraydecay, float* %arraydecay17, float* %arraydecay20, float* %arraydecay23, float* %arraydecay24, float* %arraydecay25, float* %arraydecay26, float* %arraydecay27, float* %arraydecay28, float* %cos_phi, float* %sign) #7
  %idxprom29 = sext i32 %1 to i64
  %9 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %idxprom29, i32 0, i32 1
  %10 = load float* %9, align 4, !tbaa !0
  %11 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %idxprom29, i32 0, i32 4
  %12 = load float* %11, align 4, !tbaa !0
  %phiA = getelementptr inbounds %union.t_iparams* %forceparams, i64 %idxprom29, i32 0, i32 0
  %13 = load float* %phiA, align 4, !tbaa !0
  %14 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %idxprom29, i32 0, i32 3
  %15 = load float* %14, align 4, !tbaa !0
  %mult = getelementptr inbounds %union.t_iparams* %forceparams, i64 %idxprom29, i32 0, i32 2
  %16 = bitcast float* %mult to i32*
  %17 = load i32* %16, align 4, !tbaa !3
  %mul.i = fmul float %conv1.i, %13
  %mul2.i = fmul float %15, %lambda
  %add.i = fadd float %mul.i, %mul2.i
  %conv3.i = fpext float %add.i to double
  %mul4.i = fmul double %conv3.i, 0x3F91DF46A2529D39
  %conv5.i = fptrunc double %mul4.i to float
  %mul6.i = fmul float %conv1.i, %10
  %mul7.i = fmul float %12, %lambda
  %add8.i = fadd float %mul6.i, %mul7.i
  %conv9.i = sitofp i32 %17 to float
  %mul10.i = fmul float %call, %conv9.i
  %sub11.i = fsub float %mul10.i, %conv5.i
  %conv12.i = fpext float %sub11.i to double
  %call.i = call double @sin(double %conv12.i) #5
  %conv13.i = fptrunc double %call.i to float
  %18 = fmul float %add8.i, %conv9.i
  %19 = fmul float %18, %conv13.i
  %mul17.i = fsub float -0.000000e+00, %19
  %call19.i = call double @cos(double %conv12.i) #5
  %add20.i = fadd double %call19.i, 1.000000e+00
  %conv21.i = fptrunc double %add20.i to float
  %mul22.i = fmul float %add8.i, %conv21.i
  %sub23.i = fsub float %12, %10
  %mul24.i = fmul float %sub23.i, %conv21.i
  %sub25.i = fsub float %13, %15
  %mul26.i = fmul float %add8.i, %sub25.i
  %mul27.i = fmul float %mul26.i, %conv13.i
  %sub28.i = fsub float %mul24.i, %mul27.i
  %20 = load float* %dvdlambda, align 4, !tbaa !0
  %add = fadd float %20, %sub28.i
  store float %add, float* %dvdlambda, align 4, !tbaa !0
  %add44 = fadd float %vtot.078, %mul22.i
  call void @do_dih_fup(i32 %3, i32 %5, i32 %7, i32 %8, float %mul17.i, float* %arraydecay24, float* %arraydecay25, float* %arraydecay26, float* %arraydecay27, float* %arraydecay28, [3 x float]* %f, %struct.t_forcerec* %fr, %struct.t_graph* %g, [3 x float]* undef) #7
  %21 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %21, %nbonds
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  %vtot.0.lcssa = phi float [ 0.000000e+00, %entry ], [ %add44, %for.body ]
  ret float %vtot.0.lcssa
}

; Function Attrs: nounwind optsize uwtable
define float @idihs(i32 %nbonds, i32* nocapture %forceatoms, %union.t_iparams* nocapture %forceparams, [3 x float]* nocapture %x, [3 x float]* nocapture %f, %struct.t_forcerec* nocapture %fr, %struct.t_graph* nocapture %g, [3 x float]* nocapture %box, float %lambda, float* nocapture %dvdlambda, %struct.t_mdatoms* nocapture %md, i32 %ngrp, float* nocapture %egnb, float* nocapture %egcoul, %struct.t_fcdata* nocapture %fcd) #0 {
entry:
  %cos_phi = alloca float, align 4
  %sign = alloca float, align 4
  %r_ij = alloca [3 x float], align 4
  %r_kj = alloca [3 x float], align 4
  %r_kl = alloca [3 x float], align 4
  %m = alloca [3 x float], align 4
  %n = alloca [3 x float], align 4
  %cmp75 = icmp sgt i32 %nbonds, 0
  br i1 %cmp75, label %for.body.lr.ph, label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %arraydecay24 = getelementptr inbounds [3 x float]* %r_ij, i64 0, i64 0
  %arraydecay25 = getelementptr inbounds [3 x float]* %r_kj, i64 0, i64 0
  %arraydecay26 = getelementptr inbounds [3 x float]* %r_kl, i64 0, i64 0
  %arraydecay27 = getelementptr inbounds [3 x float]* %m, i64 0, i64 0
  %arraydecay28 = getelementptr inbounds [3 x float]* %n, i64 0, i64 0
  %conv1.i = fsub float 1.000000e+00, %lambda
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %vtot.077 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %add45, %for.body ]
  %0 = add nsw i64 %indvars.iv, 1
  %arrayidx = getelementptr inbounds i32* %forceatoms, i64 %indvars.iv
  %1 = load i32* %arrayidx, align 4, !tbaa !3
  %2 = add nsw i64 %indvars.iv, 2
  %arrayidx3 = getelementptr inbounds i32* %forceatoms, i64 %0
  %3 = load i32* %arrayidx3, align 4, !tbaa !3
  %4 = add nsw i64 %indvars.iv, 3
  %arrayidx6 = getelementptr inbounds i32* %forceatoms, i64 %2
  %5 = load i32* %arrayidx6, align 4, !tbaa !3
  %6 = add nsw i64 %indvars.iv, 4
  %arrayidx9 = getelementptr inbounds i32* %forceatoms, i64 %4
  %7 = load i32* %arrayidx9, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 5
  %arrayidx12 = getelementptr inbounds i32* %forceatoms, i64 %6
  %8 = load i32* %arrayidx12, align 4, !tbaa !3
  %idxprom13 = sext i32 %3 to i64
  %arraydecay = getelementptr inbounds [3 x float]* %x, i64 %idxprom13, i64 0
  %idxprom15 = sext i32 %5 to i64
  %arraydecay17 = getelementptr inbounds [3 x float]* %x, i64 %idxprom15, i64 0
  %idxprom18 = sext i32 %7 to i64
  %arraydecay20 = getelementptr inbounds [3 x float]* %x, i64 %idxprom18, i64 0
  %idxprom21 = sext i32 %8 to i64
  %arraydecay23 = getelementptr inbounds [3 x float]* %x, i64 %idxprom21, i64 0
  %call = call float @dih_angle([3 x float]* undef, float* %arraydecay, float* %arraydecay17, float* %arraydecay20, float* %arraydecay23, float* %arraydecay24, float* %arraydecay25, float* %arraydecay26, float* %arraydecay27, float* %arraydecay28, float* %cos_phi, float* %sign) #7
  %idxprom29 = sext i32 %1 to i64
  %9 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %idxprom29, i32 0, i32 1
  %10 = load float* %9, align 4, !tbaa !0
  %11 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %idxprom29, i32 0, i32 3
  %12 = load float* %11, align 4, !tbaa !0
  %rA = getelementptr inbounds %union.t_iparams* %forceparams, i64 %idxprom29, i32 0, i32 0
  %13 = load float* %rA, align 4, !tbaa !0
  %conv = fpext float %13 to double
  %mul = fmul double %conv, 0x3F91DF46A2529D39
  %conv37 = fptrunc double %mul to float
  %14 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %idxprom29, i32 0, i32 2
  %15 = load float* %14, align 4, !tbaa !0
  %conv41 = fpext float %15 to double
  %mul42 = fmul double %conv41, 0x3F91DF46A2529D39
  %conv43 = fptrunc double %mul42 to float
  %mul.i = fmul float %conv1.i, %10
  %mul2.i = fmul float %12, %lambda
  %add.i = fadd float %mul.i, %mul2.i
  %mul3.i = fmul float %conv1.i, %conv37
  %mul4.i = fmul float %conv43, %lambda
  %add5.i = fadd float %mul3.i, %mul4.i
  %sub6.i = fsub float %call, %add5.i
  %mul7.i = fmul float %sub6.i, %sub6.i
  %16 = fmul float %add.i, %sub6.i
  %mul10.i = fmul float %add.i, 5.000000e-01
  %mul11.i = fmul float %mul10.i, %mul7.i
  %sub12.i = fsub float %12, %10
  %mul13.i = fmul float %sub12.i, 5.000000e-01
  %mul14.i = fmul float %mul13.i, %mul7.i
  %sub15.i = fsub float %conv37, %conv43
  %mul16.i = fmul float %add.i, %sub15.i
  %mul17.i = fmul float %mul16.i, %sub6.i
  %add18.i = fadd float %mul17.i, %mul14.i
  %17 = load float* %dvdlambda, align 4, !tbaa !0
  %add = fadd float %17, %add18.i
  store float %add, float* %dvdlambda, align 4, !tbaa !0
  %add45 = fadd float %vtot.077, %mul11.i
  call void @do_dih_fup(i32 %3, i32 %5, i32 %7, i32 %8, float %16, float* %arraydecay24, float* %arraydecay25, float* %arraydecay26, float* %arraydecay27, float* %arraydecay28, [3 x float]* %f, %struct.t_forcerec* %fr, %struct.t_graph* %g, [3 x float]* undef) #7
  %18 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %18, %nbonds
  br i1 %cmp, label %for.body, label %for.end

for.end:                                          ; preds = %for.body, %entry
  %vtot.0.lcssa = phi float [ 0.000000e+00, %entry ], [ %add45, %for.body ]
  ret float %vtot.0.lcssa
}

; Function Attrs: nounwind optsize uwtable
define float @posres(i32 %nbonds, i32* nocapture %forceatoms, %union.t_iparams* %forceparams, [3 x float]* %x, [3 x float]* nocapture %f, %struct.t_forcerec* nocapture %fr, %struct.t_graph* nocapture %g, [3 x float]* nocapture %box, float %lambda, float* nocapture %dvdlambda, %struct.t_mdatoms* nocapture %md, i32 %ngrp, float* nocapture %egnb, float* nocapture %egcoul, %struct.t_fcdata* nocapture %fcd) #0 {
entry:
  %dx = alloca [3 x float], align 4
  %cmp78 = icmp sgt i32 %nbonds, 0
  br i1 %cmp78, label %for.body.lr.ph, label %for.end55

for.body.lr.ph:                                   ; preds = %entry
  %ePBC = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 0
  %arraydecay15 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 0
  %arrayidx9.i = getelementptr inbounds [3 x float]* %dx, i64 0, i64 1
  %arrayidx10.i = getelementptr inbounds [3 x float]* %dx, i64 0, i64 2
  br label %for.body

for.body:                                         ; preds = %for.end, %for.body.lr.ph
  %indvars.iv81 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next82, %for.end ]
  %vtot.079 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %add54, %for.end ]
  %0 = or i64 %indvars.iv81, 1
  %arrayidx = getelementptr inbounds i32* %forceatoms, i64 %indvars.iv81
  %1 = load i32* %arrayidx, align 4, !tbaa !3
  %indvars.iv.next82 = add i64 %indvars.iv81, 2
  %arrayidx3 = getelementptr inbounds i32* %forceatoms, i64 %0
  %2 = load i32* %arrayidx3, align 4, !tbaa !3
  %idxprom4 = sext i32 %1 to i64
  %fc6 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %idxprom4, i32 0, i32 3
  %3 = load i32* %ePBC, align 4, !tbaa !3
  %cmp7 = icmp eq i32 %3, 1
  %idxprom8 = sext i32 %2 to i64
  %arraydecay10 = getelementptr inbounds [3 x float]* %x, i64 %idxprom8, i64 0
  %arraydecay14 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %idxprom4, i32 0, i32 0
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %4 = load float* %arraydecay10, align 4, !tbaa !0
  %5 = load float* %arraydecay14, align 4, !tbaa !0
  %sub.i = fsub float %4, %5
  %arrayidx2.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom8, i64 1
  %6 = load float* %arrayidx2.i, align 4, !tbaa !0
  %arrayidx3.i = getelementptr inbounds float* %arraydecay14, i64 1
  %7 = load float* %arrayidx3.i, align 4, !tbaa !0
  %sub4.i = fsub float %6, %7
  %arrayidx5.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom8, i64 2
  %8 = load float* %arrayidx5.i, align 4, !tbaa !0
  %arrayidx6.i = getelementptr inbounds float* %arraydecay14, i64 2
  %9 = load float* %arrayidx6.i, align 4, !tbaa !0
  %sub7.i = fsub float %8, %9
  store float %sub.i, float* %arraydecay15, align 4, !tbaa !0
  store float %sub4.i, float* %arrayidx9.i, align 4, !tbaa !0
  store float %sub7.i, float* %arrayidx10.i, align 4, !tbaa !0
  br label %for.body27

if.else:                                          ; preds = %for.body
  call void @pbc_dx(float* %arraydecay10, float* %arraydecay14, float* %arraydecay15) #5
  br label %for.body27

for.body27:                                       ; preds = %if.then, %if.else, %for.body27.for.body27_crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body27.for.body27_crit_edge ], [ 0, %if.else ], [ 0, %if.then ]
  %v.076 = phi double [ %phitmp, %for.body27.for.body27_crit_edge ], [ 0.000000e+00, %if.else ], [ 0.000000e+00, %if.then ]
  %arrayidx31 = getelementptr inbounds [3 x float]* %f, i64 %idxprom8, i64 %indvars.iv
  %10 = load float* %arrayidx31, align 4, !tbaa !0
  %arrayidx33 = getelementptr inbounds float* %fc6, i64 %indvars.iv
  %11 = load float* %arrayidx33, align 4, !tbaa !0
  %arrayidx35 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 %indvars.iv
  %12 = load float* %arrayidx35, align 4, !tbaa !0
  %mul = fmul float %11, %12
  %sub = fsub float %10, %mul
  %conv = fpext float %11 to double
  %mul38 = fmul double %conv, 5.000000e-01
  %conv41 = fpext float %12 to double
  %mul42 = fmul double %mul38, %conv41
  %mul46 = fmul double %conv41, %mul42
  %add = fadd double %v.076, %mul46
  %conv48 = fptrunc double %add to float
  store float %sub, float* %arrayidx31, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end, label %for.body27.for.body27_crit_edge

for.body27.for.body27_crit_edge:                  ; preds = %for.body27
  %phitmp = fpext float %conv48 to double
  br label %for.body27

for.end:                                          ; preds = %for.body27
  %add54 = fadd float %vtot.079, %conv48
  %13 = trunc i64 %indvars.iv.next82 to i32
  %cmp = icmp slt i32 %13, %nbonds
  br i1 %cmp, label %for.body, label %for.end55

for.end55:                                        ; preds = %for.end, %entry
  %vtot.0.lcssa = phi float [ 0.000000e+00, %entry ], [ %add54, %for.end ]
  ret float %vtot.0.lcssa
}

; Function Attrs: nounwind optsize uwtable
define float @angres(i32 %nbonds, i32* nocapture %forceatoms, %union.t_iparams* nocapture %forceparams, [3 x float]* nocapture %x, [3 x float]* nocapture %f, %struct.t_forcerec* nocapture %fr, %struct.t_graph* nocapture %g, [3 x float]* nocapture %box, float %lambda, float* nocapture %dvdlambda, %struct.t_mdatoms* nocapture %md, i32 %ngrp, float* nocapture %egnb, float* nocapture %egcoul, %struct.t_fcdata* nocapture %fcd) #0 {
entry:
  %call = tail call fastcc float @low_angres(i32 %nbonds, i32* %forceatoms, %union.t_iparams* %forceparams, [3 x float]* %x, [3 x float]* %f, %struct.t_forcerec* %fr, %struct.t_graph* %g, float %lambda, float* %dvdlambda, i32 0) #7
  ret float %call
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc float @low_angres(i32 %nbonds, i32* nocapture %forceatoms, %union.t_iparams* nocapture %forceparams, [3 x float]* nocapture %x, [3 x float]* nocapture %f, %struct.t_forcerec* nocapture %fr, %struct.t_graph* nocapture %g, float %lambda, float* nocapture %dvdlambda, i32 %bZAxis) #0 {
entry:
  %r_ij = alloca [3 x float], align 4
  %r_kl = alloca [3 x float], align 4
  %f_i = alloca [3 x float], align 4
  %f_k = alloca [3 x float], align 4
  %cmp85 = icmp sgt i32 %nbonds, 0
  br i1 %cmp85, label %for.body.lr.ph, label %for.end194

for.body.lr.ph:                                   ; preds = %entry
  %arraydecay12 = getelementptr inbounds [3 x float]* %r_ij, i64 0, i64 0
  %arrayidx9.i.i = getelementptr inbounds [3 x float]* %r_ij, i64 0, i64 1
  %arrayidx10.i.i = getelementptr inbounds [3 x float]* %r_ij, i64 0, i64 2
  %tobool = icmp ne i32 %bZAxis, 0
  %arrayidx26 = getelementptr inbounds [3 x float]* %r_kl, i64 0, i64 0
  %arrayidx27 = getelementptr inbounds [3 x float]* %r_kl, i64 0, i64 1
  %arrayidx28 = getelementptr inbounds [3 x float]* %r_kl, i64 0, i64 2
  %conv1.i = fsub float 1.000000e+00, %lambda
  %start = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 3
  %ishift = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 7
  %fshift = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 58
  %arraydecay151 = getelementptr inbounds [3 x float]* %f_i, i64 0, i64 0
  %arrayidx3.i30 = getelementptr inbounds [3 x float]* %f_i, i64 0, i64 1
  %arrayidx6.i33 = getelementptr inbounds [3 x float]* %f_i, i64 0, i64 2
  %arraydecay188 = getelementptr inbounds [3 x float]* %f_k, i64 0, i64 0
  %arrayidx3.i2 = getelementptr inbounds [3 x float]* %f_k, i64 0, i64 1
  %arrayidx6.i4 = getelementptr inbounds [3 x float]* %f_k, i64 0, i64 2
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.cond.backedge
  %i.089 = phi i32 [ 0, %for.body.lr.ph ], [ %i.1, %for.cond.backedge ]
  %ak.088 = phi i32 [ 0, %for.body.lr.ph ], [ %ak.1, %for.cond.backedge ]
  %al.087 = phi i32 [ 0, %for.body.lr.ph ], [ %al.1, %for.cond.backedge ]
  %vtot.086 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %add48, %for.cond.backedge ]
  %inc = add nsw i32 %i.089, 1
  %idxprom = sext i32 %i.089 to i64
  %arrayidx = getelementptr inbounds i32* %forceatoms, i64 %idxprom
  %0 = load i32* %arrayidx, align 4, !tbaa !3
  %inc1 = add nsw i32 %i.089, 2
  %idxprom2 = sext i32 %inc to i64
  %arrayidx3 = getelementptr inbounds i32* %forceatoms, i64 %idxprom2
  %1 = load i32* %arrayidx3, align 4, !tbaa !3
  %inc4 = add nsw i32 %i.089, 3
  %idxprom5 = sext i32 %inc1 to i64
  %arrayidx6 = getelementptr inbounds i32* %forceatoms, i64 %idxprom5
  %2 = load i32* %arrayidx6, align 4, !tbaa !3
  %idxprom7 = sext i32 %2 to i64
  %arraydecay = getelementptr inbounds [3 x float]* %x, i64 %idxprom7, i64 0
  %idxprom9 = sext i32 %1 to i64
  %arraydecay11 = getelementptr inbounds [3 x float]* %x, i64 %idxprom9, i64 0
  %3 = load float* %arraydecay, align 4, !tbaa !0
  %4 = load float* %arraydecay11, align 4, !tbaa !0
  %sub.i.i = fsub float %3, %4
  %arrayidx2.i.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom7, i64 1
  %5 = load float* %arrayidx2.i.i, align 4, !tbaa !0
  %arrayidx3.i.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom9, i64 1
  %6 = load float* %arrayidx3.i.i, align 4, !tbaa !0
  %sub4.i.i = fsub float %5, %6
  %arrayidx5.i.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom7, i64 2
  %7 = load float* %arrayidx5.i.i, align 4, !tbaa !0
  %arrayidx6.i.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom9, i64 2
  %8 = load float* %arrayidx6.i.i, align 4, !tbaa !0
  %sub7.i.i = fsub float %7, %8
  store float %sub.i.i, float* %arraydecay12, align 4, !tbaa !0
  store float %sub4.i.i, float* %arrayidx9.i.i, align 4, !tbaa !0
  store float %sub7.i.i, float* %arrayidx10.i.i, align 4, !tbaa !0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %inc13 = add nsw i32 %i.089, 4
  %idxprom14 = sext i32 %inc4 to i64
  %arrayidx15 = getelementptr inbounds i32* %forceatoms, i64 %idxprom14
  %9 = load i32* %arrayidx15, align 4, !tbaa !3
  %inc16 = add nsw i32 %i.089, 5
  %idxprom17 = sext i32 %inc13 to i64
  %arrayidx18 = getelementptr inbounds i32* %forceatoms, i64 %idxprom17
  %10 = load i32* %arrayidx18, align 4, !tbaa !3
  %idxprom19 = sext i32 %10 to i64
  %arraydecay21 = getelementptr inbounds [3 x float]* %x, i64 %idxprom19, i64 0
  %idxprom22 = sext i32 %9 to i64
  %arraydecay24 = getelementptr inbounds [3 x float]* %x, i64 %idxprom22, i64 0
  %11 = load float* %arraydecay21, align 4, !tbaa !0
  %12 = load float* %arraydecay24, align 4, !tbaa !0
  %sub.i.i63 = fsub float %11, %12
  %arrayidx2.i.i64 = getelementptr inbounds [3 x float]* %x, i64 %idxprom19, i64 1
  %13 = load float* %arrayidx2.i.i64, align 4, !tbaa !0
  %arrayidx3.i.i65 = getelementptr inbounds [3 x float]* %x, i64 %idxprom22, i64 1
  %14 = load float* %arrayidx3.i.i65, align 4, !tbaa !0
  %sub4.i.i66 = fsub float %13, %14
  %arrayidx5.i.i67 = getelementptr inbounds [3 x float]* %x, i64 %idxprom19, i64 2
  %15 = load float* %arrayidx5.i.i67, align 4, !tbaa !0
  %arrayidx6.i.i68 = getelementptr inbounds [3 x float]* %x, i64 %idxprom22, i64 2
  %16 = load float* %arrayidx6.i.i68, align 4, !tbaa !0
  %sub7.i.i69 = fsub float %15, %16
  br label %if.end

if.end:                                           ; preds = %for.body, %if.then
  %storemerge96 = phi float [ %sub.i.i63, %if.then ], [ 0.000000e+00, %for.body ]
  %storemerge95 = phi float [ %sub4.i.i66, %if.then ], [ 0.000000e+00, %for.body ]
  %storemerge = phi float [ %sub7.i.i69, %if.then ], [ 1.000000e+00, %for.body ]
  %al.1 = phi i32 [ %10, %if.then ], [ %al.087, %for.body ]
  %ak.1 = phi i32 [ %9, %if.then ], [ %ak.088, %for.body ]
  %i.1 = phi i32 [ %inc16, %if.then ], [ %inc4, %for.body ]
  store float %storemerge96, float* %arrayidx26, align 4, !tbaa !0
  store float %storemerge95, float* %arrayidx27, align 4, !tbaa !0
  store float %storemerge, float* %arrayidx28, align 4, !tbaa !0
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end
  %17 = phi float [ %storemerge96, %if.end ], [ %.pre92, %for.body.i.for.body.i_crit_edge ]
  %18 = phi float [ %sub.i.i, %if.end ], [ %.pre, %for.body.i.for.body.i_crit_edge ]
  %indvars.iv.i = phi i64 [ 1, %if.end ], [ %phitmp, %for.body.i.for.body.i_crit_edge ]
  %ipb.034.i = phi double [ 0.000000e+00, %if.end ], [ %add7.i78, %for.body.i.for.body.i_crit_edge ]
  %ipa.033.i = phi double [ 0.000000e+00, %if.end ], [ %add5.i, %for.body.i.for.body.i_crit_edge ]
  %ip.032.i = phi double [ 0.000000e+00, %if.end ], [ %add.i75, %for.body.i.for.body.i_crit_edge ]
  %conv.i = fpext float %18 to double
  %conv3.i73 = fpext float %17 to double
  %mul.i74 = fmul double %conv.i, %conv3.i73
  %add.i75 = fadd double %ip.032.i, %mul.i74
  %mul4.i76 = fmul double %conv.i, %conv.i
  %add5.i = fadd double %ipa.033.i, %mul4.i76
  %mul6.i77 = fmul double %conv3.i73, %conv3.i73
  %add7.i78 = fadd double %ipb.034.i, %mul6.i77
  %lftr.wideiv = trunc i64 %indvars.iv.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  %arrayidx.i.phi.trans.insert = getelementptr inbounds [3 x float]* %r_ij, i64 0, i64 %indvars.iv.i
  %.pre = load float* %arrayidx.i.phi.trans.insert, align 4, !tbaa !0
  %arrayidx2.i72.phi.trans.insert = getelementptr inbounds [3 x float]* %r_kl, i64 0, i64 %indvars.iv.i
  %.pre92 = load float* %arrayidx2.i72.phi.trans.insert, align 4, !tbaa !0
  %phitmp = add i64 %indvars.iv.i, 1
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %mul8.i = fmul double %add5.i, %add7.i78
  %call.i79 = call double @sqrt(double %mul8.i) #5
  %div.i = fdiv double 1.000000e+00, %call.i79
  %mul9.i = fmul double %add.i75, %div.i
  %conv10.i = fptrunc double %mul9.i to float
  %cmp12.i = fcmp ogt float %conv10.i, 1.000000e+00
  br i1 %cmp12.i, label %cos_angle.exit, label %if.end.i

if.end.i:                                         ; preds = %for.end.i
  %cmp15.i = fcmp olt float %conv10.i, -1.000000e+00
  %.conv10.i = select i1 %cmp15.i, float -1.000000e+00, float %conv10.i
  br label %cos_angle.exit

cos_angle.exit:                                   ; preds = %for.end.i, %if.end.i
  %retval.0.i = phi float [ 1.000000e+00, %for.end.i ], [ %.conv10.i, %if.end.i ]
  %conv = fpext float %retval.0.i to double
  %call31 = call double @acos(double %conv) #5
  %conv32 = fptrunc double %call31 to float
  %idxprom33 = sext i32 %0 to i64
  %19 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %idxprom33, i32 0, i32 1
  %20 = load float* %19, align 4, !tbaa !0
  %21 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %idxprom33, i32 0, i32 4
  %22 = load float* %21, align 4, !tbaa !0
  %phiA = getelementptr inbounds %union.t_iparams* %forceparams, i64 %idxprom33, i32 0, i32 0
  %23 = load float* %phiA, align 4, !tbaa !0
  %24 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %idxprom33, i32 0, i32 3
  %25 = load float* %24, align 4, !tbaa !0
  %mult = getelementptr inbounds %union.t_iparams* %forceparams, i64 %idxprom33, i32 0, i32 2
  %26 = bitcast float* %mult to i32*
  %27 = load i32* %26, align 4, !tbaa !3
  %mul.i58 = fmul float %conv1.i, %23
  %mul2.i = fmul float %25, %lambda
  %add.i59 = fadd float %mul.i58, %mul2.i
  %conv3.i = fpext float %add.i59 to double
  %mul4.i60 = fmul double %conv3.i, 0x3F91DF46A2529D39
  %conv5.i = fptrunc double %mul4.i60 to float
  %mul6.i = fmul float %conv1.i, %20
  %mul7.i61 = fmul float %22, %lambda
  %add8.i62 = fadd float %mul6.i, %mul7.i61
  %conv9.i = sitofp i32 %27 to float
  %sub10.i = fsub float %conv32, %conv5.i
  %mul11.i = fmul float %conv9.i, %sub10.i
  %conv12.i = fpext float %mul11.i to double
  %call.i = call double @sin(double %conv12.i) #5
  %conv13.i = fptrunc double %call.i to float
  %mul15.i = fmul float %add8.i62, %conv9.i
  %mul16.i = fmul float %mul15.i, %conv13.i
  %call18.i = call double @cos(double %conv12.i) #5
  %sub19.i = fsub double 1.000000e+00, %call18.i
  %conv20.i = fptrunc double %sub19.i to float
  %sub22.i = fsub float %22, %20
  %mul23.i = fmul float %sub22.i, %conv20.i
  %sub24.i = fsub float %23, %25
  %mul25.i = fmul float %add8.i62, %sub24.i
  %mul26.i = fmul float %mul25.i, %conv13.i
  %sub27.i = fsub float %mul23.i, %mul26.i
  %28 = load float* %dvdlambda, align 4, !tbaa !0
  %add = fadd float %28, %sub27.i
  store float %add, float* %dvdlambda, align 4, !tbaa !0
  %conv49 = fpext float %conv32 to double
  %call50 = call double @sin(double %conv49) #5
  %conv51 = fptrunc double %call50 to float
  %fabsf = call float @fabsf(float %conv51) #6
  %29 = fpext float %fabsf to double
  %cmp54 = fcmp olt double %29, 1.000000e-12
  %sin_phi.0 = select i1 %cmp54, float 0x3D71979980000000, float %conv51
  %sub = fsub float -0.000000e+00, %mul16.i
  %div = fdiv float %sub, %sin_phi.0
  %mul = fmul float %retval.0.i, %div
  %mul.i49 = fmul float %sub.i.i, %sub.i.i
  %mul4.i52 = fmul float %sub4.i.i, %sub4.i.i
  %add.i53 = fadd float %mul.i49, %mul4.i52
  %mul7.i56 = fmul float %sub7.i.i, %sub7.i.i
  %add8.i57 = fadd float %add.i53, %mul7.i56
  %mul.i = fmul float %storemerge96, %storemerge96
  %mul4.i = fmul float %storemerge95, %storemerge95
  %add.i46 = fadd float %mul.i, %mul4.i
  %mul7.i = fmul float %storemerge, %storemerge
  %add8.i = fadd float %add.i46, %mul7.i
  %conv64 = fpext float %div to double
  %mul65 = fmul float %add8.i57, %add8.i
  %conv66 = fpext float %mul65 to double
  %call67 = call double @sqrt(double %conv66) #5
  %div68 = fdiv double 1.000000e+00, %call67
  %mul69 = fmul double %conv64, %div68
  %conv70 = fptrunc double %mul69 to float
  %div71 = fdiv float %mul, %add8.i57
  %div72 = fdiv float %mul, %add8.i
  %idxprom114 = sext i32 %ak.1 to i64
  %idxprom121 = sext i32 %al.1 to i64
  br label %for.body76

for.body76:                                       ; preds = %for.inc.for.body76_crit_edge, %cos_angle.exit
  %30 = phi float [ %sub.i.i, %cos_angle.exit ], [ %.pre94, %for.inc.for.body76_crit_edge ]
  %31 = phi float [ %storemerge96, %cos_angle.exit ], [ %.pre93, %for.inc.for.body76_crit_edge ]
  %indvars.iv = phi i64 [ 0, %cos_angle.exit ], [ %indvars.iv.next, %for.inc.for.body76_crit_edge ]
  %mul79 = fmul float %conv70, %31
  %mul82 = fmul float %div71, %30
  %sub83 = fsub float %mul79, %mul82
  %arrayidx85 = getelementptr inbounds [3 x float]* %f_i, i64 0, i64 %indvars.iv
  store float %sub83, float* %arrayidx85, align 4, !tbaa !0
  %arrayidx91 = getelementptr inbounds [3 x float]* %f, i64 %idxprom9, i64 %indvars.iv
  %32 = load float* %arrayidx91, align 4, !tbaa !0
  %add92 = fadd float %32, %sub83
  store float %add92, float* %arrayidx91, align 4, !tbaa !0
  %arrayidx98 = getelementptr inbounds [3 x float]* %f, i64 %idxprom7, i64 %indvars.iv
  %33 = load float* %arrayidx98, align 4, !tbaa !0
  %sub99 = fsub float %33, %sub83
  store float %sub99, float* %arrayidx98, align 4, !tbaa !0
  br i1 %tobool, label %for.inc, label %if.then101

if.then101:                                       ; preds = %for.body76
  %mul104 = fmul float %conv70, %30
  %mul107 = fmul float %div72, %31
  %sub108 = fsub float %mul104, %mul107
  %arrayidx110 = getelementptr inbounds [3 x float]* %f_k, i64 0, i64 %indvars.iv
  store float %sub108, float* %arrayidx110, align 4, !tbaa !0
  %arrayidx116 = getelementptr inbounds [3 x float]* %f, i64 %idxprom114, i64 %indvars.iv
  %34 = load float* %arrayidx116, align 4, !tbaa !0
  %add117 = fadd float %34, %sub108
  store float %add117, float* %arrayidx116, align 4, !tbaa !0
  %arrayidx123 = getelementptr inbounds [3 x float]* %f, i64 %idxprom121, i64 %indvars.iv
  %35 = load float* %arrayidx123, align 4, !tbaa !0
  %sub124 = fsub float %35, %sub108
  store float %sub124, float* %arrayidx123, align 4, !tbaa !0
  br label %for.inc

for.inc:                                          ; preds = %for.body76, %if.then101
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv90 = trunc i64 %indvars.iv.next to i32
  %exitcond91 = icmp eq i32 %lftr.wideiv90, 3
  br i1 %exitcond91, label %for.end, label %for.inc.for.body76_crit_edge

for.inc.for.body76_crit_edge:                     ; preds = %for.inc
  %arrayidx78.phi.trans.insert = getelementptr inbounds [3 x float]* %r_kl, i64 0, i64 %indvars.iv.next
  %.pre93 = load float* %arrayidx78.phi.trans.insert, align 4, !tbaa !0
  %arrayidx81.phi.trans.insert = getelementptr inbounds [3 x float]* %r_ij, i64 0, i64 %indvars.iv.next
  %.pre94 = load float* %arrayidx81.phi.trans.insert, align 4, !tbaa !0
  br label %for.body76

for.end:                                          ; preds = %for.inc
  %mul21.i = fmul float %add8.i62, %conv20.i
  %add48 = fadd float %vtot.086, %mul21.i
  %36 = load i32* %start, align 4, !tbaa !3
  %sub127 = sub nsw i32 %1, %36
  %idxprom128 = sext i32 %sub127 to i64
  %37 = load [3 x i32]** %ishift, align 8, !tbaa !4
  %arraydecay130 = getelementptr inbounds [3 x i32]* %37, i64 %idxprom128, i64 0
  %sub132 = sub nsw i32 %2, %36
  %idxprom133 = sext i32 %sub132 to i64
  %arraydecay136 = getelementptr inbounds [3 x i32]* %37, i64 %idxprom133, i64 0
  %38 = load i32* %arraydecay130, align 4, !tbaa !3
  %39 = load i32* %arraydecay136, align 4, !tbaa !3
  %arrayidx2.i36 = getelementptr inbounds [3 x i32]* %37, i64 %idxprom128, i64 1
  %40 = load i32* %arrayidx2.i36, align 4, !tbaa !3
  %arrayidx3.i37 = getelementptr inbounds [3 x i32]* %37, i64 %idxprom133, i64 1
  %41 = load i32* %arrayidx3.i37, align 4, !tbaa !3
  %arrayidx5.i39 = getelementptr inbounds [3 x i32]* %37, i64 %idxprom128, i64 2
  %42 = load i32* %arrayidx5.i39, align 4, !tbaa !3
  %arrayidx6.i40 = getelementptr inbounds [3 x i32]* %37, i64 %idxprom133, i64 2
  %43 = load i32* %arrayidx6.i40, align 4, !tbaa !3
  %sub7.i41 = sub nsw i32 %42, %43
  %44 = mul i32 %sub7.i41, 3
  %sub4.i38 = add i32 %40, 3
  %mul140 = sub i32 %sub4.i38, %41
  %add142 = add i32 %mul140, %44
  %45 = mul i32 %add142, 3
  %mul144 = add i32 %38, 4
  %add146 = sub i32 %mul144, %39
  %add147 = add i32 %add146, %45
  %idxprom148 = sext i32 %add147 to i64
  %46 = load [3 x float]** %fshift, align 8, !tbaa !4
  %arraydecay150 = getelementptr inbounds [3 x float]* %46, i64 %idxprom148, i64 0
  %47 = load float* %arraydecay150, align 4, !tbaa !0
  %48 = load float* %arraydecay151, align 4, !tbaa !0
  %add.i28 = fadd float %47, %48
  %arrayidx2.i29 = getelementptr inbounds [3 x float]* %46, i64 %idxprom148, i64 1
  %49 = load float* %arrayidx2.i29, align 4, !tbaa !0
  %50 = load float* %arrayidx3.i30, align 4, !tbaa !0
  %add4.i31 = fadd float %49, %50
  %arrayidx5.i32 = getelementptr inbounds [3 x float]* %46, i64 %idxprom148, i64 2
  %51 = load float* %arrayidx5.i32, align 4, !tbaa !0
  %52 = load float* %arrayidx6.i33, align 4, !tbaa !0
  %add7.i34 = fadd float %51, %52
  store float %add.i28, float* %arraydecay150, align 4, !tbaa !0
  store float %add4.i31, float* %arrayidx2.i29, align 4, !tbaa !0
  store float %add7.i34, float* %arrayidx5.i32, align 4, !tbaa !0
  %arraydecay154 = getelementptr inbounds [3 x float]* %46, i64 13, i64 0
  %53 = load float* %arraydecay154, align 4, !tbaa !0
  %sub.i21 = fsub float %53, %48
  %arrayidx2.i22 = getelementptr inbounds [3 x float]* %46, i64 13, i64 1
  %54 = load float* %arrayidx2.i22, align 4, !tbaa !0
  %sub4.i24 = fsub float %54, %50
  %arrayidx5.i25 = getelementptr inbounds [3 x float]* %46, i64 13, i64 2
  %55 = load float* %arrayidx5.i25, align 4, !tbaa !0
  %sub7.i27 = fsub float %55, %52
  store float %sub.i21, float* %arraydecay154, align 4, !tbaa !0
  store float %sub4.i24, float* %arrayidx2.i22, align 4, !tbaa !0
  store float %sub7.i27, float* %arrayidx5.i25, align 4, !tbaa !0
  br i1 %tobool, label %for.cond.backedge, label %if.then157

if.then157:                                       ; preds = %for.end
  %arraydecay187 = getelementptr inbounds [3 x float]* %46, i64 0, i64 0
  %56 = load float* %arraydecay187, align 4, !tbaa !0
  %57 = load float* %arraydecay188, align 4, !tbaa !0
  %add.i = fadd float %56, %57
  %arrayidx2.i1 = getelementptr inbounds [3 x float]* %46, i64 0, i64 1
  %58 = load float* %arrayidx2.i1, align 4, !tbaa !0
  %59 = load float* %arrayidx3.i2, align 4, !tbaa !0
  %add4.i = fadd float %58, %59
  %arrayidx5.i3 = getelementptr inbounds [3 x float]* %46, i64 0, i64 2
  %60 = load float* %arrayidx5.i3, align 4, !tbaa !0
  %61 = load float* %arrayidx6.i4, align 4, !tbaa !0
  %add7.i = fadd float %60, %61
  store float %add.i, float* %arraydecay187, align 4, !tbaa !0
  store float %add4.i, float* %arrayidx2.i1, align 4, !tbaa !0
  store float %add7.i, float* %arrayidx5.i3, align 4, !tbaa !0
  %sub.i = fsub float %sub.i21, %57
  %sub4.i = fsub float %sub4.i24, %59
  %sub7.i = fsub float %sub7.i27, %61
  store float %sub.i, float* %arraydecay154, align 4, !tbaa !0
  store float %sub4.i, float* %arrayidx2.i22, align 4, !tbaa !0
  store float %sub7.i, float* %arrayidx5.i25, align 4, !tbaa !0
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.then157, %for.end
  %cmp = icmp slt i32 %i.1, %nbonds
  br i1 %cmp, label %for.body, label %for.end194

for.end194:                                       ; preds = %for.cond.backedge, %entry
  %vtot.0.lcssa = phi float [ 0.000000e+00, %entry ], [ %add48, %for.cond.backedge ]
  ret float %vtot.0.lcssa
}

; Function Attrs: nounwind optsize uwtable
define float @angresz(i32 %nbonds, i32* nocapture %forceatoms, %union.t_iparams* nocapture %forceparams, [3 x float]* nocapture %x, [3 x float]* nocapture %f, %struct.t_forcerec* nocapture %fr, %struct.t_graph* nocapture %g, [3 x float]* nocapture %box, float %lambda, float* nocapture %dvdlambda, %struct.t_mdatoms* nocapture %md, i32 %ngrp, float* nocapture %egnb, float* nocapture %egcoul, %struct.t_fcdata* nocapture %fcd) #0 {
entry:
  %call = tail call fastcc float @low_angres(i32 %nbonds, i32* %forceatoms, %union.t_iparams* %forceparams, [3 x float]* %x, [3 x float]* %f, %struct.t_forcerec* %fr, %struct.t_graph* %g, float %lambda, float* %dvdlambda, i32 1) #7
  ret float %call
}

; Function Attrs: nounwind optsize uwtable
define float @unimplemented(i32 %nbonds, i32* nocapture %forceatoms, %union.t_iparams* nocapture %forceparams, [3 x float]* nocapture %x, [3 x float]* nocapture %f, %struct.t_forcerec* nocapture %fr, %struct.t_graph* nocapture %g, [3 x float]* nocapture %box, float %lambda, float* nocapture %dvdlambda, %struct.t_mdatoms* nocapture %md, i32 %ngrp, float* nocapture %egnb, float* nocapture %egcoul, %struct.t_fcdata* nocapture %fcd) #0 {
entry:
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([45 x i8]* @.str4, i64 0, i64 0)) #5
  ret float 0.000000e+00
}

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: nounwind optsize uwtable
define float @rbdihs(i32 %nbonds, i32* nocapture %forceatoms, %union.t_iparams* nocapture %forceparams, [3 x float]* nocapture %x, [3 x float]* nocapture %f, %struct.t_forcerec* nocapture %fr, %struct.t_graph* nocapture %g, [3 x float]* nocapture %box, float %lambda, float* nocapture %dvdlambda, %struct.t_mdatoms* nocapture %md, i32 %ngrp, float* nocapture %egnb, float* nocapture %egcoul, %struct.t_fcdata* nocapture %fcd) #0 {
entry:
  %r_ij = alloca [3 x float], align 4
  %r_kj = alloca [3 x float], align 4
  %r_kl = alloca [3 x float], align 4
  %m = alloca [3 x float], align 4
  %n = alloca [3 x float], align 4
  %parm = alloca [6 x float], align 16
  %parm152 = bitcast [6 x float]* %parm to i8*
  %cos_phi = alloca float, align 4
  %sign = alloca float, align 4
  %cmp149 = icmp sgt i32 %nbonds, 0
  br i1 %cmp149, label %for.body.lr.ph, label %for.end90

for.body.lr.ph:                                   ; preds = %entry
  %arraydecay24 = getelementptr inbounds [3 x float]* %r_ij, i64 0, i64 0
  %arraydecay25 = getelementptr inbounds [3 x float]* %r_kj, i64 0, i64 0
  %arraydecay26 = getelementptr inbounds [3 x float]* %r_kl, i64 0, i64 0
  %arraydecay27 = getelementptr inbounds [3 x float]* %m, i64 0, i64 0
  %arraydecay28 = getelementptr inbounds [3 x float]* %n, i64 0, i64 0
  %arrayidx48 = getelementptr inbounds [6 x float]* %parm, i64 0, i64 0
  %arrayidx49 = getelementptr inbounds [6 x float]* %parm, i64 0, i64 1
  %arrayidx54 = getelementptr inbounds [6 x float]* %parm, i64 0, i64 2
  %arrayidx61 = getelementptr inbounds [6 x float]* %parm, i64 0, i64 3
  %arrayidx68 = getelementptr inbounds [6 x float]* %parm, i64 0, i64 4
  %arrayidx75 = getelementptr inbounds [6 x float]* %parm, i64 0, i64 5
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %if.end ]
  %vtot.0151 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %add89, %if.end ]
  %0 = add nsw i64 %indvars.iv, 1
  %arrayidx = getelementptr inbounds i32* %forceatoms, i64 %indvars.iv
  %1 = load i32* %arrayidx, align 4, !tbaa !3
  %2 = add nsw i64 %indvars.iv, 2
  %arrayidx3 = getelementptr inbounds i32* %forceatoms, i64 %0
  %3 = load i32* %arrayidx3, align 4, !tbaa !3
  %4 = add nsw i64 %indvars.iv, 3
  %arrayidx6 = getelementptr inbounds i32* %forceatoms, i64 %2
  %5 = load i32* %arrayidx6, align 4, !tbaa !3
  %6 = add nsw i64 %indvars.iv, 4
  %arrayidx9 = getelementptr inbounds i32* %forceatoms, i64 %4
  %7 = load i32* %arrayidx9, align 4, !tbaa !3
  %indvars.iv.next = add i64 %indvars.iv, 5
  %arrayidx12 = getelementptr inbounds i32* %forceatoms, i64 %6
  %8 = load i32* %arrayidx12, align 4, !tbaa !3
  %idxprom13 = sext i32 %3 to i64
  %arraydecay = getelementptr inbounds [3 x float]* %x, i64 %idxprom13, i64 0
  %idxprom15 = sext i32 %5 to i64
  %arraydecay17 = getelementptr inbounds [3 x float]* %x, i64 %idxprom15, i64 0
  %idxprom18 = sext i32 %7 to i64
  %arraydecay20 = getelementptr inbounds [3 x float]* %x, i64 %idxprom18, i64 0
  %idxprom21 = sext i32 %8 to i64
  %arraydecay23 = getelementptr inbounds [3 x float]* %x, i64 %idxprom21, i64 0
  %call = call float @dih_angle([3 x float]* undef, float* %arraydecay, float* %arraydecay17, float* %arraydecay20, float* %arraydecay23, float* %arraydecay24, float* %arraydecay25, float* %arraydecay26, float* %arraydecay27, float* %arraydecay28, float* %cos_phi, float* %sign) #7
  %cmp29 = fcmp olt float %call, 0.000000e+00
  %conv = fpext float %call to double
  br i1 %cmp29, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %add = fadd double %conv, 0x400921FB54442D18
  br label %if.end

if.else:                                          ; preds = %for.body
  %sub = fadd double %conv, 0xC00921FB54442D18
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %phi.0.in = phi double [ %add, %if.then ], [ %sub, %if.else ]
  %phi.0 = fptrunc double %phi.0.in to float
  %9 = load float* %cos_phi, align 4, !tbaa !0
  %sub33 = fsub float -0.000000e+00, %9
  store float %sub33, float* %cos_phi, align 4, !tbaa !0
  %conv34 = fpext float %phi.0 to double
  %call35 = call double @sin(double %conv34) #5
  %10 = sext i32 %1 to i64
  %scevgep = getelementptr %union.t_iparams* %forceparams, i64 %10
  %scevgep153 = bitcast %union.t_iparams* %scevgep to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %parm152, i8* %scevgep153, i64 24, i32 4, i1 false)
  %conv36 = fptrunc double %call35 to float
  %11 = load float* %arrayidx48, align 16, !tbaa !0
  %12 = load float* %arrayidx49, align 4, !tbaa !0
  %add50 = fadd float %12, 0.000000e+00
  %mul52 = fmul float %12, %sub33
  %add53 = fadd float %11, %mul52
  %13 = load float* %arrayidx54, align 8, !tbaa !0
  %mul55 = fmul float %13, 2.000000e+00
  %mul56 = fmul float %mul55, %sub33
  %add57 = fadd float %add50, %mul56
  %mul58 = fmul float %9, %9
  %mul59 = fmul float %mul58, %13
  %add60 = fadd float %add53, %mul59
  %14 = load float* %arrayidx61, align 4, !tbaa !0
  %mul62 = fmul float %14, 3.000000e+00
  %mul63 = fmul float %mul58, %mul62
  %add64 = fadd float %add57, %mul63
  %mul65 = fmul float %mul58, %sub33
  %mul66 = fmul float %mul65, %14
  %add67 = fadd float %add60, %mul66
  %15 = load float* %arrayidx68, align 16, !tbaa !0
  %mul69 = fmul float %15, 4.000000e+00
  %mul70 = fmul float %mul65, %mul69
  %add71 = fadd float %add64, %mul70
  %mul72 = fmul float %mul65, %sub33
  %mul73 = fmul float %mul72, %15
  %add74 = fadd float %add67, %mul73
  %16 = load float* %arrayidx75, align 4, !tbaa !0
  %mul76 = fmul float %16, 5.000000e+00
  %mul77 = fmul float %mul72, %mul76
  %add78 = fadd float %add71, %mul77
  %mul79 = fmul float %mul72, %sub33
  %mul80 = fmul float %mul79, %16
  %add81 = fadd float %add74, %mul80
  %17 = fmul float %conv36, %add78
  %mul83 = fsub float -0.000000e+00, %17
  call void @do_dih_fup(i32 %3, i32 %5, i32 %7, i32 %8, float %mul83, float* %arraydecay24, float* %arraydecay25, float* %arraydecay26, float* %arraydecay27, float* %arraydecay28, [3 x float]* %f, %struct.t_forcerec* %fr, %struct.t_graph* %g, [3 x float]* undef) #7
  %add89 = fadd float %vtot.0151, %add81
  %18 = trunc i64 %indvars.iv.next to i32
  %cmp = icmp slt i32 %18, %nbonds
  br i1 %cmp, label %for.body, label %for.end90

for.end90:                                        ; preds = %if.end, %entry
  %vtot.0.lcssa = phi float [ 0.000000e+00, %entry ], [ %add89, %if.end ]
  ret float %vtot.0.lcssa
}

; Function Attrs: nounwind optsize uwtable
define float @g96harmonic(float %kA, float %kB, float %xA, float %xB, float %x, float %lambda, float* nocapture %V, float* nocapture %F) #0 {
entry:
  %conv1 = fsub float 1.000000e+00, %lambda
  %mul = fmul float %conv1, %kA
  %mul2 = fmul float %kB, %lambda
  %add = fadd float %mul2, %mul
  %mul3 = fmul float %conv1, %xA
  %mul4 = fmul float %xB, %lambda
  %add5 = fadd float %mul4, %mul3
  %sub6 = fsub float %x, %add5
  %mul7 = fmul float %sub6, %sub6
  %0 = fmul float %add, %sub6
  %mul9 = fsub float -0.000000e+00, %0
  %mul10 = fmul float %add, 5.000000e-01
  %mul11 = fmul float %mul10, %mul7
  %sub12 = fsub float %kB, %kA
  %mul13 = fmul float %sub12, 5.000000e-01
  %mul14 = fmul float %mul13, %mul7
  %sub15 = fsub float %xA, %xB
  %mul16 = fmul float %sub15, %add
  %mul17 = fmul float %mul16, %sub6
  %add18 = fadd float %mul17, %mul14
  store float %mul9, float* %F, align 4, !tbaa !0
  store float %mul11, float* %V, align 4, !tbaa !0
  ret float %add18
}

; Function Attrs: nounwind optsize uwtable
define float @g96bonds(i32 %nbonds, i32* nocapture %forceatoms, %union.t_iparams* nocapture %forceparams, [3 x float]* nocapture %x, [3 x float]* nocapture %f, %struct.t_forcerec* nocapture %fr, %struct.t_graph* nocapture %g, [3 x float]* nocapture %box, float %lambda, float* nocapture %dvdlambda, %struct.t_mdatoms* nocapture %md, i32 %ngrp, float* nocapture %egnb, float* nocapture %egcoul, %struct.t_fcdata* nocapture %fcd) #0 {
entry:
  %dx = alloca [3 x float], align 4
  %cmp120 = icmp sgt i32 %nbonds, 0
  br i1 %cmp120, label %for.body.lr.ph, label %for.end78

for.body.lr.ph:                                   ; preds = %entry
  %arraydecay12 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 0
  %arrayidx9.i.i = getelementptr inbounds [3 x float]* %dx, i64 0, i64 1
  %arrayidx10.i.i = getelementptr inbounds [3 x float]* %dx, i64 0, i64 2
  %conv1.i = fsub float 1.000000e+00, %lambda
  %start = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 3
  %0 = load i32* %start, align 4, !tbaa !3
  %ishift = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 7
  %1 = load [3 x i32]** %ishift, align 8, !tbaa !4
  %fshift = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 58
  %2 = load [3 x float]** %fshift, align 8, !tbaa !4
  br label %for.body

for.cond.loopexit:                                ; preds = %for.body53
  %indvars.iv.next124 = add i64 %indvars.iv123, 3
  %conv29 = fptrunc double %add28 to float
  %3 = trunc i64 %indvars.iv.next124 to i32
  %cmp = icmp slt i32 %3, %nbonds
  br i1 %cmp, label %for.body, label %for.end78

for.body:                                         ; preds = %for.body.lr.ph, %for.cond.loopexit
  %indvars.iv123 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next124, %for.cond.loopexit ]
  %vtot.0122 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %conv29, %for.cond.loopexit ]
  %4 = add nsw i64 %indvars.iv123, 1
  %arrayidx = getelementptr inbounds i32* %forceatoms, i64 %indvars.iv123
  %5 = load i32* %arrayidx, align 4, !tbaa !3
  %6 = add nsw i64 %indvars.iv123, 2
  %arrayidx3 = getelementptr inbounds i32* %forceatoms, i64 %4
  %7 = load i32* %arrayidx3, align 4, !tbaa !3
  %arrayidx6 = getelementptr inbounds i32* %forceatoms, i64 %6
  %8 = load i32* %arrayidx6, align 4, !tbaa !3
  %idxprom7 = sext i32 %7 to i64
  %arraydecay = getelementptr inbounds [3 x float]* %x, i64 %idxprom7, i64 0
  %idxprom9 = sext i32 %8 to i64
  %arraydecay11 = getelementptr inbounds [3 x float]* %x, i64 %idxprom9, i64 0
  %9 = load float* %arraydecay, align 4, !tbaa !0
  %10 = load float* %arraydecay11, align 4, !tbaa !0
  %sub.i.i = fsub float %9, %10
  %arrayidx2.i.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom7, i64 1
  %11 = load float* %arrayidx2.i.i, align 4, !tbaa !0
  %arrayidx3.i.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom9, i64 1
  %12 = load float* %arrayidx3.i.i, align 4, !tbaa !0
  %sub4.i.i = fsub float %11, %12
  %arrayidx5.i.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom7, i64 2
  %13 = load float* %arrayidx5.i.i, align 4, !tbaa !0
  %arrayidx6.i.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom9, i64 2
  %14 = load float* %arrayidx6.i.i, align 4, !tbaa !0
  %sub7.i.i = fsub float %13, %14
  store float %sub.i.i, float* %arraydecay12, align 4, !tbaa !0
  store float %sub4.i.i, float* %arrayidx9.i.i, align 4, !tbaa !0
  store float %sub7.i.i, float* %arrayidx10.i.i, align 4, !tbaa !0
  %mul.i110 = fmul float %sub.i.i, %sub.i.i
  %mul4.i113 = fmul float %sub4.i.i, %sub4.i.i
  %add.i114 = fadd float %mul.i110, %mul4.i113
  %mul7.i117 = fmul float %sub7.i.i, %sub7.i.i
  %add8.i = fadd float %mul7.i117, %add.i114
  %idxprom15 = sext i32 %5 to i64
  %15 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %idxprom15, i32 0, i32 1
  %16 = load float* %15, align 4, !tbaa !0
  %17 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %idxprom15, i32 0, i32 3
  %18 = load float* %17, align 4, !tbaa !0
  %rA = getelementptr inbounds %union.t_iparams* %forceparams, i64 %idxprom15, i32 0, i32 0
  %19 = load float* %rA, align 4, !tbaa !0
  %20 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %idxprom15, i32 0, i32 2
  %21 = load float* %20, align 4, !tbaa !0
  %mul.i = fmul float %conv1.i, %16
  %mul2.i = fmul float %18, %lambda
  %add.i = fadd float %mul.i, %mul2.i
  %mul3.i = fmul float %conv1.i, %19
  %mul4.i = fmul float %21, %lambda
  %add5.i = fadd float %mul3.i, %mul4.i
  %sub6.i = fsub float %add8.i, %add5.i
  %mul7.i = fmul float %sub6.i, %sub6.i
  %22 = fmul float %add.i, %sub6.i
  %mul10.i = fmul float %add.i, 5.000000e-01
  %mul11.i = fmul float %mul10.i, %mul7.i
  %sub12.i = fsub float %18, %16
  %mul13.i = fmul float %sub12.i, 5.000000e-01
  %mul14.i = fmul float %mul13.i, %mul7.i
  %sub15.i = fsub float %19, %21
  %mul16.i = fmul float %add.i, %sub15.i
  %mul17.i = fmul float %mul16.i, %sub6.i
  %add18.i = fadd float %mul17.i, %mul14.i
  %23 = load float* %dvdlambda, align 4, !tbaa !0
  %add = fadd float %23, %add18.i
  store float %add, float* %dvdlambda, align 4, !tbaa !0
  %conv = fpext float %mul11.i to double
  %mul = fmul double %conv, 5.000000e-01
  %conv27 = fpext float %vtot.0122 to double
  %add28 = fadd double %conv27, %mul
  %sub = sub nsw i32 %7, %0
  %idxprom30 = sext i32 %sub to i64
  %arraydecay32 = getelementptr inbounds [3 x i32]* %1, i64 %idxprom30, i64 0
  %sub34 = sub nsw i32 %8, %0
  %idxprom35 = sext i32 %sub34 to i64
  %arraydecay38 = getelementptr inbounds [3 x i32]* %1, i64 %idxprom35, i64 0
  %24 = load i32* %arraydecay32, align 4, !tbaa !3
  %25 = load i32* %arraydecay38, align 4, !tbaa !3
  %arrayidx2.i = getelementptr inbounds [3 x i32]* %1, i64 %idxprom30, i64 1
  %26 = load i32* %arrayidx2.i, align 4, !tbaa !3
  %arrayidx3.i = getelementptr inbounds [3 x i32]* %1, i64 %idxprom35, i64 1
  %27 = load i32* %arrayidx3.i, align 4, !tbaa !3
  %arrayidx5.i = getelementptr inbounds [3 x i32]* %1, i64 %idxprom30, i64 2
  %28 = load i32* %arrayidx5.i, align 4, !tbaa !3
  %arrayidx6.i = getelementptr inbounds [3 x i32]* %1, i64 %idxprom35, i64 2
  %29 = load i32* %arrayidx6.i, align 4, !tbaa !3
  %sub7.i = sub nsw i32 %28, %29
  %30 = mul i32 %sub7.i, 3
  %sub4.i = add i32 %26, 3
  %mul42 = sub i32 %sub4.i, %27
  %add44 = add i32 %mul42, %30
  %31 = mul i32 %add44, 3
  %mul46 = add i32 %24, 4
  %add48 = sub i32 %mul46, %25
  %add49 = add i32 %add48, %31
  %idxprom68 = sext i32 %add49 to i64
  br label %for.body53

for.body53:                                       ; preds = %for.body53.for.body53_crit_edge, %for.body
  %32 = phi float [ %sub.i.i, %for.body ], [ %.pre, %for.body53.for.body53_crit_edge ]
  %indvars.iv = phi i64 [ 0, %for.body ], [ %indvars.iv.next, %for.body53.for.body53_crit_edge ]
  %33 = fmul float %22, %32
  %arrayidx60 = getelementptr inbounds [3 x float]* %f, i64 %idxprom7, i64 %indvars.iv
  %34 = load float* %arrayidx60, align 4, !tbaa !0
  %add61 = fsub float %34, %33
  store float %add61, float* %arrayidx60, align 4, !tbaa !0
  %arrayidx65 = getelementptr inbounds [3 x float]* %f, i64 %idxprom9, i64 %indvars.iv
  %35 = load float* %arrayidx65, align 4, !tbaa !0
  %sub66 = fadd float %33, %35
  store float %sub66, float* %arrayidx65, align 4, !tbaa !0
  %arrayidx70 = getelementptr inbounds [3 x float]* %2, i64 %idxprom68, i64 %indvars.iv
  %36 = load float* %arrayidx70, align 4, !tbaa !0
  %add71 = fsub float %36, %33
  store float %add71, float* %arrayidx70, align 4, !tbaa !0
  %arrayidx75 = getelementptr inbounds [3 x float]* %2, i64 13, i64 %indvars.iv
  %37 = load float* %arrayidx75, align 4, !tbaa !0
  %sub76 = fadd float %33, %37
  store float %sub76, float* %arrayidx75, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.cond.loopexit, label %for.body53.for.body53_crit_edge

for.body53.for.body53_crit_edge:                  ; preds = %for.body53
  %arrayidx55.phi.trans.insert = getelementptr inbounds [3 x float]* %dx, i64 0, i64 %indvars.iv.next
  %.pre = load float* %arrayidx55.phi.trans.insert, align 4, !tbaa !0
  br label %for.body53

for.end78:                                        ; preds = %for.cond.loopexit, %entry
  %vtot.0.lcssa = phi float [ 0.000000e+00, %entry ], [ %conv29, %for.cond.loopexit ]
  ret float %vtot.0.lcssa
}

; Function Attrs: nounwind optsize uwtable
define float @g96bond_angle([3 x float]* nocapture %box, float* nocapture %xi, float* nocapture %xj, float* nocapture %xk, float* nocapture %r_ij, float* nocapture %r_kj) #0 {
entry:
  %0 = load float* %xi, align 4, !tbaa !0
  %1 = load float* %xj, align 4, !tbaa !0
  %sub.i.i = fsub float %0, %1
  %arrayidx2.i.i = getelementptr inbounds float* %xi, i64 1
  %2 = load float* %arrayidx2.i.i, align 4, !tbaa !0
  %arrayidx3.i.i = getelementptr inbounds float* %xj, i64 1
  %3 = load float* %arrayidx3.i.i, align 4, !tbaa !0
  %sub4.i.i = fsub float %2, %3
  %arrayidx5.i.i = getelementptr inbounds float* %xi, i64 2
  %4 = load float* %arrayidx5.i.i, align 4, !tbaa !0
  %arrayidx6.i.i = getelementptr inbounds float* %xj, i64 2
  %5 = load float* %arrayidx6.i.i, align 4, !tbaa !0
  %sub7.i.i = fsub float %4, %5
  store float %sub.i.i, float* %r_ij, align 4, !tbaa !0
  %arrayidx9.i.i = getelementptr inbounds float* %r_ij, i64 1
  store float %sub4.i.i, float* %arrayidx9.i.i, align 4, !tbaa !0
  %arrayidx10.i.i = getelementptr inbounds float* %r_ij, i64 2
  store float %sub7.i.i, float* %arrayidx10.i.i, align 4, !tbaa !0
  %6 = load float* %xk, align 4, !tbaa !0
  %7 = load float* %xj, align 4, !tbaa !0
  %sub.i.i4 = fsub float %6, %7
  %arrayidx2.i.i5 = getelementptr inbounds float* %xk, i64 1
  %8 = load float* %arrayidx2.i.i5, align 4, !tbaa !0
  %9 = load float* %arrayidx3.i.i, align 4, !tbaa !0
  %sub4.i.i7 = fsub float %8, %9
  %arrayidx5.i.i8 = getelementptr inbounds float* %xk, i64 2
  %10 = load float* %arrayidx5.i.i8, align 4, !tbaa !0
  %11 = load float* %arrayidx6.i.i, align 4, !tbaa !0
  %sub7.i.i10 = fsub float %10, %11
  store float %sub.i.i4, float* %r_kj, align 4, !tbaa !0
  %arrayidx9.i.i11 = getelementptr inbounds float* %r_kj, i64 1
  store float %sub4.i.i7, float* %arrayidx9.i.i11, align 4, !tbaa !0
  %arrayidx10.i.i12 = getelementptr inbounds float* %r_kj, i64 2
  store float %sub7.i.i10, float* %arrayidx10.i.i12, align 4, !tbaa !0
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %12 = phi float [ %sub.i.i4, %entry ], [ %.pre, %for.body.i.for.body.i_crit_edge ]
  %indvars.iv.i = phi i64 [ 0, %entry ], [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ]
  %ipb.034.i = phi double [ 0.000000e+00, %entry ], [ %add7.i, %for.body.i.for.body.i_crit_edge ]
  %ipa.033.i = phi double [ 0.000000e+00, %entry ], [ %add5.i, %for.body.i.for.body.i_crit_edge ]
  %ip.032.i = phi double [ 0.000000e+00, %entry ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr inbounds float* %r_ij, i64 %indvars.iv.i
  %13 = load float* %arrayidx.i, align 4, !tbaa !0
  %conv.i = fpext float %13 to double
  %conv3.i = fpext float %12 to double
  %mul.i = fmul double %conv.i, %conv3.i
  %add.i = fadd double %ip.032.i, %mul.i
  %mul4.i = fmul double %conv.i, %conv.i
  %add5.i = fadd double %ipa.033.i, %mul4.i
  %mul6.i = fmul double %conv3.i, %conv3.i
  %add7.i = fadd double %ipb.034.i, %mul6.i
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  %arrayidx2.i.phi.trans.insert = getelementptr inbounds float* %r_kj, i64 %indvars.iv.next.i
  %.pre = load float* %arrayidx2.i.phi.trans.insert, align 4, !tbaa !0
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %mul8.i = fmul double %add5.i, %add7.i
  %call.i = tail call double @sqrt(double %mul8.i) #5
  %div.i = fdiv double 1.000000e+00, %call.i
  %mul9.i = fmul double %add.i, %div.i
  %conv10.i = fptrunc double %mul9.i to float
  %cmp12.i = fcmp ogt float %conv10.i, 1.000000e+00
  br i1 %cmp12.i, label %cos_angle.exit, label %if.end.i

if.end.i:                                         ; preds = %for.end.i
  %cmp15.i = fcmp olt float %conv10.i, -1.000000e+00
  %.conv10.i = select i1 %cmp15.i, float -1.000000e+00, float %conv10.i
  br label %cos_angle.exit

cos_angle.exit:                                   ; preds = %for.end.i, %if.end.i
  %retval.0.i = phi float [ 1.000000e+00, %for.end.i ], [ %.conv10.i, %if.end.i ]
  ret float %retval.0.i
}

; Function Attrs: nounwind optsize uwtable
define float @g96angles(i32 %nbonds, i32* nocapture %forceatoms, %union.t_iparams* nocapture %forceparams, [3 x float]* nocapture %x, [3 x float]* nocapture %f, %struct.t_forcerec* nocapture %fr, %struct.t_graph* nocapture %g, [3 x float]* nocapture %box, float %lambda, float* nocapture %dvdlambda, %struct.t_mdatoms* nocapture %md, i32 %ngrp, float* nocapture %egnb, float* nocapture %egcoul, %struct.t_fcdata* nocapture %fcd) #0 {
entry:
  %r_ij = alloca [3 x float], align 4
  %r_kj = alloca [3 x float], align 4
  %f_i = alloca [3 x float], align 4
  %f_j = alloca [3 x float], align 4
  %f_k = alloca [3 x float], align 4
  %cmp268 = icmp sgt i32 %nbonds, 0
  br i1 %cmp268, label %for.body.lr.ph, label %for.end156

for.body.lr.ph:                                   ; preds = %entry
  %arraydecay18 = getelementptr inbounds [3 x float]* %r_ij, i64 0, i64 0
  %arraydecay19 = getelementptr inbounds [3 x float]* %r_kj, i64 0, i64 0
  %conv1.i = fsub float 1.000000e+00, %lambda
  %arrayidx2.i254 = getelementptr inbounds [3 x float]* %r_ij, i64 0, i64 1
  %arrayidx5.i258 = getelementptr inbounds [3 x float]* %r_ij, i64 0, i64 2
  %arrayidx2.i246 = getelementptr inbounds [3 x float]* %r_kj, i64 0, i64 1
  %arrayidx5.i250 = getelementptr inbounds [3 x float]* %r_kj, i64 0, i64 2
  %start = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 3
  %ishift = getelementptr inbounds %struct.t_graph* %g, i64 0, i32 7
  %fshift = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 58
  %arraydecay146 = getelementptr inbounds [3 x float]* %f_i, i64 0, i64 0
  %arrayidx3.i224 = getelementptr inbounds [3 x float]* %f_i, i64 0, i64 1
  %arrayidx6.i227 = getelementptr inbounds [3 x float]* %f_i, i64 0, i64 2
  %arraydecay150 = getelementptr inbounds [3 x float]* %f_j, i64 0, i64 0
  %arrayidx3.i217 = getelementptr inbounds [3 x float]* %f_j, i64 0, i64 1
  %arrayidx6.i220 = getelementptr inbounds [3 x float]* %f_j, i64 0, i64 2
  %arraydecay155 = getelementptr inbounds [3 x float]* %f_k, i64 0, i64 0
  %arrayidx3.i = getelementptr inbounds [3 x float]* %f_k, i64 0, i64 1
  %arrayidx6.i = getelementptr inbounds [3 x float]* %f_k, i64 0, i64 2
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.end
  %indvars.iv271 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next272, %for.end ]
  %vtot.0269 = phi float [ 0.000000e+00, %for.body.lr.ph ], [ %add32, %for.end ]
  %0 = or i64 %indvars.iv271, 1
  %arrayidx = getelementptr inbounds i32* %forceatoms, i64 %indvars.iv271
  %1 = load i32* %arrayidx, align 4, !tbaa !3
  %2 = or i64 %indvars.iv271, 2
  %arrayidx3 = getelementptr inbounds i32* %forceatoms, i64 %0
  %3 = load i32* %arrayidx3, align 4, !tbaa !3
  %4 = or i64 %indvars.iv271, 3
  %arrayidx6 = getelementptr inbounds i32* %forceatoms, i64 %2
  %5 = load i32* %arrayidx6, align 4, !tbaa !3
  %arrayidx9 = getelementptr inbounds i32* %forceatoms, i64 %4
  %6 = load i32* %arrayidx9, align 4, !tbaa !3
  %idxprom10 = sext i32 %3 to i64
  %arraydecay = getelementptr inbounds [3 x float]* %x, i64 %idxprom10, i64 0
  %idxprom12 = sext i32 %5 to i64
  %arraydecay14 = getelementptr inbounds [3 x float]* %x, i64 %idxprom12, i64 0
  %idxprom15 = sext i32 %6 to i64
  %arraydecay17 = getelementptr inbounds [3 x float]* %x, i64 %idxprom15, i64 0
  %call = call float @g96bond_angle([3 x float]* undef, float* %arraydecay, float* %arraydecay14, float* %arraydecay17, float* %arraydecay18, float* %arraydecay19) #7
  %idxprom20 = sext i32 %1 to i64
  %7 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %idxprom20, i32 0, i32 1
  %8 = load float* %7, align 4, !tbaa !0
  %9 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %idxprom20, i32 0, i32 3
  %10 = load float* %9, align 4, !tbaa !0
  %rA = getelementptr inbounds %union.t_iparams* %forceparams, i64 %idxprom20, i32 0, i32 0
  %11 = load float* %rA, align 4, !tbaa !0
  %12 = getelementptr inbounds %union.t_iparams* %forceparams, i64 %idxprom20, i32 0, i32 2
  %13 = load float* %12, align 4, !tbaa !0
  %mul.i = fmul float %conv1.i, %8
  %mul2.i = fmul float %10, %lambda
  %add.i = fadd float %mul.i, %mul2.i
  %mul3.i = fmul float %conv1.i, %11
  %mul4.i = fmul float %13, %lambda
  %add5.i = fadd float %mul3.i, %mul4.i
  %sub6.i = fsub float %call, %add5.i
  %mul7.i = fmul float %sub6.i, %sub6.i
  %14 = fmul float %add.i, %sub6.i
  %mul9.i = fsub float -0.000000e+00, %14
  %mul10.i = fmul float %add.i, 5.000000e-01
  %sub12.i = fsub float %10, %8
  %mul13.i = fmul float %sub12.i, 5.000000e-01
  %mul14.i = fmul float %mul13.i, %mul7.i
  %sub15.i = fsub float %11, %13
  %mul16.i = fmul float %add.i, %sub15.i
  %mul17.i = fmul float %mul16.i, %sub6.i
  %add18.i = fadd float %mul17.i, %mul14.i
  %15 = load float* %dvdlambda, align 4, !tbaa !0
  %add = fadd float %15, %add18.i
  store float %add, float* %dvdlambda, align 4, !tbaa !0
  %16 = load float* %arraydecay18, align 4, !tbaa !0
  %mul.i253 = fmul float %16, %16
  %17 = load float* %arrayidx2.i254, align 4, !tbaa !0
  %mul4.i256 = fmul float %17, %17
  %add.i257 = fadd float %mul.i253, %mul4.i256
  %18 = load float* %arrayidx5.i258, align 4, !tbaa !0
  %mul7.i260 = fmul float %18, %18
  %add8.i261 = fadd float %add.i257, %mul7.i260
  %conv = fpext float %add8.i261 to double
  %call36 = call double @sqrt(double %conv) #5
  %div = fdiv double 1.000000e+00, %call36
  %conv37 = fptrunc double %div to float
  %19 = load float* %arraydecay19, align 4, !tbaa !0
  %mul.i245 = fmul float %19, %19
  %20 = load float* %arrayidx2.i246, align 4, !tbaa !0
  %mul4.i248 = fmul float %20, %20
  %add.i249 = fadd float %mul.i245, %mul4.i248
  %21 = load float* %arrayidx5.i250, align 4, !tbaa !0
  %mul7.i252 = fmul float %21, %21
  %add8.i = fadd float %add.i249, %mul7.i252
  %conv41 = fpext float %add8.i to double
  %call42 = call double @sqrt(double %conv41) #5
  %div43 = fdiv double 1.000000e+00, %call42
  %conv44 = fptrunc double %div43 to float
  %mul = fmul float %conv37, %conv37
  %mul45 = fmul float %conv44, %conv44
  %mul46 = fmul float %conv37, %conv44
  br label %for.body50

for.body50:                                       ; preds = %for.body50.for.body50_crit_edge, %for.body
  %22 = phi float [ %16, %for.body ], [ %.pre276, %for.body50.for.body50_crit_edge ]
  %23 = phi float [ %19, %for.body ], [ %.pre, %for.body50.for.body50_crit_edge ]
  %indvars.iv = phi i64 [ 0, %for.body ], [ %indvars.iv.next, %for.body50.for.body50_crit_edge ]
  %mul53 = fmul float %mul46, %23
  %mul56 = fmul float %mul, %22
  %mul57 = fmul float %call, %mul56
  %sub = fsub float %mul53, %mul57
  %mul58 = fmul float %sub, %mul9.i
  %arrayidx60 = getelementptr inbounds [3 x float]* %f_i, i64 0, i64 %indvars.iv
  store float %mul58, float* %arrayidx60, align 4, !tbaa !0
  %mul63 = fmul float %mul46, %22
  %mul66 = fmul float %mul45, %23
  %mul67 = fmul float %call, %mul66
  %sub68 = fsub float %mul63, %mul67
  %mul69 = fmul float %sub68, %mul9.i
  %arrayidx71 = getelementptr inbounds [3 x float]* %f_k, i64 0, i64 %indvars.iv
  store float %mul69, float* %arrayidx71, align 4, !tbaa !0
  %sub74 = fsub float -0.000000e+00, %mul58
  %sub77 = fsub float %sub74, %mul69
  %arrayidx79 = getelementptr inbounds [3 x float]* %f_j, i64 0, i64 %indvars.iv
  store float %sub77, float* %arrayidx79, align 4, !tbaa !0
  %arrayidx85 = getelementptr inbounds [3 x float]* %f, i64 %idxprom10, i64 %indvars.iv
  %24 = load float* %arrayidx85, align 4, !tbaa !0
  %add86 = fadd float %mul58, %24
  store float %add86, float* %arrayidx85, align 4, !tbaa !0
  %arrayidx92 = getelementptr inbounds [3 x float]* %f, i64 %idxprom12, i64 %indvars.iv
  %25 = load float* %arrayidx92, align 4, !tbaa !0
  %add93 = fadd float %sub77, %25
  store float %add93, float* %arrayidx92, align 4, !tbaa !0
  %arrayidx99 = getelementptr inbounds [3 x float]* %f, i64 %idxprom15, i64 %indvars.iv
  %26 = load float* %arrayidx99, align 4, !tbaa !0
  %add100 = fadd float %mul69, %26
  store float %add100, float* %arrayidx99, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end, label %for.body50.for.body50_crit_edge

for.body50.for.body50_crit_edge:                  ; preds = %for.body50
  %arrayidx52.phi.trans.insert = getelementptr inbounds [3 x float]* %r_kj, i64 0, i64 %indvars.iv.next
  %.pre = load float* %arrayidx52.phi.trans.insert, align 4, !tbaa !0
  %arrayidx55.phi.trans.insert = getelementptr inbounds [3 x float]* %r_ij, i64 0, i64 %indvars.iv.next
  %.pre276 = load float* %arrayidx55.phi.trans.insert, align 4, !tbaa !0
  br label %for.body50

for.end:                                          ; preds = %for.body50
  %indvars.iv.next272 = add i64 %indvars.iv271, 4
  %mul11.i = fmul float %mul10.i, %mul7.i
  %add32 = fadd float %vtot.0269, %mul11.i
  %27 = load i32* %start, align 4, !tbaa !3
  %sub102 = sub nsw i32 %5, %27
  %idxprom103 = sext i32 %sub102 to i64
  %28 = load [3 x i32]** %ishift, align 8, !tbaa !4
  %arraydecay105 = getelementptr inbounds [3 x i32]* %28, i64 %idxprom103, i64 0
  %29 = load i32* %arraydecay105, align 4, !tbaa !3
  %arrayidx2.i242 = getelementptr inbounds [3 x i32]* %28, i64 %idxprom103, i64 1
  %30 = load i32* %arrayidx2.i242, align 4, !tbaa !3
  %arrayidx4.i = getelementptr inbounds [3 x i32]* %28, i64 %idxprom103, i64 2
  %31 = load i32* %arrayidx4.i, align 4, !tbaa !3
  %sub108 = sub nsw i32 %3, %27
  %idxprom109 = sext i32 %sub108 to i64
  %arraydecay112 = getelementptr inbounds [3 x i32]* %28, i64 %idxprom109, i64 0
  %32 = load i32* %arraydecay112, align 4, !tbaa !3
  %arrayidx2.i234 = getelementptr inbounds [3 x i32]* %28, i64 %idxprom109, i64 1
  %33 = load i32* %arrayidx2.i234, align 4, !tbaa !3
  %arrayidx5.i237 = getelementptr inbounds [3 x i32]* %28, i64 %idxprom109, i64 2
  %34 = load i32* %arrayidx5.i237, align 4, !tbaa !3
  %sub7.i239 = sub nsw i32 %34, %31
  %sub116 = sub nsw i32 %6, %27
  %idxprom117 = sext i32 %sub116 to i64
  %arraydecay120 = getelementptr inbounds [3 x i32]* %28, i64 %idxprom117, i64 0
  %35 = load i32* %arraydecay120, align 4, !tbaa !3
  %arrayidx2.i229 = getelementptr inbounds [3 x i32]* %28, i64 %idxprom117, i64 1
  %36 = load i32* %arrayidx2.i229, align 4, !tbaa !3
  %arrayidx5.i231 = getelementptr inbounds [3 x i32]* %28, i64 %idxprom117, i64 2
  %37 = load i32* %arrayidx5.i231, align 4, !tbaa !3
  %sub7.i = sub nsw i32 %37, %31
  %38 = mul i32 %sub7.i239, 3
  %sub4.i236 = sub i32 3, %30
  %mul125 = add i32 %sub4.i236, %33
  %add127 = add i32 %mul125, %38
  %39 = mul i32 %add127, 3
  %mul129 = sub i32 4, %29
  %add131 = add i32 %mul129, %32
  %add132 = add i32 %add131, %39
  %40 = mul i32 %sub7.i, 3
  %mul135 = add i32 %sub4.i236, %36
  %add137 = add i32 %mul135, %40
  %41 = mul i32 %add137, 3
  %add141 = add i32 %mul129, %35
  %add142 = add i32 %add141, %41
  %idxprom143 = sext i32 %add132 to i64
  %42 = load [3 x float]** %fshift, align 8, !tbaa !4
  %arraydecay145 = getelementptr inbounds [3 x float]* %42, i64 %idxprom143, i64 0
  %43 = load float* %arraydecay145, align 4, !tbaa !0
  %44 = load float* %arraydecay146, align 4, !tbaa !0
  %add.i222 = fadd float %43, %44
  %arrayidx2.i223 = getelementptr inbounds [3 x float]* %42, i64 %idxprom143, i64 1
  %45 = load float* %arrayidx2.i223, align 4, !tbaa !0
  %46 = load float* %arrayidx3.i224, align 4, !tbaa !0
  %add4.i225 = fadd float %45, %46
  %arrayidx5.i226 = getelementptr inbounds [3 x float]* %42, i64 %idxprom143, i64 2
  %47 = load float* %arrayidx5.i226, align 4, !tbaa !0
  %48 = load float* %arrayidx6.i227, align 4, !tbaa !0
  %add7.i228 = fadd float %47, %48
  store float %add.i222, float* %arraydecay145, align 4, !tbaa !0
  store float %add4.i225, float* %arrayidx2.i223, align 4, !tbaa !0
  store float %add7.i228, float* %arrayidx5.i226, align 4, !tbaa !0
  %arraydecay149 = getelementptr inbounds [3 x float]* %42, i64 13, i64 0
  %49 = load float* %arraydecay149, align 4, !tbaa !0
  %50 = load float* %arraydecay150, align 4, !tbaa !0
  %add.i215 = fadd float %49, %50
  %arrayidx2.i216 = getelementptr inbounds [3 x float]* %42, i64 13, i64 1
  %51 = load float* %arrayidx2.i216, align 4, !tbaa !0
  %52 = load float* %arrayidx3.i217, align 4, !tbaa !0
  %add4.i218 = fadd float %51, %52
  %arrayidx5.i219 = getelementptr inbounds [3 x float]* %42, i64 13, i64 2
  %53 = load float* %arrayidx5.i219, align 4, !tbaa !0
  %54 = load float* %arrayidx6.i220, align 4, !tbaa !0
  %add7.i221 = fadd float %53, %54
  store float %add.i215, float* %arraydecay149, align 4, !tbaa !0
  store float %add4.i218, float* %arrayidx2.i216, align 4, !tbaa !0
  store float %add7.i221, float* %arrayidx5.i219, align 4, !tbaa !0
  %idxprom151 = sext i32 %add142 to i64
  %arraydecay154 = getelementptr inbounds [3 x float]* %42, i64 %idxprom151, i64 0
  %55 = load float* %arraydecay154, align 4, !tbaa !0
  %56 = load float* %arraydecay155, align 4, !tbaa !0
  %add.i214 = fadd float %55, %56
  %arrayidx2.i = getelementptr inbounds [3 x float]* %42, i64 %idxprom151, i64 1
  %57 = load float* %arrayidx2.i, align 4, !tbaa !0
  %58 = load float* %arrayidx3.i, align 4, !tbaa !0
  %add4.i = fadd float %57, %58
  %arrayidx5.i = getelementptr inbounds [3 x float]* %42, i64 %idxprom151, i64 2
  %59 = load float* %arrayidx5.i, align 4, !tbaa !0
  %60 = load float* %arrayidx6.i, align 4, !tbaa !0
  %add7.i = fadd float %59, %60
  store float %add.i214, float* %arraydecay154, align 4, !tbaa !0
  store float %add4.i, float* %arrayidx2.i, align 4, !tbaa !0
  store float %add7.i, float* %arrayidx5.i, align 4, !tbaa !0
  %61 = trunc i64 %indvars.iv.next272 to i32
  %cmp = icmp slt i32 %61, %nbonds
  br i1 %cmp, label %for.body, label %for.end156

for.end156:                                       ; preds = %for.end, %entry
  %vtot.0.lcssa = phi float [ 0.000000e+00, %entry ], [ %add32, %for.end ]
  ret float %vtot.0.lcssa
}

; Function Attrs: nounwind optsize
declare float @sqrtf(float) #3

declare float @fabsf(float)

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #4

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind optsize readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize }
attributes #6 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { optsize }

!0 = metadata !{metadata !"float", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"any pointer", metadata !1}
!5 = metadata !{metadata !"long", metadata !1}
!6 = metadata !{metadata !"double", metadata !1}
