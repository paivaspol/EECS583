; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/relax_sh.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_interaction_function = type { i8*, i8*, i32, i32, i32, i64, i32, float (i32, i32*, %union.t_iparams*, [3 x float]*, [3 x float]*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*, float, float*, %struct.t_mdatoms*, i32, float*, float*, %struct.t_fcdata*)* }
%union.t_iparams = type { %struct.anon.5 }
%struct.anon.5 = type { float, float, float, float, float, float }
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
@.str1 = private unnamed_addr constant [68 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/relax_sh.c\00", align 1
@.str2 = private unnamed_addr constant [9 x i8] c"force[i]\00", align 1
@.str3 = private unnamed_addr constant [8 x i8] c"acc_dir\00", align 1
@.str4 = private unnamed_addr constant [6 x i8] c"x_old\00", align 1
@__stderrp = external global %struct.__sFILE*
@.str5 = private unnamed_addr constant [20 x i8] c"RMS dir. force: %g\0A\00", align 1
@debug = external global %struct.__sFILE*
@.str6 = private unnamed_addr constant [13 x i8] c"df = %g  %g\0A\00", align 1
@.str7 = private unnamed_addr constant [14 x i8] c"myvir step %d\00", align 1
@__stdoutp = external global %struct.__sFILE*
@.str8 = private unnamed_addr constant [15 x i8] c"%17s: %14.10e\0A\00", align 1
@interaction_function = external global [44 x %struct.t_interaction_function]
@.str9 = private unnamed_addr constant [14 x i8] c"SHELLSTEP %d\0A\00", align 1
@.str10 = private unnamed_addr constant [21 x i8] c"pos[Try] b4 do_force\00", align 1
@.str11 = private unnamed_addr constant [21 x i8] c"pos[Min] b4 do_force\00", align 1
@.str12 = private unnamed_addr constant [14 x i8] c"dir. rmsf %g\0A\00", align 1
@.str13 = private unnamed_addr constant [22 x i8] c"Swapping Min and Try\0A\00", align 1
@.str14 = private unnamed_addr constant [33 x i8] c"EM did not converge in %d steps\0A\00", align 1
@.str15 = private unnamed_addr constant [53 x i8] c"RELAX: Using prediction for initial shell placement\0A\00", align 1
@.str16 = private unnamed_addr constant [24 x i8] c"Shell %d has %d nuclei!\00", align 1
@init_adir.xnold = internal unnamed_addr global [3 x float]* null, align 8
@init_adir.xnew = internal unnamed_addr global [3 x float]* null, align 8
@.str17 = private unnamed_addr constant [6 x i8] c"xnold\00", align 1
@.str18 = private unnamed_addr constant [5 x i8] c"xnew\00", align 1
@.str19 = private unnamed_addr constant [39 x i8] c"MDStep=%5d/%2d lamb: %6g, EPot: %12.8e\00", align 1
@.str20 = private unnamed_addr constant [16 x i8] c", rmsF: %12.8e\0A\00", align 1

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

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isfinitef(float %__x) #2 {
  %1 = fcmp ord float %__x, 0.000000e+00
  br i1 %1, label %2, label %5

; <label>:2                                       ; preds = %0
  %3 = tail call float @llvm.fabs.f32(float %__x) #9
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
  %3 = tail call double @llvm.fabs.f64(double %__x) #9
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
  %3 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #9
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
  %1 = tail call float @llvm.fabs.f32(float %__x) #9
  %2 = fcmp oeq float %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfd(double %__x) #2 {
  %1 = tail call double @llvm.fabs.f64(double %__x) #9
  %2 = fcmp oeq double %1, 0x7FF0000000000000
  %3 = zext i1 %2 to i32
  ret i32 %3
}

; Function Attrs: alwaysinline nounwind optsize readnone ssp uwtable
define i32 @__inline_isinfl(x86_fp80 %__x) #2 {
  %1 = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %__x) #9
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
  %1 = tail call <2 x float> @__sincosf_stret(float %__x) #8
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
  %1 = tail call { double, double } @__sincos_stret(double %__x) #8
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
  %1 = tail call <2 x float> @__sincospif_stret(float %__x) #8
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
  %1 = tail call { double, double } @__sincospi_stret(double %__x) #8
  %2 = extractvalue { double, double } %1, 0
  %3 = extractvalue { double, double } %1, 1
  store double %2, double* %__sinp, align 8, !tbaa !16
  store double %3, double* %__cosp, align 8, !tbaa !16
  ret void
}

; Function Attrs: optsize
declare { double, double } @__sincospi_stret(double) #1

; Function Attrs: nounwind optsize ssp uwtable
define i32 @relax_shells(%struct.__sFILE* %log, %struct.t_commrec* %cr, %struct.t_commrec* %mcr, i32 %bVerbose, i32 %mdstep, %struct.t_parm* %parm, i32 %bDoNS, i32 %bStopCM, %struct.t_topology* %top, float* %ener, %struct.t_fcdata* %fcd, [3 x float]* %x, [3 x float]* nocapture readnone %vold, [3 x float]* %v, [3 x float]* nocapture readnone %vt, [3 x float]* %f, [3 x float]* %buf, %struct.t_mdatoms* %md, %struct.t_nsborder* %nsb, %struct.t_nrnb* %nrnb, %struct.t_graph* %graph, %struct.t_groups* %grps, [3 x float]* %vir_part, [3 x float]* nocapture %pme_vir_part, i32 %bShell, i32 %nshell, %struct.t_shell* nocapture readonly %shells, %struct.t_forcerec* %fr, i8* nocapture readnone %traj, float %t, float %lambda, float* %mu_tot, i32 %natoms, [3 x float]* nocapture readnone %box, i32* nocapture %bConverged) #4 {
  %Epot = alloca [2 x float], align 4
  %df = alloca [2 x float], align 4
  %my_vir = alloca [2 x [3 x [3 x float]]], align 16
  %pme_vir = alloca [2 x [3 x [3 x float]]], align 16
  %dx = alloca [3 x float], align 4
  %dum = alloca float, align 4
  %cbuf = alloca [56 x i8], align 16
  %1 = bitcast [2 x [3 x [3 x float]]]* %my_vir to i8*
  call void @llvm.lifetime.start(i64 72, i8* %1) #5
  %2 = bitcast [2 x [3 x [3 x float]]]* %pme_vir to i8*
  call void @llvm.lifetime.start(i64 72, i8* %2) #5
  store float 0.000000e+00, float* %dum, align 4, !tbaa !14
  %3 = getelementptr inbounds [56 x i8]* %cbuf, i64 0, i64 0
  call void @llvm.lifetime.start(i64 56, i8* %3) #5
  %4 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 0
  %5 = load i32* %4, align 4, !tbaa !18
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %6
  %8 = load i32* %7, align 4, !tbaa !20
  %9 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %6
  %10 = load i32* %9, align 4, !tbaa !20
  %11 = add nsw i32 %10, %8
  %.b = load i1* @relax_shells.bFirst, align 1
  br i1 %.b, label %48, label %12

; <label>:12                                      ; preds = %0
  %13 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 67
  %14 = load float* %13, align 4, !tbaa !21
  %fabsf = tail call float @fabsf(float %14) #7
  %15 = fpext float %fabsf to double
  %16 = fcmp ogt double %15, 1.200000e-38
  br i1 %16, label %17, label %count_zero_length_constraints.exit

; <label>:17                                      ; preds = %12
  %18 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 27, i32 0
  %19 = load i32* %18, align 4, !tbaa !23
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %.lr.ph.i, label %count_zero_length_constraints.exit

.lr.ph.i:                                         ; preds = %17
  %21 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 5, i64 27, i32 2
  %22 = load i32** %21, align 8, !tbaa !25
  %23 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1, i32 4
  %24 = load %union.t_iparams** %23, align 8, !tbaa !26
  %25 = sext i32 %19 to i64
  br label %26

; <label>:26                                      ; preds = %26, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %26 ]
  %nZeroLen.01.i = phi i32 [ 0, %.lr.ph.i ], [ %nZeroLen.1.i, %26 ]
  %27 = getelementptr inbounds i32* %22, i64 %indvars.iv.i
  %28 = load i32* %27, align 4, !tbaa !20
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %union.t_iparams* %24, i64 %29, i32 0, i32 0
  %31 = load float* %30, align 4, !tbaa !28
  %fabsf.i = tail call float @fabsf(float %31) #7
  %32 = fpext float %fabsf.i to double
  %33 = fcmp olt double %32, 1.200000e-38
  %34 = zext i1 %33 to i32
  %nZeroLen.1.i = add nsw i32 %34, %nZeroLen.01.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 3
  %35 = icmp slt i64 %indvars.iv.next.i, %25
  br i1 %35, label %26, label %count_zero_length_constraints.exit

count_zero_length_constraints.exit:               ; preds = %26, %17, %12
  %storemerge = phi i32 [ 0, %12 ], [ 0, %17 ], [ %nZeroLen.1.i, %26 ]
  store i32 %storemerge, i32* @relax_shells.ndir, align 4, !tbaa !20
  %36 = icmp eq i32 %bShell, 0
  br i1 %36, label %47, label %.preheader24

.preheader24:                                     ; preds = %count_zero_length_constraints.exit
  %37 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 3
  br label %38

; <label>:38                                      ; preds = %38, %.preheader24
  %indvars.iv71 = phi i64 [ 0, %.preheader24 ], [ %indvars.iv.next72, %38 ]
  %39 = load i32* %37, align 4, !tbaa !30
  %40 = tail call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 326, i32 %39, i32 12) #8
  %41 = getelementptr inbounds [2 x [3 x float]*]* @relax_shells.pos, i64 0, i64 %indvars.iv71
  %42 = bitcast [3 x float]** %41 to i8**
  store i8* %40, i8** %42, align 8, !tbaa !31
  %43 = load i32* %37, align 4, !tbaa !30
  %44 = tail call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 327, i32 %43, i32 12) #8
  %45 = getelementptr inbounds [2 x [3 x float]*]* @relax_shells.force, i64 0, i64 %indvars.iv71
  %46 = bitcast [3 x float]** %45 to i8**
  store i8* %44, i8** %46, align 8, !tbaa !31
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  %exitcond73 = icmp eq i64 %indvars.iv.next72, 2
  br i1 %exitcond73, label %.loopexit25, label %38

; <label>:47                                      ; preds = %count_zero_length_constraints.exit
  store [3 x float]* %x, [3 x float]** getelementptr inbounds ([2 x [3 x float]*]* @relax_shells.pos, i64 0, i64 0), align 16, !tbaa !31
  store [3 x float]* %f, [3 x float]** getelementptr inbounds ([2 x [3 x float]*]* @relax_shells.force, i64 0, i64 0), align 16, !tbaa !31
  br label %.loopexit25

.loopexit25:                                      ; preds = %38, %47
  store i1 true, i1* @relax_shells.bFirst, align 1
  br label %48

; <label>:48                                      ; preds = %0, %.loopexit25
  %49 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0
  %50 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 60
  %51 = load float* %50, align 4, !tbaa !32
  %52 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 61
  %53 = load i32* %52, align 4, !tbaa !36
  %54 = load i32* @relax_shells.ndir, align 4, !tbaa !20
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %.loopexit23, label %56

; <label>:56                                      ; preds = %48
  %57 = load [3 x float]** @relax_shells.acc_dir, align 8, !tbaa !31
  %58 = icmp eq [3 x float]* %57, null
  br i1 %58, label %59, label %62

