; ModuleID = '../../SPEC/benchspec/CPU2006/435.gromacs/src/relax_sh.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
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
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }
%struct.t_parm = type { %struct.t_inputrec, [3 x [3 x float]], [3 x [3 x float]], [3 x [3 x float]], [3 x [3 x float]], [3 x [3 x float]] }
%struct.t_inputrec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, float, [3 x [3 x float]], [3 x [3 x float]], i32, float, float, i32, float, float, i32, float, float, float, i32, float, float, i32, float, float, float, float, float, i32, i32, i32, float, float, float, i32, float, float, i32, i32, i32, i32, i32, float, i32, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, %struct.t_grpopts, [3 x %struct.t_cosines], [3 x %struct.t_cosines] }
%struct.t_grpopts = type { i32, i32, i32, i32, float*, float*, float*, [3 x float]*, [3 x i32]*, i32* }
%struct.t_cosines = type { i32, float*, float* }
%struct.t_topology = type { i8**, %struct.t_idef, %struct.t_atoms, [3 x %struct.t_block], %struct.t_symtab }
%struct.t_idef = type { i32, i32, i32, i32*, %union.t_iparams*, [44 x %struct.t_ilist] }
%struct.t_ilist = type { i32, [256 x i32], i32* }
%struct.t_atoms = type { i32, %struct.t_atom*, i8***, i8***, i8***, i32, i8***, i32, i8***, %struct.t_block, [9 x %struct.t_grps], %struct.t_pdbinfo* }
%struct.t_atom = type { float, float, float, float, i16, i16, i32, i32, [9 x i8], i8 }
%struct.t_block = type { [256 x i32], i32, i32*, i32, i32* }
%struct.t_grps = type { i32, i32* }
%struct.t_pdbinfo = type { i32, i32, i8, [6 x i8], float, float, i32, [6 x i32] }
%struct.t_symtab = type { i32, %struct.symbuf* }
%struct.symbuf = type { i32, i8**, %struct.symbuf* }
%struct.t_nsborder = type { i32, i32, i32, i32, i32, i32, i32, [256 x i32], [256 x i32], [256 x i32], [256 x i32] }
%struct.t_nrnb = type { [129 x double] }
%struct.t_groups = type { %struct.t_grp_ener, %struct.t_grp_tcstat*, %struct.t_grp_acc*, %struct.t_cos_acc }
%struct.t_grp_ener = type { i32, [7 x float*] }
%struct.t_grp_tcstat = type { float, float, [3 x [3 x float]], float, float }
%struct.t_grp_acc = type { i32, i32*, float, [3 x float], [3 x float], [3 x float] }
%struct.t_cos_acc = type { float, float, float }
%struct.t_shell = type { i32, i32, i32, i32, i32, float, float }

@relax_shells.bFirst = internal unnamed_addr global i1 false
@relax_shells.pos = internal unnamed_addr global [2 x [3 x float]*] zeroinitializer, align 16
@relax_shells.force = internal unnamed_addr global [2 x [3 x float]*] zeroinitializer, align 16
@relax_shells.acc_dir = internal unnamed_addr global [3 x float]* null, align 8
@relax_shells.x_old = internal unnamed_addr global [3 x float]* null, align 8
@relax_shells.ndir = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"pos[i]\00", align 1
@.str1 = private unnamed_addr constant [56 x i8] c"../../SPEC/benchspec/CPU2006/435.gromacs/src/relax_sh.c\00", align 1
@.str2 = private unnamed_addr constant [9 x i8] c"force[i]\00", align 1
@.str3 = private unnamed_addr constant [8 x i8] c"acc_dir\00", align 1
@.str4 = private unnamed_addr constant [6 x i8] c"x_old\00", align 1
@stderr = external global %struct._IO_FILE*
@.str5 = private unnamed_addr constant [20 x i8] c"RMS dir. force: %g\0A\00", align 1
@debug = external global %struct._IO_FILE*
@.str6 = private unnamed_addr constant [13 x i8] c"df = %g  %g\0A\00", align 1
@.str7 = private unnamed_addr constant [14 x i8] c"myvir step %d\00", align 1
@stdout = external global %struct._IO_FILE*
@.str8 = private unnamed_addr constant [15 x i8] c"%17s: %14.10e\0A\00", align 1
@interaction_function = external global [44 x %struct.t_interaction_function]
@.str9 = private unnamed_addr constant [14 x i8] c"SHELLSTEP %d\0A\00", align 1
@.str10 = private unnamed_addr constant [21 x i8] c"pos[Try] b4 do_force\00", align 1
@.str11 = private unnamed_addr constant [21 x i8] c"pos[Min] b4 do_force\00", align 1
@.str12 = private unnamed_addr constant [14 x i8] c"dir. rmsf %g\0A\00", align 1
@.str13 = private unnamed_addr constant [22 x i8] c"Swapping Min and Try\0A\00", align 1
@.str14 = private unnamed_addr constant [33 x i8] c"EM did not converge in %d steps\0A\00", align 1
@.str17 = private unnamed_addr constant [5 x i8] c"xnew\00", align 1
@.str18 = private unnamed_addr constant [39 x i8] c"MDStep=%5d/%2d lamb: %6g, EPot: %12.8e\00", align 1
@.str19 = private unnamed_addr constant [16 x i8] c", rmsF: %12.8e\0A\00", align 1
@init_adir.xnold = internal unnamed_addr global [3 x float]* null, align 8
@init_adir.xnew = internal unnamed_addr global [3 x float]* null, align 8
@.str21 = private unnamed_addr constant [6 x i8] c"xnold\00", align 1
@.str22 = private unnamed_addr constant [53 x i8] c"RELAX: Using prediction for initial shell placement\0A\00", align 1
@.str23 = private unnamed_addr constant [24 x i8] c"Shell %d has %d nuclei!\00", align 1

; Function Attrs: nounwind optsize uwtable
define i32 @relax_shells(%struct._IO_FILE* %log, %struct.t_commrec* %cr, %struct.t_commrec* %mcr, i32 %bVerbose, i32 %mdstep, %struct.t_parm* %parm, i32 %bDoNS, i32 %bStopCM, %struct.t_topology* %top, float* %ener, %struct.t_fcdata* %fcd, [3 x float]* %x, [3 x float]* nocapture %vold, [3 x float]* %v, [3 x float]* nocapture %vt, [3 x float]* %f, [3 x float]* %buf, %struct.t_mdatoms* %md, %struct.t_nsborder* %nsb, %struct.t_nrnb* %nrnb, %struct.t_graph* %graph, %struct.t_groups* %grps, [3 x float]* %vir_part, [3 x float]* nocapture %pme_vir_part, i32 %bShell, i32 %nshell, %struct.t_shell* nocapture %shells, %struct.t_forcerec* %fr, i8* nocapture %traj, float %t, float %lambda, float* %mu_tot, i32 %natoms, [3 x float]* nocapture %box, i32* nocapture %bConverged) #0 {
entry:
  %Epot = alloca [2 x float], align 4
  %df = alloca [2 x float], align 4
  %my_vir = alloca [2 x [3 x [3 x float]]], align 16
  %pme_vir = alloca [2 x [3 x [3 x float]]], align 16
  %dx = alloca [3 x float], align 4
  %dum = alloca float, align 4
  %cbuf = alloca [56 x i8], align 16
  %0 = bitcast [2 x [3 x [3 x float]]]* %my_vir to i8*
  call void @llvm.lifetime.start(i64 72, i8* %0) #1
  %1 = bitcast [2 x [3 x [3 x float]]]* %pme_vir to i8*
  call void @llvm.lifetime.start(i64 72, i8* %1) #1
  store float 0.000000e+00, float* %dum, align 4, !tbaa !0
  %2 = getelementptr inbounds [56 x i8]* %cbuf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 56, i8* %2) #1
  %nodeid = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 0
  %3 = load i32* %nodeid, align 4, !tbaa !3
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %idxprom
  %4 = load i32* %arrayidx, align 4, !tbaa !3
  %arrayidx4 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %idxprom
  %5 = load i32* %arrayidx4, align 4, !tbaa !3
  %add = add nsw i32 %5, %4
  %.b = load i1* @relax_shells.bFirst, align 1
  br i1 %.b, label %if.end34, label %if.then

if.then:                                          ; preds = %entry
  %fc_stepsize = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 67
  %6 = load float* %fc_stepsize, align 4, !tbaa !0
  %fabsf = call float @fabsf(float %6) #4
  %7 = fpext float %fabsf to double
  %cmp = fcmp ogt double %7, 1.200000e-38
  br i1 %cmp, label %if.then14, label %if.end

if.then14:                                        ; preds = %if.then
  %nr.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 27, i32 0
  %8 = load i32* %nr.i, align 4, !tbaa !3
  %cmp13.i = icmp sgt i32 %8, 0
  br i1 %cmp13.i, label %for.body.lr.ph.i, label %if.end

for.body.lr.ph.i:                                 ; preds = %if.then14
  %iatoms.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 27, i32 2
  %9 = load i32** %iatoms.i, align 8, !tbaa !4
  %iparams.i = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 4
  %10 = load %union.t_iparams** %iparams.i, align 8, !tbaa !4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next.i, %for.body.i ]
  %nZeroLen.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %nZeroLen.1.i, %for.body.i ]
  %arrayidx3.i = getelementptr inbounds i32* %9, i64 %indvars.iv.i
  %11 = load i32* %arrayidx3.i, align 4, !tbaa !3
  %idxprom4.i = sext i32 %11 to i64
  %dA.i = getelementptr inbounds %union.t_iparams* %10, i64 %idxprom4.i, i32 0, i32 0
  %12 = load float* %dA.i, align 4, !tbaa !0
  %fabsf.i = call float @fabsf(float %12) #4
  %13 = fpext float %fabsf.i to double
  %cmp6.i = fcmp olt double %13, 1.200000e-38
  %inc.i = zext i1 %cmp6.i to i32
  %nZeroLen.1.i = add nsw i32 %inc.i, %nZeroLen.014.i
  %indvars.iv.next.i = add i64 %indvars.iv.i, 3
  %14 = trunc i64 %indvars.iv.next.i to i32
  %cmp.i = icmp slt i32 %14, %8
  br i1 %cmp.i, label %for.body.i, label %if.end

if.end:                                           ; preds = %for.body.i, %if.then14, %if.then
  %storemerge = phi i32 [ 0, %if.then ], [ 0, %if.then14 ], [ %nZeroLen.1.i, %for.body.i ]
  store i32 %storemerge, i32* @relax_shells.ndir, align 4, !tbaa !3
  %tobool16 = icmp eq i32 %bShell, 0
  br i1 %tobool16, label %if.else28, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %natoms20 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body, %for.cond.preheader
  %indvars.iv1003 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next1004, %for.body ]
  %15 = load i32* %natoms20, align 4, !tbaa !3
  %call21 = call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 326, i32 %15, i32 12) #5
  %16 = bitcast i8* %call21 to [3 x float]*
  %arrayidx23 = getelementptr inbounds [2 x [3 x float]*]* @relax_shells.pos, i64 0, i64 %indvars.iv1003
  store [3 x float]* %16, [3 x float]** %arrayidx23, align 8, !tbaa !4
  %17 = load i32* %natoms20, align 4, !tbaa !3
  %call25 = call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 327, i32 %17, i32 12) #5
  %18 = bitcast i8* %call25 to [3 x float]*
  %arrayidx27 = getelementptr inbounds [2 x [3 x float]*]* @relax_shells.force, i64 0, i64 %indvars.iv1003
  store [3 x float]* %18, [3 x float]** %arrayidx27, align 8, !tbaa !4
  %indvars.iv.next1004 = add i64 %indvars.iv1003, 1
  %lftr.wideiv1005 = trunc i64 %indvars.iv.next1004 to i32
  %exitcond1006 = icmp eq i32 %lftr.wideiv1005, 2
  br i1 %exitcond1006, label %if.end33, label %for.body

if.else28:                                        ; preds = %if.end
  store [3 x float]* %x, [3 x float]** getelementptr inbounds ([2 x [3 x float]*]* @relax_shells.pos, i64 0, i64 0), align 16, !tbaa !4
  store [3 x float]* %f, [3 x float]** getelementptr inbounds ([2 x [3 x float]*]* @relax_shells.force, i64 0, i64 0), align 16, !tbaa !4
  br label %if.end33

if.end33:                                         ; preds = %for.body, %if.else28
  store i1 true, i1* @relax_shells.bFirst, align 1
  br label %if.end34

if.end34:                                         ; preds = %entry, %if.end33
  %ir = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0
  %em_tol = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 60
  %19 = load float* %em_tol, align 4, !tbaa !0
  %niter = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 61
  %20 = load i32* %niter, align 4, !tbaa !3
  %21 = load i32* @relax_shells.ndir, align 4, !tbaa !3
  %tobool36 = icmp eq i32 %21, 0
  br i1 %tobool36, label %if.end74, label %if.then37

if.then37:                                        ; preds = %if.end34
  %22 = load [3 x float]** @relax_shells.acc_dir, align 8, !tbaa !4
  %cmp38 = icmp eq [3 x float]* %22, null
  br i1 %cmp38, label %if.then40, label %if.end43

