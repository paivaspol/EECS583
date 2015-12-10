; ModuleID = '../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/minimize.c'
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.10.0"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i32 (i8*)*, i32 (i8*, i8*, i32)*, i64 (i8*, i64, i32)*, i32 (i8*, i8*, i32)*, %struct.__sbuf, %struct.__sFILEX*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64 }
%struct.__sFILEX = type opaque
%struct.__sbuf = type { i8*, i32 }
%struct.t_filenm = type { i32, i8*, i8*, i64 }
%struct.t_parm = type { %struct.t_inputrec, [3 x [3 x float]], [3 x [3 x float]], [3 x [3 x float]], [3 x [3 x float]], [3 x [3 x float]] }
%struct.t_inputrec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, float, float, float, i32, i32, i32, i32, float, i32, i32, i32, i32, i32, i32, i32, i32, float, [3 x [3 x float]], [3 x [3 x float]], i32, float, float, i32, float, float, i32, float, float, float, i32, float, float, i32, float, float, float, float, float, i32, i32, i32, float, float, float, i32, float, float, i32, i32, i32, i32, i32, float, i32, float, float, i32, float, i32, i32, i32, i32, float, float, float, float, %struct.t_grpopts, [3 x %struct.t_cosines], [3 x %struct.t_cosines] }
%struct.t_grpopts = type { i32, i32, i32, i32, float*, float*, float*, [3 x float]*, [3 x i32]*, i32* }
%struct.t_cosines = type { i32, float*, float* }
%struct.t_topology = type { i8**, %struct.t_idef, %struct.t_atoms, [3 x %struct.t_block], %struct.t_symtab }
%struct.t_idef = type { i32, i32, i32, i32*, %union.t_iparams*, [44 x %struct.t_ilist] }
%union.t_iparams = type { %struct.anon.2 }
%struct.anon.2 = type { float, float, float, float, float, float }
%struct.t_ilist = type { i32, [256 x i32], i32* }
%struct.t_atoms = type { i32, %struct.t_atom*, i8***, i8***, i8***, i32, i8***, i32, i8***, %struct.t_block, [9 x %struct.t_grps], %struct.t_pdbinfo* }
%struct.t_atom = type { float, float, float, float, i16, i16, i32, i32, [9 x i8], i8 }
%struct.t_block = type { [256 x i32], i32, i32*, i32, i32* }
%struct.t_grps = type { i32, i32* }
%struct.t_pdbinfo = type { i32, i32, i8, [6 x i8], float, float, i32, [6 x i32] }
%struct.t_symtab = type { i32, %struct.symbuf* }
%struct.symbuf = type { i32, i8**, %struct.symbuf* }
%struct.t_groups = type { %struct.t_grp_ener, %struct.t_grp_tcstat*, %struct.t_grp_acc*, %struct.t_cos_acc }
%struct.t_grp_ener = type { i32, [7 x float*] }
%struct.t_grp_tcstat = type { float, float, [3 x [3 x float]], float, float }
%struct.t_grp_acc = type { i32, i32*, float, [3 x float], [3 x float], [3 x float] }
%struct.t_cos_acc = type { float, float, float }
%struct.t_nsborder = type { i32, i32, i32, i32, i32, i32, i32, [256 x i32], [256 x i32], [256 x i32], [256 x i32] }
%struct.t_mdatoms = type { float, i32, float*, float*, float*, float*, float*, float*, float*, i32*, i32*, i32*, i32*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16*, i16* }
%struct.t_fcdata = type { %struct.t_disresdata, %struct.t_oriresdata }
%struct.t_disresdata = type { i32, i32, float, float, float, float, float, i32, i32, float, float*, float*, float*, float*, float* }
%struct.t_oriresdata = type { float, float, float, float, i32, i32, i32, float, float*, [3 x float]*, [3 x float]*, [3 x [3 x float]], [3 x [3 x float]]*, [5 x float]*, [5 x float]*, [5 x float]*, float*, float*, float*, float, [5 x float]*, float*** }
%struct.t_nrnb = type { [129 x double] }
%struct.t_comm_dummies = type { i32, i32, i32*, i32*, i32, i32, i32*, i32* }
%struct.t_commrec = type { i32, i32, i32, i32, i32, i32 }
%struct.t_graph = type { i32, i32, i32, i32, i32, i32*, i32**, [3 x i32]* }
%struct.t_forcerec = type { i32, float, float, float, float, float, float, i32, float, float, float, float, float, i32, i32, float, i32, float, float*, float*, float*, float*, float, float, float*, float, float, float, float, i32, float, float, i32, i32, i32, i32, i32, i32, i32, i32, [3 x float], i32, i32, i32, i32, i32*, i32*, [3 x float]*, [3 x float]*, [13 x %struct.t_nblist], [13 x %struct.t_nblist], i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, i32, float, [3 x float]*, i32, i32*, float*, i32, i32, i32, float*, i32*, float }
%struct.t_nblist = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32* }
%struct.t_vcm = type { i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x [3 x float]]*, float*, i8**, i16* }
%struct.t_mdebin = type { %struct.t_ebin*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.t_ebin = type { i32, i8**, %struct.t_energy* }
%struct.t_energy = type { float, double, double, float }
%struct.t_edsamyn = type { i32, i8*, i8* }

@.str = private unnamed_addr constant [20 x i8] c"Conjugate Gradients\00", align 1
@.str1 = private unnamed_addr constant [28 x i8] c"Started Conjugate Gradients\00", align 1
@.str2 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str3 = private unnamed_addr constant [68 x i8] c"../../SPEC_CPU2006v1.1/benchspec/CPU2006/435.gromacs/src/minimize.c\00", align 1
@.str4 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str5 = private unnamed_addr constant [7 x i8] c"xprime\00", align 1
@.str6 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@__stderrp = external global %struct.__sFILE*
@.str7 = private unnamed_addr constant [31 x i8] c"   F-Norm            = %12.5e\0A\00", align 1
@.str9 = private unnamed_addr constant [21 x i8] c"Negative w: %20.12e\0A\00", align 1
@.str10 = private unnamed_addr constant [12 x i8] c"z= %20.12e\0A\00", align 1
@.str11 = private unnamed_addr constant [28 x i8] c"gpa= %20.12e, gpb= %20.12e\0A\00", align 1
@.str12 = private unnamed_addr constant [24 x i8] c"a= %20.12e, b= %20.12e\0A\00", align 1
@.str13 = private unnamed_addr constant [32 x i8] c"EpotA= %20.12e, EpotB= %20.12e\0A\00", align 1
@.str14 = private unnamed_addr constant [43 x i8] c"Negative number for sqrt encountered (%f)\0A\00", align 1
@.str15 = private unnamed_addr constant [26 x i8] c"Terminating minimization\0A\00", align 1
@.str16 = private unnamed_addr constant [53 x i8] c"\0DStep %d, E-Pot = %16.10e, Fmax = %12.5e, atom = %d\0A\00", align 1
@.str17 = private unnamed_addr constant [37 x i8] c"\0Awriting lowest energy coordinates.\0A\00", align 1
@.str18 = private unnamed_addr constant [18 x i8] c"Steepest Descents\00", align 1
@.str19 = private unnamed_addr constant [26 x i8] c"Started Steepest Descents\00", align 1
@.str20 = private unnamed_addr constant [7 x i8] c"pos[i]\00", align 1
@.str21 = private unnamed_addr constant [9 x i8] c"force[i]\00", align 1
@stdlog = external global %struct.__sFILE*
@.str22 = private unnamed_addr constant [4 x i8] c"xcf\00", align 1
@.str23 = private unnamed_addr constant [64 x i8] c"Step=%5d, Dmax= %6.1e nm, Epot= %12.5e Fmax= %11.5e, atom= %d%c\00", align 1
@.str24 = private unnamed_addr constant [5 x i8] c"dfdx\00", align 1
@.str25 = private unnamed_addr constant [25 x i8] c"Removing pbc first time\0A\00", align 1
@.str26 = private unnamed_addr constant [14 x i8] c"Started nmrun\00", align 1
@.str27 = private unnamed_addr constant [32 x i8] c"starting nmrun '%s'\0A%d steps.\0A\0A\00", align 1
@.str28 = private unnamed_addr constant [22 x i8] c"Maximum force:%12.5e\0A\00", align 1
@.str29 = private unnamed_addr constant [43 x i8] c"Maximum force probably not small enough to\00", align 1
@.str30 = private unnamed_addr constant [41 x i8] c" ensure that you are in a \0Aenergy well. \00", align 1
@.str31 = private unnamed_addr constant [45 x i8] c"Be aware that negative eigenvalues may occur\00", align 1
@.str32 = private unnamed_addr constant [45 x i8] c" when the\0Aresulting matrix is diagonalized.\0A\00", align 1
@.str33 = private unnamed_addr constant [28 x i8] c"\0DFinished step %d out of %d\00", align 1
@.str34 = private unnamed_addr constant [15 x i8] c"Initiating %s\0A\00", align 1
@.str35 = private unnamed_addr constant [5 x i8] c"%s:\0A\00", align 1
@.str36 = private unnamed_addr constant [31 x i8] c"   Tolerance         = %12.5e\0A\00", align 1
@.str37 = private unnamed_addr constant [29 x i8] c"   Number of steps   = %12d\0A\00", align 1
@.str38 = private unnamed_addr constant [33 x i8] c"\0A%s converged to %g in %d steps\0A\00", align 1
@.str39 = private unnamed_addr constant [34 x i8] c"\0A%s did not converge in %d steps\0A\00", align 1
@.str40 = private unnamed_addr constant [30 x i8] c"  Potential Energy  = %12.5e\0A\00", align 1
@.str41 = private unnamed_addr constant [23 x i8] c"Maximum force: %12.5e\0A\00", align 1
@.str42 = private unnamed_addr constant [100 x i8] c"\0AStepsize too small (%g nm)Converged to machine precision,\0Abut not to the requested precision (%g)\0A\00", align 1
@.str43 = private unnamed_addr constant [127 x i8] c"You might need to increase your constraint accuracy, or turn\0Aoff constraints alltogether (set constraints = none in mdp file)\0A\00", align 1

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
define i64 @do_cg(%struct.__sFILE* %log, i32 %nfile, %struct.t_filenm* %fnm, %struct.t_parm* %parm, %struct.t_topology* %top, %struct.t_groups* %grps, %struct.t_nsborder* %nsb, [3 x float]* %x, [3 x float]* nocapture readnone %grad, [3 x float]* %buf, %struct.t_mdatoms* %mdatoms, [3 x float]* nocapture readnone %ekin, float* %ener, %struct.t_fcdata* %fcd, %struct.t_nrnb* %nrnb, i32 %bVerbose, i32 %bDummies, %struct.t_comm_dummies* %dummycomm, %struct.t_commrec* %cr, %struct.t_commrec* %mcr, %struct.t_graph* %graph, %struct.t_forcerec* %fr, float* %box_size) #3 {
  %gpa = alloca double, align 8
  %gpb = alloca double, align 8
  %lambda = alloca float, align 4
  %vcm = alloca %struct.t_vcm*, align 8
  %mynrnb = alloca %struct.t_nrnb, align 8
  %bLR = alloca i32, align 4
  %bLJLR = alloca i32, align 4
  %bBHAM = alloca i32, align 4
  %b14 = alloca i32, align 4
  %mu_tot = alloca [3 x float], align 4
  %force_vir = alloca [3 x [3 x float]], align 16
  %shake_vir = alloca [3 x [3 x float]], align 16
  %pme_vir = alloca [3 x [3 x float]], align 16
  %nfmax = alloca i32, align 4
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %terminate = alloca float, align 4
  %1 = bitcast %struct.t_nrnb* %mynrnb to i8*
  call void @llvm.lifetime.start(i64 1032, i8* %1) #4
  %2 = bitcast [3 x [3 x float]]* %force_vir to i8*
  call void @llvm.lifetime.start(i64 36, i8* %2) #4
  %3 = bitcast [3 x [3 x float]]* %shake_vir to i8*
  call void @llvm.lifetime.start(i64 36, i8* %3) #4
  %4 = bitcast [3 x [3 x float]]* %pme_vir to i8*
  call void @llvm.lifetime.start(i64 36, i8* %4) #4
  %5 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0
  %6 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 63
  %7 = load i32* %6, align 4, !tbaa !14
  store float 0.000000e+00, float* %terminate, align 4, !tbaa !19
  %8 = getelementptr inbounds [3 x float]* %mu_tot, i64 0, i64 0
  call fastcc void @init_em(%struct.__sFILE* %log, i8* getelementptr inbounds ([20 x i8]* @.str, i64 0, i64 0), %struct.t_parm* %parm, float* %lambda, %struct.t_nrnb* %mynrnb, float* %8, float* %box_size, %struct.t_forcerec* %fr, %struct.t_mdatoms* %mdatoms, %struct.t_topology* %top, %struct.t_nsborder* %nsb, %struct.t_commrec* %cr, %struct.t_vcm** %vcm, i32* %start, i32* %end) #8
  %9 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %10 = load i32* %9, align 4, !tbaa !20
  %11 = call i64 @print_date_and_time(%struct.__sFILE* %log, i32 %10, i8* getelementptr inbounds ([28 x i8]* @.str1, i64 0, i64 0)) #7
  %12 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 3
  %13 = load i32* %12, align 4, !tbaa !22
  %14 = call i8* @save_calloc(i8* getelementptr inbounds ([2 x i8]* @.str2, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str3, i64 0, i64 0), i32 220, i32 %13, i32 12) #7
  %15 = bitcast i8* %14 to [3 x float]*
  %16 = load i32* %12, align 4, !tbaa !22
  %17 = call i8* @save_calloc(i8* getelementptr inbounds ([2 x i8]* @.str4, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str3, i64 0, i64 0), i32 221, i32 %16, i32 12) #7
  %18 = bitcast i8* %17 to [3 x float]*
  %19 = load i32* %12, align 4, !tbaa !22
  %20 = call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str5, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str3, i64 0, i64 0), i32 222, i32 %19, i32 12) #7
  %21 = bitcast i8* %20 to [3 x float]*
  call void @set_pot_bools(%struct.t_inputrec* %5, %struct.t_topology* %top, i32* %bLR, i32* %bLJLR, i32* %bBHAM, i32* %b14) #7
  %22 = load i32* %9, align 4, !tbaa !20
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %31

; <label>:24                                      ; preds = %0
  %25 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  %26 = load i32* %25, align 4, !tbaa !24
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

; <label>:28                                      ; preds = %24
  %29 = call i8* @ftp2fn(i32 8, i32 %nfile, %struct.t_filenm* %fnm) #7
  %30 = call i32 @open_enx(i8* %29, i8* getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0)) #7
  br label %31

; <label>:31                                      ; preds = %0, %24, %28
  %fp_ene.0 = phi i32 [ %30, %28 ], [ -1, %24 ], [ -1, %0 ]
  %32 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2
  %33 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1
  %34 = load i32* %bLR, align 4, !tbaa !25
  %35 = load i32* %bLJLR, align 4, !tbaa !25
  %36 = load i32* %bBHAM, align 4, !tbaa !25
  %37 = load i32* %b14, align 4, !tbaa !25
  %38 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 46
  %39 = load i32* %38, align 4, !tbaa !26
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 28
  %43 = load i32* %42, align 4, !tbaa !27
  %44 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 43
  %45 = load i32* %44, align 4, !tbaa !28
  %46 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 32, i64 1, i64 0
  %47 = load float* %46, align 4, !tbaa !19
  %fabsf = call float @fabsf(float %47) #6
  %48 = fpext float %fabsf to double
  %49 = fcmp ogt double %48, 1.200000e-38
  br i1 %49, label %60, label %50

; <label>:50                                      ; preds = %31
  %51 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 32, i64 2, i64 0
  %52 = load float* %51, align 4, !tbaa !19
  %fabsf1 = call float @fabsf(float %52) #6
  %53 = fpext float %fabsf1 to double
  %54 = fcmp ogt double %53, 1.200000e-38
  br i1 %54, label %60, label %55

; <label>:55                                      ; preds = %50
  %56 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 32, i64 2, i64 1
  %57 = load float* %56, align 4, !tbaa !19
  %fabsf2 = call float @fabsf(float %57) #6
  %58 = fpext float %fabsf2 to double
  %59 = fcmp ogt double %58, 1.200000e-38
  br label %60

; <label>:60                                      ; preds = %55, %50, %31
  %61 = phi i1 [ true, %50 ], [ true, %31 ], [ %59, %55 ]
  %62 = zext i1 %61 to i32
  %63 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 27
  %64 = load i32* %63, align 4, !tbaa !29
  %65 = icmp eq i32 %64, 2
  %66 = zext i1 %65 to i32
  %67 = call %struct.t_mdebin* @init_mdebin(i32 %fp_ene.0, %struct.t_groups* %grps, %struct.t_atoms* %32, %struct.t_idef* %33, i32 %34, i32 %35, i32 %36, i32 %37, i32 %41, i32 %43, i32 %45, i32 %62, i32 %66, %struct.t_commrec* %cr) #7
  %68 = getelementptr inbounds [3 x [3 x float]]* %force_vir, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 36, i32 16, i1 false) #4
  %69 = getelementptr inbounds [3 x [3 x float]]* %shake_vir, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 36, i32 16, i1 false) #4
  %70 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 0
  %71 = load i32* %70, align 4, !tbaa !30
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %74, label %73

; <label>:73                                      ; preds = %60
  call void @do_pbc_first(%struct.__sFILE* %log, %struct.t_parm* %parm, float* %box_size, %struct.t_forcerec* %fr, %struct.t_graph* %graph, [3 x float]* %x) #7
  br label %74

; <label>:74                                      ; preds = %60, %73
  %75 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 1
  %76 = load i32* %75, align 4, !tbaa !32
  %77 = load i32* %9, align 4, !tbaa !20
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %87

; <label>:79                                      ; preds = %74
  %80 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  %81 = load i32* %80, align 4, !tbaa !24
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %87

; <label>:83                                      ; preds = %79
  %84 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !33
  %85 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 60
  %86 = load float* %85, align 4, !tbaa !34
  call fastcc void @sp_header(%struct.__sFILE* %84, i8* getelementptr inbounds ([20 x i8]* @.str, i64 0, i64 0), float %86, i32 %76) #8
  br label %87

; <label>:87                                      ; preds = %83, %79, %74
  %88 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 60
  %89 = load float* %88, align 4, !tbaa !34
  call fastcc void @sp_header(%struct.__sFILE* %log, i8* getelementptr inbounds ([20 x i8]* @.str, i64 0, i64 0), float %89, i32 %76) #8
  %90 = icmp ne i32 %bDummies, 0
  br i1 %90, label %91, label %96