; <label>:59                                      ; preds = %56
  %60 = tail call i8* @save_calloc(i8* getelementptr inbounds ([8 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 349, i32 %10, i32 12) #8
  store i8* %60, i8** bitcast ([3 x float]** @relax_shells.acc_dir to i8**), align 8, !tbaa !31
  %61 = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 350, i32 %10, i32 12) #8
  store i8* %61, i8** bitcast ([3 x float]** @relax_shells.x_old to i8**), align 8, !tbaa !31
  br label %62

; <label>:62                                      ; preds = %59, %56
  %63 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 0
  tail call void @init_pbc([3 x float]* %63) #8
  %64 = icmp sgt i32 %10, 0
  br i1 %64, label %.preheader22.lr.ph, label %.loopexit23

.preheader22.lr.ph:                               ; preds = %62
  %65 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 15
  %66 = load [3 x float]** @relax_shells.x_old, align 8, !tbaa !31
  %67 = sext i32 %8 to i64
  %68 = add i32 %10, -1
  br label %.preheader22

.preheader22:                                     ; preds = %79, %.preheader22.lr.ph
  %indvars.iv67 = phi i64 [ 0, %.preheader22.lr.ph ], [ %indvars.iv.next68, %79 ]
  %69 = add nsw i64 %indvars.iv67, %67
  br label %70

; <label>:70                                      ; preds = %70, %.preheader22
  %indvars.iv64 = phi i64 [ 0, %.preheader22 ], [ %indvars.iv.next65, %70 ]
  %71 = getelementptr inbounds [3 x float]* %x, i64 %69, i64 %indvars.iv64
  %72 = load float* %71, align 4, !tbaa !14
  %73 = getelementptr inbounds [3 x float]* %v, i64 %69, i64 %indvars.iv64
  %74 = load float* %73, align 4, !tbaa !14
  %75 = load float* %65, align 4, !tbaa !37
  %76 = fmul float %74, %75
  %77 = fsub float %72, %76
  %78 = getelementptr inbounds [3 x float]* %66, i64 %indvars.iv67, i64 %indvars.iv64
  store float %77, float* %78, align 4, !tbaa !14
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1
  %exitcond66 = icmp eq i64 %indvars.iv.next65, 3
  br i1 %exitcond66, label %79, label %70

; <label>:79                                      ; preds = %70
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1
  %lftr.wideiv69 = trunc i64 %indvars.iv67 to i32
  %exitcond70 = icmp eq i32 %lftr.wideiv69, %68
  br i1 %exitcond70, label %.loopexit23, label %.preheader22

.loopexit23:                                      ; preds = %79, %62, %48
  %80 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 15
  %81 = load float* %80, align 4, !tbaa !37
  %82 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 4
  %83 = load float** %82, align 8, !tbaa !38
  %84 = icmp eq i32 %mdstep, 0
  br i1 %84, label %85, label %87

; <label>:85                                      ; preds = %.loopexit23
  %86 = tail call i64 @fwrite(i8* getelementptr inbounds ([53 x i8]* @.str15, i64 0, i64 0), i64 52, i64 1, %struct.__sFILE* %log) #5
  br label %87

; <label>:87                                      ; preds = %85, %.loopexit23
  %dt_1.0.i = phi float [ 1.000000e+00, %85 ], [ %81, %.loopexit23 ]
  %ptr.0.i = phi [3 x float]* [ %x, %85 ], [ %v, %.loopexit23 ]
  %88 = icmp sgt i32 %nshell, 0
  br i1 %88, label %.lr.ph.i2, label %predict_shells.exit

.lr.ph.i2:                                        ; preds = %87
  %89 = add i32 %nshell, -1
  br label %90

; <label>:90                                      ; preds = %.loopexit.i, %.lr.ph.i2
  %indvars.iv13.i = phi i64 [ 0, %.lr.ph.i2 ], [ %indvars.iv.next14.i, %.loopexit.i ]
  %91 = getelementptr inbounds %struct.t_shell* %shells, i64 %indvars.iv13.i, i32 1
  %92 = load i32* %91, align 4, !tbaa !40
  br i1 %84, label %93, label %98

; <label>:93                                      ; preds = %90
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds [3 x float]* %x, i64 %94, i64 0
  store float 0.000000e+00, float* %95, align 4, !tbaa !14
  %96 = getelementptr inbounds [3 x float]* %x, i64 %94, i64 1
  store float 0.000000e+00, float* %96, align 4, !tbaa !14
  %97 = getelementptr inbounds [3 x float]* %x, i64 %94, i64 2
  store float 0.000000e+00, float* %97, align 4, !tbaa !14
  br label %98

; <label>:98                                      ; preds = %93, %90
  %99 = getelementptr inbounds %struct.t_shell* %shells, i64 %indvars.iv13.i, i32 0
  %100 = load i32* %99, align 4, !tbaa !42
  switch i32 %100, label %175 [
    i32 1, label %101
    i32 2, label %113
    i32 3, label %139
  ]

; <label>:101                                     ; preds = %98
  %102 = getelementptr inbounds %struct.t_shell* %shells, i64 %indvars.iv13.i, i32 2
  %103 = load i32* %102, align 4, !tbaa !43
  %104 = sext i32 %103 to i64
  %105 = sext i32 %92 to i64
  br label %106

; <label>:106                                     ; preds = %106, %101
  %indvars.iv10.i = phi i64 [ 0, %101 ], [ %indvars.iv.next11.i, %106 ]
  %107 = getelementptr inbounds [3 x float]* %ptr.0.i, i64 %104, i64 %indvars.iv10.i
  %108 = load float* %107, align 4, !tbaa !14
  %109 = fmul float %dt_1.0.i, %108
  %110 = getelementptr inbounds [3 x float]* %x, i64 %105, i64 %indvars.iv10.i
  %111 = load float* %110, align 4, !tbaa !14
  %112 = fadd float %111, %109
  store float %112, float* %110, align 4, !tbaa !14
  %indvars.iv.next11.i = add nuw nsw i64 %indvars.iv10.i, 1
  %exitcond12.i = icmp eq i64 %indvars.iv.next11.i, 3
  br i1 %exitcond12.i, label %.loopexit.i, label %106

; <label>:113                                     ; preds = %98
  %114 = getelementptr inbounds %struct.t_shell* %shells, i64 %indvars.iv13.i, i32 2
  %115 = load i32* %114, align 4, !tbaa !43
  %116 = getelementptr inbounds %struct.t_shell* %shells, i64 %indvars.iv13.i, i32 3
  %117 = load i32* %116, align 4, !tbaa !44
  %118 = sext i32 %115 to i64
  %119 = getelementptr inbounds float* %83, i64 %118
  %120 = load float* %119, align 4, !tbaa !14
  %121 = sext i32 %117 to i64
  %122 = getelementptr inbounds float* %83, i64 %121
  %123 = load float* %122, align 4, !tbaa !14
  %124 = fadd float %120, %123
  %125 = fdiv float %dt_1.0.i, %124
  %126 = sext i32 %92 to i64
  br label %127

; <label>:127                                     ; preds = %127, %113
  %indvars.iv7.i = phi i64 [ 0, %113 ], [ %indvars.iv.next8.i, %127 ]
  %128 = getelementptr inbounds [3 x float]* %ptr.0.i, i64 %118, i64 %indvars.iv7.i
  %129 = load float* %128, align 4, !tbaa !14
  %130 = fmul float %120, %129
  %131 = getelementptr inbounds [3 x float]* %ptr.0.i, i64 %121, i64 %indvars.iv7.i
  %132 = load float* %131, align 4, !tbaa !14
  %133 = fmul float %123, %132
  %134 = fadd float %130, %133
  %135 = fmul float %125, %134
  %136 = getelementptr inbounds [3 x float]* %x, i64 %126, i64 %indvars.iv7.i
  %137 = load float* %136, align 4, !tbaa !14
  %138 = fadd float %137, %135
  store float %138, float* %136, align 4, !tbaa !14
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv7.i, 1
  %exitcond9.i = icmp eq i64 %indvars.iv.next8.i, 3
  br i1 %exitcond9.i, label %.loopexit.i, label %127

; <label>:139                                     ; preds = %98
  %140 = getelementptr inbounds %struct.t_shell* %shells, i64 %indvars.iv13.i, i32 2
  %141 = load i32* %140, align 4, !tbaa !43
  %142 = getelementptr inbounds %struct.t_shell* %shells, i64 %indvars.iv13.i, i32 3
  %143 = load i32* %142, align 4, !tbaa !44
  %144 = getelementptr inbounds %struct.t_shell* %shells, i64 %indvars.iv13.i, i32 4
  %145 = load i32* %144, align 4, !tbaa !45
  %146 = sext i32 %141 to i64
  %147 = getelementptr inbounds float* %83, i64 %146
  %148 = load float* %147, align 4, !tbaa !14
  %149 = sext i32 %143 to i64
  %150 = getelementptr inbounds float* %83, i64 %149
  %151 = load float* %150, align 4, !tbaa !14
  %152 = sext i32 %145 to i64
  %153 = getelementptr inbounds float* %83, i64 %152
  %154 = load float* %153, align 4, !tbaa !14
  %155 = fadd float %148, %151
  %156 = fadd float %155, %154
  %157 = fdiv float %dt_1.0.i, %156
  %158 = sext i32 %92 to i64
  br label %159

; <label>:159                                     ; preds = %159, %139
  %indvars.iv.i3 = phi i64 [ 0, %139 ], [ %indvars.iv.next.i4, %159 ]
  %160 = getelementptr inbounds [3 x float]* %ptr.0.i, i64 %146, i64 %indvars.iv.i3
  %161 = load float* %160, align 4, !tbaa !14
  %162 = fmul float %148, %161
  %163 = getelementptr inbounds [3 x float]* %ptr.0.i, i64 %149, i64 %indvars.iv.i3
  %164 = load float* %163, align 4, !tbaa !14
  %165 = fmul float %151, %164
  %166 = fadd float %162, %165
  %167 = getelementptr inbounds [3 x float]* %ptr.0.i, i64 %152, i64 %indvars.iv.i3
  %168 = load float* %167, align 4, !tbaa !14
  %169 = fmul float %154, %168
  %170 = fadd float %166, %169
  %171 = fmul float %157, %170
  %172 = getelementptr inbounds [3 x float]* %x, i64 %158, i64 %indvars.iv.i3
  %173 = load float* %172, align 4, !tbaa !14
  %174 = fadd float %173, %171
  store float %174, float* %172, align 4, !tbaa !14
  %indvars.iv.next.i4 = add nuw nsw i64 %indvars.iv.i3, 1
  %exitcond.i = icmp eq i64 %indvars.iv.next.i4, 3
  br i1 %exitcond.i, label %.loopexit.i, label %159

; <label>:175                                     ; preds = %98
  %176 = trunc i64 %indvars.iv13.i to i32
  tail call void (i32, i8*, ...)* @fatal_error(i32 0, i8* getelementptr inbounds ([24 x i8]* @.str16, i64 0, i64 0), i32 %176, i32 %100) #8
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %159, %127, %106, %175
  %indvars.iv.next14.i = add nuw nsw i64 %indvars.iv13.i, 1
  %lftr.wideiv62 = trunc i64 %indvars.iv13.i to i32
  %exitcond63 = icmp eq i32 %lftr.wideiv62, %89
  br i1 %exitcond63, label %predict_shells.exit, label %90

predict_shells.exit:                              ; preds = %.loopexit.i, %87
  %177 = getelementptr inbounds [2 x [3 x [3 x float]]]* %my_vir, i64 0, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 36, i32 16, i1 false) #5
  %178 = getelementptr inbounds [2 x [3 x [3 x float]]]* %pme_vir, i64 0, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 36, i32 16, i1 false) #5
  %179 = load [3 x float]** getelementptr inbounds ([2 x [3 x float]*]* @relax_shells.force, i64 0, i64 0), align 16, !tbaa !31
  %180 = icmp ne i32 %bVerbose, 0
  br i1 %180, label %181, label %192