if.then40:                                        ; preds = %if.then37
  %call41 = call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 349, i32 %5, i32 12) #5
  %23 = bitcast i8* %call41 to [3 x float]*
  store [3 x float]* %23, [3 x float]** @relax_shells.acc_dir, align 8, !tbaa !4
  %call42 = call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 350, i32 %5, i32 12) #5
  %24 = bitcast i8* %call42 to [3 x float]*
  store [3 x float]* %24, [3 x float]** @relax_shells.x_old, align 8, !tbaa !4
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %if.then37
  %arraydecay = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 0
  call void @init_pbc([3 x float]* %arraydecay) #5
  %cmp46974 = icmp sgt i32 %5, 0
  br i1 %cmp46974, label %for.cond49.preheader.lr.ph, label %if.end74

for.cond49.preheader.lr.ph:                       ; preds = %if.end43
  %delta_t = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 15
  %25 = load [3 x float]** @relax_shells.x_old, align 8, !tbaa !4
  %26 = sext i32 %4 to i64
  br label %for.cond49.preheader

for.cond49.preheader:                             ; preds = %for.inc71, %for.cond49.preheader.lr.ph
  %indvars.iv998 = phi i64 [ 0, %for.cond49.preheader.lr.ph ], [ %indvars.iv.next999, %for.inc71 ]
  %27 = add nsw i64 %indvars.iv998, %26
  br label %for.body52

for.body52:                                       ; preds = %for.body52, %for.cond49.preheader
  %indvars.iv994 = phi i64 [ 0, %for.cond49.preheader ], [ %indvars.iv.next995, %for.body52 ]
  %arrayidx57 = getelementptr inbounds [3 x float]* %x, i64 %27, i64 %indvars.iv994
  %28 = load float* %arrayidx57, align 4, !tbaa !0
  %arrayidx62 = getelementptr inbounds [3 x float]* %v, i64 %27, i64 %indvars.iv994
  %29 = load float* %arrayidx62, align 4, !tbaa !0
  %30 = load float* %delta_t, align 4, !tbaa !0
  %mul = fmul float %29, %30
  %sub = fsub float %28, %mul
  %arrayidx67 = getelementptr inbounds [3 x float]* %25, i64 %indvars.iv998, i64 %indvars.iv994
  store float %sub, float* %arrayidx67, align 4, !tbaa !0
  %indvars.iv.next995 = add i64 %indvars.iv994, 1
  %lftr.wideiv996 = trunc i64 %indvars.iv.next995 to i32
  %exitcond997 = icmp eq i32 %lftr.wideiv996, 3
  br i1 %exitcond997, label %for.inc71, label %for.body52

for.inc71:                                        ; preds = %for.body52
  %indvars.iv.next999 = add i64 %indvars.iv998, 1
  %lftr.wideiv1001 = trunc i64 %indvars.iv.next999 to i32
  %exitcond1002 = icmp eq i32 %lftr.wideiv1001, %5
  br i1 %exitcond1002, label %if.end74, label %for.cond49.preheader

if.end74:                                         ; preds = %if.end43, %for.inc71, %if.end34
  %delta_t76 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 15
  %31 = load float* %delta_t76, align 4, !tbaa !0
  %massT = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 4
  %32 = load float** %massT, align 8, !tbaa !4
  %cmp78 = icmp eq i32 %mdstep, 0
  br i1 %cmp78, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end74
  %33 = call i64 @fwrite(i8* getelementptr inbounds ([53 x i8]* @.str22, i64 0, i64 0), i64 52, i64 1, %struct._IO_FILE* %log) #1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end74
  %dt_1.0.i = phi float [ 1.000000e+00, %if.then.i ], [ %31, %if.end74 ]
  %ptr.0.i = phi [3 x float]* [ %x, %if.then.i ], [ %v, %if.end74 ]
  %cmp182.i = icmp sgt i32 %nshell, 0
  br i1 %cmp182.i, label %for.body.i869, label %predict_shells.exit

for.body.i869:                                    ; preds = %if.end.i, %for.inc106.i
  %indvars.iv192.i = phi i64 [ %indvars.iv.next193.i, %for.inc106.i ], [ 0, %if.end.i ]
  %shell.i = getelementptr inbounds %struct.t_shell* %shells, i64 %indvars.iv192.i, i32 1
  %34 = load i32* %shell.i, align 4, !tbaa !3
  br i1 %cmp78, label %if.then2.i, label %if.end5.i

if.then2.i:                                       ; preds = %for.body.i869
  %idxprom3.i = sext i32 %34 to i64
  %arraydecay.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom3.i, i64 0
  store float 0.000000e+00, float* %arraydecay.i, align 4, !tbaa !0
  %arrayidx1.i.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom3.i, i64 1
  store float 0.000000e+00, float* %arrayidx1.i.i, align 4, !tbaa !0
  %arrayidx2.i.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom3.i, i64 2
  store float 0.000000e+00, float* %arrayidx2.i.i, align 4, !tbaa !0
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then2.i, %for.body.i869
  %nnucl.i = getelementptr inbounds %struct.t_shell* %shells, i64 %indvars.iv192.i, i32 0
  %35 = load i32* %nnucl.i, align 4, !tbaa !3
  switch i32 %35, label %sw.default.i [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb22.i
    i32 3, label %sw.bb56.i
  ]

sw.bb.i:                                          ; preds = %if.end5.i
  %nucl1.i = getelementptr inbounds %struct.t_shell* %shells, i64 %indvars.iv192.i, i32 2
  %36 = load i32* %nucl1.i, align 4, !tbaa !3
  %idxprom14.i = sext i32 %36 to i64
  %idxprom19.i = sext i32 %34 to i64
  br label %for.body12.i

for.body12.i:                                     ; preds = %for.body12.i, %sw.bb.i
  %indvars.iv188.i = phi i64 [ 0, %sw.bb.i ], [ %indvars.iv.next189.i, %for.body12.i ]
  %arrayidx16.i = getelementptr inbounds [3 x float]* %ptr.0.i, i64 %idxprom14.i, i64 %indvars.iv188.i
  %37 = load float* %arrayidx16.i, align 4, !tbaa !0
  %mul17.i = fmul float %dt_1.0.i, %37
  %arrayidx21.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom19.i, i64 %indvars.iv188.i
  %38 = load float* %arrayidx21.i, align 4, !tbaa !0
  %add.i = fadd float %38, %mul17.i
  store float %add.i, float* %arrayidx21.i, align 4, !tbaa !0
  %indvars.iv.next189.i = add i64 %indvars.iv188.i, 1
  %lftr.wideiv990 = trunc i64 %indvars.iv.next189.i to i32
  %exitcond991 = icmp eq i32 %lftr.wideiv990, 3
  br i1 %exitcond991, label %for.inc106.i, label %for.body12.i

sw.bb22.i:                                        ; preds = %if.end5.i
  %nucl125.i = getelementptr inbounds %struct.t_shell* %shells, i64 %indvars.iv192.i, i32 2
  %39 = load i32* %nucl125.i, align 4, !tbaa !3
  %nucl2.i = getelementptr inbounds %struct.t_shell* %shells, i64 %indvars.iv192.i, i32 3
  %40 = load i32* %nucl2.i, align 4, !tbaa !3
  %idxprom28.i = sext i32 %39 to i64
  %arrayidx29.i = getelementptr inbounds float* %32, i64 %idxprom28.i
  %41 = load float* %arrayidx29.i, align 4, !tbaa !0
  %idxprom30.i = sext i32 %40 to i64
  %arrayidx31.i = getelementptr inbounds float* %32, i64 %idxprom30.i
  %42 = load float* %arrayidx31.i, align 4, !tbaa !0
  %add32.i = fadd float %41, %42
  %div.i = fdiv float %dt_1.0.i, %add32.i
  %idxprom49.i = sext i32 %34 to i64
  br label %for.body35.i

for.body35.i:                                     ; preds = %for.body35.i, %sw.bb22.i
  %indvars.iv184.i = phi i64 [ 0, %sw.bb22.i ], [ %indvars.iv.next185.i, %for.body35.i ]
  %arrayidx39.i = getelementptr inbounds [3 x float]* %ptr.0.i, i64 %idxprom28.i, i64 %indvars.iv184.i
  %43 = load float* %arrayidx39.i, align 4, !tbaa !0
  %mul40.i = fmul float %41, %43
  %arrayidx44.i = getelementptr inbounds [3 x float]* %ptr.0.i, i64 %idxprom30.i, i64 %indvars.iv184.i
  %44 = load float* %arrayidx44.i, align 4, !tbaa !0
  %mul45.i = fmul float %42, %44
  %add46.i = fadd float %mul40.i, %mul45.i
  %mul47.i = fmul float %div.i, %add46.i
  %arrayidx51.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom49.i, i64 %indvars.iv184.i
  %45 = load float* %arrayidx51.i, align 4, !tbaa !0
  %add52.i = fadd float %45, %mul47.i
  store float %add52.i, float* %arrayidx51.i, align 4, !tbaa !0
  %indvars.iv.next185.i = add i64 %indvars.iv184.i, 1
  %lftr.wideiv988 = trunc i64 %indvars.iv.next185.i to i32
  %exitcond989 = icmp eq i32 %lftr.wideiv988, 3
  br i1 %exitcond989, label %for.inc106.i, label %for.body35.i

sw.bb56.i:                                        ; preds = %if.end5.i
  %nucl159.i = getelementptr inbounds %struct.t_shell* %shells, i64 %indvars.iv192.i, i32 2
  %46 = load i32* %nucl159.i, align 4, !tbaa !3
  %nucl262.i = getelementptr inbounds %struct.t_shell* %shells, i64 %indvars.iv192.i, i32 3
  %47 = load i32* %nucl262.i, align 4, !tbaa !3
  %nucl3.i = getelementptr inbounds %struct.t_shell* %shells, i64 %indvars.iv192.i, i32 4
  %48 = load i32* %nucl3.i, align 4, !tbaa !3
  %idxprom65.i = sext i32 %46 to i64
  %arrayidx66.i = getelementptr inbounds float* %32, i64 %idxprom65.i
  %49 = load float* %arrayidx66.i, align 4, !tbaa !0
  %idxprom67.i = sext i32 %47 to i64
  %arrayidx68.i = getelementptr inbounds float* %32, i64 %idxprom67.i
  %50 = load float* %arrayidx68.i, align 4, !tbaa !0
  %idxprom69.i = sext i32 %48 to i64
  %arrayidx70.i = getelementptr inbounds float* %32, i64 %idxprom69.i
  %51 = load float* %arrayidx70.i, align 4, !tbaa !0
  %add71.i = fadd float %49, %50
  %add72.i = fadd float %add71.i, %51
  %div73.i = fdiv float %dt_1.0.i, %add72.i
  %idxprom96.i = sext i32 %34 to i64
  br label %for.body76.i

for.body76.i:                                     ; preds = %for.body76.i, %sw.bb56.i
  %indvars.iv.i870 = phi i64 [ 0, %sw.bb56.i ], [ %indvars.iv.next.i871, %for.body76.i ]
  %arrayidx80.i = getelementptr inbounds [3 x float]* %ptr.0.i, i64 %idxprom65.i, i64 %indvars.iv.i870
  %52 = load float* %arrayidx80.i, align 4, !tbaa !0
  %mul81.i = fmul float %49, %52
  %arrayidx85.i = getelementptr inbounds [3 x float]* %ptr.0.i, i64 %idxprom67.i, i64 %indvars.iv.i870
  %53 = load float* %arrayidx85.i, align 4, !tbaa !0
  %mul86.i = fmul float %50, %53
  %add87.i = fadd float %mul81.i, %mul86.i
  %arrayidx91.i = getelementptr inbounds [3 x float]* %ptr.0.i, i64 %idxprom69.i, i64 %indvars.iv.i870
  %54 = load float* %arrayidx91.i, align 4, !tbaa !0
  %mul92.i = fmul float %51, %54
  %add93.i = fadd float %add87.i, %mul92.i
  %mul94.i = fmul float %div73.i, %add93.i
  %arrayidx98.i = getelementptr inbounds [3 x float]* %x, i64 %idxprom96.i, i64 %indvars.iv.i870
  %55 = load float* %arrayidx98.i, align 4, !tbaa !0
  %add99.i = fadd float %55, %mul94.i
  store float %add99.i, float* %arrayidx98.i, align 4, !tbaa !0
  %indvars.iv.next.i871 = add i64 %indvars.iv.i870, 1
  %lftr.wideiv986 = trunc i64 %indvars.iv.next.i871 to i32
  %exitcond987 = icmp eq i32 %lftr.wideiv986, 3
  br i1 %exitcond987, label %for.inc106.i, label %for.body76.i

sw.default.i:                                     ; preds = %if.end5.i
  %56 = trunc i64 %indvars.iv192.i to i32
  call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([24 x i8]* @.str23, i64 0, i64 0), i32 %56, i32 %35) #5
  br label %for.inc106.i

for.inc106.i:                                     ; preds = %for.body12.i, %for.body35.i, %for.body76.i, %sw.default.i
  %indvars.iv.next193.i = add i64 %indvars.iv192.i, 1
  %lftr.wideiv992 = trunc i64 %indvars.iv.next193.i to i32
  %exitcond993 = icmp eq i32 %lftr.wideiv992, %nshell
  br i1 %exitcond993, label %predict_shells.exit, label %for.body.i869