; <label>:91                                      ; preds = %87
  %92 = load i32* %9, align 4, !tbaa !20
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %93
  %95 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 0
  call void @construct_dummies(%struct.__sFILE* %log, [3 x float]* %x, %struct.t_nrnb* %94, float 1.000000e+00, [3 x float]* null, %struct.t_idef* %33, %struct.t_graph* %graph, %struct.t_commrec* %cr, [3 x float]* %95, %struct.t_comm_dummies* %dummycomm) #7
  br label %96

; <label>:96                                      ; preds = %91, %87
  %97 = getelementptr inbounds [3 x [3 x float]]* %pme_vir, i64 0, i64 0
  %98 = load i32* %9, align 4, !tbaa !20
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %99
  %101 = icmp ne i32 %bVerbose, 0
  br i1 %101, label %102, label %109

; <label>:102                                     ; preds = %96
  %103 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %104 = load i32* %103, align 4, !tbaa !35
  %105 = icmp sgt i32 %104, 1
  br i1 %105, label %109, label %106

; <label>:106                                     ; preds = %102
  %107 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %108 = load i32* %107, align 4, !tbaa !36
  %phitmp = icmp slt i32 %108, 2
  br label %109

; <label>:109                                     ; preds = %102, %106, %96
  %110 = phi i1 [ false, %96 ], [ false, %102 ], [ %phitmp, %106 ]
  %111 = zext i1 %110 to i32
  %112 = load float* %lambda, align 4, !tbaa !19
  call void @do_force(%struct.__sFILE* %log, %struct.t_commrec* %cr, %struct.t_commrec* %mcr, %struct.t_parm* %parm, %struct.t_nsborder* %nsb, [3 x float]* %68, [3 x float]* %97, i32 0, %struct.t_nrnb* %100, %struct.t_topology* %top, %struct.t_groups* %grps, [3 x float]* %x, [3 x float]* %buf, [3 x float]* %18, [3 x float]* %buf, %struct.t_mdatoms* %mdatoms, float* %ener, %struct.t_fcdata* %fcd, i32 %111, float %112, %struct.t_graph* %graph, i32 1, i32 0, %struct.t_forcerec* %fr, float* %8, i32 0) #7
  call void @_where(i8* getelementptr inbounds ([68 x i8]* @.str3, i64 0, i64 0), i32 265) #7
  br i1 %90, label %113, label %117

; <label>:113                                     ; preds = %109
  %114 = load i32* %9, align 4, !tbaa !20
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %115
  call void @spread_dummy_f(%struct.__sFILE* %log, [3 x float]* %x, [3 x float]* %18, %struct.t_nrnb* %116, %struct.t_idef* %33, %struct.t_comm_dummies* %dummycomm, %struct.t_commrec* %cr) #7
  br label %117

; <label>:117                                     ; preds = %113, %109
  %118 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80
  call void @sum_epot(%struct.t_grpopts* %118, %struct.t_groups* %grps, float* %ener) #7
  call void @_where(i8* getelementptr inbounds ([68 x i8]* @.str3, i64 0, i64 0), i32 273) #7
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 36, i32 16, i1 false) #4
  call void @_where(i8* getelementptr inbounds ([68 x i8]* @.str3, i64 0, i64 0), i32 277) #7
  %119 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %120 = load i32* %119, align 4, !tbaa !35
  %121 = icmp sgt i32 %120, 1
  br i1 %121, label %126, label %122

; <label>:122                                     ; preds = %117
  %123 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %124 = load i32* %123, align 4, !tbaa !36
  %125 = icmp sgt i32 %124, 1
  br i1 %125, label %126, label %128

; <label>:126                                     ; preds = %122, %117
  %127 = load %struct.t_vcm** %vcm, align 8, !tbaa !33
  call void @global_stat(%struct.__sFILE* %log, %struct.t_commrec* %cr, float* %ener, [3 x float]* %68, [3 x float]* %69, %struct.t_grpopts* %118, %struct.t_groups* %grps, %struct.t_nrnb* %mynrnb, %struct.t_nrnb* %nrnb, %struct.t_vcm* %127, float* %terminate) #7
  br label %128

; <label>:128                                     ; preds = %126, %122
  call void @_where(i8* getelementptr inbounds ([68 x i8]* @.str3, i64 0, i64 0), i32 283) #7
  %129 = load i32* %9, align 4, !tbaa !20
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %144

; <label>:131                                     ; preds = %128
  %132 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  %133 = load i32* %132, align 4, !tbaa !24
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %144

; <label>:135                                     ; preds = %131
  %136 = getelementptr inbounds %struct.t_mdatoms* %mdatoms, i64 0, i32 0
  %137 = load float* %136, align 4, !tbaa !37
  %138 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 0
  %139 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 3, i64 0
  %140 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 4, i64 0
  %141 = load i32* %63, align 4, !tbaa !29
  %142 = icmp eq i32 %141, 2
  %143 = zext i1 %142 to i32
  call void @upd_mdebin(%struct.t_mdebin* %67, %struct.__sFILE* null, float %137, i32 0, float 0.000000e+00, float* %ener, [3 x float]* %138, [3 x float]* %69, [3 x float]* %68, [3 x float]* %139, [3 x float]* %140, %struct.t_groups* %grps, float* %8, i32 %143) #7
  call void @print_ebin_header(%struct.__sFILE* %log, i32 0, float 0.000000e+00, float %112, float 0.000000e+00) #7
  call void @print_ebin(i32 %fp_ene.0, i32 1, i32 0, i32 0, %struct.__sFILE* %log, i32 0, float 0.000000e+00, i32 0, i32 1, %struct.t_mdebin* %67, %struct.t_fcdata* %fcd, %struct.t_atoms* %32) #7
  br label %144

; <label>:144                                     ; preds = %135, %131, %128
  call void @_where(i8* getelementptr inbounds ([68 x i8]* @.str3, i64 0, i64 0), i32 296) #7
  %145 = getelementptr inbounds float* %ener, i64 37
  %146 = load float* %145, align 4, !tbaa !19
  %147 = load i32* %start, align 4, !tbaa !25
  %148 = load i32* %end, align 4, !tbaa !25
  %149 = call fastcc float @f_norm(%struct.t_commrec* %cr, %struct.t_grpopts* %118, %struct.t_mdatoms* %mdatoms, i32 %147, i32 %148, [3 x float]* %18) #8
  %150 = load i32* %9, align 4, !tbaa !20
  %151 = icmp eq i32 %150, 0
  %152 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  br i1 %151, label %153, label %.preheader5

; <label>:153                                     ; preds = %144
  %154 = load i32* %152, align 4, !tbaa !24
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %.preheader5

; <label>:156                                     ; preds = %153
  %157 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !33
  %158 = fpext float %149 to double
  %159 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %157, i8* getelementptr inbounds ([31 x i8]* @.str7, i64 0, i64 0), double %158) #7
  %160 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !33
  %fputc = call i32 @fputc(i32 10, %struct.__sFILE* %160)
  br label %.preheader5

.preheader5:                                      ; preds = %144, %156, %153
  %161 = icmp sgt i32 %76, 0
  %162 = icmp slt i32 %147, %148
  %163 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 59
  %164 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 3
  %165 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 0
  %166 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %167 = load %struct.t_vcm** %vcm, align 8, !tbaa !33
  %168 = icmp eq i32 %7, 0
  %169 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 2
  %170 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 3
  %171 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 1
  %172 = getelementptr inbounds %struct.t_mdatoms* %mdatoms, i64 0, i32 0
  %173 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 3, i64 0
  %174 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 4, i64 0
  %175 = getelementptr inbounds %struct.t_mdatoms* %mdatoms, i64 0, i32 17
  %176 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 8
  %177 = sext i32 %147 to i64
  %178 = sext i32 %148 to i64
  %179 = add i32 %148, -1
  br label %180

; <label>:180                                     ; preds = %433, %.preheader5
  %count.064 = phi i32 [ 1, %.preheader5 ], [ %437, %433 ]
  %EpotA.063 = phi float [ %146, %.preheader5 ], [ %387, %433 ]
  %bDone.062 = phi i32 [ 0, %.preheader5 ], [ %436, %433 ]
  %beta.061 = phi float [ 0.000000e+00, %.preheader5 ], [ %beta.1, %433 ]
  %fnorm_old.060 = phi float [ %149, %.preheader5 ], [ %379, %433 ]
  %181 = icmp eq i32 %count.064, %76
  %. = and i1 %161, %181
  br i1 %., label %.critedge, label %182

; <label>:182                                     ; preds = %180
  store double 0.000000e+00, double* %gpa, align 8, !tbaa !39
  br i1 %162, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %182
  %183 = load i16** %175, align 8, !tbaa !41
  %184 = load [3 x i32]** %176, align 8, !tbaa !42
  br label %185

; <label>:185                                     ; preds = %.lr.ph, %208
  %186 = phi double [ 0.000000e+00, %.lr.ph ], [ %207, %208 ]
  %indvars.iv79 = phi i64 [ %177, %.lr.ph ], [ %indvars.iv.next80, %208 ]
  %187 = getelementptr inbounds i16* %183, i64 %indvars.iv79
  %188 = load i16* %187, align 2, !tbaa !43
  %189 = zext i16 %188 to i64
  br label %190

; <label>:190                                     ; preds = %206, %185
  %191 = phi double [ %186, %185 ], [ %207, %206 ]
  %indvars.iv = phi i64 [ 0, %185 ], [ %indvars.iv.next, %206 ]
  %192 = getelementptr inbounds [3 x i32]* %184, i64 %189, i64 %indvars.iv
  %193 = load i32* %192, align 4, !tbaa !25
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %206

; <label>:195                                     ; preds = %190
  %196 = getelementptr inbounds [3 x float]* %18, i64 %indvars.iv79, i64 %indvars.iv
  %197 = load float* %196, align 4, !tbaa !19
  %198 = getelementptr inbounds [3 x float]* %15, i64 %indvars.iv79, i64 %indvars.iv
  %199 = load float* %198, align 4, !tbaa !19
  %200 = fmul float %beta.061, %199
  %201 = fadd float %197, %200
  store float %201, float* %198, align 4, !tbaa !19
  %202 = load float* %196, align 4, !tbaa !19
  %203 = fmul float %201, %202
  %204 = fpext float %203 to double
  %205 = fsub double %191, %204
  store double %205, double* %gpa, align 8, !tbaa !39
  br label %206

; <label>:206                                     ; preds = %190, %195
  %207 = phi double [ %191, %190 ], [ %205, %195 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %208, label %190

; <label>:208                                     ; preds = %206
  %indvars.iv.next80 = add nsw i64 %indvars.iv79, 1
  %209 = icmp slt i64 %indvars.iv.next80, %178
  br i1 %209, label %185, label %._crit_edge

._crit_edge:                                      ; preds = %208, %182
  %210 = load i32* %119, align 4, !tbaa !35
  %211 = icmp sgt i32 %210, 1
  br i1 %211, label %215, label %212

; <label>:212                                     ; preds = %._crit_edge
  %213 = load i32* %166, align 4, !tbaa !36
  %214 = icmp sgt i32 %213, 1
  br i1 %214, label %215, label %.lr.ph34

; <label>:215                                     ; preds = %212, %._crit_edge
  call void @gmx_sumd(i32 1, double* %gpa, %struct.t_commrec* %cr) #7
  br label %.lr.ph34

.lr.ph34:                                         ; preds = %212, %215
  %216 = call fastcc float @f_norm(%struct.t_commrec* %cr, %struct.t_grpopts* %118, %struct.t_mdatoms* %mdatoms, i32 %147, i32 %148, [3 x float]* %15) #8
  %217 = load float* %163, align 4, !tbaa !44
  %218 = fdiv float %217, %216
  br label %219

; <label>:219                                     ; preds = %288, %.lr.ph34
  %EpotA.133 = phi float [ %EpotA.063, %.lr.ph34 ], [ %284, %288 ]
  %a.032 = phi float [ 0.000000e+00, %.lr.ph34 ], [ %b.031, %288 ]
  %b.031 = phi float [ %218, %.lr.ph34 ], [ %289, %288 ]
  br i1 %162, label %.preheader3, label %._crit_edge24

.preheader3:                                      ; preds = %219, %228
  %indvars.iv84 = phi i64 [ %indvars.iv.next85, %228 ], [ %177, %219 ]
  br label %220

; <label>:220                                     ; preds = %220, %.preheader3
  %indvars.iv81 = phi i64 [ 0, %.preheader3 ], [ %indvars.iv.next82, %220 ]
  %221 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv84, i64 %indvars.iv81
  %222 = load float* %221, align 4, !tbaa !19
  %223 = getelementptr inbounds [3 x float]* %15, i64 %indvars.iv84, i64 %indvars.iv81
  %224 = load float* %223, align 4, !tbaa !19
  %225 = fmul float %b.031, %224
  %226 = fadd float %222, %225
  %227 = getelementptr inbounds [3 x float]* %21, i64 %indvars.iv84, i64 %indvars.iv81
  store float %226, float* %227, align 4, !tbaa !19
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1
  %exitcond83 = icmp eq i64 %indvars.iv.next82, 3
  br i1 %exitcond83, label %228, label %220

; <label>:228                                     ; preds = %220
  %indvars.iv.next85 = add nsw i64 %indvars.iv84, 1
  %229 = icmp slt i64 %indvars.iv.next85, %178
  br i1 %229, label %.preheader3, label %._crit_edge24

._crit_edge24:                                    ; preds = %228, %219
  %230 = load i32* %164, align 4, !tbaa !45
  %231 = icmp sgt i32 %230, 0
  %232 = zext i1 %231 to i32
  br i1 %90, label %233, label %237

; <label>:233                                     ; preds = %._crit_edge24
  %234 = load i32* %9, align 4, !tbaa !20
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %235
  call void @construct_dummies(%struct.__sFILE* %log, [3 x float]* %21, %struct.t_nrnb* %236, float 1.000000e+00, [3 x float]* null, %struct.t_idef* %33, %struct.t_graph* %graph, %struct.t_commrec* %cr, [3 x float]* %165, %struct.t_comm_dummies* %dummycomm) #7
  br label %237

; <label>:237                                     ; preds = %233, %._crit_edge24
  %238 = load i32* %9, align 4, !tbaa !20
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %239
  br i1 %101, label %241, label %250

; <label>:241                                     ; preds = %237
  %242 = load i32* %119, align 4, !tbaa !35
  %243 = icmp sgt i32 %242, 1
  br i1 %243, label %247, label %244

; <label>:244                                     ; preds = %241
  %245 = load i32* %166, align 4, !tbaa !36
  %246 = icmp sgt i32 %245, 1
  br label %247

; <label>:247                                     ; preds = %244, %241
  %248 = phi i1 [ true, %241 ], [ %246, %244 ]
  %249 = xor i1 %248, true
  br label %250

; <label>:250                                     ; preds = %247, %237
  %251 = phi i1 [ false, %237 ], [ %249, %247 ]
  %252 = zext i1 %251 to i32
  call void @do_force(%struct.__sFILE* %log, %struct.t_commrec* %cr, %struct.t_commrec* %mcr, %struct.t_parm* %parm, %struct.t_nsborder* %nsb, [3 x float]* %68, [3 x float]* %97, i32 %count.064, %struct.t_nrnb* %240, %struct.t_topology* %top, %struct.t_groups* %grps, [3 x float]* %21, [3 x float]* %buf, [3 x float]* %18, [3 x float]* %buf, %struct.t_mdatoms* %mdatoms, float* %ener, %struct.t_fcdata* %fcd, i32 %252, float %112, %struct.t_graph* %graph, i32 %232, i32 0, %struct.t_forcerec* %fr, float* %8, i32 0) #7
  br i1 %90, label %253, label %257

; <label>:253                                     ; preds = %250
  %254 = load i32* %9, align 4, !tbaa !20
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %255
  call void @spread_dummy_f(%struct.__sFILE* %log, [3 x float]* %21, [3 x float]* %18, %struct.t_nrnb* %256, %struct.t_idef* %33, %struct.t_comm_dummies* %dummycomm, %struct.t_commrec* %cr) #7
  br label %257

; <label>:257                                     ; preds = %253, %250
  call void @sum_epot(%struct.t_grpopts* %118, %struct.t_groups* %grps, float* %ener) #7
  call void @_where(i8* getelementptr inbounds ([68 x i8]* @.str3, i64 0, i64 0), i32 371) #7
  %258 = load i32* %164, align 4, !tbaa !45
  store double 0.000000e+00, double* %gpb, align 8, !tbaa !39
  br i1 %162, label %.preheader, label %269

.preheader:                                       ; preds = %257, %268
  %indvars.iv89 = phi i64 [ %indvars.iv.next90, %268 ], [ %177, %257 ]
  %.lcssa2630 = phi double [ %267, %268 ], [ 0.000000e+00, %257 ]
  br label %259

; <label>:259                                     ; preds = %259, %.preheader
  %indvars.iv86 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next87, %259 ]
  %260 = phi double [ %.lcssa2630, %.preheader ], [ %267, %259 ]
  %261 = getelementptr inbounds [3 x float]* %15, i64 %indvars.iv89, i64 %indvars.iv86
  %262 = load float* %261, align 4, !tbaa !19
  %263 = getelementptr inbounds [3 x float]* %18, i64 %indvars.iv89, i64 %indvars.iv86
  %264 = load float* %263, align 4, !tbaa !19
  %265 = fmul float %262, %264
  %266 = fpext float %265 to double
  %267 = fsub double %260, %266
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1
  %exitcond88 = icmp eq i64 %indvars.iv.next87, 3
  br i1 %exitcond88, label %268, label %259

; <label>:268                                     ; preds = %259
  %indvars.iv.next90 = add nsw i64 %indvars.iv89, 1
  %lftr.wideiv = trunc i64 %indvars.iv89 to i32
  %exitcond91 = icmp eq i32 %lftr.wideiv, %179
  br i1 %exitcond91, label %._crit_edge28, label %.preheader

._crit_edge28:                                    ; preds = %268
  store double %267, double* %gpb, align 8, !tbaa !39
  br label %269

; <label>:269                                     ; preds = %._crit_edge28, %257
  %270 = load i32* %119, align 4, !tbaa !35
  %271 = icmp sgt i32 %270, 1
  br i1 %271, label %275, label %272

; <label>:272                                     ; preds = %269
  %273 = load i32* %166, align 4, !tbaa !36
  %274 = icmp sgt i32 %273, 1
  br i1 %274, label %275, label %276

; <label>:275                                     ; preds = %272, %269
  call void @gmx_sumd(i32 1, double* %gpb, %struct.t_commrec* %cr) #7
  br label %276

; <label>:276                                     ; preds = %275, %272
  call void @sum_epot(%struct.t_grpopts* %118, %struct.t_groups* %grps, float* %ener) #7
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 36, i32 16, i1 false) #4
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 36, i32 16, i1 false) #4
  %277 = load i32* %119, align 4, !tbaa !35
  %278 = icmp sgt i32 %277, 1
  br i1 %278, label %282, label %279