; <label>:181                                     ; preds = %predict_shells.exit
  %182 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %183 = load i32* %182, align 4, !tbaa !46
  %184 = icmp sgt i32 %183, 1
  br i1 %184, label %189, label %185

; <label>:185                                     ; preds = %181
  %186 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %187 = load i32* %186, align 4, !tbaa !48
  %188 = icmp sgt i32 %187, 1
  br label %189

; <label>:189                                     ; preds = %185, %181
  %190 = phi i1 [ true, %181 ], [ %188, %185 ]
  %191 = xor i1 %190, true
  br label %192

; <label>:192                                     ; preds = %189, %predict_shells.exit
  %193 = phi i1 [ false, %predict_shells.exit ], [ %191, %189 ]
  %194 = zext i1 %193 to i32
  call void @do_force(%struct.__sFILE* %log, %struct.t_commrec* %cr, %struct.t_commrec* %mcr, %struct.t_parm* %parm, %struct.t_nsborder* %nsb, [3 x float]* %177, [3 x float]* %178, i32 %mdstep, %struct.t_nrnb* %nrnb, %struct.t_topology* %top, %struct.t_groups* %grps, [3 x float]* %x, [3 x float]* %v, [3 x float]* %179, [3 x float]* %buf, %struct.t_mdatoms* %md, float* %ener, %struct.t_fcdata* %fcd, i32 %194, float %lambda, %struct.t_graph* %graph, i32 %bDoNS, i32 0, %struct.t_forcerec* %fr, float* %mu_tot, i32 0) #8
  %195 = load [3 x float]** getelementptr inbounds ([2 x [3 x float]*]* @relax_shells.force, i64 0, i64 0), align 16, !tbaa !31
  call void @sum_lrforces([3 x float]* %195, %struct.t_forcerec* %fr, i32 %8, i32 %10) #8
  %196 = load i32* @relax_shells.ndir, align 4, !tbaa !20
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %237, label %198

; <label>:198                                     ; preds = %192
  %199 = load [3 x float]** @relax_shells.x_old, align 8, !tbaa !31
  %200 = sext i32 %8 to i64
  %201 = sub nsw i64 0, %200
  %202 = getelementptr inbounds [3 x float]* %199, i64 %201
  %203 = load [3 x float]** getelementptr inbounds ([2 x [3 x float]*]* @relax_shells.force, i64 0, i64 0), align 16, !tbaa !31
  %204 = load [3 x float]** @relax_shells.acc_dir, align 8, !tbaa !31
  %205 = getelementptr inbounds [3 x float]* %204, i64 %201
  %206 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 0
  call fastcc void @init_adir(%struct.__sFILE* %log, %struct.t_topology* %top, %struct.t_inputrec* %49, i32 %mdstep, %struct.t_mdatoms* %md, i32 %8, i32 %11, [3 x float]* %202, [3 x float]* %x, [3 x float]* %x, [3 x float]* %203, [3 x float]* %205, [3 x float]* %206, float %lambda, float* %dum, %struct.t_nrnb* %nrnb) #10
  %207 = icmp sgt i32 %10, 0
  br i1 %207, label %.lr.ph45, label %._crit_edge46

.lr.ph45:                                         ; preds = %198
  %208 = load float** %82, align 8, !tbaa !38
  %209 = load [3 x float]** @relax_shells.acc_dir, align 8, !tbaa !31
  %210 = sext i32 %11 to i64
  br label %211

; <label>:211                                     ; preds = %.lr.ph45, %211
  %indvars.iv60 = phi i64 [ %200, %.lr.ph45 ], [ %indvars.iv.next61, %211 ]
  %sf_dir.043 = phi float [ 0.000000e+00, %.lr.ph45 ], [ %227, %211 ]
  %212 = getelementptr inbounds float* %208, i64 %indvars.iv60
  %213 = load float* %212, align 4, !tbaa !14
  %214 = sub nsw i64 %indvars.iv60, %200
  %215 = getelementptr inbounds [3 x float]* %209, i64 %214, i64 0
  %216 = load float* %215, align 4, !tbaa !14
  %217 = fmul float %216, %216
  %218 = getelementptr inbounds [3 x float]* %209, i64 %214, i64 1
  %219 = load float* %218, align 4, !tbaa !14
  %220 = fmul float %219, %219
  %221 = fadd float %217, %220
  %222 = getelementptr inbounds [3 x float]* %209, i64 %214, i64 2
  %223 = load float* %222, align 4, !tbaa !14
  %224 = fmul float %223, %223
  %225 = fadd float %221, %224
  %226 = fmul float %213, %225
  %227 = fadd float %sf_dir.043, %226
  %indvars.iv.next61 = add nsw i64 %indvars.iv60, 1
  %228 = icmp slt i64 %indvars.iv.next61, %210
  br i1 %228, label %211, label %._crit_edge46

._crit_edge46:                                    ; preds = %211, %198
  %sf_dir.0.lcssa = phi float [ 0.000000e+00, %198 ], [ %227, %211 ]
  br i1 %180, label %229, label %237

; <label>:229                                     ; preds = %._crit_edge46
  %230 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !31
  %231 = load i32* @relax_shells.ndir, align 4, !tbaa !20
  %232 = sitofp i32 %231 to float
  %233 = fdiv float %sf_dir.0.lcssa, %232
  %234 = fpext float %233 to double
  %235 = call double @sqrt(double %234) #11
  %236 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %230, i8* getelementptr inbounds ([20 x i8]* @.str5, i64 0, i64 0), double %235) #8
  br label %237

; <label>:237                                     ; preds = %192, %._crit_edge46, %229
  %sf_dir.1 = phi float [ %sf_dir.0.lcssa, %229 ], [ %sf_dir.0.lcssa, %._crit_edge46 ], [ 0.000000e+00, %192 ]
  %238 = load [3 x float]** getelementptr inbounds ([2 x [3 x float]*]* @relax_shells.force, i64 0, i64 0), align 16, !tbaa !31
  %239 = load i32* @relax_shells.ndir, align 4, !tbaa !20
  %240 = call fastcc float @rms_force(%struct.t_commrec* %cr, [3 x float]* %238, i32 %nshell, %struct.t_shell* %shells, i32 %239, float %sf_dir.1) #10
  %241 = getelementptr inbounds [2 x float]* %df, i64 0, i64 0
  store float %240, float* %241, align 4, !tbaa !14
  %242 = getelementptr inbounds [2 x float]* %df, i64 0, i64 1
  store float 0.000000e+00, float* %242, align 4, !tbaa !14
  %243 = load %struct.__sFILE** @debug, align 8, !tbaa !31
  %244 = icmp eq %struct.__sFILE* %243, null
  br i1 %244, label %250, label %245

; <label>:245                                     ; preds = %237
  %246 = fpext float %240 to double
  %247 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %243, i8* getelementptr inbounds ([13 x i8]* @.str6, i64 0, i64 0), double %246, double 0.000000e+00) #8
  %248 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %3, i32 0, i64 56, i8* getelementptr inbounds ([14 x i8]* @.str7, i64 0, i64 0), i32 0) #8
  %249 = load %struct.__sFILE** @debug, align 8, !tbaa !31
  call void @pr_rvecs(%struct.__sFILE* %249, i32 0, i8* %3, [3 x float]* %177, i32 3) #8
  br label %250

; <label>:250                                     ; preds = %237, %245
  %251 = load i32* @relax_shells.ndir, align 4, !tbaa !20
  %252 = add nsw i32 %251, %nshell
  %253 = icmp sgt i32 %252, 0
  br i1 %253, label %254, label %269

; <label>:254                                     ; preds = %250
  %255 = load i8** bitcast ([2 x [3 x float]*]* @relax_shells.pos to i8**), align 16, !tbaa !31
  %256 = bitcast [3 x float]* %x to i8*
  %257 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 3
  %258 = load i32* %257, align 4, !tbaa !30
  %259 = sext i32 %258 to i64
  %260 = mul nsw i64 %259, 12
  %261 = call i64 @llvm.objectsize.i64.p0i8(i8* %255, i1 false)
  %262 = call i8* @__memcpy_chk(i8* %255, i8* %256, i64 %260, i64 %261) #8
  %263 = load i8** bitcast ([3 x float]** getelementptr inbounds ([2 x [3 x float]*]* @relax_shells.pos, i64 0, i64 1) to i8**), align 8, !tbaa !31
  %264 = load i32* %257, align 4, !tbaa !30
  %265 = sext i32 %264 to i64
  %266 = mul nsw i64 %265, 12
  %267 = call i64 @llvm.objectsize.i64.p0i8(i8* %263, i1 false)
  %268 = call i8* @__memcpy_chk(i8* %263, i8* %256, i64 %266, i64 %267) #8
  br label %269

; <label>:269                                     ; preds = %254, %250
  %270 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80
  call void @sum_epot(%struct.t_grpopts* %270, %struct.t_groups* %grps, float* %ener) #8
  %271 = getelementptr inbounds float* %ener, i64 37
  %272 = bitcast float* %271 to i32*
  %273 = load i32* %272, align 4, !tbaa !14
  %274 = getelementptr inbounds [2 x float]* %Epot, i64 0, i64 0
  %275 = bitcast [2 x float]* %Epot to i32*
  store i32 %273, i32* %275, align 4, !tbaa !14
  %276 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %277 = load i32* %276, align 4, !tbaa !46
  %278 = icmp sgt i32 %277, 1
  br i1 %278, label %283, label %279

; <label>:279                                     ; preds = %269
  %280 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %281 = load i32* %280, align 4, !tbaa !48
  %282 = icmp sgt i32 %281, 1
  br i1 %282, label %283, label %284

; <label>:283                                     ; preds = %279, %269
  call void @gmx_sumf(i32 2, float* %274, %struct.t_commrec* %cr) #8
  br label %284

; <label>:284                                     ; preds = %283, %279
  br i1 %180, label %285, label %302

; <label>:285                                     ; preds = %284
  %286 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %287 = load i32* %286, align 4, !tbaa !49
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %289, label %302

; <label>:289                                     ; preds = %285
  %290 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  %291 = load i32* %290, align 4, !tbaa !50
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %293, label %302

; <label>:293                                     ; preds = %289
  %294 = load i32* @relax_shells.ndir, align 4, !tbaa !20
  %295 = add nsw i32 %294, %nshell
  %296 = icmp sgt i32 %295, 0
  br i1 %296, label %297, label %302

; <label>:297                                     ; preds = %293
  %298 = load %struct.__sFILE** @__stdoutp, align 8, !tbaa !31
  %299 = load float* %274, align 4, !tbaa !14
  %300 = fpext float %299 to double
  %301 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %298, i8* getelementptr inbounds ([39 x i8]* @.str19, i64 0, i64 0), i32 %mdstep, i32 0, double 1.000000e+00, double %300) #8
  %fputc.i = call i32 @fputc(i32 10, %struct.__sFILE* %298) #5
  br label %302

; <label>:302                                     ; preds = %297, %293, %289, %285, %284
  %303 = load %struct.__sFILE** @debug, align 8, !tbaa !31
  %304 = icmp eq %struct.__sFILE* %303, null
  br i1 %304, label %324, label %305