predict_shells.exit:                              ; preds = %for.inc106.i, %if.end.i
  %arraydecay82 = getelementptr inbounds [2 x [3 x [3 x float]]]* %my_vir, i64 0, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 36, i32 16, i1 false) #1
  %arraydecay85 = getelementptr inbounds [2 x [3 x [3 x float]]]* %pme_vir, i64 0, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 36, i32 16, i1 false) #1
  %57 = load [3 x float]** getelementptr inbounds ([2 x [3 x float]*]* @relax_shells.force, i64 0, i64 0), align 16, !tbaa !4
  %tobool94 = icmp ne i32 %bVerbose, 0
  br i1 %tobool94, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %predict_shells.exit
  %nnodes = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %58 = load i32* %nnodes, align 4, !tbaa !3
  %cmp95 = icmp sgt i32 %58, 1
  br i1 %cmp95, label %land.end, label %lor.rhs97

lor.rhs97:                                        ; preds = %land.rhs
  %nthreads = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %59 = load i32* %nthreads, align 4, !tbaa !3
  %phitmp868 = icmp slt i32 %59, 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs97, %predict_shells.exit
  %60 = phi i1 [ false, %predict_shells.exit ], [ false, %land.rhs ], [ %phitmp868, %lor.rhs97 ]
  %land.ext = zext i1 %60 to i32
  call void @do_force(%struct._IO_FILE* %log, %struct.t_commrec* %cr, %struct.t_commrec* %mcr, %struct.t_parm* %parm, %struct.t_nsborder* %nsb, [3 x float]* %arraydecay82, [3 x float]* %arraydecay85, i32 %mdstep, %struct.t_nrnb* %nrnb, %struct.t_topology* %top, %struct.t_groups* %grps, [3 x float]* %x, [3 x float]* %v, [3 x float]* %57, [3 x float]* %buf, %struct.t_mdatoms* %md, float* %ener, %struct.t_fcdata* %fcd, i32 %land.ext, float %lambda, %struct.t_graph* %graph, i32 %bDoNS, i32 0, %struct.t_forcerec* %fr, float* %mu_tot, i32 0) #5
  %61 = load [3 x float]** getelementptr inbounds ([2 x [3 x float]*]* @relax_shells.force, i64 0, i64 0), align 16, !tbaa !4
  call void @sum_lrforces([3 x float]* %61, %struct.t_forcerec* %fr, i32 %4, i32 %5) #5
  %62 = load i32* @relax_shells.ndir, align 4, !tbaa !3
  %tobool104 = icmp eq i32 %62, 0
  br i1 %tobool104, label %if.end138, label %if.then105

if.then105:                                       ; preds = %land.end
  %63 = load [3 x float]** @relax_shells.x_old, align 8, !tbaa !4
  %idx.ext = sext i32 %4 to i64
  %idx.neg = sub i64 0, %idx.ext
  %add.ptr = getelementptr inbounds [3 x float]* %63, i64 %idx.neg
  %64 = load [3 x float]** getelementptr inbounds ([2 x [3 x float]*]* @relax_shells.force, i64 0, i64 0), align 16, !tbaa !4
  %65 = load [3 x float]** @relax_shells.acc_dir, align 8, !tbaa !4
  %add.ptr111 = getelementptr inbounds [3 x float]* %65, i64 %idx.neg
  %arraydecay113 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 0
  call fastcc void @init_adir(%struct._IO_FILE* %log, %struct.t_topology* %top, %struct.t_inputrec* %ir, i32 %mdstep, %struct.t_mdatoms* %md, i32 %4, i32 %add, [3 x float]* %add.ptr, [3 x float]* %x, [3 x float]* %x, [3 x float]* %64, [3 x float]* %add.ptr111, [3 x float]* %arraydecay113, float %lambda, float* %dum, %struct.t_nrnb* %nrnb) #6
  %cmp115967 = icmp sgt i32 %5, 0
  br i1 %cmp115967, label %for.body117.lr.ph, label %for.end130

for.body117.lr.ph:                                ; preds = %if.then105
  %66 = load float** %massT, align 8, !tbaa !4
  %67 = load [3 x float]** @relax_shells.acc_dir, align 8, !tbaa !4
  br label %for.body117

for.body117:                                      ; preds = %for.body117.lr.ph, %for.body117
  %indvars.iv984 = phi i64 [ %idx.ext, %for.body117.lr.ph ], [ %indvars.iv.next985, %for.body117 ]
  %sf_dir.0969 = phi float [ 0.000000e+00, %for.body117.lr.ph ], [ %add127, %for.body117 ]
  %arrayidx120 = getelementptr inbounds float* %66, i64 %indvars.iv984
  %68 = load float* %arrayidx120, align 4, !tbaa !0
  %69 = trunc i64 %indvars.iv984 to i32
  %sub121 = sub nsw i32 %69, %4
  %idxprom122 = sext i32 %sub121 to i64
  %arraydecay124 = getelementptr inbounds [3 x float]* %67, i64 %idxprom122, i64 0
  %70 = load float* %arraydecay124, align 4, !tbaa !0
  %mul.i895 = fmul float %70, %70
  %arrayidx2.i896 = getelementptr inbounds [3 x float]* %67, i64 %idxprom122, i64 1
  %71 = load float* %arrayidx2.i896, align 4, !tbaa !0
  %mul4.i = fmul float %71, %71
  %add.i897 = fadd float %mul.i895, %mul4.i
  %arrayidx5.i898 = getelementptr inbounds [3 x float]* %67, i64 %idxprom122, i64 2
  %72 = load float* %arrayidx5.i898, align 4, !tbaa !0
  %mul7.i = fmul float %72, %72
  %add8.i = fadd float %add.i897, %mul7.i
  %mul126 = fmul float %68, %add8.i
  %add127 = fadd float %sf_dir.0969, %mul126
  %indvars.iv.next985 = add i64 %indvars.iv984, 1
  %73 = trunc i64 %indvars.iv.next985 to i32
  %cmp115 = icmp slt i32 %73, %add
  br i1 %cmp115, label %for.body117, label %for.end130

for.end130:                                       ; preds = %for.body117, %if.then105
  %sf_dir.0.lcssa = phi float [ 0.000000e+00, %if.then105 ], [ %add127, %for.body117 ]
  br i1 %tobool94, label %if.then132, label %if.end138

if.then132:                                       ; preds = %for.end130
  %74 = load %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %75 = load i32* @relax_shells.ndir, align 4, !tbaa !3
  %conv133 = sitofp i32 %75 to float
  %div = fdiv float %sf_dir.0.lcssa, %conv133
  %conv134 = fpext float %div to double
  %call135 = call double @sqrt(double %conv134) #5
  %call136 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %74, i8* getelementptr inbounds ([20 x i8]* @.str5, i64 0, i64 0), double %call135) #5
  br label %if.end138

if.end138:                                        ; preds = %for.end130, %land.end, %if.then132
  %sf_dir.1 = phi float [ %sf_dir.0.lcssa, %if.then132 ], [ 0.000000e+00, %land.end ], [ %sf_dir.0.lcssa, %for.end130 ]
  %76 = load [3 x float]** getelementptr inbounds ([2 x [3 x float]*]* @relax_shells.force, i64 0, i64 0), align 16, !tbaa !4
  %77 = load i32* @relax_shells.ndir, align 4, !tbaa !3
  %call141 = call fastcc float @rms_force(%struct.t_commrec* %cr, [3 x float]* %76, i32 %nshell, %struct.t_shell* %shells, i32 %77, float %sf_dir.1) #6
  %arrayidx143 = getelementptr inbounds [2 x float]* %df, i64 0, i64 0
  store float %call141, float* %arrayidx143, align 4, !tbaa !0
  %arrayidx146 = getelementptr inbounds [2 x float]* %df, i64 0, i64 1
  store float 0.000000e+00, float* %arrayidx146, align 4, !tbaa !0
  %78 = load %struct._IO_FILE** @debug, align 8, !tbaa !4
  %tobool147 = icmp eq %struct._IO_FILE* %78, null
  br i1 %tobool147, label %if.end163, label %if.then148

if.then148:                                       ; preds = %if.end138
  %conv151 = fpext float %call141 to double
  %call156 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([13 x i8]* @.str6, i64 0, i64 0), double %conv151, double 0.000000e+00) #5
  %call158 = call i32 (i8*, i8*, ...)* @sprintf(i8* %2, i8* getelementptr inbounds ([14 x i8]* @.str7, i64 0, i64 0), i32 0) #5
  %79 = load %struct._IO_FILE** @debug, align 8, !tbaa !4
  call void @pr_rvecs(%struct._IO_FILE* %79, i32 0, i8* %2, [3 x float]* %arraydecay82, i32 3) #5
  br label %if.end163

if.end163:                                        ; preds = %if.end138, %if.then148
  %80 = load i32* @relax_shells.ndir, align 4, !tbaa !3
  %add164 = add nsw i32 %80, %nshell
  %cmp165 = icmp sgt i32 %add164, 0
  br i1 %cmp165, label %if.then167, label %if.end179

if.then167:                                       ; preds = %if.end163
  %81 = load [3 x float]** getelementptr inbounds ([2 x [3 x float]*]* @relax_shells.pos, i64 0, i64 0), align 16, !tbaa !4
  %82 = bitcast [3 x float]* %81 to i8*
  %83 = bitcast [3 x float]* %x to i8*
  %natoms170 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 3
  %84 = load i32* %natoms170, align 4, !tbaa !3
  %conv171 = sext i32 %84 to i64
  %mul172 = mul i64 %conv171, 12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %82, i8* %83, i64 %mul172, i32 4, i1 false)
  %85 = load [3 x float]** getelementptr inbounds ([2 x [3 x float]*]* @relax_shells.pos, i64 0, i64 1), align 8, !tbaa !4
  %86 = bitcast [3 x float]* %85 to i8*
  %87 = load i32* %natoms170, align 4, !tbaa !3
  %conv177 = sext i32 %87 to i64
  %mul178 = mul i64 %conv177, 12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %86, i8* %83, i64 %mul178, i32 4, i1 false)
  br label %if.end179

if.end179:                                        ; preds = %if.then167, %if.end163
  %opts = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80
  call void @sum_epot(%struct.t_grpopts* %opts, %struct.t_groups* %grps, float* %ener) #5
  %arrayidx181 = getelementptr inbounds float* %ener, i64 37
  %88 = load float* %arrayidx181, align 4, !tbaa !0
  %arrayidx183 = getelementptr inbounds [2 x float]* %Epot, i64 0, i64 0
  store float %88, float* %arrayidx183, align 4, !tbaa !0
  %nnodes184 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %89 = load i32* %nnodes184, align 4, !tbaa !3
  %cmp185 = icmp sgt i32 %89, 1
  br i1 %cmp185, label %if.then190, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end179
  %nthreads187 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %90 = load i32* %nthreads187, align 4, !tbaa !3
  %cmp188 = icmp sgt i32 %90, 1
  br i1 %cmp188, label %if.then190, label %if.end192

if.then190:                                       ; preds = %lor.lhs.false, %if.end179
  call void @gmx_sumf(i32 2, float* %arrayidx183, %struct.t_commrec* %cr) #5
  br label %if.end192

if.end192:                                        ; preds = %if.then190, %lor.lhs.false
  br i1 %tobool94, label %land.lhs.true, label %if.end209

land.lhs.true:                                    ; preds = %if.end192
  %nodeid194 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %91 = load i32* %nodeid194, align 4, !tbaa !3
  %cmp195 = icmp eq i32 %91, 0
  br i1 %cmp195, label %land.lhs.true197, label %if.end209

land.lhs.true197:                                 ; preds = %land.lhs.true
  %threadid = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  %92 = load i32* %threadid, align 4, !tbaa !3
  %cmp198 = icmp eq i32 %92, 0
  br i1 %cmp198, label %land.lhs.true200, label %if.end209

land.lhs.true200:                                 ; preds = %land.lhs.true197
  %93 = load i32* @relax_shells.ndir, align 4, !tbaa !3
  %add201 = add nsw i32 %93, %nshell
  %cmp202 = icmp sgt i32 %add201, 0
  br i1 %cmp202, label %if.then204, label %if.end209

if.then204:                                       ; preds = %land.lhs.true200
  %94 = load %struct._IO_FILE** @stdout, align 8, !tbaa !4
  %95 = load float* %arrayidx183, align 4, !tbaa !0
  %conv1.i = fpext float %95 to double
  %call.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %94, i8* getelementptr inbounds ([39 x i8]* @.str18, i64 0, i64 0), i32 %mdstep, i32 0, double 1.000000e+00, double %conv1.i) #5
  %fputc.i = call i32 @fputc(i32 10, %struct._IO_FILE* %94) #1
  br label %if.end209

if.end209:                                        ; preds = %if.then204, %land.lhs.true200, %land.lhs.true197, %land.lhs.true, %if.end192
  %96 = load %struct._IO_FILE** @debug, align 8, !tbaa !4
  %tobool210 = icmp eq %struct._IO_FILE* %96, null
  br i1 %tobool210, label %if.end222, label %if.then211