; <label>:279                                     ; preds = %276
  %280 = load i32* %166, align 4, !tbaa !36
  %281 = icmp sgt i32 %280, 1
  br i1 %281, label %282, label %283

; <label>:282                                     ; preds = %279, %276
  call void @global_stat(%struct.__sFILE* %log, %struct.t_commrec* %cr, float* %ener, [3 x float]* %68, [3 x float]* %69, %struct.t_grpopts* %118, %struct.t_groups* %grps, %struct.t_nrnb* %mynrnb, %struct.t_nrnb* %nrnb, %struct.t_vcm* %167, float* %terminate) #7
  br label %283

; <label>:283                                     ; preds = %282, %279
  %284 = load float* %145, align 4, !tbaa !19
  %285 = load double* %gpb, align 8, !tbaa !39
  %286 = fcmp ult double %285, 0.000000e+00
  %287 = fcmp ult float %284, %EpotA.133
  %or.cond = and i1 %287, %286
  br i1 %or.cond, label %288, label %290

; <label>:288                                     ; preds = %283
  store double %285, double* %gpa, align 8, !tbaa !39
  %289 = fadd float %b.031, %b.031
  br label %219

; <label>:290                                     ; preds = %283
  %291 = icmp sgt i32 %258, 0
  %292 = zext i1 %291 to i32
  %.pre = load double* %gpa, align 8, !tbaa !39
  %293 = fsub float %EpotA.133, %284
  %294 = fpext float %293 to double
  %295 = fmul double %294, 3.000000e+00
  %296 = fsub float %b.031, %a.032
  %297 = fpext float %296 to double
  %298 = fdiv double %295, %297
  %299 = fadd double %298, %.pre
  %300 = fadd double %299, %285
  %301 = fptrunc double %300 to float
  %302 = fmul float %301, %301
  %303 = fpext float %302 to double
  %304 = fmul double %.pre, %285
  %305 = fsub double %303, %304
  %306 = fptrunc double %305 to float
  %307 = fcmp olt float %306, 0.000000e+00
  br i1 %307, label %308, label %331

; <label>:308                                     ; preds = %290
  %309 = fpext float %306 to double
  %310 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !33
  %311 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %310, i8* getelementptr inbounds ([21 x i8]* @.str9, i64 0, i64 0), double %309) #7
  %312 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !33
  %313 = fpext float %301 to double
  %314 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %312, i8* getelementptr inbounds ([12 x i8]* @.str10, i64 0, i64 0), double %313) #7
  %315 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !33
  %316 = load double* %gpa, align 8, !tbaa !39
  %317 = load double* %gpb, align 8, !tbaa !39
  %318 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %315, i8* getelementptr inbounds ([28 x i8]* @.str11, i64 0, i64 0), double %316, double %317) #7
  %319 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !33
  %320 = fpext float %a.032 to double
  %321 = fpext float %b.031 to double
  %322 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %319, i8* getelementptr inbounds ([24 x i8]* @.str12, i64 0, i64 0), double %320, double %321) #7
  %323 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !33
  %324 = fpext float %EpotA.133 to double
  %325 = fpext float %284 to double
  %326 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %323, i8* getelementptr inbounds ([32 x i8]* @.str13, i64 0, i64 0), double %324, double %325) #7
  %327 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !33
  %328 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %327, i8* getelementptr inbounds ([43 x i8]* @.str14, i64 0, i64 0), double %309) #7
  %329 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !33
  %330 = call i64 @fwrite(i8* getelementptr inbounds ([26 x i8]* @.str15, i64 0, i64 0), i64 25, i64 1, %struct.__sFILE* %329)
  br label %.critedge

; <label>:331                                     ; preds = %290
  %sqrtf = call float @sqrtf(float %306) #6
  %332 = fpext float %b.031 to double
  %333 = fpext float %sqrtf to double
  %334 = fadd double %285, %333
  %335 = fpext float %301 to double
  %336 = fsub double %334, %335
  %337 = fmul double %297, %336
  %338 = fsub double %285, %.pre
  %339 = fmul double %333, 2.000000e+00
  %340 = fadd double %338, %339
  %341 = fdiv double %337, %340
  %342 = fsub double %332, %341
  %343 = fptrunc double %342 to float
  br i1 %162, label %.preheader4, label %._crit_edge54

.preheader4:                                      ; preds = %331, %352
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %352 ], [ %177, %331 ]
  br label %344

; <label>:344                                     ; preds = %344, %.preheader4
  %indvars.iv92 = phi i64 [ 0, %.preheader4 ], [ %indvars.iv.next93, %344 ]
  %345 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv95, i64 %indvars.iv92
  %346 = load float* %345, align 4, !tbaa !19
  %347 = getelementptr inbounds [3 x float]* %15, i64 %indvars.iv95, i64 %indvars.iv92
  %348 = load float* %347, align 4, !tbaa !19
  %349 = fmul float %343, %348
  %350 = fadd float %346, %349
  %351 = getelementptr inbounds [3 x float]* %21, i64 %indvars.iv95, i64 %indvars.iv92
  store float %350, float* %351, align 4, !tbaa !19
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1
  %exitcond94 = icmp eq i64 %indvars.iv.next93, 3
  br i1 %exitcond94, label %352, label %344

; <label>:352                                     ; preds = %344
  %indvars.iv.next96 = add nsw i64 %indvars.iv95, 1
  %353 = icmp slt i64 %indvars.iv.next96, %178
  br i1 %353, label %.preheader4, label %._crit_edge54

._crit_edge54:                                    ; preds = %352, %331
  br i1 %90, label %354, label %358

; <label>:354                                     ; preds = %._crit_edge54
  %355 = load i32* %9, align 4, !tbaa !20
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %356
  call void @construct_dummies(%struct.__sFILE* %log, [3 x float]* %21, %struct.t_nrnb* %357, float 1.000000e+00, [3 x float]* null, %struct.t_idef* %33, %struct.t_graph* %graph, %struct.t_commrec* %cr, [3 x float]* %165, %struct.t_comm_dummies* %dummycomm) #7
  br label %358

; <label>:358                                     ; preds = %354, %._crit_edge54
  %359 = load i32* %9, align 4, !tbaa !20
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %360
  br i1 %101, label %362, label %371

; <label>:362                                     ; preds = %358
  %363 = load i32* %119, align 4, !tbaa !35
  %364 = icmp sgt i32 %363, 1
  br i1 %364, label %368, label %365

; <label>:365                                     ; preds = %362
  %366 = load i32* %166, align 4, !tbaa !36
  %367 = icmp sgt i32 %366, 1
  br label %368

; <label>:368                                     ; preds = %365, %362
  %369 = phi i1 [ true, %362 ], [ %367, %365 ]
  %370 = xor i1 %369, true
  br label %371

; <label>:371                                     ; preds = %368, %358
  %372 = phi i1 [ false, %358 ], [ %370, %368 ]
  %373 = zext i1 %372 to i32
  call void @do_force(%struct.__sFILE* %log, %struct.t_commrec* %cr, %struct.t_commrec* %mcr, %struct.t_parm* %parm, %struct.t_nsborder* %nsb, [3 x float]* %68, [3 x float]* %97, i32 %count.064, %struct.t_nrnb* %361, %struct.t_topology* %top, %struct.t_groups* %grps, [3 x float]* %21, [3 x float]* %buf, [3 x float]* %18, [3 x float]* %buf, %struct.t_mdatoms* %mdatoms, float* %ener, %struct.t_fcdata* %fcd, i32 %373, float %112, %struct.t_graph* %graph, i32 %292, i32 0, %struct.t_forcerec* %fr, float* %8, i32 0) #7
  br i1 %90, label %374, label %378

; <label>:374                                     ; preds = %371
  %375 = load i32* %9, align 4, !tbaa !20
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %376
  call void @spread_dummy_f(%struct.__sFILE* %log, [3 x float]* %21, [3 x float]* %18, %struct.t_nrnb* %377, %struct.t_idef* %33, %struct.t_comm_dummies* %dummycomm, %struct.t_commrec* %cr) #7
  br label %378

; <label>:378                                     ; preds = %374, %371
  call void @sum_epot(%struct.t_grpopts* %118, %struct.t_groups* %grps, float* %ener) #7
  %379 = call fastcc float @f_norm(%struct.t_commrec* %cr, %struct.t_grpopts* %118, %struct.t_mdatoms* %mdatoms, i32 %147, i32 %148, [3 x float]* %18) #8
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 36, i32 16, i1 false) #4
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 36, i32 16, i1 false) #4
  %380 = load i32* %119, align 4, !tbaa !35
  %381 = icmp sgt i32 %380, 1
  br i1 %381, label %385, label %382

; <label>:382                                     ; preds = %378
  %383 = load i32* %166, align 4, !tbaa !36
  %384 = icmp sgt i32 %383, 1
  br i1 %384, label %385, label %386

; <label>:385                                     ; preds = %382, %378
  call void @global_stat(%struct.__sFILE* %log, %struct.t_commrec* %cr, float* %ener, [3 x float]* %68, [3 x float]* %69, %struct.t_grpopts* %118, %struct.t_groups* %grps, %struct.t_nrnb* %mynrnb, %struct.t_nrnb* %nrnb, %struct.t_vcm* %167, float* %terminate) #7
  br label %386

; <label>:386                                     ; preds = %385, %382
  %387 = load float* %145, align 4, !tbaa !19
  br i1 %168, label %391, label %388

; <label>:388                                     ; preds = %386
  %389 = srem i32 %count.064, %7
  %390 = icmp eq i32 %389, 0
  br i1 %390, label %395, label %391

; <label>:391                                     ; preds = %386, %388
  %392 = fmul float %379, %379
  %393 = fmul float %fnorm_old.060, %fnorm_old.060
  %394 = fdiv float %392, %393
  br label %395

; <label>:395                                     ; preds = %388, %391
  %beta.1 = phi float [ %394, %391 ], [ 0.000000e+00, %388 ]
  br i1 %162, label %.lr.ph57, label %._crit_edge58

.lr.ph57:                                         ; preds = %395, %.lr.ph57
  %indvars.iv97 = phi i64 [ %indvars.iv.next98, %.lr.ph57 ], [ %177, %395 ]
  %396 = getelementptr inbounds [3 x float]* %21, i64 %indvars.iv97, i64 0
  %397 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv97, i64 0
  %398 = bitcast float* %396 to i32*
  %399 = load i32* %398, align 4, !tbaa !19
  %400 = bitcast float* %397 to i32*
  store i32 %399, i32* %400, align 4, !tbaa !19
  %401 = getelementptr inbounds [3 x float]* %21, i64 %indvars.iv97, i64 1
  %402 = bitcast float* %401 to i32*
  %403 = load i32* %402, align 4, !tbaa !19
  %404 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv97, i64 1
  %405 = bitcast float* %404 to i32*
  store i32 %403, i32* %405, align 4, !tbaa !19
  %406 = getelementptr inbounds [3 x float]* %21, i64 %indvars.iv97, i64 2
  %407 = bitcast float* %406 to i32*
  %408 = load i32* %407, align 4, !tbaa !19
  %409 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv97, i64 2
  %410 = bitcast float* %409 to i32*
  store i32 %408, i32* %410, align 4, !tbaa !19
  %indvars.iv.next98 = add nsw i64 %indvars.iv97, 1
  %411 = icmp slt i64 %indvars.iv.next98, %178
  br i1 %411, label %.lr.ph57, label %._crit_edge58

._crit_edge58:                                    ; preds = %.lr.ph57, %395
  %412 = load i32* %169, align 4, !tbaa !46
  %413 = load i32* %170, align 4, !tbaa !47
  %414 = load i32* %171, align 4, !tbaa !48
  %415 = call fastcc float @f_max(i32 %412, i32 %413, i32 %414, %struct.t_grpopts* %118, %struct.t_mdatoms* %mdatoms, i32 %147, i32 %148, [3 x float]* %18, i32* %nfmax) #8
  br i1 %101, label %416, label %433

; <label>:416                                     ; preds = %._crit_edge58
  %417 = load i32* %9, align 4, !tbaa !20
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %419, label %433

; <label>:419                                     ; preds = %416
  %420 = load i32* %152, align 4, !tbaa !24
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %422, label %433

; <label>:422                                     ; preds = %419
  %423 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !33
  %424 = fpext float %387 to double
  %425 = fpext float %415 to double
  %426 = load i32* %nfmax, align 4, !tbaa !25
  %427 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %423, i8* getelementptr inbounds ([53 x i8]* @.str16, i64 0, i64 0), i32 %count.064, double %424, double %425, i32 %426) #7
  %428 = load float* %172, align 4, !tbaa !37
  %429 = sitofp i32 %count.064 to float
  %430 = load i32* %63, align 4, !tbaa !29
  %431 = icmp eq i32 %430, 2
  %432 = zext i1 %431 to i32
  call void @upd_mdebin(%struct.t_mdebin* %67, %struct.__sFILE* null, float %428, i32 %count.064, float %429, float* %ener, [3 x float]* %165, [3 x float]* %69, [3 x float]* %68, [3 x float]* %173, [3 x float]* %174, %struct.t_groups* %grps, float* %8, i32 %432) #7
  call void @print_ebin_header(%struct.__sFILE* %log, i32 %count.064, float %429, float %112, float 0.000000e+00) #7
  call void @print_ebin(i32 %fp_ene.0, i32 1, i32 0, i32 0, %struct.__sFILE* %log, i32 %count.064, float %429, i32 0, i32 1, %struct.t_mdebin* %67, %struct.t_fcdata* %fcd, %struct.t_atoms* %32) #7
  br label %433

; <label>:433                                     ; preds = %422, %419, %416, %._crit_edge58
  %434 = load float* %88, align 4, !tbaa !34
  %435 = fcmp olt float %415, %434
  %436 = zext i1 %435 to i32
  %437 = add nuw nsw i32 %count.064, 1
  br i1 %435, label %.critedge, label %180

.critedge:                                        ; preds = %180, %433, %308
  %count.017 = phi i32 [ %count.064, %308 ], [ %437, %433 ], [ %76, %180 ]
  %bDone.014 = phi i32 [ %bDone.062, %308 ], [ %436, %433 ], [ %bDone.062, %180 ]
  %EpotA.3 = phi float [ %EpotA.133, %308 ], [ %387, %433 ], [ %EpotA.063, %180 ]
  %438 = load i32* %9, align 4, !tbaa !20
  %439 = icmp eq i32 %438, 0
  br i1 %439, label %440, label %446

; <label>:440                                     ; preds = %.critedge
  %441 = load i32* %152, align 4, !tbaa !24
  %442 = icmp eq i32 %441, 0
  br i1 %442, label %443, label %446

; <label>:443                                     ; preds = %440
  %444 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !33
  %445 = call i64 @fwrite(i8* getelementptr inbounds ([37 x i8]* @.str17, i64 0, i64 0), i64 36, i64 1, %struct.__sFILE* %444)
  br label %446

; <label>:446                                     ; preds = %443, %440, %.critedge
  %447 = call i8* @ftp2fn(i32 3, i32 %nfile, %struct.t_filenm* %fnm) #7
  %448 = sitofp i32 %count.017 to float
  %449 = load i32* %12, align 4, !tbaa !22
  %450 = call i32 @write_traj(%struct.__sFILE* %log, %struct.t_commrec* %cr, i8* %447, %struct.t_nsborder* %nsb, i32 %count.017, float %448, float %112, %struct.t_nrnb* %nrnb, i32 %449, [3 x float]* %x, [3 x float]* null, [3 x float]* %18, [3 x float]* %165) #7
  %451 = load i32* %9, align 4, !tbaa !20
  %452 = icmp eq i32 %451, 0
  br i1 %452, label %453, label %461

; <label>:453                                     ; preds = %446
  %454 = load i32* %152, align 4, !tbaa !24
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %456, label %461

; <label>:456                                     ; preds = %453
  %457 = call i8* @ftp2fn(i32 12, i32 %nfile, %struct.t_filenm* %fnm) #7
  %458 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 0
  %459 = load i8*** %458, align 8, !tbaa !49
  %460 = load i8** %459, align 8, !tbaa !33
  call void @write_sto_conf(i8* %457, i8* %460, %struct.t_atoms* %32, [3 x float]* %x, [3 x float]* null, [3 x float]* %165) #7
  br label %461

; <label>:461                                     ; preds = %456, %453, %446
  %462 = load i32* %169, align 4, !tbaa !46
  %463 = load i32* %170, align 4, !tbaa !47
  %464 = load i32* %171, align 4, !tbaa !48
  %465 = call fastcc float @f_max(i32 %462, i32 %463, i32 %464, %struct.t_grpopts* %118, %struct.t_mdatoms* %mdatoms, i32 %147, i32 %148, [3 x float]* %18, i32* %nfmax) #8
  %466 = load i32* %9, align 4, !tbaa !20
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %468, label %475

; <label>:468                                     ; preds = %461
  %469 = load i32* %152, align 4, !tbaa !24
  %470 = icmp eq i32 %469, 0
  br i1 %470, label %471, label %475

; <label>:471                                     ; preds = %468
  %472 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !33
  %473 = load float* %88, align 4, !tbaa !34
  call fastcc void @print_converged(%struct.__sFILE* %472, i8* getelementptr inbounds ([20 x i8]* @.str, i64 0, i64 0), float %473, i32 %count.017, i32 %bDone.014, i32 %76, float %EpotA.3, float %465) #8
  %474 = load float* %88, align 4, !tbaa !34
  call fastcc void @print_converged(%struct.__sFILE* %log, i8* getelementptr inbounds ([20 x i8]* @.str, i64 0, i64 0), float %474, i32 %count.017, i32 %bDone.014, i32 %76, float %EpotA.3, float %465) #8
  call void @close_enx(i32 %fp_ene.0) #7
  br label %475

; <label>:475                                     ; preds = %471, %468, %461
  store i32 %count.017, i32* %75, align 4, !tbaa !32
  call void @llvm.lifetime.end(i64 36, i8* %4) #4
  call void @llvm.lifetime.end(i64 36, i8* %3) #4
  call void @llvm.lifetime.end(i64 36, i8* %2) #4
  call void @llvm.lifetime.end(i64 1032, i8* %1) #4
  ret i64 %11
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @init_em(%struct.__sFILE* %log, i8* %title, %struct.t_parm* %parm, float* nocapture %lambda, %struct.t_nrnb* %mynrnb, float* nocapture %mu_tot, float* %box_size, %struct.t_forcerec* nocapture readonly %fr, %struct.t_mdatoms* %mdatoms, %struct.t_topology* %top, %struct.t_nsborder* nocapture readonly %nsb, %struct.t_commrec* %cr, %struct.t_vcm** nocapture %vcm, i32* nocapture %start, i32* nocapture %end) #3 {
  %1 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %log, i8* getelementptr inbounds ([15 x i8]* @.str34, i64 0, i64 0), i8* %title) #7
  %2 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 46
  %3 = load i32* %2, align 4, !tbaa !26
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