; <label>:305                                     ; preds = %302
  %306 = load i8** getelementptr inbounds ([44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 38, i32 1), align 8, !tbaa !51
  %307 = getelementptr inbounds float* %ener, i64 38
  %308 = load float* %307, align 4, !tbaa !14
  %309 = fpext float %308 to double
  %310 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %303, i8* getelementptr inbounds ([15 x i8]* @.str8, i64 0, i64 0), i8* %306, double %309) #8
  %311 = load %struct.__sFILE** @debug, align 8, !tbaa !31
  %312 = load i8** getelementptr inbounds ([44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 37, i32 1), align 8, !tbaa !51
  %313 = load float* %271, align 4, !tbaa !14
  %314 = fpext float %313 to double
  %315 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %311, i8* getelementptr inbounds ([15 x i8]* @.str8, i64 0, i64 0), i8* %312, double %314) #8
  %316 = load %struct.__sFILE** @debug, align 8, !tbaa !31
  %317 = load i8** getelementptr inbounds ([44 x %struct.t_interaction_function]* @interaction_function, i64 0, i64 39, i32 1), align 8, !tbaa !51
  %318 = getelementptr inbounds float* %ener, i64 39
  %319 = load float* %318, align 4, !tbaa !14
  %320 = fpext float %319 to double
  %321 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %316, i8* getelementptr inbounds ([15 x i8]* @.str8, i64 0, i64 0), i8* %317, double %320) #8
  %322 = load %struct.__sFILE** @debug, align 8, !tbaa !31
  %323 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %322, i8* getelementptr inbounds ([14 x i8]* @.str9, i64 0, i64 0), i32 %mdstep) #8
  br label %324

; <label>:324                                     ; preds = %302, %305
  %325 = fcmp olt float %240, %51
  br i1 %325, label %.thread86, label %326

.thread86:                                        ; preds = %324
  store i32 1, i32* %bConverged, align 4, !tbaa !20
  br label %..critedge_crit_edge83

; <label>:326                                     ; preds = %324
  %327 = load i32* @relax_shells.ndir, align 4, !tbaa !20
  %328 = sub i32 0, %nshell
  %329 = icmp eq i32 %327, %328
  %330 = zext i1 %329 to i32
  store i32 %330, i32* %bConverged, align 4, !tbaa !20
  %331 = xor i1 %329, true
  %332 = icmp sgt i32 %53, 1
  %or.cond32 = and i1 %332, %331
  br i1 %or.cond32, label %.lr.ph38, label %..critedge_crit_edge83

..critedge_crit_edge83:                           ; preds = %.thread86, %326
  %333 = phi i32 [ 1, %.thread86 ], [ %330, %326 ]
  %.pre84 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  br label %.critedge

.lr.ph38:                                         ; preds = %326
  %334 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %335 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %336 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  %337 = sext i32 %8 to i64
  %338 = sub nsw i64 0, %337
  %339 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 0
  %340 = icmp sgt i32 %10, 0
  %341 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 67
  %342 = add i32 %11, -1
  %343 = add i32 %nshell, -1
  %344 = sext i32 %11 to i64
  br label %345

; <label>:345                                     ; preds = %.lr.ph38, %550
  %count.036 = phi i32 [ 1, %.lr.ph38 ], [ %551, %550 ]
  %Min.035 = phi i32 [ 0, %.lr.ph38 ], [ %Min.1, %550 ]
  %step.033 = phi float [ 1.000000e+00, %.lr.ph38 ], [ %step.1, %550 ]
  %346 = load i32* @relax_shells.ndir, align 4, !tbaa !20
  %347 = icmp eq i32 %346, 0
  br i1 %347, label %.directional_sd.exit_crit_edge, label %348

.directional_sd.exit_crit_edge:                   ; preds = %345
  %.phi.trans.insert = sext i32 %Min.035 to i64
  %.phi.trans.insert74 = getelementptr inbounds [2 x [3 x float]*]* @relax_shells.pos, i64 0, i64 %.phi.trans.insert
  %.pre = load [3 x float]** %.phi.trans.insert74, align 8, !tbaa !31
  %.pre77 = sub nsw i32 1, %Min.035
  %.pre79 = sext i32 %.pre77 to i64
  %.pre81 = getelementptr inbounds [2 x [3 x float]*]* @relax_shells.pos, i64 0, i64 %.pre79
  br label %directional_sd.exit

; <label>:348                                     ; preds = %345
  %349 = load [3 x float]** @relax_shells.x_old, align 8, !tbaa !31
  %350 = getelementptr inbounds [3 x float]* %349, i64 %338
  %351 = sext i32 %Min.035 to i64
  %352 = getelementptr inbounds [2 x [3 x float]*]* @relax_shells.pos, i64 0, i64 %351
  %353 = load [3 x float]** %352, align 8, !tbaa !31
  %354 = getelementptr inbounds [2 x [3 x float]*]* @relax_shells.force, i64 0, i64 %351
  %355 = load [3 x float]** %354, align 8, !tbaa !31
  %356 = load [3 x float]** @relax_shells.acc_dir, align 8, !tbaa !31
  %357 = getelementptr inbounds [3 x float]* %356, i64 %338
  call fastcc void @init_adir(%struct.__sFILE* %log, %struct.t_topology* %top, %struct.t_inputrec* %49, i32 %mdstep, %struct.t_mdatoms* %md, i32 %8, i32 %11, [3 x float]* %350, [3 x float]* %x, [3 x float]* %353, [3 x float]* %355, [3 x float]* %357, [3 x float]* %339, float %lambda, float* %dum, %struct.t_nrnb* %nrnb) #10
  %358 = load [3 x float]** %352, align 8, !tbaa !31
  %359 = sub nsw i32 1, %Min.035
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds [2 x [3 x float]*]* @relax_shells.pos, i64 0, i64 %360
  %362 = load [3 x float]** %361, align 8, !tbaa !31
  %363 = load [3 x float]** @relax_shells.acc_dir, align 8, !tbaa !31
  %364 = load float* %341, align 4, !tbaa !21
  %365 = fdiv float 1.000000e+00, %364
  br i1 %340, label %.lr.ph.i5, label %directional_sd.exit

.lr.ph.i5:                                        ; preds = %348, %.lr.ph.i5
  %indvars.iv.i6 = phi i64 [ %indvars.iv.next.i7, %.lr.ph.i5 ], [ %337, %348 ]
  %366 = getelementptr inbounds [3 x float]* %362, i64 %indvars.iv.i6, i64 0
  %367 = getelementptr inbounds [3 x float]* %358, i64 %indvars.iv.i6, i64 0
  %.sum = sub i64 %indvars.iv.i6, %337
  %368 = getelementptr inbounds [3 x float]* %363, i64 %.sum, i64 0
  %369 = load float* %367, align 4, !tbaa !14
  %370 = getelementptr inbounds [3 x float]* %358, i64 %indvars.iv.i6, i64 1
  %371 = load float* %370, align 4, !tbaa !14
  %372 = getelementptr inbounds [3 x float]* %358, i64 %indvars.iv.i6, i64 2
  %373 = load float* %372, align 4, !tbaa !14
  %374 = load float* %368, align 4, !tbaa !14
  %375 = fmul float %365, %374
  %376 = getelementptr inbounds [3 x float]* %363, i64 %.sum, i64 1
  %377 = load float* %376, align 4, !tbaa !14
  %378 = fmul float %365, %377
  %379 = getelementptr inbounds [3 x float]* %363, i64 %.sum, i64 2
  %380 = load float* %379, align 4, !tbaa !14
  %381 = fmul float %365, %380
  %382 = fmul float %step.033, %375
  %383 = fadd float %369, %382
  store float %383, float* %366, align 4, !tbaa !14
  %384 = fmul float %step.033, %378
  %385 = fadd float %371, %384
  %386 = getelementptr inbounds [3 x float]* %362, i64 %indvars.iv.i6, i64 1
  store float %385, float* %386, align 4, !tbaa !14
  %387 = fmul float %step.033, %381
  %388 = fadd float %373, %387
  %389 = getelementptr inbounds [3 x float]* %362, i64 %indvars.iv.i6, i64 2
  store float %388, float* %389, align 4, !tbaa !14
  %indvars.iv.next.i7 = add nsw i64 %indvars.iv.i6, 1
  %lftr.wideiv.i8 = trunc i64 %indvars.iv.i6 to i32
  %exitcond.i9 = icmp eq i32 %lftr.wideiv.i8, %342
  br i1 %exitcond.i9, label %directional_sd.exit, label %.lr.ph.i5

directional_sd.exit:                              ; preds = %.lr.ph.i5, %.directional_sd.exit_crit_edge, %348
  %.pre-phi82 = phi [3 x float]** [ %.pre81, %.directional_sd.exit_crit_edge ], [ %361, %348 ], [ %361, %.lr.ph.i5 ]
  %.pre-phi80 = phi i64 [ %.pre79, %.directional_sd.exit_crit_edge ], [ %360, %348 ], [ %360, %.lr.ph.i5 ]
  %.pre-phi78 = phi i32 [ %.pre77, %.directional_sd.exit_crit_edge ], [ %359, %348 ], [ %359, %.lr.ph.i5 ]
  %.pre-phi = phi i64 [ %.phi.trans.insert, %.directional_sd.exit_crit_edge ], [ %351, %348 ], [ %351, %.lr.ph.i5 ]
  %390 = phi [3 x float]* [ %.pre, %.directional_sd.exit_crit_edge ], [ %358, %348 ], [ %358, %.lr.ph.i5 ]
  %391 = getelementptr inbounds [2 x [3 x float]*]* @relax_shells.pos, i64 0, i64 %.pre-phi
  %392 = load [3 x float]** %.pre-phi82, align 8, !tbaa !31
  %393 = getelementptr inbounds [2 x [3 x float]*]* @relax_shells.force, i64 0, i64 %.pre-phi
  %394 = load [3 x float]** %393, align 8, !tbaa !31
  br i1 %88, label %.lr.ph.i10, label %shell_pos_sd.exit

.lr.ph.i10:                                       ; preds = %directional_sd.exit, %.lr.ph.i10
  %indvars.iv.i11 = phi i64 [ %indvars.iv.next.i12, %.lr.ph.i10 ], [ 0, %directional_sd.exit ]
  %395 = getelementptr inbounds %struct.t_shell* %shells, i64 %indvars.iv.i11, i32 1
  %396 = load i32* %395, align 4, !tbaa !40
  %397 = getelementptr inbounds %struct.t_shell* %shells, i64 %indvars.iv.i11, i32 6
  %398 = load float* %397, align 4, !tbaa !54
  %399 = sext i32 %396 to i64
  %400 = getelementptr inbounds [3 x float]* %392, i64 %399, i64 0
  %401 = getelementptr inbounds [3 x float]* %390, i64 %399, i64 0
  %402 = getelementptr inbounds [3 x float]* %394, i64 %399, i64 0
  %403 = load float* %401, align 4, !tbaa !14
  %404 = getelementptr inbounds [3 x float]* %390, i64 %399, i64 1
  %405 = load float* %404, align 4, !tbaa !14
  %406 = getelementptr inbounds [3 x float]* %390, i64 %399, i64 2
  %407 = load float* %406, align 4, !tbaa !14
  %408 = load float* %402, align 4, !tbaa !14
  %409 = fmul float %398, %408
  %410 = getelementptr inbounds [3 x float]* %394, i64 %399, i64 1
  %411 = load float* %410, align 4, !tbaa !14
  %412 = fmul float %398, %411
  %413 = getelementptr inbounds [3 x float]* %394, i64 %399, i64 2
  %414 = load float* %413, align 4, !tbaa !14
  %415 = fmul float %398, %414
  %416 = fmul float %step.033, %409
  %417 = fadd float %403, %416
  store float %417, float* %400, align 4, !tbaa !14
  %418 = fmul float %step.033, %412
  %419 = fadd float %405, %418
  %420 = getelementptr inbounds [3 x float]* %392, i64 %399, i64 1
  store float %419, float* %420, align 4, !tbaa !14
  %421 = fmul float %step.033, %415
  %422 = fadd float %407, %421
  %423 = getelementptr inbounds [3 x float]* %392, i64 %399, i64 2
  store float %422, float* %423, align 4, !tbaa !14
  %indvars.iv.next.i12 = add nuw nsw i64 %indvars.iv.i11, 1
  %lftr.wideiv56 = trunc i64 %indvars.iv.i11 to i32
  %exitcond57 = icmp eq i32 %lftr.wideiv56, %343
  br i1 %exitcond57, label %shell_pos_sd.exit, label %.lr.ph.i10