if.then211:                                       ; preds = %if.end209
  %97 = load i8** getelementptr inbounds ([44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 38, i32 1), align 8, !tbaa !4
  %arrayidx212 = getelementptr inbounds float* %ener, i64 38
  %98 = load float* %arrayidx212, align 4, !tbaa !0
  %conv213 = fpext float %98 to double
  %call214 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %96, i8* getelementptr inbounds ([15 x i8]* @.str8, i64 0, i64 0), i8* %97, double %conv213) #5
  %99 = load %struct._IO_FILE** @debug, align 8, !tbaa !4
  %100 = load i8** getelementptr inbounds ([44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 37, i32 1), align 8, !tbaa !4
  %101 = load float* %arrayidx181, align 4, !tbaa !0
  %conv216 = fpext float %101 to double
  %call217 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %99, i8* getelementptr inbounds ([15 x i8]* @.str8, i64 0, i64 0), i8* %100, double %conv216) #5
  %102 = load %struct._IO_FILE** @debug, align 8, !tbaa !4
  %103 = load i8** getelementptr inbounds ([44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 39, i32 1), align 8, !tbaa !4
  %arrayidx218 = getelementptr inbounds float* %ener, i64 39
  %104 = load float* %arrayidx218, align 4, !tbaa !0
  %conv219 = fpext float %104 to double
  %call220 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %102, i8* getelementptr inbounds ([15 x i8]* @.str8, i64 0, i64 0), i8* %103, double %conv219) #5
  %105 = load %struct._IO_FILE** @debug, align 8, !tbaa !4
  %call221 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %105, i8* getelementptr inbounds ([14 x i8]* @.str9, i64 0, i64 0), i32 %mdstep) #5
  br label %if.end222

if.end222:                                        ; preds = %if.end209, %if.then211
  %cmp225 = fcmp olt float %call141, %19
  br i1 %cmp225, label %lor.end231.thread, label %lor.end231

lor.end231.thread:                                ; preds = %if.end222
  store i32 1, i32* %bConverged, align 4, !tbaa !3
  br label %lor.end231.for.end462_crit_edge

lor.end231:                                       ; preds = %if.end222
  %106 = load i32* @relax_shells.ndir, align 4, !tbaa !3
  %add228 = sub i32 0, %nshell
  %cmp229 = icmp eq i32 %106, %add228
  %lor.ext232 = zext i1 %cmp229 to i32
  store i32 %lor.ext232, i32* %bConverged, align 4, !tbaa !3
  %tobool234.not957 = xor i1 %cmp229, true
  %cmp236958 = icmp sgt i32 %20, 1
  %or.cond959 = and i1 %cmp236958, %tobool234.not957
  br i1 %or.cond959, label %for.body240.lr.ph, label %lor.end231.for.end462_crit_edge

lor.end231.for.end462_crit_edge:                  ; preds = %lor.end231.thread, %lor.end231
  %lor.ext2321012 = phi i32 [ 1, %lor.end231.thread ], [ %lor.ext232, %lor.end231 ]
  %nodeid463.pre = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  br label %for.end462

for.body240.lr.ph:                                ; preds = %lor.end231
  %nthreads313 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %nodeid415 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %threadid419 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  %idx.ext327 = sext i32 %4 to i64
  %idx.neg328 = sub i64 0, %idx.ext327
  %arraydecay340 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 0
  %cmp342954 = icmp sgt i32 %5, 0
  %fc_stepsize264 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 67
  br label %for.body240

for.body240:                                      ; preds = %for.body240.lr.ph, %for.inc460
  %count.0963 = phi i32 [ 1, %for.body240.lr.ph ], [ %inc461, %for.inc460 ]
  %Min.0962 = phi i32 [ 0, %for.body240.lr.ph ], [ %Min.1, %for.inc460 ]
  %step.0960 = phi float [ 1.000000e+00, %for.body240.lr.ph ], [ %step.1, %for.inc460 ]
  %107 = load i32* @relax_shells.ndir, align 4, !tbaa !3
  %tobool241 = icmp eq i32 %107, 0
  br i1 %tobool241, label %for.body240.if.end265_crit_edge, label %if.then242

for.body240.if.end265_crit_edge:                  ; preds = %for.body240
  %idxprom266.phi.trans.insert = sext i32 %Min.0962 to i64
  %arrayidx267.phi.trans.insert = getelementptr inbounds [2 x [3 x float]*]* @relax_shells.pos, i64 0, i64 %idxprom266.phi.trans.insert
  %.pre1007 = load [3 x float]** %arrayidx267.phi.trans.insert, align 8, !tbaa !4
  %sub268.pre = sub nsw i32 1, %Min.0962
  %idxprom269.pre = sext i32 %sub268.pre to i64
  %arrayidx270.pre = getelementptr inbounds [2 x [3 x float]*]* @relax_shells.pos, i64 0, i64 %idxprom269.pre
  %arrayidx272.pre = getelementptr inbounds [2 x [3 x float]*]* @relax_shells.force, i64 0, i64 %idxprom266.phi.trans.insert
  br label %if.end265

if.then242:                                       ; preds = %for.body240
  %108 = load [3 x float]** @relax_shells.x_old, align 8, !tbaa !4
  %add.ptr246 = getelementptr inbounds [3 x float]* %108, i64 %idx.neg328
  %idxprom247 = sext i32 %Min.0962 to i64
  %arrayidx248 = getelementptr inbounds [2 x [3 x float]*]* @relax_shells.pos, i64 0, i64 %idxprom247
  %109 = load [3 x float]** %arrayidx248, align 8, !tbaa !4
  %arrayidx250 = getelementptr inbounds [2 x [3 x float]*]* @relax_shells.force, i64 0, i64 %idxprom247
  %110 = load [3 x float]** %arrayidx250, align 8, !tbaa !4
  %111 = load [3 x float]** @relax_shells.acc_dir, align 8, !tbaa !4
  %add.ptr253 = getelementptr inbounds [3 x float]* %111, i64 %idx.neg328
  call fastcc void @init_adir(%struct._IO_FILE* %log, %struct.t_topology* %top, %struct.t_inputrec* %ir, i32 %mdstep, %struct.t_mdatoms* %md, i32 %4, i32 %add, [3 x float]* %add.ptr246, [3 x float]* %x, [3 x float]* %109, [3 x float]* %110, [3 x float]* %add.ptr253, [3 x float]* %arraydecay340, float %lambda, float* %dum, %struct.t_nrnb* %nrnb) #6
  %112 = load [3 x float]** %arrayidx248, align 8, !tbaa !4
  %sub258 = sub nsw i32 1, %Min.0962
  %idxprom259 = sext i32 %sub258 to i64
  %arrayidx260 = getelementptr inbounds [2 x [3 x float]*]* @relax_shells.pos, i64 0, i64 %idxprom259
  %113 = load [3 x float]** %arrayidx260, align 8, !tbaa !4
  %114 = load [3 x float]** @relax_shells.acc_dir, align 8, !tbaa !4
  %115 = load float* %fc_stepsize264, align 4, !tbaa !0
  %conv1.i900 = fdiv float 1.000000e+00, %115
  br i1 %cmp342954, label %for.body.i910, label %if.end265

for.body.i910:                                    ; preds = %if.then242, %for.body.i910
  %indvars.iv.i902 = phi i64 [ %indvars.iv.next.i908, %for.body.i910 ], [ %idx.ext327, %if.then242 ]
  %arraydecay.i903 = getelementptr inbounds [3 x float]* %113, i64 %indvars.iv.i902, i64 0
  %arraydecay5.i = getelementptr inbounds [3 x float]* %112, i64 %indvars.iv.i902, i64 0
  %add.ptr263.sum = sub i64 %indvars.iv.i902, %idx.ext327
  %arraydecay8.i904 = getelementptr inbounds [3 x float]* %114, i64 %add.ptr263.sum, i64 0
  %116 = load float* %arraydecay5.i, align 4, !tbaa !0
  %arrayidx1.i.i905 = getelementptr inbounds [3 x float]* %112, i64 %indvars.iv.i902, i64 1
  %117 = load float* %arrayidx1.i.i905, align 4, !tbaa !0
  %arrayidx2.i.i906 = getelementptr inbounds [3 x float]* %112, i64 %indvars.iv.i902, i64 2
  %118 = load float* %arrayidx2.i.i906, align 4, !tbaa !0
  %119 = load float* %arraydecay8.i904, align 4, !tbaa !0
  %mul.i.i = fmul float %conv1.i900, %119
  %arrayidx4.i.i907 = getelementptr inbounds [3 x float]* %114, i64 %add.ptr263.sum, i64 1
  %120 = load float* %arrayidx4.i.i907, align 4, !tbaa !0
  %mul5.i.i = fmul float %conv1.i900, %120
  %arrayidx6.i.i = getelementptr inbounds [3 x float]* %114, i64 %add.ptr263.sum, i64 2
  %121 = load float* %arrayidx6.i.i, align 4, !tbaa !0
  %mul7.i.i = fmul float %conv1.i900, %121
  %mul8.i.i = fmul float %step.0960, %mul.i.i
  %add.i.i = fadd float %116, %mul8.i.i
  store float %add.i.i, float* %arraydecay.i903, align 4, !tbaa !0
  %mul10.i.i = fmul float %step.0960, %mul5.i.i
  %add11.i.i = fadd float %117, %mul10.i.i
  %arrayidx12.i.i = getelementptr inbounds [3 x float]* %113, i64 %indvars.iv.i902, i64 1
  store float %add11.i.i, float* %arrayidx12.i.i, align 4, !tbaa !0
  %mul13.i.i = fmul float %step.0960, %mul7.i.i
  %add14.i.i = fadd float %118, %mul13.i.i
  %arrayidx15.i.i = getelementptr inbounds [3 x float]* %113, i64 %indvars.iv.i902, i64 2
  store float %add14.i.i, float* %arrayidx15.i.i, align 4, !tbaa !0
  %indvars.iv.next.i908 = add i64 %indvars.iv.i902, 1
  %122 = trunc i64 %indvars.iv.next.i908 to i32
  %cmp.i909 = icmp slt i32 %122, %add
  br i1 %cmp.i909, label %for.body.i910, label %if.end265

if.end265:                                        ; preds = %for.body.i910, %for.body240.if.end265_crit_edge, %if.then242
  %arrayidx272.pre-phi = phi [3 x float]** [ %arrayidx272.pre, %for.body240.if.end265_crit_edge ], [ %arrayidx250, %if.then242 ], [ %arrayidx250, %for.body.i910 ]
  %arrayidx270.pre-phi = phi [3 x float]** [ %arrayidx270.pre, %for.body240.if.end265_crit_edge ], [ %arrayidx260, %if.then242 ], [ %arrayidx260, %for.body.i910 ]
  %idxprom269.pre-phi = phi i64 [ %idxprom269.pre, %for.body240.if.end265_crit_edge ], [ %idxprom259, %if.then242 ], [ %idxprom259, %for.body.i910 ]
  %sub268.pre-phi = phi i32 [ %sub268.pre, %for.body240.if.end265_crit_edge ], [ %sub258, %if.then242 ], [ %sub258, %for.body.i910 ]
  %123 = phi [3 x float]* [ %.pre1007, %for.body240.if.end265_crit_edge ], [ %112, %if.then242 ], [ %112, %for.body.i910 ]
  %idxprom266 = sext i32 %Min.0962 to i64
  %arrayidx267 = getelementptr inbounds [2 x [3 x float]*]* @relax_shells.pos, i64 0, i64 %idxprom266
  %124 = load [3 x float]** %arrayidx270.pre-phi, align 8, !tbaa !4
  %125 = load [3 x float]** %arrayidx272.pre-phi, align 8, !tbaa !4
  br i1 %cmp182.i, label %for.body.i932, label %shell_pos_sd.exit

for.body.i932:                                    ; preds = %if.end265, %for.body.i932
  %indvars.iv.i912 = phi i64 [ %indvars.iv.next.i929, %for.body.i932 ], [ 0, %if.end265 ]
  %shell1.i = getelementptr inbounds %struct.t_shell* %shells, i64 %indvars.iv.i912, i32 1
  %126 = load i32* %shell1.i, align 4, !tbaa !3
  %k_14.i = getelementptr inbounds %struct.t_shell* %shells, i64 %indvars.iv.i912, i32 6
  %127 = load float* %k_14.i, align 4, !tbaa !0
  %idxprom5.i = sext i32 %126 to i64
  %arraydecay.i913 = getelementptr inbounds [3 x float]* %124, i64 %idxprom5.i, i64 0
  %arraydecay9.i = getelementptr inbounds [3 x float]* %123, i64 %idxprom5.i, i64 0
  %arraydecay12.i = getelementptr inbounds [3 x float]* %125, i64 %idxprom5.i, i64 0
  %128 = load float* %arraydecay9.i, align 4, !tbaa !0
  %arrayidx1.i.i914 = getelementptr inbounds [3 x float]* %123, i64 %idxprom5.i, i64 1
  %129 = load float* %arrayidx1.i.i914, align 4, !tbaa !0
  %arrayidx2.i.i915 = getelementptr inbounds [3 x float]* %123, i64 %idxprom5.i, i64 2
  %130 = load float* %arrayidx2.i.i915, align 4, !tbaa !0
  %131 = load float* %arraydecay12.i, align 4, !tbaa !0
  %mul.i.i916 = fmul float %127, %131
  %arrayidx4.i.i917 = getelementptr inbounds [3 x float]* %125, i64 %idxprom5.i, i64 1
  %132 = load float* %arrayidx4.i.i917, align 4, !tbaa !0
  %mul5.i.i918 = fmul float %127, %132
  %arrayidx6.i.i919 = getelementptr inbounds [3 x float]* %125, i64 %idxprom5.i, i64 2
  %133 = load float* %arrayidx6.i.i919, align 4, !tbaa !0
  %mul7.i.i920 = fmul float %127, %133
  %mul8.i.i921 = fmul float %step.0960, %mul.i.i916
  %add.i.i922 = fadd float %128, %mul8.i.i921
  store float %add.i.i922, float* %arraydecay.i913, align 4, !tbaa !0
  %mul10.i.i923 = fmul float %step.0960, %mul5.i.i918
  %add11.i.i924 = fadd float %129, %mul10.i.i923
  %arrayidx12.i.i925 = getelementptr inbounds [3 x float]* %124, i64 %idxprom5.i, i64 1
  store float %add11.i.i924, float* %arrayidx12.i.i925, align 4, !tbaa !0
  %mul13.i.i926 = fmul float %step.0960, %mul7.i.i920
  %add14.i.i927 = fadd float %130, %mul13.i.i926
  %arrayidx15.i.i928 = getelementptr inbounds [3 x float]* %124, i64 %idxprom5.i, i64 2
  store float %add14.i.i927, float* %arrayidx15.i.i928, align 4, !tbaa !0
  %indvars.iv.next.i929 = add i64 %indvars.iv.i912, 1
  %lftr.wideiv980 = trunc i64 %indvars.iv.next.i929 to i32
  %exitcond981 = icmp eq i32 %lftr.wideiv980, %nshell
  br i1 %exitcond981, label %shell_pos_sd.exit, label %for.body.i932