; <label>:5                                       ; preds = %0
  %6 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 47
  %7 = load float* %6, align 4, !tbaa !55
  br label %8

; <label>:8                                       ; preds = %0, %5
  %storemerge = phi float [ %7, %5 ], [ 0.000000e+00, %0 ]
  store float %storemerge, float* %lambda, align 4, !tbaa !19
  tail call void @init_nrnb(%struct.t_nrnb* %mynrnb) #7
  store float 0.000000e+00, float* %mu_tot, align 4, !tbaa !19
  %9 = getelementptr inbounds float* %mu_tot, i64 1
  store float 0.000000e+00, float* %9, align 4, !tbaa !19
  %10 = getelementptr inbounds float* %mu_tot, i64 2
  store float 0.000000e+00, float* %10, align 4, !tbaa !19
  %11 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 0
  %12 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 48
  %13 = load [3 x float]** %12, align 8, !tbaa !56
  tail call void @calc_shifts([3 x float]* %11, float* %box_size, [3 x float]* %13) #7
  %14 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %15 = load i32* %14, align 4, !tbaa !20
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 8, i64 %16
  %18 = load i32* %17, align 4, !tbaa !25
  store i32 %18, i32* %start, align 4, !tbaa !25
  %19 = load i32* %14, align 4, !tbaa !20
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %20
  %22 = load i32* %21, align 4, !tbaa !25
  %23 = add nsw i32 %22, %18
  store i32 %23, i32* %end, align 4, !tbaa !25
  %24 = load float* %lambda, align 4, !tbaa !19
  tail call void @init_mdatoms(%struct.t_mdatoms* %mdatoms, float %24, i32 1) #7
  %25 = load i32* %start, align 4, !tbaa !25
  %26 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 0
  %27 = load i32* %26, align 4, !tbaa !57
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 7, i64 %28
  %30 = load i32* %29, align 4, !tbaa !25
  %31 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 7
  %32 = load i32* %31, align 4, !tbaa !58
  %33 = tail call %struct.t_vcm* @init_vcm(%struct.__sFILE* %log, %struct.t_topology* %top, %struct.t_commrec* %cr, %struct.t_mdatoms* %mdatoms, i32 %25, i32 %30, i32 %32) #7
  store %struct.t_vcm* %33, %struct.t_vcm** %vcm, align 8, !tbaa !33
  ret void
}

; Function Attrs: optsize
declare i64 @print_date_and_time(%struct.__sFILE*, i32, i8*) #1

; Function Attrs: optsize
declare i8* @save_calloc(i8*, i8*, i32, i32, i32) #1

; Function Attrs: optsize
declare void @set_pot_bools(%struct.t_inputrec*, %struct.t_topology*, i32*, i32*, i32*, i32*) #1

; Function Attrs: optsize
declare i32 @open_enx(i8*, i8*) #1

; Function Attrs: optsize
declare i8* @ftp2fn(i32, i32, %struct.t_filenm*) #1

; Function Attrs: optsize
declare %struct.t_mdebin* @init_mdebin(i32, %struct.t_groups*, %struct.t_atoms*, %struct.t_idef*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.t_commrec*) #1

; Function Attrs: optsize
declare void @do_pbc_first(%struct.__sFILE*, %struct.t_parm*, float*, %struct.t_forcerec*, %struct.t_graph*, [3 x float]*) #1

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @sp_header(%struct.__sFILE* nocapture %out, i8* %minimizer, float %ftol, i32 %nsteps) #3 {
  %1 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([5 x i8]* @.str35, i64 0, i64 0), i8* %minimizer) #7
  %2 = fpext float %ftol to double
  %3 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([31 x i8]* @.str36, i64 0, i64 0), double %2) #7
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %out, i8* getelementptr inbounds ([29 x i8]* @.str37, i64 0, i64 0), i32 %nsteps) #7
  ret void
}

; Function Attrs: optsize
declare void @construct_dummies(%struct.__sFILE*, [3 x float]*, %struct.t_nrnb*, float, [3 x float]*, %struct.t_idef*, %struct.t_graph*, %struct.t_commrec*, [3 x float]*, %struct.t_comm_dummies*) #1

; Function Attrs: optsize
declare void @do_force(%struct.__sFILE*, %struct.t_commrec*, %struct.t_commrec*, %struct.t_parm*, %struct.t_nsborder*, [3 x float]*, [3 x float]*, i32, %struct.t_nrnb*, %struct.t_topology*, %struct.t_groups*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_mdatoms*, float*, %struct.t_fcdata*, i32, float, %struct.t_graph*, i32, i32, %struct.t_forcerec*, float*, i32) #1

; Function Attrs: optsize
declare void @_where(i8*, i32) #1

; Function Attrs: optsize
declare void @spread_dummy_f(%struct.__sFILE*, [3 x float]*, [3 x float]*, %struct.t_nrnb*, %struct.t_idef*, %struct.t_comm_dummies*, %struct.t_commrec*) #1

; Function Attrs: optsize
declare void @sum_epot(%struct.t_grpopts*, %struct.t_groups*, float*) #1

; Function Attrs: optsize
declare void @global_stat(%struct.__sFILE*, %struct.t_commrec*, float*, [3 x float]*, [3 x float]*, %struct.t_grpopts*, %struct.t_groups*, %struct.t_nrnb*, %struct.t_nrnb*, %struct.t_vcm*, float*) #1

; Function Attrs: optsize
declare void @upd_mdebin(%struct.t_mdebin*, %struct.__sFILE*, float, i32, float, float*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, %struct.t_groups*, float*, i32) #1

; Function Attrs: optsize
declare void @print_ebin_header(%struct.__sFILE*, i32, float, float, float) #1

; Function Attrs: optsize
declare void @print_ebin(i32, i32, i32, i32, %struct.__sFILE*, i32, float, i32, i32, %struct.t_mdebin*, %struct.t_fcdata*, %struct.t_atoms*) #1

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc float @f_norm(%struct.t_commrec* %cr, %struct.t_grpopts* nocapture readonly %opts, %struct.t_mdatoms* nocapture readonly %mdatoms, i32 %start, i32 %end, [3 x float]* nocapture readonly %grad) #3 {
  %fnorm2 = alloca double, align 8
  store double 0.000000e+00, double* %fnorm2, align 8, !tbaa !39
  %1 = icmp slt i32 %start, %end
  br i1 %1, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %0
  %2 = getelementptr inbounds %struct.t_mdatoms* %mdatoms, i64 0, i32 17
  %3 = load i16** %2, align 8, !tbaa !41
  %4 = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 8
  %5 = load [3 x i32]** %4, align 8, !tbaa !59
  %6 = sext i32 %start to i64
  %7 = add i32 %end, -1
  br label %8

; <label>:8                                       ; preds = %26, %.lr.ph
  %9 = phi double [ 0.000000e+00, %.lr.ph ], [ %25, %26 ]
  %indvars.iv3 = phi i64 [ %6, %.lr.ph ], [ %indvars.iv.next4, %26 ]
  %10 = getelementptr inbounds i16* %3, i64 %indvars.iv3
  %11 = load i16* %10, align 2, !tbaa !43
  %12 = zext i16 %11 to i64
  br label %13

; <label>:13                                      ; preds = %24, %8
  %14 = phi double [ %9, %8 ], [ %25, %24 ]
  %indvars.iv = phi i64 [ 0, %8 ], [ %indvars.iv.next, %24 ]
  %15 = getelementptr inbounds [3 x i32]* %5, i64 %12, i64 %indvars.iv
  %16 = load i32* %15, align 4, !tbaa !25
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %24

; <label>:18                                      ; preds = %13
  %19 = getelementptr inbounds [3 x float]* %grad, i64 %indvars.iv3, i64 %indvars.iv
  %20 = load float* %19, align 4, !tbaa !19
  %21 = fmul float %20, %20
  %22 = fpext float %21 to double
  %23 = fadd double %14, %22
  store double %23, double* %fnorm2, align 8, !tbaa !39
  br label %24

; <label>:24                                      ; preds = %13, %18
  %25 = phi double [ %14, %13 ], [ %23, %18 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %26, label %13

; <label>:26                                      ; preds = %24
  %indvars.iv.next4 = add nsw i64 %indvars.iv3, 1
  %lftr.wideiv = trunc i64 %indvars.iv3 to i32
  %exitcond5 = icmp eq i32 %lftr.wideiv, %7
  br i1 %exitcond5, label %._crit_edge, label %8

._crit_edge:                                      ; preds = %26, %0
  %27 = phi double [ 0.000000e+00, %0 ], [ %25, %26 ]
  %28 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %29 = load i32* %28, align 4, !tbaa !35
  %30 = icmp sgt i32 %29, 1
  br i1 %30, label %35, label %31

; <label>:31                                      ; preds = %._crit_edge
  %32 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %33 = load i32* %32, align 4, !tbaa !36
  %34 = icmp sgt i32 %33, 1
  br i1 %34, label %35, label %36

; <label>:35                                      ; preds = %31, %._crit_edge
  call void @gmx_sumd(i32 1, double* %fnorm2, %struct.t_commrec* %cr) #7
  %.pre = load double* %fnorm2, align 8, !tbaa !39
  br label %36

; <label>:36                                      ; preds = %35, %31
  %37 = phi double [ %.pre, %35 ], [ %27, %31 ]
  %38 = call double @sqrt(double %37) #9
  %39 = fptrunc double %38 to float
  ret float %39
}

; Function Attrs: nounwind optsize
declare i32 @fprintf(%struct.__sFILE* nocapture, i8* nocapture readonly, ...) #5

; Function Attrs: optsize
declare void @gmx_sumd(i32, double*, %struct.t_commrec*) #1

; Function Attrs: nounwind optsize readnone
declare double @sqrt(double) #6

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc float @f_max(i32 %left, i32 %right, i32 %nnodes, %struct.t_grpopts* nocapture readonly %opts, %struct.t_mdatoms* nocapture readonly %mdatoms, i32 %start, i32 %end, [3 x float]* nocapture readonly %grad, i32* %nfmax) #3 {
  %fmax2 = alloca float, align 4
  %fmax2_0 = alloca float, align 4
  %nfm = alloca float, align 4
  store float 0.000000e+00, float* %fmax2, align 4, !tbaa !19
  store float -1.000000e+00, float* %nfm, align 4, !tbaa !19
  %1 = icmp slt i32 %start, %end
  br i1 %1, label %.lr.ph5, label %._crit_edge

.lr.ph5:                                          ; preds = %0
  %2 = getelementptr inbounds %struct.t_mdatoms* %mdatoms, i64 0, i32 17
  %3 = load i16** %2, align 8, !tbaa !41
  %4 = getelementptr inbounds %struct.t_grpopts* %opts, i64 0, i32 8
  %5 = load [3 x i32]** %4, align 8, !tbaa !59
  %6 = sext i32 %start to i64
  %7 = add i32 %end, -1
  br label %8

; <label>:8                                       ; preds = %29, %.lr.ph5
  %9 = phi float [ -1.000000e+00, %.lr.ph5 ], [ %30, %29 ]
  %10 = phi float [ 0.000000e+00, %.lr.ph5 ], [ %31, %29 ]
  %indvars.iv6 = phi i64 [ %6, %.lr.ph5 ], [ %indvars.iv.next7, %29 ]
  %11 = getelementptr inbounds i16* %3, i64 %indvars.iv6
  %12 = load i16* %11, align 2, !tbaa !43
  %13 = zext i16 %12 to i64
  br label %14

; <label>:14                                      ; preds = %23, %8
  %indvars.iv = phi i64 [ 0, %8 ], [ %indvars.iv.next, %23 ]
  %fam.03 = phi float [ 0.000000e+00, %8 ], [ %fam.1, %23 ]
  %15 = getelementptr inbounds [3 x i32]* %5, i64 %13, i64 %indvars.iv
  %16 = load i32* %15, align 4, !tbaa !25
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %23

; <label>:18                                      ; preds = %14
  %19 = getelementptr inbounds [3 x float]* %grad, i64 %indvars.iv6, i64 %indvars.iv
  %20 = load float* %19, align 4, !tbaa !19
  %21 = fmul float %20, %20
  %22 = fadd float %fam.03, %21
  br label %23

; <label>:23                                      ; preds = %14, %18
  %fam.1 = phi float [ %fam.03, %14 ], [ %22, %18 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %24, label %14

; <label>:24                                      ; preds = %23
  %25 = fcmp ogt float %fam.1, %10
  br i1 %25, label %26, label %._crit_edge9

._crit_edge9:                                     ; preds = %24
  %.pre = trunc i64 %indvars.iv6 to i32
  br label %29

; <label>:26                                      ; preds = %24
  store float %fam.1, float* %fmax2, align 4, !tbaa !19
  %27 = trunc i64 %indvars.iv6 to i32
  %28 = sitofp i32 %27 to float
  store float %28, float* %nfm, align 4, !tbaa !19
  br label %29

; <label>:29                                      ; preds = %._crit_edge9, %26
  %lftr.wideiv.pre-phi = phi i32 [ %.pre, %._crit_edge9 ], [ %27, %26 ]
  %30 = phi float [ %9, %._crit_edge9 ], [ %28, %26 ]
  %31 = phi float [ %10, %._crit_edge9 ], [ %fam.1, %26 ]
  %indvars.iv.next7 = add nsw i64 %indvars.iv6, 1
  %exitcond8 = icmp eq i32 %lftr.wideiv.pre-phi, %7
  br i1 %exitcond8, label %._crit_edge, label %8

._crit_edge:                                      ; preds = %29, %0
  %32 = phi float [ 0.000000e+00, %0 ], [ %31, %29 ]
  %33 = phi float [ -1.000000e+00, %0 ], [ %30, %29 ]
  %34 = fptosi float %33 to i32
  store i32 %34, i32* %nfmax, align 4, !tbaa !25
  %35 = icmp sgt i32 %nnodes, 1
  br i1 %35, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %._crit_edge
  %36 = add nsw i32 %nnodes, -1
  %37 = bitcast float* %fmax2 to i8*
  %38 = bitcast float* %fmax2_0 to i8*
  %39 = bitcast i32* %nfmax to i8*
  %40 = bitcast float* %nfm to i8*
  br label %41

; <label>:41                                      ; preds = %.lr.ph, %48
  %i.11 = phi i32 [ 0, %.lr.ph ], [ %50, %48 ]
  call void @gmx_tx(i32 %left, i8* %37, i32 4) #7
  call void @gmx_rx(i32 %right, i8* %38, i32 4) #7
  call void @gmx_wait(i32 %left, i32 %right) #7
  call void @gmx_tx(i32 %left, i8* %39, i32 4) #7
  call void @gmx_rx(i32 %right, i8* %40, i32 4) #7
  call void @gmx_wait(i32 %left, i32 %right) #7
  %42 = load float* %fmax2_0, align 4, !tbaa !19
  %43 = load float* %fmax2, align 4, !tbaa !19
  %44 = fcmp ogt float %42, %43
  br i1 %44, label %45, label %48

; <label>:45                                      ; preds = %41
  store float %42, float* %fmax2, align 4, !tbaa !19
  %46 = load float* %nfm, align 4, !tbaa !19
  %47 = fptosi float %46 to i32
  store i32 %47, i32* %nfmax, align 4, !tbaa !25
  br label %48

; <label>:48                                      ; preds = %41, %45
  %49 = phi float [ %43, %41 ], [ %42, %45 ]
  %50 = add nuw nsw i32 %i.11, 1
  %51 = icmp slt i32 %50, %36
  br i1 %51, label %41, label %.loopexit

.loopexit:                                        ; preds = %48, %._crit_edge
  %52 = phi float [ %32, %._crit_edge ], [ %49, %48 ]
  %sqrtf = call float @sqrtf(float %52) #6
  ret float %sqrtf
}

; Function Attrs: optsize
declare i32 @write_traj(%struct.__sFILE*, %struct.t_commrec*, i8*, %struct.t_nsborder*, i32, float, float, %struct.t_nrnb*, i32, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*) #1

; Function Attrs: optsize
declare void @write_sto_conf(i8*, i8*, %struct.t_atoms*, [3 x float]*, [3 x float]*, [3 x float]*) #1

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @print_converged(%struct.__sFILE* nocapture %fp, i8* %alg, float %ftol, i32 %count, i32 %bDone, i32 %nsteps, float %epot, float %fmax) #3 {
  %1 = icmp eq i32 %bDone, 0
  br i1 %1, label %5, label %2

; <label>:2                                       ; preds = %0
  %3 = fpext float %ftol to double
  %4 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([33 x i8]* @.str38, i64 0, i64 0), i8* %alg, double %3, i32 %count) #7
  br label %9

; <label>:5                                       ; preds = %0
  %6 = icmp slt i32 %count, %nsteps
  %7 = select i1 %6, i32 %count, i32 %nsteps
  %8 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([34 x i8]* @.str39, i64 0, i64 0), i8* %alg, i32 %7) #7
  br label %9

; <label>:9                                       ; preds = %5, %2
  %10 = fpext float %epot to double
  %11 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([30 x i8]* @.str40, i64 0, i64 0), double %10) #7
  %12 = fpext float %fmax to double
  %13 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([23 x i8]* @.str41, i64 0, i64 0), double %12) #7
  ret void
}

; Function Attrs: optsize
declare void @close_enx(i32) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