shell_pos_sd.exit:                                ; preds = %.lr.ph.i10, %directional_sd.exit
  %424 = load %struct.__sFILE** @debug, align 8, !tbaa !31
  %425 = icmp eq %struct.__sFILE* %424, null
  br i1 %425, label %431, label %426

; <label>:426                                     ; preds = %shell_pos_sd.exit
  %427 = getelementptr inbounds [3 x float]* %392, i64 %337
  call void @pr_rvecs(%struct.__sFILE* %424, i32 0, i8* getelementptr inbounds ([21 x i8]* @.str10, i64 0, i64 0), [3 x float]* %427, i32 %10) #8
  %428 = load %struct.__sFILE** @debug, align 8, !tbaa !31
  %429 = load [3 x float]** %391, align 8, !tbaa !31
  %430 = getelementptr inbounds [3 x float]* %429, i64 %337
  call void @pr_rvecs(%struct.__sFILE* %428, i32 0, i8* getelementptr inbounds ([21 x i8]* @.str11, i64 0, i64 0), [3 x float]* %430, i32 %10) #8
  %.pre76 = load [3 x float]** %.pre-phi82, align 8, !tbaa !31
  br label %431

; <label>:431                                     ; preds = %shell_pos_sd.exit, %426
  %432 = phi [3 x float]* [ %392, %shell_pos_sd.exit ], [ %.pre76, %426 ]
  %433 = getelementptr inbounds [2 x [3 x [3 x float]]]* %my_vir, i64 0, i64 %.pre-phi80, i64 0
  %434 = bitcast [3 x float]* %433 to i8*
  call void @llvm.memset.p0i8.i64(i8* %434, i8 0, i64 36, i32 4, i1 false) #5
  %435 = getelementptr inbounds [2 x [3 x [3 x float]]]* %pme_vir, i64 0, i64 %.pre-phi80, i64 0
  %436 = bitcast [3 x float]* %435 to i8*
  call void @llvm.memset.p0i8.i64(i8* %436, i8 0, i64 36, i32 4, i1 false) #5
  %437 = getelementptr inbounds [2 x [3 x float]*]* @relax_shells.force, i64 0, i64 %.pre-phi80
  %438 = load [3 x float]** %437, align 8, !tbaa !31
  br i1 %180, label %439, label %448

; <label>:439                                     ; preds = %431
  %440 = load i32* %276, align 4, !tbaa !46
  %441 = icmp sgt i32 %440, 1
  br i1 %441, label %445, label %442

; <label>:442                                     ; preds = %439
  %443 = load i32* %334, align 4, !tbaa !48
  %444 = icmp sgt i32 %443, 1
  br label %445

; <label>:445                                     ; preds = %442, %439
  %446 = phi i1 [ true, %439 ], [ %444, %442 ]
  %447 = xor i1 %446, true
  br label %448

; <label>:448                                     ; preds = %445, %431
  %449 = phi i1 [ false, %431 ], [ %447, %445 ]
  %450 = zext i1 %449 to i32
  call void @do_force(%struct.__sFILE* %log, %struct.t_commrec* %cr, %struct.t_commrec* %mcr, %struct.t_parm* %parm, %struct.t_nsborder* %nsb, [3 x float]* %433, [3 x float]* %435, i32 1, %struct.t_nrnb* %nrnb, %struct.t_topology* %top, %struct.t_groups* %grps, [3 x float]* %432, [3 x float]* %v, [3 x float]* %438, [3 x float]* %buf, %struct.t_mdatoms* %md, float* %ener, %struct.t_fcdata* %fcd, i32 %450, float %lambda, %struct.t_graph* %graph, i32 0, i32 0, %struct.t_forcerec* %fr, float* %mu_tot, i32 0) #8
  %451 = load [3 x float]** %437, align 8, !tbaa !31
  call void @sum_lrforces([3 x float]* %451, %struct.t_forcerec* %fr, i32 %8, i32 %10) #8
  %452 = load i32* @relax_shells.ndir, align 4, !tbaa !20
  %453 = icmp eq i32 %452, 0
  br i1 %453, label %489, label %454

; <label>:454                                     ; preds = %448
  %455 = load [3 x float]** @relax_shells.x_old, align 8, !tbaa !31
  %456 = getelementptr inbounds [3 x float]* %455, i64 %338
  %457 = load [3 x float]** %.pre-phi82, align 8, !tbaa !31
  %458 = load [3 x float]** %437, align 8, !tbaa !31
  %459 = load [3 x float]** @relax_shells.acc_dir, align 8, !tbaa !31
  %460 = getelementptr inbounds [3 x float]* %459, i64 %338
  call fastcc void @init_adir(%struct.__sFILE* %log, %struct.t_topology* %top, %struct.t_inputrec* %49, i32 %mdstep, %struct.t_mdatoms* %md, i32 %8, i32 %11, [3 x float]* %456, [3 x float]* %x, [3 x float]* %457, [3 x float]* %458, [3 x float]* %460, [3 x float]* %339, float %lambda, float* %dum, %struct.t_nrnb* %nrnb) #10
  br i1 %340, label %.lr.ph31, label %._crit_edge

.lr.ph31:                                         ; preds = %454
  %461 = load float** %82, align 8, !tbaa !38
  %462 = load [3 x float]** @relax_shells.acc_dir, align 8, !tbaa !31
  br label %463

; <label>:463                                     ; preds = %.lr.ph31, %463
  %indvars.iv58 = phi i64 [ %337, %.lr.ph31 ], [ %indvars.iv.next59, %463 ]
  %sf_dir.230 = phi float [ 0.000000e+00, %.lr.ph31 ], [ %479, %463 ]
  %464 = getelementptr inbounds float* %461, i64 %indvars.iv58
  %465 = load float* %464, align 4, !tbaa !14
  %466 = sub nsw i64 %indvars.iv58, %337
  %467 = getelementptr inbounds [3 x float]* %462, i64 %466, i64 0
  %468 = load float* %467, align 4, !tbaa !14
  %469 = fmul float %468, %468
  %470 = getelementptr inbounds [3 x float]* %462, i64 %466, i64 1
  %471 = load float* %470, align 4, !tbaa !14
  %472 = fmul float %471, %471
  %473 = fadd float %469, %472
  %474 = getelementptr inbounds [3 x float]* %462, i64 %466, i64 2
  %475 = load float* %474, align 4, !tbaa !14
  %476 = fmul float %475, %475
  %477 = fadd float %473, %476
  %478 = fmul float %465, %477
  %479 = fadd float %sf_dir.230, %478
  %indvars.iv.next59 = add nsw i64 %indvars.iv58, 1
  %480 = icmp slt i64 %indvars.iv.next59, %344
  br i1 %480, label %463, label %._crit_edge

._crit_edge:                                      ; preds = %463, %454
  %sf_dir.2.lcssa = phi float [ 0.000000e+00, %454 ], [ %479, %463 ]
  br i1 %180, label %481, label %489

; <label>:481                                     ; preds = %._crit_edge
  %482 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !31
  %483 = load i32* @relax_shells.ndir, align 4, !tbaa !20
  %484 = sitofp i32 %483 to float
  %485 = fdiv float %sf_dir.2.lcssa, %484
  %486 = fpext float %485 to double
  %487 = call double @sqrt(double %486) #11
  %488 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %482, i8* getelementptr inbounds ([14 x i8]* @.str12, i64 0, i64 0), double %487) #8
  br label %489

; <label>:489                                     ; preds = %448, %._crit_edge, %481
  %sf_dir.3 = phi float [ %sf_dir.2.lcssa, %481 ], [ %sf_dir.2.lcssa, %._crit_edge ], [ 0.000000e+00, %448 ]
  %490 = load [3 x float]** %437, align 8, !tbaa !31
  %491 = load i32* @relax_shells.ndir, align 4, !tbaa !20
  %492 = call fastcc float @rms_force(%struct.t_commrec* %cr, [3 x float]* %490, i32 %nshell, %struct.t_shell* %shells, i32 %491, float %sf_dir.3) #10
  %493 = getelementptr inbounds [2 x float]* %df, i64 0, i64 %.pre-phi80
  store float %492, float* %493, align 4, !tbaa !14
  %494 = load %struct.__sFILE** @debug, align 8, !tbaa !31
  %495 = icmp eq %struct.__sFILE* %494, null
  br i1 %495, label %.thread, label %496

; <label>:496                                     ; preds = %489
  %497 = getelementptr inbounds [2 x float]* %df, i64 0, i64 %.pre-phi
  %498 = load float* %497, align 4, !tbaa !14
  %499 = fpext float %498 to double
  %500 = fpext float %492 to double
  %501 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %494, i8* getelementptr inbounds ([13 x i8]* @.str6, i64 0, i64 0), double %499, double %500) #8
  %.pr = load %struct.__sFILE** @debug, align 8, !tbaa !31
  %502 = icmp eq %struct.__sFILE* %.pr, null
  br i1 %502, label %.thread, label %503

; <label>:503                                     ; preds = %496
  %504 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %3, i32 0, i64 56, i8* getelementptr inbounds ([14 x i8]* @.str7, i64 0, i64 0), i32 %count.036) #8
  %505 = load %struct.__sFILE** @debug, align 8, !tbaa !31
  call void @pr_rvecs(%struct.__sFILE* %505, i32 0, i8* %3, [3 x float]* %433, i32 3) #8
  br label %.thread

.thread:                                          ; preds = %489, %496, %503
  call void @sum_epot(%struct.t_grpopts* %270, %struct.t_groups* %grps, float* %ener) #8
  %506 = load i32* %272, align 4, !tbaa !14
  %507 = getelementptr inbounds [2 x float]* %Epot, i64 0, i64 %.pre-phi80
  %508 = bitcast float* %507 to i32*
  store i32 %506, i32* %508, align 4, !tbaa !14
  %509 = load i32* %276, align 4, !tbaa !46
  %510 = icmp sgt i32 %509, 1
  br i1 %510, label %514, label %511

; <label>:511                                     ; preds = %.thread
  %512 = load i32* %334, align 4, !tbaa !48
  %513 = icmp sgt i32 %512, 1
  br i1 %513, label %514, label %515

; <label>:514                                     ; preds = %511, %.thread
  call void @gmx_sumf(i32 1, float* %507, %struct.t_commrec* %cr) #8
  br label %515

; <label>:515                                     ; preds = %514, %511
  br i1 %180, label %516, label %print_epot.exit

; <label>:516                                     ; preds = %515
  %517 = load i32* %335, align 4, !tbaa !49
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %519, label %print_epot.exit

; <label>:519                                     ; preds = %516
  %520 = load i32* %336, align 4, !tbaa !50
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %522, label %print_epot.exit

; <label>:522                                     ; preds = %519
  %523 = load %struct.__sFILE** @__stdoutp, align 8, !tbaa !31
  %524 = load float* %507, align 4, !tbaa !14
  %525 = fpext float %step.033 to double
  %526 = fpext float %524 to double
  %527 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %523, i8* getelementptr inbounds ([39 x i8]* @.str19, i64 0, i64 0), i32 %mdstep, i32 %count.036, double %525, double %526) #8
  %528 = fpext float %492 to double
  %529 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %523, i8* getelementptr inbounds ([16 x i8]* @.str20, i64 0, i64 0), double %528) #8
  br label %print_epot.exit

print_epot.exit:                                  ; preds = %522, %519, %516, %515
  %530 = fcmp olt float %492, %51
  %531 = zext i1 %530 to i32
  store i32 %531, i32* %bConverged, align 4, !tbaa !20
  br i1 %530, label %535, label %532