shell_pos_sd.exit:                                ; preds = %for.body.i932, %if.end265
  %134 = load %struct._IO_FILE** @debug, align 8, !tbaa !4
  %tobool273 = icmp eq %struct._IO_FILE* %134, null
  br i1 %tobool273, label %if.end284, label %if.then274

if.then274:                                       ; preds = %shell_pos_sd.exit
  %add.ptr279 = getelementptr inbounds [3 x float]* %124, i64 %idx.ext327
  call void @pr_rvecs(%struct._IO_FILE* %134, i32 0, i8* getelementptr inbounds ([21 x i8]* @.str10, i64 0, i64 0), [3 x float]* %add.ptr279, i32 %5) #5
  %135 = load %struct._IO_FILE** @debug, align 8, !tbaa !4
  %136 = load [3 x float]** %arrayidx267, align 8, !tbaa !4
  %add.ptr283 = getelementptr inbounds [3 x float]* %136, i64 %idx.ext327
  call void @pr_rvecs(%struct._IO_FILE* %135, i32 0, i8* getelementptr inbounds ([21 x i8]* @.str11, i64 0, i64 0), [3 x float]* %add.ptr283, i32 %5) #5
  %.pre = load [3 x float]** %arrayidx270.pre-phi, align 8, !tbaa !4
  br label %if.end284

if.end284:                                        ; preds = %shell_pos_sd.exit, %if.then274
  %137 = phi [3 x float]* [ %124, %shell_pos_sd.exit ], [ %.pre, %if.then274 ]
  %arraydecay288 = getelementptr inbounds [2 x [3 x [3 x float]]]* %my_vir, i64 0, i64 %idxprom269.pre-phi, i64 0
  %138 = bitcast [3 x float]* %arraydecay288 to i8*
  call void @llvm.memset.p0i8.i64(i8* %138, i8 0, i64 36, i32 4, i1 false) #1
  %arraydecay292 = getelementptr inbounds [2 x [3 x [3 x float]]]* %pme_vir, i64 0, i64 %idxprom269.pre-phi, i64 0
  %139 = bitcast [3 x float]* %arraydecay292 to i8*
  call void @llvm.memset.p0i8.i64(i8* %139, i8 0, i64 36, i32 4, i1 false) #1
  %arrayidx306 = getelementptr inbounds [2 x [3 x float]*]* @relax_shells.force, i64 0, i64 %idxprom269.pre-phi
  %140 = load [3 x float]** %arrayidx306, align 8, !tbaa !4
  br i1 %tobool94, label %land.rhs308, label %land.end319

land.rhs308:                                      ; preds = %if.end284
  %141 = load i32* %nnodes184, align 4, !tbaa !3
  %cmp310 = icmp sgt i32 %141, 1
  br i1 %cmp310, label %land.end319, label %lor.rhs312

lor.rhs312:                                       ; preds = %land.rhs308
  %142 = load i32* %nthreads313, align 4, !tbaa !3
  %phitmp = icmp slt i32 %142, 2
  br label %land.end319

land.end319:                                      ; preds = %land.rhs308, %lor.rhs312, %if.end284
  %143 = phi i1 [ false, %if.end284 ], [ false, %land.rhs308 ], [ %phitmp, %lor.rhs312 ]
  %land.ext320 = zext i1 %143 to i32
  call void @do_force(%struct._IO_FILE* %log, %struct.t_commrec* %cr, %struct.t_commrec* %mcr, %struct.t_parm* %parm, %struct.t_nsborder* %nsb, [3 x float]* %arraydecay288, [3 x float]* %arraydecay292, i32 1, %struct.t_nrnb* %nrnb, %struct.t_topology* %top, %struct.t_groups* %grps, [3 x float]* %137, [3 x float]* %v, [3 x float]* %140, [3 x float]* %buf, %struct.t_mdatoms* %md, float* %ener, %struct.t_fcdata* %fcd, i32 %land.ext320, float %lambda, %struct.t_graph* %graph, i32 0, i32 0, %struct.t_forcerec* %fr, float* %mu_tot, i32 0) #5
  %144 = load [3 x float]** %arrayidx306, align 8, !tbaa !4
  call void @sum_lrforces([3 x float]* %144, %struct.t_forcerec* %fr, i32 %4, i32 %5) #5
  %145 = load i32* @relax_shells.ndir, align 4, !tbaa !3
  %tobool324 = icmp eq i32 %145, 0
  br i1 %tobool324, label %if.end366, label %if.then325

if.then325:                                       ; preds = %land.end319
  %146 = load [3 x float]** @relax_shells.x_old, align 8, !tbaa !4
  %add.ptr329 = getelementptr inbounds [3 x float]* %146, i64 %idx.neg328
  %147 = load [3 x float]** %arrayidx270.pre-phi, align 8, !tbaa !4
  %148 = load [3 x float]** %arrayidx306, align 8, !tbaa !4
  %149 = load [3 x float]** @relax_shells.acc_dir, align 8, !tbaa !4
  %add.ptr338 = getelementptr inbounds [3 x float]* %149, i64 %idx.neg328
  call fastcc void @init_adir(%struct._IO_FILE* %log, %struct.t_topology* %top, %struct.t_inputrec* %ir, i32 %mdstep, %struct.t_mdatoms* %md, i32 %4, i32 %add, [3 x float]* %add.ptr329, [3 x float]* %x, [3 x float]* %147, [3 x float]* %148, [3 x float]* %add.ptr338, [3 x float]* %arraydecay340, float %lambda, float* %dum, %struct.t_nrnb* %nrnb) #6
  br i1 %cmp342954, label %for.body344.lr.ph, label %for.end357

for.body344.lr.ph:                                ; preds = %if.then325
  %150 = load float** %massT, align 8, !tbaa !4
  %151 = load [3 x float]** @relax_shells.acc_dir, align 8, !tbaa !4
  br label %for.body344

for.body344:                                      ; preds = %for.body344.lr.ph, %for.body344
  %indvars.iv982 = phi i64 [ %idx.ext327, %for.body344.lr.ph ], [ %indvars.iv.next983, %for.body344 ]
  %sf_dir.2956 = phi float [ 0.000000e+00, %for.body344.lr.ph ], [ %add354, %for.body344 ]
  %arrayidx347 = getelementptr inbounds float* %150, i64 %indvars.iv982
  %152 = load float* %arrayidx347, align 4, !tbaa !0
  %153 = trunc i64 %indvars.iv982 to i32
  %sub348 = sub nsw i32 %153, %4
  %idxprom349 = sext i32 %sub348 to i64
  %arraydecay351 = getelementptr inbounds [3 x float]* %151, i64 %idxprom349, i64 0
  %154 = load float* %arraydecay351, align 4, !tbaa !0
  %mul.i933 = fmul float %154, %154
  %arrayidx2.i934 = getelementptr inbounds [3 x float]* %151, i64 %idxprom349, i64 1
  %155 = load float* %arrayidx2.i934, align 4, !tbaa !0
  %mul4.i935 = fmul float %155, %155
  %add.i936 = fadd float %mul.i933, %mul4.i935
  %arrayidx5.i937 = getelementptr inbounds [3 x float]* %151, i64 %idxprom349, i64 2
  %156 = load float* %arrayidx5.i937, align 4, !tbaa !0
  %mul7.i938 = fmul float %156, %156
  %add8.i939 = fadd float %add.i936, %mul7.i938
  %mul353 = fmul float %152, %add8.i939
  %add354 = fadd float %sf_dir.2956, %mul353
  %indvars.iv.next983 = add i64 %indvars.iv982, 1
  %157 = trunc i64 %indvars.iv.next983 to i32
  %cmp342 = icmp slt i32 %157, %add
  br i1 %cmp342, label %for.body344, label %for.end357

for.end357:                                       ; preds = %for.body344, %if.then325
  %sf_dir.2.lcssa = phi float [ 0.000000e+00, %if.then325 ], [ %add354, %for.body344 ]
  br i1 %tobool94, label %if.then359, label %if.end366

if.then359:                                       ; preds = %for.end357
  %158 = load %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %159 = load i32* @relax_shells.ndir, align 4, !tbaa !3
  %conv360 = sitofp i32 %159 to float
  %div361 = fdiv float %sf_dir.2.lcssa, %conv360
  %conv362 = fpext float %div361 to double
  %call363 = call double @sqrt(double %conv362) #5
  %call364 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %158, i8* getelementptr inbounds ([14 x i8]* @.str12, i64 0, i64 0), double %call363) #5
  br label %if.end366

if.end366:                                        ; preds = %for.end357, %land.end319, %if.then359
  %sf_dir.3 = phi float [ %sf_dir.2.lcssa, %if.then359 ], [ 0.000000e+00, %land.end319 ], [ %sf_dir.2.lcssa, %for.end357 ]
  %160 = load [3 x float]** %arrayidx306, align 8, !tbaa !4
  %161 = load i32* @relax_shells.ndir, align 4, !tbaa !3
  %call370 = call fastcc float @rms_force(%struct.t_commrec* %cr, [3 x float]* %160, i32 %nshell, %struct.t_shell* %shells, i32 %161, float %sf_dir.3) #6
  %arrayidx373 = getelementptr inbounds [2 x float]* %df, i64 0, i64 %idxprom269.pre-phi
  store float %call370, float* %arrayidx373, align 4, !tbaa !0
  %162 = load %struct._IO_FILE** @debug, align 8, !tbaa !4
  %tobool374 = icmp eq %struct._IO_FILE* %162, null
  br i1 %tobool374, label %if.end394, label %if.end384

if.end384:                                        ; preds = %if.end366
  %arrayidx377 = getelementptr inbounds [2 x float]* %df, i64 0, i64 %idxprom266
  %163 = load float* %arrayidx377, align 4, !tbaa !0
  %conv378 = fpext float %163 to double
  %conv382 = fpext float %call370 to double
  %call383 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %162, i8* getelementptr inbounds ([13 x i8]* @.str6, i64 0, i64 0), double %conv378, double %conv382) #5
  %.pr = load %struct._IO_FILE** @debug, align 8, !tbaa !4
  %tobool385 = icmp eq %struct._IO_FILE* %.pr, null
  br i1 %tobool385, label %if.end394, label %if.then386

if.then386:                                       ; preds = %if.end384
  %call388 = call i32 (i8*, i8*, ...)* @sprintf(i8* %2, i8* getelementptr inbounds ([14 x i8]* @.str7, i64 0, i64 0), i32 %count.0963) #5
  %164 = load %struct._IO_FILE** @debug, align 8, !tbaa !4
  call void @pr_rvecs(%struct._IO_FILE* %164, i32 0, i8* %2, [3 x float]* %arraydecay288, i32 3) #5
  br label %if.end394

if.end394:                                        ; preds = %if.end366, %if.end384, %if.then386
  call void @sum_epot(%struct.t_grpopts* %opts, %struct.t_groups* %grps, float* %ener) #5
  %165 = load float* %arrayidx181, align 4, !tbaa !0
  %arrayidx400 = getelementptr inbounds [2 x float]* %Epot, i64 0, i64 %idxprom269.pre-phi
  store float %165, float* %arrayidx400, align 4, !tbaa !0
  %166 = load i32* %nnodes184, align 4, !tbaa !3
  %cmp402 = icmp sgt i32 %166, 1
  br i1 %cmp402, label %if.then408, label %lor.lhs.false404

lor.lhs.false404:                                 ; preds = %if.end394
  %167 = load i32* %nthreads313, align 4, !tbaa !3
  %cmp406 = icmp sgt i32 %167, 1
  br i1 %cmp406, label %if.then408, label %if.end412

if.then408:                                       ; preds = %lor.lhs.false404, %if.end394
  call void @gmx_sumf(i32 1, float* %arrayidx400, %struct.t_commrec* %cr) #5
  br label %if.end412

if.end412:                                        ; preds = %if.then408, %lor.lhs.false404
  br i1 %tobool94, label %land.lhs.true414, label %if.end429

land.lhs.true414:                                 ; preds = %if.end412
  %168 = load i32* %nodeid415, align 4, !tbaa !3
  %cmp416 = icmp eq i32 %168, 0
  br i1 %cmp416, label %land.lhs.true418, label %if.end429