; Function Attrs: nounwind optsize ssp uwtable
define i64 @do_steep(%struct.__sFILE* %log, i32 %nfile, %struct.t_filenm* %fnm, %struct.t_parm* %parm, %struct.t_topology* %top, %struct.t_groups* %grps, %struct.t_nsborder* %nsb, [3 x float]* %x, [3 x float]* nocapture readnone %grad, [3 x float]* %buf, %struct.t_mdatoms* %mdatoms, [3 x float]* nocapture readnone %ekin, float* %ener, %struct.t_fcdata* %fcd, %struct.t_nrnb* %nrnb, i32 %bVerbose, i32 %bDummies, %struct.t_comm_dummies* %dummycomm, %struct.t_commrec* %cr, %struct.t_commrec* %mcr, %struct.t_graph* %graph, %struct.t_forcerec* %fr, float* %box_size) #3 {
  %lambda = alloca float, align 4
  %pos = alloca [2 x [3 x float]*], align 16
  %force = alloca [2 x [3 x float]*], align 16
  %Fmax = alloca [2 x float], align 4
  %Epot = alloca [2 x float], align 4
  %dvdlambda = alloca float, align 4
  %vcm = alloca %struct.t_vcm*, align 8
  %mynrnb = alloca %struct.t_nrnb, align 8
  %bLR = alloca i32, align 4
  %bLJLR = alloca i32, align 4
  %bBHAM = alloca i32, align 4
  %b14 = alloca i32, align 4
  %force_vir = alloca [3 x [3 x float]], align 16
  %shake_vir = alloca [3 x [3 x float]], align 16
  %pme_vir = alloca [3 x [3 x float]], align 16
  %mu_tot = alloca [3 x float], align 4
  %nfmax = alloca i32, align 4
  %start = alloca i32, align 4
  %end = alloca i32, align 4
  %terminate = alloca float, align 4
  %1 = bitcast %struct.t_nrnb* %mynrnb to i8*
  call void @llvm.lifetime.start(i64 1032, i8* %1) #4
  %2 = bitcast [3 x [3 x float]]* %force_vir to i8*
  call void @llvm.lifetime.start(i64 36, i8* %2) #4
  %3 = bitcast [3 x [3 x float]]* %shake_vir to i8*
  call void @llvm.lifetime.start(i64 36, i8* %3) #4
  %4 = bitcast [3 x [3 x float]]* %pme_vir to i8*
  call void @llvm.lifetime.start(i64 36, i8* %4) #4
  store float 0.000000e+00, float* %terminate, align 4, !tbaa !19
  %5 = getelementptr inbounds [3 x float]* %mu_tot, i64 0, i64 0
  call fastcc void @init_em(%struct.__sFILE* %log, i8* getelementptr inbounds ([18 x i8]* @.str18, i64 0, i64 0), %struct.t_parm* %parm, float* %lambda, %struct.t_nrnb* %mynrnb, float* %5, float* %box_size, %struct.t_forcerec* %fr, %struct.t_mdatoms* %mdatoms, %struct.t_topology* %top, %struct.t_nsborder* %nsb, %struct.t_commrec* %cr, %struct.t_vcm** %vcm, i32* %start, i32* %end) #8
  %6 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %7 = load i32* %6, align 4, !tbaa !20
  %8 = call i64 @print_date_and_time(%struct.__sFILE* %log, i32 %7, i8* getelementptr inbounds ([26 x i8]* @.str19, i64 0, i64 0)) #7
  %9 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 3
  br label %10

; <label>:10                                      ; preds = %10, %0
  %indvars.iv49 = phi i64 [ 0, %0 ], [ %indvars.iv.next50, %10 ]
  %11 = load i32* %9, align 4, !tbaa !22
  %12 = call i8* @save_calloc(i8* getelementptr inbounds ([7 x i8]* @.str20, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str3, i64 0, i64 0), i32 571, i32 %11, i32 12) #7
  %13 = getelementptr inbounds [2 x [3 x float]*]* %pos, i64 0, i64 %indvars.iv49
  %14 = bitcast [3 x float]** %13 to i8**
  store i8* %12, i8** %14, align 8, !tbaa !33
  %15 = load i32* %9, align 4, !tbaa !22
  %16 = call i8* @save_calloc(i8* getelementptr inbounds ([9 x i8]* @.str21, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str3, i64 0, i64 0), i32 572, i32 %15, i32 12) #7
  %17 = getelementptr inbounds [2 x [3 x float]*]* %force, i64 0, i64 %indvars.iv49
  %18 = bitcast [3 x float]** %17 to i8**
  store i8* %16, i8** %18, align 8, !tbaa !33
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  %exitcond51 = icmp eq i64 %indvars.iv.next50, 2
  br i1 %exitcond51, label %19, label %10

; <label>:19                                      ; preds = %10
  %20 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0
  call void @set_pot_bools(%struct.t_inputrec* %20, %struct.t_topology* %top, i32* %bLR, i32* %bLJLR, i32* %bBHAM, i32* %b14) #7
  %21 = load i32* %6, align 4, !tbaa !20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %30

; <label>:23                                      ; preds = %19
  %24 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  %25 = load i32* %24, align 4, !tbaa !24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

; <label>:27                                      ; preds = %23
  %28 = call i8* @ftp2fn(i32 8, i32 %nfile, %struct.t_filenm* %fnm) #7
  %29 = call i32 @open_enx(i8* %28, i8* getelementptr inbounds ([2 x i8]* @.str6, i64 0, i64 0)) #7
  br label %30

; <label>:30                                      ; preds = %19, %23, %27
  %fp_ene.0 = phi i32 [ %29, %27 ], [ -1, %23 ], [ -1, %19 ]
  %31 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2
  %32 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1
  %33 = load i32* %bLR, align 4, !tbaa !25
  %34 = load i32* %bLJLR, align 4, !tbaa !25
  %35 = load i32* %bBHAM, align 4, !tbaa !25
  %36 = load i32* %b14, align 4, !tbaa !25
  %37 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 46
  %38 = load i32* %37, align 4, !tbaa !26
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 28
  %42 = load i32* %41, align 4, !tbaa !27
  %43 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 43
  %44 = load i32* %43, align 4, !tbaa !28
  %45 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 32, i64 1, i64 0
  %46 = load float* %45, align 4, !tbaa !19
  %fabsf = call float @fabsf(float %46) #6
  %47 = fpext float %fabsf to double
  %48 = fcmp ogt double %47, 1.200000e-38
  br i1 %48, label %59, label %49

; <label>:49                                      ; preds = %30
  %50 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 32, i64 2, i64 0
  %51 = load float* %50, align 4, !tbaa !19
  %fabsf1 = call float @fabsf(float %51) #6
  %52 = fpext float %fabsf1 to double
  %53 = fcmp ogt double %52, 1.200000e-38
  br i1 %53, label %59, label %54

; <label>:54                                      ; preds = %49
  %55 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 32, i64 2, i64 1
  %56 = load float* %55, align 4, !tbaa !19
  %fabsf2 = call float @fabsf(float %56) #6
  %57 = fpext float %fabsf2 to double
  %58 = fcmp ogt double %57, 1.200000e-38
  br label %59

; <label>:59                                      ; preds = %54, %49, %30
  %60 = phi i1 [ true, %49 ], [ true, %30 ], [ %58, %54 ]
  %61 = zext i1 %60 to i32
  %62 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 27
  %63 = load i32* %62, align 4, !tbaa !29
  %64 = icmp eq i32 %63, 2
  %65 = zext i1 %64 to i32
  %66 = call %struct.t_mdebin* @init_mdebin(i32 %fp_ene.0, %struct.t_groups* %grps, %struct.t_atoms* %31, %struct.t_idef* %32, i32 %33, i32 %34, i32 %35, i32 %36, i32 %40, i32 %42, i32 %44, i32 %61, i32 %65, %struct.t_commrec* %cr) #7
  %67 = getelementptr inbounds [3 x [3 x float]]* %force_vir, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 36, i32 16, i1 false) #4
  %68 = getelementptr inbounds [3 x [3 x float]]* %shake_vir, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 36, i32 16, i1 false) #4
  %69 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 0
  %70 = load i32* %69, align 4, !tbaa !30
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %73, label %72

; <label>:72                                      ; preds = %59
  call void @do_pbc_first(%struct.__sFILE* %log, %struct.t_parm* %parm, float* %box_size, %struct.t_forcerec* %fr, %struct.t_graph* %graph, [3 x float]* %x) #7
  br label %73

; <label>:73                                      ; preds = %59, %72
  %74 = load %struct.__sFILE** @stdlog, align 8, !tbaa !33
  %75 = load i32* %start, align 4, !tbaa !25
  %76 = load i32* %end, align 4, !tbaa !25
  %77 = call i32 @init_constraints(%struct.__sFILE* %74, %struct.t_topology* %top, %struct.t_inputrec* %20, %struct.t_mdatoms* %mdatoms, i32 %75, i32 %76, i32 0, %struct.t_commrec* %cr) #7
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

; <label>:79                                      ; preds = %73
  %80 = load i32* %9, align 4, !tbaa !22
  %81 = call i8* @save_calloc(i8* getelementptr inbounds ([4 x i8]* @.str22, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str3, i64 0, i64 0), i32 603, i32 %80, i32 12) #7
  %82 = bitcast i8* %81 to [3 x float]*
  br label %83

; <label>:83                                      ; preds = %79, %73
  %xcf.0 = phi [3 x float]* [ %82, %79 ], [ null, %73 ]
  %84 = load i32* %9, align 4, !tbaa !22
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %.lr.ph25, label %._crit_edge26

.lr.ph25:                                         ; preds = %83
  %86 = getelementptr inbounds [2 x [3 x float]*]* %pos, i64 0, i64 0
  %87 = load [3 x float]** %86, align 16, !tbaa !33
  %88 = getelementptr inbounds [2 x [3 x float]*]* %pos, i64 0, i64 1
  %89 = load [3 x float]** %88, align 8, !tbaa !33
  %90 = sext i32 %84 to i64
  br label %91

; <label>:91                                      ; preds = %.lr.ph25, %91
  %indvars.iv47 = phi i64 [ 0, %.lr.ph25 ], [ %indvars.iv.next48, %91 ]
  %92 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv47, i64 0
  %93 = getelementptr inbounds [3 x float]* %87, i64 %indvars.iv47, i64 0
  %94 = bitcast float* %92 to i32*
  %95 = load i32* %94, align 4, !tbaa !19
  %96 = bitcast float* %93 to i32*
  store i32 %95, i32* %96, align 4, !tbaa !19
  %97 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv47, i64 1
  %98 = bitcast float* %97 to i32*
  %99 = load i32* %98, align 4, !tbaa !19
  %100 = getelementptr inbounds [3 x float]* %87, i64 %indvars.iv47, i64 1
  %101 = bitcast float* %100 to i32*
  store i32 %99, i32* %101, align 4, !tbaa !19
  %102 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv47, i64 2
  %103 = bitcast float* %102 to i32*
  %104 = load i32* %103, align 4, !tbaa !19
  %105 = getelementptr inbounds [3 x float]* %87, i64 %indvars.iv47, i64 2
  %106 = bitcast float* %105 to i32*
  store i32 %104, i32* %106, align 4, !tbaa !19
  %107 = getelementptr inbounds [3 x float]* %89, i64 %indvars.iv47, i64 0
  %108 = load i32* %94, align 4, !tbaa !19
  %109 = bitcast float* %107 to i32*
  store i32 %108, i32* %109, align 4, !tbaa !19
  %110 = load i32* %98, align 4, !tbaa !19
  %111 = getelementptr inbounds [3 x float]* %89, i64 %indvars.iv47, i64 1
  %112 = bitcast float* %111 to i32*
  store i32 %110, i32* %112, align 4, !tbaa !19
  %113 = load i32* %103, align 4, !tbaa !19
  %114 = getelementptr inbounds [3 x float]* %89, i64 %indvars.iv47, i64 2
  %115 = bitcast float* %114 to i32*
  store i32 %113, i32* %115, align 4, !tbaa !19
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  %116 = icmp slt i64 %indvars.iv.next48, %90
  br i1 %116, label %91, label %._crit_edge26

._crit_edge26:                                    ; preds = %91, %83
  %117 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 59
  %118 = load float* %117, align 4, !tbaa !44
  %119 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 1
  %120 = load i32* %119, align 4, !tbaa !32
  %121 = load i32* %6, align 4, !tbaa !20
  %122 = icmp eq i32 %121, 0
  %123 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  br i1 %122, label %124, label %._crit_edge58

; <label>:124                                     ; preds = %._crit_edge26
  %125 = load i32* %123, align 4, !tbaa !24
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %._crit_edge58

; <label>:127                                     ; preds = %124
  %128 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !33
  %129 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 60
  %130 = load float* %129, align 4, !tbaa !34
  call fastcc void @sp_header(%struct.__sFILE* %128, i8* getelementptr inbounds ([18 x i8]* @.str18, i64 0, i64 0), float %130, i32 %120) #8
  br label %._crit_edge58

._crit_edge58:                                    ; preds = %._crit_edge26, %127, %124
  %131 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 60
  %132 = load float* %131, align 4, !tbaa !34
  call fastcc void @sp_header(%struct.__sFILE* %log, i8* getelementptr inbounds ([18 x i8]* @.str18, i64 0, i64 0), float %132, i32 %120) #8
  %133 = icmp sgt i32 %120, 0
  %134 = icmp slt i32 %75, %76
  %135 = getelementptr inbounds %struct.t_mdatoms* %mdatoms, i64 0, i32 17
  %136 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80, i32 8
  %137 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 0
  %138 = load float* %lambda, align 4, !tbaa !19
  %139 = icmp ne i32 %bDummies, 0
  %140 = getelementptr inbounds [3 x [3 x float]]* %pme_vir, i64 0, i64 0
  %141 = icmp ne i32 %bVerbose, 0
  %142 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %143 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %144 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 3
  %145 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80
  %146 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 2
  %147 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 3
  %148 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 1
  %149 = load %struct.t_vcm** %vcm, align 8, !tbaa !33
  %150 = getelementptr inbounds float* %ener, i64 37
  %151 = getelementptr inbounds %struct.t_mdatoms* %mdatoms, i64 0, i32 0
  %152 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 3, i64 0
  %153 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 4, i64 0
  %154 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 54
  %155 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 58
  %156 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 11
  %157 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 9
  %158 = sext i32 %75 to i64
  %159 = add i32 %76, -1
  br label %160

; <label>:160                                     ; preds = %._crit_edge58, %377
  %stepsize.022 = phi float [ 0.000000e+00, %._crit_edge58 ], [ %370, %377 ]
  %steps_accepted.021 = phi i32 [ 0, %._crit_edge58 ], [ %steps_accepted.1, %377 ]
  %Min.020 = phi i32 [ 0, %._crit_edge58 ], [ %Min.1, %377 ]
  %count.019 = phi i32 [ 0, %._crit_edge58 ], [ %378, %377 ]
  %bDone.018 = phi i32 [ 0, %._crit_edge58 ], [ %bDone.1, %377 ]
  %ustep.017 = phi float [ %118, %._crit_edge58 ], [ %ustep.1, %377 ]
  %161 = icmp eq i32 %count.019, %120
  %. = and i1 %133, %161
  %162 = zext i1 %. to i32
  %163 = icmp sgt i32 %count.019, 0
  %brmerge.demorgan = and i1 %163, %134
  br i1 %brmerge.demorgan, label %.lr.ph11, label %.loopexit6

.lr.ph11:                                         ; preds = %160
  %164 = load i16** %135, align 8, !tbaa !41
  %165 = load [3 x i32]** %136, align 8, !tbaa !42
  %166 = sext i32 %Min.020 to i64
  %167 = getelementptr inbounds [2 x [3 x float]*]* %pos, i64 0, i64 %166
  %168 = load [3 x float]** %167, align 8, !tbaa !33
  %169 = getelementptr inbounds [2 x [3 x float]*]* %force, i64 0, i64 %166
  %170 = sub nsw i32 1, %Min.020
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [2 x [3 x float]*]* %pos, i64 0, i64 %171
  br label %173

; <label>:173                                     ; preds = %195, %.lr.ph11
  %indvars.iv30 = phi i64 [ %158, %.lr.ph11 ], [ %indvars.iv.next31, %195 ]
  %174 = getelementptr inbounds i16* %164, i64 %indvars.iv30
  %175 = load i16* %174, align 2, !tbaa !43
  %176 = zext i16 %175 to i64
  br label %177

; <label>:177                                     ; preds = %194, %173
  %indvars.iv28 = phi i64 [ 0, %173 ], [ %indvars.iv.next29, %194 ]
  %178 = getelementptr inbounds [3 x i32]* %165, i64 %176, i64 %indvars.iv28
  %179 = load i32* %178, align 4, !tbaa !25
  %180 = icmp eq i32 %179, 0
  %181 = getelementptr inbounds [3 x float]* %168, i64 %indvars.iv30, i64 %indvars.iv28
  %182 = load float* %181, align 4, !tbaa !19
  br i1 %180, label %186, label %183

; <label>:183                                     ; preds = %177
  %184 = load [3 x float]** %172, align 8, !tbaa !33
  %185 = getelementptr inbounds [3 x float]* %184, i64 %indvars.iv30, i64 %indvars.iv28
  store float %182, float* %185, align 4, !tbaa !19
  br label %194

; <label>:186                                     ; preds = %177
  %187 = load [3 x float]** %169, align 8, !tbaa !33
  %188 = getelementptr inbounds [3 x float]* %187, i64 %indvars.iv30, i64 %indvars.iv28
  %189 = load float* %188, align 4, !tbaa !19
  %190 = fmul float %stepsize.022, %189
  %191 = fadd float %182, %190
  %192 = load [3 x float]** %172, align 8, !tbaa !33
  %193 = getelementptr inbounds [3 x float]* %192, i64 %indvars.iv30, i64 %indvars.iv28
  store float %191, float* %193, align 4, !tbaa !19
  br label %194

; <label>:194                                     ; preds = %183, %186
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  %exitcond = icmp eq i64 %indvars.iv.next29, 3
  br i1 %exitcond, label %195, label %177

; <label>:195                                     ; preds = %194
  %indvars.iv.next31 = add nsw i64 %indvars.iv30, 1
  %lftr.wideiv = trunc i64 %indvars.iv30 to i32
  %exitcond32 = icmp eq i32 %lftr.wideiv, %159
  br i1 %exitcond32, label %.loopexit6, label %173

.loopexit6:                                       ; preds = %195, %160
  br i1 %78, label %196, label %206

; <label>:196                                     ; preds = %.loopexit6
  store float 0.000000e+00, float* %dvdlambda, align 4, !tbaa !19
  %197 = load %struct.__sFILE** @stdlog, align 8, !tbaa !33
  %198 = sext i32 %Min.020 to i64
  %199 = getelementptr inbounds [2 x [3 x float]*]* %pos, i64 0, i64 %198
  %200 = load [3 x float]** %199, align 8, !tbaa !33
  %201 = sub nsw i32 1, %Min.020
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [2 x [3 x float]*]* %pos, i64 0, i64 %202
  %204 = load [3 x float]** %203, align 8, !tbaa !33
  %205 = call i32 @constrain(%struct.__sFILE* %197, %struct.t_topology* %top, %struct.t_inputrec* %20, i32 %count.019, %struct.t_mdatoms* %mdatoms, i32 %75, i32 %76, [3 x float]* %200, [3 x float]* %204, [3 x float]* null, [3 x float]* %137, float %138, float* %dvdlambda, %struct.t_nrnb* %nrnb, i32 1) #7
  br label %206

; <label>:206                                     ; preds = %196, %.loopexit6
  %207 = sub nsw i32 1, %Min.020
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [2 x [3 x float]*]* %pos, i64 0, i64 %208
  br i1 %139, label %210, label %._crit_edge57

; <label>:210                                     ; preds = %206
  %211 = load [3 x float]** %209, align 8, !tbaa !33
  %212 = load i32* %6, align 4, !tbaa !20
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %213
  call void @construct_dummies(%struct.__sFILE* %log, [3 x float]* %211, %struct.t_nrnb* %214, float 1.000000e+00, [3 x float]* null, %struct.t_idef* %32, %struct.t_graph* %graph, %struct.t_commrec* %cr, [3 x float]* %137, %struct.t_comm_dummies* %dummycomm) #7
  br label %._crit_edge57