; <label>:532                                     ; preds = %print_epot.exit
  %533 = fpext float %step.033 to double
  %534 = fcmp olt double %533, 1.000000e-02
  br label %535

; <label>:535                                     ; preds = %532, %print_epot.exit
  %536 = phi i1 [ true, %print_epot.exit ], [ %534, %532 ]
  %537 = zext i1 %536 to i32
  %538 = getelementptr inbounds [2 x float]* %df, i64 0, i64 %.pre-phi
  %539 = load float* %538, align 4, !tbaa !14
  %540 = fcmp olt float %492, %539
  br i1 %540, label %541, label %546

; <label>:541                                     ; preds = %535
  %542 = load %struct.__sFILE** @debug, align 8, !tbaa !31
  %543 = icmp eq %struct.__sFILE* %542, null
  br i1 %543, label %550, label %544

; <label>:544                                     ; preds = %541
  %545 = call i64 @fwrite(i8* getelementptr inbounds ([22 x i8]* @.str13, i64 0, i64 0), i64 21, i64 1, %struct.__sFILE* %542)
  br label %550

; <label>:546                                     ; preds = %535
  %547 = fpext float %step.033 to double
  %548 = fmul double %547, 8.000000e-01
  %549 = fptrunc double %548 to float
  br label %550

; <label>:550                                     ; preds = %544, %541, %546
  %step.1 = phi float [ %549, %546 ], [ 1.000000e+00, %541 ], [ 1.000000e+00, %544 ]
  %Min.1 = phi i32 [ %Min.035, %546 ], [ %.pre-phi78, %541 ], [ %.pre-phi78, %544 ]
  %551 = add nuw nsw i32 %count.036, 1
  %552 = xor i1 %536, true
  %553 = icmp slt i32 %551, %53
  %or.cond = and i1 %553, %552
  br i1 %or.cond, label %345, label %.critedge

.critedge:                                        ; preds = %550, %..critedge_crit_edge83
  %.pre-phi85 = phi i32* [ %.pre84, %..critedge_crit_edge83 ], [ %335, %550 ]
  %count.0.lcssa = phi i32 [ 1, %..critedge_crit_edge83 ], [ %551, %550 ]
  %Min.0.lcssa = phi i32 [ 0, %..critedge_crit_edge83 ], [ %Min.1, %550 ]
  %bDone.0.lcssa = phi i32 [ %333, %..critedge_crit_edge83 ], [ %537, %550 ]
  %554 = load i32* %.pre-phi85, align 4, !tbaa !49
  %555 = icmp eq i32 %554, 0
  br i1 %555, label %556, label %564

; <label>:556                                     ; preds = %.critedge
  %557 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  %558 = load i32* %557, align 4, !tbaa !50
  %559 = or i32 %558, %bDone.0.lcssa
  %560 = icmp eq i32 %559, 0
  br i1 %560, label %561, label %564

; <label>:561                                     ; preds = %556
  %562 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !31
  %563 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %562, i8* getelementptr inbounds ([33 x i8]* @.str14, i64 0, i64 0), i32 %53) #8
  br label %564

; <label>:564                                     ; preds = %556, %561, %.critedge
  %565 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 33
  %566 = load i32* %565, align 4, !tbaa !55
  %.off = add i32 %566, -3
  %switch = icmp ult i32 %.off, 4
  %567 = icmp sgt i32 %10, 0
  %or.cond88 = and i1 %switch, %567
  br i1 %or.cond88, label %.lr.ph28, label %.loopexit19

.lr.ph28:                                         ; preds = %564
  %568 = sext i32 %Min.0.lcssa to i64
  %569 = getelementptr inbounds [2 x [3 x float]*]* @relax_shells.force, i64 0, i64 %568
  %570 = load [3 x float]** %569, align 8, !tbaa !31
  %571 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 55
  %572 = load [3 x float]** %571, align 8, !tbaa !56
  %573 = sext i32 %8 to i64
  %574 = sext i32 %11 to i64
  br label %575

; <label>:575                                     ; preds = %.lr.ph28, %575
  %indvars.iv54 = phi i64 [ %573, %.lr.ph28 ], [ %indvars.iv.next55, %575 ]
  %576 = getelementptr inbounds [3 x float]* %570, i64 %indvars.iv54, i64 0
  %577 = getelementptr inbounds [3 x float]* %572, i64 %indvars.iv54, i64 0
  %578 = load float* %576, align 4, !tbaa !14
  %579 = load float* %577, align 4, !tbaa !14
  %580 = fsub float %578, %579
  %581 = getelementptr inbounds [3 x float]* %570, i64 %indvars.iv54, i64 1
  %582 = load float* %581, align 4, !tbaa !14
  %583 = getelementptr inbounds [3 x float]* %572, i64 %indvars.iv54, i64 1
  %584 = load float* %583, align 4, !tbaa !14
  %585 = fsub float %582, %584
  %586 = getelementptr inbounds [3 x float]* %570, i64 %indvars.iv54, i64 2
  %587 = load float* %586, align 4, !tbaa !14
  %588 = getelementptr inbounds [3 x float]* %572, i64 %indvars.iv54, i64 2
  %589 = load float* %588, align 4, !tbaa !14
  %590 = fsub float %587, %589
  store float %580, float* %576, align 4, !tbaa !14
  store float %585, float* %581, align 4, !tbaa !14
  store float %590, float* %586, align 4, !tbaa !14
  %indvars.iv.next55 = add nsw i64 %indvars.iv54, 1
  %591 = icmp slt i64 %indvars.iv.next55, %574
  br i1 %591, label %575, label %.loopexit19

.loopexit19:                                      ; preds = %575, %564
  %592 = bitcast [3 x float]* %f to i8*
  %593 = sext i32 %Min.0.lcssa to i64
  %594 = getelementptr inbounds [2 x [3 x float]*]* @relax_shells.force, i64 0, i64 %593
  %595 = bitcast [3 x float]** %594 to i8**
  %596 = load i8** %595, align 8, !tbaa !31
  %597 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 3
  %598 = load i32* %597, align 4, !tbaa !30
  %599 = sext i32 %598 to i64
  %600 = mul nsw i64 %599, 12
  %601 = call i64 @llvm.objectsize.i64.p0i8(i8* %592, i1 false)
  %602 = call i8* @__memcpy_chk(i8* %592, i8* %596, i64 %600, i64 %601) #8
  %603 = getelementptr inbounds [2 x [3 x [3 x float]]]* %my_vir, i64 0, i64 %593, i64 0
  %604 = bitcast [3 x float]* %603 to <4 x i32>*
  %605 = load <4 x i32>* %604, align 4, !tbaa !14
  %606 = bitcast [3 x float]* %vir_part to <4 x i32>*
  store <4 x i32> %605, <4 x i32>* %606, align 4, !tbaa !14
  %607 = getelementptr inbounds [2 x [3 x [3 x float]]]* %my_vir, i64 0, i64 %593, i64 1, i64 1
  %608 = getelementptr inbounds [3 x float]* %vir_part, i64 1, i64 1
  %609 = bitcast float* %607 to <4 x i32>*
  %610 = load <4 x i32>* %609, align 4, !tbaa !14
  %611 = bitcast float* %608 to <4 x i32>*
  store <4 x i32> %610, <4 x i32>* %611, align 4, !tbaa !14
  %612 = getelementptr inbounds [2 x [3 x [3 x float]]]* %my_vir, i64 0, i64 %593, i64 2, i64 2
  %613 = bitcast float* %612 to i32*
  %614 = load i32* %613, align 4, !tbaa !14
  %615 = getelementptr inbounds [3 x float]* %vir_part, i64 2, i64 2
  %616 = bitcast float* %615 to i32*
  store i32 %614, i32* %616, align 4, !tbaa !14
  %617 = getelementptr inbounds [2 x [3 x [3 x float]]]* %pme_vir, i64 0, i64 %593, i64 0
  %618 = bitcast [3 x float]* %617 to <4 x i32>*
  %619 = load <4 x i32>* %618, align 4, !tbaa !14
  %620 = bitcast [3 x float]* %pme_vir_part to <4 x i32>*
  store <4 x i32> %619, <4 x i32>* %620, align 4, !tbaa !14
  %621 = getelementptr inbounds [2 x [3 x [3 x float]]]* %pme_vir, i64 0, i64 %593, i64 1, i64 1
  %622 = getelementptr inbounds [3 x float]* %pme_vir_part, i64 1, i64 1
  %623 = bitcast float* %621 to <4 x i32>*
  %624 = load <4 x i32>* %623, align 4, !tbaa !14
  %625 = bitcast float* %622 to <4 x i32>*
  store <4 x i32> %624, <4 x i32>* %625, align 4, !tbaa !14
  %626 = getelementptr inbounds [2 x [3 x [3 x float]]]* %pme_vir, i64 0, i64 %593, i64 2, i64 2
  %627 = bitcast float* %626 to i32*
  %628 = load i32* %627, align 4, !tbaa !14
  %629 = getelementptr inbounds [3 x float]* %pme_vir_part, i64 2, i64 2
  %630 = bitcast float* %629 to i32*
  store i32 %628, i32* %630, align 4, !tbaa !14
  %631 = load %struct.__sFILE** @debug, align 8, !tbaa !31
  %632 = icmp eq %struct.__sFILE* %631, null
  br i1 %632, label %636, label %633

; <label>:633                                     ; preds = %.loopexit19
  %634 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %3, i32 0, i64 56, i8* getelementptr inbounds ([14 x i8]* @.str7, i64 0, i64 0), i32 %count.0.lcssa) #8
  %635 = load %struct.__sFILE** @debug, align 8, !tbaa !31
  call void @pr_rvecs(%struct.__sFILE* %635, i32 0, i8* %3, [3 x float]* %vir_part, i32 3) #8
  br label %636

; <label>:636                                     ; preds = %.loopexit19, %633
  %637 = load i32* @relax_shells.ndir, align 4, !tbaa !20
  %638 = add nsw i32 %637, %nshell
  %639 = icmp sgt i32 %638, 0
  br i1 %639, label %640, label %650

; <label>:640                                     ; preds = %636
  %641 = bitcast [3 x float]* %x to i8*
  %642 = getelementptr inbounds [2 x [3 x float]*]* @relax_shells.pos, i64 0, i64 %593
  %643 = bitcast [3 x float]** %642 to i8**
  %644 = load i8** %643, align 8, !tbaa !31
  %645 = load i32* %597, align 4, !tbaa !30
  %646 = sext i32 %645 to i64
  %647 = mul nsw i64 %646, 12
  %648 = call i64 @llvm.objectsize.i64.p0i8(i8* %641, i1 false)
  %649 = call i8* @__memcpy_chk(i8* %641, i8* %644, i64 %647, i64 %648) #8
  %.pr16 = load i32* @relax_shells.ndir, align 4, !tbaa !20
  br label %650

; <label>:650                                     ; preds = %640, %636
  %651 = phi i32 [ %.pr16, %640 ], [ %637, %636 ]
  %652 = icmp sgt i32 %651, 0
  br i1 %652, label %653, label %.loopexit

; <label>:653                                     ; preds = %650
  %654 = sext i32 %8 to i64
  %655 = sub nsw i64 0, %654
  %656 = getelementptr inbounds [3 x float]* %x, i64 %655
  %657 = load [3 x float]** @relax_shells.x_old, align 8, !tbaa !31
  %658 = getelementptr inbounds [3 x float]* %657, i64 %655
  %659 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 0
  %660 = call i32 @constrain(%struct.__sFILE* %log, %struct.t_topology* %top, %struct.t_inputrec* %49, i32 %mdstep, %struct.t_mdatoms* %md, i32 %8, i32 %11, [3 x float]* %656, [3 x float]* %658, [3 x float]* null, [3 x float]* %659, float %lambda, float* %dum, %struct.t_nrnb* %nrnb, i32 1) #8
  %661 = icmp sgt i32 %10, 0
  br i1 %661, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %653
  %662 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 0
  %663 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 1
  %664 = getelementptr inbounds [3 x float]* %dx, i64 0, i64 2
  %665 = add i32 %10, -1
  br label %666