land.lhs.true418:                                 ; preds = %land.lhs.true414
  %169 = load i32* %threadid419, align 4, !tbaa !3
  %cmp420 = icmp eq i32 %169, 0
  br i1 %cmp420, label %if.then.i943, label %if.end429

if.then.i943:                                     ; preds = %land.lhs.true418
  %170 = load %struct._IO_FILE** @stdout, align 8, !tbaa !4
  %171 = load float* %arrayidx400, align 4, !tbaa !0
  %conv.i = fpext float %step.0960 to double
  %conv1.i940 = fpext float %171 to double
  %call.i941 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %170, i8* getelementptr inbounds ([39 x i8]* @.str18, i64 0, i64 0), i32 %mdstep, i32 %count.0963, double %conv.i, double %conv1.i940) #5
  %conv3.i = fpext float %call370 to double
  %call4.i = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %170, i8* getelementptr inbounds ([16 x i8]* @.str19, i64 0, i64 0), double %conv3.i) #5
  br label %if.end429

if.end429:                                        ; preds = %if.then.i943, %land.lhs.true418, %land.lhs.true414, %if.end412
  %cmp433 = fcmp olt float %call370, %19
  %conv434 = zext i1 %cmp433 to i32
  store i32 %conv434, i32* %bConverged, align 4, !tbaa !3
  br i1 %cmp433, label %lor.end440, label %lor.rhs436

lor.rhs436:                                       ; preds = %if.end429
  %conv437 = fpext float %step.0960 to double
  %cmp438 = fcmp olt double %conv437, 1.000000e-02
  br label %lor.end440

lor.end440:                                       ; preds = %if.end429, %lor.rhs436
  %172 = phi i1 [ %cmp438, %lor.rhs436 ], [ true, %if.end429 ]
  %lor.ext441 = zext i1 %172 to i32
  %arrayidx446 = getelementptr inbounds [2 x float]* %df, i64 0, i64 %idxprom266
  %173 = load float* %arrayidx446, align 4, !tbaa !0
  %cmp447 = fcmp olt float %call370, %173
  br i1 %cmp447, label %if.then449, label %if.else455

if.then449:                                       ; preds = %lor.end440
  %174 = load %struct._IO_FILE** @debug, align 8, !tbaa !4
  %tobool450 = icmp eq %struct._IO_FILE* %174, null
  br i1 %tobool450, label %for.inc460, label %if.then451

if.then451:                                       ; preds = %if.then449
  %175 = call i64 @fwrite(i8* getelementptr inbounds ([22 x i8]* @.str13, i64 0, i64 0), i64 21, i64 1, %struct._IO_FILE* %174)
  br label %for.inc460

if.else455:                                       ; preds = %lor.end440
  %conv456 = fpext float %step.0960 to double
  %mul457 = fmul double %conv456, 8.000000e-01
  %conv458 = fptrunc double %mul457 to float
  br label %for.inc460

for.inc460:                                       ; preds = %if.then451, %if.then449, %if.else455
  %step.1 = phi float [ %conv458, %if.else455 ], [ 1.000000e+00, %if.then449 ], [ 1.000000e+00, %if.then451 ]
  %Min.1 = phi i32 [ %Min.0962, %if.else455 ], [ %sub268.pre-phi, %if.then449 ], [ %sub268.pre-phi, %if.then451 ]
  %inc461 = add nsw i32 %count.0963, 1
  %tobool234.not = xor i1 %172, true
  %cmp236 = icmp slt i32 %inc461, %20
  %or.cond = and i1 %cmp236, %tobool234.not
  br i1 %or.cond, label %for.body240, label %for.end462

for.end462:                                       ; preds = %for.inc460, %lor.end231.for.end462_crit_edge
  %nodeid463.pre-phi = phi i32* [ %nodeid463.pre, %lor.end231.for.end462_crit_edge ], [ %nodeid415, %for.inc460 ]
  %count.0.lcssa = phi i32 [ 1, %lor.end231.for.end462_crit_edge ], [ %inc461, %for.inc460 ]
  %Min.0.lcssa = phi i32 [ 0, %lor.end231.for.end462_crit_edge ], [ %Min.1, %for.inc460 ]
  %bDone.0.lcssa = phi i32 [ %lor.ext2321012, %lor.end231.for.end462_crit_edge ], [ %lor.ext441, %for.inc460 ]
  %176 = load i32* %nodeid463.pre-phi, align 4, !tbaa !3
  %cmp464 = icmp eq i32 %176, 0
  br i1 %cmp464, label %land.lhs.true466, label %if.end474

land.lhs.true466:                                 ; preds = %for.end462
  %threadid467 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  %177 = load i32* %threadid467, align 4, !tbaa !3
  %178 = or i32 %177, %bDone.0.lcssa
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %if.then472, label %if.end474

if.then472:                                       ; preds = %land.lhs.true466
  %180 = load %struct._IO_FILE** @stderr, align 8, !tbaa !4
  %call473 = call i32 (%struct._IO_FILE*, i8*, ...)* @fprintf(%struct._IO_FILE* %180, i8* getelementptr inbounds ([33 x i8]* @.str14, i64 0, i64 0), i32 %20) #5
  br label %if.end474

if.end474:                                        ; preds = %land.lhs.true466, %if.then472, %for.end462
  %eeltype = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 33
  %181 = load i32* %eeltype, align 4, !tbaa !3
  %.off = add i32 %181, -3
  %switch = icmp ult i32 %.off, 4
  %cmp491952 = icmp sgt i32 %5, 0
  %or.cond1013 = and i1 %switch, %cmp491952
  br i1 %or.cond1013, label %for.body493.lr.ph, label %if.end505

for.body493.lr.ph:                                ; preds = %if.end474
  %idxprom495 = sext i32 %Min.0.lcssa to i64
  %arrayidx496 = getelementptr inbounds [2 x [3 x float]*]* @relax_shells.force, i64 0, i64 %idxprom495
  %182 = load [3 x float]** %arrayidx496, align 8, !tbaa !4
  %f_pme = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 55
  %183 = load [3 x float]** %f_pme, align 8, !tbaa !4
  %184 = sext i32 %4 to i64
  br label %for.body493

for.body493:                                      ; preds = %for.body493.lr.ph, %for.body493
  %indvars.iv978 = phi i64 [ %184, %for.body493.lr.ph ], [ %indvars.iv.next979, %for.body493 ]
  %arraydecay498 = getelementptr inbounds [3 x float]* %182, i64 %indvars.iv978, i64 0
  %arraydecay501 = getelementptr inbounds [3 x float]* %183, i64 %indvars.iv978, i64 0
  %185 = load float* %arraydecay498, align 4, !tbaa !0
  %186 = load float* %arraydecay501, align 4, !tbaa !0
  %sub.i = fsub float %185, %186
  %arrayidx2.i892 = getelementptr inbounds [3 x float]* %182, i64 %indvars.iv978, i64 1
  %187 = load float* %arrayidx2.i892, align 4, !tbaa !0
  %arrayidx3.i893 = getelementptr inbounds [3 x float]* %183, i64 %indvars.iv978, i64 1
  %188 = load float* %arrayidx3.i893, align 4, !tbaa !0
  %sub4.i = fsub float %187, %188
  %arrayidx5.i894 = getelementptr inbounds [3 x float]* %182, i64 %indvars.iv978, i64 2
  %189 = load float* %arrayidx5.i894, align 4, !tbaa !0
  %arrayidx6.i = getelementptr inbounds [3 x float]* %183, i64 %indvars.iv978, i64 2
  %190 = load float* %arrayidx6.i, align 4, !tbaa !0
  %sub7.i = fsub float %189, %190
  store float %sub.i, float* %arraydecay498, align 4, !tbaa !0
  store float %sub4.i, float* %arrayidx2.i892, align 4, !tbaa !0
  store float %sub7.i, float* %arrayidx5.i894, align 4, !tbaa !0
  %indvars.iv.next979 = add i64 %indvars.iv978, 1
  %191 = trunc i64 %indvars.iv.next979 to i32
  %cmp491 = icmp slt i32 %191, %add
  br i1 %cmp491, label %for.body493, label %if.end505

if.end505:                                        ; preds = %for.body493, %if.end474
  %192 = bitcast [3 x float]* %f to i8*
  %idxprom506 = sext i32 %Min.0.lcssa to i64
  %arrayidx507 = getelementptr inbounds [2 x [3 x float]*]* @relax_shells.force, i64 0, i64 %idxprom506
  %193 = load [3 x float]** %arrayidx507, align 8, !tbaa !4
  %194 = bitcast [3 x float]* %193 to i8*
  %natoms508 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 3
  %195 = load i32* %natoms508, align 4, !tbaa !3
  %conv509 = sext i32 %195 to i64
  %mul510 = mul i64 %conv509, 12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %192, i8* %194, i64 %mul510, i32 4, i1 false)
  %arraydecay.i874 = getelementptr inbounds [2 x [3 x [3 x float]]]* %my_vir, i64 0, i64 %idxprom506, i64 0, i64 0
  %arraydecay2.i875 = getelementptr inbounds [3 x float]* %vir_part, i64 0, i64 0
  %196 = load float* %arraydecay.i874, align 4, !tbaa !0
  store float %196, float* %arraydecay2.i875, align 4, !tbaa !0
  %arrayidx2.i.i876 = getelementptr inbounds [2 x [3 x [3 x float]]]* %my_vir, i64 0, i64 %idxprom506, i64 0, i64 1
  %197 = load float* %arrayidx2.i.i876, align 4, !tbaa !0
  %arrayidx3.i.i877 = getelementptr inbounds [3 x float]* %vir_part, i64 0, i64 1
  store float %197, float* %arrayidx3.i.i877, align 4, !tbaa !0
  %arrayidx4.i.i878 = getelementptr inbounds [2 x [3 x [3 x float]]]* %my_vir, i64 0, i64 %idxprom506, i64 0, i64 2
  %198 = load float* %arrayidx4.i.i878, align 4, !tbaa !0
  %arrayidx5.i.i879 = getelementptr inbounds [3 x float]* %vir_part, i64 0, i64 2
  store float %198, float* %arrayidx5.i.i879, align 4, !tbaa !0
  %arraydecay4.i880 = getelementptr inbounds [2 x [3 x [3 x float]]]* %my_vir, i64 0, i64 %idxprom506, i64 1, i64 0
  %arraydecay6.i881 = getelementptr inbounds [3 x float]* %vir_part, i64 1, i64 0
  %199 = load float* %arraydecay4.i880, align 4, !tbaa !0
  store float %199, float* %arraydecay6.i881, align 4, !tbaa !0
  %arrayidx2.i19.i882 = getelementptr inbounds [2 x [3 x [3 x float]]]* %my_vir, i64 0, i64 %idxprom506, i64 1, i64 1
  %200 = load float* %arrayidx2.i19.i882, align 4, !tbaa !0
  %arrayidx3.i20.i883 = getelementptr inbounds [3 x float]* %vir_part, i64 1, i64 1
  store float %200, float* %arrayidx3.i20.i883, align 4, !tbaa !0
  %arrayidx4.i21.i884 = getelementptr inbounds [2 x [3 x [3 x float]]]* %my_vir, i64 0, i64 %idxprom506, i64 1, i64 2
  %201 = load float* %arrayidx4.i21.i884, align 4, !tbaa !0
  %arrayidx5.i22.i885 = getelementptr inbounds [3 x float]* %vir_part, i64 1, i64 2
  store float %201, float* %arrayidx5.i22.i885, align 4, !tbaa !0
  %arraydecay8.i886 = getelementptr inbounds [2 x [3 x [3 x float]]]* %my_vir, i64 0, i64 %idxprom506, i64 2, i64 0
  %arraydecay10.i887 = getelementptr inbounds [3 x float]* %vir_part, i64 2, i64 0
  %202 = load float* %arraydecay8.i886, align 4, !tbaa !0
  store float %202, float* %arraydecay10.i887, align 4, !tbaa !0
  %arrayidx2.i15.i888 = getelementptr inbounds [2 x [3 x [3 x float]]]* %my_vir, i64 0, i64 %idxprom506, i64 2, i64 1
  %203 = load float* %arrayidx2.i15.i888, align 4, !tbaa !0
  %arrayidx3.i16.i889 = getelementptr inbounds [3 x float]* %vir_part, i64 2, i64 1
  store float %203, float* %arrayidx3.i16.i889, align 4, !tbaa !0
  %arrayidx4.i17.i890 = getelementptr inbounds [2 x [3 x [3 x float]]]* %my_vir, i64 0, i64 %idxprom506, i64 2, i64 2
  %204 = load float* %arrayidx4.i17.i890, align 4, !tbaa !0
  %arrayidx5.i18.i891 = getelementptr inbounds [3 x float]* %vir_part, i64 2, i64 2
  store float %204, float* %arrayidx5.i18.i891, align 4, !tbaa !0
  %arraydecay.i872 = getelementptr inbounds [2 x [3 x [3 x float]]]* %pme_vir, i64 0, i64 %idxprom506, i64 0, i64 0
  %arraydecay2.i = getelementptr inbounds [3 x float]* %pme_vir_part, i64 0, i64 0
  %205 = load float* %arraydecay.i872, align 4, !tbaa !0
  store float %205, float* %arraydecay2.i, align 4, !tbaa !0
  %arrayidx2.i.i873 = getelementptr inbounds [2 x [3 x [3 x float]]]* %pme_vir, i64 0, i64 %idxprom506, i64 0, i64 1
  %206 = load float* %arrayidx2.i.i873, align 4, !tbaa !0
  %arrayidx3.i.i = getelementptr inbounds [3 x float]* %pme_vir_part, i64 0, i64 1
  store float %206, float* %arrayidx3.i.i, align 4, !tbaa !0
  %arrayidx4.i.i = getelementptr inbounds [2 x [3 x [3 x float]]]* %pme_vir, i64 0, i64 %idxprom506, i64 0, i64 2
  %207 = load float* %arrayidx4.i.i, align 4, !tbaa !0
  %arrayidx5.i.i = getelementptr inbounds [3 x float]* %pme_vir_part, i64 0, i64 2
  store float %207, float* %arrayidx5.i.i, align 4, !tbaa !0
  %arraydecay4.i = getelementptr inbounds [2 x [3 x [3 x float]]]* %pme_vir, i64 0, i64 %idxprom506, i64 1, i64 0
  %arraydecay6.i = getelementptr inbounds [3 x float]* %pme_vir_part, i64 1, i64 0
  %208 = load float* %arraydecay4.i, align 4, !tbaa !0
  store float %208, float* %arraydecay6.i, align 4, !tbaa !0
  %arrayidx2.i19.i = getelementptr inbounds [2 x [3 x [3 x float]]]* %pme_vir, i64 0, i64 %idxprom506, i64 1, i64 1
  %209 = load float* %arrayidx2.i19.i, align 4, !tbaa !0
  %arrayidx3.i20.i = getelementptr inbounds [3 x float]* %pme_vir_part, i64 1, i64 1
  store float %209, float* %arrayidx3.i20.i, align 4, !tbaa !0
  %arrayidx4.i21.i = getelementptr inbounds [2 x [3 x [3 x float]]]* %pme_vir, i64 0, i64 %idxprom506, i64 1, i64 2
  %210 = load float* %arrayidx4.i21.i, align 4, !tbaa !0
  %arrayidx5.i22.i = getelementptr inbounds [3 x float]* %pme_vir_part, i64 1, i64 2
  store float %210, float* %arrayidx5.i22.i, align 4, !tbaa !0
  %arraydecay8.i = getelementptr inbounds [2 x [3 x [3 x float]]]* %pme_vir, i64 0, i64 %idxprom506, i64 2, i64 0
  %arraydecay10.i = getelementptr inbounds [3 x float]* %pme_vir_part, i64 2, i64 0
  %211 = load float* %arraydecay8.i, align 4, !tbaa !0
  store float %211, float* %arraydecay10.i, align 4, !tbaa !0
  %arrayidx2.i15.i = getelementptr inbounds [2 x [3 x [3 x float]]]* %pme_vir, i64 0, i64 %idxprom506, i64 2, i64 1
  %212 = load float* %arrayidx2.i15.i, align 4, !tbaa !0
  %arrayidx3.i16.i = getelementptr inbounds [3 x float]* %pme_vir_part, i64 2, i64 1
  store float %212, float* %arrayidx3.i16.i, align 4, !tbaa !0
  %arrayidx4.i17.i = getelementptr inbounds [2 x [3 x [3 x float]]]* %pme_vir, i64 0, i64 %idxprom506, i64 2, i64 2
  %213 = load float* %arrayidx4.i17.i, align 4, !tbaa !0
  %arrayidx5.i18.i = getelementptr inbounds [3 x float]* %pme_vir_part, i64 2, i64 2
  store float %213, float* %arrayidx5.i18.i, align 4, !tbaa !0
  %214 = load %struct._IO_FILE** @debug, align 8, !tbaa !4
  %tobool517 = icmp eq %struct._IO_FILE* %214, null
  br i1 %tobool517, label %if.end522, label %if.then518