._crit_edge57:                                    ; preds = %206, %210
  %215 = load i32* %6, align 4, !tbaa !20
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %216
  %218 = load [3 x float]** %209, align 8, !tbaa !33
  %219 = getelementptr inbounds [2 x [3 x float]*]* %force, i64 0, i64 %208
  %220 = load [3 x float]** %219, align 8, !tbaa !33
  br i1 %141, label %221, label %230

; <label>:221                                     ; preds = %._crit_edge57
  %222 = load i32* %142, align 4, !tbaa !35
  %223 = icmp sgt i32 %222, 1
  br i1 %223, label %227, label %224

; <label>:224                                     ; preds = %221
  %225 = load i32* %143, align 4, !tbaa !36
  %226 = icmp sgt i32 %225, 1
  br label %227

; <label>:227                                     ; preds = %224, %221
  %228 = phi i1 [ true, %221 ], [ %226, %224 ]
  %229 = xor i1 %228, true
  br label %230

; <label>:230                                     ; preds = %227, %._crit_edge57
  %231 = phi i1 [ false, %._crit_edge57 ], [ %229, %227 ]
  %232 = zext i1 %231 to i32
  %233 = load i32* %144, align 4, !tbaa !45
  %234 = icmp sgt i32 %233, 0
  %235 = icmp eq i32 %count.019, 0
  %.3 = or i1 %235, %234
  %236 = zext i1 %.3 to i32
  call void @do_force(%struct.__sFILE* %log, %struct.t_commrec* %cr, %struct.t_commrec* %mcr, %struct.t_parm* %parm, %struct.t_nsborder* %nsb, [3 x float]* %67, [3 x float]* %140, i32 %count.019, %struct.t_nrnb* %217, %struct.t_topology* %top, %struct.t_groups* %grps, [3 x float]* %218, [3 x float]* %buf, [3 x float]* %220, [3 x float]* %buf, %struct.t_mdatoms* %mdatoms, float* %ener, %struct.t_fcdata* %fcd, i32 %232, float %138, %struct.t_graph* %graph, i32 %236, i32 0, %struct.t_forcerec* %fr, float* %5, i32 0) #7
  br i1 %139, label %237, label %241

; <label>:237                                     ; preds = %230
  %238 = load i32* %6, align 4, !tbaa !20
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.t_nrnb* %nrnb, i64 %239
  call void @spread_dummy_f(%struct.__sFILE* %log, [3 x float]* %218, [3 x float]* %220, %struct.t_nrnb* %240, %struct.t_idef* %32, %struct.t_comm_dummies* %dummycomm, %struct.t_commrec* %cr) #7
  br label %241

; <label>:241                                     ; preds = %237, %230
  call void @sum_epot(%struct.t_grpopts* %145, %struct.t_groups* %grps, float* %ener) #7
  %242 = load i32* %6, align 4, !tbaa !20
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %244, label %249

; <label>:244                                     ; preds = %241
  %245 = load i32* %123, align 4, !tbaa !24
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %249

; <label>:247                                     ; preds = %244
  %248 = sitofp i32 %count.019 to float
  call void @print_ebin_header(%struct.__sFILE* %log, i32 %count.019, float %248, float %138, float 0.000000e+00) #7
  br label %249

; <label>:249                                     ; preds = %247, %244, %241
  br i1 %78, label %250, label %.loopexit

; <label>:250                                     ; preds = %249
  %251 = load i32* %146, align 4, !tbaa !46
  %252 = load i32* %147, align 4, !tbaa !47
  %253 = load i32* %148, align 4, !tbaa !48
  %254 = call fastcc float @f_max(i32 %251, i32 %252, i32 %253, %struct.t_grpopts* %145, %struct.t_mdatoms* %mdatoms, i32 %75, i32 %76, [3 x float]* %220, i32* %nfmax) #8
  %255 = fdiv float %ustep.017, %254
  br i1 %134, label %.preheader5, label %._crit_edge14.thread

._crit_edge14.thread:                             ; preds = %250
  store float 0.000000e+00, float* %dvdlambda, align 4, !tbaa !19
  %256 = load %struct.__sFILE** @stdlog, align 8, !tbaa !33
  %257 = call i32 @constrain(%struct.__sFILE* %256, %struct.t_topology* %top, %struct.t_inputrec* %20, i32 %count.019, %struct.t_mdatoms* %mdatoms, i32 %75, i32 %76, [3 x float]* %218, [3 x float]* %xcf.0, [3 x float]* null, [3 x float]* %137, float %138, float* %dvdlambda, %struct.t_nrnb* %nrnb, i32 1) #7
  br label %.loopexit

.preheader5:                                      ; preds = %250, %266
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %266 ], [ %158, %250 ]
  br label %258

; <label>:258                                     ; preds = %258, %.preheader5
  %indvars.iv33 = phi i64 [ 0, %.preheader5 ], [ %indvars.iv.next34, %258 ]
  %259 = getelementptr inbounds [3 x float]* %218, i64 %indvars.iv36, i64 %indvars.iv33
  %260 = load float* %259, align 4, !tbaa !19
  %261 = getelementptr inbounds [3 x float]* %220, i64 %indvars.iv36, i64 %indvars.iv33
  %262 = load float* %261, align 4, !tbaa !19
  %263 = fmul float %255, %262
  %264 = fadd float %260, %263
  %265 = getelementptr inbounds [3 x float]* %xcf.0, i64 %indvars.iv36, i64 %indvars.iv33
  store float %264, float* %265, align 4, !tbaa !19
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  %exitcond35 = icmp eq i64 %indvars.iv.next34, 3
  br i1 %exitcond35, label %266, label %258

; <label>:266                                     ; preds = %258
  %indvars.iv.next37 = add nsw i64 %indvars.iv36, 1
  %lftr.wideiv38 = trunc i64 %indvars.iv36 to i32
  %exitcond39 = icmp eq i32 %lftr.wideiv38, %159
  br i1 %exitcond39, label %._crit_edge14, label %.preheader5

._crit_edge14:                                    ; preds = %266
  store float 0.000000e+00, float* %dvdlambda, align 4, !tbaa !19
  %267 = load %struct.__sFILE** @stdlog, align 8, !tbaa !33
  %268 = call i32 @constrain(%struct.__sFILE* %267, %struct.t_topology* %top, %struct.t_inputrec* %20, i32 %count.019, %struct.t_mdatoms* %mdatoms, i32 %75, i32 %76, [3 x float]* %218, [3 x float]* %xcf.0, [3 x float]* null, [3 x float]* %137, float %138, float* %dvdlambda, %struct.t_nrnb* %nrnb, i32 1) #7
  br i1 %134, label %.preheader4, label %.loopexit

.preheader4:                                      ; preds = %._crit_edge14, %277
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %277 ], [ %158, %._crit_edge14 ]
  br label %269

; <label>:269                                     ; preds = %269, %.preheader4
  %indvars.iv40 = phi i64 [ 0, %.preheader4 ], [ %indvars.iv.next41, %269 ]
  %270 = getelementptr inbounds [3 x float]* %xcf.0, i64 %indvars.iv43, i64 %indvars.iv40
  %271 = load float* %270, align 4, !tbaa !19
  %272 = getelementptr inbounds [3 x float]* %218, i64 %indvars.iv43, i64 %indvars.iv40
  %273 = load float* %272, align 4, !tbaa !19
  %274 = fsub float %271, %273
  %275 = fdiv float %274, %255
  %276 = getelementptr inbounds [3 x float]* %220, i64 %indvars.iv43, i64 %indvars.iv40
  store float %275, float* %276, align 4, !tbaa !19
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  %exitcond42 = icmp eq i64 %indvars.iv.next41, 3
  br i1 %exitcond42, label %277, label %269

; <label>:277                                     ; preds = %269
  %indvars.iv.next44 = add nsw i64 %indvars.iv43, 1
  %lftr.wideiv45 = trunc i64 %indvars.iv43 to i32
  %exitcond46 = icmp eq i32 %lftr.wideiv45, %159
  br i1 %exitcond46, label %.loopexit, label %.preheader4

.loopexit:                                        ; preds = %277, %._crit_edge14, %._crit_edge14.thread, %249
  call void @llvm.memset.p0i8.i64(i8* %2, i8 0, i64 36, i32 16, i1 false) #4
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 36, i32 16, i1 false) #4
  %278 = load i32* %142, align 4, !tbaa !35
  %279 = icmp sgt i32 %278, 1
  br i1 %279, label %283, label %280

; <label>:280                                     ; preds = %.loopexit
  %281 = load i32* %143, align 4, !tbaa !36
  %282 = icmp sgt i32 %281, 1
  br i1 %282, label %283, label %284

; <label>:283                                     ; preds = %280, %.loopexit
  call void @global_stat(%struct.__sFILE* %log, %struct.t_commrec* %cr, float* %ener, [3 x float]* %67, [3 x float]* %68, %struct.t_grpopts* %145, %struct.t_groups* %grps, %struct.t_nrnb* %mynrnb, %struct.t_nrnb* %nrnb, %struct.t_vcm* %149, float* %terminate) #7
  br label %284

; <label>:284                                     ; preds = %283, %280
  %285 = load i32* %146, align 4, !tbaa !46
  %286 = load i32* %147, align 4, !tbaa !47
  %287 = load i32* %148, align 4, !tbaa !48
  %288 = call fastcc float @f_max(i32 %285, i32 %286, i32 %287, %struct.t_grpopts* %145, %struct.t_mdatoms* %mdatoms, i32 %75, i32 %76, [3 x float]* %220, i32* %nfmax) #8
  %289 = getelementptr inbounds [2 x float]* %Fmax, i64 0, i64 %208
  store float %288, float* %289, align 4, !tbaa !19
  %290 = load float* %150, align 4, !tbaa !19
  %291 = getelementptr inbounds [2 x float]* %Epot, i64 0, i64 %208
  store float %290, float* %291, align 4, !tbaa !19
  br i1 %235, label %292, label %296

; <label>:292                                     ; preds = %284
  %293 = fadd float %290, 1.000000e+00
  %294 = sext i32 %Min.020 to i64
  %295 = getelementptr inbounds [2 x float]* %Epot, i64 0, i64 %294
  store float %293, float* %295, align 4, !tbaa !19
  br label %296

; <label>:296                                     ; preds = %292, %284
  %297 = load i32* %6, align 4, !tbaa !20
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %299, label %332

; <label>:299                                     ; preds = %296
  %300 = load i32* %123, align 4, !tbaa !24
  %301 = icmp eq i32 %300, 0
  br i1 %301, label %302, label %332

; <label>:302                                     ; preds = %299
  br i1 %141, label %303, label %._crit_edge52

._crit_edge52:                                    ; preds = %302
  %.pre = load float* %291, align 4, !tbaa !19
  %.pre53 = sext i32 %Min.020 to i64
  %.phi.trans.insert = getelementptr inbounds [2 x float]* %Epot, i64 0, i64 %.pre53
  %.pre54 = load float* %.phi.trans.insert, align 4, !tbaa !19
  br label %317

; <label>:303                                     ; preds = %302
  %304 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !33
  %305 = fpext float %ustep.017 to double
  %306 = load float* %291, align 4, !tbaa !19
  %307 = fpext float %306 to double
  %308 = fpext float %288 to double
  %309 = load i32* %nfmax, align 4, !tbaa !25
  %310 = add nsw i32 %309, 1
  %311 = sext i32 %Min.020 to i64
  %312 = getelementptr inbounds [2 x float]* %Epot, i64 0, i64 %311
  %313 = load float* %312, align 4, !tbaa !19
  %314 = fcmp olt float %306, %313
  %315 = select i1 %314, i32 10, i32 13
  %316 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %304, i8* getelementptr inbounds ([64 x i8]* @.str23, i64 0, i64 0), i32 %count.019, double %305, double %307, double %308, i32 %310, i32 %315) #7
  br label %317

; <label>:317                                     ; preds = %._crit_edge52, %303
  %318 = phi float [ %.pre54, %._crit_edge52 ], [ %313, %303 ]
  %319 = phi float [ %.pre, %._crit_edge52 ], [ %306, %303 ]
  %320 = fcmp olt float %319, %318
  br i1 %320, label %321, label %332

; <label>:321                                     ; preds = %317
  %322 = load float* %151, align 4, !tbaa !37
  %323 = sitofp i32 %count.019 to float
  %324 = load i32* %62, align 4, !tbaa !29
  %325 = icmp eq i32 %324, 2
  %326 = zext i1 %325 to i32
  call void @upd_mdebin(%struct.t_mdebin* %66, %struct.__sFILE* null, float %322, i32 %count.019, float %323, float* %ener, [3 x float]* %137, [3 x float]* %68, [3 x float]* %67, [3 x float]* %152, [3 x float]* %153, %struct.t_groups* %grps, float* %5, i32 %326) #7
  %327 = load i32* %154, align 4, !tbaa !60
  %328 = call i32 @do_per_step(i32 %steps_accepted.021, i32 %327) #7
  %329 = load i32* %155, align 4, !tbaa !61
  %330 = call i32 @do_per_step(i32 %steps_accepted.021, i32 %329) #7
  call void @print_ebin(i32 %fp_ene.0, i32 1, i32 %328, i32 %330, %struct.__sFILE* %log, i32 %count.019, float %323, i32 0, i32 1, %struct.t_mdebin* %66, %struct.t_fcdata* %fcd, %struct.t_atoms* %31) #7
  %331 = call i32 @fflush(%struct.__sFILE* %log) #7
  br label %332

; <label>:332                                     ; preds = %317, %321, %299, %296
  br i1 %235, label %339, label %333

; <label>:333                                     ; preds = %332
  %334 = load float* %291, align 4, !tbaa !19
  %335 = sext i32 %Min.020 to i64
  %336 = getelementptr inbounds [2 x float]* %Epot, i64 0, i64 %335
  %337 = load float* %336, align 4, !tbaa !19
  %338 = fcmp olt float %334, %337
  br i1 %338, label %339, label %360

; <label>:339                                     ; preds = %333, %332
  %340 = add nsw i32 %steps_accepted.021, 1
  %341 = load i32* %156, align 4, !tbaa !62
  %342 = call i32 @do_per_step(i32 %340, i32 %341) #7
  %343 = load i32* %157, align 4, !tbaa !63
  %344 = call i32 @do_per_step(i32 %340, i32 %343) #7
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %352, label %346

; <label>:346                                     ; preds = %339
  %347 = icmp eq i32 %342, 0
  %.68 = select i1 %347, [3 x float]* null, [3 x float]* %220
  %348 = call i8* @ftp2fn(i32 3, i32 %nfile, %struct.t_filenm* %fnm) #7
  %349 = sitofp i32 %count.019 to float
  %350 = load i32* %9, align 4, !tbaa !22
  %351 = call i32 @write_traj(%struct.__sFILE* %log, %struct.t_commrec* %cr, i8* %348, %struct.t_nsborder* %nsb, i32 %count.019, float %349, float %138, %struct.t_nrnb* %nrnb, i32 %350, [3 x float]* %218, [3 x float]* null, [3 x float]* %.68, [3 x float]* %137) #7
  br label %352

; <label>:352                                     ; preds = %339, %346
  %353 = load float* %131, align 4, !tbaa !34
  %354 = fcmp olt float %288, %353
  %355 = zext i1 %354 to i32
  br i1 %163, label %356, label %362

; <label>:356                                     ; preds = %352
  %357 = fpext float %ustep.017 to double
  %358 = fmul double %357, 1.200000e+00
  %359 = fptrunc double %358 to float
  br label %362

; <label>:360                                     ; preds = %333
  %361 = fmul float %ustep.017, 5.000000e-01
  %.phi.trans.insert55 = getelementptr inbounds [2 x [3 x float]*]* %force, i64 0, i64 %335
  %.pre56 = load [3 x float]** %.phi.trans.insert55, align 8, !tbaa !33
  br label %362

; <label>:362                                     ; preds = %352, %356, %360
  %363 = phi [3 x float]* [ %220, %356 ], [ %220, %352 ], [ %.pre56, %360 ]
  %ustep.1 = phi float [ %359, %356 ], [ %ustep.017, %352 ], [ %361, %360 ]
  %bDone.1 = phi i32 [ %355, %356 ], [ %355, %352 ], [ %bDone.018, %360 ]
  %Min.1 = phi i32 [ %207, %356 ], [ %207, %352 ], [ %Min.020, %360 ]
  %steps_accepted.1 = phi i32 [ %340, %356 ], [ %340, %352 ], [ %steps_accepted.021, %360 ]
  %364 = load i32* %146, align 4, !tbaa !46
  %365 = load i32* %147, align 4, !tbaa !47
  %366 = load i32* %148, align 4, !tbaa !48
  %367 = sext i32 %Min.1 to i64
  %368 = getelementptr inbounds [2 x [3 x float]*]* %force, i64 0, i64 %367
  %369 = call fastcc float @f_max(i32 %364, i32 %365, i32 %366, %struct.t_grpopts* %145, %struct.t_mdatoms* %mdatoms, i32 %75, i32 %76, [3 x float]* %363, i32* %nfmax) #8
  %370 = fdiv float %ustep.1, %369
  %371 = fpext float %ustep.1 to double
  %372 = fcmp olt double %371, 1.000000e-06
  br i1 %372, label %373, label %377

; <label>:373                                     ; preds = %362
  %374 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !33
  %375 = load float* %131, align 4, !tbaa !34
  call fastcc void @warn_step(%struct.__sFILE* %374, float %ustep.1, float %375, i32 %77) #8
  %376 = load float* %131, align 4, !tbaa !34
  call fastcc void @warn_step(%struct.__sFILE* %log, float %ustep.1, float %376, i32 %77) #8
  br label %377

; <label>:377                                     ; preds = %373, %362
  %bAbort.1 = phi i32 [ 1, %373 ], [ %162, %362 ]
  %378 = add nuw nsw i32 %count.019, 1
  %379 = or i32 %bAbort.1, %bDone.1
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %160, label %.critedge

.critedge:                                        ; preds = %377
  %381 = load i32* %6, align 4, !tbaa !20
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %383, label %389

; <label>:383                                     ; preds = %.critedge
  %384 = load i32* %123, align 4, !tbaa !24
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %386, label %389

; <label>:386                                     ; preds = %383
  %387 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !33
  %388 = call i64 @fwrite(i8* getelementptr inbounds ([37 x i8]* @.str17, i64 0, i64 0), i64 36, i64 1, %struct.__sFILE* %387)
  br label %389