; <label>:666                                     ; preds = %666, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %666 ]
  %667 = add nsw i64 %indvars.iv, %654
  %668 = getelementptr inbounds [3 x float]* %x, i64 %667, i64 0
  %669 = load [3 x float]** @relax_shells.x_old, align 8, !tbaa !31
  %670 = getelementptr inbounds [3 x float]* %669, i64 %indvars.iv, i64 0
  call void @pbc_dx(float* %668, float* %670, float* %662) #8
  %671 = load float* %80, align 4, !tbaa !37
  %672 = fdiv float 1.000000e+00, %671
  %673 = getelementptr inbounds [3 x float]* %v, i64 %667, i64 0
  %674 = load float* %662, align 4, !tbaa !14
  %675 = fmul float %672, %674
  store float %675, float* %673, align 4, !tbaa !14
  %676 = load float* %663, align 4, !tbaa !14
  %677 = fmul float %672, %676
  %678 = getelementptr inbounds [3 x float]* %v, i64 %667, i64 1
  store float %677, float* %678, align 4, !tbaa !14
  %679 = load float* %664, align 4, !tbaa !14
  %680 = fmul float %672, %679
  %681 = getelementptr inbounds [3 x float]* %v, i64 %667, i64 2
  store float %680, float* %681, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %665
  br i1 %exitcond, label %.loopexit, label %666

.loopexit:                                        ; preds = %666, %653, %650
  call void @llvm.lifetime.end(i64 56, i8* %3) #5
  call void @llvm.lifetime.end(i64 72, i8* %2) #5
  call void @llvm.lifetime.end(i64 72, i8* %1) #5
  ret i32 %count.0.lcssa
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: optsize
declare void @init_pbc([3 x float]*) #1

; Function Attrs: optsize
declare void @do_force(%struct.__sFILE*, %struct.t_commrec*, %struct.t_commrec*, %struct.t_parm*, %struct.t_nsborder*, [3 x float]*, [3 x float]*, i32, %struct.t_nrnb*, %struct.t_topology*, %struct.t_groups*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_mdatoms*, float*, %struct.t_fcdata*, i32, float, %struct.t_graph*, i32, i32, %struct.t_forcerec*, float*, i32) #1

; Function Attrs: optsize
declare void @sum_lrforces([3 x float]*, %struct.t_forcerec*, i32, i32) #1

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @init_adir(%struct.__sFILE* %log, %struct.t_topology* %top, %struct.t_inputrec* %ir, i32 %step, %struct.t_mdatoms* %md, i32 %start, i32 %end, [3 x float]* %x_old, [3 x float]* nocapture readonly %x_init, [3 x float]* %x, [3 x float]* nocapture readonly %f, [3 x float]* %acc_dir, [3 x float]* %box, float %lambda, float* %dvdlambda, %struct.t_nrnb* %nrnb) #4 {
  %1 = load [3 x float]** @init_adir.xnew, align 8, !tbaa !31
  %2 = icmp eq [3 x float]* %1, null
  br i1 %2, label %3, label %8

; <label>:3                                       ; preds = %0
  %4 = sub nsw i32 %end, %start
  %5 = tail call i8* @save_calloc(i8* getelementptr inbounds ([6 x i8]* @.str17, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 247, i32 %4, i32 12) #8
  store i8* %5, i8** bitcast ([3 x float]** @init_adir.xnold to i8**), align 8, !tbaa !31
  %6 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str18, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str1, i64 0, i64 0), i32 248, i32 %4, i32 12) #8
  store i8* %6, i8** bitcast ([3 x float]** @init_adir.xnew to i8**), align 8, !tbaa !31
  %7 = bitcast i8* %6 to [3 x float]*
  br label %8

; <label>:8                                       ; preds = %3, %0
  %9 = phi [3 x float]* [ %7, %3 ], [ %1, %0 ]
  %10 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 13
  %11 = load i16** %10, align 8, !tbaa !57
  %12 = getelementptr inbounds %struct.t_inputrec* %ir, i64 0, i32 15
  %13 = load float* %12, align 4, !tbaa !58
  %14 = icmp sgt i32 %end, %start
  br i1 %14, label %.lr.ph, label %._crit_edge18

._crit_edge18:                                    ; preds = %8
  %.pre = load [3 x float]** @init_adir.xnold, align 8, !tbaa !31
  %.pre21 = sext i32 %start to i64
  br label %._crit_edge7

.lr.ph:                                           ; preds = %8
  %15 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 5
  %16 = load float** %15, align 8, !tbaa !59
  %17 = load [3 x float]** @init_adir.xnold, align 8, !tbaa !31
  %18 = fpext float %13 to double
  %19 = sext i32 %start to i64
  %20 = add i32 %end, -1
  br label %21

; <label>:21                                      ; preds = %63, %.lr.ph
  %indvars.iv14 = phi i64 [ %19, %.lr.ph ], [ %indvars.iv.next15, %63 ]
  %22 = getelementptr inbounds float* %16, i64 %indvars.iv14
  %23 = load float* %22, align 4, !tbaa !14
  %24 = fmul float %13, %23
  %25 = fpext float %24 to double
  %26 = getelementptr inbounds i16* %11, i64 %indvars.iv14
  %27 = load i16* %26, align 2, !tbaa !60
  %28 = add nsw i64 %indvars.iv14, %19
  br label %29

; <label>:29                                      ; preds = %62, %21
  %indvars.iv11 = phi i64 [ 0, %21 ], [ %indvars.iv.next12, %62 ]
  switch i16 %27, label %30 [
    i16 4, label %53
    i16 2, label %53
  ]

; <label>:30                                      ; preds = %29
  %31 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv14, i64 %indvars.iv11
  %32 = load float* %31, align 4, !tbaa !14
  %33 = getelementptr inbounds [3 x float]* %x_init, i64 %indvars.iv14, i64 %indvars.iv11
  %34 = load float* %33, align 4, !tbaa !14
  %35 = getelementptr inbounds [3 x float]* %x_old, i64 %indvars.iv14, i64 %indvars.iv11
  %36 = load float* %35, align 4, !tbaa !14
  %37 = fsub float %34, %36
  %38 = fsub float %32, %37
  %39 = getelementptr inbounds [3 x float]* %17, i64 %28, i64 %indvars.iv11
  store float %38, float* %39, align 4, !tbaa !14
  %40 = load float* %31, align 4, !tbaa !14
  %41 = fmul float %40, 2.000000e+00
  %42 = load float* %35, align 4, !tbaa !14
  %43 = fsub float %41, %42
  %44 = fpext float %43 to double
  %45 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv14, i64 %indvars.iv11
  %46 = load float* %45, align 4, !tbaa !14
  %47 = fpext float %46 to double
  %48 = fmul double %25, %47
  %49 = fmul double %18, %48
  %50 = fadd double %44, %49
  %51 = fptrunc double %50 to float
  %52 = getelementptr inbounds [3 x float]* %9, i64 %28, i64 %indvars.iv11
  store float %51, float* %52, align 4, !tbaa !14
  br label %62

; <label>:53                                      ; preds = %29, %29
  %54 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv14, i64 %indvars.iv11
  %55 = bitcast float* %54 to i32*
  %56 = load i32* %55, align 4, !tbaa !14
  %57 = getelementptr inbounds [3 x float]* %17, i64 %28, i64 %indvars.iv11
  %58 = bitcast float* %57 to i32*
  store i32 %56, i32* %58, align 4, !tbaa !14
  %59 = load i32* %55, align 4, !tbaa !14
  %60 = getelementptr inbounds [3 x float]* %9, i64 %28, i64 %indvars.iv11
  %61 = bitcast float* %60 to i32*
  store i32 %59, i32* %61, align 4, !tbaa !14
  br label %62

; <label>:62                                      ; preds = %30, %53
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  %exitcond13 = icmp eq i64 %indvars.iv.next12, 3
  br i1 %exitcond13, label %63, label %29

; <label>:63                                      ; preds = %62
  %indvars.iv.next15 = add nsw i64 %indvars.iv14, 1
  %lftr.wideiv16 = trunc i64 %indvars.iv14 to i32
  %exitcond17 = icmp eq i32 %lftr.wideiv16, %20
  br i1 %exitcond17, label %._crit_edge7, label %21

._crit_edge7:                                     ; preds = %63, %._crit_edge18
  %.pre-phi = phi i64 [ %.pre21, %._crit_edge18 ], [ %19, %63 ]
  %64 = phi [3 x float]* [ %.pre, %._crit_edge18 ], [ %17, %63 ]
  %65 = sub nsw i64 0, %.pre-phi
  %66 = getelementptr inbounds [3 x float]* %64, i64 %65
  %67 = tail call i32 @constrain(%struct.__sFILE* %log, %struct.t_topology* %top, %struct.t_inputrec* %ir, i32 %step, %struct.t_mdatoms* %md, i32 %start, i32 %end, [3 x float]* %x, [3 x float]* %66, [3 x float]* null, [3 x float]* %box, float %lambda, float* %dvdlambda, %struct.t_nrnb* %nrnb, i32 1) #8
  %68 = load [3 x float]** @init_adir.xnew, align 8, !tbaa !31
  %69 = getelementptr inbounds [3 x float]* %68, i64 %65
  %70 = tail call i32 @constrain(%struct.__sFILE* %log, %struct.t_topology* %top, %struct.t_inputrec* %ir, i32 %step, %struct.t_mdatoms* %md, i32 %start, i32 %end, [3 x float]* %x, [3 x float]* %69, [3 x float]* null, [3 x float]* %box, float %lambda, float* %dvdlambda, %struct.t_nrnb* %nrnb, i32 1) #8
  br i1 %14, label %.preheader.lr.ph, label %._crit_edge19

._crit_edge19:                                    ; preds = %._crit_edge7
  %.pre20 = load [3 x float]** @init_adir.xnew, align 8, !tbaa !31
  br label %._crit_edge

.preheader.lr.ph:                                 ; preds = %._crit_edge7
  %71 = load [3 x float]** @init_adir.xnold, align 8, !tbaa !31
  %72 = load [3 x float]** @init_adir.xnew, align 8, !tbaa !31
  %73 = fmul float %13, %13
  %74 = getelementptr inbounds %struct.t_mdatoms* %md, i64 0, i32 5
  %75 = load float** %74, align 8, !tbaa !59
  %76 = add i32 %end, -1
  br label %.preheader

.preheader:                                       ; preds = %97, %.preheader.lr.ph
  %indvars.iv8 = phi i64 [ %.pre-phi, %.preheader.lr.ph ], [ %indvars.iv.next9, %97 ]
  %77 = getelementptr inbounds float* %75, i64 %indvars.iv8
  %78 = sub nsw i64 %indvars.iv8, %.pre-phi
  br label %79