if.then518:                                       ; preds = %if.end505
  %call520 = call i32 (i8*, i8*, ...)* @sprintf(i8* %2, i8* getelementptr inbounds ([14 x i8]* @.str7, i64 0, i64 0), i32 %count.0.lcssa) #5
  %215 = load %struct._IO_FILE** @debug, align 8, !tbaa !4
  call void @pr_rvecs(%struct._IO_FILE* %215, i32 0, i8* %2, [3 x float]* %vir_part, i32 3) #5
  br label %if.end522

if.end522:                                        ; preds = %if.end505, %if.then518
  %216 = load i32* @relax_shells.ndir, align 4, !tbaa !3
  %add523 = add nsw i32 %216, %nshell
  %cmp524 = icmp sgt i32 %add523, 0
  br i1 %cmp524, label %if.then526, label %if.end532

if.then526:                                       ; preds = %if.end522
  %217 = bitcast [3 x float]* %x to i8*
  %arrayidx528 = getelementptr inbounds [2 x [3 x float]*]* @relax_shells.pos, i64 0, i64 %idxprom506
  %218 = load [3 x float]** %arrayidx528, align 8, !tbaa !4
  %219 = bitcast [3 x float]* %218 to i8*
  %220 = load i32* %natoms508, align 4, !tbaa !3
  %conv530 = sext i32 %220 to i64
  %mul531 = mul i64 %conv530, 12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %217, i8* %219, i64 %mul531, i32 4, i1 false)
  %.pr947 = load i32* @relax_shells.ndir, align 4, !tbaa !3
  br label %if.end532

if.end532:                                        ; preds = %if.then526, %if.end522
  %221 = phi i32 [ %.pr947, %if.then526 ], [ %216, %if.end522 ]
  %cmp533 = icmp sgt i32 %221, 0
  br i1 %cmp533, label %if.then535, label %if.end569

if.then535:                                       ; preds = %if.end532
  %idx.ext537 = sext i32 %4 to i64
  %idx.neg538 = sub i64 0, %idx.ext537
  %add.ptr539 = getelementptr inbounds [3 x float]* %x, i64 %idx.neg538
  %222 = load [3 x float]** @relax_shells.x_old, align 8, !tbaa !4
  %add.ptr542 = getelementptr inbounds [3 x float]* %222, i64 %idx.neg538
  %arraydecay544 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 0
  %call545 = call i32 @constrain(%struct._IO_FILE* %log, %struct.t_topology* %top, %struct.t_inputrec* %ir, i32 %mdstep, %struct.t_mdatoms* %md, i32 %4, i32 %add, [3 x float]* %add.ptr539, [3 x float]* %add.ptr542, [3 x float]* null, [3 x float]* %arraydecay544, float %lambda, float* %dum, %struct.t_nrnb* %nrnb, i32 1) #5
  %cmp547950 = icmp sgt i32 %5, 0
  br i1 %cmp547950, label %for.body549.lr.ph, label %if.end569

for.body549.lr.ph:                                ; preds = %if.then535
  %arraydecay557 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 0
  %arrayidx2.i = getelementptr inbounds [3 x float]* %dx, i64 0, i64 1
  %arrayidx5.i = getelementptr inbounds [3 x float]* %dx, i64 0, i64 2
  br label %for.body549

for.body549:                                      ; preds = %for.body549, %for.body549.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body549.lr.ph ], [ %indvars.iv.next, %for.body549 ]
  %223 = add nsw i64 %indvars.iv, %idx.ext537
  %arraydecay553 = getelementptr inbounds [3 x float]* %x, i64 %223, i64 0
  %224 = load [3 x float]** @relax_shells.x_old, align 8, !tbaa !4
  %arraydecay556 = getelementptr inbounds [3 x float]* %224, i64 %indvars.iv, i64 0
  call void @pbc_dx(float* %arraydecay553, float* %arraydecay556, float* %arraydecay557) #5
  %225 = load float* %delta_t76, align 4, !tbaa !0
  %div560 = fdiv float 1.000000e+00, %225
  %arraydecay565 = getelementptr inbounds [3 x float]* %v, i64 %223, i64 0
  %226 = load float* %arraydecay557, align 4, !tbaa !0
  %mul.i = fmul float %div560, %226
  store float %mul.i, float* %arraydecay565, align 4, !tbaa !0
  %227 = load float* %arrayidx2.i, align 4, !tbaa !0
  %mul3.i = fmul float %div560, %227
  %arrayidx4.i = getelementptr inbounds [3 x float]* %v, i64 %223, i64 1
  store float %mul3.i, float* %arrayidx4.i, align 4, !tbaa !0
  %228 = load float* %arrayidx5.i, align 4, !tbaa !0
  %mul6.i = fmul float %div560, %228
  %arrayidx7.i = getelementptr inbounds [3 x float]* %v, i64 %223, i64 2
  store float %mul6.i, float* %arrayidx7.i, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %5
  br i1 %exitcond, label %if.end569, label %for.body549

if.end569:                                        ; preds = %if.then535, %for.body549, %if.end532
  call void @llvm.lifetime.end(i64 56, i8* %2) #1
  call void @llvm.lifetime.end(i64 72, i8* %1) #1
  call void @llvm.lifetime.end(i64 72, i8* %0) #1
  ret i32 %count.0.lcssa
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #2

; Function Attrs: optsize
declare void @init_pbc([3 x float]*) #2

; Function Attrs: optsize
declare void @do_force(%struct._IO_FILE*, %struct.t_commrec*, %struct.t_commrec*, %struct.t_parm*, %struct.t_nsborder*, [3 x float]*, [3 x float]*, i32, %struct.t_nrnb*, %struct.t_topology*, %struct.t_groups*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_mdatoms*, float*, %struct.t_fcdata*, i32, float, %struct.t_graph*, i32, i32, %struct.t_forcerec*, float*, i32) #2

; Function Attrs: optsize
declare void @sum_lrforces([3 x float]*, %struct.t_forcerec*, i32, i32) #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @init_adir(%struct._IO_FILE* %log, %struct.t_topology* %top, %struct.t_inputrec* %ir, i32 %step, %struct.t_mdatoms* %md, i32 %start, i32 %end, [3 x float]* %x_old, [3 x float]* nocapture %x_init, [3 x float]* %x, [3 x float]* nocapture %f, [3 x float]* %acc_dir, [3 x float]* %box, float %lambda, float* %dvdlambda, %struct.t_nrnb* %nrnb) #0 {
entry:
  %0 = load [3 x float]** @init_adir.xnew, align 8, !tbaa !4
  %cmp = icmp eq [3 x float]* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %sub = sub nsw i32 %end, %start
  %call = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 247, i32 %sub, i32 12) #5
  %1 = bitcast i8* %call to [3 x float]*
  store [3 x float]* %1, [3 x float]** @init_adir.xnold, align 8, !tbaa !4
  %call2 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([56 x i8]* @.str1, i64 0, i64 0), i32 248, i32 %sub, i32 12) #5
  %2 = bitcast i8* %call2 to [3 x float]*
  store [3 x float]* %2, [3 x float]** @init_adir.xnew, align 8, !tbaa !4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = phi [3 x float]* [ %2, %if.then ], [ %0, %entry ]
  %ptype3 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 13
  %4 = load i16** %ptype3, align 8, !tbaa !4
  %delta_t = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 15
  %5 = load float* %delta_t, align 4, !tbaa !0
  %cmp4242 = icmp slt i32 %start, %end
  br i1 %cmp4242, label %for.body.lr.ph, label %if.end.for.end85_crit_edge

if.end.for.end85_crit_edge:                       ; preds = %if.end
  %.pre = load [3 x float]** @init_adir.xnold, align 8, !tbaa !4
  %idx.ext.pre = sext i32 %start to i64
  br label %for.end85

for.body.lr.ph:                                   ; preds = %if.end
  %invmass = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 5
  %6 = load float** %invmass, align 8, !tbaa !4
  %7 = load [3 x float]** @init_adir.xnold, align 8, !tbaa !4
  %conv55 = fpext float %5 to double
  %8 = sext i32 %start to i64
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %for.inc83
  %indvars.iv250 = phi i64 [ %8, %for.body.lr.ph ], [ %indvars.iv.next251, %for.inc83 ]
  %arrayidx = getelementptr inbounds float* %6, i64 %indvars.iv250
  %9 = load float* %arrayidx, align 4, !tbaa !0
  %mul = fmul float %5, %9
  %conv = fpext float %mul to double
  %arrayidx10 = getelementptr inbounds i16* %4, i64 %indvars.iv250
  %10 = load i16* %arrayidx10, align 2, !tbaa !5
  %11 = add nsw i64 %indvars.iv250, %8
  br label %for.body8

for.body8:                                        ; preds = %for.inc, %for.body
  %indvars.iv246 = phi i64 [ 0, %for.body ], [ %indvars.iv.next247, %for.inc ]
  switch i16 %10, label %if.then19 [
    i16 4, label %if.else
    i16 2, label %if.else
  ]

if.then19:                                        ; preds = %for.body8
  %arrayidx23 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv250, i64 %indvars.iv246
  %12 = load float* %arrayidx23, align 4, !tbaa !0
  %arrayidx27 = getelementptr inbounds [3 x float]* %x_init, i64 %indvars.iv250, i64 %indvars.iv246
  %13 = load float* %arrayidx27, align 4, !tbaa !0
  %arrayidx31 = getelementptr inbounds [3 x float]* %x_old, i64 %indvars.iv250, i64 %indvars.iv246
  %14 = load float* %arrayidx31, align 4, !tbaa !0
  %sub32 = fsub float %13, %14
  %sub33 = fsub float %12, %sub32
  %arrayidx37 = getelementptr inbounds [3 x float]* %7, i64 %11, i64 %indvars.iv246
  store float %sub33, float* %arrayidx37, align 4, !tbaa !0
  %15 = load float* %arrayidx23, align 4, !tbaa !0
  %mul42 = fmul float %15, 2.000000e+00
  %16 = load float* %arrayidx31, align 4, !tbaa !0
  %sub47 = fsub float %mul42, %16
  %conv48 = fpext float %sub47 to double
  %arrayidx52 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv250, i64 %indvars.iv246
  %17 = load float* %arrayidx52, align 4, !tbaa !0
  %conv53 = fpext float %17 to double
  %mul54 = fmul double %conv, %conv53
  %mul56 = fmul double %conv55, %mul54
  %add57 = fadd double %conv48, %mul56
  %conv58 = fptrunc double %add57 to float
  %arrayidx63 = getelementptr inbounds [3 x float]* %3, i64 %11, i64 %indvars.iv246
  store float %conv58, float* %arrayidx63, align 4, !tbaa !0
  br label %for.inc