; <label>:389                                     ; preds = %386, %383, %.critedge
  %390 = getelementptr inbounds [2 x [3 x float]*]* %pos, i64 0, i64 %367
  %391 = load [3 x float]** %390, align 8, !tbaa !33
  %392 = load [3 x float]** %368, align 8, !tbaa !33
  %393 = call i8* @ftp2fn(i32 3, i32 %nfile, %struct.t_filenm* %fnm) #7
  %394 = sitofp i32 %378 to float
  %395 = load i32* %9, align 4, !tbaa !22
  %396 = call i32 @write_traj(%struct.__sFILE* %log, %struct.t_commrec* %cr, i8* %393, %struct.t_nsborder* %nsb, i32 %378, float %394, float %138, %struct.t_nrnb* %nrnb, i32 %395, [3 x float]* %391, [3 x float]* null, [3 x float]* %392, [3 x float]* %137) #7
  %397 = load i32* %6, align 4, !tbaa !20
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %399, label %.preheader

; <label>:399                                     ; preds = %389
  %400 = load i32* %123, align 4, !tbaa !24
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %402, label %.preheader

; <label>:402                                     ; preds = %399
  %403 = call i8* @ftp2fn(i32 12, i32 %nfile, %struct.t_filenm* %fnm) #7
  %404 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 0
  %405 = load i8*** %404, align 8, !tbaa !49
  %406 = load i8** %405, align 8, !tbaa !33
  call void @write_sto_conf(i8* %403, i8* %406, %struct.t_atoms* %31, [3 x float]* %391, [3 x float]* null, [3 x float]* %137) #7
  %407 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !33
  %408 = load float* %131, align 4, !tbaa !34
  %409 = getelementptr inbounds [2 x float]* %Epot, i64 0, i64 %367
  %410 = load float* %409, align 4, !tbaa !19
  %411 = getelementptr inbounds [2 x float]* %Fmax, i64 0, i64 %367
  %412 = load float* %411, align 4, !tbaa !19
  call fastcc void @print_converged(%struct.__sFILE* %407, i8* getelementptr inbounds ([18 x i8]* @.str18, i64 0, i64 0), float %408, i32 %378, i32 %bDone.1, i32 %120, float %410, float %412) #8
  %413 = load float* %131, align 4, !tbaa !34
  call fastcc void @print_converged(%struct.__sFILE* %log, i8* getelementptr inbounds ([18 x i8]* @.str18, i64 0, i64 0), float %413, i32 %378, i32 %bDone.1, i32 %120, float %410, float %412) #8
  call void @close_enx(i32 %fp_ene.0) #7
  br label %.preheader

.preheader:                                       ; preds = %402, %399, %389
  %414 = load i32* %9, align 4, !tbaa !22
  %415 = icmp sgt i32 %414, 0
  br i1 %415, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %416 = sext i32 %414 to i64
  br label %417

; <label>:417                                     ; preds = %.lr.ph, %417
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %417 ]
  %418 = getelementptr inbounds [3 x float]* %391, i64 %indvars.iv, i64 0
  %419 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 0
  %420 = bitcast float* %418 to i32*
  %421 = load i32* %420, align 4, !tbaa !19
  %422 = bitcast float* %419 to i32*
  store i32 %421, i32* %422, align 4, !tbaa !19
  %423 = getelementptr inbounds [3 x float]* %391, i64 %indvars.iv, i64 1
  %424 = bitcast float* %423 to i32*
  %425 = load i32* %424, align 4, !tbaa !19
  %426 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 1
  %427 = bitcast float* %426 to i32*
  store i32 %425, i32* %427, align 4, !tbaa !19
  %428 = getelementptr inbounds [3 x float]* %391, i64 %indvars.iv, i64 2
  %429 = bitcast float* %428 to i32*
  %430 = load i32* %429, align 4, !tbaa !19
  %431 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv, i64 2
  %432 = bitcast float* %431 to i32*
  store i32 %430, i32* %432, align 4, !tbaa !19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %433 = icmp slt i64 %indvars.iv.next, %416
  br i1 %433, label %417, label %._crit_edge

._crit_edge:                                      ; preds = %417, %.preheader
  store i32 %378, i32* %119, align 4, !tbaa !32
  call void @llvm.lifetime.end(i64 36, i8* %4) #4
  call void @llvm.lifetime.end(i64 36, i8* %3) #4
  call void @llvm.lifetime.end(i64 36, i8* %2) #4
  call void @llvm.lifetime.end(i64 1032, i8* %1) #4
  ret i64 %8
}

; Function Attrs: optsize
declare i32 @init_constraints(%struct.__sFILE*, %struct.t_topology*, %struct.t_inputrec*, %struct.t_mdatoms*, i32, i32, i32, %struct.t_commrec*) #1

; Function Attrs: optsize
declare i32 @constrain(%struct.__sFILE*, %struct.t_topology*, %struct.t_inputrec*, i32, %struct.t_mdatoms*, i32, i32, [3 x float]*, [3 x float]*, [3 x float]*, [3 x float]*, float, float*, %struct.t_nrnb*, i32) #1

; Function Attrs: optsize
declare i32 @do_per_step(i32, i32) #1

; Function Attrs: nounwind optsize
declare i32 @fflush(%struct.__sFILE* nocapture) #5

; Function Attrs: nounwind optsize ssp uwtable
define internal fastcc void @warn_step(%struct.__sFILE* nocapture %fp, float %ustep, float %ftol, i32 %bConstrain) #3 {
  %1 = fpext float %ustep to double
  %2 = fpext float %ftol to double
  %3 = tail call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %fp, i8* getelementptr inbounds ([100 x i8]* @.str42, i64 0, i64 0), double %1, double %2) #7
  %4 = icmp eq i32 %bConstrain, 0
  br i1 %4, label %7, label %5

; <label>:5                                       ; preds = %0
  %6 = tail call i64 @fwrite(i8* getelementptr inbounds ([127 x i8]* @.str43, i64 0, i64 0), i64 126, i64 1, %struct.__sFILE* %fp)
  br label %7

; <label>:7                                       ; preds = %0, %5
  ret void
}

; Function Attrs: nounwind optsize ssp uwtable
define i64 @do_nm(%struct.__sFILE* %log, %struct.t_commrec* %cr, i32 %nfile, %struct.t_filenm* %fnm, i32 %bVerbose, i32 %bCompact, i32 %stepout, %struct.t_parm* %parm, %struct.t_groups* %grps, %struct.t_topology* %top, float* %ener, %struct.t_fcdata* %fcd, [3 x float]* %x, [3 x float]* nocapture readnone %vold, [3 x float]* %v, [3 x float]* nocapture readnone %vt, [3 x float]* %f, [3 x float]* %buf, %struct.t_mdatoms* %mdatoms, %struct.t_nsborder* %nsb, %struct.t_nrnb* %nrnb, %struct.t_graph* %graph, %struct.t_edsamyn* nocapture readnone %edyn, %struct.t_forcerec* %fr, float* %box_size) #3 {
  %bLR = alloca i32, align 4
  %bLJLR = alloca i32, align 4
  %bBHAM = alloca i32, align 4
  %b14 = alloca i32, align 4
  %force_vir = alloca [3 x [3 x float]], align 16
  %pme_vir = alloca [3 x [3 x float]], align 16
  %mynrnb = alloca %struct.t_nrnb, align 8
  %nfmax = alloca i32, align 4
  %mu_tot = alloca [3 x float], align 4
  %1 = bitcast [3 x [3 x float]]* %force_vir to i8*
  call void @llvm.lifetime.start(i64 36, i8* %1) #4
  %2 = bitcast [3 x [3 x float]]* %pme_vir to i8*
  call void @llvm.lifetime.start(i64 36, i8* %2) #4
  %3 = bitcast %struct.t_nrnb* %mynrnb to i8*
  call void @llvm.lifetime.start(i64 1032, i8* %3) #4
  %4 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 2
  %5 = getelementptr inbounds %struct.t_atoms* %4, i64 0, i32 0
  %6 = load i32* %5, align 4, !tbaa !64
  %7 = tail call i8* @save_calloc(i8* getelementptr inbounds ([5 x i8]* @.str24, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8]* @.str3, i64 0, i64 0), i32 841, i32 %6, i32 12) #7
  %8 = bitcast i8* %7 to [3 x float]*
  %9 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0
  %10 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 14
  %11 = load float* %10, align 4, !tbaa !65
  %12 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 47
  %13 = load float* %12, align 4, !tbaa !55
  call void @init_nrnb(%struct.t_nrnb* %mynrnb) #7
  %14 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 0
  %15 = load i32* %14, align 4, !tbaa !30
  %16 = icmp ne i32 %15, 1
  br i1 %16, label %17, label %22

; <label>:17                                      ; preds = %0
  %18 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 0
  %19 = getelementptr inbounds %struct.t_forcerec* %fr, i64 0, i32 48
  %20 = load [3 x float]** %19, align 8, !tbaa !56
  call void @calc_shifts([3 x float]* %18, float* %box_size, [3 x float]* %20) #7
  %21 = call i64 @fwrite(i8* getelementptr inbounds ([25 x i8]* @.str25, i64 0, i64 0), i64 24, i64 1, %struct.__sFILE* %log)
  call void @mk_mshift(%struct.__sFILE* %log, %struct.t_graph* %graph, [3 x float]* %18, [3 x float]* %x) #7
  call void @shift_self(%struct.t_graph* %graph, [3 x float]* %18, [3 x float]* %x) #7
  br label %22

; <label>:22                                      ; preds = %17, %0
  call void @set_pot_bools(%struct.t_inputrec* %9, %struct.t_topology* %top, i32* %bLR, i32* %bLJLR, i32* %bBHAM, i32* %b14) #7
  %23 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 1
  %24 = load i32* %bLR, align 4, !tbaa !25
  %25 = load i32* %bLJLR, align 4, !tbaa !25
  %26 = load i32* %bBHAM, align 4, !tbaa !25
  %27 = load i32* %b14, align 4, !tbaa !25
  %28 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 46
  %29 = load i32* %28, align 4, !tbaa !26
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 28
  %33 = load i32* %32, align 4, !tbaa !27
  %34 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 43
  %35 = load i32* %34, align 4, !tbaa !28
  %36 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 32, i64 1, i64 0
  %37 = load float* %36, align 4, !tbaa !19
  %fabsf = call float @fabsf(float %37) #6
  %38 = fpext float %fabsf to double
  %39 = fcmp ogt double %38, 1.200000e-38
  br i1 %39, label %50, label %40

; <label>:40                                      ; preds = %22
  %41 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 32, i64 2, i64 0
  %42 = load float* %41, align 4, !tbaa !19
  %fabsf2 = call float @fabsf(float %42) #6
  %43 = fpext float %fabsf2 to double
  %44 = fcmp ogt double %43, 1.200000e-38
  br i1 %44, label %50, label %45

; <label>:45                                      ; preds = %40
  %46 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 32, i64 2, i64 1
  %47 = load float* %46, align 4, !tbaa !19
  %fabsf3 = call float @fabsf(float %47) #6
  %48 = fpext float %fabsf3 to double
  %49 = fcmp ogt double %48, 1.200000e-38
  br label %50

; <label>:50                                      ; preds = %45, %40, %22
  %51 = phi i1 [ true, %40 ], [ true, %22 ], [ %49, %45 ]
  %52 = zext i1 %51 to i32
  %53 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 27
  %54 = load i32* %53, align 4, !tbaa !29
  %55 = icmp eq i32 %54, 2
  %56 = zext i1 %55 to i32
  %57 = call %struct.t_mdebin* @init_mdebin(i32 -1, %struct.t_groups* %grps, %struct.t_atoms* %4, %struct.t_idef* %23, i32 %24, i32 %25, i32 %26, i32 %27, i32 %31, i32 %33, i32 %35, i32 %52, i32 %56, %struct.t_commrec* %cr) #7
  %58 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 80
  %59 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 5, i64 0
  %60 = call float @sum_ekin(%struct.t_grpopts* %58, %struct.t_groups* %grps, [3 x float]* %59, i32 0) #7
  %61 = getelementptr inbounds float* %ener, i64 40
  store float %60, float* %61, align 4, !tbaa !19
  %62 = load i32* %53, align 4, !tbaa !29
  switch i32 %62, label %69 [
    i32 1, label %63
    i32 2, label %66
  ]

; <label>:63                                      ; preds = %50
  %64 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 15
  %65 = load float* %64, align 4, !tbaa !66
  call void @berendsen_tcoupl(%struct.t_grpopts* %58, %struct.t_groups* %grps, float %65, float %13) #7
  br label %69

; <label>:66                                      ; preds = %50
  %67 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 15
  %68 = load float* %67, align 4, !tbaa !66
  call void @nosehoover_tcoupl(%struct.t_grpopts* %58, %struct.t_groups* %grps, float %68, float %13) #7
  br label %69

; <label>:69                                      ; preds = %50, %66, %63
  call void @_where(i8* getelementptr inbounds ([68 x i8]* @.str3, i64 0, i64 0), i32 883) #7
  %70 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 0
  %71 = load i32* %70, align 4, !tbaa !20
  %72 = call i64 @print_date_and_time(%struct.__sFILE* %log, i32 %71, i8* getelementptr inbounds ([14 x i8]* @.str26, i64 0, i64 0)) #7
  %73 = load i32* %70, align 4, !tbaa !20
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %86

; <label>:75                                      ; preds = %69
  %76 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  %77 = load i32* %76, align 4, !tbaa !24
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %86

; <label>:79                                      ; preds = %75
  %80 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !33
  %81 = getelementptr inbounds %struct.t_topology* %top, i64 0, i32 0
  %82 = load i8*** %81, align 8, !tbaa !49
  %83 = load i8** %82, align 8, !tbaa !33
  %84 = load i32* %5, align 4, !tbaa !64
  %85 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %80, i8* getelementptr inbounds ([32 x i8]* @.str27, i64 0, i64 0), i8* %83, i32 %84) #7
  br label %86

; <label>:86                                      ; preds = %79, %75, %69
  %87 = getelementptr inbounds [3 x [3 x float]]* %force_vir, i64 0, i64 0
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 36, i32 16, i1 false) #4
  %88 = getelementptr inbounds [3 x [3 x float]]* %pme_vir, i64 0, i64 0
  %89 = icmp ne i32 %bVerbose, 0
  br i1 %89, label %90, label %97

; <label>:90                                      ; preds = %86
  %91 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %92 = load i32* %91, align 4, !tbaa !35
  %93 = icmp sgt i32 %92, 1
  br i1 %93, label %97, label %94

; <label>:94                                      ; preds = %90
  %95 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %96 = load i32* %95, align 4, !tbaa !36
  %phitmp = icmp slt i32 %96, 2
  br label %97

; <label>:97                                      ; preds = %90, %94, %86
  %98 = phi i1 [ false, %86 ], [ false, %90 ], [ %phitmp, %94 ]
  %99 = zext i1 %98 to i32
  %100 = getelementptr inbounds [3 x float]* %mu_tot, i64 0, i64 0
  call void @do_force(%struct.__sFILE* %log, %struct.t_commrec* %cr, %struct.t_commrec* null, %struct.t_parm* %parm, %struct.t_nsborder* %nsb, [3 x float]* %87, [3 x float]* %88, i32 0, %struct.t_nrnb* %mynrnb, %struct.t_topology* %top, %struct.t_groups* %grps, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f, [3 x float]* %buf, %struct.t_mdatoms* %mdatoms, float* %ener, %struct.t_fcdata* %fcd, i32 %99, float %13, %struct.t_graph* %graph, i32 1, i32 0, %struct.t_forcerec* %fr, float* %100, i32 0) #7
  br i1 %16, label %101, label %103

; <label>:101                                     ; preds = %97
  %102 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 0
  call void @unshift_self(%struct.t_graph* %graph, [3 x float]* %102, [3 x float]* %x) #7
  br label %103

; <label>:103                                     ; preds = %101, %97
  %104 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 2
  %105 = load i32* %104, align 4, !tbaa !46
  %106 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 3
  %107 = load i32* %106, align 4, !tbaa !47
  %108 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 1
  %109 = load i32* %108, align 4, !tbaa !48
  %110 = load i32* %5, align 4, !tbaa !64
  %111 = call fastcc float @f_max(i32 %105, i32 %107, i32 %109, %struct.t_grpopts* %58, %struct.t_mdatoms* %mdatoms, i32 0, i32 %110, [3 x float]* %f, i32* %nfmax) #8
  %112 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !33
  %113 = fpext float %111 to double
  %114 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %112, i8* getelementptr inbounds ([22 x i8]* @.str28, i64 0, i64 0), double %113) #7
  %115 = fcmp ogt double %113, 1.000000e-03
  br i1 %115, label %116, label %125

; <label>:116                                     ; preds = %103
  %117 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !33
  %118 = call i64 @fwrite(i8* getelementptr inbounds ([43 x i8]* @.str29, i64 0, i64 0), i64 42, i64 1, %struct.__sFILE* %117)
  %119 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !33
  %120 = call i64 @fwrite(i8* getelementptr inbounds ([41 x i8]* @.str30, i64 0, i64 0), i64 40, i64 1, %struct.__sFILE* %119)
  %121 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !33
  %122 = call i64 @fwrite(i8* getelementptr inbounds ([45 x i8]* @.str31, i64 0, i64 0), i64 44, i64 1, %struct.__sFILE* %121)
  %123 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !33
  %124 = call i64 @fwrite(i8* getelementptr inbounds ([45 x i8]* @.str32, i64 0, i64 0), i64 44, i64 1, %struct.__sFILE* %123)
  br label %125

; <label>:125                                     ; preds = %116, %103
  %126 = load i32* %5, align 4, !tbaa !64
  %127 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 1
  store i32 %126, i32* %127, align 4, !tbaa !32
  %128 = icmp sgt i32 %126, 0
  br i1 %128, label %.preheader7.lr.ph, label %222

.preheader7.lr.ph:                                ; preds = %125
  %129 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 1
  %130 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 5
  %131 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 0
  %132 = getelementptr inbounds %struct.t_nsborder* %nsb, i64 0, i32 3
  %133 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  br label %.preheader7

.preheader7:                                      ; preds = %.preheader7.lr.ph, %217
  %indvars.iv26 = phi i64 [ 0, %.preheader7.lr.ph ], [ %indvars.iv.next27, %217 ]
  %134 = mul nsw i64 %indvars.iv26, 3
  br label %135

; <label>:135                                     ; preds = %202, %.preheader7
  %indvars.iv23 = phi i64 [ 0, %.preheader7 ], [ %indvars.iv.next24, %202 ]
  %136 = getelementptr inbounds [3 x float]* %x, i64 %indvars.iv26, i64 %indvars.iv23
  %137 = load float* %136, align 4, !tbaa !19
  %138 = fadd float %137, 0xBEB0C6F7A0000000
  store float %138, float* %136, align 4, !tbaa !19
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 36, i32 16, i1 false) #4
  %139 = add nsw i64 %indvars.iv23, %134
  %140 = trunc i64 %139 to i32
  %141 = shl nsw i32 %140, 1
  br i1 %89, label %142, label %151