; <label>:79                                      ; preds = %79, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %79 ]
  %80 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv8, i64 %indvars.iv
  %81 = load float* %80, align 4, !tbaa !14
  %82 = fmul float %81, 2.000000e+00
  %83 = getelementptr inbounds [3 x float]* %71, i64 %indvars.iv8, i64 %indvars.iv
  %84 = load float* %83, align 4, !tbaa !14
  %85 = fsub float %82, %84
  %86 = getelementptr inbounds [3 x float]* %72, i64 %indvars.iv8, i64 %indvars.iv
  %87 = load float* %86, align 4, !tbaa !14
  %88 = fsub float %85, %87
  %89 = fsub float -0.000000e+00, %88
  %90 = fdiv float %89, %73
  %91 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv8, i64 %indvars.iv
  %92 = load float* %91, align 4, !tbaa !14
  %93 = load float* %77, align 4, !tbaa !14
  %94 = fmul float %92, %93
  %95 = fsub float %90, %94
  %96 = getelementptr inbounds [3 x float]* %72, i64 %78, i64 %indvars.iv
  store float %95, float* %96, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %97, label %79

; <label>:97                                      ; preds = %79
  %98 = getelementptr inbounds [3 x float]* %acc_dir, i64 %indvars.iv8, i64 0
  store float 0.000000e+00, float* %98, align 4, !tbaa !14
  %99 = getelementptr inbounds [3 x float]* %acc_dir, i64 %indvars.iv8, i64 1
  store float 0.000000e+00, float* %99, align 4, !tbaa !14
  %100 = getelementptr inbounds [3 x float]* %acc_dir, i64 %indvars.iv8, i64 2
  store float 0.000000e+00, float* %100, align 4, !tbaa !14
  %indvars.iv.next9 = add nsw i64 %indvars.iv8, 1
  %lftr.wideiv = trunc i64 %indvars.iv8 to i32
  %exitcond10 = icmp eq i32 %lftr.wideiv, %76
  br i1 %exitcond10, label %._crit_edge, label %.preheader

._crit_edge:                                      ; preds = %97, %._crit_edge19
  %101 = phi [3 x float]* [ %.pre20, %._crit_edge19 ], [ %72, %97 ]
  %102 = tail call i32 @constrain(%struct.__sFILE* %log, %struct.t_topology* %top, %struct.t_inputrec* %ir, i32 %step, %struct.t_mdatoms* %md, i32 %start, i32 %end, [3 x float]* %x_old, [3 x float]* %101, [3 x float]* %acc_dir, [3 x float]* %box, float %lambda, float* %dvdlambda, %struct.t_nrnb* %nrnb, i32 0) #8
  ret void
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #6

; Function Attrs: nounwind optsize readnone
declare double @sqrt(double) #7

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc float @rms_force(%struct.t_commrec* %cr, [3 x float]* nocapture readonly %f, i32 %ns, %struct.t_shell* nocapture readonly %s, i32 %ndir, float %sf_dir) #4 {
  %ntot = alloca i32, align 4
  %df2 = alloca float, align 4
  %1 = add nsw i32 %ndir, %ns
  store i32 %1, i32* %ntot, align 4, !tbaa !20
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %38, label %3

; <label>:3                                       ; preds = %0
  store float %sf_dir, float* %df2, align 4, !tbaa !14
  %4 = icmp sgt i32 %ns, 0
  br i1 %4, label %.lr.ph, label %23

.lr.ph:                                           ; preds = %3
  %5 = add i32 %ns, -1
  br label %6

; <label>:6                                       ; preds = %6, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %6 ]
  %7 = phi float [ %sf_dir, %.lr.ph ], [ %22, %6 ]
  %8 = getelementptr inbounds %struct.t_shell* %s, i64 %indvars.iv, i32 1
  %9 = load i32* %8, align 4, !tbaa !40
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [3 x float]* %f, i64 %10, i64 0
  %12 = load float* %11, align 4, !tbaa !14
  %13 = fmul float %12, %12
  %14 = getelementptr inbounds [3 x float]* %f, i64 %10, i64 1
  %15 = bitcast float* %14 to <2 x float>*
  %16 = load <2 x float>* %15, align 4, !tbaa !14
  %17 = fmul <2 x float> %16, %16
  %18 = extractelement <2 x float> %17, i32 0
  %19 = fadd float %13, %18
  %20 = extractelement <2 x float> %17, i32 1
  %21 = fadd float %19, %20
  %22 = fadd float %7, %21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv to i32
  %exitcond = icmp eq i32 %lftr.wideiv, %5
  br i1 %exitcond, label %._crit_edge, label %6

._crit_edge:                                      ; preds = %6
  store float %22, float* %df2, align 4, !tbaa !14
  br label %23

; <label>:23                                      ; preds = %._crit_edge, %3
  %24 = phi float [ %22, %._crit_edge ], [ %sf_dir, %3 ]
  %25 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %26 = load i32* %25, align 4, !tbaa !46
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %32, label %28

; <label>:28                                      ; preds = %23
  %29 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %30 = load i32* %29, align 4, !tbaa !48
  %31 = icmp sgt i32 %30, 1
  br i1 %31, label %32, label %33

; <label>:32                                      ; preds = %28, %23
  call void @gmx_sumf(i32 1, float* %df2, %struct.t_commrec* %cr) #8
  call void @gmx_sumi(i32 1, i32* %ntot, %struct.t_commrec* %cr) #8
  %.pre = load float* %df2, align 4, !tbaa !14
  %.pre2 = load i32* %ntot, align 4, !tbaa !20
  br label %33

; <label>:33                                      ; preds = %32, %28
  %34 = phi i32 [ %.pre2, %32 ], [ %1, %28 ]
  %35 = phi float [ %.pre, %32 ], [ %24, %28 ]
  %36 = sitofp i32 %34 to float
  %37 = fdiv float %35, %36
  %sqrtf = call float @sqrtf(float %37) #7
  br label %38

; <label>:38                                      ; preds = %0, %33
  %.0 = phi float [ %sqrtf, %33 ], [ 0.000000e+00, %0 ]
  ret float %.0
}

; Function Attrs: optsize
declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...) #1

; Function Attrs: optsize
declare void @pr_rvecs(%struct.__sFILE*, i32, i8*, [3 x float]*, i32) #1

; Function Attrs: nounwind optsize
declare i8* @__memcpy_chk(i8*, i8*, i64, i64) #6

; Function Attrs: nounwind readnone
declare i64 @llvm.objectsize.i64.p0i8(i8*, i1) #3

; Function Attrs: optsize
declare void @sum_epot(%struct.t_grpopts*, %struct.t_groups*, float*) #1

; Function Attrs: optsize
declare void @gmx_sumf(i32, float*, %struct.t_commrec*) #1

; Function Attrs: optsize
declare i32 @constrain(%struct.__sFILE*, %struct.t_topology*, %struct.t_inputrec*, i32, %struct.t_mdatoms*, i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, float, float*, %struct.t_nrnb*, i32) #1

; Function Attrs: optsize
declare void @pbc_dx(float*, float*, float*) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

; Function Attrs: optsize
declare void @fatal_error(i32, i8*, ...) #1

; Function Attrs: optsize
declare void @gmx_sumi(i32, i32*, %struct.t_commrec*) #1

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #5

declare float @fabsf(float)

declare float @sqrtf(float)

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct.__sFILE* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #5

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind optsize }
attributes #9 = { readnone }
attributes #10 = { optsize }
attributes #11 = { nounwind optsize readnone }

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
!18 = !{!19, !7, i64 0}
!19 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !5, i64 28, !5, i64 1052, !5, i64 2076, !5, i64 3100}
!20 = !{!7, !7, i64 0}
!21 = !{!22, !15, i64 2840}
!22 = !{!"", !7, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !15, i64 16, !15, i64 20, !15, i64 24, !7, i64 28, !15, i64 32, !15, i64 36, !15, i64 40, !15, i64 44, !15, i64 48, !7, i64 52, !7, i64 56, !15, i64 60, !7, i64 64, !15, i64 68, !4, i64 72, !4, i64 80, !4, i64 88, !4, i64 96, !15, i64 104, !15, i64 108, !4, i64 112, !15, i64 120, !15, i64 124, !15, i64 128, !15, i64 132, !7, i64 136, !15, i64 140, !15, i64 144, !7, i64 148, !7, i64 152, !7, i64 156, !7, i64 160, !7, i64 164, !7, i64 168, !7, i64 172, !7, i64 176, !5, i64 180, !7, i64 192, !7, i64 196, !7, i64 200, !7, i64 204, !4, i64 208, !4, i64 216, !4, i64 224, !4, i64 232, !5, i64 240, !5, i64 1488, !7, i64 2736, !7, i64 2740, !4, i64 2744, !4, i64 2752, !4, i64 2760, !7, i64 2768, !15, i64 2772, !4, i64 2776, !7, i64 2784, !4, i64 2792, !4, i64 2800, !7, i64 2808, !7, i64 2812, !7, i64 2816, !4, i64 2824, !4, i64 2832, !15, i64 2840}
!23 = !{!24, !7, i64 0}
!24 = !{!"", !7, i64 0, !5, i64 4, !4, i64 1032}
!25 = !{!24, !4, i64 1032}
!26 = !{!27, !4, i64 24}
!27 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !4, i64 16, !4, i64 24, !5, i64 32}
!28 = !{!29, !15, i64 0}
!29 = !{!"", !15, i64 0, !15, i64 4}
!30 = !{!19, !7, i64 12}
!31 = !{!4, !4, i64 0}
!32 = !{!33, !15, i64 304}
!33 = !{!"", !34, i64 0, !5, i64 592, !5, i64 628, !5, i64 664, !5, i64 700, !5, i64 736}
!34 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !15, i64 56, !15, i64 60, !15, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !7, i64 80, !15, i64 84, !7, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !15, i64 120, !5, i64 124, !5, i64 160, !7, i64 196, !15, i64 200, !15, i64 204, !7, i64 208, !15, i64 212, !15, i64 216, !7, i64 220, !15, i64 224, !15, i64 228, !15, i64 232, !7, i64 236, !15, i64 240, !15, i64 244, !7, i64 248, !15, i64 252, !15, i64 256, !15, i64 260, !15, i64 264, !15, i64 268, !7, i64 272, !7, i64 276, !7, i64 280, !15, i64 284, !15, i64 288, !15, i64 292, !7, i64 296, !15, i64 300, !15, i64 304, !7, i64 308, !7, i64 312, !7, i64 316, !7, i64 320, !7, i64 324, !15, i64 328, !7, i64 332, !15, i64 336, !15, i64 340, !7, i64 344, !15, i64 348, !7, i64 352, !7, i64 356, !7, i64 360, !7, i64 364, !15, i64 368, !15, i64 372, !15, i64 376, !15, i64 380, !35, i64 384, !5, i64 448, !5, i64 520}
!35 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56}
!36 = !{!33, !7, i64 308}
!37 = !{!33, !15, i64 60}
!38 = !{!39, !4, i64 24}
!39 = !{!"", !15, i64 0, !7, i64 4, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !4, i64 88, !4, i64 96, !4, i64 104, !4, i64 112, !4, i64 120, !4, i64 128, !4, i64 136, !4, i64 144, !4, i64 152, !4, i64 160, !4, i64 168}
!40 = !{!41, !7, i64 4}
!41 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !15, i64 20, !15, i64 24}
!42 = !{!41, !7, i64 0}
!43 = !{!41, !7, i64 8}
!44 = !{!41, !7, i64 12}
!45 = !{!41, !7, i64 16}
!46 = !{!47, !7, i64 4}
!47 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20}
!48 = !{!47, !7, i64 20}
!49 = !{!47, !7, i64 0}
!50 = !{!47, !7, i64 16}
!51 = !{!52, !4, i64 8}
!52 = !{!"", !4, i64 0, !4, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !53, i64 32, !7, i64 40, !4, i64 48}
!53 = !{!"long", !5, i64 0}
!54 = !{!41, !15, i64 24}
!55 = !{!22, !7, i64 152}
!56 = !{!22, !4, i64 2760}
!57 = !{!39, !4, i64 96}
!58 = !{!34, !15, i64 60}
!59 = !{!39, !4, i64 32}
!60 = !{!8, !8, i64 0}