if.else:                                          ; preds = %for.body8, %for.body8
  %arrayidx67 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv250, i64 %indvars.iv246
  %18 = load float* %arrayidx67, align 4, !tbaa !0
  %arrayidx72 = getelementptr inbounds [3 x float]* %7, i64 %11, i64 %indvars.iv246
  store float %18, float* %arrayidx72, align 4, !tbaa !0
  %19 = load float* %arrayidx67, align 4, !tbaa !0
  %arrayidx81 = getelementptr inbounds [3 x float]* %3, i64 %11, i64 %indvars.iv246
  store float %19, float* %arrayidx81, align 4, !tbaa !0
  br label %for.inc

for.inc:                                          ; preds = %if.then19, %if.else
  %indvars.iv.next247 = add i64 %indvars.iv246, 1
  %lftr.wideiv248 = trunc i64 %indvars.iv.next247 to i32
  %exitcond249 = icmp eq i32 %lftr.wideiv248, 3
  br i1 %exitcond249, label %for.inc83, label %for.body8

for.inc83:                                        ; preds = %for.inc
  %indvars.iv.next251 = add i64 %indvars.iv250, 1
  %20 = trunc i64 %indvars.iv.next251 to i32
  %cmp4 = icmp slt i32 %20, %end
  br i1 %cmp4, label %for.body, label %for.end85

for.end85:                                        ; preds = %for.inc83, %if.end.for.end85_crit_edge
  %idx.ext.pre-phi = phi i64 [ %idx.ext.pre, %if.end.for.end85_crit_edge ], [ %8, %for.inc83 ]
  %21 = phi [3 x float]* [ %.pre, %if.end.for.end85_crit_edge ], [ %7, %for.inc83 ]
  %idx.neg = sub i64 0, %idx.ext.pre-phi
  %add.ptr = getelementptr inbounds [3 x float]* %21, i64 %idx.neg
  %call86 = tail call i32 @constrain(%struct._IO_FILE* %log, %struct.t_topology* %top, %struct.t_inputrec* %ir, i32 %step, %struct.t_mdatoms* %md, i32 %start, i32 %end, [3 x float]* %x, [3 x float]* %add.ptr, [3 x float]* null, [3 x float]* %box, float %lambda, float* %dvdlambda, %struct.t_nrnb* %nrnb, i32 1) #5
  %22 = load [3 x float]** @init_adir.xnew, align 8, !tbaa !4
  %add.ptr89 = getelementptr inbounds [3 x float]* %22, i64 %idx.neg
  %call90 = tail call i32 @constrain(%struct._IO_FILE* %log, %struct.t_topology* %top, %struct.t_inputrec* %ir, i32 %step, %struct.t_mdatoms* %md, i32 %start, i32 %end, [3 x float]* %x, [3 x float]* %add.ptr89, [3 x float]* null, [3 x float]* %box, float %lambda, float* %dvdlambda, %struct.t_nrnb* %nrnb, i32 1) #5
  br i1 %cmp4242, label %for.cond95.preheader.lr.ph, label %for.end85.for.end137_crit_edge

for.end85.for.end137_crit_edge:                   ; preds = %for.end85
  %.pre254 = load [3 x float]** @init_adir.xnew, align 8, !tbaa !4
  br label %for.end137

for.cond95.preheader.lr.ph:                       ; preds = %for.end85
  %23 = load [3 x float]** @init_adir.xnold, align 8, !tbaa !4
  %24 = load [3 x float]** @init_adir.xnew, align 8, !tbaa !4
  %mul.i = fmul float %5, %5
  %invmass121 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 5
  %25 = load float** %invmass121, align 8, !tbaa !4
  br label %for.cond95.preheader

for.cond95.preheader:                             ; preds = %for.cond95.preheader.lr.ph, %for.end132
  %indvars.iv244 = phi i64 [ %idx.ext.pre-phi, %for.cond95.preheader.lr.ph ], [ %indvars.iv.next245, %for.end132 ]
  %arrayidx122 = getelementptr inbounds float* %25, i64 %indvars.iv244
  %26 = trunc i64 %indvars.iv244 to i32
  %sub126 = sub nsw i32 %26, %start
  %idxprom127 = sext i32 %sub126 to i64
  br label %for.body98

for.body98:                                       ; preds = %for.body98, %for.cond95.preheader
  %indvars.iv = phi i64 [ 0, %for.cond95.preheader ], [ %indvars.iv.next, %for.body98 ]
  %arrayidx102 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv244, i64 %indvars.iv
  %27 = load float* %arrayidx102, align 4, !tbaa !0
  %mul103 = fmul float %27, 2.000000e+00
  %arrayidx107 = getelementptr inbounds [3 x float]* %23, i64 %indvars.iv244, i64 %indvars.iv
  %28 = load float* %arrayidx107, align 4, !tbaa !0
  %sub108 = fsub float %mul103, %28
  %arrayidx112 = getelementptr inbounds [3 x float]* %24, i64 %indvars.iv244, i64 %indvars.iv
  %29 = load float* %arrayidx112, align 4, !tbaa !0
  %sub113 = fsub float %sub108, %29
  %sub114 = fsub float -0.000000e+00, %sub113
  %div = fdiv float %sub114, %mul.i
  %arrayidx119 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv244, i64 %indvars.iv
  %30 = load float* %arrayidx119, align 4, !tbaa !0
  %31 = load float* %arrayidx122, align 4, !tbaa !0
  %mul123 = fmul float %30, %31
  %sub124 = fsub float %div, %mul123
  %arrayidx129 = getelementptr inbounds [3 x float]* %24, i64 %idxprom127, i64 %indvars.iv
  store float %sub124, float* %arrayidx129, align 4, !tbaa !0
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, 3
  br i1 %exitcond, label %for.end132, label %for.body98

for.end132:                                       ; preds = %for.body98
  %arraydecay = getelementptr inbounds [3 x float]* %acc_dir, i64 %indvars.iv244, i64 0
  store float 0.000000e+00, float* %arraydecay, align 4, !tbaa !0
  %arrayidx1.i = getelementptr inbounds [3 x float]* %acc_dir, i64 %indvars.iv244, i64 1
  store float 0.000000e+00, float* %arrayidx1.i, align 4, !tbaa !0
  %arrayidx2.i = getelementptr inbounds [3 x float]* %acc_dir, i64 %indvars.iv244, i64 2
  store float 0.000000e+00, float* %arrayidx2.i, align 4, !tbaa !0
  %indvars.iv.next245 = add i64 %indvars.iv244, 1
  %32 = trunc i64 %indvars.iv.next245 to i32
  %cmp92 = icmp slt i32 %32, %end
  br i1 %cmp92, label %for.cond95.preheader, label %for.end137

for.end137:                                       ; preds = %for.end132, %for.end85.for.end137_crit_edge
  %33 = phi [3 x float]* [ %.pre254, %for.end85.for.end137_crit_edge ], [ %24, %for.end132 ]
  %call138 = tail call i32 @constrain(%struct._IO_FILE* %log, %struct.t_topology* %top, %struct.t_inputrec* %ir, i32 %step, %struct.t_mdatoms* %md, i32 %start, i32 %end, [3 x float]* %x_old, [3 x float]* %33, [3 x float]* %acc_dir, [3 x float]* %box, float %lambda, float* %dvdlambda, %struct.t_nrnb* %nrnb, i32 0) #5
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct._IO_FILE* nocapture, i8* nocapture, ...) #3

; Function Attrs: nounwind optsize
declare double @sqrt(double) #3

; Function Attrs: nounwind optsize uwtable
define internal fastcc float @rms_force(%struct.t_commrec* %cr, [3 x float]* nocapture %f, i32 %ns, %struct.t_shell* nocapture %s, i32 %ndir, float %sf_dir) #0 {
entry:
  %ntot = alloca i32, align 4
  %df2 = alloca float, align 4
  %add = add nsw i32 %ndir, %ns
  store i32 %add, i32* %ntot, align 4, !tbaa !3
  %tobool = icmp eq i32 %add, 0
  br i1 %tobool, label %return, label %if.end

if.end:                                           ; preds = %entry
  store float %sf_dir, float* %df2, align 4, !tbaa !0
  %cmp23 = icmp sgt i32 %ns, 0
  br i1 %cmp23, label %for.body, label %for.end

for.body:                                         ; preds = %if.end, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.end ]
  %add725 = phi float [ %add7, %for.body ], [ %sf_dir, %if.end ]
  %shell1 = getelementptr inbounds %struct.t_shell* %s, i64 %indvars.iv, i32 1
  %0 = load i32* %shell1, align 4, !tbaa !3
  %idxprom2 = sext i32 %0 to i64
  %arraydecay = getelementptr inbounds [3 x float]* %f, i64 %idxprom2, i64 0
  %1 = load float* %arraydecay, align 4, !tbaa !0
  %mul.i = fmul float %1, %1
  %arrayidx2.i = getelementptr inbounds [3 x float]* %f, i64 %idxprom2, i64 1
  %2 = load float* %arrayidx2.i, align 4, !tbaa !0
  %mul4.i = fmul float %2, %2
  %add.i = fadd float %mul.i, %mul4.i
  %arrayidx5.i = getelementptr inbounds [3 x float]* %f, i64 %idxprom2, i64 2
  %3 = load float* %arrayidx5.i, align 4, !tbaa !0
  %mul7.i = fmul float %3, %3
  %add8.i = fadd float %add.i, %mul7.i
  %add7 = fadd float %add725, %add8.i
  %indvars.iv.next = add i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %ns
  br i1 %exitcond, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.body
  store float %add7, float* %df2, align 4, !tbaa !0
  br label %for.end

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end
  %4 = phi float [ %add7, %for.cond.for.end_crit_edge ], [ %sf_dir, %if.end ]
  %nnodes = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %5 = load i32* %nnodes, align 4, !tbaa !3
  %cmp8 = icmp sgt i32 %5, 1
  br i1 %cmp8, label %if.then10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %nthreads = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %6 = load i32* %nthreads, align 4, !tbaa !3
  %cmp9 = icmp sgt i32 %6, 1
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %lor.lhs.false, %for.end
  call void @gmx_sumf(i32 1, float* %df2, %struct.t_commrec* %cr) #5
  call void @gmx_sumi(i32 1, i32* %ntot, %struct.t_commrec* %cr) #5
  %.pre = load float* %df2, align 4, !tbaa !0
  %.pre26 = load i32* %ntot, align 4, !tbaa !3
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %lor.lhs.false
  %7 = phi i32 [ %.pre26, %if.then10 ], [ %add, %lor.lhs.false ]
  %8 = phi float [ %.pre, %if.then10 ], [ %4, %lor.lhs.false ]
  %conv = sitofp i32 %7 to float
  %div = fdiv float %8, %conv
  %conv14 = call float @sqrtf(float %div) #3
  br label %return

return:                                           ; preds = %entry, %if.end11
  %retval.0 = phi float [ %conv14, %if.end11 ], [ 0.000000e+00, %entry ]
  ret float %retval.0
}

; Function Attrs: nounwind optsize
declare i32 @sprintf(i8* nocapture, i8* nocapture, ...) #3

; Function Attrs: optsize
declare void @pr_rvecs(%struct._IO_FILE*, i32, i8*, [3 x float]*, i32) #2

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture, i64, i32, i1) #1

; Function Attrs: optsize
declare void @sum_epot(%struct.t_grpopts*, %struct.t_groups*, float*) #2

; Function Attrs: optsize
declare void @gmx_sumf(i32, float*, %struct.t_commrec*) #2

; Function Attrs: optsize
declare i32 @constrain(%struct._IO_FILE*, %struct.t_topology*, %struct.t_inputrec*, i32, %struct.t_mdatoms*, i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, float, float*, %struct.t_nrnb*, i32) #2

; Function Attrs: optsize
declare void @pbc_dx(float*, float*, float*) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: optsize
declare void @gmx_sumi(i32, i32*, %struct.t_commrec*) #2

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #2

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #1

declare float @fabsf(float)

; Function Attrs: nounwind optsize
declare float @sqrtf(float) #3

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct._IO_FILE* nocapture) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

attributes #0 = { nounwind optsize uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind optsize }
attributes #6 = { optsize }

!0 = metadata !{metadata !"float", metadata !1}
!1 = metadata !{metadata !"omnipotent char", metadata !2}
!2 = metadata !{metadata !"Simple C/C++ TBAA"}
!3 = metadata !{metadata !"int", metadata !1}
!4 = metadata !{metadata !"any pointer", metadata !1}
!5 = metadata !{metadata !"short", metadata !1}