; <label>:142                                     ; preds = %135
  %143 = load i32* %129, align 4, !tbaa !35
  %144 = icmp sgt i32 %143, 1
  br i1 %144, label %148, label %145

; <label>:145                                     ; preds = %142
  %146 = load i32* %130, align 4, !tbaa !36
  %147 = icmp sgt i32 %146, 1
  br label %148

; <label>:148                                     ; preds = %145, %142
  %149 = phi i1 [ true, %142 ], [ %147, %145 ]
  %150 = xor i1 %149, true
  br label %151

; <label>:151                                     ; preds = %148, %135
  %152 = phi i1 [ false, %135 ], [ %150, %148 ]
  %153 = zext i1 %152 to i32
  call void @do_force(%struct.__sFILE* %log, %struct.t_commrec* %cr, %struct.t_commrec* null, %struct.t_parm* %parm, %struct.t_nsborder* %nsb, [3 x float]* %87, [3 x float]* %88, i32 %141, %struct.t_nrnb* %mynrnb, %struct.t_topology* %top, %struct.t_groups* %grps, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f, [3 x float]* %buf, %struct.t_mdatoms* %mdatoms, float* %ener, %struct.t_fcdata* %fcd, i32 %153, float %13, %struct.t_graph* %graph, i32 0, i32 0, %struct.t_forcerec* %fr, float* %100, i32 0) #7
  br i1 %16, label %154, label %.preheader6

; <label>:154                                     ; preds = %151
  call void @unshift_self(%struct.t_graph* %graph, [3 x float]* %131, [3 x float]* %x) #7
  br label %.preheader6

.preheader6:                                      ; preds = %154, %151
  %155 = load i32* %5, align 4, !tbaa !64
  %156 = icmp sgt i32 %155, 0
  br i1 %156, label %.preheader4.lr.ph, label %._crit_edge

.preheader4.lr.ph:                                ; preds = %.preheader6
  %157 = sext i32 %155 to i64
  br label %.preheader4

.preheader4:                                      ; preds = %.preheader4.lr.ph, %164
  %indvars.iv16 = phi i64 [ 0, %.preheader4.lr.ph ], [ %indvars.iv.next17, %164 ]
  br label %158

; <label>:158                                     ; preds = %158, %.preheader4
  %indvars.iv = phi i64 [ 0, %.preheader4 ], [ %indvars.iv.next, %158 ]
  %159 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv16, i64 %indvars.iv
  %160 = bitcast float* %159 to i32*
  %161 = load i32* %160, align 4, !tbaa !19
  %162 = getelementptr inbounds [3 x float]* %8, i64 %indvars.iv16, i64 %indvars.iv
  %163 = bitcast float* %162 to i32*
  store i32 %161, i32* %163, align 4, !tbaa !19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 3
  br i1 %exitcond, label %164, label %158

; <label>:164                                     ; preds = %158
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  %165 = icmp slt i64 %indvars.iv.next17, %157
  br i1 %165, label %.preheader4, label %._crit_edge

._crit_edge:                                      ; preds = %164, %.preheader6
  %166 = load float* %136, align 4, !tbaa !19
  %167 = fadd float %166, 0x3EC0C6F7A0000000
  store float %167, float* %136, align 4, !tbaa !19
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 36, i32 16, i1 false) #4
  %168 = or i32 %141, 1
  br i1 %89, label %169, label %178

; <label>:169                                     ; preds = %._crit_edge
  %170 = load i32* %129, align 4, !tbaa !35
  %171 = icmp sgt i32 %170, 1
  br i1 %171, label %175, label %172

; <label>:172                                     ; preds = %169
  %173 = load i32* %130, align 4, !tbaa !36
  %174 = icmp sgt i32 %173, 1
  br label %175

; <label>:175                                     ; preds = %172, %169
  %176 = phi i1 [ true, %169 ], [ %174, %172 ]
  %177 = xor i1 %176, true
  br label %178

; <label>:178                                     ; preds = %175, %._crit_edge
  %179 = phi i1 [ false, %._crit_edge ], [ %177, %175 ]
  %180 = zext i1 %179 to i32
  call void @do_force(%struct.__sFILE* %log, %struct.t_commrec* %cr, %struct.t_commrec* null, %struct.t_parm* %parm, %struct.t_nsborder* %nsb, [3 x float]* %87, [3 x float]* %88, i32 %168, %struct.t_nrnb* %mynrnb, %struct.t_topology* %top, %struct.t_groups* %grps, [3 x float]* %x, [3 x float]* %v, [3 x float]* %f, [3 x float]* %buf, %struct.t_mdatoms* %mdatoms, float* %ener, %struct.t_fcdata* %fcd, i32 %180, float %13, %struct.t_graph* %graph, i32 0, i32 0, %struct.t_forcerec* %fr, float* %100, i32 0) #7
  br i1 %16, label %181, label %.preheader5

; <label>:181                                     ; preds = %178
  call void @unshift_self(%struct.t_graph* %graph, [3 x float]* %131, [3 x float]* %x) #7
  br label %.preheader5

.preheader5:                                      ; preds = %181, %178
  %182 = load i32* %5, align 4, !tbaa !64
  %183 = icmp sgt i32 %182, 0
  br i1 %183, label %.preheader.lr.ph, label %._crit_edge12

.preheader.lr.ph:                                 ; preds = %.preheader5
  %184 = sext i32 %182 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %192
  %indvars.iv21 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next22, %192 ]
  br label %185

; <label>:185                                     ; preds = %185, %.preheader
  %indvars.iv18 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next19, %185 ]
  %186 = getelementptr inbounds [3 x float]* %f, i64 %indvars.iv21, i64 %indvars.iv18
  %187 = load float* %186, align 4, !tbaa !19
  %188 = getelementptr inbounds [3 x float]* %8, i64 %indvars.iv21, i64 %indvars.iv18
  %189 = load float* %188, align 4, !tbaa !19
  %190 = fsub float %187, %189
  %191 = fdiv float %190, 0x3EC0C6F7A0000000
  store float %191, float* %188, align 4, !tbaa !19
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  %exitcond20 = icmp eq i64 %indvars.iv.next19, 3
  br i1 %exitcond20, label %192, label %185

; <label>:192                                     ; preds = %185
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  %193 = icmp slt i64 %indvars.iv.next22, %184
  br i1 %193, label %.preheader, label %._crit_edge12

._crit_edge12:                                    ; preds = %192, %.preheader5
  %194 = call i8* @ftp2fn(i32 39, i32 %nfile, %struct.t_filenm* %fnm) #7
  %195 = load i32* %132, align 4, !tbaa !22
  %196 = trunc i64 %indvars.iv26 to i32
  %197 = call i32 @write_traj(%struct.__sFILE* %log, %struct.t_commrec* %cr, i8* %194, %struct.t_nsborder* %nsb, i32 %196, float %11, float %13, %struct.t_nrnb* %nrnb, i32 %195, [3 x float]* %8, [3 x float]* null, [3 x float]* null, [3 x float]* %131) #7
  %198 = load float* %136, align 4, !tbaa !19
  %199 = fadd float %198, 0xBEB0C6F7A0000000
  store float %199, float* %136, align 4, !tbaa !19
  br i1 %89, label %200, label %202

; <label>:200                                     ; preds = %._crit_edge12
  %201 = call i32 @fflush(%struct.__sFILE* %log) #7
  br label %202

; <label>:202                                     ; preds = %._crit_edge12, %200
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  %exitcond25 = icmp eq i64 %indvars.iv.next24, 3
  br i1 %exitcond25, label %203, label %135

; <label>:203                                     ; preds = %202
  %204 = load i32* %70, align 4, !tbaa !20
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %217

; <label>:206                                     ; preds = %203
  %207 = load i32* %133, align 4, !tbaa !24
  %208 = icmp eq i32 %207, 0
  %or.cond = and i1 %89, %208
  br i1 %or.cond, label %209, label %217

; <label>:209                                     ; preds = %206
  %210 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !33
  %211 = add nuw nsw i64 %indvars.iv26, 1
  %212 = load i32* %5, align 4, !tbaa !64
  %213 = trunc i64 %211 to i32
  %214 = call i32 (%struct.__sFILE*, i8*, ...)* @fprintf(%struct.__sFILE* %210, i8* getelementptr inbounds ([28 x i8]* @.str33, i64 0, i64 0), i32 %213, i32 %212) #7
  %215 = load %struct.__sFILE** @__stderrp, align 8, !tbaa !33
  %216 = call i32 @fflush(%struct.__sFILE* %215) #7
  br label %217

; <label>:217                                     ; preds = %203, %206, %209
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  %218 = load i32* %127, align 4, !tbaa !32
  %219 = sext i32 %218 to i64
  %220 = icmp slt i64 %indvars.iv.next27, %219
  br i1 %220, label %.preheader7, label %._crit_edge15

._crit_edge15:                                    ; preds = %217
  %221 = trunc i64 %indvars.iv.next27 to i32
  br label %222

; <label>:222                                     ; preds = %._crit_edge15, %125
  %step.0.lcssa = phi i32 [ %221, %._crit_edge15 ], [ 0, %125 ]
  %223 = sitofp i32 %step.0.lcssa to float
  %224 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 0, i32 15
  %225 = load float* %224, align 4, !tbaa !66
  %226 = fmul float %223, %225
  %227 = fadd float %11, %226
  %228 = load i32* %70, align 4, !tbaa !20
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %235

; <label>:230                                     ; preds = %222
  %231 = getelementptr inbounds %struct.t_commrec* %cr, i64 0, i32 4
  %232 = load i32* %231, align 4, !tbaa !24
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %235

; <label>:234                                     ; preds = %230
  call void @print_ebin(i32 -1, i32 0, i32 0, i32 0, %struct.__sFILE* %log, i32 %step.0.lcssa, float %227, i32 1, i32 0, %struct.t_mdebin* %57, %struct.t_fcdata* %fcd, %struct.t_atoms* %4) #7
  call void @print_ebin(i32 -1, i32 0, i32 0, i32 0, %struct.__sFILE* %log, i32 %step.0.lcssa, float %227, i32 2, i32 0, %struct.t_mdebin* %57, %struct.t_fcdata* %fcd, %struct.t_atoms* %4) #7
  %.pre = load float* %224, align 4, !tbaa !66
  br label %235

; <label>:235                                     ; preds = %234, %230, %222
  %236 = phi float [ %.pre, %234 ], [ %225, %230 ], [ %225, %222 ]
  %237 = getelementptr inbounds %struct.t_parm* %parm, i64 0, i32 1, i64 0
  call void @construct_dummies(%struct.__sFILE* %log, [3 x float]* %x, %struct.t_nrnb* %mynrnb, float %236, [3 x float]* %v, %struct.t_idef* %23, %struct.t_graph* %graph, %struct.t_commrec* %cr, [3 x float]* %237, %struct.t_comm_dummies* null) #7
  call void @llvm.lifetime.end(i64 1032, i8* %3) #4
  call void @llvm.lifetime.end(i64 36, i8* %2) #4
  call void @llvm.lifetime.end(i64 36, i8* %1) #4
  ret i64 %72
}

; Function Attrs: optsize
declare void @init_nrnb(%struct.t_nrnb*) #1

; Function Attrs: optsize
declare void @calc_shifts([3 x float]*, float*, [3 x float]*) #1

; Function Attrs: optsize
declare void @mk_mshift(%struct.__sFILE*, %struct.t_graph*, [3 x float]*, [3 x float]*) #1

; Function Attrs: optsize
declare void @shift_self(%struct.t_graph*, [3 x float]*, [3 x float]*) #1

; Function Attrs: optsize
declare float @sum_ekin(%struct.t_grpopts*, %struct.t_groups*, [3 x float]*, i32) #1

; Function Attrs: optsize
declare void @berendsen_tcoupl(%struct.t_grpopts*, %struct.t_groups*, float, float) #1

; Function Attrs: optsize
declare void @nosehoover_tcoupl(%struct.t_grpopts*, %struct.t_groups*, float, float) #1

; Function Attrs: optsize
declare void @unshift_self(%struct.t_graph*, [3 x float]*, [3 x float]*) #1

; Function Attrs: optsize
declare void @init_mdatoms(%struct.t_mdatoms*, float, i32) #1

; Function Attrs: optsize
declare %struct.t_vcm* @init_vcm(%struct.__sFILE*, %struct.t_topology*, %struct.t_commrec*, %struct.t_mdatoms*, i32, i32, i32) #1

; Function Attrs: optsize
declare void @gmx_tx(i32, i8*, i32) #1

; Function Attrs: optsize
declare void @gmx_rx(i32, i8*, i32) #1

; Function Attrs: optsize
declare void @gmx_wait(i32, i32) #1

declare float @fabsf(float)

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct.__sFILE* nocapture) #4

declare float @sqrtf(float)

; Function Attrs: nounwind
declare i32 @fputc(i32, %struct.__sFILE* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

attributes #0 = { alwaysinline nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { alwaysinline nounwind optsize readnone ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind optsize ssp uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind optsize "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind optsize readnone "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="core2" "target-features"="+ssse3,+cx16,+sse,+sse2,+sse3" "unsafe-fp-math"="false" "use-soft-float"="false" }
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
!14 = !{!15, !7, i64 316}
!15 = !{!"", !16, i64 0, !5, i64 592, !5, i64 628, !5, i64 664, !5, i64 700, !5, i64 736}
!16 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !17, i64 56, !17, i64 60, !17, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !7, i64 80, !17, i64 84, !7, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !17, i64 120, !5, i64 124, !5, i64 160, !7, i64 196, !17, i64 200, !17, i64 204, !7, i64 208, !17, i64 212, !17, i64 216, !7, i64 220, !17, i64 224, !17, i64 228, !17, i64 232, !7, i64 236, !17, i64 240, !17, i64 244, !7, i64 248, !17, i64 252, !17, i64 256, !17, i64 260, !17, i64 264, !17, i64 268, !7, i64 272, !7, i64 276, !7, i64 280, !17, i64 284, !17, i64 288, !17, i64 292, !7, i64 296, !17, i64 300, !17, i64 304, !7, i64 308, !7, i64 312, !7, i64 316, !7, i64 320, !7, i64 324, !17, i64 328, !7, i64 332, !17, i64 336, !17, i64 340, !7, i64 344, !17, i64 348, !7, i64 352, !7, i64 356, !7, i64 360, !7, i64 364, !17, i64 368, !17, i64 372, !17, i64 376, !17, i64 380, !18, i64 384, !5, i64 448, !5, i64 520}
!17 = !{!"float", !5, i64 0}
!18 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56}
!19 = !{!17, !17, i64 0}
!20 = !{!21, !7, i64 0}
!21 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20}
!22 = !{!23, !7, i64 12}
!23 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !5, i64 28, !5, i64 1052, !5, i64 2076, !5, i64 3100}
!24 = !{!21, !7, i64 16}
!25 = !{!7, !7, i64 0}
!26 = !{!15, !7, i64 248}
!27 = !{!15, !7, i64 112}
!28 = !{!15, !7, i64 236}
!29 = !{!15, !7, i64 108}
!30 = !{!31, !7, i64 0}
!31 = !{!"", !7, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !17, i64 16, !17, i64 20, !17, i64 24, !7, i64 28, !17, i64 32, !17, i64 36, !17, i64 40, !17, i64 44, !17, i64 48, !7, i64 52, !7, i64 56, !17, i64 60, !7, i64 64, !17, i64 68, !4, i64 72, !4, i64 80, !4, i64 88, !4, i64 96, !17, i64 104, !17, i64 108, !4, i64 112, !17, i64 120, !17, i64 124, !17, i64 128, !17, i64 132, !7, i64 136, !17, i64 140, !17, i64 144, !7, i64 148, !7, i64 152, !7, i64 156, !7, i64 160, !7, i64 164, !7, i64 168, !7, i64 172, !7, i64 176, !5, i64 180, !7, i64 192, !7, i64 196, !7, i64 200, !7, i64 204, !4, i64 208, !4, i64 216, !4, i64 224, !4, i64 232, !5, i64 240, !5, i64 1488, !7, i64 2736, !7, i64 2740, !4, i64 2744, !4, i64 2752, !4, i64 2760, !7, i64 2768, !17, i64 2772, !4, i64 2776, !7, i64 2784, !4, i64 2792, !4, i64 2800, !7, i64 2808, !7, i64 2812, !7, i64 2816, !4, i64 2824, !4, i64 2832, !17, i64 2840}
!32 = !{!15, !7, i64 4}
!33 = !{!4, !4, i64 0}
!34 = !{!15, !17, i64 304}
!35 = !{!21, !7, i64 4}
!36 = !{!21, !7, i64 20}
!37 = !{!38, !17, i64 0}
!38 = !{!"", !17, i64 0, !7, i64 4, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !4, i64 40, !4, i64 48, !4, i64 56, !4, i64 64, !4, i64 72, !4, i64 80, !4, i64 88, !4, i64 96, !4, i64 104, !4, i64 112, !4, i64 120, !4, i64 128, !4, i64 136, !4, i64 144, !4, i64 152, !4, i64 160, !4, i64 168}
!39 = !{!40, !40, i64 0}
!40 = !{!"double", !5, i64 0}
!41 = !{!38, !4, i64 128}
!42 = !{!15, !4, i64 432}
!43 = !{!8, !8, i64 0}
!44 = !{!15, !17, i64 300}
!45 = !{!15, !7, i64 12}
!46 = !{!21, !7, i64 8}
!47 = !{!21, !7, i64 12}
!48 = !{!23, !7, i64 4}
!49 = !{!50, !4, i64 0}
!50 = !{!"", !4, i64 0, !51, i64 8, !52, i64 45800, !5, i64 47080, !54, i64 50248}
!51 = !{!"", !7, i64 0, !7, i64 4, !7, i64 8, !4, i64 16, !4, i64 24, !5, i64 32}
!52 = !{!"", !7, i64 0, !4, i64 8, !4, i64 16, !4, i64 24, !4, i64 32, !7, i64 40, !4, i64 48, !7, i64 56, !4, i64 64, !53, i64 72, !5, i64 1128, !4, i64 1272}
!53 = !{!"", !5, i64 0, !7, i64 1024, !4, i64 1032, !7, i64 1040, !4, i64 1048}
!54 = !{!"", !7, i64 0, !4, i64 8}
!55 = !{!15, !17, i64 252}
!56 = !{!31, !4, i64 232}
!57 = !{!23, !7, i64 0}
!58 = !{!15, !7, i64 28}
!59 = !{!18, !4, i64 48}
!60 = !{!15, !7, i64 280}
!61 = !{!15, !7, i64 296}
!62 = !{!15, !7, i64 44}
!63 = !{!15, !7, i64 36}
!64 = !{!50, !7, i64 45800}
!65 = !{!15, !17, i64 56}
!66 = !{!15, !17, i64 60}
